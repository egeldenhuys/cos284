segment .data
    hello_string: db "Hello World!", 0x0a ; 0x0a is a new line character
    hello_string_len: equ $ - hello_string ; $ is here

segment .text
global _start

_start:
    mov eax,1 ; sys_write
    mov edi,1 ; std out
    mov edx,hello_string_len  ; The number of characters
    lea rsi,[hello_string] ; Set char *buf
    syscall ; Write to screen

    mov eax,60 ; sys_exit
    xor edi, edi ; Set return code to 0
    syscall ; Exit(0)