; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/20 16:45:30 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:29 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section        .text
		global		_ft_strcpy

	_ft_strcpy:
		enter 16, 0
		pushf

		mov rax, rdi
		beginloop:
			mov rcx,[rsi]
			mov [rdi],rcx
			cmp cl, 0
			je end
			inc rsi
			inc rdi
			jmp beginloop
		end:
			popf
			leave
			ret

