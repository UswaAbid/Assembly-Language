; Using loop in assembly language 
[org 0x0100]
;Initialization

    xor ax , ax            ;to empty the register incase any garbage value
    mov cx , 3
    mov bx , num1          ;moving num1 value 011C to bx
      
  Outerloop:

    add  ax, [bx]   ;adding value(at address [011C], [011E],[0120],[0122] in reg [BX] ,that is representing an address now, with value at register AX)
    add  bx , 2     ; jumping to 2 addresses onward 
    sub cx , 1      ; subtract 1
    jnz Outerloop   ; break condition of loop i.e JUMP IF NOT ZERO (if ZF != 0)
    
    mov  [result], ax
    mov ax , 0x4c00
    int  0x21

num1:   dw  5,  10,  15,  0
result: dw 0


