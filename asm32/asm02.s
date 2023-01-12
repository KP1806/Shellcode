section .data
    message db "1337"
    len equ $-message

section .text
    global _start

_start:
    mov edx, len
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 80h