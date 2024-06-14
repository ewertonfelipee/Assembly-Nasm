global fibonacci

segment .text

fibonacci:
  mov r8, 0x1
  mov r9, 0x1
  mov rax, 0x1

calcular:
  sub rdi, 0x1 ; 8 - 1 = 7
  cmp rdi, 0x0
  je terminar
  mov rax, r8 
  add rax, r9

troca:
  mov r8, r9
  mov r9, rax
  jmp calcular

terminar:
  ret