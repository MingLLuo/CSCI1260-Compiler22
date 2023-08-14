global entry
extern error
extern read_num
entry:
	mov [rsp + -8], rdi
	add rsp, -8
	call read_num
	sub rsp, -8
	mov rdi, [rsp + -8]
	ret