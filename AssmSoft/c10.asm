; Using loop in assembly language 
[org 0x0100]

num1:   dw 10, 20,30, 40, 50, 10, 20,30, 40, 50
result: dw 0


;Initialization

    mov ax, 0         ;to empty the register incase any garbage value
    mov bx , 0          
      
  Outerloop:

    add  ax, [num1 + bx]   
    add  bx , 2                  ; jumping to 2 addresses onward 
    cmp bx , 20                  ; compare 2 and 20
    jne Outerloop                ; break condition of loop i.e JUMP IF VALUES ARE NOT EQUAL (ZF = 0)
    
    mov  [result], ax
    mov ax , 0x4c00
    int  0x21

; Everything is garbage , wrong program b/c of changing the position of label num1
; bytes that we define becomes our opcode (wrong)



