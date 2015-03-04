; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_cat.s                                           :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/20 14:39:23 by matguig           #+#    #+#               ;
;   Updated: 2015/03/04 15:35:41 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

%define FTCALL(nb)	0x2000000 | nb
%define READ		3
%define STDOUT		1
%define WRITE		4
%define BUFFER_SIZE 256

section .bss
	buf resb	BUFFER_SIZE

section .text
	global _ft_cat
	extern _ft_memset

_ft_cat:
	enter 16, 0
	pushf

	mov r15, rdi

	beginloop:
		lea rdi, [rel buf]
		mov rsi, 0
		mov rdx, BUFFER_SIZE
		call _ft_memset

		mov rax, FTCALL(READ)		; Read Syscall
		mov rdi, r15
		lea rsi, [rel buf]
		mov rdx, BUFFER_SIZE
		syscall

		jc end						; Controll read syscall flag

		cmp rax, 0
		je end

		mov rdx, rax				; Rax Syscall Read lenght
		mov rax, FTCALL(WRITE)
		mov rdi, STDOUT
		lea rsi, [rel buf]
		syscall
		jmp beginloop

	end:
		popf					; retour propre
		leave
		ret
