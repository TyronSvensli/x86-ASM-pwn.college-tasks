.intel_syntax noprefix

cmp dword ptr [rdi], 0x7f454c46
je first_statement
cmp dword ptr [rdi], 0x00005A4D
je second_statement

mov eax, [rdi+4]
imul eax, [rdi+8]
imul eax, [rdi+12]
jmp done

first_statement:
    mov eax, [rdi+4]
    add eax, [rdi+8]
    add eax, [rdi+12]
    jmp done

second_statement:
    mov eax, [rdi+4]
    sub eax, [rdi+8]
    sub eax, [rdi+12]
    jmp done

done:
    nop