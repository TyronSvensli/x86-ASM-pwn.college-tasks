.intel_syntax noprefix

xor rax, rax
cmp rdi, 0
je done

cmp byte ptr[rdi], 0
je done

non_zero_checker:
  inc rax
  cmp byte ptr[rdi + rax], 0
  jne non_zero_checker
  jmp done

done:
  nop

  