; Programa de par ou impar

%include 'bibliotecaE.inc'

section .text

global _start

_start:

  xor rdx, rdx
  mov rax, 58 ; decimal
  mov rbx, 2
  div rbx

  mov rax, rdx
  call int_to_string
  call saidaResultado

exit:
  mov rax, SYS_EXIT
  ;mov rbx, EXIT_SUCESS
  int SYS_CALL