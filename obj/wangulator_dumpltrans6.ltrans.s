	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL29editorCompare2dSideViewPointsPKvS0_;	.scl	3;	.type	32;	.endef
__ZL29editorCompare2dSideViewPointsPKvS0_:
LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movzwl	(%eax), %eax
	movl	__ZL12m32_sidedist(,%eax,4), %ecx
	movl	8(%esp), %eax
	movzwl	(%eax), %eax
	movl	__ZL12m32_sidedist(,%eax,4), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	setg	%al
	negl	%eax
	cmpl	%edx, %ecx
	movl	$1, %edx
	cmovl	%edx, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__ZNSt6thread24_M_thread_deps_never_runEv
	.def	__ZNSt6thread24_M_thread_deps_never_runEv;	.scl	2;	.type	32;	.endef
__ZNSt6thread24_M_thread_deps_never_runEv:
LFB1:
	.cfi_startproc
	ret
	.cfi_endproc
LFE1:
	.section .rdata,"dr"
LC0:
	.ascii "DBG\0"
LC1:
	.ascii "ENG\0"
LC2:
	.ascii "GFX\0"
LC3:
	.ascii "GL\0"
LC4:
	.ascii "ASS\0"
LC5:
	.ascii "INPT\0"
LC6:
	.ascii "NET\0"
LC7:
	.ascii "PR\0"
LC8:
	.ascii "MEM\0"
	.text
	.p2align 4
	.globl	__Z23engineVerbosityCallbacki
	.def	__Z23engineVerbosityCallbacki;	.scl	2;	.type	32;	.endef
