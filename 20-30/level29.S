.intel_syntax noprefix

mov rbx, 0x403000

str_lower:
  xor rax, rax

  cmp rdi, 0
  je done
  cmp byte ptr [rdi], 0x00
  je done

non_zero_checker:
  cmp byte ptr [rdi], 0x5a
  jg past_foo
  push rax
  push rdi
  mov rdi, [rdi]
  call rbx
  pop rdi
  mov byte ptr [rdi], al
  pop rax
  inc rax

past_foo:
  inc rdi
  cmp byte ptr[rdi], 0x00
  jne non_zero_checker

done:
  ret


