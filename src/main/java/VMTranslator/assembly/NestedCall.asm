// function Sys.init 0
(Sys.init)
// push constant 4000
@4000
D=A
@0
A=M
M=D
@0
M=M+1
// pop pointer 0
@0
M=M-1
A=M
D=M
@R14
M=D
@3
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
// push constant 5000
@5000
D=A
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
// call Sys.main 0
@95
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
@Sys.main
0;JMP
// pop temp 1
@0
M=M-1
A=M
D=M
@R14
M=D
@5
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
(LOOP)
// goto LOOP
@LOOP
0;JMP
// function Sys.main 5
(Sys.main)
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 0
@0
D=A
@0
A=M
M=D
@0
M=M+1
// push constant 4001
@4001
D=A
@0
A=M
M=D
@0
M=M+1
// pop pointer 0
@0
M=M-1
A=M
D=M
@R14
M=D
@3
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
// push constant 5001
@5001
D=A
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
// push constant 200
@200
D=A
@0
A=M
M=D
@0
M=M+1
// pop local 1
@0
M=M-1
A=M
D=M
@R14
M=D
@1
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
// push constant 40
@40
D=A
@0
A=M
M=D
@0
M=M+1
// pop local 2
@0
M=M-1
A=M
D=M
@R14
M=D
@1
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
// push constant 6
@6
D=A
@0
A=M
M=D
@0
M=M+1
// pop local 3
@0
M=M-1
A=M
D=M
@R14
M=D
@1
D=M
@3
D=D+A
@R15
M=D
@R14
D=M
@R15
A=M
M=D
// push constant 123
@123
D=A
@0
A=M
M=D
@0
M=M+1
// call Sys.add12 1
@323
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
@6
D=D-A
@2
M=D
@0
D=M
@1
M=D
@Sys.add12
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
// push local 0
@1
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
// push local 1
@1
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
// push local 2
@1
D=M
@2
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push local 3
@1
D=M
@3
D=D+A
A=D
D=M
@0
A=M
M=D
@0
M=M+1
// push local 4
@1
D=M
@4
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
// function Sys.add12 0
(Sys.add12)
// push constant 4002
@4002
D=A
@0
A=M
M=D
@0
M=M+1
// pop pointer 0
@0
M=M-1
A=M
D=M
@R14
M=D
@3
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
// push constant 5002
@5002
D=A
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
// push constant 12
@12
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
@END
0;JMP
