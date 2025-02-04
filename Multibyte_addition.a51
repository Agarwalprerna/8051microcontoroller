/*Write an assembly language program to add n byte 2  unsigned 8-bit numbers stored from internal memory locations starting from 51H and 61H and 
store the final result in internal memory locations 51H and consider n=4 this has been stored at 50h.*/

Org 000h
ClR C
MOV R2, 50H
MOV R0,#51H
MOV R1,#61H
MOV B,61H
LOOP: MOV A, @R0
ADDC A, @R1
MOV @R0 ,A
INC R0
INC R1
DJNZ R2,LOOP
END	
	