global entry
entry:
	mov rax, 4
	mov [rsp + -8], rax
	mov rax, 31
	mov r8, [rsp + -8]
	add rax, r8
	ret