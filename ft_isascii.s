section .text           					;Code Segment
	   global _ft_isascii


_ft_isascii:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, 1

	cmp rdi, 0
	jl notascii
	cmp rdi, 127
	jg notascii
	jmp end

	notascii:
		mov rax, 0
		jmp end

	end:
		leave
		ret								;return result;
