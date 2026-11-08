	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL11seek_vorbisPvxi;	.scl	3;	.type	32;	.endef
__ZL11seek_vorbisPvxi:
LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	xorl	%eax, %eax
	movl	12(%esp), %ebx
	movl	4(%ecx), %edx
	cmpl	$0, 20(%esp)
	je	L2
	movl	%edx, %eax
	cmpl	$2, 20(%esp)
	je	L2
	movl	8(%ecx), %eax
L2:
	addl	%ebx, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 8(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL12close_vorbisPv;	.scl	3;	.type	32;	.endef
__ZL12close_vorbisPv:
LFB2:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL11tell_vorbisPv;	.scl	3;	.type	32;	.endef
__ZL11tell_vorbisPv:
LFB4:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL14it_test_memoryPKcj.lto_priv.0
	.def	__ZL14it_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14it_test_memoryPKcj.lto_priv.0:
LFB5:
	.cfi_startproc
	movl	$1, %eax
	cmpl	$3, 8(%esp)
	jbe	L11
	movl	4(%esp), %eax
	cmpl	$1297108297, (%eax)
	setne	%al
	movzbl	%al, %eax
L11:
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__ZL15s3m_test_memoryPKcj.lto_priv.0
	.def	__ZL15s3m_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15s3m_test_memoryPKcj.lto_priv.0:
LFB6:
	.cfi_startproc
	cmpl	$47, 8(%esp)
	jbe	L17
	movl	4(%esp), %eax
	cmpl	$1297236819, 44(%eax)
	je	L18
L17:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L18:
	cmpb	$16, 29(%eax)
	setne	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL15mtm_test_memoryPKcj.lto_priv.0
	.def	__ZL15mtm_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15mtm_test_memoryPKcj.lto_priv.0:
LFB7:
	.cfi_startproc
	movl	$1, %eax
	cmpl	$3, 8(%esp)
	jbe	L19
	movl	4(%esp), %eax
	cmpl	$273503309, (%eax)
	setne	%al
	movzbl	%al, %eax
L19:
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	_KB_KeyEvent.lto_priv.0
	.def	_KB_KeyEvent.lto_priv.0;	.scl	2;	.type	32;	.endef
_KB_KeyEvent.lto_priv.0:
LFB8:
	.cfi_startproc
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L22
	movl	4(%esp), %eax
	movb	%al, _KB_LastScan
L22:
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__ZL14controlGetTimev.lto_priv.0
	.def	__ZL14controlGetTimev.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14controlGetTimev.lto_priv.0:
LFB9:
	.cfi_startproc
	movl	__ZZL14controlGetTimevE1t, %eax
	addl	$5, %eax
	movl	%eax, __ZZL14controlGetTimevE1t
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__ZL24controlHandleClickStatesiiiP18ControlButtonState;	.scl	3;	.type	32;	.endef
__ZL24controlHandleClickStatesiiiP18ControlButtonState:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	%edx, (%esp)
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ecx, %eax
	movl	%esi, -8(%ebp)
	subl	$1, %ecx
	.cfi_offset 6, -16
	js	L39
	movl	%edx, %esi
	movzbl	__ZL24CONTROL_DoubleClickSpeed.lto_priv.0, %edx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	addl	%edx, %esi
	leal	(%eax,%eax,2), %edx
	movl	8(%ebp), %eax
	movl	%esi, 4(%esp)
	xorl	%esi, %esi
	leal	-20(%eax,%edx,8), %eax
	jmp	L38
	.p2align 4,,10
	.p2align 3
L30:
	cmpl	$2, %edi
	jne	L37
	movl	$0, 16(%eax)
L37:
	subl	$1, %ecx
	movl	$0, (%eax)
	subl	$24, %eax
	cmpl	$-1, %ecx
	je	L45
L38:
	movl	%ebx, %edx
	movl	$0, 4(%eax)
	movl	16(%eax), %edi
	sarl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 12(%eax)
	je	L30
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	L31
	movl	$1, (%eax)
	testl	%edi, %edi
	je	L32
	movl	(%esp), %edi
	cmpl	%edi, 8(%eax)
	jge	L33
L32:
	movl	4(%esp), %esi
	movl	$1, 16(%eax)
	movl	%esi, 8(%eax)
L34:
	movl	%edx, %esi
L46:
	subl	$1, %ecx
	subl	$24, %eax
	cmpl	$-1, %ecx
	jne	L38
L45:
	movl	%esi, %eax
	movl	-4(%ebp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L31:
	.cfi_restore_state
	cmpl	$2, %edi
	jne	L34
	movl	$1, 4(%eax)
	movl	%edx, %esi
	jmp	L46
	.p2align 4,,10
	.p2align 3
L33:
	jle	L34
	movl	$1, %esi
	xorl	%edi, %edi
	movl	$2, 16(%eax)
	movl	%esi, 4(%eax)
	movl	%edx, %esi
	movl	%edi, 8(%eax)
	jmp	L46
	.p2align 4,,10
	.p2align 3
L39:
	.cfi_restore 7
	xorl	%esi, %esi
	movl	-12(%ebp), %ebx
	movl	%esi, %eax
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	_ov_pcm_total;	.scl	3;	.type	32;	.endef
_ov_pcm_total:
LFB11:
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
	cmpl	$1, 88(%eax)
	jle	L50
	movl	%eax, %ecx
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L50
	movl	52(%ecx), %eax
	cmpl	%edx, %eax
	jle	L50
	cmpl	$-1, %edx
	je	L57
	sall	$4, %edx
	addl	68(%ecx), %edx
	movl	8(%edx), %esi
	movl	12(%edx), %edi
L47:
	movl	%esi, %eax
	movl	%edi, %edx
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L57:
	.cfi_restore_state
	xorl	%esi, %esi
	xorl	%edi, %edi
	testl	%eax, %eax
	je	L47
	movl	68(%ecx), %edx
	sall	$4, %eax
	addl	%edx, %eax
L52:
	addl	8(%edx), %esi
	adcl	12(%edx), %edi
	addl	$16, %edx
	cmpl	%eax, %edx
	jne	L52
	movl	%esi, %eax
	movl	%edi, %edx
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L50:
	.cfi_restore_state
	movl	$-131, %esi
	movl	$-1, %edi
	jmp	L47
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__ZL11read_vorbisPvjjS_;	.scl	3;	.type	32;	.endef
__ZL11read_vorbisPvjjS_:
LFB14:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	44(%esp), %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	32(%esp), %edi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	call	*__imp___errno
	movl	$0, (%eax)
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	cmpl	%eax, %ecx
	je	L58
	movl	40(%esp), %edx
	testl	%edx, %edx
	je	L58
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	jmp	L61
	.p2align 4,,10
	.p2align 3
L68:
	addl	%ebx, %edi
	cmpl	%ebp, 40(%esp)
	je	L67
L61:
	subl	%eax, %ecx
	cmpl	36(%esp), %ecx
	movl	%ecx, %ebx
	cmovg	36(%esp), %ebx
	addl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	addl	$1, %ebp
	movl	%ebx, 8(%esp)
	call	_memcpy
	movl	8(%esi), %eax
	movl	4(%esi), %ecx
	addl	%ebx, %eax
	movl	%eax, 8(%esi)
	cmpl	%ecx, %eax
	jne	L68
	movl	12(%esp), %ebx
	.cfi_restore 3
L58:
	movl	%ebp, %eax
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L67:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %ebp
	movl	12(%esp), %ebx
	.cfi_restore 3
	jmp	L58
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC1:
	.ascii "divider must be != 0\0"
LC2:
	.ascii "libdivide_internal_u64_gen\0"
	.align 4
LC3:
	.ascii "libdivide.h:%d: %s(): Error: %s\12\0"
	.text
	.p2align 4
	.def	__ZL17MV_GetNextXABlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL17MV_GetNextXABlockP9VoiceNode:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$10604, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	4(%eax), %edi
	movl	8(%eax), %ebx
	movl	%eax, 32(%esp)
	movl	(%eax), %eax
	movl	%eax, 164(%esp)
L70:
	movl	%edi, %esi
	movl	$2352, %eax
	subl	%ebx, %esi
	cmpl	%eax, %esi
	cmova	%eax, %esi
	movl	164(%esp), %eax
	addl	%ebx, %eax
	movl	%esi, 8(%esp)
	addl	%esi, %ebx
	movl	%eax, 4(%esp)
	leal	188(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	32(%esp), %eax
	movl	%ebx, 8(%eax)
	cmpb	$100, 234(%esp)
	jne	L70
	movzbl	235(%esp), %eax
	movl	8(%ebp), %edi
	movl	%eax, %edx
	andl	$12, %eax
	andl	$3, %edx
	addl	$1, %edx
	cmpb	$4, %al
	movl	$18900, %eax
	movb	%dl, 100(%esp)
	movsbl	%dl, %edx
	movl	%edx, 72(%edi)
	movl	$37800, %edi
	cmovne	%edi, %eax
	movl	8(%ebp), %edi
	movl	%eax, 128(%esp)
	movl	%eax, 100(%edi)
	movl	_MV_MixRate, %eax
	movl	88(%edi), %edi
	cltd
	movl	%eax, %esi
	movl	%eax, 104(%esp)
	movl	%eax, 156(%esp)
	movl	__ZZ9divideu64E5lastd.lto_priv.3, %eax
	movl	%edx, 160(%esp)
	movl	%edi, 148(%esp)
	movl	%edx, %edi
	movl	__ZZ9divideu64E5lastd.lto_priv.3+4, %edx
	xorl	%esi, %eax
	xorl	%edi, %edx
	orl	%edx, %eax
	je	L135
	movl	156(%esp), %esi
	movl	160(%esp), %edi
	movl	%esi, %eax
	movl	%esi, __ZZ9divideu64E5lastd.lto_priv.3
	orl	%edi, %eax
	movl	%edi, __ZZ9divideu64E5lastd.lto_priv.3+4
	je	L136
	movl	160(%esp), %edx
	testl	%edx, %edx
	je	L75
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 124(%esp)
L76:
	movl	156(%esp), %esi
	movl	160(%esp), %edi
	movl	$63, %eax
	subl	124(%esp), %eax
	movl	%eax, 140(%esp)
	movl	%eax, %ebx
	movl	%edi, %edx
	movb	%al, 152(%esp)
	movl	%esi, %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%eax, %esi
	andl	%edx, %edi
	movl	%esi, %eax
	orl	%edi, %eax
	jne	L77
	movl	148(%esp), %eax
	mull	128(%esp)
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3+4
	movb	%bl, __ZZ9divideu64E4udiv.lto_priv.3+8
	movl	%eax, %esi
	movl	%edx, %edi
L134:
	movzbl	152(%esp), %ecx
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	andl	$32, %ecx
	cmovne	%edi, %esi
L91:
	movl	8(%ebp), %eax
	movl	8(%ebp), %edi
	movl	%esi, 104(%eax)
	movl	%esi, %eax
	sall	$8, %eax
	subl	%esi, %eax
	movl	%eax, 92(%edi)
	xorl	%eax, %eax
	cmpl	$16, 68(%edi)
	sete	%al
	xorl	%edx, %edx
	addl	%eax, %eax
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	cmpb	$2, 100(%esp)
	je	L137
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	8(%ebp), %edi
	movl	$56, %esi
	leal	2540(%esp), %ebx
	movl	%ebx, 92(%esp)
	movl	%eax, 12(%edi)
	movl	32(%esp), %eax
	movl	12(%eax), %edi
	movl	16(%eax), %eax
	movl	%eax, 152(%esp)
	leal	236(%esp), %eax
	movl	%eax, 76(%esp)
L95:
	movl	%esi, 140(%esp)
	movl	%esi, 68(%esp)
	movl	%eax, 84(%esp)
	movl	%eax, 72(%esp)
	movl	%edi, %eax
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L107:
	movl	76(%esp), %ecx
	movl	%edi, %edx
	movl	140(%esp), %ebx
	movl	%edi, %esi
	andl	$1, %edx
	sarl	%esi
	movl	%edi, 80(%esp)
	movzbl	4(%ecx,%edi), %ecx
	sall	$2, %edx
	subl	$56, %ebx
	movl	%edx, 108(%esp)
	movl	%ecx, %edx
	movl	%ebx, 164(%esp)
	movl	$12, %ebx
	movl	164(%esp), %edi
	andl	$15, %edx
	subl	%edx, %ebx
	movl	%ecx, %edx
	sarb	$4, %dl
	movl	%ebx, 124(%esp)
	andl	$3, %edx
	movl	__ZL2K0(,%edx,4), %ecx
	movl	__ZL2K1(,%edx,4), %edx
	movl	%ecx, %ebx
	movzwl	%cx, %ecx
	movl	%ecx, 116(%esp)
	movl	%edx, %ecx
	sarl	$16, %ebx
	sarl	$16, %ecx
	negl	%ebx
	movl	%ecx, 128(%esp)
	movzwl	%dx, %ecx
	movl	152(%esp), %edx
	movl	%ecx, 132(%esp)
	movl	84(%esp), %ecx
	movl	%eax, 152(%esp)
	addl	%esi, %ecx
	movl	%ebx, 104(%esp)
	movl	%ecx, 100(%esp)
	jmp	L106
	.p2align 4,,10
	.p2align 3
L139:
	movl	%eax, %edx
	movl	$-32768, %ebx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	movl	%ebx, %ecx
	movzbl	%bh, %ebx
L105:
	movl	92(%esp), %esi
	movl	152(%esp), %edx
	movb	%cl, (%esi,%edi)
	addl	$2, %edi
	movb	%bl, 2539(%esp,%edi)
	cmpl	140(%esp), %edi
	je	L138
	movl	%eax, 152(%esp)
L106:
	movl	100(%esp), %esi
	movzbl	108(%esp), %ecx
	movsbl	16(%esi,%edi,2), %ebx
	sarl	%cl, %ebx
	movl	%ebx, %ecx
	movl	%ebx, %esi
	orl	$-16, %ebx
	andl	$15, %esi
	andl	$8, %ecx
	movl	%eax, %ecx
	movzwl	%ax, %eax
	cmovne	%ebx, %esi
	movl	%edx, %ebx
	movzwl	%dx, %edx
	movl	%eax, 156(%esp)
	movl	%edx, 164(%esp)
	movl	104(%esp), %edx
	sarl	$16, %ecx
	sarl	$16, %ebx
	movl	%edx, %eax
	andl	%ecx, %eax
	sall	$16, %eax
	movl	%eax, 148(%esp)
	movl	156(%esp), %eax
	andl	%edx, %eax
	movl	%eax, %edx
	movl	148(%esp), %eax
	addl	%eax, %edx
	movl	116(%esp), %eax
	imull	%eax, %ecx
	addl	%edx, %ecx
	movl	156(%esp), %edx
	imull	%eax, %edx
	movl	%edx, %eax
	movl	128(%esp), %edx
	shrl	$16, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	movsbl	%cl, %esi
	movzbl	124(%esp), %ecx
	sall	%cl, %esi
	leal	(%eax,%esi,2), %eax
	movl	%edx, %esi
	imull	%ebx, %esi
	imull	164(%esp), %edx
	sall	$16, %esi
	leal	(%edx,%esi), %ecx
	movl	132(%esp), %esi
	movl	164(%esp), %edx
	imull	%esi, %ebx
	imull	%esi, %edx
	addl	%ecx, %ebx
	shrl	$16, %edx
	addl	%edx, %ebx
	addl	%ebx, %eax
	cmpl	$65535, %eax
	jle	L139
	movl	$127, %ebx
	movl	$-1, %ecx
	jmp	L105
L75:
	bsrl	156(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 124(%esp)
	jmp	L76
	.p2align 4,,10
	.p2align 3
L138:
	leal	56(%edi), %edx
	movl	80(%esp), %edi
	subl	$112, 84(%esp)
	movl	%edx, 140(%esp)
	addl	$1, %edi
	cmpl	$8, %edi
	jne	L107
	movl	68(%esp), %esi
	movl	%eax, %edi
	movl	72(%esp), %eax
	movb	%bl, 164(%esp)
	subl	$-128, 76(%esp)
	movl	92(%esp), %edx
	addl	$448, %esi
	subl	$768, %eax
	cmpl	%edx, 76(%esp)
	jne	L95
	movl	32(%esp), %eax
	movl	152(%esp), %ebx
	movb	%cl, 10602(%esp)
	movzbl	164(%esp), %edx
	movl	%ebx, 16(%eax)
	leal	28(%eax), %ebx
	movl	%edi, 12(%eax)
	movl	76(%esp), %eax
	movb	%dl, 10603(%esp)
	movl	$8064, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
	movl	$264241152, %eax
L103:
	movl	8(%ebp), %edi
	movl	%eax, 96(%edi)
	movl	32(%esp), %eax
	movl	%ebx, 16(%edi)
	movl	$0, 108(%edi)
	movl	8(%eax), %edi
	cmpl	%edi, 4(%eax)
	je	L109
L111:
	movl	$1, %eax
L69:
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
L137:
	.cfi_restore_state
	orl	$4, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%edi)
	movl	32(%esp), %eax
	movl	12(%eax), %ebx
	movl	16(%eax), %edi
	movl	20(%eax), %esi
	movl	24(%eax), %eax
	movl	%edi, 140(%esp)
	movl	%eax, 148(%esp)
	leal	236(%esp), %eax
	movl	%esi, 52(%esp)
	movl	%ebx, 152(%esp)
	movl	%eax, 40(%esp)
	leal	2540(%esp), %eax
	movl	%eax, 92(%esp)
	xorl	%eax, %eax
L94:
	movl	40(%esp), %ebx
	movl	%eax, 48(%esp)
	xorl	%edi, %edi
	movl	%eax, 24(%esp)
	leal	16(%ebx), %ecx
	subl	$-128, %ebx
	movl	%ecx, 28(%esp)
	movl	%ebx, 36(%esp)
L101:
	movl	40(%esp), %ebx
	movl	$12, %ecx
	movl	%ecx, %esi
	movzbl	4(%ebx,%edi), %eax
	movzbl	5(%ebx,%edi), %ebx
	movl	%eax, %edx
	sarb	$4, %al
	andl	$15, %edx
	andl	$3, %eax
	subl	%edx, %esi
	movl	__ZL2K0(,%eax,4), %edx
	movl	__ZL2K1(,%eax,4), %eax
	movl	%esi, 60(%esp)
	movl	%edx, %esi
	movzwl	%dx, %edx
	movl	%edx, 64(%esp)
	movl	%eax, %edx
	movzwl	%ax, %eax
	sarl	$16, %esi
	movl	%eax, 72(%esp)
	leal	1(%edi), %eax
	sarl	$16, %edx
	negl	%esi
	sarl	%eax
	movl	%edx, 68(%esp)
	movl	%eax, 76(%esp)
	movl	%ebx, %eax
	andl	$15, %eax
	subl	%eax, %ecx
	movl	%ebx, %eax
	sarb	$4, %al
	movl	%ecx, 80(%esp)
	movl	152(%esp), %ecx
	andl	$3, %eax
	movl	__ZL2K0(,%eax,4), %edx
	movl	__ZL2K1(,%eax,4), %eax
	movl	%edx, %ebx
	sarl	$16, %ebx
	movl	%ebx, 84(%esp)
	movzwl	%dx, %ebx
	movl	%ebx, 100(%esp)
	movl	%eax, %ebx
	movzwl	%ax, %eax
	sarl	$16, %ebx
	movl	%eax, 108(%esp)
	movl	%edi, %eax
	movl	%ebx, 104(%esp)
	movl	28(%esp), %ebx
	sarl	%eax
	movl	%eax, 56(%esp)
	addl	%eax, %ebx
	movl	%ebx, 164(%esp)
	movl	92(%esp), %ebx
	addl	48(%esp), %ebx
	movl	%ebx, 156(%esp)
	movl	36(%esp), %ebx
	addl	%ebx, %eax
	movl	52(%esp), %ebx
	movl	%eax, 124(%esp)
	movl	148(%esp), %eax
	movl	%ebx, 148(%esp)
	movl	%eax, 132(%esp)
	movl	140(%esp), %eax
	movl	%ecx, 140(%esp)
	movl	%esi, 52(%esp)
	movl	%edi, 44(%esp)
	movl	%ebx, %edi
	jmp	L100
	.p2align 4,,10
	.p2align 3
L141:
	movl	%esi, %eax
	movl	$-32768, %edx
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movb	%al, 116(%esp)
	movzbl	%ah, %eax
	movl	%eax, 128(%esp)
L97:
	movl	156(%esp), %ecx
	movzbl	116(%esp), %eax
	movl	76(%esp), %ebx
	movl	84(%esp), %esi
	movb	%al, (%ecx)
	movzbl	128(%esp), %eax
	movb	%al, 1(%ecx)
	movl	164(%esp), %eax
	subl	56(%esp), %eax
	movsbl	(%eax,%ebx), %eax
	movl	132(%esp), %ebx
	movl	%eax, %edx
	shrb	$4, %dl
	testl	%eax, %eax
	movl	%edi, %eax
	leal	-16(%edx), %ecx
	cmovs	%ecx, %edx
	movzwl	%di, %ecx
	movl	%ebx, %edi
	sarl	$16, %eax
	sarl	$16, %edi
	negl	%esi
	movzwl	%bx, %ebx
	movl	%edi, 132(%esp)
	movl	%eax, %edi
	movsbl	%dl, %edx
	andl	%esi, %edi
	andl	%ecx, %esi
	sall	$16, %edi
	addl	%edi, %esi
	movl	100(%esp), %edi
	imull	%edi, %eax
	imull	%edi, %ecx
	movl	132(%esp), %edi
	addl	%esi, %eax
	movl	108(%esp), %esi
	shrl	$16, %ecx
	addl	%ecx, %eax
	movzbl	80(%esp), %ecx
	sall	%cl, %edx
	leal	(%eax,%edx,2), %ecx
	movl	104(%esp), %eax
	movl	%eax, %edx
	imull	%ebx, %eax
	imull	%edi, %edx
	imull	%esi, %ebx
	imull	%esi, %edi
	sall	$16, %edx
	addl	%edx, %eax
	shrl	$16, %ebx
	leal	(%edi,%eax), %edx
	addl	%ebx, %edx
	leal	(%ecx,%edx), %edi
	cmpl	$65535, %edi
	jg	L116
	movl	%edi, %eax
	movl	$-32768, %edx
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, %ecx
	movzbl	%dh, %edx
L99:
	movl	156(%esp), %eax
	movl	148(%esp), %esi
	addl	$4, 164(%esp)
	movl	164(%esp), %ebx
	movb	%cl, 2(%eax)
	addl	$4, %eax
	movb	%dl, -1(%eax)
	movl	%esi, 132(%esp)
	movl	%eax, 156(%esp)
	movl	140(%esp), %eax
	cmpl	124(%esp), %ebx
	je	L140
	movl	152(%esp), %ecx
	movl	%edi, 148(%esp)
	movl	%ecx, 140(%esp)
L100:
	movl	164(%esp), %ebx
	movzbl	(%ebx), %edx
	movl	152(%esp), %ebx
	movl	%edx, %esi
	movl	%edx, %ecx
	orl	$-16, %ecx
	andl	$15, %esi
	andl	$8, %edx
	movl	%eax, %edx
	cmovne	%ecx, %esi
	sarl	$16, %edx
	movl	%ebx, %ecx
	movzwl	%ax, %eax
	movl	%edx, 128(%esp)
	movl	52(%esp), %edx
	sarl	$16, %ecx
	movzwl	%bx, %ebx
	movl	%eax, 152(%esp)
	movl	%edx, %eax
	andl	%ecx, %eax
	sall	$16, %eax
	movl	%eax, 116(%esp)
	movl	%edx, %eax
	andl	%ebx, %eax
	movl	%eax, %edx
	movl	116(%esp), %eax
	addl	%eax, %edx
	movl	64(%esp), %eax
	imull	%eax, %ecx
	imull	%eax, %ebx
	movl	68(%esp), %eax
	addl	%edx, %ecx
	movl	128(%esp), %edx
	shrl	$16, %ebx
	addl	%ecx, %ebx
	movl	%esi, %ecx
	movsbl	%cl, %esi
	movzbl	60(%esp), %ecx
	sall	%cl, %esi
	leal	(%ebx,%esi,2), %esi
	movl	%eax, %ebx
	imull	%edx, %ebx
	imull	152(%esp), %eax
	sall	$16, %ebx
	leal	(%eax,%ebx), %ecx
	movl	72(%esp), %eax
	movl	152(%esp), %ebx
	imull	%eax, %ebx
	imull	%eax, %edx
	movl	%ebx, %eax
	addl	%ecx, %edx
	shrl	$16, %eax
	addl	%eax, %edx
	addl	%edx, %esi
	movl	%esi, 152(%esp)
	cmpl	$65535, %esi
	jle	L141
	movb	$127, 128(%esp)
	movb	$-1, 116(%esp)
	jmp	L97
	.p2align 4,,10
	.p2align 3
L116:
	movl	$127, %edx
	movl	$-1, %ecx
	jmp	L99
L140:
	movl	%edi, 52(%esp)
	movl	44(%esp), %edi
	addl	$112, 48(%esp)
	addl	$2, %edi
	cmpl	$8, %edi
	jne	L101
	movl	24(%esp), %eax
	movl	36(%esp), %edi
	addl	$448, %eax
	cmpl	92(%esp), %edi
	je	L102
	movl	%edi, 40(%esp)
	jmp	L94
L135:
	movzbl	__ZZ9divideu64E4udiv.lto_priv.3+8, %eax
	movl	__ZZ9divideu64E4udiv.lto_priv.3, %ecx
	movl	__ZZ9divideu64E4udiv.lto_priv.3+4, %ebx
	movb	%al, 152(%esp)
L73:
	movl	148(%esp), %eax
	mull	128(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
	orl	%ebx, %eax
	je	L134
L90:
	movl	%ecx, %eax
	movl	%ebx, 156(%esp)
	mull	%esi
	movl	%ebx, %eax
	movl	%edi, 148(%esp)
	movl	%edx, 164(%esp)
	mull	%esi
	addl	164(%esp), %eax
	movl	%eax, 164(%esp)
	movl	%edi, %eax
	adcl	$0, %edx
	xorl	%ebx, %ebx
	movl	%edx, 168(%esp)
	mull	%ecx
	movl	164(%esp), %ecx
	addl	%ecx, %eax
	movl	%edi, %eax
	adcl	%ebx, %edx
	movl	168(%esp), %ebx
	xorl	%ecx, %ecx
	movl	%edx, 140(%esp)
	mull	156(%esp)
	movl	%ecx, 144(%esp)
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %eax
	movzbl	152(%esp), %ecx
	adcl	%ebx, %edx
	addl	140(%esp), %eax
	adcl	144(%esp), %edx
	movl	%eax, 164(%esp)
	movl	%edx, 168(%esp)
	testb	$64, %cl
	je	L92
	movl	164(%esp), %ebx
	movl	%esi, %eax
	movl	168(%esp), %esi
	movl	%edi, %edx
	subl	%ebx, %eax
	movl	%esi, %edi
	sbbl	%esi, %edx
	movl	%ebx, %esi
	shrdl	$1, %edx, %eax
	shrl	%edx
	addl	%eax, %esi
	adcl	%edx, %edi
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	andl	$32, %ecx
	cmovne	%edi, %esi
	jmp	L91
L77:
	movzbl	140(%esp), %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%esi, %eax
	cmpl	104(%esp), %eax
	movl	%eax, 116(%esp)
	movl	%edx, %eax
	sbbl	160(%esp), %eax
	movl	%edx, 120(%esp)
	movl	156(%esp), %eax
	movl	160(%esp), %edx
	jnc	L142
	movzbl	124(%esp), %ecx
	movl	116(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	movl	120(%esp), %edi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	shldl	%cl, %esi, %edi
	xorl	%ebx, %ebx
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %edi
	movl	%edx, 168(%esp)
	cmovne	%ebx, %esi
	movl	168(%esp), %ebx
	movl	%eax, 164(%esp)
	leal	180(%esp), %eax
	movl	%edi, 136(%esp)
	movl	%ebx, 84(%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, 132(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, (%esp)
	call	___udivmoddi4
	movl	164(%esp), %ecx
	movl	%eax, %ebx
	movl	%eax, 92(%esp)
	movl	%eax, 108(%esp)
	movl	164(%esp), %eax
	imull	%edx, %ecx
	movl	%edx, 96(%esp)
	movl	%edx, 112(%esp)
	mull	%ebx
	movl	180(%esp), %ebx
	movl	%ebx, %edi
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	jnc	L81
	subl	%ecx, %eax
	movl	164(%esp), %ecx
	sbbl	%ebx, %edx
	movl	168(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L82
	movl	$2, %eax
	xorl	%edx, %edx
L82:
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, 108(%esp)
	movl	%edi, 112(%esp)
L81:
	movl	108(%esp), %eax
	movl	84(%esp), %ebx
	movl	$0, 12(%esp)
	movl	168(%esp), %ecx
	movl	132(%esp), %esi
	movl	%ebx, 8(%esp)
	imull	%eax, %ecx
	movl	%esi, %edi
	xorl	%esi, %esi
	mull	164(%esp)
	addl	%ecx, %edx
	subl	%eax, %esi
	leal	172(%esp), %eax
	sbbl	%edx, %edi
	movl	%esi, 92(%esp)
	movl	%edi, 96(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, (%esp)
	call	___udivmoddi4
	movl	164(%esp), %ecx
	movl	%eax, %ebx
	movl	%eax, 84(%esp)
	movl	%eax, 132(%esp)
	movl	164(%esp), %eax
	imull	%edx, %ecx
	movl	%edx, 88(%esp)
	movl	%edx, 136(%esp)
	mull	%ebx
	movl	172(%esp), %ebx
	movl	%ebx, %edi
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	jnc	L83
	subl	%ecx, %eax
	movl	164(%esp), %ecx
	sbbl	%ebx, %edx
	movl	168(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L84
	movl	$2, %eax
	xorl	%edx, %edx
L84:
	movl	84(%esp), %esi
	movl	88(%esp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, 132(%esp)
	movl	%edi, 136(%esp)
L83:
	movl	132(%esp), %ebx
	movl	132(%esp), %esi
	xorl	%edi, %edi
	movl	168(%esp), %ecx
	movl	164(%esp), %eax
	movl	%edi, 88(%esp)
	movl	%esi, 84(%esp)
	movl	92(%esp), %esi
	imull	%ebx, %ecx
	mull	%ebx
	movl	%esi, %edi
	xorl	%esi, %esi
	addl	%ecx, %edx
	subl	%eax, %esi
	movzbl	124(%esp), %ecx
	sbbl	%edx, %edi
	xorl	%eax, %eax
	movl	160(%esp), %edx
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	cmovne	%edi, %esi
	cmovne	%eax, %edi
	movl	156(%esp), %eax
	movl	%esi, %ecx
	movl	%esi, 132(%esp)
	movl	%edi, %ebx
	movl	108(%esp), %esi
	movl	%edi, 136(%esp)
	movl	%esi, %edi
	orl	88(%esp), %edi
	subl	%ecx, %eax
	movl	84(%esp), %esi
	sbbl	%ebx, %edx
	cmpl	116(%esp), %eax
	movl	%edx, %eax
	sbbl	120(%esp), %eax
	jnc	L85
	addl	$1, %esi
	adcl	$0, %edi
	movl	%esi, %ecx
	movl	%edi, %ebx
L86:
	movzbl	152(%esp), %eax
	movl	%ecx, __ZZ9divideu64E4udiv.lto_priv.3
	movl	%ebx, __ZZ9divideu64E4udiv.lto_priv.3+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.3+8
	jmp	L73
L102:
	movl	32(%esp), %edi
	movl	52(%esp), %esi
	movb	%cl, 10602(%esp)
	movl	140(%esp), %eax
	movl	152(%esp), %ebx
	movb	%dl, 10603(%esp)
	movl	%esi, 20(%edi)
	movl	%eax, 16(%edi)
	movzbl	116(%esp), %eax
	movl	%ebx, 12(%edi)
	leal	28(%edi), %ebx
	movb	%al, 10600(%esp)
	movzbl	128(%esp), %eax
	movb	%al, 10601(%esp)
	movl	148(%esp), %eax
	movl	%eax, 24(%edi)
	movl	36(%esp), %eax
	movl	$8064, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memcpy
	movl	$132120576, %eax
	jmp	L103
L109:
	movl	8(%ebp), %edi
	xorl	%eax, %eax
	movl	40(%edi), %edx
	testl	%edx, %edx
	je	L69
	movl	32(%esp), %eax
	xorps	%xmm0, %xmm0
	movl	$20, 8(%eax)
	movups	%xmm0, 12(%eax)
	jmp	L111
L92:
	movl	164(%esp), %esi
	movl	168(%esp), %edi
	jmp	L134
L142:
	addl	$1, %eax
	movl	116(%esp), %esi
	movl	120(%esp), %edi
	adcl	$0, %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jnc	L143
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3
	movzbl	140(%esp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3+4
L133:
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.3+8
	movl	148(%esp), %eax
	mull	128(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	jmp	L134
L85:
	movl	%esi, %eax
	movl	%edi, %edx
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 164(%esp)
	movl	132(%esp), %eax
	movl	%edx, 168(%esp)
	movl	136(%esp), %edx
	movl	%eax, %esi
	addl	%eax, %esi
	movl	%edx, %edi
	adcl	%edx, %edi
	cmpl	104(%esp), %esi
	movl	%edi, %ebx
	sbbl	160(%esp), %ebx
	jnc	L87
	cmpl	%eax, %esi
	sbbl	%edx, %edi
	jnc	L144
L87:
	movl	164(%esp), %eax
	movl	168(%esp), %edx
	addl	$2, %eax
	movl	%eax, %ecx
	movzbl	140(%esp), %eax
	adcl	$0, %edx
	movl	%edx, %ebx
	orl	$64, %eax
	movb	%al, 152(%esp)
	jmp	L86
L144:
	movl	164(%esp), %eax
	movl	168(%esp), %edx
	addl	$1, %eax
	movl	%eax, %ecx
	movzbl	140(%esp), %eax
	adcl	$0, %edx
	movl	%edx, __ZZ9divideu64E4udiv.lto_priv.3+4
	movl	%edx, %ebx
	orl	$64, %eax
	movl	%ecx, __ZZ9divideu64E4udiv.lto_priv.3
	movb	%al, 152(%esp)
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.3+8
	movl	148(%esp), %eax
	mull	128(%esp)
	movl	%eax, %esi
	movl	%edx, %edi
	jmp	L90
L136:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC1, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.p2align 4,,10
	.p2align 3
L143:
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3
	movl	%ecx, %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.3+4
	orl	$64, %eax
	movb	%al, 152(%esp)
	jmp	L133
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC4:
	.ascii "LIBASYNC_NUM_THREADS\0"
	.text
	.p2align 4
	.globl	_MV_PlayVorbis
	.def	_MV_PlayVorbis;	.scl	2;	.type	32;	.endef
_MV_PlayVorbis:
LFB23:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_MV_Installed, %edx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	68(%esp), %esi
	testl	%edx, %edx
	je	L170
	movl	$1256, %edx
	movl	%esi, %eax
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	call	__Z13MV_AllocVoiceij
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L171
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
	movl	36(%esp), %edx
	movl	20(%eax), %eax
	movl	%edx, (%eax)
	movl	40(%esp), %edx
	addl	$736, %eax
	movl	$0, -728(%eax)
	movl	%edx, -732(%eax)
	movl	52(%esp), %edx
	movl	%edx, 512(%eax)
	movl	%eax, 24(%ebx)
	movl	76(%esp), %eax
	movb	$4, 64(%ebx)
	movl	%eax, 44(%ebx)
	movl	44(%esp), %eax
	movl	$16, 68(%ebx)
	notl	%eax
	movl	%esi, 120(%ebx)
	shrl	$31, %eax
	movl	$0, 28(%ebx)
	movl	%eax, 40(%ebx)
	movl	$1, %eax
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$__ZL21MV_GetNextVorbisBlockP9VoiceNode, 8(%ebx)
	xchgl	112(%ebx), %eax
	xorl	%eax, %eax
	cmpl	$2, 72(%ebx)
	movl	60(%esp), %ecx
	sete	%al
	xorl	%edx, %edx
	sall	$2, %eax
	cmpl	$16, 68(%ebx)
	sete	%dl
	addl	%edx, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	movl	56(%esp), %edx
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%ebx)
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	cmpb	$0, __ZGVZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	je	L172
L150:
	movl	$64, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	$64, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %esi
	testl	%eax, %eax
	je	L155
	movl	$1, (%eax)
	movl	$__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %ecx
	movb	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE11vtable_implE, 12(%eax)
	movl	%ebx, 20(%eax)
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, (%esi)
	leal	12(%esp), %eax
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	call	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	12(%esp), %edi
	testl	%edi, %edi
	je	L157
	movl	12(%edi), %eax
	leal	16(%esp), %ecx
	movl	$0, 16(%esp)
	movl	8(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L158
	leal	16(%esp), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L158:
	lock subl	$1, (%edi)
	je	L173
L157:
	movl	124(%ebx), %eax
	testl	%eax, %eax
	je	L159
L175:
	lock subl	$1, (%eax)
	je	L174
L159:
	movl	%esi, 124(%ebx)
	movl	116(%ebx), %eax
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebx
	.cfi_restore 3
L145:
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L172:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	$LC4, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L151
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtoul
	movl	$1, %edx
	testl	%eax, %eax
	cmove	%edx, %eax
L152:
	call	__ZN5async20threadpool_schedulerC2Ej.constprop.0
	movl	$___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0, (%esp)
	movb	$1, __ZGVZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	call	_atexit
	jmp	L150
	.p2align 4,,10
	.p2align 3
L173:
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*(%eax)
	movl	124(%ebx), %eax
	testl	%eax, %eax
	jne	L175
	jmp	L159
	.p2align 4,,10
	.p2align 3
L174:
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	jmp	L159
	.p2align 4,,10
	.p2align 3
L155:
	movl	$64, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L151:
	movl	__ZZN5async20hardware_concurrencyEvE5value, %eax
	cmpb	$0, __ZGVZN5async20hardware_concurrencyEvE5value
	je	L176
L154:
	testl	%eax, %eax
	movl	$1, %edx
	cmove	%edx, %eax
	jmp	L152
	.p2align 4,,10
	.p2align 3
L170:
	.cfi_restore 3
	.cfi_restore 7
	movl	$1, _MV_ErrorCode
L147:
	movl	$-1, %eax
	jmp	L145
	.p2align 4,,10
	.p2align 3
L176:
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	call	__ZNSt6thread20hardware_concurrencyEv
	movb	$1, __ZGVZN5async20hardware_concurrencyEvE5value
	movl	%eax, __ZZN5async20hardware_concurrencyEvE5value
	jmp	L154
	.p2align 4,,10
	.p2align 3
L171:
	.cfi_restore 7
	movl	$3, _MV_ErrorCode
	movl	20(%esp), %ebx
	.cfi_restore 3
	jmp	L147
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	_MV_PlayVorbis3D
	.def	_MV_PlayVorbis3D;	.scl	2;	.type	32;	.endef
_MV_PlayVorbis3D:
LFB45:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %edx
	movl	68(%esp), %eax
	movl	72(%esp), %ecx
	testl	%edx, %edx
	je	L184
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	testl	%ecx, %ecx
	jns	L180
	negl	%ecx
	addl	$64, %eax
L180:
	movl	$255, %edx
	cmpl	%edx, %ecx
	cmovle	%ecx, %edx
	andl	$127, %eax
	sall	$7, %eax
	sall	$7, %edx
	sarl	$8, %edx
	addl	%edx, %eax
	movzbl	_MV_PanTable+1(%eax,%eax), %ebx
	movzbl	_MV_PanTable(%eax,%eax), %edx
	movl	$255, %eax
	movl	$-1, 12(%esp)
	subl	%ecx, %eax
	cmpl	$255, %ecx
	movl	$0, %ecx
	cmovge	%ecx, %eax
	movl	84(%esp), %ecx
	movl	%ebx, 28(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	%ecx, 40(%esp)
	movl	80(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%ecx, 36(%esp)
	movl	76(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%eax, (%esp)
	call	_MV_PlayVorbis
	movl	44(%esp), %ebx
	.cfi_restore 3
L177:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L184:
	.cfi_restore_state
	movl	$1, _MV_ErrorCode
	movl	$-1, %eax
	jmp	L177
	.cfi_endproc
LFE45:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE:
LFB46:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L185
	movl	%esi, 16(%esp)
	movzbl	4(%ebx), %eax
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L213
L187:
	movzbl	4(%ebx), %eax
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L189
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L192
	jmp	L190
	.p2align 4
	.p2align 4,,10
	.p2align 3
L191:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L190
L192:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L191
	lock subl	$1, (%edx)
	jne	L191
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L192
	.p2align 4
	.p2align 3
L190:
	cmpl	$3, %esi
	ja	L214
	movl	20(%esp), %edi
	.cfi_restore 7
L193:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L185:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L189:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L193
	cmpl	$3, %esi
	jbe	L193
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L193
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L193
	.p2align 4,,10
	.p2align 3
L213:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L187
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L187
	.p2align 4,,10
	.p2align 3
L214:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L194
	call	_mi_free
L194:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L193
	.cfi_endproc
LFE46:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE:
LFB57:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L215
	movl	%esi, 16(%esp)
	movzbl	4(%ebx), %eax
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L243
L217:
	movzbl	4(%ebx), %eax
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L219
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L222
	jmp	L220
	.p2align 4
	.p2align 4,,10
	.p2align 3
L221:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L220
L222:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L221
	lock subl	$1, (%edx)
	jne	L221
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L222
	.p2align 4
	.p2align 3
L220:
	cmpl	$3, %esi
	ja	L244
	movl	20(%esp), %edi
	.cfi_restore 7
L223:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L215:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L219:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L223
	cmpl	$3, %esi
	jbe	L223
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L223
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L223
	.p2align 4,,10
	.p2align 3
L243:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L217
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L217
	.p2align 4,,10
	.p2align 3
L244:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L224
	call	_mi_free
L224:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L223
	.cfi_endproc
LFE57:
	.p2align 4
	.def	__ZN5async6detail11task_resultIiE7destroyEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail11task_resultIiE7destroyEPNS0_9task_baseE:
LFB59:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	je	L245
	movl	%esi, 16(%esp)
	cmpb	$4, 4(%ebx)
	.cfi_offset 6, -12
	je	L273
L247:
	movzbl	4(%ebx), %eax
	movl	8(%ebx), %esi
	testl	$2, %esi
	je	L249
	movl	%esi, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	andl	$-4, %ecx
	movl	(%ecx), %eax
	movl	%ecx, %edi
	movl	4(%ecx), %ecx
	cmpl	%ecx, %eax
	jne	L252
	jmp	L250
	.p2align 4
	.p2align 4,,10
	.p2align 3
L251:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L250
L252:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L251
	lock subl	$1, (%edx)
	jne	L251
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edx), %eax
	movl	%edx, (%esp)
	call	*(%eax)
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L252
	.p2align 4
	.p2align 3
L250:
	cmpl	$3, %esi
	ja	L274
	movl	20(%esp), %edi
	.cfi_restore 7
L253:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	16(%esp), %esi
	.cfi_restore 6
L245:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L249:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	testl	$1, %esi
	jne	L253
	cmpl	$3, %esi
	jbe	L253
	andl	$-4, %esi
	lock subl	$1, (%esi)
	jne	L253
	movl	12(%esi), %eax
	movl	%esi, (%esp)
	call	*(%eax)
	jmp	L253
	.p2align 4,,10
	.p2align 3
L273:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L247
	leal	16(%ebx), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
	jmp	L247
	.p2align 4,,10
	.p2align 3
L274:
	.cfi_offset 7, -8
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	_pthread_mutex_destroy
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L254
	call	_mi_free
L254:
	movl	%edi, %eax
	call	_mi_free
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L253
	.cfi_endproc
LFE59:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE:
LFB61:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	(%eax), %edx
	movl	$0, (%eax)
	leal	4(%esp), %eax
	movl	%edx, 16(%ecx)
	movb	$4, 4(%ecx)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	addl	$8, %ecx
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE:
LFB62:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	(%eax), %edx
	movl	$0, (%eax)
	leal	4(%esp), %eax
	movl	%edx, 16(%ecx)
	movb	$4, 4(%ecx)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	addl	$8, %ecx
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	_MV_PlayXA
	.def	_MV_PlayXA;	.scl	2;	.type	32;	.endef
_MV_PlayXA:
LFB64:
	.cfi_startproc
	movl	_MV_Installed, %eax
	testl	%eax, %eax
	je	L287
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$8096, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 3, -12
	movl	40(%ebp), %eax
	call	__Z13MV_AllocVoiceij
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L288
	movl	20(%eax), %eax
	movl	8(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$28, %eax
	movl	$20, -20(%eax)
	movups	%xmm0, -16(%eax)
	movl	%edx, -24(%eax)
	movl	%ebx, 8064(%eax)
	movl	%eax, 24(%ebx)
	movl	24(%ebp), %eax
	movb	$6, 64(%ebx)
	movl	$__ZL17MV_GetNextXABlockP9VoiceNode, 8(%ebx)
	call	__Z14PITCH_GetScalei
	movl	$16, 68(%ebx)
	movl	%eax, 88(%ebx)
	movl	40(%ebp), %eax
	movl	%eax, 120(%ebx)
	movl	48(%ebp), %eax
	movl	%eax, 44(%ebx)
	xorl	%eax, %eax
	xchgl	112(%ebx), %eax
	movl	16(%ebp), %eax
	movl	32(%ebp), %ecx
	movl	28(%ebp), %edx
	notl	%eax
	shrl	$31, %eax
	movl	$0, 28(%ebx)
	movl	%eax, 40(%ebx)
	movl	44(%ebp), %eax
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	%eax, 4(%esp)
	movl	36(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	%ebx, %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	movl	116(%ebx), %eax
L279:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L288:
	.cfi_restore_state
	movl	$3, _MV_ErrorCode
	movl	$-1, %eax
	jmp	L279
	.p2align 4,,10
	.p2align 3
L287:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	movl	$1, _MV_ErrorCode
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	_MV_PlayXA3D
	.def	_MV_PlayXA3D;	.scl	2;	.type	32;	.endef
_MV_PlayXA3D:
LFB65:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %eax
	movl	72(%esp), %edx
	testl	%eax, %eax
	je	L302
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	movl	68(%esp), %eax
	testl	%edx, %edx
	js	L303
	andl	$127, %eax
	cmpl	$255, %edx
	jg	L293
	testl	%edx, %edx
	jne	L295
	sall	$8, %eax
	movzbl	_MV_PanTable(%eax), %ecx
	movzbl	_MV_PanTable+1(%eax), %ebx
L296:
	movl	$255, %eax
	subl	%edx, %eax
L297:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	84(%esp), %edx
	movl	%ebx, 28(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edx, 40(%esp)
	movl	80(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 24(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, (%esp)
	call	_MV_PlayXA
	movl	44(%esp), %ebx
	.cfi_restore 3
L289:
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L293:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -8
	sall	$8, %eax
	movzbl	_MV_PanTable+254(%eax), %ecx
	movzbl	_MV_PanTable+255(%eax), %ebx
	xorl	%eax, %eax
	jmp	L297
	.p2align 4,,10
	.p2align 3
L303:
	addl	$64, %eax
	andl	$127, %eax
	cmpl	$-255, %edx
	jl	L293
	negl	%edx
L295:
	movl	%edx, %ecx
	sall	$7, %eax
	sall	$7, %ecx
	sarl	$8, %ecx
	addl	%ecx, %eax
	movzbl	_MV_PanTable(%eax,%eax), %ecx
	movzbl	_MV_PanTable+1(%eax,%eax), %ebx
	xorl	%eax, %eax
	cmpl	$255, %edx
	je	L297
	jmp	L296
	.p2align 4,,10
	.p2align 3
L302:
	.cfi_restore 3
	movl	$1, _MV_ErrorCode
	movl	$-1, %eax
	jmp	L289
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	_MV_PlayXMP
	.def	_MV_PlayXMP;	.scl	2;	.type	32;	.endef
_MV_PlayXMP:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$68, %esp
	movl	_MV_Installed, %edx
	movl	8(%ebp), %eax
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%ebp), %esi
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%ecx, -16(%ebp)
	movl	48(%ebp), %edi
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	44(%ebp), %eax
	movl	%eax, -56(%ebp)
	testl	%edx, %edx
	.cfi_offset 1, -24
	je	L329
	movl	$12, %edx
	movl	%esi, %eax
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	call	__Z13MV_AllocVoiceij
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L330
	movl	$0, 16(%eax)
	movb	$7, 64(%eax)
	movl	$1, %eax
	xchgl	112(%ebx), %eax
	movl	-40(%ebp), %eax
	movl	$__ZL18MV_GetNextXMPBlockP9VoiceNode, 8(%ebx)
	call	__Z14PITCH_GetScalei
	movl	$2, %edx
	movl	%esi, 120(%ebx)
	movl	-48(%ebp), %ecx
	movl	%eax, 88(%ebx)
	movl	$16, %eax
	movl	%eax, 68(%ebx)
	movl	_MV_MixRate, %eax
	movl	%edx, 72(%ebx)
	movl	-44(%ebp), %edx
	movl	%eax, 100(%ebx)
	movl	-36(%ebp), %eax
	movl	%edi, 44(%ebx)
	notl	%eax
	movl	$0, 28(%ebx)
	shrl	$31, %eax
	movl	$0, 32(%ebx)
	movl	%eax, 40(%ebx)
	xorl	%eax, %eax
	cmpl	$1, _MV_Channels
	sete	%al
	movl	$0, 36(%ebx)
	orl	$6, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%ebx)
	movl	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	20(%ebx), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%eax)
	movl	-32(%ebp), %edx
	movl	%edx, 4(%eax)
	cmpb	$0, __ZGVZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	je	L331
L309:
	movl	$64, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	$64, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L314
	movl	$1, (%eax)
	movl	$__ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance, %ecx
	movb	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE11vtable_implE, 12(%eax)
	movl	%ebx, 20(%eax)
	movl	(%eax), %eax
	addl	$1, %eax
	movl	%eax, (%esi)
	leal	-24(%ebp), %eax
	movl	%esi, -24(%ebp)
	movl	%eax, (%esp)
	call	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE
	movl	-24(%ebp), %edi
	subl	$4, %esp
	testl	%edi, %edi
	je	L316
	movl	12(%edi), %eax
	leal	-20(%ebp), %ecx
	movl	$0, -20(%ebp)
	movl	8(%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	je	L317
	leal	-20(%ebp), %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L317:
	lock subl	$1, (%edi)
	je	L332
L316:
	movl	124(%ebx), %eax
	testl	%eax, %eax
	je	L318
L334:
	lock subl	$1, (%eax)
	je	L333
L318:
	movl	%esi, 124(%ebx)
	movl	116(%ebx), %eax
	movl	-12(%ebp), %ebx
	.cfi_restore 3
L304:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 1
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L331:
	.cfi_def_cfa 5, 8
	.cfi_offset 1, -24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$LC4, (%esp)
	call	_getenv
	testl	%eax, %eax
	je	L310
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtoul
	movl	$1, %edx
	testl	%eax, %eax
	cmove	%edx, %eax
L311:
	call	__ZN5async20threadpool_schedulerC2Ej.constprop.0
	movl	$___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0, (%esp)
	movb	$1, __ZGVZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance
	call	_atexit
	jmp	L309
	.p2align 4,,10
	.p2align 3
L332:
	movl	12(%edi), %eax
	movl	%edi, (%esp)
	call	*(%eax)
	movl	124(%ebx), %eax
	testl	%eax, %eax
	jne	L334
	jmp	L318
	.p2align 4,,10
	.p2align 3
L333:
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	jmp	L318
	.p2align 4,,10
	.p2align 3
L314:
	movl	$64, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L310:
	movl	__ZZN5async20hardware_concurrencyEvE5value, %eax
	cmpb	$0, __ZGVZN5async20hardware_concurrencyEvE5value
	je	L335
L313:
	testl	%eax, %eax
	movl	$1, %edx
	cmove	%edx, %eax
	jmp	L311
	.p2align 4,,10
	.p2align 3
L329:
	.cfi_restore 3
	movl	$1, _MV_ErrorCode
L306:
	movl	$-1, %eax
	jmp	L304
	.p2align 4,,10
	.p2align 3
L335:
	.cfi_offset 3, -20
	call	__ZNSt6thread20hardware_concurrencyEv
	movb	$1, __ZGVZN5async20hardware_concurrencyEvE5value
	movl	%eax, __ZZN5async20hardware_concurrencyEvE5value
	jmp	L313
	.p2align 4,,10
	.p2align 3
L330:
	movl	$3, _MV_ErrorCode
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	jmp	L306
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	_MV_PlayXMP3D
	.def	_MV_PlayXMP3D;	.scl	2;	.type	32;	.endef
_MV_PlayXMP3D:
LFB69:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_Installed, %eax
	movl	72(%esp), %edx
	testl	%eax, %eax
	je	L349
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -8
	movl	68(%esp), %eax
	testl	%edx, %edx
	js	L350
	andl	$127, %eax
	cmpl	$255, %edx
	jg	L340
	testl	%edx, %edx
	jne	L342
	sall	$8, %eax
	movzbl	_MV_PanTable(%eax), %ecx
	movzbl	_MV_PanTable+1(%eax), %ebx
L343:
	movl	$255, %eax
	subl	%edx, %eax
L344:
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	84(%esp), %edx
	movl	%ebx, 28(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edx, 40(%esp)
	movl	80(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%edx, 36(%esp)
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 24(%esp)
	movl	$-1, 12(%esp)
	movl	%eax, (%esp)
	call	_MV_PlayXMP
	movl	44(%esp), %ebx
	.cfi_restore 3
L336:
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L340:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -8
	sall	$8, %eax
	movzbl	_MV_PanTable+254(%eax), %ecx
	movzbl	_MV_PanTable+255(%eax), %ebx
	xorl	%eax, %eax
	jmp	L344
	.p2align 4,,10
	.p2align 3
L350:
	addl	$64, %eax
	andl	$127, %eax
	cmpl	$-255, %edx
	jl	L340
	negl	%edx
L342:
	movl	%edx, %ecx
	sall	$7, %eax
	sall	$7, %ecx
	sarl	$8, %ecx
	addl	%ecx, %eax
	movzbl	_MV_PanTable(%eax,%eax), %ecx
	movzbl	_MV_PanTable+1(%eax,%eax), %ebx
	xorl	%eax, %eax
	cmpl	$255, %edx
	je	L344
	jmp	L343
	.p2align 4,,10
	.p2align 3
L349:
	.cfi_restore 3
	movl	$1, _MV_ErrorCode
	movl	$-1, %eax
	jmp	L336
	.cfi_endproc
LFE69:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE:
LFB70:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	lock addl	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	L351
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	leal	12(%esp), %esi
	movl	$0, 12(%esp)
	movl	8(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	L353
	movl	%esi, %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L353:
	lock subl	$1, (%ebx)
	je	L362
	movl	20(%esp), %esi
	.cfi_restore 6
L351:
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L362:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	%ebx, 28(%esp)
	movl	16(%esp), %ebx
	movl	(%eax), %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.cfi_endproc
LFE70:
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE:
LFB76:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	lock addl	$1, (%eax)
	movl	%eax, 8(%esp)
	leal	8(%esp), %eax
	movl	%eax, (%esp)
	.cfi_offset 3, -12
	call	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	8(%esp), %ebx
	testl	%ebx, %ebx
	je	L363
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	leal	12(%esp), %esi
	movl	$0, 12(%esp)
	movl	8(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	L365
	movl	%esi, %ecx
	call	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv
L365:
	lock subl	$1, (%ebx)
	je	L374
	movl	20(%esp), %esi
	.cfi_restore 6
L363:
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L374:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	%ebx, 28(%esp)
	movl	16(%esp), %ebx
	movl	(%eax), %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.cfi_endproc
LFE76:
	.p2align 4
	.def	__make_decode_ready.part.0;	.scl	3;	.type	32;	.endef
__make_decode_ready.part.0:
LFB77:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 12(%esp)
	movl	4(%eax), %ecx
	.cfi_offset 6, -16
	leal	480(%eax), %esi
	movl	72(%eax), %edx
	testl	%ecx, %ecx
	je	L376
	movl	96(%eax), %eax
	sall	$5, %eax
	addl	%eax, %edx
	movl	%esi, %eax
	call	__vds_shared_init.constprop.0
	testl	%eax, %eax
	jne	L398
L380:
	movl	%esi, %eax
	movl	%edi, 16(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	_vorbis_synthesis_restart.isra.0
	xorl	%eax, %eax
	movl	$0, 688(%ebx)
	movl	$0, 692(%ebx)
	movl	$0, 696(%ebx)
	movl	$0, 700(%ebx)
L382:
	movl	$0, 592(%ebx,%eax)
	movl	$0, 596(%ebx,%eax)
	movl	$0, 600(%ebx,%eax)
	movl	$0, 604(%ebx,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L382
	movl	480(%ebx), %eax
	movl	%esi, 656(%ebx)
	testl	%eax, %eax
	jne	L400
L384:
	movl	$4, 88(%ebx)
	xorl	%eax, %eax
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	movl	$0, 112(%ebx)
	movl	$0, 116(%ebx)
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L376:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%esi, %eax
	call	__vds_shared_init.constprop.0
	testl	%eax, %eax
	je	L380
L398:
	movl	%esi, %eax
	call	_vorbis_dsp_clear
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	$-137, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L400:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$72, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L385
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	xorl	%eax, %eax
L386:
	movl	$0, 0(%ebp,%eax)
	movl	$0, 4(%ebp,%eax)
	movl	$0, 8(%ebp,%eax)
	movl	$0, 12(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L386
	xorl	%edx, %edx
	movl	%ebp, 696(%ebx)
	leal	596(%ebx), %edi
	movl	$0xc61c3c00, 4(%ebp)
	cmpl	$7, %edx
	je	L401
L389:
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %esi
	testl	%eax, %eax
	je	L392
	movl	4(%esp), %edx
	movl	%eax, 12(%ebp,%edx,4)
	movl	$0, (%eax)
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$256, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	L391
	addl	$1, %edx
	movl	%eax, 8(%esi)
	movl	%eax, 12(%esi)
	movb	$0, (%eax)
	movl	$256, 16(%esi)
	cmpl	$15, %edx
	je	L384
	cmpl	$7, %edx
	jne	L389
L401:
	movl	%edi, 40(%ebp)
	movl	$0, (%edi)
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$256, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L391
	movl	%eax, 8(%edi)
	movl	$8, %edx
	movl	%eax, 12(%edi)
	movb	$0, (%eax)
	movl	$256, 16(%edi)
	jmp	L389
	.p2align 4,,10
	.p2align 3
L391:
	movl	$256, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L392:
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L385:
	movl	$72, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE77:
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "MV_GetNextXMPBlock: no XMP context!\0"
LC10:
	.ascii "source/audiolib/src/xmp.cpp\0"
	.section	.text.unlikely,"x"
LCOLDB39:
	.text
LHOTB39:
	.p2align 4
	.def	__ZL18MV_GetNextXMPBlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL18MV_GetNextXMPBlockP9VoiceNode:
LFB84:
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
	subl	$1756, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L1147
	movl	8(%eax), %edi
	cmpl	$1, 9836(%edi)
	jle	L404
	movl	1476(%edi), %edx
	testl	%edx, %edx
	jle	L404
	movl	2612(%edi), %eax
	movl	(%edi), %ecx
	testl	$134217728, %eax
	jne	L1148
L407:
	movl	4(%edi), %edx
	cmpl	%ecx, %edx
	je	L408
	cmpl	$-2, %edx
	je	L404
	movl	60(%edi), %ecx
	movl	7756(%edi,%ecx,8), %eax
	sall	$4, %ecx
	addl	372(%edi), %ecx
	cmpl	$-1, %edx
	je	L1149
	cmpl	%eax, %edx
	je	L410
	cmpl	8(%ecx), %edx
	jg	L1150
L414:
	movl	$0, 344(%edi)
	subl	$1, %edx
	movl	$-1, 336(%edi)
	movl	%edx, (%edi)
	cmpl	%edx, %eax
	jg	L413
L415:
	movl	%edi, %eax
	call	__ZL10next_orderP12context_data.lto_priv.0
	movl	%edi, %eax
	call	__ZL20update_from_ord_infoP12context_data.lto_priv.0
	movl	704(%edi), %eax
	testl	%eax, %eax
	jle	L416
	movl	712(%edi), %eax
	testl	%eax, %eax
	jle	L417
	movlps	LC11, %xmm0
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
L420:
	movl	720(%edi), %eax
	xorl	%edx, %edx
	addl	%ecx, %eax
	movl	$0, 120(%eax)
	movl	$0, 124(%eax)
	movl	$0, 128(%eax)
	movl	$0, 132(%eax)
L418:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$128, %edx
	jb	L418
	movlps	%xmm0, (%eax)
	addl	$1, %ebx
	addl	$136, %ecx
	cmpl	712(%edi), %ebx
	jl	L420
	movl	704(%edi), %eax
	testl	%eax, %eax
	jle	L421
L417:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L422:
	movl	716(%edi), %edx
	movl	$-1, 4(%edx,%eax,8)
	movl	716(%edi), %edx
	movl	$0, (%edx,%eax,8)
	addl	$1, %eax
	cmpl	704(%edi), %eax
	jl	L422
L421:
	movl	$0, 708(%edi)
L416:
	movl	%edi, %eax
	call	__ZL14reset_channelsP12context_data.lto_priv.0
L423:
	movl	1456(%edi), %eax
	testl	%eax, %eax
	jle	L425
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L426:
	movl	376(%edi), %ecx
	addl	$1, %eax
	addl	%edx, %ecx
	addl	$480, %edx
	andl	$-67108865, (%ecx)
	cmpl	1456(%edi), %eax
	jl	L426
L425:
	movl	12(%edi), %ebx
	testl	%ebx, %ebx
	je	L427
	movl	1456(%edi), %eax
L428:
	movl	9816(%edi), %ecx
	leal	(%eax,%ecx), %edx
	testl	%edx, %edx
	jle	L476
	leal	724(%edi), %ebx
	xorl	%esi, %esi
	jmp	L478
	.p2align 5
	.p2align 4,,10
	.p2align 3
L477:
	addl	$1, %esi
	leal	(%eax,%ecx), %edx
	addl	$8, %ebx
	cmpl	%edx, %esi
	jge	L476
L478:
	cmpb	$0, 7(%ebx)
	je	L477
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	addl	$1, %esi
	call	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0
	movb	$0, 7(%ebx)
	movl	1456(%edi), %eax
	addl	$8, %ebx
	movl	9816(%edi), %ecx
	leal	(%eax,%ecx), %edx
	cmpl	%edx, %esi
	jl	L478
L476:
	movl	704(%edi), %esi
	testl	%esi, %esi
	jle	L479
	movl	$0, 128(%esp)
	movl	$0, 136(%esp)
	.p2align 4
	.p2align 3
L717:
	movl	128(%esp), %eax
	addl	376(%edi), %eax
	movl	$0, 468(%eax)
	movl	2616(%edi), %ebx
	movl	%eax, 132(%esp)
	movl	12(%edi), %eax
	leal	-2(%ebx), %edx
	testl	%eax, %eax
	sete	%cl
	cmpl	$1, %edx
	ja	L481
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%cl
L481:
	testb	%cl, %cl
	jne	L482
	movl	132(%esp), %eax
	movl	(%eax), %esi
	movl	%esi, 124(%esp)
	andl	$2097152, %esi
	je	L482
	movl	400(%eax), %eax
	movl	$255, %edx
	addl	20(%edi), %eax
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	cmpl	$32, %eax
	movl	$32, %eax
	cmovge	%edx, %eax
	movl	%eax, 20(%edi)
L482:
	movl	132(%esp), %esi
	movl	60(%esi), %eax
	testl	%eax, %eax
	jle	L485
	subl	$1, %eax
	movl	%eax, 60(%esi)
	je	L1151
L485:
	movl	128(%esp), %edx
	addl	376(%edi), %edx
	testb	$16, 3(%edx)
	je	L486
	testb	$1, 2614(%edi)
	je	L486
	movss	428(%edx), %xmm0
	xorps	%xmm1, %xmm1
	movl	9812(%edi), %ecx
	comiss	%xmm1, %xmm0
	jbe	L1086
	addss	420(%edx), %xmm0
	movss	424(%edx), %xmm1
	comiss	%xmm1, %xmm0
	jbe	L1107
L493:
	movl	$0x00000000, 428(%edx)
	movaps	%xmm1, %xmm0
	movss	%xmm1, 420(%edx)
L490:
	cvttss2sil	%xmm0, %eax
	cmpl	$127, %eax
	jle	L494
	testl	%ecx, %ecx
	je	L495
	movl	%eax, 4(%esp)
	subl	$112, %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movl	136(%esp), %ecx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0
	.p2align 4
	.p2align 3
L486:
	movl	704(%edi), %edx
	movl	136(%esp), %esi
	cmpl	%edx, %esi
	jnb	L497
	movl	716(%edi), %eax
	leal	0(,%esi,8), %ebx
	movl	%ebx, 124(%esp)
	movl	4(%eax,%ebx), %eax
	cmpl	712(%edi), %eax
	jnb	L497
	testl	%eax, %eax
	js	L497
	cmpl	700(%edi), %esi
	jl	L498
	imull	$136, %eax, %ecx
	addl	720(%edi), %ecx
	movl	64(%ecx), %esi
	movl	%esi, 116(%esp)
	cmpl	$-1, %esi
	je	L497
	movl	132(%esp), %ebx
	movl	12(%edi), %ecx
	movl	1460(%edi), %esi
	movl	44(%ebx), %ebx
	movl	%ebx, 108(%esp)
	testl	%ecx, %ecx
	jne	L503
	cmpl	$256, 116(%esp)
	je	L503
	cmpl	%esi, %ebx
	jnb	L504
	imull	$764, %ebx, %ebx
	addl	1496(%edi), %ebx
	movl	36(%ebx), %ebx
	testl	%ebx, %ebx
	jle	L504
	movl	116(%esp), %edx
	testl	%edx, %edx
	je	L506
	.p2align 4
	.p2align 3
L509:
	movl	132(%esp), %ebx
	movl	(%ebx), %esi
	movl	%esi, 108(%esp)
	andl	$262144, %esi
	je	L512
	movl	236(%ebx), %edx
	leal	-1(%edx), %eax
	testb	$1, 2615(%edi)
	je	L513
	testl	%eax, %eax
	setle	%dl
L514:
	movl	132(%esp), %esi
	movl	%eax, 236(%esi)
	testb	%dl, %dl
	je	L515
	movl	240(%esi), %eax
	cmpl	$15, %eax
	jle	L1152
	movl	132(%esp), %esi
	orl	$4, 8(%esi)
L520:
	movl	132(%esp), %ebx
	leal	(%eax,%eax,2), %eax
	leal	__ZL4rval(,%eax,4), %esi
	movl	__ZL4rval(,%eax,4), %eax
	addl	76(%ebx), %eax
	imull	4(%esi), %eax
	cltd
	idivl	8(%esi)
	movl	%eax, 76(%ebx)
	movl	232(%ebx), %eax
	movl	%eax, 108(%esp)
	andl	$15, %eax
	movl	%eax, 236(%ebx)
	movl	244(%ebx), %eax
	testl	%eax, %eax
	jle	L515
	subl	$1, %eax
	movl	%eax, 244(%ebx)
	jne	L515
	andl	$-262145, (%ebx)
	.p2align 4
	.p2align 3
L515:
	movl	132(%esp), %eax
	movl	64(%eax), %edx
	testl	%edx, %edx
	jne	L521
	movl	8(%eax), %edx
L522:
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L523
	movl	716(%edi), %eax
	movl	124(%esp), %esi
	movl	4(%eax,%esi), %eax
	cmpl	712(%edi), %eax
	jnb	L523
	testl	%eax, %eax
	js	L523
	andl	$1024, %edx
L806:
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	88(%eax), %ecx
	testl	%edx, %edx
	je	L524
	testb	$1, %cl
	je	L1153
L526:
	orl	$1, %ecx
	movl	%ecx, 88(%eax)
L523:
	movl	136(%esp), %edx
	movl	%edi, %eax
	call	__ZL13update_volumeP12context_datai.lto_priv.0
	movl	2616(%edi), %eax
	movl	128(%esp), %ebx
	movl	12(%edi), %ecx
	addl	376(%edi), %ebx
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	L1154
	testl	%ecx, %ecx
	jne	L533
	xorl	%eax, %eax
	testb	$-128, 2612(%edi)
	jne	L533
L543:
	testl	%eax, %eax
	sete	%al
L544:
	testb	%al, %al
	je	L545
	testb	$-128, (%ebx)
	je	L545
	fldl	24(%ebx)
	faddl	320(%ebx)
	fstpl	24(%ebx)
L545:
	movl	2620(%edi), %eax
	cmpl	$1, %eax
	je	L546
	fldl	24(%ebx)
	cmpl	$2, %eax
	jne	L548
	fldz
	fcomip	%st(1), %st
	ja	L1155
	flds	LC13
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	L548
	fstp	%st(0)
	movl	$0, 24(%ebx)
	movl	$1086193664, 28(%ebx)
	.p2align 4
	.p2align 3
L553:
	movl	128(%esp), %esi
	addl	376(%edi), %esi
	testb	$2, (%esi)
	je	L558
	movl	12(%edi), %eax
	movl	2616(%edi), %ebx
	testl	%eax, %eax
	leal	-2(%ebx), %edx
	sete	%cl
	cmpl	$1, %edx
	ja	L560
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%cl
L560:
	movl	368(%esi), %eax
	testb	%cl, %cl
	je	L1156
	addl	376(%esi), %eax
	movl	%eax, 368(%esi)
	testl	%eax, %eax
	js	L1157
L562:
	cmpl	$255, %eax
	jle	L1109
	movl	$255, 368(%esi)
L1109:
	movl	128(%esp), %esi
	addl	376(%edi), %esi
L558:
	movl	44(%esi), %eax
	testl	%eax, %eax
	js	L564
	movl	1460(%edi), %edx
	cmpl	%edx, %eax
	jge	L565
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
L1110:
	leal	44(%eax), %ebx
	movl	%eax, 108(%esp)
	addl	$72, %eax
	movl	%ebx, 84(%esp)
	movl	%eax, 92(%esp)
L566:
	movl	8(%esi), %ebx
	movl	%ebx, %edx
	andl	$2, %edx
	cmpl	$2, 116(%esp)
	movl	%edx, %eax
	sete	104(%esp)
	shrl	%eax
	orb	104(%esp), %al
	testb	$4, 2614(%edi)
	je	L568
	movl	$0, 96(%esp)
	testb	%al, %al
	je	L569
	movl	108(%esp), %ecx
	movl	44(%ecx), %ecx
	movl	%ecx, %edx
	movl	%ecx, 100(%esp)
	xorl	%ecx, %ecx
	andl	$5, %edx
	cmpl	$1, %edx
	setne	%cl
	movl	%ecx, 96(%esp)
L569:
	movl	96(%esi), %edx
	movl	%edx, 100(%esp)
	testb	$64, 6(%esi)
	jne	L571
	movzbl	%al, %ecx
	xorl	%eax, %eax
	cmpl	$3, 2616(%edi)
	sete	%al
	movl	%eax, 4(%esp)
	movzbl	3(%esi), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, (%esp)
	movl	84(%esp), %eax
	call	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0
	movl	%eax, 100(%esp)
	movl	%eax, 96(%esi)
L571:
	movl	100(%esp), %edx
	movl	84(%esp), %eax
	movl	$64, %ecx
	call	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0
	cmpl	$3, 116(%esp)
	movl	%eax, 84(%esp)
	movl	108(%esp), %eax
	sete	116(%esp)
	movl	44(%eax), %edx
	testb	$1, %dl
	je	L576
	movl	108(%esp), %eax
	movl	48(%eax), %eax
	leal	-2(%eax,%eax), %ecx
	movl	%ecx, 80(%esp)
	movl	92(%esp), %ecx
	movswl	-4(%ecx,%eax,4), %ecx
	testl	%eax, %eax
	jle	L578
	cmpl	$1, %eax
	je	L865
	cmpl	%ecx, 100(%esp)
	jl	L576
L865:
	andl	$4, %edx
	je	L1158
L578:
	movl	%ebx, %eax
	cmpl	%ecx, 100(%esp)
	jle	L584
L581:
	movl	92(%esp), %ebx
	movl	80(%esp), %ecx
	cmpw	$0, 2(%ebx,%ecx,2)
	je	L582
	testb	$2, 2612(%edi)
	je	L584
	orl	$1, %eax
	movl	72(%esi), %edx
	movl	%eax, 8(%esi)
	movl	%eax, %ebx
	movl	68(%esi), %eax
	cmpl	%edx, %eax
	jle	L589
L1173:
	subl	%edx, %eax
	movl	%eax, 68(%esi)
L1111:
	movl	%ebx, %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	L586
L590:
	movl	76(%esi), %eax
	movl	(%esi), %ebx
	movl	%eax, 100(%esp)
	movl	2616(%edi), %eax
	movl	%eax, 116(%esp)
	cmpl	$3, %eax
	je	L1159
	andl	$32, %ebx
	je	L1112
	movl	116(%esp), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	L593
	movl	12(%edi), %eax
	testl	%eax, %eax
	sete	%al
L597:
	testb	%al, %al
	je	L821
	testb	$4, 2612(%edi)
	jne	L598
L821:
	leal	132(%esi), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z14libxmp_lfo_getP12context_dataP3lfoi
	movl	%eax, %edx
	leal	63(%eax), %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	sarl	$6, %eax
	addl	%eax, 100(%esp)
	movl	2616(%edi), %eax
	movl	%eax, 116(%esp)
L598:
	movl	12(%edi), %eax
	movl	116(%esp), %ebx
	testl	%eax, %eax
	leal	-2(%ebx), %ecx
	sete	%dl
	cmpl	$1, %ecx
	ja	L600
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%dl
L600:
	testb	%dl, %dl
	je	L819
	movl	2612(%edi), %eax
	movl	%eax, 96(%esp)
	testl	$1048576, %eax
	je	L594
L819:
	movl	136(%esi), %eax
	addl	144(%esi), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, 144(%esi)
	movl	2612(%edi), %eax
	movl	%eax, 96(%esp)
	movl	2616(%edi), %eax
	movl	%eax, 116(%esp)
L594:
	movl	100(%esp), %eax
	cmpl	2588(%edi), %eax
	movzwl	84(%esp), %ecx
	movl	%eax, %ebx
	cmovg	2588(%edi), %ebx
	testl	%eax, %eax
	movl	$0, %eax
	cmovs	%eax, %ebx
	imull	328(%edi), %ecx
	imull	56(%esi), %ecx
	imull	68(%esi), %ebx
	movl	%ecx, %eax
	cltd
	idivl	2592(%edi)
	movl	%eax, %ecx
	movl	%ebx, %eax
	andl	$-64, %eax
	cltd
	idivl	2588(%edi)
	imull	%eax, %ecx
	movl	136(%esp), %eax
	shrl	$18, %ecx
	cmpl	700(%edi), %eax
	jl	L1113
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jge	L604
	movl	716(%edi), %eax
	movl	124(%esp), %ebx
	movl	4(%eax,%ebx), %eax
	testl	%eax, %eax
	js	L604
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	js	L604
L1113:
	imull	380(%edi,%eax,4), %ecx
	movl	$1374389535, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$5, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
L603:
	testb	$64, 97(%esp)
	je	L606
	movl	108(%esp), %eax
	imull	32(%eax), %ecx
	imull	80(%esi), %ecx
	sarl	$12, %ecx
L606:
	movl	128(%esp), %eax
	addl	376(%edi), %eax
	cmpl	$1, 116(%esp)
	je	L1160
	testb	$8, 3(%eax)
	je	L614
	movzbl	250(%eax), %edx
	testb	%dl, %dl
	jne	L616
	movzbl	248(%eax), %edx
	orl	$-128, %edx
L617:
	subb	$1, %dl
	movb	%dl, 250(%eax)
	movl	$0, %eax
	cmovns	%eax, %ecx
L614:
	movl	%ecx, 436(%esi)
	movl	136(%esp), %eax
	cmpl	1456(%edi), %eax
	jge	L618
	imull	324(%edi), %ecx
L1114:
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$31, %ecx
	xorl	%eax, %eax
	sarl	$5, %edx
	movl	%edx, %ebx
	movl	136(%esp), %edx
	subl	%ecx, %ebx
	testb	$32, 8(%esi)
	cmove	%ebx, %eax
	movl	%ebx, %ecx
	movl	%eax, 468(%esi)
	movl	%edi, %eax
	call	__Z18libxmp_virt_setvolP12context_dataii
	cmpb	$0, 92(%esi)
	jne	L1161
L591:
	movl	128(%esp), %esi
	addl	376(%edi), %esi
	movl	44(%esi), %eax
	testl	%eax, %eax
	js	L621
	movl	1460(%edi), %edx
	cmpl	%edx, %eax
	jge	L622
	imull	$764, %eax, %eax
	addl	1496(%edi), %eax
	movl	%eax, 96(%esp)
	leal	356(%eax), %ebx
L623:
	movl	104(%esi), %edx
	testb	$1, 7(%esi)
	jne	L625
	movzbl	8(%esi), %ecx
	xorl	%eax, %eax
	shrb	%cl
	orl	104(%esp), %ecx
	andl	$1, %ecx
	cmpl	$3, 2616(%edi)
	sete	%al
	movl	%eax, 4(%esp)
	movzbl	3(%esi), %eax
	shrb	$2, %al
	andl	$1, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0
	movl	%eax, 104(%esi)
	movl	%eax, %edx
L625:
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0
	leal	200(%esi), %edx
	movl	$1, %ecx
	movl	%eax, 100(%esp)
	movl	%edi, %eax
	call	__Z14libxmp_lfo_getP12context_dataP3lfoi
	movl	216(%esi), %edx
	movl	%eax, 116(%esp)
	fildl	116(%esp)
	leal	1(%edx), %eax
	sall	$12, %eax
	movl	%eax, 116(%esp)
	movl	204(%esi), %eax
	addl	212(%esi), %eax
	fildl	116(%esp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	fdivrp	%st, %st(1)
	shrl	$26, %ecx
	addl	%ecx, %eax
	andl	$63, %eax
	subl	%ecx, %eax
	movl	%eax, 212(%esi)
	movl	$2, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	subl	$2, %edx
	movl	%edx, 216(%esi)
	movl	2612(%edi), %ecx
	movl	%ecx, %eax
	testb	$16, (%esi)
	jne	L626
	testb	$16, 4(%esi)
	je	L627
L626:
	movl	2616(%edi), %eax
	movl	12(%edi), %ebx
	subl	$2, %eax
	cmpl	$1, %eax
	jbe	L1162
	testl	%ebx, %ebx
	jne	L630
	testb	$4, %cl
	je	L630
L631:
	movl	%ecx, %eax
	testl	$1048576, %eax
	je	L627
L816:
	movl	116(%esi), %eax
	addl	124(%esi), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, 124(%esi)
	movl	2612(%edi), %eax
L627:
	fldl	24(%esi)
	testb	$16, %al
	je	L638
	flds	LC14
	fcomip	%st(1), %st
	ja	L1163
	movl	192(%esi), %ecx
	testl	$67108864, %eax
	je	L643
L1174:
	cmpb	$0, 173(%esi)
	jne	L644
	cmpb	$0, 174(%esi)
	je	L646
L644:
	movl	12(%edi), %eax
	movl	%eax, 116(%esp)
	testl	%eax, %eax
	je	L645
	movl	16(%edi), %ebx
	cltd
	idivl	%ebx
	subl	%edx, %ebx
	cmpl	$16, %ebx
	je	L646
	jg	L1164
	movl	$1431655766, %eax
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%edx,%edx,2), %eax
	subl	%eax, %ebx
	movsbl	172(%esi,%ebx), %eax
	movl	%eax, 116(%esp)
	.p2align 4
	.p2align 3
L645:
	leal	1(%ecx), %eax
	xorl	%ebx, %ebx
	cltd
	idivl	188(%esi)
	movl	12(%esi), %eax
	movl	%eax, 108(%esp)
	movl	%edx, 192(%esi)
	testl	%eax, %eax
	je	L1198
	faddp	%st, %st(1)
	fldl	LC15
	fcomip	%st(1), %st
	ja	L1199
	movl	2620(%edi), %eax
	cmpl	$2, %eax
	je	L649
	cmpl	$3, %eax
	je	L650
	movl	108(%esp), %edx
	fstpl	84(%esp)
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fdivl	84(%esp)
L1142:
	fstpl	(%esp)
	call	_log
	fmull	LC18
	fldz
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jb	L1092
	fnstcw	146(%esp)
	fadds	LC19
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	frndint
	fldcw	146(%esp)
L657:
	fldcw	144(%esp)
	fistpl	84(%esp)
	fldcw	146(%esp)
	movl	84(%esp), %ebx
	jmp	L648
	.p2align 4,,10
	.p2align 3
L1198:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L648
	.p2align 4,,10
	.p2align 3
L1199:
	fstp	%st(0)
L648:
	testb	$2, 9(%esi)
	je	L659
	testb	$4, (%esi)
	je	L659
	testl	%ebx, %ebx
	jle	L661
	leal	6400(%ebx), %eax
	movl	$1374389535, %ecx
	mull	%ecx
	shrl	$12, %edx
	imull	$12800, %edx, %ebx
	.p2align 4
	.p2align 3
L659:
	movl	104(%esi), %eax
	movl	2612(%edi), %ecx
	movl	%eax, 84(%esp)
	testl	$67108864, %ecx
	je	L662
	movl	116(%esp), %edx
	testl	%edx, %edx
	jne	L663
	testl	%eax, %eax
	js	L666
	movl	100(%esp), %eax
	movl	96(%esp), %ecx
	sall	$7, %eax
	addl	%ebx, %eax
	testb	$8, 356(%ecx)
	cmove	%eax, %ebx
	.p2align 4
	.p2align 3
L666:
	movl	%ebx, 116(%esp)
	fildl	116(%esp)
	fdivs	LC20
	movl	$0, (%esp)
	movl	$1073741824, 4(%esp)
	fildl	108(%esp)
	faddp	%st, %st(1)
	fdivs	LC21
	fstpl	8(%esp)
	call	_pow
	fdivrs	LC23
	testb	$16, 2612(%edi)
	je	L675
	fldl	LC24
	fcomi	%st(1), %st
	fcmovbe	%st(1), %st
	fstp	%st(1)
L675:
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L678
	movl	716(%edi), %eax
	movl	124(%esp), %ecx
	movl	4(%eax,%ecx), %eax
	cmpl	712(%edi), %eax
	jnb	L678
	testl	%eax, %eax
	js	L678
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	fstl	24(%eax)
L678:
	fmuls	LC25
	fldl	LC26
	movl	%ebx, %eax
	sarl	$7, %eax
	movl	%eax, 460(%esi)
	fcomip	%st(1), %st
	ja	L679
	fstp	%st(0)
	movl	$2147483647, 456(%esi)
	cmpl	$1, 2620(%edi)
	je	L1165
	jmp	L681
	.p2align 4,,10
	.p2align 3
L1221:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L681:
	testb	$1, 2614(%edi)
	je	L686
	movl	104(%esi), %eax
	testl	%eax, %eax
	js	L687
	movl	96(%esp), %eax
	testb	$8, 356(%eax)
	je	L687
	cmpl	$253, 100(%esp)
	jle	L688
	movl	412(%esi), %eax
	movl	%eax, 100(%esp)
L689:
	movl	100(%esp), %eax
	imull	404(%esi), %eax
	sarl	$8, %eax
L690:
	movl	408(%esi), %ecx
	testl	%ecx, %ecx
	jg	L691
	cmpl	$253, %eax
	jle	L691
	movl	416(%esi), %ebx
	testl	%ebx, %ebx
	je	L686
L691:
	cmpl	$255, %eax
	movl	$255, %ebx
	movl	%ecx, 100(%esp)
	xorps	%xmm0, %xmm0
	cmovle	%eax, %ebx
	xorl	%eax, %eax
	movl	%ebx, %ecx
	movl	1256(%edi), %ebx
	movl	$0x40000000, (%esp)
	testl	%ecx, %ecx
	movl	%ecx, 116(%esp)
	cmovns	%ecx, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC27, %xmm0
	addss	LC14, %xmm0
	movss	%xmm0, 4(%esp)
	call	_powf
	movl	136(%esp), %edx
	cmpl	704(%edi), %edx
	jnb	L1200
	movl	716(%edi), %eax
	movl	124(%esp), %ecx
	movl	4(%eax,%ecx), %edx
	cmpl	712(%edi), %edx
	jnb	L1201
	testl	%edx, %edx
	js	L1202
	xorps	%xmm0, %xmm0
	fstps	108(%esp)
	movl	100(%esp), %ecx
	movl	$255, %eax
	cvtsi2ssl	%ebx, %xmm0
	movss	108(%esp), %xmm1
	movss	LC19, %xmm2
	mulss	LC28, %xmm1
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	xorl	%ebx, %ebx
	mulss	%xmm0, %xmm2
	testl	%eax, %eax
	cmovs	%ebx, %eax
	imull	$136, %edx, %edx
	addl	720(%edi), %edx
	sarl	%eax
	minss	%xmm1, %xmm2
	movss	%xmm2, 108(%esp)
	flds	108(%esp)
	fmuls	LC29
	movss	LC31, %xmm2
	movss	%xmm0, 108(%esp)
	fdivrs	108(%esp)
	fstps	108(%esp)
	movss	108(%esp), %xmm0
	fld1
	fadds	108(%esp)
	fmuls	__ZL15resonance_table(,%eax,4)
	mulss	%xmm0, %xmm0
	fld1
	fsubr	%st, %st(1)
	fxch	%st(1)
	movss	%xmm0, 108(%esp)
	fstps	100(%esp)
	fld	%st(0)
	fadds	100(%esp)
	fadds	108(%esp)
	fdivr	%st, %st(1)
	fxch	%st(1)
	fstps	108(%esp)
	movss	108(%esp), %xmm1
	mulss	%xmm2, %xmm1
	cvttss2sil	%xmm1, %eax
	movl	%eax, 112(%edx)
	movl	136(%esp), %edx
	cmpl	704(%edi), %edx
	jnb	L1203
	movl	716(%edi), %eax
	movl	124(%esp), %ebx
	movl	4(%eax,%ebx), %eax
	cmpl	712(%edi), %eax
	jnb	L1204
	testl	%eax, %eax
	js	L1205
	movss	100(%esp), %xmm1
	fld	%st(0)
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	addss	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 108(%esp)
	fdivrs	108(%esp)
	fstps	108(%esp)
	movss	108(%esp), %xmm1
	mulss	%xmm2, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, 116(%eax)
	movl	136(%esp), %edx
	cmpl	704(%edi), %edx
	jnb	L1206
	movl	716(%edi), %eax
	movl	4(%eax,%ebx), %eax
	cmpl	712(%edi), %eax
	jnb	L1207
	testl	%eax, %eax
	js	L1208
	xorps	LC32, %xmm0
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movss	%xmm0, 108(%esp)
	fdivrs	108(%esp)
	fstps	108(%esp)
	movss	108(%esp), %xmm0
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movl	%edx, 120(%eax)
	movl	136(%esp), %edx
	cmpl	704(%edi), %edx
	jnb	L692
	movl	716(%edi), %eax
	movl	4(%eax,%ebx), %eax
	cmpl	712(%edi), %eax
	jnb	L692
	testl	%eax, %eax
	js	L692
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	%ecx, 128(%eax)
	cmpl	704(%edi), %edx
	jnb	L692
	movl	716(%edi), %eax
	movl	4(%eax,%ebx), %eax
	cmpl	712(%edi), %eax
	jnb	L692
	testl	%eax, %eax
	js	L692
	movl	116(%esp), %ecx
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	%ecx, 124(%eax)
	jmp	L692
L1200:
	fstp	%st(0)
	jmp	L692
	.p2align 4,,10
	.p2align 3
L1201:
	fstp	%st(0)
	jmp	L692
	.p2align 4,,10
	.p2align 3
L1202:
	fstp	%st(0)
	jmp	L692
L1203:
	fstp	%st(0)
	jmp	L692
L1204:
	fstp	%st(0)
	jmp	L692
L1205:
	fstp	%st(0)
	jmp	L692
L1206:
	fstp	%st(0)
	jmp	L692
L1207:
	fstp	%st(0)
	jmp	L692
L1208:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L692:
	movl	$0, 416(%esi)
L686:
	movl	128(%esp), %ebx
	addl	376(%edi), %ebx
	movl	44(%ebx), %eax
	testl	%eax, %eax
	js	L693
	movl	1460(%edi), %edx
	cmpl	%edx, %eax
	jge	L694
	imull	$764, %eax, %eax
	movl	1496(%edi), %edx
	leal	200(%edx,%eax), %eax
	movl	%eax, 116(%esp)
L695:
	movl	(%ebx), %esi
	movl	100(%ebx), %edx
	testb	$-128, 6(%ebx)
	jne	L697
	movzbl	8(%ebx), %ecx
	xorl	%eax, %eax
	shrb	%cl
	orl	104(%esp), %ecx
	andl	$1, %ecx
	cmpl	$3, 2616(%edi)
	sete	%al
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	shrl	$26, %eax
	andl	$1, %eax
	movl	%eax, (%esp)
	movl	116(%esp), %eax
	call	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0
	movl	%eax, 100(%ebx)
	movl	%eax, %edx
L697:
	movl	116(%esp), %eax
	movl	$32, %ecx
	call	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0
	movl	%eax, 116(%esp)
	andl	$524288, %esi
	jne	L1166
L698:
	movl	368(%ebx), %eax
	leal	(%eax,%esi), %edx
	addl	$-128, %eax
	leal	128(%edx), %ecx
	movl	%ecx, 440(%ebx)
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	movl	$128, %eax
	subl	%ecx, %eax
	movl	116(%esp), %ecx
	subl	$32, %ecx
	imull	%ecx, %eax
	testl	%eax, %eax
	leal	31(%eax), %esi
	cmovns	%eax, %esi
	sarl	$5, %esi
	addl	%edx, %esi
	cmpl	$3, 2616(%edi)
	jne	L702
	movl	88(%ebx), %eax
	leal	(%esi,%eax,4), %esi
L702:
	movl	384(%ebx), %edx
	testb	$4, 1260(%edi)
	jne	L703
	testl	%edx, %edx
	jne	L704
	movl	$255, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovs	%eax, %esi
	movl	$1374389535, %eax
	leal	-128(%esi), %ecx
	imull	1268(%edi), %ecx
	imull	%ecx
	sarl	$31, %ecx
	sarl	$5, %edx
	subl	%ecx, %edx
	leal	128(%edx), %eax
	movl	%eax, 472(%ebx)
L705:
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L707
	movl	716(%edi), %eax
	movl	124(%esp), %esi
	movl	4(%eax,%esi), %eax
	cmpl	712(%edi), %eax
	jnb	L707
	testl	%eax, %eax
	js	L707
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	%edx, 12(%eax)
L708:
	movl	132(%esp), %eax
	movl	8(%eax), %eax
	testb	$-128, %al
	je	L709
L801:
	movl	132(%esp), %esi
	orl	$2, %eax
	movl	%eax, 8(%esi)
L709:
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L710
	movl	716(%edi), %eax
	movl	124(%esp), %esi
	movl	4(%eax,%esi), %eax
	cmpl	712(%edi), %eax
	jnb	L710
	testl	%eax, %eax
	js	L710
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	52(%eax), %edx
	testl	%edx, %edx
	js	L714
	movl	1464(%edi), %ecx
	cmpl	%ecx, %edx
	jge	L715
	imull	$52, %edx, %edx
	addl	1500(%edi), %edx
L716:
	xorl	%ecx, %ecx
	testb	$-128, 45(%edx)
	jne	L713
	fldl	32(%eax)
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	124(%esp)
	fldcw	146(%esp)
	movl	124(%esp), %ecx
L713:
	movl	132(%esp), %eax
	movl	%ecx, 464(%eax)
	movl	704(%edi), %edx
L500:
	addl	$1, 136(%esp)
	movl	136(%esp), %eax
	addl	$480, 128(%esp)
	cmpl	%edx, %eax
	jl	L717
L479:
	fldl	2576(%edi)
	fldl	2568(%edi)
	movl	$__ZL14nearest_mixers, 80(%esp)
	fildl	20(%edi)
	movl	1272(%edi), %eax
	andl	$-3, 368(%edi)
	fld	%st(2)
	fmul	%st(2), %st
	fdiv	%st(1), %st
	fstl	48(%edi)
	faddl	40(%edi)
	fstpl	40(%edi)
	testl	%eax, %eax
	je	L718
	cmpl	$2, %eax
	movl	$__ZL13spline_mixers, %edx
	movl	$__ZL13linear_mixers, %eax
	cmove	%edx, %eax
	movl	%eax, 80(%esp)
L718:
	fildl	1256(%edi)
	xorl	%eax, %eax
	cmpl	$3, 2616(%edi)
	movl	$8, %edx
	sete	%al
	movl	%eax, 1304(%edi)
	fnstcw	146(%esp)
	fmulp	%st, %st(3)
	fxch	%st(2)
	movzwl	146(%esp), %eax
	fmulp	%st, %st(1)
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fdivp	%st, %st(1)
	fdivs	LC33
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
	movl	136(%esp), %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, 1292(%edi)
	leal	0(,%eax,8), %edx
	sall	$2, %eax
	testb	$4, 1260(%edi)
	cmove	%edx, %eax
	movl	1284(%edi), %edx
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
	movl	712(%edi), %ecx
	testl	%ecx, %ecx
	jle	L720
	leal	1256(%edi), %eax
	movl	$0, 60(%esp)
	xorl	%esi, %esi
	movl	%edi, %ebx
	movl	%eax, 72(%esp)
	jmp	L775
	.p2align 4,,10
	.p2align 3
L1171:
	imull	$52, %eax, %edx
	sall	$4, %eax
	addl	9808(%ebx), %eax
	addl	1500(%ebx), %edx
	fldl	(%eax)
	movl	%eax, 108(%esp)
	fnstcw	146(%esp)
	movl	%edx, 132(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
L736:
	fildl	136(%esp)
	fmuls	LC34
	fildl	1256(%ebx)
	fdivrp	%st, %st(1)
	fdivp	%st, %st(1)
	fldl	LC35
	fcomip	%st(1), %st
	ja	L1209
	flds	LC36
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	L1167
	fstp	%st(0)
	jmp	L724
	.p2align 4,,10
	.p2align 3
L1209:
	fstp	%st(0)
L724:
	addl	$1, %esi
	cmpl	712(%ebx), %esi
	jge	L1168
L775:
	imull	$136, %esi, %eax
	movl	720(%ebx), %edi
	addl	%eax, %edi
	movl	%eax, 128(%esp)
	movl	88(%edi), %eax
	testb	$2, %al
	je	L721
	movl	1272(%ebx), %edx
	testl	%edx, %edx
	jle	L722
	movl	$0, (%esp)
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	%esi, %edx
	call	__ZL12do_anticlickP12context_dataiPii.lto_priv.0
	movl	88(%edi), %eax
L722:
	andl	$-3, %eax
	movl	%eax, 88(%edi)
L721:
	movl	(%edi), %eax
	testl	%eax, %eax
	js	L724
	fldl	24(%edi)
	fld1
	fcomip	%st(1), %st
	ja	L1169
	fldl	32(%edi)
	fldz
	fcomip	%st(1), %st
	ja	L728
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
	movl	136(%esp), %eax
L729:
	movl	%eax, 40(%edi)
	movl	2600(%ebx), %ecx
	movl	16(%edi), %eax
	testl	%ecx, %ecx
	jle	L731
	movl	2604(%ebx), %edx
	cmpl	%edx, %ecx
	je	L731
	imull	%edx, %eax
	cltd
	idivl	%ecx
L731:
	movl	12(%edi), %edx
	cmpl	$32768, %edx
	je	L1170
	movl	$128, %ecx
	subl	%edx, %ecx
	subl	$-128, %edx
	imull	%eax, %ecx
	imull	%eax, %edx
	movl	%ecx, 124(%esp)
	movl	%edx, 116(%esp)
L734:
	movl	52(%edi), %eax
	movl	1464(%ebx), %edx
	cmpl	%edx, %eax
	jl	L1171
	subl	%edx, %eax
	movl	$0, 108(%esp)
	imull	$52, %eax, %eax
	addl	9832(%ebx), %eax
	movl	%eax, 132(%esp)
	movl	2584(%ebx), %eax
	movl	%eax, 136(%esp)
	jmp	L736
	.p2align 4,,10
	.p2align 3
L1148:
	cmpb	$-1, 2272(%edi,%ecx)
	jne	L407
	.p2align 4
	.p2align 3
L404:
	xorl	%eax, %eax
L1197:
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
L1158:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	108(%esp), %ecx
	orl	$4, %eax
	cmpw	$0, 84(%esp)
	cmove	%eax, %ebx
	movl	%ebx, %eax
	orl	$16, %eax
	movl	%eax, 8(%esi)
	testb	$1, 44(%ecx)
	je	L1172
	movl	108(%esp), %ebx
	movl	48(%ebx), %edx
	leal	-2(%edx,%edx), %ebx
	movl	%ebx, 80(%esp)
	movl	92(%esp), %ebx
	movswl	-4(%ebx,%edx,4), %ecx
	cmpl	%ecx, 100(%esp)
	jg	L581
L584:
	movl	%eax, %ebx
L576:
	movzbl	116(%esp), %edx
	movl	%ebx, %eax
	andl	$1, %eax
	orb	96(%esp), %al
	orl	%eax, %edx
L573:
	testb	%dl, %dl
	je	L1111
	movl	68(%esi), %eax
	movl	72(%esi), %edx
	cmpl	%edx, %eax
	jg	L1173
L589:
	movl	%ebx, %eax
	movl	$0, 68(%esi)
	orl	$4, %eax
	movl	%eax, 8(%esi)
L586:
	movl	136(%esp), %eax
	cmpl	700(%edi), %eax
	jl	L590
	movl	%eax, %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	jmp	L591
	.p2align 4,,10
	.p2align 3
L498:
	movl	132(%esp), %esi
	movl	$256, 116(%esp)
	movl	44(%esi), %ebx
	movl	1460(%edi), %esi
	movl	%ebx, 108(%esp)
L503:
	cmpl	%esi, 108(%esp)
	jb	L825
L508:
	movl	9820(%edi), %ebx
	testl	%ebx, %ebx
	jle	L500
L510:
	addl	%esi, %ebx
	cmpl	%ebx, 108(%esp)
	jb	L509
	jmp	L500
	.p2align 4,,10
	.p2align 3
L546:
	movl	40(%ebx), %esi
	movl	$83, %edx
	movl	%edi, %eax
	movl	%esi, %ecx
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	movl	%esi, %ecx
	movl	$48, %edx
	movl	%edi, %eax
	fstpl	108(%esp)
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fldl	24(%ebx)
	fldl	108(%esp)
	fcomi	%st(1), %st
	jbe	L1089
	fstp	%st(1)
	fstp	%st(1)
	fstl	24(%ebx)
	jmp	L548
	.p2align 4,,10
	.p2align 3
L1220:
	fstp	%st(1)
	.p2align 4
	.p2align 3
L548:
	flds	LC14
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	L553
L551:
	movl	136(%esp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z18libxmp_virt_setvolP12context_dataii
	jmp	L553
	.p2align 4,,10
	.p2align 3
L1154:
	movl	%ecx, %eax
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	jne	L533
	movl	%ecx, %eax
	testb	$-128, 2612(%edi)
	je	L823
	.p2align 4
	.p2align 3
L533:
	movl	(%ebx), %eax
	testb	$8, %al
	jne	L535
	testb	$8, 4(%ebx)
	je	L536
L535:
	fildl	312(%ebx)
	faddl	24(%ebx)
	fstl	24(%ebx)
	testb	$4, 2612(%edi)
	je	L1210
	fstpl	336(%ebx)
	jmp	L536
	.p2align 4,,10
	.p2align 3
L1210:
	fstp	%st(0)
L536:
	testb	$4, %al
	jne	L537
	testb	$4, 4(%ebx)
	je	L1108
L537:
	fldz
	fldl	336(%ebx)
	fcomi	%st(1), %st
	fstp	%st(1)
	jbe	L1211
	movl	344(%ebx), %edx
	fldl	24(%ebx)
	fildl	348(%ebx)
	testl	%edx, %edx
	jle	L540
	faddp	%st, %st(1)
	fstl	24(%ebx)
	fcomip	%st(1), %st
	jb	L1212
L541:
	andl	$-5, %eax
	andl	$-5, 4(%ebx)
	movl	$0, 344(%ebx)
	movl	%eax, (%ebx)
	fstpl	24(%ebx)
	testb	$4, 2612(%edi)
	je	L1108
	movl	$0, 336(%ebx)
	movl	$-1074790400, 340(%ebx)
	jmp	L1108
	.p2align 4,,10
	.p2align 3
L1211:
	fstp	%st(0)
	jmp	L1108
	.p2align 4,,10
	.p2align 3
L1212:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L1108:
	movl	2616(%edi), %eax
	leal	-2(%eax), %edx
	movl	12(%edi), %eax
	cmpl	$1, %edx
	ja	L543
L823:
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%al
	jmp	L544
	.p2align 4,,10
	.p2align 3
L1163:
	fxch	%st(1)
	movl	136(%esp), %edx
	fstpl	108(%esp)
	movl	%edi, %eax
	fstpl	116(%esp)
	call	__Z24libxmp_virt_resetchannelP12context_datai
	fldl	108(%esp)
	fldl	116(%esp)
	movl	2612(%edi), %eax
L638:
	fldl	LC15
	movl	192(%esi), %ecx
	fcomi	%st(1), %st
	fcmovbe	%st(1), %st
	fstp	%st(1)
	testl	$67108864, %eax
	jne	L1174
L643:
	movsbl	172(%esi,%ecx), %eax
	movl	%eax, 116(%esp)
	jmp	L645
	.p2align 4,,10
	.p2align 3
L504:
	movl	9820(%edi), %ebx
	testl	%ebx, %ebx
	jle	L506
	leal	(%ebx,%esi), %ecx
	cmpl	%ecx, 108(%esp)
	jnb	L506
	movl	116(%esp), %ecx
	testl	%ecx, %ecx
	je	L506
	cmpl	%esi, 108(%esp)
	jnb	L510
	.p2align 4
	.p2align 3
L825:
	imull	$764, 108(%esp), %ebx
	addl	1496(%edi), %ebx
	movl	36(%ebx), %ecx
	testl	%ecx, %ecx
	jg	L509
	jmp	L508
	.p2align 4,,10
	.p2align 3
L667:
	movl	12(%edi), %eax
	cltd
	idivl	16(%edi)
	cmpl	%edx, 16(%edi)
	jle	L1175
	movl	$108, %eax
	subl	108(%esp), %eax
	movl	%eax, 116(%esp)
	.p2align 4
	.p2align 3
L662:
	movl	84(%esp), %eax
	testl	%eax, %eax
	js	L672
	movl	100(%esp), %eax
	movl	96(%esp), %edx
	sall	$7, %eax
	addl	%ebx, %eax
	testb	$8, 356(%edx)
	cmove	%eax, %ebx
L672:
	movl	116(%esp), %eax
	testl	%eax, %eax
	je	L666
L668:
	movl	116(%esp), %edx
	imull	$12800, %edx, %eax
	addl	%eax, %ebx
	andl	$4, %ecx
	je	L666
	movl	108(%esp), %ecx
	leal	(%edx,%ecx), %eax
	cmpl	$84, %eax
	jg	L803
	jne	L666
	movl	136(%esp), %edx
	movl	%edi, %eax
	xorl	%ecx, %ecx
	call	__Z18libxmp_virt_setvolP12context_dataii
	movl	12(%esi), %eax
	movl	%eax, 108(%esp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L728:
	fstp	%st(0)
	movl	$0, 32(%edi)
	xorl	%eax, %eax
	movl	$0, 36(%edi)
	jmp	L729
	.p2align 4,,10
	.p2align 3
L630:
	andl	$524288, %ecx
	leal	112(%esi), %edx
	movl	%edi, %eax
	fstpl	108(%esp)
	cmpl	$1, %ecx
	movl	$1, %ecx
	sbbl	%ebx, %ebx
	call	__Z14libxmp_lfo_getP12context_dataP3lfoi
	andl	$-512, %ebx
	movl	2612(%edi), %ecx
	addl	$1024, %ebx
	cltd
	idivl	%ebx
	testl	$2097152, %ecx
	movl	%eax, 116(%esp)
	movl	2616(%edi), %eax
	fildl	116(%esp)
	fldl	108(%esp)
	leal	-2(%eax), %edx
	je	L634
	fsubp	%st, %st(1)
L635:
	movl	12(%edi), %eax
	testl	%eax, %eax
	sete	%bl
	cmpl	$1, %edx
	jbe	L817
L637:
	testb	%bl, %bl
	jne	L631
	jmp	L816
	.p2align 4,,10
	.p2align 3
L703:
	movl	$128, 472(%ebx)
	testl	%edx, %edx
	je	L705
L802:
	movl	136(%esp), %eax
	cmpl	704(%edi), %eax
	jnb	L707
	movl	716(%edi), %eax
	movl	124(%esp), %esi
	movl	4(%eax,%esi), %eax
	cmpl	712(%edi), %eax
	jnb	L707
	testl	%eax, %eax
	js	L707
	imull	$136, %eax, %eax
	addl	720(%edi), %eax
	movl	$32768, 12(%eax)
	jmp	L708
	.p2align 4,,10
	.p2align 3
L521:
	movl	132(%esp), %eax
	subl	$1, %edx
	movl	%edx, 64(%eax)
	movl	8(%eax), %edx
	jne	L522
	orl	$1026, %edx
	movl	%edx, 8(%eax)
	jmp	L522
	.p2align 4,,10
	.p2align 3
L512:
	movl	132(%esp), %esi
	movl	64(%esi), %edx
	testl	%edx, %edx
	jne	L521
	movl	132(%esp), %esi
	movl	8(%esi), %esi
	movl	%esi, %edx
	movl	%esi, 108(%esp)
	andl	$1024, %edx
	jmp	L806
	.p2align 4,,10
	.p2align 3
L568:
	movl	108(%esp), %ecx
	testb	$1, 44(%ecx)
	jne	L570
	testl	%edx, %edx
	je	L570
	movl	$0, 68(%esi)
L570:
	movzbl	%al, %ecx
	movl	%ecx, 96(%esp)
	jmp	L569
	.p2align 4,,10
	.p2align 3
L679:
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	116(%esp)
	fldcw	146(%esp)
	movl	116(%esp), %ebx
	movl	%ebx, 456(%esi)
	cmpl	$1, 2620(%edi)
	je	L680
	cmpl	$4095, %ebx
	jg	L681
	movl	$4096, 456(%esi)
	jmp	L681
	.p2align 4,,10
	.p2align 3
L1170:
	sall	$7, %eax
	movl	%eax, 124(%esp)
	negl	%eax
	movl	%eax, 116(%esp)
	jmp	L734
	.p2align 4,,10
	.p2align 3
L687:
	movl	404(%esi), %eax
	jmp	L690
	.p2align 4,,10
	.p2align 3
L618:
	imull	320(%edi), %ecx
	jmp	L1114
	.p2align 4,,10
	.p2align 3
L1112:
	movl	2612(%edi), %eax
	movl	%eax, 96(%esp)
	jmp	L594
	.p2align 4,,10
	.p2align 3
L707:
	movl	132(%esp), %eax
	movl	8(%eax), %eax
	testb	$-128, %al
	jne	L801
L710:
	movl	$-1, %ecx
	jmp	L713
	.p2align 4,,10
	.p2align 3
L1151:
	movl	136(%esp), %ecx
	leal	444(%esi), %edx
	movl	%edi, %eax
	call	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0
	jmp	L485
	.p2align 4,,10
	.p2align 3
L694:
	movl	9820(%edi), %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L693
	subl	%edx, %eax
	movl	9828(%edi), %edx
	imull	$764, %eax, %eax
	leal	200(%edx,%eax), %eax
	movl	%eax, 116(%esp)
	jmp	L695
	.p2align 4,,10
	.p2align 3
L622:
	movl	9820(%edi), %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L621
	subl	%edx, %eax
	imull	$764, %eax, %eax
	addl	9828(%edi), %eax
	movl	%eax, 96(%esp)
	leal	356(%eax), %ebx
	jmp	L623
	.p2align 4,,10
	.p2align 3
L565:
	movl	9820(%edi), %ecx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jge	L564
	subl	%edx, %eax
	imull	$764, %eax, %eax
	addl	9828(%edi), %eax
	jmp	L1110
	.p2align 4,,10
	.p2align 3
L604:
	xorl	%ecx, %ecx
	jmp	L603
	.p2align 4,,10
	.p2align 3
L506:
	movl	136(%esp), %edx
	movl	%edi, %eax
	call	__Z24libxmp_virt_resetchannelP12context_datai
	movl	704(%edi), %edx
	jmp	L500
	.p2align 4,,10
	.p2align 3
L621:
	movl	$0, 96(%esp)
	movl	$356, %ebx
	jmp	L623
	.p2align 4,,10
	.p2align 3
L564:
	movl	$72, 92(%esp)
	movl	$44, 84(%esp)
	movl	$0, 108(%esp)
	jmp	L566
	.p2align 4,,10
	.p2align 3
L693:
	movl	$200, 116(%esp)
	jmp	L695
	.p2align 4,,10
	.p2align 3
L582:
	movl	%eax, %ebx
	andl	$1, %eax
	orl	$4, %ebx
	orb	96(%esp), %al
	movl	%ebx, 8(%esi)
	jne	L585
	cmpb	$0, 116(%esp)
	je	L586
L585:
	movl	68(%esi), %eax
	movl	72(%esi), %edx
	cmpl	%eax, %edx
	jge	L589
	subl	%edx, %eax
	movl	%eax, 68(%esi)
	jmp	L586
	.p2align 4,,10
	.p2align 3
L1166:
	xorl	%ecx, %ecx
	leal	152(%ebx), %edx
	movl	%edi, %eax
	call	__Z14libxmp_lfo_getP12context_dataP3lfoi
	movl	2616(%edi), %ecx
	testl	%eax, %eax
	leal	511(%eax), %esi
	cmovns	%eax, %esi
	movl	12(%edi), %eax
	leal	-2(%ecx), %edx
	sarl	$9, %esi
	testl	%eax, %eax
	sete	%cl
	cmpl	$1, %edx
	ja	L700
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%cl
L700:
	testb	%cl, %cl
	je	L698
	movl	156(%ebx), %eax
	addl	164(%ebx), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, 164(%ebx)
	jmp	L698
	.p2align 4,,10
	.p2align 3
L1162:
	movl	%ebx, %eax
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	jne	L630
	testb	$4, %cl
	je	L630
	movl	%ebx, %eax
L817:
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%bl
	jmp	L637
	.p2align 4,,10
	.p2align 3
L1159:
	movl	$100, %ecx
	subl	84(%esi), %ecx
	movl	$1374389535, %eax
	imull	100(%esp), %ecx
	imull	%ecx
	sarl	$31, %ecx
	sarl	$5, %edx
	subl	%ecx, %edx
	andl	$32, %ebx
	movl	%edx, 100(%esp)
	je	L1112
L593:
	movl	12(%edi), %eax
	cltd
	idivl	16(%edi)
	testl	%edx, %edx
	sete	%al
	jmp	L597
	.p2align 4,,10
	.p2align 3
L1160:
	movzbl	250(%eax), %edx
	testb	%dl, %dl
	jns	L614
	testb	$8, 3(%eax)
	je	L610
	movl	12(%edi), %ebx
	testl	%ebx, %ebx
	je	L610
	andl	$-33, %edx
	cmpb	$-128, %dl
	je	L1176
	cmpb	$-64, %dl
	je	L1177
	subl	$1, %edx
	movb	%dl, 250(%eax)
	.p2align 4
	.p2align 3
L610:
	andl	$-32, %edx
	xorl	%eax, %eax
	cmpb	$-128, %dl
	cmove	%eax, %ecx
	jmp	L614
	.p2align 4,,10
	.p2align 3
L1161:
	movzbl	93(%esi), %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
	call	__Z18libxmp_virt_setvolP12context_dataii
	jmp	L591
	.p2align 4,,10
	.p2align 3
L524:
	andl	$-2, %ecx
	movl	%ecx, 88(%eax)
	jmp	L523
	.p2align 4,,10
	.p2align 3
L634:
	faddp	%st, %st(1)
	jmp	L635
	.p2align 4,,10
	.p2align 3
L1168:
	movl	%ebx, %edi
L720:
	movl	1292(%edi), %ecx
	movl	1260(%edi), %ebx
	movl	1264(%edi), %esi
	movl	1284(%edi), %edx
	leal	(%ecx,%ecx), %eax
	testb	$4, %bl
	cmove	%eax, %ecx
	movl	$24585, %eax
	cmpl	%eax, %ecx
	cmovle	%ecx, %eax
	movl	%eax, 136(%esp)
	movl	1280(%edi), %eax
	testb	$1, %bl
	je	L777
	testl	%ecx, %ecx
	je	L778
	movl	$20, %ecx
	movl	%edi, 132(%esp)
	subl	%esi, %ecx
	andl	$2, %ebx
	movl	136(%esp), %esi
	jne	L779
	movl	%ecx, 136(%esp)
	leal	(%esi,%eax), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L781:
	movl	(%edx), %ebx
	movzbl	136(%esp), %ecx
	movl	$127, %esi
	sarl	%cl, %ebx
	cmpl	$127, %ebx
	jg	L780
	cmpl	$-128, %ebx
	movl	$-128, %ecx
	cmovge	%ebx, %ecx
	movl	%ecx, %esi
L780:
	movl	%esi, %ebx
	addl	$1, %eax
	addl	$4, %edx
	movb	%bl, -1(%eax)
	cmpl	%eax, %edi
	jne	L781
	movl	132(%esp), %edi
L778:
	movl	$0, 1296(%edi)
	movl	9836(%edi), %esi
	movl	$0, 1300(%edi)
	testl	%esi, %esi
	jle	L789
	movl	1456(%edi), %eax
	movl	%eax, 132(%esp)
	movl	4(%edi), %eax
	testl	%eax, %eax
	js	L857
	xorl	%edx, %edx
	cmpl	1476(%edi), %eax
	cmovge	%edx, %eax
L790:
	movzbl	2272(%edi,%eax), %eax
	xorl	%edx, %edx
	movl	%eax, 152(%esp)
	movl	1448(%edi), %esi
	movl	%esi, 128(%esp)
	cmpl	%esi, %eax
	jge	L791
	movl	1488(%edi), %edx
	movl	(%edx,%eax,4), %eax
	movl	(%eax), %edx
L791:
	movl	%edx, 160(%esp)
	movl	8(%edi), %eax
	movl	%eax, 156(%esp)
	fldl	40(%edi)
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
	movl	136(%esp), %eax
	movl	%eax, 176(%esp)
	movl	1280(%edi), %ecx
	movl	%ecx, 188(%esp)
	movl	1292(%edi), %edx
	movl	1260(%edi), %ebx
	leal	(%edx,%edx), %esi
	testb	$4, %bl
	cmove	%esi, %edx
	andl	$1, %ebx
	movl	%edx, 192(%esp)
	jne	L793
	sall	192(%esp)
L793:
	movl	376(%edi), %edx
	testl	%edx, %edx
	je	L795
	movl	132(%esp), %ebx
	testl	%ebx, %ebx
	jle	L795
	addl	$16, %edx
	leal	236(%esp), %eax
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L798:
	movl	(%edx), %ebx
	movss	440(%edx), %xmm0
	movb	$0, -1(%eax)
	movss	448(%edx), %xmm3
	movl	$0, (%eax)
	movb	%bl, -6(%eax)
	movl	444(%edx), %ebx
	unpcklps	%xmm3, %xmm0
	movl	$0, 4(%eax)
	movw	%bx, -8(%eax)
	movl	28(%edx), %ebx
	movlps	%xmm0, -16(%eax)
	movb	%bl, -5(%eax)
	movl	36(%edx), %ebx
	movb	%bl, -4(%eax)
	movl	452(%edx), %ebx
	sarl	$4, %ebx
	movb	%bl, -3(%eax)
	movl	456(%edx), %ebx
	movb	%bl, -2(%eax)
	movl	152(%esp), %ebx
	cmpl	%ebx, 128(%esp)
	jle	L797
	movl	156(%esp), %esi
	movl	%esi, 136(%esp)
	cmpl	160(%esp), %esi
	jge	L797
	movl	1488(%edi), %esi
	movl	(%esi,%ebx,4), %ebx
	movl	1492(%edi), %esi
	movl	4(%ebx,%ecx,4), %ebx
	movl	(%esi,%ebx,4), %ebx
	movl	136(%esp), %esi
	cmpl	(%ebx), %esi
	jl	L1178
	.p2align 4
	.p2align 3
L797:
	addl	$1, %ecx
	addl	$480, %edx
	addl	$24, %eax
	cmpl	%ecx, 132(%esp)
	jne	L798
L789:
	movl	188(%esp), %ecx
	movl	176(%esp), %eax
L795:
	movl	192(%esp), %ebx
	movl	8(%ebp), %edi
	testl	%ebx, %ebx
	leal	3(%ebx), %edx
	movl	%eax, 108(%edi)
	cmovns	%ebx, %edx
	xorl	%eax, %eax
	movl	%ecx, 16(%edi)
	sarl	$2, %edx
	sall	$16, %edx
	cmpl	$16, 68(%edi)
	sete	%al
	movl	%edx, 96(%edi)
	xorl	%edx, %edx
	addl	%eax, %eax
	cmpl	$2, 72(%edi)
	sete	%dl
	sall	$2, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, _MV_Channels
	sete	%dl
	orl	%edx, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%edi)
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
	.p2align 4,,10
	.p2align 3
L497:
	.cfi_restore_state
	movl	136(%esp), %edx
	movl	%edi, %eax
	call	__ZL13update_volumeP12context_datai.lto_priv.0
	movl	704(%edi), %edx
	jmp	L500
	.p2align 4,,10
	.p2align 3
L1167:
	movl	1284(%ebx), %eax
	movl	132(%esp), %ecx
	movl	%edi, %edx
	fstpl	84(%esp)
	movl	%eax, 104(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	movl	76(%esp), %edx
	movl	132(%esp), %eax
	movl	%edi, %ecx
	movl	%edx, 168(%esp)
	leal	148(%esp), %edx
	movl	%eax, (%esp)
	movl	72(%esp), %eax
	call	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0
	movl	168(%esp), %eax
	movl	1292(%ebx), %ecx
	movl	%eax, 76(%esp)
	movl	%ecx, 100(%esp)
	testl	%ecx, %ecx
	jle	L737
	movl	%ecx, %edx
	movl	116(%esp), %eax
	subl	72(%edi), %eax
	movl	%ecx, 136(%esp)
	sarl	$3, %edx
	movl	%esi, 92(%esp)
	fldl	84(%esp)
	movl	%edx, 96(%esp)
	cltd
	idivl	96(%esp)
	movl	%eax, 68(%esp)
	movl	124(%esp), %eax
	subl	76(%edi), %eax
	cltd
	idivl	96(%esp)
	movl	%eax, 64(%esp)
L773:
	movl	88(%edi), %esi
	fldl	32(%edi)
	andl	$8, %esi
	jne	L738
	fildl	60(%edi)
	fxch	%st(1)
	fcomi	%st(1), %st
	jb	L1095
	fstp	%st(1)
	subl	$1, 100(%esp)
	movl	100(%esp), %eax
	testl	%eax, %eax
	jle	L1213
L1116:
	fld	%st(1)
L742:
	imull	$480, (%edi), %eax
	addl	376(%ebx), %eax
	movzbl	92(%eax), %ecx
	movl	16(%edi), %eax
	testl	%eax, %eax
	je	L1214
	movl	1260(%ebx), %eax
	andl	$4, %eax
	jne	L747
	testl	%esi, %esi
	jle	L749
	movl	104(%esp), %eax
	leal	(%esi,%esi), %edx
	movl	%edx, 56(%esp)
	movl	-8(%eax,%edx,4), %eax
	movl	%edx, 52(%esp)
	movl	%eax, 60(%esp)
L750:
	movl	44(%edi), %edx
	cmpl	$253, 124(%edi)
	jle	L1215
	movl	128(%edi), %eax
	testl	%eax, %eax
	je	L1179
	fstp	%st(1)
	jmp	L752
	.p2align 4,,10
	.p2align 3
L1215:
	fstp	%st(1)
L752:
	movl	80(%esp), %eax
	andl	$7, %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, 84(%esp)
L799:
	movl	92(%edi), %eax
	testl	%eax, %eax
	je	L746
	movl	52(%esp), %edx
	movl	104(%esp), %eax
	movl	-4(%eax,%edx,4), %eax
	movl	%eax, 52(%esp)
	movl	96(%esp), %eax
	cmpl	%esi, %eax
	jg	L1180
	movl	%esi, %eax
	subl	96(%esp), %eax
	movl	$0, 96(%esp)
L754:
	movl	68(%esp), %edx
	orl	64(%esp), %edx
	movl	84(%esp), %edx
	cmove	%esi, %eax
	testl	%edx, %edx
	je	L756
	fxch	%st(1)
	fnstcw	146(%esp)
	movl	%eax, 24(%esp)
	movl	68(%esp), %edx
	fstpl	36(%esp)
	movzwl	146(%esp), %eax
	fld	%st(0)
	movb	%cl, 141(%esp)
	fstpl	44(%esp)
	fmuls	LC31
	movl	64(%esp), %ecx
	orb	$12, %ah
	movl	%edx, 28(%esp)
	movw	%ax, 144(%esp)
	movl	124(%esp), %eax
	fldcw	144(%esp)
	fistpl	20(%esp)
	fldcw	146(%esp)
	sarl	$8, %eax
	movl	%ecx, 32(%esp)
	movl	%eax, 16(%esp)
	movl	116(%esp), %eax
	movl	%esi, 8(%esp)
	sarl	$8, %eax
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
	movl	104(%esp), %eax
	movl	%eax, 4(%esp)
	movl	84(%esp), %eax
	call	*%eax
	fldl	36(%esp)
	fldl	44(%esp)
	movzbl	141(%esp), %ecx
L756:
	movl	104(%esp), %eax
	movl	56(%esp), %edx
	leal	(%eax,%edx,4), %edx
	movl	68(%esp), %eax
	movl	%edx, 104(%esp)
	imull	%esi, %eax
	addl	%eax, 72(%edi)
	movl	64(%esp), %eax
	imull	%esi, %eax
	addl	%eax, 76(%edi)
	testb	$4, 1260(%ebx)
	jne	L757
	movl	-8(%edx), %eax
	movl	%eax, 84(%esp)
	subl	60(%esp), %eax
	movl	%eax, 84(%edi)
L757:
	movl	104(%esp), %eax
	movl	-4(%eax), %eax
	movl	%eax, 84(%esp)
	subl	52(%esp), %eax
	movl	%eax, 80(%edi)
	jmp	L746
	.p2align 4,,10
	.p2align 3
L1214:
	fstp	%st(1)
L746:
	movl	%esi, 84(%esp)
	fildl	84(%esp)
	movl	136(%esp), %eax
	fmulp	%st, %st(1)
	faddl	32(%edi)
	fstl	32(%edi)
	testl	%eax, %eax
	jle	L1181
	fstp	%st(0)
L758:
	movl	132(%esp), %eax
	movl	44(%eax), %eax
	testb	$2, %al
	jne	L767
	movl	1464(%ebx), %esi
	cmpl	%esi, 52(%edi)
	jge	L1216
	testb	$32, %al
	jne	L1182
	fstp	%st(0)
	jmp	L768
	.p2align 4,,10
	.p2align 3
L1216:
	fstp	%st(0)
	jmp	L768
	.p2align 4,,10
	.p2align 3
L1217:
	fstp	%st(0)
	jmp	L768
	.p2align 4,,10
	.p2align 3
L1218:
	fstp	%st(0)
L768:
	movl	136(%esp), %eax
	movl	92(%esp), %esi
	movl	104(%esp), %ecx
	movl	%eax, (%esp)
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZL12do_anticlickP12context_dataiPii.lto_priv.0
	cmpl	712(%ebx), %esi
	jnb	L737
	movl	128(%esp), %edx
	addl	720(%ebx), %edx
	imull	$480, (%edx), %eax
	addl	376(%ebx), %eax
	orl	$32, 8(%eax)
	andl	$-17, 44(%edx)
	testb	$64, 2615(%ebx)
	jne	L1183
	jmp	L737
	.p2align 4,,10
	.p2align 3
L1222:
	fstp	%st(0)
	jmp	L737
L1223:
	fstp	%st(0)
	jmp	L737
L1224:
	fstp	%st(0)
	.p2align 4
	.p2align 3
L737:
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L774
	leal	148(%esp), %eax
	call	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0
L774:
	movl	116(%esp), %eax
	movl	%eax, 72(%edi)
	movl	124(%esp), %eax
	movl	%eax, 76(%edi)
	jmp	L724
	.p2align 4,,10
	.p2align 3
L1182:
	testb	$1, 88(%edi)
	jne	L1217
	.p2align 4
	.p2align 3
L767:
	testb	%cl, %cl
	jne	L1218
	movl	108(%esp), %eax
	movl	132(%esp), %ecx
	movl	%edi, %edx
	fstpl	84(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	fldl	84(%esp)
	testl	%eax, %eax
	je	L770
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L772
	leal	148(%esp), %eax
	fstpl	84(%esp)
	call	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0
	fldl	84(%esp)
L772:
	movl	76(%esp), %eax
	movl	%edi, %ecx
	leal	148(%esp), %edx
	fstpl	84(%esp)
	movl	%eax, 168(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	movl	72(%esp), %eax
	call	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0
	movl	168(%esp), %eax
	fldl	84(%esp)
	movl	%eax, 76(%esp)
L770:
	movl	136(%esp), %eax
	testl	%eax, %eax
	jg	L773
	fstp	%st(0)
	jmp	L1103
	.p2align 4,,10
	.p2align 3
L1213:
	fstp	%st(0)
	fstp	%st(0)
	jmp	L1103
L1219:
	fstp	%st(0)
	fstp	%st(0)
L1103:
	movl	92(%esp), %esi
	jmp	L737
	.p2align 4,,10
	.p2align 3
L738:
	fildl	56(%edi)
	fcomi	%st(1), %st
	jb	L1096
	fstp	%st(0)
	subl	$1, 100(%esp)
	movl	100(%esp), %eax
	testl	%eax, %eax
	jle	L1219
	xorl	%esi, %esi
L745:
	fld	%st(1)
	fchs
	jmp	L742
	.p2align 4,,10
	.p2align 3
L494:
	movl	432(%edx), %ebx
	testl	%ecx, %ecx
	je	L496
	sall	$5, %ebx
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	addl	%ebx, %ecx
	movl	%ecx, (%esp)
	movl	136(%esp), %ecx
	call	__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0
	jmp	L486
	.p2align 4,,10
	.p2align 3
L663:
	movl	$1374389535, %eax
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$12, %edx
	subl	%eax, %edx
	imull	$100, 40(%esi), %eax
	imull	$12800, %edx, %edx
	leal	(%eax,%edx), %ebx
	movl	108(%esp), %eax
	addl	116(%esp), %eax
	cmpl	$107, %eax
	jg	L667
	movl	84(%esp), %eax
	testl	%eax, %eax
	js	L668
	movl	100(%esp), %eax
	movl	96(%esp), %edx
	sall	$7, %eax
	addl	%ebx, %eax
	testb	$8, 356(%edx)
	cmove	%eax, %ebx
	jmp	L668
	.p2align 4,,10
	.p2align 3
L513:
	cmpl	$1, %edx
	sete	%dl
	jmp	L514
	.p2align 4,,10
	.p2align 3
L704:
	movl	$128, 472(%ebx)
	jmp	L802
	.p2align 4,,10
	.p2align 3
L1156:
	addl	372(%esi), %eax
	movl	%eax, 368(%esi)
	testl	%eax, %eax
	jns	L562
L1157:
	movl	$0, 368(%esi)
	movl	128(%esp), %esi
	addl	376(%edi), %esi
	jmp	L558
	.p2align 4,,10
	.p2align 3
L1169:
	fstp	%st(0)
	movl	$1, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	jmp	L724
	.p2align 4,,10
	.p2align 3
L1086:
	comiss	%xmm0, %xmm1
	ja	L1184
	movl	12(%edi), %ebx
	testl	%ebx, %ebx
	jne	L486
	movss	420(%edx), %xmm0
	jmp	L490
	.p2align 4,,10
	.p2align 3
L715:
	movl	9824(%edi), %ebx
	addl	%ecx, %ebx
	cmpl	%ebx, %edx
	jge	L714
	subl	%ecx, %edx
	imull	$52, %edx, %edx
	addl	9832(%edi), %edx
	jmp	L716
	.p2align 4,,10
	.p2align 3
L1184:
	addss	420(%edx), %xmm0
	movss	424(%edx), %xmm1
	comiss	%xmm0, %xmm1
	ja	L493
L1107:
	movss	%xmm0, 420(%edx)
	jmp	L490
	.p2align 4,,10
	.p2align 3
L1165:
	movl	$2147483647, %ebx
L680:
	movl	40(%esi), %ecx
	movl	$83, %edx
	movl	%edi, %eax
	movl	%ecx, 116(%esp)
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	movl	116(%esp), %ecx
	movl	$48, %edx
	movl	%edi, %eax
	flds	LC25
	movl	$0, 84(%esp)
	movl	$1085276160, 88(%esp)
	fmulp	%st, %st(1)
	fstpl	108(%esp)
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	movl	%ebx, 116(%esp)
	fildl	116(%esp)
	fldl	108(%esp)
	fcomi	%st(1), %st
	jbe	L1093
	fstp	%st(1)
	fstp	%st(1)
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	456(%esi)
	fldcw	146(%esp)
	jmp	L681
	.p2align 4,,10
	.p2align 3
L1089:
	fstp	%st(0)
	fcomi	%st(1), %st
	jbe	L1220
	fstp	%st(0)
	fstl	24(%ebx)
	jmp	L548
	.p2align 4,,10
	.p2align 3
L616:
	cmpb	$-128, %dl
	jne	L617
	movzbl	249(%eax), %edx
	jmp	L617
	.p2align 4,,10
	.p2align 3
L650:
	movl	108(%esp), %edx
	fstpl	84(%esp)
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z21libxmp_note_to_periodP12context_dataiid.isra.0
	fdivrl	84(%esp)
	jmp	L1142
	.p2align 4,,10
	.p2align 3
L649:
	fnstcw	146(%esp)
	movl	$240, %eax
	subl	108(%esp), %eax
	sall	$4, %eax
	movl	%eax, 84(%esp)
	fildl	84(%esp)
	fsubp	%st, %st(1)
	fmuls	LC16
	fmuls	LC17
L1115:
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	jmp	L657
	.p2align 4,,10
	.p2align 3
L646:
	movl	$0, 116(%esp)
	jmp	L645
	.p2align 4,,10
	.p2align 3
L1155:
	fstp	%st(0)
	movl	$0, 24(%ebx)
	movl	$0, 28(%ebx)
	jmp	L551
	.p2align 4,,10
	.p2align 3
L540:
	fsubrp	%st, %st(1)
	fstl	24(%ebx)
	fxch	%st(1)
	fcomi	%st(1), %st
	fstp	%st(1)
	jnb	L541
	fstp	%st(0)
	jmp	L1108
	.p2align 4,,10
	.p2align 3
L777:
	testl	%ecx, %ecx
	je	L778
	movl	$12, %ecx
	subl	%esi, %ecx
	movl	136(%esp), %esi
	andl	$2, %ebx
	movl	%edi, 136(%esp)
	leal	(%eax,%esi,2), %edi
	jne	L788
	.p2align 6
	.p2align 4
	.p2align 3
L786:
	movl	(%edx), %ebx
	movl	$32767, %esi
	sarl	%cl, %ebx
	cmpl	$32767, %ebx
	jg	L785
	cmpl	$-32768, %ebx
	movl	$-32768, %esi
	cmovge	%ebx, %esi
L785:
	movw	%si, (%eax)
	addl	$2, %eax
	addl	$4, %edx
	cmpl	%edi, %eax
	jne	L786
	movl	136(%esp), %edi
	jmp	L778
	.p2align 6
	.p2align 4,,10
	.p2align 3
L788:
	movl	(%edx), %ebx
	movl	$32767, %esi
	sarl	%cl, %ebx
	cmpl	$32767, %ebx
	jg	L787
	cmpl	$-32768, %ebx
	movl	$-32768, %esi
	cmovge	%ebx, %esi
L787:
	addw	$-32768, %si
	addl	$2, %eax
	addl	$4, %edx
	movw	%si, -2(%eax)
	cmpl	%eax, %edi
	jne	L788
	movl	136(%esp), %edi
	jmp	L778
	.p2align 4,,10
	.p2align 3
L1181:
	fstp	%st(1)
	movl	132(%esp), %eax
	movl	92(%esp), %esi
	movl	44(%eax), %eax
	testb	$2, %al
	je	L759
	movl	88(%edi), %eax
L760:
	testb	$8, %al
	je	L1185
	fildl	56(%edi)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	L737
L763:
	movl	108(%esp), %eax
	movl	132(%esp), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0
	testl	%eax, %eax
	je	L737
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L766
	leal	148(%esp), %eax
	call	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0
L766:
	movl	76(%esp), %eax
	movl	%edi, %ecx
	leal	148(%esp), %edx
	movl	%eax, 168(%esp)
	movl	132(%esp), %eax
	movl	%eax, (%esp)
	movl	72(%esp), %eax
	call	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0
	movl	168(%esp), %eax
	movl	%eax, 76(%esp)
	jmp	L737
	.p2align 4,,10
	.p2align 3
L1096:
	fnstcw	146(%esp)
	fsubr	%st(1), %st
	movl	136(%esp), %ecx
	movzwl	146(%esp), %eax
	fdiv	%st(2), %st
	andb	$-13, %ah
	orb	$8, %ah
	movw	%ax, 142(%esp)
	movzwl	146(%esp), %eax
	fldcw	142(%esp)
	frndint
	fldcw	146(%esp)
	fildl	136(%esp)
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnbe	%st(1), %st
	fstp	%st(1)
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
	movl	136(%esp), %esi
	subl	%esi, %ecx
	movl	%ecx, 136(%esp)
	jmp	L745
	.p2align 4,,10
	.p2align 3
L1095:
	fnstcw	146(%esp)
	fsubr	%st, %st(1)
	fxch	%st(1)
	movl	136(%esp), %ecx
	movzwl	146(%esp), %eax
	fdiv	%st(2), %st
	andb	$-13, %ah
	orb	$8, %ah
	movw	%ax, 142(%esp)
	movzwl	146(%esp), %eax
	fldcw	142(%esp)
	frndint
	fldcw	146(%esp)
	fildl	136(%esp)
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnbe	%st(1), %st
	fstp	%st(1)
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	136(%esp)
	fldcw	146(%esp)
	movl	136(%esp), %esi
	subl	%esi, %ecx
	movl	%ecx, 136(%esp)
	jmp	L1116
	.p2align 4,,10
	.p2align 3
L747:
	testl	%esi, %esi
	jle	L846
	movl	%esi, 52(%esp)
	movl	%esi, 56(%esp)
	jmp	L750
	.p2align 4,,10
	.p2align 3
L1175:
	movl	84(%esp), %eax
	testl	%eax, %eax
	js	L670
	movl	96(%esp), %eax
	testb	$8, 356(%eax)
	je	L1186
L670:
	imull	$12800, 116(%esp), %eax
	addl	%eax, %ebx
	andl	$4, %ecx
	je	L666
	.p2align 4
	.p2align 3
L803:
	subl	$460800, %ebx
	jmp	L666
	.p2align 4,,10
	.p2align 3
L1092:
	fnstcw	146(%esp)
	fsubs	LC19
	movzwl	146(%esp), %eax
	andb	$-13, %ah
	orb	$8, %ah
	movw	%ax, 142(%esp)
	fldcw	142(%esp)
	frndint
	fldcw	146(%esp)
	jmp	L1115
	.p2align 4,,10
	.p2align 3
L495:
	cmpl	$143, %eax
	jg	L486
	addl	$-128, %eax
	sall	$4, %eax
	movl	%eax, 408(%edx)
	jmp	L486
	.p2align 4,,10
	.p2align 3
L496:
	testl	%ebx, %ebx
	jne	L486
	addl	%eax, %eax
	movl	%eax, 404(%edx)
	jmp	L486
	.p2align 4,,10
	.p2align 3
L846:
	xorl	%eax, %eax
L749:
	movl	%esi, 84(%esp)
	fildl	84(%esp)
	movl	%eax, 60(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	32(%edi)
	jmp	L758
	.p2align 4,,10
	.p2align 3
L661:
	je	L659
	leal	-6400(%ebx), %ecx
	movl	$1374389535, %eax
	imull	%ecx
	sarl	$31, %ecx
	sarl	$12, %edx
	subl	%ecx, %edx
	imull	$12800, %edx, %ebx
	jmp	L659
	.p2align 4,,10
	.p2align 3
L1093:
	fstp	%st(0)
	fxch	%st(1)
	fmull	84(%esp)
	fxch	%st(1)
	fcomip	%st(1), %st
	jbe	L1221
	fnstcw	146(%esp)
	movzwl	146(%esp), %eax
	orb	$12, %ah
	movw	%ax, 144(%esp)
	fldcw	144(%esp)
	fistpl	456(%esi)
	fldcw	146(%esp)
	jmp	L681
	.p2align 4,,10
	.p2align 3
L688:
	movl	100(%esp), %eax
	movl	%eax, 412(%esi)
	jmp	L689
	.p2align 4,,10
	.p2align 3
L1153:
	movl	52(%eax), %edx
	movl	1464(%edi), %ebx
	testl	%edx, %edx
	js	L527
	cmpl	%ebx, %edx
	jge	L526
	imull	$52, %edx, %edx
	addl	1500(%edi), %edx
	movl	%ecx, %ebx
	movl	44(%edx), %edx
	andl	$-9, %ebx
	andl	$36, %edx
	cmpl	$32, %edx
	cmove	%ebx, %ecx
	jmp	L526
	.p2align 4,,10
	.p2align 3
L408:
	movl	340(%edi), %ebx
	movl	12(%edi), %esi
	leal	1(%ebx), %ecx
	leal	1(%esi), %edx
	imull	16(%edi), %ecx
	movl	%edx, 12(%edi)
	cmpl	%ecx, %edx
	jl	L423
	testb	$4, %al
	je	L424
	testl	%ebx, %ebx
	jne	L1187
L424:
	movl	%edi, %eax
	call	__ZL8next_rowP12context_data.lto_priv.0
	jmp	L423
	.p2align 4,,10
	.p2align 3
L427:
	movl	%edi, %eax
	call	__ZL19check_end_of_moduleP12context_data.lto_priv.0
	movl	1456(%edi), %eax
	testl	%eax, %eax
	jle	L428
	movl	(%edi), %eax
	movl	8(%edi), %esi
	movl	$0, 136(%esp)
	movzbl	2272(%edi,%eax), %eax
	movl	%esi, 132(%esp)
	sall	$2, %eax
	movl	%eax, 128(%esp)
	leal	4(,%esi,8), %eax
	movl	%eax, 124(%esp)
	.p2align 4
	.p2align 3
L475:
	movl	128(%esp), %ecx
	movl	1488(%edi), %eax
	movl	(%eax,%ecx), %eax
	movl	132(%esp), %ecx
	movl	4(%eax,%ebx,4), %edx
	movl	1492(%edi), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	(%eax), %ecx
	jge	L430
	movl	124(%esp), %ecx
	movl	4(%eax,%ecx), %edx
	movl	(%eax,%ecx), %eax
	movl	%edx, 152(%esp)
	movl	%eax, 148(%esp)
	movzbl	153(%esp), %eax
	movzbl	151(%esp), %edx
	cmpb	$-127, 148(%esp)
	je	L1188
L432:
	movl	136(%esp), %ecx
	addl	376(%edi), %ecx
	movl	%ecx, %esi
	cmpb	$15, %dl
	je	L1189
	cmpb	$-93, %dl
	jne	L449
	movzbl	152(%esp), %edx
L445:
	testb	%dl, %dl
	je	L1123
	movl	%edx, 16(%edi)
L1123:
	cmpb	$15, %al
	je	L442
L1191:
	cmpb	$-93, %al
	je	L447
L464:
	cmpb	$14, %al
	jne	L433
	movzbl	154(%esp), %edx
L1140:
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	je	L1190
	.p2align 4
	.p2align 3
L433:
	movl	368(%edi), %eax
	testl	%eax, %eax
	je	L473
	testb	$2, %al
	je	L474
	movl	364(%edi), %eax
	testl	%eax, %eax
	jle	L474
L473:
	movl	%ebx, %ecx
	leal	148(%esp), %edx
	movl	%edi, %eax
	call	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0
L474:
	movl	1456(%edi), %eax
	addl	$1, %ebx
	addl	$480, 136(%esp)
	cmpl	%eax, %ebx
	jl	L475
	jmp	L428
	.p2align 4,,10
	.p2align 3
L1189:
	movzbl	152(%esp), %edx
	cmpb	$31, %dl
	jbe	L445
	cmpb	$15, %al
	jne	L1191
L442:
	movzbl	154(%esp), %eax
	cmpb	$31, %al
	ja	L433
L1135:
	testb	%al, %al
	je	L433
	movl	%eax, 16(%edi)
	jmp	L433
	.p2align 4,,10
	.p2align 3
L430:
	movl	$0, 148(%esp)
	movl	$0, 152(%esp)
	jmp	L433
	.p2align 4,,10
	.p2align 3
L449:
	cmpb	$15, %al
	je	L1192
	cmpb	$-93, %al
	je	L1193
	cmpb	$14, %dl
	jne	L464
	movzbl	152(%esp), %edx
L455:
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	jne	L464
	andl	$15, %edx
	je	L464
L1105:
L466:
	addl	$1, %edx
	movzbl	%dl, %edx
	movl	%edx, 60(%esi)
	movl	148(%esp), %edx
	movl	152(%esp), %ecx
	movl	%edx, 444(%esi)
	movl	%ecx, 448(%esi)
	movzbl	149(%esp), %edx
	testb	%dl, %dl
	je	L467
	movzbl	%dl, %ecx
	movl	%ecx, 452(%esi)
L467:
	testb	$2, 2615(%edi)
	je	L468
	orb	150(%esp), %al
	movzbl	148(%esp), %ecx
	je	L1194
	testb	%cl, %cl
	jne	L472
	movl	16(%esi), %eax
	movl	%eax, 116(%esp)
	movzbl	116(%esp), %eax
	addl	$1, %eax
	movb	%al, 444(%esi)
L472:
	testb	%dl, %dl
	jne	L468
L471:
	movl	48(%esi), %eax
	movb	%al, 445(%esi)
L468:
	cmpl	$3, 2616(%edi)
	jne	L474
	movl	376(%edi), %eax
	movl	136(%esp), %esi
	movl	$0, (%eax,%esi)
	jmp	L474
	.p2align 4,,10
	.p2align 3
L1188:
	movzbl	149(%esp), %ecx
	movl	%ecx, %esi
	subl	$1, %ecx
	cmpl	1460(%edi), %ecx
	jb	L1195
	cmpb	$14, %dl
	jne	L432
	movzbl	152(%esp), %edx
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	jne	L437
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L436
L437:
	movl	136(%esp), %ecx
	addl	376(%edi), %ecx
	movl	%ecx, %esi
	cmpb	$15, %al
	je	L811
L1099:
	cmpb	$-93, %al
	jne	L455
	movzbl	154(%esp), %ecx
L1130:
	testb	%cl, %cl
	je	L1140
	movl	$14, %edx
	.p2align 4
	.p2align 3
L453:
	movl	%ecx, 16(%edi)
	cmpb	$14, %dl
	jne	L433
	movzbl	152(%esp), %edx
L1196:
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	jne	L433
L1190:
	andl	$15, %edx
	je	L433
	jmp	L1105
	.p2align 4,,10
	.p2align 3
L1195:
	imull	$764, %ecx, %ecx
	addl	1496(%edi), %ecx
	movl	36(%ecx), %esi
	testl	%esi, %esi
	jle	L1129
	testb	$1, 44(%ecx)
	je	L1129
	cmpb	$14, %dl
	jne	L432
	movzbl	152(%esp), %edx
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	jne	L437
	andl	$15, %edx
	jne	L439
L440:
	xorl	%edx, %edx
	movw	%dx, 151(%esp)
	cmpb	$15, %al
	je	L442
	cmpb	$-93, %al
	je	L447
	movl	136(%esp), %esi
	addl	376(%edi), %esi
	jmp	L464
	.p2align 4,,10
	.p2align 3
L1129:
	cmpb	$14, %dl
	jne	L432
	movzbl	152(%esp), %edx
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$13, %cl
	jne	L437
L436:
	testb	$15, %dl
	jne	L439
	movl	136(%esp), %esi
	addl	376(%edi), %esi
	cmpb	$15, %al
	jne	L1099
	.p2align 4
	.p2align 3
L811:
	movzbl	154(%esp), %ecx
	cmpb	$31, %cl
	jbe	L1130
L452:
	movl	%edx, %eax
	shrb	$4, %al
	cmpb	$13, %al
	jne	L433
	andl	$15, %edx
	je	L433
	movl	$15, %eax
	jmp	L1105
	.p2align 4,,10
	.p2align 3
L447:
	movzbl	154(%esp), %eax
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1149:
	movl	%eax, 4(%edi)
L410:
	movl	12(%ecx), %edx
	movl	%edx, 360(%edi)
	cmpl	8(%ecx), %eax
	jle	L412
	movl	$0, 360(%edi)
	movl	$0, 344(%edi)
	movl	$-1, 336(%edi)
L413:
	subl	$1, %eax
	movl	%eax, (%edi)
	jmp	L415
	.p2align 4,,10
	.p2align 3
L1152:
	movl	136(%esp), %esi
	cmpl	704(%edi), %esi
	jnb	L520
	movl	716(%edi), %edx
	movl	124(%esp), %esi
	movl	4(%edx,%esi), %edx
	cmpl	712(%edi), %edx
	jnb	L520
	testl	%edx, %edx
	js	L520
	movl	$0, (%esp)
	movl	%edi, %eax
	movl	$0, 4(%esp)
	call	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0
	movl	132(%esp), %eax
	movl	240(%eax), %eax
	jmp	L520
	.p2align 4,,10
	.p2align 3
L1192:
	movzbl	154(%esp), %ecx
	cmpb	$31, %cl
	jbe	L459
	cmpb	$14, %dl
	jne	L433
	movzbl	152(%esp), %edx
	jmp	L452
	.p2align 4,,10
	.p2align 3
L1193:
	movzbl	154(%esp), %ecx
L459:
	testb	%cl, %cl
	jne	L453
	cmpb	$14, %dl
	jne	L433
	movzbl	152(%esp), %edx
	jmp	L1196
	.p2align 4,,10
	.p2align 3
L1164:
	movsbl	174(%esi), %eax
	movl	%eax, 116(%esp)
	jmp	L645
	.p2align 4,,10
	.p2align 3
L759:
	movl	1464(%ebx), %ecx
	cmpl	%ecx, 52(%edi)
	jge	L1222
	testb	$32, %al
	je	L1223
	movl	88(%edi), %eax
	testb	$1, %al
	jne	L1224
	jmp	L760
	.p2align 4,,10
	.p2align 3
L779:
	movl	%ecx, 136(%esp)
	leal	(%esi,%eax), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L783:
	movl	(%edx), %ebx
	movzbl	136(%esp), %ecx
	movl	$127, %esi
	sarl	%cl, %ebx
	cmpl	$127, %ebx
	jg	L782
	cmpl	$-128, %ebx
	movl	$-128, %ecx
	cmovge	%ebx, %ecx
	movl	%ecx, %esi
L782:
	leal	-128(%esi), %ebx
	addl	$1, %eax
	addl	$4, %edx
	movb	%bl, -1(%eax)
	cmpl	%edi, %eax
	jne	L783
	movl	132(%esp), %edi
	jmp	L778
	.p2align 4,,10
	.p2align 3
L1150:
	movl	$0, 360(%edi)
	jmp	L414
	.p2align 4,,10
	.p2align 3
L1180:
	subl	%esi, %eax
	movl	%eax, 96(%esp)
	xorl	%eax, %eax
	jmp	L754
	.p2align 4,,10
	.p2align 3
L857:
	xorl	%eax, %eax
	jmp	L790
	.p2align 4,,10
	.p2align 3
L1179:
	testl	%esi, %esi
	jle	L847
	fstp	%st(1)
	movl	80(%esp), %eax
	andl	$3, %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, 84(%esp)
	jmp	L799
	.p2align 4,,10
	.p2align 3
L1147:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L404
	movl	$LC9, 12(%esp)
	movl	$28, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1197
	.p2align 4,,10
	.p2align 3
L1183:
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z22libxmp_virt_resetvoiceP12context_dataii
	jmp	L737
	.p2align 4,,10
	.p2align 3
L1178:
	leal	4(%ebx,%esi,8), %ebx
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	movl	%esi, (%eax)
	movl	%ebx, 4(%eax)
	jmp	L797
	.p2align 4,,10
	.p2align 3
L1185:
	fildl	60(%edi)
	fxch	%st(1)
	fcomip	%st(1), %st
	fstp	%st(0)
	jnb	L763
	jmp	L737
	.p2align 4,,10
	.p2align 3
L412:
	movl	$0, 344(%edi)
	movl	$-1, 336(%edi)
	jmp	L413
L527:
	cmpl	%ebx, %edx
	jge	L526
	jmp	L530
	.p2align 4,,10
	.p2align 3
L1186:
	movl	100(%esp), %eax
	sall	$7, %eax
	addl	%eax, %ebx
	jmp	L668
L1177:
	movzbl	249(%eax), %edx
	orl	$-128, %edx
	movb	%dl, 250(%eax)
	jmp	L610
L1187:
	movl	332(%edi), %eax
	testl	%eax, %eax
	je	L424
	movl	%edi, %eax
	call	__ZL8next_rowP12context_data.lto_priv.0
	movl	%edi, %eax
	call	__ZL19check_end_of_moduleP12context_data.lto_priv.0
	jmp	L424
L1176:
	movzbl	248(%eax), %edx
	orl	$-64, %edx
	movb	%dl, 250(%eax)
	jmp	L614
L1194:
	testb	%dl, %dl
	jne	L470
	cmpb	$-127, %cl
	je	L471
	movl	76(%esi), %eax
	movl	%eax, 116(%esp)
	movzbl	116(%esp), %eax
	addl	$1, %eax
	movb	%al, 446(%esi)
	testb	%cl, %cl
	jne	L471
	movl	16(%esi), %eax
	movl	%eax, 116(%esp)
	movzbl	116(%esp), %eax
	addl	$1, %eax
	movb	%al, 444(%esi)
	jmp	L471
L439:
	movb	$0, 148(%esp)
	jmp	L440
L470:
	testb	%cl, %cl
	jne	L468
	movl	16(%esi), %eax
	movl	%eax, 116(%esp)
	movzbl	116(%esp), %eax
	addl	$1, %eax
	movb	%al, 444(%esi)
	jmp	L468
L847:
	movl	60(%esp), %eax
	jmp	L749
L1172:
	movl	96(%esp), %edx
	andl	$1, %ebx
	orl	%ebx, %edx
	movl	%eax, %ebx
	orl	116(%esp), %edx
	jmp	L573
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL18MV_GetNextXMPBlockP9VoiceNode.cold;	.scl	3;	.type	32;	.endef
__ZL18MV_GetNextXMPBlockP9VoiceNode.cold:
LFSB84:
L714:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	44, %eax
	ud2
L530:
	movl	44, %eax
	ud2
	.cfi_endproc
LFE84:
	.text
	.section	.text.unlikely,"x"
LCOLDE39:
	.text
LHOTE39:
	.p2align 4
	.globl	__ZL15mod_test_memoryPKcj.lto_priv.0
	.def	__ZL15mod_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15mod_test_memoryPKcj.lto_priv.0:
LFB138:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ecx
	cmpl	$1083, 16(%esp)
	jbe	L1233
	cmpb	$67, 1082(%ecx)
	jne	L1228
	movzbl	1083(%ecx), %eax
	subl	$72, %eax
	jne	L1228
	movzbl	1080(%ecx), %edx
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1229
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movzbl	1081(%ecx), %ebx
	leal	-48(%ebx), %esi
	cmpl	$9, %esi
	ja	L1230
	leal	(%edx,%edx,4), %edx
	leal	-49(%ebx,%edx,2), %edx
	cmpl	$31, %edx
	jbe	L1241
L1230:
	cmpb	$67, 1081(%ecx)
	jne	L1240
	cmpb	$72, 1082(%ecx)
	jne	L1240
	movzbl	1083(%ecx), %eax
	subl	$78, %eax
	jne	L1240
L1241:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1228:
	cmpb	$67, 1081(%ecx)
	jne	L1229
	cmpb	$72, 1082(%ecx)
	je	L1242
	.p2align 4
	.p2align 3
L1229:
	xorl	%eax, %eax
	cmpl	$776678989, 1080(%ecx)
	setne	%al
	negl	%eax
L1225:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1242:
	.cfi_restore_state
	movzbl	1083(%ecx), %eax
	subl	$78, %eax
	jne	L1229
	movzbl	1080(%ecx), %edx
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1229
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1240:
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L1229
	.p2align 4,,10
	.p2align 3
L1233:
	movl	$-1, %eax
	jmp	L1225
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__ZL14xm_test_memoryPKcj.lto_priv.0
	.def	__ZL14xm_test_memoryPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14xm_test_memoryPKcj.lto_priv.0:
LFB139:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$1, %eax
	cmpl	$16, 20(%esp)
	jbe	L1243
	movl	16(%esp), %eax
	movl	$17, 8(%esp)
	movl	$__ZZL14xm_test_memoryPKcjE8xm_magic, 4(%esp)
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
L1243:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE139:
	.section .rdata,"dr"
	.align 4
LC48:
	.ascii "MV_PlayXMP: error %i in xmp_load_module_from_memory\0"
	.text
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE3runEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE3runEPNS0_9task_baseE:
LFB140:
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
	subl	$396, %esp
	movl	(%ecx), %eax
	movl	%eax, -300(%ebp)
	movl	20(%eax), %eax
	movl	20(%eax), %ebx
	movl	8(%ebx), %edi
	testl	%edi, %edi
	je	L1533
L1249:
	movl	4(%ebx), %esi
	testl	%esi, %esi
	jle	L1416
	movl	(%ebx), %ebx
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -296(%ebp)
	testl	%eax, %eax
	je	L1252
	movl	$0, 4(%eax)
	movl	$1, (%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1534
	movl	%ebx, (%eax)
	movl	-296(%ebp), %ebx
	movl	$0, 4(%eax)
	movl	%esi, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, 8(%ebx)
	movl	%esi, 4(%ebx)
	movl	9836(%edi), %eax
	testl	%eax, %eax
	jg	L1535
L1255:
	leal	1320(%edi), %eax
	movl	%esi, 2560(%edi)
	xorl	%ebx, %ebx
	movl	$0, 2536(%edi)
	movl	$0, 2528(%edi)
	movl	$0, 2532(%edi)
	movl	%eax, -304(%ebp)
	movl	$1208, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$125, %edx
	flds	LC40
	movl	$6, %eax
	movl	%edx, 1472(%edi)
	leal	1504(%edi), %edx
	movups	LC41, %xmm0
	movl	%eax, 1468(%edi)
	movl	2628(%edi), %eax
	movl	%edx, %esi
	fstpl	2568(%edi)
	flds	LC43
	movl	%edx, -320(%ebp)
	movl	$0, 2608(%edi)
	movl	$0, 2612(%edi)
	movl	$0, 2616(%edi)
	movl	$0, 2620(%edi)
	movl	$0, 2540(%edi)
	movl	$0, 9804(%edi)
	movl	$0, 9812(%edi)
	movl	$4, 1456(%edi)
	movl	%edi, -312(%ebp)
	movups	%xmm0, 2584(%edi)
	fstpl	2576(%edi)
	movl	%eax, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1256:
	addl	$1, %ebx
	movl	$1374389535, %eax
	movl	$64, 4(%esi)
	addl	$12, %esi
	movl	%ebx, %ecx
	sarl	%ecx
	andl	$1, %ecx
	negl	%ecx
	movzbl	%cl, %ecx
	addl	$-128, %ecx
	imull	%edi, %ecx
	imull	%ecx
	sarl	$31, %ecx
	sarl	$5, %edx
	subl	%ecx, %edx
	subl	$-128, %edx
	movl	%edx, -12(%esi)
	cmpl	$64, %ebx
	jne	L1256
	movl	-296(%ebp), %edi
	movl	$_libxmp_loader_xm, %ebx
	xorl	%esi, %esi
	jmp	L1262
	.p2align 4,,10
	.p2align 3
L1258:
	addl	$1, %esi
	movl	_format_loaders(,%esi,4), %ebx
	testl	%ebx, %ebx
	je	L1536
L1262:
	cmpl	$1, (%edi)
	jne	L1257
	movl	8(%edi), %edx
	xorl	%ecx, %ecx
	movl	8(%edx), %eax
	testl	%eax, %eax
	cmovg	%ecx, %eax
	movl	%eax, 4(%edx)
	cmpl	$-1, 12(%edi)
	jne	L1257
	movl	$0, 12(%edi)
L1257:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	*4(%ebx)
	testl	%eax, %eax
	jne	L1258
	movl	%eax, -336(%ebp)
	movl	-296(%ebp), %eax
	movl	-312(%ebp), %edi
	movl	-320(%ebp), %edx
	cmpl	$1, (%eax)
	jne	L1259
	movl	8(%eax), %eax
	xorl	%ecx, %ecx
	movl	8(%eax), %esi
	testl	%esi, %esi
	cmovg	%ecx, %esi
	movl	%esi, 4(%eax)
	movl	-296(%ebp), %eax
	cmpl	$-1, 12(%eax)
	jne	L1259
	movl	$0, 12(%eax)
L1259:
	movl	%edx, -312(%ebp)
	movl	$0, 8(%esp)
	movl	-296(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-304(%ebp), %eax
	movl	%eax, (%esp)
	call	*8(%ebx)
	movl	-312(%ebp), %edx
	testl	%eax, %eax
	js	L1260
	movl	1456(%edi), %eax
	cmpl	$64, %eax
	jg	L1260
	cmpl	$256, 1476(%edi)
	jg	L1260
	testl	%eax, %eax
	jle	L1265
	leal	(%eax,%eax,2), %ecx
	leal	(%edx,%ecx,4), %ecx
	jmp	L1266
	.p2align 4,,10
	.p2align 3
L1537:
	cmpl	$255, (%edx)
	ja	L1260
	addl	$12, %edx
	cmpl	%edx, %ecx
	je	L1265
L1266:
	cmpl	$255, 4(%edx)
	jbe	L1537
L1260:
	movl	%edi, %eax
	call	_xmp_release_module
	movl	-296(%ebp), %eax
	cmpl	$1, (%eax)
	jne	L1538
L1328:
	movl	$-4, %ebx
L1263:
	movl	-296(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%esi), %ecx
	testl	%ecx, %ecx
	je	L1532
	movl	(%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L1532:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1531
	.p2align 4,,10
	.p2align 3
L1535:
	movl	%edi, %eax
	call	_xmp_release_module
	jmp	L1255
L1536:
	movl	-312(%ebp), %edi
	testl	%eax, %eax
	jns	L1260
	movl	%edi, %eax
	movl	$-3, %ebx
	call	_xmp_release_module
	movl	-296(%ebp), %eax
	cmpl	$1, (%eax)
	je	L1263
L1531:
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1533:
	movl	$9840, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1250
	movl	$9840, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$100, 2628(%edi)
	movl	$128, 1288(%edi)
	movl	%edi, 8(%ebx)
	jmp	L1249
L1265:
	movl	1488(%edi), %esi
	testl	%esi, %esi
	je	L1260
	movl	1448(%edi), %ebx
	movl	%ebx, -312(%ebp)
	testl	%ebx, %ebx
	jle	L1267
	xorl	%ecx, %ecx
L1271:
	movl	(%esi,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	L1260
	testl	%eax, %eax
	jle	L1268
	movl	%esi, -328(%ebp)
	leal	4(,%eax,4), %eax
	movl	%ebx, %esi
	movl	%ecx, %ebx
L1270:
	leal	4(%esi), %ecx
	movl	%eax, -320(%ebp)
	addl	%eax, %esi
	jmp	L1269
	.p2align 4,,10
	.p2align 3
L1540:
	cmpl	1452(%edi), %edx
	jge	L1260
	movl	1492(%edi), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	L1260
	addl	$4, %ecx
	cmpl	%ecx, %esi
	je	L1539
L1269:
	movl	(%ecx), %edx
	testl	%edx, %edx
	jns	L1540
	jmp	L1260
L1539:
	movl	-320(%ebp), %eax
	addl	$1, %ebx
	cmpl	%ebx, -312(%ebp)
	je	L1267
	movl	-328(%ebp), %esi
	movl	(%esi,%ebx,4), %esi
	testl	%esi, %esi
	jne	L1270
	jmp	L1260
	.p2align 4,,10
	.p2align 3
L1252:
	movl	$20, %eax
	call	__Z13handle_memerri
L1534:
	movl	$16, %eax
	call	__Z13handle_memerri
L1538:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1349:
	movl	$-4, %ebx
L1251:
	movl	9836(%edi), %eax
	testl	%eax, %eax
	jg	L1541
L1408:
	movl	9796(%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1542
L1409:
	movl	-300(%ebp), %esi
	movl	20(%esi), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	20(%esi), %eax
	subl	$4, %esp
	movl	$0, 20(%eax)
	movl	20(%esi), %eax
	movl	$0, 84(%eax)
	movl	20(%esi), %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	leal	-272(%ebp), %eax
	movl	$5, _MV_ErrorCode
	movl	$-1, -336(%ebp)
	movl	%eax, -348(%ebp)
L1407:
	movl	-300(%ebp), %eax
	movl	-336(%ebp), %esi
	movl	%esi, 16(%eax)
	leal	8(%eax), %ecx
	movb	$3, 4(%eax)
	movl	%eax, -272(%ebp)
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	subl	$4, %esp
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
L1541:
	.cfi_restore_state
	movl	%edi, %eax
	call	_xmp_release_module
	jmp	L1408
L1250:
	movl	$9840, %eax
	call	__Z13handle_memerri
L1416:
	movl	$-7, %ebx
	jmp	L1251
L1268:
	addl	$1, %ecx
	cmpl	-312(%ebp), %ecx
	jne	L1271
L1267:
	movl	-304(%ebp), %eax
	call	__Z20libxmp_adjust_stringPc.isra.0
	movl	1460(%edi), %eax
	testl	%eax, %eax
	jle	L1272
	xorl	%esi, %esi
	xorl	%ebx, %ebx
L1273:
	movl	1496(%edi), %eax
	addl	$1, %esi
	addl	%ebx, %eax
	addl	$764, %ebx
	call	__Z20libxmp_adjust_stringPc.isra.0
	cmpl	1460(%edi), %esi
	jl	L1273
L1272:
	movl	1464(%edi), %eax
	testl	%eax, %eax
	jle	L1274
	xorl	%esi, %esi
	xorl	%ebx, %ebx
L1275:
	movl	1500(%edi), %eax
	addl	$1, %esi
	addl	%ebx, %eax
	addl	$52, %ebx
	call	__Z20libxmp_adjust_stringPc.isra.0
	movl	1464(%edi), %eax
	cmpl	%eax, %esi
	jl	L1275
L1274:
	movl	2596(%edi), %edx
	movl	1476(%edi), %ecx
	movl	%edx, 1484(%edi)
	testl	%ecx, %ecx
	js	L1543
	cmpl	$256, %ecx
	jle	L1277
	movl	$256, 1476(%edi)
	movl	$256, %ecx
L1277:
	movl	1448(%edi), %edx
	testl	%edx, %edx
	js	L1544
	cmpl	$257, %edx
	jle	L1279
	movl	$257, 1448(%edi)
L1279:
	movl	1460(%edi), %edx
	testl	%edx, %edx
	js	L1545
	cmpl	$255, %edx
	jle	L1281
	movl	$255, 1460(%edi)
	movl	$255, %edx
L1281:
	testl	%eax, %eax
	js	L1546
	cmpl	$1024, %eax
	jle	L1283
	movl	$1024, 1464(%edi)
L1283:
	movl	1456(%edi), %eax
	testl	%eax, %eax
	js	L1547
	cmpl	$64, %eax
	jle	L1285
	movl	$64, 1456(%edi)
L1285:
	cmpl	%ecx, 1480(%edi)
	jl	L1286
	movl	$0, 1480(%edi)
L1286:
	movl	1468(%edi), %eax
	subl	$1, %eax
	cmpl	$254, %eax
	jbe	L1287
	movl	$6, 1468(%edi)
L1287:
	movl	1472(%edi), %eax
	cmpl	$19, %eax
	jg	L1288
	movl	$20, 1472(%edi)
L1289:
	testl	%edx, %edx
	je	L1290
	movl	1496(%edi), %ecx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
L1295:
	testb	$64, 2613(%edi)
	jne	L1291
	movl	2588(%edi), %eax
	movl	%eax, 32(%ecx,%ebx)
	movl	1496(%edi), %ecx
L1291:
	leal	(%ecx,%ebx), %edx
	movl	36(%edx), %eax
	testl	%eax, %eax
	jle	L1292
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1294:
	testb	$64, 2613(%edi)
	jne	L1293
	movl	%eax, %ecx
	sall	$6, %ecx
	addl	756(%edx), %ecx
	movl	2588(%edi), %edx
	movl	%edx, 4(%ecx)
	movl	1496(%edi), %ecx
L1293:
	leal	(%ecx,%ebx), %edx
	addl	$1, %eax
	cmpl	36(%edx), %eax
	jl	L1294
L1292:
	movl	1460(%edi), %eax
	addl	$1, %esi
	addl	$764, %ebx
	cmpl	%eax, %esi
	jl	L1295
	testl	%eax, %eax
	jle	L1290
	movl	$0, -312(%ebp)
	xorl	%esi, %esi
L1300:
	leal	44(%ecx,%esi), %eax
	call	__ZL14check_envelopeP12xmp_envelope.lto_priv.0
	movl	1496(%edi), %eax
	leal	356(%eax,%esi), %eax
	call	__ZL14check_envelopeP12xmp_envelope.lto_priv.0
	movl	1496(%edi), %eax
	leal	200(%eax,%esi), %eax
	call	__ZL14check_envelopeP12xmp_envelope.lto_priv.0
	movl	1496(%edi), %eax
	addl	%esi, %eax
	testb	$1, 44(%eax)
	je	L1296
	movl	48(%eax), %edx
	testl	%edx, %edx
	jle	L1296
	addl	$74, %eax
	leal	(%eax,%edx,4), %ebx
	jmp	L1299
L1297:
	movl	2588(%edi), %ecx
	cmpl	%ecx, %edx
	jle	L1298
	movw	%cx, (%eax)
L1298:
	addl	$4, %eax
	cmpl	%ebx, %eax
	je	L1296
L1299:
	movswl	(%eax), %edx
	testw	%dx, %dx
	jns	L1297
	xorl	%edx, %edx
	movw	%dx, (%eax)
	jmp	L1298
L1296:
	addl	$1, -312(%ebp)
	addl	$764, %esi
	movl	-312(%ebp), %eax
	cmpl	1460(%edi), %eax
	jge	L1290
	movl	1496(%edi), %ecx
	jmp	L1300
L1290:
	movl	1464(%edi), %eax
	testl	%eax, %eax
	jle	L1301
	movl	$0, -312(%ebp)
	xorl	%esi, %esi
	jmp	L1306
L1548:
	movl	%ecx, 12(%eax)
	cmpl	%edx, %ecx
	jg	L1305
L1304:
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	andl	$-97, 44(%ebx)
L1305:
	addl	$52, -312(%ebp)
	addl	$1, %esi
	cmpl	1464(%edi), %esi
	jge	L1301
L1306:
	movl	%esi, %eax
	movl	-312(%ebp), %ebx
	addl	1500(%edi), %ebx
	sall	$4, %eax
	addl	9808(%edi), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jns	L1302
	movl	$0, 8(%eax)
	xorl	%edx, %edx
L1302:
	movl	32(%ebx), %ecx
	cmpl	%ecx, 12(%eax)
	jg	L1548
	cmpl	%edx, %ecx
	jle	L1304
	cmpl	%edx, 12(%eax)
	jle	L1304
	jmp	L1305
	.p2align 4,,10
	.p2align 3
L1301:
	movl	28(%edi), %eax
	movl	1488(%edi), %esi
	movl	$0, 1248(%edi)
	movl	$0, 24(%edi)
	movl	%eax, 32(%edi)
	testl	%esi, %esi
	je	L1307
	movl	1492(%edi), %ebx
	testl	%ebx, %ebx
	je	L1307
	movl	1476(%edi), %eax
	testl	%eax, %eax
	jle	L1310
	movl	1448(%edi), %ebx
	xorl	%edx, %edx
	jmp	L1311
L1312:
	addl	$1, %edx
	cmpl	%eax, %edx
	je	L1310
L1311:
	movzbl	2272(%edi,%edx), %ecx
	cmpl	%ebx, %ecx
	jge	L1312
	cmpl	%eax, %edx
	jge	L1310
	leal	0(,%eax,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1315
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	1476(%edi), %ecx
	movl	%esi, 9804(%edi)
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jg	L1316
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1551:
	movl	%edx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -312(%ebp)
	call	_memset
	movl	-312(%ebp), %ecx
	movl	%ecx, (%ebx,%esi,4)
	movl	9804(%edi), %eax
	movl	(%eax,%esi,4), %edx
	testl	%edx, %edx
	je	L1319
	addl	$1, %esi
	cmpl	1476(%edi), %esi
	jge	L1549
L1316:
	movzbl	2272(%edi,%esi), %ebx
	cmpl	1448(%edi), %ebx
	jge	L1317
	movl	1488(%edi), %eax
	movl	(%eax,%ebx,4), %eax
	testl	%eax, %eax
	je	L1550
L1318:
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L1321
L1317:
	movl	$1, %edx
L1321:
	movl	9804(%edi), %ebx
	movl	%edx, (%esp)
	movl	%edx, -312(%ebp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-312(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	jne	L1551
	movl	%edx, %eax
	call	__Z13handle_memerri
L1310:
	movl	$0, 1476(%edi)
L1314:
	xorl	%edx, %edx
	movl	$16, %ebx
L1415:
	movb	%dl, -312(%ebp)
	movl	%ebx, 4(%esp)
	movl	372(%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	movl	%eax, %esi
	setne	%al
	orb	%al, -312(%ebp)
	je	L1375
	testl	%esi, %esi
	je	L1333
	movl	%esi, 372(%edi)
	leal	2644(%edi), %eax
	leal	7764(%edi), %edx
L1330:
	movl	$-1, (%eax)
	addl	$40, %eax
	movl	$-1, -20(%eax)
	cmpl	%edx, %eax
	jne	L1330
	movl	$-1, 304(%edi)
	leal	64(%edi), %eax
	xorl	%edx, %edx
	movl	$-1, 244(%eax)
	movl	$-1, 248(%eax)
	movl	$-1, 252(%eax)
L1331:
	movl	$-1, (%eax,%edx)
	movl	$-1, 4(%eax,%edx)
	movl	$-1, 8(%eax,%edx)
	movl	$-1, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$240, %edx
	jb	L1331
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	movb	$0, -272(%ebp)
	call	__ZL11scan_moduleP12context_dataii.lto_priv.0
	movl	%eax, (%esi)
	movl	372(%edi), %ecx
	cmpl	$0, (%ecx)
	js	L1333
	movl	%ecx, %ebx
	movl	$1, %ecx
L1334:
	movl	1476(%edi), %eax
	testl	%eax, %eax
	jle	L1420
L1335:
	xorl	%edx, %edx
	jmp	L1339
L1553:
	addl	$1, %edx
	cmpl	%eax, %edx
	je	L1552
L1339:
	cmpb	$-1, 64(%edi,%edx)
	jne	L1553
L1338:
	movl	%ebx, -320(%ebp)
	cmpl	%eax, %edx
	je	L1525
	cmpl	$255, %ecx
	je	L1525
	movl	%ecx, %esi
	sall	$4, %esi
L1336:
	movb	%dl, -272(%ebp,%ecx)
	movl	%edi, %eax
	movl	%ecx, -320(%ebp)
	call	__ZL11scan_moduleP12context_dataii.lto_priv.0
	movl	-320(%ebp), %ecx
	movl	%eax, (%ebx,%esi)
	movl	372(%edi), %ebx
	movl	(%ebx,%esi), %eax
	testl	%eax, %eax
	jle	L1342
	addl	$1, %ecx
	jmp	L1334
L1375:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1288:
	cmpl	$1000, %eax
	jle	L1289
	movl	$1000, 1472(%edi)
	jmp	L1289
L1547:
	movl	$0, 1456(%edi)
	jmp	L1285
L1546:
	movl	$0, 1464(%edi)
	jmp	L1283
L1545:
	movl	$0, 1460(%edi)
	xorl	%edx, %edx
	jmp	L1281
L1544:
	movl	$0, 1448(%edi)
	jmp	L1279
L1543:
	movl	$0, 1476(%edi)
	xorl	%ecx, %ecx
	jmp	L1277
L1542:
	movl	%ebx, 16(%esp)
	movl	$LC48, 12(%esp)
	movl	$139, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1409
L1307:
	movl	$-4, %ebx
L1309:
	movl	%edi, %eax
	call	_xmp_release_module
	movl	-296(%ebp), %eax
	cmpl	$1, (%eax)
	je	L1263
	jmp	L1531
L1333:
	movl	%edi, %eax
	call	_xmp_release_module
	movl	-296(%ebp), %eax
	cmpl	$1, (%eax)
	je	L1328
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	jmp	L1349
	.p2align 4,,10
	.p2align 3
L1550:
	movl	-304(%ebp), %eax
	movl	%ebx, %edx
	call	__Z20libxmp_alloc_patternP10xmp_modulei
	cmpl	$-1, %eax
	je	L1319
	cmpl	1448(%edi), %ebx
	jge	L1317
	movl	1488(%edi), %eax
	movl	(%eax,%ebx,4), %eax
	testl	%eax, %eax
	je	L1317
	jmp	L1318
	.p2align 4,,10
	.p2align 3
L1552:
	movl	%ebx, %esi
	movl	%ecx, %ebx
	movl	%esi, -320(%ebp)
	movl	%esi, %ecx
L1337:
	cmpl	%eax, %ebx
	jl	L1554
L1343:
	leal	-272(%ebp), %esi
	movl	%ebx, 7752(%edi)
	movl	-320(%ebp), %ecx
	xorl	%eax, %eax
	movl	%esi, -348(%ebp)
L1345:
	movl	-348(%ebp), %esi
	movzbl	(%esi,%eax), %edx
	movl	%edx, 7756(%edi,%eax,8)
	movl	%eax, %edx
	sall	$4, %edx
	movl	(%ecx,%edx), %edx
	movl	%edx, 7760(%edi,%eax,8)
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	L1345
	movl	-296(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	$1, 9836(%edi)
	cmpl	$1, (%eax)
	jne	L1555
	movl	-296(%ebp), %eax
	movl	8(%eax), %ebx
	movl	12(%ebx), %esi
	testl	%esi, %esi
	jne	L1556
	movl	%ebx, (%esp)
L1529:
	call	__ZN2sm9Allocator4FreeEPv
	movl	-296(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1348:
	movl	_MV_MixRate, %ebx
	movl	9836(%edi), %eax
	leal	-4000(%ebx), %edx
	cmpl	$45170, %edx
	ja	L1557
	testl	%eax, %eax
	jle	L1558
	cmpl	$1, %eax
	je	L1355
	movl	%edi, %eax
	call	_xmp_end_player.part.0
L1355:
	movl	$49170, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1356
	movl	$49170, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%esi, 1280(%edi)
	movl	$98340, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1356
	movl	$98340, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$1, %eax
	movl	%ebx, 1256(%edi)
	movups	LC46, %xmm0
	movl	%eax, 1272(%edi)
	movl	1456(%edi), %ebx
	movl	%eax, 1276(%edi)
	movl	$100, %eax
	movl	%eax, 320(%edi)
	movl	%eax, 324(%edi)
	movl	2588(%edi), %eax
	movl	%esi, 1284(%edi)
	movl	$0, 1260(%edi)
	movl	$1, 1264(%edi)
	movl	$100, 1268(%edi)
	movl	$0, 1296(%edi)
	movl	$0, 1300(%edi)
	movl	$0, 1304(%edi)
	movl	%eax, 328(%edi)
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	$0, 56(%edi)
	movl	$0, 60(%edi)
	movups	%xmm0, (%edi)
	testl	%ebx, %ebx
	jle	L1358
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1360:
	leal	(%eax,%eax,2), %edx
	testb	$2, 1512(%edi,%edx,4)
	je	L1359
	movb	$1, 636(%edi,%eax)
L1359:
	movl	$100, 380(%edi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	L1360
	cmpl	$64, %ebx
	je	L1361
L1358:
	movl	$64, %eax
	leal	636(%edi,%ebx), %edx
	movl	$0, 4(%esp)
	subl	%ebx, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	leal	636(%edi), %edx
	leal	380(%edi,%ebx,4), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	andl	$4, %ecx
	je	L1362
	movl	$100, (%eax)
	addl	$4, %eax
	cmpl	%eax, %edx
	je	L1361
	.p2align 5
	.p2align 4
	.p2align 3
L1362:
	movl	$100, (%eax)
	addl	$8, %eax
	movl	$100, -4(%eax)
	cmpl	%eax, %edx
	jne	L1362
L1361:
	movl	1476(%edi), %ecx
	testl	%ecx, %ecx
	jle	L1363
	movl	1448(%edi), %ebx
	xorl	%eax, %eax
	jmp	L1364
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1365:
	addl	$1, %eax
	movl	%eax, (%edi)
	cmpl	%eax, %ecx
	je	L1363
L1364:
	movzbl	2272(%edi,%eax), %edx
	cmpl	%ebx, %edx
	jge	L1365
	cmpl	%eax, %ecx
	jle	L1363
	movl	1488(%edi), %ecx
	movl	372(%edi), %eax
	movl	(%ecx,%edx,4), %edx
	movl	(%edx), %edx
	movl	%edx, 356(%edi)
	movl	12(%eax), %eax
	movl	%eax, 360(%edi)
L1367:
	movl	%edi, %eax
	call	__ZL20update_from_ord_infoP12context_data.lto_priv.0
	movl	1288(%edi), %ecx
	movl	9816(%edi), %edx
	addl	1456(%edi), %edx
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	leal	(%edx,%ecx), %ebx
	movl	%edx, 700(%edi)
	cmovle	%edx, %eax
	testb	$-128, 2613(%edi)
	cmovne	%ebx, %edx
	cmovne	%ecx, %eax
	movl	%edx, 704(%edi)
	testl	%eax, %eax
	cmovs	%ecx, %eax
	imull	$136, %eax, %ebx
	movl	%eax, 712(%edi)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1371
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	712(%edi), %eax
	movl	%esi, 720(%edi)
	testl	%eax, %eax
	jle	L1373
	movl	$-1, (%esi)
	movl	720(%edi), %eax
	movl	$-1, 4(%eax)
	cmpl	$1, 712(%edi)
	jle	L1373
	movl	$136, %eax
	movl	$1, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1374:
	movl	720(%edi), %ecx
	addl	$1, %edx
	movl	$-1, (%ecx,%eax)
	movl	720(%edi), %ecx
	movl	$-1, 4(%ecx,%eax)
	addl	$136, %eax
	cmpl	712(%edi), %edx
	jl	L1374
L1373:
	movl	704(%edi), %eax
	leal	0(,%eax,8), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1375
	movl	704(%edi), %edx
	movl	%eax, 716(%edi)
	testl	%edx, %edx
	jle	L1377
	movl	$-1, 4(%eax)
	movl	716(%edi), %eax
	movl	$0, (%eax)
	movl	704(%edi), %edx
	cmpl	$1, %edx
	jle	L1377
	movl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1378:
	movl	716(%edi), %edx
	movl	$-1, 4(%edx,%eax,8)
	movl	716(%edi), %edx
	movl	$0, (%edx,%eax,8)
	movl	704(%edi), %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	jl	L1378
L1377:
	movups	LC47, %xmm0
	leal	0(,%edx,8), %ebx
	movl	$0, 708(%edi)
	movl	$0, 348(%edi)
	movl	$0, 364(%edi)
	movl	$0, 368(%edi)
	movups	%xmm0, 332(%edi)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1379
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%esi, 352(%edi)
	imull	$480, 704(%edi), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1559
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	704(%edi), %eax
	movl	%esi, 376(%edi)
	movl	$0, 56(%edi)
	movl	$0, 1236(%edi)
	movl	$0, 1240(%edi)
	testl	%eax, %eax
	jle	L1383
	movl	$255, 404(%esi)
	cmpl	$1, 704(%edi)
	jle	L1383
	movl	$480, %edx
	movl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1384:
	movl	376(%edi), %ecx
	addl	$1, %eax
	movl	$255, 404(%ecx,%edx)
	addl	$480, %edx
	cmpl	704(%edi), %eax
	jl	L1384
L1383:
	movl	%edi, %eax
	call	__ZL14reset_channelsP12context_data.lto_priv.0
	movl	_MV_MixRate, %ebx
	movl	$2, 9836(%edi)
L1351:
	movl	_MV_XMPInterpolation, %eax
	cmpl	$2, %eax
	ja	L1385
	cmpb	$0, -312(%ebp)
	je	L1385
	movl	%eax, 1272(%edi)
L1385:
	movl	-300(%ebp), %eax
	movl	%ebx, %esi
	movl	%ebx, %edi
	movl	%ebx, -296(%ebp)
	movl	__ZZ9divideu64E5lastd.lto_priv.4+4, %edx
	sarl	$31, %edi
	movl	20(%eax), %eax
	movl	%edi, -292(%ebp)
	xorl	%edi, %edx
	movl	100(%eax), %ebx
	movl	%eax, -332(%ebp)
	movl	88(%eax), %eax
	movl	%ebx, -304(%ebp)
	movl	%eax, -328(%ebp)
	movl	__ZZ9divideu64E5lastd.lto_priv.4, %eax
	xorl	%esi, %eax
	orl	%edx, %eax
	je	L1354
	movl	-296(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	%esi, %eax
	movl	%esi, __ZZ9divideu64E5lastd.lto_priv.4
	orl	%edi, %eax
	movl	%edi, __ZZ9divideu64E5lastd.lto_priv.4+4
	je	L1560
L1388:
	movl	-292(%ebp), %edx
	testl	%edx, %edx
	je	L1389
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, -340(%ebp)
L1390:
	movl	-296(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	$63, %eax
	subl	-340(%ebp), %eax
	movl	%eax, -344(%ebp)
	movl	%eax, %ebx
	movl	%edi, %edx
	movb	%al, -312(%ebp)
	movl	%esi, %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%esi, %eax
	andl	%edi, %edx
	orl	%edx, %eax
	jne	L1391
	movl	-304(%ebp), %eax
	mull	-328(%ebp)
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4+4
	movb	%bl, __ZZ9divideu64E4udiv.lto_priv.4+8
	movl	%eax, %esi
	movl	%edx, %edi
L1392:
	movzbl	-312(%ebp), %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	shrdl	%cl, %edi, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
L1405:
	movl	-332(%ebp), %esi
	movl	%eax, 104(%esi)
	movl	-300(%ebp), %esi
	movl	20(%esi), %edx
	movl	104(%edx), %ecx
	movl	%ecx, %eax
	sall	$8, %eax
	subl	%ecx, %eax
	movl	%eax, 92(%edx)
	movl	20(%esi), %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	jmp	L1407
L1363:
	movl	$0, 1476(%edi)
	movl	372(%edi), %eax
	movl	$0, 8(%eax)
	movl	372(%edi), %eax
	movl	$0, (%edi)
	movl	$0, 4(%eax)
	movl	$0, 8(%edi)
	movl	$0, 356(%edi)
	movl	$0, 360(%edi)
	jmp	L1367
L1356:
	movl	$24585, %eax
	call	__Z13handle_memerri
L1354:
	movzbl	__ZZ9divideu64E4udiv.lto_priv.4+8, %eax
	movl	__ZZ9divideu64E4udiv.lto_priv.4, %ecx
	movl	__ZZ9divideu64E4udiv.lto_priv.4+4, %ebx
	movb	%al, -312(%ebp)
L1387:
	movl	-304(%ebp), %eax
	mull	-328(%ebp)
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
	orl	%ebx, %eax
	je	L1392
L1404:
	movl	%ecx, %eax
	movl	%ebx, -320(%ebp)
	mull	%esi
	movl	%ebx, %eax
	movl	%edi, -304(%ebp)
	movl	%edx, -296(%ebp)
	mull	%esi
	addl	-296(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	%edi, %eax
	adcl	$0, %edx
	xorl	%ebx, %ebx
	movl	%edx, -292(%ebp)
	mull	%ecx
	movl	-296(%ebp), %ecx
	addl	%ecx, %eax
	movl	%edi, %eax
	adcl	%ebx, %edx
	movl	-292(%ebp), %ebx
	xorl	%ecx, %ecx
	movl	%edx, -328(%ebp)
	mull	-320(%ebp)
	movl	%ecx, -324(%ebp)
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	addl	-328(%ebp), %eax
	adcl	-324(%ebp), %edx
	testb	$64, -312(%ebp)
	je	L1406
	subl	%eax, %esi
	movzbl	-312(%ebp), %ecx
	sbbl	%edx, %edi
	shrdl	$1, %edi, %esi
	shrl	%edi
	addl	%esi, %eax
	adcl	%edi, %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	jmp	L1405
L1391:
	movzbl	-344(%ebp), %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	-292(%ebp), %edi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%esi, %eax
	movl	-296(%ebp), %esi
	movl	%eax, -360(%ebp)
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	movl	%edx, -356(%ebp)
	jnc	L1561
	movzbl	-340(%ebp), %ecx
	movl	-296(%ebp), %eax
	xorl	%ebx, %ebx
	movl	-292(%ebp), %edx
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	xorl	%ebx, %ebx
	movl	%eax, %esi
	movl	%edx, %edi
	movl	-360(%ebp), %eax
	movl	-356(%ebp), %edx
	movl	%edi, -392(%ebp)
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	movl	%esi, %ebx
	movl	%eax, -376(%ebp)
	movl	%eax, %ecx
	leal	-280(%ebp), %eax
	movl	%edx, -372(%ebp)
	movl	%ecx, (%esp)
	movl	%eax, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 4(%esp)
	call	___udivmoddi4
	movl	%esi, -320(%ebp)
	xorl	%ecx, %ecx
	imull	%edx, %ebx
	movl	%eax, -384(%ebp)
	movl	%edx, -380(%ebp)
	movl	%eax, -368(%ebp)
	movl	%edx, -364(%ebp)
	mull	-320(%ebp)
	movl	%edi, -316(%ebp)
	addl	%ebx, %edx
	movl	-280(%ebp), %ebx
	cmpl	%eax, %ecx
	movl	%ebx, %esi
	sbbl	%edx, %esi
	jnc	L1395
	subl	%ecx, %eax
	movl	-320(%ebp), %ecx
	sbbl	%ebx, %edx
	movl	-316(%ebp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %esi
	sbbl	%edx, %esi
	movl	$0, %edx
	jnc	L1396
	movl	$2, %eax
	xorl	%edx, %edx
L1396:
	movl	-384(%ebp), %ecx
	movl	-380(%ebp), %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, -368(%ebp)
	movl	%ebx, -364(%ebp)
L1395:
	movl	-376(%ebp), %ecx
	movl	-320(%ebp), %esi
	movl	-368(%ebp), %eax
	movl	-316(%ebp), %edi
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	movl	%ebx, -372(%ebp)
	movl	-316(%ebp), %ebx
	movl	%ecx, -376(%ebp)
	movl	-376(%ebp), %ecx
	imull	%eax, %ebx
	mull	%esi
	addl	%ebx, %edx
	movl	-372(%ebp), %ebx
	subl	%eax, %ecx
	leal	-288(%ebp), %eax
	movl	%ecx, -384(%ebp)
	sbbl	%edx, %ebx
	movl	%ebx, -380(%ebp)
	movl	%eax, 16(%esp)
	movl	-392(%ebp), %eax
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 12(%esp)
	call	___udivmoddi4
	movl	%esi, -320(%ebp)
	movl	-320(%ebp), %ecx
	movl	%eax, -392(%ebp)
	movl	-288(%ebp), %ebx
	imull	%edx, %ecx
	movl	%edx, -388(%ebp)
	movl	%eax, -376(%ebp)
	mull	-320(%ebp)
	movl	%ebx, %esi
	movl	%edi, -316(%ebp)
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %esi
	jnc	L1397
	subl	%ecx, %eax
	movl	-320(%ebp), %ecx
	sbbl	%ebx, %edx
	movl	-316(%ebp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %esi
	sbbl	%edx, %esi
	jnc	L1398
	movl	$2, %eax
L1398:
	movl	-392(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -376(%ebp)
L1397:
	movl	-384(%ebp), %ecx
	xorl	%ebx, %ebx
	movl	-376(%ebp), %eax
	movl	%ebx, -372(%ebp)
	movl	%ecx, %ebx
	movl	%eax, -376(%ebp)
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	%ebx, -380(%ebp)
	movl	-316(%ebp), %ebx
	movl	%ecx, -384(%ebp)
	movl	-384(%ebp), %ecx
	imull	%eax, %ebx
	movl	-320(%ebp), %eax
	mull	%edx
	addl	%ebx, %edx
	movl	-380(%ebp), %ebx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movzbl	-340(%ebp), %ecx
	sbbl	%edx, %ebx
	movl	%ebx, %edx
	shrdl	%cl, %ebx, %eax
	xorl	%ebx, %ebx
	shrl	%cl, %edx
	testb	$32, %cl
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	movl	%eax, %ecx
	movl	-368(%ebp), %eax
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	-376(%ebp), %eax
	orl	-372(%ebp), %edx
	movl	%edx, -316(%ebp)
	movl	-292(%ebp), %edx
	movl	%eax, -320(%ebp)
	movl	-296(%ebp), %eax
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	cmpl	-360(%ebp), %eax
	movl	-320(%ebp), %eax
	movl	%edx, %esi
	sbbl	-356(%ebp), %esi
	movl	-316(%ebp), %edx
	jnc	L1399
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
L1400:
	movzbl	-312(%ebp), %eax
	movl	%ecx, __ZZ9divideu64E4udiv.lto_priv.4
	movl	%ebx, __ZZ9divideu64E4udiv.lto_priv.4+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.4+8
	jmp	L1387
L1389:
	bsrl	-296(%ebp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, -340(%ebp)
	jmp	L1390
L1406:
	movzbl	-312(%ebp), %ecx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	jmp	L1405
L1371:
	movl	$136, %eax
	call	__Z13handle_memerri
L1399:
	addl	%eax, %eax
	adcl	%edx, %edx
	movl	%eax, -312(%ebp)
	movl	%ecx, %eax
	addl	%ecx, %eax
	movl	%edx, -308(%ebp)
	movl	%ebx, %edx
	adcl	%ebx, %edx
	cmpl	-296(%ebp), %eax
	movl	%edx, %esi
	sbbl	-292(%ebp), %esi
	jnc	L1401
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jc	L1401
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	addl	$1, %eax
	movl	%eax, %ecx
	movzbl	-344(%ebp), %eax
	adcl	$0, %edx
	movl	%edx, __ZZ9divideu64E4udiv.lto_priv.4+4
	movl	%edx, %ebx
	orl	$64, %eax
	movl	%ecx, __ZZ9divideu64E4udiv.lto_priv.4
	movb	%al, -312(%ebp)
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.4+8
	movl	-304(%ebp), %eax
	mull	-328(%ebp)
	movl	%eax, %esi
	movl	%edx, %edi
	jmp	L1404
L1379:
	movl	$8, %eax
	call	__Z13handle_memerri
L1559:
	movl	$480, %eax
	call	__Z13handle_memerri
L1401:
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	addl	$2, %eax
	movl	%eax, %ecx
	movzbl	-344(%ebp), %eax
	adcl	$0, %edx
	movl	%edx, %ebx
	orl	$64, %eax
	movb	%al, -312(%ebp)
	jmp	L1400
L1561:
	addl	$1, %esi
	movl	-360(%ebp), %eax
	movl	-356(%ebp), %edx
	adcl	$0, %edi
	cmpl	%eax, %esi
	movl	%edi, %esi
	sbbl	%edx, %esi
	jc	L1394
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4
	movl	%ecx, %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4+4
	orl	$64, %eax
	movb	%al, -312(%ebp)
L1530:
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.4+8
	movl	-328(%ebp), %eax
	mull	-304(%ebp)
	movl	%eax, %esi
	movl	%edx, %edi
	jmp	L1392
L1394:
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4
	movzbl	-344(%ebp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.4+4
	jmp	L1530
L1557:
	cmpl	$1, %eax
	setg	-312(%ebp)
	jmp	L1351
L1342:
	movl	1476(%edi), %eax
	testl	%eax, %eax
	jg	L1335
	movl	%ebx, -320(%ebp)
	je	L1525
	xorl	%edx, %edx
	jmp	L1336
L1558:
	movl	-300(%ebp), %eax
	movl	__ZZ9divideu64E5lastd.lto_priv.4+4, %edx
	movl	%ebx, %ecx
	movl	%ebx, -296(%ebp)
	sarl	$31, %ecx
	movl	20(%eax), %eax
	xorl	%ecx, %edx
	movl	%ecx, -292(%ebp)
	movl	100(%eax), %esi
	movl	%eax, -332(%ebp)
	movl	88(%eax), %eax
	movl	%esi, -304(%ebp)
	movl	%eax, -328(%ebp)
	movl	__ZZ9divideu64E5lastd.lto_priv.4, %eax
	xorl	%ebx, %eax
	orl	%edx, %eax
	je	L1354
	movl	-296(%ebp), %eax
	movl	-292(%ebp), %edx
	movl	%eax, __ZZ9divideu64E5lastd.lto_priv.4
	movl	%edx, __ZZ9divideu64E5lastd.lto_priv.4+4
	jmp	L1388
L1554:
	movl	%ebx, %esi
	movl	%ecx, (%esp)
	sall	$4, %esi
	movl	%esi, 4(%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, -320(%ebp)
	testl	%eax, %eax
	je	L1562
	movl	-320(%ebp), %eax
	movl	%eax, 372(%edi)
	jmp	L1343
L1420:
	xorl	%edx, %edx
	jmp	L1338
L1562:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1525:
	movl	%ebx, %esi
	movl	%ecx, %ebx
	movl	%esi, %ecx
	jmp	L1337
L1560:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC1, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
L1556:
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%edx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	jmp	L1529
L1555:
	movl	-296(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
	jmp	L1348
L1315:
	movl	$4, %eax
	call	__Z13handle_memerri
L1549:
	movl	1476(%edi), %ebx
	movl	$1, %eax
	testl	%ebx, %ebx
	cmovle	%eax, %ebx
	sall	$4, %ebx
	sete	%dl
	jmp	L1415
L1319:
	movl	$-6, %ebx
	jmp	L1309
	.cfi_endproc
LFE140:
	.p2align 4
	.globl	_CONTROL_ScanForControllers
	.def	_CONTROL_ScanForControllers;	.scl	2;	.type	32;	.endef
_CONTROL_ScanForControllers:
LFB177:
	.cfi_startproc
	call	_joyScanDevices
	movl	_joystick+16, %eax
	movl	$9, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, __ZL18CONTROL_NumJoyAxes.lto_priv.0
	movl	_joystick+28, %eax
	testl	%eax, %eax
	movl	_joystick+24, %eax
	setg	%dl
	leal	(%eax,%edx,4), %eax
	movl	$32, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, __ZL21CONTROL_NumJoyButtons.lto_priv.0
	movzbl	_inputdevices, %eax
	shrb	$2, %al
	andl	$1, %eax
	movb	%al, _CONTROL_JoyPresent
	movb	%al, _CONTROL_JoystickEnabled
	ret
	.cfi_endproc
LFE177:
	.p2align 4
	.globl	_vorbis_staticbook_destroy.part.0
	.def	_vorbis_staticbook_destroy.part.0;	.scl	2;	.type	32;	.endef
_vorbis_staticbook_destroy.part.0:
LFB179:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1565
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L1565:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1566
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L1566:
	movl	$0, 24(%ebx)
	xorl	%eax, %eax
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
L1567:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1567
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
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
LFE179:
	.p2align 4
	.globl	_ANIM_DrawFrame
	.def	_ANIM_DrawFrame;	.scl	2;	.type	32;	.endef
_ANIM_DrawFrame:
LFB180:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	__ZL4anim.lto_priv.0, %ebp
	movl	%eax, 24(%esp)
	movl	66332(%ebp), %eax
	cmpl	%eax, %esi
	movl	%edx, %esi
	cmovnb	%eax, %esi
	.p2align 4
	.p2align 3
L1614:
	movzwl	%si, %edi
	movl	4(%ebp), %ecx
	movl	%esi, %edx
	movl	%edi, 16(%esp)
	cmpl	%eax, %edi
	movzwl	6(%ecx), %ecx
	setge	12(%esp)
	xorl	%eax, %eax
L1579:
	cmpl	%ecx, %eax
	jb	L1582
L1640:
	cmpl	%eax, %ecx
	jne	L1581
	cmpb	$0, 12(%esp)
	je	L1581
	xorl	%eax, %eax
	movb	$0, 12(%esp)
	cmpl	%ecx, %eax
	jnb	L1640
	.p2align 4
	.p2align 3
L1582:
	movl	8(%ebp), %edi
	leal	(%eax,%eax,2), %ebx
	leal	(%edi,%ebx,2), %edi
	movzwl	(%edi), %ebx
	cmpw	%bx, %dx
	jb	L1580
	movzwl	2(%edi), %edi
	addl	%ebx, %edi
	cmpl	%edi, 16(%esp)
	jl	L1581
L1580:
	addl	$1, %eax
	jmp	L1579
	.p2align 4,,10
	.p2align 3
L1581:
	cmpw	%ax, 12(%ebp)
	je	L1641
	movl	8(%ebp), %ecx
	movw	%ax, 12(%ebp)
	movzwl	%ax, %eax
	leal	(%eax,%eax,2), %ebx
	sall	$16, %eax
	leal	(%ecx,%ebx,2), %edi
	movl	65560(%ebp), %ecx
	movl	%edi, 16(%ebp)
	leal	2824(%ecx,%eax), %eax
	movl	%eax, 20(%ebp)
L1586:
	subw	(%edi), %dx
	je	L1587
	subl	$1, %edx
	leal	-2(%eax), %ebx
	movzwl	%dx, %edx
	leal	(%eax,%edx,2), %ecx
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1588:
	addw	(%ecx), %dx
	subl	$2, %ecx
	cmpl	%ecx, %ebx
	jne	L1588
L1587:
	cmpw	4(%edi), %dx
	jnb	L1589
	movzwl	2(%edi), %ecx
	movzwl	%dx, %edx
	leal	4(%edx,%ecx,2), %edx
	leal	(%eax,%edx), %ebx
	cmpb	$0, -3(%ebx)
	je	L1590
	movzwl	-2(%ebx), %eax
	addl	$1, %eax
	andl	$-2, %eax
	addl	%eax, %ebx
L1590:
	addl	$24, %ebp
	.p2align 4
	.p2align 3
L1591:
	movzbl	(%ebx), %edx
	leal	1(%ebx), %eax
	testb	%dl, %dl
	je	L1642
L1592:
	jns	L1643
	andl	$127, %edx
	jne	L1644
	movzwl	1(%ebx), %eax
	testw	%ax, %ax
	je	L1645
	leal	3(%ebx), %edi
	jns	L1646
	testb	$64, %ah
	jne	L1647
	movl	%eax, %ebx
	movl	%ebp, (%esp)
	andl	$32767, %ebx
	movl	%edi, 4(%esp)
	movl	%ebx, 8(%esp)
	addl	%ebx, %ebp
	addl	%edi, %ebx
	call	_memcpy
	movzbl	(%ebx), %edx
	leal	1(%ebx), %eax
	testb	%dl, %dl
	jne	L1592
L1642:
	movzbl	1(%ebx), %edi
	movzbl	2(%ebx), %eax
	addl	$3, %ebx
	movl	%edi, %ecx
	movzbl	%cl, %edx
	imull	$16843009, %eax, %ecx
	movl	%edi, %eax
	movl	%ecx, 12(%esp)
	cmpb	$15, %al
	ja	L1593
	testb	$8, %dl
	jne	L1648
	testb	$4, %dl
	jne	L1649
	testl	%edx, %edx
	je	L1594
	movb	%cl, 0(%ebp)
	testb	$2, %dl
	jne	L1650
L1594:
	addl	%edx, %ebp
	jmp	L1591
L1650:
	movw	%cx, -2(%ebp,%edx)
	addl	%edx, %ebp
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1643:
	movzbl	%dl, %ebx
	cmpb	$15, %dl
	ja	L1602
	testb	$8, %bl
	jne	L1651
	testb	$4, %bl
	jne	L1652
	testl	%ebx, %ebx
	je	L1603
	movzbl	(%eax), %edx
	movb	%dl, 0(%ebp)
	testb	$2, %bl
	jne	L1653
L1603:
	addl	%ebx, %ebp
	addl	%eax, %ebx
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1644:
	movzbl	%dl, %edx
	movl	%eax, %ebx
	addl	%edx, %ebp
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1646:
	addl	%eax, %ebp
	movl	%edi, %ebx
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1602:
	movl	-16(%eax,%ebx), %edx
	movl	%edx, -16(%ebp,%ebx)
	movl	-12(%eax,%ebx), %edx
	movl	%edx, -12(%ebp,%ebx)
	movl	-8(%eax,%ebx), %edx
	movl	%edx, -8(%ebp,%ebx)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%ebp,%ebx)
	leal	-1(%ebx), %edx
	cmpl	$16, %edx
	jb	L1603
	movl	%ebx, 16(%esp)
	andl	$-16, %edx
	movl	%esi, 20(%esp)
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
L1607:
	movl	4(%eax,%edx), %edi
	movl	8(%eax,%edx), %ebx
	movl	12(%eax,%edx), %ecx
	movl	(%eax,%edx), %esi
	movl	%edi, 4(%ebp,%edx)
	movl	%esi, 0(%ebp,%edx)
	movl	%ebx, 8(%ebp,%edx)
	movl	%ecx, 12(%ebp,%edx)
	addl	$16, %edx
	cmpl	12(%esp), %edx
	jb	L1607
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	jmp	L1603
	.p2align 4,,10
	.p2align 3
L1593:
	movl	%ecx, -16(%ebp,%edx)
	movl	%ecx, -12(%ebp,%edx)
	movl	%ecx, -8(%ebp,%edx)
	movl	%ecx, -4(%ebp,%edx)
	leal	-1(%edx), %ecx
	cmpl	$16, %ecx
	jb	L1594
	movl	%ecx, %edi
	movl	12(%esp), %eax
	xorl	%ecx, %ecx
	andl	$-16, %edi
L1598:
	movl	%eax, 0(%ebp,%ecx)
	movl	%eax, 4(%ebp,%ecx)
	movl	%eax, 8(%ebp,%ecx)
	movl	%eax, 12(%ebp,%ecx)
	addl	$16, %ecx
	cmpl	%edi, %ecx
	jb	L1598
	addl	%edx, %ebp
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1647:
	movl	%eax, %edi
	addl	$4, %ebx
	andl	$16383, %edi
	movl	%edi, 8(%esp)
	movzbl	-1(%ebx), %eax
	movl	%ebp, (%esp)
	addl	%edi, %ebp
	movl	%eax, 4(%esp)
	call	_memset
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1645:
	movl	__ZL4anim.lto_priv.0, %ebp
L1589:
	addl	$1, %esi
	cmpl	24(%esp), %esi
	jnb	L1613
	movl	66332(%ebp), %eax
	jmp	L1614
	.p2align 4,,10
	.p2align 3
L1641:
	movl	16(%ebp), %edi
	movl	20(%ebp), %eax
	jmp	L1586
	.p2align 4,,10
	.p2align 3
L1651:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, 0(%ebp)
	movl	%ecx, 4(%ebp)
	movl	-8(%eax,%ebx), %edx
	movl	-4(%eax,%ebx), %ecx
	movl	%edx, -8(%ebp,%ebx)
	movl	%ecx, -4(%ebp,%ebx)
	jmp	L1603
L1648:
	movl	%ecx, 0(%ebp)
	movl	%ecx, 4(%ebp)
	movl	%ecx, -8(%ebp,%edx)
	movl	%ecx, -4(%ebp,%edx)
	addl	%edx, %ebp
	jmp	L1591
L1652:
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	-4(%eax,%ebx), %edx
	movl	%edx, -4(%ebp,%ebx)
	jmp	L1603
L1649:
	movl	12(%esp), %eax
	movl	%eax, 0(%ebp)
	movl	%eax, -4(%ebp,%edx)
	addl	%edx, %ebp
	jmp	L1591
L1613:
	movl	24(%esp), %eax
	movl	%eax, 66332(%ebp)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	leal	24(%ebp), %eax
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
L1653:
	.cfi_restore_state
	movzwl	-2(%eax,%ebx), %edx
	movw	%dx, -2(%ebp,%ebx)
	jmp	L1603
	.cfi_endproc
LFE180:
	.p2align 4
	.globl	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0
	.def	__ZL18controlPollDevicesP11ControlInfo.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18controlPollDevicesP11ControlInfo.lto_priv.0:
LFB186:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ebx, -12(%ebp)
	movl	%edi, -4(%ebp)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	%eax, 4(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	call	_handleevents.isra.0
	cmpb	$0, _CONTROL_MouseEnabled
	jne	L1709
L1655:
	cmpb	$0, _CONTROL_JoystickEnabled
	je	L1659
	movl	_joystick+16, %edi
	subl	$1, %edi
	js	L1659
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	leal	0(,%edi,4), %esi
	.p2align 4
	.p2align 3
L1682:
	movl	_joystick, %ecx
	movl	__ZL7joyAxes.lto_priv.0+4(,%esi,8), %eax
	movl	__ZL7joyAxes.lto_priv.0+8(,%esi,8), %edx
	movl	(%ecx,%esi), %ebx
	movl	%eax, __ZL7joyAxes.lto_priv.0+12(,%esi,8)
	movl	%edi, %eax
	sall	$5, %eax
	movl	%edx, __ZL7joyAxes.lto_priv.0+16(,%esi,8)
	movl	%ebx, 8(%esp)
	imull	$10000, %ebx, %ebx
	movl	$0, __ZL7joyAxes.lto_priv.0+4(%eax)
	movl	$0, __ZL7joyAxes.lto_priv.0+8(%eax)
	movl	$-2147418109, %eax
	imull	%ebx
	leal	(%edx,%ebx), %eax
	sarl	$31, %ebx
	sarl	$14, %eax
	subl	%ebx, %eax
/APP
 # 484 "source/mact/src/control.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzwl	__ZL7joyAxes.lto_priv.0+26(,%esi,8), %ebx
	cmpl	%ebx, %eax
	jl	L1660
	movl	8(%esp), %ebx
/APP
 # 487 "source/mact/src/control.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	sall	$15, %ecx
	subl	%eax, %ecx
L1661:
	movzbl	__ZL7joyAxes.lto_priv.0+17(,%esi,8), %eax
	movl	%ecx, __ZL7joyAxes.lto_priv.0+4(,%esi,8)
	movss	_CONTROL_JoySensitivityUnit, %xmm1
	movb	%al, __ZL7joyAxes.lto_priv.0+9(,%esi,8)
	testl	%ecx, %ecx
	jle	L1666
	cmpl	$1677, %ecx
	jg	L1667
	cmpl	$419, %ecx
	jle	L1671
	cmpb	$1, __ZL7joyAxes.lto_priv.0+16(,%esi,8)
	je	L1667
L1671:
	movb	$0, __ZL7joyAxes.lto_priv.0+9(,%esi,8)
L1669:
	xorps	%xmm0, %xmm0
	movzbl	__ZL7joyAxes.lto_priv.0+28(,%esi,8), %ebx
	cvtsi2ssl	%ecx, %xmm0
	mulss	%xmm1, %xmm0
	movss	LC49, %xmm1
	mulss	__ZL7joyAxes.lto_priv.0+20(,%esi,8), %xmm0
	comiss	%xmm0, %xmm1
	jb	L1672
L1673:
	movss	%xmm1, (%esp)
	call	_lrintf
	movl	%eax, %edx
	movl	%ebx, %eax
	negl	%eax
	xorl	%edx, %eax
	addl	%ebx, %eax
	movl	%eax, __ZL7joyAxes.lto_priv.0+4(,%esi,8)
	cmpb	$5, __ZL7joyAxes.lto_priv.0(,%esi,8)
	ja	L1674
	movzbl	__ZL7joyAxes.lto_priv.0(,%esi,8), %edx
	jmp	*L1676(,%edx,4)
	.section .rdata,"dr"
	.align 4
L1676:
	.long	L1681
	.long	L1680
	.long	L1679
	.long	L1678
	.long	L1677
	.long	L1675
	.text
	.p2align 4,,10
	.p2align 3
L1677:
	movl	4(%esp), %ecx
	addl	%eax, 20(%ecx)
	.p2align 4
	.p2align 3
L1674:
	subl	$1, %edi
	subl	$4, %esi
	cmpl	$-1, %edi
	jne	L1682
	movl	-8(%ebp), %esi
	.cfi_restore 6
L1659:
	call	*__ZL10ExtGetTime.lto_priv.0
	movl	%eax, %ebx
	cmpb	$0, _CONTROL_MouseEnabled
	jne	L1710
L1683:
	cmpb	$0, _CONTROL_JoystickEnabled
	jne	L1711
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1679:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esp), %ecx
	addl	%eax, 16(%ecx)
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1681:
	movl	4(%esp), %ecx
	addl	%eax, 12(%ecx)
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1675:
	movl	4(%esp), %edx
	addl	%eax, 8(%edx)
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1680:
	movl	4(%esp), %ecx
	addl	%eax, (%ecx)
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1678:
	movl	4(%esp), %ecx
	addl	%eax, 4(%ecx)
	jmp	L1674
	.p2align 4,,10
	.p2align 3
L1660:
	cmpl	$1, %edi
	jle	L1662
	cmpl	$3, %edi
	jg	L1663
	testb	$1, _joystick+44
	jne	L1662
L1663:
	movzwl	__ZL7joyAxes.lto_priv.0+24(,%esi,8), %edx
	cmpl	%eax, %edx
	jle	L1664
	movl	$0, __ZL7joyAxes.lto_priv.0+4(,%esi,8)
	movss	_CONTROL_JoySensitivityUnit, %xmm1
L1665:
	xorps	%xmm0, %xmm0
	movb	$0, __ZL7joyAxes.lto_priv.0+9(,%esi,8)
	movzbl	__ZL7joyAxes.lto_priv.0+28(,%esi,8), %ebx
	mulss	%xmm0, %xmm1
	movss	__ZL7joyAxes.lto_priv.0+20(,%esi,8), %xmm0
	mulss	%xmm1, %xmm0
L1672:
	movss	LC50, %xmm2
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	jmp	L1673
	.p2align 4,,10
	.p2align 3
L1666:
	je	L1665
	cmpl	$-1677, %ecx
	jl	L1670
	cmpl	$-419, %ecx
	jge	L1671
	cmpb	$-1, __ZL7joyAxes.lto_priv.0+16(,%esi,8)
	jne	L1671
	.p2align 4
	.p2align 3
L1670:
	movb	$-1, __ZL7joyAxes.lto_priv.0+8(,%esi,8)
	jmp	L1669
	.p2align 4,,10
	.p2align 3
L1664:
	subl	%edx, %eax
	imull	8(%esp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	jmp	L1661
	.p2align 4,,10
	.p2align 3
L1667:
	movb	$1, __ZL7joyAxes.lto_priv.0+8(,%esi,8)
	jmp	L1669
	.p2align 4,,10
	.p2align 3
L1662:
	movl	%edi, %eax
	movl	%edi, %edx
	andl	$-2, %edx
	orl	$1, %eax
	movl	(%ecx,%eax,4), %eax
	movl	(%ecx,%edx,4), %ecx
	imull	%eax, %eax
	imull	%ecx, %ecx
	addl	%eax, %ecx
	call	@ksqrt@4
	imull	$10000, %eax, %ecx
	movl	$10000, %eax
	cmpl	$327669999, %ecx
	jg	L1663
	movl	$-2147418109, %eax
	imull	%ecx
	leal	(%edx,%ecx), %eax
	sarl	$31, %ecx
	sarl	$14, %eax
	subl	%ecx, %eax
	jmp	L1663
	.p2align 4,,10
	.p2align 3
L1709:
	.cfi_restore 6
	cmpb	$0, _g_mouseEnabled
	je	L1656
	cmpb	$0, _g_mouseGrabbed
	je	L1656
	cmpb	$0, _appactive
	je	L1656
	movl	_g_mousePos, %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movl	_g_mousePos+4, %eax
	movss	_CONTROL_MouseSensitivityUnit, %xmm3
	movss	_CONTROL_MouseSensitivity, %xmm0
	movl	$0, _g_mousePos
	movl	$0, _g_mousePos+4
	cvtsi2ssl	%edx, %xmm2
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm1
	mulss	%xmm0, %xmm2
	mulss	_CONTROL_MouseAxesSensitivity, %xmm2
	mulss	%xmm0, %xmm1
	movss	LC49, %xmm0
	mulss	_CONTROL_MouseAxesSensitivity+4, %xmm1
	comiss	%xmm2, %xmm0
	jb	L1712
	movaps	%xmm0, %xmm2
L1657:
	movss	%xmm2, (%esp)
	movss	%xmm1, 8(%esp)
	call	_lrintf
	movss	8(%esp), %xmm1
	movl	4(%esp), %edi
	movss	LC49, %xmm0
	movl	%eax, 24(%edi)
	comiss	%xmm1, %xmm0
	jb	L1689
L1658:
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	4(%esp), %edi
	movl	%eax, 28(%edi)
	jmp	L1655
	.p2align 4,,10
	.p2align 3
L1711:
	movl	_joystick+28, %eax
	movl	__ZL21CONTROL_NumJoyButtons.lto_priv.0, %edi
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	cmpb	$0, _appactive
	cmovne	_joystick+12, %esi
	testl	%eax, %eax
	jle	L1687
	movl	_joystick+4, %eax
	movl	(%eax), %ecx
	cmpl	$-1, %ecx
	je	L1687
	addl	$2250, %ecx
	movl	$1954687339, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$14, %edx
	subl	%eax, %edx
	imull	$36000, %edx, %eax
	subl	%eax, %ecx
	movl	$1954687339, %eax
	imull	%ecx
	sarl	$31, %ecx
	movl	$32, %eax
	sarl	$11, %edx
	subl	%ecx, %edx
	movl	_joystick+24, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	__ZZ15JOYSTICK_GetHatE8hatstate(,%edx,4), %eax
	sall	%cl, %eax
	orl	%eax, %esi
L1687:
	movl	$__ZL10joyButtons.lto_priv.0, (%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL24controlHandleClickStatesiiiP18ControlButtonState
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1710:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	call	_mouseReadButtons
	movl	$__ZL12mouseButtons.lto_priv.0, (%esp)
	movl	__ZL23CONTROL_NumMouseButtons.lto_priv.0, %ecx
	movl	%ebx, %edx
	call	__ZL24controlHandleClickStatesiiiP18ControlButtonState
	jmp	L1683
	.p2align 4,,10
	.p2align 3
L1656:
	movss	_CONTROL_MouseAxesSensitivity+4, %xmm1
	xorps	%xmm0, %xmm0
	mulss	_CONTROL_MouseSensitivityUnit, %xmm0
	mulss	_CONTROL_MouseSensitivity, %xmm0
	mulss	%xmm0, %xmm1
	mulss	_CONTROL_MouseAxesSensitivity, %xmm0
	movss	%xmm1, 8(%esp)
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	4(%esp), %edi
	movss	8(%esp), %xmm1
	movl	%eax, 24(%edi)
L1689:
	movss	LC50, %xmm2
	movaps	%xmm2, %xmm0
	cmpless	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	jmp	L1658
L1712:
	movss	LC50, %xmm4
	movaps	%xmm4, %xmm3
	cmpless	%xmm2, %xmm3
	andps	%xmm3, %xmm4
	andnps	%xmm2, %xmm3
	orps	%xmm4, %xmm3
	movaps	%xmm3, %xmm2
	jmp	L1657
	.cfi_endproc
LFE186:
	.p2align 4
	.globl	__ZL26controlUpdateGameFunctionsv.lto_priv.0
	.def	__ZL26controlUpdateGameFunctionsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26controlUpdateGameFunctionsv.lto_priv.0:
LFB197:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL23CONTROL_NumMouseButtons.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1714
	leal	(%eax,%eax,2), %eax
	movl	$__ZL12mouseButtons.lto_priv.0, %ebx
	leal	_CONTROL_KeyBinds+3064(,%eax,4), %edx
	leal	__ZL12mouseButtons.lto_priv.0-24(,%eax,8), %eax
	jmp	L1717
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1715:
	subl	$12, %edx
	cmpl	%eax, %ebx
	je	L1714
L1743:
	subl	$24, %eax
L1717:
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1715
	movzbl	1(%eax), %ecx
	cmpb	$127, %cl
	je	L1716
	movl	8(%eax), %esi
	orl	%esi, _CONTROL_ButtonFlags(,%ecx,4)
L1716:
	movzbl	(%eax), %ecx
	cmpb	$127, %cl
	je	L1715
	movl	16(%eax), %esi
	subl	$12, %edx
	orl	%esi, _CONTROL_ButtonFlags(,%ecx,4)
	cmpl	%eax, %ebx
	jne	L1743
	.p2align 4
	.p2align 3
L1714:
	movl	__ZL21CONTROL_NumJoyButtons.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1718
	leal	(%eax,%eax,2), %eax
	movl	$__ZL10joyButtons.lto_priv.0, %ebx
	leal	__ZL10joyButtons.lto_priv.0-24(,%eax,8), %eax
	jmp	L1721
	.p2align 4,,10
	.p2align 3
L1744:
	subl	$24, %eax
L1721:
	movzbl	1(%eax), %edx
	cmpb	$127, %dl
	je	L1719
	movl	8(%eax), %ecx
	orl	%ecx, _CONTROL_ButtonFlags(,%edx,4)
L1719:
	movzbl	(%eax), %edx
	cmpb	$127, %dl
	je	L1720
	movl	16(%eax), %ecx
	orl	%ecx, _CONTROL_ButtonFlags(,%edx,4)
L1720:
	cmpl	%eax, %ebx
	jne	L1744
L1718:
	movl	__ZL18CONTROL_NumJoyAxes.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1722
	movl	$__ZL7joyAxes.lto_priv.0-31, %ecx
	sall	$5, %eax
	addl	%ecx, %eax
	jmp	L1726
	.p2align 4,,10
	.p2align 3
L1724:
	movzbl	1(%eax), %edx
L1725:
	cmpb	$127, %dl
	je	L1723
	movl	$1, _CONTROL_ButtonFlags(,%edx,4)
L1723:
	subl	$32, %eax
	cmpl	%eax, %ecx
	je	L1722
L1726:
	cmpb	$0, 7(%eax)
	je	L1723
	jns	L1724
	movzbl	(%eax), %edx
	jmp	L1725
	.p2align 4,,10
	.p2align 3
L1722:
	movl	_CONTROL_ButtonState, %eax
	movb	$0, 3(%esp)
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	_CONTROL_ButtonState+4, %edx
	movl	$63, %ecx
	movl	$0, _CONTROL_ButtonState
	movl	%eax, _CONTROL_ButtonHeldState
	movl	%edx, _CONTROL_ButtonHeldState+4
	movl	$0, _CONTROL_ButtonState+4
	.p2align 4
	.p2align 3
L1739:
	movl	_CONTROL_ButtonFlags(,%ecx,4), %edx
	cmpb	$0, __ZL13CONTROL_Flags.lto_priv.0+1(,%ecx,8)
	je	L1727
	movzbl	__ZL18CONTROL_KeyMapping.lto_priv.0(%ecx,%ecx), %eax
	cmpb	$127, %al
	je	L1728
	leal	(%eax,%eax,2), %ebp
	movl	_CONTROL_KeyBinds+4(,%ebp,4), %ebp
	testl	%ebp, %ebp
	je	L1729
L1728:
	xorl	%ebp, %ebp
L1730:
	movzbl	__ZL18CONTROL_KeyMapping.lto_priv.0+1(%ecx,%ecx), %eax
	cmpb	$127, %al
	je	L1731
	leal	(%eax,%eax,2), %ebx
	movl	_CONTROL_KeyBinds+4(,%ebx,4), %ebx
	testl	%ebx, %ebx
	je	L1785
L1731:
	orl	%ebp, %edx
L1727:
	cmpb	$0, __ZL13CONTROL_Flags.lto_priv.0+2(,%ecx,8)
	jne	L1732
L1786:
	movb	%dl, __ZL13CONTROL_Flags.lto_priv.0(,%ecx,8)
	movl	%edx, %eax
L1733:
	movl	__ZL13CONTROL_Flags.lto_priv.0+4(,%ecx,8), %ebp
	testl	%ebp, %ebp
	jne	L1735
L1787:
	movzbl	%al, %eax
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movb	$1, 3(%esp)
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	orl	%edx, %edi
	orl	%eax, %esi
L1736:
	subl	$1, %ecx
	jnb	L1739
	cmpb	$0, 3(%esp)
	je	L1740
	movl	%esi, _CONTROL_ButtonState
	movl	%edi, _CONTROL_ButtonState+4
L1740:
	xorl	%eax, %eax
L1741:
	movl	$0, _CONTROL_ButtonFlags(%eax)
	addl	$16, %eax
	movl	$0, _CONTROL_ButtonFlags-12(%eax)
	movl	$0, _CONTROL_ButtonFlags-8(%eax)
	movl	$0, _CONTROL_ButtonFlags-4(%eax)
	cmpl	$256, %eax
	jb	L1741
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
L1729:
	.cfi_restore_state
	cmpb	$0, _keystatus(%eax)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %ebp
	jmp	L1730
	.p2align 4,,10
	.p2align 3
L1785:
	cmpb	$0, _keystatus(%eax)
	setne	%al
	movzbl	%al, %eax
	orl	%edx, %eax
	orl	%ebp, %eax
	movl	%eax, %edx
	cmpb	$0, __ZL13CONTROL_Flags.lto_priv.0+2(,%ecx,8)
	je	L1786
	.p2align 4
	.p2align 3
L1732:
	testl	%edx, %edx
	je	L1734
	movl	__ZL13CONTROL_Flags.lto_priv.0+4(,%ecx,8), %ebp
	movb	$0, __ZL13CONTROL_Flags.lto_priv.0+3(,%ecx,8)
	movzbl	__ZL13CONTROL_Flags.lto_priv.0(,%ecx,8), %eax
	testl	%ebp, %ebp
	je	L1787
	.p2align 4
	.p2align 3
L1735:
	testb	%al, %al
	jne	L1736
	movl	$0, __ZL13CONTROL_Flags.lto_priv.0+4(,%ecx,8)
	jmp	L1736
	.p2align 4,,10
	.p2align 3
L1734:
	movzbl	__ZL13CONTROL_Flags.lto_priv.0(,%ecx,8), %eax
	cmpb	$0, __ZL13CONTROL_Flags.lto_priv.0+3(,%ecx,8)
	jne	L1733
	testb	%al, %al
	movb	$1, __ZL13CONTROL_Flags.lto_priv.0+3(,%ecx,8)
	sete	%al
	movb	%al, __ZL13CONTROL_Flags.lto_priv.0(,%ecx,8)
	jmp	L1733
	.cfi_endproc
LFE197:
	.p2align 4
	.globl	_CONTROL_GetUserInput.isra.0
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
_CONTROL_GetUserInput.isra.0:
LFB205:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movzbl	__ZL7joyAxes.lto_priv.0+40, %eax
	movl	%esi, 4(%esp)
	cmpb	$-1, %al
	.cfi_offset 6, -12
	jne	L1789
	imull	$10000, __ZL7joyAxes.lto_priv.0+36, %ecx
	movl	$-2147418109, %eax
	imull	%ecx
	movzwl	__ZL7joyAxes.lto_priv.0+58, %eax
	negl	%eax
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$14, %edx
	subl	%ecx, %edx
	cmpl	%eax, %edx
	jg	L1790
L1798:
	xorl	%esi, %esi
L1791:
	call	*__ZL10ExtGetTime.lto_priv.0
	cmpl	__ZL9userInput+8, %eax
	movl	$8, %eax
	cmovl	%eax, %esi
	movl	%esi, 4(%ebx)
	movzbl	_keystatus+72, %eax
	orb	_keystatus+200, %al
	jne	L1865
	movzbl	_keystatus+80, %eax
	orb	_keystatus+208, %al
	je	L1816
	movl	$4, 4(%ebx)
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1790:
	testb	$1, _joystick+44
	jne	L1866
L1794:
	movzbl	__ZL7joyAxes.lto_priv.0+8, %eax
	cmpb	$-1, %al
	je	L1801
	cmpb	$1, %al
	jne	L1809
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %ecx
	movl	$-2147418109, %eax
	imull	%ecx
	movzwl	__ZL7joyAxes.lto_priv.0+26, %eax
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$14, %edx
	subl	%ecx, %edx
	cmpl	%eax, %edx
	jge	L1837
	jmp	L1809
	.p2align 4,,10
	.p2align 3
L1865:
	movl	$0, 4(%ebx)
L1815:
	movzbl	_keystatus+28, %eax
	orb	_keystatus+156, %al
	je	L1818
L1820:
	movl	$1, %esi
L1819:
	movl	%esi, %eax
	movb	%al, (%ebx)
	cmpb	$0, _keystatus+1
	je	L1823
L1825:
	movl	$1, %eax
L1824:
	movb	%al, 1(%ebx)
	movl	$1, %eax
	cmpb	$0, _keystatus+1
	je	L1867
L1828:
	movb	%al, 2(%ebx)
	cmpb	$0, __ZL9userInput+17
	je	L1831
	movl	%esi, %eax
	testb	%al, %al
	jne	L1832
	movb	$0, __ZL9userInput+17
L1831:
	cmpb	$0, __ZL9userInput+18
	je	L1833
	cmpb	$0, 1(%ebx)
	jne	L1834
	movb	$0, __ZL9userInput+18
L1833:
	cmpb	$0, __ZL9userInput+19
	je	L1788
	cmpb	$0, 2(%ebx)
	jne	L1836
	movb	$0, __ZL9userInput+19
L1788:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1789:
	.cfi_restore_state
	testb	$1, _joystick+44
	jne	L1792
	cmpb	$1, %al
	jne	L1794
	imull	$10000, __ZL7joyAxes.lto_priv.0+36, %esi
	movl	$-2147418109, %eax
	movzwl	__ZL7joyAxes.lto_priv.0+58, %ecx
	imull	%esi
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%esi, %edx
	cmpl	%edx, %ecx
	jg	L1794
L1805:
	movl	$4, %esi
	jmp	L1791
	.p2align 4,,10
	.p2align 3
L1867:
	testb	$1, _joystick+44
	jne	L1829
L1830:
	xorl	%eax, %eax
	jmp	L1828
	.p2align 4,,10
	.p2align 3
L1823:
	call	_mouseReadButtons
	testb	$2, %al
	jne	L1825
	testb	$1, _joystick+44
	je	L1827
	cmpb	$0, _appactive
	je	L1827
	movzbl	_joystick+12, %eax
	shrb	%al
	andl	$1, %eax
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L1834:
	movb	$0, 1(%ebx)
	jmp	L1833
	.p2align 4,,10
	.p2align 3
L1836:
	movb	$0, 2(%ebx)
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1832:
	.cfi_restore_state
	movb	$0, (%ebx)
	jmp	L1831
	.p2align 4,,10
	.p2align 3
L1792:
	cmpb	$0, _appactive
	jne	L1795
	cmpb	$1, %al
	jne	L1797
	imull	$10000, __ZL7joyAxes.lto_priv.0+36, %esi
	movl	$-2147418109, %eax
	movzwl	__ZL7joyAxes.lto_priv.0+58, %ecx
	imull	%esi
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%esi, %edx
	cmpl	%edx, %ecx
	jle	L1805
	.p2align 4
	.p2align 3
L1797:
	movzbl	__ZL7joyAxes.lto_priv.0+8, %eax
	cmpb	$-1, %al
	jne	L1868
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %eax
	movl	$32767, %esi
	movzwl	__ZL7joyAxes.lto_priv.0+26, %ecx
	negl	%ecx
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jge	L1810
	.p2align 4
	.p2align 3
L1809:
	movl	$-1, __ZL9userInput+8
	movl	$8, %esi
	movl	$8, __ZL9userInput+12
	jmp	L1791
	.p2align 4,,10
	.p2align 3
L1829:
	cmpb	$0, _appactive
	je	L1830
	movzbl	_joystick+12, %eax
	shrb	$6, %al
	andl	$1, %eax
	jmp	L1828
	.p2align 4,,10
	.p2align 3
L1866:
	cmpb	$0, _appactive
	je	L1797
	movl	_joystick+12, %ecx
	testb	$8, %ch
	jne	L1798
L1799:
	testb	$16, %ch
	jne	L1805
	movzbl	__ZL7joyAxes.lto_priv.0+8, %eax
	cmpb	$-1, %al
	jne	L1869
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	$32767, %edi
	movzwl	__ZL7joyAxes.lto_priv.0+26, %esi
	cltd
	negl	%esi
	idivl	%edi
	cmpl	%eax, %esi
	jl	L1870
	movl	8(%esp), %edi
	.cfi_restore 7
	jmp	L1810
	.p2align 4,,10
	.p2align 3
L1816:
	movzbl	_keystatus+75, %eax
	orb	_keystatus+203, %al
	jne	L1871
	movzbl	_keystatus+77, %eax
	orb	_keystatus+205, %al
	je	L1815
	movl	$2, 4(%ebx)
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1795:
	movl	_joystick+12, %ecx
	testb	$8, %ch
	jne	L1798
	cmpb	$1, %al
	jne	L1799
	imull	$10000, __ZL7joyAxes.lto_priv.0+36, %esi
	movl	$-2147418109, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movzwl	__ZL7joyAxes.lto_priv.0+58, %edi
	imull	%esi
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%esi, %edx
	cmpl	%edx, %edi
	movl	8(%esp), %edi
	.cfi_restore 7
	jg	L1799
	jmp	L1805
	.p2align 4,,10
	.p2align 3
L1827:
	xorl	%eax, %eax
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L1818:
	call	_mouseReadButtons
	testb	$1, %al
	jne	L1820
	testb	$1, _joystick+44
	jne	L1821
L1822:
	xorl	%esi, %esi
	jmp	L1819
	.p2align 4,,10
	.p2align 3
L1801:
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %esi
	movl	$-2147418109, %eax
	movzwl	__ZL7joyAxes.lto_priv.0+26, %ecx
	negl	%ecx
	imull	%esi
	addl	%esi, %edx
	sarl	$31, %esi
	sarl	$14, %edx
	subl	%esi, %edx
	cmpl	%edx, %ecx
	jl	L1809
L1810:
	movl	$6, %esi
	jmp	L1791
	.p2align 4,,10
	.p2align 3
L1868:
	cmpb	$1, %al
	jne	L1809
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %eax
	movl	$32767, %ecx
	cltd
	idivl	%ecx
	movzwl	__ZL7joyAxes.lto_priv.0+26, %edx
	cmpl	%edx, %eax
	jl	L1809
	.p2align 4
	.p2align 3
L1837:
	movl	$2, %esi
	jmp	L1791
	.p2align 4,,10
	.p2align 3
L1871:
	movl	$6, 4(%ebx)
	jmp	L1815
	.p2align 4,,10
	.p2align 3
L1821:
	cmpb	$0, _appactive
	je	L1822
	movzbl	_joystick+12, %esi
	andl	$1, %esi
	jmp	L1819
	.p2align 4,,10
	.p2align 3
L1869:
	testb	$32, %ch
	jne	L1810
	cmpb	$1, %al
	jne	L1811
	imull	$10000, __ZL7joyAxes.lto_priv.0+4, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	$32767, %edi
	movzwl	__ZL7joyAxes.lto_priv.0+26, %esi
	cltd
	idivl	%edi
	movl	8(%esp), %edi
	.cfi_restore 7
	cmpl	%eax, %esi
	jle	L1837
L1811:
	andb	$64, %ch
	jne	L1837
	jmp	L1809
L1870:
	.cfi_offset 7, -8
	movl	8(%esp), %edi
	.cfi_restore 7
	testb	$32, %ch
	jne	L1810
	jmp	L1811
	.cfi_endproc
LFE205:
	.p2align 4
	.globl	_CONTROL_ClearUserInput
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
_CONTROL_ClearUserInput:
LFB208:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movb	$0, _keystatus+200
	movb	$0, _keystatus+72
	movb	$0, _keystatus+208
	movb	$0, _keystatus+80
	movb	$0, _keystatus+203
	movb	$0, _keystatus+75
	movb	$0, _keystatus+205
	movb	$0, _keystatus+77
	cmpl	$8, 4(%eax)
	je	L1873
	call	*__ZL10ExtGetTime.lto_priv.0
	movl	4(%ebx), %edx
	movl	%eax, %ecx
	movl	__ZL7ticrate.lto_priv.0, %eax
	cmpl	%edx, __ZL9userInput+12
	je	L1880
	movl	%edx, __ZL9userInput+12
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	%ecx, %eax
L1875:
	movl	%eax, __ZL9userInput+8
	movb	$1, __ZL9userInput+16
L1873:
	cmpb	$0, (%ebx)
	je	L1876
	andl	$-2, _g_mouseBits
	movb	$0, _keystatus+156
	movb	$0, _keystatus+28
	movb	$1, __ZL9userInput+17
L1876:
	cmpb	$0, 1(%ebx)
	je	L1877
	andl	$-3, _g_mouseBits
	movb	$0, _keystatus+1
	movb	$1, __ZL9userInput+18
L1877:
	cmpb	$0, 2(%ebx)
	je	L1878
	movb	$0, _keystatus+1
	movb	$1, __ZL9userInput+19
L1878:
	movl	$1, _inputchecked
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1880:
	.cfi_restore_state
	imull	$60, %eax, %eax
	movl	$274877907, %edx
	movl	%eax, (%esp)
	imull	%edx
	movl	(%esp), %eax
	sarl	$31, %eax
	sarl	$6, %edx
	subl	%eax, %edx
	leal	(%edx,%ecx), %eax
	jmp	L1875
	.cfi_endproc
LFE208:
	.p2align 4
	.globl	_SCRIPT_SectionExists
	.def	_SCRIPT_SectionExists;	.scl	2;	.type	32;	.endef
_SCRIPT_SectionExists:
LFB209:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	testl	%edx, %edx
	.cfi_offset 3, -12
	je	L1886
	cmpl	$19, %eax
	ja	L1886
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L1881
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	(%ebx), %ebx
	movl	%edx, %esi
	testl	%ebx, %ebx
	jne	L1885
	jmp	L1898
	.p2align 4,,10
	.p2align 3
L1887:
	movl	%eax, %ebx
L1885:
	movl	%esi, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1898
	movl	12(%ebx), %eax
	cmpl	%ebx, %eax
	jne	L1887
	movl	12(%esp), %esi
	.cfi_restore 6
L1886:
	xorl	%ebx, %ebx
L1881:
	movl	%ebx, %eax
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1898:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%ebx, %eax
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE209:
	.p2align 4
	.globl	_SCRIPT_AddSection
	.def	_SCRIPT_AddSection;	.scl	2;	.type	32;	.endef
_SCRIPT_AddSection:
LFB210:
	.cfi_startproc
	cmpl	$19, %eax
	jg	L1914
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%edi, -4(%ebp)
	testl	%edx, %edx
	.cfi_offset 7, -12
	je	L1907
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %edx
	testl	%edx, %edx
	je	L1899
	movl	%esi, %edx
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	call	_SCRIPT_SectionExists
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1919
	movl	-12(%ebp), %ebx
	.cfi_restore 3
L1899:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1919:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1901
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	%eax, 12(%eax)
	movl	%eax, 16(%eax)
	movl	%esi, (%esp)
	movl	%eax, -16(%ebp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-16(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	je	L1920
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, -20(%ebp)
	movl	%eax, -16(%ebp)
	call	_strcpy
	movl	-16(%ebp), %ecx
	movl	-20(%ebp), %edx
	movb	$0, (%ecx,%edi)
	movl	%ecx, (%edx)
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L1921
	.p2align 4
	.p2align 4
	.p2align 3
L1905:
	movl	%eax, %ecx
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	jne	L1905
	movl	%edx, 12(%eax)
	movl	%eax, 16(%edx)
	movl	%edx, %eax
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
L1907:
	.cfi_def_cfa 5, 8
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edx, %edx
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1914:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1901:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1921:
	movl	%edx, (%ecx)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L1899
	.p2align 4,,10
	.p2align 3
L1920:
	.cfi_restore_state
	movl	-20(%ebp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE210:
	.p2align 4
	.globl	_SCRIPT_Init.constprop.0
	.def	_SCRIPT_Init.constprop.0;	.scl	2;	.type	32;	.endef
_SCRIPT_Init.constprop.0:
LFB213:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	L1926
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1923:
	addl	$1, %ebx
	cmpl	$20, %ebx
	je	L1929
L1926:
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L1923
	movl	$268, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L1924
	movl	%eax, __ZL11scriptfiles.lto_priv.0(,%ebx,4)
	movl	$268, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$127, 8(%esp)
	movl	$_setupfilename, 4(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ebx,4), %eax
	addl	$12, %eax
	movl	%eax, (%esp)
	call	_strncpy
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1929:
	.cfi_restore_state
	movl	$-1, %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1924:
	.cfi_restore_state
	movl	$268, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE213:
	.section .rdata,"dr"
LC51:
	.ascii "\0"
	.text
	.p2align 4
	.globl	_SCRIPT_Entry
	.def	_SCRIPT_Entry;	.scl	2;	.type	32;	.endef
_SCRIPT_Entry:
LFB215:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %eax
	testl	%eax, %eax
	je	L1930
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1930
	movl	%esi, %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1935
	movl	4(%eax), %eax
	testl	%ebx, %ebx
	je	L1932
	testl	%eax, %eax
	je	L1932
	.p2align 4
	.p2align 4
	.p2align 3
L1933:
	movl	%eax, %edx
	movl	8(%eax), %eax
	subl	$1, %ebx
	je	L1932
	cmpl	%edx, %eax
	jne	L1933
L1932:
	movl	(%eax), %eax
	movl	(%esp), %ebx
	.cfi_restore 3
L1930:
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1935:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	movl	$LC51, %eax
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE215:
	.p2align 4
	.def	__fetch_and_process_packet.constprop.0;	.scl	3;	.type	32;	.endef
__fetch_and_process_packet.constprop.0:
LFB217:
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
	andl	$-8, %esp
	subl	$124, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	jmp	L1954
	.p2align 4,,10
	.p2align 3
L2041:
	movl	4(%edi), %eax
	testl	%eax, %eax
	jne	L1991
	leal	76(%esp), %ebx
	movl	76(%edi), %ecx
	movl	72(%edi), %edx
	movl	%edi, %eax
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%esi, 76(%esp)
	call	__fetch_headers.lto_priv.0
	movl	%eax, 40(%esp)
	testl	%eax, %eax
	jne	L1953
	movl	456(%edi), %eax
	addl	$1, 96(%edi)
	movl	76(%esp), %esi
	movl	%eax, 92(%edi)
L1990:
	leal	120(%edi), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%esi, 76(%esp)
	call	_ogg_stream_pagein
L1954:
	movl	88(%edi), %eax
	cmpl	$3, %eax
	je	L2044
	cmpl	$4, %eax
	je	L2045
L1957:
	cmpl	$1, %eax
	jle	L2041
	leal	76(%esp), %ebx
L1986:
	movl	$-1, (%esp)
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$-1, 4(%esp)
	movl	%esi, 76(%esp)
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	js	L2005
	movl	80(%esp), %eax
	movl	76(%esp), %esi
	sall	$3, %eax
	movl	%eax, 72(%esp)
	fildl	72(%esp)
	faddl	104(%edi)
	movl	88(%edi), %eax
	fstpl	104(%edi)
	cmpl	$4, %eax
	jne	L1988
	movl	14(%esi), %eax
	cmpl	%eax, 92(%edi)
	je	L1990
	testb	$2, 5(%esi)
	je	L1986
	leal	480(%edi), %eax
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	4(%edi), %edx
	movl	$2, 88(%edi)
	testl	%edx, %edx
	je	L2046
L1991:
	movl	52(%edi), %ecx
	movl	14(%esi), %edx
	testl	%ecx, %ecx
	jle	L2006
	movl	64(%edi), %ebx
	xorl	%eax, %eax
	jmp	L1995
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2047:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L1954
L1995:
	cmpl	%edx, (%ebx,%eax,4)
	jne	L2047
L1994:
	cmpl	%ecx, %eax
	je	L1954
	movl	%eax, 96(%edi)
	movl	120(%edi), %eax
	movl	%edx, 92(%edi)
	testl	%eax, %eax
	je	L1997
	movl	$0, 128(%edi)
	movl	$0, 132(%edi)
	movl	$0, 148(%edi)
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	$0, 444(%edi)
	movl	$0, 448(%edi)
	movl	$0, 452(%edi)
	movl	$-1, 460(%edi)
	movl	$0, 464(%edi)
	movl	$0, 468(%edi)
	movl	$0, 472(%edi)
	movl	$0, 476(%edi)
	movl	%edx, 456(%edi)
L1997:
	movl	$3, 88(%edi)
	leal	76(%esp), %ebx
	jmp	L1990
L2046:
	movl	72(%edi), %eax
	call	_vorbis_info_clear
	movl	76(%edi), %eax
	call	_vorbis_comment_clear
	movl	88(%edi), %eax
L1988:
	cmpl	$2, %eax
	jg	L1990
	jmp	L2041
	.p2align 4,,10
	.p2align 3
L2044:
	movl	%edi, %eax
	call	__make_decode_ready.part.0
	testl	%eax, %eax
	jne	L2002
	movl	88(%edi), %eax
	cmpl	$4, %eax
	jne	L1957
	.p2align 4
	.p2align 3
L2045:
	movl	72(%edi), %eax
	leal	592(%edi), %ecx
	movl	%esi, 28(%esp)
	movl	%ecx, 72(%esp)
	movl	28(%eax), %eax
	movl	3656(%eax), %eax
	movl	%eax, 24(%esp)
	leal	120(%edi), %eax
	movl	%eax, 44(%esp)
	movl	120(%edi), %eax
	.p2align 4
	.p2align 3
L1985:
	testl	%eax, %eax
	je	L2032
L1959:
	movl	44(%esp), %eax
	movl	$1, %ecx
	leal	92(%esp), %edx
	movl	$0, 96(%esp)
	movl	$0, 104(%esp)
	call	__packetout.lto_priv.0
	cmpl	$-1, %eax
	je	L2003
	cmpl	$1, %eax
	jne	L2032
	movl	656(%edi), %edx
	testl	%edx, %edx
	je	L1959
	movl	4(%edx), %ebx
	testl	%ebx, %ebx
	je	L1959
	movl	104(%edx), %ecx
	testl	%ecx, %ecx
	je	L1959
	movl	28(%ebx), %edx
	testl	%edx, %edx
	je	L1959
	movl	%eax, 40(%esp)
	movl	104(%esp), %eax
	movl	%ebx, 68(%esp)
	movl	96(%esp), %ebx
	movl	%eax, 48(%esp)
	movl	108(%esp), %eax
	movl	%edx, 64(%esp)
	movl	112(%esp), %edx
	movl	%eax, 52(%esp)
	movl	72(%esp), %eax
	movl	%ecx, 60(%esp)
	movl	%ebx, 36(%esp)
	movl	%edx, 56(%esp)
	call	__vorbis_block_ripcord
	movss	92(%esp), %xmm0
	movl	$1, %edx
	movl	%ebx, 612(%edi)
	movl	$0, 596(%edi)
	leal	596(%edi), %eax
	movl	$0, 600(%edi)
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, 604(%edi)
	call	_oggpack_read
	movl	60(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	L2039
	movl	44(%ecx), %edx
	leal	596(%edi), %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L2039
	movl	64(%esp), %ecx
	movl	%eax, 632(%edi)
	addl	$8, %eax
	movl	%eax, 60(%esp)
	movl	(%ecx,%eax,4), %eax
	testl	%eax, %eax
	je	L2039
	movl	(%eax), %ecx
	movl	%ecx, 620(%edi)
	testl	%ecx, %ecx
	jne	L2048
	movl	$0, 616(%edi)
	movl	$0, 624(%edi)
L1967:
	movl	52(%esp), %eax
	movl	56(%esp), %edx
	movl	68(%esp), %esi
	movl	%eax, 640(%edi)
	movl	116(%esp), %eax
	movl	%edx, 644(%edi)
	movl	120(%esp), %edx
	movl	%eax, 648(%edi)
	movl	48(%esp), %eax
	movl	%edx, 652(%edi)
	movl	%eax, 636(%edi)
	movl	64(%esp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	%eax, 628(%edi)
	movl	4(%esi), %eax
	leal	0(,%eax,4), %edx
	movl	%eax, 44(%esp)
	movl	72(%esp), %eax
	call	__vorbis_block_alloc
	movl	%eax, 592(%edi)
	movl	4(%esi), %edx
	testl	%edx, %edx
	jg	L1969
	jmp	L1968
	.p2align 4,,10
	.p2align 3
L2049:
	movl	592(%edi), %eax
L1969:
	leal	(%eax,%ebx,4), %esi
	movl	628(%edi), %eax
	addl	$1, %ebx
	leal	0(,%eax,4), %edx
	movl	72(%esp), %eax
	call	__vorbis_block_alloc
	movl	%eax, (%esi)
	movl	68(%esp), %eax
	cmpl	4(%eax), %ebx
	jl	L2049
L1968:
	movl	64(%esp), %ecx
	movl	60(%esp), %eax
	movl	(%ecx,%eax,4), %eax
	movl	12(%eax), %eax
	movl	544(%ecx,%eax,4), %edx
	movl	72(%esp), %eax
	call	_mapping0_inverse.isra.0
	movl	504(%edi), %eax
	testl	%eax, %eax
	js	L1970
	cmpl	500(%edi), %eax
	jl	L2004
	.p2align 4
	.p2align 3
L1970:
	movl	72(%esp), %edx
	leal	480(%edi), %eax
	call	_vorbis_synthesis_blockin.isra.0
	movl	504(%edi), %ecx
	movl	%ecx, 72(%esp)
	testl	%ecx, %ecx
	js	L1971
	movl	500(%edi), %eax
	cmpl	%eax, %ecx
	jge	L1971
	movzbl	24(%esp), %ecx
	subl	72(%esp), %eax
	sall	%cl, %eax
	movl	%eax, 68(%esp)
	fildl	68(%esp)
	jmp	L1973
	.p2align 4,,10
	.p2align 3
L2048:
	movl	$1, %edx
	leal	596(%edi), %eax
	movl	%ecx, 32(%esp)
	call	_oggpack_read
	movl	$1, %edx
	movl	%eax, 616(%edi)
	leal	596(%edi), %eax
	call	_oggpack_read
	movl	32(%esp), %ecx
	cmpl	$-1, %eax
	movl	%eax, 624(%edi)
	jne	L1967
L2039:
	movl	120(%edi), %eax
	jmp	L1985
L2003:
	movl	$-3, 40(%esp)
L1953:
	movl	40(%esp), %eax
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
L1971:
	.cfi_restore_state
	fldz
L1973:
	faddl	112(%edi)
	movl	36(%esp), %eax
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	sall	$3, %eax
	movl	%eax, 68(%esp)
	movl	%ebx, %eax
	andl	%esi, %eax
	fstpl	112(%edi)
	fildl	68(%esp)
	faddl	104(%edi)
	fstpl	104(%edi)
	cmpl	$-1, %eax
	je	L1953
	movl	48(%esp), %eax
	testl	%eax, %eax
	jne	L1953
	movl	4(%edi), %esi
	testl	%esi, %esi
	jne	L1975
	xorl	%edx, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ebx
L2043:
	movl	56(%esp), %ecx
	movl	%edx, %esi
	movl	52(%esp), %edx
	sbbl	%eax, %ecx
	movl	56(%esp), %ecx
	cmovge	%edx, %esi
	cmovge	%ecx, %eax
	movl	72(%esp), %ecx
	movl	%esi, 12(%esp)
	movl	%eax, 16(%esp)
	testl	%ecx, %ecx
	js	L2000
	movl	500(%edi), %eax
	movl	72(%esp), %ecx
	cmpl	%eax, %ecx
	jge	L2000
	subl	%ecx, %eax
	movzbl	24(%esp), %ecx
	sall	%cl, %eax
	cltd
	subl	%eax, 12(%esp)
	sbbl	%edx, 16(%esp)
L2000:
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	%eax, 80(%edi)
	movl	40(%esp), %eax
	movl	%edx, 84(%edi)
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
L2032:
	.cfi_restore_state
	movl	28(%esp), %esi
	movl	88(%edi), %eax
	jmp	L1957
L2004:
	movl	$-129, 40(%esp)
	jmp	L1953
L2005:
	movl	$-2, 40(%esp)
	jmp	L1953
L2006:
	xorl	%eax, %eax
	jmp	L1994
L1975:
	movl	96(%edi), %esi
	testl	%esi, %esi
	jle	L2050
	movl	68(%edi), %ebx
	movl	%esi, %eax
	movl	52(%esp), %edx
	sall	$4, %eax
	movl	56(%esp), %ecx
	subl	(%ebx,%eax), %edx
	sbbl	4(%ebx,%eax), %ecx
	movl	%ebx, 68(%esp)
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	xorl	%edx, %edx
	movl	%ecx, 12(%esp)
	cmpl	%edx, %ecx
	movl	%ebx, 16(%esp)
	movl	16(%esp), %ecx
	sbbl	%eax, %ecx
	movl	%edx, %ecx
	cmovge	12(%esp), %ecx
	cmovge	16(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	72(%esp), %ecx
	movl	%eax, 16(%esp)
	testl	%ecx, %ecx
	js	L1982
	movl	500(%edi), %eax
	cmpl	%eax, %ecx
	jl	L2051
L1982:
	movl	68(%esp), %eax
	sall	$4, %esi
	movl	12(%esp), %ecx
	movl	16(%esp), %ebx
	leal	(%esi,%eax), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1984:
	addl	8(%eax), %ecx
	adcl	12(%eax), %ebx
	addl	$16, %eax
	cmpl	%eax, %edx
	jne	L1984
	movl	%ecx, 12(%esp)
	movl	%ebx, 16(%esp)
	jmp	L2000
L2050:
	movl	52(%esp), %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jmp	L2043
L2002:
	movl	$-137, 40(%esp)
	jmp	L1953
L2051:
	subl	%ecx, %eax
	movzbl	24(%esp), %ecx
	sall	%cl, %eax
	cltd
	subl	%eax, 12(%esp)
	sbbl	%edx, 16(%esp)
	jmp	L1982
	.cfi_endproc
LFE217:
	.p2align 4
	.globl	_ov_clear.part.0
	.def	_ov_clear.part.0;	.scl	2;	.type	32;	.endef
_ov_clear.part.0:
LFB226:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	addl	$592, %eax
	call	_vorbis_block_clear.isra.0
	leal	480(%ebx), %eax
	call	_vorbis_dsp_clear
	leal	120(%ebx), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_clear
	movl	72(%ebx), %eax
	testl	%eax, %eax
	je	L2053
	movl	52(%ebx), %edx
	testl	%edx, %edx
	jne	L2091
L2053:
	movl	60(%ebx), %eax
	testl	%eax, %eax
	je	L2056
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2056:
	movl	68(%ebx), %eax
	testl	%eax, %eax
	je	L2057
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2057:
	movl	64(%ebx), %eax
	testl	%eax, %eax
	je	L2058
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2058:
	movl	56(%ebx), %eax
	testl	%eax, %eax
	je	L2059
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2059:
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L2060
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2060:
	movl	(%ebx), %eax
	movl	$0, 24(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	testl	%eax, %eax
	je	L2061
	movl	712(%ebx), %edx
	testl	%edx, %edx
	je	L2061
	movl	%eax, (%esp)
	call	*%edx
L2061:
	movl	%ebx, (%esp)
	movl	$720, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2091:
	.cfi_restore_state
	jle	L2054
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2055:
	movl	%esi, %edx
	sall	$5, %edx
	addl	%edx, %eax
	call	_vorbis_info_clear
	movl	%esi, %eax
	addl	$1, %esi
	sall	$4, %eax
	addl	76(%ebx), %eax
	call	_vorbis_comment_clear
	movl	72(%ebx), %eax
	cmpl	52(%ebx), %esi
	jl	L2055
	movl	16(%esp), %esi
	.cfi_restore 6
L2054:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	76(%ebx), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	jmp	L2053
	.cfi_endproc
LFE226:
	.p2align 4
	.def	_ov_raw_seek;	.scl	3;	.type	32;	.endef
_ov_raw_seek:
LFB228:
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
	movl	%edx, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$456, %esp
	.cfi_offset 3, -20
	movl	88(%eax), %edx
	cmpl	$1, %edx
	jle	L2093
	movl	4(%eax), %edi
	testl	%edi, %edi
	je	L2132
	testl	%ecx, %ecx
	js	L2093
	movl	20(%eax), %edi
	cmpl	%esi, 16(%eax)
	sbbl	%ecx, %edi
	jl	L2093
	movl	%esi, 40(%esp)
	movl	%ecx, %edi
	movl	%esi, %ecx
	movl	%eax, %esi
	leal	480(%eax), %eax
	movl	%eax, 20(%esp)
	cmpl	$2, %edx
	je	L2096
	movl	96(%esi), %edx
	movl	56(%esi), %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 44(%esp)
	leal	0(,%edx,8), %eax
	movl	%eax, 32(%esp)
	movl	44(%esp), %eax
	cmpl	(%eax,%edx,8), %ecx
	movl	%edi, %ecx
	sbbl	4(%eax,%edx,8), %ecx
	jl	L2097
	movl	32(%esp), %edx
	movl	36(%esp), %ecx
	cmpl	8(%eax,%edx), %ecx
	movl	%edi, %ecx
	sbbl	12(%eax,%edx), %ecx
	jl	L2096
L2097:
	movl	20(%esp), %eax
	call	_vorbis_dsp_clear
	leal	592(%esi), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%esi)
L2096:
	movl	120(%esi), %eax
	movl	$-1, 80(%esi)
	movl	$-1, 84(%esi)
	testl	%eax, %eax
	je	L2098
	movl	$0, 128(%esi)
	movl	92(%esi), %eax
	movl	$0, 132(%esi)
	movl	$0, 148(%esi)
	movl	$0, 152(%esi)
	movl	$0, 156(%esi)
	movl	$0, 444(%esi)
	movl	$0, 448(%esi)
	movl	$0, 452(%esi)
	movl	$-1, 460(%esi)
	movl	$0, 464(%esi)
	movl	$0, 468(%esi)
	movl	$0, 472(%esi)
	movl	$0, 476(%esi)
	movl	%eax, 456(%esi)
L2098:
	movl	20(%esp), %eax
	call	_vorbis_synthesis_restart.isra.0
	movl	40(%esp), %edx
	movl	%edi, %ecx
	movl	%esi, %eax
	call	__seek_helper.lto_priv.0
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	jne	L2176
	leal	120(%esi), %eax
	movl	$0, 96(%esp)
	movl	%eax, 32(%esp)
	movl	92(%esi), %eax
	movl	%eax, 4(%esp)
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_init
	movl	96(%esp), %eax
	movl	%eax, 44(%esp)
	testl	%eax, %eax
	je	L2100
	movl	$0, 104(%esp)
	movl	$0, 108(%esp)
	movl	$0, 124(%esp)
	movl	$0, 128(%esp)
	movl	$0, 132(%esp)
	movl	$0, 420(%esp)
	movl	$0, 424(%esp)
	movl	$0, 428(%esp)
	movl	$-1, 436(%esp)
	movl	$0, 440(%esp)
	movl	$0, 444(%esp)
	movl	$0, 448(%esp)
	movl	$0, 452(%esp)
L2100:
	cmpl	$2, 88(%esi)
	movl	$0, 16(%esp)
	movl	$0, %edi
	movl	$0, 28(%esp)
	movl	$0, 8(%esp)
	jg	L2101
L2144:
	movl	%edi, 24(%esp)
L2116:
	movl	$-1, (%esp)
	leal	48(%esp), %edx
	movl	%esi, %eax
	movl	$-1, 4(%esp)
	movl	%ebx, 48(%esp)
	call	__get_next_page.lto_priv.0
	movl	%eax, 40(%esp)
	movl	%edx, 36(%esp)
	testl	%edx, %edx
	js	L2177
	movl	48(%esp), %ebx
	cmpl	$2, 88(%esi)
	jg	L2178
L2118:
	movl	52(%esi), %ecx
	movl	14(%ebx), %edx
	testl	%ecx, %ecx
	jle	L2136
	movl	64(%esi), %edi
	xorl	%eax, %eax
	jmp	L2123
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2179:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L2175
L2123:
	cmpl	%edx, (%edi,%eax,4)
	jne	L2179
L2122:
	cmpl	%eax, %ecx
	je	L2175
	movl	120(%esi), %edi
	movl	%eax, 96(%esi)
	movl	%edx, 92(%esi)
	testl	%edi, %edi
	je	L2127
	movl	$0, 128(%esi)
	movl	$0, 132(%esi)
	movl	$0, 148(%esi)
	movl	$0, 152(%esi)
	movl	$0, 156(%esi)
	movl	$0, 444(%esi)
	movl	$0, 448(%esi)
	movl	$0, 452(%esi)
	movl	$-1, 460(%esi)
	movl	$0, 464(%esi)
	movl	$0, 468(%esi)
	movl	$0, 472(%esi)
	movl	$0, 476(%esi)
	movl	%edx, 456(%esi)
L2127:
	movl	44(%esp), %ecx
	testl	%ecx, %ecx
	je	L2128
	movl	$0, 104(%esp)
	movl	$0, 108(%esp)
	movl	$0, 124(%esp)
	movl	$0, 128(%esp)
	movl	$0, 132(%esp)
	movl	$0, 420(%esp)
	movl	$0, 424(%esp)
	movl	$0, 428(%esp)
	movl	$-1, 436(%esp)
	movl	$0, 440(%esp)
	movl	$0, 444(%esp)
	movl	$0, 448(%esp)
	movl	$0, 452(%esp)
	movl	%edx, 432(%esp)
L2128:
	movl	60(%esi), %ecx
	movl	40(%esp), %edi
	movl	$3, 88(%esi)
	movl	4(%ecx,%eax,8), %edx
	cmpl	%edi, (%ecx,%eax,8)
	sbbl	36(%esp), %edx
	setge	%al
	movzbl	%al, %eax
	movl	%eax, 16(%esp)
L2120:
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_pagein
	movl	44(%esp), %eax
	movl	%eax, 96(%esp)
	leal	48(%esp), %eax
	movl	%eax, 4(%esp)
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_pagein
	movl	96(%esp), %eax
	movl	%eax, 44(%esp)
	movzbl	5(%ebx), %eax
	andl	$4, %eax
	movl	%eax, 28(%esp)
L2175:
	cmpl	$2, 88(%esi)
	jle	L2116
	movl	44(%esp), %eax
	testl	%eax, %eax
	je	L2116
	movl	24(%esp), %edi
L2104:
	movl	44(%esp), %eax
	leal	64(%esp), %edx
	movl	$1, %ecx
	movl	%eax, 96(%esp)
	leal	96(%esp), %eax
	call	__packetout.lto_priv.0
	cmpl	$1, %eax
	je	L2180
L2102:
	testl	%edi, %edi
	je	L2144
	movl	$-1, %ecx
	movl	%ecx, %ebx
L2114:
	movl	44(%esp), %eax
	movl	%ecx, 80(%esi)
	movl	%ebx, 84(%esi)
	movl	%eax, 96(%esp)
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_clear
	movl	$0, 104(%esi)
	movl	$0, 108(%esi)
	movl	$0, 112(%esi)
	movl	$0, 116(%esi)
L2092:
	movl	12(%esp), %eax
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
L2178:
	.cfi_restore_state
	movl	14(%ebx), %eax
	cmpl	%eax, 92(%esi)
	je	L2120
	testb	$2, 5(%ebx)
	je	L2120
	movl	20(%esp), %eax
	call	_vorbis_dsp_clear
	leal	592(%esi), %eax
	call	_vorbis_block_clear.isra.0
	movl	44(%esp), %eax
	movl	$2, 88(%esi)
	movl	%eax, 96(%esp)
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_clear
	movl	96(%esp), %eax
	movl	%eax, 44(%esp)
	cmpl	$2, 88(%esi)
	jg	L2120
	jmp	L2118
	.p2align 4,,10
	.p2align 3
L2180:
	movl	96(%esi), %eax
	movl	%eax, 40(%esp)
	sall	$5, %eax
	addl	72(%esi), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L2107
	movl	68(%esp), %ecx
	movl	64(%esp), %edx
	call	_vorbis_packet_blocksize.isra.0
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	js	L2181
	movl	28(%esp), %edx
	testl	%edx, %edx
	je	L2110
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	L2182
L2110:
	movl	36(%esp), %eax
	movl	8(%esp), %ecx
	addl	%edi, %eax
	sarl	$2, %eax
	addl	%ecx, %eax
	testl	%edi, %edi
	cmove	%ecx, %eax
	movl	%eax, 8(%esp)
L2109:
	movl	80(%esp), %eax
	movl	84(%esp), %edx
	movl	%eax, %ecx
	andl	%edx, %ecx
	cmpl	$-1, %ecx
	je	L2135
	movl	40(%esp), %ebx
	movl	68(%esi), %edi
	sall	$4, %ebx
	subl	(%edi,%ebx), %eax
	sbbl	4(%edi,%ebx), %edx
	movl	%ebx, 36(%esp)
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	%edx, %ebx
	cmpl	$0, %ecx
	sbbl	%eax, %edx
	movl	$0, %edx
	cmovl	%eax, %ebx
	movl	40(%esp), %eax
	cmovl	%edx, %ecx
	testl	%eax, %eax
	jle	L2112
	movl	36(%esp), %edx
	movl	%edi, %eax
	addl	%edi, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L2113:
	addl	8(%eax), %ecx
	adcl	12(%eax), %ebx
	addl	$16, %eax
	cmpl	%eax, %edx
	jne	L2113
L2112:
	movl	8(%esp), %eax
	cltd
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	cmpl	%edx, %ecx
	sbbl	%eax, %edi
	cmovl	%edx, %ecx
	cmovl	%eax, %ebx
	jmp	L2114
L2135:
	movl	36(%esp), %edi
L2101:
	movl	44(%esp), %eax
	testl	%eax, %eax
	jne	L2104
	jmp	L2102
	.p2align 4,,10
	.p2align 3
L2107:
	movl	120(%esi), %eax
	testl	%eax, %eax
	je	L2102
	movl	32(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__packetout.lto_priv.0
	jmp	L2102
L2177:
	movl	$-1, %edx
	movl	%esi, %eax
	call	_ov_pcm_total
	movl	%eax, %ecx
	movl	%edx, %ebx
	jmp	L2114
L2181:
	movl	120(%esi), %ecx
	testl	%ecx, %ecx
	je	L2134
	movl	32(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__packetout.lto_priv.0
	movl	$0, 36(%esp)
	jmp	L2109
L2182:
	movl	120(%esi), %eax
	testl	%eax, %eax
	je	L2109
	movl	32(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__packetout.lto_priv.0
	jmp	L2109
L2136:
	xorl	%eax, %eax
	jmp	L2122
L2093:
	movl	$-131, 12(%esp)
	jmp	L2092
L2176:
	movl	$-1, 80(%esi)
	movl	20(%esp), %eax
	movl	$-1, 84(%esi)
	call	_vorbis_dsp_clear
	leal	592(%esi), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%esi)
	movl	$-137, 12(%esp)
	jmp	L2092
L2132:
	movl	$-138, 12(%esp)
	jmp	L2092
L2134:
	xorl	%eax, %eax
	movl	%eax, 36(%esp)
	jmp	L2109
	.cfi_endproc
LFE228:
	.p2align 4
	.def	_ov_pcm_seek;	.scl	3;	.type	32;	.endef
_ov_pcm_seek:
LFB229:
	.cfi_startproc
	cmpl	$1, 88(%eax)
	jle	L2371
	cmpl	$0, 4(%eax)
	je	L2289
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
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	andl	$-8, %esp
	subl	$200, %esp
	movl	%edx, 64(%esp)
	movl	$-1, %edx
	movl	%ecx, 68(%esp)
	call	_ov_pcm_total
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	testl	%esi, %esi
	js	L2184
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jl	L2184
	movl	68(%edi), %eax
	movl	%eax, 120(%esp)
	movl	52(%edi), %eax
	subl	$1, %eax
	movl	%eax, 32(%esp)
	js	L2383
	movl	32(%esp), %edx
	movl	24(%esp), %esi
	movl	%edi, 104(%esp)
	movl	28(%esp), %edi
	jmp	L2191
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2385:
	subl	$1, %edx
	jb	L2384
L2191:
	movl	120(%esp), %ebx
	movl	%edx, %eax
	movl	%edx, 72(%esp)
	sall	$4, %eax
	movl	8(%ebx,%eax), %ecx
	movl	12(%ebx,%eax), %ebx
	subl	%ecx, %esi
	movl	%ecx, 88(%esp)
	movl	64(%esp), %ecx
	sbbl	%ebx, %edi
	movl	%ebx, 92(%esp)
	movl	68(%esp), %ebx
	cmpl	%esi, %ecx
	sbbl	%edi, %ebx
	jl	L2385
	movl	%esi, 24(%esp)
	movl	%edx, 32(%esp)
	movl	%edi, 28(%esp)
	movl	104(%esp), %edi
L2190:
	movl	72(%esp), %esi
	movl	56(%edi), %edx
	movl	12(%edx,%esi,8), %ebx
	movl	8(%edx,%esi,8), %ecx
	movl	60(%edi), %edx
	movl	%ebx, 100(%esp)
	movl	%esi, %ebx
	leal	0(,%esi,8), %esi
	movl	%ecx, 96(%esp)
	movl	100(%esp), %ecx
	movl	%esi, 12(%esp)
	movl	4(%edx,%ebx,8), %esi
	movl	(%edx,%ebx,8), %ebx
	movl	96(%esp), %edx
	xorl	%esi, %ecx
	movl	%esi, 108(%esp)
	xorl	%ebx, %edx
	movl	%ebx, 104(%esp)
	orl	%ecx, %edx
	je	L2386
	movl	120(%esp), %ebx
	movl	92(%esp), %edx
	movl	96(%esp), %ecx
	movl	4(%ebx,%eax), %esi
	movl	(%ebx,%eax), %ebx
	movl	88(%esp), %eax
	movl	%ebx, 48(%esp)
	addl	%ebx, %eax
	movl	%esi, 52(%esp)
	adcl	%esi, %edx
	movl	%eax, 16(%esp)
	movl	64(%esp), %eax
	subl	24(%esp), %eax
	movl	%edx, 20(%esp)
	movl	68(%esp), %edx
	sbbl	28(%esp), %edx
	addl	%ebx, %eax
	adcl	%esi, %edx
	movl	%eax, 80(%esp)
	movl	104(%esp), %eax
	movl	%edx, 84(%esp)
	movl	108(%esp), %edx
	movl	100(%esp), %ebx
	cmpl	%ecx, %eax
	movl	%edx, %eax
	sbbl	%ebx, %eax
	jge	L2387
	movl	72(%esp), %eax
	movl	$0, 56(%esp)
	movl	$-1, 44(%esp)
	leal	0(,%eax,4), %esi
	movl	$-1, 40(%esp)
	movl	%esi, 76(%esp)
	movl	%edi, 36(%esp)
L2208:
	movl	$65535, %ecx
	movl	96(%esp), %esi
	subl	104(%esp), %esi
	movl	100(%esp), %edi
	sbbl	108(%esp), %edi
	cmpl	%esi, %ecx
	movl	$0, %ecx
	movl	108(%esp), %ebx
	sbbl	%edi, %ecx
	movl	104(%esp), %ecx
	movl	%esi, %eax
	movl	%ecx, 120(%esp)
	movl	%ebx, 124(%esp)
	jge	L2197
	fnstcw	134(%esp)
	movl	80(%esp), %ebx
	movl	84(%esp), %esi
	subl	48(%esp), %ebx
	sbbl	52(%esp), %esi
	movl	%ebx, 120(%esp)
	movl	20(%esp), %edx
	movl	%esi, 124(%esp)
	fildq	120(%esp)
	movl	%eax, 120(%esp)
	movl	16(%esp), %eax
	movl	%edi, 124(%esp)
	fildq	120(%esp)
	subl	48(%esp), %eax
	sbbl	52(%esp), %edx
	movl	%eax, 120(%esp)
	movzwl	134(%esp), %eax
	movl	%edx, 124(%esp)
	fmulp	%st, %st(1)
	fildq	120(%esp)
	orb	$12, %ah
	movw	%ax, 132(%esp)
	fdivrp	%st, %st(1)
	fldcw	132(%esp)
	fistpq	120(%esp)
	fldcw	134(%esp)
	movl	120(%esp), %ebx
	addl	104(%esp), %ebx
	movl	124(%esp), %esi
	adcl	108(%esp), %esi
	addl	$-65536, %ebx
	adcl	$-1, %esi
	movl	%ebx, 120(%esp)
	movl	%esi, 124(%esp)
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	addl	$65535, %eax
	adcl	$0, %edx
	cmpl	%ebx, %eax
	movl	%edx, %edi
	sbbl	%esi, %edi
	jl	L2197
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	%eax, 120(%esp)
	movl	%edx, 124(%esp)
L2197:
	movl	120(%esp), %edx
	movl	124(%esp), %ecx
	movl	36(%esp), %eax
	call	__seek_helper.lto_priv.0
	testl	%eax, %eax
	jne	L2388
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	96(%esp), %ebx
	movl	100(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jge	L2292
	movl	36(%esp), %ebx
	jmp	L2207
	.p2align 4,,10
	.p2align 3
L2199:
	movl	112(%esp), %esi
	movl	64(%ebx), %eax
	movl	76(%esp), %edi
	movl	14(%esi), %ecx
	cmpl	%ecx, (%eax,%edi)
	jne	L2296
	movl	%esi, %eax
	call	_ogg_page_granulepos.isra.0
	movl	%edx, %ecx
	movl	%eax, %edx
	andl	%ecx, %eax
	cmpl	$-1, %eax
	je	L2296
	movl	80(%esp), %esi
	movl	%ecx, %eax
	cmpl	%esi, %edx
	sbbl	84(%esp), %eax
	jge	L2203
	movl	8(%ebx), %esi
	movl	12(%ebx), %edi
	movl	$44100, %eax
	movl	%esi, 104(%esp)
	movl	80(%esp), %esi
	movl	%edi, 108(%esp)
	movl	84(%esp), %edi
	subl	%edx, %esi
	sbbl	%ecx, %edi
	movl	%esi, 120(%esp)
	cmpl	120(%esp), %eax
	movl	$0, %eax
	movl	%edi, 124(%esp)
	sbbl	124(%esp), %eax
	jl	L2297
	movl	88(%esp), %eax
	movl	104(%esp), %esi
	movl	%edx, 48(%esp)
	movl	108(%esp), %edi
	movl	%ecx, 52(%esp)
	movl	%eax, 44(%esp)
	movl	128(%esp), %eax
	movl	%esi, 120(%esp)
	movl	%edi, 124(%esp)
	movl	%eax, 40(%esp)
	movl	$1, 56(%esp)
	.p2align 4
	.p2align 3
L2202:
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	96(%esp), %esi
	movl	100(%esp), %edi
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jge	L2362
L2207:
	movl	96(%esp), %eax
	movl	100(%esp), %edx
	subl	8(%ebx), %eax
	sbbl	12(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	112(%esp), %edi
	leal	136(%esp), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%edi, 136(%esp)
	call	__get_next_page.lto_priv.0
	movl	%eax, 88(%esp)
	movl	%edx, %ecx
	xorl	$-128, %eax
	movl	%edx, 128(%esp)
	notl	%edx
	orl	%edx, %eax
	je	L2293
	movl	136(%esp), %eax
	movl	%eax, 112(%esp)
	testl	%ecx, %ecx
	jns	L2199
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	cmpl	120(%esp), %eax
	movl	%edx, %edi
	sbbl	124(%esp), %edi
	jge	L2362
	movl	120(%esp), %esi
	movl	124(%esp), %edi
	movl	%esi, %ecx
	orl	%edi, %ecx
	je	L2389
	addl	$-65536, 120(%esp)
	movl	108(%esp), %ecx
	adcl	$-1, 124(%esp)
	movl	124(%esp), %edi
	movl	120(%esp), %esi
	cmpl	%esi, 104(%esp)
	sbbl	%edi, %ecx
	jl	L2201
	movl	%eax, 120(%esp)
	movl	%edx, 124(%esp)
L2201:
	movl	120(%esp), %edx
	movl	124(%esp), %ecx
	movl	%ebx, %eax
	call	__seek_helper.lto_priv.0
	testl	%eax, %eax
	jne	L2378
L2375:
	movl	$0, 88(%esp)
	jmp	L2202
	.p2align 4,,10
	.p2align 3
L2296:
	movl	$1, 56(%esp)
	jmp	L2202
	.p2align 4,,10
	.p2align 3
L2362:
	movl	76(%esp), %esi
	movl	%ebx, %edi
L2198:
	cmpl	$-1, 40(%esp)
	je	L2390
L2209:
	movl	44(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edi, %eax
	call	__seek_helper.lto_priv.0
	movl	$-1, 80(%edi)
	movl	%eax, %edx
	leal	480(%edi), %eax
	movl	$-1, 84(%edi)
	movl	%eax, 104(%esp)
	testl	%edx, %edx
	jne	L2196
	movl	$-1, (%esp)
	leal	152(%esp), %edx
	movl	%edi, %eax
	movl	$-1, 4(%esp)
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	js	L2391
	movl	32(%esp), %ebx
	leal	480(%edi), %eax
	cmpl	%ebx, 96(%edi)
	je	L2220
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	64(%edi), %eax
	movl	$2, 88(%edi)
	movl	%ebx, 96(%edi)
	movl	(%eax,%esi), %eax
	movl	$3, 88(%edi)
	movl	%eax, 92(%edi)
L2221:
	movl	120(%edi), %ecx
	leal	120(%edi), %ebx
	testl	%ecx, %ecx
	je	L2222
	movl	$0, 128(%edi)
	movl	$0, 132(%edi)
	movl	$0, 148(%edi)
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	$0, 444(%edi)
	movl	$0, 448(%edi)
	movl	$0, 452(%edi)
	movl	$-1, 460(%edi)
	movl	$0, 464(%edi)
	movl	$0, 468(%edi)
	movl	$0, 472(%edi)
	movl	$0, 476(%edi)
	movl	%eax, 456(%edi)
L2222:
	leal	152(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_ogg_stream_pagein
	movl	120(%edi), %edx
	testl	%edx, %edx
	je	L2223
L2237:
	leal	168(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__packetout.lto_priv.0
	cltd
	testl	%eax, %eax
	je	L2223
L2234:
	testl	%edx, %edx
	js	L2303
L2235:
	movl	184(%esp), %eax
	movl	188(%esp), %edx
	movl	%eax, %ecx
	andl	%edx, %ecx
	cmpl	$-1, %ecx
	jne	L2392
	movl	120(%edi), %eax
	testl	%eax, %eax
	je	L2223
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__packetout.lto_priv.0
	jmp	L2237
	.p2align 4,,10
	.p2align 3
L2203:
	movl	104(%esp), %esi
	movl	108(%esp), %edi
	addl	$1, %esi
	adcl	$0, %edi
	cmpl	120(%esp), %esi
	movl	%esi, 56(%esp)
	movl	%edi, 60(%esp)
	movl	60(%esp), %edi
	sbbl	124(%esp), %edi
	jge	L2363
	movl	96(%esp), %esi
	movl	8(%ebx), %eax
	movl	100(%esp), %edi
	xorl	12(%ebx), %edi
	xorl	%esi, %eax
	orl	%edi, %eax
	jne	L2298
	addl	$-65536, 120(%esp)
	movl	104(%esp), %eax
	movl	120(%esp), %esi
	movl	108(%esp), %edx
	adcl	$-1, 124(%esp)
	movl	124(%esp), %edi
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jl	L2206
	movl	56(%esp), %esi
	movl	60(%esp), %edi
	movl	%esi, 120(%esp)
	movl	%edi, 124(%esp)
L2206:
	movl	120(%esp), %edx
	movl	124(%esp), %ecx
	movl	%ebx, %eax
	call	__seek_helper.lto_priv.0
	testl	%eax, %eax
	jne	L2378
	movl	88(%esp), %eax
	movl	$1, 56(%esp)
	movl	%eax, 96(%esp)
	movl	128(%esp), %eax
	movl	%eax, 100(%esp)
	jmp	L2375
	.p2align 4,,10
	.p2align 3
L2363:
	movl	76(%esp), %esi
	movl	%ebx, %edi
L2205:
	movl	44(%esp), %eax
	andl	40(%esp), %eax
	cmpl	$-1, %eax
	jne	L2209
	jmp	L2195
	.p2align 4,,10
	.p2align 3
L2293:
	leal	480(%ebx), %eax
	movl	%ebx, %edi
	movl	$-128, %edx
	movl	%eax, 104(%esp)
L2196:
	movl	$-1, 80(%edi)
	movl	104(%esp), %eax
	movl	$-1, 84(%edi)
	movl	%edx, 120(%esp)
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%edi)
	movl	120(%esp), %edx
L2232:
	testl	%edx, %edx
	js	L2359
L2241:
	cmpl	$3, 88(%edi)
	jg	L2242
	jne	L2240
	movl	%edi, %eax
	call	__make_decode_ready.part.0
	testl	%eax, %eax
	je	L2242
L2268:
	movl	$-137, %edx
L2359:
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
L2242:
	.cfi_restore_state
	leal	120(%edi), %eax
	movl	$0, 96(%esp)
	movl	120(%edi), %esi
	movl	%eax, 120(%esp)
	leal	592(%edi), %eax
	movl	%eax, 112(%esp)
	jmp	L2244
	.p2align 4,,10
	.p2align 3
L2260:
	cmpl	$2, 88(%edi)
	jle	L2261
L2262:
	leal	152(%esp), %eax
	movl	%eax, 4(%esp)
	movl	120(%esp), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_pagein
L2357:
	movl	120(%edi), %esi
L2244:
	testl	%esi, %esi
	je	L2245
L2248:
	movl	120(%esp), %eax
	xorl	%ecx, %ecx
	leal	168(%esp), %edx
	movl	$0, 184(%esp)
	movl	$0, 188(%esp)
	call	__packetout.lto_priv.0
	cmpl	$1, %eax
	je	L2393
	cmpl	$-1, %eax
	je	L2379
L2245:
	movl	$-1, (%esp)
	leal	152(%esp), %edx
	movl	%edi, %eax
	movl	$-1, 4(%esp)
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	js	L2379
	movl	152(%esp), %ebx
	testb	$2, 5(%ebx)
	je	L2260
	movl	104(%esp), %eax
	call	_vorbis_dsp_clear
	movl	112(%esp), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%edi)
L2261:
	movl	52(%edi), %edx
	movl	14(%ebx), %ecx
	testl	%edx, %edx
	jle	L2305
	movl	64(%edi), %esi
	xorl	%eax, %eax
	jmp	L2264
	.p2align 4
	.p2align 4,,10
	.p2align 3
L2394:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L2357
L2264:
	cmpl	%ecx, (%esi,%eax,4)
	jne	L2394
L2263:
	movl	120(%edi), %esi
	cmpl	%edx, %eax
	je	L2244
	movl	%eax, 96(%edi)
	movl	$3, 88(%edi)
	movl	14(%ebx), %eax
	movl	%eax, 92(%edi)
	testl	%esi, %esi
	je	L2267
	movl	$0, 128(%edi)
	movl	$0, 132(%edi)
	movl	$0, 148(%edi)
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	$0, 444(%edi)
	movl	$0, 448(%edi)
	movl	$0, 452(%edi)
	movl	$-1, 460(%edi)
	movl	$0, 464(%edi)
	movl	$0, 468(%edi)
	movl	$0, 472(%edi)
	movl	$0, 476(%edi)
	movl	%ecx, 456(%edi)
L2267:
	movl	%edi, %eax
	call	__make_decode_ready.part.0
	movl	%eax, 96(%esp)
	testl	%eax, %eax
	je	L2262
	jmp	L2268
	.p2align 4,,10
	.p2align 3
L2393:
	movl	184(%esp), %eax
	movl	188(%esp), %edx
	movl	72(%edi), %ebx
	movl	172(%esp), %ecx
	movl	%eax, 88(%esp)
	movl	168(%esp), %eax
	movl	%edx, 92(%esp)
	movl	%eax, 128(%esp)
	movl	96(%edi), %eax
	movl	128(%esp), %edx
	movl	%ecx, 56(%esp)
	sall	$5, %eax
	movl	28(%ebx,%eax), %eax
	call	_vorbis_packet_blocksize.isra.0
	testl	%eax, %eax
	js	L2395
	movl	96(%esp), %esi
	movl	80(%edi), %ecx
	movl	%ebx, 76(%esp)
	movl	%eax, 80(%esp)
	movl	84(%edi), %ebx
	testl	%esi, %esi
	je	L2249
	addl	%esi, %eax
	sarl	$2, %eax
	cltd
	addl	%eax, %ecx
	adcl	%edx, %ebx
	movl	%ecx, 80(%edi)
	movl	%ebx, 84(%edi)
L2249:
	movl	76(%esp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	L2304
	movl	4(%eax), %eax
L2250:
	addl	80(%esp), %eax
	sarl	$2, %eax
	cltd
	addl	%ecx, %eax
	adcl	%ebx, %edx
	cmpl	64(%esp), %eax
	movl	%edx, %eax
	sbbl	68(%esp), %eax
	jge	L2368
	movss	128(%esp), %xmm1
	movl	120(%esp), %eax
	xorl	%edx, %edx
	movl	$1, %ecx
	leal	596(%edi), %ebx
	movaps	%xmm1, %xmm0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 96(%esp)
	call	__packetout.lto_priv.0
	movl	656(%edi), %eax
	movl	104(%eax), %esi
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%eax, 128(%esp)
	movl	112(%esp), %eax
	call	__vorbis_block_ripcord
	movl	56(%esp), %eax
	movlps	96(%esp), %xmm0
	movl	$0, 596(%edi)
	movl	$0, 600(%edi)
	movl	$1, %edx
	movl	%eax, 612(%edi)
	movl	%ebx, %eax
	movlps	%xmm0, 604(%edi)
	call	_oggpack_read
	testl	%eax, %eax
	jne	L2252
	movl	44(%esi), %edx
	movl	%ebx, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L2252
	movl	128(%esp), %esi
	movl	%eax, 632(%edi)
	movl	32(%esi,%eax,4), %eax
	testl	%eax, %eax
	je	L2252
	movl	(%eax), %eax
	movl	%eax, 620(%edi)
	testl	%eax, %eax
	jne	L2396
	movl	$0, 616(%edi)
	movl	$0, 624(%edi)
L2254:
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	movl	$0, 628(%edi)
	movl	$0, 592(%edi)
	movl	%eax, 640(%edi)
	movl	192(%esp), %eax
	movl	%edx, 644(%edi)
	movl	196(%esp), %edx
	movl	%eax, 648(%edi)
	movl	180(%esp), %eax
	movl	%edx, 652(%edi)
	movl	%eax, 636(%edi)
L2252:
	movl	104(%esp), %eax
	movl	112(%esp), %edx
	call	_vorbis_synthesis_blockin.isra.0
	movl	92(%esp), %eax
	testl	%eax, %eax
	jns	L2255
L2257:
	movl	80(%esp), %eax
	movl	%eax, 96(%esp)
	jmp	L2357
	.p2align 4,,10
	.p2align 3
L2384:
	movl	120(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%edi, 28(%esp)
	movl	104(%esp), %edi
	movl	-4(%eax), %edx
	movl	-8(%eax), %eax
	movl	%esi, 24(%esp)
	movl	$-1, 72(%esp)
	movl	%eax, 88(%esp)
	movl	$-16, %eax
	movl	%edx, 92(%esp)
	jmp	L2190
	.p2align 4,,10
	.p2align 3
L2255:
	movl	96(%edi), %ebx
	movl	68(%edi), %esi
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	sall	$4, %ebx
	movl	%esi, 96(%esp)
	subl	(%esi,%ebx), %eax
	sbbl	4(%esi,%ebx), %edx
	movl	%ebx, 128(%esp)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%edx, %ecx
	cmpl	%ebx, %eax
	sbbl	%esi, %ecx
	cmovl	%esi, %edx
	cmovl	%ebx, %eax
	movl	96(%edi), %esi
	movl	%eax, 80(%edi)
	movl	%edx, 84(%edi)
	testl	%esi, %esi
	jle	L2257
	movl	96(%esp), %ecx
	movl	128(%esp), %ebx
	addl	%ecx, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L2258:
	addl	8(%ecx), %eax
	adcl	12(%ecx), %edx
	addl	$16, %ecx
	movl	%eax, 80(%edi)
	movl	%edx, 84(%edi)
	cmpl	%ecx, %ebx
	jne	L2258
	jmp	L2257
	.p2align 4,,10
	.p2align 3
L2396:
	movl	$1, %edx
	movl	%ebx, %eax
	call	_oggpack_read
	movl	$1, %edx
	movl	%eax, 616(%edi)
	movl	%ebx, %eax
	call	_oggpack_read
	movl	%eax, 624(%edi)
	cmpl	$-1, %eax
	jne	L2254
	jmp	L2252
	.p2align 4,,10
	.p2align 3
L2379:
	movl	72(%edi), %eax
	movl	84(%edi), %edx
	movl	%eax, 76(%esp)
	movl	80(%edi), %eax
	movl	%edx, 124(%esp)
	movl	%eax, 120(%esp)
L2251:
	movl	76(%esp), %eax
	movl	$0, 104(%edi)
	movl	$0, 108(%edi)
	movl	68(%esp), %edx
	movl	$0, 112(%edi)
	movl	$0, 116(%edi)
	movl	28(%eax), %eax
	movl	3656(%eax), %ebx
	movl	64(%esp), %eax
	movl	%ebx, %ecx
	movl	%ebx, 96(%esp)
	shrdl	%cl, %edx, %eax
	sarl	%cl, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	testb	$32, %bl
	cmovne	%edx, %eax
	cmovne	%esi, %edx
	xorl	%ebx, %ebx
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	andl	$32, %ecx
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 88(%esp)
	.p2align 4
	.p2align 3
L2283:
	movl	88(%esp), %eax
	movl	120(%esp), %ebx
	movl	124(%esp), %esi
	movl	92(%esp), %edx
	cmpl	%eax, %ebx
	movl	%esi, %ecx
	sbbl	%edx, %ecx
	jge	L2397
	movzbl	96(%esp), %ecx
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	subl	120(%esp), %eax
	sbbl	124(%esp), %edx
	shrdl	%cl, %edx, %eax
	sarl	%cl, %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	testb	$32, %cl
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	movl	%eax, 112(%esp)
	movl	504(%edi), %eax
	movl	%edx, %ecx
	movl	%edx, 116(%esp)
	testl	%eax, %eax
	js	L2398
	movl	500(%edi), %edx
	cmpl	%edx, %eax
	jl	L2274
	movl	116(%esp), %edx
	testl	%edx, %edx
	js	L2275
L2276:
	movl	$0, 104(%esp)
	movl	$0, 108(%esp)
L2273:
	movl	%eax, 504(%edi)
L2281:
	movl	120(%esp), %eax
	movl	124(%esp), %edx
	movl	112(%esp), %ebx
	movl	116(%esp), %esi
	movl	%eax, 80(%edi)
	movl	104(%esp), %eax
	movl	%edx, 84(%edi)
	movl	108(%esp), %edx
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jge	L2283
	movl	%edi, %eax
	call	__fetch_and_process_packet.constprop.0
	cmpl	$1, %eax
	jne	L2284
	movl	80(%edi), %eax
	movl	84(%edi), %edx
	movl	%eax, 120(%esp)
	movl	%edx, 124(%esp)
	jmp	L2283
	.p2align 4,,10
	.p2align 3
L2398:
	testl	%ecx, %ecx
	jns	L2276
L2275:
	movl	112(%esp), %edx
	testl	%edx, %edx
	je	L2399
	movl	%edx, %ecx
	addl	%edx, %eax
	movl	%edx, 104(%esp)
	sarl	$31, %ecx
	movl	%ecx, 108(%esp)
	movzbl	96(%esp), %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	addl	%edx, 120(%esp)
	adcl	%ecx, 124(%esp)
	cmpl	%eax, 500(%edi)
	jge	L2273
	jmp	L2281
	.p2align 4,,10
	.p2align 3
L2274:
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	movl	%ecx, 128(%esp)
	sarl	$31, %ebx
	movl	%ecx, 104(%esp)
	movl	%ebx, 108(%esp)
	movl	112(%esp), %ebx
	cmpl	%ecx, %ebx
	movl	116(%esp), %ecx
	sbbl	108(%esp), %ecx
	jl	L2275
	movl	128(%esp), %eax
	movzbl	96(%esp), %ecx
	sall	%cl, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	addl	%eax, 120(%esp)
	movl	%edx, %eax
	adcl	%esi, 124(%esp)
	jmp	L2273
	.p2align 4,,10
	.p2align 3
L2399:
	movl	120(%esp), %eax
	movl	124(%esp), %edx
	movl	%eax, 80(%edi)
	movl	%edx, 84(%edi)
	jmp	L2283
	.p2align 4,,10
	.p2align 3
L2397:
	leal	-12(%ebp), %esp
	xorl	%edx, %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L2395:
	.cfi_restore_state
	movl	120(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__packetout.lto_priv.0
	jmp	L2248
L2386:
	movl	104(%esp), %edx
	movl	108(%esp), %ecx
	movl	%edi, %eax
	call	__seek_helper.lto_priv.0
	testl	%eax, %eax
	jne	L2193
	movl	$1, (%esp)
	leal	136(%esp), %edx
	movl	%edi, %eax
	movl	$0, 4(%esp)
	movl	$0, 136(%esp)
	call	__get_next_page.lto_priv.0
	movl	%eax, 88(%esp)
	testl	%edx, %edx
	js	L2377
	movl	136(%esp), %eax
	movl	%eax, 112(%esp)
L2195:
	movl	60(%edi), %edx
	movl	12(%esp), %esi
	movl	104(%esp), %ecx
	movl	108(%esp), %ebx
	movl	(%edx,%esi), %eax
	xorl	4(%edx,%esi), %ebx
	xorl	%ecx, %eax
	orl	%ebx, %eax
	jne	L2377
	movl	72(%esp), %esi
	movl	112(%esp), %ecx
	movl	64(%edi), %eax
	movl	14(%ecx), %ecx
	leal	0(,%esi,4), %ebx
	cmpl	%ecx, (%eax,%esi,4)
	jne	L2377
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	leal	480(%edi), %eax
	movl	%eax, 104(%esp)
	movl	32(%esp), %esi
	movl	%edx, 80(%edi)
	movl	%ecx, 84(%edi)
	cmpl	%esi, 96(%edi)
	je	L2214
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	64(%edi), %eax
	movl	$2, 88(%edi)
	movl	%esi, 96(%edi)
	movl	(%eax,%ebx), %eax
	movl	$3, 88(%edi)
	movl	%eax, 92(%edi)
L2215:
	movl	120(%edi), %ebx
	leal	120(%edi), %edx
	testl	%ebx, %ebx
	je	L2216
	movl	$0, 128(%edi)
	movl	$0, 132(%edi)
	movl	$0, 148(%edi)
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	$0, 444(%edi)
	movl	$0, 448(%edi)
	movl	$0, 452(%edi)
	movl	$-1, 460(%edi)
	movl	$0, 464(%edi)
	movl	$0, 468(%edi)
	movl	$0, 472(%edi)
	movl	$0, 476(%edi)
	movl	%eax, 456(%edi)
L2216:
	movl	112(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 136(%esp)
	leal	136(%esp), %eax
	movl	%eax, 4(%esp)
	call	_ogg_stream_pagein
L2217:
	movl	68(%esp), %edx
	movl	64(%esp), %eax
	cmpl	80(%edi), %eax
	movl	%edx, %eax
	sbbl	84(%edi), %eax
	jl	L2238
	movl	$-1, %edx
	movl	%edi, %eax
	call	_ov_pcm_total
	movl	64(%esp), %ecx
	movl	68(%esp), %ebx
	cmpl	%ecx, %eax
	sbbl	%ebx, %edx
	jl	L2238
	xorl	%eax, %eax
	movl	%eax, 104(%edi)
	movl	%eax, 108(%edi)
	movl	%eax, 112(%edi)
	movl	%eax, 116(%edi)
	jmp	L2241
	.p2align 4,,10
	.p2align 3
L2389:
	movl	%ebx, %edi
L2377:
	leal	480(%edi), %eax
	movl	88(%esp), %edx
	movl	%eax, 104(%esp)
	jmp	L2196
L2378:
	movl	%eax, %edx
	leal	480(%ebx), %eax
	movl	%ebx, %edi
	movl	%eax, 104(%esp)
	jmp	L2196
L2305:
	xorl	%eax, %eax
	jmp	L2263
L2193:
	movl	$-1, 80(%edi)
	movl	$-1, 84(%edi)
	movl	%eax, 120(%esp)
	leal	480(%edi), %eax
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	120(%esp), %edx
	movl	$2, 88(%edi)
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	movl	%edx, %eax
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L2297:
	.cfi_restore_state
	movl	88(%esp), %eax
	movl	%ebx, 36(%esp)
	movl	%edx, 48(%esp)
	movl	%eax, 44(%esp)
	movl	128(%esp), %eax
	movl	%ecx, 52(%esp)
	movl	%eax, 40(%esp)
L2204:
	movl	104(%esp), %eax
	movl	108(%esp), %edx
	movl	$1, 56(%esp)
	movl	96(%esp), %ebx
	movl	100(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jl	L2208
	movl	76(%esp), %esi
	movl	36(%esp), %edi
	jmp	L2205
	.p2align 4,,10
	.p2align 3
L2383:
	movl	32(%esp), %eax
	movl	120(%esp), %ebx
	movl	%eax, 72(%esp)
	sall	$4, %eax
	movl	12(%ebx,%eax), %esi
	movl	8(%ebx,%eax), %ebx
	movl	%esi, 92(%esp)
	movl	%ebx, 88(%esp)
	jmp	L2190
	.p2align 4,,10
	.p2align 3
L2184:
	movl	$-131, %edx
	jmp	L2359
L2223:
	movl	60(%edi), %edx
	movl	12(%esp), %esi
	movl	44(%esp), %ecx
	movl	4(%edx,%esi), %eax
	cmpl	%ecx, (%edx,%esi)
	movl	40(%esp), %esi
	sbbl	%esi, %eax
	movl	%esi, %edx
	jge	L2234
	movl	%ebx, 128(%esp)
	movl	%ecx, %esi
	movl	%edi, 120(%esp)
	movl	%edx, %edi
L2233:
	movl	%esi, 88(%esp)
	movl	%edi, 92(%esp)
L2228:
	addl	$-65536, 88(%esp)
	movl	88(%esp), %ecx
	adcl	$-1, 92(%esp)
	movl	92(%esp), %ebx
	xorl	%eax, %eax
	cmpl	$0, %ecx
	movl	%ebx, %edx
	sbbl	%eax, %edx
	movl	$0, %edx
	cmovge	92(%esp), %eax
	cmovge	%ecx, %edx
	movl	%eax, 92(%esp)
	movl	120(%esp), %eax
	movl	%edx, 88(%esp)
	movl	92(%esp), %ecx
	movl	88(%esp), %edx
	call	__seek_helper.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L2365
	movl	$-1, 112(%esp)
	movl	$-1, 96(%esp)
	jmp	L2225
	.p2align 4,,10
	.p2align 3
L2227:
	movl	$0, 152(%esp)
	movl	%esi, %ecx
	movl	%edi, %ebx
	movl	$0, 156(%esp)
	subl	%eax, %ecx
	movl	120(%esp), %eax
	sbbl	%edx, %ebx
	movl	%ecx, (%esp)
	leal	152(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	$0, 160(%esp)
	movl	$0, 164(%esp)
	call	__get_next_page.lto_priv.0
	movl	%edx, %ebx
	movl	%eax, %ecx
	xorl	$-128, %eax
	notl	%ebx
	orl	%ebx, %eax
	je	L2300
	testl	%edx, %edx
	js	L2226
	movl	%ecx, 112(%esp)
	movl	%edx, 96(%esp)
L2225:
	movl	120(%esp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, %ebx
	cmpl	%esi, %eax
	sbbl	%edi, %ebx
	jl	L2227
L2226:
	movl	112(%esp), %eax
	movl	96(%esp), %ebx
	andl	%ebx, %eax
	cmpl	$-1, %eax
	je	L2228
	movl	156(%esp), %eax
	testl	%eax, %eax
	je	L2400
L2229:
	movl	152(%esp), %esi
	movl	120(%esp), %eax
	movl	14(%esi), %ebx
	cmpl	%ebx, 92(%eax)
	je	L2401
L2230:
	movl	120(%esp), %eax
	movl	12(%esp), %ebx
	movl	112(%esp), %ecx
	movl	60(%eax), %edx
	movl	4(%edx,%ebx), %eax
	cmpl	%ecx, (%edx,%ebx)
	movl	96(%esp), %ebx
	sbbl	%ebx, %eax
	jge	L2367
	movl	%ecx, %esi
	movl	%ebx, %edi
	jmp	L2233
L2300:
	movl	120(%esp), %edi
	movl	$-128, %edx
	jmp	L2196
L2368:
	movl	%ecx, 120(%esp)
	movl	%ebx, 124(%esp)
	jmp	L2251
L2298:
	movl	%edx, 16(%esp)
	movl	120(%esp), %eax
	movl	124(%esp), %edx
	movl	%ebx, 36(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, 96(%esp)
	movl	%edx, 100(%esp)
	jmp	L2204
L2388:
	movl	36(%esp), %edi
	movl	%eax, %edx
	leal	480(%edi), %eax
	movl	%eax, 104(%esp)
	jmp	L2196
L2292:
	movl	76(%esp), %esi
	movl	36(%esp), %edi
	movl	$0, 88(%esp)
	jmp	L2198
L2401:
	movl	%esi, %eax
	call	_ogg_page_granulepos.isra.0
	testl	%edx, %edx
	js	L2402
L2231:
	movl	120(%esp), %edi
	movl	112(%esp), %edx
	movl	96(%esp), %ecx
	movl	%edi, %eax
	call	_ov_raw_seek
	movl	%eax, %edx
	jmp	L2232
L2284:
	movl	$-1, %edx
	movl	%edi, %eax
	call	_ov_pcm_total
	movl	%eax, 120(%esp)
	movl	%edx, 124(%esp)
	movl	%eax, 80(%edi)
	movl	%edx, 84(%edi)
	jmp	L2283
L2238:
	movl	$-1, 80(%edi)
	movl	104(%esp), %eax
	movl	$-1, 84(%edi)
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%edi)
L2240:
	movl	$-129, %edx
	jmp	L2359
L2304:
	movl	$-1, %eax
	jmp	L2250
L2289:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-138, %edx
L2372:
	movl	%edx, %eax
	ret
L2402:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	$1, 5(%esi)
	jne	L2230
	jmp	L2231
L2365:
	movl	120(%esp), %edi
	jmp	L2196
L2391:
	movl	%eax, %edx
	jmp	L2196
L2367:
	movl	128(%esp), %ebx
	movl	120(%esp), %edi
	jmp	L2235
L2400:
	movl	%ebx, %ecx
	movl	120(%esp), %ebx
	movl	112(%esp), %edx
	movl	%ebx, %eax
	call	__seek_helper.lto_priv.0
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L2365
	xorl	%eax, %eax
	movl	$65536, (%esp)
	leal	152(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	jns	L2229
	movl	120(%esp), %edi
	movl	$-129, %edx
	jmp	L2196
	.p2align 4,,10
	.p2align 3
L2220:
	call	_vorbis_synthesis_restart.isra.0
	movl	92(%edi), %eax
	jmp	L2221
L2214:
	movl	104(%esp), %eax
	call	_vorbis_synthesis_restart.isra.0
	movl	92(%edi), %eax
	jmp	L2215
L2371:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-131, %edx
	jmp	L2372
L2387:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$-1, 80(%edi)
	leal	480(%edi), %eax
	movl	$-1, 84(%edi)
	call	_vorbis_dsp_clear
	leal	592(%edi), %eax
	call	_vorbis_block_clear.isra.0
	movl	$2, 88(%edi)
	jmp	L2240
L2390:
	cmpl	$-1, 44(%esp)
	jne	L2209
	cmpl	$0, 56(%esp)
	jne	L2195
	jmp	L2377
L2392:
	movl	96(%edi), %ecx
	sall	$4, %ecx
	addl	68(%edi), %ecx
	subl	(%ecx), %eax
	sbbl	4(%ecx), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	%edx, %esi
	cmpl	%ebx, %eax
	sbbl	%ecx, %esi
	cmovl	%ecx, %edx
	cmovl	%ebx, %eax
	addl	24(%esp), %eax
	adcl	28(%esp), %edx
	movl	%eax, 80(%edi)
	movl	%edx, 84(%edi)
	jmp	L2217
L2303:
	movl	$-136, %edx
	jmp	L2196
	.cfi_endproc
LFE229:
	.section .rdata,"dr"
	.align 4
LC52:
	.ascii "MV_GetNextVorbisBlock: bad rawdataptr!\0"
	.align 4
LC53:
	.ascii "source/audiolib/src/vorbis.cpp\0"
	.align 4
LC55:
	.ascii "MV_GetNextVorbisBlock: error %d in ov_pcm_seek (LOOP_START %I64i, LOOP_END %I64i)\0"
	.align 4
LC56:
	.ascii "MV_GetNextVorbisBlock: error %d in ov_pcm_seek (LOOP_START %I64i)\0"
	.align 4
LC57:
	.ascii "MV_GetNextVorbisBlock: error %d in ov_read\0"
LC58:
	.ascii "libdivide_internal_u32_gen\0"
	.text
	.p2align 4
	.def	__ZL21MV_GetNextVorbisBlockP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL21MV_GetNextVorbisBlockP9VoiceNode:
LFB236:
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
	subl	$164, %esp
	movl	(%ecx), %eax
	movl	$0, -76(%ebp)
	movl	20(%eax), %ebx
	movl	%eax, -56(%ebp)
	leal	16(%ebx), %eax
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %esi
	testl	%ebx, %ebx
	je	L2496
	.p2align 4
	.p2align 3
L2430:
	movl	104(%ebx), %eax
	cmpl	$1, %eax
	jg	L2412
	jmp	L2406
	.p2align 4,,10
	.p2align 3
L2407:
	movl	%esi, %eax
	call	__fetch_and_process_packet.constprop.0
	cmpl	$-2, %eax
	je	L2410
	cmpl	$1, %eax
	jne	L2411
	movl	104(%ebx), %eax
L2412:
	cmpl	$4, %eax
	jne	L2407
	movl	520(%ebx), %edx
	testl	%edx, %edx
	js	L2407
	movl	516(%ebx), %ecx
	cmpl	%ecx, %edx
	jge	L2407
	movl	500(%ebx), %edi
	movl	4(%edi), %eax
	testl	%eax, %eax
	jle	L2497
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2408:
	movl	504(%ebx), %ecx
	movl	(%ecx,%eax,4), %ecx
	leal	(%ecx,%edx,4), %edx
	movl	508(%ebx), %ecx
	movl	%edx, (%ecx,%eax,4)
	addl	$1, %eax
	movl	520(%ebx), %edx
	cmpl	4(%edi), %eax
	jl	L2408
	movl	516(%ebx), %eax
	subl	%edx, %eax
	je	L2407
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jle	L2498
L2413:
	movl	20(%ebx), %edi
	movl	88(%ebx), %eax
	testl	%edi, %edi
	je	L2417
	cmpl	$2, 104(%ebx)
	jg	L2499
L2417:
	movl	4(%eax), %edi
	leal	-1(%edi), %eax
	cmpl	$254, %eax
	ja	L2406
	leal	(%edi,%edi), %edx
	movl	$512, %eax
	subl	-76(%ebp), %eax
	movl	%edi, -48(%ebp)
	movl	%edx, -88(%ebp)
	cltd
	idivl	-88(%ebp)
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	movl	%ecx, -80(%ebp)
	testl	%ecx, %ecx
	je	L2406
/APP
 # 4405 "source/audiolib/src/minivorbis.h" 1
	fnstcw -22(%ebp)
	movw -22(%ebp),%dx
	andw $62463,%dx
	movw %dx,-20(%ebp)
	fldcw -20(%ebp)
	
 # 0 "" 2
/NO_APP
	movl	-76(%ebp), %eax
	movl	508(%ebx), %edi
	movl	%ebx, -100(%ebp)
	movzwl	-22(%ebp), %edx
	movl	%esi, -96(%ebp)
	leal	736(%ebx,%eax), %eax
	movl	-88(%ebp), %esi
	movl	%eax, -52(%ebp)
	movl	-48(%ebp), %eax
	movw	%dx, -112(%ebp)
	leal	(%edi,%eax,4), %eax
	movl	%eax, -72(%ebp)
	leal	0(,%ecx,4), %eax
	movl	%eax, -68(%ebp)
	movl	-52(%ebp), %eax
	.p2align 4
	.p2align 3
L2420:
	movl	(%edi), %edx
	movl	-68(%ebp), %ebx
	movl	%edi, -52(%ebp)
	movl	%eax, %ecx
	movl	%eax, -64(%ebp)
	addl	%edx, %ebx
	.p2align 4
	.p2align 3
L2419:
	movss	(%edx), %xmm0
	movl	$-32768, %eax
	mulss	LC54, %xmm0
	movss	%xmm0, -48(%ebp)
	flds	-48(%ebp)
/APP
 # 4422 "source/audiolib/src/minivorbis.h" 1
	fistl -20(%ebp)
 # 0 "" 2
/NO_APP
	fstp	%st(0)
	movl	-20(%ebp), %edi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	$32767, %edi
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	addl	$4, %edx
	movw	%ax, (%ecx)
	addl	%esi, %ecx
	cmpl	%ebx, %edx
	jne	L2419
	movl	-52(%ebp), %edi
	movl	-64(%ebp), %eax
	addl	$4, %edi
	addl	$2, %eax
	cmpl	-72(%ebp), %edi
	jne	L2420
	movzwl	-112(%ebp), %edx
	movl	-96(%ebp), %esi
	movl	-100(%ebp), %ebx
	movw	%dx, -20(%ebp)
/APP
 # 4414 "source/audiolib/src/minivorbis.h" 1
	fldcw -20(%ebp)
 # 0 "" 2
/NO_APP
	movl	-80(%ebp), %eax
	addl	520(%ebx), %eax
	cmpl	516(%ebx), %eax
	jg	L2421
	movl	%eax, 520(%ebx)
L2421:
	movl	88(%ebx), %eax
	movl	-80(%ebp), %edi
	movl	28(%eax), %eax
	movl	3656(%eax), %ecx
	movl	%edi, %eax
	sall	%cl, %eax
	movl	112(%ebx), %ecx
	cltd
	addl	96(%ebx), %eax
	adcl	100(%ebx), %edx
	movl	%ecx, -52(%ebp)
	movl	-88(%ebp), %ecx
	movl	%eax, 96(%ebx)
	imull	%edi, %ecx
	movl	-56(%ebp), %edi
	addl	%ecx, -76(%ebp)
	movl	%edx, 100(%ebx)
	movl	32(%edi), %ecx
	testl	%ecx, %ecx
	jle	L2424
	cmpl	$1, 104(%ebx)
	jle	L2424
	movl	%ecx, %edi
	movl	%ecx, -48(%ebp)
	sarl	$31, %edi
	cmpl	%ecx, %eax
	movl	%edi, -44(%ebp)
	movl	%edx, %edi
	sbbl	-44(%ebp), %edi
	jge	L2500
L2424:
	cmpl	$511, -76(%ebp)
	jle	L2430
L2429:
	movl	-52(%ebp), %eax
	cmpl	%eax, 1248(%ebx)
	je	L2501
	movl	20(%ebx), %edi
	movl	88(%ebx), %eax
	testl	%edi, %edi
	je	L2435
	cmpl	$2, 104(%ebx)
	jg	L2502
L2435:
	testl	%eax, %eax
	je	L2405
	movl	4(%eax), %edx
	leal	-1(%edx), %ecx
	cmpl	$1, %ecx
	jbe	L2503
L2405:
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
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
L2410:
	.cfi_restore_state
	movl	-56(%ebp), %eax
	movl	40(%eax), %edx
	testl	%edx, %edx
	je	L2426
	movl	28(%eax), %edx
	movl	%esi, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	call	_ov_pcm_seek
	movl	%eax, %edx
	testl	%eax, %eax
	je	L2430
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L2430
	movl	-56(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 16(%esp)
	movl	$LC56, 12(%esp)
	movl	%eax, 20(%esp)
	sarl	$31, %eax
	movl	%eax, 24(%esp)
	movl	$261, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2430
	.p2align 4,,10
	.p2align 3
L2411:
	cmpl	$-3, %eax
	je	L2430
	movl	%eax, %esi
	jmp	L2415
	.p2align 4,,10
	.p2align 3
L2497:
	subl	%edx, %ecx
	testl	%ecx, %ecx
	jg	L2413
L2498:
	cmpl	$-3, %ecx
	je	L2430
	movl	%ecx, %esi
L2415:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2504
L2428:
	movl	-56(%ebp), %eax
	movl	$0, 20(%eax)
	movl	$0, 84(%eax)
	movl	-120(%ebp), %eax
	call	_ov_clear.part.0
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2405
L2500:
	movl	-56(%ebp), %edi
	subl	-48(%ebp), %eax
	imull	72(%edi), %eax
	addl	%eax, %eax
	subl	%eax, -76(%ebp)
	movl	28(%edi), %eax
	cltd
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%esi, %eax
	call	_ov_pcm_seek
	testl	%eax, %eax
	je	L2424
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L2424
	movl	-56(%ebp), %edi
	movl	32(%edi), %edx
	movl	%edx, 28(%esp)
	sarl	$31, %edx
	movl	%edx, 32(%esp)
	movl	28(%edi), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	sarl	$31, %edx
	movl	%edx, 24(%esp)
	movl	$LC55, 12(%esp)
	movl	$245, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2424
L2499:
	movl	112(%ebx), %edx
	sall	$5, %edx
	addl	%edx, %eax
	jmp	L2417
L2426:
	movl	-76(%ebp), %eax
	testl	%eax, %eax
	je	L2405
	jmp	L2429
	.p2align 4,,10
	.p2align 3
L2502:
	movl	112(%ebx), %edx
	sall	$5, %edx
	addl	%edx, %eax
	jmp	L2435
L2503:
	movl	-56(%ebp), %esi
	movl	%edx, 72(%esi)
	movl	8(%eax), %eax
	movl	%eax, 100(%esi)
	movl	88(%esi), %esi
	movl	%eax, -72(%ebp)
	movl	_MV_MixRate, %eax
	movl	%esi, -88(%ebp)
	cltd
	movl	%eax, %esi
	movl	%eax, -104(%ebp)
	movl	%edx, %edi
	movl	%eax, -64(%ebp)
	movl	__ZZ9divideu64E5lastd.lto_priv.2, %eax
	movl	%edx, -60(%ebp)
	movl	__ZZ9divideu64E5lastd.lto_priv.2+4, %edx
	xorl	%esi, %eax
	xorl	%edi, %edx
	orl	%edx, %eax
	je	L2505
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%esi, %eax
	movl	%esi, __ZZ9divideu64E5lastd.lto_priv.2
	orl	%edi, %eax
	movl	%edi, __ZZ9divideu64E5lastd.lto_priv.2+4
	je	L2506
	movl	-60(%ebp), %edx
	testl	%edx, %edx
	je	L2440
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, -100(%ebp)
L2441:
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	$63, %eax
	subl	-100(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	%eax, %ecx
	movl	%edi, %edx
	movb	%al, -68(%ebp)
	movl	%esi, %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%eax, %esi
	andl	%edx, %edi
	movl	%esi, %eax
	orl	%edi, %eax
	jne	L2442
	movl	-88(%ebp), %eax
	mull	-72(%ebp)
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2+4
	movb	%cl, __ZZ9divideu64E4udiv.lto_priv.2+8
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
L2443:
	movzbl	-68(%ebp), %ecx
	movl	-44(%ebp), %edi
	movl	-48(%ebp), %esi
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	andl	$32, %ecx
	cmovne	%edi, %esi
L2456:
	movl	%esi, %eax
	movl	-56(%ebp), %ecx
	sall	$8, %eax
	subl	%esi, %eax
	movl	%esi, 104(%ecx)
	movl	%ecx, %edi
	movl	%eax, 92(%ecx)
	movl	-52(%ebp), %eax
	movl	%eax, 1248(%ebx)
	movl	68(%ecx), %edx
	xorl	%eax, %eax
	movl	72(%ecx), %ecx
	cmpl	$2, %ecx
	sete	%al
	leal	0(,%eax,4), %esi
	xorl	%eax, %eax
	cmpl	$16, %edx
	sete	%al
	addl	%eax, %eax
	orl	%esi, %eax
	movl	%eax, -48(%ebp)
	xorl	%eax, %eax
	cmpl	$1, _MV_Channels
	sete	%al
	movl	%eax, %esi
	movl	-48(%ebp), %eax
	orl	%esi, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%edi)
	jmp	L2433
L2504:
	movl	%esi, 16(%esp)
	movl	$LC57, 12(%esp)
	movl	$274, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2428
L2406:
	movl	$-131, %esi
	jmp	L2415
L2501:
	movl	-56(%ebp), %eax
	movl	68(%eax), %edx
	movl	72(%eax), %ecx
L2433:
	sarl	$3, %edx
	movl	%edx, %edi
	imull	%ecx, %edi
	cmpl	__ZZ9divideu32E5lastd, %edi
	je	L2507
	movl	%edi, __ZZ9divideu32E5lastd
	testl	%edi, %edi
	je	L2508
	bsrl	%edi, %ecx
	leal	-1(%edi), %eax
	movl	%ecx, %esi
	testl	%edi, %eax
	jne	L2461
	movl	$0, __ZZ9divideu32E4udiv
	movb	%cl, __ZZ9divideu32E4udiv+4
L2462:
	movl	-76(%ebp), %eax
	movl	%esi, %ecx
	shrl	%cl, %eax
L2465:
	movl	-56(%ebp), %esi
	leal	736(%ebx), %edx
	sall	$16, %eax
	movl	%eax, 96(%esi)
	movl	$1, %eax
	movl	$0, 108(%esi)
	movl	%edx, 16(%esi)
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
L2496:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2405
	movl	$LC52, 12(%esp)
	movl	$219, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2405
L2507:
	movzbl	__ZZ9divideu32E4udiv+4, %esi
	movl	__ZZ9divideu32E4udiv, %edx
L2459:
	testl	%edx, %edx
	je	L2462
	movl	-76(%ebp), %eax
	movl	%esi, %ecx
	mull	%edx
	movl	%edx, %eax
	shrl	%cl, %eax
	movl	-76(%ebp), %ecx
	subl	%edx, %ecx
	shrl	%ecx
	addl	%ecx, %edx
	movl	%esi, %ecx
	shrl	%cl, %edx
	andl	$64, %esi
	cmovne	%edx, %eax
	jmp	L2465
L2461:
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movl	%edx, -64(%ebp)
/APP
 # 477 "source/build/include/libdivide.h" 1
	divl %edi
 # 0 "" 2
/NO_APP
	movl	%eax, -48(%ebp)
	movl	%edi, %eax
	movl	%edx, -52(%ebp)
	subl	%edx, %eax
	cmpl	-64(%ebp), %eax
	jnb	L2509
L2463:
	movl	-48(%ebp), %edx
	movl	%esi, %eax
	movb	%al, __ZZ9divideu32E4udiv+4
	addl	$1, %edx
	movl	%edx, __ZZ9divideu32E4udiv
	jmp	L2459
L2509:
	movl	-52(%ebp), %edx
	leal	(%edx,%edx), %esi
	cmpl	%edi, %esi
	setnb	%al
	cmpl	%edx, %esi
	movl	-48(%ebp), %esi
	setb	%dl
	orl	%edx, %eax
	movzbl	%al, %eax
	leal	(%eax,%esi,2), %eax
	movl	%ecx, %esi
	movl	%eax, -48(%ebp)
	orl	$64, %esi
	jmp	L2463
L2440:
	bsrl	-64(%ebp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, -100(%ebp)
	jmp	L2441
L2505:
	movzbl	__ZZ9divideu64E4udiv.lto_priv.2+8, %eax
	movl	__ZZ9divideu64E4udiv.lto_priv.2+4, %edx
	movb	%al, -68(%ebp)
	movl	__ZZ9divideu64E4udiv.lto_priv.2, %eax
	movl	%edx, -60(%ebp)
	movl	%eax, -64(%ebp)
L2438:
	movl	-72(%ebp), %eax
	mull	-88(%ebp)
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %edi
	movl	%eax, -48(%ebp)
	movl	%esi, %eax
	orl	%edi, %eax
	movl	%edx, -44(%ebp)
	je	L2443
L2455:
	movl	-60(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	%eax, -72(%ebp)
	movl	-48(%ebp), %eax
	mull	-64(%ebp)
	movl	-72(%ebp), %eax
	movl	%edx, %edi
	mull	-48(%ebp)
	addl	%edi, %eax
	adcl	$0, %edx
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
	mull	-64(%ebp)
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	xorl	%edi, %edi
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -88(%ebp)
	movl	-72(%ebp), %eax
	movl	%edx, -84(%ebp)
	mull	%ecx
	movzbl	-68(%ebp), %ecx
	movl	%edx, %edi
	movl	-60(%ebp), %edx
	movl	%eax, %esi
	movl	%edx, %eax
	xorl	%edx, %edx
	addl	%esi, %eax
	movl	-88(%ebp), %esi
	adcl	%edi, %edx
	movl	-84(%ebp), %edi
	addl	%eax, %esi
	adcl	%edx, %edi
	testb	$64, %cl
	je	L2457
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	subl	%esi, %eax
	sbbl	%edi, %edx
	shrdl	$1, %edx, %eax
	shrl	%edx
	addl	%eax, %esi
	adcl	%edx, %edi
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	andl	$32, %ecx
	cmovne	%edi, %esi
	jmp	L2456
L2442:
	movzbl	-80(%ebp), %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%esi, %eax
	cmpl	-104(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%edx, %eax
	sbbl	-60(%ebp), %eax
	movl	%edx, -108(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	jnc	L2510
	movzbl	-100(%ebp), %ecx
	xorl	%esi, %esi
	movl	-108(%ebp), %edi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%esi, %eax
	movl	-112(%ebp), %esi
	shldl	%cl, %esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	je	L2511
	movl	%esi, %edi
	xorl	%esi, %esi
L2511:
	movl	%edx, -44(%ebp)
	movl	-44(%ebp), %ecx
	movl	%eax, -48(%ebp)
	leal	-32(%ebp), %eax
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	movl	%ecx, -144(%ebp)
	movl	%ecx, 8(%esp)
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	call	___udivmoddi4
	movl	-48(%ebp), %ecx
	movl	%eax, %esi
	movl	%eax, -136(%ebp)
	movl	%eax, -120(%ebp)
	movl	-48(%ebp), %eax
	imull	%edx, %ecx
	movl	%edx, -132(%ebp)
	movl	%edx, -116(%ebp)
	mull	%esi
	movl	%edx, -92(%ebp)
	movl	-32(%ebp), %edx
	addl	%ecx, -92(%ebp)
	movl	-92(%ebp), %edi
	movl	%eax, -96(%ebp)
	movl	%edx, %ecx
	xorl	%eax, %eax
	cmpl	-96(%ebp), %eax
	sbbl	%edi, %ecx
	movl	-96(%ebp), %esi
	jnc	L2446
	subl	%eax, %esi
	movl	-48(%ebp), %eax
	sbbl	%edx, %edi
	movl	-44(%ebp), %edx
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	cmpl	-96(%ebp), %eax
	movl	%edx, %eax
	sbbl	-92(%ebp), %eax
	movl	$0, %edx
	movl	$1, %eax
	jnc	L2447
	movl	$2, %eax
	xorl	%edx, %edx
L2447:
	movl	-136(%ebp), %esi
	movl	-132(%ebp), %edi
	subl	%eax, %esi
	sbbl	%edx, %edi
	movl	%esi, -120(%ebp)
	movl	%edi, -116(%ebp)
L2446:
	movl	-128(%ebp), %esi
	movl	-120(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	%esi, %edi
	xorl	%esi, %esi
	imull	%eax, %ecx
	movl	%esi, -96(%ebp)
	movl	-96(%ebp), %esi
	mull	-48(%ebp)
	movl	%edi, -92(%ebp)
	movl	-92(%ebp), %edi
	addl	%ecx, %edx
	subl	%eax, %esi
	leal	-40(%ebp), %eax
	sbbl	%edx, %edi
	movl	%esi, -136(%ebp)
	movl	%edi, -132(%ebp)
	movl	%eax, 16(%esp)
	movl	-144(%ebp), %edx
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$0, 12(%esp)
	call	___udivmoddi4
	movl	-48(%ebp), %ecx
	movl	%eax, %esi
	movl	%eax, -144(%ebp)
	movl	%eax, -96(%ebp)
	movl	-48(%ebp), %eax
	imull	%edx, %ecx
	movl	%edx, -140(%ebp)
	mull	%esi
	movl	%edx, -124(%ebp)
	movl	-40(%ebp), %edx
	addl	%ecx, -124(%ebp)
	movl	-124(%ebp), %edi
	movl	%eax, -128(%ebp)
	movl	%edx, %ecx
	xorl	%eax, %eax
	cmpl	-128(%ebp), %eax
	sbbl	%edi, %ecx
	movl	-128(%ebp), %esi
	jnc	L2448
	subl	%eax, %esi
	movl	-48(%ebp), %eax
	sbbl	%edx, %edi
	movl	-44(%ebp), %edx
	movl	%esi, -96(%ebp)
	movl	%edi, -92(%ebp)
	cmpl	-96(%ebp), %eax
	movl	%edx, %eax
	sbbl	-92(%ebp), %eax
	movl	$1, %eax
	jnc	L2449
	movl	$2, %eax
L2449:
	movl	-144(%ebp), %esi
	subl	%eax, %esi
	movl	%esi, -96(%ebp)
L2448:
	movl	-96(%ebp), %esi
	movl	-96(%ebp), %edx
	xorl	%edi, %edi
	movl	-44(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	%edi, -124(%ebp)
	movl	%esi, -128(%ebp)
	movl	-136(%ebp), %esi
	imull	%edx, %ecx
	mull	%edx
	movl	%esi, %edi
	xorl	%esi, %esi
	addl	%ecx, %edx
	subl	%eax, %esi
	movzbl	-100(%ebp), %ecx
	sbbl	%edx, %edi
	xorl	%eax, %eax
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	testb	$32, %cl
	cmovne	%edi, %esi
	cmovne	%eax, %edi
	movl	%esi, %edx
	movl	%esi, -48(%ebp)
	movl	-120(%ebp), %esi
	movl	%edi, %ecx
	movl	%edi, -44(%ebp)
	movl	%esi, %edi
	movl	-128(%ebp), %esi
	orl	-124(%ebp), %edi
	movl	%edi, -92(%ebp)
	movl	-60(%ebp), %edi
	movl	%esi, -96(%ebp)
	movl	-64(%ebp), %esi
	subl	%edx, %esi
	sbbl	%ecx, %edi
	movl	%esi, %eax
	movl	-112(%ebp), %esi
	movl	%edi, %edx
	movl	-108(%ebp), %edi
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jnc	L2450
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
L2451:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%eax, __ZZ9divideu64E4udiv.lto_priv.2
	movzbl	-68(%ebp), %eax
	movl	%edx, __ZZ9divideu64E4udiv.lto_priv.2+4
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.2+8
	jmp	L2438
L2457:
	movzbl	-68(%ebp), %ecx
	shrdl	%cl, %edi, %esi
	shrl	%cl, %edi
	andl	$32, %ecx
	cmovne	%edi, %esi
	jmp	L2456
L2510:
	addl	$1, %eax
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	adcl	$0, %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jc	L2445
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2
	movzbl	-80(%ebp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2+4
	orl	$64, %eax
	movb	%al, -68(%ebp)
L2495:
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.2+8
	movl	-88(%ebp), %eax
	mull	-72(%ebp)
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	jmp	L2443
L2450:
	movl	-96(%ebp), %esi
	movl	-92(%ebp), %edi
	addl	%esi, %esi
	adcl	%edi, %edi
	movl	%esi, %edx
	movl	-48(%ebp), %esi
	movl	%edi, %ecx
	movl	-44(%ebp), %edi
	addl	%esi, %esi
	adcl	%edi, %edi
	cmpl	-104(%ebp), %esi
	movl	%edi, %eax
	sbbl	-60(%ebp), %eax
	jnc	L2452
	cmpl	-48(%ebp), %esi
	movl	%edi, %eax
	sbbl	-44(%ebp), %eax
	jc	L2452
	movl	%edx, %esi
	movzbl	-80(%ebp), %eax
	movl	%ecx, %edi
	addl	$1, %esi
	adcl	$0, %edi
	orl	$64, %eax
	movl	%esi, -64(%ebp)
	movb	%al, -68(%ebp)
	movb	%al, __ZZ9divideu64E4udiv.lto_priv.2+8
	movl	-72(%ebp), %eax
	mull	-88(%ebp)
	movl	%edi, -60(%ebp)
	movl	%esi, __ZZ9divideu64E4udiv.lto_priv.2
	movl	%edi, __ZZ9divideu64E4udiv.lto_priv.2+4
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
	jmp	L2455
L2452:
	movzbl	-80(%ebp), %eax
	movl	%edx, %esi
	movl	%ecx, %edi
	addl	$2, %esi
	adcl	$0, %edi
	orl	$64, %eax
	movl	%esi, -64(%ebp)
	movl	%edi, -60(%ebp)
	movb	%al, -68(%ebp)
	jmp	L2451
L2506:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC1, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
L2508:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC1, 16(%esp)
	movl	$LC58, 12(%esp)
	movl	$872, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.p2align 4,,10
	.p2align 3
L2445:
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2
	movzbl	-80(%ebp), %eax
	movl	$0, __ZZ9divideu64E4udiv.lto_priv.2+4
	jmp	L2495
	.cfi_endproc
LFE236:
	.section .rdata,"dr"
LC59:
	.ascii "MV_PlayVorbis\0"
	.align 4
LC60:
	.ascii "MV_PlayVorbis: unsupported subformat: channels = %d\0"
LC61:
	.ascii "MV_PlayVorbis: bad ov_info\0"
	.align 4
LC62:
	.ascii "MV_PlayVorbis: error %d in ov_open_callbacks\0"
LC63:
	.ascii "LOOP_END\0"
LC64:
	.ascii "LOOPEND\0"
LC65:
	.ascii "LOOP_LENGTH\0"
LC66:
	.ascii "LOOPLENGTH\0"
	.align 4
LC67:
	.ascii "MV_GetVorbisCommentLoops: loop start is beyond end of data\0"
	.align 4
LC68:
	.ascii "MV_GetVorbisCommentLoops: loop end is beyond end of data\0"
	.align 4
LC69:
	.ascii "MV_GetVorbisCommentLoops: loop length is zero\0"
	.text
	.p2align 4
	.def	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE3runEPNS0_9task_baseE;	.scl	3;	.type	32;	.endef
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE3runEPNS0_9task_baseE:
LFB248:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
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
	subl	$144, %esp
	movl	(%ecx), %esi
	movl	%esi, -40(%ebp)
	movl	$-1, 12(%esp)
	movl	$LC59, 8(%esp)
	movl	$9, 4(%esp)
	movl	$__ZZN6loguru18thread_name_bufferEvE11thread_name.lto_priv.0, (%esp)
	call	*__imp__strncpy_s
	movl	20(%esi), %eax
	movl	20(%eax), %ebx
	testl	%ebx, %ebx
	je	L2638
	movl	8(%ebx), %esi
	movl	4(%ebx), %eax
	movl	$__ZL11tell_vorbisPv, -44(%ebp)
	leal	16(%ebx), %edx
	movss	LC70, %xmm1
	movss	-44(%ebp), %xmm0
	movl	$__ZL11seek_vorbisPvxi, -44(%ebp)
	movss	-44(%ebp), %xmm2
	movl	%edx, -44(%ebp)
	unpcklps	%xmm0, %xmm1
	movss	LC71, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -72(%ebp)
	cmpl	%esi, %eax
	jnb	L2515
	movl	%eax, 8(%ebx)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$720, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
	movups	-72(%ebp), %xmm0
	movl	%ebx, 16(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 56(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movups	%xmm0, 720(%ebx)
L2516:
	movl	$1, 20(%ebx)
L2517:
	movl	$1, 68(%ebx)
	movl	$32, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2518
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	68(%ebx), %esi
	movl	%eax, 88(%ebx)
	sall	$4, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2639
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	136(%ebx), %eax
	movl	%edi, 92(%ebx)
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	_ogg_stream_init
	leal	-32(%ebp), %eax
	movl	92(%ebx), %ecx
	movl	88(%ebx), %edx
	movl	$0, 8(%esp)
	movl	%eax, -48(%ebp)
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	movl	-44(%ebp), %eax
	call	__fetch_headers.lto_priv.0
	movl	%eax, -72(%ebp)
	testl	%eax, %eax
	jne	L2521
	movl	-32(%ebp), %edi
	leal	8(,%edi,4), %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2525
	movl	%esi, 8(%esp)
	subl	$8, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -56(%ebp)
	call	_memset
	movl	472(%ebx), %eax
	movl	-56(%ebp), %edx
	movl	%eax, 108(%ebx)
	movl	%edx, 80(%ebx)
	movl	%eax, (%edx)
	movl	80(%ebx), %eax
	movl	%edi, 4(%eax)
	movl	80(%ebx), %eax
	movl	-36(%ebp), %edi
	movl	%esi, 8(%esp)
	addl	$8, %eax
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2527
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%eax, 72(%ebx)
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2527
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%eax, 76(%ebx)
	movl	72(%ebx), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	76(%ebx), %eax
	movl	24(%ebx), %edx
	movl	28(%ebx), %ecx
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	$1, 104(%ebx)
	testl	%edi, %edi
	je	L2530
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpl	$1, 104(%ebx)
	jne	L2584
L2530:
	movl	20(%ebx), %eax
	movl	$2, 104(%ebx)
	testl	%eax, %eax
	jne	L2640
	movl	$3, 104(%ebx)
L2543:
	movl	88(%ebx), %eax
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	testl	%eax, %eax
	je	L2544
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	L2547
	cmpl	$2, %eax
	jg	L2547
	movl	-40(%ebp), %ecx
	movl	20(%ecx), %edx
	movl	%eax, 72(%edx)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L2553
	movl	68(%ebx), %eax
	testl	%eax, %eax
	jle	L2641
L2553:
	movl	-40(%ebp), %eax
	movl	92(%ebx), %ecx
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	testl	%ecx, %ecx
	je	L2554
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jle	L2556
	movl	$0, -100(%ebp)
	xorl	%edi, %edi
	movl	%ecx, %esi
	movl	$0, -92(%ebp)
	movl	$0, -96(%ebp)
	movl	%ebx, -88(%ebp)
	jmp	L2567
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2558:
	addl	$1, %edi
	cmpl	8(%esi), %edi
	jge	L2642
L2567:
	movl	(%esi), %eax
	movl	(%eax,%edi,4), %ebx
	testl	%ebx, %ebx
	je	L2558
	cmpb	$0, (%ebx)
	je	L2558
	movl	$61, 4(%esp)
	movl	%ebx, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L2558
	movl	%eax, %ecx
	addl	$1, %eax
	movl	%eax, -80(%ebp)
	movl	-96(%ebp), %eax
	subl	%ebx, %ecx
	testl	%eax, %eax
	jne	L2562
	movl	%esi, -104(%ebp)
	movl	$10, %eax
	movl	%ecx, %esi
	movl	%edi, -108(%ebp)
	xorl	%edi, %edi
	cmpl	%eax, %esi
	je	L2643
	.p2align 4
	.p2align 3
L2561:
	addl	$1, %edi
	cmpl	$3, %edi
	je	L2634
	movl	_loopStartTags(,%edi,4), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	%eax, %esi
	jne	L2561
L2643:
	movl	_loopStartTags(,%edi,4), %eax
	movl	%esi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strncasecmp
	testl	%eax, %eax
	jne	L2561
	movl	-80(%ebp), %eax
	movl	%esi, %ecx
	movl	-108(%ebp), %edi
	movl	-104(%ebp), %esi
	movl	%eax, -96(%ebp)
L2562:
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	jne	L2564
	cmpl	$8, %ecx
	je	L2644
	cmpl	$7, %ecx
	je	L2645
L2564:
	movl	-100(%ebp), %edx
	testl	%edx, %edx
	jne	L2558
	cmpl	$11, %ecx
	je	L2646
	cmpl	$10, %ecx
	jne	L2589
	movl	$10, 8(%esp)
	movl	$LC66, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	movl	-100(%ebp), %eax
	cmove	-80(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2558
	.p2align 4,,10
	.p2align 3
L2515:
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$720, 8(%esp)
	movl	$0, 4(%esp)
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
	movups	-72(%ebp), %xmm0
	movl	%ebx, 16(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 56(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movups	%xmm0, 720(%ebx)
	cmpl	$-1, %esi
	jne	L2516
	jmp	L2517
	.p2align 4,,10
	.p2align 3
L2521:
	movl	$0, 16(%ebx)
	movl	-44(%ebp), %eax
	call	_ov_clear.part.0
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	L2532
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2532:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2647
L2551:
	movl	-40(%ebp), %esi
	movl	20(%esi), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	20(%esi), %eax
	subl	$4, %esp
	movl	$0, 20(%eax)
	movl	20(%esi), %eax
	movl	$0, 84(%eax)
	movl	20(%esi), %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	movl	$5, _MV_ErrorCode
L2552:
	movl	$-1, -72(%ebp)
	jmp	L2514
	.p2align 4,,10
	.p2align 3
L2642:
	movl	-44(%ebp), %eax
	movl	-88(%ebp), %ebx
	movl	20(%eax), %edi
	cmpl	$1, 104(%edi)
	jle	L2570
	movl	20(%edi), %eax
	testl	%eax, %eax
	jne	L2648
L2570:
	movl	-96(%ebp), %edx
	testl	%edx, %edx
	je	L2649
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	$-131, -80(%ebp)
	movl	$-1, -76(%ebp)
	.p2align 4
	.p2align 3
L2574:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	$-1, %edx
	jl	L2573
	movl	$LC67, 12(%esp)
	movl	$109, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	.p2align 4
	.p2align 3
L2573:
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L2578
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	jne	L2575
L2637:
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
L2554:
	movl	-56(%ebp), %edx
	movl	-44(%ebp), %edi
	movl	1248(%ebx), %eax
	movl	8(%edx), %esi
	movl	%esi, 100(%edi)
	call	__Z14PITCH_GetScalei
	movl	_MV_MixRate, %ecx
	movl	%eax, 88(%edi)
	movl	%eax, %edx
	movl	%esi, %eax
	movl	%ecx, (%esp)
	sarl	$31, %ecx
	mull	%edx
	movl	%ecx, 4(%esp)
	call	_divideu64.lto_priv.0
	movl	%eax, 104(%edi)
	movl	%eax, %edx
	sall	$8, %eax
	subl	%edx, %eax
	movl	%eax, 92(%edi)
	movl	-40(%ebp), %eax
	movl	$-1, 1248(%ebx)
	movl	20(%eax), %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
L2514:
	movl	-40(%ebp), %eax
	movl	-72(%ebp), %ecx
	movl	%ecx, 16(%eax)
	leal	8(%eax), %ecx
	movb	$3, 4(%eax)
	movl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_
	subl	$4, %esp
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
L2648:
	.cfi_restore_state
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	js	L2570
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	je	L2571
	addl	$16, %edi
L2569:
	movl	%ecx, -80(%ebp)
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%ebx, -104(%ebp)
	movl	%edx, %esi
	movl	%eax, %ebx
	movl	%edi, -88(%ebp)
	xorl	%edi, %edi
L2572:
	movl	-88(%ebp), %eax
	movl	%edi, %edx
	call	_ov_pcm_total
	addl	%eax, %ebx
	adcl	%edx, %esi
	addl	$1, %edi
	cmpl	%edi, -80(%ebp)
	jne	L2572
	movl	%esi, -76(%ebp)
	movl	%ebx, -80(%ebp)
	movl	-104(%ebp), %ebx
L2571:
	movl	-96(%ebp), %eax
	testl	%eax, %eax
	je	L2573
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	leal	-1(%eax), %edx
	cmpl	%edx, %esi
	movl	%edi, %ecx
	sbbl	$0, %ecx
	jl	L2574
	movl	-44(%ebp), %edx
	movl	%eax, 28(%edx)
	movl	-92(%ebp), %eax
	movl	$1, 40(%edx)
	testl	%eax, %eax
	je	L2650
L2575:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	-92(%ebp), %eax
	movl	%eax, (%esp)
	call	_strtol
	movl	-80(%ebp), %esi
	movl	-76(%ebp), %edi
	leal	-1(%eax), %edx
	cmpl	%edx, %esi
	movl	%edi, %edx
	sbbl	$0, %edx
	jl	L2579
	movl	-44(%ebp), %ecx
	movl	%eax, 32(%ecx)
L2578:
	movl	-100(%ebp), %edi
	testl	%edi, %edi
	je	L2637
	movl	-44(%ebp), %eax
	movl	40(%eax), %esi
	testl	%esi, %esi
	je	L2637
L2583:
	movl	-44(%ebp), %eax
	movl	32(%eax), %ecx
	testl	%ecx, %ecx
	jne	L2637
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	-100(%ebp), %eax
	movl	%eax, (%esp)
	call	_strtol
	testl	%eax, %eax
	jle	L2581
	movl	-44(%ebp), %edx
	addl	28(%edx), %eax
	movl	%eax, 32(%edx)
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -44(%ebp)
	jmp	L2554
	.p2align 4,,10
	.p2align 3
L2641:
	movl	20(%ecx), %eax
	movl	%eax, -44(%ebp)
	jmp	L2554
	.p2align 4,,10
	.p2align 3
L2518:
	movl	$32, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2639:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2527:
	movl	$8, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2640:
	movl	76(%ebx), %eax
	movl	88(%ebx), %edx
	movl	$-1, -32(%ebp)
	movl	$-1, -28(%ebp)
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	472(%ebx), %eax
	movl	%esi, -56(%ebp)
	movl	%eax, -80(%ebp)
	movl	%eax, -36(%ebp)
	movl	-44(%ebp), %eax
	movl	%edi, -52(%ebp)
	call	__initial_pcmoffset.lto_priv.0
	movl	%eax, -88(%ebp)
	movl	724(%ebx), %eax
	movl	%edx, -84(%ebp)
	testl	%eax, %eax
	je	L2534
	movl	732(%ebx), %edi
	testl	%edi, %edi
	je	L2534
	movl	$2, 12(%esp)
	movl	$0, 4(%esp)
	movl	$0, 8(%esp)
	movl	16(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	16(%ebx), %eax
	movl	%eax, (%esp)
	call	*732(%ebx)
	cltd
	movl	%eax, %ecx
	movl	%eax, 32(%ebx)
	andl	%edx, %ecx
	movl	%edx, 36(%ebx)
	movl	%eax, 24(%ebx)
	movl	%edx, 28(%ebx)
	cmpl	$-1, %ecx
	je	L2536
	movl	-48(%ebp), %esi
	movl	80(%ebx), %ecx
	movl	%esi, 12(%esp)
	leal	-36(%ebp), %esi
	addl	$8, %ecx
	movl	%esi, 8(%esp)
	movl	-4(%ecx), %esi
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%esi, 4(%esp)
	movl	-44(%ebp), %eax
	call	__get_prev_page_serial.lto_priv.0
	movl	%eax, %ecx
	testl	%edx, %edx
	js	L2651
	movl	80(%ebx), %eax
	movl	$0, 36(%esp)
	movl	4(%eax), %esi
	addl	$8, %eax
	movl	%eax, 28(%esp)
	movl	%esi, 32(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-32(%ebp), %esi
	movl	-28(%ebp), %edi
	movl	%ecx, 8(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	%edx, 12(%esp)
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	movl	-44(%ebp), %eax
	xorl	%edx, %edx
	call	__bisect_forward_serialno.lto_priv.0
	testl	%eax, %eax
	js	L2652
	movl	72(%ebx), %eax
	movl	-80(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	80(%ebx), %eax
	movl	%edx, (%eax)
	movl	-56(%ebp), %edx
	movl	76(%ebx), %eax
	movl	%edx, (%eax)
	movl	-88(%ebp), %edx
	movl	%ecx, 4(%eax)
	movl	-84(%ebp), %ecx
	movl	84(%ebx), %eax
	movl	%edx, (%eax)
	movl	%ecx, 4(%eax)
	movl	84(%ebx), %eax
	subl	%edx, 8(%eax)
	sbbl	%ecx, 12(%eax)
	movl	84(%ebx), %eax
	movl	12(%eax), %esi
	testl	%esi, %esi
	jns	L2541
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
L2541:
	movl	-56(%ebp), %edx
	movl	-52(%ebp), %ecx
	movl	-44(%ebp), %eax
	call	_ov_raw_seek
	testl	%eax, %eax
	jne	L2653
	movl	20(%ebx), %ecx
	testl	%ecx, %ecx
	je	L2543
	movl	68(%ebx), %edx
	testl	%edx, %edx
	jg	L2543
L2544:
	movl	-44(%ebp), %eax
	call	_ov_clear.part.0
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2551
	movl	$LC61, 12(%esp)
	movl	$401, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2551
	.p2align 4,,10
	.p2align 3
L2634:
	movl	%esi, %ecx
	movl	-108(%ebp), %edi
	movl	-104(%ebp), %esi
	jmp	L2562
	.p2align 4,,10
	.p2align 3
L2646:
	movl	$11, 8(%esp)
	movl	$LC65, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	movl	-80(%ebp), %eax
	cmovne	-100(%ebp), %eax
	movl	%eax, -100(%ebp)
	jmp	L2558
	.p2align 4,,10
	.p2align 3
L2644:
	movl	$8, 8(%esp)
	movl	$LC63, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	movl	-80(%ebp), %eax
	cmovne	-92(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	L2558
L2547:
	movl	-44(%ebp), %eax
	call	_ov_clear.part.0
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L2551
	movl	-56(%ebp), %eax
	movl	4(%eax), %eax
	movl	$LC60, 12(%esp)
	movl	$400, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2551
	.p2align 4,,10
	.p2align 3
L2645:
	movl	$7, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L2587
	movl	-100(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L2558
L2589:
	movl	$0, -100(%ebp)
	jmp	L2558
	.p2align 4,,10
	.p2align 3
L2647:
	movl	-72(%ebp), %eax
	movl	$LC62, 12(%esp)
	movl	$404, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2551
	.p2align 4,,10
	.p2align 3
L2587:
	movl	-80(%ebp), %eax
	movl	%eax, -92(%ebp)
	jmp	L2558
	.p2align 4,,10
	.p2align 3
L2534:
	movl	$-1, 32(%ebx)
	movl	$-1, 36(%ebx)
	movl	$-1, 24(%ebx)
	movl	$-1, 28(%ebx)
L2536:
	movl	$-131, -72(%ebp)
	.p2align 4
	.p2align 3
L2538:
	movl	$0, 16(%ebx)
	movl	-44(%ebp), %eax
	call	_ov_clear.part.0
	jmp	L2532
L2579:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	$-1, %edx
	jl	L2578
	movl	$LC68, 12(%esp)
	movl	$118, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2578
L2584:
	movl	$-131, -72(%ebp)
	jmp	L2532
	.p2align 4,,10
	.p2align 3
L2525:
	movl	$4, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2650:
	movl	-100(%ebp), %eax
	testl	%eax, %eax
	jne	L2583
	jmp	L2637
	.p2align 4,,10
	.p2align 3
L2651:
	movl	%eax, -72(%ebp)
	jmp	L2538
	.p2align 4,,10
	.p2align 3
L2556:
	movl	-44(%ebp), %eax
	movl	20(%eax), %edi
	cmpl	$1, 104(%edi)
	jle	L2554
	movl	20(%edi), %eax
	testl	%eax, %eax
	je	L2554
	movl	68(%edi), %ecx
	testl	%ecx, %ecx
	js	L2554
	je	L2554
	movl	$0, -100(%ebp)
	addl	$16, %edi
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	jmp	L2569
L2638:
	movl	$0, 84(%eax)
	movl	-40(%ebp), %eax
	movl	20(%eax), %eax
	call	__Z12MV_PlayVoiceP9VoiceNode
	leal	-32(%ebp), %eax
	movl	$4, _MV_ErrorCode
	movl	%eax, -48(%ebp)
	jmp	L2552
L2653:
	movl	%eax, -72(%ebp)
	jmp	L2538
L2581:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L2637
	movl	$LC69, 12(%esp)
	movl	$128, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L2637
L2649:
	movl	$-131, -80(%ebp)
	movl	$-1, -76(%ebp)
	jmp	L2573
L2652:
	movl	$-128, -72(%ebp)
	jmp	L2538
	.cfi_endproc
LFE248:
	.section .rdata,"dr"
LC72:
	.ascii "Scream Tracker 3\0"
	.align 4
_libxmp_loader_s3m:
	.long	LC72
	.long	__ZL8s3m_testP10HIO_HANDLEPci.lto_priv.0
	.long	__ZL8s3m_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
LC73:
	.ascii "Impulse Tracker\0"
	.align 4
_libxmp_loader_it:
	.long	LC73
	.long	__ZL7it_testP10HIO_HANDLEPci.lto_priv.0
	.long	__ZL7it_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
LC74:
	.ascii "Protracker\0"
	.align 4
_libxmp_loader_mod:
	.long	LC74
	.long	__ZL8mod_testP10HIO_HANDLEPci.lto_priv.0
	.long	__ZL8mod_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
LC75:
	.ascii "Fast Tracker II\0"
	.align 4
_libxmp_loader_xm:
	.long	LC75
	.long	__ZL7xm_testP10HIO_HANDLEPci.lto_priv.0
	.long	__ZL7xm_loadP11module_dataP10HIO_HANDLEi.lto_priv.0
.lcomm __ZL9userInput,20,4
.lcomm _CONTROL_KeyBinds,3192,32
.lcomm _CONTROL_ButtonFlags,256,32
	.align 32
__ZZ15JOYSTICK_GetHatE8hatstate:
	.long	1
	.long	3
	.long	2
	.long	6
	.long	4
	.long	12
	.long	8
	.long	9
.lcomm __ZZL14controlGetTimevE1t,4,4
	.align 4
_format_loaders:
	.long	_libxmp_loader_xm
	.long	_libxmp_loader_mod
	.long	_libxmp_loader_it
	.long	_libxmp_loader_s3m
	.long	0
	.space 4
.lcomm __ZZ9divideu64E4udiv.lto_priv.4,9,4
.lcomm __ZZ9divideu64E5lastd.lto_priv.4,8,8
	.align 4
__ZZL14xm_test_memoryPKcjE8xm_magic:
	.ascii "Extended Module: \0"
	.align 4
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE11vtable_implE:
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE3runEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ10MV_PlayXMPEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE
	.align 32
__ZL15resonance_table:
	.long	1065353216
	.long	1064994932
	.long	1064644299
	.long	1064301154
	.long	1063965336
	.long	1063636691
	.long	1063315064
	.long	1063000305
	.long	1062692268
	.long	1062390809
	.long	1062095788
	.long	1061807068
	.long	1061524513
	.long	1061247992
	.long	1060977377
	.long	1060712540
	.long	1060453359
	.long	1060199713
	.long	1059951484
	.long	1059708556
	.long	1059470816
	.long	1059238153
	.long	1059010458
	.long	1058787626
	.long	1058569552
	.long	1058356136
	.long	1058147277
	.long	1057942879
	.long	1057742845
	.long	1057547083
	.long	1057355502
	.long	1057168012
	.long	1056984526
	.long	1056645310
	.long	1056293844
	.long	1055949884
	.long	1055613270
	.long	1055283844
	.long	1054961453
	.long	1054645947
	.long	1054337179
	.long	1054035004
	.long	1053739283
	.long	1053449877
	.long	1053166651
	.long	1052889473
	.long	1052618215
	.long	1052352750
	.long	1052092954
	.long	1051838706
	.long	1051589887
	.long	1051346382
	.long	1051108077
	.long	1050874862
	.long	1050646626
	.long	1050423265
	.long	1050204674
	.long	1049990751
	.long	1049781396
	.long	1049576512
	.long	1049376004
	.long	1049179777
	.long	1048987741
	.long	1048799806
	.long	1048615884
	.long	1048295781
	.long	1047943481
	.long	1047598704
	.long	1047261290
	.long	1046931082
	.long	1046607926
	.long	1046291670
	.long	1045982169
	.long	1045679277
	.long	1045382853
	.long	1045092760
	.long	1044808862
	.long	1044531026
	.long	1044259124
	.long	1043993028
	.long	1043732615
	.long	1043477763
	.long	1043228354
	.long	1042984271
	.long	1042745400
	.long	1042511631
	.long	1042282853
	.long	1042058962
	.long	1041839852
	.long	1041625420
	.long	1041415569
	.long	1041210198
	.long	1041009214
	.long	1040812521
	.long	1040620029
	.long	1040431648
	.long	1040247289
	.long	1039946344
	.long	1039593208
	.long	1039247612
	.long	1038909397
	.long	1038578405
	.long	1038254481
	.long	1037937475
	.long	1037627239
	.long	1037323628
	.long	1037026500
	.long	1036735718
	.long	1036451146
	.long	1036172650
	.long	1035900103
	.long	1035633375
	.long	1035372344
	.long	1035116887
	.long	1034866885
	.long	1034622222
	.long	1034382784
	.long	1034148460
	.long	1033919139
	.long	1033694716
	.long	1033475086
	.long	1033260145
	.long	1033049795
	.long	1032843937
	.long	1032642475
	.long	1032445316
	.long	1032252367
	.long	1032063538
	.align 32
__ZL4rval:
	.long	0
	.long	1
	.long	1
	.long	-1
	.long	1
	.long	1
	.long	-2
	.long	1
	.long	1
	.long	-4
	.long	1
	.long	1
	.long	-8
	.long	1
	.long	1
	.long	-16
	.long	1
	.long	1
	.long	0
	.long	2
	.long	3
	.long	0
	.long	1
	.long	2
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	1
	.long	1
	.long	4
	.long	1
	.long	1
	.long	8
	.long	1
	.long	1
	.long	16
	.long	1
	.long	1
	.long	0
	.long	3
	.long	2
	.long	0
	.long	2
	.long	1
	.long	0
	.long	0
	.long	1
	.data
	.align 32
__ZL13spline_mixers:
	.long	__Z27libxmp_mix_mono_8bit_splineP11mixer_voicePiiiiiiii
	.long	__Z28libxmp_mix_mono_16bit_splineP11mixer_voicePiiiiiiii
	.long	__Z29libxmp_mix_stereo_8bit_splineP11mixer_voicePiiiiiiii
	.long	__Z30libxmp_mix_stereo_16bit_splineP11mixer_voicePiiiiiiii
	.long	__Z34libxmp_mix_mono_8bit_spline_filterP11mixer_voicePiiiiiiii
	.long	__Z35libxmp_mix_mono_16bit_spline_filterP11mixer_voicePiiiiiiii
	.long	__Z36libxmp_mix_stereo_8bit_spline_filterP11mixer_voicePiiiiiiii
	.long	__Z37libxmp_mix_stereo_16bit_spline_filterP11mixer_voicePiiiiiiii
	.align 32
__ZL13linear_mixers:
	.long	__Z27libxmp_mix_mono_8bit_linearP11mixer_voicePiiiiiiii
	.long	__Z28libxmp_mix_mono_16bit_linearP11mixer_voicePiiiiiiii
	.long	__Z29libxmp_mix_stereo_8bit_linearP11mixer_voicePiiiiiiii
	.long	__Z30libxmp_mix_stereo_16bit_linearP11mixer_voicePiiiiiiii
	.long	__Z34libxmp_mix_mono_8bit_linear_filterP11mixer_voicePiiiiiiii
	.long	__Z35libxmp_mix_mono_16bit_linear_filterP11mixer_voicePiiiiiiii
	.long	__Z36libxmp_mix_stereo_8bit_linear_filterP11mixer_voicePiiiiiiii
	.long	__Z37libxmp_mix_stereo_16bit_linear_filterP11mixer_voicePiiiiiiii
	.align 32
__ZL14nearest_mixers:
	.long	__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii
	.long	__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii
.lcomm __ZZ9divideu64E4udiv.lto_priv.3,9,4
.lcomm __ZZ9divideu64E5lastd.lto_priv.3,8,8
	.section .rdata,"dr"
	.align 4
__ZL2K1:
	.long	0
	.long	0
	.long	-53248
	.long	-56320
	.align 4
__ZL2K0:
	.long	0
	.long	61440
	.long	117760
	.long	100352
.lcomm __ZZN5async20hardware_concurrencyEvE5value,4,4
.lcomm __ZGVZN5async20hardware_concurrencyEvE5value,8,8
.lcomm __ZGVZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance,8,8
	.align 4
__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE11vtable_implE:
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE7destroyEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE3runEPNS0_9task_baseE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE6cancelEPNS0_9task_baseEONSt15__exception_ptr13exception_ptrE
	.long	__ZN5async6detail9task_funcINS_20threadpool_schedulerENS0_14root_exec_funcIS2_iZ13MV_PlayVorbisEUlvE_Lb0EEEiE8scheduleEPNS0_9task_baseENS0_13ref_count_ptrIS7_EE
.lcomm __ZZ9divideu64E4udiv.lto_priv.2,9,4
.lcomm __ZZ9divideu64E5lastd.lto_priv.2,8,8
.lcomm __ZZ9divideu32E4udiv,5,4
.lcomm __ZZ9divideu32E5lastd,4,4
	.align 8
LC11:
	.long	-1
	.long	-1
	.align 4
LC13:
	.long	1173356544
	.align 4
LC14:
	.long	1048576000
	.align 8
LC15:
	.long	-1717986918
	.long	1069128089
	.align 4
LC16:
	.long	1090519040
	.align 4
LC17:
	.long	1120403456
	.align 8
LC18:
	.long	-1433469566
	.long	1091243247
	.align 4
LC19:
	.long	1056964608
	.align 4
LC20:
	.long	1179123712
	.align 4
LC21:
	.long	1094713344
	.align 4
LC23:
	.long	1180041216
	.align 8
LC24:
	.long	-864491017
	.long	1076903232
	.align 4
LC25:
	.long	1166016512
	.align 8
LC26:
	.long	-4194304
	.long	1105199103
	.align 4
LC27:
	.long	1017817771
	.align 4
LC28:
	.long	1121714176
	.align 4
LC29:
	.long	1086918619
	.align 4
LC31:
	.long	1199570944
	.align 16
LC32:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC33:
	.long	1148846080
	.align 4
LC34:
	.long	1138098176
	.align 8
LC35:
	.long	-755914244
	.long	1062232653
	.align 4
LC36:
	.long	1191181824
	.align 4
LC40:
	.long	1132068864
	.align 16
LC41:
	.long	8287
	.long	64
	.long	64
	.long	64
	.align 4
LC43:
	.long	1092616192
	.align 16
LC46:
	.long	0
	.long	0
	.long	0
	.long	-1
	.align 16
LC47:
	.long	0
	.long	-1
	.long	0
	.long	0
	.align 4
LC49:
	.long	-939524224
	.align 4
LC50:
	.long	1207959424
	.align 4
LC54:
	.long	1191182336
	.align 4
LC70:
	.long	__ZL12close_vorbisPv
	.align 4
LC71:
	.long	__ZL11read_vorbisPvjjS_
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	__Z13MV_AllocVoiceij;	.scl	2;	.type	32;	.endef
	.def	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	__ZN5async20threadpool_scheduler8scheduleENS_15task_run_handleE;	.scl	2;	.type	32;	.endef
	.def	__ZNSt15__exception_ptr13exception_ptr10_M_releaseEv;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
	.def	_strtoul;	.scl	2;	.type	32;	.endef
	.def	__ZN5async20threadpool_schedulerC2Ej.constprop.0;	.scl	2;	.type	32;	.endef
	.def	___tcf_ZZN5async6detail9singletonINS0_22default_scheduler_implEE12get_instanceEvE8instance.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZNSt6thread20hardware_concurrencyEv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_pthread_mutex_destroy;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN5async6detail19continuation_vector14flush_and_lockIZNS0_9task_base17run_continuationsEvEUlNS0_13ref_count_ptrIS3_EEE_EEvOT_;	.scl	2;	.type	32;	.endef
	.def	__Z14PITCH_GetScalei;	.scl	2;	.type	32;	.endef
	.def	__Z12MV_PlayVoiceP9VoiceNode;	.scl	2;	.type	32;	.endef
	.def	__vds_shared_init.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_vorbis_synthesis_restart.isra.0;	.scl	2;	.type	32;	.endef
	.def	_vorbis_dsp_clear;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10next_orderP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20update_from_ord_infoP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14reset_channelsP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17libxmp_read_eventP12context_dataP9xmp_eventi.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18execute_midi_macroP12context_dataP12channel_dataiP10midi_macroi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13update_volumeP12context_datai.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15update_envelopeP12xmp_envelopeiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12get_envelopeP12xmp_envelopeii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z14libxmp_lfo_getP12context_dataP3lfoi;	.scl	2;	.type	32;	.endef
	.def	__Z18libxmp_virt_setvolP12context_dataii;	.scl	2;	.type	32;	.endef
	.def	__Z21libxmp_note_to_periodP12context_dataiid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_log;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_powf;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZL12do_anticlickP12context_dataiPii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z24libxmp_virt_resetchannelP12context_datai;	.scl	2;	.type	32;	.endef
	.def	__ZL16adjust_voice_endP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL22init_sample_wraparoundP10mixer_dataP9loop_dataP11mixer_voiceP10xmp_sample.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL23reset_sample_wraparoundP9loop_data.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15loop_repositionP12context_dataP11mixer_voiceP10xmp_sampleP17extra_sample_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z22libxmp_virt_resetvoiceP12context_dataii;	.scl	2;	.type	32;	.endef
	.def	__ZL8next_rowP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19check_end_of_moduleP12context_data.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z21libxmp_mixer_voiceposP12context_dataidi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_xmp_release_module;	.scl	2;	.type	32;	.endef
	.def	__Z20libxmp_adjust_stringPc.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14check_envelopeP12xmp_envelope.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11scan_moduleP12context_dataii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z20libxmp_alloc_patternP10xmp_modulei;	.scl	2;	.type	32;	.endef
	.def	_xmp_end_player.part.0;	.scl	2;	.type	32;	.endef
	.def	_joyScanDevices;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_mouseReadButtons;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__fetch_headers.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_ogg_stream_pagein;	.scl	2;	.type	32;	.endef
	.def	__get_next_page.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_vorbis_block_clear.isra.0;	.scl	2;	.type	32;	.endef
	.def	_vorbis_info_clear;	.scl	2;	.type	32;	.endef
	.def	_vorbis_comment_clear;	.scl	2;	.type	32;	.endef
	.def	__packetout.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__vorbis_block_ripcord;	.scl	2;	.type	32;	.endef
	.def	_oggpack_read;	.scl	2;	.type	32;	.endef
	.def	__vorbis_block_alloc;	.scl	2;	.type	32;	.endef
	.def	_mapping0_inverse.isra.0;	.scl	2;	.type	32;	.endef
	.def	_vorbis_synthesis_blockin.isra.0;	.scl	2;	.type	32;	.endef
	.def	_ogg_stream_clear;	.scl	2;	.type	32;	.endef
	.def	__seek_helper.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_ogg_stream_init;	.scl	2;	.type	32;	.endef
	.def	_vorbis_packet_blocksize.isra.0;	.scl	2;	.type	32;	.endef
	.def	_ogg_page_granulepos.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_divideu64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__initial_pcmoffset.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__get_prev_page_serial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__bisect_forward_serialno.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8s3m_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8s3m_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL7it_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL7it_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8mod_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8mod_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL7xm_testP10HIO_HANDLEPci.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL7xm_loadP11module_dataP10HIO_HANDLEi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z27libxmp_mix_mono_8bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z28libxmp_mix_mono_16bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z29libxmp_mix_stereo_8bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z30libxmp_mix_stereo_16bit_splineP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z34libxmp_mix_mono_8bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z35libxmp_mix_mono_16bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z36libxmp_mix_stereo_8bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z37libxmp_mix_stereo_16bit_spline_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z27libxmp_mix_mono_8bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z28libxmp_mix_mono_16bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z29libxmp_mix_stereo_8bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z30libxmp_mix_stereo_16bit_linearP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z34libxmp_mix_mono_8bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z35libxmp_mix_mono_16bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z36libxmp_mix_stereo_8bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z37libxmp_mix_stereo_16bit_linear_filterP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z28libxmp_mix_mono_8bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z29libxmp_mix_mono_16bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z30libxmp_mix_stereo_8bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z31libxmp_mix_stereo_16bit_nearestP11mixer_voicePiiiiiiii;	.scl	2;	.type	32;	.endef
