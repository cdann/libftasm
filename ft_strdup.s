section        .text
	global		_ft_strdup
	extern		_malloc
	extern		_ft_strlen
	extern		_ft_memcpy

;ici rdi = str
_ft_strdup:
	enter 16,0

	mov r15, rdi
	call _ft_strlen

	inc rax
	lea r12, [rax * 8]
	mov rdi, r12
	call _malloc

					; ici r15 = str r12 = strlen(str) [rax] le pointeur sur la zone allouee
					;si je veux utiliser memcpy rdi = dest rsi = src rdx = n
	mov rdi, rax
	mov r14, rdi
	mov rsi, r15
	mov rdx, r12
	call _ft_memcpy

end:
	leave
	ret
