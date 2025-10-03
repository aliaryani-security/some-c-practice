	.file	"0011-heap-example.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\t[+] allocating %d bytes of memory on the heap for char_ptr\n"
	.align 8
.LC1:
	.string	"Error, cannot allocate heap memory.\n"
.LC2:
	.string	"char_ptr (%p) --> '%s'\n"
	.align 8
.LC3:
	.string	"\t[+] allocating 12 bytes of memory on the heap for int_ptr\n"
.LC4:
	.string	"int_ptr (%p) --> %d\n"
	.align 8
.LC5:
	.string	"freeing char_ptr's heap memory...\n"
	.align 8
.LC6:
	.string	"\t[+] allocating another 15 bytes for char_ptr\n"
.LC7:
	.string	"char_ptr(%p) --> '%s'\n"
	.align 8
.LC8:
	.string	"\t[-] freeing int_ptr's heap memory...\n"
	.align 8
.LC9:
	.string	"\t[-] freeing char_ptr's heap memory...\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	cmp	DWORD PTR -36[rbp], 1
	jg	.L2
	mov	DWORD PTR -20[rbp], 50
	jmp	.L3
.L2:
	mov	rax, QWORD PTR -48[rbp]
	add	rax, 8
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	atoi@PLT
	mov	DWORD PTR -20[rbp], eax
.L3:
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, eax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	mov	rdi, rax
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L4
	mov	rax, QWORD PTR stderr[rip]
	mov	rcx, rax
	mov	edx, 36
	mov	esi, 1
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fwrite@PLT
	mov	edi, -1
	call	exit@PLT
.L4:
	mov	rax, QWORD PTR -16[rbp]
	movabs	rsi, 2338328219631577172
	movabs	rdi, 7310575174828190817
	mov	QWORD PTR [rax], rsi
	mov	QWORD PTR 8[rax], rdi
	movabs	rsi, 7526676535925826661
	movabs	rdi, 13071412544151653
	mov	QWORD PTR 15[rax], rsi
	mov	QWORD PTR 23[rax], rdi
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC3[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	edi, 12
	call	malloc@PLT
	mov	QWORD PTR -8[rbp], rax
	cmp	QWORD PTR -8[rbp], 0
	jne	.L5
	mov	rax, QWORD PTR stderr[rip]
	mov	rcx, rax
	mov	edx, 36
	mov	esi, 1
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fwrite@PLT
	mov	edi, -1
	call	exit@PLT
.L5:
	mov	rax, QWORD PTR -8[rbp]
	mov	DWORD PTR [rax], 31337
	mov	rax, QWORD PTR -8[rbp]
	mov	edx, DWORD PTR [rax]
	mov	rax, QWORD PTR -8[rbp]
	mov	rsi, rax
	lea	rax, .LC4[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC5[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	free@PLT
	lea	rax, .LC6[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	edi, 15
	call	malloc@PLT
	mov	QWORD PTR -16[rbp], rax
	cmp	QWORD PTR -16[rbp], 0
	jne	.L6
	mov	rax, QWORD PTR stderr[rip]
	mov	rcx, rax
	mov	edx, 36
	mov	esi, 1
	lea	rax, .LC1[rip]
	mov	rdi, rax
	call	fwrite@PLT
	mov	edi, -1
	call	exit@PLT
.L6:
	mov	rax, QWORD PTR -16[rbp]
	movabs	rcx, 8029185230041998702
	mov	QWORD PTR [rax], rcx
	mov	DWORD PTR 7[rax], 7959151
	mov	rdx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -16[rbp]
	mov	rsi, rax
	lea	rax, .LC7[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, .LC8[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	free@PLT
	lea	rax, .LC9[rip]
	mov	rdi, rax
	call	puts@PLT
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	free@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
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
