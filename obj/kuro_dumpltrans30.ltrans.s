	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL12MD4TransformPjPKh;	.scl	3;	.type	32;	.endef
__ZL12MD4TransformPjPKh:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	xorl	%edx, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, (%esp)
	movl	8(%esi), %eax
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, 8(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L2:
	movzbl	1(%ecx,%edx), %eax
	movzbl	2(%ecx,%edx), %ebx
	sall	$8, %eax
	sall	$16, %ebx
	orl	%ebx, %eax
	movzbl	(%ecx,%edx), %ebx
	orl	%ebx, %eax
	movzbl	3(%ecx,%edx), %ebx
	sall	$24, %ebx
	orl	%ebx, %eax
	movl	%eax, 16(%esp,%edx)
	addl	$4, %edx
	cmpl	$64, %edx
	jne	L2
	movl	4(%esp), %ecx
	movl	8(%esp), %ebx
	movl	(%esp), %ebp
	movl	12(%esp), %edx
	movl	%ecx, %eax
	addl	16(%esp), %edx
	movl	%ecx, %edi
	xorl	%ebx, %eax
	xorl	%ebp, %edi
	andl	%ebp, %eax
	xorl	%ebx, %eax
	addl	%edx, %eax
	movl	20(%esp), %edx
	roll	$3, %eax
	andl	%eax, %edi
	addl	%ebx, %edx
	movl	%ebp, %ebx
	xorl	%ecx, %edi
	xorl	%eax, %ebx
	addl	%edx, %edi
	movl	24(%esp), %edx
	roll	$7, %edi
	andl	%edi, %ebx
	addl	%ecx, %edx
	movl	%eax, %ecx
	xorl	%ebp, %ebx
	xorl	%edi, %ecx
	addl	%edx, %ebx
	movl	28(%esp), %edx
	roll	$11, %ebx
	andl	%ebx, %ecx
	addl	%ebp, %edx
	movl	%edi, %ebp
	xorl	%eax, %ecx
	xorl	%ebx, %ebp
	addl	32(%esp), %eax
	addl	%edx, %ecx
	movl	%ebp, %edx
	rorl	$13, %ecx
	andl	%ecx, %edx
	xorl	%edi, %edx
	addl	%eax, %edx
	movl	%ebx, %eax
	roll	$3, %edx
	xorl	%ecx, %eax
	andl	%edx, %eax
	xorl	%ebx, %eax
	addl	36(%esp), %edi
	addl	40(%esp), %ebx
	addl	%edi, %eax
	movl	%ecx, %edi
	roll	$7, %eax
	xorl	%edx, %edi
	andl	%eax, %edi
	xorl	%ecx, %edi
	addl	44(%esp), %ecx
	addl	%ebx, %edi
	movl	%edx, %ebx
	roll	$11, %edi
	xorl	%eax, %ebx
	andl	%edi, %ebx
	movl	%edi, %ebp
	xorl	%edx, %ebx
	addl	48(%esp), %edx
	addl	%ecx, %ebx
	movl	%eax, %ecx
	rorl	$13, %ebx
	xorl	%edi, %ecx
	andl	%ebx, %ecx
	xorl	%ebx, %ebp
	xorl	%eax, %ecx
	addl	52(%esp), %eax
	addl	%edx, %ecx
	movl	%ebp, %edx
	roll	$3, %ecx
	andl	%ecx, %edx
	xorl	%edi, %edx
	addl	56(%esp), %edi
	addl	%eax, %edx
	movl	%ebx, %eax
	roll	$7, %edx
	xorl	%ecx, %eax
	andl	%edx, %eax
	xorl	%ebx, %eax
	addl	%edi, %eax
	movl	%ecx, %edi
	addl	60(%esp), %ebx
	roll	$11, %eax
	xorl	%edx, %edi
	andl	%eax, %edi
	xorl	%ecx, %edi
	addl	64(%esp), %ecx
	addl	%ebx, %edi
	movl	%edx, %ebx
	rorl	$13, %edi
	xorl	%eax, %ebx
	andl	%edi, %ebx
	movl	%edi, %ebp
	xorl	%edx, %ebx
	addl	68(%esp), %edx
	addl	%ecx, %ebx
	movl	%eax, %ecx
	roll	$3, %ebx
	xorl	%edi, %ecx
	andl	%ebx, %ecx
	xorl	%ebx, %ebp
	xorl	%eax, %ecx
	addl	72(%esp), %eax
	addl	%edx, %ecx
	movl	%ebp, %edx
	roll	$7, %ecx
	andl	%ecx, %edx
	xorl	%edi, %edx
	addl	76(%esp), %edi
	addl	%eax, %edx
	movl	%ebx, %eax
	roll	$11, %edx
	xorl	%ecx, %eax
	andl	%edx, %eax
	xorl	%ebx, %eax
	addl	%edi, %eax
	movl	%ecx, %edi
	rorl	$13, %eax
	orl	%edx, %edi
	movl	%edi, %ebp
	movl	%ecx, %edi
	andl	%eax, %ebp
	andl	%edx, %edi
	orl	%ebp, %edi
	movl	16(%esp), %ebp
	leal	1518500249(%ebp,%ebx), %ebx
	movl	%edx, %ebp
	addl	%ebx, %edi
	movl	%edx, %ebx
	andl	%eax, %ebp
	roll	$3, %edi
	orl	%eax, %ebx
	andl	%edi, %ebx
	orl	%ebx, %ebp
	movl	32(%esp), %ebx
	leal	1518500249(%ebx,%ecx), %ecx
	movl	%eax, %ebx
	addl	%ecx, %ebp
	movl	%eax, %ecx
	andl	%edi, %ebx
	roll	$5, %ebp
	orl	%edi, %ecx
	andl	%ebp, %ecx
	orl	%ecx, %ebx
	movl	48(%esp), %ecx
	leal	1518500249(%ecx,%edx), %edx
	movl	%edi, %ecx
	orl	%ebp, %ecx
	addl	%edx, %ebx
	roll	$9, %ebx
	movl	%ecx, %edx
	movl	%edi, %ecx
	andl	%ebx, %edx
	andl	%ebp, %ecx
	orl	%edx, %ecx
	movl	64(%esp), %edx
	leal	1518500249(%edx,%eax), %eax
	addl	%eax, %ecx
	movl	%ebp, %eax
	orl	%ebx, %eax
	roll	$13, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	andl	%ecx, %edx
	andl	%ebx, %eax
	orl	%edx, %eax
	movl	20(%esp), %edx
	leal	1518500249(%edx,%edi), %edi
	movl	%ebx, %edx
	addl	%eax, %edi
	movl	%ebx, %eax
	roll	$3, %edi
	orl	%ecx, %eax
	andl	%edi, %eax
	andl	%ecx, %edx
	orl	%eax, %edx
	movl	36(%esp), %eax
	leal	1518500249(%eax,%ebp), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	orl	%edi, %eax
	roll	$5, %edx
	movl	%eax, %ebp
	movl	%ecx, %eax
	andl	%edx, %ebp
	andl	%edi, %eax
	orl	%ebp, %eax
	movl	52(%esp), %ebp
	leal	1518500249(%ebp,%ebx), %ebx
	movl	%edi, %ebp
	addl	%ebx, %eax
	movl	%edi, %ebx
	andl	%edx, %ebp
	roll	$9, %eax
	orl	%edx, %ebx
	andl	%eax, %ebx
	orl	%ebx, %ebp
	movl	68(%esp), %ebx
	leal	1518500249(%ebx,%ecx), %ecx
	movl	%edx, %ebx
	addl	%ecx, %ebp
	movl	%edx, %ecx
	andl	%eax, %ebx
	roll	$13, %ebp
	orl	%eax, %ecx
	andl	%ebp, %ecx
	orl	%ecx, %ebx
	movl	24(%esp), %ecx
	leal	1518500249(%ecx,%edi), %ecx
	movl	%eax, %edi
	addl	%ecx, %ebx
	orl	%ebp, %edi
	movl	%eax, %ecx
	roll	$3, %ebx
	andl	%ebp, %ecx
	andl	%ebx, %edi
	orl	%edi, %ecx
	movl	40(%esp), %edi
	leal	1518500249(%edi,%edx), %edx
	movl	%ebp, %edi
	orl	%ebx, %edi
	addl	%edx, %ecx
	roll	$5, %ecx
	movl	%edi, %edx
	movl	%ebp, %edi
	andl	%ecx, %edx
	andl	%ebx, %edi
	orl	%edx, %edi
	movl	56(%esp), %edx
	leal	1518500249(%edx,%eax), %eax
	movl	%ebx, %edx
	addl	%eax, %edi
	movl	%ebx, %eax
	andl	%ecx, %edx
	roll	$9, %edi
	orl	%ecx, %eax
	andl	%edi, %eax
	orl	%eax, %edx
	movl	72(%esp), %eax
	leal	1518500249(%eax,%ebp), %eax
	addl	%eax, %edx
	movl	%ecx, %eax
	orl	%edi, %eax
	roll	$13, %edx
	movl	%eax, %ebp
	movl	%ecx, %eax
	andl	%edx, %ebp
	andl	%edi, %eax
	orl	%ebp, %eax
	movl	28(%esp), %ebp
	leal	1518500249(%ebp,%ebx), %ebx
	movl	%edi, %ebp
	addl	%ebx, %eax
	orl	%edx, %ebp
	movl	%edi, %ebx
	roll	$3, %eax
	andl	%edx, %ebx
	andl	%eax, %ebp
	orl	%ebp, %ebx
	movl	44(%esp), %ebp
	leal	1518500249(%ebp,%ecx), %ecx
	movl	%edx, %ebp
	addl	%ebx, %ecx
	orl	%eax, %ebp
	movl	%edx, %ebx
	roll	$5, %ecx
	andl	%eax, %ebx
	andl	%ecx, %ebp
	orl	%ebp, %ebx
	movl	60(%esp), %ebp
	leal	1518500249(%ebp,%edi), %edi
	movl	%eax, %ebp
	addl	%ebx, %edi
	orl	%ecx, %ebp
	movl	%eax, %ebx
	roll	$9, %edi
	andl	%ecx, %ebx
	andl	%edi, %ebp
	orl	%ebp, %ebx
	movl	76(%esp), %ebp
	leal	1518500249(%ebp,%edx), %edx
	movl	%ecx, %ebp
	addl	%edx, %ebx
	roll	$13, %ebx
	xorl	%edi, %ebp
	movl	%ebp, %edx
	movl	16(%esp), %ebp
	xorl	%ebx, %edx
	leal	1859775393(%ebp,%eax), %eax
	movl	%edi, %ebp
	xorl	%ebx, %ebp
	addl	%edx, %eax
	movl	%ebp, %edx
	movl	48(%esp), %ebp
	roll	$3, %eax
	xorl	%eax, %edx
	leal	1859775393(%ebp,%ecx), %ecx
	movl	%ebx, %ebp
	xorl	%eax, %ebp
	addl	%edx, %ecx
	movl	%ebp, %edx
	movl	32(%esp), %ebp
	roll	$9, %ecx
	xorl	%ecx, %edx
	leal	1859775393(%ebp,%edi), %edi
	movl	%eax, %ebp
	xorl	%ecx, %ebp
	addl	%edx, %edi
	movl	%ebp, %edx
	movl	64(%esp), %ebp
	roll	$11, %edi
	xorl	%edi, %edx
	leal	1859775393(%ebp,%ebx), %ebx
	movl	24(%esp), %ebp
	addl	%ebx, %edx
	movl	%ecx, %ebx
	roll	$15, %edx
	xorl	%edi, %ebx
	leal	1859775393(%ebp,%eax), %eax
	movl	56(%esp), %ebp
	xorl	%edx, %ebx
	addl	%eax, %ebx
	movl	%edi, %eax
	leal	1859775393(%ebp,%ecx), %ecx
	movl	40(%esp), %ebp
	roll	$3, %ebx
	xorl	%edx, %eax
	xorl	%ebx, %eax
	leal	1859775393(%ebp,%edi), %edi
	movl	72(%esp), %ebp
	addl	%eax, %ecx
	movl	%edx, %eax
	roll	$9, %ecx
	xorl	%ebx, %eax
	leal	1859775393(%ebp,%edx), %edx
	xorl	%ecx, %eax
	movl	%ecx, %ebp
	addl	%edi, %eax
	movl	%ebx, %edi
	roll	$11, %eax
	xorl	%ecx, %edi
	xorl	%eax, %edi
	addl	%edx, %edi
	roll	$15, %edi
	xorl	%eax, %ebp
	movl	%ebp, %edx
	movl	20(%esp), %ebp
	xorl	%edi, %edx
	leal	1859775393(%ebp,%ebx), %ebx
	movl	%eax, %ebp
	xorl	%edi, %ebp
	addl	%edx, %ebx
	movl	%ebp, %edx
	movl	52(%esp), %ebp
	roll	$3, %ebx
	xorl	%ebx, %edx
	leal	1859775393(%ebp,%ecx), %ecx
	movl	36(%esp), %ebp
	addl	%ecx, %edx
	movl	%edi, %ecx
	roll	$9, %edx
	xorl	%ebx, %ecx
	leal	1859775393(%ebp,%eax), %eax
	movl	68(%esp), %ebp
	xorl	%edx, %ecx
	addl	%eax, %ecx
	movl	%ebx, %eax
	leal	1859775393(%ebp,%edi), %edi
	movl	28(%esp), %ebp
	roll	$11, %ecx
	xorl	%edx, %eax
	xorl	%ecx, %eax
	leal	1859775393(%ebp,%ebx), %ebx
	movl	60(%esp), %ebp
	addl	%eax, %edi
	movl	%edx, %eax
	roll	$15, %edi
	xorl	%ecx, %eax
	leal	1859775393(%ebp,%edx), %edx
	movl	44(%esp), %ebp
	xorl	%edi, %eax
	addl	%ebx, %eax
	movl	%ecx, %ebx
	leal	1859775393(%ebp,%ecx), %ecx
	movl	(%esp), %ebp
	roll	$3, %eax
	xorl	%edi, %ebx
	xorl	%eax, %ebx
	addl	%ebx, %edx
	movl	%edi, %ebx
	roll	$9, %edx
	xorl	%eax, %ebx
	xorl	%edx, %ebx
	addl	%ebx, %ecx
	movl	12(%esp), %ebx
	roll	$11, %ecx
	addl	%eax, %ebx
	xorl	%edx, %eax
	movl	%ebx, (%esi)
	movl	76(%esp), %ebx
	xorl	%ecx, %eax
	leal	1859775393(%ebx,%edi), %ebx
	addl	%ebx, %eax
	movl	8(%esp), %ebx
	roll	$15, %eax
	addl	%ebp, %eax
	movl	%eax, 4(%esi)
	movl	4(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 8(%esi)
	leal	(%ebx,%edx), %eax
	movl	%eax, 12(%esi)
	addl	$80, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL14nullskintexidsj;	.scl	3;	.type	32;	.endef
__ZL14nullskintexidsj:
LFB3:
	.cfi_startproc
	movl	_nextmodelid, %edx
	testl	%edx, %edx
	jle	L24
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %edx
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	jmp	L15
	.p2align 5
	.p2align 4,,10
	.p2align 3
L8:
	addl	$1, %esi
	cmpl	%esi, _nextmodelid
	jle	L28
L15:
	movl	_models, %eax
	movl	(%eax,%esi,4), %ebx
	movl	(%ebx), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L8
	movl	72(%ebx), %eax
	testl	%eax, %eax
	jle	L9
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L11:
	movl	24(%ebx), %ecx
	leal	(%ecx,%eax,4), %ecx
	cmpl	%edx, (%ecx)
	jne	L10
	movl	$0, (%ecx)
L10:
	movl	72(%ebx), %ecx
	addl	$1, %eax
	sall	$5, %ecx
	cmpl	%eax, %ecx
	jg	L11
L9:
	movl	68(%ebx), %ebx
	testl	%ebx, %ebx
	je	L8
	.p2align 4
	.p2align 3
L12:
	leal	16(%ebx), %eax
	leal	144(%ebx), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L14:
	cmpl	%edx, (%eax)
	jne	L13
	movl	$0, (%eax)
L13:
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L14
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L12
	addl	$1, %esi
	cmpl	%esi, _nextmodelid
	jg	L15
L28:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L24:
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL9quicksortPtPfii;	.scl	3;	.type	32;	.endef
__ZL9quicksortPtPfii:
LFB4:
	.cfi_startproc
	subl	$96, %esp
	.cfi_def_cfa_offset 100
	movl	%eax, 4(%esp)
	movl	%ecx, 24(%esp)
	cmpl	100(%esp), %ecx
	jl	L165
	addl	$96, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L165:
	.cfi_restore_state
	movl	%ebx, 80(%esp)
	movl	%esi, 84(%esp)
	movl	%edi, 88(%esp)
	movl	%ebp, 92(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%edx, %ebp
L129:
	movl	24(%esp), %eax
	movl	100(%esp), %esi
	leal	0(,%eax,4), %edx
	movl	%eax, %edi
	leal	0(%ebp,%edx), %ecx
	movl	%edx, 40(%esp)
	leal	(%eax,%eax), %edx
	movl	%ecx, 12(%esp)
	movss	(%ecx), %xmm1
	movl	4(%esp), %ecx
	movl	%edx, 36(%esp)
	addl	%edx, %ecx
	movzwl	(%ecx), %edx
	movl	%ecx, 16(%esp)
	movw	%dx, 20(%esp)
	.p2align 4
	.p2align 3
L31:
	cmpl	%edi, 100(%esp)
	jle	L37
L32:
	comiss	0(%ebp,%edi,4), %xmm1
	jb	L37
	addl	$1, %edi
	cmpl	%edi, 100(%esp)
	jg	L32
	.p2align 4
	.p2align 3
L37:
	leal	0(%ebp,%esi,4), %ebx
	movl	24(%esp), %eax
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L35
	jmp	L33
	.p2align 5
	.p2align 4,,10
	.p2align 3
L39:
	subl	$1, %esi
	subl	$4, %ebx
	movss	0(%ebp,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L33
L35:
	cmpl	%esi, %eax
	jl	L39
L33:
	movl	4(%esp), %eax
	leal	(%eax,%esi,2), %eax
	movl	%eax, 8(%esp)
	cmpl	%esi, %edi
	jl	L166
	movss	(%ebx), %xmm0
	movl	8(%esp), %edi
	movl	%esi, 72(%esp)
	movl	12(%esp), %eax
	movl	16(%esp), %ecx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%edi), %eax
	movw	%ax, (%ecx)
	movzwl	20(%esp), %eax
	movw	%ax, (%edi)
	leal	-1(%esi), %eax
	movl	%eax, 48(%esp)
	cmpl	24(%esp), %eax
	jg	L120
L42:
	movl	72(%esp), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	cmpl	100(%esp), %eax
	jl	L129
	movl	80(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	addl	$96, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore_state
	leal	0(%ebp,%esi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L47
	jmp	L45
	.p2align 5
	.p2align 4,,10
	.p2align 3
L51:
	subl	$1, %esi
	subl	$4, %ebx
	movss	0(%ebp,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L45
L47:
	cmpl	%edi, %esi
	jg	L51
L45:
	movl	4(%esp), %edx
	leal	(%edx,%esi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%esi, %eax
	jl	L167
	movss	(%ebx), %xmm0
	movl	12(%esp), %edi
	movl	%esi, 64(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%edi), %eax
	movw	%ax, (%edx)
	movzwl	28(%esp), %eax
	leal	-1(%esi), %edx
	movw	%ax, (%edi)
	cmpl	24(%esp), %edx
	jg	L168
L54:
	movl	64(%esp), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 48(%esp)
	jle	L42
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 36(%esp)
L120:
	movl	40(%esp), %eax
	movl	24(%esp), %edi
	addl	%ebp, %eax
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movss	(%eax), %xmm1
	movl	4(%esp), %eax
	addl	36(%esp), %eax
	movl	%eax, 20(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 28(%esp)
	movl	48(%esp), %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L43:
	movl	8(%esp), %ecx
	cmpl	%ecx, 48(%esp)
	jle	L49
L44:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L49
	addl	$1, 8(%esp)
	movl	8(%esp), %ecx
	cmpl	%ecx, 48(%esp)
	jg	L44
	jmp	L49
	.p2align 4,,10
	.p2align 3
L167:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%edx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L43
L166:
	leal	0(%ebp,%edi,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	8(%esp), %ebx
	leal	(%ecx,%edi,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L31
L168:
	movl	%edx, 44(%esp)
L119:
	movl	40(%esp), %eax
	movl	24(%esp), %esi
	addl	%ebp, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movss	(%eax), %xmm1
	movl	4(%esp), %eax
	addl	36(%esp), %eax
	movl	%eax, 20(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 28(%esp)
	movl	44(%esp), %eax
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L55:
	movl	8(%esp), %edx
	cmpl	%edx, 44(%esp)
	jle	L61
L56:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L61
	addl	$1, 8(%esp)
	movl	8(%esp), %edx
	cmpl	%edx, 44(%esp)
	jg	L56
	.p2align 4
	.p2align 3
L61:
	leal	0(%ebp,%edi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L59
	jmp	L57
	.p2align 5
	.p2align 4,,10
	.p2align 3
L63:
	subl	$1, %edi
	subl	$4, %ebx
	movss	0(%ebp,%edi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L57
L59:
	cmpl	%esi, %edi
	jg	L63
L57:
	movl	4(%esp), %ecx
	leal	(%ecx,%edi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%eax, %edi
	jg	L169
	movss	(%ebx), %xmm0
	movl	12(%esp), %esi
	movl	%edi, 60(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%esi), %eax
	movw	%ax, (%ecx)
	movzwl	28(%esp), %eax
	leal	-1(%edi), %ecx
	movw	%ax, (%esi)
	cmpl	24(%esp), %ecx
	jg	L170
L66:
	movl	60(%esp), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 44(%esp)
	jle	L54
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 36(%esp)
	jmp	L119
	.p2align 4,,10
	.p2align 3
L169:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%ecx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L55
L170:
	movl	%ecx, 32(%esp)
L118:
	movl	40(%esp), %eax
	movl	24(%esp), %esi
	movl	32(%esp), %edi
	addl	%ebp, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movss	(%eax), %xmm1
	movl	4(%esp), %eax
	addl	36(%esp), %eax
	movl	%eax, 20(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 28(%esp)
	.p2align 4
	.p2align 3
L67:
	movl	8(%esp), %edx
	cmpl	%edx, 32(%esp)
	jle	L73
L68:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L73
	addl	$1, 8(%esp)
	movl	8(%esp), %edx
	cmpl	%edx, 32(%esp)
	jg	L68
	.p2align 4
	.p2align 3
L73:
	leal	0(%ebp,%edi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L71
	jmp	L69
	.p2align 5
	.p2align 4,,10
	.p2align 3
L75:
	subl	$1, %edi
	subl	$4, %ebx
	movss	0(%ebp,%edi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L69
L71:
	cmpl	%esi, %edi
	jg	L75
L69:
	movl	4(%esp), %ecx
	leal	(%ecx,%edi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%edi, %eax
	jl	L171
	movss	(%ebx), %xmm0
	movl	12(%esp), %edx
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%edx), %eax
	movw	%ax, (%ecx)
	movzwl	28(%esp), %eax
	movw	%ax, (%edx)
	leal	-1(%edi), %edx
	cmpl	24(%esp), %edx
	jg	L172
L78:
	leal	1(%edi), %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 32(%esp)
	jle	L66
	leal	0(,%eax,4), %edx
	addl	%eax, %eax
	movl	%edx, 40(%esp)
	movl	%eax, 36(%esp)
	jmp	L118
	.p2align 4,,10
	.p2align 3
L171:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%ecx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L67
L172:
	movl	%edx, 28(%esp)
	movl	%edi, 76(%esp)
L117:
	movl	40(%esp), %eax
	movl	24(%esp), %edi
	movl	28(%esp), %esi
	addl	%ebp, %eax
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movss	(%eax), %xmm1
	movl	4(%esp), %eax
	addl	36(%esp), %eax
	movl	%eax, 20(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 52(%esp)
	.p2align 4
	.p2align 3
L79:
	movl	8(%esp), %ecx
	cmpl	%ecx, 28(%esp)
	jle	L85
L80:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L85
	addl	$1, 8(%esp)
	movl	8(%esp), %ecx
	cmpl	%ecx, 28(%esp)
	jg	L80
	.p2align 4
	.p2align 3
L85:
	leal	0(%ebp,%esi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L83
	jmp	L81
	.p2align 5
	.p2align 4,,10
	.p2align 3
L87:
	subl	$1, %esi
	subl	$4, %ebx
	movss	0(%ebp,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L81
L83:
	cmpl	%edi, %esi
	jg	L87
L81:
	movl	4(%esp), %edx
	leal	(%edx,%esi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%esi, %eax
	jl	L173
	movss	(%ebx), %xmm0
	movl	12(%esp), %ecx
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%ecx), %eax
	movw	%ax, (%edx)
	movzwl	52(%esp), %eax
	movw	%ax, (%ecx)
	leal	-1(%esi), %ecx
	cmpl	24(%esp), %ecx
	jg	L174
	leal	1(%esi), %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 28(%esp)
	jle	L160
L180:
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 36(%esp)
	jmp	L117
	.p2align 4,,10
	.p2align 3
L173:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%edx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L79
L174:
	movl	%ecx, 20(%esp)
	movl	%esi, 68(%esp)
L116:
	movl	40(%esp), %eax
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	addl	%ebp, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movss	(%eax), %xmm1
	movl	4(%esp), %eax
	addl	36(%esp), %eax
	movl	%eax, 52(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 58(%esp)
	.p2align 4
	.p2align 3
L91:
	movl	8(%esp), %ecx
	cmpl	%ecx, 20(%esp)
	jle	L97
L92:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L97
	addl	$1, 8(%esp)
	movl	8(%esp), %ecx
	cmpl	%ecx, 20(%esp)
	jg	L92
	.p2align 4
	.p2align 3
L97:
	leal	0(%ebp,%edi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L95
	jmp	L93
	.p2align 5
	.p2align 4,,10
	.p2align 3
L99:
	subl	$1, %edi
	subl	$4, %ebx
	movss	0(%ebp,%edi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L93
L95:
	cmpl	%esi, %edi
	jg	L99
L93:
	movl	4(%esp), %edx
	leal	(%edx,%edi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%edi, %eax
	jl	L175
	movss	(%ebx), %xmm0
	movl	12(%esp), %edx
	movl	16(%esp), %eax
	movl	52(%esp), %ecx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%edx), %eax
	movw	%ax, (%ecx)
	movzwl	58(%esp), %eax
	movw	%ax, (%edx)
	movl	24(%esp), %eax
	leal	-1(%edi), %edx
	cmpl	%eax, %edx
	jg	L176
	leal	1(%edi), %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 20(%esp)
	jle	L159
L179:
	leal	0(,%eax,4), %ecx
	addl	%eax, %eax
	movl	%ecx, 40(%esp)
	movl	%eax, 36(%esp)
	jmp	L116
	.p2align 4,,10
	.p2align 3
L175:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %edx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%edx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L91
L176:
	movl	%edx, 16(%esp)
	movl	40(%esp), %edx
	movl	%edi, 52(%esp)
	movl	%eax, %edi
	movl	36(%esp), %eax
L115:
	movl	4(%esp), %ecx
	addl	%ebp, %edx
	movl	16(%esp), %esi
	movl	%edi, 8(%esp)
	movl	%edx, 24(%esp)
	movss	(%edx), %xmm1
	addl	%ecx, %eax
	movl	%eax, 36(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 40(%esp)
	.p2align 4
	.p2align 3
L103:
	movl	8(%esp), %edx
	cmpl	%edx, 16(%esp)
	jle	L109
L104:
	movl	8(%esp), %eax
	comiss	0(%ebp,%eax,4), %xmm1
	jb	L109
	addl	$1, 8(%esp)
	movl	8(%esp), %edx
	cmpl	%edx, 16(%esp)
	jg	L104
	.p2align 4
	.p2align 3
L109:
	leal	0(%ebp,%esi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L107
	jmp	L105
	.p2align 5
	.p2align 4,,10
	.p2align 3
L111:
	subl	$1, %esi
	subl	$4, %ebx
	movss	0(%ebp,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L105
L107:
	cmpl	%esi, %edi
	jl	L111
L105:
	movl	4(%esp), %ecx
	leal	(%ecx,%esi,2), %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	cmpl	%esi, %eax
	jl	L177
	movss	(%ebx), %xmm0
	movl	24(%esp), %eax
	movl	12(%esp), %ecx
	movl	36(%esp), %edx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movzwl	(%ecx), %eax
	movw	%ax, (%edx)
	movzwl	40(%esp), %eax
	movw	%ax, (%ecx)
	leal	-1(%esi), %eax
	cmpl	%edi, %eax
	jg	L178
L114:
	leal	1(%esi), %edi
	cmpl	%edi, 16(%esp)
	jle	L158
	leal	0(,%edi,4), %edx
	leal	(%edi,%edi), %eax
	jmp	L115
	.p2align 4,,10
	.p2align 3
L177:
	leal	0(%ebp,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	leal	(%ecx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L103
L158:
	movl	52(%esp), %edi
	leal	1(%edi), %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 20(%esp)
	jg	L179
L159:
	movl	68(%esp), %esi
	leal	1(%esi), %eax
	movl	%eax, 24(%esp)
	cmpl	%eax, 28(%esp)
	jg	L180
L160:
	movl	76(%esp), %edi
	jmp	L78
L178:
	movl	%eax, (%esp)
	movl	4(%esp), %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	call	__ZL9quicksortPtPfii
	jmp	L114
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t;	.scl	3;	.type	32;	.endef
__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t:
LFB7:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	56(%esp), %eax
	cmpl	$0, _r_vertexarrays
	je	L182
	movl	84(%esi), %ecx
	testl	%eax, %eax
	je	L202
	testl	%ecx, %ecx
	jle	L181
	movl	%edi, 44(%esp)
	movl	%ebx, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	leal	-2(%ecx,%ecx), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L186:
	movl	204(%eax), %ecx
	movl	108(%esi), %edi
	addl	$6, %edx
	movzwl	(%ecx,%ebx), %ecx
	subl	$2, %ebx
	leal	(%ecx,%ecx,2), %ecx
	movl	(%edi,%ecx,4), %edi
	movw	%di, -6(%edx)
	movl	108(%esi), %edi
	movl	4(%edi,%ecx,4), %edi
	movw	%di, -4(%edx)
	movl	108(%esi), %edi
	movl	8(%edi,%ecx,4), %ecx
	movw	%cx, -2(%edx)
	cmpl	$-2, %ebx
	jne	L186
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %edi
	.cfi_restore 7
L181:
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L182:
	.cfi_restore_state
	movl	%ebx, 36(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$4, (%esp)
	.cfi_offset 3, -20
	call	*_glad_glBegin
	.cfi_def_cfa_offset 52
	movl	84(%esi), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	subl	$1, %ebx
	js	L187
	movl	%edi, 44(%esp)
	movl	12(%esp), %eax
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L194:
	movzwl	%bx, %edx
	testl	%eax, %eax
	je	L189
	movl	204(%eax), %edx
	movzwl	(%edx,%ebx,2), %edx
L189:
	leal	(%edx,%edx,2), %ecx
	movl	%ebx, 20(%esp)
	xorl	%edi, %edi
	movl	%ecx, 12(%esp)
	movl	%eax, 24(%esp)
L193:
	movl	12(%esp), %ecx
	leal	0(,%edi,4), %eax
	addl	108(%esi), %eax
	movl	(%eax,%ecx,4), %ebp
	leal	0(,%ebp,8), %edx
	cmpl	$33984, 16(%esp)
	jg	L203
	addl	116(%esi), %edx
	movss	4(%edx), %xmm0
	movss	%xmm0, 4(%esp)
	movss	(%edx), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glTexCoord2f
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
L192:
	movl	__ZL8vertlist, %eax
	leal	0(%ebp,%ebp,2), %edx
	addl	$1, %edi
	leal	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertex3fv
	.cfi_def_cfa_offset 52
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	cmpl	$3, %edi
	jne	L193
	movl	20(%esp), %ebx
	movl	24(%esp), %eax
	subl	$1, %ebx
	jnb	L194
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L187:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	*_glad_glEnd
	.p2align 4,,10
	.p2align 3
L203:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, 32(%esp)
	movl	16(%esp), %ebp
	movl	%edx, %ebx
	movl	%edi, 28(%esp)
	movl	$33984, %edi
	.p2align 4
	.p2align 3
L191:
	movl	116(%esi), %edx
	addl	%ebx, %edx
	movss	4(%edx), %xmm0
	movss	%xmm0, 8(%esp)
	movss	(%edx), %xmm0
	movl	%edi, (%esp)
	addl	$1, %edi
	movss	%xmm0, 4(%esp)
	call	*_glad_glMultiTexCoord2f
	.cfi_def_cfa_offset 44
	subl	$12, %esp
	.cfi_def_cfa_offset 56
	cmpl	%edi, %ebp
	jge	L191
	movl	28(%esp), %edi
	movl	32(%esp), %ebp
	jmp	L192
L202:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	testl	%ecx, %ecx
	jle	L181
	leal	-3(%ecx,%ecx,2), %eax
	sall	$2, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L185:
	movl	108(%esi), %ecx
	addl	$6, %edx
	movl	(%ecx,%eax), %ecx
	movw	%cx, -6(%edx)
	movl	108(%esi), %ecx
	movl	4(%ecx,%eax), %ecx
	movw	%cx, -4(%edx)
	movl	108(%esi), %ecx
	movl	8(%ecx,%eax), %ecx
	subl	$12, %eax
	movw	%cx, -2(%edx)
	cmpl	$-12, %eax
	jne	L185
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__ZN6loguru10file_flushEPv
	.def	__ZN6loguru10file_flushEPv;	.scl	2;	.type	32;	.endef
__ZN6loguru10file_flushEPv:
LFB8:
	.cfi_startproc
	jmp	_fflush
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC0:
	.ascii "%s%s%s%s\12\0"
	.text
	.p2align 4
	.globl	__ZN6loguru8file_logEPvRKNS_7MessageE
	.def	__ZN6loguru8file_logEPvRKNS_7MessageE;	.scl	2;	.type	32;	.endef
__ZN6loguru8file_logEPvRKNS_7MessageE:
LFB9:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	36(%esp), %eax
	movl	32(%esp), %ebx
	movl	24(%eax), %edx
	movl	%edx, 20(%esp)
	movl	20(%eax), %edx
	movl	%edx, 16(%esp)
	movl	16(%eax), %edx
	movl	%edx, 12(%esp)
	movl	12(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC0, 4(%esp)
	call	_fprintf
	movl	%ebx, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_fflush
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__ZN6loguru10file_closeEPv
	.def	__ZN6loguru10file_closeEPv;	.scl	2;	.type	32;	.endef
__ZN6loguru10file_closeEPv:
LFB10:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L207
	jmp	_fclose
	.p2align 4,,10
	.p2align 3
L207:
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0
	.def	___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0:
LFB11:
	.cfi_startproc
	movl	__ZN6loguruL16s_argv0_filenameE.lto_priv.0, %eax
	cmpl	$__ZN6loguruL16s_argv0_filenameE.lto_priv.0+8, %eax
	je	L209
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L209:
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	___tcf_ZN6loguruL11s_argumentsE.lto_priv.0
	.def	___tcf_ZN6loguruL11s_argumentsE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL11s_argumentsE.lto_priv.0:
LFB17:
	.cfi_startproc
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	cmpl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, %eax
	je	L211
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L211:
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	___tcf_ZN6loguruL11s_callbacksE.lto_priv.0
	.def	___tcf_ZN6loguruL11s_callbacksE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL11s_callbacksE.lto_priv.0:
LFB18:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %ebx
	cmpl	%ebx, %esi
	je	L214
	.p2align 4
	.p2align 3
L216:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L215
	call	_mi_free
L215:
	addl	$48, %ebx
	cmpl	%ebx, %esi
	jne	L216
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %ebx
L214:
	testl	%ebx, %ebx
	je	L213
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L213:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0
	.def	___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0:
LFB24:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0+4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0, %ebx
	cmpl	%ebx, %esi
	je	L221
	.p2align 4
	.p2align 3
L224:
	movl	24(%ebx), %eax
	leal	32(%ebx), %edx
	cmpl	%edx, %eax
	je	L222
	call	_mi_free
L222:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L223
	call	_mi_free
L223:
	addl	$48, %ebx
	cmpl	%ebx, %esi
	jne	L224
	movl	__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0, %ebx
L221:
	testl	%ebx, %ebx
	je	L220
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L220:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE24:
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4
	.def	__ZN6loguru5flushEv;	.scl	3;	.type	32;	.endef
__ZN6loguru5flushEv:
LFB28:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$__ZN6loguruL7s_mutexE, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L237
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	%eax, (%esp)
	call	_fflush
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %ebx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %esi
	cmpl	%ebx, %esi
	je	L230
	.p2align 4
	.p2align 3
L232:
	movl	40(%ebx), %eax
	testl	%eax, %eax
	je	L231
	movl	28(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
L231:
	addl	$48, %ebx
	cmpl	%esi, %ebx
	jne	L232
L230:
	movl	$__ZN6loguruL7s_mutexE, (%esp)
	movb	$0, __ZN6loguruL16s_needs_flushingE
	call	_pthread_mutex_unlock
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN6loguru5flushEv.cold;	.scl	3;	.type	32;	.endef
__ZN6loguru5flushEv.cold:
LFSB28:
L237:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE28:
	.text
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.p2align 4
	.globl	__ZN6loguruL9on_atexitEv.lto_priv.0
	.def	__ZN6loguruL9on_atexitEv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN6loguruL9on_atexitEv.lto_priv.0:
LFB30:
	.cfi_startproc
	jmp	__ZN6loguru5flushEv
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__ZL7md2freeP10md2model_t.part.0;	.scl	3;	.type	32;	.endef
__ZL7md2freeP10md2model_t.part.0:
LFB31:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	24(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	104(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	100(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	108(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	112(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	92(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	96(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev:
LFB32:
	.cfi_startproc
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEEE+8, (%ecx)
	jmp	__ZNSt6thread6_StateD2Ev
	.cfi_endproc
LFE32:
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED1Ev;	.scl	3;	.type	32;	.endef
	.set	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED1Ev,__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED0Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED0Ev:
LFB33:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEEE+8, (%ecx)
	call	__ZNSt6thread6_StateD2Ev
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_mi_free
	.cfi_endproc
LFE33:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEE6_M_runEv;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEE6_M_runEv:
LFB34:
	.cfi_startproc
	.p2align 4
	.p2align 3
L246:
	call	__ZN6loguru5flushEv
	jmp	L246
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
LC2:
	.ascii "FATAL\0"
LC3:
	.ascii "INFO\0"
LC4:
	.ascii "WARN\0"
LC5:
	.ascii "ERROR\0"
LC6:
	.ascii "%s\0"
LC7:
	.ascii "%*X\0"
LC8:
	.ascii "%4d\0"
LC9:
	.ascii "%04d-%02d-%02d \0"
LC10:
	.ascii "%02d:%02d:%02d.%03lld \0"
LC12:
	.ascii "%7.4fs \0"
LC13:
	.ascii "[%-*s]\0"
LC14:
	.ascii "%*s:%-4u \0"
LC15:
	.ascii "%4s\0"
LC16:
	.ascii "| \0"
	.text
	.p2align 4
	.def	__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0;	.scl	3;	.type	32;	.endef
__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%edx, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$136, %esp
	.cfi_offset 3, -20
	movl	%eax, 64(%esp)
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	$1000000000, 8(%esp)
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%eax, 84(%esp)
	leal	84(%esp), %eax
	movl	%eax, 4(%esp)
	leal	100(%esp), %eax
	movl	%eax, (%esp)
	call	__localtime32_s
	call	__ZNSt6chrono3_V212steady_clock3nowEv
	movl	$0, 75(%esp)
	movl	%eax, 40(%esp)
	movl	__ZN6loguruL12s_start_timeE.lto_priv.0, %eax
	movl	%edx, 44(%esp)
	movl	__ZN6loguruL12s_start_timeE.lto_priv.0+4, %edx
	movl	%eax, 56(%esp)
	leal	75(%esp), %eax
	movl	$__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0, 12(%esp)
	movl	$LC6, 8(%esp)
	movl	$9, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 60(%esp)
	movl	$0, 79(%esp)
	movb	$0, 83(%esp)
	call	_snprintf
	cmpb	$0, 75(%esp)
	je	L294
L248:
	movzbl	(%edi), %eax
	movl	%edi, %ebx
	testb	%al, %al
	jne	L251
	jmp	L249
	.p2align 4,,10
	.p2align 3
L250:
	movzbl	(%edi), %eax
	testb	%al, %al
	je	L249
L251:
	addl	$1, %edi
	cmpb	$92, %al
	je	L273
	cmpb	$47, %al
	jne	L250
L273:
	movzbl	(%edi), %eax
	movl	%edi, %ebx
	testb	%al, %al
	jne	L251
L249:
	movl	__ZN6loguruL28s_verbosity_to_name_callbackE.lto_priv.0, %eax
	testl	%eax, %eax
	je	L252
	movl	%esi, (%esp)
	call	*%eax
	testl	%eax, %eax
	je	L252
L253:
	movl	%eax, 12(%esp)
	movl	$LC6, 8(%esp)
L290:
	leal	68(%esp), %eax
	movl	$6, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 52(%esp)
	call	_snprintf
	cmpb	$0, __ZN6loguru15g_preamble_dateE
	jne	L255
L292:
	movl	64(%esp), %edi
	movl	$73, %esi
	xorl	%ecx, %ecx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L259
L260:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%ecx, 48(%esp)
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	$LC10, 8(%esp)
	movl	%eax, 24(%esp)
	movl	100(%esp), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 20(%esp)
	movl	104(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 16(%esp)
	movl	108(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
	call	_snprintf
	movl	48(%esp), %ecx
	testl	%eax, %eax
	jle	L259
	addl	%eax, %ecx
L261:
	cmpl	$72, %ecx
	jbe	L295
L247:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L252:
	.cfi_restore_state
	cmpl	$-2, %esi
	jge	L296
	movl	$LC2, %eax
	jmp	L253
L295:
	movl	64(%esp), %eax
	movl	$73, %esi
	subl	%ecx, %esi
	leal	(%eax,%ecx), %edi
	.p2align 4
	.p2align 3
L259:
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%ecx, 32(%esp)
	subl	56(%esp), %eax
	sbbl	60(%esp), %edx
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	$LC12, 8(%esp)
	movl	%eax, 56(%esp)
	movl	%edx, 60(%esp)
	fildq	56(%esp)
	fdivs	LC11
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	fstpl	12(%esp)
	call	_snprintf
	movl	32(%esp), %ecx
	testl	%eax, %eax
	jle	L297
	addl	%eax, %ecx
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	je	L267
	cmpl	$72, %ecx
	ja	L247
	movl	64(%esp), %eax
	movl	$73, %esi
	subl	%ecx, %esi
	leal	(%eax,%ecx), %edi
L264:
	leal	75(%esp), %eax
	movl	$8, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$LC13, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 56(%esp)
	call	_snprintf
	movl	56(%esp), %ecx
	testl	%eax, %eax
	jle	L293
	addl	%eax, %ecx
L267:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	je	L269
	cmpl	$72, %ecx
	ja	L247
	movl	64(%esp), %eax
	movl	$73, %esi
	subl	%ecx, %esi
	leal	(%eax,%ecx), %edi
L265:
	leal	84(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$LC6, 8(%esp)
	movl	$13, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 56(%esp)
	call	_snprintf
	movl	8(%ebp), %eax
	movl	$12, 12(%esp)
	movl	$LC14, 8(%esp)
	movl	%eax, 20(%esp)
	leal	84(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	movl	56(%esp), %ecx
	testl	%eax, %eax
	jle	L266
	addl	%eax, %ecx
L269:
	cmpl	$72, %ecx
	ja	L247
	movl	64(%esp), %eax
	movl	$73, %esi
	subl	%ecx, %esi
	leal	(%eax,%ecx), %edi
L266:
	movl	52(%esp), %eax
	movl	$LC15, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 56(%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L271
	addl	56(%esp), %eax
	cmpl	$72, %eax
	ja	L247
	movl	64(%esp), %edi
	movl	$73, %esi
	subl	%eax, %esi
	addl	%eax, %edi
L271:
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	movl	$LC16, 8(%esp)
	call	_snprintf
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L296:
	.cfi_restore_state
	je	L275
	cmpl	$-1, %esi
	je	L276
	movl	$LC3, %eax
	testl	%esi, %esi
	je	L253
	andl	$8191, %esi
	movl	$LC8, 8(%esp)
	movl	%esi, 12(%esp)
	jmp	L290
	.p2align 4,,10
	.p2align 3
L255:
	movl	112(%esp), %eax
	movl	$LC9, 8(%esp)
	movl	$73, 4(%esp)
	movl	%eax, 20(%esp)
	movl	116(%esp), %eax
	addl	$1, %eax
	movl	%eax, 16(%esp)
	movl	120(%esp), %eax
	addl	$1900, %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L292
	movl	%eax, %ecx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L261
	cmpl	$72, %eax
	ja	L247
	movl	$73, %esi
	subl	%eax, %esi
	movl	64(%esp), %eax
	leal	(%eax,%ecx), %edi
	jmp	L260
	.p2align 4,,10
	.p2align 3
L294:
	call	_pthread_self
	movl	$-955291385, 8(%esp)
	movl	%eax, 84(%esp)
	leal	84(%esp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt11_Hash_bytesPKvjj
	movl	$8, 12(%esp)
	movl	%eax, 16(%esp)
	leal	75(%esp), %eax
	movl	$LC7, 8(%esp)
	movl	$9, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	jmp	L248
	.p2align 4,,10
	.p2align 3
L297:
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	jne	L264
L293:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	jne	L265
	jmp	L266
	.p2align 4,,10
	.p2align 3
L275:
	movl	$LC5, %eax
	jmp	L253
L276:
	movl	$LC4, %eax
	jmp	L253
	.cfi_endproc
LFE40:
	.p2align 4
	.def	__ZL7md2loadiPKc;	.scl	3;	.type	32;	.endef
__ZL7md2loadiPKc:
LFB47:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-8, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$376, %esp
	movl	%edx, -344(%ebp)
	movl	$116, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L299
	movl	$0, 100(%eax)
	movl	%eax, %esi
	movl	$0, 104(%eax)
	movl	$0, 108(%eax)
	movl	$0, 112(%eax)
	xorl	%eax, %eax
L300:
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	movl	$0, 16(%esi,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L300
	movl	$2, (%esi)
	movl	$68, %ecx
	leal	-340(%ebp), %edx
	movl	%ebx, %eax
	movl	$0x3c23d70a, 8(%esi)
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_g_sm_heap, %ecx
	cmpl	$68, %eax
	jne	L302
	cmpl	$844121161, -340(%ebp)
	jne	L302
	cmpl	$8, -336(%ebp)
	jne	L302
	movl	-320(%ebp), %eax
	movl	$1, %edx
	movss	-316(%ebp), %xmm0
	movl	%edx, %edi
	testl	%eax, %eax
	movl	%eax, 72(%esi)
	cmovne	%eax, %edi
	movl	-324(%ebp), %eax
	movl	%edi, -352(%ebp)
	movl	-304(%ebp), %edi
	movl	%eax, 88(%esi)
	testl	%edi, %edi
	cmovne	%edi, %edx
	movl	-300(%ebp), %edi
	movl	%edi, 32(%esi)
	imull	%eax, %edi
	movss	-304(%ebp), %xmm3
	movl	%edx, -348(%ebp)
	unpcklps	%xmm3, %xmm0
	movlps	%xmm0, 80(%esi)
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L394
	movl	-348(%ebp), %edi
	movl	%eax, 96(%esi)
	sall	$2, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L394
	movl	%eax, 92(%esi)
	movl	-308(%ebp), %eax
	leal	(%eax,%eax,2), %eax
	leal	0(,%eax,4), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L394
	movl	%eax, 112(%esi)
	movl	-312(%ebp), %eax
	leal	0(,%eax,4), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L394
	movl	%eax, 108(%esi)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-284(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	32(%esi), %ecx
	movl	96(%esi), %edx
	movl	%ebx, %eax
	imull	88(%esi), %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movl	32(%esi), %eax
	imull	88(%esi), %eax
	cmpl	%edx, %eax
	jne	L403
	movl	84(%esi), %eax
	testl	%eax, %eax
	jle	L317
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-280(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	84(%esi), %eax
	movl	92(%esi), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	0(,%eax,4), %ecx
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movl	84(%esi), %eax
	sall	$2, %eax
	cmpl	%edx, %eax
	jne	L403
L317:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-288(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	-308(%ebp), %eax
	movl	112(%esi), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	(%eax,%eax,2), %ecx
	movl	%ebx, %eax
	sall	$2, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movl	-308(%ebp), %eax
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	cmpl	%edx, %eax
	jne	L403
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-292(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	-312(%ebp), %eax
	movl	108(%esi), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	0(,%eax,4), %ecx
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movl	-312(%ebp), %eax
	sall	$2, %eax
	cmpl	%edx, %eax
	jne	L403
	movl	-344(%ebp), %eax
	leal	-272(%ebp), %edi
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%edi, (%esp)
	call	_strlen
	subl	$1, %eax
	testl	%eax, %eax
	jg	L323
	jmp	L320
	.p2align 4,,10
	.p2align 3
L404:
	cmpb	$92, %dl
	je	L321
	subl	$1, %eax
	je	L320
L323:
	movzbl	(%edi,%eax), %edx
	cmpb	$47, %dl
	jne	L404
L321:
	addl	$1, %eax
L320:
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movb	$0, -272(%ebp,%eax)
	addl	$1, %eax
	movl	%eax, -344(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L355
	movl	%eax, 100(%esi)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-352(%ebp), %edi
	sall	$6, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L394
	movl	72(%esi), %edi
	movl	%eax, 104(%esi)
	testl	%edi, %edi
	jle	L328
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	72(%esi), %ecx
	movl	104(%esi), %edx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	sall	$6, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movl	72(%esi), %eax
	sall	$6, %eax
	cmpl	%edx, %eax
	jne	L403
L328:
	movl	-352(%ebp), %ebx
	sall	$7, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L329
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL13maxmodelverts, %eax
	movl	80(%esi), %edx
	movl	%edi, 24(%esi)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	-308(%ebp), %edx
	movl	%eax, __ZL13maxmodelverts
	movl	__ZL12maxmodeltris, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, __ZL12maxmodeltris
	movl	$232, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L405
	movl	$0, 216(%eax)
	leal	4(%eax), %eax
	xorl	%edx, %edx
	movl	$0, 216(%eax)
	movl	$0, 220(%eax)
	movl	$0, 224(%eax)
L332:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$224, %edx
	jb	L332
	movl	$3, (%edi)
	movss	8(%esi), %xmm0
	movl	$860898377, %eax
	movl	$15, %edx
	movl	%edx, 84(%edi)
	movl	%eax, 80(%edi)
	movss	%xmm0, 8(%edi)
	movl	32(%esi), %eax
	movl	$1, 164(%edi)
	imull	$56, %eax, %edx
	movl	%eax, 156(%edi)
	movl	%eax, 32(%edi)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -344(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-344(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L406
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, 188(%edi)
	imull	$6, 32(%esi), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L337
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -344(%ebp)
	call	_memset
	movl	-344(%ebp), %edx
	movl	%edx, 200(%edi)
	movl	32(%esi), %ebx
	testl	%ebx, %ebx
	jle	L339
	movl	%edi, %edx
	movl	%esi, %ecx
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L338:
	movl	88(%ecx), %ebx
	movl	%ecx, -348(%ebp)
	imull	%edi, %ebx
	addl	96(%ecx), %ebx
	leal	24(%ebx), %eax
	movl	%eax, 4(%esp)
	imull	$56, %edi, %eax
	addl	188(%edx), %eax
	addl	$1, %edi
	addl	$40, %eax
	movl	%edx, -344(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-344(%ebp), %edx
	movl	(%ebx), %ecx
	movl	200(%edx), %eax
	movl	%ecx, (%eax,%esi)
	movl	4(%ebx), %ecx
	movl	%ecx, 4(%eax,%esi)
	movl	8(%ebx), %ecx
	movl	%ecx, 8(%eax,%esi)
	movl	12(%ebx), %ecx
	movl	200(%edx), %eax
	movl	%ecx, 12(%eax,%esi)
	movl	16(%ebx), %ecx
	movl	%ecx, 16(%eax,%esi)
	movl	-348(%ebp), %ecx
	movl	20(%ebx), %ebx
	movl	%ebx, 20(%eax,%esi)
	addl	$24, %esi
	cmpl	%edi, 32(%ecx)
	jg	L338
	movl	%edx, %edi
	movl	%ecx, %esi
L339:
	movl	$0, 192(%edi)
	movl	$128, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L329
	movl	$0, 112(%eax)
	movl	$0, 116(%eax)
	movl	$0, 120(%eax)
	movl	$0, 124(%eax)
	xorl	%eax, %eax
L340:
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	movl	$0, 16(%ebx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L340
	movl	%ebx, 196(%edi)
	movl	$860898377, (%ebx)
	movl	$0, 68(%ebx)
	movl	32(%esi), %eax
	movl	$0, 76(%ebx)
	movl	%eax, 72(%ebx)
	movl	-308(%ebp), %eax
	movl	$1835889988, 4(%ebx)
	leal	(%eax,%eax,2), %edx
	movl	%eax, 84(%ebx)
	movl	__ZL13maxmodelverts, %eax
	movl	$1293970799, 20(%ebx)
	cmpl	%edx, %eax
	movl	$1970479225, 8(%ebx)
	cmovl	%edx, %eax
	movl	$1667327602, 12(%ebx)
	movl	$1919295589, 16(%ebx)
	movl	%eax, __ZL13maxmodelverts
	movl	$3294285, 23(%ebx)
	movl	-308(%ebp), %eax
	movl	%edx, 80(%ebx)
	leal	(%eax,%eax,2), %eax
	movl	$0, 112(%ebx)
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -344(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L337
	movl	-344(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -344(%ebp)
	call	_memset
	movl	80(%ebx), %eax
	movl	-344(%ebp), %ecx
	sall	$3, %eax
	movl	%ecx, 108(%ebx)
	movl	%eax, -344(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L342
	movl	-344(%ebp), %eax
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -344(%ebp)
	call	_memset
	movl	-344(%ebp), %edx
	movl	80(%ebx), %eax
	movl	%edx, 116(%ebx)
	imull	32(%esi), %eax
	sall	$3, %eax
	movl	%eax, -344(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L342
	movl	-344(%ebp), %eax
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -344(%ebp)
	call	_memset
	movl	-344(%ebp), %edx
	movl	-308(%ebp), %ecx
	movss	LC21, %xmm1
	movl	%edx, 120(%ebx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jle	L345
	movl	%edi, -376(%ebp)
	.p2align 4
	.p2align 3
L344:
	leal	(%edx,%edx,2), %eax
	movl	%edx, -372(%ebp)
	xorl	%ecx, %ecx
	movl	%eax, -368(%ebp)
	movl	%eax, %edi
	sall	$2, %eax
	movl	%eax, -348(%ebp)
L348:
	movl	-348(%ebp), %edx
	leal	0(,%ecx,4), %eax
	addl	108(%ebx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movl	%edi, (%eax,%edx)
	leal	(%ecx,%ecx), %eax
	movl	%eax, -352(%ebp)
	addl	112(%esi), %eax
	movzwl	6(%eax,%edx), %edx
	movl	108(%esi), %eax
	cvtsi2ssl	-332(%ebp), %xmm2
	movswl	(%eax,%edx,4), %eax
	movl	116(%ebx), %edx
	cvtsi2ssl	%eax, %xmm0
	movl	-352(%ebp), %eax
	divss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	movss	%xmm0, (%edx,%edi,8)
	movl	-348(%ebp), %edx
	addl	112(%esi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-328(%ebp), %xmm2
	movzwl	6(%eax,%edx), %edx
	movl	108(%esi), %eax
	movswl	2(%eax,%edx,4), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	116(%ebx), %eax
	divss	%xmm2, %xmm0
	movss	%xmm0, 4(%eax,%edi,8)
	movl	32(%esi), %edx
	testl	%edx, %edx
	jle	L346
	movl	-368(%ebp), %eax
	movl	%ecx, -360(%ebp)
	xorl	%edx, %edx
	movl	%edi, -364(%ebp)
	addl	%ecx, %eax
	movl	%ebx, -344(%ebp)
	movl	%eax, -356(%ebp)
	.p2align 4
	.p2align 3
L347:
	movl	-344(%ebp), %ebx
	movl	%edx, %ecx
	movl	88(%esi), %eax
	xorps	%xmm0, %xmm0
	movl	-352(%ebp), %edi
	addl	112(%esi), %edi
	imull	80(%ebx), %ecx
	movl	-348(%ebp), %ebx
	imull	%edx, %eax
	addl	96(%esi), %eax
	addl	-356(%ebp), %ecx
	movzwl	(%edi,%ebx), %edi
	movl	-344(%ebp), %ebx
	movzbl	40(%eax,%edi,4), %edi
	movl	120(%ebx), %ebx
	cvtsi2ssl	%edi, %xmm0
	mulss	(%eax), %xmm0
	addss	12(%eax), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edi
	xorps	%xmm0, %xmm0
	movw	%di, (%ebx,%ecx,8)
	movl	-344(%ebp), %ebx
	movl	%edx, %ecx
	movl	-352(%ebp), %edi
	addl	112(%esi), %edi
	imull	80(%ebx), %ecx
	movl	-348(%ebp), %ebx
	addl	-356(%ebp), %ecx
	movzwl	(%edi,%ebx), %edi
	movl	-344(%ebp), %ebx
	movzbl	41(%eax,%edi,4), %edi
	movl	120(%ebx), %ebx
	cvtsi2ssl	%edi, %xmm0
	mulss	4(%eax), %xmm0
	addss	16(%eax), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %edi
	xorps	%xmm0, %xmm0
	movw	%di, 2(%ebx,%ecx,8)
	movl	-344(%ebp), %ebx
	movl	%edx, %ecx
	addl	$1, %edx
	movl	-352(%ebp), %edi
	imull	80(%ebx), %ecx
	addl	-356(%ebp), %ecx
	addl	112(%esi), %edi
	movl	-348(%ebp), %ebx
	movzwl	(%edi,%ebx), %edi
	movl	-344(%ebp), %ebx
	movzbl	42(%eax,%edi,4), %edi
	movl	120(%ebx), %ebx
	cvtsi2ssl	%edi, %xmm0
	mulss	8(%eax), %xmm0
	addss	20(%eax), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	movw	%ax, 4(%ebx,%ecx,8)
	cmpl	%edx, 32(%esi)
	jg	L347
	movl	-360(%ebp), %ecx
	movl	-364(%ebp), %edi
	movl	-344(%ebp), %ebx
L346:
	addl	$1, %ecx
	addl	$1, %edi
	cmpl	$3, %ecx
	jne	L348
	movl	-372(%ebp), %edx
	addl	$1, %edx
	cmpl	%edx, -308(%ebp)
	jg	L344
	movl	-376(%ebp), %edi
L345:
	movl	$160, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L349
	movl	$0, 144(%eax)
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
	xorl	%eax, %eax
L350:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$144, %eax
	jb	L350
	movl	72(%esi), %eax
	testl	%eax, %eax
	jle	L353
	movl	100(%esi), %eax
	movl	%edx, -348(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -344(%ebp)
	movl	104(%esi), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	-344(%ebp), %edx
	leal	1(%edx,%eax), %eax
	movl	%eax, -344(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L355
	movl	-348(%ebp), %edx
	movl	%eax, 12(%edx)
	movl	100(%esi), %ecx
	movl	%edx, -344(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	104(%esi), %eax
	movl	%eax, 4(%esp)
	movl	-344(%ebp), %edx
	movl	12(%edx), %eax
	movl	%eax, (%esp)
	call	_strcat
	movl	-344(%ebp), %edx
L353:
	movl	%edx, 68(%edi)
	movl	84(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -344(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L355
	movl	%eax, 204(%edi)
	movl	84(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	leal	(%eax,%eax), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -344(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-344(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	je	L407
	movl	%eax, 208(%edi)
	movl	84(%ebx), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L408
	movl	%eax, 212(%edi)
	movl	%esi, %eax
	movl	$0, 216(%edi)
	call	__ZL7md2freeP10md2model_t.part.0
	jmp	L298
	.p2align 4,,10
	.p2align 3
L302:
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L305:
	xorl	%edi, %edi
L298:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L394:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z13handle_memerri
L403:
	movl	%esi, %eax
	call	__ZL7md2freeP10md2model_t.part.0
	jmp	L305
L299:
	movl	$116, %eax
	call	__Z13handle_memerri
L355:
	movl	-344(%ebp), %eax
	call	__Z13handle_memerri
L329:
	movl	$128, %eax
	call	__Z13handle_memerri
L337:
	movl	$12, %eax
	call	__Z13handle_memerri
L342:
	movl	$8, %eax
	call	__Z13handle_memerri
L406:
	movl	$56, %eax
	call	__Z13handle_memerri
L405:
	movl	$232, %eax
	call	__Z13handle_memerri
L349:
	movl	$160, %eax
	call	__Z13handle_memerri
L408:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L407:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE47:
	.p2align 4
	.def	__ZL15framename2indexP9mdmodel_tPKc;	.scl	3;	.type	32;	.endef
__ZL15framename2indexP9mdmodel_tPKc:
LFB51:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebx, 12(%esp)
	movl	(%eax), %edx
	cmpl	$2, %edx
	.cfi_offset 3, -20
	je	L410
	cmpl	$3, %edx
	jne	L414
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	32(%eax), %ebp
	testl	%ebp, %ebp
	jle	L430
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	188(%eax), %esi
	xorl	%ebx, %ebx
	addl	$40, %esi
	jmp	L416
	.p2align 4,,10
	.p2align 3
L431:
	addl	$1, %ebx
	addl	$56, %esi
	cmpl	%ebp, %ebx
	je	L428
L416:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L431
L428:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L433:
	movl	%ebx, %eax
	movl	20(%esp), %edi
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L430:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	24(%esp), %ebp
	.cfi_restore 5
L414:
	xorl	%ebx, %ebx
	movl	20(%esp), %edi
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L410:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	32(%eax), %esi
	testl	%esi, %esi
	jle	L426
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	88(%eax), %ecx
	xorl	%ebx, %ebx
	movl	96(%eax), %edx
	movl	%ecx, 8(%esp)
	leal	24(%edx), %ebp
	jmp	L415
	.p2align 4,,10
	.p2align 3
L432:
	addl	$1, %ebx
	addl	8(%esp), %ebp
	cmpl	%esi, %ebx
	je	L428
L415:
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L432
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L433
L426:
	.cfi_offset 6, -16
	movl	16(%esp), %esi
	.cfi_restore 6
	jmp	L414
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_compare_usermaphacks
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
_compare_usermaphacks:
LFB52:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	20(%esp), %eax
	movl	$16, 8(%esp)
	addl	$12, %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	_memcmp
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_wildmatch
	.def	_wildmatch;	.scl	2;	.type	32;	.endef
_wildmatch:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movzbl	(%edx), %esi
	movl	%edx, (%esp)
	movl	%esi, %eax
	movzbl	%al, %ebp
L437:
	movzbl	(%ecx), %edx
	movl	%edx, %eax
	testl	%edx, %edx
	je	L440
L438:
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%ebp)
	je	L456
	cmpl	$63, %ebp
	je	L456
L439:
	cmpl	$42, %ebp
	jne	L445
	.p2align 5
	.p2align 4
	.p2align 3
L446:
	addl	$1, (%esp)
	movl	(%esp), %edi
	movzbl	(%edi), %esi
	movl	%esi, %ebx
	cmpb	$42, %bl
	je	L446
	testb	%bl, %bl
	je	L444
	movzbl	%bl, %ebp
	movzbl	%al, %edx
	movzbl	_toupperlookup(%ebp), %edi
	testb	%al, %al
	jne	L451
	jmp	L471
	.p2align 5
	.p2align 4,,10
	.p2align 3
L453:
	addl	$1, %ecx
	testb	%al, %al
	je	L471
	movzbl	%al, %edx
L451:
	movzbl	1(%ecx), %eax
	movl	%edi, %ebx
	cmpb	%bl, _toupperlookup(%edx)
	jne	L453
	testb	%al, %al
	je	L437
	movzbl	%al, %edx
	movl	(%esp), %eax
	movzbl	1(%eax), %eax
	movzbl	_toupperlookup(%eax), %eax
	cmpb	%al, _toupperlookup(%edx)
	je	L437
	addl	$1, %ecx
	jmp	L451
	.p2align 4,,10
	.p2align 3
L471:
	movzbl	_toupperlookup, %eax
	movl	%edi, %edx
	cmpb	%al, %dl
	je	L455
L445:
	xorl	%eax, %eax
L436:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L440:
	.cfi_restore_state
	movl	%esi, %eax
	testb	%al, %al
	je	L444
	xorl	%eax, %eax
	jmp	L439
	.p2align 4,,10
	.p2align 3
L456:
	movl	(%esp), %eax
	addl	$1, %ecx
	movzbl	1(%eax), %esi
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	movzbl	%al, %ebp
	jmp	L437
L444:
	movl	$1, %eax
	jmp	L436
L455:
	movzbl	(%ecx), %edx
	movl	%edx, %eax
	testl	%edx, %edx
	jne	L438
	xorl	%eax, %eax
	jmp	L439
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__ZL14kzcheckhashsizi.lto_priv.0
	.def	__ZL14kzcheckhashsizi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14kzcheckhashsizi.lto_priv.0:
LFB54:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	testl	%eax, %eax
	je	L491
	movl	__ZL9kzhashsiz, %edx
	addl	__ZL9kzhashpos.lto_priv.0, %ebx
L478:
	cmpl	%edx, %ebx
	jg	L479
L484:
	movl	$1, %eax
L475:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 3
	.p2align 4,,10
	.p2align 3
L479:
	.cfi_restore_state
	addl	%edx, %edx
	cmpl	%ebx, %edx
	jl	L479
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L486
	testl	%edx, %edx
	jne	L481
L486:
	movl	%eax, __ZL9kzhashbuf.lto_priv.0
	testl	%eax, %eax
	je	L492
	movl	%edx, __ZL9kzhashsiz
	jmp	L484
	.p2align 4,,10
	.p2align 3
L491:
	movl	$1024, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL9kzhashead.lto_priv.0, (%esp)
	call	_memset
	movl	$8192, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L477
	movl	%eax, __ZL9kzhashbuf.lto_priv.0
	movl	$8192, %edx
	movl	$0, __ZL9kzhashpos.lto_priv.0
	movl	$-1, __ZL10kzlastfnam.lto_priv.0
	movl	$8192, __ZL9kzhashsiz
	movl	$-1, __ZL12kzdirnamhead.lto_priv.0
	jmp	L478
	.p2align 4,,10
	.p2align 3
L492:
	xorl	%eax, %eax
	jmp	L475
	.p2align 4,,10
	.p2align 3
L481:
	movl	%edx, %eax
	call	__Z13handle_memerri
L477:
	movl	$8192, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	_kzfindfilestart
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
_kzfindfilestart:
LFB55:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	__ZL5hfind, %eax
	cmpl	$-1, %eax
	je	L494
	movl	%eax, (%esp)
	call	*__imp__FindClose@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$-1, __ZL5hfind
L494:
	movl	%ebx, 4(%esp)
	movl	$__ZL6wildst, (%esp)
	call	_strcpy
	movl	%ebx, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	_strcpy
	movl	__ZL10kzlastfnam.lto_priv.0, %eax
	movl	$0, __ZL8srchstat
	movl	%eax, __ZL8srchzoff
	movl	__ZL12kzdirnamhead.lto_priv.0, %eax
	movl	%eax, __ZL8srchdoff
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	_kzfindfile
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
_kzfindfile:
LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	__ZL8srchstat, %edx
	movb	$0, (%eax)
	movl	%eax, 12(%esp)
	testl	%edx, %edx
	je	L527
	cmpl	$1, %edx
	je	L562
L513:
	cmpl	$2, %edx
	jne	L524
L508:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebp
	movl	__ZL8srchzoff, %ebx
	jmp	L523
	.p2align 4,,10
	.p2align 3
L564:
	leal	21(%ebp,%ebx), %esi
	movl	$__ZL8newildst, %edx
	leal	4(%ebp,%ebx), %ebx
	movl	%esi, %eax
	call	_wildmatch
	testl	%eax, %eax
	jne	L563
	movl	(%ebx), %ebx
	movl	%ebx, __ZL8srchzoff
L523:
	testl	%ebx, %ebx
	jns	L564
L521:
	movl	__ZL8srchdoff, %ebx
	testl	%ebx, %ebx
	js	L525
	movl	__ZL9kzhashbuf.lto_priv.0, %esi
	movl	$__ZL8newildst, (%esp)
	leal	4(%esi,%ebx), %eax
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	$__ZL8newildst, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L526
	movzbl	__ZL8newildst-1(%eax), %edx
	cmpb	$47, %dl
	je	L526
	cmpb	$92, %dl
	je	L526
	movl	12(%esp), %ecx
	movzbl	(%ecx), %edx
	cmpb	$47, %dl
	je	L526
	cmpb	$92, %dl
	je	L526
	movl	$92, %edx
	movw	%dx, __ZL8newildst(%eax)
	.p2align 4
	.p2align 3
L526:
	movl	$__ZL6wildst, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	_strcat
	movl	(%esi,%ebx), %eax
	movl	%eax, __ZL8srchdoff
	movl	12(%esp), %eax
	movb	$0, (%eax)
L527:
	movzbl	__ZL8newildst, %edx
	testb	%dl, %dl
	je	L525
	movl	$1, __ZL8srchstat
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$0, __ZL14wildstpathleng
	.p2align 6
	.p2align 4
	.p2align 3
L504:
	cmpb	$47, %dl
	sete	%al
	cmpb	$92, %dl
	sete	%dl
	addl	$1, %ecx
	orb	%dl, %al
	movzbl	__ZL8newildst(%ecx), %edx
	cmovne	%eax, %ebx
	cmovne	%ecx, %edi
	testb	%dl, %dl
	jne	L504
	xorl	%eax, %eax
	testb	%bl, %bl
	je	L505
	movl	%edi, __ZL14wildstpathleng
	movl	%edi, %eax
L505:
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	$__ZL8newildst, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	$__ZL7findata, 4(%esp)
	movl	$__ZL8newildst, (%esp)
	call	*__imp__FindFirstFileA@8
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, __ZL5hfind
	cmpl	$-1, %eax
	je	L561
	movl	__ZL7findata, %eax
	testb	$2, %al
	jne	L511
	testb	$16, %al
	je	L510
	cmpb	$46, __ZL7findata+44
	jne	L510
	cmpb	$0, __ZL7findata+45
	je	L511
L510:
	movl	12(%esp), %ebp
	addl	__ZL14wildstpathleng, %ebp
	movl	$__ZL7findata+44, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcpy
	testb	$16, __ZL7findata
	jne	L565
L512:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L524:
	.cfi_restore_state
	cmpl	$3, %edx
	je	L521
L530:
	xorl	%edx, %edx
L567:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L511:
	.cfi_restore_state
	movl	__ZL8srchstat, %edx
	cmpl	$1, %edx
	jne	L513
	.p2align 4
	.p2align 3
L562:
	movl	__ZL14wildstpathleng, %eax
	movl	__imp__FindNextFileA@8, %ebx
L514:
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	$__ZL8newildst, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	__ZL5hfind, %eax
	movl	$__ZL7findata, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	movl	16(%esp), %edx
	je	L566
	movl	__ZL7findata, %ecx
	movl	__ZL14wildstpathleng, %eax
	testb	$2, %cl
	jne	L514
	andl	$16, %ecx
	je	L518
	cmpb	$46, __ZL7findata+44
	jne	L518
	cmpb	$0, __ZL7findata+45
	je	L514
L518:
	movl	12(%esp), %ebx
	movl	$__ZL7findata+44, 4(%esp)
	movl	%edx, 16(%esp)
	addl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_strcpy
	testb	$16, __ZL7findata
	movl	16(%esp), %edx
	je	L499
	movl	%ebx, (%esp)
	movl	%edx, 12(%esp)
	call	_strlen
	movl	$92, %ecx
	movl	12(%esp), %edx
	movw	%cx, (%ebx,%eax)
	jmp	L499
	.p2align 4,,10
	.p2align 3
L563:
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	leal	1(%eax), %ebp
	movb	$124, (%eax)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcpy
	movl	(%ebx), %eax
	movl	16(%esp), %edx
	movl	%eax, __ZL8srchzoff
L499:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L566:
	.cfi_restore_state
	movl	__ZL5hfind, %eax
	movl	%eax, (%esp)
	call	*__imp__FindClose@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$-1, __ZL5hfind
	.p2align 4
	.p2align 3
L561:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L530
	movl	$2, __ZL8srchstat
	jmp	L508
L565:
	movl	%ebp, (%esp)
	movl	$92, %esi
	call	_strlen
	movw	%si, 0(%ebp,%eax)
	jmp	L512
L525:
	movl	$-1, __ZL8srchstat
	xorl	%edx, %edx
	jmp	L567
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	_kpgetdim.part.0.constprop.0
	.def	_kpgetdim.part.0.constprop.0;	.scl	2;	.type	32;	.endef
_kpgetdim.part.0.constprop.0:
LFB58:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%edi, 8(%esp)
	movzwl	(%eax), %eax
	.cfi_offset 7, -8
	movl	%ecx, %edi
	cmpw	$20617, %ax
	je	L589
	cmpw	$-9985, %ax
	je	L590
	movzbl	(%ebx), %eax
	cmpb	$71, %al
	je	L591
	cmpb	$66, %al
	je	L592
L580:
	cmpl	$134284554, (%ebx)
	je	L593
	movl	%ebx, %eax
	call	__ZL7istargaPKhi.lto_priv.0
	testl	%eax, %eax
	je	L568
	movl	%esi, 4(%esp)
	movzwl	12(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%edi)
	movzwl	14(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
L568:
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L590:
	.cfi_restore_state
	subl	$8, %edx
	cmpl	$2, %edx
	jbe	L568
	leal	2(%ebx), %eax
	jmp	L578
	.p2align 4,,10
	.p2align 3
L595:
	movzbl	1(%eax), %ecx
	cmpb	$-1, %cl
	je	L574
	subl	$192, %ecx
	cmpl	$2, %ecx
	jbe	L594
	movzwl	2(%eax), %ecx
	rolw	$8, %cx
	movzwl	%cx, %ecx
	leal	2(%eax,%ecx), %eax
L576:
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%edx, %ecx
	jnb	L568
L578:
	cmpb	$-1, (%eax)
	je	L595
L574:
	addl	$1, %eax
	jmp	L576
	.p2align 4,,10
	.p2align 3
L589:
	cmpl	$1196314761, (%ebx)
	jne	L568
	cmpl	$169478669, 4(%ebx)
	jne	L568
	subl	$16, %edx
	cmpl	$8, %edx
	jbe	L568
	leal	8(%ebx), %eax
	jmp	L572
	.p2align 5
	.p2align 4,,10
	.p2align 3
L571:
	movl	(%eax), %ecx
	bswap	%ecx
	leal	12(%eax,%ecx), %eax
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%edx, %ecx
	jnb	L568
L572:
	cmpl	$1380206665, 4(%eax)
	jne	L571
	movl	%esi, 4(%esp)
	movl	8(%eax), %edx
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	bswap	%edx
	movl	%edx, (%edi)
	movl	12(%eax), %eax
	bswap	%eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L568
	.p2align 4,,10
	.p2align 3
L592:
	cmpb	$77, 1(%ebx)
	jne	L580
	cmpl	$12, 14(%ebx)
	je	L596
	cmpw	$1, 26(%ebx)
	jne	L568
	movl	%esi, 4(%esp)
	movl	18(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movl	22(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L568
	.p2align 4,,10
	.p2align 3
L591:
	cmpb	$73, 1(%ebx)
	jne	L580
	cmpb	$70, 2(%ebx)
	jne	L580
	movl	%esi, 4(%esp)
	movzwl	6(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movzwl	8(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L568
	.p2align 4,,10
	.p2align 3
L593:
	movl	%esi, 4(%esp)
	movzwl	4(%ebx), %edx
	movzwl	8(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, (%edi)
	movzwl	10(%ebx), %eax
	movzwl	6(%ebx), %edx
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L594:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movl	%esi, 4(%esp)
	movzwl	5(%eax), %edx
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	rolw	$8, %dx
	movzwl	%dx, %edx
	movl	%edx, (%esi)
	movzwl	7(%eax), %eax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, (%edi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L568
L596:
	cmpw	$1, 22(%ebx)
	jne	L568
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movzwl	18(%ebx), %eax
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movzwl	20(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L568
	.cfi_endproc
LFE58:
	.section .rdata,"dr"
LC22:
	.ascii "vector::_M_realloc_append\0"
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4
	.globl	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_;	.scl	2;	.type	32;	.endef
__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_:
LFB59:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-8, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	movl	%edi, %eax
	subl	$100, %esp
	movl	8(%eax), %eax
	movl	(%edi), %esi
	movl	%edi, -72(%ebp)
	movl	%edx, -76(%ebp)
	movl	4(%edi), %edi
	movl	%ecx, -80(%ebp)
	movl	%eax, -68(%ebp)
	movl	$__ZN6loguruL7s_mutexE, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L670
	leal	-56(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%ebx, (%esp)
	call	_strlen
	movl	%ebx, (%esp)
	leal	-64(%ebp), %ecx
	addl	%ebx, %eax
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-76(%ebp), %eax
	subl	$8, %esp
	movl	%esi, -32(%ebp)
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %esi
	movl	%eax, -40(%ebp)
	movl	-80(%ebp), %eax
	movl	%edi, -28(%ebp)
	movl	%eax, -36(%ebp)
	movl	-68(%ebp), %eax
	movl	$0, -20(%ebp)
	movl	%eax, -24(%ebp)
	cmpl	__ZN6loguruL11s_callbacksE.lto_priv.0+8, %esi
	je	L599
	leal	8(%esi), %edx
	leal	-56(%ebp), %edi
	movl	%edx, (%esi)
	movl	-60(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	%ecx, -68(%ebp)
	cmpl	%edi, %eax
	je	L679
	movl	%eax, (%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esi)
L608:
	movl	-68(%ebp), %eax
	movl	%eax, 4(%esi)
	movl	-40(%ebp), %eax
	addl	$48, __ZN6loguruL11s_callbacksE.lto_priv.0+4
	movlps	-28(%ebp), %xmm1
	movl	%eax, 24(%esi)
	movl	-36(%ebp), %eax
	movlps	%xmm1, 36(%esi)
	movl	%eax, 28(%esi)
	movl	-32(%ebp), %eax
	movl	%eax, 32(%esi)
	movl	-20(%ebp), %eax
	movl	%eax, 44(%esi)
L609:
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebx
	movl	$-9, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
	cmpl	%ebx, %edx
	je	L637
	movl	%ebx, %ecx
	movl	$-9, %eax
	subl	%edx, %ecx
	andl	$16, %ecx
	je	L638
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$48, %edx
	cmpl	%edx, %ebx
	je	L675
	.p2align 5
	.p2align 4
	.p2align 3
L638:
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	80(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$96, %edx
	cmpl	%edx, %ebx
	jne	L638
L675:
	movl	%eax, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
L637:
	movl	-72(%ebp), %eax
	movl	$__ZN6loguruL7s_mutexE, (%eax)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_pthread_mutex_unlock
	.p2align 4,,10
	.p2align 3
L599:
	.cfi_restore_state
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %eax
	movl	%esi, %ebx
	subl	%eax, %ebx
	movl	%eax, -80(%ebp)
	movl	%ebx, %edx
	sarl	$4, %edx
	imull	$-1431655765, %edx, %edx
	cmpl	$44739242, %edx
	je	L671
	testl	%edx, %edx
	movl	$1, %eax
	cmovne	%edx, %eax
	addl	%edx, %eax
	movl	$44739242, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%fs:44, %edx
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	movl	%eax, -76(%ebp)
	movl	%eax, %ecx
	movl	__tls_index, %eax
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %edi
	cmpl	$512, %ecx
	ja	L611
	movl	184(%edi,%ecx), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L680
	movl	(%ecx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L614:
	leal	(%ecx,%ebx), %eax
	leal	8(%eax), %edi
	movl	%eax, -68(%ebp)
	movl	%edi, (%eax)
	movl	-60(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%eax, -84(%ebp)
	leal	-56(%ebp), %eax
	cmpl	%eax, %edx
	je	L681
	movl	-68(%ebp), %eax
	movl	%edx, (%eax)
	movl	-56(%ebp), %edx
	movl	%edx, 8(%eax)
L623:
	movl	-68(%ebp), %edi
	movl	-84(%ebp), %eax
	movl	$0, -60(%ebp)
	movl	%eax, 4(%edi)
	movl	-40(%ebp), %edx
	leal	-56(%ebp), %eax
	movl	%eax, -64(%ebp)
	movlps	-28(%ebp), %xmm2
	movl	%edx, 24(%edi)
	movl	-36(%ebp), %edx
	movl	-80(%ebp), %eax
	movb	$0, -56(%ebp)
	movl	%edx, 28(%edi)
	movl	-32(%ebp), %edx
	movlps	%xmm2, 36(%edi)
	movl	%edx, 32(%edi)
	movl	-20(%ebp), %edx
	movl	%edx, 44(%edi)
	cmpl	%eax, %esi
	je	L639
	movl	%esi, -68(%ebp)
	leal	8(%eax), %ebx
	movl	%ecx, %edi
	movl	%ecx, -84(%ebp)
	jmp	L635
	.p2align 4,,10
	.p2align 3
L625:
	movl	%eax, (%edi)
	movl	(%ebx), %eax
	movl	%eax, 8(%edi)
L678:
	movl	-4(%ebx), %eax
L633:
	movl	%eax, 4(%edi)
	movl	16(%ebx), %eax
	movl	%ebx, -8(%ebx)
	movlps	28(%ebx), %xmm0
	movb	$0, (%ebx)
	movl	$0, -4(%ebx)
	movl	%eax, 24(%edi)
	movl	20(%ebx), %eax
	movlps	%xmm0, 36(%edi)
	movl	%eax, 28(%edi)
	movl	24(%ebx), %eax
	movl	%eax, 32(%edi)
	movl	36(%ebx), %eax
	movl	%eax, 44(%edi)
	movl	-8(%ebx), %eax
	cmpl	%eax, %ebx
	je	L634
	call	_mi_free
L634:
	addl	$48, %edi
	leal	40(%ebx), %eax
	cmpl	%eax, -68(%ebp)
	je	L682
	addl	$48, %ebx
L635:
	leal	8(%edi), %ecx
	movl	%ecx, (%edi)
	movl	-8(%ebx), %eax
	cmpl	%eax, %ebx
	jne	L625
	movl	-4(%ebx), %eax
	leal	1(%eax), %esi
	cmpl	$16, %esi
	jnb	L626
	testl	$8, %esi
	jne	L683
	testl	$4, %esi
	jne	L684
	testl	%esi, %esi
	je	L633
	movzbl	(%ebx), %eax
	movb	%al, (%ecx)
	testl	$2, %esi
	je	L678
	movzwl	-2(%ebx,%esi), %eax
	movw	%ax, -2(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L633
	.p2align 4,,10
	.p2align 3
L682:
	movl	-84(%ebp), %ecx
L624:
	movl	-80(%ebp), %eax
	addl	$48, %edi
	testl	%eax, %eax
	je	L636
	movl	%ecx, -68(%ebp)
	call	_mi_free
	movl	-68(%ebp), %ecx
L636:
	movl	-64(%ebp), %eax
	movl	%ecx, __ZN6loguruL11s_callbacksE.lto_priv.0
	leal	-56(%ebp), %esi
	addl	-76(%ebp), %ecx
	movl	%edi, __ZN6loguruL11s_callbacksE.lto_priv.0+4
	movl	%ecx, __ZN6loguruL11s_callbacksE.lto_priv.0+8
	cmpl	%esi, %eax
	je	L609
	call	_mi_free
	jmp	L609
	.p2align 4,,10
	.p2align 3
L626:
	movl	-16(%ebx,%esi), %edx
	movl	%edx, -16(%ecx,%esi)
	movl	-12(%ebx,%esi), %edx
	movl	%edx, -12(%ecx,%esi)
	movl	-8(%ebx,%esi), %edx
	movl	%edx, -8(%ecx,%esi)
	movl	-4(%ebx,%esi), %edx
	movl	%edx, -4(%ecx,%esi)
	cmpl	$16, %eax
	jb	L678
	movl	%edi, -100(%ebp)
	andl	$-16, %eax
	movl	%eax, -88(%ebp)
	xorl	%eax, %eax
L631:
	movl	12(%ebx,%eax), %edx
	movl	8(%ebx,%eax), %esi
	movl	4(%ebx,%eax), %edi
	movl	%edx, -96(%ebp)
	movl	(%ebx,%eax), %edx
	movl	%edi, 4(%ecx,%eax)
	movl	%edx, (%ecx,%eax)
	movl	%esi, 8(%ecx,%eax)
	movl	-96(%ebp), %esi
	movl	%esi, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	-88(%ebp), %eax
	jb	L631
	movl	-100(%ebp), %edi
	movl	-4(%ebx), %eax
	jmp	L633
	.p2align 4,,10
	.p2align 3
L679:
	leal	1(%ecx), %edi
	movl	%edi, -76(%ebp)
	cmpl	$16, %edi
	jnb	L601
	andl	$8, %edi
	jne	L685
	testb	$4, -76(%ebp)
	jne	L686
	movl	-76(%ebp), %edi
	testl	%edi, %edi
	je	L608
	movzbl	(%eax), %ebx
	andl	$2, %edi
	movb	%bl, 8(%esi)
	je	L608
	movl	-76(%ebp), %edi
	movzwl	-2(%eax,%edi), %eax
	movw	%ax, -2(%edx,%edi)
	jmp	L608
	.p2align 4,,10
	.p2align 3
L601:
	movl	-76(%ebp), %ecx
	movl	-16(%eax,%ecx), %edi
	movl	%edi, -16(%edx,%ecx)
	movl	-12(%eax,%ecx), %edi
	movl	%edi, -12(%edx,%ecx)
	movl	-8(%eax,%ecx), %edi
	movl	%edi, -8(%edx,%ecx)
	movl	-4(%eax,%ecx), %edi
	movl	%edi, -4(%edx,%ecx)
	movl	-68(%ebp), %edi
	cmpl	$16, %edi
	jb	L608
	movl	%edi, %ecx
	movl	%esi, -84(%ebp)
	xorl	%ebx, %ebx
	andl	$-16, %ecx
	movl	%ecx, -76(%ebp)
L606:
	movl	12(%eax,%ebx), %ecx
	movl	8(%eax,%ebx), %esi
	movl	4(%eax,%ebx), %edi
	movl	%ecx, -80(%ebp)
	movl	(%eax,%ebx), %ecx
	movl	%edi, 4(%edx,%ebx)
	movl	%ecx, (%edx,%ebx)
	movl	%esi, 8(%edx,%ebx)
	movl	-80(%ebp), %esi
	movl	%esi, 12(%edx,%ebx)
	addl	$16, %ebx
	cmpl	-76(%ebp), %ebx
	jb	L606
	movl	-84(%ebp), %esi
	jmp	L608
L681:
	movl	-84(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -88(%ebp)
	cmpl	$16, %eax
	jnb	L616
	testb	$8, %al
	jne	L687
	testb	$4, -88(%ebp)
	jne	L688
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L623
	movzbl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movb	%dl, 8(%eax)
	testb	$2, -88(%ebp)
	je	L623
	movl	-88(%ebp), %eax
	movzwl	-58(%ebp,%eax), %edx
	movw	%dx, -2(%edi,%eax)
	jmp	L623
	.p2align 4,,10
	.p2align 3
L616:
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	-72(%ebp,%eax), %eax
	movl	%eax, -16(%edi,%ebx)
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	-68(%ebp,%eax), %eax
	movl	%eax, -12(%edi,%ebx)
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	-64(%ebp,%eax), %eax
	movl	%eax, -8(%edi,%ebx)
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	-60(%ebp,%eax), %eax
	movl	%eax, -4(%edi,%ebx)
	movl	-84(%ebp), %eax
	cmpl	$16, %eax
	jb	L623
	andl	$-16, %eax
	movl	%esi, -100(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, -88(%ebp)
	movl	%ecx, -104(%ebp)
L621:
	movl	12(%edx,%ebx), %eax
	movl	4(%edx,%ebx), %esi
	movl	8(%edx,%ebx), %ecx
	movl	%eax, -96(%ebp)
	movl	(%edx,%ebx), %eax
	movl	%esi, 4(%edi,%ebx)
	movl	%eax, (%edi,%ebx)
	movl	%ecx, 8(%edi,%ebx)
	movl	-96(%ebp), %eax
	movl	%eax, 12(%edi,%ebx)
	addl	$16, %ebx
	cmpl	-88(%ebp), %ebx
	jb	L621
	movl	-100(%ebp), %esi
	movl	-104(%ebp), %ecx
	jmp	L623
L683:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-8(%ebx,%esi), %eax
	movl	-4(%ebx,%esi), %edx
	movl	%eax, -8(%ecx,%esi)
	movl	%edx, -4(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L633
L639:
	movl	%ecx, %edi
	jmp	L624
L611:
	movl	$0, (%esp)
	movl	-76(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
L613:
	testl	%ecx, %ecx
	jne	L614
	movl	-76(%ebp), %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ecx
	jmp	L614
L680:
	movl	$0, (%esp)
	movl	-76(%ebp), %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
	jmp	L613
L684:
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	-4(%ebx,%esi), %eax
	movl	%eax, -4(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L633
L685:
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 8(%esi)
	movl	%ebx, 12(%esi)
	movl	-76(%ebp), %edi
	movl	-8(%eax,%edi), %ecx
	movl	-4(%eax,%edi), %ebx
	movl	%ecx, -8(%edx,%edi)
	movl	%ebx, -4(%edx,%edi)
	jmp	L608
L686:
	movl	(%eax), %edi
	movl	%edi, 8(%esi)
	movl	-76(%ebp), %ecx
	movl	-4(%eax,%ecx), %eax
	movl	%eax, -4(%edx,%ecx)
	jmp	L608
L688:
	movl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-88(%ebp), %eax
	movl	-60(%ebp,%eax), %edx
	movl	%edx, -4(%edi,%eax)
	jmp	L623
L687:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	-68(%ebp), %ebx
	movl	%eax, -96(%ebp)
	movl	%edx, -92(%ebp)
	movl	%eax, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	-88(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	-60(%ebp,%eax), %edx
	movl	-64(%ebp,%eax), %eax
	movl	%edx, -92(%ebp)
	movl	%eax, -96(%ebp)
	movl	%eax, -8(%edi,%ebx)
	movl	%edx, -4(%edi,%ebx)
	jmp	L623
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.cold;	.scl	3;	.type	32;	.endef
__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.cold:
LFSB59:
L670:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L671:
	movl	$LC22, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE59:
	.text
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.p2align 4
	.globl	__ZN6loguru24current_verbosity_cutoffEv
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
__ZN6loguru24current_verbosity_cutoffEv:
LFB85:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	ret
	.cfi_endproc
LFE85:
	.section .rdata,"dr"
LC24:
	.ascii "\0"
	.text
	.p2align 4
	.globl	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0:
LFB88:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$132, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	20(%ebp), %ebx
	movl	16(%ebp), %esi
	leal	59(%esp), %eax
	movl	$LC24, 12(%esp)
	leal	24(%esp), %edx
	movss	12(%esp), %xmm1
	movl	%eax, 12(%esp)
	leal	28(%ebp), %eax
	movss	12(%esp), %xmm0
	movl	%eax, 20(%esp)
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	unpcklps	%xmm1, %xmm0
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movlps	%xmm0, 12(%esp)
	call	__ZN6loguruL11vtextprintfEPKcPc
	movl	%ebx, (%esp)
	movl	%esi, %ecx
	movl	$-3, %edx
	leal	59(%esp), %eax
	movl	24(%esp), %edi
	movb	$0, 59(%esp)
	call	__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0
	movl	12(%ebp), %eax
	leal	28(%esp), %edx
	movl	%esi, 32(%esp)
	movlps	12(%esp), %xmm0
	movl	$1, (%esp)
	movl	$1, %ecx
	movl	%eax, 48(%esp)
	movl	$2, %eax
	movlps	%xmm0, 40(%esp)
	movl	$-3, 28(%esp)
	movl	%ebx, 36(%esp)
	movl	%edi, 52(%esp)
	call	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0
	call	_abort
	.cfi_endproc
LFE88:
	.section .rdata,"dr"
LC25:
	.ascii "Bad string format: '%s'\0"
LC26:
	.ascii "source/build/src/loguru.cpp\0"
	.align 4
LC27:
	.ascii "CHECK FAILED:  bytes_needed >= 0  \0"
	.align 4
LC28:
	.ascii "CHECK FAILED:  written <= bytes_needed  \0"
	.text
	.p2align 4
	.def	__ZN6loguruL11vtextprintfEPKcPc;	.scl	3;	.type	32;	.endef
__ZN6loguruL11vtextprintfEPKcPc:
LFB92:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$28, %esp
	.cfi_def_cfa_offset 44
	movl	52(%esp), %esi
	movl	48(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___vscprintf
	testl	%eax, %eax
	js	L697
	leal	1(%eax), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L698
	movl	48(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	___ms_vsnprintf
	cmpl	%eax, %ebx
	jl	L699
	movl	44(%esp), %eax
	movl	%edi, (%eax)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L697:
	.cfi_restore_state
	movl	48(%esp), %eax
	movl	$LC25, 16(%esp)
	movl	$451, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$LC26, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.p2align 4,,10
	.p2align 3
L698:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L699:
	movl	48(%esp), %eax
	movl	$LC25, 16(%esp)
	movl	$461, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$LC26, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__ZN6loguru10textprintfEPKcz
	.def	__ZN6loguru10textprintfEPKcz;	.scl	2;	.type	32;	.endef
__ZN6loguru10textprintfEPKcz:
LFB95:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	leal	28(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN6loguruL11vtextprintfEPKcPc
	movl	20(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE95:
	.p2align 4
	.def	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0;	.scl	3;	.type	32;	.endef
__ZN6loguru7raw_logEiPKcjS1_z.constprop.0:
LFB97:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	leal	-44(%ebp), %eax
	addl	$16, %ecx
	subl	$60, %esp
	movl	-4(%ecx), %edx
	movl	-8(%ecx), %ebx
	movl	$LC24, -56(%ebp)
	movss	-56(%ebp), %xmm0
	movl	%ecx, -48(%ebp)
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, -56(%ebp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN6loguruL11vtextprintfEPKcPc
	movlps	-56(%ebp), %xmm0
	movl	%ebx, -32(%ebp)
	leal	-40(%ebp), %edx
	movl	-44(%ebp), %ebx
	movl	$LC24, -20(%ebp)
	xorl	%ecx, %ecx
	movl	$1, %eax
	movlps	%xmm0, -28(%ebp)
	movl	%ebx, -16(%ebp)
	movl	$-2, -40(%ebp)
	movl	$LC26, -36(%ebp)
	movl	$1, (%esp)
	call	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE97:
	.section .rdata,"dr"
LC29:
	.ascii "\33[1;0m\0"
LC30:
	.ascii "\33[1;33m\0"
LC31:
	.ascii "\33[1;31m\0"
LC32:
	.ascii "Stack trace:\12%s\0"
LC33:
	.ascii "\33[1;2m\0"
LC34:
	.ascii "%s%s%s%s%s%s%s%s\12\0"
LC35:
	.ascii "%s%s%s%s%s%s%s\12\0"
	.section	.text.unlikely,"x"
LCOLDB36:
	.text
LHOTB36:
	.p2align 4
	.def	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0;	.scl	3;	.type	32;	.endef
__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0:
LFB100:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$84, %esp
	.cfi_def_cfa_offset 104
	movl	(%edx), %esi
	movl	$__ZN6loguruL7s_mutexE, (%esp)
	movzbl	104(%esp), %eax
	movb	%cl, 42(%esp)
	movb	%al, 43(%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L746
	cmpl	$-3, (%ebx)
	je	L750
L706:
	cmpb	$0, 42(%esp)
	jne	L712
	cmpl	__ZN6loguru18g_stderr_verbosityE, %esi
	jle	L713
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%ebp, %edi
	je	L715
	.p2align 4
	.p2align 3
L724:
	cmpl	32(%edi), %esi
	jg	L723
	movl	%ebx, 4(%esp)
	movl	28(%edi), %eax
	movl	%eax, (%esp)
	call	*24(%edi)
	movl	40(%edi), %eax
	testl	%eax, %eax
	je	L723
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
L723:
	addl	$48, %edi
	cmpl	%edi, %ebp
	jne	L724
L715:
	cmpl	$-3, (%ebx)
	je	L751
L727:
	movl	$__ZN6loguruL7s_mutexE, 104(%esp)
	addl	$84, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_pthread_mutex_unlock
	.p2align 4,,10
	.p2align 3
L712:
	.cfi_restore_state
	movl	$100, %edx
	movl	__ZN6loguruL20s_stderr_indentationE, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	subl	%eax, %edx
	leal	__ZZN6loguruL11indentationEjE4buff(,%edx,4), %eax
	movl	%eax, 16(%ebx)
	cmpl	__ZN6loguru18g_stderr_verbosityE, %esi
	jg	L716
L713:
	movl	20(%ebx), %eax
	movl	24(%ebx), %ecx
	movl	16(%ebx), %edi
	movl	12(%ebx), %ebp
	movl	%eax, 44(%esp)
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L752
	movl	__imp____acrt_iob_func, %edx
	movl	%ecx, 52(%esp)
	movl	$2, (%esp)
	movl	%edx, 48(%esp)
	call	*%edx
	movl	52(%esp), %ecx
	movl	%edi, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%ecx, 20(%esp)
	movl	44(%esp), %ecx
	movl	$LC0, 4(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	48(%esp), %edx
L720:
	movl	$2, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	_fflush
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%ebp, %edi
	je	L715
	cmpb	$0, 42(%esp)
	je	L724
	.p2align 4
	.p2align 3
L726:
	cmpl	32(%edi), %esi
	jg	L725
	movl	44(%edi), %eax
	movl	$100, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	subl	%eax, %edx
	leal	__ZZN6loguruL11indentationEjE4buff(,%edx,4), %eax
	movl	%eax, 16(%ebx)
	movl	%ebx, 4(%esp)
	movl	28(%edi), %eax
	movl	%eax, (%esp)
	call	*24(%edi)
	movl	40(%edi), %eax
	testl	%eax, %eax
	je	L725
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
L725:
	addl	$48, %edi
	cmpl	%edi, %ebp
	jne	L726
	cmpl	$-3, (%ebx)
	jne	L727
L751:
	call	__ZN6loguru5flushEv
	movl	__ZN6loguruL15s_fatal_handlerE.lto_priv.0, %eax
	testl	%eax, %eax
	je	L728
	movl	%ebx, (%esp)
	call	*%eax
	call	__ZN6loguru5flushEv
L728:
	cmpb	$0, 43(%esp)
	je	L727
	jmp	L747
	.p2align 4,,10
	.p2align 3
L752:
	movl	%ecx, 56(%esp)
	testl	%esi, %esi
	js	L718
	movl	$LC29, %edx
	movl	$LC24, %ecx
	movl	$2, (%esp)
	cmove	%edx, %ecx
	movl	__imp____acrt_iob_func, %edx
	movl	%ecx, 48(%esp)
	movl	%edx, 52(%esp)
	call	*%edx
	movl	56(%esp), %ecx
	movl	$LC29, 36(%esp)
	movl	%edi, 20(%esp)
	movl	%ecx, 32(%esp)
	movl	44(%esp), %ecx
	movl	%ebp, 16(%esp)
	movl	%ecx, 28(%esp)
	movl	48(%esp), %ecx
	movl	$LC33, 12(%esp)
	movl	%ecx, 24(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC34, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	52(%esp), %edx
	jmp	L720
	.p2align 4,,10
	.p2align 3
L750:
	movl	$LC24, 4(%esp)
	leal	60(%esp), %ecx
	leal	68(%esp), %ebp
	movl	$LC24, (%esp)
	movl	%ebp, 60(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.cfi_def_cfa_offset 96
	subl	$8, %esp
	.cfi_def_cfa_offset 104
	movl	60(%esp), %eax
	call	__xstrdup
	movl	%eax, 44(%esp)
	movl	60(%esp), %eax
	cmpl	%ebp, %eax
	je	L707
	call	_mi_free
L707:
	movl	44(%esp), %eax
	cmpb	$0, (%eax)
	je	L709
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L753
L709:
	movl	%ebp, %eax
	movl	%ebp, 60(%esp)
	movb	$0, 68(%esp)
	movl	$0, 64(%esp)
	call	__xstrdup
	movl	%eax, %edi
	movl	60(%esp), %eax
	cmpl	%ebp, %eax
	je	L710
	call	_mi_free
L710:
	cmpb	$0, (%edi)
	je	L711
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L754
L711:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 100
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 104
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 100
	subl	$4, %esp
	.cfi_def_cfa_offset 104
	jmp	L706
	.p2align 4,,10
	.p2align 3
L716:
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%edi, %ebp
	jne	L726
	jmp	L715
	.p2align 4,,10
	.p2align 3
L718:
	cmpl	$-1, %esi
	movl	$LC31, %edx
	movl	$LC30, %eax
	movl	$2, (%esp)
	cmovne	%edx, %eax
	movl	__imp____acrt_iob_func, %edx
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	call	*%edx
	movl	56(%esp), %ecx
	movl	44(%esp), %edx
	movl	%edi, 20(%esp)
	movl	$LC29, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	48(%esp), %ecx
	movl	%edx, 24(%esp)
	movl	%ebp, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	52(%esp), %edx
	jmp	L720
L754:
	movl	%edi, 16(%esp)
	movl	$LC6, 12(%esp)
	movl	$1497, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0
	jmp	L711
L753:
	movl	44(%esp), %eax
	movl	$LC32, 12(%esp)
	movl	$1492, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0
	jmp	L709
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0.cold;	.scl	3;	.type	32;	.endef
__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0.cold:
LFSB100:
L746:
	.cfi_def_cfa_offset 104
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L747:
	call	_abort
	.cfi_endproc
LFE100:
	.text
	.section	.text.unlikely,"x"
LCOLDE36:
	.text
LHOTE36:
	.p2align 4
	.globl	__ZN6loguru3logEiPKcjS1_z
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
__ZN6loguru3logEiPKcjS1_z:
LFB126:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	pushl	%esi
	leal	-124(%ebp), %edx
	pushl	%ebx
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-89(%ebp), %ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	addl	$16, %ecx
	subl	$140, %esp
	movl	-12(%ecx), %eax
	movl	-16(%ecx), %edi
	movl	$LC24, -144(%ebp)
	movss	-144(%ebp), %xmm1
	movl	%ebx, -144(%ebp)
	movss	-144(%ebp), %xmm0
	movl	-8(%ecx), %esi
	movl	%eax, -132(%ebp)
	movl	-4(%ecx), %eax
	movl	%ecx, -128(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -144(%ebp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN6loguruL11vtextprintfEPKcPc
	movl	-124(%ebp), %ebx
	movb	$0, -89(%ebp)
	movl	%edi, %edx
	movl	%esi, (%esp)
	movl	-132(%ebp), %ecx
	leal	-89(%ebp), %eax
	call	__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0
	movl	%edi, -120(%ebp)
	leal	-120(%ebp), %edx
	movl	$1, %ecx
	movl	-132(%ebp), %eax
	movlps	-144(%ebp), %xmm0
	movl	%esi, -112(%ebp)
	movl	%ebx, -96(%ebp)
	movl	%eax, -116(%ebp)
	movl	$2, %eax
	movlps	%xmm0, -108(%ebp)
	movl	$LC24, -100(%ebp)
	movl	$1, (%esp)
	call	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE126:
	.section .rdata,"dr"
LC37:
	.ascii "SIGSEGV\0"
LC38:
	.ascii "SIGABRT\0"
LC39:
	.ascii "SIGTERM\0"
LC40:
	.ascii "SIGINT\0"
LC41:
	.ascii "SIGILL\0"
LC42:
	.ascii "SIGFPE\0"
LC43:
	.ascii "UNKNOWN SIGNAL\0"
LC44:
	.ascii "\33[1;1m\0"
LC45:
	.ascii "\33[1;91m\0"
LC46:
	.ascii "\12\0"
LC47:
	.ascii "Caught signal: \0"
LC48:
	.ascii "Signal: \0"
	.text
	.p2align 4
	.globl	__ZN6loguru14signal_handlerEi
	.def	__ZN6loguru14signal_handlerEi;	.scl	2;	.type	32;	.endef
__ZN6loguru14signal_handlerEi:
LFB128:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-8, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	$LC38, %esi
	pushl	%ebx
	subl	$152, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %eax
	movl	%edi, -128(%ebp)
	movl	%eax, -124(%ebp)
	cmpl	$22, %eax
	je	L758
	movl	$LC42, %esi
	cmpl	$8, %eax
	je	L758
	movl	$LC41, %esi
	cmpl	$4, %eax
	jne	L780
L758:
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L778
	movl	__imp__GetStdHandle@4, %ebx
	movl	__imp__WriteFile@20, %edi
L759:
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$15, 8(%esp)
	movl	$LC47, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	movl	%esi, (%esp)
	call	_strlen
	movl	%eax, -136(%ebp)
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-136(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L781
L762:
	cmpb	$0, __ZN6loguruL16s_signal_optionsE.lto_priv.0
	jne	L782
L763:
	movl	-124(%ebp), %ecx
	movl	__ZN6loguru15default_handlerE(,%ecx,4), %eax
	leal	-1(%eax), %edx
	cmpl	$-3, %edx
	ja	L757
	movl	-128(%ebp), %esi
	movl	%ecx, (%esi)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L757:
	.cfi_restore_state
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L782:
	.cfi_restore_state
	movl	$LC24, -136(%ebp)
	leal	-89(%ebp), %eax
	movss	-136(%ebp), %xmm1
	movl	%eax, -136(%ebp)
	movss	-136(%ebp), %xmm0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -136(%ebp)
	call	__ZN6loguru5flushEv
	movb	$0, -89(%ebp)
	leal	-89(%ebp), %eax
	movl	$LC24, %ecx
	movl	$0, (%esp)
	movl	$-3, %edx
	call	__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0
	movlps	-136(%ebp), %xmm0
	movl	%esi, -96(%ebp)
	xorl	%ecx, %ecx
	movl	$0, -112(%ebp)
	leal	-120(%ebp), %edx
	movl	$1, %eax
	movlps	%xmm0, -108(%ebp)
	movl	$-3, -120(%ebp)
	movl	$LC24, -116(%ebp)
	movl	$LC48, -100(%ebp)
	movl	$0, (%esp)
	call	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0
	call	__ZN6loguru5flushEv
	jmp	L763
	.p2align 4,,10
	.p2align 3
L781:
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	jmp	L762
	.p2align 4,,10
	.p2align 3
L778:
	movl	$-12, (%esp)
	movl	__imp__GetStdHandle@4, %ebx
	call	*%ebx
	movl	__imp__WriteFile@20, %edi
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L783
	xorl	%edx, %edx
	movl	$LC24, %ecx
L760:
	movl	%edx, -140(%ebp)
	movl	%ecx, -136(%ebp)
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-140(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-136(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	*%edi
	subl	$20, %esp
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	je	L772
	movl	$7, %edx
	movl	$LC45, %ecx
L761:
	movl	%ecx, -140(%ebp)
	movl	%edx, -136(%ebp)
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	-136(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-140(%ebp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	*%edi
	subl	$20, %esp
	jmp	L759
	.p2align 4,,10
	.p2align 3
L780:
	movl	$LC40, %esi
	cmpl	$2, %eax
	je	L758
	cmpl	$11, %eax
	jne	L784
	movl	$LC37, %esi
	jmp	L758
	.p2align 4,,10
	.p2align 3
L783:
	movl	$6, %edx
	movl	$LC44, %ecx
	jmp	L760
	.p2align 4,,10
	.p2align 3
L772:
	xorl	%edx, %edx
	movl	$LC24, %ecx
	jmp	L761
L784:
	cmpl	$15, %eax
	movl	$LC43, %edx
	movl	$LC39, %eax
	cmovne	%edx, %eax
	movl	%eax, %esi
	jmp	L758
	.cfi_endproc
LFE128:
	.p2align 4
	.globl	__ZN6loguru13log_and_abortEiPKcS1_jS1_z
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z;	.scl	2;	.type	32;	.endef
__ZN6loguru13log_and_abortEiPKcS1_jS1_z:
LFB87:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$132, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	20(%ebp), %ebx
	movl	16(%ebp), %esi
	leal	59(%esp), %eax
	movl	$LC24, 12(%esp)
	leal	20(%esp), %edx
	movss	12(%esp), %xmm1
	movl	%eax, 12(%esp)
	leal	28(%ebp), %eax
	movss	12(%esp), %xmm0
	movl	%eax, 24(%esp)
	movl	%eax, 8(%esp)
	movl	24(%ebp), %eax
	unpcklps	%xmm1, %xmm0
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movlps	%xmm0, 12(%esp)
	call	__ZN6loguruL11vtextprintfEPKcPc
	movl	%ebx, (%esp)
	movl	%esi, %ecx
	movl	$-3, %edx
	leal	59(%esp), %eax
	movl	20(%esp), %edi
	movb	$0, 59(%esp)
	call	__ZN6loguruL14print_preambleEPcjiPKcj.part.0.constprop.0
	movl	12(%ebp), %eax
	leal	28(%esp), %edx
	movl	%esi, 32(%esp)
	movlps	12(%esp), %xmm0
	movl	$1, (%esp)
	movl	$1, %ecx
	movl	%eax, 48(%esp)
	movl	8(%ebp), %eax
	movlps	%xmm0, 40(%esp)
	addl	$2, %eax
	movl	$-3, 28(%esp)
	movl	%ebx, 36(%esp)
	movl	%edi, 52(%esp)
	call	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0
	call	_abort
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC49:
	.ascii "date       \0"
LC50:
	.ascii "time         \0"
LC51:
	.ascii " runtime \0"
LC52:
	.ascii " thread name/id\0"
LC53:
	.ascii "file\0"
LC54:
	.ascii "%*s:line  \0"
LC55:
	.ascii " src\0"
	.text
	.p2align 4
	.globl	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0
	.def	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0:
LFB133:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movb	$0, (%eax)
	cmpb	$0, __ZN6loguru15g_preamble_dateE
	jne	L788
L812:
	movl	%edi, %ebp
	movl	$73, %esi
	xorl	%ebx, %ebx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L790
L791:
	movl	$LC50, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L790
	addl	%eax, %ebx
L794:
	cmpl	$72, %ebx
	jbe	L814
L787:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L814:
	.cfi_restore_state
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
	.p2align 4
	.p2align 3
L790:
	movl	$LC51, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L815
	addl	%eax, %ebx
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	je	L800
	cmpl	$72, %ebx
	ja	L787
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L797:
	movl	$LC52, 16(%esp)
	movl	$8, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L813
	addl	%eax, %ebx
L800:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	je	L802
	cmpl	$72, %ebx
	ja	L787
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L798:
	movl	$LC53, 16(%esp)
	movl	$12, 12(%esp)
	movl	$LC54, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L799
	addl	%eax, %ebx
L802:
	cmpl	$72, %ebx
	ja	L787
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L799:
	movl	$LC55, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L803
	addl	%ebx, %eax
	cmpl	$72, %eax
	ja	L787
	movl	$73, %esi
	leal	(%edi,%eax), %ebp
	subl	%eax, %esi
L803:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	$LC16, 8(%esp)
	call	_snprintf
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L788:
	.cfi_restore_state
	movl	$LC49, 8(%esp)
	movl	$73, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L812
	movl	%eax, %ebx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L794
	cmpl	$72, %eax
	ja	L787
	movl	$73, %esi
	leal	(%edi,%eax), %ebp
	subl	%eax, %esi
	jmp	L791
	.p2align 4,,10
	.p2align 3
L815:
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	jne	L797
L813:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	jne	L798
	jmp	L799
	.cfi_endproc
LFE133:
	.p2align 4
	.globl	_md4block
	.def	_md4block;	.scl	2;	.type	32;	.endef
_md4block:
LFB134:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	16(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	shrl	$3, %edx
	movl	%edx, %ecx
	leal	0(,%esi,8), %edx
	andl	$63, %ecx
	addl	%edx, %eax
	movl	20(%edi), %edx
	setc	%bl
	movl	%eax, 16(%edi)
	movl	%esi, %eax
	cmpl	$1, %ebx
	movl	$64, %ebx
	sbbl	$-1, %edx
	shrl	$29, %eax
	subl	%ecx, %ebx
	addl	%edx, %eax
	movl	%eax, 20(%edi)
	leal	24(%edi,%ecx), %eax
	movl	%eax, 16(%esp)
	cmpl	%ebx, %esi
	jnb	L842
L820:
	movl	12(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L842:
	.cfi_restore_state
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	cmpl	$16, %ebx
	jnb	L821
	testb	$8, %bl
	jne	L843
	testb	$4, %bl
	jne	L844
	testl	%ebx, %ebx
	je	L822
	movl	12(%esp), %eax
	leal	24(%edi,%ecx), %edx
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	testb	$2, %bl
	jne	L845
L822:
	leal	24(%edi), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	movl	%edi, %eax
	call	__ZL12MD4TransformPjPKh
	movl	20(%esp), %ecx
	movl	$127, %eax
	movl	12(%esp), %ebp
	subl	%ecx, %eax
	cmpl	%esi, %eax
	jnb	L846
	.p2align 4
	.p2align 3
L828:
	leal	0(%ebp,%ebx), %edx
	movl	%edi, %eax
	call	__ZL12MD4TransformPjPKh
	leal	127(%ebx), %eax
	addl	$64, %ebx
	cmpl	%esi, %eax
	jb	L828
	addl	%ebx, %ebp
	subl	%ebx, %esi
	movl	%ebp, 12(%esp)
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L820
	.p2align 4,,10
	.p2align 3
L821:
	.cfi_restore_state
	movl	12(%esp), %ebp
	leal	24(%edi,%ecx), %edx
	movl	-16(%ebp,%ebx), %eax
	movl	%eax, -16(%edx,%ebx)
	movl	-12(%ebp,%ebx), %eax
	movl	%eax, -12(%edx,%ebx)
	movl	-8(%ebp,%ebx), %eax
	movl	%eax, -8(%edx,%ebx)
	movl	-4(%ebp,%ebx), %eax
	movl	%eax, -4(%edx,%ebx)
	leal	-1(%ebx), %eax
	cmpl	$16, %eax
	jb	L822
	movl	%ecx, 16(%esp)
	andl	$-16, %eax
	movl	%ebx, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
L826:
	movl	4(%ebp,%eax), %esi
	movl	8(%ebp,%eax), %ebx
	movl	12(%ebp,%eax), %ecx
	movl	0(%ebp,%eax), %edi
	movl	%esi, 4(%edx,%eax)
	movl	%edi, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	%ecx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	12(%esp), %eax
	jb	L826
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	movl	%ebp, 12(%esp)
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	jmp	L822
L846:
	addl	%ebx, 12(%esp)
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	leal	-64(%ecx,%esi), %esi
	jmp	L820
L843:
	.cfi_restore_state
	movl	%eax, %ebp
	movl	12(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 4(%ebp)
	movl	%eax, 0(%ebp)
	movl	12(%esp), %eax
	movl	-4(%eax,%ebx), %edx
	movl	-8(%eax,%ebx), %eax
	movl	%edx, -4(%ebp,%ebx)
	movl	%eax, -8(%ebp,%ebx)
	jmp	L822
L844:
	movl	12(%esp), %ebp
	leal	24(%edi,%ecx), %edx
	movl	0(%ebp), %eax
	movl	%eax, (%edx)
	movl	-4(%ebp,%ebx), %eax
	movl	%eax, -4(%edx,%ebx)
	jmp	L822
L845:
	movl	12(%esp), %eax
	movzwl	-2(%eax,%ebx), %eax
	movw	%ax, -2(%edx,%ebx)
	jmp	L822
	.cfi_endproc
LFE134:
	.p2align 4
	.globl	__ZL6EncodePhPKjj.lto_priv.0
	.def	__ZL6EncodePhPKjj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL6EncodePhPKjj.lto_priv.0:
LFB135:
	.cfi_startproc
	subl	$1, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	%edx, %eax
	andl	$-4, %ecx
	movl	%ebx, %edx
	leal	4(%eax,%ecx), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L848:
	movl	(%eax), %ecx
	addl	$4, %eax
	addl	$4, %edx
	movb	%cl, -4(%edx)
	movl	-4(%eax), %ecx
	movb	%ch, -3(%edx)
	movl	-4(%eax), %ecx
	shrl	$16, %ecx
	movb	%cl, -2(%edx)
	movl	-4(%eax), %ecx
	shrl	$24, %ecx
	movb	%cl, -1(%edx)
	cmpl	%ebx, %eax
	jne	L848
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	_md_freevbos
	.def	_md_freevbos;	.scl	2;	.type	32;	.endef
_md_freevbos:
LFB136:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L852
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	jmp	L854
	.p2align 5
	.p2align 4,,10
	.p2align 3
L853:
	addl	$1, %ebx
	cmpl	%ebx, _nextmodelid
	jle	L864
L854:
	movl	_models, %eax
	movl	(%eax,%ebx,4), %esi
	cmpl	$3, (%esi)
	jne	L853
	movl	216(%esi), %eax
	testl	%eax, %eax
	je	L853
	movl	%eax, 4(%esp)
	movl	164(%esi), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 12
	movl	216(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, 216(%esi)
	cmpl	%ebx, _nextmodelid
	jg	L854
L864:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %esi
	.cfi_restore 6
L852:
	movl	__ZL9allocvbos, %eax
	testl	%eax, %eax
	je	L851
	movl	__ZL9indexvbos, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 12
	movl	__ZL8vertvbos, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, 4(%esp)
	movl	__ZL9allocvbos, %eax
	movl	%eax, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL9allocvbos
L851:
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	_clearskins
	.def	_clearskins;	.scl	2;	.type	32;	.endef
_clearskins:
LFB137:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_nextmodelid, %edx
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	testl	%edx, %edx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jle	L866
	testl	%eax, %eax
	movl	$0, 8(%esp)
	sete	15(%esp)
	jmp	L877
L867:
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L870
	cmpb	$0, 15(%esp)
	jne	L909
L870:
	addl	$1, 8(%esp)
	movl	8(%esp), %eax
	cmpl	%eax, _nextmodelid
	jle	L866
L877:
	movl	_models, %eax
	movl	8(%esp), %edx
	movl	(%eax,%edx,4), %esi
	movl	(%esi), %eax
	cmpl	$1, %eax
	jne	L867
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L869:
	movl	24(%esi), %eax
	addl	%ebx, %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L868
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	24(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, (%eax,%ebx)
L868:
	addl	$4, %ebx
	cmpl	$1024, %ebx
	jne	L869
	jmp	L870
L866:
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L881:
	movl	_voxmodels(,%edi,4), %esi
	testl	%esi, %esi
	je	L878
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L880:
	movl	24(%esi), %eax
	addl	%ebx, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L879
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	24(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, (%eax,%ebx)
L879:
	addl	$4, %ebx
	cmpl	$1024, %ebx
	jne	L880
	movl	84(%esi), %eax
	testl	%eax, %eax
	je	L878
	leal	84(%esi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, 84(%esi)
L878:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L881
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L909:
	.cfi_restore_state
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	72(%esi), %ecx
	testl	%ecx, %ecx
	jle	L871
	xorl	%ebx, %ebx
L873:
	movl	24(%esi), %eax
	leal	(%eax,%ebx,4), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	L872
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	24(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, (%eax,%ebx,4)
	movl	%ebp, %eax
	call	__ZL14nullskintexidsj
L872:
	movl	72(%esi), %eax
	addl	$1, %ebx
	sall	$5, %eax
	cmpl	%ebx, %eax
	jg	L873
L871:
	movl	68(%esi), %esi
	testl	%esi, %esi
	je	L908
L874:
	leal	16(%esi), %ebp
	leal	144(%esi), %ebx
	.p2align 4
	.p2align 3
L876:
	movl	0(%ebp), %edi
	testl	%edi, %edi
	je	L875
	movl	%ebp, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	%edi, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, 0(%ebp)
	call	__ZL14nullskintexidsj
L875:
	addl	$4, %ebp
	cmpl	%ebp, %ebx
	jne	L876
	movl	144(%esi), %esi
	testl	%esi, %esi
	jne	L874
L908:
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L870
	.cfi_endproc
LFE137:
	.p2align 4
	.globl	_md_undefinetile.isra.0
	.def	_md_undefinetile.isra.0;	.scl	2;	.type	32;	.endef
_md_undefinetile.isra.0:
LFB139:
	.cfi_startproc
	movl	_mdinited, %edx
	testl	%edx, %edx
	je	L913
	cmpl	$30719, %eax
	ja	L913
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	leal	(%eax,%eax,4), %eax
	movl	$-1, %edx
	movl	$-1, %ecx
	leal	_tile2model(,%eax,4), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movw	%dx, _tile2model(,%eax,4)
	movl	8(%ebx), %eax
	movw	%cx, 4(%ebx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	12(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, 8(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, 12(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L913:
	ret
	.cfi_endproc
LFE139:
	.section .rdata,"dr"
LC57:
	.ascii "Skin \"%s\" not found.\12\0"
	.align 4
LC58:
	.ascii "Unable to load cached data: %s (error %x)\0"
LC59:
	.ascii "source/build/src/texcache.cpp\0"
	.align 4
LC60:
	.ascii "Failed loading skin file \"%s\".\12\0"
	.align 4
LC61:
	.ascii "Load skin: p%d-e%d \"%s\"... cached... %d ms\12\0"
LC62:
	.ascii "Cached skin \"%s\"\12\0"
	.align 4
LC63:
	.ascii "Load skin: p%d-e%d \"%s\"... %d ms\12\0"
	.text
	.p2align 4
	.globl	_mdloadskin
	.def	_mdloadskin;	.scl	2;	.type	32;	.endef
_mdloadskin:
LFB142:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-8, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$652, %esp
	movl	(%edi), %eax
	cmpl	$2, (%ebx)
	cmove	%esi, %eax
	cmpl	$255, %ecx
	ja	L918
	movl	68(%ebx), %edi
	testl	%edi, %edi
	je	L918
	movl	%ebx, -600(%ebp)
	xorl	%ebx, %ebx
	movl	%ecx, -592(%ebp)
	movl	%edx, -584(%ebp)
	testl	%ecx, %ecx
	jne	L1139
	movl	%eax, -588(%ebp)
	movl	$-1, %edx
	movl	-584(%ebp), %eax
	movl	$2, %esi
	jmp	L921
	.p2align 4
	.p2align 4,,10
	.p2align 3
L966:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L936
L921:
	cmpb	$0, (%edi)
	jne	L966
	movl	4(%edi), %ecx
	cmpl	%eax, %ecx
	je	L1140
	testl	%ecx, %ecx
	jne	L966
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L962
	testl	%eax, %eax
	je	L960
	testl	%edx, %edx
	movl	$1, %ecx
	cmovle	%edi, %ebx
	movl	144(%edi), %edi
	cmovle	%ecx, %edx
	testl	%edi, %edi
	jne	L921
	.p2align 4
	.p2align 3
L936:
	movl	-592(%ebp), %eax
	cmpl	$251, %eax
	jg	L918
	testl	%ebx, %ebx
	je	L918
	movl	12(%ebx), %esi
	movl	%esi, -588(%ebp)
	movl	_globalnoeffect, %esi
	testl	%esi, %esi
	jne	L1052
	movzwl	_hictinting(,%eax,8), %eax
	leal	0(,%eax,8), %edx
	andl	$7, %eax
	andl	$1536, %edx
	movl	%edx, %esi
	orl	%eax, %esi
	leal	16(,%esi,4), %edi
L967:
	movl	-588(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	-272(%ebp), %edx
	addl	$1, %eax
	movl	%edx, -596(%ebp)
	movl	$255, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L968
	testb	$8, %al
	jne	L1141
	testb	$4, %al
	jne	L1142
	testl	%eax, %eax
	je	L969
	movl	-588(%ebp), %ecx
	movzbl	(%ecx), %edx
	movb	%dl, -272(%ebp)
	testb	$2, %al
	je	L969
	movzwl	-2(%ecx,%eax), %edx
	movw	%dx, -274(%ebp,%eax)
L969:
	movl	-588(%ebp), %eax
	movb	$0, -17(%ebp)
	cmpb	$0, (%eax)
	je	L918
	movl	16(%ebx,%esi,4), %eax
	testl	%eax, %eax
	jne	L916
	leal	(%ebx,%edi), %eax
	movl	%ebx, %edi
	movl	%eax, -608(%ebp)
L980:
	movl	-608(%ebp), %eax
	xorl	%edx, %edx
	movl	$0, (%eax)
	movl	-596(%ebp), %eax
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1143
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_kclose
	leal	-528(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-528(%ebp), %eax
	movl	_globalnoeffect, %edx
	movl	%eax, -628(%ebp)
	movl	-524(%ebp), %eax
	movl	%eax, -632(%ebp)
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	L992
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	movw	%ax, -616(%ebp)
	movzbl	-616(%ebp), %eax
	andl	$-57, %eax
L992:
	movzbl	%al, %eax
	movl	%ebx, %ecx
	movl	%eax, 4(%esp)
	movl	-592(%ebp), %eax
	sall	$8, %eax
	movl	%eax, (%esp)
	movl	-596(%ebp), %edx
	leal	-528(%ebp), %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	movl	%eax, -616(%ebp)
	testl	%eax, %eax
	jne	L993
	leal	-560(%ebp), %eax
	xorl	%esi, %esi
	movl	$0, -576(%ebp)
	movl	$0, -572(%ebp)
	movl	$1, -636(%ebp)
	movl	%eax, -624(%ebp)
L994:
	movl	_globalnoeffect, %eax
	movb	$-1, -560(%ebp)
	movb	$1, -577(%ebp)
	testl	%eax, %eax
	je	L1002
	xorl	%eax, %eax
L1003:
	movl	-616(%ebp), %edx
	movl	%esi, -564(%ebp)
	leal	-576(%ebp), %ecx
	movl	-624(%ebp), %esi
	movl	%edx, -568(%ebp)
	movl	%ebx, %edx
	movl	%esi, 16(%esp)
	movl	-592(%ebp), %esi
	movl	%eax, 8(%esp)
	leal	-577(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-568(%ebp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	-596(%ebp), %eax
	call	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1144
	movl	-568(%ebp), %eax
	movl	-564(%ebp), %edx
	cmpb	$-1, -560(%ebp)
	setne	%cl
	movl	%eax, -616(%ebp)
	movl	%edx, -620(%ebp)
	movb	%cl, -637(%ebp)
	testb	$1, _glinfo+28
	jne	L1006
	imull	%eax, %edx
	subl	$1, %edx
	js	L1006
	movl	%edi, -588(%ebp)
	leal	(%esi,%edx,4), %eax
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L1007:
	leal	2(%eax), %ebx
/APP
 # 734 "source/build/src/mdsprite.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	subl	$1, %edx
	subl	$4, %eax
	cmpl	$-1, %edx
	jne	L1007
	movl	%edi, %ecx
	movl	-588(%ebp), %edi
L1006:
	movzbl	%cl, %eax
	movl	%eax, -588(%ebp)
	cmpl	$251, -592(%ebp)
	jg	L1008
	movl	-600(%ebp), %ebx
	movl	%eax, 48(%ebx)
L1008:
	cmpl	$1, -636(%ebp)
	jne	L1009
	movl	-608(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	subl	$8, %esp
L1009:
	movl	-608(%ebp), %eax
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movzbl	_glinfo+28, %eax
	movzbl	1(%edi), %edx
	andl	$1, %eax
	cmpb	$1, %al
	movl	-588(%ebp), %eax
	sbbl	%ebx, %ebx
	xorl	%ecx, %ecx
	andl	$-26585, %ebx
	addl	$32993, %ebx
	cmpb	$0, -577(%ebp)
	setne	%cl
	sall	$16, %eax
	sall	$17, %ecx
	orl	%eax, %ecx
	movl	%edx, %eax
	sall	$13, %eax
	andl	$262144, %eax
	orl	%eax, %ecx
	movl	%edx, %eax
	sall	$15, %edx
	sall	$8, %eax
	movzwl	%dx, %edx
	andl	$4096, %eax
	orl	%ecx, %eax
	movl	-620(%ebp), %ecx
	orl	%edx, %eax
	movl	-616(%ebp), %edx
	orl	$8193, %eax
	movl	%ecx, -564(%ebp)
	movl	%edx, -568(%ebp)
	movl	%eax, 16(%esp)
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$1, %eax
	movl	%edx, 12(%esp)
	movl	%ebx, (%esp)
	movl	-568(%ebp), %edx
	movl	-564(%ebp), %ecx
	call	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%esi, %esi
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1001:
	movl	-632(%ebp), %eax
	movl	$1000, %edx
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -628(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -588(%ebp)
	movl	-600(%ebp), %eax
	movl	76(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1011
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	cmpl	-616(%ebp), %eax
	je	L1145
L1012:
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm1
	movl	-600(%ebp), %eax
	cvtsi2ssl	-616(%ebp), %xmm0
	cvtsi2ssl	%edx, %xmm2
	movl	(%eax), %eax
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-620(%ebp), %xmm0
	divss	%xmm0, %xmm2
	cmpl	$2, %eax
	je	L1146
	cmpl	$3, %eax
	je	L1147
L1013:
	movl	-584(%ebp), %eax
	movl	-600(%ebp), %ebx
	addl	$1, %eax
	movl	%eax, 76(%ebx)
L1011:
	movl	_glad_glTexParameteri, %eax
	testb	$2, 1(%edi)
	jne	L1020
	movl	_gltexfiltermode, %ebx
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	leal	(%ebx,%ebx,2), %eax
	leal	_glfiltermodes(,%eax,4), %eax
	subl	$12, %esp
	movl	8(%eax), %edx
	movl	%eax, -584(%ebp)
	movl	$10240, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	movl	-584(%ebp), %eax
	subl	$12, %esp
	movl	4(%eax), %eax
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	movl	%eax, 8(%esp)
	call	*_glad_glTexParameteri
	movl	_glad_glTexParameterf, %eax
	subl	$12, %esp
	cmpl	$3, _rendmode
	je	L1148
L1035:
	movss	LC56, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jnb	L1022
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L1022:
	movss	%xmm0, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	subl	$12, %esp
	movl	$10497, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$10497, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	testl	%esi, %esi
	jne	L1025
	testb	$64, _glinfo+29
	je	L1025
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L1025
	movzbl	1(%edi), %eax
	testb	$1, %al
	jne	L1025
	movl	_glusetexcompr, %edx
	cmpl	$2, %edx
	je	L1026
	testl	%edx, %edx
	je	L1025
	testb	$32, %al
	jne	L1025
L1026:
	movl	-616(%ebp), %ebx
	cmpl	$1, %ebx
	jle	L1027
	leal	-1(%ebx), %ecx
	movl	$1, %edx
	testl	%ecx, %ebx
	jne	L1028
L1027:
	movl	-620(%ebp), %ebx
	xorl	%edx, %edx
	cmpl	$1, %ebx
	jle	L1028
	leal	-1(%ebx), %edx
	testl	%edx, %ebx
	setne	%dl
L1028:
	xorl	%ecx, %ecx
	testb	$48, %al
	movl	-576(%ebp), %eax
	movzbl	%dl, %edx
	cmove	_r_downsize, %ecx
	sarl	%cl, %eax
	movl	%ecx, -536(%ebp)
	movl	%eax, -548(%ebp)
	movl	-572(%ebp), %eax
	sarl	%cl, %eax
	movzbl	-637(%ebp), %ecx
	movl	%eax, -544(%ebp)
	xorl	%eax, %eax
	testb	$48, 1(%edi)
	setne	%al
	addl	%ecx, %ecx
	sall	$3, %eax
	orl	%ecx, %eax
	orl	%edx, %eax
	leal	-552(%ebp), %edx
	movl	%eax, -540(%ebp)
	leal	-528(%ebp), %eax
	call	_texcache_writetex_fromdriver
	movl	_gloadtile_willprint, %edi
	testl	%edi, %edi
	je	L1030
	movl	-624(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-556(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -560(%ebp), %eax
	addl	%edx, %eax
	subl	-588(%ebp), %eax
	cmpl	$9, %eax
	jle	L1031
	cmpl	$0, _globalnoeffect
	jne	L1032
	movl	-592(%ebp), %ebx
	movzwl	_hictinting(,%ebx,8), %edx
	movl	%edx, %esi
	andl	$199, %esi
L1032:
	movl	%eax, 16(%esp)
	movl	-596(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-592(%ebp), %eax
	movl	$LC61, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L1031:
	movl	$0, _gloadtile_willprint
L1033:
	movl	-608(%ebp), %eax
	movl	(%eax), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1143:
	.cfi_restore_state
	movl	-596(%ebp), %eax
	movl	$LC57, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	-588(%ebp), %eax
	movb	$0, (%eax)
	.p2align 4
	.p2align 3
L918:
	xorl	%eax, %eax
L916:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1139:
	.cfi_restore_state
	movl	%eax, -588(%ebp)
	movl	$-1, %esi
	testl	%edx, %edx
	je	L1039
	movl	%ecx, %eax
	jmp	L935
	.p2align 4,,10
	.p2align 3
L923:
	testb	%cl, %cl
	jne	L928
	movl	4(%edi), %edx
	cmpl	%edx, -584(%ebp)
	je	L1149
	testl	%edx, %edx
	jne	L928
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L1150
	cmpl	$-1, %esi
	movl	$0, %ecx
	sete	%dl
	testb	%dl, %dl
	cmovne	%edi, %ebx
	cmovne	%ecx, %esi
	.p2align 4
	.p2align 3
L928:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L936
L935:
	movzbl	(%edi), %ecx
	cmpl	%ecx, %eax
	jne	L923
	movl	4(%edi), %edx
	cmpl	%edx, -584(%ebp)
	je	L1151
	testl	%edx, %edx
	jne	L928
	movl	-588(%ebp), %edx
	cmpl	%edx, 8(%edi)
	je	L1152
	testl	%esi, %esi
	movl	$1, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L928
	.p2align 4,,10
	.p2align 3
L1140:
	movl	-588(%ebp), %ecx
	cmpl	%ecx, 8(%edi)
	je	L925
	testl	%eax, %eax
	jne	L960
	movl	-588(%ebp), %ecx
	cmpl	%ecx, 8(%edi)
	je	L1153
L960:
	cmpl	$1, %edx
	cmovle	%edi, %ebx
	cmovle	%esi, %edx
	jmp	L966
L1153:
	cmpl	$2, %edx
	movl	$3, %ecx
	cmovle	%edi, %ebx
	cmovle	%ecx, %edx
	jmp	L966
	.p2align 4,,10
	.p2align 3
L962:
	cmpl	$4, %edx
	movl	$4, %ecx
	cmovne	%edi, %ebx
	cmovne	%ecx, %edx
	jmp	L966
L1039:
	movl	-592(%ebp), %ecx
	jmp	L922
	.p2align 4,,10
	.p2align 3
L1129:
	testb	%dl, %dl
	jne	L939
	movl	4(%edi), %eax
	testl	%eax, %eax
	je	L1154
	.p2align 4
	.p2align 3
L939:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L936
L922:
	movzbl	(%edi), %edx
	cmpl	%edx, %ecx
	jne	L1129
	movl	4(%edi), %eax
	testl	%eax, %eax
	jne	L939
	movl	-588(%ebp), %eax
	cmpl	8(%edi), %eax
	je	L925
	movl	-588(%ebp), %eax
	cmpl	%eax, 8(%edi)
	je	L1155
	testl	%esi, %esi
	movl	$1, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L939
	.p2align 4,,10
	.p2align 3
L1149:
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L1156
	cmpl	$1, %esi
	movl	$2, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L928
	.p2align 4,,10
	.p2align 3
L1151:
	movl	-588(%ebp), %edx
	cmpl	8(%edi), %edx
	jne	L928
L925:
	movl	12(%edi), %eax
	movl	%eax, -588(%ebp)
	movl	_globalnoeffect, %eax
	movl	%eax, -632(%ebp)
	testl	%eax, %eax
	je	L1157
	movl	$0, -636(%ebp)
	movl	$16, %eax
	xorl	%ebx, %ebx
L950:
	addl	%edi, %eax
	leal	-272(%ebp), %esi
	movl	%eax, -608(%ebp)
	movl	-588(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	$255, %edx
	movl	%esi, -596(%ebp)
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L951
	testb	$8, %al
	jne	L1158
	testb	$4, %al
	jne	L1159
	testl	%eax, %eax
	je	L952
	movl	-588(%ebp), %esi
	movzbl	(%esi), %edx
	movb	%dl, -272(%ebp)
	testb	$2, %al
	jne	L1160
L952:
	movl	-588(%ebp), %eax
	movb	$0, -17(%ebp)
	cmpb	$0, (%eax)
	je	L918
	leal	4(%ebx), %edx
	movl	(%edi,%edx,4), %eax
	testl	%eax, %eax
	jne	L916
	cmpl	$251, -592(%ebp)
	jle	L980
	movl	_nextmodelid, %eax
	movl	%eax, -616(%ebp)
	testl	%eax, %eax
	jle	L980
	movl	-632(%ebp), %ecx
	movl	_models, %eax
	testl	%ecx, %ecx
	je	L1135
	movl	%edi, -628(%ebp)
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	movl	%eax, %edx
L987:
	movl	(%edx,%ecx,4), %eax
	movl	68(%eax), %edi
	testl	%edi, %edi
	je	L982
	movl	-628(%ebp), %eax
	movl	%edx, -620(%ebp)
	movl	%ecx, -624(%ebp)
	movl	12(%eax), %esi
	.p2align 4
	.p2align 3
L984:
	movl	%esi, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L986
	movl	(%edi,%ebx,4), %eax
	testl	%eax, %eax
	jne	L1136
L986:
	movl	144(%edi), %edi
	testl	%edi, %edi
	jne	L984
	movl	-620(%ebp), %edx
	movl	-624(%ebp), %ecx
L982:
	addl	$1, %ecx
	cmpl	-616(%ebp), %ecx
	jne	L987
L1138:
	movl	-628(%ebp), %edi
	jmp	L980
	.p2align 4,,10
	.p2align 3
L1154:
	movl	-588(%ebp), %eax
	cmpl	8(%edi), %eax
	je	L1161
	cmpl	$1, %esi
	movl	$2, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L939
	.p2align 4,,10
	.p2align 3
L1150:
	cmpl	$2, %esi
	movl	$3, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L928
	.p2align 4,,10
	.p2align 3
L1156:
	cmpl	$5, %esi
	movl	$5, %edx
	cmovne	%edi, %ebx
	cmovne	%edx, %esi
	jmp	L928
L1161:
	cmpl	$5, %esi
	movl	$5, %eax
	cmovne	%edi, %ebx
	cmovne	%eax, %esi
	jmp	L939
L968:
	movl	-588(%ebp), %ecx
	movl	-16(%ecx,%eax), %edx
	movl	%edx, -288(%ebp,%eax)
	movl	-12(%ecx,%eax), %edx
	movl	%edx, -284(%ebp,%eax)
	movl	-8(%ecx,%eax), %edx
	movl	%edx, -280(%ebp,%eax)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L969
	movl	%ebx, -620(%ebp)
	andl	$-16, %eax
	movl	%ecx, %edx
	movl	-596(%ebp), %ecx
	movl	%esi, -624(%ebp)
	movl	%edi, -628(%ebp)
	movl	%eax, -608(%ebp)
	xorl	%eax, %eax
L973:
	movl	12(%edx,%eax), %ebx
	movl	4(%edx,%eax), %edi
	movl	8(%edx,%eax), %esi
	movl	%ebx, -616(%ebp)
	movl	(%edx,%eax), %ebx
	movl	%edi, 4(%ecx,%eax)
	movl	%ebx, (%ecx,%eax)
	movl	%esi, 8(%ecx,%eax)
	movl	-616(%ebp), %ebx
	movl	%ebx, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	-608(%ebp), %eax
	jb	L973
	movl	-620(%ebp), %ebx
	movl	-624(%ebp), %esi
	movl	-628(%ebp), %edi
	jmp	L969
L1052:
	movl	$16, %edi
	xorl	%esi, %esi
	jmp	L967
L1157:
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	leal	0(,%eax,8), %edx
	andl	$7, %eax
	andl	$1536, %edx
	movl	%edx, %ebx
	orl	%eax, %ebx
	movl	%ebx, -636(%ebp)
	leal	16(,%ebx,4), %eax
	jmp	L950
L1155:
	cmpl	$3, %esi
	movl	$4, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L939
L1141:
	movl	-588(%ebp), %ecx
	movl	(%ecx), %edx
	movl	4(%ecx), %ecx
	movl	%ecx, -604(%ebp)
	movl	%ecx, -268(%ebp)
	movl	-588(%ebp), %ecx
	movl	%edx, -608(%ebp)
	movl	%edx, -272(%ebp)
	movl	-8(%ecx,%eax), %edx
	movl	-4(%ecx,%eax), %ecx
	movl	%edx, -608(%ebp)
	movl	%ecx, -604(%ebp)
	movl	%edx, -280(%ebp,%eax)
	movl	%ecx, -276(%ebp,%eax)
	jmp	L969
	.p2align 4,,10
	.p2align 3
L951:
	movl	-588(%ebp), %ecx
	movl	-16(%ecx,%eax), %edx
	movl	%edx, -288(%ebp,%eax)
	movl	-12(%ecx,%eax), %edx
	movl	%edx, -284(%ebp,%eax)
	movl	-8(%ecx,%eax), %edx
	movl	%edx, -280(%ebp,%eax)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L952
	andl	$-16, %eax
	movl	%edi, -624(%ebp)
	xorl	%edx, %edx
	movl	%eax, -620(%ebp)
	movl	%ebx, -628(%ebp)
	movl	-596(%ebp), %ebx
L956:
	movl	8(%ecx,%edx), %esi
	movl	4(%ecx,%edx), %edi
	movl	%esi, -616(%ebp)
	movl	(%ecx,%edx), %esi
	movl	12(%ecx,%edx), %eax
	movl	%edi, 4(%ebx,%edx)
	movl	%esi, (%ebx,%edx)
	movl	-616(%ebp), %esi
	movl	%eax, 12(%ebx,%edx)
	movl	%esi, 8(%ebx,%edx)
	addl	$16, %edx
	cmpl	-620(%ebp), %edx
	jb	L956
	movl	-624(%ebp), %edi
	movl	-628(%ebp), %ebx
	jmp	L952
L1136:
	movl	-636(%ebp), %edx
	movl	%edi, %ebx
	movl	-628(%ebp), %edi
	addl	$4, %edx
	movl	(%ebx,%edx,4), %eax
	movl	%eax, (%edi,%edx,4)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1030:
	.cfi_restore_state
	movl	-596(%ebp), %eax
	movl	$LC62, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L1025:
	movl	_gloadtile_willprint, %ebx
	testl	%ebx, %ebx
	je	L1033
	movl	-624(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-556(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, -560(%ebp), %eax
	addl	%edx, %eax
	subl	-588(%ebp), %eax
	cmpl	$9, %eax
	jle	L1033
	movl	_globalnoeffect, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	L1034
	movl	-592(%ebp), %ebx
	movzwl	_hictinting(,%ebx,8), %edx
	andl	$199, %edx
L1034:
	movl	%eax, 16(%esp)
	movl	-596(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-592(%ebp), %eax
	movl	$LC63, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1033
L1152:
	cmpl	$3, %esi
	movl	$4, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L928
L993:
	movl	$1, %ecx
	leal	-552(%ebp), %edx
	leal	-528(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	$0, -576(%ebp)
	movl	$0, -572(%ebp)
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1054
	movl	$0, -560(%ebp)
	movl	-608(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	-608(%ebp), %eax
	subl	$8, %esp
	movl	(%eax), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	-548(%ebp), %eax
	movl	%eax, -616(%ebp)
	movl	-544(%ebp), %eax
	movl	%eax, -620(%ebp)
	.p2align 4
	.p2align 3
L995:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L995
	leal	-560(%ebp), %eax
	movl	%eax, -624(%ebp)
	movl	%eax, %edx
	leal	-552(%ebp), %eax
	call	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L1162
	movzbl	-540(%ebp), %eax
	movlps	-548(%ebp), %xmm3
	shrb	%al
	movlps	%xmm3, -576(%ebp)
	andl	$1, %eax
	movb	%al, -637(%ebp)
	cmpl	$251, -592(%ebp)
	jg	L1001
	movzbl	-637(%ebp), %eax
	movl	-600(%ebp), %ebx
	movl	%eax, 48(%ebx)
	jmp	L1001
L1020:
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*%eax
	subl	$12, %esp
	movl	$9729, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9987, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	movl	_glad_glTexParameterf, %eax
	subl	$12, %esp
	jmp	L1035
L1002:
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	movw	%ax, -620(%ebp)
	andl	$199, %eax
	jmp	L1003
L1135:
	movl	%edi, -628(%ebp)
	movl	-632(%ebp), %ecx
	movl	%edx, %ebx
	movl	%eax, %edx
L981:
	movl	(%edx,%ecx,4), %eax
	movl	68(%eax), %edi
	testl	%edi, %edi
	je	L988
	movl	-628(%ebp), %eax
	movl	%edx, -620(%ebp)
	movl	%ecx, -624(%ebp)
	movl	12(%eax), %esi
	.p2align 4
	.p2align 3
L990:
	movl	%esi, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L989
	movl	(%edi,%ebx,4), %ecx
	testl	%ecx, %ecx
	jne	L1136
L989:
	movl	144(%edi), %edi
	testl	%edi, %edi
	jne	L990
	movl	-620(%ebp), %edx
	movl	-624(%ebp), %ecx
L988:
	addl	$1, %ecx
	cmpl	-616(%ebp), %ecx
	jne	L981
	jmp	L1138
L1158:
	movl	-588(%ebp), %esi
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, -616(%ebp)
	movl	%ecx, -612(%ebp)
	movl	%edx, -272(%ebp)
	movl	%ecx, -268(%ebp)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, -616(%ebp)
	movl	%ecx, -612(%ebp)
	movl	%edx, -280(%ebp,%eax)
	movl	%ecx, -276(%ebp,%eax)
	jmp	L952
L1159:
	movl	-588(%ebp), %esi
	movl	(%esi), %edx
	movl	%edx, -272(%ebp)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	jmp	L952
L1054:
	movl	-616(%ebp), %eax
	movl	$0, -616(%ebp)
	movl	%eax, -636(%ebp)
	leal	-560(%ebp), %eax
	movl	%eax, -624(%ebp)
	jmp	L994
L1144:
	movl	-596(%ebp), %eax
	movl	$LC60, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	-588(%ebp), %eax
	movb	$0, (%eax)
	jmp	L918
L1145:
	cmpl	%edx, -620(%ebp)
	jne	L1012
	jmp	L1013
L1148:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L1035
	movss	LC56, %xmm0
	orl	_gltexfiltermode, %ebx
	je	L1022
	jmp	L1035
L1146:
	movl	-600(%ebp), %eax
	movl	92(%eax), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1013
	addl	$4, %ebx
L1016:
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1015:
	movss	(%eax), %xmm0
	addl	$12, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%eax)
	movss	-8(%eax), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -8(%eax)
	subl	$1, %edx
	jne	L1015
	leal	-3(%ecx,%ecx,2), %eax
	movl	%ebx, %edx
	leal	16(%ebx,%eax,4), %ebx
	movl	12(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	L1016
	jmp	L1013
L1147:
	movl	-600(%ebp), %ebx
	movl	164(%ebx), %eax
	testl	%eax, %eax
	jle	L1013
	movl	%edi, -632(%ebp)
	movl	%esi, %edi
L1019:
	movl	%ecx, %esi
	sall	$7, %esi
	addl	196(%ebx), %esi
	movl	80(%esi), %edx
	subl	$1, %edx
	js	L1017
	movl	%ecx, -628(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L1018:
	movl	116(%esi), %ecx
	leal	0(,%edx,8), %eax
	addl	%eax, %ecx
	movss	(%ecx), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%ecx)
	addl	116(%esi), %eax
	movss	4(%eax), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 4(%eax)
	subl	$1, %edx
	jnb	L1018
	movl	-628(%ebp), %ecx
L1017:
	addl	$1, %ecx
	cmpl	%ecx, 164(%ebx)
	jg	L1019
	movl	%edi, %esi
	movl	-632(%ebp), %edi
	jmp	L1013
L1160:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -274(%ebp,%eax)
	jmp	L952
L1142:
	movl	-588(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, -272(%ebp)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	jmp	L969
L1162:
	jg	L1163
L999:
	movl	$3, -636(%ebp)
	movl	-620(%ebp), %esi
	jmp	L994
L1163:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jl	L999
	movl	-560(%ebp), %eax
	movl	$LC58, 12(%esp)
	movl	$855, 8(%esp)
	movl	%eax, 20(%esp)
	movl	__ZL15texcache_errors.lto_priv.0(,%ecx,4), %eax
	movl	$LC59, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L999
	.cfi_endproc
LFE142:
	.p2align 4
	.globl	_updateanimation
	.def	_updateanimation;	.scl	2;	.type	32;	.endef
_updateanimation:
LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$28, %esp
	cmpl	$1, 32(%eax)
	jle	L1177
	movswl	14(%edx), %eax
	movl	%edx, %esi
	movl	%eax, 20(%esp)
	leal	0(,%eax,4), %edx
	jmp	L1167
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1169:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %edi
	cmpb	_tile2model+17(,%edi,4), %cl
	je	L1225
L1167:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1169
L1168:
	movl	20(%esp), %eax
	movl	_r_animsmoothing, %edi
	movb	$0, 12(%esp)
	leal	0(,%eax,4), %edx
	movl	%edi, 8(%esp)
	addl	%edx, %eax
	movswl	_tile2model+2(,%eax,4), %ecx
	movl	%ecx, 40(%ebx)
	movl	%ecx, 36(%ebx)
	testl	%edi, %edi
	je	L1170
	cmpw	$0, _tile2model+6(,%eax,4)
	setne	12(%esp)
L1170:
	movl	_spritesmooth, %edi
	movswl	30(%esi), %eax
	movl	_spriteext, %esi
	movl	%edi, 16(%esp)
	movl	%esi, 24(%esp)
	cmpl	$16639, %eax
	jbe	L1171
	leal	166390(%edi), %eax
	movl	%eax, 16(%esp)
	movl	$1064896, %eax
L1172:
	movl	24(%esp), %esi
	movl	%ebx, %edi
	addl	%esi, %eax
	movl	64(%ebx), %esi
	movl	%eax, 24(%esp)
	testl	%esi, %esi
	jne	L1173
	jmp	L1174
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1175:
	movl	16(%esi), %esi
	testl	%esi, %esi
	je	L1174
L1173:
	cmpl	(%esi), %ecx
	jne	L1175
	movl	24(%esp), %eax
	movswl	14(%eax), %eax
	cmpl	%ecx, %eax
	je	L1263
	movl	24(%esp), %ebx
	movl	_mdtims, %eax
	movw	%cx, 14(%ebx)
	movl	%eax, 16(%ebx)
	movl	$0x00000000, 60(%edi)
	movl	(%esi), %eax
	cmpb	$0, 12(%esp)
	je	L1264
	movl	16(%esp), %ebx
	movl	%eax, 40(%edi)
	movl	$1, %esi
	movswl	6(%ebx), %eax
	movl	%eax, 36(%edi)
	movw	%si, 8(%ebx)
	movl	36(%edi), %eax
	movl	40(%edi), %ecx
L1184:
	movl	32(%edi), %edx
	cmpl	%eax, %edx
	jg	L1220
	movl	$0, 36(%edi)
L1220:
	cmpl	%ecx, %edx
	jg	L1164
	movl	$0, 40(%edi)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1171:
	.cfi_restore_state
	movl	16(%esp), %esi
	leal	(%eax,%eax,4), %edi
	sall	$6, %eax
	leal	(%esi,%edi,2), %edi
	movl	%edi, 16(%esp)
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1225:
	movl	%eax, 20(%esp)
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1174:
	cmpb	$0, 12(%esp)
	jne	L1265
L1177:
	movl	$0x00000000, 60(%ebx)
L1164:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1264:
	.cfi_restore_state
	movl	%eax, 24(%esp)
	movss	24(%esp), %xmm0
	movl	%eax, %ecx
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, 36(%edi)
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1265:
	movl	16(%esp), %eax
	movswl	6(%eax), %eax
	cmpl	%eax, %ecx
	je	L1266
	movl	16(%esp), %ebx
	cmpw	$0, 8(%ebx)
	je	L1267
	movl	16(%esp), %ebx
	movswl	4(%ebx), %eax
	cmpl	%eax, %ecx
	je	L1182
	movl	_mdtims, %eax
	movl	24(%esp), %esi
	movl	%eax, 16(%esi)
	movl	$0x00000000, 60(%edi)
L1259:
	movl	$1, %eax
	movw	%ax, 8(%ebx)
	movzwl	4(%ebx), %eax
	movw	%ax, 6(%ebx)
	movl	36(%edi), %eax
	movw	%ax, 4(%ebx)
L1182:
	xorl	%esi, %esi
L1181:
	movss	LC56, %xmm0
	movl	20(%esp), %eax
	xorps	%xmm1, %xmm1
	addl	%edx, %eax
	movzwl	_tile2model+6(,%eax,4), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC65, %xmm1
	divss	%xmm1, %xmm0
	mulss	LC66, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	$-2004318071, %edx
	movl	_mdtims, %ebx
	movl	%eax, 12(%esp)
	imull	__ZL19clockTicksPerSecond.lto_priv.0, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, %ecx
	imull	%edx
	movl	%ebx, %eax
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$6, %edx
	subl	%ecx, %edx
	movl	24(%esp), %ecx
	movl	%edx, 4(%esp)
	subl	16(%ecx), %eax
	imull	%edx, %eax
	movl	%eax, %ebx
	movl	_r_animsmoothing, %eax
	movl	%eax, 8(%esp)
	testl	%ebx, %ebx
	js	L1268
	testl	%esi, %esi
	je	L1194
	movl	$131072, %eax
	movl	$65536, %ecx
L1189:
	cmpl	%eax, %ebx
	jl	L1195
	movl	12(%esp), %edx
	testl	%edx, %edx
	je	L1195
	movl	%ecx, %eax
	cltd
	idivl	4(%esp)
	movl	24(%esp), %edx
	addl	%eax, 16(%edx)
L1195:
	testb	$1, 12(%esi)
	je	L1196
	leal	-65535(%ecx), %eax
	cmpl	%ebx, %eax
	jg	L1191
	movl	8(%esp), %eax
	leal	-65536(%ecx), %edx
	testl	%eax, %eax
	jne	L1212
	.p2align 4
	.p2align 3
L1192:
	movl	%edx, %eax
	sarl	$16, %eax
	addl	(%esi), %eax
	leal	1(%eax), %ecx
	movl	%eax, 36(%edi)
	movl	%ecx, 40(%edi)
	cmpl	4(%esi), %ecx
	jle	L1218
	movl	(%esi), %ecx
	movl	%ecx, 40(%edi)
L1218:
	movl	16(%esp), %ebx
	movw	%ax, 6(%ebx)
	movl	36(%edi), %eax
	movl	40(%edi), %ecx
L1193:
	movzwl	%dx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC67, %xmm0
	movss	%xmm0, 60(%edi)
	jmp	L1184
	.p2align 4,,10
	.p2align 3
L1263:
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	jne	L1181
	movl	8(%esi), %eax
	movl	_mdtims, %ebx
	movl	$-2004318071, %edx
	movl	%eax, 12(%esp)
	imull	__ZL19clockTicksPerSecond.lto_priv.0, %eax
	movl	%ebx, 20(%esp)
	movl	%eax, %ebx
	imull	%edx
	movl	20(%esp), %eax
	addl	%ebx, %edx
	sarl	$31, %ebx
	sarl	$6, %edx
	subl	%ebx, %edx
	movl	%edx, %ebx
	movl	%edx, 4(%esp)
	movl	24(%esp), %edx
	subl	16(%edx), %eax
	imull	%ebx, %eax
	movl	%eax, %ebx
	movl	4(%esi), %eax
	addl	$1, %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
	sall	$17, %eax
	sall	$16, %ecx
	testl	%ebx, %ebx
	jns	L1189
	movl	24(%esp), %ebx
	movl	20(%esp), %edx
	movl	%edx, 16(%ebx)
	xorl	%ebx, %ebx
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1196:
	movl	%ebx, %edx
	cmpl	%ecx, %ebx
	jl	L1262
	subl	%ecx, %edx
	cmpl	%ecx, %edx
	jge	L1211
L1262:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1192
L1212:
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1192
L1199:
	movl	(%esi), %ecx
	movl	16(%esp), %eax
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	cmpl	$65535, %ebx
	jle	L1193
	jmp	L1216
L1268:
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	movl	%ebx, 16(%eax)
	testl	%esi, %esi
	je	L1227
	movl	12(%esi), %edx
	andl	$1, %edx
	jne	L1228
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L1192
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1192
	movl	(%esi), %ecx
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	jmp	L1193
L1194:
	movl	%ebx, %edx
	cmpl	$65535, %ebx
	jle	L1190
	movl	8(%esp), %eax
	leal	-65536(%ebx), %edx
	testl	%eax, %eax
	je	L1210
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1210
	movl	16(%esp), %eax
	movswl	4(%eax), %eax
	movl	%eax, 40(%edi)
L1216:
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	movl	%ebx, 16(%eax)
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	movl	$0x00000000, 60(%edi)
	movw	%ax, 8(%ebx)
	movl	40(%edi), %eax
	movl	%eax, 36(%edi)
	movw	%ax, 6(%ebx)
	movl	36(%edi), %eax
	movl	40(%edi), %ecx
	jmp	L1184
L1228:
	xorl	%ebx, %ebx
L1191:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1200
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1200
	movl	%ebx, %edx
	jmp	L1199
L1267:
	movl	_mdtims, %eax
	movl	24(%esp), %esi
	movl	%eax, 16(%esi)
	movl	$1, %eax
	xorl	%esi, %esi
	movl	$0x00000000, 60(%edi)
	movw	%ax, 8(%ebx)
	movl	36(%edi), %eax
	movw	%ax, 4(%ebx)
	jmp	L1181
L1200:
	movl	%ebx, %edx
	jmp	L1192
L1211:
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L1192
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1192
	jmp	L1199
	.p2align 4,,10
	.p2align 3
L1227:
	xorl	%edx, %edx
L1190:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1210
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1210
	movl	16(%esp), %eax
	movswl	4(%eax), %ecx
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	jmp	L1193
	.p2align 4,,10
	.p2align 3
L1210:
	movl	36(%edi), %eax
	leal	1(%eax), %ecx
	movl	%ecx, 40(%edi)
	jmp	L1218
L1266:
	movl	16(%esp), %eax
	movswl	4(%eax), %eax
	cmpl	%eax, %ecx
	je	L1177
	movl	24(%esp), %ebx
	movl	_mdtims, %eax
	movl	%eax, 16(%ebx)
	movl	16(%esp), %ebx
	movl	$0x00000000, 60(%edi)
	jmp	L1259
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	_md3_vox_calcmat_common
	.def	_md3_vox_calcmat_common;	.scl	2;	.type	32;	.endef
_md3_vox_calcmat_common:
LFB155:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm2, %xmm2
	xorps	%xmm5, %xmm5
	movaps	%xmm0, %xmm1
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$40, %esp
	movswl	30(%eax), %esi
	movl	_maxspritesonscreen, %edi
	movss	_gcosang2, %xmm4
	sall	$6, %esi
	addl	_spriteext, %esi
	movl	40(%esi), %eax
	addl	(%ebx), %eax
	subl	_globalposx, %eax
	cvtsi2ssl	%eax, %xmm2
	movl	44(%esi), %eax
	addl	4(%ebx), %eax
	subl	_globalposy, %eax
	movswl	20(%esi), %esi
	cvtsi2ssl	%eax, %xmm5
	movswl	28(%ebx), %eax
	mulss	%xmm0, %xmm2
	movss	LC68, %xmm0
	mulss	%xmm1, %xmm5
	movss	_gvrcorrection, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm0, %xmm5
	movss	_gshang, %xmm0
	mulss	%xmm0, %xmm4
	mulss	_gsinang2, %xmm0
	divss	%xmm1, %xmm4
	divss	%xmm1, %xmm0
	movss	%xmm0, 16(%esp)
	cmpl	%ebx, _tspriteptr(,%edi,4)
	je	L1273
	leal	1024(%eax,%esi), %ebx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC70, %xmm3
	leal	512(%eax,%esi), %eax
	andl	$2047, %ebx
	andl	$2047, %eax
	movswl	_sintable(%ebx,%ebx), %ebx
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%ebx, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm3, %xmm1
L1271:
	movss	LC56, %xmm3
	movaps	%xmm1, %xmm6
	mulss	%xmm5, %xmm6
	subss	%xmm0, %xmm3
	movaps	%xmm3, %xmm7
	mulss	%xmm2, %xmm7
	mulss	%xmm5, %xmm3
	movss	_gstang, %xmm5
	mulss	%xmm1, %xmm2
	addss	%xmm6, %xmm7
	movss	_gsinang, %xmm6
	subss	%xmm2, %xmm3
	movss	_gctang, %xmm2
	movss	%xmm7, 36(%esp)
	movaps	%xmm0, %xmm7
	mulss	%xmm2, %xmm6
	mulss	_gcosang, %xmm2
	movss	%xmm3, 32(%esp)
	movaps	%xmm5, %xmm3
	mulss	%xmm4, %xmm3
	mulss	16(%esp), %xmm5
	subss	%xmm6, %xmm3
	addss	%xmm5, %xmm2
	movaps	%xmm0, %xmm5
	mulss	%xmm3, %xmm5
	mulss	%xmm2, %xmm7
	movaps	%xmm5, %xmm6
	movaps	%xmm1, %xmm5
	mulss	%xmm2, %xmm5
	mulss	32(%esp), %xmm2
	addss	%xmm5, %xmm6
	movss	%xmm6, (%ecx)
	movss	_gstang, %xmm5
	movss	%xmm6, 28(%esp)
	movss	_gchang, %xmm6
	mulss	%xmm5, %xmm6
	movss	%xmm6, 24(%esp)
	movss	%xmm6, 16(%ecx)
	movaps	%xmm1, %xmm6
	mulss	%xmm3, %xmm6
	mulss	36(%esp), %xmm3
	subss	%xmm6, %xmm7
	addss	%xmm2, %xmm3
	movss	_gsinang, %xmm2
	mulss	%xmm5, %xmm2
	movss	%xmm7, 32(%ecx)
	mulss	_gcosang, %xmm5
	movss	%xmm3, 20(%esp)
	movss	%xmm3, 48(%ecx)
	movss	_gctang, %xmm3
	mulss	%xmm3, %xmm4
	addss	%xmm2, %xmm4
	movss	16(%esp), %xmm2
	mulss	%xmm3, %xmm2
	mulss	_gchang, %xmm3
	subss	%xmm5, %xmm2
	movaps	%xmm0, %xmm5
	mulss	%xmm4, %xmm5
	movss	%xmm3, 20(%ecx)
	movaps	%xmm5, %xmm6
	movaps	%xmm1, %xmm5
	mulss	%xmm2, %xmm5
	addss	%xmm5, %xmm6
	movaps	%xmm1, %xmm5
	mulss	%xmm4, %xmm5
	mulss	36(%esp), %xmm4
	movss	%xmm6, 16(%esp)
	movss	%xmm6, 4(%ecx)
	movaps	%xmm0, %xmm6
	mulss	%xmm2, %xmm6
	mulss	32(%esp), %xmm2
	subss	%xmm5, %xmm6
	addss	%xmm2, %xmm4
	movss	%xmm6, 12(%esp)
	movss	%xmm4, 8(%esp)
	movss	%xmm6, 36(%ecx)
	movss	%xmm4, 52(%ecx)
	movss	_gchang, %xmm2
	mulss	_gcosang2, %xmm2
	movaps	%xmm2, %xmm6
	movss	_gchang, %xmm2
	mulss	_gsinang2, %xmm2
	movaps	%xmm2, %xmm4
	movaps	%xmm0, %xmm2
	mulss	%xmm6, %xmm2
	mulss	%xmm4, %xmm0
	movaps	%xmm2, %xmm5
	movaps	%xmm1, %xmm2
	mulss	%xmm6, %xmm1
	mulss	%xmm4, %xmm2
	mulss	36(%esp), %xmm6
	subss	%xmm1, %xmm0
	movss	32(%esp), %xmm1
	addss	%xmm2, %xmm5
	movss	_gshang, %xmm2
	xorps	LC71, %xmm2
	mulss	%xmm4, %xmm1
	movss	12(%esp), %xmm4
	mulss	_gvrcorrection, %xmm2
	movss	%xmm0, 40(%ecx)
	movss	%xmm5, 8(%ecx)
	addss	%xmm1, %xmm6
	movss	24(%esp), %xmm1
	movss	%xmm2, 24(%ecx)
	movss	%xmm6, 56(%ecx)
	mulss	(%edx), %xmm7
	mulss	8(%edx), %xmm1
	addss	%xmm7, %xmm1
	movss	28(%esp), %xmm7
	mulss	4(%edx), %xmm7
	addss	20(%esp), %xmm7
	addss	%xmm7, %xmm1
	movss	%xmm1, 48(%ecx)
	mulss	8(%edx), %xmm3
	movss	16(%esp), %xmm1
	mulss	(%edx), %xmm4
	mulss	4(%edx), %xmm1
	addss	8(%esp), %xmm1
	addss	%xmm4, %xmm3
	addss	%xmm1, %xmm3
	movss	%xmm3, 52(%ecx)
	mulss	8(%edx), %xmm2
	mulss	(%edx), %xmm0
	mulss	4(%edx), %xmm5
	addss	%xmm0, %xmm2
	addss	%xmm6, %xmm5
	addss	%xmm5, %xmm2
	movss	%xmm2, 56(%ecx)
	addl	$40, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1273:
	.cfi_restore_state
	movswl	_globalang, %ebx
	xorps	%xmm0, %xmm0
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	subl	%ebx, %eax
	movl	_qglobalang, %ebx
	movss	%xmm4, 12(%esp)
	addl	%esi, %eax
	movss	%xmm5, 20(%esp)
	leal	1024(%eax), %esi
	movss	%xmm2, 24(%esp)
	andl	$2047, %esi
	movl	%eax, 28(%esp)
	sall	$16, %esi
	addl	%ebx, %esi
	andl	$134217727, %esi
	cvtsi2ssl	%esi, %xmm0
	mulss	LC67, %xmm0
	mulss	LC69, %xmm0
	movss	%xmm0, (%esp)
	call	_sinf
	movl	28(%esp), %eax
	xorps	%xmm1, %xmm1
	fstps	36(%esp)
	movss	36(%esp), %xmm0
	addl	$512, %eax
	andl	$2047, %eax
	movss	%xmm0, 32(%esp)
	sall	$16, %eax
	addl	%ebx, %eax
	andl	$134217727, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC67, %xmm1
	mulss	LC69, %xmm1
	movss	%xmm1, (%esp)
	call	_sinf
	movss	32(%esp), %xmm0
	movl	8(%esp), %edx
	fstps	36(%esp)
	movss	24(%esp), %xmm2
	movss	36(%esp), %xmm1
	movss	20(%esp), %xmm5
	movss	12(%esp), %xmm4
	movl	4(%esp), %ecx
	jmp	L1271
	.cfi_endproc
LFE155:
	.p2align 4
	.globl	__ZL7md3freeP10md3model_t.lto_priv.0
	.def	__ZL7md3freeP10md3model_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7md3freeP10md3model_t.lto_priv.0:
LFB156:
	.cfi_startproc
	testl	%eax, %eax
	je	L1303
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	64(%eax), %ebx
	testl	%ebx, %ebx
	je	L1276
	.p2align 4
	.p2align 3
L1277:
	movl	%ebx, %eax
	movl	16(%ebx), %ebx
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%ebx, %ebx
	jne	L1277
L1276:
	movl	68(%esi), %ebx
	testl	%ebx, %ebx
	je	L1278
	.p2align 4
	.p2align 3
L1279:
	movl	%ebx, %edi
	movl	144(%ebx), %ebx
	movl	_g_sm_heap, %ecx
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%ebx, %ebx
	jne	L1279
L1278:
	movl	196(%esi), %ebx
	testl	%ebx, %ebx
	je	L1280
	movl	164(%esi), %edi
	subl	$1, %edi
	js	L1281
	.p2align 4
	.p2align 3
L1282:
	movl	%edi, %eax
	movl	_g_sm_heap, %ecx
	subl	$1, %edi
	sall	$7, %eax
	addl	%eax, %ebx
	movl	108(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	124(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	196(%esi), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	cmpl	$-1, %edi
	jne	L1282
L1281:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L1280:
	movl	192(%esi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	188(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	24(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	200(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	204(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	208(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	212(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	216(%esi), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1283
	movl	%eax, 4(%esp)
	movl	164(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 16
	movl	216(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, 216(%esi)
L1283:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	addl	$8, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1303:
	ret
	.cfi_endproc
LFE156:
	.p2align 4
	.globl	_freeallmodels
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
_freeallmodels:
LFB157:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_models, %ecx
	testl	%ecx, %ecx
	je	L1307
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L1308
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	jmp	L1311
	.p2align 4,,10
	.p2align 3
L1310:
	addl	$1, %ebx
	cmpl	%ebx, _nextmodelid
	jle	L1323
L1311:
	movl	(%ecx,%ebx,4), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	je	L1324
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L1310
	movl	%edx, %eax
	addl	$1, %ebx
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	_models, %ecx
	cmpl	%ebx, _nextmodelid
	jg	L1311
L1323:
	movl	12(%esp), %ebx
	.cfi_restore 3
L1308:
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, _models
	movl	$0, __ZL16nummodelsalloced
	movl	$0, _nextmodelid
L1307:
	movl	$650240, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_tile2model, (%esp)
	call	_memset
	movl	$_tile2model+8, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1312:
	movl	$0, (%eax)
	addl	$20, %eax
	movl	$0, -16(%eax)
	cmpl	$_tile2model+614408, %eax
	jne	L1312
	movl	__ZL8vertlist, %eax
	movl	$30720, __ZL8curextra
	testl	%eax, %eax
	je	L1313
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL8vertlist
	movl	$0, __ZL13maxmodelverts
	movl	$0, __ZL15allocmodelverts
	movl	$0, __ZL12maxmodeltris
L1313:
	call	_md_freevbos
	movl	__ZL6tribuf, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL6tribuf
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
L1324:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	%edx, %eax
	call	_voxfree
	movl	_models, %ecx
	jmp	L1310
	.cfi_endproc
LFE157:
	.section .rdata,"dr"
LC72:
	.ascii "max EXTRATILES reached\0"
LC73:
	.ascii "source/build/src/mdsprite.cpp\0"
	.text
	.p2align 4
	.globl	_md_defineframe
	.def	_md_defineframe;	.scl	2;	.type	32;	.endef
_md_defineframe:
LFB159:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	_mdinited, %ecx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	44(%esp), %edx
	movss	%xmm0, 16(%esp)
	testl	%ecx, %ecx
	je	L1345
L1326:
	cmpl	_nextmodelid, %esi
	jnb	L1339
	cmpl	$30719, %ebx
	ja	L1340
	testl	%edi, %edi
	je	L1328
	movl	__ZL8curextra, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	cmpl	$32511, %ecx
	je	L1346
	leal	0(,%ebx,4), %eax
	leal	(%eax,%ebx), %ebp
	sall	$2, %ebp
	cmpw	$-1, _tile2model(%ebp)
	je	L1347
	movzbl	_tile2model+17(%ebp), %ebp
	cmpl	%ebp, %edx
	jne	L1334
	jmp	L1331
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1335:
	leal	0(,%ebx,4), %eax
	leal	(%eax,%ebx), %ebp
	movzbl	_tile2model+17(,%ebp,4), %ebp
	cmpl	%ebp, %edx
	je	L1331
L1334:
	addl	%ebx, %eax
	leal	_tile2model(,%eax,4), %eax
	movswl	4(%eax), %ebx
	cmpw	$-1, %bx
	jne	L1335
	movw	%cx, 4(%eax)
	leal	(%ecx,%ecx,4), %eax
	movb	%dl, _tile2model+17(,%eax,4)
	leal	1(%ecx), %eax
	movl	%eax, __ZL8curextra
L1336:
	movl	%ecx, %ebx
L1331:
	movl	_models, %eax
	movl	(%eax,%esi,4), %ebp
	cmpl	$1, 0(%ebp)
	je	L1348
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL15framename2indexP9mdmodel_tPKc
	movl	%eax, %edi
	cmpl	%eax, 32(%ebp)
	je	L1349
	leal	(%ebx,%ebx,4), %eax
	movss	16(%esp), %xmm0
	mulss	LC74, %xmm0
	leal	_tile2model(,%eax,4), %ebx
	movw	%si, _tile2model(,%eax,4)
	movl	40(%esp), %eax
	movw	%di, 2(%ebx)
	movb	%al, 16(%ebx)
	movss	%xmm0, (%esp)
	call	_lrintf
	movw	%ax, 6(%ebx)
	movl	32(%esp), %ebp
	.cfi_restore 5
L1325:
	movl	%edi, %eax
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1345:
	.cfi_restore_state
	call	_freeallmodels
	movl	44(%esp), %edx
	movl	$1, _mdinited
	jmp	L1326
	.p2align 4,,10
	.p2align 3
L1348:
	.cfi_offset 5, -8
	leal	(%ebx,%ebx,4), %edx
	xorl	%eax, %eax
	xorl	%edi, %edi
	movw	%si, _tile2model(,%edx,4)
	movb	$0, _tile2model+16(,%edx,4)
	movw	%ax, _tile2model+2(,%edx,4)
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1325
	.p2align 4,,10
	.p2align 3
L1347:
	.cfi_restore_state
	movb	%dl, _tile2model+17(%ebp)
	jmp	L1331
	.p2align 4,,10
	.p2align 3
L1346:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1336
	movl	$LC72, 12(%esp)
	movl	$35, 8(%esp)
	movl	$LC73, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL8curextra, %ebx
	jmp	L1331
L1349:
	movl	32(%esp), %ebp
	.cfi_restore 5
L1328:
	movl	$-3, %edi
	jmp	L1325
L1339:
	movl	$-1, %edi
	jmp	L1325
L1340:
	movl	$-2, %edi
	jmp	L1325
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	_md_defineanimation
	.def	_md_defineanimation;	.scl	2;	.type	32;	.endef
_md_defineanimation:
LFB162:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	_mdinited, %eax
	movl	%edi, 36(%esp)
	.cfi_offset 7, -8
	movl	%ecx, %edi
	testl	%eax, %eax
	je	L1359
L1351:
	cmpl	_nextmodelid, %ebx
	jnb	L1355
	movl	_models, %eax
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	(%eax,%ebx,4), %ebx
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	cmpl	$1, (%ebx)
	jle	L1353
	movl	%ebx, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -12
	call	__ZL15framename2indexP9mdmodel_tPKc
	movl	32(%ebx), %esi
	cmpl	%eax, %esi
	je	L1356
	movl	%eax, 8(%esp)
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZL15framename2indexP9mdmodel_tPKc
	cmpl	%eax, %esi
	je	L1357
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	movl	%eax, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1354
	movl	8(%esp), %edx
	movl	%edx, (%eax)
	movl	12(%esp), %edx
	movl	%edx, 4(%eax)
	movl	16(%esp), %edx
	movl	%edx, 8(%eax)
	movl	20(%esp), %edx
	movl	%edx, 12(%eax)
	movl	24(%esp), %edx
	movl	%edx, 16(%eax)
	movl	64(%ebx), %edx
	movl	%edx, 16(%eax)
	movl	%eax, 64(%ebx)
	movl	32(%esp), %esi
	.cfi_restore 6
L1353:
	xorl	%eax, %eax
L1350:
	movl	28(%esp), %ebx
	movl	36(%esp), %edi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1359:
	.cfi_restore_state
	movl	%edx, 4(%esp)
	call	_freeallmodels
	movl	4(%esp), %edx
	movl	$1, _mdinited
	jmp	L1351
	.p2align 4,,10
	.p2align 3
L1354:
	.cfi_offset 6, -12
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1355:
	.cfi_restore 6
	movl	$-1, %eax
	jmp	L1350
L1357:
	.cfi_offset 6, -12
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$-3, %eax
	jmp	L1350
L1356:
	.cfi_restore_state
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	$-2, %eax
	jmp	L1350
	.cfi_endproc
LFE162:
	.p2align 4
	.globl	_md_defineskin
	.def	_md_defineskin;	.scl	2;	.type	32;	.endef
_md_defineskin:
LFB163:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_mdinited, %eax
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	44(%esp), %esi
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ecx, %edx
	movss	%xmm0, 8(%esp)
	movss	%xmm1, 12(%esp)
	movss	%xmm2, 16(%esp)
	testl	%eax, %eax
	je	L1388
L1361:
	cmpl	_nextmodelid, %ebx
	jnb	L1379
	testl	%edi, %edi
	je	L1380
	cmpl	$255, %edx
	ja	L1381
	movl	_models, %eax
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	(%eax,%ebx,4), %ebp
	movl	0(%ebp), %eax
	cmpl	$1, %eax
	jle	L1363
	cmpl	$2, %eax
	movl	68(%ebp), %ebx
	movl	$0, %eax
	cmovne	48(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 48(%esp)
	testl	%ebx, %ebx
	jne	L1368
	jmp	L1365
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1366:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1389
	movl	%eax, %ebx
L1368:
	cmpb	%dl, (%ebx)
	jne	L1366
	cmpl	%esi, 4(%ebx)
	jne	L1366
	movl	48(%esp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1366
	movl	12(%ebx), %eax
	movb	%dl, 20(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movzbl	20(%esp), %edx
L1372:
	movl	52(%esp), %eax
	movss	8(%esp), %xmm3
	movb	%dl, (%ebx)
	movss	12(%esp), %xmm4
	movss	16(%esp), %xmm5
	movl	%esi, 4(%ebx)
	movb	%al, 1(%ebx)
	movl	48(%esp), %eax
	movss	%xmm3, 148(%ebx)
	movss	%xmm4, 152(%ebx)
	movss	%xmm5, 156(%ebx)
	movl	%eax, 8(%ebx)
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1373
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	%esi, 12(%ebx)
L1363:
	movl	36(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
L1360:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1388:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	call	_freeallmodels
	movl	20(%esp), %edx
	movl	$1, _mdinited
	jmp	L1361
	.p2align 4,,10
	.p2align 3
L1389:
	.cfi_offset 5, -8
	movl	$160, (%esp)
	movb	%dl, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	movzbl	20(%esp), %edx
	je	L1377
	movl	$0, 144(%eax)
	xorl	%ecx, %ecx
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
L1370:
	movl	$0, (%eax,%ecx)
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	movl	$0, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	$144, %ecx
	jb	L1370
	movl	%eax, 144(%ebx)
	movl	%eax, %ebx
	jmp	L1372
L1373:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L1365:
	movl	$160, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	20(%esp), %edx
	je	L1377
	movl	$0, 144(%ebx)
	xorl	%eax, %eax
	movl	$0, 148(%ebx)
	movl	$0, 152(%ebx)
	movl	$0, 156(%ebx)
L1374:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$144, %eax
	jb	L1374
	movl	%ebx, 68(%ebp)
	jmp	L1372
L1377:
	movl	$160, %eax
	call	__Z13handle_memerri
L1379:
	.cfi_restore 5
	movl	$-1, %eax
	jmp	L1360
L1381:
	movl	$-3, %eax
	jmp	L1360
L1380:
	movl	$-2, %eax
	jmp	L1360
	.cfi_endproc
LFE163:
	.section .rdata,"dr"
	.align 4
LC76:
	.ascii "%s: Triangle index out of bounds!\12\0"
	.text
	.p2align 4
	.globl	_md_loadmodel
	.def	_md_loadmodel;	.scl	2;	.type	32;	.endef
_md_loadmodel:
LFB164:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	_mdinited, %eax
	testl	%eax, %eax
	je	L1526
L1391:
	movl	__ZL16nummodelsalloced, %eax
	cmpl	%eax, _nextmodelid
	jl	L1516
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	leal	1024(,%eax,4), %ebx
	movl	_models, %eax
	movl	%ebx, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%esi, 72(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	jne	L1477
	testl	%ebx, %ebx
	jne	L1393
L1477:
	movl	%eax, _models
	movl	%edi, %eax
	movl	68(%esp), %ebx
	.cfi_restore 3
	addl	$256, __ZL16nummodelsalloced
	call	_voxload
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1395
L1527:
	testl	%edi, %edi
	je	L1471
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	call	_kopen4load.part.0
	movl	%eax, %ebp
	cmpl	$-1, %eax
	je	L1522
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	64(%esp), %edx
	movl	$4, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	64(%esp), %eax
	cmpl	$844121161, %eax
	je	L1397
	cmpl	$860898377, %eax
	je	L1398
	movl	%ebp, %eax
	call	_kclose
	movl	80(%esp), %ebp
	.cfi_restore 5
L1471:
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	movl	$-1, %eax
	addl	$84, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1516:
	.cfi_def_cfa_offset 88
	.cfi_offset 7, -12
	movl	%edi, %eax
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	call	_voxload
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1527
L1395:
	movl	_nextmodelid, %eax
	leal	1(%eax), %edx
	movl	%edx, _nextmodelid
	movl	_models, %edx
	movl	%esi, (%edx,%eax,4)
	movl	_nextmodelid, %eax
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	addl	$84, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	subl	$1, %eax
	ret
L1526:
	.cfi_def_cfa_offset 88
	.cfi_offset 7, -12
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L1391
L1397:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL7md2loadiPKc
	movl	%eax, %esi
	movl	%ebp, %eax
	call	_kclose
	testl	%esi, %esi
	je	L1522
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
L1400:
	movl	%edi, (%esp)
	leal	88(%esi), %eax
	movl	%eax, 24(%esp)
	call	_strlen
	movl	$62, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1429
	testb	$8, %al
	jne	L1528
	testb	$4, %al
	jne	L1529
	testl	%eax, %eax
	jne	L1530
L1430:
	movl	156(%esi), %ecx
	movb	$0, 150(%esi)
	testl	%ecx, %ecx
	jle	L1436
	movl	$0, 12(%esp)
	xorps	%xmm5, %xmm5
	movss	LC75, %xmm4
	movl	$0, 20(%esp)
	.p2align 4
	.p2align 3
L1462:
	movl	20(%esp), %ebx
	addl	188(%esi), %ebx
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	movl	$0x00000000, 36(%ebx)
	movl	164(%esi), %edx
	testl	%edx, %edx
	jle	L1474
	movl	196(%esi), %ecx
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1453:
	movl	%ebp, %edi
	sall	$7, %edi
	leal	(%ecx,%edi), %edx
	movl	80(%edx), %eax
	testl	%eax, %eax
	jle	L1438
	imull	12(%esp), %eax
	movl	120(%edx), %edx
	leal	(%edx,%eax,8), %edx
	testl	%ebp, %ebp
	jne	L1475
	movswl	(%edx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, (%ebx)
	movswl	2(%edx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 4(%ebx)
	movswl	4(%edx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	(%ebx), %eax
	movl	%eax, 12(%ebx)
	movl	4(%ebx), %eax
	movss	%xmm0, 8(%ebx)
	movl	%eax, 16(%ebx)
	movl	8(%ebx), %eax
	movl	%eax, 20(%ebx)
	xorl	%eax, %eax
L1440:
	movl	196(%esi), %ecx
	addl	$1, %eax
	cmpl	80(%ecx,%edi), %eax
	jge	L1438
L1439:
	movswl	(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1441
	movss	%xmm0, (%ebx)
	movswl	(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1441:
	comiss	12(%ebx), %xmm0
	jbe	L1443
	movss	%xmm0, 12(%ebx)
L1443:
	movswl	2(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	4(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1445
	movss	%xmm0, 4(%ebx)
	movswl	2(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1445:
	comiss	16(%ebx), %xmm0
	jbe	L1447
	movss	%xmm0, 16(%ebx)
L1447:
	movswl	4(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	8(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1449
	movss	%xmm0, 8(%ebx)
	movswl	4(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1449:
	comiss	20(%ebx), %xmm0
	jbe	L1440
	movss	%xmm0, 20(%ebx)
	movl	196(%esi), %ecx
	addl	$1, %eax
	cmpl	80(%ecx,%edi), %eax
	jl	L1439
L1438:
	addl	$1, %ebp
	cmpl	164(%esi), %ebp
	jl	L1453
	movss	(%ebx), %xmm1
	movss	4(%ebx), %xmm2
	addss	12(%ebx), %xmm1
	addss	16(%ebx), %xmm2
	movss	8(%ebx), %xmm3
	addss	20(%ebx), %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm3
L1437:
	movss	%xmm1, 24(%ebx)
	movss	%xmm2, 28(%ebx)
	movss	%xmm3, 32(%ebx)
	movl	164(%esi), %eax
	testl	%eax, %eax
	jle	L1476
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1459:
	movl	%ebp, %edi
	sall	$7, %edi
	addl	196(%esi), %edi
	movl	80(%edi), %eax
	testl	%eax, %eax
	jle	L1455
	imull	12(%esp), %eax
	movl	120(%edi), %edx
	leal	(%edx,%eax,8), %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1458:
	movswl	(%edx,%eax,8), %ecx
	xorps	%xmm7, %xmm7
	xorps	%xmm0, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm7
	movswl	2(%edx,%eax,8), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movswl	4(%edx,%eax,8), %ecx
	cvtsi2ssl	%ecx, %xmm6
	subss	%xmm1, %xmm7
	subss	%xmm2, %xmm0
	mulss	%xmm7, %xmm7
	subss	%xmm3, %xmm6
	mulss	%xmm0, %xmm0
	mulss	%xmm6, %xmm6
	addss	%xmm7, %xmm0
	addss	%xmm6, %xmm0
	comiss	36(%ebx), %xmm0
	jbe	L1456
	movss	%xmm0, 36(%ebx)
L1456:
	addl	$1, %eax
	cmpl	80(%edi), %eax
	jl	L1458
L1455:
	addl	$1, %ebp
	cmpl	164(%esi), %ebp
	jl	L1459
	movss	36(%ebx), %xmm0
	ucomiss	%xmm0, %xmm5
	ja	L1512
	sqrtss	%xmm0, %xmm0
L1454:
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	addl	$56, 20(%esp)
	movss	%xmm0, 36(%ebx)
	cmpl	156(%esi), %eax
	jl	L1462
L1436:
	cmpl	$4, _glrendmode
	je	L1520
	movl	164(%esi), %eax
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	jle	L1520
	movl	196(%esi), %eax
	xorl	%ebp, %ebp
	leal	80(%eax), %edi
L1470:
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	jle	L1464
	movl	(%edi), %edx
	movl	28(%edi), %eax
	xorl	%ecx, %ecx
	jmp	L1469
	.p2align 4,,10
	.p2align 3
L1531:
	cmpl	%edx, 4(%eax)
	jnb	L1465
	cmpl	%edx, 8(%eax)
	jnb	L1465
	addl	$1, %ecx
	addl	$12, %eax
	cmpl	%ecx, %ebx
	je	L1464
L1469:
	cmpl	%edx, (%eax)
	jb	L1531
L1465:
	movl	24(%esp), %eax
	movl	$LC76, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	(%esi), %eax
	cmpl	$1, %eax
	je	L1532
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	L1533
	movl	68(%esp), %ebx
	.cfi_restore 3
L1522:
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1471
	.p2align 4,,10
	.p2align 3
L1475:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	xorl	%eax, %eax
	jmp	L1439
L1476:
	xorps	%xmm0, %xmm0
	jmp	L1454
L1474:
	xorps	%xmm3, %xmm3
	movaps	%xmm3, %xmm2
	movaps	%xmm3, %xmm1
	jmp	L1437
L1464:
	addl	$1, %ebp
	subl	$-128, %edi
	cmpl	%ebp, 12(%esp)
	jne	L1470
L1520:
	movl	68(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1395
L1398:
	.cfi_offset 5, -8
	movl	$232, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1401
	movl	$0, 216(%eax)
	leal	4(%eax), %eax
	xorl	%edx, %edx
	movl	$0, 216(%eax)
	movl	$0, 220(%eax)
	movl	$0, 224(%eax)
L1402:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$224, %edx
	jb	L1402
	movl	$3, (%esi)
	leal	80(%esi), %edx
	movl	$108, %ecx
	movl	%ebp, %eax
	movl	$0x3c23d70a, 8(%esi)
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$108, %eax
	jne	L1525
	cmpl	$860898377, 80(%esi)
	je	L1406
	cmpl	$15, 84(%esi)
	jne	L1525
L1406:
	movl	168(%esi), %eax
	movl	172(%esi), %edx
	xorl	%ecx, %ecx
	movl	%eax, 72(%esi)
	movl	156(%esi), %eax
	movl	%eax, 32(%esi)
	movl	180(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%eax, 28(%esp)
	movl	%ebp, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	imull	$56, 156(%esi), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1511
	movl	%eax, 188(%esi)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	jne	L1525
	movl	160(%esi), %eax
	testl	%eax, %eax
	jne	L1410
	movl	$0, 192(%esi)
L1411:
	movl	180(%esi), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	164(%esi), %ebx
	movl	_g_sm_heap, %ecx
	sall	$7, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1414
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memset
	movl	164(%esi), %ebx
	movl	12(%esp), %edx
	movl	$0, 20(%esp)
	testl	%ebx, %ebx
	movl	%edx, 196(%esi)
	jle	L1416
	movl	$0, 24(%esp)
	movl	%edi, 56(%esp)
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
L1415:
	movl	24(%esp), %eax
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	sall	$7, %eax
	leal	(%edx,%eax), %ebx
	movl	%esi, %edx
	movl	%ebp, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebx, %edx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$108, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$108, %eax
	jne	L1523
	movl	88(%ebx), %eax
	movl	92(%ebx), %edi
	movl	%eax, 36(%esp)
	movl	84(%ebx), %eax
	movl	%edi, 40(%esp)
	movl	96(%ebx), %edi
	leal	(%eax,%eax,2), %eax
	leal	0(,%eax,4), %edx
	movl	80(%ebx), %eax
	movl	%edi, 44(%esp)
	movl	100(%ebx), %edi
	movl	%edx, 28(%esp)
	leal	0(,%eax,8), %ecx
	imull	72(%ebx), %eax
	movl	%edi, 48(%esp)
	imull	$68, 76(%ebx), %edi
	movl	%ecx, 32(%esp)
	sall	$3, %eax
	movl	%eax, 52(%esp)
	addl	%edi, %edx
	addl	%ecx, %eax
	movl	_g_sm_heap, %ecx
	addl	%eax, %edx
	movl	%edx, (%esp)
	movl	%edx, 60(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1418
	movl	%eax, 108(%ebx)
	addl	28(%esp), %eax
	xorl	%ecx, %ecx
	movl	%eax, 112(%ebx)
	addl	%edi, %eax
	movl	%eax, 116(%ebx)
	addl	32(%esp), %eax
	movl	%eax, 120(%ebx)
	movl	36(%esp), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	leal	(%eax,%esi), %edx
	movl	%ebp, %eax
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	108(%ebx), %edx
	movl	28(%esp), %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, 28(%esp)
	jne	L1523
	movl	40(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	addl	%esi, %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	112(%ebx), %edx
	movl	%edi, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1523
	movl	44(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	addl	%esi, %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	116(%ebx), %edx
	movl	32(%esp), %edi
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1523
	movl	48(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	addl	%esi, %edx
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	120(%ebx), %edx
	movl	52(%esp), %edi
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1523
	movl	__ZL13maxmodelverts, %eax
	movl	80(%ebx), %edx
	movl	20(%esp), %edi
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	__ZL12maxmodeltris, %edx
	movl	%eax, __ZL13maxmodelverts
	movl	84(%ebx), %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	12(%esp), %edi
	addl	$1, 24(%esp)
	movl	%edx, __ZL12maxmodeltris
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	cmpl	164(%edi), %eax
	jge	L1514
	movl	196(%edi), %edx
	addl	104(%ebx), %esi
	jmp	L1415
L1429:
	movl	-16(%edi,%eax), %edx
	movl	24(%esp), %ecx
	movl	%edx, -16(%ecx,%eax)
	movl	-12(%edi,%eax), %edx
	movl	%edx, -12(%ecx,%eax)
	movl	-8(%edi,%eax), %edx
	movl	%edx, -8(%ecx,%eax)
	movl	-4(%edi,%eax), %edx
	movl	%edx, -4(%ecx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1430
	andl	$-16, %eax
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
L1434:
	movl	8(%edi,%edx), %ebx
	movl	4(%edi,%edx), %ebp
	movl	%ebx, 12(%esp)
	movl	(%edi,%edx), %eax
	movl	12(%edi,%edx), %ebx
	movl	%ebp, 4(%ecx,%edx)
	movl	%eax, (%ecx,%edx)
	movl	12(%esp), %ebp
	movl	%ebx, 12(%ecx,%edx)
	movl	%ebp, 8(%ecx,%edx)
	addl	$16, %edx
	cmpl	20(%esp), %edx
	jb	L1434
	jmp	L1430
L1393:
	.cfi_restore 5
	movl	%ebx, %eax
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L1530:
	movzbl	(%edi), %edx
	movb	%dl, 88(%esi)
	testb	$2, %al
	je	L1430
	movzwl	-2(%edi,%eax), %edx
	movl	24(%esp), %edi
	movw	%dx, -2(%edi,%eax)
	jmp	L1430
L1523:
	movl	12(%esp), %eax
L1524:
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	%ebp, %eax
	call	_kclose
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1471
L1410:
	.cfi_restore_state
	movl	176(%esi), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	imull	$112, 160(%esi), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1511
	movl	%eax, 192(%esi)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	je	L1411
L1525:
	movl	%esi, %eax
	jmp	L1524
L1511:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1414:
	movl	$128, %eax
	call	__Z13handle_memerri
L1529:
	movl	(%edi), %edx
	movl	24(%esp), %ebx
	movl	%edx, (%ebx)
	movl	-4(%edi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	jmp	L1430
L1528:
	movl	(%edi), %edx
	movl	4(%edi), %ecx
	movl	24(%esp), %ebx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-4(%edi,%eax), %ebp
	movl	-8(%edi,%eax), %edi
	movl	%ebp, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edi, -8(%ebx,%eax)
	movl	%ebp, -4(%ebx,%eax)
	jmp	L1430
L1418:
	movl	60(%esp), %eax
	call	__Z13handle_memerri
L1401:
	movl	$232, %eax
	call	__Z13handle_memerri
L1514:
	movl	12(%esp), %esi
	movl	56(%esp), %edi
L1416:
	movl	20(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1511
	addl	20(%esp), %ebx
	movl	%eax, 204(%esi)
	addl	%ebx, %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1511
	movl	20(%esp), %ebx
	movl	%eax, 208(%esi)
	movl	_g_sm_heap, %ecx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1511
	movl	%eax, 212(%esi)
	movl	%ebp, %eax
	movl	$0, 216(%esi)
	call	_kclose
	jmp	L1400
L1512:
	movss	%xmm0, (%esp)
	call	_sqrtf
	xorps	%xmm5, %xmm5
	movss	LC75, %xmm4
	fstps	28(%esp)
	movss	28(%esp), %xmm0
	jmp	L1454
L1533:
	movl	%esi, %eax
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1471
L1532:
	.cfi_restore_state
	movl	%esi, %eax
	call	_voxfree
	movl	68(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1471
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	_md3postload_polymer.part.0
	.def	_md3postload_polymer.part.0;	.scl	2;	.type	32;	.endef
_md3postload_polymer.part.0:
LFB170:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-16, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	pushl	%ebx
	subl	$184, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	__ZL11mdtrig_init, %edi
	movl	%eax, -116(%ebp)
	testl	%edi, %edi
	je	L1583
L1535:
	movl	-116(%ebp), %eax
	movl	164(%eax), %esi
	testl	%esi, %esi
	jle	L1537
	movl	$0, -184(%ebp)
L1567:
	call	_handleevents.isra.0
	movl	-116(%ebp), %esi
	movl	-184(%ebp), %eax
	sall	$7, %eax
	addl	196(%esi), %eax
	movl	%eax, %edi
	movl	156(%esi), %eax
	imull	80(%edi), %eax
	movl	%eax, %ebx
	sall	$4, %ebx
	subl	%eax, %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1538
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL6tribuf, %eax
	movl	%esi, 124(%edi)
	movl	80(%edi), %esi
	movl	%eax, -180(%ebp)
	cmpl	__ZL11tribufverts, %esi
	jle	L1540
	sall	$2, %esi
	movl	%esi, 4(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, -180(%ebp)
	testl	%eax, %eax
	jne	L1569
	testl	%esi, %esi
	jne	L1541
L1569:
	movl	-180(%ebp), %eax
	movl	80(%edi), %esi
	movl	%eax, __ZL6tribuf
	movl	%esi, __ZL11tribufverts
L1540:
	sall	$2, %esi
	movl	$0, 4(%esp)
	movl	%esi, 8(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-116(%ebp), %esi
	movl	80(%edi), %eax
	movl	156(%esi), %edx
	imull	%eax, %edx
	testl	%edx, %edx
	jle	L1543
	movl	$0, -84(%ebp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1544:
	movl	120(%edi), %eax
	movl	-84(%ebp), %edx
	xorps	%xmm0, %xmm0
	addl	$1, -84(%ebp)
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %esi
	movzbl	7(%eax), %edx
	movzbl	6(%eax), %ecx
	movss	__ZL7g_mdcos(,%edx,4), %xmm1
	cvtsi2ssl	%esi, %xmm0
	movl	124(%edi), %esi
	movss	%xmm0, (%esi,%ebx)
	movswl	2(%eax), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movl	124(%edi), %esi
	movss	%xmm0, 4(%esi,%ebx)
	movswl	4(%eax), %eax
	xorps	%xmm0, %xmm0
	movl	124(%edi), %esi
	cvtsi2ssl	%eax, %xmm0
	movzbl	%cl, %eax
	movl	-116(%ebp), %ecx
	movss	%xmm0, 8(%esi,%ebx)
	movl	124(%edi), %esi
	movss	__ZL7g_mdsin(,%eax,4), %xmm0
	mulss	%xmm0, %xmm1
	mulss	__ZL7g_mdsin(,%edx,4), %xmm0
	movss	%xmm1, 12(%esi,%ebx)
	movl	124(%edi), %esi
	movss	%xmm0, 16(%esi,%ebx)
	movl	124(%edi), %edx
	movss	__ZL7g_mdcos(,%eax,4), %xmm0
	movss	%xmm0, 20(%edx,%ebx)
	movl	80(%edi), %eax
	movl	156(%ecx), %esi
	addl	$60, %ebx
	imull	%eax, %esi
	cmpl	%esi, -84(%ebp)
	jl	L1544
	movl	84(%edi), %ebx
	testl	%ebx, %ebx
	jle	L1545
L1582:
	movl	%eax, -172(%ebp)
	movl	-172(%ebp), %esi
	movl	$0, -168(%ebp)
	movl	-180(%ebp), %edx
	movl	%esi, %eax
	sall	$4, %eax
	subl	%esi, %eax
	movl	%eax, -136(%ebp)
	.p2align 4
	.p2align 3
L1559:
	movl	-168(%ebp), %eax
	movl	108(%edi), %ecx
	movl	-172(%ebp), %ebx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %esi
	movl	(%esi), %eax
	movl	%esi, -120(%ebp)
	cmpl	%ebx, %eax
	jnb	L1546
	cmpl	%ebx, 4(%esi)
	jnb	L1546
	movl	-120(%ebp), %esi
	movl	-172(%ebp), %ecx
	cmpl	%ecx, 8(%esi)
	jnb	L1546
	addl	$1, (%edx,%eax,4)
	movl	4(%esi), %eax
	addl	$1, (%edx,%eax,4)
	movl	8(%esi), %eax
	addl	$1, (%edx,%eax,4)
	movl	-116(%ebp), %eax
	movl	156(%eax), %ecx
	testl	%ecx, %ecx
	jle	L1549
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	$6, -92(%ebp)
	movl	8(%esi), %esi
	movl	$0, -84(%ebp)
	movl	%ecx, %eax
	movl	%edx, -176(%ebp)
	sall	$4, %eax
	movl	%esi, -88(%ebp)
	subl	%ecx, %eax
	movl	%eax, -156(%ebp)
	movl	%ebx, %eax
	sall	$4, %eax
	subl	%ebx, %eax
	movl	%eax, -160(%ebp)
	movl	%esi, %eax
	sall	$4, %eax
	subl	%esi, %eax
	movl	%eax, -164(%ebp)
	imull	$60, %ecx, %eax
	movl	%eax, -124(%ebp)
	movl	%ebx, %eax
	subl	%ecx, %eax
	imull	$60, %eax, %eax
	movl	%eax, -128(%ebp)
	movl	%esi, %eax
	subl	%ecx, %eax
	imull	$60, %eax, %esi
	leal	-72(%ebp), %eax
	movl	%eax, -96(%ebp)
	.p2align 4
	.p2align 3
L1558:
	movl	116(%edi), %edx
	xorps	%xmm5, %xmm5
	movl	124(%edi), %eax
	leal	(%edx,%ebx,8), %ebx
	leal	(%edx,%ecx,8), %ecx
	movss	(%ebx), %xmm0
	movss	4(%ebx), %xmm3
	movl	-88(%ebp), %ebx
	movaps	%xmm0, %xmm1
	movaps	%xmm3, %xmm2
	subss	(%ecx), %xmm1
	leal	(%edx,%ebx,8), %edx
	subss	4(%ecx), %xmm2
	movss	(%edx), %xmm4
	movaps	%xmm4, %xmm7
	movaps	%xmm2, %xmm4
	subss	%xmm0, %xmm7
	movss	4(%edx), %xmm0
	subss	%xmm3, %xmm0
	movaps	%xmm1, %xmm3
	mulss	%xmm7, %xmm4
	mulss	%xmm0, %xmm3
	movss	%xmm0, -88(%ebp)
	subss	%xmm4, %xmm3
	ucomiss	%xmm5, %xmm3
	jp	L1570
	je	L1550
L1570:
	movl	-84(%ebp), %ecx
	imull	80(%edi), %ecx
	movl	-160(%ebp), %ebx
	movl	%ecx, %edx
	sall	$4, %edx
	subl	%ecx, %edx
	movl	-156(%ebp), %ecx
	addl	%edx, %ebx
	movss	(%eax,%ebx,4), %xmm6
	addl	%edx, %ecx
	addl	-164(%ebp), %edx
	movaps	%xmm6, %xmm5
	subss	(%eax,%ecx,4), %xmm5
	movss	%xmm5, -100(%ebp)
	movss	4(%eax,%ebx,4), %xmm5
	movaps	%xmm5, %xmm4
	subss	4(%eax,%ecx,4), %xmm4
	movss	%xmm4, -104(%ebp)
	movss	8(%eax,%ebx,4), %xmm4
	movaps	%xmm4, %xmm0
	subss	8(%eax,%ecx,4), %xmm0
	movss	%xmm0, -108(%ebp)
	movss	(%eax,%edx,4), %xmm0
	subss	%xmm6, %xmm0
	movss	4(%eax,%edx,4), %xmm6
	subss	%xmm5, %xmm6
	movss	8(%eax,%edx,4), %xmm5
	movss	%xmm0, -152(%ebp)
	mulss	%xmm2, %xmm0
	subss	%xmm4, %xmm5
	movss	LC56, %xmm4
	movss	%xmm6, -132(%ebp)
	mulss	%xmm2, %xmm6
	divss	%xmm3, %xmm4
	movss	-104(%ebp), %xmm3
	movss	%xmm5, -112(%ebp)
	movss	-100(%ebp), %xmm5
	mulss	-88(%ebp), %xmm5
	mulss	-112(%ebp), %xmm2
	subss	%xmm0, %xmm5
	movss	-88(%ebp), %xmm0
	mulss	%xmm0, %xmm3
	mulss	-108(%ebp), %xmm0
	subss	%xmm6, %xmm3
	subss	%xmm2, %xmm0
	mulss	%xmm4, %xmm5
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm0
	movaps	%xmm5, %xmm6
	movss	%xmm5, -72(%ebp)
	mulss	%xmm5, %xmm6
	movaps	%xmm3, %xmm2
	movss	%xmm3, -68(%ebp)
	mulss	%xmm3, %xmm2
	movss	%xmm0, -64(%ebp)
	addss	%xmm6, %xmm2
	movaps	%xmm0, %xmm6
	mulss	%xmm0, %xmm6
	addss	%xmm6, %xmm2
	xorps	%xmm6, %xmm6
	ucomiss	%xmm6, %xmm2
	jp	L1571
	je	L1552
L1571:
	movss	LC56, %xmm6
	sqrtss	%xmm2, %xmm2
	divss	%xmm2, %xmm6
	mulss	%xmm6, %xmm5
	mulss	%xmm6, %xmm3
	mulss	%xmm6, %xmm0
	movss	%xmm5, -72(%ebp)
	movss	%xmm3, -68(%ebp)
	movss	%xmm0, -64(%ebp)
L1552:
	movss	-152(%ebp), %xmm0
	movss	-100(%ebp), %xmm2
	movss	-104(%ebp), %xmm3
	mulss	%xmm7, %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm7, %xmm3
	subss	%xmm2, %xmm0
	movss	-132(%ebp), %xmm2
	mulss	%xmm1, %xmm2
	mulss	-112(%ebp), %xmm1
	mulss	%xmm4, %xmm0
	subss	%xmm3, %xmm2
	movss	-108(%ebp), %xmm3
	mulss	%xmm7, %xmm3
	xorps	%xmm7, %xmm7
	movss	%xmm0, -60(%ebp)
	mulss	%xmm4, %xmm2
	subss	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movss	%xmm2, -56(%ebp)
	mulss	%xmm4, %xmm1
	movaps	%xmm2, %xmm4
	mulss	%xmm2, %xmm4
	movss	%xmm1, -52(%ebp)
	addss	%xmm4, %xmm3
	movaps	%xmm1, %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm4, %xmm3
	ucomiss	%xmm7, %xmm3
	jp	L1572
	je	L1554
L1572:
	movss	LC56, %xmm4
	sqrtss	%xmm3, %xmm3
	divss	%xmm3, %xmm4
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm1
	movss	%xmm0, -60(%ebp)
	movss	%xmm2, -56(%ebp)
	movss	%xmm1, -52(%ebp)
L1554:
	movl	-124(%ebp), %ecx
	movl	-92(%ebp), %ebx
	leal	(%ecx,%ebx,4), %edx
	movl	-96(%ebp), %ecx
	movl	-128(%ebp), %ebx
	jmp	L1557
	.p2align 4,,10
	.p2align 3
L1584:
	movl	124(%edi), %eax
	addl	$4, %edx
L1557:
	movss	(%eax,%edx), %xmm1
	movss	(%ecx), %xmm0
	addl	$4, %ecx
	addss	%xmm0, %xmm1
	movss	%xmm1, (%eax,%edx)
	leal	(%ebx,%edx), %eax
	addl	124(%edi), %eax
	movss	(%eax), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%eax)
	leal	(%esi,%edx), %eax
	addl	124(%edi), %eax
	addss	(%eax), %xmm0
	movss	%xmm0, (%eax)
	leal	-48(%ebp), %eax
	cmpl	%ecx, %eax
	jne	L1584
	movl	-116(%ebp), %ecx
	addl	$1, -84(%ebp)
	movl	-84(%ebp), %eax
	cmpl	156(%ecx), %eax
	jge	L1580
	movl	-120(%ebp), %eax
	movl	-136(%ebp), %ebx
	addl	%ebx, -92(%ebp)
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1550:
	movl	-96(%ebp), %ebx
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	jmp	L1554
	.p2align 4,,10
	.p2align 3
L1580:
	movl	-176(%ebp), %edx
L1549:
	addl	$1, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	84(%edi), %eax
	jl	L1559
	movl	-116(%ebp), %ebx
	movl	80(%edi), %eax
	movl	156(%ebx), %esi
	imull	%eax, %esi
L1545:
	testl	%esi, %esi
	jle	L1560
	movl	%esi, -136(%ebp)
	movl	$48, %ebx
	leal	-72(%ebp), %ecx
	movl	%eax, %esi
	movl	$0, -92(%ebp)
	jmp	L1566
L1561:
	movl	124(%edi), %esi
	leal	(%esi,%ebx), %edx
	leal	-36(%esi,%ebx), %esi
	movl	(%esi), %eax
	movl	%eax, (%edx)
	movl	4(%esi), %eax
	movl	%eax, 4(%edx)
	movl	8(%esi), %esi
	movl	-84(%ebp), %eax
	movl	%esi, 8(%edx)
	addl	124(%edi), %eax
	movss	20(%eax), %xmm7
	movss	16(%eax), %xmm2
	movss	32(%eax), %xmm5
	movss	28(%eax), %xmm6
	movss	%xmm2, -88(%ebp)
	movaps	%xmm7, %xmm1
	movss	12(%eax), %xmm3
	movss	(%eax), %xmm0
	mulss	%xmm5, %xmm2
	movss	%xmm6, -108(%ebp)
	mulss	%xmm6, %xmm1
	movss	%xmm7, -104(%ebp)
	mulss	%xmm3, %xmm6
	movss	%xmm3, -120(%ebp)
	movaps	%xmm2, %xmm4
	movss	4(%eax), %xmm2
	subss	%xmm1, %xmm4
	movss	%xmm2, -84(%ebp)
	movaps	%xmm3, %xmm2
	movaps	%xmm6, %xmm1
	mulss	%xmm5, %xmm2
	movss	%xmm6, -128(%ebp)
	movss	%xmm4, -96(%ebp)
	movss	24(%eax), %xmm4
	movss	-96(%ebp), %xmm3
	mulss	%xmm4, %xmm7
	mulss	%xmm0, %xmm3
	movss	%xmm2, -100(%ebp)
	movss	-100(%ebp), %xmm6
	movss	8(%eax), %xmm2
	subss	%xmm7, %xmm6
	movss	%xmm7, -124(%ebp)
	movss	-88(%ebp), %xmm7
	mulss	-84(%ebp), %xmm6
	mulss	%xmm4, %xmm7
	subss	%xmm6, %xmm3
	movaps	%xmm1, %xmm6
	subss	%xmm7, %xmm6
	xorps	%xmm7, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm6, %xmm3
	ucomiss	%xmm7, %xmm3
	jp	L1563
	je	L1585
L1563:
	movss	LC56, %xmm7
	movss	-84(%ebp), %xmm1
	divss	%xmm3, %xmm7
	movaps	%xmm1, %xmm3
	mulss	%xmm4, %xmm3
	mulss	%xmm2, %xmm4
	movss	%xmm7, -112(%ebp)
	movaps	%xmm7, %xmm6
	movaps	%xmm3, %xmm7
	movss	-108(%ebp), %xmm3
	shufps	$0, %xmm6, %xmm6
	movups	%xmm6, -152(%ebp)
	mulss	%xmm2, %xmm3
	movaps	%xmm3, %xmm6
	movaps	%xmm5, %xmm3
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm5
	subss	%xmm3, %xmm6
	movss	-88(%ebp), %xmm3
	subss	%xmm4, %xmm5
	movss	-104(%ebp), %xmm4
	mulss	%xmm2, %xmm3
	movss	%xmm6, -132(%ebp)
	movss	-104(%ebp), %xmm6
	mulss	%xmm0, %xmm4
	mulss	%xmm1, %xmm6
	movss	-124(%ebp), %xmm1
	subss	-100(%ebp), %xmm1
	subss	%xmm3, %xmm6
	movss	-96(%ebp), %xmm3
	unpcklps	%xmm1, %xmm6
	movss	-132(%ebp), %xmm1
	unpcklps	%xmm1, %xmm3
	movss	-120(%ebp), %xmm1
	movlhps	%xmm6, %xmm3
	movups	-152(%ebp), %xmm6
	mulss	%xmm1, %xmm2
	mulps	%xmm6, %xmm3
	mulss	-84(%ebp), %xmm1
	movups	%xmm3, -72(%ebp)
	movaps	%xmm4, %xmm3
	movaps	%xmm2, %xmm4
	movss	-128(%ebp), %xmm2
	subss	%xmm3, %xmm4
	movss	-108(%ebp), %xmm3
	subss	%xmm7, %xmm2
	mulss	%xmm0, %xmm3
	mulss	-88(%ebp), %xmm0
	unpcklps	%xmm4, %xmm5
	subss	%xmm3, %xmm7
	subss	%xmm1, %xmm0
	mulss	-112(%ebp), %xmm0
	unpcklps	%xmm7, %xmm2
	movlhps	%xmm2, %xmm5
	mulps	%xmm6, %xmm5
	movups	%xmm5, -56(%ebp)
L1565:
	movss	%xmm0, -40(%ebp)
	movl	(%ecx), %edx
	movl	-136(%ebp), %esi
	addl	$1, -92(%ebp)
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ecx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ecx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ecx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	28(%ecx), %edx
	movl	%edx, 28(%eax)
	movl	32(%ecx), %edx
	movl	%edx, 32(%eax)
	cmpl	%esi, -92(%ebp)
	je	L1560
	movl	80(%edi), %esi
	addl	$60, %ebx
L1566:
	movl	-92(%ebp), %eax
	cltd
	idivl	%esi
	movl	-180(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	leal	-24(%ebx), %eax
	movl	%eax, -84(%ebp)
	testl	%edx, %edx
	jle	L1561
	movss	LC56, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	%eax, %edx
	divss	%xmm0, %xmm1
	.p2align 5
	.p2align 4
	.p2align 3
L1562:
	movl	124(%edi), %esi
	addl	%edx, %esi
	addl	$4, %edx
	movss	(%esi), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esi)
	cmpl	%ebx, %edx
	jne	L1562
	movl	%eax, -84(%ebp)
	jmp	L1561
L1546:
	xorl	%eax, %eax
L1534:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1585:
	.cfi_restore_state
	movl	$0, -68(%ebp)
	movss	LC56, %xmm0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0x3f800000, -72(%ebp)
	movl	$0x3f800000, -56(%ebp)
	jmp	L1565
L1583:
	movl	$1, %edi
	leal	-76(%ebp), %esi
	leal	-80(%ebp), %ebx
	movl	$0x3f800000, __ZL7g_mdcos
	movl	$0x00000000, __ZL7g_mdsin
	.p2align 4
	.p2align 3
L1536:
	xorps	%xmm0, %xmm0
	movl	%ebx, 8(%esp)
	cvtsi2ssl	%edi, %xmm0
	movl	%esi, 4(%esp)
	mulss	LC77, %xmm0
	mulss	LC78, %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-76(%ebp), %xmm0
	movss	-80(%ebp), %xmm1
	movss	%xmm0, __ZL7g_mdsin(,%edi,4)
	movss	%xmm1, __ZL7g_mdcos(,%edi,4)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L1536
	movl	$1, __ZL11mdtrig_init
	jmp	L1535
L1543:
	movl	84(%edi), %edx
	testl	%edx, %edx
	jg	L1582
L1560:
	movl	-116(%ebp), %esi
	addl	$1, -184(%ebp)
	movl	-184(%ebp), %eax
	cmpl	164(%esi), %eax
	jl	L1567
L1537:
	movl	$1, %eax
	jmp	L1534
L1541:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1538:
	movl	$4, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	_engineClearLightsFromMHK
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
_engineClearLightsFromMHK:
LFB174:
	.cfi_startproc
	movswl	__ZL15maphacklightcnt.lto_priv.0, %eax
	testw	%ax, %ax
	jle	L1595
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	leal	__ZL12maphacklight.lto_priv.0(%eax,%eax), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$__ZL12maphacklight.lto_priv.0, %ebx
	jmp	L1589
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1588:
	movl	$-1, %ecx
	addl	$2, %ebx
	movw	%cx, -2(%ebx)
	cmpl	%esi, %ebx
	je	L1598
L1589:
	movswl	(%ebx), %eax
	testw	%ax, %ax
	js	L1588
	imull	$270, %eax, %edx
	leal	_prlights+240(%edx), %edi
	testb	$1, _prlights+254(%edx)
	je	L1588
	call	_polymer_removelight.lto_priv.0
	movl	$-1, %ecx
	addl	$2, %ebx
	andb	$-2, 14(%edi)
	movw	%cx, -2(%ebx)
	subl	$1, _lightcount
	cmpl	%esi, %ebx
	jne	L1589
L1598:
	xorl	%edx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	movw	%dx, __ZL15maphacklightcnt.lto_priv.0
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1595:
	xorl	%eax, %eax
	movw	%ax, __ZL15maphacklightcnt.lto_priv.0
	ret
	.cfi_endproc
LFE174:
	.section .rdata,"dr"
	.align 4
LC80:
	.ascii "polymost_md3draw(m:%p, tspr:%p)\0"
	.align 4
LC94:
	.ascii "polymost_md3draw: detail skin %d has no skinmap\0"
	.align 4
LC95:
	.ascii "polymost_md3draw: glow skin %d has no skinmap\0"
	.text
	.p2align 4
	.globl	_polymost_mddraw
	.def	_polymost_mddraw;	.scl	2;	.type	32;	.endef
_polymost_mddraw:
LFB176:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-16, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	pushl	%ebx
	subl	$272, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -204(%ebp)
	movl	_r_vbocount, %eax
	cmpl	__ZL9allocvbos, %eax
	jg	L1955
L1600:
	movl	__ZL13maxmodelverts, %eax
	cmpl	__ZL15allocmodelverts, %eax
	jg	L1956
L1608:
	movl	-204(%ebp), %eax
	movl	_models, %ecx
	movswl	30(%eax), %edi
	cmpw	$16383, %di
	jle	L1611
L1951:
	movzbl	17(%eax), %ebx
	movl	-204(%ebp), %eax
	movl	%ecx, -124(%ebp)
	movswl	14(%eax), %esi
	movl	%esi, %eax
	leal	0(,%esi,4), %edx
	jmp	L1613
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1615:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L1946
L1613:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1615
	movl	-124(%ebp), %ecx
	movl	%esi, %eax
	leal	0(,%esi,4), %edx
L1614:
	addl	%eax, %edx
	movswl	_tile2model(,%edx,4), %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -176(%ebp)
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	L1957
	cmpl	$3, %eax
	je	L1958
L1617:
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1611:
	.cfi_restore_state
	movswl	%di, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	jmp	L1951
	.p2align 4,,10
	.p2align 3
L1946:
	movl	-124(%ebp), %ecx
	jmp	L1614
L1955:
	leal	0(,%eax,4), %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL9indexvbos, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1813
	testl	%ebx, %ebx
	jne	L1609
L1813:
	movl	%eax, __ZL9indexvbos
	movl	_r_vbocount, %eax
	leal	0(,%eax,4), %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL8vertvbos, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1603
	testl	%ebx, %ebx
	jne	L1609
L1603:
	movl	%eax, __ZL8vertvbos
	movl	__ZL9allocvbos, %edx
	movl	_r_vbocount, %eax
	cmpl	%edx, %eax
	je	L1600
	movl	__ZL9indexvbos, %ecx
	subl	%edx, %eax
	movl	%eax, (%esp)
	leal	(%ecx,%edx,4), %ecx
	movl	%ecx, 4(%esp)
	call	*_glad_glGenBuffers
	movl	__ZL9allocvbos, %edx
	movl	__ZL8vertvbos, %eax
	subl	$8, %esp
	leal	(%eax,%edx,4), %eax
	movl	%eax, 4(%esp)
	movl	_r_vbocount, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
	call	*_glad_glGenBuffers
	movl	__ZL9allocvbos, %ebx
	subl	$8, %esp
	cmpl	_r_vbocount, %ebx
	jge	L1606
	.p2align 4
	.p2align 3
L1607:
	movl	__ZL9indexvbos, %eax
	movl	(%eax,%ebx,4), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	__ZL12maxmodeltris, %eax
	movl	$34963, (%esp)
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	movl	__ZL8vertvbos, %eax
	subl	$16, %esp
	movl	(%eax,%ebx,4), %edx
	movl	$34962, %eax
	addl	$1, %ebx
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	__ZL13maxmodelverts, %eax
	movl	$34962, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	cmpl	_r_vbocount, %ebx
	jl	L1607
L1606:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	_r_vbocount, %eax
	movl	%eax, __ZL9allocvbos
	movl	__ZL13maxmodelverts, %eax
	cmpl	__ZL15allocmodelverts, %eax
	jle	L1608
L1956:
	leal	(%eax,%eax,2), %ebx
	sall	$2, %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL8vertlist, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1814
	testl	%ebx, %ebx
	jne	L1609
L1814:
	movl	%eax, __ZL8vertlist
	movl	__ZL13maxmodelverts, %eax
	movl	%eax, __ZL15allocmodelverts
	jmp	L1608
L1958:
	movl	_spriteext, %eax
	cmpl	$16639, %edi
	jbe	L1620
	addl	$1064896, %eax
	movl	%eax, -216(%ebp)
L1621:
	movl	-204(%ebp), %eax
	movzbl	17(%eax), %eax
	movb	%al, -217(%ebp)
L1622:
	movl	-204(%ebp), %eax
	movswl	_tilesiz+2(,%esi,4), %esi
	movzbl	21(%eax), %ebx
	movl	%eax, 12(%esp)
	movl	-176(%ebp), %edi
	movl	$LC80, 4(%esp)
	movl	$3, (%esp)
	movl	%edi, 8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	216(%edi), %eax
	testl	%eax, %eax
	je	L1959
L1623:
	movzbl	%bl, %ebx
	movzbl	-217(%ebp), %ecx
	imull	%ebx, %esi
	movl	-204(%ebp), %ebx
	movl	%ebx, %edx
	movl	%esi, -128(%ebp)
	movl	-176(%ebp), %esi
	movl	%esi, %eax
	call	_updateanimation
	movss	60(%esi), %xmm0
	xorps	%xmm1, %xmm1
	movl	32(%esi), %eax
	movzbl	18(%ebx), %ecx
	movl	40(%esi), %edx
	movss	LC56, %xmm4
	comiss	%xmm0, %xmm1
	movb	%cl, -160(%ebp)
	movl	36(%esi), %ecx
	subss	%xmm0, %xmm4
	ja	L1627
	comiss	LC56, %xmm0
	jbe	L1960
L1628:
	movss	LC56, %xmm1
	movss	LC56, %xmm2
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
L1632:
	subl	$1, %eax
	xorl	%esi, %esi
	movl	%ecx, %ebx
	movl	-176(%ebp), %edi
	cmpl	%ecx, %eax
	cmovle	%eax, %ebx
	testl	%ecx, %ecx
	movss	%xmm1, 60(%edi)
	cmovle	%esi, %ebx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	testl	%edx, %edx
	movl	%ebx, 36(%edi)
	cmovle	%esi, %eax
	movl	%eax, 40(%edi)
L1630:
	movl	-176(%ebp), %eax
	xorps	%xmm2, %xmm2
	movl	-204(%ebp), %esi
	movss	LC81, %xmm1
	movss	8(%eax), %xmm3
	movss	16(%eax), %xmm7
	movl	-204(%ebp), %eax
	mulss	%xmm3, %xmm1
	movswl	30(%eax), %ecx
	mulss	%xmm3, %xmm7
	movl	%ecx, %edx
	movl	%ecx, -168(%ebp)
	sall	$6, %edx
	addl	_spriteext, %edx
	mulss	%xmm1, %xmm4
	cvtsi2ssl	48(%edx), %xmm2
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	8(%eax), %xmm1
	movl	_globalorientation, %eax
	movl	%eax, %edi
	addss	%xmm2, %xmm1
	andl	$8, %edi
	je	L1635
	imull	$44, %ecx, %ecx
	addl	_sprite, %ecx
	testb	$48, 12(%ecx)
	jne	L1636
L1635:
	movsbl	23(%esi), %ecx
	movzbl	21(%esi), %esi
	xorps	%xmm2, %xmm2
	imull	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, %ecx
	mulss	LC82, %xmm2
	andl	$160, %ecx
	subss	%xmm2, %xmm1
	movss	%xmm1, -224(%ebp)
	cmpl	$128, %ecx
	je	L1637
	movl	%eax, %ebx
	andl	$32, %ebx
L1638:
	testl	%edi, %edi
	jne	L1785
	movss	LC71, %xmm5
	movss	%xmm0, -140(%ebp)
	movss	%xmm4, -132(%ebp)
	movups	%xmm5, -248(%ebp)
L1639:
	andl	$4, %eax
	movl	%eax, -152(%ebp)
	je	L1790
	movups	-248(%ebp), %xmm5
	movaps	%xmm5, %xmm2
	xorps	%xmm0, %xmm5
	xorps	%xmm4, %xmm2
	movaps	%xmm5, %xmm1
	movss	LC79, %xmm5
	movaps	%xmm2, %xmm6
L1640:
	movl	-176(%ebp), %ecx
	movl	-204(%ebp), %eax
	movss	12(%ecx), %xmm2
	movzbl	20(%eax), %eax
	mulss	20(%ecx), %xmm3
	movss	%xmm2, -124(%ebp)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movl	-204(%ebp), %eax
	mulss	LC81, %xmm2
	mulss	-124(%ebp), %xmm2
	addss	%xmm7, %xmm3
	mulss	%xmm2, %xmm4
	mulss	%xmm2, %xmm0
	movss	%xmm4, -144(%ebp)
	movups	-248(%ebp), %xmm4
	movss	%xmm0, -156(%ebp)
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm4
	mulss	%xmm4, %xmm6
	mulss	%xmm4, %xmm1
	mulss	%xmm5, %xmm4
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%esi, %xmm5
	mulss	%xmm0, %xmm2
	movss	-132(%ebp), %xmm0
	movl	4(%eax), %esi
	mulss	LC81, %xmm5
	mulss	-124(%ebp), %xmm5
	movss	%xmm6, -136(%ebp)
	movss	%xmm1, -148(%ebp)
	movss	-140(%ebp), %xmm1
	mulss	%xmm5, %xmm3
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm1
	xorps	%xmm5, %xmm5
	cvtsi2ssl	44(%edx), %xmm5
	movaps	%xmm3, %xmm6
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%esi, %xmm3
	addss	%xmm3, %xmm5
	movss	%xmm5, -180(%ebp)
	testl	%ebx, %ebx
	je	L1641
	movups	-248(%ebp), %xmm5
	movss	-136(%ebp), %xmm7
	movaps	%xmm6, %xmm3
	movl	-128(%ebp), %eax
	movss	-180(%ebp), %xmm6
	xorps	%xmm5, %xmm7
	xorps	%xmm5, %xmm3
	xorps	%xmm5, %xmm0
	movss	%xmm7, -136(%ebp)
	xorps	%xmm5, %xmm1
	xorps	%xmm5, %xmm4
	sarl	$3, %eax
	movss	-148(%ebp), %xmm7
	xorps	%xmm5, %xmm7
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%eax, %xmm5
	movss	%xmm7, -148(%ebp)
	addss	%xmm5, %xmm6
	movss	%xmm6, -180(%ebp)
	movaps	%xmm2, %xmm6
	movaps	%xmm3, %xmm2
L1641:
	flds	_fxdimen
	fmull	_gxyaspect
	xorps	%xmm3, %xmm3
	fdivrs	LC84
	movl	-204(%ebp), %eax
	movss	_fxdimen, %xmm5
	mulss	_fviewingrange, %xmm5
	movss	LC83, %xmm7
	movl	(%eax), %ecx
	movl	_globalposx, %eax
	movl	%ecx, -128(%ebp)
	addl	40(%edx), %ecx
	leal	-116(%ebp), %edx
	divss	%xmm5, %xmm7
	fstps	-124(%ebp)
	movss	-124(%ebp), %xmm5
	movl	%eax, -124(%ebp)
	movl	%ecx, %eax
	subl	-124(%ebp), %eax
	leal	-88(%ebp), %ecx
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm5, %xmm0
	mulss	LC68, %xmm3
	mulss	%xmm5, %xmm1
	movss	%xmm7, -164(%ebp)
	movss	%xmm0, -196(%ebp)
	movss	-224(%ebp), %xmm0
	subss	_fglobalposz, %xmm0
	mulss	LC86, %xmm0
	addss	%xmm4, %xmm3
	movaps	%xmm7, %xmm4
	xorps	-248(%ebp), %xmm4
	movss	%xmm1, -200(%ebp)
	mulss	%xmm7, %xmm3
	addss	%xmm6, %xmm0
	movss	%xmm3, -132(%ebp)
	movss	-144(%ebp), %xmm3
	mulss	%xmm5, %xmm0
	mulss	%xmm4, %xmm3
	movss	%xmm3, -188(%ebp)
	movss	-156(%ebp), %xmm3
	mulss	%xmm4, %xmm3
	movss	%xmm3, -192(%ebp)
	movss	-180(%ebp), %xmm3
	subss	_fglobalposy, %xmm3
	mulss	LC85, %xmm3
	addss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	mulss	%xmm4, %xmm2
	movss	%xmm2, -140(%ebp)
	movss	%xmm0, -144(%ebp)
	movss	-132(%ebp), %xmm3
	movl	-204(%ebp), %eax
	movss	%xmm0, -108(%ebp)
	movaps	%xmm7, %xmm0
	movss	%xmm2, -116(%ebp)
	movss	%xmm3, -112(%ebp)
	call	_md3_vox_calcmat_common
	testl	%ebx, %ebx
	je	L1642
	movups	-248(%ebp), %xmm5
	movss	-72(%ebp), %xmm1
	movss	LC88, %xmm3
	movss	-56(%ebp), %xmm2
	movss	LC87, %xmm0
	xorps	%xmm5, %xmm1
	mulss	%xmm3, %xmm1
	mulss	%xmm0, %xmm2
	movss	%xmm1, -56(%ebp)
	movss	-68(%ebp), %xmm1
	movss	%xmm2, -72(%ebp)
	movss	-52(%ebp), %xmm2
	xorps	%xmm5, %xmm1
	mulss	%xmm3, %xmm1
	mulss	%xmm0, %xmm2
	mulss	-48(%ebp), %xmm0
	movss	%xmm1, -52(%ebp)
	movss	-64(%ebp), %xmm1
	movss	%xmm2, -68(%ebp)
	xorps	%xmm5, %xmm1
	movss	%xmm0, -64(%ebp)
	movaps	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	movss	%xmm0, -48(%ebp)
L1642:
	movss	_grhalfxdown10x, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1643
	movups	-248(%ebp), %xmm5
	movss	-88(%ebp), %xmm1
	xorps	%xmm5, %xmm1
	movss	%xmm1, -88(%ebp)
	movss	-72(%ebp), %xmm1
	xorps	%xmm5, %xmm1
	movss	%xmm1, -72(%ebp)
	movss	-56(%ebp), %xmm1
	xorps	%xmm5, %xmm1
	movss	%xmm1, -56(%ebp)
	movss	-40(%ebp), %xmm1
	xorps	%xmm5, %xmm1
	movss	%xmm1, -40(%ebp)
L1643:
	leal	-104(%ebp), %eax
	movl	%eax, -156(%ebp)
	movzbl	-160(%ebp), %eax
	andl	$1, %eax
	movb	%al, -218(%ebp)
	je	L1645
	movl	-168(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -152(%ebp)
	fildl	-152(%ebp)
	fmuls	LC89
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1816
	jne	L1816
L1646:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1952
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1952:
	movss	_grhalfxdown10x, %xmm0
	movl	_globalorientation, %eax
	movl	%eax, %edi
	andl	$4, %eax
	movl	%eax, -152(%ebp)
	andl	$8, %edi
L1645:
	xorps	%xmm1, %xmm1
	movl	%edi, %eax
	movl	_glad_glFrontFace, %ecx
	comiss	%xmm1, %xmm0
	setnb	%dl
	shrl	$3, %eax
	xorl	%eax, %edx
	movl	-152(%ebp), %eax
	shrl	$2, %eax
	cmpb	%al, %dl
	je	L1650
	movl	$2304, (%esp)
	call	*%ecx
	subl	$4, %esp
L1651:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1652
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1652:
	movl	$1029, (%esp)
	call	*_glad_glCullFace
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movswl	_numshades, %eax
	xorps	%xmm3, %xmm3
	subl	$4, %esp
	cvtsi2ssl	_globalshade, %xmm0
	mulss	_shadescale, %xmm0
	cvtsi2ssl	%eax, %xmm2
	movl	-176(%ebp), %eax
	cvtsi2ssl	4(%eax), %xmm1
	movl	_globalpal, %eax
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm3, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	minss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	subss	%xmm0, %xmm1
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	testb	$-60, _hictinting(,%eax,8)
	jne	L1660
	movl	-176(%ebp), %ecx
	testb	$1, 28(%ecx)
	je	L1961
	movl	$1, _globalnoeffect
L1660:
	movss	%xmm3, -124(%ebp)
	movss	%xmm3, -128(%ebp)
L1658:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1962
L1661:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	movss	LC78, %xmm1
	cvtsi2ssl	%edx, %xmm0
	movzbl	_hictinting+2043, %edx
	mulss	%xmm1, %xmm0
	mulss	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-128(%ebp), %xmm0
	movss	%xmm0, -128(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-124(%ebp), %xmm0
	movss	%xmm0, -124(%ebp)
L1662:
	movl	-204(%ebp), %ecx
	movzwl	12(%ecx), %eax
	movzbl	19(%ecx), %edx
	movl	%eax, %ecx
	shrw	$9, %cx
	andw	$2, %ax
	je	L1791
	andl	$1, %ecx
	leal	(%ecx,%edx,2), %ebx
	movss	_glblend(,%ebx,8), %xmm0
L1663:
	movl	-216(%ebp), %esi
	shrw	%ax
	movss	LC56, %xmm1
	movss	%xmm3, -160(%ebp)
	andl	$1, %eax
	subss	8(%esi), %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -152(%ebp)
	call	_handle_blend
	movl	-176(%ebp), %eax
	movss	-160(%ebp), %xmm3
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L1664
	movswl	_globalpicnum, %eax
	movl	$0x00000000, -160(%ebp)
	movzbl	_alphahackarray(%eax), %eax
	testb	%al, %al
	jne	L1963
L1665:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	movss	%xmm3, -168(%ebp)
	call	_inthash_find
	movss	-168(%ebp), %xmm3
	cmpl	$1, %eax
	je	L1666
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movss	-168(%ebp), %xmm3
L1666:
	movss	-160(%ebp), %xmm0
	movss	%xmm3, -168(%ebp)
	call	__Z20buildgl_setAlphaFuncjf.constprop.0
	movss	-168(%ebp), %xmm3
L1667:
	movss	-152(%ebp), %xmm5
	movss	%xmm5, 12(%esp)
	movss	-124(%ebp), %xmm5
	movss	%xmm5, 8(%esp)
	movss	-128(%ebp), %xmm5
	movss	%xmm3, (%esp)
	movss	%xmm5, 4(%esp)
	call	*_glad_glColor4f
	movl	-216(%ebp), %ecx
	subl	$16, %esp
	movzwl	24(%ecx), %eax
	testw	%ax, %ax
	jne	L1670
	cmpw	$0, 26(%ecx)
	je	L1793
L1670:
	movss	_fxdimen, %xmm1
	movss	-188(%ebp), %xmm2
	movl	$0, -116(%ebp)
	movss	_fviewingrange, %xmm0
	addss	-192(%ebp), %xmm2
	movl	$0, -112(%ebp)
	movl	-216(%ebp), %ecx
	movl	$0, -108(%ebp)
	movl	$0x00000000, -140(%ebp)
	mulss	%xmm1, %xmm0
	mulss	LC90, %xmm0
	movl	28(%ecx), %edx
	mulss	%xmm2, %xmm0
	movss	LC56, %xmm2
	divss	%xmm0, %xmm2
	testl	%edx, %edx
	je	L1672
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -140(%ebp)
L1672:
	movl	$0x00000000, -132(%ebp)
	movl	-216(%ebp), %ecx
	movl	32(%ecx), %edx
	testl	%edx, %edx
	jne	L1964
L1673:
	movl	-216(%ebp), %ecx
	movl	36(%ecx), %edx
	cmpb	$0, -218(%ebp)
	jne	L1796
	testl	%edx, %edx
	jne	L1965
L1796:
	movl	$0x00000000, -144(%ebp)
L1674:
	leal	512(%eax), %edx
	xorps	%xmm1, %xmm1
	movss	LC70, %xmm0
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -224(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movl	-216(%ebp), %eax
	movzwl	26(%eax), %eax
	mulss	%xmm0, %xmm1
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	movss	%xmm1, -180(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -128(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -160(%ebp)
L1671:
	movl	-216(%ebp), %eax
	flds	__ZL14polymost1Clamp.lto_priv.0+4
	movzbl	22(%eax), %ebx
	movzbl	23(%eax), %esi
	fnstcw	-118(%ebp)
	fadd	%st(0), %st
	fadds	__ZL14polymost1Clamp.lto_priv.0
	movzwl	-118(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -120(%ebp)
	xorl	%eax, %eax
	fldcw	-120(%ebp)
	fistps	-254(%ebp)
	fldcw	-118(%ebp)
	call	__Z17polymost_setClampc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1676
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L1817
	je	L1676
L1817:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1676:
	movups	LC92, %xmm0
	movl	-156(%ebp), %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
	movl	-176(%ebp), %eax
	movl	164(%eax), %eax
	testl	%eax, %eax
	jle	L1678
	xorps	%xmm1, %xmm1
	movl	%esi, %eax
	movss	LC93, %xmm0
	movss	-164(%ebp), %xmm5
	cvtsi2ssl	%ebx, %xmm1
	movzbl	%al, %esi
	movss	-136(%ebp), %xmm4
	movl	$33984, -208(%ebp)
	movl	$0, -164(%ebp)
	mulss	%xmm5, %xmm4
	mulss	-148(%ebp), %xmm5
	mulss	%xmm0, %xmm1
	movss	%xmm4, -168(%ebp)
	movss	%xmm5, -172(%ebp)
	movss	%xmm1, -228(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%esi, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -232(%ebp)
	.p2align 4
	.p2align 3
L1774:
	movl	-176(%ebp), %esi
	movl	-164(%ebp), %eax
	sall	$7, %eax
	addl	196(%esi), %eax
	movl	%eax, %ecx
	movl	%eax, -212(%ebp)
	movl	120(%eax), %eax
	movl	80(%ecx), %edx
	movl	36(%esi), %ecx
	imull	%edx, %ecx
	leal	(%eax,%ecx,8), %ebx
	movl	40(%esi), %ecx
	imull	%edx, %ecx
	leal	(%eax,%ecx,8), %esi
	movl	_r_vertexarrays, %eax
	movl	%eax, -148(%ebp)
	testl	%eax, %eax
	jne	L1679
	movl	-216(%ebp), %ecx
	leal	-1(%edx), %eax
	cmpw	$0, 24(%ecx)
	jne	L1953
	cmpw	$0, 26(%ecx)
	jne	L1953
	xorl	%edi, %edi
	testl	%edx, %edx
	jle	L1682
L1691:
	leal	(%edx,%edx,2), %ecx
	movl	__ZL8vertlist, %edx
	movss	-188(%ebp), %xmm4
	sall	$2, %ecx
	movss	-192(%ebp), %xmm5
	movss	-196(%ebp), %xmm6
	movss	-200(%ebp), %xmm7
	leal	-12(%edx,%ecx), %edx
	leal	-12(%edi,%ecx), %ecx
	.p2align 4
	.p2align 3
L1694:
	movswl	(%ebx,%eax,8), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm0
	movswl	(%esi,%eax,8), %edi
	cvtsi2ssl	%edi, %xmm1
	movswl	4(%ebx,%eax,8), %edi
	mulss	%xmm4, %xmm0
	mulss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm1
	movswl	4(%esi,%eax,8), %edi
	cvtsi2ssl	%edi, %xmm2
	movswl	2(%ebx,%eax,8), %edi
	mulss	%xmm6, %xmm1
	mulss	%xmm7, %xmm2
	addss	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edi, %xmm2
	movswl	2(%esi,%eax,8), %edi
	mulss	-168(%ebp), %xmm2
	cvtsi2ssl	%edi, %xmm3
	mulss	-172(%ebp), %xmm3
	movl	-148(%ebp), %edi
	addss	%xmm3, %xmm2
	testl	%edi, %edi
	je	L1693
	movss	%xmm2, (%ecx)
	movss	%xmm1, 4(%ecx)
	movss	%xmm0, 8(%ecx)
L1693:
	movss	%xmm2, (%edx)
	subl	$1, %eax
	subl	$12, %edx
	subl	$12, %ecx
	movss	%xmm1, 16(%edx)
	movss	%xmm0, 20(%edx)
	movl	_r_vertexarrays, %edi
	movl	%edi, -148(%ebp)
	cmpl	$-1, %eax
	jne	L1694
L1688:
	movl	-148(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1682
	movl	$34962, (%esp)
	call	*_glad_glUnmapBuffer
	movl	$34962, %eax
	subl	$4, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
L1682:
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	leal	-88(%ebp), %eax
	subl	$4, %esp
	movl	$0x00000000, -44(%ebp)
	movl	$0x00000000, -60(%ebp)
	movl	$0x00000000, -76(%ebp)
	movl	$0x3f800000, -28(%ebp)
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	movl	-204(%ebp), %eax
	subl	$4, %esp
	movswl	14(%eax), %ebx
	movl	%ebx, %eax
	leal	0(,%ebx,4), %edx
	movl	%ebx, %esi
	movzbl	-217(%ebp), %ebx
	jmp	L1695
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1697:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L1799
L1695:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1697
	movl	%esi, %ebx
L1696:
	leal	(%ebx,%ebx,4), %eax
	movsbl	_tile2model+16(,%eax,4), %edi
	movl	-164(%ebp), %eax
	movl	%eax, (%esp)
	movl	-176(%ebp), %ebx
	movl	%edi, %edx
	movl	_globalpal, %ecx
	movl	%ebx, %eax
	call	_mdloadskin
	movl	%eax, -124(%ebp)
	testl	%eax, %eax
	je	L1698
	movl	68(%ebx), %edx
	testl	%edx, %edx
	je	L1699
	movl	_globalpal, %ecx
	movl	%edx, %eax
	jmp	L1702
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1700:
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L1966
L1702:
	cmpb	(%eax), %cl
	jne	L1700
	cmpl	4(%eax), %edi
	jne	L1700
	movl	-164(%ebp), %esi
	cmpl	%esi, 8(%eax)
	jne	L1700
	.p2align 4
	.p2align 3
L1701:
	movzbl	1(%eax), %eax
	andl	$2, %eax
	cmpb	$1, %al
	sbbl	%edx, %edx
	xorl	%eax, %eax
	andl	$-64, %edx
	addl	$66, %edx
	call	__Z25buildgl_bindSamplerObjectii
L1699:
	movl	-124(%ebp), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0x3f800000, 8(%esp)
	movss	-232(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-228(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	cmpb	$0, -218(%ebp)
	jne	L1728
	movl	_r_detailmapping, %eax
	addl	$4, -208(%ebp)
	testl	%eax, %eax
	jne	L1967
L1729:
	movl	-204(%ebp), %eax
	movzbl	18(%eax), %eax
	movb	%al, -124(%ebp)
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	testl	%eax, _r_glowmapping
	jne	L1968
L1734:
	movl	_r_vertexarrays, %esi
	testl	%esi, %esi
	jne	L1969
	movl	-176(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	48(%ecx), %ebx
	movl	208(%eax), %esi
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jne	L1970
L1741:
	movl	%eax, (%esp)
	movl	-212(%ebp), %eax
	movl	%esi, %edx
	movl	-208(%ebp), %ecx
	call	__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t
	movl	_r_vertexarrays, %eax
	testl	%eax, %eax
	jne	L1759
L1976:
	movl	-208(%ebp), %ebx
	cmpl	$33984, -208(%ebp)
	jle	L1764
	.p2align 4
	.p2align 3
L1760:
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	$0x3f800000, 8(%esp)
	movl	$34163, 4(%esp)
	movl	$8960, (%esp)
	call	*_glad_glTexEnvf
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1767
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1767:
	subl	$1, %ebx
	cmpl	%ebx, _gl+4
	je	L1768
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1768:
	cmpl	$33984, %ebx
	jne	L1760
L1954:
	movl	%ebx, -208(%ebp)
L1764:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1698
	xorps	%xmm0, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L1819
	je	L1770
L1819:
	movl	$0x00000000, __ZL25polymost1UseDetailMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L1698
L1770:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L1772
	je	L1698
L1772:
	movl	$0x00000000, __ZL23polymost1UseGlowMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1698:
	movl	-176(%ebp), %ecx
	addl	$1, -164(%ebp)
	movl	-164(%ebp), %eax
	cmpl	164(%ecx), %eax
	jl	L1774
L1678:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1775
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1775:
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movzbl	-254(%ebp), %eax
	call	__Z17polymost_setClampc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1776
	movss	LC56, %xmm5
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm5
	jp	L1820
	je	L1776
L1820:
	movl	$0x3f800000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x3f800000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1776:
	call	__Z28polymost_resetVertexPointersv
	movl	$1, %eax
	movl	$0, _globalnoeffect
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1609:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1957:
	cmpl	$-1, -176(%ebp)
	je	L1617
	movl	-204(%ebp), %eax
	testb	$32, 12(%eax)
	jne	L1617
	movl	-204(%ebp), %edx
	movl	-176(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa 7, 0
	popl	%ebp
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_polymost_voxdraw.part.0
	.p2align 4,,10
	.p2align 3
L1966:
	.cfi_restore_state
	cmpb	$-5, %cl
	ja	L1699
	testb	%cl, %cl
	je	L1800
	movl	%ecx, -136(%ebp)
	xorl	%esi, %esi
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1704:
	movl	4(%edx), %ebx
	cmpl	%ebx, %edi
	je	L1971
	testl	%ebx, %ebx
	jne	L1706
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	je	L1714
	.p2align 4
	.p2align 3
L1706:
	movl	144(%edx), %edx
	testl	%edx, %edx
	je	L1718
L1717:
	movzbl	(%edx), %ebx
	testb	%bl, %bl
	je	L1704
	cmpb	%bl, -136(%ebp)
	jne	L1706
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1706
	movl	-164(%ebp), %ecx
	cmpl	8(%edx), %ecx
	je	L1972
	testl	%esi, %esi
	movl	$1, %ecx
	cmove	%edx, %eax
	movl	144(%edx), %edx
	cmove	%ecx, %esi
	testl	%edx, %edx
	jne	L1717
L1718:
	testl	%eax, %eax
	jne	L1701
	jmp	L1699
	.p2align 4,,10
	.p2align 3
L1679:
	movl	__ZL6curvbo, %eax
	addl	$1, %eax
	cmpl	_r_vbocount, %eax
	jge	L1797
	leal	0(,%eax,4), %edx
L1685:
	movl	%eax, __ZL6curvbo
	movl	__ZL8vertvbos, %eax
	movl	(%eax,%edx), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35001, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glMapBuffer
	movl	-216(%ebp), %ecx
	movl	%eax, %edi
	movl	-212(%ebp), %eax
	subl	$8, %esp
	movl	80(%eax), %edx
	movl	_r_vertexarrays, %eax
	movl	%eax, -148(%ebp)
	leal	-1(%edx), %eax
	cmpw	$0, 24(%ecx)
	jne	L1686
	cmpw	$0, 26(%ecx)
	jne	L1686
	testl	%edx, %edx
	jg	L1691
	jmp	L1688
	.p2align 4,,10
	.p2align 3
L1799:
	movl	%eax, %ebx
	jmp	L1696
	.p2align 4,,10
	.p2align 3
L1971:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L1712
	cmpl	$5, %esi
	jne	L1973
L1712:
	testl	%ebx, %ebx
	je	L1974
L1710:
	cmpl	$1, %esi
	movl	$2, %ecx
	cmovle	%edx, %eax
	cmovle	%ecx, %esi
	jmp	L1706
	.p2align 4,,10
	.p2align 3
L1728:
	movl	_r_vertexarrays, %edx
	testl	%edx, %edx
	jne	L1975
	movl	-176(%ebp), %eax
	movl	208(%eax), %edx
L1758:
	movl	$0, (%esp)
	movl	-212(%ebp), %eax
	movl	-208(%ebp), %ecx
	call	__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t
	movl	_r_vertexarrays, %eax
	testl	%eax, %eax
	je	L1976
L1759:
	movl	$34963, (%esp)
	movl	$33984, %ebx
	call	*_glad_glUnmapBuffer
	movl	$34963, %eax
	subl	$4, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	-176(%ebp), %eax
	movl	-164(%ebp), %ecx
	movl	216(%eax), %eax
	movl	(%eax,%ecx,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	-208(%ebp), %esi
	.p2align 4
	.p2align 3
L1762:
	movl	%ebx, (%esp)
	addl	$1, %ebx
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	subl	$16, %esp
	cmpl	%ebx, %esi
	jge	L1762
	movl	__ZL8vertvbos, %eax
	movl	__ZL6curvbo, %edx
	movl	(%eax,%edx,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	movl	__ZL9indexvbos, %eax
	movl	__ZL6curvbo, %edx
	subl	$16, %esp
	movl	(%eax,%edx,4), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$5123, 8(%esp)
	movl	-212(%ebp), %eax
	movl	84(%eax), %eax
	movl	$4, (%esp)
	leal	(%eax,%eax,2), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	-208(%ebp), %ebx
	cmpl	$33984, %ebx
	jle	L1764
	.p2align 4
	.p2align 3
L1763:
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	$0x3f800000, 8(%esp)
	movl	$34163, 4(%esp)
	movl	$8960, (%esp)
	call	*_glad_glTexEnvf
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1765
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1765:
	movl	$32888, (%esp)
	subl	$1, %ebx
	call	*_glad_glDisableClientState
	subl	$4, %esp
	movl	%ebx, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	cmpl	%ebx, _gl+4
	je	L1766
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1766:
	cmpl	$33984, %ebx
	jne	L1763
	jmp	L1954
	.p2align 4,,10
	.p2align 3
L1953:
	testl	%eax, %eax
	js	L1682
	xorl	%edi, %edi
L1683:
	movups	-248(%ebp), %xmm4
	movss	-160(%ebp), %xmm5
	leal	(%edx,%edx,2), %ecx
	movl	__ZL8vertlist, %edx
	sall	$2, %ecx
	xorps	%xmm4, %xmm5
	movss	%xmm5, -136(%ebp)
	movss	-180(%ebp), %xmm5
	leal	-12(%edx,%ecx), %edx
	leal	-12(%edi,%ecx), %ecx
	xorps	%xmm4, %xmm5
	movss	-224(%ebp), %xmm4
	movss	%xmm5, -184(%ebp)
	movss	%xmm4, -124(%ebp)
	.p2align 4
	.p2align 3
L1690:
	movswl	(%ebx,%eax,8), %edi
	xorps	%xmm0, %xmm0
	xorps	%xmm5, %xmm5
	xorps	%xmm1, %xmm1
	movss	-140(%ebp), %xmm7
	xorps	%xmm4, %xmm4
	movss	-132(%ebp), %xmm2
	cvtsi2ssl	%edi, %xmm0
	movswl	2(%ebx,%eax,8), %edi
	movss	-144(%ebp), %xmm6
	cvtsi2ssl	%edi, %xmm5
	movswl	4(%ebx,%eax,8), %edi
	addss	%xmm7, %xmm0
	addss	%xmm2, %xmm5
	movss	%xmm0, -152(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movswl	(%esi,%eax,8), %edi
	cvtsi2ssl	%edi, %xmm1
	movswl	2(%esi,%eax,8), %edi
	cvtsi2ssl	%edi, %xmm4
	movswl	4(%esi,%eax,8), %edi
	addss	%xmm6, %xmm0
	addss	%xmm7, %xmm1
	addss	%xmm2, %xmm4
	movss	%xmm1, -156(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm1
	addss	%xmm6, %xmm1
	movss	-180(%ebp), %xmm6
	movaps	%xmm6, %xmm3
	movaps	%xmm6, %xmm2
	mulss	%xmm5, %xmm3
	mulss	%xmm0, %xmm2
	mulss	-136(%ebp), %xmm3
	mulss	-128(%ebp), %xmm2
	addss	%xmm3, %xmm2
	movss	-152(%ebp), %xmm3
	mulss	-124(%ebp), %xmm3
	addss	%xmm3, %xmm2
	movaps	%xmm6, %xmm3
	mulss	%xmm1, %xmm3
	mulss	%xmm4, %xmm6
	mulss	-136(%ebp), %xmm6
	subss	%xmm7, %xmm2
	mulss	-128(%ebp), %xmm3
	mulss	-188(%ebp), %xmm2
	addss	%xmm6, %xmm3
	movss	-156(%ebp), %xmm6
	mulss	-124(%ebp), %xmm6
	addss	%xmm6, %xmm3
	movss	-128(%ebp), %xmm6
	mulss	%xmm5, %xmm6
	subss	%xmm7, %xmm3
	mulss	-192(%ebp), %xmm3
	movss	-160(%ebp), %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm3, %xmm2
	movss	-160(%ebp), %xmm3
	mulss	%xmm0, %xmm3
	addss	%xmm3, %xmm6
	movss	-128(%ebp), %xmm3
	subss	-132(%ebp), %xmm6
	mulss	-168(%ebp), %xmm6
	mulss	%xmm4, %xmm3
	addss	%xmm7, %xmm3
	subss	-132(%ebp), %xmm3
	movss	-124(%ebp), %xmm7
	mulss	-172(%ebp), %xmm3
	mulss	%xmm7, %xmm5
	mulss	-136(%ebp), %xmm5
	mulss	%xmm7, %xmm0
	addss	%xmm6, %xmm3
	movss	-128(%ebp), %xmm6
	mulss	-124(%ebp), %xmm1
	mulss	-124(%ebp), %xmm4
	movss	-184(%ebp), %xmm7
	mulss	-136(%ebp), %xmm4
	movl	-148(%ebp), %edi
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm1
	addss	%xmm5, %xmm0
	movss	-152(%ebp), %xmm5
	addss	%xmm4, %xmm1
	movss	-156(%ebp), %xmm4
	mulss	%xmm7, %xmm5
	mulss	%xmm7, %xmm4
	addss	%xmm5, %xmm0
	movss	-144(%ebp), %xmm5
	addss	%xmm4, %xmm1
	subss	%xmm5, %xmm0
	mulss	-196(%ebp), %xmm0
	subss	%xmm5, %xmm1
	mulss	-200(%ebp), %xmm1
	addss	%xmm1, %xmm0
	testl	%edi, %edi
	je	L1689
	movss	%xmm3, (%ecx)
	movss	%xmm0, 4(%ecx)
	movss	%xmm2, 8(%ecx)
L1689:
	movss	%xmm3, (%edx)
	subl	$1, %eax
	subl	$12, %edx
	subl	$12, %ecx
	movss	%xmm0, 16(%edx)
	movss	%xmm2, 20(%edx)
	movl	_r_vertexarrays, %edi
	movl	%edi, -148(%ebp)
	cmpl	$-1, %eax
	jne	L1690
	jmp	L1688
	.p2align 4,,10
	.p2align 3
L1686:
	testl	%eax, %eax
	jns	L1683
	jmp	L1688
L1797:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L1685
L1974:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L1710
L1714:
	cmpl	$2, %esi
	movl	$3, %ebx
	cmovle	%ebx, %esi
	cmovle	%edx, %eax
	jmp	L1706
L1800:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1703:
	cmpb	$0, (%edx)
	jne	L1720
	movl	4(%edx), %ecx
	cmpl	%ecx, %edi
	je	L1977
	testl	%ecx, %ecx
	je	L1782
	.p2align 4
	.p2align 3
L1720:
	movl	144(%edx), %edx
	testl	%edx, %edx
	jne	L1703
L1979:
	testl	%eax, %eax
	jne	L1701
	jmp	L1699
	.p2align 4,,10
	.p2align 3
L1977:
	movl	-164(%ebp), %esi
	cmpl	%esi, 8(%edx)
	jne	L1723
	cmpl	$5, %ebx
	jne	L1978
L1723:
	testl	%ecx, %ecx
	jne	L1783
L1782:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	je	L1725
	testl	%edi, %edi
	je	L1783
	testl	%ebx, %ebx
	movl	$1, %ecx
	cmove	%edx, %eax
	movl	144(%edx), %edx
	cmove	%ecx, %ebx
	testl	%edx, %edx
	jne	L1703
	jmp	L1979
L1783:
	cmpl	$1, %ebx
	movl	$2, %ecx
	cmovle	%edx, %eax
	movl	144(%edx), %edx
	cmovle	%ecx, %ebx
	testl	%edx, %edx
	jne	L1703
	jmp	L1979
L1972:
	cmpl	$3, %esi
	movl	$4, %ebx
	cmovle	%edx, %eax
	cmovle	%ebx, %esi
	jmp	L1706
L1967:
	movl	-164(%ebp), %eax
	movl	$255, %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %ebx
	movl	%ebx, %eax
	call	_mdloadskin
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1729
	movl	68(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1730
	movl	-164(%ebp), %eax
	jmp	L1733
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1731:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1730
L1733:
	cmpb	$-1, (%ebx)
	jne	L1731
	cmpl	4(%ebx), %edi
	jne	L1731
	cmpl	%eax, 8(%ebx)
	jne	L1731
	movl	$1, %eax
	call	__Z25polymost_useDetailMappingc
	movzbl	1(%ebx), %eax
	movl	%esi, %edx
	andl	$2, %eax
	cmpb	$1, %al
	movl	$33987, %eax
	sbbl	%ecx, %ecx
	andl	$-64, %ecx
	addl	$66, %ecx
	call	__Z27polymost_setupdetailtextureiii
	movss	148(%ebx), %xmm0
	movss	%xmm0, -124(%ebp)
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0x3f800000, 8(%esp)
	movss	-232(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-228(%ebp), %xmm4
	movss	%xmm4, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x3f800000, 8(%esp)
	movss	-124(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	jmp	L1729
L1969:
	movl	__ZL9indexvbos, %eax
	movl	__ZL6curvbo, %edx
	movl	(%eax,%edx,4), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35001, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glMapBuffer
	movl	-176(%ebp), %ecx
	movl	%eax, %esi
	subl	$8, %esp
	xorl	%eax, %eax
	movl	48(%ecx), %ebx
	testl	%ebx, %ebx
	je	L1741
L1970:
	movl	-212(%ebp), %edi
	movl	84(%edi), %edx
	testl	%edx, %edx
	jle	L1742
	movl	__ZL8vertlist, %ebx
	movl	%esi, -252(%ebp)
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L1743:
	movl	108(%edi), %edx
	leal	(%eax,%eax,2), %ecx
	leal	(%edx,%ecx,4), %edx
	movl	(%edx), %ecx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%ebx,%ecx,4), %ecx
	movss	(%ecx), %xmm5
	movss	4(%ecx), %xmm1
	movss	8(%ecx), %xmm4
	movl	4(%edx), %ecx
	movl	8(%edx), %edx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%edx,2), %edx
	leal	(%ebx,%ecx,4), %ecx
	leal	(%ebx,%edx,4), %edx
	movss	(%ecx), %xmm3
	movss	4(%ecx), %xmm0
	movss	(%edx), %xmm7
	movss	8(%edx), %xmm6
	movss	8(%ecx), %xmm2
	movss	%xmm7, -136(%ebp)
	movss	4(%edx), %xmm7
	movss	%xmm6, -148(%ebp)
	movss	-72(%ebp), %xmm6
	movss	%xmm7, -124(%ebp)
	movss	-88(%ebp), %xmm7
	mulss	%xmm1, %xmm6
	mulss	%xmm5, %xmm7
	addss	%xmm7, %xmm6
	movss	-56(%ebp), %xmm7
	mulss	%xmm4, %xmm7
	addss	%xmm7, %xmm6
	addss	-40(%ebp), %xmm6
	movss	%xmm6, -152(%ebp)
	movss	-84(%ebp), %xmm6
	mulss	%xmm5, %xmm6
	movaps	%xmm6, %xmm7
	movss	-68(%ebp), %xmm6
	mulss	%xmm1, %xmm6
	addss	%xmm7, %xmm6
	movss	-52(%ebp), %xmm7
	mulss	%xmm4, %xmm7
	mulss	-48(%ebp), %xmm4
	addss	%xmm7, %xmm6
	addss	-36(%ebp), %xmm6
	movss	-64(%ebp), %xmm7
	mulss	%xmm7, %xmm1
	movss	%xmm6, -156(%ebp)
	movss	-80(%ebp), %xmm6
	mulss	%xmm6, %xmm5
	addss	%xmm5, %xmm1
	addss	%xmm4, %xmm1
	addss	-32(%ebp), %xmm1
	movss	-88(%ebp), %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm1, -184(%ebp)
	movss	-72(%ebp), %xmm5
	movl	212(%esi), %edx
	mulss	%xmm0, %xmm5
	movaps	%xmm5, %xmm1
	movss	-68(%ebp), %xmm5
	addss	%xmm4, %xmm1
	movss	-56(%ebp), %xmm4
	mulss	%xmm0, %xmm5
	mulss	%xmm2, %xmm4
	mulss	%xmm7, %xmm0
	addss	%xmm4, %xmm1
	movss	-84(%ebp), %xmm4
	addss	-40(%ebp), %xmm1
	mulss	%xmm3, %xmm4
	mulss	%xmm6, %xmm3
	mulss	-136(%ebp), %xmm6
	mulss	%xmm1, %xmm1
	addss	%xmm4, %xmm5
	movss	-52(%ebp), %xmm4
	addss	%xmm3, %xmm0
	movss	-124(%ebp), %xmm3
	mulss	%xmm2, %xmm4
	mulss	-48(%ebp), %xmm2
	addss	%xmm4, %xmm5
	movss	-32(%ebp), %xmm4
	addss	-36(%ebp), %xmm5
	addss	%xmm2, %xmm0
	movss	-136(%ebp), %xmm2
	mulss	-88(%ebp), %xmm2
	mulss	%xmm5, %xmm5
	addss	%xmm0, %xmm4
	movss	-72(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	mulss	-68(%ebp), %xmm3
	mulss	%xmm4, %xmm4
	addss	%xmm5, %xmm1
	addss	%xmm2, %xmm0
	movss	-148(%ebp), %xmm2
	mulss	-56(%ebp), %xmm2
	addss	%xmm4, %xmm1
	addss	%xmm2, %xmm0
	movss	-136(%ebp), %xmm2
	mulss	-84(%ebp), %xmm2
	addss	-40(%ebp), %xmm0
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm3
	movss	-148(%ebp), %xmm2
	mulss	-52(%ebp), %xmm2
	addss	%xmm2, %xmm3
	movss	-124(%ebp), %xmm2
	addss	-36(%ebp), %xmm3
	mulss	%xmm7, %xmm2
	movss	-152(%ebp), %xmm7
	mulss	%xmm3, %xmm3
	mulss	%xmm7, %xmm7
	addss	%xmm6, %xmm2
	movss	-148(%ebp), %xmm6
	mulss	-48(%ebp), %xmm6
	addss	%xmm3, %xmm0
	addss	%xmm6, %xmm2
	movss	-156(%ebp), %xmm6
	addss	-32(%ebp), %xmm2
	mulss	%xmm6, %xmm6
	mulss	%xmm2, %xmm2
	addss	%xmm7, %xmm6
	movss	-184(%ebp), %xmm7
	addss	%xmm2, %xmm0
	mulss	%xmm7, %xmm7
	addss	%xmm7, %xmm6
	minss	%xmm6, %xmm1
	minss	%xmm1, %xmm0
	movss	%xmm0, (%edx,%eax,4)
	movl	204(%esi), %edx
	movw	%ax, (%edx,%eax,2)
	movl	84(%edi), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	jl	L1743
	movl	-252(%ebp), %esi
L1742:
	movl	-176(%ebp), %ecx
	leal	-1(%edx), %eax
	movl	%eax, -152(%ebp)
	movl	212(%ecx), %edi
	movl	204(%ecx), %ecx
	movl	%ecx, -136(%ebp)
	cmpl	$0, %eax
	jg	L1980
L1744:
	movl	-176(%ebp), %eax
	movl	48(%eax), %ecx
	testl	%ecx, %ecx
	je	L1981
	movl	-176(%ebp), %eax
	jmp	L1741
L1968:
	movl	-164(%ebp), %eax
	movl	$254, %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %esi
	movl	%esi, %eax
	call	_mdloadskin
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1734
	movl	68(%esi), %esi
	testl	%esi, %esi
	je	L1735
	movl	-164(%ebp), %eax
	jmp	L1738
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1736:
	movl	144(%esi), %esi
	testl	%esi, %esi
	je	L1735
L1738:
	cmpb	$-2, (%esi)
	jne	L1736
	cmpl	4(%esi), %edi
	jne	L1736
	cmpl	%eax, 8(%esi)
	jne	L1736
	movl	$1, %eax
	call	__Z23polymost_useGlowMappingc
	movzbl	1(%esi), %eax
	movl	%ebx, %edx
	andl	$2, %eax
	cmpb	$1, %al
	movl	$33988, %eax
	sbbl	%ecx, %ecx
	andl	$-64, %ecx
	addl	$66, %ecx
	call	__Z25polymost_setupglowtextureiii
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0x3f800000, 8(%esp)
	movss	-232(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-228(%ebp), %xmm4
	movss	%xmm4, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	jmp	L1734
L1975:
	movl	__ZL9indexvbos, %eax
	movl	__ZL6curvbo, %edx
	movl	(%eax,%edx,4), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$35001, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glMapBuffer
	subl	$8, %esp
	movl	%eax, %edx
	jmp	L1758
L1973:
	movl	%edx, %eax
	movl	$5, %esi
	jmp	L1706
L1664:
	movl	-204(%ebp), %eax
	testb	$2, 12(%eax)
	jne	L1668
	movl	-216(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	8(%eax), %xmm1
	comiss	%xmm0, %xmm1
	ja	L1668
	movss	LC56, %xmm5
	comiss	-152(%ebp), %xmm5
	jbe	L1667
L1668:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	movss	%xmm3, -160(%ebp)
	call	_inthash_find
	movss	-160(%ebp), %xmm3
	cmpl	$1, %eax
	je	L1667
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movss	-160(%ebp), %xmm3
	jmp	L1667
L1791:
	movss	LC56, %xmm0
	andl	$1, %ecx
	jmp	L1663
L1790:
	movaps	%xmm0, %xmm1
	movaps	%xmm4, %xmm6
	xorps	%xmm5, %xmm5
	jmp	L1640
L1636:
	movsbl	23(%esi), %ecx
	movzbl	21(%esi), %esi
	xorps	%xmm2, %xmm2
	imull	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, %ecx
	mulss	LC96, %xmm2
	andl	$160, %ecx
	subss	%xmm2, %xmm1
	movss	%xmm1, -224(%ebp)
	cmpl	$128, %ecx
	je	L1784
	movl	%eax, %ebx
	andl	$32, %ebx
L1785:
	movss	LC71, %xmm5
	movl	-128(%ebp), %ecx
	xorps	%xmm1, %xmm1
	movaps	%xmm5, %xmm2
	xorps	%xmm4, %xmm2
	movups	%xmm5, -248(%ebp)
	xorps	%xmm5, %xmm7
	sall	$2, %ecx
	movss	%xmm2, -132(%ebp)
	movaps	%xmm5, %xmm2
	movss	-224(%ebp), %xmm5
	cvtsi2ssl	%ecx, %xmm1
	xorps	%xmm0, %xmm2
	movss	%xmm2, -140(%ebp)
	subss	%xmm1, %xmm5
	movss	%xmm5, -224(%ebp)
	jmp	L1639
L1620:
	movl	%edi, %edx
	sall	$6, %edx
	addl	%edx, %eax
	movl	%eax, -216(%ebp)
	cmpl	$16383, %edi
	ja	L1621
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzbl	17(%eax), %eax
	movb	%al, -217(%ebp)
	jmp	L1622
L1960:
	cmpl	%eax, %ecx
	jnb	L1629
	cmpl	%eax, %edx
	jb	L1630
L1629:
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	L1628
L1627:
	xorps	%xmm1, %xmm1
	jmp	L1632
L1978:
	movl	%edx, %eax
	movl	$5, %ebx
	jmp	L1720
L1964:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -132(%ebp)
	jmp	L1673
L1793:
	movl	$0x00000000, -160(%ebp)
	movl	$0x00000000, -128(%ebp)
	jmp	L1671
L1963:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC78, %xmm0
	movss	%xmm0, -160(%ebp)
	jmp	L1665
L1965:
	movl	-204(%ebp), %esi
	movl	%edx, %ecx
	xorps	%xmm5, %xmm5
	movss	%xmm1, -128(%ebp)
	negl	%ecx
	flds	-128(%ebp)
	fmull	_gxyaspect
	testb	$32, 12(%esi)
	fmuls	LC91
	cmovne	%ecx, %edx
	cvtsi2ssl	%edx, %xmm5
	movss	%xmm5, -124(%ebp)
	movss	-196(%ebp), %xmm5
	addss	-200(%ebp), %xmm5
	movss	%xmm5, -128(%ebp)
	fmuls	-128(%ebp)
	fdivrs	-124(%ebp)
	fstps	-144(%ebp)
	jmp	L1674
L1961:
	movzbl	_hictinting+2(,%eax,8), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC78, %xmm2
	cvtsi2ssl	%edx, %xmm1
	movzbl	_hictinting+3(,%eax,8), %edx
	movzbl	_hictinting+4(,%eax,8), %eax
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm3, %xmm0
	movss	%xmm0, -128(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm3, %xmm0
	mulss	%xmm1, %xmm3
	movss	%xmm0, -124(%ebp)
	jmp	L1658
L1816:
	movl	_globalposy, %ecx
	movl	-124(%ebp), %eax
	subl	-128(%ebp), %eax
	subl	%esi, %ecx
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -104(%ebp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	leal	-104(%ebp), %esi
	movl	%eax, -100(%ebp)
	sete	%cl
	testl	%edx, %edx
	movl	%esi, -156(%ebp)
	sete	%bl
	orb	%bl, %cl
	jne	L1646
	cmpl	%eax, %edx
	jge	L1646
	leal	-100(%ebp), %ebx
	movl	%esi, %eax
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L1646
L1650:
	movl	$2305, (%esp)
	call	*%ecx
	subl	$4, %esp
	jmp	L1651
L1980:
	movl	%esi, -260(%ebp)
	movl	$0, -156(%ebp)
	.p2align 4
	.p2align 3
L1821:
	movl	-156(%ebp), %eax
	movl	-152(%ebp), %esi
	leal	(%edi,%eax,4), %ecx
	movl	%eax, -124(%ebp)
	movl	%ecx, -184(%ebp)
	movss	(%ecx), %xmm1
	movl	-136(%ebp), %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%ecx, -252(%ebp)
	movzwl	(%ecx), %ecx
	movw	%cx, -220(%ebp)
	.p2align 4
	.p2align 3
L1745:
	movl	-124(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jle	L1746
L1982:
	comiss	(%edi,%eax,4), %xmm1
	jb	L1746
	addl	$1, -124(%ebp)
	movl	-124(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jg	L1982
	.p2align 4
	.p2align 3
L1746:
	leal	(%edi,%esi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1749
	movl	-156(%ebp), %eax
	jmp	L1748
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1751:
	subl	$1, %esi
	subl	$4, %ebx
	movss	(%edi,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1749
L1748:
	cmpl	%eax, %esi
	jg	L1751
L1749:
	movl	-136(%ebp), %ecx
	leal	(%ecx,%esi,2), %eax
	movl	%eax, -148(%ebp)
	movl	-124(%ebp), %eax
	cmpl	%eax, %esi
	jg	L1983
	movss	(%ebx), %xmm0
	movl	-184(%ebp), %eax
	movl	-148(%ebp), %ecx
	movss	%xmm0, (%eax)
	movss	%xmm1, (%ebx)
	movl	-252(%ebp), %ebx
	movzwl	(%ecx), %eax
	movw	%ax, (%ebx)
	movzwl	-220(%ebp), %eax
	movw	%ax, (%ecx)
	leal	-1(%esi), %eax
	cmpl	%eax, -156(%ebp)
	jl	L1984
L1754:
	leal	1(%esi), %eax
	movl	%eax, -156(%ebp)
	cmpl	%eax, -152(%ebp)
	jg	L1821
	movl	-260(%ebp), %esi
	jmp	L1744
	.p2align 4,,10
	.p2align 3
L1983:
	leal	(%edi,%eax,4), %eax
/APP
 # 1298 "source/build/src/mdsprite.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-136(%ebp), %ecx
	movl	-124(%ebp), %eax
	movl	-148(%ebp), %ebx
	leal	(%ecx,%eax,2), %eax
/APP
 # 1299 "source/build/src/mdsprite.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L1745
L1984:
	movl	%eax, (%esp)
	movl	-156(%ebp), %ecx
	movl	%edi, %edx
	movl	-136(%ebp), %eax
	call	__ZL9quicksortPtPfii
	jmp	L1754
L1725:
	cmpl	$3, %ebx
	movl	$4, %ecx
	cmovle	%edx, %eax
	cmovle	%ecx, %ebx
	jmp	L1720
L1959:
	movl	-176(%ebp), %eax
	movl	164(%eax), %edx
	leal	0(,%edx,4), %edi
	movl	%edx, -124(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1624
	movl	-176(%ebp), %ecx
	movl	%eax, 216(%ecx)
	movl	%eax, 4(%esp)
	movl	164(%ecx), %eax
	movl	%eax, (%esp)
	call	*_glad_glGenBuffers
	movl	-176(%ebp), %eax
	subl	$8, %esp
	movl	164(%eax), %eax
	testl	%eax, %eax
	jle	L1626
	movl	%ebx, %edi
	movl	-176(%ebp), %ebx
	movw	%si, -124(%ebp)
	xorl	%esi, %esi
L1625:
	movl	216(%ebx), %eax
	movl	(%eax,%esi,4), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	%esi, %eax
	addl	$1, %esi
	sall	$7, %eax
	addl	196(%ebx), %eax
	movl	$35044, 12(%esp)
	movl	116(%eax), %edx
	movl	%edx, 8(%esp)
	movl	80(%eax), %eax
	movl	$34962, (%esp)
	sall	$3, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	cmpl	164(%ebx), %esi
	jl	L1625
	movswl	-124(%ebp), %esi
	movl	%edi, %ebx
L1626:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L1623
L1637:
	movl	-128(%ebp), %ecx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	addl	%ecx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	addss	-224(%ebp), %xmm1
	movss	%xmm1, -224(%ebp)
	jmp	L1638
L1962:
	cmpb	$-1, %al
	jne	L1661
	jmp	L1662
L1735:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jle	L1734
	movl	%edi, 16(%esp)
	movl	$LC95, 12(%esp)
	movl	$2331, 8(%esp)
	movl	$LC73, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1734
L1730:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jle	L1729
	movl	%edi, 16(%esp)
	movl	$LC94, 12(%esp)
	movl	$2315, 8(%esp)
	movl	$LC73, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1729
L1784:
	movl	-128(%ebp), %ecx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	addl	%ecx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	addss	-224(%ebp), %xmm1
	movss	%xmm1, -224(%ebp)
	jmp	L1785
L1624:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1981:
	xorl	%eax, %eax
	jmp	L1741
	.cfi_endproc
LFE176:
	.globl	__ZL15maphacklightcnt.lto_priv.0
	.bss
	.align 2
__ZL15maphacklightcnt.lto_priv.0:
	.space 2
	.globl	__ZL12maphacklight.lto_priv.0
	.align 32
__ZL12maphacklight.lto_priv.0:
	.space 2048
.lcomm __ZL7g_mdsin,1024,32
.lcomm __ZL7g_mdcos,1024,32
.lcomm __ZL11tribufverts,4,4
.lcomm __ZL11mdtrig_init,4,4
	.globl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0
	.data
	.align 4
__ZL26polymost1UseGlowMappingLoc.lto_priv.0:
	.long	-1
	.globl	__ZL23polymost1UseGlowMapping.lto_priv.0
	.bss
	.align 4
__ZL23polymost1UseGlowMapping.lto_priv.0:
	.space 4
	.globl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0
	.data
	.align 4
__ZL28polymost1UseDetailMappingLoc.lto_priv.0:
	.long	-1
	.globl	__ZL25polymost1UseDetailMapping.lto_priv.0
	.bss
	.align 4
__ZL25polymost1UseDetailMapping.lto_priv.0:
	.space 4
	.globl	__ZL22polymost1UsePaletteLoc.lto_priv.0
	.data
	.align 4
__ZL22polymost1UsePaletteLoc.lto_priv.0:
	.long	-1
	.globl	__ZL19polymost1UsePalette.lto_priv.0
	.align 4
__ZL19polymost1UsePalette.lto_priv.0:
	.long	1065353216
	.globl	__ZL14polymost1Clamp.lto_priv.0
	.bss
	.align 4
__ZL14polymost1Clamp.lto_priv.0:
	.space 8
	.globl	_glad_glDisableClientState
	.align 4
_glad_glDisableClientState:
	.space 4
	.globl	_glad_glTexEnvf
	.align 4
_glad_glTexEnvf:
	.space 4
	.globl	_glad_glDrawElements
	.align 4
_glad_glDrawElements:
	.space 4
	.globl	_glad_glVertexPointer
	.align 4
_glad_glVertexPointer:
	.space 4
	.globl	_glad_glTexCoordPointer
	.align 4
_glad_glTexCoordPointer:
	.space 4
	.globl	_glad_glClientActiveTexture
	.align 4
_glad_glClientActiveTexture:
	.space 4
	.globl	_glad_glUnmapBuffer
	.align 4
_glad_glUnmapBuffer:
	.space 4
	.globl	_glad_glMapBuffer
	.align 4
_glad_glMapBuffer:
	.space 4
.lcomm __ZL6curvbo,4,4
	.globl	_glad_glCullFace
	.align 4
_glad_glCullFace:
	.space 4
	.globl	_glad_glFrontFace
	.align 4
_glad_glFrontFace:
	.space 4
	.globl	_glad_glVertex3fv
	.align 4
_glad_glVertex3fv:
	.space 4
	.globl	_glad_glTexCoord2f
	.align 4
_glad_glTexCoord2f:
	.space 4
	.globl	_glad_glMultiTexCoord2f
	.align 4
_glad_glMultiTexCoord2f:
	.space 4
	.globl	__ZL15texcache_errors.lto_priv.0
	.section .rdata,"dr"
LC98:
	.ascii "no error\0"
LC99:
	.ascii "out of memory\0"
	.align 4
LC100:
	.ascii "read too few bytes from cache file\0"
LC101:
	.ascii "dedxtfilter failed\0"
	.align 4
LC102:
	.ascii "glCompressedTexImage2DARB failed\0"
	.align 4
LC103:
	.ascii "glGetTexLevelParameteriv failed\0"
	.align 4
__ZL15texcache_errors.lto_priv.0:
	.long	LC98
	.long	LC99
	.long	LC100
	.long	LC101
	.long	LC102
	.long	LC103
	.globl	_glad_glGetError
	.bss
	.align 4
_glad_glGetError:
	.space 4
	.globl	_gloadtile_willprint
	.align 4
_gloadtile_willprint:
	.space 4
.lcomm __ZL6tribuf,4,4
.lcomm __ZL12maxmodeltris,4,4
.lcomm __ZL15allocmodelverts,4,4
.lcomm __ZL13maxmodelverts,4,4
.lcomm __ZL8vertlist,4,4
	.data
	.align 4
__ZL8curextra:
	.long	30720
.lcomm __ZL16nummodelsalloced,4,4
.lcomm __ZL8vertvbos,4,4
.lcomm __ZL9indexvbos,4,4
.lcomm __ZL9allocvbos,4,4
	.globl	__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0
	.bss
	.align 4
__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0:
	.space 9
	.globl	__ZN6loguruL28s_verbosity_to_name_callbackE.lto_priv.0
	.align 4
__ZN6loguruL28s_verbosity_to_name_callbackE.lto_priv.0:
	.space 4
	.globl	__ZN6loguruL12s_start_timeE.lto_priv.0
	.align 8
__ZN6loguruL12s_start_timeE.lto_priv.0:
	.space 8
	.globl	__ZN6loguru15g_preamble_fileE
	.data
__ZN6loguru15g_preamble_fileE:
	.byte	1
	.globl	__ZN6loguru17g_preamble_threadE
__ZN6loguru17g_preamble_threadE:
	.byte	1
	.globl	__ZN6loguru15g_preamble_timeE
__ZN6loguru15g_preamble_timeE:
	.byte	1
	.globl	__ZN6loguru15g_preamble_dateE
__ZN6loguru15g_preamble_dateE:
	.byte	1
	.globl	__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0
	.bss
	.align 4
__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0:
	.space 12
	.globl	__ZN6loguruL11s_argumentsE.lto_priv.0
	.align 4
__ZN6loguruL11s_argumentsE.lto_priv.0:
	.space 24
	.globl	__ZN6loguruL16s_argv0_filenameE.lto_priv.0
	.align 4
__ZN6loguruL16s_argv0_filenameE.lto_priv.0:
	.space 24
	.globl	__ZN6loguru15default_handlerE
	.align 32
__ZN6loguru15default_handlerE:
	.space 92
	.globl	__ZN6loguruL16s_signal_optionsE.lto_priv.0
	.align 4
__ZN6loguruL16s_signal_optionsE.lto_priv.0:
	.space 8
	.section .rdata,"dr"
	.align 4
__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEEE:
	.long	0
	.long	0
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED1Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED0Ev
	.long	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEE6_M_runEv
	.globl	__ZN6loguruL15s_fatal_handlerE.lto_priv.0
	.bss
	.align 4
__ZN6loguruL15s_fatal_handlerE.lto_priv.0:
	.space 4
.lcomm __ZN6loguruL16s_needs_flushingE,1,1
	.globl	__ZN6loguruL20s_terminal_has_colorE.lto_priv.0
__ZN6loguruL20s_terminal_has_colorE.lto_priv.0:
	.space 1
	.section .rdata,"dr"
	.align 32
__ZZN6loguruL11indentationEjE4buff:
	.ascii ".   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   .   \0"
.lcomm __ZN6loguruL20s_stderr_indentationE,4,4
	.globl	__ZN6loguruL11s_callbacksE.lto_priv.0
	.bss
	.align 4
__ZN6loguruL11s_callbacksE.lto_priv.0:
	.space 12
	.data
	.align 4
__ZN6loguruL7s_mutexE:
	.long	-3
.lcomm __ZL7findata,320,32
.lcomm __ZL14wildstpathleng,4,4
	.align 4
__ZL8srchdoff:
	.long	-1
.lcomm __ZL8srchzoff,4,4
	.align 4
__ZL8srchstat:
	.long	-1
.lcomm __ZL8newildst,260,32
.lcomm __ZL6wildst,260,32
	.align 4
__ZL5hfind:
	.long	-1
	.globl	__ZL12kzdirnamhead.lto_priv.0
	.align 4
__ZL12kzdirnamhead.lto_priv.0:
	.long	-1
.lcomm __ZL9kzhashsiz,4,4
	.globl	__ZL10kzlastfnam.lto_priv.0
	.align 4
__ZL10kzlastfnam.lto_priv.0:
	.long	-1
	.globl	__ZL9kzhashpos.lto_priv.0
	.bss
	.align 4
__ZL9kzhashpos.lto_priv.0:
	.space 4
	.globl	__ZL9kzhashead.lto_priv.0
	.align 32
__ZL9kzhashead.lto_priv.0:
	.space 1024
	.globl	__ZL9kzhashbuf.lto_priv.0
	.align 4
__ZL9kzhashbuf.lto_priv.0:
	.space 4
	.globl	_toupperlookup
	.data
	.align 32
_toupperlookup:
	.ascii "\0\1\2\3\4\5\6\7\10\11\12\13\14\15\16\17\20\21\22\23\24\25\26\27\30\31\32\33\34\35\36\37 !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\177\200\201\202\203\204\205\206\207\210\211\212\213\214\215\216\217\220\221\222\223\224\225\226\227\230\231\232\233\234\235\236\237\240\241\242\243\244\245\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
	.section .rdata,"dr"
	.align 4
LC11:
	.long	1232348160
	.align 4
LC21:
	.long	1115684864
	.set	LC56,LC92+8
	.align 4
LC65:
	.long	931135616
	.align 4
LC66:
	.long	1115947008
	.align 4
LC67:
	.long	931135488
	.align 4
LC68:
	.long	981467136
	.align 4
LC69:
	.long	994643931
	.align 4
LC70:
	.long	947912704
	.align 16
LC71:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC74:
	.long	1199570688
	.align 4
LC75:
	.long	1056964608
	.align 4
LC77:
	.long	1086918619
	.align 4
LC78:
	.long	998277249
	.set	LC79,LC71
	.align 4
LC81:
	.long	1015021568
	.align 4
LC82:
	.long	1082130432
	.align 4
LC83:
	.long	1275068416
	.align 4
LC84:
	.long	1107296256
	.align 4
LC85:
	.long	-1166016512
	.align 4
LC86:
	.long	-1199570944
	.align 4
LC87:
	.long	1098907648
	.align 4
LC88:
	.long	1031798784
	.align 4
LC89:
	.long	654311424
	.align 4
LC90:
	.long	939524096
	.align 4
LC91:
	.long	1140850688
	.align 16
LC92:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.align 4
LC93:
	.long	998244352
	.align 4
LC96:
	.long	-1065353216
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.def	___moddi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_lock;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_unlock;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_system_errori;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread6_StateD2Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	_pthread_self;	.scl	2;	.type	32;	.endef
	.def	__ZSt11_Hash_bytesPKvjj;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZL7istargaPKhi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	___ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	__Z36gloadtruecolortile_mdloadskin_sharedPciP4vec2IiES2_S_tiS_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13uploadtexturei4vec2IiEiP7coltypeS0_i;	.scl	2;	.type	32;	.endef
	.def	_texcache_writetex_fromdriver;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_texcache_readtexheader.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	_sinf;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	_voxload;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_polymer_removelight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	__Z20buildgl_setAlphaFuncjf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z26polymost_setTexturePosSizeRK4vec4IfE;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	__Z28polymost_resetVertexPointersv;	.scl	2;	.type	32;	.endef
	.def	_polymost_voxdraw.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_useDetailMappingc;	.scl	2;	.type	32;	.endef
	.def	__Z27polymost_setupdetailtextureiii;	.scl	2;	.type	32;	.endef
	.def	__Z23polymost_useGlowMappingc;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_setupglowtextureiii;	.scl	2;	.type	32;	.endef
