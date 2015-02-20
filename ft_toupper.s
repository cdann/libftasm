; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_toupper.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 00:43:32 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/19 13:00:52 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text           					;Code Segment
	   global _ft_toupper

_ft_toupper:
	enter   16, 0

	mov rcx, 0

	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jg end
	sub rdi, 32
	jmp end

	end:
		mov rax, rdi
		leave
		ret
