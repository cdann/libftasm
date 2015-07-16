; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isprint.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp<matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 01:12:18 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:45:31 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_isprint

_ft_isprint:
	enter 16, 0
	pushf
	mov rax, 1

	cmp rdi, 32
	jl isnot
	cmp rdi, 126
	jg isnot
	jmp end

	isnot:
		mov rax, 0

	end:
		popf
		leave
		ret

