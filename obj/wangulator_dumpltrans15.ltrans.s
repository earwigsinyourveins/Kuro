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
	.def	__ZN6loguru10file_flushEPv;	.scl	3;	.type	32;	.endef
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
	.def	__ZN6loguru8file_logEPvRKNS_7MessageE;	.scl	3;	.type	32;	.endef
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
	.def	__ZN6loguru10file_closeEPv;	.scl	3;	.type	32;	.endef
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
	.def	__ZL7md2freeP10md2model_t.part.0;	.scl	3;	.type	32;	.endef
__ZL7md2freeP10md2model_t.part.0:
LFB11:
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
LFE11:
	.p2align 4
	.globl	___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0
	.def	___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL16s_argv0_filenameE.lto_priv.0:
LFB12:
	.cfi_startproc
	movl	__ZN6loguruL16s_argv0_filenameE.lto_priv.0, %eax
	cmpl	$__ZN6loguruL16s_argv0_filenameE.lto_priv.0+8, %eax
	je	L211
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L211:
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	___tcf_ZN6loguruL11s_argumentsE.lto_priv.0
	.def	___tcf_ZN6loguruL11s_argumentsE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL11s_argumentsE.lto_priv.0:
LFB18:
	.cfi_startproc
	movl	__ZN6loguruL11s_argumentsE.lto_priv.0, %eax
	cmpl	$__ZN6loguruL11s_argumentsE.lto_priv.0+8, %eax
	je	L213
	jmp	_mi_free
	.p2align 4,,10
	.p2align 3
L213:
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	___tcf_ZN6loguruL11s_callbacksE.lto_priv.0
	.def	___tcf_ZN6loguruL11s_callbacksE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL11s_callbacksE.lto_priv.0:
LFB19:
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
	je	L216
	.p2align 4
	.p2align 3
L218:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L217
	call	_mi_free
L217:
	addl	$48, %ebx
	cmpl	%ebx, %esi
	jne	L218
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %ebx
L216:
	testl	%ebx, %ebx
	je	L215
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
L215:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0
	.def	___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcf_ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0:
LFB25:
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
	je	L223
	.p2align 4
	.p2align 3
L226:
	movl	24(%ebx), %eax
	leal	32(%ebx), %edx
	cmpl	%edx, %eax
	je	L224
	call	_mi_free
L224:
	movl	(%ebx), %eax
	leal	8(%ebx), %edx
	cmpl	%edx, %eax
	je	L225
	call	_mi_free
L225:
	addl	$48, %ebx
	cmpl	%ebx, %esi
	jne	L226
	movl	__ZN6loguruL21s_user_stack_cleanupsE.lto_priv.0, %ebx
L223:
	testl	%ebx, %ebx
	je	L222
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
L222:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE25:
	.section	.text.unlikely,"x"
LCOLDB1:
	.text
LHOTB1:
	.p2align 4
	.def	__ZN6loguru5flushEv;	.scl	3;	.type	32;	.endef
__ZN6loguru5flushEv:
LFB29:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L239
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	%eax, (%esp)
	call	_fflush
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %ebx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %esi
	cmpl	%ebx, %esi
	je	L232
	.p2align 4
	.p2align 3
