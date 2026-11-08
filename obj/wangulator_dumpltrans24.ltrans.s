	.file	"<artificial>"
	.text
	.p2align 4
	.def	__os_update_crc;	.scl	3;	.type	32;	.endef
__os_update_crc:
LFB0:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	cmpl	$7, %ecx
	jle	L2
	leal	-8(%ecx), %eax
	shrl	$3, %ecx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	-1(%ecx), %ebp
	movl	%eax, (%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	leal	(%edx,%ecx,8), %edi
	movl	%edx, %ecx
	movl	%esi, %edx
	.p2align 4
	.p2align 3
L3:
	movl	(%ecx), %eax
	addl	$8, %ecx
	bswap	%eax
	xorl	%eax, %edx
	movl	%edx, %eax
	movzbl	%dl, %esi
	movzbl	%dh, %ebp
	shrl	$16, %edx
	shrl	$24, %eax
	movzbl	%dl, %edx
	movl	_crc_lookup+7168(,%eax,4), %eax
	xorl	_crc_lookup+4096(,%esi,4), %eax
	movzbl	-4(%ecx), %esi
	xorl	_crc_lookup+3072(,%esi,4), %eax
	movzbl	-3(%ecx), %esi
	xorl	_crc_lookup+2048(,%esi,4), %eax
	movzbl	-2(%ecx), %esi
	xorl	_crc_lookup+1024(,%esi,4), %eax
	movzbl	-1(%ecx), %esi
	xorl	_crc_lookup(,%esi,4), %eax
	xorl	_crc_lookup+6144(,%edx,4), %eax
	xorl	_crc_lookup+5120(,%ebp,4), %eax
	movl	%eax, %edx
	cmpl	%edi, %ecx
	jne	L3
	movl	4(%esp), %ebp
	movl	(%esp), %ecx
	movl	%eax, %esi
	movl	16(%esp), %edi
	.cfi_restore 7
	sall	$3, %ebp
	leal	8(%ebx,%ebp), %ebx
	subl	%ebp, %ecx
	movl	20(%esp), %ebp
	.cfi_restore 5
L2:
	testl	%ecx, %ecx
	je	L1
	leal	(%ebx,%ecx), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L5:
	movzbl	(%ebx), %ecx
	movl	%esi, %eax
	shrl	$24, %esi
	addl	$1, %ebx
	sall	$8, %eax
	xorl	%ecx, %esi
	xorl	_crc_lookup(,%esi,4), %eax
	movl	%eax, %esi
	cmpl	%edx, %ebx
	jne	L5
L1:
	movl	%esi, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL19ChildWindowComparerPKvS0_;	.scl	3;	.type	32;	.endef
__ZL19ChildWindowComparerPKvS0_:
LFB1:
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
	movl	16(%esp), %eax
	movl	(%eax), %esi
	movl	20(%esp), %eax
	movl	(%eax), %ebx
	movl	12(%esi), %ecx
	movl	12(%ebx), %edx
	movl	%ecx, %eax
	andl	$67108864, %eax
	movl	%edx, %edi
	andl	$67108864, %edi
	subl	%edi, %eax
	jne	L11
	andl	$33554432, %ecx
	andl	$33554432, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jne	L11
	movswl	240(%esi), %eax
	movswl	240(%ebx), %edx
	subl	%edx, %eax
L11:
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
LFE1:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "timeGetDevCaps() failed: MMRESULT: %d\0"
LC1:
	.ascii "source/build/src/winbits.cpp\0"
	.align 4
LC2:
	.ascii "timeEndPeriod(%d) failed: MMRESULT: %d\0"
	.align 4
LC3:
	.ascii "NtSetTimerResolution(%ld) unset failed: NTSTATUS: 0x%08x (%s)\0"
LC5:
	.ascii "Set %.1fms timer resolution\0"
	.align 4
LC6:
	.ascii "NtSetTimerResolution(%ld) failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC7:
	.ascii "NtQueryTimerResolution() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC8:
	.ascii "timeBeginPeriod(%d) failed: MMRESULT: %d\0"
LC9:
	.ascii "Set %u.0ms timer resolution\0"
	.align 4
LC10:
	.ascii "Unable to configure system timer!\0"
	.text
	.p2align 4
	.def	__Z17windowsSetupTimerb;	.scl	3;	.type	32;	.endef
__Z17windowsSetupTimerb:
LFB2:
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
	jne	L47
L15:
	movl	__ZZ17windowsSetupTimerbE10timePeriod, %eax
	testl	%eax, %eax
	jne	L48
L16:
	movl	__ZZ17windowsSetupTimerbE12timePeriodNT, %eax
	movl	$0, __ZZ17windowsSetupTimerbE10timePeriod
	testl	%eax, %eax
	je	L17
	movl	$__ZZ17windowsSetupTimerbE12timePeriodNT, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__ZL26ntdll_NtSetTimerResolution.lto_priv.0
	subl	$12, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	js	L49
L17:
	movl	$0, __ZZ17windowsSetupTimerbE12timePeriodNT
	testb	%bl, %bl
	jne	L50
L14:
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
L50:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_SDL_GetPowerInfo
	movl	%eax, %edx
	cmpl	$1, %eax
	je	L20
	movl	__ZL6hNTDLL.lto_priv.0, %esi
	testl	%esi, %esi
	je	L20
	cmpl	$1, __ZL19win_systemtimermode.lto_priv.0
	je	L51
L20:
	movl	__ZZ17windowsSetupTimerbE12timePeriodNT, %ecx
	testl	%ecx, %ecx
	jne	L25
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
	je	L27
	cmpl	$-2, %eax
	jl	L14
	movl	%ecx, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC8, 12(%esp)
	movl	$161, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L25:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L14
	movl	$LC10, 12(%esp)
	movl	$170, 8(%esp)
	movl	$LC1, 4(%esp)
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
L48:
	.cfi_restore_state
	movl	%eax, (%esp)
	call	*__imp__timeEndPeriod@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L16
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L16
	movl	%eax, 20(%esp)
	movl	__ZZ17windowsSetupTimerbE10timePeriod, %eax
	movl	$LC2, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$104, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L16
	.p2align 4,,10
	.p2align 3
L47:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L15
	movl	%eax, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$99, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L15
	.p2align 4,,10
	.p2align 3
L49:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L52
L18:
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L17
	.p2align 4,,10
	.p2align 3
L51:
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
	js	L21
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
	jns	L53
	cmpl	$-2, %eax
	jge	L54
L24:
	movl	$0, __ZL19win_systemtimermode.lto_priv.0
	jmp	L20
	.p2align 4,,10
	.p2align 3
L27:
	movl	%ebx, __ZZ17windowsSetupTimerbE10timePeriod
	testl	%eax, %eax
	js	L14
	movl	__ZL21win_silentfocuschange, %eax
	testl	%eax, %eax
	jne	L14
	movl	%ebx, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$165, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L14
	.p2align 4,,10
	.p2align 3
L53:
	movl	-60(%ebp), %edx
	movl	%edx, __ZZ17windowsSetupTimerbE12timePeriodNT
	testl	%eax, %eax
	js	L14
	movl	__ZL21win_silentfocuschange, %ebx
	testl	%ebx, %ebx
	jne	L14
	movl	%edx, -72(%ebp)
	movl	$0, -68(%ebp)
	fildq	-72(%ebp)
	fmull	LC4
	movl	$LC5, 12(%esp)
	movl	$140, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	fstpl	16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L14
	.p2align 4,,10
	.p2align 3
L52:
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
	movl	$LC3, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$113, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L18
	.p2align 4,,10
	.p2align 3
L21:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	$-2, %eax
	jl	L24
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
	movl	$LC7, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$151, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-76(%ebp), %edx
	jmp	L24
	.p2align 4,,10
	.p2align 3
L54:
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
	movl	$LC6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$145, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-64(%ebp), %edx
	jmp	L24
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0
	.def	__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26osdcmd_win_systemtimermodePK13osdfuncparm_t.lto_priv.0:
LFB6:
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
LFE6:
	.section .rdata,"dr"
	.align 4
LC12:
	.ascii "Unable to decode name for locale ID '%d': %s.\0"
	.text
	.p2align 4
	.def	__ZL31windowsDecodeKeyboardLayoutNamePKc;	.scl	3;	.type	32;	.endef
__ZL31windowsDecodeKeyboardLayoutNamePKc:
LFB7:
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
	je	L62
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
L62:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L63
	movl	%ebx, %eax
L64:
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
L63:
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
	movl	$LC12, 12(%esp)
	movl	$618, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	%ebx, %eax
	jmp	L64
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	___tcfVoicePool.lto_priv.0
	.def	___tcfVoicePool.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfVoicePool.lto_priv.0:
LFB8:
	.cfi_startproc
	movl	_VoicePool+124, %eax
	testl	%eax, %eax
	je	L74
	lock subl	$1, (%eax)
	je	L77
L74:
	ret
	.p2align 4,,10
	.p2align 3
L77:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	___tcfVoiceList.lto_priv.0
	.def	___tcfVoiceList.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfVoiceList.lto_priv.0:
LFB14:
	.cfi_startproc
	movl	_VoiceList+124, %eax
	testl	%eax, %eax
	je	L87
	lock subl	$1, (%eax)
	je	L90
L87:
	ret
	.p2align 4,,10
	.p2align 3
L90:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__ZL13MallocWrapperjPv.lto_priv.0
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13MallocWrapperjPv.lto_priv.0:
LFB15:
	.cfi_startproc
	jmp	_malloc
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__ZL11FreeWrapperPvS_.lto_priv.0
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11FreeWrapperPvS_.lto_priv.0:
LFB16:
	.cfi_startproc
	jmp	_free
	.cfi_endproc
LFE16:
	.p2align 4
	.def	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_;	.scl	3;	.type	32;	.endef
__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_:
LFB17:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	(%eax), %edi
	cmpl	4(%eax), %edi
	je	L110
L94:
	movl	8(%ebx), %ecx
L97:
	movl	%esi, (%ecx,%edi,4)
	addl	$1, (%ebx)
	cmpb	$0, 223(%esi)
	je	L93
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	440(%esi), %ebp
	cmpl	$1, %ebp
	ja	L111
	testl	%ebp, %ebp
	jle	L109
L113:
	xorl	%edi, %edi
L104:
	movl	448(%esi), %eax
	movl	(%eax,%edi,4), %edx
	cmpb	$0, 223(%edx)
	jne	L112
L103:
	addl	$1, %edi
	cmpl	%edi, %ebp
	jne	L104
L109:
	movl	40(%esp), %ebp
	.cfi_restore 5
L93:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L111:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$__ZL19ChildWindowComparerPKvS0_, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	448(%esi), %eax
	movl	%eax, (%esp)
	call	_qsort
	testl	%ebp, %ebp
	jg	L113
	jmp	L109
	.p2align 4,,10
	.p2align 3
L112:
	movl	%ebx, %eax
	call	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_
	jmp	L103
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_restore 5
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	1(%edi), %ecx
	testl	%edi, %edi
	jne	L95
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %ebp
L96:
	movl	_GImGui, %edx
	leal	0(,%ebp,4), %eax
	testl	%edx, %edx
	je	L98
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	(%ebx), %edi
	movl	20(%esp), %edx
	movl	%eax, %ecx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L100
	leal	0(,%edi,4), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	subl	$1, 188(%edx)
L105:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	(%ebx), %edi
	movl	20(%esp), %ecx
L100:
	movl	%ecx, 8(%ebx)
	movl	%ebp, 4(%ebx)
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L97
	.p2align 4,,10
	.p2align 3
L95:
	.cfi_restore_state
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %ebp
	cmpl	%ecx, %edi
	jl	L96
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L94
	.p2align 4,,10
	.p2align 3
L98:
	.cfi_restore_state
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	8(%ebx), %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L100
	leal	0(,%edi,4), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	20(%esp), %ecx
	jmp	L105
	.cfi_endproc
LFE17:
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "polymost_voxdraw(m:%p, tspr:%p)\0"
	.text
	.p2align 4
	.globl	_polymost_voxdraw.part.0
	.def	_polymost_voxdraw.part.0;	.scl	2;	.type	32;	.endef
_polymost_voxdraw.part.0:
LFB22:
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
	movl	$LC16, 4(%esp)
	movl	$3, (%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	movzbl	18(%ebx), %eax
	movss	12(%edi), %xmm7
	xorps	%xmm0, %xmm0
	movss	LC17, %xmm4
	movss	8(%edi), %xmm1
	movb	%al, -144(%ebp)
	movzbl	20(%ebx), %eax
	mulss	%xmm7, %xmm4
	movss	16(%edi), %xmm5
	movss	%xmm7, -140(%ebp)
	cvtsi2ssl	%eax, %xmm0
	movswl	30(%ebx), %eax
	mulss	LC18, %xmm0
	mulss	%xmm1, %xmm5
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movzwl	12(%edx), %edx
	mulss	%xmm4, %xmm0
	andl	$48, %edx
	movw	%dx, -148(%ebp)
	cmpw	$16, %dx
	jne	L115
	mulss	LC19, %xmm0
L115:
	sall	$6, %eax
	movsbl	22(%ebx), %esi
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	addl	_spriteext, %eax
	movaps	%xmm3, %xmm6
	movss	LC20, %xmm7
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
	je	L184
	movss	LC22, %xmm7
	movaps	%xmm7, %xmm3
	xorps	%xmm7, %xmm5
	movups	%xmm7, -136(%ebp)
	xorps	%xmm1, %xmm3
L116:
	andl	$4, %edx
	movaps	%xmm1, %xmm7
	movl	%edx, -152(%ebp)
	je	L117
	movups	-136(%ebp), %xmm7
	xorps	-136(%ebp), %xmm2
	xorps	-136(%ebp), %xmm6
	xorps	%xmm1, %xmm7
L117:
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
	je	L186
	movss	LC13, %xmm5
	testb	%cl, %cl
	jne	L118
L186:
	movss	LC14, %xmm5
L118:
	movss	LC23, %xmm6
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
	jne	L119
	addss	76(%edi), %xmm6
	movss	%xmm6, -148(%ebp)
L120:
	testl	%esi, %esi
	je	L121
	subss	-148(%ebp), %xmm4
	movss	%xmm4, -148(%ebp)
L121:
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
	movss	LC24, %xmm5
	movss	%xmm4, -140(%ebp)
	flds	-140(%ebp)
	fmull	_gxyaspect
	fdivrs	LC25
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
	mulss	LC26, %xmm1
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
	mulss	LC27, %xmm2
	cvtsi2ssl	%eax, %xmm3
	movl	%ebx, %eax
	addss	-160(%ebp), %xmm2
	mulss	%xmm5, %xmm0
	mulss	LC28, %xmm3
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
	jbe	L122
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
L122:
	xorps	%xmm1, %xmm1
	movl	-152(%ebp), %eax
	movl	_glad_glFrontFace, %ecx
	comiss	%xmm1, %xmm0
	setnb	%dl
	shrl	$2, %eax
	xorb	-164(%ebp), %dl
	cmpb	%al, %dl
	je	L124
	movl	$2304, (%esp)
	call	*%ecx
	subl	$4, %esp
L125:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L126
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L126:
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
	jne	L134
	testb	$1, 28(%edi)
	je	L237
	movl	$1, _globalnoeffect
L134:
	movss	-140(%ebp), %xmm4
	movss	%xmm4, -156(%ebp)
	movss	%xmm4, -152(%ebp)
L132:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L135
L137:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	movss	LC29, %xmm1
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
L136:
	movswl	14(%ebx), %eax
	testb	$16, -144(%ebp)
	jne	L138
	movswl	_tiletovox(%eax,%eax), %eax
L138:
	testb	$1, -144(%ebp)
	jne	L139
	testb	$1, _voxflags(%eax)
	je	L238
L140:
	movss	LC15, %xmm3
	movss	%xmm3, -144(%ebp)
	movss	%xmm3, -164(%ebp)
L142:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	movl	%eax, %edx
	testb	$2, 12(%ebx)
	je	L143
	movswl	30(%ebx), %eax
	xorps	%xmm0, %xmm0
	sall	$6, %eax
	addl	_spriteext, %eax
	movss	8(%eax), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L239
L143:
	cmpl	$1, %edx
	je	L146
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L146:
	movss	LC17, %xmm0
	mulss	-172(%ebp), %xmm0
	movss	-64(%ebp), %xmm5
	movss	-88(%ebp), %xmm7
	movss	-84(%ebp), %xmm2
	movss	-176(%ebp), %xmm1
	movss	%xmm5, -180(%ebp)
	movss	-72(%ebp), %xmm3
	movss	-68(%ebp), %xmm4
	movss	LC17, %xmm5
	mulss	-168(%ebp), %xmm5
	mulss	%xmm0, %xmm7
	xorps	-136(%ebp), %xmm1
	movss	-52(%ebp), %xmm6
	mulss	%xmm0, %xmm2
	mulss	-80(%ebp), %xmm0
	mulss	LC17, %xmm1
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
	jne	L147
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L191
	je	L147
L191:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L147:
	movl	80(%edi), %esi
	testl	%esi, %esi
	je	L149
	cmpl	$3, _rendmode
	je	L240
L149:
	movl	_globalpal, %ebx
	movl	24(%edi), %eax
	leal	(%eax,%ebx,4), %eax
	movl	%ebx, -136(%ebp)
	movl	%eax, -176(%ebp)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L151
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	-104(%ebp), %esi
L175:
	xorl	%eax, %eax
	movl	$1, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L176
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm0
	jp	L193
	je	L176
L193:
	movl	$0x00000000, __ZL19polymost1UsePalette.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L176:
	movups	LC31, %xmm0
	movl	%esi, %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
L166:
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
	jne	L178
	movss	-144(%ebp), %xmm3
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm3
	jp	L194
	je	L179
L194:
	movss	-144(%ebp), %xmm3
	movss	%xmm3, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm3, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	movl	_nofog, %edx
	subl	$8, %esp
	testl	%edx, %edx
	je	L241
L178:
	call	__Z28polymost_resetVertexPointersv
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L182
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L182:
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
L119:
	.cfi_restore_state
	testb	$16, -144(%ebp)
	jne	L120
	movss	-148(%ebp), %xmm6
	movss	76(%edi), %xmm5
	addss	%xmm6, %xmm5
	subss	%xmm6, %xmm5
	movss	%xmm5, -148(%ebp)
	jmp	L120
	.p2align 4,,10
	.p2align 3
L184:
	movss	LC22, %xmm7
	movaps	%xmm1, %xmm3
	movups	%xmm7, -136(%ebp)
	jmp	L116
	.p2align 4,,10
	.p2align 3
L151:
	movl	52(%edi), %eax
	movl	_gammabrightness, %ecx
	movl	$_britable, %ebx
	movl	%eax, -180(%ebp)
	movl	48(%edi), %eax
	movl	%eax, -184(%ebp)
	movl	44(%edi), %eax
	movl	%eax, -192(%ebp)
	testl	%ecx, %ecx
	jne	L167
	movl	_curbrightness, %ebx
	sall	$8, %ebx
	addl	$_britable, %ebx
L167:
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
	je	L168
	testl	%esi, %esi
	jne	L169
	movl	-148(%ebp), %edx
	movzbl	-136(%ebp), %ecx
	testl	%edx, %edx
	jle	L171
	movl	%ecx, -172(%ebp)
	movl	%edi, -196(%ebp)
	movl	-192(%ebp), %edi
	.p2align 4
	.p2align 3
L172:
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
	jne	L172
	movl	-196(%ebp), %edi
L171:
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
	jmp	L175
	.p2align 4,,10
	.p2align 3
L238:
	movzwl	12(%ebx), %eax
	movzbl	19(%ebx), %edx
	movl	%eax, %ecx
	shrw	$9, %cx
	andw	$2, %ax
	movw	%ax, -160(%ebp)
	je	L187
	movss	LC15, %xmm3
	andl	$1, %ecx
	leal	(%ecx,%edx,2), %eax
	movss	_glblend(,%eax,8), %xmm0
	movss	%xmm3, -144(%ebp)
L141:
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
	jmp	L142
	.p2align 4,,10
	.p2align 3
L239:
	movss	-144(%ebp), %xmm4
	comiss	-164(%ebp), %xmm4
	ja	L143
	testl	%edx, %edx
	je	L146
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L146
	.p2align 4,,10
	.p2align 3
L124:
	movl	$2305, (%esp)
	call	*%ecx
	subl	$4, %esp
	jmp	L125
	.p2align 4,,10
	.p2align 3
L139:
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	subl	$8, %esp
	jmp	L140
	.p2align 4,,10
	.p2align 3
L169:
	movl	-136(%ebp), %esi
	xorl	%eax, %eax
	movl	_palookup(,%esi,4), %ecx
	testl	%ecx, %ecx
	cmove	%eax, %esi
	movl	-148(%ebp), %eax
	testl	%eax, %eax
	jle	L171
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
L174:
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
	jne	L174
	movl	-172(%ebp), %edi
	jmp	L171
	.p2align 4,,10
	.p2align 3
L240:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L149
	movl	_gltexfiltermode, %eax
	movl	%eax, -184(%ebp)
	testl	%eax, %eax
	jne	L149
	movl	84(%edi), %eax
	movl	%eax, -136(%ebp)
	testl	%eax, %eax
	jne	L153
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
	je	L154
	movl	-180(%ebp), %edx
	testl	%edx, %edx
	jle	L155
	movl	-148(%ebp), %esi
	testl	%esi, %esi
	jle	L155
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
L156:
	movl	-176(%ebp), %eax
	movl	-172(%ebp), %ecx
	movl	%ebx, -136(%ebp)
	leal	(%eax,%edi,4), %eax
	addl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L157:
	movzbl	3(%eax), %ebx
	addl	$4, %eax
	movb	%bl, (%ecx)
	addl	%edx, %ecx
	cmpl	%eax, %esi
	jne	L157
	movl	-136(%ebp), %ebx
	addl	-148(%ebp), %edi
	addl	-180(%ebp), %esi
	addl	$1, %ebx
	cmpl	%ebx, %edx
	jne	L156
	movl	-188(%ebp), %edi
	movl	-192(%ebp), %ebx
L155:
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
L158:
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
	mulss	LC30, %xmm0
	movss	%xmm0, -136(%ebp)
	flds	-136(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	cmpl	$3, _rendmode
	je	L242
L159:
	movl	_r_usetileshades, %ebx
	testl	%ebx, %ebx
	je	L243
	testb	$1, _globalflags
	jne	L244
L160:
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
	jmp	L162
	.p2align 4,,10
	.p2align 3
L243:
	fstp	%st(0)
	jmp	L162
L244:
	fstp	%st(0)
L162:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L164
	movss	-144(%ebp), %xmm5
	ucomiss	__ZL19polymost1UsePalette.lto_priv.0, %xmm5
	jp	L192
	je	L164
L192:
	movss	-144(%ebp), %xmm3
	movss	%xmm3, __ZL19polymost1UsePalette.lto_priv.0
	movss	%xmm3, 4(%esp)
	movl	__ZL22polymost1UsePaletteLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L164:
	call	__Z22polymost_updatePalettev
	movups	LC31, %xmm0
	movl	%esi, %eax
	movups	%xmm0, -104(%ebp)
	call	__Z26polymost_setTexturePosSizeRK4vec4IfE
	movl	%esi, %eax
	movl	$0x00000000, -104(%ebp)
	movl	$0x00000000, -100(%ebp)
	call	__Z25polymost_setHalfTexelSizeRK4vec2IfE
	xorps	%xmm0, %xmm0
	call	__Z22polymost_setVisibilityf
	jmp	L166
	.p2align 4,,10
	.p2align 3
L187:
	movss	LC15, %xmm4
	andl	$1, %ecx
	movss	%xmm4, -144(%ebp)
	movaps	%xmm4, %xmm0
	jmp	L141
	.p2align 4,,10
	.p2align 3
L237:
	movzbl	_hictinting+2(,%eax,8), %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	LC29, %xmm2
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
	jmp	L132
	.p2align 4,,10
	.p2align 3
L179:
	movl	_nofog, %eax
	testl	%eax, %eax
	jne	L178
L183:
	movss	-144(%ebp), %xmm7
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm7
	jp	L195
	je	L178
L195:
	movss	-144(%ebp), %xmm4
	movss	%xmm4, __ZL19polymost1FogEnabled.lto_priv.0
	movss	%xmm4, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
	jmp	L178
	.p2align 4,,10
	.p2align 3
L135:
	cmpb	$-1, %al
	jne	L137
	jmp	L136
	.p2align 4,,10
	.p2align 3
L241:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	je	L183
	jmp	L178
	.p2align 4,,10
	.p2align 3
L168:
	movl	-172(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L153:
	movl	-136(%ebp), %eax
	leal	-104(%ebp), %esi
	call	__Z19buildgl_bindTexturejj.constprop.0
	jmp	L158
L242:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L159
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L160
	jmp	L159
L154:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC32:
	.ascii "Error determining system keyboard layout: %s.\0"
	.text
	.p2align 4
	.globl	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	.def	__Z34windowsGetSystemKeyboardLayoutNamev.part.0;	.scl	2;	.type	32;	.endef
__Z34windowsGetSystemKeyboardLayoutNamev.part.0:
LFB36:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	L248
L246:
	movl	$1, __ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L248:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L246
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
	movl	$LC32, 12(%esp)
	movl	$668, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	$1, __ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC33:
	.ascii "00000409\0"
LC34:
	.ascii "Window focus changed\0"
LC35:
	.ascii "Loaded %s keyboard layout\0"
LC36:
	.ascii "Restored %s keyboard layout\0"
	.text
	.p2align 4
	.globl	__Z24windowsSetKeyboardLayoutPKci.part.0
	.def	__Z24windowsSetKeyboardLayoutPKci.part.0;	.scl	2;	.type	32;	.endef
__Z24windowsSetKeyboardLayoutPKci.part.0:
LFB37:
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
	jne	L271
L250:
	cmpl	$LC33, %ecx
	je	L272
	cmpl	$4, %eax
	jg	L273
L253:
	movl	__ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0, %edx
	movl	__ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0, %eax
	testl	%edx, %edx
	je	L274
L257:
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ActivateKeyboardLayout@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
L249:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L273:
	.cfi_restore_state
	movl	%ecx, %eax
	call	__ZL31windowsDecodeKeyboardLayoutNamePKc
	movl	$LC36, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$642, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L253
	.p2align 4,,10
	.p2align 3
L271:
	cmpl	$1, %eax
	jg	L251
	cmpl	$LC33, %ecx
	jne	L253
	.p2align 4
	.p2align 3
L252:
	movl	__ZZ24windowsSetKeyboardLayoutPKciE10enUSLoaded, %eax
	testl	%eax, %eax
	je	L275
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
L272:
	.cfi_restore_state
	cmpl	$4, %eax
	jle	L252
	movl	$LC33, %eax
	call	__ZL31windowsDecodeKeyboardLayoutNamePKc
	movl	$LC35, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$640, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L252
	.p2align 4,,10
	.p2align 3
L275:
	movl	$259, 4(%esp)
	movl	$LC33, (%esp)
	call	*__imp__LoadKeyboardLayoutA@8
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, __ZZ24windowsSetKeyboardLayoutPKciE10enUSLayout
	testl	%eax, %eax
	je	L249
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
L274:
	.cfi_restore_state
	movl	$0, (%esp)
	call	*__imp__GetKeyboardLayout@4
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, __ZZ30windowsGetSystemKeyboardLayoutvE12systemLayout.lto_priv.0
	movl	$1, __ZZ30windowsGetSystemKeyboardLayoutvE11layoutSaved.lto_priv.0
	jmp	L257
	.p2align 4,,10
	.p2align 3
L251:
	movl	$LC34, 12(%esp)
	movl	$637, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$2, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	20(%esp), %ecx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	jmp	L250
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "Error setting thread priority: %s.\0"
LC38:
	.ascii "Games\0"
	.align 4
LC39:
	.ascii "Error setting AVRT thread priority: error %ld: %s.\0"
	.align 4
LC40:
	.ascii "Error setting AVRT thread characteristics with index %ld: error %ld: %s.\0"
	.align 4
LC41:
	.ascii "Error reverting AVRT thread characteristics: error %ld: %s.\0"
	.text
	.p2align 4
	.globl	__Z24windowsHandleFocusChangei
	.def	__Z24windowsHandleFocusChangei;	.scl	2;	.type	32;	.endef
__Z24windowsHandleFocusChangei:
LFB39:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edx
	cmpb	$0, __ZGVZ24windowsHandleFocusChangeiE8hProcess
	je	L316
L277:
	movl	$1, __ZL21win_silentfocuschange
	movl	_win_boostpriority, %eax
	testl	%edx, %edx
	je	L278
	testl	%eax, %eax
	je	L279
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
	cmpl	$-1, _editorgridextent
	je	L317
L279:
	movl	$1, %eax
	call	__Z17windowsSetupTimerb
	leal	35(%esp), %edx
	movl	%edx, (%esp)
	call	*__imp__GetKeyboardLayoutNameA@4
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	leal	35(%esp), %edx
	movl	$LC33, 4(%esp)
	movl	%edx, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L284
	movl	$1, %edx
	movl	$LC33, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L284:
	movl	__ZL19win_performancemode.lto_priv.0, %eax
	testl	%eax, %eax
	je	L285
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L285
	movl	$_GUID_MIN_POWER_SAVINGS, 4(%esp)
	movl	$0, (%esp)
	call	*__ZL29powrprof_PowerSetActiveScheme.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L285:
	movl	$0, __ZL21win_silentfocuschange
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L278:
	.cfi_restore_state
	testl	%eax, %eax
	je	L286
	movl	$16384, %edx
	cmpl	$2, %eax
	je	L287
	cmpl	$-1, _editorgridextent
	movl	$64, %eax
	cmovne	%eax, %edx
L287:
	movl	__ZZ24windowsHandleFocusChangeiE8hProcess, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__SetPriorityClass@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L318
L288:
	movl	__ZL5hAVRT.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L286
	movl	__ZL9hMMTHREAD.lto_priv.0, %eax
	testl	%eax, %eax
	je	L286
	movl	%eax, (%esp)
	call	*__ZL36avrt_AvRevertMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L319
	movl	$0, __ZZ24windowsHandleFocusChangeiE5index
	movl	$0, __ZL9hMMTHREAD.lto_priv.0
	.p2align 4
	.p2align 3
L286:
	xorl	%eax, %eax
	call	__Z17windowsSetupTimerb
	movl	__ZZ34windowsGetSystemKeyboardLayoutNamevE11layoutSaved.lto_priv.0, %edx
	testl	%edx, %edx
	je	L320
L290:
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
	je	L291
	movl	$1, %edx
	movl	$__ZZ34windowsGetSystemKeyboardLayoutNamevE16systemLayoutName.lto_priv.0, %eax
	call	__Z24windowsSetKeyboardLayoutPKci.part.0
L291:
	movl	__ZL19win_performancemode.lto_priv.0, %eax
	testl	%eax, %eax
	je	L285
	movl	__ZL21systemPowerSchemeGUID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L285
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
L316:
	.cfi_restore_state
	movl	%eax, 28(%esp)
	call	*__imp__GetCurrentProcess@0
	movb	$1, __ZGVZ24windowsHandleFocusChangeiE8hProcess
	movl	28(%esp), %edx
	movl	%eax, __ZZ24windowsHandleFocusChangeiE8hProcess
	jmp	L277
	.p2align 4,,10
	.p2align 3
L320:
	call	__Z34windowsGetSystemKeyboardLayoutNamev.part.0
	jmp	L290
	.p2align 4,,10
	.p2align 3
L318:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L288
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
	movl	$LC37, 12(%esp)
	movl	$742, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L288
	.p2align 4,,10
	.p2align 3
L317:
	call	*__imp__GetCurrentThread@0
	movl	$15, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__SetThreadPriority@8
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	L321
L281:
	movl	__ZL5hAVRT.lto_priv.0, %eax
	testl	%eax, %eax
	je	L279
	movl	__ZL9hMMTHREAD.lto_priv.0, %eax
	testl	%eax, %eax
	je	L322
L282:
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	*__ZL26avrt_AvSetMmThreadPriority.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	L279
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L279
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
	movl	$LC39, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$719, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L279
	.p2align 4,,10
	.p2align 3
L321:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L281
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
	movl	$LC37, 12(%esp)
	movl	$708, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L281
	.p2align 4,,10
	.p2align 3
L319:
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L286
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
	movl	$LC41, 12(%esp)
	movl	%ecx, 16(%esp)
	movl	$749, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L286
	.p2align 4,,10
	.p2align 3
L322:
	movl	$__ZZ24windowsHandleFocusChangeiE5index, 4(%esp)
	movl	$LC38, (%esp)
	call	*__ZL33avrt_AvSetMmThreadCharacteristics.lto_priv.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, __ZL9hMMTHREAD.lto_priv.0
	testl	%eax, %eax
	jne	L282
	call	*__imp__GetLastError@0
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%eax, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L279
	xorl	%eax, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	%edx, 28(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	.cfi_def_cfa_offset 20
	movl	__ZZ24windowsHandleFocusChangeiE5index, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %edx
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	$LC40, 12(%esp)
	movl	$725, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L279
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
LC42:
	.ascii "dwmapi.dll\0"
LC43:
	.ascii "DwmEnableComposition\0"
LC44:
	.ascii "DwmFlush\0"
LC45:
	.ascii "DwmGetCompositionTimingInfo\0"
LC46:
	.ascii "DwmIsCompositionEnabled\0"
	.align 4
LC47:
	.ascii "DwmGetCompositionTimingInfo() failed: HRESULT: 0x%08x (%s).\0"
LC48:
	.ascii "Dis\0"
	.align 4
LC49:
	.ascii "%sabling DWM desktop composition\0"
	.text
	.p2align 4
	.globl	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z26windowsDwmSetupCompositioni.part.0.constprop.0:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$48, %esp
	.cfi_def_cfa_offset 56
	movl	__ZL7hDWMApi, %edx
	testl	%edx, %edx
	je	L339
L324:
	movl	__ZZ26windowsDwmSetupCompositioniE34dwmapi_DwmGetCompositionTimingInfo, %ebx
	testl	%ebx, %ebx
	je	L325
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
	js	L340
L325:
	movl	__ZL21win_togglecomposition.lto_priv.0, %eax
	testl	%eax, %eax
	je	L323
	movl	__ZZ26windowsDwmSetupCompositioniE27dwmapi_DwmEnableComposition, %eax
	testl	%eax, %eax
	je	L323
	cmpl	$1, __ZL3osv.lto_priv.0+8
	jbe	L341
L323:
	addl	$48, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L341:
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
	jle	L323
	movl	$LC48, 16(%esp)
	movl	$LC49, 12(%esp)
	movl	$561, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L323
	.p2align 4,,10
	.p2align 3
L340:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L325
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
	movl	$LC47, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$552, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %eax
	leal	32(%esp), %edx
	cmpl	%edx, %eax
	je	L325
	call	_mi_free
	jmp	L325
	.p2align 4,,10
	.p2align 3
L339:
	movl	$LC42, (%esp)
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 52
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL7hDWMApi
	testl	%eax, %eax
	je	L324
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC43, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZZ26windowsDwmSetupCompositioniE27dwmapi_DwmEnableComposition
	movl	__ZL7hDWMApi, %eax
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL15dwmapi_DwmFlush.lto_priv.0
	movl	__ZL7hDWMApi, %eax
	movl	$LC45, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZZ26windowsDwmSetupCompositioniE34dwmapi_DwmGetCompositionTimingInfo
	movl	__ZL7hDWMApi, %eax
	movl	$LC46, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	.cfi_def_cfa_offset 48
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, __ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	jmp	L324
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	_ogg_page_serialno
	.def	_ogg_page_serialno;	.scl	2;	.type	32;	.endef
_ogg_page_serialno:
LFB48:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	14(%eax), %eax
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	_ogg_stream_clear
	.def	_ogg_stream_clear;	.scl	2;	.type	32;	.endef
_ogg_stream_clear:
LFB50:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	testl	%ebx, %ebx
	je	L344
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L345
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L345:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L346
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L346:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L347
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L347:
	movl	$360, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
L344:
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	_ogg_stream_init
	.def	_ogg_stream_init;	.scl	2;	.type	32;	.endef
_ogg_stream_init:
LFB51:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L362
	movl	$360, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	call	_memset
	movl	$16384, 4(%ebx)
	movl	_g_sm_heap, %ecx
	movl	$1024, 24(%ebx)
	movl	$16384, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L363
	movl	%eax, (%ebx)
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L376
	movl	%eax, 16(%ebx)
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,8), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L376
	movl	(%ebx), %edx
	movl	%eax, 20(%ebx)
	testl	%edx, %edx
	je	L368
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L368
	movl	28(%esp), %eax
	movl	%eax, 336(%ebx)
	movl	16(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L361:
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L376:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L363:
	movl	$16384, %eax
	call	__Z13handle_memerri
L368:
	movl	%ebx, (%esp)
	call	_ogg_stream_clear
	movl	16(%esp), %esi
	.cfi_restore 6
L362:
	movl	$-1, %eax
	jmp	L361
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	_ogg_sync_init
	.def	_ogg_sync_init;	.scl	2;	.type	32;	.endef
_ogg_sync_init:
LFB52:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L380
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
L380:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	_ogg_sync_clear
	.def	_ogg_sync_clear;	.scl	2;	.type	32;	.endef
_ogg_sync_clear:
LFB54:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L385
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L386
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
L386:
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
L385:
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	_ogg_sync_buffer
	.def	_ogg_sync_buffer;	.scl	2;	.type	32;	.endef
_ogg_sync_buffer:
LFB56:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -12
	movl	28(%esp), %ebx
	movl	4(%ebx), %ecx
	testl	%ecx, %ecx
	js	L403
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	testl	%eax, %eax
	je	L396
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	testl	%edx, %edx
	jle	L397
	addl	%esi, %eax
	movl	%edx, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	4(%ebx), %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
L397:
	movl	$0, 12(%ebx)
L396:
	movl	%esi, %eax
	subl	%edx, %ecx
	cmpl	32(%esp), %ecx
	jge	L398
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	4096(%edx,%eax), %edx
	testl	%esi, %esi
	je	L399
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L401
	testl	%edx, %edx
	jne	L411
	testl	%eax, %eax
	je	L412
L401:
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	8(%ebx), %edx
L398:
	movl	20(%esp), %esi
	.cfi_restore 6
	addl	%edx, %eax
L394:
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L399:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L401
L411:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L412:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L402
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 12(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	12(%esp), %eax
L402:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	movl	20(%esp), %esi
	.cfi_restore 6
	jmp	L394
L403:
	xorl	%eax, %eax
	jmp	L394
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	_ogg_sync_wrote
	.def	_ogg_sync_wrote;	.scl	2;	.type	32;	.endef
_ogg_sync_wrote:
LFB57:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	js	L416
	movl	8(%esp), %eax
	addl	8(%edx), %eax
	cmpl	%ecx, %eax
	jg	L416
	movl	%eax, 8(%edx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L416:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	_ogg_sync_pageout
	.def	_ogg_sync_pageout;	.scl	2;	.type	32;	.endef
_ogg_sync_pageout:
LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	8(%ebp), %edi
	movl	4(%edi), %eax
	testl	%eax, %eax
	js	L418
	movl	%ebx, -12(%ebp)
	movl	%esi, -8(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jmp	L433
	.p2align 4,,10
	.p2align 3
L454:
	movl	24(%edi), %edx
	addl	%eax, %edx
	cmpl	%edx, %esi
	jl	L452
L455:
	movl	22(%ebx), %eax
	movl	$0, 22(%ebx)
	movl	20(%edi), %ecx
	movl	%eax, 20(%esp)
	movl	24(%edi), %eax
	leal	(%ebx,%ecx), %edx
	movl	%edx, 16(%esp)
	movl	%ebx, %edx
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	call	__os_update_crc
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	call	__os_update_crc
	movl	20(%esp), %ecx
	movl	%eax, 22(%ebx)
	cmpl	%eax, %ecx
	je	L427
	movl	%ecx, 22(%ebx)
L422:
	leal	1(%ebx), %eax
	subl	$1, %esi
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	%esi, 8(%esp)
	movl	$79, 4(%esp)
	movl	%eax, (%esp)
	call	_memchr
	movl	(%edi), %ecx
	movl	%eax, %edx
	testl	%eax, %eax
	je	L430
	subl	%ecx, %eax
L431:
	movl	%eax, 12(%edi)
	movl	%ebx, %eax
	subl	%edx, %eax
	testl	%eax, %eax
	jg	L434
L456:
	je	L453
	movl	16(%edi), %edx
	testl	%edx, %edx
	je	L432
	movl	4(%edi), %eax
	testl	%eax, %eax
	js	L452
L433:
	movl	12(%edi), %eax
	movl	(%edi), %ebx
	movl	8(%edi), %esi
	addl	%eax, %ebx
	subl	%eax, %esi
	movl	20(%edi), %eax
	testl	%eax, %eax
	jne	L454
	cmpl	$26, %esi
	jle	L453
	cmpl	$1399285583, (%ebx)
	jne	L422
	movzbl	26(%ebx), %edx
	movl	%edx, %ecx
	addl	$27, %edx
	movl	%edx, 20(%esp)
	cmpl	%edx, %esi
	jl	L453
	movl	24(%edi), %edx
	testb	%cl, %cl
	je	L425
	.p2align 5
	.p2align 4
	.p2align 3
L426:
	movzbl	27(%ebx,%eax), %ecx
	addl	$1, %eax
	addl	%ecx, %edx
	movl	%edx, 24(%edi)
	movzbl	26(%ebx), %ecx
	cmpl	%ecx, %eax
	jl	L426
L425:
	movl	20(%esp), %eax
	addl	%eax, %edx
	movl	%eax, 20(%edi)
	cmpl	%edx, %esi
	jge	L455
	.p2align 4
	.p2align 3
L452:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L418:
	xorl	%eax, %eax
L417:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L453:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L427:
	.cfi_restore_state
	movl	12(%ebp), %ecx
	testl	%ecx, %ecx
	je	L428
	movl	12(%ebp), %eax
	movl	12(%ebp), %esi
	movl	%ebx, (%eax)
	movl	20(%edi), %eax
	movl	%eax, 4(%esi)
	addl	%ebx, %eax
	movl	%eax, 8(%esi)
	movl	24(%edi), %eax
	movl	%eax, 12(%esi)
L428:
	movl	24(%edi), %eax
	addl	20(%edi), %eax
	movl	$0, 16(%edi)
	addl	%eax, 12(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	testl	%eax, %eax
	jle	L456
L434:
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	$1, %eax
	jmp	L417
	.p2align 4,,10
	.p2align 3
L430:
	.cfi_restore_state
	movl	8(%edi), %eax
	leal	(%ecx,%eax), %edx
	jmp	L431
	.p2align 4,,10
	.p2align 3
L432:
	movl	$1, 16(%edi)
	movl	$-1, %eax
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L417
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	_ogg_stream_pagein
	.def	_ogg_stream_pagein;	.scl	2;	.type	32;	.endef
_ogg_stream_pagein:
LFB62:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	76(%esp), %eax
	movl	%ebx, 52(%esp)
	movl	%ebp, 64(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	72(%esp), %ebx
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	(%eax), %edi
	movzbl	5(%edi), %ecx
	movl	%ecx, %ebp
	movb	%cl, 19(%esp)
	andl	$2, %ebp
	testl	%ebx, %ebx
	je	L458
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L458
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	8(%eax), %esi
	movl	12(%eax), %eax
	movl	10(%edi), %edx
	movl	%esi, 36(%esp)
	movl	36(%ebx), %esi
	movl	%eax, 12(%esp)
	movzbl	4(%edi), %eax
	movl	%edx, 44(%esp)
	movb	%al, 28(%esp)
	movl	6(%edi), %eax
	movl	%eax, 40(%esp)
	movl	14(%edi), %eax
	movl	%eax, 24(%esp)
	movl	18(%edi), %eax
	movl	%eax, 20(%esp)
	movzbl	26(%edi), %eax
	movb	%al, 32(%esp)
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L461
	movl	8(%ebx), %edx
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	jne	L557
L462:
	movl	$0, 12(%ebx)
L461:
	testl	%esi, %esi
	je	L463
	movl	28(%ebx), %edx
	movl	%esi, %eax
	cmpl	%esi, %edx
	je	L464
	movl	16(%ebx), %ecx
	subl	%esi, %edx
	sall	$2, %edx
	leal	(%ecx,%esi,4), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	28(%ebx), %eax
	movl	20(%ebx), %edx
	subl	%esi, %eax
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	leal	(%edx,%esi,8), %eax
	movl	%eax, 4(%esp)
	call	_memmove
	movl	28(%ebx), %eax
L464:
	subl	%esi, %eax
	subl	%esi, 32(%ebx)
	movl	%eax, 28(%ebx)
	movl	$0, 36(%ebx)
L463:
	movl	24(%esp), %eax
	cmpl	%eax, 336(%ebx)
	jne	L556
	cmpb	$0, 28(%esp)
	jne	L556
	movzbl	32(%esp), %eax
	leal	1(%eax), %esi
	movl	%eax, 24(%esp)
	movl	24(%ebx), %eax
	movl	%eax, %edx
	subl	%esi, %edx
	cmpl	28(%ebx), %edx
	jg	L465
	movl	$2147483647, %edx
	subl	%esi, %edx
	cmpl	%edx, %eax
	jg	L470
	addl	%eax, %esi
	movl	_g_sm_heap, %ecx
	cmpl	$2147483615, %esi
	leal	32(%esi), %eax
	cmovl	%eax, %esi
	leal	0(,%esi,4), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	jne	L548
	movl	28(%esp), %edx
	testl	%edx, %edx
	jne	L490
	testl	%eax, %eax
	je	L470
L548:
	leal	0(,%esi,8), %edx
	movl	%eax, 16(%ebx)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	20(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	jne	L549
	movl	28(%esp), %edx
	testl	%edx, %edx
	jne	L490
	testl	%eax, %eax
	je	L470
L549:
	movl	%eax, 20(%ebx)
	movl	%esi, 24(%ebx)
L465:
	movl	340(%ebx), %ecx
	cmpl	20(%esp), %ecx
	je	L475
	movl	32(%ebx), %eax
	movl	28(%ebx), %esi
	movl	%eax, 28(%esp)
	cmpl	%eax, %esi
	jle	L476
	movl	8(%ebx), %edx
	movl	%ecx, 48(%esp)
	movl	%edx, 32(%esp)
	movl	16(%ebx), %edx
	leal	(%edx,%eax,4), %eax
	leal	(%edx,%esi,4), %esi
	movl	32(%esp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L477:
	movzbl	(%eax), %ecx
	addl	$4, %eax
	subl	%ecx, %edx
	movl	%edx, 8(%ebx)
	cmpl	%esi, %eax
	jne	L477
	movl	48(%esp), %ecx
L476:
	cmpl	$-1, %ecx
	je	L558
	movl	28(%esp), %esi
	movl	16(%ebx), %eax
	leal	1(%esi), %edx
	movl	%edx, 28(%ebx)
	movl	$1024, (%eax,%esi,4)
	addl	$1, 32(%ebx)
L475:
	testb	$1, 19(%esp)
	je	L479
L563:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	jle	L480
	movl	16(%ebx), %edx
	movzbl	-4(%edx,%eax,4), %eax
	cmpl	$255, %eax
	je	L479
L480:
	movl	24(%esp), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	L559
	movl	36(%esp), %edx
	movl	12(%esp), %ecx
	movl	24(%esp), %ebp
	jmp	L482
	.p2align 5
	.p2align 4,,10
	.p2align 3
L561:
	cmpl	%esi, %ebp
	je	L560
L482:
	movzbl	27(%edi,%esi), %eax
	addl	$1, %esi
	addl	%eax, %edx
	subl	%eax, %ecx
	cmpl	$255, %eax
	je	L561
	movl	%ecx, 12(%esp)
	movl	12(%esp), %eax
	xorl	%ebp, %ebp
	movl	%edx, 36(%esp)
	testl	%eax, %eax
	jne	L484
	.p2align 4
	.p2align 3
L486:
	movl	24(%esp), %ecx
	cmpl	%ecx, %esi
	jge	L485
	movl	$-1, 12(%esp)
	movl	28(%ebx), %edx
	leal	(%esi,%edi), %eax
	leal	(%edi,%ecx), %esi
	.p2align 4
	.p2align 3
L495:
	movl	16(%ebx), %edi
	movzbl	27(%eax), %ecx
	movl	%ecx, (%edi,%edx,4)
	movl	28(%ebx), %edi
	movl	20(%ebx), %edx
	movl	$-1, (%edx,%edi,8)
	movl	$-1, 4(%edx,%edi,8)
	testl	%ebp, %ebp
	je	L493
	movl	28(%ebx), %edi
	movl	16(%ebx), %edx
	orl	$256, (%edx,%edi,4)
L493:
	movl	28(%ebx), %edi
	leal	1(%edi), %edx
	cmpl	$255, %ecx
	je	L494
	movl	%edx, 32(%ebx)
	movl	%edi, 12(%esp)
L494:
	addl	$1, %eax
	movl	%edx, 28(%ebx)
	xorl	%ebp, %ebp
	cmpl	%esi, %eax
	jne	L495
	movl	12(%esp), %edi
	cmpl	$-1, %edi
	je	L485
	movl	20(%ebx), %eax
	movl	40(%esp), %edx
	movl	44(%esp), %ecx
	movl	%edx, (%eax,%edi,8)
	movl	%ecx, 4(%eax,%edi,8)
L485:
	testb	$4, 19(%esp)
	je	L496
	movl	$1, 328(%ebx)
	movl	28(%ebx), %eax
	testl	%eax, %eax
	jle	L496
	movl	16(%ebx), %edx
	orl	$512, -4(%edx,%eax,4)
L496:
	movl	20(%esp), %eax
	addl	$1, %eax
	movl	%eax, 340(%ebx)
	movl	56(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L457:
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	addl	$68, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L479:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	L486
L484:
	movl	4(%ebx), %eax
	movl	8(%ebx), %edx
	movl	%eax, %ecx
	subl	12(%esp), %ecx
	movl	%eax, 28(%esp)
	cmpl	%edx, %ecx
	jg	L562
	movl	12(%esp), %eax
	movl	$2147483647, %edx
	movl	28(%esp), %ecx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L470
	leal	(%ecx,%eax), %edx
	movl	_g_sm_heap, %ecx
	cmpl	$2147482623, %edx
	leal	1024(%edx), %eax
	cmovl	%eax, %edx
	movl	%edx, 4(%esp)
	movl	(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	movl	28(%esp), %edx
	jne	L550
	testl	%edx, %edx
	jne	L490
	testl	%eax, %eax
	je	L470
L550:
	movl	%edx, 4(%ebx)
	movl	8(%ebx), %edx
	movl	%eax, (%ebx)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L558:
	movl	28(%esp), %eax
	movl	%eax, 28(%ebx)
	testb	$1, 19(%esp)
	je	L479
	jmp	L563
	.p2align 4,,10
	.p2align 3
L562:
	movl	(%ebx), %eax
L488:
	movl	12(%esp), %ecx
	addl	%edx, %eax
	movl	36(%esp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	addl	%ecx, 8(%ebx)
	jmp	L486
	.p2align 4,,10
	.p2align 3
L490:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L557:
	addl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_memmove
	jmp	L462
	.p2align 4,,10
	.p2align 3
L560:
	movl	%edx, 36(%esp)
	movl	%ecx, 12(%esp)
	testl	%ecx, %ecx
	je	L485
	xorl	%ebp, %ebp
	jmp	L484
L556:
	movl	56(%esp), %esi
	.cfi_restore 6
L458:
	movl	$-1, %eax
	jmp	L457
L470:
	.cfi_offset 6, -16
	movl	%ebx, (%esp)
	call	_ogg_stream_clear
	movl	56(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L458
L559:
	.cfi_restore_state
	movl	12(%esp), %edx
	testl	%edx, %edx
	je	L485
	xorl	%ebp, %ebp
	jmp	L484
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	_ogg_sync_reset
	.def	_ogg_sync_reset;	.scl	2;	.type	32;	.endef
_ogg_sync_reset:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	js	L566
	xorps	%xmm0, %xmm0
	movl	$0, 24(%eax)
	movups	%xmm0, 8(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L566:
	.cfi_restore_state
	movl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	_ogg_stream_reset
	.def	_ogg_stream_reset;	.scl	2;	.type	32;	.endef
_ogg_stream_reset:
LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L571
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L571
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 324(%eax)
	movl	$0, 328(%eax)
	movl	$0, 332(%eax)
	movl	$-1, 340(%eax)
	movl	$0, 344(%eax)
	movl	$0, 348(%eax)
	movl	$0, 352(%eax)
	movl	$0, 356(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L571:
	.cfi_restore_state
	movl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	_ogg_stream_packetout
	.def	_ogg_stream_packetout;	.scl	2;	.type	32;	.endef
_ogg_stream_packetout:
LFB71:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ecx
	testl	%ecx, %ecx
	je	L574
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L574
	movl	36(%ecx), %eax
	cmpl	32(%ecx), %eax
	jge	L574
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	16(%ecx), %edi
	movl	(%edi,%eax,4), %edx
	testb	$4, %dh
	jne	L592
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movzbl	%dl, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	andl	$512, %esi
	cmpl	$255, %ebx
	jne	L578
	movl	%edx, (%esp)
	movl	$512, %ebp
	movl	%ecx, 24(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L580:
	addl	$1, %eax
	movl	(%edi,%eax,4), %ecx
	movzbl	%cl, %edx
	andb	$2, %ch
	cmovne	%ebp, %esi
	addl	%edx, %ebx
	cmpl	$255, %edx
	je	L580
	movl	(%esp), %edx
	movl	24(%esp), %ecx
L578:
	movl	28(%esp), %edi
	testl	%edi, %edi
	je	L581
	movl	28(%esp), %edi
	andl	$256, %edx
	movl	%esi, 12(%edi)
	movl	%edi, %esi
	movl	%edx, 8(%edi)
	movl	12(%ecx), %edx
	addl	(%ecx), %edx
	movl	%edx, (%edi)
	movl	344(%ecx), %edi
	movl	348(%ecx), %ebp
	movl	%edi, 24(%esi)
	movl	%ebp, 28(%esi)
	movl	20(%ecx), %edx
	movl	(%edx,%eax,8), %esi
	movl	4(%edx,%eax,8), %edi
	movl	28(%esp), %edx
	movl	%esi, 16(%edx)
	movl	%edi, 20(%edx)
	movl	%ebx, 4(%edx)
L581:
	addl	$1, %eax
	addl	%ebx, 12(%ecx)
	movl	%eax, 36(%ecx)
	movl	$1, %eax
	addl	$1, 344(%ecx)
	adcl	$0, 348(%ecx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L592:
	.cfi_def_cfa_offset 24
	.cfi_offset 7, -12
	addl	$1, %eax
	addl	$1, 344(%ecx)
	movl	%eax, 36(%ecx)
	movl	$-1, %eax
	adcl	$0, 348(%ecx)
	movl	12(%esp), %edi
	.cfi_restore 7
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L574:
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE71:
	.align 2
	.p2align 4
	.globl	__ZN7ImGuiIO13AddFocusEventEb.isra.0
	.def	__ZN7ImGuiIO13AddFocusEventEb.isra.0;	.scl	2;	.type	32;	.endef
__ZN7ImGuiIO13AddFocusEventEb.isra.0:
LFB75:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$44, %esp
	.cfi_def_cfa_offset 60
	movl	_GImGui, %ebx
	movl	14380(%ebx), %eax
	movl	%eax, %esi
	subl	$1, %esi
	js	L594
	movl	14388(%ebx), %edi
	leal	(%eax,%eax,2), %eax
	leal	-24(%edi,%eax,8), %eax
L596:
	cmpl	$7, (%eax)
	jne	L610
	movzbl	8(%eax), %eax
L604:
	cmpb	%dl, %al
	je	L593
	movl	%edx, %eax
	movl	$0, 28(%esp)
	movl	%ecx, %edx
	movb	%al, 28(%esp)
	movl	14380(%ecx), %eax
	movl	$0, 24(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$7, 20(%esp)
	cmpl	14384(%ecx), %eax
	je	L611
L598:
	movl	14388(%edx), %ecx
L602:
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movl	20(%esp), %ecx
	movl	%ecx, (%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 4(%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 8(%eax)
	movl	32(%esp), %ecx
	movl	%ecx, 12(%eax)
	movl	36(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 20(%eax)
	addl	$1, 14380(%edx)
L593:
	addl	$44, %esp
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
L610:
	.cfi_restore_state
	subl	$1, %esi
	subl	$24, %eax
	cmpl	$-1, %esi
	jne	L596
L594:
	movzbl	14240(%ecx), %eax
	xorl	$1, %eax
	jmp	L604
	.p2align 4,,10
	.p2align 3
L611:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L599
	movl	$8, %esi
	cmpl	%esi, %ecx
	cmovge	%ecx, %esi
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
L600:
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	%eax, %ecx
	movl	14388(%edx), %edi
	testl	%edi, %edi
	je	L603
	movl	14380(%edx), %eax
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	leal	(%eax,%eax,2), %eax
	movl	%edx, 16(%esp)
	sall	$3, %eax
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_memcpy
	subl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
L603:
	movl	%ecx, 14388(%edx)
	movl	14380(%edx), %eax
	movl	%esi, 14384(%edx)
	jmp	L602
	.p2align 4,,10
	.p2align 3
L599:
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%esi, %eax
	jge	L598
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
	jmp	L600
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z14ImFormatStringPcjPKcz
	.def	__Z14ImFormatStringPcjPKcz;	.scl	2;	.type	32;	.endef
__Z14ImFormatStringPcjPKcz:
LFB80:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	leal	36(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vsnprintf
	cmpl	$-1, %eax
	je	L615
	cmpl	%eax, 28(%esp)
	jle	L615
	movl	24(%esp), %edx
	movb	$0, (%edx,%eax)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L615:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	24(%esp), %edx
	subl	$1, %eax
	movb	$0, (%edx,%eax)
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z9ImHashStrPKcjj
	.def	__Z9ImHashStrPKcjj;	.scl	2;	.type	32;	.endef
__Z9ImHashStrPKcjj:
LFB81:
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
	movl	%ecx, %edx
	notl	%edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %ebp
	testl	%esi, %esi
	je	L621
	subl	$1, %esi
	movl	%edx, %eax
L625:
	movzbl	(%ebx), %ecx
	addl	$1, %ebx
	cmpb	$35, %cl
	jne	L622
L643:
	cmpl	$1, %esi
	jbe	L622
	cmpb	$35, (%ebx)
	jne	L623
	cmpb	$35, 1(%ebx)
	cmove	%ebp, %eax
L623:
	movl	%eax, %ecx
	movzbl	%al, %eax
	addl	$1, %ebx
	xorl	$35, %eax
	shrl	$8, %ecx
	subl	$1, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movl	%ecx, %eax
	movzbl	-1(%ebx), %ecx
	cmpb	$35, %cl
	je	L643
L622:
	xorl	%eax, %ecx
	movl	%eax, %edi
	movzbl	%cl, %ecx
	shrl	$8, %edi
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%edi, %eax
	subl	$1, %esi
	jnb	L625
L624:
	notl	%eax
L620:
	popl	%ebx
	.cfi_remember_state
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
L621:
	.cfi_restore_state
	movzbl	(%eax), %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L634
	movl	%edx, %eax
	movl	%edi, %edx
	addl	$1, %ebx
	movzbl	(%ebx), %ecx
	cmpb	$35, %dl
	je	L644
	.p2align 4
	.p2align 3
L627:
	movl	%eax, %esi
	xorl	%edi, %eax
	movzbl	%al, %eax
	shrl	$8, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %esi
	movl	%esi, %eax
	testb	%cl, %cl
	je	L624
	addl	$1, %ebx
	movl	%ecx, %edi
L645:
	movl	%edi, %edx
	movzbl	(%ebx), %ecx
	cmpb	$35, %dl
	jne	L627
L644:
	cmpb	$35, %cl
	jne	L627
	cmpb	$35, 1(%ebx)
	movl	%ecx, %edi
	cmove	%ebp, %eax
	addl	$1, %ebx
	movl	%eax, %esi
	movzbl	%al, %eax
	xorl	$35, %eax
	shrl	$8, %esi
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %esi
	movl	%esi, %eax
	jmp	L645
	.p2align 4,,10
	.p2align 3
L634:
	movl	%ecx, %eax
	jmp	L620
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z18ImTextCharFromUtf8PjPKcS1_
	.def	__Z18ImTextCharFromUtf8PjPKcS1_;	.scl	2;	.type	32;	.endef
__Z18ImTextCharFromUtf8PjPKcS1_:
LFB83:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 12(%esp)
	movzbl	(%edx), %eax
	movl	%eax, %ebx
	movb	%al, 7(%esp)
	shrb	$3, %al
	movzbl	%al, %eax
	movzbl	__ZZ18ImTextCharFromUtf8PjPKcS1_E7lengths(%eax), %eax
	cmpl	$1, %eax
	movl	%eax, %esi
	movl	%eax, (%esp)
	adcl	$0, %esi
	testl	%ecx, %ecx
	leal	(%edx,%esi), %eax
	cmove	%eax, %ecx
	movzbl	%bl, %eax
	cmpl	%ecx, %edx
	jb	L648
	movb	$0, 7(%esp)
	xorl	%eax, %eax
L648:
	leal	1(%edx), %edi
	cmpl	%ecx, %edi
	jnb	L655
	movzbl	1(%edx), %ebx
	movl	%ebx, %edi
	movb	%bl, 5(%esp)
	sall	$12, %edi
	andl	$258048, %edi
	movl	%edi, 8(%esp)
	leal	2(%edx), %edi
	cmpl	%ecx, %edi
	jnb	L656
L665:
	movzbl	2(%edx), %ebx
	leal	3(%edx), %ebp
	movl	%ebx, %edi
	movb	%bl, 6(%esp)
	sall	$6, %edi
	andl	$4032, %edi
	cmpl	%ecx, %ebp
	jnb	L657
L666:
	movzbl	3(%edx), %edx
	movl	%edx, %ecx
	andl	$63, %ecx
L651:
	movl	(%esp), %ebp
	andl	__ZZ18ImTextCharFromUtf8PjPKcS1_E5masks(,%ebp,4), %eax
	sall	$18, %eax
	orl	8(%esp), %eax
	orl	%edi, %eax
	orl	%ecx, %eax
	movl	__ZZ18ImTextCharFromUtf8PjPKcS1_E6shiftc(,%ebp,4), %ecx
	shrl	%cl, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	cmpl	$27, %ecx
	je	L652
	movzbl	6(%esp), %ecx
	movl	%edx, %ebx
	shrb	$6, %bl
	shrb	$4, %cl
	movl	%ecx, %edi
	movzbl	5(%esp), %ecx
	andl	$12, %edi
	shrb	$2, %cl
	andl	$48, %ecx
	orl	%edi, %ecx
	orl	%ebx, %ecx
	xorl	%ebx, %ebx
	cmpl	__ZZ18ImTextCharFromUtf8PjPKcS1_E4mins(,%ebp,4), %eax
	setb	%bl
	movzbl	%cl, %ecx
	movl	%ebx, %edi
	xorl	%ebx, %ebx
	sall	$6, %edi
	cmpl	$65535, %eax
	seta	%bl
	movl	%ebx, %ebp
	sall	$8, %ebp
	orl	%ebp, %edi
	movl	(%esp), %ebp
	orl	%edi, %ecx
	movl	%ecx, %edi
	movl	__ZZ18ImTextCharFromUtf8PjPKcS1_E6shifte(,%ebp,4), %ecx
	xorl	$42, %edi
	sarl	%cl, %edi
	testl	%edi, %edi
	jne	L652
	movl	12(%esp), %edx
	movl	%eax, (%edx)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
L655:
	.cfi_restore_state
	leal	2(%edx), %edi
	movl	$0, 8(%esp)
	movb	$0, 5(%esp)
	cmpl	%ecx, %edi
	jb	L665
L656:
	leal	3(%edx), %ebp
	movb	$0, 6(%esp)
	xorl	%edi, %edi
	cmpl	%ecx, %ebp
	jb	L666
L657:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	L651
	.p2align 4,,10
	.p2align 3
L652:
	xorl	%eax, %eax
	cmpb	$0, 7(%esp)
	setne	%al
	cmpb	$1, 5(%esp)
	sbbl	$-1, %eax
	cmpb	$1, 6(%esp)
	sbbl	$-1, %eax
	cmpb	$1, %dl
	movl	12(%esp), %edx
	sbbl	$-1, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	movl	$65533, %eax
	movl	%eax, (%edx)
	addl	$16, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
LFE83:
	.p2align 4
	.globl	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4:
LFB84:
	.cfi_startproc
	movss	(%eax), %xmm1
	xorps	%xmm0, %xmm0
	movl	%eax, %edx
	xorl	%eax, %eax
	comiss	%xmm1, %xmm0
	ja	L668
	movss	LC15, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC50, %xmm0
	addss	LC23, %xmm0
	cvttss2sil	%xmm0, %eax
L668:
	movss	4(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L669
	movss	LC15, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC50, %xmm0
	addss	LC23, %xmm0
	cvttss2sil	%xmm0, %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
L669:
	movss	8(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L670
	movss	LC15, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC50, %xmm0
	addss	LC23, %xmm0
	cvttss2sil	%xmm0, %ecx
	sall	$16, %ecx
	orl	%ecx, %eax
L670:
	movss	12(%edx), %xmm1
	xorps	%xmm0, %xmm0
	comiss	%xmm1, %xmm0
	ja	L667
	movss	LC15, %xmm2
	movaps	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	mulss	LC50, %xmm0
	addss	LC23, %xmm0
	cvttss2sil	%xmm0, %edx
	sall	$24, %edx
	orl	%edx, %eax
L667:
	ret
	.cfi_endproc
LFE84:
	.align 2
	.p2align 4
	.globl	__ZNK12ImGuiStorage10GetVoidPtrEj
	.def	__ZNK12ImGuiStorage10GetVoidPtrEj;	.scl	2;	.type	32;	.endef
__ZNK12ImGuiStorage10GetVoidPtrEj:
LFB85:
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
	movl	(%ecx), %edi
	movl	8(%ecx), %esi
	movl	20(%esp), %ebx
	sall	$3, %edi
	movl	%edi, %eax
	movl	%esi, %ecx
	sarl	$3, %eax
	jmp	L675
	.p2align 5
	.p2align 4,,10
	.p2align 3
L676:
	movl	%eax, %edx
	shrl	%edx
	leal	(%ecx,%edx,8), %ebp
	cmpl	%ebx, 0(%ebp)
	jb	L682
	movl	%edx, %eax
L675:
	testl	%eax, %eax
	jne	L676
	addl	%edi, %esi
	cmpl	%esi, %ecx
	je	L679
	cmpl	%ebx, (%ecx)
	jne	L679
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	4(%ecx), %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L682:
	.cfi_restore_state
	subl	$1, %eax
	leal	8(%ebp), %ecx
	subl	%edx, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L679:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE85:
	.align 2
	.p2align 4
	.globl	__ZN12ImGuiStorage10SetVoidPtrEjPv
	.def	__ZN12ImGuiStorage10SetVoidPtrEjPv;	.scl	2;	.type	32;	.endef
__ZN12ImGuiStorage10SetVoidPtrEjPv:
LFB88:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	(%ecx), %ebp
	movl	8(%ecx), %ecx
	movl	56(%esp), %esi
	leal	0(,%ebp,8), %eax
	movl	%ebp, 16(%esp)
	movl	%ecx, %ebx
	movl	%eax, 12(%esp)
	sarl	$3, %eax
	jmp	L685
	.p2align 5
	.p2align 4,,10
	.p2align 3
L686:
	movl	%eax, %edx
	shrl	%edx
	leal	(%ebx,%edx,8), %ebp
	cmpl	%esi, 0(%ebp)
	jb	L702
	movl	%edx, %eax
L685:
	testl	%eax, %eax
	jne	L686
	movl	12(%esp), %eax
	movl	16(%esp), %ebp
	addl	%ecx, %eax
	cmpl	%eax, %ebx
	je	L687
	cmpl	%esi, (%ebx)
	je	L703
L687:
	movl	60(%esp), %eax
	subl	%ecx, %ebx
	movl	%esi, 28(%esp)
	movl	%ebx, %esi
	movl	%eax, 32(%esp)
	sarl	$3, %esi
	cmpl	4(%edi), %ebp
	je	L704
L690:
	cmpl	%ebp, %esi
	jl	L705
L697:
	movl	28(%esp), %eax
	movl	%eax, (%ecx,%ebx)
	movl	32(%esp), %eax
	movl	%eax, 4(%ecx,%ebx)
	addl	$1, (%edi)
	addl	$36, %esp
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L702:
	.cfi_restore_state
	subl	$1, %eax
	leal	8(%ebp), %ebx
	subl	%edx, %eax
	jmp	L685
	.p2align 4,,10
	.p2align 3
L703:
	movl	60(%esp), %eax
	movl	%eax, 4(%ebx)
	addl	$36, %esp
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L704:
	.cfi_restore_state
	leal	1(%ebp), %edx
	testl	%ebp, %ebp
	jne	L691
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 16(%esp)
L692:
	movl	16(%esp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L694
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	(%edi), %ebp
	movl	20(%esp), %edx
	movl	%eax, %ecx
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 12(%esp)
	je	L696
	leal	0(,%ebp,8), %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movl	12(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 20(%esp)
	call	_memcpy
	movl	24(%esp), %edx
	movl	20(%esp), %ecx
	subl	$1, 188(%edx)
L698:
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%ecx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	(%edi), %ebp
	movl	20(%esp), %ecx
L696:
	movl	16(%esp), %eax
	movl	%ecx, 8(%edi)
	movl	%eax, 4(%edi)
	jmp	L690
L705:
	movl	%ebp, %eax
	subl	%esi, %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	leal	(%ecx,%ebx), %eax
	movl	%eax, 4(%esp)
	leal	8(%ecx,%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	8(%edi), %ecx
	jmp	L697
L691:
	movl	%ebp, %eax
	shrl	$31, %eax
	addl	%ebp, %eax
	sarl	%eax
	addl	%ebp, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, 16(%esp)
	cmpl	%edx, %ebp
	jge	L690
	jmp	L692
L694:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L706
	movl	12(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	20(%esp), %ecx
	jmp	L698
L706:
	movl	%eax, %ecx
	jmp	L696
	.cfi_endproc
LFE88:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0
	.def	__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer6appendEPKcS1_.constprop.0:
LFB92:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L708
	movl	4(%ebx), %eax
	cmpl	$2, %eax
	jg	L730
	leal	(%eax,%eax), %edx
	movl	$2, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	%edx, %eax
	jl	L733
L730:
	movl	$2, %esi
	xorl	%ebp, %ebp
	movl	$1, %edi
L710:
	movl	8(%ebx), %edx
L713:
	movl	%esi, (%ebx)
	movb	$10, (%edx,%ebp)
	movl	8(%ebx), %eax
	movb	$0, (%eax,%edi)
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
L708:
	.cfi_restore_state
	movl	4(%ebx), %edx
	leal	1(%ecx), %esi
	leal	-1(%ecx), %ebp
	movl	%ecx, %edi
	cmpl	%esi, %edx
	jg	L710
	leal	(%edx,%edx), %eax
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpl	%eax, %edx
	jl	L734
L714:
	cmpl	%esi, %edx
	jge	L710
	testl	%edx, %edx
	jne	L720
	movl	$8, %ecx
	cmpl	%ecx, %esi
	cmovge	%esi, %ecx
	movl	%ecx, 12(%esp)
L721:
	movl	_GImGui, %eax
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L722
	addl	$1, 188(%eax)
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L724
	movl	(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	subl	$1, 188(%eax)
L725:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
L724:
	movl	12(%esp), %eax
	movl	%edx, 8(%ebx)
	movl	%eax, 4(%ebx)
	jmp	L713
	.p2align 4,,10
	.p2align 3
L720:
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	addl	%edx, %ecx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	movl	%ecx, 12(%esp)
	cmpl	%edx, %ecx
	jle	L710
	jmp	L721
	.p2align 4,,10
	.p2align 3
L734:
	movl	%eax, %edx
L711:
	movl	_GImGui, %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L715
	addl	$1, 188(%eax)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L717
	movl	(%ebx), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	24(%esp), %eax
	movl	20(%esp), %edx
	subl	$1, 188(%eax)
L727:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L717:
	movl	12(%esp), %eax
	movl	%edx, 4(%ebx)
	movl	%eax, 8(%ebx)
	jmp	L714
	.p2align 4,,10
	.p2align 3
L733:
	xorl	%ebp, %ebp
	movl	$1, %edi
	jmp	L711
	.p2align 4,,10
	.p2align 3
L722:
	movl	12(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L724
	movl	(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	call	_memcpy
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	jmp	L725
	.p2align 4,,10
	.p2align 3
L715:
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	L717
	movl	16(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	20(%esp), %edx
	jmp	L727
	.cfi_endproc
LFE92:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.def	__ZN15ImGuiTextBuffer8appendfvEPKcPc;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer8appendfvEPKcPc:
LFB95:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	60(%esp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 32(%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%eax, 8(%esp)
	call	___mingw_vsnprintf
	testl	%eax, %eax
	jle	L735
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 40(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	(%edi), %ecx
	testl	%ecx, %ecx
	jne	L763
	xorl	%ebp, %ebp
	movl	$1, %esi
L737:
	movl	4(%edi), %eax
	addl	%ebx, %esi
	cmpl	%esi, %eax
	jg	L747
	leal	(%eax,%eax), %edx
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	%edx, %eax
	jl	L764
L740:
	cmpl	%eax, %esi
	jle	L747
	testl	%eax, %eax
	jne	L745
	movl	$8, %ecx
	cmpl	%ecx, %esi
	cmovge	%esi, %ecx
	movl	%ecx, 16(%esp)
L746:
	movl	_GImGui, %eax
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	je	L748
	addl	$1, 188(%eax)
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%edi), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L750
	movl	(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	call	_memcpy
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	subl	$1, 188(%eax)
L753:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	20(%esp), %edx
L750:
	movl	16(%esp), %eax
	movl	%edx, 8(%edi)
	movl	%eax, 4(%edi)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L745:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	addl	%eax, %ecx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	movl	%ecx, 16(%esp)
	cmpl	%eax, %ecx
	jg	L746
L747:
	movl	8(%edi), %edx
L739:
	movl	32(%esp), %eax
	movl	%esi, (%edi)
	addl	%edx, %ebp
	leal	1(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 8(%esp)
	call	___mingw_vsnprintf
	testl	%ebp, %ebp
	je	L762
	cmpl	$-1, %eax
	je	L752
	cmpl	%edi, %eax
	cmovl	%eax, %ebx
L752:
	movb	$0, 0(%ebp,%ebx)
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L735:
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L763:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	-1(%ecx), %ebp
	movl	%ecx, %esi
	jmp	L737
	.p2align 4,,10
	.p2align 3
L764:
	movl	_GImGui, %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L741
	addl	$1, 188(%eax)
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 20(%esp)
	je	L743
	movl	(%edi), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	28(%esp), %eax
	movl	24(%esp), %edx
	subl	$1, 188(%eax)
L755:
	movl	20(%esp), %eax
	movl	$0, 4(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	24(%esp), %edx
L743:
	movl	16(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%eax, 8(%edi)
	movl	%edx, %eax
	jmp	L740
	.p2align 4,,10
	.p2align 3
L762:
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L741:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	testl	%eax, %eax
	movl	%eax, 20(%esp)
	je	L743
	movl	20(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	24(%esp), %edx
	jmp	L755
	.p2align 4,,10
	.p2align 3
L748:
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%edi), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L750
	movl	(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	%edx, 20(%esp)
	call	_memcpy
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	jmp	L753
	.cfi_endproc
LFE95:
	.align 2
	.p2align 4
	.globl	__ZN15ImGuiTextBuffer7appendfEPKcz
	.def	__ZN15ImGuiTextBuffer7appendfEPKcz;	.scl	2;	.type	32;	.endef
__ZN15ImGuiTextBuffer7appendfEPKcz:
LFB97:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	leal	24(%esp), %eax
	movl	16(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN15ImGuiTextBuffer8appendfvEPKcPc
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__ZN5ImGui13PopStyleColorEi.constprop.0
	.def	__ZN5ImGui13PopStyleColorEi.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui13PopStyleColorEi.constprop.0:
LFB99:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_GImGui, %ebx
	movl	18508(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L767
	movl	18516(%ebx), %eax
	subl	$1, %ecx
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	movl	4(%edx), %esi
	addl	$913, %eax
	sall	$4, %eax
	movl	%esi, 16(%ebx,%eax)
	movl	8(%edx), %esi
	movl	%esi, 20(%ebx,%eax)
	movl	12(%edx), %esi
	movl	%esi, 24(%ebx,%eax)
	movl	16(%edx), %edx
	movl	%edx, 28(%ebx,%eax)
	movl	%ecx, 18508(%ebx)
L767:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__ZN5ImGui12PushStyleVarEiRK6ImVec2
	.def	__ZN5ImGui12PushStyleVarEiRK6ImVec2;	.scl	2;	.type	32;	.endef
__ZN5ImGui12PushStyleVarEiRK6ImVec2:
LFB100:
	.cfi_startproc
	movl	%edx, %ecx
	leal	(%eax,%eax,2), %edx
	sall	$2, %edx
	cmpl	$8, __ZL13GStyleVarInfo(%edx)
	je	L789
L786:
	ret
	.p2align 4,,10
	.p2align 3
L789:
	cmpl	$2, __ZL13GStyleVarInfo+4(%edx)
	jne	L786
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	__ZL13GStyleVarInfo+8(%edx), %edx
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	_GImGui, %ecx
	movl	%esi, 40(%esp)
	leal	14404(%ecx,%edx), %edx
	movl	%ebx, 36(%esp)
	movss	(%edx), %xmm1
	movss	4(%edx), %xmm0
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %esi
	movl	%eax, 24(%esp)
	movl	18520(%ecx), %edx
	movss	%xmm1, 28(%esp)
	movss	%xmm0, 32(%esp)
	cmpl	18524(%ecx), %edx
	je	L790
L772:
	movl	18528(%ecx), %ebx
L776:
	leal	(%edx,%edx,2), %eax
	movl	24(%esp), %edx
	movl	%edx, (%ebx,%eax,4)
	movl	28(%esp), %edx
	movl	%edx, 4(%ebx,%eax,4)
	movl	32(%esp), %edx
	movl	%edx, 8(%ebx,%eax,4)
	addl	$1, 18520(%ecx)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%eax, 12(%esp)
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	movl	%edx, 16(%esp)
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L790:
	.cfi_restore_state
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	leal	1(%edx), %ebx
	testl	%edx, %edx
	jne	L773
	movl	$8, %eax
	cmpl	%eax, %ebx
	cmovge	%ebx, %eax
	movl	%eax, %ebp
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
L774:
	addl	$1, 188(%ecx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, %ebx
	movl	18528(%ecx), %eax
	testl	%eax, %eax
	je	L777
	leal	(%edx,%edx,2), %edx
	movl	%eax, 4(%esp)
	sall	$2, %edx
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	movl	18528(%ecx), %eax
	testl	%eax, %eax
	je	L778
	subl	$1, 188(%ecx)
L778:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %ecx
	movl	18520(%ecx), %edx
L777:
	movl	%ebx, 18528(%ecx)
	movl	%ebp, 18524(%ecx)
	movl	48(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L776
L773:
	.cfi_restore_state
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movl	%eax, %ebp
	cmpl	%eax, %edx
	jl	L775
	movl	48(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L772
L775:
	.cfi_restore_state
	leal	(%eax,%eax,2), %eax
	sall	$2, %eax
	jmp	L774
	.cfi_endproc
LFE100:
	.p2align 4
	.globl	__ZN5ImGui11PopStyleVarEi.constprop.0
	.def	__ZN5ImGui11PopStyleVarEi.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui11PopStyleVarEi.constprop.0:
LFB104:
	.cfi_startproc
	movl	_GImGui, %ecx
	movl	18520(%ecx), %eax
	testl	%eax, %eax
	jle	L798
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	subl	$1, %eax
	movl	%ebx, (%esp)
	movl	18528(%ecx), %edx
	.cfi_offset 3, -12
	leal	(%eax,%eax,2), %ebx
	leal	(%edx,%ebx,4), %ebx
	movl	(%ebx), %edx
	leal	(%edx,%edx,2), %edx
	sall	$2, %edx
	cmpl	$8, __ZL13GStyleVarInfo(%edx)
	je	L802
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L802:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	__ZL13GStyleVarInfo+8(%edx), %esi
	movl	__ZL13GStyleVarInfo+4(%edx), %edx
	leal	14404(%ecx,%esi), %esi
	cmpl	$1, %edx
	je	L803
	cmpl	$2, %edx
	je	L804
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L803:
	.cfi_restore_state
	movss	4(%ebx), %xmm0
	movss	%xmm0, (%esi)
	movl	18520(%ecx), %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	subl	$1, %eax
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L804:
	.cfi_restore_state
	movss	4(%ebx), %xmm0
	movss	%xmm0, (%esi)
	movss	8(%ebx), %xmm0
	movss	%xmm0, 4(%esi)
	movl	18520(%ecx), %eax
	movl	4(%esp), %esi
	.cfi_restore 6
	subl	$1, %eax
	movl	%eax, 18520(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L798:
	ret
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b
	.def	__ZN5ImGui10RenderTextE6ImVec2PKcS2_b;	.scl	2;	.type	32;	.endef
__ZN5ImGui10RenderTextE6ImVec2PKcS2_b:
LFB105:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -16
	movl	68(%esp), %ebx
	movl	%edi, 60(%esp)
	.cfi_offset 7, -8
	movl	%ecx, %edi
	movl	%eax, 28(%esp)
	movl	%edx, 32(%esp)
	cmpb	$0, 72(%esp)
	je	L806
	testl	%ebx, %ebx
	je	L823
	cmpl	%ebx, %ecx
	jnb	L805
L811:
	movl	%edi, %eax
	jmp	L809
	.p2align 4,,10
	.p2align 3
L814:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jnb	L813
L809:
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L813
	cmpb	$35, %dl
	jne	L814
	cmpb	$35, 1(%eax)
	jne	L814
	.p2align 4
	.p2align 3
L813:
	movl	%eax, %ebx
L810:
	cmpl	%edi, %ebx
	je	L805
	movl	%esi, 56(%esp)
	.cfi_offset 6, -12
	movl	_GImGui, %esi
	movl	16148(%esi), %eax
	movss	14636(%esi), %xmm0
	mulss	14404(%esi), %xmm0
	movl	676(%eax), %ecx
	movl	14624(%esi), %eax
	movl	%eax, 36(%esp)
	movl	14628(%esi), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 40(%esp)
	movl	14632(%esi), %eax
	movss	%xmm0, 48(%esp)
	movl	%eax, 44(%esp)
	leal	36(%esp), %eax
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	15516(%esi), %xmm0
	movl	%ebx, 16(%esp)
	xorps	%xmm1, %xmm1
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	24(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	$0, 20(%esp)
	movl	%edi, 12(%esp)
	movl	15512(%esi), %edx
	movl	%edx, (%esp)
	call	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	.cfi_def_cfa_offset 44
	subl	$24, %esp
	.cfi_def_cfa_offset 68
	cmpb	$0, 23524(%esi)
	leal	28(%esp), %eax
	jne	L824
	movl	56(%esp), %esi
	.cfi_restore 6
L805:
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L806:
	.cfi_restore_state
	testl	%ebx, %ebx
	jne	L810
	movl	%ecx, (%esp)
	call	_strlen
	leal	(%edi,%eax), %ebx
	jmp	L810
	.p2align 4,,10
	.p2align 3
L824:
	.cfi_offset 6, -12
	movl	%ebx, %ecx
	movl	%edi, %edx
	call	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	addl	$64, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L823:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movl	$-1, %ebx
	cmpl	$-1, %ecx
	jne	L811
	jmp	L805
	.cfi_endproc
LFE105:
	.section .rdata,"dr"
LC51:
	.ascii "Window\0"
LC52:
	.ascii "Table\0"
LC53:
	.ascii "Docking\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui10InitializeEv
	.def	__ZN5ImGui10InitializeEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui10InitializeEv:
LFB109:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$LC51+1, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$-1, %esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$108, %esp
	.cfi_offset 3, -20
	movl	_GImGui, %eax
	movss	LC57, %xmm1
	movl	$__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm0
	movl	$__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm2
	unpcklps	%xmm0, %xmm0
	movl	$__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 56(%esp)
	unpcklps	%xmm2, %xmm1
	movaps	%xmm0, %xmm4
	movss	56(%esp), %xmm0
	movl	$__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movlhps	%xmm1, %xmm4
	movss	56(%esp), %xmm2
	movss	LC58, %xmm1
	movl	$__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 56(%esp)
	movl	$0, 72(%esp)
	unpcklps	%xmm0, %xmm1
	movups	%xmm4, 28(%esp)
	movss	LC59, %xmm0
	unpcklps	%xmm2, %xmm0
	movss	LC60, %xmm2
	movlhps	%xmm1, %xmm0
	movss	56(%esp), %xmm1
	movl	$__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0, 56(%esp)
	movss	56(%esp), %xmm3
	movl	%eax, 56(%esp)
	movl	$87, %eax
	unpcklps	%xmm1, %xmm2
	movss	LC61, %xmm1
	movl	$0, 76(%esp)
	movl	$0, 80(%esp)
	unpcklps	%xmm3, %xmm1
	movl	$0, 84(%esp)
	movl	$0, 88(%esp)
	movlhps	%xmm2, %xmm1
	movl	$0, 92(%esp)
	movl	$LC51, 60(%esp)
	jmp	L829
	.p2align 6
	.p2align 4,,10
	.p2align 3
L828:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L827:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC51+7, %edx
	je	L935
L829:
	cmpb	$35, %al
	jne	L828
	cmpb	$35, (%edx)
	jne	L828
	cmpb	$35, 1(%edx)
	jne	L828
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L827
	.p2align 4,,10
	.p2align 3
L935:
	movl	56(%esp), %eax
	notl	%esi
	movups	%xmm1, 76(%esp)
	movl	%esi, 64(%esp)
	movl	$__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 68(%esp)
	movl	23440(%eax), %esi
	cmpl	23444(%eax), %esi
	je	L936
L830:
	movl	56(%esp), %eax
	movl	23448(%eax), %edi
L834:
	movl	60(%esp), %edx
	leal	(%esi,%esi,8), %eax
	movl	$LC52, 60(%esp)
	movl	$-1, %esi
	movl	%edx, (%edi,%eax,4)
	movl	64(%esp), %edx
	movl	%edx, 4(%edi,%eax,4)
	movl	68(%esp), %edx
	movl	%edx, 8(%edi,%eax,4)
	movl	72(%esp), %edx
	movl	$0, 72(%esp)
	movl	%edx, 12(%edi,%eax,4)
	movl	76(%esp), %edx
	movl	$0, 76(%esp)
	movl	%edx, 16(%edi,%eax,4)
	movl	80(%esp), %edx
	movl	$0, 80(%esp)
	movl	%edx, 20(%edi,%eax,4)
	movl	84(%esp), %edx
	movl	$0, 84(%esp)
	movl	%edx, 24(%edi,%eax,4)
	movl	88(%esp), %edx
	movl	$0, 88(%esp)
	movl	%edx, 28(%edi,%eax,4)
	movl	92(%esp), %edx
	movl	$0, 92(%esp)
	movl	%edx, 32(%edi,%eax,4)
	movl	56(%esp), %eax
	movl	$LC52+1, %edx
	addl	$1, 23440(%eax)
	movl	$84, %eax
	jmp	L840
	.p2align 6
	.p2align 4,,10
	.p2align 3
L839:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L838:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC52+6, %edx
	je	L937
L840:
	cmpb	$35, %al
	jne	L839
	cmpb	$35, (%edx)
	jne	L839
	cmpb	$35, 1(%edx)
	jne	L839
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L838
	.p2align 4,,10
	.p2align 3
L937:
	notl	%esi
	movl	$__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0, 68(%esp)
	movl	%esi, 64(%esp)
	movl	_GImGui, %esi
	movups	%xmm0, 76(%esp)
	movl	23440(%esi), %edi
	cmpl	23444(%esi), %edi
	je	L938
L841:
	movl	23448(%esi), %ecx
L844:
	movl	60(%esp), %edx
	leal	(%edi,%edi,8), %eax
	movl	%edx, (%ecx,%eax,4)
	movl	64(%esp), %edx
	movl	_GImGui, %edi
	movl	%edx, 4(%ecx,%eax,4)
	movl	68(%esp), %edx
	movl	%edx, 8(%ecx,%eax,4)
	movl	72(%esp), %edx
	movl	%edx, 12(%ecx,%eax,4)
	movl	76(%esp), %edx
	movl	%edx, 16(%ecx,%eax,4)
	movl	80(%esp), %edx
	movl	%edx, 20(%ecx,%eax,4)
	movl	84(%esp), %edx
	movl	%edx, 24(%ecx,%eax,4)
	movl	88(%esp), %edx
	movl	%edx, 28(%ecx,%eax,4)
	movl	92(%esp), %edx
	movl	%edx, 32(%ecx,%eax,4)
	xorl	%eax, %eax
	addl	$1, 23440(%esi)
	.p2align 5
	.p2align 4
	.p2align 3
L847:
	movl	__ZL24GLocalizationEntriesEnUS(,%eax,8), %edx
	movl	__ZL24GLocalizationEntriesEnUS+4(,%eax,8), %ecx
	addl	$1, %eax
	movl	%ecx, 23492(%edi,%edx,4)
	cmpl	$8, %eax
	jne	L847
	movl	$__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0, 52(%esp)
	movss	52(%esp), %xmm1
	movss	LC62, %xmm0
	movl	56(%esp), %eax
	unpcklps	%xmm1, %xmm0
	movl	%eax, 148(%eax)
	movl	$__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0, 152(%eax)
	movlps	%xmm0, 140(%eax)
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$256, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 56(%eax)
	movl	%eax, %esi
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	xorl	%eax, %eax
L848:
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	movl	$0, 16(%esi,%eax)
	movl	$0, 20(%esi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L848
	movl	$0x00000000, 88(%esi)
	xorl	%eax, %eax
	movl	$0x00000000, 92(%esi)
	movl	$0, 160(%esi)
	movl	$0, 164(%esi)
	movl	$0, 168(%esi)
	movl	$0, 172(%esi)
L850:
	movl	$0, 128(%esi,%eax)
	movl	$0, 132(%esi,%eax)
	movl	$0, 136(%esi,%eax)
	movl	$0, 140(%esi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L850
	movl	$-1, %eax
	movl	56(%esp), %ebx
	movss	LC15, %xmm0
	movl	$0, 176(%esi)
	movl	%eax, 112(%esi)
	movss	%xmm0, 100(%esi)
	movss	%xmm0, 96(%esi)
	movups	LC55, %xmm0
	movl	%eax, 116(%esi)
	movl	%eax, 76(%esi)
	movl	%eax, 80(%esi)
	movl	$-1, %eax
	movups	%xmm0, 216(%esi)
	xorps	%xmm0, %xmm0
	movl	$0, 180(%esi)
	movl	$0, 184(%esi)
	movl	$0, 188(%esi)
	movl	$0, 192(%esi)
	movl	$0, 196(%esi)
	movl	$0x00000000, 248(%esi)
	movl	$0x00000000, 252(%esi)
	movl	$0, 84(%esi)
	movw	%ax, 104(%esi)
	movl	$0, 108(%esi)
	movl	$0, 120(%esi)
	movl	$0, 124(%esi)
	movl	$2139095039, 208(%esi)
	movl	$2139095039, 212(%esi)
	movl	$2139095039, 200(%esi)
	movl	$2139095039, 204(%esi)
	movl	$286331153, (%esi)
	movl	$0, 72(%esi)
	movb	$1, 68(%esi)
	movl	$4, 4(%esi)
	movups	%xmm0, 232(%esi)
	movl	18608(%ebx), %eax
	cmpl	18612(%ebx), %eax
	je	L939
L852:
	movl	56(%esp), %edi
	movl	18616(%edi), %edx
L855:
	movl	%esi, (%edx,%eax,4)
	movl	56(%esp), %eax
	addl	$1, 18608(%eax)
	movl	23944(%eax), %eax
	cmpl	$3072, %eax
	jg	L858
	testl	%eax, %eax
	je	L889
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	addl	%eax, %esi
	movl	$3073, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	%esi, %eax
L859:
	movl	_GImGui, %edx
	testl	%edx, %edx
	je	L860
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edi
	movl	23948(%ebx), %eax
	testl	%eax, %eax
	je	L861
	movl	23940(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23948(%ebx), %eax
	testl	%eax, %eax
	je	L887
	movl	52(%esp), %edx
	subl	$1, 188(%edx)
L887:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L861:
	movl	56(%esp), %eax
	movl	%edi, 23948(%eax)
	movl	%esi, 23944(%eax)
L858:
	movl	56(%esp), %eax
	movl	23940(%eax), %eax
	cmpl	$3072, %eax
	jle	L864
L863:
	movl	56(%esp), %edi
	movl	$3073, 23940(%edi)
	movl	18616(%edi), %eax
	movl	(%eax), %esi
	movl	%edi, %eax
	movl	14368(%edi), %edi
	cmpl	14372(%eax), %edi
	je	L940
L865:
	movl	56(%esp), %eax
	movl	14376(%eax), %ecx
L868:
	movl	56(%esp), %eax
	movl	%esi, (%ecx,%edi,4)
	movl	$LC53+1, %edx
	movl	$-1, %esi
	movl	$0, 92(%esp)
	addl	$1, 14368(%eax)
	movl	$68, %eax
	movl	$LC53, 60(%esp)
	jmp	L875
	.p2align 6
	.p2align 4,,10
	.p2align 3
L874:
	movl	%esi, %ecx
	movl	%esi, %ebx
	shrl	$8, %ecx
	movzbl	%bl, %esi
L873:
	xorl	%esi, %eax
	addl	$1, %edx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ecx
	movzbl	-1(%edx), %eax
	movl	%ecx, %esi
	cmpl	$LC53+8, %edx
	je	L941
L875:
	cmpb	$35, %al
	jne	L874
	cmpb	$35, (%edx)
	jne	L874
	cmpb	$35, 1(%edx)
	jne	L874
	movl	$255, %esi
	movl	$16777215, %ecx
	jmp	L873
	.p2align 4,,10
	.p2align 3
L936:
	leal	1(%esi), %edx
	testl	%esi, %esi
	jne	L831
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	leal	(%edx,%edx,8), %eax
	sall	$2, %eax
L832:
	movl	56(%esp), %ebx
	movl	%edx, 52(%esp)
	movups	%xmm0, 12(%esp)
	addl	$1, 188(%ebx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	52(%esp), %edx
	movups	12(%esp), %xmm0
	movl	%eax, %edi
	movl	23448(%ebx), %eax
	testl	%eax, %eax
	je	L835
	leal	(%esi,%esi,8), %ecx
	movl	%eax, 4(%esp)
	sall	$2, %ecx
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	23448(%ebx), %eax
	movl	52(%esp), %edx
	movups	12(%esp), %xmm0
	testl	%eax, %eax
	je	L836
	subl	$1, 188(%ebx)
L836:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 52(%esp)
	movups	%xmm0, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movups	12(%esp), %xmm0
	movl	52(%esp), %edx
	movl	23440(%eax), %esi
L835:
	movl	56(%esp), %eax
	movl	%edi, 23448(%eax)
	movl	%edx, 23444(%eax)
	jmp	L834
	.p2align 4,,10
	.p2align 3
L938:
	leal	1(%edi), %eax
	testl	%edi, %edi
	jne	L842
	movl	$8, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
L843:
	leal	(%edx,%edx,8), %eax
	addl	$1, 188(%esi)
	sall	$2, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	52(%esp), %edx
	movl	%eax, %ecx
	movl	23448(%esi), %eax
	testl	%eax, %eax
	je	L845
	leal	(%edi,%edi,8), %edi
	movl	%ecx, (%esp)
	sall	$2, %edi
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 52(%esp)
	call	_memcpy
	movl	23448(%esi), %eax
	movl	52(%esp), %ecx
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	L846
	subl	$1, 188(%esi)
L846:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 52(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	23440(%esi), %edi
	movl	12(%esp), %ecx
	movl	52(%esp), %edx
L845:
	movl	%ecx, 23448(%esi)
	movl	%edx, 23444(%esi)
	jmp	L844
	.p2align 4,,10
	.p2align 3
L842:
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
	addl	%edi, %edx
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	cmpl	%edx, %edi
	jge	L841
	jmp	L843
	.p2align 4,,10
	.p2align 3
L831:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	%edx, %esi
	jge	L830
	leal	(%edx,%edx,8), %eax
	sall	$2, %eax
	jmp	L832
	.p2align 5
	.p2align 4,,10
	.p2align 3
L864:
	movl	56(%esp), %edi
	movl	23948(%edi), %edx
	movb	$0, (%edx,%eax)
	addl	$1, %eax
	cmpl	$3073, %eax
	jne	L864
	jmp	L863
	.p2align 4,,10
	.p2align 3
L941:
	movups	28(%esp), %xmm5
	movl	56(%esp), %eax
	movl	$__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0, 28(%esp)
	notl	%esi
	movss	28(%esp), %xmm1
	movl	%esi, 64(%esp)
	movss	LC63, %xmm0
	movl	23440(%eax), %esi
	movups	%xmm5, 68(%esp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, 84(%esp)
	cmpl	23444(%eax), %esi
	je	L942
L876:
	movl	56(%esp), %eax
	movl	23448(%eax), %edx
L879:
	leal	(%esi,%esi,8), %eax
	leal	(%edx,%eax,4), %eax
	movl	60(%esp), %edx
	movl	%edx, (%eax)
	movl	64(%esp), %edx
	movl	%edx, 4(%eax)
	movl	68(%esp), %edx
	movl	%edx, 8(%eax)
	movl	72(%esp), %edx
	movl	%edx, 12(%eax)
	movl	76(%esp), %edx
	movl	%edx, 16(%eax)
	movl	80(%esp), %edx
	movl	%edx, 20(%eax)
	movl	84(%esp), %edx
	movl	%edx, 24(%eax)
	movl	88(%esp), %edx
	movl	%edx, 28(%eax)
	movl	92(%esp), %edx
	movl	%edx, 32(%eax)
	movl	56(%esp), %eax
	addl	$1, 23440(%eax)
	movl	$__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar, 23416(%eax)
	movb	$1, (%eax)
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
L940:
	.cfi_restore_state
	leal	1(%edi), %ecx
	testl	%edi, %edi
	jne	L866
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %ebx
L867:
	movl	_GImGui, %edx
	leal	0(,%ebx,4), %eax
	testl	%edx, %edx
	je	L869
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 52(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %edi
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	movl	14368(%edi), %edi
	testl	%eax, %eax
	je	L870
	sall	$2, %edi
	movl	%ecx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 12(%esp)
	call	_memcpy
	movl	56(%esp), %edi
	movl	12(%esp), %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L885
	movl	52(%esp), %edx
	subl	$1, 188(%edx)
L885:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 52(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movl	52(%esp), %ecx
	movl	14368(%eax), %edi
L870:
	movl	56(%esp), %edx
	movl	%ecx, 14376(%edx)
	movl	%ebx, 14372(%edx)
	jmp	L868
L939:
	leal	1(%eax), %ecx
	testl	%eax, %eax
	jne	L853
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, 52(%esp)
L854:
	movl	52(%esp), %eax
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edx
	movl	18616(%ebx), %eax
	testl	%eax, %eax
	je	L856
	movl	18608(%ebx), %ebx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	leal	0(,%ebx,4), %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	56(%esp), %ebx
	movl	12(%esp), %edx
	movl	18616(%ebx), %eax
	testl	%eax, %eax
	jne	L943
L857:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
L856:
	movl	56(%esp), %edi
	movl	52(%esp), %eax
	movl	%edx, 18616(%edi)
	movl	%eax, 18612(%edi)
	movl	18608(%edi), %eax
	jmp	L855
	.p2align 4,,10
	.p2align 3
L942:
	leal	1(%esi), %eax
	testl	%esi, %esi
	jne	L877
	movl	$8, %edi
	cmpl	%edi, %eax
	cmovge	%eax, %edi
L878:
	movl	_GImGui, %ecx
	leal	(%edi,%edi,8), %eax
	sall	$2, %eax
	testl	%ecx, %ecx
	je	L880
	addl	$1, 188(%ecx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	56(%esp), %ebx
	movl	%eax, %edx
	movl	23448(%ebx), %eax
	movl	23440(%ebx), %esi
	testl	%eax, %eax
	je	L881
	leal	(%esi,%esi,8), %esi
	movl	%edx, (%esp)
	sall	$2, %esi
	movl	%eax, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 52(%esp)
	call	_memcpy
	movl	23448(%ebx), %eax
	movl	52(%esp), %edx
	testl	%eax, %eax
	je	L883
	movl	28(%esp), %ecx
	subl	$1, 188(%ecx)
L883:
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	56(%esp), %eax
	movl	28(%esp), %edx
	movl	23440(%eax), %esi
L881:
	movl	56(%esp), %eax
	movl	%edx, 23448(%eax)
	movl	%edi, 23444(%eax)
	jmp	L879
	.p2align 4,,10
	.p2align 3
L889:
	movl	$3073, %eax
	movl	$3073, %esi
	jmp	L859
	.p2align 4,,10
	.p2align 3
L877:
	movl	%esi, %edi
	shrl	$31, %edi
	addl	%esi, %edi
	sarl	%edi
	addl	%esi, %edi
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	cmpl	%edi, %esi
	jge	L876
	jmp	L878
	.p2align 4,,10
	.p2align 3
L853:
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	cmovge	%edx, %ecx
	movl	%ecx, 52(%esp)
	cmpl	%ecx, %eax
	jge	L852
	jmp	L854
	.p2align 4,,10
	.p2align 3
L866:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %ebx
	cmpl	%ecx, %edi
	jge	L865
	jmp	L867
L860:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	56(%esp), %eax
	movl	23948(%eax), %eax
	testl	%eax, %eax
	je	L861
	movl	56(%esp), %ebx
	movl	23940(%ebx), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	23948(%ebx), %eax
	jmp	L887
L943:
	subl	$1, 188(%edi)
	jmp	L857
L880:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edx
	movl	56(%esp), %eax
	movl	23448(%eax), %eax
	testl	%eax, %eax
	je	L881
	leal	(%esi,%esi,8), %ecx
	movl	%edx, (%esp)
	sall	$2, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 28(%esp)
	call	_memcpy
	movl	56(%esp), %eax
	movl	28(%esp), %edx
	movl	23448(%eax), %eax
	jmp	L883
L869:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %ecx
	movl	56(%esp), %eax
	movl	14376(%eax), %eax
	testl	%eax, %eax
	je	L870
	leal	0(,%edi,4), %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 52(%esp)
	call	_memcpy
	movl	56(%esp), %eax
	movl	52(%esp), %ecx
	movl	14376(%eax), %eax
	jmp	L885
	.cfi_endproc
LFE109:
	.section .rdata,"dr"
LC65:
	.ascii "#MOVE\0"
LC66:
	.ascii "#TAB\0"
	.text
	.align 2
	.p2align 4
	.globl	__ZN11ImGuiWindowC2EP12ImGuiContextPKc
	.def	__ZN11ImGuiWindowC2EP12ImGuiContextPKc;	.scl	2;	.type	32;	.endef
__ZN11ImGuiWindowC2EP12ImGuiContextPKc:
LFB123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	680(%ecx), %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	subl	$32, %esp
	movl	12(%ebp), %esi
	movl	%ecx, (%esp)
	movl	$968, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 24(%esp)
	call	_memset
	movl	8(%ebp), %eax
	movl	%eax, (%ebx)
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %edi
	movl	_GImGui, %eax
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	je	L945
	addl	$1, 188(%eax)
L945:
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	%eax, 4(%ebx)
	movl	%esi, (%esp)
	call	_strlen
	movzbl	(%esi), %edi
	addl	$1, %eax
	movl	%eax, 156(%ebx)
	movl	%edi, %eax
	testb	%al, %al
	je	L965
	movl	%edi, %ecx
	addl	$1, %esi
	movl	$-1, %eax
	movzbl	(%esi), %edx
	cmpb	$35, %cl
	je	L947
	.p2align 4
	.p2align 3
L950:
	xorl	%eax, %ecx
	movl	%eax, %edi
	movzbl	%cl, %ecx
	shrl	$8, %edi
	movl	__ZL17GCrc32LookupTable.lto_priv.0(,%ecx,4), %eax
	xorl	%edi, %eax
	testb	%dl, %dl
	je	L972
	addl	$1, %esi
	movl	%edx, %ecx
L973:
	movzbl	(%esi), %edx
	cmpb	$35, %cl
	jne	L950
L947:
	cmpb	$35, %dl
	jne	L950
	cmpb	$35, 1(%esi)
	jne	L950
	addl	$1, %esi
	movl	$-1885708032, %eax
	movl	%edx, %ecx
	jmp	L973
	.p2align 4,,10
	.p2align 3
L972:
	notl	%eax
	movl	%eax, %esi
L946:
	movl	%esi, 8(%ebx)
	movl	284(%ebx), %edi
	cmpl	288(%ebx), %edi
	je	L974
L953:
	movl	292(%ebx), %edx
L956:
	movl	%esi, (%edx,%edi,4)
	movl	284(%ebx), %eax
	xorl	%edx, %edx
	movl	292(%ebx), %esi
	movl	$-1, 64(%ebx)
	leal	1(%eax), %edi
	movl	$0x7f7fffff, 56(%ebx)
	movl	%edi, 284(%ebx)
	movl	$0x7f7fffff, 60(%ebx)
	movl	(%esi,%eax,4), %ecx
	movl	$LC65, %eax
	movl	%esi, 28(%esp)
	call	__Z9ImHashStrPKcjj
	movl	(%ebx), %esi
	cmpl	16200(%esi), %eax
	je	L975
L960:
	movl	%eax, 160(%ebx)
	movl	28(%esp), %eax
	xorl	%edx, %edx
	movl	-4(%eax,%edi,4), %ecx
	movl	$LC66, %eax
	call	__Z9ImHashStrPKcjj
	cmpl	16200(%esi), %eax
	je	L976
L961:
	movl	%eax, 164(%ebx)
	movl	$-1, %eax
	movups	LC67, %xmm0
	addl	$15524, %esi
	movw	%ax, 252(%ebx)
	movl	$0x7f7fffff, 276(%ebx)
	movl	276(%ebx), %eax
	movl	$0x7f7fffff, 280(%ebx)
	movl	280(%ebx), %edx
	movl	%eax, 268(%ebx)
	movl	$-1, %eax
	movl	%eax, 624(%ebx)
	movl	%eax, 628(%ebx)
	movl	24(%esp), %eax
	movups	%xmm0, 188(%ebx)
	movss	LC15, %xmm0
	movl	%eax, 676(%ebx)
	movl	4(%ebx), %eax
	movl	%edx, 272(%ebx)
	movl	$-1, %edx
	movl	%esi, 724(%ebx)
	movl	$-1, 256(%ebx)
	movl	$0, 264(%ebx)
	movl	$0xbf800000, 632(%ebx)
	movl	$-1, 672(%ebx)
	movw	%dx, 910(%ebx)
	movl	%eax, 728(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 44(%ebx)
	movl	$-1, 24(%ebx)
	movss	%xmm0, 668(%ebx)
	movss	%xmm0, 664(%ebx)
	movb	$1, 45(%ebx)
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L974:
	.cfi_restore_state
	leal	1(%edi), %eax
	testl	%edi, %edi
	jne	L954
	movl	$8, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, 20(%esp)
L955:
	movl	20(%esp), %eax
	movl	28(%esp), %edx
	sall	$2, %eax
	testl	%edx, %edx
	je	L957
	addl	$1, 188(%edx)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	292(%ebx), %ecx
	movl	284(%ebx), %edi
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L977
	sall	$2, %edi
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	call	_memcpy
	movl	28(%esp), %eax
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	subl	$1, 188(%eax)
L962:
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 28(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	284(%ebx), %edi
	movl	8(%ebx), %esi
	movl	28(%esp), %edx
L959:
	movl	20(%esp), %eax
	movl	%edx, 292(%ebx)
	movl	%eax, 288(%ebx)
	jmp	L956
	.p2align 4,,10
	.p2align 3
L975:
	movl	$LC65, %ecx
	movl	$11, %edx
	movl	%eax, 20(%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	292(%ebx), %eax
	movl	284(%ebx), %edi
	movl	(%ebx), %esi
	movl	%eax, 28(%esp)
	movl	20(%esp), %eax
	jmp	L960
	.p2align 4,,10
	.p2align 3
L976:
	movl	$LC66, %ecx
	movl	$11, %edx
	movl	%eax, 28(%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	(%ebx), %esi
	movl	28(%esp), %eax
	jmp	L961
	.p2align 4,,10
	.p2align 3
L954:
	movl	%edi, %edx
	shrl	$31, %edx
	addl	%edi, %edx
	sarl	%edx
	addl	%edi, %edx
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, 20(%esp)
	cmpl	%eax, %edi
	jge	L953
	jmp	L955
	.p2align 4,,10
	.p2align 3
L965:
	xorl	%esi, %esi
	jmp	L946
L977:
	movl	8(%ebx), %esi
	jmp	L959
L957:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	292(%ebx), %ecx
	movl	%eax, %edx
	testl	%ecx, %ecx
	je	L959
	sall	$2, %edi
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 28(%esp)
	call	_memcpy
	movl	28(%esp), %edx
	movl	16(%esp), %ecx
	jmp	L962
	.cfi_endproc
LFE123:
	.globl	__ZN11ImGuiWindowC1EP12ImGuiContextPKc
	.def	__ZN11ImGuiWindowC1EP12ImGuiContextPKc;	.scl	2;	.type	32;	.endef
	.set	__ZN11ImGuiWindowC1EP12ImGuiContextPKc,__ZN11ImGuiWindowC2EP12ImGuiContextPKc
	.align 2
	.p2align 4
	.globl	__ZN11ImGuiWindow5GetIDEi
	.def	__ZN11ImGuiWindow5GetIDEi;	.scl	2;	.type	32;	.endef
__ZN11ImGuiWindow5GetIDEi:
LFB129:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	284(%ecx), %edx
	movl	292(%ecx), %eax
	leal	20(%esp), %esi
	movl	-4(%eax,%edx,4), %eax
	leal	16(%esp), %edx
	notl	%eax
	.p2align 5
	.p2align 4
	.p2align 3
L979:
	addl	$1, %edx
	movl	%eax, %ebx
	xorb	-1(%edx), %al
	shrl	$8, %ebx
	movzbl	%al, %eax
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %ebx
	movl	%ebx, %eax
	cmpl	%esi, %edx
	jne	L979
	movl	(%ecx), %edx
	notl	%eax
	cmpl	%eax, 16200(%edx)
	je	L983
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L983:
	.cfi_restore_state
	movl	16(%esp), %ecx
	movl	$4, %edx
	movl	%eax, (%esp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movl	(%esp), %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$4
	.cfi_endproc
LFE129:
	.p2align 4
	.globl	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0
	.def	__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16SetCurrentWindowP11ImGuiWindow.lto_priv.0:
LFB131:
	.cfi_startproc
	movl	_GImGui, %edx
	movl	%eax, 16148(%edx)
	testl	%eax, %eax
	je	L985
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	460(%eax), %ebx
	xorl	%ecx, %ecx
	cmpl	$-1, %ebx
	je	L986
	imull	$488, %ebx, %ecx
	addl	19256(%edx), %ecx
L986:
	movl	%ecx, 19228(%edx)
	movl	(%eax), %ecx
	movss	15520(%ecx), %xmm0
	mulss	664(%eax), %xmm0
	mulss	668(%eax), %xmm0
	movl	824(%eax), %eax
	testl	%eax, %eax
	je	L988
	mulss	664(%eax), %xmm0
L988:
	movss	%xmm0, 15536(%edx)
	movss	%xmm0, 15516(%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L985:
	movl	$0, 19228(%edx)
	ret
	.cfi_endproc
LFE131:
	.section .rdata,"dr"
LC70:
	.ascii "\0"
	.align 4
LC71:
	.ascii "SetActiveID() cancel MovingWindow\12\0"
	.align 4
LC72:
	.ascii "SetActiveID() old:0x%08X (window \"%s\") -> new:0x%08X (window \"%s\")\12\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	.def	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow;	.scl	2;	.type	32;	.endef
__ZN5ImGui11SetActiveIDEjP11ImGuiWindow:
LFB132:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ecx
	movl	_GImGui, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	16160(%eax), %ebx
	movl	16224(%eax), %edx
	testl	%ebx, %ebx
	je	L1001
	cmpl	%edx, 160(%ebx)
	je	L1030
L1001:
	cmpl	%edx, %ecx
	setne	16236(%eax)
	je	L1003
L1033:
	testb	$1, 23576(%eax)
	je	L1004
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	$LC70, %ebp
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	testl	%esi, %esi
	je	L1005
	movl	4(%esi), %ebp
L1005:
	movl	16252(%eax), %edi
	movl	$LC70, %ebx
	testl	%edi, %edi
	je	L1006
	movl	4(%edi), %ebx
L1006:
	movl	%ebp, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC72, (%esp)
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L1004:
	movl	$0x00000000, 16232(%eax)
	xorl	%ebx, %ebx
	movw	%bx, 16239(%eax)
	movl	$-1, 16260(%eax)
	testl	%ecx, %ecx
	je	L1031
	xorl	%ebx, %ebx
	movl	%ecx, 16276(%eax)
	movl	$0x00000000, 16280(%eax)
	movl	%ecx, 16224(%eax)
	movw	%bx, 16237(%eax)
	movl	%esi, 16252(%eax)
	movb	$0, 16241(%eax)
L1009:
	movl	%ecx, 16228(%eax)
	movl	$5, %edx
	cmpl	%ecx, 18692(%eax)
	je	L1010
	xorl	%edx, %edx
	cmpl	%ecx, 18708(%eax)
	sete	%dl
	leal	1(,%edx,4), %edx
L1010:
	movl	%edx, 16256(%eax)
	jmp	L1008
	.p2align 4,,10
	.p2align 3
L1031:
	xorl	%edx, %edx
	movl	%esi, 16252(%eax)
	movl	$0, 16224(%eax)
	movw	%dx, 16237(%eax)
	movb	$0, 16241(%eax)
L1008:
	movl	$0, 18268(%eax)
	movb	$0, 18272(%eax)
	movl	$0, 18276(%eax)
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1030:
	.cfi_restore_state
	testb	$1, 23576(%eax)
	jne	L1032
L1002:
	movl	$0, 16160(%eax)
	cmpl	%edx, %ecx
	setne	16236(%eax)
	jne	L1033
L1003:
	xorl	%edx, %edx
	movl	%ecx, 16224(%eax)
	movw	%dx, 16237(%eax)
	movl	%esi, 16252(%eax)
	movb	$0, 16241(%eax)
	testl	%ecx, %ecx
	je	L1008
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1032:
	movl	$LC71, (%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 20(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	movl	16224(%eax), %edx
	jmp	L1002
	.cfi_endproc
LFE132:
	.p2align 4
	.def	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow;	.scl	3;	.type	32;	.endef
__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow:
LFB133:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_GImGui, %ebx
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
	movl	160(%esi), %eax
	movl	%esi, %edx
	call	__ZN5ImGui11SetActiveIDEjP11ImGuiWindow
	movb	$1, 18738(%ebx)
	movl	840(%esi), %eax
	xorl	%edx, %edx
	movss	14012(%ebx), %xmm0
	movss	14008(%ebx), %xmm1
	subss	72(%eax), %xmm0
	subss	68(%eax), %xmm1
	movb	$1, 16238(%ebx)
	movl	_GImGui, %eax
	movss	%xmm1, 16244(%ebx)
	movss	%xmm0, 16248(%ebx)
	movw	%dx, 18764(%eax)
	movzbl	18741(%eax), %edx
	movl	$15, 18268(%eax)
	movb	$1, 18272(%eax)
	movb	%dl, 18740(%eax)
	testb	$4, 12(%esi)
	jne	L1034
	movl	840(%esi), %eax
	testb	$4, 12(%eax)
	je	L1044
L1034:
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
L1044:
	.cfi_restore_state
	movl	940(%esi), %eax
	testl	%eax, %eax
	je	L1036
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	L1036
	testb	$4, 12(%eax)
	jne	L1034
L1036:
	movl	%esi, 16160(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE133:
	.p2align 4
	.def	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0;	.scl	3;	.type	32;	.endef
__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0:
LFB135:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$60, %esp
	.cfi_offset 3, -16
	movl	_GImGui, %edx
	testl	%ecx, %ecx
	je	L1086
	movl	116(%ecx), %eax
	testl	%eax, %eax
	je	L1086
	testb	$4, 12(%eax)
	jne	L1086
	movl	%ecx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1050:
	movl	%eax, %ebx
	movl	24(%eax), %eax
	testl	%eax, %eax
	jne	L1050
	movzbl	3536(%edx), %eax
	cmpl	124(%ebx), %ecx
	je	L1087
	testb	%al, %al
	jne	L1048
L1045:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1086:
	.cfi_restore_state
	xorl	%eax, %eax
	cmpb	$0, 3536(%edx)
	je	L1045
L1048:
	movss	14136(%edx), %xmm3
	xorps	%xmm1, %xmm1
	movss	48(%edx), %xmm0
	movss	LC73, %xmm2
	comiss	%xmm3, %xmm1
	mulss	%xmm0, %xmm2
	ja	L1052
	ucomiss	%xmm1, %xmm3
	jp	L1052
	jne	L1052
	movzbl	17840(%edx), %ebx
	xorl	$1, %ebx
L1055:
	xorps	%xmm3, %xmm3
	movaps	%xmm2, %xmm1
	cmpltss	%xmm3, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm1, %xmm0
	movss	14216(%edx), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L1057
	testb	%al, %al
	jne	L1088
L1066:
	movl	%esi, %eax
	cmpl	%esi, 16160(%edx)
	je	L1045
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow
	.p2align 4,,10
	.p2align 3
L1052:
	.cfi_restore_state
	xorl	%ebx, %ebx
	jmp	L1055
	.p2align 4,,10
	.p2align 3
L1057:
	testb	%al, %al
	jne	L1045
	testb	%bl, %bl
	jne	L1066
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L1088:
	movl	$0, 48(%esp)
	movl	23388(%edx), %ebx
	movl	$0, 32(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$-1, 36(%esp)
	movl	$0x3f000000, 40(%esp)
	movb	$0, 44(%esp)
	movl	$2, 20(%esp)
	movl	%ecx, 52(%esp)
	cmpl	23392(%edx), %ebx
	je	L1089
L1058:
	movl	23396(%edx), %ecx
L1061:
	leal	(%ebx,%ebx,8), %eax
	leal	(%ecx,%eax,4), %eax
	movl	20(%esp), %ecx
	movl	%ecx, (%eax)
	movl	24(%esp), %ecx
	movl	%ecx, 4(%eax)
	movl	28(%esp), %ecx
	movl	%ecx, 8(%eax)
	movl	32(%esp), %ecx
	movl	%ecx, 12(%eax)
	movl	36(%esp), %ecx
	movl	%ecx, 16(%eax)
	movl	40(%esp), %ecx
	movl	%ecx, 20(%eax)
	movl	44(%esp), %ecx
	movl	%ecx, 24(%eax)
	movl	48(%esp), %ecx
	movl	%ecx, 28(%eax)
	movl	52(%esp), %ecx
	movl	%ecx, 32(%eax)
	addl	$1, 23388(%edx)
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1089:
	.cfi_restore_state
	leal	1(%ebx), %eax
	testl	%ebx, %ebx
	jne	L1059
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, %esi
L1060:
	leal	(%esi,%esi,8), %eax
	addl	$1, 188(%edx)
	sall	$2, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 16(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	16(%esp), %edx
	movl	%eax, %ecx
	movl	23396(%edx), %eax
	testl	%eax, %eax
	je	L1062
	leal	(%ebx,%ebx,8), %ebx
	movl	%ecx, (%esp)
	sall	$2, %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	23396(%edx), %eax
	testl	%eax, %eax
	je	L1063
	subl	$1, 188(%edx)
L1063:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 16(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	movl	23388(%edx), %ebx
L1062:
	movl	%ecx, 23396(%edx)
	movl	%esi, 23392(%edx)
	jmp	L1061
	.p2align 4,,10
	.p2align 3
L1087:
	testb	%al, %al
	je	L1045
	cmpl	$0, 120(%ebx)
	setne	%al
	jmp	L1048
	.p2align 4,,10
	.p2align 3
L1059:
	movl	%ebx, %ecx
	shrl	$31, %ecx
	addl	%ebx, %ecx
	sarl	%ecx
	addl	%ebx, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, %esi
	cmpl	%eax, %ebx
	jge	L1058
	jmp	L1060
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0:
LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	(%eax,%edx,4), %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	120(%edi), %ebx
	movl	_GImGui, %ebp
	testl	%ebx, %ebx
	je	L1101
L1091:
	movl	16048(%ebp), %eax
	cmpl	%eax, 112(%edi)
	je	L1090
	movl	%ebx, %ecx
	call	__ZN10ImDrawList17_ResetForNewFrameEv
	movl	72(%ebp), %eax
	movl	%ebx, %ecx
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13PushTextureIDEPv
	.cfi_def_cfa_offset 28
	movss	12(%esi), %xmm1
	movss	8(%esi), %xmm0
	movl	%ebx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$0, 4(%esp)
	movss	20(%esi), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%esp)
	movss	16(%esi), %xmm2
	addss	%xmm0, %xmm2
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	.cfi_def_cfa_offset 24
	movl	16048(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 112(%edi)
L1090:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
L1101:
	.cfi_restore_state
	testl	%ebp, %ebp
	je	L1092
	addl	$1, 188(%ebp)
L1092:
	movl	$0, 4(%esp)
	movl	$144, (%esp)
	movl	%ecx, 8(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	$0, 128(%eax)
	movl	%eax, %ebx
	movl	$0, 132(%eax)
	movl	$0, 136(%eax)
	movl	$0, 140(%eax)
	movl	8(%esp), %ecx
	xorl	%eax, %eax
L1093:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L1093
	leal	15524(%ebp), %eax
	movl	%ecx, 48(%ebx)
	movl	%eax, 44(%ebx)
	movl	%ebx, 120(%edi)
	jmp	L1091
	.cfi_endproc
LFE146:
	.p2align 4
	.globl	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
	.def	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0:
LFB147:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1102
	cmpl	$1, %eax
	jne	L1104
	movl	8(%edx), %eax
	movl	28(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1104
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	L1102
L1104:
	movl	%edx, %ecx
	movl	%ebx, %edx
	movl	%esi, 28(%esp)
	movl	(%ebx), %ebx
	cmpl	4(%edx), %ebx
	.cfi_offset 6, -16
	je	L1119
L1105:
	movl	8(%edx), %esi
L1108:
	movl	%ecx, (%esi,%ebx,4)
	addl	$1, (%edx)
	movl	28(%esp), %esi
	.cfi_restore 6
L1102:
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1119:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%edi, 32(%esp)
	leal	1(%ebx), %esi
	testl	%ebx, %ebx
	.cfi_offset 7, -12
	jne	L1106
	movl	$8, %eax
	movl	%ebp, 36(%esp)
	cmpl	%eax, %esi
	cmovge	%esi, %eax
	movl	%eax, %edi
	.cfi_offset 5, -8
L1107:
	movl	_GImGui, %esi
	movl	%ecx, 16(%esp)
	leal	0(,%edi,4), %eax
	movl	%edx, 12(%esp)
	movl	%esi, 20(%esp)
	testl	%esi, %esi
	je	L1109
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%eax, %esi
	movl	8(%edx), %eax
	movl	(%edx), %ebx
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L1111
	sall	$2, %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	20(%esp), %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	subl	$1, 188(%eax)
L1112:
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	(%edx), %ebx
L1111:
	movl	%esi, 8(%edx)
	movl	%edi, 4(%edx)
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L1108
	.p2align 4,,10
	.p2align 3
L1106:
	.cfi_offset 7, -12
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	addl	%ebx, %eax
	cmpl	%esi, %eax
	cmovge	%eax, %esi
	movl	%esi, %edi
	cmpl	%esi, %ebx
	jl	L1118
	movl	32(%esp), %edi
	.cfi_restore 7
	jmp	L1105
	.p2align 4,,10
	.p2align 3
L1109:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	movl	%eax, %esi
	movl	8(%edx), %eax
	testl	%eax, %eax
	movl	%eax, %ebp
	je	L1111
	sall	$2, %ebx
	movl	%ebp, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	jmp	L1112
	.p2align 4,,10
	.p2align 3
L1118:
	.cfi_restore 5
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	jmp	L1107
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
	.def	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0:
LFB149:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	_GImGui, %eax
	movl	48(%esi), %ebx
	addl	$1, 180(%eax)
	movl	676(%esi), %edx
	testb	$32, 15(%esi)
	jne	L1129
L1122:
	movl	%edi, %eax
	negl	%eax
	andl	$12, %eax
	leal	176(%ebx,%eax), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
	movl	440(%esi), %eax
	testl	%eax, %eax
	jle	L1120
	xorl	%ebx, %ebx
L1126:
	movl	448(%esi), %eax
	movl	(%eax,%ebx,4), %eax
	cmpb	$0, 223(%eax)
	je	L1125
	cmpb	$0, 230(%eax)
	jne	L1125
	movl	%edi, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
L1125:
	addl	$1, %ebx
	cmpl	%ebx, 440(%esi)
	jg	L1126
L1120:
	addl	$4, %esp
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
L1129:
	.cfi_restore_state
	cmpl	$1, 124(%edx)
	jle	L1122
	movl	%edx, (%esp)
	leal	120(%edx), %ecx
	call	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0
	.cfi_def_cfa_offset 16
	movl	676(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	jmp	L1122
	.cfi_endproc
LFE149:
	.p2align 4
	.globl	__ZN5ImGui12PushClipRectERK6ImVec2S2_b
	.def	__ZN5ImGui12PushClipRectERK6ImVec2S2_b;	.scl	2;	.type	32;	.endef
__ZN5ImGui12PushClipRectERK6ImVec2S2_b:
LFB151:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%eax, %esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %eax
	movl	16148(%eax), %ebx
	movb	$1, 225(%ebx)
	movl	16148(%eax), %ebx
	movzbl	%cl, %eax
	movss	(%esi), %xmm0
	movl	676(%ebx), %edi
	movl	%eax, 4(%esp)
	movss	4(%edx), %xmm1
	movl	%edi, %ecx
	movss	%xmm1, (%esp)
	movss	(%edx), %xmm2
	movss	4(%esi), %xmm1
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	movl	676(%ebx), %edx
	subl	$8, %esp
	movl	60(%edx), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	addl	68(%edx), %eax
	movups	(%eax), %xmm0
	movups	%xmm0, 584(%ebx)
	leal	-12(%ebp), %esp
	popl	%ebx
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
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	__ZN5ImGui11PopClipRectEv
	.def	__ZN5ImGui11PopClipRectEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui11PopClipRectEv:
LFB152:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_GImGui, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	movl	16148(%eax), %edx
	andl	$-16, %esp
	.cfi_offset 3, -12
	movb	$1, 225(%edx)
	movl	16148(%eax), %ebx
	movl	676(%ebx), %ecx
	call	__ZN10ImDrawList11PopClipRectEv
	movl	676(%ebx), %edx
	movl	60(%edx), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	addl	68(%edx), %eax
	movups	(%eax), %xmm0
	movups	%xmm0, 584(%ebx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE152:
	.section .rdata,"dr"
LC74:
	.ascii "###NavWindowingList\0"
LC75:
	.ascii "*Missing Text*\0"
LC76:
	.ascii "(Dock node)\0"
	.align 4
LC77:
	.ascii "Calling io.SetPlatformImeDataFn(): WantVisible: %d, InputPos (%.2f,%.2f)\12\0"
LC80:
	.ascii "##MainMenuBar\0"
LC81:
	.ascii "...\0"
	.text
	.p2align 4
	.globl	__ZN5ImGui8EndFrameEv
	.def	__ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
__ZN5ImGui8EndFrameEv:
LFB153:
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
	subl	$68, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	movl	16048(%ebx), %eax
	cmpl	%eax, 16052(%ebx)
	je	L1134
	movl	23476(%ebx), %eax
	testl	%eax, %eax
	jle	L1272
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1138:
	movl	23484(%ebx), %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$2, 4(%eax)
	jne	L1137
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*12(%eax)
L1137:
	addl	$1, %esi
	cmpl	23476(%ebx), %esi
	jl	L1138
	movl	_GImGui, %esi
L1136:
	cmpl	$1, 16112(%esi)
	jg	L1140
L1139:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1141
	leal	23336(%ebx), %eax
	movl	%eax, -44(%ebp)
	movl	23352(%ebx), %eax
	cmpl	%eax, 23336(%ebx)
	je	L1398
L1142:
	movl	_GImGui, %esi
	movl	18608(%esi), %edx
	testl	%edx, %edx
	jle	L1144
	movl	18616(%esi), %edi
	movl	23368(%ebx), %ecx
	movl	%esi, -48(%ebp)
	xorl	%eax, %eax
	movl	%edi, %esi
	jmp	L1146
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1400:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	L1399
L1146:
	movl	(%esi,%eax,4), %edi
	cmpl	(%edi), %ecx
	jne	L1400
	testb	$32, 23576(%ebx)
	jne	L1269
L1149:
	movl	64(%edi), %eax
	testl	%eax, %eax
	je	L1401
L1150:
	movl	-44(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*152(%ebx)
L1141:
	movl	16148(%ebx), %eax
	movb	$0, 16065(%ebx)
	testl	%eax, %eax
	je	L1151
	cmpb	$0, 225(%eax)
	jne	L1151
	movb	$0, 223(%eax)
L1151:
	call	__ZN5ImGui3EndEv
	movl	_GImGui, %esi
	movl	19020(%esi), %eax
	movl	%esi, -44(%ebp)
	testl	%eax, %eax
	je	L1393
	movss	LC78, %xmm0
	comiss	19032(%esi), %xmm0
	ja	L1393
	movl	19028(%esi), %edi
	testl	%edi, %edi
	je	L1402
L1155:
	movl	18616(%esi), %eax
	movl	18372(%esi), %edx
	movss	LC79, %xmm0
	movl	(%eax), %eax
	movl	%edx, %ecx
	orl	$17, %edx
	orl	$16, %ecx
	movss	20(%eax), %xmm1
	mulss	%xmm0, %xmm1
	mulss	16(%eax), %xmm0
	movl	%ecx, 18372(%esi)
	movl	$0, 18452(%esi)
	movl	$0, 18456(%esi)
	movss	%xmm1, 18440(%esi)
	movss	%xmm0, 18436(%esi)
	movss	LC64, %xmm0
	movss	%xmm0, 18444(%esi)
	movss	%xmm0, 18448(%esi)
	movss	20(%eax), %xmm1
	movss	LC23, %xmm0
	movss	16(%eax), %xmm2
	mulss	%xmm0, %xmm1
	addss	12(%eax), %xmm1
	mulss	%xmm0, %xmm2
	addss	8(%eax), %xmm2
	movl	%edx, 18372(%esi)
	leal	-40(%ebp), %edx
	movl	$2, %eax
	movss	%xmm0, 18400(%esi)
	movss	%xmm1, 18396(%esi)
	movss	14412(%esi), %xmm1
	movss	%xmm0, 18404(%esi)
	movss	14416(%esi), %xmm0
	movl	$1, 18376(%esi)
	addss	%xmm1, %xmm1
	movb	$1, 18432(%esi)
	addss	%xmm0, %xmm0
	movss	%xmm2, 18392(%esi)
	movss	%xmm1, -40(%ebp)
	movss	%xmm0, -36(%ebp)
	call	__ZN5ImGui12PushStyleVarEiRK6ImVec2
	movl	$791367, %edx
	movl	$LC74, %eax
	call	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0
	movl	16088(%esi), %edi
	subl	$1, %edi
	js	L1160
	movl	%ebx, -48(%ebp)
	jmp	L1170
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1161:
	subl	$1, %edi
	jb	L1403
L1170:
	movl	16096(%esi), %eax
	movl	(%eax,%edi,4), %edx
	cmpb	$0, 224(%edx)
	je	L1161
	cmpl	832(%edx), %edx
	jne	L1161
	movl	12(%edx), %ecx
	testl	$524288, %ecx
	jne	L1161
	movl	4(%edx), %ebx
	movl	%ebx, %eax
	cmpl	$-1, %ebx
	je	L1163
	movl	%ecx, -52(%ebp)
	jmp	L1162
	.p2align 4,,10
	.p2align 3
L1166:
	addl	$1, %eax
	cmpl	$-1, %eax
	je	L1164
L1162:
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	je	L1165
	cmpb	$35, %cl
	jne	L1166
	cmpb	$35, 1(%eax)
	jne	L1166
L1165:
	movl	-52(%ebp), %ecx
	cmpl	%eax, %ebx
	je	L1163
L1164:
	leal	-40(%ebp), %eax
	movl	$0x00000000, -40(%ebp)
	movl	$0x00000000, -36(%ebp)
	cmpl	%edx, 19020(%esi)
	movl	%eax, (%esp)
	sete	%dl
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movzbl	%dl, %edx
	call	__ZN5ImGui10SelectableEPKcbiRK6ImVec2
	subl	$1, %edi
	jnb	L1170
	.p2align 4
	.p2align 3
L1403:
	movl	-48(%ebp), %ebx
L1160:
	call	__ZN5ImGui3EndEv
	call	__ZN5ImGui11PopStyleVarEi.constprop.0
	movl	_GImGui, %esi
L1393:
	movl	-44(%ebp), %eax
	movl	%esi, %edi
	movl	18680(%eax), %edx
	testl	%edx, %edx
	je	L1172
	cmpb	$0, 18765(%esi)
	je	L1172
	movl	18840(%esi), %ecx
	testl	%ecx, %ecx
	je	L1404
	.p2align 4
	.p2align 3
L1172:
	movl	23376(%ebx), %eax
	testl	%eax, %eax
	jle	L1178
	xorl	%esi, %esi
	jmp	L1182
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1180:
	addl	$1, %esi
	cmpl	23376(%ebx), %esi
	jge	L1178
L1182:
	movl	23384(%ebx), %eax
	movl	4(%eax,%esi,8), %edx
	testl	%edx, %edx
	je	L1180
	movl	16048(%ebx), %eax
	cmpl	%eax, 136(%edx)
	jne	L1180
	movzbl	160(%edx), %eax
	testb	$1, %al
	je	L1180
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	je	L1180
	cmpl	$0, 28(%edx)
	jne	L1180
	testb	$4, %al
	jne	L1180
	movss	14468(%edi), %xmm0
	movss	15516(%edi), %xmm1
	movl	%edx, -48(%ebp)
	movss	60(%edx), %xmm2
	addss	%xmm0, %xmm0
	addss	%xmm0, %xmm1
	movss	64(%edx), %xmm0
	unpcklps	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm0
	movups	52(%edx), %xmm1
	movlhps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm1
	addps	%xmm1, %xmm0
	movups	%xmm0, -40(%ebp)
	movss	72(%ecx), %xmm4
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm2
	movss	80(%ecx), %xmm6
	movss	68(%ecx), %xmm3
	movaps	%xmm0, %xmm1
	unpckhps	%xmm0, %xmm2
	shufps	$85, %xmm0, %xmm1
	shufps	$255, %xmm0, %xmm0
	addss	%xmm4, %xmm6
	movss	%xmm6, 16(%esp)
	movss	76(%ecx), %xmm6
	movl	%ecx, -44(%ebp)
	addss	%xmm3, %xmm6
	movss	%xmm4, 8(%esp)
	movss	%xmm3, 4(%esp)
	movss	%xmm0, (%esp)
	movaps	%xmm5, %xmm0
	movss	%xmm6, 12(%esp)
	call	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0
	movl	-44(%ebp), %ecx
	movl	%eax, %edi
	movl	676(%ecx), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	movl	-48(%ebp), %edx
	subl	$8, %esp
	movl	112(%edx), %eax
	movss	124(%eax), %xmm0
	movl	676(%eax), %ecx
	movl	%edi, 12(%esp)
	movl	108(%edx), %eax
	leal	-32(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movl	_GImGui, %edi
	subl	$16, %esp
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1140:
	call	__ZN5ImGui3EndEv
	cmpl	$1, 16112(%esi)
	jle	L1139
	call	__ZN5ImGui3EndEv
	cmpl	$1, 16112(%esi)
	jg	L1140
	jmp	L1139
	.p2align 4,,10
	.p2align 3
L1412:
	movl	-44(%ebp), %ebx
L1225:
	movl	18616(%edi), %eax
	xorl	%esi, %esi
	movl	(%eax), %eax
	movw	%si, 69(%eax)
	movb	$0, 71(%eax)
	movl	16104(%ebx), %eax
	testl	%eax, %eax
	js	L1405
L1239:
	movl	$0, 16100(%ebx)
	movl	16076(%ebx), %esi
	cmpl	%eax, %esi
	jg	L1406
L1243:
	movl	16084(%ebx), %eax
	testl	%esi, %esi
	je	L1248
	leal	16100(%ebx), %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1251:
	movl	(%eax,%esi,4), %edx
	cmpb	$0, 223(%edx)
	je	L1249
	testb	$1, 15(%edx)
	jne	L1250
L1249:
	movl	%edi, %eax
	call	__ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_
	movl	16084(%ebx), %eax
L1250:
	addl	$1, %esi
	cmpl	%esi, 16076(%ebx)
	jne	L1251
L1248:
	movl	16080(%ebx), %edx
	movlps	16100(%ebx), %xmm0
	movl	%esi, 16100(%ebx)
	movl	%edx, 16104(%ebx)
	movl	16108(%ebx), %edx
	movl	%eax, 16108(%ebx)
	movl	16136(%ebx), %eax
	movl	%edx, 16084(%ebx)
	movl	%eax, 184(%ebx)
	movl	72(%ebx), %eax
	movlps	%xmm0, 16076(%ebx)
	movb	$0, 16(%eax)
	movl	14252(%ebx), %ecx
	movb	$0, 14240(%ebx)
	movl	$0x00000000, 3548(%ebx)
	movl	$0x00000000, 3544(%ebx)
	testl	%ecx, %ecx
	js	L1407
L1252:
	movl	$0, 14248(%ebx)
	movl	23476(%ebx), %edx
	testl	%edx, %edx
	jle	L1134
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1257:
	movl	23484(%ebx), %edx
	leal	(%esi,%esi,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$3, 4(%eax)
	jne	L1256
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*12(%eax)
L1256:
	addl	$1, %esi
	cmpl	23476(%ebx), %esi
	jl	L1257
L1134:
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
L1178:
	.cfi_restore_state
	movl	18624(%edi), %eax
	testl	%eax, %eax
	je	L1183
	movl	$0x3f800000, 18620(%edi)
	movl	$0, 18624(%edi)
L1183:
	movl	16048(%ebx), %esi
	cmpb	$0, 19068(%ebx)
	je	L1184
	movl	19100(%ebx), %eax
	addl	$1, %eax
	cmpl	%esi, %eax
	jge	L1185
	testb	$32, 19072(%ebx)
	jne	L1186
	movl	19080(%ebx), %eax
	cmpb	$0, 3536(%edi,%eax)
	je	L1186
	addl	$641, %eax
	xorl	%edx, %edx
	call	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj
	testb	%al, %al
	je	L1186
	.p2align 4
	.p2align 3
L1185:
	cmpb	$0, 19138(%ebx)
	je	L1187
L1186:
	call	__ZN5ImGui13ClearDragDropEv
	movl	16048(%ebx), %esi
	cmpb	$0, 19068(%ebx)
	je	L1394
L1187:
	cmpl	%esi, 19076(%ebx)
	jge	L1394
	testb	$1, 19072(%ebx)
	jne	L1394
	movb	$1, 19069(%ebx)
	movl	$LC81, (%esp)
	call	__ZN5ImGui10SetTooltipEPKcz.constprop.0
	movb	$0, 19069(%ebx)
	movl	16048(%ebx), %esi
	.p2align 4
	.p2align 3
L1394:
	movl	_GImGui, %edi
L1184:
	movb	$0, 16064(%ebx)
	movl	%esi, 16052(%ebx)
	movl	16224(%edi), %eax
	testl	%eax, %eax
	jne	L1191
	movl	16204(%edi), %eax
	testl	%eax, %eax
	jne	L1191
	movl	18680(%edi), %eax
	testl	%eax, %eax
	je	L1193
	cmpb	$0, 229(%eax)
	jne	L1191
	cmpb	$0, 14088(%edi)
	je	L1194
	movl	16152(%edi), %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L1196
	movl	-44(%ebp), %eax
	movl	832(%eax), %esi
	testl	%esi, %esi
	je	L1196
L1265:
	testb	$4, 15(%esi)
	je	L1198
	movl	18580(%edi), %ecx
	testl	%ecx, %ecx
	jle	L1194
	movl	248(%esi), %eax
	movl	%esi, -52(%ebp)
	xorl	%edx, %edx
	movl	%eax, -48(%ebp)
	movl	18588(%edi), %eax
	movl	-48(%ebp), %esi
	jmp	L1201
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1408:
	addl	$1, %edx
	addl	$40, %eax
	cmpl	%ecx, %edx
	je	L1194
L1201:
	cmpl	(%eax), %esi
	jne	L1408
	movl	-52(%ebp), %esi
L1198:
	movl	-44(%ebp), %eax
	call	__ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow
	cmpb	$0, 111(%edi)
	je	L1202
	testb	$1, 12(%esi)
	jne	L1203
	movl	(%esi), %eax
	movl	824(%esi), %edx
	movss	72(%esi), %xmm2
	movss	15520(%eax), %xmm1
	mulss	664(%esi), %xmm1
	mulss	668(%esi), %xmm1
	testl	%edx, %edx
	je	L1205
	mulss	664(%edx), %xmm1
L1205:
	movss	14468(%eax), %xmm0
	addss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
L1206:
	movss	68(%esi), %xmm1
	movss	14008(%edi), %xmm3
	comiss	%xmm1, %xmm3
	jb	L1207
	movss	14012(%edi), %xmm4
	comiss	%xmm2, %xmm4
	jb	L1207
	addss	84(%esi), %xmm1
	comiss	%xmm3, %xmm1
	jbe	L1207
	addss	%xmm2, %xmm0
	comiss	%xmm4, %xmm0
	ja	L1202
L1207:
	movl	$0, 16160(%edi)
L1202:
	cmpb	$0, 16213(%edi)
	je	L1395
	movl	$0, 16160(%edi)
	movl	_GImGui, %ecx
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1193:
	cmpb	$0, 14088(%edi)
	jne	L1409
L1194:
	movl	%edi, %ecx
L1200:
	cmpb	$0, 14089(%edi)
	je	L1279
	movl	18580(%ecx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	js	L1216
	movl	16152(%edi), %edi
	movl	%edi, -44(%ebp)
L1267:
	movl	18588(%ecx), %ecx
	leal	(%eax,%eax,4), %eax
	leal	-36(%ecx,%eax,8), %eax
	.p2align 4
	.p2align 3
L1219:
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1217
	testb	$8, 15(%esi)
	jne	L1218
L1217:
	subl	$1, %edx
	subl	$40, %eax
	cmpl	$-1, %edx
	jne	L1219
	movl	-44(%ebp), %eax
L1221:
	movl	$1, %edx
	call	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb
	movl	_GImGui, %edi
	.p2align 4
	.p2align 3
L1191:
	movl	14372(%edi), %eax
	testl	%eax, %eax
	js	L1410
L1222:
	movl	$0, 14368(%edi)
	movl	18608(%edi), %eax
	testl	%eax, %eax
	jle	L1225
	movl	%ebx, -44(%ebp)
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	jmp	L1238
	.p2align 4,,10
	.p2align 3
L1413:
	comiss	16(%ebx), %xmm0
	jnb	L1226
	comiss	20(%ebx), %xmm0
	jnb	L1226
L1227:
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	L1230
	cmpb	$0, 223(%eax)
	je	L1229
	cmpb	$0, 230(%eax)
	jne	L1229
L1230:
	movl	14368(%edi), %edx
	cmpl	14372(%edi), %edx
	je	L1411
L1231:
	movl	14376(%edi), %ecx
L1234:
	movl	%ebx, (%ecx,%edx,4)
	addl	$1, 14368(%edi)
L1229:
	addl	$1, %esi
	cmpl	18608(%edi), %esi
	jge	L1412
L1238:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	movl	8(%ebx), %eax
	movl	12(%ebx), %edx
	movl	%eax, 88(%ebx)
	movl	%edx, 92(%ebx)
	movl	16048(%edi), %eax
	cmpl	%eax, 76(%ebx)
	jge	L1413
L1226:
	testl	%esi, %esi
	je	L1227
	jmp	L1229
	.p2align 4,,10
	.p2align 3
L1410:
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %esi
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1223
	movl	14368(%edi), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1224
	subl	$1, 188(%edi)
L1224:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1223:
	movl	%esi, 14376(%edi)
	movl	$0, 14372(%edi)
	jmp	L1222
	.p2align 4,,10
	.p2align 3
L1407:
	movl	_GImGui, %esi
	testl	%esi, %esi
	je	L1253
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1254
	movl	14248(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	(%ecx,%ecx), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1258
	subl	$1, 188(%esi)
L1258:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1254:
	movl	%edi, 14256(%ebx)
	movl	$0, 14252(%ebx)
	jmp	L1252
	.p2align 4,,10
	.p2align 3
L1405:
	movl	_GImGui, %esi
	testl	%esi, %esi
	je	L1240
	addl	$1, 188(%esi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1241
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1261
	subl	$1, 188(%esi)
L1261:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1241:
	movl	%edi, 16108(%ebx)
	xorl	%eax, %eax
	movl	$0, 16104(%ebx)
	jmp	L1239
	.p2align 4,,10
	.p2align 3
L1406:
	movl	_GImGui, %edx
	leal	0(,%esi,4), %eax
	testl	%edx, %edx
	je	L1244
	addl	$1, 188(%edx)
	movl	%edx, -44(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1396
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	sall	$2, %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1260
	movl	-44(%ebp), %edx
	subl	$1, 188(%edx)
L1260:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1396:
	movl	16076(%ebx), %eax
L1246:
	movl	%esi, 16104(%ebx)
	movl	%eax, %esi
	movl	%edi, 16108(%ebx)
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1411:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L1232
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -48(%ebp)
L1233:
	movl	-48(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$2, %eax
	testl	%ecx, %ecx
	je	L1235
	addl	$1, 188(%ecx)
	movl	%ecx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	14368(%edi), %edx
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1236
	sall	$2, %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -56(%ebp)
	call	_memcpy
	movl	14376(%edi), %eax
	movl	-56(%ebp), %ecx
	testl	%eax, %eax
	je	L1263
	movl	-52(%ebp), %edx
	subl	$1, 188(%edx)
L1263:
	movl	%ecx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	14368(%edi), %edx
	movl	-52(%ebp), %ecx
	xorps	%xmm0, %xmm0
L1236:
	movl	-48(%ebp), %eax
	movl	%ecx, 14376(%edi)
	movl	%eax, 14372(%edi)
	jmp	L1234
	.p2align 4,,10
	.p2align 3
L1232:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -48(%ebp)
	cmpl	%ecx, %edx
	jge	L1231
	jmp	L1233
	.p2align 4,,10
	.p2align 3
L1404:
	movl	18928(%esi), %edx
	testl	%edx, %edx
	jne	L1172
	movl	18768(%eax), %eax
	testb	$15, %al
	je	L1172
	testb	$-128, %al
	jne	L1172
	movl	18732(%esi), %eax
	movl	18780(%esi), %edx
	movl	18680(%esi), %ecx
	addl	$54, %eax
	movl	%edx, -44(%ebp)
	movl	18768(%esi), %edx
	sall	$4, %eax
	addl	%ecx, %eax
	movl	%edx, -48(%ebp)
	movss	4(%eax), %xmm2
	movss	12(%eax), %xmm3
	cmpl	$0, -44(%ebp)
	jne	L1174
	testb	$5, %dl
	je	L1172
	movss	92(%ecx), %xmm0
	addss	116(%ecx), %xmm0
	andl	$4, %edx
	movl	%edx, -44(%ebp)
	movaps	%xmm0, %xmm1
	je	L1175
	movaps	%xmm3, %xmm4
	movl	$2, -44(%ebp)
	subss	%xmm2, %xmm4
	subss	%xmm4, %xmm2
	subss	%xmm4, %xmm3
L1175:
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	xorl	%edx, %edx
	movl	%esi, %edi
	movlhps	%xmm1, %xmm0
	movups	%xmm0, (%eax)
	movzbl	18741(%esi), %eax
	movw	%dx, 18764(%esi)
	movb	%al, 18740(%esi)
	movl	-44(%ebp), %eax
	movb	$1, 18766(%esi)
	movl	%eax, 18788(%esi)
	movl	-48(%ebp), %eax
	orb	$-128, %al
	movl	%eax, 18768(%esi)
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1235:
	movl	%edx, -52(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-52(%ebp), %edx
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	movl	14376(%edi), %eax
	testl	%eax, %eax
	je	L1236
	sall	$2, %edx
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -52(%ebp)
	call	_memcpy
	movl	14376(%edi), %eax
	movl	-52(%ebp), %ecx
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1402:
	movl	$-1, %edx
	movl	$35, %eax
	movl	$LC74+1, %ecx
	jmp	L1159
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1158:
	movl	%edx, %edi
	movzbl	%dl, %edx
	shrl	$8, %edi
L1157:
	xorl	%edx, %eax
	addl	$1, %ecx
	xorl	__ZL17GCrc32LookupTable.lto_priv.0(,%eax,4), %edi
	movzbl	-1(%ecx), %eax
	movl	%edi, %edx
	cmpl	$LC74+20, %ecx
	je	L1414
L1159:
	cmpb	$35, %al
	jne	L1158
	cmpb	$35, (%ecx)
	jne	L1158
	cmpb	$35, 1(%ecx)
	jne	L1158
	movl	$255, %edx
	movl	$16777215, %edi
	jmp	L1157
	.p2align 4,,10
	.p2align 3
L1398:
	movl	-44(%ebp), %eax
	movl	23356(%ebx), %ecx
	cmpl	%ecx, 4(%eax)
	jne	L1142
	movl	23360(%ebx), %ecx
	cmpl	%ecx, 8(%eax)
	jne	L1142
	movl	23364(%ebx), %ecx
	cmpl	%ecx, 12(%eax)
	jne	L1142
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1399:
	movl	-48(%ebp), %esi
	testb	$32, 23576(%ebx)
	jne	L1270
L1148:
	movl	18616(%esi), %eax
	movl	(%eax), %edi
	jmp	L1149
	.p2align 4,,10
	.p2align 3
L1279:
	movl	%ecx, %edi
	movl	14372(%edi), %eax
	testl	%eax, %eax
	jns	L1222
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1240:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	je	L1241
	movl	16100(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	16108(%ebx), %eax
	jmp	L1261
	.p2align 4,,10
	.p2align 3
L1253:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	14256(%ebx), %eax
	testl	%eax, %eax
	je	L1254
	movl	14248(%ebx), %ecx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	(%ecx,%ecx), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	14256(%ebx), %eax
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1244:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, %edi
	movl	16108(%ebx), %eax
	testl	%eax, %eax
	jne	L1260
	movl	%esi, %eax
	jmp	L1246
L1144:
	testb	$32, 23576(%ebx)
	je	L1148
L1270:
	xorl	%edi, %edi
L1269:
	flds	23344(%ebx)
	fstpl	16(%esp)
	flds	23340(%ebx)
	fstpl	8(%esp)
	movzbl	23336(%ebx), %eax
	movl	$LC77, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN5ImGui8DebugLogEPKcz
	testl	%edi, %edi
	jne	L1149
	movl	_GImGui, %esi
	jmp	L1148
	.p2align 4,,10
	.p2align 3
L1272:
	movl	%ebx, %esi
	jmp	L1136
	.p2align 4,,10
	.p2align 3
L1414:
	notl	%edx
	leal	16124(%esi), %ecx
	movl	%edx, (%esp)
	call	__ZNK12ImGuiStorage10GetVoidPtrEj
	subl	$4, %esp
	movl	%eax, 19028(%esi)
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1401:
	movl	156(%ebx), %eax
	testl	%eax, %eax
	je	L1150
	movl	%eax, 64(%edi)
	movl	-44(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*152(%ebx)
	movl	$0, 64(%edi)
	jmp	L1141
L1409:
	movl	16152(%edi), %eax
	movl	%eax, -44(%ebp)
	testl	%eax, %eax
	je	L1194
	movl	-44(%ebp), %eax
	movl	832(%eax), %esi
	testl	%esi, %esi
	jne	L1265
	jmp	L1194
	.p2align 4,,10
	.p2align 3
L1163:
	testl	$67108864, %ecx
	je	L1168
	movl	_GImGui, %eax
	movl	23512(%eax), %ebx
	movl	$LC75, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1164
L1196:
	movl	18580(%edi), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	js	L1212
	movl	18588(%edi), %edx
	leal	(%eax,%eax,4), %esi
	leal	-36(%edx,%esi,8), %edx
	.p2align 4
	.p2align 3
L1215:
	movl	(%edx), %esi
	testl	%esi, %esi
	je	L1213
	testb	$8, 15(%esi)
	jne	L1214
L1213:
	subl	$1, %ecx
	subl	$40, %edx
	cmpl	$-1, %ecx
	jne	L1215
L1212:
	xorl	%eax, %eax
	call	__ZN5ImGui11FocusWindowEP11ImGuiWindow
L1395:
	movl	_GImGui, %ecx
	jmp	L1200
L1218:
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	L1415
	movl	-44(%ebp), %eax
	movl	%esi, %edx
	call	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_
	testb	%al, %al
	movl	-44(%ebp), %eax
	cmove	%esi, %eax
	jmp	L1221
L1168:
	andb	$4, %ch
	je	L1169
	movl	%edx, -52(%ebp)
	movl	$LC80, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcmp
	movl	-52(%ebp), %edx
	testl	%eax, %eax
	jne	L1169
	movl	_GImGui, %eax
	movl	23508(%eax), %ebx
	movl	$LC75, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1164
L1174:
	cmpl	$1, -44(%ebp)
	je	L1416
	movss	(%eax), %xmm0
	movss	8(%eax), %xmm1
	cmpl	$2, -44(%ebp)
	je	L1417
	cmpl	$3, -44(%ebp)
	jne	L1172
	movl	-48(%ebp), %edx
	testb	$10, %dl
	je	L1172
	movss	120(%ecx), %xmm2
	xorps	LC22, %xmm2
	andl	$8, %edx
	movaps	%xmm2, %xmm3
	je	L1175
	movaps	%xmm1, %xmm4
	movl	$1, -44(%ebp)
	subss	%xmm0, %xmm4
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm1
	jmp	L1175
L1169:
	movl	940(%edx), %ecx
	movl	$LC76, %ebx
	testl	%ecx, %ecx
	jne	L1164
	movl	_GImGui, %eax
	movl	23516(%eax), %ebx
	movl	$LC75, %eax
	testl	%ebx, %ebx
	cmove	%eax, %ebx
	jmp	L1164
L1415:
	movl	%esi, %eax
	jmp	L1221
L1214:
	cmpb	$0, 14089(%edi)
	je	L1191
	leal	-1(%eax), %edx
	movl	%edi, %ecx
	jmp	L1267
L1417:
	movl	-48(%ebp), %edx
	testb	$10, %dl
	je	L1172
	movss	96(%ecx), %xmm2
	addss	120(%ecx), %xmm2
	andl	$8, %edx
	movaps	%xmm2, %xmm3
	je	L1175
	movaps	%xmm1, %xmm4
	movl	$0, -44(%ebp)
	subss	%xmm0, %xmm4
	subss	%xmm4, %xmm0
	subss	%xmm4, %xmm1
	jmp	L1175
L1203:
	testb	$1, 909(%esi)
	je	L1202
	movss	72(%esi), %xmm2
	xorps	%xmm0, %xmm0
	jmp	L1206
L1416:
	movl	-48(%ebp), %edx
	testb	$5, %dl
	je	L1172
	movss	116(%ecx), %xmm0
	xorps	LC22, %xmm0
	andl	$4, %edx
	movaps	%xmm0, %xmm1
	je	L1175
	movaps	%xmm3, %xmm1
	movl	$3, -44(%ebp)
	subss	%xmm2, %xmm1
	addss	%xmm1, %xmm2
	addss	%xmm1, %xmm3
	movaps	%xmm0, %xmm1
	jmp	L1175
L1216:
	movl	16152(%edi), %eax
	jmp	L1221
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	.def	__ZN5ImGui12CalcTextSizeEPKcS1_bf;	.scl	2;	.type	32;	.endef
__ZN5ImGui12CalcTextSizeEPKcS1_bf:
LFB184:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movaps	%xmm0, %xmm2
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	testb	%cl, %cl
	movl	_GImGui, %ecx
	je	L1419
	testl	%edx, %edx
	je	L1441
	cmpl	%edx, %eax
	jnb	L1425
L1423:
	movl	%esi, %eax
	jmp	L1422
	.p2align 4,,10
	.p2align 3
L1427:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jnb	L1426
L1422:
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L1426
	cmpb	$35, %dl
	jne	L1427
	cmpb	$35, 1(%eax)
	jne	L1427
	.p2align 4
	.p2align 3
L1426:
	movl	%eax, %ebx
L1419:
	movss	15516(%ecx), %xmm0
	cmpl	%esi, %ebx
	je	L1424
	movss	LC64, %xmm1
	movl	15512(%ecx), %ecx
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 8(%esp)
	call	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 12(%esp)
	movss	12(%esp), %xmm0
	addss	LC82, %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	addl	$16, %esp
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
L1441:
	.cfi_restore_state
	movl	$-1, %ebx
	cmpl	$-1, %eax
	jne	L1423
L1425:
	movss	15516(%ecx), %xmm0
L1424:
	movss	%xmm0, 12(%esp)
	movl	12(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE184:
	.p2align 4
	.globl	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
	.def	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect;	.scl	2;	.type	32;	.endef
__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%ecx, %esi
	pushl	%ebx
	subl	$84, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %ebx
	movl	8(%edi), %ecx
	movl	%eax, -68(%ebp)
	movl	%edx, %eax
	movl	12(%edi), %edx
	movss	(%eax), %xmm3
	movss	(%ecx), %xmm5
	movl	%ebx, -64(%ebp)
	movss	4(%ecx), %xmm7
	movl	4(%edi), %ebx
	movl	16(%edi), %edi
	movaps	%xmm3, %xmm0
	movss	4(%eax), %xmm4
	addss	%xmm5, %xmm0
	movss	4(%edx), %xmm6
	movss	(%edx), %xmm2
	movss	%xmm7, -60(%ebp)
	testl	%edi, %edi
	je	L1480
	movss	8(%edi), %xmm1
	movl	%edi, %eax
	leal	8(%edi), %ecx
	movl	$1, %edx
	comiss	%xmm1, %xmm0
	jb	L1481
	movss	(%edi), %xmm0
	comiss	%xmm3, %xmm0
	jbe	L1482
L1447:
	xorps	%xmm7, %xmm7
	comiss	%xmm7, %xmm2
	jbe	L1476
	movss	(%esi), %xmm0
	movl	$1, %edx
L1451:
	subss	%xmm3, %xmm0
	subss	%xmm5, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	movaps	%xmm0, %xmm2
	cmpnless	%xmm3, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	orps	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
L1456:
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm6
	jbe	L1460
	movss	4(%esi), %xmm0
	subss	%xmm4, %xmm0
	subss	-60(%ebp), %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	cmpnless	%xmm4, %xmm2
	andps	%xmm2, %xmm0
	andnps	%xmm4, %xmm2
	orps	%xmm0, %xmm2
	movaps	%xmm2, %xmm4
L1460:
	testb	%dl, %dl
	jne	L1455
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	14624(%eax), %edx
	movss	14404(%eax), %xmm0
	mulss	14636(%eax), %xmm0
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	%xmm3, -40(%ebp)
	movss	%xmm4, -36(%ebp)
	movl	$0, 20(%esp)
L1479:
	movl	%ebx, 16(%esp)
	movl	-64(%ebp), %ebx
	xorps	%xmm1, %xmm1
	movl	%esi, 4(%esp)
	movaps	%xmm1, %xmm0
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	movl	-68(%ebp), %ecx
	call	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4
	subl	$24, %esp
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
L1482:
	.cfi_restore_state
	movss	4(%edi), %xmm7
	comiss	%xmm4, %xmm7
	ja	L1447
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jbe	L1456
L1485:
	movss	(%esi), %xmm0
	jmp	L1451
	.p2align 4,,10
	.p2align 3
L1481:
	movss	-60(%ebp), %xmm0
	addss	%xmm4, %xmm0
	comiss	12(%edi), %xmm0
	movss	(%edi), %xmm0
	setnb	%dl
	comiss	%xmm3, %xmm0
	ja	L1447
	jmp	L1482
	.p2align 4,,10
	.p2align 3
L1476:
	xorps	%xmm7, %xmm7
	movss	4(%edi), %xmm2
	comiss	%xmm7, %xmm6
	jbe	L1452
	movss	4(%esi), %xmm5
	subss	%xmm4, %xmm5
	subss	-60(%ebp), %xmm5
	mulss	%xmm6, %xmm5
	addss	%xmm4, %xmm5
	movaps	%xmm5, %xmm6
	cmpless	%xmm4, %xmm6
	andps	%xmm6, %xmm4
	andnps	%xmm5, %xmm6
	orps	%xmm6, %xmm4
L1452:
	movl	_GImGui, %eax
	movss	4(%ecx), %xmm5
	unpcklps	%xmm2, %xmm0
	leal	-40(%ebp), %esi
	movl	14624(%eax), %edx
	unpcklps	%xmm5, %xmm1
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -56(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %edx
	movl	%esi, %eax
	movl	%edx, -32(%ebp)
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	leal	-56(%ebp), %edx
	movss	%xmm3, -40(%ebp)
	movss	%xmm4, -36(%ebp)
	movl	%edx, 20(%esp)
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1480:
	movss	(%esi), %xmm1
	comiss	%xmm1, %xmm0
	jb	L1483
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jbe	L1484
	movaps	%xmm1, %xmm0
	movl	%esi, %ecx
	movl	$1, %edx
	jmp	L1451
	.p2align 4,,10
	.p2align 3
L1484:
	comiss	%xmm0, %xmm6
	jbe	L1477
	movss	4(%esi), %xmm0
	movl	%esi, %ecx
	subss	%xmm4, %xmm0
	subss	-60(%ebp), %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movaps	%xmm0, %xmm2
	cmpless	%xmm4, %xmm2
	andps	%xmm2, %xmm4
	andnps	%xmm0, %xmm2
	orps	%xmm2, %xmm4
	.p2align 4
	.p2align 3
L1455:
	movss	4(%eax), %xmm2
	movss	(%eax), %xmm0
	jmp	L1452
	.p2align 4,,10
	.p2align 3
L1483:
	addss	%xmm4, %xmm7
	comiss	4(%esi), %xmm7
	xorps	%xmm0, %xmm0
	movl	%esi, %ecx
	setnb	%dl
	comiss	%xmm0, %xmm2
	ja	L1485
	jmp	L1456
	.p2align 4,,10
	.p2align 3
L1477:
	movaps	%xmm3, %xmm0
	movaps	%xmm4, %xmm2
	movl	%esi, %ecx
	jmp	L1452
	.cfi_endproc
LFE185:
	.p2align 4
	.globl	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0
	.def	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0:
LFB187:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	48(%esp), %edx
	movl	%edx, 20(%esp)
	movl	52(%esp), %edx
	movl	%edx, 24(%esp)
	movl	56(%esp), %edx
	cmpl	$-1, %ecx
	je	L1486
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1491:
	addl	$1, %ebx
	cmpl	$-1, %ebx
	je	L1489
L1487:
	movzbl	(%ebx), %ecx
	testb	%cl, %cl
	je	L1490
	cmpb	$35, %cl
	jne	L1491
	cmpb	$35, 1(%ebx)
	jne	L1491
L1490:
	cmpl	%ebx, %esi
	je	L1504
L1489:
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	_GImGui, %ebp
	movl	%edi, %ecx
	movl	%eax, %edi
	movl	16148(%ebp), %eax
	movl	676(%eax), %eax
	movl	%edx, 16(%esp)
	movl	24(%esp), %edx
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 12(%esp)
	movl	20(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%edi, %edx
	call	__ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect
	cmpb	$0, 23524(%ebp)
	jne	L1506
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %ebp
	.cfi_restore 5
L1486:
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1504:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1506:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	%edi, %eax
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_
	.cfi_endproc
LFE187:
	.p2align 4
	.globl	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0
	.def	__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19ApplyWindowSettingsP11ImGuiWindowP19ImGuiWindowSettings.lto_priv.0:
LFB188:
	.cfi_startproc
	movl	_GImGui, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	18616(%ecx), %ecx
	movl	(%ecx), %ecx
	movl	12(%ecx), %ebx
	movl	8(%ecx), %ecx
	movl	%ebx, 60(%eax)
	movl	%ecx, 56(%eax)
	movl	16(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1508
	movss	60(%eax), %xmm2
	movss	56(%eax), %xmm1
L1509:
	movswl	6(%edx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm2
	movswl	4(%edx), %ecx
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm2, 72(%eax)
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 68(%eax)
	movswl	8(%edx), %ecx
	testw	%cx, %cx
	jle	L1510
	movswl	10(%edx), %ebx
	testw	%bx, %bx
	jle	L1510
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 84(%eax)
	xorps	%xmm0, %xmm0
	movl	84(%eax), %ecx
	cvtsi2ssl	%ebx, %xmm0
	movl	%ecx, 76(%eax)
	movss	%xmm0, 88(%eax)
	movl	88(%eax), %ebx
	movl	%ebx, 80(%eax)
L1510:
	movzbl	30(%edx), %ecx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movb	%cl, 226(%eax)
	movl	20(%edx), %ecx
	movl	%ecx, 944(%eax)
	movzwl	28(%edx), %edx
	movw	%dx, 910(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1508:
	.cfi_restore_state
	movl	%ecx, 52(%eax)
	movswl	14(%edx), %ecx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm2
	movswl	12(%edx), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm2, 60(%eax)
	movss	%xmm1, 56(%eax)
	jmp	L1509
	.cfi_endproc
LFE188:
	.p2align 4
	.globl	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	.def	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0;	.scl	2;	.type	32;	.endef
__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0:
LFB190:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	_GImGui, %edx
	testb	$16, 18372(%edx)
	je	L1513
	movss	18436(%edx), %xmm3
	xorps	%xmm4, %xmm4
	movss	18440(%edx), %xmm2
	comiss	%xmm4, %xmm3
	jb	L1514
	movss	18444(%edx), %xmm5
	comiss	%xmm4, %xmm5
	jb	L1514
	comiss	%xmm0, %xmm3
	ja	L1517
	minss	%xmm0, %xmm5
	movaps	%xmm5, %xmm3
	jmp	L1517
	.p2align 4,,10
	.p2align 3
L1514:
	movss	84(%eax), %xmm3
L1517:
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm2
	jb	L1520
	movss	18448(%edx), %xmm4
	comiss	%xmm0, %xmm4
	jnb	L1569
L1520:
	movss	88(%eax), %xmm2
L1523:
	movl	18452(%edx), %ecx
	testl	%ecx, %ecx
	je	L1526
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	18456(%edx), %ebx
	movl	72(%eax), %esi
	movl	%edx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	68(%eax), %ebx
	movl	%esi, 20(%esp)
	movl	88(%eax), %esi
	movl	%ebx, 16(%esp)
	movl	84(%eax), %ebx
	movl	%eax, 4(%esp)
	movl	%ebx, 24(%esp)
	leal	12(%esp), %ebx
	movl	%esi, 28(%esp)
	movl	%ebx, (%esp)
	movss	%xmm3, 32(%esp)
	movss	%xmm2, 36(%esp)
	call	*%ecx
	movss	32(%esp), %xmm3
	movss	36(%esp), %xmm2
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
L1526:
	cvttss2sil	%xmm3, %ecx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%ecx, %xmm0
	cvttss2sil	%xmm2, %ecx
	cvtsi2ssl	%ecx, %xmm1
L1513:
	movl	12(%eax), %ecx
	testl	$16777280, %ecx
	jne	L1527
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -12
	movl	940(%eax), %ebx
	testl	%ebx, %ebx
	je	L1529
	movl	116(%ebx), %ebx
	testl	%ebx, %ebx
	je	L1529
	movl	12(%ebx), %ecx
	movl	%ebx, %eax
L1529:
	movss	14432(%edx), %xmm3
	movl	(%eax), %ebx
	xorps	%xmm5, %xmm5
	movaps	%xmm3, %xmm2
	cmpnless	%xmm1, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm1, %xmm2
	orps	%xmm3, %xmm2
	movss	14428(%edx), %xmm3
	movaps	%xmm3, %xmm1
	cmpnless	%xmm0, %xmm1
	andps	%xmm1, %xmm3
	andnps	%xmm0, %xmm1
	orps	%xmm3, %xmm1
	movaps	%xmm1, %xmm0
	testb	$1, %cl
	jne	L1535
	movl	%esi, 44(%esp)
	.cfi_offset 6, -8
	movl	824(%eax), %esi
	movss	15520(%ebx), %xmm1
	mulss	664(%eax), %xmm1
	mulss	668(%eax), %xmm1
	testl	%esi, %esi
	je	L1536
	mulss	664(%esi), %xmm1
L1536:
	movss	14468(%ebx), %xmm5
	movl	44(%esp), %esi
	.cfi_restore 6
	addss	%xmm5, %xmm5
	addss	%xmm1, %xmm5
L1535:
	xorps	%xmm4, %xmm4
	andb	$4, %ch
	jne	L1570
L1537:
	movss	14420(%edx), %xmm3
	xorps	%xmm6, %xmm6
	addss	%xmm5, %xmm4
	movl	40(%esp), %ebx
	.cfi_restore 3
	subss	LC15, %xmm3
	movaps	%xmm3, %xmm1
	cmpnless	%xmm6, %xmm1
	andps	%xmm3, %xmm1
	movaps	%xmm4, %xmm3
	addss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	cmpless	%xmm2, %xmm1
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
L1527:
	movss	%xmm0, 4(%esp)
	movl	4(%esp), %eax
	movss	%xmm1, 4(%esp)
	movl	4(%esp), %edx
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1570:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -12
	movss	15520(%ebx), %xmm1
	mulss	664(%eax), %xmm1
	mulss	668(%eax), %xmm1
	movss	400(%eax), %xmm6
	movl	824(%eax), %eax
	testl	%eax, %eax
	je	L1538
	mulss	664(%eax), %xmm1
L1538:
	movss	14468(%ebx), %xmm3
	addss	%xmm1, %xmm6
	addss	%xmm3, %xmm3
	movaps	%xmm3, %xmm4
	addss	%xmm6, %xmm4
	jmp	L1537
	.p2align 4,,10
	.p2align 3
L1569:
	.cfi_restore 3
	comiss	%xmm1, %xmm2
	ja	L1523
	minss	%xmm1, %xmm4
	movaps	%xmm4, %xmm2
	jmp	L1523
	.cfi_endproc
LFE190:
	.p2align 4
	.globl	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0
	.def	__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2.lto_priv.0:
LFB192:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movss	132(%eax), %xmm0
	addss	140(%eax), %xmm0
	movss	120(%eax), %xmm2
	movss	116(%eax), %xmm3
	movss	4(%edx), %xmm5
	movss	(%edx), %xmm4
	movaps	%xmm0, %xmm6
	addss	%xmm2, %xmm2
	addss	%xmm3, %xmm3
	movl	12(%eax), %ecx
	movss	136(%eax), %xmm0
	addss	144(%eax), %xmm0
	subss	212(%eax), %xmm6
	addss	%xmm2, %xmm5
	addss	%xmm3, %xmm4
	movaps	%xmm0, %xmm7
	subss	216(%eax), %xmm7
	movss	%xmm6, (%esp)
	addss	%xmm6, %xmm4
	addss	%xmm7, %xmm5
	movss	%xmm7, 4(%esp)
	testl	$33554432, %ecx
	je	L1572
	movss	%xmm4, (%esp)
	movl	(%esp), %eax
	movss	%xmm5, (%esp)
	movl	(%esp), %edx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1572:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	movl	_GImGui, %esi
	andl	$335544320, %ecx
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -12
	movss	14428(%esi), %xmm0
	movss	14432(%esi), %xmm1
	je	L1574
	movss	LC14, %xmm6
	movaps	%xmm0, %xmm7
	minss	%xmm6, %xmm7
	minss	%xmm6, %xmm1
	movaps	%xmm7, %xmm0
L1574:
	cmpb	$0, 222(%eax)
	jne	L1593
	movl	48(%eax), %ecx
	movss	32(%ecx), %xmm6
	movss	%xmm6, 8(%esp)
	movss	36(%ecx), %xmm6
L1579:
	movl	64(%eax), %ecx
	testl	%ecx, %ecx
	js	L1582
	cmpl	%ecx, 14356(%esi)
	jg	L1613
L1582:
	comiss	%xmm5, %xmm1
	ja	L1583
	movss	14604(%esi), %xmm7
	addss	%xmm7, %xmm7
	subss	%xmm7, %xmm6
	movaps	%xmm6, %xmm7
	cmpless	%xmm1, %xmm7
	andps	%xmm7, %xmm1
	andnps	%xmm6, %xmm7
	orps	%xmm1, %xmm7
	movaps	%xmm7, %xmm1
	minss	%xmm5, %xmm1
L1583:
	comiss	%xmm4, %xmm0
	ja	L1584
	movss	14600(%esi), %xmm5
	movss	8(%esp), %xmm6
	addss	%xmm5, %xmm5
	subss	%xmm5, %xmm6
	movaps	%xmm6, %xmm5
	cmpless	%xmm0, %xmm5
	andps	%xmm5, %xmm0
	andnps	%xmm6, %xmm5
	orps	%xmm0, %xmm5
	minss	%xmm4, %xmm5
	movaps	%xmm5, %xmm0
L1584:
	movss	%xmm3, 32(%esp)
	movl	%edx, %ebx
	movss	%xmm2, 28(%esp)
	movss	%xmm1, 24(%esp)
	movss	%xmm0, 20(%esp)
	movl	%eax, 16(%esp)
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movl	16(%esp), %ecx
	movss	20(%esp), %xmm0
	movss	24(%esp), %xmm1
	movss	28(%esp), %xmm2
	movl	%eax, 12(%esp)
	movss	12(%esp), %xmm4
	subss	32(%esp), %xmm4
	movl	%edx, 8(%esp)
	movaps	%xmm4, %xmm3
	subss	(%esp), %xmm3
	movss	(%ebx), %xmm4
	comiss	%xmm3, %xmm4
	jbe	L1585
	movl	12(%ecx), %edx
	movl	$1, %eax
	andl	$2056, %edx
	cmpl	$2048, %edx
	je	L1587
L1585:
	movzbl	13(%ecx), %eax
	shrb	$7, %al
L1587:
	movss	8(%esp), %xmm3
	movl	12(%ecx), %edx
	subss	%xmm2, %xmm3
	movaps	%xmm3, %xmm2
	subss	4(%esp), %xmm2
	movss	4(%ebx), %xmm3
	comiss	%xmm2, %xmm3
	jbe	L1588
	testb	$8, %dl
	jne	L1588
L1590:
	movss	14520(%esi), %xmm2
	testb	%al, %al
	jne	L1614
L1592:
	addss	%xmm2, %xmm0
L1591:
	movss	%xmm0, (%esp)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	(%esp), %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	movss	%xmm1, (%esp)
	movl	(%esp), %edx
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1593:
	.cfi_restore_state
	movss	LC64, %xmm6
	movss	%xmm6, 8(%esp)
	jmp	L1579
	.p2align 4,,10
	.p2align 3
L1588:
	andb	$64, %dh
	jne	L1590
	testb	%al, %al
	je	L1591
	addss	14520(%esi), %xmm1
	jmp	L1591
	.p2align 4,,10
	.p2align 3
L1614:
	addss	%xmm2, %xmm1
	jmp	L1592
	.p2align 4,,10
	.p2align 3
L1613:
	leal	(%ecx,%ecx,8), %ebx
	movl	14364(%esi), %ecx
	movss	24(%ecx,%ebx,4), %xmm6
	movss	%xmm6, 8(%esp)
	movss	28(%ecx,%ebx,4), %xmm6
	jmp	L1582
	.cfi_endproc
LFE192:
	.p2align 4
	.globl	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0
	.def	__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0;	.scl	2;	.type	32;	.endef
__ZL30CalcResizePosSizeFromAnyCornerP11ImGuiWindowRK6ImVec2S3_PS1_S4_.isra.0:
LFB194:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 28
	movss	72(%eax), %xmm6
	movss	68(%eax), %xmm4
	movss	4(%edx), %xmm7
	movss	(%edx), %xmm5
	movaps	%xmm6, %xmm2
	movaps	%xmm4, %xmm3
	addss	80(%eax), %xmm6
	subss	%xmm1, %xmm2
	subss	%xmm0, %xmm3
	addss	76(%eax), %xmm4
	mulss	%xmm7, %xmm2
	mulss	%xmm5, %xmm3
	addss	%xmm1, %xmm2
	subss	%xmm6, %xmm1
	addss	%xmm0, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm7, %xmm1
	movss	%xmm2, 8(%esp)
	mulss	%xmm5, %xmm0
	movss	%xmm3, 4(%esp)
	addss	%xmm6, %xmm1
	addss	%xmm4, %xmm0
	subss	%xmm2, %xmm1
	subss	%xmm3, %xmm0
	movss	%xmm1, (%esp)
	movss	%xmm0, 12(%esp)
	call	__ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2.isra.0
	movss	4(%esp), %xmm3
	movss	8(%esp), %xmm2
	xorps	%xmm4, %xmm4
	movss	(%esp), %xmm1
	movss	%xmm3, (%esi)
	movss	%xmm2, 4(%esi)
	ucomiss	(%ebx), %xmm4
	jp	L1616
	jne	L1616
	movl	%eax, (%esp)
	movss	(%esp), %xmm4
	subss	12(%esp), %xmm4
	subss	%xmm4, %xmm3
	movss	%xmm3, (%esi)
L1616:
	xorps	%xmm0, %xmm0
	ucomiss	4(%ebx), %xmm0
	jp	L1618
	jne	L1618
	movl	%edx, (%esp)
	movss	(%esp), %xmm0
	subss	%xmm1, %xmm0
	subss	%xmm0, %xmm2
	movss	%xmm2, 4(%esi)
L1618:
	movl	28(%esp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	addl	$16, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE194:
	.p2align 4
	.globl	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0
	.def	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0:
LFB195:
	.cfi_startproc
	xorps	%xmm6, %xmm6
	movss	72(%edx), %xmm3
	movss	80(%edx), %xmm4
	movaps	%xmm0, %xmm5
	ucomiss	%xmm6, %xmm1
	movss	68(%edx), %xmm0
	movss	76(%edx), %xmm2
	addss	%xmm3, %xmm4
	addss	%xmm0, %xmm2
	jp	L1624
	jne	L1624
	movss	LC15, %xmm6
	subss	%xmm6, %xmm2
	subss	%xmm6, %xmm4
L1624:
	testl	%ecx, %ecx
	jne	L1626
	movaps	%xmm0, %xmm6
	movaps	%xmm3, %xmm2
	addss	%xmm1, %xmm0
	subss	%xmm1, %xmm6
	addss	%xmm5, %xmm2
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm3
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm2, %xmm3
	movlhps	%xmm0, %xmm3
	movups	%xmm3, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1626:
	cmpl	$1, %ecx
	je	L1632
	cmpl	$2, %ecx
	je	L1633
	cmpl	$3, %ecx
	je	L1634
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1632:
	movaps	%xmm2, %xmm0
	addss	%xmm5, %xmm3
	addss	%xmm1, %xmm2
	subss	%xmm1, %xmm0
	subss	%xmm5, %xmm4
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm4, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1634:
	movaps	%xmm4, %xmm3
	addss	%xmm5, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm3
	addss	%xmm4, %xmm1
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1633:
	movaps	%xmm3, %xmm4
	addss	%xmm5, %xmm0
	subss	%xmm5, %xmm2
	subss	%xmm1, %xmm4
	addss	%xmm1, %xmm3
	unpcklps	%xmm4, %xmm0
	unpcklps	%xmm3, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, (%eax)
	ret
	.cfi_endproc
LFE195:
	.section .rdata,"dr"
LC83:
	.ascii "_IMWINDOW\0"
LC86:
	.ascii "#UNHIDE\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0
	.def	__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.lto_priv.0:
LFB196:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$156, %esp
	movzbl	(%edi), %eax
	movss	124(%ebx), %xmm6
	movl	%edx, -88(%ebp)
	movss	128(%ebx), %xmm7
	movb	%cl, -120(%ebp)
	movb	%al, -100(%ebp)
	movl	4(%edi), %eax
	movb	$0, 228(%ebx)
	movl	%eax, -104(%ebp)
	movl	8(%edi), %eax
	movss	%xmm0, -112(%ebp)
	movl	_GImGui, %edi
	movl	%eax, -108(%ebp)
	movl	12(%ebx), %eax
	movss	%xmm6, -84(%ebp)
	movl	%eax, -80(%ebp)
	movss	%xmm7, -96(%ebp)
	cmpb	$0, 226(%ebx)
	je	L1636
	movss	14476(%edi), %xmm4
	movl	$12, %eax
	movss	%xmm7, 14476(%edi)
	movss	%xmm4, -80(%ebp)
	testb	%cl, %cl
	je	L1637
	movzbl	18738(%edi), %eax
	addl	$11, %eax
L1637:
	addl	$13, %eax
	leal	-40(%ebp), %esi
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14428(%eax), %xmm0
	movl	%esi, %eax
	mulss	14404(%edi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %ecx
	movzbl	222(%ebx), %eax
	movl	-88(%ebp), %ebx
	negl	%eax
	movl	(%ebx), %edx
	andl	$-16777216, %eax
	orl	%ecx, %eax
	movl	4(%ebx), %ecx
	movl	%edx, -64(%ebp)
	movl	%edx, -96(%ebp)
	movl	8(%ebx), %edx
	movl	%ecx, -60(%ebp)
	movl	%ecx, -92(%ebp)
	movl	12(%ebx), %ecx
	movl	%edx, -56(%ebp)
	movl	%ecx, -52(%ebp)
	movl	16148(%edi), %ebx
	movl	676(%ebx), %ecx
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	14476(%edi), %xmm4
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	comiss	%xmm0, %xmm4
	ja	L1935
L1638:
	movss	-80(%ebp), %xmm4
	movss	%xmm4, 14476(%edi)
L1635:
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
L1636:
	.cfi_restore_state
	movl	-80(%ebp), %eax
	andl	$128, %eax
	movl	%eax, -116(%ebp)
	je	L1936
	testb	$1, 909(%ebx)
	je	L1663
L1945:
	movl	936(%ebx), %eax
	orb	$4, 160(%eax)
	testb	$1, -80(%ebp)
	je	L1937
L1664:
	testb	$4, -79(%ebp)
	jne	L1784
L1666:
	testb	$1, 909(%ebx)
	jne	L1934
L1676:
	cmpb	$0, 220(%ebx)
	jne	L1938
	cmpb	$0, 221(%ebx)
	jne	L1939
L1711:
	cmpb	$0, -100(%ebp)
	je	L1635
	andl	$2, -80(%ebp)
	jne	L1712
	movl	$__ZL15resize_grip_def.lto_priv.0, -88(%ebp)
	leal	-40(%ebp), %esi
L1740:
	movl	-108(%ebp), %eax
	movl	-80(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	movl	%eax, -100(%ebp)
	cmpl	$16777215, %eax
	jbe	L1713
	movss	72(%ebx), %xmm1
	movss	80(%ebx), %xmm0
	movl	-88(%ebp), %eax
	movss	68(%ebx), %xmm2
	addss	%xmm1, %xmm0
	movl	676(%ebx), %edi
	subss	%xmm1, %xmm0
	mulss	4(%eax), %xmm0
	addss	%xmm1, %xmm0
	movss	76(%ebx), %xmm1
	addss	%xmm2, %xmm1
	subss	%xmm2, %xmm1
	mulss	(%eax), %xmm1
	addss	%xmm2, %xmm1
	testl	%edx, %edx
	je	L1797
	movss	-112(%ebp), %xmm3
	movss	-96(%ebp), %xmm6
L1714:
	movl	-88(%ebp), %eax
	movss	8(%eax), %xmm2
	movss	12(%eax), %xmm4
	movaps	%xmm2, %xmm5
	mulss	%xmm6, %xmm5
	addss	%xmm1, %xmm5
	movss	%xmm5, -40(%ebp)
	movaps	%xmm3, %xmm5
	mulss	%xmm4, %xmm5
	addss	%xmm0, %xmm5
	movss	%xmm5, -36(%ebp)
	movl	84(%edi), %edx
	cmpl	88(%edi), %edx
	je	L1940
L1715:
	movl	92(%edi), %ecx
L1718:
	mulss	%xmm4, %xmm6
	movaps	%xmm3, %xmm5
	leal	(%ecx,%edx,8), %eax
	movl	(%esi), %edx
	mulss	%xmm2, %xmm5
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movaps	%xmm6, %xmm3
	addl	$1, 84(%edi)
	movl	676(%ebx), %edi
	addss	%xmm1, %xmm5
	addss	%xmm0, %xmm3
	movss	%xmm5, -40(%ebp)
	movss	%xmm3, -36(%ebp)
	movl	84(%edi), %edx
	cmpl	88(%edi), %edx
	je	L1941
L1722:
	movl	92(%edi), %ecx
L1725:
	movss	-84(%ebp), %xmm6
	movss	-96(%ebp), %xmm3
	leal	(%ecx,%edx,8), %eax
	movl	(%esi), %edx
	addss	%xmm6, %xmm3
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	mulss	%xmm3, %xmm2
	movl	%edx, 4(%eax)
	movl	-88(%ebp), %eax
	mulss	%xmm4, %xmm3
	addl	$1, 84(%edi)
	movl	676(%ebx), %ecx
	movss	LC23, %xmm4
	movl	20(%eax), %edx
	movl	16(%eax), %eax
	comiss	%xmm6, %xmm4
	addss	%xmm1, %xmm2
	addss	%xmm0, %xmm3
	movss	%xmm2, -40(%ebp)
	movss	%xmm3, -36(%ebp)
	ja	L1942
	sall	$2, %edx
	sall	$2, %eax
	movl	%esi, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0
	subl	$12, %esp
L1738:
	movl	676(%ebx), %edi
	movl	84(%edi), %eax
	cmpl	$2, %eax
	jle	L1739
	movl	-100(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edi, %ecx
	movl	%edx, 8(%esp)
	movl	92(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	subl	$12, %esp
L1739:
	movl	$0, 84(%edi)
L1713:
	addl	$1, -80(%ebp)
	movl	-80(%ebp), %eax
	addl	$24, -88(%ebp)
	cmpl	%eax, -104(%ebp)
	jne	L1740
L1712:
	movl	940(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1635
	movss	128(%ebx), %xmm6
	xorps	%xmm0, %xmm0
	movl	_GImGui, %eax
	movss	124(%ebx), %xmm4
	comiss	%xmm0, %xmm6
	movl	%eax, -80(%ebp)
	movss	%xmm6, -84(%ebp)
	jbe	L1741
	testb	$-128, 12(%ebx)
	je	L1943
L1741:
	movsbl	234(%ebx), %edi
	cmpl	$-1, %edi
	je	L1743
	movaps	%xmm4, %xmm0
	leal	-56(%ebp), %eax
	xorps	%xmm1, %xmm1
	movl	%edi, %ecx
	movl	%ebx, %edx
	movss	%xmm4, -96(%ebp)
	call	__ZL19GetResizeBorderRectP11ImGuiWindowiff.lto_priv.0
	imull	$28, %edi, %eax
	movss	-96(%ebp), %xmm4
	movss	-52(%ebp), %xmm7
	movss	-56(%ebp), %xmm6
	movss	-48(%ebp), %xmm1
	movl	676(%ebx), %ecx
	movss	__ZL17resize_border_def.lto_priv.0+4(%eax), %xmm2
	subss	%xmm6, %xmm1
	movss	__ZL17resize_border_def.lto_priv.0(%eax), %xmm3
	movss	__ZL17resize_border_def.lto_priv.0+24(%eax), %xmm5
	mulss	%xmm4, %xmm2
	movss	%xmm1, -104(%ebp)
	mulss	__ZL17resize_border_def.lto_priv.0+8(%eax), %xmm1
	mulss	%xmm4, %xmm3
	movss	%xmm2, -96(%ebp)
	movss	-44(%ebp), %xmm2
	addss	%xmm6, %xmm1
	subss	%xmm7, %xmm2
	movss	%xmm3, -88(%ebp)
	movss	LC23, %xmm3
	addss	%xmm3, %xmm1
	comiss	%xmm4, %xmm3
	addss	-88(%ebp), %xmm1
	movss	%xmm2, -100(%ebp)
	mulss	__ZL17resize_border_def.lto_priv.0+12(%eax), %xmm2
	movss	%xmm1, -40(%ebp)
	movaps	%xmm2, %xmm0
	addss	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	movss	%xmm0, -36(%ebp)
	ja	L1944
	leal	-40(%ebp), %esi
	movl	%eax, -124(%ebp)
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm2
	movss	%xmm3, -128(%ebp)
	movaps	%xmm4, %xmm0
	subss	LC87, %xmm1
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -116(%ebp)
	movl	%esi, (%esp)
	movss	%xmm5, -112(%ebp)
	movss	%xmm4, -108(%ebp)
	call	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0
	movl	-124(%ebp), %eax
	movss	-100(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	movss	-128(%ebp), %xmm3
	subl	$4, %esp
	mulss	__ZL17resize_border_def.lto_priv.0+20(%eax), %xmm0
	movl	676(%ebx), %ecx
	mulss	__ZL17resize_border_def.lto_priv.0+16(%eax), %xmm1
	addss	-120(%ebp), %xmm0
	movss	LC87, %xmm2
	addss	-116(%ebp), %xmm1
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-88(%ebp), %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -40(%ebp)
	movl	%esi, (%esp)
	movss	-112(%ebp), %xmm5
	movss	-108(%ebp), %xmm0
	addss	%xmm5, %xmm2
	movaps	%xmm5, %xmm1
	call	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0
	subl	$4, %esp
L1756:
	movl	_GImGui, %eax
	movl	676(%ebx), %edi
	movl	15088(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	15092(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	15096(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	15100(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	15100(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %edx
	movl	84(%edi), %eax
	cmpl	$1, %eax
	jle	L1763
	cmpl	$16777215, %edx
	jbe	L1763
	movss	LC88, %xmm1
	movss	-84(%ebp), %xmm4
	movl	%edi, %ecx
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movaps	%xmm4, %xmm0
	movl	%eax, 4(%esp)
	movl	92(%edi), %eax
	cmpnless	%xmm1, %xmm0
	movl	%eax, (%esp)
	andps	%xmm0, %xmm4
	andnps	%xmm1, %xmm0
	orps	%xmm4, %xmm0
	call	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0
	subl	$16, %esp
L1763:
	movl	$0, 84(%edi)
L1743:
	movl	-80(%ebp), %eax
	xorps	%xmm0, %xmm0
	movss	14476(%eax), %xmm3
	comiss	%xmm0, %xmm3
	jbe	L1635
	testb	$1, 12(%ebx)
	jne	L1635
	testb	$1, 909(%ebx)
	jne	L1635
	movl	(%ebx), %eax
	movl	824(%ebx), %edx
	movss	72(%ebx), %xmm2
	movss	15520(%eax), %xmm1
	mulss	664(%ebx), %xmm1
	mulss	668(%ebx), %xmm1
	testl	%edx, %edx
	je	L1767
	mulss	664(%edx), %xmm1
L1767:
	movss	14468(%eax), %xmm0
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	676(%ebx), %edi
	movl	14704(%eax), %edx
	movaps	%xmm0, %xmm4
	addss	%xmm0, %xmm4
	movl	%edx, -40(%ebp)
	movl	14708(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14712(%eax), %edx
	addss	%xmm1, %xmm4
	movl	%edx, -32(%ebp)
	movl	14716(%eax), %edx
	addss	%xmm2, %xmm4
	subss	LC15, %xmm4
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	14716(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	68(%ebx), %xmm0
	movaps	%xmm3, %xmm2
	movl	%edi, %ecx
	movss	76(%ebx), %xmm1
	movss	-84(%ebp), %xmm7
	movss	%xmm4, -36(%ebp)
	addss	%xmm0, %xmm1
	addss	%xmm7, %xmm0
	subss	%xmm7, %xmm1
	movss	%xmm1, -40(%ebp)
	movaps	%xmm4, %xmm1
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
	jmp	L1635
	.p2align 4,,10
	.p2align 3
L1936:
	movzbl	19068(%edi), %eax
	movb	%al, -124(%ebp)
	testb	%al, %al
	je	L1643
	movl	16048(%edi), %eax
	subl	19176(%edi), %eax
	cmpl	$1, %eax
	jle	L1644
L1645:
	movb	$0, -124(%ebp)
L1643:
	movl	-80(%ebp), %esi
	movl	$4, %eax
	testl	$100663296, %esi
	jne	L1646
	andl	$16777216, %esi
	movl	$2, %eax
	je	L1646
	movzbl	909(%ebx), %ecx
	movl	$3, %eax
	andl	$1, %ecx
	subl	%ecx, %eax
L1646:
	addl	$13, %eax
	leal	-40(%ebp), %esi
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14428(%eax), %xmm0
	movl	%esi, %eax
	mulss	14404(%edi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, %edx
	cmpb	$0, 222(%ebx)
	je	L1647
	orl	$-16777216, %edx
	cmpb	$0, -124(%ebp)
	je	L1649
	movss	LC23, %xmm0
	movl	48(%ebx), %eax
	mulss	96(%eax), %xmm0
	movss	%xmm0, 96(%eax)
L1649:
	testb	$1, 909(%ebx)
	je	L1656
	movl	936(%ebx), %eax
	movl	%edx, 108(%eax)
	testb	$1, 909(%ebx)
	je	L1656
	movl	936(%ebx), %eax
	movl	112(%eax), %eax
	movl	676(%eax), %eax
	movl	%eax, -124(%ebp)
L1657:
	movl	-124(%ebp), %eax
	movl	%edx, -128(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	movl	-128(%ebp), %edx
	subl	$8, %esp
L1658:
	movss	72(%ebx), %xmm0
	movss	80(%ebx), %xmm1
	movl	$192, %eax
	movss	68(%ebx), %xmm2
	movss	76(%ebx), %xmm3
	addss	%xmm0, %xmm1
	testb	$1, -80(%ebp)
	cmovne	-116(%ebp), %eax
	addss	%xmm2, %xmm3
	movl	%eax, -116(%ebp)
	movss	%xmm1, -52(%ebp)
	xorps	%xmm1, %xmm1
	movss	%xmm3, -56(%ebp)
	testb	$1, 12(%ebx)
	jne	L1660
	movl	(%ebx), %eax
	movl	824(%ebx), %ecx
	movss	15520(%eax), %xmm3
	mulss	664(%ebx), %xmm3
	mulss	668(%ebx), %xmm3
	testl	%ecx, %ecx
	je	L1661
	mulss	664(%ecx), %xmm3
L1661:
	movss	14468(%eax), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm3, %xmm1
L1660:
	xorps	%xmm3, %xmm3
	addss	%xmm1, %xmm0
	movl	-116(%ebp), %eax
	addss	%xmm3, %xmm2
	movss	%xmm0, -36(%ebp)
	movss	%xmm2, -40(%ebp)
	movl	%eax, 12(%esp)
	leal	-56(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movss	-84(%ebp), %xmm0
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	testb	$1, 909(%ebx)
	jne	L1662
	testb	$32, -77(%ebp)
	je	L1663
L1662:
	movl	-124(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	leal	120(%eax), %ecx
	call	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi
	subl	$8, %esp
	testb	$1, 909(%ebx)
	jne	L1945
L1663:
	testb	$1, -80(%ebp)
	jne	L1664
L1786:
	movzbl	-120(%ebp), %eax
	movl	_GImGui, %ecx
	addl	$23, %eax
	sall	$4, %eax
	addl	%ecx, %eax
	movl	14416(%eax), %esi
	movl	%esi, -40(%ebp)
	movl	14420(%eax), %esi
	movl	%esi, -36(%ebp)
	movl	14424(%eax), %esi
	movl	%esi, -32(%ebp)
	movl	14428(%eax), %esi
	movl	%esi, -28(%ebp)
	movss	14404(%ecx), %xmm0
	mulss	14428(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	676(%ebx), %ecx
	movl	$48, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-88(%ebp), %esi
	leal	8(%esi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movss	-84(%ebp), %xmm0
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
	testb	$4, -79(%ebp)
	je	L1666
L1784:
	movl	12(%ebx), %eax
	movss	72(%ebx), %xmm0
	xorps	%xmm1, %xmm1
	movl	(%ebx), %ecx
	testb	$1, %al
	jne	L1667
	movl	824(%ebx), %esi
	movss	15520(%ecx), %xmm2
	mulss	664(%ebx), %xmm2
	mulss	668(%ebx), %xmm2
	testl	%esi, %esi
	je	L1668
	mulss	664(%esi), %xmm2
L1668:
	movss	14468(%ecx), %xmm1
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
L1667:
	addss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	testb	$4, %ah
	je	L1669
	movl	824(%ebx), %eax
	movss	15520(%ecx), %xmm3
	mulss	664(%ebx), %xmm3
	movss	400(%ebx), %xmm4
	mulss	668(%ebx), %xmm3
	testl	%eax, %eax
	je	L1670
	mulss	664(%eax), %xmm3
L1670:
	movss	14468(%ecx), %xmm2
	addss	%xmm4, %xmm3
	addss	%xmm2, %xmm2
	addss	%xmm3, %xmm2
L1669:
	movss	68(%ebx), %xmm7
	movss	84(%ebx), %xmm4
	addss	%xmm1, %xmm2
	movaps	%xmm0, %xmm3
	movss	80(%ebx), %xmm6
	cmpnless	%xmm1, %xmm3
	movl	676(%ebx), %ecx
	addss	%xmm7, %xmm4
	movss	%xmm7, -120(%ebp)
	addss	76(%ebx), %xmm7
	addss	%xmm0, %xmm6
	andps	%xmm3, %xmm0
	andnps	%xmm1, %xmm3
	minss	%xmm7, %xmm4
	orps	%xmm0, %xmm3
	minss	%xmm6, %xmm2
	movss	%xmm4, -116(%ebp)
	xorps	%xmm4, %xmm4
	movss	%xmm2, -88(%ebp)
	testb	$1, -80(%ebp)
	je	L1673
	movss	-84(%ebp), %xmm4
L1673:
	movl	_GImGui, %eax
	leal	-40(%ebp), %esi
	movl	%ecx, -124(%ebp)
	movl	14832(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14836(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14840(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14844(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%eax), %xmm0
	mulss	14844(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-96(%ebp), %xmm6
	movss	-116(%ebp), %xmm0
	xorps	%xmm1, %xmm1
	addss	%xmm1, %xmm3
	movss	-88(%ebp), %xmm5
	subss	%xmm6, %xmm0
	addss	-120(%ebp), %xmm6
	movss	%xmm5, -52(%ebp)
	movss	%xmm3, -36(%ebp)
	movss	%xmm0, -56(%ebp)
	movaps	%xmm4, %xmm0
	movss	%xmm6, -40(%ebp)
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	$48, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	movss	14476(%edi), %xmm3
	xorps	%xmm1, %xmm1
	subl	$16, %esp
	comiss	%xmm1, %xmm3
	jbe	L1666
	movss	72(%ebx), %xmm0
	addss	80(%ebx), %xmm0
	comiss	-88(%ebp), %xmm0
	jbe	L1666
	movl	_GImGui, %eax
	movl	676(%ebx), %ecx
	movl	14704(%eax), %edx
	movl	%ecx, -124(%ebp)
	movl	%edx, -40(%ebp)
	movl	14708(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14712(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14716(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14716(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	movl	%esi, %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-116(%ebp), %xmm4
	movaps	%xmm3, %xmm2
	movss	%xmm4, -40(%ebp)
	movss	-88(%ebp), %xmm4
	movss	%xmm4, -36(%ebp)
	movaps	%xmm4, %xmm1
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movss	-120(%ebp), %xmm0
	movl	-124(%ebp), %ecx
	call	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0
	subl	$8, %esp
	jmp	L1666
	.p2align 4,,10
	.p2align 3
L1935:
	movl	676(%ebx), %eax
	movl	_GImGui, %ecx
	movl	%eax, -96(%ebp)
	movl	14720(%ecx), %eax
	movl	%ecx, -88(%ebp)
	movl	%eax, -40(%ebp)
	movl	14724(%ecx), %eax
	movl	%eax, -36(%ebp)
	movl	14728(%ecx), %eax
	movl	%eax, -32(%ebp)
	movl	14732(%ecx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%ecx), %xmm3
	movl	%esi, %eax
	movss	14732(%ecx), %xmm7
	mulss	%xmm3, %xmm7
	movss	%xmm7, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-60(%ebp), %xmm1
	movss	-64(%ebp), %xmm2
	cmpl	$16777215, %eax
	movss	-52(%ebp), %xmm6
	movss	-56(%ebp), %xmm5
	movss	LC15, %xmm0
	movl	-88(%ebp), %ecx
	addss	%xmm0, %xmm1
	addss	%xmm0, %xmm2
	movss	%xmm1, -36(%ebp)
	movss	%xmm2, -40(%ebp)
	jbe	L1640
	addss	%xmm0, %xmm6
	addss	%xmm0, %xmm5
	movss	%xmm4, 8(%esp)
	movss	%xmm4, -88(%ebp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-96(%ebp), %ecx
	movaps	%xmm6, %xmm1
	movaps	%xmm5, %xmm0
	movss	-84(%ebp), %xmm2
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movl	676(%ebx), %eax
	movss	-56(%ebp), %xmm5
	movl	_GImGui, %ecx
	subl	$12, %esp
	movss	-52(%ebp), %xmm6
	movl	%eax, -96(%ebp)
	movss	-88(%ebp), %xmm4
	movss	14404(%ecx), %xmm3
L1640:
	movl	14704(%ecx), %eax
	movl	%eax, -40(%ebp)
	movl	14708(%ecx), %eax
	movl	%eax, -36(%ebp)
	movl	14712(%ecx), %eax
	movl	%eax, -32(%ebp)
	movl	14716(%ecx), %eax
	movl	%eax, -28(%ebp)
	mulss	14716(%ecx), %xmm3
	movl	%esi, %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L1638
	movl	%eax, 4(%esp)
	leal	-64(%ebp), %eax
	movaps	%xmm6, %xmm1
	movaps	%xmm5, %xmm0
	movl	%eax, (%esp)
	movss	%xmm4, 8(%esp)
	movss	-84(%ebp), %xmm2
	movl	-96(%ebp), %ecx
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	subl	$12, %esp
	jmp	L1638
	.p2align 4,,10
	.p2align 3
L1937:
	testb	$1, 909(%ebx)
	je	L1786
	testb	$4, -79(%ebp)
	jne	L1784
L1934:
	movl	936(%ebx), %esi
	movl	16(%esi), %eax
	andl	$12288, %eax
	cmpl	$8192, %eax
	jne	L1676
	movss	15516(%edi), %xmm0
	xorps	%xmm4, %xmm4
	movss	56(%esi), %xmm5
	movss	LC84, %xmm1
	movl	284(%ebx), %edx
	movss	%xmm5, -116(%ebp)
	mulss	%xmm0, %xmm1
	mulss	LC85, %xmm0
	cvttss2sil	%xmm1, %eax
	cvtsi2ssl	%eax, %xmm4
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	movss	%xmm4, -120(%ebp)
	movss	52(%esi), %xmm4
	cvtsi2ssl	%eax, %xmm0
	movl	292(%ebx), %eax
	movaps	%xmm4, %xmm1
	movss	%xmm4, -88(%ebp)
	addss	%xmm0, %xmm1
	addss	%xmm5, %xmm0
	unpcklps	%xmm0, %xmm1
	movaps	%xmm4, %xmm0
	unpcklps	%xmm5, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -56(%ebp)
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	$LC86, %eax
	call	__Z9ImHashStrPKcjj
	movl	%eax, %edi
	movl	(%ebx), %eax
	cmpl	16200(%eax), %edi
	je	L1946
L1677:
	movl	_GImGui, %eax
	cmpl	%edi, 16224(%eax)
	jne	L1678
	movl	%edi, 16228(%eax)
L1678:
	cmpl	%edi, 16264(%eax)
	jne	L1679
	movb	$1, 16268(%eax)
L1679:
	leal	-74(%ebp), %edx
	movl	$2048, 4(%esp)
	leal	-73(%ebp), %ecx
	movl	%edx, (%esp)
	leal	-56(%ebp), %eax
	movl	%edi, %edx
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-74(%ebp), %edx
	movl	_GImGui, %edi
	testb	%al, %al
	je	L1680
	orb	$4, 161(%esi)
	testb	%dl, %dl
	jne	L1682
L1681:
	movzbl	-73(%ebp), %edx
	testb	$2, 160(%esi)
	je	L1782
	movl	$23, %eax
	testb	%dl, %dl
	je	L1685
L1782:
	movzbl	%dl, %edx
	leal	21(%edx), %eax
L1685:
	addl	$13, %eax
	sall	$4, %eax
	addl	%edi, %eax
	movl	14416(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14420(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14424(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14428(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14404(%edi), %xmm0
	mulss	14428(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	-88(%ebp), %xmm7
	xorps	%xmm0, %xmm0
	movss	-120(%ebp), %xmm4
	movss	-116(%ebp), %xmm2
	movl	676(%ebx), %esi
	movl	%eax, %ecx
	movaps	%xmm7, %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm0
	movss	%xmm1, -64(%ebp)
	movaps	%xmm4, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -60(%ebp)
	movaps	%xmm4, %xmm1
	addss	%xmm7, %xmm1
	movss	%xmm1, -40(%ebp)
	cmpl	$16777215, %eax
	jbe	L1676
	movl	84(%esi), %eax
	movl	%eax, -120(%ebp)
	cmpl	88(%esi), %eax
	je	L1947
L1689:
	movl	92(%esi), %edx
L1692:
	movss	-88(%ebp), %xmm4
	movl	-120(%ebp), %eax
	movss	%xmm4, -72(%ebp)
	leal	(%edx,%eax,8), %eax
	movss	-116(%ebp), %xmm4
	movl	-72(%ebp), %edx
	movss	%xmm4, -68(%ebp)
	movl	%edx, (%eax)
	movl	-68(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	leal	1(%eax), %edi
	movl	%edi, 84(%esi)
	cmpl	%edi, 88(%esi)
	je	L1948
L1695:
	movl	92(%esi), %edx
L1698:
	leal	(%edx,%edi,8), %eax
	movl	-40(%ebp), %edx
	movl	%edx, (%eax)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	leal	1(%eax), %edi
	movl	%edi, 84(%esi)
	cmpl	%edi, 88(%esi)
	je	L1949
L1702:
	movl	92(%esi), %edx
L1705:
	leal	(%edx,%edi,8), %eax
	movl	-64(%ebp), %edx
	movl	%edx, (%eax)
	movl	-60(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	84(%esi), %eax
	addl	$1, %eax
	movl	%eax, 84(%esi)
	cmpl	$2, %eax
	jle	L1709
	movl	%ecx, 8(%esp)
	movl	%esi, %ecx
	movl	%eax, 4(%esp)
	movl	92(%esi), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	subl	$12, %esp
L1709:
	movl	$0, 84(%esi)
	jmp	L1676
	.p2align 4,,10
	.p2align 3
L1647:
	testb	$64, 18372(%edi)
	jne	L1651
	cmpb	$0, -124(%ebp)
	je	L1649
	movss	LC23, %xmm3
	andl	$16777215, %edx
	movaps	%xmm3, %xmm0
	jmp	L1655
	.p2align 4,,10
	.p2align 3
L1797:
	movss	-96(%ebp), %xmm3
	movss	-112(%ebp), %xmm6
	jmp	L1714
	.p2align 4,,10
	.p2align 3
L1656:
	movl	676(%ebx), %eax
	movl	%eax, -124(%ebp)
	testb	$32, -77(%ebp)
	je	L1658
	jmp	L1657
	.p2align 4,,10
	.p2align 3
L1938:
	xorl	%eax, %eax
	call	__ZN5ImGui9ScrollbarE9ImGuiAxis
	cmpb	$0, 221(%ebx)
	je	L1711
L1939:
	movl	$1, %eax
	call	__ZN5ImGui9ScrollbarE9ImGuiAxis
	jmp	L1711
	.p2align 4,,10
	.p2align 3
L1942:
	movl	84(%ecx), %edi
	cmpl	88(%ecx), %edi
	je	L1950
L1731:
	movl	92(%ecx), %edx
L1734:
	leal	(%edx,%edi,8), %eax
	movl	(%esi), %edx
	movl	%edx, (%eax)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	addl	$1, 84(%ecx)
	jmp	L1738
	.p2align 4,,10
	.p2align 3
L1941:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L1723
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -116(%ebp)
L1724:
	movl	-116(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1726
	addl	$1, 188(%ecx)
	movl	%ecx, -120(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	84(%edi), %edx
	movss	-124(%ebp), %xmm0
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	testl	%eax, %eax
	je	L1727
	sall	$3, %edx
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -124(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-124(%ebp), %ecx
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	testl	%eax, %eax
	movss	-136(%ebp), %xmm4
	movss	-140(%ebp), %xmm2
	je	L1774
	movl	-120(%ebp), %edx
	subl	$1, 188(%edx)
L1774:
	movl	%ecx, -136(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm4, -128(%ebp)
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	84(%edi), %edx
	movl	-136(%ebp), %ecx
	movss	-132(%ebp), %xmm2
	movss	-128(%ebp), %xmm4
	movss	-124(%ebp), %xmm1
	movss	-120(%ebp), %xmm0
L1727:
	movl	-116(%ebp), %eax
	movl	%ecx, 92(%edi)
	movl	%eax, 88(%edi)
	jmp	L1725
	.p2align 4,,10
	.p2align 3
L1940:
	leal	1(%edx), %ecx
	testl	%edx, %edx
	jne	L1716
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -116(%ebp)
L1717:
	movl	-116(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1719
	addl	$1, 188(%ecx)
	movl	%ecx, -120(%ebp)
	movss	%xmm6, -144(%ebp)
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movss	%xmm3, -124(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	84(%edi), %edx
	movss	-124(%ebp), %xmm3
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	movss	-136(%ebp), %xmm4
	testl	%eax, %eax
	movss	-140(%ebp), %xmm2
	movss	-144(%ebp), %xmm6
	je	L1720
	sall	$3, %edx
	movss	%xmm6, -148(%ebp)
	movss	%xmm2, -144(%ebp)
	movss	%xmm4, -140(%ebp)
	movss	%xmm1, -136(%ebp)
	movss	%xmm0, -132(%ebp)
	movss	%xmm3, -128(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -124(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-124(%ebp), %ecx
	movss	-128(%ebp), %xmm3
	movss	-132(%ebp), %xmm0
	testl	%eax, %eax
	movss	-136(%ebp), %xmm1
	movss	-140(%ebp), %xmm4
	movss	-144(%ebp), %xmm2
	movss	-148(%ebp), %xmm6
	je	L1776
	movl	-120(%ebp), %edx
	subl	$1, 188(%edx)
L1776:
	movl	%ecx, -144(%ebp)
	movss	%xmm6, -140(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm3, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	84(%edi), %edx
	movl	-144(%ebp), %ecx
	movss	-140(%ebp), %xmm6
	movss	-136(%ebp), %xmm2
	movss	-132(%ebp), %xmm4
	movss	-128(%ebp), %xmm1
	movss	-124(%ebp), %xmm0
	movss	-120(%ebp), %xmm3
L1720:
	movl	-116(%ebp), %eax
	movl	%ecx, 92(%edi)
	movl	%eax, 88(%edi)
	jmp	L1718
	.p2align 4,,10
	.p2align 3
L1651:
	movss	18460(%edi), %xmm0
	cmpb	$0, -124(%ebp)
	jne	L1951
L1653:
	xorps	%xmm1, %xmm1
	andl	$16777215, %edx
	comiss	%xmm0, %xmm1
	ja	L1649
	comiss	LC15, %xmm0
	jbe	L1933
	movss	LC15, %xmm0
L1933:
	movss	LC23, %xmm3
L1655:
	mulss	LC50, %xmm0
	addss	%xmm3, %xmm0
	cvttss2sil	%xmm0, %eax
	sall	$24, %eax
	orl	%eax, %edx
	jmp	L1649
	.p2align 4,,10
	.p2align 3
L1723:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -116(%ebp)
	cmpl	%ecx, %edx
	jge	L1722
	jmp	L1724
	.p2align 4,,10
	.p2align 3
L1716:
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -116(%ebp)
	cmpl	%ecx, %edx
	jge	L1715
	jmp	L1717
	.p2align 4,,10
	.p2align 3
L1644:
	movzbl	99(%edi), %eax
	movb	%al, -124(%ebp)
	testb	%al, %al
	je	L1643
	cmpl	$-1, 19100(%edi)
	je	L1645
	leal	19104(%edi), %eax
	movl	$LC83, (%esp)
	movl	%eax, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1645
	movl	19084(%edi), %eax
	cmpl	%ebx, (%eax)
	sete	-124(%ebp)
	jmp	L1643
	.p2align 4,,10
	.p2align 3
L1951:
	movss	LC23, %xmm3
	mulss	%xmm3, %xmm0
	jmp	L1653
	.p2align 4,,10
	.p2align 3
L1719:
	movl	%edx, -144(%ebp)
	movss	%xmm6, -140(%ebp)
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movss	%xmm3, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-120(%ebp), %xmm3
	movss	-124(%ebp), %xmm0
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	testl	%eax, %eax
	movss	-140(%ebp), %xmm6
	movl	-144(%ebp), %edx
	je	L1720
	sall	$3, %edx
	movss	%xmm6, -144(%ebp)
	movss	%xmm2, -140(%ebp)
	movss	%xmm4, -136(%ebp)
	movss	%xmm1, -132(%ebp)
	movss	%xmm0, -128(%ebp)
	movss	%xmm3, -124(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -120(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-120(%ebp), %ecx
	movss	-124(%ebp), %xmm3
	movss	-128(%ebp), %xmm0
	movss	-132(%ebp), %xmm1
	movss	-136(%ebp), %xmm4
	movss	-140(%ebp), %xmm2
	movss	-144(%ebp), %xmm6
	jmp	L1776
	.p2align 4,,10
	.p2align 3
L1726:
	movl	%edx, -136(%ebp)
	movss	%xmm2, -132(%ebp)
	movss	%xmm4, -128(%ebp)
	movss	%xmm1, -124(%ebp)
	movss	%xmm0, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movss	-120(%ebp), %xmm0
	movss	-124(%ebp), %xmm1
	movl	%eax, %ecx
	movl	92(%edi), %eax
	movss	-128(%ebp), %xmm4
	movss	-132(%ebp), %xmm2
	movl	-136(%ebp), %edx
	testl	%eax, %eax
	je	L1727
	sall	$3, %edx
	movss	%xmm2, -136(%ebp)
	movss	%xmm4, -132(%ebp)
	movss	%xmm1, -128(%ebp)
	movss	%xmm0, -124(%ebp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -120(%ebp)
	call	_memcpy
	movl	92(%edi), %eax
	movl	-120(%ebp), %ecx
	movss	-124(%ebp), %xmm0
	movss	-128(%ebp), %xmm1
	movss	-132(%ebp), %xmm4
	movss	-136(%ebp), %xmm2
	jmp	L1774
	.p2align 4,,10
	.p2align 3
L1950:
	leal	1(%edi), %edx
	testl	%edi, %edi
	jne	L1732
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -116(%ebp)
L1733:
	movl	-116(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L1735
	addl	$1, 188(%edx)
	movl	%ecx, -124(%ebp)
	movl	%edx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-124(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%ecx), %eax
	movl	84(%ecx), %edi
	testl	%eax, %eax
	je	L1736
	sall	$3, %edi
	movl	%ecx, -128(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -124(%ebp)
	call	_memcpy
	movl	-128(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L1772
	movl	-120(%ebp), %edi
	subl	$1, 188(%edi)
L1772:
	movl	%edx, -124(%ebp)
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-124(%ebp), %edx
	movl	84(%ecx), %edi
L1736:
	movl	-116(%ebp), %eax
	movl	%edx, 92(%ecx)
	movl	%eax, 88(%ecx)
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1680:
	testb	%dl, %dl
	je	L1681
	cmpb	$0, 3536(%edi)
	je	L1682
	movss	48(%edi), %xmm0
	movss	14216(%edi), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L1682
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0
	movl	_GImGui, %edi
	.p2align 4
	.p2align 3
L1682:
	movl	$23, %eax
	cmpb	$0, -73(%ebp)
	jne	L1685
	movzbl	160(%esi), %edx
	shrb	%dl
	andl	$1, %edx
	jne	L1685
	jmp	L1782
	.p2align 4,,10
	.p2align 3
L1732:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -116(%ebp)
	cmpl	%edx, %edi
	jge	L1731
	jmp	L1733
L1943:
	movl	%eax, %esi
	movl	14704(%eax), %eax
	movl	676(%ebx), %edi
	movl	%eax, -40(%ebp)
	movl	14708(%esi), %eax
	movl	%eax, -36(%ebp)
	movl	14712(%esi), %eax
	movl	%eax, -32(%ebp)
	movl	14716(%esi), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%esi), %xmm0
	leal	-40(%ebp), %eax
	mulss	14716(%esi), %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L1741
	movss	72(%ebx), %xmm1
	movss	68(%ebx), %xmm0
	movaps	%xmm4, %xmm2
	movl	%edi, %ecx
	addss	76(%ebx), %xmm0
	movl	%eax, 4(%esp)
	leal	68(%ebx), %eax
	movl	%eax, (%esp)
	movss	%xmm6, 8(%esp)
	addss	80(%ebx), %xmm1
	movss	%xmm4, -96(%ebp)
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movss	-96(%ebp), %xmm4
	subl	$12, %esp
	jmp	L1741
L1946:
	movl	$LC86, %ecx
	movl	$11, %edx
	movl	%edi, %eax
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	jmp	L1677
L1947:
	leal	1(%eax), %edx
	movl	%edx, -124(%ebp)
	testl	%eax, %eax
	jne	L1690
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -124(%ebp)
L1691:
	addl	$1, 188(%edi)
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	-124(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1693
	movl	%ecx, -128(%ebp)
	movl	84(%esi), %ecx
	movl	%edx, (%esp)
	sall	$3, %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-128(%ebp), %ecx
	testl	%eax, %eax
	je	L1694
	subl	$1, 188(%edi)
L1694:
	movl	%ecx, -128(%ebp)
	movl	%edx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-128(%ebp), %ecx
	movl	-120(%ebp), %edx
L1693:
	movl	-124(%ebp), %eax
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	movl	84(%esi), %eax
	movl	%eax, -120(%ebp)
	jmp	L1692
L1949:
	leal	2(%eax), %edx
	testl	%edi, %edi
	jne	L1703
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -88(%ebp)
L1704:
	movl	-88(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L1706
	addl	$1, 188(%edx)
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edi
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	testl	%edi, %edi
	je	L1707
	movl	84(%esi), %eax
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %ecx
	testl	%eax, %eax
	je	L1778
	movl	-116(%ebp), %edi
	subl	$1, 188(%edi)
L1778:
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %edx
L1707:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	jmp	L1705
L1948:
	leal	2(%eax), %edx
	testl	%edi, %edi
	jne	L1696
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -88(%ebp)
L1697:
	movl	-88(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L1699
	addl	$1, 188(%edx)
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	92(%esi), %edi
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	testl	%edi, %edi
	je	L1700
	movl	84(%esi), %eax
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %ecx
	testl	%eax, %eax
	je	L1780
	movl	-116(%ebp), %edi
	subl	$1, 188(%edi)
L1780:
	movl	%ecx, -120(%ebp)
	movl	%edx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %edx
L1700:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%edx, 92(%esi)
	movl	%eax, 88(%esi)
	jmp	L1698
L1735:
	movl	%ecx, -120(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-120(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L1736
	sall	$3, %edi
	movl	%ecx, -124(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -120(%ebp)
	call	_memcpy
	movl	-124(%ebp), %ecx
	movl	-120(%ebp), %edx
	movl	92(%ecx), %eax
	jmp	L1772
L1944:
	movl	84(%ecx), %eax
	movl	%eax, -108(%ebp)
	cmpl	88(%ecx), %eax
	je	L1952
L1747:
	imull	$28, %edi, %edi
	movss	-100(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	movl	-40(%ebp), %edx
	movl	92(%ecx), %eax
	movl	-108(%ebp), %esi
	mulss	__ZL17resize_border_def.lto_priv.0+20(%edi), %xmm0
	mulss	__ZL17resize_border_def.lto_priv.0+16(%edi), %xmm1
	movl	%edx, (%eax,%esi,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax,%esi,8)
	addss	%xmm7, %xmm0
	addl	$1, 84(%ecx)
	movl	676(%ebx), %esi
	addss	%xmm6, %xmm1
	addss	%xmm3, %xmm0
	addss	-96(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-88(%ebp), %xmm1
	movss	%xmm0, -36(%ebp)
	movss	%xmm1, -40(%ebp)
	movl	84(%esi), %edi
	cmpl	88(%esi), %edi
	je	L1953
L1755:
	movl	-40(%ebp), %edx
	movl	92(%esi), %eax
	movl	%edx, (%eax,%edi,8)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%eax,%edi,8)
	addl	$1, 84(%esi)
	leal	-40(%ebp), %esi
	jmp	L1756
L1696:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -88(%ebp)
	cmpl	%edx, %edi
	jge	L1695
	jmp	L1697
L1690:
	movl	-120(%ebp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	addl	%eax, %edx
	movl	-124(%ebp), %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	%edx, -124(%ebp)
	cmpl	%edx, -120(%ebp)
	jge	L1689
	jmp	L1691
L1703:
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movl	%edx, -88(%ebp)
	cmpl	%edx, %edi
	jge	L1702
	jmp	L1704
L1953:
	leal	1(%edi), %eax
	movl	%eax, -96(%ebp)
	testl	%edi, %edi
	jne	L1757
	movl	$8, %eax
	cmpl	%eax, -96(%ebp)
	cmovge	-96(%ebp), %eax
	movl	%eax, -96(%ebp)
L1758:
	movl	-96(%ebp), %eax
	movl	_GImGui, %edx
	sall	$3, %eax
	testl	%edx, %edx
	je	L1760
	addl	$1, 188(%edx)
	movl	%edx, -100(%ebp)
	xorl	%edx, %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -88(%ebp)
	movl	%eax, %edi
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1761
	movl	84(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	leal	0(,%edx,8), %ecx
	movl	%ecx, 8(%esp)
	call	_memcpy
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1768
	movl	-100(%ebp), %edx
	subl	$1, 188(%edx)
L1768:
	xorl	%edi, %edi
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L1761:
	movl	-88(%ebp), %eax
	movl	84(%esi), %edi
	movl	%eax, 92(%esi)
	movl	-96(%ebp), %eax
	movl	%eax, 88(%esi)
	jmp	L1755
L1952:
	leal	1(%eax), %edx
	movl	%edx, -112(%ebp)
	testl	%eax, %eax
	jne	L1748
	movl	$8, %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -116(%ebp)
L1749:
	movl	-116(%ebp), %eax
	movl	_GImGui, %esi
	sall	$3, %eax
	cmpl	$0, _GImGui
	je	L1751
	addl	$1, 188(%esi)
	xorl	%edx, %edx
	movl	%ecx, -124(%ebp)
	movss	%xmm3, -128(%ebp)
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -108(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-124(%ebp), %ecx
	movss	-108(%ebp), %xmm6
	movss	-120(%ebp), %xmm7
	movss	-128(%ebp), %xmm3
	movl	%eax, -112(%ebp)
	movl	92(%ecx), %edx
	testl	%edx, %edx
	je	L1752
	movl	84(%ecx), %eax
	movl	%ecx, -108(%ebp)
	movss	%xmm7, -124(%ebp)
	sall	$3, %eax
	movss	%xmm6, -120(%ebp)
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-108(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-128(%ebp), %xmm3
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L1770
	subl	$1, 188(%esi)
L1770:
	movl	%ecx, -124(%ebp)
	xorl	%ecx, %ecx
	movss	%xmm3, -128(%ebp)
	movss	%xmm7, -120(%ebp)
	movss	%xmm6, -108(%ebp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movss	-128(%ebp), %xmm3
	movl	-124(%ebp), %ecx
	movss	-120(%ebp), %xmm7
	movss	-108(%ebp), %xmm6
L1752:
	movl	-112(%ebp), %eax
	movl	%eax, 92(%ecx)
	movl	-116(%ebp), %eax
	movl	%eax, 88(%ecx)
	movl	84(%ecx), %eax
	movl	%eax, -108(%ebp)
	jmp	L1747
L1699:
	movl	%ecx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-116(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1700
	sall	$3, %edi
	movl	%ecx, -120(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -116(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %ecx
	jmp	L1780
L1706:
	movl	%ecx, -116(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-116(%ebp), %ecx
	movl	%eax, %edx
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1707
	sall	$3, %edi
	movl	%ecx, -120(%ebp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, -116(%ebp)
	call	_memcpy
	movl	92(%esi), %eax
	movl	-116(%ebp), %edx
	movl	-120(%ebp), %ecx
	jmp	L1778
L1748:
	movl	-108(%ebp), %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	-108(%ebp), %esi
	movl	-112(%ebp), %edx
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, -116(%ebp)
	cmpl	%eax, %esi
	jge	L1747
	jmp	L1749
L1757:
	movl	%edi, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-96(%ebp), %edx
	movl	%edx, %ecx
	addl	%edi, %eax
	cmpl	%edx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -96(%ebp)
	cmpl	%ecx, %edi
	jge	L1755
	jmp	L1758
L1751:
	xorl	%edx, %edx
	movl	%ecx, -128(%ebp)
	movss	%xmm3, -132(%ebp)
	movss	%xmm7, -124(%ebp)
	movss	%xmm6, -120(%ebp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-128(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-132(%ebp), %xmm3
	movl	%eax, -112(%ebp)
	movl	92(%ecx), %eax
	testl	%eax, %eax
	je	L1752
	movl	-108(%ebp), %edx
	movl	%ecx, -128(%ebp)
	movss	%xmm3, -132(%ebp)
	sall	$3, %edx
	movss	%xmm7, -124(%ebp)
	movss	%xmm6, -120(%ebp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	-128(%ebp), %ecx
	movss	-120(%ebp), %xmm6
	movss	-124(%ebp), %xmm7
	movss	-132(%ebp), %xmm3
	movl	92(%ecx), %eax
	jmp	L1770
L1760:
	xorl	%ecx, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	%eax, -88(%ebp)
	movl	92(%esi), %eax
	testl	%eax, %eax
	je	L1761
	sall	$3, %edi
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
	movl	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movl	92(%esi), %eax
	jmp	L1768
	.cfi_endproc
LFE196:
	.section .rdata,"dr"
LC89:
	.ascii "#COLLAPSE\0"
	.text
	.p2align 4
	.globl	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0
	.def	__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0;	.scl	2;	.type	32;	.endef
__ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.constprop.0:
LFB218:
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
	subl	$152, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_GImGui, %ebx
	movl	12(%eax), %eax
	movl	%edx, -96(%ebp)
	movl	%ecx, -100(%ebp)
	movl	18284(%ebx), %esi
	movl	%eax, -116(%ebp)
	movl	%esi, -104(%ebp)
	testb	$32, %al
	je	L1955
	movl	$1, 384(%edi)
	leal	-56(%ebp), %eax
	movss	14464(%ebx), %xmm5
	movss	15516(%ebx), %xmm3
	movl	%eax, -112(%ebp)
	movss	%xmm5, -88(%ebp)
	movss	%xmm3, -108(%ebp)
	movss	%xmm5, -92(%ebp)
L1956:
	movl	-104(%ebp), %eax
	movl	-116(%ebp), %esi
	movl	$0, 384(%edi)
	movl	$0x00000000, -104(%ebp)
	movl	%eax, 18284(%ebx)
	andl	$1048576, %esi
	je	L2003
	movss	-108(%ebp), %xmm3
	mulss	LC18, %xmm3
	movss	%xmm3, -104(%ebp)
L2003:
	movss	LC69, %xmm0
	movl	-100(%ebp), %eax
	xorl	%edx, %edx
	movl	$1, %ecx
	call	__ZN5ImGui12CalcTextSizeEPKcS1_bf
	xorps	%xmm0, %xmm0
	movss	-88(%ebp), %xmm6
	movss	14488(%ebx), %xmm7
	movl	%edx, -116(%ebp)
	addss	-116(%ebp), %xmm0
	movl	%eax, -108(%ebp)
	movss	-108(%ebp), %xmm5
	addss	-104(%ebp), %xmm5
	movss	%xmm7, -108(%ebp)
	movss	%xmm0, -76(%ebp)
	movss	14464(%ebx), %xmm0
	comiss	%xmm0, %xmm6
	movss	%xmm5, -116(%ebp)
	movss	%xmm5, -80(%ebp)
	jbe	L2004
	addss	%xmm7, %xmm6
	movss	%xmm6, -88(%ebp)
L2004:
	movss	-92(%ebp), %xmm4
	comiss	%xmm0, %xmm4
	jbe	L2006
	addss	-108(%ebp), %xmm4
	movss	%xmm4, -92(%ebp)
L2006:
	movss	14436(%ebx), %xmm5
	xorps	%xmm1, %xmm1
	movl	-96(%ebp), %eax
	comiss	%xmm1, %xmm5
	movss	8(%eax), %xmm2
	movss	(%eax), %xmm0
	jbe	L2011
	movss	LC15, %xmm1
	comiss	%xmm5, %xmm1
	ja	L2064
L2011:
	addss	-88(%ebp), %xmm0
	movl	-96(%ebp), %eax
	movaps	%xmm2, %xmm4
	subss	-92(%ebp), %xmm4
	movss	4(%eax), %xmm6
	movss	12(%eax), %xmm3
	movaps	%xmm0, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm4, %xmm7
	movss	%xmm6, -88(%ebp)
	unpcklps	%xmm3, %xmm7
	movaps	%xmm1, %xmm6
	movlhps	%xmm7, %xmm6
	movups	%xmm6, -72(%ebp)
	movss	-108(%ebp), %xmm6
	addss	%xmm4, %xmm6
	movaps	%xmm6, %xmm7
	minss	%xmm2, %xmm7
	movaps	%xmm7, %xmm2
	unpcklps	%xmm3, %xmm2
	movlhps	%xmm2, %xmm1
	movups	%xmm1, -56(%ebp)
	testl	%esi, %esi
	je	L2015
	movaps	%xmm4, %xmm1
	movss	-116(%ebp), %xmm2
	subss	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	comiss	%xmm1, %xmm0
	jbe	L2065
L2015:
	movl	-112(%ebp), %edi
	leal	-80(%ebp), %ecx
	addl	$14436, %ebx
	leal	-72(%ebp), %eax
	movl	%ebx, 4(%esp)
	leal	-64(%ebp), %edx
	movl	%edi, 8(%esp)
	movl	%ecx, (%esp)
	movl	-100(%ebp), %ecx
	call	__ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.constprop.0
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
L1955:
	.cfi_restore_state
	movl	-104(%ebp), %edx
	movl	14444(%ebx), %eax
	orl	$16, %edx
	movl	%edx, 18284(%ebx)
	movl	$1, 384(%edi)
	movss	15516(%ebx), %xmm5
	movss	14464(%ebx), %xmm0
	movss	%xmm5, -108(%ebp)
	cmpl	$-1, %eax
	je	L2026
	movl	14444(%ebx), %eax
	cmpl	$1, %eax
	je	L2066
	testl	%eax, %eax
	jne	L2027
	movl	-96(%ebp), %eax
	movss	-108(%ebp), %xmm5
	movss	%xmm0, -92(%ebp)
	movss	(%eax), %xmm1
	addss	%xmm0, %xmm5
	movss	4(%eax), %xmm3
	addss	%xmm0, %xmm1
	movss	%xmm5, -88(%ebp)
	subss	%xmm0, %xmm1
L1958:
	movl	284(%edi), %edx
	movl	292(%edi), %eax
	movl	%ebx, %esi
	movl	-4(%eax,%edx,4), %ecx
	xorl	%edx, %edx
	movl	$LC89, %eax
	call	__Z9ImHashStrPKcjj
	movss	-108(%ebp), %xmm4
	movl	%eax, -124(%ebp)
	movl	%eax, %ecx
	movl	(%edi), %eax
	cmpl	16200(%eax), %ecx
	je	L2067
L1959:
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm0
	movl	16148(%esi), %eax
	movl	-124(%ebp), %edx
	addss	%xmm4, %xmm2
	addss	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm1
	xorl	%ecx, %ecx
	movl	%eax, -120(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, -112(%ebp)
	addss	%xmm2, %xmm0
	movss	14468(%esi), %xmm2
	addss	%xmm2, %xmm2
	addss	%xmm4, %xmm2
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm0, %xmm1
	movups	%xmm1, -56(%ebp)
	call	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0
	leal	-81(%ebp), %eax
	movl	$0, 4(%esp)
	leal	-82(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-124(%ebp), %edx
	movl	-112(%ebp), %eax
	call	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i
	movzbl	-81(%ebp), %ecx
	movb	%al, -133(%ebp)
	movzbl	-82(%ebp), %eax
	movb	%al, -132(%ebp)
	testb	%cl, %cl
	je	L1960
	testb	%al, %al
	je	L1960
	movl	_GImGui, %edx
	movl	14992(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14996(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	15000(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	15004(%edx), %eax
	movl	%eax, -28(%ebp)
	movss	14404(%edx), %xmm3
	leal	-40(%ebp), %eax
	movss	15004(%edx), %xmm0
	movl	%eax, -124(%ebp)
	mulss	%xmm3, %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	_GImGui, %edx
	movl	%eax, -140(%ebp)
	movl	14624(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14628(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14632(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14636(%edx), %eax
	movl	%eax, -28(%ebp)
	mulss	14636(%edx), %xmm3
	movl	-124(%ebp), %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	%eax, -128(%ebp)
	movl	-120(%ebp), %eax
	movl	676(%eax), %edx
L1962:
	movss	-52(%ebp), %xmm1
	movss	-56(%ebp), %xmm0
	xorps	%xmm6, %xmm6
	movss	-44(%ebp), %xmm2
	movss	-48(%ebp), %xmm3
	movss	LC23, %xmm5
	movss	15516(%esi), %xmm4
	addss	%xmm1, %xmm2
	addss	%xmm0, %xmm3
	mulss	%xmm5, %xmm2
	mulss	%xmm5, %xmm3
	subss	%xmm5, %xmm2
	addss	%xmm6, %xmm3
	movss	%xmm2, -36(%ebp)
	movss	%xmm3, -40(%ebp)
	cmpl	$16777215, -140(%ebp)
	jbe	L1963
	mulss	%xmm5, %xmm4
	addss	LC15, %xmm4
	comiss	%xmm4, %xmm5
	ja	L1963
	movss	%xmm5, -132(%ebp)
	movaps	%xmm6, %xmm1
	movaps	%xmm4, %xmm0
	movss	LC90, %xmm2
	movl	$11, 4(%esp)
	movl	-124(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%edx, %ecx
	movl	%edx, -124(%ebp)
	call	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi
	movl	-124(%ebp), %edx
	movss	-132(%ebp), %xmm5
	subl	$8, %esp
	movl	84(%edx), %eax
	cmpl	$2, %eax
	jle	L1968
	movl	-140(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	92(%edx), %eax
	movl	%edx, %ecx
	movl	%eax, (%esp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	movss	-132(%ebp), %xmm5
	movl	-124(%ebp), %edx
	subl	$12, %esp
L1968:
	movl	-120(%ebp), %eax
	movl	$0, 84(%edx)
	movss	-52(%ebp), %xmm1
	movss	-56(%ebp), %xmm0
	movl	676(%eax), %edx
L1963:
	movl	44(%edx), %eax
	addss	14464(%esi), %xmm0
	xorps	%xmm7, %xmm7
	movss	LC91, %xmm2
	addss	14468(%esi), %xmm1
	movss	LC92, %xmm6
	movss	12(%eax), %xmm4
	movl	-120(%ebp), %eax
	mulss	%xmm4, %xmm2
	mulss	%xmm5, %xmm4
	mulss	%xmm2, %xmm6
	mulss	%xmm2, %xmm7
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm1
	mulss	LC93, %xmm2
	movaps	%xmm6, %xmm3
	xorps	LC22, %xmm3
	cmpb	$0, 226(%eax)
	jne	L1969
	movaps	%xmm2, %xmm5
	movaps	%xmm3, %xmm4
	movss	%xmm6, -124(%ebp)
	xorps	LC22, %xmm5
	movaps	%xmm7, %xmm6
	movss	-124(%ebp), %xmm7
	movaps	%xmm2, %xmm3
	movaps	%xmm4, %xmm2
L2025:
	addss	%xmm0, %xmm3
	addss	%xmm1, %xmm4
	addss	%xmm0, %xmm5
	addss	%xmm1, %xmm2
	addss	%xmm6, %xmm0
	addss	%xmm7, %xmm1
	movss	%xmm3, -80(%ebp)
	movss	%xmm4, -76(%ebp)
	movss	%xmm5, -72(%ebp)
	movss	%xmm2, -68(%ebp)
	movss	%xmm0, -40(%ebp)
	movss	%xmm1, -36(%ebp)
	cmpl	$16777215, -128(%ebp)
	jbe	L1971
	movl	84(%edx), %esi
	cmpl	88(%edx), %esi
	je	L2068
L1972:
	movl	92(%edx), %ecx
L1975:
	leal	(%ecx,%esi,8), %eax
	movl	-40(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-36(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	leal	1(%eax), %esi
	movl	%esi, 84(%edx)
	cmpl	%esi, 88(%edx)
	je	L2069
L1981:
	movl	92(%edx), %ecx
L1984:
	leal	(%ecx,%esi,8), %eax
	movl	-72(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-68(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	leal	1(%eax), %esi
	movl	%esi, 84(%edx)
	cmpl	%esi, 88(%edx)
	je	L2070
L1990:
	movl	92(%edx), %ecx
L1993:
	leal	(%ecx,%esi,8), %eax
	movl	-80(%ebp), %ecx
	movl	%ecx, (%eax)
	movl	-76(%ebp), %ecx
	movl	%ecx, 4(%eax)
	movl	84(%edx), %eax
	addl	$1, %eax
	movl	%eax, 84(%edx)
	cmpl	$2, %eax
	jle	L1999
	movl	-128(%ebp), %esi
	movl	%eax, 4(%esp)
	movl	%edx, %ecx
	movl	%esi, 8(%esp)
	movl	92(%edx), %eax
	movl	%eax, (%esp)
	movl	%edx, -124(%ebp)
	call	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0
	movl	-124(%ebp), %edx
	subl	$12, %esp
L1999:
	movl	$0, 84(%edx)
L1971:
	movl	_GImGui, %eax
	movl	16224(%eax), %edx
	testl	%edx, %edx
	jne	L2071
L2000:
	cmpb	$0, -133(%ebp)
	je	L1956
	movb	$1, 227(%edi)
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L2065:
	minss	%xmm1, %xmm4
	addss	-88(%ebp), %xmm3
	mulss	LC23, %xmm3
	comiss	%xmm0, %xmm4
	jbe	L2015
	movl	_GImGui, %eax
	movss	%xmm7, -96(%ebp)
	movss	%xmm4, -88(%ebp)
	movl	14624(%eax), %edx
	movl	%edx, -40(%ebp)
	movl	14628(%eax), %edx
	movl	%edx, -36(%ebp)
	movl	14632(%eax), %edx
	movl	%edx, -32(%ebp)
	movl	14636(%eax), %edx
	movl	%edx, -28(%ebp)
	movss	14636(%eax), %xmm0
	mulss	14404(%eax), %xmm0
	leal	-40(%ebp), %eax
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-88(%ebp), %edx
	movss	%xmm4, -92(%ebp)
	movl	%eax, %ecx
	movl	676(%edi), %eax
	movl	%ecx, (%esp)
	movss	%xmm3, -88(%ebp)
	movl	-88(%ebp), %ecx
	call	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j
	movss	-92(%ebp), %xmm2
	movss	-96(%ebp), %xmm7
	movss	LC23, %xmm0
	mulss	-104(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	subss	%xmm0, %xmm2
	minss	%xmm2, %xmm7
	movss	%xmm7, -48(%ebp)
	jmp	L2015
	.p2align 4,,10
	.p2align 3
L2064:
	movaps	%xmm5, %xmm3
	subss	LC23, %xmm3
	movss	%xmm3, -120(%ebp)
	flds	-120(%ebp)
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstps	-120(%ebp)
	movss	-120(%ebp), %xmm3
	movaps	%xmm1, %xmm4
	addss	%xmm3, %xmm3
	subss	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	comiss	%xmm4, %xmm3
	ja	L2012
	movaps	%xmm1, %xmm3
	cmpltss	%xmm4, %xmm3
	andps	%xmm3, %xmm1
	andnps	%xmm4, %xmm3
	orps	%xmm1, %xmm3
L2012:
	movaps	%xmm2, %xmm1
	movss	-88(%ebp), %xmm6
	movss	-92(%ebp), %xmm4
	subss	%xmm0, %xmm1
	subss	%xmm6, %xmm1
	subss	%xmm4, %xmm1
	movaps	%xmm1, %xmm7
	movaps	%xmm4, %xmm1
	subss	-116(%ebp), %xmm7
	cmpless	%xmm6, %xmm1
	movss	%xmm7, -88(%ebp)
	movaps	%xmm4, %xmm7
	movaps	%xmm6, %xmm4
	andps	%xmm1, %xmm4
	andnps	%xmm7, %xmm1
	orps	%xmm4, %xmm1
	minss	-88(%ebp), %xmm1
	movaps	%xmm7, %xmm4
	mulss	%xmm3, %xmm1
	movaps	%xmm1, %xmm3
	cmpless	%xmm6, %xmm3
	andps	%xmm3, %xmm6
	andnps	%xmm1, %xmm3
	orps	%xmm6, %xmm3
	movss	%xmm3, -88(%ebp)
	movaps	%xmm1, %xmm3
	cmpless	%xmm7, %xmm3
	andps	%xmm3, %xmm4
	andnps	%xmm1, %xmm3
	orps	%xmm4, %xmm3
	movss	%xmm3, -92(%ebp)
	jmp	L2011
	.p2align 4,,10
	.p2align 3
L1960:
	movzbl	-132(%ebp), %eax
	movl	_GImGui, %edx
	movb	%cl, -144(%ebp)
	addl	$34, %eax
	sall	$4, %eax
	addl	%edx, %eax
	movl	14416(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	14420(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	14424(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	14428(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movss	14404(%edx), %xmm3
	leal	-40(%ebp), %ecx
	movss	14428(%eax), %xmm0
	movl	%ecx, %eax
	movl	%ecx, -124(%ebp)
	mulss	%xmm3, %xmm0
	movss	%xmm0, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	_GImGui, %edx
	movl	%eax, -140(%ebp)
	movl	14624(%edx), %eax
	movl	%eax, -40(%ebp)
	movl	14628(%edx), %eax
	movl	%eax, -36(%ebp)
	movl	14632(%edx), %eax
	movl	%eax, -32(%ebp)
	movl	14636(%edx), %eax
	movl	%eax, -28(%ebp)
	mulss	14636(%edx), %xmm3
	movl	-124(%ebp), %eax
	movss	%xmm3, -28(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-120(%ebp), %ecx
	movl	%eax, -128(%ebp)
	movl	676(%ecx), %edx
	cmpb	$0, -144(%ebp)
	jne	L1962
	cmpb	$0, -132(%ebp)
	jne	L1962
	movss	-56(%ebp), %xmm0
	movss	-52(%ebp), %xmm1
	movss	LC23, %xmm5
	jmp	L1963
	.p2align 4,,10
	.p2align 3
L2066:
	movl	-96(%ebp), %eax
	addss	%xmm0, %xmm5
	movss	%xmm0, -88(%ebp)
	movss	8(%eax), %xmm1
	movss	4(%eax), %xmm3
	movss	%xmm5, -92(%ebp)
	subss	%xmm5, %xmm1
	subss	%xmm0, %xmm1
	jmp	L1958
	.p2align 4,,10
	.p2align 3
L1969:
	movaps	%xmm2, %xmm4
	movaps	%xmm3, %xmm5
	xorps	LC22, %xmm4
	jmp	L2025
	.p2align 4,,10
	.p2align 3
L2071:
	cmpl	18312(%eax), %edx
	jne	L2000
	cmpb	$0, 3536(%eax)
	je	L2000
	movss	48(%eax), %xmm0
	movss	14216(%eax), %xmm1
	mulss	%xmm0, %xmm0
	comiss	%xmm0, %xmm1
	jb	L2000
	movl	-120(%ebp), %eax
	xorl	%edx, %edx
	call	__ZN5ImGui28StartMouseMovingWindowOrNodeEP11ImGuiWindowP13ImGuiDockNodeb.constprop.0
	jmp	L2000
	.p2align 4,,10
	.p2align 3
L2027:
	xorps	%xmm3, %xmm3
	movss	%xmm0, -92(%ebp)
	movss	%xmm0, -88(%ebp)
	movaps	%xmm3, %xmm1
	jmp	L1958
	.p2align 4,,10
	.p2align 3
L2067:
	movl	-124(%ebp), %eax
	movl	$LC89, %ecx
	movl	$11, %edx
	movss	%xmm1, -120(%ebp)
	movss	%xmm3, -112(%ebp)
	call	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0
	movss	-120(%ebp), %xmm1
	movss	-112(%ebp), %xmm3
	movl	_GImGui, %esi
	movss	14464(%esi), %xmm0
	movss	15516(%esi), %xmm4
	jmp	L1959
	.p2align 4,,10
	.p2align 3
L2068:
	leal	1(%esi), %ecx
	testl	%esi, %esi
	jne	L1973
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
L1974:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1976
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L1977
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1979
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L1979:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L1977:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L1975
	.p2align 4,,10
	.p2align 3
L2070:
	addl	$2, %eax
	testl	%esi, %esi
	jne	L1991
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
L1992:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1994
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L1995
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1997
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L1997:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L1995:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L1993
	.p2align 4,,10
	.p2align 3
L2069:
	addl	$2, %eax
	testl	%esi, %esi
	jne	L1982
	movl	$8, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
L1983:
	movl	-124(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$3, %eax
	testl	%ecx, %ecx
	je	L1985
	addl	$1, 188(%ecx)
	movl	%edx, -140(%ebp)
	movl	%ecx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-140(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	movl	84(%edx), %esi
	testl	%eax, %eax
	je	L1986
	sall	$3, %esi
	movl	%edx, -144(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -140(%ebp)
	call	_memcpy
	movl	-144(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1988
	movl	-132(%ebp), %esi
	subl	$1, 188(%esi)
L1988:
	movl	%ecx, -140(%ebp)
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
	movl	-132(%ebp), %edx
	movl	-140(%ebp), %ecx
	movl	84(%edx), %esi
L1986:
	movl	-124(%ebp), %eax
	movl	%ecx, 92(%edx)
	movl	%eax, 88(%edx)
	jmp	L1984
	.p2align 4,,10
	.p2align 3
L1982:
	movl	%esi, %ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
	cmpl	%eax, %esi
	jge	L1981
	jmp	L1983
	.p2align 4,,10
	.p2align 3
L1991:
	movl	%esi, %ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	sarl	%ecx
	addl	%esi, %ecx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	movl	%eax, -124(%ebp)
	cmpl	%eax, %esi
	jge	L1990
	jmp	L1992
	.p2align 4,,10
	.p2align 3
L1973:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	%esi, %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movl	%ecx, -124(%ebp)
	cmpl	%ecx, %esi
	jge	L1972
	jmp	L1974
L1976:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1977
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L1979
L1994:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1995
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L1997
L1985:
	movl	%edx, -132(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-132(%ebp), %edx
	movl	%eax, %ecx
	movl	92(%edx), %eax
	testl	%eax, %eax
	je	L1986
	sall	$3, %esi
	movl	%edx, -140(%ebp)
	movl	%ecx, (%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, -132(%ebp)
	call	_memcpy
	movl	-140(%ebp), %edx
	movl	-132(%ebp), %ecx
	movl	92(%edx), %eax
	jmp	L1988
L2026:
	leal	-56(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	movl	%eax, -112(%ebp)
	movss	%xmm0, -88(%ebp)
	jmp	L1956
	.cfi_endproc
LFE218:
	.p2align 4
	.globl	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_
	.def	__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_;	.scl	2;	.type	32;	.endef
__ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_:
LFB228:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	%ecx, %eax
	andl	$-16, %esp
	subl	$16, %esp
	movl	%ecx, 824(%ebx)
	movl	%ebx, 12(%esp)
	movss	12(%esp), %xmm0
	movl	%ebx, 848(%ebx)
	shufps	$0, %xmm0, %xmm0
	movups	%xmm0, 832(%ebx)
	testl	%ecx, %ecx
	je	L2073
	movl	%edx, %ecx
	andl	$50331648, %ecx
	cmpl	$16777216, %ecx
	je	L2108
	movl	%edx, %ecx
	andl	$134217728, %ecx
	testl	$67108864, %edx
	je	L2079
L2077:
	movl	836(%eax), %edx
	movl	%edx, 836(%ebx)
L2106:
	testl	%ecx, %ecx
	jne	L2073
L2078:
	movl	844(%eax), %edx
	movl	%edx, 844(%ebx)
	.p2align 4
	.p2align 3
L2073:
	testb	$-128, 14(%ebx)
	je	L2072
	movl	%eax, 848(%ebx)
	testb	$-128, 14(%eax)
	je	L2072
	.p2align 5
	.p2align 4
	.p2align 3
L2081:
	movl	824(%eax), %eax
	movl	%eax, 848(%ebx)
	testb	$-128, 14(%eax)
	jne	L2081
L2072:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2079:
	.cfi_restore_state
	testl	%ecx, %ecx
	jne	L2073
	andl	$83886080, %edx
	je	L2073
	jmp	L2078
	.p2align 4,,10
	.p2align 3
L2108:
	movl	840(%eax), %ecx
	movl	%ecx, 840(%ebx)
	testb	$1, 909(%ebx)
	jne	L2075
	testb	$32, 15(%eax)
	jne	L2075
	movl	832(%eax), %ecx
	movl	%ecx, 832(%ebx)
	movl	%edx, %ecx
	andl	$134217728, %ecx
	andl	$67108864, %edx
	jne	L2077
	jmp	L2106
	.p2align 4,,10
	.p2align 3
L2075:
	movl	%edx, %ecx
	andl	$134217728, %ecx
	andl	$67108864, %edx
	jne	L2077
	jmp	L2106
	.cfi_endproc
LFE228:
	.globl	__ZL17resize_border_def.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZL17resize_border_def.lto_priv.0:
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1078530011
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	1083624420
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1070141403
	.globl	__ZL15resize_grip_def.lto_priv.0
	.align 32
__ZL15resize_grip_def.lto_priv.0:
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	3
	.long	0
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	3
	.long	6
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	6
	.long	9
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	9
	.long	12
LC94:
	.ascii "Size column to fit###SizeOne\0"
	.align 4
LC95:
	.ascii "Size all columns to fit###SizeAll\0"
	.align 4
LC96:
	.ascii "Size all columns to default###SizeAll\0"
LC97:
	.ascii "Reset order###ResetOrder\0"
LC98:
	.ascii "(Main menu bar)\0"
LC99:
	.ascii "(Popup)\0"
LC100:
	.ascii "(Untitled)\0"
LC101:
	.ascii "Hide tab bar###HideTabBar\0"
	.align 32
__ZL24GLocalizationEntriesEnUS:
	.long	0
	.long	LC94
	.long	1
	.long	LC95
	.long	2
	.long	LC96
	.long	3
	.long	LC97
	.long	4
	.long	LC98
	.long	5
	.long	LC99
	.long	6
	.long	LC100
	.long	7
	.long	LC101
	.align 32
__ZL13GStyleVarInfo:
	.long	8
	.long	1
	.long	0
	.long	8
	.long	1
	.long	4
	.long	8
	.long	2
	.long	8
	.long	8
	.long	1
	.long	16
	.long	8
	.long	1
	.long	20
	.long	8
	.long	2
	.long	24
	.long	8
	.long	2
	.long	32
	.long	8
	.long	1
	.long	44
	.long	8
	.long	1
	.long	48
	.long	8
	.long	1
	.long	52
	.long	8
	.long	1
	.long	56
	.long	8
	.long	2
	.long	60
	.long	8
	.long	1
	.long	68
	.long	8
	.long	1
	.long	72
	.long	8
	.long	2
	.long	76
	.long	8
	.long	2
	.long	84
	.long	8
	.long	1
	.long	108
	.long	8
	.long	2
	.long	92
	.long	8
	.long	1
	.long	116
	.long	8
	.long	1
	.long	120
	.long	8
	.long	1
	.long	124
	.long	8
	.long	1
	.long	128
	.long	8
	.long	1
	.long	136
	.long	8
	.long	2
	.long	152
	.long	8
	.long	2
	.long	160
	.long	8
	.long	1
	.long	168
	.long	8
	.long	2
	.long	172
	.long	8
	.long	2
	.long	180
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E6shifte:
	.long	0
	.long	6
	.long	4
	.long	2
	.long	0
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E4mins:
	.long	4194304
	.long	0
	.long	128
	.long	2048
	.long	65536
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E6shiftc:
	.long	0
	.long	18
	.long	12
	.long	6
	.long	0
	.align 4
__ZZ18ImTextCharFromUtf8PjPKcS1_E5masks:
	.long	0
	.long	127
	.long	31
	.long	15
	.long	7
	.align 32
__ZZ18ImTextCharFromUtf8PjPKcS1_E7lengths:
	.ascii "\1\1\1\1\1\1\1\1\1\1\1\1\1\1\1\1\0\0\0\0\0\0\0\0\2\2\2\2\3\3\4\0"
	.globl	__ZL17GCrc32LookupTable.lto_priv.0
	.align 32
__ZL17GCrc32LookupTable.lto_priv.0:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.align 32
_crc_lookup:
	.long	0
	.long	79764919
	.long	159529838
	.long	222504665
	.long	319059676
	.long	398814059
	.long	445009330
	.long	507990021
	.long	638119352
	.long	583659535
	.long	797628118
	.long	726387553
	.long	890018660
	.long	835552979
	.long	1015980042
	.long	944750013
	.long	1276238704
	.long	1221641927
	.long	1167319070
	.long	1095957929
	.long	1595256236
	.long	1540665371
	.long	1452775106
	.long	1381403509
	.long	1780037320
	.long	1859660671
	.long	1671105958
	.long	1733955601
	.long	2031960084
	.long	2111593891
	.long	1889500026
	.long	1952343757
	.long	-1742489888
	.long	-1662866601
	.long	-1851683442
	.long	-1788833735
	.long	-1960329156
	.long	-1880695413
	.long	-2103051438
	.long	-2040207643
	.long	-1104454824
	.long	-1159051537
	.long	-1213636554
	.long	-1284997759
	.long	-1389417084
	.long	-1444007885
	.long	-1532160278
	.long	-1603531939
	.long	-734892656
	.long	-789352409
	.long	-575645954
	.long	-646886583
	.long	-952755380
	.long	-1007220997
	.long	-827056094
	.long	-898286187
	.long	-231047128
	.long	-151282273
	.long	-71779514
	.long	-8804623
	.long	-515967244
	.long	-436212925
	.long	-390279782
	.long	-327299027
	.long	881225847
	.long	809987520
	.long	1023691545
	.long	969234094
	.long	662832811
	.long	591600412
	.long	771767749
	.long	717299826
	.long	311336399
	.long	374308984
	.long	453813921
	.long	533576470
	.long	25881363
	.long	88864420
	.long	134795389
	.long	214552010
	.long	2023205639
	.long	2086057648
	.long	1897238633
	.long	1976864222
	.long	1804852699
	.long	1867694188
	.long	1645340341
	.long	1724971778
	.long	1587496639
	.long	1516133128
	.long	1461550545
	.long	1406951526
	.long	1302016099
	.long	1230646740
	.long	1142491917
	.long	1087903418
	.long	-1398421865
	.long	-1469785312
	.long	-1524105735
	.long	-1578704818
	.long	-1079922613
	.long	-1151291908
	.long	-1239184603
	.long	-1293773166
	.long	-1968362705
	.long	-1905510760
	.long	-2094067647
	.long	-2014441994
	.long	-1716953613
	.long	-1654112188
	.long	-1876203875
	.long	-1796572374
	.long	-525066777
	.long	-462094256
	.long	-382327159
	.long	-302564546
	.long	-206542021
	.long	-143559028
	.long	-97365931
	.long	-17609246
	.long	-960696225
	.long	-1031934488
	.long	-817968335
	.long	-872425850
	.long	-709327229
	.long	-780559564
	.long	-600130067
	.long	-654598054
	.long	1762451694
	.long	1842216281
	.long	1619975040
	.long	1682949687
	.long	2047383090
	.long	2127137669
	.long	1938468188
	.long	2001449195
	.long	1325665622
	.long	1271206113
	.long	1183200824
	.long	1111960463
	.long	1543535498
	.long	1489069629
	.long	1434599652
	.long	1363369299
	.long	622672798
	.long	568075817
	.long	748617968
	.long	677256519
	.long	907627842
	.long	853037301
	.long	1067152940
	.long	995781531
	.long	51762726
	.long	131386257
	.long	177728840
	.long	240578815
	.long	269590778
	.long	349224269
	.long	429104020
	.long	491947555
	.long	-248556018
	.long	-168932423
	.long	-122852000
	.long	-60002089
	.long	-500490030
	.long	-420856475
	.long	-341238852
	.long	-278395381
	.long	-685261898
	.long	-739858943
	.long	-559578920
	.long	-630940305
	.long	-1004286614
	.long	-1058877219
	.long	-845023740
	.long	-916395085
	.long	-1119974018
	.long	-1174433591
	.long	-1262701040
	.long	-1333941337
	.long	-1371866206
	.long	-1426332139
	.long	-1481064244
	.long	-1552294533
	.long	-1690935098
	.long	-1611170447
	.long	-1833673816
	.long	-1770699233
	.long	-2009983462
	.long	-1930228819
	.long	-2119160460
	.long	-2056179517
	.long	1569362073
	.long	1498123566
	.long	1409854455
	.long	1355396672
	.long	1317987909
	.long	1246755826
	.long	1192025387
	.long	1137557660
	.long	2072149281
	.long	2135122070
	.long	1912620623
	.long	1992383480
	.long	1753615357
	.long	1816598090
	.long	1627664531
	.long	1707420964
	.long	295390185
	.long	358241886
	.long	404320391
	.long	483945776
	.long	43990325
	.long	106832002
	.long	186451547
	.long	266083308
	.long	932423249
	.long	861060070
	.long	1041341759
	.long	986742920
	.long	613929101
	.long	542559546
	.long	756411363
	.long	701822548
	.long	-978770311
	.long	-1050133554
	.long	-869589737
	.long	-924188512
	.long	-693284699
	.long	-764654318
	.long	-550540341
	.long	-605129092
	.long	-475935807
	.long	-413084042
	.long	-366743377
	.long	-287118056
	.long	-257573603
	.long	-194731862
	.long	-114850189
	.long	-35218492
	.long	-1984365303
	.long	-1921392450
	.long	-2143631769
	.long	-2063868976
	.long	-1698919467
	.long	-1635936670
	.long	-1824608069
	.long	-1744851700
	.long	-1347415887
	.long	-1418654458
	.long	-1506661409
	.long	-1561119128
	.long	-1129027987
	.long	-1200260134
	.long	-1254728445
	.long	-1309196108
	.long	0
	.long	-770063908
	.long	-1594712561
	.long	1928028115
	.long	1159995817
	.long	-1757552523
	.long	-438911066
	.long	936345210
	.long	-1974975662
	.long	1481736846
	.long	716889437
	.long	-123528063
	.long	-814980357
	.long	494248743
	.long	1872690420
	.long	-1115210456
	.long	273783571
	.long	-1035445553
	.long	-1331493604
	.long	1656407232
	.long	1433778874
	.long	-2022933658
	.long	-175692619
	.long	664724841
	.long	-1709582271
	.long	1207966109
	.long	988497486
	.long	-386758766
	.long	-549586456
	.long	220477492
	.long	2144298983
	.long	-1378441669
	.long	547567142
	.long	-222627846
	.long	-2142132183
	.long	1380477429
	.long	1703352207
	.long	-1214327213
	.long	-982152832
	.long	392972380
	.long	-1427409548
	.long	2029171880
	.long	169470843
	.long	-671077721
	.long	-271624995
	.long	1037473025
	.long	1329449682
	.long	-1658582258
	.long	821210421
	.long	-487887639
	.long	-1879035078
	.long	1108996838
	.long	1976994972
	.long	-1479586496
	.long	-719056237
	.long	121492303
	.long	-1162154393
	.long	1755525051
	.long	440954984
	.long	-934170188
	.long	-6369330
	.long	763825682
	.long	1600934337
	.long	-1921675235
	.long	1095134284
	.long	-1822446192
	.long	-508235197
	.long	866988959
	.long	73551333
	.long	-696546247
	.long	-1534012438
	.long	1988694582
	.long	-888262882
	.long	420998850
	.long	1811722513
	.long	-1176145715
	.long	-1909846345
	.long	1546899307
	.long	785944760
	.long	-54439580
	.long	1360525151
	.long	-2096220541
	.long	-236623536
	.long	603760780
	.long	338941686
	.long	-970320086
	.long	-1262401287
	.long	1725466917
	.long	-614484979
	.long	155612625
	.long	2074946050
	.long	-1447760930
	.long	-1636067932
	.long	1281512568
	.long	1049168811
	.long	-326055305
	.long	1642420842
	.long	-1275290698
	.long	-1055407003
	.long	319686073
	.long	616659907
	.long	-153568737
	.long	-2076973620
	.long	1445602320
	.long	-340977352
	.long	968153316
	.long	1264551735
	.long	-1723447573
	.long	-1366738799
	.long	2089875789
	.long	242984606
	.long	-597530814
	.long	1907671417
	.long	-1548943195
	.long	-783917194
	.long	56598186
	.long	881909968
	.long	-427220724
	.long	-1805484321
	.long	1182514947
	.long	-67337685
	.long	702890999
	.long	1527651364
	.long	-1994924552
	.long	-1093098622
	.long	1824612958
	.long	506084749
	.long	-869008303
	.long	-2104698728
	.long	1351948612
	.long	578700951
	.long	-261650613
	.long	-945227471
	.long	363935981
	.long	1733977918
	.long	-1253857566
	.long	147102666
	.long	-623027690
	.long	-1472854587
	.long	2049950745
	.long	1306573411
	.long	-1611039809
	.long	-317578132
	.long	1057744304
	.long	-1830993013
	.long	1086620247
	.long	841997700
	.long	-533324712
	.long	-671522270
	.long	98608126
	.long	1997274157
	.long	-1525531151
	.long	412418265
	.long	-896745211
	.long	-1201168682
	.long	1786666762
	.long	1571889520
	.long	-1884757844
	.long	-45891713
	.long	794459811
	.long	-1573916994
	.long	1882599266
	.long	48066737
	.long	-792415891
	.long	-418656489
	.long	890375883
	.long	1207521560
	.long	-1780444988
	.long	677883372
	.long	-92378064
	.long	-2003487773
	.long	1519186495
	.long	1833143365
	.long	-1084600935
	.long	-844033462
	.long	531157910
	.long	-1300335187
	.long	1617409137
	.long	311225250
	.long	-1063966082
	.long	-145075196
	.long	625186264
	.long	1470679563
	.long	-2051994665
	.long	943077119
	.long	-365955293
	.long	-1731942160
	.long	1256024364
	.long	2098337622
	.long	-1358178678
	.long	-572487335
	.long	267995269
	.long	-1010125612
	.long	299070728
	.long	1664625371
	.long	-1323177209
	.long	-2031184515
	.long	1425495201
	.long	639372146
	.long	-200947026
	.long	1233319814
	.long	-1684326822
	.long	-378508919
	.long	996780117
	.long	212260399
	.long	-557901837
	.long	-1403762656
	.long	2119010812
	.long	-744804409
	.long	25357851
	.long	1936306632
	.long	-1586466796
	.long	-1765863826
	.long	1151782834
	.long	911052897
	.long	-464236099
	.long	1507028117
	.long	-1949651639
	.long	-115215718
	.long	725103430
	.long	485969212
	.long	-823227168
	.long	-1140468941
	.long	1847333615
	.long	-479624462
	.long	829440814
	.long	1134238973
	.long	-1853694687
	.long	-1504861349
	.long	1951687303
	.long	113196372
	.long	-727253880
	.long	1763819936
	.long	-1153957764
	.long	-908894289
	.long	466263667
	.long	738582537
	.long	-31710763
	.long	-1929937402
	.long	1592704986
	.long	-214427167
	.long	555866173
	.long	1405781998
	.long	-2116860366
	.long	-1239664568
	.long	1678113172
	.long	384738887
	.long	-990419045
	.long	2037406387
	.long	-1419142289
	.long	-645741380
	.long	194708832
	.long	1012169498
	.long	-296895802
	.long	-1666783979
	.long	1321149641
	.long	0
	.long	30977159
	.long	61954318
	.long	40498569
	.long	123908636
	.long	112860827
	.long	80997138
	.long	84625301
	.long	247817272
	.long	253610175
	.long	225721654
	.long	212636081
	.long	161994276
	.long	142572195
	.long	169250602
	.long	198058925
	.long	495634544
	.long	475161847
	.long	507220350
	.long	534986233
	.long	451443308
	.long	456185579
	.long	425272162
	.long	411144165
	.long	323988552
	.long	311886031
	.long	285144390
	.long	287726017
	.long	338501204
	.long	368423635
	.long	396117850
	.long	373615581
	.long	991269088
	.long	986528871
	.long	950323694
	.long	964453737
	.long	1014440700
	.long	1034915451
	.long	1069972466
	.long	1042208629
	.long	902886616
	.long	872962143
	.long	912371158
	.long	934871377
	.long	850544324
	.long	862644803
	.long	822288330
	.long	819704653
	.long	647977104
	.long	659026967
	.long	623772062
	.long	620145945
	.long	570288780
	.long	539313675
	.long	575452034
	.long	596909829
	.long	677002408
	.long	696422447
	.long	736847270
	.long	708036897
	.long	792235700
	.long	786440755
	.long	747231162
	.long	760314685
	.long	1982538176
	.long	2012450119
	.long	1973057742
	.long	1950536777
	.long	1900647388
	.long	1888567131
	.long	1928907474
	.long	1931503189
	.long	2028881400
	.long	2033641855
	.long	2069830902
	.long	2055712881
	.long	2139944932
	.long	2119457635
	.long	2084417258
	.long	2112160365
	.long	1805773232
	.long	1786332471
	.long	1745924286
	.long	1774722105
	.long	1824742316
	.long	1830549291
	.long	1869742754
	.long	1856679461
	.long	1701088648
	.long	1690050831
	.long	1725289606
	.long	1728935937
	.long	1644576660
	.long	1675531027
	.long	1639409306
	.long	1617938973
	.long	1295954208
	.long	1290149287
	.long	1318053934
	.long	1331119273
	.long	1247544124
	.long	1266986939
	.long	1240291890
	.long	1211496117
	.long	1140577560
	.long	1109621151
	.long	1078627350
	.long	1100095633
	.long	1150904068
	.long	1161939843
	.long	1193819658
	.long	1190171277
	.long	1354004816
	.long	1366087127
	.long	1392844894
	.long	1390251225
	.long	1473694540
	.long	1443784651
	.long	1416073794
	.long	1438596805
	.long	1584471400
	.long	1604956655
	.long	1572881510
	.long	1545136353
	.long	1494462324
	.long	1489699827
	.long	1520629370
	.long	1534745341
	.long	-329890944
	.long	-309399801
	.long	-270067058
	.long	-297814519
	.long	-348851812
	.long	-353608421
	.long	-393893742
	.long	-379780075
	.long	-493672520
	.long	-481588417
	.long	-517833034
	.long	-520433103
	.long	-437152348
	.long	-467060445
	.long	-431960918
	.long	-409444307
	.long	-237204496
	.long	-268163209
	.long	-227683586
	.long	-206209415
	.long	-155305492
	.long	-144272021
	.long	-183541534
	.long	-187184027
	.long	-15077432
	.long	-20888753
	.long	-56052026
	.long	-42984895
	.long	-126132780
	.long	-106696365
	.long	-70646566
	.long	-99440547
	.long	-683420832
	.long	-694452249
	.long	-722302354
	.long	-718657815
	.long	-803118724
	.long	-772157957
	.long	-745523086
	.long	-766995211
	.long	-645482664
	.long	-664921121
	.long	-633868714
	.long	-605076783
	.long	-555481788
	.long	-549672509
	.long	-581608374
	.long	-594677555
	.long	-892790000
	.long	-888031337
	.long	-914865634
	.long	-928977255
	.long	-844388084
	.long	-864877173
	.long	-837095422
	.long	-809345915
	.long	-1005813976
	.long	-975907921
	.long	-943905242
	.long	-966423903
	.long	-1016148684
	.long	-1028234829
	.long	-1059089350
	.long	-1056491331
	.long	-1703058880
	.long	-1683632441
	.long	-1714668722
	.long	-1743480887
	.long	-1658859428
	.long	-1664647973
	.long	-1632728750
	.long	-1619647019
	.long	-1799879048
	.long	-1788826881
	.long	-1760993418
	.long	-1764625423
	.long	-1814383516
	.long	-1845356317
	.long	-1871975062
	.long	-1850523155
	.long	-2013812176
	.long	-2043738441
	.long	-2075724994
	.long	-2053218375
	.long	-2137712596
	.long	-2125613909
	.long	-2094776030
	.long	-2097353307
	.long	-1993159160
	.long	-1997905265
	.long	-1971087610
	.long	-1956955263
	.long	-1907327980
	.long	-1886859117
	.long	-1914624742
	.long	-1942386275
	.long	-1586957664
	.long	-1599054297
	.long	-1562793042
	.long	-1560213719
	.long	-1509277508
	.long	-1479349189
	.long	-1514464846
	.long	-1536969419
	.long	-1347578216
	.long	-1368049121
	.long	-1407397994
	.long	-1379638511
	.long	-1462819708
	.long	-1458075645
	.long	-1417773686
	.long	-1431908083
	.long	-1126024496
	.long	-1120233897
	.long	-1085053986
	.long	-1098133671
	.long	-1149204276
	.long	-1168628661
	.long	-1204694590
	.long	-1175880379
	.long	-1306042648
	.long	-1275071889
	.long	-1315567642
	.long	-1337021599
	.long	-1253708556
	.long	-1264762765
	.long	-1225476614
	.long	-1221846659
	.long	0
	.long	-596796745
	.long	-1139136295
	.long	1618457198
	.long	2096450565
	.long	-1600596302
	.long	-1058052900
	.long	478346859
	.long	-102066166
	.long	629605053
	.long	1173401811
	.long	-1717753244
	.long	-2061511665
	.long	1500663480
	.long	956693718
	.long	-446142879
	.long	-149672541
	.long	729397012
	.long	1259210106
	.long	-1755078707
	.long	-1948163674
	.long	1468857105
	.long	939215231
	.long	-342436920
	.long	251573673
	.long	-762106082
	.long	-1293640336
	.long	1854474183
	.long	1913387436
	.long	-1369021669
	.long	-837693067
	.long	310135746
	.long	-353810703
	.long	914676806
	.long	1458794024
	.long	-1969294177
	.long	-1776547084
	.long	1248956483
	.long	705045037
	.long	-160712550
	.long	319020795
	.long	-814857140
	.long	-1357253086
	.long	1937009813
	.long	1878430462
	.long	-1281685431
	.long	-739460569
	.long	260120720
	.long	503147346
	.long	-1047465499
	.long	-1578679413
	.long	2106251580
	.long	1627924311
	.long	-1117405728
	.long	-586018930
	.long	25138489
	.long	-468192424
	.long	947546607
	.long	1477303169
	.long	-2074066634
	.long	-1729970339
	.long	1150232042
	.long	620271492
	.long	-124449485
	.long	-787247019
	.long	226364130
	.long	1829353612
	.long	-1318837701
	.long	-1377379248
	.long	1904953063
	.long	301790345
	.long	-846107074
	.long	687409247
	.long	-191589656
	.long	-1797054330
	.long	1217313329
	.long	1410090074
	.long	-2006851859
	.long	-401183613
	.long	880539188
	.long	638041590
	.long	-93706431
	.long	-1709337297
	.long	1181749144
	.long	1525871091
	.long	-2036372668
	.long	-420947670
	.long	981812125
	.long	-538106372
	.long	58769227
	.long	1677135141
	.long	-1080387694
	.long	-1558681095
	.long	2138436430
	.long	520241440
	.long	-1016079465
	.long	1006294692
	.long	-409514989
	.long	-2015297923
	.long	1535993034
	.long	1192204961
	.long	-1688076266
	.long	-82464136
	.long	662186191
	.long	-1039118674
	.long	511562777
	.long	2114610807
	.long	-1570243392
	.long	-1092287829
	.long	1653119004
	.long	50276978
	.long	-560811835
	.long	-856753401
	.long	277045680
	.long	1895093214
	.long	-1399240343
	.long	-1340360958
	.long	1819684277
	.long	201433051
	.long	-798227092
	.long	889479949
	.long	-378930758
	.long	-1994503212
	.long	1433653603
	.long	1240542984
	.long	-1784891969
	.long	-169146415
	.long	696687974
	.long	-1494860515
	.long	2055972778
	.long	452728260
	.long	-963539085
	.long	-636260072
	.long	108981167
	.long	1711888833
	.long	-1167801482
	.long	1594664215
	.long	-2090778720
	.long	-485061170
	.long	1065031545
	.long	603580690
	.long	-7048283
	.long	-1612463669
	.long	1133403004
	.long	1374818494
	.long	-1918924279
	.long	-303548313
	.long	830841552
	.long	755457211
	.long	-244660724
	.long	-1860340638
	.long	1299246805
	.long	-1474787148
	.long	1953829379
	.long	335716461
	.long	-932234534
	.long	-722615119
	.long	142630406
	.long	1761078376
	.long	-1264945441
	.long	1276083180
	.long	-1872567973
	.long	-267037899
	.long	746113410
	.long	821704681
	.long	-325604002
	.long	-1931469008
	.long	1351452039
	.long	-1243225114
	.long	1770551633
	.long	167758655
	.long	-711831160
	.long	-921653277
	.long	360527188
	.long	1963624250
	.long	-1452860019
	.long	-1155836337
	.long	1735838968
	.long	117538454
	.long	-613620703
	.long	-940697014
	.long	461603069
	.long	2079601299
	.long	-1483102172
	.long	1123143237
	.long	-1633921806
	.long	-18094436
	.long	579238955
	.long	1040482880
	.long	-496428809
	.long	-2111919463
	.long	1584607278
	.long	2012589384
	.long	-1416087553
	.long	-873495151
	.long	394403622
	.long	184607053
	.long	-680690694
	.long	-1222981228
	.long	1802982179
	.long	-1910557374
	.long	1383247861
	.long	839196059
	.long	-295139540
	.long	-219514553
	.long	780657648
	.long	1324372382
	.long	-1835152599
	.long	-2132705045
	.long	1552685660
	.long	1023125554
	.long	-527027579
	.long	-65745682
	.long	544822873
	.long	1074717751
	.long	-1671201152
	.long	2030770401
	.long	-1520008618
	.long	-988729288
	.long	427600527
	.long	100553956
	.long	-644624813
	.long	-1176208323
	.long	1703536266
	.long	-1659049031
	.long	1097953550
	.long	554091360
	.long	-43296297
	.long	-504780868
	.long	1032076555
	.long	1576243045
	.long	-2120346158
	.long	1693873075
	.long	-1197741820
	.long	-655598742
	.long	75612637
	.long	402866102
	.long	-999381759
	.long	-1541859473
	.long	2020904408
	.long	1778959898
	.long	-1234871123
	.long	-703402301
	.long	176125044
	.long	385714719
	.long	-896528216
	.long	-1427660090
	.long	1988769905
	.long	-1813881328
	.long	1334822055
	.long	804812489
	.long	-208278402
	.long	-283700715
	.long	863668386
	.long	1393375948
	.long	-1889492869
	.long	0
	.long	1225615245
	.long	-1843736806
	.long	-619206505
	.long	552895363
	.long	1777984526
	.long	-1293005671
	.long	-68998380
	.long	1105790726
	.long	149184651
	.long	-738998244
	.long	-1694584943
	.long	1629324421
	.long	672195336
	.long	-217625697
	.long	-1173738478
	.long	-2083385844
	.long	-891328127
	.long	298369302
	.long	1489348251
	.long	-1557754481
	.long	-366220798
	.long	826032789
	.long	2016486680
	.long	-1036318454
	.long	-1959367033
	.long	1344390672
	.long	422355357
	.long	-489715063
	.long	-1413288700
	.long	1893025171
	.long	970465822
	.long	56951215
	.long	1248355874
	.long	-1853894987
	.long	-663574216
	.long	596738604
	.long	1788667297
	.long	-1316270794
	.long	-125424965
	.long	1116473001
	.long	193028388
	.long	-795424333
	.long	-1717850562
	.long	1652065578
	.long	729146023
	.long	-261993936
	.long	-1183896131
	.long	-2135486557
	.long	-910530514
	.long	313376953
	.long	1537255220
	.long	-1606185952
	.long	-380703827
	.long	844710714
	.long	2069111991
	.long	-1050802011
	.long	-2007797976
	.long	1397016511
	.long	441032754
	.long	-508916954
	.long	-1465389909
	.long	1940931644
	.long	985473969
	.long	113902430
	.long	1338467539
	.long	-1798255548
	.long	-572675127
	.long	641630429
	.long	1865672528
	.long	-1272688697
	.long	-47634358
	.long	1193477208
	.long	237921237
	.long	-717632702
	.long	-1674269489
	.long	1742178267
	.long	786096214
	.long	-171095871
	.long	-1128255668
	.long	-2062021294
	.long	-871011617
	.long	386056776
	.long	1578083781
	.long	-1511223599
	.long	-320738980
	.long	938885579
	.long	2130388550
	.long	-990836140
	.long	-1912836647
	.long	1458292046
	.long	535208643
	.long	-469399081
	.long	-1391923622
	.long	1981761229
	.long	1058152768
	.long	95355633
	.long	1285711228
	.long	-1749692949
	.long	-558323098
	.long	626753906
	.long	1817634559
	.long	-1220456856
	.long	-28562971
	.long	1145439735
	.long	223044218
	.long	-698561811
	.long	-1622037152
	.long	1689421428
	.long	767549945
	.long	-156743314
	.long	-1079693597
	.long	-2038625027
	.long	-814716048
	.long	342344679
	.long	1567269994
	.long	-1500934274
	.long	-276502285
	.long	882065508
	.long	2107516905
	.long	-946598917
	.long	-1902547850
	.long	1435419873
	.long	478389100
	.long	-413104008
	.long	-1368526859
	.long	1970947938
	.long	1014440175
	.long	227804860
	.long	1150902577
	.long	-1618032218
	.long	-696013269
	.long	761300287
	.long	1684923058
	.long	-1082504667
	.long	-159961688
	.long	1283260858
	.long	91252279
	.long	-563622240
	.long	-1754617555
	.long	1820951097
	.long	629466548
	.long	-23900893
	.long	-1214371154
	.long	-1908012880
	.long	-951357635
	.long	475842474
	.long	1431412775
	.long	-1364030669
	.long	-406852418
	.long	1017660457
	.long	1973756836
	.long	-810610762
	.long	-2036176837
	.long	1572192428
	.long	347645729
	.long	-279213003
	.long	-1504253000
	.long	2101429039
	.long	877405346
	.long	250677011
	.long	1207722142
	.long	-1662269431
	.long	-706302076
	.long	772113552
	.long	1728635677
	.long	-1138799734
	.long	-183358457
	.long	1326972949
	.long	102066072
	.long	-587018481
	.long	-1810913150
	.long	1877771158
	.long	652338203
	.long	-34190196
	.long	-1258607871
	.long	-1927083745
	.long	-1003589998
	.long	523879941
	.long	1446289800
	.long	-1378383204
	.long	-455414511
	.long	1070417286
	.long	1992303115
	.long	-859173351
	.long	-2050528876
	.long	1590739203
	.long	400402062
	.long	-331444838
	.long	-1523324393
	.long	2116305536
	.long	925443341
	.long	190711266
	.long	1112760943
	.long	-1723544840
	.long	-800477835
	.long	732595809
	.long	1655169516
	.long	-1179629189
	.long	-256037130
	.long	1253507812
	.long	62547305
	.long	-659698178
	.long	-1851741581
	.long	1782808935
	.long	592373482
	.long	-128364931
	.long	-1319884304
	.long	-2004087826
	.long	-1048482717
	.long	446088436
	.long	1402708857
	.long	-1468495763
	.long	-512364576
	.long	979519351
	.long	1936662778
	.long	-916124440
	.long	-2140640411
	.long	1535099890
	.long	309503103
	.long	-376336533
	.long	-1600329498
	.long	2072723569
	.long	847652860
	.long	138085453
	.long	1094083520
	.long	-1709061289
	.long	-752046886
	.long	684689358
	.long	1640161347
	.long	-1160427308
	.long	-203935911
	.long	1238500171
	.long	14640326
	.long	-607597487
	.long	-1832539172
	.long	1764131016
	.long	539748165
	.long	-79933486
	.long	-1305401249
	.long	-1947661759
	.long	-1025217076
	.long	435406171
	.long	1358865110
	.long	-1424127550
	.long	-502206897
	.long	956778200
	.long	1879712085
	.long	-905966265
	.long	-2096272694
	.long	1478148701
	.long	286762448
	.long	-353071420
	.long	-1543902903
	.long	2028880350
	.long	836970067
	.long	0
	.long	455609720
	.long	911219440
	.long	762845064
	.long	1822438880
	.long	2005416088
	.long	1525690128
	.long	1104683624
	.long	-650089536
	.long	-1033345352
	.long	-284135120
	.long	-197624760
	.long	-1243587040
	.long	-1362603176
	.long	-2085600048
	.long	-1734850136
	.long	-1237202377
	.long	-1385576625
	.long	-2146316089
	.long	-1690706497
	.long	-622723113
	.long	-1043729745
	.long	-323885785
	.long	-140908449
	.long	1862377975
	.long	1948888207
	.long	1498528519
	.long	1115272831
	.long	60920855
	.long	411670895
	.long	905023207
	.long	786006943
	.long	1749191129
	.long	1936360609
	.long	1578275625
	.long	1161469521
	.long	81968185
	.long	533377345
	.long	850568905
	.long	698002353
	.long	-1325211111
	.long	-1440026783
	.long	-2024605463
	.long	-1669663343
	.long	-576530439
	.long	-963978623
	.long	-336409335
	.long	-254099343
	.long	-570211346
	.long	-987017578
	.long	-397190882
	.long	-210021274
	.long	-1297910258
	.long	-1450476682
	.long	-2064421634
	.long	-1613012602
	.long	121841710
	.long	476783958
	.long	823341790
	.long	708525990
	.long	1810046414
	.long	1892356278
	.long	1572013886
	.long	1184565830
	.long	-796585038
	.long	-877846838
	.long	-422246078
	.long	-33749958
	.long	-1138416046
	.long	-1492309206
	.long	-1972028254
	.long	-1856163366
	.long	163936370
	.long	317551882
	.long	1066754690
	.long	616394746
	.long	1701137810
	.long	2118992106
	.long	1396004706
	.long	1209883162
	.long	1724176773
	.long	2112673021
	.long	1351926645
	.long	1270664717
	.long	174386277
	.long	290251037
	.long	1010103957
	.long	656210925
	.long	-1081822651
	.long	-1532182723
	.long	-1982551883
	.long	-1828936243
	.long	-752580699
	.long	-938702115
	.long	-445342379
	.long	-27488211
	.long	-1194878357
	.long	-1544579309
	.long	-1902673765
	.long	-1782608413
	.long	-731402357
	.long	-816864525
	.long	-499665541
	.long	-115361789
	.long	1636299179
	.long	2058353875
	.long	1473768283
	.long	1291839011
	.long	220709963
	.long	370133299
	.long	997711547
	.long	543151043
	.long	243683420
	.long	363748644
	.long	953567916
	.long	603867092
	.long	1646683580
	.long	2030987460
	.long	1417051980
	.long	1331589684
	.long	-674874468
	.long	-856803612
	.long	-510254740
	.long	-88200172
	.long	-1150939524
	.long	-1605500156
	.long	-1925835636
	.long	-1776412172
	.long	-1513407789
	.long	-1092405333
	.long	-1818550237
	.long	-2001523365
	.long	-915730637
	.long	-767360437
	.long	-12905021
	.long	-468510533
	.long	2089505043
	.long	1738759275
	.long	1255885795
	.long	1374897819
	.long	271279347
	.long	184773003
	.long	645627395
	.long	1028879227
	.long	327872740
	.long	144899484
	.long	635103764
	.long	1056106348
	.long	2133509380
	.long	1677903996
	.long	1232789492
	.long	1381159564
	.long	-892691676
	.long	-773679524
	.long	-56983084
	.long	-407728980
	.long	-1502957884
	.long	-1119706180
	.long	-1875200972
	.long	-1961707188
	.long	-846613750
	.long	-694043022
	.long	-69621254
	.long	-521034622
	.long	-1591114006
	.long	-1174303854
	.long	-1753637862
	.long	-1940811422
	.long	348772554
	.long	266458546
	.long	580502074
	.long	967954242
	.long	2020207914
	.long	1665261650
	.long	1312421850
	.long	1427241634
	.long	2076735805
	.long	1625322565
	.long	1301832653
	.long	1454403253
	.long	392711389
	.long	205537701
	.long	557340205
	.long	974150485
	.long	-1568140547
	.long	-1180688507
	.long	-1797781491
	.long	-1880095371
	.long	-836229347
	.long	-721409435
	.long	-126337555
	.long	-481283947
	.long	1968056673
	.long	1852187673
	.long	1126052753
	.long	1479950057
	.long	435035265
	.long	46535161
	.long	800982641
	.long	882248457
	.long	-1408351583
	.long	-1222225959
	.long	-1705093039
	.long	-2122951383
	.long	-1062308031
	.long	-611943879
	.long	-151097935
	.long	-304717623
	.long	-1022368938
	.long	-668471762
	.long	-178259546
	.long	-294128418
	.long	-1347430730
	.long	-1266164786
	.long	-1711289274
	.long	-2099789506
	.long	441419926
	.long	23561710
	.long	740266598
	.long	926392094
	.long	1995423094
	.long	1841803278
	.long	1086302086
	.long	1536666366
	.long	487366840
	.long	103067072
	.long	727497288
	.long	812955440
	.long	1907135832
	.long	1787074592
	.long	1207734184
	.long	1557430992
	.long	-1001600136
	.long	-547043840
	.long	-232992376
	.long	-382411536
	.long	-1460863336
	.long	-1278938144
	.long	-1631787928
	.long	-2053838576
	.long	-1420989809
	.long	-1335531529
	.long	-1659015041
	.long	-2043314937
	.long	-940744849
	.long	-591048169
	.long	-239254113
	.long	-359315225
	.long	1913454927
	.long	1764035639
	.long	1146952639
	.long	1601509063
	.long	514667695
	.long	92617175
	.long	687681119
	.long	869606183
	.long	0
	.long	1331128337
	.long	-1632710622
	.long	-772163533
	.long	966573555
	.long	1993070050
	.long	-1489867311
	.long	-396032576
	.long	1933147110
	.long	1013847031
	.long	-308827196
	.long	-1564425259
	.long	1252378133
	.long	99790340
	.long	-737470921
	.long	-1688437210
	.long	-428673076
	.long	-1457152035
	.long	2027694062
	.long	931876863
	.long	-538031553
	.long	-1866915282
	.long	1094752797
	.long	236450316
	.long	-1790211030
	.long	-635640773
	.long	199580680
	.long	1152529433
	.long	-1395183143
	.long	-478127672
	.long	846848507
	.long	2100201962
	.long	-937102801
	.long	-2022467010
	.long	1451893261
	.long	433932828
	.long	-239579172
	.long	-1091622963
	.long	1863753726
	.long	541194223
	.long	-1155692087
	.long	-196419112
	.long	632510955
	.long	1793339898
	.long	-2105461702
	.long	-841589717
	.long	472900632
	.long	1400409097
	.long	777389539
	.long	1627483634
	.long	-1325869631
	.long	-5259824
	.long	399161360
	.long	1486737409
	.long	-1989908430
	.long	-969736157
	.long	1567587845
	.long	305665556
	.long	-1010717145
	.long	-1936275914
	.long	1693697014
	.long	732212199
	.long	-94563372
	.long	-1257604155
	.long	-1802962455
	.long	-606105096
	.long	170273227
	.long	1165050330
	.long	-1391180774
	.long	-498914293
	.long	867865656
	.long	2095971369
	.long	-407797233
	.long	-1461261794
	.long	2032095789
	.long	910703164
	.long	-567459844
	.long	-1854253075
	.long	1082388446
	.long	265586639
	.long	1928990245
	.long	1034774068
	.long	-329982457
	.long	-1560037866
	.long	1265021910
	.long	70376391
	.long	-708287500
	.long	-1700852763
	.long	29586883
	.long	1318329810
	.long	-1620204063
	.long	-801452560
	.long	945801264
	.long	1997053985
	.long	-1494149102
	.long	-374968317
	.long	1554779078
	.long	335242199
	.long	-1040000028
	.long	-1923763211
	.long	1697691189
	.long	711450148
	.long	-73505257
	.long	-1261892090
	.long	798322720
	.long	1623332913
	.long	-1321492478
	.long	-26425325
	.long	369741267
	.long	1499375042
	.long	-2002313743
	.long	-940542496
	.long	-1159791606
	.long	-175533029
	.long	611331112
	.long	1797735481
	.long	-2092809735
	.long	-871028248
	.long	502043099
	.long	1388050890
	.long	-907573268
	.long	-2035224579
	.long	1464424398
	.long	404635615
	.long	-260359649
	.long	-1087614450
	.long	1859512893
	.long	562201132
	.long	768667237
	.long	1653048948
	.long	-1283572153
	.long	-64399786
	.long	340546454
	.long	1528511367
	.long	-1964866636
	.long	-977933403
	.long	1592366467
	.long	297729426
	.long	-1069070943
	.long	-1894765136
	.long	1735731312
	.long	673333345
	.long	-103024558
	.long	-1232302013
	.long	-878569047
	.long	-2064289352
	.long	1426901387
	.long	442212762
	.long	-230775718
	.long	-1117139893
	.long	1821406328
	.long	600251497
	.long	-1197776305
	.long	-137622946
	.long	641053293
	.long	1768086140
	.long	-2130190404
	.long	-833570899
	.long	531173278
	.long	1358849935
	.long	-436986806
	.long	-1432128421
	.long	2069548136
	.long	873309305
	.long	-597122631
	.long	-1824536152
	.long	1120301467
	.long	227613066
	.long	-1764923476
	.long	-644214851
	.long	140752782
	.long	1194647455
	.long	-1353590177
	.long	-536432050
	.long	838797949
	.long	2124964460
	.long	59173766
	.long	1288799127
	.long	-1658307676
	.long	-763407435
	.long	974804597
	.long	1967996516
	.long	-1531673001
	.long	-337383866
	.long	1891602528
	.long	1072232561
	.long	-300859326
	.long	-1589237677
	.long	1227042195
	.long	108283266
	.long	-678560335
	.long	-1730505312
	.long	-1185409140
	.long	-166756451
	.long	670484398
	.long	1755426751
	.long	-2134594945
	.long	-812400018
	.long	510294621
	.long	1362956876
	.long	-899584918
	.long	-2060057477
	.long	1422900296
	.long	463000665
	.long	-201469543
	.long	-1129662072
	.long	1834156475
	.long	570714538
	.long	1596645440
	.long	276662353
	.long	-1048301470
	.long	-1898751885
	.long	1723227571
	.long	702625186
	.long	-132608623
	.long	-1219500672
	.long	739482534
	.long	1665463223
	.long	-1296217212
	.long	-34987115
	.long	361702997
	.long	1524125252
	.long	-1960708489
	.long	-998859162
	.long	1904010659
	.long	1043041714
	.long	-271436415
	.long	-1601872496
	.long	1222662224
	.long	129445953
	.long	-699496334
	.long	-1726357405
	.long	38116933
	.long	1293088340
	.long	-1662300569
	.long	-742644106
	.long	1004086198
	.long	1955482535
	.long	-1518865516
	.long	-366961787
	.long	-1760685457
	.long	-665224578
	.long	161530445
	.long	1190636124
	.long	-1366118500
	.long	-507132019
	.long	809271230
	.long	2137724847
	.long	-466130551
	.long	-1419771496
	.long	2056894891
	.long	902746554
	.long	-575941510
	.long	-1828930453
	.long	1124402264
	.long	206728265
	.long	0
	.long	1537334474
	.long	-1220298348
	.long	-320707234
	.long	1783000735
	.long	837268053
	.long	-586819829
	.long	-2036069439
	.long	-728965826
	.long	-1892875788
	.long	1674536106
	.long	946780256
	.long	-1094011999
	.long	-445943957
	.long	159975989
	.long	1378408191
	.long	-1378310197
	.long	-159810815
	.long	446373471
	.long	1094369941
	.long	-945895084
	.long	-1673587298
	.long	1893560512
	.long	729590794
	.long	2035579637
	.long	586524223
	.long	-837303455
	.long	-1783226453
	.long	319951978
	.long	1219741856
	.long	-1538150914
	.long	-1019596
	.long	1601196577
	.long	80842475
	.long	-399250507
	.long	-1282263169
	.long	892746942
	.long	1855447156
	.long	-2106227414
	.long	-640394784
	.long	-1946382561
	.long	-799190059
	.long	1019164299
	.long	1730079297
	.long	-507846272
	.long	-1172619958
	.long	1459181588
	.long	223904990
	.long	-223808022
	.long	-1459017440
	.long	1173048446
	.long	508203188
	.long	-1729193099
	.long	-1018214465
	.long	799875809
	.long	1947008555
	.long	639903956
	.long	2105930782
	.long	-1855483584
	.long	-892973686
	.long	1281508939
	.long	398695041
	.long	-81657889
	.long	-1602215147
	.long	-1092574142
	.long	-448694136
	.long	161684950
	.long	1375912220
	.long	-727266595
	.long	-1895361001
	.long	1675981641
	.long	944025475
	.long	1785493884
	.long	835560886
	.long	-584072984
	.long	-2037507038
	.long	2758627
	.long	1535888169
	.long	-1217810825
	.long	-322407747
	.long	322438025
	.long	1218043715
	.long	-1535395299
	.long	-2464041
	.long	2038328598
	.long	585085404
	.long	-834808702
	.long	-1784936376
	.long	-944447817
	.long	-1676344707
	.long	1895261987
	.long	727104489
	.long	-1376604120
	.long	-162304798
	.long	447809980
	.long	1091622262
	.long	-510593437
	.long	-1171182935
	.long	1456689143
	.long	225612605
	.long	-1948870404
	.long	-797490122
	.long	1016406376
	.long	1731526050
	.long	891038557
	.long	1857943447
	.long	-2107665719
	.long	-637645309
	.long	1599751618
	.long	83597576
	.long	-400950186
	.long	-1279778660
	.long	1279807912
	.long	401182050
	.long	-83105732
	.long	-1599458058
	.long	638467895
	.long	2108679165
	.long	-1857190237
	.long	-890480023
	.long	-1731949418
	.long	-1016770468
	.long	797390082
	.long	1948707272
	.long	-226303479
	.long	-1457307965
	.long	1170299805
	.long	509642583
	.long	2030064947
	.long	581011961
	.long	-834409305
	.long	-1780338579
	.long	323369900
	.long	1223157606
	.long	-1543142856
	.long	-6005006
	.long	-1383299059
	.long	-164801337
	.long	449786265
	.long	1097788755
	.long	-943004014
	.long	-1670694312
	.long	1888050950
	.long	724075468
	.long	-723979528
	.long	-1887883726
	.long	1671121772
	.long	943364006
	.long	-1096901529
	.long	-448839507
	.long	165488115
	.long	1383921977
	.long	5517254
	.long	1542845196
	.long	-1223190958
	.long	-323597672
	.long	1779581273
	.long	833854867
	.long	-581830451
	.long	-2031082489
	.long	644876050
	.long	2110905304
	.long	-1858879866
	.long	-896376244
	.long	1278634381
	.long	395818311
	.long	-76165095
	.long	-1596715821
	.long	-218310100
	.long	-1453521178
	.long	1170170808
	.long	505331570
	.long	-1732594509
	.long	-1021613959
	.long	804850983
	.long	1951977965
	.long	-1951883047
	.long	-804684781
	.long	1022040397
	.long	1732953479
	.long	-504443322
	.long	-1169223028
	.long	1454208978
	.long	218934040
	.long	1596227047
	.long	75866413
	.long	-395852685
	.long	-1278863175
	.long	895619960
	.long	1858326450
	.long	-2111722772
	.long	-645892570
	.long	-941559439
	.long	-1673450053
	.long	1889749221
	.long	721589295
	.long	-1381589010
	.long	-167296220
	.long	451225210
	.long	1095039664
	.long	325856335
	.long	1221456005
	.long	-1540385317
	.long	-7452399
	.long	2032812752
	.long	579575322
	.long	-831915196
	.long	-1782044786
	.long	1782077114
	.long	832146032
	.long	-579080402
	.long	-2032520220
	.long	8271909
	.long	1541399791
	.long	-1220705871
	.long	-325296773
	.long	-1095464060
	.long	-451586226
	.long	167195152
	.long	1381428954
	.long	-722279141
	.long	-1890371119
	.long	1672567951
	.long	940605509
	.long	-1735351472
	.long	-1020166246
	.long	802364100
	.long	1953678862
	.long	-220803633
	.long	-1451814651
	.long	1167422555
	.long	506767505
	.long	1276935790
	.long	398303908
	.long	-77608966
	.long	-1593959632
	.long	643436785
	.long	2113653819
	.long	-1860589211
	.long	-893880913
	.long	893912219
	.long	1860819025
	.long	-2113159921
	.long	-643145275
	.long	1594780164
	.long	78624462
	.long	-397552752
	.long	-1276375206
	.long	-507192923
	.long	-1167784593
	.long	1451712561
	.long	220642555
	.long	-1954367686
	.long	-802984976
	.long	1019285166
	.long	1734398564
	.globl	_VoicePool
	.bss
	.align 32
_VoicePool:
	.space 128
	.globl	_VoiceList
	.align 32
_VoiceList:
	.space 128
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
	.section .rdata,"dr"
	.align 8
LC4:
	.long	-350469331
	.long	1058682594
	.align 4
LC13:
	.long	-1065353216
	.align 4
LC14:
	.long	1082130432
	.set	LC15,LC31+8
	.align 4
LC17:
	.long	1015021568
	.align 4
LC18:
	.long	1061997773
	.align 4
LC19:
	.long	1067450368
	.align 4
LC20:
	.long	897581056
	.align 16
LC22:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.set	LC23,LC67+8
	.align 4
LC24:
	.long	1275068416
	.align 4
LC25:
	.long	1107296256
	.align 4
LC26:
	.long	981467136
	.align 4
LC27:
	.long	-1199570944
	.align 4
LC28:
	.long	-1166016512
	.align 4
LC29:
	.long	998277249
	.align 4
LC30:
	.long	805306368
	.align 16
LC31:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.align 4
LC50:
	.long	1132396544
	.align 16
LC55:
	.long	2139095039
	.long	2139095039
	.long	0
	.long	0
	.align 4
LC57:
	.long	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC58:
	.long	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.align 4
LC59:
	.long	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC60:
	.long	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.align 4
LC61:
	.long	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0
	.align 4
LC62:
	.long	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0
	.align 4
LC63:
	.long	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0
	.set	LC64,LC55
	.align 16
LC67:
	.long	2139095039
	.long	2139095039
	.long	1056964608
	.long	1056964608
	.align 4
LC69:
	.long	-1082130432
	.align 4
LC73:
	.long	1071225242
	.align 4
LC78:
	.long	1041865114
	.align 4
LC79:
	.long	1045220557
	.align 4
LC82:
	.long	1065353048
	.align 4
LC84:
	.long	1060320051
	.align 4
LC85:
	.long	1057803469
	.align 4
LC87:
	.long	1061752795
	.align 4
LC88:
	.long	1073741824
	.align 4
LC90:
	.long	1085820553
	.align 4
LC91:
	.long	1053609165
	.align 4
LC92:
	.long	1061158912
	.align 4
LC93:
	.long	1063105069
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_SDL_GetPowerInfo;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_md3_vox_calcmat_common;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	__Z26polymost_setTexturePosSizeRK4vec4IfE;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z28polymost_resetVertexPointersv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_hictinting_applypixcolor;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_updatePalettev;	.scl	2;	.type	32;	.endef
	.def	__Z25polymost_setHalfTexelSizeRK4vec2IfE;	.scl	2;	.type	32;	.endef
	.def	__Z22polymost_setVisibilityf;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	___mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ClearAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadLineEP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_WriteAllP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ReadLineP12ImGuiContextP20ImGuiSettingsHandlerPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ClearAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30SetClipboardTextFn_DefaultImplPvPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL32SetPlatformImeDataFn_DefaultImplP13ImGuiViewportP20ImGuiPlatformImeData.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_WriteAllEP12ImGuiContextP20ImGuiSettingsHandlerP15ImGuiTextBuffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui33DockNodeWindowMenuHandler_DefaultEP12ImGuiContextP13ImGuiDockNodeP11ImGuiTabBar;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui15DebugHookIdInfoEjiPKvS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8DebugLogEPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui11FocusWindowEP11ImGuiWindow;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList17_ResetForNewFrameEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter5MergeEP10ImDrawList.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui3EndEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui5BeginEPKcPbi.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SelectableEPKcbiRK6ImVec2;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12TestKeyOwnerE8ImGuiKeyj;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13ClearDragDropEv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui10SetTooltipEPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_;	.scl	2;	.type	32;	.endef
	.def	__ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList9PathArcToERK6ImVec2fffi.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11AddPolylineEPK6ImVec2ijif.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddLineERK6ImVec2S2_jf.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui9ScrollbarE9ImGuiAxis;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui7ItemAddERK6ImRectjPS1_i.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11_PathArcToNERK6ImVec2fffi;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ReadOpenEP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29TableSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ApplyAllP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30WindowSettingsHandler_ReadOpenP12ImGuiContextP20ImGuiSettingsHandlerPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL30GetClipboardTextFn_DefaultImplPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL28DockSettingsHandler_ApplyAllEP12ImGuiContextP20ImGuiSettingsHandler.lto_priv.0;	.scl	2;	.type	32;	.endef
