
[org 0x0100]

jmp start                                           
num1:   dw  7
num2:   dw  5
result: dw 0

start:
    mov dx, 10
    mov al, [num1]                                      
    mov ah, [num2]                    

outerloop:
    sub dx,2
    cmp dx,0
    jbe ended

    shr ah,1
    jc set
    jnc unset
    
unset:
   shl al,1
   jmp outerloop

set:
  add bl,al
  shl al, 1
  jmp outerloop

ended:
mov  [result], ax
mov ax, 0x4c00
int  0x21
