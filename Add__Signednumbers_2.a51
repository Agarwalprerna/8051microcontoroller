/*Write an assembly language program to add two signed 8-bit numbers stored in internal memory locations 
30H and 31H and store the final result in internal memory locations 40H and condition (A-B) <0*/

org 0000h	
MOV A, 30h
MOV B, 31h
CPL B
ADD B,#01H
ADD A,B
CPL A
ADD A,#01H
MOV 40H,A
END	 
	