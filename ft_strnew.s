; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_strnew.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/26 16:14:40 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/26 16:32:11 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

%define SIZEOFCHAR		8

section .text
	global _ft_strnew
	extern _malloc
	extern _ft_bzero

_ft_strnew:
	enter 16, 0
	pushf

	inc rdi
	lea r12, [rdi * SIZEOFCHAR]
	mov rdi, r12
	call _malloc

	mov rdi, rax
	mov rsi, r12
	call _ft_bzero

	popf
	leave
	ret
