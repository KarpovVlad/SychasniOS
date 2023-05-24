	.file	"my_program4.c"
	.text
	.globl	compare
	.type	compare, @function
compare:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	1024(%rax), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	compare, .-compare
	.section	.rodata
.LC0:
	.string	"01-tiny-access.log"
.LC1:
	.string	"r"
.LC2:
	.string	" "
.LC4:
	.string	"%d. %s - %ld - %.2lf%%\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-1032192(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1088, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -1033232(%rbp)
	movq	-1033232(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1033224(%rbp)
	movl	$0, -1033268(%rbp)
	movq	$0, -1033248(%rbp)
	jmp	.L4
.L13:
	movl	$0, -1033264(%rbp)
	leaq	-1040(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -1033240(%rbp)
	jmp	.L5
.L6:
	movl	-1033264(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1033264(%rbp)
	cltq
	movq	-1033240(%rbp), %rdx
	movq	%rdx, -1033200(%rbp,%rax,8)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -1033240(%rbp)
.L5:
	cmpq	$0, -1033240(%rbp)
	jne	.L6
	cmpl	$9, -1033264(%rbp)
	jg	.L7
	jmp	.L4
.L7:
	movq	-1033128(%rbp), %rax
	movq	%rax, %rdi
	call	atol@PLT
	movq	%rax, -1033208(%rbp)
	movq	-1033208(%rbp), %rax
	addq	%rax, -1033248(%rbp)
	movl	$0, -1033260(%rbp)
	movl	$0, -1033256(%rbp)
	jmp	.L8
.L11:
	movq	-1033152(%rbp), %rdx
	leaq	-1033040(%rbp), %rsi
	movl	-1033256(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	movl	-1033256(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1032016, %rax
	movq	(%rax), %rdx
	movq	-1033208(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-1033256(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1032016, %rax
	movq	%rcx, (%rax)
	movl	$1, -1033260(%rbp)
	jmp	.L10
.L9:
	addl	$1, -1033256(%rbp)
.L8:
	movl	-1033256(%rbp), %eax
	cmpl	-1033268(%rbp), %eax
	jl	.L11
.L10:
	cmpl	$0, -1033260(%rbp)
	jne	.L4
	cmpl	$999, -1033268(%rbp)
	jg	.L4
	movq	-1033152(%rbp), %rcx
	leaq	-1033040(%rbp), %rsi
	movl	-1033268(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movl	-1033268(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	leaq	-1032016(%rax), %rdx
	movq	-1033208(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -1033268(%rbp)
.L4:
	movq	-1033224(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L13
	movq	-1033224(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-1033268(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-1033040(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	%rdx, %rcx
	movl	$1032, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -1033252(%rbp)
	jmp	.L14
.L16:
	movl	-1033252(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1032016, %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sdq	-1033248(%rbp), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -1033216(%rbp)
	movl	-1033252(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1032016, %rax
	movq	(%rax), %rdx
	leaq	-1033040(%rbp), %rsi
	movl	-1033252(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, %rax
	salq	$7, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdi
	movl	-1033252(%rbp), %eax
	leal	1(%rax), %esi
	movq	-1033216(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -1033252(%rbp)
.L14:
	cmpl	$9, -1033252(%rbp)
	jg	.L15
	movl	-1033252(%rbp), %eax
	cmpl	-1033268(%rbp), %eax
	jl	.L16
.L15:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1079574528
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
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
