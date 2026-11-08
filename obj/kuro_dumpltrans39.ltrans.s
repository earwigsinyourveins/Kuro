	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL10setzrange1Piii;	.scl	3;	.type	32;	.endef
__ZL10setzrange1Piii:
LFB0:
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
	jbe	L7
	movl	12(%esp), %edx
	sarl	$5, %eax
	orl	%ebp, %edx
	leal	1(%esi), %ebp
	movl	%edx, (%ecx)
	cmpl	%ebp, %eax
	jle	L4
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
L4:
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
L7:
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
LFE0:
	.p2align 4
	.def	__ZL10isrectfreeiiii;	.scl	3;	.type	32;	.endef
__ZL10isrectfreeiiii:
LFB1:
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
	je	L9
	movl	__ZL4zbit, %edi
	movl	%edi, 8(%esp)
	leal	(%edi,%ebx,4), %ebp
	testl	%eax, %eax
	je	L12
	movl	%ecx, (%esp)
	movl	%eax, 32(%esp)
L18:
	testl	%esi, 0(%ebp)
	jne	L15
	movl	$1, %edi
	cmpl	$1, %edx
	jle	L16
	movl	(%esp), %ecx
	movl	32(%esp), %eax
	jmp	L17
	.p2align 4
	.p2align 4,,10
	.p2align 3
L29:
	addl	$1, %edi
	cmpl	%edi, %edx
	je	L28
L17:
	cmpl	$0, 0(%ebp,%edi,4)
	je	L29
L15:
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
L28:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	%edx, %edi
	movl	%eax, 32(%esp)
L16:
	movl	8(%esp), %eax
	addl	%ebx, %edi
	movl	4(%esp), %ecx
	testl	%ecx, (%eax,%edi,4)
	jne	L15
	movl	(%esp), %eax
	addl	%eax, %ebx
	subl	$1, 32(%esp)
	leal	0(%ebp,%eax,4), %ebp
	jne	L18
L12:
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
L9:
	.cfi_restore_state
	testl	%eax, %eax
	je	L12
	movl	__ZL4zbit, %edx
	andl	4(%esp), %esi
	sall	$2, %ecx
	leal	(%edx,%ebx,4), %edx
	jmp	L14
	.p2align 4
	.p2align 4,,10
	.p2align 3
L13:
	addl	%ecx, %edx
	subl	$1, %eax
	je	L12
L14:
	testl	%esi, (%edx)
	je	L13
	jmp	L15
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL7cntquadiiiiiiiiii;	.scl	3;	.type	32;	.endef
__ZL7cntquadiiiiiiiiii:
LFB2:
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
	je	L35
	movl	12(%esp), %ecx
	cmpl	%ecx, 36(%esp)
	cmove	%ebx, %edx
L31:
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
	jge	L33
	movl	%ecx, __ZL5gmaxx
L33:
	cmpl	%eax, __ZL5gmaxy
	jge	L34
	movl	%eax, __ZL5gmaxy
L34:
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
L35:
	.cfi_restore_state
	movl	%ebx, %eax
	jmp	L31
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z17AdLibDrv_GetErrorv
	.def	__Z17AdLibDrv_GetErrorv;	.scl	2;	.type	32;	.endef
__Z17AdLibDrv_GetErrorv:
LFB3:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE3:
	.section .rdata,"dr"
LC0:
	.ascii "AdLib ok.\0"
LC1:
	.ascii "Unknown AdLib error.\0"
	.text
	.p2align 4
	.globl	__Z20AdLibDrv_ErrorStringi
	.def	__Z20AdLibDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
__Z20AdLibDrv_ErrorStringi:
LFB4:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$LC0, %eax
	cmpl	$-1, %edx
	jne	L44
	ret
	.p2align 4,,10
	.p2align 3
L44:
	testl	%edx, %edx
	movl	$LC1, %edx
	cmovne	%edx, %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z22AdLibDrv_MIDI_SetTempoii
	.def	__Z22AdLibDrv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
__Z22AdLibDrv_MIDI_SetTempoii:
LFB5:
	.cfi_startproc
	movl	8(%esp), %ecx
	imull	4(%esp), %ecx
	movl	$-2004318071, %eax
	movl	$0, _MV_MIDIRenderTimer
	imull	%ecx
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$5, %edx
	subl	%ecx, %edx
	movl	%edx, _MV_MIDIRenderTempo
	ret
	.cfi_endproc
LFE5:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "Using '%s' timer with %g MHz frequency\0"
LC5:
	.ascii "source/build/src/timer.cpp\0"
	.align 4
LC6:
	.ascii "Invariant TSC support not detected! You may experience timing issues.\0"
	.text
	.p2align 4
	.def	__ZL16osdcmd_sys_timerPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL16osdcmd_sys_timerPK13osdfuncparm_t:
LFB6:
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
	jbe	L47
	movl	$0, __ZL9sys_timer.lto_priv.0
L48:
	movl	_osd, %eax
	leal	-24(%ebp), %ebx
	movl	3240(%eax), %eax
	testl	%eax, %eax
	je	L62
L51:
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
L47:
	.cfi_restore_state
	testl	%edx, %edx
	je	L48
L49:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%edx, %esi
	leal	-24(%ebp), %ebx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	jns	L63
L52:
	cmpl	$3, %esi
	jne	L51
	testb	$1, _cpu+8
	jne	L51
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L51
	movl	$LC6, 12(%esp)
	movl	$246, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L51
	.p2align 4,,10
	.p2align 3
L63:
	cmpl	$1, %edx
	je	L53
	cmpl	$3, %edx
	jne	L57
	movl	__ZL8tsc_freq.lto_priv.0, %esi
	movl	__ZL8tsc_freq.lto_priv.0+4, %edi
L55:
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	fildq	-32(%ebp)
	testl	%edi, %edi
	jns	L56
	fadds	LC2
L56:
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
	fdivs	LC3
	movl	__ZZL16osdcmd_sys_timerPK13osdfuncparm_tE1s(,%edx,4), %eax
	movl	$LC4, 12(%esp)
	movl	$242, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	fstpl	20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL9sys_timer.lto_priv.0, %esi
	jmp	L52
	.p2align 4,,10
	.p2align 3
