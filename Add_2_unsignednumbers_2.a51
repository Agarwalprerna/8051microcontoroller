/*Write an assembly language program to add two unsigned 8-bit numbers stored in internal 
memory locations 30H and 31H and store the final result in memory locations 40H and 41H, 
respectively. Data at 30H and 31H are DF and DE, respectively */

org 0000h 
MOV A, 30h 
MOV B, 31h 
ADD A, B 
MOV 40h, A 
JNC loc1 
MOV 41h, #01h 
loc1: 
 END
	
	