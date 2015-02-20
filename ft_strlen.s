; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strlen.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/18 18:20:17 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/19 13:00:49 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text           					;Code Segment
	   global _ft_strlen


_ft_strlen:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, 0							;put 0 in return register
	;mov r15, 0							;a quoi ca sert?
	beginloop:
		mov bl, [rdi]
		cmp bl, 0
		je end
		inc rax
		inc rdi
		jmp beginloop					;go back to bginning
	end:
		leave
		ret								;return result;
