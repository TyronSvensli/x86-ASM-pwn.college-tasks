.intel_syntax noprefix

mov rbp, rsp

most_common_byte:
  xor rcx, rcx
  
loop_1:
  dec rsi
  cmp rcx, rsi
  inc rsi
  jg loop_1_done
  mov al, byte ptr [rdi + rcx]
  inc byte ptr [rbp - al]
  inc rcx
  jmp loop_1

loop_1_done:
  xor rbx, rbx
  xor r8, r8
  xor r9, r9

loop_2:
  cmp rbx, 0xff
  jg loop_2_done
  cmp byte ptr [rbp - rbx], r8b
  jle past_if
  mov r8b, byte ptr [rbp - rbx]
  mov r9, rbx
past_if:
  inc rbx
  jmp loop_2

loop_2_done:
  mov rax, r9
  ret