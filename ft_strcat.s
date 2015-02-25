; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strcat.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 15:34:49 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 21:47:37 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen

_ft_strcat:
	enter 16, 0
	pushf

	mov r12, rdi
	call _ft_strlen
	mov	r15, rax
	mov rax, r12
	mov rdi, r12
	mov rcx, 0
	beginloop:
		mov bl, [rsi]
		cmp bl, 0
		je end
		mov [rdi + r15], bl
		inc rsi
		inc r15
		jmp beginloop
	end:
		mov bl, 0
		mov [rdi+ r15], bl
		popf
		leave
		ret
