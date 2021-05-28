global _ft_strcpy

section .text
_ft_strcpy:
	xor rax,rax

_while:
	cmp		byte[rsi + rax], 0
	je		_return
	mov		dl,byte[rsi + rax]
	mov		byte[rdi + rax],dl
	inc		rax
	jmp		_while

_return:
	mov		rax,rdi
	ret

	
