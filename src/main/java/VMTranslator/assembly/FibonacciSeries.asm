// INITIALISE
// push argument 1
@2
D=M
@1
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// pop pointer 1
@0
M=M-1
A=M
D=M
@R14
M=D
@3
D=A
@1
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// pop that 0
@0
M=M-1
A=M
D=M
@R14
M=D
@4
D=M
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push constant 1
@1
D=A
@0
A=M
M=D
@0
M=M+1
// pop that 1
@0
M=M-1
A=M
D=M
@R14
M=D
@4
D=M
@1
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push argument 0
@2
D=M
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push constant 2
@2
D=A
@0
A=M
M=D
@0
M=M+1
// sub
@0
D=M
D=D-1
A=D
D=M
A=A-1
M=M-D
@0
M=M-1
// pop argument 0
@0
M=M-1
A=M
D=M
@R14
M=D
@2
D=M
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// label MAIN_LOOP_START
(MAIN_LOOP_START)
// push argument 0
@2
D=M
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// if-goto COMPUTE_ELEMENT
@0
M=M-1
A=M
D=M
@COMPUTE_ELEMENT
D;JGT
// goto END_PROGRAM
@END_PROGRAM
0;JMP
// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
// push that 0
@4
D=M
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push that 1
@4
D=M
@1
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// add
@0
D=M
D=D-1
A=D
D=M
A=A-1
M=D+M
@0
M=M-1
// pop that 2
@0
M=M-1
A=M
D=M
@R14
M=D
@4
D=M
@2
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push pointer 1
@3
D=A
@1
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push constant 1
@1
D=A
@0
A=M
M=D
@0
M=M+1
// add
@0
D=M
D=D-1
A=D
D=M
A=A-1
M=D+M
@0
M=M-1
// pop pointer 1
@0
M=M-1
A=M
D=M
@R14
M=D
@3
D=A
@1
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push argument 0
@2
D=M
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push constant 1
@1
D=A
@0
A=M
M=D
@0
M=M+1
// sub
@0
D=M
D=D-1
A=D
D=M
A=A-1
M=M-D
@0
M=M-1
// pop argument 0
@0
M=M-1
A=M
D=M
@R14
M=D
@2
D=M
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP
// label END_PROGRAM
(END_PROGRAM)
(END)
@END
0;JMP
