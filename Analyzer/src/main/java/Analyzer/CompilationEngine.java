package Analyzer;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Collections;

public class CompilationEngine {
    private String baseDir = "/Users/francois.stiennon/Desktop/nand2tetris/GitHub/Analyzer/src/main/java/Analyzer";
    private String fileName;

    private Tokenizer tk;
    private int indentation = 0;


    public CompilationEngine(String inputFile) throws Exception {
        this.fileName = inputFile;

        tk = new Tokenizer(inputFile);

        this.CompileClass();
    }

    private void CompileClass() throws Exception {
        // Compiles a complete class.

        this.writeOpenNonTerm("class");

        this.writeTerm(this.tk.getToken());

        this.writeTokens(2);

        this.tk.advance();

        while(this.VarDecOrSubroutine() != "}") {
            if(this.VarDecOrSubroutine().equals("VarDec")) {
                this.CompileClassVarDec();
            }
            else if(this.VarDecOrSubroutine().equals("Subroutine")) {
                this.CompileSubroutine();
            }
        }

        this.appendToFile("}");

        this.writeCloseNonTerm("class");
    }

    private String VarDecOrSubroutine() throws Exception {

        if(this.tk.tokenType() == TokenType.symbol && this.tk.symbol() == '}') {
            return "}";
        }

        if(this.tk.keyword().equals("static") || this.tk.keyword().equals("field")) {
            return "VarDec";
        }
        else if(this.tk.keyword().equals("constructor") || this.tk.keyword().equals("function") || this.tk.keyword().equals("method")) {
            return "Subroutine";
        }
        else {
            throw new Exception("Expecting a var dec or a subroutine.");
        }
    }

    private void CompileClassVarDec() {
        // Compiles a static declaration or a field declaration.
        this.writeOpenNonTerm("classVarDec");

        this.writeTerm(this.tk.getToken());

        this.writeTokens(2);

        this.tk.advance();

        while(this.tk.getToken().StringValue().equals(",")) {
             this.writeTerm(this.tk.getToken());

             this.writeTokens(1);

             this.tk.advance();
        }

        this.writeTerm(this.tk.getToken());
        this.tk.advance();

        this.writeCloseNonTerm("classVarDec");
    }

    private void CompileSubroutine() throws Exception {
        // Compiles a complete method, function, or constructor.

        this.writeOpenNonTerm("subroutineDec");

        if(this.tk.keyword().equals("constructor")
            || this.tk.keyword().equals("method")
            || this.tk.keyword().equals("function")) {

            this.writeTerm(this.tk.getToken());

            this.writeTokens(3);

            this.tk.advance();

            this.compileParameterList();

            this.writeTerm(this.tk.getToken());

            this.writeOpenNonTerm("subroutineBody");

            this.writeTokens(1);

            this.tk.advance();

            this.compileVarDec();

            this.compileStatements();

            this.writeCloseNonTerm("subroutineBody");

            this.writeTerm(this.tk.getToken());
        }
        else {
            throw new Exception("Subroutine not found.");
        }

        this.writeCloseNonTerm("subroutineDec");
    }

    private void compileParameterList() {
        // Compiles a (possibly empty) parameter list, not including the enclosing ‘‘()’’.
        this.writeOpenNonTerm("parameterList");

        this.writeCloseNonTerm("parameterList");
    }

    private void compileVarDec() {
        // Compiles a var declaration.

        while(this.tk.getToken().StringValue().equals("var")) {
            this.writeOpenNonTerm("varDec");

            this.writeTerm(this.tk.getToken());

            this.writeTokens(2);

            this.tk.advance();

            while(!this.tk.getToken().StringValue().equals(";")) {
                this.writeTerm(this.tk.getToken());

                this.writeTokens(1);

                this.tk.advance();
            }

            this.writeTerm(this.tk.getToken());

            this.writeCloseNonTerm("varDec");

            this.tk.advance();
        }
    }

    private void compileStatements() throws Exception {
        // Compiles a sequence of state- ments, not including the enclosing ‘‘{}’’.
        this.writeOpenNonTerm("statements");

        while(!this.tk.getToken().StringValue().equals("return")) {
            switch (this.tk.getToken().StringValue()) {
                case "if":
                    this.compileIf();
                    break;
                case "while":
                    this.compileWhile();
                    break;
                case "let":
                    this.compileLet();
                    break;
                case "do":
                    this.compileDo();
                    break;
                default:
                    throw new Exception("Statement not found.");
            }
        }

        this.writeCloseNonTerm("statements");
    }

    private void compileDo() {
        // Compiles a do statement.
        this.writeOpenNonTerm("doStatement");

        this.writeCloseNonTerm("doStatement");
    }

    private void compileLet() {
        // Compiles a let statement.
        this.writeOpenNonTerm("letStatement");

        this.writeTerm(this.tk.getToken());

        this.writeTokens(2);

        this.tk.advance();

        this.compileExpression();

        this.writeTerm(this.tk.getToken());
        this.tk.advance();

        this.compileExpression();

        this.writeTerm(this.tk.getToken());
        this.tk.advance();

        this.writeCloseNonTerm("letStatement");
    }

    private void compileWhile() {
        // Compiles a while statement.
        this.writeOpenNonTerm("whileStatement");

        this.writeCloseNonTerm("whileStatement");
    }

    private void compileReturn() {
        // Compiles a return statement.
    }

    private void compileIf() {
        // Compiles an if statement, pos- sibly with a trailing else clause.
        this.writeOpenNonTerm("ifStatement");

        this.writeCloseNonTerm("ifStatement");
    }

    private void compileExpression() {
        // Compiles an expression.
    }

    private void compileTerm() {
        // Compiles a term. This routine is faced with a slight difficulty when trying to decide between some of the alternative parsing rules. Specifically, if the current token is an identifier, the routine must distinguish between a variable, an array entry, and a subroutine call. A single look- ahead token, which may be one of ‘‘[’’, ‘‘(’’, or ‘‘.’’ suffices to dis- tinguish between the three possi- bilities. Any other token is not part of this term and should not be advanced over.

    }

    private void CompileExpressionList() {
        // Compiles a ( possibly empty) comma-separated list of expressions.
    }

    private void writeOpenNonTerm(String identifier) {
        this.appendToFile("<" + identifier + ">");
        this.indentation++;
    }

    private void writeCloseNonTerm(String identifier) {
        this.indentation--;
        this.appendToFile("</" + identifier + ">");
    }

    public void writeTokens(int numberOfTokens) {
        for(int i = 0; i < numberOfTokens; i++) {
            this.tk.advance();
            this.writeTerm(this.tk.getToken());
        }
    }

    private void writeTerm(Token token) {
        this.appendToFile(token.toString());
    }

    /*
        try {
            this.FW = new FileWriter(baseDir + "/Out/" + outputFile + "Comp.xml");
        } catch (IOException e) {
            e.printStackTrace();
        }
     */

    private void appendToFile(String line) {
        /*
        try {
            FileWriter FW = new FileWriter(baseDir + "/Out/" + fileName + "Comp.xml");
            FW.write(String.join("", Collections.nCopies(indentation, " ")) + line + "\n");
            FW.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        */

        String fileN = baseDir + "/Out/" + fileName + "Comp.xml";
        String toWrite = String.join("", Collections.nCopies(indentation, " ")) + line + "\n";

        try {
            Files.write(Paths.get(fileN), toWrite.getBytes(), StandardOpenOption.APPEND);
        } catch (IOException e) {
            //exception handling left as an exercise for the reader
            System.out.println("File not found.");
        }

    }
}
