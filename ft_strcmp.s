global _ft_strcmp

section .text
		
_ft_strcmp:
	xor 	rax, rax		
	mov		al, byte [rdi]	
	mov		bl, byte [rsi]	
	cmp		al, 0			
	je		_return			
	cmp 	al, bl		
	jne 		_return			
	inc 	rdi			
	inc 	rsi		
	jmp 	_ft_strcmp

_return:
	movsx	rax, al	
    movsx	rbx, bl
    sub		rax, rbx		
	ret