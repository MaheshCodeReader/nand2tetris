// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// R2 = R0 * R1
// using repeated addition algorithm
// see notes, for PSEUDOCODE

	@0
	D=A
	@product
	M=D		//product=0

	@i
	M=D		// i= 0

	@0
	D=M
	@m
	M=D		//m=R0

	@1
	D=M
	@n
	M=D		//n=R1

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@STOP
	D; JGE	// if i >= n goto STOP

	@m
	D=M
	@product
	M=D+M	// product = product + m
	@i
	M=M+1
	@LOOP
	0; JMP
(STOP)
	@product
	D=M
	@2
	M=D
(END)
	@END
	0; JMP