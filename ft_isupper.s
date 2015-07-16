; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/24 20:32:33 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:18:55 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_isupper

_ft_isupper:
	pushf

	cmp	rdi, 65	
	jl	isFalse
	cmp	rdi, 91
	jl	isTrue

	isFalse:
		mov rax, 0
		jmp END
	isTrue:
		mov rax, 1

	END:
		popf			;retour propre
		ret