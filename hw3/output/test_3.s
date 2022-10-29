	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, 0(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-112(%rbp), %r12
	movq	0(%rbp), %r13
	movq	%r12, (%r13)
	movq	$1, %r12
	movq	-104(%rbp), %r13
	movq	%r12, (%r13)
	jmp	start
	.text
start:
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -8(%rbp)
	movq	-8(%rbp), %r12
	movq	$0, %r13
	movq	$0, -16(%rbp)
	cmpq	%r13, %r12
	setg	-16(%rbp)
	movq	-16(%rbp), %r10
	cmpq	$1, %r10
	je	then
	jmp	end
	.text
then:
	movq	-104(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -24(%rbp)
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -32(%rbp)
	movq	-24(%rbp), %r12
	movq	-32(%rbp), %r13
	imulq	%r12, %r13
	movq	%r13, -40(%rbp)
	movq	-40(%rbp), %r12
	movq	-104(%rbp), %r13
	movq	%r12, (%r13)
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r12
	movq	$1, %r13
	subq	%r13, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	0(%rbp), %r13
	movq	%r12, (%r13)
	jmp	start
	.text
end:
	movq	-104(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	factorial2
factorial2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -112(%rbp)
	subq	$8, %rsp
	movq	%rsp, 0(%rbp)
	subq	$8, %rsp
	movq	%rsp, -104(%rbp)
	movq	-112(%rbp), %r12
	movq	0(%rbp), %r13
	movq	%r12, (%r13)
	movq	$1, %r12
	movq	-104(%rbp), %r13
	movq	%r12, (%r13)
	jmp	start
	.text
start:
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -8(%rbp)
	movq	-8(%rbp), %r12
	movq	$0, %r13
	movq	$0, -16(%rbp)
	cmpq	%r13, %r12
	setg	-16(%rbp)
	movq	-16(%rbp), %r10
	cmpq	$1, %r10
	je	then
	jmp	end
	.text
then:
	movq	-104(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -24(%rbp)
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -32(%rbp)
	movq	-24(%rbp), %r12
	movq	-32(%rbp), %r13
	imulq	%r12, %r13
	movq	%r13, -40(%rbp)
	movq	-40(%rbp), %r12
	movq	-104(%rbp), %r13
	movq	%r12, (%r13)
	movq	0(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r12
	movq	$1, %r13
	subq	%r13, %r12
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	0(%rbp), %r13
	movq	%r12, (%r13)
	jmp	start
	.text
end:
	movq	-104(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, 0(%rbp)
	movq	$0, %r12
	movq	0(%rbp), %r13
	movq	%r12, (%r13)
	pushq	%rbp
	movq	$5, %rdi
	leaq	factorial(%rip), %r10
	callq	*%r10
	popq	%rbp
	movq	%rax, -8(%rbp)
	pushq	%rbp
	movq	$5, %rdi
	leaq	factorial2(%rip), %r10
	callq	*%r10
	popq	%rbp
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %r12
	movq	-16(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	