	.text
	.file	"bsort.ll"
	.globl	bubble_sort             # -- Begin function bubble_sort
	.p2align	4, 0x90
	.type	bubble_sort,@function
bubble_sort:                            # @bubble_sort
# %bb.0:
	.p2align	4, 0x90
.LBB0_1:                                # %_pre59.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	addq	$-1, %rsi
	testq	%rsi, %rsi
	jle	.LBB0_6
# %bb.2:                                # %_pre68.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %eax
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                # %_after81
                                        #   in Loop: Header=BB0_3 Depth=2
	addq	$1, %rax
	cmpq	%rsi, %rax
	jg	.LBB0_1
.LBB0_3:                                # %_body69
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rax,8), %rcx
	movq	8(%rdi,%rsi,8), %rdx
	cmpq	%rdx, %rcx
	jle	.LBB0_5
# %bb.4:                                # %_if83
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	%rdx, (%rdi,%rax,8)
	movq	%rcx, 8(%rdi,%rsi,8)
	jmp	.LBB0_5
.LBB0_6:                                # %_post58
	retq
.Lfunc_end0:
	.size	bubble_sort, .Lfunc_end0-bubble_sort
                                        # -- End function
	.globl	program                 # -- Begin function program
	.p2align	4, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$8, %edi
	callq	oat_alloc_array
	movq	%rax, %rbx
	movq	$121, 8(%rax)
	movq	$125, 16(%rax)
	movq	$120, 24(%rax)
	movq	$111, 32(%rax)
	movq	$116, 40(%rax)
	movq	$110, 48(%rax)
	movq	$117, 56(%rax)
	movq	$119, 64(%rax)
	movq	%rax, %rdi
	callq	string_of_array
	movq	%rax, %rdi
	callq	print_string
	movq	_s37(%rip), %rdi
	callq	print_string
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	bubble_sort
	movq	%rbx, %rdi
	callq	string_of_array
	movq	%rax, %rdi
	callq	print_string
	movq	$-1, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	program, .Lfunc_end1-program
	.cfi_endproc
                                        # -- End function
	.type	_s36,@object            # @_s36
	.data
	.globl	_s36
_s36:
	.asciz	" "
	.size	_s36, 2

	.type	_s37,@object            # @_s37
	.globl	_s37
	.p2align	3
_s37:
	.quad	_s36
	.size	_s37, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _s36
