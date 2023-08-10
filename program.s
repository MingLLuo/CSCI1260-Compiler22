global entry
entry:
	mov rax, 4
	mov [rsp + -8], rax
	mov rax, 8
	mov [rsp + -16], rax
	mov rax, 12
	mov r8, [rsp + -16]
	add rax, r8
	mov r8, [rsp + -8]
	add rax, r8
	ret