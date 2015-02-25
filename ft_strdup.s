; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strdup.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/25 18:24:27 by matguig           #+#    #+#               ;
;   Updated: 2015/02/25 21:48:27 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section        .text
	global		_ft_strdup
	extern		_malloc
	extern		_ft_strlen
	extern		_ft_memcpy


_ft_strdup:
	enter 16,0

	mov r15, rdi
	call _ft_strlen

	inc rax
	lea r12, [rax * 8]
	mov rdi, r12
	call _malloc

	mov rdi, rax
	mov r14, rdi
	mov rsi, r15
	mov rdx, r12
	call _ft_memcpy

end:
	leave
	ret
