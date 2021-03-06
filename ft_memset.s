; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#              ;
;    Updated: 2015/07/16 16:00:54 by cdannapp         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; extern void		*ft_memset(void *str, int c, size_t n);
; ordre des arguments de fonction: rdi = str, rsi = c, rdx = n  retour: rax

section .text
	global	_ft_memset
	extern _ft_puts

_ft_memset:
	pushf
	xor al, al
	mov rax, rsi ; rax sert de repere a stosb pour savoir le byte qu'iil doit copier 
	mov rcx, rdx ; rcx est le nombre de fois ou rep sera utilise
	mov r15, rdi
	cld
	rep stosb; stosb sera repeté, il va copier le byte de rax dans rdi
	mov rax, r15
	popf
	ret
