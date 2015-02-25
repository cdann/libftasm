; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isalnum.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 01:30:24 by matguig           #+#    #+#               ;
;   Updated: 2015/02/25 21:38:13 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_isalnum

_ft_isalnum:
	enter 16, 0
	pushf

	cmp	rdi, 48
	jl	isFalse
	cmp	rdi, 58
	jl	isTrue

	cmp	rdi, 65
	jl	isFalse
	cmp	rdi, 91
	jl	isTrue

	cmp	rdi, 97
	jl	isFalse
	cmp	rdi, 123
	jl	isTrue

	isFalse:
		mov rax, 0
		jmp end
	isTrue:
		mov rax, 1

	end:
		popf
		leave
		ret