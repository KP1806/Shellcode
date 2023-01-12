section .data
    shell db 'asm01',0

section .text
    global _start

_start:
    mov eax, 11
    mov ebx, shell
    xor ecx, ecx
    xor edx, edx
    int 0x80