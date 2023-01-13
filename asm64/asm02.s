section .data
    message db "1337"
    len equ $-message

section .text
    global _start

_start:
    mov rdx, len
    mov rsi, message
    mov rdi, 1
    mov rax, 1
    syscall

    mov rax, 1
    mov rbx, 0
    int 0x80