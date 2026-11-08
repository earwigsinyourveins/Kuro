	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZL24_internal_getcolumnwidthi.lto_priv.0
	.def	__ZL24_internal_getcolumnwidthi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL24_internal_getcolumnwidthi.lto_priv.0:
LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	subl	$1, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__ZL22_internal_getrowheighti.lto_priv.0
	.def	__ZL22_internal_getrowheighti.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22_internal_getrowheighti.lto_priv.0:
LFB2:
	.cfi_startproc
	movl	4(%esp), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	sarl	$3, %eax
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__ZL25_internal_clearbackgroundii.lto_priv.0
	.def	__ZL25_internal_clearbackgroundii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25_internal_clearbackgroundii.lto_priv.0:
LFB4:
	.cfi_startproc
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL19_internal_onshowosdi.lto_priv.0
	.def	__ZL19_internal_onshowosdi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19_internal_onshowosdi.lto_priv.0:
LFB6:
	.cfi_startproc
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__ZL24OSD_AdjustEditorPositionR9osdedit_t;	.scl	3;	.type	32;	.endef
__ZL24OSD_AdjustEditorPositionR9osdedit_t:
LFB8:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	(%eax), %esi
	movl	%eax, %ebx
	movw	%dx, 10(%eax)
	cmpb	$0, (%esi)
	je	L11
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L8:
	movswl	%ax, %ecx
	movw	%ax, 10(%ebx)
	addl	$1, %eax
	movl	%ecx, %edx
	cmpb	$0, (%esi,%ecx)
	jne	L8
L7:
	movzwl	12(%ebx), %eax
	movw	%dx, 8(%ebx)
	cmpw	%dx, %ax
	jle	L9
	movl	_osd, %eax
	movw	%dx, 14(%ebx)
	movl	1148(%eax), %eax
	subl	%eax, %edx
	addw	$4, %dx
	movw	%dx, 12(%ebx)
	js	L14
L6:
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
L9:
	.cfi_restore_state
	movzwl	14(%ebx), %ecx
	cmpw	%dx, %cx
	jg	L6
	subl	%ecx, %eax
	movw	%dx, 14(%ebx)
	addl	%edx, %eax
	movw	%ax, 12(%ebx)
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
L14:
	.cfi_restore_state
	subl	$4, %eax
	movw	%ax, 14(%ebx)
	xorl	%eax, %eax
	movw	%ax, 12(%ebx)
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
L11:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	L7
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__ZL12osd_strtokenPcPS_Pi;	.scl	3;	.type	32;	.endef
__ZL12osd_strtokenPcPS_Pi:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	$0, (%ecx)
	testl	%eax, %eax
	jne	L58
	jmp	L59
	.p2align 4
	.p2align 4,,10
	.p2align 3
L19:
	addl	$1, %ebx
L58:
	movzbl	(%ebx), %eax
	cmpb	$32, %al
	je	L19
	cmpb	$59, %al
	je	L60
	testb	%al, %al
	je	L61
	cmpb	$34, %al
	je	L23
	movzbl	(%ebx), %edx
	movl	%ebx, %eax
	testb	%dl, %dl
	jne	L24
	jmp	L25
	.p2align 4,,10
	.p2align 3
L62:
	cmpb	$32, %dl
	je	L31
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	je	L25
L24:
	cmpb	$59, %dl
	jne	L62
L31:
	movzbl	(%eax), %edx
	movl	%ebx, %esi
	testb	%dl, %dl
	je	L30
L33:
	leal	1(%eax), %ecx
	movb	$0, (%eax)
	movl	%ecx, (%edi)
	cmpb	$59, %dl
	jne	L15
	movl	$1, 0(%ebp)
L15:
	popl	%ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L23:
	.cfi_restore_state
	movzbl	1(%ebx), %edx
	leal	1(%ebx), %esi
	movl	%esi, %ecx
	testb	%dl, %dl
	je	L38
	movl	%esi, %ebx
	jmp	L28
	.p2align 4,,10
	.p2align 3
L39:
	movl	%ebx, %eax
L27:
	movb	%dl, (%ecx)
	movzbl	1(%eax), %edx
	addl	$1, %ecx
	leal	1(%eax), %ebx
	testb	%dl, %dl
	je	L63
L28:
	leal	1(%ebx), %eax
	cmpb	$34, %dl
	je	L26
	cmpb	$92, %dl
	jne	L39
	movzbl	1(%ebx), %edx
	cmpb	$110, %dl
	je	L40
	cmpb	$114, %dl
	movl	$13, %ebx
	cmove	%ebx, %edx
	addl	$1, %ecx
	leal	1(%eax), %ebx
	movb	%dl, -1(%ecx)
	movzbl	1(%eax), %edx
	testb	%dl, %dl
	jne	L28
L63:
	movl	%ebx, %eax
L26:
	movb	$0, (%ecx)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L33
L30:
	movl	$0, (%edi)
L64:
	popl	%ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L59:
	.cfi_restore_state
	movl	(%edx), %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	jne	L58
	jmp	L15
	.p2align 4,,10
	.p2align 3
L40:
	movl	$10, %edx
	jmp	L27
	.p2align 4,,10
	.p2align 3
L25:
	movl	$0, (%edi)
	movl	%ebx, %esi
	jmp	L64
	.p2align 4,,10
	.p2align 3
L61:
	movl	$0, (%edi)
	xorl	%esi, %esi
L65:
	popl	%ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L60:
	.cfi_restore_state
	addl	$1, %ebx
	movl	$1, 0(%ebp)
	xorl	%esi, %esi
	movl	%ebx, (%edi)
	jmp	L65
L38:
	movl	%esi, %eax
	jmp	L26
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z7nfIncCPv;	.scl	3;	.type	32;	.endef
__Z7nfIncCPv:
LFB10:
	.cfi_startproc
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
LC1:
	.ascii "source/build/src/osd.cpp\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_echoPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_echoPK13osdfuncparm_t:
LFB13:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L73
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L73:
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %eax
	movl	12(%eax), %eax
	movl	$LC0, 12(%esp)
	movl	$274, 8(%esp)
	addl	$5, %eax
	movl	$LC1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
LC2:
	.ascii "Removed alias %s ('%s')\0"
LC3:
	.ascii "%s is not an alias...\0"
	.text
	.p2align 4
	.def	__ZL15osdfunc_unaliasPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL15osdfunc_unaliasPK13osdfuncparm_t:
