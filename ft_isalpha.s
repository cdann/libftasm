; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_isalpha.s                                       :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: matguig <matguig@student.42.fr>            +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/25 18:24:27 by matguig           #+#    #+#               ;
;   Updated: 2015/02/25 21:39:12 by matguig          ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;

section .text
	   global _ft_isalpha


_ft_isalpha:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, 0

	cmp rdi, 'A'
	jl notalpha
	cmp rdi, 'Z'
	jle isalpha
	cmp rdi, 'a'
	jl notalpha
	cmp rdi, 'z'
	jle isalpha
	jg notalpha

	isalpha:
		mov rax, 1
		jmp end

	notalpha:
		mov rax, 0
		jmp end

	end:
		leave
		ret								;return result;
