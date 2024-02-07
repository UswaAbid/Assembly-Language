; Program to add three variables by using byte variables
[org 0x0100]

xor ax , ax

    mov  bx, num1          
      
    add  ax, [bx]
    add  bx , 2

    add  ax, [bx]
    add  bx , 2

    add  ax, [bx]
    add  bx , 2
    
    mov  [result], ax
    mov ax , 0x4c00
    int  0x21

num1:   dw  5,  10,  15,  0
result: dw 0