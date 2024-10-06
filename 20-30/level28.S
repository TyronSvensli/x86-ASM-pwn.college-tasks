.intel_syntax noprefix

cmp rdi, 0
jne non_zero_checker

non_zero_checker:
  add rax, 1
  cmp qword ptr [rdi + rax], 0 #unless i multiply RAX with something higher than 1 it crashes without saying any errors, I'm pretty sure this is the right solution, but because it's broken or something idk how to get this one solved.
  jne non_zero_checker