__Z23engineVerbosityCallbacki:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	movl	8(%ebp), %eax
	movl	$LC1, 12(%esp)
	movss	12(%esp), %xmm1
	movl	$LC3, 12(%esp)
	movss	12(%esp), %xmm2
	unpcklps	%xmm1, %xmm0
	movl	$LC7, 12(%esp)
	movss	LC9, %xmm1
	movl	$LC8, 48(%esp)
	unpcklps	%xmm2, %xmm1
	movlhps	%xmm1, %xmm0
	movss	LC10, %xmm1
	movups	%xmm0, 16(%esp)
	movss	12(%esp), %xmm0
	movl	$LC5, 12(%esp)
	movss	12(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC11, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 32(%esp)
	cmpl	$8, %eax
	jbe	L11
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	cmpl	$127, %eax
	movl	$LC0, %edx
	movl	$0, %eax
	cmove	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L11:
	.cfi_restore_state
	movl	16(%esp,%eax,4), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	_tdefl_optimize_huffman_table;	.scl	3;	.type	32;	.endef
_tdefl_optimize_huffman_table:
LFB4:
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
	pushl	%eax
	.cfi_def_cfa_offset 24
	movl	$5568, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 5592
	movl	(%esp,%eax), %eax
	movl	%edx, 40(%esp)
	movl	%ecx, 48(%esp)
	movl	%eax, 20(%esp)
	xorl	%eax, %eax
L13:
	movl	$0, 64(%esp,%eax)
	movl	$0, 68(%esp,%eax)
	movl	$0, 72(%esp,%eax)
	movl	$0, 76(%esp,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L13
	movl	40(%esp), %edi
	movl	5596(%esp), %esi
	movl	$0, 64(%esp,%eax)
	testl	%esi, %esi
	leal	0(,%edi,8), %eax
	movl	%eax, 52(%esp)
	je	L15
	addl	%edi, %eax
	movl	48(%esp), %edi
	sall	$5, %eax
	addl	20(%esp), %eax
	leal	(%edi,%eax), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L16:
	movzbl	36626(%eax), %edx
	addl	$1, %eax
	addl	$1, 64(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L16
	leal	3524(%esp), %eax
	movl	%eax, 44(%esp)
	movl	5592(%esp), %eax
	leal	1(%eax), %edx
L17:
	movl	44(%esp), %ebx
	xorl	%ecx, %ecx
	movl	$2, %eax
	movl	$0, 3528(%esp)
	.p2align 4
	.p2align 4
	.p2align 3
L60:
	addl	60(%esp,%eax,4), %ecx
	addl	%ecx, %ecx
	movl	%ecx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L60
	movl	20(%esp), %eax
	movl	52(%esp), %ebx
	addl	40(%esp), %ebx
	movl	48(%esp), %esi
	sall	$5, %ebx
	addl	%eax, %ebx
	negl	%eax
	addl	%ebx, %esi
	movl	%eax, %edi
	jmp	L63
	.p2align 5
	.p2align 4,,10
	.p2align 3
L61:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	je	L113
L63:
	movzbl	36626(%ebx), %edx
	testl	%edx, %edx
	je	L61
	movl	3524(%esp,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, 3524(%esp,%edx,4)
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L62:
	movl	%ecx, %ebp
	addl	%eax, %eax
	shrl	%ecx
	andl	$1, %ebp
	orl	%ebp, %eax
	subl	$1, %edx
	jne	L62
	movw	%ax, 34898(%edi,%ebx,2)
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jne	L63
L113:
	addl	$5572, %esp
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
L15:
	.cfi_restore_state
	addl	%edi, %eax
	movl	20(%esp), %edi
	movl	48(%esp), %esi
	xorl	%ebx, %ebx
	sall	$6, %eax
	leal	33170(%edi,%eax), %ecx
	movl	%eax, 60(%esp)
	xorl	%eax, %eax
	leal	1220(%esp), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L19:
	movzwl	(%ecx,%eax,2), %edx
	testw	%dx, %dx
	je	L18
	movl	%eax, %ebp
	sall	$16, %ebp
	orl	%ebp, %edx
	movl	%edx, (%edi,%ebx,4)
	addl	$1, %ebx
L18:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L19
	leal	3524(%esp), %eax
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 44(%esp)
	call	_memset
	testl	%ebx, %ebx
	je	L64
	leal	0(,%ebx,4), %eax
	movl	%edi, %edx
	movl	%eax, 56(%esp)
	leal	(%edi,%eax), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L21:
	movzwl	(%edx), %eax
	addl	$4, %edx
	movzbl	%al, %ecx
	movzbl	%ah, %eax
	addl	$1, 3524(%esp,%ecx,4)
	addl	$1, 4548(%esp,%eax,4)
	cmpl	%edx, %esi
	jne	L21
	movl	24(%esp), %eax
	cmpl	4548(%esp), %eax
	setne	%al
	movzbl	%al, %eax
	addl	$1, %eax
L20:
	cmpl	$1, %eax
	leal	2372(%esp), %ebp
	setne	%al
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	leal	8(,%eax,8), %eax
	movl	%eax, 28(%esp)
	leal	196(%esp), %eax
L25:
	movl	%ecx, %esi
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	sall	$7, %esi
	addl	44(%esp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L22:
	movl	%ebx, (%eax,%edx,4)
	addl	(%esi,%edx,4), %ebx
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L22
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L23
	movl	56(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%edi, %ebx
	addl	%edi, %esi
	movl	%esi, 12(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L24:
	movzwl	(%ebx), %edx
	addl	$4, %ebx
	sarl	%cl, %edx
	movzbl	%dl, %edx
	movl	196(%esp,%edx,4), %esi
	leal	1(%esi), %edi
	movl	%edi, 196(%esp,%edx,4)
	movl	-4(%ebx), %edx
	movl	%edx, 0(%ebp,%esi,4)
	cmpl	%ebx, 12(%esp)
	jne	L24
	movl	16(%esp), %edi
L23:
	addl	$8, %ecx
	cmpl	%ecx, 28(%esp)
	je	L114
	movl	%edi, %edx
	movl	%ebp, %edi
	movl	%edx, %ebp
	jmp	L25
L114:
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L27
	cmpl	$1, %eax
	je	L115
	movzwl	4(%ebp), %eax
	addw	0(%ebp), %ax
	movw	%ax, 0(%ebp)
	movl	%eax, %ebx
	movl	24(%esp), %eax
	leal	-1(%eax), %edi
	movl	%edi, 16(%esp)
	movl	56(%esp), %edi
	leal	-8(%ebp,%edi), %esi
	cmpl	$2, %eax
	je	L29
	movl	%esi, 28(%esp)
	xorl	%edx, %edx
	movl	$1, %eax
	movl	$2, %edi
	jmp	L39
	.p2align 6
	.p2align 4,,10
	.p2align 3
L116:
	leal	0(%ebp,%edx,4), %ecx
	movw	%bx, 0(%ebp,%eax,4)
	addl	$1, %edx
	movw	%ax, (%ecx)
	movzwl	0(%ebp,%eax,4), %ecx
L31:
	leal	0(%ebp,%edx,4), %esi
	movzwl	(%esi), %ebx
L35:
	addl	%ecx, %ebx
	addl	$1, %edx
	movw	%bx, 0(%ebp,%eax,4)
	movw	%ax, (%esi)
	addl	$1, %eax
	cmpl	16(%esp), %eax
	je	L38
L117:
	movzwl	0(%ebp,%edx,4), %ebx
L39:
	cmpl	%edi, 24(%esp)
	jle	L116
	movzwl	0(%ebp,%edi,4), %ecx
	cmpw	%cx, %bx
	jnb	L32
	leal	0(%ebp,%edx,4), %ecx
	movw	%bx, 0(%ebp,%eax,4)
	addl	$1, %edx
	movw	%ax, (%ecx)
	movzwl	0(%ebp,%eax,4), %ecx
L33:
	cmpl	%edi, 24(%esp)
	jle	L31
	movzwl	0(%ebp,%edi,4), %esi
	movw	%si, 12(%esp)
	cmpl	%eax, %edx
	jge	L36
	leal	0(%ebp,%edx,4), %esi
	movzwl	(%esi), %ebx
	cmpw	12(%esp), %bx
	jb	L35
L36:
	addw	12(%esp), %cx
	addl	$1, %edi
	movw	%cx, 0(%ebp,%eax,4)
	addl	$1, %eax
	cmpl	16(%esp), %eax
	jne	L117
L38:
	movl	28(%esp), %esi
	xorl	%eax, %eax
	leal	-4(%ebp), %ecx
	movw	%ax, (%esi)
	movl	56(%esp), %eax
	leal	-12(%ebp,%eax), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L41:
	movzwl	(%eax), %edx
	subl	$4, %eax
	movzwl	0(%ebp,%edx,4), %edx
	addl	$1, %edx
	movw	%dx, 4(%eax)
	cmpl	%eax, %ecx
	jne	L41
L40:
	movl	24(%esp), %eax
	movl	$1, 12(%esp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	subl	$2, %eax
	testl	%eax, %eax
	jns	L43
	jmp	L118
	.p2align 5
	.p2align 4,,10
	.p2align 3
L46:
	addl	$1, %edx
	subl	$1, %eax
	jb	L47
L43:
	movzwl	0(%ebp,%eax,4), %ecx
	cmpl	%edi, %ecx
	je	L46
L47:
	leal	(%edx,%edx), %esi
	movl	%esi, 32(%esp)
	cmpl	12(%esp), %edx
	jge	L112
L44:
	movl	12(%esp), %ebx
	movl	16(%esp), %ecx
	movl	%edi, %esi
	subl	%ebx, %ecx
	leal	0(%ebp,%ecx,4), %ecx
	movl	%ecx, 28(%esp)
	movl	%edx, %ecx
	notl	%ecx
	addl	%ebx, %ecx
	movl	%ecx, 36(%esp)
	movl	28(%esp), %ecx
	movw	%di, (%ecx,%ebx,4)
	leal	-1(%ebx), %ecx
	cmpl	%edx, %ecx
	jle	L106
	testb	$1, 36(%esp)
	je	L110
	movl	28(%esp), %ebx
	movw	%di, (%ebx,%ecx,4)
	movl	12(%esp), %ecx
	subl	$2, %ecx
	cmpl	%edx, %ecx
	jle	L106
L110:
	movl	28(%esp), %ebx
L48:
	movw	%si, (%ebx,%ecx,4)
	movw	%si, -4(%ebx,%ecx,4)
	subl	$2, %ecx
	cmpl	%edx, %ecx
	jg	L48
L106:
	testl	%edx, %edx
	je	L49
	movl	12(%esp), %esi
	movl	$1, %ecx
	subl	%esi, %ecx
	addl	%edx, %ecx
	cmpl	%esi, %edx
	movl	$0, %esi
	cmovge	%esi, %ecx
	movl	16(%esp), %esi
	leal	-1(%esi,%ecx), %esi
	movl	%esi, 16(%esp)
L112:
	movl	32(%esp), %esi
	addl	$1, %edi
	xorl	%edx, %edx
	movl	%esi, 12(%esp)
	testl	%eax, %eax
	jns	L43
L118:
	movl	$0, 32(%esp)
	jmp	L44
L32:
	movw	%cx, 0(%ebp,%eax,4)
	addl	$1, %edi
	jmp	L33
L108:
	movl	16(%esp), %ebp
L27:
	movl	20(%esp), %edi
	movl	52(%esp), %eax
	movl	$288, 8(%esp)
	addl	40(%esp), %eax
	movl	$0, 4(%esp)
	sall	$5, %eax
	movl	%eax, 32(%esp)
	leal	36626(%edi,%eax), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	60(%esp), %eax
	movl	$576, 8(%esp)
	movl	$0, 4(%esp)
	leal	34898(%edi,%eax), %eax
	movl	$1, %edi
	movl	%eax, (%esp)
	call	_memset
	movl	5592(%esp), %eax
	movl	%ebp, 36(%esp)
	leal	1(%eax), %edx
	movl	%edx, 28(%esp)
	movl	24(%esp), %edx
	.p2align 4
	.p2align 3
L59:
	movl	64(%esp,%edi,4), %ebp
	testl	%ebp, %ebp
	jle	L57
	movl	36(%esp), %eax
	leal	0(,%ebp,4), %ecx
	movl	%ebp, 16(%esp)
	leal	-2(%eax,%edx,4), %eax
	movl	%eax, %ebx
	subl	%ecx, %ebx
	movl	20(%esp), %ecx
	addl	32(%esp), %ecx
	movl	%ecx, %ebp
	movl	%ebx, 12(%esp)
	movl	12(%esp), %ebx
	movl	%edi, %ecx
	movl	%ebp, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L58:
	movzwl	(%eax), %ebp
	subl	$4, %eax
	movb	%cl, 36626(%ebp,%esi)
	cmpl	%eax, %ebx
	jne	L58
	movl	16(%esp), %ebp
	subl	%ebp, %edx
L57:
	movl	28(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jne	L59
	movl	%eax, %edx
	jmp	L17
L49:
	movzwl	0(%ebp), %eax
	movl	56(%esp), %ecx
	addl	$1, 64(%esp,%eax,4)
	addl	%ebp, %ecx
	leal	4(%ebp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L50:
	movzwl	(%eax), %edx
	addl	$4, %eax
	addl	$1, 64(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L50
	movl	5592(%esp), %eax
	leal	192(%esp), %ecx
	sall	$2, %eax
	leal	64(%esp,%eax), %esi
	movl	%eax, 16(%esp)
	movl	(%esi), %eax
	movl	%esi, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L51:
	addl	4(%edx), %eax
	addl	$4, %edx
	movl	%eax, (%esi)
	cmpl	%edx, %ecx
	jne	L51
	movl	5592(%esp), %edx
	movl	%eax, 28(%esp)
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L52:
	movl	64(%esp,%edx,4), %eax
	movl	%edi, %ecx
	subl	%edx, %ecx
	movl	%eax, 12(%esp)
	sall	%cl, %eax
	addl	%eax, %ebx
	subl	$1, %edx
	jne	L52
	movl	$128, %edi
	cmpl	$7, 5592(%esp)
	movl	$32768, %edx
	movl	28(%esp), %eax
	cmovne	%edx, %edi
	cmpl	%edi, %ebx
	je	L27
	movl	16(%esp), %ecx
	movl	%ebp, 16(%esp)
	movl	5592(%esp), %ebp
	leal	60(%esp,%ecx), %ecx
	movl	%ecx, 12(%esp)
	.p2align 4
	.p2align 3
L56:
	subl	$1, %eax
	leal	-1(%ebp), %edx
	movl	%eax, (%esi)
	movl	12(%esp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L55:
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	L119
	subl	$4, %eax
	subl	$1, %edx
	jne	L55
L54:
	subl	$1, %ebx
	cmpl	%edi, %ebx
	je	L108
	movl	(%esi), %eax
	jmp	L56
	.p2align 4,,10
	.p2align 3
L119:
	subl	$1, %ecx
	movl	%ecx, (%eax)
	addl	$2, 68(%esp,%edx,4)
	jmp	L54
L115:
	movl	$1, %ecx
	movl	$1, 68(%esp)
	movw	%cx, 0(%ebp)
	jmp	L27
L64:
	movl	$0, 56(%esp)
	movl	$1, %eax
	jmp	L20
L29:
	xorl	%edx, %edx
	movw	%dx, (%esi)
	jmp	L40
	.cfi_endproc
LFE4:
	.section .rdata,"dr"
LC14:
	.ascii "\2\3\7\0"
	.text
	.p2align 4
	.def	_tdefl_start_dynamic_block;	.scl	3;	.type	32;	.endef
_tdefl_start_dynamic_block:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %ecx
	xorl	%edx, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$286, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$672, %esp
	.cfi_def_cfa_offset 692
	movw	%cx, 33682(%eax)
	movl	$288, %ecx
	movl	$0, 4(%esp)
	movl	$15, (%esp)
	call	_tdefl_optimize_huffman_table
	movl	$0, 4(%esp)
	movl	$32, %ecx
	movl	%ebx, %eax
	movl	$15, (%esp)
	movl	$1, %edx
	call	_tdefl_optimize_huffman_table
	jmp	L122
	.p2align 5
	.p2align 4,,10
	.p2align 3
L280:
	cmpl	$257, %edi
	je	L279
L122:
	movl	%edi, %ecx
	subl	$1, %edi
	cmpb	$0, 36626(%ebx,%edi)
	je	L280
	leal	-257(%ecx), %eax
	movl	%ecx, %edi
	movl	%eax, 28(%esp)
L123:
	movl	$30, %esi
	jmp	L126
	.p2align 5
	.p2align 4,,10
	.p2align 3
L124:
	cmpl	$1, %esi
	je	L281
L126:
	movl	%esi, %eax
	subl	$1, %esi
	movl	%esi, %ebp
	cmpb	$0, 36914(%ebx,%esi)
	je	L124
	movl	%eax, 12(%esp)
	movl	%eax, %esi
L125:
	leal	36626(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	352(%esp), %eax
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	call	_memcpy
	movl	16(%esp), %ecx
	leal	352(%esp,%ecx), %ecx
	cmpl	$16, %esi
	jnb	L127
	testl	$8, %esi
	jne	L282
	testl	$4, %esi
	jne	L283
	testl	%esi, %esi
	je	L128
	movzbl	36914(%ebx), %eax
	movb	%al, (%ecx)
	testl	$2, %esi
	jne	L284
L128:
	movl	$0, 34344(%ebx)
	xorl	%eax, %eax
	movl	$0, 34348(%ebx)
	movl	$0, 34352(%ebx)
	movl	$0, 34356(%ebx)
	movl	12(%esp), %esi
L134:
	movl	$0, 34322(%ebx,%eax)
	movl	$0, 34326(%ebx,%eax)
	movl	$0, 34330(%ebx,%eax)
	movl	$0, 34334(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L134
	leal	352(%esp), %eax
	addl	%esi, %edi
	movzbl	352(%esp), %ecx
	movl	%esi, 12(%esp)
	leal	(%eax,%edi), %esi
	movl	%esi, 16(%esp)
	testb	%cl, %cl
	je	L199
	movb	$-1, 12(%esp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L137:
	movl	%ebx, 20(%esp)
	xorl	%edx, %edx
L147:
	cmpb	%cl, 12(%esp)
	je	L152
	movl	%esi, 24(%esp)
	testl	%edx, %edx
	je	L268
	cmpl	$2, %edx
	jbe	L285
	movl	20(%esp), %ebx
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
	addw	$1, 34354(%ebx)
	addl	$2, 24(%esp)
	movl	24(%esp), %edi
L151:
	movzbl	%cl, %edx
	movb	%cl, 32(%esp,%edi)
	leal	1(%edi), %esi
	addl	$1, %eax
	addw	$1, 34322(%ebx,%edx,2)
	cmpl	16(%esp), %eax
	je	L278
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L286
L272:
	movl	%esi, 12(%esp)
L136:
	xorl	%edx, %edx
L141:
	addl	$1, %edx
	cmpl	$138, %edx
	je	L287
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	je	L140
L289:
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	je	L141
	testl	%edx, %edx
	je	L201
	cmpl	$2, %edx
	jbe	L288
	movl	12(%esp), %edi
	leal	2(%edi), %esi
	cmpl	$10, %edx
	ja	L146
	subl	$3, %edx
	addw	$1, 34356(%ebx)
	movb	$17, 32(%esp,%edi)
	movb	%dl, 33(%esp,%edi)
L277:
	movb	$0, 12(%esp)
	jmp	L137
L127:
	movl	36898(%ebx,%esi), %eax
	leal	-1(%esi), %edx
	movl	%eax, -16(%ecx,%esi)
	movl	36902(%ebx,%esi), %eax
	movl	%eax, -12(%ecx,%esi)
	movl	36906(%ebx,%esi), %eax
	movl	%eax, -8(%ecx,%esi)
	movl	36910(%ebx,%esi), %eax
	movl	%eax, -4(%ecx,%esi)
	cmpl	$16, %edx
	jb	L128
	andl	$-16, %edx
	movl	%edi, 20(%esp)
	xorl	%eax, %eax
	movl	%ebp, 24(%esp)
	movl	%edx, 16(%esp)
L132:
	movl	36918(%ebx,%eax), %ebp
	movl	36922(%ebx,%eax), %edi
	movl	36926(%ebx,%eax), %esi
	movl	36914(%ebx,%eax), %edx
	movl	%ebp, 4(%ecx,%eax)
	movl	%edx, (%ecx,%eax)
	movl	%edi, 8(%ecx,%eax)
	movl	%esi, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	16(%esp), %eax
	jb	L132
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	jmp	L128
L199:
	movl	$0, 12(%esp)
	jmp	L136
L287:
	movl	12(%esp), %edi
	movl	$32530, %edx
	addw	$1, 34358(%ebx)
	addl	$1, %eax
	movw	%dx, 32(%esp,%edi)
	leal	2(%edi), %esi
	cmpl	16(%esp), %eax
	je	L278
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	jne	L277
	movl	%esi, 12(%esp)
	movl	$1, %edx
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	jne	L289
L140:
	testl	%edx, %edx
	je	L144
	cmpl	$2, %edx
	ja	L163
	movl	12(%esp), %eax
	addw	%dx, 34322(%ebx)
	leal	32(%esp,%eax), %ecx
	testl	%edx, %edx
	je	L165
	xorl	%eax, %eax
	testb	$1, %dl
	jne	L264
L164:
	movb	$0, (%ecx,%eax)
	movb	$0, 1(%ecx,%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jb	L164
L165:
	addl	%edx, 12(%esp)
	jmp	L144
	.p2align 4,,10
	.p2align 3
L286:
	cmpb	%dl, %cl
	je	L290
	movl	%edx, %ecx
	movl	%esi, %edi
	jmp	L151
L152:
	addl	$1, %edx
	cmpl	$6, %edx
	jne	L150
	movl	20(%esp), %edi
	movl	$784, %ebx
	leal	2(%esi), %edx
	addl	$1, %eax
	addw	$1, 34354(%edi)
	movw	%bx, 32(%esp,%esi)
	cmpl	16(%esp), %eax
	je	L270
	movzbl	(%eax), %esi
	movl	%esi, %ebx
	testb	%bl, %bl
	jne	L291
	movl	%edx, 12(%esp)
	movl	20(%esp), %ebx
	jmp	L136
L290:
	movl	%ebx, 20(%esp)
	movl	$1, %edx
L150:
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	je	L156
	movzbl	(%eax), %edi
	movl	%edi, %ebx
	testb	%bl, %bl
	je	L157
	movb	%cl, 12(%esp)
	movl	%edi, %ecx
	jmp	L147
L157:
	movl	20(%esp), %ebx
	testl	%edx, %edx
	je	L272
	cmpl	$2, %edx
	jbe	L292
	leal	2(%esi), %edi
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	addw	$1, 34354(%ebx)
	movl	%edi, 12(%esp)
	movb	%dl, 33(%esp,%esi)
	jmp	L136
L146:
	movl	12(%esp), %edi
	subl	$11, %edx
	addw	$1, 34358(%ebx)
	movb	$18, 32(%esp,%edi)
	movb	%dl, 33(%esp,%edi)
	jmp	L277
L288:
	movl	12(%esp), %edi
	addw	%dx, 34322(%ebx)
	movb	$0, 12(%esp)
	movb	$0, 32(%esp,%edi)
	leal	1(%edi), %esi
	cmpl	$1, %edx
	je	L137
	movb	$0, 32(%esp,%esi)
	leal	2(%edi), %esi
	jmp	L137
L292:
	movzbl	%cl, %edi
	movb	%cl, 32(%esp,%esi)
	addw	%dx, 34322(%ebx,%edi,2)
	leal	1(%esi), %edi
	movl	%edi, 12(%esp)
	cmpl	$1, %edx
	je	L136
	movb	%cl, 33(%esp,%esi)
	addl	$2, %esi
	movl	%esi, 12(%esp)
	jmp	L136
L278:
	movl	%esi, 12(%esp)
L144:
	movl	$0, 4(%esp)
	movl	$19, %ecx
	movl	$2, %edx
	movl	%ebx, %eax
	movl	$7, (%esp)
	movl	$2, %esi
	call	_tdefl_optimize_huffman_table
	movl	68(%ebx), %ecx
	movl	48(%ebx), %eax
	sall	%cl, %esi
	leal	2(%ecx), %edx
	orl	72(%ebx), %esi
	movl	%esi, 72(%ebx)
	movl	%esi, %ecx
	movl	%edx, 68(%ebx)
	cmpl	$7, %edx
	jbe	L168
	.p2align 6
	.p2align 4
	.p2align 3
L170:
	cmpl	52(%ebx), %eax
	jnb	L169
	leal	1(%eax), %edx
	movl	%edx, 48(%ebx)
	movb	%cl, (%eax)
	movl	72(%ebx), %ecx
	movl	48(%ebx), %eax
L169:
	movl	68(%ebx), %edi
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%edi), %edx
	movl	%edx, 68(%ebx)
	cmpl	$7, %edx
	ja	L170
	movl	%ecx, %esi
L168:
	movl	28(%esp), %edi
	movl	%edx, %ecx
	sall	%cl, %edi
	leal	5(%edx), %ecx
	orl	%edi, %esi
	movl	%ecx, 68(%ebx)
	movl	%esi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L171
	movl	%esi, %edx
	jmp	L173
	.p2align 6
	.p2align 4,,10
	.p2align 3
L293:
	movl	48(%ebx), %eax
L173:
	cmpl	52(%ebx), %eax
	jnb	L172
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L172:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	leal	-8(%eax), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L293
	movl	%edx, %esi
	movl	%ebp, %edx
	sall	%cl, %edx
	leal	-3(%eax), %ecx
	orl	%edx, %esi
	movl	%ecx, 68(%ebx)
	movl	%esi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L174
	movl	48(%ebx), %eax
	movl	%esi, %edx
	jmp	L176
	.p2align 6
	.p2align 4,,10
	.p2align 3
L294:
	movl	48(%ebx), %eax
L176:
	cmpl	52(%ebx), %eax
	jnb	L175
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L175:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	leal	-8(%eax), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L294
L174:
	movl	$18, %esi
	jmp	L178
	.p2align 5
	.p2align 4,,10
	.p2align 3
L296:
	subl	$1, %esi
	jb	L295
L178:
	movzbl	_s_tdefl_packed_code_size_syms_swizzle(%esi), %eax
	cmpb	$0, 37202(%ebx,%eax)
	je	L296
	movl	$3, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	leal	-3(%esi), %eax
	sall	%cl, %eax
L179:
	orl	72(%ebx), %eax
	addl	$4, %ecx
	movl	%eax, 72(%ebx)
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	jbe	L180
	.p2align 6
	.p2align 4
	.p2align 3
L182:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L181
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L181:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L182
L180:
	xorl	%edi, %edi
	movl	%eax, %edx
	.p2align 4
	.p2align 3
L187:
	movzbl	_s_tdefl_packed_code_size_syms_swizzle(%edi), %eax
	movzbl	37202(%ebx,%eax), %eax
	sall	%cl, %eax
	addl	$3, %ecx
	orl	%edx, %eax
	movl	%ecx, 68(%ebx)
	movl	%eax, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L183
	.p2align 6
	.p2align 4
	.p2align 3
L185:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L184
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L184:
	movl	68(%ebx), %edx
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %edx
	movl	%edx, 68(%ebx)
	cmpl	$7, %edx
	ja	L185
L183:
	cmpl	%edi, %esi
	je	L207
	movl	72(%ebx), %edx
	movl	68(%ebx), %ecx
	addl	$1, %edi
	jmp	L187
L207:
	xorl	%esi, %esi
L191:
	cmpl	12(%esp), %esi
	jnb	L297
	.p2align 4
	.p2align 3
L195:
	leal	1(%esi), %edi
	movl	68(%ebx), %ecx
	movzbl	31(%esp,%edi), %edx
	movzbl	37202(%ebx,%edx), %ebp
	movzwl	36050(%ebx,%edx,2), %eax
	sall	%cl, %eax
	addl	%ebp, %ecx
	orl	72(%ebx), %eax
	movl	%eax, 72(%ebx)
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	jbe	L188
	.p2align 6
	.p2align 4
	.p2align 3
L190:
	movl	48(%ebx), %ecx
	cmpl	52(%ebx), %ecx
	jnb	L189
	leal	1(%ecx), %ebp
	movl	%ebp, 48(%ebx)
	movb	%al, (%ecx)
	movl	72(%ebx), %eax
L189:
	movl	68(%ebx), %ecx
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L190
L188:
	cmpl	$15, %edx
	ja	L298
	movl	%edi, %esi
	cmpl	12(%esp), %esi
	jb	L195
L297:
	addl	$672, %esp
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
L298:
	.cfi_restore_state
	movzbl	LC14-16(%edx), %eax
	movzbl	32(%esp,%edi), %edx
	addl	$2, %esi
	sall	%cl, %edx
	addl	%ecx, %eax
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	jbe	L191
	.p2align 6
	.p2align 4
	.p2align 3
L194:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L193
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L193:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L194
	jmp	L191
L295:
	xorl	%eax, %eax
	movl	$3, %esi
	jmp	L179
L268:
	movl	24(%esp), %edi
	movl	20(%esp), %ebx
	jmp	L151
L279:
	movl	$0, 28(%esp)
	movl	$257, %ecx
	jmp	L123
L281:
	movl	%esi, 12(%esp)
	xorl	%ebp, %ebp
	jmp	L125
L285:
	movzbl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$1, 24(%esp)
	addw	%dx, 34322(%edi,%ebx,2)
	movzbl	12(%esp), %ebx
	movl	24(%esp), %edi
	movb	%bl, 32(%esp,%esi)
	cmpl	$1, %edx
	je	L269
	addl	$2, %esi
	movb	%bl, 32(%esp,%edi)
	movl	20(%esp), %ebx
	movl	%esi, 24(%esp)
	movl	%esi, %edi
	jmp	L151
L291:
	movl	%esi, %ebx
	cmpb	%bl, %cl
	je	L299
	movl	%edx, 24(%esp)
	movl	20(%esp), %ebx
	movl	%esi, %ecx
	movl	%edx, %edi
	jmp	L151
L269:
	movl	20(%esp), %ebx
	jmp	L151
L163:
	movl	12(%esp), %esi
	leal	2(%esi), %eax
	cmpl	$10, %edx
	ja	L166
	subl	$3, %edx
	addw	$1, 34356(%ebx)
	movb	$17, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
L167:
	movl	%eax, 12(%esp)
	jmp	L144
L299:
	movl	%edx, %esi
	movl	$1, %edx
	jmp	L150
L282:
	movl	36914(%ebx), %eax
	movl	36918(%ebx), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	36906(%ebx,%esi), %eax
	movl	36910(%ebx,%esi), %edx
	movl	%eax, -8(%ecx,%esi)
	movl	%edx, -4(%ecx,%esi)
	jmp	L128
L171:
	sall	%cl, %ebp
	addl	$10, %edx
	orl	%ebp, %esi
	movl	%edx, 68(%ebx)
	movl	%esi, 72(%ebx)
	movl	%esi, %edx
	jmp	L176
L156:
	movl	20(%esp), %ebx
	testl	%edx, %edx
	je	L278
	cmpl	$2, %edx
	ja	L160
	movzbl	%cl, %ecx
	leal	32(%esp,%esi), %edi
	addw	%dx, 34322(%ebx,%ecx,2)
	testl	%edx, %edx
	je	L162
	xorl	%eax, %eax
	testb	$1, %dl
	jne	L263
L161:
	movb	%cl, (%edi,%eax)
	movb	%cl, 1(%edi,%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jb	L161
L162:
	leal	(%esi,%edx), %eax
	movl	%eax, 12(%esp)
	jmp	L144
L160:
	leal	2(%esi), %eax
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	addw	$1, 34354(%ebx)
	movl	%eax, 12(%esp)
	movb	%dl, 33(%esp,%esi)
	jmp	L144
L263:
	movl	$1, %eax
	movb	%cl, (%edi)
	cmpl	%edx, %eax
	jb	L161
	jmp	L162
L264:
	movl	$1, %eax
	movb	$0, (%ecx)
	cmpl	%edx, %eax
	jb	L164
	jmp	L165
L166:
	movl	12(%esp), %esi
	subl	$11, %edx
	addw	$1, 34358(%ebx)
	movb	$18, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
	jmp	L167
L270:
	movl	%edx, 12(%esp)
	movl	20(%esp), %ebx
	jmp	L144
L284:
	movzwl	36912(%ebx,%esi), %eax
	movw	%ax, -2(%ecx,%esi)
	jmp	L128
L283:
	movl	36914(%ebx), %eax
	movl	%eax, (%ecx)
	movl	36910(%ebx,%esi), %eax
	movl	%eax, -4(%ecx,%esi)
	jmp	L128
L201:
	movl	12(%esp), %esi
	jmp	L277
	.cfi_endproc
LFE8:
	.p2align 4
	.def	_tdefl_compress_block;	.scl	3;	.type	32;	.endef
_tdefl_compress_block:
LFB9:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	testl	%edx, %edx
	je	L301
	movl	$134744072, 36754(%eax)
	xorl	%edx, %edx
	movl	$134744072, 36758(%eax)
	movl	$134744072, 36762(%eax)
	movl	$134744072, 36766(%eax)
L302:
	movl	$134744072, 36626(%eax,%edx)
	movl	$134744072, 36630(%eax,%edx)
	movl	$134744072, 36634(%eax,%edx)
	movl	$134744072, 36638(%eax,%edx)
	addl	$16, %edx
	cmpl	$128, %edx
	jb	L302
	movl	$151587081, 36866(%eax)
	xorl	%edx, %edx
	movl	$151587081, 36870(%eax)
	movl	$151587081, 36874(%eax)
	movl	$151587081, 36878(%eax)
L304:
	movl	$151587081, 36770(%eax,%edx)
	movl	$151587081, 36774(%eax,%edx)
	movl	$151587081, 36778(%eax,%edx)
	movl	$151587081, 36782(%eax,%edx)
	addl	$16, %edx
	cmpl	$96, %edx
	jb	L304
	movl	$117901063, 36882(%eax)
	movl	$288, %ecx
	xorl	%edx, %edx
	movl	$117901063, 36886(%eax)
	movl	$117901063, 36890(%eax)
	movl	$117901063, 36894(%eax)
	movl	$117901063, 36898(%eax)
	movl	$117901063, 36902(%eax)
	movl	$134744072, 36906(%eax)
	movl	$134744072, 36910(%eax)
	movl	$84215045, 36914(%eax)
	movl	$84215045, 36918(%eax)
	movl	$84215045, 36922(%eax)
	movl	$84215045, 36926(%eax)
	movl	$84215045, 36930(%eax)
	movl	$84215045, 36934(%eax)
	movl	$84215045, 36938(%eax)
	movl	$84215045, 36942(%eax)
	movl	$1, 4(%esp)
	movl	$15, (%esp)
	movl	%eax, 8(%esp)
	call	_tdefl_optimize_huffman_table
	movl	$15, (%esp)
	movl	8(%esp), %eax
	movl	$32, %ecx
	movl	$1, 4(%esp)
	movl	$1, %edx
	call	_tdefl_optimize_huffman_table
	movl	8(%esp), %eax
	movl	$1, %edx
	movl	68(%eax), %ecx
	movl	48(%eax), %edi
	sall	%cl, %edx
	addl	$2, %ecx
	orl	72(%eax), %edx
	movl	%edx, 72(%eax)
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	jbe	L306
	.p2align 6
	.p2align 4
	.p2align 3
L308:
	cmpl	52(%eax), %edi
	jnb	L307
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L307:
	movl	68(%eax), %ebx
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%ebx), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L308
	leal	37490(%eax), %ebp
	cmpl	40(%eax), %ebp
	jb	L345
	.p2align 4
	.p2align 3
L309:
	movzwl	35410(%eax), %ebx
	movzbl	36882(%eax), %esi
	sall	%cl, %ebx
	addl	%esi, %ecx
	movl	52(%eax), %esi
	orl	%edx, %ebx
	movl	%ecx, 68(%eax)
	movl	%edi, %edx
	movl	%ebx, 72(%eax)
	cmpl	$7, %ecx
	jbe	L329
	.p2align 6
	.p2align 4
	.p2align 3
L331:
	cmpl	%esi, %edx
	jnb	L330
	leal	1(%edx), %ecx
	movl	%ecx, 48(%eax)
	movb	%bl, (%edx)
	movl	72(%eax), %ebx
	movl	48(%eax), %edx
	movl	52(%eax), %esi
L330:
	movl	68(%eax), %edi
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L331
L329:
	xorl	%eax, %eax
	cmpl	%esi, %edx
	setb	%al
	addl	$24, %esp
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
L301:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	call	_tdefl_start_dynamic_block
	movl	8(%esp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %ecx
	movl	48(%eax), %edi
L306:
	leal	37490(%eax), %ebp
	cmpl	40(%eax), %ebp
	jnb	L309
L345:
	movl	$1, 12(%esp)
	.p2align 4
	.p2align 3
L328:
	cmpl	$1, 12(%esp)
	jne	L310
	movzbl	0(%ebp), %ebx
	addl	$1, %ebp
	orb	$1, %bh
	movl	%ebx, 12(%esp)
L310:
	movzbl	0(%ebp), %ebx
	movl	%ebx, 8(%esp)
	testb	$1, 12(%esp)
	je	L311
	movzwl	1(%ebp), %esi
	addl	$3, %ebp
	movw	%si, 20(%esp)
	movl	%esi, 16(%esp)
	movzwl	_s_tdefl_len_sym.lto_priv.0(%ebx,%ebx), %esi
	movzbl	36626(%eax,%esi), %ebx
	movzwl	34898(%eax,%esi,2), %esi
	sall	%cl, %esi
	addl	%ebx, %ecx
	orl	%esi, %edx
	movl	%ecx, 68(%eax)
	movl	%edx, 72(%eax)
	cmpl	$7, %ecx
	jbe	L312
	movl	8(%esp), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L314:
	cmpl	52(%eax), %edi
	jnb	L313
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L313:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L314
	movl	%ebx, 8(%esp)
L312:
	movl	8(%esp), %ebx
	movzbl	_s_tdefl_len_extra(%ebx), %esi
	andl	_mz_bitmasks(,%esi,4), %ebx
	addl	%ecx, %esi
	sall	%cl, %ebx
	movl	%esi, 8(%esp)
	orl	%edx, %ebx
	movl	%esi, 68(%eax)
	movl	%ebx, 72(%eax)
	cmpl	$7, %esi
	jbe	L315
	.p2align 6
	.p2align 4
	.p2align 3
L317:
	cmpl	52(%eax), %edi
	jnb	L316
	leal	1(%edi), %edx
	movl	%edx, 48(%eax)
	movb	%bl, (%edi)
	movl	72(%eax), %ebx
	movl	48(%eax), %edi
L316:
	movl	68(%eax), %esi
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L317
	movl	%ecx, 8(%esp)
L315:
	movl	16(%esp), %esi
	cmpw	$511, 20(%esp)
	ja	L318
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%esi), %edx
	movzbl	_s_tdefl_small_dist_extra(%esi), %esi
L319:
	movl	%esi, %ecx
	movzbl	%cl, %esi
	movzbl	36914(%eax,%edx), %ecx
	movzwl	35474(%eax,%edx,2), %edx
	movl	%ecx, 20(%esp)
	movzbl	8(%esp), %ecx
	sall	%cl, %edx
	orl	%edx, %ebx
	movl	8(%esp), %edx
	addl	20(%esp), %edx
	movl	%ebx, 72(%eax)
	movl	%edx, %ecx
	movl	%edx, 68(%eax)
	cmpl	$7, %edx
	jbe	L320
	.p2align 6
	.p2align 4
	.p2align 3
L322:
	cmpl	52(%eax), %edi
	jnb	L321
	leal	1(%edi), %edx
	movl	%edx, 48(%eax)
	movb	%bl, (%edi)
	movl	72(%eax), %ebx
	movl	48(%eax), %edi
L321:
	movl	68(%eax), %edx
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%edx), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L322
L320:
	movl	16(%esp), %edx
	andl	_mz_bitmasks(,%esi,4), %edx
	sall	%cl, %edx
	addl	%esi, %ecx
	orl	%ebx, %edx
	movl	%ecx, 68(%eax)
	movl	%edx, 72(%eax)
	cmpl	$7, %ecx
	jbe	L323
	.p2align 6
	.p2align 4
	.p2align 3
L325:
	cmpl	52(%eax), %edi
	jnb	L324
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L324:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L325
L323:
	shrl	12(%esp)
	cmpl	40(%eax), %ebp
	jb	L328
	jmp	L309
	.p2align 4,,10
	.p2align 3
L311:
	movl	8(%esp), %ebx
	addl	$1, %ebp
	movzbl	36626(%eax,%ebx), %esi
	movzwl	34898(%eax,%ebx,2), %ebx
	sall	%cl, %ebx
	addl	%esi, %ecx
	orl	%ebx, %edx
	movl	%ecx, 68(%eax)
	movl	%edx, 72(%eax)
	cmpl	$7, %ecx
	jbe	L323
	.p2align 6
	.p2align 4
	.p2align 3
L327:
	cmpl	52(%eax), %edi
	jnb	L326
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L326:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L327
	shrl	12(%esp)
	cmpl	40(%eax), %ebp
	jb	L328
	jmp	L309
	.p2align 4,,10
	.p2align 3
L318:
	shrl	$8, %esi
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%esi), %edx
	movzbl	_s_tdefl_large_dist_extra(%esi), %esi
	jmp	L319
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_miniz_def_alloc_func
	.def	_miniz_def_alloc_func;	.scl	2;	.type	32;	.endef
_miniz_def_alloc_func:
LFB12:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %ecx
	movl	20(%esp), %ebx
	imull	16(%esp), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	testl	%eax, %eax
	je	L350
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L350:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	_miniz_def_free_func
	.def	_miniz_def_free_func;	.scl	2;	.type	32;	.endef
_miniz_def_free_func:
LFB13:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.def	__ZL27editorGet2dSideViewDistancess;	.scl	3;	.type	32;	.endef
__ZL27editorGet2dSideViewDistancess:
LFB14:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	%ax, %ecx
	movl	%ebx, 20(%esp)
	cmpw	$16383, %ax
	.cfi_offset 3, -12
	jle	L358
	leal	-16384(%ecx), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ebx
	movl	8(%eax), %eax
L356:
	imull	__ZL13m32_viewplane+4, %ebx
	sarl	$4, %eax
	imull	__ZL13m32_viewplane, %edx
	imull	__ZL13m32_viewplane+8, %eax
	addl	%ebx, %edx
	addl	%eax, %edx
	movl	%edx, __ZL12m32_sidedist(,%ecx,4)
	movl	20(%esp), %ebx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L358:
	.cfi_restore_state
	movl	_wall, %eax
	movl	%ecx, %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -8
	movl	%edx, %esi
	sall	$5, %ebx
	addl	%eax, %ebx
	movswl	8(%ebx), %edx
	sall	$5, %edx
	addl	%edx, %eax
	movl	(%ebx), %edx
	movl	4(%ebx), %ebx
	addl	(%eax), %edx
	addl	4(%eax), %ebx
	movswl	%si, %eax
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	sarl	%edx
	sarl	%ebx
	leal	(%esi,%eax,8), %eax
	testb	$2, 14(%eax)
	je	L359
	movl	%edx, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_getflorzofslopeptr.part.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L356
	.p2align 4,,10
	.p2align 3
L359:
	.cfi_restore_state
	movl	8(%eax), %eax
	movl	24(%esp), %esi
	.cfi_restore 6
	jmp	L356
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC15:
	.ascii "\0"
LC16:
	.ascii " (no anisotropic filtering)\0"
LC17:
	.ascii "OpenGL driver: %s %s\0"
	.align 4
LC18:
	.ascii "source/build/src/baselayer.cpp\0"
LC19:
	.ascii "OpenGL context: version %d.%d\0"
LC20:
	.ascii "supported\0"
LC21:
	.ascii "not supported\0"
LC22:
	.ascii " BGRA textures:           %s\0"
LC23:
	.ascii " Buffer storage:          %s\0"
LC24:
	.ascii " Debug output:            %s\0"
LC25:
	.ascii " Depth textures:          %s\0"
LC26:
	.ascii " Frame buffer objects:    %s\0"
LC27:
	.ascii " GLSL:                    %s\0"
	.align 4
LC29:
	.ascii " Maximum anisotropy:      %.1f%s\0"
	.align 4
LC30:
	.ascii " Maximum texture size:    %dpx\0"
LC31:
	.ascii " Multi-texturing:         %s\0"
LC32:
	.ascii " Non-power-of-2 textures: %s\0"
LC33:
	.ascii " Occlusion queries:       %s\0"
LC34:
	.ascii " Rectangle textures:      %s\0"
LC35:
	.ascii " Reset notifications:     %s\0"
LC36:
	.ascii " Sampler objects:         %s\0"
LC37:
	.ascii " Shadow textures:         %s\0"
LC38:
	.ascii " Sync:                    %s\0"
LC39:
	.ascii " Texture compression:     %s\0"
LC40:
	.ascii " Extensions:\12%s\0"
	.text
	.p2align 4
	.globl	_osdcmd_glinfo
	.def	_osdcmd_glinfo;	.scl	2;	.type	32;	.endef
_osdcmd_glinfo:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-8, %esp
	subl	$36, %esp
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jg	L371
L361:
	movl	_glinfo+24, %eax
	testl	%eax, %eax
	jne	L372
L362:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L372:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$LC20, 28(%esp)
	movl	$LC21, 32(%esp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	notl	%eax
	andl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC22, 12(%esp)
	movl	$724, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC23, 12(%esp)
	movl	$725, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC24, 12(%esp)
	movl	$726, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	shrb	$4, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC25, 12(%esp)
	movl	$727, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC26, 12(%esp)
	movl	$728, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+28, %eax
	shrb	$6, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC27, 12(%esp)
	movl	$729, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movss	_glinfo+16, %xmm0
	comiss	LC28, %xmm0
	movl	$LC16, %edx
	movl	$LC15, %eax
	flds	_glinfo+16
	movl	$LC29, 12(%esp)
	movl	$730, 8(%esp)
	cmovbe	%edx, %eax
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 24(%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movl	_glinfo+20, %eax
	movl	$LC30, 12(%esp)
	movl	$731, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movsbl	_glinfo+28, %eax
	notl	%eax
	shrl	$31, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC31, 12(%esp)
	movl	$732, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movsbl	_glinfo+29, %eax
	notl	%eax
	shrl	$31, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC32, 12(%esp)
	movl	$733, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	notl	%eax
	andl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC33, 12(%esp)
	movl	$734, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	%al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC34, 12(%esp)
	movl	$735, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	$2, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC35, 12(%esp)
	movl	$736, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	$3, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC36, 12(%esp)
	movl	$737, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	$4, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC37, 12(%esp)
	movl	$738, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	$5, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC38, 12(%esp)
	movl	$739, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movzbl	_glinfo+29, %eax
	shrb	$6, %al
	andl	$1, %eax
	xorl	$1, %eax
	movl	28(%esp,%eax,4), %eax
	movl	$LC39, 12(%esp)
	movl	$740, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L362
	movl	_glinfo+12, %eax
	movl	$LC40, 12(%esp)
	movl	$744, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L371:
	.cfi_restore_state
	movl	_glinfo+8, %eax
	movl	$LC17, 12(%esp)
	movl	$712, 8(%esp)
	movl	%eax, 20(%esp)
	movl	_glinfo+4, %eax
	movl	$LC18, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_GLVersion, %eax
	testl	%eax, %eax
	je	L361
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$1, %edx
	jle	L361
	movl	_GLVersion+4, %edx
	movl	%eax, 16(%esp)
	movl	$LC19, 12(%esp)
	movl	%edx, 20(%esp)
	movl	$715, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L361
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC42:
	.ascii "         --- BUCKET LIST ---\0"
	.align 4
LC43:
	.ascii "bucket #%u (%d blocks of %d bytes):\0"
LC44:
	.ascii "cache hit\0"
LC45:
	.ascii "%12s: %u\0"
LC46:
	.ascii "hit\0"
LC47:
	.ascii "miss\0"
LC48:
	.ascii "%12s: %s%u\0"
LC49:
	.ascii "freed\0"
LC50:
	.ascii "in use\0"
LC51:
	.ascii "%12s: %u (%d bytes)\0"
	.align 4
LC52:
	.ascii "%d total bytes in use across %d buckets.\0"
	.text
	.p2align 4
	.globl	__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0
	.def	__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18osdfunc_bucketlistPK13osdfuncparm_t.lto_priv.0:
LFB18:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	%eax, %edx
	cmpl	%eax, %edi
	cmovge	%edi, %edx
	testl	%edx, %edx
	jns	L405
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
	movl	%ecx, 36(%esp)
	testl	%ecx, %ecx
	jle	L395
L389:
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 52(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$0, 40(%esp)
	jmp	L387
	.p2align 4,,10
	.p2align 3
L379:
	testl	%ebp, %ebp
	jne	L406
L381:
	testl	%edx, %edx
	jne	L407
L380:
	addl	%ebx, %ebp
	leal	0(%ebp,%edx), %ebx
	movl	28(%esp), %ebp
	subl	%esi, %ebx
	imull	%ebx, %ebp
	addl	%ebp, 40(%esp)
	testl	%esi, %esi
	jne	L408
L384:
	testl	%ecx, %ecx
	js	L385
	movl	%ebp, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	$LC50, 16(%esp)
	movl	$LC51, 12(%esp)
	movl	$141, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
L385:
	movl	32(%esp), %ebx
	cmpl	36(%esp), %ebx
	jge	L404
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
L387:
	leal	1(%ebx), %esi
	movl	%esi, %ebp
	movl	%esi, 32(%esp)
	sall	$4, %ebp
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	%ebp, 28(%esp)
	testl	%edi, %edi
	js	L376
	xorl	%eax, %eax
	cmpl	%ecx, %ebx
	jnb	L377
	movl	4(%edx), %eax
	xorl	%edx, %edx
	divl	%ebp
L377:
	movl	28(%esp), %edi
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%edi, 24(%esp)
	movl	$LC43, 12(%esp)
	movl	$117, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_g_sm_heap, %edx
	movl	(%edx), %ecx
L376:
	cmpl	%ecx, %ebx
	jnb	L391
	leal	(%ebx,%ebx,4), %eax
	leal	68(%edx,%eax,8), %ebx
	leal	8(%ebx), %edx
	leal	12(%ebx), %eax
	leal	4(%ebx), %ecx
L378:
	movl	(%ebx), %ebx
	movl	(%ecx), %ebp
	movl	(%edx), %edx
	movl	(%eax), %esi
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%ebx, %ebx
	je	L379
	testl	%ecx, %ecx
	js	L380
	movl	%ebx, 20(%esp)
	movl	$LC44, 16(%esp)
	movl	$LC45, 12(%esp)
	movl	$127, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 44(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%ebp, %ebp
	je	L381
	.p2align 4
	.p2align 3
L406:
	testl	%ecx, %ecx
	js	L380
	movl	%ebp, 20(%esp)
	movl	$LC46, 16(%esp)
	movl	$LC45, 12(%esp)
	movl	$130, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 44(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	testl	%edx, %edx
	je	L380
L407:
	testl	%ecx, %ecx
	js	L380
	movl	_osd, %eax
	movl	%edx, 24(%esp)
	movl	%edx, 44(%esp)
	movl	1104(%eax), %eax
	movl	$LC47, 16(%esp)
	movl	$LC48, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$133, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	44(%esp), %edx
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	jmp	L380
	.p2align 4,,10
	.p2align 3
L408:
	testl	%ecx, %ecx
	js	L385
	movl	%esi, 20(%esp)
	movl	$LC49, 16(%esp)
	movl	$LC45, 12(%esp)
	movl	$136, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edi
	movl	%eax, %ecx
	cmovge	%edi, %ecx
	jmp	L384
	.p2align 4,,10
	.p2align 3
L391:
	movl	$4, %ecx
	movl	$12, %eax
	movl	$8, %edx
	xorl	%ebx, %ebx
	jmp	L378
	.p2align 4,,10
	.p2align 3
L404:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %ebp
	.cfi_restore 5
L386:
	testl	%ecx, %ecx
	jns	L409
L395:
	movl	56(%esp), %edi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L409:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	$LC52, 12(%esp)
	movl	$144, 8(%esp)
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	movl	$LC18, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	56(%esp), %edi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L405:
	.cfi_restore_state
	movl	$LC42, 12(%esp)
	movl	$108, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_g_sm_heap, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %edi
	movl	(%edx), %eax
	testl	%eax, %eax
	movl	%eax, 36(%esp)
	movl	%eax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	jg	L389
	cmpl	%eax, %edi
	movl	$0, 40(%esp)
	cmovge	%edi, %eax
	movl	%eax, %ecx
	jmp	L386
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0
	.def	__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16osdfunc_heapinfoPK13osdfuncparm_t.lto_priv.0:
LFB19:
	.cfi_startproc
	xorl	%eax, %eax
	call	_mi_stats_print_out.constprop.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0
	.def	__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZZ18engineSetupLoggingRiPPcENUlRKN6loguru7MessageEE_4_FUNES5_.lto_priv.0:
LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	cmpb	$0, _levelname
	jne	L422
L412:
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L413
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L413
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L414
	call	_mi_free
L414:
	movl	%ebx, %eax
	call	_mi_free
L413:
	movl	$1, (%esp)
	call	_exit
L422:
	call	_app_crashhandler.part.0
	jmp	L412
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC53:
	.ascii "Processing model data. This may take a while...\0"
LC54:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC55:
	.ascii "Failed processing md3model '%s'!\0"
	.align 4
LC56:
	.ascii "Null geometry for md3model '%s'!\0"
	.align 4
LC57:
	.ascii "Rendering method changed to %s.\0"
	.text
	.p2align 4
	.globl	__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0
	.def	__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21osdfunc_setrendermodePK13osdfuncparm_t.lto_priv.0:
LFB32:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	60(%esp), %eax
	movl	(%eax), %edx
	cmpl	$1, %edx
	je	L466
	movl	$1, %edx
L423:
	movl	%edx, %eax
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L466:
	.cfi_restore_state
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%eax), %eax
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, %ecx
	leal	-3(%eax), %eax
	cmpl	$1, %eax
	jbe	L449
	testl	%ecx, %ecx
	movl	20(%esp), %edx
	jne	L423
L449:
	cmpl	_rendmode, %ecx
	je	L426
	testl	%ecx, %ecx
	sete	%dl
	cmpl	$8, _bpp
	sete	%al
	cmpb	%al, %dl
	je	L427
	movl	_baselayer_osdcmd_vidmode_func, %eax
	testl	%eax, %eax
	je	L427
	leal	32(%esp), %edx
	movl	$0, 40(%esp)
	movl	%edx, 28(%esp)
	movl	$0, 48(%esp)
	testl	%ecx, %ecx
	je	L467
	movl	$12851, %edx
	movb	$0, 34(%esp)
	movw	%dx, 32(%esp)
L429:
	leal	28(%esp), %edx
	movl	%ecx, 20(%esp)
	movl	%edx, 44(%esp)
	leal	36(%esp), %edx
	movl	$1, 36(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	20(%esp), %ecx
L427:
	movl	%ecx, 20(%esp)
	call	__Z28buildgl_resetStateAccountingv
	cmpl	$8, _bpp
	je	L468
	cmpl	$4, 20(%esp)
	jne	L436
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L437
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -8
	xorl	%edx, %edx
	jmp	L442
	.p2align 6
	.p2align 4,,10
	.p2align 3
L438:
	addl	$1, %edx
	cmpl	_nextmodelid, %edx
	jge	L469
L442:
	movl	_models, %eax
	leal	0(,%edx,4), %ecx
	movl	(%eax,%edx,4), %eax
	cmpl	$3, (%eax)
	jne	L438
	movl	196(%eax), %ebx
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L438
	movl	__ZZL20PolymerProcessModelsvE6warned, %ebx
	testl	%ebx, %ebx
	je	L470
L439:
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_md3postload_polymer.part.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	testl	%eax, %eax
	jne	L441
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	$-2, %eax
	jl	L438
	movl	_models, %eax
	movl	%edx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	(%eax,%ecx), %eax
	movl	$LC55, 12(%esp)
	movl	$14958, 8(%esp)
	addl	$88, %eax
	movl	$LC54, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
L441:
	movl	_models, %eax
	movl	(%eax,%ecx), %eax
	movl	196(%eax), %ecx
	movl	124(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L438
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	$-2, %ecx
	jl	L438
	addl	$88, %eax
	movl	$LC56, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$14961, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	$-2, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L438
	.p2align 4,,10
	.p2align 3
L468:
	.cfi_restore 3
	cmpb	$0, _nogl
	je	L471
L431:
	cmpl	$4, _rendmode
	je	L434
L465:
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$0, _rendmode
L445:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L426
	movl	_rendmode, %eax
	movl	$LC57, 12(%esp)
	movl	$683, 8(%esp)
	movl	__ZZL21osdfunc_setrendermodePK13osdfuncparm_tE5modes(,%eax,4), %eax
	movl	$LC18, 4(%esp)
	movl	$2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L426:
	xorl	%edx, %edx
	addl	$56, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L469:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -8
	movl	52(%esp), %ebx
	.cfi_restore 3
L437:
	call	_polymer_init
	testl	%eax, %eax
	je	L443
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$4, _rendmode
	movl	$4, _glrendmode
	jmp	L445
	.p2align 4,,10
	.p2align 3
L436:
	cmpl	$4, _rendmode
	je	L472
L443:
	movb	$0, _inpreparemirror
	movb	$1, _basepalreset
	movl	$3, _rendmode
	movl	$3, _glrendmode
	movl	$-1, __ZL11lastbasepal.lto_priv.0
	call	__Z19polymost_resetStatev
	jmp	L445
	.p2align 4,,10
	.p2align 3
L467:
	movl	$56, %edx
	movw	%dx, 32(%esp)
	jmp	L429
	.p2align 4,,10
	.p2align 3
L471:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L432
	movl	$3042, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 56
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	$1, (%esp)
	call	_inthash_add
L432:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L431
	movl	$3008, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 56
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	$1, (%esp)
	call	_inthash_add
	cmpl	$4, _rendmode
	jne	L465
L434:
	call	_engineClearLightsFromMHK
	call	_polymer_uninit
	jmp	L465
	.p2align 4,,10
	.p2align 3
L470:
	.cfi_offset 3, -8
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	testl	%eax, %eax
	js	L440
	movl	$LC53, 12(%esp)
	movl	$14952, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	$0, (%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %ecx
	movl	20(%esp), %edx
L440:
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_videoNextPage
	movl	_models, %eax
	movl	24(%esp), %ecx
	movl	$1, __ZZL20PolymerProcessModelsvE6warned
	movl	20(%esp), %edx
	movl	(%eax,%ecx), %eax
	movl	196(%eax), %ebx
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L438
	jmp	L439
	.p2align 4,,10
	.p2align 3
L472:
	.cfi_restore 3
	call	_engineClearLightsFromMHK
	call	_polymer_uninit
	jmp	L443
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
	.align 4
LC58:
	.ascii "r_displayindex: change video display.\0"
LC59:
	.ascii "Detected displays:\0"
LC60:
	.ascii " %s\0"
LC61:
	.ascii "%s %d\0"
	.text
	.p2align 4
	.globl	__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0
	.def	__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19osdcmd_displayindexPK13osdfuncparm_t.lto_priv.0:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$28, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %ebx
	cmpl	$1, (%ebx)
	jne	L474
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strtol
	cmpl	_g_numdisplays, %eax
	jb	L484
L474:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L485
L477:
	movl	_g_numdisplays, %eax
	testl	%eax, %eax
	jle	L478
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L480:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L479
	movl	%ebx, (%esp)
	call	_SDL_GetDisplayName
	movl	$LC60, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$760, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L479:
	addl	$1, %ebx
	cmpl	%ebx, _g_numdisplays
	jg	L480
L478:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L485:
	.cfi_restore_state
	movl	$LC58, 12(%esp)
	movl	$756, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L477
	movl	$LC59, 12(%esp)
	movl	$757, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L477
	.p2align 4,,10
	.p2align 3
L484:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L486
L475:
	movl	%eax, _r_displayindex
	movl	$0, 36(%esp)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17osdcmd_restartvidPK13osdfuncparm_t
	.p2align 4,,10
	.p2align 3
L486:
	.cfi_restore_state
	movl	%eax, 20(%esp)
	movl	4(%ebx), %edx
	movl	$LC61, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$765, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 24(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %eax
	jmp	L475
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0
	.def	__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17osdfunc_cacheinfoPK13osdfuncparm_t.lto_priv.0:
LFB44:
	.cfi_startproc
	call	__ZN7cache1d6reportEv.constprop.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE44:
	.section .rdata,"dr"
LC62:
	.ascii "vid_gamma\0"
LC63:
	.ascii "vid_contrast\0"
LC64:
	.ascii "vid_saturation\0"
LC68:
	.ascii "r_maxfps\0"
	.text
	.p2align 4
	.globl	__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0
	.def	__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25osdcmd_cvar_set_baselayerPK13osdfuncparm_t.lto_priv.0:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ebx
	movl	%ebx, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	4(%ebx), %ebx
	movl	$LC62, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L489
	movl	$LC63, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L489
	movl	$LC64, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L489
	movl	$LC68, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L509
	movl	_r_maxfps, %ecx
	testl	%ecx, %ecx
	jle	L494
	movl	$1000, %eax
	movl	$30, %edx
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, _r_maxfps
	cltd
L495:
	movl	%eax, 8(%esp)
	movl	$10000, %eax
	movl	%edx, 12(%esp)
	imull	__ZL19clockTicksPerSecond.lto_priv.0
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.4
	movl	-4(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L489:
	.cfi_restore_state
	movss	_g_videoGamma, %xmm0
	xorps	%xmm2, %xmm2
	subss	LC28, %xmm0
	mulss	LC65, %xmm0
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	movss	LC67, %xmm2
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movzbl	%al, %eax
	call	_videoSetPalette.constprop.0
L509:
	movl	-4(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L494:
	.cfi_restore_state
	cmpl	$-1, %ecx
	je	L496
	movl	$1000, %eax
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	L495
	cmpl	$-2, %ecx
	je	L509
	movl	%ecx, %eax
	cltd
	jmp	L495
	.p2align 4,,10
	.p2align 3
L496:
	fnstcw	22(%esp)
	fldl	_refreshfreq
	movzwl	22(%esp), %eax
	orb	$12, %ah
	movw	%ax, 20(%esp)
	fldcw	20(%esp)
	fistpl	16(%esp)
	fldcw	22(%esp)
	movl	16(%esp), %eax
	cltd
	jmp	L495
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC69:
	.ascii "\15\12\0"
	.text
	.p2align 4
	.globl	_startwin_puts.isra.0
	.def	_startwin_puts.isra.0;	.scl	2;	.type	32;	.endef
_startwin_puts.isra.0:
LFB51:
	.cfi_startproc
	movl	__ZL10startupdlg.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L541
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	__ZL5pages.lto_priv.0+4, %esi
	testl	%esi, %esi
	je	L511
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	__ZZ13startwin_putsE6dactrl, %eax
	movl	%ebx, 28(%esp)
	movl	%edi, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	testl	%eax, %eax
	je	L547
L513:
	movl	$0, 12(%esp)
	movl	__imp__SendMessageA@16, %edi
	movl	$0, 8(%esp)
	movl	$4875, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	cmpl	$1, %eax
	je	L548
	movl	$14, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$177, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$186, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 20(%esp)
	cmpb	$0, 0(%ebp)
	je	L549
L525:
	movl	%esi, 16(%esp)
	movl	%ebx, 24(%esp)
	movl	%ebp, %ebx
	.p2align 4
	.p2align 3
L523:
	movl	__ZZ13startwin_putsE7newline, %eax
	testl	%eax, %eax
	jne	L550
	movzbl	(%ebx), %eax
	movl	%ebx, %ebp
	testb	%al, %al
	jne	L517
	jmp	L551
	.p2align 4
	.p2align 4,,10
	.p2align 3
L519:
	movzbl	1(%ebp), %eax
	addl	$1, %ebp
	testb	%al, %al
	je	L545
L517:
	cmpb	$10, %al
	jne	L519
L545:
	movl	%ebp, %esi
	subl	%ebx, %esi
	movl	%esi, %eax
L518:
	movl	%ebx, 4(%esp)
	movl	%ebp, %ebx
	movl	%eax, 8(%esp)
	movl	$__ZZ13startwin_putsE7workbuf, (%esp)
	call	_memcpy
	xorl	%eax, %eax
	cmpb	$10, 0(%ebp)
	je	L552
L520:
	movb	%al, __ZZ13startwin_putsE7workbuf(%esi)
	movl	16(%esp), %eax
	movl	$__ZZ13startwin_putsE7workbuf, 12(%esp)
	movl	$0, 8(%esp)
	movl	$194, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpb	$0, (%ebx)
	jne	L523
	movl	16(%esp), %esi
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	24(%esp), %ebx
	movl	$186, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	subl	20(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$182, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$1, %ebx
	je	L524
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L511:
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L552:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	1(%ebp), %eax
	testb	%al, %al
	jne	L521
	movl	$1, __ZZ13startwin_putsE7newline
L522:
	leal	1(%ebp), %ebx
	jmp	L520
	.p2align 4,,10
	.p2align 3
L550:
	movl	16(%esp), %eax
	movl	$LC69, 12(%esp)
	movl	%ebx, %ebp
	movl	$0, 8(%esp)
	movl	$194, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	movzbl	(%ebx), %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, __ZZ13startwin_putsE7newline
	testb	%al, %al
	jne	L517
L551:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	L518
	.p2align 4,,10
	.p2align 3
L521:
	movl	$10, %eax
	movw	%ax, __ZZ13startwin_putsE7workbuf+1(%esi)
	movl	$13, %eax
	jmp	L522
L548:
	movl	$11, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$14, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$177, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$186, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 20(%esp)
	cmpb	$0, 0(%ebp)
	jne	L525
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$186, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	subl	20(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$182, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L524:
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$11, 4(%esp)
L546:
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L549:
	.cfi_restore_state
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$186, 4(%esp)
	movl	%esi, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	subl	20(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$182, 4(%esp)
	jmp	L546
L541:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
L547:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$101, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp__GetDlgItem@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, __ZZ13startwin_putsE6dactrl
	jmp	L513
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_LZ4_compress_fast.constprop.0
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
_LZ4_compress_fast.constprop.0:
LFB53:
	.cfi_startproc
	pushl	%eax
	.cfi_def_cfa_offset 8
	movl	$16480, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 16488
	movl	(%esp,%eax), %eax
	movl	%edi, 16476(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	leal	52(%esp), %eax
	movl	$16404, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, 16468(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%edx, 20(%esp)
	call	_memset
	cmpl	$2113929216, %ebx
	ja	L554
	movl	$-2139062143, %eax
	mull	%ebx
	shrl	$7, %edx
	leal	16(%ebx,%edx), %eax
	cmpl	%eax, 16488(%esp)
	jl	L555
	cmpl	$65546, %ebx
	jle	L556
	movl	%esi, 16472(%esp)
	.cfi_offset 6, -16
	leal	(%edi,%ebx), %esi
	movl	%ebp, 16480(%esp)
	imull	$-1640531535, (%edi), %eax
	movl	%esi, 40(%esp)
	subl	$11, %esi
	movl	%esi, 12(%esp)
	shrl	$20, %eax
	leal	52(%esp,%eax,4), %eax
	cmpl	$65535, %edi
	.cfi_offset 5, -8
	jbe	L844
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$1, 16448(%esp)
	movl	$1, 32(%esp)
	movl	%edi, (%eax)
L743:
	imull	$-1640531535, 1(%edi), %eax
	movl	20(%esp), %esi
	leal	1(%edi), %ebp
	movl	%edi, %ecx
	leal	2(%edi), %edx
	movl	%esi, 36(%esp)
	shrl	$20, %eax
	cmpl	$1, 32(%esp)
	je	L603
L646:
	cmpl	%edx, 12(%esp)
	jb	L605
	movl	%ebp, %esi
	leal	52(%esp,%eax,4), %ebx
	movl	%edi, 24(%esp)
	subl	%edi, %esi
	movl	%ecx, 28(%esp)
	movl	(%ebx), %eax
	movl	$65, %edi
	movl	$1, 16(%esp)
	jmp	L606
	.p2align 4,,10
	.p2align 3
L846:
	addl	$1, %edi
	movl	%ecx, %edx
L606:
	movl	%esi, (%ebx)
	leal	65535(%eax), %ebx
	movl	(%edx), %ecx
	cmpl	%esi, %ebx
	jb	L612
	addl	24(%esp), %eax
	movl	0(%ebp), %esi
	cmpl	%esi, (%eax)
	je	L845
L612:
	imull	$-1640531535, %ecx, %ecx
	movl	%edi, %ebp
	movl	%edx, %esi
	subl	24(%esp), %esi
	sarl	$6, %ebp
	shrl	$20, %ecx
	leal	52(%esp,%ecx,4), %ebx
	movl	16(%esp), %ecx
	movl	%ebp, 16(%esp)
	movl	%edx, %ebp
	movl	(%ebx), %eax
	addl	%edx, %ecx
	cmpl	%ecx, 12(%esp)
	jnb	L846
	movl	28(%esp), %ecx
L605:
	movl	40(%esp), %esi
	movl	36(%esp), %edi
	subl	%ecx, %esi
	leal	1(%edi), %ebx
	cmpl	$14, %esi
	jbe	L647
	leal	-15(%esi), %eax
	movb	$-16, (%edi)
	cmpl	$254, %eax
	jbe	L648
	.p2align 5
	.p2align 4
	.p2align 3
L649:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L649
L648:
	movb	%al, (%ebx)
	addl	$1, %ebx
L650:
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
L838:
	call	_memcpy
	leal	(%esi,%ebx), %eax
	movl	16480(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	subl	20(%esp), %eax
	movl	16472(%esp), %esi
	.cfi_restore 6
	jmp	L553
	.p2align 4,,10
	.p2align 3
L830:
	.cfi_restore_state
	movl	16472(%esp), %esi
	.cfi_restore 6
	movl	16480(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L554:
	xorl	%eax, %eax
L553:
	movl	16468(%esp), %ebx
	movl	16476(%esp), %edi
	addl	$16484, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L555:
	.cfi_restore_state
	cmpl	$65546, %ebx
	jle	L559
	movl	20(%esp), %eax
	addl	16488(%esp), %eax
	movl	%esi, 16472(%esp)
	.cfi_offset 6, -16
	leal	(%edi,%ebx), %esi
	movl	%ebp, 16480(%esp)
	movl	%eax, 28(%esp)
	imull	$-1640531535, (%edi), %eax
	movl	%esi, 44(%esp)
	subl	$11, %esi
	movl	%esi, 12(%esp)
	shrl	$20, %eax
	leal	52(%esp,%eax,4), %eax
	cmpl	$65535, %edi
	.cfi_offset 5, -8
	jbe	L847
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$1, 16448(%esp)
	movl	$1, 32(%esp)
	movl	%edi, (%eax)
L744:
	movl	20(%esp), %esi
	movl	%edi, 40(%esp)
	leal	1(%edi), %ebp
	leal	2(%edi), %eax
	imull	$-1640531535, 1(%edi), %edx
	movl	%esi, 36(%esp)
	shrl	$20, %edx
	cmpl	$1, 32(%esp)
	je	L693
L738:
	cmpl	%eax, 12(%esp)
	jb	L697
	movl	%ebp, %esi
	leal	52(%esp,%edx,4), %ebx
	movl	%edi, 24(%esp)
	subl	%edi, %esi
	movl	$1, 16(%esp)
	movl	(%ebx), %ecx
	movl	$65, %edi
	jmp	L695
	.p2align 4,,10
	.p2align 3
L849:
	addl	$1, %edi
	movl	%edx, %eax
L695:
	movl	%esi, (%ebx)
	leal	65535(%ecx), %ebx
	movl	(%eax), %edx
	cmpl	%esi, %ebx
	jb	L701
	addl	24(%esp), %ecx
	movl	0(%ebp), %esi
	cmpl	%esi, (%ecx)
	je	L848
L701:
	imull	$-1640531535, %edx, %edx
	movl	%edi, %ebp
	movl	%eax, %esi
	subl	24(%esp), %esi
	sarl	$6, %ebp
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %ebx
	movl	16(%esp), %edx
	movl	%ebp, 16(%esp)
	movl	%eax, %ebp
	movl	(%ebx), %ecx
	addl	%eax, %edx
	cmpl	%edx, 12(%esp)
	jnb	L849
L697:
	movl	44(%esp), %ebx
	subl	40(%esp), %ebx
	movl	$-2139062143, %ecx
	leal	240(%ebx), %eax
	movl	36(%esp), %esi
	mull	%ecx
	shrl	$7, %edx
	leal	1(%ebx,%edx), %eax
	addl	%esi, %eax
	cmpl	%eax, 28(%esp)
	jb	L830
	movl	%esi, %edi
	leal	1(%esi), %esi
	cmpl	$14, %ebx
	jbe	L739
	leal	-15(%ebx), %eax
	movb	$-16, (%edi)
	cmpl	$254, %eax
	jbe	L740
	.p2align 5
	.p2align 4
	.p2align 3
L741:
	subl	$255, %eax
	addl	$1, %esi
	movb	$-1, -1(%esi)
	cmpl	$254, %eax
	ja	L741
L740:
	movb	%al, (%esi)
	addl	$1, %esi
	jmp	L742
	.p2align 4,,10
	.p2align 3
L556:
	.cfi_restore 5
	.cfi_restore 6
	testl	%ebx, %ebx
	je	L652
	movl	%esi, 16472(%esp)
	movl	%ebp, 16480(%esp)
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$3, 16448(%esp)
	cmpl	$12, %ebx
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	jle	L564
	imull	$-1640531535, 1(%edi), %edx
	leal	(%edi,%ebx), %eax
	xorl	%ebx, %ebx
	leal	-11(%eax), %esi
	movl	%eax, 36(%esp)
	subl	$5, %eax
	movl	%esi, 12(%esp)
	movl	20(%esp), %esi
	movl	%eax, 40(%esp)
	imull	$-1640531535, (%edi), %eax
	shrl	$19, %edx
	movl	%esi, 28(%esp)
	shrl	$19, %eax
	movw	%bx, 52(%esp,%eax,2)
	leal	1(%edi), %eax
	movl	%edi, %ebx
L598:
	movl	%ebx, 32(%esp)
	movl	$64, %ecx
	movl	%edx, %ebx
	movl	$1, 16(%esp)
	jmp	L567
	.p2align 6
	.p2align 4,,10
	.p2align 3
L565:
	leal	52(%esp,%ebx,2), %esi
	movl	%ecx, %ebx
	movzwl	(%esi), %edx
	sarl	$6, %ebx
	movl	%ebx, 16(%esp)
	imull	$-1640531535, (%eax), %ebx
	addl	%edi, %edx
	movl	%edx, 24(%esp)
	movl	%ebp, %edx
	subl	%edi, %edx
	shrl	$19, %ebx
	movw	%dx, (%esi)
	movl	24(%esp), %edx
	movl	0(%ebp), %esi
	cmpl	%esi, (%edx)
	je	L850
	addl	$1, %ecx
L567:
	movl	%eax, %ebp
	addl	16(%esp), %eax
	cmpl	%eax, 12(%esp)
	jnb	L565
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
	subl	%esi, %ebx
L566:
	movl	28(%esp), %edi
	leal	1(%edi), %eax
	cmpl	$14, %ebx
	jbe	L746
	leal	-15(%ebx), %edx
	movb	$-16, (%edi)
	cmpl	$254, %edx
	jbe	L600
	.p2align 5
	.p2align 4
	.p2align 3
L601:
	subl	$255, %edx
	addl	$1, %eax
	movb	$-1, -1(%eax)
	cmpl	$254, %edx
	ja	L601
L600:
	movb	%dl, (%eax)
	leal	1(%eax), %ebp
L602:
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ebx, 8(%esp)
	call	_memcpy
	leal	0(%ebp,%ebx), %eax
	movl	16472(%esp), %esi
	.cfi_restore 6
	movl	16480(%esp), %ebp
	.cfi_restore 5
	subl	20(%esp), %eax
	jmp	L553
	.p2align 4,,10
	.p2align 3
L559:
	testl	%ebx, %ebx
	jne	L651
	movl	16488(%esp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	L553
L652:
	movl	20(%esp), %eax
	movb	$0, (%eax)
	movl	$1, %eax
	jmp	L553
	.p2align 4,,10
	.p2align 3
L854:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	16(%esp), %ecx
	movl	24(%esp), %edi
L610:
	movl	40(%esp), %esi
	subl	$5, %esi
	movl	%esi, 44(%esp)
L842:
	cmpl	%eax, %edi
	jb	L851
L614:
	movl	36(%esp), %ebx
	movl	%ebp, %esi
	subl	%ecx, %esi
	addl	$1, %ebx
	movl	%ebx, 16(%esp)
	cmpl	$14, %esi
	ja	L852
	movl	36(%esp), %edx
	movl	%esi, %ebx
	sall	$4, %ebx
	movb	%bl, (%edx)
L621:
	movl	16(%esp), %edx
	addl	%edx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L622:
	movl	(%ecx), %ebx
	addl	$8, %edx
	addl	$8, %ecx
	movl	%ebx, -8(%edx)
	movl	-4(%ecx), %ebx
	movl	%ebx, -4(%edx)
	cmpl	%esi, %edx
	jb	L622
	movl	40(%esp), %ebx
	movl	%esi, 16(%esp)
	movl	%edi, 28(%esp)
	movl	36(%esp), %esi
	subl	$8, %ebx
	movl	%ebx, 24(%esp)
	jmp	L623
	.p2align 4,,10
	.p2align 3
L641:
	movl	28(%esp), %edi
	subl	%edi, %eax
	movl	%eax, (%ebx)
	movl	%ebp, %ebx
	movl	(%edx), %eax
	subl	%edi, %ebx
	movl	%ebx, (%edx)
	leal	65535(%eax), %edx
	cmpl	%ebx, %edx
	jb	L832
	movl	28(%esp), %edi
	addl	%edi, %eax
	cmpl	%ecx, (%eax)
	jne	L832
L624:
	leal	1(%esi), %edi
	movb	$0, (%esi)
	movl	%edi, 16(%esp)
L623:
	movl	16(%esp), %edi
	movl	%ebp, %edx
	leal	4(%ebp), %ebx
	subl	%eax, %edx
	movw	%dx, (%edi)
	leal	2(%edi), %ecx
	cmpl	24(%esp), %ebx
	jnb	L625
	movl	4(%eax), %edx
	movl	4(%ebp), %edi
	cmpl	%edi, %edx
	je	L853
	xorl	%edi, %edx
	xorl	%ebx, %ebx
	rep bsfl	%edx, %ebx
	shrl	$3, %ebx
	movl	%ebx, %edx
	leal	4(%ebp,%ebx), %ebp
L629:
	addb	%dl, (%esi)
	movl	%ecx, %esi
L640:
	cmpl	12(%esp), %ebp
	jnb	L748
	imull	$-1640531535, -2(%ebp), %edx
	movl	0(%ebp), %ecx
	leal	-2(%ebp), %eax
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %ebx
	imull	$-1640531535, %ecx, %edx
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %edx
	cmpl	$1, 32(%esp)
	jne	L641
	movl	%eax, (%ebx)
	movl	(%edx), %eax
	movl	%ebp, (%edx)
	leal	65535(%eax), %edx
	cmpl	%ebp, %edx
	jb	L833
	cmpl	%ecx, (%eax)
	je	L624
L833:
	imull	$-1640531535, 1(%ebp), %eax
	movl	%esi, 36(%esp)
	leal	2(%ebp), %edx
	movl	%ebp, %ecx
	movl	28(%esp), %edi
	addl	$1, %ebp
	shrl	$20, %eax
	.p2align 4
	.p2align 3
L603:
	cmpl	%edx, 12(%esp)
	jb	L605
	movl	%ecx, 16(%esp)
	movl	$65, %esi
	movl	%eax, %ecx
	movl	%edi, 24(%esp)
	movl	$1, %edi
	jmp	L608
	.p2align 6
	.p2align 4,,10
	.p2align 3
L609:
	imull	$-1640531535, %ecx, %ecx
	leal	(%edx,%edi), %eax
	movl	%esi, %edi
	movl	%edx, %ebp
	sarl	$6, %edi
	shrl	$20, %ecx
	cmpl	%eax, 12(%esp)
	jb	L813
	addl	$1, %esi
	movl	%eax, %edx
L608:
	leal	52(%esp,%ecx,4), %ebx
	movl	(%edx), %ecx
	movl	(%ebx), %eax
	movl	%ebp, (%ebx)
	leal	65535(%eax), %ebx
	cmpl	%ebp, %ebx
	jb	L609
	movl	0(%ebp), %ebx
	cmpl	%ebx, (%eax)
	jne	L609
	jmp	L854
	.p2align 4,,10
	.p2align 3
L857:
	movl	%eax, (%edx)
	movl	(%ebx), %ecx
	movl	%ebp, (%ebx)
	leal	65535(%ecx), %eax
	cmpl	%ebp, %eax
	jb	L736
	cmpl	%esi, (%ecx)
	je	L837
L736:
	imull	$-1640531535, 1(%ebp), %edx
	movl	%edi, 36(%esp)
	leal	2(%ebp), %eax
	movl	40(%esp), %edi
	movl	%ebp, 40(%esp)
	addl	$1, %ebp
	shrl	$20, %edx
	.p2align 4
	.p2align 3
L693:
	movl	$65, %esi
	cmpl	%eax, 12(%esp)
	jb	L697
	movl	%edi, 16(%esp)
	movl	$1, %edi
	jmp	L696
	.p2align 6
	.p2align 4,,10
	.p2align 3
L699:
	imull	$-1640531535, %edx, %edx
	leal	(%eax,%edi), %ecx
	movl	%esi, %edi
	movl	%eax, %ebp
	sarl	$6, %edi
	shrl	$20, %edx
	cmpl	%ecx, 12(%esp)
	jb	L697
	addl	$1, %esi
	movl	%ecx, %eax
L696:
	leal	52(%esp,%edx,4), %ebx
	movl	(%eax), %edx
	movl	(%ebx), %ecx
	movl	%ebp, (%ebx)
	leal	65535(%ecx), %ebx
	cmpl	%ebp, %ebx
	jb	L699
	movl	0(%ebp), %ebx
	cmpl	%ebx, (%ecx)
	jne	L699
	movl	16(%esp), %edi
L700:
	cmpl	%ecx, %edi
	jnb	L703
	movzbl	-1(%ecx), %eax
	cmpb	%al, -1(%ebp)
	je	L855
L703:
	movl	36(%esp), %eax
	movl	%ebp, %esi
	subl	40(%esp), %esi
	leal	1(%eax), %ebx
	movl	$-2139062143, %eax
	mull	%esi
	shrl	$7, %edx
	leal	8(%esi,%edx), %eax
	addl	%ebx, %eax
	cmpl	%eax, 28(%esp)
	jb	L830
	movl	44(%esp), %eax
	subl	$5, %eax
	movl	%eax, 48(%esp)
	cmpl	$14, %esi
	ja	L856
	movl	36(%esp), %edx
	movl	%esi, %eax
	sall	$4, %eax
	movb	%al, (%edx)
L710:
	movl	40(%esp), %eax
	addl	%ebx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L711:
	movl	(%eax), %edx
	addl	$8, %ebx
	addl	$8, %eax
	movl	%edx, -8(%ebx)
	movl	-4(%eax), %edx
	movl	%edx, -4(%ebx)
	cmpl	%esi, %ebx
	jb	L711
	movl	44(%esp), %eax
	movl	%edi, 40(%esp)
	movl	36(%esp), %edi
	subl	$8, %eax
	movl	%eax, 16(%esp)
	jmp	L712
	.p2align 4,,10
	.p2align 3
L715:
	addl	$8, %esi
	cmpl	%esi, 28(%esp)
	jb	L830
	xorl	%edx, %eax
	xorl	%ecx, %ecx
	rep bsfl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%ebp,%ecx), %ebp
L727:
	addb	%cl, (%edi)
	movl	%ebx, %edi
L730:
	cmpl	12(%esp), %ebp
	jnb	L754
	movl	0(%ebp), %esi
	imull	$-1640531535, -2(%ebp), %edx
	leal	-2(%ebp), %eax
	imull	$-1640531535, %esi, %ecx
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %edx
	shrl	$20, %ecx
	leal	52(%esp,%ecx,4), %ebx
	cmpl	$1, 32(%esp)
	je	L857
	movl	40(%esp), %ecx
	subl	%ecx, %eax
	movl	%eax, (%edx)
	movl	(%ebx), %edx
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	65535(%edx), %ecx
	movl	%eax, (%ebx)
	cmpl	%eax, %ecx
	jb	L737
	movl	40(%esp), %eax
	leal	(%eax,%edx), %ecx
	cmpl	%esi, (%ecx)
	jne	L737
L837:
L713:
	movb	$0, (%edi)
	leal	1(%edi), %esi
L712:
	movl	%ebp, %eax
	leal	2(%esi), %ebx
	subl	%ecx, %eax
	movw	%ax, (%esi)
	leal	4(%ebp), %eax
	movl	%eax, 24(%esp)
	cmpl	16(%esp), %eax
	jnb	L714
	movl	4(%ecx), %eax
	movl	4(%ebp), %edx
	cmpl	%edx, %eax
	jne	L715
	leal	8(%ecx), %eax
	leal	8(%ebp), %edx
	movl	%eax, 36(%esp)
	cmpl	16(%esp), %edx
	jnb	L717
L716:
	movl	36(%esp), %eax
	movl	(%edx), %ecx
	movl	(%eax), %eax
	cmpl	%ecx, %eax
	je	L858
	xorl	%ecx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	leal	(%edx,%eax), %ecx
	subl	24(%esp), %ecx
L720:
	movl	$-2139062143, %eax
	leal	240(%ecx), %edx
	mull	%edx
	shrl	$7, %edx
	leal	6(%ebx,%edx), %eax
	cmpl	%eax, 28(%esp)
	jb	L830
	leal	4(%ebp,%ecx), %ebp
	cmpl	$14, %ecx
	jbe	L727
	subl	$15, %ecx
	addb	$15, (%edi)
	movl	$-1, 2(%esi)
	cmpl	$1019, %ecx
	jbe	L728
	.p2align 5
	.p2align 4
	.p2align 3
L729:
	subl	$1020, %ecx
	addl	$4, %ebx
	movl	$-1, (%ebx)
	cmpl	$1019, %ecx
	ja	L729
L728:
	movl	$-2139062143, %eax
	mull	%ecx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ebx,%edx), %edi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movb	%cl, (%ebx,%edx)
	jmp	L730
	.p2align 4,,10
	.p2align 3
L844:
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$2, 16448(%esp)
	movl	$2, 32(%esp)
	movl	$0, (%eax)
	jmp	L743
	.p2align 4,,10
	.p2align 3
L847:
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$2, 16448(%esp)
	movl	$2, 32(%esp)
	movl	$0, (%eax)
	jmp	L744
	.p2align 4,,10
	.p2align 3
L647:
	movl	36(%esp), %edi
	movl	%esi, %eax
	sall	$4, %eax
	movb	%al, (%edi)
	jmp	L650
	.p2align 4,,10
	.p2align 3
L651:
	.cfi_restore 5
	.cfi_restore 6
	movl	%esi, 16472(%esp)
	movl	16488(%esp), %eax
	.cfi_offset 6, -16
	movl	20(%esp), %esi
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$3, 16448(%esp)
	addl	%esi, %eax
	movl	%eax, 32(%esp)
	cmpl	$12, %ebx
	jle	L750
	leal	(%edi,%ebx), %eax
	movl	%ebp, 16480(%esp)
	.cfi_offset 5, -8
	xorl	%edx, %edx
	leal	-11(%eax), %ebx
	movl	%eax, 44(%esp)
	subl	$5, %eax
	movl	%eax, 48(%esp)
	imull	$-1640531535, (%edi), %eax
	movl	%ebx, 24(%esp)
	movl	%esi, 36(%esp)
	shrl	$19, %eax
	movl	%edi, 40(%esp)
	movw	%dx, 52(%esp,%eax,2)
	imull	$-1640531535, 1(%edi), %edx
	leal	1(%edi), %eax
	movl	%edi, 28(%esp)
	shrl	$19, %edx
L688:
	movl	$64, 12(%esp)
	movl	$1, %ebp
	jmp	L655
	.p2align 4,,10
	.p2align 3
L654:
	leal	52(%esp,%edx,2), %esi
	movl	28(%esp), %ebx
	movl	12(%esp), %ebp
	movzwl	(%esi), %ecx
	imull	$-1640531535, (%eax), %edx
	sarl	$6, %ebp
	addl	%ebx, %ecx
	movl	%ecx, 16(%esp)
	movl	%edi, %ecx
	shrl	$19, %edx
	subl	%ebx, %ecx
	movw	%cx, (%esi)
	movl	16(%esp), %ecx
	movl	(%edi), %esi
	cmpl	%esi, (%ecx)
	je	L859
	movl	12(%esp), %esi
	addl	$1, %esi
	movl	%esi, 12(%esp)
L655:
	movl	%eax, %edi
	addl	%ebp, %eax
	cmpl	%eax, 24(%esp)
	jnb	L654
	movl	44(%esp), %ebx
	movl	40(%esp), %edi
	movl	16480(%esp), %ebp
	.cfi_restore 5
	subl	%edi, %ebx
L653:
	leal	240(%ebx), %eax
	movl	$-2139062143, %ecx
	movl	36(%esp), %esi
	mull	%ecx
	shrl	$7, %edx
	leal	1(%ebx,%edx), %eax
	addl	%esi, %eax
	cmpl	%eax, 32(%esp)
	jb	L827
	movl	%esi, %ecx
	leal	1(%esi), %esi
	cmpl	$14, %ebx
	jbe	L689
	leal	-15(%ebx), %eax
	movb	$-16, (%ecx)
	cmpl	$254, %eax
	jbe	L690
	.p2align 5
	.p2align 4
	.p2align 3
L691:
	subl	$255, %eax
	addl	$1, %esi
	movb	$-1, -1(%esi)
	cmpl	$254, %eax
	ja	L691
L690:
	movb	%al, (%esi)
	addl	$1, %esi
L692:
	movl	%esi, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
	leal	(%esi,%ebx), %eax
	movl	16472(%esp), %esi
	.cfi_restore 6
	subl	20(%esp), %eax
	jmp	L553
	.p2align 4,,10
	.p2align 3
L739:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	36(%esp), %edi
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%edi)
L742:
	movl	40(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	jmp	L838
	.p2align 4,,10
	.p2align 3
L851:
	movzbl	-1(%eax), %ebx
	cmpb	%bl, -1(%ebp)
	jne	L614
	subl	$1, %ebp
	subl	$1, %eax
	cmpl	%ebp, %ecx
	jb	L842
	jmp	L614
	.p2align 4,,10
	.p2align 3
L852:
	movl	36(%esp), %edx
	leal	-15(%esi), %ebx
	movb	$-16, (%edx)
	cmpl	$254, %ebx
	jbe	L619
	movl	16(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L620:
	subl	$255, %ebx
	addl	$1, %edx
	movb	$-1, -1(%edx)
	cmpl	$254, %ebx
	ja	L620
	movl	%edx, 16(%esp)
L619:
	movl	16(%esp), %edx
	movb	%bl, (%edx)
	leal	1(%edx), %ebx
	movl	%ebx, 16(%esp)
	jmp	L621
	.p2align 4,,10
	.p2align 3
L853:
	addl	$8, %eax
	leal	8(%ebp), %edi
	movl	%eax, 36(%esp)
	cmpl	24(%esp), %edi
	jnb	L628
L627:
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	(%edi), %eax
	cmpl	%eax, %edx
	je	L860
	xorl	%eax, %edx
	rep bsfl	%edx, %edx
	shrl	$3, %edx
	addl	%edi, %edx
	subl	%ebx, %edx
L631:
	leal	4(%ebp,%edx), %ebp
	cmpl	$14, %edx
	jbe	L629
	movl	16(%esp), %eax
	leal	-15(%edx), %ebx
	addb	$15, (%esi)
	movl	$-1, 2(%eax)
	cmpl	$1019, %ebx
	jbe	L638
	.p2align 5
	.p2align 4
	.p2align 3
L639:
	subl	$1020, %ebx
	addl	$4, %ecx
	movl	$-1, (%ecx)
	cmpl	$1019, %ebx
	ja	L639
L638:
	movl	$-2139062143, %eax
	mull	%ebx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ecx,%edx), %esi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	movb	%bl, (%ecx,%edx)
	jmp	L640
	.p2align 4,,10
	.p2align 3
L625:
	addl	$4, %eax
	movl	%ebx, %edi
	movl	%eax, 36(%esp)
L628:
	movl	40(%esp), %eax
	leal	-6(%eax), %edx
	cmpl	%edx, %edi
	jnb	L633
	movl	36(%esp), %eax
	movzwl	(%edi), %edx
	cmpw	%dx, (%eax)
	jne	L633
	addl	$2, 36(%esp)
	addl	$2, %edi
	.p2align 4
	.p2align 3
L633:
	cmpl	44(%esp), %edi
	jnb	L636
	movl	36(%esp), %edx
	movzbl	(%edi), %eax
	cmpb	%al, (%edx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edi
L636:
	subl	%ebx, %edi
	movl	%edi, %edx
	jmp	L631
	.p2align 4,,10
	.p2align 3
L860:
	addl	$4, 36(%esp)
	addl	$4, %edi
	cmpl	24(%esp), %edi
	jb	L627
	jmp	L628
	.p2align 4,,10
	.p2align 3
L813:
	movl	16(%esp), %ecx
	jmp	L605
	.p2align 4,,10
	.p2align 3
L827:
	.cfi_restore 5
	movl	16472(%esp), %esi
	.cfi_restore 6
	jmp	L554
	.p2align 4,,10
	.p2align 3
L845:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	28(%esp), %ecx
	movl	24(%esp), %edi
	jmp	L610
	.p2align 4,,10
	.p2align 3
L848:
	movl	24(%esp), %edi
	jmp	L700
	.p2align 4,,10
	.p2align 3
L714:
	leal	4(%ecx), %eax
	movl	24(%esp), %edx
	movl	%eax, 36(%esp)
L717:
	movl	44(%esp), %eax
	subl	$6, %eax
	cmpl	%eax, %edx
	jnb	L722
	movl	36(%esp), %eax
	movzwl	(%edx), %ecx
	cmpw	%cx, (%eax)
	jne	L722
	addl	$2, 36(%esp)
	addl	$2, %edx
L722:
	cmpl	48(%esp), %edx
	jnb	L725
	movl	36(%esp), %ecx
	movzbl	(%edx), %eax
	cmpb	%al, (%ecx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edx
L725:
	movl	%edx, %ecx
	subl	24(%esp), %ecx
	jmp	L720
	.p2align 4,,10
	.p2align 3
L750:
	.cfi_restore 5
	movl	20(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	L653
	.p2align 4,,10
	.p2align 3
L564:
	.cfi_offset 5, -8
	movl	20(%esp), %eax
	movl	%edi, %esi
	movl	%eax, 28(%esp)
	leal	1(%eax), %ebp
L599:
	movl	28(%esp), %edi
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%edi)
	jmp	L602
	.p2align 4,,10
	.p2align 3
L858:
	addl	$4, 36(%esp)
	addl	$4, %edx
	cmpl	16(%esp), %edx
	jb	L716
	jmp	L717
	.p2align 4,,10
	.p2align 3
L832:
	imull	$-1640531535, 1(%ebp), %eax
	leal	2(%ebp), %edx
	movl	%ebp, %ecx
	movl	%esi, 36(%esp)
	addl	$1, %ebp
	shrl	$20, %eax
	jmp	L646
L850:
	movl	32(%esp), %ebx
L840:
	cmpl	%edx, %edi
	jnb	L571
	movzbl	-1(%edx), %eax
	cmpb	%al, -1(%ebp)
	je	L861
L571:
	movl	28(%esp), %eax
	movl	%ebp, %esi
	subl	%ebx, %esi
	addl	$1, %eax
	movl	%eax, 16(%esp)
	cmpl	$14, %esi
	ja	L862
	movl	28(%esp), %eax
	movl	%esi, %ecx
	sall	$4, %ecx
	movb	%cl, (%eax)
L577:
	movl	16(%esp), %eax
	addl	%eax, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L578:
	movl	(%ebx), %ecx
	addl	$8, %eax
	addl	$8, %ebx
	movl	%ecx, -8(%eax)
	movl	-4(%ebx), %ecx
	movl	%ecx, -4(%eax)
	cmpl	%esi, %eax
	jb	L578
	movl	36(%esp), %eax
	movl	%edi, 32(%esp)
	leal	-8(%eax), %ebx
	subl	$6, %eax
	movl	%ebx, 24(%esp)
	movl	28(%esp), %ebx
	movl	%eax, 44(%esp)
	jmp	L597
	.p2align 4,,10
	.p2align 3
L580:
	xorl	%edi, %eax
	xorl	%edi, %edi
	rep bsfl	%eax, %edi
	shrl	$3, %edi
	leal	4(%ebp,%edi), %ebp
L583:
	movl	%edi, %eax
	addb	%al, (%ebx)
	movl	%ecx, %ebx
L594:
	cmpl	12(%esp), %ebp
	jnb	L863
	imull	$-1640531535, -2(%ebp), %eax
	movl	32(%esp), %esi
	leal	-2(%ebp), %edx
	movl	%ebp, %edi
	subl	%esi, %edx
	subl	%esi, %edi
	shrl	$19, %eax
	movw	%dx, 52(%esp,%eax,2)
	movl	0(%ebp), %eax
	imull	$-1640531535, %eax, %edx
	shrl	$19, %edx
	leal	52(%esp,%edx,2), %ecx
	movzwl	(%ecx), %edx
	movw	%di, (%ecx)
	addl	%esi, %edx
	cmpl	(%edx), %eax
	jne	L596
	movb	$0, (%ebx)
	leal	1(%ebx), %esi
L597:
	movl	%ebp, %eax
	leal	2(%esi), %ecx
	subl	%edx, %eax
	movw	%ax, (%esi)
	leal	4(%ebp), %eax
	movl	%eax, 16(%esp)
	cmpl	24(%esp), %eax
	jnb	L579
	movl	4(%edx), %eax
	movl	4(%ebp), %edi
	cmpl	%edi, %eax
	jne	L580
	leal	8(%edx), %eax
	leal	8(%ebp), %edi
	movl	%eax, 28(%esp)
	cmpl	24(%esp), %edi
	jnb	L582
L581:
	movl	28(%esp), %eax
	movl	(%edi), %edx
	movl	(%eax), %eax
	cmpl	%edx, %eax
	je	L864
	xorl	%edx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	addl	%eax, %edi
	subl	16(%esp), %edi
L585:
	leal	4(%ebp,%edi), %ebp
	cmpl	$14, %edi
	jbe	L583
	subl	$15, %edi
	addb	$15, (%ebx)
	movl	$-1, 2(%esi)
	cmpl	$1019, %edi
	jbe	L592
	.p2align 5
	.p2align 4
	.p2align 3
L593:
	subl	$1020, %edi
	addl	$4, %ecx
	movl	$-1, (%ecx)
	cmpl	$1019, %edi
	ja	L593
L592:
	movl	$-2139062143, %eax
	mull	%edi
	shrl	$7, %edx
	movl	%edx, %eax
	addl	%edx, %ecx
	sall	$8, %eax
	leal	1(%ecx), %ebx
	subl	%edx, %eax
	subl	%eax, %edi
	movl	%edi, %edx
	movb	%dl, (%ecx)
	jmp	L594
	.p2align 4,,10
	.p2align 3
L579:
	leal	4(%edx), %eax
	movl	16(%esp), %edi
	movl	%eax, 28(%esp)
L582:
	cmpl	44(%esp), %edi
	jnb	L587
	movl	28(%esp), %eax
	movzwl	(%edi), %edx
	cmpw	%dx, (%eax)
	jne	L587
	addl	$2, 28(%esp)
	addl	$2, %edi
	.p2align 4
	.p2align 3
L587:
	cmpl	40(%esp), %edi
	jnb	L590
	movl	28(%esp), %edx
	movzbl	(%edi), %eax
	cmpb	%al, (%edx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edi
L590:
	subl	16(%esp), %edi
	jmp	L585
	.p2align 4,,10
	.p2align 3
L864:
	addl	$4, 28(%esp)
	addl	$4, %edi
	cmpl	24(%esp), %edi
	jb	L581
	jmp	L582
L748:
	movl	%esi, 36(%esp)
	movl	%ebp, %ecx
	jmp	L605
L859:
	cmpl	%ecx, %ebx
	jnb	L659
L835:
	movzbl	-1(%ecx), %eax
	cmpb	%al, -1(%edi)
	je	L865
L659:
	movl	36(%esp), %eax
	movl	%edi, %ebp
	subl	40(%esp), %ebp
	leal	1(%eax), %ebx
	movl	$-2139062143, %eax
	mull	%ebp
	shrl	$7, %edx
	leal	8(%ebp,%edx), %eax
	addl	%ebx, %eax
	cmpl	%eax, 32(%esp)
	jb	L830
	cmpl	$14, %ebp
	ja	L866
	movl	36(%esp), %esi
	movl	%ebp, %eax
	sall	$4, %eax
	movb	%al, (%esi)
L666:
	movl	40(%esp), %esi
	addl	%ebx, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L667:
	movl	(%esi), %eax
	addl	$8, %ebx
	addl	$8, %esi
	movl	%eax, -8(%ebx)
	movl	-4(%esi), %eax
	movl	%eax, -4(%ebx)
	cmpl	%ebp, %ebx
	jb	L667
	movl	44(%esp), %eax
	movl	36(%esp), %esi
	subl	$8, %eax
	movl	%eax, 12(%esp)
	jmp	L687
	.p2align 4,,10
	.p2align 3
L669:
	addl	$8, %ebp
	cmpl	%ebp, 32(%esp)
	jb	L830
	xorl	%edx, %eax
	xorl	%ecx, %ecx
	rep bsfl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%edi,%ecx), %edi
L681:
	addb	%cl, (%esi)
	movl	%ebx, %esi
L684:
	cmpl	24(%esp), %edi
	jnb	L867
	imull	$-1640531535, -2(%edi), %eax
	movl	28(%esp), %ebp
	leal	-2(%edi), %edx
	subl	%ebp, %edx
	shrl	$19, %eax
	movw	%dx, 52(%esp,%eax,2)
	movl	(%edi), %eax
	imull	$-1640531535, %eax, %edx
	shrl	$19, %edx
	leal	52(%esp,%edx,2), %ebx
	movzwl	(%ebx), %edx
	leal	0(%ebp,%edx), %ecx
	movl	%edi, %edx
	subl	%ebp, %edx
	movw	%dx, (%ebx)
	cmpl	(%ecx), %eax
	jne	L686
	movb	$0, (%esi)
	leal	1(%esi), %ebp
L687:
	movl	%edi, %eax
	leal	2(%ebp), %ebx
	subl	%ecx, %eax
	movw	%ax, 0(%ebp)
	leal	4(%edi), %eax
	movl	%eax, 16(%esp)
	cmpl	12(%esp), %eax
	jnb	L668
	movl	4(%ecx), %eax
	movl	4(%edi), %edx
	cmpl	%edx, %eax
	jne	L669
	leal	8(%ecx), %eax
	leal	8(%edi), %edx
	movl	%eax, 36(%esp)
	cmpl	12(%esp), %edx
	jnb	L671
L670:
	movl	36(%esp), %eax
	movl	(%edx), %ecx
	movl	(%eax), %eax
	cmpl	%ecx, %eax
	je	L868
	xorl	%ecx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	leal	(%edx,%eax), %ecx
	subl	16(%esp), %ecx
L674:
	movl	$-2139062143, %eax
	leal	240(%ecx), %edx
	mull	%edx
	shrl	$7, %edx
	leal	6(%ebx,%edx), %eax
	cmpl	%eax, 32(%esp)
	jb	L830
	leal	4(%edi,%ecx), %edi
	cmpl	$14, %ecx
	jbe	L681
	subl	$15, %ecx
	addb	$15, (%esi)
	movl	$-1, 2(%ebp)
	cmpl	$1019, %ecx
	jbe	L682
	.p2align 5
	.p2align 4
	.p2align 3
L683:
	subl	$1020, %ecx
	addl	$4, %ebx
	movl	$-1, (%ebx)
	cmpl	$1019, %ecx
	ja	L683
L682:
	movl	$-2139062143, %eax
	mull	%ecx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ebx,%edx), %esi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movb	%cl, (%ebx,%edx)
	jmp	L684
L689:
	.cfi_restore 5
	movl	36(%esp), %ecx
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%ecx)
	jmp	L692
L746:
	.cfi_offset 5, -8
	movl	%eax, %ebp
	jmp	L599
L668:
	leal	4(%ecx), %eax
	movl	16(%esp), %edx
	movl	%eax, 36(%esp)
L671:
	movl	44(%esp), %eax
	subl	$6, %eax
	cmpl	%eax, %edx
	jnb	L676
	movl	36(%esp), %eax
	movzwl	(%edx), %ecx
	cmpw	%cx, (%eax)
	jne	L676
	addl	$2, 36(%esp)
	addl	$2, %edx
L676:
	cmpl	48(%esp), %edx
	jnb	L679
	movl	36(%esp), %ecx
	movzbl	(%edx), %eax
	cmpb	%al, (%ecx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edx
L679:
	movl	%edx, %ecx
	subl	16(%esp), %ecx
	jmp	L674
L856:
	movl	36(%esp), %edx
	leal	-15(%esi), %eax
	movb	$-16, (%edx)
	cmpl	$254, %eax
	jbe	L708
	.p2align 5
	.p2align 4
	.p2align 3
L709:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L709
L708:
	movb	%al, (%ebx)
	addl	$1, %ebx
	jmp	L710
L868:
	addl	$4, 36(%esp)
	addl	$4, %edx
	cmpl	12(%esp), %edx
	jb	L670
	jmp	L671
L863:
	movl	%ebx, 28(%esp)
	movl	36(%esp), %ebx
	movl	%ebp, %esi
	subl	%ebp, %ebx
	jmp	L566
L596:
	imull	$-1640531535, 1(%ebp), %edx
	movl	32(%esp), %edi
	movl	%ebx, 28(%esp)
	leal	1(%ebp), %eax
	movl	%ebp, %ebx
	shrl	$19, %edx
	jmp	L598
L737:
	imull	$-1640531535, 1(%ebp), %edx
	movl	%edi, 36(%esp)
	leal	2(%ebp), %eax
	movl	40(%esp), %edi
	movl	%ebp, 40(%esp)
	addl	$1, %ebp
	shrl	$20, %edx
	jmp	L738
L862:
	movl	28(%esp), %eax
	leal	-15(%esi), %ecx
	movb	$-16, (%eax)
	cmpl	$254, %ecx
	jbe	L575
	movl	16(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L576:
	subl	$255, %ecx
	addl	$1, %eax
	movb	$-1, -1(%eax)
	cmpl	$254, %ecx
	ja	L576
	movl	%eax, 16(%esp)
L575:
	movl	16(%esp), %eax
	movb	%cl, (%eax)
	addl	$1, %eax
	movl	%eax, 16(%esp)
	jmp	L577
L754:
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	jmp	L697
L866:
	movl	36(%esp), %esi
	leal	-15(%ebp), %eax
	movb	$-16, (%esi)
	cmpl	$254, %eax
	jbe	L664
	.p2align 5
	.p2align 4
	.p2align 3
L665:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L665
L664:
	movb	%al, (%ebx)
	addl	$1, %ebx
	jmp	L666
L855:
	subl	$1, %ebp
	subl	$1, %ecx
	cmpl	%ebp, 40(%esp)
	jb	L700
	jmp	L703
	.p2align 4,,10
	.p2align 3
L867:
	movl	44(%esp), %ebx
	movl	16480(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	%esi, 36(%esp)
	subl	%edi, %ebx
	jmp	L653
L686:
	.cfi_restore_state
	imull	$-1640531535, 1(%edi), %edx
	movl	%esi, 36(%esp)
	leal	1(%edi), %eax
	movl	%edi, 40(%esp)
	shrl	$19, %edx
	jmp	L688
L861:
	subl	$1, %ebp
	subl	$1, %edx
	cmpl	%ebp, %ebx
	jb	L840
	jmp	L571
	.p2align 4,,10
	.p2align 3
L865:
	subl	$1, %edi
	subl	$1, %ecx
	cmpl	%edi, 40(%esp)
	jnb	L659
	cmpl	%ecx, 28(%esp)
	jb	L835
	jmp	L659
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	_LZ4_decompress_safe
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
_LZ4_decompress_safe:
LFB59:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	80(%esp), %eax
	movl	%edx, 16(%esp)
	testl	%ebp, %ebp
	je	L870
	testl	%eax, %eax
	js	L870
	je	L1015
	testl	%ecx, %ecx
	je	L870
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	leal	0(%ebp,%ecx), %ebx
	movl	16(%esp), %ecx
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	leal	(%ecx,%eax), %edi
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movl	%edi, 24(%esp)
	subl	$32, %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 40(%esp)
	cmpl	$63, %eax
	jle	L935
	leal	-17(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	%ebp, %edi
	movl	%eax, 36(%esp)
	leal	-15(%ebx), %eax
	movl	%eax, 48(%esp)
	movl	%ebp, 44(%esp)
L875:
	movzbl	(%edi), %ebp
	leal	1(%edi), %ebx
	movl	%ebp, %eax
	movb	%al, 20(%esp)
	shrl	$4, %eax
	cmpl	$15, %eax
	je	L1016
	movl	12(%esp), %ecx
	leal	(%ebx,%eax), %esi
	leal	(%ecx,%eax), %edx
	cmpl	%ebx, 36(%esp)
	jb	L1001
	movl	1(%edi), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ecx)
L883:
	movzbl	20(%esp), %ecx
	movzwl	(%esi), %ebp
	movl	%edx, %eax
	andl	$15, %ecx
	movw	%bp, 32(%esp)
	subl	%ebp, %eax
	cmpb	$15, %cl
	je	L1017
	addl	$4, %ecx
	movl	24(%esp), %edi
	leal	2(%esi), %ebx
	movzbl	%cl, %esi
	leal	(%edx,%esi), %ecx
	subl	$64, %edi
	movl	%ecx, 12(%esp)
	cmpl	%edi, %ecx
	jnb	L1003
	cmpl	16(%esp), %eax
	jb	L1004
	cmpl	$7, %ebp
	ja	L1018
	movzwl	32(%esp), %edi
	cmpw	$2, %di
	je	L892
	cmpw	$4, %di
	je	L893
	cmpw	$1, %di
	jne	L1019
L894:
	movzbl	(%eax), %eax
	movl	%ebx, %edi
	imull	$16843009, %eax, %eax
	movl	%eax, 52(%esp)
	movl	%eax, 56(%esp)
L899:
	movl	52(%esp), %ecx
	movl	56(%esp), %ebx
	addl	$8, %edx
	movl	12(%esp), %eax
	movl	%ecx, -8(%edx)
	movl	%ebx, -4(%edx)
	cmpl	%eax, %edx
	jnb	L875
	movl	%eax, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L904:
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	addl	$8, %edx
	movl	%ebx, -8(%edx)
	movl	%esi, -4(%edx)
	cmpl	%ecx, %edx
	jb	L904
L1013:
	movl	%ecx, 12(%esp)
	jmp	L875
	.p2align 4,,10
	.p2align 3
L1016:
	movl	48(%esp), %eax
	cmpl	%eax, %ebx
	jnb	L1004
	leal	2(%edi), %ebx
	cmpl	%ebx, %eax
	jb	L1004
	movzbl	1(%edi), %eax
	cmpl	$255, %eax
	je	L1020
L878:
	movl	12(%esp), %ecx
	addl	$15, %eax
	leal	(%eax,%ecx), %edi
	addl	%eax, %ecx
	jnc	L1021
	.p2align 4
	.p2align 3
L1004:
	movl	44(%esp), %ebp
L877:
	movl	%ebp, %eax
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	subl	%ebx, %eax
	movl	60(%esp), %ebx
	.cfi_restore 3
	subl	$1, %eax
L869:
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1017:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ecx
	leal	3(%esi), %edi
	subl	$4, %ecx
	cmpl	%edi, %ecx
	jb	L938
	movzbl	2(%esi), %esi
	cmpl	$255, %esi
	je	L1022
L885:
	addl	$19, %esi
	movl	%edx, %ecx
	addl	%esi, %ecx
	leal	(%esi,%edx), %ebx
	jc	L938
	movl	24(%esp), %ecx
	movl	%ebx, 12(%esp)
	subl	$64, %ecx
	cmpl	%ecx, %ebx
	jnb	L1023
	cmpl	16(%esp), %eax
	jb	L938
	movl	%ebx, %ecx
	cmpl	$15, %ebp
	jbe	L1024
	.p2align 6
	.p2align 4
	.p2align 3
L897:
	movl	(%eax), %esi
	addl	$32, %edx
	addl	$32, %eax
	movl	%esi, -32(%edx)
	movl	-28(%eax), %esi
	movl	%esi, -28(%edx)
	movl	-24(%eax), %esi
	movl	%esi, -24(%edx)
	movl	-20(%eax), %esi
	movl	%esi, -20(%edx)
	movl	-16(%eax), %esi
	movl	%esi, -16(%edx)
	movl	-12(%eax), %esi
	movl	%esi, -12(%edx)
	movl	-8(%eax), %esi
	movl	%esi, -8(%edx)
	movl	-4(%eax), %esi
	movl	%esi, -4(%edx)
	cmpl	%ebx, %edx
	jb	L897
	movl	%ecx, 12(%esp)
	jmp	L875
	.p2align 4,,10
	.p2align 3
L1021:
	movl	%ebx, %ecx
	leal	(%eax,%ebx), %esi
	addl	%eax, %ecx
	jc	L1004
	movl	%edi, %edx
	cmpl	%edi, 40(%esp)
	jb	L1001
	movl	28(%esp), %ecx
	subl	$32, %ecx
	cmpl	%esi, %ecx
	jb	L1001
	movl	12(%esp), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L882:
	movl	(%ebx), %eax
	addl	$32, %ecx
	addl	$32, %ebx
	movl	%eax, -32(%ecx)
	movl	-28(%ebx), %eax
	movl	%eax, -28(%ecx)
	movl	-24(%ebx), %eax
	movl	%eax, -24(%ecx)
	movl	-20(%ebx), %eax
	movl	%eax, -20(%ecx)
	movl	-16(%ebx), %eax
	movl	%eax, -16(%ecx)
	movl	-12(%ebx), %eax
	movl	%eax, -12(%ecx)
	movl	-8(%ebx), %eax
	movl	%eax, -8(%ecx)
	movl	-4(%ebx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%edi, %ecx
	jb	L882
	jmp	L883
	.p2align 4,,10
	.p2align 3
L935:
	movl	16(%esp), %eax
	movl	%ebp, %ebx
	movl	%eax, 12(%esp)
L874:
	movzbl	(%ebx), %edi
	movl	28(%esp), %ecx
	leal	1(%ebx), %esi
	movl	%edi, %eax
	subl	$16, %ecx
	movzbl	%al, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 36(%esp)
	shrl	$4, %eax
	cmpl	$15, %eax
	je	L925
	movl	12(%esp), %ecx
	movl	%ebp, %ebx
L908:
	cmpl	20(%esp), %esi
	jnb	L905
	cmpl	%ecx, 40(%esp)
	jb	L905
	movl	(%esi), %edx
	leal	(%esi,%eax), %ebp
	movl	%edx, (%ecx)
	movl	4(%esi), %edx
	movl	%edx, 4(%ecx)
	movl	8(%esi), %edx
	movl	%edx, 8(%ecx)
	movl	12(%esi), %edx
	movl	%edx, 12(%ecx)
	leal	(%ecx,%eax), %edx
	movzwl	0(%ebp), %esi
	leal	2(%ebp), %eax
	movl	%edi, %ecx
	movl	%eax, 32(%esp)
	notl	%edi
	movl	%edx, %eax
	andl	$15, %ecx
	subl	%esi, %eax
	testw	$15, %di
	je	L942
	cmpl	$7, %esi
	jbe	L942
	cmpl	16(%esp), %eax
	jnb	L1025
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %ebx
L907:
	leal	4(%ecx), %esi
L888:
	cmpl	16(%esp), %eax
	jb	L877
	leal	(%edx,%esi), %edi
	movl	%edi, 12(%esp)
	cmpl	$7, 20(%esp)
	jbe	L1026
	movl	(%eax), %edi
	addl	$8, %eax
	movl	%edi, (%edx)
	movl	-4(%eax), %edi
	movl	%edi, 4(%edx)
L926:
	leal	8(%edx), %edi
	movl	24(%esp), %ecx
	movl	%edi, 20(%esp)
	movl	12(%esp), %edi
	subl	$12, %ecx
	cmpl	%edi, %ecx
	jb	L1027
	movl	(%eax), %ecx
	movl	20(%esp), %edi
	movl	%ecx, 8(%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edi)
	cmpl	$16, %esi
	jbe	L874
	movl	12(%esp), %ecx
	addl	$8, %eax
	addl	$16, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L934:
	movl	(%eax), %esi
	addl	$8, %edx
	addl	$8, %eax
	movl	%esi, -8(%edx)
	movl	-4(%eax), %esi
	movl	%esi, -4(%edx)
	cmpl	%ecx, %edx
	jb	L934
L1014:
	movl	%ecx, 12(%esp)
	jmp	L874
	.p2align 4,,10
	.p2align 3
L1018:
	movl	(%eax), %esi
	movl	%ebx, %edi
	movl	%esi, (%edx)
	movl	4(%eax), %esi
	movl	%esi, 4(%edx)
	movl	8(%eax), %esi
	movl	%esi, 8(%edx)
	movl	12(%eax), %esi
	movl	%esi, 12(%edx)
	movzwl	16(%eax), %eax
	movw	%ax, 16(%edx)
	jmp	L875
	.p2align 4,,10
	.p2align 3
L938:
	movl	44(%esp), %ebp
	movl	%edi, %ebx
	jmp	L877
L1020:
	movl	28(%esp), %edi
	movl	12(%esp), %ecx
	leal	-14(%edi), %esi
L879:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	je	L1004
	movzbl	-1(%ebx), %edx
	addl	%edx, %eax
	js	L1004
	cmpl	$255, %edx
	je	L879
	movl	%ecx, 12(%esp)
	jmp	L878
	.p2align 4,,10
	.p2align 3
L1015:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	cmpl	$1, %ecx
	je	L872
L870:
	movl	72(%esp), %ebp
	movl	$-1, %eax
	addl	$76, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1025:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	(%eax), %esi
	leal	4(%edx,%ecx), %ecx
	movl	%esi, (%edx)
	movl	4(%eax), %esi
	movl	%esi, 4(%edx)
	movl	8(%eax), %esi
	movl	%esi, 8(%edx)
	movl	12(%eax), %esi
	movl	%esi, 12(%edx)
	movzwl	16(%eax), %eax
	leal	3(%ebp), %esi
	movw	%ax, 16(%edx)
	movzbl	2(%ebp), %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, 36(%esp)
	shrl	$4, %eax
	cmpl	$15, %eax
	jne	L908
	movl	%ecx, 12(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %ebx
L925:
	movl	28(%esp), %eax
	subl	$15, %eax
	cmpl	%eax, %esi
	jnb	L944
	leal	2(%ebx), %esi
	cmpl	%esi, %eax
	jb	L944
	movzbl	1(%ebx), %eax
	cmpl	$255, %eax
	je	L1028
L909:
	movl	12(%esp), %edi
	addl	$15, %eax
	movl	%edi, %ecx
	addl	%eax, %ecx
	jc	L944
	leal	(%eax,%edi), %edx
	movl	%esi, %edi
	movl	%esi, %ebx
	addl	%eax, %edi
	movl	%edi, 20(%esp)
	jc	L944
L881:
	movl	24(%esp), %edi
	leal	-12(%edi), %esi
	cmpl	%edx, %esi
	jb	L915
	movl	28(%esp), %edi
	leal	-8(%edi), %esi
	cmpl	20(%esp), %esi
	jb	L915
	movl	12(%esp), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L916:
	movl	(%ebx), %eax
	addl	$8, %ecx
	addl	$8, %ebx
	movl	%eax, -8(%ecx)
	movl	-4(%ebx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%edx, %ecx
	jb	L916
	movl	20(%esp), %eax
	movl	36(%esp), %ecx
	movzwl	(%eax), %edi
	leal	2(%eax), %esi
	movl	%edx, %eax
	andl	$15, %ecx
	movl	%edi, 20(%esp)
	subl	%edi, %eax
L906:
	cmpl	$15, %ecx
	jne	L945
	movl	28(%esp), %edi
	leal	1(%esi), %ebx
	leal	-4(%edi), %ecx
	cmpl	%ebx, %ecx
	jb	L877
	movzbl	(%esi), %ecx
	cmpl	$255, %ecx
	je	L1029
L917:
	addl	$15, %ecx
	movl	%edx, %edi
	addl	%ecx, %edi
	jnc	L907
	jmp	L877
L1019:
	leal	8(%edx), %edi
	movl	%edi, 20(%esp)
L895:
	movl	$0, (%edx)
	movzbl	(%eax), %ecx
	movl	%ebx, %edi
	movb	%cl, (%edx)
	movzbl	1(%eax), %ecx
	movb	%cl, 1(%edx)
	movzbl	2(%eax), %ecx
	movb	%cl, 2(%edx)
	movzbl	3(%eax), %ecx
	addl	__ZL10inc32table(,%ebp,4), %eax
	movb	%cl, 3(%edx)
	movl	(%eax), %esi
	movl	12(%esp), %ecx
	subl	__ZL10dec64table(,%ebp,4), %eax
	movl	%esi, 4(%edx)
	movl	20(%esp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L902:
	movl	(%eax), %edx
	addl	$8, %esi
	addl	$8, %eax
	movl	%edx, -8(%esi)
	movl	-4(%eax), %edx
	movl	%edx, -4(%esi)
	cmpl	%ecx, %esi
	jb	L902
	jmp	L1013
L941:
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L893:
	movl	(%eax), %esi
	movl	%ebx, %edi
	movl	%esi, 52(%esp)
	movl	(%eax), %eax
	movl	%eax, 56(%esp)
	jmp	L899
L872:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movzbl	0(%ebp), %eax
	negb	%al
	sbbl	%eax, %eax
	jmp	L869
L915:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %ecx
	cmpl	%ecx, 28(%esp)
	jne	L877
	cmpl	%edx, 24(%esp)
	jb	L877
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	16(%esp), %esi
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_memmove
	movl	12(%esp), %eax
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	68(%esp), %edi
	.cfi_restore 7
	subl	%esi, %eax
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L869
L1022:
	.cfi_restore_state
	movl	28(%esp), %ebx
	subl	$3, %ebx
L886:
	addl	$1, %edi
	cmpl	%edi, %ebx
	je	L1004
	movzbl	-1(%edi), %ecx
	addl	%ecx, %esi
	js	L938
	cmpl	$255, %ecx
	je	L886
	jmp	L885
L1001:
	movl	%ebp, 36(%esp)
	movl	44(%esp), %ebp
	movl	%esi, 20(%esp)
	jmp	L881
L940:
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L892:
	movzwl	(%eax), %esi
	movl	%ebx, %edi
	movw	%si, 52(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 54(%esp)
	movl	52(%esp), %eax
	movl	%eax, 56(%esp)
	jmp	L899
L905:
	leal	(%esi,%eax), %edi
	movl	%ebx, %ebp
	movl	%ecx, 12(%esp)
	leal	(%ecx,%eax), %edx
	movl	%edi, 20(%esp)
	movl	%esi, %ebx
	jmp	L881
L1027:
	movl	24(%esp), %ecx
	leal	-5(%ecx), %edx
	cmpl	%edi, %edx
	jb	L877
	subl	$7, %ecx
	movl	%ecx, 32(%esp)
	cmpl	%ecx, 20(%esp)
	jnb	L929
	movl	20(%esp), %edx
	movl	%eax, 36(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
L930:
	movl	(%esi), %ecx
	addl	$8, %edx
	addl	$8, %esi
	movl	%ecx, -8(%edx)
	movl	-4(%esi), %ecx
	movl	%ecx, -4(%edx)
	cmpl	%eax, %edx
	jb	L930
	movl	32(%esp), %ecx
	movl	36(%esp), %eax
	movl	%ecx, %edx
	movl	%ecx, 20(%esp)
	subl	%edi, %edx
	addl	%edx, %eax
L929:
	movl	12(%esp), %edi
	cmpl	%edi, 20(%esp)
	jnb	L874
	movl	12(%esp), %ecx
	movl	20(%esp), %edi
	.p2align 4
	.p2align 4
	.p2align 3
L931:
	movzbl	(%eax), %edx
	addl	$1, %edi
	addl	$1, %eax
	movb	%dl, -1(%edi)
	cmpl	%edi, %ecx
	jne	L931
	jmp	L1014
L1026:
	movl	$0, (%edx)
	movzbl	(%eax), %ecx
	movb	%cl, (%edx)
	movzbl	1(%eax), %ecx
	movb	%cl, 1(%edx)
	movzbl	2(%eax), %ecx
	movb	%cl, 2(%edx)
	movzbl	3(%eax), %ecx
	movb	%cl, 3(%edx)
	movl	20(%esp), %ecx
	addl	__ZL10inc32table(,%ecx,4), %eax
	movl	(%eax), %edi
	subl	__ZL10dec64table(,%ecx,4), %eax
	movl	%edi, 4(%edx)
	jmp	L926
L1003:
	movl	%ebp, 20(%esp)
	movl	44(%esp), %ebp
	jmp	L888
L942:
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %esi
	jmp	L906
L1023:
	movl	%ebp, 20(%esp)
	movl	%edi, %ebx
	movl	44(%esp), %ebp
	jmp	L888
L1029:
	subl	$3, %edi
L920:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	je	L877
	movzbl	-1(%ebx), %esi
	addl	%esi, %ecx
	js	L877
	cmpl	$255, %esi
	je	L920
	jmp	L917
L944:
	movl	%esi, %ebx
	jmp	L877
L1028:
	movl	28(%esp), %edi
	movl	12(%esp), %ecx
	leal	-14(%edi), %ebx
L912:
	addl	$1, %esi
	cmpl	%ebx, %esi
	je	L944
	movzbl	-1(%esi), %edx
	addl	%edx, %eax
	js	L944
	cmpl	$255, %edx
	je	L912
	movl	%ecx, 12(%esp)
	jmp	L909
L1024:
	movzwl	32(%esp), %ebx
	cmpw	$2, %bx
	je	L940
	cmpw	$4, %bx
	je	L941
	subw	$1, %bx
	jne	L898
	movl	%edi, %ebx
	jmp	L894
	.p2align 4,,10
	.p2align 3
L898:
	leal	8(%edx), %ebx
	movl	%ebx, 20(%esp)
	movl	%ebx, %esi
	cmpl	$7, %ebp
	jbe	L1030
	movl	(%eax), %ebx
	movl	12(%esp), %ecx
	addl	$8, %eax
	movl	%ebx, (%edx)
	movl	-4(%eax), %ebx
	movl	%ebx, 4(%edx)
	jmp	L902
L945:
	movl	%esi, %ebx
	jmp	L907
L1030:
	movl	%edi, %ebx
	jmp	L895
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_tdefl_flush_block.lto_priv.0
	.def	_tdefl_flush_block.lto_priv.0;	.scl	2;	.type	32;	.endef
_tdefl_flush_block.lto_priv.0:
LFB60:
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
	subl	$32, %esp
	movl	%edx, 28(%esp)
	movb	$0, 24(%esp)
	testb	$8, 10(%eax)
	je	L1032
	movl	28(%eax), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	setnb	24(%esp)
L1032:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1150
L1033:
	leal	234098(%ebx), %eax
	movl	%eax, 20(%esp)
L1034:
	movl	20(%esp), %eax
	movl	44(%ebx), %edx
	movl	$0, 88(%ebx)
	movl	$0, 92(%ebx)
	movl	56(%ebx), %ecx
	movl	%eax, 48(%ebx)
	addl	$85180, %eax
	movl	%eax, 52(%ebx)
	movzbl	(%edx), %eax
	sarl	%cl, %eax
	movb	%al, (%edx)
	movl	8(%ebx), %edx
	xorl	%eax, %eax
	cmpl	$8, 56(%ebx)
	sete	%al
	subl	%eax, 40(%ebx)
	testb	$16, %dh
	je	L1035
	movl	100(%ebx), %eax
	testl	%eax, %eax
	je	L1036
L1035:
	movl	72(%ebx), %eax
	movl	68(%ebx), %edi
	movl	48(%ebx), %esi
L1037:
	xorl	%edx, %edx
	cmpl	$4, 28(%esp)
	movl	%edi, %ecx
	sete	%dl
	addl	$1, %edi
	sall	%cl, %edx
	movl	%edi, 68(%ebx)
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	%ecx, 72(%ebx)
	cmpl	$7, %edi
	jbe	L1047
	.p2align 6
	.p2align 4
	.p2align 3
L1049:
	cmpl	52(%ebx), %esi
	jnb	L1048
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
	movl	48(%ebx), %esi
L1048:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L1049
L1047:
	cmpb	$0, 24(%esp)
	je	L1050
	movl	28(%ebx), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	jb	L1052
L1051:
	addl	$2, %edi
	movl	%esi, 48(%ebx)
	movl	%ecx, 72(%ebx)
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L1058
	jmp	L1055
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1151:
	movl	48(%ebx), %esi
L1058:
	cmpl	52(%ebx), %esi
	jnb	L1056
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
L1056:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L1151
	testl	%edi, %edi
	jne	L1152
L1059:
	movl	%edi, %eax
	movl	60(%ebx), %edx
	movl	%ecx, %edi
	movl	$2, %esi
	movl	%eax, %ecx
L1066:
	movzwl	%dx, %eax
	sall	%cl, %eax
	addl	$16, %ecx
	orl	%eax, %edi
	movl	%ecx, 68(%ebx)
	movl	%edi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L1105
	movl	%edi, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1064:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L1063
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L1063:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L1064
	movl	60(%ebx), %eax
L1062:
	movl	%eax, %edx
	xorl	$65535, %edx
	movl	%edx, 60(%ebx)
	cmpl	$1, %esi
	je	L1065
	movl	72(%ebx), %edi
	movl	68(%ebx), %ecx
	movl	$1, %esi
	jmp	L1066
	.p2align 4,,10
	.p2align 3
L1050:
	movl	$1, %edx
	testb	$4, 10(%ebx)
	je	L1153
L1053:
	movl	%ebx, %eax
	movl	%ecx, 24(%esp)
	call	_tdefl_compress_block
	movl	60(%ebx), %edx
	movl	24(%esp), %ecx
	movl	%eax, 16(%esp)
	testl	%edx, %edx
	jne	L1154
L1054:
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L1052
L1067:
	movl	28(%esp), %esi
	testl	%esi, %esi
	je	L1072
L1158:
	movl	68(%ebx), %eax
	cmpl	$4, %esi
	je	L1155
	addl	$3, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	jbe	L1081
	movl	72(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1083:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L1082
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L1082:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L1083
L1081:
	testl	%eax, %eax
	jne	L1156
	movl	72(%ebx), %eax
	movl	68(%ebx), %ecx
L1087:
	movl	$2, %esi
	xorl	%edx, %edx
	movl	%eax, %edi
L1091:
	movl	%edx, %eax
	sall	%cl, %eax
	addl	$16, %ecx
	orl	%edi, %eax
	movl	%ecx, 68(%ebx)
	movl	%eax, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L1088
	.p2align 6
	.p2align 4
	.p2align 3
L1090:
	movl	48(%ebx), %ecx
	cmpl	52(%ebx), %ecx
	jnb	L1089
	leal	1(%ecx), %edi
	movl	%edi, 48(%ebx)
	movb	%al, (%ecx)
	movl	72(%ebx), %eax
L1089:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L1090
L1088:
	cmpl	$1, %esi
	je	L1072
	movl	72(%ebx), %edi
	movl	68(%ebx), %ecx
	xorl	$65535, %edx
	movl	$1, %esi
	jmp	L1091
	.p2align 4,,10
	.p2align 3
L1036:
	andl	$4095, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1039:
	cmpl	%edx, _s_tdefl_num_probes.lto_priv.0(,%eax,4)
	je	L1038
	addl	$1, %eax
	cmpl	$11, %eax
	jne	L1039
	movl	$218, 16(%esp)
L1040:
	movl	68(%ebx), %edi
	movl	$120, %eax
	movl	48(%ebx), %esi
	movl	52(%ebx), %edx
	movl	%edi, %ecx
	sall	%cl, %eax
	leal	8(%edi), %ecx
	orl	72(%ebx), %eax
	movl	%eax, 72(%ebx)
	movl	%ecx, 68(%ebx)
	cmpl	$-9, %edi
	ja	L1041
	.p2align 6
	.p2align 4
	.p2align 3
L1043:
	cmpl	%edx, %esi
	jnb	L1042
	leal	1(%esi), %edx
	movl	%edx, 48(%ebx)
	movb	%al, (%esi)
	movl	72(%ebx), %eax
	movl	48(%ebx), %esi
	movl	52(%ebx), %edx
L1042:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L1043
L1148:
	movl	%edi, 12(%esp)
	movl	16(%esp), %edi
	sall	%cl, %edi
	orl	%edi, %eax
	movl	12(%esp), %edi
	movl	%eax, 72(%ebx)
	movl	%edi, 68(%ebx)
	jmp	L1046
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1157:
	movl	52(%ebx), %edx
L1046:
	cmpl	%edx, %esi
	jnb	L1045
	leal	1(%esi), %edx
	movl	%edx, 48(%ebx)
	movb	%al, (%esi)
	movl	72(%ebx), %eax
	movl	48(%ebx), %esi
L1045:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L1157
	jmp	L1037
	.p2align 4,,10
	.p2align 3
L1154:
	movl	48(%ebx), %eax
	subl	%esi, %eax
	addl	$1, %eax
	cmpl	%edx, %eax
	jb	L1054
	movl	28(%ebx), %eax
	subl	64(%ebx), %eax
	cmpl	%eax, 36(%ebx)
	jb	L1054
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1153:
	xorl	%edx, %edx
	cmpl	$47, 60(%ebx)
	setbe	%dl
	jmp	L1053
	.p2align 4,,10
	.p2align 3
L1052:
	movl	%esi, 48(%ebx)
	movl	$1, %edx
	movl	%ebx, %eax
	movl	%ecx, 72(%ebx)
	movl	%edi, 68(%ebx)
	call	_tdefl_compress_block
	movl	28(%esp), %esi
	testl	%esi, %esi
	jne	L1158
	.p2align 4
	.p2align 3
L1072:
	leal	33170(%ebx), %eax
	movl	$576, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, 33794(%ebx)
	movl	$0, 33798(%ebx)
	movl	$0, 33802(%ebx)
	movl	$0, 33806(%ebx)
L1092:
	movl	$0, 33746(%ebx,%eax)
	movl	$0, 33750(%ebx,%eax)
	movl	$0, 33754(%ebx,%eax)
	movl	$0, 33758(%ebx,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1092
	leal	37491(%ebx), %eax
	xorl	%edx, %edx
	addl	$1, 100(%ebx)
	movl	48(%ebx), %esi
	movl	%eax, 40(%ebx)
	leal	37490(%ebx), %eax
	movl	%eax, 44(%ebx)
	movl	60(%ebx), %eax
	addl	%eax, 64(%ebx)
	movl	$8, %eax
	movl	%eax, 56(%ebx)
	movl	%edx, 60(%ebx)
	subl	20(%esp), %esi
	je	L1149
	movl	(%ebx), %eax
	leal	234098(%ebx), %edx
	testl	%eax, %eax
	je	L1096
	movl	120(%ebx), %ecx
	movl	132(%ebx), %eax
	subl	112(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	*(%ebx)
	testl	%eax, %eax
	je	L1097
L1149:
	movl	92(%ebx), %eax
L1031:
	addl	$32, %esp
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
L1065:
	.cfi_restore_state
	cmpl	$65535, %eax
	je	L1067
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1071:
	movl	64(%ebx), %eax
	movl	68(%ebx), %ecx
	addl	%esi, %eax
	andl	$32767, %eax
	movzbl	144(%ebx,%eax), %edx
	leal	8(%ecx), %eax
	movl	%eax, 68(%ebx)
	sall	%cl, %edx
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	cmpl	$-9, %ecx
	ja	L1068
	.p2align 6
	.p2align 4
	.p2align 3
L1070:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L1069
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L1069:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L1070
L1068:
	addl	$1, %esi
	cmpl	60(%ebx), %esi
	jb	L1071
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1150:
	movl	124(%ebx), %eax
	movl	140(%ebx), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	cmpl	$85195, %eax
	jbe	L1033
	addl	116(%ebx), %edx
	movl	%edx, 20(%esp)
	jmp	L1034
L1038:
	movl	$1, 16(%esp)
	cmpl	$1, %eax
	jbe	L1040
	movl	$94, 16(%esp)
	cmpl	$5, %eax
	jbe	L1040
	cmpl	$6, %eax
	movl	$156, %edx
	movl	$218, %eax
	cmove	%edx, %eax
	movl	%eax, 16(%esp)
	jmp	L1040
L1156:
	movl	$8, 68(%ebx)
	movl	72(%ebx), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1086:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L1085
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L1085:
	movl	68(%ebx), %esi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L1086
	jmp	L1087
L1152:
	movl	48(%ebx), %esi
L1055:
	movl	$8, 68(%ebx)
	jmp	L1061
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1159:
	movl	48(%ebx), %esi
L1061:
	cmpl	52(%ebx), %esi
	jnb	L1060
	leal	1(%esi), %eax
	movl	%eax, 48(%ebx)
	movb	%cl, (%esi)
	movl	72(%ebx), %ecx
L1060:
	movl	68(%ebx), %eax
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%eax), %edi
	movl	%edi, 68(%ebx)
	cmpl	$7, %edi
	ja	L1159
	jmp	L1059
L1155:
	testl	%eax, %eax
	je	L1074
	movl	$8, 68(%ebx)
	movl	72(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1076:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L1075
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L1075:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L1076
L1074:
	testb	$16, 9(%ebx)
	je	L1072
	movl	24(%ebx), %edi
	movl	$4, %esi
L1080:
	movl	68(%ebx), %ecx
	movl	%edi, %edx
	shrl	$24, %edx
	sall	%cl, %edx
	leal	8(%ecx), %eax
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	movl	%eax, 68(%ebx)
	cmpl	$-9, %ecx
	ja	L1077
	.p2align 6
	.p2align 4
	.p2align 3
L1079:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L1078
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L1078:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L1079
L1077:
	sall	$8, %edi
	subl	$1, %esi
	jne	L1080
	jmp	L1072
L1096:
	movl	140(%ebx), %eax
	cmpl	%edx, 20(%esp)
	je	L1160
	addl	%esi, %eax
	movl	%eax, 140(%ebx)
	jmp	L1149
L1105:
	movl	%edx, %eax
	jmp	L1062
L1097:
	movl	$-1, 108(%ebx)
	movl	$-1, %eax
	jmp	L1031
L1041:
	addl	$16, %edi
	jmp	L1148
L1160:
	movl	124(%ebx), %edx
	movl	20(%esp), %ecx
	movl	(%edx), %edi
	subl	%eax, %edi
	cmpl	%esi, %edi
	cmova	%esi, %edi
	addl	116(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, 8(%esp)
	call	_memcpy
	movl	%esi, %eax
	addl	%edi, 140(%ebx)
	subl	%edi, %eax
	je	L1149
	movl	%edi, 88(%ebx)
	movl	%eax, 92(%ebx)
	jmp	L1031
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	_tdefl_flush_output_buffer.lto_priv.0
	.def	_tdefl_flush_output_buffer.lto_priv.0;	.scl	2;	.type	32;	.endef
_tdefl_flush_output_buffer.lto_priv.0:
LFB61:
	.cfi_startproc
	movl	120(%eax), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L1162
	movl	132(%eax), %eax
	subl	112(%edx), %eax
	movl	%eax, (%ecx)
L1162:
	movl	124(%edx), %ecx
	testl	%ecx, %ecx
	je	L1173
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	140(%edx), %eax
	movl	(%ecx), %ecx
	movl	88(%edx), %ebx
	movl	%edx, 16(%esp)
	subl	%eax, %ecx
	cmpl	92(%edx), %ecx
	cmova	92(%edx), %ecx
	leal	234098(%edx,%ebx), %ebx
	addl	116(%edx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	124(%edx), %eax
	addl	%ecx, 88(%edx)
	subl	%ecx, 92(%edx)
	addl	140(%edx), %ecx
	movl	%ecx, 140(%edx)
	movl	%ecx, (%eax)
	movl	96(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	L1161
	movl	92(%edx), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	sete	%al
L1161:
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1173:
	movl	96(%edx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	L1175
	movl	92(%edx), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	ret
	.p2align 4,,10
	.p2align 3
L1175:
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	_XXH3_mul128_fold64.lto_priv.0
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
_XXH3_mul128_fold64.lto_priv.0:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	%eax, 8(%esp)
	mull	%ecx
	movl	%edi, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	movl	%edx, 20(%esp)
	mull	%ecx
	movl	20(%esp), %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	movl	%edx, %edi
	xorl	%edx, %edx
	addl	%eax, %ecx
	movl	8(%esp), %eax
	adcl	%edx, %ebx
	mull	12(%ebp)
	movl	%edi, %esi
	addl	%eax, %ecx
	movl	4(%esp), %eax
	adcl	%edx, %ebx
	mull	12(%ebp)
	movl	%ecx, 8(%esp)
	xorl	%edi, %edi
	movl	%esi, %ecx
	movl	%ebx, 12(%esp)
	movl	%edi, %ebx
	addl	%eax, %ecx
	movl	8(%esp), %eax
	adcl	%edx, %ebx
	movl	12(%esp), %edx
	movl	%edx, %edi
	movl	%eax, %edx
	movl	%edi, %esi
	xorl	%edi, %edi
	addl	%ecx, %esi
	movl	16(%esp), %ecx
	adcl	%ebx, %edi
	xorl	%ebx, %ebx
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	orl	%ebx, %edx
	orl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	xorl	%esi, %eax
	xorl	%edi, %edx
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.def	_XXH3_mergeAccs;	.scl	3;	.type	32;	.endef
_XXH3_mergeAccs:
LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$24, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	%edx, 12(%esp)
	movl	12(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	%edi, 8(%esp)
L1181:
	movl	8(%esp), %edx
	movl	12(%esp), %edi
	movl	(%edx,%esi), %ecx
	movl	4(%edx,%esi), %ebx
	movl	8(%edx,%esi), %eax
	movl	12(%edx,%esi), %edx
	xorl	8(%edi,%esi), %eax
	xorl	12(%edi,%esi), %edx
	xorl	(%edi,%esi), %ecx
	xorl	4(%edi,%esi), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, %eax
	movl	%ebx, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
	addl	$16, %esi
	cmpl	$64, %esi
	jne	L1181
	movl	20(%esp), %esi
	movl	16(%esp), %ebx
	xorl	%edx, %edx
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	xorl	%edx, %esi
	shrl	$5, %eax
	imull	$-1640531463, %esi, %ecx
	xorl	%eax, %ebx
	movl	$-1640531463, %eax
	imull	$374761361, %ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	xorl	%ebx, %ebx
	addl	%ecx, %edx
	xorl	%edx, %eax
	xorl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	_XXH3_len_129to240_64b.constprop.0
	.def	_XXH3_len_129to240_64b.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_len_129to240_64b.constprop.0:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_offset 6, -16
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	imull	$-1640531535, %ebx, %ecx
	andl	$-8, %esp
	subl	$48, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%ebx, 16(%esp)
	movl	%eax, 40(%esp)
	movl	$-2048144761, %eax
	movl	%edx, 44(%esp)
	mull	%ebx
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	%edx, 28(%esp)
	shrl	$4, %eax
	addl	%ecx, 28(%esp)
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L1185:
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	addl	_XXH3_kSecret.lto_priv.0(%esi), %ecx
	adcl	_XXH3_kSecret.lto_priv.0+4(%esi), %ebx
	xorl	(%edi,%esi), %ecx
	xorl	4(%edi,%esi), %ebx
	movl	%ecx, 32(%esp)
	movl	_XXH3_kSecret.lto_priv.0+8(%esi), %ecx
	movl	%ebx, 36(%esp)
	movl	_XXH3_kSecret.lto_priv.0+12(%esi), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	xorl	8(%edi,%esi), %eax
	movl	%ebx, %edx
	xorl	12(%edi,%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 24(%esp)
	adcl	%edx, 28(%esp)
	addl	$16, %esi
	cmpl	$128, %esi
	jne	L1185
	movl	40(%esp), %eax
	movl	16(%esp), %ebx
	movl	44(%esp), %edx
	addl	$2124400689, %eax
	leal	-16(%edi,%ebx), %ecx
	adcl	$1937299913, %edx
	movl	%eax, %ebx
	movl	$-1396315548, %eax
	xorl	(%ecx), %ebx
	movl	%edx, %esi
	movl	$-338479997, %edx
	xorl	4(%ecx), %esi
	subl	40(%esp), %eax
	sbbl	44(%esp), %edx
	xorl	8(%ecx), %eax
	xorl	12(%ecx), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	movl	28(%esp), %esi
	movl	24(%esp), %ebx
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	movl	%edx, 20(%esp)
	xorl	%edx, %edx
	shrl	$5, %eax
	xorl	%edx, %esi
	xorl	%eax, %ebx
	imull	$-1640531463, %esi, %ecx
	movl	$-1640531463, %eax
	imull	$374761361, %ebx, %edx
	addl	%edx, %ecx
	mull	%ebx
	xorl	%ebx, %ebx
	addl	%ecx, %edx
	movl	%edx, %ecx
	xorl	%edx, %ebx
	xorl	%eax, %ecx
	movl	12(%esp), %eax
	movl	%ebx, 36(%esp)
	movl	%ecx, 32(%esp)
	cmpl	$8, %eax
	je	L1186
	subl	$8, %eax
	xorl	%esi, %esi
	sall	$4, %eax
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L1187:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	%edx, 36(%esp)
	movl	44(%esp), %edx
	movl	%eax, %ecx
	addl	_XXH3_kSecret.lto_priv.0+3(%esi), %ecx
	movl	%edx, %ebx
	adcl	_XXH3_kSecret.lto_priv.0+7(%esi), %ebx
	xorl	128(%edi,%esi), %ecx
	xorl	132(%edi,%esi), %ebx
	movl	%ecx, 24(%esp)
	movl	_XXH3_kSecret.lto_priv.0+11(%esi), %ecx
	movl	%ebx, 28(%esp)
	movl	_XXH3_kSecret.lto_priv.0+15(%esi), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	xorl	136(%edi,%esi), %eax
	movl	%ebx, %edx
	xorl	140(%edi,%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
	addl	$16, %esi
	cmpl	%esi, 12(%esp)
	jne	L1187
L1186:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	addl	16(%esp), %eax
	adcl	20(%esp), %edx
	leal	-12(%ebp), %esp
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	xorl	%ebx, %edx
	xorl	%ebx, %ebx
	shrl	$5, %ecx
	xorl	%ecx, %eax
	imull	$-1640531463, %edx, %ecx
	imull	$374761361, %eax, %edx
	movl	%eax, %esi
	movl	$-1640531463, %eax
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	xorl	%edx, %eax
	xorl	%ebx, %edx
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	_XXH3_hashLong_64b_default.constprop.0
	.def	_XXH3_hashLong_64b_default.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_hashLong_64b_default.constprop.0:
LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	leal	384(%eax), %esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$104, %esp
	.cfi_offset 3, -20
	movups	LC72, %xmm0
	movl	%eax, 20(%esp)
	leal	40(%esp), %edi
	movups	%xmm0, 40(%esp)
	movups	LC73, %xmm0
	movl	$0, 28(%esp)
	movups	%xmm0, 56(%esp)
	movups	LC74, %xmm0
	movups	%xmm0, 72(%esp)
	movups	LC75, %xmm0
	movups	%xmm0, 88(%esp)
	.p2align 4
	.p2align 3
L1196:
	prefetcht0	(%esi)
	movl	%esi, 24(%esp)
	leal	-384(%esi), %ebx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L1195:
	movl	28(%esp), %esi
	movl	(%ebx,%ecx,8), %eax
	movl	4(%ebx,%ecx,8), %edx
	xorl	_XXH3_kSecret.lto_priv.0(%esi,%ecx,8), %eax
	xorl	_XXH3_kSecret.lto_priv.0+4(%esi,%ecx,8), %edx
	movl	%ecx, %esi
	xorl	$1, %esi
	movl	%eax, 32(%esp)
	movl	(%ebx,%ecx,8), %eax
	movl	%edx, 36(%esp)
	movl	4(%ebx,%ecx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	32(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	36(%esp)
	addl	%eax, (%edi,%ecx,8)
	adcl	%edx, 4(%edi,%ecx,8)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L1195
	movl	24(%esp), %esi
	addl	$8, 28(%esp)
	addl	$64, %esi
	cmpl	$120, 28(%esp)
	jne	L1196
	movl	20(%esp), %ebx
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L1197:
	movl	%ecx, %esi
	movl	960(%ebx,%ecx,8), %eax
	movl	964(%ebx,%ecx,8), %edx
	xorl	_XXH3_kSecret.lto_priv.0+121(,%ecx,8), %eax
	xorl	_XXH3_kSecret.lto_priv.0+125(,%ecx,8), %edx
	xorl	$1, %esi
	movl	%eax, 32(%esp)
	movl	960(%ebx,%ecx,8), %eax
	movl	%edx, 36(%esp)
	movl	964(%ebx,%ecx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	32(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	36(%esp)
	addl	%eax, (%edi,%ecx,8)
	adcl	%edx, 4(%edi,%ecx,8)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L1197
	movl	$-1356194816, (%esp)
	movl	%edi, %eax
	movl	$_XXH3_kSecret.lto_priv.0+11, %edx
	movl	$-572078569, 4(%esp)
	call	_XXH3_mergeAccs
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	_XXH3_hashLong_64b_withSeed.constprop.0
	.def	_XXH3_hashLong_64b_withSeed.constprop.0;	.scl	2;	.type	32;	.endef
_XXH3_hashLong_64b_withSeed.constprop.0:
LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$312, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	.p2align 4
	.p2align 3
L1203:
	movl	_XXH3_kSecret.lto_priv.0+8(%edi), %eax
	movl	_XXH3_kSecret.lto_priv.0+12(%edi), %edx
	movl	_XXH3_kSecret.lto_priv.0(%edi), %ecx
	movl	_XXH3_kSecret.lto_priv.0+4(%edi), %ebx
	addl	$-49, %eax
	adcl	$-1, %edx
	addl	$49, %ecx
	movl	%eax, 128(%esp,%edi)
	adcl	$0, %ebx
	movl	%ecx, 120(%esp,%edi)
	movl	%ebx, 124(%esp,%edi)
	movl	%edx, 132(%esp,%edi)
	addl	$16, %edi
	cmpl	$192, %edi
	jne	L1203
	movups	LC72, %xmm0
	movl	24(%esp), %eax
	movups	%xmm0, 56(%esp)
	movups	LC73, %xmm0
	subl	$1, %eax
	movl	%eax, %ebx
	movups	%xmm0, 72(%esp)
	movups	LC74, %xmm0
	shrl	$10, %ebx
	movups	%xmm0, 88(%esp)
	movups	LC75, %xmm0
	movups	%xmm0, 104(%esp)
	je	L1204
	movl	28(%esp), %ecx
	sall	$10, %ebx
	movl	%eax, 20(%esp)
	leal	56(%esp), %edi
	movl	%ebx, 16(%esp)
	movl	%ecx, 36(%esp)
	addl	%ebx, %ecx
	movl	%ecx, 32(%esp)
	.p2align 4
	.p2align 3
L1208:
	movl	36(%esp), %eax
	movl	%edi, %ebx
	leal	384(%eax), %esi
	leal	120(%esp), %eax
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L1206:
	prefetcht0	(%eax)
	movl	%eax, 40(%esp)
	leal	-384(%eax), %ecx
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1205:
	movl	44(%esp), %edi
	movl	(%ecx,%esi,8), %eax
	movl	4(%ecx,%esi,8), %edx
	xorl	(%edi,%esi,8), %eax
	xorl	4(%edi,%esi,8), %edx
	movl	%esi, %edi
	xorl	$1, %edi
	movl	%eax, 48(%esp)
	movl	(%ecx,%esi,8), %eax
	movl	%edx, 52(%esp)
	movl	4(%ecx,%esi,8), %edx
	addl	%eax, (%ebx,%edi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%ebx,%edi,8)
	mull	52(%esp)
	addl	%eax, (%ebx,%esi,8)
	adcl	%edx, 4(%ebx,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L1205
	movl	40(%esp), %eax
	addl	$8, 44(%esp)
	leal	248(%esp), %ecx
	addl	$64, %eax
	cmpl	44(%esp), %ecx
	jne	L1206
	movl	%ebx, %edi
	xorl	%esi, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1207:
	movl	4(%edi,%esi,8), %edx
	movl	(%edi,%esi,8), %eax
	xorl	248(%esp,%esi,8), %eax
	movl	%edx, %ebx
	xorl	252(%esp,%esi,8), %edx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$15, %ecx
	xorl	%ebx, %edx
	movl	$-1640531535, %ebx
	xorl	%ecx, %eax
	imull	$-1640531535, %edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	movl	%eax, (%edi,%esi,8)
	movl	%edx, 4(%edi,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L1207
	addl	$1024, 36(%esp)
	movl	36(%esp), %eax
	cmpl	%eax, 32(%esp)
	jne	L1208
	movl	20(%esp), %eax
	subl	16(%esp), %eax
	shrl	$6, %eax
	je	L1211
L1210:
	leal	120(%esp), %ebx
	movl	32(%esp), %ecx
	movl	%ebx, 44(%esp)
	leal	120(%esp,%eax,8), %ebx
	movl	%ebx, 40(%esp)
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L1213:
	xorl	%esi, %esi
	prefetcht0	384(%ecx)
	.p2align 4
	.p2align 3
L1212:
	movl	44(%esp), %edi
	movl	(%ecx,%esi,8), %eax
	movl	4(%ecx,%esi,8), %edx
	xorl	(%edi,%esi,8), %eax
	xorl	4(%edi,%esi,8), %edx
	movl	%esi, %edi
	xorl	$1, %edi
	movl	%eax, 48(%esp)
	movl	(%ecx,%esi,8), %eax
	movl	%edx, 52(%esp)
	movl	4(%ecx,%esi,8), %edx
	addl	%eax, (%ebx,%edi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%ebx,%edi,8)
	mull	52(%esp)
	addl	%eax, (%ebx,%esi,8)
	adcl	%edx, 4(%ebx,%esi,8)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L1212
	addl	$8, 44(%esp)
	addl	$64, %ecx
	movl	44(%esp), %eax
	cmpl	%eax, 40(%esp)
	jne	L1213
	movl	%ebx, %edi
L1211:
	movl	28(%esp), %eax
	movl	24(%esp), %ecx
	xorl	%ebx, %ebx
	addl	%eax, %ecx
	.p2align 4
	.p2align 3
L1214:
	movl	%ebx, %esi
	movl	-64(%ecx,%ebx,8), %eax
	movl	-60(%ecx,%ebx,8), %edx
	xorl	241(%esp,%ebx,8), %eax
	xorl	245(%esp,%ebx,8), %edx
	xorl	$1, %esi
	movl	%eax, 48(%esp)
	movl	-64(%ecx,%ebx,8), %eax
	movl	%edx, 52(%esp)
	movl	-60(%ecx,%ebx,8), %edx
	addl	%eax, (%edi,%esi,8)
	movl	48(%esp), %eax
	adcl	%edx, 4(%edi,%esi,8)
	mull	52(%esp)
	addl	%eax, (%edi,%ebx,8)
	adcl	%edx, 4(%edi,%ebx,8)
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	L1214
	movl	24(%esp), %eax
	movl	$-2048144761, %edx
	imull	$-1640531535, %eax, %ecx
	mull	%edx
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	leal	131(%esp), %edx
	call	_XXH3_mergeAccs
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
L1204:
	.cfi_restore_state
	movl	28(%esp), %ebx
	shrl	$6, %eax
	leal	56(%esp), %edi
	movl	%ebx, 32(%esp)
	jmp	L1210
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	_plotpixel
	.def	_plotpixel;	.scl	2;	.type	32;	.endef
_plotpixel:
LFB74:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$2, _rendmode
	jle	L1230
	cmpl	$200, _qsetmode
	je	L1242
L1230:
	call	_videoBeginDrawing
	movl	_ylookup, %eax
	movl	_frameplace, %edx
	addl	(%eax,%esi,4), %ebx
	leal	(%ebx,%edx), %ecx
	cmpl	%ecx, %edx
	jg	L1234
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	cmpl	%edx, %ebx
	jge	L1234
	movl	%edi, %eax
	movb	%al, (%ecx)
L1234:
	addl	$16, %esp
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L1242:
	.cfi_restore_state
	movzbl	%cl, %eax
	call	_paletteGetColor
	movl	$3089, %edx
	movl	%eax, %edi
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1231
	movl	$3089, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 28
	movl	$1, %ecx
	movl	$3089, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$1, (%esp)
	call	_inthash_add
L1231:
	movl	_ydim, %eax
	movl	%ebx, (%esp)
	movl	%edi, %ebx
	movl	$1, 12(%esp)
	subl	%esi, %eax
	movl	$1, 8(%esp)
	addl	$1, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glScissor
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	xorps	%xmm0, %xmm0
	movss	LC77, %xmm1
	shrl	$16, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movzbl	%al, %eax
	movl	$0x3f800000, 12(%esp)
	cvtsi2ssl	%eax, %xmm0
	movzbl	%bh, %eax
	divss	LC76, %xmm0
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movzbl	%bl, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glClearColor
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$16384, (%esp)
	call	*_glad_glClear
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glClearColor
	.cfi_def_cfa_offset 16
	movl	$3089, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_inthash_find
	testl	%eax, %eax
	je	L1229
	movl	$3089, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 28
	xorl	%ecx, %ecx
	movl	$3089, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$1, (%esp)
	call	_inthash_add
L1229:
	addl	$16, %esp
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
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__ZL10drawlinegliiii9palette_t.isra.0
	.def	__ZL10drawlinegliiii9palette_t.isra.0;	.scl	2;	.type	32;	.endef
__ZL10drawlinegliiii9palette_t.isra.0:
LFB79:
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
	movl	%edi, %esi
	movl	%eax, %edi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$76, %esp
	movzbl	4(%esi), %eax
	movl	(%esi), %ecx
	movl	%edx, -20(%ebp)
	movb	%al, -25(%ebp)
	movzbl	8(%esi), %eax
	movl	%ecx, -24(%ebp)
	movb	%al, -26(%ebp)
	movzbl	12(%esi), %eax
	movl	%ecx, %esi
	movl	%ebx, %ecx
	subl	%edx, %esi
	movb	%al, -27(%ebp)
	movl	_wx2, %eax
	subl	%edi, %ecx
	js	L1244
	cmpl	%eax, %edi
	jge	L1243
	movl	_wx1, %edx
	cmpl	%edx, %ebx
	jl	L1243
	cmpl	%edx, %edi
	jl	L1272
L1246:
	cmpl	%eax, %ebx
	jg	L1273
L1247:
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	testl	%esi, %esi
	js	L1249
	cmpl	%eax, -20(%ebp)
	jge	L1243
	movl	_wy1, %edx
	cmpl	-24(%ebp), %edx
	jg	L1243
	cmpl	%edx, -20(%ebp)
	jl	L1274
L1250:
	movl	-32(%ebp), %edx
	cmpl	%edx, -24(%ebp)
	jg	L1275
L1251:
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0, 40(%esp)
	movl	$1072693248, 44(%esp)
	movl	$0, 32(%esp)
	movl	$-1074790400, 36(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	fildl	_ydim
	fstpl	16(%esp)
	fildl	_xdim
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	fstpl	8(%esp)
	call	*_glad_glOrtho
	subl	$48, %esp
	cmpl	$4, _rendmode
	jne	L1253
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L1253:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	movl	$1, _polymost2d
	call	_inthash_find
	testl	%eax, %eax
	je	L1254
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1254:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1255
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1255:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1256
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1256:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1257
	movss	LC28, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1260
	je	L1257
L1260:
	movss	%xmm0, __ZL21polymost1UseColorOnly.lto_priv.0
	movss	%xmm0, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1257:
	movl	$1, (%esp)
	call	*_glad_glBegin
	subl	$4, %esp
	movl	$255, 12(%esp)
	movzbl	-27(%ebp), %eax
	movl	%eax, 8(%esp)
	movzbl	-26(%ebp), %eax
	movl	%eax, 4(%esp)
	movzbl	-25(%ebp), %eax
	movl	%eax, (%esp)
	call	*_glad_glColor4ub
	xorps	%xmm1, %xmm1
	movss	LC80, %xmm0
	cvtsi2ssl	-20(%ebp), %xmm1
	subl	$16, %esp
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%esp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glVertex2f
	xorps	%xmm1, %xmm1
	movss	LC80, %xmm0
	cvtsi2ssl	-24(%ebp), %xmm1
	subl	$8, %esp
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%esp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ebx, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	call	*_glad_glEnd
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1243
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1261
	je	L1243
L1261:
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1243:
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
L1244:
	.cfi_restore_state
	cmpl	%eax, %ebx
	jge	L1243
	movl	_wx1, %edx
	cmpl	%edx, %edi
	jl	L1243
	cmpl	%edx, %ebx
	jl	L1276
L1248:
	cmpl	%eax, %edi
	jle	L1247
	movl	%ecx, %edx
	subl	%edi, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%esi
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx2, %edi
	addl	%eax, -20(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1273:
	movl	%ecx, %edx
	subl	%ebx, %eax
	movl	%ecx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%esi
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx2, %ebx
	addl	%eax, -24(%ebp)
	movl	-32(%ebp), %ecx
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1272:
	movl	%ecx, %eax
	subl	%edi, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%esi
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx1, %edi
	addl	%eax, -20(%ebp)
	movl	-32(%ebp), %ecx
	movl	_wx2, %eax
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1249:
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jge	L1243
	movl	_wy1, %edx
	cmpl	%edx, -20(%ebp)
	jl	L1243
	cmpl	%edx, %eax
	jl	L1277
L1252:
	movl	-32(%ebp), %edx
	cmpl	%edx, -20(%ebp)
	jle	L1251
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%edx, %esi
	subl	-20(%ebp), %esi
	movl	%esi, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	addl	%eax, %edi
	movl	_wy2, %eax
	movl	%eax, -20(%ebp)
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1276:
	movl	%ecx, %eax
	subl	%ebx, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%esi
	movl	%ecx, -32(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx1, %ebx
	addl	%eax, -24(%ebp)
	movl	-32(%ebp), %ecx
	movl	_wx2, %eax
	jmp	L1248
	.p2align 4,,10
	.p2align 3
L1275:
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%edx, %esi
	subl	-24(%ebp), %esi
	movl	%esi, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	addl	%eax, %ebx
	movl	_wy2, %eax
	movl	%eax, -24(%ebp)
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1274:
	movl	%esi, %eax
	movl	%esi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-20(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	-36(%ebp), %ecx
	addl	%eax, %edi
	movl	_wy1, %eax
	movl	%eax, -20(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L1250
	.p2align 4,,10
	.p2align 3
L1277:
	movl	%esi, %eax
	movl	%esi, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	subl	-24(%ebp), %edx
	movl	%edx, %eax
	movl	%ecx, -36(%ebp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	-36(%ebp), %ecx
	addl	%eax, %ebx
	movl	_wy1, %eax
	movl	%eax, -24(%ebp)
	movl	_wy2, %eax
	movl	%eax, -32(%ebp)
	jmp	L1252
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__ZL14drawlinepixelsiiiic.lto_priv.0
	.def	__ZL14drawlinepixelsiiiic.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14drawlinepixelsiiiic.lto_priv.0:
LFB82:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ecx
	movzbl	52(%esp), %eax
	movl	%ecx, %ebp
	movb	%al, 23(%esp)
	movl	_wx2, %eax
	subl	%edx, %ebp
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%edx, 16(%esp)
	js	L1279
	cmpl	%eax, %ebx
	jge	L1278
	movl	_wx1, %edx
	cmpl	%esi, %edx
	jg	L1278
	cmpl	%ebx, %edx
	jg	L1302
L1281:
	cmpl	%eax, %esi
	jg	L1303
L1282:
	movl	_wy2, %eax
	testl	%ebp, %ebp
	js	L1284
	cmpl	%eax, %edi
	jge	L1278
	movl	_wy1, %edx
	cmpl	%ecx, %edx
	jg	L1278
	cmpl	%edi, %edx
	jg	L1304
L1285:
	cmpl	%eax, %ecx
	jg	L1305
L1286:
	movl	16(%esp), %eax
/APP
 # 206 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ebp, %eax
/APP
 # 206 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L1288
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L1278
	movl	%esi, %eax
	cmovns	%edi, %ecx
	cmovns	%ebx, %esi
	movl	%edx, 8(%esp)
	cmovns	%eax, %ebx
	sarl	$31, %edx
	movl	%ebp, %eax
	movl	%edx, 12(%esp)
	cltd
	sall	$12, %eax
	movl	%ecx, 16(%esp)
	shldl	$12, %ebp, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	%eax, %ebp
	movl	$2047, %eax
	subl	%esi, %eax
	movl	%ebp, %edx
	andl	$4095, %eax
/APP
 # 216 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$2048, %esi
	addl	$2048, %ebx
	movl	%eax, %edi
	sarl	$12, %esi
	sarl	$12, %ebx
	call	_videoBeginDrawing
	cmpl	%ebx, %esi
	jge	L1290
	addl	16(%esp), %edi
	movl	%ebx, 16(%esp)
	jmp	L1292
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1291:
	addl	%ebp, %edi
	addl	$1, %esi
	cmpl	%esi, 16(%esp)
	je	L1290
L1292:
	movl	_startumost, %edx
	movl	%edi, %eax
	sarl	$12, %eax
	movswl	(%edx,%esi,2), %edx
	cmpl	%eax, %edx
	jg	L1291
	movl	_startdmost, %edx
	movswl	(%edx,%esi,2), %edx
	cmpl	%eax, %edx
	jle	L1291
	movl	_ylookup, %ecx
	movl	_frameplace, %edx
	movl	(%ecx,%eax,4), %ebx
	addl	%edx, %ebx
	leal	(%ebx,%esi), %eax
	cmpl	%eax, %edx
	jg	L1291
	movl	_bytesperline, %ecx
	imull	_ydim, %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L1291
	movzbl	23(%esp), %ecx
	movb	%cl, (%eax)
	jmp	L1291
	.p2align 4,,10
	.p2align 3
L1279:
	cmpl	%eax, %esi
	jge	L1278
	movl	_wx1, %edx
	cmpl	%ebx, %edx
	jle	L1306
L1278:
	addl	$28, %esp
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
L1306:
	.cfi_restore_state
	cmpl	%esi, %edx
	jg	L1307
L1283:
	cmpl	%eax, %ebx
	jle	L1282
	subl	%ebx, %eax
	movl	%ecx, 24(%esp)
	movl	16(%esp), %ecx
	imull	%ebp
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx2, %ebx
	movl	24(%esp), %ecx
	addl	%eax, %edi
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1303:
	subl	%esi, %eax
	movl	%ecx, 24(%esp)
	movl	16(%esp), %ecx
	imull	%ebp
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	24(%esp), %ecx
	movl	_wx2, %esi
	addl	%eax, %ecx
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1302:
	movl	16(%esp), %eax
	subl	%ebx, %edx
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wx1, %ebx
	movl	24(%esp), %ecx
	addl	%eax, %edi
	movl	_wx2, %eax
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1284:
	cmpl	%eax, %ecx
	jge	L1278
	movl	_wy1, %edx
	cmpl	%edi, %edx
	jg	L1278
	cmpl	%ecx, %edx
	jg	L1308
L1287:
	cmpl	%eax, %edi
	jle	L1286
	subl	%edi, %eax
	imull	16(%esp)
	movl	%ecx, 24(%esp)
	movl	%ebp, %ecx
	sarl	$31, %ecx
	movl	%ebp, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wy2, %edi
	movl	24(%esp), %ecx
	addl	%eax, %ebx
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1290:
	addl	$28, %esp
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L1288:
	.cfi_restore_state
	testl	%ebp, %ebp
	movl	%ecx, %eax
	movl	%ebp, 8(%esp)
	cmovns	%edi, %ecx
	cmovns	%eax, %edi
	movl	16(%esp), %eax
	cmovns	%ebx, %esi
	sarl	$31, %ebp
	cltd
	movl	%ebp, 12(%esp)
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%ecx, 24(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	24(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	movl	$2047, %eax
	subl	%ecx, %eax
	andl	$4095, %eax
/APP
 # 238 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	2048(%ecx), %edx
	addl	$2048, %edi
	movl	%eax, %ebx
	sarl	$12, %edx
	sarl	$12, %edi
	movl	%edx, %ebp
	movl	%edi, 24(%esp)
	call	_videoBeginDrawing
	movl	24(%esp), %edx
	cmpl	%edx, %ebp
	jge	L1290
	movl	_ylookup, %edi
	leal	(%esi,%ebx), %eax
	movl	%edx, %esi
	movl	_frameplace, %ebx
	addl	(%edi,%ebp,4), %ebx
	jmp	L1295
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1294:
	addl	$1, %ebp
	addl	16(%esp), %eax
	addl	4(%edi), %ebx
	cmpl	%ebp, %esi
	je	L1290
L1295:
	movl	_startumost, %ecx
	movl	%eax, %edx
	sarl	$12, %edx
	movswl	(%ecx,%edx,2), %ecx
	cmpl	%ebp, %ecx
	jg	L1294
	movl	_startdmost, %ecx
	movswl	(%ecx,%edx,2), %ecx
	cmpl	%ebp, %ecx
	jle	L1294
	leal	(%edx,%ebx), %ecx
	movl	_frameplace, %edx
	movl	%ecx, 24(%esp)
	cmpl	%edx, %ecx
	jl	L1294
	movl	_bytesperline, %ecx
	imull	_ydim, %ecx
	addl	%edx, %ecx
	cmpl	%ecx, 24(%esp)
	jge	L1294
	movl	24(%esp), %edi
	movzbl	23(%esp), %ecx
	movb	%cl, (%edi)
	movl	_ylookup, %edi
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1307:
	movl	16(%esp), %eax
	subl	%esi, %edx
	movl	%ecx, 24(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ebp
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	24(%esp), %ecx
	movl	_wx1, %esi
	addl	%eax, %ecx
	movl	_wx2, %eax
	jmp	L1283
	.p2align 4,,10
	.p2align 3
L1305:
	movl	%ebp, %edx
	subl	%ecx, %eax
	movl	%ebp, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	16(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wy2, %ecx
	addl	%eax, %esi
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1304:
	movl	%ebp, %eax
	subl	%edi, %edx
	movl	%ebp, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wy1, %edi
	movl	24(%esp), %ecx
	addl	%eax, %ebx
	movl	_wy2, %eax
	jmp	L1285
	.p2align 4,,10
	.p2align 3
L1308:
	movl	%ebp, %eax
	subl	%ecx, %edx
	movl	%ebp, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	_wy1, %ecx
	addl	%eax, %esi
	movl	_wy2, %eax
	jmp	L1287
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	_editorDraw2dLine
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
_editorDraw2dLine:
LFB83:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edx, 28(%esp)
	movl	%ecx, %edx
	movl	%ecx, 24(%esp)
	movl	64(%esp), %ecx
	subl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ebx, %ecx
	movl	%edx, 36(%esp)
	movl	%ecx, 40(%esp)
	testl	%edx, %edx
	jns	L1310
	leal	32(%esp), %eax
	leal	24(%esp), %ebx
/APP
 # 307 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	28(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 308 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	32(%esp), %eax
L1310:
	movl	_xdim, %edx
	cmpl	%eax, %edx
	jle	L1311
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	js	L1311
	movl	40(%esp), %ecx
	testl	%eax, %eax
	js	L1379
L1312:
	cmpl	%edx, %ebx
	jl	L1317
	testl	%ecx, %ecx
	jne	L1318
L1376:
	subl	$1, %edx
	movl	%edx, 24(%esp)
L1374:
	movl	36(%esp), %eax
	testl	%eax, %eax
	js	L1315
L1316:
	movl	28(%esp), %edx
	movl	_ydim16, %eax
	cmpl	%eax, %edx
	jge	L1311
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	64(%esp), %esi
	testl	%esi, %esi
	js	L1372
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	testl	%edx, %edx
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	js	L1380
L1320:
	cmpl	%eax, %esi
	jl	L1323
	movl	36(%esp), %edx
	testl	%edx, %edx
	jne	L1381
L1324:
	subl	$1, %eax
	movl	%eax, 64(%esp)
L1323:
	movl	40(%esp), %edi
	testl	%edi, %edi
	jns	L1326
	leal	32(%esp), %eax
	leal	24(%esp), %ebx
/APP
 # 351 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	28(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 352 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
L1326:
	movl	24(%esp), %ebx
	movl	32(%esp), %ecx
	movl	%ebx, %eax
	subl	%ecx, %eax
/APP
 # 359 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	64(%esp), %edi
	movl	28(%esp), %esi
	movl	%eax, %edx
	leal	1(%eax), %eax
	movl	%eax, 36(%esp)
	movl	%edi, %eax
	subl	%esi, %eax
/APP
 # 360 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	leal	1(%eax), %ebp
	movl	%ebp, 40(%esp)
	cmpl	%eax, %edx
	jge	L1382
	cmpl	%esi, %edi
	jl	L1328
L1329:
	call	_videoBeginDrawing
	movl	_bytesperline, %eax
	movl	28(%esp), %esi
	movl	32(%esp), %ebx
	movl	36(%esp), %ecx
	movl	%eax, %edi
	movl	40(%esp), %edx
	movl	%eax, 16(%esp)
	imull	%esi, %edi
	movl	%ecx, %eax
	addl	%ebx, %edi
	addl	_frameplace, %edi
	cmpl	%edx, %ecx
	jl	L1330
	cmpl	64(%esp), %esi
	jl	L1378
	negl	16(%esp)
L1378:
	movl	68(%esp), %esi
	testl	%esi, %esi
	js	L1383
L1333:
	cmpl	$1, %edx
	je	L1384
	movl	$1, %edx
	jmp	L1344
	.p2align 4,,10
	.p2align 3
L1372:
	.cfi_restore 5
	.cfi_restore 7
	movl	48(%esp), %esi
	.cfi_restore 6
L1311:
	movl	44(%esp), %ebx
	xorl	%eax, %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1318:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	%edi, 52(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	leal	-1(%edx), %eax
	subl	%ebx, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.cfi_offset 7, -12
	call	_tabledivide64.lto_priv.3
	addl	%eax, 64(%esp)
	movl	_xdim, %eax
	movl	40(%esp), %ecx
	movl	52(%esp), %edi
	.cfi_restore 7
	subl	$1, %eax
	movl	%eax, 24(%esp)
L1317:
	movl	36(%esp), %eax
	testl	%eax, %eax
	js	L1319
	testl	%ecx, %ecx
	jns	L1316
L1315:
	leal	32(%esp), %eax
	leal	24(%esp), %ebx
/APP
 # 328 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	28(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 329 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L1316
	.p2align 4,,10
	.p2align 3
L1319:
	testl	%ecx, %ecx
	js	L1316
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1382:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	%ecx, %ebx
	jge	L1329
L1328:
	leal	32(%esp), %eax
	leal	24(%esp), %ebx
/APP
 # 364 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	leal	28(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 365 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	jmp	L1329
	.p2align 4,,10
	.p2align 3
L1379:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	testl	%ecx, %ecx
	jne	L1313
	movl	$0, 32(%esp)
	cmpl	%ebx, %edx
	jg	L1374
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1330:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%eax, %eax
	cmpl	24(%esp), %ebx
	leal	40(%esp), %ebx
	setl	%al
	leal	-1(%eax,%eax), %eax
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
/APP
 # 381 "source/build/src/2d.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ecx
	movl	68(%esp), %ebx
	movl	_bytesperline, %edx
	movl	%ecx, %eax
	testl	%ebx, %ebx
	js	L1332
	cmpl	$1, %edx
	je	L1385
L1344:
	cmpl	$-1, _drawlinepat
	je	L1386
L1345:
	testl	%ecx, %ecx
	jle	L1337
	xorl	%esi, %esi
	movl	$1, %ebp
	xorl	%ebx, %ebx
	jmp	L1350
	.p2align 4,,10
	.p2align 3
L1387:
	movl	%esi, %ebp
	addl	%edx, %edi
	andl	$31, %ebp
	movl	_pow2ulong(,%ebp,4), %ebp
L1350:
	testl	%ebp, _drawlinepat
	je	L1348
	movzbl	68(%esp), %ecx
	movb	%cl, (%edi)
	movl	36(%esp), %ecx
L1348:
	addl	40(%esp), %ebx
	cmpl	%ebx, %ecx
	jg	L1349
	movl	16(%esp), %ebp
	subl	%ecx, %ebx
	addl	%ebp, %edi
L1349:
	addl	$1, %esi
	cmpl	%eax, %esi
	jne	L1387
L1337:
	call	_videoEndDrawing
	movl	48(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	$1, %eax
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %ebx
	addl	$60, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1380:
	.cfi_restore_state
	movl	36(%esp), %ecx
	testl	%ecx, %ecx
	jne	L1388
L1321:
	movl	$0, 28(%esp)
	jmp	L1320
	.p2align 4,,10
	.p2align 3
L1313:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	36(%esp), %edx
	negl	%eax
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	24(%esp), %ebx
	addl	%eax, 28(%esp)
	movl	40(%esp), %ecx
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	$0, 32(%esp)
	movl	_xdim, %edx
	jmp	L1312
	.p2align 4,,10
	.p2align 3
L1383:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1, %edx
L1332:
	movl	_drawlinepat, %esi
	cmpl	$-1, %esi
	je	L1389
	testl	%ecx, %ecx
	jle	L1337
	movl	%edx, 20(%esp)
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movl	$1, %edx
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1390:
	movl	%ebp, %edx
	movl	_drawlinepat, %esi
	addl	20(%esp), %edi
	andl	$31, %edx
	movl	_pow2ulong(,%edx,4), %edx
L1342:
	testl	%esi, %edx
	je	L1340
	movzbl	(%edi), %edx
	movl	_blendtable, %ecx
	sall	$8, %edx
	subl	68(%esp), %edx
	movzbl	(%ecx,%edx), %edx
	movb	%dl, (%edi)
	movl	36(%esp), %ecx
L1340:
	addl	40(%esp), %ebx
	cmpl	%ebx, %ecx
	jg	L1341
	subl	%ecx, %ebx
	addl	16(%esp), %edi
L1341:
	addl	$1, %ebp
	cmpl	%eax, %ebp
	jne	L1390
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1386:
	testl	%ecx, %ecx
	jle	L1337
	movl	16(%esp), %ebp
	movl	68(%esp), %esi
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1347:
	movl	%esi, %ebx
	movb	%bl, (%edi)
	movl	36(%esp), %ebx
	addl	40(%esp), %ecx
	cmpl	%ecx, %ebx
	jg	L1346
	subl	%ebx, %ecx
	addl	%ebp, %edi
L1346:
	addl	%edx, %edi
	subl	$1, %eax
	jne	L1347
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1389:
	testl	%ecx, %ecx
	jle	L1337
	movl	68(%esp), %ebp
	xorl	%ebx, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1339:
	movzbl	(%edi), %ecx
	movl	_blendtable, %esi
	sall	$8, %ecx
	subl	%ebp, %ecx
	movzbl	(%esi,%ecx), %ecx
	movb	%cl, (%edi)
	movl	36(%esp), %ecx
	addl	40(%esp), %ebx
	cmpl	%ebx, %ecx
	jg	L1338
	subl	%ecx, %ebx
	addl	16(%esp), %edi
L1338:
	addl	%edx, %edi
	subl	$1, %eax
	jne	L1339
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1384:
	cmpl	$-1, _drawlinepat
	jne	L1345
	movl	68(%esp), %eax
	movl	68(%esp), %edx
	sall	$24, %eax
	sall	$16, %edx
	orl	%edx, %eax
	movl	68(%esp), %edx
	orl	68(%esp), %eax
	sall	$8, %edx
	orl	%edx, %eax
/APP
 # 60 "source/build/src/pragmas.cpp" 1
	cmpl $4, %ecx
	jae 1f
	testb $1, %cl
	jz 0f
	stosb
	0:
	shrl $1, %ecx
	rep
	stosw
	jmp 5f
	1:
	testl $1, %edi
	jz 2f
	stosb
	decl %ecx
	2:
	testl $2, %edi
	jz 3f
	stosw
	subl $2, %ecx
	3:
	movl %ecx, %ebx
	shrl $2, %ecx
	rep
	stosl
	testb $2, %bl
	jz 4f
	stosw
	4:
	testb $1, %bl
	jz 5f
	stosb
	5:
 # 0 "" 2
/NO_APP
	jmp	L1337
	.p2align 4,,10
	.p2align 3
L1381:
	subl	$1, %eax
	movl	40(%esp), %ecx
	movl	_xdim, %ebx
	subl	%esi, %eax
	imull	%edx
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	leal	-1(%ebx), %edx
	addl	24(%esp), %eax
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	testl	%eax, %eax
	movl	$0, %eax
	cmovle	%eax, %edx
	movl	_ydim16, %eax
	movl	%edx, 24(%esp)
	jmp	L1324
	.p2align 4,,10
	.p2align 3
L1388:
	movl	40(%esp), %eax
	negl	%edx
	movl	_xdim, %ebx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	subl	$1, %ebx
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	addl	32(%esp), %eax
	movl	64(%esp), %esi
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	testl	%eax, %eax
	movl	$0, %eax
	cmovle	%eax, %ebx
	movl	_ydim16, %eax
	movl	%ebx, 32(%esp)
	jmp	L1321
L1385:
	movl	40(%esp), %edx
	jmp	L1333
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	_plotlines2d.constprop.0
	.def	_plotlines2d.constprop.0;	.scl	2;	.type	32;	.endef
_plotlines2d.constprop.0:
LFB86:
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
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	movl	52(%esp), %ebp
	cmpl	$2, _rendmode
	jle	L1392
	cmpl	$200, _qsetmode
	je	L1405
L1392:
	movl	_drawlinepat, %eax
	xorl	%ebx, %ebx
	movl	$-1, _drawlinepat
	movl	%eax, 16(%esp)
	call	_videoBeginDrawing
	movl	%ebp, 52(%esp)
	.p2align 4
	.p2align 3
L1396:
	movl	52(%esp), %ebp
	movl	4(%esi,%ebx,4), %ecx
	movl	(%edi,%ebx,4), %edx
	movl	(%esi,%ebx,4), %eax
	movl	%ebp, 4(%esp)
	movl	4(%edi,%ebx,4), %ebp
	addl	$1, %ebx
	movl	%ebp, (%esp)
	call	_editorDraw2dLine
	cmpl	$4, %ebx
	jne	L1396
	call	_videoEndDrawing
	movl	16(%esp), %eax
	movl	%eax, _drawlinepat
L1391:
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
L1405:
	.cfi_restore_state
	movl	%ebp, %eax
	call	_paletteGetColor
	movl	%eax, %ebx
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1393
	movss	LC28, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1400
	je	L1393
L1400:
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movss	%xmm0, 4(%esp)
	movss	%xmm0, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
L1393:
	movl	$3, (%esp)
	call	*_glad_glBegin
	.cfi_def_cfa_offset 36
	movl	%ebx, %eax
	shrl	$16, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movzbl	%al, %eax
	movl	$1, 12(%esp)
	movl	%eax, 8(%esp)
	movzbl	%bh, %eax
	movzbl	%bl, %ebx
	movl	%ebx, (%esp)
	xorl	%ebx, %ebx
	movl	%eax, 4(%esp)
	call	*_glad_glColor4ub
	.cfi_def_cfa_offset 24
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	.p2align 4
	.p2align 3
L1395:
	movl	(%edi,%ebx,4), %eax
	movl	%eax, 4(%esp)
	movl	(%esi,%ebx,4), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*_glad_glVertex2i
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	cmpl	$5, %ebx
	jne	L1395
	call	*_glad_glEnd
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1391
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1401
	je	L1391
L1401:
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	jmp	L1391
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	_editorDraw2dCircle
	.def	_editorDraw2dCircle;	.scl	2;	.type	32;	.endef
_editorDraw2dCircle:
LFB87:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movzbl	88(%esp), %ebx
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	84(%esp), %edi
	movl	%esi, 68(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edi, 24(%esp)
	movb	%bl, 28(%esp)
	cmpl	$16384, %edi
	.cfi_offset 6, -16
	je	L1407
	movl	%eax, %esi
	movl	%ebp, 76(%esp)
	movswl	_sintable, %edx
	movl	%ecx, %eax
/APP
 # 467 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movswl	_sintable+1024, %edx
	.cfi_offset 5, -8
	leal	(%esi,%eax), %ebp
	movl	%ecx, %eax
/APP
 # 468 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
/APP
 # 468 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	12(%esp), %eax
	movl	%ebp, 28(%esp)
	movl	%ebp, %esi
	movl	%eax, 32(%esp)
	movl	%eax, %edi
	movl	%ebx, 20(%esp)
	movl	$576, %ebx
	.p2align 4
	.p2align 3
L1408:
	movswl	_sintable-1024(%ebx,%ebx), %edx
	movl	8(%esp), %eax
/APP
 # 472 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %ebp
	movl	%ebx, %ecx
	movl	16(%esp), %esi
	andl	$2047, %ecx
	addl	%eax, %esi
	movswl	_sintable(%ecx,%ecx), %edx
	movl	8(%esp), %eax
/APP
 # 473 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	24(%esp), %eax
/APP
 # 473 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, %edx
	movl	12(%esp), %edi
	movl	%esi, %ecx
	addl	$64, %ebx
	addl	%eax, %edi
	movl	20(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	_editorDraw2dLine
	cmpl	$2560, %ebx
	jne	L1408
	movl	28(%esp), %ebp
	movl	32(%esp), %eax
	movl	%edi, %edx
	movl	20(%esp), %ebx
	movl	72(%esp), %edi
	movl	%eax, 84(%esp)
	movl	%ebp, %ecx
	movl	%esi, %eax
	movl	76(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, 88(%esp)
	movl	68(%esp), %esi
	movl	64(%esp), %ebx
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_editorDraw2dLine
	.p2align 4,,10
	.p2align 3
L1407:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovns	%eax, %ebx
	movl	16(%esp), %eax
	movl	%ebx, %esi
	movl	%eax, %ebx
	addl	%esi, %ebx
	movl	%ebx, 24(%esp)
	js	L1406
	movl	12(%esp), %ecx
	addl	%esi, %ecx
	js	L1406
	movl	%eax, %ebx
	movl	_xdim, %edi
	subl	%esi, %ebx
	cmpl	%edi, %ebx
	jge	L1406
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	movl	12(%esp), %ebp
	movl	_ydim16, %edx
	subl	%esi, %ebp
	movl	%ebp, 20(%esp)
	movl	%edx, 8(%esp)
	cmpl	%edx, %ebp
	jge	L1493
	movl	%ecx, 32(%esp)
	call	_videoBeginDrawing
	movl	_bytesperline, %ebp
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	imull	%ebp, %edx
	leal	(%edx,%ecx), %eax
	movl	_drawlinepat, %edx
	addl	_frameplace, %eax
	movl	%eax, 40(%esp)
	movl	32(%esp), %ecx
	cmpl	$-1, %edx
	movl	%edx, 36(%esp)
	je	L1410
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, 44(%esp)
	jne	L1471
	movl	$1, %eax
	movl	$5, %ecx
	subl	%esi, %eax
	movl	%eax, 20(%esp)
	leal	(%esi,%esi), %eax
	subl	%eax, %ecx
	movl	%ecx, 32(%esp)
L1411:
	movl	$1, %ebx
	jmp	L1442
	.p2align 4,,10
	.p2align 3
L1425:
	movl	32(%esp), %ecx
	addl	%ecx, 20(%esp)
	subl	$1, %esi
	addl	$4, %ecx
	movl	%ecx, 32(%esp)
L1426:
	movl	44(%esp), %ecx
	addl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, _pow2ulong(,%ecx,4)
	je	L1427
	movl	%esi, %ecx
	imull	%ebp, %ecx
	movl	%ecx, 52(%esp)
	movl	%ebx, %ecx
	imull	%ebp, %ecx
	movl	%ecx, 56(%esp)
	movl	16(%esp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 48(%esp)
	cmpl	%edi, %ecx
	jnb	L1428
	movl	12(%esp), %ecx
	leal	(%ecx,%ebx), %edx
	cmpl	8(%esp), %edx
	jb	L1498
L1428:
	movl	16(%esp), %ecx
	leal	(%ecx,%ebx), %eax
	movl	%eax, 36(%esp)
	cmpl	%edi, %eax
	jnb	L1429
	movl	12(%esp), %ecx
	leal	(%esi,%ecx), %edx
	cmpl	8(%esp), %edx
	jb	L1499
	movl	36(%esp), %ecx
	subl	24(%esp), %ecx
	movl	%ecx, %ebp
	cmpl	%edi, %ecx
	jb	L1435
	movl	16(%esp), %edx
	subl	%esi, %edx
	cmpl	%edi, %edx
	jb	L1433
L1439:
	cmpl	%edi, 36(%esp)
	jnb	L1434
L1467:
	movl	12(%esp), %eax
	subl	%esi, %eax
	cmpl	8(%esp), %eax
	jb	L1459
	.p2align 4
	.p2align 3
L1434:
	cmpl	%edi, 48(%esp)
	jnb	L1427
	movl	12(%esp), %eax
	subl	%ebx, %eax
	cmpl	8(%esp), %eax
	jb	L1500
	.p2align 4
	.p2align 3
L1427:
	cmpl	%ebx, %esi
	jle	L1441
	movl	_bytesperline, %ebp
	movl	_drawlinepat, %edx
	addl	$1, %ebx
L1442:
	movl	20(%esp), %ecx
	leal	(%ebx,%ebx), %eax
	movl	%eax, 24(%esp)
	testl	%ecx, %ecx
	jns	L1425
	addl	%eax, %ecx
	addl	$2, 32(%esp)
	movl	%ecx, 20(%esp)
	jmp	L1426
L1493:
	movl	76(%esp), %ebp
	.cfi_restore 5
L1406:
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1471:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 36(%esp)
L1410:
	movl	8(%esp), %eax
	cmpl	%eax, 12(%esp)
	jb	L1412
	cmpl	%edi, 16(%esp)
	jnb	L1419
	cmpl	%eax, %ecx
	jb	L1501
	cmpl	%edi, 16(%esp)
	jnb	L1419
L1422:
	movl	8(%esp), %ebx
	movl	_drawlinepat, %edx
	cmpl	%ebx, 20(%esp)
	jnb	L1419
	movl	%ebp, %edx
	movl	40(%esp), %eax
	movzbl	28(%esp), %ecx
	imull	%esi, %edx
	subl	%edx, %eax
	movb	%cl, (%eax)
L1495:
	movl	_drawlinepat, %edx
	movl	_bytesperline, %ebp
L1419:
	movl	$1, %eax
	movl	$5, %ecx
	subl	%esi, %eax
	movl	%eax, 20(%esp)
	leal	(%esi,%esi), %eax
	subl	%eax, %ecx
	movl	%ecx, 32(%esp)
	movl	$1, %ecx
	cmpl	$-1, %edx
	je	L1424
	jmp	L1502
	.p2align 4,,10
	.p2align 3
L1507:
	movl	12(%esp), %eax
	addl	%esi, %eax
	cmpl	8(%esp), %eax
	jb	L1503
	movl	%ebp, %eax
	subl	36(%esp), %eax
	movl	%eax, 52(%esp)
	cmpl	%edi, %eax
	jb	L1452
	movl	16(%esp), %eax
	subl	%esi, %eax
	cmpl	%edi, %eax
	jb	L1450
L1456:
	cmpl	%edi, %ebp
	jnb	L1451
L1469:
	movl	12(%esp), %eax
	subl	%esi, %eax
	cmpl	8(%esp), %eax
	jb	L1463
	.p2align 4
	.p2align 3
L1451:
	cmpl	%edi, 24(%esp)
	jnb	L1458
	movl	12(%esp), %eax
	subl	%ecx, %eax
	cmpl	8(%esp), %eax
	jb	L1504
L1458:
	cmpl	%ecx, %esi
	jle	L1441
	movl	_bytesperline, %ebp
	addl	$1, %ecx
L1424:
	movl	20(%esp), %eax
	leal	(%ecx,%ecx), %ebx
	movl	%ebx, 36(%esp)
	testl	%eax, %eax
	js	L1505
	movl	32(%esp), %eax
	addl	%eax, 20(%esp)
	subl	$1, %esi
	addl	$4, %eax
	movl	%eax, 32(%esp)
	movl	16(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 24(%esp)
L1444:
	movl	%esi, %eax
	imull	%ebp, %eax
	movl	%eax, 44(%esp)
	movl	%ecx, %eax
	imull	%ebp, %eax
	movl	%eax, 48(%esp)
	cmpl	%edi, 24(%esp)
	jnb	L1445
	movl	12(%esp), %eax
	addl	%ecx, %eax
	cmpl	8(%esp), %eax
	jb	L1506
L1445:
	movl	16(%esp), %eax
	leal	(%ecx,%eax), %ebp
	cmpl	%edi, %ebp
	jb	L1507
	movl	%ebp, %eax
	subl	36(%esp), %eax
	movl	%eax, 52(%esp)
	cmpl	%edi, %eax
	jb	L1449
	movl	16(%esp), %eax
	subl	%esi, %eax
	cmpl	%edi, %eax
	jnb	L1451
L1450:
	movl	12(%esp), %eax
	addl	%ecx, %eax
	cmpl	8(%esp), %eax
	jb	L1508
L1454:
	subl	36(%esp), %eax
	cmpl	8(%esp), %eax
	jb	L1509
L1455:
	cmpl	%edi, 52(%esp)
	jnb	L1456
L1464:
	movl	12(%esp), %eax
	subl	%esi, %eax
	cmpl	8(%esp), %eax
	jnb	L1451
	movl	40(%esp), %eax
	movl	_frameplace, %edx
	subl	%ecx, %eax
	subl	44(%esp), %eax
	cmpl	%edx, %eax
	jl	L1457
	movl	_bytesperline, %ebx
	imull	_ydim, %ebx
	addl	%ebx, %edx
	cmpl	%edx, %eax
	jge	L1457
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
L1457:
	cmpl	%edi, %ebp
	jnb	L1451
L1463:
	movl	40(%esp), %eax
	movl	_frameplace, %ebp
	addl	%ecx, %eax
	subl	44(%esp), %eax
	cmpl	%ebp, %eax
	jl	L1451
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%ebp, %edx
	cmpl	%edx, %eax
	jge	L1451
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
	jmp	L1451
L1412:
	cmpl	%edi, 24(%esp)
	jnb	L1416
	movl	40(%esp), %edx
	movzbl	28(%esp), %eax
	movb	%al, (%esi,%edx)
L1416:
	cmpl	%edi, 16(%esp)
	jb	L1417
	cmpl	%edi, %ebx
	jnb	L1495
	movl	40(%esp), %eax
	movzbl	28(%esp), %ecx
	subl	%esi, %eax
	movb	%cl, (%eax)
	movl	_drawlinepat, %edx
	movl	_bytesperline, %ebp
	jmp	L1419
	.p2align 4,,10
	.p2align 3
L1449:
	movl	12(%esp), %eax
	addl	%esi, %eax
	cmpl	8(%esp), %eax
	jnb	L1452
L1465:
	movl	40(%esp), %eax
	movl	_frameplace, %ebx
	subl	%ecx, %eax
	addl	44(%esp), %eax
	cmpl	%ebx, %eax
	jl	L1452
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L1452
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
L1452:
	movl	16(%esp), %eax
	subl	%esi, %eax
	cmpl	%edi, %eax
	jb	L1450
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1505:
	addl	%ebx, %eax
	addl	$2, 32(%esp)
	movl	%eax, 20(%esp)
	jmp	L1444
L1432:
	movl	12(%esp), %ecx
	leal	(%esi,%ecx), %edx
	cmpl	8(%esp), %edx
	jnb	L1435
L1461:
	movl	40(%esp), %edx
	movl	_frameplace, %ecx
	subl	%ebx, %edx
	addl	52(%esp), %edx
	cmpl	%ecx, %edx
	jl	L1435
	movl	_bytesperline, %eax
	imull	_ydim, %eax
	addl	%eax, %ecx
	cmpl	%ecx, %edx
	jge	L1435
	movzbl	28(%esp), %ecx
	movb	%cl, (%edx)
L1435:
	movl	16(%esp), %edx
	subl	%esi, %edx
	cmpl	%edi, %edx
	jnb	L1460
L1433:
	movl	12(%esp), %ecx
	leal	(%ecx,%ebx), %edx
	cmpl	8(%esp), %edx
	jb	L1510
L1437:
	subl	24(%esp), %edx
	cmpl	8(%esp), %edx
	jb	L1511
L1438:
	cmpl	%edi, %ebp
	jnb	L1439
L1460:
	movl	12(%esp), %eax
	subl	%esi, %eax
	cmpl	8(%esp), %eax
	jnb	L1434
	movl	40(%esp), %eax
	movl	_frameplace, %ebp
	subl	%ebx, %eax
	subl	52(%esp), %eax
	cmpl	%ebp, %eax
	jl	L1440
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%ebp, %edx
	cmpl	%edx, %eax
	jge	L1440
	movzbl	28(%esp), %ecx
	movb	%cl, (%eax)
L1440:
	cmpl	%edi, 36(%esp)
	jnb	L1434
L1459:
	movl	40(%esp), %eax
	movl	_frameplace, %ecx
	addl	%ebx, %eax
	subl	52(%esp), %eax
	cmpl	%ecx, %eax
	jl	L1434
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L1434
	movzbl	28(%esp), %ecx
	movb	%cl, (%eax)
	jmp	L1434
L1429:
	movl	36(%esp), %ecx
	subl	24(%esp), %ecx
	movl	%ecx, %ebp
	cmpl	%edi, %ecx
	jb	L1432
	movl	16(%esp), %edx
	subl	%esi, %edx
	cmpl	%edi, %edx
	jnb	L1434
	jmp	L1433
L1441:
	movl	76(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
L1508:
	.cfi_restore_state
	movl	40(%esp), %ebx
	movl	_frameplace, %edx
	subl	%esi, %ebx
	addl	48(%esp), %ebx
	movl	%ebx, 56(%esp)
	cmpl	%edx, %ebx
	jl	L1454
	movl	_bytesperline, %ebx
	imull	_ydim, %ebx
	addl	%ebx, %edx
	movl	56(%esp), %ebx
	cmpl	%edx, %ebx
	jge	L1454
	movl	%ebx, %edx
	movzbl	28(%esp), %ebx
	movb	%bl, (%edx)
	jmp	L1454
L1509:
	movl	40(%esp), %eax
	movl	_frameplace, %edx
	subl	%esi, %eax
	subl	48(%esp), %eax
	cmpl	%edx, %eax
	jl	L1455
	movl	_bytesperline, %ebx
	imull	_ydim, %ebx
	addl	%ebx, %edx
	cmpl	%edx, %eax
	jge	L1455
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
	jmp	L1455
L1506:
	movl	40(%esp), %eax
	movl	_frameplace, %ebx
	addl	%esi, %eax
	addl	48(%esp), %eax
	cmpl	%ebx, %eax
	jl	L1445
	imull	_ydim, %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %eax
	jge	L1445
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
	jmp	L1445
L1504:
	movl	40(%esp), %eax
	movl	_frameplace, %ebp
	addl	%esi, %eax
	subl	48(%esp), %eax
	cmpl	%ebp, %eax
	jl	L1458
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%ebp, %edx
	cmpl	%edx, %eax
	jge	L1458
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
	jmp	L1458
L1503:
	movl	40(%esp), %eax
	movl	_frameplace, %ebx
	addl	%ecx, %eax
	addl	44(%esp), %eax
	cmpl	%ebx, %eax
	jl	L1448
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L1448
	movzbl	28(%esp), %ebx
	movb	%bl, (%eax)
L1448:
	movl	%ebp, %eax
	subl	36(%esp), %eax
	movl	%eax, 52(%esp)
	cmpl	%edi, %eax
	jb	L1465
	movl	16(%esp), %eax
	subl	%esi, %eax
	cmpl	%edi, %eax
	jnb	L1469
	jmp	L1450
L1498:
	movl	40(%esp), %eax
	movl	_frameplace, %ecx
	leal	(%esi,%eax), %edx
	addl	56(%esp), %edx
	cmpl	%ecx, %edx
	jl	L1428
	imull	_ydim, %ebp
	addl	%ecx, %ebp
	cmpl	%ebp, %edx
	jge	L1428
	movzbl	28(%esp), %ecx
	movb	%cl, (%edx)
	jmp	L1428
L1500:
	movl	40(%esp), %eax
	movl	_frameplace, %ecx
	addl	%esi, %eax
	subl	56(%esp), %eax
	cmpl	%ecx, %eax
	jl	L1427
	movl	_bytesperline, %edx
	imull	_ydim, %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L1427
	movzbl	28(%esp), %ecx
	movb	%cl, (%eax)
	jmp	L1427
L1499:
	movl	40(%esp), %eax
	movl	_frameplace, %ebp
	leal	(%eax,%ebx), %edx
	addl	52(%esp), %edx
	cmpl	%ebp, %edx
	jl	L1431
	movl	_bytesperline, %eax
	imull	_ydim, %eax
	addl	%eax, %ebp
	cmpl	%ebp, %edx
	jge	L1431
	movzbl	28(%esp), %ecx
	movb	%cl, (%edx)
L1431:
	movl	36(%esp), %ecx
	subl	24(%esp), %ecx
	movl	%ecx, %ebp
	cmpl	%edi, %ecx
	jb	L1461
	movl	16(%esp), %edx
	subl	%esi, %edx
	cmpl	%edi, %edx
	jb	L1433
	jmp	L1467
L1511:
	movl	40(%esp), %eax
	movl	_frameplace, %edx
	subl	%esi, %eax
	subl	56(%esp), %eax
	cmpl	%edx, %eax
	jl	L1438
	movl	_bytesperline, %ecx
	imull	_ydim, %ecx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L1438
	movzbl	28(%esp), %ecx
	movb	%cl, (%eax)
	jmp	L1438
L1510:
	movl	40(%esp), %ecx
	movl	_frameplace, %eax
	subl	%esi, %ecx
	addl	56(%esp), %ecx
	movl	%ecx, 60(%esp)
	cmpl	%eax, %ecx
	jl	L1437
	movl	_bytesperline, %ecx
	imull	_ydim, %ecx
	addl	%ecx, %eax
	movl	60(%esp), %ecx
	cmpl	%eax, %ecx
	jge	L1437
	movl	%ecx, %eax
	movzbl	28(%esp), %ecx
	movb	%cl, (%eax)
	jmp	L1437
L1417:
	cmpl	8(%esp), %ecx
	jnb	L1497
	movl	_bytesperline, %eax
	movl	40(%esp), %edx
	movzbl	28(%esp), %ecx
	imull	%esi, %eax
	movb	%cl, (%eax,%edx)
L1497:
	movl	_bytesperline, %ebp
	cmpl	%edi, %ebx
	jnb	L1422
	movl	40(%esp), %eax
	movzbl	28(%esp), %ecx
	subl	%esi, %eax
	movb	%cl, (%eax)
	movl	_bytesperline, %ebp
	jmp	L1422
L1502:
	movl	36(%esp), %eax
	movl	%eax, 44(%esp)
	jmp	L1411
L1501:
	movl	%ebp, %eax
	movl	40(%esp), %ebx
	movzbl	28(%esp), %ecx
	imull	%esi, %eax
	movb	%cl, (%eax,%ebx)
	movl	_bytesperline, %ebp
	jmp	L1422
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_editorGet2dScreenCoordinates
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
_editorGet2dScreenCoordinates:
LFB88:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_m32_sideview, %ecx
	testl	%ecx, %ecx
	jne	L1516
L1513:
	movl	28(%esp), %eax
	movl	36(%esp), %edx
/APP
 # 635 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	20(%esp), %edx
	movl	%eax, (%edx)
	movl	32(%esp), %eax
	movl	36(%esp), %edx
/APP
 # 636 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	je	L1514
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
L1514:
	movl	24(%esp), %edx
	movl	%eax, (%edx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1516:
	.cfi_restore_state
	movzwl	_m32_sideang, %eax
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	32(%esp), %esi
	leal	512(%eax), %edx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	negl	%esi
	movl	28(%esp), %eax
	movswl	_sintable(%edx,%edx), %ecx
	movl	%ecx, %edx
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	28(%esp), %esi
	movl	%ecx, %edx
	movl	32(%esp), %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	%eax, 32(%esp)
	movl	(%esp), %eax
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	%eax, 28(%esp)
	jmp	L1513
	.cfi_endproc
LFE88:
	.p2align 4
	.def	__ZL16editorDraw2dWalliiiiii;	.scl	3;	.type	32;	.endef
__ZL16editorDraw2dWalliiiiii:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$116, %esp
	.cfi_def_cfa_offset 136
	movl	_wall, %edi
	movl	136(%esp), %eax
	movl	144(%esp), %ecx
	movl	%edi, 24(%esp)
	movl	%eax, 76(%esp)
	movl	140(%esp), %eax
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	sall	$5, %eax
	addl	%edi, %eax
	movl	_m32_sideview, %edi
	movswl	10(%eax), %ebp
	movl	%eax, 36(%esp)
	movl	%ecx, %eax
	andl	$2, %eax
	movl	%edi, 56(%esp)
	orl	%edi, %eax
	movw	%bp, 72(%esp)
	movl	%ebp, 60(%esp)
	jne	L1518
	testl	%ebp, %ebp
	js	L1518
	cmpl	%ebp, %ebx
	jg	L1517
	.p2align 4
	.p2align 3
L1518:
	andl	$1, %ecx
	movzbl	_editorcolors+8, %ebp
	jne	L1520
	movswl	_linehighlight, %edi
	movl	60(%esp), %eax
	movl	%edi, 28(%esp)
	movl	%edi, %ecx
	testl	%eax, %eax
	js	L1580
	movl	36(%esp), %eax
	movl	60(%esp), %ebp
	movzwl	14(%eax), %edi
	movw	%di, 40(%esp)
	cmpl	$16383, %ebp
	jbe	L1581
L1522:
	movzbl	_editorcolors+4, %eax
	movzbl	_editorcolors+5, %edi
	testb	$1, 40(%esp)
	cmovne	%edi, %eax
	movl	%eax, %ebp
L1523:
	movl	28(%esp), %eax
	cmpl	%eax, %ebx
	je	L1525
	testw	%cx, %cx
	js	L1520
	sall	$5, %eax
	movl	%eax, %edi
	movl	24(%esp), %eax
	movswl	10(%eax,%edi), %eax
	cmpl	%ebx, %eax
	je	L1525
	.p2align 4
	.p2align 3
L1520:
	movl	36(%esp), %eax
	movl	%esi, %ecx
	movl	%ebx, 44(%esp)
	movl	%ecx, 52(%esp)
	movl	4(%eax), %edi
	movl	(%eax), %esi
	movl	%edx, 48(%esp)
	movzwl	8(%eax), %ebx
	movl	20(%esp), %eax
	movl	%esi, 88(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	%esi, %ecx
	movl	%edi, 40(%esp)
	movl	%eax, 12(%esp)
	leal	100(%esp), %eax
	subl	%edx, %ecx
	movl	%eax, 4(%esp)
	leal	104(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	24(%esp), %edi
	movswl	%bx, %edx
	movl	%edx, 80(%esp)
	sall	$5, %edx
	leal	(%edi,%edx), %eax
	movl	%edx, 84(%esp)
	movl	20(%esp), %edx
	movl	4(%eax), %edi
	movl	(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%edi, %edx
	subl	52(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	subl	48(%esp), %edx
	movl	%edx, 8(%esp)
	leal	92(%esp), %edx
	movl	%edx, 4(%esp)
	leal	96(%esp), %edx
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	subl	28(%esp), %esi
	movl	40(%esp), %ecx
	movl	%esi, %eax
	imull	%esi
	subl	%edi, %ecx
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
	imull	%ecx
	addl	%esi, %eax
	movl	%eax, 28(%esp)
	movl	44(%esp), %eax
	adcl	%edi, %edx
	movl	%edx, 32(%esp)
	movl	%eax, %edi
	andl	$7, %eax
	sarl	$3, %edi
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	movzbl	_show2dwall(%edi), %ecx
	movl	%edi, 68(%esp)
	movb	%al, 67(%esp)
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1582
L1527:
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	$2147483647, %ecx
	xorl	%eax, %eax
	cmpl	%esi, %ecx
	sbbl	%edi, %eax
	jge	L1530
L1528:
	movswl	_linehighlight, %eax
	movl	44(%esp), %ebx
	movzbl	_editorcolors+9, %ebp
	cmpl	%ebx, %eax
	je	L1531
	testw	%ax, %ax
	js	L1533
	movl	24(%esp), %esi
	sall	$5, %eax
	movswl	10(%esi,%eax), %eax
	cmpl	%ebx, %eax
	je	L1531
	.p2align 4
	.p2align 3
L1533:
	movl	92(%esp), %eax
	movl	100(%esp), %edi
	movl	%eax, 28(%esp)
	movl	104(%esp), %eax
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	movl	56(%esp), %ebp
	movzbl	%al, %eax
	movl	%eax, 60(%esp)
	testl	%ebp, %ebp
	jne	L1537
	movl	$0, 76(%esp)
	movl	_midydim16, %ecx
	movl	_halfxdim16, %edx
L1538:
	movl	96(%esp), %eax
	movl	%eax, 40(%esp)
	movl	36(%esp), %eax
	testb	$64, 14(%eax)
	jne	L1583
L1548:
	movl	40(%esp), %eax
	leal	(%edi,%ecx), %ebx
	addl	28(%esp), %ecx
	movl	%ecx, (%esp)
	leal	(%edx,%eax), %esi
	movl	24(%esp), %eax
	movl	%esi, %ecx
	addl	%edx, %eax
	movl	60(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%ebx, %edx
	call	_editorDraw2dLine
	movl	_showheightindicators, %esi
	testl	%esi, %esi
	je	L1549
	movl	_m32_sideview, %ebx
	testl	%ebx, %ebx
	je	L1584
L1549:
	cmpl	$255, 20(%esp)
	jle	L1555
	cmpw	$1, _editstatus
	je	L1556
L1555:
	movl	68(%esp), %esi
	movzbl	67(%esp), %ebx
	movzbl	_show2dwall(%esi), %eax
	andl	%ebx, %eax
	cmpb	%al, %bl
	je	L1556
L1517:
	addl	$116, %esp
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
L1530:
	.cfi_restore_state
	movl	_circlewall, %eax
	testl	%eax, %eax
	js	L1533
	cmpl	44(%esp), %eax
	je	L1536
	cmpl	60(%esp), %eax
	jne	L1533
L1536:
	movzbl	_editorcolors+14, %ebp
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1556:
	movl	24(%esp), %ebx
	addl	_halfxdim16, %ebx
	cmpl	$1, %ebx
	jle	L1517
	movl	_xdim, %eax
	subl	$2, %eax
	cmpl	%eax, %ebx
	jge	L1517
	addl	_midydim16, %edi
	movl	%edi, %edx
	cmpl	$1, %edi
	jle	L1517
	movl	_ydim16, %eax
	subl	$2, %eax
	cmpl	%eax, %edi
	jge	L1517
	movzbl	_editorcolors+15, %esi
	movswl	_pointhighlight, %eax
	cmpl	44(%esp), %eax
	je	L1558
	cmpl	$16383, %eax
	ja	L1559
	movl	36(%esp), %edi
	sall	$5, %eax
	addl	_wall, %eax
	movl	(%edi), %edi
	cmpl	%edi, (%eax)
	je	L1560
L1559:
	movl	$2, %ebp
L1561:
	movl	68(%esp), %edi
	movzbl	67(%esp), %ecx
	movzbl	_show2dwall(%edi), %eax
	andl	%ecx, %eax
	cmpb	%al, %cl
	jne	L1562
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 1035 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors+14, %ecx
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, %esi
L1562:
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L1565
	movl	36(%esp), %eax
	cmpw	$0, 10(%eax)
	js	L1565
	movl	76(%esp), %edi
	cmpl	%edi, 56(%esp)
	jge	L1564
	movzbl	_editorcolors+7, %esi
L1565:
	movl	$16384, 136(%esp)
	movl	%esi, %eax
	movl	%ebp, %ecx
	movzbl	%al, %esi
	movl	%ebx, %eax
	movl	%esi, 140(%esp)
	addl	$116, %esp
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
	jmp	_editorDraw2dCircle
	.p2align 4,,10
	.p2align 3
L1582:
	.cfi_restore_state
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%ebx), %ecx
	movl	80(%esp), %ebx
	sarl	$3, %ebx
	movzbl	_show2dwall(%ebx), %eax
	andl	%ecx, %eax
	cmpb	%cl, %al
	jne	L1527
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	$2147483647, %ecx
	xorl	%eax, %eax
	cmpl	%ebx, %ecx
	sbbl	%esi, %eax
	jl	L1528
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 924 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors+14, %ebx
	sarl	%eax
	subl	%eax, %ebx
	movl	%ebx, %ebp
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1583:
	movl	40(%esp), %ebp
	movl	%ebp, %eax
	subl	24(%esp), %eax
/APP
 # 972 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %esi
	movl	%eax, %ebx
	subl	%edi, %esi
	movl	%esi, %eax
/APP
 # 972 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %ebx
	setl	%al
	setge	%bl
	movzbl	%al, %eax
	movzbl	%bl, %ebx
	movl	%eax, %esi
	leal	(%eax,%ebp), %eax
	leal	(%eax,%edx), %ebp
	leal	(%ebx,%edi), %eax
	addl	%ecx, %eax
	movl	%eax, 72(%esp)
	movl	24(%esp), %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	60(%esp), %edx
	movl	%edx, 4(%esp)
	movl	28(%esp), %edx
	addl	%ebx, %edx
	addl	%ecx, %edx
	movl	%ebp, %ecx
	movl	%edx, (%esp)
	movl	72(%esp), %edx
	call	_editorDraw2dLine
	movl	40(%esp), %ecx
	movl	24(%esp), %eax
	movl	%edi, %edx
	subl	%ebx, %edx
	addl	_midydim16, %edx
	subl	%esi, %ecx
	subl	%esi, %eax
	movl	60(%esp), %esi
	addl	_halfxdim16, %ecx
	addl	_halfxdim16, %eax
	movl	%esi, 4(%esp)
	movl	28(%esp), %esi
	subl	%ebx, %esi
	addl	_midydim16, %esi
	movl	%esi, (%esp)
	call	_editorDraw2dLine
	movl	_midydim16, %ecx
	movl	_halfxdim16, %edx
	jmp	L1548
	.p2align 4,,10
	.p2align 3
L1537:
	movswl	44(%esp), %esi
	movl	%esi, %eax
	call	_sectorofwall
	cwtl
	leal	(%eax,%eax,4), %ebx
	movl	_sector, %eax
	sall	$3, %ebx
	addl	%ebx, %eax
	testb	$2, 14(%eax)
	je	L1585
	movl	40(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	addl	_sector, %ebx
	movl	%eax, 56(%esp)
	movl	84(%esp), %eax
	addl	_wall, %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	testb	$2, 14(%ebx)
	je	L1586
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	%eax, %ebx
	movl	36(%esp), %eax
	movzwl	10(%eax), %eax
	movw	%ax, 72(%esp)
L1540:
	movl	20(%esp), %ecx
	imull	_m32_sidecos, %ecx
	movl	56(%esp), %eax
	movl	76(%esp), %ebp
	movl	%ecx, %edx
	subl	%ebp, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	%ebx, %eax
	movl	%edx, 40(%esp)
	movl	%ecx, %edx
	subl	%ebp, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, 28(%esp)
	movl	28(%esp), %eax
	movl	$0, 76(%esp)
	addl	40(%esp), %edi
	movl	%eax, 92(%esp)
	cmpw	$0, 72(%esp)
	jns	L1587
L1542:
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_yax_getnextwall
	testw	%ax, %ax
	jns	L1588
L1545:
	movl	_halfxdim16, %edx
	movl	24(%esp), %eax
	movl	44(%esp), %esi
	movl	_midydim16, %ecx
	addl	%edx, %eax
	movl	%eax, _m32_wallscreenxy(,%esi,8)
	leal	(%edi,%ecx), %eax
	movl	%eax, _m32_wallscreenxy+4(,%esi,8)
	jmp	L1538
	.p2align 4,,10
	.p2align 3
L1531:
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 916 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%ebp, %ebx
	sarl	$3, %eax
	subl	%eax, %ebx
	movl	%ebx, %ebp
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1581:
	movl	24(%esp), %eax
	sall	$5, %ebp
	xorw	14(%eax,%ebp), %di
	movzbl	_editorcolors+2, %ebp
	andl	$1, %edi
	jne	L1523
	jmp	L1522
	.p2align 4,,10
	.p2align 3
L1585:
	movl	8(%eax), %eax
	movl	%eax, 56(%esp)
	movl	%eax, %ebx
	jmp	L1540
	.p2align 4,,10
	.p2align 3
L1525:
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 897 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$2, %eax
	addl	%eax, %ebp
	jmp	L1520
	.p2align 4,,10
	.p2align 3
L1580:
	movzbl	_editorcolors+15, %ebp
	cmpl	%edi, %ebx
	jne	L1520
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 887 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, %ebp
	jmp	L1520
	.p2align 4,,10
	.p2align 3
L1584:
	movl	24(%esp), %ecx
	movl	%edi, %edx
	subl	40(%esp), %ecx
	subl	28(%esp), %edx
	call	@getangle@8
	movl	36(%esp), %esi
	movl	%eax, %ebp
	movl	20(%esp), %eax
	movswl	8(%esi), %edx
	movl	%eax, 16(%esp)
	movl	4(%esi), %eax
	sall	$5, %edx
	addl	_wall, %edx
	addl	4(%edx), %eax
	sarl	%eax
	subl	52(%esp), %eax
	movl	%eax, 12(%esp)
	movl	(%esi), %eax
	addl	(%edx), %eax
	sarl	%eax
	subl	48(%esp), %eax
	movl	%eax, 8(%esp)
	leal	108(%esp), %eax
	movl	%eax, 4(%esp)
	leal	112(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movswl	12(%esi), %ebx
	testw	%bx, %bx
	jns	L1589
	cmpl	$2, _showheightindicators
	jne	L1549
	movl	20(%esp), %esi
	movl	$4096, %ebx
	movswl	_sintable(%ebp,%ebp), %eax
	cmpl	$4096, %esi
	cmovle	%esi, %ebx
	movl	%ebx, %edx
/APP
 # 1010 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1717986919, %esi
	movl	%eax, %ecx
	imull	%esi
	sarl	$31, %ecx
	leal	1536(%ebp), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$10, %edx
	subl	%ecx, %edx
	movl	%edx, 28(%esp)
	movl	%ebx, %edx
/APP
 # 1011 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	imull	%esi
	sarl	$31, %ecx
	sarl	$10, %edx
	movl	%edx, %esi
	movl	_m32_sideview, %edx
	subl	%ecx, %esi
	testl	%edx, %edx
	je	L1554
	movl	_m32_sidesin, %edx
	movl	%esi, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
L1554:
	movl	108(%esp), %eax
	movl	_midydim16, %edx
	movl	60(%esp), %ebp
	movl	112(%esp), %ebx
	movl	28(%esp), %ecx
	addl	%eax, %edx
	addl	%esi, %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebp, 4(%esp)
	addl	%ebx, %ecx
	addl	_halfxdim16, %ebx
	addl	_halfxdim16, %ecx
	movl	%ebx, %eax
	call	_editorDraw2dLine
	jmp	L1549
	.p2align 4,,10
	.p2align 3
L1588:
	movswl	%ax, %ebx
	movl	_drawlinepat, %esi
	movl	%ebx, %eax
	call	_sectorofwall
	cwtl
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	testb	$2, 14(%edx)
	je	L1590
	movl	%ebx, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movl	4(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1547:
	movl	20(%esp), %edx
	subl	56(%esp), %eax
	movl	$286331153, _drawlinepat
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_midydim16, %ecx
	movl	60(%esp), %ebp
	addl	%edi, %edx
	movl	24(%esp), %eax
	addl	_halfxdim16, %eax
	addl	%ecx, %edx
	movl	%ebp, 4(%esp)
	movl	%edx, (%esp)
	leal	(%edi,%ecx), %edx
	movl	%eax, %ecx
	call	_editorDraw2dLine
	movl	%esi, _drawlinepat
	jmp	L1545
	.p2align 4,,10
	.p2align 3
L1587:
	movl	36(%esp), %eax
	movswl	12(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L1591
	movl	36(%esp), %ebx
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	20(%esp), %ecx
	imull	_m32_sidecos, %ecx
	movl	%eax, 76(%esp)
L1544:
	movl	76(%esp), %eax
	movl	%ecx, %edx
	subl	56(%esp), %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	60(%esp), %ecx
	movl	_midydim16, %ebx
	movl	24(%esp), %eax
	addl	_halfxdim16, %eax
	movl	%ecx, 4(%esp)
	leal	(%edi,%edx), %ecx
	addl	_midydim16, %ecx
	addl	%edi, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	_editorDraw2dLine
	jmp	L1542
	.p2align 4,,10
	.p2align 3
L1589:
	movswl	44(%esp), %eax
	movl	_sector, %esi
	call	_sectorofwall
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%eax,4), %eax
	movl	8(%esi,%edx,8), %edx
	movl	8(%esi,%eax,8), %eax
	cmpl	%eax, %edx
	je	L1592
L1551:
	cmpl	%eax, %edx
	movl	20(%esp), %ebx
	movl	$4096, %ecx
	setl	%al
	movzbl	%al, %eax
	sall	$10, %eax
	movl	%eax, %esi
	leal	1024(%eax,%ebp), %eax
	andl	$2047, %eax
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, %edx
/APP
 # 1001 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	$1717986919, %eax
	imull	%ebx
	sarl	$31, %ebx
	leal	512(%esi,%ebp), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$10, %edx
	subl	%ebx, %edx
	movl	%edx, 28(%esp)
	movl	%ecx, %edx
/APP
 # 1002 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	$1717986919, %eax
	movl	_m32_sideview, %ecx
	imull	%ebx
	sarl	$31, %ebx
	movl	%edx, %esi
	sarl	$10, %esi
	movl	%esi, %eax
	subl	%ebx, %eax
	testl	%ecx, %ecx
	je	L1553
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
L1553:
	movl	112(%esp), %esi
	movl	28(%esp), %ecx
	movl	_halfxdim16, %ebx
	addl	108(%esp), %eax
	addl	%esi, %ecx
	addl	_midydim16, %eax
	movl	108(%esp), %edx
	addl	%ebx, %ecx
	addl	%esi, %ebx
	movl	60(%esp), %esi
	movl	%eax, (%esp)
	addl	_midydim16, %edx
	movl	%ebx, %eax
	movl	%esi, 4(%esp)
	call	_editorDraw2dLine
	jmp	L1549
	.p2align 4,,10
	.p2align 3
L1592:
	cmpl	$2, _showheightindicators
	jne	L1549
	jmp	L1551
	.p2align 4,,10
	.p2align 3
L1591:
	movl	8(%eax), %eax
	movl	%eax, 76(%esp)
	jmp	L1544
	.p2align 4,,10
	.p2align 3
L1590:
	movl	8(%edx), %eax
	jmp	L1547
L1560:
	movl	36(%esp), %edi
	movl	4(%edi), %edi
	cmpl	%edi, 4(%eax)
	jne	L1559
	.p2align 4
	.p2align 3
L1558:
	movl	_totalclock, %edi
	movl	%edi, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 1028 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	xorl	%eax, %eax
	andl	$16, %edi
	setne	%al
	movl	%ecx, %esi
	movl	%eax, %ebp
	addl	$2, %ebp
	jmp	L1561
L1564:
	movzbl	_editorcolors+4, %eax
	cmove	%eax, %esi
	jmp	L1565
L1586:
	movl	36(%esp), %eax
	movl	8(%ebx), %ebx
	movzwl	10(%eax), %eax
	movw	%ax, 72(%esp)
	jmp	L1540
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	_editorGet2dSpriteColor
	.def	_editorGet2dSpriteColor;	.scl	2;	.type	32;	.endef
_editorGet2dSpriteColor:
LFB91:
	.cfi_startproc
	subl	$1052, %esp
	.cfi_def_cfa_offset 1056
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%esi, 1040(%esp)
	movl	%edi, 1044(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	17(%eax), %edi
	movswl	14(%eax), %esi
	movl	_palookup(,%edi,4), %eax
	movzbl	_tilecols(%esi), %ecx
	testl	%eax, %eax
	je	L1594
	testl	%ecx, %ecx
	je	L1595
	movl	%ebx, 1036(%esp)
	movzbl	(%eax,%ecx), %edx
	.cfi_offset 3, -20
	movzbl	_blackcol, %ebx
	movl	%edx, %eax
	subl	%ebx, %eax
/APP
 # 1058 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	1036(%esp), %ebx
	.cfi_restore 3
	cmpl	$4, %eax
	jg	L1593
L1596:
	movl	_palookup, %eax
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	L1627
L1595:
	movl	%ebp, 1048(%esp)
	.cfi_offset 5, -8
	movl	_waloff(,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L1628
	movl	%ebx, 1036(%esp)
	.cfi_offset 3, -20
L1598:
	leal	12(%esp), %ebx
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
	movswl	_tilesiz+2(,%esi,4), %eax
	movswl	_tilesiz(,%esi,4), %edx
	imull	%eax, %edx
	movl	%ebp, %eax
	leal	(%edx,%ebp), %ecx
	testl	%edx, %edx
	jle	L1601
	.p2align 4
	.p2align 4
	.p2align 3
L1602:
	movzbl	(%eax), %edx
	addl	$1, %eax
	addl	$1, 12(%esp,%edx,4)
	cmpl	%ecx, %eax
	jne	L1602
L1601:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1604:
	movl	(%ebx,%eax,4), %ecx
	cmpl	%ecx, %edx
	cmovb	%ecx, %edx
	cmovb	%eax, %ebp
	addl	$1, %eax
	cmpl	$240, %eax
	jne	L1604
	movzbl	_whitecol, %eax
	cmpb	%al, _blackcol
	jnb	L1605
	jmp	L1607
	.p2align 4,,10
	.p2align 3
L1629:
	movzbl	_curpalette+5(,%ebp,4), %eax
	movzbl	_curpalette+4(,%ebp,4), %edx
	movzbl	_curpalette+1(,%ebp,4), %ebx
	addl	%eax, %edx
	movzbl	_curpalette+6(,%ebp,4), %eax
	addl	%eax, %edx
	movzbl	_curpalette(,%ebp,4), %eax
	addl	%ebx, %eax
	movzbl	_curpalette+2(,%ebp,4), %ebx
	addl	%ebx, %eax
	cmpl	%eax, %edx
	jle	L1606
	addl	$1, %ebp
L1607:
	cmpl	$239, %ebp
	jle	L1629
L1606:
	movl	$239, %eax
	subl	$4, %ebp
	cmpl	%eax, %ebp
	cmovg	%eax, %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	cmovs	%eax, %ebp
	movl	%ebp, %eax
L1608:
	movb	%al, _tilecols(%esi)
	movl	_palookup(,%edi,4), %eax
	movl	1036(%esp), %ebx
	.cfi_restore 3
	movzbl	(%eax,%ebp), %edx
	movl	1048(%esp), %ebp
	.cfi_restore 5
L1593:
	movl	1040(%esp), %esi
	movl	1044(%esp), %edi
	movl	%edx, %eax
	addl	$1052, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1631:
	.cfi_def_cfa_offset 1056
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	_curpalette-3(,%ebp,4), %eax
	movzbl	_curpalette-4(,%ebp,4), %edx
	movzbl	_curpalette+1(,%ebp,4), %ebx
	addl	%eax, %edx
	movzbl	_curpalette-2(,%ebp,4), %eax
	addl	%eax, %edx
	movzbl	_curpalette(,%ebp,4), %eax
	addl	%ebx, %eax
	movzbl	_curpalette+2(,%ebp,4), %ebx
	addl	%ebx, %eax
	cmpl	%eax, %edx
	jle	L1630
	subl	$1, %ebp
L1605:
	testl	%ebp, %ebp
	jne	L1631
	movl	$4, %eax
	movl	$4, %ebp
	jmp	L1608
L1628:
	.cfi_restore 3
	movl	%esi, %eax
	call	_tileLoad
	testb	%al, %al
	je	L1599
	movl	%ebx, 1036(%esp)
	.cfi_offset 3, -20
	movl	_waloff(,%esi,4), %ebp
	jmp	L1598
L1594:
	.cfi_restore 3
	.cfi_restore 5
	xorl	%edi, %edi
	testl	%ecx, %ecx
	je	L1595
	jmp	L1596
L1627:
	movzbl	(%eax,%ecx), %edx
	jmp	L1593
L1599:
	.cfi_offset 5, -8
	movzbl	_editorcolors+3, %edx
	movl	1048(%esp), %ebp
	.cfi_restore 5
	jmp	L1593
L1630:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	$239, %eax
	addl	$4, %ebp
	cmpl	%eax, %ebp
	cmovg	%eax, %ebp
	movl	%ebp, %eax
	movzbl	%al, %ebp
	jmp	L1608
	.cfi_endproc
LFE91:
	.p2align 4
	.def	__ZL18editorDraw2dSpriteiiiii;	.scl	3;	.type	32;	.endef
__ZL18editorDraw2dSpriteiiiii:
LFB92:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$148, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	_sprite, %esi
	movl	%edx, 68(%esp)
	movswl	_m32_sideang, %edx
	movl	%eax, 60(%esp)
	movl	12(%ebp), %eax
	movl	%ecx, 76(%esp)
	movl	%eax, 88(%esp)
	imull	$44, %edi, %eax
	addl	%eax, %esi
	movl	%eax, 44(%esp)
	movl	_m32_sideview, %eax
	movzwl	12(%esi), %ecx
	testl	%eax, %eax
	movl	%eax, 84(%esp)
	movl	$0, %eax
	cmovne	%edx, %eax
	movswl	14(%esi), %edx
	movw	%cx, 64(%esp)
	movl	%eax, 48(%esp)
	movzwl	28(%esi), %eax
	movw	%ax, 52(%esp)
	movl	%ecx, %eax
	andl	$1, %eax
	movzbl	_spritecol2d(%eax,%edx,2), %ecx
	cmpw	$0, 24(%esi)
	js	L1690
	testb	%cl, %cl
	je	L1636
	movzbl	%cl, %eax
	movzbl	_editorcolors(%eax), %eax
	movl	%eax, 56(%esp)
L1635:
	movl	4(%esi), %eax
	movl	(%esi), %edx
	movl	%eax, 80(%esp)
	cmpw	$1, _editstatus
	je	L1691
L1639:
	movl	88(%esp), %ebx
	leal	92(%esp), %eax
	movl	80(%esp), %edi
	subl	68(%esp), %edx
	subl	76(%esp), %edi
	movl	%eax, 4(%esp)
	leal	96(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	84(%esp), %ecx
	movl	92(%esp), %edi
	testl	%ecx, %ecx
	je	L1645
	imull	_m32_sidecos, %ebx
	movl	8(%esi), %eax
	subl	60(%esp), %eax
	movl	%ebx, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %edi
	movl	%edi, 92(%esp)
L1645:
	movl	96(%esp), %ebx
	movl	88(%esp), %edx
	movl	$128, %eax
	movl	%ebx, 84(%esp)
/APP
 # 1145 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	addl	_halfxdim16, %ebx
	negl	%ecx
	movl	%ecx, %edx
	cmpl	%ecx, %ebx
	jl	L1632
	movl	_xdim, %ecx
	addl	%eax, %ecx
	cmpl	%ecx, %ebx
	jge	L1632
	movl	_midydim16, %ecx
	addl	%edi, %ecx
	movl	%ecx, 68(%esp)
	cmpl	%ecx, %edx
	jg	L1632
	addl	_ydim16, %eax
	cmpl	%eax, %ecx
	jge	L1632
	movswl	52(%esp), %eax
	movl	48(%esp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 52(%esp)
	movl	56(%esp), %ecx
	movb	%cl, 76(%esp)
	cmpl	$512, 88(%esp)
	jg	L1647
	movzbl	%cl, %eax
	movl	%eax, 80(%esp)
L1648:
	movzbl	76(%esp), %eax
	movl	68(%esp), %edx
	movl	$4, %ecx
	movl	$16384, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_editorDraw2dCircle
	movl	52(%esp), %ebx
	movl	88(%esp), %edx
	leal	2560(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1155 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$715827883, %ecx
	movl	%eax, 76(%esp)
	imull	%ecx
	movl	76(%esp), %eax
	sarl	$31, %eax
	sarl	$7, %edx
	subl	%eax, %edx
	movl	%ebx, %eax
	andl	$2047, %eax
	movl	%edx, 56(%esp)
	movl	88(%esp), %edx
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1156 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	imull	%ecx
	movl	60(%esp), %eax
	sarl	$31, %eax
	sarl	$7, %edx
	subl	%eax, %edx
	movl	%edx, 68(%esp)
	movl	%edx, %eax
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	je	L1650
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
L1650:
	movl	68(%esp), %eax
	movl	84(%esp), %ecx
	movl	56(%esp), %ebx
	movl	_midydim16, %edx
	addl	%edi, %eax
	movl	%eax, 68(%esp)
	movl	_halfxdim16, %eax
	addl	%ecx, %ebx
	movl	%ebx, 56(%esp)
	addl	%eax, %ebx
	addl	%ecx, %eax
	movl	80(%esp), %ecx
	movl	%ebx, 48(%esp)
	leal	(%edx,%edi), %ebx
	addl	68(%esp), %edx
	movl	%ecx, 4(%esp)
	movl	48(%esp), %ecx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	_editorDraw2dLine
	testb	$1, 65(%esp)
	jne	L1692
L1651:
	testb	$32, 64(%esp)
	jne	L1693
	movzwl	64(%esp), %eax
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1632
	movswl	14(%esi), %eax
	movzbl	20(%esi), %edx
	movswl	_tilesiz(,%eax,4), %eax
/APP
 # 1221 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	52(%esp), %eax
	addl	$256, %eax
	andl	$512, %eax
	shrl	$9, %eax
	movl	%eax, 48(%esp)
	xorl	$1, %eax
	movl	%eax, 44(%esp)
	testb	$64, 12(%esi)
	jne	L1662
	movl	76(%esp), %eax
	movl	$715827883, %ecx
	imull	%ecx
	movl	76(%esp), %eax
	sarl	$31, %eax
	sarl	$10, %edx
	subl	%eax, %edx
	movl	60(%esp), %eax
	movl	%edx, 56(%esp)
	imull	%ecx
	movl	60(%esp), %eax
	movl	_m32_sideview, %ecx
	sarl	$31, %eax
	sarl	$10, %edx
	subl	%eax, %edx
	movl	%edx, 68(%esp)
	movl	%edx, %eax
	testl	%ecx, %ecx
	je	L1663
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
L1663:
	movl	84(%esp), %esi
	movl	_midydim16, %edx
	movl	%edi, %ebx
	subl	68(%esp), %ebx
	movl	%esi, %eax
	subl	56(%esp), %eax
	addl	%edi, %edx
	movl	%eax, %ecx
	movl	%eax, 76(%esp)
	movl	_halfxdim16, %eax
	addl	%eax, %ecx
	addl	%esi, %eax
	movl	80(%esp), %esi
	movl	%esi, 4(%esp)
	movl	_midydim16, %esi
	addl	%ebx, %esi
	movl	%esi, (%esp)
	call	_editorDraw2dLine
	testb	$1, 65(%esp)
	jne	L1694
L1664:
	movl	52(%esp), %esi
	movl	88(%esp), %edx
	leal	1024(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1244 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $13, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	40(%esp), %ecx
	imull	%ecx, %eax
	testl	%eax, %eax
	leal	4095(%eax), %edx
	cmovs	%edx, %eax
	movl	88(%esp), %edx
	sarl	$12, %eax
	movl	%eax, %ebx
	leal	512(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1245 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $13, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%ecx, %eax
	leal	4095(%eax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	_m32_sideview, %edx
	sarl	$12, %eax
	movl	%eax, %esi
	testl	%edx, %edx
	je	L1666
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
L1666:
	movl	_midydim16, %edx
	movl	%edi, %eax
	subl	%esi, %eax
	addl	%edi, %esi
	movl	%eax, 88(%esp)
	addl	%edi, %edx
	movl	84(%esp), %eax
	movl	%edx, 68(%esp)
	movl	80(%esp), %edx
	subl	%ebx, %eax
	movl	%eax, 76(%esp)
	movl	%eax, %ecx
	movl	_halfxdim16, %eax
	movl	%edx, 4(%esp)
	movl	88(%esp), %edx
	addl	_midydim16, %edx
	addl	%eax, %ecx
	addl	84(%esp), %eax
	movl	%edx, (%esp)
	movl	68(%esp), %edx
	call	_editorDraw2dLine
	movl	%esi, 68(%esp)
	movl	84(%esp), %esi
	movl	_midydim16, %eax
	leal	(%esi,%ebx), %ecx
	movl	_halfxdim16, %ebx
	movl	%ecx, 60(%esp)
	leal	(%eax,%edi), %edx
	addl	68(%esp), %eax
	addl	%ebx, %ecx
	addl	%esi, %ebx
	movl	80(%esp), %esi
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%esi, 4(%esp)
	call	_editorDraw2dLine
	testb	$1, 65(%esp)
	je	L1632
	movl	_halfxdim16, %eax
	movl	60(%esp), %esi
	movl	_midydim16, %edx
	leal	1(%esi,%eax), %ecx
	movl	84(%esp), %esi
	addl	%edi, %edx
	leal	1(%esi,%eax), %ebx
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	76(%esp), %ecx
	movl	_midydim16, %edx
	leal	-1(%esi,%eax), %ebx
	leal	-1(%ecx,%eax), %ecx
	movl	80(%esp), %eax
	addl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	88(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	60(%esp), %ebx
	movl	_midydim16, %edx
	leal	-1(%ebx,%eax), %ecx
	leal	-1(%esi,%eax), %ebx
	movl	80(%esp), %eax
	addl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	76(%esp), %ecx
	movl	_midydim16, %edx
	leal	1(%esi,%eax), %ebx
	leal	1(%ecx,%eax), %ecx
	movl	80(%esp), %eax
	addl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	88(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %ebx
	movl	60(%esp), %ecx
	leal	(%ecx,%ebx), %eax
	movl	_midydim16, %ecx
	movl	%eax, 84(%esp)
	movl	80(%esp), %eax
	leal	-1(%ecx,%edi), %edx
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	leal	-1(%eax,%ecx), %eax
	movl	84(%esp), %ecx
	movl	%eax, (%esp)
	leal	(%ebx,%esi), %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %ebx
	movl	_midydim16, %eax
	movl	76(%esp), %edx
	leal	(%edx,%ebx), %ecx
	leal	1(%eax,%edi), %edx
	movl	%edx, 84(%esp)
	movl	80(%esp), %edx
	movl	%edx, 4(%esp)
	movl	88(%esp), %edx
	leal	1(%edx,%eax), %eax
	movl	84(%esp), %edx
	movl	%eax, (%esp)
	leal	(%ebx,%esi), %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	_midydim16, %ebx
	movl	60(%esp), %ecx
	leal	1(%ebx,%edi), %edx
	leal	(%esi,%eax), %ebx
	addl	%eax, %ecx
	movl	80(%esp), %eax
	movl	%edx, 84(%esp)
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	_midydim16, %eax
	leal	1(%edx,%eax), %eax
	movl	84(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	76(%esp), %ecx
	movl	_halfxdim16, %eax
	movl	_midydim16, %edx
	addl	%eax, %ecx
	addl	%esi, %eax
	movl	80(%esp), %esi
	leal	-1(%edx,%edi), %ebx
	movl	%esi, 12(%ebp)
	movl	88(%esp), %esi
	leal	-1(%esi,%edx), %edx
	movl	%edx, 8(%ebp)
	leal	-12(%ebp), %esp
	movl	%ebx, %edx
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
	jmp	_editorDraw2dLine
	.p2align 4,,10
	.p2align 3
L1636:
	.cfi_restore_state
	testb	$1, 64(%esp)
	je	L1637
	movzbl	_editorcolors+5, %eax
	movl	%eax, 56(%esp)
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1693:
	movl	44(%esp), %eax
	addl	_sprite, %eax
	movzwl	12(%eax), %edx
	notl	%edx
	andl	$48, %edx
	jne	L1668
	movswl	22(%eax), %eax
	movl	%eax, %ecx
	cltd
	imull	%eax, %ecx
	shldl	$12, %eax, %edx
	sall	$12, %eax
	movl	%eax, 68(%esp)
	movl	%edx, 72(%esp)
	addl	$16777216, %ecx
L1653:
	call	@ksqrt@4
	movl	72(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%eax, %ebx
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.3
	movswl	14(%esi), %ecx
	movzbl	21(%esi), %edx
	movl	%eax, 60(%esp)
	movswl	_tilesiz+2(,%ecx,4), %eax
/APP
 # 1175 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movzbl	20(%esi), %edx
	movswl	_tilesiz(,%ecx,4), %eax
/APP
 # 1176 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
/APP
 # 1176 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	88(%esp), %edx
	movl	68(%esp), %eax
	sarl	%esi
	movl	%esi, 76(%esp)
/APP
 # 1177 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	sarl	%eax
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	cltd
	movl	%ebx, 12(%esp)
	movl	%eax, %ebx
	movl	%edx, %esi
	sall	$12, %ebx
	shldl	$12, %eax, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	60(%esp), %edx
	movl	%eax, 56(%esp)
	movl	68(%esp), %eax
/APP
 # 1178 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
	sarl	%eax
	imull	_m32_sidecos, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	52(%esp), %esi
	movss	76(%esp), %xmm5
	movl	%edx, 60(%esp)
	movss	56(%esp), %xmm6
	movss	60(%esp), %xmm7
	leal	1536(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 88(%esp)
	leal	1024(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 68(%esp)
	movl	76(%esp), %eax
	negl	%eax
	movl	%eax, 52(%esp)
	movl	56(%esp), %eax
	movss	52(%esp), %xmm2
	negl	%eax
	movl	%eax, 52(%esp)
	movl	%edx, %eax
	movss	52(%esp), %xmm0
	movaps	%xmm2, %xmm1
	negl	%eax
	movl	%eax, 52(%esp)
	movss	52(%esp), %xmm3
	unpcklps	%xmm0, %xmm1
	movl	_m32_sideview, %eax
	movaps	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm5, %xmm4
	movlhps	%xmm4, %xmm1
	movups	%xmm1, 100(%esp)
	movaps	%xmm5, %xmm1
	unpcklps	%xmm6, %xmm1
	movlhps	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	movups	%xmm0, 116(%esp)
	movaps	%xmm7, %xmm0
	unpcklps	%xmm7, %xmm1
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 132(%esp)
	testl	%eax, %eax
	jne	L1654
	leal	100(%esp), %ebx
	movl	%edi, 76(%esp)
	movl	%ebx, 60(%esp)
	movl	%ebx, %ecx
L1655:
	movl	36(%ecx), %esi
	movl	68(%esp), %eax
	movl	%esi, %edx
/APP
 # 1192 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	40(%ecx), %edx
	movl	88(%esp), %eax
/APP
 # 1192 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ebx
	movl	%esi, %edx
	movl	88(%esp), %eax
/APP
 # 1193 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	40(%ecx), %edx
	movl	68(%esp), %eax
/APP
 # 1193 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%esi, %eax
	movl	%ebx, 36(%ecx)
	subl	$12, %ecx
	movl	%eax, 52(%ecx)
	leal	52(%esp), %eax
	cmpl	%ecx, %eax
	jne	L1655
	movl	76(%esp), %edi
	movl	60(%esp), %ebx
L1656:
	movl	$-808464433, _drawlinepat
	testb	$1, 65(%esp)
	jne	L1658
	movl	$4, 60(%esp)
	movl	%ebx, 88(%esp)
	movl	%edi, 68(%esp)
L1659:
	movl	60(%esp), %eax
	movl	68(%esp), %edx
	movl	88(%esp), %ebx
	movl	84(%esp), %edi
	andl	$3, %eax
	movl	%edx, %esi
	leal	(%eax,%eax,2), %eax
	subl	40(%ebx), %edx
	movl	100(%esp,%eax,4), %ecx
	subl	104(%esp,%eax,4), %esi
	movl	_midydim16, %eax
	movl	%esi, 64(%esp)
	addl	%edi, %ecx
	addl	36(%ebx), %edi
	movl	80(%esp), %ebx
	addl	%eax, %edx
	addl	%esi, %eax
	addl	_halfxdim16, %edi
	movl	%ecx, 76(%esp)
	addl	_halfxdim16, %ecx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%ebx, 4(%esp)
	call	_editorDraw2dLine
	movl	_midydim16, %edi
	movl	68(%esp), %edx
	movl	_halfxdim16, %eax
	movl	76(%esp), %ecx
	movl	%ebx, 4(%esp)
	addl	%edi, %edx
	addl	64(%esp), %edi
	movl	%edi, (%esp)
	addl	%eax, %ecx
	addl	84(%esp), %eax
	call	_editorDraw2dLine
	subl	$12, 88(%esp)
	subl	$1, 60(%esp)
	jne	L1659
L1660:
	movl	$-1, _drawlinepat
L1632:
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
L1690:
	.cfi_restore_state
	movzbl	_editorcolors+4, %eax
	movl	%eax, 56(%esp)
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1691:
	movswl	_pointhighlight, %eax
	cmpw	$16383, %ax
	jle	L1640
	leal	16384(%edi), %ebx
	cmpl	%eax, %ebx
	je	L1641
	movl	84(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1640
	subl	$16384, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpl	%edx, (%eax)
	je	L1695
	.p2align 4
	.p2align 3
L1640:
	movl	%edi, %eax
	sarl	$3, %edi
	andl	$7, %eax
	movzbl	_show2dsprite(%edi), %ebx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	andl	%eax, %ebx
	cmpb	%al, %bl
	jne	L1639
	movl	_totalclock, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 1133 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors+14, %ecx
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 56(%esp)
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1637:
	movl	%edi, %eax
	movb	%cl, 80(%esp)
	call	_editorGet2dSpriteColor
	movzbl	80(%esp), %ecx
	movl	%eax, 56(%esp)
	movl	_m32_sideview, %eax
	movl	%eax, 84(%esp)
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1695:
	movl	80(%esp), %ebx
	cmpl	%ebx, 4(%eax)
	jne	L1640
	.p2align 4
	.p2align 3
L1641:
	movl	_totalclock, %eax
	subl	$8, %ecx
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
	cmpb	$7, %cl
	ja	L1644
/APP
 # 1127 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%eax
	subl	%eax, 56(%esp)
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1644:
/APP
 # 1128 "source/build/src/2d.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	$2, %eax
	addl	%eax, 56(%esp)
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1647:
	movzbl	56(%esp), %ecx
	movzbl	18(%esi), %eax
	movl	%ecx, 80(%esp)
	cmpb	$32, %al
	jbe	L1648
	movl	88(%esp), %edx
	sall	$2, %eax
/APP
 # 1151 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	80(%esp), %eax
	movl	$16384, (%esp)
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_editorDraw2dCircle
	movl	_midydim16, %eax
	movl	84(%esp), %ebx
	addl	_halfxdim16, %ebx
	addl	%edi, %eax
	movl	%eax, 68(%esp)
	jmp	L1648
	.p2align 4,,10
	.p2align 3
L1692:
	movl	_midydim16, %eax
	movl	_halfxdim16, %ebx
	movl	56(%esp), %ecx
	leal	1(%eax,%edi), %edx
	movl	%edx, 48(%esp)
	movl	80(%esp), %edx
	addl	%ebx, %ecx
	addl	84(%esp), %ebx
	movl	%edx, 4(%esp)
	movl	68(%esp), %edx
	leal	1(%eax,%edx), %eax
	movl	48(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %ebx
	movl	56(%esp), %ecx
	movl	_midydim16, %eax
	leal	(%ecx,%ebx), %edx
	movl	80(%esp), %ecx
	addl	84(%esp), %ebx
	movl	%edx, 48(%esp)
	leal	-1(%eax,%edi), %edx
	movl	%ecx, 4(%esp)
	movl	68(%esp), %ecx
	leal	-1(%eax,%ecx), %eax
	movl	48(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	56(%esp), %ebx
	movl	_midydim16, %edx
	leal	-1(%eax,%ebx), %ecx
	movl	84(%esp), %ebx
	addl	%edi, %edx
	leal	-1(%ebx,%eax), %ebx
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	56(%esp), %ebx
	movl	_midydim16, %edx
	leal	1(%eax,%ebx), %ecx
	movl	84(%esp), %ebx
	addl	%edi, %edx
	leal	1(%ebx,%eax), %ebx
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1668:
	movl	$0, 68(%esp)
	movl	$16777216, %ecx
	movl	$0, 72(%esp)
	jmp	L1653
	.p2align 4,,10
	.p2align 3
L1654:
	movl	_m32_sidesin, %eax
	leal	100(%esp), %ebx
	movl	%edi, 60(%esp)
	movl	%ebx, 56(%esp)
	movl	%ebx, %ecx
	movl	%eax, 76(%esp)
L1657:
	movl	36(%ecx), %ebx
	movl	68(%esp), %eax
	movl	%ebx, %edx
/APP
 # 1192 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	40(%ecx), %edx
	movl	88(%esp), %eax
/APP
 # 1192 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %esi
	movl	%ebx, %edx
	movl	88(%esp), %eax
/APP
 # 1193 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	40(%ecx), %edx
	movl	68(%esp), %eax
/APP
 # 1193 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	76(%esp), %edx
	addl	%ebx, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	44(%ecx), %eax
	movl	%esi, 36(%ecx)
	subl	$12, %ecx
	movl	%eax, 52(%ecx)
	leal	52(%esp), %eax
	cmpl	%ecx, %eax
	jne	L1657
	movl	60(%esp), %edi
	movl	56(%esp), %ebx
	jmp	L1656
L1662:
	testb	$1, 65(%esp)
	je	L1664
	movl	44(%esp), %ebx
	movl	%edi, %eax
	movl	48(%esp), %ecx
	subl	%ebx, %eax
	movl	%eax, 36(%esp)
	movl	84(%esp), %eax
	movl	%eax, %esi
	addl	%ecx, %eax
	subl	%ecx, %esi
	movl	%eax, 28(%esp)
	movl	%esi, 32(%esp)
	leal	(%ebx,%edi), %esi
	movl	%esi, 60(%esp)
L1665:
	movl	_halfxdim16, %eax
	movl	32(%esp), %ebx
	movl	56(%esp), %ecx
	subl	48(%esp), %ecx
	addl	%eax, %ecx
	addl	%eax, %ebx
	movl	80(%esp), %eax
	movl	_midydim16, %esi
	movl	36(%esp), %edx
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	subl	44(%esp), %eax
	addl	%esi, %edx
	addl	%esi, %eax
	movl	%edx, 76(%esp)
	movl	76(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	_midydim16, %esi
	movl	60(%esp), %ebx
	movl	_halfxdim16, %eax
	movl	56(%esp), %ecx
	addl	%esi, %ebx
	addl	48(%esp), %ecx
	movl	%ebx, 76(%esp)
	movl	28(%esp), %ebx
	addl	%eax, %ecx
	movl	76(%esp), %edx
	addl	%eax, %ebx
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	addl	44(%esp), %eax
	addl	%esi, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	jmp	L1664
L1658:
	movl	%ebx, 64(%esp)
	movl	$4, 56(%esp)
	movl	%edi, 60(%esp)
L1661:
	movl	56(%esp), %eax
	movl	60(%esp), %esi
	movl	64(%esp), %edx
	movl	84(%esp), %ecx
	andl	$3, %eax
	movl	%esi, %edi
	leal	(%eax,%eax,2), %eax
	subl	104(%esp,%eax,4), %edi
	movl	100(%esp,%eax,4), %ebx
	movl	%esi, %eax
	subl	40(%edx), %eax
	movl	36(%edx), %edx
	movl	%edi, 76(%esp)
	addl	%ecx, %ebx
	movl	%eax, %edi
	movl	_halfxdim16, %eax
	addl	%ecx, %edx
	movl	%ebx, 88(%esp)
	movl	80(%esp), %ebx
	movl	%edx, %esi
	movl	_midydim16, %edx
	movl	88(%esp), %ecx
	movl	%edi, 68(%esp)
	movl	%ebx, 4(%esp)
	addl	%edx, %edi
	addl	76(%esp), %edx
	addl	%eax, %ecx
	addl	%esi, %eax
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	_editorDraw2dLine
	movl	80(%esp), %ebx
	movl	_midydim16, %edx
	movl	_halfxdim16, %eax
	movl	68(%esp), %edi
	movl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	leal	1(%edi,%edx), %edi
	movl	88(%esp), %ecx
	leal	1(%ebx,%edx), %edx
	movl	%edx, (%esp)
	addl	%eax, %ecx
	movl	%edi, %edx
	addl	%esi, %eax
	call	_editorDraw2dLine
	movl	80(%esp), %ebx
	movl	_midydim16, %edx
	movl	_halfxdim16, %eax
	movl	68(%esp), %edi
	movl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	leal	-1(%edi,%edx), %edi
	movl	88(%esp), %ecx
	leal	-1(%ebx,%edx), %edx
	movl	%edx, (%esp)
	addl	%eax, %ecx
	movl	%edi, %edx
	addl	%esi, %eax
	call	_editorDraw2dLine
	movl	80(%esp), %ebx
	movl	_halfxdim16, %edi
	movl	_midydim16, %eax
	movl	68(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	76(%esp), %ebx
	addl	%eax, %edx
	movl	88(%esp), %ecx
	addl	%ebx, %eax
	movl	%eax, (%esp)
	leal	1(%ecx,%edi), %ecx
	leal	1(%esi,%edi), %eax
	call	_editorDraw2dLine
	movl	_halfxdim16, %edi
	movl	88(%esp), %ecx
	movl	_midydim16, %eax
	movl	68(%esp), %edx
	leal	-1(%ecx,%edi), %ecx
	leal	-1(%esi,%edi), %esi
	movl	80(%esp), %edi
	addl	%eax, %edx
	addl	%ebx, %eax
	movl	%edi, 4(%esp)
	movl	%ebx, %edi
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_editorDraw2dLine
	movl	_midydim16, %edx
	movl	60(%esp), %esi
	movl	_halfxdim16, %eax
	movl	88(%esp), %ecx
	leal	(%edx,%esi), %ebx
	movl	80(%esp), %esi
	addl	%edi, %edx
	movl	%edx, (%esp)
	addl	%eax, %ecx
	movl	%ebx, %edx
	addl	84(%esp), %eax
	movl	%esi, 4(%esp)
	call	_editorDraw2dLine
	subl	$12, 64(%esp)
	subl	$1, 56(%esp)
	jne	L1661
	jmp	L1660
L1694:
	movl	48(%esp), %ecx
	movl	84(%esp), %esi
	movl	%edi, %edx
	movl	76(%esp), %eax
	subl	44(%esp), %edx
	subl	%ecx, %esi
	movl	%edx, 36(%esp)
	addl	_midydim16, %edx
	subl	%ecx, %eax
	movl	_halfxdim16, %ecx
	movl	%esi, 32(%esp)
	addl	_halfxdim16, %esi
	movl	%edx, 60(%esp)
	movl	%ebx, %edx
	addl	%eax, %ecx
	movl	80(%esp), %eax
	subl	44(%esp), %edx
	movl	%eax, 4(%esp)
	movl	_midydim16, %eax
	addl	%edx, %eax
	movl	60(%esp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_editorDraw2dLine
	movl	44(%esp), %eax
	movl	84(%esp), %esi
	movl	76(%esp), %ecx
	leal	(%eax,%edi), %edx
	movl	_halfxdim16, %eax
	movl	%edx, 60(%esp)
	movl	48(%esp), %edx
	addl	%edx, %esi
	addl	%edx, %ecx
	movl	60(%esp), %edx
	addl	_midydim16, %edx
	movl	%esi, 28(%esp)
	addl	%eax, %ecx
	addl	%eax, %esi
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	addl	%ebx, %eax
	addl	_midydim16, %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_editorDraw2dLine
	movl	68(%esp), %eax
	movl	84(%esp), %esi
	addl	%edi, %eax
	movl	%eax, 68(%esp)
	movl	56(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 56(%esp)
	jmp	L1665
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	_editorSetup2dSideView.part.0
	.def	_editorSetup2dSideView.part.0;	.scl	2;	.type	32;	.endef
_editorSetup2dSideView.part.0:
LFB94:
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
	movl	$512, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_m32_sideelev, %eax
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %ebp
	movzwl	_m32_sideang, %eax
	movswl	_sintable(%edx,%edx), %ebx
	negl	%eax
	movl	%ebp, _m32_sidecos
	leal	512(%eax), %edx
	andl	$2047, %eax
	movl	%ebx, (%esp)
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %edi
	xorl	%eax, %eax
	movl	%ebx, _m32_sidesin
	movswl	_sintable(%edx,%edx), %ecx
	movl	%ecx, %edx
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%esi, %esi
	movl	%eax, 4(%esp)
	movl	%ecx, %edx
	movl	$-512, %eax
/APP
 # 1408 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %edx
	movl	4(%esp), %eax
/APP
 # 686 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL13m32_viewplane
	movl	%ebp, %edx
	movl	%ecx, %eax
/APP
 # 687 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, __ZL13m32_viewplane+4
	movl	(%esp), %eax
	sarl	$5, %eax
	movl	%eax, __ZL13m32_viewplane+8
	addl	$8, %esp
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
LFE94:
	.p2align 4
	.globl	_editorDraw2dGrid.part.0
	.def	_editorDraw2dGrid.part.0;	.scl	2;	.type	32;	.endef
_editorDraw2dGrid.part.0:
LFB95:
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
	movl	%ecx, %ebx
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	%eax, 64(%esp)
	movzwl	168(%esp), %edi
	movl	164(%esp), %eax
	movl	%edx, 88(%esp)
	movw	%di, 28(%esp)
	movswl	160(%esp), %esi
	movl	%eax, 36(%esp)
	call	_videoBeginDrawing
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L1699
	movl	$2048, %eax
	movl	%edi, %ecx
	sarl	%cl, %eax
	movl	%eax, 44(%esp)
	testw	%si, %si
	js	L1700
	cmpw	_numsectors, %si
	jl	L1701
L1700:
	movl	%ebx, %eax
	movl	36(%esp), %edx
	imull	_m32_sidecos, %edx
	negl	%eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	%edx, 116(%esp)
	movl	_m32_sidesin, %edi
L1702:
	movzwl	28(%esp), %ecx
	movl	44(%esp), %ebp
	subl	$1, %ecx
	movzwl	%cx, %ecx
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L1777:
	cmpw	$2, %bx
	jle	L1774
	movl	$2048, %ebp
	sarl	%cl, %ebp
	subl	$1, %ecx
L1710:
	movl	36(%esp), %edx
	leal	1(%ecx), %ebx
	movl	%ebp, %eax
/APP
 # 751 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%edi, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	je	L1777
L1774:
	movl	%ebp, 44(%esp)
L1706:
	movl	%ebx, %ecx
	movl	$1024, %eax
	movl	$-1, %esi
	xorl	%ebp, %ebp
	sarl	%cl, %eax
	movl	$11, %ecx
	movl	$-1, %edi
	movl	$0, 72(%esp)
	subl	%ebx, %ecx
	movl	64(%esp), %ebx
	movl	$0, 112(%esp)
	sall	%cl, %esi
	testb	$32, %cl
	movl	$0, 108(%esp)
	cmovne	%esi, %edi
	leal	(%ebx,%eax), %ecx
	cmovne	%ebp, %esi
	addl	88(%esp), %eax
	movl	%ecx, %ebx
	cltd
	movl	_editorgridextent, %ebp
	andl	%esi, %ecx
	andl	%esi, %eax
	sarl	$31, %ebx
	andl	%edi, %edx
	andl	%edi, %ebx
	movl	%eax, 48(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, %eax
	subl	64(%esp), %eax
	movl	%ecx, 80(%esp)
	movl	%ebx, 84(%esp)
	movl	%edx, 52(%esp)
	movl	%ebp, 56(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	%ebx, 32(%esp)
	movl	%eax, 120(%esp)
L1726:
	movl	72(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1711
	.p2align 4
	.p2align 3
L1779:
	movl	36(%esp), %eax
	movl	20(%esp), %edi
	subl	88(%esp), %edi
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	negl	%eax
	subl	64(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	leal	132(%esp), %eax
	movl	%eax, 4(%esp)
	leal	136(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	xorl	20(%esp), %eax
	xorl	24(%esp), %edx
	orl	%edx, %eax
	movl	136(%esp), %esi
	movl	132(%esp), %ebx
	je	L1778
L1712:
	movl	44(%esp), %eax
	cltd
	addl	%eax, 20(%esp)
	adcl	%edx, 24(%esp)
L1713:
	movl	_halfxdim16, %eax
	movl	116(%esp), %edi
	addl	_midydim16, %ebx
	addl	%esi, %eax
	movl	108(%esp), %esi
	leal	(%ebx,%edi), %edx
	addl	112(%esp), %ebx
	addl	%edi, %ebx
	leal	(%eax,%esi), %ecx
	movzbl	_editorcolors+25, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_editorDraw2dLine
	testl	%eax, %eax
	je	L1715
	movl	_editorgridextent, %ebp
	movl	32(%esp), %edi
	movl	%ebp, %edx
	movl	%edi, %eax
	movl	%ebp, 56(%esp)
	negl	%edx
	movl	%ebp, 92(%esp)
	movl	%edx, %esi
	movl	%edx, 100(%esp)
	sarl	$31, %esi
	movl	%esi, 104(%esp)
	movl	%ebp, %esi
	sarl	$31, %esi
	movl	%esi, 96(%esp)
	movl	28(%esp), %esi
	cmpl	%edx, %esi
	sbbl	104(%esp), %eax
	movl	%esi, %ecx
	setl	%al
	cmpl	%ecx, %ebp
	movl	%eax, %esi
	movl	96(%esp), %eax
	sbbl	%edi, %eax
	movl	24(%esp), %edi
	setl	%al
	orl	%esi, %eax
	movl	20(%esp), %esi
	cmpl	%edx, %esi
	movl	%edi, %edx
	sbbl	104(%esp), %edx
	setl	%dl
	orb	%al, %dl
	jne	L1715
	movl	96(%esp), %eax
	cmpl	%esi, 92(%esp)
	sbbl	%edi, %eax
	jge	L1726
	.p2align 4
	.p2align 3
L1715:
	movl	44(%esp), %eax
	testl	%eax, %eax
	jle	L1722
	negl	%eax
	movl	52(%esp), %edx
	movl	_editorgridextent, %ebp
	movl	%eax, 44(%esp)
	movl	48(%esp), %eax
	movl	%edx, 24(%esp)
	movl	72(%esp), %ebx
	movl	%eax, 20(%esp)
	movl	84(%esp), %edx
	movl	80(%esp), %eax
	movl	%ebp, 56(%esp)
	movl	%edx, 32(%esp)
	movl	%eax, 28(%esp)
	testl	%ebx, %ebx
	je	L1779
L1711:
	movl	36(%esp), %eax
	movl	28(%esp), %edi
	subl	64(%esp), %edi
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%edi, 8(%esp)
	negl	%eax
	subl	88(%esp), %eax
	movl	%eax, 12(%esp)
	leal	132(%esp), %eax
	movl	%eax, 4(%esp)
	leal	136(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	80(%esp), %eax
	movl	28(%esp), %edx
	movl	32(%esp), %ecx
	movl	84(%esp), %ebp
	xorl	%edx, %eax
	movl	136(%esp), %esi
	movl	132(%esp), %ebx
	xorl	%ecx, %ebp
	orl	%ebp, %eax
	je	L1724
L1714:
	movl	72(%esp), %eax
	cltd
	addl	%eax, 28(%esp)
	adcl	%edx, 32(%esp)
	jmp	L1713
	.p2align 4,,10
	.p2align 3
L1699:
	movl	_editorgridextent, %ebp
	movl	88(%esp), %esi
	movl	36(%esp), %edx
	leal	(%esi,%ebp), %eax
/APP
 # 811 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_midydim16, %ecx
	xorl	%edx, %edx
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	%ecx, 80(%esp)
	sarl	$31, %ebx
	cmpl	%edx, %ecx
	movl	%ebx, %edi
	sbbl	%eax, %edi
	cmovl	%edx, %ecx
	cmovl	%eax, %ebx
	subl	%ebp, %esi
	movl	36(%esp), %edx
	movl	%esi, %eax
/APP
 # 814 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_midydim16, %edi
	movl	_ydim16, %esi
	subl	%eax, %edi
	leal	-1(%esi), %eax
	cmpl	%esi, %edi
	movl	%edi, %edx
	cmovge	%eax, %edx
	movl	%esi, %eax
	movl	%edx, 56(%esp)
	sarl	$31, %edx
	movl	%edx, 60(%esp)
	cltd
	cmpl	%esi, %ecx
	movl	%ebx, %esi
	sbbl	%edx, %esi
	jge	L1729
	movl	56(%esp), %eax
	movl	60(%esp), %edi
	cmpl	%ecx, %eax
	sbbl	%ebx, %edi
	jl	L1729
	movl	64(%esp), %edi
	movl	%ebp, %esi
	movl	_halfxdim16, %ebx
	negl	%esi
	movl	36(%esp), %edx
	movl	%esi, %ecx
	leal	(%edi,%ebp), %eax
/APP
 # 819 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ebx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	%edx, 20(%esp)
	sarl	$31, %esi
	movl	%esi, 24(%esp)
	cmpl	%ecx, %ebp
	jl	L1732
	movl	%ecx, %edi
	movl	%ecx, %esi
	movl	%ebp, %edx
	movl	80(%esp), %ecx
	sarl	$31, %edx
	xorl	%eax, %eax
	sarl	$31, %edi
	movl	%ebp, 72(%esp)
	movl	%edx, 76(%esp)
	testl	%ecx, %ecx
	movl	%eax, %edx
	movl	56(%esp), %eax
	cmovns	%ecx, %edx
	movl	%eax, 100(%esp)
	movl	%edx, 92(%esp)
	jmp	L1736
	.p2align 4,,10
	.p2align 3
L1780:
	notl	%edx
	testl	%edx, %edx
	jns	L1734
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	xorl	%ebx, %eax
	xorl	%ecx, %edx
	orl	%edx, %eax
	je	L1734
	movzbl	_editorcolors+25, %eax
	movl	92(%esp), %edx
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	movl	44(%esp), %eax
	movl	%eax, %ecx
	call	_editorDraw2dLine
	movl	_editorgridextent, %ebp
L1734:
	movzbl	28(%esp), %ecx
	movl	$2048, %eax
	movl	%ebp, 72(%esp)
	sarl	%cl, %eax
	cltd
	addl	%eax, %esi
	movl	%ebp, %eax
	adcl	%edx, %edi
	cltd
	cmpl	%esi, %ebp
	movl	%edx, %eax
	movl	%edx, 76(%esp)
	sbbl	%edi, %eax
	jl	L1775
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	_halfxdim16, %ebx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
L1736:
	movl	64(%esp), %eax
	movl	36(%esp), %edx
	subl	%esi, %eax
/APP
 # 824 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%ebx, 48(%esp)
	cltd
	movl	%ebx, 44(%esp)
	movl	%edx, 52(%esp)
	movl	%edx, %ecx
	cmpl	_xdim, %ebx
	jl	L1780
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	44(%esp), %ebx
	cmpl	%eax, %esi
	sbbl	%edx, %edi
	jge	L1735
L1739:
	movl	24(%esp), %ecx
	testl	%ecx, %ecx
	js	L1729
	movl	_xdim, %eax
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$31, %ebx
L1738:
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jl	L1781
	.p2align 4
	.p2align 3
L1729:
	movl	64(%esp), %esi
	movl	36(%esp), %edx
	leal	(%esi,%ebp), %eax
/APP
 # 842 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%ebp, %esi
	movl	%eax, 72(%esp)
	movl	36(%esp), %edx
	movl	%esi, %eax
/APP
 # 843 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ebp, %ecx
	movl	%eax, 80(%esp)
	movl	%ebp, %eax
	negl	%ecx
	cltd
	movl	%ecx, %edi
	movl	%edx, %ebx
	movl	%ecx, 20(%esp)
	sarl	$31, %edi
	cmpl	%ecx, %ebp
	movl	%edi, 24(%esp)
	sbbl	24(%esp), %ebx
	jl	L1727
	movzbl	28(%esp), %ecx
	movl	36(%esp), %eax
	movl	$2048, %edx
	movl	$-2147483648, 44(%esp)
	movl	$0, 48(%esp)
	sarl	%cl, %edx
	movl	%eax, %ebx
	movl	%eax, 28(%esp)
	movl	%edx, %esi
	sarl	$31, %ebx
	movl	%edx, %ecx
	movl	%edx, 56(%esp)
	sarl	$31, %esi
	movl	%esi, 60(%esp)
	movl	%ebx, %esi
	movl	%eax, %ebx
	movl	%esi, 32(%esp)
	imull	60(%esp), %eax
	imull	32(%esp), %ecx
	addl	%eax, %ecx
	movl	%ebx, %eax
	mull	%edx
	movl	%eax, 64(%esp)
	movl	88(%esp), %eax
	movl	%edx, 68(%esp)
	cltd
	addl	%ecx, 68(%esp)
	movl	%eax, %esi
	movl	%ebx, %ecx
	movl	%edx, %edi
	movl	32(%esp), %edx
	subl	20(%esp), %esi
	sbbl	24(%esp), %edi
	movl	%esi, %eax
	imull	%edi, %ecx
	imull	%esi, %edx
	addl	%edx, %ecx
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, 36(%esp)
	addl	%ecx, %edi
	movl	%edi, 40(%esp)
	.p2align 4
	.p2align 3
L1747:
	movl	40(%esp), %ebx
	movl	36(%esp), %ecx
	movl	44(%esp), %eax
	movl	48(%esp), %edx
	shrdl	$14, %ebx, %ecx
	sarl	$14, %ebx
	xorl	%ecx, %eax
	xorl	%ebx, %edx
	movl	%ebx, %edi
	orl	%edx, %eax
	je	L1743
	movl	_midydim16, %eax
	movl	%ecx, 28(%esp)
	movl	%edi, 32(%esp)
	movl	%eax, %edx
	subl	_ydim16, %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	cmpl	28(%esp), %edx
	movl	%ebx, %esi
	sbbl	32(%esp), %esi
	jge	L1743
	movl	%eax, %ebx
	sarl	$31, %ebx
	cmpl	28(%esp), %eax
	movl	%ebx, %esi
	movl	32(%esp), %ebx
	sbbl	%ebx, %esi
	jl	L1743
	movzbl	_editorcolors+25, %ebx
	movl	%eax, %edx
	movl	_halfxdim16, %eax
	subl	28(%esp), %edx
	movl	%edx, (%esp)
	movl	%eax, %esi
	subl	80(%esp), %esi
	movl	%ebx, 4(%esp)
	movl	%esi, %ecx
	subl	72(%esp), %eax
	call	_editorDraw2dLine
	movl	28(%esp), %eax
	movl	32(%esp), %edx
	movl	_editorgridextent, %ebp
	movl	%eax, 44(%esp)
	movl	%edx, 48(%esp)
	.p2align 4
	.p2align 3
L1743:
	movl	56(%esp), %eax
	addl	%eax, 20(%esp)
	movl	%ebp, %eax
	movl	20(%esp), %ecx
	movl	60(%esp), %edx
	movl	64(%esp), %esi
	adcl	%edx, 24(%esp)
	movl	68(%esp), %edi
	subl	%esi, 36(%esp)
	movl	24(%esp), %ebx
	sbbl	%edi, 40(%esp)
	cltd
	cmpl	%ecx, %ebp
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jge	L1747
L1727:
	addl	$140, %esp
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L1722:
	.cfi_restore_state
	je	L1723
	movl	44(%esp), %eax
	movl	120(%esp), %esi
	movl	36(%esp), %ebx
	negl	%eax
	movl	%esi, 8(%esp)
	movl	%esi, %edi
	movl	%eax, 72(%esp)
	movl	_editorgridextent, %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 56(%esp)
	negl	%eax
	subl	88(%esp), %eax
	movl	%eax, 12(%esp)
	leal	132(%esp), %eax
	movl	%eax, 4(%esp)
	leal	136(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	80(%esp), %eax
	movl	84(%esp), %edx
	movl	$0, 44(%esp)
	movl	136(%esp), %esi
	movl	132(%esp), %ebx
	movl	%eax, 28(%esp)
	movl	48(%esp), %eax
	movl	%edx, 32(%esp)
	movl	52(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
L1724:
	movl	36(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	subl	88(%esp), %eax
	movl	%eax, 12(%esp)
	leal	124(%esp), %eax
	movl	%eax, 4(%esp)
	leal	128(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	128(%esp), %eax
	subl	%esi, %eax
	movl	%eax, 108(%esp)
	movl	124(%esp), %eax
	subl	%ebx, %eax
	movl	%eax, 112(%esp)
	jmp	L1714
	.p2align 4,,10
	.p2align 3
L1723:
	movl	72(%esp), %eax
	testl	%eax, %eax
	jle	L1727
	negl	%eax
	movl	84(%esp), %edx
	movl	%eax, 72(%esp)
	movl	_editorgridextent, %eax
	movl	%edx, 32(%esp)
	movl	52(%esp), %edx
	movl	%eax, 56(%esp)
	movl	80(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	movl	48(%esp), %eax
	movl	%eax, 20(%esp)
	jmp	L1711
	.p2align 4,,10
	.p2align 3
L1778:
	movl	36(%esp), %eax
	subl	64(%esp), %ebp
	movl	%edi, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, 16(%esp)
	leal	124(%esp), %eax
	movl	%eax, 4(%esp)
	leal	128(%esp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	128(%esp), %eax
	subl	%esi, %eax
	movl	%eax, 108(%esp)
	movl	124(%esp), %eax
	subl	%ebx, %eax
	movl	%eax, 112(%esp)
	jmp	L1712
	.p2align 4,,10
	.p2align 3
L1701:
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L1782
	movl	88(%esp), %edi
	movl	64(%esp), %esi
	movl	%eax, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	36(%esp), %ebp
	movl	_m32_sidecos, %edx
	subl	%ebx, %eax
	imull	%ebp, %edx
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_m32_sideview, %eax
	movl	%edx, 116(%esp)
	testl	%eax, %eax
	jne	L1704
	movzwl	28(%esp), %ecx
	movl	44(%esp), %edi
	subl	$1, %ecx
	movzwl	%cx, %ecx
	jmp	L1708
	.p2align 4,,10
	.p2align 3
L1783:
	cmpw	$2, %bx
	jle	L1772
	movl	$2048, %edi
	sarl	%cl, %edi
	subl	$1, %ecx
L1708:
	leal	1(%ecx), %ebx
	movl	%edi, %eax
	movl	%ebp, %edx
/APP
 # 751 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	je	L1783
L1772:
	movl	%edi, 44(%esp)
	jmp	L1706
	.p2align 4,,10
	.p2align 3
L1775:
	movl	44(%esp), %ebx
L1735:
	movl	_xdim, %ecx
	movl	52(%esp), %esi
	movl	%ecx, %eax
	cltd
	cmpl	%ecx, %ebx
	sbbl	%edx, %esi
	jge	L1739
L1737:
	movl	52(%esp), %eax
	testl	%eax, %eax
	js	L1729
L1741:
	movl	80(%esp), %edi
	movzbl	_editorcolors+25, %ecx
	xorl	%edx, %edx
	movl	56(%esp), %esi
	movl	48(%esp), %eax
	movl	%ecx, 4(%esp)
	testl	%edi, %edi
	movl	%esi, (%esp)
	cmovns	%edi, %edx
	movl	%eax, %ecx
	call	_editorDraw2dLine
	movl	_editorgridextent, %ebp
	jmp	L1729
L1781:
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	jmp	L1741
L1782:
	movl	8(%eax), %eax
	movl	36(%esp), %edx
	imull	_m32_sidecos, %edx
	subl	%ebx, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	_m32_sidesin, %edi
	movl	%edx, 116(%esp)
	jmp	L1702
L1732:
	movl	_xdim, %eax
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$31, %ebx
	cmpl	%eax, %edx
	movl	24(%esp), %eax
	sbbl	%ebx, %eax
	jl	L1748
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	jmp	L1738
L1748:
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	jmp	L1737
L1704:
	movl	_m32_sidesin, %edi
	jmp	L1702
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	_editorDraw2dScreen.constprop.0
	.def	_editorDraw2dScreen.constprop.0;	.scl	2;	.type	32;	.endef
_editorDraw2dScreen.constprop.0:
LFB97:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	_m32_sideview, %ecx
	movl	_pos+8, %esi
	movzwl	76(%esp), %eax
	movswl	72(%esp), %ebp
	movl	80(%esp), %edi
	movswl	84(%esp), %ebx
	movl	%ecx, 32(%esp)
	movw	%ax, 40(%esp)
	movl	_pos, %eax
	movl	%eax, 20(%esp)
	movl	_pos+4, %eax
	movl	%eax, 28(%esp)
	movl	_qsetmode, %eax
	testl	%ecx, %ecx
	jne	L1785
	cmpl	$200, %eax
	je	L1784
	xorl	%eax, %eax
	movw	%ax, 42(%esp)
	call	_videoBeginDrawing
	cmpw	$0, _editstatus
	je	L1857
L1788:
	call	__Z16timerUpdateClockv
	movl	_numgraysects, %ecx
	movl	$0, _m32_swcnt
	movswl	_numwalls, %ebx
	testl	%ecx, %ecx
	je	L1790
	testw	%bx, %bx
	jle	L1792
	movl	_wall, %eax
	movl	%ebx, 24(%esp)
	movl	$1, %edx
	movl	%esi, 44(%esp)
	movl	%eax, 36(%esp)
	xorl	%eax, %eax
	jmp	L1797
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1793:
	movl	16(%esp), %esi
	notl	%edx
	addl	$1, %eax
	andb	%dl, __ZL7tempbuf(%esi)
	cmpl	24(%esp), %eax
	je	L1796
L1858:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
L1797:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	_graywallbitmap(%ecx), %esi
	movl	%ecx, 16(%esp)
	andl	%edx, %esi
	movl	%esi, %ebx
	cmpb	%dl, %bl
	jne	L1793
	movl	36(%esp), %ecx
	movl	%eax, %esi
	sall	$5, %esi
	movswl	10(%ecx,%esi), %esi
	movl	%esi, %ebp
	testl	%esi, %esi
	js	L1794
	andl	$7, %ebp
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.3(%ebp), %ebp
	movzbl	_graywallbitmap(%esi), %esi
	andl	%ebp, %esi
	movl	%ebp, %ebx
	movl	%esi, %ecx
	cmpb	%cl, %bl
	jne	L1793
L1794:
	movl	16(%esp), %esi
	addl	$1, %eax
	orb	%dl, __ZL7tempbuf(%esi)
	cmpl	24(%esp), %eax
	jne	L1858
L1796:
	movl	_m32_sideview, %edx
	movl	44(%esp), %esi
	leal	-1(%eax), %ebx
	testl	%edx, %edx
	je	L1805
	xorl	%ebx, %ebx
	cmpw	$0, _numsectors
	jle	L1811
L1801:
	movl	%esi, 16(%esp)
	movl	_sector, %ecx
	xorl	%ebp, %ebp
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L1810:
	leal	0(%ebp,%ebp,4), %edi
	sall	$3, %edi
	leal	(%ecx,%edi), %eax
	movswl	(%eax), %ebx
	cmpw	$0, 2(%eax)
	jle	L1808
	movswl	%bp, %esi
	.p2align 4
	.p2align 3
L1809:
	movl	_m32_swcnt, %eax
	leal	1(%eax), %edx
	movw	%bx, _m32_wallsprite(%eax,%eax)
	movswl	%bx, %eax
	addl	$1, %ebx
	movl	%edx, _m32_swcnt
	movl	%esi, %edx
	call	__ZL27editorGet2dSideViewDistancess
	movl	_sector, %ecx
	leal	(%ecx,%edi), %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	addl	%edx, %eax
	cmpl	%eax, %ebx
	jl	L1809
L1808:
	movswl	_numsectors, %eax
	addl	$1, %ebp
	cmpl	%eax, %ebp
	jl	L1810
	movl	16(%esp), %esi
	movl	24(%esp), %edi
L1802:
	movswl	_numwalls, %eax
	cmpl	%ebx, %eax
	jle	L1803
	.p2align 4
	.p2align 3
L1811:
	movl	_m32_swcnt, %eax
	leal	1(%eax), %edx
	movw	%bx, _m32_wallsprite(%eax,%eax)
	movswl	%bx, %eax
	addl	$1, %ebx
	movl	%edx, _m32_swcnt
	xorl	%edx, %edx
	call	__ZL27editorGet2dSideViewDistancess
	movswl	_numwalls, %eax
	cmpl	%eax, %ebx
	jl	L1811
L1803:
	call	__Z16timerUpdateClockv
	xorl	%ebx, %ebx
	cmpl	$255, %edi
	jg	L1829
L1862:
	movl	28(%esp), %ebp
	cmpw	$0, _highlightcnt
	jg	L1813
	jmp	L1814
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1820:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	je	L1814
L1813:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	cmpw	$1023, 26(%eax)
	jg	L1820
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	movzbl	_show2dsprite(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	jne	L1820
	movl	_m32_sideview, %edx
	testl	%edx, %edx
	jne	L1821
	movl	%edi, 4(%esp)
	movl	20(%esp), %edx
	movl	%ebx, %eax
	movl	%ebp, %ecx
	movl	%esi, (%esp)
	addl	$1, %ebx
	call	__ZL18editorDraw2dSpriteiiiii
	cmpl	$16384, %ebx
	jne	L1813
	.p2align 4
	.p2align 3
L1814:
	call	__Z16timerUpdateClockv
	movl	_m32_sideview, %ecx
	testl	%ecx, %ecx
	jne	L1859
L1822:
	movswl	40(%esp), %eax
	movl	32(%esp), %esi
	movl	%edi, %edx
	leal	2560(%esi,%eax), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1441 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$715827883, %ebx
	movl	%eax, %ebp
	imull	%ebx
	movzwl	40(%esp), %eax
	addw	42(%esp), %ax
	sarl	$31, %ebp
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sarl	$7, %edx
	movl	%edx, %esi
	movl	%edi, %edx
	subl	%ebp, %esi
/APP
 # 1442 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $11, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	imull	%ebx
	sarl	$31, %edi
	movl	%edx, %ebx
	sarl	$7, %ebx
	subl	%edi, %ebx
	testl	%ecx, %ecx
	je	L1831
	movl	%esi, %eax
	movl	_m32_sidesin, %edx
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_m32_sidesin, %edx
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
L1827:
	movzbl	_editorcolors+15, %edx
	movl	_halfxdim16, %eax
	movl	_midydim16, %ebp
	movl	%edx, 4(%esp)
	movl	_midydim16, %edx
	movl	%eax, %ecx
	addl	%esi, %eax
	addl	%edi, %ebp
	subl	%esi, %ecx
	subl	%edi, %edx
	movl	%edx, (%esp)
	movl	%ebp, %edx
	call	_editorDraw2dLine
	movzbl	_editorcolors+15, %edx
	movl	_halfxdim16, %eax
	movl	_midydim16, %ebp
	movl	%edx, 4(%esp)
	movl	_midydim16, %edx
	leal	(%ebx,%eax), %ecx
	addl	%esi, %eax
	subl	16(%esp), %edx
	movl	%eax, 20(%esp)
	addl	%edi, %ebp
	movl	%edx, (%esp)
	movl	20(%esp), %eax
	movl	%ebp, %edx
	call	_editorDraw2dLine
	movl	_halfxdim16, %eax
	movl	_midydim16, %edx
	movl	%eax, %ecx
	addl	%edx, %edi
	addl	16(%esp), %edx
	addl	%esi, %eax
	subl	%ebx, %ecx
	movzbl	_editorcolors+15, %ebx
	movl	%edx, (%esp)
	movl	%edi, %edx
	movl	%ebx, 4(%esp)
	call	_editorDraw2dLine
	addl	$48, %esp
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
	jmp	_videoEndDrawing
L1785:
	.cfi_restore_state
	cmpl	$200, %eax
	je	L1784
	movzwl	_m32_sideang, %eax
	movl	%eax, 16(%esp)
	call	_editorSetup2dSideView.part.0
	movl	16(%esp), %eax
	movswl	%ax, %ecx
	movw	%ax, 42(%esp)
	movl	%ecx, 32(%esp)
	call	_videoBeginDrawing
	cmpw	$0, _editstatus
	jne	L1788
L1857:
	movl	_ydim, %eax
	leal	-25(%eax), %ecx
	leal	-26(%eax), %edx
	cmpl	_ydim16, %ecx
	cmovg	%edx, %eax
	movl	%eax, 16(%esp)
	call	_videoBeginDrawing
	movl	16(%esp), %eax
	imull	_bytesperline, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
	testw	%bx, %bx
	jle	L1788
	movl	28(%esp), %edx
	movl	20(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, %ecx
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	call	_editorDraw2dGrid.part.0
	jmp	L1788
L1784:
	addl	$48, %esp
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
L1861:
	.cfi_restore_state
	movl	28(%esp), %ecx
	movl	20(%esp), %edx
	movl	%edi, 4(%esp)
	movl	%ebx, %eax
	movl	$3, 8(%esp)
	movl	%esi, (%esp)
	call	__ZL16editorDraw2dWalliiiiii
	subl	$1, %ebx
	jb	L1860
	.p2align 6
	.p2align 4
	.p2align 3
L1805:
	movl	%ebx, %eax
	movl	%ebx, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.3(%eax), %eax
	movzbl	__ZL7tempbuf(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1861
	subl	$1, %ebx
	jnb	L1805
L1860:
	movswl	_numwalls, %ebx
	subl	$1, %ebx
	js	L1803
	movl	20(%esp), %ebp
	.p2align 4
	.p2align 3
L1807:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	movzbl	__ZL7tempbuf(%ecx), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	je	L1806
	movl	$2, 8(%esp)
	movl	28(%esp), %ecx
	movl	%ebp, %edx
	movl	%ebx, %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL16editorDraw2dWalliiiiii
L1806:
	subl	$1, %ebx
	jnb	L1807
	call	__Z16timerUpdateClockv
	xorl	%ebx, %ebx
	cmpl	$255, %edi
	jle	L1862
L1829:
	movl	28(%esp), %ebp
	jmp	L1812
	.p2align 4,,10
	.p2align 3
L1816:
	movl	_m32_sideview, %ecx
	testl	%ecx, %ecx
	jne	L1819
	movl	16(%esp), %eax
	movswl	24(%eax), %eax
	testw	%ax, %ax
	js	L1818
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_graysectbitmap(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	andl	%edx, %ecx
	cmpb	%dl, %cl
	je	L1815
L1818:
	movl	%edi, 4(%esp)
	movl	20(%esp), %edx
	movl	%ebp, %ecx
	movl	%ebx, %eax
	movl	%esi, (%esp)
	call	__ZL18editorDraw2dSpriteiiiii
L1815:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	je	L1814
L1812:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	%eax, 16(%esp)
	cmpw	$1023, 26(%eax)
	jg	L1815
	movl	%ebx, %edx
	movl	%ebx, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	movzbl	_show2dsprite(%ecx), %eax
	andl	%edx, %eax
	cmpb	%dl, %al
	jne	L1816
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	je	L1818
L1819:
	movl	_m32_swcnt, %edx
	leal	1(%edx), %eax
	movl	%eax, _m32_swcnt
	leal	16384(%ebx), %eax
	movw	%ax, _m32_wallsprite(%edx,%edx)
	cwtl
	movl	$-1, %edx
	call	__ZL27editorGet2dSideViewDistancess
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1821:
	movl	_m32_swcnt, %edx
	leal	1(%edx), %eax
	movl	%eax, _m32_swcnt
	leal	16384(%ebx), %eax
	movw	%ax, _m32_wallsprite(%edx,%edx)
	cwtl
	movl	$-1, %edx
	call	__ZL27editorGet2dSideViewDistancess
	jmp	L1820
L1831:
	movl	%esi, 16(%esp)
	movl	%ebx, %edi
	jmp	L1827
L1790:
	leal	7(%ebx), %eax
	movl	$0, 4(%esp)
	sarl	$3, %eax
	movl	$__ZL7tempbuf, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
L1792:
	movl	_m32_sideview, %eax
	testl	%eax, %eax
	jne	L1863
	subl	$1, %ebx
	jns	L1805
	jmp	L1803
L1859:
	movl	_m32_swcnt, %eax
	movl	$__ZL29editorCompare2dSideViewPointsPKvS0_, 12(%esp)
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_m32_wallsprite, (%esp)
	call	_qsort
	movl	_m32_swcnt, %eax
	testl	%eax, %eax
	jle	L1823
	movl	28(%esp), %ebp
	xorl	%ebx, %ebx
	jmp	L1826
	.p2align 4,,10
	.p2align 3
L1864:
	andl	$7, %edx
	sarl	$3, %eax
	movl	%ebp, %ecx
	movzbl	__ZL7tempbuf(%eax), %eax
	movzbl	__ZL8pow2char.lto_priv.3(%edx), %edx
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	andl	%edx, %eax
	cmpb	%dl, %al
	movl	16(%esp), %eax
	sete	%dl
	addl	$1, %ebx
	movzbl	%dl, %edx
	movl	%edx, 8(%esp)
	movl	20(%esp), %edx
	call	__ZL16editorDraw2dWalliiiiii
	cmpl	_m32_swcnt, %ebx
	jge	L1823
L1826:
	movswl	_m32_wallsprite(%ebx,%ebx), %eax
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	cmpw	$16383, %ax
	jle	L1864
	movl	16(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%ebp, %ecx
	addl	$1, %ebx
	movl	%esi, (%esp)
	movl	20(%esp), %edx
	subl	$16384, %eax
	call	__ZL18editorDraw2dSpriteiiiii
	cmpl	_m32_swcnt, %ebx
	jl	L1826
L1823:
	call	__Z16timerUpdateClockv
	movl	_m32_sideview, %ecx
	jmp	L1822
L1863:
	xorl	%ebx, %ebx
	cmpw	$0, _numsectors
	jg	L1801
	jmp	L1802
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	_polymostSet2dView.part.0
	.def	_polymostSet2dView.part.0;	.scl	2;	.type	32;	.endef
_polymostSet2dView.part.0:
LFB102:
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
	subl	$52, %esp
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movl	$0, 40(%esp)
	movl	$1072693248, 44(%esp)
	movl	$0, 32(%esp)
	movl	$-1074790400, 36(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	fildl	_ydim
	fstpl	16(%esp)
	fildl	_xdim
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	fstpl	8(%esp)
	call	*_glad_glOrtho
	subl	$48, %esp
	cmpl	$4, _rendmode
	jne	L1866
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
L1866:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	movl	$1, _polymost2d
	call	_inthash_find
	testl	%eax, %eax
	je	L1867
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1867:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1865
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1865:
	movl	-4(%ebp), %edi
	.cfi_def_cfa 7, 0
	leave
	.cfi_restore 5
	leal	-8(%edi), %esp
	.cfi_def_cfa 4, 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE102:
	.p2align 4
	.globl	_initputs
	.def	_initputs;	.scl	2;	.type	32;	.endef
_initputs:
LFB103:
	.cfi_startproc
	movl	__ZL10startupdlg.lto_priv.0, %edx
	testl	%edx, %edx
	je	L1879
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
	subl	$12, %esp
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %esi
	leal	17(%eax), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	27(%esp), %edi
	movl	%esi, 8(%esp)
	andl	$-16, %edi
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_memcpy
	movl	$10, %eax
	movw	%ax, (%edi,%esi)
	movl	%edi, %eax
	call	_startwin_puts.isra.0
	leal	-12(%ebp), %esp
	popl	%ebx
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
L1879:
	ret
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	_initprintf
	.def	_initprintf;	.scl	2;	.type	32;	.endef
_initprintf:
LFB105:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %edi
	movl	%edi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L1889
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L1884:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L1884
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L1883:
	xorl	%ebp, %ebp
	leal	48(%esp), %esi
	jmp	L1887
	.p2align 4,,10
	.p2align 3
L1890:
	movl	%esi, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___vsnprintf
	cmpl	%ebx, %eax
	jb	L1895
L1887:
	addl	%ebx, %ebx
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L1890
	testl	%ebx, %ebx
	je	L1890
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1895:
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	call	_initputs
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	16(%esp), %eax
	addl	$24, %esp
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
L1889:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L1883
	.cfi_endproc
LFE105:
	.section .rdata,"dr"
LC81:
	.ascii "%s%s%s\12\0"
LC82:
	.ascii "%s%s\12\0"
	.text
	.p2align 4
	.globl	__Z17engineLogCallbackPvRKN6loguru7MessageE
	.def	__Z17engineLogCallbackPvRKN6loguru7MessageE;	.scl	2;	.type	32;	.endef
__Z17engineLogCallbackPvRKN6loguru7MessageE:
LFB106:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	cmpb	$0, _g_useLogCallback
	jne	L1910
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
L1910:
	.cfi_restore_state
	movl	__ZL10startupdlg.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L1911
L1898:
	movl	_osd, %ecx
	movl	12(%ebx), %eax
	movl	%ecx, -20(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, %esi
	movl	20(%ebx), %eax
	movl	%eax, -24(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	movl	24(%ebx), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	_strlen
	movl	-20(%ebp), %ecx
	movl	1156(%ecx), %edx
	leal	4(%edx,%esi), %esi
	addl	%edi, %esi
	addl	%eax, %esi
	leal	15(%esi), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	-16(%ebp), %edx
	subl	%eax, %esp
	leal	39(%esp), %edi
	andl	$-16, %edi
	cmpl	$-1, (%ebx)
	movb	$0, (%edi)
	je	L1912
	jge	L1900
	movl	1104(%ecx), %eax
	testl	%eax, %eax
	je	L1900
L1909:
	movl	%edx, 20(%esp)
	movl	-24(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$LC81, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
L1901:
	movl	%edi, %eax
	call	__Z8OSD_PutsPKc
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
L1912:
	.cfi_restore_state
	movl	1108(%ecx), %eax
	testl	%eax, %eax
	jne	L1909
L1900:
	movl	%edx, 16(%esp)
	movl	-24(%ebp), %eax
	movl	$LC82, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	jmp	L1901
	.p2align 4,,10
	.p2align 3
L1911:
	movl	24(%ebx), %eax
	call	_initputs
	jmp	L1898
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	_mouseReadButtons
	.def	_mouseReadButtons;	.scl	2;	.type	32;	.endef
_mouseReadButtons:
LFB107:
	.cfi_startproc
	cmpb	$0, _g_mouseEnabled
	je	L1916
	cmpb	$0, _appactive
	je	L1916
	cmpb	$0, _g_mouseInsideWindow
	je	L1916
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1917
	testb	$4, 1172(%eax)
	jne	L1916
L1917:
	movl	_g_mouseBits, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1916:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	_calc_ylookup
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
_calc_ylookup:
LFB109:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	1(%edx), %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 16(%esp)
	cmpl	%eax, __ZZ12calc_ylookupE10ylookupsiz
	jl	L1932
	cmpl	$2, %esi
	jle	L1928
L1933:
	leal	(%ebx,%ebx), %ebp
	movl	%esi, 20(%esp)
	leal	-2(%esi), %eax
	xorl	%edx, %edx
	leal	0(%ebp,%ebx), %ecx
	movl	%eax, 8(%esp)
	leal	0(,%ebx,4), %edi
	xorl	%eax, %eax
	movl	%ecx, 12(%esp)
	.p2align 4
	.p2align 3
L1925:
	movl	_ylookup, %esi
	movl	%edx, (%esi,%eax,4)
	movl	_ylookup, %ecx
	leal	(%edx,%ebx), %esi
	movl	%esi, 4(%ecx,%eax,4)
	movl	_ylookup, %ecx
	leal	0(%ebp,%edx), %esi
	movl	%esi, 8(%ecx,%eax,4)
	movl	12(%esp), %ecx
	leal	(%edx,%ecx), %esi
	movl	_ylookup, %ecx
	addl	%edi, %edx
	movl	%esi, 12(%ecx,%eax,4)
	addl	$4, %eax
	cmpl	8(%esp), %eax
	jl	L1925
	movl	20(%esp), %esi
	leal	-3(%esi), %eax
	movl	%eax, %edx
	andl	$-4, %eax
	shrl	$2, %edx
	addl	$4, %eax
	addl	$1, %edx
	imull	%edi, %edx
L1924:
	movl	16(%esp), %edi
	cmpl	%eax, %edi
	jle	L1926
	sall	$2, %eax
	leal	0(,%edi,4), %ecx
L1927:
	movl	_ylookup, %esi
	movl	%edx, (%esi,%eax)
	addl	$4, %eax
	addl	%ebx, %edx
	cmpl	%ecx, %eax
	jne	L1927
L1926:
	movl	%ebx, (%esp)
	call	_setvlinebpl
	addl	$24, %esp
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
L1932:
	.cfi_restore_state
	movl	_ylookup, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	16(%esp), %ebp
	movl	$16, 4(%esp)
	leal	0(,%ebp,4), %edi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1923
	movl	%eax, _ylookup
	movl	%ebp, __ZZ12calc_ylookupE10ylookupsiz
	cmpl	$2, %esi
	jg	L1933
L1928:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1924
L1923:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE109:
	.align 2
	.p2align 4
	.globl	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0
	.def	__ZN7cache1d20inc_and_check_cacnumEv.constprop.0;	.scl	2;	.type	32;	.endef
__ZN7cache1d20inc_and_check_cacnumEv.constprop.0:
LFB111:
	.cfi_startproc
	movl	_g_cache+16, %eax
	movl	_g_cache+12, %edx
	addl	$1, %eax
	movl	%eax, _g_cache+16
	cmpl	%edx, %eax
	jge	L1943
	ret
	.p2align 4,,10
	.p2align 3
L1943:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	addl	$1024, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	sall	$4, %edx
	movl	%edx, %esi
	subl	$48, %esp
	.cfi_def_cfa_offset 60
	movl	__ZZ12BgetpagesizeE8pageSize, %eax
	cmpl	$-1, %eax
	je	L1944
L1937:
	movl	$16384, %edx
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 4(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1938
	movl	_g_cache+12, %eax
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	sall	$4, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_g_cache+12, %eax
	movl	%ebx, (%esp)
	sall	$4, %eax
	movl	%eax, 8(%esp)
	movl	_g_cache, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	_g_cache, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, _g_cache
	addl	$1024, _g_cache+12
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1944:
	.cfi_restore_state
	leal	12(%esp), %eax
	movl	%eax, (%esp)
	call	*__imp__GetSystemInfo@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	16(%esp), %eax
	movl	%eax, __ZZ12BgetpagesizeE8pageSize
	jmp	L1937
	.p2align 4,,10
	.p2align 3
L1938:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE111:
	.data
	.align 4
__ZZ12BgetpagesizeE8pageSize:
	.long	-1
	.globl	__ZL19clockTicksPerSecond.lto_priv.0
	.bss
	.align 4
__ZL19clockTicksPerSecond.lto_priv.0:
	.space 4
	.globl	_refreshfreq
	.data
	.align 8
_refreshfreq:
	.long	0
	.long	1078820864
	.globl	_r_maxfps
	.align 4
_r_maxfps:
	.long	-1
	.globl	_r_displayindex
	.bss
	.align 4
_r_displayindex:
	.space 4
	.globl	_g_numdisplays
	.data
	.align 4
_g_numdisplays:
	.long	1
	.globl	_GLVersion
	.bss
	.align 4
_GLVersion:
	.space 8
	.globl	_glinfo
	.section .rdata,"dr"
LC83:
	.ascii "Unknown\0"
LC84:
	.ascii "0.0.0\0"
	.data
	.align 32
_glinfo:
	.long	LC83
	.long	LC83
	.long	LC84
	.long	LC15
	.long	1065353216
	.long	64
	.long	0
	.long	0
	.globl	__ZL11lastbasepal.lto_priv.0
	.align 4
__ZL11lastbasepal.lto_priv.0:
	.long	-1
	.globl	_nextmodelid
	.bss
	.align 4
_nextmodelid:
	.space 4
.lcomm __ZZL20PolymerProcessModelsvE6warned,4,4
	.globl	_models
	.align 4
_models:
	.space 4
	.globl	_basepalreset
	.data
_basepalreset:
	.byte	1
	.globl	_inpreparemirror
	.bss
_inpreparemirror:
	.space 1
	.globl	_nogl
_nogl:
	.space 1
	.section .rdata,"dr"
LC85:
	.ascii "software (x86 ASM)\0"
LC86:
	.ascii "Polymost\0"
LC87:
	.ascii "Polymer (for great justice)\0"
	.align 4
__ZZL21osdfunc_setrendermodePK13osdfuncparm_tE5modes:
	.long	LC85
	.long	0
	.long	0
	.long	LC86
	.long	LC87
.lcomm __ZZ12calc_ylookupE10ylookupsiz,4,4
	.globl	_g_useLogCallback
	.data
_g_useLogCallback:
	.byte	1
.lcomm __ZL7tempbuf,2048,32
	.globl	_curpalette
	.bss
	.align 32
_curpalette:
	.space 1024
	.globl	_tilecols
	.align 32
_tilecols:
	.space 30720
.lcomm __ZL12m32_sidedist,131072,32
.lcomm __ZL13m32_viewplane,12,4
	.section .rdata,"dr"
	.align 32
_pow2ulong:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	32
	.long	64
	.long	128
	.long	256
	.long	512
	.long	1024
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.long	32768
	.long	65536
	.long	131072
	.long	262144
	.long	524288
	.long	1048576
	.long	2097152
	.long	4194304
	.long	8388608
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.long	268435456
	.long	536870912
	.long	1073741824
	.long	-2147483648
	.globl	_startdmost
	.bss
	.align 4
_startdmost:
	.space 4
	.globl	_startumost
	.align 4
_startumost:
	.space 4
	.globl	_glad_glVertex2f
	.align 4
_glad_glVertex2f:
	.space 4
	.globl	_polymost2d
	.align 4
_polymost2d:
	.space 4
	.globl	_glad_glOrtho
	.align 4
_glad_glOrtho:
	.space 4
	.globl	_glad_glLoadIdentity
	.align 4
_glad_glLoadIdentity:
	.space 4
	.globl	_glad_glMatrixMode
	.align 4
_glad_glMatrixMode:
	.space 4
	.globl	_glad_glViewport
	.align 4
_glad_glViewport:
	.space 4
	.globl	_wy1
	.align 4
_wy1:
	.space 4
	.globl	_wy2
	.align 4
_wy2:
	.space 4
	.globl	_wx1
	.align 4
_wx1:
	.space 4
	.globl	_wx2
	.align 4
_wx2:
	.space 4
	.globl	_glad_glEnd
	.align 4
_glad_glEnd:
	.space 4
	.globl	_glad_glVertex2i
	.align 4
_glad_glVertex2i:
	.space 4
	.globl	_glad_glColor4ub
	.align 4
_glad_glColor4ub:
	.space 4
	.globl	_glad_glBegin
	.align 4
_glad_glBegin:
	.space 4
	.globl	_glad_glDisable
	.align 4
_glad_glDisable:
	.space 4
	.globl	_glad_glEnable
	.align 4
_glad_glEnable:
	.space 4
	.globl	_glad_glScissor
	.align 4
_glad_glScissor:
	.space 4
	.globl	_XXH3_kSecret.lto_priv.0
	.section .rdata,"dr"
	.align 64
_XXH3_kSecret.lto_priv.0:
	.ascii "\270\376l9#\244K\276|\1\201,\367!\255\34\336\324m\351\203\220\227\333r@\244\244\267\263g\37\313y\346N\314\300\345x\202Z\320}\314\377r!\270\10Ft\367C$\216\340"
	.ascii "5\220\346\201:&L<(R\273\221\303\0\313\210\320e\213\33S.\243qdH\227\242\15\371N8\31\357F\251\336\254\330\250\372v?\343\234"
	.ascii "4?\371\334\273\307\307\13O\35\212Q\340K\315\264Y1\310\237~\311\331xsd\352\305\254\203"
	.ascii "4\323\353\303\305\201\240\377\372\23c\353\27\15\335Q\267\360\332I\323\26U&)\324h\236+\26\276X}G\241\374\217\370\270\321z\320"
	.ascii "1\316E\313:\217\225\26\4(\257\327\373\312\273K@~"
	.globl	_s_tdefl_num_probes.lto_priv.0
	.align 32
_s_tdefl_num_probes.lto_priv.0:
	.long	0
	.long	1
	.long	6
	.long	32
	.long	16
	.long	32
	.long	128
	.long	256
	.long	512
	.long	768
	.long	1500
	.align 32
_s_tdefl_large_dist_extra:
	.ascii "\0\0\10\10\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15"
	.globl	_s_tdefl_large_dist_sym.lto_priv.0
	.align 32
_s_tdefl_large_dist_sym.lto_priv.0:
	.ascii "\0\0\22\23\24\24\25\25\26\26\26\26\27\27\27\27\30\30\30\30\30\30\30\30\31\31\31\31\31\31\31\31\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\32\33\33\33\33\33\33\33\33\33\33\33\33\33\33\33\33\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\34\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35\35"
	.align 32
_s_tdefl_small_dist_extra:
	.ascii "\0\0\0\0\1\1\1\1\2\2\2\2\2\2\2\2\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\6\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7\7"
	.globl	_s_tdefl_small_dist_sym.lto_priv.0
	.align 32
_s_tdefl_small_dist_sym.lto_priv.0:
	.ascii "\0\1\2\3\4\4\5\5\6\6\6\6\7\7\7\7\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\20\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21\21"
	.align 32
_mz_bitmasks:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.align 32
_s_tdefl_len_extra:
	.ascii "\0\0\0\0\0\0\0\0\1\1\1\1\1\1\1\1\2\2\2\2\2\2\2\2\2\2\2\2\2\2\2\2\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\4\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\5\0"
	.globl	_s_tdefl_len_sym.lto_priv.0
	.align 32
_s_tdefl_len_sym.lto_priv.0:
	.word	257
	.word	258
	.word	259
	.word	260
	.word	261
	.word	262
	.word	263
	.word	264
	.word	265
	.word	265
	.word	266
	.word	266
	.word	267
	.word	267
	.word	268
	.word	268
	.word	269
	.word	269
	.word	269
	.word	269
	.word	270
	.word	270
	.word	270
	.word	270
	.word	271
	.word	271
	.word	271
	.word	271
	.word	272
	.word	272
	.word	272
	.word	272
	.word	273
	.word	273
	.word	273
	.word	273
	.word	273
	.word	273
	.word	273
	.word	273
	.word	274
	.word	274
	.word	274
	.word	274
	.word	274
	.word	274
	.word	274
	.word	274
	.word	275
	.word	275
	.word	275
	.word	275
	.word	275
	.word	275
	.word	275
	.word	275
	.word	276
	.word	276
	.word	276
	.word	276
	.word	276
	.word	276
	.word	276
	.word	276
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	277
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	278
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	279
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	280
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	281
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	282
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	283
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	284
	.word	285
	.align 4
_s_tdefl_packed_code_size_syms_swizzle:
	.ascii "\20\21\22\0\10\7\11\6\12\5\13\4\14\3\15\2\16\1\17"
	.align 32
__ZL10dec64table:
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	-4
	.long	1
	.long	2
	.long	3
	.align 32
__ZL10inc32table:
	.long	0
	.long	1
	.long	2
	.long	1
	.long	0
	.long	4
	.long	4
	.long	4
.lcomm __ZZ13startwin_putsE7workbuf,1024,32
.lcomm __ZZ13startwin_putsE7newline,4,4
.lcomm __ZZ13startwin_putsE6dactrl,4,4
	.align 4
LC9:
	.long	LC2
	.align 4
LC10:
	.long	LC6
	.align 4
LC11:
	.long	LC4
	.align 4
LC28:
	.long	1065353216
	.align 4
LC65:
	.long	1092616192
	.align 4
LC67:
	.long	1097859072
	.align 16
LC72:
	.long	-1028477379
	.long	0
	.long	-2048144761
	.long	-1640531535
	.align 16
LC73:
	.long	668265295
	.long	-1028477379
	.long	-1640531463
	.long	374761393
	.align 16
LC74:
	.long	-1028477341
	.long	-2048144777
	.long	-2048144777
	.long	0
	.align 16
LC75:
	.long	374761413
	.long	668265263
	.long	-1640531535
	.long	0
	.align 4
LC76:
	.long	1132396544
	.align 4
LC77:
	.long	998277249
	.align 4
LC80:
	.long	964689920
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_mi_stats_print_out.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_app_crashhandler.part.0;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	_md3postload_polymer.part.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
	.def	_polymer_uninit;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetDisplayName;	.scl	2;	.type	32;	.endef
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d6reportEv.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.4;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.3;	.scl	2;	.type	32;	.endef
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_PutsPKc;	.scl	2;	.type	32;	.endef
	.def	_setvlinebpl;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
