; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 18:20:17 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:28 by cdannapp         ###   ########.fr        ;
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