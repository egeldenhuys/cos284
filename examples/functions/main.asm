BITS 64

segment .text
global _start

_start:
    mov rdi,1
    mov rsi,4
    call add_numbers

    mov rdi,rax ; 5
    mov rsi, 4

    call add_numbers

    mov rdi, rax ; Save return result (9)

    mov rax,60 ; sys_exit
    syscall ; Exit

; --------------------------
; int add(int num1, int num2)
; -------------
; DESCRIPTION:
;   Add two numbers
; ARGS:
;   rdi - int num1
;   rsi - int num2
; RETURN:
;   The sum of the two numbers
add_numbers:
    push rbp ; Save old call frame
    mov rbp,rsp ; Initialize new call frame

    add rdi,rsi ; num1 = num1 + num2
    mov rax,rdi ; result = num1

    mov rsp,rbp ; Discard potentially allocated space on the stack
    pop rbp ; Restore old call frame
    ret