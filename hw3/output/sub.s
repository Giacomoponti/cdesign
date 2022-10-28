	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %r10
	movq	%r10, -16(%rbp)
	movq	%rsi, %r10
	movq	%r10, -8(%rbp)
	movq	$10, %r12
	movq	$9, %r13
	subq	%r13, %r12
	movq	%r12, 0(%rbp)
	movq	0(%rbp), %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	