section .data

section .text

global _start

_start:
    mov rax, 0x01 ; mov descola dest para src
    mov rbx, 0x00 ; valor de retorno 0
    int 0x80