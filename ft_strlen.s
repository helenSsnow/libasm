global _ft_strlen

section .text

_ft_strlen:
	xor     rax, rax

_while:
	cmp     byte[rdi + rax], 0      
	je		_return       
	inc     rax
	jmp     _while

_return:
	ret