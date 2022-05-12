%include 'libraryE.inc'


section .data
    v1 dw '105', 0xa

section .text

global _start

_start
    call converter_valor
    call mostrar_valor
    mov eax, SYS_EXIT
    mov ebx, SYS_EXIT
    int SYS_CALL

converter_valor:
    lea esi, [v1]
    mov ecx, 0x3
    call string_to_int  ;   marcador
    add eax, 0x2
    ret

mostrar_valor:
    call int_to_string
    call saidaResultado
    ret

string_to_int:
    xor, ebx, ebx       ;   xor eh uma comparador de bit no qual se ambos
                        ;   o resultado sera 0 para aquela posicao de bit
                        ;   isso eh uma forma de passar 0 para algo ao inves
                        ;   de simplmente enviar 0x0

.prox_digito:
    movzx eax, byte[esi];   Move with Zero-Extend, significa que os bit superiores
                        ;   do operador de destino serao preenchidos com zero.
    inc esi             ;   Incrementa a posicao do registrador ESI
    sub al, '0'         ;   Converte o caractere em AL o que corresponde a um numero entre 0 e 9
    imul ebx, 0xA       ;   Multiplica o ebx por 10
    add ebx, eax        ;   Adiciona o EBX x 10 para EAX
    loop .prox_digito   ;   Salta para o proximo registro ate que todos os caracteres
                        ;   da cadeia tenha sido lidos
    mov eax, ebx        ;   Move o conteudo de EBX para EAX
    ret                 ;   retorna