.intel_syntax noprefix

cmp rdi, 3
# there seems to be something wwrong with this challenge that makes it so that the JMP doesn't work since the default switch doesn't exist where it  should be for some reason, therefore you have to create your own as I did on level26-fix.S and JMP to that one instead. otherwise this one would have worked I'm pretty sure.
jg [rsi + 4 * 8]
jmp [rsi + rdi * 8]
jmp done

done:
  nop