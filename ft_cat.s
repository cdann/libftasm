; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_cat.s                                           :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/24 14:10:08 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

%define FTCALL(nb)	0x2000000 | nb
%define READ		3
%define STDOUT		1
%define WRITE		4
%define BUFFER_SIZE 1500

section .bss
	buf resb	BUFFER_SIZE

section .text
	global _ft_cat
	extern _ft_strlen
	extern _ft_memset

_ft_cat:
	enter 16, 0


	beginloop:
		mov r15, rdi

		mov rdi, buf
		mov rsi, 0
		mov rdx, BUFFER_SIZE
		call _ft_memset

		mov rdi, r15

		mov rax, FTCALL(READ)
		mov rsi, buf			; Stock dans buf
		mov rdx, BUFFER_SIZE
		syscall

		mov r12, rax

		mov rdi, buf
		call _ft_strlen
		mov rdx, rax

		mov rax, FTCALL(WRITE)
		mov rdi, STDOUT
		mov rsi, buf
		syscall

		mov rdi, r15
		cmp r12, 0
		je end
		jmp beginloop

	end:
		;mov rdi, buf
		;call _ft_strlen
		;mov rdx, rax

		;mov rax, FTCALL(WRITE)
		;mov rdi, STDOUT
		;mov rsi, buf
		;syscall

		leave
		ret