L234:
	movl	40(%ebx), %eax
	testl	%eax, %eax
	je	L233
	movl	28(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
L233:
	addl	$48, %ebx
	cmpl	%esi, %ebx
	jne	L234
L232:
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
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
LFSB29:
L239:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
	.cfi_endproc
LFE29:
	.text
	.section	.text.unlikely,"x"
LCOLDE1:
	.text
LHOTE1:
	.p2align 4
	.globl	__ZN6loguruL9on_atexitEv.lto_priv.0
	.def	__ZN6loguruL9on_atexitEv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN6loguruL9on_atexitEv.lto_priv.0:
LFB32:
	.cfi_startproc
	jmp	__ZN6loguru5flushEv
	.cfi_endproc
LFE32:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev:
LFB33:
	.cfi_startproc
	movl	$__ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEEE+8, (%ecx)
	jmp	__ZNSt6thread6_StateD2Ev
	.cfi_endproc
LFE33:
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED1Ev;	.scl	3;	.type	32;	.endef
	.set	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED1Ev,__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED2Ev
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED0Ev;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEED0Ev:
LFB34:
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
LFE34:
	.align 2
	.p2align 4
	.def	__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEE6_M_runEv;	.scl	3;	.type	32;	.endef
__ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN6loguruL11log_messageEiRNS3_7MessageEbbEUlvE_EEEEE6_M_runEv:
LFB35:
	.cfi_startproc
	.p2align 4
	.p2align 3
L246:
	call	__ZN6loguru5flushEv
	jmp	L246
	.cfi_endproc
LFE35:
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
LFB41:
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
LFE41:
	.p2align 4
	.def	__ZL15framename2indexP9mdmodel_tPKc;	.scl	3;	.type	32;	.endef
__ZL15framename2indexP9mdmodel_tPKc:
LFB48:
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
	je	L299
	cmpl	$3, %edx
	jne	L303
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	32(%eax), %ebp
	testl	%ebp, %ebp
	jle	L319
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	188(%eax), %esi
	xorl	%ebx, %ebx
	addl	$40, %esi
	jmp	L305
	.p2align 4,,10
	.p2align 3
L320:
	addl	$1, %ebx
	addl	$56, %esi
	cmpl	%ebp, %ebx
	je	L317
L305:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L320
L317:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L322:
	movl	%ebx, %eax
	movl	20(%esp), %edi
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L319:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	24(%esp), %ebp
	.cfi_restore 5
L303:
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
L299:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	32(%eax), %esi
	testl	%esi, %esi
	jle	L315
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	88(%eax), %ecx
	xorl	%ebx, %ebx
	movl	96(%eax), %edx
	movl	%ecx, 8(%esp)
	leal	24(%edx), %ebp
	jmp	L304
	.p2align 4,,10
	.p2align 3
L321:
	addl	$1, %ebx
	addl	8(%esp), %ebp
	cmpl	%esi, %ebx
	je	L317
L304:
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L321
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L322
L315:
	.cfi_offset 6, -16
	movl	16(%esp), %esi
	.cfi_restore 6
	jmp	L303
	.cfi_endproc
LFE48:
	.p2align 4
	.def	__ZL7md2loadiPKc;	.scl	3;	.type	32;	.endef
__ZL7md2loadiPKc:
LFB49:
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
	je	L324
	movl	$0, 100(%eax)
	movl	%eax, %esi
	movl	$0, 104(%eax)
	movl	$0, 108(%eax)
	movl	$0, 112(%eax)
	xorl	%eax, %eax
L325:
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	movl	$0, 16(%esi,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L325
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
	jne	L327
	cmpl	$844121161, -340(%ebp)
	jne	L327
	cmpl	$8, -336(%ebp)
	jne	L327
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
	je	L419
	movl	-348(%ebp), %edi
	movl	%eax, 96(%esi)
	sall	$2, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L419
	movl	%eax, 92(%esi)
	movl	-308(%ebp), %eax
	leal	(%eax,%eax,2), %eax
	leal	0(,%eax,4), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L419
	movl	%eax, 112(%esi)
	movl	-312(%ebp), %eax
	leal	0(,%eax,4), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L419
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
	jne	L428
	movl	84(%esi), %eax
	testl	%eax, %eax
	jle	L342
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
	jne	L428
L342:
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
	jne	L428
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
	jne	L428
	movl	-344(%ebp), %eax
	leal	-272(%ebp), %edi
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%edi, (%esp)
	call	_strlen
	subl	$1, %eax
	testl	%eax, %eax
	jg	L348
	jmp	L345
	.p2align 4,,10
	.p2align 3
L429:
	cmpb	$92, %dl
	je	L346
	subl	$1, %eax
	je	L345
L348:
	movzbl	(%edi,%eax), %edx
	cmpb	$47, %dl
	jne	L429
L346:
	addl	$1, %eax
L345:
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
	je	L380
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
	je	L419
	movl	72(%esi), %edi
	movl	%eax, 104(%esi)
	testl	%edi, %edi
	jle	L353
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
	jne	L428
L353:
	movl	-352(%ebp), %ebx
	sall	$7, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L354
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
	je	L430
	movl	$0, 216(%eax)
	leal	4(%eax), %eax
	xorl	%edx, %edx
	movl	$0, 216(%eax)
	movl	$0, 220(%eax)
	movl	$0, 224(%eax)
L357:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$224, %edx
	jb	L357
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
	je	L431
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
	je	L362
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -344(%ebp)
	call	_memset
	movl	-344(%ebp), %edx
	movl	%edx, 200(%edi)
	movl	32(%esi), %ebx
	testl	%ebx, %ebx
	jle	L364
	movl	%edi, %edx
	movl	%esi, %ecx
	xorl	%edi, %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L363:
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
	jg	L363
	movl	%edx, %edi
	movl	%ecx, %esi
L364:
	movl	$0, 192(%edi)
	movl	$128, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L354
	movl	$0, 112(%eax)
	movl	$0, 116(%eax)
	movl	$0, 120(%eax)
	movl	$0, 124(%eax)
	xorl	%eax, %eax
L365:
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	movl	$0, 16(%ebx,%eax)
	addl	$16, %eax
	cmpl	$112, %eax
	jb	L365
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
	je	L362
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
	je	L367
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
	je	L367
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
	jle	L370
	movl	%edi, -376(%ebp)
	.p2align 4
	.p2align 3
L369:
	leal	(%edx,%edx,2), %eax
	movl	%edx, -372(%ebp)
	xorl	%ecx, %ecx
	movl	%eax, -368(%ebp)
	movl	%eax, %edi
	sall	$2, %eax
	movl	%eax, -348(%ebp)
L373:
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
	jle	L371
	movl	-368(%ebp), %eax
	movl	%ecx, -360(%ebp)
	xorl	%edx, %edx
	movl	%edi, -364(%ebp)
	addl	%ecx, %eax
	movl	%ebx, -344(%ebp)
	movl	%eax, -356(%ebp)
	.p2align 4
	.p2align 3
L372:
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
	jg	L372
	movl	-360(%ebp), %ecx
	movl	-364(%ebp), %edi
	movl	-344(%ebp), %ebx
L371:
	addl	$1, %ecx
	addl	$1, %edi
	cmpl	$3, %ecx
	jne	L373
	movl	-372(%ebp), %edx
	addl	$1, %edx
	cmpl	%edx, -308(%ebp)
	jg	L369
	movl	-376(%ebp), %edi
L370:
	movl	$160, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L374
	movl	$0, 144(%eax)
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
	xorl	%eax, %eax
L375:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$144, %eax
	jb	L375
	movl	72(%esi), %eax
	testl	%eax, %eax
	jle	L378
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
	je	L380
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
L378:
	movl	%edx, 68(%edi)
	movl	84(%ebx), %eax
	leal	(%eax,%eax), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -344(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L380
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
	je	L432
	movl	%eax, 208(%edi)
	movl	84(%ebx), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L433
	movl	%eax, 212(%edi)
	movl	%esi, %eax
	movl	$0, 216(%edi)
	call	__ZL7md2freeP10md2model_t.part.0
	jmp	L323
	.p2align 4,,10
	.p2align 3
L327:
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L330:
	xorl	%edi, %edi
L323:
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
L419:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z13handle_memerri
L428:
	movl	%esi, %eax
	call	__ZL7md2freeP10md2model_t.part.0
	jmp	L330
L324:
	movl	$116, %eax
	call	__Z13handle_memerri
L380:
	movl	-344(%ebp), %eax
	call	__Z13handle_memerri
L354:
	movl	$128, %eax
	call	__Z13handle_memerri
L362:
	movl	$12, %eax
	call	__Z13handle_memerri
L367:
	movl	$8, %eax
	call	__Z13handle_memerri
L431:
	movl	$56, %eax
	call	__Z13handle_memerri
L430:
	movl	$232, %eax
	call	__Z13handle_memerri
L374:
	movl	$160, %eax
	call	__Z13handle_memerri
L433:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L432:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	_compare_usermaphacks
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
_compare_usermaphacks:
LFB53:
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
LFE53:
	.p2align 4
	.globl	_kpgetdim.part.0.constprop.0
	.def	_kpgetdim.part.0.constprop.0;	.scl	2;	.type	32;	.endef
_kpgetdim.part.0.constprop.0:
LFB55:
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
	je	L457
	cmpw	$-9985, %ax
	je	L458
	movzbl	(%ebx), %eax
	cmpb	$71, %al
	je	L459
	cmpb	$66, %al
	je	L460
L448:
	cmpl	$134284554, (%ebx)
	je	L461
	movl	%ebx, %eax
	call	__ZL7istargaPKhi.lto_priv.0
	testl	%eax, %eax
	je	L436
	movl	%esi, 4(%esp)
	movzwl	12(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%edi)
	movzwl	14(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
L436:
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
L458:
	.cfi_restore_state
	subl	$8, %edx
	cmpl	$2, %edx
	jbe	L436
	leal	2(%ebx), %eax
	jmp	L446
	.p2align 4,,10
	.p2align 3
L463:
	movzbl	1(%eax), %ecx
	cmpb	$-1, %cl
	je	L442
	subl	$192, %ecx
	cmpl	$2, %ecx
	jbe	L462
	movzwl	2(%eax), %ecx
	rolw	$8, %cx
	movzwl	%cx, %ecx
	leal	2(%eax,%ecx), %eax
L444:
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%edx, %ecx
	jnb	L436
L446:
	cmpb	$-1, (%eax)
	je	L463
L442:
	addl	$1, %eax
	jmp	L444
	.p2align 4,,10
	.p2align 3
L457:
	cmpl	$1196314761, (%ebx)
	jne	L436
	cmpl	$169478669, 4(%ebx)
	jne	L436
	subl	$16, %edx
	cmpl	$8, %edx
	jbe	L436
	leal	8(%ebx), %eax
	jmp	L440
	.p2align 5
	.p2align 4,,10
	.p2align 3
L439:
	movl	(%eax), %ecx
	bswap	%ecx
	leal	12(%eax,%ecx), %eax
	movl	%eax, %ecx
	subl	%ebx, %ecx
	cmpl	%edx, %ecx
	jnb	L436
L440:
	cmpl	$1380206665, 4(%eax)
	jne	L439
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
	jmp	L436
	.p2align 4,,10
	.p2align 3
L460:
	cmpb	$77, 1(%ebx)
	jne	L448
	cmpl	$12, 14(%ebx)
	je	L464
	cmpw	$1, 26(%ebx)
	jne	L436
	movl	%esi, 4(%esp)
	movl	18(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movl	22(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L436
	.p2align 4,,10
	.p2align 3
L459:
	cmpb	$73, 1(%ebx)
	jne	L448
	cmpb	$70, 2(%ebx)
	jne	L448
	movl	%esi, 4(%esp)
	movzwl	6(%ebx), %eax
	.cfi_offset 6, -12
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movzwl	8(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L436
	.p2align 4,,10
	.p2align 3
L461:
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
L462:
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
	jmp	L436
L464:
	cmpw	$1, 22(%ebx)
	jne	L436
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movzwl	18(%ebx), %eax
	movl	16(%esp), %esi
	movl	%eax, (%ecx)
	movzwl	20(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L436
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__ZN6loguru24current_verbosity_cutoffEv
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
__ZN6loguru24current_verbosity_cutoffEv:
LFB56:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	ret
	.cfi_endproc
LFE56:
	.align 2
	.p2align 4
	.globl	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0;	.scl	2;	.type	32;	.endef
__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0:
LFB59:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %edx
	subl	28(%esp), %edx
	movl	%edx, 20(%esp)
	cmpl	$15, %edx
	ja	L476
	movl	(%ecx), %eax
	cmpl	$1, %edx
	jne	L469
	movl	28(%esp), %edx
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	movl	20(%esp), %edx
	movl	(%ecx), %eax
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L469:
	.cfi_restore_state
	testl	%edx, %edx
	jne	L468
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L476:
	.cfi_restore_state
	leal	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 8(%ecx)
	movl	16(%esp), %edx
L468:
	movl	%ecx, 12(%esp)
	movl	28(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	(%ecx), %eax
	movb	$0, (%eax,%edx)
	movl	%edx, 4(%ecx)
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret	$8
	.cfi_endproc
LFE59:
	.section .rdata,"dr"
LC22:
	.ascii "vector::_M_realloc_append\0"
	.section	.text.unlikely,"x"
LCOLDB23:
	.text
LHOTB23:
	.p2align 4
	.globl	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0;	.scl	2;	.type	32;	.endef
__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0:
LFB63:
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
	subl	$100, %esp
	movl	%edi, -72(%ebp)
	movl	(%edi), %esi
	movl	%edx, -68(%ebp)
	movl	4(%edi), %edi
	movl	%ecx, -76(%ebp)
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L550
	leal	-56(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	%ebx, (%esp)
	call	_strlen
	movl	%ebx, (%esp)
	leal	-64(%ebp), %ecx
	addl	%ebx, %eax
	movl	%eax, 4(%esp)
	call	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.isra.0
	movl	-68(%ebp), %eax
	subl	$8, %esp
	movl	%esi, -28(%ebp)
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %esi
	movl	%eax, -40(%ebp)
	movl	-76(%ebp), %eax
	movl	$9, -32(%ebp)
	movl	%eax, -36(%ebp)
	movl	%edi, -24(%ebp)
	movl	$0, -20(%ebp)
	cmpl	__ZN6loguruL11s_callbacksE.lto_priv.0+8, %esi
	je	L479
	leal	8(%esi), %edx
	leal	-56(%ebp), %edi
	movl	%edx, (%esi)
	movl	-60(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	%ecx, -68(%ebp)
	cmpl	%edi, %eax
	je	L559
	movl	%eax, (%esi)
	movl	-56(%ebp), %eax
	movl	%eax, 8(%esi)
L488:
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
L489:
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edx
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebx
	movl	$-9, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
	cmpl	%ebx, %edx
	je	L517
	movl	%ebx, %ecx
	movl	$-9, %eax
	subl	%edx, %ecx
	andl	$16, %ecx
	je	L518
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$48, %edx
	cmpl	%edx, %ebx
	je	L555
	.p2align 5
	.p2align 4
	.p2align 3
L518:
	movl	32(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	80(%edx), %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	addl	$96, %edx
	cmpl	%edx, %ebx
	jne	L518
L555:
	movl	%eax, __ZN6loguruL19s_max_out_verbosityE.lto_priv.0
L517:
	movl	-72(%ebp), %eax
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%eax)
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
L479:
	.cfi_restore_state
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %eax
	movl	%esi, %ebx
	subl	%eax, %ebx
	movl	%eax, -80(%ebp)
	movl	%ebx, %edx
	sarl	$4, %edx
	imull	$-1431655765, %edx, %edx
	cmpl	$44739242, %edx
	je	L551
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
	ja	L491
	movl	184(%edi,%ecx), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L560
	movl	(%ecx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L494:
	leal	(%ecx,%ebx), %eax
	leal	8(%eax), %edi
	movl	%eax, -68(%ebp)
	movl	%edi, (%eax)
	movl	-60(%ebp), %eax
	movl	-64(%ebp), %edx
	movl	%eax, -84(%ebp)
	leal	-56(%ebp), %eax
	cmpl	%eax, %edx
	je	L561
	movl	-68(%ebp), %eax
	movl	%edx, (%eax)
	movl	-56(%ebp), %edx
	movl	%edx, 8(%eax)
L503:
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
	je	L519
	movl	%esi, -68(%ebp)
	leal	8(%eax), %ebx
	movl	%ecx, %edi
	movl	%ecx, -84(%ebp)
	jmp	L515
	.p2align 4,,10
	.p2align 3
L505:
	movl	%eax, (%edi)
	movl	(%ebx), %eax
	movl	%eax, 8(%edi)
L558:
	movl	-4(%ebx), %eax
L513:
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
	je	L514
	call	_mi_free
L514:
	addl	$48, %edi
	leal	40(%ebx), %eax
	cmpl	%eax, -68(%ebp)
	je	L562
	addl	$48, %ebx
L515:
	leal	8(%edi), %ecx
	movl	%ecx, (%edi)
	movl	-8(%ebx), %eax
	cmpl	%eax, %ebx
	jne	L505
	movl	-4(%ebx), %eax
	leal	1(%eax), %esi
	cmpl	$16, %esi
	jnb	L506
	testl	$8, %esi
	jne	L563
	testl	$4, %esi
	jne	L564
	testl	%esi, %esi
	je	L513
	movzbl	(%ebx), %eax
	movb	%al, (%ecx)
	testl	$2, %esi
	je	L558
	movzwl	-2(%ebx,%esi), %eax
	movw	%ax, -2(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L513
	.p2align 4,,10
	.p2align 3
L562:
	movl	-84(%ebp), %ecx
L504:
	movl	-80(%ebp), %eax
	addl	$48, %edi
	testl	%eax, %eax
	je	L516
	movl	%ecx, -68(%ebp)
	call	_mi_free
	movl	-68(%ebp), %ecx
L516:
	movl	-64(%ebp), %eax
	movl	%ecx, __ZN6loguruL11s_callbacksE.lto_priv.0
	leal	-56(%ebp), %esi
	addl	-76(%ebp), %ecx
	movl	%edi, __ZN6loguruL11s_callbacksE.lto_priv.0+4
	movl	%ecx, __ZN6loguruL11s_callbacksE.lto_priv.0+8
	cmpl	%esi, %eax
	je	L489
	call	_mi_free
	jmp	L489
	.p2align 4,,10
	.p2align 3
L506:
	movl	-16(%ebx,%esi), %edx
	movl	%edx, -16(%ecx,%esi)
	movl	-12(%ebx,%esi), %edx
	movl	%edx, -12(%ecx,%esi)
	movl	-8(%ebx,%esi), %edx
	movl	%edx, -8(%ecx,%esi)
	movl	-4(%ebx,%esi), %edx
	movl	%edx, -4(%ecx,%esi)
	cmpl	$16, %eax
	jb	L558
	movl	%edi, -100(%ebp)
	andl	$-16, %eax
	movl	%eax, -88(%ebp)
	xorl	%eax, %eax
L511:
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
	jb	L511
	movl	-100(%ebp), %edi
	movl	-4(%ebx), %eax
	jmp	L513
	.p2align 4,,10
	.p2align 3
L559:
	leal	1(%ecx), %edi
	movl	%edi, -76(%ebp)
	cmpl	$16, %edi
	jnb	L481
	andl	$8, %edi
	jne	L565
	testb	$4, -76(%ebp)
	jne	L566
	movl	-76(%ebp), %edi
	testl	%edi, %edi
	je	L488
	movzbl	(%eax), %ebx
	andl	$2, %edi
	movb	%bl, 8(%esi)
	je	L488
	movl	-76(%ebp), %edi
	movzwl	-2(%eax,%edi), %eax
	movw	%ax, -2(%edx,%edi)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L481:
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
	jb	L488
	movl	%edi, %ecx
	movl	%esi, -84(%ebp)
	xorl	%ebx, %ebx
	andl	$-16, %ecx
	movl	%ecx, -76(%ebp)
L486:
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
	jb	L486
	movl	-84(%ebp), %esi
	jmp	L488
L561:
	movl	-84(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -88(%ebp)
	cmpl	$16, %eax
	jnb	L496
	testb	$8, %al
	jne	L567
	testb	$4, -88(%ebp)
	jne	L568
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	L503
	movzbl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movb	%dl, 8(%eax)
	testb	$2, -88(%ebp)
	je	L503
	movl	-88(%ebp), %eax
	movzwl	-58(%ebp,%eax), %edx
	movw	%dx, -2(%edi,%eax)
	jmp	L503
	.p2align 4,,10
	.p2align 3
L496:
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
	jb	L503
	andl	$-16, %eax
	movl	%esi, -100(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, -88(%ebp)
	movl	%ecx, -104(%ebp)
L501:
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
	jb	L501
	movl	-100(%ebp), %esi
	movl	-104(%ebp), %ecx
	jmp	L503
L563:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-8(%ebx,%esi), %eax
	movl	-4(%ebx,%esi), %edx
	movl	%eax, -8(%ecx,%esi)
	movl	%edx, -4(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L513
L519:
	movl	%ecx, %edi
	jmp	L504
L491:
	movl	$0, (%esp)
	movl	-76(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
L493:
	testl	%ecx, %ecx
	jne	L494
	movl	-76(%ebp), %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ecx
	jmp	L494
L560:
	movl	$0, (%esp)
	movl	-76(%ebp), %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ecx
	jmp	L493
L564:
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	-4(%ebx,%esi), %eax
	movl	%eax, -4(%ecx,%esi)
	movl	-4(%ebx), %eax
	jmp	L513
L565:
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	%ecx, 8(%esi)
	movl	%ebx, 12(%esi)
	movl	-76(%ebp), %edi
	movl	-8(%eax,%edi), %ecx
	movl	-4(%eax,%edi), %ebx
	movl	%ecx, -8(%edx,%edi)
	movl	%ebx, -4(%edx,%edi)
	jmp	L488
L566:
	movl	(%eax), %edi
	movl	%edi, 8(%esi)
	movl	-76(%ebp), %ecx
	movl	-4(%eax,%ecx), %eax
	movl	%eax, -4(%edx,%ecx)
	jmp	L488
L568:
	movl	-56(%ebp), %edx
	movl	-68(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-88(%ebp), %eax
	movl	-60(%ebp,%eax), %edx
	movl	%edx, -4(%edi,%eax)
	jmp	L503
L567:
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
	jmp	L503
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0.cold;	.scl	3;	.type	32;	.endef
__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0.cold:
LFSB63:
L550:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L551:
	movl	$LC22, (%esp)
	call	__ZSt20__throw_length_errorPKc
	.cfi_endproc
LFE63:
	.text
	.section	.text.unlikely,"x"
LCOLDE23:
	.text
LHOTE23:
	.section .rdata,"dr"
LC24:
	.ascii "\0"
LC25:
	.ascii "\33[1;0m\0"
LC26:
	.ascii "\33[1;33m\0"
LC27:
	.ascii "\33[1;31m\0"
LC28:
	.ascii "Stack trace:\12%s\0"
LC29:
	.ascii "source/build/src/loguru.cpp\0"
LC30:
	.ascii "\33[1;2m\0"
LC31:
	.ascii "%s%s%s%s%s%s%s%s\12\0"
LC32:
	.ascii "%s%s%s%s%s%s%s\12\0"
	.section	.text.unlikely,"x"
LCOLDB33:
	.text
LHOTB33:
	.p2align 4
	.def	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0;	.scl	3;	.type	32;	.endef
__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0:
LFB90:
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
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, (%esp)
	movzbl	104(%esp), %eax
	movb	%cl, 42(%esp)
	movb	%al, 43(%esp)
	call	_pthread_mutex_lock
	testl	%eax, %eax
	jne	L611
	cmpl	$-3, (%ebx)
	je	L615
L571:
	cmpb	$0, 42(%esp)
	jne	L577
	cmpl	__ZN6loguru18g_stderr_verbosityE, %esi
	jle	L578
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%ebp, %edi
	je	L580
	.p2align 4
	.p2align 3
L589:
	cmpl	32(%edi), %esi
	jg	L588
	movl	%ebx, 4(%esp)
	movl	28(%edi), %eax
	movl	%eax, (%esp)
	call	*24(%edi)
	movl	40(%edi), %eax
	testl	%eax, %eax
	je	L588
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
L588:
	addl	$48, %edi
	cmpl	%edi, %ebp
	jne	L589
L580:
	cmpl	$-3, (%ebx)
	je	L616
L592:
	movl	$__ZN6loguruL7s_mutexE.lto_priv.0, 104(%esp)
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
L577:
	.cfi_restore_state
	movl	$100, %edx
	movl	__ZN6loguruL20s_stderr_indentationE, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	subl	%eax, %edx
	leal	__ZZN6loguruL11indentationEjE4buff(,%edx,4), %eax
	movl	%eax, 16(%ebx)
	cmpl	__ZN6loguru18g_stderr_verbosityE, %esi
	jg	L581
L578:
	movl	20(%ebx), %eax
	movl	24(%ebx), %ecx
	movl	16(%ebx), %edi
	movl	12(%ebx), %ebp
	movl	%eax, 44(%esp)
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L617
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
L585:
	movl	$2, (%esp)
	call	*%edx
	movl	%eax, (%esp)
	call	_fflush
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%ebp, %edi
	je	L580
	cmpb	$0, 42(%esp)
	je	L589
	.p2align 4
	.p2align 3
L591:
	cmpl	32(%edi), %esi
	jg	L590
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
	je	L590
	movl	28(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
L590:
	addl	$48, %edi
	cmpl	%edi, %ebp
	jne	L591
	cmpl	$-3, (%ebx)
	jne	L592
L616:
	call	__ZN6loguru5flushEv
	movl	__ZN6loguruL15s_fatal_handlerE.lto_priv.0, %eax
	testl	%eax, %eax
	je	L593
	movl	%ebx, (%esp)
	call	*%eax
	call	__ZN6loguru5flushEv
L593:
	cmpb	$0, 43(%esp)
	je	L592
	jmp	L612
	.p2align 4,,10
	.p2align 3
L617:
	movl	%ecx, 56(%esp)
	testl	%esi, %esi
	js	L583
	movl	$LC25, %edx
	movl	$LC24, %ecx
	movl	$2, (%esp)
	cmove	%edx, %ecx
	movl	__imp____acrt_iob_func, %edx
	movl	%ecx, 48(%esp)
	movl	%edx, 52(%esp)
	call	*%edx
	movl	56(%esp), %ecx
	movl	$LC25, 36(%esp)
	movl	%edi, 20(%esp)
	movl	%ecx, 32(%esp)
	movl	44(%esp), %ecx
	movl	%ebp, 16(%esp)
	movl	%ecx, 28(%esp)
	movl	48(%esp), %ecx
	movl	$LC30, 12(%esp)
	movl	%ecx, 24(%esp)
	movl	$LC25, 8(%esp)
	movl	$LC31, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	52(%esp), %edx
	jmp	L585
	.p2align 4,,10
	.p2align 3
L615:
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
	je	L572
	call	_mi_free
L572:
	movl	44(%esp), %eax
	cmpb	$0, (%eax)
	je	L574
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L618
L574:
	movl	%ebp, %eax
	movl	%ebp, 60(%esp)
	movb	$0, 68(%esp)
	movl	$0, 64(%esp)
	call	__xstrdup
	movl	%eax, %edi
	movl	60(%esp), %eax
	cmpl	%ebp, %eax
	je	L575
	call	_mi_free
L575:
	cmpb	$0, (%edi)
	je	L576
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L619
L576:
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
	jmp	L571
	.p2align 4,,10
	.p2align 3
L581:
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0, %edi
	movl	__ZN6loguruL11s_callbacksE.lto_priv.0+4, %ebp
	cmpl	%edi, %ebp
	jne	L591
	jmp	L580
	.p2align 4,,10
	.p2align 3
L583:
	cmpl	$-1, %esi
	movl	$LC27, %edx
	movl	$LC26, %eax
	movl	$2, (%esp)
	cmovne	%edx, %eax
	movl	__imp____acrt_iob_func, %edx
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	call	*%edx
	movl	56(%esp), %ecx
	movl	44(%esp), %edx
	movl	%edi, 20(%esp)
	movl	$LC25, 32(%esp)
	movl	%ecx, 28(%esp)
	movl	48(%esp), %ecx
	movl	%edx, 24(%esp)
	movl	%ebp, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$LC25, 8(%esp)
	movl	$LC32, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	52(%esp), %edx
	jmp	L585
L619:
	movl	%edi, 16(%esp)
	movl	$LC6, 12(%esp)
	movl	$1497, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0
	jmp	L576
L618:
	movl	44(%esp), %eax
	movl	$LC28, 12(%esp)
	movl	$1492, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0
	jmp	L574
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0.cold;	.scl	3;	.type	32;	.endef
__ZN6loguruL11log_messageEiRNS_7MessageEbb.constprop.0.cold:
LFSB90:
L611:
	.cfi_def_cfa_offset 104
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	call	__ZSt20__throw_system_errori
L612:
	call	_abort
	.cfi_endproc
LFE90:
	.text
	.section	.text.unlikely,"x"
LCOLDE33:
	.text
LHOTE33:
	.p2align 4
	.globl	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0:
LFB118:
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
LFE118:
	.section .rdata,"dr"
LC34:
	.ascii "Bad string format: '%s'\0"
	.align 4
LC35:
	.ascii "CHECK FAILED:  bytes_needed >= 0  \0"
	.align 4
LC36:
	.ascii "CHECK FAILED:  written <= bytes_needed  \0"
	.text
	.p2align 4
	.def	__ZN6loguruL11vtextprintfEPKcPc;	.scl	3;	.type	32;	.endef
__ZN6loguruL11vtextprintfEPKcPc:
LFB122:
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
	js	L627
	leal	1(%eax), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L628
	movl	48(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	___ms_vsnprintf
	cmpl	%eax, %ebx
	jl	L629
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
L627:
	.cfi_restore_state
	movl	48(%esp), %eax
	movl	$LC34, 16(%esp)
	movl	$451, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.p2align 4,,10
	.p2align 3
L628:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L629:
	movl	48(%esp), %eax
	movl	$LC34, 16(%esp)
	movl	$461, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	__ZN6loguru10textprintfEPKcz
	.def	__ZN6loguru10textprintfEPKcz;	.scl	2;	.type	32;	.endef
__ZN6loguru10textprintfEPKcz:
LFB125:
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
LFE125:
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
	.p2align 4
	.def	__ZN6loguru7raw_logEiPKcjS1_z.constprop.0;	.scl	3;	.type	32;	.endef
__ZN6loguru7raw_logEiPKcjS1_z.constprop.0:
LFB129:
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
	movl	$LC29, -36(%ebp)
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
LFE129:
	.p2align 4
	.globl	__ZN6loguru13log_and_abortEiPKcS1_jS1_z
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z;	.scl	2;	.type	32;	.endef
__ZN6loguru13log_and_abortEiPKcS1_jS1_z:
LFB117:
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
LFE117:
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
LFB130:
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
	je	L639
	movl	$LC42, %esi
	cmpl	$8, %eax
	je	L639
	movl	$LC41, %esi
	cmpl	$4, %eax
	jne	L661
L639:
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L659
	movl	__imp__GetStdHandle@4, %ebx
	movl	__imp__WriteFile@20, %edi
L640:
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
	jne	L662
L643:
	cmpb	$0, __ZN6loguruL16s_signal_optionsE.lto_priv.0
	jne	L663
L644:
	movl	-124(%ebp), %ecx
	movl	__ZN6loguru15default_handlerE(,%ecx,4), %eax
	leal	-1(%eax), %edx
	cmpl	$-3, %edx
	ja	L638
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
L638:
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
L663:
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
	jmp	L644
	.p2align 4,,10
	.p2align 3
L662:
	movl	$-12, (%esp)
	call	*%ebx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	jmp	L643
	.p2align 4,,10
	.p2align 3
L659:
	movl	$-12, (%esp)
	movl	__imp__GetStdHandle@4, %ebx
	call	*%ebx
	movl	__imp__WriteFile@20, %edi
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$6, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$20, %esp
	cmpb	$0, __ZN6loguruL20s_terminal_has_colorE.lto_priv.0
	jne	L664
	xorl	%edx, %edx
	movl	$LC24, %ecx
L641:
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
	je	L653
	movl	$7, %edx
	movl	$LC45, %ecx
L642:
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
	jmp	L640
	.p2align 4,,10
	.p2align 3
L661:
	movl	$LC40, %esi
	cmpl	$2, %eax
	je	L639
	cmpl	$11, %eax
	jne	L665
	movl	$LC37, %esi
	jmp	L639
	.p2align 4,,10
	.p2align 3
L664:
	movl	$6, %edx
	movl	$LC44, %ecx
	jmp	L641
	.p2align 4,,10
	.p2align 3
L653:
	xorl	%edx, %edx
	movl	$LC24, %ecx
	jmp	L642
L665:
	cmpl	$15, %eax
	movl	$LC43, %edx
	movl	$LC39, %eax
	cmovne	%edx, %eax
	movl	%eax, %esi
	jmp	L639
	.cfi_endproc
LFE130:
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
LFB135:
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
	jne	L667
L691:
	movl	%edi, %ebp
	movl	$73, %esi
	xorl	%ebx, %ebx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L669
L670:
	movl	$LC50, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L669
	addl	%eax, %ebx
L673:
	cmpl	$72, %ebx
	jbe	L693
L666:
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
L693:
	.cfi_restore_state
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
	.p2align 4
	.p2align 3
L669:
	movl	$LC51, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L694
	addl	%eax, %ebx
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	je	L679
	cmpl	$72, %ebx
	ja	L666
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L676:
	movl	$LC52, 16(%esp)
	movl	$8, 12(%esp)
	movl	$LC13, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L692
	addl	%eax, %ebx
L679:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	je	L681
	cmpl	$72, %ebx
	ja	L666
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L677:
	movl	$LC53, 16(%esp)
	movl	$12, 12(%esp)
	movl	$LC54, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L678
	addl	%eax, %ebx
L681:
	cmpl	$72, %ebx
	ja	L666
	movl	$73, %esi
	leal	(%edi,%ebx), %ebp
	subl	%ebx, %esi
L678:
	movl	$LC55, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L682
	addl	%ebx, %eax
	cmpl	$72, %eax
	ja	L666
	movl	$73, %esi
	leal	(%edi,%eax), %ebp
	subl	%eax, %esi
L682:
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
L667:
	.cfi_restore_state
	movl	$LC49, 8(%esp)
	movl	$73, 4(%esp)
	movl	%eax, (%esp)
	call	_snprintf
	testl	%eax, %eax
	jle	L691
	movl	%eax, %ebx
	cmpb	$0, __ZN6loguru15g_preamble_timeE
	je	L673
	cmpl	$72, %eax
	ja	L666
	movl	$73, %esi
	leal	(%edi,%eax), %ebp
	subl	%eax, %esi
	jmp	L670
	.p2align 4,,10
	.p2align 3
L694:
	cmpb	$0, __ZN6loguru17g_preamble_threadE
	jne	L676
L692:
	cmpb	$0, __ZN6loguru15g_preamble_fileE
	jne	L677
	jmp	L678
	.cfi_endproc
LFE135:
	.section .rdata,"dr"
LC56:
	.ascii "USERPROFILE\0"
LC57:
	.ascii "Missing USERPROFILE\0"
	.align 4
LC58:
	.ascii "CHECK FAILED:  home != nullptr  \0"
LC59:
	.ascii "%s%s\0"
LC60:
	.ascii " \0"
	.align 4
LC61:
	.ascii "CHECK FAILED:  file_path_const && *file_path_const  \0"
	.align 4
LC62:
	.ascii "Failed to create directory '%s'\0"
LC63:
	.ascii "EACCES\0"
LC64:
	.ascii "ENAMETOOLONG\0"
LC65:
	.ascii "ENOENT\0"
LC66:
	.ascii "ENOTDIR\0"
LC67:
	.ascii "ELOOP\0"
	.align 4
LC68:
	.ascii "Failed to create directories to '%s'\0"
LC69:
	.ascii "w\0"
LC70:
	.ascii "Failed to open '%s'\0"
LC71:
	.ascii "%s\12\0"
	.align 4
LC72:
	.ascii "Started at %04d-%02d-%02d %02d:%02d:%02d.%03lld\0"
	.align 4
LC73:
	.ascii "Logging to '%s', mode: '%s', verbosity: %d\0"
	.text
	.p2align 4
	.globl	__ZN6loguru8add_fileEPKcNS_8FileModeEi.constprop.0.isra.0
	.def	__ZN6loguru8add_fileEPKcNS_8FileModeEi.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__ZN6loguru8add_fileEPKcNS_8FileModeEi.constprop.0.isra.0:
LFB138:
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
	subl	$388, %esp
	.cfi_def_cfa_offset 408
	cmpb	$126, _tempbuf
	je	L718
	leal	128(%esp), %ebp
	movl	$_tempbuf, 12(%esp)
	movl	$LC6, 8(%esp)
	movl	$259, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
L698:
	cmpb	$0, 128(%esp)
	je	L699
	movl	%ebp, %eax
	call	__xstrdup
	movl	$47, 4(%esp)
	movl	%eax, %ebx
	leal	1(%eax), %eax
	movl	%eax, (%esp)
	call	_strchr
	movl	__imp___mkdir, %esi
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L700
	jmp	L701
	.p2align 4,,10
	.p2align 3
L702:
	leal	1(%edi), %edx
	movb	$47, (%edi)
	movl	$47, 4(%esp)
	movl	%edx, (%esp)
	call	_strchr
	movl	%eax, %edi
	testl	%eax, %eax
	je	L701
L700:
	movb	$0, (%edi)
	movl	%ebx, (%esp)
	call	*%esi
	cmpl	$-1, %eax
	jne	L702
	call	*__imp___errno
	cmpl	$17, (%eax)
	je	L702
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L719
L703:
	movb	$47, (%edi)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 404
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 408
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L708
	movl	%ebp, 16(%esp)
	movl	$LC68, 12(%esp)
	movl	$851, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L708
	.p2align 4,,10
	.p2align 3
L701:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 404
	subl	$4, %esp
	.cfi_def_cfa_offset 408
L708:
	movl	$32, 8(%esp)
	movl	$LC69, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___fsopen
	movl	%eax, %esi
	testl	%eax, %eax
	je	L720
	movl	$__ZN6loguru10file_flushEPv, 4(%esp)
	movl	%eax, %ecx
	movl	$__ZN6loguru8file_logEPvRKNS_7MessageE, %edx
	leal	52(%esp), %ebx
	movl	$__ZN6loguru10file_closeEPv, (%esp)
	movl	$_tempbuf, %eax
	call	__ZN6loguru12add_callbackEPKcPFvPvRKNS_7MessageEES2_iPFvS2_ES9_.constprop.0
	movl	%ebx, %eax
	call	__ZN6loguruL21print_preamble_headerEPcj.part.0.constprop.0
	movl	%esi, (%esp)
	movl	%ebx, 8(%esp)
	movl	$LC71, 4(%esp)
	call	_fprintf
	movl	%esi, (%esp)
	call	_fflush
	call	__ZNSt6chrono3_V212system_clock3nowEv
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___divdi3
	movl	%ebx, (%esp)
	movl	%eax, 48(%esp)
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	call	__localtime32_s
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L721
	movl	__ZN6loguru20g_internal_verbosityE, %edx
	cmpl	%edx, %eax
	jge	L722
L695:
	addl	$388, %esp
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
L721:
	.cfi_restore_state
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	___divdi3
	movl	$1000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___moddi3
	movl	$LC72, 12(%esp)
	movl	%eax, 40(%esp)
	movl	52(%esp), %eax
	movl	$902, 8(%esp)
	movl	%eax, 36(%esp)
	movl	56(%esp), %eax
	movl	$LC29, 4(%esp)
	movl	%eax, 32(%esp)
	movl	60(%esp), %eax
	movl	$0, (%esp)
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movl	%edx, 44(%esp)
	movl	%eax, 24(%esp)
	movl	68(%esp), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	72(%esp), %eax
	addl	$1900, %eax
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	__ZN6loguru20g_internal_verbosityE, %edx
	cmpl	%edx, %eax
	jl	L695
	jmp	L722
	.p2align 4,,10
	.p2align 3
L718:
	movl	$LC56, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L723
	leal	128(%esp), %ebp
	movl	$_tempbuf+1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC59, 8(%esp)
	movl	$259, 4(%esp)
	movl	%ebp, (%esp)
	call	_snprintf
	jmp	L698
	.p2align 4,,10
	.p2align 3
L720:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L695
	movl	%ebp, 16(%esp)
	movl	$LC70, 12(%esp)
	movl	$863, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L695
	.p2align 4,,10
	.p2align 3
L722:
	movl	%ebp, 16(%esp)
	movl	$9, 24(%esp)
	movl	$LC69, 20(%esp)
	movl	$LC73, 12(%esp)
	movl	$906, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$388, %esp
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
L699:
	.cfi_restore_state
	movl	$LC60, 16(%esp)
	movl	$810, 12(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC61, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z
L719:
	movl	%ebx, 16(%esp)
	movl	$LC62, 12(%esp)
	movl	$822, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L703
	call	*__imp___errno
	cmpl	$13, (%eax)
	je	L724
L704:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L703
	call	*__imp___errno
	cmpl	$38, (%eax)
	je	L725
L705:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L703
	call	*__imp___errno
	cmpl	$2, (%eax)
	je	L726
L706:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L703
	call	*__imp___errno
	cmpl	$20, (%eax)
	je	L727
L707:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L703
	call	*__imp___errno
	cmpl	$114, (%eax)
	jne	L703
	movl	$LC67, 12(%esp)
	movl	$827, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L703
L723:
	movl	$LC57, 16(%esp)
	movl	$762, 12(%esp)
	movl	$LC29, 8(%esp)
	movl	$LC58, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L727:
	movl	$LC66, 12(%esp)
	movl	$826, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L707
L724:
	movl	$LC63, 12(%esp)
	movl	$823, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L704
L726:
	movl	$LC65, 12(%esp)
	movl	$825, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L706
L725:
	movl	$LC64, 12(%esp)
	movl	$824, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L705
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	_md4block
	.def	_md4block;	.scl	2;	.type	32;	.endef
_md4block:
LFB144:
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
	jnb	L754
L732:
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
L754:
	.cfi_restore_state
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	cmpl	$16, %ebx
	jnb	L733
	testb	$8, %bl
	jne	L755
	testb	$4, %bl
	jne	L756
	testl	%ebx, %ebx
	je	L734
	movl	12(%esp), %eax
	leal	24(%edi,%ecx), %edx
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	testb	$2, %bl
	jne	L757
L734:
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
	jnb	L758
	.p2align 4
	.p2align 3
L740:
	leal	0(%ebp,%ebx), %edx
	movl	%edi, %eax
	call	__ZL12MD4TransformPjPKh
	leal	127(%ebx), %eax
	addl	$64, %ebx
	cmpl	%esi, %eax
	jb	L740
	addl	%ebx, %ebp
	subl	%ebx, %esi
	movl	%ebp, 12(%esp)
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L732
	.p2align 4,,10
	.p2align 3
L733:
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
	jb	L734
	movl	%ecx, 16(%esp)
	andl	$-16, %eax
	movl	%ebx, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
L738:
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
	jb	L738
	movl	16(%esp), %ecx
	movl	20(%esp), %ebx
	movl	%ebp, 12(%esp)
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	jmp	L734
L758:
	addl	%ebx, 12(%esp)
	movl	44(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	leal	-64(%ecx,%esi), %esi
	jmp	L732
L755:
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
	jmp	L734
L756:
	movl	12(%esp), %ebp
	leal	24(%edi,%ecx), %edx
	movl	0(%ebp), %eax
	movl	%eax, (%edx)
	movl	-4(%ebp,%ebx), %eax
	movl	%eax, -4(%edx,%ebx)
	jmp	L734
L757:
	movl	12(%esp), %eax
	movzwl	-2(%eax,%ebx), %eax
	movw	%ax, -2(%edx,%ebx)
	jmp	L734
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__ZL6EncodePhPKjj.lto_priv.0
	.def	__ZL6EncodePhPKjj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL6EncodePhPKjj.lto_priv.0:
LFB145:
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
L760:
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
	jne	L760
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE145:
	.p2align 4
	.globl	_md_freevbos
	.def	_md_freevbos;	.scl	2;	.type	32;	.endef
_md_freevbos:
LFB146:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L764
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	jmp	L766
	.p2align 5
	.p2align 4,,10
	.p2align 3
L765:
	addl	$1, %ebx
	cmpl	%ebx, _nextmodelid
	jle	L776
L766:
	movl	_models, %eax
	movl	(%eax,%ebx,4), %esi
	cmpl	$3, (%esi)
	jne	L765
	movl	216(%esi), %eax
	testl	%eax, %eax
	je	L765
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
	jg	L766
L776:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %esi
	.cfi_restore 6
L764:
	movl	__ZL9allocvbos, %eax
	testl	%eax, %eax
	je	L763
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
L763:
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE146:
	.p2align 4
	.globl	_clearskins
	.def	_clearskins;	.scl	2;	.type	32;	.endef
_clearskins:
LFB147:
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
	jle	L778
	testl	%eax, %eax
	movl	$0, 8(%esp)
	sete	15(%esp)
	jmp	L789
L779:
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L782
	cmpb	$0, 15(%esp)
	jne	L821
L782:
	addl	$1, 8(%esp)
	movl	8(%esp), %eax
	cmpl	%eax, _nextmodelid
	jle	L778
L789:
	movl	_models, %eax
	movl	8(%esp), %edx
	movl	(%eax,%edx,4), %esi
	movl	(%esi), %eax
	cmpl	$1, %eax
	jne	L779
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L781:
	movl	24(%esi), %eax
	addl	%ebx, %eax
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L780
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	24(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, (%eax,%ebx)
L780:
	addl	$4, %ebx
	cmpl	$1024, %ebx
	jne	L781
	jmp	L782
L778:
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L793:
	movl	_voxmodels(,%edi,4), %esi
	testl	%esi, %esi
	je	L790
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L792:
	movl	24(%esi), %eax
	addl	%ebx, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L791
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	24(%esi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, (%eax,%ebx)
L791:
	addl	$4, %ebx
	cmpl	$1024, %ebx
	jne	L792
	movl	84(%esi), %eax
	testl	%eax, %eax
	je	L790
	leal	84(%esi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, 84(%esi)
L790:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L793
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
L821:
	.cfi_restore_state
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	72(%esi), %ecx
	testl	%ecx, %ecx
	jle	L783
	xorl	%ebx, %ebx
L785:
	movl	24(%esi), %eax
	leal	(%eax,%ebx,4), %eax
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	L784
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
L784:
	movl	72(%esi), %eax
	addl	$1, %ebx
	sall	$5, %eax
	cmpl	%ebx, %eax
	jg	L785
L783:
	movl	68(%esi), %esi
	testl	%esi, %esi
	je	L820
L786:
	leal	16(%esi), %ebp
	leal	144(%esi), %ebx
	.p2align 4
	.p2align 3
L788:
	movl	0(%ebp), %edi
	testl	%edi, %edi
	je	L787
	movl	%ebp, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 28
	movl	%edi, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	$0, 0(%ebp)
	call	__ZL14nullskintexidsj
L787:
	addl	$4, %ebp
	cmpl	%ebp, %ebx
	jne	L788
	movl	144(%esi), %esi
	testl	%esi, %esi
	jne	L786
L820:
	movl	28(%esp), %ebp
	.cfi_restore 5
	jmp	L782
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	_md_undefinetile.isra.0
	.def	_md_undefinetile.isra.0;	.scl	2;	.type	32;	.endef
_md_undefinetile.isra.0:
LFB149:
	.cfi_startproc
	movl	_mdinited, %edx
	testl	%edx, %edx
	je	L825
	cmpl	$30719, %eax
	ja	L825
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
L825:
	ret
	.cfi_endproc
LFE149:
	.section .rdata,"dr"
LC75:
	.ascii "Skin \"%s\" not found.\12\0"
	.align 4
LC76:
	.ascii "Unable to load cached data: %s (error %x)\0"
LC77:
	.ascii "source/build/src/texcache.cpp\0"
	.align 4
LC78:
	.ascii "Failed loading skin file \"%s\".\12\0"
	.align 4
LC79:
	.ascii "Load skin: p%d-e%d \"%s\"... cached... %d ms\12\0"
LC80:
	.ascii "Cached skin \"%s\"\12\0"
	.align 4
LC81:
	.ascii "Load skin: p%d-e%d \"%s\"... %d ms\12\0"
	.text
	.p2align 4
	.globl	_mdloadskin
	.def	_mdloadskin;	.scl	2;	.type	32;	.endef
_mdloadskin:
LFB152:
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
	ja	L830
	movl	68(%ebx), %edi
	testl	%edi, %edi
	je	L830
	movl	%ebx, -600(%ebp)
	xorl	%ebx, %ebx
	movl	%ecx, -592(%ebp)
	movl	%edx, -584(%ebp)
	testl	%ecx, %ecx
	jne	L1051
	movl	%eax, -588(%ebp)
	movl	$-1, %edx
	movl	-584(%ebp), %eax
	movl	$2, %esi
	jmp	L833
	.p2align 4
	.p2align 4,,10
	.p2align 3
L878:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L848
L833:
	cmpb	$0, (%edi)
	jne	L878
	movl	4(%edi), %ecx
	cmpl	%eax, %ecx
	je	L1052
	testl	%ecx, %ecx
	jne	L878
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L874
	testl	%eax, %eax
	je	L872
	testl	%edx, %edx
	movl	$1, %ecx
	cmovle	%edi, %ebx
	movl	144(%edi), %edi
	cmovle	%ecx, %edx
	testl	%edi, %edi
	jne	L833
	.p2align 4
	.p2align 3
L848:
	movl	-592(%ebp), %eax
	cmpl	$251, %eax
	jg	L830
	testl	%ebx, %ebx
	je	L830
	movl	12(%ebx), %esi
	movl	%esi, -588(%ebp)
	movl	_globalnoeffect, %esi
	testl	%esi, %esi
	jne	L964
	movzwl	_hictinting(,%eax,8), %eax
	leal	0(,%eax,8), %edx
	andl	$7, %eax
	andl	$1536, %edx
	movl	%edx, %esi
	orl	%eax, %esi
	leal	16(,%esi,4), %edi
L879:
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
	jnb	L880
	testb	$8, %al
	jne	L1053
	testb	$4, %al
	jne	L1054
	testl	%eax, %eax
	je	L881
	movl	-588(%ebp), %ecx
	movzbl	(%ecx), %edx
	movb	%dl, -272(%ebp)
	testb	$2, %al
	je	L881
	movzwl	-2(%ecx,%eax), %edx
	movw	%dx, -274(%ebp,%eax)
L881:
	movl	-588(%ebp), %eax
	movb	$0, -17(%ebp)
	cmpb	$0, (%eax)
	je	L830
	movl	16(%ebx,%esi,4), %eax
	testl	%eax, %eax
	jne	L828
	leal	(%ebx,%edi), %eax
	movl	%ebx, %edi
	movl	%eax, -608(%ebp)
L892:
	movl	-608(%ebp), %eax
	xorl	%edx, %edx
	movl	$0, (%eax)
	movl	-596(%ebp), %eax
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1055
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
	jne	L904
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	movw	%ax, -616(%ebp)
	movzbl	-616(%ebp), %eax
	andl	$-57, %eax
L904:
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
	jne	L905
	leal	-560(%ebp), %eax
	xorl	%esi, %esi
	movl	$0, -576(%ebp)
	movl	$0, -572(%ebp)
	movl	$1, -636(%ebp)
	movl	%eax, -624(%ebp)
L906:
	movl	_globalnoeffect, %eax
	movb	$-1, -560(%ebp)
	movb	$1, -577(%ebp)
	testl	%eax, %eax
	je	L914
	xorl	%eax, %eax
L915:
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
	je	L1056
	movl	-568(%ebp), %eax
	movl	-564(%ebp), %edx
	cmpb	$-1, -560(%ebp)
	setne	%cl
	movl	%eax, -616(%ebp)
	movl	%edx, -620(%ebp)
	movb	%cl, -637(%ebp)
	testb	$1, _glinfo+28
	jne	L918
	imull	%eax, %edx
	subl	$1, %edx
	js	L918
	movl	%edi, -588(%ebp)
	leal	(%esi,%edx,4), %eax
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L919:
	leal	2(%eax), %ebx
/APP
 # 734 "source/build/src/mdsprite.cpp" 1
	movb (%eax), %cl; movb (%ebx), %ch; movb %cl, (%ebx); movb %ch, (%eax)
 # 0 "" 2
/NO_APP
	subl	$1, %edx
	subl	$4, %eax
	cmpl	$-1, %edx
	jne	L919
	movl	%edi, %ecx
	movl	-588(%ebp), %edi
L918:
	movzbl	%cl, %eax
	movl	%eax, -588(%ebp)
	cmpl	$251, -592(%ebp)
	jg	L920
	movl	-600(%ebp), %ebx
	movl	%eax, 48(%ebx)
L920:
	cmpl	$1, -636(%ebp)
	jne	L921
	movl	-608(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	subl	$8, %esp
L921:
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
L913:
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
	jne	L923
	movl	-576(%ebp), %eax
	movl	-572(%ebp), %edx
	cmpl	-616(%ebp), %eax
	je	L1057
L924:
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
	je	L1058
	cmpl	$3, %eax
	je	L1059
L925:
	movl	-584(%ebp), %eax
	movl	-600(%ebp), %ebx
	addl	$1, %eax
	movl	%eax, 76(%ebx)
L923:
	movl	_glad_glTexParameteri, %eax
	testb	$2, 1(%edi)
	jne	L932
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
	je	L1060
L947:
	movss	LC74, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_glanisotropy, %xmm1
	comiss	%xmm1, %xmm0
	jnb	L934
	movss	_glinfo+16, %xmm2
	movaps	%xmm2, %xmm0
	cmpnless	%xmm1, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L934:
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
	jne	L937
	testb	$64, _glinfo+29
	je	L937
	movl	_glusetexcache, %eax
	testl	%eax, %eax
	je	L937
	movzbl	1(%edi), %eax
	testb	$1, %al
	jne	L937
	movl	_glusetexcompr, %edx
	cmpl	$2, %edx
	je	L938
	testl	%edx, %edx
	je	L937
	testb	$32, %al
	jne	L937
L938:
	movl	-616(%ebp), %ebx
	cmpl	$1, %ebx
	jle	L939
	leal	-1(%ebx), %ecx
	movl	$1, %edx
	testl	%ecx, %ebx
	jne	L940
L939:
	movl	-620(%ebp), %ebx
	xorl	%edx, %edx
	cmpl	$1, %ebx
	jle	L940
	leal	-1(%ebx), %edx
	testl	%edx, %ebx
	setne	%dl
L940:
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
	je	L942
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
	jle	L943
	cmpl	$0, _globalnoeffect
	jne	L944
	movl	-592(%ebp), %ebx
	movzwl	_hictinting(,%ebx,8), %edx
	movl	%edx, %esi
	andl	$199, %esi
L944:
	movl	%eax, 16(%esp)
	movl	-596(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-592(%ebp), %eax
	movl	$LC79, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L943:
	movl	$0, _gloadtile_willprint
L945:
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
L1055:
	.cfi_restore_state
	movl	-596(%ebp), %eax
	movl	$LC75, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	-588(%ebp), %eax
	movb	$0, (%eax)
	.p2align 4
	.p2align 3
L830:
	xorl	%eax, %eax
L828:
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
L1051:
	.cfi_restore_state
	movl	%eax, -588(%ebp)
	movl	$-1, %esi
	testl	%edx, %edx
	je	L951
	movl	%ecx, %eax
	jmp	L847
	.p2align 4,,10
	.p2align 3
L835:
	testb	%cl, %cl
	jne	L840
	movl	4(%edi), %edx
	cmpl	%edx, -584(%ebp)
	je	L1061
	testl	%edx, %edx
	jne	L840
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L1062
	cmpl	$-1, %esi
	movl	$0, %ecx
	sete	%dl
	testb	%dl, %dl
	cmovne	%edi, %ebx
	cmovne	%ecx, %esi
	.p2align 4
	.p2align 3
L840:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L848
L847:
	movzbl	(%edi), %ecx
	cmpl	%ecx, %eax
	jne	L835
	movl	4(%edi), %edx
	cmpl	%edx, -584(%ebp)
	je	L1063
	testl	%edx, %edx
	jne	L840
	movl	-588(%ebp), %edx
	cmpl	%edx, 8(%edi)
	je	L1064
	testl	%esi, %esi
	movl	$1, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L840
	.p2align 4,,10
	.p2align 3
L1052:
	movl	-588(%ebp), %ecx
	cmpl	%ecx, 8(%edi)
	je	L837
	testl	%eax, %eax
	jne	L872
	movl	-588(%ebp), %ecx
	cmpl	%ecx, 8(%edi)
	je	L1065
L872:
	cmpl	$1, %edx
	cmovle	%edi, %ebx
	cmovle	%esi, %edx
	jmp	L878
L1065:
	cmpl	$2, %edx
	movl	$3, %ecx
	cmovle	%edi, %ebx
	cmovle	%ecx, %edx
	jmp	L878
	.p2align 4,,10
	.p2align 3
L874:
	cmpl	$4, %edx
	movl	$4, %ecx
	cmovne	%edi, %ebx
	cmovne	%ecx, %edx
	jmp	L878
L951:
	movl	-592(%ebp), %ecx
	jmp	L834
	.p2align 4,,10
	.p2align 3
L1041:
	testb	%dl, %dl
	jne	L851
	movl	4(%edi), %eax
	testl	%eax, %eax
	je	L1066
	.p2align 4
	.p2align 3
L851:
	movl	144(%edi), %edi
	testl	%edi, %edi
	je	L848
L834:
	movzbl	(%edi), %edx
	cmpl	%edx, %ecx
	jne	L1041
	movl	4(%edi), %eax
	testl	%eax, %eax
	jne	L851
	movl	-588(%ebp), %eax
	cmpl	8(%edi), %eax
	je	L837
	movl	-588(%ebp), %eax
	cmpl	%eax, 8(%edi)
	je	L1067
	testl	%esi, %esi
	movl	$1, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L851
	.p2align 4,,10
	.p2align 3
L1061:
	movl	-588(%ebp), %ecx
	cmpl	8(%edi), %ecx
	je	L1068
	cmpl	$1, %esi
	movl	$2, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L840
	.p2align 4,,10
	.p2align 3
L1063:
	movl	-588(%ebp), %edx
	cmpl	8(%edi), %edx
	jne	L840
L837:
	movl	12(%edi), %eax
	movl	%eax, -588(%ebp)
	movl	_globalnoeffect, %eax
	movl	%eax, -632(%ebp)
	testl	%eax, %eax
	je	L1069
	movl	$0, -636(%ebp)
	movl	$16, %eax
	xorl	%ebx, %ebx
L862:
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
	jnb	L863
	testb	$8, %al
	jne	L1070
	testb	$4, %al
	jne	L1071
	testl	%eax, %eax
	je	L864
	movl	-588(%ebp), %esi
	movzbl	(%esi), %edx
	movb	%dl, -272(%ebp)
	testb	$2, %al
	jne	L1072
L864:
	movl	-588(%ebp), %eax
	movb	$0, -17(%ebp)
	cmpb	$0, (%eax)
	je	L830
	leal	4(%ebx), %edx
	movl	(%edi,%edx,4), %eax
	testl	%eax, %eax
	jne	L828
	cmpl	$251, -592(%ebp)
	jle	L892
	movl	_nextmodelid, %eax
	movl	%eax, -616(%ebp)
	testl	%eax, %eax
	jle	L892
	movl	-632(%ebp), %ecx
	movl	_models, %eax
	testl	%ecx, %ecx
	je	L1047
	movl	%edi, -628(%ebp)
	movl	%edx, %ebx
	xorl	%ecx, %ecx
	movl	%eax, %edx
L899:
	movl	(%edx,%ecx,4), %eax
	movl	68(%eax), %edi
	testl	%edi, %edi
	je	L894
	movl	-628(%ebp), %eax
	movl	%edx, -620(%ebp)
	movl	%ecx, -624(%ebp)
	movl	12(%eax), %esi
	.p2align 4
	.p2align 3
L896:
	movl	%esi, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L898
	movl	(%edi,%ebx,4), %eax
	testl	%eax, %eax
	jne	L1048
L898:
	movl	144(%edi), %edi
	testl	%edi, %edi
	jne	L896
	movl	-620(%ebp), %edx
	movl	-624(%ebp), %ecx
L894:
	addl	$1, %ecx
	cmpl	-616(%ebp), %ecx
	jne	L899
L1050:
	movl	-628(%ebp), %edi
	jmp	L892
	.p2align 4,,10
	.p2align 3
L1066:
	movl	-588(%ebp), %eax
	cmpl	8(%edi), %eax
	je	L1073
	cmpl	$1, %esi
	movl	$2, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L851
	.p2align 4,,10
	.p2align 3
L1062:
	cmpl	$2, %esi
	movl	$3, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L840
	.p2align 4,,10
	.p2align 3
L1068:
	cmpl	$5, %esi
	movl	$5, %edx
	cmovne	%edi, %ebx
	cmovne	%edx, %esi
	jmp	L840
L1073:
	cmpl	$5, %esi
	movl	$5, %eax
	cmovne	%edi, %ebx
	cmovne	%eax, %esi
	jmp	L851
L880:
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
	jb	L881
	movl	%ebx, -620(%ebp)
	andl	$-16, %eax
	movl	%ecx, %edx
	movl	-596(%ebp), %ecx
	movl	%esi, -624(%ebp)
	movl	%edi, -628(%ebp)
	movl	%eax, -608(%ebp)
	xorl	%eax, %eax
L885:
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
	jb	L885
	movl	-620(%ebp), %ebx
	movl	-624(%ebp), %esi
	movl	-628(%ebp), %edi
	jmp	L881
L964:
	movl	$16, %edi
	xorl	%esi, %esi
	jmp	L879
L1069:
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	leal	0(,%eax,8), %edx
	andl	$7, %eax
	andl	$1536, %edx
	movl	%edx, %ebx
	orl	%eax, %ebx
	movl	%ebx, -636(%ebp)
	leal	16(,%ebx,4), %eax
	jmp	L862
L1067:
	cmpl	$3, %esi
	movl	$4, %eax
	cmovle	%edi, %ebx
	cmovle	%eax, %esi
	jmp	L851
L1053:
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
	jmp	L881
	.p2align 4,,10
	.p2align 3
L863:
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
	jb	L864
	andl	$-16, %eax
	movl	%edi, -624(%ebp)
	xorl	%edx, %edx
	movl	%eax, -620(%ebp)
	movl	%ebx, -628(%ebp)
	movl	-596(%ebp), %ebx
L868:
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
	jb	L868
	movl	-624(%ebp), %edi
	movl	-628(%ebp), %ebx
	jmp	L864
L1048:
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
L942:
	.cfi_restore_state
	movl	-596(%ebp), %eax
	movl	$LC80, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L937:
	movl	_gloadtile_willprint, %ebx
	testl	%ebx, %ebx
	je	L945
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
	jle	L945
	movl	_globalnoeffect, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	L946
	movl	-592(%ebp), %ebx
	movzwl	_hictinting(,%ebx,8), %edx
	andl	$199, %edx
L946:
	movl	%eax, 16(%esp)
	movl	-596(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-592(%ebp), %eax
	movl	$LC81, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L945
L1064:
	cmpl	$3, %esi
	movl	$4, %edx
	cmovle	%edi, %ebx
	cmovle	%edx, %esi
	jmp	L840
L905:
	movl	$1, %ecx
	leal	-552(%ebp), %edx
	leal	-528(%ebp), %eax
	call	_texcache_readtexheader.part.0
	movl	$0, -576(%ebp)
	movl	$0, -572(%ebp)
	movl	%eax, %esi
	testl	%eax, %eax
	je	L966
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
L907:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L907
	leal	-560(%ebp), %eax
	movl	%eax, -624(%ebp)
	movl	%eax, %edx
	leal	-552(%ebp), %eax
	call	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L1074
	movzbl	-540(%ebp), %eax
	movlps	-548(%ebp), %xmm3
	shrb	%al
	movlps	%xmm3, -576(%ebp)
	andl	$1, %eax
	movb	%al, -637(%ebp)
	cmpl	$251, -592(%ebp)
	jg	L913
	movzbl	-637(%ebp), %eax
	movl	-600(%ebp), %ebx
	movl	%eax, 48(%ebx)
	jmp	L913
L932:
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
	jmp	L947
L914:
	movl	-592(%ebp), %eax
	movzwl	_hictinting(,%eax,8), %eax
	movw	%ax, -620(%ebp)
	andl	$199, %eax
	jmp	L915
L1047:
	movl	%edi, -628(%ebp)
	movl	-632(%ebp), %ecx
	movl	%edx, %ebx
	movl	%eax, %edx
L893:
	movl	(%edx,%ecx,4), %eax
	movl	68(%eax), %edi
	testl	%edi, %edi
	je	L900
	movl	-628(%ebp), %eax
	movl	%edx, -620(%ebp)
	movl	%ecx, -624(%ebp)
	movl	12(%eax), %esi
	.p2align 4
	.p2align 3
L902:
	movl	%esi, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L901
	movl	(%edi,%ebx,4), %ecx
	testl	%ecx, %ecx
	jne	L1048
L901:
	movl	144(%edi), %edi
	testl	%edi, %edi
	jne	L902
	movl	-620(%ebp), %edx
	movl	-624(%ebp), %ecx
L900:
	addl	$1, %ecx
	cmpl	-616(%ebp), %ecx
	jne	L893
	jmp	L1050
L1070:
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
	jmp	L864
L1071:
	movl	-588(%ebp), %esi
	movl	(%esi), %edx
	movl	%edx, -272(%ebp)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	jmp	L864
L966:
	movl	-616(%ebp), %eax
	movl	$0, -616(%ebp)
	movl	%eax, -636(%ebp)
	leal	-560(%ebp), %eax
	movl	%eax, -624(%ebp)
	jmp	L906
L1056:
	movl	-596(%ebp), %eax
	movl	$LC78, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	-588(%ebp), %eax
	movb	$0, (%eax)
	jmp	L830
L1057:
	cmpl	%edx, -620(%ebp)
	jne	L924
	jmp	L925
L1060:
	movl	_r_useindexedcolortextures, %edx
	testl	%edx, %edx
	je	L947
	movss	LC74, %xmm0
	orl	_gltexfiltermode, %ebx
	je	L934
	jmp	L947
L1058:
	movl	-600(%ebp), %eax
	movl	92(%eax), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L925
	addl	$4, %ebx
L928:
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L927:
	movss	(%eax), %xmm0
	addl	$12, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%eax)
	movss	-8(%eax), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -8(%eax)
	subl	$1, %edx
	jne	L927
	leal	-3(%ecx,%ecx,2), %eax
	movl	%ebx, %edx
	leal	16(%ebx,%eax,4), %ebx
	movl	12(%edx,%eax,4), %eax
	testl	%eax, %eax
	jne	L928
	jmp	L925
L1059:
	movl	-600(%ebp), %ebx
	movl	164(%ebx), %eax
	testl	%eax, %eax
	jle	L925
	movl	%edi, -632(%ebp)
	movl	%esi, %edi
L931:
	movl	%ecx, %esi
	sall	$7, %esi
	addl	196(%ebx), %esi
	movl	80(%esi), %edx
	subl	$1, %edx
	js	L929
	movl	%ecx, -628(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L930:
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
	jnb	L930
	movl	-628(%ebp), %ecx
L929:
	addl	$1, %ecx
	cmpl	%ecx, 164(%ebx)
	jg	L931
	movl	%edi, %esi
	movl	-632(%ebp), %edi
	jmp	L925
L1072:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -274(%ebp,%eax)
	jmp	L864
L1054:
	movl	-588(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%edx, -272(%ebp)
	movl	-4(%ecx,%eax), %edx
	movl	%edx, -276(%ebp,%eax)
	jmp	L881
L1074:
	jg	L1075
L911:
	movl	$3, -636(%ebp)
	movl	-620(%ebp), %esi
	jmp	L906
L1075:
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jl	L911
	movl	-560(%ebp), %eax
	movl	$LC76, 12(%esp)
	movl	$855, 8(%esp)
	movl	%eax, 20(%esp)
	movl	__ZL15texcache_errors.lto_priv.0(,%ecx,4), %eax
	movl	$LC77, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L911
	.cfi_endproc
LFE152:
	.p2align 4
	.globl	_updateanimation
	.def	_updateanimation;	.scl	2;	.type	32;	.endef
_updateanimation:
LFB163:
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
	jle	L1089
	movswl	14(%edx), %eax
	movl	%edx, %esi
	movl	%eax, 20(%esp)
	leal	0(,%eax,4), %edx
	jmp	L1079
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1081:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %edi
	cmpb	_tile2model+17(,%edi,4), %cl
	je	L1137
L1079:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1081
L1080:
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
	je	L1082
	cmpw	$0, _tile2model+6(,%eax,4)
	setne	12(%esp)
L1082:
	movl	_spritesmooth, %edi
	movswl	30(%esi), %eax
	movl	_spriteext, %esi
	movl	%edi, 16(%esp)
	movl	%esi, 24(%esp)
	cmpl	$16639, %eax
	jbe	L1083
	leal	166390(%edi), %eax
	movl	%eax, 16(%esp)
	movl	$1064896, %eax
L1084:
	movl	24(%esp), %esi
	movl	%ebx, %edi
	addl	%esi, %eax
	movl	64(%ebx), %esi
	movl	%eax, 24(%esp)
	testl	%esi, %esi
	jne	L1085
	jmp	L1086
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1087:
	movl	16(%esi), %esi
	testl	%esi, %esi
	je	L1086
L1085:
	cmpl	(%esi), %ecx
	jne	L1087
	movl	24(%esp), %eax
	movswl	14(%eax), %eax
	cmpl	%ecx, %eax
	je	L1175
	movl	24(%esp), %ebx
	movl	_mdtims, %eax
	movw	%cx, 14(%ebx)
	movl	%eax, 16(%ebx)
	movl	$0x00000000, 60(%edi)
	movl	(%esi), %eax
	cmpb	$0, 12(%esp)
	je	L1176
	movl	16(%esp), %ebx
	movl	%eax, 40(%edi)
	movl	$1, %esi
	movswl	6(%ebx), %eax
	movl	%eax, 36(%edi)
	movw	%si, 8(%ebx)
	movl	36(%edi), %eax
	movl	40(%edi), %ecx
L1096:
	movl	32(%edi), %edx
	cmpl	%eax, %edx
	jg	L1132
	movl	$0, 36(%edi)
L1132:
	cmpl	%ecx, %edx
	jg	L1076
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
L1083:
	.cfi_restore_state
	movl	16(%esp), %esi
	leal	(%eax,%eax,4), %edi
	sall	$6, %eax
	leal	(%esi,%edi,2), %edi
	movl	%edi, 16(%esp)
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1137:
	movl	%eax, 20(%esp)
	jmp	L1080
	.p2align 4,,10
	.p2align 3
L1086:
	cmpb	$0, 12(%esp)
	jne	L1177
L1089:
	movl	$0x00000000, 60(%ebx)
L1076:
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
L1176:
	.cfi_restore_state
	movl	%eax, 24(%esp)
	movss	24(%esp), %xmm0
	movl	%eax, %ecx
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, 36(%edi)
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1177:
	movl	16(%esp), %eax
	movswl	6(%eax), %eax
	cmpl	%eax, %ecx
	je	L1178
	movl	16(%esp), %ebx
	cmpw	$0, 8(%ebx)
	je	L1179
	movl	16(%esp), %ebx
	movswl	4(%ebx), %eax
	cmpl	%eax, %ecx
	je	L1094
	movl	_mdtims, %eax
	movl	24(%esp), %esi
	movl	%eax, 16(%esi)
	movl	$0x00000000, 60(%edi)
L1171:
	movl	$1, %eax
	movw	%ax, 8(%ebx)
	movzwl	4(%ebx), %eax
	movw	%ax, 6(%ebx)
	movl	36(%edi), %eax
	movw	%ax, 4(%ebx)
L1094:
	xorl	%esi, %esi
L1093:
	movss	LC74, %xmm0
	movl	20(%esp), %eax
	xorps	%xmm1, %xmm1
	addl	%edx, %eax
	movzwl	_tile2model+6(,%eax,4), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC83, %xmm1
	divss	%xmm1, %xmm0
	mulss	LC84, %xmm0
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
	js	L1180
	testl	%esi, %esi
	je	L1106
	movl	$131072, %eax
	movl	$65536, %ecx
L1101:
	cmpl	%eax, %ebx
	jl	L1107
	movl	12(%esp), %edx
	testl	%edx, %edx
	je	L1107
	movl	%ecx, %eax
	cltd
	idivl	4(%esp)
	movl	24(%esp), %edx
	addl	%eax, 16(%edx)
L1107:
	testb	$1, 12(%esi)
	je	L1108
	leal	-65535(%ecx), %eax
	cmpl	%ebx, %eax
	jg	L1103
	movl	8(%esp), %eax
	leal	-65536(%ecx), %edx
	testl	%eax, %eax
	jne	L1124
	.p2align 4
	.p2align 3
L1104:
	movl	%edx, %eax
	sarl	$16, %eax
	addl	(%esi), %eax
	leal	1(%eax), %ecx
	movl	%eax, 36(%edi)
	movl	%ecx, 40(%edi)
	cmpl	4(%esi), %ecx
	jle	L1130
	movl	(%esi), %ecx
	movl	%ecx, 40(%edi)
L1130:
	movl	16(%esp), %ebx
	movw	%ax, 6(%ebx)
	movl	36(%edi), %eax
	movl	40(%edi), %ecx
L1105:
	movzwl	%dx, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC85, %xmm0
	movss	%xmm0, 60(%edi)
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1175:
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	jne	L1093
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
	jns	L1101
	movl	24(%esp), %ebx
	movl	20(%esp), %edx
	movl	%edx, 16(%ebx)
	xorl	%ebx, %ebx
	jmp	L1101
	.p2align 4,,10
	.p2align 3
L1108:
	movl	%ebx, %edx
	cmpl	%ecx, %ebx
	jl	L1174
	subl	%ecx, %edx
	cmpl	%ecx, %edx
	jge	L1123
L1174:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1104
L1124:
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1104
L1111:
	movl	(%esi), %ecx
	movl	16(%esp), %eax
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	cmpl	$65535, %ebx
	jle	L1105
	jmp	L1128
L1180:
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	movl	%ebx, 16(%eax)
	testl	%esi, %esi
	je	L1139
	movl	12(%esi), %edx
	andl	$1, %edx
	jne	L1140
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L1104
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1104
	movl	(%esi), %ecx
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	jmp	L1105
L1106:
	movl	%ebx, %edx
	cmpl	$65535, %ebx
	jle	L1102
	movl	8(%esp), %eax
	leal	-65536(%ebx), %edx
	testl	%eax, %eax
	je	L1122
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1122
	movl	16(%esp), %eax
	movswl	4(%eax), %eax
	movl	%eax, 40(%edi)
L1128:
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
	jmp	L1096
L1140:
	xorl	%ebx, %ebx
L1103:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1112
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1112
	movl	%ebx, %edx
	jmp	L1111
L1179:
	movl	_mdtims, %eax
	movl	24(%esp), %esi
	movl	%eax, 16(%esi)
	movl	$1, %eax
	xorl	%esi, %esi
	movl	$0x00000000, 60(%edi)
	movw	%ax, 8(%ebx)
	movl	36(%edi), %eax
	movw	%ax, 4(%ebx)
	jmp	L1093
L1112:
	movl	%ebx, %edx
	jmp	L1104
L1123:
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L1104
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1104
	jmp	L1111
	.p2align 4,,10
	.p2align 3
L1139:
	xorl	%edx, %edx
L1102:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1122
	movl	16(%esp), %eax
	cmpw	$0, 8(%eax)
	je	L1122
	movl	16(%esp), %eax
	movswl	4(%eax), %ecx
	movl	%ecx, 40(%edi)
	movswl	6(%eax), %eax
	movl	%eax, 36(%edi)
	jmp	L1105
	.p2align 4,,10
	.p2align 3
L1122:
	movl	36(%edi), %eax
	leal	1(%eax), %ecx
	movl	%ecx, 40(%edi)
	jmp	L1130
L1178:
	movl	16(%esp), %eax
	movswl	4(%eax), %eax
	cmpl	%eax, %ecx
	je	L1089
	movl	24(%esp), %ebx
	movl	_mdtims, %eax
	movl	%eax, 16(%ebx)
	movl	16(%esp), %ebx
	movl	$0x00000000, 60(%edi)
	jmp	L1171
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	_md3_vox_calcmat_common
	.def	_md3_vox_calcmat_common;	.scl	2;	.type	32;	.endef
_md3_vox_calcmat_common:
LFB165:
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
	movss	LC86, %xmm0
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
	je	L1185
	leal	1024(%eax,%esi), %ebx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC88, %xmm3
	leal	512(%eax,%esi), %eax
	andl	$2047, %ebx
	andl	$2047, %eax
	movswl	_sintable(%ebx,%ebx), %ebx
	movswl	_sintable(%eax,%eax), %eax
	cvtsi2ssl	%ebx, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm3, %xmm1
L1183:
	movss	LC74, %xmm3
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
	xorps	LC89, %xmm2
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
L1185:
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
	mulss	LC85, %xmm0
	mulss	LC87, %xmm0
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
	mulss	LC85, %xmm1
	mulss	LC87, %xmm1
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
	jmp	L1183
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	__ZL7md3freeP10md3model_t.lto_priv.0
	.def	__ZL7md3freeP10md3model_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7md3freeP10md3model_t.lto_priv.0:
LFB166:
	.cfi_startproc
	testl	%eax, %eax
	je	L1215
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
	je	L1188
	.p2align 4
	.p2align 3
L1189:
	movl	%ebx, %eax
	movl	16(%ebx), %ebx
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%ebx, %ebx
	jne	L1189
L1188:
	movl	68(%esi), %ebx
	testl	%ebx, %ebx
	je	L1190
	.p2align 4
	.p2align 3
L1191:
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
	jne	L1191
L1190:
	movl	196(%esi), %ebx
	testl	%ebx, %ebx
	je	L1192
	movl	164(%esi), %edi
	subl	$1, %edi
	js	L1193
	.p2align 4
	.p2align 3
L1194:
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
	jne	L1194
L1193:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L1192:
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
	je	L1195
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
L1195:
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
L1215:
	ret
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	_freeallmodels
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
_freeallmodels:
LFB167:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_models, %ecx
	testl	%ecx, %ecx
	je	L1219
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L1220
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	jmp	L1223
	.p2align 4,,10
	.p2align 3
L1222:
	addl	$1, %ebx
	cmpl	%ebx, _nextmodelid
	jle	L1235
L1223:
	movl	(%ecx,%ebx,4), %edx
	movl	(%edx), %eax
	cmpl	$1, %eax
	je	L1236
	subl	$2, %eax
	cmpl	$1, %eax
	ja	L1222
	movl	%edx, %eax
	addl	$1, %ebx
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	_models, %ecx
	cmpl	%ebx, _nextmodelid
	jg	L1223
L1235:
	movl	12(%esp), %ebx
	.cfi_restore 3
L1220:
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, _models
	movl	$0, __ZL16nummodelsalloced
	movl	$0, _nextmodelid
L1219:
	movl	$650240, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_tile2model, (%esp)
	call	_memset
	movl	$_tile2model+8, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1224:
	movl	$0, (%eax)
	addl	$20, %eax
	movl	$0, -16(%eax)
	cmpl	$_tile2model+614408, %eax
	jne	L1224
	movl	__ZL8vertlist, %eax
	movl	$30720, __ZL8curextra
	testl	%eax, %eax
	je	L1225
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
L1225:
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
L1236:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	%edx, %eax
	call	_voxfree
	movl	_models, %ecx
	jmp	L1222
	.cfi_endproc
LFE167:
	.section .rdata,"dr"
LC90:
	.ascii "max EXTRATILES reached\0"
LC91:
	.ascii "source/build/src/mdsprite.cpp\0"
	.text
	.p2align 4
	.globl	_md_defineframe
	.def	_md_defineframe;	.scl	2;	.type	32;	.endef
_md_defineframe:
LFB169:
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
	je	L1257
L1238:
	cmpl	_nextmodelid, %esi
	jnb	L1251
	cmpl	$30719, %ebx
	ja	L1252
	testl	%edi, %edi
	je	L1240
	movl	__ZL8curextra, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	cmpl	$32511, %ecx
	je	L1258
	leal	0(,%ebx,4), %eax
	leal	(%eax,%ebx), %ebp
	sall	$2, %ebp
	cmpw	$-1, _tile2model(%ebp)
	je	L1259
	movzbl	_tile2model+17(%ebp), %ebp
	cmpl	%ebp, %edx
	jne	L1246
	jmp	L1243
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1247:
	leal	0(,%ebx,4), %eax
	leal	(%eax,%ebx), %ebp
	movzbl	_tile2model+17(,%ebp,4), %ebp
	cmpl	%ebp, %edx
	je	L1243
L1246:
	addl	%ebx, %eax
	leal	_tile2model(,%eax,4), %eax
	movswl	4(%eax), %ebx
	cmpw	$-1, %bx
	jne	L1247
	movw	%cx, 4(%eax)
	leal	(%ecx,%ecx,4), %eax
	movb	%dl, _tile2model+17(,%eax,4)
	leal	1(%ecx), %eax
	movl	%eax, __ZL8curextra
L1248:
	movl	%ecx, %ebx
L1243:
	movl	_models, %eax
	movl	(%eax,%esi,4), %ebp
	cmpl	$1, 0(%ebp)
	je	L1260
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL15framename2indexP9mdmodel_tPKc
	movl	%eax, %edi
	cmpl	%eax, 32(%ebp)
	je	L1261
	leal	(%ebx,%ebx,4), %eax
	movss	16(%esp), %xmm0
	mulss	LC92, %xmm0
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
L1237:
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
L1257:
	.cfi_restore_state
	call	_freeallmodels
	movl	44(%esp), %edx
	movl	$1, _mdinited
	jmp	L1238
	.p2align 4,,10
	.p2align 3
L1260:
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
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1259:
	.cfi_restore_state
	movb	%dl, _tile2model+17(%ebp)
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1258:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1248
	movl	$LC90, 12(%esp)
	movl	$35, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL8curextra, %ebx
	jmp	L1243
L1261:
	movl	32(%esp), %ebp
	.cfi_restore 5
L1240:
	movl	$-3, %edi
	jmp	L1237
L1251:
	movl	$-1, %edi
	jmp	L1237
L1252:
	movl	$-2, %edi
	jmp	L1237
	.cfi_endproc
LFE169:
	.p2align 4
	.globl	_md_defineanimation
	.def	_md_defineanimation;	.scl	2;	.type	32;	.endef
_md_defineanimation:
LFB172:
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
	je	L1271
L1263:
	cmpl	_nextmodelid, %ebx
	jnb	L1267
	movl	_models, %eax
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	movl	(%eax,%ebx,4), %ebx
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	cmpl	$1, (%ebx)
	jle	L1265
	movl	%ebx, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -12
	call	__ZL15framename2indexP9mdmodel_tPKc
	movl	32(%ebx), %esi
	cmpl	%eax, %esi
	je	L1268
	movl	%eax, 8(%esp)
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZL15framename2indexP9mdmodel_tPKc
	cmpl	%eax, %esi
	je	L1269
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
	je	L1266
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
L1265:
	xorl	%eax, %eax
L1262:
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
L1271:
	.cfi_restore_state
	movl	%edx, 4(%esp)
	call	_freeallmodels
	movl	4(%esp), %edx
	movl	$1, _mdinited
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1266:
	.cfi_offset 6, -12
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1267:
	.cfi_restore 6
	movl	$-1, %eax
	jmp	L1262
L1269:
	.cfi_offset 6, -12
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$-3, %eax
	jmp	L1262
L1268:
	.cfi_restore_state
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	$-2, %eax
	jmp	L1262
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	_md_defineskin
	.def	_md_defineskin;	.scl	2;	.type	32;	.endef
_md_defineskin:
LFB173:
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
	je	L1300
L1273:
	cmpl	_nextmodelid, %ebx
	jnb	L1291
	testl	%edi, %edi
	je	L1292
	cmpl	$255, %edx
	ja	L1293
	movl	_models, %eax
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	(%eax,%ebx,4), %ebp
	movl	0(%ebp), %eax
	cmpl	$1, %eax
	jle	L1275
	cmpl	$2, %eax
	movl	68(%ebp), %ebx
	movl	$0, %eax
	cmovne	48(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 48(%esp)
	testl	%ebx, %ebx
	jne	L1280
	jmp	L1277
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1278:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	je	L1301
	movl	%eax, %ebx
L1280:
	cmpb	%dl, (%ebx)
	jne	L1278
	cmpl	%esi, 4(%ebx)
	jne	L1278
	movl	48(%esp), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1278
	movl	12(%ebx), %eax
	movb	%dl, 20(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movzbl	20(%esp), %edx
L1284:
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
	je	L1285
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	%esi, 12(%ebx)
L1275:
	movl	36(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
L1272:
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
L1300:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	call	_freeallmodels
	movl	20(%esp), %edx
	movl	$1, _mdinited
	jmp	L1273
	.p2align 4,,10
	.p2align 3
L1301:
	.cfi_offset 5, -8
	movl	$160, (%esp)
	movb	%dl, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	movzbl	20(%esp), %edx
	je	L1289
	movl	$0, 144(%eax)
	xorl	%ecx, %ecx
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
L1282:
	movl	$0, (%eax,%ecx)
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	movl	$0, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	$144, %ecx
	jb	L1282
	movl	%eax, 144(%ebx)
	movl	%eax, %ebx
	jmp	L1284
L1285:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
L1277:
	movl	$160, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	20(%esp), %edx
	je	L1289
	movl	$0, 144(%ebx)
	xorl	%eax, %eax
	movl	$0, 148(%ebx)
	movl	$0, 152(%ebx)
	movl	$0, 156(%ebx)
L1286:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$144, %eax
	jb	L1286
	movl	%ebx, 68(%ebp)
	jmp	L1284
L1289:
	movl	$160, %eax
	call	__Z13handle_memerri
L1291:
	.cfi_restore 5
	movl	$-1, %eax
	jmp	L1272
L1293:
	movl	$-3, %eax
	jmp	L1272
L1292:
	movl	$-2, %eax
	jmp	L1272
	.cfi_endproc
LFE173:
	.section .rdata,"dr"
	.align 4
LC94:
	.ascii "%s: Triangle index out of bounds!\12\0"
	.text
	.p2align 4
	.globl	_md_loadmodel
	.def	_md_loadmodel;	.scl	2;	.type	32;	.endef
_md_loadmodel:
LFB174:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	_mdinited, %eax
	testl	%eax, %eax
	je	L1438
L1303:
	movl	__ZL16nummodelsalloced, %eax
	cmpl	%eax, _nextmodelid
	jl	L1428
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
	jne	L1389
	testl	%ebx, %ebx
	jne	L1305
L1389:
	movl	%eax, _models
	movl	%edi, %eax
	movl	68(%esp), %ebx
	.cfi_restore 3
	addl	$256, __ZL16nummodelsalloced
	call	_voxload
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1307
L1439:
	testl	%edi, %edi
	je	L1383
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	call	_kopen4load.part.0
	movl	%eax, %ebp
	cmpl	$-1, %eax
	je	L1434
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
	je	L1309
	cmpl	$860898377, %eax
	je	L1310
	movl	%ebp, %eax
	call	_kclose
	movl	80(%esp), %ebp
	.cfi_restore 5
L1383:
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	movl	$-1, %eax
	addl	$84, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1428:
	.cfi_def_cfa_offset 88
	.cfi_offset 7, -12
	movl	%edi, %eax
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	call	_voxload
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1439
L1307:
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
L1438:
	.cfi_def_cfa_offset 88
	.cfi_offset 7, -12
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L1303
L1309:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL7md2loadiPKc
	movl	%eax, %esi
	movl	%ebp, %eax
	call	_kclose
	testl	%esi, %esi
	je	L1434
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
L1312:
	movl	%edi, (%esp)
	leal	88(%esi), %eax
	movl	%eax, 24(%esp)
	call	_strlen
	movl	$62, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1341
	testb	$8, %al
	jne	L1440
	testb	$4, %al
	jne	L1441
	testl	%eax, %eax
	jne	L1442
L1342:
	movl	156(%esi), %ecx
	movb	$0, 150(%esi)
	testl	%ecx, %ecx
	jle	L1348
	movl	$0, 12(%esp)
	xorps	%xmm5, %xmm5
	movss	LC93, %xmm4
	movl	$0, 20(%esp)
	.p2align 4
	.p2align 3
L1374:
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
	jle	L1386
	movl	196(%esi), %ecx
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1365:
	movl	%ebp, %edi
	sall	$7, %edi
	leal	(%ecx,%edi), %edx
	movl	80(%edx), %eax
	testl	%eax, %eax
	jle	L1350
	imull	12(%esp), %eax
	movl	120(%edx), %edx
	leal	(%edx,%eax,8), %edx
	testl	%ebp, %ebp
	jne	L1387
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
L1352:
	movl	196(%esi), %ecx
	addl	$1, %eax
	cmpl	80(%ecx,%edi), %eax
	jge	L1350
L1351:
	movswl	(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1353
	movss	%xmm0, (%ebx)
	movswl	(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1353:
	comiss	12(%ebx), %xmm0
	jbe	L1355
	movss	%xmm0, 12(%ebx)
L1355:
	movswl	2(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	4(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1357
	movss	%xmm0, 4(%ebx)
	movswl	2(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1357:
	comiss	16(%ebx), %xmm0
	jbe	L1359
	movss	%xmm0, 16(%ebx)
L1359:
	movswl	4(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	movss	8(%ebx), %xmm1
	cvtsi2ssl	%ecx, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1361
	movss	%xmm0, 8(%ebx)
	movswl	4(%edx,%eax,8), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
L1361:
	comiss	20(%ebx), %xmm0
	jbe	L1352
	movss	%xmm0, 20(%ebx)
	movl	196(%esi), %ecx
	addl	$1, %eax
	cmpl	80(%ecx,%edi), %eax
	jl	L1351
L1350:
	addl	$1, %ebp
	cmpl	164(%esi), %ebp
	jl	L1365
	movss	(%ebx), %xmm1
	movss	4(%ebx), %xmm2
	addss	12(%ebx), %xmm1
	addss	16(%ebx), %xmm2
	movss	8(%ebx), %xmm3
	addss	20(%ebx), %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm3
L1349:
	movss	%xmm1, 24(%ebx)
	movss	%xmm2, 28(%ebx)
	movss	%xmm3, 32(%ebx)
	movl	164(%esi), %eax
	testl	%eax, %eax
	jle	L1388
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1371:
	movl	%ebp, %edi
	sall	$7, %edi
	addl	196(%esi), %edi
	movl	80(%edi), %eax
	testl	%eax, %eax
	jle	L1367
	imull	12(%esp), %eax
	movl	120(%edi), %edx
	leal	(%edx,%eax,8), %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1370:
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
	jbe	L1368
	movss	%xmm0, 36(%ebx)
L1368:
	addl	$1, %eax
	cmpl	80(%edi), %eax
	jl	L1370
L1367:
	addl	$1, %ebp
	cmpl	164(%esi), %ebp
	jl	L1371
	movss	36(%ebx), %xmm0
	ucomiss	%xmm0, %xmm5
	ja	L1424
	sqrtss	%xmm0, %xmm0
L1366:
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	addl	$56, 20(%esp)
	movss	%xmm0, 36(%ebx)
	cmpl	156(%esi), %eax
	jl	L1374
L1348:
	cmpl	$4, _glrendmode
	je	L1432
	movl	164(%esi), %eax
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	jle	L1432
	movl	196(%esi), %eax
	xorl	%ebp, %ebp
	leal	80(%eax), %edi
L1382:
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	jle	L1376
	movl	(%edi), %edx
	movl	28(%edi), %eax
	xorl	%ecx, %ecx
	jmp	L1381
	.p2align 4,,10
	.p2align 3
L1443:
	cmpl	%edx, 4(%eax)
	jnb	L1377
	cmpl	%edx, 8(%eax)
	jnb	L1377
	addl	$1, %ecx
	addl	$12, %eax
	cmpl	%ecx, %ebx
	je	L1376
L1381:
	cmpl	%edx, (%eax)
	jb	L1443
L1377:
	movl	24(%esp), %eax
	movl	$LC94, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	(%esi), %eax
	cmpl	$1, %eax
	je	L1444
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	L1445
	movl	68(%esp), %ebx
	.cfi_restore 3
L1434:
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1383
	.p2align 4,,10
	.p2align 3
L1387:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	xorl	%eax, %eax
	jmp	L1351
L1388:
	xorps	%xmm0, %xmm0
	jmp	L1366
L1386:
	xorps	%xmm3, %xmm3
	movaps	%xmm3, %xmm2
	movaps	%xmm3, %xmm1
	jmp	L1349
L1376:
	addl	$1, %ebp
	subl	$-128, %edi
	cmpl	%ebp, 12(%esp)
	jne	L1382
L1432:
	movl	68(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1307
L1310:
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
	je	L1313
	movl	$0, 216(%eax)
	leal	4(%eax), %eax
	xorl	%edx, %edx
	movl	$0, 216(%eax)
	movl	$0, 220(%eax)
	movl	$0, 224(%eax)
L1314:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$224, %edx
	jb	L1314
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
	jne	L1437
	cmpl	$860898377, 80(%esi)
	je	L1318
	cmpl	$15, 84(%esi)
	jne	L1437
L1318:
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
	je	L1423
	movl	%eax, 188(%esi)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	jne	L1437
	movl	160(%esi), %eax
	testl	%eax, %eax
	jne	L1322
	movl	$0, 192(%esi)
L1323:
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
	je	L1326
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
	jle	L1328
	movl	$0, 24(%esp)
	movl	%edi, 56(%esp)
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
L1327:
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
	jne	L1435
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
	je	L1330
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
	jne	L1435
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
	jne	L1435
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
	jne	L1435
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
	jne	L1435
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
	jge	L1426
	movl	196(%edi), %edx
	addl	104(%ebx), %esi
	jmp	L1327
L1341:
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
	jb	L1342
	andl	$-16, %eax
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
L1346:
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
	jb	L1346
	jmp	L1342
L1305:
	.cfi_restore 5
	movl	%ebx, %eax
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L1442:
	movzbl	(%edi), %edx
	movb	%dl, 88(%esi)
	testb	$2, %al
	je	L1342
	movzwl	-2(%edi,%eax), %edx
	movl	24(%esp), %edi
	movw	%dx, -2(%edi,%eax)
	jmp	L1342
L1435:
	movl	12(%esp), %eax
L1436:
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	%ebp, %eax
	call	_kclose
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1383
L1322:
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
	je	L1423
	movl	%eax, 192(%esi)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	je	L1323
L1437:
	movl	%esi, %eax
	jmp	L1436
L1423:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1326:
	movl	$128, %eax
	call	__Z13handle_memerri
L1441:
	movl	(%edi), %edx
	movl	24(%esp), %ebx
	movl	%edx, (%ebx)
	movl	-4(%edi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	jmp	L1342
L1440:
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
	jmp	L1342
L1330:
	movl	60(%esp), %eax
	call	__Z13handle_memerri
L1313:
	movl	$232, %eax
	call	__Z13handle_memerri
L1426:
	movl	12(%esp), %esi
	movl	56(%esp), %edi
L1328:
	movl	20(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	je	L1423
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
	je	L1423
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
	je	L1423
	movl	%eax, 212(%esi)
	movl	%ebp, %eax
	movl	$0, 216(%esi)
	call	_kclose
	jmp	L1312
L1424:
	movss	%xmm0, (%esp)
	call	_sqrtf
	xorps	%xmm5, %xmm5
	movss	LC93, %xmm4
	fstps	28(%esp)
	movss	28(%esp), %xmm0
	jmp	L1366
L1445:
	movl	%esi, %eax
	call	__ZL7md3freeP10md3model_t.lto_priv.0
	movl	68(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1383
L1444:
	.cfi_restore_state
	movl	%esi, %eax
	call	_voxfree
	movl	68(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1383
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	_md3postload_polymer.part.0
	.def	_md3postload_polymer.part.0;	.scl	2;	.type	32;	.endef
_md3postload_polymer.part.0:
LFB179:
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
	je	L1495
L1447:
	movl	-116(%ebp), %eax
	movl	164(%eax), %esi
	testl	%esi, %esi
	jle	L1449
	movl	$0, -184(%ebp)
L1479:
	call	_handleevents
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
	je	L1450
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL6tribuf, %eax
	movl	%esi, 124(%edi)
	movl	80(%edi), %esi
	movl	%eax, -180(%ebp)
	cmpl	__ZL11tribufverts, %esi
	jle	L1452
	sall	$2, %esi
	movl	%esi, 4(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, -180(%ebp)
	testl	%eax, %eax
	jne	L1481
	testl	%esi, %esi
	jne	L1453
L1481:
	movl	-180(%ebp), %eax
	movl	80(%edi), %esi
	movl	%eax, __ZL6tribuf
	movl	%esi, __ZL11tribufverts
L1452:
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
	jle	L1455
	movl	$0, -84(%ebp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1456:
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
	jl	L1456
	movl	84(%edi), %ebx
	testl	%ebx, %ebx
	jle	L1457
L1494:
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
L1471:
	movl	-168(%ebp), %eax
	movl	108(%edi), %ecx
	movl	-172(%ebp), %ebx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %esi
	movl	(%esi), %eax
	movl	%esi, -120(%ebp)
	cmpl	%ebx, %eax
	jnb	L1458
	cmpl	%ebx, 4(%esi)
	jnb	L1458
	movl	-120(%ebp), %esi
	movl	-172(%ebp), %ecx
	cmpl	%ecx, 8(%esi)
	jnb	L1458
	addl	$1, (%edx,%eax,4)
	movl	4(%esi), %eax
	addl	$1, (%edx,%eax,4)
	movl	8(%esi), %eax
	addl	$1, (%edx,%eax,4)
	movl	-116(%ebp), %eax
	movl	156(%eax), %ecx
	testl	%ecx, %ecx
	jle	L1461
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
L1470:
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
	jp	L1482
	je	L1462
L1482:
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
	movss	LC74, %xmm4
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
	jp	L1483
	je	L1464
L1483:
	movss	LC74, %xmm6
	sqrtss	%xmm2, %xmm2
	divss	%xmm2, %xmm6
	mulss	%xmm6, %xmm5
	mulss	%xmm6, %xmm3
	mulss	%xmm6, %xmm0
	movss	%xmm5, -72(%ebp)
	movss	%xmm3, -68(%ebp)
	movss	%xmm0, -64(%ebp)
L1464:
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
	jp	L1484
	je	L1466
L1484:
	movss	LC74, %xmm4
	sqrtss	%xmm3, %xmm3
	divss	%xmm3, %xmm4
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm1
	movss	%xmm0, -60(%ebp)
	movss	%xmm2, -56(%ebp)
	movss	%xmm1, -52(%ebp)
L1466:
	movl	-124(%ebp), %ecx
	movl	-92(%ebp), %ebx
	leal	(%ecx,%ebx,4), %edx
	movl	-96(%ebp), %ecx
	movl	-128(%ebp), %ebx
	jmp	L1469
	.p2align 4,,10
	.p2align 3
L1496:
	movl	124(%edi), %eax
	addl	$4, %edx
L1469:
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
	jne	L1496
	movl	-116(%ebp), %ecx
	addl	$1, -84(%ebp)
	movl	-84(%ebp), %eax
	cmpl	156(%ecx), %eax
	jge	L1492
	movl	-120(%ebp), %eax
	movl	-136(%ebp), %ebx
	addl	%ebx, -92(%ebp)
	movl	(%eax), %ecx
	movl	4(%eax), %ebx
	movl	8(%eax), %eax
	movl	%eax, -88(%ebp)
	jmp	L1470
	.p2align 4,,10
	.p2align 3
L1462:
	movl	-96(%ebp), %ebx
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	jmp	L1466
	.p2align 4,,10
	.p2align 3
L1492:
	movl	-176(%ebp), %edx
L1461:
	addl	$1, -168(%ebp)
	movl	-168(%ebp), %eax
	cmpl	84(%edi), %eax
	jl	L1471
	movl	-116(%ebp), %ebx
	movl	80(%edi), %eax
	movl	156(%ebx), %esi
	imull	%eax, %esi
L1457:
	testl	%esi, %esi
	jle	L1472
	movl	%esi, -136(%ebp)
	movl	$48, %ebx
	leal	-72(%ebp), %ecx
	movl	%eax, %esi
	movl	$0, -92(%ebp)
	jmp	L1478
L1473:
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
	jp	L1475
	je	L1497
L1475:
	movss	LC74, %xmm7
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
L1477:
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
	je	L1472
	movl	80(%edi), %esi
	addl	$60, %ebx
L1478:
	movl	-92(%ebp), %eax
	cltd
	idivl	%esi
	movl	-180(%ebp), %eax
	movl	(%eax,%edx,4), %edx
	leal	-24(%ebx), %eax
	movl	%eax, -84(%ebp)
	testl	%edx, %edx
	jle	L1473
	movss	LC74, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movl	%eax, %edx
	divss	%xmm0, %xmm1
	.p2align 5
	.p2align 4
	.p2align 3
L1474:
	movl	124(%edi), %esi
	addl	%edx, %esi
	addl	$4, %edx
	movss	(%esi), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esi)
	cmpl	%ebx, %edx
	jne	L1474
	movl	%eax, -84(%ebp)
	jmp	L1473
L1458:
	xorl	%eax, %eax
L1446:
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
L1497:
	.cfi_restore_state
	movl	$0, -68(%ebp)
	movss	LC74, %xmm0
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	movl	$0x3f800000, -72(%ebp)
	movl	$0x3f800000, -56(%ebp)
	jmp	L1477
L1495:
	movl	$1, %edi
	leal	-76(%ebp), %esi
	leal	-80(%ebp), %ebx
	movl	$0x3f800000, __ZL7g_mdcos
	movl	$0x00000000, __ZL7g_mdsin
	.p2align 4
	.p2align 3
L1448:
	xorps	%xmm0, %xmm0
	movl	%ebx, 8(%esp)
	cvtsi2ssl	%edi, %xmm0
	movl	%esi, 4(%esp)
	mulss	LC95, %xmm0
	mulss	LC96, %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-76(%ebp), %xmm0
	movss	-80(%ebp), %xmm1
	movss	%xmm0, __ZL7g_mdsin(,%edi,4)
	movss	%xmm1, __ZL7g_mdcos(,%edi,4)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L1448
	movl	$1, __ZL11mdtrig_init
	jmp	L1447
L1455:
	movl	84(%edi), %edx
	testl	%edx, %edx
	jg	L1494
L1472:
	movl	-116(%ebp), %esi
	addl	$1, -184(%ebp)
	movl	-184(%ebp), %eax
	cmpl	164(%esi), %eax
	jl	L1479
L1449:
	movl	$1, %eax
	jmp	L1446
L1453:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1450:
	movl	$4, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE179:
	.p2align 4
	.globl	_engineClearLightsFromMHK
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
_engineClearLightsFromMHK:
LFB183:
	.cfi_startproc
	movswl	__ZL15maphacklightcnt.lto_priv.0, %eax
	testw	%ax, %ax
	jle	L1507
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
	jmp	L1501
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1500:
	movl	$-1, %ecx
	addl	$2, %ebx
	movw	%cx, -2(%ebx)
	cmpl	%esi, %ebx
	je	L1510
L1501:
	movswl	(%ebx), %eax
	testw	%ax, %ax
	js	L1500
	imull	$270, %eax, %edx
	leal	_prlights+240(%edx), %edi
	testb	$1, _prlights+254(%edx)
	je	L1500
	call	_polymer_removelight.lto_priv.0
	movl	$-1, %ecx
	addl	$2, %ebx
	andb	$-2, 14(%edi)
	movw	%cx, -2(%ebx)
	subl	$1, _lightcount
	cmpl	%esi, %ebx
	jne	L1501
L1510:
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
L1507:
	xorl	%eax, %eax
	movw	%ax, __ZL15maphacklightcnt.lto_priv.0
	ret
	.cfi_endproc
LFE183:
	.section .rdata,"dr"
	.align 4
LC98:
	.ascii "polymost_md3draw(m:%p, tspr:%p)\0"
	.align 4
LC112:
	.ascii "polymost_md3draw: detail skin %d has no skinmap\0"
	.align 4
LC113:
	.ascii "polymost_md3draw: glow skin %d has no skinmap\0"
	.text
	.p2align 4
	.globl	_polymost_mddraw
	.def	_polymost_mddraw;	.scl	2;	.type	32;	.endef
_polymost_mddraw:
LFB185:
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
	jg	L1867
L1512:
	movl	__ZL13maxmodelverts, %eax
	cmpl	__ZL15allocmodelverts, %eax
	jg	L1868
L1520:
	movl	-204(%ebp), %eax
	movl	_models, %ecx
	movswl	30(%eax), %edi
	cmpw	$16383, %di
	jle	L1523
L1863:
	movzbl	17(%eax), %ebx
	movl	-204(%ebp), %eax
	movl	%ecx, -124(%ebp)
	movswl	14(%eax), %esi
	movl	%esi, %eax
	leal	0(,%esi,4), %edx
	jmp	L1525
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1527:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L1858
L1525:
	addl	%edx, %eax
	movswl	_tile2model+4(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L1527
	movl	-124(%ebp), %ecx
	movl	%esi, %eax
	leal	0(,%esi,4), %edx
L1526:
	addl	%eax, %edx
	movswl	_tile2model(,%edx,4), %eax
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -176(%ebp)
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	L1869
	cmpl	$3, %eax
	je	L1870
L1529:
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
L1523:
	.cfi_restore_state
	movswl	%di, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	jmp	L1863
	.p2align 4,,10
	.p2align 3
L1858:
	movl	-124(%ebp), %ecx
	jmp	L1526
L1867:
	leal	0(,%eax,4), %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL9indexvbos, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1725
	testl	%ebx, %ebx
	jne	L1521
L1725:
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
	jne	L1515
	testl	%ebx, %ebx
	jne	L1521
L1515:
	movl	%eax, __ZL8vertvbos
	movl	__ZL9allocvbos, %edx
	movl	_r_vbocount, %eax
	cmpl	%edx, %eax
	je	L1512
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
	jge	L1518
	.p2align 4
	.p2align 3
L1519:
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
	jl	L1519
L1518:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	_r_vbocount, %eax
	movl	%eax, __ZL9allocvbos
	movl	__ZL13maxmodelverts, %eax
	cmpl	__ZL15allocmodelverts, %eax
	jle	L1520
L1868:
	leal	(%eax,%eax,2), %ebx
	sall	$2, %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL8vertlist, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1726
	testl	%ebx, %ebx
	jne	L1521
L1726:
	movl	%eax, __ZL8vertlist
	movl	__ZL13maxmodelverts, %eax
	movl	%eax, __ZL15allocmodelverts
	jmp	L1520
L1870:
	movl	_spriteext, %eax
	cmpl	$16639, %edi
	jbe	L1532
	addl	$1064896, %eax
	movl	%eax, -216(%ebp)
L1533:
	movl	-204(%ebp), %eax
	movzbl	17(%eax), %eax
	movb	%al, -217(%ebp)
L1534:
	movl	-204(%ebp), %eax
	movswl	_tilesiz+2(,%esi,4), %esi
	movzbl	21(%eax), %ebx
	movl	%eax, 12(%esp)
	movl	-176(%ebp), %edi
	movl	$LC98, 4(%esp)
	movl	$3, (%esp)
	movl	%edi, 8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movl	216(%edi), %eax
	testl	%eax, %eax
	je	L1871
L1535:
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
	movss	LC74, %xmm4
	comiss	%xmm0, %xmm1
	movb	%cl, -160(%ebp)
	movl	36(%esi), %ecx
	subss	%xmm0, %xmm4
	ja	L1539
	comiss	LC74, %xmm0
	jbe	L1872
L1540:
	movss	LC74, %xmm1
	movss	LC74, %xmm2
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
L1544:
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
L1542:
	movl	-176(%ebp), %eax
	xorps	%xmm2, %xmm2
	movl	-204(%ebp), %esi
	movss	LC99, %xmm1
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
	je	L1547
	imull	$44, %ecx, %ecx
	addl	_sprite, %ecx
	testb	$48, 12(%ecx)
	jne	L1548
L1547:
	movsbl	23(%esi), %ecx
	movzbl	21(%esi), %esi
	xorps	%xmm2, %xmm2
	imull	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, %ecx
	mulss	LC100, %xmm2
	andl	$160, %ecx
	subss	%xmm2, %xmm1
	movss	%xmm1, -224(%ebp)
	cmpl	$128, %ecx
	je	L1549
	movl	%eax, %ebx
	andl	$32, %ebx
L1550:
	testl	%edi, %edi
	jne	L1697
	movss	LC89, %xmm5
	movss	%xmm0, -140(%ebp)
	movss	%xmm4, -132(%ebp)
	movups	%xmm5, -248(%ebp)
L1551:
	andl	$4, %eax
	movl	%eax, -152(%ebp)
	je	L1702
	movups	-248(%ebp), %xmm5
	movaps	%xmm5, %xmm2
	xorps	%xmm0, %xmm5
	xorps	%xmm4, %xmm2
	movaps	%xmm5, %xmm1
	movss	LC97, %xmm5
	movaps	%xmm2, %xmm6
L1552:
	movl	-176(%ebp), %ecx
	movl	-204(%ebp), %eax
	movss	12(%ecx), %xmm2
	movzbl	20(%eax), %eax
	mulss	20(%ecx), %xmm3
	movss	%xmm2, -124(%ebp)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movl	-204(%ebp), %eax
	mulss	LC99, %xmm2
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
	mulss	LC99, %xmm5
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
	je	L1553
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
L1553:
	flds	_fxdimen
	fmull	_gxyaspect
	xorps	%xmm3, %xmm3
	fdivrs	LC102
	movl	-204(%ebp), %eax
	movss	_fxdimen, %xmm5
	mulss	_fviewingrange, %xmm5
	movss	LC101, %xmm7
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
	mulss	LC86, %xmm3
	mulss	%xmm5, %xmm1
	movss	%xmm7, -164(%ebp)
	movss	%xmm0, -196(%ebp)
	movss	-224(%ebp), %xmm0
	subss	_fglobalposz, %xmm0
	mulss	LC104, %xmm0
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
	mulss	LC103, %xmm3
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
	je	L1554
	movups	-248(%ebp), %xmm5
	movss	-72(%ebp), %xmm1
	movss	LC106, %xmm3
	movss	-56(%ebp), %xmm2
	movss	LC105, %xmm0
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
L1554:
	movss	_grhalfxdown10x, %xmm0
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1555
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
L1555:
	leal	-104(%ebp), %eax
	movl	%eax, -156(%ebp)
	movzbl	-160(%ebp), %eax
	andl	$1, %eax
	movb	%al, -218(%ebp)
	je	L1557
	movl	-168(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -152(%ebp)
	fildl	-152(%ebp)
	fmuls	LC107
	fldz
	fxch	%st(1)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L1728
	jne	L1728
L1558:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1864
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1864:
	movss	_grhalfxdown10x, %xmm0
	movl	_globalorientation, %eax
	movl	%eax, %edi
	andl	$4, %eax
	movl	%eax, -152(%ebp)
	andl	$8, %edi
L1557:
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
	je	L1562
	movl	$2304, (%esp)
	call	*%ecx
	subl	$4, %esp
L1563:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1564
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1564:
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
	jne	L1572
	movl	-176(%ebp), %ecx
	testb	$1, 28(%ecx)
	je	L1873
	movl	$1, _globalnoeffect
L1572:
	movss	%xmm3, -124(%ebp)
	movss	%xmm3, -128(%ebp)
L1570:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1874
L1573:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	movss	LC96, %xmm1
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
L1574:
	movl	-204(%ebp), %ecx
	movzwl	12(%ecx), %eax
	movzbl	19(%ecx), %edx
	movl	%eax, %ecx
	shrw	$9, %cx
	andw	$2, %ax
	je	L1703
	andl	$1, %ecx
	leal	(%ecx,%edx,2), %ebx
	movss	_glblend(,%ebx,8), %xmm0
L1575:
	movl	-216(%ebp), %esi
	shrw	%ax
	movss	LC74, %xmm1
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
	je	L1576
	movswl	_globalpicnum, %eax
	movl	$0x00000000, -160(%ebp)
	movzbl	_alphahackarray(%eax), %eax
	testb	%al, %al
	jne	L1875
L1577:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	movss	%xmm3, -168(%ebp)
	call	_inthash_find
	movss	-168(%ebp), %xmm3
	cmpl	$1, %eax
	je	L1578
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movss	-168(%ebp), %xmm3
L1578:
	movss	-160(%ebp), %xmm0
	movss	%xmm3, -168(%ebp)
	call	__Z20buildgl_setAlphaFuncjf.constprop.0
	movss	-168(%ebp), %xmm3
L1579:
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
	jne	L1582
	cmpw	$0, 26(%ecx)
	je	L1705
L1582:
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
	mulss	LC108, %xmm0
	movl	28(%ecx), %edx
	mulss	%xmm2, %xmm0
	movss	LC74, %xmm2
	divss	%xmm0, %xmm2
	testl	%edx, %edx
	je	L1584
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -140(%ebp)
L1584:
	movl	$0x00000000, -132(%ebp)
	movl	-216(%ebp), %ecx
	movl	32(%ecx), %edx
	testl	%edx, %edx
	jne	L1876
L1585:
	movl	-216(%ebp), %ecx
	movl	36(%ecx), %edx
	cmpb	$0, -218(%ebp)
	jne	L1708
	testl	%edx, %edx
	jne	L1877
L1708:
	movl	$0x00000000, -144(%ebp)
L1586:
	leal	512(%eax), %edx
	xorps	%xmm1, %xmm1
	movss	LC88, %xmm0
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
L1583:
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
	jne	L1588
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L1729
	je	L1588
L1729:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1588:
	movups	LC110, %xmm0
	movl	-156(%ebp), %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
	movl	-176(%ebp), %eax
	movl	164(%eax), %eax
	testl	%eax, %eax
	jle	L1590
	xorps	%xmm1, %xmm1
	movl	%esi, %eax
	movss	LC111, %xmm0
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
L1686:
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
	jne	L1591
	movl	-216(%ebp), %ecx
	leal	-1(%edx), %eax
	cmpw	$0, 24(%ecx)
	jne	L1865
	cmpw	$0, 26(%ecx)
	jne	L1865
	xorl	%edi, %edi
	testl	%edx, %edx
	jle	L1594
L1603:
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
L1606:
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
	je	L1605
	movss	%xmm2, (%ecx)
	movss	%xmm1, 4(%ecx)
	movss	%xmm0, 8(%ecx)
L1605:
	movss	%xmm2, (%edx)
	subl	$1, %eax
	subl	$12, %edx
	subl	$12, %ecx
	movss	%xmm1, 16(%edx)
	movss	%xmm0, 20(%edx)
	movl	_r_vertexarrays, %edi
	movl	%edi, -148(%ebp)
	cmpl	$-1, %eax
	jne	L1606
L1600:
	movl	-148(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1594
	movl	$34962, (%esp)
	call	*_glad_glUnmapBuffer
	movl	$34962, %eax
	subl	$4, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
L1594:
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
	jmp	L1607
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1609:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %ecx
	cmpb	_tile2model+17(,%ecx,4), %bl
	je	L1711
L1607:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1609
	movl	%esi, %ebx
L1608:
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
	je	L1610
	movl	68(%ebx), %edx
	testl	%edx, %edx
	je	L1611
	movl	_globalpal, %ecx
	movl	%edx, %eax
	jmp	L1614
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1612:
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L1878
L1614:
	cmpb	(%eax), %cl
	jne	L1612
	cmpl	4(%eax), %edi
	jne	L1612
	movl	-164(%ebp), %esi
	cmpl	%esi, 8(%eax)
	jne	L1612
	.p2align 4
	.p2align 3
L1613:
	movzbl	1(%eax), %eax
	andl	$2, %eax
	cmpb	$1, %al
	sbbl	%edx, %edx
	xorl	%eax, %eax
	andl	$-64, %edx
	addl	$66, %edx
	call	__Z25buildgl_bindSamplerObjectii
L1611:
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
	jne	L1640
	movl	_r_detailmapping, %eax
	addl	$4, -208(%ebp)
	testl	%eax, %eax
	jne	L1879
L1641:
	movl	-204(%ebp), %eax
	movzbl	18(%eax), %eax
	movb	%al, -124(%ebp)
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	testl	%eax, _r_glowmapping
	jne	L1880
L1646:
	movl	_r_vertexarrays, %esi
	testl	%esi, %esi
	jne	L1881
	movl	-176(%ebp), %ecx
	movl	-176(%ebp), %eax
	movl	48(%ecx), %ebx
	movl	208(%eax), %esi
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jne	L1882
L1653:
	movl	%eax, (%esp)
	movl	-212(%ebp), %eax
	movl	%esi, %edx
	movl	-208(%ebp), %ecx
	call	__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t
	movl	_r_vertexarrays, %eax
	testl	%eax, %eax
	jne	L1671
L1888:
	movl	-208(%ebp), %ebx
	cmpl	$33984, -208(%ebp)
	jle	L1676
	.p2align 4
	.p2align 3
L1672:
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
	je	L1679
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1679:
	subl	$1, %ebx
	cmpl	%ebx, _gl+4
	je	L1680
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1680:
	cmpl	$33984, %ebx
	jne	L1672
L1866:
	movl	%ebx, -208(%ebp)
L1676:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1610
	xorps	%xmm0, %xmm0
	ucomiss	__ZL25polymost1UseDetailMapping.lto_priv.0, %xmm0
	jp	L1731
	je	L1682
L1731:
	movl	$0x00000000, __ZL25polymost1UseDetailMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL28polymost1UseDetailMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L1610
L1682:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL23polymost1UseGlowMapping.lto_priv.0, %xmm0
	jp	L1684
	je	L1610
L1684:
	movl	$0x00000000, __ZL23polymost1UseGlowMapping.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL26polymost1UseGlowMappingLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1610:
	movl	-176(%ebp), %ecx
	addl	$1, -164(%ebp)
	movl	-164(%ebp), %eax
	cmpl	164(%ecx), %eax
	jl	L1686
L1590:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1687
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1687:
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
	jne	L1688
	movss	LC74, %xmm5
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm5
	jp	L1732
	je	L1688
L1732:
	movl	$0x3f800000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x3f800000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1688:
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
L1521:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1869:
	cmpl	$-1, -176(%ebp)
	je	L1529
	movl	-204(%ebp), %eax
	testb	$32, 12(%eax)
	jne	L1529
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
L1878:
	.cfi_restore_state
	cmpb	$-5, %cl
	ja	L1611
	testb	%cl, %cl
	je	L1712
	movl	%ecx, -136(%ebp)
	xorl	%esi, %esi
	jmp	L1629
	.p2align 4,,10
	.p2align 3
L1616:
	movl	4(%edx), %ebx
	cmpl	%ebx, %edi
	je	L1883
	testl	%ebx, %ebx
	jne	L1618
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	je	L1626
	.p2align 4
	.p2align 3
L1618:
	movl	144(%edx), %edx
	testl	%edx, %edx
	je	L1630
L1629:
	movzbl	(%edx), %ebx
	testb	%bl, %bl
	je	L1616
	cmpb	%bl, -136(%ebp)
	jne	L1618
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1618
	movl	-164(%ebp), %ecx
	cmpl	8(%edx), %ecx
	je	L1884
	testl	%esi, %esi
	movl	$1, %ecx
	cmove	%edx, %eax
	movl	144(%edx), %edx
	cmove	%ecx, %esi
	testl	%edx, %edx
	jne	L1629
L1630:
	testl	%eax, %eax
	jne	L1613
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1591:
	movl	__ZL6curvbo, %eax
	addl	$1, %eax
	cmpl	_r_vbocount, %eax
	jge	L1709
	leal	0(,%eax,4), %edx
L1597:
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
	jne	L1598
	cmpw	$0, 26(%ecx)
	jne	L1598
	testl	%edx, %edx
	jg	L1603
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1711:
	movl	%eax, %ebx
	jmp	L1608
	.p2align 4,,10
	.p2align 3
L1883:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L1624
	cmpl	$5, %esi
	jne	L1885
L1624:
	testl	%ebx, %ebx
	je	L1886
L1622:
	cmpl	$1, %esi
	movl	$2, %ecx
	cmovle	%edx, %eax
	cmovle	%ecx, %esi
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1640:
	movl	_r_vertexarrays, %edx
	testl	%edx, %edx
	jne	L1887
	movl	-176(%ebp), %eax
	movl	208(%eax), %edx
L1670:
	movl	$0, (%esp)
	movl	-212(%ebp), %eax
	movl	-208(%ebp), %ecx
	call	__ZL24md3draw_handle_trianglesPK9md3surf_tPtiPK10md3model_t
	movl	_r_vertexarrays, %eax
	testl	%eax, %eax
	je	L1888
L1671:
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
L1674:
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
	jge	L1674
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
	jle	L1676
	.p2align 4
	.p2align 3
L1675:
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
	je	L1677
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1677:
	movl	$32888, (%esp)
	subl	$1, %ebx
	call	*_glad_glDisableClientState
	subl	$4, %esp
	movl	%ebx, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	cmpl	%ebx, _gl+4
	je	L1678
	movl	%ebx, _gl+4
	movl	%ebx, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L1678:
	cmpl	$33984, %ebx
	jne	L1675
	jmp	L1866
	.p2align 4,,10
	.p2align 3
L1865:
	testl	%eax, %eax
	js	L1594
	xorl	%edi, %edi
L1595:
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
L1602:
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
	je	L1601
	movss	%xmm3, (%ecx)
	movss	%xmm0, 4(%ecx)
	movss	%xmm2, 8(%ecx)
L1601:
	movss	%xmm3, (%edx)
	subl	$1, %eax
	subl	$12, %edx
	subl	$12, %ecx
	movss	%xmm0, 16(%edx)
	movss	%xmm2, 20(%edx)
	movl	_r_vertexarrays, %edi
	movl	%edi, -148(%ebp)
	cmpl	$-1, %eax
	jne	L1602
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1598:
	testl	%eax, %eax
	jns	L1595
	jmp	L1600
L1709:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	L1597
L1886:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L1622
L1626:
	cmpl	$2, %esi
	movl	$3, %ebx
	cmovle	%ebx, %esi
	cmovle	%edx, %eax
	jmp	L1618
L1712:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1615:
	cmpb	$0, (%edx)
	jne	L1632
	movl	4(%edx), %ecx
	cmpl	%ecx, %edi
	je	L1889
	testl	%ecx, %ecx
	je	L1694
	.p2align 4
	.p2align 3
L1632:
	movl	144(%edx), %edx
	testl	%edx, %edx
	jne	L1615
L1891:
	testl	%eax, %eax
	jne	L1613
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1889:
	movl	-164(%ebp), %esi
	cmpl	%esi, 8(%edx)
	jne	L1635
	cmpl	$5, %ebx
	jne	L1890
L1635:
	testl	%ecx, %ecx
	jne	L1695
L1694:
	movl	-164(%ebp), %ecx
	cmpl	%ecx, 8(%edx)
	je	L1637
	testl	%edi, %edi
	je	L1695
	testl	%ebx, %ebx
	movl	$1, %ecx
	cmove	%edx, %eax
	movl	144(%edx), %edx
	cmove	%ecx, %ebx
	testl	%edx, %edx
	jne	L1615
	jmp	L1891
L1695:
	cmpl	$1, %ebx
	movl	$2, %ecx
	cmovle	%edx, %eax
	movl	144(%edx), %edx
	cmovle	%ecx, %ebx
	testl	%edx, %edx
	jne	L1615
	jmp	L1891
L1884:
	cmpl	$3, %esi
	movl	$4, %ebx
	cmovle	%edx, %eax
	cmovle	%ebx, %esi
	jmp	L1618
L1879:
	movl	-164(%ebp), %eax
	movl	$255, %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %ebx
	movl	%ebx, %eax
	call	_mdloadskin
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1641
	movl	68(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1642
	movl	-164(%ebp), %eax
	jmp	L1645
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1643:
	movl	144(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1642
L1645:
	cmpb	$-1, (%ebx)
	jne	L1643
	cmpl	4(%ebx), %edi
	jne	L1643
	cmpl	%eax, 8(%ebx)
	jne	L1643
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
	jmp	L1641
L1881:
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
	je	L1653
L1882:
	movl	-212(%ebp), %edi
	movl	84(%edi), %edx
	testl	%edx, %edx
	jle	L1654
	movl	__ZL8vertlist, %ebx
	movl	%esi, -252(%ebp)
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L1655:
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
	jl	L1655
	movl	-252(%ebp), %esi
L1654:
	movl	-176(%ebp), %ecx
	leal	-1(%edx), %eax
	movl	%eax, -152(%ebp)
	movl	212(%ecx), %edi
	movl	204(%ecx), %ecx
	movl	%ecx, -136(%ebp)
	cmpl	$0, %eax
	jg	L1892
L1656:
	movl	-176(%ebp), %eax
	movl	48(%eax), %ecx
	testl	%ecx, %ecx
	je	L1893
	movl	-176(%ebp), %eax
	jmp	L1653
L1880:
	movl	-164(%ebp), %eax
	movl	$254, %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %esi
	movl	%esi, %eax
	call	_mdloadskin
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1646
	movl	68(%esi), %esi
	testl	%esi, %esi
	je	L1647
	movl	-164(%ebp), %eax
	jmp	L1650
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1648:
	movl	144(%esi), %esi
	testl	%esi, %esi
	je	L1647
L1650:
	cmpb	$-2, (%esi)
	jne	L1648
	cmpl	4(%esi), %edi
	jne	L1648
	cmpl	%eax, 8(%esi)
	jne	L1648
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
	jmp	L1646
L1887:
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
	jmp	L1670
L1885:
	movl	%edx, %eax
	movl	$5, %esi
	jmp	L1618
L1576:
	movl	-204(%ebp), %eax
	testb	$2, 12(%eax)
	jne	L1580
	movl	-216(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	8(%eax), %xmm1
	comiss	%xmm0, %xmm1
	ja	L1580
	movss	LC74, %xmm5
	comiss	-152(%ebp), %xmm5
	jbe	L1579
L1580:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	movss	%xmm3, -160(%ebp)
	call	_inthash_find
	movss	-160(%ebp), %xmm3
	cmpl	$1, %eax
	je	L1579
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movss	-160(%ebp), %xmm3
	jmp	L1579
L1703:
	movss	LC74, %xmm0
	andl	$1, %ecx
	jmp	L1575
L1702:
	movaps	%xmm0, %xmm1
	movaps	%xmm4, %xmm6
	xorps	%xmm5, %xmm5
	jmp	L1552
L1548:
	movsbl	23(%esi), %ecx
	movzbl	21(%esi), %esi
	xorps	%xmm2, %xmm2
	imull	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, %ecx
	mulss	LC114, %xmm2
	andl	$160, %ecx
	subss	%xmm2, %xmm1
	movss	%xmm1, -224(%ebp)
	cmpl	$128, %ecx
	je	L1696
	movl	%eax, %ebx
	andl	$32, %ebx
L1697:
	movss	LC89, %xmm5
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
	jmp	L1551
L1532:
	movl	%edi, %edx
	sall	$6, %edx
	addl	%edx, %eax
	movl	%eax, -216(%ebp)
	cmpl	$16383, %edi
	ja	L1533
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzbl	17(%eax), %eax
	movb	%al, -217(%ebp)
	jmp	L1534
L1872:
	cmpl	%eax, %ecx
	jnb	L1541
	cmpl	%eax, %edx
	jb	L1542
L1541:
	xorps	%xmm1, %xmm1
	comiss	%xmm0, %xmm1
	jb	L1540
L1539:
	xorps	%xmm1, %xmm1
	jmp	L1544
L1890:
	movl	%edx, %eax
	movl	$5, %ebx
	jmp	L1632
L1876:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -132(%ebp)
	jmp	L1585
L1705:
	movl	$0x00000000, -160(%ebp)
	movl	$0x00000000, -128(%ebp)
	jmp	L1583
L1875:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC96, %xmm0
	movss	%xmm0, -160(%ebp)
	jmp	L1577
L1877:
	movl	-204(%ebp), %esi
	movl	%edx, %ecx
	xorps	%xmm5, %xmm5
	movss	%xmm1, -128(%ebp)
	negl	%ecx
	flds	-128(%ebp)
	fmull	_gxyaspect
	testb	$32, 12(%esi)
	fmuls	LC109
	cmovne	%ecx, %edx
	cvtsi2ssl	%edx, %xmm5
	movss	%xmm5, -124(%ebp)
	movss	-196(%ebp), %xmm5
	addss	-200(%ebp), %xmm5
	movss	%xmm5, -128(%ebp)
	fmuls	-128(%ebp)
	fdivrs	-124(%ebp)
	fstps	-144(%ebp)
	jmp	L1586
L1873:
	movzbl	_hictinting+2(,%eax,8), %edx
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC96, %xmm2
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
	jmp	L1570
L1728:
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
	jne	L1558
	cmpl	%eax, %edx
	jge	L1558
	leal	-100(%ebp), %ebx
	movl	%esi, %eax
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L1558
L1562:
	movl	$2305, (%esp)
	call	*%ecx
	subl	$4, %esp
	jmp	L1563
L1892:
	movl	%esi, -260(%ebp)
	movl	$0, -156(%ebp)
	.p2align 4
	.p2align 3
L1733:
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
L1657:
	movl	-124(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jle	L1658
L1894:
	comiss	(%edi,%eax,4), %xmm1
	jb	L1658
	addl	$1, -124(%ebp)
	movl	-124(%ebp), %eax
	cmpl	%eax, -152(%ebp)
	jg	L1894
	.p2align 4
	.p2align 3
L1658:
	leal	(%edi,%esi,4), %ebx
	movss	(%ebx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1661
	movl	-156(%ebp), %eax
	jmp	L1660
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1663:
	subl	$1, %esi
	subl	$4, %ebx
	movss	(%edi,%esi,4), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L1661
L1660:
	cmpl	%eax, %esi
	jg	L1663
L1661:
	movl	-136(%ebp), %ecx
	leal	(%ecx,%esi,2), %eax
	movl	%eax, -148(%ebp)
	movl	-124(%ebp), %eax
	cmpl	%eax, %esi
	jg	L1895
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
	jl	L1896
L1666:
	leal	1(%esi), %eax
	movl	%eax, -156(%ebp)
	cmpl	%eax, -152(%ebp)
	jg	L1733
	movl	-260(%ebp), %esi
	jmp	L1656
	.p2align 4,,10
	.p2align 3
L1895:
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
	jmp	L1657
L1896:
	movl	%eax, (%esp)
	movl	-156(%ebp), %ecx
	movl	%edi, %edx
	movl	-136(%ebp), %eax
	call	__ZL9quicksortPtPfii
	jmp	L1666
L1637:
	cmpl	$3, %ebx
	movl	$4, %ecx
	cmovle	%edx, %eax
	cmovle	%ecx, %ebx
	jmp	L1632
L1871:
	movl	-176(%ebp), %eax
	movl	164(%eax), %edx
	leal	0(,%edx,4), %edi
	movl	%edx, -124(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1536
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
	jle	L1538
	movl	%ebx, %edi
	movl	-176(%ebp), %ebx
	movw	%si, -124(%ebp)
	xorl	%esi, %esi
L1537:
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
	jl	L1537
	movswl	-124(%ebp), %esi
	movl	%edi, %ebx
L1538:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L1535
L1549:
	movl	-128(%ebp), %ecx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	addl	%ecx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	addss	-224(%ebp), %xmm1
	movss	%xmm1, -224(%ebp)
	jmp	L1550
L1874:
	cmpb	$-1, %al
	jne	L1573
	jmp	L1574
L1647:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jle	L1646
	movl	%edi, 16(%esp)
	movl	$LC113, 12(%esp)
	movl	$2331, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1646
L1642:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jle	L1641
	movl	%edi, 16(%esp)
	movl	$LC112, 12(%esp)
	movl	$2315, 8(%esp)
	movl	$LC91, 4(%esp)
	movl	$1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1641
L1696:
	movl	-128(%ebp), %ecx
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	addl	%ecx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	addss	-224(%ebp), %xmm1
	movss	%xmm1, -224(%ebp)
	jmp	L1697
L1536:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1893:
	xorl	%eax, %eax
	jmp	L1653
	.cfi_endproc
LFE185:
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
LC116:
	.ascii "no error\0"
LC117:
	.ascii "out of memory\0"
	.align 4
LC118:
	.ascii "read too few bytes from cache file\0"
LC119:
	.ascii "dedxtfilter failed\0"
	.align 4
LC120:
	.ascii "glCompressedTexImage2DARB failed\0"
	.align 4
LC121:
	.ascii "glGetTexLevelParameteriv failed\0"
	.align 4
__ZL15texcache_errors.lto_priv.0:
	.long	LC116
	.long	LC117
	.long	LC118
	.long	LC119
	.long	LC120
	.long	LC121
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
	.globl	__ZN6loguru17g_preamble_uptimeE
	.section .rdata,"dr"
__ZN6loguru17g_preamble_uptimeE:
	.byte	1
	.globl	_g_ImGuiCaptureInput
	.set	_g_ImGuiCaptureInput,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru17g_preamble_headerE
	.set	__ZN6loguru17g_preamble_headerE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru18g_colorlogtostderrE
	.set	__ZN6loguru18g_colorlogtostderrE,__ZN6loguru17g_preamble_uptimeE
	.globl	__ZN6loguru15g_preamble_timeE
	.data
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
	.globl	__ZN6loguru20g_internal_verbosityE
	.bss
	.align 4
__ZN6loguru20g_internal_verbosityE:
	.space 4
	.section .rdata,"dr"
	.align 4
LC11:
	.long	1232348160
	.align 4
LC21:
	.long	1115684864
	.set	LC74,LC110+8
	.align 4
LC83:
	.long	931135616
	.align 4
LC84:
	.long	1115947008
	.align 4
LC85:
	.long	931135488
	.align 4
LC86:
	.long	981467136
	.align 4
LC87:
	.long	994643931
	.align 4
LC88:
	.long	947912704
	.align 16
LC89:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC92:
	.long	1199570688
	.align 4
LC93:
	.long	1056964608
	.align 4
LC95:
	.long	1086918619
	.align 4
LC96:
	.long	998277249
	.set	LC97,LC89
	.align 4
LC99:
	.long	1015021568
	.align 4
LC100:
	.long	1082130432
	.align 4
LC101:
	.long	1275068416
	.align 4
LC102:
	.long	1107296256
	.align 4
LC103:
	.long	-1166016512
	.align 4
LC104:
	.long	-1199570944
	.align 4
LC105:
	.long	1098907648
	.align 4
LC106:
	.long	1031798784
	.align 4
LC107:
	.long	654311424
	.align 4
LC108:
	.long	939524096
	.align 4
LC109:
	.long	1140850688
	.align 16
LC110:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.align 4
LC111:
	.long	998244352
	.align 4
LC114:
	.long	-1065353216
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.def	___moddi3;	.scl	2;	.type	32;	.endef
	.def	___divdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_lock;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_unlock;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_system_errori;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread6_StateD2Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	_pthread_self;	.scl	2;	.type	32;	.endef
	.def	__ZSt11_Hash_bytesPKvjj;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	__ZL7istargaPKhi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERjj;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	___ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
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
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_voxload;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
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
