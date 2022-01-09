.intel_syntax noprefix				
.bits 32

.global func

; call: func(0xa)

func:
	push	ebp
	mov	ebp,esp
	sub	esp,0x10    
	mov	eax,DWORD PTR [ebp+0x8]  
	mov	ebx,eax  
	mov	DWORD PTR [ebp-0x4],eax 
	mov 	DWORD PTR [ebp-0x8],0  
	jmp	func1                 
func1:
	sub	ebx,0x1
	mul	DWORD PTR [ebp-0x4],ebx
	cmp 	ebx,0x1
	jg	func1
 
func2:
        add	DWORD PTR [ebp-0x4],0x1a
	or      DWORD PTR [ebp-0x4],0x3b
	mul	DWORD PTR [ebp-0x4],0xb
	mov	eax,DWORD PTR [ebp-0x4] 
	mov 	ebx,0xc1
	xor	edx,edx
	div	ebx
	mov 	DWORD PTR [ebp-0x4],edx
	cmp	DWORD PTR [ebp-0x8],0x5
	add	DWORD PTR [ebp-0x8],0x1
	jle	func2 
	mov	eax,DWORD PTR [ebp-0x4] 
	pop	ebp
	ret


