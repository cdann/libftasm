; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_islower.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/24 20:43:29 by matguig           #+#    #+#               ;
;   Updated: 2015/02/24 20:44:13 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_islower

_ft_islower:
	enter 16, 0

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
		leave
		ret