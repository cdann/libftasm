; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_memset.s                                        :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/20 14:39:23 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/20 18:20:28 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

; ordre des arguments de fonction: rdi = str, rsi = c, rdx = n  retour: rax

section .text           					;Code Segment
	   global _ft_memset

_ft_memset:
	enter 16, 0

	mov rcx, 0
	mov rax, rdi

	beginloop:
		cmp rcx, rdx
		je end
		mov [rdi], rsi
		inc rcx
		inc rdi
		jmp beginloop

	end:
		leave
		ret
