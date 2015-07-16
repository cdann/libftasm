; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_pow.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/25 22:49:31 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:19:28 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	   global _ft_pow

_ft_pow:
	enter 16, 0
	pushf

	mov rax, 1 
	cmp rsi, 0
	je end

	mov rcx, 0
	mov r12, rdi
	beginloop:
		cmp rcx, rsi
		je end
		inc rcx
		mul rdi
		jmp beginloop

	end:
		popf
		leave
		ret
