; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_cat.s                                           :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
<<<<<<< HEAD
;   Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#               ;
;   Updated: 2015/03/04 15:34:38 by cdannapp         ###   ########.fr         ;
=======
;   Created: 2015/02/20 14:39:23 by matguig           #+#    #+#               ;
;   Updated: 2015/03/04 15:35:41 by matguig          ###   ########.fr         ;
>>>>>>> fab47107bc1068d86cfca7b8f1b7fdcf9a32c237
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
<<<<<<< HEAD
		mov r15, rdi			;on sauve rdi (le filedescriptor) pour s'en servir apres

=======
>>>>>>> fab47107bc1068d86cfca7b8f1b7fdcf9a32c237
		lea rdi, [rel buf]
		mov rsi, 0
		mov rdx, BUFFER_SIZE
		call _ft_memset

		mov rax, FTCALL(READ)		; Read Syscall
		mov rdi, r15
<<<<<<< HEAD

		mov rax, FTCALL(READ)
		lea rsi, [rel buf]			; Stock dans buf
=======
		lea rsi, [rel buf]
>>>>>>> fab47107bc1068d86cfca7b8f1b7fdcf9a32c237
		mov rdx, BUFFER_SIZE
		syscall

		jc end						; Controll read syscall flag

		cmp rax, 0
		je end

		mov rdx, rax				; Rax Syscall Read lenght
		mov rax, FTCALL(WRITE)
		mov rdi, STDOUT
		lea rsi, [rel buf]
<<<<<<< HEAD
		syscall					; on ecrit les caractere sur la  sortie standard

		mov rdi, r15
		cmp r12, 0				; si le retour de read est 0 on arrete
		je end
=======
		syscall
>>>>>>> fab47107bc1068d86cfca7b8f1b7fdcf9a32c237
		jmp beginloop

	end:
		popf					; retour propre
		leave
		ret
