; Using sorting in assembly language 
[org 0x0100]

jmp start                         ; unconditional jump
data:   dw   6, 4, 5, 2
result: dw 0    

start:
    mov cx, 4                    ;make 4 passes, has to be out

  outerloop:
      mov bx, 0   
             
    innerloop:
       mov ax, [data+bx]
       cmp ax, [data+bx+2]       ;indirect addressing

       jbe noswap                ;if we dont have to swap ,we think of this as "if"
                                 ;jump if below or equal (jbe)
                                 ;jump if not above (jna)
       ;swap the potion          
       mov dx, [data+bx+2]
       mov [data+bx+2], ax
       mov [data+bx], dx
  
  noswap:
     add bx, 2
     cmp bx, 6
     jne innerloop

  ;check outerloop termination
  sub cx,1
  jnz outerloop

mov  [result], ax
mov ax, 0x4c00
int  0x21





