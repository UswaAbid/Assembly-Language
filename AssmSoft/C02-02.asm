[org 0x0100]
; start of code 


mov  ax, [value1]              ; move the constant 5 into register ax 
mov  bx, [value2]              ; move the constant 10 into register bx

add  ax, bx                    ; add value of bx into the value of ax 

mov  bx, [value3]              ; add constant 15 into the value of bx 
add  ax, bx                    ; add value of bx into the value of ax 
mov  [value4], ax              ; move the constant 0 into register ax 

mov  ax, 0x4c00                ; exit .. 
int  0x21                      ; .. is what the OS should do for me

;Labels
value1: dw   5
value2: dw   10
value3: dw   15
value4: dw   0



; watch the listing carefully 
