ORG 000H         ; Start program at memory address 0000H
MOV A, 30H       ; Load lower byte of 16-bit number into A   [30h = 12H]
MOV B, 32H       ; Load 8-bit multiplier into B                        [32H = 0AH]
MUL AB           ; Multiplication result would be in 16bit
MOV 40H, A       ; Store the lower byte (LSB) of result in memory location 40H  ->   [78H]
MOV R1, B        ; Store the carry (higher byte of the first multiplication) in R1-> 00H
MOV A, 31H       ; Load upper byte of 16-bit number into A  [31H= 34H]
MOV B, 32H       ; Load the same 8-bit multiplier into B       [32H = 0AH]
MUL AB           ; Multiply A × B                              lower Byte = 08H->A 
                                                                                 ; upper byte = 02H -> B

ADD A, R1        ; Add carry from the previous multiplication   [08H + 00H= 08H] NO OV
JNC NEXT         ; If no carry, jump to NEXT
INC B            ; If there is a carry, increment B (handle overflow)

NEXT: MOV 41H, A          ;  Store middle byte of result (A) in memory location 41H
MOV 42H, B                   ; Store upper byte (MSB) of result in memory location 42H
END          
