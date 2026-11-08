	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL21artGetIndexedFileNamei;	.scl	3;	.type	32;	.endef
__ZL21artGetIndexedFileNamei:
LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$-858993459, %esi
	movl	%eax, %ecx
	mull	%esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	shrl	$3, %ebx
	cmpl	$199, %ecx
	jle	L2
	subl	$200, %ecx
	addl	$28, %ebx
	movl	%ecx, %eax
	mull	%esi
	shrl	$3, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	__ZL13mapartfnXXofs, %eax
	addl	$48, %ecx
	movb	%cl, __ZL14mapartfilename+1(%eax)
	movb	%bl, __ZL14mapartfilename(%eax)
	movl	$__ZL14mapartfilename, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore_state
	leal	(%ebx,%ebx,4), %edx
	movl	%ecx, %eax
	addl	%edx, %edx
	subl	%edx, %eax
	addl	$48, %eax
	movb	%al, __ZL11artfilename.lto_priv.0+7
	movl	%ebx, %eax
	mull	%esi
	shrl	$3, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ebx
	movl	$1374389535, %eax
	mull	%ecx
	addl	$48, %ebx
	movl	$__ZL11artfilename.lto_priv.0, %eax
	movb	%bl, __ZL11artfilename.lto_priv.0+6
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	shrl	$5, %edx
	addl	$48, %edx
	movb	%dl, __ZL11artfilename.lto_priv.0+5
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL10setzrange1Piii;	.scl	3;	.type	32;	.endef
__ZL10setzrange1Piii:
LFB2:
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
	movl	$-1, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%esi, %edi
	movl	%eax, %ebx
	movl	%ecx, %eax
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%eax, %ecx
	sall	%cl, %esi
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	notl	%esi
	movl	%edi, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edx, %esi
	xorl	%eax, %edx
	sarl	$5, %esi
	leal	0(,%esi,4), %edi
	leal	(%ebx,%edi), %ecx
	movl	(%ecx), %ebp
	cmpl	$31, %edx
	jbe	L11
	movl	12(%esp), %edx
	sarl	$5, %eax
	orl	%ebp, %edx
	leal	1(%esi), %ebp
	movl	%edx, (%ecx)
	cmpl	%ebp, %eax
	jle	L9
	leal	-1(%eax), %edx
	movl	$255, 4(%esp)
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	subl	%esi, %eax
	sall	$2, %eax
	movl	%eax, 8(%esp)
	leal	4(%ebx,%edi), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	12(%esp), %edx
	leal	0(%ebp,%edx), %eax
	subl	%esi, %eax
	movl	%eax, %ebp
L9:
	movl	16(%esp), %eax
	orl	%eax, (%ebx,%ebp,4)
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
L11:
	.cfi_restore_state
	movl	12(%esp), %eax
	andl	16(%esp), %eax
	orl	%ebp, %eax
	movl	%eax, (%ecx)
	addl	$20, %esp
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
LFE2:
	.p2align 4
	.def	__ZL10isrectfreeiiii;	.scl	3;	.type	32;	.endef
__ZL10isrectfreeiiii:
LFB3:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	-1(%ecx,%esi), %edi
	movl	%esi, %ebp
	andl	$31, %esi
	sarl	$5, %ebp
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL7mytexo5, %ecx
	movl	__ZL6pow2m1(,%esi,4), %esi
	movl	32(%esp), %eax
	imull	%ecx, %edx
	notl	%esi
	leal	(%edx,%ebp), %ebx
	movl	%edi, %edx
	andl	$31, %edi
	movl	__ZL6pow2m1+4(,%edi,4), %edi
	sarl	$5, %edx
	movl	%edi, 4(%esp)
	subl	%ebp, %edx
	je	L13
	movl	__ZL4zbit, %edi
	movl	%edi, 8(%esp)
	leal	(%edi,%ebx,4), %ebp
	testl	%eax, %eax
	je	L16
	movl	%ecx, (%esp)
	movl	%eax, 32(%esp)
L22:
	testl	%esi, 0(%ebp)
	jne	L19
	movl	$1, %edi
	cmpl	$1, %edx
	jle	L20
	movl	(%esp), %ecx
	movl	32(%esp), %eax
	jmp	L21
	.p2align 4
	.p2align 4,,10
	.p2align 3
L33:
	addl	$1, %edi
	cmpl	%edi, %edx
	je	L32
L21:
	cmpl	$0, 0(%ebp,%edi,4)
	je	L33
L19:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
L32:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	%edx, %edi
	movl	%eax, 32(%esp)
L20:
	movl	8(%esp), %eax
	addl	%ebx, %edi
	movl	4(%esp), %ecx
	testl	%ecx, (%eax,%edi,4)
	jne	L19
	movl	(%esp), %eax
	addl	%eax, %ebx
	subl	$1, 32(%esp)
	leal	0(%ebp,%eax,4), %ebp
	jne	L22
L16:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %eax
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
L13:
	.cfi_restore_state
	testl	%eax, %eax
	je	L16
	movl	__ZL4zbit, %edx
	andl	4(%esp), %esi
	sall	$2, %ecx
	leal	(%edx,%ebx,4), %edx
	jmp	L18
	.p2align 4
	.p2align 4,,10
	.p2align 3
L17:
	addl	%ecx, %edx
	subl	$1, %eax
	je	L16
L18:
	testl	%esi, (%edx)
	je	L17
	jmp	L19
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__ZL7cntquadiiiiiiiiii;	.scl	3;	.type	32;	.endef
__ZL7cntquadiiiiiiiiii:
LFB4:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	32(%esp), %edx
	subl	8(%esp), %edx
	movl	36(%esp), %ecx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	subl	12(%esp), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	40(%esp), %ecx
	subl	16(%esp), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	movl	8(%esp), %ecx
	cmpl	%ecx, 32(%esp)
	je	L39
	movl	12(%esp), %ecx
	cmpl	%ecx, 36(%esp)
	cmove	%ebx, %edx
L35:
	cmpl	%edx, %eax
	movl	%eax, %ecx
	movl	__ZL5shcnt, %ebx
	cmovl	%edx, %ecx
	cmovge	%edx, %eax
	movl	__ZL6shcntp, %edx
	imull	%eax, %edx
	addl	%ecx, %edx
	addl	$1, (%ebx,%edx,4)
	cmpl	%ecx, __ZL5gmaxx
	jge	L37
	movl	%ecx, __ZL5gmaxx
L37:
	cmpl	%eax, __ZL5gmaxy
	jge	L38
	movl	%eax, __ZL5gmaxy
