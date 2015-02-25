; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_pow.s                                           :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/25 22:49:31 by matguig           #+#    #+#               ;
;   Updated: 2015/02/25 23:23:42 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	   global _ft_pow

_ft_pow:
	enter 16, 0
	pushf

	mov rax, 1 
	cmp rsi, 0
	je end

	mov rcx, 0
	;mov rax, rdi 
	mov r12, rdi
	beginloop:
		cmp rcx, rsi
		je end
		inc rcx
		mul rdi
		jmp beginloop

	end:
		popf
		leave
		ret
