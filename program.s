global entry
extern error
extern read_num
entry:
	mov rax, 4
	mov [rsp + -8], rax
	mov rax, 8
	mov r8, [rsp + -8]
	mov [rdi + 0], r8
	mov [rdi + 8], rax
	mov rax, rdi
	or rax, 2
	add rdi, 16
	mov r8, rax
	and r8, 7
	cmp r8, 2
	jnz error
	mov rax, [rax + -2]
	ret