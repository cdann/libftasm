; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isdigit.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/19 01:27:19 by matguig           #+#    #+#               ;
;   Updated: 2015/02/19 01:29:59 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

 section .text
 	global	_ft_isdigit

 _ft_isdigit:
 	enter 16, 0
 	mov rax, 1
 
 	cmp rdi, 48
 	jl isnot
 	cmp rdi, 57
 	jg isnot
 	jmp end

 	isnot:
 		mov rax, 0

 	end:
	 	leave
	 	ret