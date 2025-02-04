/*Write an assembly language program to add two unsigned 8-bit numbers stored in registers A 
and B, respectively. Store the result at memory location 52h.*/

org 0000h 
 MOV A, #57h 
MOV B, #6Ah 
ADD A, B 
MOV 52h, A 
END
	
	