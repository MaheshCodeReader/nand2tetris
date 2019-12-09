(BEGIN)
	@KBD
	D=M
	@key
	M=D
	@BLACK
	D; JNE
	//white
		@SCREEN
		D=A
		@pos
		M=D		// pos=SCREEN

	(LOOP1)
		@24576
		D=A
		@pos
		D=M-D
		@STOP1
		D;JEQ	// if pos==24575 goto STOP
		@pos
		A=M
		M=0	//RAM[pos] = -1

		A=A+1
		D=A
		@pos
		M=D 	// pos=pos+1

		@LOOP1
		0; JMP
	(STOP1)
		// go straight
	@BEGIN
	0; JMP
(BLACK)
	//black
		@SCREEN
		D=A
		@pos
		M=D		// pos=SCREEN

	(LOOP2)
		@24576
		D=A
		@pos
		D=M-D
		@STOP2
		D;JEQ	// if pos==24575 goto STOP
		@pos
		A=M
		M=-1	//RAM[pos] = -1

		A=A+1
		D=A
		@pos
		M=D 	// pos=pos+1

		@LOOP2
		0; JMP
	(STOP2)
		// go straight
	@BEGIN
	0; JMP