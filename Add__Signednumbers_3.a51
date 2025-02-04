/*Write an assembly language program to add two signed 8-bit numbers stored in internal memory locations 30H and 31H and 
store the final result in internal memory locations 40H  and condition (-A -B) both numbers are negative.*/

org 0000h	
MOV A, 30h
MOV B, 31h
CPL A
ADD A,#0H
MOV R2,A
MOV A,B
CPL A
ADD A,#01H
ADD A,B
MOV 40H,A
END	 
	