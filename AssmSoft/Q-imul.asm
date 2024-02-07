

[org 0x0100]

jmp start                                           
num1:   dw  2
num2:   dw  3
result: dw 0

start:
;Initialization

    mov ax, [num1]                                      
    mov bx, [num2]                    
    imul ax, bx 

mov  [result], ax
mov ax, 0x4c00
int  0x21
