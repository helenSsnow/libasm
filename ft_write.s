global _ft_write
extern ___error

section .text

_ft_write:
	mov			rax, 0x2000004
                syscall
	jc			_exit_error
                ret

_exit_error:
		push	rax
                call ___error
		pop		rbx
		mov		[rax], rbx
		mov		rax, -1
                ret
