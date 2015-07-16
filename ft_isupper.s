; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isupper.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp<matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/24 20:32:33 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/25 22:18:28 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section	.text
	global	_ft_isupper

_ft_isupper:
	enter 16, 0 		;initialisation
	pushf

	cmp	rdi, 65	
	jl	isFalse
	cmp	rdi, 91
	jl	isTrue

	isFalse:
		mov rax, 0
		jmp END
	isTrue:
		mov rax, 1

	END:
		popf			;retour propre
		leave
		ret