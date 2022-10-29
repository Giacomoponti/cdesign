	.text
	.globl	baz
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8 , -88(%rbp)
	movq	%r9 , -96(%rbp)
	movq	16(%rbp), -104(%rbp)
	movq	24(%rbp), -112(%rbp)
	movq	-56(%rbp), %r12
	movq	-64(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, 0(%rbp)
	movq	0(%rbp), %r12
	movq	-72(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -8(%rbp)
	movq	-8(%rbp), %r12
	movq	-80(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -16(%rbp)
	movq	-16(%rbp), %r12
	movq	-88(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -24(%rbp)
	movq	-24(%rbp), %r12
	movq	-96(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -32(%rbp)
	movq	-32(%rbp), %r12
	movq	-104(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -40(%rbp)
	movq	-40(%rbp), %r12
	movq	-112(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8 , -104(%rbp)
	movq	%r9 , -112(%rbp)
	movq	16(%rbp), -120(%rbp)
	movq	24(%rbp), -128(%rbp)
	movq	-72(%rbp), %r12
	movq	-80(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, 0(%rbp)
	movq	0(%rbp), %r12
	movq	-88(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -8(%rbp)
	movq	-8(%rbp), %r12
	movq	-96(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -16(%rbp)
	movq	-16(%rbp), %r12
	movq	-104(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -24(%rbp)
	pushq	%rbp
	subq	$16, %rsp
	movq	0(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-104(%rbp), %r8 
	movq	-112(%rbp), %r9 
	movq	-120(%rbp), 0(%rsp)
	movq	-128(%rbp), 8(%rsp)
	leaq	baz(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%rbp
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %r12
	movq	-112(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -32(%rbp)
	movq	-32(%rbp), %r12
	movq	-120(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -40(%rbp)
	movq	-40(%rbp), %r12
	movq	-128(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -48(%rbp)
	movq	-48(%rbp), %r12
	movq	-64(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	pushq	%rbp
	subq	$16, %rsp
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %r8 
	movq	-8(%rbp), %r9 
	movq	-8(%rbp), 0(%rsp)
	movq	-8(%rbp), 8(%rsp)
	leaq	bar(%rip), %r10
	callq	*%r10
	addq	$16, %rsp
	popq	%rbp
	movq	%rax, 0(%rbp)
	movq	0(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	pushq	%rbp
	movq	$1, %rdi
	leaq	foo(%rip), %r10
	callq	*%r10
	popq	%rbp
	movq	%rax, 0(%rbp)
	movq	0(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	