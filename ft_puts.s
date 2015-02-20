; **************************************************************************** ;
;                                                                              ;
;                                                        :::      ::::::::     ;
;   ft_puts.s                                          :+:      :+:    :+:     ;
;                                                    +:+ +:+         +:+       ;
;   By: cdannapp <cdannapp@student.42.fr>          +#+  +:+       +#+          ;
;                                                +#+#+#+#+#+   +#+             ;
;   Created: 2015/02/18 18:24:22 by cdannapp          #+#    #+#               ;
;   Updated: 2015/02/19 15:31:24 by cdannapp         ###   ########.fr         ;
;                                                                              ;
; **************************************************************************** ;


%define FTCALL(nb)	0x2000000 | nb
%define STDOUT		1

section .data
	nwln:
		db 0xa,0   ;new line

section .text           					;Code Segment
	   extern _ft_strlen
	   global _ft_puts

_ft_puts:
	push rbp
	mov rbp, rsp
	sub rsp, 16

	mov r15, rdi						; on met l'argument de puts qui est dans rdi dans rsi pour qu'il soit l'argument du write
	call _ft_strlen						; on compte la longueur de rdi
	mov rdx, rax						; on recupere la longueur de la chaine (dans rax) comme troisieme argument de write (dans rdx)
	mov rdi, STDOUT
	lea rsi, [rel r15]
	mov rax, FTCALL(4)					;4 pour write
	syscall
	mov r15, rax

	cmp rax, 0
	jl end
	mov rdx, 1
	mov rdi, STDOUT
	mov rsi, nwln
	mov rax, FTCALL(4)					;4 pour write
	syscall
	end:
		mov rax, r15
		leave
		ret
