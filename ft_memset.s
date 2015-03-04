; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_memset.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/20 14:39:23 by matguig           #+#    #+#               ;
;   Updated: 2015/03/04 15:06:59 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

; ordre des arguments de fonction: rdi = str, rsi = c, rdx = n  retour: rax
; extern void		*ft_memset(void *str, int c, size_t n);

section .text
	global	_ft_memset

_ft_memset:
	enter 16, 0
	pushf

	xor al, al
	mov rax, rsi
	mov rcx, rdx
	cld
	rep stosb
	popf
	leave
	ret
