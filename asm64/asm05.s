section .data
    shell db 'asm01',0

section .text
    global _start

_start:
    mov rax, 11
    mov rbx, shell
    xor rsi, rsi
    xor rdx, rdx
    int 0x80