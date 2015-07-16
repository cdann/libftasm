; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 18:24:22 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:05:37 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define WRITE	0x2000004
%define STDOUT		1

section .data
	nullstr		db	"(null)", 10

section .text
	   extern _ft_strlen
	   global _ft_puts

_ft_puts:
	enter 16, 0
	pushf

	mov r14, rdi

	or rdi, rdi
	jz _null

	exe:
		mov r15, rdi						
		call _ft_strlen						; on compte la longueur de rdi

		mov rdx, rax						; on recupere la longueur de la chaine (dans rax) comme troisieme argument de write (dans rdx)
		mov rdi, STDOUT
		lea rsi, [rel r15]					; on met l'argument de puts qui etait dans rdi dans rsi pour qu'il soit l'argument du write
		mov rax, WRITE					
		syscall
		mov r15, rax

		cmp rax, 0
		jl false

		or r14, r14
		jz true

		mov rdx, 1
		mov rdi, STDOUT
		lea rsi, [rel nullstr + 6]
		mov rax, WRITE					
		syscall

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
		lea rdi, [rel nullstr]
		jmp exe
