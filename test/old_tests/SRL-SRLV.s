	.data
	min:	.word32 0xB0000001 ; big negative value
	.text
	addi	r1, r0, 16		;0000 0000 0000 0000 0000 0000 0001 0000 bin	16  dec
	addi	r2, r0, -16		;1111 1111 1111 1111 1111 1111 1111 0000 bin	-16 dec
	addi 	r3, r0, 2
	srl 	r5, r1, 2		;0000 0000 0000 0000 0000 0000 0000 0100 bin	4 dec
	srlv 	r6, r1, r3		;0000 0000 0000 0000 0000 0000 0000 0100 bin	4 dec
	srl 	r8, r2, 2		;0011 1111 1111 1111 1111 1111 1111 1100 bin	1073741820 dec
	srlv 	r9, r2, r3
	lw		r11, min(r0)	;1011 0000 0000 0000 0000 0000 0000 0001 bin	-1342177279 dec
	srl 	r13, r11, 2		;0010 1100 0000 0000 0000 0000 0000 0001 bin	738197504 dec
	srlv 	r15, r11, r3	;0010 1100 0000 0000 0000 0000 0000 0001 bin	738197504 dec
	
	;sll	r11, r1, -2		;Wrong value

	syscall 0