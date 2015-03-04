; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strlen.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/18 18:20:17 by matguig           #+#    #+#               ;
;   Updated: 2015/03/04 15:05:31 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global	_ft_strlen

_ft_strlen:
	enter 16, 0
	pushf

	mov r12, rdi
	mov rax, 0
	mov rcx, 0

	not rcx
	cld
	repne scasb
	sub rdi, r12
	dec rdi

	mov rax, rdi
	popf
	leave
	ret