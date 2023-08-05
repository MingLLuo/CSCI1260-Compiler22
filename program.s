global entry
entry:
	mov rax, 16
	and rax, 3
	cmp rax, 0
	mov rax, 0
	setz al
	shl rax, 7
	or rax, 31
	cmp rax, 31
	jz else__0
	mov rax, 31
	and rax, 3
	cmp rax, 0
	mov rax, 0
	setz al
	shl rax, 7
	or rax, 31
	cmp rax, 31
	jz else__2
	mov rax, 4
	jmp continue__3
else__2:
	mov rax, 8
continue__3:
	jmp continue__1
else__0:
	mov rax, 12
continue__1:
	ret