
[org 0x0100]

jmp start                                           
num1:   dw  7,8,9,10,11
mov bx , 0
result: dw 0

start:
  
    mov ax, [num1+bx]                                      

    shr ax , 1

    add bx,2
    cmp dx,10
    jne start
    
mov  [result], ax
mov ax, 0x4c00
int  0x21
