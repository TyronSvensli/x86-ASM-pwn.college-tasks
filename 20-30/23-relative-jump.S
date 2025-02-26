.intel_syntax noprefix

jmp jump_target
.rept 0x51
    nop
.endr

jump_target:
    mov rax, 1