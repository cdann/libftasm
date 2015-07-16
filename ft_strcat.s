; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/19 15:34:49 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:30 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


;strcat rdi = dest rdx = src 

section .text
	global _ft_strcat
	extern _ft_strlen

_ft_strcat:
	enter 16, 0
	pushf

	mov r12, rdi
	call _ft_strlen		;on appelle strlen avec la chaine envoyee
	mov	r15, rax
	mov rax, r12
	mov rdi, r12
	mov rcx, 0			;on met rcx a 0 pour pouvoir s'en servir d'index
	beginloop:
		mov bl, [rsi]
		cmp bl, 0		;on verifie chaque bite de src voir si c'est la fin de la string
		je end
		mov [rdi + r15], bl
		inc rsi	
		inc r15
		jmp beginloop
	end:
		mov bl, 0
		mov [rdi+ r15], bl
		popf
		leave
		ret
