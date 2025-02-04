/*Write an assembly language program to multiply 2 unsigned 8-bit numbers stored in internal memory locations 30H and 31H and 
store the final result in internal memory locations 40H  and 41H using  ADD instruction..*/

org 000h
	MOV A, #00H
	MOV R1, 30H
	MOV R2,31H
	MOV R3,#00H
	LOOP: ADD A,R1
	JNC NEXT
	INC R3
	NEXT: DJNZ R2,LOOP
	MOV 40H ,A
	MOV 41H,R3
	END