L38:
	addl	$2, %eax
	addl	$2, %ecx
	imull	%eax, %ecx
	movl	__ZL4gvox, %eax
	addl	%ecx, __ZL5garea
	addl	$1, 40(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L39:
	.cfi_restore_state
	movl	%ebx, %eax
	jmp	L35
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL6putvoxiiii;	.scl	3;	.type	32;	.endef
__ZL6putvoxiiii:
LFB5:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	_vnum, %edx
	movl	_vmax, %eax
	movl	__ZL4vcol, %ecx
	cmpl	%eax, %edx
	jge	L48
L43:
	imull	__ZL6voxsiz+8, %esi
	imull	__ZL5yzsiz, %ebx
	addl	%esi, %ebx
	leal	(%ebx,%edi), %eax
	leal	(%edx,%edx,2), %ebx
	leal	(%ecx,%ebx,4), %ecx
	movl	28(%esp), %ebx
	movl	%eax, (%ecx)
	imull	$214013, %eax, %eax
	andl	__ZL13vcolhashsizm1, %eax
	movl	%ebx, 4(%ecx)
	movl	__ZL11vcolhashead, %ebx
	leal	(%ebx,%eax,4), %eax
	movl	(%eax), %ebx
	movl	%ebx, 8(%ecx)
	leal	1(%edx), %ecx
	movl	%edx, (%eax)
	movl	%ecx, _vnum
	addl	$12, %esp
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
L48:
	.cfi_restore_state
	movl	$4096, %edx
	addl	%eax, %eax
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	leal	(%eax,%eax,2), %edx
	movl	%eax, _vmax
	sall	$2, %edx
	movl	%edx, 4(%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L46
	movl	8(%esp), %edx
	testl	%edx, %edx
	jne	L44
L46:
	movl	%ecx, __ZL4vcol
	movl	_vnum, %edx
	jmp	L43
	.p2align 4,,10
	.p2align 3
L44:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL7addquadiiiiiiiiii;	.scl	3;	.type	32;	.endef
__ZL7addquadiiiiiiiiii:
LFB6:
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
	subl	$88, %esp
	.cfi_def_cfa_offset 108
	movl	132(%esp), %eax
	subl	108(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, 24(%esp)
	movl	136(%esp), %eax
	subl	112(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, %ecx
	movl	140(%esp), %eax
	subl	116(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, 48(%esp)
	movl	%eax, %edi
	movl	108(%esp), %eax
	cmpl	%eax, 132(%esp)
	je	L87
	movl	112(%esp), %eax
	cmpl	%eax, 136(%esp)
	setne	%al
	movzbl	%al, %eax
	addl	$1, %eax
	movl	%eax, 44(%esp)
	movl	112(%esp), %eax
	cmpl	%eax, 136(%esp)
	cmove	%edi, %ecx
	movl	%ecx, 48(%esp)
L50:
	movl	24(%esp), %eax
	movl	48(%esp), %esi
	cmpl	%esi, %eax
	jge	L51
	addl	$3, 44(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 48(%esp)
L51:
	movl	__ZL5shcnt, %edx
	movl	48(%esp), %eax
	imull	__ZL6shcntp, %eax
	addl	24(%esp), %eax
	leal	(%edx,%eax,4), %edx
	movl	__ZL4gvox, %edi
	movl	(%edx), %eax
	movl	%edi, 52(%esp)
	leal	1(%eax), %ecx
	movl	%ecx, (%edx)
	movl	__ZL3shp, %edx
	movl	44(%edi), %esi
	movl	%esi, 28(%esp)
	movl	%esi, 16(%esp)
	leal	(%edx,%eax,4), %esi
	movl	48(%edi), %eax
	movzwl	2(%esi), %edx
	movzwl	(%esi), %edi
	movl	%esi, 76(%esp)
	leal	1(%edx), %ecx
	movl	%edi, 12(%esp)
	movl	%edx, %ebx
	imull	%eax, %ecx
	movl	%edi, 20(%esp)
	cmpl	$5, 144(%esp)
	ja	L52
	movl	144(%esp), %edi
	jmp	*L54(,%edi,4)
	.section .rdata,"dr"
	.align 4
L54:
	.long	L89
	.long	L58
	.long	L57
	.long	L56
	.long	L55
	.long	L53
	.text
L87:
	movl	%ecx, 24(%esp)
	movl	$0, 44(%esp)
	jmp	L50
L56:
	movl	116(%esp), %edi
	xorl	%esi, %esi
	movl	%edi, 56(%esp)
	xorl	%edi, %edi
L59:
	movl	48(%esp), %ebp
	testl	%ebp, %ebp
	je	L60
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L61
	movl	12(%esp), %edx
	movl	%esi, 16(%esp)
	movl	56(%esp), %esi
	leal	1(%ecx,%edx), %eax
	movl	28(%esp), %ecx
	movl	$0, 28(%esp)
	leal	(%ecx,%eax,4), %ecx
	leal	-1(%ebp), %eax
	movl	144(%esp), %ebp
	movl	%ecx, 20(%esp)
	movl	__ZL5yzsiz, %ecx
	movl	%eax, 60(%esp)
	addl	124(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	__ZL11vcolhashead, %ecx
	movl	%eax, 64(%esp)
	leal	-1(%ebx), %eax
	movl	%ecx, 36(%esp)
	movl	__ZL13vcolhashsizm1, %ecx
	movl	%eax, 68(%esp)
	addl	124(%esp), %eax
	movl	%eax, 72(%esp)
	movl	%ecx, 40(%esp)
	movl	__ZL4vcol, %ecx
	.p2align 4
	.p2align 3
L81:
	movl	%ecx, 12(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L80:
	cmpl	$5, %ebp
	ja	L62
	cmpl	$2, 44(%esp)
	jmp	*L64(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L64:
	.long	L69
	.long	L68
	.long	L67
	.long	L66
	.long	L65
	.long	L63
	.text
	.p2align 4,,10
	.p2align 3
L65:
	jg	L74
	movl	72(%esp), %edi
	movl	28(%esp), %esi
	addl	128(%esp), %esi
	subl	%ebx, %edi
	.p2align 4
	.p2align 3
L62:
	movl	__ZL6voxsiz+8, %edx
	movl	16(%esp), %eax
	imull	32(%esp), %eax
	movl	36(%esp), %ecx
	imull	%edi, %edx
	addl	%eax, %edx
	addl	%esi, %edx
	imull	$214013, %edx, %eax
	andl	40(%esp), %eax
	movl	(%ecx,%eax,4), %eax
	testl	%eax, %eax
	js	L76
	movl	12(%esp), %ecx
	jmp	L79
	.p2align 5
	.p2align 4,,10
	.p2align 3
L77:
	movl	8(%eax), %eax
	testl	%eax, %eax
	js	L103
L79:
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %eax
	cmpl	(%eax), %edx
	jne	L77
	movl	%ecx, 12(%esp)
	movl	4(%eax), %eax
L78:
	movl	20(%esp), %ecx
	movl	%eax, (%ecx,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, 24(%esp)
	jne	L80
	movl	52(%esp), %eax
	movl	20(%esp), %edx
	addl	$1, 28(%esp)
	movl	12(%esp), %ecx
	movl	48(%eax), %eax
	movl	28(%esp), %ebx
	leal	(%edx,%eax,4), %edx
	movl	%edx, 20(%esp)
	cmpl	%ebx, 48(%esp)
	jne	L81
	movl	52(%esp), %esi
	movl	76(%esp), %edi
	movl	%ebp, 144(%esp)
	movl	44(%esi), %esi
	movzwl	2(%edi), %edx
	movl	%esi, 28(%esp)
	movzwl	(%edi), %esi
	movl	%esi, 12(%esp)
L61:
	movl	24(%esp), %esi
	movl	%edx, 16(%esp)
	movl	$1, %ecx
	movl	76(%esp), %edi
	movl	28(%esp), %ebp
	leal	0(,%esi,4), %ebx
	movl	48(%esp), %esi
	addl	$1, %esi
	movl	%esi, 20(%esp)
	movl	52(%esp), %esi
	jmp	L82
	.p2align 6
	.p2align 4,,10
	.p2align 3
L104:
	movzwl	2(%edi), %edx
	movl	44(%esi), %ebp
	movl	%edx, 16(%esp)
	movzwl	(%edi), %edx
	movl	%edx, 12(%esp)
L82:
	movl	16(%esp), %edx
	addl	%ecx, %edx
	addl	$1, %ecx
	imull	%eax, %edx
	addl	12(%esp), %edx
	leal	0(%ebp,%edx,4), %eax
	movl	4(%eax), %edx
	movl	%edx, (%eax)
	movl	(%eax,%ebx), %edx
	movl	%edx, 4(%eax,%ebx)
	movl	48(%esi), %eax
	cmpl	20(%esp), %ecx
	jne	L104
	movl	52(%esp), %esi
	movl	44(%esi), %edi
	movl	76(%esp), %esi
	movzwl	2(%esi), %ebx
	movzwl	(%esi), %esi
	movl	%edi, 16(%esp)
	leal	1(%ebx), %ecx
	movl	%esi, 20(%esp)
	imull	%eax, %ecx
L60:
	movl	24(%esp), %edi
	imull	%ebx, %eax
	movl	16(%esp), %ebx
	leal	8(,%edi,4), %esi
	movl	20(%esp), %edi
	movl	%esi, 8(%esp)
	addl	%edi, %eax
	leal	(%ebx,%eax,4), %edx
	leal	(%ecx,%edi), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%edx, (%esp)
	movl	%esi, %ebx
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	76(%esp), %ecx
	movl	52(%esp), %edi
	movl	48(%esp), %ebp
	movzwl	2(%ecx), %eax
	movl	48(%edi), %edx
	movl	44(%edi), %esi
	addl	%ebp, %eax
	movl	%ecx, %ebp
	movzwl	(%ecx), %ecx
	movl	%ebx, 8(%esp)
	imull	%edx, %eax
	addl	%eax, %edx
	addl	%ecx, %eax
	addl	%ecx, %edx
	leal	(%esi,%eax,4), %eax
	leal	(%esi,%edx,4), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	40(%edi), %eax
	movzwl	112(%esp), %esi
	movzwl	108(%esp), %edi
	leal	(%eax,%eax,4), %edx
	movl	__ZL5gquad, %eax
	movw	%si, 12(%esp)
	movw	%di, 20(%esp)
	leal	(%eax,%edx,8), %eax
	movw	%si, 2(%eax)
	movzwl	116(%esp), %esi
	leal	6(%eax), %edx
	movw	%di, (%eax)
	movl	%ebp, %edi
	movl	144(%esp), %ebp
	movw	%si, 16(%esp)
	movw	%si, 4(%eax)
	movzwl	120(%esp), %esi
	movw	%si, 10(%eax)
	movzwl	124(%esp), %esi
	movw	%si, 12(%eax)
	movzwl	128(%esp), %esi
	movw	%si, 14(%eax)
	movzwl	132(%esp), %esi
	movw	%si, 20(%eax)
	movzwl	136(%esp), %esi
	movw	%si, 22(%eax)
	movzwl	140(%esp), %esi
	movw	%si, 24(%eax)
	leal	36(%eax), %esi
L83:
	movzwl	2(%edi), %ebx
	addl	$10, %edx
	leal	1(%ebx), %ecx
	movzwl	(%edi), %ebx
	movw	%cx, -8(%edx)
	addl	$1, %ebx
	movw	%bx, -10(%edx)
	cmpl	%edx, %esi
	jne	L83
	movzwl	20(%esp), %edi
	movzwl	16(%eax), %ecx
	movl	%ebp, 144(%esp)
	movl	24(%esp), %ebp
	movzwl	18(%eax), %edx
	movzwl	48(%esp), %esi
	movl	%ebp, %ebx
	cmpl	$2, 44(%esp)
	jg	L84
	addl	%ebp, %ecx
	movw	%cx, 16(%eax)
L85:
	addw	26(%eax), %bx
	addw	28(%eax), %si
	movw	%bx, 26(%eax)
	addw	6(%eax), %bx
	movw	%si, 28(%eax)
	addw	8(%eax), %si
	subl	%edx, %esi
	movzwl	%bx, %edx
	addw	20(%eax), %di
	subw	%cx, %dx
	movl	%esi, %ecx
	sall	$16, %ecx
	orl	%ecx, %edx
	movl	%edx, 36(%eax)
	movl	%edi, %edx
	subw	10(%eax), %dx
	movw	%dx, 82(%esp)
	movzwl	12(%esp), %edx
	addw	22(%eax), %dx
	subw	12(%eax), %dx
	movw	%dx, 84(%esp)
	movl	144(%esp), %edi
	movl	82(%esp), %ecx
	movzwl	16(%esp), %edx
	addw	24(%eax), %dx
	subw	14(%eax), %dx
	movw	%dx, 34(%eax)
	movw	%dx, 86(%esp)
	movl	__ZL8gqfacind(,%edi,4), %edx
	movl	%ecx, 30(%eax)
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	testl	%edx, %edx
	jns	L86
	movl	%eax, __ZL8gqfacind(,%edi,4)
L86:
	movl	52(%esp), %edi
	addl	$1, %eax
	movl	%eax, 40(%edi)
	addl	$88, %esp
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
L68:
	.cfi_restore_state
	jg	L71
	movl	108(%esp), %eax
	movl	28(%esp), %esi
	addl	116(%esp), %esi
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	jmp	L62
	.p2align 4,,10
	.p2align 3
L63:
	jg	L75
	movl	112(%esp), %edi
	movl	28(%esp), %esi
	addl	116(%esp), %esi
	addl	%ebx, %edi
	jmp	L62
	.p2align 4,,10
	.p2align 3
L66:
	jg	L73
	movl	108(%esp), %eax
	movl	28(%esp), %edi
	addl	112(%esp), %edi
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	jmp	L62
	.p2align 4,,10
	.p2align 3
L69:
	jg	L70
	movl	68(%esp), %eax
	addl	120(%esp), %eax
	subl	%ebx, %eax
	movl	28(%esp), %esi
	addl	128(%esp), %esi
	movl	%eax, 16(%esp)
	jmp	L62
	.p2align 4,,10
	.p2align 3
L67:
	movl	120(%esp), %eax
	jg	L72
	subl	24(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	movl	124(%esp), %eax
	leal	-1(%eax), %edi
	subl	28(%esp), %edi
	jmp	L62
L53:
	movl	$0, 56(%esp)
	movl	108(%esp), %esi
	xorl	%edi, %edi
	jmp	L59
L89:
	movl	108(%esp), %ebp
	movl	144(%esp), %edi
	movl	144(%esp), %esi
	movl	%ebp, 132(%esp)
	movl	120(%esp), %ebp
	movl	%edi, 56(%esp)
	movl	124(%esp), %edi
	movl	%ebp, 108(%esp)
	movl	132(%esp), %ebp
	movl	%ebp, 120(%esp)
	jmp	L59
L55:
	movl	112(%esp), %edi
	movl	120(%esp), %esi
	movl	$0, 56(%esp)
	addl	$1, 108(%esp)
	movl	%edi, 136(%esp)
	leal	1(%esi), %edi
	movl	%edi, 120(%esp)
	movl	124(%esp), %edi
	addl	$1, 132(%esp)
	movl	%edi, 112(%esp)
	movl	136(%esp), %edi
	movl	%edi, 124(%esp)
	xorl	%edi, %edi
	jmp	L59
L58:
	movl	112(%esp), %edi
	addl	$1, 124(%esp)
	addl	$1, 136(%esp)
	leal	1(%edi), %esi
	movl	$0, 56(%esp)
	movl	%esi, 112(%esp)
	xorl	%esi, %esi
	jmp	L59
L57:
	movl	128(%esp), %esi
	addl	$1, 116(%esp)
	addl	$1, 140(%esp)
	leal	1(%esi), %edi
	movl	%esi, 56(%esp)
	movl	136(%esp), %esi
	movl	%edi, 128(%esp)
	movl	124(%esp), %edi
	movl	%esi, 112(%esp)
	movl	%edi, 136(%esp)
	xorl	%edi, %edi
	movl	%esi, 124(%esp)
	xorl	%esi, %esi
	jmp	L59
	.p2align 4,,10
	.p2align 3
L103:
	movl	%ecx, 12(%esp)
L76:
	movl	$8421504, %eax
	jmp	L78
L71:
	movl	116(%esp), %esi
	movl	28(%esp), %eax
	addl	108(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %esi
	jmp	L62
L74:
	movl	128(%esp), %esi
	movl	64(%esp), %edi
	subl	28(%esp), %edi
	addl	%ebx, %esi
	jmp	L62
L75:
	movl	116(%esp), %esi
	movl	28(%esp), %edi
	addl	112(%esp), %edi
	addl	%ebx, %esi
	jmp	L62
L70:
	movl	128(%esp), %esi
	movl	60(%esp), %eax
	addl	120(%esp), %eax
	subl	28(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %esi
	jmp	L62
L73:
	movl	112(%esp), %edi
	movl	28(%esp), %eax
	addl	108(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %edi
	jmp	L62
L72:
	subl	$1, %eax
	subl	28(%esp), %eax
	movl	%eax, 16(%esp)
	movl	124(%esp), %eax
	leal	-1(%eax), %edi
	subl	%ebx, %edi
	jmp	L62
L84:
	addw	48(%esp), %dx
	movw	%dx, 18(%eax)
	jmp	L85
L52:
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%esi, 56(%esp)
	xorl	%esi, %esi
	jmp	L59
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL14tileSoftDeletei;	.scl	3;	.type	32;	.endef
__ZL14tileSoftDeletei:
LFB8:
	.cfi_startproc
	movl	$0, _tilesiz(,%eax,4)
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movb	$0, _picsiz(%eax)
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	movb	$1, _walock(%eax)
	movl	$0, _waloff(,%eax,4)
	notl	%edx
	movb	$0, _picanm+4(%eax,%eax,4)
	andb	%dl, _faketile(%ecx)
	movl	$0, _picanm(%eax,%eax,4)
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__ZL17alloc_vcolhasheadv;	.scl	3;	.type	32;	.endef
__ZL17alloc_vcolhasheadv:
LFB9:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	__ZL13vcolhashsizm1, %eax
	movl	_g_sm_heap, %ecx
	leal	4(,%eax,4), %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L107
	movl	__ZL13vcolhashsizm1, %edx
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	leal	4(,%edx,4), %edx
	movl	%eax, __ZL11vcolhashead
	movl	%edx, 8(%esp)
	call	_memset
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L107:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__ZL10alloc_vbitv;	.scl	3;	.type	32;	.endef
__ZL10alloc_vbitv:
LFB10:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	__ZL6voxsiz+4, %ebx
	imull	__ZL6voxsiz+8, %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, __ZL5yzsiz
	imull	__ZL6voxsiz, %ebx
	addl	$31, %ebx
	sarl	$3, %ebx
	addl	$1, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L111
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL4vbit
	call	_memset
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L111:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC0:
	.ascii " %d %d\12\0"
	.align 4
LC1:
	.ascii "fatal error in texcache: no indexFilePtr\0"
LC2:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.def	_texcache_postwritetex;	.scl	3;	.type	32;	.endef
_texcache_postwritetex:
LFB11:
	.cfi_startproc
	subl	$104, %esp
	.cfi_def_cfa_offset 108
	movl	%esi, 92(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 96(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%eax, %edx
	movl	$_texcache+32812, %eax
	movl	%ebx, 88(%esp)
	.cfi_offset 3, -20
	call	_hash_find
	testl	%eax, %eax
	js	L115
	movl	_texcache+40, %edx
	movl	(%edx,%eax,4), %ebx
	movl	%edi, 4(%ebx)
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	4(%ebx), %eax
	movl	%eax, 8(%ebx)
	movl	_texcache+24, %esi
	testl	%esi, %esi
	je	L124
L135:
	movl	(%ebx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	8(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	4(%ebx), %eax
	leal	24(%esp), %ebx
	movl	$LC0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$64, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	_texcache+24, %esi
	testl	%esi, %esi
	je	L114
	movl	%ebx, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	_fwrite
L114:
	movl	88(%esp), %ebx
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	addl	$104, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L115:
	.cfi_restore_state
	movl	_texcache+36, %ebx
	movl	%ebp, 100(%esp)
	.cfi_offset 5, -8
	movl	_g_sm_heap, %ecx
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	je	L117
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_strcpy
	movl	20(%esp), %ecx
	movb	$0, (%ecx,%ebp)
	movl	%ecx, (%ebx)
	movl	%edi, 4(%ebx)
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	4(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 8(%ebx)
	movl	$16, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 104
	subl	$4, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	je	L133
	movl	$0, (%eax)
	movl	%esi, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, 12(%ebx)
	movl	_texcache+32828, %ecx
	movl	$_texcache+32812, %eax
	movl	$0, (%esp)
	call	_hash_add
	movl	_texcache+32828, %eax
	movl	_texcache+32832, %ecx
	leal	1(%eax), %edx
	movl	_texcache+40, %eax
	movl	%edx, _texcache+32828
	cmpl	%ecx, %edx
	jg	L134
L121:
	movl	%ebx, -4(%eax,%edx,4)
	movl	12(%ebx), %eax
	movl	_texcache+24, %esi
	movl	100(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _texcache+36
	testl	%esi, %esi
	jne	L135
L124:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L114
	movl	$LC1, 12(%esp)
	movl	$732, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L114
	.p2align 4,,10
	.p2align 3
L134:
	.cfi_offset 5, -8
	addl	$512, %ecx
	movl	%eax, (%esp)
	leal	0(,%ecx,4), %esi
	movl	%ecx, _texcache+32832
	movl	_g_sm_heap, %ecx
	movl	%esi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 100
	subl	$8, %esp
	.cfi_def_cfa_offset 108
	testl	%eax, %eax
	jne	L127
	testl	%esi, %esi
	jne	L122
L127:
	movl	%eax, _texcache+40
	movl	_texcache+32828, %edx
	jmp	L121
	.p2align 4,,10
	.p2align 3
L122:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L117:
	movl	20(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L133:
	movl	$16, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "Using '%s' timer with %g MHz frequency\0"
LC6:
	.ascii "source/build/src/timer.cpp\0"
	.align 4
LC7:
	.ascii "Invariant TSC support not detected! You may experience timing issues.\0"
	.text
	.p2align 4
	.def	__ZL16osdcmd_sys_timerPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL16osdcmd_sys_timerPK13osdfuncparm_t:
LFB13:
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
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$44, %esp
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	__ZL9sys_timer.lto_priv.0, %edx
	cmpl	$3, %edx
	jbe	L137
	movl	$0, __ZL9sys_timer.lto_priv.0
L138:
	movl	_osd, %eax
	leal	-24(%ebp), %ebx
	movl	3240(%eax), %eax
	testl	%eax, %eax
	je	L152
L141:
	movl	$10000, %eax
	imull	__ZL19clockTicksPerSecond.lto_priv.0
	movl	%eax, -32(%ebp)
	movl	%ebx, %eax
	movl	%edx, -28(%ebp)
	call	_enet_gettime.constprop.0.isra.0
	movl	-20(%ebp), %eax
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	$1000000000, 8(%esp)
	movl	%eax, %ebx
	movl	%eax, %edx
	movl	$0, 12(%esp)
	sarl	$31, %ebx
	imull	%edi, %edx
	movl	%ebx, %ecx
	imull	%esi, %ecx
	addl	%edx, %ecx
	mull	%esi
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %ecx
	movl	-24(%ebp), %eax
	movl	%edx, %ebx
	cltd
	movl	%edx, %eax
	movl	-28(%ebp), %edx
	imull	-24(%ebp), %edx
	imull	%esi, %eax
	leal	(%eax,%edx), %edi
	movl	-32(%ebp), %eax
	mull	-24(%ebp)
	addl	%edi, %edx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, _clockLastSampleTime
	xorl	%eax, %eax
	movl	%ebx, _clockLastSampleTime+4
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L137:
	.cfi_restore_state
	testl	%edx, %edx
	je	L138
L139:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%edx, %esi
	leal	-24(%ebp), %ebx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	jns	L153
L142:
	cmpl	$3, %esi
	jne	L141
	testb	$1, _cpu+8
	jne	L141
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L141
	movl	$LC7, 12(%esp)
	movl	$246, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L141
	.p2align 4,,10
	.p2align 3
L153:
	cmpl	$1, %edx
	je	L143
	cmpl	$3, %edx
	jne	L147
	movl	__ZL8tsc_freq.lto_priv.0, %esi
	movl	__ZL8tsc_freq.lto_priv.0+4, %edi
L145:
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	fildq	-32(%ebp)
	testl	%edi, %edi
	jns	L146
	fadds	LC3
L146:
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fdivs	LC4
	movl	__ZZL16osdcmd_sys_timerPK13osdfuncparm_tE1s(,%edx,4), %eax
	movl	$LC5, 12(%esp)
	movl	$242, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	fstpl	20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL9sys_timer.lto_priv.0, %esi
	jmp	L142
	.p2align 4,,10
	.p2align 3
L152:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	leal	-24(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L141
L147:
	call	_SDL_GetPerformanceFrequency
	leal	-24(%ebp), %ebx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	__ZL9sys_timer.lto_priv.0, %edx
	jmp	L145
	.p2align 4,,10
	.p2align 3
L143:
	movl	%ebx, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	__ZL9sys_timer.lto_priv.0, %edx
	subl	$4, %esp
	jmp	L145
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
LC10:
	.ascii "rb\0"
	.text
	.p2align 4
	.def	__ZL8kzipopenPKc;	.scl	3;	.type	32;	.endef
__ZL8kzipopenPKc:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$596, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movb	$124, 26(%esp)
	jmp	L155
	.p2align 5
	.p2align 4,,10
	.p2align 3
L157:
	movb	%dl, 26(%esp,%eax)
	cmpl	$260, %eax
	je	L181
L155:
	movzbl	(%ecx,%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L157
L156:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
	movb	$0, 26(%esp,%eax)
	testl	%ebx, %ebx
	je	L158
	movzbl	27(%esp), %eax
	movb	%al, 20(%esp)
	testb	%al, %al
	je	L182
	movl	%eax, %esi
	leal	28(%esp), %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L160:
	leal	(%eax,%eax,2), %ecx
	movl	%esi, %eax
	addl	$1, %edx
	movzbl	%al, %esi
	movzbl	_toupperlookup(%esi), %eax
	movzbl	-1(%edx), %esi
	subl	%ecx, %eax
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L160
	movzbl	%al, %eax
L159:
	movl	__ZL9kzhashead.lto_priv.0(,%eax,4), %edi
	testl	%edi, %edi
	js	L158
	.p2align 4
	.p2align 3
L168:
	leal	21(%ebx,%edi), %esi
	leal	27(%esp), %ecx
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L161
	jmp	L210
	.p2align 4,,10
	.p2align 3
L211:
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%eax)
	jne	L164
	movzbl	1(%esi), %eax
	addl	$1, %esi
	addl	$1, %ecx
	testb	%al, %al
	je	L163
L161:
	movzbl	(%ecx), %edx
	testb	%dl, %dl
	jne	L211
L164:
	movl	(%ebx,%edi), %edi
	testl	%edi, %edi
	jns	L168
L158:
	movl	__ZL12kzdirnamhead.lto_priv.0, %edi
	testl	%edi, %edi
	js	L166
	leal	26(%esp), %eax
	leal	290(%esp), %esi
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L180:
	leal	4(%ebx,%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%esi, (%esp)
	call	_strlen
	movl	20(%esp), %ecx
	addl	%eax, %ecx
	cmpl	$305, %ecx
	ja	L177
	testl	%eax, %eax
	je	L178
	movzbl	289(%esp,%eax), %ecx
	cmpb	$47, %cl
	je	L178
	cmpb	$92, %cl
	je	L178
	movl	$92, %edx
	movw	%dx, (%esi,%eax)
	.p2align 4
	.p2align 3
L178:
	leal	26(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcat
	movl	$LC10, 4(%esp)
	movl	%esi, (%esp)
	call	_fopen
	movl	%eax, _kzfs
	testl	%eax, %eax
	jne	L179
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
L177:
	movl	(%ebx,%edi), %edi
	testl	%edi, %edi
	jns	L180
L166:
	xorl	%eax, %eax
L154:
	addl	$596, %esp
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
L163:
	.cfi_restore_state
	movzbl	(%ecx), %eax
L162:
	testb	%al, %al
	jne	L164
	movl	16(%ebx,%edi), %eax
	movl	12(%ebx,%edi), %esi
	movl	%eax, 16(%esp)
	movzbl	20(%ebx,%edi), %eax
	movl	$LC10, 4(%esp)
	addl	8(%ebx,%edi), %ebx
	movl	%ebx, (%esp)
	movb	%al, 20(%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L166
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	cmpb	$0, 20(%esp)
	jne	L169
	movl	16(%esp), %eax
	movl	%ebx, _kzfs
	movl	$0, _kzfs+4
	movl	%eax, _kzfs+20
	movl	%ebx, %eax
	movl	%esi, _kzfs+8
	movl	$0, _kzfs+24
	movl	$0, _kzfs+36
	jmp	L154
L169:
	leal	290(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$30, 4(%esp)
	movl	%eax, (%esp)
	call	_fread
	cmpl	$67324752, 290(%esp)
	jne	L212
	movzwl	318(%esp), %edx
	movzwl	316(%esp), %eax
	movl	$1, 8(%esp)
	movl	%ebx, (%esp)
	addl	%edx, %eax
	movl	%eax, 4(%esp)
	call	_fseek
	movl	%ebx, (%esp)
	movzwl	298(%esp), %eax
	movl	%ebx, _kzfs
	movl	%eax, _kzfs+4
	call	_ftell
	movl	$0, _kzfs+24
	movl	%eax, _kzfs+8
	movl	312(%esp), %eax
	movl	%eax, _kzfs+20
	movl	_kzfs+4, %eax
	testl	%eax, %eax
	je	L209
	cmpl	$8, %eax
	jne	L213
	cmpb	$0, __ZL9pnginited.lto_priv.0
	je	L214
L175:
	movl	308(%esp), %eax
	movl	$0, _kzfs+16
	movl	$2147483647, __ZL7gslidew
	movl	%eax, _kzfs+12
	movl	_kzfs, %eax
	jmp	L154
	.p2align 4,,10
	.p2align 3
L210:
	movzbl	20(%esp), %eax
	jmp	L162
L179:
	movl	$0, _kzfs+4
	movl	$0, _kzfs+8
	movl	$0, (%esp)
	call	*__imp___fileno
	movl	%eax, (%esp)
	call	_filelength
	movl	$0, _kzfs+24
	movl	%eax, _kzfs+20
L209:
	movl	_kzfs, %eax
	movl	$0, _kzfs+36
	addl	$596, %esp
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
L181:
	.cfi_restore_state
	movl	$261, %eax
	jmp	L156
L182:
	xorl	%eax, %eax
	jmp	L159
L212:
	movl	%ebx, (%esp)
	call	_fclose
	jmp	L166
L213:
	movl	_kzfs, %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L166
L214:
	movb	$1, __ZL9pnginited.lto_priv.0
	call	__ZL13initpngtablesv.lto_priv.0
	jmp	L175
	.cfi_endproc
LFE22:
	.p2align 4
	.def	__Z15kclose_internaliPKhPi;	.scl	3;	.type	32;	.endef
__Z15kclose_internaliPKhPi:
LFB27:
	.cfi_startproc
	testl	%eax, %eax
	js	L224
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movzbl	(%edx,%eax), %edx
	leal	(%ecx,%eax,4), %ecx
	cmpb	$-1, %dl
	je	L227
	cmpb	$-2, %dl
	je	L228
	movl	$-1, (%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L224:
	ret
	.p2align 4,,10
	.p2align 3
L228:
	.cfi_def_cfa_offset 12
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L219
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_fclose
	movl	4(%esp), %ecx
	movl	$0, _kzfs
L219:
	movl	$-1, __ZL9kzcurhand
	movl	$-1, (%ecx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L227:
	.cfi_restore_state
	movl	(%ecx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_close
	movl	4(%esp), %ecx
	movl	$-1, (%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.def	_klistaddentry.isra.0;	.scl	3;	.type	32;	.endef
_klistaddentry.isra.0:
LFB31:
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
	subl	$24, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edx
	movl	(%eax), %esi
	movl	%eax, -24(%ebp)
	movl	%ecx, -16(%ebp)
	movl	%edx, -20(%ebp)
	testl	%esi, %esi
	je	L230
	cmpl	$4, %ecx
	je	L231
	xorl	%ebx, %ebx
L233:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L261
	je	L262
	movl	%edi, (%esp)
	call	_strlen
	addl	$29, %eax
	movl	%eax, -28(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L237
	leal	28(%eax), %eax
	movl	%ecx, -28(%ebp)
	movl	%eax, (%ecx)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%ecx)
	movl	-20(%ebp), %eax
	movl	$0, 20(%ecx)
	movl	%eax, 8(%ecx)
	movl	$0, 24(%ecx)
	testl	%ebx, %ebx
	je	L238
L239:
	movl	%ebx, 16(%ecx)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	je	L241
	movl	%ecx, 16(%eax)
L241:
	movl	%ecx, 12(%ebx)
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
L261:
	.cfi_restore_state
	movl	12(%esi), %eax
	movl	%esi, %ebx
	testl	%eax, %eax
	je	L234
	movl	%eax, %esi
	jmp	L233
	.p2align 4,,10
	.p2align 3
L262:
	movl	-20(%ebp), %eax
	cmpl	%eax, 8(%esi)
	jle	L229
	movl	-16(%ebp), %edx
	movl	%eax, 8(%esi)
	movl	%edx, 4(%esi)
L229:
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
	.p2align 4
	.p2align 4,,10
	.p2align 3
L231:
	.cfi_restore_state
	movl	%esi, %eax
	movl	12(%esi), %esi
	testl	%esi, %esi
	jne	L231
	movl	%eax, %esi
L234:
	movl	%edi, (%esp)
	call	_strlen
	addl	$29, %eax
	movl	%eax, -28(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L237
	leal	28(%ecx), %eax
	movl	%ecx, -24(%ebp)
	movl	%esi, %ebx
	movl	%eax, (%ecx)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-24(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%ecx)
	movl	-20(%ebp), %eax
	movl	$0, 20(%ecx)
	movl	%eax, 8(%ecx)
	movl	$0, 24(%ecx)
	jmp	L239
	.p2align 4,,10
	.p2align 3
L230:
	movl	%edi, (%esp)
	call	_strlen
	addl	$29, %eax
	movl	%eax, -28(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L237
	leal	28(%ecx), %eax
	movl	%ecx, -28(%ebp)
	movl	%eax, (%ecx)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	%eax, 4(%ecx)
	movl	-20(%ebp), %eax
	movl	$0, 20(%ecx)
	movl	%eax, 8(%ecx)
	movl	$0, 24(%ecx)
L238:
	movl	-24(%ebp), %eax
	movl	$0, 16(%ecx)
	movl	(%eax), %eax
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	je	L240
	movl	%ecx, 16(%eax)
L240:
	movl	-24(%ebp), %eax
	movl	%ecx, (%eax)
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
L237:
	.cfi_restore_state
	movl	-28(%ebp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
	.align 4
LC11:
	.ascii "glGetTexLevelParameteriv returned GL_FALSE!\0"
LC12:
	.ascii "texcache mystery error\0"
	.text
	.p2align 4
	.globl	_texcache_writetex_fromdriver
	.def	_texcache_writetex_fromdriver;	.scl	2;	.type	32;	.endef
_texcache_writetex_fromdriver:
LFB32:
	.cfi_startproc
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	%ebx, 100(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_texcache_enabled
	testl	%eax, %eax
	je	L263
	leal	72(%esp), %eax
	movl	$0, 72(%esp)
	movl	%eax, 12(%esp)
	movl	$34465, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	cmpl	$1, 72(%esp)
	je	L265
	cmpl	$1, __ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK
	je	L341
L263:
	movl	100(%esp), %ebx
	movl	108(%esp), %edi
	addl	$116, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L265:
	.cfi_restore_state
	movl	%esi, 104(%esp)
	movl	$825514572, (%ebx)
	cmpl	$2, _glusetexcache
	.cfi_offset 6, -16
	je	L342
L267:
	movl	_texcache+28, %eax
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	$1, 8(%esp)
	movl	%eax, %esi
	movl	_texcache+28, %eax
	movl	$20, 4(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	call	_fwrite
	cmpl	$1, %eax
	je	L343
	movl	$0, 28(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
L268:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L344
L300:
	movl	_texcache+36, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%eax)
	movl	_texcache+36, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	104(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	100(%esp), %ebx
	movl	108(%esp), %edi
	addl	$116, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L343:
	.cfi_restore_state
	movl	%ebp, 112(%esp)
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L269:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L269
	movl	%eax, 56(%esp)
	movl	$0, 40(%esp)
	movl	$0, 28(%esp)
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	%edi, 64(%esp)
	movl	%esi, 68(%esp)
L321:
	movl	40(%esp), %esi
	leal	72(%esp), %eax
	movl	$34465, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	cmpl	$1, 72(%esp)
	jne	L339
	leal	72(%esp), %eax
	movl	$4099, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %eax
	movl	$4096, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 80(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %eax
	movl	$4097, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 52(%esp)
	movl	%eax, 84(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %eax
	movl	$4101, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 60(%esp)
	movl	%eax, 88(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %eax
	movl	$32881, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 92(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %eax
	movl	$34464, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 96(%esp)
	leal	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3553, (%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 104
	subl	$16, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	72(%esp), %ebp
	movl	%ebp, 76(%esp)
	cmpl	%ebp, 56(%esp)
	jb	L345
L271:
	movl	32(%esp), %edi
	movl	40(%esp), %eax
	movl	$3553, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGetCompressedTexImage
	.cfi_def_cfa_offset 108
	subl	$12, %esp
	.cfi_def_cfa_offset 120
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L339
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	$24, 4(%esp)
	movl	%eax, 12(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	cmpl	$1, %eax
	jne	L339
	movl	80(%esp), %eax
	xorl	%ebx, %ebx
	subl	$33778, %eax
	cmpl	$1, %eax
	ja	L303
	movl	28(%esp), %ecx
	movl	%edi, %edx
L279:
	movzbl	(%edx,%ebx), %eax
	movb	%al, (%ecx,%ebx)
	addl	$1, %ebx
	cmpl	$8, %ebx
	jne	L279
	cmpl	$16, %ebp
	jbe	L280
	movl	28(%esp), %eax
	movl	$16, %esi
	leal	8(%eax), %ecx
	movl	32(%esp), %eax
	leal	16(%eax), %edx
	.p2align 4
	.p2align 3
L281:
	xorl	%eax, %eax
	movl	%ebx, %edi
	.p2align 4
	.p2align 4
	.p2align 3
L282:
	movzbl	(%edx,%eax), %ebx
	movb	%bl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	$8, %eax
	jne	L282
	addl	$16, %esi
	movl	%edi, %ebx
	addl	$8, %ecx
	addl	$16, %edx
	cmpl	%ebp, %esi
	jb	L281
L280:
	movzbl	_divtable32+84, %ecx
	movl	_divtable32+80, %edx
	movl	%ecx, %edi
	andl	$31, %edi
	testl	%edx, %edx
	je	L346
	movl	%edx, %eax
	imull	%ebp
	movl	%ecx, %eax
	sarb	$7, %al
	movsbl	%al, %esi
	movl	%ebp, %eax
	xorl	%esi, %eax
	addl	%edx, %eax
	subl	%esi, %eax
	andl	$64, %ecx
	movl	%edi, %ecx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
L284:
	movl	36(%esp), %ecx
	movl	28(%esp), %edx
	sall	$3, %eax
	call	__Z13dxt_handle_ioiPvPc
	movl	$16, 48(%esp)
	movl	$16, 20(%esp)
	jmp	L278
	.p2align 4,,10
	.p2align 3
L341:
	.cfi_restore 5
	.cfi_restore 6
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L347
L266:
	movl	$0, __ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK
	jmp	L263
	.p2align 4,,10
	.p2align 3
L342:
	.cfi_offset 6, -16
	orl	$4, 12(%ebx)
	jmp	L267
	.p2align 4,,10
	.p2align 3
L303:
	.cfi_offset 5, -8
	movl	$8, 48(%esp)
	movl	$8, 20(%esp)
L278:
	movl	32(%esp), %esi
	movl	28(%esp), %edi
	leal	(%ebx,%esi), %eax
	leal	4(%esi,%ebx), %ecx
	movl	%eax, 24(%esp)
	testl	%ebp, %ebp
	je	L326
	movl	%ecx, 44(%esp)
	movl	%ebp, 16(%esp)
	movl	%eax, %ebp
L288:
	xorl	%ebx, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L287:
	movzwl	0(%ebp,%ebx), %eax
	addl	$2, %edi
	addl	20(%esp), %ebx
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, %esi
	andw	$2016, %ax
	shrw	$5, %cx
	shrw	$11, %dx
	andl	$63, %ecx
	sarl	%ecx
	subl	%ecx, %esi
	subl	%ecx, %edx
	andl	$31, %esi
	sall	$11, %edx
	addl	%esi, %eax
	addl	%eax, %edx
	movw	%dx, -2(%edi)
	cmpl	16(%esp), %ebx
	jb	L287
	addl	$2, %ebp
	cmpl	44(%esp), %ebp
	jne	L288
	movl	16(%esp), %ebp
L289:
	movl	48(%esp), %eax
	leal	0(,%eax,4), %edi
	addl	%edi, %eax
	movzbl	_divtable32+4(%eax), %ebx
	movl	_divtable32(%eax), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L291
	movl	$-1, %eax
	movl	%ebp, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%ebx, %eax
	subl	%ebx, %eax
L292:
	movl	28(%esp), %ebx
	movl	36(%esp), %ecx
	sall	$2, %eax
	movl	%ebx, %edx
	call	__Z13dxt_handle_ioiPvPc
	testl	%ebp, %ebp
	je	L294
	movl	24(%esp), %eax
	movl	20(%esp), %esi
	movl	%edi, 16(%esp)
	.p2align 4
	.p2align 3
L295:
	movzbl	5(%eax), %edi
	movzbl	4(%eax), %ecx
	leal	0(,%edi,4), %edx
	andl	$3, %ecx
	movzbl	7(%eax), %edi
	andl	$12, %edx
	orl	%ecx, %edx
	movzbl	6(%eax), %ecx
	sall	$6, %edi
	sall	$4, %ecx
	andl	$48, %ecx
	addl	%edi, %ecx
	addl	%ecx, %edx
	movb	%dl, (%ebx)
	movzbl	4(%eax), %edx
	movzbl	5(%eax), %ecx
	movzbl	6(%eax), %edi
	shrb	$2, %dl
	andl	$12, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	leal	0(,%edi,4), %ecx
	andl	$48, %ecx
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	shrb	$2, %cl
	sall	$6, %ecx
	addl	%ecx, %edx
	movb	%dl, 1(%ebx)
	movzbl	5(%eax), %edx
	movzbl	4(%eax), %ecx
	movzbl	6(%eax), %edi
	shrb	$2, %dl
	shrb	$4, %cl
	andl	$12, %edx
	andl	$48, %edi
	andl	$3, %ecx
	orl	%ecx, %edx
	movzbl	7(%eax), %ecx
	shrb	$4, %cl
	sall	$6, %ecx
	addl	%edi, %ecx
	addl	%ecx, %edx
	movb	%dl, 2(%ebx)
	movzbl	6(%eax), %ecx
	movzbl	5(%eax), %edx
	shrb	$6, %cl
	shrb	$6, %dl
	sall	$4, %ecx
	leal	(%ecx,%edx,4), %ecx
	movzbl	4(%eax), %edx
	shrb	$6, %dl
	addl	%ecx, %edx
	movzbl	7(%eax), %ecx
	andl	$-64, %ecx
	addl	%esi, %eax
	addl	$4, %ebx
	addl	%ecx, %edx
	movb	%dl, -1(%ebx)
	movl	%eax, %edx
	subl	24(%esp), %edx
	cmpl	%ebp, %edx
	jb	L295
	movl	16(%esp), %edi
L294:
	addl	48(%esp), %edi
	movzbl	_divtable32+4(%edi), %ebx
	movl	_divtable32(%edi), %edx
	movl	%ebx, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L296
	movl	$-1, %eax
	movl	%ebp, %edx
	sarb	$7, %bl
	sall	%cl, %eax
	sarl	$31, %edx
	movsbl	%bl, %ebx
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%ebx, %eax
	subl	%ebx, %eax
L297:
	movl	36(%esp), %ecx
	movl	28(%esp), %edx
	sall	$2, %eax
	call	__Z13dxt_handle_ioiPvPc
	addl	$1, 40(%esp)
	cmpl	$1, 52(%esp)
	jg	L321
	cmpl	$1, 60(%esp)
	jg	L321
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	call	_texcache_postwritetex
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	movl	104(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L263
	.p2align 3
	.p2align 4,,10
	.p2align 3
L326:
	.cfi_restore_state
	addl	$2, %eax
	cmpl	%eax, %ecx
	jne	L326
	jmp	L289
	.p2align 4,,10
	.p2align 3
L291:
	movl	%edx, %eax
	imull	%ebp
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %esi
	movl	%ebp, %eax
	xorl	%esi, %eax
	addl	%edx, %eax
	subl	%esi, %eax
	andl	$64, %ebx
	cmove	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	jmp	L292
	.p2align 4,,10
	.p2align 3
L296:
	movl	%edx, %eax
	movl	%ebp, %esi
	imull	%ebp
	movl	%ebx, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %esi
	addl	%edx, %esi
	subl	%eax, %esi
	andl	$64, %ebx
	cmove	%edx, %esi
	movl	%esi, %eax
	shrl	$31, %esi
	sarl	%cl, %eax
	addl	%esi, %eax
	jmp	L297
	.p2align 4,,10
	.p2align 3
L345:
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	je	L340
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L340
	movl	28(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 112
	subl	$8, %esp
	.cfi_def_cfa_offset 120
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L340
	movl	%ebp, 56(%esp)
	jmp	L271
	.p2align 4,,10
	.p2align 3
L339:
	movl	112(%esp), %ebp
	.cfi_restore 5
	jmp	L268
	.p2align 4,,10
	.p2align 3
L344:
	movl	$LC12, 12(%esp)
	movl	$675, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L300
L346:
	.cfi_offset 5, -8
	sarb	$7, %cl
	movl	$-1, %eax
	movsbl	%cl, %edx
	movl	%edi, %ecx
	sall	%cl, %eax
	movl	%ebp, %ecx
	sarl	$31, %ecx
	notl	%eax
	andl	%ecx, %eax
	movl	%edi, %ecx
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
	jmp	L284
L340:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L347:
	.cfi_restore 5
	.cfi_restore 6
	movl	$LC11, 12(%esp)
	movl	$594, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L266
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
LC13:
	.ascii "UNKNOWN/INVALID\0"
	.align 4
LC14:
	.ascii "Invalid texcache format, have format %s but need format %s.\0"
	.text
	.p2align 4
	.globl	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	.def	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0;	.scl	2;	.type	32;	.endef
__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0:
LFB40:
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
	subl	$104, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 72(%esp)
	movl	%edx, 56(%esp)
	movl	$0, 52(%esp)
	movl	$0, 68(%esp)
	movl	$0, 32(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
L349:
	movl	$24, %edx
	leal	80(%esp), %eax
	call	_texcache_readdata
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L416
	movl	80(%esp), %ebp
	cmpl	68(%esp), %ebp
	jle	L352
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	jne	L395
	testl	%ebp, %ebp
	jne	L353
L395:
	movl	80(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	16(%eax), %ebx
	movl	40(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	jne	L355
	testl	%ebx, %ebx
	jne	L357
L355:
	movl	80(%esp), %ebx
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 116
	subl	$8, %esp
	.cfi_def_cfa_offset 124
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	jne	L396
	testl	%ebx, %ebx
	jne	L357
L396:
	movl	%ebp, 68(%esp)
	movl	80(%esp), %ebp
L352:
	movl	72(%esp), %eax
	movzbl	12(%eax), %eax
	movb	%al, 44(%esp)
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, 48(%esp)
	movl	84(%esp), %eax
	subl	$33778, %eax
	cmpl	$1, %eax
	ja	L389
	movl	_divtable32+80, %edx
	movzbl	_divtable32+84, %ecx
	testl	%edx, %edx
	jne	L360
	movl	$-1, %eax
	movl	%ebp, %ebx
	movl	%ecx, %edx
	sall	%cl, %eax
	sarl	$31, %ebx
	notl	%eax
	sarb	$7, %dl
	andl	%ebx, %eax
	movsbl	%dl, %edx
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edx, %eax
	subl	%edx, %eax
L361:
	movl	48(%esp), %ebx
	sall	$3, %eax
	movl	%ebp, %ecx
	movl	%ebx, 4(%esp)
	movl	40(%esp), %ebx
	movl	%ebx, (%esp)
	movl	32(%esp), %ebx
	movl	%ebx, %edx
	call	__Z15dedxt_handle_ioiPviPci
	testl	%eax, %eax
	jne	L363
	movl	36(%esp), %edx
	xorl	%esi, %esi
	movl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L364:
	movzbl	(%ecx,%esi), %eax
	movb	%al, (%edx,%esi)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L364
	movl	80(%esp), %ebp
	cmpl	$16, %ebp
	jle	L391
	movl	32(%esp), %eax
	movl	36(%esp), %ebx
	leal	8(%eax), %ecx
	leal	16(%ebx), %edx
	.p2align 4
	.p2align 3
L365:
	xorl	%esi, %esi
	.p2align 4
	.p2align 4
	.p2align 3
L366:
	movzbl	(%ecx,%esi), %eax
	movb	%al, (%edx,%esi)
	addl	$1, %esi
	cmpl	$8, %esi
	jne	L366
	addl	$16, %edx
	movl	80(%esp), %ebp
	addl	$8, %ecx
	movl	%edx, %eax
	subl	%ebx, %eax
	cmpl	%eax, %ebp
	jg	L365
L391:
	movl	$16, %ebx
L359:
	leal	0(,%ebx,4), %eax
	movl	%eax, 60(%esp)
	addl	%ebx, %eax
	movzbl	_divtable32+4(%eax), %edi
	movl	_divtable32(%eax), %edx
	movl	%edi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L367
	movl	%edi, %eax
	movl	%ebp, %edx
	sarb	$7, %al
	sarl	$31, %edx
	movsbl	%al, %edi
	movl	$-1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%edx, %eax
	addl	%ebp, %eax
	sarl	%cl, %eax
	xorl	%edi, %eax
	subl	%edi, %eax
L368:
	movl	48(%esp), %edi
	movl	32(%esp), %edx
	sall	$2, %eax
	movl	%ebp, %ecx
	movl	%edi, 4(%esp)
	movl	40(%esp), %edi
	movl	%edi, (%esp)
	call	__Z15dedxt_handle_ioiPviPci
	testl	%eax, %eax
	jne	L363
	movl	36(%esp), %eax
	movl	80(%esp), %edi
	leal	(%eax,%esi), %ebp
	movl	%ebp, 64(%esp)
	testl	%edi, %edi
	jle	L392
	movl	32(%esp), %esi
	xorl	%eax, %eax
L373:
	movl	%eax, 44(%esp)
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L371:
	movzwl	(%esi), %eax
	addl	$2, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	shrw	$5, %di
	shrw	$11, %dx
	andl	$63, %edi
	sarl	%edi
	addl	%edi, %edx
	addl	%eax, %edi
	andw	$2016, %ax
	andl	$31, %edi
	sall	$11, %edx
	addl	%edi, %eax
	addl	%eax, %edx
	movw	%dx, 0(%ebp,%ecx)
	movl	80(%esp), %edi
	addl	%ebx, %ecx
	cmpl	%edi, %ecx
	jl	L371
	cmpl	$2, 44(%esp)
	je	L372
L412:
	testl	%edi, %edi
	jle	L372
	addl	$2, %ebp
	movl	$2, %eax
	jmp	L373
	.p2align 4,,10
	.p2align 3
L372:
	movl	60(%esp), %eax
	addl	%ebx, %eax
	movzbl	_divtable32+4(%eax), %esi
	movl	_divtable32(%eax), %edx
	movl	%esi, %ecx
	andl	$31, %ecx
	testl	%edx, %edx
	jne	L374
	movl	%esi, %eax
	movl	%edi, %edx
	sarb	$7, %al
	sarl	$31, %edx
	movsbl	%al, %esi
	movl	$-1, %eax
	sall	%cl, %eax
	notl	%eax
	andl	%edx, %eax
	addl	%edi, %eax
	sarl	%cl, %eax
	xorl	%esi, %eax
	subl	%esi, %eax
L375:
	movl	48(%esp), %esi
	movl	32(%esp), %ebp
	movl	%edi, %ecx
	sall	$2, %eax
	movl	%esi, 4(%esp)
	movl	40(%esp), %esi
	movl	%ebp, %edx
	movl	%esi, (%esp)
	call	__Z15dedxt_handle_ioiPviPci
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L363
	movl	80(%esp), %edx
	testl	%edx, %edx
	jle	L377
	movl	64(%esp), %edx
	movl	%edi, 44(%esp)
	movl	%ebp, %eax
	movl	%edx, %esi
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L378:
	movzbl	2(%eax), %edx
	movzbl	3(%eax), %ecx
	movzbl	(%eax), %ebp
	sall	$4, %edx
	sall	$6, %ecx
	andl	$48, %edx
	andl	$3, %ebp
	addl	%ecx, %edx
	movzbl	1(%eax), %ecx
	sall	$2, %ecx
	andl	$12, %ecx
	orl	%ebp, %ecx
	addl	%ecx, %edx
	movb	%dl, 4(%esi)
	movzbl	(%eax), %edx
	movzbl	1(%eax), %ecx
	shrb	$2, %dl
	andl	$12, %ecx
	andl	$3, %edx
	orl	%ecx, %edx
	movzbl	2(%eax), %ecx
	sall	$2, %ecx
	andl	$48, %ecx
	addl	%ecx, %edx
	movzbl	3(%eax), %ecx
	shrb	$2, %cl
	sall	$6, %ecx
	addl	%ecx, %edx
	movb	%dl, 5(%esi)
	movzbl	1(%eax), %edx
	movzbl	(%eax), %ecx
	movzbl	2(%eax), %ebp
	shrb	$2, %dl
	shrb	$4, %cl
	andl	$12, %edx
	andl	$48, %ebp
	andl	$3, %ecx
	orl	%ecx, %edx
	movzbl	3(%eax), %ecx
	shrb	$4, %cl
	sall	$6, %ecx
	addl	%ebp, %ecx
	addl	%ecx, %edx
	movb	%dl, 6(%esi)
	movzbl	2(%eax), %ecx
	movzbl	1(%eax), %edx
	shrb	$6, %cl
	sall	$4, %ecx
	shrb	$6, %dl
	leal	(%ecx,%edx,4), %edx
	movzbl	(%eax), %ecx
	shrb	$6, %cl
	addl	$4, %eax
	addl	%ecx, %edx
	movzbl	-1(%eax), %ecx
	andl	$-64, %ecx
	addl	%ecx, %edx
	movb	%dl, 7(%esi)
	addl	%ebx, %esi
	movl	80(%esp), %edx
	movl	%esi, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %edx
	jg	L378
	movl	44(%esp), %edi
L377:
	movl	36(%esp), %eax
	movl	%edx, 24(%esp)
	movl	$3553, (%esp)
	movl	%eax, 28(%esp)
	movl	96(%esp), %eax
	movl	%eax, 20(%esp)
	movl	92(%esp), %eax
	movl	%eax, 16(%esp)
	movl	88(%esp), %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glCompressedTexImage2D
	.cfi_def_cfa_offset 92
	subl	$32, %esp
	.cfi_def_cfa_offset 124
	call	*_glad_glGetError
	movl	56(%esp), %ebx
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jne	L417
	leal	76(%esp), %eax
	movl	$4099, 8(%esp)
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	movl	$3553, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGetTexLevelParameteriv
	.cfi_def_cfa_offset 108
	subl	$16, %esp
	.cfi_def_cfa_offset 124
	call	*_glad_glGetError
	movl	56(%esp), %ebx
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jne	L418
	movl	84(%esp), %eax
	movl	76(%esp), %edx
	cmpl	%edx, %eax
	jne	L419
	addl	$1, 52(%esp)
	cmpl	$1, 88(%esp)
	jg	L349
	cmpl	$1, 92(%esp)
	jg	L349
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L348
	.p2align 4,,10
	.p2align 3
L367:
	movl	%edx, %eax
	imull	%ebp
	movl	%edi, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	movl	%eax, 64(%esp)
	xorl	%ebp, %eax
	addl	%edx, %eax
	movl	%edx, 44(%esp)
	subl	64(%esp), %eax
	andl	$64, %edi
	cmove	44(%esp), %eax
	movl	%eax, %edx
	shrl	$31, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	jmp	L368
	.p2align 4,,10
	.p2align 3
L374:
	movl	%edx, %eax
	imull	%edi
	movl	%esi, %eax
	sarb	$7, %al
	movsbl	%al, %ebp
	movl	%edi, %eax
	xorl	%ebp, %eax
	subl	%ebp, %eax
	addl	%edx, %eax
	andl	$64, %esi
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L375
	.p2align 4,,10
	.p2align 3
L389:
	movl	$8, %ebx
	jmp	L359
L392:
	movl	64(%esp), %ebp
	movl	32(%esp), %esi
	jmp	L412
L357:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L360:
	movl	%ecx, %ebx
	movl	%edx, %eax
	sarb	$7, %bl
	imull	%ebp
	movl	%ebp, %eax
	movsbl	%bl, %ebx
	xorl	%ebx, %eax
	subl	%ebx, %eax
	addl	%edx, %eax
	testb	$64, %cl
	cmovne	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %edx
	sarl	%cl, %eax
	addl	%edx, %eax
	jmp	L361
L353:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L416:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$2, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
L348:
	addl	$104, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
L363:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$3, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L348
L417:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$4, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L348
L418:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$5, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L348
L419:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	$-2, %ecx
	jl	L383
	subl	$33776, %edx
	movl	$LC13, %ecx
	cmpl	$3, %edx
	ja	L384
	movl	_CSWTCH.242(,%edx,4), %ecx
L384:
	subl	$33776, %eax
	movl	$LC13, %edx
	cmpl	$3, %eax
	ja	L385
	movl	_CSWTCH.242(,%eax,4), %edx
L385:
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	$LC14, 12(%esp)
	movl	$828, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L383:
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	$-1, %edi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 120
	subl	$4, %esp
	.cfi_def_cfa_offset 124
	jmp	L348
	.cfi_endproc
LFE40:
	.section .rdata,"dr"
	.align 4
LC15:
	.ascii "Unable to load cached data: %s (error %x)\0"
	.text
	.p2align 4
	.globl	_texcache_loadtile
	.def	_texcache_loadtile;	.scl	2;	.type	32;	.endef
_texcache_loadtile:
LFB43:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	$0, 28(%esp)
	testb	$1, (%edx)
	je	L421
	leal	12(%ecx), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	24(%esp), %edx
	orl	$2, (%edx)
L421:
	movl	12(%ebx), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	4(%esi), %eax
	movl	%eax, 24(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 28(%ebx)
	.p2align 4
	.p2align 3
L422:
	call	*_glad_glGetError
	testl	%eax, %eax
	jne	L422
	leal	28(%esp), %edx
	movl	%esi, %eax
	call	__ZL17texcache_loadmipsPK14texcachehead_tPj.constprop.0
	testl	%eax, %eax
	jne	L434
L420:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L434:
	.cfi_restore_state
	jg	L435
L424:
	movl	$-1, %eax
	jmp	L420
L435:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L424
	movl	28(%esp), %edx
	movl	__ZL15texcache_errors.lto_priv.0(,%eax,4), %eax
	movl	$LC15, 12(%esp)
	movl	$878, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L424
	.cfi_endproc
LFE43:
	.align 2
	.p2align 4
	.globl	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv:
LFB45:
	.cfi_startproc
	cmpl	$-1, 12(%ecx)
	je	L445
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	subl	$4, %esp
	cmpl	$-1, 16(%ecx)
	je	L438
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L439
	addl	4(%ecx), %eax
	subl	8(%ecx), %eax
L439:
	movl	%eax, (%esp)
	call	*__imp__UnmapViewOfFile@4
	movl	16(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
L438:
	cmpb	$0, 20(%ebx)
	jne	L448
L440:
	movl	$-1, %eax
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	%eax, 12(%ebx)
	movl	%eax, 16(%ebx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L448:
	.cfi_restore_state
	movl	12(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
	jmp	L440
	.p2align 4,,10
	.p2align 3
L445:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	ret
	.cfi_endproc
LFE45:
	.align 2
	.p2align 4
	.globl	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0:
LFB48:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	28(%esp), %esi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	call	__ZNSt3_V215system_categoryEv
	movl	$0, (%esi)
	movl	%eax, 4(%esi)
	movl	12(%ebx), %edx
	cmpl	$-1, %edx
	je	L466
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	(%ebx), %eax
	movl	__imp__FlushFileBuffers@4, %ecx
	testl	%eax, %eax
	je	L452
	movl	8(%ebx), %edx
	movl	%edx, 4(%esp)
	subl	%edx, %eax
	addl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	*__imp__FlushViewOfFile@8
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L465
	movl	12(%ebx), %eax
	movl	__imp__FlushFileBuffers@4, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	*%ecx
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L465
	movl	12(%ebx), %edx
	movl	8(%esp), %ecx
L452:
	movl	%edx, (%esp)
	call	*%ecx
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L465
	movl	20(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L465:
	.cfi_restore_state
	call	*__imp__GetLastError@0
	movl	%edi, 4(%esi)
	movl	%eax, (%esi)
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L466:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__ZNSt3_V216generic_categoryEv
	movl	$9, (%esi)
	movl	%eax, 4(%esi)
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	___tcftexcache.lto_priv.0
	.def	___tcftexcache.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcftexcache.lto_priv.0:
LFB50:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$_texcache, %ecx
	leal	4(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpl	$-1, _texcache+12
	je	L467
	cmpl	$-1, _texcache+16
	je	L469
	movl	_texcache, %eax
	testl	%eax, %eax
	je	L470
	addl	_texcache+4, %eax
	subl	_texcache+8, %eax
L470:
	movl	%eax, (%esp)
	call	*__imp__UnmapViewOfFile@4
	.cfi_def_cfa_offset 12
	movl	_texcache+16, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L469:
	cmpb	$0, _texcache+20
	jne	L475
L467:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L475:
	.cfi_restore_state
	movl	_texcache+12, %eax
	movl	%eax, (%esp)
	call	*__imp__CloseHandle@4
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.section .rdata,"dr"
LC17:
	.ascii "skin\0"
LC18:
	.ascii "texture\0"
LC19:
	.ascii "r_downsize doesn't match\0"
	.align 4
LC20:
	.ascii "Got bad %s data from cache: %s\0"
	.text
	.p2align 4
	.globl	_texcache_readtexheader.part.0
	.def	_texcache_readtexheader.part.0;	.scl	2;	.type	32;	.endef
_texcache_readtexheader.part.0:
LFB52:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	$_texcache+32812, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 40
	call	_hash_find
	testl	%eax, %eax
	js	L477
	movl	_texcache+40, %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L477
	movl	4(%eax), %eax
	movl	$20, %edx
	movl	%eax, _texcache+32836
	movl	%ebx, %eax
	call	_texcache_readdata
	testl	%eax, %eax
	jne	L495
	cmpl	$825514572, (%ebx)
	jne	L496
	movl	12(%ebx), %edx
	movl	16(%ebx), %ecx
	testl	%esi, %esi
	je	L479
	cmpl	_r_downsize, %ecx
	jne	L517
	testb	$4, %dl
	jne	L518
	cmpl	$2, _glusetexcache
	jne	L488
	movl	$4, %ebx
	.p2align 4
	.p2align 3
L487:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L476
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ebx,4), %edx
	movl	$LC17, %eax
	jmp	L481
	.p2align 4,,10
	.p2align 3
L495:
	xorl	%ecx, %ecx
L478:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L477
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ecx,4), %edx
	testl	%edi, %edi
	movl	$LC18, %eax
	movl	$LC17, %ecx
	cmovne	%ecx, %eax
L481:
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC20, 12(%esp)
	movl	$557, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L477:
	xorl	%eax, %eax
L476:
	addl	$24, %esp
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
L496:
	.cfi_restore_state
	movl	$1, %ecx
	jmp	L478
	.p2align 4,,10
	.p2align 3
L479:
	movl	_glusetexcache, %eax
	testb	$4, %dl
	jne	L519
	cmpl	$2, %eax
	je	L520
L485:
	movl	%edx, %eax
	andl	$8, %eax
	jne	L488
	cmpl	_r_downsize, %ecx
	jne	L476
L488:
	movl	_gltexmaxsize, %ecx
	testl	%ecx, %ecx
	je	L489
	movl	$1, %eax
	sall	%cl, %eax
	movl	8(%ebx), %ecx
	movl	%eax, %esi
	movl	4(%ebx), %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	movl	$5, %ecx
	cmpl	%eax, %esi
	jl	L478
L489:
	cmpb	$0, _glinfo+29
	js	L491
	andl	$1, %edx
	movl	$6, %ecx
	jne	L478
L491:
	movl	$1, %eax
	jmp	L476
	.p2align 4,,10
	.p2align 3
L519:
	cmpl	$2, %eax
	je	L485
	movl	$3, %ecx
L484:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	xorl	%eax, %eax
	cmpl	$-2, %edx
	jl	L476
	movl	__ZZ22texcache_readtexheaderE10error_msgs(,%ecx,4), %edx
	movl	$LC18, %eax
	jmp	L481
	.p2align 4,,10
	.p2align 3
L517:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L476
	movl	$LC19, %edx
	movl	$LC17, %eax
	jmp	L481
	.p2align 4,,10
	.p2align 3
L518:
	cmpl	$2, _glusetexcache
	je	L488
	movl	$3, %ebx
	jmp	L487
L520:
	movl	$4, %ecx
	jmp	L484
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_texcache_freeptrs.part.0
	.def	_texcache_freeptrs.part.0;	.scl	2;	.type	32;	.endef
_texcache_freeptrs.part.0:
LFB53:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_texcache+32828, %eax
	movl	_texcache+40, %edx
	testl	%eax, %eax
	jle	L522
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	jmp	L528
	.p2align 5
	.p2align 4,,10
	.p2align 3
L523:
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L532
L528:
	movl	(%edx,%ebx,4), %ecx
	leal	0(,%ebx,4), %esi
	testl	%ecx, %ecx
	je	L523
	subl	$1, %eax
	leal	(%edx,%esi), %edi
	jmp	L527
	.p2align 4
	.p2align 4,,10
	.p2align 3
L525:
	subl	$1, %eax
	jb	L533
L527:
	cmpl	%eax, %ebx
	je	L525
	leal	(%edx,%eax,4), %ecx
	movl	(%edi), %ebp
	cmpl	%ebp, (%ecx)
	jne	L525
	movl	$0, (%ecx)
	movl	_texcache+40, %edx
	leal	(%edx,%esi), %edi
	subl	$1, %eax
	jnb	L527
L533:
	movl	(%edi), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %ebx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	_texcache+40, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	(%eax,%esi), %eax
	movl	$0, (%eax)
	movl	_texcache+40, %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax,%esi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	_texcache+40, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, (%eax,%esi)
	movl	_texcache+32828, %eax
	movl	_texcache+40, %edx
	cmpl	%ebx, %eax
	jg	L528
L532:
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L522:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, _texcache+40
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__ZL18maxheap_bubbleDownj.lto_priv.0
	.def	__ZL18maxheap_bubbleDownj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18maxheap_bubbleDownj.lto_priv.0:
LFB54:
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
	movl	%eax, %esi
	leal	1(%eax,%eax), %eax
	pushl	%ebx
	andl	$-16, %esp
	subl	$16, %esp
	.cfi_offset 3, -20
	movl	_heapNodes, %edi
	cmpl	%edi, %eax
	jnb	L534
	movl	%edi, 12(%esp)
	jmp	L537
	.p2align 4,,10
	.p2align 3
L543:
	sall	$4, %ebx
	addl	%ecx, %ebx
	movl	_nodes+28(,%ebx,4), %ebx
	cmpl	%ebx, %edx
	jnb	L538
	movl	%ebx, %edx
	leal	(%esi,%esi,8), %ebx
	leal	_nodes(,%ebx,4), %eax
	cmpl	%edx, 28(%eax)
	jnb	L534
L544:
	movl	8(%eax), %esi
	movlps	_nodes(,%ebx,4), %xmm2
	movups	12(%eax), %xmm1
	movlps	28(%eax), %xmm0
	movl	%esi, 8(%esp)
	leal	(%ecx,%ecx,8), %esi
	movl	_nodes(,%esi,4), %edi
	leal	_nodes(,%esi,4), %edx
	movl	%edi, _nodes(,%ebx,4)
	movl	4(%edx), %ebx
	movl	%ebx, 4(%eax)
	movl	8(%edx), %ebx
	movl	%ebx, 8(%eax)
	movl	12(%edx), %ebx
	movl	%ebx, 12(%eax)
	movl	16(%edx), %ebx
	movl	%ebx, 16(%eax)
	movl	20(%edx), %ebx
	movl	%ebx, 20(%eax)
	movl	24(%edx), %ebx
	movl	%ebx, 24(%eax)
	movl	28(%edx), %ebx
	movl	%ebx, 28(%eax)
	movl	32(%edx), %ebx
	movl	%ebx, 32(%eax)
	leal	1(%ecx,%ecx), %eax
	movlps	%xmm2, _nodes(,%esi,4)
	movl	8(%esp), %esi
	movups	%xmm1, 12(%edx)
	movl	%esi, 8(%edx)
	movlps	%xmm0, 28(%edx)
	cmpl	12(%esp), %eax
	jnb	L534
	movl	%ecx, %esi
L537:
	leal	1(%esi), %ebx
	leal	(%eax,%eax,8), %edx
	movl	_nodes+28(,%edx,4), %edx
	leal	(%ebx,%ebx), %ecx
	cmpl	12(%esp), %ecx
	jb	L543
L538:
	leal	(%esi,%esi,8), %ebx
	movl	%eax, %ecx
	leal	_nodes(,%ebx,4), %eax
	cmpl	%edx, 28(%eax)
	jb	L544
L534:
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
LFE54:
	.p2align 4
	.globl	__ZL11maxheap_popv.lto_priv.0
	.def	__ZL11maxheap_popv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11maxheap_popv.lto_priv.0:
LFB55:
	.cfi_startproc
	movl	_heapNodes, %edx
	testl	%edx, %edx
	je	L549
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	subl	$1, %edx
	movlps	_nodes, %xmm2
	leal	(%edx,%edx,8), %eax
	movl	_nodes+8, %ecx
	movups	_nodes+12, %xmm1
	sall	$2, %eax
	movlps	_nodes+28, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	_nodes(%eax), %ebx
	andl	$-16, %esp
	movl	%ebx, _nodes
	movl	_nodes+4(%eax), %ebx
	movl	%edx, _heapNodes
	movl	%ebx, _nodes+4
	movl	_nodes+8(%eax), %ebx
	movl	%ebx, _nodes+8
	movl	_nodes+12(%eax), %ebx
	movl	%ebx, _nodes+12
	movl	_nodes+16(%eax), %ebx
	movl	%ebx, _nodes+16
	movl	_nodes+20(%eax), %ebx
	movl	%ebx, _nodes+20
	movl	_nodes+24(%eax), %ebx
	movl	%ebx, _nodes+24
	movl	_nodes+28(%eax), %ebx
	movl	%ebx, _nodes+28
	movl	_nodes+32(%eax), %ebx
	movl	%ebx, _nodes+32
	movl	%ecx, _nodes+8(%eax)
	movlps	%xmm2, _nodes(%eax)
	movups	%xmm1, _nodes+12(%eax)
	movlps	%xmm0, _nodes+28(%eax)
	xorl	%eax, %eax
	call	__ZL18maxheap_bubbleDownj.lto_priv.0
	movl	_heapNodes, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	leal	(%eax,%eax,8), %eax
	leal	_nodes(,%eax,4), %eax
	ret
	.p2align 4,,10
	.p2align 3
L549:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	.def	__ZL10kdtree_addjP8TreeNode.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10kdtree_addjP8TreeNode.lto_priv.0:
LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	imull	$-36, %eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	addl	$_nodes+2214180, %eax
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %ebx
	andl	$-16, %esp
	subl	$32, %esp
	movl	20(%edx), %esi
L555:
	cmpl	%esi, 20(%eax)
	jb	L566
	movl	24(%ebx), %edi
	cmpl	%edi, 24(%eax)
	jb	L566
	cmpl	$-1, 32(%eax)
	jne	L568
	movl	32(%ebx), %edx
	movl	%edx, 32(%eax)
	leal	(%edx,%edx,4), %edx
	movl	%ecx, _tiles(,%edx,4)
	movss	20(%ebx), %xmm1
	movss	24(%ebx), %xmm2
	movss	12(%eax), %xmm0
	movss	16(%eax), %xmm3
	movl	32(%ebx), %edx
	unpcklps	%xmm2, %xmm1
	unpcklps	%xmm3, %xmm0
	leal	(%edx,%edx,4), %edx
	movlhps	%xmm1, %xmm0
	movups	%xmm0, _tiles+4(,%edx,4)
	movl	20(%ebx), %edx
	movl	24(%ebx), %edi
	movl	12(%eax), %ebx
	movl	20(%eax), %esi
	movl	%edi, 24(%esp)
	movl	%ebx, 12(%esp)
	addl	%edx, %ebx
	movl	%esi, %ecx
	movl	%esi, 28(%esp)
	movl	24(%eax), %esi
	subl	%edx, %ecx
	movl	%ebx, 16(%esp)
	movl	16(%eax), %ebx
	subl	%edi, %esi
	movl	%ebx, 20(%esp)
	addl	%ebx, %edi
	movl	28(%esp), %ebx
	cmpl	%esi, %ecx
	cmovb	%ecx, %edx
	cmovnb	%ecx, %ebx
	movl	20(%esp), %ecx
	movl	%edx, (%esp)
	movl	%ebx, 28(%esp)
	movl	24(%esp), %ebx
	movl	%ecx, %edx
	cmovnb	%edi, %ecx
	cmovb	%edi, %edx
	cmovnb	%esi, %ebx
	cmovnb	24(%eax), %esi
	movl	%ecx, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 24(%esp)
	movl	16(%esp), %ebx
	movl	%esi, 4(%esp)
	movl	12(%esp), %esi
	movl	%ebx, %edx
	cmovnb	%esi, %ebx
	cmovb	%esi, %edx
	movl	%ebx, 16(%esp)
	movl	_heapNodes, %edi
	movl	%edx, %ebx
	movl	_nextTreeNodeIndex, %edx
	leal	-1(%edi), %ecx
	movl	%edi, 12(%esp)
	cmpl	%edx, %ecx
	je	L562
	leal	(%edx,%edx,8), %ecx
	sall	$2, %ecx
	movl	%ebx, _nodes+12(%ecx)
	movl	8(%esp), %ebx
	leal	_nodes+12(%ecx), %edi
	leal	_nodes(%ecx), %esi
	movl	%eax, _nodes(%ecx)
	movl	$0, _nodes+4(%ecx)
	movl	$0, _nodes+8(%ecx)
	movl	4(%esp), %ecx
	movl	%ebx, 4(%edi)
	movl	28(%esp), %ebx
	movl	%ecx, 12(%edi)
	cmpl	%ecx, %ebx
	movl	%ebx, 8(%edi)
	cmovnb	%ebx, %ecx
	movl	$-1, 32(%esi)
	movl	%ecx, 28(%esi)
	leal	-1(%edx), %ecx
	movl	%ecx, _nextTreeNodeIndex
	movl	%esi, 4(%eax)
	cmpl	%edx, 12(%esp)
	je	L563
	movl	16(%esp), %esi
	leal	(%ecx,%ecx,8), %ecx
	movl	24(%esp), %edi
	sall	$2, %ecx
	movl	%esi, _nodes+12(%ecx)
	movl	20(%esp), %esi
	movl	%eax, _nodes(%ecx)
	movl	%esi, _nodes+16(%ecx)
	movl	(%esp), %esi
	movl	$0, _nodes+4(%ecx)
	cmpl	%edi, %esi
	movl	%esi, %ebx
	movl	$0, _nodes+8(%ecx)
	cmovb	%edi, %ebx
	movl	%esi, _nodes+20(%ecx)
	subl	$2, %edx
	movl	%edi, _nodes+24(%ecx)
	movl	%ebx, _nodes+28(%ecx)
	movl	$-1, _nodes+32(%ecx)
	movl	%edx, _nextTreeNodeIndex
	leal	_nodes(%ecx), %edx
L564:
	movl	%edx, 8(%eax)
	leal	-12(%ebp), %esp
	movl	$1, %eax
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
	.p2align 4
	.p2align 4,,10
	.p2align 3
L566:
	.cfi_restore_state
	movl	%eax, %edi
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L565
	movl	8(%eax), %edx
	cmpl	%edi, %edx
	je	L566
	testl	%edx, %edx
	je	L566
	movl	%edx, %eax
	jmp	L555
	.p2align 4,,10
	.p2align 3
L565:
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L568:
	.cfi_restore_state
	movl	4(%eax), %eax
	jmp	L555
L562:
	movl	$0, 4(%eax)
L563:
	xorl	%edx, %edx
	jmp	L564
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__ZL15rejectQueue_addP8TreeNode.isra.0
	.def	__ZL15rejectQueue_addP8TreeNode.isra.0;	.scl	2;	.type	32;	.endef
__ZL15rejectQueue_addP8TreeNode.isra.0:
LFB60:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	_numRejected, %ebx
	cmpl	$30719, %ebx
	ja	L569
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	_rejectQueueHeadIndex, %esi
	movl	%eax, %ecx
	movl	$-2004318071, %eax
	addl	%ebx, %esi
	addl	$1, %ebx
	mull	%esi
	shrl	$14, %edx
	imull	$30720, %edx, %edx
	subl	%edx, %esi
	leal	(%esi,%esi,8), %edx
	movl	(%ecx), %esi
	movl	%ebx, _numRejected
	leal	_rejectQueue(,%edx,4), %eax
	movl	%esi, _rejectQueue(,%edx,4)
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
	movl	4(%esp), %esi
	.cfi_restore 6
L569:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z18tilepacker_addTilejjj.part.0
	.def	__Z18tilepacker_addTilejjj.part.0;	.scl	2;	.type	32;	.endef
__Z18tilepacker_addTilejjj.part.0:
LFB61:
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$16, %esp
	movl	_nextTreeNodeIndex, %edi
	movl	_heapNodes, %eax
	leal	1(%edi), %ecx
	cmpl	%eax, %ecx
	je	L572
	cmpl	%esi, %edx
	movl	%edx, 12(%esp)
	movss	12(%esp), %xmm1
	leal	(%eax,%eax,8), %edi
	cmovb	%esi, %edx
	movl	%esi, 12(%esp)
	movss	12(%esp), %xmm2
	addl	$1, %eax
	movl	$0, _nodes(,%edi,4)
	xorps	%xmm0, %xmm0
	unpcklps	%xmm2, %xmm1
	movl	%edx, _nodes+28(,%edi,4)
	movl	$0, _nodes+4(,%edi,4)
	movlhps	%xmm1, %xmm0
	movl	$0, _nodes+8(,%edi,4)
	movl	%ebx, _nodes+32(,%edi,4)
	movl	%eax, _heapNodes
	movups	%xmm0, _nodes+12(,%edi,4)
L572:
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
LFE61:
	.p2align 4
	.globl	_tileSetData
	.def	_tileSetData;	.scl	2;	.type	32;	.endef
_tileSetData:
LFB65:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_faketiledata(,%eax,4), %edi
	movl	_g_sm_heap, %ecx
	cmpl	$2113929216, %edx
	ja	L576
	movl	$-2139062143, %eax
	movl	%edi, (%esp)
	mull	%edx
	shrl	$7, %edx
	leal	16(%edx,%esi), %edx
	movl	%edx, 4(%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	8(%esp), %edx
	je	L577
L583:
	movl	%eax, _faketiledata(,%ebx,4)
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_LZ4_compress_fast.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	movl	_faketiledata(,%ebx,4), %eax
	cmpl	$-1, %esi
	je	L587
	movl	%esi, _faketilesize(,%ebx,4)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	jne	L584
	testl	%esi, %esi
	jne	L580
L584:
	movl	%eax, _faketiledata(,%ebx,4)
	movl	%ebx, %edx
	movl	%ebx, %eax
	sarl	$3, %eax
	andl	$7, %edx
	movb	$-36, _tilefilenum(%ebx)
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _faketile(%eax)
	addl	$12, %esp
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
L576:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	xorl	%edx, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	jmp	L583
	.p2align 4,,10
	.p2align 3
L587:
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	movl	%ebx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	sarl	$3, %edx
	movl	$0, _faketiledata(,%ebx,4)
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.11(%ebx), %eax
	notl	%eax
	andb	%al, _faketile(%edx)
	addl	$12, %esp
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
L577:
	.cfi_restore_state
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L580:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	_tileUpdatePicSiz
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
_tileUpdatePicSiz:
LFB68:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movswl	_tilesiz(,%eax,4), %edx
	movl	$15, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L589:
	cmpl	%edx, _pow2long.lto_priv.2(,%eax,4)
	jle	L590
	subl	$1, %eax
	cmpl	$1, %eax
	jne	L589
	movl	$1, %eax
L590:
	movswl	_tilesiz+2(,%ebx,4), %ecx
	movl	$15, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L592:
	cmpl	%ecx, _pow2long.lto_priv.2(,%edx,4)
	jle	L598
	subl	$1, %edx
	cmpl	$1, %edx
	jne	L592
	movl	$16, %edx
	orl	%edx, %eax
	movb	%al, _picsiz(%ebx)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L598:
	.cfi_restore_state
	sall	$4, %edx
	orl	%edx, %eax
	movb	%al, _picsiz(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE68:
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "Unable to load art: bad version.\0"
LC22:
	.ascii "source/build/src/tiles.cpp\0"
	.align 4
LC23:
	.ascii "Unable to load art: tile range is reversed, negative, or exceeds MAXTILES: data likely corrupt.\0"
	.text
	.p2align 4
	.globl	_artCheckUnitFileHeader
	.def	_artCheckUnitFileHeader;	.scl	2;	.type	32;	.endef
_artCheckUnitFileHeader:
LFB69:
	.cfi_startproc
	cmpl	$24, %edx
	jle	L606
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	cmpl	$1, (%eax)
	jne	L613
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -8
	movl	8(%eax), %edx
	movl	12(%eax), %eax
	cmpl	$30463, %eax
	seta	%cl
	cmpl	$30463, %edx
	seta	%bl
	orb	%bl, %cl
	jne	L608
	cmpl	%eax, %edx
	jg	L608
	sete	%al
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	movzbl	%al, %eax
	leal	-3(%eax,%eax,2), %eax
	ret
	.p2align 4,,10
	.p2align 3
L608:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L605
	movl	16(%esp), %ebx
	.cfi_restore 3
L602:
	movl	$-2, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L605:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -8
	movl	$LC23, 12(%esp)
	movl	$361, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	16(%esp), %ebx
	.cfi_restore 3
	jmp	L602
	.p2align 4,,10
	.p2align 3
L606:
	.cfi_def_cfa_offset 4
	movl	$-1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L613:
	.cfi_def_cfa_offset 24
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L602
	movl	$LC21, 12(%esp)
	movl	$352, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L602
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	__Z13timerGetTicksv
	.def	__Z13timerGetTicksv;	.scl	2;	.type	32;	.endef
__Z13timerGetTicksv:
LFB71:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	leal	16(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	20(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$1000, 16(%esp), %eax
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE71:
	.section	.text.unlikely,"x"
LCOLDB24:
	.text
LHOTB24:
	.p2align 4
	.globl	__Z16timerUpdateClockv
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
__Z16timerUpdateClockv:
LFB73:
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
	subl	$72, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	__ZL19clockTicksPerSecond.lto_priv.0, %esi
	testl	%esi, %esi
	jne	L637
L634:
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
L637:
	.cfi_restore_state
	movl	__ZZ12enet_gettimeE11initialized.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L633
	leal	-32(%ebp), %eax
	movl	__imp__QueryPerformanceCounter@4, %ebx
	movl	%eax, -48(%ebp)
L618:
	movl	$10000, %edi
	movl	%esi, %eax
	imull	%edi
	movl	%edx, -52(%ebp)
	movl	-48(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	%edx, (%esp)
	call	*%ebx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	subl	$4, %esp
	subl	__ZZ12enet_gettimeE6offset.lto_priv.0, %eax
	sbbl	__ZZ12enet_gettimeE6offset.lto_priv.0+4, %edx
	movl	%eax, -64(%ebp)
	leal	-40(%ebp), %eax
	movl	%edx, -60(%ebp)
	fildq	-64(%ebp)
	fdivl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	movl	%eax, 16(%esp)
	movl	$1000000, 8(%esp)
	movl	$0, 12(%esp)
	fnstcw	-42(%ebp)
	movzwl	-42(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -44(%ebp)
	fldcw	-44(%ebp)
	fistpq	(%esp)
	fldcw	-42(%ebp)
	call	___divmoddi4
	movl	__ZL19clockTicksPerSecond.lto_priv.0, %esi
	movl	%eax, %ecx
	movl	%esi, %eax
	imull	%edi
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	movl	%edx, 16(%esp)
	cltd
	movl	-56(%ebp), %ebx
	movl	-52(%ebp), %eax
	imull	%edx, %ebx
	imull	%ecx, %eax
	addl	%eax, %ebx
	movl	-56(%ebp), %eax
	mull	%ecx
	addl	%ebx, %edx
	subl	_clockLastSampleTime, %eax
	sbbl	_clockLastSampleTime+4, %edx
	movl	%eax, -64(%ebp)
	imull	$1000, -40(%ebp), %eax
	movl	%edx, -60(%ebp)
	movl	-56(%ebp), %edx
	movl	%eax, %ebx
	sarl	$31, %ebx
	imull	%ebx, %edx
	movl	-52(%ebp), %ebx
	imull	%eax, %ebx
	movl	%edx, %ecx
	mull	-56(%ebp)
	addl	%ebx, %ecx
	movl	12(%esp), %ebx
	addl	%ecx, %edx
	movl	8(%esp), %ecx
	movl	%ebx, -52(%ebp)
	movl	%ecx, -56(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	addl	-64(%ebp), %eax
	movl	%eax, -56(%ebp)
	adcl	-60(%ebp), %edx
	movl	%esi, %eax
	movl	%edx, -52(%ebp)
	cltd
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %eax
	imull	%esi, %ecx
	imull	%edx, %eax
	addl	%eax, %ecx
	movl	-56(%ebp), %eax
	mull	%esi
	addl	%ecx, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	-48(%ebp), %edx
	movl	%edx, (%esp)
	call	_lldiv
	movl	__ZL19clockTicksPerSecond.lto_priv.0, %ecx
	movl	-28(%ebp), %eax
	movl	-32(%ebp), %ebx
	movl	%eax, -48(%ebp)
	movl	%ecx, %eax
	imull	%edi
	movl	%ecx, -64(%ebp)
	movl	%eax, -56(%ebp)
	movl	-24(%ebp), %eax
	movl	%edx, -52(%ebp)
	movl	-20(%ebp), %edx
	movl	-56(%ebp), %esi
	movl	-52(%ebp), %edi
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%esi, 8(%esp)
	xorl	%esi, %esi
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	_totalclock+12, %ecx
	movl	_totalclock+12, %edi
	testl	%ecx, %ecx
	movl	-64(%ebp), %ecx
	js	L638
	sall	$16, %eax
	xorl	%edx, %edx
L621:
	orl	%eax, %esi
	xorl	%eax, %eax
	orl	%edx, %edi
	cmpl	%ebx, %eax
	sbbl	-48(%ebp), %eax
	movl	%esi, _totalclock+8
	movl	%edi, _totalclock+12
	jge	L634
	xorl	%eax, %eax
	movl	%ebx, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, _totalclock+8
	movl	%edx, _totalclock
	movl	%edx, _totalclock+12
	movl	%ecx, 8(%esp)
	sarl	$31, %ecx
	movl	%ecx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	-48(%ebp), %esi
	imull	%ebx, %edx
	imull	%eax, %esi
	leal	(%edx,%esi), %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, _clockLastSampleTime
	movl	__ZL17usertimercallback.lto_priv.0, %eax
	adcl	%edx, _clockLastSampleTime+4
	testl	%eax, %eax
	je	L634
	testl	%ebx, %ebx
	jg	L622
	jmp	L634
	.p2align 4,,10
	.p2align 3
L639:
	movl	__ZL17usertimercallback.lto_priv.0, %eax
L622:
	call	*%eax
	subl	$1, %ebx
	jne	L639
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
L633:
	.cfi_restore_state
	movl	$1, __ZZ12enet_gettimeE11initialized.lto_priv.0
	leal	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L619
	movl	$__ZZ12enet_gettimeE6offset.lto_priv.0, (%esp)
	movl	__imp__QueryPerformanceCounter@4, %ebx
	call	*%ebx
	fildq	-32(%ebp)
	fdivs	LC4
	subl	$4, %esp
	fstpl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	jmp	L618
	.p2align 4,,10
	.p2align 3
L638:
	andl	$65535, %eax
	negl	%eax
	xorl	%edx, %edx
	sall	$16, %eax
	jmp	L621
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z16timerUpdateClockv.cold;	.scl	3;	.type	32;	.endef
__Z16timerUpdateClockv.cold:
LFSB73:
L619:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	call	_abort
	.cfi_endproc
LFE73:
	.text
	.section	.text.unlikely,"x"
LCOLDE24:
	.text
LHOTE24:
	.p2align 4
	.globl	__Z26timerGetPerformanceCounterv
	.def	__Z26timerGetPerformanceCounterv;	.scl	2;	.type	32;	.endef
__Z26timerGetPerformanceCounterv:
LFB74:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	__ZL9sys_timer.lto_priv.0, %eax
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	cmpl	$1, %eax
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L641
	cmpl	$3, %eax
	jne	L645
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 53 "source/build/include/rdtsc.h" 1
	.byte 0x0f, 0x31
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %edi
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
/NO_APP
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L645:
	.cfi_def_cfa 5, 8
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	jmp	_SDL_GetPerformanceCounter
	.p2align 4,,10
	.p2align 3
L641:
	.cfi_restore_state
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceCounter@4
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	subl	$4, %esp
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%esi, %eax
	movl	%edi, %edx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__Z9timerIniti.constprop.0.isra.0
	.def	__Z9timerIniti.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z9timerIniti.constprop.0.isra.0:
LFB78:
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
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	__ZZ9timerInitiE8initDone, %eax
	testl	%eax, %eax
	je	L656
L647:
	movl	$120, __ZL19clockTicksPerSecond.lto_priv.0
	leal	32(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1200000, %eax
	imull	36(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	$0, __ZL17usertimercallback.lto_priv.0
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	$1200000, %eax
	imull	32(%esp)
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, _clockLastSampleTime
	movl	%ebx, _clockLastSampleTime+4
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
L656:
	.cfi_restore_state
	movl	$__ZL16osdcmd_sys_timerPK13osdfuncparm_t, %edx
	movl	$__ZZ9timerInitiE14sys_timer_cvar, %eax
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	$1, (%esp)
	call	_SDL_InitSubSystem
	movl	__ZL8tsc_freq.lto_priv.0, %eax
	orl	__ZL8tsc_freq.lto_priv.0+4, %eax
	je	L657
L648:
	movl	$1, __ZZ9timerInitiE8initDone
	jmp	L647
	.p2align 4,,10
	.p2align 3
L657:
	leal	32(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	36(%esp), %eax
	fildl	36(%esp)
	cltd
	testl	%edx, %edx
	jns	L649
	fadds	LC3
L649:
	fstpl	24(%esp)
	fldl	24(%esp)
	fmuls	LC25
	fdivs	LC26
	fildl	32(%esp)
	fmuls	LC25
	faddp	%st, %st(1)
	fadds	LC27
	fstpl	16(%esp)
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 53 "source/build/include/rdtsc.h" 1
	.byte 0x0f, 0x31
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%edx, %edi
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
	.p2align 4
	.p2align 3
/NO_APP
L651:
	leal	32(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	36(%esp), %eax
	fildl	36(%esp)
	cltd
	testl	%edx, %edx
	jns	L650
	fadds	LC3
L650:
	fstpl	24(%esp)
	fldl	24(%esp)
	fmuls	LC25
	fdivs	LC26
	fildl	32(%esp)
	fmuls	LC25
	faddp	%st, %st(1)
	fldl	16(%esp)
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	L651
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 53 "source/build/include/rdtsc.h" 1
	.byte 0x0f, 0x31
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 53 "source/build/include/rdtsc.h" 1
	.byte 0x0f, 0x31
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
/NO_APP
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	subl	16(%esp), %eax
	sbbl	20(%esp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	sall	$2, %ecx
	shldl	$2, %eax, %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	movl	%eax, __ZL8tsc_freq.lto_priv.0
	movl	%edx, __ZL8tsc_freq.lto_priv.0+4
	jmp	L648
	.cfi_endproc
LFE78:
	.section .rdata,"dr"
LC28:
	.ascii "Using directory %s\0"
LC29:
	.ascii "source/build/src/vfs.cpp\0"
	.text
	.p2align 4
	.globl	_addsearchpath_user
	.def	_addsearchpath_user;	.scl	2;	.type	32;	.endef
_addsearchpath_user:
LFB81:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L659
	movl	%ebp, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	movl	%ebx, (%esp)
	call	_strlen
	cmpb	$92, -1(%ebx,%eax)
	jne	L661
	movb	$0, -1(%ebx,%eax)
L661:
	leal	24(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	movl	_g_sm_heap, %ecx
	testl	%eax, %eax
	js	L679
	testb	$64, 31(%esp)
	je	L680
	movl	$16, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %esi
	testl	%eax, %eax
	je	L665
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	movl	%eax, (%esi)
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	leal	2(%eax), %ebp
	movl	%edx, 8(%esi)
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L681
	movl	%eax, 4(%esi)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	4(%esi), %ebp
	movl	%ebp, %eax
	cmpb	$0, 0(%ebp)
	je	L669
	.p2align 4
	.p2align 4
	.p2align 3
L668:
	movl	%eax, %edx
	addl	$1, %eax
	cmpb	$0, (%eax)
	jne	L668
	cmpl	%ebp, %edx
	jb	L669
	movzbl	-1(%eax), %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L670
L669:
	movl	%ebp, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, 0(%ebp,%eax)
	movl	4(%esi), %ebp
L670:
	movl	%esi, __ZL14searchpathhead.lto_priv.0
	movl	8(%esi), %eax
	cmpl	%eax, __ZL16maxsearchpathlen
	jnb	L671
	movl	%eax, __ZL16maxsearchpathlen
L671:
	xorl	%edx, %edx
	movl	%ebp, %eax
	call	_Bcorrectfilename.isra.0
	movl	20(%esp), %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, 12(%esi)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L672
	movl	4(%esi), %eax
	movl	$LC28, 12(%esp)
	movl	$190, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC29, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L672:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
L658:
	addl	$60, %esp
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
L679:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	call	*__imp___errno
	cmpl	$2, (%eax)
	setne	%al
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	subl	$2, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L659:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L665:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L681:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L680:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	movl	$-1, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L658
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	_findfrompath
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
_findfrompath:
LFB82:
	.cfi_startproc
	testl	%eax, %eax
	je	L714
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L683
	movl	%edx, 20(%esp)
	movl	_pathsearchmode, %edx
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	testl	%edx, %edx
	je	L717
	jmp	L719
	.p2align 4,,10
	.p2align 3
L690:
	addl	$1, %esi
L718:
	movzbl	(%esi), %eax
L717:
	cmpb	$47, _toupperlookup(%eax)
	je	L690
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %ebp
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L691
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%ebp)
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_Bcorrectfilename.isra.0
	movl	%ebx, (%esp)
	call	_strlen
	movl	$2, %edx
	movl	%eax, %ecx
	movl	__ZL16maxsearchpathlen, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	leal	1(%eax,%ecx), %esi
	movl	_g_sm_heap, %ecx
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L720
	movl	$12078, %eax
	movw	%ax, 0(%ebp)
	leal	2(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	__imp__GetFileAttributesA@4, %eax
	movl	%ebp, (%esp)
	movl	%eax, 16(%esp)
	call	*%eax
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	cmpl	$-1, %eax
	jne	L721
	movl	__ZL14searchpathhead.lto_priv.0, %edi
	testl	%edi, %edi
	jne	L701
	jmp	L697
	.p2align 4,,10
	.p2align 3
L723:
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	8(%esp), %eax
	movb	$0, (%esi,%eax)
	movl	4(%edi), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	_strcat
	movl	%ebp, (%esp)
	movl	16(%esp), %eax
	call	*%eax
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	cmpl	$-1, %eax
	jne	L722
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	(%edi), %edi
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%edi, %edi
	je	L697
L701:
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L723
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L721:
	movl	20(%esp), %eax
	movl	%ebp, (%eax)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
L696:
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L719:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	*__imp__GetFileAttributesA@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	cmpl	$-1, %eax
	je	L718
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %ebp
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L688
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	20(%esp), %eax
	movb	$0, (%ebx,%ebp)
	movl	%ebx, (%eax)
	jmp	L696
	.p2align 4,,10
	.p2align 3
L697:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
L683:
	movl	28(%esp), %esi
	movl	$-1, %eax
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L722:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %eax
	movl	%ebp, (%eax)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	jmp	L696
	.p2align 4,,10
	.p2align 3
L691:
	movl	%edi, %eax
	call	__Z13handle_memerri
L720:
	movl	%esi, %eax
	call	__Z13handle_memerri
L688:
	movl	%edi, %eax
	call	__Z13handle_memerri
L714:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE82:
	.p2align 4
	.def	__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0;	.scl	3;	.type	32;	.endef
__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0:
LFB84:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	40(%esp), %edi
	testb	%cl, %cl
	jne	L776
	jmp	L780
	.p2align 4,,10
	.p2align 3
L735:
	addl	$1, %ebx
L776:
	movzbl	(%ebx), %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L735
	cmpb	$0, 36(%esp)
	jne	L732
	movl	%esi, %eax
	cmpb	$1, %al
	je	L751
L731:
	movl	_numgroupfiles, %ecx
	subl	$1, %ecx
	js	L781
L772:
	movl	%ebp, 28(%esp)
	movl	%ebx, %edx
	.cfi_offset 5, -8
L748:
	movl	__ZL8groupfil.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	js	L742
	movl	__ZL9gnumfiles(,%ecx,4), %eax
	movl	%eax, %esi
	subl	$1, %esi
	js	L742
	movl	__ZL9gfilelist.lto_priv.0(,%ecx,4), %ebx
	sall	$4, %eax
	movl	%ecx, %ebp
	movl	%esi, %ecx
	movl	%edx, %esi
	leal	-16(%ebx,%eax), %edx
L747:
	movl	%ecx, 12(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L745:
	movzbl	(%esi,%eax), %ecx
	testb	%cl, %cl
	je	L743
	movzbl	(%edx,%eax), %ebx
	movzbl	_toupperlookup(%ebx), %ebx
	cmpb	%bl, _toupperlookup(%ecx)
	jne	L773
	addl	$1, %eax
	cmpl	$13, %eax
	jne	L745
	movl	12(%esp), %ecx
	cmpb	$0, 13(%esi)
	jne	L744
L749:
	movl	44(%esp), %eax
	movl	%ecx, %edx
	movl	%ebp, %ecx
	movb	%cl, (%eax,%edi)
	movl	48(%esp), %eax
	movl	%edx, (%eax,%edi,4)
	movl	52(%esp), %eax
	movl	$0, (%eax,%edi,4)
	movl	28(%esp), %ebp
	.cfi_restore 5
L741:
	movl	%edi, %ecx
L724:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	%ecx, %eax
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L780:
	.cfi_restore_state
	movl	%edx, 12(%esp)
	call	_findfrompath
	movl	12(%esp), %edx
	cmpl	$-1, %eax
	je	L779
	movl	$256, 8(%esp)
	movl	$32768, 4(%esp)
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	_open
	testl	%eax, %eax
	jns	L730
L779:
	movzbl	(%ebx), %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L735
	cmpb	$0, 36(%esp)
	je	L731
	.p2align 4
	.p2align 3
L732:
	movl	__ZL9kzcurhand, %eax
	cmpl	%eax, %edi
	je	L737
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L737
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	js	L737
	testl	%eax, %eax
	js	L738
	movl	52(%esp), %edx
	movl	%ecx, (%edx,%eax,4)
	movl	_kzfs, %edx
	testl	%edx, %edx
	jne	L738
L739:
	movl	$-1, __ZL9kzcurhand
L737:
	movl	%esi, %eax
	xorl	%ecx, %ecx
	cmpb	$1, %al
	je	L772
	movl	%ebx, %eax
	call	__ZL8kzipopenPKc
	testl	%eax, %eax
	je	L731
	movl	44(%esp), %edx
	movl	%edi, __ZL9kzcurhand
	movb	$-2, (%edx,%edi)
	movl	48(%esp), %edx
	movl	%eax, (%edx,%edi,4)
	movl	52(%esp), %eax
	movl	$0, (%eax,%edi,4)
	imull	$260, %edi, %eax
	movl	%ebx, 4(%esp)
	addl	$__ZL10filenamsav, %eax
	movl	%eax, (%esp)
	call	_strcpy
	jmp	L741
	.p2align 4,,10
	.p2align 3
L773:
	.cfi_offset 5, -8
	movl	12(%esp), %ecx
L744:
	subl	$1, %ecx
	subl	$16, %edx
	cmpl	$-1, %ecx
	jne	L747
L782:
	movl	%ebp, %ecx
	movl	%esi, %edx
	.p2align 4
	.p2align 3
L742:
	subl	$1, %ecx
	jnb	L748
	movl	28(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L724
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore_state
	movl	12(%esp), %ecx
	cmpb	$0, (%edx,%eax)
	je	L749
	subl	$1, %ecx
	subl	$16, %edx
	cmpl	$-1, %ecx
	jne	L747
	jmp	L782
	.p2align 4,,10
	.p2align 3
L730:
	.cfi_restore 5
	movl	44(%esp), %edx
	movb	$-1, (%edx,%edi)
	movl	48(%esp), %edx
	movl	%eax, (%edx,%edi,4)
	movl	52(%esp), %eax
	movl	$0, (%eax,%edi,4)
	jmp	L741
L738:
	movl	%edx, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L739
L751:
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	jmp	L748
L781:
	.cfi_restore 5
	movl	$-1, %ecx
	jmp	L724
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z14kread_internaliPviPKhPKiPi
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
__Z14kread_internaliPviPKhPKiPi:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ebx
	movl	16(%ebp), %edi
	movl	(%ebx,%eax,4), %esi
	movl	8(%ebp), %ebx
	movl	%edi, 36(%esp)
	movl	%esi, 44(%esp)
	movzbl	(%ebx,%eax), %esi
	cmpl	$255, %esi
	je	L939
	movl	%ecx, 40(%esp)
	movl	%eax, %edi
	movl	%edx, 32(%esp)
	cmpl	$254, %esi
	je	L940
	movl	__ZL8groupfil.lto_priv.0(,%esi,4), %eax
	cmpl	$-1, %eax
	je	L788
	movzbl	__ZL11groupfilgrp(%esi), %ecx
	cmpb	$-1, %cl
	je	L871
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L866:
	movzbl	%cl, %ebx
	movl	__ZL9gfileoffs.lto_priv.0(,%ebx,4), %ecx
	addl	(%ecx,%eax,4), %edx
	movzbl	__ZL11groupfilgrp(%ebx), %ecx
	movl	__ZL8groupfil.lto_priv.0(,%ebx,4), %eax
	cmpb	$-1, %cl
	jne	L866
	movl	%edx, 16(%esp)
	cmpl	$-1, %eax
	je	L788
L865:
	movl	__ZL9gfileoffs.lto_priv.0(,%esi,4), %edx
	movl	44(%esp), %ecx
	movl	%edx, 28(%esp)
	movl	(%edx,%ecx,4), %edx
	movl	36(%esp), %ecx
	movl	%edx, 24(%esp)
	leal	(%ecx,%edi,4), %edi
	movl	%edi, 36(%esp)
	movl	(%edi), %edi
	movl	%edi, 20(%esp)
	addl	%edx, %edi
	movl	16(%esp), %edx
	addl	%edi, %edx
	cmpl	%edx, __ZL11groupfilpos(,%ebx,4)
	je	L867
	movl	%edx, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 28(%esp)
	call	_lseek
	movl	28(%esp), %edx
	movl	__ZL9gfileoffs.lto_priv.0(,%esi,4), %esi
	movl	44(%esp), %ecx
	movl	%edx, __ZL11groupfilpos(,%ebx,4)
	movl	(%esi,%ecx,4), %eax
	movl	%esi, 28(%esp)
	movl	%eax, 24(%esp)
	movl	36(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
L867:
	movl	28(%esp), %esi
	movl	44(%esp), %eax
	movl	40(%esp), %edi
	movl	4(%esi,%eax,4), %eax
	subl	24(%esp), %eax
	subl	20(%esp), %eax
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL8groupfil.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_read
	movl	36(%esp), %esi
	addl	%eax, (%esi)
	addl	%eax, __ZL11groupfilpos(,%ebx,4)
L783:
	addl	$48, %esp
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
L940:
	.cfi_restore_state
	movl	__ZL9kzcurhand, %edx
	movl	_kzfs, %eax
	cmpl	%edi, %edx
	jne	L941
L786:
	testl	%eax, %eax
	je	L788
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	jg	L791
L788:
	addl	$48, %esp
	xorl	%eax, %eax
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
L939:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	%ecx, 16(%ebp)
	movl	%edx, 12(%ebp)
	movl	%eax, 8(%ebp)
	addl	$48, %esp
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
	jmp	_read
	.p2align 4,,10
	.p2align 3
L941:
	.cfi_restore_state
	testl	%eax, %eax
	je	L787
	movl	_kzfs+24, %eax
	testl	%eax, %eax
	jns	L942
L787:
	imull	$260, %edi, %eax
	movl	%edi, __ZL9kzcurhand
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L788
	movl	36(%esp), %esi
	xorl	%ecx, %ecx
	movl	(%esi,%edi,4), %edx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movl	_kzfs+20, %ecx
	cmpl	%edx, %ecx
	jl	L789
	movl	%edx, _kzfs+24
	jmp	L786
	.p2align 4,,10
	.p2align 3
L791:
	movl	_kzfs+24, %edx
	movl	_kzfs+4, %ebx
	movl	%edx, %ecx
	testl	%ebx, %ebx
	jne	L794
	cmpl	%edx, _kzfs+36
	jne	L943
L795:
	movl	_kzfs+20, %ebx
	movl	40(%esp), %esi
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	$1, 8(%esp)
	subl	%edx, %ebx
	cmpl	%esi, %ebx
	movl	%eax, (%esp)
	cmovg	%esi, %ebx
	movl	%ebx, 4(%esp)
	call	_fread
	addl	%ebx, _kzfs+36
	movl	_kzfs+24, %ecx
L796:
	movl	40(%esp), %eax
	movl	_kzfs+20, %edx
	addl	%ecx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, _kzfs+24
	addl	$48, %esp
	subl	%ecx, %eax
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
L789:
	.cfi_restore_state
	movl	%ecx, _kzfs+24
	jmp	L786
	.p2align 4,,10
	.p2align 3
L794:
	cmpl	$8, %ebx
	jne	L796
	movl	40(%esp), %esi
	movl	32(%esp), %edi
	movl	$1, __ZL10zipfilmode.lto_priv.0
	movl	_kzfs+20, %ebx
	addl	%edx, %esi
	cmpl	%ebx, %esi
	cmovle	%esi, %ebx
	subl	%edx, %edi
	movl	%edi, __ZL8gzbufptr
	movl	%ebx, _kzfs+28
	cmpl	%edx, %ebx
	je	L788
	movl	__ZL7gslidew, %esi
	movl	%esi, 44(%esp)
	subl	$32768, %esi
	cmpl	%edx, %esi
	jle	L797
	movl	_kzfs+16, %edx
	testl	%edx, %edx
	jne	L944
L798:
	movl	_kzfs+12, %edx
	movl	$131072, %ecx
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	cmpl	%ecx, %edx
	movl	$olinbuf, (%esp)
	movl	$0, __ZL7gslidew
	cmovg	%ecx, %edx
	movl	$16384, __ZL7gslider
	movl	%edx, 4(%esp)
	movl	$0, _kzfs+32
	movl	%edx, _kzfs+16
	call	_fread
	movl	_kzfs+32, %eax
	movl	$-1048544, __ZL6bitpos.lto_priv.0
	movl	$olinbuf+131068, __ZL6filptr.lto_priv.0
	cmpl	$2, %eax
	je	L868
	cmpl	$3, %eax
	je	L800
	cmpl	$1, %eax
	je	L945
	movl	olinbuf, %ebx
	movl	$-1048541, __ZL6bitpos.lto_priv.0
	movl	%ebx, %eax
	shrl	%ebx
	andl	$1, %eax
	movl	%eax, 44(%esp)
	andl	$3, %ebx
	je	L946
L815:
	cmpl	$3, %ebx
	je	L825
	cmpl	$1, %ebx
	jne	L826
	movl	$8, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+576, %edx
	movl	$__ZL4clen.lto_priv.0, %eax
	shufps	$0, %xmm0, %xmm0
L827:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+576, %eax
	jne	L827
	movl	$9, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1024, %eax
	shufps	$0, %xmm0, %xmm0
L828:
	movups	%xmm0, (%edx)
	addl	$32, %edx
	movups	%xmm0, -16(%edx)
	cmpl	%edx, %eax
	jne	L828
	movl	$7, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1120, %edx
	shufps	$0, %xmm0, %xmm0
L829:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L829
	movl	$8, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1152, %eax
	movl	$__ZL4clen.lto_priv.0+1280, %edx
	movl	$5, 36(%esp)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, __ZL4clen.lto_priv.0+1120
	movups	%xmm0, __ZL4clen.lto_priv.0+1136
	movss	36(%esp), %xmm0
	shufps	$0, %xmm0, %xmm0
L830:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L830
	movl	$32, 32(%esp)
	movl	$1152, %ebx
	movl	$288, %esi
L831:
	movl	$__ZL5nbuf0.lto_priv.0, (%esp)
	movl	$__ZL5ibuf0.lto_priv.0, %ecx
	movl	%esi, %edx
	movl	$__ZL4clen.lto_priv.0, %eax
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	$__ZL8qhufval0.lto_priv.0, %ecx
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$9, 4(%esp)
	movl	$__ZL8qhufbit0.lto_priv.0, (%esp)
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	movl	$__ZL5nbuf1.lto_priv.0, (%esp)
	movl	32(%esp), %edx
	leal	__ZL4clen.lto_priv.0(%ebx), %eax
	movl	$__ZL5ibuf1.lto_priv.0, %ecx
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	$__ZL8qhufval1.lto_priv.0, %ecx
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$6, 4(%esp)
	movl	$__ZL8qhufbit1.lto_priv.0, (%esp)
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0
	movl	__ZL7gslidew, %ebx
L856:
	movl	__ZL7gslider, %esi
	cmpl	%ebx, %esi
	jle	L947
L849:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
L811:
	movl	(%ebx,%edx), %edx
	shrl	%cl, %edx
	andl	$511, %edx
	movl	%edx, %ecx
	movzbl	__ZL8qhufbit0.lto_priv.0(%edx), %edx
	testb	%dl, %dl
	je	L852
	addl	%eax, %edx
	movl	__ZL8qhufval0.lto_priv.0(,%ecx,4), %esi
	movl	%edx, __ZL6bitpos.lto_priv.0
	js	L854
	call	__ZL17suckbitsnextblockv.lto_priv.0
L854:
	cmpl	$255, %esi
	jle	L948
	cmpl	$256, %esi
	je	L825
	movl	__ZL6bitpos.lto_priv.0, %eax
	leal	-227(%esi), %ebx
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL5hxbit.lto_priv.0(,%ebx,8), %edi
	movl	%eax, %esi
	movl	%eax, %ecx
	sarl	$3, %esi
	andl	$7, %ecx
	movl	(%edx,%esi), %esi
	shrl	%cl, %esi
	andl	__ZL8pow2mask.lto_priv.0(,%edi,4), %esi
	addl	%edi, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L857
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L857:
	addl	__ZL5hxbit.lto_priv.0+4(,%ebx,8), %esi
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	%esi, %edi
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	andl	$63, %ebx
	movzbl	__ZL8qhufbit1.lto_priv.0(%ebx), %ecx
	testb	%cl, %cl
	je	L858
	addl	%eax, %ecx
	movl	__ZL8qhufval1.lto_priv.0(,%ebx,4), %esi
	movl	%ecx, __ZL6bitpos.lto_priv.0
	js	L860
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
L860:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL5hxbit.lto_priv.0(,%esi,8), %ebx
	movl	%eax, %ecx
	sarl	$3, %ecx
	movl	(%edx,%ecx), %edx
	movl	%edx, 36(%esp)
	movl	__ZL8pow2mask.lto_priv.0(,%ebx,4), %edx
	addl	%eax, %ebx
	movl	%ebx, __ZL6bitpos.lto_priv.0
	movl	%edx, 32(%esp)
	js	L861
	movl	%eax, 28(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	28(%esp), %eax
L861:
	movl	__ZL7gslidew, %ebx
	testl	%edi, %edi
	je	L856
	andl	$7, %eax
	movl	36(%esp), %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	addl	%edi, %ebx
	shrl	%cl, %edx
	movl	32(%esp), %ecx
	andl	%edx, %ecx
	addl	__ZL5hxbit.lto_priv.0+4(,%esi,8), %ecx
	movl	%ebx, %esi
	subl	%ecx, %eax
	subl	%ecx, %esi
	movl	%ecx, %edi
L862:
	movl	%eax, %edx
	andl	$32767, %edx
	movzbl	__ZL8slidebuf.lto_priv.0(%edx), %ecx
	leal	(%edi,%eax), %edx
	addl	$1, %eax
	andl	$32767, %edx
	movb	%cl, __ZL8slidebuf.lto_priv.0(%edx)
	cmpl	%eax, %esi
	jne	L862
	movl	%ebx, __ZL7gslidew
	jmp	L856
	.p2align 4,,10
	.p2align 3
L942:
	movl	36(%esp), %esi
	movl	%eax, (%esi,%edx,4)
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L787
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L787
	.p2align 4,,10
	.p2align 3
L871:
	movl	$0, 16(%esp)
	movl	%esi, %ebx
	jmp	L865
L943:
	addl	_kzfs+8, %edx
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_kzfs+24, %edx
	movl	_kzfs, %eax
	movl	%edx, _kzfs+36
	jmp	L795
L797:
	xorl	%eax, %eax
	testl	%esi, %esi
	movl	%ebx, 36(%esp)
	cmovs	%eax, %esi
	cmpl	%ebx, 44(%esp)
	jge	L803
	movl	__ZL7gslider, %eax
	subl	$16384, %eax
	movl	%eax, 36(%esp)
L803:
	movl	%esi, %eax
	andl	$32767, %eax
	cmpl	%ecx, %esi
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	cmovge	%esi, %ecx
	xorl	%esi, %eax
	testb	$-128, %ah
	movl	36(%esp), %eax
	jne	L804
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%ecx, %eax
	jg	L949
L805:
	cmpl	%ebx, 44(%esp)
	jge	L938
	movl	_kzfs+32, %eax
	cmpl	$2, %eax
	je	L807
	cmpl	$3, %eax
	je	L800
	cmpl	$1, %eax
	je	L950
L809:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%edx, %ebx
	movl	%edx, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%eax,%ebx), %ebx
	shrl	%cl, %ebx
	movl	%edx, %ecx
	andl	$1, %ebx
	addl	$1, %ecx
	movl	%ebx, 44(%esp)
	movl	%ecx, __ZL6bitpos.lto_priv.0
	js	L951
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %ecx
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%ecx, %ebx
	leal	2(%ecx), %edx
	andl	$7, %ecx
	sarl	$3, %ebx
L813:
	movl	(%eax,%ebx), %eax
	movl	%edx, __ZL6bitpos.lto_priv.0
	shrl	%cl, %eax
	andl	$3, %eax
	movl	%eax, %ebx
	testl	%edx, %edx
	js	L814
	call	__ZL17suckbitsnextblockv.lto_priv.0
L814:
	testl	%ebx, %ebx
	jne	L815
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	%edx, %eax
	negl	%eax
	andl	$7, %eax
	addl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L816
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
L816:
	movl	%eax, %ebx
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L817
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L817:
	movl	%eax, %esi
	movl	%eax, %ecx
	sarl	$3, %esi
	andl	$7, %ecx
	movl	(%edx,%esi), %esi
	shrl	%cl, %esi
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L818
	call	__ZL17suckbitsnextblockv.lto_priv.0
L818:
	movl	%esi, %eax
	xorl	%ebx, %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	jne	L870
	movzwl	%bx, %ebx
	jmp	L819
L824:
	movl	__ZL7gslider, %esi
	cmpl	%esi, __ZL7gslidew
	jge	L952
L820:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$8, %eax
	sarl	$3, %edx
	andl	$7, %ecx
L810:
	movl	(%esi,%edx), %esi
	movl	%eax, __ZL6bitpos.lto_priv.0
	shrl	%cl, %esi
	testl	%eax, %eax
	js	L802
	call	__ZL17suckbitsnextblockv.lto_priv.0
L802:
	movl	__ZL7gslidew, %eax
	subl	$1, %ebx
	leal	1(%eax), %edx
	andl	$32767, %eax
	movl	%edx, __ZL7gslidew
	movl	%esi, %edx
	movb	%dl, __ZL8slidebuf.lto_priv.0(%eax)
L819:
	testl	%ebx, %ebx
	jne	L824
L825:
	movl	44(%esp), %eax
	testl	%eax, %eax
	je	L809
	movl	__ZL7gslider, %eax
	movl	__ZL7gslidew, %ebx
	leal	-16384(%eax), %edx
	movl	_kzfs+24, %eax
	movl	%edx, %edi
	movl	%edx, %ecx
	movl	%edx, __ZL7gslider
	andl	$32767, %edi
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	xorl	%ebx, %ecx
	andb	$-128, %ch
	jne	L863
	movl	_kzfs+28, %ecx
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
	cmpl	%eax, %ecx
	jg	L953
L800:
	movl	$3, _kzfs+32
L938:
	movl	_kzfs+24, %ecx
	jmp	L796
L804:
	andl	$-32768, %eax
	cmpl	%ebx, %eax
	movl	%eax, 28(%esp)
	cmovg	%ebx, %eax
	cmpl	%ecx, %eax
	jg	L954
L806:
	movl	28(%esp), %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	36(%esp), %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%eax, %edx
	jge	L805
	leal	(%edi,%edx), %ecx
	subl	%edx, %eax
	subl	28(%esp), %edx
	addl	$__ZL8slidebuf.lto_priv.0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_memcpy
	movl	_kzfs+28, %ebx
	jmp	L805
L944:
	movl	_kzfs+8, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fseek
	movl	_kzfs, %eax
	jmp	L798
L852:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %esi
	jmp	L854
L868:
	xorl	%ecx, %ecx
	movl	$-131068, %edx
	movl	$-1048544, %eax
	movl	$olinbuf+131068, %ebx
L799:
	movl	_kzfs+40, %esi
	movl	%esi, 44(%esp)
	jmp	L811
L945:
	movl	_kzfs+40, %eax
	movl	_kzfs+36, %ebx
	movl	$-1048536, __ZL6bitpos.lto_priv.0
	movl	olinbuf, %esi
	movl	%eax, 44(%esp)
	jmp	L802
L948:
	movl	__ZL7gslidew, %eax
	movl	%esi, %edx
	leal	1(%eax), %ebx
	andl	$32767, %eax
	movl	%ebx, __ZL7gslidew
	movb	%dl, __ZL8slidebuf.lto_priv.0(%eax)
	jmp	L856
L949:
	leal	(%edi,%ecx), %edx
	subl	%ecx, %eax
	subl	%esi, %ecx
	movl	32(%esp), %esi
	movl	%eax, 8(%esp)
	leal	__ZL8slidebuf.lto_priv.0(%esi,%ecx), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_memcpy
	movl	_kzfs+28, %ebx
	jmp	L805
L826:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	andl	$31, %ebx
	addl	$5, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L832
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L832:
	leal	257(%ebx), %esi
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	andl	$31, %ebx
	addl	$5, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L833
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L833:
	leal	1(%ebx), %edi
	movl	%eax, %ebx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	%edi, 32(%esp)
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	andl	$15, %ebx
	addl	$4, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L834
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L834:
	leal	4(%ebx), %edi
	movl	%esi, 28(%esp)
	xorl	%ebx, %ebx
	movl	%edi, 36(%esp)
	jmp	L836
L955:
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L836:
	movl	%eax, %esi
	movl	%eax, %ecx
	movl	__ZL5ccind.lto_priv.0(,%ebx,4), %edi
	sarl	$3, %esi
	andl	$7, %ecx
	movl	(%edx,%esi), %edx
	shrl	%cl, %edx
	movl	%edx, %esi
	andl	$7, %esi
	addl	$3, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L835
	call	__ZL17suckbitsnextblockv.lto_priv.0
L835:
	movl	%esi, __ZL5cclen.lto_priv.0(,%edi,4)
	addl	$1, %ebx
	cmpl	%ebx, 36(%esp)
	jne	L955
	movl	36(%esp), %edi
	movl	28(%esp), %esi
	cmpl	$19, %edi
	je	L837
L838:
	movl	__ZL5ccind.lto_priv.0(,%edi,4), %eax
	addl	$1, %edi
	movl	$0, __ZL5cclen.lto_priv.0(,%eax,4)
	cmpl	$19, %edi
	jne	L838
L837:
	movl	$__ZL5nbuf0.lto_priv.0, (%esp)
	movl	$__ZL5cclen.lto_priv.0, %eax
	movl	$__ZL5ibuf0.lto_priv.0, %ecx
	xorl	%edi, %edi
	movl	$19, %edx
	call	__ZL10hufgencodePKiiPiS1_.lto_priv.0
	movl	32(%esp), %eax
	movl	%esi, 28(%esp)
	addl	%esi, %eax
	movl	%eax, 36(%esp)
	jmp	L848
L839:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%edx, %eax
	movl	%edx, %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movl	(%ebx,%eax), %eax
	shrl	%cl, %eax
	cmpl	$16, %esi
	je	L956
	cmpl	$17, %esi
	je	L957
	andl	$127, %eax
	addl	$7, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L847
	call	__ZL17suckbitsnextblockv.lto_priv.0
L847:
	addl	$11, %ebx
L846:
	leal	__ZL4clen.lto_priv.0(,%edi,4), %eax
	leal	0(,%ebx,4), %edx
	addl	%ebx, %edi
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
L840:
	cmpl	%edi, 36(%esp)
	jle	L958
L848:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %esi
	cmpl	$15, %eax
	jg	L839
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	jmp	L840
L957:
	andl	$7, %eax
	addl	$3, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L845
	call	__ZL17suckbitsnextblockv.lto_priv.0
L845:
	addl	$3, %ebx
	jmp	L846
L956:
	andl	$3, %eax
	addl	$2, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L842
	call	__ZL17suckbitsnextblockv.lto_priv.0
L842:
	leal	3(%edi,%ebx), %edx
	andl	$1, %ebx
	movl	__ZL4clen.lto_priv.0-4(,%edi,4), %eax
	jne	L843
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	cmpl	%edx, %edi
	je	L840
L843:
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	movl	%eax, __ZL4clen.lto_priv.0+4(,%edi,4)
	addl	$2, %edi
	cmpl	%edx, %edi
	jne	L843
	jmp	L840
L958:
	movl	28(%esp), %esi
	leal	0(,%esi,4), %ebx
	jmp	L831
L954:
	subl	%ecx, %eax
	leal	(%edi,%ecx), %edx
	subl	%esi, %ecx
	movl	%eax, %ebx
	movl	32(%esp), %eax
	movl	%edx, (%esp)
	movl	%ebx, 8(%esp)
	leal	__ZL8slidebuf.lto_priv.0(%eax,%ecx), %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	_kzfs+24, %edx
	movl	_kzfs+28, %ebx
	jmp	L806
L947:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	leal	-16384(%esi), %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	cmpl	%edx, %eax
	jl	L959
L850:
	leal	16384(%esi), %eax
	movl	%eax, __ZL7gslider
	cmpl	_kzfs+28, %esi
	jl	L849
	movl	44(%esp), %eax
	movl	_kzfs+24, %ecx
	movl	$2, _kzfs+32
	movl	%eax, _kzfs+40
	jmp	L796
L858:
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %esi
	jmp	L860
L946:
	movl	$-1048536, __ZL6bitpos.lto_priv.0
	movl	$-1048536, %eax
	jmp	L816
L863:
	movl	_kzfs+28, %ecx
	movl	%ebx, %esi
	andl	$-32768, %esi
	cmpl	%ecx, %esi
	cmovle	%esi, %ecx
	movl	%ecx, 44(%esp)
	cmpl	%eax, %ecx
	jg	L960
L864:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	cmpl	%edx, %ebx
	cmovg	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L800
	movl	__ZL8gzbufptr, %edx
	subl	%eax, %ebx
	movl	%ebx, 8(%esp)
	addl	%eax, %edx
	subl	%esi, %eax
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L800
L950:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	_kzfs+40, %edi
	movl	__ZL6filptr.lto_priv.0, %esi
	movl	_kzfs+36, %ebx
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%edi, 44(%esp)
	addl	$8, %eax
	sarl	$3, %edx
	andl	$7, %ecx
	jmp	L810
L807:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	jmp	L799
L959:
	movl	__ZL8gzbufptr, %ebx
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	%eax, %ebx
	subl	%ecx, %eax
	andl	$32767, %ecx
	leal	__ZL8slidebuf.lto_priv.0(%eax,%ecx), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L850
L953:
	movl	__ZL8gzbufptr, %ebx
	subl	%eax, %ecx
	movl	%ecx, 8(%esp)
	addl	%eax, %ebx
	subl	%edx, %eax
	leal	__ZL8slidebuf.lto_priv.0(%edi,%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L800
L960:
	movl	__ZL8gzbufptr, %ecx
	addl	%eax, %ecx
	movl	%ecx, (%esp)
	movl	44(%esp), %ecx
	subl	%eax, %ecx
	subl	%edx, %eax
	leal	__ZL8slidebuf.lto_priv.0(%edi,%eax), %eax
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L864
L952:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	leal	-16384(%esi), %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	cmpl	%edx, %eax
	jl	L961
L821:
	leal	16384(%esi), %eax
	movl	%eax, __ZL7gslider
	cmpl	_kzfs+28, %esi
	jl	L820
	movl	44(%esp), %eax
	movl	%ebx, _kzfs+36
	movl	$1, _kzfs+32
	movl	_kzfs+24, %ecx
	movl	%eax, _kzfs+40
	jmp	L796
L951:
	movl	%ecx, %ebx
	addl	$3, %edx
	andl	$7, %ecx
	sarl	$3, %ebx
	jmp	L813
L870:
	movl	$-1, %eax
	jmp	L783
L961:
	subl	%eax, %edx
	movl	__ZL8gzbufptr, %edi
	movl	%edx, 8(%esp)
	movl	%ecx, %edx
	addl	%eax, %edi
	andl	$32767, %edx
	subl	%ecx, %eax
	leal	__ZL8slidebuf.lto_priv.0(%edx,%eax), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L821
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_artReadManifest
	.def	_artReadManifest;	.scl	2;	.type	32;	.endef
_artReadManifest:
LFB93:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	_g_sm_heap, %ecx
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%eax, 32(%esp)
	movl	8(%edx), %eax
	movl	%edx, 16(%esp)
	leal	(%eax,%eax), %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L978
	movl	8(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax), %ebx
	movl	%eax, 12(%esp)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L978
	movl	16(%esp), %esi
	movl	32(%esp), %ebx
	movl	24(%esp), %edx
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	(%eax,%eax), %ecx
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	28(%esp), %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	(%eax,%eax), %ecx
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	8(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	7(%eax), %ebx
	movl	%eax, 12(%esp)
	sarl	$3, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %esi
	testl	%eax, %eax
	je	L978
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	call	_memset
	movl	16(%esp), %eax
	movl	%esi, 12(%eax)
	movl	(%eax), %ebp
	cmpl	4(%eax), %ebp
	jg	L968
	leal	_picanm(%ebp,%ebp,4), %eax
	movl	%edi, 48(%esp)
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	.cfi_offset 7, -12
	jmp	L969
	.p2align 4,,10
	.p2align 3
L979:
	addl	$5, 20(%esp)
	movl	(%eax), %eax
L969:
	movl	%ebp, %ebx
	movl	28(%esp), %esi
	movl	$4, %ecx
	leal	36(%esp), %edx
	subl	%eax, %ebx
	movl	24(%esp), %eax
	movzwl	(%esi,%ebx,2), %edi
	movzwl	(%eax,%ebx,2), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movswl	%ax, %esi
	movw	%ax, 12(%esp)
	movswl	%di, %eax
	imull	%eax, %esi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	32(%esp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	testl	%esi, %esi
	je	L970
	movzwl	12(%esp), %eax
	movl	16(%esp), %ecx
	sall	$16, %edi
	orl	%eax, %edi
	movl	%ebx, %eax
	andl	$7, %ebx
	movl	%edi, _tilesiz(,%ebp,4)
	sarl	$3, %eax
	addl	12(%ecx), %eax
	movzbl	__ZL8pow2char.lto_priv.11(%ebx), %edx
	orb	%dl, (%eax)
	movl	36(%esp), %eax
	movl	20(%esp), %edi
	movl	%eax, %edx
	movb	%ah, 1(%edi)
	andl	$63, %edx
	movb	%dl, (%edi)
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, 2(%edi)
	movl	%eax, %edx
	andl	$-64, %eax
	shrl	$24, %edx
	andl	$15, %edx
	orl	%edx, %eax
	movb	%al, 3(%edi)
L970:
	movl	16(%esp), %eax
	addl	$1, %ebp
	cmpl	%ebp, 4(%eax)
	jge	L979
	movl	48(%esp), %edi
	.cfi_restore 7
L968:
	movl	24(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L978:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%ebx, %eax
	movl	%edi, 48(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE93:
	.p2align 4
	.globl	__Z15klseek_internaliiiPKhPiS1_
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
__Z15klseek_internaliiiPKhPiS1_:
LFB96:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %eax
	movl	32(%esp), %ebp
	movl	36(%esp), %edi
	movzbl	(%eax,%ebx), %ecx
	cmpl	$255, %ecx
	je	L1007
	cmpl	$254, %ecx
	je	L1008
	movl	__ZL8groupfil.lto_priv.0(,%ecx,4), %eax
	cmpl	$-1, %eax
	je	L980
	leal	(%edi,%ebx,4), %edi
	cmpl	$1, %esi
	je	L994
	cmpl	$2, %esi
	je	L995
	movl	%edx, (%edi)
	movl	%edx, %eax
L980:
	addl	$8, %esp
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
L994:
	.cfi_restore_state
	movl	(%edi), %eax
	addl	%edx, %eax
	movl	%eax, (%edi)
	addl	$8, %esp
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
L1008:
	.cfi_restore_state
	movl	__ZL9kzcurhand, %eax
	cmpl	%ebx, %eax
	je	L983
	movl	_kzfs, %ecx
	testl	%ecx, %ecx
	je	L984
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	jns	L1009
L984:
	imull	$260, %ebx, %eax
	movl	%edx, 4(%esp)
	movl	%ebx, __ZL9kzcurhand
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L985
	movl	(%edi,%ebx,4), %ecx
	xorl	%ebx, %ebx
	movl	_kzfs+20, %eax
	movl	4(%esp), %edx
	testl	%ecx, %ecx
	cmovs	%ebx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, _kzfs+24
L986:
	cmpl	$1, %esi
	je	L989
	xorl	%ecx, %ecx
	cmpl	$2, %esi
	cmove	%eax, %ecx
	addl	%ecx, %edx
L991:
	movl	%edx, %ecx
	testl	%edx, %edx
	jns	L992
	xorl	%ecx, %ecx
	xorl	%edx, %edx
L992:
	cmpl	%eax, %edx
	jg	L993
	movl	%ecx, _kzfs+24
	addl	$8, %esp
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
L1007:
	.cfi_restore_state
	movl	%esi, 36(%esp)
	movl	%edx, 32(%esp)
	movl	0(%ebp,%ebx,4), %eax
	movl	%eax, 28(%esp)
	addl	$8, %esp
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
	jmp	_lseek
	.p2align 4,,10
	.p2align 3
L995:
	.cfi_restore_state
	movl	0(%ebp,%ebx,4), %ebx
	movl	__ZL9gfileoffs.lto_priv.0(,%ecx,4), %ecx
	movl	4(%ecx,%ebx,4), %eax
	addl	%edx, %eax
	subl	(%ecx,%ebx,4), %eax
	movl	%eax, (%edi)
	addl	$8, %esp
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
L983:
	.cfi_restore_state
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L985
	movl	_kzfs+20, %eax
	jmp	L986
	.p2align 4,,10
	.p2align 3
L993:
	movl	%eax, _kzfs+24
	addl	$8, %esp
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
L989:
	.cfi_restore_state
	addl	_kzfs+24, %edx
	jmp	L991
	.p2align 4,,10
	.p2align 3
L1009:
	movl	%ecx, (%edi,%eax,4)
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L984
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	$0, _kzfs
	jmp	L984
L985:
	movl	$-1, %eax
	jmp	L980
	.cfi_endproc
LFE96:
	.section .rdata,"dr"
LC34:
	.ascii "KenSilverman\0"
	.text
	.p2align 4
	.globl	_initgroupfile
	.def	_initgroupfile;	.scl	2;	.type	32;	.endef
_initgroupfile:
LFB97:
	.cfi_startproc
	movb	$47, _toupperlookup+92
	testl	%eax, %eax
	je	L1100
	movl	_numgroupfiles, %ecx
	cmpl	$7, %ecx
	jg	L1100
	subl	$456, %esp
	.cfi_def_cfa_offset 460
	movl	%ecx, 4(%esp)
	leal	52(%esp), %edx
	xorl	%ecx, %ecx
	movl	$__ZL11groupfilpos, 16(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 12(%esp)
	movl	$__ZL11groupfilgrp, 8(%esp)
	movl	$0, (%esp)
	movl	%esi, 444(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	$0, 52(%esp)
	call	__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0
	testl	%eax, %eax
	js	L1011
	movl	%ebx, 440(%esp)
	.cfi_offset 3, -20
	movl	52(%esp), %ebx
	movl	%edi, 448(%esp)
	testl	%ebx, %ebx
	.cfi_offset 7, -12
	je	L1105
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	leal	64(%esp), %edi
	movl	$4, %ecx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	%edi, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %eax
	cmpb	$80, 64(%esp)
	jne	L1015
	cmpb	$75, 65(%esp)
	je	L1106
L1015:
	movl	$__ZL11groupfilpos, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
L1014:
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$16, %ecx
	movl	%edi, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1399743819, 64(%esp)
	je	L1107
L1039:
	movl	$1, %ebx
L1040:
	movl	_numgroupfiles, %ebp
	testl	%ebx, %ebx
	jne	L1041
	movl	76(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, __ZL9gnumfiles(,%ebp,4)
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L1042
	movl	_numgroupfiles, %edi
	movl	%eax, __ZL9gfilelist.lto_priv.0(,%ebp,4)
	movl	_g_sm_heap, %ecx
	movl	__ZL9gnumfiles(,%edi,4), %eax
	leal	4(,%eax,4), %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L1108
	movl	%eax, __ZL9gfileoffs.lto_priv.0(,%edi,4)
	movl	_numgroupfiles, %eax
	movl	__ZL9gnumfiles(,%eax,4), %ecx
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	sall	$4, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %edx
	movl	__ZL9gnumfiles(,%edx,4), %ecx
	leal	1(%ecx), %eax
	sall	$4, %eax
	testl	%ecx, %ecx
	jle	L1046
	.p2align 6
	.p2align 4
	.p2align 3
L1045:
	movl	__ZL9gfilelist.lto_priv.0(,%edx,4), %edx
	movl	%ebx, %ecx
	sall	$4, %ecx
	leal	12(%edx,%ecx), %edx
	movl	(%edx), %ecx
	movb	$0, (%edx)
	movl	_numgroupfiles, %edx
	movl	__ZL9gfileoffs.lto_priv.0(,%edx,4), %edx
	movl	%eax, (%edx,%ebx,4)
	movl	_numgroupfiles, %edx
	addl	%ecx, %eax
	addl	$1, %ebx
	movl	__ZL9gnumfiles(,%edx,4), %ecx
	cmpl	%ebx, %ecx
	jg	L1045
L1046:
	movl	__ZL9gfileoffs.lto_priv.0(,%edx,4), %edx
	movl	%eax, (%edx,%ecx,4)
	movl	_numgroupfiles, %eax
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %edi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1047
L1104:
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	_strcpy
	movb	$0, (%ebx,%edi)
	movl	20(%esp), %eax
	movl	%ebx, __ZL9groupname.lto_priv.0(,%eax,4)
	movl	_numgroupfiles, %eax
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	448(%esp), %edi
	.cfi_restore 7
	leal	1(%eax), %edx
	movl	452(%esp), %ebp
	.cfi_restore 5
	movl	%edx, _numgroupfiles
L1010:
	movl	444(%esp), %esi
	addl	$456, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1041:
	.cfi_def_cfa_offset 460
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$__ZL11groupfilpos, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilgrp, (%esp)
	leal	48(%esp), %edx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$4, %ecx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	48(%esp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	L1048
	movl	$0, 188(%esp)
	xorl	%eax, %eax
	movl	_numgroupfiles, %ebx
	leal	134(%esp), %ebp
	movl	$0, 192(%esp)
	movl	$0, 196(%esp)
	movl	$0, 200(%esp)
L1049:
	movl	$0, 0(%ebp,%eax)
	movl	$0, 4(%ebp,%eax)
	movl	$0, 8(%ebp,%eax)
	movl	$0, 12(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1049
	movl	$__ZL11groupfilpos, 8(%esp)
	leal	60(%esp), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL11groupfilgrp, (%esp)
	leal	47(%esp), %edx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$1, %ecx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$31, %dl
	ja	L1048
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$32, %ecx
	movl	%edi, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	subb	47(%esp), %cl
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movb	%cl, 47(%esp)
	movzbl	%cl, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1048
	cmpl	$2, 48(%esp)
	je	L1109
L1052:
	movb	$0, 20(%esp)
	movl	%ebx, 24(%esp)
	movl	$3, %ebx
L1054:
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	leal	47(%esp), %edx
	movl	$1, %ecx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$70, %dl
	ja	L1048
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movzbl	47(%esp), %eax
	movl	$70, %ecx
	subl	%eax, %ecx
	movb	%cl, 47(%esp)
	cmpb	$70, %al
	je	L1053
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movzbl	%cl, %ecx
	movl	%edi, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	setne	%al
	orb	%al, 20(%esp)
L1053:
	subl	$1, %ebx
	jne	L1054
	movl	24(%esp), %ebx
	cmpb	$0, 20(%esp)
	jne	L1048
	movl	60(%esp), %eax
	movl	_numgroupfiles, %ebp
	movl	_g_sm_heap, %ecx
	movl	%eax, __ZL9gnumfiles(,%ebp,4)
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L1055
	movl	_numgroupfiles, %edi
	movl	%eax, __ZL9gfilelist.lto_priv.0(,%ebp,4)
	movl	_g_sm_heap, %ecx
	movl	__ZL9gnumfiles(,%edi,4), %eax
	leal	4(,%eax,4), %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L1110
	cmpl	$2, 48(%esp)
	movl	$267, %edx
	movl	%eax, __ZL9gfileoffs.lto_priv.0(,%edi,4)
	movl	$254, %eax
	cmove	%edx, %eax
	movl	60(%esp), %edx
	imull	$121, %edx, %ebp
	addl	%eax, %ebp
	testl	%edx, %edx
	jle	L1059
	movl	%esi, 20(%esp)
	.p2align 4
	.p2align 3
L1062:
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	leal	47(%esp), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %ecx
	cmpb	$12, %cl
	jbe	L1061
	movb	$12, 47(%esp)
	movl	$12, %ecx
L1061:
	movl	_numgroupfiles, %eax
	movl	%ebx, %esi
	sall	$4, %esi
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	addl	%esi, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	$1, %ecx
	movl	_numgroupfiles, %edx
	addl	__ZL9gfilelist.lto_priv.0(,%edx,4), %esi
	movl	$12, %edx
	movb	$0, (%esi,%eax)
	movzbl	47(%esp), %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	subl	%eax, %edx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilgrp, (%esp)
	movl	$4, %ecx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	leal	56(%esp), %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$104, %edx
	movl	__ZL9gfileoffs.lto_priv.0(,%eax,4), %eax
	movl	%ebp, (%eax,%ebx,4)
	movl	_numgroupfiles, %eax
	addl	$1, %ebx
	movl	$__ZL11groupfilpos, 8(%esp)
	addl	56(%esp), %ebp
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	cmpl	%ebx, 60(%esp)
	jg	L1062
	movl	20(%esp), %esi
L1059:
	movl	_numgroupfiles, %eax
	movl	__ZL9gnumfiles(,%eax,4), %edx
	movl	__ZL9gfileoffs.lto_priv.0(,%eax,4), %eax
	movl	%ebp, (%eax,%edx,4)
	movl	_numgroupfiles, %eax
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %edi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1104
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1107:
	cmpl	$1702259817, 68(%esp)
	jne	L1039
	xorl	%ebx, %ebx
	cmpl	$1851878770, 72(%esp)
	jne	L1039
	jmp	L1040
	.p2align 4,,10
	.p2align 3
L1105:
	.cfi_restore 5
	movl	%ebp, 452(%esp)
	leal	64(%esp), %edi
	.cfi_remember_state
	.cfi_offset 5, -8
	jmp	L1014
	.p2align 4,,10
	.p2align 3
L1106:
	.cfi_restore_state
	cmpb	$3, 66(%esp)
	jne	L1015
	cmpb	$4, 67(%esp)
	jne	L1015
	movl	$__ZL8groupfil.lto_priv.0, %ecx
	movl	$__ZL11groupfilgrp, %edx
	call	__Z15kclose_internaliPKhPi
	movl	$LC10, 4(%esp)
	movl	%ebx, (%esp)
	call	_fopen
	movl	%ebx, (%esp)
	movl	%eax, %edi
	movl	%eax, 20(%esp)
	call	_strlen
	testl	%edi, %edi
	je	L1111
	addl	$1, %eax
	movl	%eax, 56(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L1025
	movl	__ZL9kzhashpos.lto_priv.0, %edi
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	%ebx, 4(%esp)
	addl	%edi, %eax
	movl	%edi, 28(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	56(%esp), %eax
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	addl	%edi, %eax
	movl	%eax, __ZL9kzhashpos.lto_priv.0
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_fread
	movl	56(%esp), %eax
	cmpl	$67324752, %eax
	je	L1112
	cmpl	$1399743819, %eax
	je	L1113
L1025:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
L1017:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 456
	movl	$8, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	448(%esp), %edi
	.cfi_restore 7
	jmp	L1010
	.p2align 4,,10
	.p2align 3
L1109:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	leal	47(%esp), %edx
	movl	$1, %ecx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$11, %dl
	ja	L1048
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$12, %ecx
	movl	%edi, %edx
	movl	$__ZL8groupfil.lto_priv.0, 4(%esp)
	subb	47(%esp), %cl
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movb	%cl, 47(%esp)
	movzbl	%cl, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L1052
	.p2align 4
	.p2align 3
L1048:
	movl	_numgroupfiles, %eax
	movl	$__ZL8groupfil.lto_priv.0, %ecx
	movl	$__ZL11groupfilgrp, %edx
	call	__Z15kclose_internaliPKhPi
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	448(%esp), %edi
	.cfi_restore 7
	movl	452(%esp), %ebp
	.cfi_restore 5
L1011:
	movl	$-1, %eax
	jmp	L1010
	.p2align 4,,10
	.p2align 3
L1042:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1108:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1055:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1047:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1110:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L1100:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %eax
	ret
L1111:
	.cfi_def_cfa_offset 460
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$5, %eax
	movl	%eax, 56(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L1017
	movl	__ZL9kzhashpos.lto_priv.0, %esi
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	__ZL12kzdirnamhead.lto_priv.0, %edx
	movl	%edx, (%eax,%esi)
	leal	4(%eax,%esi), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%esi, __ZL12kzdirnamhead.lto_priv.0
	call	_strcpy
	addl	56(%esp), %esi
	movl	%esi, __ZL9kzhashpos.lto_priv.0
	jmp	L1017
L1113:
	movl	20(%esp), %eax
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	leal	134(%esp), %ebp
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	_fread
	cmpl	$1702259817, 134(%esp)
	jne	L1103
	cmpl	$1851878770, 138(%esp)
	jne	L1103
	movl	142(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%eax, 32(%esp)
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
L1033:
	movl	%eax, 56(%esp)
	cmpl	%eax, 32(%esp)
	jle	L1114
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$16, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_fread
	movl	%ebp, (%esp)
	movl	146(%esp), %esi
	movb	$0, 146(%esp)
	call	_strlen
	addl	$22, %eax
	movl	%eax, 60(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L1034
	movzbl	134(%esp), %edx
	movl	24(%esp), %ebx
	leal	135(%esp), %ecx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	L1036
L1037:
	leal	(%eax,%eax,2), %eax
	addl	$1, %ecx
	movl	%eax, 24(%esp)
	movzbl	_toupperlookup(%edx), %eax
	movzbl	-1(%ecx), %edx
	subl	24(%esp), %eax
	testb	%dl, %dl
	jne	L1037
	movl	%ebx, 24(%esp)
L1036:
	movzbl	%al, %ecx
	movl	__ZL9kzhashpos.lto_priv.0, %edx
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	__ZL9kzhashead.lto_priv.0(,%ecx,4), %ebx
	movl	%ecx, 40(%esp)
	movl	%edx, 36(%esp)
	movl	%ebx, (%eax,%edx)
	movl	__ZL10kzlastfnam.lto_priv.0, %ebx
	movl	%edi, 12(%eax,%edx)
	addl	%esi, %edi
	movl	%ebx, 4(%eax,%edx)
	movl	28(%esp), %ebx
	movl	%esi, 16(%eax,%edx)
	movl	%ebx, 8(%eax,%edx)
	movb	$0, 20(%eax,%edx)
	leal	21(%eax,%edx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	56(%esp), %eax
	movl	%edx, __ZL9kzhashead.lto_priv.0(,%ecx,4)
	movl	%edx, __ZL10kzlastfnam.lto_priv.0
	addl	60(%esp), %edx
	addl	$1, %eax
	movl	%edx, __ZL9kzhashpos.lto_priv.0
	jmp	L1033
L1112:
	.cfi_restore 5
	movl	20(%esp), %edi
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	xorl	%esi, %esi
	leal	134(%esp), %ebp
	movl	%edi, (%esp)
	call	*__imp___fileno
	movl	%eax, (%esp)
	call	_filelength
	movl	%esi, 8(%esp)
	subl	$22, %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_fseek
	movl	%edi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$22, 4(%esp)
	movl	%ebp, (%esp)
	call	_fread
	cmpl	$101010256, 134(%esp)
	je	L1115
	movl	20(%esp), %eax
	xorl	%edx, %edx
	xorl	%edi, %edi
	leal	60(%esp), %esi
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	jmp	L1024
L1116:
	movl	60(%esp), %eax
	cmpl	$33639248, %eax
	je	L1023
	cmpl	$67324752, %eax
	jne	L1103
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	addl	$1, %edi
	movl	$26, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_fread
	movzwl	158(%esp), %eax
	movzwl	156(%esp), %edx
	movl	$1, 8(%esp)
	addl	%edx, %eax
	addl	148(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
L1024:
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	_fread
	testl	%eax, %eax
	jne	L1116
L1103:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	452(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1017
L1023:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$-4, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
L1021:
	xorl	%eax, %eax
	movl	%eax, 56(%esp)
	testl	%edi, %edi
	je	L1102
L1031:
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$46, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_fread
	cmpl	$33639248, 134(%esp)
	jne	L1103
	movzwl	162(%esp), %eax
	movl	20(%esp), %esi
	movl	$1, 8(%esp)
	movl	%eax, 60(%esp)
	movl	%eax, 4(%esp)
	leal	180(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	call	_fread
	movl	60(%esp), %eax
	movb	$0, 180(%esp,%eax)
	leal	180(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	addl	$22, %eax
	movl	%eax, 60(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L1103
	movzbl	180(%esp), %edx
	leal	181(%esp), %ecx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	L1029
L1030:
	addl	$1, %ecx
	leal	(%eax,%eax,2), %esi
	movzbl	_toupperlookup(%edx), %eax
	movzbl	-1(%ecx), %edx
	subl	%esi, %eax
	testb	%dl, %dl
	jne	L1030
L1029:
	movzbl	%al, %esi
	movl	__ZL9kzhashpos.lto_priv.0, %edx
	movl	__ZL9kzhashbuf.lto_priv.0, %eax
	movl	__ZL9kzhashead.lto_priv.0(,%esi,4), %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, (%eax,%edx)
	movl	__ZL10kzlastfnam.lto_priv.0, %ecx
	movl	%ecx, 4(%eax,%edx)
	movl	28(%esp), %ecx
	movl	%ecx, 8(%eax,%edx)
	movl	176(%esp), %ecx
	movl	$0, 16(%eax,%edx)
	movl	%ecx, 12(%eax,%edx)
	leal	180(%esp), %ecx
	movb	$1, 20(%eax,%edx)
	leal	21(%eax,%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	24(%esp), %edx
	movzwl	164(%esp), %eax
	movl	%edx, __ZL9kzhashead.lto_priv.0(,%esi,4)
	movl	%edx, __ZL10kzlastfnam.lto_priv.0
	addl	60(%esp), %edx
	movl	%edx, __ZL9kzhashpos.lto_priv.0
	movzwl	166(%esp), %edx
	movl	$1, 8(%esp)
	addl	%edx, %eax
	movl	%eax, 60(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	56(%esp), %eax
	addl	$1, %eax
	movl	%eax, 56(%esp)
	cmpl	%edi, %eax
	jl	L1031
L1102:
	movl	452(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1025
L1115:
	.cfi_restore_state
	movl	150(%esp), %eax
	xorl	%ecx, %ecx
	movzwl	144(%esp), %edi
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
	jmp	L1021
L1034:
	movl	24(%esp), %ebx
	jmp	L1103
L1114:
	movl	24(%esp), %ebx
	movl	452(%esp), %ebp
	.cfi_restore 5
	jmp	L1025
	.cfi_endproc
LFE97:
	.p2align 4
	.def	__ZL8read_paliPi;	.scl	3;	.type	32;	.endef
__ZL8read_paliPi:
LFB104:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$2, %ecx
	movl	%edx, %edi
	movl	$-768, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	.p2align 4
	.p2align 3
L1118:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	13(%esp), %edx
	movl	$3, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	13(%esp), %eax
	movzbl	14(%esp), %edx
	sall	$18, %eax
	sall	$10, %edx
	addl	%edx, %eax
	movzbl	15(%esp), %edx
	leal	(%eax,%edx,4), %eax
	movl	%ebx, %edx
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, (%edi,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1118
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
LFE104:
	.p2align 4
	.globl	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
__Z20kfilelength_internaliPKhPiS1_.constprop.0:
LFB108:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpl	$255, %eax
	je	L1137
	cmpl	$254, %eax
	je	L1138
	movl	__ZL9gfileoffs.lto_priv.0(,%eax,4), %ecx
	movl	__ZL7filehan.lto_priv.0(,%edx,4), %edx
	movl	4(%ecx,%edx,4), %eax
	subl	(%ecx,%edx,4), %eax
L1121:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1138:
	.cfi_restore_state
	movl	__ZL9kzcurhand, %ecx
	movl	_kzfs, %eax
	cmpl	%ecx, %edx
	je	L1125
	testl	%eax, %eax
	je	L1126
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	_kzfs+24, %ebx
	testl	%ebx, %ebx
	jns	L1139
	movl	8(%esp), %ebx
	.cfi_restore 3
L1126:
	imull	$260, %edx, %eax
	movl	%edx, __ZL9kzcurhand
	movl	%edx, 4(%esp)
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	movl	4(%esp), %edx
	testl	%eax, %eax
	je	L1128
	movl	__ZL7filepos.lto_priv.0(,%edx,4), %edx
	xorl	%ecx, %ecx
	movl	_kzfs+20, %eax
	testl	%edx, %edx
	cmovs	%ecx, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	%edx, _kzfs+24
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1137:
	.cfi_restore_state
	movl	__ZL7filehan.lto_priv.0(,%edx,4), %eax
	movl	%eax, (%esp)
	call	_filelength
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1125:
	.cfi_restore_state
	testl	%eax, %eax
	jne	L1140
L1128:
	xorl	%eax, %eax
	jmp	L1121
	.p2align 4,,10
	.p2align 3
L1139:
	.cfi_offset 3, -8
	movl	%ebx, __ZL7filepos.lto_priv.0(,%ecx,4)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$0, _kzfs
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1140:
	movl	_kzfs+20, %eax
	jmp	L1121
	.cfi_endproc
LFE108:
	.p2align 4
	.globl	_ktell
	.def	_ktell;	.scl	2;	.type	32;	.endef
_ktell:
LFB109:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpl	$255, %eax
	je	L1160
	cmpl	$254, %eax
	je	L1161
	movl	__ZL8groupfil.lto_priv.0(,%eax,4), %eax
	cmpl	$-1, %eax
	je	L1141
	movl	__ZL7filepos.lto_priv.0(,%edx,4), %eax
L1141:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1161:
	.cfi_restore_state
	movl	__ZL9kzcurhand, %ecx
	movl	_kzfs, %eax
	cmpl	%ecx, %edx
	je	L1145
	testl	%eax, %eax
	je	L1146
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -8
	movl	_kzfs+24, %ebx
	testl	%ebx, %ebx
	jns	L1162
	movl	16(%esp), %ebx
	.cfi_restore 3
L1146:
	imull	$260, %edx, %eax
	movl	%edx, __ZL9kzcurhand
	movl	%edx, 12(%esp)
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L1148
	movl	__ZL7filepos.lto_priv.0(,%edx,4), %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	_kzfs+20, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, _kzfs+24
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1160:
	.cfi_restore_state
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	__ZL7filehan.lto_priv.0(,%edx,4), %eax
	movl	%eax, (%esp)
	call	_lseek
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1145:
	.cfi_restore_state
	testl	%eax, %eax
	je	L1148
	movl	_kzfs+24, %eax
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1162:
	.cfi_offset 3, -8
	movl	%ebx, __ZL7filepos.lto_priv.0(,%ecx,4)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_fclose
	movl	12(%esp), %edx
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	$0, _kzfs
	jmp	L1146
L1148:
	movl	$-1, %eax
	jmp	L1141
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	_kclose
	.def	_kclose;	.scl	2;	.type	32;	.endef
_kclose:
LFB112:
	.cfi_startproc
	testl	%eax, %eax
	js	L1172
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpb	$-1, %al
	je	L1175
	cmpb	$-2, %al
	je	L1176
	movl	$-1, __ZL7filehan.lto_priv.0(,%edx,4)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1172:
	ret
	.p2align 4,,10
	.p2align 3
L1176:
	.cfi_def_cfa_offset 12
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L1167
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	$0, _kzfs
L1167:
	movl	$-1, __ZL9kzcurhand
	movl	$-1, __ZL7filehan.lto_priv.0(,%edx,4)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1175:
	.cfi_restore_state
	movl	__ZL7filehan.lto_priv.0(,%edx,4), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_close
	movl	4(%esp), %edx
	movl	$-1, __ZL7filehan.lto_priv.0(,%edx,4)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE112:
	.section .rdata,"dr"
	.align 4
LC35:
	.ascii "Unable to load %s: bad version.\0"
	.align 4
LC36:
	.ascii "Unable to load %s: tile range is reversed, negative, or exceeds MAXTILES: file likely corrupt.\0"
	.text
	.p2align 4
	.globl	_artReadHeader
	.def	_artReadHeader;	.scl	2;	.type	32;	.endef
_artReadHeader:
LFB113:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	movl	$4, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	28(%esp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	28(%esp), %eax
	cmpl	$1279874370, %eax
	je	L1187
L1178:
	cmpl	$1, %eax
	jne	L1188
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	24(%esp), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%esi, %edx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	leal	4(%esi), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	4(%esi), %eax
	movl	(%esi), %edx
	cmpl	$30463, %eax
	seta	%cl
	cmpl	$30463, %edx
	seta	23(%esp)
	orb	23(%esp), %cl
	jne	L1185
	cmpl	%edx, %eax
	jl	L1185
	subl	%edx, %eax
	addl	$1, %eax
	movl	%eax, 8(%esi)
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L1188:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1189
L1180:
	movl	%ebx, %eax
	call	_kclose
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax
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
L1187:
	.cfi_restore_state
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	leal	28(%esp), %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1414676804, 28(%esp)
	jne	L1179
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	leal	28(%esp), %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	28(%esp), %eax
	jmp	L1178
	.p2align 4,,10
	.p2align 3
L1179:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1180
	movl	%edi, 16(%esp)
	movl	$LC35, 12(%esp)
	movl	$316, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1189:
	movl	%edi, 16(%esp)
	movl	$LC35, 12(%esp)
	movl	$324, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1185:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1180
	movl	%edi, 16(%esp)
	movl	$LC36, 12(%esp)
	movl	$337, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1180
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	_artClearMapArt.part.0
	.def	_artClearMapArt.part.0;	.scl	2;	.type	32;	.endef
_artClearMapArt.part.0:
LFB114:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%eax, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 20
L1191:
	movl	$0, __ZL14mapartfilename(%eax)
	addl	$16, %eax
	movl	$0, __ZL14mapartfilename-12(%eax)
	movl	$0, __ZL14mapartfilename-8(%eax)
	movl	$0, __ZL14mapartfilename-4(%eax)
	cmpl	$256, %eax
	jb	L1191
	movl	$0, __ZL13mapartfnXXofs
	cmpl	$199, __ZL9artfilnum.lto_priv.0
	jg	L1222
L1193:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1195:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1194
	movb	$1, _walock(%eax)
	movl	$0, _waloff(,%eax,4)
L1194:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1195
	movl	__ZL17g_bakTileFileOffs, %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1197:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1196
	movl	(%ecx,%eax,4), %edx
	movl	%edx, __ZL12tilefileoffs(,%eax,4)
L1196:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1197
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL12g_bakTileSiz, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL17g_bakTileFileOffs
	.p2align 5
	.p2align 4
	.p2align 3
L1199:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1198
	movl	(%ecx,%eax,4), %edx
	movl	%edx, _tilesiz(,%eax,4)
L1198:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1199
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL11g_bakPicAnm, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL12g_bakTileSiz
	.p2align 6
	.p2align 4
	.p2align 3
L1201:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1200
	movl	(%ecx,%edx), %ebx
	movl	%ebx, _picanm(%edx)
	movzbl	4(%ecx,%edx), %ebx
	movb	%bl, _picanm+4(%edx)
L1200:
	addl	$1, %eax
	addl	$5, %edx
	cmpl	$30720, %eax
	jne	L1201
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL12g_bakRottile, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL11g_bakPicAnm
	.p2align 5
	.p2align 4
	.p2align 3
L1203:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1202
	movl	(%ecx,%eax,4), %edx
	movl	%edx, _rottile(,%eax,4)
L1202:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1203
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL13g_bakFakeTile, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL12g_bakRottile
	movl	%ebx, 4(%esp)
	movl	$3840, 8(%esp)
	movl	$_faketile, (%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL17g_bakFakeTileData, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL13g_bakFakeTile
	.p2align 4
	.p2align 3
L1207:
	cmpb	$-57, _tilefilenum(%ebx)
	jbe	L1205
	movl	_faketiledata(,%ebx,4), %eax
	cmpl	(%edx,%ebx,4), %eax
	je	L1205
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL17g_bakFakeTileData, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	(%edx,%ebx,4), %eax
	movl	%eax, _faketiledata(,%ebx,4)
L1205:
	addl	$1, %ebx
	cmpl	$30464, %ebx
	jne	L1207
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %ecx
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL17g_bakFakeTileData
	.p2align 5
	.p2align 4
	.p2align 3
L1209:
	cmpb	$-57, _tilefilenum(%eax)
	jbe	L1208
	movzbl	(%ecx,%eax), %edx
	movb	%dl, _tilefilenum(%eax)
L1208:
	addl	$1, %eax
	cmpl	$30720, %eax
	jne	L1209
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, __ZL16g_bakTileFileNum.lto_priv.0
	.p2align 4
	.p2align 3
L1210:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L1210
	movl	$1, %eax
	call	__Z19gltexinvalidatetypei
	cmpl	$4, _rendmode
	je	L1223
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1222:
	.cfi_restore_state
	movl	__ZL6artfil.lto_priv.0, %eax
	call	_kclose
	movl	$-1, __ZL6artfil.lto_priv.0
	movl	$-1, __ZL9artfilnum.lto_priv.0
	movl	$0, __ZL9artfilplc.lto_priv.0
	jmp	L1193
L1223:
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_polymer_texinvalidate
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC37:
	.ascii "./\0"
LC38:
	.ascii "..\0"
LC39:
	.ascii "%s/%s\0"
	.text
	.p2align 4
	.globl	_klistpath
	.def	_klistpath;	.scl	2;	.type	32;	.endef
_klistpath:
LFB124:
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
	subl	$344, %esp
	movl	%edx, -320(%ebp)
	movl	%ecx, -328(%ebp)
	movl	$0, -312(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -316(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1225
	movl	%ebx, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	xorl	%edx, %edx
	jmp	L1226
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1227:
	addl	$1, %edx
L1226:
	movzbl	(%esi,%edx), %ecx
	cmpb	$46, %cl
	je	L1227
	movzbl	%cl, %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L1227
	movb	%cl, (%esi)
	xorl	%eax, %eax
	addl	%esi, %edx
	testb	%cl, %cl
	je	L1231
	.p2align 4
	.p2align 4
	.p2align 3
L1228:
	addl	$1, %eax
	movzbl	(%edx,%eax), %ecx
	movb	%cl, (%esi,%eax)
	testb	%cl, %cl
	jne	L1228
	movzbl	-1(%esi,%eax), %edx
	cmpb	$47, _toupperlookup(%edx)
	jne	L1414
	.p2align 5
	.p2align 4
	.p2align 3
L1232:
	subl	$1, %eax
	je	L1231
	movzbl	-1(%esi,%eax), %edx
	cmpb	$47, _toupperlookup(%edx)
	je	L1232
L1414:
	addl	%esi, %eax
	movb	$0, (%eax)
	cmpb	$0, (%esi)
	je	L1233
L1417:
	movl	-328(%ebp), %eax
	testb	$2, %al
	jne	L1234
	movl	_pathsearchmode, %edi
	testb	$1, %ah
	jne	L1415
	testl	%edi, %edi
	movl	$LC37, %eax
	cmove	%eax, %ebx
L1238:
	leal	-272(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, -316(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	$1, -336(%ebp)
	movl	$0, -332(%ebp)
	testl	%edi, %edi
	je	L1263
L1244:
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	32(%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1412
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_opendir
	movl	%eax, (%ebx)
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1247
	movl	-316(%ebp), %eax
	leal	28(%ebx), %ecx
	movl	$0, 24(%ebx)
	movl	%ecx, -324(%ebp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_strcpy
	movl	%esi, -340(%ebp)
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	je	L1248
L1416:
	addl	$1, 24(%ebx)
	leal	8(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, 4(%ebx)
	movw	%ax, 20(%ebx)
	movl	%eax, %esi
	movl	-324(%ebp), %eax
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	%eax, (%esp)
	call	_strlen
	movzwl	%si, %edx
	leal	2(%edx,%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1412
	movl	4(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-324(%ebp), %eax
	movl	$LC39, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	leal	-308(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L1257
	movzwl	-302(%ebp), %eax
	movl	%eax, 8(%ebx)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%ebx)
	movl	-280(%ebp), %eax
	movl	%eax, 16(%ebx)
L1257:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	4(%ebx), %edi
	subl	$4, %esp
	cmpb	$46, (%edi)
	je	L1251
L1256:
	testb	$64, 9(%ebx)
	jne	L1252
	movl	-320(%ebp), %edx
	movl	%edi, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1252
	movl	-336(%ebp), %esi
	leal	-312(%ebp), %eax
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%esi, (%esp)
	call	_klistaddentry.isra.0
L1252:
	movl	(%ebx), %edi
L1422:
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	jne	L1416
L1248:
	movl	(%ebx), %eax
	movl	-340(%ebp), %esi
	movl	$-1, 24(%ebx)
	movl	%eax, (%esp)
	call	_closedir
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1258:
	movl	_pathsearchmode, %ecx
	testl	%ecx, %ecx
	jne	L1237
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	L1260
	movl	(%eax), %eax
	addl	$1, -336(%ebp)
	movl	%eax, -332(%ebp)
L1261:
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	L1236
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
L1263:
	movl	%esi, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	cmpb	$0, (%esi)
	je	L1244
	movl	-316(%ebp), %edi
	movl	$47, %ebx
	movl	%edi, (%esp)
	call	_strlen
	movw	%bx, (%edi,%eax)
	jmp	L1244
	.p2align 4,,10
	.p2align 3
L1231:
	movl	%esi, %eax
	movb	$0, (%eax)
	cmpb	$0, (%esi)
	jne	L1417
L1233:
	movl	-328(%ebp), %ecx
	movl	_pathsearchmode, %edi
	testb	$1, %ch
	jne	L1242
	testl	%edi, %edi
	movl	$LC37, %eax
	cmove	%eax, %ebx
	cmpl	$1, %ecx
	je	L1238
L1241:
	leal	-272(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, -316(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	$0, -332(%ebp)
	movl	$1, -336(%ebp)
	testl	%edi, %edi
	je	L1281
L1264:
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	32(%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1412
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_opendir
	movl	%eax, (%ebx)
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1410
	movl	-316(%ebp), %ecx
	leal	28(%ebx), %eax
	movl	$0, 24(%ebx)
	movl	%eax, -324(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	%esi, -340(%ebp)
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	je	L1418
L1273:
	addl	$1, 24(%ebx)
	leal	8(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, 4(%ebx)
	movw	%ax, 20(%ebx)
	movl	%eax, %esi
	movl	-324(%ebp), %eax
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	%eax, (%esp)
	call	_strlen
	movzwl	%si, %edx
	leal	2(%edx,%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1412
	movl	4(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	-324(%ebp), %eax
	movl	$LC39, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	leal	-308(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L1275
	movzwl	-302(%ebp), %eax
	movl	%eax, 8(%ebx)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%ebx)
	movl	-280(%ebp), %eax
	movl	%eax, 16(%ebx)
L1275:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	4(%ebx), %edi
	subl	$4, %esp
	cmpb	$46, (%edi)
	je	L1419
L1271:
	testb	$64, 9(%ebx)
	je	L1270
	movl	-320(%ebp), %edx
	movl	%edi, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1270
	movl	-336(%ebp), %esi
	leal	-312(%ebp), %eax
	movl	$2, %ecx
	movl	%edi, %edx
	movl	%esi, (%esp)
	call	_klistaddentry.isra.0
L1270:
	movl	(%ebx), %edi
L1421:
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	jne	L1273
L1418:
	movl	(%ebx), %eax
	movl	-340(%ebp), %esi
	movl	$-1, 24(%ebx)
	movl	%eax, (%esp)
	call	_closedir
L1410:
L1268:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_pathsearchmode, %ebx
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L1240
	movl	-332(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1420
	movl	-332(%ebp), %eax
	addl	$1, -336(%ebp)
	movl	(%eax), %eax
	movl	%eax, -332(%ebp)
L1279:
	movl	-332(%ebp), %eax
	testl	%eax, %eax
	je	L1236
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
L1281:
	movl	%esi, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	cmpb	$0, (%esi)
	je	L1264
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, (%edi,%eax)
	jmp	L1264
	.p2align 4,,10
	.p2align 3
L1419:
	movzbl	1(%edi), %eax
	testb	%al, %al
	je	L1270
	cmpb	$46, %al
	jne	L1271
	cmpb	$0, 2(%edi)
	jne	L1271
	movl	(%ebx), %edi
	jmp	L1421
	.p2align 4,,10
	.p2align 3
L1251:
	movzbl	1(%edi), %eax
	testb	%al, %al
	je	L1252
	cmpb	$46, %al
	jne	L1256
	cmpb	$0, 2(%edi)
	jne	L1256
	movl	(%ebx), %edi
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1412:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1242:
	testl	%edi, %edi
	je	L1411
L1282:
	testb	$4, -328(%ebp)
	jne	L1240
L1237:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-312(%ebp), %eax
	subl	$4, %esp
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
L1415:
	.cfi_restore_state
	testl	%edi, %edi
	jne	L1237
L1411:
	leal	-272(%ebp), %eax
	movl	%eax, -316(%ebp)
L1236:
	movl	%esi, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	cmpb	$0, (%esi)
	jne	L1423
L1283:
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strcat
	movl	%edi, %eax
	call	_kzfindfilestart
	.p2align 4
	.p2align 3
L1284:
	movl	%edi, %eax
	call	_kzfindfile
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1424
	cmpb	$124, -272(%ebp)
	jne	L1284
	movzbl	-271(%ebp), %eax
	movb	%al, -324(%ebp)
	movb	%al, -272(%ebp)
	testb	%al, %al
	je	L1286
	movl	%ecx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1287:
	movl	%eax, %ebx
	addl	$1, %eax
	movzbl	(%edi,%eax), %edx
	movb	%dl, -273(%ebp,%eax)
	testb	%dl, %dl
	jne	L1287
	movzbl	-273(%ebp,%ebx), %edx
	leal	-1(%ebx), %eax
	cmpb	$47, _toupperlookup(%edx)
	je	L1312
L1288:
	xorl	%eax, %eax
L1291:
	movzbl	(%esi,%eax), %edx
	testb	%dl, %dl
	je	L1290
	movzbl	-324(%ebp), %ebx
	movzbl	_toupperlookup(%ebx), %ebx
	cmpb	%bl, _toupperlookup(%edx)
	je	L1425
L1290:
	cmpb	$0, (%esi)
	je	L1294
	cmpb	$0, (%esi,%eax)
	jne	L1284
	movzbl	-324(%ebp), %edx
	cmpb	$47, _toupperlookup(%edx)
	jne	L1284
L1294:
	testl	%eax, %eax
	je	L1289
L1314:
	addl	$1, %eax
L1289:
	movzbl	-272(%ebp,%eax), %edx
	movb	%dl, -272(%ebp)
	testb	%dl, %dl
	je	L1295
	leal	-271(%ebp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1296:
	cmpb	$47, _toupperlookup(%edx)
	je	L1284
	movzbl	(%ebx,%eax), %edx
	addl	$1, %ebx
	movb	%dl, -1(%ebx)
	testb	%dl, %dl
	jne	L1296
L1295:
	movzbl	_toupperlookup, %eax
	cmpb	$47, %al
	je	L1284
	movl	-328(%ebp), %eax
	testb	$2, %al
	jne	L1426
	cmpl	$1, %ecx
	je	L1299
	testb	$1, -328(%ebp)
	jne	L1284
L1299:
	movl	$2147483646, (%esp)
	leal	-312(%ebp), %eax
	movl	%edi, %edx
	call	_klistaddentry.isra.0
	jmp	L1284
L1286:
	xorl	%eax, %eax
	cmpb	$47, _toupperlookup
	jne	L1284
L1312:
	movb	$0, -272(%ebp,%eax)
	movzbl	-272(%ebp), %eax
	movb	%al, -324(%ebp)
	testb	%al, %al
	je	L1427
	movl	$2, %ecx
	jmp	L1288
	.p2align 4,,10
	.p2align 3
L1424:
	movl	_pathsearchmode, %edi
	testl	%edi, %edi
	jne	L1282
	cmpb	$0, (%esi)
	jne	L1237
	testb	$1, -328(%ebp)
	je	L1237
	movl	-316(%ebp), %ebx
	movb	$0, -260(%ebp)
	movl	%esi, -316(%ebp)
	.p2align 4
	.p2align 3
L1305:
	cmpl	$-1, __ZL8groupfil.lto_priv.0(,%edi,4)
	je	L1302
	movl	__ZL9gnumfiles(,%edi,4), %esi
	subl	$1, %esi
	js	L1302
	.p2align 4
	.p2align 3
L1304:
	movl	%esi, %eax
	sall	$4, %eax
	addl	__ZL9gfilelist.lto_priv.0(,%edi,4), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	8(%eax), %eax
	movl	-320(%ebp), %edx
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1303
	movl	$2147483647, (%esp)
	movl	$1, %ecx
	movl	%ebx, %edx
	leal	-312(%ebp), %eax
	call	_klistaddentry.isra.0
L1303:
	subl	$1, %esi
	jnb	L1304
L1302:
	addl	$1, %edi
	cmpl	$8, %edi
	jne	L1305
	movl	-316(%ebp), %esi
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1234:
	movl	$2, %ecx
	movl	$1, (%esp)
	movl	$LC38, %edx
	leal	-312(%ebp), %eax
	call	_klistaddentry.isra.0
	movl	_pathsearchmode, %edi
	testb	$1, -327(%ebp)
	je	L1239
	testl	%edi, %edi
	je	L1411
L1240:
	call	*__imp__GetLogicalDrives@0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1237
	movl	$27, %edx
	xorl	%ecx, %ecx
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1307:
	movl	%ebx, %edi
	andl	%eax, %edi
	cmpl	$1, %edi
	sbbl	$-1, %ecx
	addl	%eax, %eax
	subl	$1, %edx
	jne	L1307
	leal	1(%ecx,%ecx,2), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	$1, %edx
	movl	%eax, %ecx
	subl	$4, %esp
	movl	%eax, -316(%ebp)
	movl	$65, %eax
	testl	%ecx, %ecx
	je	L1412
	.p2align 5
	.p2align 4
	.p2align 3
L1308:
	testl	%edx, %ebx
	je	L1309
	movl	$58, %edi
	movb	%al, (%ecx)
	addl	$3, %ecx
	movw	%di, -2(%ecx)
L1309:
	addl	$1, %eax
	addl	%edx, %edx
	cmpb	$92, %al
	jne	L1308
	movl	-316(%ebp), %eax
	movb	$0, (%ecx)
	cmpb	$0, (%eax)
	je	L1310
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L1311:
	movl	$0, (%esp)
	movl	%ebx, %edx
	movl	$4, %ecx
	leal	-312(%ebp), %eax
	call	_klistaddentry.isra.0
	movl	%ebx, (%esp)
	call	_strlen
	leal	1(%ebx,%eax), %ebx
	cmpb	$0, (%ebx)
	jne	L1311
L1310:
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1237
L1260:
	movl	$2, -336(%ebp)
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	movl	%eax, -332(%ebp)
	jmp	L1261
L1420:
	movl	$2, -336(%ebp)
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	movl	%eax, -332(%ebp)
	jmp	L1279
L1225:
	movl	-316(%ebp), %eax
	call	__Z13handle_memerri
L1425:
	addl	$1, %eax
	movzbl	(%edi,%eax), %ebx
	movb	%bl, -324(%ebp)
	testb	%bl, %bl
	jne	L1291
	cmpb	$0, (%esi,%eax)
	jne	L1284
	cmpb	$47, _toupperlookup
	jne	L1284
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1239:
	testl	%edi, %edi
	movl	$LC37, %eax
	cmove	%eax, %ebx
	jmp	L1241
L1423:
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, (%edi,%eax)
	jmp	L1283
L1426:
	cmpl	$2, %ecx
	jne	L1284
	testb	$1, %al
	jne	L1284
	jmp	L1299
L1247:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1258
L1427:
	cmpb	$0, (%esi)
	jne	L1284
	cmpb	$47, _toupperlookup
	jne	L1284
	movl	$2, %ecx
	xorl	%eax, %eax
	jmp	L1289
	.cfi_endproc
LFE124:
	.section .rdata,"dr"
	.align 4
LC40:
	.ascii "TOO MANY FILES OPEN IN FILE GROUPING SYSTEM!\0"
	.text
	.p2align 4
	.globl	_kopen4load.part.0
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
_kopen4load.part.0:
LFB130:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	$63, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	jmp	L1430
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1434:
	subl	$1, %eax
	jb	L1443
L1430:
	cmpl	$-1, __ZL7filehan.lto_priv.0(,%eax,4)
	jne	L1434
	movl	%eax, 4(%esp)
	movzbl	%dl, %ecx
	movl	%ebx, %eax
	leal	20(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 16(%esp)
	movl	$__ZL7filehan.lto_priv.0, 12(%esp)
	movl	$__ZL7filegrp.lto_priv.0, 8(%esp)
	movl	$1, (%esp)
	movl	$0, 20(%esp)
	call	__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1443:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1444
L1431:
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1432
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1432
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1433
	call	_mi_free
L1433:
	movl	%ebx, %eax
	call	_mi_free
L1432:
	movl	$0, (%esp)
	call	_exit
L1444:
	movl	$LC40, 12(%esp)
	movl	$857, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1431
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	_kpzbufload
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
_kpzbufload:
LFB137:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 16(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -12
	je	L1448
	xorl	%edx, %edx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1459
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebx
	movl	_kpzbuf, %eax
	cmpl	_kpzbufsiz, %ebx
	jg	L1460
L1449:
	movb	$0, (%eax,%ebx)
	movl	_kpzbuf, %edx
	movl	%ebx, %ecx
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
L1452:
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, %ecx
	movl	$__ZL7filegrp.lto_priv.0, %edx
	call	__Z15kclose_internaliPKhPi
	movl	%ebx, %eax
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1460:
	.cfi_restore_state
	leal	1(%ebx), %edx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	jne	L1454
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	L1450
L1454:
	movl	%eax, _kpzbuf
	movl	%ebx, _kpzbufsiz
	testl	%eax, %eax
	jne	L1449
	xorl	%ebx, %ebx
	jmp	L1452
	.p2align 4,,10
	.p2align 3
L1459:
	movl	20(%esp), %esi
	.cfi_restore 6
L1448:
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1450:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE137:
	.p2align 4
	.def	_kopen4loadfrommod.constprop.0;	.scl	3;	.type	32;	.endef
_kopen4loadfrommod.constprop.0:
LFB140:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	cmpb	$47, _g_modDir
	jne	L1462
	cmpb	$0, _g_modDir+1
	je	L1463
L1462:
	movl	%ebx, 16(%esp)
	movl	$_g_modDir, 12(%esp)
	movl	$LC39, 8(%esp)
	movl	$256, 4(%esp)
	movl	$__ZZ17kopen4loadfrommodE14staticFileName, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	$__ZZ17kopen4loadfrommodE14staticFileName, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1463
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1463:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	xorl	%edx, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_kopen4load.part.0
	.cfi_endproc
LFE140:
	.section .rdata,"dr"
LC41:
	.ascii "Failed opening .art file %s!\0"
	.text
	.p2align 4
	.globl	_tileLoadData
	.def	_tileLoadData;	.scl	2;	.type	32;	.endef
_tileLoadData:
LFB143:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movswl	_rottile+2(,%ebp,4), %edi
	cmpl	$-1, %edi
	je	L1469
	movl	_waloff(,%edi,4), %edx
	testl	%edx, %edx
	je	L1500
L1470:
	movl	_waloff(,%ebp,4), %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jne	L1501
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1469:
	.cfi_restore_state
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%ebp, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movl	%esi, 40(%esp)
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %eax
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movzbl	_faketile(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	je	L1502
	movzbl	_tilefilenum(%ebp), %edi
	cmpl	%edi, __ZL9artfilnum.lto_priv.0
	je	L1478
	movl	__ZL6artfil.lto_priv.0, %eax
	cmpl	$-1, %eax
	jne	L1503
L1479:
	movl	%edi, %eax
	call	__ZL21artGetIndexedFileNamei
	movl	%eax, 20(%esp)
	call	_kopen4loadfrommod.constprop.0
	movl	%eax, __ZL6artfil.lto_priv.0
	cmpl	$-1, %eax
	je	L1504
	movl	%edi, __ZL9artfilnum.lto_priv.0
	movl	$0, __ZL9artfilplc.lto_priv.0
	call	__Z16timerUpdateClockv
L1478:
	movl	__ZL12tilefileoffs(,%ebp,4), %edx
	cmpl	__ZL9artfilplc.lto_priv.0, %edx
	je	L1483
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	__ZL6artfil.lto_priv.0, %eax
	xorl	%ecx, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	call	__Z16timerUpdateClockv
L1483:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	__ZL6artfil.lto_priv.0, %eax
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	call	__Z16timerUpdateClockv
	addl	__ZL12tilefileoffs(,%ebp,4), %ebx
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	movl	%ebx, __ZL9artfilplc.lto_priv.0
	movl	36(%esp), %ebx
	.cfi_restore 3
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1500:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	_tileLoad
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	jne	L1470
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1503:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_kclose
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1502:
	movl	_faketiledata(,%ebp,4), %eax
	testl	%eax, %eax
	je	L1477
	movl	_faketilesize(,%ebp,4), %ecx
	movl	%ebx, (%esp)
	movl	%esi, %edx
	call	_LZ4_decompress_safe
L1477:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z16timerUpdateClockv
	.p2align 4,,10
	.p2align 3
L1501:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movswl	_rottile+2(,%ebp,4), %esi
	movswl	_tilesiz(,%esi,4), %edx
	movzwl	_tilesiz+2(,%esi,4), %ecx
	movl	%edx, %edi
	testl	%edx, %edx
	jle	L1472
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	_waloff(,%esi,4), %eax
	movl	$0, 24(%esp)
	movl	%eax, 20(%esp)
	movl	%ebp, 32(%esp)
	.p2align 4
	.p2align 3
L1475:
	testw	%cx, %cx
	jle	L1473
	movl	24(%esp), %eax
	movl	28(%esp), %edi
	movswl	%cx, %ebx
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	%eax, %ebx
	xorl	%eax, %eax
	leal	-1(%edi,%ecx), %ebp
	movl	%edx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1474:
	movl	20(%esp), %ecx
	imull	%eax, %edi
	leal	(%eax,%ecx), %edx
	addl	$1, %eax
	movzbl	(%edx,%ebx), %ecx
	movb	%cl, 0(%ebp,%edi)
	movswl	_tilesiz+2(,%esi,4), %edx
	movswl	_tilesiz(,%esi,4), %edi
	movl	%edx, %ecx
	cmpl	%edx, %eax
	jl	L1474
	movswl	%di, %edx
L1473:
	addl	$1, 24(%esp)
	cmpl	24(%esp), %edx
	jg	L1475
	movl	32(%esp), %ebp
	movl	36(%esp), %ebx
	.cfi_restore 3
L1472:
	movw	%cx, _tilesiz(,%ebp,4)
	movl	%ebp, %eax
	movw	%di, _tilesiz+2(,%ebp,4)
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_tileUpdatePicSiz
L1504:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__ZN6loguru24current_verbosity_cutoffEv
	cmpl	$-2, %eax
	jge	L1505
L1481:
	call	_engineUnInit
	cmpl	$0, _g_sm_heap
	je	L1482
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1482
	call	__sm_allocator_destroy.part.0.lto_priv.2
L1482:
	movl	$1, (%esp)
	call	_exit
L1505:
	movl	20(%esp), %eax
	movl	$LC41, 12(%esp)
	movl	$727, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1481
	.cfi_endproc
LFE143:
	.p2align 4
	.globl	_tileLoad
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
_tileLoad:
LFB147:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	cmpl	$30719, %ebx
	ja	L1507
	movswl	_tilesiz(,%ebx,4), %edx
	movswl	_tilesiz+2(,%ebx,4), %ecx
	imull	%ecx, %edx
	testl	%edx, %edx
	jle	L1507
	movl	%esi, 12(%esp)
	movl	_waloff(,%ebx,4), %ecx
	.cfi_offset 6, -16
	movl	%eax, %esi
	testl	%ecx, %ecx
	je	L1530
L1510:
	movl	%ebx, %eax
	call	_tileLoadData
	cmpl	$2, _rendmode
	jle	L1511
	cmpl	$200, _qsetmode
	je	L1531
L1511:
	movl	_waloff(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1529
	cmpw	$0, _tilesiz(,%ebx,4)
	jle	L1529
	cmpw	$0, _tilesiz+2(,%ebx,4)
	movl	12(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	setg	%al
	movl	8(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1529:
	.cfi_restore_state
	movl	12(%esp), %esi
	.cfi_restore 6
L1507:
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1531:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%esi, %eax
	movl	%edi, 16(%esp)
	andl	$8191, %eax
	movl	%ebp, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	addl	$8, %eax
	movl	%eax, 4(%esp)
	movl	_texcache+12(,%eax,4), %eax
	testl	%eax, %eax
	je	L1512
	xorl	%esi, %esi
	movl	$513, %edx
L1515:
	movl	%edx, %ecx
	movl	%edx, %ebp
	sarl	$2, %ecx
	movl	%ecx, %edi
	jmp	L1514
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1513:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1532
L1514:
	movswl	32(%eax), %ecx
	cmpl	%ecx, %ebx
	jne	L1513
	cmpb	$0, 38(%eax)
	jne	L1513
	movzwl	34(%eax), %ecx
	movl	%edi, %edx
	xorl	%ecx, %edx
	andl	$1, %edx
	jne	L1513
	movl	%ecx, %edx
	orb	$-128, %dl
	andl	$16, %ecx
	movw	%dx, 34(%eax)
	je	L1513
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	jmp	L1513
	.p2align 4,,10
	.p2align 3
L1530:
	.cfi_restore 5
	.cfi_restore 7
	leal	_walock(%ebx), %ecx
	leal	_waloff(,%ebx,4), %eax
	movl	%edx, 4(%esp)
	movb	$-57, _walock(%ebx)
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	_waloff(,%ebx,4), %ecx
	movl	4(%esp), %edx
	jmp	L1510
	.p2align 4,,10
	.p2align 3
L1532:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%ebp, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_texcache_fetch
	cmpl	$1, %esi
	jne	L1517
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L1511
L1512:
	.cfi_restore_state
	movl	$513, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_texcache_fetch
	.p2align 4
	.p2align 3
L1517:
	movl	4(%esp), %eax
	movl	$516, %edx
	movl	$1, %esi
	movl	_texcache+12(,%eax,4), %eax
	testl	%eax, %eax
	jne	L1515
	movl	$516, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_texcache_fetch
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L1511
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	_voxvboalloc
	.def	_voxvboalloc;	.scl	2;	.type	32;	.endef
_voxvboalloc:
LFB150:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	leal	88(%eax), %eax
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 24
	leal	92(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	leal	16(%esp), %esi
	movl	$0, 16(%esp)
	movl	%esi, 4(%esp)
	movl	$34965, (%esp)
	call	*_glad_glGetIntegerv
	.cfi_def_cfa_offset 24
	movl	92(%ebx), %edx
	movl	$34963, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	36(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	40(%ebx), %eax
	movl	$34963, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 16
	movl	$34963, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	16(%esp), %edx
	call	__Z18buildgl_bindBufferjj
	movl	%esi, 4(%esp)
	movl	$0, 16(%esp)
	movl	$34964, (%esp)
	call	*_glad_glGetIntegerv
	.cfi_def_cfa_offset 24
	movl	88(%ebx), %edx
	movl	$34962, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	32(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	40(%ebx), %eax
	movl	$34962, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$4, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 16
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	16(%esp), %edx
	call	__Z18buildgl_bindBufferjj
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	_voxfree
	.def	_voxfree;	.scl	2;	.type	32;	.endef
_voxfree:
LFB151:
	.cfi_startproc
	testl	%eax, %eax
	je	L1542
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L1537
	leal	88(%ebx), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	leal	92(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 88(%ebx)
L1537:
	movl	44(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	32(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 44(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	36(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 32(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 36(%ebx)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 24(%ebx)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1542:
	ret
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	_tileDelete
	.def	_tileDelete;	.scl	2;	.type	32;	.endef
_tileDelete:
LFB153:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	call	__ZL14tileSoftDeletei
	movl	_faketiledata(,%eax,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movswl	_tiletovox(%esi,%esi), %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _faketiledata(,%esi,4)
	cmpl	$2047, %ebx
	ja	L1546
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1547
	call	_voxfree
	movl	$0, _voxmodels(,%ebx,4)
L1547:
	movl	__ZL12voxfilenames.lto_priv.0(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	leal	(%ebx,%ebx,4), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, __ZL12voxfilenames.lto_priv.0(,%ebx,4)
	movl	$16843009, __ZL7voxlock.lto_priv.0(%edx)
	movb	$1, __ZL7voxlock.lto_priv.0+4(%edx)
	movl	$0, _voxoff(,%edx,4)
	movl	$0, _voxoff+4(,%edx,4)
	movl	$0, _voxoff+8(,%edx,4)
	movl	$0, _voxoff+12(,%edx,4)
	movl	$0, _voxoff+16(,%edx,4)
	movl	$65536, _voxscale(,%ebx,4)
	movb	$0, _voxflags(%ebx)
L1546:
	movl	$-1, %edx
	movw	%dx, _tiletovox(%esi,%esi)
	cmpl	$30719, %esi
	ja	L1548
	movl	$255, %ebx
	.p2align 4
	.p2align 3
L1550:
	movl	_hicinitcounter, %eax
	testl	%eax, %eax
	je	L1549
	movl	%ebx, %edx
	movl	%esi, %eax
	call	_hicclearsubst.part.0.isra.0
L1549:
	subl	$1, %ebx
	jnb	L1550
L1548:
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_md_undefinetile.isra.0
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	_artPreloadFile
	.def	_artPreloadFile;	.scl	2;	.type	32;	.endef
_artPreloadFile:
LFB158:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	(%edx), %ebx
	movl	%eax, 20(%esp)
	cmpl	4(%edx), %ebx
	jg	L1564
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	$1, %ecx
	movl	%ebx, %ebp
	xorl	%edi, %edi
	movl	$0, 16(%esp)
	movl	%ebx, 12(%esp)
	jmp	L1563
	.p2align 4,,10
	.p2align 3
L1562:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	20(%esp), %eax
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	12(%esp), %eax
	movl	%edi, %ecx
	movl	%ebp, %edx
	call	_tileSetData
L1559:
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	cmpl	%eax, 4(%esi)
	jl	L1568
	movl	(%esi), %ebp
	subl	%ebp, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %ecx
L1563:
	movl	12(%esp), %eax
	movl	12(%esi), %edx
	subl	%ebp, %eax
	sarl	$3, %eax
	movzbl	(%edx,%eax), %ebx
	andl	%ecx, %ebx
	cmpb	%cl, %bl
	jne	L1559
	movl	12(%esp), %eax
	movswl	_tilesiz(,%eax,4), %ebp
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%eax, %ebp
	testl	%ebp, %ebp
	je	L1569
	cmpl	16(%esp), %ebp
	jle	L1562
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebp, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1570
	movl	%ebp, 16(%esp)
	jmp	L1562
	.p2align 4,,10
	.p2align 3
L1568:
	movl	36(%esp), %ebp
	.cfi_restore 5
L1557:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	12(%esi), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	$0, 12(%esi)
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1569:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %eax
	call	_tileDelete
	jmp	L1559
	.p2align 4,,10
	.p2align 3
L1564:
	.cfi_restore 5
	xorl	%edi, %edi
	jmp	L1557
	.p2align 4,,10
	.p2align 3
L1570:
	.cfi_offset 5, -8
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE158:
	.section .rdata,"dr"
LC42:
	.ascii "cache1d\0"
LC43:
	.ascii "dummytile\0"
	.align 4
LC44:
	.ascii "Per-map .art file could not be loaded %s: tile %d is locked by %s.\0"
LC45:
	.ascii "Per-map .art file %s loaded\0"
	.text
	.p2align 4
	.globl	__ZL18artReadIndexedFilei.lto_priv.0
	.def	__ZL18artReadIndexedFilei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18artReadIndexedFilei.lto_priv.0:
LFB160:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	call	__ZL21artGetIndexedFileNamei
	xorl	%edx, %edx
	movl	%eax, 36(%esp)
	movl	%eax, %esi
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1608
	leal	52(%esp), %ecx
	movl	%esi, %edx
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	_artReadHeader
	movl	%eax, 32(%esp)
	testl	%eax, %eax
	jne	L1622
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	cmpl	$199, %ebx
	jle	L1575
	movl	52(%esp), %esi
	movl	56(%esp), %ebp
	cmpl	%ebp, %esi
	jg	L1576
	movl	%ebx, 28(%esp)
	movl	%esi, %eax
	jmp	L1578
	.p2align 4,,10
	.p2align 3
L1624:
	cmpb	$-57, _walock(%eax)
	ja	L1577
	addl	$1, %eax
	cmpl	%ebp, %eax
	jg	L1623
L1578:
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	movzbl	_faketile(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	jne	L1624
L1577:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jl	L1579
	cmpb	$-57, _walock(%eax)
	movl	$LC43, %edx
	movl	$LC42, %ecx
	movl	%eax, 20(%esp)
	cmova	%ecx, %edx
	movl	36(%esp), %eax
	movl	$LC44, 12(%esp)
	movl	$538, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	$LC22, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1579:
	movl	%edi, %eax
	call	_kclose
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	$-3, 32(%esp)
L1571:
	movl	32(%esp), %eax
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1623:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ebx
L1576:
	movl	60(%esp), %ebp
	leal	_waloff(,%esi,4), %eax
	movl	$0, 4(%esp)
	addl	$_walock, %esi
	movl	%eax, (%esp)
	leal	0(,%ebp,4), %edx
	movl	%edx, 8(%esp)
	call	_memset
	movl	%ebp, 8(%esp)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	_memset
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artReadManifest
	cmpb	$-2, __ZL7filegrp.lto_priv.0(%edi)
	jne	L1625
	movl	52(%esp), %ebx
	cmpl	%ebx, 56(%esp)
	jl	L1610
	movl	%ebx, 28(%esp)
	movl	%ebx, %ecx
	movl	$1, %edx
	xorl	%ebp, %ebp
	movl	$0, 44(%esp)
	movl	%edi, 48(%esp)
	jmp	L1598
	.p2align 4,,10
	.p2align 3
L1629:
	movl	$-2139062143, %eax
	mull	%esi
	shrl	$7, %edx
	leal	16(%esi,%edx), %edx
	movl	%edx, %eax
L1591:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 40(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	movl	%eax, %edi
	movl	40(%esp), %edx
	je	L1592
	movl	%edx, (%esp)
	movl	%esi, %ecx
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_LZ4_compress_fast.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1626
	movl	28(%esp), %eax
	movl	%esi, _faketilesize(,%eax,4)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	testl	%eax, %eax
	jne	L1613
	testl	%esi, %esi
	jne	L1595
L1613:
	movl	28(%esp), %esi
	movl	%eax, _faketiledata(,%esi,4)
	movl	%esi, %ebx
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.11(%ebx), %edx
	orb	%dl, _faketile(%eax)
	movb	$-36, _tilefilenum(%esi)
L1587:
	addl	$1, 28(%esp)
	movl	28(%esp), %eax
	cmpl	56(%esp), %eax
	jg	L1620
	movl	52(%esp), %ecx
	subl	%ecx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.11(%eax), %edx
L1598:
	movl	28(%esp), %eax
	subl	%ecx, %eax
	movl	64(%esp), %ecx
	sarl	$3, %eax
	movzbl	(%ecx,%eax), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L1587
	movl	28(%esp), %eax
	movswl	_tilesiz(,%eax,4), %esi
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%eax, %esi
	testl	%esi, %esi
	je	L1627
	cmpl	44(%esp), %esi
	jg	L1628
L1590:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	48(%esp), %eax
	movl	%esi, %ecx
	movl	%ebp, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2113929216, %esi
	jbe	L1629
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1625:
	movl	%edi, %eax
	call	_ktell
	movl	56(%esp), %edx
	movl	64(%esp), %ebp
	movl	%eax, %esi
	movl	52(%esp), %eax
	cmpl	%edx, %eax
	jg	L1630
L1605:
	leal	1(%edx), %ecx
	movl	%ebx, 40(%esp)
	xorl	%edx, %edx
	movl	%ecx, 28(%esp)
	movl	$1, %ecx
	movl	%edi, 44(%esp)
	jmp	L1603
	.p2align 4,,10
	.p2align 3
L1631:
	addl	$1, %edx
	movl	%edx, %ecx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.11(%ecx), %ecx
L1603:
	movl	%edx, %edi
	sarl	$3, %edi
	movzbl	0(%ebp,%edi), %edi
	andl	%ecx, %edi
	movl	%edi, %ebx
	cmpb	%cl, %bl
	jne	L1601
	movswl	_tilesiz(,%eax,4), %ecx
	movswl	_tilesiz+2(,%eax,4), %edi
	movl	%esi, __ZL12tilefileoffs(,%eax,4)
	movzbl	40(%esp), %ebx
	imull	%edi, %ecx
	movb	%bl, _tilefilenum(%eax)
	addl	%ecx, %esi
L1601:
	addl	$1, %eax
	cmpl	28(%esp), %eax
	jne	L1631
	movl	_g_sm_heap, %ecx
	movl	40(%esp), %ebx
	movl	%ebp, (%esp)
	movl	44(%esp), %edi
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	cmpl	$199, %ebx
	jg	L1599
L1600:
	movl	%edi, %eax
	call	_kclose
	movl	32(%esp), %eax
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1622:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	call	_kclose
	movl	32(%esp), %eax
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artReadManifest
	cmpb	$-2, __ZL7filegrp.lto_priv.0(%edi)
	jne	L1632
	leal	52(%esp), %edx
	movl	%edi, %eax
	call	_artPreloadFile
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1620:
	movl	48(%esp), %edi
L1585:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
L1599:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1600
	movl	36(%esp), %eax
	movl	$LC45, 12(%esp)
	movl	$585, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC22, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1600
	.p2align 4,,10
	.p2align 3
L1628:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%esi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L1595
	movl	%esi, 44(%esp)
	jmp	L1590
	.p2align 4,,10
	.p2align 3
L1626:
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	jmp	L1587
	.p2align 4,,10
	.p2align 3
L1627:
	movl	28(%esp), %eax
	call	__ZL14tileSoftDeletei
	jmp	L1587
L1632:
	movl	%edi, %eax
	call	_ktell
	movl	56(%esp), %edx
	movl	64(%esp), %ebp
	movl	%eax, %esi
	movl	52(%esp), %eax
	cmpl	%eax, %edx
	jge	L1605
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	jmp	L1600
L1592:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1595:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1608:
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, 32(%esp)
	jmp	L1571
L1610:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	jmp	L1585
L1630:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	movl	$0, 64(%esp)
	jmp	L1599
	.cfi_endproc
LFE160:
	.p2align 4
	.globl	_artSetupMapArt.part.0
	.def	_artSetupMapArt.part.0;	.scl	2;	.type	32;	.endef
_artSetupMapArt.part.0:
LFB166:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, 4(%esp)
	movl	$__ZL14mapartfilename, (%esp)
	call	_strcpy
	movl	$46, 4(%esp)
	movl	$__ZL14mapartfilename, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L1666
	movl	$777541727, (%eax)
	movl	$7631457, 4(%eax)
L1635:
	movl	$__ZL14mapartfilename, (%esp)
	call	_strlen
	leal	-6(%eax), %edx
	movl	%edx, __ZL13mapartfnXXofs
	movl	$12336, %edx
	movw	%dx, __ZL14mapartfilename-6(%eax)
	movl	$__ZL14mapartfilename, %eax
	call	_kopen4loadfrommod.constprop.0
	cmpl	$-1, %eax
	je	L1667
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	call	_kclose
	movl	$30720, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1640
	movl	$30720, 8(%esp)
	movl	$_tilefilenum, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL16g_bakTileFileNum.lto_priv.0
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1642
	movl	$122880, 8(%esp)
	movl	$__ZL12tilefileoffs, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL17g_bakTileFileOffs
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1642
	movl	$122880, 8(%esp)
	movl	$_tilesiz, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL12g_bakTileSiz
	call	_memcpy
	movl	$153600, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1644
	movl	$153600, 8(%esp)
	movl	$_picanm, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL11g_bakPicAnm
	call	_memcpy
	movl	$3840, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1668
	movl	$3840, 8(%esp)
	movl	$_faketile, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL13g_bakFakeTile
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1642
	movl	$122880, 8(%esp)
	movl	$_faketiledata, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL17g_bakFakeTileData
	call	_memcpy
	movl	$122880, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1642
	movl	$122880, 8(%esp)
	movl	$200, %ebx
	movl	$_rottile, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL12g_bakRottile
	call	_memcpy
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1648:
	addl	$1, %ebx
	cmpl	$220, %ebx
	je	L1649
L1651:
	movl	%ebx, %eax
	call	__ZL18artReadIndexedFilei.lto_priv.0
	testl	%eax, %eax
	je	L1648
	cmpl	$200, %ebx
	je	L1653
	cmpl	$-1, %eax
	jne	L1653
L1649:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1652:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	_tileUpdatePicSiz
	cmpl	$30720, %ebx
	jne	L1652
	movl	$1, %eax
	call	__Z19gltexinvalidatetypei
	movl	12(%esp), %ebx
	.cfi_restore 3
	cmpl	$4, _rendmode
	je	L1669
L1633:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L1666:
	.cfi_restore_state
	movl	$__ZL14mapartfilename, (%esp)
	call	_strlen
	movl	$777541727, __ZL14mapartfilename(%eax)
	movl	$7631457, __ZL14mapartfilename+4(%eax)
	jmp	L1635
L1642:
	.cfi_offset 3, -8
	movl	$122880, %eax
	call	__Z13handle_memerri
L1667:
	.cfi_restore 3
	xorl	%eax, %eax
L1637:
	movl	$0, __ZL14mapartfilename(%eax)
	addl	$16, %eax
	movl	$0, __ZL14mapartfilename-12(%eax)
	movl	$0, __ZL14mapartfilename-8(%eax)
	movl	$0, __ZL14mapartfilename-4(%eax)
	cmpl	$256, %eax
	jb	L1637
	movl	$0, __ZL13mapartfnXXofs
	jmp	L1633
L1668:
	.cfi_offset 3, -8
	movl	$3840, %eax
	call	__Z13handle_memerri
L1653:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1649
	call	_artClearMapArt.part.0
	jmp	L1649
L1640:
	movl	$30720, %eax
	call	__Z13handle_memerri
L1669:
	.cfi_restore 3
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	jmp	_polymer_texinvalidate
L1644:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	$153600, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE166:
	.section .rdata,"dr"
LC47:
	.ascii ".vox\0"
LC49:
	.ascii ".kvx\0"
LC51:
	.ascii ".kv6\0"
LC55:
	.ascii "voxcache mystery error\0"
	.text
	.p2align 4
	.globl	_voxload
	.def	_voxload;	.scl	2;	.type	32;	.endef
_voxload:
LFB175:
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
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$1196, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -1152(%ebp)
	movl	%eax, (%esp)
	call	_strlen
	subl	$4, %eax
	js	L1671
	leal	(%edi,%eax), %ebx
	movl	$LC47, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2095
	movl	$LC49, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L2096
	movl	$LC51, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	movl	%eax, -1144(%ebp)
	testl	%eax, %eax
	jne	L1671
	movl	-1152(%ebp), %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -1108(%ebp)
	cmpl	$-1, %eax
	je	L1711
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-1064(%ebp), %edx
	movl	$4, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1819833931, -1064(%ebp)
	jne	L2097
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	movl	$__ZL6voxsiz, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1108(%ebp), %edi
	movl	%edi, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	leal	-1040(%ebp), %eax
	movl	$12, %ecx
	movl	%eax, -1148(%ebp)
	movl	%eax, %edx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	-1040(%ebp), %eax
	leal	-1060(%ebp), %edx
	movl	$4, %ecx
	movl	%eax, __ZL6voxpiv
	movl	-1036(%ebp), %eax
	movl	%eax, __ZL6voxpiv+4
	movl	-1032(%ebp), %eax
	movl	%eax, __ZL6voxpiv+8
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL6voxsiz, %ebx
	imull	__ZL6voxsiz+4, %ebx
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	movl	%eax, -1116(%ebp)
	testl	%eax, %eax
	je	L2069
	movl	__ZL6voxsiz, %eax
	movl	-1060(%ebp), %edx
	xorl	%ecx, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	sall	$2, %eax
	leal	32(%eax,%edx,8), %edx
	movl	%edi, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	xorl	%ecx, %ecx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$32, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	call	__ZL10alloc_vbitv
	movl	-1060(%ebp), %edx
	movl	$4096, %eax
	cmpl	$4096, %edx
	jle	L2098
L1717:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L1717
	subl	$1, %eax
L1718:
	movl	%eax, __ZL13vcolhashsizm1
	call	__ZL17alloc_vcolhasheadv
	movl	__ZL6voxsiz, %ebx
	testl	%ebx, %ebx
	jle	L1719
	movl	$0, -1100(%ebp)
	movl	__ZL6voxsiz+4, %ecx
L1725:
	testl	%ecx, %ecx
	jle	L1720
	movl	-1100(%ebp), %edi
	imull	__ZL5yzsiz, %edi
	movl	$0, -1092(%ebp)
	movl	__ZL6voxsiz+8, %edx
	.p2align 4
	.p2align 3
L1724:
	movl	-1100(%ebp), %eax
	movl	-1116(%ebp), %ebx
	imull	%ecx, %eax
	addl	-1092(%ebp), %eax
	movzwl	(%ebx,%eax,2), %eax
	movl	%eax, -1104(%ebp)
	testl	%eax, %eax
	je	L1721
	movl	%edx, -1096(%ebp)
	xorl	%esi, %esi
	movl	%edi, -1088(%ebp)
	jmp	L1723
	.p2align 4,,10
	.p2align 3
L1722:
	movl	%ecx, %edx
	movl	$1, %edi
	addl	$1, %esi
	sarl	$5, %edx
	sall	%cl, %edi
	movl	%ebx, %ecx
	orl	%edi, (%eax,%edx,4)
	movl	-1056(%ebp), %eax
	andl	$16777215, %eax
	movl	%eax, (%esp)
	movl	-1100(%ebp), %eax
	movl	-1092(%ebp), %edx
	call	__ZL6putvoxiiii
	leal	1(%ebx), %eax
	movl	%eax, -1096(%ebp)
	cmpl	%esi, -1104(%ebp)
	je	L2099
L1723:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$8, %ecx
	leal	-1056(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1108(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	-1088(%ebp), %eax
	movzwl	-1052(%ebp), %ebx
	leal	(%ebx,%eax), %ecx
	movl	__ZL4vbit, %eax
	testb	$16, -1050(%ebp)
	jne	L1722
	movl	-1096(%ebp), %edx
	addl	-1088(%ebp), %edx
	movl	%ecx, -1112(%ebp)
	movl	%eax, -1096(%ebp)
	call	__ZL10setzrange1Piii
	movl	-1112(%ebp), %ecx
	movl	-1096(%ebp), %eax
	jmp	L1722
	.p2align 4,,10
	.p2align 3
L2099:
	movl	-1088(%ebp), %edi
	movl	__ZL6voxsiz+8, %edx
	movl	__ZL6voxsiz+4, %ecx
L1721:
	addl	$1, -1092(%ebp)
	addl	%edx, %edi
	cmpl	-1092(%ebp), %ecx
	jg	L1724
L1720:
	addl	$1, -1100(%ebp)
	movl	-1100(%ebp), %eax
	cmpl	__ZL6voxsiz, %eax
	jl	L1725
L1719:
	movl	-1116(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1108(%ebp), %eax
	subl	$4, %esp
	call	_kclose
L1726:
	movl	-1152(%ebp), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, %esi
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_kclose
	movl	%edi, %edx
	movl	$-1, (%esp)
	movl	%ebx, %ecx
	movl	$255, 4(%esp)
	movl	-1148(%ebp), %edi
	movl	%edi, %eax
	call	_texcache_calcid.isra.0
	call	_texcache_enabled
	testl	%eax, %eax
	je	L1727
	movl	%edi, %edx
	movl	$_texcache+32812, %eax
	call	_hash_find
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1727
	movl	_texcache+40, %eax
	movl	(%eax,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1727
	movl	$0, -1056(%ebp)
	movl	$0, -1052(%ebp)
	movl	$0, -1048(%ebp)
	movl	$0, -1044(%ebp)
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1728
	movl	$0, 80(%eax)
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	xorl	%eax, %eax
L1729:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1729
	movl	_texcache+40, %eax
	movl	$16, %edx
	movl	(%eax,%ebx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, _texcache+32836
	leal	-1056(%ebp), %eax
	call	_texcache_readdata
	movl	_g_sm_heap, %ecx
	testl	%eax, %eax
	jne	L1731
	movl	-1044(%ebp), %esi
	testl	%esi, %esi
	jle	L1731
	movlps	-1052(%ebp), %xmm3
	movlps	%xmm3, 48(%edi)
	movl	-1056(%ebp), %ebx
	movlps	%xmm3, -1088(%ebp)
	movl	%ebx, 40(%edi)
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1096(%ebp)
	testl	%eax, %eax
	je	L1844
	leal	(%ebx,%ebx,4), %eax
	movlps	-1088(%ebp), %xmm5
	movl	-1044(%ebp), %edx
	sall	$4, %eax
	movl	%eax, %esi
	leal	(%ebx,%ebx,2), %eax
	movlps	%xmm5, -1080(%ebp)
	leal	0(,%eax,8), %ebx
	movl	-1088(%ebp), %eax
	movlps	%xmm5, -1072(%ebp)
	imull	-1076(%ebp), %eax
	movl	%ebx, -1092(%ebp)
	addl	%esi, %ebx
	movl	%ebx, -1104(%ebp)
	sall	$2, %eax
	addl	%eax, %ebx
	movl	%eax, -1088(%ebp)
	movl	-1096(%ebp), %eax
	movl	%ebx, -1100(%ebp)
	call	_texcache_readdata
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2100
	movl	-1100(%ebp), %eax
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	-1044(%ebp), %ecx
	movl	-1096(%ebp), %eax
	call	_LZ4_decompress_safe
	movl	%eax, -1100(%ebp)
	movl	-1096(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1100(%ebp), %edx
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	testl	%edx, %edx
	jle	L2101
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1844
	movl	%eax, 32(%edi)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-1092(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2102
	movl	-1092(%ebp), %ecx
	addl	%ebx, %esi
	movl	%eax, 36(%edi)
	movl	%esi, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	-1088(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1898
	movl	%eax, 44(%edi)
	movl	-1104(%ebp), %eax
	movl	-1088(%ebp), %esi
	movl	%edx, (%esp)
	addl	%ebx, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, __ZL4gvox
	jmp	L1744
L2095:
	movl	%edi, %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -1140(%ebp)
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1711
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	movl	$__ZL6voxsiz, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	xorps	%xmm0, %xmm0
	leal	-1040(%ebp), %eax
	movss	LC48, %xmm1
	cvtsi2ssl	__ZL6voxsiz, %xmm0
	movl	%eax, %edx
	movl	%eax, -1148(%ebp)
	movl	%edi, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv
	xorps	%xmm0, %xmm0
	cvtsi2ssl	__ZL6voxsiz+4, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv+4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	__ZL6voxsiz+8, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv+8
	call	__ZL8read_paliPi
	movl	$8191, __ZL13vcolhashsizm1
	call	__ZL17alloc_vcolhasheadv
	call	__ZL10alloc_vbitv
	movl	__ZL6voxsiz+8, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1124(%ebp)
	testl	%eax, %eax
	je	L2069
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%edi, %eax
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%edi, %edi
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	__ZL6voxsiz, %eax
	movl	-1124(%ebp), %ebx
	testl	%eax, %eax
	jle	L1676
L1675:
	movl	__ZL6voxsiz+4, %eax
	testl	%eax, %eax
	jle	L1677
	movl	__ZL5yzsiz, %eax
	movl	%edi, -1100(%ebp)
	movl	$0, -1096(%ebp)
	movl	__ZL6voxsiz+8, %ecx
	imull	%edi, %eax
	movl	%eax, -1088(%ebp)
	.p2align 4
	.p2align 3
L1681:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1140(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL6voxsiz+8, %ecx
	testl	%ecx, %ecx
	jle	L1678
	movl	__ZL4vbit, %edi
	xorl	%eax, %eax
	movl	%edi, -1092(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L1680:
	cmpb	$-1, (%ebx,%eax)
	je	L1679
	movl	-1088(%ebp), %edi
	leal	(%edi,%eax), %ecx
	movl	$1, %edi
	sall	%cl, %edi
	movl	%ecx, %edx
	movl	%edi, %ecx
	movl	-1092(%ebp), %edi
	sarl	$5, %edx
	orl	%ecx, (%edi,%edx,4)
	movl	__ZL6voxsiz+8, %ecx
L1679:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jl	L1680
L1678:
	addl	$1, -1096(%ebp)
	movl	-1096(%ebp), %eax
	addl	%ecx, -1088(%ebp)
	cmpl	__ZL6voxsiz+4, %eax
	jl	L1681
	movl	-1100(%ebp), %edi
L1677:
	addl	$1, %edi
	cmpl	__ZL6voxsiz, %edi
	jl	L1675
L1676:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1140(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	__ZL6voxsiz, %eax
	testl	%eax, %eax
	jle	L1682
	movl	$0, -1128(%ebp)
L1692:
	movl	__ZL6voxsiz+4, %edi
	testl	%edi, %edi
	jle	L1683
	movl	-1128(%ebp), %eax
	movl	__ZL5yzsiz, %esi
	movl	$0, -1096(%ebp)
	movl	__ZL6voxsiz+8, %edx
	imull	%eax, %esi
	testl	%eax, %eax
	movl	%edx, -1088(%ebp)
	sete	-1136(%ebp)
	movl	%esi, -1144(%ebp)
	.p2align 4
	.p2align 3
L1691:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1088(%ebp), %ecx
	movl	-1124(%ebp), %edx
	movl	-1140(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL6voxsiz+8, %eax
	movl	__ZL6voxsiz+4, %edi
	movl	%eax, -1088(%ebp)
	movl	%edi, -1100(%ebp)
	testl	%eax, %eax
	jle	L1684
	movl	-1096(%ebp), %esi
	movl	-1144(%ebp), %eax
	testl	%esi, %esi
	leal	-1(%eax), %ebx
	sete	-1132(%ebp)
	xorl	%edi, %edi
	jmp	L1690
	.p2align 4,,10
	.p2align 3
L1685:
	movl	__ZL6voxsiz, %eax
	movl	-1100(%ebp), %esi
	subl	$1, %eax
	cmpl	-1128(%ebp), %eax
	sete	%al
	orb	-1136(%ebp), %al
	orb	-1132(%ebp), %al
	testl	%edi, %edi
	sete	%dl
	orl	%edx, %eax
	leal	-1(%esi), %edx
	cmpl	-1096(%ebp), %edx
	sete	%dl
	orb	%al, %dl
	jne	L1932
	movl	-1088(%ebp), %eax
	subl	$1, %eax
	cmpl	%edi, %eax
	je	L1932
	leal	1(%ebx), %esi
	movl	__ZL5yzsiz, %edx
	movl	%esi, %eax
	movl	%esi, -1092(%ebp)
	subl	%edx, %eax
	leal	(%esi,%edx), %ecx
	movl	-1088(%ebp), %edx
	movl	%ecx, -1108(%ebp)
	movl	%esi, %ecx
	subl	%edx, %ecx
	movl	%eax, -1104(%ebp)
	movl	__ZL4vbit, %eax
	addl	%edx, %esi
	movl	%ecx, -1112(%ebp)
	movl	%ebx, %ecx
	leal	2(%ebx), %edx
	sarl	$5, %ecx
	movl	%esi, -1116(%ebp)
	movl	(%eax,%ecx,4), %esi
	movl	%ebx, %ecx
	movl	%edx, %ebx
	sarl	$5, %ebx
	movl	(%eax,%ebx,4), %ebx
	sarl	%cl, %esi
	movl	%edx, %ecx
	sarl	%cl, %ebx
	movzbl	-1104(%ebp), %ecx
	andl	%ebx, %esi
	movl	-1104(%ebp), %ebx
	sarl	$5, %ebx
	movl	(%eax,%ebx,4), %ebx
	sarl	%cl, %ebx
	movzbl	-1108(%ebp), %ecx
	andl	%esi, %ebx
	movl	-1108(%ebp), %esi
	sarl	$5, %esi
	movl	(%eax,%esi,4), %esi
	sarl	%cl, %esi
	movl	-1112(%ebp), %ecx
	andl	%ebx, %esi
	movl	%ecx, %edx
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	sarl	%cl, %edx
	movl	-1116(%ebp), %ecx
	andl	%esi, %edx
	sarl	$5, %ecx
	movl	(%eax,%ecx,4), %eax
	movzbl	-1116(%ebp), %ecx
	sarl	%cl, %eax
	andl	%eax, %edx
	andl	$1, %edx
	je	L2103
L1686:
	movl	-1092(%ebp), %ebx
	addl	$1, %edi
	cmpl	%edi, -1088(%ebp)
	jle	L1684
L1690:
	movl	-1124(%ebp), %eax
	movzbl	(%eax,%edi), %eax
	movb	%al, -1120(%ebp)
	cmpb	$-1, %al
	jne	L1685
	leal	1(%ebx), %eax
	movl	%eax, -1092(%ebp)
	jmp	L1686
	.p2align 4,,10
	.p2align 3
L1932:
	movzbl	-1120(%ebp), %eax
	movl	%edi, %ecx
	movl	-1040(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	movl	-1096(%ebp), %edx
	call	__ZL6putvoxiiii
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1100(%ebp)
	movl	__ZL6voxsiz+8, %eax
	movl	%eax, -1088(%ebp)
	leal	1(%ebx), %eax
	movl	%eax, -1092(%ebp)
	jmp	L1686
	.p2align 4,,10
	.p2align 3
L2103:
	movzbl	-1120(%ebp), %eax
	movl	%edi, %ecx
	movl	-1040(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	movl	-1096(%ebp), %edx
	call	__ZL6putvoxiiii
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1100(%ebp)
	movl	__ZL6voxsiz+8, %eax
	movl	%eax, -1088(%ebp)
	jmp	L1686
	.p2align 4,,10
	.p2align 3
L1684:
	movl	-1088(%ebp), %edi
	addl	$1, -1096(%ebp)
	addl	%edi, -1144(%ebp)
	movl	-1100(%ebp), %edi
	cmpl	%edi, -1096(%ebp)
	jl	L1691
L1683:
	addl	$1, -1128(%ebp)
	movl	-1128(%ebp), %eax
	cmpl	__ZL6voxsiz, %eax
	jl	L1692
L1682:
	movl	-1124(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1140(%ebp), %eax
	subl	$4, %esp
	call	_kclose
L1693:
	movl	$1, -1144(%ebp)
	jmp	L1726
L1671:
	leal	-12(%ebp), %esp
	xorl	%edi, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%edi, %eax
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
L2096:
	.cfi_restore_state
	movl	-1152(%ebp), %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1711
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-1060(%ebp), %edx
	movl	$4, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL6voxsiz, %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	leal	-1056(%ebp), %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	xorps	%xmm0, %xmm0
	movl	__ZL6voxsiz, %eax
	movss	LC50, %xmm1
	cvtsi2ssl	-1056(%ebp), %xmm0
	movl	$1, %ecx
	leal	4(,%eax,4), %edx
	movl	%ebx, %eax
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-1052(%ebp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv+4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-1048(%ebp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL6voxpiv+8
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	__ZL6voxsiz+4, %eax
	addl	$1, %eax
	movl	%eax, -1128(%ebp)
	imull	__ZL6voxsiz, %eax
	leal	(%eax,%eax), %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1132(%ebp)
	testl	%eax, %eax
	je	L1844
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%esi, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	leal	-1040(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, -1148(%ebp)
	movl	%ebx, %eax
	call	__ZL8read_paliPi
	call	__ZL10alloc_vbitv
	movl	-1060(%ebp), %edx
	movl	$4096, %eax
	movl	%edx, %ecx
	sarl	%ecx
	cmpl	$8193, %edx
	jle	L2104
L1698:
	addl	%eax, %eax
	cmpl	%ecx, %eax
	jl	L1698
	subl	$1, %eax
L1699:
	movl	%eax, __ZL13vcolhashsizm1
	call	__ZL17alloc_vcolhasheadv
	movl	__ZL6voxsiz, %edx
	movl	-1128(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	imull	%edx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	addl	%eax, %eax
	leal	32(%eax,%edx,4), %edx
	movl	%ebx, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	%ebx, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_ktell
	subl	%eax, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1844
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%esi, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%eax, -1088(%ebp)
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%ebx, %eax
	call	_kclose
	movl	-1088(%ebp), %edx
	movl	__ZL6voxsiz, %ebx
	xorl	%eax, %eax
	movl	$0, -1092(%ebp)
	movl	%edx, %edi
	testl	%ebx, %ebx
	jle	L1702
L1710:
	movl	__ZL6voxsiz+4, %ecx
	testl	%ecx, %ecx
	jle	L1703
	movl	-1092(%ebp), %ebx
	imull	__ZL5yzsiz, %ebx
	movl	$0, -1088(%ebp)
	movl	%eax, -1136(%ebp)
	movl	%edx, -1140(%ebp)
	movl	%ebx, -1100(%ebp)
	movl	-1132(%ebp), %ebx
	leal	(%ebx,%eax,2), %ebx
	.p2align 4
	.p2align 3
L1709:
	movl	-1088(%ebp), %eax
	movzwl	2(%ebx,%eax,2), %edx
	movzwl	(%ebx,%eax,2), %eax
	subl	%eax, %edx
	movl	%edx, -1108(%ebp)
	je	L1704
	movl	%ebx, -1124(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1708:
	movzbl	1(%edi), %edx
	movzbl	(%edi), %eax
	movl	%edx, -1112(%ebp)
	leal	3(%edi), %edx
	movl	%eax, %ebx
	movl	%edx, -1116(%ebp)
	movl	-1100(%ebp), %edx
	movl	%eax, -1096(%ebp)
	addl	%edx, %eax
	movl	%eax, -1104(%ebp)
	movl	__ZL4vbit, %eax
	testb	$16, 2(%edi)
	je	L2105
L1705:
	movl	-1112(%ebp), %ecx
	movl	-1096(%ebp), %esi
	leal	3(%ecx), %edx
	addl	%ecx, %esi
	movl	-1100(%ebp), %ecx
	subl	%edx, -1108(%ebp)
	movl	-1104(%ebp), %edx
	addl	%esi, %ecx
	call	__ZL10setzrange1Piii
	movl	-1096(%ebp), %eax
	cmpl	%esi, %eax
	jge	L1914
	subl	%eax, %edi
	.p2align 4
	.p2align 3
L1707:
	movzbl	3(%edi,%ebx), %eax
	movl	%ebx, %ecx
	addl	$1, %ebx
	movl	-1040(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	movl	-1088(%ebp), %edx
	movl	-1092(%ebp), %eax
	call	__ZL6putvoxiiii
	cmpl	%ebx, %esi
	jne	L1707
	movl	-1116(%ebp), %edi
	subl	-1096(%ebp), %edi
	addl	%esi, %edi
L1706:
	movl	-1108(%ebp), %eax
	testl	%eax, %eax
	jne	L1708
	movl	-1124(%ebp), %ebx
L1704:
	addl	$1, -1088(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	-1088(%ebp), %eax
	addl	%esi, -1100(%ebp)
	cmpl	__ZL6voxsiz+4, %eax
	jl	L1709
	movl	-1136(%ebp), %eax
	movl	-1140(%ebp), %edx
L1703:
	addl	$1, -1092(%ebp)
	addl	-1128(%ebp), %eax
	movl	-1092(%ebp), %ebx
	cmpl	__ZL6voxsiz, %ebx
	jl	L1710
L1702:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1132(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1693
	.p2align 4,,10
	.p2align 3
L2105:
	movl	-1104(%ebp), %ecx
	addl	%esi, %edx
	movl	%eax, -1120(%ebp)
	call	__ZL10setzrange1Piii
	movl	-1120(%ebp), %eax
	jmp	L1705
	.p2align 4,,10
	.p2align 3
L1914:
	movl	-1116(%ebp), %edi
	jmp	L1706
L1844:
	movl	%esi, %eax
	call	__Z13handle_memerri
L2069:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1731:
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1727:
	movl	$0, __ZL4gvox
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1728
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
L1745:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L1745
	movl	__ZL6voxsiz+4, %edx
	movl	%eax, __ZL4gvox
	movl	__ZL6voxsiz+8, %eax
	movl	__ZL6voxsiz, %ecx
	cmpl	%eax, %edx
	movl	%eax, %esi
	movl	%eax, %ebx
	cmovle	%edx, %esi
	cmovge	%edx, %ebx
	cmpl	%esi, %ecx
	cmovge	%ebx, %edx
	cmovge	%ecx, %eax
	cmpl	%edx, %eax
	movl	%eax, %ecx
	cmovl	%edx, %ecx
	cmovge	%edx, %eax
	movl	%ecx, __ZL6shcntp
	imull	%eax, %ecx
	leal	0(,%ecx,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2069
	movl	%eax, __ZL8shcntmal
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL6shcntp, %eax
	xorl	%ecx, %ecx
	movl	$0, __ZL5garea
	movl	$0, __ZL5gmaxy
	leal	4(,%eax,4), %edx
	movl	%esi, %eax
	movl	$0, __ZL5gmaxx
	subl	%edx, %eax
	movl	%eax, __ZL5shcnt
	cmpl	$-1, __ZL6pow2m1+128
	je	L1751
L1750:
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, __ZL6pow2m1(,%ecx,4)
	addl	$1, %ecx
	cmpl	$32, %ecx
	jne	L1750
	movl	$-1, __ZL6pow2m1+128
L1751:
	movl	$-1, %eax
	movl	__ZL6voxsiz+8, %edx
	movl	$-1, -1088(%ebp)
	movl	%eax, __ZL8gqfacind+16
	movss	-1088(%ebp), %xmm0
	movl	%eax, __ZL8gqfacind+20
	movl	__ZL6voxsiz+4, %eax
	movl	$-1, __ZL8gqfacind+24
	shufps	$0, %xmm0, %xmm0
	cmpl	%edx, %eax
	movups	%xmm0, __ZL8gqfacind
	cmovl	%edx, %eax
	leal	1(%eax), %ebx
	leal	0(,%ebx,8), %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1120(%ebp)
	testl	%eax, %eax
	je	L1844
	movl	$0, -1100(%ebp)
	leal	(%eax,%ebx,4), %eax
	xorl	%ebx, %ebx
	movl	%eax, -1140(%ebp)
	movl	$__ZL7cntquadiiiiiiiiii, -1128(%ebp)
L1753:
	movl	__ZL4gvox, %eax
	movl	__ZL6voxsiz+8, %edx
	movl	$-1, %esi
	movl	$0, 40(%eax)
	movl	__ZL6voxsiz+4, %eax
	movl	$-1, 4(%esp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	leal	4(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	-1140(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL6voxsiz, %eax
	movl	$0, -1096(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	testl	%eax, %eax
	jle	L2060
L1754:
	xorl	%eax, %eax
	cmpl	$-1, %esi
	movl	%esi, -1132(%ebp)
	movl	$0, -1108(%ebp)
	setne	%al
	movl	%eax, -1136(%ebp)
L1771:
	movl	$0, -1112(%ebp)
	movl	-1092(%ebp), %eax
	testl	%eax, %eax
	js	L1766
	movl	%ebx, -1152(%ebp)
	movl	%esi, -1156(%ebp)
	.p2align 4
	.p2align 3
L1769:
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%edi, %edi
	js	L1768
	movl	%esi, -1104(%ebp)
	jmp	L1765
	.p2align 4,,10
	.p2align 3
L1762:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1759:
	addl	$1, %ebx
	addl	$4, -1104(%ebp)
	cmpl	%edi, %ebx
	jg	L1768
L1765:
	movl	-1112(%ebp), %ecx
	cmpl	-1092(%ebp), %ecx
	setnb	%dl
	movl	-1088(%ebp), %esi
	cmpl	%esi, -1108(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1756
	cmpl	%edi, %ebx
	jnb	L1756
	movl	__ZL5yzsiz, %eax
	movl	__ZL4vbit, %edx
	imull	%ecx, %eax
	movl	-1108(%ebp), %ecx
	imull	%edi, %ecx
	movl	%eax, -1116(%ebp)
	addl	%eax, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %eax
	sarl	$5, %eax
	movl	(%edx,%eax,4), %eax
	sarl	%cl, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, -1124(%ebp)
	je	L1756
	movl	-1132(%ebp), %ecx
	cmpl	%esi, %ecx
	jnb	L1757
	movl	%ecx, %esi
	movl	-1116(%ebp), %ecx
	imull	%edi, %esi
	leal	(%esi,%ecx), %eax
	addl	%ebx, %eax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movl	(%edx,%ecx,4), %edx
	btl	%eax, %edx
	jnc	L1757
L1756:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1760
	cmpl	-1100(%ebp), %eax
	jne	L1761
	testb	$1, -1096(%ebp)
	jne	L2106
L1761:
	movl	-1136(%ebp), %edi
	movl	%ebx, 32(%esp)
	movl	%edi, 36(%esp)
	movl	-1108(%ebp), %edi
	movl	%edi, 28(%esp)
	movl	-1112(%ebp), %esi
	movl	%eax, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
L1760:
	cmpl	$1, -1096(%ebp)
	jne	L1762
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L2091
	movl	-1120(%ebp), %eax
	movl	-1112(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L2091:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	addl	$1, %ebx
	movl	$0, -1096(%ebp)
	addl	$4, -1104(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	cmpl	%edi, %ebx
	jle	L1765
	.p2align 4
	.p2align 3
L1768:
	addl	$1, -1112(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1112(%ebp)
	jle	L1769
	movl	-1152(%ebp), %ebx
	movl	-1156(%ebp), %esi
L1766:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1132(%ebp)
	cmpl	-1088(%ebp), %eax
	jl	L1771
	cmpl	$1, %esi
	je	L1770
L2060:
	movl	-1088(%ebp), %eax
	movl	$1, %esi
	testl	%eax, %eax
	jg	L1754
L1770:
	movl	$1, -1124(%ebp)
	movl	%ebx, -1132(%ebp)
L1788:
	testl	%edi, %edi
	jle	L1785
	cmpl	$1, -1124(%ebp)
	jne	L1921
	movl	$0, -1108(%ebp)
L1806:
	movl	-1092(%ebp), %edx
	testl	%edx, %edx
	js	L1790
	movl	$0, -1104(%ebp)
L1792:
	movl	-1088(%ebp), %eax
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jns	L1797
	jmp	L1798
	.p2align 4,,10
	.p2align 3
L1799:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1801:
	addl	$1, %ebx
	addl	$4, %esi
	cmpl	%ebx, -1088(%ebp)
	jl	L1798
L1797:
	cmpl	%edi, -1108(%ebp)
	movl	-1092(%ebp), %ecx
	setnb	%dl
	cmpl	%ecx, -1104(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1802
	cmpl	-1088(%ebp), %ebx
	jnb	L1802
	movl	%edi, %edx
	movl	-1104(%ebp), %eax
	imull	__ZL5yzsiz, %eax
	imull	%ebx, %edx
	leal	(%eax,%edx), %ecx
	movl	__ZL4vbit, %eax
	movl	%ecx, -1112(%ebp)
	addl	-1108(%ebp), %ecx
	movl	%ecx, %edx
	movl	%eax, -1116(%ebp)
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	sarl	%cl, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	je	L1802
	cmpl	%edi, -1124(%ebp)
	jnb	L1805
	movl	-1112(%ebp), %edx
	movl	-1116(%ebp), %eax
	addl	-1124(%ebp), %edx
	movl	%edx, -1112(%ebp)
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	movzbl	-1112(%ebp), %eax
	btl	%eax, %edx
	jnc	L1805
L1802:
	movl	(%esi), %eax
	testl	%eax, %eax
	js	L1795
	cmpl	-1100(%ebp), %eax
	jne	L1796
	testb	$1, -1096(%ebp)
	jne	L2107
L1796:
	movl	$2, 36(%esp)
	movl	-1108(%ebp), %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-1104(%ebp), %edx
	movl	%edi, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	$-1, (%esi)
	.p2align 4
	.p2align 3
L1795:
	cmpl	$1, -1096(%ebp)
	jne	L1799
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%esi)
	je	L1800
	movl	-1120(%ebp), %edi
	movl	-1104(%ebp), %ecx
	movl	%ecx, (%edi,%ebx,4)
	movl	%eax, (%esi)
L1800:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	addl	$1, %ebx
	addl	$4, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	cmpl	%ebx, -1088(%ebp)
	jge	L1797
L1798:
	addl	$1, -1104(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1104(%ebp)
	jle	L1792
L1790:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1124(%ebp)
	cmpl	%edi, %eax
	jl	L1806
L1807:
	movl	$-1, -1124(%ebp)
	jmp	L1788
	.p2align 4,,10
	.p2align 3
L1757:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L2108
	movl	-1136(%ebp), %edi
	movl	%ebx, 32(%esp)
	movl	%edi, 36(%esp)
	movl	-1108(%ebp), %edi
	movl	%edi, 28(%esp)
	movl	-1112(%ebp), %esi
	movl	%eax, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	jne	L1762
	movl	__ZL6voxsiz, %eax
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	movl	-1124(%ebp), %eax
	movl	%eax, -1096(%ebp)
	jmp	L1759
	.p2align 4,,10
	.p2align 3
L1805:
	movl	(%esi), %eax
	testl	%eax, %eax
	js	L2109
	movl	%ecx, -1088(%ebp)
	movl	$2, 36(%esp)
	movl	-1108(%ebp), %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-1104(%ebp), %ecx
	movl	%edi, 20(%esp)
	movl	%ecx, 24(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1096(%ebp), %eax
	movl	$-1, (%esi)
	movl	-1088(%ebp), %ecx
	testl	%eax, %eax
	jne	L1799
	movl	__ZL6voxsiz, %eax
	movl	%ecx, -1096(%ebp)
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	jmp	L1801
	.p2align 4,,10
	.p2align 3
L2108:
	movl	-1096(%ebp), %eax
	movl	-1124(%ebp), %esi
	testl	%eax, %eax
	cmovne	%eax, %esi
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%esi, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1759
L2106:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1759
L2109:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1801
L2107:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1801
L1784:
	addl	$1, -1108(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1108(%ebp)
	jle	L1786
L1782:
	addl	$1, -1112(%ebp)
	movl	-1112(%ebp), %eax
	addl	$1, -1116(%ebp)
	cmpl	%edi, %eax
	jl	L1789
L1785:
	cmpl	$-1, -1124(%ebp)
	jne	L1807
	movl	-1132(%ebp), %ebx
	movl	$1, -1132(%ebp)
	movl	%ebx, -1152(%ebp)
L1787:
	movl	-1092(%ebp), %eax
	testl	%eax, %eax
	jle	L1821
	cmpl	$1, -1132(%ebp)
	jne	L1923
	movl	$0, -1108(%ebp)
	movl	%edi, %esi
L1841:
	movl	-1088(%ebp), %eax
	testl	%eax, %eax
	js	L1825
	movl	$0, -1104(%ebp)
L1827:
	movl	-1140(%ebp), %edi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jns	L1832
	jmp	L1833
	.p2align 4,,10
	.p2align 3
L1834:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
L1836:
	addl	$1, %ebx
	addl	$4, %edi
	cmpl	%ebx, %esi
	jl	L1833
L1832:
	movl	-1088(%ebp), %ecx
	cmpl	%ecx, -1104(%ebp)
	setnb	%dl
	movl	-1092(%ebp), %ecx
	cmpl	%ecx, -1108(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1837
	cmpl	%esi, %ebx
	jnb	L1837
	movl	__ZL5yzsiz, %eax
	movl	-1104(%ebp), %edx
	movl	-1108(%ebp), %ecx
	imull	%esi, %edx
	movl	%eax, -1124(%ebp)
	imull	%eax, %ecx
	movl	__ZL4vbit, %eax
	movl	%edx, -1112(%ebp)
	addl	%edx, %ecx
	movl	%eax, -1116(%ebp)
	addl	%ebx, %ecx
	movl	%ecx, %edx
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	sarl	%cl, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	je	L1837
	movl	-1092(%ebp), %edx
	cmpl	%edx, -1132(%ebp)
	jnb	L1840
	movl	-1124(%ebp), %edx
	imull	-1132(%ebp), %edx
	movl	-1112(%ebp), %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	movl	%eax, -1112(%ebp)
	movl	%eax, %edx
	movl	-1116(%ebp), %eax
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	movzbl	-1112(%ebp), %eax
	btl	%eax, %edx
	jnc	L1840
L1837:
	movl	(%edi), %eax
	testl	%eax, %eax
	js	L1830
	cmpl	-1100(%ebp), %eax
	jne	L1831
	testb	$1, -1096(%ebp)
	jne	L2110
L1831:
	movl	$4, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-1104(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	-1108(%ebp), %esi
	movl	%eax, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%ecx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	$-1, (%edi)
	.p2align 4
	.p2align 3
L1830:
	cmpl	$1, -1096(%ebp)
	jne	L1834
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L1835
	movl	-1120(%ebp), %esi
	movl	-1104(%ebp), %ecx
	movl	%ecx, (%esi,%ebx,4)
	movl	%eax, (%edi)
L1835:
	movl	__ZL6voxsiz+4, %eax
	addl	$1, %ebx
	addl	$4, %edi
	movl	__ZL6voxsiz+8, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	cmpl	%ebx, %esi
	jge	L1832
L1833:
	addl	$1, -1104(%ebp)
	movl	-1088(%ebp), %edi
	cmpl	%edi, -1104(%ebp)
	jle	L1827
L1825:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1132(%ebp)
	cmpl	-1092(%ebp), %eax
	jl	L1841
	movl	%esi, %edi
L1842:
	movl	$-1, -1132(%ebp)
	jmp	L1787
	.p2align 4,,10
	.p2align 3
L1840:
	movl	(%edi), %eax
	testl	%eax, %eax
	js	L2111
	movl	%ecx, -1088(%ebp)
	movl	$4, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-1104(%ebp), %ecx
	movl	%ecx, 28(%esp)
	movl	-1108(%ebp), %esi
	movl	%ecx, 16(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1096(%ebp), %edx
	movl	$-1, (%edi)
	movl	-1088(%ebp), %ecx
	testl	%edx, %edx
	jne	L1834
	movl	__ZL6voxsiz+4, %eax
	movl	%ecx, -1096(%ebp)
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	jmp	L1836
L2111:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1836
L2110:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1836
L1820:
	addl	$1, -1108(%ebp)
	movl	-1088(%ebp), %edi
	cmpl	%edi, -1108(%ebp)
	jle	L1822
L1818:
	addl	$1, -1112(%ebp)
	movl	-1112(%ebp), %eax
	addl	$1, -1136(%ebp)
	cmpl	-1092(%ebp), %eax
	jl	L1824
	movl	%esi, %edi
L1821:
	cmpl	$-1, -1132(%ebp)
	jne	L1842
	movl	-1152(%ebp), %edi
	testl	%edi, %edi
	je	L2112
	movl	__ZL3shp, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4zbit, %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1120(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4gvox, %esi
	subl	$4, %esp
	movl	$0x00000000, -1056(%ebp)
	movl	$0x3b800000, -1052(%ebp)
	movl	40(%esi), %eax
	leal	(%eax,%eax,4), %ebx
	sall	$4, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2069
	movl	%eax, 32(%esi)
	movl	__ZL4gvox, %esi
	movl	40(%esi), %eax
	leal	(%eax,%eax,2), %ebx
	sall	$3, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2069
	movl	__ZL4gvox, %ecx
	movl	%eax, 36(%esi)
	movl	__ZL5gquad, %edx
	movl	40(%ecx), %ebx
	testl	%ebx, %ebx
	jle	L1893
	xorps	%xmm0, %xmm0
	movl	%edx, -1104(%ebp)
	leal	40(%edx), %ebx
	xorl	%esi, %esi
	movss	LC54, %xmm1
	cvtsi2ssl	48(%ecx), %xmm0
	xorl	%edi, %edi
	movl	$0, -1088(%ebp)
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%ecx), %xmm0
	divss	%xmm0, %xmm1
L1895:
	movzwl	-20(%ebx), %eax
	addw	-40(%ebx), %ax
	movl	%esi, -1108(%ebp)
	movzwl	%ax, %eax
	movl	%edi, -1112(%ebp)
	leal	-40(%ebx), %edi
	movl	%eax, -1092(%ebp)
	movzwl	-18(%ebx), %eax
	addw	-38(%ebx), %ax
	movzwl	%ax, %eax
	movl	%eax, -1096(%ebp)
	movzwl	-16(%ebx), %eax
	addw	-36(%ebx), %ax
	movzwl	%ax, %eax
	movl	%eax, -1100(%ebp)
	movl	-1088(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$4, %eax
	movl	%eax, %esi
L1894:
	movzwl	(%edi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	leal	(%eax,%eax), %edx
	xorl	%eax, %eax
	cmpl	%edx, -1092(%ebp)
	setg	%al
	subss	-1056(%ebp,%eax,4), %xmm0
	setl	%al
	movzbl	%al, %eax
	addss	-1056(%ebp,%eax,4), %xmm0
	movl	32(%ecx), %eax
	movss	%xmm0, (%eax,%esi)
	movzwl	2(%edi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	leal	(%eax,%eax), %edx
	xorl	%eax, %eax
	cmpl	%edx, -1096(%ebp)
	setg	%al
	subss	-1056(%ebp,%eax,4), %xmm0
	setl	%al
	movzbl	%al, %eax
	addss	-1056(%ebp,%eax,4), %xmm0
	movl	32(%ecx), %eax
	movss	%xmm0, 4(%eax,%esi)
	movzwl	4(%edi), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	leal	(%eax,%eax), %edx
	xorl	%eax, %eax
	cmpl	%edx, -1100(%ebp)
	setg	%al
	subss	-1056(%ebp,%eax,4), %xmm0
	setl	%al
	addl	$10, %edi
	movzbl	%al, %eax
	addss	-1056(%ebp,%eax,4), %xmm0
	movl	32(%ecx), %eax
	movss	%xmm0, 8(%eax,%esi)
	movzwl	-4(%edi), %edx
	xorps	%xmm0, %xmm0
	movl	32(%ecx), %eax
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 12(%eax,%esi)
	movzwl	-2(%edi), %edx
	xorps	%xmm0, %xmm0
	movl	32(%ecx), %eax
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 16(%eax,%esi)
	addl	$20, %esi
	cmpl	%edi, %ebx
	jne	L1894
	movl	-1112(%ebp), %edi
	movl	36(%ecx), %eax
	addl	$40, %ebx
	movl	-1108(%ebp), %esi
	addl	$1, -1088(%ebp)
	movl	%esi, (%eax,%edi)
	movl	36(%ecx), %eax
	leal	1(%esi), %edx
	movl	%edx, 4(%eax,%edi)
	movl	36(%ecx), %edx
	leal	2(%esi), %eax
	movl	%eax, 8(%edx,%edi)
	movl	36(%ecx), %edx
	movl	%esi, 12(%edx,%edi)
	movl	36(%ecx), %edx
	movl	%eax, 16(%edx,%edi)
	movl	36(%ecx), %eax
	leal	3(%esi), %edx
	addl	$4, %esi
	movl	%edx, 20(%eax,%edi)
	movl	-1088(%ebp), %eax
	addl	$24, %edi
	cmpl	40(%ecx), %eax
	jl	L1895
	movl	-1104(%ebp), %edx
L1893:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4gvox, %edi
	subl	$4, %esp
	movl	$0, __ZL5gquad
	testl	%edi, %edi
	je	L1694
	call	_texcache_enabled
	testl	%eax, %eax
	je	L1744
	movl	$0, -1044(%ebp)
	movl	40(%edi), %eax
	movl	48(%edi), %edx
	movl	%eax, -1088(%ebp)
	movss	-1088(%ebp), %xmm0
	leal	(%eax,%eax,4), %ebx
	leal	(%eax,%eax,2), %eax
	movl	%edx, -1088(%ebp)
	sall	$3, %eax
	sall	$4, %ebx
	movss	-1088(%ebp), %xmm7
	movl	%eax, -1100(%ebp)
	addl	%ebx, %eax
	unpcklps	%xmm7, %xmm0
	movl	%eax, -1096(%ebp)
	movlps	%xmm0, -1056(%ebp)
	movl	52(%edi), %ecx
	imull	%ecx, %edx
	movl	%ecx, -1048(%ebp)
	leal	0(,%edx,4), %esi
	addl	%esi, %eax
	movl	%esi, -1092(%ebp)
	movl	%eax, -1088(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1898
	movl	32(%edi), %eax
	movl	%ebx, 8(%esp)
	addl	%esi, %ebx
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	-1100(%ebp), %ecx
	movl	36(%edi), %eax
	movl	%ebx, (%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	-1096(%ebp), %ebx
	movl	44(%edi), %edx
	leal	(%ebx,%esi), %eax
	movl	-1092(%ebp), %ebx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, 8(%esp)
	call	_memcpy
	movl	-1088(%ebp), %eax
	cmpl	$2113929216, %eax
	ja	L1931
	movl	$-2139062143, %edx
	mull	%edx
	movl	-1088(%ebp), %eax
	shrl	$7, %edx
	leal	16(%eax,%edx), %ebx
	movl	%ebx, %eax
L1899:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L2069
	movl	%ebx, (%esp)
	movl	-1088(%ebp), %ecx
	movl	%eax, -1088(%ebp)
	movl	%esi, %eax
	call	_LZ4_compress_fast.constprop.0
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, -1044(%ebp)
	movl	%ebx, 4(%esp)
	movl	-1088(%ebp), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1902
	testl	%ebx, %ebx
	jne	L2069
L1902:
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	%eax, -1088(%ebp)
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	leal	-1056(%ebp), %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	_fwrite
	cmpl	$1, %eax
	je	L2113
L1904:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2114
L1907:
	movl	_texcache+36, %eax
	movl	$0, 4(%eax)
	movl	_texcache+36, %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1744:
	movss	LC54, %xmm0
	movl	$1, (%edi)
	movss	%xmm0, 8(%edi)
	movl	__ZL6voxsiz, %eax
	movss	%xmm0, 12(%edi)
	movl	%eax, 56(%edi)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, 60(%edi)
	movl	__ZL6voxsiz+8, %eax
	movl	%eax, 64(%edi)
	movl	__ZL6voxpiv, %eax
	movl	%eax, 68(%edi)
	movl	__ZL6voxpiv+4, %eax
	movl	%eax, 72(%edi)
	movl	__ZL6voxpiv+8, %eax
	movl	%eax, 76(%edi)
	movl	-1144(%ebp), %eax
	movl	%eax, 80(%edi)
	movl	$1024, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1909
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, 24(%edi)
L1694:
	movl	__ZL8shcntmal, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4vbit, %eax
	subl	$4, %esp
	movl	$0, __ZL8shcntmal
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4vcol, %eax
	subl	$4, %esp
	movl	$0, __ZL4vbit
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL11vcolhashead, %eax
	subl	$4, %esp
	movl	$0, __ZL4vcol
	movl	$0, _vmax
	movl	$0, _vnum
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%edi, %eax
	subl	$4, %esp
	movl	$0, __ZL11vcolhashead
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
L1909:
	.cfi_restore_state
	movl	$4, %eax
	call	__Z13handle_memerri
L2114:
	movl	$LC55, 12(%esp)
	movl	$1017, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1907
L2113:
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	cmpl	$1, %eax
	jne	L1904
	movl	-1088(%ebp), %edx
	movl	-1148(%ebp), %eax
	call	_texcache_postwritetex
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ecx
	jmp	L1744
L1931:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	L1899
L1898:
	movl	-1088(%ebp), %eax
	call	__Z13handle_memerri
L2112:
	movl	__ZL4gvox, %eax
	movl	40(%eax), %esi
	sall	$2, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1104(%ebp)
	testl	%eax, %eax
	je	L1844
	movl	__ZL5gmaxy, %ecx
	movl	%eax, __ZL3shp
	movl	__ZL5gmaxx, %esi
	testl	%ecx, %ecx
	je	L2115
	movl	__ZL6shcntp, %eax
	movl	__ZL5shcnt, %edx
	movl	$0, -1088(%ebp)
	movl	%ecx, -1108(%ebp)
	leal	0(,%eax,4), %ebx
	imull	%ecx, %eax
	leal	(%edx,%eax,4), %edi
	movl	%ecx, %edx
L1851:
	cmpl	%esi, %edx
	jg	L2116
	leal	-1(%edx), %eax
	movl	%esi, -1112(%ebp)
	movl	%esi, %ecx
	movl	%eax, -1096(%ebp)
	movl	%ebx, -1116(%ebp)
	movw	%dx, -1092(%ebp)
	movl	-1088(%ebp), %edx
L1850:
	movl	(%edi,%ecx,4), %esi
	movl	%edx, (%edi,%ecx,4)
	testl	%esi, %esi
	jle	L1848
	movl	-1104(%ebp), %eax
	addl	%edx, %esi
	movl	%ecx, -1088(%ebp)
	movl	%ecx, %ebx
	leal	(%eax,%edx,4), %eax
	movl	-1104(%ebp), %edx
	leal	(%edx,%esi,4), %edx
L1849:
	movzwl	-1092(%ebp), %ecx
	movw	%bx, (%eax)
	addl	$4, %eax
	movw	%cx, -2(%eax)
	cmpl	%eax, %edx
	jne	L1849
	movl	-1088(%ebp), %ecx
	movl	%esi, %edx
L1848:
	subl	$1, %ecx
	cmpl	%ecx, -1096(%ebp)
	jne	L1850
	movl	%edx, -1088(%ebp)
	movl	-1112(%ebp), %esi
	movl	-1116(%ebp), %ebx
L1847:
	movl	-1096(%ebp), %edx
	subl	%ebx, %edi
	testl	%edx, %edx
	jne	L1851
	movl	__ZL4gvox, %ebx
	leal	1(%esi), %eax
	movl	-1108(%ebp), %ecx
	movl	$32, 48(%ebx)
	cmpl	$31, %eax
	jle	L1855
L1853:
	movl	$32, %edx
L1856:
	addl	%edx, %edx
	cmpl	%eax, %edx
	jle	L1856
	movl	%edx, 48(%ebx)
L1855:
	leal	1(%ecx), %eax
	movl	$32, %esi
	cmpl	$31, %eax
	jle	L2117
L1857:
	addl	%esi, %esi
	cmpl	%esi, %eax
	jge	L1857
	movl	%esi, 52(%ebx)
	jmp	L1854
L2116:
	leal	-1(%edx), %eax
	movl	%eax, -1096(%ebp)
	jmp	L1847
L2115:
	movl	__ZL4gvox, %ebx
	leal	1(%esi), %eax
	xorl	%esi, %esi
	movl	%esi, -1088(%ebp)
	movl	$32, 48(%ebx)
	cmpl	$31, %eax
	jg	L1853
	movl	$32, 52(%ebx)
	movl	$32, %esi
L1854:
	movl	-1088(%ebp), %eax
	movl	48(%ebx), %edi
	movl	__ZL5garea, %ecx
	sall	$2, %eax
	movl	%eax, -1136(%ebp)
L1858:
	movl	%esi, %edx
	imull	%edi, %edx
	leal	0(,%edx,8), %eax
	movl	%eax, -1092(%ebp)
	leal	(%ecx,%ecx,8), %eax
	cmpl	%eax, -1092(%ebp)
	jl	L1859
	leal	31(%edx), %ebx
	sarl	$5, %edi
	sarl	$5, %ebx
	movl	%edi, __ZL7mytexo5
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2069
	movl	%eax, __ZL4zbit
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL4gvox, %eax
	movl	-1088(%ebp), %ebx
	movl	%eax, -1104(%ebp)
	testl	%ebx, %ebx
	je	L1864
	movl	$0, -1092(%ebp)
	movl	-1104(%ebp), %edi
	movl	48(%edi), %eax
	imull	52(%edi), %eax
	movl	%eax, -1132(%ebp)
	movl	__ZL3shp, %eax
L1884:
	movl	-1092(%ebp), %edi
	sall	$2, %edi
	addl	%edi, %eax
	movl	%edi, -1128(%ebp)
	movzwl	(%eax), %edi
	movzwl	2(%eax), %esi
	movl	-1132(%ebp), %eax
	addl	$2, %edi
	addl	$2, %esi
	movzwl	%di, %edi
	movl	%eax, -1108(%ebp)
	movzwl	%si, %esi
	movl	%edi, -1096(%ebp)
	jmp	L1873
L1865:
	movl	%esi, (%esp)
	movl	-1096(%ebp), %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	jne	L1875
L1873:
	call	_rand
	movl	%eax, %edx
	movl	__ZL4gvox, %eax
	andl	$32767, %edx
	movl	48(%eax), %eax
	addl	$1, %eax
	subl	-1096(%ebp), %eax
	imull	%edx, %eax
	sarl	$15, %eax
	movl	%eax, %ebx
	call	_rand
	movl	%eax, %edx
	movl	__ZL4gvox, %eax
	andl	$32767, %edx
	movl	%eax, -1104(%ebp)
	movl	52(%eax), %eax
	movl	%eax, -1112(%ebp)
	addl	$1, %eax
	subl	%esi, %eax
	imull	%edx, %eax
	sarl	$15, %eax
	subl	$1, -1108(%ebp)
	movl	%eax, %edi
	jns	L1865
	movl	%eax, -1092(%ebp)
	movl	__ZL4zbit, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL5gmaxy, %edx
	subl	$4, %esp
	testl	%edx, %edx
	je	L2118
	movl	__ZL5gmaxx, %eax
	movl	__ZL6shcntp, %ecx
	movl	%edx, %edi
	movl	%eax, -1108(%ebp)
	movl	__ZL5shcnt, %eax
	movl	%eax, -1124(%ebp)
	movl	__ZL3shp, %eax
	movl	%eax, -1104(%ebp)
	movl	%edx, %eax
	xorl	%edx, %edx
	imull	%ecx, %eax
L1871:
	cmpl	%edi, -1108(%ebp)
	jl	L2119
	movl	-1124(%ebp), %esi
	movl	%edi, -1116(%ebp)
	movl	%eax, -1132(%ebp)
	leal	(%esi,%eax,4), %esi
	movl	%ecx, -1152(%ebp)
	movl	%esi, -1112(%ebp)
	movl	-1108(%ebp), %esi
	movl	%esi, -1128(%ebp)
	leal	-1(%edi), %esi
	movl	%esi, -1096(%ebp)
	movl	-1128(%ebp), %esi
L1870:
	movl	-1112(%ebp), %eax
	movl	(%eax,%esi,4), %edi
	cmpl	%edx, %edi
	jle	L1868
	movl	-1104(%ebp), %eax
	movl	%ebx, %ecx
	movzwl	-1092(%ebp), %ebx
	leal	(%eax,%edx,4), %eax
	movl	-1104(%ebp), %edx
	leal	(%edx,%edi,4), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1869:
	movw	%cx, (%eax)
	addl	$4, %eax
	movw	%bx, -2(%eax)
	cmpl	%eax, %edx
	jne	L1869
	movl	%edi, %edx
L1868:
	movl	-1116(%ebp), %edi
	leal	-1(%esi), %eax
	movl	%esi, %ebx
	cmpl	-1096(%ebp), %eax
	je	L2120
	movl	%edi, -1092(%ebp)
	movl	%eax, %esi
	jmp	L1870
L2122:
	leal	-1(%edi), %edx
	movl	$1, (%esp)
	movl	-1096(%ebp), %ecx
	movl	%ebx, %eax
	movl	%edx, -1108(%ebp)
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	je	L2121
	movl	-1108(%ebp), %edi
L1875:
	testl	%edi, %edi
	jne	L2122
	xorl	%ecx, %ecx
	movw	%cx, -1116(%ebp)
	jmp	L1877
	.p2align 4,,10
	.p2align 3
L2120:
	movl	%edi, -1092(%ebp)
	movl	-1132(%ebp), %eax
	movl	%edi, %ebx
	movl	-1152(%ebp), %ecx
L1867:
	movl	-1096(%ebp), %edi
	subl	%ecx, %eax
	testl	%edi, %edi
	jne	L1871
	cmpl	-1088(%ebp), %edx
	jge	L2094
L1866:
	movl	-1104(%ebp), %eax
	movl	-1136(%ebp), %edi
	movl	%ebx, %ecx
	movzwl	-1092(%ebp), %ebx
	leal	(%eax,%edx,4), %edx
	addl	%edi, %eax
L1872:
	movw	%cx, (%edx)
	addl	$4, %edx
	movw	%bx, -2(%edx)
	cmpl	%edx, %eax
	jne	L1872
L2094:
	movl	__ZL4gvox, %ebx
	movl	__ZL5garea, %ecx
	movl	48(%ebx), %edi
	movl	52(%ebx), %esi
L1859:
	cmpl	%esi, %edi
	jg	L1860
	addl	%edi, %edi
	movl	%edi, 48(%ebx)
	jmp	L1858
L1923:
	movl	-1132(%ebp), %eax
	movl	%edi, %esi
	movl	$0, -1112(%ebp)
	movl	%eax, -1136(%ebp)
L1824:
	movl	$0, -1108(%ebp)
	movl	-1088(%ebp), %eax
	testl	%eax, %eax
	js	L1818
L1822:
	movl	-1140(%ebp), %edi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	js	L1820
	movl	%edi, -1104(%ebp)
	jmp	L1817
L1814:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
L1811:
	addl	$1, %ebx
	addl	$4, -1104(%ebp)
	cmpl	%esi, %ebx
	jg	L1820
L1817:
	movl	-1092(%ebp), %edx
	cmpl	%edx, -1112(%ebp)
	setnb	%dl
	movl	-1108(%ebp), %ecx
	cmpl	-1088(%ebp), %ecx
	setnb	%al
	orb	%dl, %al
	jne	L1808
	cmpl	%esi, %ebx
	jnb	L1808
	movl	%ecx, %edx
	movl	__ZL5yzsiz, %eax
	movl	-1112(%ebp), %ecx
	imull	%esi, %edx
	movl	__ZL4vbit, %edi
	imull	%eax, %ecx
	movl	%edi, -1124(%ebp)
	movl	%edx, -1116(%ebp)
	addl	%edx, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %edx
	sarl	$5, %edx
	movl	(%edi,%edx,4), %edx
	sarl	%cl, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	je	L1808
	movl	-1136(%ebp), %edi
	cmpl	-1092(%ebp), %edi
	jnb	L1809
	imull	%edi, %eax
	addl	-1116(%ebp), %eax
	movl	-1124(%ebp), %edi
	addl	%ebx, %eax
	movl	%eax, %edx
	sarl	$5, %edx
	movl	(%edi,%edx,4), %edx
	btl	%eax, %edx
	jnc	L1809
L1808:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1812
	cmpl	-1100(%ebp), %eax
	jne	L1813
	testb	$1, -1096(%ebp)
	jne	L2123
L1813:
	movl	$5, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-1108(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	-1112(%ebp), %edi
	movl	%eax, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
L1812:
	cmpl	$1, -1096(%ebp)
	jne	L1814
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L2093
	movl	-1120(%ebp), %eax
	movl	-1108(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L2093:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	jmp	L1811
L1809:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L2124
	movl	%ecx, -1116(%ebp)
	movl	$5, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-1108(%ebp), %esi
	movl	%esi, 28(%esp)
	movl	-1112(%ebp), %edi
	movl	%eax, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	jne	L1814
	movl	__ZL6voxsiz+4, %eax
	movl	-1116(%ebp), %ecx
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	jmp	L1811
L2124:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1811
L2123:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1811
L1860:
	addl	%esi, %esi
	movl	%esi, 52(%ebx)
	jmp	L1858
L2119:
	subl	$1, %edi
	movl	%edi, -1096(%ebp)
	jmp	L1867
L2118:
	movl	__ZL3shp, %eax
	movl	%eax, -1104(%ebp)
	jmp	L1866
L2125:
	movl	%ebx, %eax
	movw	%bx, -1124(%ebp)
	sarl	$5, %ebx
	andl	$31, %eax
L1876:
	movl	__ZL7mytexo5, %ecx
	movl	__ZL6pow2m1(,%eax,4), %eax
	imull	%ecx, %edi
	notl	%eax
	addl	%ebx, %edi
	movl	%edi, -1112(%ebp)
	movl	-1096(%ebp), %edi
	addl	-1108(%ebp), %edi
	movl	%eax, -1096(%ebp)
	movl	%edi, %edx
	andl	$31, %edi
	movl	__ZL6pow2m1+4(,%edi,4), %eax
	sarl	$5, %edx
	movl	%edx, %edi
	movl	%eax, -1108(%ebp)
	subl	%ebx, %edi
	je	L1878
	testl	%esi, %esi
	je	L1880
	leal	-4(,%edi,4), %eax
	testl	%edi, %edi
	movl	__ZL4zbit, %ebx
	movl	%edi, %edx
	movl	%eax, -1152(%ebp)
	movl	$1, %eax
	cmovg	%edi, %eax
	movl	%eax, -1156(%ebp)
	leal	4(%ebx), %eax
	movl	%eax, -1160(%ebp)
	movl	-1112(%ebp), %eax
	movl	%esi, -1112(%ebp)
	movl	%ebx, %esi
	movl	%eax, %ebx
L1883:
	movl	-1096(%ebp), %eax
	orl	%eax, (%esi,%ebx,4)
	cmpl	$1, %edx
	jle	L1882
	movl	-1152(%ebp), %eax
	movl	%edx, -1168(%ebp)
	movl	%ecx, -1164(%ebp)
	movl	%eax, 8(%esp)
	movl	$255, 4(%esp)
	movl	-1160(%ebp), %eax
	leal	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	-1168(%ebp), %edx
	movl	-1164(%ebp), %ecx
L1882:
	movl	-1156(%ebp), %eax
	movl	-1108(%ebp), %edi
	addl	%ebx, %eax
	addl	%ecx, %ebx
	orl	%edi, (%esi,%eax,4)
	subl	$1, -1112(%ebp)
	jne	L1883
L1880:
	movl	__ZL3shp, %eax
	movl	-1128(%ebp), %edx
	movzwl	-1124(%ebp), %edi
	addl	$1, -1092(%ebp)
	movl	-1088(%ebp), %ebx
	movw	%di, (%eax,%edx)
	movzwl	-1116(%ebp), %edi
	movw	%di, 2(%eax,%edx)
	cmpl	%ebx, -1092(%ebp)
	jne	L1884
L1864:
	movl	-1104(%ebp), %eax
	movl	40(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	sall	$3, %ebx
	movl	%ebx, 4(%esp)
	movl	__ZL5gquad, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1933
	testl	%ebx, %ebx
	jne	L2069
L1933:
	movl	__ZL4gvox, %esi
	movl	%eax, __ZL5gquad
	movl	48(%esi), %ebx
	imull	52(%esi), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2069
	movl	%eax, 44(%esi)
	movl	$1, %ebx
	movl	$__ZL7addquadiiiiiiiiii, -1128(%ebp)
	jmp	L1753
L2117:
	movl	$32, 52(%ebx)
	jmp	L1854
	.p2align 4,,10
	.p2align 3
L2121:
	movw	%di, -1116(%ebp)
	jmp	L1877
	.p2align 4,,10
	.p2align 3
L2126:
	leal	-1(%ebx), %eax
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%eax, -1108(%ebp)
	movl	%esi, (%esp)
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	je	L2125
	movl	-1108(%ebp), %ebx
L1877:
	testl	%ebx, %ebx
	jne	L2126
	movl	$-1, -1108(%ebp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movw	%dx, -1124(%ebp)
	jmp	L1876
L1878:
	testl	%esi, %esi
	je	L1880
	movl	__ZL4zbit, %eax
	movl	-1112(%ebp), %edi
	sall	$2, %ecx
	movl	-1096(%ebp), %ebx
	andl	-1108(%ebp), %ebx
	leal	(%eax,%edi,4), %eax
L1881:
	orl	%ebx, (%eax)
	addl	%ecx, %eax
	subl	$1, %esi
	jne	L1881
	jmp	L1880
L1921:
	movl	$0, -1112(%ebp)
	movl	-1124(%ebp), %eax
	movl	%eax, -1116(%ebp)
L1789:
	movl	$0, -1108(%ebp)
	movl	-1092(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1782
L1786:
	movl	-1088(%ebp), %eax
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	L1784
	movl	%esi, -1104(%ebp)
	jmp	L1781
L1778:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1775:
	addl	$4, -1104(%ebp)
	addl	$1, %ebx
	cmpl	-1088(%ebp), %ebx
	jg	L1784
L1781:
	movl	-1108(%ebp), %ecx
	cmpl	-1092(%ebp), %ecx
	setnb	%dl
	cmpl	%edi, -1112(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1772
	cmpl	-1088(%ebp), %ebx
	jnb	L1772
	movl	__ZL5yzsiz, %eax
	movl	-1112(%ebp), %edx
	movl	__ZL4vbit, %esi
	imull	%ecx, %eax
	movl	%ebx, %ecx
	imull	%edi, %ecx
	addl	%ecx, %eax
	leal	(%eax,%edx), %ecx
	movl	%ecx, %edx
	sarl	$5, %edx
	movl	(%esi,%edx,4), %edx
	sarl	%cl, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	je	L1772
	movl	-1116(%ebp), %edx
	cmpl	%edi, %edx
	jnb	L1773
	addl	%edx, %eax
	movl	%eax, %edx
	sarl	$5, %edx
	movl	(%esi,%edx,4), %edx
	btl	%eax, %edx
	jnc	L1773
L1772:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1776
	cmpl	-1100(%ebp), %eax
	jne	L1777
	testb	$1, -1096(%ebp)
	jne	L2127
L1777:
	movl	$3, 36(%esp)
	movl	-1112(%ebp), %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-1108(%ebp), %esi
	movl	%edi, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
L1776:
	cmpl	$1, -1096(%ebp)
	jne	L1778
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L2092
	movl	-1120(%ebp), %eax
	movl	-1108(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L2092:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	$0, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	jmp	L1775
L1773:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L2128
	movl	%ecx, -1088(%ebp)
	movl	$3, 36(%esp)
	movl	-1112(%ebp), %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 32(%esp)
	movl	-1108(%ebp), %esi
	movl	%edi, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-1120(%ebp), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	-1128(%ebp), %eax
	call	*%eax
	movl	-1104(%ebp), %eax
	movl	$-1, (%eax)
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	jne	L1778
	movl	__ZL6voxsiz, %eax
	movl	-1088(%ebp), %ecx
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	jmp	L1775
L2127:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1775
L2128:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1775
L2104:
	movl	$4095, %eax
	jmp	L1699
L2102:
	movl	-1092(%ebp), %eax
	call	__Z13handle_memerri
L2101:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1727
L2100:
	movl	-1100(%ebp), %eax
	call	__Z13handle_memerri
L1728:
	movl	$96, %eax
	call	__Z13handle_memerri
L2097:
	movl	-1108(%ebp), %eax
	call	_kclose
L1711:
	xorl	%edi, %edi
	jmp	L1694
L2098:
	movl	$4095, %eax
	jmp	L1718
	.cfi_endproc
LFE175:
.lcomm __ZL8shcntmal,4,4
.lcomm __ZL6voxpiv,12,4
.lcomm __ZL4vbit,4,4
.lcomm __ZL8gqfacind,28,16
.lcomm __ZL5gquad,4,4
.lcomm __ZL3shp,4,4
.lcomm __ZL4gvox,4,4
.lcomm __ZL5garea,4,4
.lcomm __ZL5gmaxy,4,4
.lcomm __ZL5gmaxx,4,4
.lcomm __ZL6shcntp,4,4
.lcomm __ZL5shcnt,4,4
.lcomm __ZL4zbit,4,4
.lcomm __ZL6pow2m1,132,32
.lcomm __ZL7mytexo5,4,4
.lcomm __ZL11vcolhashead,4,4
.lcomm __ZL13vcolhashsizm1,4,4
.lcomm __ZL6voxsiz,12,4
.lcomm __ZL5yzsiz,4,4
.lcomm __ZL4vcol,4,4
.lcomm _vmax,4,4
.lcomm _vnum,4,4
.lcomm __ZL7gslider,4,4
.lcomm __ZL8gzbufptr,4,4
.lcomm __ZZ17kopen4loadfrommodE14staticFileName,256,32
	.data
	.align 32
_g_modDir:
	.ascii "/\0"
	.space 254
.lcomm __ZL10filenamsav,16640,32
	.align 4
__ZL9kzcurhand:
	.long	-1
.lcomm __ZL9gnumfiles,32,32
.lcomm __ZL11groupfilpos,32,32
.lcomm __ZL11groupfilgrp,8,4
.lcomm __ZL16maxsearchpathlen,4,4
.lcomm __ZL7gslidew,4,4
	.section .rdata,"dr"
LC56:
	.ascii "sys_timer\0"
	.align 4
LC57:
	.ascii "engine timing backend:\12   0: auto\12   1: WinAPI QueryPerformanceCounter\12   2: SDL_GetPerformanceCounter\12   3: CPU RDTSC instruction\12\0"
	.data
	.align 4
__ZZ9timerInitiE14sys_timer_cvar:
	.long	LC56
	.long	LC57
	.long	__ZL9sys_timer.lto_priv.0
	.long	514
	.long	0
	.long	4
.lcomm __ZZ9timerInitiE8initDone,4,4
	.section .rdata,"dr"
LC58:
	.ascii "auto\0"
LC59:
	.ascii "QPC\0"
LC60:
	.ascii "SDL\0"
LC61:
	.ascii "RDTSC\0"
	.align 4
__ZZL16osdcmd_sys_timerPK13osdfuncparm_tE1s:
	.long	LC58
	.long	LC59
	.long	LC60
	.long	LC61
.lcomm _clockLastSampleTime,8,8
.lcomm __ZL17g_bakFakeTileData,4,4
.lcomm __ZL13g_bakFakeTile,4,4
.lcomm __ZL12g_bakRottile,4,4
.lcomm __ZL11g_bakPicAnm,4,4
.lcomm __ZL12g_bakTileSiz,4,4
.lcomm __ZL17g_bakTileFileOffs,4,4
.lcomm __ZL12tilefileoffs,122880,32
.lcomm __ZL14mapartfilename,256,32
.lcomm __ZL13mapartfnXXofs,4,4
.lcomm _faketilesize,122880,32
	.align 4
LC62:
	.ascii "failed reading texture cache header\0"
	.align 4
LC63:
	.ascii "header magic string doesn't match\0"
	.align 4
LC64:
	.ascii "compression doesn't match: cache contains compressed data\0"
	.align 4
LC65:
	.ascii "compression doesn't match: cache contains uncompressed data\0"
	.align 4
LC66:
	.ascii "texture in cache exceeds maximum supported size\0"
	.align 4
LC67:
	.ascii "texture in cache has non-power-of-two size, unsupported\0"
	.align 4
__ZZ22texcache_readtexheaderE10error_msgs:
	.long	LC62
	.long	LC63
	.long	LC19
	.long	LC64
	.long	LC65
	.long	LC66
	.long	LC67
LC68:
	.ascii "GL_COMPRESSED_RGB_S3TC_DXT1\0"
LC69:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT1\0"
LC70:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT3\0"
LC71:
	.ascii "GL_COMPRESSED_RGBA_S3TC_DXT5\0"
	.align 4
_CSWTCH.242:
	.long	LC68
	.long	LC69
	.long	LC70
	.long	LC71
	.data
	.align 4
__ZZ28texcache_writetex_fromdriverE26glGetTexLevelParameterivOK:
	.long	1
	.section .rdata,"dr"
	.align 4
LC3:
	.long	1602224128
	.align 4
LC4:
	.long	1232348160
	.align 4
LC25:
	.long	1148846080
	.align 4
LC26:
	.long	1315859240
	.align 4
LC27:
	.long	1120403456
	.align 4
LC48:
	.long	1056964608
	.align 4
LC50:
	.long	998244352
	.align 4
LC54:
	.long	1065353216
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZL13initpngtablesv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	__Z13dxt_handle_ioiPvPc;	.scl	2;	.type	32;	.endef
	.def	_texcache_readdata;	.scl	2;	.type	32;	.endef
	.def	__Z15dedxt_handle_ioiPviPci;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V216generic_categoryEv;	.scl	2;	.type	32;	.endef
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_lldiv;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.8;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceCounter;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_lseek;	.scl	2;	.type	32;	.endef
	.def	_read;	.scl	2;	.type	32;	.endef
	.def	__ZL10hufgencodePKiiPiS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11qhufgencodePKiS0_PiPhi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17suckbitsnextblockv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL9hufgetsymPiPKi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	__ZL14kzcheckhashsizi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
	.def	_opendir;	.scl	2;	.type	32;	.endef
	.def	_readdir;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_wildmatch;	.scl	2;	.type	32;	.endef
	.def	_closedir;	.scl	2;	.type	32;	.endef
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru24current_verbosity_cutoffEv;	.scl	2;	.type	32;	.endef
	.def	_engineUnInit;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.2;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	_hicclearsubst.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_md_undefinetile.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
