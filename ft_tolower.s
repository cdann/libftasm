; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_tolower.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 01:02:42 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:50:18 by matguig          ###   ########.fr         ;
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
