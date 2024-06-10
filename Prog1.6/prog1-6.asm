; Código no estudo de arrays

%include 'BibliotecaE.inc'

section .data

 array: DD 12, 50, 32, 44, 63

section .text

global _start

_start:

 mov rax, [array + 4 * 3]
 call int_to_string
 call saidaResultado

exit:
  ; sempre usar essas 3 instrucoes para terminar o programa
  mov rax, SYS_EXIT ; Encerra o pragrama | mov descola dest para src
  mov rbx, EXIT_SUCESS ; valor de retorno 0
  int SYS_CALL