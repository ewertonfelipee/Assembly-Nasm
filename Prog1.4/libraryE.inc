segment .data
    LF          EQU 0x0A    ; Line Feed
    NULL        EQU 0X0D    ; Final da String
    SYS_EXIT    EQU 0X01    ; Codigo de chamada para finalizar
    RET_EXIT    EQU 0X00    ; Operacao com Sucesso
    STD_IN      EQU 0X00    ; Entrada padrao
    STD_OUT     EQU 0X01    ; Saida padrao
    SYS_READ    EQU 0X03    ; Operacao de leitura
    SYS_WRITE   EQU 0X04    ; Operacao de escrita
    SYS_CALL    EQU 0X80    ; Envia informacao ao SO
    TAM_BUFFER  EQU 0XA

segment .bss
    BUFFER resb 0X1 ;   binary thats loads a determined value to be utilized

segment .text

;---------------------------------------------
;   Saida do Resultao no Terminal
;---------------------------------------------
;   Entrada: valor String em BUFFER
;   Saida: valor no terminal
;---------------------------------------------
saidaResultado:
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx, BUFFER
    mov edx, TAM_BUFFER
    int SYS_CALL
    ret