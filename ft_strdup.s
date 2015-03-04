; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strdup.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/25 18:24:27 by matguig           #+#    #+#               ;
;   Updated: 2015/03/04 15:40:51 by cdannapp         ###   ########.fr         ;
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
	mov rsi, r15
	mov rcx, r12
	cld
	rep movsb

end:
	leave
	ret
