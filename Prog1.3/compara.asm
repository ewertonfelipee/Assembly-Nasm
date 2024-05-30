segment .data
    LF          EQU 0x0A
    NULL        EQU 0X0D
    RET_EXIT    EQU 0X00
    STD_IN      EQU 0X00
    STD_OUT     EQU 0X01
    SYS_EXIT    EQU 0X01
    SYS_READ    EQU 0X03
    SYS_WRITE   EQU 0X04
    SYS_CALL    EQU 0X80

section .data   ; somente para termos constantes
    x   DD  110  ; dd is doubleword
    y   DD  50
    msg1 DB 'X greater than Y', LF, NULL
    tam1    EQU $- msg1
    msg2 DB 'Y greater than X', LF, NULL
    tam2    EQU $- msg2

;section .bss

section .text   ; onde o programa executa

global _start

_start:
    MOV EAX, DWORD [x]
    MOV EBX, DWORD [y]
    CMP EAX, EBX
    JGE  GREATER
    JLE  LESSER
    JMP FINAL

;   LESSER, GREATER AND EXIT ARE LABELS
LESSER:
    MOV ECX, msg2
    MOV EDX, tam2
    
GREATER:
    MOV ECX, msg1
    MOV EDX, tam1

FINAL:
    MOV EAX, SYS_WRITE
    MOV EBX, STD_OUT
    INT SYS_CALL

EXIT:
    MOV EAX, SYS_EXIT
    MOV EBX, RET_EXIT
    INT SYS_CALL