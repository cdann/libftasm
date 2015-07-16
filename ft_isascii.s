; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isascii.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp<matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/25 18:24:27 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:39:57 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	   global _ft_isascii


_ft_isascii:
	enter 16, 0
	pushf
	mov rax, 1

	cmp rdi, 0
	jl notascii
	cmp rdi, 127
	jg notascii
	jmp end

	notascii:
		mov rax, 0
		jmp end

	end:
		popf
		leave
		ret
