; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/19 01:02:42 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:26 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section .text
	global _ft_tolower

_ft_tolower:
	enter 16, 0
	pushf

	cmp rdi, 'A'
	jl end
	cmp rdi, 'Z'
	jg end
	add rdi, 32
	
	end:
		mov rax, rdi

		popf
		leave
		ret
