section .text           					;Code Segment
	   global _ft_bzero
	   extern _ft_memset
	   extern _printf

_ft_bzero:
	enter 16, 0
	mov rdx, rsi
	mov rsi, 0
	mov r15, rdi
	call _ft_memset
	mov rax, r15

	;call _printf
	leave
	ret

