; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/19 01:27:19 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:21:33 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


 section .text
 	global	_ft_isdigit

 _ft_isdigit:
 	enter 16, 0
 	pushf
 	mov rax, 1
 
 	cmp rdi, 48
 	jl isnot
 	cmp rdi, 57
 	jg isnot
 	jmp end

 	isnot:
 		mov rax, 0

 	end:
 		popf
	 	leave
	 	ret