; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:01:22 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define READ		0x2000003
%define STDOUT		1
%define WRITE		0x2000004
%define BUFFER_SIZE 256

section .bss
	buf resb	BUFFER_SIZE

section .text
	global _ft_cat
	extern _ft_memset
	extern _ft_puts

_ft_cat:
	enter 16, 0
	pushf

	mov r15, rdi

	beginloop:
		mov rax, READ		; Read Syscall
		mov rdi, r15
		lea rsi, [rel buf]
		mov rdx, BUFFER_SIZE
		syscall

		jc end						; Controll read syscall flag

		cmp rax, 0
		je end

		mov rdx, rax				; Rax Syscall Read lenght
		mov rax, WRITE
		mov rdi, STDOUT
		lea rsi, [rel buf]
		syscall

		jmp beginloop

	end:
		popf					; retour propre
		leave
		ret
