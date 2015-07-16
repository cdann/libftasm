; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/24 20:43:29 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:33 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section	.text
	global	_ft_islower

_ft_islower:
	enter 16, 0
	pushf

	cmp	rdi, 97
	jl	isFalse
	cmp	rdi, 123
	jl	isTrue

	isFalse:
		mov rax, 0
		jmp END
	isTrue:
		mov rax, 1

	END:
		popf
		leave
		ret