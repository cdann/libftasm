; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_memcpy.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/22 14:42:15 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:46:35 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section        .text
		global		_ft_memcpy

	_ft_memcpy:
		enter 16, 0
		mov rax, rdi
		mov rcx, 0
		beginloop:
			cmp rcx, rdx			;verifie le compteur rcx
			je end
			mov r15b,[rsi + rcx]	;copie lettre a lettre rsi dans r15
			mov [rdi + rcx],r15b	; copie la lettre de r15 dans rdi
			cmp r15b, 0				;verifie la fin de la chaine
			je end
			inc rcx
			jmp beginloop
		end:
			;mov rax, rcx
			leave
			ret
