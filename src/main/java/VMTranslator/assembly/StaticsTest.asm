// INITIALISE
@256
D=A
@0
M=D
// call Sys.init 0
@51
D=A
@0
A=M
M=D
@0
M=M+1
@1
D=M
@0
A=M
M=D
@0
M=M+1
@2
D=M
@0
A=M
M=D
@0
M=M+1
@3
D=M
@0
A=M
M=D
@0
M=M+1
@4
D=M
@0
A=M
M=D
@0
M=M+1
@0
D=M
@5
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Sys.init
0;JMP
// function Class1.set 0
(Class1.set)
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
// pop static 0
@0
M=M-1
A=M
D=M
@R14
M=D
@Class1
D=A
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
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
// pop static 1
@0
M=M-1
A=M
D=M
@R14
M=D
@Class1
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
// return
@0
A=M
A=A-1
D=M
@R12
M=D
@1
D=M
@R15
M=D
@1
A=M
// Moving: -5 pos
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@R14
M=D
@R12
D=M
@2
A=M
M=D
@2
D=M
D=D+1
@0
M=D
@R15
A=M
// Moving: -1 pos
A=A-1
D=M
@4
M=D
@R15
A=M
// Moving: -2 pos
A=A-1
A=A-1
D=M
@3
M=D
@R15
A=M
// Moving: -3 pos
A=A-1
A=A-1
A=A-1
D=M
@2
M=D
@R15
A=M
// Moving: -4 pos
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@1
M=D
@R14
A=M
0;JMP
// function Class1.get 0
(Class1.get)
// push static 0
@Class1
D=A
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push static 1
@Class1
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
// return
@0
A=M
A=A-1
D=M
@R12
M=D
@1
D=M
@R15
M=D
@1
A=M
// Moving: -5 pos
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@R14
M=D
@R12
D=M
@2
A=M
M=D
@2
D=M
D=D+1
@0
M=D
@R15
A=M
// Moving: -1 pos
A=A-1
D=M
@4
M=D
@R15
A=M
// Moving: -2 pos
A=A-1
A=A-1
D=M
@3
M=D
@R15
A=M
// Moving: -3 pos
A=A-1
A=A-1
A=A-1
D=M
@2
M=D
@R15
A=M
// Moving: -4 pos
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@1
M=D
@R14
A=M
0;JMP
// function Sys.init 0
(Sys.init)
// push constant 6
@6
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 8
@8
D=A
@0
A=M
M=D
@0
M=M+1
// call Class1.set 2
@332
D=A
@0
A=M
M=D
@0
M=M+1
@1
D=M
@0
A=M
M=D
@0
M=M+1
@2
D=M
@0
A=M
M=D
@0
M=M+1
@3
D=M
@0
A=M
M=D
@0
M=M+1
@4
D=M
@0
A=M
M=D
@0
M=M+1
@0
D=M
@7
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Class1.set
0;JMP
// pop temp 0
@0
M=M-1
A=M
D=M
@R14
M=D
@5
D=A
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push constant 23
@23
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 15
@15
D=A
@0
A=M
M=D
@0
M=M+1
// call Class2.set 2
@410
D=A
@0
A=M
M=D
@0
M=M+1
@1
D=M
@0
A=M
M=D
@0
M=M+1
@2
D=M
@0
A=M
M=D
@0
M=M+1
@3
D=M
@0
A=M
M=D
@0
M=M+1
@4
D=M
@0
A=M
M=D
@0
M=M+1
@0
D=M
@7
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Class2.set
0;JMP
// pop temp 0
@0
M=M-1
A=M
D=M
@R14
M=D
@5
D=A
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// call Class1.get 0
@474
D=A
@0
A=M
M=D
@0
M=M+1
@1
D=M
@0
A=M
M=D
@0
M=M+1
@2
D=M
@0
A=M
M=D
@0
M=M+1
@3
D=M
@0
A=M
M=D
@0
M=M+1
@4
D=M
@0
A=M
M=D
@0
M=M+1
@0
D=M
@5
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Class1.get
0;JMP
// call Class2.get 0
@521
D=A
@0
A=M
M=D
@0
M=M+1
@1
D=M
@0
A=M
M=D
@0
M=M+1
@2
D=M
@0
A=M
M=D
@0
M=M+1
@3
D=M
@0
A=M
M=D
@0
M=M+1
@4
D=M
@0
A=M
M=D
@0
M=M+1
@0
D=M
@5
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Class2.get
0;JMP
(WHILE)
// goto WHILE
@WHILE
0;JMP
// function Class2.set 0
(Class2.set)
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
// pop static 0
@0
M=M-1
A=M
D=M
@R14
M=D
@Class2
D=A
@1
D=D+A
@0
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
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
// pop static 1
@0
M=M-1
A=M
D=M
@R14
M=D
@Class2
D=A
@1
D=D+A
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
// return
@0
A=M
A=A-1
D=M
@R12
M=D
@1
D=M
@R15
M=D
@1
A=M
// Moving: -5 pos
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@R14
M=D
@R12
D=M
@2
A=M
M=D
@2
D=M
D=D+1
@0
M=D
@R15
A=M
// Moving: -1 pos
A=A-1
D=M
@4
M=D
@R15
A=M
// Moving: -2 pos
A=A-1
A=A-1
D=M
@3
M=D
@R15
A=M
// Moving: -3 pos
A=A-1
A=A-1
A=A-1
D=M
@2
M=D
@R15
A=M
// Moving: -4 pos
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@1
M=D
@R14
A=M
0;JMP
// function Class2.get 0
(Class2.get)
// push static 0
@Class2
D=A
@1
D=D+A
@0
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push static 1
@Class2
D=A
@1
D=D+A
@1
D=D+A
A=D
D=M
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
// return
@0
A=M
A=A-1
D=M
@R12
M=D
@1
D=M
@R15
M=D
@1
A=M
// Moving: -5 pos
A=A-1
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@R14
M=D
@R12
D=M
@2
A=M
M=D
@2
D=M
D=D+1
@0
M=D
@R15
A=M
// Moving: -1 pos
A=A-1
D=M
@4
M=D
@R15
A=M
// Moving: -2 pos
A=A-1
A=A-1
D=M
@3
M=D
@R15
A=M
// Moving: -3 pos
A=A-1
A=A-1
A=A-1
D=M
@2
M=D
@R15
A=M
// Moving: -4 pos
A=A-1
A=A-1
A=A-1
A=A-1
D=M
@1
M=D
@R14
A=M
0;JMP
(END)
// goto END
@END
0;JMP
