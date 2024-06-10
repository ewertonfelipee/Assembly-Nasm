%include 'bibliotecaE.inc'

section .data

  msg db 'Entre com o valor de 3 digitos: ', LF, NULL
  tamMsg equ $ - msg
  numpar db 'Numero eh par', LF, NULL
  tamNumPar equ $ - numpar
  numimpar db 'numero eh impar', LF, NULL
  tamNumImpar equ $ - numimpar

section .bss
  num resb 1

section .text

global _start

_start:
  mov rax, SYS_WRITE
  mov rbx, STD_OUT
  mov rcx, msg
  mov rdx, tamMsg
  int SYS_CALL

enter_value:
  mov rax, SYS_READ
  mov rbx, STD_IN
  mov rcx, num
  mov rdx, 0x4
  int SYS_CALL

  lea rsi, [num]
  mov rcx, 0x3
  call string_to_int

verify:
  xor rdx, rdx
  mov rbx, 0x2
  div rbx
  cmp rdx, 0x0
  jz  show_even

show_odd:
  mov rax, SYS_WRITE
  mov rbx, STD_OUT
  mov rcx, numimpar
  mov rdx, tamNumImpar
  int SYS_CALL
  jmp exit

show_even:
  mov rax, SYS_WRITE
  mov rbx, STD_OUT
  mov rcx, numpar
  mov rdx, tamNumPar
  int SYS_CALL

exit:
  mov rax, SYS_EXIT
  mov rbx, EXIT_SUCESS
  int SYS_CALL
