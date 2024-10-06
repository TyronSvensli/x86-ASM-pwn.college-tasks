.intel_syntax noprefix

cmp rdi, 3
jg default
jmp [rsi + rdi * 8]
jmp done

default:
  jmp [rsi + 4 * 8]

done:
  nop