; 4 bit multiplication Algorithm
[org 0x100]

jmp start
multiplicand: db 7           ; 4 bit multiplicand (in binary: 0111)
multiplier: db 5              ; 4 bit multiplier   (in binary: 0101)
result : db 0                 ; 8 bit result (initialized to 0)

start:
mov cl, 4                     ; Initialize bit count to 4 (4 bits multiplication).
mov bl, [multiplicand]        ; Load the multiplicand (7) into register bl.
mov dl, [multiplier]          ; Load the multiplier (5) into register dl.

checkbit:
shr dl, 1                     ; Shift the rightmost bit of dl into the carry flag.
jnc skip                      ; If the carry flag is not set (bit is zero), skip the addition.
add [result], bl             ; If the carry flag is set (bit is one), add the multiplicand to the result.

skip:
shl bl, 1                     ; Shift the multiplicand left by one bit.
dec cl                        ; Decrement the bit count (4 bits -> 3 bits -> 2 bits -> 1 bit).
jnz checkbit                  ; If there are more bits left, repeat the process.(jump if not zero)

mov  [result], ax             ; Store the final result in the result variable.

mov ax, 0x4c00                ; Terminate the program (DOS exit code).
int 0x21                      ; Invoke the DOS interrupt to exit the program.
