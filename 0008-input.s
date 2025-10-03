	.file	"0008-input.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Repeat how many times? "
.LC1:
	.string	"%d"
.LC2:
	.string	"%3d - %s\n"
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
	lea	rax, -23[rbp]
	movabs	rcx, 6278066737626506568
	mov	QWORD PTR [rax], rcx
	movabs	rcx, 9399091170596640
	mov	QWORD PTR 6[rax], rcx
	lea	rax, .LC0[rip]
	mov	rdi, rax
	call	puts@PLT
	lea	rax, -32[rbp]
	mov	rsi, rax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L2
.L3:
	lea	rdx, -23[rbp]
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -28[rbp], 1
.L2:
	mov	eax, DWORD PTR -32[rbp]
	cmp	DWORD PTR -28[rbp], eax
	jl	.L3
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
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
