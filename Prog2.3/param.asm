global PassaParam

segment .text

PassaParam:
  add rdi, rsi ; rsi recebe o valor de b
  add rdi, rdx ; rdx recebe o valor de c
  add rdi, rcx ; rdx recebe o valor de d
  add rdi, r8 ; r8 recebe o valor de e
  add rdi, r9 ; r9 recebe o valor de f
  mov rax, [rsp + 8]
  add rdi, rax
  mov rax, rdi ; move o resultado para RAX | RDI recebe o valor de a
  ret