; main.asm
org 0x7C00
bits 16

%define ENDL 0x0D, 0x0A

; start
start:
    jmp main

;
; Prints a string to screen
; Params:

