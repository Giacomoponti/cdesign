	.text
	.globl	f1
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, 0(%rbp)
	jmp	start
	.text
start:
	movq	0(%rbp), %r12
	movq	$10, %r13
	movq	$0, -8(%rbp)
	cmpq	%r13, %r12
	setg	-8(%rbp)
	movq	-8(%rbp), %r10
	cmpq	$1, %r10
	je	then
	jmp	end
	.text
then:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
end:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f2
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, 0(%rbp)
	jmp	start
	.text
start:
	movq	0(%rbp), %r12
	movq	$10, %r13
	movq	$0, -8(%rbp)
	cmpq	%r13, %r12
	setg	-8(%rbp)
	movq	-8(%rbp), %r10
	cmpq	$1, %r10
	je	then
	jmp	end
	.text
then:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
end:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	pushq	%rbp
	movq	$0, %rdi
	leaq	f1(%rip), %r10
	callq	*%r10
	popq	%rbp
	movq	%rax, 0(%rbp)
	pushq	%rbp
	movq	$15, %rdi
	leaq	f2(%rip), %r10
	callq	*%r10
	popq	%rbp
	movq	%rax, -24(%rbp)
	movq	0(%rbp), %r12
	movq	-24(%rbp), %r13
	addq	%r12, %r13
	movq	%r13, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	