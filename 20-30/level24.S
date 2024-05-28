.intel_syntax noprefix

jmp jump_target
.rept 0x51
    nop
.endr

jump_target:
    pop rdi
    mov rax, 0x403000
    jmp rax