; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_cat.s                                           :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/27 16:32:16 by matguig          ###   ########.fr         ;
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
	enter 16, 0					;initialisation
	pushf

	cmp edi, 0
	jl end

	beginloop:
		mov r15, rdi			;on sauve rdi (le filedescriptor) pour s'en servir apres

		mov rdi, buf
		mov rsi, 0
		mov rdx, BUFFER_SIZE
		call _ft_memset			; on met tous les octets de buf a 0

		mov rdi, r15

		mov rax, FTCALL(READ)
		mov rsi, buf			; Stock dans buf
		mov rdx, BUFFER_SIZE
		syscall					; on lit dans le fd BUFFER_SIZE octets qu'on met dans buf

		mov r12, rax

		mov rdi, buf
		call _ft_strlen			; on compte la longueur du buf qu'on a lut
		mov rdx, rax

		mov rax, FTCALL(WRITE)
		mov rdi, STDOUT
		mov rsi, buf
		syscall					; on ecrit les caractere sur la  sortie standard

		mov rdi, r15
		cmp r12, 0				; si le retour de read est 0 on arrete
		je end
		jmp beginloop

	end:
		popf					; retour propre
		leave
		ret
