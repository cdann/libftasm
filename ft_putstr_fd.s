; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 18:24:22 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:31 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;



%define FTCALL(nb)	0x2000000 | nb
%define STDOUT		1

section .data
	retline	db 0xa,0   ;new line
	null db "(null)"

section .text
	   extern _ft_strlen
	   global _ft_putstr_fd

_ft_putstr_fd:
	enter 16, 0
	pushf

	or rdi, rdi
	jz _null

	exe:
		mov r15, rdi						; on met l'argument de puts qui est dans rdi dans rsi pour qu'il soit l'argument du write
		mov r14, rsi
		call _ft_strlen						; on compte la longueur de rdi

		mov rdx, rax						; on recupere la longueur de la chaine (dans rax) comme troisieme argument de write (dans rdx)
		mov rdi, r14
		lea rsi, [rel r15]
		mov rax, FTCALL(4)					;4 pour write
		syscall

		mov r15, rax
		cmp rax, 0
		jl false

	true:
		mov rax, 10
		jmp end

	false:
		mov rax, -1
		jmp end

	end:
		popf
		leave
		ret

	_null:
		mov rdi, null
		jmp exe
