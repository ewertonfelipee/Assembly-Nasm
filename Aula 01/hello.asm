section .data
    msg:    db  'Hello World!', 0xA
    tam equ $- msg ; $- da o tamanho da mensagem
    msgC: db    'Aprendendo Assembly Nasm', 0xA
    tam2 equ $- msgC

section .text

global _start

_start:

    mov rax, 0x04 ; vai mandar algo para a saida padrao
    mov rbx, 0x01 ; saida padrao
    mov rcx, msg
    mov rdx, tam
    int 0x80

    mov rax, 0x04 ; vai mandar algo para a saida padrao
    mov rbx, 0x01 ; saida padrao
    mov rcx, msgC
    mov rdx, tam2
    int 0x80


    ; sempre usar essas 3 instrucoes para terminar o programa
    mov rax, 0x01 ; Encerra o pragrama | mov descola dest para src
    mov rbx, 0x00 ; valor de retorno 0
    int 0x80