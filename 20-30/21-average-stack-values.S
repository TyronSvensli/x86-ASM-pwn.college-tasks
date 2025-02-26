.intel_syntax noprefix
mov rax, [rsp]
mov rbx, [rsp+8]
add rax, rbx
shr rax, 1
mov rbx, [rsp+16]
mov rcx, [rsp+24]
add rbx, rcx
shr rbx, 1
add rax, rbx
shr rax, 1
push rax