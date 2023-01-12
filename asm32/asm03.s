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
    ; éxrit le message dans stdout
    mov edx, len_message
    mov ecx, message
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; lit le message dans stdin
    mov eax, 3
    mov ebx, 0
    mov ecx, input_message
    mov edx, 8
    int 0x80

    ; Vérifie si l'input est égal à "42"
    cmp byte [input_message], '4'
    jne incorrect
    cmp byte [input_message+1], '2'
    jne incorrect

    ; cas "correct"
    mov edx, len_correct_msg
    mov ecx, correct_msg
    mov ebx, 1
    mov eax, 4
    int 0x80
    jmp exit

incorrect:
    ; cas "incorrect"
    mov edx, len_incorrect_msg
    mov ecx, incorrect_msg
    mov ebx, 1
    mov eax, 4
    int 0x80
   
    mov eax, 1
    mov ebx, 1
    int 0x80

exit:
    mov eax, 1
    mov ebx, 0
    int 0x80