.intel_syntax noprefix

mov rbx, rsi
jmp loop

loop:
  add rax, [rdi + rcx]
  add rcx, 8
  sub rsi, 1
  cmp rsi, 0
  jg loop

div rbx