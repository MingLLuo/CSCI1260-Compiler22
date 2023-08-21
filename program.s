global entry
extern error
extern read_num
extern print_value
extern print_newline
entry:
	mov [rsp + -24], rdi
	add rsp, -24
	call read_num
	sub rsp, -24
	mov rdi, [rsp + -24]
	mov [rsp + -24], rax
	add rsp, -8
	call function_even_559878715
	sub rsp, -8
	mov [rsp + -8], rdi
	mov rdi, rax
	add rsp, -8
	call print_value
	sub rsp, -8
	mov rdi, [rsp + -8]
	mov rax, 159
	ret
function_even_559878715:
	mov rax, [rsp + -8]
	cmp rax, 0
	mov rax, 0
	setz al
	shl rax, 7
	or rax, 31
	cmp rax, 31
	jz else__8
	mov rax, 159
	jmp continue__9
else__8:
	mov rax, [rsp + -8]
	mov r8, rax
	and r8, 3
	cmp r8, 0
	jnz error
	sub rax, 4
	mov [rsp + -24], rax
	add rsp, -8
	call function_odd_721806792
	sub rsp, -8
continue__9:
	ret
function_odd_721806792:
	mov rax, [rsp + -8]
	cmp rax, 0
	mov rax, 0
	setz al
	shl rax, 7
	or rax, 31
	cmp rax, 31
	jz else__10
	mov rax, 31
	jmp continue__11
else__10:
	mov rax, [rsp + -8]
	mov [rsp + -24], rax
	add rsp, -8
	call function_even_559878715
	sub rsp, -8
	cmp rax, 31
	mov rax, 0
	setz al
	shl rax, 7
	or rax, 31
continue__11:
	ret