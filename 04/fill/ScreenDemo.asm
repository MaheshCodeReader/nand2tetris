//	@SCREEN
//	M=-1
//	D=A
//(LOOP)
//	A=D
//	A=A+1
//	M=-1
//	D=A
//	@LOOP
//	0; JMP

	@SCREEN
	D=A
	@pos
	M=D		// pos=SCREEN

(LOOP)
	@24576
	D=A
	@pos
	D=M-D
	@STOP
	D;JEQ	// if pos==24575 goto STOP
	@pos
	A=M
	M=-1	//RAM[pos] = -1

	A=A+1
	D=A
	@pos
	M=D 	// pos=pos+1

	@LOOP
	0; JMP
(STOP)
	@STOP
	0; JMP