L62:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	leal	-24(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L51
L57:
	call	_SDL_GetPerformanceFrequency
	leal	-24(%ebp), %ebx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	__ZL9sys_timer.lto_priv.0, %edx
	jmp	L55
	.p2align 4,,10
	.p2align 3
L53:
	movl	%ebx, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	movl	-24(%ebp), %esi
	movl	-20(%ebp), %edi
	movl	__ZL9sys_timer.lto_priv.0, %edx
	subl	$4, %esp
	jmp	L55
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL7addquadiiiiiiiiii;	.scl	3;	.type	32;	.endef
__ZL7addquadiiiiiiiiii:
LFB16:
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
	je	L102
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
L65:
	movl	24(%esp), %eax
	movl	48(%esp), %esi
	cmpl	%esi, %eax
	jge	L66
	addl	$3, 44(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 48(%esp)
L66:
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
	ja	L67
	movl	144(%esp), %edi
	jmp	*L69(,%edi,4)
	.section .rdata,"dr"
	.align 4
L69:
	.long	L104
	.long	L73
	.long	L72
	.long	L71
	.long	L70
	.long	L68
	.text
L102:
	movl	%ecx, 24(%esp)
	movl	$0, 44(%esp)
	jmp	L65
L71:
	movl	116(%esp), %edi
	xorl	%esi, %esi
	movl	%edi, 56(%esp)
	xorl	%edi, %edi
L74:
	movl	48(%esp), %ebp
	testl	%ebp, %ebp
	je	L75
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L76
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
L96:
	movl	%ecx, 12(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L95:
	cmpl	$5, %ebp
	ja	L77
	cmpl	$2, 44(%esp)
	jmp	*L79(,%ebp,4)
	.section .rdata,"dr"
	.align 4
L79:
	.long	L84
	.long	L83
	.long	L82
	.long	L81
	.long	L80
	.long	L78
	.text
	.p2align 4,,10
	.p2align 3
L80:
	jg	L89
	movl	72(%esp), %edi
	movl	28(%esp), %esi
	addl	128(%esp), %esi
	subl	%ebx, %edi
	.p2align 4
	.p2align 3
L77:
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
	js	L91
	movl	12(%esp), %ecx
	jmp	L94
	.p2align 5
	.p2align 4,,10
	.p2align 3
L92:
	movl	8(%eax), %eax
	testl	%eax, %eax
	js	L118
L94:
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,4), %eax
	cmpl	(%eax), %edx
	jne	L92
	movl	%ecx, 12(%esp)
	movl	4(%eax), %eax
L93:
	movl	20(%esp), %ecx
	movl	%eax, (%ecx,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, 24(%esp)
	jne	L95
	movl	52(%esp), %eax
	movl	20(%esp), %edx
	addl	$1, 28(%esp)
	movl	12(%esp), %ecx
	movl	48(%eax), %eax
	movl	28(%esp), %ebx
	leal	(%edx,%eax,4), %edx
	movl	%edx, 20(%esp)
	cmpl	%ebx, 48(%esp)
	jne	L96
	movl	52(%esp), %esi
	movl	76(%esp), %edi
	movl	%ebp, 144(%esp)
	movl	44(%esi), %esi
	movzwl	2(%edi), %edx
	movl	%esi, 28(%esp)
	movzwl	(%edi), %esi
	movl	%esi, 12(%esp)
L76:
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
	jmp	L97
	.p2align 6
	.p2align 4,,10
	.p2align 3
L119:
	movzwl	2(%edi), %edx
	movl	44(%esi), %ebp
	movl	%edx, 16(%esp)
	movzwl	(%edi), %edx
	movl	%edx, 12(%esp)
L97:
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
	jne	L119
	movl	52(%esp), %esi
	movl	44(%esi), %edi
	movl	76(%esp), %esi
	movzwl	2(%esi), %ebx
	movzwl	(%esi), %esi
	movl	%edi, 16(%esp)
	leal	1(%ebx), %ecx
	movl	%esi, 20(%esp)
	imull	%eax, %ecx
L75:
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
L98:
	movzwl	2(%edi), %ebx
	addl	$10, %edx
	leal	1(%ebx), %ecx
	movzwl	(%edi), %ebx
	movw	%cx, -8(%edx)
	addl	$1, %ebx
	movw	%bx, -10(%edx)
	cmpl	%edx, %esi
	jne	L98
	movzwl	20(%esp), %edi
	movzwl	16(%eax), %ecx
	movl	%ebp, 144(%esp)
	movl	24(%esp), %ebp
	movzwl	18(%eax), %edx
	movzwl	48(%esp), %esi
	movl	%ebp, %ebx
	cmpl	$2, 44(%esp)
	jg	L99
	addl	%ebp, %ecx
	movw	%cx, 16(%eax)
L100:
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
	jns	L101
	movl	%eax, __ZL8gqfacind(,%edi,4)
L101:
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
L83:
	.cfi_restore_state
	jg	L86
	movl	108(%esp), %eax
	movl	28(%esp), %esi
	addl	116(%esp), %esi
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	jmp	L77
	.p2align 4,,10
	.p2align 3
L78:
	jg	L90
	movl	112(%esp), %edi
	movl	28(%esp), %esi
	addl	116(%esp), %esi
	addl	%ebx, %edi
	jmp	L77
	.p2align 4,,10
	.p2align 3
L81:
	jg	L88
	movl	108(%esp), %eax
	movl	28(%esp), %edi
	addl	112(%esp), %edi
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	jmp	L77
	.p2align 4,,10
	.p2align 3
L84:
	jg	L85
	movl	68(%esp), %eax
	addl	120(%esp), %eax
	subl	%ebx, %eax
	movl	28(%esp), %esi
	addl	128(%esp), %esi
	movl	%eax, 16(%esp)
	jmp	L77
	.p2align 4,,10
	.p2align 3
L82:
	movl	120(%esp), %eax
	jg	L87
	subl	24(%esp), %eax
	addl	%ebx, %eax
	movl	%eax, 16(%esp)
	movl	124(%esp), %eax
	leal	-1(%eax), %edi
	subl	28(%esp), %edi
	jmp	L77
L68:
	movl	$0, 56(%esp)
	movl	108(%esp), %esi
	xorl	%edi, %edi
	jmp	L74
L104:
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
	jmp	L74
L70:
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
	jmp	L74
L73:
	movl	112(%esp), %edi
	addl	$1, 124(%esp)
	addl	$1, 136(%esp)
	leal	1(%edi), %esi
	movl	$0, 56(%esp)
	movl	%esi, 112(%esp)
	xorl	%esi, %esi
	jmp	L74
L72:
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
	jmp	L74
	.p2align 4,,10
	.p2align 3
L118:
	movl	%ecx, 12(%esp)
L91:
	movl	$8421504, %eax
	jmp	L93
L86:
	movl	116(%esp), %esi
	movl	28(%esp), %eax
	addl	108(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %esi
	jmp	L77
L89:
	movl	128(%esp), %esi
	movl	64(%esp), %edi
	subl	28(%esp), %edi
	addl	%ebx, %esi
	jmp	L77
L90:
	movl	116(%esp), %esi
	movl	28(%esp), %edi
	addl	112(%esp), %edi
	addl	%ebx, %esi
	jmp	L77
L85:
	movl	128(%esp), %esi
	movl	60(%esp), %eax
	addl	120(%esp), %eax
	subl	28(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %esi
	jmp	L77
L88:
	movl	112(%esp), %edi
	movl	28(%esp), %eax
	addl	108(%esp), %eax
	movl	%eax, 16(%esp)
	addl	%ebx, %edi
	jmp	L77
L87:
	subl	$1, %eax
	subl	28(%esp), %eax
	movl	%eax, 16(%esp)
	movl	124(%esp), %eax
	leal	-1(%eax), %edi
	subl	%ebx, %edi
	jmp	L77
L99:
	addw	48(%esp), %dx
	movw	%dx, 18(%eax)
	jmp	L100
L67:
	xorl	%esi, %esi
	xorl	%edi, %edi
	movl	%esi, 56(%esp)
	xorl	%esi, %esi
	jmp	L74
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC9:
	.ascii "rb\0"
	.text
	.p2align 4
	.def	__ZL8kzipopenPKc;	.scl	3;	.type	32;	.endef
__ZL8kzipopenPKc:
LFB18:
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
	jmp	L121
	.p2align 5
	.p2align 4,,10
	.p2align 3
L123:
	movb	%dl, 26(%esp,%eax)
	cmpl	$260, %eax
	je	L147
L121:
	movzbl	(%ecx,%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L123
L122:
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
	movb	$0, 26(%esp,%eax)
	testl	%ebx, %ebx
	je	L124
	movzbl	27(%esp), %eax
	movb	%al, 20(%esp)
	testb	%al, %al
	je	L148
	movl	%eax, %esi
	leal	28(%esp), %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L126:
	leal	(%eax,%eax,2), %ecx
	movl	%esi, %eax
	addl	$1, %edx
	movzbl	%al, %esi
	movzbl	_toupperlookup(%esi), %eax
	movzbl	-1(%edx), %esi
	subl	%ecx, %eax
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L126
	movzbl	%al, %eax
L125:
	movl	__ZL9kzhashead.lto_priv.0(,%eax,4), %edi
	testl	%edi, %edi
	js	L124
	.p2align 4
	.p2align 3
L134:
	leal	21(%ebx,%edi), %esi
	leal	27(%esp), %ecx
	movzbl	(%esi), %eax
	testb	%al, %al
	jne	L127
	jmp	L176
	.p2align 4,,10
	.p2align 3
L177:
	movzbl	_toupperlookup(%edx), %edx
	cmpb	%dl, _toupperlookup(%eax)
	jne	L130
	movzbl	1(%esi), %eax
	addl	$1, %esi
	addl	$1, %ecx
	testb	%al, %al
	je	L129
L127:
	movzbl	(%ecx), %edx
	testb	%dl, %dl
	jne	L177
L130:
	movl	(%ebx,%edi), %edi
	testl	%edi, %edi
	jns	L134
L124:
	movl	__ZL12kzdirnamhead.lto_priv.0, %edi
	testl	%edi, %edi
	js	L132
	leal	26(%esp), %eax
	leal	290(%esp), %esi
	movl	%eax, (%esp)
	call	_strlen
	addl	$1, %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L146:
	leal	4(%ebx,%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%esi, (%esp)
	call	_strlen
	movl	20(%esp), %ecx
	addl	%eax, %ecx
	cmpl	$305, %ecx
	ja	L143
	testl	%eax, %eax
	je	L144
	movzbl	289(%esp,%eax), %ecx
	cmpb	$47, %cl
	je	L144
	cmpb	$92, %cl
	je	L144
	movl	$92, %edx
	movw	%dx, (%esi,%eax)
	.p2align 4
	.p2align 3
L144:
	leal	26(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcat
	movl	$LC9, 4(%esp)
	movl	%esi, (%esp)
	call	_fopen
	movl	%eax, _kzfs
	testl	%eax, %eax
	jne	L145
	movl	__ZL9kzhashbuf.lto_priv.0, %ebx
L143:
	movl	(%ebx,%edi), %edi
	testl	%edi, %edi
	jns	L146
L132:
	xorl	%eax, %eax
L120:
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
L129:
	.cfi_restore_state
	movzbl	(%ecx), %eax
L128:
	testb	%al, %al
	jne	L130
	movl	16(%ebx,%edi), %eax
	movl	12(%ebx,%edi), %esi
	movl	%eax, 16(%esp)
	movzbl	20(%ebx,%edi), %eax
	movl	$LC9, 4(%esp)
	addl	8(%ebx,%edi), %ebx
	movl	%ebx, (%esp)
	movb	%al, 20(%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L132
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	cmpb	$0, 20(%esp)
	jne	L135
	movl	16(%esp), %eax
	movl	%ebx, _kzfs
	movl	$0, _kzfs+4
	movl	%eax, _kzfs+20
	movl	%ebx, %eax
	movl	%esi, _kzfs+8
	movl	$0, _kzfs+24
	movl	$0, _kzfs+36
	jmp	L120
L135:
	leal	290(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$30, 4(%esp)
	movl	%eax, (%esp)
	call	_fread
	cmpl	$67324752, 290(%esp)
	jne	L178
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
	je	L175
	cmpl	$8, %eax
	jne	L179
	cmpb	$0, __ZL9pnginited.lto_priv.0
	je	L180
L141:
	movl	308(%esp), %eax
	movl	$0, _kzfs+16
	movl	$2147483647, __ZL7gslidew
	movl	%eax, _kzfs+12
	movl	_kzfs, %eax
	jmp	L120
	.p2align 4,,10
	.p2align 3
L176:
	movzbl	20(%esp), %eax
	jmp	L128
L145:
	movl	$0, _kzfs+4
	movl	$0, _kzfs+8
	movl	$0, (%esp)
	call	*__imp___fileno
	movl	%eax, (%esp)
	call	_filelength
	movl	$0, _kzfs+24
	movl	%eax, _kzfs+20
L175:
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
L147:
	.cfi_restore_state
	movl	$261, %eax
	jmp	L122
L148:
	xorl	%eax, %eax
	jmp	L125
L178:
	movl	%ebx, (%esp)
	call	_fclose
	jmp	L132
L179:
	movl	_kzfs, %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L132
L180:
	movb	$1, __ZL9pnginited.lto_priv.0
	call	__ZL13initpngtablesv.lto_priv.0
	jmp	L141
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__ZL6putvoxiiii;	.scl	3;	.type	32;	.endef
__ZL6putvoxiiii:
LFB23:
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
	jge	L187
L182:
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
L187:
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
	jne	L185
	movl	8(%esp), %edx
	testl	%edx, %edx
	jne	L183
L185:
	movl	%ecx, __ZL4vcol
	movl	_vnum, %edx
	jmp	L182
	.p2align 4,,10
	.p2align 3
L183:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE23:
	.p2align 4
	.def	__ZL17alloc_vcolhasheadv;	.scl	3;	.type	32;	.endef
__ZL17alloc_vcolhasheadv:
LFB24:
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
	je	L189
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
L189:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE24:
	.p2align 4
	.def	__ZL10alloc_vbitv;	.scl	3;	.type	32;	.endef
__ZL10alloc_vbitv:
LFB25:
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
	je	L193
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
L193:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z15kclose_internaliPKhPi
	.def	__Z15kclose_internaliPKhPi;	.scl	2;	.type	32;	.endef
__Z15kclose_internaliPKhPi:
LFB26:
	.cfi_startproc
	testl	%eax, %eax
	js	L205
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movzbl	(%edx,%eax), %edx
	leal	(%ecx,%eax,4), %ecx
	cmpb	$-1, %dl
	je	L208
	cmpb	$-2, %dl
	je	L209
	movl	$-1, (%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L205:
	ret
	.p2align 4,,10
	.p2align 3
L209:
	.cfi_def_cfa_offset 12
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L200
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_fclose
	movl	4(%esp), %ecx
	movl	$0, _kzfs
L200:
	movl	$-1, __ZL9kzcurhand.lto_priv.0
	movl	$-1, (%ecx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L208:
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
LFE26:
	.p2align 4
	.def	_klistaddentry.isra.0;	.scl	3;	.type	32;	.endef
_klistaddentry.isra.0:
LFB30:
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
	je	L211
	cmpl	$4, %ecx
	je	L212
	xorl	%ebx, %ebx
L214:
	movl	(%esi), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L242
	je	L243
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
	je	L218
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
	je	L219
L220:
	movl	%ebx, 16(%ecx)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	je	L222
	movl	%ecx, 16(%eax)
L222:
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
L242:
	.cfi_restore_state
	movl	12(%esi), %eax
	movl	%esi, %ebx
	testl	%eax, %eax
	je	L215
	movl	%eax, %esi
	jmp	L214
	.p2align 4,,10
	.p2align 3
L243:
	movl	-20(%ebp), %eax
	cmpl	%eax, 8(%esi)
	jle	L210
	movl	-16(%ebp), %edx
	movl	%eax, 8(%esi)
	movl	%edx, 4(%esi)
L210:
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
L212:
	.cfi_restore_state
	movl	%esi, %eax
	movl	12(%esi), %esi
	testl	%esi, %esi
	jne	L212
	movl	%eax, %esi
L215:
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
	je	L218
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
	jmp	L220
	.p2align 4,,10
	.p2align 3
L211:
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
	je	L218
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
L219:
	movl	-24(%ebp), %eax
	movl	$0, 16(%ecx)
	movl	(%eax), %eax
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	je	L221
	movl	%ecx, 16(%eax)
L221:
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
L218:
	.cfi_restore_state
	movl	-28(%ebp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__ZL12dfwrite_funciPKvi.lto_priv.0
	.def	__ZL12dfwrite_funciPKvi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12dfwrite_funciPKvi.lto_priv.0:
LFB31:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	_fwrite
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "timeGetDevCaps() failed: MMRESULT: %d\0"
LC11:
	.ascii "source/build/src/winbits.cpp\0"
	.align 4
LC12:
	.ascii "timeEndPeriod(%d) failed: MMRESULT: %d\0"
	.align 4
LC13:
	.ascii "NtSetTimerResolution(%ld) unset failed: NTSTATUS: 0x%08x (%s)\0"
LC15:
	.ascii "Set %.1fms timer resolution\0"
	.align 4
LC16:
	.ascii "NtSetTimerResolution(%ld) failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC17:
	.ascii "NtQueryTimerResolution() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC18:
	.ascii "timeBeginPeriod(%d) failed: MMRESULT: %d\0"
LC19:
	.ascii "Set %u.0ms timer resolution\0"
	.align 4
LC20:
	.ascii "Unable to configure system timer!\0"
	.text
	.p2align 4
	.def	__Z17windowsSetupTimerb;	.scl	3;	.type	32;	.endef
__Z17windowsSetupTimerb:
LFB32:
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
	leal	-44(%ebp), %eax
	subl	$96, %esp
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__timeGetDevCaps@8
	subl	$8, %esp
	testl	%eax, %eax
	jne	L279
L247:
	movl	__ZZ17windowsSetupTimerbE10timePeriod, %eax
	testl	%eax, %eax
	jne	L280
L248:
	movl	__ZZ17windowsSetupTimerbE12timePeriodNT, %eax
	movl	$0, __ZZ17windowsSetupTimerbE10timePeriod
	testl	%eax, %eax
	je	L249
	movl	$__ZZ17windowsSetupTimerbE12timePeriodNT, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__ZL26ntdll_NtSetTimerResolution.lto_priv.0
	subl	$12, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	js	L281
L249:
	movl	$0, __ZZ17windowsSetupTimerbE12timePeriodNT
	testb	%bl, %bl
	jne	L282
L246:
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
L282:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_GetPowerInfo
	movl	%eax, %edx
	cmpl	$1, %eax
	je	L252
	movl	__ZL6hNTDLL.lto_priv.0, %esi
	testl	%esi, %esi
	je	L252
	cmpl	$1, __ZL19win_systemtimermode.lto_priv.0
	je	L283
L252:
	movl	__ZZ17windowsSetupTimerbE12timePeriodNT, %ecx
	testl	%ecx, %ecx
	jne	L257
	cmpl	$1, %edx
	movl	$1, %eax
	movl	-40(%ebp), %edx
	movl	-44(%ebp), %ebx
	sete	%cl
	sall	%cl, %eax
	cmpl	%edx, %eax
	cmovbe	%eax, %edx
	cmpl	%eax, %ebx
	cmovb	%edx, %ebx
	movl	%ebx, (%esp)
	call	*__imp__timeBeginPeriod@4
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	%eax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	subl	$4, %esp
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%ecx, %ecx
	je	L259
	cmpl	$-2, %eax
	jl	L246
	movl	%ecx, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC18, 12(%esp)
	movl	$161, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L257:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L246
	movl	$LC20, 12(%esp)
	movl	$170, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
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
L280:
	.cfi_restore_state
	movl	%eax, (%esp)
	call	*__imp__timeEndPeriod@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L248
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L248
	movl	%eax, 20(%esp)
	movl	__ZZ17windowsSetupTimerbE10timePeriod, %eax
	movl	$LC12, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$104, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L248
	.p2align 4,,10
	.p2align 3
L279:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L247
	movl	%eax, 16(%esp)
	movl	$LC10, 12(%esp)
	movl	$99, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L247
	.p2align 4,,10
	.p2align 3
L281:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L284
L250:
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L249
	.p2align 4,,10
	.p2align 3
L283:
	movl	%eax, -72(%ebp)
	leal	-56(%ebp), %eax
	leal	-60(%ebp), %ebx
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	*__ZL28ntdll_NtQueryTimerResolution.lto_priv.0
	movl	-72(%ebp), %edx
	subl	$12, %esp
	testl	%eax, %eax
	movl	%eax, %ecx
	js	L253
	movl	%ebx, 8(%esp)
	movl	$1, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	*__ZL26ntdll_NtSetTimerResolution.lto_priv.0
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	-72(%ebp), %edx
	movl	%eax, %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	subl	$12, %esp
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%ebx, %ebx
	jns	L285
	cmpl	$-2, %eax
	jge	L286
L256:
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L252
	.p2align 4,,10
	.p2align 3
L259:
	movl	%ebx, __ZZ17windowsSetupTimerbE10timePeriod
	testl	%eax, %eax
	js	L246
	movl	__ZL21win_silentfocuschange, %eax
	testl	%eax, %eax
	jne	L246
	movl	%ebx, 16(%esp)
	movl	$LC19, 12(%esp)
	movl	$165, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L246
	.p2align 4,,10
	.p2align 3
L285:
	movl	-60(%ebp), %edx
	movl	%edx, __ZZ17windowsSetupTimerbE12timePeriodNT
	testl	%eax, %eax
	js	L246
	movl	__ZL21win_silentfocuschange, %ebx
	testl	%ebx, %ebx
	jne	L246
	movl	%edx, -72(%ebp)
	movl	$0, -68(%ebp)
	fildq	-72(%ebp)
	fmull	LC14
	movl	$LC15, 12(%esp)
	movl	$140, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$0, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L246
	.p2align 4,,10
	.p2align 3
L284:
	movl	__imp__GetLastError@0, %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -72(%ebp)
	call	*%ecx
	movl	-64(%ebp), %edx
	movl	$0, -32(%ebp)
	movl	%eax, %esi
	leal	-48(%ebp), %eax
	movl	$0, -28(%ebp)
	movl	%edx, -36(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-72(%ebp)
	movl	%eax, -72(%ebp)
	movl	%esi, (%esp)
	call	*__imp__SetLastError@4
	subl	$4, %esp
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	-72(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 24(%esp)
	movl	-64(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	__ZZ17windowsSetupTimerbE12timePeriodNT, %eax
	movl	$LC13, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$113, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L250
	.p2align 4,,10
	.p2align 3
L253:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	$-2, %eax
	jl	L256
	movl	%edx, -76(%ebp)
	movl	__imp__GetLastError@0, %ebx
	movl	%ecx, -72(%ebp)
	call	*%ebx
	movl	-72(%ebp), %ecx
	movl	$0, -32(%ebp)
	movl	%eax, %esi
	leal	-48(%ebp), %eax
	movl	$0, -28(%ebp)
	movl	%ecx, -36(%ebp)
	movl	%ecx, -64(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*%ebx
	movl	%eax, -72(%ebp)
	movl	%esi, (%esp)
	call	*__imp__SetLastError@4
	subl	$4, %esp
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	-72(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	-64(%ebp), %ecx
	movl	$LC17, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$151, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-76(%ebp), %edx
	jmp	L256
	.p2align 4,,10
	.p2align 3
L286:
	movl	__imp__GetLastError@0, %ecx
	movl	%edx, -64(%ebp)
	movl	%ecx, -72(%ebp)
	call	*%ecx
	movl	$0, -32(%ebp)
	movl	%eax, %esi
	leal	-48(%ebp), %eax
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movl	%ebx, -36(%ebp)
	movl	%eax, 8(%esp)
	leal	-36(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-72(%ebp)
	movl	%eax, -72(%ebp)
	movl	%esi, (%esp)
	call	*__imp__SetLastError@4
	subl	$4, %esp
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	-72(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	-56(%ebp), %eax
	movl	$LC16, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$145, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-64(%ebp), %edx
	jmp	L256
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0
	.def	__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0:
LFB35:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	$1, %eax
	call	__Z17windowsSetupTimerb
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "Unable to decode name for locale ID '%d': %s.\0"
	.text
	.p2align 4
	.def	__ZL31windowsDecodeKeyboardLayoutNamePKc;	.scl	3;	.type	32;	.endef
__ZL31windowsDecodeKeyboardLayoutNamePKc:
LFB36:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 40
	movl	$16, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	$16, 12(%esp)
	movl	%eax, %esi
	movzwl	%ax, %eax
	movl	$__ZZL31windowsDecodeKeyboardLayoutNamePKcE10localeName, 8(%esp)
	movl	$92, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetLocaleInfoA@16
	.cfi_def_cfa_offset 24
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L294
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$__ZZL31windowsDecodeKeyboardLayoutNamePKcE10localeName, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L294:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L295
	movl	%ebx, %eax
L296:
	addl	$28, %esp
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
L295:
	.cfi_restore_state
	call	*__imp__GetLastError@0
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 12
	subl	$28, %esp
	.cfi_def_cfa_offset 40
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$618, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	%ebx, %eax
	jmp	L296
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z18AdLibDrv_MIDI_InitP9midifuncs
	.def	__Z18AdLibDrv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
__Z18AdLibDrv_MIDI_InitP9midifuncs:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$8, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ebx
	call	_MV_UnhookMusicRoutine
	call	__ZL11AL_Shutdownv.lto_priv.0
	movl	$0, 32(%ebx)
	xorl	%eax, %eax
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
L298:
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	movl	$0, 16(%ebx,%eax)
	movl	$0, 20(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L298
	movl	$__ZL9AL_NoteOniii.lto_priv.0, 4(%esp)
	movss	4(%esp), %xmm1
	xorl	%eax, %eax
	movss	LC22, %xmm0
	movl	$__ZL16AL_ProgramChangeii.lto_priv.0, 4(%esp)
	movl	$__ZL15AL_SetPitchBendiii.lto_priv.0, 24(%ebx)
	unpcklps	%xmm1, %xmm0
	movss	4(%esp), %xmm1
	movl	$__ZL12AL_SetVolumei.lto_priv.0, 36(%ebx)
	movlps	%xmm0, (%ebx)
	movss	LC23, %xmm0
	movl	$255, __ZL9AL_Volume.lto_priv.0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 12(%ebx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z26AdLibDrv_MIDI_HaltPlaybackv
	.def	__Z26AdLibDrv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
__Z26AdLibDrv_MIDI_HaltPlaybackv:
LFB38:
	.cfi_startproc
	jmp	_MV_UnhookMusicRoutine
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z22AdLibDrv_MIDI_Shutdownv
	.def	__Z22AdLibDrv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
__Z22AdLibDrv_MIDI_Shutdownv:
LFB39:
	.cfi_startproc
	call	_MV_UnhookMusicRoutine
	jmp	__ZL11AL_Shutdownv.lto_priv.0
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z27AdLibDrv_MIDI_StartPlaybackv
	.def	__Z27AdLibDrv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
__Z27AdLibDrv_MIDI_StartPlaybackv:
LFB40:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$-1431655765, %ebx
	call	_MV_UnhookMusicRoutine
	call	__ZL11AL_Shutdownv.lto_priv.0
	xorl	%ecx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L305:
	movl	%ecx, %eax
	movl	%ecx, %esi
	mull	%ebx
	shrl	$3, %edx
	leal	(%edx,%edx,2), %eax
	movl	%edx, __ZL9NoteDiv12(,%ecx,4)
	sall	$2, %eax
	subl	%eax, %esi
	movl	%esi, __ZL9NoteMod12(,%ecx,4)
	addl	$1, %ecx
	cmpl	$96, %ecx
	jne	L305
	movl	$__Z21AdLibDrv_MIDI_Servicev, %eax
	call	_MV_HookMusicRoutine
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z21AdLibDrv_MIDI_Servicev
	.def	__Z21AdLibDrv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
__Z21AdLibDrv_MIDI_Servicev:
LFB42:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_MV_MusicBuffer, %ebp
	movl	$256, 28(%esp)
	movl	%ebp, %esi
L309:
	movl	_MV_MIDIRenderTimer, %eax
	movl	_MV_MIDIRenderTempo, %ecx
	cmpl	%eax, _MV_MixRate
	jle	L314
	jmp	L313
	.p2align 5
	.p2align 4,,10
	.p2align 3
L310:
	movl	_MV_MIDIRenderTimer, %eax
	movl	_MV_MixRate, %edx
	subl	%edx, %eax
	movl	%eax, _MV_MIDIRenderTimer
	cmpl	%eax, %edx
	jg	L313
L314:
	testl	%ecx, %ecx
	js	L310
L312:
	movl	__ZL16_MIDI_SongActive.lto_priv.0, %edx
	testl	%edx, %edx
	je	L482
	call	__Z19MIDI_ServiceRoutinev.part.0
	movl	_MV_MIDIRenderTempo, %ecx
	jmp	L310
L482:
	movl	_MV_MIDIRenderTimer, %eax
	movl	_MV_MixRate, %edx
	subl	%edx, %eax
	movl	%eax, _MV_MIDIRenderTimer
	cmpl	%eax, %edx
	jle	L312
L313:
	testl	%ecx, %ecx
	js	L315
	addl	%ecx, %eax
	movl	%eax, _MV_MIDIRenderTimer
L315:
	movl	__ZL7AL_Chip.lto_priv.0+3080, %ecx
	movl	__ZL7AL_Chip.lto_priv.0+3076, %ebx
	movzwl	__ZL7AL_Chip.lto_priv.0+3088, %ebp
	cmpl	%ecx, %ebx
	jg	L316
	movl	%esi, 24(%esp)
	.p2align 4
	.p2align 3
L395:
	movzwl	__ZL7AL_Chip.lto_priv.0+3090, %edx
	movzwl	%bp, %eax
	movl	$__ZL7AL_Chip.lto_priv.0+1008, %ebp
	sall	$16, %edx
	orl	%edx, %eax
	movl	$-32768, %edx
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3084
	movl	__ZL7AL_Chip.lto_priv.0+3064, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$32767, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movw	%ax, __ZL7AL_Chip.lto_priv.0+3090
	jmp	L380
	.p2align 4,,10
	.p2align 3
L487:
	movb	$1, 22(%esp)
	testb	%al, %al
	jne	L412
	movb	$15, 20(%esp)
L331:
	testb	$1, 8(%esp)
	je	L334
L488:
	cmpb	$0, 22(%esp)
	je	L334
	movzwl	16(%esp), %ecx
	notl	%ecx
	testw	$504, %cx
	je	L337
	testb	%dl, %dl
	jne	L414
	cmpw	$0, 16(%esp)
	jne	L415
L360:
	xorl	%ecx, %ecx
	movw	%cx, 32(%ebp)
L340:
	movb	$0, 37(%ebp)
L363:
	cmpb	$0, 21(%esp)
	jne	L365
L356:
	movb	$3, 37(%ebp)
L365:
	movzwl	42(%edi), %eax
	cmpb	$0, 40(%ebp)
	je	L366
L406:
	movzbl	3046(%esi), %ebx
	xorl	%edx, %edx
	testb	$3, %bl
	je	L367
	movl	%eax, %edx
	shrw	$7, %dx
	movl	%edx, %ecx
	shrl	%edx
	andl	$7, %ecx
	andl	$3, %edx
	testb	$1, %bl
	cmove	%ecx, %edx
L367:
	movzbl	3047(%esi), %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	andl	$4, %ebx
	cmovne	%ecx, %edx
	movsbw	%dl, %dx
	addl	%edx, %eax
L366:
	movzbl	44(%edi), %ecx
	movzwl	%ax, %ebx
	xorl	%edx, %edx
	sall	%cl, %ebx
	movl	20(%ebp), %ecx
	sarl	%ebx
	movl	%ecx, %eax
	shrl	$9, %eax
	cmpb	$0, 8(%esp)
	cmovne	%edx, %ecx
L371:
	movzbl	43(%ebp), %edx
	movzbl	__ZL2mt(%edx), %edx
	imull	%ebx, %edx
	shrl	%edx
	addl	%ecx, %edx
	movzbl	52(%ebp), %ecx
	movl	%edx, 20(%ebp)
	movl	3052(%esi), %edx
	movw	%ax, 24(%ebp)
	cmpb	$13, %cl
	je	L483
	movzbl	3045(%esi), %ebx
	cmpb	$17, %cl
	jne	L375
	andl	$32, %ebx
	je	L374
	movl	%eax, %ebx
	shrw	$5, %ax
	shrw	$3, %bx
	movl	%ebx, %ecx
	andl	$1, %ecx
	movb	%cl, 3072(%esi)
	movl	%eax, %ecx
	xorl	%ebx, %eax
	andl	$1, %ecx
	andl	$1, %eax
	movb	%cl, 3073(%esi)
	xorb	3069(%esi), %cl
	orl	%ecx, %eax
	movzbl	3068(%esi), %ecx
	xorb	3070(%esi), %cl
	orl	%eax, %ecx
	sall	$9, %ecx
	movl	%ecx, %eax
	orb	$-128, %al
	movw	%ax, 24(%ebp)
	.p2align 4
	.p2align 3
L374:
	movl	%edx, %ecx
	addl	$56, %ebp
	shrl	$14, %ecx
	xorl	%edx, %ecx
	shrl	%edx
	andl	$1, %ecx
	sall	$22, %ecx
	orl	%ecx, %edx
	movzwl	18(%esp), %ecx
	movl	%edx, 3052(%esi)
	movzbl	-6(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	-48(%ebp), %ecx
	addw	(%ecx), %ax
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	*__ZL12envelope_sin(,%edx,4)
	movw	%ax, -30(%ebp)
	movl	$__ZL7AL_Chip.lto_priv.0+3024, %eax
	cmpl	%ebp, %eax
	je	L484
L380:
	movl	0(%ebp), %edi
	xorl	%eax, %eax
	movzbl	45(%edi), %edx
	testb	%dl, %dl
	je	L317
	movswl	26(%ebp), %ecx
	movswl	30(%ebp), %eax
	addl	%ecx, %eax
	movl	$9, %ecx
	subl	%edx, %ecx
	sarl	%cl, %eax
L317:
	movzwl	26(%ebp), %edx
	movzwl	%ax, %eax
	movzbl	44(%ebp), %ecx
	movzwl	32(%ebp), %esi
	sall	$16, %edx
	movzbl	__ZL8kslshift(%ecx), %ecx
	orl	%edx, %eax
	movl	12(%ebp), %edx
	movw	%si, 16(%esp)
	movl	%eax, 28(%ebp)
	movzbl	45(%ebp), %eax
	movzbl	(%edx), %edx
	leal	(%edx,%eax,4), %eax
	movzbl	39(%ebp), %edx
	addl	%esi, %eax
	sarl	%cl, %edx
	addl	%edx, %eax
	movzbl	37(%ebp), %edx
	movw	%ax, 18(%esp)
	movw	%ax, 34(%ebp)
	movzbl	51(%ebp), %eax
	movb	%al, 21(%esp)
	testb	%al, %al
	je	L318
	cmpb	$3, %dl
	je	L485
	cmpb	$2, %dl
	je	L321
	ja	L322
L323:
	testb	%dl, %dl
	je	L486
	movzbl	47(%ebp), %eax
	movb	$0, 8(%esp)
	xorl	%ecx, %ecx
	leal	0(,%eax,4), %esi
	.p2align 4
	.p2align 3
L320:
	movl	%ecx, 16(%ebp)
	movzbl	42(%ebp), %ecx
	movzbl	48(%edi), %ebx
	xorl	$1, %ecx
	movzbl	%cl, %ecx
	addl	%ecx, %ecx
	sarl	%cl, %ebx
	leal	(%esi,%ebx), %ecx
	movl	4(%ebp), %esi
	movl	%ecx, %ebx
	shrb	$2, %bl
	movb	%bl, 20(%esp)
	movl	%ecx, %ebx
	andl	$3, %ebx
	movb	%bl, 23(%esp)
	testb	$16, 20(%esp)
	jne	L487
	testb	%al, %al
	jne	L332
	cmpb	$15, 20(%esp)
	sete	22(%esp)
	testb	$1, 8(%esp)
	jne	L488
	.p2align 4
	.p2align 3
L334:
	movzwl	16(%esp), %ecx
	notl	%ecx
	testw	$504, %cx
	je	L343
L491:
	testb	%dl, %dl
	jne	L416
	cmpw	$0, 16(%esp)
	jne	L345
	movb	$1, 37(%ebp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L352:
	andw	$511, %bx
	movw	%bx, 32(%ebp)
	cmpb	$0, 8(%esp)
	jne	L340
	jmp	L363
	.p2align 4,,10
	.p2align 3
L318:
	cmpb	$2, %dl
	je	L321
	jbe	L323
	cmpb	$3, %dl
	jne	L489
	movzbl	49(%ebp), %eax
	movb	$0, 8(%esp)
	xorl	%ecx, %ecx
	leal	0(,%eax,4), %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L483:
	movl	%eax, %edi
	movl	%eax, %ebx
	shrw	$2, %di
	shrw	$3, %bx
	movl	%edi, %ecx
	andl	$1, %ebx
	andl	$1, %ecx
	movb	%bl, 3069(%esi)
	movb	%cl, 3068(%esi)
	movl	%eax, %ecx
	shrw	$7, %cx
	movw	%cx, 8(%esp)
	movl	%eax, %ecx
	shrw	$8, %ax
	shrb	$7, %cl
	andl	$1, %eax
	movb	%cl, 3070(%esi)
	movb	%al, 3071(%esi)
	testb	$32, 3045(%esi)
	jne	L373
L378:
	movzwl	24(%ebp), %eax
	jmp	L374
	.p2align 4,,10
	.p2align 3
L375:
	andl	$32, %ebx
	je	L374
	cmpb	$17, %cl
	ja	L378
	cmpb	$16, %cl
	jne	L378
	movzbl	3071(%esi), %ecx
	movl	%edx, %eax
	andl	$1, %eax
	xorl	%ecx, %eax
	sall	$9, %ecx
	sall	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 24(%ebp)
	jmp	L374
	.p2align 4,,10
	.p2align 3
L332:
	cmpb	$11, 20(%esp)
	ja	L490
	movzbl	3041(%esi), %eax
	testb	%al, %al
	je	L334
	movzbl	23(%esp), %eax
	movzbl	20(%esp), %ebx
	addb	3042(%esi), %bl
	shrb	%al
	cmpb	$13, %bl
	je	L334
	movl	%ecx, %eax
	andl	$1, %eax
	cmpb	$14, %bl
	je	L334
	movzwl	16(%esp), %ecx
	cmpb	$12, %bl
	sete	%al
	notl	%ecx
	testw	$504, %cx
	jne	L491
	.p2align 4
	.p2align 3
L343:
	testb	%dl, %dl
	je	L345
	cmpb	$1, 8(%esp)
	je	L492
	cmpb	$1, %dl
	je	L404
L409:
	movl	$511, %eax
	movw	%ax, 32(%ebp)
	jmp	L363
	.p2align 4,,10
	.p2align 3
L412:
	movb	$15, 20(%esp)
	movl	$3, %eax
L330:
	movzwl	3024(%esi), %ebx
	movzbl	23(%esp), %ecx
	andl	$3, %ebx
	addb	__ZL10eg_incstep(%ebx,%ecx,4), %al
	testb	$4, %al
	jne	L413
	testb	%al, %al
	jne	L331
	movzbl	3041(%esi), %eax
	jmp	L331
	.p2align 4,,10
	.p2align 3
L322:
	movb	$0, 8(%esp)
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L320
	.p2align 4,,10
	.p2align 3
L337:
	testb	%dl, %dl
	jne	L360
	cmpb	$0, 21(%esp)
	je	L417
	xorl	%eax, %eax
	movw	%ax, 32(%ebp)
L354:
	movb	$0, 37(%ebp)
	movzwl	42(%edi), %eax
	cmpb	$0, 40(%ebp)
	jne	L406
	movzbl	44(%edi), %ecx
	movzwl	%ax, %ebx
	movl	20(%ebp), %eax
	sall	%cl, %ebx
	shrl	$9, %eax
	xorl	%ecx, %ecx
	sarl	%ebx
	jmp	L371
	.p2align 4,,10
	.p2align 3
L485:
	movzbl	46(%ebp), %eax
	movb	$1, 8(%esp)
	movl	$1, %ecx
	leal	0(,%eax,4), %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L321:
	movzbl	41(%ebp), %eax
	movb	%al, 8(%esp)
	testb	%al, %al
	jne	L322
	movzbl	49(%ebp), %eax
	xorl	%ecx, %ecx
	leal	0(,%eax,4), %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L486:
	movzbl	46(%ebp), %eax
	movb	$0, 8(%esp)
	xorl	%ecx, %ecx
	leal	0(,%eax,4), %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L414:
	xorl	%ebx, %ebx
L338:
	cmpb	$1, %dl
	je	L348
	subl	$2, %edx
	cmpb	$1, %dl
	ja	L352
	cmpb	$0, 8(%esp)
	jne	L493
	testb	%al, %al
	je	L362
L495:
	leal	-1(%eax), %ecx
	movl	$1, %edx
	sall	%cl, %edx
	addl	%ebx, %edx
	andw	$511, %dx
	movw	%dx, 32(%ebp)
	jmp	L363
	.p2align 4,,10
	.p2align 3
L348:
	movzwl	16(%esp), %ecx
	movzbl	48(%ebp), %edx
	shrw	$4, %cx
	cmpw	%dx, %cx
	je	L494
	cmpb	$0, 8(%esp)
	jne	L352
	testb	%al, %al
	jne	L495
L362:
	andw	$511, %bx
	movw	%bx, 32(%ebp)
	jmp	L363
	.p2align 4,,10
	.p2align 3
L416:
	movzwl	16(%esp), %ebx
	jmp	L338
	.p2align 4,,10
	.p2align 3
L413:
	movl	$3, %eax
	jmp	L331
	.p2align 4,,10
	.p2align 3
L373:
	movzbl	8(%esp), %ecx
	movzbl	3073(%esi), %eax
	xorl	%edi, %ecx
	xorl	%eax, %ebx
	xorb	3072(%esi), %al
	andl	$1, %ecx
	orl	%ecx, %ebx
	movl	%edx, %ecx
	orl	%eax, %ebx
	andl	$1, %ecx
	movl	%ebx, %eax
	movzbl	%bl, %ebx
	sall	$9, %eax
	cmpl	%ecx, %ebx
	je	L496
	orb	$-48, %al
	movw	%ax, 24(%ebp)
	jmp	L374
	.p2align 4,,10
	.p2align 3
L493:
	andw	$511, %bx
	movw	%bx, 32(%ebp)
	jmp	L340
	.p2align 4,,10
	.p2align 3
L345:
	movzwl	16(%esp), %edx
L339:
	cmpb	$0, 21(%esp)
	je	L353
	testb	%al, %al
	je	L424
	cmpb	$15, 20(%esp)
	je	L424
	movzwl	16(%esp), %ebx
	movl	$4, %ecx
	subl	%eax, %ecx
	notl	%ebx
	movl	%ebx, %eax
	sarl	%cl, %eax
	addl	%edx, %eax
	andw	$511, %ax
	movw	%ax, 32(%ebp)
	cmpb	$0, 8(%esp)
	jne	L354
L359:
	movzwl	42(%edi), %eax
	cmpb	$0, 40(%ebp)
	jne	L406
	movzbl	44(%edi), %ecx
	movzwl	%ax, %ebx
	sall	%cl, %ebx
	movl	20(%ebp), %ecx
	sarl	%ebx
	movl	%ecx, %eax
	shrl	$9, %eax
	jmp	L371
	.p2align 4,,10
	.p2align 3
L494:
	andw	$511, %bx
	movb	$2, 37(%ebp)
	movw	%bx, 32(%ebp)
	cmpb	$0, 8(%esp)
	jne	L340
	jmp	L363
	.p2align 4,,10
	.p2align 3
L417:
	xorl	%edx, %edx
L353:
	movl	%edx, %eax
	andw	$511, %ax
	movw	%ax, 32(%ebp)
	jmp	L356
	.p2align 4,,10
	.p2align 3
L496:
	orl	$52, %eax
	movw	%ax, 24(%ebp)
	jmp	L374
	.p2align 4,,10
	.p2align 3
L484:
	movl	$__ZL7AL_Chip.lto_priv.0+16, %edx
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L381:
	movl	(%ecx), %esi
	movl	4(%ecx), %eax
	addl	$56, %ecx
	movzwl	(%eax), %eax
	addw	(%esi), %ax
	movl	-48(%ecx), %esi
	addw	(%esi), %ax
	movl	-44(%ecx), %esi
	addw	(%esi), %ax
	cwtl
	imull	-40(%ecx), %eax
	sarl	$16, %eax
	addl	%eax, %ebx
	movl	$__ZL7AL_Chip.lto_priv.0+1024, %eax
	cmpl	%ecx, %eax
	jne	L381
	movl	$-32768, %eax
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+3060
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	movl	$32767, %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	xorl	%ecx, %ecx
	movw	%bx, __ZL7AL_Chip.lto_priv.0+3088
	movl	%ebx, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L382:
	movl	(%edx), %ebx
	movl	4(%edx), %eax
	addl	$56, %edx
	movzwl	(%eax), %eax
	addw	(%ebx), %ax
	movl	-48(%edx), %ebx
	addw	(%ebx), %ax
	movl	-44(%edx), %ebx
	addw	(%ebx), %ax
	cwtl
	imull	-36(%edx), %eax
	sarl	$16, %eax
	addl	%eax, %ecx
	cmpl	$__ZL7AL_Chip.lto_priv.0+1024, %edx
	jne	L382
	movzbl	__ZL7AL_Chip.lto_priv.0+3049, %esi
	movzwl	__ZL7AL_Chip.lto_priv.0+3024, %ebx
	movl	%ecx, __ZL7AL_Chip.lto_priv.0+3064
	movl	%esi, %eax
	movzbl	%al, %edx
	movl	%ebx, %eax
	notl	%eax
	testb	$63, %al
	jne	L383
	leal	1(%edx), %ecx
	movl	$-1677082467, %eax
	movl	%ecx, %edx
	shrl	%edx
	mull	%edx
	shrl	$6, %edx
	imull	$210, %edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movb	%dl, __ZL7AL_Chip.lto_priv.0+3049
	movl	%edx, %esi
L383:
	movzbl	__ZL7AL_Chip.lto_priv.0+3050, %ecx
	movl	$210, %eax
	movl	%edx, %edi
	subl	%edx, %eax
	movl	%esi, %edx
	sarl	%cl, %edi
	sarl	%cl, %eax
	cmpb	$104, %dl
	cmovbe	%edi, %eax
	movb	%al, __ZL7AL_Chip.lto_priv.0+3048
	movl	%ebx, %eax
	notl	%eax
	testw	$1023, %ax
	jne	L386
	movzbl	__ZL7AL_Chip.lto_priv.0+3046, %eax
	addl	$1, %eax
	andl	$7, %eax
	movb	%al, __ZL7AL_Chip.lto_priv.0+3046
L386:
	movl	__ZL7AL_Chip.lto_priv.0+3032, %esi
	movl	__ZL7AL_Chip.lto_priv.0+3036, %edi
	addl	$1, %ebx
	movb	$0, __ZL7AL_Chip.lto_priv.0+3042
	movw	%bx, __ZL7AL_Chip.lto_priv.0+3024
	movzwl	__ZL7AL_Chip.lto_priv.0+3040, %ebx
	movl	%esi, %eax
	orl	%edi, %eax
	jne	L420
	testw	%bx, %bx
	je	L389
L388:
	addl	$1, %esi
	movb	$0, __ZL7AL_Chip.lto_priv.0+3040
	adcl	$0, %edi
	movl	%esi, __ZL7AL_Chip.lto_priv.0+3032
	movl	%edi, __ZL7AL_Chip.lto_priv.0+3036
L389:
	movl	__ZL7AL_Chip.lto_priv.0+3104, %ebx
	movl	__ZL7AL_Chip.lto_priv.0+3100, %edx
	xorb	$1, __ZL7AL_Chip.lto_priv.0+3041
	movl	__ZL7AL_Chip.lto_priv.0+3096, %eax
	addl	$195, %ebx
	movl	%edx, %edi
	movl	%ebx, %ecx
	sall	$4, %ecx
	cmpl	__ZL7AL_Chip.lto_priv.0(%ecx), %eax
	sbbl	__ZL7AL_Chip.lto_priv.0+4(%ecx), %edi
	jnc	L394
	jmp	L392
	.p2align 4,,10
	.p2align 3
L393:
	andw	$511, %cx
	movzbl	__ZL7AL_Chip.lto_priv.0+10(%ebx), %edx
	movzwl	%cx, %eax
	movw	%cx, __ZL7AL_Chip.lto_priv.0+8(%ebx)
	call	_OPL3_WriteReg.constprop.0
	movl	__ZL7AL_Chip.lto_priv.0+3104, %eax
	movl	__ZL7AL_Chip.lto_priv.0+3100, %edx
	leal	1(%eax), %ebx
	movl	%edx, %edi
	movl	__ZL7AL_Chip.lto_priv.0+3096, %eax
	andl	$1023, %ebx
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+3104
	addl	$195, %ebx
	movl	%ebx, %ecx
	sall	$4, %ecx
	cmpl	__ZL7AL_Chip.lto_priv.0(%ecx), %eax
	sbbl	__ZL7AL_Chip.lto_priv.0+4(%ecx), %edi
	jc	L480
L394:
	sall	$4, %ebx
	movzwl	__ZL7AL_Chip.lto_priv.0+8(%ebx), %ecx
	testb	$2, %ch
	jne	L393
L480:
	movzwl	__ZL7AL_Chip.lto_priv.0+3088, %ebp
L392:
	movl	__ZL7AL_Chip.lto_priv.0+3080, %ecx
	movl	__ZL7AL_Chip.lto_priv.0+3076, %ebx
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3096
	subl	%ebx, %ecx
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3100
	movl	%ecx, __ZL7AL_Chip.lto_priv.0+3080
	cmpl	%ecx, %ebx
	jle	L395
	movl	24(%esp), %esi
L316:
	movswl	__ZL7AL_Chip.lto_priv.0+3084, %eax
	movl	%ebx, %edi
	movswl	%bp, %ebp
	xorps	%xmm1, %xmm1
	movss	_AL_PostAmp, %xmm2
	subl	%ecx, %edi
	imull	%ecx, %ebp
	imull	%edi, %eax
	cvtsi2ssl	__ZL9AL_Volume.lto_priv.0, %xmm1
	addl	%ebp, %eax
	cltd
	idivl	%ebx
	movswl	__ZL7AL_Chip.lto_priv.0+3090, %edx
	imull	%ecx, %edx
	addl	$1024, %ecx
	movl	%ecx, __ZL7AL_Chip.lto_priv.0+3080
	movl	%eax, %ebp
	movswl	__ZL7AL_Chip.lto_priv.0+3086, %eax
	movswl	%bp, %ebp
	imull	%edi, %eax
	addl	%edx, %eax
	cltd
	idivl	%ebx
	cmpl	$2, _MV_Channels
	je	L497
	movss	LC25, %xmm5
	cwtl
	xorps	%xmm0, %xmm0
	addl	%eax, %ebp
	movl	$-32768, %eax
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	mulss	LC27, %xmm0
	comiss	%xmm0, %xmm5
	jnb	L400
	movss	LC26, %xmm2
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	cvttss2sil	%xmm1, %eax
L400:
	movw	%ax, (%esi)
	addl	$2, %esi
L399:
	subl	$1, 28(%esp)
	jne	L309
	addl	$32, %esp
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
L404:
	.cfi_restore_state
	movzwl	16(%esp), %edx
	movzbl	48(%ebp), %eax
	shrw	$4, %dx
	cmpw	%dx, %ax
	jne	L409
	movl	$511, %edx
	movb	$2, 37(%ebp)
	movw	%dx, 32(%ebp)
	jmp	L363
	.p2align 4,,10
	.p2align 3
L489:
	movb	$0, 8(%esp)
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	L320
L424:
	movl	%edx, %eax
	andw	$511, %ax
	movw	%ax, 32(%ebp)
	cmpb	$0, 8(%esp)
	je	L359
	jmp	L354
	.p2align 4,,10
	.p2align 3
L420:
	xorl	%ecx, %ecx
	jmp	L387
	.p2align 4,,10
	.p2align 3
L391:
	addl	$1, %ecx
	cmpl	$36, %ecx
	je	L390
L387:
	movl	%edi, %edx
	movl	%esi, %eax
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L498
	movl	%edx, %eax
L498:
	andl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, 8(%esp)
	movl	8(%esp), %eax
	movl	%edx, 12(%esp)
	orl	12(%esp), %eax
	je	L391
	cmpb	$12, %cl
	ja	L390
	addl	$1, %ecx
	movb	%cl, __ZL7AL_Chip.lto_priv.0+3042
L390:
	testw	%bx, %bx
	je	L389
	movl	%esi, %eax
	movl	%edi, %edx
	notl	%eax
	xorl	$15, %edx
	orl	%edx, %eax
	jne	L388
	movl	$0, __ZL7AL_Chip.lto_priv.0+3032
	movl	$0, __ZL7AL_Chip.lto_priv.0+3036
	movb	$1, __ZL7AL_Chip.lto_priv.0+3040
	jmp	L389
L492:
	movzwl	16(%esp), %ecx
	andw	$511, %cx
	movw	%cx, 32(%ebp)
	jmp	L340
L497:
	xorps	%xmm0, %xmm0
	movl	$-32768, %edx
	movss	LC24, %xmm3
	movss	LC25, %xmm6
	cvtsi2ssl	%ebp, %xmm0
	mulss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	comiss	%xmm0, %xmm6
	jnb	L397
	movss	LC26, %xmm4
	movaps	%xmm4, %xmm2
	cmpless	%xmm0, %xmm2
	andps	%xmm2, %xmm4
	andnps	%xmm0, %xmm2
	orps	%xmm4, %xmm2
	cvttss2sil	%xmm2, %edx
L397:
	movss	LC25, %xmm7
	cwtl
	xorps	%xmm0, %xmm0
	movw	%dx, (%esi)
	cvtsi2ssl	%eax, %xmm0
	movl	$-32768, %eax
	mulss	_AL_PostAmp, %xmm0
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	comiss	%xmm0, %xmm7
	jnb	L398
	movss	LC26, %xmm2
	movaps	%xmm2, %xmm1
	cmpless	%xmm0, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	cvttss2sil	%xmm1, %eax
L398:
	movw	%ax, 2(%esi)
	addl	$4, %esi
	jmp	L399
L415:
	movb	$15, 20(%esp)
	xorl	%edx, %edx
	jmp	L339
L490:
	movzbl	20(%esp), %ebx
	movl	%ebx, %eax
	andl	$3, %eax
	cmpb	$15, %bl
	sete	22(%esp)
	jmp	L330
	.cfi_endproc
LFE42:
	.section	.text.unlikely,"x"
LCOLDB28:
	.text
LHOTB28:
	.p2align 4
	.globl	__Z16timerUpdateClockv
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
__Z16timerUpdateClockv:
LFB53:
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
	jne	L520
L517:
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
L520:
	.cfi_restore_state
	movl	__ZZ12enet_gettimeE11initialized.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L516
	leal	-32(%ebp), %eax
	movl	__imp__QueryPerformanceCounter@4, %ebx
	movl	%eax, -48(%ebp)
L501:
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
	js	L521
	sall	$16, %eax
	xorl	%edx, %edx
L504:
	orl	%eax, %esi
	xorl	%eax, %eax
	orl	%edx, %edi
	cmpl	%ebx, %eax
	sbbl	-48(%ebp), %eax
	movl	%esi, _totalclock+8
	movl	%edi, _totalclock+12
	jge	L517
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
	call	_tabledivide64.lto_priv.12
	movl	-48(%ebp), %esi
	imull	%ebx, %edx
	imull	%eax, %esi
	leal	(%edx,%esi), %ecx
	mull	%ebx
	addl	%ecx, %edx
	addl	%eax, _clockLastSampleTime
	movl	__ZL17usertimercallback, %eax
	adcl	%edx, _clockLastSampleTime+4
	testl	%eax, %eax
	je	L517
	testl	%ebx, %ebx
	jg	L505
	jmp	L517
	.p2align 4,,10
	.p2align 3
L522:
	movl	__ZL17usertimercallback, %eax
L505:
	call	*%eax
	subl	$1, %ebx
	jne	L522
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
L516:
	.cfi_restore_state
	movl	$1, __ZZ12enet_gettimeE11initialized.lto_priv.0
	leal	-32(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L502
	movl	$__ZZ12enet_gettimeE6offset.lto_priv.0, (%esp)
	movl	__imp__QueryPerformanceCounter@4, %ebx
	call	*%ebx
	fildq	-32(%ebp)
	fdivs	LC3
	subl	$4, %esp
	fstpl	__ZZ12enet_gettimeE23frequencyToMicroseconds.lto_priv.0
	jmp	L501
	.p2align 4,,10
	.p2align 3
L521:
	andl	$65535, %eax
	negl	%eax
	xorl	%edx, %edx
	sall	$16, %eax
	jmp	L504
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z16timerUpdateClockv.cold;	.scl	3;	.type	32;	.endef
__Z16timerUpdateClockv.cold:
LFSB53:
L502:
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	.cfi_escape 0x10,0x5,0x2,0x75,0
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_offset 7, -8
	call	_abort
	.cfi_endproc
LFE53:
	.text
	.section	.text.unlikely,"x"
LCOLDE28:
	.text
LHOTE28:
	.p2align 4
	.globl	__Z26timerGetPerformanceCounterv
	.def	__Z26timerGetPerformanceCounterv;	.scl	2;	.type	32;	.endef
__Z26timerGetPerformanceCounterv:
LFB54:
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
	je	L524
	cmpl	$3, %eax
	jne	L528
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
L528:
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
L524:
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
LFE54:
	.p2align 4
	.globl	__Z9timerIniti.isra.0
	.def	__Z9timerIniti.isra.0;	.scl	2;	.type	32;	.endef
__Z9timerIniti.isra.0:
LFB57:
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
	pushl	%ebx
	andl	$-8, %esp
	subl	$48, %esp
	.cfi_offset 3, -20
	movl	__ZZ9timerInitiE8initDone, %eax
	testl	%eax, %eax
	je	L539
L530:
	movl	$10000, %eax
	movl	%esi, __ZL19clockTicksPerSecond.lto_priv.0
	mull	%esi
	movl	%eax, 32(%esp)
	leal	40(%esp), %eax
	movl	%edx, 36(%esp)
	call	_enet_gettime.constprop.0.isra.0
	movl	44(%esp), %eax
	movl	32(%esp), %ebx
	movl	$1000000000, 8(%esp)
	movl	36(%esp), %esi
	movl	$0, 12(%esp)
	movl	%eax, %ecx
	movl	%eax, %edx
	sarl	$31, %ecx
	imull	%esi, %edx
	imull	%ebx, %ecx
	addl	%edx, %ecx
	mull	%ebx
	addl	%ecx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	40(%esp), %ecx
	movl	$0, __ZL17usertimercallback
	movl	%eax, 24(%esp)
	movl	%ecx, %eax
	movl	%edx, 28(%esp)
	cltd
	movl	%edx, %eax
	movl	36(%esp), %edx
	imull	%ebx, %eax
	imull	%ecx, %edx
	leal	(%eax,%edx), %esi
	movl	32(%esp), %eax
	mull	%ecx
	addl	%esi, %edx
	addl	24(%esp), %eax
	adcl	28(%esp), %edx
	movl	%eax, _clockLastSampleTime
	movl	%edx, _clockLastSampleTime+4
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
L539:
	.cfi_restore_state
	movl	$__ZL16osdcmd_sys_timerPK13osdfuncparm_t, %edx
	movl	$__ZZ9timerInitiE14sys_timer_cvar, %eax
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	movl	$1, (%esp)
	call	_SDL_InitSubSystem
	movl	__ZL8tsc_freq.lto_priv.0, %eax
	orl	__ZL8tsc_freq.lto_priv.0+4, %eax
	je	L540
L531:
	movl	$1, __ZZ9timerInitiE8initDone
	jmp	L530
	.p2align 4,,10
	.p2align 3
L540:
	leal	40(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	44(%esp), %eax
	fildl	44(%esp)
	cltd
	testl	%edx, %edx
	jns	L532
	fadds	LC2
L532:
	fstpl	32(%esp)
	fldl	32(%esp)
	fmuls	LC29
	fdivs	LC30
	fildl	40(%esp)
	fmuls	LC29
	faddp	%st, %st(1)
	fadds	LC31
	fstpl	24(%esp)
/APP
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
	.p2align 4
	.p2align 3
/NO_APP
L534:
	leal	40(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	44(%esp), %eax
	fildl	44(%esp)
	cltd
	testl	%edx, %edx
	jns	L533
	fadds	LC2
L533:
	fstpl	32(%esp)
	fldl	32(%esp)
	fmuls	LC29
	fdivs	LC30
	fildl	40(%esp)
	fmuls	LC29
	faddp	%st, %st(1)
	fldl	24(%esp)
	fcomip	%st(1), %st
	fstp	%st(0)
	ja	L534
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
 # 53 "source/build/include/rdtsc.h" 1
	.byte 0x0f, 0x31
 # 0 "" 2
/NO_APP
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
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
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
/APP
 # 78 "source/build/src/timer.cpp" 1
	xor %eax, %eax
cpuid
 # 0 "" 2
/NO_APP
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	subl	24(%esp), %eax
	sbbl	28(%esp), %edx
	subl	16(%esp), %eax
	sbbl	20(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	sall	$2, %ecx
	shldl	$2, %eax, %ebx
	addl	%eax, %ecx
	adcl	%edx, %ebx
	addl	%ecx, %ecx
	adcl	%ebx, %ebx
	movl	%ecx, __ZL8tsc_freq.lto_priv.0
	movl	%ebx, __ZL8tsc_freq.lto_priv.0+4
	jmp	L531
	.cfi_endproc
LFE57:
	.section .rdata,"dr"
LC32:
	.ascii "Using directory %s\0"
LC33:
	.ascii "source/build/src/vfs.cpp\0"
	.text
	.p2align 4
	.globl	_addsearchpath_user
	.def	_addsearchpath_user;	.scl	2;	.type	32;	.endef
_addsearchpath_user:
LFB60:
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
	je	L542
	movl	%ebp, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	movl	%ebx, (%esp)
	call	_strlen
	cmpb	$92, -1(%ebx,%eax)
	jne	L544
	movb	$0, -1(%ebx,%eax)
L544:
	leal	24(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	movl	_g_sm_heap, %ecx
	testl	%eax, %eax
	js	L562
	testb	$64, 31(%esp)
	je	L563
	movl	$16, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %esi
	testl	%eax, %eax
	je	L548
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
	je	L564
	movl	%eax, 4(%esi)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	4(%esi), %ebp
	movl	%ebp, %eax
	cmpb	$0, 0(%ebp)
	je	L552
	.p2align 4
	.p2align 4
	.p2align 3
L551:
	movl	%eax, %edx
	addl	$1, %eax
	cmpb	$0, (%eax)
	jne	L551
	cmpl	%ebp, %edx
	jb	L552
	movzbl	-1(%eax), %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L553
L552:
	movl	%ebp, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, 0(%ebp,%eax)
	movl	4(%esi), %ebp
L553:
	movl	%esi, __ZL14searchpathhead.lto_priv.0
	movl	8(%esi), %eax
	cmpl	%eax, __ZL16maxsearchpathlen
	jnb	L554
	movl	%eax, __ZL16maxsearchpathlen
L554:
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
	js	L555
	movl	4(%esi), %eax
	movl	$LC32, 12(%esp)
	movl	$190, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC33, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L555:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
L541:
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
L562:
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
L542:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L548:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L564:
	movl	%ebp, %eax
	call	__Z13handle_memerri
L563:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	movl	$-1, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	jmp	L541
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	_findfrompath
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
_findfrompath:
LFB61:
	.cfi_startproc
	testl	%eax, %eax
	je	L597
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movzbl	(%eax), %eax
	testb	%al, %al
	je	L566
	movl	%edx, 20(%esp)
	movl	_pathsearchmode, %edx
	movl	%ebx, 24(%esp)
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	testl	%edx, %edx
	je	L600
	jmp	L602
	.p2align 4,,10
	.p2align 3
L573:
	addl	$1, %esi
L601:
	movzbl	(%esi), %eax
L600:
	cmpb	$47, _toupperlookup(%eax)
	je	L573
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
	je	L574
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
	je	L603
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
	jne	L604
	movl	__ZL14searchpathhead.lto_priv.0, %edi
	testl	%edi, %edi
	jne	L584
	jmp	L580
	.p2align 4,,10
	.p2align 3
L606:
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
	jne	L605
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	movl	(%edi), %edi
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%edi, %edi
	je	L580
L584:
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
	jne	L606
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L604:
	movl	20(%esp), %eax
	movl	%ebp, (%eax)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
L579:
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
L602:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	*__imp__GetFileAttributesA@4
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	cmpl	$-1, %eax
	je	L601
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
	je	L571
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	20(%esp), %eax
	movb	$0, (%ebx,%ebp)
	movl	%ebx, (%eax)
	jmp	L579
	.p2align 4,,10
	.p2align 3
L580:
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
L566:
	movl	28(%esp), %esi
	movl	$-1, %eax
	addl	$40, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L605:
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
	jmp	L579
	.p2align 4,,10
	.p2align 3
L574:
	movl	%edi, %eax
	call	__Z13handle_memerri
L603:
	movl	%esi, %eax
	call	__Z13handle_memerri
L571:
	movl	%edi, %eax
	call	__Z13handle_memerri
L597:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.def	__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0;	.scl	3;	.type	32;	.endef
__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0:
LFB63:
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
	je	L608
	movzbl	(%eax), %eax
	cmpb	$47, _toupperlookup(%eax)
	jne	L668
	.p2align 4
	.p2align 4
	.p2align 3
L616:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	cmpb	$47, _toupperlookup(%eax)
	je	L616
	cmpb	$0, 36(%esp)
	jne	L669
	movl	%esi, %eax
	cmpb	$1, %al
	je	L667
L623:
	movl	_numgroupfiles, %ecx
	subl	$1, %ecx
	js	L670
	movl	%ebp, 28(%esp)
	movl	%ebx, %edx
	.cfi_offset 5, -8
L631:
	movl	__ZL8groupfil(,%ecx,4), %eax
	testl	%eax, %eax
	js	L625
	movl	__ZL9gnumfiles(,%ecx,4), %eax
	movl	%eax, %esi
	subl	$1, %esi
	js	L625
	movl	__ZL9gfilelist.lto_priv.0(,%ecx,4), %ebx
	sall	$4, %eax
	movl	%ecx, %ebp
	movl	%esi, %ecx
	movl	%edx, %esi
	leal	-16(%ebx,%eax), %edx
L630:
	movl	%ecx, 12(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L628:
	movzbl	(%esi,%eax), %ecx
	testb	%cl, %cl
	je	L626
	movzbl	(%edx,%eax), %ebx
	movzbl	_toupperlookup(%ebx), %ebx
	cmpb	%bl, _toupperlookup(%ecx)
	jne	L664
	addl	$1, %eax
	cmpl	$13, %eax
	jne	L628
	movl	12(%esp), %ecx
	cmpb	$0, 13(%esi)
	jne	L627
L635:
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
L624:
	movl	%edi, %ecx
L607:
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
L669:
	.cfi_restore_state
	movl	__ZL9kzcurhand.lto_priv.0, %eax
	cmpl	%eax, %edi
	je	L620
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L620
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	js	L620
L636:
	testl	%eax, %eax
	js	L621
	movl	52(%esp), %edx
	movl	%ecx, (%edx,%eax,4)
	movl	_kzfs, %edx
	testl	%edx, %edx
	jne	L621
L622:
	movl	$-1, __ZL9kzcurhand.lto_priv.0
L620:
	movl	%esi, %eax
	cmpb	$1, %al
	je	L667
L639:
	movl	%ebx, %eax
	call	__ZL8kzipopenPKc
	testl	%eax, %eax
	je	L623
	movl	44(%esp), %edx
	movl	%edi, __ZL9kzcurhand.lto_priv.0
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
	jmp	L624
	.p2align 4,,10
	.p2align 3
L664:
	.cfi_offset 5, -8
	movl	12(%esp), %ecx
L627:
	subl	$1, %ecx
	subl	$16, %edx
	cmpl	$-1, %ecx
	jne	L630
L671:
	movl	%ebp, %ecx
	movl	%esi, %edx
	.p2align 4
	.p2align 3
L625:
	subl	$1, %ecx
	jnb	L631
	movl	28(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L607
	.p2align 4,,10
	.p2align 3
L626:
	.cfi_restore_state
	movl	12(%esp), %ecx
	cmpb	$0, (%edx,%eax)
	je	L635
	subl	$1, %ecx
	subl	$16, %edx
	cmpl	$-1, %ecx
	jne	L630
	jmp	L671
	.p2align 4,,10
	.p2align 3
L608:
	.cfi_restore 5
	movl	%edx, 12(%esp)
	call	_findfrompath
	cmpl	$-1, %eax
	je	L612
	movl	12(%esp), %edx
	movl	$256, 8(%esp)
	movl	$32768, 4(%esp)
	movl	(%edx), %eax
	movl	%eax, (%esp)
	call	_open
	testl	%eax, %eax
	jns	L613
L612:
	movzbl	(%ebx), %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L616
	cmpb	$0, 36(%esp)
	je	L623
	movl	__ZL9kzcurhand.lto_priv.0, %eax
	cmpl	%eax, %edi
	je	L639
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L639
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	jns	L636
	jmp	L639
	.p2align 4,,10
	.p2align 3
L668:
	cmpb	$0, 36(%esp)
	jne	L610
	.p2align 4
	.p2align 3
L667:
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	jmp	L631
	.p2align 4,,10
	.p2align 3
L613:
	.cfi_restore 5
	movl	44(%esp), %edx
	movb	$-1, (%edx,%edi)
	movl	48(%esp), %edx
	movl	%eax, (%edx,%edi,4)
	movl	52(%esp), %eax
	movl	$0, (%eax,%edi,4)
	jmp	L624
L621:
	movl	%edx, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L622
L610:
	movl	__ZL9kzcurhand.lto_priv.0, %eax
	cmpl	%eax, %edi
	je	L667
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L667
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	jns	L636
	jmp	L667
L670:
	movl	$-1, %ecx
	jmp	L607
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	_uninitgroupfile
	.def	_uninitgroupfile;	.scl	2;	.type	32;	.endef
_uninitgroupfile:
LFB66:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_numgroupfiles, %ebx
	subl	$1, %ebx
	js	L673
	.p2align 4
	.p2align 3
L675:
	cmpl	$-1, __ZL8groupfil(,%ebx,4)
	je	L674
	movl	__ZL9gfilelist.lto_priv.0(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	__ZL9gfileoffs(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL9gfilelist.lto_priv.0(,%ebx,4)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	__ZL9groupname(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL9gfileoffs(,%ebx,4)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	__ZL8groupfil(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, __ZL9groupname(,%ebx,4)
	movl	%eax, (%esp)
	call	_close
	movl	$-1, __ZL8groupfil(,%ebx,4)
L674:
	subl	$1, %ebx
	jnb	L675
L673:
	movl	$0, _numgroupfiles
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L677:
	cmpb	$-3, __ZL7filegrp.lto_priv.0(%eax)
	ja	L676
	movl	$-1, __ZL7filehan.lto_priv.0(,%eax,4)
L676:
	addl	$1, %eax
	cmpl	$64, %eax
	jne	L677
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z14kread_internaliPviPKhPKiPi
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
__Z14kread_internaliPviPKhPKiPi:
LFB67:
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
	je	L837
	movl	%ecx, 40(%esp)
	movl	%eax, %edi
	movl	%edx, 32(%esp)
	cmpl	$254, %esi
	je	L838
	movl	__ZL8groupfil(,%esi,4), %eax
	cmpl	$-1, %eax
	je	L686
	movzbl	__ZL11groupfilgrp(%esi), %ecx
	cmpb	$-1, %cl
	je	L769
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L764:
	movzbl	%cl, %ebx
	movl	__ZL9gfileoffs(,%ebx,4), %ecx
	addl	(%ecx,%eax,4), %edx
	movzbl	__ZL11groupfilgrp(%ebx), %ecx
	movl	__ZL8groupfil(,%ebx,4), %eax
	cmpb	$-1, %cl
	jne	L764
	movl	%edx, 16(%esp)
	cmpl	$-1, %eax
	je	L686
L763:
	movl	__ZL9gfileoffs(,%esi,4), %edx
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
	je	L765
	movl	%edx, 4(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 28(%esp)
	call	_lseek
	movl	28(%esp), %edx
	movl	__ZL9gfileoffs(,%esi,4), %esi
	movl	44(%esp), %ecx
	movl	%edx, __ZL11groupfilpos(,%ebx,4)
	movl	(%esi,%ecx,4), %eax
	movl	%esi, 28(%esp)
	movl	%eax, 24(%esp)
	movl	36(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
L765:
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
	movl	__ZL8groupfil(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_read
	movl	36(%esp), %esi
	addl	%eax, (%esi)
	addl	%eax, __ZL11groupfilpos(,%ebx,4)
L681:
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
L838:
	.cfi_restore_state
	movl	__ZL9kzcurhand.lto_priv.0, %edx
	movl	_kzfs, %eax
	cmpl	%edi, %edx
	jne	L839
L684:
	testl	%eax, %eax
	je	L686
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	jg	L689
L686:
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
L837:
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
L839:
	.cfi_restore_state
	testl	%eax, %eax
	je	L685
	movl	_kzfs+24, %eax
	testl	%eax, %eax
	jns	L840
L685:
	imull	$260, %edi, %eax
	movl	%edi, __ZL9kzcurhand.lto_priv.0
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L686
	movl	36(%esp), %esi
	xorl	%ecx, %ecx
	movl	(%esi,%edi,4), %edx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movl	_kzfs+20, %ecx
	cmpl	%edx, %ecx
	jl	L687
	movl	%edx, _kzfs+24
	jmp	L684
	.p2align 4,,10
	.p2align 3
L689:
	movl	_kzfs+24, %edx
	movl	_kzfs+4, %ebx
	movl	%edx, %ecx
	testl	%ebx, %ebx
	jne	L692
	cmpl	%edx, _kzfs+36
	jne	L841
L693:
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
L694:
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
L687:
	.cfi_restore_state
	movl	%ecx, _kzfs+24
	jmp	L684
	.p2align 4,,10
	.p2align 3
L692:
	cmpl	$8, %ebx
	jne	L694
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
	je	L686
	movl	__ZL7gslidew, %esi
	movl	%esi, 44(%esp)
	subl	$32768, %esi
	cmpl	%edx, %esi
	jle	L695
	movl	_kzfs+16, %edx
	testl	%edx, %edx
	jne	L842
L696:
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
	je	L766
	cmpl	$3, %eax
	je	L698
	cmpl	$1, %eax
	je	L843
	movl	olinbuf, %ebx
	movl	$-1048541, __ZL6bitpos.lto_priv.0
	movl	%ebx, %eax
	shrl	%ebx
	andl	$1, %eax
	movl	%eax, 44(%esp)
	andl	$3, %ebx
	je	L844
L713:
	cmpl	$3, %ebx
	je	L723
	cmpl	$1, %ebx
	jne	L724
	movl	$8, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+576, %edx
	movl	$__ZL4clen.lto_priv.0, %eax
	shufps	$0, %xmm0, %xmm0
L725:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	$__ZL4clen.lto_priv.0+576, %eax
	jne	L725
	movl	$9, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1024, %eax
	shufps	$0, %xmm0, %xmm0
L726:
	movups	%xmm0, (%edx)
	addl	$32, %edx
	movups	%xmm0, -16(%edx)
	cmpl	%edx, %eax
	jne	L726
	movl	$7, 36(%esp)
	movss	36(%esp), %xmm0
	movl	$__ZL4clen.lto_priv.0+1120, %edx
	shufps	$0, %xmm0, %xmm0
L727:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L727
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
L728:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L728
	movl	$32, 32(%esp)
	movl	$1152, %ebx
	movl	$288, %esi
L729:
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
L754:
	movl	__ZL7gslider, %esi
	cmpl	%ebx, %esi
	jle	L845
L747:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
L709:
	movl	(%ebx,%edx), %edx
	shrl	%cl, %edx
	andl	$511, %edx
	movl	%edx, %ecx
	movzbl	__ZL8qhufbit0.lto_priv.0(%edx), %edx
	testb	%dl, %dl
	je	L750
	addl	%eax, %edx
	movl	__ZL8qhufval0.lto_priv.0(,%ecx,4), %esi
	movl	%edx, __ZL6bitpos.lto_priv.0
	js	L752
	call	__ZL17suckbitsnextblockv.lto_priv.0
L752:
	cmpl	$255, %esi
	jle	L846
	cmpl	$256, %esi
	je	L723
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
	js	L755
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L755:
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
	je	L756
	addl	%eax, %ecx
	movl	__ZL8qhufval1.lto_priv.0(,%ebx,4), %esi
	movl	%ecx, __ZL6bitpos.lto_priv.0
	js	L758
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
L758:
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
	js	L759
	movl	%eax, 28(%esp)
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	28(%esp), %eax
L759:
	movl	__ZL7gslidew, %ebx
	testl	%edi, %edi
	je	L754
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
L760:
	movl	%eax, %edx
	andl	$32767, %edx
	movzbl	__ZL8slidebuf.lto_priv.0(%edx), %ecx
	leal	(%edi,%eax), %edx
	addl	$1, %eax
	andl	$32767, %edx
	movb	%cl, __ZL8slidebuf.lto_priv.0(%edx)
	cmpl	%eax, %esi
	jne	L760
	movl	%ebx, __ZL7gslidew
	jmp	L754
	.p2align 4,,10
	.p2align 3
L840:
	movl	36(%esp), %esi
	movl	%eax, (%esi,%edx,4)
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L685
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _kzfs
	jmp	L685
	.p2align 4,,10
	.p2align 3
L769:
	movl	$0, 16(%esp)
	movl	%esi, %ebx
	jmp	L763
L841:
	addl	_kzfs+8, %edx
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	movl	_kzfs+24, %edx
	movl	_kzfs, %eax
	movl	%edx, _kzfs+36
	jmp	L693
L695:
	xorl	%eax, %eax
	testl	%esi, %esi
	movl	%ebx, 36(%esp)
	cmovs	%eax, %esi
	cmpl	%ebx, 44(%esp)
	jge	L701
	movl	__ZL7gslider, %eax
	subl	$16384, %eax
	movl	%eax, 36(%esp)
L701:
	movl	%esi, %eax
	andl	$32767, %eax
	cmpl	%ecx, %esi
	movl	%eax, 32(%esp)
	movl	36(%esp), %eax
	cmovge	%esi, %ecx
	xorl	%esi, %eax
	testb	$-128, %ah
	movl	36(%esp), %eax
	jne	L702
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%ecx, %eax
	jg	L847
L703:
	cmpl	%ebx, 44(%esp)
	jge	L836
	movl	_kzfs+32, %eax
	cmpl	$2, %eax
	je	L705
	cmpl	$3, %eax
	je	L698
	cmpl	$1, %eax
	je	L848
L707:
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
	js	L849
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %ecx
	movl	__ZL6filptr.lto_priv.0, %eax
	movl	%ecx, %ebx
	leal	2(%ecx), %edx
	andl	$7, %ecx
	sarl	$3, %ebx
L711:
	movl	(%eax,%ebx), %eax
	movl	%edx, __ZL6bitpos.lto_priv.0
	shrl	%cl, %eax
	andl	$3, %eax
	movl	%eax, %ebx
	testl	%edx, %edx
	js	L712
	call	__ZL17suckbitsnextblockv.lto_priv.0
L712:
	testl	%ebx, %ebx
	jne	L713
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	%edx, %eax
	negl	%eax
	andl	$7, %eax
	addl	%edx, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L714
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
L714:
	movl	%eax, %ebx
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movl	(%edx,%ebx), %ebx
	shrl	%cl, %ebx
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L715
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %edx
L715:
	movl	%eax, %esi
	movl	%eax, %ecx
	sarl	$3, %esi
	andl	$7, %ecx
	movl	(%edx,%esi), %esi
	shrl	%cl, %esi
	addl	$16, %eax
	movl	%eax, __ZL6bitpos.lto_priv.0
	js	L716
	call	__ZL17suckbitsnextblockv.lto_priv.0
L716:
	movl	%esi, %eax
	xorl	%ebx, %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	jne	L768
	movzwl	%bx, %ebx
	jmp	L717
L722:
	movl	__ZL7gslider, %esi
	cmpl	%esi, __ZL7gslidew
	jge	L850
L718:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	addl	$8, %eax
	sarl	$3, %edx
	andl	$7, %ecx
L708:
	movl	(%esi,%edx), %esi
	movl	%eax, __ZL6bitpos.lto_priv.0
	shrl	%cl, %esi
	testl	%eax, %eax
	js	L700
	call	__ZL17suckbitsnextblockv.lto_priv.0
L700:
	movl	__ZL7gslidew, %eax
	subl	$1, %ebx
	leal	1(%eax), %edx
	andl	$32767, %eax
	movl	%edx, __ZL7gslidew
	movl	%esi, %edx
	movb	%dl, __ZL8slidebuf.lto_priv.0(%eax)
L717:
	testl	%ebx, %ebx
	jne	L722
L723:
	movl	44(%esp), %eax
	testl	%eax, %eax
	je	L707
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
	jne	L761
	movl	_kzfs+28, %ecx
	cmpl	%ecx, %ebx
	cmovle	%ebx, %ecx
	cmpl	%eax, %ecx
	jg	L851
L698:
	movl	$3, _kzfs+32
L836:
	movl	_kzfs+24, %ecx
	jmp	L694
L702:
	andl	$-32768, %eax
	cmpl	%ebx, %eax
	movl	%eax, 28(%esp)
	cmovg	%ebx, %eax
	cmpl	%ecx, %eax
	jg	L852
L704:
	movl	28(%esp), %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	36(%esp), %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	cmpl	%eax, %edx
	jge	L703
	leal	(%edi,%edx), %ecx
	subl	%edx, %eax
	subl	28(%esp), %edx
	addl	$__ZL8slidebuf.lto_priv.0, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_memcpy
	movl	_kzfs+28, %ebx
	jmp	L703
L842:
	movl	_kzfs+8, %edx
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fseek
	movl	_kzfs, %eax
	jmp	L696
L750:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %esi
	jmp	L752
L766:
	xorl	%ecx, %ecx
	movl	$-131068, %edx
	movl	$-1048544, %eax
	movl	$olinbuf+131068, %ebx
L697:
	movl	_kzfs+40, %esi
	movl	%esi, 44(%esp)
	jmp	L709
L843:
	movl	_kzfs+40, %eax
	movl	_kzfs+36, %ebx
	movl	$-1048536, __ZL6bitpos.lto_priv.0
	movl	olinbuf, %esi
	movl	%eax, 44(%esp)
	jmp	L700
L846:
	movl	__ZL7gslidew, %eax
	movl	%esi, %edx
	leal	1(%eax), %ebx
	andl	$32767, %eax
	movl	%ebx, __ZL7gslidew
	movb	%dl, __ZL8slidebuf.lto_priv.0(%eax)
	jmp	L754
L847:
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
	jmp	L703
L724:
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
	js	L730
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L730:
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
	js	L731
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L731:
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
	js	L732
	call	__ZL17suckbitsnextblockv.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L732:
	leal	4(%ebx), %edi
	movl	%esi, 28(%esp)
	xorl	%ebx, %ebx
	movl	%edi, 36(%esp)
	jmp	L734
L853:
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	__ZL6bitpos.lto_priv.0, %eax
L734:
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
	js	L733
	call	__ZL17suckbitsnextblockv.lto_priv.0
L733:
	movl	%esi, __ZL5cclen.lto_priv.0(,%edi,4)
	addl	$1, %ebx
	cmpl	%ebx, 36(%esp)
	jne	L853
	movl	36(%esp), %edi
	movl	28(%esp), %esi
	cmpl	$19, %edi
	je	L735
L736:
	movl	__ZL5ccind.lto_priv.0(,%edi,4), %eax
	addl	$1, %edi
	movl	$0, __ZL5cclen.lto_priv.0(,%eax,4)
	cmpl	$19, %edi
	jne	L736
L735:
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
	jmp	L746
L737:
	movl	__ZL6bitpos.lto_priv.0, %edx
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%edx, %eax
	movl	%edx, %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movl	(%ebx,%eax), %eax
	shrl	%cl, %eax
	cmpl	$16, %esi
	je	L854
	cmpl	$17, %esi
	je	L855
	andl	$127, %eax
	addl	$7, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L745
	call	__ZL17suckbitsnextblockv.lto_priv.0
L745:
	addl	$11, %ebx
L744:
	leal	__ZL4clen.lto_priv.0(,%edi,4), %eax
	leal	0(,%ebx,4), %edx
	addl	%ebx, %edi
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
L738:
	cmpl	%edi, 36(%esp)
	jle	L856
L746:
	movl	$__ZL5nbuf0.lto_priv.0, %edx
	movl	$__ZL5ibuf0.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	%eax, %esi
	cmpl	$15, %eax
	jg	L737
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	jmp	L738
L855:
	andl	$7, %eax
	addl	$3, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L743
	call	__ZL17suckbitsnextblockv.lto_priv.0
L743:
	addl	$3, %ebx
	jmp	L744
L854:
	andl	$3, %eax
	addl	$2, %edx
	movl	%edx, __ZL6bitpos.lto_priv.0
	movl	%eax, %ebx
	js	L740
	call	__ZL17suckbitsnextblockv.lto_priv.0
L740:
	leal	3(%edi,%ebx), %edx
	andl	$1, %ebx
	movl	__ZL4clen.lto_priv.0-4(,%edi,4), %eax
	jne	L741
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	addl	$1, %edi
	cmpl	%edx, %edi
	je	L738
L741:
	movl	%eax, __ZL4clen.lto_priv.0(,%edi,4)
	movl	%eax, __ZL4clen.lto_priv.0+4(,%edi,4)
	addl	$2, %edi
	cmpl	%edx, %edi
	jne	L741
	jmp	L738
L856:
	movl	28(%esp), %esi
	leal	0(,%esi,4), %ebx
	jmp	L729
L852:
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
	jmp	L704
L845:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	leal	-16384(%esi), %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	cmpl	%edx, %eax
	jl	L857
L748:
	leal	16384(%esi), %eax
	movl	%eax, __ZL7gslider
	cmpl	_kzfs+28, %esi
	jl	L747
	movl	44(%esp), %eax
	movl	_kzfs+24, %ecx
	movl	$2, _kzfs+32
	movl	%eax, _kzfs+40
	jmp	L694
L756:
	movl	$__ZL5nbuf1.lto_priv.0, %edx
	movl	$__ZL5ibuf1.lto_priv.0, %eax
	call	__ZL9hufgetsymPiPKi.lto_priv.0
	movl	__ZL6filptr.lto_priv.0, %edx
	movl	%eax, %esi
	jmp	L758
L844:
	movl	$-1048536, __ZL6bitpos.lto_priv.0
	movl	$-1048536, %eax
	jmp	L714
L761:
	movl	_kzfs+28, %ecx
	movl	%ebx, %esi
	andl	$-32768, %esi
	cmpl	%ecx, %esi
	cmovle	%esi, %ecx
	movl	%ecx, 44(%esp)
	cmpl	%eax, %ecx
	jg	L858
L762:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	cmpl	%edx, %ebx
	cmovg	%edx, %ebx
	cmpl	%ebx, %eax
	jge	L698
	movl	__ZL8gzbufptr, %edx
	subl	%eax, %ebx
	movl	%ebx, 8(%esp)
	addl	%eax, %edx
	subl	%esi, %eax
	addl	$__ZL8slidebuf.lto_priv.0, %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L698
L848:
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
	jmp	L708
L705:
	movl	__ZL6bitpos.lto_priv.0, %eax
	movl	__ZL6filptr.lto_priv.0, %ebx
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	jmp	L697
L857:
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
	jmp	L748
L851:
	movl	__ZL8gzbufptr, %ebx
	subl	%eax, %ecx
	movl	%ecx, 8(%esp)
	addl	%eax, %ebx
	subl	%edx, %eax
	leal	__ZL8slidebuf.lto_priv.0(%edi,%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L698
L858:
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
	jmp	L762
L850:
	movl	_kzfs+24, %eax
	movl	_kzfs+28, %edx
	leal	-16384(%esi), %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%edx, %esi
	cmovle	%esi, %edx
	cmpl	%edx, %eax
	jl	L859
L719:
	leal	16384(%esi), %eax
	movl	%eax, __ZL7gslider
	cmpl	_kzfs+28, %esi
	jl	L718
	movl	44(%esp), %eax
	movl	%ebx, _kzfs+36
	movl	$1, _kzfs+32
	movl	_kzfs+24, %ecx
	movl	%eax, _kzfs+40
	jmp	L694
L849:
	movl	%ecx, %ebx
	addl	$3, %edx
	andl	$7, %ecx
	sarl	$3, %ebx
	jmp	L711
L768:
	movl	$-1, %eax
	jmp	L681
L859:
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
	jmp	L719
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__ZL12kdfread_funciPvi.lto_priv.0
	.def	__ZL12kdfread_funciPvi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12kdfread_funciPvi.lto_priv.0:
LFB73:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	$__ZL7filegrp.lto_priv.0, 4(%esp)
	movl	12(%esp), %ecx
	movl	$__ZL7filehan.lto_priv.0, 8(%esp)
	movl	$__ZL7filepos.lto_priv.0, 12(%esp)
	jmp	__Z14kread_internaliPviPKhPKiPi
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z15klseek_internaliiiPKhPiS1_
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
__Z15klseek_internaliiiPKhPiS1_:
LFB75:
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
	je	L888
	cmpl	$254, %ecx
	je	L889
	movl	__ZL8groupfil(,%ecx,4), %eax
	cmpl	$-1, %eax
	je	L861
	leal	(%edi,%ebx,4), %edi
	cmpl	$1, %esi
	je	L875
	cmpl	$2, %esi
	je	L876
	movl	%edx, (%edi)
	movl	%edx, %eax
L861:
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
L875:
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
L889:
	.cfi_restore_state
	movl	__ZL9kzcurhand.lto_priv.0, %eax
	cmpl	%ebx, %eax
	je	L864
	movl	_kzfs, %ecx
	testl	%ecx, %ecx
	je	L865
	movl	_kzfs+24, %ecx
	testl	%ecx, %ecx
	jns	L890
L865:
	imull	$260, %ebx, %eax
	movl	%edx, 4(%esp)
	movl	%ebx, __ZL9kzcurhand.lto_priv.0
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %edx
	testl	%edx, %edx
	je	L866
	movl	(%edi,%ebx,4), %ecx
	xorl	%ebx, %ebx
	movl	_kzfs+20, %eax
	movl	4(%esp), %edx
	testl	%ecx, %ecx
	cmovs	%ebx, %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	%ecx, _kzfs+24
L867:
	cmpl	$1, %esi
	je	L870
	xorl	%ecx, %ecx
	cmpl	$2, %esi
	cmove	%eax, %ecx
	addl	%ecx, %edx
L872:
	movl	%edx, %ecx
	testl	%edx, %edx
	jns	L873
	xorl	%ecx, %ecx
	xorl	%edx, %edx
L873:
	cmpl	%eax, %edx
	jg	L874
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
L888:
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
L876:
	.cfi_restore_state
	movl	0(%ebp,%ebx,4), %ebx
	movl	__ZL9gfileoffs(,%ecx,4), %ecx
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
L864:
	.cfi_restore_state
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L866
	movl	_kzfs+20, %eax
	jmp	L867
	.p2align 4,,10
	.p2align 3
L874:
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
L870:
	.cfi_restore_state
	addl	_kzfs+24, %edx
	jmp	L872
	.p2align 4,,10
	.p2align 3
L890:
	movl	%ecx, (%edi,%eax,4)
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L865
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	$0, _kzfs
	jmp	L865
L866:
	movl	$-1, %eax
	jmp	L861
	.cfi_endproc
LFE75:
	.section .rdata,"dr"
LC38:
	.ascii "KenSilverman\0"
	.text
	.p2align 4
	.globl	_initgroupfile
	.def	_initgroupfile;	.scl	2;	.type	32;	.endef
_initgroupfile:
LFB76:
	.cfi_startproc
	movb	$47, _toupperlookup+92
	testl	%eax, %eax
	je	L980
	movl	_numgroupfiles, %ecx
	cmpl	$7, %ecx
	jg	L980
	subl	$456, %esp
	.cfi_def_cfa_offset 460
	movl	%ecx, 4(%esp)
	leal	52(%esp), %edx
	xorl	%ecx, %ecx
	movl	$__ZL11groupfilpos, 16(%esp)
	movl	$__ZL8groupfil, 12(%esp)
	movl	$__ZL11groupfilgrp, 8(%esp)
	movl	$0, (%esp)
	movl	%eax, 20(%esp)
	movl	$0, 52(%esp)
	call	__ZL14kopen_internalPKcPPcccciPhPiS4_.constprop.0
	testl	%eax, %eax
	js	L892
	movl	%ebx, 440(%esp)
	.cfi_offset 3, -20
	movl	52(%esp), %ebx
	movl	%esi, 444(%esp)
	.cfi_offset 6, -16
	leal	64(%esp), %esi
	testl	%ebx, %ebx
	je	L895
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$4, %ecx
	movl	%esi, %edx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %eax
	cmpb	$80, 64(%esp)
	jne	L896
	cmpb	$75, 65(%esp)
	je	L991
L896:
	movl	$__ZL11groupfilpos, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
L895:
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$16, %ecx
	movl	%esi, %edx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1399743819, 64(%esp)
	je	L992
L920:
	movl	$1, %eax
L921:
	movl	_numgroupfiles, %ebx
	testl	%eax, %eax
	jne	L922
	movl	76(%esp), %eax
	movl	%edi, 448(%esp)
	movl	%ebp, 452(%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, __ZL9gnumfiles(,%ebx,4)
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%eax, %esi
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L923
	movl	%eax, __ZL9gfilelist.lto_priv.0(,%ebx,4)
	movl	_numgroupfiles, %ebx
	movl	_g_sm_heap, %ecx
	movl	__ZL9gnumfiles(,%ebx,4), %eax
	leal	4(,%eax,4), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L993
	movl	%eax, __ZL9gfileoffs(,%ebx,4)
	movl	_numgroupfiles, %eax
	movl	__ZL9gnumfiles(,%eax,4), %ecx
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	sall	$4, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %esi
	movl	__ZL9gnumfiles(,%esi,4), %ebx
	movl	__ZL9gfileoffs(,%esi,4), %edi
	leal	1(%ebx), %edx
	sall	$4, %edx
	testl	%ebx, %ebx
	jle	L927
	movl	%ebx, 24(%esp)
	movl	%edi, %eax
	leal	(%edi,%ebx,4), %ebp
	movl	$12, %ecx
	movl	%edi, 28(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L928:
	movl	__ZL9gfilelist.lto_priv.0(,%esi,4), %ebx
	addl	$4, %eax
	addl	%ecx, %ebx
	addl	$16, %ecx
	movl	(%ebx), %edi
	movb	$0, (%ebx)
	movl	%edx, -4(%eax)
	addl	%edi, %edx
	cmpl	%eax, %ebp
	jne	L928
	movl	24(%esp), %ebx
	movl	28(%esp), %edi
L927:
	movl	20(%esp), %eax
	movl	%edx, (%edi,%ebx,4)
	movl	%eax, (%esp)
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
	je	L929
L990:
	movl	20(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movb	$0, (%ebx,%edi)
	movl	%ebx, __ZL9groupname(,%esi,4)
	movl	_numgroupfiles, %eax
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	444(%esp), %esi
	.cfi_restore 6
	leal	1(%eax), %edx
	movl	448(%esp), %edi
	.cfi_restore 7
	movl	452(%esp), %ebp
	.cfi_restore 5
	movl	%edx, _numgroupfiles
L891:
	addl	$456, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L922:
	.cfi_def_cfa_offset 460
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$__ZL11groupfilpos, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilgrp, (%esp)
	leal	48(%esp), %edx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$4, %ecx
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	48(%esp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	L930
	movl	%edi, 448(%esp)
	xorl	%eax, %eax
	movl	_numgroupfiles, %ebx
	movl	$0, 188(%esp)
	movl	$0, 192(%esp)
	movl	$0, 196(%esp)
	movl	$0, 200(%esp)
	movl	%ebp, 452(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	leal	134(%esp), %ebp
L931:
	movl	$0, 0(%ebp,%eax)
	movl	$0, 4(%ebp,%eax)
	movl	$0, 8(%ebp,%eax)
	movl	$0, 12(%ebp,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L931
	movl	$__ZL11groupfilpos, 8(%esp)
	leal	60(%esp), %edx
	movl	$4, %ecx
	movl	%ebx, %eax
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$__ZL11groupfilgrp, (%esp)
	leal	47(%esp), %edx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$1, %ecx
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$31, %dl
	ja	L988
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$32, %ecx
	movl	%esi, %edx
	movl	$__ZL8groupfil, 4(%esp)
	subb	47(%esp), %cl
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movb	%cl, 47(%esp)
	movzbl	%cl, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L988
	cmpl	$2, 48(%esp)
	je	L994
L934:
	movb	$0, 24(%esp)
	movl	$3, %edi
L936:
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	leal	47(%esp), %edx
	movl	$1, %ecx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$70, %dl
	ja	L988
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movzbl	47(%esp), %eax
	movl	$70, %ecx
	subl	%eax, %ecx
	movb	%cl, 47(%esp)
	cmpb	$70, %al
	je	L935
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movzbl	%cl, %ecx
	movl	%esi, %edx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	setne	%al
	orb	%al, 24(%esp)
L935:
	subl	$1, %edi
	jne	L936
	cmpb	$0, 24(%esp)
	jne	L988
	movl	60(%esp), %eax
	movl	_numgroupfiles, %edi
	movl	_g_sm_heap, %ecx
	movl	%eax, __ZL9gnumfiles(,%edi,4)
	sall	$4, %eax
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L937
	movl	_numgroupfiles, %esi
	movl	%eax, __ZL9gfilelist.lto_priv.0(,%edi,4)
	movl	_g_sm_heap, %ecx
	movl	__ZL9gnumfiles(,%esi,4), %eax
	leal	4(,%eax,4), %edi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	testl	%eax, %eax
	je	L995
	cmpl	$2, 48(%esp)
	movl	$267, %edx
	movl	%eax, __ZL9gfileoffs(,%esi,4)
	movl	$254, %eax
	cmove	%edx, %eax
	movl	60(%esp), %edx
	imull	$121, %edx, %ebp
	addl	%eax, %ebp
	testl	%edx, %edx
	jle	L941
	.p2align 4
	.p2align 3
L944:
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	leal	47(%esp), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %ecx
	cmpb	$12, %cl
	jbe	L943
	movb	$12, 47(%esp)
	movl	$12, %ecx
L943:
	movl	_numgroupfiles, %eax
	movl	%ebx, %esi
	sall	$4, %esi
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	addl	%esi, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %eax
	movzbl	47(%esp), %edx
	addl	__ZL9gfilelist.lto_priv.0(,%eax,4), %esi
	movb	$0, (%esi,%edx)
	movzbl	47(%esp), %ecx
	movl	$12, %edx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	subl	%ecx, %edx
	movl	$1, %ecx
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilgrp, (%esp)
	movl	$4, %ecx
	movl	_numgroupfiles, %eax
	movl	$__ZL11groupfilpos, 8(%esp)
	leal	56(%esp), %edx
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	__ZL9gfileoffs(,%eax,4), %edx
	movl	%ebp, (%edx,%ebx,4)
	movl	$104, %edx
	addl	56(%esp), %ebp
	addl	$1, %ebx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	cmpl	%ebx, 60(%esp)
	jg	L944
L941:
	movl	_numgroupfiles, %esi
	movl	__ZL9gnumfiles(,%esi,4), %edx
	movl	__ZL9gfileoffs(,%esi,4), %eax
	movl	%ebp, (%eax,%edx,4)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
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
	jne	L990
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L992:
	.cfi_restore 5
	.cfi_restore 7
	cmpl	$1702259817, 68(%esp)
	jne	L920
	xorl	%eax, %eax
	cmpl	$1851878770, 72(%esp)
	jne	L920
	jmp	L921
	.p2align 4,,10
	.p2align 3
L991:
	cmpb	$3, 66(%esp)
	jne	L896
	cmpb	$4, 67(%esp)
	jne	L896
	movl	$__ZL8groupfil, %ecx
	movl	$__ZL11groupfilgrp, %edx
	movl	%edi, 448(%esp)
	.cfi_offset 7, -12
	call	__Z15kclose_internaliPKhPi
	movl	$LC9, 4(%esp)
	movl	%ebx, (%esp)
	call	_fopen
	movl	%ebx, (%esp)
	movl	%eax, %edi
	movl	%eax, 20(%esp)
	call	_strlen
	testl	%edi, %edi
	je	L996
	addl	$1, %eax
	movl	%eax, 56(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L906
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
	je	L997
	cmpl	$1399743819, %eax
	je	L998
L906:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
L898:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 456
	movl	$8, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	444(%esp), %esi
	.cfi_restore 6
	movl	448(%esp), %edi
	.cfi_restore 7
	jmp	L891
	.p2align 4,,10
	.p2align 3
L994:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	leal	47(%esp), %edx
	movl	$1, %ecx
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$__ZL8groupfil, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %edx
	cmpb	$11, %dl
	ja	L988
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	_numgroupfiles, %eax
	movl	$1, %ecx
	movl	$__ZL8groupfil, 4(%esp)
	movl	$__ZL11groupfilgrp, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL11groupfilpos, 8(%esp)
	movl	$12, %ecx
	movl	%esi, %edx
	movl	$__ZL8groupfil, 4(%esp)
	subb	47(%esp), %cl
	movl	$__ZL11groupfilgrp, (%esp)
	movl	_numgroupfiles, %eax
	movb	%cl, 47(%esp)
	movzbl	%cl, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	47(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L934
	.p2align 4
	.p2align 3
L988:
	movl	448(%esp), %edi
	.cfi_restore 7
	movl	452(%esp), %ebp
	.cfi_restore 5
L930:
	movl	_numgroupfiles, %eax
	movl	$__ZL8groupfil, %ecx
	movl	$__ZL11groupfilgrp, %edx
	call	__Z15kclose_internaliPKhPi
	movl	440(%esp), %ebx
	.cfi_restore 3
	movl	444(%esp), %esi
	.cfi_restore 6
L892:
	movl	$-1, %eax
	jmp	L891
	.p2align 4,,10
	.p2align 3
L923:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L993:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L937:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L929:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L995:
	movl	%edi, %eax
	call	__Z13handle_memerri
L980:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %eax
	ret
L996:
	.cfi_def_cfa_offset 460
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$5, %eax
	movl	%eax, 56(%esp)
	call	__ZL14kzcheckhashsizi.lto_priv.0
	testl	%eax, %eax
	je	L898
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
	jmp	L898
L998:
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
	jne	L989
	cmpl	$1851878770, 138(%esp)
	jne	L989
	movl	142(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%eax, 32(%esp)
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
L914:
	movl	%eax, 56(%esp)
	cmpl	%eax, 32(%esp)
	jle	L999
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
	je	L915
	movzbl	134(%esp), %edx
	movl	24(%esp), %ebx
	leal	135(%esp), %ecx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	L917
L918:
	leal	(%eax,%eax,2), %eax
	addl	$1, %ecx
	movl	%eax, 24(%esp)
	movzbl	_toupperlookup(%edx), %eax
	movzbl	-1(%ecx), %edx
	subl	24(%esp), %eax
	testb	%dl, %dl
	jne	L918
	movl	%ebx, 24(%esp)
L917:
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
	jmp	L914
L997:
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
	je	L1000
	movl	20(%esp), %eax
	xorl	%edx, %edx
	xorl	%edi, %edi
	leal	60(%esp), %esi
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
	jmp	L905
L1001:
	movl	60(%esp), %eax
	cmpl	$33639248, %eax
	je	L904
	cmpl	$67324752, %eax
	jne	L989
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
L905:
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	_fread
	testl	%eax, %eax
	jne	L1001
L989:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	452(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L898
L904:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$-4, 4(%esp)
	movl	%eax, (%esp)
	call	_fseek
L902:
	xorl	%eax, %eax
	movl	%eax, 56(%esp)
	testl	%edi, %edi
	je	L982
L912:
	movl	20(%esp), %eax
	movl	$1, 8(%esp)
	movl	$46, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_fread
	cmpl	$33639248, 134(%esp)
	jne	L989
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
	je	L989
	movzbl	180(%esp), %edx
	leal	181(%esp), %ecx
	xorl	%eax, %eax
	testb	%dl, %dl
	je	L910
L911:
	addl	$1, %ecx
	leal	(%eax,%eax,2), %esi
	movzbl	_toupperlookup(%edx), %eax
	movzbl	-1(%ecx), %edx
	subl	%esi, %eax
	testb	%dl, %dl
	jne	L911
L910:
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
	jl	L912
L982:
	movl	452(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L906
L1000:
	.cfi_restore_state
	movl	150(%esp), %eax
	xorl	%ecx, %ecx
	movzwl	144(%esp), %edi
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_fseek
	jmp	L902
L915:
	movl	24(%esp), %ebx
	jmp	L989
L999:
	movl	24(%esp), %ebx
	movl	452(%esp), %ebp
	.cfi_restore 5
	jmp	L906
	.cfi_endproc
LFE76:
	.p2align 4
	.def	__ZL8read_paliPi;	.scl	3;	.type	32;	.endef
__ZL8read_paliPi:
LFB83:
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
L1003:
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
	jne	L1003
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
LFE83:
	.p2align 4
	.globl	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
__Z20kfilelength_internaliPKhPiS1_.constprop.0:
LFB86:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpl	$255, %eax
	je	L1022
	cmpl	$254, %eax
	je	L1023
	movl	__ZL9gfileoffs(,%eax,4), %ecx
	movl	__ZL7filehan.lto_priv.0(,%edx,4), %edx
	movl	4(%ecx,%edx,4), %eax
	subl	(%ecx,%edx,4), %eax
L1006:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1023:
	.cfi_restore_state
	movl	__ZL9kzcurhand.lto_priv.0, %ecx
	movl	_kzfs, %eax
	cmpl	%ecx, %edx
	je	L1010
	testl	%eax, %eax
	je	L1011
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	_kzfs+24, %ebx
	testl	%ebx, %ebx
	jns	L1024
	movl	8(%esp), %ebx
	.cfi_restore 3
L1011:
	imull	$260, %edx, %eax
	movl	%edx, __ZL9kzcurhand.lto_priv.0
	movl	%edx, 4(%esp)
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	movl	4(%esp), %edx
	testl	%eax, %eax
	je	L1013
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
L1022:
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
L1010:
	.cfi_restore_state
	testl	%eax, %eax
	jne	L1025
L1013:
	xorl	%eax, %eax
	jmp	L1006
	.p2align 4,,10
	.p2align 3
L1024:
	.cfi_offset 3, -8
	movl	%ebx, __ZL7filepos.lto_priv.0(,%ecx,4)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$0, _kzfs
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1025:
	movl	_kzfs+20, %eax
	jmp	L1006
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	_ktell
	.def	_ktell;	.scl	2;	.type	32;	.endef
_ktell:
LFB87:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpl	$255, %eax
	je	L1045
	cmpl	$254, %eax
	je	L1046
	movl	__ZL8groupfil(,%eax,4), %eax
	cmpl	$-1, %eax
	je	L1026
	movl	__ZL7filepos.lto_priv.0(,%edx,4), %eax
L1026:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1046:
	.cfi_restore_state
	movl	__ZL9kzcurhand.lto_priv.0, %ecx
	movl	_kzfs, %eax
	cmpl	%ecx, %edx
	je	L1030
	testl	%eax, %eax
	je	L1031
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -8
	movl	_kzfs+24, %ebx
	testl	%ebx, %ebx
	jns	L1047
	movl	16(%esp), %ebx
	.cfi_restore 3
L1031:
	imull	$260, %edx, %eax
	movl	%edx, __ZL9kzcurhand.lto_priv.0
	movl	%edx, 12(%esp)
	addl	$__ZL10filenamsav, %eax
	call	__ZL8kzipopenPKc
	movl	_kzfs, %eax
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L1033
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
L1045:
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
L1030:
	.cfi_restore_state
	testl	%eax, %eax
	je	L1033
	movl	_kzfs+24, %eax
	jmp	L1026
	.p2align 4,,10
	.p2align 3
L1047:
	.cfi_offset 3, -8
	movl	%ebx, __ZL7filepos.lto_priv.0(,%ecx,4)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_fclose
	movl	12(%esp), %edx
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	$0, _kzfs
	jmp	L1031
L1033:
	movl	$-1, %eax
	jmp	L1026
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_kclose
	.def	_kclose;	.scl	2;	.type	32;	.endef
_kclose:
LFB90:
	.cfi_startproc
	testl	%eax, %eax
	js	L1057
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%eax, %edx
	movzbl	__ZL7filegrp.lto_priv.0(%eax), %eax
	cmpb	$-1, %al
	je	L1060
	cmpb	$-2, %al
	je	L1061
	movl	$-1, __ZL7filehan.lto_priv.0(,%edx,4)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1057:
	ret
	.p2align 4,,10
	.p2align 3
L1061:
	.cfi_def_cfa_offset 12
	movl	_kzfs, %eax
	testl	%eax, %eax
	je	L1052
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_fclose
	movl	4(%esp), %edx
	movl	$0, _kzfs
L1052:
	movl	$-1, __ZL9kzcurhand.lto_priv.0
	movl	$-1, __ZL7filehan.lto_priv.0(,%edx,4)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1060:
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
LFE90:
	.section .rdata,"dr"
LC39:
	.ascii "./\0"
LC40:
	.ascii "..\0"
LC41:
	.ascii "%s/%s\0"
	.text
	.p2align 4
	.globl	_klistpath
	.def	_klistpath;	.scl	2;	.type	32;	.endef
_klistpath:
LFB91:
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
	pushl	%ebx
	subl	$344, %esp
	.cfi_offset 3, -20
	movl	%edx, -328(%ebp)
	movl	%ecx, -336(%ebp)
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
	je	L1063
	movl	%esi, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%edi)
	xorl	%edx, %edx
	jmp	L1064
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1065:
	addl	$1, %edx
L1064:
	movzbl	(%ebx,%edx), %ecx
	cmpb	$46, %cl
	je	L1065
	movzbl	%cl, %eax
	cmpb	$47, _toupperlookup(%eax)
	je	L1065
	movb	%cl, (%ebx)
	xorl	%eax, %eax
	addl	%ebx, %edx
	testb	%cl, %cl
	je	L1069
	.p2align 4
	.p2align 4
	.p2align 3
L1066:
	addl	$1, %eax
	movzbl	(%edx,%eax), %ecx
	movb	%cl, (%ebx,%eax)
	testb	%cl, %cl
	jne	L1066
	movzbl	-1(%ebx,%eax), %edx
	cmpb	$47, _toupperlookup(%edx)
	jne	L1219
	.p2align 5
	.p2align 4
	.p2align 3
L1070:
	subl	$1, %eax
	je	L1069
	movzbl	-1(%ebx,%eax), %edx
	cmpb	$47, _toupperlookup(%edx)
	je	L1070
L1219:
	addl	%ebx, %eax
	movb	$0, (%eax)
	cmpb	$0, (%ebx)
	je	L1071
L1221:
	cmpl	$1, -336(%ebp)
	jne	L1072
	movl	_pathsearchmode, %edi
	movl	$LC39, %eax
	testl	%edi, %edi
	cmove	%eax, %esi
L1073:
	leal	-272(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, -316(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	$1, -332(%ebp)
	movl	$0, -324(%ebp)
	testl	%edi, %edi
	je	L1095
L1076:
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	32(%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1081
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_opendir
	movl	%eax, (%esi)
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1079
	movl	-316(%ebp), %eax
	leal	28(%esi), %ecx
	movl	$0, 24(%esi)
	movl	%ecx, -320(%ebp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_strcpy
	movl	%ebx, -340(%ebp)
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	je	L1080
L1220:
	addl	$1, 24(%esi)
	leal	8(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, 4(%esi)
	movw	%ax, 20(%esi)
	movl	%eax, %ebx
	movl	-320(%ebp), %eax
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	%eax, (%esp)
	call	_strlen
	movzwl	%bx, %edx
	leal	2(%edx,%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1081
	movl	4(%esi), %eax
	movl	%eax, 12(%esp)
	movl	-320(%ebp), %eax
	movl	$LC41, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	leal	-308(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L1089
	movzwl	-302(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-280(%ebp), %eax
	movl	%eax, 16(%esi)
L1089:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	4(%esi), %edi
	subl	$4, %esp
	cmpb	$46, (%edi)
	je	L1083
L1088:
	testb	$64, 9(%esi)
	jne	L1084
	movl	-328(%ebp), %edx
	movl	%edi, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1084
	movl	-332(%ebp), %ecx
	leal	-312(%ebp), %eax
	movl	%edi, %edx
	movl	%ecx, (%esp)
	movl	$1, %ecx
	call	_klistaddentry.isra.0
L1084:
	movl	(%esi), %edi
L1225:
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	jne	L1220
L1080:
	movl	(%esi), %eax
	movl	-340(%ebp), %ebx
	movl	$-1, 24(%esi)
	movl	%eax, (%esp)
	call	_closedir
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1090:
	movl	_pathsearchmode, %ecx
	testl	%ecx, %ecx
	jne	L1129
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	je	L1092
	movl	(%eax), %eax
	addl	$1, -332(%ebp)
	movl	%eax, -324(%ebp)
L1093:
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	je	L1094
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
L1095:
	movl	%ebx, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	cmpb	$0, (%ebx)
	je	L1076
	movl	-316(%ebp), %edi
	movl	$47, %esi
	movl	%edi, (%esp)
	call	_strlen
	movw	%si, (%edi,%eax)
	jmp	L1076
	.p2align 4,,10
	.p2align 3
L1069:
	movl	%ebx, %eax
	movb	$0, (%eax)
	cmpb	$0, (%ebx)
	jne	L1221
L1071:
	movl	_pathsearchmode, %edi
	movl	$LC39, %eax
	testl	%edi, %edi
	cmove	%eax, %esi
	cmpl	$1, -336(%ebp)
	je	L1073
L1074:
	leal	-272(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, -316(%ebp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	$0, -324(%ebp)
	movl	$1, -332(%ebp)
	testl	%edi, %edi
	je	L1111
L1096:
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	leal	32(%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1081
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_opendir
	movl	%eax, (%esi)
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1217
	movl	-316(%ebp), %edx
	leal	28(%esi), %eax
	movl	$0, 24(%esi)
	movl	%eax, -320(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	%ebx, -340(%ebp)
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	je	L1222
L1105:
	addl	$1, 24(%esi)
	leal	8(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, 4(%esi)
	movw	%ax, 20(%esi)
	movl	%eax, %ebx
	movl	-320(%ebp), %eax
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	%eax, (%esp)
	call	_strlen
	movzwl	%bx, %edx
	leal	2(%edx,%eax), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1081
	movl	4(%esi), %eax
	movl	%eax, 12(%esp)
	movl	-320(%ebp), %eax
	movl	$LC41, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	leal	-308(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_stat32
	testl	%eax, %eax
	jne	L1107
	movzwl	-302(%ebp), %eax
	movl	%eax, 8(%esi)
	movl	-288(%ebp), %eax
	movl	%eax, 12(%esi)
	movl	-280(%ebp), %eax
	movl	%eax, 16(%esi)
L1107:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	4(%esi), %edi
	subl	$4, %esp
	cmpb	$46, (%edi)
	je	L1223
L1103:
	testb	$64, 9(%esi)
	je	L1102
	movl	-328(%ebp), %edx
	movl	%edi, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1102
	movl	-332(%ebp), %edx
	leal	-312(%ebp), %eax
	movl	$2, %ecx
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	_klistaddentry.isra.0
L1102:
	movl	(%esi), %edi
L1226:
	movl	%edi, (%esp)
	call	_readdir
	testl	%eax, %eax
	jne	L1105
L1222:
	movl	(%esi), %eax
	movl	-340(%ebp), %ebx
	movl	$-1, 24(%esi)
	movl	%eax, (%esp)
	call	_closedir
L1217:
L1100:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_pathsearchmode, %esi
	subl	$4, %esp
	testl	%esi, %esi
	jne	L1129
	movl	-324(%ebp), %ecx
	testl	%ecx, %ecx
	je	L1224
	movl	-324(%ebp), %eax
	addl	$1, -332(%ebp)
	movl	(%eax), %eax
	movl	%eax, -324(%ebp)
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	je	L1094
L1227:
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
L1111:
	movl	%ebx, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	cmpb	$0, (%ebx)
	je	L1096
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, (%edi,%eax)
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1083:
	movzbl	1(%edi), %eax
	testb	%al, %al
	je	L1084
	cmpb	$46, %al
	jne	L1088
	cmpb	$0, 2(%edi)
	jne	L1088
	movl	(%esi), %edi
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1223:
	movzbl	1(%edi), %eax
	testb	%al, %al
	je	L1102
	cmpb	$46, %al
	jne	L1103
	cmpb	$0, 2(%edi)
	jne	L1103
	movl	(%esi), %edi
	jmp	L1226
	.p2align 4,,10
	.p2align 3
L1081:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1224:
	movl	$2, -332(%ebp)
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	movl	%eax, -324(%ebp)
	movl	-324(%ebp), %eax
	testl	%eax, %eax
	jne	L1227
	.p2align 4
	.p2align 3
L1094:
	movl	%ebx, 4(%esp)
	movl	-316(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	cmpb	$0, (%ebx)
	jne	L1228
L1138:
	movl	-328(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strcat
	movl	%edi, %eax
	call	_kzfindfilestart
	.p2align 4
	.p2align 3
L1112:
	movl	%edi, %eax
	call	_kzfindfile
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1229
	cmpb	$124, -272(%ebp)
	jne	L1112
	movzbl	-271(%ebp), %eax
	movb	%al, -320(%ebp)
	movb	%al, -272(%ebp)
	testb	%al, %al
	je	L1114
	movl	%ecx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1115:
	movl	%eax, %esi
	addl	$1, %eax
	movzbl	(%edi,%eax), %edx
	movb	%dl, -273(%ebp,%eax)
	testb	%dl, %dl
	jne	L1115
	movzbl	-273(%ebp,%esi), %edx
	leal	-1(%esi), %eax
	cmpb	$47, _toupperlookup(%edx)
	je	L1134
L1116:
	movl	%ecx, -324(%ebp)
	xorl	%eax, %eax
L1119:
	movzbl	(%ebx,%eax), %edx
	testb	%dl, %dl
	je	L1118
	movzbl	-320(%ebp), %esi
	movzbl	_toupperlookup(%esi), %ecx
	cmpb	%cl, _toupperlookup(%edx)
	je	L1230
L1118:
	movl	-324(%ebp), %ecx
	cmpb	$0, (%ebx)
	je	L1122
	cmpb	$0, (%ebx,%eax)
	jne	L1112
	movzbl	-320(%ebp), %edx
	cmpb	$47, _toupperlookup(%edx)
	jne	L1112
L1122:
	testl	%eax, %eax
	je	L1117
L1136:
	addl	$1, %eax
L1117:
	movzbl	-272(%ebp,%eax), %edx
	movb	%dl, -272(%ebp)
	testb	%dl, %dl
	je	L1123
	leal	-271(%ebp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1124:
	cmpb	$47, _toupperlookup(%edx)
	je	L1112
	movzbl	(%esi,%eax), %edx
	addl	$1, %esi
	movb	%dl, -1(%esi)
	testb	%dl, %dl
	jne	L1124
L1123:
	movzbl	_toupperlookup, %eax
	cmpb	$47, %al
	je	L1112
	cmpl	$1, -336(%ebp)
	je	L1126
	cmpl	$2, %ecx
	jne	L1112
L1127:
	movl	$2147483646, (%esp)
	leal	-312(%ebp), %eax
	movl	%edi, %edx
	call	_klistaddentry.isra.0
	jmp	L1112
	.p2align 4,,10
	.p2align 3
L1092:
	movl	$2, -332(%ebp)
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	movl	%eax, -324(%ebp)
	jmp	L1093
L1229:
	movl	_pathsearchmode, %edi
	testl	%edi, %edi
	jne	L1129
	cmpb	$0, (%ebx)
	jne	L1129
	cmpl	$1, -336(%ebp)
	je	L1231
L1129:
	movl	%ebx, (%esp)
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
L1072:
	.cfi_restore_state
	leal	-312(%ebp), %eax
	movl	$2, %ecx
	movl	$LC40, %edx
	movl	$1, (%esp)
	call	_klistaddentry.isra.0
	movl	_pathsearchmode, %edi
	movl	$LC39, %eax
	testl	%edi, %edi
	cmove	%eax, %esi
	jmp	L1074
L1063:
	movl	-316(%ebp), %eax
	call	__Z13handle_memerri
L1079:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1090
L1231:
	movb	$0, -260(%ebp)
	movl	%ebx, -320(%ebp)
	movl	-316(%ebp), %ebx
	.p2align 4
	.p2align 3
L1133:
	cmpl	$-1, __ZL8groupfil(,%edi,4)
	je	L1130
	movl	__ZL9gnumfiles(,%edi,4), %esi
	subl	$1, %esi
	js	L1130
	.p2align 4
	.p2align 3
L1132:
	movl	%esi, %eax
	sall	$4, %eax
	addl	__ZL9gfilelist.lto_priv.0(,%edi,4), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ebx)
	movl	8(%eax), %eax
	movl	-328(%ebp), %edx
	movl	%eax, 8(%ebx)
	movl	%ebx, %eax
	call	_wildmatch
	testl	%eax, %eax
	je	L1131
	movl	$2147483647, (%esp)
	movl	$1, %ecx
	movl	%ebx, %edx
	leal	-312(%ebp), %eax
	call	_klistaddentry.isra.0
L1131:
	subl	$1, %esi
	jnb	L1132
L1130:
	addl	$1, %edi
	cmpl	$8, %edi
	jne	L1133
	movl	-320(%ebp), %ebx
	jmp	L1129
L1228:
	movl	-316(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, (%edi,%eax)
	jmp	L1138
L1114:
	xorl	%eax, %eax
	cmpb	$47, _toupperlookup
	jne	L1112
L1134:
	movb	$0, -272(%ebp,%eax)
	movzbl	-272(%ebp), %eax
	movb	%al, -320(%ebp)
	testb	%al, %al
	je	L1232
	movl	$2, %ecx
	jmp	L1116
L1230:
	addl	$1, %eax
	movzbl	(%edi,%eax), %ecx
	movb	%cl, -320(%ebp)
	testb	%cl, %cl
	jne	L1119
	movl	-324(%ebp), %ecx
	cmpb	$0, (%ebx,%eax)
	jne	L1112
	cmpb	$47, _toupperlookup
	jne	L1112
	jmp	L1136
	.p2align 4,,10
	.p2align 3
L1126:
	cmpl	$1, %ecx
	je	L1127
	jmp	L1112
L1232:
	cmpb	$0, (%ebx)
	jne	L1112
	cmpb	$47, _toupperlookup
	jne	L1112
	movl	$2, %ecx
	xorl	%eax, %eax
	jmp	L1117
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	_kdfread.constprop.0.isra.0
	.def	_kdfread.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_kdfread.constprop.0.isra.0:
LFB99:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%ecx, (%esp)
	movl	$1, %ecx
	call	_klzw_read_compressed.constprop.0.isra.0
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE99:
	.section .rdata,"dr"
	.align 4
LC42:
	.ascii "TOO MANY FILES OPEN IN FILE GROUPING SYSTEM!\0"
	.text
	.p2align 4
	.globl	_kopen4load.part.0
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
_kopen4load.part.0:
LFB100:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	$63, %eax
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	jmp	L1237
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1241:
	subl	$1, %eax
	jb	L1250
L1237:
	cmpl	$-1, __ZL7filehan.lto_priv.0(,%eax,4)
	jne	L1241
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
L1250:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1251
L1238:
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1239
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L1239
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L1240
	call	_mi_free
L1240:
	movl	%ebx, %eax
	call	_mi_free
L1239:
	movl	$0, (%esp)
	call	_exit
L1251:
	movl	$LC42, 12(%esp)
	movl	$857, 8(%esp)
	movl	$LC33, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1238
	.cfi_endproc
LFE100:
	.p2align 4
	.globl	_kpzbufload
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
_kpzbufload:
LFB106:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 16(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -12
	je	L1255
	xorl	%edx, %edx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L1266
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebx
	movl	_kpzbuf, %eax
	cmpl	_kpzbufsiz, %ebx
	jg	L1267
L1256:
	movb	$0, (%eax,%ebx)
	movl	_kpzbuf, %edx
	movl	%ebx, %ecx
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
L1259:
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
L1267:
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
	jne	L1261
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	L1257
L1261:
	movl	%eax, _kpzbuf
	movl	%ebx, _kpzbufsiz
	testl	%eax, %eax
	jne	L1256
	xorl	%ebx, %ebx
	jmp	L1259
	.p2align 4,,10
	.p2align 3
L1266:
	movl	20(%esp), %esi
	.cfi_restore 6
L1255:
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1257:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	_kopen4loadfrommod.constprop.0
	.def	_kopen4loadfrommod.constprop.0;	.scl	2;	.type	32;	.endef
_kopen4loadfrommod.constprop.0:
LFB109:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	cmpb	$47, _g_modDir
	jne	L1269
	cmpb	$0, _g_modDir+1
	je	L1270
L1269:
	movl	%ebx, 16(%esp)
	movl	$_g_modDir, 12(%esp)
	movl	$LC41, 8(%esp)
	movl	$256, 4(%esp)
	movl	$__ZZ17kopen4loadfrommodE14staticFileName, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	$__ZZ17kopen4loadfrommodE14staticFileName, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1270
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1270:
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
LFE109:
	.p2align 4
	.globl	_voxvboalloc
	.def	_voxvboalloc;	.scl	2;	.type	32;	.endef
_voxvboalloc:
LFB112:
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
LFE112:
	.p2align 4
	.globl	_voxfree
	.def	_voxfree;	.scl	2;	.type	32;	.endef
_voxfree:
LFB113:
	.cfi_startproc
	testl	%eax, %eax
	je	L1284
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	88(%eax), %eax
	testl	%eax, %eax
	je	L1279
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
L1279:
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
L1284:
	ret
	.cfi_endproc
LFE113:
	.section .rdata,"dr"
LC43:
	.ascii ".vox\0"
LC45:
	.ascii ".kvx\0"
LC47:
	.ascii ".kv6\0"
LC52:
	.ascii "voxcache mystery error\0"
LC53:
	.ascii "source/build/src/texcache.cpp\0"
	.text
	.p2align 4
	.globl	_voxload
	.def	_voxload;	.scl	2;	.type	32;	.endef
_voxload:
LFB115:
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
	js	L1288
	leal	(%edi,%eax), %ebx
	movl	$LC43, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1712
	movl	$LC45, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1713
	movl	$LC47, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	movl	%eax, -1144(%ebp)
	testl	%eax, %eax
	jne	L1288
	movl	-1152(%ebp), %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -1108(%ebp)
	cmpl	$-1, %eax
	je	L1328
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-1064(%ebp), %edx
	movl	$4, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1819833931, -1064(%ebp)
	jne	L1714
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
	je	L1686
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
	jle	L1715
L1334:
	addl	%eax, %eax
	cmpl	%edx, %eax
	jl	L1334
	subl	$1, %eax
L1335:
	movl	%eax, __ZL13vcolhashsizm1
	call	__ZL17alloc_vcolhasheadv
	movl	__ZL6voxsiz, %ebx
	testl	%ebx, %ebx
	jle	L1336
	movl	$0, -1100(%ebp)
	movl	__ZL6voxsiz+4, %ecx
L1342:
	testl	%ecx, %ecx
	jle	L1337
	movl	-1100(%ebp), %edi
	imull	__ZL5yzsiz, %edi
	movl	$0, -1092(%ebp)
	movl	__ZL6voxsiz+8, %edx
	.p2align 4
	.p2align 3
L1341:
	movl	-1100(%ebp), %eax
	movl	-1116(%ebp), %ebx
	imull	%ecx, %eax
	addl	-1092(%ebp), %eax
	movzwl	(%ebx,%eax,2), %eax
	movl	%eax, -1104(%ebp)
	testl	%eax, %eax
	je	L1338
	movl	%edx, -1096(%ebp)
	xorl	%esi, %esi
	movl	%edi, -1088(%ebp)
	jmp	L1340
	.p2align 4,,10
	.p2align 3
L1339:
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
	je	L1716
L1340:
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
	jne	L1339
	movl	-1096(%ebp), %edx
	addl	-1088(%ebp), %edx
	movl	%ecx, -1112(%ebp)
	movl	%eax, -1096(%ebp)
	call	__ZL10setzrange1Piii
	movl	-1112(%ebp), %ecx
	movl	-1096(%ebp), %eax
	jmp	L1339
	.p2align 4,,10
	.p2align 3
L1716:
	movl	-1088(%ebp), %edi
	movl	__ZL6voxsiz+8, %edx
	movl	__ZL6voxsiz+4, %ecx
L1338:
	addl	$1, -1092(%ebp)
	addl	%edx, %edi
	cmpl	-1092(%ebp), %ecx
	jg	L1341
L1337:
	addl	$1, -1100(%ebp)
	movl	-1100(%ebp), %eax
	cmpl	__ZL6voxsiz, %eax
	jl	L1342
L1336:
	movl	-1116(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1108(%ebp), %eax
	subl	$4, %esp
	call	_kclose
L1343:
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
	je	L1344
	movl	%edi, %edx
	movl	$_texcache+32812, %eax
	call	_hash_find
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1344
	movl	_texcache+40, %eax
	movl	(%eax,%ebx,4), %ecx
	testl	%ecx, %ecx
	je	L1344
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
	je	L1345
	movl	$0, 80(%eax)
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	xorl	%eax, %eax
L1346:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1346
	movl	_texcache+40, %eax
	movl	$16, %edx
	movl	(%eax,%ebx,4), %eax
	movl	4(%eax), %eax
	movl	%eax, _texcache+32836
	leal	-1056(%ebp), %eax
	call	_texcache_readdata
	movl	_g_sm_heap, %ecx
	testl	%eax, %eax
	jne	L1348
	movl	-1044(%ebp), %esi
	testl	%esi, %esi
	jle	L1348
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
	je	L1461
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
	je	L1717
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
	jle	L1718
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1461
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
	je	L1719
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
	je	L1515
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
	jmp	L1361
L1712:
	movl	%edi, %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -1140(%ebp)
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1328
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$12, %ecx
	movl	$__ZL6voxsiz, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	xorps	%xmm0, %xmm0
	leal	-1040(%ebp), %eax
	movss	LC44, %xmm1
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
	je	L1686
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
	jle	L1293
L1292:
	movl	__ZL6voxsiz+4, %eax
	testl	%eax, %eax
	jle	L1294
	movl	__ZL5yzsiz, %eax
	movl	%edi, -1100(%ebp)
	movl	$0, -1096(%ebp)
	movl	__ZL6voxsiz+8, %ecx
	imull	%edi, %eax
	movl	%eax, -1088(%ebp)
	.p2align 4
	.p2align 3
L1298:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1140(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL6voxsiz+8, %ecx
	testl	%ecx, %ecx
	jle	L1295
	movl	__ZL4vbit, %edi
	xorl	%eax, %eax
	movl	%edi, -1092(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L1297:
	cmpb	$-1, (%ebx,%eax)
	je	L1296
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
L1296:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jl	L1297
L1295:
	addl	$1, -1096(%ebp)
	movl	-1096(%ebp), %eax
	addl	%ecx, -1088(%ebp)
	cmpl	__ZL6voxsiz+4, %eax
	jl	L1298
	movl	-1100(%ebp), %edi
L1294:
	addl	$1, %edi
	cmpl	__ZL6voxsiz, %edi
	jl	L1292
L1293:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-1140(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	__ZL6voxsiz, %eax
	testl	%eax, %eax
	jle	L1299
	movl	$0, -1128(%ebp)
L1309:
	movl	__ZL6voxsiz+4, %edi
	testl	%edi, %edi
	jle	L1300
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
L1308:
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
	jle	L1301
	movl	-1096(%ebp), %esi
	movl	-1144(%ebp), %eax
	testl	%esi, %esi
	leal	-1(%eax), %ebx
	sete	-1132(%ebp)
	xorl	%edi, %edi
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1302:
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
	jne	L1549
	movl	-1088(%ebp), %eax
	subl	$1, %eax
	cmpl	%edi, %eax
	je	L1549
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
	je	L1720
L1303:
	movl	-1092(%ebp), %ebx
	addl	$1, %edi
	cmpl	%edi, -1088(%ebp)
	jle	L1301
L1307:
	movl	-1124(%ebp), %eax
	movzbl	(%eax,%edi), %eax
	movb	%al, -1120(%ebp)
	cmpb	$-1, %al
	jne	L1302
	leal	1(%ebx), %eax
	movl	%eax, -1092(%ebp)
	jmp	L1303
	.p2align 4,,10
	.p2align 3
L1549:
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
	jmp	L1303
	.p2align 4,,10
	.p2align 3
L1720:
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
	jmp	L1303
	.p2align 4,,10
	.p2align 3
L1301:
	movl	-1088(%ebp), %edi
	addl	$1, -1096(%ebp)
	addl	%edi, -1144(%ebp)
	movl	-1100(%ebp), %edi
	cmpl	%edi, -1096(%ebp)
	jl	L1308
L1300:
	addl	$1, -1128(%ebp)
	movl	-1128(%ebp), %eax
	cmpl	__ZL6voxsiz, %eax
	jl	L1309
L1299:
	movl	-1124(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1140(%ebp), %eax
	subl	$4, %esp
	call	_kclose
L1310:
	movl	$1, -1144(%ebp)
	jmp	L1343
L1288:
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
L1713:
	.cfi_restore_state
	movl	-1152(%ebp), %eax
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L1328
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
	movss	LC46, %xmm1
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
	je	L1461
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
	jle	L1721
L1315:
	addl	%eax, %eax
	cmpl	%ecx, %eax
	jl	L1315
	subl	$1, %eax
L1316:
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
	je	L1461
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
	jle	L1319
L1327:
	movl	__ZL6voxsiz+4, %ecx
	testl	%ecx, %ecx
	jle	L1320
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
L1326:
	movl	-1088(%ebp), %eax
	movzwl	2(%ebx,%eax,2), %edx
	movzwl	(%ebx,%eax,2), %eax
	subl	%eax, %edx
	movl	%edx, -1108(%ebp)
	je	L1321
	movl	%ebx, -1124(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1325:
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
	je	L1722
L1322:
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
	jge	L1531
	subl	%eax, %edi
	.p2align 4
	.p2align 3
L1324:
	movzbl	3(%edi,%ebx), %eax
	movl	%ebx, %ecx
	addl	$1, %ebx
	movl	-1040(%ebp,%eax,4), %eax
	movl	%eax, (%esp)
	movl	-1088(%ebp), %edx
	movl	-1092(%ebp), %eax
	call	__ZL6putvoxiiii
	cmpl	%ebx, %esi
	jne	L1324
	movl	-1116(%ebp), %edi
	subl	-1096(%ebp), %edi
	addl	%esi, %edi
L1323:
	movl	-1108(%ebp), %eax
	testl	%eax, %eax
	jne	L1325
	movl	-1124(%ebp), %ebx
L1321:
	addl	$1, -1088(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	-1088(%ebp), %eax
	addl	%esi, -1100(%ebp)
	cmpl	__ZL6voxsiz+4, %eax
	jl	L1326
	movl	-1136(%ebp), %eax
	movl	-1140(%ebp), %edx
L1320:
	addl	$1, -1092(%ebp)
	addl	-1128(%ebp), %eax
	movl	-1092(%ebp), %ebx
	cmpl	__ZL6voxsiz, %ebx
	jl	L1327
L1319:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-1132(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1310
	.p2align 4,,10
	.p2align 3
L1722:
	movl	-1104(%ebp), %ecx
	addl	%esi, %edx
	movl	%eax, -1120(%ebp)
	call	__ZL10setzrange1Piii
	movl	-1120(%ebp), %eax
	jmp	L1322
	.p2align 4,,10
	.p2align 3
L1531:
	movl	-1116(%ebp), %edi
	jmp	L1323
L1461:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1686:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1348:
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1344:
	movl	$0, __ZL4gvox
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1345
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
L1362:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L1362
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
	je	L1686
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
	je	L1368
L1367:
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, __ZL6pow2m1(,%ecx,4)
	addl	$1, %ecx
	cmpl	$32, %ecx
	jne	L1367
	movl	$-1, __ZL6pow2m1+128
L1368:
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
	je	L1461
	movl	$0, -1100(%ebp)
	leal	(%eax,%ebx,4), %eax
	xorl	%ebx, %ebx
	movl	%eax, -1140(%ebp)
	movl	$__ZL7cntquadiiiiiiiiii, -1128(%ebp)
L1370:
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
	jle	L1677
L1371:
	xorl	%eax, %eax
	cmpl	$-1, %esi
	movl	%esi, -1132(%ebp)
	movl	$0, -1108(%ebp)
	setne	%al
	movl	%eax, -1136(%ebp)
L1388:
	movl	$0, -1112(%ebp)
	movl	-1092(%ebp), %eax
	testl	%eax, %eax
	js	L1383
	movl	%ebx, -1152(%ebp)
	movl	%esi, -1156(%ebp)
	.p2align 4
	.p2align 3
L1386:
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%edi, %edi
	js	L1385
	movl	%esi, -1104(%ebp)
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1379:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1376:
	addl	$1, %ebx
	addl	$4, -1104(%ebp)
	cmpl	%edi, %ebx
	jg	L1385
L1382:
	movl	-1112(%ebp), %ecx
	cmpl	-1092(%ebp), %ecx
	setnb	%dl
	movl	-1088(%ebp), %esi
	cmpl	%esi, -1108(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1373
	cmpl	%edi, %ebx
	jnb	L1373
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
	je	L1373
	movl	-1132(%ebp), %ecx
	cmpl	%esi, %ecx
	jnb	L1374
	movl	%ecx, %esi
	movl	-1116(%ebp), %ecx
	imull	%edi, %esi
	leal	(%esi,%ecx), %eax
	addl	%ebx, %eax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movl	(%edx,%ecx,4), %edx
	btl	%eax, %edx
	jnc	L1374
L1373:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1377
	cmpl	-1100(%ebp), %eax
	jne	L1378
	testb	$1, -1096(%ebp)
	jne	L1723
L1378:
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
L1377:
	cmpl	$1, -1096(%ebp)
	jne	L1379
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L1708
	movl	-1120(%ebp), %eax
	movl	-1112(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L1708:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	addl	$1, %ebx
	movl	$0, -1096(%ebp)
	addl	$4, -1104(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	cmpl	%edi, %ebx
	jle	L1382
	.p2align 4
	.p2align 3
L1385:
	addl	$1, -1112(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1112(%ebp)
	jle	L1386
	movl	-1152(%ebp), %ebx
	movl	-1156(%ebp), %esi
L1383:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1132(%ebp)
	cmpl	-1088(%ebp), %eax
	jl	L1388
	cmpl	$1, %esi
	je	L1387
L1677:
	movl	-1088(%ebp), %eax
	movl	$1, %esi
	testl	%eax, %eax
	jg	L1371
L1387:
	movl	$1, -1124(%ebp)
	movl	%ebx, -1132(%ebp)
L1405:
	testl	%edi, %edi
	jle	L1402
	cmpl	$1, -1124(%ebp)
	jne	L1538
	movl	$0, -1108(%ebp)
L1423:
	movl	-1092(%ebp), %edx
	testl	%edx, %edx
	js	L1407
	movl	$0, -1104(%ebp)
L1409:
	movl	-1088(%ebp), %eax
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jns	L1414
	jmp	L1415
	.p2align 4,,10
	.p2align 3
L1416:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1418:
	addl	$1, %ebx
	addl	$4, %esi
	cmpl	%ebx, -1088(%ebp)
	jl	L1415
L1414:
	cmpl	%edi, -1108(%ebp)
	movl	-1092(%ebp), %ecx
	setnb	%dl
	cmpl	%ecx, -1104(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1419
	cmpl	-1088(%ebp), %ebx
	jnb	L1419
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
	je	L1419
	cmpl	%edi, -1124(%ebp)
	jnb	L1422
	movl	-1112(%ebp), %edx
	movl	-1116(%ebp), %eax
	addl	-1124(%ebp), %edx
	movl	%edx, -1112(%ebp)
	sarl	$5, %edx
	movl	(%eax,%edx,4), %edx
	movzbl	-1112(%ebp), %eax
	btl	%eax, %edx
	jnc	L1422
L1419:
	movl	(%esi), %eax
	testl	%eax, %eax
	js	L1412
	cmpl	-1100(%ebp), %eax
	jne	L1413
	testb	$1, -1096(%ebp)
	jne	L1724
L1413:
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
L1412:
	cmpl	$1, -1096(%ebp)
	jne	L1416
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%esi)
	je	L1417
	movl	-1120(%ebp), %edi
	movl	-1104(%ebp), %ecx
	movl	%ecx, (%edi,%ebx,4)
	movl	%eax, (%esi)
L1417:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	addl	$1, %ebx
	addl	$4, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	cmpl	%ebx, -1088(%ebp)
	jge	L1414
L1415:
	addl	$1, -1104(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1104(%ebp)
	jle	L1409
L1407:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1124(%ebp)
	cmpl	%edi, %eax
	jl	L1423
L1424:
	movl	$-1, -1124(%ebp)
	jmp	L1405
	.p2align 4,,10
	.p2align 3
L1374:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1725
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
	jne	L1379
	movl	__ZL6voxsiz, %eax
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	movl	-1124(%ebp), %eax
	movl	%eax, -1096(%ebp)
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1422:
	movl	(%esi), %eax
	testl	%eax, %eax
	js	L1726
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
	jne	L1416
	movl	__ZL6voxsiz, %eax
	movl	%ecx, -1096(%ebp)
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	jmp	L1418
	.p2align 4,,10
	.p2align 3
L1725:
	movl	-1096(%ebp), %eax
	movl	-1124(%ebp), %esi
	testl	%eax, %eax
	cmovne	%eax, %esi
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%esi, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1376
L1723:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1376
L1726:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1418
L1724:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1418
L1401:
	addl	$1, -1108(%ebp)
	movl	-1092(%ebp), %ebx
	cmpl	%ebx, -1108(%ebp)
	jle	L1403
L1399:
	addl	$1, -1112(%ebp)
	movl	-1112(%ebp), %eax
	addl	$1, -1116(%ebp)
	cmpl	%edi, %eax
	jl	L1406
L1402:
	cmpl	$-1, -1124(%ebp)
	jne	L1424
	movl	-1132(%ebp), %ebx
	movl	$1, -1132(%ebp)
	movl	%ebx, -1152(%ebp)
L1404:
	movl	-1092(%ebp), %eax
	testl	%eax, %eax
	jle	L1438
	cmpl	$1, -1132(%ebp)
	jne	L1540
	movl	$0, -1108(%ebp)
	movl	%edi, %esi
L1458:
	movl	-1088(%ebp), %eax
	testl	%eax, %eax
	js	L1442
	movl	$0, -1104(%ebp)
L1444:
	movl	-1140(%ebp), %edi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jns	L1449
	jmp	L1450
	.p2align 4,,10
	.p2align 3
L1451:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
L1453:
	addl	$1, %ebx
	addl	$4, %edi
	cmpl	%ebx, %esi
	jl	L1450
L1449:
	movl	-1088(%ebp), %ecx
	cmpl	%ecx, -1104(%ebp)
	setnb	%dl
	movl	-1092(%ebp), %ecx
	cmpl	%ecx, -1108(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1454
	cmpl	%esi, %ebx
	jnb	L1454
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
	je	L1454
	movl	-1092(%ebp), %edx
	cmpl	%edx, -1132(%ebp)
	jnb	L1457
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
	jnc	L1457
L1454:
	movl	(%edi), %eax
	testl	%eax, %eax
	js	L1447
	cmpl	-1100(%ebp), %eax
	jne	L1448
	testb	$1, -1096(%ebp)
	jne	L1727
L1448:
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
L1447:
	cmpl	$1, -1096(%ebp)
	jne	L1451
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L1452
	movl	-1120(%ebp), %esi
	movl	-1104(%ebp), %ecx
	movl	%ecx, (%esi,%ebx,4)
	movl	%eax, (%edi)
L1452:
	movl	__ZL6voxsiz+4, %eax
	addl	$1, %ebx
	addl	$4, %edi
	movl	__ZL6voxsiz+8, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	cmpl	%ebx, %esi
	jge	L1449
L1450:
	addl	$1, -1104(%ebp)
	movl	-1088(%ebp), %edi
	cmpl	%edi, -1104(%ebp)
	jle	L1444
L1442:
	addl	$1, -1108(%ebp)
	movl	-1108(%ebp), %eax
	addl	$1, -1132(%ebp)
	cmpl	-1092(%ebp), %eax
	jl	L1458
	movl	%esi, %edi
L1459:
	movl	$-1, -1132(%ebp)
	jmp	L1404
	.p2align 4,,10
	.p2align 3
L1457:
	movl	(%edi), %eax
	testl	%eax, %eax
	js	L1728
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
	jne	L1451
	movl	__ZL6voxsiz+4, %eax
	movl	%ecx, -1096(%ebp)
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	jmp	L1453
L1728:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1453
L1727:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1453
L1437:
	addl	$1, -1108(%ebp)
	movl	-1088(%ebp), %edi
	cmpl	%edi, -1108(%ebp)
	jle	L1439
L1435:
	addl	$1, -1112(%ebp)
	movl	-1112(%ebp), %eax
	addl	$1, -1136(%ebp)
	cmpl	-1092(%ebp), %eax
	jl	L1441
	movl	%esi, %edi
L1438:
	cmpl	$-1, -1132(%ebp)
	jne	L1459
	movl	-1152(%ebp), %edi
	testl	%edi, %edi
	je	L1729
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
	je	L1686
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
	je	L1686
	movl	__ZL4gvox, %ecx
	movl	%eax, 36(%esi)
	movl	__ZL5gquad, %edx
	movl	40(%ecx), %ebx
	testl	%ebx, %ebx
	jle	L1510
	xorps	%xmm0, %xmm0
	movl	%edx, -1104(%ebp)
	leal	40(%edx), %ebx
	xorl	%esi, %esi
	movss	LC51, %xmm1
	cvtsi2ssl	48(%ecx), %xmm0
	xorl	%edi, %edi
	movl	$0, -1088(%ebp)
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%ecx), %xmm0
	divss	%xmm0, %xmm1
L1512:
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
L1511:
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
	jne	L1511
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
	jl	L1512
	movl	-1104(%ebp), %edx
L1510:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL4gvox, %edi
	subl	$4, %esp
	movl	$0, __ZL5gquad
	testl	%edi, %edi
	je	L1311
	call	_texcache_enabled
	testl	%eax, %eax
	je	L1361
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
	je	L1515
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
	ja	L1548
	movl	$-2139062143, %edx
	mull	%edx
	movl	-1088(%ebp), %eax
	shrl	$7, %edx
	leal	16(%eax,%edx), %ebx
	movl	%ebx, %eax
L1516:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1686
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
	jne	L1519
	testl	%ebx, %ebx
	jne	L1686
L1519:
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
	je	L1730
L1521:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1731
L1524:
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
L1361:
	movss	LC51, %xmm0
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
	je	L1526
	movl	$1024, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, 24(%edi)
L1311:
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
L1526:
	.cfi_restore_state
	movl	$4, %eax
	call	__Z13handle_memerri
L1731:
	movl	$LC52, 12(%esp)
	movl	$1017, 8(%esp)
	movl	$LC53, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1524
L1730:
	movl	_texcache+28, %eax
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	_fwrite
	cmpl	$1, %eax
	jne	L1521
	movl	-1088(%ebp), %edx
	movl	-1148(%ebp), %eax
	call	_texcache_postwritetex
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ecx
	jmp	L1361
L1548:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	L1516
L1515:
	movl	-1088(%ebp), %eax
	call	__Z13handle_memerri
L1729:
	movl	__ZL4gvox, %eax
	movl	40(%eax), %esi
	sall	$2, %esi
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -1104(%ebp)
	testl	%eax, %eax
	je	L1461
	movl	__ZL5gmaxy, %ecx
	movl	%eax, __ZL3shp
	movl	__ZL5gmaxx, %esi
	testl	%ecx, %ecx
	je	L1732
	movl	__ZL6shcntp, %eax
	movl	__ZL5shcnt, %edx
	movl	$0, -1088(%ebp)
	movl	%ecx, -1108(%ebp)
	leal	0(,%eax,4), %ebx
	imull	%ecx, %eax
	leal	(%edx,%eax,4), %edi
	movl	%ecx, %edx
L1468:
	cmpl	%esi, %edx
	jg	L1733
	leal	-1(%edx), %eax
	movl	%esi, -1112(%ebp)
	movl	%esi, %ecx
	movl	%eax, -1096(%ebp)
	movl	%ebx, -1116(%ebp)
	movw	%dx, -1092(%ebp)
	movl	-1088(%ebp), %edx
L1467:
	movl	(%edi,%ecx,4), %esi
	movl	%edx, (%edi,%ecx,4)
	testl	%esi, %esi
	jle	L1465
	movl	-1104(%ebp), %eax
	addl	%edx, %esi
	movl	%ecx, -1088(%ebp)
	movl	%ecx, %ebx
	leal	(%eax,%edx,4), %eax
	movl	-1104(%ebp), %edx
	leal	(%edx,%esi,4), %edx
L1466:
	movzwl	-1092(%ebp), %ecx
	movw	%bx, (%eax)
	addl	$4, %eax
	movw	%cx, -2(%eax)
	cmpl	%eax, %edx
	jne	L1466
	movl	-1088(%ebp), %ecx
	movl	%esi, %edx
L1465:
	subl	$1, %ecx
	cmpl	%ecx, -1096(%ebp)
	jne	L1467
	movl	%edx, -1088(%ebp)
	movl	-1112(%ebp), %esi
	movl	-1116(%ebp), %ebx
L1464:
	movl	-1096(%ebp), %edx
	subl	%ebx, %edi
	testl	%edx, %edx
	jne	L1468
	movl	__ZL4gvox, %ebx
	leal	1(%esi), %eax
	movl	-1108(%ebp), %ecx
	movl	$32, 48(%ebx)
	cmpl	$31, %eax
	jle	L1472
L1470:
	movl	$32, %edx
L1473:
	addl	%edx, %edx
	cmpl	%eax, %edx
	jle	L1473
	movl	%edx, 48(%ebx)
L1472:
	leal	1(%ecx), %eax
	movl	$32, %esi
	cmpl	$31, %eax
	jle	L1734
L1474:
	addl	%esi, %esi
	cmpl	%esi, %eax
	jge	L1474
	movl	%esi, 52(%ebx)
	jmp	L1471
L1733:
	leal	-1(%edx), %eax
	movl	%eax, -1096(%ebp)
	jmp	L1464
L1732:
	movl	__ZL4gvox, %ebx
	leal	1(%esi), %eax
	xorl	%esi, %esi
	movl	%esi, -1088(%ebp)
	movl	$32, 48(%ebx)
	cmpl	$31, %eax
	jg	L1470
	movl	$32, 52(%ebx)
	movl	$32, %esi
L1471:
	movl	-1088(%ebp), %eax
	movl	48(%ebx), %edi
	movl	__ZL5garea, %ecx
	sall	$2, %eax
	movl	%eax, -1136(%ebp)
L1475:
	movl	%esi, %edx
	imull	%edi, %edx
	leal	0(,%edx,8), %eax
	movl	%eax, -1092(%ebp)
	leal	(%ecx,%ecx,8), %eax
	cmpl	%eax, -1092(%ebp)
	jl	L1476
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
	je	L1686
	movl	%eax, __ZL4zbit
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__ZL4gvox, %eax
	movl	-1088(%ebp), %ebx
	movl	%eax, -1104(%ebp)
	testl	%ebx, %ebx
	je	L1481
	movl	$0, -1092(%ebp)
	movl	-1104(%ebp), %edi
	movl	48(%edi), %eax
	imull	52(%edi), %eax
	movl	%eax, -1132(%ebp)
	movl	__ZL3shp, %eax
L1501:
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
	jmp	L1490
L1482:
	movl	%esi, (%esp)
	movl	-1096(%ebp), %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	jne	L1492
L1490:
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
	jns	L1482
	movl	%eax, -1092(%ebp)
	movl	__ZL4zbit, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL5gmaxy, %edx
	subl	$4, %esp
	testl	%edx, %edx
	je	L1735
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
L1488:
	cmpl	%edi, -1108(%ebp)
	jl	L1736
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
L1487:
	movl	-1112(%ebp), %eax
	movl	(%eax,%esi,4), %edi
	cmpl	%edx, %edi
	jle	L1485
	movl	-1104(%ebp), %eax
	movl	%ebx, %ecx
	movzwl	-1092(%ebp), %ebx
	leal	(%eax,%edx,4), %eax
	movl	-1104(%ebp), %edx
	leal	(%edx,%edi,4), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1486:
	movw	%cx, (%eax)
	addl	$4, %eax
	movw	%bx, -2(%eax)
	cmpl	%eax, %edx
	jne	L1486
	movl	%edi, %edx
L1485:
	movl	-1116(%ebp), %edi
	leal	-1(%esi), %eax
	movl	%esi, %ebx
	cmpl	-1096(%ebp), %eax
	je	L1737
	movl	%edi, -1092(%ebp)
	movl	%eax, %esi
	jmp	L1487
L1739:
	leal	-1(%edi), %edx
	movl	$1, (%esp)
	movl	-1096(%ebp), %ecx
	movl	%ebx, %eax
	movl	%edx, -1108(%ebp)
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	je	L1738
	movl	-1108(%ebp), %edi
L1492:
	testl	%edi, %edi
	jne	L1739
	xorl	%ecx, %ecx
	movw	%cx, -1116(%ebp)
	jmp	L1494
	.p2align 4,,10
	.p2align 3
L1737:
	movl	%edi, -1092(%ebp)
	movl	-1132(%ebp), %eax
	movl	%edi, %ebx
	movl	-1152(%ebp), %ecx
L1484:
	movl	-1096(%ebp), %edi
	subl	%ecx, %eax
	testl	%edi, %edi
	jne	L1488
	cmpl	-1088(%ebp), %edx
	jge	L1711
L1483:
	movl	-1104(%ebp), %eax
	movl	-1136(%ebp), %edi
	movl	%ebx, %ecx
	movzwl	-1092(%ebp), %ebx
	leal	(%eax,%edx,4), %edx
	addl	%edi, %eax
L1489:
	movw	%cx, (%edx)
	addl	$4, %edx
	movw	%bx, -2(%edx)
	cmpl	%edx, %eax
	jne	L1489
L1711:
	movl	__ZL4gvox, %ebx
	movl	__ZL5garea, %ecx
	movl	48(%ebx), %edi
	movl	52(%ebx), %esi
L1476:
	cmpl	%esi, %edi
	jg	L1477
	addl	%edi, %edi
	movl	%edi, 48(%ebx)
	jmp	L1475
L1540:
	movl	-1132(%ebp), %eax
	movl	%edi, %esi
	movl	$0, -1112(%ebp)
	movl	%eax, -1136(%ebp)
L1441:
	movl	$0, -1108(%ebp)
	movl	-1088(%ebp), %eax
	testl	%eax, %eax
	js	L1435
L1439:
	movl	-1140(%ebp), %edi
	xorl	%ebx, %ebx
	testl	%esi, %esi
	js	L1437
	movl	%edi, -1104(%ebp)
	jmp	L1434
L1431:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
L1428:
	addl	$1, %ebx
	addl	$4, -1104(%ebp)
	cmpl	%esi, %ebx
	jg	L1437
L1434:
	movl	-1092(%ebp), %edx
	cmpl	%edx, -1112(%ebp)
	setnb	%dl
	movl	-1108(%ebp), %ecx
	cmpl	-1088(%ebp), %ecx
	setnb	%al
	orb	%dl, %al
	jne	L1425
	cmpl	%esi, %ebx
	jnb	L1425
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
	je	L1425
	movl	-1136(%ebp), %edi
	cmpl	-1092(%ebp), %edi
	jnb	L1426
	imull	%edi, %eax
	addl	-1116(%ebp), %eax
	movl	-1124(%ebp), %edi
	addl	%ebx, %eax
	movl	%eax, %edx
	sarl	$5, %edx
	movl	(%edi,%edx,4), %edx
	btl	%eax, %edx
	jnc	L1426
L1425:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1429
	cmpl	-1100(%ebp), %eax
	jne	L1430
	testb	$1, -1096(%ebp)
	jne	L1740
L1430:
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
L1429:
	cmpl	$1, -1096(%ebp)
	jne	L1431
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L1710
	movl	-1120(%ebp), %eax
	movl	-1108(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L1710:
	movl	__ZL6voxsiz+4, %eax
	movl	__ZL6voxsiz+8, %esi
	movl	$0, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%eax, -1092(%ebp)
	jmp	L1428
L1426:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1741
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
	jne	L1431
	movl	__ZL6voxsiz+4, %eax
	movl	-1116(%ebp), %ecx
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %esi
	movl	%eax, -1088(%ebp)
	movl	__ZL6voxsiz, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	jmp	L1428
L1741:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1428
L1740:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1428
L1477:
	addl	%esi, %esi
	movl	%esi, 52(%ebx)
	jmp	L1475
L1736:
	subl	$1, %edi
	movl	%edi, -1096(%ebp)
	jmp	L1484
L1735:
	movl	__ZL3shp, %eax
	movl	%eax, -1104(%ebp)
	jmp	L1483
L1742:
	movl	%ebx, %eax
	movw	%bx, -1124(%ebp)
	sarl	$5, %ebx
	andl	$31, %eax
L1493:
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
	je	L1495
	testl	%esi, %esi
	je	L1497
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
L1500:
	movl	-1096(%ebp), %eax
	orl	%eax, (%esi,%ebx,4)
	cmpl	$1, %edx
	jle	L1499
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
L1499:
	movl	-1156(%ebp), %eax
	movl	-1108(%ebp), %edi
	addl	%ebx, %eax
	addl	%ecx, %ebx
	orl	%edi, (%esi,%eax,4)
	subl	$1, -1112(%ebp)
	jne	L1500
L1497:
	movl	__ZL3shp, %eax
	movl	-1128(%ebp), %edx
	movzwl	-1124(%ebp), %edi
	addl	$1, -1092(%ebp)
	movl	-1088(%ebp), %ebx
	movw	%di, (%eax,%edx)
	movzwl	-1116(%ebp), %edi
	movw	%di, 2(%eax,%edx)
	cmpl	%ebx, -1092(%ebp)
	jne	L1501
L1481:
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
	jne	L1550
	testl	%ebx, %ebx
	jne	L1686
L1550:
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
	je	L1686
	movl	%eax, 44(%esi)
	movl	$1, %ebx
	movl	$__ZL7addquadiiiiiiiiii, -1128(%ebp)
	jmp	L1370
L1734:
	movl	$32, 52(%ebx)
	jmp	L1471
	.p2align 4,,10
	.p2align 3
L1738:
	movw	%di, -1116(%ebp)
	jmp	L1494
	.p2align 4,,10
	.p2align 3
L1743:
	leal	-1(%ebx), %eax
	movl	$1, %ecx
	movl	%edi, %edx
	movl	%eax, -1108(%ebp)
	movl	%esi, (%esp)
	call	__ZL10isrectfreeiiii
	testb	%al, %al
	je	L1742
	movl	-1108(%ebp), %ebx
L1494:
	testl	%ebx, %ebx
	jne	L1743
	movl	$-1, -1108(%ebp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movw	%dx, -1124(%ebp)
	jmp	L1493
L1495:
	testl	%esi, %esi
	je	L1497
	movl	__ZL4zbit, %eax
	movl	-1112(%ebp), %edi
	sall	$2, %ecx
	movl	-1096(%ebp), %ebx
	andl	-1108(%ebp), %ebx
	leal	(%eax,%edi,4), %eax
L1498:
	orl	%ebx, (%eax)
	addl	%ecx, %eax
	subl	$1, %esi
	jne	L1498
	jmp	L1497
L1538:
	movl	$0, -1112(%ebp)
	movl	-1124(%ebp), %eax
	movl	%eax, -1116(%ebp)
L1406:
	movl	$0, -1108(%ebp)
	movl	-1092(%ebp), %ecx
	testl	%ecx, %ecx
	js	L1399
L1403:
	movl	-1088(%ebp), %eax
	movl	-1140(%ebp), %esi
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	L1401
	movl	%esi, -1104(%ebp)
	jmp	L1398
L1395:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
L1392:
	addl	$4, -1104(%ebp)
	addl	$1, %ebx
	cmpl	-1088(%ebp), %ebx
	jg	L1401
L1398:
	movl	-1108(%ebp), %ecx
	cmpl	-1092(%ebp), %ecx
	setnb	%dl
	cmpl	%edi, -1112(%ebp)
	setnb	%al
	orb	%dl, %al
	jne	L1389
	cmpl	-1088(%ebp), %ebx
	jnb	L1389
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
	je	L1389
	movl	-1116(%ebp), %edx
	cmpl	%edi, %edx
	jnb	L1390
	addl	%edx, %eax
	movl	%eax, %edx
	sarl	$5, %edx
	movl	(%esi,%edx,4), %edx
	btl	%eax, %edx
	jnc	L1390
L1389:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1393
	cmpl	-1100(%ebp), %eax
	jne	L1394
	testb	$1, -1096(%ebp)
	jne	L1744
L1394:
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
L1393:
	cmpl	$1, -1096(%ebp)
	jne	L1395
	movl	-1104(%ebp), %edi
	movl	-1100(%ebp), %eax
	cmpl	%eax, (%edi)
	je	L1709
	movl	-1120(%ebp), %eax
	movl	-1108(%ebp), %edi
	movl	%edi, (%eax,%ebx,4)
	movl	-1100(%ebp), %eax
	movl	-1104(%ebp), %edi
	movl	%eax, (%edi)
L1709:
	movl	__ZL6voxsiz, %eax
	movl	__ZL6voxsiz+8, %edi
	movl	$0, -1096(%ebp)
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%eax, -1088(%ebp)
	jmp	L1392
L1390:
	movl	-1104(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	js	L1745
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
	jne	L1395
	movl	__ZL6voxsiz, %eax
	movl	-1088(%ebp), %ecx
	movl	%ebx, -1100(%ebp)
	movl	__ZL6voxsiz+8, %edi
	movl	%eax, -1092(%ebp)
	movl	__ZL6voxsiz+4, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1088(%ebp)
	jmp	L1392
L1744:
	movl	%eax, -1100(%ebp)
	movl	$0, -1096(%ebp)
	jmp	L1392
L1745:
	movl	-1096(%ebp), %eax
	testl	%eax, %eax
	cmovne	%eax, %ecx
	movl	-1100(%ebp), %eax
	cmove	%ebx, %eax
	movl	%ecx, -1096(%ebp)
	movl	%eax, -1100(%ebp)
	jmp	L1392
L1721:
	movl	$4095, %eax
	jmp	L1316
L1719:
	movl	-1092(%ebp), %eax
	call	__Z13handle_memerri
L1718:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1344
L1717:
	movl	-1100(%ebp), %eax
	call	__Z13handle_memerri
L1345:
	movl	$96, %eax
	call	__Z13handle_memerri
L1714:
	movl	-1108(%ebp), %eax
	call	_kclose
L1328:
	xorl	%edi, %edi
	jmp	L1311
L1715:
	movl	$4095, %eax
	jmp	L1335
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
	.align 4
LC56:
	.ascii "polymost_voxdraw(m:%p, tspr:%p)\0"
	.text
	.p2align 4
	.globl	_polymost_voxdraw.part.0
	.def	_polymost_voxdraw.part.0;	.scl	2;	.type	32;	.endef
_polymost_voxdraw.part.0:
LFB130:
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
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%edx, %ebx
	subl	$224, %esp
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC56, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movzbl	18(%ebx), %eax
	movss	12(%edi), %xmm7
	xorps	%xmm0, %xmm0
	movss	LC57, %xmm4
	movss	8(%edi), %xmm1
	movb	%al, -144(%ebp)
	movzbl	20(%ebx), %eax
	mulss	%xmm7, %xmm4
	movss	16(%edi), %xmm5
	movss	%xmm7, -140(%ebp)
	cvtsi2ssl	%eax, %xmm0
	movswl	30(%ebx), %eax
	mulss	LC58, %xmm0
	mulss	%xmm1, %xmm5
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movzwl	12(%edx), %edx
	mulss	%xmm4, %xmm0
	andl	$48, %edx
	movw	%dx, -148(%ebp)
	cmpw	$16, %dx
	jne	L1747
	mulss	LC59, %xmm0
L1747:
	sall	$6, %eax
	movsbl	22(%ebx), %esi
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	addl	_spriteext, %eax
	movaps	%xmm3, %xmm6
	movss	LC60, %xmm7
	movzwl	20(%eax), %edx
	leal	512(%edx), %ecx
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %edx
	imull	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm7, %xmm2
	subss	%xmm2, %xmm6
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	movl	_globalorientation, %edx
	movl	%edx, %esi
	mulss	%xmm7, %xmm2
	addss	%xmm3, %xmm2
	andl	$8, %esi
	je	L1816
	movss	LC61, %xmm7
	movaps	%xmm7, %xmm3
	xorps	%xmm7, %xmm5
	movups	%xmm7, -136(%ebp)
	xorps	%xmm1, %xmm3
L1748:
	andl	$4, %edx
	movaps	%xmm1, %xmm7
	movl	%edx, -152(%ebp)
	je	L1749
	movups	-136(%ebp), %xmm7
	xorps	-136(%ebp), %xmm2
	xorps	-136(%ebp), %xmm6
	xorps	%xmm1, %xmm7
L1749:
	mulss	%xmm0, %xmm2
	movzbl	21(%ebx), %edx
	movl	48(%eax), %ecx
	mulss	%xmm0, %xmm7
	addl	8(%ebx), %ecx
	xorps	-136(%ebp), %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm6, %xmm0
	movss	%xmm2, -156(%ebp)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm4, %xmm2
	mulss	%xmm2, %xmm3
	mulss	%xmm5, %xmm2
	movss	%xmm2, -160(%ebp)
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	movl	%esi, %ecx
	shrl	$3, %ecx
	andl	$1, %ecx
	movb	%cl, -164(%ebp)
	cmpw	$0, -148(%ebp)
	je	L1818
	movss	LC54, %xmm5
	testb	%cl, %cl
	jne	L1750
L1818:
	movss	LC55, %xmm5
L1750:
	movss	LC44, %xmm6
	movsbl	23(%ebx), %ecx
	xorps	%xmm4, %xmm4
	imull	%edx, %ecx
	cvtsi2ssl	%ecx, %xmm4
	mulss	%xmm5, %xmm4
	mulss	-140(%ebp), %xmm4
	subss	%xmm4, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2ssl	64(%edi), %xmm4
	mulss	%xmm4, %xmm6
	movss	%xmm6, -148(%ebp)
	testb	$-128, 12(%ebx)
	jne	L1751
	addss	76(%edi), %xmm6
	movss	%xmm6, -148(%ebp)
L1752:
	testl	%esi, %esi
	je	L1753
	subss	-148(%ebp), %xmm4
	movss	%xmm4, -148(%ebp)
L1753:
	xorps	%xmm4, %xmm4
	xorps	%xmm6, %xmm6
	movl	40(%eax), %edx
	addl	(%ebx), %edx
	cvtsi2ssl	_xdimen, %xmm4
	movl	44(%eax), %eax
	addl	4(%ebx), %eax
	leal	-88(%ebp), %esi
	subl	_globalposx, %edx
	subl	_globalposy, %eax
	movl	%esi, %ecx
	cvtsi2ssl	_viewingrange, %xmm6
	movss	LC62, %xmm5
	movss	%xmm4, -140(%ebp)
	flds	-140(%ebp)
	fmull	_gxyaspect
	fdivrs	LC63
	mulss	%xmm4, %xmm6
	divss	%xmm6, %xmm5
	movups	-136(%ebp), %xmm6
	fstps	-140(%ebp)
	movss	-140(%ebp), %xmm4
	mulss	%xmm4, %xmm3
	mulss	%xmm5, %xmm1
	xorps	%xmm5, %xmm6
	mulss	%xmm6, %xmm7
	movss	%xmm3, -176(%ebp)
	xorps	%xmm3, %xmm3
	cvtsi2ssl	_globalposz, %xmm3
	movss	%xmm1, -168(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	movl	-144(%ebp), %edx
	mulss	LC64, %xmm1
	movss	%xmm7, -172(%ebp)
	subss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	andl	$1, %edx
	cvtsi2ssl	%edx, %xmm3
	leal	-116(%ebp), %edx
	addss	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	mulss	LC65, %xmm2
	cvtsi2ssl	%eax, %xmm3
	movl	%ebx, %eax
	addss	-160(%ebp), %xmm2
	mulss	%xmm5, %xmm0
	mulss	LC66, %xmm3
	addss	-156(%ebp), %xmm3
	mulss	%xmm4, %xmm2
	mulss	%xmm3, %xmm1
	movss	%xmm0, -112(%ebp)
	movaps	%xmm5, %xmm0
	movss	%xmm2, -108(%ebp)
	movss	%xmm1, -116(%ebp)
	call	_md3_vox_calcmat_common
	xorps	%xmm1, %xmm1
	movss	_grhalfxdown10x, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1754
	movups	-136(%ebp), %xmm6
	movss	-88(%ebp), %xmm1
	xorps	%xmm6, %xmm1
	movss	%xmm1, -88(%ebp)
	movss	-72(%ebp), %xmm1
	xorps	%xmm6, %xmm1
	movss	%xmm1, -72(%ebp)
	movss	-56(%ebp), %xmm1
	xorps	%xmm6, %xmm1
	movss	%xmm1, -56(%ebp)
	movss	-40(%ebp), %xmm1
	xorps	%xmm6, %xmm1
	movss	%xmm1, -40(%ebp)
L1754:
	xorps	%xmm1, %xmm1
	movl	-152(%ebp), %eax
	movl	_glad_glFrontFace, %ecx
	comiss	%xmm1, %xmm0
	setnb	%dl
	shrl	$2, %eax
	xorb	-164(%ebp), %dl
	cmpb	%al, %dl
	je	L1756
	movl	$2304, (%esp)
	call	*%ecx
	subl	$4, %esp
L1757:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1758
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1758:
	movl	$1029, (%esp)
	call	*_glad_glCullFace
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2ssl	_globalshade, %xmm0
	movswl	_numshades, %eax
	xorps	%xmm3, %xmm3
	subl	$4, %esp
	mulss	_shadescale, %xmm0
	cvtsi2ssl	4(%edi), %xmm1
	cvtsi2ssl	%eax, %xmm2
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
	movss	%xmm1, -140(%ebp)
	testb	$-60, _hictinting(,%eax,8)
	jne	L1766
	testb	$1, 28(%edi)
	je	L1869
	movl	$1, _globalnoeffect
L1766:
	movss	-140(%ebp), %xmm4
	movss	%xmm4, -156(%ebp)
	movss	%xmm4, -152(%ebp)
L1764:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1767
L1769:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	movss	LC24, %xmm1
	cvtsi2ssl	%edx, %xmm0
	movzbl	_hictinting+2043, %edx
	mulss	%xmm1, %xmm0
	mulss	-140(%ebp), %xmm0
	movss	%xmm0, -140(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-152(%ebp), %xmm0
	movss	%xmm0, -152(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	mulss	-156(%ebp), %xmm0
	movss	%xmm0, -156(%ebp)
L1768:
	movswl	14(%ebx), %eax
	testb	$16, -144(%ebp)
	jne	L1770
	movswl	_tiletovox(%eax,%eax), %eax
L1770:
	testb	$1, -144(%ebp)
	jne	L1771
	testb	$1, _voxflags(%eax)
	je	L1870
L1772:
	movss	LC51, %xmm3
	movss	%xmm3, -144(%ebp)
	movss	%xmm3, -164(%ebp)
L1774:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	movl	%eax, %edx
	testb	$2, 12(%ebx)
	je	L1775
	movswl	30(%ebx), %eax
	xorps	%xmm0, %xmm0
	sall	$6, %eax
	addl	_spriteext, %eax
	movss	8(%eax), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1871
L1775:
	cmpl	$1, %edx
	je	L1778
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1778:
	movss	LC57, %xmm0
	mulss	-172(%ebp), %xmm0
	movss	-64(%ebp), %xmm5
	movss	-88(%ebp), %xmm7
	movss	-84(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	%xmm5, -180(%ebp)
	movss	-72(%ebp), %xmm3
	movss	-68(%ebp), %xmm4
	movss	LC57, %xmm5
	mulss	-168(%ebp), %xmm5
	mulss	%xmm0, %xmm7
	xorps	-136(%ebp), %xmm1
	movss	-52(%ebp), %xmm6
	mulss	%xmm0, %xmm2
	mulss	-80(%ebp), %xmm0
	mulss	LC57, %xmm1
	movss	%xmm7, -88(%ebp)
	mulss	68(%edi), %xmm7
	movss	%xmm2, -84(%ebp)
	movss	%xmm0, -160(%ebp)
	movss	%xmm0, -80(%ebp)
	mulss	%xmm1, %xmm3
	movaps	%xmm5, %xmm0
	mulss	-56(%ebp), %xmm5
	mulss	%xmm0, %xmm6
	mulss	%xmm1, %xmm4
	mulss	-48(%ebp), %xmm0
	movss	%xmm3, -56(%ebp)
	mulss	-180(%ebp), %xmm1
	movss	%xmm5, -72(%ebp)
	mulss	72(%edi), %xmm5
	movss	%xmm6, -68(%ebp)
	movss	%xmm4, -52(%ebp)
	movss	%xmm0, -64(%ebp)
	movss	%xmm1, -48(%ebp)
	addss	%xmm7, %xmm5
	movss	-148(%ebp), %xmm7
	mulss	%xmm7, %xmm3
	mulss	%xmm7, %xmm4
	mulss	%xmm7, %xmm1
	addss	%xmm5, %xmm3
	movss	-40(%ebp), %xmm5
	subss	%xmm3, %xmm5
	movss	%xmm5, -40(%ebp)
	mulss	72(%edi), %xmm6
	mulss	68(%edi), %xmm2
	mulss	72(%edi), %xmm0
	addss	%xmm6, %xmm2
	addss	%xmm2, %xmm4
	movss	-36(%ebp), %xmm2
	subss	%xmm4, %xmm2
	movss	%xmm2, -36(%ebp)
	movss	-160(%ebp), %xmm2
	mulss	68(%edi), %xmm2
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-32(%ebp), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -32(%ebp)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movss	-144(%ebp), %xmm3
	subl	$4, %esp
	movl	$0x00000000, -44(%ebp)
	movss	%xmm3, -28(%ebp)
	movl	$0x00000000, -60(%ebp)
	movl	$0x00000000, -76(%ebp)
	movl	%esi, (%esp)
	call	*_glad_glLoadMatrixf
	xorl	%eax, %eax
	movss	__ZL14polymost1Clamp.lto_priv.0, %xmm5
	movss	__ZL14polymost1Clamp.lto_priv.0+4, %xmm4
	subl	$4, %esp
	movss	%xmm5, -160(%ebp)
	movss	%xmm4, -168(%ebp)
	call	__Z17polymost_setClampc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1779
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1823
	je	L1779
L1823:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1779:
	movl	80(%edi), %esi
	testl	%esi, %esi
	je	L1781
	cmpl	$3, _rendmode
	je	L1872
L1781:
	movl	_globalpal, %ebx
	movl	24(%edi), %eax
	leal	(%eax,%ebx,4), %eax
	movl	%ebx, -136(%ebp)
	movl	%eax, -176(%ebp)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1783
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	-104(%ebp), %esi
L1807:
	xorl	%eax, %eax
	movl	$1, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1808
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L1825
	je	L1808
L1825:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1808:
	movups	LC68, %xmm0
	movl	%esi, %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
L1798:
	fnstcw	-118(%ebp)
	flds	-168(%ebp)
	movss	-164(%ebp), %xmm5
	movzwl	-118(%ebp), %eax
	fld	%st(0)
	faddp	%st, %st(1)
	orb	$12, %ah
	fadds	-160(%ebp)
	movw	%ax, -120(%ebp)
	fldcw	-120(%ebp)
	fistps	-136(%ebp)
	fldcw	-118(%ebp)
	movzwl	-136(%ebp), %ebx
	movss	%xmm5, 12(%esp)
	movss	-156(%ebp), %xmm4
	movss	%xmm4, 8(%esp)
	movss	-152(%ebp), %xmm6
	movss	%xmm6, 4(%esp)
	movss	-140(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glColor4f
	movl	92(%edi), %edx
	movl	$34963, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	88(%edi), %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	subl	$16, %esp
	movl	$33984, (%esp)
	call	*_glad_glClientActiveTexture
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	movl	$12, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	subl	$16, %esp
	movl	$0, 12(%esp)
	movl	$5125, 8(%esp)
	movl	40(%edi), %eax
	movl	$4, (%esp)
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movzbl	%bl, %eax
	call	__Z17polymost_setClampc
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1810
	movss	-144(%ebp), %xmm3
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm3
	jp	L1826
	je	L1811
L1826:
	movss	-144(%ebp), %xmm3
	movss	%xmm3, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm3, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	_nofog, %edx
	subl	$8, %esp
	testl	%edx, %edx
	je	L1873
L1810:
	call	__Z28polymost_resetVertexPointersv
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1814
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1814:
	call	*_glad_glLoadIdentity
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
	.p2align 4,,10
	.p2align 3
L1751:
	.cfi_restore_state
	testb	$16, -144(%ebp)
	jne	L1752
	movss	-148(%ebp), %xmm6
	movss	76(%edi), %xmm5
	addss	%xmm6, %xmm5
	subss	%xmm6, %xmm5
	movss	%xmm5, -148(%ebp)
	jmp	L1752
	.p2align 4,,10
	.p2align 3
L1816:
	movss	LC61, %xmm7
	movaps	%xmm1, %xmm3
	movups	%xmm7, -136(%ebp)
	jmp	L1748
	.p2align 4,,10
	.p2align 3
L1783:
	movl	52(%edi), %eax
	movl	_gammabrightness, %ecx
	movl	$_britable, %ebx
	movl	%eax, -180(%ebp)
	movl	48(%edi), %eax
	movl	%eax, -184(%ebp)
	movl	44(%edi), %eax
	movl	%eax, -192(%ebp)
	testl	%ecx, %ecx
	jne	L1799
	movl	_curbrightness, %ebx
	sall	$8, %ebx
	addl	$_britable, %ebx
L1799:
	movl	-180(%ebp), %eax
	imull	-184(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	%eax, -148(%ebp)
	movl	%ecx, -172(%ebp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -188(%ebp)
	testl	%eax, %eax
	je	L1800
	testl	%esi, %esi
	jne	L1801
	movl	-148(%ebp), %edx
	movzbl	-136(%ebp), %ecx
	testl	%edx, %edx
	jle	L1803
	movl	%ecx, -172(%ebp)
	movl	%edi, -196(%ebp)
	movl	-192(%ebp), %edi
	.p2align 4
	.p2align 3
L1804:
	movzbl	(%edi,%esi,4), %edx
	xorl	%ecx, %ecx
	movl	%eax, -136(%ebp)
	movzbl	(%ebx,%edx), %edx
	movb	%dl, 2(%eax)
	movzbl	1(%edi,%esi,4), %edx
	movzbl	(%ebx,%edx), %edx
	movb	%dl, 1(%eax)
	movzbl	2(%edi,%esi,4), %edx
	addl	$1, %esi
	movzbl	(%ebx,%edx), %edx
	movb	$-1, 3(%eax)
	movb	%dl, (%eax)
	movl	-172(%ebp), %edx
	call	_hictinting_applypixcolor
	movl	-136(%ebp), %eax
	addl	$4, %eax
	cmpl	%esi, -148(%ebp)
	jne	L1804
	movl	-196(%ebp), %edi
L1803:
	leal	-104(%ebp), %esi
	movl	$1, (%esp)
	movl	%esi, 4(%esp)
	call	*_glad_glGenTextures
	movl	-104(%ebp), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	movl	-188(%ebp), %ebx
	subl	$12, %esp
	movl	%ebx, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6408, 24(%esp)
	movl	$0, 20(%esp)
	movl	-180(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-184(%ebp), %eax
	movl	$6408, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-104(%ebp), %eax
	movl	-176(%ebp), %ebx
	subl	$4, %esp
	movl	%eax, (%ebx)
	jmp	L1807
	.p2align 4,,10
	.p2align 3
L1870:
	movzwl	12(%ebx), %eax
	movzbl	19(%ebx), %edx
	movl	%eax, %ecx
	shrw	$9, %cx
	andw	$2, %ax
	movw	%ax, -160(%ebp)
	je	L1819
	movss	LC51, %xmm3
	andl	$1, %ecx
	leal	(%ecx,%edx,2), %eax
	movss	_glblend(,%eax,8), %xmm0
	movss	%xmm3, -144(%ebp)
L1773:
	movswl	30(%ebx), %eax
	movss	-144(%ebp), %xmm1
	sall	$6, %eax
	addl	_spriteext, %eax
	subss	8(%eax), %xmm1
	movzwl	-160(%ebp), %eax
	shrw	%ax
	mulss	%xmm0, %xmm1
	andl	$1, %eax
	movss	%xmm1, -164(%ebp)
	call	_handle_blend
	jmp	L1774
	.p2align 4,,10
	.p2align 3
L1871:
	movss	-144(%ebp), %xmm4
	comiss	-164(%ebp), %xmm4
	ja	L1775
	testl	%edx, %edx
	je	L1778
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1778
	.p2align 4,,10
	.p2align 3
L1756:
	movl	$2305, (%esp)
	call	*%ecx
	subl	$4, %esp
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1771:
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	subl	$8, %esp
	jmp	L1772
	.p2align 4,,10
	.p2align 3
L1801:
	movl	-136(%ebp), %esi
	xorl	%eax, %eax
	movl	_palookup(,%esi,4), %ecx
	testl	%ecx, %ecx
	cmove	%eax, %esi
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jle	L1803
	movl	-192(%ebp), %edx
	movl	-172(%ebp), %ecx
	movl	%edi, -172(%ebp)
	movl	%esi, %edi
	movl	-188(%ebp), %eax
	addl	$3, %edx
	addl	%edx, %ecx
	movl	%edx, -136(%ebp)
	movl	%ecx, -148(%ebp)
	.p2align 4
	.p2align 3
L1806:
	movl	-136(%ebp), %esi
	addl	$4, %eax
	addl	$4, -136(%ebp)
	movzbl	(%esi), %ecx
	movl	_palookup(,%edi,4), %esi
	movzbl	(%esi,%ecx), %ecx
	movzbl	_curpalette+2(,%ecx,4), %esi
	movzbl	(%ebx,%esi), %edx
	movb	%dl, -2(%eax)
	movzbl	_curpalette+1(,%ecx,4), %esi
	movzbl	(%ebx,%esi), %edx
	movl	-136(%ebp), %esi
	movb	%dl, -3(%eax)
	movzbl	_curpalette(,%ecx,4), %ecx
	movzbl	(%ebx,%ecx), %ecx
	movb	$-1, -1(%eax)
	movb	%cl, -4(%eax)
	cmpl	%esi, -148(%ebp)
	jne	L1806
	movl	-172(%ebp), %edi
	jmp	L1803
	.p2align 4,,10
	.p2align 3
L1872:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1781
	movl	_gltexfiltermode, %eax
	movl	%eax, -184(%ebp)
	testl	%eax, %eax
	jne	L1781
	movl	84(%edi), %eax
	movl	%eax, -136(%ebp)
	testl	%eax, %eax
	jne	L1785
	movl	52(%edi), %edx
	movl	48(%edi), %esi
	movl	44(%edi), %ecx
	movl	%esi, -148(%ebp)
	imull	%edx, %esi
	movl	%ecx, -176(%ebp)
	movl	%edx, -180(%ebp)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -172(%ebp)
	testl	%eax, %eax
	je	L1786
	movl	-180(%ebp), %edx
	testl	%edx, %edx
	jle	L1787
	movl	-148(%ebp), %esi
	testl	%esi, %esi
	jle	L1787
	leal	0(,%esi,4), %ecx
	movl	-176(%ebp), %esi
	movl	%edi, -188(%ebp)
	movl	%ecx, -180(%ebp)
	movl	-136(%ebp), %edi
	movl	%ebx, -192(%ebp)
	movl	-184(%ebp), %ebx
	addl	%ecx, %esi
	.p2align 4
	.p2align 3
L1788:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %ecx
	movl	%ebx, -136(%ebp)
	leal	(%eax,%edi,4), %eax
	addl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1789:
	movzbl	3(%eax), %ebx
	addl	$4, %eax
	movb	%bl, (%ecx)
	addl	%edx, %ecx
	cmpl	%eax, %esi
	jne	L1789
	movl	-136(%ebp), %ebx
	addl	-148(%ebp), %edi
	addl	-180(%ebp), %esi
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jne	L1788
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ebx
L1787:
	leal	-104(%ebp), %esi
	movl	%edx, -136(%ebp)
	movl	%esi, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	movl	-104(%ebp), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	movss	-144(%ebp), %xmm5
	subl	$12, %esp
	movss	%xmm5, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	movl	-172(%ebp), %eax
	subl	$12, %esp
	movl	%eax, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$0, 20(%esp)
	movl	-148(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-136(%ebp), %edx
	movl	$6403, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	movl	-172(%ebp), %eax
	subl	$36, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-104(%ebp), %eax
	subl	$4, %esp
	movl	%eax, 84(%edi)
L1790:
	xorl	%eax, %eax
	movl	$512, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	(%ebx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	subl	_globalposx, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	4(%ebx), %eax
	subl	_globalposy, %eax
	mulss	_gcosang2, %xmm0
	cvtsi2ssl	%eax, %xmm1
	mulss	_gsinang2, %xmm1
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_globvis2, %xmm1
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_xdimscale, %xmm1
	mulss	%xmm1, %xmm0
	mulss	LC67, %xmm0
	movss	%xmm0, -136(%ebp)
	flds	-136(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	cmpl	$3, _rendmode
	je	L1874
L1791:
	movl	_r_usetileshades, %ebx
	testl	%ebx, %ebx
	je	L1875
	testb	$1, _globalflags
	jne	L1876
L1792:
	movswl	_numshades, %edx
	fstps	-136(%ebp)
	cvttss2sil	-136(%ebp), %eax
	addl	_globalshade, %eax
	movss	-144(%ebp), %xmm3
	subl	$1, %edx
	cmpl	%edx, %eax
	movss	%xmm3, -156(%ebp)
	cmovg	%edx, %eax
	xorl	%edx, %edx
	movss	%xmm3, -152(%ebp)
	movss	%xmm3, -140(%ebp)
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _globalshade
	jmp	L1794
	.p2align 4,,10
	.p2align 3
L1875:
	fstp	%st(0)
	jmp	L1794
L1876:
	fstp	%st(0)
L1794:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1796
	movss	-144(%ebp), %xmm5
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm5
	jp	L1824
	je	L1796
L1824:
	movss	-144(%ebp), %xmm3
	movss	%xmm3, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm3, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L1796:
	call	__Z22polymost_updatePalettev
	movups	LC68, %xmm0
	movl	%esi, %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
	movl	%esi, %eax
	movl	$0x00000000, -104(%ebp)
	movl	$0x00000000, -100(%ebp)
	call	__Z25polymost_setHalfTexelSizeRK4vec2IfE
	xorps	%xmm0, %xmm0
	call	__Z22polymost_setVisibilityf
	jmp	L1798
	.p2align 4,,10
	.p2align 3
L1819:
	movss	LC51, %xmm4
	andl	$1, %ecx
	movss	%xmm4, -144(%ebp)
	movaps	%xmm4, %xmm0
	jmp	L1773
	.p2align 4,,10
	.p2align 3
L1869:
	movzbl	_hictinting+2(,%eax,8), %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC24, %xmm2
	movss	-140(%ebp), %xmm6
	cvtsi2ssl	%edx, %xmm0
	movzbl	_hictinting+3(,%eax,8), %edx
	movzbl	_hictinting+4(,%eax,8), %eax
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm1
	movss	%xmm0, -140(%ebp)
	movss	%xmm1, -152(%ebp)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm1
	mulss	%xmm6, %xmm1
	movss	%xmm1, -156(%ebp)
	jmp	L1764
	.p2align 4,,10
	.p2align 3
L1811:
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L1810
L1815:
	movss	-144(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L1827
	je	L1810
L1827:
	movss	-144(%ebp), %xmm4
	movss	%xmm4, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm4, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L1810
	.p2align 4,,10
	.p2align 3
L1767:
	cmpb	$-1, %al
	jne	L1769
	jmp	L1768
	.p2align 4,,10
	.p2align 3
L1873:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L1815
	jmp	L1810
	.p2align 4,,10
	.p2align 3
L1800:
	movl	-172(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1785:
	movl	-136(%ebp), %eax
	leal	-104(%ebp), %esi
	call	__Z19buildgl_bindTexturejj.constprop.0
	jmp	L1790
L1874:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1791
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1792
	jmp	L1791
L1786:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE130:
	.section .rdata,"dr"
	.align 4
LC69:
	.ascii "Error determining system keyboard layout: %s.\0"
	.text
	.p2align 4
	.globl	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	.def	__Z34windowsGetSystemKeyboardLayoutNamev.part.0;	.scl	2;	.type	32;	.endef
__Z34windowsGetSystemKeyboardLayoutNamev.part.0:
LFB144:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L1880
L1878:
	movl	$1, __ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1880:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1878
	call	*__imp__GetLastError@0
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 4
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$LC69, 12(%esp)
	movl	$668, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	$1, __ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE144:
	.section .rdata,"dr"
LC70:
	.ascii "00000409\0"
LC71:
	.ascii "Window focus changed\0"
LC72:
	.ascii "Loaded %s keyboard layout\0"
LC73:
	.ascii "Restored %s keyboard layout\0"
	.text
	.p2align 4
	.globl	__Z24windowsSetKeyboardLayoutPKci.part.0
	.def	__Z24windowsSetKeyboardLayoutPKci.part.0;	.scl	2;	.type	32;	.endef
__Z24windowsSetKeyboardLayoutPKci.part.0:
LFB145:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	movl	%edx, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%ebx, %ebx
	jne	L1903
L1882:
	cmpl	$LC70, %ecx
	je	L1904
	cmpl	$4, %eax
	jg	L1905
L1885:
	movl	__ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0, %edx
	movl	__ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0, %eax
	testl	%edx, %edx
	je	L1906
L1889:
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ActivateKeyboardLayout@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
L1881:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1905:
	.cfi_restore_state
	movl	%ecx, %eax
	call	__ZL31windowsDecodeKeyboardLayoutNamePKc
	movl	$LC73, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$642, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1885
	.p2align 4,,10
	.p2align 3
L1903:
	cmpl	$1, %eax
	jg	L1883
	cmpl	$LC70, %ecx
	jne	L1885
	.p2align 4
	.p2align 3
L1884:
	movl	__ZZ24windowsSetKeyboardLayoutPKciE10enUSLoaded, %eax
	testl	%eax, %eax
	je	L1907
	movl	__ZZ24windowsSetKeyboardLayoutPKciE10enUSLayout, %eax
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ActivateKeyboardLayout@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
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
L1904:
	.cfi_restore_state
	cmpl	$4, %eax
	jle	L1884
	movl	$LC70, %eax
	call	__ZL31windowsDecodeKeyboardLayoutNamePKc
	movl	$LC72, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$640, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1884
	.p2align 4,,10
	.p2align 3
L1907:
	movl	$259, 4(%esp)
	movl	$LC70, (%esp)
	call	*__imp__LoadKeyboardLayoutA@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, __ZZ24windowsSetKeyboardLayoutPKciE10enUSLayout
	testl	%eax, %eax
	je	L1881
	movl	$1, __ZZ24windowsSetKeyboardLayoutPKciE10enUSLoaded
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1906:
	.cfi_restore_state
	movl	$0, (%esp)
	call	*__imp__GetKeyboardLayout@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, __ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0
	movl	$1, __ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0
	jmp	L1889
	.p2align 4,,10
	.p2align 3
L1883:
	movl	$LC71, 12(%esp)
	movl	$637, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$2, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	20(%esp), %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	jmp	L1882
	.cfi_endproc
LFE145:
	.section .rdata,"dr"
	.align 4
LC74:
	.ascii "Error setting thread priority: %s.\0"
LC75:
	.ascii "Games\0"
	.align 4
LC76:
	.ascii "Error setting AVRT thread priority: error %ld: %s.\0"
	.align 4
LC77:
	.ascii "Error setting AVRT thread characteristics with index %ld: error %ld: %s.\0"
	.align 4
LC78:
	.ascii "Error reverting AVRT thread characteristics: error %ld: %s.\0"
	.text
	.p2align 4
	.globl	__Z24windowsHandleFocusChangei
	.def	__Z24windowsHandleFocusChangei;	.scl	2;	.type	32;	.endef
__Z24windowsHandleFocusChangei:
LFB147:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edx
	cmpb	$0, __ZGVZ24windowsHandleFocusChangeiE8hProcess
	je	L1944
L1909:
	movl	$1, __ZL21win_silentfocuschange
	movl	_win_boostpriority, %eax
	testl	%edx, %edx
	je	L1910
	testl	%eax, %eax
	je	L1911
	cmpl	$2, %eax
	movl	$128, %edx
	movl	$32768, %eax
	cmove	%edx, %eax
	movl	%eax, 4(%esp)
	movl	__ZZ24windowsHandleFocusChangeiE8hProcess, %eax
	movl	%eax, (%esp)
	call	*__imp__SetPriorityClass@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	call	*__imp__GetCurrentThread@0
	movl	$15, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__SetThreadPriority@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L1945
L1913:
	movl	__ZL5hAVRT.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1911
	movl	__ZL9hMMTHREAD.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1946
L1914:
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	*__ZL26avrt_AvSetMmThreadPriority.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L1911
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1947
	.p2align 4
	.p2align 3
L1911:
	movl	$1, %eax
	call	__Z17windowsSetupTimerb
	leal	35(%esp), %edx
	movl	%edx, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	leal	35(%esp), %edx
	movl	$LC70, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1916
	movl	$1, %edx
	movl	$LC70, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L1916:
	movl	__ZL19win_performancemode.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1917
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1917
	movl	$_GUID_MIN_POWER_SAVINGS, 4(%esp)
	movl	$0, (%esp)
	call	*__ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L1917:
	movl	$0, __ZL21win_silentfocuschange
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1910:
	.cfi_restore_state
	testl	%eax, %eax
	je	L1918
	movl	__ZZ24windowsHandleFocusChangeiE8hProcess, %eax
	movl	$16384, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__SetPriorityClass@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L1948
L1919:
	movl	__ZL5hAVRT.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L1918
	movl	__ZL9hMMTHREAD.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1918
	movl	%eax, (%esp)
	call	*__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L1949
	movl	$0, __ZZ24windowsHandleFocusChangeiE5index
	movl	$0, __ZL9hMMTHREAD.lto_priv.0
	.p2align 4
	.p2align 3
L1918:
	xorl	%eax, %eax
	call	__Z17windowsSetupTimerb
	movl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0, %edx
	testl	%edx, %edx
	je	L1950
L1921:
	leal	35(%esp), %edx
	movl	%edx, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	leal	35(%esp), %edx
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1922
	movl	$1, %edx
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L1922:
	movl	__ZL19win_performancemode.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1917
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1917
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	*__ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	$0, __ZL21win_silentfocuschange
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1944:
	.cfi_restore_state
	movl	%eax, 28(%esp)
	call	*__imp__GetCurrentProcess@0
	movb	$1, __ZGVZ24windowsHandleFocusChangeiE8hProcess
	movl	28(%esp), %edx
	movl	%eax, __ZZ24windowsHandleFocusChangeiE8hProcess
	jmp	L1909
	.p2align 4,,10
	.p2align 3
L1950:
	call	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	jmp	L1921
	.p2align 4,,10
	.p2align 3
L1948:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1919
	call	*__imp__GetLastError@0
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$LC74, 12(%esp)
	movl	$742, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1919
	.p2align 4,,10
	.p2align 3
L1945:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1913
	call	*__imp__GetLastError@0
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$LC74, 12(%esp)
	movl	$708, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1913
	.p2align 4,,10
	.p2align 3
L1946:
	movl	$__ZZ24windowsHandleFocusChangeiE5index, 4(%esp)
	movl	$LC75, (%esp)
	call	*__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, __ZL9hMMTHREAD.lto_priv.0
	testl	%eax, %eax
	jne	L1914
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1911
	movl	%ecx, 8(%esp)
	movl	%ecx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	movl	__ZZ24windowsHandleFocusChangeiE5index, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ecx
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%ecx, 20(%esp)
	movl	$LC77, 12(%esp)
	movl	$725, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1911
	.p2align 4,,10
	.p2align 3
L1947:
	movl	%ecx, 8(%esp)
	movl	%ecx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ecx
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	$LC76, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$719, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1911
	.p2align 4,,10
	.p2align 3
L1949:
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1918
	movl	%ecx, 8(%esp)
	movl	%ecx, 28(%esp)
	movl	$0, 24(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	$0, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ecx
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	$LC78, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$749, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1918
	.cfi_endproc
LFE147:
	.section .rdata,"dr"
LC79:
	.ascii "dwmapi.dll\0"
LC80:
	.ascii "DwmEnableComposition\0"
LC81:
	.ascii "DwmFlush\0"
LC82:
	.ascii "DwmGetCompositionTimingInfo\0"
LC83:
	.ascii "DwmIsCompositionEnabled\0"
	.align 4
LC84:
	.ascii "DwmGetCompositionTimingInfo() failed: HRESULT: 0x%08x (%s).\0"
LC85:
	.ascii "Dis\0"
	.align 4
LC86:
	.ascii "%sabling DWM desktop composition\0"
	.text
	.p2align 4
	.globl	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z26windowsDwmSetupCompositioni.part.0.constprop.0:
LFB150:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$48, %esp
	.cfi_def_cfa_offset 56
	movl	__ZL7hDWMApi, %edx
	testl	%edx, %edx
	je	L1967
L1952:
	movl	__ZZ26windowsDwmSetupCompositioniE34dwmapi_DwmGetCompositionTimingInfo, %ebx
	testl	%ebx, %ebx
	je	L1953
	movl	$292, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_timingInfo, (%esp)
	call	_memset
	movl	$_timingInfo, 4(%esp)
	movl	$292, _timingInfo
	movl	$0, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L1968
L1953:
	movl	__ZL21win_togglecomposition.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1951
	movl	__ZZ26windowsDwmSetupCompositioniE27dwmapi_DwmEnableComposition, %eax
	testl	%eax, %eax
	je	L1951
	cmpl	$1, __ZL3osv.lto_priv.0+8
	jbe	L1969
L1951:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1969:
	.cfi_restore_state
	movl	$0, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 52
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %eax
	jle	L1951
	movl	$LC85, 16(%esp)
	movl	$LC86, 12(%esp)
	movl	$561, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1951
	.p2align 4,,10
	.p2align 3
L1968:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1953
	call	__ZNSt3_V215system_categoryEv
	leal	24(%esp), %ecx
	movl	(%eax), %edx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	*16(%edx)
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	24(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$LC84, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$552, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %eax
	leal	32(%esp), %edx
	cmpl	%edx, %eax
	je	L1953
	call	_mi_free
	jmp	L1953
	.p2align 4,,10
	.p2align 3
L1967:
	movl	$LC79, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 52
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL7hDWMApi
	testl	%eax, %eax
	je	L1952
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC80, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZZ26windowsDwmSetupCompositioniE27dwmapi_DwmEnableComposition
	movl	__ZL7hDWMApi, %eax
	movl	$LC81, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL15dwmapi_DwmFlush.lto_priv.0
	movl	__ZL7hDWMApi, %eax
	movl	$LC82, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZZ26windowsDwmSetupCompositioniE34dwmapi_DwmGetCompositionTimingInfo
	movl	__ZL7hDWMApi, %eax
	movl	$LC83, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	jmp	L1952
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	__ZL17AL_SetVoiceVolumei.lto_priv.0
	.def	__ZL17AL_SetVoiceVolumei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17AL_SetVoiceVolumei.lto_priv.0:
LFB156:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	imull	$44, %eax, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$127, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	-9(%ebx), %edi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	__ZL5Voice.lto_priv.0+20(%edx), %eax
	movl	__ZL5Voice.lto_priv.0+36(%edx), %ebp
	movl	%eax, (%esp)
	movl	__ZL5Voice.lto_priv.0+32(%edx), %eax
	leal	(%eax,%eax,2), %ecx
	leal	_ADLIB_TimbreBank(%eax,%ecx,4), %ecx
	movsbl	12(%ecx), %eax
	addl	__ZL5Voice.lto_priv.0+16(%edx), %eax
	movl	%ecx, 8(%esp)
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	cmpl	$8, %ebx
	cmovle	%ebx, %edi
	xorl	%edx, %edx
	leal	128(%eax), %esi
	imull	$52, (%esp), %eax
	movl	%esi, 4(%esp)
	movl	__ZL7Channel.lto_priv.0+24(%eax), %ebx
	movl	__ZL9slotVoice.lto_priv.0+4(,%edi,8), %eax
	imull	%esi, %ebx
	leal	0(%ebp,%eax,2), %eax
	imull	__ZL10VoiceLevel.lto_priv.0(,%eax,4), %ebx
	shrl	$15, %ebx
	testl	%ebp, %ebp
	sete	%dl
	sall	$8, %edx
	movl	%edx, %esi
	movl	%ebx, %edx
	xorl	$63, %edx
	orl	__ZL8VoiceKsl.lto_priv.0(,%eax,4), %edx
	movl	__ZL9slotVoice.lto_priv.0+4(,%edi,8), %eax
	movzbl	%dl, %edx
	movsbl	__ZL10offsetSlot.lto_priv.0(%eax), %eax
	leal	64(%esi,%eax), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	movl	8(%esp), %ecx
	testb	$1, 10(%ecx)
	je	L1970
	movl	__ZL9slotVoice.lto_priv.0(,%edi,8), %eax
	movl	_AL_AdditiveMode, %edx
	leal	(%eax,%eax), %ecx
	testl	%edx, %edx
	je	L1973
	leal	(%ecx,%ebp), %edx
	movl	4(%esp), %ebx
	imull	__ZL10VoiceLevel.lto_priv.0(,%edx,4), %ebx
L1973:
	imull	$52, (%esp), %edx
	movsbl	__ZL10offsetSlot.lto_priv.0(%eax), %eax
	addl	%ebp, %ecx
	leal	64(%esi,%eax), %eax
	imull	__ZL7Channel.lto_priv.0+24(%edx), %ebx
	movzwl	%ax, %eax
	movl	%ebx, %edx
	shrl	$15, %edx
	xorl	$63, %edx
	orl	__ZL8VoiceKsl.lto_priv.0(,%ecx,4), %edx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%dl, %edx
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_OPL3_WriteRegBuffered.constprop.0
	.p2align 4,,10
	.p2align 3
L1970:
	.cfi_restore_state
	addl	$12, %esp
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
LFE156:
	.p2align 4
	.globl	__ZL13AL_AllocVoicev.lto_priv.0
	.def	__ZL13AL_AllocVoicev.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13AL_AllocVoicev.lto_priv.0:
LFB159:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	__ZL10Voice_Pool.lto_priv.0, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	testl	%eax, %eax
	je	L1983
	movl	8(%eax), %ebx
	imull	$44, %ebx, %eax
	movl	__ZL5Voice.lto_priv.0+4(%eax), %ecx
	movl	__ZL5Voice.lto_priv.0(%eax), %edx
	testl	%ecx, %ecx
	je	L1985
	movl	%edx, (%ecx)
	testl	%edx, %edx
	je	L1986
L1981:
	movl	%ecx, 4(%edx)
L1982:
	movl	$0, __ZL5Voice.lto_priv.0(%eax)
	movl	$0, __ZL5Voice.lto_priv.0+4(%eax)
L1977:
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1985:
	.cfi_restore_state
	movl	%edx, __ZL10Voice_Pool.lto_priv.0
	testl	%edx, %edx
	jne	L1981
L1986:
	movl	%ecx, __ZL10Voice_Pool.lto_priv.0+4
	jmp	L1982
L1983:
	movl	$-1, %ebx
	jmp	L1977
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	__ZL16AL_SetVoicePitchi.lto_priv.0
	.def	__ZL16AL_SetVoicePitchi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16AL_SetVoicePitchi.lto_priv.0:
LFB162:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	imull	$44, %eax, %ebx
	cmpl	$8, %eax
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	leal	-9(%eax), %edi
	movl	%esi, 4(%esp)
	cmovle	%eax, %edi
	movl	__ZL5Voice.lto_priv.0+20(%ebx), %edx
	movl	__ZL5Voice.lto_priv.0+36(%ebx), %ecx
	movl	__ZL5Voice.lto_priv.0+12(%ebx), %ebx
	cmpl	$9, %edx
	.cfi_offset 6, -16
	je	L1993
	imull	$52, %edx, %esi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	__ZL7Channel.lto_priv.0+8(%esi), %esi
	leal	(%esi,%esi,2), %ebp
	movsbl	_ADLIB_TimbreBank+11(%esi,%ebp,4), %esi
	movl	12(%esp), %ebp
	.cfi_restore 5
	addl	%esi, %ebx
L1990:
	imull	$52, %edx, %esi
	movl	__ZL7Channel.lto_priv.0+16(%esi), %edx
	leal	-12(%ebx,%edx), %edx
	movl	$95, %ebx
	cmpl	%ebx, %edx
	cmovg	%ebx, %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	cmovs	%ebx, %edx
	movl	__ZL7Channel.lto_priv.0+20(%esi), %ebx
	imull	$44, %eax, %eax
	leal	(%ebx,%ebx,2), %esi
	movl	__ZL9NoteMod12(,%edx,4), %ebx
	movl	__ZL9NoteDiv12(,%edx,4), %edx
	leal	(%ebx,%esi,4), %ebx
	movl	__ZL9NotePitch(,%ebx,4), %ebx
	orl	__ZL11OctavePitch(,%edx,4), %ebx
	movl	%ebx, __ZL5Voice.lto_priv.0+24(%eax)
	orl	__ZL5Voice.lto_priv.0+40(%eax), %ebx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	movzbl	%bl, %edx
	sall	$8, %eax
	movl	%eax, %esi
	leal	160(%esi,%edi), %eax
	movzwl	%ax, %eax
	call	_OPL3_WriteRegBuffered.constprop.0
	leal	176(%esi,%edi), %eax
	movzbl	%bh, %edx
	movl	4(%esp), %esi
	movl	(%esp), %ebx
	movl	8(%esp), %edi
	movzwl	%ax, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_OPL3_WriteRegBuffered.constprop.0
	.p2align 4,,10
	.p2align 3
L1993:
	.cfi_restore_state
	subl	$-128, %ebx
	leal	(%ebx,%ebx,2), %esi
	movsbl	_ADLIB_TimbreBank+11(%ebx,%esi,4), %ebx
	jmp	L1990
	.cfi_endproc
LFE162:
	.p2align 4
	.globl	__ZL16AL_SetChannelPanii.lto_priv.0
	.def	__ZL16AL_SetChannelPanii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16AL_SetChannelPanii.lto_priv.0:
LFB163:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebp, 24(%esp)
	cmpl	$9, %eax
	.cfi_offset 5, -8
	je	L1995
	imull	$52, %eax, %ecx
	movl	%edx, __ZL7Channel.lto_priv.0+32(%ecx)
L1995:
	imull	$52, %eax, %eax
	movl	__ZL7Channel.lto_priv.0(%eax), %ebp
	testl	%ebp, %ebp
	je	L1994
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L2001
	.p2align 4,,10
	.p2align 3
L2012:
	movl	__ZL7AL_Chip.lto_priv.0+3096, %esi
	movl	__ZL7AL_Chip.lto_priv.0+3100, %edx
L2000:
	movl	%edi, %eax
	orb	$2, %bh
	movl	__ZL7AL_Chip.lto_priv.0+3112, %ecx
	sall	$4, %eax
	movw	%bx, __ZL7AL_Chip.lto_priv.0+8(%eax)
	movzbl	7(%esp), %ebx
	addl	$2, %ecx
	movb	%bl, __ZL7AL_Chip.lto_priv.0+10(%eax)
	movl	__ZL7AL_Chip.lto_priv.0+3116, %ebx
	adcl	$0, %ebx
	cmpl	%esi, %ecx
	movl	%ebx, %edi
	sbbl	%edx, %edi
	cmovnc	%ecx, %esi
	cmovnc	%ebx, %edx
	movl	%esi, __ZL7AL_Chip.lto_priv.0(%eax)
	movl	%edx, __ZL7AL_Chip.lto_priv.0+4(%eax)
	movl	(%esp), %eax
	movl	%esi, __ZL7AL_Chip.lto_priv.0+3112
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3116
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3108
L1998:
	movl	0(%ebp), %ebp
	testl	%ebp, %ebp
	je	L2011
L2001:
	movl	8(%ebp), %eax
	movl	_AL_Stereo, %ecx
	leal	-9(%eax), %edx
	cmpl	$8, %eax
	cmovle	%eax, %edx
	testl	%ecx, %ecx
	je	L1998
	imull	$44, %eax, %eax
	imull	$52, __ZL5Voice.lto_priv.0+20(%eax), %ecx
	movl	__ZL5Voice.lto_priv.0+36(%eax), %eax
	movl	__ZL7Channel.lto_priv.0+32(%ecx), %ecx
	leal	(%ecx,%ecx), %ebx
	movb	%bl, 7(%esp)
	xorl	%ebx, %ebx
	testl	%eax, %eax
	sete	%bl
	sall	$8, %ebx
	leal	208(%ebx,%edx), %ebx
	movl	__ZL7AL_Chip.lto_priv.0+3108, %edx
	leal	195(%edx), %edi
	addl	$1, %edx
	movl	%edi, %ecx
	andl	$1023, %edx
	sall	$4, %ecx
	movl	%edx, (%esp)
	movzwl	__ZL7AL_Chip.lto_priv.0+8(%ecx), %eax
	testb	$2, %ah
	je	L2012
	movzbl	__ZL7AL_Chip.lto_priv.0+10(%ecx), %edx
	andl	$511, %eax
	movl	%ecx, 8(%esp)
	call	_OPL3_WriteReg.constprop.0
	movl	8(%esp), %ecx
	movl	(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0(%ecx), %esi
	movl	__ZL7AL_Chip.lto_priv.0+4(%ecx), %edx
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3104
	movl	%esi, __ZL7AL_Chip.lto_priv.0+3096
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3100
	jmp	L2000
	.p2align 4,,10
	.p2align 3
L2011:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L1994:
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE163:
	.section .rdata,"dr"
	.align 32
__ZL9NotePitch:
	.long	343
	.long	363
	.long	385
	.long	408
	.long	432
	.long	458
	.long	485
	.long	514
	.long	544
	.long	577
	.long	611
	.long	647
	.long	343
	.long	363
	.long	385
	.long	408
	.long	432
	.long	458
	.long	485
	.long	514
	.long	544
	.long	578
	.long	612
	.long	648
	.long	344
	.long	364
	.long	386
	.long	409
	.long	433
	.long	459
	.long	486
	.long	515
	.long	545
	.long	579
	.long	613
	.long	649
	.long	344
	.long	364
	.long	387
	.long	410
	.long	434
	.long	460
	.long	487
	.long	516
	.long	546
	.long	580
	.long	614
	.long	650
	.long	345
	.long	365
	.long	387
	.long	410
	.long	435
	.long	461
	.long	488
	.long	517
	.long	547
	.long	581
	.long	615
	.long	651
	.long	346
	.long	366
	.long	388
	.long	411
	.long	435
	.long	462
	.long	489
	.long	518
	.long	548
	.long	582
	.long	616
	.long	652
	.long	346
	.long	366
	.long	389
	.long	412
	.long	436
	.long	462
	.long	490
	.long	519
	.long	549
	.long	583
	.long	617
	.long	654
	.long	347
	.long	367
	.long	389
	.long	413
	.long	437
	.long	463
	.long	491
	.long	520
	.long	550
	.long	584
	.long	618
	.long	655
	.long	347
	.long	368
	.long	390
	.long	413
	.long	438
	.long	464
	.long	492
	.long	521
	.long	551
	.long	585
	.long	619
	.long	656
	.long	348
	.long	368
	.long	391
	.long	414
	.long	439
	.long	465
	.long	492
	.long	522
	.long	552
	.long	586
	.long	621
	.long	657
	.long	349
	.long	369
	.long	392
	.long	415
	.long	439
	.long	466
	.long	493
	.long	523
	.long	553
	.long	587
	.long	622
	.long	658
	.long	349
	.long	370
	.long	392
	.long	416
	.long	440
	.long	467
	.long	494
	.long	524
	.long	554
	.long	588
	.long	623
	.long	659
	.long	350
	.long	370
	.long	393
	.long	416
	.long	441
	.long	468
	.long	495
	.long	525
	.long	555
	.long	589
	.long	624
	.long	661
	.long	351
	.long	371
	.long	394
	.long	417
	.long	442
	.long	468
	.long	496
	.long	526
	.long	556
	.long	590
	.long	625
	.long	662
	.long	351
	.long	372
	.long	394
	.long	418
	.long	443
	.long	469
	.long	497
	.long	527
	.long	557
	.long	591
	.long	626
	.long	663
	.long	352
	.long	372
	.long	395
	.long	419
	.long	443
	.long	470
	.long	498
	.long	528
	.long	558
	.long	592
	.long	627
	.long	664
	.long	353
	.long	373
	.long	396
	.long	419
	.long	444
	.long	471
	.long	499
	.long	529
	.long	559
	.long	593
	.long	628
	.long	665
	.long	353
	.long	374
	.long	396
	.long	420
	.long	445
	.long	472
	.long	500
	.long	530
	.long	560
	.long	594
	.long	630
	.long	667
	.long	354
	.long	374
	.long	397
	.long	421
	.long	446
	.long	473
	.long	501
	.long	530
	.long	561
	.long	596
	.long	631
	.long	668
	.long	354
	.long	375
	.long	398
	.long	422
	.long	447
	.long	473
	.long	501
	.long	531
	.long	562
	.long	597
	.long	632
	.long	669
	.long	355
	.long	376
	.long	399
	.long	422
	.long	447
	.long	474
	.long	502
	.long	532
	.long	563
	.long	598
	.long	633
	.long	670
	.long	356
	.long	377
	.long	399
	.long	423
	.long	448
	.long	475
	.long	503
	.long	533
	.long	565
	.long	599
	.long	634
	.long	671
	.long	356
	.long	377
	.long	400
	.long	424
	.long	449
	.long	476
	.long	504
	.long	534
	.long	566
	.long	600
	.long	635
	.long	673
	.long	357
	.long	378
	.long	401
	.long	425
	.long	450
	.long	477
	.long	505
	.long	535
	.long	567
	.long	601
	.long	636
	.long	674
	.long	358
	.long	379
	.long	402
	.long	426
	.long	451
	.long	478
	.long	506
	.long	536
	.long	568
	.long	602
	.long	638
	.long	675
	.long	358
	.long	379
	.long	402
	.long	426
	.long	451
	.long	479
	.long	507
	.long	537
	.long	569
	.long	603
	.long	639
	.long	676
	.long	359
	.long	380
	.long	403
	.long	427
	.long	452
	.long	480
	.long	508
	.long	538
	.long	570
	.long	604
	.long	640
	.long	678
	.long	360
	.long	381
	.long	404
	.long	428
	.long	453
	.long	480
	.long	509
	.long	539
	.long	571
	.long	605
	.long	641
	.long	679
	.long	360
	.long	381
	.long	404
	.long	429
	.long	454
	.long	481
	.long	510
	.long	540
	.long	572
	.long	606
	.long	642
	.long	680
	.long	361
	.long	382
	.long	405
	.long	429
	.long	455
	.long	482
	.long	511
	.long	541
	.long	573
	.long	608
	.long	643
	.long	681
	.long	362
	.long	383
	.long	406
	.long	430
	.long	456
	.long	483
	.long	511
	.long	542
	.long	574
	.long	609
	.long	644
	.long	683
	.long	362
	.long	383
	.long	407
	.long	431
	.long	456
	.long	484
	.long	512
	.long	543
	.long	575
	.long	610
	.long	646
	.long	684
	.align 32
__ZL11OctavePitch:
	.long	0
	.long	1024
	.long	2048
	.long	3072
	.long	4096
	.long	5120
	.long	6144
	.long	7168
	.globl	__ZL10Voice_Pool.lto_priv.0
	.bss
	.align 4
__ZL10Voice_Pool.lto_priv.0:
	.space 8
	.globl	__ZL10offsetSlot.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL10offsetSlot.lto_priv.0:
	.ascii "\0\1\2\3\4\5\10\11\12\13\14\15\20\21\22\23\24\25"
	.globl	__ZL8VoiceKsl.lto_priv.0
	.bss
	.align 32
__ZL8VoiceKsl.lto_priv.0:
	.space 144
	.globl	__ZL7Channel.lto_priv.0
	.align 32
__ZL7Channel.lto_priv.0:
	.space 832
	.globl	__ZL10VoiceLevel.lto_priv.0
	.align 32
__ZL10VoiceLevel.lto_priv.0:
	.space 144
	.globl	__ZL9slotVoice.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL9slotVoice.lto_priv.0:
	.long	0
	.long	3
	.long	1
	.long	4
	.long	2
	.long	5
	.long	6
	.long	9
	.long	7
	.long	10
	.long	8
	.long	11
	.long	12
	.long	15
	.long	13
	.long	16
	.long	14
	.long	17
	.globl	__ZL5Voice.lto_priv.0
	.bss
	.align 32
__ZL5Voice.lto_priv.0:
	.space 792
	.section .rdata,"dr"
	.align 4
__ZL10eg_incstep:
	.ascii "\0\0\0\0"
	.ascii "\1\0\0\0"
	.ascii "\1\0\1\0"
	.ascii "\1\1\1\0"
	.align 4
__ZL8kslshift:
	.ascii "\10\1\2\0"
	.align 4
__ZL2mt:
	.ascii "\1\2\4\6\10\12\14\16\20\22\24\24\30\30\36\36"
	.align 32
__ZL12envelope_sin:
	.long	__ZL21OPL3_EnvelopeCalcSin0tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin1tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin2tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin3tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin4tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin5tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin6tt.lto_priv.0
	.long	__ZL21OPL3_EnvelopeCalcSin7tt.lto_priv.0
	.globl	_MV_Channels
	.data
	.align 4
_MV_Channels:
	.long	1
	.globl	__ZL7AL_Chip.lto_priv.0
	.bss
	.align 32
__ZL7AL_Chip.lto_priv.0:
	.space 19504
	.globl	_MV_MusicBuffer
	.align 4
_MV_MusicBuffer:
	.space 4
	.globl	_MV_MIDIRenderTimer
	.align 4
_MV_MIDIRenderTimer:
	.space 4
	.globl	_MV_MIDIRenderTempo
	.data
	.align 4
_MV_MIDIRenderTempo:
	.long	-1
.lcomm __ZL9NoteDiv12,384,32
.lcomm __ZL9NoteMod12,384,32
	.globl	__ZL9AL_Volume.lto_priv.0
	.align 4
__ZL9AL_Volume.lto_priv.0:
	.long	255
.lcomm __ZZ26windowsDwmSetupCompositioniE34dwmapi_DwmGetCompositionTimingInfo,4,4
.lcomm __ZZ26windowsDwmSetupCompositioniE27dwmapi_DwmEnableComposition,4,4
.lcomm __ZL7hDWMApi,4,4
.lcomm __ZZ24windowsSetKeyboardLayoutPKciE10enUSLayout,4,4
.lcomm __ZZ24windowsSetKeyboardLayoutPKciE10enUSLoaded,4,4
.lcomm __ZZ24windowsHandleFocusChangeiE5index,4,4
.lcomm __ZZ24windowsHandleFocusChangeiE8hProcess,4,4
.lcomm __ZGVZ24windowsHandleFocusChangeiE8hProcess,8,8
.lcomm __ZZL31windowsDecodeKeyboardLayoutNamePKcE10localeName,16,4
.lcomm __ZL21win_silentfocuschange,4,4
.lcomm __ZZ17windowsSetupTimerbE12timePeriodNT,4,4
.lcomm __ZZ17windowsSetupTimerbE10timePeriod,4,4
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
	.globl	_g_modDir
	.align 32
_g_modDir:
	.ascii "/\0"
	.space 254
.lcomm __ZL10filenamsav,16640,32
.lcomm __ZL9groupname,32,32
.lcomm __ZL9gfileoffs,32,32
.lcomm __ZL9gnumfiles,32,32
.lcomm __ZL11groupfilpos,32,32
	.align 32
__ZL8groupfil:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
.lcomm __ZL11groupfilgrp,8,4
.lcomm _numgroupfiles,4,4
.lcomm __ZL16maxsearchpathlen,4,4
.lcomm __ZL7gslidew,4,4
	.section .rdata,"dr"
LC87:
	.ascii "sys_timer\0"
	.align 4
LC88:
	.ascii "engine timing backend:\12   0: auto\12   1: WinAPI QueryPerformanceCounter\12   2: SDL_GetPerformanceCounter\12   3: CPU RDTSC instruction\12\0"
	.data
	.align 4
__ZZ9timerInitiE14sys_timer_cvar:
	.long	LC87
	.long	LC88
	.long	__ZL9sys_timer.lto_priv.0
	.long	514
	.long	0
	.long	4
.lcomm __ZZ9timerInitiE8initDone,4,4
	.section .rdata,"dr"
LC89:
	.ascii "auto\0"
LC90:
	.ascii "QPC\0"
LC91:
	.ascii "SDL\0"
LC92:
	.ascii "RDTSC\0"
	.align 4
__ZZL16osdcmd_sys_timerPK13osdfuncparm_tE1s:
	.long	LC89
	.long	LC90
	.long	LC91
	.long	LC92
.lcomm __ZL17usertimercallback,4,4
.lcomm _clockLastSampleTime,8,8
	.align 4
LC2:
	.long	1602224128
	.align 4
LC3:
	.long	1232348160
	.align 8
LC14:
	.long	-350469331
	.long	1058682594
	.align 4
LC22:
	.long	__ZL10AL_NoteOffiii.lto_priv.0
	.align 4
LC23:
	.long	__ZL16AL_ControlChangeiii.lto_priv.0
	.align 4
LC24:
	.long	998277249
	.align 4
LC25:
	.long	-956301312
	.align 4
LC26:
	.long	1191181824
	.align 4
LC27:
	.long	989888641
	.align 4
LC29:
	.long	1148846080
	.align 4
LC30:
	.long	1315859240
	.align 4
LC31:
	.long	1120403456
	.align 4
LC44:
	.long	1056964608
	.align 4
LC46:
	.long	998244352
	.set	LC51,LC68+8
	.align 4
LC54:
	.long	-1065353216
	.align 4
LC55:
	.long	1082130432
	.align 4
LC57:
	.long	1015021568
	.align 4
LC58:
	.long	1061997773
	.align 4
LC59:
	.long	1067450368
	.align 4
LC60:
	.long	897581056
	.align 16
LC61:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC62:
	.long	1275068416
	.align 4
LC63:
	.long	1107296256
	.align 4
LC64:
	.long	981467136
	.align 4
LC65:
	.long	-1199570944
	.align 4
LC66:
	.long	-1166016512
	.align 4
LC67:
	.long	805306368
	.align 16
LC68:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.def	___divmoddi4;	.scl	2;	.type	32;	.endef
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_fread;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__ZL13initpngtablesv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPowerInfo;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_MV_UnhookMusicRoutine;	.scl	2;	.type	32;	.endef
	.def	__ZL11AL_Shutdownv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL9AL_NoteOniii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16AL_ProgramChangeii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15AL_SetPitchBendiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12AL_SetVolumei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_MV_HookMusicRoutine;	.scl	2;	.type	32;	.endef
	.def	__Z19MIDI_ServiceRoutinev.part.0;	.scl	2;	.type	32;	.endef
	.def	_OPL3_WriteReg.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_lldiv;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.12;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceCounter;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
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
	.def	_opendir;	.scl	2;	.type	32;	.endef
	.def	_readdir;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_wildmatch;	.scl	2;	.type	32;	.endef
	.def	_closedir;	.scl	2;	.type	32;	.endef
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
	.def	_klzw_read_compressed.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	_texcache_calcid.isra.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_texcache_readdata;	.scl	2;	.type	32;	.endef
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_postwritetex;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_md3_vox_calcmat_common;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	__Z26polymost_setTexturePosSizeRK4vec4IfE;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z28polymost_resetVertexPointersv;	.scl	2;	.type	32;	.endef
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_updatePalettev;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_setHalfTexelSizeRK4vec2IfE;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	_OPL3_WriteRegBuffered.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin0tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin1tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin2tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin3tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin4tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin5tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin6tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21OPL3_EnvelopeCalcSin7tt.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10AL_NoteOffiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16AL_ControlChangeiii.lto_priv.0;	.scl	2;	.type	32;	.endef
