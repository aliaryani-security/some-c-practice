	.file	"0003-char-array.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	BYTE PTR -32[rbp], 72
	mov	BYTE PTR -31[rbp], 101
	mov	BYTE PTR -30[rbp], 108
	mov	BYTE PTR -29[rbp], 108
	mov	BYTE PTR -28[rbp], 111
	mov	BYTE PTR -27[rbp], 32
	mov	BYTE PTR -26[rbp], 87
	mov	BYTE PTR -25[rbp], 111
	mov	BYTE PTR -24[rbp], 114
	mov	BYTE PTR -23[rbp], 108
	mov	BYTE PTR -22[rbp], 100
	mov	BYTE PTR -21[rbp], 33
	mov	BYTE PTR -20[rbp], 10
	mov	BYTE PTR -19[rbp], 0
	lea	rax, -32[rbp]
	mov	rdi, rax
	call	puts@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Gentoo 14.3.1_p20250801 p4) 14.3.1 20250801"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
