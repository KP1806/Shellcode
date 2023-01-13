section .data
    message db "Entrer 42:",0
    len_message equ $-message
    correct_msg db "Correct",0
    len_correct_msg equ $-correct_msg
    incorrect_msg db "Incorrect",0
    len_incorrect_msg equ $-incorrect_msg
    input_message db 2

section .text
    global _start

_start:
    mov rdx, len_message
    mov rsi, message
    mov rdi, 1
    mov rax, 1
    syscall

    mov rdi, 0
    mov rsi, input_message
    mov rdx, 2
    mov rax, 0
    syscall

    cmp byte [input_message], 0x34
    jne incorrect
    cmp byte [input_message+1], 0x32
    jne incorrect
    cmp byte [input_message+2], 0x0
    jne incorrect

    mov rdx, len_correct_msg
    mov rsi, correct_msg
    mov rdi, 1
    mov rax, 1
    syscall

    mov rax, 1
    mov rbx, 0
    int 0x80

incorrect:
    mov rdx, len_incorrect_msg
    mov rsi, incorrect_msg
    mov rdi, 1
    mov rax, 1
    syscall

    mov rax, 1
    mov rbx, 1