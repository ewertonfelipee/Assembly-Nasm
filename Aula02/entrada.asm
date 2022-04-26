segment .data ; parte de uma section
    lf: equ 0x0A        ; line feed
    null equ 0x0D       ; final da string
    sys_call equ 0x80   ; envia informacao ao SO
    ; RAX
    sys_exit equ 0x01   ; codigo de chamada para finalizar
    sys_read equ 0x03   ; operacao de leitura
    sys_write equ 0x04  ; operacao de escrita
    ; RBX
    ret_exit equ 0x00   ; operacao realizada com sucesso
    std_in equ 0x00     ; entrada padrao
    std_out equ 0x01    ; saida padrao
    
section .data ; somente para termos constantes
    msg db "Digite o seu nome: ", lf, null
    siz equ $- msg
    msg2 db "Seu nome eh: ", lf, null
    siz2 equ $- msg

section .bss
    name resb   1

section .text

global _start

_start:
    mov rax, sys_write
    mov rbx, std_out
    mov rcx, msg
    mov rdx, siz
    int sys_call

    mov rax, sys_read
    mov rbx, std_in
    mov rcx, name
    mov rdx, 0x0A
    int sys_call

    mov rax, sys_write
    mov rbx, std_out
    mov rcx, msg2
    mov rdx, siz2
    int sys_call

exit:
    ; sempre usar essas 3 instrucoes para terminar o programa
    mov rax, sys_exit ; Encerra o pragrama | mov descola dest para src
    mov rbx, ret_exit ; valor de retorno 0
    int sys_call
