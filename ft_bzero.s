; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/25 18:24:27 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:04:22 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	   global _ft_bzero
	   extern _ft_memset
	   extern _printf

_ft_bzero:
	enter 16, 0
	mov rdx, rsi
	mov rsi, 0
	mov r15, rdi
	call _ft_memset
	mov rax, r15

	;call _printf
	leave
	ret

