	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$4, -104(%rbp)
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -100(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$5, -100(%rbp)
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-104(%rbp), %eax
	imull	-100(%rbp), %eax
	movslq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	%rcx, %rdx
	movslq	-100(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB0_1
LBB0_8:
	movl	$0, -104(%rbp)
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	cmpl	$4, -104(%rbp)
	jge	LBB0_16
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	$0, -100(%rbp)
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$5, -100(%rbp)
	jge	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movslq	-104(%rbp), %rax
	leaq	-96(%rbp), %rcx
	imulq	$20, %rax, %rax
	addq	%rax, %rcx
	movslq	-100(%rbp), %rax
	movl	(%rcx,%rax,4), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_11
LBB0_14:                                ##   in Loop: Header=BB0_9 Depth=1
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.15:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB0_9
LBB0_16:
	movq	-8(%rbp), %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	subq	%rax, %rcx
	jne	LBB0_17
	jmp	LBB0_18
LBB0_17:
	callq	___stack_chk_fail
LBB0_18:
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

.subsections_via_symbols
