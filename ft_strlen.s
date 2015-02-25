; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strlen.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/18 18:20:17 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:49:41 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text           					;Code Segment
	   global _ft_strlen


_ft_strlen:
	enter 16, 0
	pushf

	mov rax, 0							;put 0 in return register
	beginloop:
		mov bl, [rdi]
		cmp bl, 0
		je end
		inc rax
		inc rdi
		jmp beginloop					;go back to bginning
	end:
		popf
		leave
		ret								;return result;
