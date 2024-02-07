
[org 0x0100]

jmp start                                            ; unconditional jump
num1:   dw  5
result: dw 0

start:
;Initialization

    mov ax, [num1]                                        ;reset the accumulator
    imul ax, ax                      


mov  [result], ax
mov ax, 0x4c00
int  0x21
