package VMTranslator;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Parser {

    private List<String> commands = new ArrayList<String>();

    private int commandIndex = 0;

    public String commandType;
    public String arg1;
    public Integer arg2;

    public Parser(String fileName) {
        try {
            String baseDir = "/Users/francois.stiennon/Desktop/nand2tetris/projects/VMTranslator/src/main/java/VMTranslator/";
            Scanner file = new Scanner(new File(baseDir + fileName));
            this.PopulateList(file);
            file.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    private boolean lineIncludesCommand(String line) {
        if (line.length() > 0) {
            if (line.contains("//")) {
                String[] split = line.split("//");
                return split[0].length() > 0;
            }
            else return true;
        }
        return false;
    }

    private void PopulateList(Scanner file)
    {
        String currentLine;
        while (file.hasNextLine()) {
            currentLine = file.nextLine();
            if (this.lineIncludesCommand(currentLine)) {
                commands.add(currentLine);
            }
        }

        if(commands.size() > 0) {
            this.parseCommand();
        }
    }

    public void advance() {
        if(this.hasMoreCommands()) {
            this.commandIndex++;
            this.parseCommand();
        }
        else {
            System.out.println("File has run out of commands.");
        }
    }

    public boolean hasMoreCommands() {
        return this.commandIndex + 1 < this.commands.size();
    }

    private void parseCommand() {
        String command = this.commands.get(commandIndex);

        String[] cSplit = command.split(" ");
        if (cSplit.length == 1) {
            switch (cSplit[0]) {
                case "add":
                    this.commandType = "C_ARITHMETIC";
                    this.arg1 = cSplit[0];
                    this.arg2 = null;
                    break;
                case "eq":
                    this.commandType = "C_ARITHMETIC";
                    this.arg1 = cSplit[0];
                    this.arg2 = null;
                case "lt":
                    this.commandType = "C_ARITHMETIC";
                    this.arg1 = cSplit[0];
                    this.arg2 = null;
                default:
                    System.out.println("Swich case not handled.");
            }
        }
        else if(cSplit.length == 3) {
            switch (cSplit[0]) {
                case "push":
                    this.commandType = "C_PUSH";
                    this.arg1 = cSplit[1];
                    this.arg2 = Integer.parseInt(cSplit[2]);
                    break;
                case "pop":
                    this.commandType = "C_POP";
                    this.arg1 = cSplit[1];
                    this.arg2 = Integer.parseInt(cSplit[2]);
                    break;
                default:
                    System.out.println("Command not found.");
            }
        }
        else {
            System.out.println("Invalid command line.");
        }
    }
}
