/*Write an assembly language program to multiply 2 unsigned 8-bit numbers stored in internal memory locations 30H and 31H and
store the final result in internal memory locations 40H  and 41H using MUL instruction.*/

org 000h
	mov A, 30h
	mov B,31h
	MUL A,B
	MOV 40h ,A
	MOV 41h,B
	end