	.file	"0006-pointers.c"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -32[rbp]
	movabs	rcx, 8022916924116329800
	mov	QWORD PTR [rax], rcx
	movabs	rsi, 2851464966991703
	mov	QWORD PTR 6[rax], rsi
	lea	rax, -32[rbp]
	mov	QWORD PTR -48[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 2
	mov	QWORD PTR -40[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -40[rbp]
	movabs	rdx, 8459766113792237689
	mov	QWORD PTR [rax], rdx
	movabs	rcx, 2851529609799456
	mov	QWORD PTR 5[rax], rcx
	mov	rax, QWORD PTR -48[rbp]
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
