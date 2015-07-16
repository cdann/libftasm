; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/19 00:43:32 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:25 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section .text           					;Code Segment
	   global _ft_toupper

_ft_toupper:
	enter   16, 0
	pushf

	cmp rdi, 'a'
	jl end
	cmp rdi, 'z'
	jg end
	sub rdi, 32
	jmp end

	end:
		mov rax, rdi

		popf
		leave
		ret