LFB16:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %eax
	movl	(%eax), %edx
	movl	$1, %eax
	testl	%edx, %edx
	jle	L74
	movl	_osd, %eax
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	1184(%eax), %ebx
	testl	%ebx, %ebx
	je	L76
	movl	44(%esp), %eax
	movl	%edi, 32(%esp)
	cmpl	$1, %edx
	movl	%esi, 28(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	8(%eax), %eax
	movl	(%eax), %esi
	sete	%al
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L81:
	movl	(%ebx), %ebp
	movl	%esi, (%esp)
	movl	%ebp, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L77
	movl	%edi, %eax
	testb	%al, %al
	jne	L96
L77:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L81
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
L76:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L97
L80:
	movl	24(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
L74:
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L97:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	movl	44(%esp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC3, 12(%esp)
	movl	$517, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
	jmp	L74
	.p2align 4,,10
	.p2align 3
L96:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$4919, 12(%ebx)
	je	L98
	testl	%eax, %eax
	jns	L99
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L80
L98:
	.cfi_restore_state
	testl	%eax, %eax
	jns	L100
L79:
	movl	$57005, 12(%ebx)
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L80
L99:
	.cfi_restore_state
	movl	%ebp, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	$510, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L80
L100:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%ebp, 16(%esp)
	movl	$LC2, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$506, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L79
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "mmulti: This machine's IP is %s\12\0"
	.text
	.p2align 4
	.def	__Z7netiniti.isra.0;	.scl	3;	.type	32;	.endef
__Z7netiniti.isra.0:
LFB18:
	.cfi_startproc
	subl	$436, %esp
	.cfi_def_cfa_offset 440
	movl	_wsainitialized, %edx
	movl	%esi, 432(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	testl	%edx, %edx
	jne	L102
	leal	28(%esp), %eax
	movl	$257, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__WSAStartup@8
	.cfi_def_cfa_offset 432
	subl	$8, %esp
	.cfi_def_cfa_offset 440
	cmpl	$-1, %eax
	je	L101
	movl	$1, _wsainitialized
L102:
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$2, (%esp)
	call	*__imp__socket@12
	.cfi_def_cfa_offset 428
	subl	$12, %esp
	.cfi_def_cfa_offset 440
	movl	%eax, __ZL6mysock.lto_priv.0
	cmpl	$-1, %eax
	je	L101
	movl	%ebx, 428(%esp)
	.cfi_offset 3, -12
	leal	28(%esp), %ebx
	movl	$1, 28(%esp)
	movl	%ebx, 8(%esp)
	movl	$-2147195266, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__ioctlsocket@12
	.cfi_def_cfa_offset 428
	subl	$12, %esp
	.cfi_def_cfa_offset 440
	testl	%eax, %eax
	je	L122
L121:
	movl	428(%esp), %ebx
	.cfi_restore 3
L101:
	movl	432(%esp), %esi
	addl	$436, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L122:
	.cfi_def_cfa_offset 440
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	$2, %eax
	movl	$0, 16(%esp)
	movw	%ax, 12(%esp)
	movzwl	%si, %eax
	movl	%eax, (%esp)
	call	*__imp__htons@4
	.cfi_def_cfa_offset 436
	subl	$4, %esp
	.cfi_def_cfa_offset 440
	movw	%ax, 14(%esp)
	leal	12(%esp), %eax
	movl	%eax, 4(%esp)
	movl	__ZL6mysock.lto_priv.0, %eax
	movl	$16, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__bind@12
	.cfi_def_cfa_offset 428
	subl	$12, %esp
	.cfi_def_cfa_offset 440
	cmpl	$-1, %eax
	je	L121
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__gethostname@8
	.cfi_def_cfa_offset 432
	subl	$8, %esp
	.cfi_def_cfa_offset 440
	cmpl	$-1, %eax
	je	L121
	movl	%ebx, (%esp)
	call	*__imp__gethostbyname@4
	.cfi_def_cfa_offset 436
	subl	$4, %esp
	.cfi_def_cfa_offset 440
	testl	%eax, %eax
	je	L121
	movl	12(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	movl	%eax, (%esp)
	call	*__imp__inet_ntoa@4
	.cfi_def_cfa_offset 436
	subl	$4, %esp
	.cfi_def_cfa_offset 440
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	___mingw_printf
	movl	428(%esp), %ebx
	.cfi_restore 3
	jmp	L101
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__Z7netsendiPci.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__Z7netsendiPci.constprop.0.isra.0:
LFB21:
	.cfi_startproc
	movl	__ZL7otherip(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L129
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	__ZL9otherport(,%eax,4), %eax
	movw	$2, 24(%esp)
	movw	%ax, 26(%esp)
	leal	24(%esp), %eax
	movl	%eax, 16(%esp)
	movl	__ZL6mysock.lto_priv.0, %eax
	movl	%ecx, 28(%esp)
	movl	$16, 20(%esp)
	movl	$0, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$__ZL6pakbuf, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__sendto@24
	.cfi_def_cfa_offset 20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L129:
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__ZL9heapAllocPvj.lto_priv.0
	.def	__ZL9heapAllocPvj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL9heapAllocPvj.lto_priv.0:
LFB22:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	je	L136
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L136:
	.cfi_restore_state
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "mmulti: output pakbuf filled for peer %d.\0"
LC6:
	.ascii "source/build/src/mmulti.cpp\0"
	.text
	.p2align 4
	.def	__Z13dosendpacketsi.part.0;	.scl	3;	.type	32;	.endef
__Z13dosendpacketsi.part.0:
LFB24:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	call	*__imp__GetTickCount@0
	movl	__ZL12lastsendtims(,%esi,4), %edx
	cmpl	%edx, %eax
	jge	L138
	movl	%eax, __ZL12lastsendtims(,%esi,4)
L137:
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L138:
	.cfi_restore_state
	addl	$4, %edx
	cmpl	%edx, %eax
	jl	L137
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	%esi, %ebx
	xorl	%edx, %edx
	movl	%edi, 40(%esp)
	sall	$9, %ebx
	movl	%ebp, 44(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	__ZL5icnt0(,%esi,4), %ebp
	movl	%eax, __ZL12lastsendtims(,%esi,4)
	movl	%ebp, __ZL6pakbuf+2
	movl	$0, __ZL6pakbuf+6
	movl	$0, __ZL6pakbuf+10
	movl	$0, __ZL6pakbuf+14
	movl	$0, __ZL6pakbuf+18
	movl	$0, __ZL6pakbuf+22
	movl	$0, __ZL6pakbuf+26
	movl	$0, __ZL6pakbuf+30
	movl	$0, __ZL6pakbuf+34
	movl	%esi, 20(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L141:
	leal	0(%ebp,%edx), %eax
	andl	$511, %eax
	addl	%ebx, %eax
	movl	__ZL4ipak(,%eax,4), %eax
	testl	%eax, %eax
	je	L140
	movl	%edx, %ecx
	movl	%edx, %eax
	movl	$1, %esi
	andl	$7, %ecx
	sarl	$3, %eax
	sall	%cl, %esi
	movl	%esi, %ecx
	orb	%cl, __ZL6pakbuf+6(%eax)
L140:
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L141
	movl	20(%esp), %esi
	movl	__ZL5ocnt1(,%esi,4), %eax
	movl	__ZL5ocnt0(,%esi,4), %ebx
	movl	%esi, %edx
	sall	$9, %edx
	movl	%eax, 20(%esp)
	movl	20(%esp), %ecx
	cmpl	%ebx, %eax
	jg	L142
	jmp	L143
	.p2align 6
	.p2align 4,,10
	.p2align 3
L145:
	addl	$1, %ebx
	movl	%ebx, __ZL5ocnt0(,%esi,4)
	cmpl	%ebx, %ecx
	je	L158
L142:
	movl	%ebx, %eax
	andl	$511, %eax
	addl	%edx, %eax
	movl	__ZL4opak(,%eax,4), %eax
	testl	%eax, %eax
	je	L145
	cmpl	%ebx, 20(%esp)
	jle	L143
	movl	%esi, %ecx
	movl	%esi, 28(%esp)
	movl	$38, %eax
	movl	__ZL6pakmem.lto_priv.0, %edi
	sall	$9, %ecx
	movl	%ecx, 24(%esp)
	.p2align 4
	.p2align 3
L151:
	movl	%ebx, %edx
	andl	$511, %edx
	addl	24(%esp), %edx
	movl	__ZL4opak(,%edx,4), %ecx
	movswl	(%edi,%ecx), %edx
	testl	%edx, %edx
	je	L147
	leal	6(%edx,%eax), %esi
	cmpl	$2044, %esi
	jg	L172
	movw	%dx, __ZL6pakbuf(%eax)
	leal	2(%edi,%ecx), %ecx
	movl	%ebx, __ZL6pakbuf+2(%eax)
	addl	$__ZL6pakbuf+6, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	%esi, %eax
L147:
	addl	$1, %ebx
	cmpl	%ebx, 20(%esp)
	jne	L151
	leal	2(%eax), %ecx
	movl	28(%esp), %esi
	leal	4(%eax), %ebp
	movw	%cx, 24(%esp)
	movl	%ecx, %edi
L153:
	movl	__ZL17fullpakbufsignals(,%esi,4), %ebx
	movl	$0, %edx
	subl	$1, %ebx
	cmovs	%edx, %ebx
	movl	%ebx, __ZL17fullpakbufsignals(,%esi,4)
L155:
	xorl	%edx, %edx
	addl	$__ZL6pakbuf, %edi
	movw	%dx, __ZL6pakbuf(%eax)
	movzwl	24(%esp), %eax
	movw	%ax, __ZL6pakbuf
	testl	%ecx, %ecx
	jle	L159
L154:
	movl	%edi, 20(%esp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L157:
	movzbl	__ZL6pakbuf(%edx), %edi
	movl	%eax, %ebx
	movzbl	%ah, %eax
	addl	$1, %edx
	sall	$8, %ebx
	xorl	%edi, %eax
	movzwl	%bx, %ebx
	xorl	_crctab16(,%eax,4), %ebx
	movl	%ebx, %eax
	cmpl	%ecx, %edx
	jne	L157
	movl	20(%esp), %edi
L156:
	movw	%ax, (%edi)
	movl	%ebp, %edx
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z7netsendiPci.constprop.0.isra.0
L172:
	.cfi_restore_state
	movl	28(%esp), %esi
	movl	__ZL17fullpakbufsignals(,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L173
L149:
	leal	2(%eax), %ecx
	leal	4(%eax), %ebp
	movw	%cx, 24(%esp)
	movl	%ecx, %edi
	cmpl	20(%esp), %ebx
	jne	L155
	jmp	L153
	.p2align 4,,10
	.p2align 3
L173:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jge	L174
L150:
	movl	$16, __ZL17fullpakbufsignals(,%esi,4)
	jmp	L149
L159:
	xorl	%eax, %eax
	jmp	L156
L174:
	movl	%esi, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$636, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-1, (%esp)
	movl	%eax, 24(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZL5ocnt1(,%esi,4), %eax
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	jmp	L150
L143:
	cmpl	%ebx, 20(%esp)
	je	L158
	movl	$40, %edi
	xorl	%ebx, %ebx
	movl	$42, %ebp
	movl	$40, %ecx
	movw	%di, __ZL6pakbuf
	movl	$__ZL6pakbuf+40, %edi
	movw	%bx, __ZL6pakbuf+38
	jmp	L154
L158:
	movl	$40, %ecx
	movl	$42, %ebp
	movl	$40, %edi
	movl	$38, %eax
	movw	%cx, 24(%esp)
	movl	$40, %ecx
	jmp	L153
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC7:
	.ascii "'%s' is '%f'\0"
LC8:
	.ascii "%s [%d-%d]: %s\0"
LC9:
	.ascii "'%s' is '%d'\0"
LC10:
	.ascii "%s [%d%c%d]: %s\0"
LC11:
	.ascii "'%s' is '%s'\0"
LC12:
	.ascii "%s: %s\0"
	.text
	.p2align 4
	.def	__ZL16osdfunc_printvari.isra.0;	.scl	3;	.type	32;	.endef
__ZL16osdfunc_printvari.isra.0:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	sall	$4, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-8, %esp
	subl	$44, %esp
	.cfi_offset 3, -12
	movl	_osd, %edx
	addl	1180(%edx), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	andl	$63, %edx
	jmp	*L178(,%edx,4)
	.section .rdata,"dr"
	.align 4
L178:
	.long	L177
	.long	L182
	.long	L180
	.long	L177
	.long	L181
	.long	L177
	.long	L177
	.long	L177
	.long	L180
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L179
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.text
	.p2align 4,,10
	.p2align 3
L180:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L187
L175:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L182:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	flds	(%edx)
	fstpl	20(%esp)
	movl	(%eax), %edx
	movl	$LC7, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2233, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC8, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2234, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L175
	.p2align 4,,10
	.p2align 3
L179:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC11, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2250, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC12, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2251, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L175
	.p2align 4,,10
	.p2align 3
L181:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC9, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2246, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC8, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2247, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L175
	.p2align 4,,10
	.p2align 3
L177:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	fldl	(%edx)
	fstpl	20(%esp)
	movl	(%eax), %edx
	movl	$LC7, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2237, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	40(%esp), %eax
	movl	4(%eax), %edx
	movl	%edx, 28(%esp)
	movl	20(%eax), %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC8, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2238, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L175
	.p2align 4,,10
	.p2align 3
L187:
	movl	8(%eax), %edx
	movl	%eax, 40(%esp)
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %edx
	movl	$LC9, 12(%esp)
	movl	%edx, 16(%esp)
	movl	$2242, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L175
	movl	40(%esp), %eax
	movl	12(%eax), %edx
	movl	4(%eax), %ebx
	movl	20(%eax), %ecx
	andl	$8, %edx
	movl	%ebx, 32(%esp)
	cmpl	$1, %edx
	movl	%ecx, 28(%esp)
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$47, %edx
	movl	%edx, 24(%esp)
	movl	16(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC10, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2243, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__ZL8heapFreePvS_.lto_priv.0
	.def	__ZL8heapFreePvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL8heapFreePvS_.lto_priv.0:
LFB27:
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
LFE27:
	.p2align 4
	.globl	__ZL21_internal_drawosdchariicii.lto_priv.0
	.def	__ZL21_internal_drawosdchariicii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21_internal_drawosdchariicii.lto_priv.0:
LFB29:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movzbl	40(%esp), %eax
	movl	$0, 20(%esp)
	movl	$-1, 12(%esp)
	movb	%al, 26(%esp)
	leal	26(%esp), %eax
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movb	$0, 27(%esp)
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__ZL20_internal_drawosdstriiPKciii.lto_priv.0
	.def	__ZL20_internal_drawosdstriiPKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20_internal_drawosdstriiPKciii.lto_priv.0:
LFB31:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$1023, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$1048, %esp
	.cfi_def_cfa_offset 1064
	movl	1076(%esp), %ebx
	movl	1072(%esp), %esi
	leal	24(%esp), %edi
	movl	%edi, (%esp)
	cmpl	%eax, %ebx
	movl	%esi, 4(%esp)
	cmovg	%eax, %ebx
	movl	%ebx, 8(%esp)
	call	_memcpy
	movl	_osd, %edx
	movb	$0, 24(%esp,%ebx)
	movl	20(%edx), %eax
	cmpl	%eax, %esi
	jb	L194
	leal	32768(%eax), %ecx
	cmpl	%ecx, %esi
	jnb	L194
	subl	%eax, %esi
	movl	24(%edx), %eax
	movzbl	(%eax,%esi), %eax
	andb	$31, %al
	movl	%eax, 1084(%esp)
L194:
	movl	__ZL13whiteColorIdx, %eax
	testl	%eax, %eax
	js	L196
	movzbl	1084(%esp), %edx
	movl	_palookup(,%edx,4), %edx
	movzbl	(%edx,%eax), %eax
L196:
	cwtl
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	1068(%esp), %eax
	movl	$0, 20(%esp)
	leal	4(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	1064(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$1048, %esp
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
LFE31:
	.p2align 4
	.globl	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.def	__ZL23_internal_drawosdcursoriiii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23_internal_drawosdcursoriiii.lto_priv.0:
LFB33:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$95, %eax
	movl	56(%esp), %edx
	movw	%ax, 26(%esp)
	testl	%edx, %edx
	je	L199
	movb	$35, 26(%esp)
L199:
	movl	__ZL13whiteColorIdx, %eax
	testl	%eax, %eax
	jns	L214
	movl	%ebp, 40(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 32(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$256, %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L200:
	movzbl	_curpalette(,%ecx,4), %eax
	subl	$188, %eax
/APP
 # 387 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movzbl	_curpalette+1(,%ecx,4), %eax
	subl	$220, %eax
/APP
 # 388 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movzbl	_curpalette+2(,%ecx,4), %eax
	subl	$252, %eax
/APP
 # 389 "source/build/src/osd.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%edx, %eax
	cmpl	%esi, %eax
	cmovl	%eax, %esi
	movl	$1, %eax
	cmovl	%ecx, %ebp
	cmovl	%eax, %edi
	addl	$1, %ecx
	cmpl	$256, %ecx
	jne	L200
	movl	%edi, %eax
	testb	%al, %al
	je	L213
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	%ebp, __ZL13whiteColorIdx
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
L213:
	.cfi_restore_state
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
L214:
	.cfi_def_cfa_offset 48
	cwtl
	leal	26(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%edx, 16(%esp)
	leal	6(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.def	__ZL9osd_cleari;	.scl	3;	.type	32;	.endef
__ZL9osd_cleari:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_osd, %eax
	movl	%edi, -4(%ebp)
	movl	$32768, 8(%esp)
	movl	$32, 4(%esp)
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	call	_memset
	movl	_osd, %edx
	movl	$32768, 8(%esp)
	movl	1132(%edx), %eax
	sall	$5, %eax
	addl	1136(%edx), %eax
	movl	%eax, 4(%esp)
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %eax
	movl	$1, 32(%eax)
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicLock
	movl	_osd, %eax
	movl	$0, 12(%eax)
	testl	%ebx, %ebx
	jne	L225
L216:
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicUnlock
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
L225:
	.cfi_restore_state
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	(%eax), %esi
	movl	$-1, %eax
	xorl	%ebx, %ebx
	movl	%eax, 4(%esi)
	movl	%eax, 8(%esi)
	movl	$0, 12(%esi)
	.p2align 4
	.p2align 3
L217:
	movl	(%esi), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	(%esi), %eax
	subl	$4, %esp
	movl	$0, (%eax,%ebx)
	addl	$4, %ebx
	cmpl	$4096, %ebx
	jne	L217
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L218:
	movl	(%esi), %edx
	movl	$0, (%edx,%eax)
	addl	$4, %eax
	cmpl	$4096, %eax
	jne	L218
	movl	_osd, %eax
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L216
	.cfi_endproc
LFE35:
	.p2align 4
	.def	__ZL13osdfunc_clearPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL13osdfunc_clearPK13osdfuncparm_t:
LFB37:
	.cfi_startproc
	movl	$1, %eax
	call	__ZL9osd_cleari
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC15:
	.ascii "%.*s\0"
	.text
	.p2align 4
	.globl	__Z6mi_logPKcPv
	.def	__Z6mi_logPKcPv;	.scl	2;	.type	32;	.endef
__Z6mi_logPKcPv:
LFB38:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	testl	%ebx, %ebx
	je	L227
	cmpb	$10, (%ebx)
	je	L227
	movl	%ebx, (%esp)
	call	_strlen
	testl	%eax, %eax
	jne	L230
	jmp	L232
	.p2align 4
	.p2align 4,,10
	.p2align 3
L231:
	subl	$1, %eax
	je	L229
L230:
	cmpb	$10, -1(%ebx,%eax)
	je	L231
L229:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$7, %edx
	jg	L240
L227:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L240:
	.cfi_restore_state
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC15, 12(%esp)
	movl	$780, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$8, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L232:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L229
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__Z20OSD_UpdateDrawBufferb;	.scl	3;	.type	32;	.endef
__Z20OSD_UpdateDrawBufferb:
LFB40:
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
	movl	%edi, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_osd, %eax
	testb	%cl, %cl
	je	L242
	movl	(%eax), %ebx
	movl	12(%ebx), %edx
	testl	%edx, %edx
	je	L241
	cmpl	$1024, %edx
	je	L250
	movl	12(%eax), %ecx
	movl	%eax, %esi
	cmpl	%edx, %ecx
	je	L241
L248:
	movl	%edx, 20(%esp)
	movl	(%ebx), %ebx
	movl	%eax, %edx
	movl	%edi, %eax
	movb	%al, 27(%esp)
	movl	(%ebx,%ecx,4), %ebp
	.p2align 4
	.p2align 3
L263:
	addl	$1, %ecx
	movl	%edx, 16(%esp)
	andl	$1023, %ecx
	movl	%ecx, 12(%edx)
	movl	1136(%esi), %eax
	movl	1132(%esi), %edi
	movzbl	0(%ebp), %ebx
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L262:
	cmpb	$10, %bl
	je	L265
	cmpb	$13, %bl
	je	L265
	cmpb	$94, %bl
	je	L278
L256:
	movl	20(%esi), %edx
	movl	28(%esi), %eax
	movb	%bl, (%edx,%eax)
	movl	%edi, %eax
	movl	24(%esi), %edx
	movl	28(%esi), %ecx
	sall	$5, %eax
	addb	12(%esp), %al
	movb	%al, (%edx,%ecx)
	movl	28(%esi), %eax
	addl	$1, %eax
	cmpl	1148(%esi), %eax
	je	L261
	movl	%eax, 28(%esi)
L255:
	movl	%ebp, %ebx
L254:
	leal	1(%ebx), %ebp
	movzbl	1(%ebx), %ebx
	testb	%bl, %bl
	jne	L262
	movl	16(%esp), %edx
	movl	(%edx), %eax
	movl	12(%edx), %ecx
	movl	(%eax), %eax
	movl	(%eax,%ecx,4), %ebp
	cmpl	%ecx, 20(%esp)
	jne	L263
	cmpb	$0, 27(%esp)
	je	L279
L241:
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
L265:
	.cfi_restore_state
	movl	$0, 28(%esi)
	cmpb	$13, 0(%ebp)
	je	L255
L276:
	movl	_osd, %ebx
	movl	$32768, %ecx
	movl	1148(%ebx), %edx
	movl	20(%ebx), %eax
	subl	%edx, %ecx
	movl	%eax, 4(%esp)
	addl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movl	1148(%ebx), %eax
	movl	$32, 4(%esp)
	movl	%eax, 8(%esp)
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	1148(%ebx), %edx
	movl	24(%ebx), %eax
	movl	$32768, %ecx
	subl	%edx, %ecx
	movl	%eax, 4(%esp)
	addl	%edx, %eax
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movl	1148(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	1136(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	32(%ebx), %eax
	cmpl	36(%ebx), %eax
	jge	L255
	addl	$1, %eax
	movl	%eax, 32(%ebx)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L278:
	movzbl	1(%ebp), %eax
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	ja	L257
	movzbl	2(%ebp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L258
	xorl	%edx, %edx
	leal	1(%ebp), %ebx
	movw	%dx, 29(%esp)
	movzbl	1(%ebp), %eax
	movb	%al, 29(%esp)
L277:
	leal	29(%esp), %eax
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	%eax, 12(%esp)
	jmp	L254
	.p2align 4,,10
	.p2align 3
L257:
	movl	%eax, (%esp)
	call	*__imp__toupper
	cmpl	$83, %eax
	je	L280
	cmpl	$79, %eax
	jne	L256
	movl	1136(%esi), %eax
	movl	1132(%esi), %edi
	leal	1(%ebp), %ebx
	movl	%eax, 12(%esp)
	jmp	L254
	.p2align 4,,10
	.p2align 3
L261:
	movl	$0, 28(%esi)
	jmp	L276
	.p2align 4,,10
	.p2align 3
L258:
	xorl	%eax, %eax
	movb	$0, 31(%esp)
	leal	2(%ebp), %ebx
	movw	%ax, 29(%esp)
	movzbl	1(%ebp), %eax
	movb	%al, 29(%esp)
	movzbl	2(%ebp), %eax
	movb	%al, 30(%esp)
	jmp	L277
	.p2align 4,,10
	.p2align 3
L280:
	movzbl	2(%ebp), %eax
	leal	2(%ebp), %ebx
	leal	-48(%eax), %edx
	cmpl	$9, %edx
	cmovbe	%eax, %edi
	jmp	L254
L242:
	leal	8(%eax), %ebp
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	call	_SDL_AtomicLock
	movl	12(%esp), %eax
	movl	(%eax), %ebx
	movl	12(%ebx), %edx
	testl	%edx, %edx
	je	L249
	movl	_osd, %esi
	cmpl	$1024, %edx
	je	L281
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L248
L249:
	movl	%ebp, (%esp)
	call	_SDL_AtomicUnlock
L282:
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
L279:
	.cfi_restore_state
	leal	8(%edx), %ebp
	movl	%ebp, (%esp)
	call	_SDL_AtomicUnlock
	jmp	L282
L281:
	movl	8(%ebx), %edx
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	jne	L248
	jmp	L249
	.p2align 4,,10
	.p2align 3
L250:
	movl	8(%ebx), %edx
	movl	12(%eax), %ecx
	cmpl	%edx, %ecx
	je	L241
	movl	%eax, %esi
	jmp	L248
	.cfi_endproc
LFE40:
	.p2align 4
	.def	__ZL14osd_findsymbolPKcP7_symbol;	.scl	3;	.type	32;	.endef
__ZL14osd_findsymbolPKcP7_symbol:
LFB42:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_osd, %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	1184(%ecx), %ebx
	testl	%ebx, %ebx
	je	L283
	movl	%eax, (%esp)
	testl	%edx, %edx
	movl	%esi, 16(%esp)
	cmovne	%edx, %ebx
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	call	_strlen
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L287:
	cmpl	$57005, 12(%ebx)
	je	L286
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L286
	movl	%edi, 8(%esp)
	movl	(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strncasecmp
	testl	%eax, %eax
	je	L298
L286:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L287
L298:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L283:
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.section .rdata,"dr"
LC16:
	.ascii "Cvar '%s' is read-only.\0"
LC17:
	.ascii "%f\0"
LC18:
	.ascii "%s %f\0"
LC19:
	.ascii "%lf\0"
LC20:
	.ascii "%s %d\0"
LC21:
	.ascii "%s %s\0"
LC22:
	.ascii "r_pr\0"
	.text
	.p2align 4
	.globl	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
__Z15osdcmd_cvar_setPK13osdfuncparm_t:
LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$36, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %esi
	movl	4(%esi), %eax
	call	_hash_findcase.constprop.0
	movl	_osd, %ecx
	movl	%eax, %edx
	sall	$4, %eax
	addl	1180(%ecx), %eax
	movl	(%eax), %ebx
	movl	12(%ebx), %eax
	testb	$64, %al
	jne	L343
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L344
	andl	$63, %eax
	jmp	*L305(,%eax,4)
	.section .rdata,"dr"
	.align 4
L305:
	.long	L304
	.long	L309
	.long	L307
	.long	L304
	.long	L308
	.long	L304
	.long	L304
	.long	L304
	.long	L307
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L306
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.long	L304
	.text
L344:
	movl	%edx, %eax
	call	__ZL16osdfunc_printvari.isra.0
L301:
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L343:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L301
	movl	(%ebx), %eax
	movl	$LC16, 12(%esp)
	movl	$2269, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L301
L307:
	movl	20(%ebx), %ecx
	movl	16(%ebx), %edx
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%esi), %eax
	movl	%ecx, 28(%esp)
	movl	(%eax), %eax
	movl	%edx, 32(%esp)
	movl	%eax, (%esp)
	call	_strtol
	movl	28(%esp), %ecx
	movl	32(%esp), %edx
	movl	8(%ebx), %esi
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	cmpl	%eax, %edx
	cmovl	%ecx, %edx
	movl	%edx, (%esi)
	movl	12(%ebx), %eax
	movl	%eax, %edx
	andl	$63, %edx
	cmpl	$8, %edx
	jne	L315
	movl	8(%ebx), %eax
	xorl	%edx, %edx
	movl	(%eax), %esi
	testl	%esi, %esi
	setne	%dl
	movl	%edx, (%eax)
	movl	12(%ebx), %eax
L315:
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	jne	L301
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	jns	L345
L311:
	movl	%eax, %edx
	andl	$7168, %edx
	cmpl	$2048, %edx
	je	L317
	cmpl	$4096, %edx
	je	L318
	cmpl	$1024, %edx
	je	L319
	testb	$4, %ah
	je	L301
L319:
	movl	$4, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L320
	cmpl	$4, _rendmode
	jne	L301
L320:
	call	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0
	jmp	L301
L308:
	movl	20(%ebx), %edx
	movl	16(%ebx), %ecx
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	8(%esi), %eax
	movl	%edx, 28(%esp)
	movl	(%eax), %eax
	movl	%ecx, 32(%esp)
	movl	%eax, (%esp)
	call	_strtoul
	movl	28(%esp), %edx
	movl	32(%esp), %ecx
	movl	8(%ebx), %esi
	cmpl	%eax, %edx
	cmova	%eax, %edx
	cmpl	%eax, %ecx
	cmovnb	%ecx, %edx
	movl	%edx, (%esi)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %edx
	testl	%edx, %edx
	jne	L301
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L311
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2318, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L312
L304:
	movl	8(%ebx), %eax
	movl	$LC19, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sscanf
	movl	8(%ebx), %eax
	fldl	(%eax)
	fildl	16(%ebx)
	fcomi	%st(1), %st
	jnb	L346
	fstp	%st(0)
	fildl	20(%ebx)
	fxch	%st(1)
	fcomi	%st(1), %st
	fcmovnb	%st(1), %st
	fstp	%st(1)
	jmp	L313
L346:
	fstp	%st(1)
L313:
	fstpl	(%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %edx
	testl	%edx, %edx
	jne	L301
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L311
	movl	8(%ebx), %eax
	fldl	(%eax)
	fstpl	20(%esp)
	movl	(%ebx), %eax
	movl	$LC18, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2295, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L312
L309:
	movl	8(%ebx), %eax
	movl	$LC17, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sscanf
	xorps	%xmm0, %xmm0
	movl	8(%ebx), %eax
	cvtsi2ssl	16(%ebx), %xmm0
	movss	(%eax), %xmm2
	comiss	%xmm2, %xmm0
	jnb	L310
	xorps	%xmm1, %xmm1
	cvtsi2ssl	20(%ebx), %xmm1
	movaps	%xmm1, %xmm0
	cmpless	%xmm2, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm2, %xmm0
	orps	%xmm1, %xmm0
L310:
	movss	%xmm0, (%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	jne	L301
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L311
	movl	8(%ebx), %eax
	flds	(%eax)
	fstpl	20(%esp)
	movl	(%ebx), %eax
	movl	$LC18, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2285, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L312
L306:
	movl	20(%ebx), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	movl	8(%esi), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	8(%ebx), %edx
	movl	20(%ebx), %eax
	movb	$0, -1(%edx,%eax)
	movl	12(%ebx), %eax
	movl	_osd, %edx
	orb	$32, %ah
	movl	%eax, 12(%ebx)
	movl	3240(%edx), %esi
	testl	%esi, %esi
	jne	L301
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L311
	movl	8(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC21, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2328, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L312:
	movl	_osd, %eax
	movl	3240(%eax), %ecx
	testl	%ecx, %ecx
	jne	L301
	movl	12(%ebx), %eax
	jmp	L311
L317:
	xorl	%eax, %eax
	call	__Z19gltexinvalidatetypei
L318:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L324:
	movl	_texcache+44(,%ebx,4), %eax
	testl	%eax, %eax
	jne	L323
	jmp	L321
	.p2align 4
	.p2align 4,,10
	.p2align 3
L322:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L321
L323:
	movl	8(%eax), %edx
	testl	%edx, %edx
	jne	L322
	movzwl	34(%eax), %edx
	movl	%edx, %ecx
	orb	$-128, %cl
	andl	$16, %edx
	movw	%cx, 34(%eax)
	je	L322
	movl	4(%eax), %edx
	orw	$128, 34(%edx)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L323
	.p2align 4
	.p2align 3
L321:
	addl	$1, %ebx
	cmpl	$8192, %ebx
	jne	L324
	movl	$1, %eax
	call	_clearskins
	cmpl	$4, _rendmode
	jne	L301
	call	_polymer_texinvalidate
	jmp	L301
L345:
	movl	8(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	movl	(%ebx), %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2309, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L312
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__ZL11heapReallocPvS_j.lto_priv.0
	.def	__ZL11heapReallocPvS_j.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11heapReallocPvS_j.lto_priv.0:
LFB45:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_g_sm_heap, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	40(%esp), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	44(%esp), %esi
	cmpl	$16384, %ebx
	jbe	L370
	testl	%esi, %esi
	je	L371
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jnb	L352
	addl	$1, %eax
	movl	%edi, 28(%esp)
	sall	$4, %eax
	.cfi_offset 7, -8
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L353
L359:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %edx
L347:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	%edx, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L352:
	.cfi_restore_state
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L372
	movl	%ebx, %edx
	movl	%ebx, %eax
	movl	%edi, 28(%esp)
	andl	$7, %edx
	movl	%edx, 12(%esp)
	.cfi_offset 7, -8
	call	_mi_usable_size
	movl	12(%esp), %edx
	cmpl	%esi, %eax
	movl	%eax, %edi
	jb	L358
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L358
	leal	(%edx,%ebx), %eax
	testb	$7, %al
	je	L359
L358:
	movl	%fs:44, %ecx
	movl	__tls_index, %eax
	movl	(%ecx,%eax,4), %eax
	movl	$8, %ecx
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L357
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovbe	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L360
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L361:
	movl	%ebx, %eax
	movl	%edx, 12(%esp)
	call	_mi_free
	movl	12(%esp), %edx
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L370:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
L349:
	testl	%edx, %edx
	jne	L347
	testl	%esi, %esi
	je	L347
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
L357:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L372:
	.cfi_restore 7
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	_mi_usable_size
	movl	12(%esp), %edx
	movl	%ebx, 4(%esp)
	cmpl	%eax, %esi
	cmovbe	%esi, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memmove
	movl	%ebx, %eax
	call	_mi_free
	movl	12(%esp), %edx
	jmp	L349
	.p2align 4,,10
	.p2align 3
L353:
	.cfi_offset 7, -8
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memmove
	movl	%ebx, (%esp)
	movl	16(%esp), %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	12(%esp), %edx
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L349
	.p2align 4,,10
	.p2align 3
L371:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L347
	.p2align 4,,10
	.p2align 3
L360:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L361
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC23:
	.ascii "sprite\0"
	.align 4
LC24:
	.ascii "%s:%d: warning: max light count %d exceeded, ignoring further light defs\0"
LC25:
	.ascii "source/build/src/mhk.cpp\0"
	.text
	.p2align 4
	.globl	_engineLoadMHK.constprop.0
	.def	_engineLoadMHK.constprop.0;	.scl	2;	.type	32;	.endef
_engineLoadMHK.constprop.0:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$108, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, 96(%esp)
	call	_engineClearLightsFromMHK
	cmpb	$0, __ZZ13engineLoadMHKE2fn
	jne	L374
	movl	96(%esp), %edi
L375:
	testl	%edi, %edi
	je	L376
	leal	96(%esp), %eax
	movl	$0, 92(%esp)
	movl	%eax, 84(%esp)
	leal	100(%esp), %eax
	movss	84(%esp), %xmm5
	movl	%eax, 84(%esp)
	movss	84(%esp), %xmm6
	unpcklps	%xmm6, %xmm5
	movlps	%xmm5, 84(%esp)
	.p2align 4
	.p2align 3
L377:
	movl	%edi, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L379
	xorl	%ebx, %ebx
	movl	$LC23, %eax
	jmp	L381
	.p2align 4,,10
	.p2align 3
L406:
	addl	$1, %ebx
	movl	__ZZ13engineLoadMHKE11legaltokens(,%ebx,8), %eax
	testl	%eax, %eax
	je	L380
L381:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L406
L380:
	movl	8(%edi), %eax
	movl	%eax, 100(%esp)
	cmpb	$0, __ZGVZ13engineLoadMHKE14ignoreThisShit
	jne	L382
	movlps	84(%esp), %xmm4
	movb	$1, __ZGVZ13engineLoadMHKE14ignoreThisShit
	movlps	%xmm4, __ZZ13engineLoadMHKE14ignoreThisShit
L382:
	cmpl	$15, __ZZ13engineLoadMHKE11legaltokens+4(,%ebx,8)
	jne	L377
	movl	92(%esp), %eax
	testl	%eax, %eax
	jne	L377
	leal	104(%esp), %edx
	movl	%edi, %eax
	call	_scriptfile_getnumber
	movl	96(%esp), %eax
	leal	104(%esp), %edx
	movl	104(%esp), %edi
	call	_scriptfile_getnumber
	movss	104(%esp), %xmm0
	movl	96(%esp), %eax
	leal	104(%esp), %edx
	movss	%xmm0, 28(%esp)
	call	_scriptfile_getnumber
	movss	104(%esp), %xmm2
	movl	96(%esp), %eax
	leal	104(%esp), %edx
	movss	%xmm2, 32(%esp)
	call	_scriptfile_getnumber
	movss	104(%esp), %xmm1
	movl	96(%esp), %eax
	leal	104(%esp), %edx
	movss	%xmm1, 36(%esp)
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 72(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 68(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 64(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 60(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 80(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 56(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 52(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movss	104(%esp), %xmm3
	movl	96(%esp), %eax
	leal	104(%esp), %edx
	movss	%xmm3, 40(%esp)
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 48(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 44(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getnumber
	movl	104(%esp), %eax
	leal	104(%esp), %edx
	movl	%eax, 76(%esp)
	movl	96(%esp), %eax
	call	_scriptfile_getsymbol
	cmpl	$4, _rendmode
	movss	40(%esp), %xmm3
	movss	36(%esp), %xmm1
	movss	32(%esp), %xmm2
	movss	28(%esp), %xmm0
	je	L385
L405:
	movl	96(%esp), %edi
	jmp	L377
	.p2align 4,,10
	.p2align 3
L379:
	movl	%edi, %eax
	call	_scriptfile_close
	xorl	%eax, %eax
L373:
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
L374:
	.cfi_restore_state
	movl	$__ZZ13engineLoadMHKE2fn, %eax
	call	_scriptfile_fromfile
	movl	%eax, 96(%esp)
	movl	%eax, %edi
	jmp	L375
L385:
	cmpw	$1024, __ZL15maphacklightcnt.lto_priv.0
	je	L407
	cmpl	$1023, _lightcount
	jg	L405
	movzbl	76(%esp), %eax
	cmpl	_pr_maxlightpriority, %eax
	jg	L405
	movl	_pr_lighting, %eax
	testl	%eax, %eax
	je	L405
	cmpw	$-1, %di
	je	L405
	cmpw	_numsectors, %di
	jge	L405
	xorl	%ebx, %ebx
	jmp	L389
	.p2align 5
	.p2align 4,,10
	.p2align 3
L408:
	addl	$1, %ebx
	cmpl	$1024, %ebx
	je	L405
L389:
	imull	$270, %ebx, %ecx
	testb	$1, _prlights+254(%ecx)
	jne	L408
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm2, %xmm0
	leal	_prlights(%ecx), %eax
	movl	104(%esp), %esi
	movlhps	%xmm1, %xmm0
	movups	%xmm0, _prlights(%ecx)
	movl	72(%esp), %ecx
	movl	%esi, %edx
	movw	%di, 26(%eax)
	movl	%ecx, 16(%eax)
	movzwl	52(%esp), %ecx
	movw	%si, 34(%eax)
	movw	%cx, 20(%eax)
	movzwl	56(%esp), %ecx
	movw	%cx, 22(%eax)
	movzwl	80(%esp), %ecx
	movw	%cx, 24(%eax)
	movzbl	68(%esp), %ecx
	movb	%cl, 28(%eax)
	movzbl	64(%esp), %ecx
	movb	%cl, 29(%eax)
	movzbl	60(%esp), %ecx
	movb	%cl, 30(%eax)
	movzbl	76(%esp), %ecx
	movb	%cl, 31(%eax)
	movzbl	48(%esp), %ecx
	movb	%cl, 32(%eax)
	movzbl	44(%esp), %ecx
	movb	%cl, 33(%eax)
	movl	$-1, %ecx
	movw	%cx, 36(%eax)
	movzbl	38(%eax), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movb	%cl, 38(%eax)
	cmpw	$0, 80(%esp)
	jne	L409
L390:
	imull	$270, %ebx, %edi
	movl	%ebx, %esi
	movzbl	_prlights+254(%edi), %eax
	movl	$0, _prlights+266(%edi)
	movl	$0, _prlights+262(%edi)
	andl	$-8, %eax
	orl	$1, %eax
	movb	%al, _prlights+254(%edi)
	movswl	%bx, %eax
	call	_polymer_culllight.lto_priv.0
	testl	%eax, %eax
	je	L393
	orb	$2, _prlights+254(%edi)
L393:
	movswl	__ZL15maphacklightcnt.lto_priv.0, %eax
	addl	$1, _lightcount
	movl	96(%esp), %edi
	leal	1(%eax), %edx
	movw	%si, __ZL12maphacklight.lto_priv.0(%eax,%eax)
	movw	%dx, __ZL15maphacklightcnt.lto_priv.0
	jmp	L377
L409:
	movl	%edx, 80(%esp)
	call	_polymer_processspotlight.lto_priv.0
	testw	%si, %si
	jle	L390
	movswl	%si, %edi
	movl	80(%esp), %edx
	cmpb	$63, _picanm+3(%edi,%edi,4)
	ja	L410
L391:
	movl	_waloff(,%edi,4), %esi
	testl	%esi, %esi
	je	L411
L392:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_texcache_fetch
	jmp	L390
L407:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	96(%esp), %edi
	movl	$1, 92(%esp)
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L377
	movl	100(%esp), %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	$1024, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC24, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$318, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L405
L376:
	movb	$0, __ZZ13engineLoadMHKE2fn
	movl	$-1, %eax
	jmp	L373
L411:
	movswl	%dx, %eax
	call	_tileLoad.isra.0
	jmp	L392
L410:
	movl	%edi, %eax
	call	_animateoffs
	leal	(%esi,%eax), %edx
	movswl	%dx, %edi
	jmp	L391
	.cfi_endproc
LFE69:
	.section .rdata,"dr"
LC26:
	.ascii "mmulti: Using port %d\12\0"
LC27:
	.ascii "mmulti: %d-player game\12\0"
LC28:
	.ascii "mmulti: Master-slave mode\12\0"
LC29:
	.ascii "mmulti: Peer-to-peer mode\12\0"
LC30:
	.ascii "mmulti: Player %d at %s:%d\12\0"
	.align 4
LC31:
	.ascii "mmulti: Player %d at %s:%d (%s)\12\0"
LC32:
	.ascii "mmulti: Failed resolving %s\12\0"
	.text
	.p2align 4
	.globl	__Z21initmultiplayersparmsiPKPKc
	.def	__Z21initmultiplayersparmsiPKPKc;	.scl	2;	.type	32;	.endef
__Z21initmultiplayersparmsiPKPKc:
LFB78:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_g_sm_heap, %ecx
	movl	$4194304, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testl	%eax, %eax
	je	L413
	movl	%eax, __ZL6pakmem.lto_priv.0
	call	_initcrc16
	xorl	%eax, %eax
L414:
	movl	$0, __ZL5icnt0(%eax)
	addl	$16, %eax
	movl	$0, __ZL5icnt0-12(%eax)
	movl	$0, __ZL5icnt0-8(%eax)
	movl	$0, __ZL5icnt0-4(%eax)
	cmpl	$64, %eax
	jb	L414
	xorl	%eax, %eax
L416:
	movl	$0, __ZL5ocnt0(%eax)
	addl	$16, %eax
	movl	$0, __ZL5ocnt0-12(%eax)
	movl	$0, __ZL5ocnt0-8(%eax)
	movl	$0, __ZL5ocnt0-4(%eax)
	cmpl	$64, %eax
	jb	L416
	xorl	%eax, %eax
L418:
	movl	$0, __ZL5ocnt1(%eax)
	addl	$16, %eax
	movl	$0, __ZL5ocnt1-12(%eax)
	movl	$0, __ZL5ocnt1-8(%eax)
	movl	$0, __ZL5ocnt1-4(%eax)
	cmpl	$64, %eax
	jb	L418
	movl	$32768, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL4ipak, (%esp)
	call	_memset
	call	*__imp__GetTickCount@0
	movl	%eax, __ZL12lastsendtims
	movl	%eax, %ecx
	movl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L420:
	leal	1(%eax), %edx
	movl	%ecx, __ZL12lastsendtims(,%eax,4)
	movl	%ecx, __ZL12lastsendtims(,%edx,4)
	movl	%ecx, __ZL12lastsendtims+8(,%eax,4)
	addl	$3, %eax
	cmpl	$14, %edx
	jne	L420
	movl	$1, _numplayers
	xorl	%eax, %eax
	movl	$0, _myconnectindex
L421:
	movl	$0, __ZL7otherip(%eax)
	addl	$16, %eax
	movl	$0, __ZL7otherip-12(%eax)
	movl	$0, __ZL7otherip-8(%eax)
	movl	$0, __ZL7otherip-4(%eax)
	cmpl	$64, %eax
	jb	L421
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L423:
	movl	$23513, (%esp)
	call	*__imp__htons@4
	.cfi_def_cfa_offset 56
	movzwl	%ax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, __ZL9otherport(,%edi,4)
	addl	$1, %edi
	cmpl	$16, %edi
	jne	L423
	movl	$-1, _networkmode
	testl	%ebx, %ebx
	jle	L424
	movl	$23513, %ebp
	leal	36(%esp), %edi
	movl	%ebp, 20(%esp)
	movl	%esi, %ebp
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	jmp	L429
	.p2align 5
	.p2align 4,,10
	.p2align 3
L426:
	leal	1(%ebx), %eax
	cmpl	%eax, %esi
	je	L533
L481:
	movl	%eax, %ebx
L429:
	movl	0(%ebp,%ebx,4), %ecx
	movzbl	(%ecx), %eax
	andl	$-3, %eax
	cmpb	$45, %al
	jne	L426
	movzbl	1(%ecx), %eax
	andl	$-33, %eax
	cmpb	$80, %al
	jne	L426
	cmpb	$0, 2(%ecx)
	je	L426
	addl	$2, %ecx
	movl	$10, 8(%esp)
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	_strtol
	movl	%eax, %ecx
	movl	36(%esp), %eax
	cmpb	$0, (%eax)
	jne	L428
	leal	-1025(%ecx), %eax
	cmpl	$64509, %eax
	cmova	20(%esp), %ecx
	movl	%ecx, 20(%esp)
L428:
	movl	20(%esp), %eax
	movl	$LC26, (%esp)
	movl	%eax, 4(%esp)
	call	___mingw_printf
	leal	1(%ebx), %eax
	cmpl	%eax, %esi
	jne	L481
L533:
	movl	20(%esp), %eax
	movl	%ebx, 32(%esp)
	xorl	%edi, %edi
	call	__Z7netiniti.isra.0
	movl	%ebp, 24(%esp)
	movl	$0, 20(%esp)
	.p2align 4
	.p2align 3
L465:
	movl	24(%esp), %eax
	movl	(%eax), %edx
	movzbl	(%edx), %eax
	andl	$-3, %eax
	cmpb	$45, %al
	jne	L433
	movzbl	1(%edx), %eax
	subl	$73, %eax
	cmpb	$39, %al
	ja	L433
	movzbl	%al, %eax
	jmp	*L435(,%eax,4)
	.section .rdata,"dr"
	.align 4
L435:
	.long	L436
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L436
	.long	L433
	.long	L441
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L436
	.long	L433
	.long	L433
	.long	L433
	.long	L433
	.long	L436
	.long	L433
	.long	L441
	.text
L413:
	movl	$4194304, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L433:
	movl	%edx, %eax
	call	_mi_strdup
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L442
	movzbl	(%eax), %esi
	movl	%esi, %eax
	testb	%al, %al
	je	L443
	movl	%edi, 28(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	movl	%ebx, %edi
	jmp	L449
	.p2align 4,,10
	.p2align 3
L444:
	cmpb	$58, %al
	je	L534
	leal	-48(%eax), %ebx
	cmpb	$9, %bl
	ja	L445
	leal	(%ecx,%ecx,4), %ecx
	movzbl	%al, %eax
	leal	-48(%eax,%ecx,2), %ecx
	cmpl	$255, %ecx
	jg	L526
L445:
	addl	$1, %edx
	movzbl	(%edi,%edx), %eax
	testb	%al, %al
	je	L535
L449:
	cmpb	$46, %al
	jne	L444
	addl	$1, %edx
	addl	$1, %ebp
	xorl	%ecx, %ecx
	movzbl	(%edi,%edx), %eax
	testb	%al, %al
	jne	L449
L535:
	movl	%edi, %ebx
	movl	28(%esp), %edi
	cmpl	$3, %ebp
	jne	L443
L447:
	cmpl	$1, _networkmode
	jne	L451
	xorl	%eax, %eax
	cmpl	%edi, _myconnectindex
	sete	%al
	addl	%eax, %edi
L451:
	xorl	%ebp, %ebp
	movl	%esi, %eax
	jmp	L455
	.p2align 4
	.p2align 4,,10
	.p2align 3
L453:
	addl	$1, %ebp
	movzbl	(%ebx,%ebp), %eax
	testb	%al, %al
	je	L454
L455:
	cmpb	$58, %al
	jne	L453
	leal	1(%ebx,%ebp), %eax
	movl	%eax, (%esp)
	call	_atol
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	*__imp__htons@4
	.cfi_def_cfa_offset 56
	movzwl	%ax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movb	$0, (%ebx,%ebp)
	movl	%eax, __ZL9otherport(,%edi,4)
L454:
	movl	%ebx, (%esp)
	call	*__imp__inet_addr@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, __ZL7otherip(,%edi,4)
	movzwl	__ZL9otherport(,%edi,4), %eax
	movl	%eax, (%esp)
	call	*__imp__ntohs@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movzwl	%ax, %eax
	movl	%edi, 4(%esp)
	addl	$1, %edi
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC30, (%esp)
	call	___mingw_printf
L456:
	movl	%ebx, %eax
	call	_mi_free
	addl	$4, 24(%esp)
	movl	20(%esp), %esi
	cmpl	%esi, 32(%esp)
	jne	L483
L442:
	movl	_networkmode, %edx
	cmpl	$-1, %edx
	je	L536
	movl	_numplayers, %eax
	movl	%eax, %ecx
	cmpl	$1, %eax
	jle	L474
	testl	%edi, %edi
	je	L537
	testl	%edx, %edx
	je	L467
	cmpl	%edi, %eax
	jge	L469
L531:
	movl	%edi, _numplayers
L530:
	movl	$0, _connecthead
	leal	-1(%edi), %ecx
L471:
	xorl	%eax, %eax
	testb	$1, %cl
	je	L479
	movl	$1, %eax
	movl	$1, _connectpoint2-4(,%eax,4)
	cmpl	$1, %ecx
	je	L476
	.p2align 5
	.p2align 4
	.p2align 3
L479:
	leal	1(%eax), %edx
	addl	$2, %eax
	movl	%edx, _connectpoint2-4(,%edx,4)
	movl	%eax, _connectpoint2-4(,%eax,4)
	cmpl	%eax, %ecx
	jne	L479
L476:
	movl	$-1, _connectpoint2(,%ecx,4)
	xorl	%eax, %eax
	cmpl	$1, %edi
	setg	%al
	addl	$40, %esp
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
L436:
	.cfi_restore_state
	movl	$2, _numplayers
	movl	24(%esp), %eax
	movl	(%eax), %eax
	movzbl	2(%eax), %eax
	cmpb	$48, %al
	je	L538
	cmpb	$49, %al
	je	L539
L441:
	addl	$4, 24(%esp)
	movl	20(%esp), %esi
	cmpl	%esi, 32(%esp)
	je	L442
L483:
	movl	20(%esp), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L534:
	movl	%edi, %ebx
	movl	28(%esp), %edi
	cmpl	$3, %ebp
	jne	L443
	movzbl	1(%ebx,%edx), %eax
	testb	%al, %al
	je	L447
	leal	2(%ebx,%edx), %ecx
	movl	%ebx, %ebp
	xorl	%edx, %edx
	jmp	L448
	.p2align 4,,10
	.p2align 3
L541:
	leal	(%edx,%edx,4), %edx
	leal	-48(%eax,%edx,2), %edx
	cmpl	$65535, %edx
	jg	L525
	movzbl	(%ecx), %eax
	addl	$1, %ecx
	testb	%al, %al
	je	L540
L448:
	leal	-48(%eax), %ebx
	cmpb	$9, %bl
	jbe	L541
L525:
	movl	%ebp, %ebx
L443:
	movl	$23513, (%esp)
	xorl	%esi, %esi
	call	*__imp__htons@4
	.cfi_def_cfa_offset 56
	movl	%eax, %ebp
	movzbl	(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testb	%al, %al
	jne	L457
	jmp	L458
	.p2align 4
	.p2align 4,,10
	.p2align 3
L459:
	addl	$1, %esi
	movzbl	(%ebx,%esi), %eax
	testb	%al, %al
	je	L458
L457:
	cmpb	$58, %al
	jne	L459
	leal	1(%ebx,%esi), %eax
	movl	%eax, (%esp)
	call	_atol
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	*__imp__htons@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movb	$0, (%ebx,%esi)
	movl	%eax, %ebp
L458:
	movl	%ebx, (%esp)
	call	*__imp__gethostbyname@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %esi
	testl	%eax, %eax
	je	L461
	cmpl	$1, _networkmode
	jne	L463
	xorl	%eax, %eax
	cmpl	%edi, _myconnectindex
	sete	%al
	addl	%eax, %edi
L463:
	movl	12(%esi), %eax
	movl	24(%esp), %ecx
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, __ZL7otherip(,%edi,4)
	movzwl	%bp, %eax
	movl	(%ecx), %ebp
	movl	%eax, __ZL9otherport(,%edi,4)
	movl	%eax, (%esp)
	call	*__imp__ntohs@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movw	%ax, 28(%esp)
	movl	12(%esi), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__inet_ntoa@4
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movzwl	28(%esp), %edx
	movl	%edi, 4(%esp)
	addl	$1, %edi
	movl	%ebp, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC31, (%esp)
	call	___mingw_printf
	jmp	L456
	.p2align 4,,10
	.p2align 3
L526:
	movl	%edi, %ebx
	movl	28(%esp), %edi
	jmp	L443
L538:
	movl	$0, _networkmode
	movl	24(%esp), %eax
	movl	(%eax), %eax
	cmpb	$58, 3(%eax)
	je	L542
L438:
	movl	$LC28, (%esp)
	call	___mingw_printf
	jmp	L441
L461:
	movl	24(%esp), %eax
	movl	(%eax), %eax
	movl	$LC32, (%esp)
	movl	%eax, 4(%esp)
	call	___mingw_printf
	jmp	L456
L540:
	movl	%ebp, %ebx
	jmp	L447
L539:
	movl	$LC29, (%esp)
	movl	%edi, _myconnectindex
	addl	$1, %edi
	movl	$1, _networkmode
	call	___mingw_printf
	jmp	L441
L542:
	movzbl	4(%eax), %eax
	leal	-48(%eax), %edx
	cmpb	$9, %dl
	ja	L438
	movl	24(%esp), %esi
	subl	$48, %eax
	movl	%eax, _numplayers
	movl	(%esi), %edx
	movzbl	5(%edx), %edx
	leal	-48(%edx), %ecx
	cmpb	$9, %cl
	ja	L439
	leal	(%eax,%eax,4), %eax
	leal	-48(%edx,%eax,2), %eax
	movl	%eax, _numplayers
L439:
	movl	%eax, 4(%esp)
	movl	$LC27, (%esp)
	call	___mingw_printf
	jmp	L438
L474:
	cmpl	%edi, %eax
	jge	L469
	movl	%edi, _numplayers
L478:
	movl	$0, _connecthead
	leal	-1(%edi), %ecx
	testl	%ecx, %ecx
	jg	L471
	jmp	L476
L536:
	testl	%edi, %edi
	je	L519
	movl	$2, _numplayers
	movl	$2, %ecx
	movl	$0, _networkmode
L467:
	movl	$1, _myconnectindex
	movl	_numplayers, %eax
	cmpl	%edi, %ecx
	jl	L531
L469:
	movl	%eax, %edi
	jmp	L478
L424:
	movl	$23513, %eax
	call	__Z7netiniti.isra.0
L519:
	movl	_numplayers, %edi
	movl	%edi, %eax
	cmpl	$1, %edi
	jg	L530
	testl	%edi, %edi
	jns	L469
	movl	$0, _numplayers
	movl	$-1, %ecx
	xorl	%edi, %edi
	movl	$0, _connecthead
	jmp	L476
L537:
	movl	$0, _connecthead
	leal	-1(%eax), %ecx
	movl	%eax, %edi
	jmp	L471
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__Z17mmulti_sendpacketiPhi
	.def	__Z17mmulti_sendpacketiPhi;	.scl	2;	.type	32;	.endef
__Z17mmulti_sendpacketiPhi:
LFB82:
	.cfi_startproc
	cmpl	$1, _numplayers
	jle	L548
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
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	__ZL7pakmemi, %edi
	leal	(%edi,%ecx), %eax
	cmpl	$4194302, %eax
	jg	L546
	leal	2(%edi), %eax
	movl	%edi, %ebp
	movl	%eax, 12(%esp)
L545:
	movl	%ecx, %esi
	movl	__ZL5ocnt1(,%ebx,4), %ecx
	movl	%edx, %eax
	movl	%ebx, %edx
	sall	$9, %edx
	andl	$511, %ecx
	addl	%ecx, %edx
	movl	%edi, __ZL4opak(,%edx,4)
	movl	__ZL6pakmem.lto_priv.0, %edx
	movw	%si, (%edx,%ebp)
	addl	12(%esp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	leal	2(%edi,%esi), %eax
	addl	$1, __ZL5ocnt1(,%ebx,4)
	movl	%eax, __ZL7pakmemi
	movl	__ZL7otherip(,%ebx,4), %eax
	testl	%eax, %eax
	je	L543
	addl	$16, %esp
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
	jmp	__Z13dosendpacketsi.part.0
	.p2align 4,,10
	.p2align 3
L546:
	.cfi_restore_state
	movl	$3, 12(%esp)
	movl	$1, %ebp
	movl	$1, %edi
	jmp	L545
	.p2align 4,,10
	.p2align 3
L543:
	addl	$16, %esp
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
L548:
	ret
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
	.align 4
LC33:
	.ascii "mmulti: player %d connected! (%d.%d.%d.%d:%d)\0"
	.text
	.p2align 4
	.globl	__Z16mmulti_getpacketPiPh
	.def	__Z16mmulti_getpacketPiPh;	.scl	2;	.type	32;	.endef
__Z16mmulti_getpacketPiPh:
LFB84:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	movl	%ebp, 88(%esp)
	cmpl	$1, _numplayers
	.cfi_offset 5, -8
	jle	L552
	movl	%esi, 80(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	__ZL8netready.lto_priv.0, %eax
	movl	%ebx, 76(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 84(%esp)
	.cfi_offset 7, -12
	testl	%eax, %eax
	je	L553
	movl	_connecthead, %edi
	testl	%edi, %edi
	js	L553
	.p2align 4
	.p2align 3
L556:
	cmpl	%edi, _myconnectindex
	je	L554
	movl	__ZL7otherip(,%edi,4), %eax
	testl	%eax, %eax
	je	L554
	movl	%edi, %eax
	call	__Z13dosendpacketsi.part.0
L554:
	movl	_networkmode, %ebp
	testl	%ebp, %ebp
	jne	L555
	movl	_connecthead, %eax
	cmpl	%eax, _myconnectindex
	jne	L553
L555:
	movl	_connectpoint2(,%edi,4), %edi
	testl	%edi, %edi
	jns	L556
L553:
	movl	%esi, 52(%esp)
	.p2align 4
	.p2align 3
L576:
	leal	56(%esp), %eax
	movl	$16, 56(%esp)
	movl	%eax, 20(%esp)
	leal	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	__ZL6mysock.lto_priv.0, %eax
	movl	$0, 12(%esp)
	movl	$2048, 8(%esp)
	movl	$__ZL6pakbuf, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__recvfrom@24
	.cfi_def_cfa_offset 72
	subl	$24, %esp
	.cfi_def_cfa_offset 96
	cmpl	$-1, %eax
	je	L646
	movl	64(%esp), %edx
	movzwl	62(%esp), %esi
	xorl	%eax, %eax
	movl	_myconnectindex, %ebp
	movl	%edx, __ZL8snatchip
	movl	%esi, __ZL10snatchport
	jmp	L581
	.p2align 5
	.p2align 4,,10
	.p2align 3
L579:
	addl	$1, %eax
	cmpl	$16, %eax
	je	L647
L581:
	cmpl	__ZL7otherip(,%eax,4), %edx
	jne	L579
	cmpl	__ZL9otherport(,%eax,4), %esi
	jne	L579
	movl	%eax, 40(%esp)
L582:
	movzwl	__ZL6pakbuf, %edi
	cmpl	$2046, %edi
	jg	L576
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	testl	%edi, %edi
	je	L583
	movl	%edx, 44(%esp)
	movl	%esi, 48(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L557:
	movzbl	__ZL6pakbuf(%ecx), %esi
	movl	%eax, %edx
	movzbl	%ah, %eax
	addl	$1, %ecx
	sall	$8, %edx
	xorl	%esi, %eax
	movzwl	%dx, %edx
	xorl	_crctab16(,%eax,4), %edx
	movl	%edx, %eax
	cmpl	%ecx, %edi
	jne	L557
	movl	44(%esp), %edx
	movl	48(%esp), %esi
L583:
	cmpw	%ax, __ZL6pakbuf(%edi)
	jne	L576
	movl	__ZL6pakbuf+2, %ecx
	cmpl	$-1, %ecx
	jne	L559
	movzbl	__ZL6pakbuf+6, %eax
	cmpb	$-86, %al
	je	L648
	cmpb	$-85, %al
	jne	L576
	cmpl	%ebp, _connecthead
	je	L576
	movzbl	__ZL6pakbuf+7, %ecx
	movzbl	__ZL6pakbuf+8, %eax
	cmpb	%al, %cl
	jnb	L576
	cmpb	$15, %al
	ja	L576
	movl	%ecx, _myconnectindex
	movl	%eax, _numplayers
	movl	$0, _connecthead
	subl	$1, %eax
	je	L567
	xorl	%ecx, %ecx
	testb	$1, %al
	je	L568
	movl	$1, _connectpoint2
	movl	$1, %ecx
	cmpl	%eax, %ecx
	je	L567
L568:
	leal	1(%ecx), %edi
	addl	$2, %ecx
	movl	%edi, _connectpoint2-4(,%edi,4)
	movl	%ecx, _connectpoint2-4(,%ecx,4)
	cmpl	%eax, %ecx
	jne	L568
L567:
	movl	$-1, _connectpoint2(,%eax,4)
	movl	%edx, __ZL7otherip
	movl	%esi, __ZL9otherport
	movl	$1, __ZL8netready.lto_priv.0
	jmp	L576
	.p2align 4,,10
	.p2align 3
L647:
	movl	%ebp, 40(%esp)
	jmp	L582
	.p2align 4,,10
	.p2align 3
L646:
	movl	52(%esp), %esi
	testl	%ebx, %ebx
	je	L644
	movl	_connecthead, %edi
	testl	%edi, %edi
	js	L644
	movl	_networkmode, %eax
	movl	_myconnectindex, %ecx
	testl	%eax, %eax
	jne	L588
	cmpl	%edi, %ecx
	jne	L584
	.p2align 4
	.p2align 3
L588:
	cmpl	%ecx, %edi
	je	L586
	movl	__ZL5icnt0(,%edi,4), %edx
	movl	%edi, %eax
	sall	$9, %eax
	andl	$511, %edx
	addl	%edx, %eax
	movl	__ZL4ipak(,%eax,4), %ebp
	testl	%ebp, %ebp
	jne	L587
L586:
	movl	_connectpoint2(,%edi,4), %edi
	testl	%edi, %edi
	jns	L588
L644:
	movl	76(%esp), %ebx
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
L552:
	xorl	%ebp, %ebp
L551:
	movl	%ebp, %eax
	movl	88(%esp), %ebp
	addl	$92, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L559:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %eax
	cmpl	%ecx, __ZL5ocnt0(,%eax,4)
	jl	L649
L569:
	movl	40(%esp), %esi
	leal	256(%ecx), %edi
	movl	__ZL5ocnt1(,%esi,4), %eax
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	cmpl	%edi, %ecx
	jge	L570
	sall	$9, %esi
	subl	%ecx, %edi
	xorl	%eax, %eax
	movl	%esi, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L572:
	movl	%eax, %edx
	sarl	$3, %edx
	movzbl	__ZL6pakbuf+6(%edx), %esi
	movl	%eax, %edx
	andl	$7, %edx
	btl	%edx, %esi
	jnc	L571
	leal	(%ecx,%eax), %edx
	andl	$511, %edx
	addl	%ebp, %edx
	movl	$0, __ZL4opak(,%edx,4)
L571:
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	L572
L570:
	movzwl	__ZL6pakbuf+38, %edi
	testl	%edi, %edi
	je	L576
	movl	40(%esp), %ebp
	movl	%ebx, 48(%esp)
	movl	$40, %esi
	movl	%ebp, %eax
	sall	$9, %eax
	movl	%eax, 40(%esp)
	jmp	L575
L651:
	leal	2(%esi), %edx
	movl	%esi, %ecx
	movl	%edx, 44(%esp)
L574:
	addl	40(%esp), %eax
	leal	__ZL6pakbuf(%ebx), %edx
	movl	%esi, __ZL4ipak(,%eax,4)
	movl	__ZL6pakmem.lto_priv.0, %eax
	movw	%di, (%eax,%ecx)
	addl	44(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	leal	2(%esi,%edi), %eax
	movl	%eax, __ZL7pakmemi
L573:
	addl	%edi, %ebx
	movzwl	__ZL6pakbuf(%ebx), %edi
	leal	2(%ebx), %esi
	testl	%edi, %edi
	je	L650
L575:
	movl	__ZL6pakbuf(%esi), %eax
	leal	4(%esi), %ebx
	cmpl	%eax, __ZL5icnt0(,%ebp,4)
	jg	L573
	movl	40(%esp), %ecx
	andl	$511, %eax
	leal	(%ecx,%eax), %edx
	movl	__ZL4ipak(,%edx,4), %edx
	testl	%edx, %edx
	jne	L573
	movl	__ZL7pakmemi, %esi
	leal	(%esi,%edi), %edx
	cmpl	$4194302, %edx
	jle	L651
	movl	$3, 44(%esp)
	movl	$1, %ecx
	movl	$1, %esi
	jmp	L574
L650:
	movl	48(%esp), %ebx
	jmp	L576
L649:
	movl	%ecx, __ZL5ocnt0(,%eax,4)
	jmp	L569
L584:
	movl	__ZL5icnt0(,%edi,4), %edx
	movl	%edi, %eax
	sall	$9, %eax
	andl	$511, %edx
	addl	%edx, %eax
	movl	__ZL4ipak(,%eax,4), %ebp
	testl	%ebp, %ebp
	jne	L587
	movl	76(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	jmp	L551
L587:
	.cfi_restore_state
	movl	__ZL6pakmem.lto_priv.0, %eax
	movl	%ebp, %edx
	movswl	(%eax,%ebp), %ebp
	leal	2(%eax,%edx), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, 8(%esp)
	call	_memcpy
	movl	%edi, (%esi)
	movl	__ZL5icnt0(,%edi,4), %eax
	movl	%edi, %edx
	sall	$9, %edx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$511, %ecx
	movl	%eax, __ZL5icnt0(,%edi,4)
	movl	%ebp, %eax
	addl	%ecx, %edx
	movl	$0, __ZL4ipak(,%edx,4)
	movl	76(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	movl	88(%esp), %ebp
	addl	$92, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L648:
	.cfi_restore_state
	cmpl	%ebp, _connecthead
	jne	L576
	movl	_numplayers, %eax
	movl	$1, %edi
	cmpl	$1, %eax
	jle	L576
L564:
	movl	__ZL7otherip(,%edi,4), %ecx
	testl	%ecx, %ecx
	je	L562
	cmpl	%edx, %ecx
	jne	L563
	cmpl	%esi, __ZL9otherport(,%edi,4)
	je	L562
L563:
	addl	$1, %edi
	cmpl	%eax, %edi
	jne	L564
	jmp	L576
L562:
	movl	%edi, %ecx
	movl	%edx, 40(%esp)
	xorl	%ebp, %ebp
	movb	%cl, __ZL6pakbuf+7
	movl	$9, %ecx
	movl	%edx, __ZL7otherip(,%edi,4)
	movl	%esi, __ZL9otherport(,%edi,4)
	movl	$-1, __ZL6pakbuf+2
	movb	$-85, __ZL6pakbuf+6
	movw	%cx, __ZL6pakbuf
	movb	%al, __ZL6pakbuf+8
	xorl	%eax, %eax
L565:
	movl	%eax, %ecx
	movzbl	%ah, %edx
	movzbl	__ZL6pakbuf(%ebp), %eax
	addl	$1, %ebp
	sall	$8, %ecx
	xorl	%eax, %edx
	movzwl	%cx, %ecx
	xorl	_crctab16(,%edx,4), %ecx
	movl	%ecx, %eax
	cmpl	$9, %ebp
	jne	L565
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	40(%esp), %edx
	movw	%cx, __ZL6pakbuf+9
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	js	L566
	movl	%edx, %eax
	movl	%esi, 36(%esp)
	shrl	$24, %eax
	movl	%edi, 16(%esp)
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	sarl	$16, %eax
	movl	$LC33, 12(%esp)
	movzbl	%al, %eax
	movl	$751, 8(%esp)
	movl	%eax, 28(%esp)
	movzbl	%dh, %eax
	movzbl	%dl, %edx
	movl	%eax, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L566:
	movl	$11, %edx
	movl	%edi, %eax
	call	__Z7netsendiPci.constprop.0.isra.0
	jmp	L576
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z21initmultiplayerscyclev
	.def	__Z21initmultiplayerscyclev;	.scl	2;	.type	32;	.endef
__Z21initmultiplayerscyclev:
LFB87:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	call	_handleevents.isra.0
	movl	$1, (%esp)
	call	*__imp__Sleep@4
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	leal	4(%esp), %eax
	call	__Z16mmulti_getpacketPiPh
	call	*__imp__GetTickCount@0
	movl	_connecthead, %ebx
	cmpl	%ebx, _myconnectindex
	je	L666
	movl	%eax, %edx
	movl	__ZL8netready.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L659
	movl	__ZL12lastsendtims(,%ebx,4), %ecx
	cmpl	%ecx, %edx
	jge	L660
	movl	%edx, __ZL12lastsendtims(,%ebx,4)
L655:
	movl	8(%esp), %ebx
	movl	$1, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L666:
	.cfi_restore_state
	movl	_numplayers, %eax
	subl	$1, %eax
	testl	%eax, %eax
	jle	L654
	.p2align 4
	.p2align 4
	.p2align 3
L656:
	movl	__ZL7otherip(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L655
	subl	$1, %eax
	jne	L656
L657:
	movl	$1, __ZL8netready.lto_priv.0
L659:
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L660:
	.cfi_restore_state
	addl	$249, %ecx
	cmpl	%ecx, %edx
	jle	L655
	movl	$-1, __ZL6pakbuf+2
	movb	$-86, __ZL6pakbuf+6
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	%edx, __ZL12lastsendtims(,%ebx,4)
	movl	$7, %edx
	movw	%dx, __ZL6pakbuf
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L662:
	movzbl	__ZL6pakbuf(%edx), %esi
	movl	%eax, %ecx
	movzbl	%ah, %eax
	addl	$1, %edx
	sall	$8, %ecx
	xorl	%esi, %eax
	movzwl	%cx, %ecx
	xorl	_crctab16(,%eax,4), %ecx
	movl	%ecx, %eax
	cmpl	$7, %edx
	jne	L662
	movl	$9, %edx
	movl	%ebx, %eax
	movw	%cx, __ZL6pakbuf+7
	call	__Z7netsendiPci.constprop.0.isra.0
	movl	12(%esp), %esi
	.cfi_restore 6
	jmp	L655
L654:
	jne	L655
	jmp	L657
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	.def	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0:
LFB88:
	.cfi_startproc
	movl	_osd, %edx
	testl	%edx, %edx
	je	L670
	movl	%eax, %edx
	movl	(%eax), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L670
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	12(%eax), %eax
	movl	%eax, %ebx
	andl	$63, %ebx
	cmpl	$16, %ebx
	je	L671
	ja	L672
	movl	(%ecx), %ecx
	cmpl	%ecx, 8(%edx)
	jne	L671
L673:
	shrl	$13, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	andl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L672:
	.cfi_restore_state
	fldl	(%ecx)
	fldl	8(%edx)
	fucomip	%st(1), %st
	fstp	%st(0)
	jp	L671
	je	L673
L671:
	movl	-4(%ebp), %ebx
	movl	$1, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L670:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__ZL15OSD_HistoryPrevv.lto_priv.0
	.def	__ZL15OSD_HistoryPrevv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15OSD_HistoryPrevv.lto_priv.0:
LFB89:
	.cfi_startproc
	movl	_osd, %edx
	movl	1092(%edx), %eax
	movl	1088(%edx), %ecx
	subl	$1, %eax
	cmpl	%eax, %ecx
	jl	L690
	ret
	.p2align 4,,10
	.p2align 3
L690:
	addl	$1, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	44(%edx), %eax
	movl	%ecx, 1088(%edx)
	movl	60(%edx,%ecx,4), %ecx
	movl	$512, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	leal	44(%edx), %eax
	jmp	__ZL24OSD_AdjustEditorPositionR9osdedit_t
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	__ZL15OSD_HistoryNextv.lto_priv.0
	.def	__ZL15OSD_HistoryNextv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15OSD_HistoryNextv.lto_priv.0:
LFB90:
	.cfi_startproc
	movl	_osd, %edx
	movl	1088(%edx), %eax
	testl	%eax, %eax
	js	L691
	jne	L693
	xorl	%eax, %eax
	movl	$0, 52(%edx)
	movw	%ax, 56(%edx)
	movzwl	1148(%edx), %eax
	movl	$-1, 1088(%edx)
	subl	$4, %eax
	movw	%ax, 58(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L691:
	ret
	.p2align 4,,10
	.p2align 3
L693:
	subl	$1, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	44(%edx), %ecx
	movl	%eax, 1088(%edx)
	movl	60(%edx,%eax,4), %eax
	movl	$512, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	leal	44(%edx), %eax
	jmp	__ZL24OSD_AdjustEditorPositionR9osdedit_t
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__Z17OSD_ResizeDisplayii
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
__Z17OSD_ResizeDisplayii:
LFB91:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_osd, %ecx
	movl	3248(%ecx), %eax
	movl	12(%eax), %eax
	cmpl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, %eax
	jne	L697
	testl	%ebx, %ebx
	leal	7(%ebx), %eax
	cmovns	%ebx, %eax
	movl	%ecx, %ebx
	sarl	$3, %eax
	leal	-1(%eax), %edi
L698:
	movl	$32768, %eax
	xorl	%edx, %edx
	movl	%edi, 1148(%ecx)
	idivl	%edi
	movl	%eax, 36(%ecx)
	movl	3248(%ebx), %eax
	movl	16(%eax), %eax
	cmpl	$__ZL22_internal_getrowheighti.lto_priv.0, %eax
	jne	L699
	testl	%esi, %esi
	leal	7(%esi), %eax
	cmovns	%esi, %eax
	sarl	$3, %eax
L700:
	subl	$2, %eax
	movl	__ZL7osdrows, %esi
	movl	%eax, %edx
	movl	%eax, __ZL10osdmaxrows
	sarl	%edx
	testl	%esi, %esi
	je	L702
	cmpl	%esi, %eax
	movl	$1, %edx
	cmovg	%esi, %eax
	cmpl	$1, %esi
	cmovg	%eax, %edx
L702:
	movl	%edx, 1144(%ecx)
	cmpl	$-1, __ZL10osdrowscur.lto_priv.0
	je	L703
	movl	%edx, __ZL10osdrowscur.lto_priv.0
L703:
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$0, 28(%ecx)
	movw	%ax, 1152(%ecx)
	movzwl	1148(%ebx), %eax
	movw	%dx, 56(%ebx)
	movl	$-1, __ZL13whiteColorIdx
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	xorl	%eax, %eax
	call	__ZL9osd_cleari
	addl	$8, %esp
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
	jmp	__Z20OSD_UpdateDrawBufferb
	.p2align 4,,10
	.p2align 3
L697:
	.cfi_restore_state
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	*%eax
	movl	_osd, %ebx
	movl	4(%esp), %ecx
	movl	%eax, %edi
	jmp	L698
	.p2align 4,,10
	.p2align 3
L699:
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	*%eax
	movl	_osd, %ebx
	movl	4(%esp), %ecx
	jmp	L700
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
LC34:
	.ascii "osdrows\0"
LC35:
	.ascii "osdtextmode\0"
LC36:
	.ascii "osdhistorydepth\0"
	.text
	.p2align 4
	.def	__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t:
LFB92:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	20(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z15osdcmd_cvar_setPK13osdfuncparm_t
	movl	4(%ebx), %ebx
	movl	$LC34, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L708
	movl	__ZL10osdmaxrows, %edx
	movl	__ZL7osdrows, %ecx
	movl	%edx, %eax
	sarl	%eax
	testl	%ecx, %ecx
	je	L710
	cmpl	%edx, %ecx
	movl	$1, %eax
	cmovle	%ecx, %edx
	cmpl	$1, %ecx
	cmovg	%edx, %eax
L710:
	movl	_osd, %edx
	movl	%eax, 1144(%edx)
	cmpl	$-1, __ZL10osdrowscur.lto_priv.0
	je	L711
	movl	%eax, __ZL10osdrowscur.lto_priv.0
L711:
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L708:
	.cfi_restore_state
	movl	$LC35, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L722
	movl	$LC36, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L711
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	_osd, %esi
	leal	60(%esi), %ebx
	addl	$1084, %esi
	.p2align 4
	.p2align 3
L716:
	movl	(%ebx), %eax
	movl	_g_sm_heap, %ecx
	addl	$4, %ebx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, -4(%ebx)
	cmpl	%esi, %ebx
	jne	L716
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L722:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	movl	_osd, %eax
	xorl	%edx, %edx
	movl	1140(%eax), %ecx
	testl	%ecx, %ecx
	setne	%dl
	movl	%edx, 1140(%eax)
	movl	3248(%eax), %edx
	jne	L723
	cmpl	$__ZL17default_callbacks, %edx
	je	L724
L715:
	cmpl	$200, _qsetmode
	jne	L711
	movl	_ydim, %edx
	movl	_xdim, %eax
	call	__Z17OSD_ResizeDisplayii
	jmp	L711
L723:
	movl	$__ZL17default_callbacks, %ecx
	cmpl	%ecx, %edx
	je	L715
L714:
	movl	%ecx, 3248(%eax)
	jmp	L715
L724:
	movl	$__ZL14user_callbacks.lto_priv.0, %ecx
	jmp	L714
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z16OSD_CaptureInputi
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
__Z16OSD_CaptureInputi:
LFB95:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	leal	0(,%ebx,4), %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_osd, %edx
	movl	$0, _g_mouseBits
	movl	1172(%edx), %eax
	andl	$-53, %eax
	orl	%ecx, %eax
	movl	%eax, 1172(%edx)
	movl	%ebx, %eax
	xorl	$1, %eax
	andl	$1, %eax
	call	_mouseGrabInput
	movl	_osd, %eax
	movl	3248(%eax), %eax
	movl	28(%eax), %eax
	cmpl	$__ZL19_internal_onshowosdi.lto_priv.0, %eax
	jne	L734
L726:
	xorl	%eax, %eax
L727:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L727
	movb	$0, _g_keyAsciiEnd
	movb	$0, _g_keyAsciiPos
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L734:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	*%eax
	jmp	L726
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__Z8OSD_Drawv
	.def	__Z8OSD_Drawv;	.scl	2;	.type	32;	.endef
__Z8OSD_Drawv:
LFB97:
	.cfi_startproc
	movl	_osd, %edx
	testl	%edx, %edx
	je	L804
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%ebx, 44(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L810
L737:
	xorl	%eax, %eax
	call	__Z20OSD_UpdateDrawBufferb
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	cmpl	%edx, 1144(%eax)
	je	L811
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	jle	L812
	movzbl	1154(%eax), %eax
	cmpl	$-1, %edx
	jl	L741
	cmpb	$1, %al
	je	L741
	cmpl	$-1, %edx
	je	L807
	cmpb	$-1, %al
	je	L742
L807:
	leal	36(%esp), %esi
	.p2align 4
	.p2align 3
L746:
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	%eax, %edx
	imull	$1000, 36(%esp), %eax
	addl	%edx, %eax
	movl	%eax, __ZL10osdscrtime.lto_priv.0
	movl	_osd, %eax
L739:
	testb	$2, 1172(%eax)
	je	L735
	movl	__ZL10osdrowscur.lto_priv.0, %ebx
	testl	%ebx, %ebx
	je	L735
	movl	%esi, 48(%esp)
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzwl	1152(%eax), %esi
	movl	32(%eax), %ebp
	movl	1148(%eax), %edi
	subl	%esi, %ebp
	cmpl	%ebx, %ebp
	cmovg	%ebx, %ebp
	call	_videoBeginDrawing
	movl	_osd, %eax
	movl	3248(%eax), %edx
	movl	20(%edx), %edx
	cmpl	$__ZL25_internal_clearbackgroundii.lto_priv.0, %edx
	jne	L813
L751:
	testl	%ebp, %ebp
	jle	L752
	subl	$1, %ebx
	imull	%edi, %esi
	movl	1148(%eax), %edx
	movl	%ebx, %edi
	subl	%ebp, %edi
	jmp	L753
	.p2align 4,,10
	.p2align 3
L814:
	movl	1136(%eax), %ebp
	movl	3248(%eax), %ecx
	movl	%ebp, 20(%esp)
	movl	1132(%eax), %ebp
	movl	%edx, 12(%esp)
	movl	%ebp, 16(%esp)
	movl	20(%eax), %edx
	movl	%ebx, 4(%esp)
	subl	$1, %ebx
	addl	%esi, %edx
	movl	$0, (%esp)
	movl	%edx, 8(%esp)
	call	*4(%ecx)
	movl	_osd, %eax
	movl	1148(%eax), %edx
	addl	%edx, %esi
	cmpl	%edi, %ebx
	je	L752
L753:
	leal	(%esi,%edx), %ecx
	cmpl	$32768, %ecx
	jle	L814
L752:
	movl	1172(%eax), %edx
	movl	$2, 28(%esp)
	movl	$0, 24(%esp)
	notl	%edx
	andl	$80, %edx
	je	L815
L754:
	movl	1116(%eax), %ebx
	testl	%ebx, %ebx
	je	L816
L755:
	movl	1120(%eax), %edi
	movzwl	1152(%eax), %esi
	movl	32(%eax), %ecx
	movl	3248(%eax), %edx
	movl	%edi, 32(%esp)
	movzwl	%si, %edi
	subl	$1, %ecx
	movl	(%edx), %ebp
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	cmpl	%ecx, %edi
	je	L817
	testw	%si, %si
	je	L758
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ebp
	jne	L759
	movl	$94, %ebp
	movw	%bp, 36(%esp)
L809:
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_printext256
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
L758:
	movl	3248(%eax), %esi
	movl	1172(%eax), %ecx
	movl	%edx, %edi
	movl	1120(%eax), %ebp
	movl	(%esi), %esi
	testb	$64, %cl
	je	L760
	cmpw	$0, 1152(%eax)
	setne	%al
	movzbl	%al, %eax
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %esi
	jne	L761
	leal	36(%esp), %ecx
	leal	4(,%edx,8), %edx
	movl	$0, 20(%esp)
	movl	$67, %edi
	movl	%ecx, 16(%esp)
	movswl	__ZL13whiteColorIdx, %ecx
	leal	4(,%eax,8), %eax
	movl	$-1, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movw	%di, 36(%esp)
	call	_printext256
L762:
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	movl	1172(%eax), %ecx
	testb	$16, %cl
	je	L763
	movl	3248(%eax), %esi
	andl	$64, %ecx
	movl	1120(%eax), %ebp
	movl	%edx, %edi
	movl	(%esi), %esi
	je	L775
	cmpw	$1, 1152(%eax)
	movl	$1, %eax
	sbbl	$-1, %eax
L764:
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %esi
	jne	L765
	leal	36(%esp), %edx
	leal	4(,%eax,8), %eax
	movl	$0, 20(%esp)
	movl	$72, %esi
	movl	%edx, 16(%esp)
	movswl	__ZL13whiteColorIdx, %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	leal	4(,%edi,8), %edx
	movl	%edx, 4(%esp)
	movl	$-1, 12(%esp)
	movw	%si, 36(%esp)
	call	_printext256
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
L763:
	movl	3248(%eax), %ecx
	movl	(%ecx), %ecx
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ecx
	jne	L766
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	$62, %ecx
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%edx,8), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movw	%cx, 36(%esp)
	leal	4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_printext256
L767:
	movl	_osd, %eax
	movl	1148(%eax), %edi
	movswl	56(%eax), %edx
	movswl	52(%eax), %ebx
	leal	-4(%edi), %ecx
	movl	24(%esp), %edi
	movl	%edx, %esi
	subl	%edx, %ebx
	subl	%edi, %ecx
	cmpl	%ebx, %ecx
	cmovg	%ebx, %ecx
	movl	%ecx, %ebx
	subl	$1, %ebx
	js	L768
	leal	2(%ecx,%edi), %edi
	jmp	L771
	.p2align 4,,10
	.p2align 3
L819:
	leal	36(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movswl	__ZL13whiteColorIdx, %eax
	movl	$-1, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(,%ebp,8), %eax
	movl	%eax, 4(%esp)
	leal	4(,%edi,8), %eax
	movl	%eax, (%esp)
	movb	$0, 37(%esp)
	movb	%dl, 36(%esp)
	call	_printext256
L770:
	movl	_osd, %eax
	subl	$1, %ebx
	subl	$1, %edi
	movswl	56(%eax), %edx
	cmpl	$-1, %ebx
	je	L818
L771:
	movl	3248(%eax), %ecx
	movl	44(%eax), %ebp
	movl	(%ecx), %ecx
	addl	%ebx, %ebp
	movzbl	0(%ebp,%edx), %edx
	movl	__ZL10osdrowscur.lto_priv.0, %ebp
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ecx
	je	L819
	movl	1128(%eax), %esi
	movl	%esi, 16(%esp)
	movl	1124(%eax), %eax
	movl	%edx, 8(%esp)
	addl	%eax, %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, (%esp)
	call	*%ecx
	jmp	L770
	.p2align 4,,10
	.p2align 3
L812:
	.cfi_restore 5
	.cfi_restore 7
	cmpl	$-1, %edx
	jl	L741
L742:
	leal	36(%esp), %esi
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	$1000, 36(%esp), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	subl	__ZL10osdscrtime.lto_priv.0, %ebx
	addl	%eax, %ebx
	jmp	L749
	.p2align 4,,10
	.p2align 3
L750:
	movl	_osd, %eax
	movl	1144(%eax), %eax
	movl	$200, (%esp)
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	subl	%eax, %ebx
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	subl	$1, %eax
	movl	%eax, __ZL10osdrowscur.lto_priv.0
	testl	%eax, %eax
	jle	L746
L749:
	cmpl	$-1, %ebx
	jne	L750
	jmp	L746
	.p2align 4,,10
	.p2align 3
L741:
	leal	36(%esp), %esi
	movl	%esi, %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	$1000, 36(%esp), %ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	subl	__ZL10osdscrtime.lto_priv.0, %ebx
	addl	%eax, %ebx
	jmp	L745
	.p2align 4,,10
	.p2align 3
L747:
	movl	_osd, %eax
	movl	1144(%eax), %eax
	movl	$200, (%esp)
	movl	%eax, 4(%esp)
	call	_tabledivide32.lto_priv.1
	movl	_osd, %edx
	subl	%eax, %ebx
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	addl	$1, %eax
	movl	%eax, __ZL10osdrowscur.lto_priv.0
	cmpl	%eax, 1144(%edx)
	jle	L746
L745:
	cmpl	$-1, %ebx
	jne	L747
	jmp	L746
	.p2align 4,,10
	.p2align 3
L735:
	.cfi_restore 6
	movl	44(%esp), %ebx
	addl	$60, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L811:
	.cfi_restore_state
	movb	$0, 1154(%eax)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L810:
	movl	1172(%edx), %ecx
	movl	%ecx, %eax
	andl	$-3, %ecx
	shrl	%eax
	notl	%eax
	andl	$1, %eax
	leal	(%eax,%eax), %ebx
	orl	%ebx, %ecx
	movl	%ecx, 1172(%edx)
	call	__Z16OSD_CaptureInputi
	jmp	L737
	.p2align 4,,10
	.p2align 3
L817:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$__ZL21_internal_drawosdchariicii.lto_priv.0, %ebp
	jne	L757
	movl	$126, %eax
	movw	%ax, 36(%esp)
	jmp	L809
	.p2align 4,,10
	.p2align 3
L815:
	xorl	%ecx, %ecx
	cmpw	$0, 1152(%eax)
	setne	%cl
	leal	2(%ecx), %edi
	movl	%ecx, 24(%esp)
	movl	%edi, 28(%esp)
	jmp	L754
	.p2align 4,,10
	.p2align 3
L816:
	leal	36(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$120, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%eax, %edx
	imull	$120, 36(%esp), %eax
	addl	%edx, %eax
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %ebx
	movl	_osd, %eax
	sarw	$11, %bx
	movswl	%bx, %ebx
	jmp	L755
	.p2align 4,,10
	.p2align 3
L818:
	movswl	%dx, %esi
L768:
	movl	24(%esp), %ecx
	movswl	54(%eax), %edx
	subl	%esi, %ecx
	leal	3(%ecx,%edx), %ebx
	movl	__ZL10osdkeytime.lto_priv.0, %ecx
	movl	3248(%eax), %edx
	movl	%ecx, 12(%esp)
	movl	1172(%eax), %eax
	movl	%ebx, (%esp)
	andl	$8, %eax
	movl	%eax, 8(%esp)
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	movl	%eax, 4(%esp)
	call	*8(%edx)
	movl	_osd, %eax
	movl	1164(%eax), %edx
	testl	%edx, %edx
	je	L772
	movl	3248(%eax), %edx
	movzbl	1170(%eax), %edi
	leal	36(%esp), %eax
	movl	4(%edx), %esi
	call	_enet_gettime.constprop.0.isra.0
	movl	$120, %eax
	imull	40(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	_osd, %ecx
	movl	%eax, %edx
	imull	$120, 36(%esp), %eax
	movzbl	1168(%ecx), %ebp
	addl	%edx, %eax
	movl	1148(%ecx), %edx
	movl	%edi, 20(%esp)
	sall	$4, %eax
	andl	$2047, %eax
	subl	%ebp, %edx
	movzwl	_sintable(%eax,%eax), %eax
	movl	%ebp, 12(%esp)
	sarw	$11, %ax
	cwtl
	movl	%eax, 16(%esp)
	movl	1164(%ecx), %eax
	xorl	%ecx, %ecx
	cmpl	%ebx, %edx
	setle	%cl
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	__ZL10osdrowscur.lto_priv.0, %eax
	subl	%ecx, %eax
	movl	%eax, 4(%esp)
	call	*%esi
L772:
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %ebx
	addl	$60, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L804:
	ret
	.p2align 4,,10
	.p2align 3
L760:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	andl	$16, %ecx
	je	L763
L775:
	movl	$1, %eax
	jmp	L764
	.p2align 4,,10
	.p2align 3
L766:
	movl	1120(%eax), %eax
	movl	%ebx, 12(%esp)
	movl	$62, 8(%esp)
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	jmp	L767
	.p2align 4,,10
	.p2align 3
L813:
	movl	__ZL10osdrowscur.lto_priv.0, %ecx
	addl	$1, %ecx
	movl	%ecx, 4(%esp)
	movl	1148(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	_osd, %eax
	jmp	L751
	.p2align 4,,10
	.p2align 3
L761:
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$67, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	jmp	L762
	.p2align 4,,10
	.p2align 3
L765:
	movl	%eax, (%esp)
	movl	%ebp, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$72, 8(%esp)
	movl	%edi, 4(%esp)
	call	*%esi
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	jmp	L763
L757:
	movl	32(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$126, 8(%esp)
	movl	%eax, 16(%esp)
L808:
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	*%ebp
	movl	_osd, %eax
	movl	__ZL10osdrowscur.lto_priv.0, %edx
	jmp	L758
L759:
	movl	32(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$94, 8(%esp)
	movl	%eax, 16(%esp)
	jmp	L808
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__Z8OSD_PutsPKc
	.def	__Z8OSD_PutsPKc;	.scl	2;	.type	32;	.endef
__Z8OSD_PutsPKc:
LFB102:
	.cfi_startproc
	cmpb	$0, (%eax)
	je	L867
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	_osd, %edi
	testl	%edi, %edi
	je	L820
	movl	%ebx, 16(%esp)
	movl	%fs:44, %edx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	__tls_index, %eax
	movl	%esi, 20(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	(%edx,%eax,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %ebp
	movl	196(%ebp), %eax
	movl	8(%eax), %esi
	testl	%esi, %esi
	je	L871
	movl	(%esi), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L824:
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	testl	%eax, %eax
	je	L825
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_strcpy
	movl	12(%esp), %ecx
	leal	4(%edi), %edx
	movb	$0, (%ecx,%ebp)
	movl	$0, (%esi)
	movl	%ecx, 4(%esi)
	movl	$0, 8(%esi)
	movl	4(%edi), %eax
L826:
	movl	%eax, (%esi)
	lock cmpxchgl	%esi, (%edx)
	jne	L826
	.p2align 4
	.p2align 3
L870:
	movl	_osd, %eax
L827:
	leal	4(%eax), %edx
	movl	4(%eax), %eax
L828:
	testl	%eax, %eax
	je	L831
L830:
	movl	(%eax), %ecx
	lock cmpxchgl	%ecx, (%edx)
	movl	%eax, %ebx
	jne	L828
	testl	%eax, %eax
	je	L831
	movl	$1, %edx
	lock xaddl	%edx, 8(%eax)
	testl	%edx, %edx
	jne	L870
	movl	_osd, %esi
	movl	4(%eax), %edi
	movl	1104(%esi), %eax
	testl	%eax, %eax
	je	L837
	movl	1156(%esi), %edx
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L837
	movl	__ZZL20OSD_FilterConsoleMsgPPcE8errorCnt, %ecx
	movl	16(%esi), %eax
	leal	1(%ecx), %edx
	movl	%edx, __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt
	cmpl	%edx, %eax
	jnb	L837
	cmpl	%eax, %ecx
	jg	L872
	movl	$56, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edi
	testl	%eax, %eax
	je	L836
	movl	$1663070831, 4(%eax)
	movl	$1953396079, 8(%eax)
	movl	$1668834592, 12(%eax)
	movl	$1701078373, 16(%eax)
	movl	$1864507492, 20(%eax)
	movl	$1869374579, 24(%eax)
	movl	$1953850215, 28(%eax)
	movl	$577136239, 32(%eax)
	movl	$1867259937, 36(%eax)
	movl	$1852401511, 40(%eax)
	movl	$1953701991, 44(%eax)
	movl	$1701867631, 48(%eax)
	movl	$667236, 52(%eax)
	movl	$1920091402, (%eax)
	movl	_osd, %esi
	.p2align 4
	.p2align 3
L837:
	addl	$8, %esi
	movl	%esi, (%esp)
	call	_SDL_AtomicLock
	movl	_osd, %eax
	movl	(%eax), %esi
	cmpl	$1024, 12(%esi)
	je	L873
L838:
	movl	4(%esi), %eax
	xorl	%edx, %edx
	cmpl	$1023, %eax
	je	L839
	movl	12(%esi), %ecx
	leal	1(%eax), %edx
	cmpl	$1023, %ecx
	jg	L839
	addl	$1, %ecx
	movl	%ecx, 12(%esi)
L839:
	movl	8(%esi), %eax
	movl	%edx, 4(%esi)
	cmpl	%eax, %edx
	je	L846
	cmpl	$-1, %eax
	je	L844
L842:
	movl	(%esi), %eax
	movl	%edi, (%eax,%edx,4)
	movl	_osd, %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_SDL_AtomicUnlock
L835:
	movl	%ebx, %eax
	call	_mi_free
	movl	_osd, %eax
	leal	4(%eax), %edx
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L830
	.p2align 4
	.p2align 3
L831:
	movl	_osd, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	L827
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebp
	.cfi_restore 5
L820:
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L846:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$-1, %eax
	je	L844
	movl	(%esi), %edx
	movl	_g_sm_heap, %ecx
	movl	(%edx,%eax,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	8(%esi), %eax
	movl	4(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
L844:
	leal	1(%eax), %ecx
	sarl	$31, %ecx
	shrl	$22, %ecx
	leal	1(%eax,%ecx), %eax
	andl	$1023, %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esi)
	jmp	L842
	.p2align 4,,10
	.p2align 3
L867:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L873:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1, %eax
	call	__Z20OSD_UpdateDrawBufferb
	movl	_osd, %eax
	movl	(%eax), %esi
	jmp	L838
	.p2align 4,,10
	.p2align 3
L872:
	addl	$2, %eax
	movl	%eax, __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt
	jmp	L835
L825:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
L871:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%ebp, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L824
	xorl	%ecx, %ecx
	movl	$12, %edx
	movl	%ebp, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %esi
	jmp	L824
L836:
	movl	$56, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE102:
	.p2align 4
	.globl	__Z10OSD_PrintfPKcz
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
__Z10OSD_PrintfPKcz:
LFB115:
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
	movl	52(%esp), %edi
	movl	%edi, (%esp)
	call	_strlen
	cmpl	$1, %eax
	jbe	L891
	movl	$1, %ebx
	.p2align 3
	.p2align 4
	.p2align 3
L876:
	addl	%ebx, %ebx
	cmpl	%ebx, %eax
	jg	L876
	movl	$16, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
L875:
	xorl	%ebp, %ebp
	leal	56(%esp), %esi
	jmp	L879
	.p2align 4,,10
	.p2align 3
L894:
	movl	%esi, 28(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	*__imp___vsnprintf
	cmpl	%ebx, %eax
	jb	L902
L879:
	addl	%ebx, %ebx
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$8, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, %ebp
	testl	%eax, %eax
	jne	L894
	testl	%ebx, %ebx
	je	L894
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L902:
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	call	__Z8OSD_PutsPKc
	movl	20(%esp), %edx
	cmpb	$10, -1(%ebp,%edx)
	jne	L881
	movb	$0, -1(%ebp,%edx)
L881:
	movl	_osd, %eax
	movl	%edx, 20(%esp)
	movl	1156(%eax), %ebx
	movl	%ebx, 8(%esp)
	movl	1104(%eax), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_strncmp
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	movl	20(%esp), %edx
	movb	$0, _g_useLogCallback
	cmpl	$1, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	sbbl	%ecx, %ecx
	andl	$-2, %ecx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	cmpl	%eax, %ecx
	jle	L903
L883:
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movb	$1, _g_useLogCallback
	movl	20(%esp), %eax
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
L891:
	.cfi_restore_state
	movl	$16, %ebx
	jmp	L875
	.p2align 4,,10
	.p2align 3
L903:
	movzbl	0(%ebp), %ebx
	movl	%ebp, %edi
	testb	%bl, %bl
	je	L884
	movl	%ecx, 20(%esp)
	movl	%ebp, %esi
	movl	%edx, 24(%esp)
	jmp	L890
	.p2align 5
	.p2align 4,,10
	.p2align 3
L885:
	movb	%bl, (%edi)
	addl	$1, %esi
	movzbl	(%esi), %ebx
	addl	$1, %edi
L888:
	testb	%bl, %bl
	je	L904
L890:
	cmpb	$94, %bl
	jne	L885
	movzbl	1(%esi), %eax
	leal	-48(%eax), %ecx
	cmpl	$9, %ecx
	jbe	L905
	movl	%eax, (%esp)
	call	*__imp__toupper
	cmpl	$79, %eax
	je	L906
	cmpl	$83, %eax
	jne	L885
	movzbl	2(%esi), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L885
L901:
	movzbl	3(%esi), %ebx
	addl	$3, %esi
	jmp	L888
	.p2align 4,,10
	.p2align 3
L904:
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
L884:
	movb	$0, (%edi)
	movl	%ebp, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$1721, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L883
	.p2align 4,,10
	.p2align 3
L905:
	movzbl	2(%esi), %eax
	movl	%eax, %ebx
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L901
	addl	$2, %esi
	jmp	L888
L906:
	movzbl	2(%esi), %ebx
	addl	$2, %esi
	jmp	L888
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
	.align 4
LC37:
	.ascii "fileinfo: file '%s' not found.\0"
	.align 4
LC42:
	.ascii "fileinfo: %s\12  File size: %d bytes\12  CRC-32:    %08X (%.1fms)\12  xxHash:    %08X (%.1fms)\12\0"
	.text
	.p2align 4
	.def	__ZL16osdfunc_fileinfoPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL16osdfunc_fileinfoPK13osdfuncparm_t:
LFB117:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	movl	$1, %eax
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
	subl	$156, %esp
	movl	(%ecx), %esi
	movl	%esi, -112(%ebp)
	cmpl	$1, (%esi)
	je	L951
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
L951:
	.cfi_restore_state
	movl	8(%esi), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L909
	xorl	%edx, %edx
	call	_kopen4load.part.0
	movl	%eax, -104(%ebp)
	cmpl	$-1, %eax
	je	L909
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-72(%ebp), %esi
	movl	-68(%ebp), %ebx
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -100(%ebp)
	testl	%eax, %eax
	je	L952
	movl	%ebx, %eax
	movl	%ebx, -88(%ebp)
	fildl	-88(%ebp)
	cltd
	testl	%edx, %edx
	js	L953
L913:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC39
	xorl	%ebx, %ebx
	fdivs	LC40
	movl	%esi, -88(%ebp)
	movl	-100(%ebp), %esi
	fildl	-88(%ebp)
	fmuls	LC39
	faddp	%st, %st(1)
	fstpl	-88(%ebp)
	.p2align 4
	.p2align 3
L914:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	%esi, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-104(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%ebx, %ecx
	movl	%eax, %edx
	movl	%eax, %edi
	movl	%esi, %eax
	call	_Bcrc32
	movl	%eax, %ebx
	cmpl	$65536, %edi
	je	L914
	movl	%eax, -120(%ebp)
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-68(%ebp), %eax
	fildl	-68(%ebp)
	cltd
	testl	%edx, %edx
	js	L954
L915:
	fstpl	-96(%ebp)
	fldl	-96(%ebp)
	fmuls	LC39
	xorl	%edx, %edx
	fdivs	LC40
	xorl	%ecx, %ecx
	fildl	-72(%ebp)
	fmuls	LC39
	faddp	%st, %st(1)
	fsubl	-88(%ebp)
	fstpl	-128(%ebp)
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-104(%ebp), %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	leal	-72(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-68(%ebp), %eax
	fildl	-68(%ebp)
	cltd
	testl	%edx, %edx
	js	L955
L916:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC39
	xorl	%edi, %edi
	fdivs	LC40
	movl	$0, -48(%ebp)
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movups	LC41, %xmm0
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	movups	%xmm0, -64(%ebp)
	fildl	-72(%ebp)
	fmuls	LC39
	faddp	%st, %st(1)
	fstpl	-136(%ebp)
	.p2align 4
	.p2align 3
L923:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-100(%ebp), %edx
	movl	-104(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	addl	%eax, %ebx
	movl	%eax, %ecx
	movl	%eax, -96(%ebp)
	movl	%ebx, -72(%ebp)
	orl	%eax, %ebx
	xorl	%eax, %eax
	cmpl	$15, %ebx
	seta	%al
	orl	%esi, %eax
	movl	%eax, -68(%ebp)
	leal	(%ecx,%edi), %eax
	cmpl	$15, %eax
	jbe	L956
	movl	-100(%ebp), %edx
	movl	-96(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -108(%ebp)
	testl	%edi, %edi
	jne	L957
L919:
	movl	-108(%ebp), %eax
	subl	$16, %eax
	movl	%eax, -88(%ebp)
	cmpl	%edx, %eax
	jb	L920
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %ebx
	movl	%edx, -116(%ebp)
	movl	%edx, %edi
	movl	-56(%ebp), %ecx
	movl	-52(%ebp), %eax
	.p2align 4
	.p2align 3
L921:
	imull	$-2048144777, (%edi), %edx
	addl	$16, %edi
	addl	%esi, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %esi
	imull	$-2048144777, -12(%edi), %edx
	addl	%ebx, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %ebx
	imull	$-2048144777, -8(%edi), %edx
	addl	%ecx, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %ecx
	imull	$-2048144777, -4(%edi), %edx
	addl	%eax, %edx
	roll	$13, %edx
	imull	$-1640531535, %edx, %eax
	cmpl	%edi, -88(%ebp)
	jnb	L921
	movl	-116(%ebp), %edx
	movl	-88(%ebp), %edi
	movl	%esi, -64(%ebp)
	movl	%ebx, -60(%ebp)
	subl	%edx, %edi
	movl	%ecx, -56(%ebp)
	movl	%eax, -52(%ebp)
	andl	$-16, %edi
	leal	16(%edx,%edi), %edx
L920:
	cmpl	-108(%ebp), %edx
	jb	L922
	movl	-32(%ebp), %edi
L918:
	movl	-68(%ebp), %esi
	movl	-72(%ebp), %ebx
	cmpl	$65536, -96(%ebp)
	je	L923
	movl	-56(%ebp), %edx
	leal	374761393(%edx), %eax
	testl	%esi, %esi
	je	L925
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %ecx
	roll	$12, %edx
	roll	%eax
	roll	$7, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	movl	-52(%ebp), %edx
	rorl	$14, %edx
	addl	%edx, %eax
L925:
	movl	%edi, %esi
	addl	%ebx, %eax
	andl	$15, %esi
	testl	$12, %edi
	je	L933
	leal	-72(%ebp), %ecx
	leal	(%ecx,%esi), %ebx
L927:
	imull	$-1028477379, 24(%ecx), %edx
	addl	$4, %ecx
	addl	%edx, %eax
	movl	%ebx, %edx
	rorl	$15, %eax
	subl	%ecx, %edx
	imull	$668265263, %eax, %eax
	cmpl	$3, %edx
	ja	L927
	leal	-4(%esi), %edx
	andl	$3, %edi
	andl	$-4, %edx
	leal	-44(%ebp,%edx), %edx
L926:
	testl	%edi, %edi
	je	L928
	addl	%edx, %edi
L929:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	imull	$374761393, %ecx, %ecx
	addl	%ecx, %eax
	roll	$11, %eax
	imull	$-1640531535, %eax, %eax
	cmpl	%edi, %edx
	jne	L929
L928:
	movl	%eax, %ebx
	shrl	$15, %ebx
	xorl	%eax, %ebx
	imull	$-2048144777, %ebx, %ebx
	movl	%ebx, %eax
	shrl	$13, %eax
	xorl	%eax, %ebx
	imull	$-1028477379, %ebx, %ebx
	movl	%ebx, %eax
	shrl	$16, %eax
	xorl	%eax, %ebx
	leal	-80(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	-76(%ebp), %eax
	fildl	-76(%ebp)
	cltd
	testl	%edx, %edx
	jns	L930
	fadds	LC38
L930:
	fstpl	-88(%ebp)
	fldl	-88(%ebp)
	fmuls	LC39
	flds	LC40
	movl	-100(%ebp), %eax
	fdivrp	%st, %st(1)
	fildl	-80(%ebp)
	fmuls	LC39
	faddp	%st, %st(1)
	fsubl	-136(%ebp)
	fstpl	-88(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-104(%ebp), %esi
	subl	$4, %esp
	movl	%esi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	fldl	-88(%ebp)
	movl	%ebx, 24(%esp)
	fstpl	28(%esp)
	fldl	-128(%ebp)
	fstpl	16(%esp)
	movl	-120(%ebp), %ebx
	movl	%eax, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC42, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	%esi, %eax
	call	_kclose
L911:
	xorl	%eax, %eax
L958:
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
L922:
	.cfi_restore_state
	movl	-108(%ebp), %edi
	leal	-48(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	subl	%edx, %edi
	movl	%edi, 8(%esp)
	call	_memcpy
	movl	%edi, -32(%ebp)
	jmp	L918
	.p2align 4,,10
	.p2align 3
L957:
	movl	$16, %edx
	leal	-48(%ebp,%edi), %eax
	subl	%edi, %edx
	movl	%edx, 8(%esp)
	movl	-100(%ebp), %esi
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	_memcpy
	imull	$-2048144777, -48(%ebp), %eax
	addl	-64(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -64(%ebp)
	imull	$-2048144777, -44(%ebp), %eax
	addl	-60(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -60(%ebp)
	imull	$-2048144777, -40(%ebp), %eax
	addl	-56(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -56(%ebp)
	imull	$-2048144777, -36(%ebp), %eax
	addl	-52(%ebp), %eax
	roll	$13, %eax
	imull	$-1640531535, %eax, %eax
	movl	%eax, -52(%ebp)
	movl	$16, %eax
	subl	-32(%ebp), %eax
	leal	(%esi,%eax), %edx
	movl	$0, -32(%ebp)
	jmp	L919
	.p2align 4,,10
	.p2align 3
L956:
	movl	%ecx, 8(%esp)
	movl	-100(%ebp), %eax
	leal	-48(%ebp,%edi), %edi
	movl	%ecx, %esi
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	addl	-32(%ebp), %esi
	movl	%esi, -32(%ebp)
	movl	%esi, %edi
	jmp	L918
	.p2align 4,,10
	.p2align 3
L955:
	fadds	LC38
	jmp	L916
	.p2align 4,,10
	.p2align 3
L954:
	fadds	LC38
	jmp	L915
	.p2align 4,,10
	.p2align 3
L953:
	fadds	LC38
	jmp	L913
L933:
	movl	%esi, %edi
	leal	-48(%ebp), %edx
	jmp	L926
	.p2align 4,,10
	.p2align 3
L909:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L911
	movl	-112(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC37, 12(%esp)
	movl	$287, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L958
L952:
	movl	$65536, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE117:
	.section .rdata,"dr"
LC43:
	.ascii "Symbol listing for %s:\0"
LC44:
	.ascii "Symbol listing:\0"
LC45:
	.ascii "%s*%-*s\0"
LC46:
	.ascii "^O%-*s\0"
LC47:
	.ascii "%s\12\0"
LC48:
	.ascii "Found %d symbols\0"
	.text
	.p2align 4
	.def	__ZL19osdfunc_listsymbolsPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL19osdfunc_listsymbolsPK13osdfuncparm_t:
LFB136:
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
	movl	$1, %esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	cmpl	$1, %ecx
	jg	L959
	movl	_osd, %edi
	movl	1184(%edi), %ebx
	testl	%ebx, %ebx
	je	L961
	movl	%ecx, -16(%ebp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L965:
	cmpl	$57005, 12(%ebx)
	je	L963
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	L963
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	%eax, %esi
	cmovl	%eax, %esi
L963:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L965
	movl	-16(%ebp), %ecx
	testl	%esi, %esi
	je	L959
	movl	1148(%edi), %eax
	testl	%eax, %eax
	jle	L961
	leal	18(%eax,%esi), %eax
	leal	3(%esi), %edx
	shrl	$2, %eax
	movl	%edx, -20(%ebp)
	sall	$2, %eax
	call	___chkstk_ms
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	subl	%eax, %esp
	leal	39(%esp), %eax
	andl	$-16, %eax
	movl	%eax, -24(%ebp)
	movb	$0, (%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, %ecx
	je	L996
	testl	%eax, %eax
	jns	L997
L968:
	movl	$0, -40(%ebp)
	testl	%ecx, %ecx
	jne	L967
L969:
	movl	1148(%edi), %eax
	addl	$15, %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	1184(%edi), %ebx
	subl	%eax, %esp
	movl	$0, -36(%ebp)
	leal	39(%esp), %eax
	andl	$-16, %eax
	testl	%ebx, %ebx
	je	L970
	movl	$0, -16(%ebp)
	movl	%eax, %edi
	movl	%esi, -44(%ebp)
	jmp	L977
	.p2align 4
	.p2align 4,,10
	.p2align 3
L972:
	movl	4(%ebx), %ebx
	testl	%ebx, %ebx
	je	L998
L977:
	cmpl	$57005, 12(%ebx)
	je	L972
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L972
	movl	8(%ebp), %eax
	movl	(%ebx), %esi
	cmpl	$1, (%eax)
	jne	L974
	movl	-40(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L972
L974:
	movl	%esi, %edx
	movl	$__ZL7h_cvars.lto_priv.0, %eax
	call	_hash_find
	movl	_osd, %esi
	movb	$0, (%edi)
	movl	(%ebx), %ecx
	movl	1148(%esi), %edx
	cmpl	$511, %eax
	ja	L975
	sall	$4, %eax
	addl	1180(%esi), %eax
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	call	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %edx
	testl	%eax, %eax
	jne	L999
L975:
	movl	%ecx, 16(%esp)
	movl	-20(%ebp), %eax
	movl	$LC46, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	movl	%eax, %esi
L976:
	movl	%edi, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	movl	_osd, %eax
	addl	%esi, -16(%ebp)
	movl	-16(%ebp), %ecx
	addl	$1, -36(%ebp)
	movl	1148(%eax), %eax
	subl	-20(%ebp), %eax
	cmpl	%ecx, %eax
	jge	L972
	movl	-24(%ebp), %esi
	movl	$LC47, (%esp)
	movl	%esi, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movb	$0, (%esi)
	movl	4(%ebx), %ebx
	movl	$0, -16(%ebp)
	testl	%ebx, %ebx
	jne	L977
	.p2align 4
	.p2align 3
L998:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	L1000
L970:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1001
L961:
	xorl	%esi, %esi
L959:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
L999:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	movl	-44(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 16(%esp)
	movl	1112(%esi), %eax
	movl	$LC45, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	movl	%eax, %esi
	jmp	L976
	.p2align 4,,10
	.p2align 3
L1001:
	movl	-36(%ebp), %eax
	movl	$LC48, 12(%esp)
	xorl	%esi, %esi
	movl	$581, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L959
	.p2align 4,,10
	.p2align 3
L1000:
	movl	-24(%ebp), %eax
	movl	$LC47, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L970
	.p2align 4,,10
	.p2align 3
L996:
	testl	%eax, %eax
	jns	L1002
L967:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, -40(%ebp)
	jmp	L969
	.p2align 4,,10
	.p2align 3
L997:
	movl	$LC44, 12(%esp)
	movl	$546, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	8(%ebp), %eax
	movl	_osd, %edi
	movl	(%eax), %ecx
	jmp	L968
L1002:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC43, 12(%esp)
	movl	$544, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	8(%ebp), %eax
	movl	_osd, %edi
	movl	(%eax), %ecx
	jmp	L968
	.cfi_endproc
LFE136:
	.section .rdata,"dr"
LC49:
	.ascii "%sCommand history:\12\0"
LC50:
	.ascii "%4d '%s'\0"
	.text
	.p2align 4
	.def	__ZL15osdfunc_historyPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL15osdfunc_historyPK13osdfuncparm_t:
LFB137:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_osd, %eax
	movl	%ebx, 24(%esp)
	movl	%esi, 28(%esp)
	movl	1112(%eax), %eax
	movl	$LC49, (%esp)
	movl	%eax, 4(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	call	__Z10OSD_PrintfPKcz
	movl	_osd, %esi
	movl	1084(%esi), %ebx
	subl	$1, %ebx
	js	L1004
	movl	%edi, 32(%esp)
	.cfi_offset 7, -8
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1008:
	movl	60(%esi,%ebx,4), %edx
	testl	%edx, %edx
	je	L1006
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	js	L1006
	movl	%edx, 20(%esp)
	movl	1096(%esi), %eax
	addl	$1, %edi
	addl	%edi, %eax
	subl	1092(%esi), %eax
	movl	$LC50, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$624, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1006:
	subl	$1, %ebx
	jnb	L1008
	movl	32(%esp), %edi
	.cfi_restore 7
L1004:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE137:
	.section .rdata,"dr"
	.align 4
LC51:
	.ascii "%sFound %d possible completions for \"%s\":\12\0"
LC52:
	.ascii "  \0"
LC53:
	.ascii "%-*s\0"
LC54:
	.ascii "\12\0"
	.align 4
LC55:
	.ascii "%sPress TAB again to cycle through matches\12\0"
	.align 4
LC56:
	.ascii "Buffer full! Consider increasing 'osdhistorydepth' beyond current value of %d.\0"
	.text
	.p2align 4
	.globl	__Z14OSD_HandleCharc
	.def	__Z14OSD_HandleCharc;	.scl	2;	.type	32;	.endef
__Z14OSD_HandleCharc:
LFB138:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebx, 60(%esp)
	.cfi_offset 3, -20
	movl	_osd, %ebx
	testl	%ebx, %ebx
	je	L1012
	movl	1172(%ebx), %ecx
	testb	$4, %cl
	je	L1012
	movl	%eax, %edx
	cmpb	$9, %al
	je	L1015
	movl	$0, __ZZ14OSD_HandleCharcE9lastmatch
	cmpb	$23, %al
	ja	L1016
	testb	%al, %al
	je	L1017
	cmpb	$23, %al
	ja	L1018
	movzbl	%al, %eax
	jmp	*L1020(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1020:
	.long	L1018
	.long	L1032
	.long	L1031
	.long	L1030
	.long	L1018
	.long	L1029
	.long	L1028
	.long	L1018
	.long	L1027
	.long	L1018
	.long	L1018
	.long	L1026
	.long	L1025
	.long	L1024
	.long	L1023
	.long	L1018
	.long	L1022
	.long	L1018
	.long	L1018
	.long	L1018
	.long	L1018
	.long	L1021
	.long	L1018
	.long	L1019
	.text
	.p2align 4,,10
	.p2align 3
L1015:
	movl	__ZZ14OSD_HandleCharcE9lastmatch, %eax
	movl	%esi, 64(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	je	L1179
	movl	48(%ebx), %esi
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	$2147483647, 20(%esp)
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1180
L1170:
	movl	%edi, 68(%esp)
	movl	%ebp, 72(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L1045:
	movswl	54(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	jle	L1060
	movl	44(%ebx), %edx
	jmp	L1062
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1061:
	subl	$1, %eax
	je	L1181
L1062:
	cmpb	$32, -1(%edx,%eax)
	jne	L1061
	movl	%eax, 24(%esp)
	movl	%eax, %edx
L1060:
	movw	%dx, 52(%ebx)
	movl	(%ecx), %esi
	xorl	%edi, %edi
	movzbl	(%esi), %ebp
	movzwl	24(%esp), %esi
	movl	%ebp, %eax
	testb	%al, %al
	jne	L1063
	jmp	L1064
	.p2align 4,,10
	.p2align 3
L1182:
	movl	20(%esp), %ebp
	movswl	%dx, %esi
	cmpl	%ebp, %esi
	jge	L1065
	movl	24(%esp), %edx
	addl	44(%ebx), %edx
	movb	%al, (%edx,%edi)
	movzwl	52(%ebx), %eax
	addl	$1, %edi
	leal	1(%eax), %esi
	movw	%si, 52(%ebx)
	movl	(%ecx), %eax
	movl	%esi, %edx
	movzbl	(%eax,%edi), %eax
	testb	%al, %al
	je	L1064
L1063:
	cmpw	$511, %dx
	jle	L1182
L1065:
	movl	%edx, %esi
L1064:
	movl	_osd, %eax
	movw	%dx, 54(%ebx)
	movw	%dx, 58(%ebx)
	subw	1148(%eax), %si
	addw	$4, %si
	js	L1067
	movw	%si, 56(%ebx)
L1068:
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	movl	%ecx, __ZZ14OSD_HandleCharcE9lastmatch
	movl	72(%esp), %ebp
	.cfi_restore 5
L1017:
	xorl	%eax, %eax
L1011:
	movl	60(%esp), %ebx
	addl	$76, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1012:
	.cfi_restore_state
	movl	60(%esp), %ebx
	movzbl	%al, %eax
	addl	$76, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1181:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 24(%esp)
	xorl	%edx, %edx
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1067:
	xorl	%esi, %esi
	movw	%si, 56(%ebx)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L1068
	.p2align 4,,10
	.p2align 3
L1179:
	.cfi_restore 5
	.cfi_restore 7
	movswl	54(%ebx), %edx
	testl	%edx, %edx
	jle	L1037
	movl	44(%ebx), %eax
	jmp	L1040
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1038:
	subl	$1, %edx
	je	L1037
L1040:
	cmpb	$32, -1(%eax,%edx)
	jne	L1038
L1037:
	movswl	52(%ebx), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jl	L1039
	jmp	L1183
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1042:
	movl	48(%ebx), %esi
	addl	$1, %edx
	movb	%cl, (%esi,%eax)
	movswl	52(%ebx), %ecx
	addl	$1, %eax
	cmpl	%edx, %ecx
	jle	L1041
L1039:
	movl	44(%ebx), %ecx
	movzbl	(%ecx,%edx), %ecx
	cmpb	$32, %cl
	jne	L1042
	movl	48(%ebx), %edx
	movb	$0, (%edx,%eax)
	testl	%eax, %eax
	jne	L1184
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1016:
	cmpb	$127, %al
	je	L1017
	.p2align 4
	.p2align 3
L1018:
	cmpb	$31, %dl
	jbe	L1017
	andl	$8, %ecx
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movzwl	52(%ebx), %esi
	jne	L1083
	cmpw	$512, %si
	je	L1176
	movswl	54(%ebx), %eax
	cmpw	%si, %ax
	jl	L1185
L1084:
	addl	$1, %esi
	movw	%si, 52(%ebx)
L1085:
	movl	44(%ebx), %ecx
	leal	1(%eax), %esi
	movw	%si, 54(%ebx)
	movb	%dl, (%ecx,%eax)
	movzwl	58(%ebx), %eax
	cmpw	%ax, 54(%ebx)
	jle	L1176
	addl	$1, %eax
	addw	$1, 56(%ebx)
	movw	%ax, 58(%ebx)
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1032:
	movzwl	1148(%ebx), %eax
	movl	$0, 54(%ebx)
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1024:
	movswl	52(%ebx), %eax
	testw	%ax, %ax
	jle	L1094
	movl	%esi, 64(%esp)
	movl	44(%ebx), %edx
	movb	$0, (%edx,%eax)
	movl	60(%ebx), %eax
	.cfi_offset 6, -16
	movl	1084(%ebx), %esi
	testl	%eax, %eax
	je	L1070
	movl	44(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1071
L1070:
	movl	%edi, 68(%esp)
	movl	56(%ebx,%esi,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 76
	movl	1084(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	$0, 56(%ebx,%eax,4)
	leal	-1(,%eax,4), %eax
	movl	%eax, 8(%esp)
	leal	60(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	64(%ebx), %eax
	movl	%eax, (%esp)
	call	_memmove
	movl	44(%ebx), %esi
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	movl	_osd, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	je	L1072
	movl	%eax, 60(%edi)
	movl	_osd, %eax
	movl	60(%eax), %edi
	movl	%esi, (%esp)
	call	_strlen
	movl	$511, %edx
	movl	%esi, 4(%esp)
	addl	$1, %eax
	movl	%edi, (%esp)
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movb	$0, 511(%edi)
	movl	1092(%ebx), %eax
	movl	1084(%ebx), %esi
	cmpl	%esi, %eax
	jge	L1074
	addl	$1, %eax
	movl	%eax, 1092(%ebx)
L1074:
	addl	$1, 1096(%ebx)
	movl	68(%esp), %edi
	.cfi_restore 7
L1071:
	movl	1100(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, 1100(%ebx)
	cmpl	%esi, %eax
	je	L1186
L1075:
	movl	$-1, 1088(%ebx)
	movl	_osd, %eax
	movl	64(%esp), %esi
	.cfi_restore 6
L1069:
	xorl	%edx, %edx
	movl	$0, 52(%ebx)
	movw	%dx, 56(%ebx)
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1030:
	movswl	52(%ebx), %eax
	movl	44(%ebx), %edx
	movb	$0, (%edx,%eax)
	movl	44(%ebx), %eax
	movl	$LC47, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	xorl	%eax, %eax
	movl	$0, 52(%ebx)
	movw	%ax, 56(%ebx)
	movl	_osd, %eax
	movl	1148(%eax), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	movl	44(%ebx), %eax
	movb	$0, (%eax)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1023:
	call	__ZL15OSD_HistoryNextv.lto_priv.0
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1029:
	movzwl	52(%ebx), %eax
	movl	1148(%ebx), %edx
	movw	%ax, 54(%ebx)
	movw	%ax, 58(%ebx)
	addl	$4, %eax
	subw	%dx, %ax
	js	L1033
	movw	%ax, 56(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1028:
	movzwl	54(%ebx), %eax
	cmpw	52(%ebx), %ax
	jge	L1017
	addl	$1, %eax
	movw	%ax, 54(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1031:
	movzwl	54(%ebx), %eax
	testw	%ax, %ax
	jle	L1017
	subl	$1, %eax
	movw	%ax, 54(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1019:
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	movzwl	54(%ebx), %ebp
	testw	%bp, %bp
	jle	L1178
	movswl	52(%ebx), %ecx
	testw	%cx, %cx
	jle	L1178
	movswl	%bp, %eax
	movl	%esi, 64(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 68(%esp)
	movl	44(%ebx), %edx
	.p2align 4
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L1077:
	cmpb	$32, -1(%edx,%eax)
	jne	L1080
	subl	$1, %eax
	jne	L1077
L1097:
	xorl	%edi, %edi
	xorl	%esi, %esi
L1078:
	cmpw	%cx, %bp
	jl	L1187
L1082:
	addl	%esi, %ecx
	movw	%di, 54(%ebx)
	subl	%ebp, %ecx
	movw	%cx, 52(%ebx)
	cmpw	%di, 56(%ebx)
	jle	L1177
	movl	_osd, %eax
	movw	%di, 56(%ebx)
	movl	1148(%eax), %eax
	leal	-4(%esi,%eax), %esi
	movw	%si, 58(%ebx)
L1177:
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
L1178:
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L1017
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1081:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$1, %eax
	je	L1097
L1080:
	cmpb	$32, -1(%edx,%eax)
	jne	L1081
	movl	%eax, %esi
	movl	%eax, %edi
	jmp	L1078
	.p2align 4,,10
	.p2align 3
L1026:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movswl	54(%ebx), %eax
	movl	$512, %edx
	subl	%eax, %edx
	addl	44(%ebx), %eax
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
	movzwl	54(%ebx), %eax
	movw	%ax, 52(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1022:
	call	__ZL15OSD_HistoryPrevv.lto_priv.0
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1021:
	movswl	54(%ebx), %eax
	testw	%ax, %ax
	jle	L1017
	movswl	52(%ebx), %edx
	testw	%dx, %dx
	je	L1017
	movl	%ebx, %ecx
	cmpw	%dx, %ax
	jl	L1188
L1076:
	subl	%eax, %edx
	movl	$0, 54(%ebx)
	movw	%dx, 52(%ebx)
	movl	1148(%ecx), %eax
	subl	$4, %eax
	movw	%ax, 58(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1027:
	movswl	54(%ebx), %eax
	testw	%ax, %ax
	je	L1017
	movswl	52(%ebx), %edx
	testw	%dx, %dx
	je	L1017
	andl	$8, %ecx
	jne	L1034
	cmpw	%dx, %ax
	jl	L1189
L1035:
	subl	$1, %edx
	movw	%dx, 52(%ebx)
L1034:
	movzwl	56(%ebx), %edx
	subl	$1, %eax
	movw	%ax, 54(%ebx)
	cmpw	%dx, %ax
	jge	L1017
	subl	$1, %edx
	subw	$1, 58(%ebx)
	movw	%dx, 56(%ebx)
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1025:
	movl	$1, %eax
	call	__ZL9osd_cleari
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1180:
	.cfi_offset 6, -16
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L1170
L1176:
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1041:
	.cfi_restore_state
	movl	%edi, 68(%esp)
	movl	48(%ebx), %edx
	movb	$0, (%edx,%eax)
	.cfi_offset 7, -12
L1088:
	movl	48(%ebx), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	movl	%edi, 44(%esp)
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1169
	movl	%ebp, 72(%esp)
	movl	4(%eax), %edx
	testl	%edx, %edx
	.cfi_offset 5, -8
	je	L1043
	movl	%eax, 20(%esp)
	movl	%edi, %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	20(%esp), %ecx
	testl	%eax, %eax
	je	L1043
	xorl	%ebp, %ebp
	movl	%ecx, 56(%esp)
	movl	__imp__tolower, %esi
	movl	$1, 48(%esp)
	movl	$2147483647, 20(%esp)
	movl	%ebp, 36(%esp)
	movl	%ebx, 52(%esp)
	movl	%ecx, %ebx
	.p2align 4
	.p2align 3
L1044:
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	36(%esp), %edi
	movl	4(%ebx), %edx
	movl	%ebx, __ZZ14OSD_HandleCharcE9lastmatch
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, 36(%esp)
	testl	%edx, %edx
	je	L1049
	movl	44(%esp), %eax
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1049
	cmpl	%ebx, %eax
	je	L1049
	movl	(%edi), %eax
	addl	$1, 48(%esp)
	movl	%edi, 40(%esp)
	movl	%eax, 32(%esp)
	movl	(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%eax, 28(%esp)
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1048:
	movl	%edi, %eax
	testb	%al, %al
	je	L1047
	movl	%ebp, %eax
	testb	%al, %al
	je	L1047
	addl	$1, %ebx
L1046:
	movl	32(%esp), %eax
	movzbl	(%eax,%ebx), %edi
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	*%esi
	movl	28(%esp), %ecx
	movl	%eax, 24(%esp)
	movzbl	(%ecx,%ebx), %ebp
	movl	%ebp, %ecx
	movzbl	%cl, %eax
	movl	%eax, (%esp)
	call	*%esi
	cmpl	%eax, 24(%esp)
	je	L1048
L1047:
	movl	20(%esp), %eax
	movl	40(%esp), %edi
	cmpl	%ebx, %eax
	cmovle	%eax, %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, %ebx
	jmp	L1044
L1043:
	movl	$2147483647, 20(%esp)
	jmp	L1045
L1094:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	%ebx, %eax
	jmp	L1069
L1033:
	xorl	%eax, %eax
	subl	$4, %edx
	movw	%ax, 56(%ebx)
	movw	%dx, 58(%ebx)
	jmp	L1017
L1049:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	44(%esp), %eax
	movl	56(%esp), %ecx
	movl	36(%esp), %ebp
	movl	52(%esp), %ebx
	movl	%eax, 12(%esp)
	movl	48(%esp), %eax
	movl	%ecx, 24(%esp)
	leal	3(%ebp), %edi
	xorl	%ebp, %ebp
	movl	%eax, 8(%esp)
	movl	_osd, %eax
	movl	1112(%eax), %eax
	movl	$LC51, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	$LC52, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %ecx
	movl	%ecx, %esi
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1053:
	testl	%edx, %edx
	je	L1052
L1056:
	movl	%esi, %ecx
	movl	%edx, %esi
L1051:
	cmpl	%esi, __ZZ14OSD_HandleCharcE9lastmatch
	je	L1190
	movl	(%esi), %eax
	movl	%edi, 4(%esp)
	movl	$LC53, (%esp)
	movl	%eax, 8(%esp)
	movl	%esi, __ZZ14OSD_HandleCharcE9lastmatch
	call	__Z10OSD_PrintfPKcz
	movl	__ZZ14OSD_HandleCharcE9lastmatch, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L1052
	movl	48(%ebx), %eax
	addl	%edi, %ebp
	call	__ZL14osd_findsymbolPKcP7_symbol
	movl	%eax, %edx
	movl	_osd, %eax
	movl	1148(%eax), %eax
	subl	%edi, %eax
	cmpl	%ebp, %eax
	jge	L1053
	movl	$LC54, (%esp)
	movl	%edx, 24(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	L1091
	cmpl	%edx, __ZZ14OSD_HandleCharcE9lastmatch
	je	L1057
	movl	$LC52, (%esp)
	movl	%edx, 24(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %edx
L1057:
	xorl	%ebp, %ebp
	jmp	L1056
L1190:
	movl	%ecx, %esi
L1052:
	testl	%ebp, %ebp
	je	L1091
	movl	$LC54, (%esp)
	call	__Z10OSD_PrintfPKcz
L1091:
	movl	_osd, %eax
	movl	%esi, 24(%esp)
	movl	1112(%eax), %eax
	movl	$LC55, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	24(%esp), %ecx
	jmp	L1045
L1169:
	.cfi_restore 5
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L1017
L1083:
	.cfi_offset 6, -16
	movswl	54(%ebx), %eax
	cmpw	%si, %ax
	jne	L1085
	leal	1(%eax), %ecx
	movw	%cx, 52(%ebx)
	jmp	L1085
L1183:
	movl	48(%ebx), %eax
	movb	$0, (%eax)
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1017
L1186:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1075
	movl	%esi, 1100(%ebx)
	movl	%esi, 16(%esp)
	movl	$LC56, 12(%esp)
	movl	$1271, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1075
L1187:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	20(%esp), %ebp
	subl	%ebp, %ecx
	movl	%ecx, 8(%esp)
	leal	(%edx,%ebp), %ecx
	addl	%eax, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_memmove
	movzwl	52(%ebx), %ecx
	movzwl	54(%ebx), %ebp
	jmp	L1082
L1188:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	44(%ebx), %ecx
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	%ecx, %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movzwl	52(%ebx), %edx
	movzwl	54(%ebx), %eax
	movl	_osd, %ecx
	jmp	L1076
L1184:
	.cfi_offset 6, -16
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	jmp	L1088
L1189:
	.cfi_restore 6
	.cfi_restore 7
	movl	44(%ebx), %ecx
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	leal	(%ecx,%eax), %edx
	leal	-1(%ecx,%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movzwl	52(%ebx), %edx
	movzwl	54(%ebx), %eax
	jmp	L1035
L1185:
	.cfi_offset 6, -16
	movl	%edi, 68(%esp)
	movswl	%si, %ecx
	.cfi_offset 7, -12
	movl	44(%ebx), %edi
	subl	%eax, %ecx
	movb	%dl, 20(%esp)
	movl	%ecx, 8(%esp)
	leal	(%edi,%eax), %ecx
	leal	1(%edi,%eax), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memmove
	movzwl	52(%ebx), %esi
	movswl	54(%ebx), %eax
	movzbl	20(%esp), %edx
	movl	68(%esp), %edi
	.cfi_restore 7
	jmp	L1084
L1072:
	.cfi_offset 7, -12
	movl	$512, %eax
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__ZL13osd_addsymbolPKc.lto_priv.0
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13osd_addsymbolPKc.lto_priv.0:
LFB142:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	_osd, %edx
	movl	%ebx, 12(%esp)
	cmpl	$511, 3236(%edx)
	.cfi_offset 3, -20
	jg	L1203
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1193
	movl	$0, (%eax)
	movl	_osd, %ebp
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	1184(%ebp), %edi
	testl	%edi, %edi
	je	L1211
	movl	(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L1197
	jmp	L1212
	.p2align 4,,10
	.p2align 3
L1199:
	movl	%esi, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jg	L1198
L1197:
	movl	%edi, %ebp
	movl	4(%edi), %edi
	testl	%edi, %edi
	jne	L1199
L1198:
	movl	%ebx, 4(%ebp)
	movl	%edi, 4(%ebx)
L1196:
	movl	%esi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1200
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%edi,%ebp)
	movl	%edi, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1201
	addl	%edi, %eax
	movl	%edi, %ebp
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L1202:
	movzbl	0(%ebp), %eax
	addl	$1, %ebp
	movl	%eax, (%esp)
	call	*__imp__tolower
	movb	%al, -1(%ebp)
	cmpl	%ebp, 8(%esp)
	jne	L1202
L1201:
	movl	_osd, %eax
	movl	%esi, %edx
	movl	3236(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL5h_osd, %eax
	call	_hash_add
	movl	_osd, %eax
	movl	%edi, %edx
	movl	3236(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL5h_osd, %eax
	call	_hash_add
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	movl	_osd, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	3236(%eax), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 3236(%eax)
	movl	%ebx, 1188(%eax,%edx,4)
	movl	%ebx, %eax
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1203:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1211:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 1184(%ebp)
	jmp	L1196
	.p2align 4,,10
	.p2align 3
L1212:
	movl	%ebx, 1184(%ebp)
	movl	%edi, 4(%ebx)
	jmp	L1196
	.p2align 4,,10
	.p2align 3
L1193:
	movl	$16, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1200:
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE142:
	.p2align 4
	.globl	__ZL19osd_findexactsymbolPKc.lto_priv.0
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL19osd_findexactsymbolPKc.lto_priv.0:
LFB144:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	_osd, %esi
	movl	1184(%esi), %edx
	testl	%edx, %edx
	je	L1213
	movl	%ebx, 12(%esp)
	movl	%eax, %edx
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	$__ZL5h_osd, %eax
	call	_hash_find
	testl	%eax, %eax
	js	L1229
L1215:
	movl	1188(%esi,%eax,4), %edx
	movl	12(%esp), %ebx
	.cfi_restore 3
L1213:
	movl	16(%esp), %esi
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1229:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%ebx, (%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1216
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movl	%esi, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1217
	movl	%esi, %ebx
	leal	(%esi,%eax), %edi
	.p2align 4
	.p2align 3
L1218:
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	*__imp__tolower
	movb	%al, -1(%ebx)
	cmpl	%ebx, %edi
	jne	L1218
L1217:
	movl	%esi, %edx
	movl	$__ZL5h_osd, %eax
	call	_hash_find
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 8(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	8(%esp), %eax
	testl	%eax, %eax
	js	L1228
	movl	_osd, %esi
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L1215
	.p2align 4,,10
	.p2align 3
L1216:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1228:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L1213
	.cfi_endproc
LFE144:
	.section .rdata,"dr"
	.align 4
LC57:
	.ascii "%s%s: unknown command or cvar\12\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_helpPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_helpPK13osdfuncparm_t:
LFB145:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	$1, %eax
	movl	28(%esp), %edx
	cmpl	$1, (%edx)
	je	L1238
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1238:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	movl	28(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %ecx
	je	L1239
	movl	(%eax), %eax
	movl	%ecx, 20(%esp)
	call	_hash_findcase.constprop.0
	movl	20(%esp), %ecx
	testl	%eax, %eax
	js	L1233
	call	__ZL16osdfunc_printvari.isra.0
L1234:
	xorl	%eax, %eax
L1240:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1233:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1234
	movl	8(%ecx), %eax
	movl	$LC0, 12(%esp)
	movl	$600, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1239:
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	_osd, %eax
	movl	1112(%eax), %eax
	movl	$LC57, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	xorl	%eax, %eax
	jmp	L1240
	.cfi_endproc
LFE145:
	.section .rdata,"dr"
	.align 4
LC58:
	.ascii "toggle: bad cvar name '%s' or wrong cvar type or complexity.\0"
	.align 4
LC59:
	.ascii "toggle: cvar '%s' is read only.\0"
	.text
	.p2align 4
	.def	__ZL14osdfunc_togglePK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL14osdfunc_togglePK13osdfuncparm_t:
LFB147:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$1, %eax
	movl	48(%esp), %ecx
	cmpl	$1, (%ecx)
	je	L1274
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1274:
	.cfi_restore_state
	movl	%esi, 32(%esp)
	movl	%ebp, 40(%esp)
	movl	%ebx, 28(%esp)
	movl	8(%ecx), %eax
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	(%eax), %ebx
	movl	$__ZL7h_cvars.lto_priv.0, %eax
	movl	%ebx, %edx
	call	_hash_find
	movl	%eax, %esi
	movl	_osd, %eax
	movl	%eax, %ebp
	cmpl	$-1, %esi
	je	L1275
L1243:
	movl	1180(%ebp), %eax
	sall	$4, %esi
	movl	(%eax,%esi), %eax
	testb	$14, 12(%eax)
	jne	L1276
L1246:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1277
L1249:
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	40(%esp), %ebp
	.cfi_restore 5
L1279:
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1276:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%ebx, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	cmpl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, 12(%eax)
	jne	L1246
	movl	_osd, %eax
	movl	1180(%eax), %eax
	movl	(%eax,%esi), %eax
	movl	12(%eax), %edx
	testb	$64, %dl
	jne	L1278
	movl	8(%eax), %ecx
	andl	$14, %edx
	cmpl	$4, %edx
	movl	(%ecx), %ebx
	leal	1(%ebx), %edx
	movl	%edx, (%ecx)
	je	L1250
	cmpl	20(%eax), %edx
	jle	L1251
	movl	8(%eax), %edx
	movl	16(%eax), %ecx
	movl	%ecx, (%edx)
L1251:
	movl	12(%eax), %edx
	andl	$63, %edx
	cmpl	$8, %edx
	jne	L1252
	movl	8(%eax), %edx
	xorl	%ecx, %ecx
	movl	(%edx), %ebp
	testl	%ebp, %ebp
	setne	%cl
	movl	%ecx, (%edx)
L1252:
	movl	_osd, %edx
	movl	3240(%edx), %ebx
	testl	%ebx, %ebx
	jne	L1254
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	testl	%ecx, %ecx
	js	L1254
	movl	8(%eax), %edx
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$745, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_osd, %edx
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1277:
	movl	48(%esp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	$LC58, 12(%esp)
	movl	$721, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1279
	.p2align 4,,10
	.p2align 3
L1275:
	.cfi_restore_state
	movl	1176(%eax), %ecx
	movl	%ecx, %esi
	movl	%ecx, 24(%esp)
	subl	$1, %esi
	js	L1244
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	1180(%eax), %edi
	jmp	L1245
	.p2align 4,,10
	.p2align 3
L1281:
	subl	$1, %esi
	jb	L1280
L1245:
	movl	%esi, %eax
	sall	$4, %eax
	movl	(%edi,%eax), %eax
	movl	(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1281
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1243
	.p2align 4,,10
	.p2align 3
L1280:
	.cfi_restore_state
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1250:
	cmpl	%edx, 20(%eax)
	jnb	L1256
	movl	8(%eax), %edx
	movl	16(%eax), %ecx
	movl	%ecx, (%edx)
L1256:
	movl	_osd, %edx
	movl	3240(%edx), %ecx
	testl	%ecx, %ecx
	je	L1282
L1254:
	movl	1180(%edx), %eax
	movl	(%eax,%esi), %eax
	orl	$8192, 12(%eax)
	jmp	L1249
L1244:
	cmpl	$-1, %esi
	jne	L1243
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1278:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1249
	movl	(%eax), %eax
	movl	$LC59, 12(%esp)
	movl	$729, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1249
L1282:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	testl	%ecx, %ecx
	js	L1254
	movl	8(%eax), %edx
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC20, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$754, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_osd, %edx
	jmp	L1254
	.cfi_endproc
LFE147:
	.section .rdata,"dr"
LC61:
	.ascii "alias\0"
	.align 4
LC62:
	.ascii "alias: creates an alias for calling multiple commands\0"
LC63:
	.ascii "clear\0"
	.align 4
LC64:
	.ascii "clear: clears the console text buffer\0"
LC65:
	.ascii "echo\0"
	.align 4
LC66:
	.ascii "echo [text]: echoes text to the console\0"
LC67:
	.ascii "exec\0"
	.align 4
LC68:
	.ascii "exec <scriptfile>: executes a script\0"
LC69:
	.ascii "fileinfo\0"
	.align 4
LC70:
	.ascii "fileinfo <file>: gets a file's information\0"
LC71:
	.ascii "help\0"
	.align 4
LC72:
	.ascii "help: displays help for a cvar or command; \"listsymbols\" to show all commands\0"
LC73:
	.ascii "history\0"
	.align 4
LC74:
	.ascii "history: displays the console command history\0"
LC75:
	.ascii "listsymbols\0"
	.align 4
LC76:
	.ascii "listsymbols: lists all registered functions, cvars and aliases\0"
LC77:
	.ascii "toggle\0"
	.align 4
LC78:
	.ascii "toggle: toggles the value of a boolean cvar\0"
LC79:
	.ascii "unalias\0"
	.align 4
LC80:
	.ascii "unalias: removes a command alias\0"
	.text
	.p2align 4
	.globl	__Z8OSD_Initv
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
__Z8OSD_Initv:
LFB149:
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
	subl	$56, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$3252, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1284
	movl	$__ZL24_internal_getcolumnwidthi.lto_priv.0, -40(%ebp)
	movss	-40(%ebp), %xmm1
	movl	%eax, %ebx
	movss	LC81, %xmm0
	movl	$__ZL20_internal_drawosdstriiPKciii.lto_priv.0, -40(%ebp)
	movss	-40(%ebp), %xmm2
	movl	$__ZL19_internal_onshowosdi.lto_priv.0, -56(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC82, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movss	-56(%ebp), %xmm1
	movl	$__ZL25_internal_clearbackgroundii.lto_priv.0, -56(%ebp)
	movlhps	%xmm0, %xmm3
	movss	-56(%ebp), %xmm2
	movss	LC83, %xmm0
	movups	%xmm3, -40(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC84, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm4
	movlhps	%xmm0, %xmm4
	movups	%xmm4, -56(%ebp)
	movl	$3252, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	__tls_index, %esi
	movl	%fs:44, %eax
	movl	%ebx, _osd
	movl	(%eax,%esi,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %edi
	movl	200(%edi), %eax
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L1331
	movl	(%ebx), %edx
	addw	$1, 16(%eax)
	movl	%edx, 8(%eax)
L1287:
	movl	$0, (%ebx)
	movl	$1, %ecx
	movl	$4096, %edx
	movl	%fs:44, %eax
	movl	(%eax,%esi,4), %eax
	movl	$-1, %esi
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	$0, 12(%ebx)
	movl	%eax, (%ebx)
	movl	%esi, 4(%ebx)
	movl	%esi, 8(%ebx)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1288:
	movl	(%eax,%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	(%ebx), %eax
	subl	$4, %esp
	movl	$0, (%eax,%esi)
	movl	(%ebx), %edx
	addl	$4, %esi
	movl	%edx, %eax
	cmpl	$4096, %esi
	jne	L1288
	xorl	%eax, %eax
	jmp	L1289
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1332:
	movl	(%ebx), %edx
L1289:
	movl	$0, (%edx,%eax)
	addl	$4, %eax
	cmpl	$4096, %eax
	jne	L1332
	movl	_osd, %eax
	movups	-40(%ebp), %xmm5
	movups	-56(%ebp), %xmm6
	movl	%ebx, (%eax)
	movl	_osd, %ebx
	movl	3244(%ebx), %eax
	movl	$0, 8(%ebx)
	movl	$__ZL17default_callbacks, 3248(%ebx)
	movups	%xmm5, __ZL17default_callbacks
	movups	%xmm6, __ZL17default_callbacks+16
	testl	%eax, %eax
	je	L1290
L1291:
	movl	$32768, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1292
	movl	%eax, 20(%ebx)
	movl	_osd, %ebx
	movl	$32768, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1292
	movl	%eax, 24(%ebx)
	movl	_osd, %ebx
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1294
	movl	%eax, 44(%ebx)
	movl	_osd, %ebx
	movl	$512, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1294
	movl	%eax, 48(%ebx)
	movl	$32768, 8(%esp)
	movl	$32, 4(%esp)
	movl	_osd, %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %edx
	movl	$32768, 8(%esp)
	movl	1132(%edx), %eax
	sall	$5, %eax
	addl	1136(%edx), %eax
	movl	%eax, 4(%esp)
	movl	24(%edx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	_osd, %ebx
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	leal	1188(%ebx), %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$128, %edx
	movl	$1, %eax
	movl	$0, 3236(%ebx)
	movl	%eax, 32(%ebx)
	movl	$__ZL5h_osd, %eax
	movl	%edx, 36(%ebx)
	movl	$0, 1176(%ebx)
	movl	$1, 40(%ebx)
	movl	$60, 1148(%ebx)
	movl	$4096, 16(%ebx)
	movl	$32, 1084(%ebx)
	call	_hash_init
	movl	$__ZL7h_cvars.lto_priv.0, %eax
	call	_hash_init
	call	_mi_register_output.constprop.0
	cmpb	$0, __ZGVZ8OSD_InitvE9cvars_osd
	je	L1333
L1296:
	movl	$__ZZ8OSD_InitvE9cvars_osd, %ebx
	movl	$__ZL19osdcmd_cvar_set_osdPK13osdfuncparm_t, %esi
	.p2align 4
	.p2align 3
L1298:
	testb	$2, 13(%ebx)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%ebx, %eax
	cmovne	%esi, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	$__ZZ8OSD_InitvE9cvars_osd+264, %ebx
	jne	L1298
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1334
	movl	$LC61, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1335
L1300:
	movl	$LC62, 8(%eax)
	movl	$__ZL13osdfunc_aliasPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1336
	movl	$LC63, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1337
L1302:
	movl	$LC64, 8(%eax)
	movl	$__ZL13osdfunc_clearPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1338
	movl	$LC65, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1339
L1304:
	movl	$LC66, 8(%eax)
	movl	$__ZL12osdfunc_echoPK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1340
	movl	$LC67, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1341
L1306:
	movl	_osd, %edi
	movl	$LC68, 8(%eax)
	movl	$__ZL12osdfunc_execPK13osdfuncparm_t, 12(%eax)
	testl	%edi, %edi
	je	L1342
	movl	$LC69, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1343
L1308:
	movl	_osd, %esi
	movl	$LC70, 8(%eax)
	movl	$__ZL16osdfunc_fileinfoPK13osdfuncparm_t, 12(%eax)
	testl	%esi, %esi
	je	L1344
	movl	$LC71, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1345
L1310:
	movl	_osd, %ebx
	movl	$LC72, 8(%eax)
	movl	$__ZL12osdfunc_helpPK13osdfuncparm_t, 12(%eax)
	testl	%ebx, %ebx
	je	L1346
	movl	$LC73, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1347
L1312:
	movl	_osd, %ecx
	movl	$LC74, 8(%eax)
	movl	$__ZL15osdfunc_historyPK13osdfuncparm_t, 12(%eax)
	testl	%ecx, %ecx
	je	L1348
	movl	$LC75, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1349
L1314:
	movl	_osd, %edx
	movl	$LC76, 8(%eax)
	movl	$__ZL19osdfunc_listsymbolsPK13osdfuncparm_t, 12(%eax)
	testl	%edx, %edx
	je	L1350
	movl	$LC77, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1351
L1316:
	movl	$LC78, 8(%eax)
	movl	$__ZL14osdfunc_togglePK13osdfuncparm_t, 12(%eax)
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1352
	movl	$LC79, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1353
L1318:
	movl	$LC80, 8(%eax)
	movl	$__ZL15osdfunc_unaliasPK13osdfuncparm_t, 12(%eax)
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
L1290:
	.cfi_restore_state
	movl	$41, 3244(%ebx)
	jmp	L1291
L1333:
	movl	_osd, %eax
	movb	$1, __ZGVZ8OSD_InitvE9cvars_osd
	leal	40(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+8
	leal	1128(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+32
	leal	1124(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+56
	leal	1136(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+80
	leal	1132(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+104
	leal	1120(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+128
	leal	1116(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+152
	leal	1140(%eax), %edx
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+200
	leal	16(%eax), %edx
	addl	$1084, %eax
	movl	%edx, __ZZ8OSD_InitvE9cvars_osd+224
	movl	%eax, __ZZ8OSD_InitvE9cvars_osd+248
	jmp	L1296
L1353:
	movl	$LC79, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC79, (%eax)
	jmp	L1318
L1339:
	movl	$LC65, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC65, (%eax)
	jmp	L1304
L1340:
	call	__Z8OSD_Initv
	movl	$LC67, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1306
L1341:
	movl	$LC67, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC67, (%eax)
	jmp	L1306
L1342:
	call	__Z8OSD_Initv
	movl	$LC69, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1308
L1343:
	movl	$LC69, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC69, (%eax)
	jmp	L1308
L1344:
	call	__Z8OSD_Initv
	movl	$LC71, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1310
L1345:
	movl	$LC71, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC71, (%eax)
	jmp	L1310
L1346:
	call	__Z8OSD_Initv
	movl	$LC73, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1312
	jmp	L1347
L1335:
	movl	$LC61, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC61, (%eax)
	jmp	L1300
L1336:
	call	__Z8OSD_Initv
	movl	$LC63, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1302
L1337:
	movl	$LC63, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC63, (%eax)
	jmp	L1302
L1338:
	call	__Z8OSD_Initv
	movl	$LC65, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1304
	jmp	L1339
L1334:
	call	__Z8OSD_Initv
	movl	$LC61, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1300
	jmp	L1335
L1347:
	movl	$LC73, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC73, (%eax)
	jmp	L1312
L1348:
	call	__Z8OSD_Initv
	movl	$LC75, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1314
L1349:
	movl	$LC75, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC75, (%eax)
	jmp	L1314
L1350:
	call	__Z8OSD_Initv
	movl	$LC77, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1316
L1351:
	movl	$LC77, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC77, (%eax)
	jmp	L1316
L1352:
	call	__Z8OSD_Initv
	movl	$LC79, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	jne	L1318
	jmp	L1353
L1292:
	movl	$32768, %eax
	call	__Z13handle_memerri
L1294:
	movl	$512, %eax
	call	__Z13handle_memerri
L1284:
	movl	$3252, %eax
	call	__Z13handle_memerri
L1331:
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edi, %eax
	call	__Z18_mi_malloc_genericP9mi_heap_sjbj
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1287
	xorl	%ecx, %ecx
	movl	$16, %edx
	movl	%edi, %eax
	call	__Z15mi_heap_try_newP9mi_heap_sjb
	movl	%eax, %ebx
	jmp	L1287
	.cfi_endproc
LFE149:
	.p2align 4
	.globl	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE:
LFB159:
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
	subl	$20, %esp
	movl	_osd, %edi
	movl	%edx, -20(%ebp)
	testl	%edi, %edi
	je	L1369
L1355:
	movl	1176(%edi), %eax
	leal	1(%eax), %esi
	sall	$4, %esi
	movl	%esi, 4(%esp)
	movl	1180(%edi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1364
	testl	%esi, %esi
	jne	L1356
L1364:
	movl	%eax, 1180(%edi)
	movl	_osd, %eax
	movl	(%ebx), %edx
	movl	1176(%eax), %ecx
	movl	$1, (%esp)
	movl	$__ZL7h_cvars.lto_priv.0, %eax
	call	_hash_add
	movl	_osd, %ecx
	movl	12(%ebx), %edx
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
	andl	$63, %edx
	movl	%eax, %edi
	sall	$4, %edi
	addl	%esi, %edi
	movl	%edi, -24(%ebp)
	cmpl	$8, %edx
	ja	L1358
	testl	%edx, %edx
	je	L1359
	movl	$278, %edi
	btl	%edx, %edi
	jnc	L1359
	movl	8(%ebx), %eax
	movl	-24(%ebp), %esi
	movl	(%eax), %eax
	movl	%eax, 8(%esi)
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
L1359:
	leal	1(%eax), %edx
	sall	$4, %eax
	movl	%edx, 1176(%ecx)
	movl	%ebx, (%esi,%eax)
	movl	_osd, %eax
	movl	4(%ebx), %esi
	movl	(%ebx), %ebx
	testl	%eax, %eax
	je	L1370
L1362:
	movl	%ebx, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1371
L1363:
	movl	-20(%ebp), %ebx
	movl	%esi, 8(%eax)
	movl	%ebx, 12(%eax)
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
L1358:
	.cfi_restore_state
	cmpl	$32, %edx
	jne	L1359
	movl	8(%ebx), %eax
	fldl	(%eax)
	movl	-24(%ebp), %eax
	fstpl	8(%eax)
	movl	1176(%ecx), %eax
	movl	1180(%ecx), %esi
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1356:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1369:
	call	__Z8OSD_Initv
	movl	_osd, %edi
	jmp	L1355
	.p2align 4,,10
	.p2align 3
L1371:
	movl	%ebx, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	%ebx, (%eax)
	jmp	L1363
	.p2align 4,,10
	.p2align 3
L1370:
	call	__Z8OSD_Initv
	jmp	L1362
	.cfi_endproc
LFE159:
	.section .rdata,"dr"
LC85:
	.ascii "Alias listing:\0"
LC86:
	.ascii "     %s '%s'\0"
LC87:
	.ascii "No aliases found.\0"
LC88:
	.ascii "alias %s '%s'\0"
	.align 4
LC89:
	.ascii "Cannot override a function or cvar with an alias!\0"
	.text
	.p2align 4
	.def	__ZL13osdfunc_aliasPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL13osdfunc_aliasPK13osdfuncparm_t:
LFB160:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	(%eax), %eax
	testl	%eax, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jle	L1418
	movl	_osd, %edi
	movl	48(%esp), %ecx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	leal	1188(%edi), %ebx
	movl	8(%ecx), %ebp
	cmpl	$1, %eax
	je	L1381
	addl	$3236, %edi
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1419:
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1383
	movl	12(%esi), %eax
	cmpl	$57005, %eax
	je	L1383
	cmpl	$4919, %eax
	jne	L1384
L1383:
	addl	$4, %ebx
	cmpl	%edi, %ebx
	je	L1382
L1386:
	movl	(%ebx), %esi
	testl	%esi, %esi
	jne	L1419
L1382:
	movl	4(%ebp), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %esi
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1390
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	48(%esp), %eax
	movb	$0, (%ebx,%esi)
	movl	8(%eax), %eax
	movl	(%eax), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	movl	24(%esp), %edx
	je	L1420
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	_osd, %edx
	testl	%edx, %edx
	je	L1421
L1393:
	movl	%esi, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1422
L1394:
	movl	%ebx, 8(%eax)
	movl	$4919, 12(%eax)
	movl	_osd, %eax
	movl	3240(%eax), %eax
	testl	%eax, %eax
	je	L1423
L1417:
	movl	40(%esp), %ebp
	.cfi_restore 5
L1380:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	xorl	%eax, %eax
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1390:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1418:
	.cfi_restore 5
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1374
	movl	$LC85, 12(%esp)
	movl	$443, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1374:
	movl	_osd, %esi
	xorl	%edi, %edi
	leal	1188(%esi), %ebx
	addl	$3236, %esi
	jmp	L1379
	.p2align 4,,10
	.p2align 3
L1376:
	addl	$4, %ebx
	cmpl	%ebx, %esi
	je	L1375
L1379:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1375
	cmpl	$4919, 12(%eax)
	jne	L1376
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	addl	$1, %edi
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L1376
	movl	8(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	$LC86, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$452, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1375:
	testl	%edi, %edi
	jne	L1380
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1380
	movl	$LC87, 12(%esp)
	movl	$457, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1380
L1423:
	.cfi_offset 5, -8
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1417
	movl	48(%esp), %eax
	movl	12(%eax), %eax
	movl	$LC0, 12(%esp)
	movl	$488, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1380
L1384:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1417
	movl	$LC89, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1380
L1422:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	%esi, (%eax)
	jmp	L1394
L1421:
	call	__Z8OSD_Initv
	jmp	L1393
L1420:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1381:
	leal	3236(%edi), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L1389:
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1382
	movl	(%esi), %edi
	movl	%edi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1387
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4919, 12(%esi)
	je	L1424
	testl	%eax, %eax
	js	L1417
	movl	%edi, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	$473, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1380
	.p2align 4,,10
	.p2align 3
L1387:
	.cfi_restore_state
	addl	$4, %ebx
	cmpl	24(%esp), %ebx
	jne	L1389
	jmp	L1382
	.p2align 4,,10
	.p2align 3
L1424:
	testl	%eax, %eax
	js	L1417
	movl	8(%esi), %eax
	movl	%edi, 16(%esp)
	movl	$LC88, 12(%esp)
	movl	%eax, 20(%esp)
	movl	$471, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L1380
	.cfi_endproc
LFE160:
	.section .rdata,"dr"
LC90:
	.ascii "  >%s\0"
	.text
	.p2align 4
	.globl	__Z12OSD_DispatchPKcb
	.def	__Z12OSD_DispatchPKcb;	.scl	2;	.type	32;	.endef
__Z12OSD_DispatchPKcb:
LFB161:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$1076, %esp
	.cfi_def_cfa_offset 1096
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %ebx
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 1092
	subl	$4, %esp
	.cfi_def_cfa_offset 1096
	testl	%eax, %eax
	je	L1426
	movl	%eax, %esi
	movl	20(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movb	$0, (%esi,%ebx)
	movl	_osd, %eax
	movl	3240(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1427
	movl	%edi, %eax
	testb	%al, %al
	je	L1467
L1427:
	movl	%esi, 24(%esp)
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L1445:
	movl	%ebx, %eax
	leal	28(%esp), %ecx
	leal	32(%esp), %edx
	call	__ZL12osd_strtokenPcPS_Pi
	movl	32(%esp), %ebx
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1430
	cmpb	$47, (%eax)
	jne	L1431
	cmpb	$47, 1(%eax)
	je	L1444
L1431:
	movl	%edi, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1468
	leal	52(%esp), %eax
	movl	$1024, 8(%esp)
	xorl	%ebp, %ebp
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L1436:
	cmpl	$256, %ebp
	setne	%bl
	.p2align 4
	.p2align 3
L1457:
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L1438
	movl	28(%esp), %edx
	testl	%edx, %edx
	jne	L1438
	xorl	%eax, %eax
	leal	28(%esp), %ecx
	leal	32(%esp), %edx
	call	__ZL12osd_strtokenPcPS_Pi
	testl	%eax, %eax
	je	L1457
	testb	%bl, %bl
	je	L1457
	addl	$1, %ebp
	movl	%eax, 48(%esp,%ebp,4)
	jmp	L1436
	.p2align 4,,10
	.p2align 3
L1438:
	movl	%eax, %ebx
	leal	52(%esp), %eax
	movl	%ebp, 36(%esp)
	movl	%eax, 44(%esp)
	movl	20(%esp), %eax
	movl	%edi, 40(%esp)
	movl	%eax, 48(%esp)
	movl	12(%esi), %eax
	cmpl	$4919, %eax
	je	L1469
	cmpl	$57005, %eax
	je	L1430
	leal	36(%esp), %edi
	movl	%edi, (%esp)
	call	*%eax
	cmpl	$1, %eax
	je	L1470
L1430:
	testl	%ebx, %ebx
	je	L1444
	movl	28(%esp), %eax
	testl	%eax, %eax
	jne	L1445
L1444:
	movl	24(%esp), %esi
L1466:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 1092
	subl	$4, %esp
	.cfi_def_cfa_offset 1096
	addl	$1076, %esp
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
L1469:
	.cfi_restore_state
	movl	8(%esi), %eax
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	jmp	L1430
L1470:
	movl	(%esi), %eax
	call	_hash_findcase.constprop.0
	testl	%eax, %eax
	js	L1442
	call	__ZL16osdfunc_printvari.isra.0
	jmp	L1430
L1468:
	movl	%edi, (%esp)
	movl	24(%esp), %esi
	call	_strlen
	cmpl	$9, %eax
	ja	L1471
L1434:
	movl	_osd, %eax
	movl	%edi, 8(%esp)
	movl	1112(%eax), %eax
	movl	$LC57, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1466
L1467:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1427
	movl	20(%esp), %eax
	movl	$LC90, 12(%esp)
	movl	$2022, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1427
L1471:
	movl	$9, 8(%esp)
	movl	$__ZZ12OSD_DispatchPKcbE11s_gamefunc_, 4(%esp)
	movl	%edi, (%esp)
	call	_strncmp
	testl	%eax, %eax
	je	L1466
	jmp	L1434
L1442:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1430
	movl	8(%esi), %eax
	movl	$LC0, 12(%esp)
	movl	$2083, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1430
L1426:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE161:
	.section .rdata,"dr"
LC91:
	.ascii "Executing %s\0"
LC92:
	.ascii "\15\12\0"
LC93:
	.ascii "Error reading '%s'!\0"
	.text
	.p2align 4
	.globl	__Z8OSD_ExecPKc
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
__Z8OSD_ExecPKc:
LFB163:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	$0, 24(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L1474
	xorl	%edx, %edx
	movl	%eax, %edi
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	jne	L1493
L1474:
	movl	$1, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1494
L1484:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	movl	$1, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1494:
	.cfi_restore_state
	movl	%ebp, 40(%esp)
	movl	$1, %edx
	.cfi_offset 5, -8
L1486:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1493:
	.cfi_restore 5
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebp
	leal	1(%eax), %edx
	testl	%eax, %eax
	jg	L1495
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ebx
	movl	20(%esp), %edx
	testl	%eax, %eax
	je	L1486
L1481:
	movl	%esi, %eax
	call	_kclose
	movl	40(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1484
	.p2align 4,,10
	.p2align 3
L1495:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	testl	%eax, %eax
	jns	L1496
L1476:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 44
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	movl	20(%esp), %edx
	je	L1486
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebp, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebp
	je	L1497
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1481
	movl	%edi, 16(%esp)
	movl	$LC93, 12(%esp)
	movl	$197, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1496:
	movl	%edi, 16(%esp)
	movl	$LC91, 12(%esp)
	movl	$190, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %edx
	jmp	L1476
	.p2align 4,,10
	.p2align 3
L1497:
	movl	%esi, %eax
	call	_kclose
	movb	$0, (%ebx,%ebp)
	leal	24(%esp), %ecx
	movl	%ebx, %eax
	movl	$LC92, %edx
	call	_Bstrtoken.constprop.0
	movl	_osd, %edx
	movl	3240(%edx), %ecx
	leal	1(%ecx), %esi
	movl	%esi, 3240(%edx)
	testl	%eax, %eax
	je	L1479
	.p2align 4
	.p2align 3
L1478:
	xorl	%edx, %edx
	call	__Z12OSD_DispatchPKcb
	xorl	%eax, %eax
	leal	24(%esp), %ecx
	movl	$LC92, %edx
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	jne	L1478
	movl	_osd, %edx
	movl	3240(%edx), %eax
	leal	-1(%eax), %ecx
L1479:
	movl	%ecx, 3240(%edx)
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 44
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 48
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE163:
	.section .rdata,"dr"
LC94:
	.ascii "exec: file '%s' not found.\0"
	.text
	.p2align 4
	.def	__ZL12osdfunc_execPK13osdfuncparm_t;	.scl	3;	.type	32;	.endef
__ZL12osdfunc_execPK13osdfuncparm_t:
LFB164:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	movl	24(%esp), %edx
	cmpl	$1, (%edx)
	je	L1506
L1498:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1506:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	call	__Z8OSD_ExecPKc
	movl	24(%esp), %edx
	testl	%eax, %eax
	je	L1498
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-1, %eax
	jge	L1507
	xorl	%eax, %eax
L1508:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1507:
	.cfi_restore_state
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	$LC94, 12(%esp)
	movl	$267, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC1, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	xorl	%eax, %eax
	jmp	L1508
	.cfi_endproc
LFE164:
	.section .rdata,"dr"
LC95:
	.ascii "maybe_alloc_palookup\0"
LC96:
	.ascii "source/build/src/palette.cpp\0"
LC97:
	.ascii "NULL palette!\0"
	.align 4
LC98:
	.ascii "fatal_exit(%s) at %s:%d in %s()\12\0"
	.text
	.p2align 4
	.globl	__ZL20maybe_alloc_palookupi.lto_priv.0
	.def	__ZL20maybe_alloc_palookupi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20maybe_alloc_palookupi.lto_priv.0:
LFB167:
	.cfi_startproc
	movl	_palookup(,%eax,4), %edx
	testl	%edx, %edx
	je	L1510
	testl	%eax, %eax
	je	L1529
	cmpl	_palookup, %edx
	je	L1510
L1529:
	ret
	.p2align 4,,10
	.p2align 3
L1510:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movswl	_numshades, %eax
	movl	_g_sm_heap, %ecx
	movl	$16, 4(%esp)
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1512
	movl	%eax, _palookup(,%ebx,4)
	movswl	_numshades, %eax
	movl	%edx, (%esp)
	addl	$1, %eax
	movl	$0, 4(%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	_palookup(,%ebx,4), %edx
	testl	%edx, %edx
	je	L1531
L1509:
	addl	$24, %esp
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
L1531:
	.cfi_restore_state
	movl	$LC95, 16(%esp)
	movl	$463, 12(%esp)
	movl	$LC96, 8(%esp)
	movl	$LC97, 4(%esp)
	movl	$LC98, (%esp)
	call	_initprintf
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L1514
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %edx
	testl	%edx, %edx
	je	L1514
	movl	372(%edx), %eax
	testl	%eax, %eax
	je	L1515
	movl	%edx, 20(%esp)
	call	_mi_free
	movl	20(%esp), %edx
L1515:
	movl	%edx, %eax
	call	_mi_free
L1514:
	movl	$LC97, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__FatalAppExitA@8
	.cfi_def_cfa_offset 28
	subl	$8, %esp
	.cfi_def_cfa_offset 36
	jmp	L1509
	.p2align 4,,10
	.p2align 3
L1512:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE167:
	.p2align 4
	.globl	_paletteSetBlendTable
	.def	_paletteSetBlendTable;	.scl	2;	.type	32;	.endef
_paletteSetBlendTable:
LFB172:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_blendtable(,%eax,4), %eax
	testl	%eax, %eax
	je	L1536
L1533:
	movl	$65536, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1536:
	.cfi_restore_state
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1534
	movl	%eax, _blendtable(,%ebx,4)
	movl	12(%esp), %edx
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1534:
	movl	$65536, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE172:
	.section .rdata,"dr"
LC103:
	.ascii "palette.dat\0"
	.align 4
LC104:
	.ascii "invalid number of shades in \"palette.dat\"!\0"
LC105:
	.ascii "MoreBlendTab\0"
	.align 4
LC106:
	.ascii "failed reading additional blending table count\0"
	.align 4
LC107:
	.ascii "failed reading additional blending table index\0"
	.align 4
LC108:
	.ascii "duplicate blending table index %3d encountered\0"
	.align 4
LC109:
	.ascii "failed reading additional blending table\0"
	.align 4
LC110:
	.ascii "invalid lognumalphatabs value, must be in [1 .. 7]\0"
	.text
	.p2align 4
	.globl	_paletteLoadFromDisk
	.def	_paletteLoadFromDisk;	.scl	2;	.type	32;	.endef
_paletteLoadFromDisk:
LFB174:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	$256, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.p2align 4
	.p2align 3
L1538:
	imull	$30, %eax, %ebx
	movl	%ebx, __ZL5rdist.lto_priv.0+1022(%ecx,%ecx)
	movl	%ebx, __ZL5rdist.lto_priv.0(,%edx,4)
	imull	$59, %eax, %ebx
	movl	%ebx, __ZL5gdist.lto_priv.0+1022(%ecx,%ecx)
	movl	%ebx, __ZL5gdist.lto_priv.0(,%edx,4)
	leal	(%eax,%eax,4), %ebx
	leal	(%eax,%ebx,2), %ebx
	addl	%ecx, %eax
	movl	%ebx, __ZL5bdist.lto_priv.0+1022(%ecx,%ecx)
	addl	$2, %ecx
	movl	%ebx, __ZL5bdist.lto_priv.0(,%edx,4)
	subl	$1, %edx
	cmpl	$-1, %edx
	jne	L1538
	movl	$-961, %ebx
	xorl	%esi, %esi
L1539:
	leal	-96(%ebx), %eax
	movl	%esi, %edx
L1540:
	leal	1(%eax), %ecx
	movl	%eax, __ZL7colscan.lto_priv.0(,%edx,4)
	movl	%ecx, __ZL7colscan.lto_priv.0+4(,%edx,4)
	leal	2(%eax), %ecx
	addl	$32, %eax
	movl	%ecx, __ZL7colscan.lto_priv.0+8(,%edx,4)
	addl	$3, %edx
	cmpl	%ebx, %eax
	jne	L1540
	addl	$9, %esi
	leal	1024(%eax), %ebx
	cmpl	$27, %esi
	jne	L1539
	movl	__ZL7colscan.lto_priv.0+52, %eax
	movl	__ZL7colscan.lto_priv.0+104, %edx
	movl	$_glblend+4096, %ecx
	movss	LC100, %xmm1
	movss	LC102, %xmm0
	movl	%edx, __ZL7colscan.lto_priv.0+52
	movl	$16909060, %edx
	movl	%eax, __ZL7colscan.lto_priv.0+104
	movl	$50462976, %eax
	movl	%eax, __ZL7coldist.lto_priv.0
	movl	$_glblend, %eax
	movl	%edx, __ZL7coldist.lto_priv.0+4
	movl	$1284, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1542:
	movw	%dx, 4(%eax)
	addl	$16, %eax
	movss	%xmm1, -16(%eax)
	movb	$0, -10(%eax)
	movss	%xmm0, -8(%eax)
	movw	%dx, -4(%eax)
	movb	$0, -2(%eax)
	cmpl	%eax, %ecx
	jne	L1542
	xorl	%edx, %edx
	movl	$LC103, %eax
	call	_kopen4load.part.0
	movl	%eax, -32(%ebp)
	cmpl	$-1, %eax
	je	L1537
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$_palette, %edx
	movl	$768, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$_palette+768, %edx
	cmpl	$768, %eax
	movl	$_palette, %eax
	jne	L1599
	.p2align 4
	.p2align 4
	.p2align 3
L1545:
	salb	$2, (%eax)
	salb	$2, 1(%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L1545
	movl	$_palette, (%esp)
	call	_paletteInitClosestColorMap
	movl	-32(%ebp), %eax
	orb	$1, _paletteloaded
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	$41600, %eax
	jne	L1546
	movl	$32, %ecx
	movl	$1, %esi
	movw	%cx, _numshades
L1547:
	xorl	%eax, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movswl	_numshades, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	sall	$8, %ecx
	movl	_palookup, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movswl	_numshades, %eax
	sall	$8, %eax
	cmpl	%edx, %eax
	jne	L1599
	orb	$2, _paletteloaded
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1551
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, _blendtable
	testl	%esi, %esi
	je	L1600
	movl	%ebx, -40(%ebp)
	movl	%ebx, %edx
	movl	%ebx, %esi
	movl	$255, %edi
	addl	$1, %edx
	.p2align 4
	.p2align 3
L1556:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	movl	%edx, -36(%ebp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1599
	movl	$256, %eax
	subl	%edi, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1555:
	movzbl	(%ebx,%eax), %edx
	movl	%eax, %ecx
	addl	$1, %eax
	sall	$8, %ecx
	movb	%dl, (%esi,%ecx)
	cmpl	$256, %eax
	jne	L1555
	movl	-36(%ebp), %edx
	addl	$256, %ebx
	addl	$1, %esi
	addl	$257, %edx
	subl	$1, %edi
	jne	L1556
	movl	-40(%ebp), %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1557:
	movb	%al, (%edx)
	addl	$1, %eax
	addl	$257, %edx
	cmpl	$256, %eax
	jne	L1557
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1546:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numshades, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L1599
	xorl	%esi, %esi
	cmpw	$1, _numshades
	jg	L1547
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1549
	movl	$LC104, 12(%esp)
	movl	$190, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1549:
	xorl	%edx, %edx
	movw	%dx, _numshades
L1599:
	movl	-32(%ebp), %eax
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
	jmp	_kclose
L1600:
	.cfi_restore_state
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$65536, %eax
	jne	L1599
L1558:
	orb	$4, _paletteloaded
	leal	-24(%ebp), %edx
	movl	$12, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$12, %eax
	jne	L1559
	cmpl	$1701998413, -24(%ebp)
	je	L1601
L1559:
	movl	-32(%ebp), %eax
	call	_kclose
L1537:
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
L1551:
	.cfi_restore_state
	movl	$256, %eax
	call	__Z13handle_memerri
L1601:
	cmpl	$1852140610, -20(%ebp)
	jne	L1559
	cmpl	$1650545764, -16(%ebp)
	jne	L1559
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-25(%ebp), %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L1602
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1565
	cmpb	$0, -25(%ebp)
	je	L1567
L1566:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$1, %ecx
	leal	-26(%ebp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L1603
	movzbl	-26(%ebp), %edx
	movl	_blendtable(,%edx,4), %eax
	testl	%eax, %eax
	je	L1570
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-1, %eax
	jl	L1570
	movl	%edx, 16(%esp)
	movl	$LC108, 12(%esp)
	movl	$260, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1570:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$65536, %ecx
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$65536, %eax
	jne	L1604
	movzbl	-26(%ebp), %eax
	movl	%ebx, %edx
	addl	$1, %esi
	call	_paletteSetBlendTable
	movzbl	-25(%ebp), %eax
	cmpl	%esi, %eax
	jg	L1566
L1567:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	leal	-27(%ebp), %edx
	movl	$1, %ecx
	subl	$4, %esp
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-32(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L1559
	movzbl	-27(%ebp), %ecx
	leal	-1(%ecx), %edx
	cmpb	$6, %dl
	ja	L1605
	sall	%cl, %eax
	movb	%al, _numalphatabs
	jmp	L1559
L1603:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1572
	movl	$LC107, 12(%esp)
	movl	$254, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1572:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-32(%ebp), %eax
	subl	$4, %esp
	call	_kclose
	jmp	L1537
L1604:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1572
	movl	$LC109, 12(%esp)
	movl	$264, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1572
L1605:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1559
	movl	$LC110, 12(%esp)
	movl	$278, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1559
L1565:
	movl	$65536, %eax
	call	__Z13handle_memerri
L1602:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L1559
	movl	$LC106, 12(%esp)
	movl	$244, 8(%esp)
	movl	$LC96, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1559
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	_handle_blend
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
_handle_blend:
LFB178:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	testb	%al, %al
	movl	_glad_glBlendFunc, %eax
	je	L1610
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	sall	$4, %edx
	leal	_glblend(%edx,%ecx,8), %edx
	movzbl	5(%edx), %ecx
	movl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0(,%ecx,4), %ecx
	movl	%ecx, 4(%esp)
	movzbl	4(%edx), %edx
	movl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0(,%edx,4), %edx
	movl	%edx, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1610:
	.cfi_restore_state
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE178:
	.p2align 4
	.globl	_paletteFreeLookupTable
	.def	_paletteFreeLookupTable;	.scl	2;	.type	32;	.endef
_paletteFreeLookupTable:
LFB180:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_palookup, %edx
	testl	%eax, %eax
	jne	L1612
	testl	%edx, %edx
	je	L1623
	movl	$1, %eax
	jmp	L1615
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1614:
	addl	$1, %eax
	cmpl	$256, %eax
	je	L1624
L1615:
	cmpl	%edx, _palookup(,%eax,4)
	jne	L1614
	movl	$0, _palookup(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L1615
L1624:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	$0, _palookup
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1612:
	.cfi_restore_state
	movl	_palookup(,%eax,4), %ecx
	cmpl	%edx, %ecx
	je	L1623
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 4(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	4(%esp), %eax
L1623:
	movl	$0, _palookup(,%eax,4)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE180:
	.p2align 4
	.globl	_paletteSetColorTable
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
_paletteSetColorTable:
LFB182:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_basepaltable(,%eax,4), %eax
	testl	%eax, %eax
	je	L1630
L1626:
	movl	$768, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	cmpl	$2, _rendmode
	jg	L1631
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1631:
	.cfi_restore_state
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17uploadbasepalettei
	.p2align 4,,10
	.p2align 3
L1630:
	.cfi_restore_state
	movl	$768, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1627
	movl	%eax, _basepaltable(,%ebx,4)
	movl	12(%esp), %edx
	jmp	L1626
	.p2align 4,,10
	.p2align 3
L1627:
	movl	$768, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE182:
	.p2align 4
	.globl	_paletteGetColor
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
_paletteGetColor:
LFB183:
	.cfi_startproc
	movl	_gammabrightness, %ecx
	testl	%ecx, %ecx
	je	L1633
	movl	_rendmode, %edx
	testl	%edx, %edx
	jne	L1638
L1633:
	movl	_curbrightness, %edx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movzbl	_curpalette+1(,%eax,4), %ebx
	movzbl	_curpalette+2(,%eax,4), %ecx
	movzbl	_curpalette(,%eax,4), %esi
	sall	$8, %edx
	movzbl	_britable(%edx,%esi), %eax
	movb	_britable(%ebx,%edx), %ah
	movzbl	_britable(%edx,%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movzwl	%ax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	sall	$16, %edx
	orl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1638:
	movl	_curpalette(,%eax,4), %eax
	ret
	.cfi_endproc
LFE183:
	.p2align 4
	.def	__ZL14paletteSetFadeh;	.scl	3;	.type	32;	.endef
__ZL14paletteSetFadeh:
LFB184:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movzbl	%al, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movzbl	_palfadergb+1, %eax
	movzbl	_palfadergb+2, %esi
	movl	%eax, (%esp)
	movzbl	_palfadergb, %eax
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L1640:
	movl	%ebx, %eax
	call	_paletteGetColor
	movl	%esi, %edx
	movb	$0, _curpalettefaded+3(,%ebx,4)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ebp
	subl	%ebp, %edx
	imull	%edi, %edx
	addb	%dh, %cl
	movl	(%esp), %edx
	movb	%cl, _curpalettefaded+2(,%ebx,4)
	movzbl	%ah, %ecx
	subl	%ecx, %edx
	imull	%edi, %edx
	movzbl	%dh, %ecx
	movl	4(%esp), %edx
	addb	%ah, %cl
	movb	%cl, _curpalettefaded+1(,%ebx,4)
	movzbl	%al, %ecx
	subl	%ecx, %edx
	imull	%edi, %edx
	addb	%dh, %al
	movb	%al, _curpalettefaded(,%ebx,4)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1640
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
LFE184:
	.p2align 4
	.globl	_videoSetPalette
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
_videoSetPalette:
LFB185:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzbl	%dl, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movzbl	%al, %ebx
	movl	%edx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_basepaltable(,%edx,4), %edi
	movb	%cl, 2(%esp)
	testl	%edi, %edi
	je	L1666
L1644:
	movb	$1, 3(%esp)
	cmpb	%al, _curbasepal
	jne	L1645
	cmpb	$0, _basepalreset
	setne	3(%esp)
L1645:
	movb	%al, _curbasepal
	movb	$0, _basepalreset
	testb	$4, 2(%esp)
	jne	L1646
	movl	$15, %eax
	cmpb	%al, %bl
	cmovbe	%ebx, %eax
	testb	%bl, %bl
	cmove	%ebx, %eax
	movl	%eax, _curbrightness
L1646:
	call	_videoSetGamma
	movl	_rendmode, %esi
	testl	%esi, %esi
	je	L1648
	movl	_gammabrightness, %ecx
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	je	L1648
L1649:
	sall	$8, %ebp
	movl	%edi, %edx
	xorl	%eax, %eax
	addl	$_britable, %ebp
	.p2align 4
	.p2align 3
L1650:
	movzbl	(%edx), %ebx
	addl	$3, %edx
	movb	%bl, _curpalette(,%eax,4)
	movzbl	-2(%edx), %edi
	movl	%edi, %ecx
	movb	%cl, _curpalette+1(,%eax,4)
	movzbl	-1(%edx), %ecx
	movb	$0, _curpalette+3(,%eax,4)
	movb	%cl, _curpalette+2(,%eax,4)
	movzbl	0(%ebp,%ecx), %ecx
	movb	$0, _curpalettefaded+3(,%eax,4)
	movb	%cl, _curpalettefaded+2(,%eax,4)
	movl	%edi, %ecx
	movzbl	%cl, %edi
	movzbl	0(%ebp,%edi), %ecx
	movb	%cl, _curpalettefaded+1(,%eax,4)
	movzbl	0(%ebp,%ebx), %ecx
	movb	%cl, _curpalettefaded(,%eax,4)
	addl	$1, %eax
	cmpl	$256, %eax
	jne	L1650
	movl	$1024, %edx
	movl	$_curpalettefaded, %eax
	call	_XXH3_hashLong_64b_default.constprop.0
	movl	__ZZ15videoSetPaletteE14lastpalettesum, %ebp
	movl	%edx, %ebx
	movl	__ZZ15videoSetPaletteE14lastpalettesum+4, %edx
	movl	%eax, %edi
	movl	%ebp, %eax
	movl	%edx, %ecx
	xorl	%edi, %eax
	xorl	%ebx, %ecx
	orl	%ecx, %eax
	jne	L1651
	movl	_g_lastpalettesum, %eax
	movl	_g_lastpalettesum+4, %ecx
	xorl	%ebp, %eax
	xorl	%edx, %ecx
	orl	%ecx, %eax
	je	L1652
L1651:
	movl	%edx, 4(%esp)
	call	_videoUpdatePalette.constprop.0.isra.0
	movl	_rendmode, %esi
	movl	4(%esp), %edx
L1652:
	movl	%edi, __ZZ15videoSetPaletteE14lastpalettesum
	movl	%ebx, __ZZ15videoSetPaletteE14lastpalettesum+4
	movl	%edi, _g_lastpalettesum
	movl	%ebx, _g_lastpalettesum+4
	cmpl	$2, %esi
	jle	L1653
	cmpb	$0, 3(%esp)
	je	L1667
L1654:
	testb	$2, 2(%esp)
	je	L1668
L1655:
	movl	$3, %eax
	call	__Z19gltexinvalidatetypei
	cmpl	$4, _rendmode
	jne	L1653
	call	_polymer_texinvalidate
L1653:
	xorl	%eax, %eax
	movb	$0, _palfadergb+2
	movw	%ax, _palfadergb
	movb	$0, _palfadedelta
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
L1648:
	.cfi_restore_state
	movl	_curbrightness, %ebp
	jmp	L1649
L1667:
	xorl	%edi, %ebp
	xorl	%ebx, %edx
	orl	%edx, %ebp
	je	L1653
	movl	_gammabrightness, %edx
	testl	%edx, %edx
	jne	L1653
	jmp	L1654
L1666:
	movl	_basepaltable, %edi
	xorl	%eax, %eax
	jmp	L1644
L1668:
	movl	$2, %eax
	call	__Z19gltexinvalidatetypei
	jmp	L1655
	.cfi_endproc
LFE185:
	.p2align 4
	.globl	_videoFadePalette
	.def	_videoFadePalette;	.scl	2;	.type	32;	.endef
_videoFadePalette:
LFB187:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movb	%cl, _palfadergb+2
	movzbl	16(%esp), %eax
	movb	%bl, _palfadergb
	movb	%dl, _palfadergb+1
	movb	%al, _palfadedelta
	call	__ZL14paletteSetFadeh
	movl	$1024, %edx
	movl	$_curpalettefaded, %eax
	call	_XXH3_hashLong_64b_default.constprop.0
	movl	__ZZ16videoFadePaletteE14lastpalettesum, %ecx
	movl	__ZZ16videoFadePaletteE14lastpalettesum+4, %ebx
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	orl	%ebx, %ecx
	jne	L1670
	movl	_g_lastpalettesum, %ecx
	movl	_g_lastpalettesum+4, %ebx
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	orl	%ebx, %ecx
	je	L1671
L1670:
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_videoUpdatePalette.constprop.0.isra.0
	movl	4(%esp), %edx
	movl	(%esp), %eax
L1671:
	movl	%eax, __ZZ16videoFadePaletteE14lastpalettesum
	movl	%edx, __ZZ16videoFadePaletteE14lastpalettesum+4
	movl	%eax, _g_lastpalettesum
	movl	%edx, _g_lastpalettesum+4
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE187:
	.p2align 4
	.globl	_videoFadePalette.constprop.0
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
_videoFadePalette.constprop.0:
LFB188:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%eax, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movw	%ax, _palfadergb
	xorl	%eax, %eax
	movb	$0, _palfadergb+2
	movb	$0, _palfadedelta
	call	__ZL14paletteSetFadeh
	movl	$1024, %edx
	movl	$_curpalettefaded, %eax
	call	_XXH3_hashLong_64b_default.constprop.0
	movl	__ZZ16videoFadePaletteE14lastpalettesum, %ecx
	movl	__ZZ16videoFadePaletteE14lastpalettesum+4, %ebx
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	orl	%ebx, %ecx
	jne	L1674
	movl	_g_lastpalettesum, %ecx
	movl	_g_lastpalettesum+4, %ebx
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	orl	%ebx, %ecx
	je	L1675
L1674:
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_videoUpdatePalette.constprop.0.isra.0
	movl	4(%esp), %edx
	movl	(%esp), %eax
L1675:
	movl	%eax, __ZZ16videoFadePaletteE14lastpalettesum
	movl	%edx, __ZZ16videoFadePaletteE14lastpalettesum+4
	movl	%eax, _g_lastpalettesum
	movl	%edx, _g_lastpalettesum+4
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE188:
	.p2align 4
	.globl	_paletteMakeLookupTable.part.0
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
_paletteMakeLookupTable.part.0:
LFB189:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movzbl	92(%esp), %eax
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movzbl	84(%esp), %ebx
	orb	88(%esp), %bl
	movl	%edx, 28(%esp)
	movb	%cl, 59(%esp)
	orl	%ecx, %ebx
	movb	%al, _g_noFloorPal(%edi)
	testl	%edx, %edx
	je	L1700
	movl	%edi, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	testb	%bl, %bl
	jne	L1684
	cmpw	$0, _numshades
	jle	L1685
	movl	%ebp, 76(%esp)
	movl	$256, %ebx
	xorl	%ecx, %ecx
	movl	%esi, 68(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	28(%esp), %esi
L1686:
	movl	%ecx, 16(%esp)
	leal	-256(%ebx), %eax
	movl	%eax, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L1687:
	movl	_palookup, %ecx
	movzbl	(%esi,%eax), %edx
	addl	%ebp, %ecx
	movzbl	(%ecx,%edx), %ecx
	movl	_palookup(,%edi,4), %edx
	movb	%cl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	L1687
	movl	16(%esp), %ecx
	movswl	_numshades, %eax
	subl	$256, %esi
	addl	$256, %ebx
	addl	$1, %ecx
	cmpl	%eax, %ecx
	jl	L1686
	movl	68(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %ebp
	.cfi_restore 5
L1685:
	movzbl	59(%esp), %eax
	movb	%al, _palookupfog(,%edi,4)
	movzbl	84(%esp), %eax
	movb	%al, _palookupfog+1(,%edi,4)
	movzbl	88(%esp), %eax
	movb	%al, _palookupfog+2(,%edi,4)
	movl	64(%esp), %ebx
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1700:
	.cfi_restore_state
	testb	%bl, %bl
	je	L1701
	cmpb	$1, __ZZ22paletteMakeLookupTableE5idmap
	je	L1702
L1696:
	movl	%edi, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movl	$__ZZ22paletteMakeLookupTableE5idmap, 28(%esp)
L1684:
	movswl	_numshades, %eax
	testl	%eax, %eax
	jle	L1685
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	_palookup(,%edi,4), %esi
	movl	$0, 44(%esp)
	movl	%esi, 24(%esp)
	movzbl	88(%esp), %esi
	movl	$0, 48(%esp)
	movl	%esi, 32(%esp)
	movzbl	84(%esp), %esi
	movl	%edi, 60(%esp)
	movl	%esi, 36(%esp)
	movzbl	59(%esp), %esi
	movl	%esi, 40(%esp)
L1689:
	subl	$1, %eax
	movl	48(%esp), %edx
	xorl	%edi, %edi
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide64.lto_priv.10
	movl	%ebp, 52(%esp)
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L1688:
	movl	28(%esp), %eax
	movl	16(%esp), %edx
	movzbl	(%eax,%edi), %eax
	leal	(%eax,%eax,2), %esi
	movl	32(%esp), %eax
	movzbl	_palette+2(%esi), %ebx
	subl	%ebx, %eax
/APP
 # 612 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzbl	_palette+1(%esi), %ebp
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	36(%esp), %eax
	subl	%ebp, %eax
/APP
 # 611 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzbl	_palette(%esi), %esi
	movl	%eax, %ecx
	movl	40(%esp), %eax
	movl	16(%esp), %edx
	subl	%esi, %eax
/APP
 # 610 "source/build/src/palette.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, 4(%esp)
	addl	20(%esp), %ebx
	leal	0(%ebp,%ecx), %edx
	addl	%esi, %eax
	movl	$255, (%esp)
	movl	%ebx, %ecx
	call	_paletteGetClosestColorWithBlacklist
	movl	24(%esp), %ebx
	movb	%al, (%ebx,%edi)
	addl	$1, %edi
	cmpl	$256, %edi
	jne	L1688
	movl	52(%esp), %ebp
	movswl	_numshades, %eax
	addl	$256, 24(%esp)
	addl	$1, %ebp
	addl	$65536, 44(%esp)
	adcl	$0, 48(%esp)
	cmpl	%ebp, %eax
	jg	L1689
	movl	60(%esp), %edi
	movl	68(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %ebp
	.cfi_restore 5
	jmp	L1685
L1701:
	movl	_palookup, %eax
	movl	%eax, _palookup(,%edi,4)
	movl	64(%esp), %ebx
	movl	72(%esp), %edi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L1702:
	.cfi_restore_state
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1682:
	movb	%al, __ZZ22paletteMakeLookupTableE5idmap(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZZ22paletteMakeLookupTableE5idmap(%edx)
	cmpl	$256, %eax
	jne	L1682
	jmp	L1696
	.cfi_endproc
LFE189:
	.p2align 4
	.globl	__ZL15png_write_chunkjPKcPKhj.lto_priv.0
	.def	__ZL15png_write_chunkjPKcPKhj.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15png_write_chunkjPKcPKhj.lto_priv.0:
LFB190:
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
	movl	%edx, %ebx
	subl	$212, %esp
	movl	%eax, -132(%ebp)
	movl	(%edi), %eax
	movl	%ecx, -136(%ebp)
	movl	_g_sm_heap, %ecx
	movl	%eax, -172(%ebp)
	testl	%eax, %eax
	jne	L1952
	movl	-132(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -176(%ebp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1819
	movl	-176(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	movl	(%ebx), %eax
	movl	-132(%ebp), %edi
	movl	%eax, (%esi)
	leal	4(%esi), %eax
	movl	%edi, 8(%esp)
	movl	-136(%ebp), %edi
	movl	%eax, (%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
L1817:
	movl	-132(%ebp), %eax
	leal	-72(%ebp), %ebx
	bswap	%eax
	movl	%eax, -72(%ebp)
	movl	_png+4, %eax
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	call	_fwrite
	movl	_png+4, %eax
	movl	$1, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-176(%ebp), %edi
	movl	%esi, (%esp)
	movl	%edi, 4(%esp)
	call	_fwrite
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_Bcrc32
	movl	%edi, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	_Bcrc32
	bswap	%eax
	movl	%eax, -72(%ebp)
	movl	_png+4, %eax
	movl	%ebx, (%esp)
	movl	%eax, 12(%esp)
	movl	$1, 8(%esp)
	movl	$4, 4(%esp)
	call	_fwrite
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
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
L1952:
	.cfi_restore_state
	movl	-132(%ebp), %edi
	movl	$138547365, %eax
	movl	%edi, %edx
	shrl	$10, %edx
	mull	%edx
	leal	5(%edx,%edx,4), %eax
	leal	128(%edi,%eax), %esi
	imull	$110, %edi, %eax
	movl	$1374389535, %edi
	mull	%edi
	shrl	$5, %edx
	subl	$-128, %edx
	cmpl	%edx, %esi
	cmovnb	%esi, %edx
	leal	4(%edx), %eax
	movl	%edx, -200(%ebp)
	movl	%eax, -176(%ebp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1819
	movl	-176(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	movl	(%ebx), %eax
	movl	%eax, (%esi)
	xorl	%eax, %eax
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
L1813:
	movl	$0, -64(%ebp,%eax)
	movl	$0, -60(%ebp,%eax)
	movl	$0, -56(%ebp,%eax)
	movl	$0, -52(%ebp,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1813
	movss	LC115, %xmm0
	movl	$_miniz_def_free_func, -84(%ebp)
	movss	-84(%ebp), %xmm1
	movl	$1, -24(%ebp)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -40(%ebp)
	movl	$319296, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1953
	leal	-80(%ebp), %eax
	movl	$44, %edx
	movl	$0, (%edi)
	movl	%eax, -84(%ebp)
	leal	-76(%ebp), %eax
	movss	-84(%ebp), %xmm3
	movl	%eax, -84(%ebp)
	leal	4(%esi), %eax
	movss	-84(%ebp), %xmm4
	movl	%eax, -168(%ebp)
	movl	$28800, %eax
	movl	%eax, 8(%edi)
	unpcklps	%xmm4, %xmm3
	leal	168562(%edi), %eax
	movl	%edx, 12(%edi)
	movlps	%xmm3, -192(%ebp)
	movl	$0, 4(%edi)
	movl	$1, 20(%edi)
	movl	$12, 16(%edi)
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movups	LC112, %xmm0
	leal	37491(%edi), %eax
	movl	$0, 104(%edi)
	movl	%eax, 40(%edi)
	leal	37490(%edi), %eax
	movups	%xmm0, 56(%edi)
	xorps	%xmm0, %xmm0
	movl	%eax, -180(%ebp)
	movl	%eax, 44(%edi)
	leal	234098(%edi), %eax
	movups	%xmm0, 72(%edi)
	movups	%xmm0, 88(%edi)
	movups	LC113, %xmm0
	movl	%eax, 48(%edi)
	movl	%eax, 52(%edi)
	leal	144(%edi), %eax
	movups	%xmm0, 24(%edi)
	movb	$0, 37490(%edi)
	movl	$0, 108(%edi)
	movl	%eax, -144(%ebp)
	movl	$33025, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	leal	33170(%edi), %eax
	movl	$576, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, 33794(%edi)
	movl	$0, 33798(%edi)
	movl	$0, 33802(%edi)
	movl	$0, 33806(%edi)
L1706:
	movl	$0, 33746(%edi,%eax)
	movl	$0, 33750(%edi,%eax)
	movl	$0, 33754(%edi,%eax)
	movl	$0, 33758(%edi,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L1706
	movl	-200(%ebp), %eax
	movl	%esi, -204(%ebp)
	movl	$0, -196(%ebp)
	movl	%eax, -140(%ebp)
	jmp	L1812
	.p2align 4,,10
	.p2align 3
L1809:
	movl	%edi, %eax
	call	_tdefl_flush_output_buffer.lto_priv.0
	movl	-80(%ebp), %edx
	addl	%edx, -136(%ebp)
	subl	%edx, -132(%ebp)
	movl	-76(%ebp), %edx
	addl	%edx, -168(%ebp)
	subl	%edx, -140(%ebp)
	addl	%edx, -196(%ebp)
	movl	24(%edi), %edx
	movl	%eax, 108(%edi)
	movl	%edx, -24(%ebp)
L1713:
	cmpl	$1, %eax
	je	L1811
	movl	-140(%ebp), %edx
	testl	%edx, %edx
	je	L1941
L1812:
	movl	-132(%ebp), %eax
	movl	-168(%ebp), %esi
	movl	$0, 140(%edi)
	movl	-140(%ebp), %ebx
	movl	-136(%ebp), %ecx
	movl	$4, 128(%edi)
	movl	%eax, -80(%ebp)
	movlps	-192(%ebp), %xmm2
	movl	%ebx, -76(%ebp)
	movl	%esi, 116(%edi)
	movl	(%edi), %esi
	movl	%ecx, 112(%edi)
	movl	%ecx, 132(%edi)
	movl	%eax, 136(%edi)
	movlps	%xmm2, 120(%edi)
	testl	%esi, %esi
	jne	L1708
	movl	108(%edi), %ebx
	testl	%ebx, %ebx
	jne	L1708
	testl	%eax, %eax
	setne	%dl
	testl	%ecx, %ecx
	sete	%al
	testb	%al, %dl
	jne	L1708
	movl	92(%edi), %ecx
	orl	$1, 104(%edi)
	testl	%ecx, %ecx
	jne	L1809
	movl	96(%edi), %eax
	movl	%eax, -184(%ebp)
	testl	%eax, %eax
	jne	L1809
	movl	-132(%ebp), %eax
	movl	32(%edi), %ecx
	movl	%eax, -96(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -84(%ebp)
	.p2align 4
	.p2align 3
L1712:
	movl	-96(%ebp), %eax
	testl	%eax, %eax
	jne	L1796
L1959:
	testl	%ecx, %ecx
	je	L1954
	movl	36(%edi), %eax
	movl	%eax, -100(%ebp)
	addl	%ecx, %eax
	cmpl	$1, %eax
	jbe	L1955
L1714:
	movl	28(%edi), %eax
	movl	-96(%ebp), %ebx
	movl	-84(%ebp), %edx
	movl	%eax, -88(%ebp)
	movl	$258, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	leal	(%eax,%ecx), %esi
	subl	%eax, %ebx
	movl	%esi, -104(%ebp)
	movl	%ebx, -96(%ebp)
	testl	%edx, %edx
	je	L1956
	movl	-88(%ebp), %esi
	leal	(%esi,%ecx), %ebx
	movl	-104(%ebp), %esi
	leal	-2(%ebx), %ecx
	movl	%ecx, %edx
	andl	$32767, %edx
	movzbl	144(%edi,%edx), %edx
	movb	%dl, -92(%ebp)
	leal	-1(%ebx), %edx
	andl	$32767, %edx
	movzbl	144(%edi,%edx), %edx
	movl	%esi, 32(%edi)
	movb	%dl, -108(%ebp)
	movl	-84(%ebp), %edx
	addl	%edx, %eax
	movl	%eax, -112(%ebp)
	cmpl	%eax, %edx
	je	L1721
	movzbl	-92(%ebp), %eax
	movzbl	-108(%ebp), %esi
	movl	%ebx, %edx
	andl	$32767, %edx
	sall	$5, %eax
	movl	%edx, -116(%ebp)
	movl	-84(%ebp), %edx
	xorl	%esi, %eax
	movl	%ecx, %esi
	movl	%eax, -92(%ebp)
	movl	-112(%ebp), %eax
	subl	%edx, %esi
	subl	%ebx, %edx
	movl	%edx, -108(%ebp)
	movl	-116(%ebp), %edx
	addl	%eax, %esi
	movl	%esi, -84(%ebp)
	.p2align 4
	.p2align 3
L1720:
	movl	-108(%ebp), %esi
	movzbl	2(%esi,%ecx), %ebx
	movb	%bl, 144(%edi,%edx)
	cmpl	$256, %edx
	ja	L1719
	movb	%bl, 32912(%edi,%edx)
L1719:
	movl	-92(%ebp), %eax
	movl	%ecx, %esi
	addl	$1, %edx
	andl	$32767, %esi
	andl	$32767, %edx
	sall	$5, %eax
	xorl	%ebx, %eax
	andl	$32767, %eax
	leal	84280(%eax), %ebx
	movl	%eax, -92(%ebp)
	movzwl	2(%edi,%ebx,2), %eax
	movw	%ax, 103026(%edi,%esi,2)
	movw	%cx, 2(%edi,%ebx,2)
	addl	$1, %ecx
	cmpl	-84(%ebp), %ecx
	jne	L1720
L1721:
	movl	-112(%ebp), %eax
	movl	%eax, -84(%ebp)
L1716:
	movl	-100(%ebp), %ebx
	movl	$32768, %eax
	subl	-104(%ebp), %eax
	movl	80(%edi), %esi
	cmpl	%ebx, %eax
	cmova	%ebx, %eax
	movl	%esi, -116(%ebp)
	movl	%eax, -92(%ebp)
	movl	%eax, 36(%edi)
	testl	%esi, %esi
	jne	L1725
	movl	-88(%ebp), %esi
	movl	8(%edi), %ecx
	andl	$32767, %esi
	movl	%esi, -112(%ebp)
	testl	$589824, %ecx
	je	L1726
	testl	%eax, %eax
	je	L1742
	testl	$524288, %ecx
	je	L1957
L1931:
	movl	-112(%ebp), %ebx
	testl	%ebx, %ebx
	je	L1742
	movl	$0, -128(%ebp)
	movl	$2, %esi
L1767:
	testl	$131072, %ecx
	je	L1766
	cmpl	$5, %esi
	jbe	L1739
L1766:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	je	L1958
L1764:
	cmpl	%esi, -116(%ebp)
	jnb	L1734
	movl	40(%edi), %edx
	movl	84(%edi), %eax
	addl	$1, 60(%edi)
	leal	1(%edx), %ecx
	movl	%ecx, 40(%edi)
	movb	%al, (%edx)
	movl	44(%edi), %edx
	shrb	(%edx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1770
	movl	%edx, 56(%edi)
L1771:
	movzbl	%al, %eax
	addw	$1, 33170(%edi,%eax,2)
	cmpl	$127, %esi
	jbe	L1772
	leal	-3(%esi), %eax
	movl	-128(%ebp), %ecx
	addl	%esi, 60(%edi)
	movb	%al, (%ebx)
	movl	40(%edi), %eax
	subl	$1, %ecx
	movb	%cl, 1(%eax)
	movl	%ecx, %edx
	movl	40(%edi), %eax
	shrl	$8, %edx
	movb	%dl, 2(%eax)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %eax
	shrb	%al
	orl	$-128, %eax
	movb	%al, (%ebx)
	movl	56(%edi), %eax
	movl	40(%edi), %ebx
	subl	$1, %eax
	je	L1773
	movl	%eax, 56(%edi)
L1774:
	cmpl	$511, %ecx
	ja	L1775
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%ecx), %eax
L1776:
	addw	$1, 33746(%edi,%eax,2)
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%esi,%esi), %eax
	addw	$1, 33170(%edi,%eax,2)
L1947:
	movl	$0, 80(%edi)
L1948:
	movl	28(%edi), %eax
	movl	%eax, -88(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -92(%ebp)
L1777:
	movl	-88(%ebp), %eax
	movl	-104(%ebp), %ecx
	movl	$32768, %edx
	addl	%esi, %eax
	subl	%esi, %ecx
	movl	%eax, 28(%edi)
	movl	-92(%ebp), %eax
	movl	%ecx, 32(%edi)
	addl	%esi, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, 36(%edi)
	leal	103018(%edi), %eax
	cmpl	%ebx, %eax
	jb	L1790
	movl	60(%edi), %eax
	cmpl	$31744, %eax
	jbe	L1712
	subl	-180(%ebp), %ebx
	imull	$115, %ebx, %ebx
	shrl	$7, %ebx
	cmpl	%eax, %ebx
	jnb	L1790
	testb	$8, 10(%edi)
	je	L1712
	.p2align 4
	.p2align 3
L1790:
	movl	-84(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, 132(%edi)
	movl	-96(%ebp), %eax
	movl	%eax, 136(%edi)
	movl	%edi, %eax
	call	_tdefl_flush_block.lto_priv.0
	testl	%eax, %eax
	jne	L1792
	movl	-96(%ebp), %eax
	movl	32(%edi), %ecx
	testl	%eax, %eax
	je	L1959
L1796:
	movl	36(%edi), %eax
	movl	%eax, -100(%ebp)
	addl	%ecx, %eax
	cmpl	$1, %eax
	ja	L1714
	movl	28(%edi), %eax
	movl	%ecx, %edx
	movl	%eax, -88(%ebp)
	leal	-2(%eax,%ecx), %ebx
	jmp	L1715
	.p2align 4,,10
	.p2align 3
L1724:
	addl	$1, -84(%ebp)
	movl	-84(%ebp), %eax
	subl	$1, -96(%ebp)
	movzbl	-1(%eax), %ecx
	movl	-88(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, -104(%ebp)
	andl	$32767, %eax
	movb	%cl, 144(%edi,%eax)
	cmpl	$256, %eax
	ja	L1722
	movb	%cl, 32912(%edi,%eax)
L1722:
	movl	-100(%ebp), %eax
	addl	$1, %edx
	leal	1(%ebx), %ecx
	movl	%edx, 32(%edi)
	addl	%edx, %eax
	movl	%ecx, -92(%ebp)
	cmpl	$2, %eax
	jbe	L1723
	movl	%ecx, %eax
	movl	%ebx, %esi
	andl	$32767, %eax
	andl	$32767, %esi
	movzbl	144(%edi,%eax), %eax
	sall	$5, %eax
	movl	%eax, %ecx
	movzbl	144(%edi,%esi), %eax
	sall	$10, %eax
	xorl	%ecx, %eax
	movzbl	-104(%ebp), %ecx
	xorl	%ecx, %eax
	andl	$32767, %eax
	addl	$84280, %eax
	movzwl	2(%edi,%eax,2), %ecx
	movw	%cx, 103026(%edi,%esi,2)
	movw	%bx, 2(%edi,%eax,2)
L1723:
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %ebx
	testl	%eax, %eax
	je	L1932
L1715:
	cmpl	$257, %edx
	jbe	L1724
L1932:
	movl	%edx, -104(%ebp)
	jmp	L1716
L1819:
	movl	-176(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1725:
	movl	-88(%ebp), %eax
	movl	8(%edi), %ecx
	andl	$32767, %eax
	movl	%eax, -112(%ebp)
	testl	$589824, %ecx
	je	L1730
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	L1731
	testl	$524288, %ecx
	je	L1960
L1744:
	cmpl	$3, -116(%ebp)
	jne	L1961
	.p2align 4
	.p2align 3
L1734:
	movl	-116(%ebp), %ebx
	movl	40(%edi), %edx
	movl	76(%edi), %eax
	addl	%ebx, 60(%edi)
	leal	-3(%ebx), %ecx
	movb	%cl, (%edx)
	movl	40(%edi), %edx
	subl	$1, %eax
	movl	%eax, %ecx
	movb	%al, 1(%edx)
	movl	40(%edi), %edx
	shrl	$8, %ecx
	movb	%cl, 2(%edx)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %edx
	shrb	%dl
	orl	$-128, %edx
	movb	%dl, (%ebx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1778
	movl	%edx, 56(%edi)
L1779:
	cmpl	$511, %eax
	ja	L1780
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%eax), %eax
L1781:
	addw	$1, 33746(%edi,%eax,2)
	movl	-116(%ebp), %eax
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%eax,%eax), %eax
	addw	$1, 33170(%edi,%eax,2)
	movl	80(%edi), %eax
	leal	-1(%eax), %esi
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L1726:
	cmpl	$2, -104(%ebp)
	jbe	L1742
	movl	12(%edi), %eax
	subl	$1, %eax
	movl	%eax, -124(%ebp)
	je	L1931
	movl	$2, %esi
L1826:
	movl	-112(%ebp), %eax
	movl	-144(%ebp), %ebx
	movl	$0, -128(%ebp)
	movl	%ecx, -164(%ebp)
	addl	%eax, %ebx
	addl	%esi, %eax
	movzbl	143(%edi,%eax), %edx
	movl	%ebx, -160(%ebp)
	movzbl	144(%edi,%eax), %ebx
	movl	-112(%ebp), %eax
	movb	%dl, -120(%ebp)
	movzwl	-88(%ebp), %edx
	movb	%bl, -100(%ebp)
	movw	%dx, -108(%ebp)
	jmp	L1745
	.p2align 4,,10
	.p2align 3
L1748:
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1940
	movzwl	-108(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1940
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	je	L1962
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1940
L1964:
	movzwl	-108(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1940
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	je	L1963
L1751:
	subl	$1, -124(%ebp)
	je	L1940
L1745:
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	je	L1940
	movzwl	-88(%ebp), %edx
	subl	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%edx, -92(%ebp)
	jb	L1940
	andl	$32767, %eax
	movzbl	-100(%ebp), %ebx
	leal	(%esi,%eax), %ecx
	cmpb	%bl, 144(%edi,%ecx)
	jne	L1748
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	jne	L1748
L1749:
	testl	%edx, %edx
	je	L1940
	movl	-144(%ebp), %ecx
	movl	%eax, -148(%ebp)
	movl	%esi, -156(%ebp)
	movl	-104(%ebp), %esi
	leal	(%ecx,%eax), %ebx
	movl	-160(%ebp), %eax
	movl	%edx, -152(%ebp)
	xorl	%ecx, %ecx
	movl	%ebx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1753:
	movzbl	(%edx,%ecx), %ebx
	cmpb	%bl, (%eax,%ecx)
	jne	L1752
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	L1753
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %edx
	movl	-156(%ebp), %esi
	cmpl	-104(%ebp), %esi
	jnb	L1751
L1755:
	movl	-164(%ebp), %ecx
	movl	-104(%ebp), %esi
	movl	%edx, -128(%ebp)
	jmp	L1746
	.p2align 4,,10
	.p2align 3
L1962:
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	je	L1749
	movzwl	103026(%edi,%eax,2), %eax
	testw	%ax, %ax
	jne	L1964
	.p2align 4
	.p2align 3
L1940:
	movl	-164(%ebp), %ecx
L1746:
	cmpl	$3, %esi
	je	L1965
L1758:
	movl	-112(%ebp), %ebx
	cmpl	%ebx, -128(%ebp)
	jne	L1767
L1762:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1734
	movl	-128(%ebp), %eax
	movl	%eax, -112(%ebp)
	.p2align 4
	.p2align 3
L1742:
	movl	-112(%ebp), %eax
	movl	40(%edi), %edx
	movzbl	144(%edi,%eax), %eax
	leal	1(%edx), %ecx
	addl	$1, 60(%edi)
	movl	%ecx, 40(%edi)
	movb	%al, (%edx)
	movl	44(%edi), %edx
	shrb	(%edx)
	movl	56(%edi), %edx
	movl	40(%edi), %ebx
	subl	$1, %edx
	je	L1782
	movl	%edx, 56(%edi)
L1783:
	addw	$1, 33170(%edi,%eax,2)
L1949:
	movl	28(%edi), %eax
	movl	-172(%ebp), %esi
	movl	%eax, -88(%ebp)
	movl	32(%edi), %eax
	movl	%eax, -104(%ebp)
	movl	36(%edi), %eax
	movl	%eax, -92(%ebp)
	jmp	L1777
	.p2align 4,,10
	.p2align 3
L1963:
	movzbl	-120(%ebp), %ebx
	cmpb	%bl, 143(%edi,%ecx)
	jne	L1751
	jmp	L1749
	.p2align 4,,10
	.p2align 3
L1730:
	movl	-116(%ebp), %esi
	cmpl	-104(%ebp), %esi
	jnb	L1731
	xorl	%eax, %eax
	cmpl	$31, %esi
	seta	%al
	movl	12(%edi,%eax,4), %eax
	subl	$1, %eax
	movl	%eax, -124(%ebp)
	jne	L1826
	jmp	L1744
	.p2align 4,,10
	.p2align 3
L1965:
	cmpl	$8191, -128(%ebp)
	jbe	L1761
L1739:
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	je	L1742
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1731:
	cmpl	$3, -116(%ebp)
	je	L1734
	movl	-112(%ebp), %eax
	testl	%eax, %eax
	je	L1734
	andl	$131072, %ecx
	je	L1832
	cmpl	$5, -116(%ebp)
	jbe	L1734
L1832:
	movl	$0, -128(%ebp)
	movl	-116(%ebp), %esi
	jmp	L1764
	.p2align 4,,10
	.p2align 3
L1955:
	movl	28(%edi), %eax
	movl	%ecx, -104(%ebp)
	movl	%eax, -88(%ebp)
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1956:
	movl	%esi, 32(%edi)
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1958:
	movl	-128(%ebp), %eax
	testl	%eax, %eax
	je	L1742
	cmpl	$127, %esi
	seta	%dl
L1765:
	movl	%ecx, %eax
	movl	40(%edi), %ebx
	andl	$65536, %eax
	orl	20(%edi), %eax
	jne	L1833
	testb	%dl, %dl
	je	L1784
L1833:
	leal	-3(%esi), %eax
	movl	-128(%ebp), %edx
	addl	%esi, 60(%edi)
	movb	%al, (%ebx)
	movl	40(%edi), %eax
	subl	$1, %edx
	movb	%dl, 1(%eax)
	movl	%edx, %ecx
	movl	40(%edi), %eax
	shrl	$8, %ecx
	movb	%cl, 2(%eax)
	movl	44(%edi), %ebx
	addl	$3, 40(%edi)
	movzbl	(%ebx), %eax
	shrb	%al
	orl	$-128, %eax
	movb	%al, (%ebx)
	movl	56(%edi), %eax
	movl	40(%edi), %ebx
	subl	$1, %eax
	je	L1786
	movl	%eax, 56(%edi)
L1787:
	cmpl	$511, %edx
	ja	L1788
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%edx), %eax
L1789:
	addw	$1, 33746(%edi,%eax,2)
	movzwl	_s_tdefl_len_sym.lto_priv.0-6(%esi,%esi), %eax
	addw	$1, 33170(%edi,%eax,2)
	jmp	L1948
	.p2align 4,,10
	.p2align 3
L1752:
	movl	-156(%ebp), %esi
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %edx
	cmpl	%ecx, %esi
	jnb	L1751
	cmpl	-104(%ebp), %ecx
	je	L1755
	movl	-112(%ebp), %esi
	movl	%edx, -128(%ebp)
	addl	%ecx, %esi
	movzbl	144(%edi,%esi), %ebx
	movb	%bl, -100(%ebp)
	movzbl	143(%edi,%esi), %ebx
	movl	%ecx, %esi
	movb	%bl, -120(%ebp)
	jmp	L1751
	.p2align 4,,10
	.p2align 3
L1782:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1783
	.p2align 4,,10
	.p2align 3
L1772:
	movl	-112(%ebp), %eax
	movzbl	144(%edi,%eax), %eax
	movl	%esi, 80(%edi)
	movl	%eax, 84(%edi)
	movl	-128(%ebp), %eax
	movl	%eax, 76(%edi)
	jmp	L1949
	.p2align 4,,10
	.p2align 3
L1770:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L1780:
	andl	$127, %ecx
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%ecx), %eax
	jmp	L1781
	.p2align 4,,10
	.p2align 3
L1778:
	leal	1(%ebx), %edx
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%edx, %ebx
	movl	%edx, 40(%edi)
	jmp	L1779
	.p2align 4,,10
	.p2align 3
L1788:
	andl	$127, %ecx
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%ecx), %eax
	jmp	L1789
	.p2align 4,,10
	.p2align 3
L1786:
	leal	1(%ebx), %eax
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%eax, %ebx
	movl	%eax, 40(%edi)
	jmp	L1787
	.p2align 4,,10
	.p2align 3
L1775:
	movl	%edx, %eax
	andl	$127, %eax
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%eax), %eax
	jmp	L1776
	.p2align 4,,10
	.p2align 3
L1773:
	leal	1(%ebx), %eax
	movl	%ebx, 44(%edi)
	movl	$8, 56(%edi)
	movl	%eax, %ebx
	movl	%eax, 40(%edi)
	jmp	L1774
L1954:
	movl	$0, 136(%edi)
	movl	-84(%ebp), %eax
	movl	%eax, 132(%edi)
	testb	$48, 9(%edi)
	je	L1800
	movl	-136(%ebp), %esi
	testl	%esi, %esi
	je	L1800
L1798:
	movl	24(%edi), %eax
	movl	-136(%ebp), %ebx
	movzwl	%ax, %esi
	shrl	$16, %eax
	movl	%eax, -104(%ebp)
	movl	-84(%ebp), %eax
	subl	%ebx, %eax
	je	L1803
	movl	$1584310703, %edx
	movl	%eax, -148(%ebp)
	movl	-148(%ebp), %ecx
	mull	%edx
	shrl	$11, %edx
	imull	$5552, %edx, %eax
	subl	%eax, %ecx
	movl	%ecx, -112(%ebp)
	cmpl	$7, %ecx
	ja	L1830
	testl	%ecx, %ecx
	je	L1966
	.p2align 4
	.p2align 3
L1805:
	movl	-112(%ebp), %ecx
	movl	-104(%ebp), %edx
	movl	%ebx, -84(%ebp)
	movl	%ebx, %eax
	subl	-184(%ebp), %ecx
	addl	%ebx, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1808:
	movzbl	(%eax), %ebx
	addl	$1, %eax
	addl	%ebx, %esi
	addl	%esi, %edx
	cmpl	%ecx, %eax
	jne	L1808
	movl	-112(%ebp), %ebx
	movl	-84(%ebp), %eax
	movl	%edx, -104(%ebp)
	subl	-184(%ebp), %eax
	addl	%eax, %ebx
L1807:
	movl	$-2146992015, %ecx
	movl	%esi, %eax
	mull	%ecx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, %esi
	movl	-104(%ebp), %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$15, %ecx
	imull	$65521, %ecx, %eax
	movl	-112(%ebp), %ecx
	subl	%eax, -104(%ebp)
	subl	%ecx, -148(%ebp)
	movl	$5552, -112(%ebp)
	je	L1803
L1804:
	movl	-112(%ebp), %eax
	movl	%ebx, -120(%ebp)
	movl	%esi, -84(%ebp)
	leal	-8(%eax), %ecx
	shrl	$3, %eax
	movl	%edi, -128(%ebp)
	leal	-1(%eax), %edx
	leal	(%ebx,%eax,8), %eax
	movl	%ecx, -124(%ebp)
	movl	%eax, -108(%ebp)
	movl	%edx, -116(%ebp)
	movl	%ebx, %edx
	.p2align 4
	.p2align 3
L1806:
	movzbl	(%edx), %eax
	addl	-84(%ebp), %eax
	addl	$8, %edx
	movl	%eax, %esi
	movzbl	-7(%edx), %eax
	movzbl	-5(%edx), %edi
	movl	%esi, -88(%ebp)
	leal	(%eax,%esi), %ecx
	movzbl	-6(%edx), %eax
	movzbl	-4(%edx), %esi
	movl	%ecx, -92(%ebp)
	leal	(%eax,%ecx), %ebx
	movzbl	-2(%edx), %ecx
	movzbl	-1(%edx), %eax
	addl	%ebx, %edi
	movl	%ebx, -96(%ebp)
	movzbl	-3(%edx), %ebx
	addl	%edi, %esi
	addl	%esi, %ebx
	addl	%ebx, %ecx
	addl	%ecx, %eax
	movl	%ecx, -100(%ebp)
	movl	%eax, -84(%ebp)
	movl	-88(%ebp), %eax
	addl	-92(%ebp), %eax
	addl	-96(%ebp), %eax
	addl	%edi, %eax
	movl	-84(%ebp), %edi
	addl	%esi, %eax
	addl	%ebx, %eax
	addl	-100(%ebp), %eax
	addl	%edi, %eax
	addl	%eax, -104(%ebp)
	cmpl	%edx, -108(%ebp)
	jne	L1806
	movl	-124(%ebp), %ecx
	movl	-116(%ebp), %eax
	movl	%edi, %esi
	movl	-120(%ebp), %ebx
	movl	-128(%ebp), %edi
	andl	$-8, %ecx
	leal	8(%ebx,%eax,8), %ebx
	leal	8(%ecx), %eax
	movl	%eax, -184(%ebp)
	cmpl	-112(%ebp), %eax
	jb	L1805
	jmp	L1807
L1957:
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	je	L1742
L1733:
	movl	-112(%ebp), %ebx
	xorl	%esi, %esi
	leal	-1(%ebx), %eax
	andl	$32767, %eax
	movzbl	144(%edi,%eax), %edx
	leal	(%edi,%ebx), %eax
	movl	-104(%ebp), %ebx
	jmp	L1737
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1967:
	addl	$1, %esi
	cmpl	%ebx, %esi
	je	L1736
L1737:
	cmpb	144(%eax,%esi), %dl
	je	L1967
L1736:
	cmpl	$2, %esi
	jbe	L1739
	cmpl	$3, %esi
	je	L1757
	movl	-172(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	L1758
L1960:
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	jne	L1733
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1784:
	movl	-112(%ebp), %eax
	movzbl	144(%edi,%eax), %eax
	movl	%esi, 80(%edi)
	movl	-172(%ebp), %esi
	movl	%eax, 84(%edi)
	movl	-128(%ebp), %eax
	movl	%eax, 76(%edi)
	jmp	L1777
L1961:
	movl	-112(%ebp), %edx
	testl	%edx, %edx
	je	L1734
	movl	$0, -128(%ebp)
	movl	-116(%ebp), %esi
	jmp	L1767
L1792:
	jns	L1968
L1950:
	movl	-80(%ebp), %edx
	movl	108(%edi), %eax
	addl	%edx, -136(%ebp)
	subl	%edx, -132(%ebp)
	movl	-76(%ebp), %edx
	addl	%edx, -168(%ebp)
	subl	%edx, -140(%ebp)
	addl	%edx, -196(%ebp)
	movl	24(%edi), %edx
	movl	%edx, -24(%ebp)
	testl	%eax, %eax
	jns	L1713
L1941:
	movl	-204(%ebp), %esi
L1710:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-200(%ebp), %eax
	subl	$4, %esp
	movl	%eax, -132(%ebp)
	jmp	L1817
L1811:
	movl	-204(%ebp), %esi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-196(%ebp), %eax
	subl	$4, %esp
	leal	4(%eax), %edi
	movl	%eax, -132(%ebp)
	movl	%edi, -176(%ebp)
	jmp	L1817
L1757:
	cmpl	$1, -112(%ebp)
	je	L1827
	testl	$131072, %ecx
	jne	L1739
	movl	-116(%ebp), %eax
	testl	%eax, %eax
	jne	L1828
	movl	-172(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, -128(%ebp)
	jmp	L1765
L1708:
	movl	$-2, 108(%edi)
	movl	-204(%ebp), %esi
	jmp	L1710
L1803:
	movl	-104(%ebp), %eax
	sall	$16, %eax
	addl	%esi, %eax
	movl	%eax, 24(%edi)
L1802:
	movl	32(%edi), %ebx
	testl	%ebx, %ebx
	jne	L1809
	cmpl	$0, 136(%edi)
	jne	L1809
L1800:
	movl	92(%edi), %ecx
	testl	%ecx, %ecx
	jne	L1809
	movl	$4, %edx
	movl	%edi, %eax
	call	_tdefl_flush_block.lto_priv.0
	testl	%eax, %eax
	js	L1950
	movl	$1, 96(%edi)
	jmp	L1809
L1761:
	movl	-112(%ebp), %ebx
	cmpl	%ebx, -128(%ebp)
	je	L1762
	testl	$131072, %ecx
	jne	L1739
	jmp	L1766
	.p2align 4,,10
	.p2align 3
L1953:
	movl	$319296, %eax
	call	__Z13handle_memerri
L1827:
	movl	$1, -128(%ebp)
	jmp	L1762
L1828:
	movl	-172(%ebp), %eax
	movl	%eax, -128(%ebp)
	jmp	L1764
L1966:
	movl	%esi, %eax
	movl	$-2146992015, %ecx
	movl	$5552, -112(%ebp)
	mull	%ecx
	movl	%edx, %eax
	shrl	$15, %eax
	imull	$65521, %eax, %eax
	subl	%eax, %esi
	movl	-104(%ebp), %eax
	mull	%ecx
	shrl	$15, %edx
	imull	$65521, %edx, %eax
	subl	%eax, -104(%ebp)
	jmp	L1804
L1968:
	testb	$48, 9(%edi)
	je	L1802
	cmpl	$0, -136(%ebp)
	je	L1802
	movl	132(%edi), %eax
	movl	%eax, -84(%ebp)
	jmp	L1798
L1830:
	movl	-136(%ebp), %ebx
	jmp	L1804
	.cfi_endproc
LFE190:
	.globl	_png
	.bss
	.align 4
_png:
	.space 19
	.globl	_palookupfog
	.align 32
_palookupfog:
	.space 1024
	.data
	.align 32
__ZZ22paletteMakeLookupTableE5idmap:
	.ascii "\1\0"
	.space 254
.lcomm __ZZ16videoFadePaletteE14lastpalettesum,8,8
.lcomm __ZZ15videoSetPaletteE14lastpalettesum,8,8
	.globl	_gammabrightness
	.bss
	.align 4
_gammabrightness:
	.space 4
	.globl	_curbasepal
_curbasepal:
	.space 1
	.globl	__ZZ12handle_blendE15blendFuncTokens.lto_priv.0
	.section .rdata,"dr"
	.align 32
__ZZ12handle_blendE15blendFuncTokens.lto_priv.0:
	.long	0
	.long	1
	.long	768
	.long	769
	.long	770
	.long	771
	.long	772
	.long	773
	.long	774
	.long	775
	.align 4
__ZZ12OSD_DispatchPKcbE11s_gamefunc_:
	.ascii "gamefunc_\0"
.lcomm __ZZL20OSD_FilterConsoleMsgPPcE8errorCnt,4,4
	.globl	__ZL10osdkeytime.lto_priv.0
	.bss
	.align 4
__ZL10osdkeytime.lto_priv.0:
	.space 4
	.globl	__ZL10osdscrtime.lto_priv.0
	.align 4
__ZL10osdscrtime.lto_priv.0:
	.space 4
.lcomm __ZZ14OSD_HandleCharcE9lastmatch,4,4
	.section .rdata,"dr"
LC116:
	.ascii "osdclipboard\0"
	.align 4
LC117:
	.ascii "paste text into console from system clipboard with RMB\0"
LC118:
	.ascii "osdeditpal\0"
LC119:
	.ascii "console input text palette\0"
LC120:
	.ascii "osdeditshade\0"
LC121:
	.ascii "console input text shade\0"
LC122:
	.ascii "osdtextpal\0"
	.align 4
LC123:
	.ascii "unformatted console text palette\0"
LC124:
	.ascii "osdtextshade\0"
	.align 4
LC125:
	.ascii "unformatted console text shade\0"
LC126:
	.ascii "osdpromptpal\0"
LC127:
	.ascii "console prompt palette\0"
LC128:
	.ascii "osdpromptshade\0"
LC129:
	.ascii "console prompt shade\0"
	.align 4
LC130:
	.ascii "lines of text to display in console\0"
	.align 4
LC131:
	.ascii "console character mode: 0: sprites  1: simple glyphs\0"
LC132:
	.ascii "osdlogcutoff\0"
	.align 4
LC133:
	.ascii "maximum number of error messages to log to the console\0"
	.align 4
LC134:
	.ascii "number of lines of command history to cycle through with the up and down cursor keys\0"
	.data
	.align 32
__ZZ8OSD_InitvE9cvars_osd:
	.long	LC116
	.long	LC117
	.space 4
	.long	8
	.long	0
	.long	1
	.long	LC118
	.long	LC119
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC120
	.long	LC121
	.space 4
	.long	2
	.long	0
	.long	7
	.long	LC122
	.long	LC123
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC124
	.long	LC125
	.space 4
	.long	2
	.long	0
	.long	7
	.long	LC126
	.long	LC127
	.space 4
	.long	2
	.long	0
	.long	255
	.long	LC128
	.long	LC129
	.space 4
	.long	2
	.long	-128
	.long	127
	.long	LC34
	.long	LC130
	.long	__ZL7osdrows
	.long	514
	.long	0
	.long	540
	.long	LC35
	.long	LC131
	.space 4
	.long	520
	.long	0
	.long	1
	.long	LC132
	.long	LC133
	.space 4
	.long	2
	.long	-1
	.long	4096
	.long	LC36
	.long	LC134
	.space 4
	.long	514
	.long	32
	.long	256
.lcomm __ZGVZ8OSD_InitvE9cvars_osd,8,8
	.align 4
__ZL5h_osd:
	.long	256
	.space 8
	.long	0
.lcomm __ZL17default_callbacks,32,32
	.globl	__ZL10osdrowscur.lto_priv.0
	.align 4
__ZL10osdrowscur.lto_priv.0:
	.long	-1
	.align 4
__ZL10osdmaxrows:
	.long	540
.lcomm __ZL7osdrows,4,4
	.align 4
__ZL13whiteColorIdx:
	.long	-1
.lcomm __ZL17fullpakbufsignals,64,32
.lcomm __ZL10snatchport,4,4
.lcomm __ZL8snatchip,4,4
.lcomm __ZL4opak,32768,32
	.align 4
__ZL7pakmemi:
	.long	1
.lcomm __ZL12lastsendtims,64,32
.lcomm __ZL4ipak,32768,32
.lcomm __ZL5ocnt1,64,32
.lcomm __ZL5ocnt0,64,32
.lcomm __ZL5icnt0,64,32
.lcomm __ZL6pakbuf,2048,32
.lcomm __ZL9otherport,64,32
.lcomm __ZL7otherip,64,32
.lcomm __ZZ13engineLoadMHKE14ignoreThisShit,8,8
.lcomm __ZGVZ13engineLoadMHKE14ignoreThisShit,8,8
	.section .rdata,"dr"
LC135:
	.ascii "angleoff\0"
LC136:
	.ascii "angoff\0"
LC137:
	.ascii "notmd2\0"
LC138:
	.ascii "notmd3\0"
LC139:
	.ascii "notmd\0"
LC140:
	.ascii "nomd2anim\0"
LC141:
	.ascii "nomd3anim\0"
LC142:
	.ascii "nomdanim\0"
LC143:
	.ascii "pitch\0"
LC144:
	.ascii "roll\0"
LC145:
	.ascii "mdxoff\0"
LC146:
	.ascii "mdyoff\0"
LC147:
	.ascii "mdzoff\0"
LC148:
	.ascii "mdpivxoff\0"
LC149:
	.ascii "mdpivyoff\0"
LC150:
	.ascii "mdpivzoff\0"
LC151:
	.ascii "mdpivotxoff\0"
LC152:
	.ascii "mdpivotyoff\0"
LC153:
	.ascii "mdpivotzoff\0"
LC154:
	.ascii "mdposxoff\0"
LC155:
	.ascii "mdposyoff\0"
LC156:
	.ascii "mdposzoff\0"
LC157:
	.ascii "mdpositionxoff\0"
LC158:
	.ascii "mdpositionyoff\0"
LC159:
	.ascii "mdpositionzoff\0"
LC160:
	.ascii "away1\0"
LC161:
	.ascii "away2\0"
LC162:
	.ascii "mhkreset\0"
LC163:
	.ascii "light\0"
	.align 32
__ZZ13engineLoadMHKE11legaltokens:
	.long	LC23
	.long	0
	.long	LC135
	.long	1
	.long	LC136
	.long	1
	.long	LC137
	.long	2
	.long	LC138
	.long	2
	.long	LC139
	.long	2
	.long	LC140
	.long	3
	.long	LC141
	.long	3
	.long	LC142
	.long	3
	.long	LC143
	.long	4
	.long	LC144
	.long	5
	.long	LC145
	.long	6
	.long	LC146
	.long	7
	.long	LC147
	.long	8
	.long	LC148
	.long	6
	.long	LC149
	.long	7
	.long	LC150
	.long	8
	.long	LC151
	.long	6
	.long	LC152
	.long	7
	.long	LC153
	.long	8
	.long	LC154
	.long	9
	.long	LC155
	.long	10
	.long	LC156
	.long	11
	.long	LC157
	.long	9
	.long	LC158
	.long	10
	.long	LC159
	.long	11
	.long	LC160
	.long	12
	.long	LC161
	.long	13
	.long	LC162
	.long	14
	.long	LC163
	.long	15
	.long	0
	.long	-1
.lcomm __ZZ13engineLoadMHKE2fn,256,32
	.align 4
LC38:
	.long	1602224128
	.align 4
LC39:
	.long	1148846080
	.align 4
LC40:
	.long	1315859240
	.align 16
LC41:
	.long	606295903
	.long	-2048139858
	.long	4919
	.long	1640536454
	.align 4
LC81:
	.long	__ZL23_internal_drawosdcursoriiii.lto_priv.0
	.align 4
LC82:
	.long	__ZL21_internal_drawosdchariicii.lto_priv.0
	.align 4
LC83:
	.long	__ZL17_internal_gettimev.lto_priv.0
	.align 4
LC84:
	.long	__ZL22_internal_getrowheighti.lto_priv.0
	.align 4
LC100:
	.long	1059760811
	.align 4
LC102:
	.long	1051372203
	.align 16
LC112:
	.long	8
	.long	0
	.long	0
	.long	0
	.align 16
LC113:
	.long	1
	.long	0
	.long	0
	.long	0
	.align 4
LC115:
	.long	_miniz_def_alloc_func
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_SDL_AtomicLock;	.scl	2;	.type	32;	.endef
	.def	_SDL_AtomicUnlock;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_strtol;	.scl	2;	.type	32;	.endef
	.def	_strncasecmp;	.scl	2;	.type	32;	.endef
	.def	_hash_findcase.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	__Z17osdcmd_restartvidPK13osdfuncparm_t.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_strtoul;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__Z19gltexinvalidatetypei;	.scl	2;	.type	32;	.endef
	.def	_clearskins;	.scl	2;	.type	32;	.endef
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_engineClearLightsFromMHK;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getsymbol;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_polymer_culllight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_processspotlight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_initcrc16;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_mi_strdup;	.scl	2;	.type	32;	.endef
	.def	_atol;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z18_mi_malloc_genericP9mi_heap_sjbj;	.scl	2;	.type	32;	.endef
	.def	__Z15mi_heap_try_newP9mi_heap_sjb;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	_mi_register_output.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	_initprintf;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_paletteInitClosestColorMap;	.scl	2;	.type	32;	.endef
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
	.def	_videoSetGamma;	.scl	2;	.type	32;	.endef
	.def	_XXH3_hashLong_64b_default.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoUpdatePalette.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.10;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_miniz_def_free_func;	.scl	2;	.type	32;	.endef
	.def	_tdefl_flush_output_buffer.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tdefl_flush_block.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17_internal_gettimev.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_miniz_def_alloc_func;	.scl	2;	.type	32;	.endef
