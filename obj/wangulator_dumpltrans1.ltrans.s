	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z14SetGamePalettei
	.def	__Z14SetGamePalettei;	.scl	2;	.type	32;	.endef
__Z14SetGamePalettei:
LFB0:
	.cfi_startproc
	ret
	.cfi_endproc
LFE0:
	.globl	__ZL19_internal_onshowosdi.lto_priv.0
	.def	__ZL19_internal_onshowosdi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.set	__ZL19_internal_onshowosdi.lto_priv.0,__Z14SetGamePalettei
	.p2align 4
	.def	__ZL20walls_are_consistentii;	.scl	3;	.type	32;	.endef
__ZL20walls_are_consistentii:
LFB2:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sall	$5, %eax
	sall	$5, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_wall, %ebx
	addl	%ebx, %eax
	addl	%ebx, %edx
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ebx, %ecx
	movl	(%ecx), %esi
	cmpl	%esi, (%edx)
	je	L4
L6:
	xorl	%eax, %eax
L3:
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
L4:
	.cfi_restore_state
	movl	4(%ecx), %esi
	cmpl	%esi, 4(%edx)
	jne	L6
	movswl	8(%edx), %edx
	sall	$5, %edx
	addl	%ebx, %edx
	movl	(%edx), %esi
	cmpl	%esi, (%eax)
	jne	L6
	movl	4(%edx), %esi
	cmpl	%esi, 4(%eax)
	sete	%al
	movzbl	%al, %eax
	jmp	L3
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL15X_DoSortDefaultPKvS0_;	.scl	3;	.type	32;	.endef
__ZL15X_DoSortDefaultPKvS0_:
LFB4:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%esp), %edx
	movl	(%eax), %eax
	subl	(%edx), %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL15message_common1PKc;	.scl	3;	.type	32;	.endef
__ZL15message_common1PKc:
LFB5:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	call	_strlen
	movl	$161, %edx
	movl	$_getmessage, %ecx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%ebx, %edx
	cmpl	$16, %eax
	jnb	L22
L10:
	andl	$15, %eax
	je	L14
	xorl	%esi, %esi
L13:
	movzbl	(%edx,%esi), %ebx
	movb	%bl, (%ecx,%esi)
	addl	$1, %esi
	cmpl	%eax, %esi
	jb	L13
L14:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movb	$0, _getmessage+161
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L22:
	.cfi_restore_state
	movl	%eax, %ecx
	movl	%edi, 16(%esp)
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	andl	$-16, %ecx
	movl	%ebp, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%ecx, %ebp
L11:
	movl	4(%ebx,%edx), %eax
	movl	8(%ebx,%edx), %esi
	movl	12(%ebx,%edx), %ecx
	movl	(%ebx,%edx), %edi
	addl	$16, %edx
	movl	%eax, _getmessage-12(%edx)
	movl	%edi, _getmessage-16(%edx)
	movl	%esi, _getmessage-8(%edx)
	movl	%ecx, _getmessage-4(%edx)
	cmpl	%ebp, %edx
	jb	L11
	leal	_getmessage(%edx), %ecx
	movl	4(%esp), %eax
	movl	16(%esp), %edi
	.cfi_restore 7
	addl	%ebx, %edx
	movl	20(%esp), %ebp
	.cfi_restore 5
	jmp	L10
	.cfi_endproc
LFE5:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "^11 -> auto-correction: set wall[%d].nextsector=%d\12\0"
	.text
	.p2align 4
	.def	__ZL24do_nextsector_correctionii;	.scl	3;	.type	32;	.endef
__ZL24do_nextsector_correctionii:
LFB6:
	.cfi_startproc
	testl	%eax, %eax
	js	L31
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	_numwalls, %ecx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -12
	movl	%ecx, %esi
	cmpl	%eax, %ecx
	jle	L23
	movl	%ebx, 16(%esp)
	movl	%eax, %ecx
	.cfi_offset 3, -16
	movl	_wall, %ebx
	sall	$5, %ecx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -8
	movswl	10(%ebx,%ecx), %ecx
	movl	%ebx, %edi
	cmpl	%edx, %ecx
	je	L36
L35:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %edi
	.cfi_restore 7
L23:
	movl	20(%esp), %esi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L31:
	ret
	.p2align 4,,10
	.p2align 3
L36:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%eax, 12(%esp)
	movl	%edx, %ebx
	call	__ZL20walls_are_consistentii
	testl	%eax, %eax
	je	L35
	cmpl	%esi, 12(%esp)
	jnb	L26
	movswl	12(%esp), %eax
	call	__ZL21sectorofwall_internals.lto_priv.0
	movl	%eax, %ecx
L25:
	movl	%ebx, %edx
	movl	%ebx, %esi
	andl	$134217727, %edx
	sall	$5, %esi
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 12(%edi,%esi)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$LC0, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	24(%esp), %edi
	.cfi_restore 7
	jmp	L23
L26:
	.cfi_restore_state
	movl	$-1, %ecx
	movl	$-1, %eax
	jmp	L25
	.cfi_endproc
LFE6:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "   suggest setting wall[%d].nextsector to %d\12\0"
	.align 4
LC2:
	.ascii " ? suggest setting wall[%d].nextwall to %d\12\0"
	.align 4
LC3:
	.ascii " ?? suggest making wall %d white\12\0"
	.text
	.p2align 4
	.def	__ZL29suggest_nextsector_correctionii;	.scl	3;	.type	32;	.endef
__ZL29suggest_nextsector_correctionii:
LFB8:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_wall, %ebx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%esi, 24(%esp)
	testl	%eax, %eax
	.cfi_offset 6, -16
	js	L39
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movswl	_numwalls, %ebp
	movl	%eax, %esi
	cmpl	%eax, %ebp
	jg	L55
L54:
	movl	32(%esp), %ebp
	.cfi_restore 5
L39:
	movl	%edi, %esi
	sall	$5, %esi
	addl	%ebx, %esi
	movswl	12(%esi), %eax
	testw	%ax, %ax
	js	L42
	cmpw	%ax, _numsectors
	jle	L42
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %eax
	addl	%edx, %eax
	cmpl	%eax, %edx
	jge	L42
	movl	%edx, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	(%esi), %ebp
	sall	$5, %ecx
	movl	%edi, 16(%esp)
	movl	%eax, %edi
	movl	%esi, 12(%esp)
	addl	%ebx, %ecx
	jmp	L45
	.p2align 5
	.p2align 4,,10
	.p2align 3
L43:
	addl	$1, %edx
	addl	$32, %ecx
	cmpl	%edx, %edi
	je	L56
L45:
	movswl	8(%ecx), %eax
	sall	$5, %eax
	addl	%ebx, %eax
	cmpl	(%eax), %ebp
	jne	L43
	movl	12(%esp), %esi
	movl	4(%eax), %eax
	cmpl	%eax, 4(%esi)
	jne	L43
	movl	12(%esp), %eax
	movswl	8(%eax), %eax
	sall	$5, %eax
	addl	%ebx, %eax
	movl	(%eax), %esi
	cmpl	%esi, (%ecx)
	jne	L43
	movl	4(%eax), %eax
	cmpl	%eax, 4(%ecx)
	jne	L43
	movl	16(%esp), %edi
	movl	%edx, 8(%esp)
	movl	$LC2, (%esp)
	movl	%edi, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	movl	32(%esp), %ebp
	.cfi_restore 5
L42:
	movl	%edi, 4(%esp)
	movl	$LC3, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L55:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	sall	$5, %eax
	movswl	10(%ebx,%eax), %eax
	cmpl	%edx, %eax
	jne	L54
	movl	%esi, %eax
	call	__ZL20walls_are_consistentii
	testl	%eax, %eax
	je	L54
	cmpl	%ebp, %esi
	jnb	L46
	movswl	%si, %eax
	call	__ZL21sectorofwall_internals.lto_priv.0
L41:
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$LC1, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_wall, %ebx
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L39
	.p2align 4,,10
	.p2align 3
L56:
	.cfi_restore_state
	movl	16(%esp), %edi
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L42
L46:
	.cfi_restore_state
	movl	$-1, %eax
	jmp	L41
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
	.align 4
LC4:
	.ascii "Line %d, %s: Invalid array %d!\0"
LC5:
	.ascii "source/duke3d/src/m32exec.cpp\0"
	.text
	.p2align 4
	.def	__ZL10CheckArrayi;	.scl	3;	.type	32;	.endef
__ZL10CheckArrayi:
LFB9:
	.cfi_startproc
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L63
	orl	$4, _vm+12
	movl	$4, %eax
	ret
	.p2align 4,,10
	.p2align 3
L63:
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	$LC4, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$306, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	orl	$4, _vm+12
	movl	$4, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_tabledivide64.lto_priv.0
	.def	_tabledivide64.lto_priv.0;	.scl	2;	.type	32;	.endef
_tabledivide64.lto_priv.0:
LFB11:
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
	subl	$124, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edi
	movl	%eax, 100(%esp)
	movl	_lastd_s64, %eax
	movl	%edx, 104(%esp)
	movl	_lastd_s64+4, %edx
	xorl	%edi, %eax
	movl	%ecx, 76(%esp)
	xorl	%ecx, %edx
	movl	%edi, 84(%esp)
	orl	%edx, %eax
	movl	%ecx, 80(%esp)
	je	L65
	movl	$16383, %eax
	cmpl	%edi, %eax
	movl	$0, %eax
	sbbl	%ecx, %eax
	jc	L106
L65:
	movl	$16383, %eax
	cmpl	%edi, %eax
	movl	$0, %eax
	sbbl	80(%esp), %eax
	movl	%edi, %eax
	jnc	L84
	xorl	%eax, %eax
L84:
	leal	(%eax,%eax,8), %eax
	movl	_divtable64(%eax), %ebx
	movzbl	_divtable64+8(%eax), %ecx
	movl	_divtable64+4(%eax), %eax
	movl	%ebx, %edx
	movb	%cl, 92(%esp)
	andl	$63, %ecx
	orl	%eax, %edx
	jne	L86
	movl	$-1, %eax
	xorl	%edi, %edi
	movl	$-1, %edx
	movl	100(%esp), %esi
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%edi, %eax
	movl	104(%esp), %edi
	movl	%edi, %ebx
	notl	%eax
	notl	%edx
	sarl	$31, %ebx
	movl	%ebx, %ecx
	andl	%ebx, %edx
	andl	%ecx, %eax
	movzbl	92(%esp), %ecx
	addl	%esi, %eax
	movl	%ecx, %ebx
	adcl	%edi, %edx
	sarb	$7, %bl
	shrdl	%cl, %edx, %eax
	movsbl	%bl, %ebx
	sarl	%cl, %edx
	movl	%ebx, %esi
	movl	%edx, %edi
	sarl	$31, %esi
	sarl	$31, %edi
	testb	$32, %cl
	cmovne	%edx, %eax
	cmovne	%edi, %edx
	xorl	%ebx, %eax
	xorl	%esi, %edx
	subl	%ebx, %eax
	sbbl	%esi, %edx
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
L106:
	.cfi_restore_state
	movl	%edi, %edx
	movl	%ecx, %eax
	movl	%edi, _lastd_s64
	negl	%edx
	movl	%ecx, _lastd_s64+4
	adcl	$0, %eax
	negl	%eax
	cmovs	%edi, %edx
	cmovs	%ecx, %eax
	movl	%edx, 92(%esp)
	movl	%eax, 96(%esp)
	movl	96(%esp), %edx
	testl	%edx, %edx
	je	L67
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 68(%esp)
L68:
	movl	92(%esp), %ecx
	movl	96(%esp), %ebx
	movl	$63, %eax
	subl	68(%esp), %eax
	movl	%eax, 56(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%eax, %ecx
	andl	%edx, %ebx
	movl	%ecx, %eax
	orl	%ebx, %eax
	jne	L69
	movl	76(%esp), %eax
	movl	%esi, %ecx
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
L70:
	movl	%eax, _divtable64
	movl	%edx, _divtable64+4
	movb	%cl, _divtable64+8
	jmp	L65
	.p2align 4,,10
	.p2align 3
L86:
	movl	104(%esp), %edx
	movl	%eax, 84(%esp)
	movl	%eax, %esi
	movl	100(%esp), %eax
	sarl	$31, %esi
	movl	%edx, %edi
	movl	%edx, %ecx
	movl	84(%esp), %edx
	movl	%esi, 68(%esp)
	sarl	$31, %edi
	movl	%edi, 76(%esp)
	movl	%eax, %edi
	movl	100(%esp), %eax
	movl	%edx, 80(%esp)
	imull	%esi, %edi
	mull	%edx
	movl	%eax, 84(%esp)
	movl	100(%esp), %eax
	movl	%edx, 88(%esp)
	movl	84(%esp), %esi
	mull	%ebx
	addl	%edi, 88(%esp)
	movl	88(%esp), %edi
	movl	%ebx, %eax
	addl	%edx, %esi
	movl	76(%esp), %edx
	adcl	$0, %edi
	movl	%esi, 84(%esp)
	xorl	%esi, %esi
	imull	%ebx, %edx
	movl	%edi, 88(%esp)
	movl	%edx, %ebx
	mull	%ecx
	addl	%ebx, %edx
	movl	84(%esp), %ebx
	addl	%ebx, %eax
	adcl	%esi, %edx
	movl	68(%esp), %esi
	movl	%edx, %edi
	movl	%edx, 60(%esp)
	movl	80(%esp), %edx
	sarl	$31, %edi
	imull	%ecx, %esi
	movl	%edi, 64(%esp)
	movl	76(%esp), %edi
	movl	%edx, %eax
	imull	%edx, %edi
	mull	%ecx
	addl	%edi, %esi
	movl	%edx, %ebx
	movl	88(%esp), %edx
	movl	%eax, %ecx
	addl	%esi, %ebx
	movl	%edx, %eax
	sarl	$31, %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movzbl	92(%esp), %ebx
	addl	60(%esp), %eax
	adcl	64(%esp), %edx
	testb	$64, %bl
	je	L88
	movl	%ebx, %ecx
	movl	100(%esp), %esi
	movl	104(%esp), %edi
	sarb	$7, %cl
	movsbl	%cl, %ecx
	movl	%ecx, %ebx
	xorl	%ecx, %esi
	sarl	$31, %ebx
	xorl	%ebx, %edi
	subl	%ecx, %esi
	sbbl	%ebx, %edi
	addl	%esi, %eax
	adcl	%edi, %edx
L88:
	movzbl	92(%esp), %ecx
	shrdl	%cl, %edx, %eax
	sarl	%cl, %edx
	movl	%edx, %ebx
	sarl	$31, %ebx
	testb	$32, %cl
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	xorl	%ebx, %ebx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edi, %eax
	adcl	%ebx, %edx
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
L67:
	.cfi_restore_state
	bsrl	92(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 68(%esp)
	jmp	L68
	.p2align 4,,10
	.p2align 3
L69:
	movl	$62, %ecx
	subl	68(%esp), %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	testb	$32, %cl
	movl	$1, %ebx
	sete	%al
	setne	%dl
	xorl	%esi, %esi
	sall	%cl, %eax
	sall	%cl, %edx
	movzbl	56(%esp), %ecx
	shldl	%cl, %ebx, %esi
	sall	%cl, %ebx
	testb	$32, %cl
	je	L113
	movl	%ebx, %esi
	xorl	%ebx, %ebx
L113:
	movl	%ebx, 36(%esp)
	movl	92(%esp), %ebx
	movl	%edx, %ecx
	movl	%esi, 40(%esp)
	movl	96(%esp), %esi
	cmpl	%ebx, %eax
	sbbl	%esi, %ecx
	jnc	L107
	movl	92(%esp), %ebx
	movzbl	68(%esp), %ecx
	movl	96(%esp), %esi
	shldl	%cl, %ebx, %esi
	sall	%cl, %ebx
	testb	$32, %cl
	je	L111
	movl	%ebx, %esi
	xorl	%ebx, %ebx
L111:
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	L112
	movl	%eax, %edx
	xorl	%eax, %eax
L112:
	movl	%esi, 88(%esp)
	movl	88(%esp), %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%eax, 60(%esp)
	leal	116(%esp), %eax
	movl	%ecx, 64(%esp)
	movl	%ebx, 84(%esp)
	movl	%esi, 20(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	%edx, (%esp)
	call	___udivmoddi4
	movl	84(%esp), %ecx
	movl	116(%esp), %ebx
	movl	%eax, 28(%esp)
	imull	%edx, %ecx
	movl	%edx, 32(%esp)
	movl	%ebx, %esi
	movl	%eax, 44(%esp)
	movl	%edx, 48(%esp)
	mull	84(%esp)
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %esi
	jnc	L74
	subl	%ecx, %eax
	movl	88(%esp), %esi
	sbbl	%ebx, %edx
	movl	84(%esp), %ebx
	cmpl	%eax, %ebx
	movl	%esi, %ebx
	movl	$1, %eax
	sbbl	%edx, %ebx
	movl	$0, %edx
	jc	L108
L75:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 44(%esp)
	movl	%esi, 48(%esp)
L74:
	movl	60(%esp), %ecx
	movl	44(%esp), %eax
	movl	$0, 12(%esp)
	movl	88(%esp), %esi
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	imull	%eax, %esi
	movl	%ecx, 60(%esp)
	movl	60(%esp), %ecx
	mull	84(%esp)
	movl	%ebx, 64(%esp)
	movl	64(%esp), %ebx
	addl	%esi, %edx
	subl	%eax, %ecx
	leal	108(%esp), %eax
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	sbbl	%edx, %ebx
	movl	%ecx, 28(%esp)
	movl	%ebx, 32(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	call	___udivmoddi4
	movl	84(%esp), %ecx
	movl	108(%esp), %ebx
	movl	%eax, 20(%esp)
	imull	%edx, %ecx
	movl	%edx, 24(%esp)
	movl	%ebx, %esi
	movl	%eax, 60(%esp)
	movl	%edx, 64(%esp)
	mull	84(%esp)
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %esi
	jnc	L76
	subl	%ecx, %eax
	movl	88(%esp), %esi
	sbbl	%ebx, %edx
	movl	84(%esp), %ebx
	cmpl	%eax, %ebx
	movl	%esi, %ebx
	movl	$1, %eax
	sbbl	%edx, %ebx
	movl	$0, %edx
	jc	L109
L77:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 60(%esp)
	movl	%esi, 64(%esp)
L76:
	xorl	%esi, %esi
	movl	60(%esp), %edx
	movl	84(%esp), %eax
	movl	60(%esp), %ebx
	movl	28(%esp), %ecx
	movl	%esi, 24(%esp)
	movl	88(%esp), %esi
	movl	%ebx, 20(%esp)
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	imull	%edx, %esi
	mull	%edx
	addl	%esi, %edx
	subl	%eax, %ecx
	movl	96(%esp), %esi
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movzbl	68(%esp), %ecx
	movl	%ebx, %edx
	shrdl	%cl, %ebx, %eax
	shrl	%cl, %edx
	xorl	%ebx, %ebx
	testb	$32, %cl
	movl	44(%esp), %ecx
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
	movl	%ecx, %ebx
	orl	24(%esp), %ebx
	movl	20(%esp), %ecx
	movl	%eax, 84(%esp)
	movl	%ebx, 72(%esp)
	movl	92(%esp), %ebx
	movl	%edx, 88(%esp)
	subl	%eax, %ebx
	movl	%ecx, 68(%esp)
	sbbl	%edx, %esi
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	movl	%esi, %edx
	movl	40(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jnc	L78
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	addl	$1, %eax
	adcl	$0, %edx
L72:
	movzbl	56(%esp), %ecx
	subl	$1, %ecx
L79:
	movl	76(%esp), %ebx
	testl	%ebx, %ebx
	jns	L70
	orl	$-128, %ecx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	jmp	L70
	.p2align 4,,10
	.p2align 3
L107:
	movl	%ebx, %eax
	movl	%esi, %edx
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	addl	$1, %eax
	adcl	$0, %edx
	cmpl	%ebx, %eax
	movl	%edx, %eax
	movl	$0, %edx
	sbbl	%esi, %eax
	movl	$0, %eax
	jc	L72
L73:
	movzbl	56(%esp), %ecx
	orl	$64, %ecx
	jmp	L79
	.p2align 4,,10
	.p2align 3
L78:
	movl	68(%esp), %ecx
	movl	72(%esp), %ebx
	movl	84(%esp), %eax
	movl	88(%esp), %edx
	addl	%ecx, %ecx
	adcl	%ebx, %ebx
	addl	%eax, %eax
	adcl	%edx, %edx
	cmpl	84(%esp), %eax
	movl	%edx, %esi
	sbbl	88(%esp), %esi
	jnc	L110
L80:
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$2, %eax
	adcl	$0, %edx
	jmp	L73
	.p2align 4,,10
	.p2align 3
L110:
	cmpl	92(%esp), %eax
	movl	%edx, %eax
	sbbl	96(%esp), %eax
	jnc	L80
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$1, %eax
	adcl	$0, %edx
	jmp	L73
	.p2align 4,,10
	.p2align 3
L109:
	movl	$2, %eax
	xorl	%edx, %edx
	jmp	L77
	.p2align 4,,10
	.p2align 3
L108:
	movl	$2, %eax
	xorl	%edx, %edx
	jmp	L75
	.cfi_endproc
LFE11:
	.globl	_tabledivide64.lto_priv.2
	.def	_tabledivide64.lto_priv.2;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.2,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.3
	.def	_tabledivide64.lto_priv.3;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.3,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.4
	.def	_tabledivide64.lto_priv.4;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.4,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.5
	.def	_tabledivide64.lto_priv.5;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.5,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.1
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.1,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.6
	.def	_tabledivide64.lto_priv.6;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.6,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.7
	.def	_tabledivide64.lto_priv.7;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.7,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.8
	.def	_tabledivide64.lto_priv.8;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.8,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.9
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.9,_tabledivide64.lto_priv.0
	.section .rdata,"dr"
	.align 4
LC6:
	.ascii "Line %d, %s: Invalid quote number %d!\0"
LC7:
	.ascii "Line %d, %s: Null quote %d!\0"
	.text
	.p2align 4
	.def	__ZL19GetMaybeInlineQuotei;	.scl	3;	.type	32;	.endef
__ZL19GetMaybeInlineQuotei:
LFB12:
	.cfi_startproc
	cmpl	$-1, %eax
	jne	L115
	movl	_insptr, %ecx
	leal	4(%ecx), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L116:
	movl	%eax, %edx
	addl	$4, %eax
	cmpl	$0, -8(%eax)
	jne	L116
	movl	%edx, _insptr
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L115:
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, %ecx
	call	@_Z9Gv_GetVari@4
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	%eax, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$16383, %ecx
	ja	L126
	cmpl	$-2, %eax
	jge	L127
L121:
	orl	$4, _vm+12
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L127:
	.cfi_restore_state
	movl	_g_tw, %eax
	movl	%ecx, 24(%esp)
	movl	$LC7, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$294, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	orl	$4, _vm+12
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L126:
	.cfi_restore_state
	cmpl	$-2, %eax
	jl	L121
	movl	_g_tw, %eax
	movl	%ecx, 24(%esp)
	movl	$LC6, 12(%esp)
	movl	_keyw(,%eax,4), %eax
	movl	$294, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$-2, (%esp)
	movl	%eax, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L121
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "(1)  Skill Level - 0=Easy 1=Normal 2=Hard 3=Crazy\0"
LC9:
	.ascii "(2)  Multi-Player Item Toggle\0"
LC10:
	.ascii "(3)  Find Sprite\0"
	.align 4
LC11:
	.ascii "(4)  Dbug Toggle (* Programming use only *) \0"
	.align 4
LC12:
	.ascii "Sprite (%d) Skill Level (0-3) : \0"
	.align 4
LC13:
	.ascii "Toggle Sprite Seach Criteria.  ESC quits.\0"
LC14:
	.ascii "(1) Use PicNum in search: \0"
LC15:
	.ascii "TRUE\0"
LC16:
	.ascii "FALSE\0"
LC17:
	.ascii "(2) Use HiTag in search: \0"
LC18:
	.ascii "(3) Use LowTag in search: \0"
LC19:
	.ascii " \0"
LC20:
	.ascii "     Skill = %d\0"
LC21:
	.ascii "     Multi Item = %d\0"
LC22:
	.ascii "     Debug = %d\0"
	.text
	.p2align 4
	.globl	_ExtEditSpriteData
	.def	_ExtEditSpriteData;	.scl	2;	.type	32;	.endef
_ExtEditSpriteData:
LFB14:
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
	subl	$48, %esp
	call	__Z14SetSpriteExtrav
	cmpl	$200, _qsetmode
	je	L128
	movswl	%bx, %esi
	imull	$44, %esi, %eax
	movl	%eax, 44(%esp)
	addl	_sprite, %eax
	movl	%eax, 40(%esp)
	call	_clearmidstatbar16
	movl	$0, 20(%esp)
	movl	$LC8, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$32, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC9, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$40, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC10, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$48, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC11, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$56, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L228
	movl	$1, %eax
	call	_videoShowFrame.part.0
	cmpb	$0, _keystatus+66
	je	L232
	.p2align 4
	.p2align 3
L132:
	call	_handleevents
L228:
	cmpb	$0, _keystatus+66
	jne	L132
L232:
	xorl	%eax, %eax
L133:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L133
	.p2align 4
	.p2align 3
L135:
	movl	$_keystatus, %eax
	jmp	L137
	.p2align 4
	.p2align 4,,10
	.p2align 3
L234:
	addl	$1, %eax
	cmpl	$_keystatus+256, %eax
	je	L233
L137:
	cmpb	$0, (%eax)
	je	L234
	cmpl	$_keystatus+2, %eax
	je	L201
	cmpl	$_keystatus+66, %eax
	je	L201
	cmpl	$_keystatus+3, %eax
	je	L202
	cmpl	$_keystatus+67, %eax
	je	L202
	cmpl	$_keystatus+68, %eax
	je	L203
	cmpl	$_keystatus+4, %eax
	je	L203
	cmpl	$_keystatus+5, %eax
	jne	L141
	movl	44(%esp), %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movb	$0, _keystatus+5
	addl	%eax, %ecx
	addl	$42, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	addw	$-32768, 42(%ecx)
	jmp	L141
	.p2align 4,,10
	.p2align 3
L233:
	call	_handleevents
	jmp	L135
L201:
	movb	$0, (%eax)
	movl	%esi, 8(%esp)
	movl	$LC12, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	40(%esp), %esi
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movzwl	42(%esi), %edx
	movl	$1, (%esp)
	andl	$7, %edx
	call	__getnumber16.constprop.0
	leal	42(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$3, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-8, 42(%esi)
	addl	$1, _spritechanged(,%edx,4)
	cmpw	%ax, %cx
	cmovg	%eax, %ecx
	orw	%cx, 42(%esi)
L141:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC19, (%esp)
	call	__printmessage16
	call	_clearmidstatbar16
	movl	$1920103747, __ZL7tempbuf.lto_priv.2
	movl	$544501349, __ZL7tempbuf.lto_priv.2+4
	movl	$1920234593, __ZL7tempbuf.lto_priv.2+8
	movl	$1953849961, __ZL7tempbuf.lto_priv.2+12
	movl	$1713402725, __ZL7tempbuf.lto_priv.2+16
	movl	$1931506287, __ZL7tempbuf.lto_priv.2+20
	movl	$1667591269, __ZL7tempbuf.lto_priv.2+24
	movl	$543450484, __ZL7tempbuf.lto_priv.2+28
	movl	$1769107571, __ZL7tempbuf.lto_priv.2+32
	movl	$3827060, __ZL7tempbuf.lto_priv.2+36
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$32, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	40(%esp), %edi
	movzwl	42(%edi), %eax
	movl	$LC20, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	andl	$7, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$48, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movzbl	43(%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	$LC21, 4(%esp)
	movb	%al, 44(%esp)
	shrb	%al
	andl	$1, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$56, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movswl	42(%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	$LC22, 4(%esp)
	shrl	$31, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$64, %eax
	movl	%eax, 4(%esp)
	call	_printext16
L128:
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
L202:
	.cfi_restore_state
	movb	$0, (%eax)
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movl	44(%esp), %eax
	addl	%eax, %ecx
	addl	$42, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	xorw	$512, 42(%ecx)
	jmp	L141
L203:
	movb	$0, (%eax)
L147:
L146:
	call	_clearmidstatbar16
	movl	$0, 20(%esp)
	movl	$LC13, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$32, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC14, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$48, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	_ydim16, %eax
	addl	$48, %eax
	cmpb	$0, _bFindPicNum
	movl	$0, 20(%esp)
	je	L148
	movl	$LC15, 16(%esp)
L229:
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$248, (%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC17, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$56, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	_ydim16, %eax
	addl	$56, %eax
	cmpb	$0, _bFindHiTag
	movl	$0, 20(%esp)
	je	L150
	movl	$LC15, 16(%esp)
L230:
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$248, (%esp)
	call	_printext16
	movl	$0, 20(%esp)
	movl	$LC18, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$64, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movl	_ydim16, %eax
	addl	$64, %eax
	cmpb	$0, _bFindLowTag
	movl	$0, 20(%esp)
	je	L152
	movl	$LC15, 16(%esp)
L231:
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$248, (%esp)
	call	_printext16
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L154
	movl	$1, %eax
	call	_videoShowFrame.part.0
L154:
	movzbl	_bFindPicNum, %eax
	orb	_bFindHiTag, %al
	orb	_bFindLowTag, %al
	je	L155
	movzbl	_keystatus+3, %eax
	orb	_keystatus+2, %al
	orb	_keystatus+4, %al
	orb	_keystatus+5, %al
	je	L157
	.p2align 4
	.p2align 3
L156:
	call	_handleevents
	movzbl	_keystatus+2, %eax
	orb	_keystatus+3, %al
	orb	_keystatus+4, %al
	orb	_keystatus+5, %al
	jne	L156
L157:
	xorl	%eax, %eax
L158:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L158
	.p2align 4
	.p2align 3
L160:
	movl	$_keystatus, %eax
	jmp	L162
	.p2align 4
	.p2align 4,,10
	.p2align 3
L236:
	addl	$1, %eax
	cmpl	$_keystatus+256, %eax
	je	L235
L162:
	cmpb	$0, (%eax)
	je	L236
	cmpl	$_keystatus+2, %eax
	je	L237
	cmpl	$_keystatus+3, %eax
	je	L238
	cmpl	$_keystatus+4, %eax
	je	L239
L165:
	movzbl	_keystatus+28, %eax
	orb	_keystatus+1, %al
	je	L146
	movb	$0, _keystatus+28
	movb	$0, _keystatus+1
	cmpl	$200, _qsetmode
	je	L141
	movl	_sprite, %edi
	movl	44(%esp), %eax
	movzwl	14(%edi,%eax), %eax
	movw	%ax, 38(%esp)
	testw	%ax, %ax
	je	L240
L167:
	movzwl	38(%esp), %eax
	leal	42(%edi), %ecx
	movw	%bx, _FindSpriteNum
	leal	720938(%edi), %esi
	movl	$-1171354717, %ebx
	movw	%ax, _FindPicNum
	.p2align 5
	.p2align 4
	.p2align 3
L168:
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-4097, (%ecx)
	addl	$44, %ecx
	cmpl	%esi, %ecx
	jne	L168
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L169
	movl	%eax, 28(%esp)
	movzbl	_bFindHiTag, %eax
	movzbl	_bFindLowTag, %esi
	movb	%al, 32(%esp)
	cmpb	$0, _bFindPicNum
	je	L241
	movl	%esi, %ebx
	xorl	%esi, %esi
L170:
	movswl	_headspritesect(%esi,%esi), %eax
	movb	%bl, 37(%esp)
	movl	%esi, 24(%esp)
	cmpw	$-1, %ax
	je	L242
L192:
	imull	$44, %eax, %ecx
	movzwl	38(%esp), %edx
	addl	%edi, %ecx
	cmpw	14(%ecx), %dx
	je	L243
	xorl	%edx, %edx
	cmpb	$0, 32(%esp)
	je	L244
L183:
	movl	44(%esp), %ebx
	movzwl	40(%ecx), %esi
	cmpw	%si, 40(%edi,%ebx)
	sete	36(%esp)
	andb	36(%esp), %dl
	cmpb	$0, 37(%esp)
	je	L188
L194:
	movl	44(%esp), %ebx
	movzwl	38(%ecx), %esi
	cmpw	%si, 38(%edi,%ebx)
	sete	36(%esp)
	andb	36(%esp), %dl
L188:
	testb	%dl, %dl
	jne	L174
L189:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	jne	L192
L242:
	movzbl	37(%esp), %ebx
	movl	24(%esp), %esi
L187:
	addl	$1, %esi
	cmpl	%esi, 28(%esp)
	jne	L170
L169:
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	$LC19, (%esp)
	call	__printmessage16
	call	_clearmidstatbar16
	jmp	L141
	.p2align 4,,10
	.p2align 3
L235:
	call	_handleevents
	jmp	L160
L152:
	movl	$LC16, 16(%esp)
	jmp	L231
L150:
	movl	$LC16, 16(%esp)
	jmp	L230
L148:
	movl	$LC16, 16(%esp)
	jmp	L229
L237:
	cmpb	$0, _bFindPicNum
	movb	$0, _keystatus+2
	sete	_bFindPicNum
	jmp	L165
L238:
	cmpb	$0, _bFindHiTag
	movb	$0, _keystatus+3
	sete	_bFindHiTag
	jmp	L165
L239:
	cmpb	$0, _bFindLowTag
	movb	$0, _keystatus+4
	sete	_bFindLowTag
	jmp	L165
L155:
	movb	$1, _bFindPicNum
	jmp	L146
L241:
	testb	%al, %al
	jne	L196
	movl	%esi, %eax
	xorl	%edx, %edx
	testb	%al, %al
	je	L175
L172:
	movswl	_headspritesect(%edx,%edx), %eax
	jmp	L177
L245:
	imull	$44, %eax, %ecx
	movl	44(%esp), %ebx
	movswl	_nextspritesect(%eax,%eax), %eax
	addl	%edi, %ecx
	movzwl	38(%ecx), %esi
	cmpw	%si, 38(%edi,%ebx)
	je	L174
L177:
	cmpw	$-1, %ax
	jne	L245
	addl	$1, %edx
	cmpl	%edx, 28(%esp)
	jne	L172
	jmp	L169
	.p2align 4,,10
	.p2align 3
L240:
	movl	$1684957510, __ZL7tempbuf.lto_priv.2
	movl	$65536, %ecx
	xorl	%edx, %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1919972128, __ZL7tempbuf.lto_priv.2+4
	movl	$543519849, __ZL7tempbuf.lto_priv.2+8
	movl	$1818850344, __ZL7tempbuf.lto_priv.2+12
	movl	$1970151525, __ZL7tempbuf.lto_priv.2+16
	movl	$1919246957, __ZL7tempbuf.lto_priv.2+20
	movl	$2112041, __ZL7tempbuf.lto_priv.2+24
	movl	$1, (%esp)
	call	__getnumber16.constprop.0
	movl	_sprite, %edi
	movw	%ax, 38(%esp)
	jmp	L167
L173:
	addl	$1, %edx
	cmpl	%edx, 28(%esp)
	je	L169
L175:
	movzwl	_headspritesect(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L173
	movswl	%ax, %ecx
	imull	$44, %ecx, %ecx
	addl	%edi, %ecx
L174:
	leal	42(%ecx), %eax
	movl	$-1171354717, %edx
	subl	%edi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzwl	24(%ecx), %eax
	movlps	(%ecx), %xmm0
	orw	$4096, 42(%ecx)
	movw	%ax, _cursectnum
	movl	8(%ecx), %eax
	subl	_kensplayerheight, %eax
	movlps	%xmm0, _pos
	movl	%eax, _pos+8
	jmp	L141
L243:
	movl	$1, %edx
	cmpb	$0, 32(%esp)
	jne	L183
	cmpb	$0, 37(%esp)
	je	L174
	movl	$1, %edx
	jmp	L194
L244:
	cmpb	$0, 37(%esp)
	jne	L189
	movzbl	37(%esp), %ebx
	movl	24(%esp), %esi
L184:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L187
	imull	$44, %eax, %ecx
	movzwl	38(%esp), %edx
	addl	%edi, %ecx
	cmpw	14(%ecx), %dx
	jne	L184
	jmp	L174
L196:
	movl	44(%esp), %eax
	xorl	%ebx, %ebx
	addl	%edi, %eax
	movl	%eax, 44(%esp)
L171:
	movl	%esi, %ecx
	movl	%ebx, 32(%esp)
	movswl	_headspritesect(%ebx,%ebx), %eax
	movb	%cl, 38(%esp)
L180:
	cmpw	$-1, %ax
	je	L178
	imull	$44, %eax, %ecx
	movl	44(%esp), %edx
	addl	%edi, %ecx
	movzwl	40(%ecx), %ebx
	cmpw	%bx, 40(%edx)
	sete	%dl
	cmpb	$0, 38(%esp)
	je	L181
	movl	44(%esp), %ebx
	movzwl	38(%ecx), %esi
	cmpw	%si, 38(%ebx)
	sete	37(%esp)
	andb	37(%esp), %dl
L181:
	movswl	_nextspritesect(%eax,%eax), %eax
	testb	%dl, %dl
	je	L180
	jmp	L174
L178:
	movl	32(%esp), %ebx
	movzbl	38(%esp), %esi
	addl	$1, %ebx
	cmpl	%ebx, 28(%esp)
	jne	L171
	jmp	L169
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z12ResetSpritesv
	.def	__Z12ResetSpritesv;	.scl	2;	.type	32;	.endef
__Z12ResetSpritesv:
LFB19:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	_sprite, %ebx
	movb	$0, _DebugActorFreeze
	leal	12(%ebx), %ecx
	leal	720908(%ebx), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L247:
	movl	%ecx, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, (%ecx)
	addl	$44, %ecx
	cmpl	%edi, %ecx
	jne	L247
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
LFE19:
	.section .rdata,"dr"
LC23:
	.ascii "Item Count\0"
LC24:
	.ascii "10%Health=\0"
LC25:
	.ascii "%s %d\0"
LC26:
	.ascii "\0"
LC27:
	.ascii "HealthBot=\0"
LC28:
	.ascii "Armor    =\0"
LC29:
	.ascii "Inventory\0"
LC30:
	.ascii "Med-Kit  =\0"
LC31:
	.ascii "Bio_Suit =\0"
LC32:
	.ascii "NightGogs=\0"
LC33:
	.ascii "SmokeBomb=\0"
LC34:
	.ascii "Tool_Box =\0"
LC35:
	.ascii "Heat_Card=\0"
LC36:
	.ascii "FlashBomb=\0"
LC37:
	.ascii "Caltrops =\0"
LC38:
	.ascii "Weapon Count\0"
LC39:
	.ascii "Shuriken =\0"
LC40:
	.ascii "Uzi      =\0"
LC41:
	.ascii "Riot_Gun =\0"
LC42:
	.ascii "Misl_Bat =\0"
LC43:
	.ascii "40mm     =\0"
LC44:
	.ascii "Mines    =\0"
LC45:
	.ascii "Rail_Gun =\0"
LC46:
	.ascii "Evil Head=\0"
LC47:
	.ascii "Heart    =\0"
LC48:
	.ascii "Ammo Count\0"
LC49:
	.ascii "Bullets  =\0"
LC50:
	.ascii "ShotShell=\0"
LC51:
	.ascii "Rockets  =\0"
LC52:
	.ascii "40mmShell=\0"
LC53:
	.ascii "Rail_Pack=\0"
LC54:
	.ascii "Next tag = %d\0"
	.text
	.p2align 4
	.globl	_ExtShowSectorData.part.0
	.def	_ExtShowSectorData.part.0;	.scl	2;	.type	32;	.endef
_ExtShowSectorData.part.0:
LFB20:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	call	_clearmidstatbar16
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_numsprite, (%esp)
	movb	$0, _keystatus+63
	call	_memset
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_multisprite, (%esp)
	call	_memset
	movl	_sprite, %ecx
	leal	14(%ecx), %eax
	addl	$720910, %ecx
	jmp	L255
	.p2align 4,,10
	.p2align 3
L261:
	cmpw	$1807, %dx
	je	L259
	addl	$1, _multisprite(,%edx,4)
	.p2align 4
	.p2align 4
	.p2align 3
L251:
	addl	$44, %eax
	cmpl	%ecx, %eax
	je	L260
L255:
	cmpw	$0, 12(%eax)
	jne	L251
	movswl	(%eax), %edx
	testb	$2, 29(%eax)
	jne	L261
	cmpw	$1807, %dx
	je	L262
	addl	$44, %eax
	addl	$1, _numsprite(,%edx,4)
	cmpl	%ecx, %eax
	jne	L255
L260:
	call	_clearmidstatbar16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC23, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_numsprite+7208, %eax
	movl	$LC24, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_multisprite+7208, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$112, (%esp)
	call	_printext16
	movl	_numsprite+7240, %eax
	movl	$LC27, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_multisprite+7240, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$112, (%esp)
	call	_printext16
	movl	_numsprite+12120, %eax
	movl	$LC28, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_multisprite+12120, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$112, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC29, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_numsprite+7212, %eax
	movl	$LC30, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7212, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7348, %eax
	movl	$LC31, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7348, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+12124, %eax
	movl	$LC32, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+12124, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7216, %eax
	movl	$LC33, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7216, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7252, %eax
	movl	$LC34, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7252, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7276, %eax
	movl	$LC35, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$88, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7276, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$88, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7220, %eax
	movl	$LC36, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$96, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7220, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$96, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_numsprite+7316, %eax
	movl	$LC37, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$104, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$136, (%esp)
	call	_printext16
	movl	_multisprite+7316, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$104, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$240, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC38, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_numsprite+7172, %eax
	movl	$LC39, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7172, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7188, %eax
	movl	$LC40, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7188, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7176, %eax
	movl	$LC41, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7176, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7272, %eax
	movl	$LC42, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7272, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7268, %eax
	movl	$LC43, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7268, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7368, %eax
	movl	$LC44, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$88, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7368, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$88, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7244, %eax
	movl	$LC45, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$96, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7244, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$96, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7256, %eax
	movl	$LC46, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$104, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7256, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$104, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_numsprite+7296, %eax
	movl	$LC47, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$112, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$264, (%esp)
	call	_printext16
	movl	_multisprite+7296, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$112, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$368, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC48, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_numsprite+7196, %eax
	movl	$LC49, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_multisprite+7196, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$496, (%esp)
	call	_printext16
	movl	_numsprite+7292, %eax
	movl	$LC50, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_multisprite+7292, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$496, (%esp)
	call	_printext16
	movl	_numsprite+7200, %eax
	movl	$LC51, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_multisprite+7200, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$64, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$496, (%esp)
	call	_printext16
	movl	_numsprite+7324, %eax
	movl	$LC52, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_multisprite+7324, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$72, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$496, (%esp)
	call	_printext16
	movl	_numsprite+7248, %eax
	movl	$LC53, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$392, (%esp)
	call	_printext16
	movl	_multisprite+7248, %eax
	movl	$LC26, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$80, %eax
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$496, (%esp)
	call	_printext16
	cmpl	$200, _qsetmode
	je	L250
	xorl	%eax, %eax
	movl	$LC19, (%esp)
	movw	%ax, _siNextEndTag
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	_totalclock, %eax
	movl	$LC54, (%esp)
	movl	%eax, _lastpm16time
	movswl	_siNextEndTag, %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
L250:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L259:
	.cfi_restore_state
	addl	$1, _multisprite+7188
	jmp	L251
	.p2align 4,,10
	.p2align 3
L262:
	addl	$1, _numsprite+7188
	jmp	L251
	.cfi_endproc
LFE20:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator7ReallocEPvjj.constprop.0:
LFB26:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	36(%esp), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	40(%esp), %esi
	cmpl	$16384, %ebx
	jbe	L281
	testl	%esi, %esi
	je	L282
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jb	L283
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L284
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
	jb	L272
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L272
	leal	(%ebx,%edx), %eax
	testb	$7, %al
	je	L268
L272:
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
	je	L280
	cmpl	%esi, %edi
	movl	%edi, %ecx
	cmova	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L273
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L274:
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
	ret	$8
	.p2align 4,,10
	.p2align 3
L283:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	addl	$1, %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
	sall	$4, %eax
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L285
L268:
	movl	%ebx, %edx
L280:
	movl	28(%esp), %edi
	.cfi_restore 7
L263:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	%edx, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L281:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	%edx, %eax
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret	$8
	.p2align 4,,10
	.p2align 3
L285:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
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
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret	$8
	.p2align 4,,10
	.p2align 3
L284:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
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
	cmpl	%esi, %eax
	cmova	%esi, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memmove
	movl	%ebx, %eax
	call	_mi_free
	movl	12(%esp), %edx
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret	$8
	.p2align 4,,10
	.p2align 3
L282:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L263
	.p2align 4,,10
	.p2align 3
L273:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L274
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
LC55:
	.ascii "%s\12\0"
	.text
	.p2align 4
	.globl	_message
	.def	_message;	.scl	2;	.type	32;	.endef
_message:
LFB46:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$276, %esp
	.cfi_def_cfa_offset 284
	leal	288(%esp), %eax
	leal	20(%esp), %ebx
	movl	$256, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	284(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	*__imp___vsnprintf
	movl	%ebx, %eax
	call	__ZL15message_common1PKc
	movl	%ebx, 4(%esp)
	movl	$LC55, (%esp)
	call	__Z10OSD_PrintfPKcz
	addl	$276, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	_silentmessage
	.def	_silentmessage;	.scl	2;	.type	32;	.endef
_silentmessage:
LFB47:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$276, %esp
	.cfi_def_cfa_offset 284
	leal	288(%esp), %eax
	leal	20(%esp), %ebx
	movl	$256, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%eax, 12(%esp)
	movl	284(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	call	*__imp___vsnprintf
	movl	%ebx, %eax
	call	__ZL15message_common1PKc
	addl	$276, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	_taglab_init
	.def	_taglab_init;	.scl	2;	.type	32;	.endef
_taglab_init:
LFB48:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$__ZL8g_taglab.lto_priv.0, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$48, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$0, __ZL8g_taglab.lto_priv.0+131088
	movl	$16384, __ZL8g_taglab.lto_priv.0
	call	_hash_init
	jmp	L303
	.p2align 4,,10
	.p2align 3
L315:
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, 20(%esp)
	leal	48(%ecx), %edx
	movl	%edx, 16(%esp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	(%eax,%edx,4), %edx
	movl	%ebx, %eax
	movl	%edx, 16(%esp)
	sall	$6, %eax
	addl	%eax, %edx
	movl	%eax, 12(%esp)
	movl	_tlsCacheBuckets@secrel32+52(%edx), %eax
	testl	%eax, %eax
	je	L293
	movl	_tlsCacheBuckets@secrel32(%edx), %ecx
	subl	%ecx, %esi
	movl	%ecx, 8(%esp)
	movzbl	_tlsCacheBuckets@secrel32+60(%edx), %ecx
	movl	%esi, 20(%esp)
	cmpb	$9, %cl
	jbe	L313
	movl	_tlsCacheBuckets@secrel32+56(%edx), %esi
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	movl	%esi, 16(%esp)
	movl	%ecx, 12(%esp)
	cmpl	%eax, %esi
	jnb	L295
	movl	20(%esp), %ebx
	leal	1(%esi), %eax
	movl	%ebx, (%ecx,%esi,4)
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edx)
	.p2align 6
	.p2align 4
	.p2align 3
L291:
	movl	$0, __ZL8g_taglab.lto_priv.0+16(,%edi,4)
	addl	$1, %edi
	cmpl	$32768, %edi
	je	L314
L303:
	movl	__ZL8g_taglab.lto_priv.0+16(,%edi,4), %esi
	cmpl	$16384, %esi
	jbe	L291
	movl	_g_sm_heap, %ecx
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %ebx
	cmpl	(%ecx), %eax
	jb	L315
	movl	%esi, %eax
	call	_mi_free
	jmp	L291
	.p2align 4,,10
	.p2align 3
L293:
	movl	20(%esp), %edx
	movl	$1, %ebx
	leal	48(%ecx,%edx), %eax
	movl	%eax, 16(%esp)
	lock xaddl	%ebx, 8(%eax)
	movl	%ebx, 20(%esp)
	movl	%esi, %ebx
	subl	60(%ecx,%edx), %ebx
	movl	%ebx, %ecx
	movlps	(%eax), %xmm0
	movlps	%xmm0, 24(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 40(%esp)
	movl	%edx, 44(%esp)
	movl	%edi, 12(%esp)
	movl	20(%esp), %ebx
L302:
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	16(%esp), %edi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	lock cmpxchg8b	(%edi)
	je	L311
	movl	%eax, 40(%esp)
	movl	%edx, 44(%esp)
	jmp	L302
	.p2align 4,,10
	.p2align 3
L313:
	movl	16(%esp), %eax
	movl	12(%esp), %ebx
	leal	_tlsCacheBuckets@secrel32(%eax,%ebx), %eax
	movl	%esi, 12(%eax,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%edx)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L295:
	movl	16(%esp), %esi
	movl	$1, %eax
	shrl	%esi
	je	L296
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	%esi, 4(%esp)
	subl	%esi, %eax
	movl	12(%esp), %esi
	addl	(%esi,%eax,4), %ecx
	leal	1(%eax), %esi
	movl	%ecx, 8(%esp)
	cmpl	16(%esp), %esi
	jnb	L305
	movl	12(%esp), %ecx
	movl	8(%esp), %esi
	movl	4(%ecx,%eax,4), %ecx
	movl	$16777215, (%esi)
	movl	%ecx, 4(%esi)
	addl	_tlsCacheBuckets@secrel32(%edx), %ecx
	movl	%ecx, %esi
	leal	2(%eax), %ecx
	movl	%ecx, 12(%esp)
	cmpl	_tlsCacheBuckets@secrel32+56(%edx), %ecx
	jnb	L297
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	movl	%ebx, 12(%esp)
	subl	16(%esp), %ecx
	movl	%edi, 16(%esp)
	leal	16777214(%ecx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L298:
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	leal	(%edi,%eax), %ebx
	movl	(%ecx,%eax,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %eax
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%edx), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%edx), %eax
	jb	L298
	movl	16(%esp), %edi
	movl	12(%esp), %ebx
L297:
	movl	%fs:44, %ecx
	movl	__tls_index, %edx
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%ecx,%edx,4), %eax
	movl	_tlsCacheBuckets@secrel32+8(%eax), %ecx
	movl	$1, %eax
	lock xaddl	%eax, 8(%ecx)
	movl	%eax, 16(%esp)
	movl	8(%esp), %eax
	subl	12(%ecx), %eax
	movl	%eax, 12(%esp)
	movlps	(%ecx), %xmm1
	movlps	%xmm1, 32(%esp)
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	%eax, 40(%esp)
	movl	%edx, 44(%esp)
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, %edi
L300:
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	16(%esp), %ebx
	movl	12(%esp), %ecx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	lock cmpxchg8b	(%edi)
	je	L306
	movl	%eax, 40(%esp)
	movl	%edx, 44(%esp)
	jmp	L300
	.p2align 4,,10
	.p2align 3
L306:
	movl	(%esp), %ebx
	movl	%fs:44, %esi
	movl	__tls_index, %ecx
	movl	8(%esp), %edi
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%esi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %eax
	subl	4(%esp), %eax
L296:
	sall	$6, %ebx
	movl	__tls_index, %esi
	movl	%ebx, %edx
	movl	%fs:44, %ebx
	addl	(%ebx,%esi,4), %edx
	movl	20(%esp), %ebx
	movl	_tlsCacheBuckets@secrel32+4(%edx), %ecx
	movl	%ebx, (%ecx,%eax,4)
	addl	$1, %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edx)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L311:
	movl	12(%esp), %edi
	jmp	L291
L314:
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
L305:
	.cfi_restore_state
	movl	8(%esp), %esi
	jmp	L297
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	_taglab_add
	.def	_taglab_add;	.scl	2;	.type	32;	.endef
_taglab_add:
LFB57:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%esi, 68(%esp)
	testw	%dx, %dx
	.cfi_offset 6, -16
	js	L338
	movl	%eax, (%esp)
	movl	%eax, %esi
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	leal	24(%esp), %ebx
	movl	%edi, 72(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebp, 76(%esp)
	.cfi_offset 5, -8
	call	_strlen
	movl	$39, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jb	L363
	movl	-16(%esi,%eax), %edx
	movl	%edx, 8(%esp,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, 12(%esp,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, 16(%esp,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 20(%esp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L319
	movw	%di, 12(%esp)
	andl	$-16, %eax
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
L323:
	movl	4(%esi,%eax), %ebp
	movl	8(%esi,%eax), %ecx
	movl	12(%esi,%eax), %edx
	movl	(%esi,%eax), %edi
	movl	%ebp, 4(%ebx,%eax)
	movl	%edi, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	%edx, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	8(%esp), %eax
	jb	L323
	movzwl	12(%esp), %edi
	.p2align 4
	.p2align 3
L319:
	movzbl	24(%esp), %eax
	movb	$0, 63(%esp)
	testb	%al, %al
	je	L325
	movl	__imp__toupper, %esi
	movl	%ebx, %ebp
	.p2align 4
	.p2align 3
L326:
	movl	%eax, (%esp)
	addl	$1, %ebp
	call	*%esi
	movb	%al, -1(%ebp)
	movzbl	0(%ebp), %eax
	testb	%al, %al
	jne	L326
L325:
	movswl	%di, %eax
	leal	4(%eax), %ebp
	movl	%eax, 8(%esp)
	movl	__ZL8g_taglab.lto_priv.0(,%ebp,4), %edi
	testl	%edi, %edi
	je	L327
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_strcasecmp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L362
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	$1, %esi
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 80
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	$0, __ZL8g_taglab.lto_priv.0(,%ebp,4)
L328:
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 80
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	L330
	cmpl	$16, %edx
	jnb	L331
	testb	$8, %dl
	jne	L364
	testb	$4, %dl
	jne	L365
	testl	%edx, %edx
	je	L332
	movzbl	24(%esp), %ecx
	movb	%cl, (%eax)
	testb	$2, %dl
	jne	L366
L332:
	movl	%eax, __ZL8g_taglab.lto_priv.0(,%ebp,4)
	movl	8(%esp), %ecx
	movl	%eax, %edx
	movl	$__ZL8g_taglab.lto_priv.0, %eax
	movl	$1, (%esp)
	call	_hash_add
	movl	%esi, %eax
	movl	64(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L363:
	.cfi_restore_state
	testb	$8, %al
	jne	L367
	testb	$4, %al
	jne	L368
	testl	%eax, %eax
	je	L319
	movzbl	(%esi), %edx
	movb	%dl, 24(%esp)
	testb	$2, %al
	je	L319
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, 22(%esp,%eax)
	jmp	L319
	.p2align 4,,10
	.p2align 3
L362:
	movl	64(%esp), %ebx
	.cfi_restore 3
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
L316:
	movl	%esi, %eax
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L331:
	.cfi_def_cfa_offset 84
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp,%edx), %ecx
	movl	%ecx, -16(%eax,%edx)
	movl	12(%esp,%edx), %ecx
	movl	%ecx, -12(%eax,%edx)
	movl	16(%esp,%edx), %ecx
	movl	%ecx, -8(%eax,%edx)
	movl	20(%esp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	cmpl	$16, %edi
	jb	L332
	movl	%esi, 16(%esp)
	andl	$-16, %edi
	xorl	%edx, %edx
	movl	%ebp, 20(%esp)
L336:
	movl	12(%ebx,%edx), %ecx
	movl	4(%ebx,%edx), %ebp
	movl	8(%ebx,%edx), %esi
	movl	%ecx, 12(%esp)
	movl	(%ebx,%edx), %ecx
	movl	%ebp, 4(%eax,%edx)
	movl	%ecx, (%eax,%edx)
	movl	%esi, 8(%eax,%edx)
	movl	12(%esp), %ecx
	movl	%ecx, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	%edi, %edx
	jb	L336
	movl	16(%esp), %esi
	movl	20(%esp), %ebp
	jmp	L332
	.p2align 4,,10
	.p2align 3
L327:
	movl	%ebx, %edx
	movl	$__ZL8g_taglab.lto_priv.0, %eax
	call	_hash_findcase
	cmpl	%eax, 8(%esp)
	je	L339
	testl	%eax, %eax
	jns	L369
	addl	$1, __ZL8g_taglab.lto_priv.0+131088
	xorl	%esi, %esi
	jmp	L328
L339:
	xorl	%esi, %esi
	movl	64(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	%esi, %eax
	movl	76(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L369:
	.cfi_restore_state
	leal	4(%eax), %esi
	movl	_g_sm_heap, %ecx
	movl	__ZL8g_taglab.lto_priv.0(,%esi,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 80
	subl	$4, %esp
	.cfi_def_cfa_offset 84
	movl	$0, __ZL8g_taglab.lto_priv.0(,%esi,4)
	movl	$2, %esi
	jmp	L328
L330:
	movl	%edx, %eax
	call	__Z13handle_memerri
L365:
	movl	24(%esp), %ecx
	movl	%ecx, (%eax)
	movl	20(%esp,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	jmp	L332
L366:
	movzwl	22(%esp,%edx), %ecx
	movw	%cx, -2(%eax,%edx)
	jmp	L332
L367:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	-8(%esi,%eax), %edx
	movl	-4(%esi,%eax), %ecx
	movl	%edx, 16(%esp,%eax)
	movl	%ecx, 20(%esp,%eax)
	jmp	L319
L368:
	movl	(%esi), %edx
	movl	%edx, 24(%esp)
	movl	-4(%esi,%eax), %edx
	movl	%edx, 20(%esp,%eax)
	jmp	L319
L364:
	movl	24(%esp), %ecx
	movl	28(%esp), %ebx
	movl	%ecx, (%eax)
	movl	%ebx, 4(%eax)
	movl	16(%esp,%edx), %ecx
	movl	20(%esp,%edx), %ebx
	movl	%ecx, -8(%eax,%edx)
	movl	%ebx, -4(%eax,%edx)
	jmp	L332
L338:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, %esi
	jmp	L316
	.cfi_endproc
LFE57:
	.section .rdata,"dr"
LC56:
	.ascii "ceiling\0"
LC57:
	.ascii "floor\0"
	.align 4
LC58:
	.ascii "#%d: ^10PANIC!!!^O SECTOR LIMIT EXCEEDED (MAXSECTORS=%d)!!!\12\0"
LC59:
	.ascii "-- corruption level: %d\12\0"
	.align 4
LC60:
	.ascii "#%d: ^10PANIC!!!^O WALL LIMIT EXCEEDED (MAXWALLS=%d)!!!\12\0"
	.align 4
LC61:
	.ascii "#%d: ^10PANIC!!!^O  Have sectors but no walls!\12\0"
	.align 4
LC62:
	.ascii "#%d: ^10PANIC!!!^O  Have walls but no sectors!\12\0"
	.align 4
LC63:
	.ascii "#%d: SECTOR[%d].WALLPTR=%d INVALID!!!\12\0"
	.align 4
LC64:
	.ascii "#%d: SECTOR[%d].WALLPTR=%d out of range (numwalls=%d)\12\0"
	.align 4
LC65:
	.ascii "#%d: SECTOR[%d].WALLPTR=%d inconsistent, expected %d\12\0"
	.align 4
LC66:
	.ascii "#%d: ^10PANIC!!!^O SECTOR[%d].WALLNUM=%d INVALID!!!\12\0"
	.align 4
LC67:
	.ascii "#%d: SECTOR[%d]: wallptr+wallnum=%d out of range: numwalls=%d\12\0"
	.align 4
LC68:
	.ascii "#%d: ^10PANIC!!!^O WALL[%d].POINT2=%d INVALID!!!\12\0"
	.align 4
LC69:
	.ascii "#%d: WALL[%d].POINT2=%d out of range [%d, %d]\12\0"
	.align 4
LC70:
	.ascii "#%d: WALL[%d].NEXTWALL=%d INVALID!!!\12\0"
	.align 4
LC71:
	.ascii "#%d: WALL[%d].NEXTWALL=%d out of range: numwalls=%d\12\0"
	.align 4
LC72:
	.ascii "    will make wall %d white on tryfix\12\0"
	.align 4
LC73:
	.ascii "#%d: WALL[%d].NEXTSECTOR=%d INVALID!!!\12\0"
	.align 4
LC74:
	.ascii "#%d: WALL[%d].NEXTSECTOR=%d out of range: numsectors=%d\12\0"
	.align 4
LC75:
	.ascii "#%d: WALL[%d].NEXTWALL is its own sector's wall\12\0"
	.align 4
LC76:
	.ascii "#%d: WALL %d's %s=%d out of range: numwalls=%d\12\0"
LC77:
	.ascii "#%d: WALL %d's %s is itself\12\0"
	.align 4
LC78:
	.ascii "#%d: WALL %d's and its %s=%d's endpoints are inconsistent\12\0"
	.align 4
LC79:
	.ascii "#%d: WALL %d has %s=%d, but its %s bunchnum=%d is invalid\12\0"
	.align 4
LC80:
	.ascii "    will clear wall %d's %s to -1 on tryfix\12\0"
	.align 4
LC81:
	.ascii "    will set wall %d's %s to %d on tryfix\12\0"
	.align 4
LC82:
	.ascii "    found more than one matching wall: at least %d and %d\12\0"
LC83:
	.ascii "    found no matching walls!\12\0"
	.align 4
LC84:
	.ascii "#%d: WALL %d's %s=%d's reverse link wrong (expected %d, have %d)\12\0"
	.align 4
LC85:
	.ascii "   will set wall %d's %s=%d's %s to %d on tryfix\12\0"
	.align 4
LC86:
	.ascii "#%d: WALL[%d].NEXTSECTOR is its own sector\12\0"
	.align 4
LC87:
	.ascii "   will clear wall %d's nextwall and nextsector on tryfix\12\0"
	.align 4
LC88:
	.ascii "#%d: WALL[%d].NEXTSECTOR=%d and .NEXTWALL=%d inconsistent: missing one next pointer\12\0"
	.align 4
LC89:
	.ascii "#%d: WALL[%d].NEXTWALL=%d out of .NEXTSECTOR=%d's bounds [%d .. %d]\12\0"
	.align 4
LC90:
	.ascii "#%d: SPRITE[%d].SECTNUM=%d. Expect problems!\12\0"
	.align 4
LC91:
	.ascii "#%d: SPRITE[%d].STATNUM=%d. Expect problems!\12\0"
	.align 4
LC92:
	.ascii "ournumsprites=%d, Numsprites=%d\0"
	.align 4
LC93:
	.ascii "source/duke3d/src/m32common.cpp\0"
	.align 4
LC94:
	.ascii "#%d: ^10PANIC!!!^O SPRITE LISTS CORRUPTED: error code %d, s=%d, i=%d!\12\0"
	.align 4
LC95:
	.ascii "!! too many errors, stopping. !!\12\0"
	.text
	.p2align 4
	.globl	_CheckMapCorruption.constprop.0
	.def	_CheckMapCorruption.constprop.0;	.scl	2;	.type	32;	.endef
_CheckMapCorruption.constprop.0:
LFB61:
	.cfi_startproc
	subl	$172, %esp
	.cfi_def_cfa_offset 176
	movzwl	_numsectors, %eax
	movl	$0, _numcorruptthings
	movl	%edi, 164(%esp)
	cmpw	$4096, %ax
	.cfi_offset 7, -12
	jle	L371
	movl	$4096, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC58, (%esp)
	movl	$1, _numcorruptthings
	movl	$0, _corruptthings
	call	__Z10OSD_PrintfPKcz
	cmpw	$16384, _numwalls
	jle	L372
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jle	L373
L650:
	movl	$5, 4(%esp)
	movl	$5, %edi
	movl	$LC59, (%esp)
	call	__Z10OSD_PrintfPKcz
L382:
	movl	%edi, _corruptlevel
	movl	%edi, %eax
	movl	164(%esp), %edi
	addl	$172, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L371:
	.cfi_restore_state
	xorl	%edi, %edi
	cmpw	$16384, _numwalls
	jle	L518
	movl	$1, %edx
	xorl	%eax, %eax
L519:
	movl	$0, _corruptthings(,%eax,4)
	movl	$16384, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC60, (%esp)
	movl	%edx, _numcorruptthings
	call	__Z10OSD_PrintfPKcz
	movzwl	_numsectors, %eax
	cmpw	$4096, %ax
	jg	L375
	movzwl	_numwalls, %edx
	cmpw	$16384, %dx
	jle	L520
L375:
	movl	$5, _corruptlevel
L377:
	movl	$5, %edi
L370:
	movl	%edi, %eax
	movl	164(%esp), %edi
	addl	$172, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L372:
	.cfi_restore_state
	movzwl	_numsectors, %eax
	movl	$5, %edi
	cmpw	$4096, %ax
	jg	L375
L518:
	movzwl	_numwalls, %edx
L376:
	testw	%ax, %ax
	je	L378
	testw	%dx, %dx
	jne	L379
	testw	%ax, %ax
	jle	L370
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L650
	leal	1(%eax), %edx
	movl	$5, %edi
	movl	$0, _corruptthings(,%eax,4)
	movl	%edx, 4(%esp)
	movl	$LC61, (%esp)
	movl	%edx, _numcorruptthings
	call	__Z10OSD_PrintfPKcz
L378:
	cmpw	$0, _numwalls
	jle	L370
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L650
	movl	$0, _corruptthings(,%eax,4)
	leal	1(%eax), %edx
	movl	%edx, 4(%esp)
	movl	$LC62, (%esp)
	movl	%edx, _numcorruptthings
	call	__Z10OSD_PrintfPKcz
	jmp	L377
	.p2align 4,,10
	.p2align 3
L373:
	leal	1(%eax), %edx
	jmp	L519
	.p2align 4,,10
	.p2align 3
L379:
	movl	_corruptcheck_noalreadyrefd, %ecx
	movl	%ebx, 156(%esp)
	movl	%esi, 160(%esp)
	movl	%ebp, 168(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$0, 112(%esp)
	movl	$0, 108(%esp)
	testl	%ecx, %ecx
	je	L653
L384:
	cmpw	$0, _numsectors
	jle	L522
	movl	$0, 88(%esp)
	movl	$0, 48(%esp)
	movl	$0, 116(%esp)
	movl	$0, 96(%esp)
	movl	$0, 44(%esp)
L463:
	movl	88(%esp), %eax
	addl	_sector, %eax
	movswl	(%eax), %esi
	movswl	2(%eax), %eax
	movw	%si, 82(%esp)
	movl	%esi, 56(%esp)
	movl	%eax, 76(%esp)
	testl	%esi, %esi
	js	L388
	cmpw	_numwalls, %si
	jle	L523
	cmpl	$16383, %esi
	jbe	L390
L388:
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L536
	movl	44(%esp), %edi
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%edi, %ecx
	orl	$131072, %ecx
	movl	%ecx, _corruptthings(,%eax,4)
	movl	56(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC63, (%esp)
	call	__Z10OSD_PrintfPKcz
L392:
	movl	$5, %ebp
L389:
	movl	56(%esp), %edi
	movl	96(%esp), %esi
	cmpl	%esi, %edi
	je	L393
	movl	$4, %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L631
	movl	44(%esp), %ebx
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%ebx, %ecx
	orl	$131072, %ecx
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC65, (%esp)
	call	__Z10OSD_PrintfPKcz
L393:
	movl	76(%esp), %edi
	cmpl	$1, %edi
	jle	L654
	cmpl	$2, 76(%esp)
	je	L655
L395:
	movl	56(%esp), %eax
	addl	76(%esp), %eax
	leal	-1(%eax), %esi
	movl	%eax, 84(%esp)
	movswl	_numwalls, %eax
	movl	%esi, 72(%esp)
	cmpl	%eax, %esi
	jl	L396
	movl	_numcorruptthings, %edx
	cmpl	$63, %edx
	jg	L536
	movl	44(%esp), %edi
	leal	1(%edx), %ecx
	movl	%ecx, _numcorruptthings
	movl	%edi, %ebx
	orl	$131072, %ebx
	movl	%ebx, _corruptthings(,%edx,4)
	movl	%eax, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC67, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_corruptcheck_heinum, %ebx
	testl	%ebx, %ebx
	jne	L528
	movl	48(%esp), %edi
	movl	$5, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, 48(%esp)
L398:
	movl	76(%esp), %edi
	addl	$1, 44(%esp)
	addl	%edi, 96(%esp)
	movswl	_numsectors, %eax
	movl	44(%esp), %edi
	addl	$40, 88(%esp)
	cmpl	%eax, %edi
	jl	L463
L387:
	movl	_sprite, %ebp
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	jmp	L473
	.p2align 4,,10
	.p2align 3
L657:
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%ebx, %edx
	orl	$524288, %edx
	movl	%edx, _corruptthings(,%eax,4)
L464:
	addl	$1, %ebx
	addl	$44, %esi
	cmpl	$16384, %ebx
	je	L656
L473:
	leal	0(%ebp,%esi), %ecx
	movzwl	26(%ecx), %eax
	cmpw	$1024, %ax
	je	L464
	movzwl	24(%ecx), %edx
	testw	%dx, %dx
	js	L465
	cmpw	_numsectors, %dx
	jl	L466
L465:
	movl	$4, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L391
	movl	%ebx, %ebp
	leal	1(%eax), %edx
	orl	$524288, %ebp
	movl	%edx, _numcorruptthings
	movl	%ebp, _corruptthings(,%eax,4)
	movswl	24(%ecx), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC90, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %ecx
	movzwl	26(%ecx), %eax
L466:
	cmpw	$1024, %ax
	jbe	L467
	movl	$4, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L391
	movl	%ebx, %ebp
	leal	1(%eax), %edx
	orl	$524288, %ebp
	movl	%edx, _numcorruptthings
	movl	%ebp, _corruptthings(,%eax,4)
	movswl	26(%ecx), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC91, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %ecx
L467:
	cmpw	$30719, 14(%ecx)
	jbe	L468
	leal	14(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ecx)
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L391
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%ebx, %edx
	orl	$524288, %edx
	movl	%edx, _corruptthings(,%eax,4)
L468:
	movl	_corruptcheck_game_duke3d, %eax
	testl	%eax, %eax
	je	L470
	movswl	14(%ecx), %eax
	subl	$1, %eax
	cmpl	$8, %eax
	ja	L470
	testb	$48, 12(%ecx)
	je	L470
	movl	_numcorruptthings, %eax
	testl	%edi, %edi
	movl	$1, %edx
	cmovle	%edx, %edi
	cmpl	$63, %eax
	jg	L391
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%ebx, %edx
	orl	$524288, %edx
	movl	%edx, _corruptthings(,%eax,4)
	.p2align 4
	.p2align 3
L470:
	movl	(%ecx), %eax
/APP
 # 1342 "source/duke3d/src/m32common.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$524288, %eax
	jg	L472
	movl	4(%ecx), %eax
/APP
 # 1342 "source/duke3d/src/m32common.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$524288, %eax
	jle	L464
L472:
	movl	$3, %edx
	movl	_numcorruptthings, %eax
	cmpl	%edx, %edi
	cmovl	%edx, %edi
	cmpl	$63, %eax
	jle	L657
	.p2align 4
	.p2align 3
L391:
	cmpl	$3, 48(%esp)
	jle	L510
L509:
	movl	48(%esp), %eax
	movl	$LC95, (%esp)
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	call	__Z10OSD_PrintfPKcz
L508:
	movl	%edi, 4(%esp)
	movl	$LC59, (%esp)
	call	__Z10OSD_PrintfPKcz
L512:
	movl	108(%esp), %eax
	testl	%eax, %eax
	je	L649
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 172
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 176
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 172
	subl	$4, %esp
	.cfi_def_cfa_offset 176
	movl	156(%esp), %ebx
	.cfi_restore 3
	movl	160(%esp), %esi
	.cfi_restore 6
	movl	168(%esp), %ebp
	.cfi_restore 5
	jmp	L382
	.p2align 4,,10
	.p2align 3
L396:
	.cfi_restore_state
	movl	_corruptcheck_heinum, %ebx
	testl	%ebx, %ebx
	jne	L397
L399:
	movl	48(%esp), %eax
	cmpl	%ebp, %eax
	cmovl	%ebp, %eax
	movl	%eax, 48(%esp)
	cmpl	$3, %ebp
	jg	L398
	movl	56(%esp), %eax
	cmpl	72(%esp), %eax
	jg	L398
	movl	%eax, %edi
	movswl	44(%esp), %eax
	movl	%eax, 104(%esp)
	.p2align 4
	.p2align 3
L462:
	movl	%edi, %eax
	sall	$5, %eax
	movl	%eax, 68(%esp)
	addl	_wall, %eax
	movzwl	10(%eax), %esi
	movzwl	8(%eax), %ecx
	movw	%si, 52(%esp)
	movzwl	12(%eax), %esi
	movw	%si, 66(%esp)
	cmpw	%cx, 82(%esp)
	jg	L544
	movswl	%cx, %edx
	cmpl	%edx, 72(%esp)
	jge	L532
L544:
	movl	_numcorruptthings, %edx
	cmpw	$16383, %cx
	jbe	L658
	cmpl	$63, %edx
	jg	L536
	movl	%edi, %ebx
	leal	1(%edx), %ecx
	movl	$5, %esi
	orl	$262144, %ebx
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%edx,4)
	movswl	8(%eax), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC68, (%esp)
	call	__Z10OSD_PrintfPKcz
L406:
	movswl	52(%esp), %ecx
	movswl	_numwalls, %eax
	movl	%ecx, 32(%esp)
	movl	%ecx, %ebx
	cmpw	%ax, %cx
	jl	L410
	movl	_numcorruptthings, %edx
	cmpl	$16383, %ecx
	jle	L411
	cmpl	$63, %edx
	jg	L536
	movl	%edi, %ecx
	leal	1(%edx), %eax
	movl	$5, %esi
	orl	$262144, %ecx
	movl	%eax, _numcorruptthings
	movl	%ecx, _corruptthings(,%edx,4)
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC70, (%esp)
	call	__Z10OSD_PrintfPKcz
L412:
	movl	%edi, 4(%esp)
	movl	$LC72, (%esp)
	call	__Z10OSD_PrintfPKcz
L410:
	movswl	66(%esp), %ecx
	movswl	_numsectors, %eax
	movl	%ecx, 60(%esp)
	movl	%ecx, %ebx
	cmpw	%ax, %cx
	jl	L413
	movl	_numcorruptthings, %edx
	cmpl	$4095, %ecx
	jle	L414
	cmpl	$63, %edx
	jg	L536
	movl	%edi, %ecx
	leal	1(%edx), %eax
	movl	$5, %esi
	orl	$262144, %ecx
	movl	%eax, _numcorruptthings
	movl	%ecx, _corruptthings(,%edx,4)
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC73, (%esp)
	call	__Z10OSD_PrintfPKcz
L415:
	movl	%edi, 4(%esp)
	movl	$LC72, (%esp)
	call	__Z10OSD_PrintfPKcz
L413:
	movl	32(%esp), %eax
	cmpl	%eax, 56(%esp)
	jg	L416
	cmpl	%eax, 72(%esp)
	jl	L416
	movl	$4, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L642
	movl	%edi, %ecx
	leal	1(%eax), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC75, (%esp)
	call	__Z10OSD_PrintfPKcz
L416:
	movl	_wall, %eax
	movl	68(%esp), %ebx
	leal	(%eax,%ebx), %edx
	movswl	8(%edx), %ecx
	sall	$5, %ecx
	addl	%ecx, %eax
	movl	(%eax), %ebx
	cmpl	%ebx, (%edx)
	je	L659
L418:
	xorl	%edx, %edx
	movswl	%di, %eax
	movw	%di, 80(%esp)
	call	_yax_getnextwall
	movl	%eax, %edx
	cwtl
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	js	L593
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movw	%ax, 36(%esp)
L444:
	movswl	_numwalls, %ecx
	movl	_numcorruptthings, %eax
	cmpw	%dx, %cx
	jg	L421
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	$63, %eax
	jg	L642
	movl	%edi, %ebx
	leal	1(%eax), %edx
	orl	$262144, %ebx
	movl	%edx, _numcorruptthings
	movl	%ebx, _corruptthings(,%eax,4)
	movl	28(%esp), %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_YUPDOWNWALL(,%ebp,4), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC76, (%esp)
	call	__Z10OSD_PrintfPKcz
L420:
	cmpl	$1, %ebp
	je	L443
L593:
	movswl	80(%esp), %eax
	movl	$1, %edx
	movl	$1, %ebx
	movl	$1, %ebp
	call	_yax_getnextwall
	movw	%bx, 36(%esp)
	movl	%eax, %edx
	cwtl
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jns	L444
L443:
	movl	44(%esp), %ebx
	cmpl	%ebx, 60(%esp)
	jne	L445
	testl	%esi, %esi
	je	L660
L445:
	movl	_corruptcheck_noalreadyrefd, %eax
	testl	%eax, %eax
	jne	L455
	movl	32(%esp), %eax
	testl	%eax, %eax
	jns	L661
L455:
	cmpl	$3, %esi
	jg	L451
	movzwl	66(%esp), %ebx
	xorw	52(%esp), %bx
	movl	_numcorruptthings, %eax
	js	L662
	movl	60(%esp), %ebx
	testl	%ebx, %ebx
	js	L451
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %edx
	leal	(%ecx,%edx,8), %edx
	movswl	(%edx), %ecx
	cmpw	%cx, 52(%esp)
	jl	L461
	movswl	2(%edx), %ebx
	addl	%ecx, %ebx
	cmpl	%ebx, 32(%esp)
	jl	L451
L461:
	cmpl	$63, %eax
	jg	L542
	movl	%edi, %ebx
	leal	1(%eax), %ecx
	movl	32(%esp), %esi
	orl	$262144, %ebx
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%eax,4)
	movswl	(%edx), %eax
	movswl	2(%edx), %edx
	movl	%esi, 12(%esp)
	movl	%eax, 20(%esp)
	leal	-1(%eax,%edx), %edx
	movl	60(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 16(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC89, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	%edi, %edx
	movl	%esi, %eax
	call	__ZL29suggest_nextsector_correctionii
L449:
	movl	$4, %esi
L451:
	movl	48(%esp), %eax
	cmpl	%esi, %eax
	cmovge	%eax, %esi
	addl	$1, %edi
	movl	%esi, 48(%esp)
	cmpl	%edi, 84(%esp)
	jne	L462
	jmp	L398
	.p2align 4,,10
	.p2align 3
L421:
	cmpl	28(%esp), %edi
	je	L663
	movl	28(%esp), %edx
	movl	_wall, %ebx
	movl	68(%esp), %ecx
	sall	$5, %edx
	movl	%ebx, 92(%esp)
	addl	%ebx, %ecx
	addl	%ebx, %edx
	movl	%ecx, 40(%esp)
	movl	(%edx), %ebx
	cmpl	%ebx, (%ecx)
	je	L664
L424:
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	$63, %eax
	jg	L642
	movl	%edi, %ecx
	leal	1(%eax), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	28(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	_YUPDOWNWALL(,%ebp,4), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$LC78, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	$0, 92(%esp)
L423:
	movswl	36(%esp), %edx
	movl	104(%esp), %eax
	call	_yax_getbunch
	movl	_numcorruptthings, %edx
	testw	%ax, %ax
	js	L425
	movswl	%ax, %ecx
	cmpl	_numyaxbunches, %ecx
	jge	L425
	movl	92(%esp), %eax
	testl	%eax, %eax
	jne	L441
	cmpl	$63, %edx
	jg	L428
	movl	$-1, 148(%esp)
	movl	%ebp, %eax
	movl	$-1, 152(%esp)
	xorl	$1, %eax
	movl	%eax, %edx
	sall	$8, %edx
	addl	%ecx, %edx
	movswl	_headsectbunch(%edx,%edx), %ebx
	movl	%ebx, 100(%esp)
	cmpl	$-1, %ebx
	je	L430
	movl	_sector, %ebx
	movl	68(%esp), %ecx
	sall	$12, %eax
	movl	%esi, 132(%esp)
	movl	%eax, 124(%esp)
	movl	%ebx, 120(%esp)
	movl	_wall, %ebx
	movl	%ebp, 128(%esp)
	movl	%edi, %ebp
	leal	(%ebx,%ecx), %edx
	xorl	%ecx, %ecx
	movl	%edx, %edi
L437:
	movl	100(%esp), %eax
	movl	120(%esp), %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %edx
	movswl	(%edx), %eax
	movswl	2(%edx), %esi
	addl	%eax, %esi
	cmpl	%esi, %eax
	jge	L431
	movl	%ebp, 36(%esp)
	movl	%esi, 40(%esp)
	jmp	L436
	.p2align 4
	.p2align 4,,10
	.p2align 3
L434:
	addl	$1, %eax
	cmpl	%eax, 40(%esp)
	je	L665
L436:
	cmpl	%eax, 36(%esp)
	je	L434
	movl	%eax, %edx
	sall	$5, %edx
	movl	(%ebx,%edx), %esi
	cmpl	%esi, (%edi)
	jne	L434
	movl	4(%ebx,%edx), %esi
	cmpl	%esi, 4(%edi)
	jne	L434
	movswl	8(%edi), %esi
	movswl	8(%ebx,%edx), %edx
	sall	$5, %esi
	sall	$5, %edx
	addl	%ebx, %edx
	addl	%ebx, %esi
	movl	(%edx), %ebp
	cmpl	%ebp, (%esi)
	jne	L434
	movl	4(%edx), %edx
	cmpl	%edx, 4(%esi)
	jne	L434
	movl	%eax, 148(%esp,%ecx,4)
	cmpl	$1, %ecx
	je	L640
	addl	$1, %ecx
	addl	$1, %eax
	cmpl	%eax, 40(%esp)
	jne	L436
L665:
	movl	36(%esp), %ebp
L431:
	movl	100(%esp), %eax
	addl	124(%esp), %eax
	movswl	_nextsectbunch(%eax,%eax), %eax
	movl	%eax, 100(%esp)
	cmpl	$-1, %eax
	jne	L437
L438:
	movl	%ebp, %edi
	movl	132(%esp), %esi
	movl	128(%esp), %ebp
	cmpl	$1, %ecx
	jne	L439
	movl	148(%esp), %eax
	movl	%edi, 4(%esp)
	movl	$LC81, (%esp)
	movl	%eax, 12(%esp)
	movl	_yupdownwall(,%ebp,4), %eax
	movl	%eax, 8(%esp)
	call	__Z10OSD_PrintfPKcz
	.p2align 4
	.p2align 3
L428:
	movl	92(%esp), %eax
	testl	%eax, %eax
	je	L420
L441:
	movl	%ebp, %eax
	movl	_numcorruptthings, %ebx
	xorl	$1, %eax
	movl	%eax, 36(%esp)
	movl	%eax, %edx
	movl	28(%esp), %eax
	call	_yax_getnextwall
	cwtl
	cmpl	%edi, %eax
	je	L420
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	$63, %ebx
	jg	L642
	movl	%edi, %ecx
	leal	1(%ebx), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%ebx,4)
	movl	28(%esp), %ebx
	movl	%eax, 24(%esp)
	movl	_YUPDOWNWALL(,%ebp,4), %eax
	movl	%edi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC84, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	36(%esp), %eax
	movl	%edi, 20(%esp)
	movl	%ebx, 12(%esp)
	movl	_yupdownwall(,%eax,4), %eax
	movl	%edi, 4(%esp)
	movl	$LC85, (%esp)
	movl	%eax, 16(%esp)
	movl	_yupdownwall(,%ebp,4), %eax
	movl	%eax, 8(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L420
	.p2align 4,,10
	.p2align 3
L425:
	movl	$4, %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	$63, %edx
	jg	L642
	movl	%edi, %ebx
	leal	1(%edx), %ecx
	cwtl
	orl	$262144, %ebx
	testl	%ebp, %ebp
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%edx,4)
	movl	$LC57, %ebx
	movl	$LC56, %edx
	movl	%eax, 24(%esp)
	movl	28(%esp), %eax
	cmovne	%ebx, %edx
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	_YUPDOWNWALL(,%ebp,4), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC79, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_yupdownwall(,%ebp,4), %eax
	movl	%edi, 4(%esp)
	movl	$LC80, (%esp)
	movl	%eax, 8(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L428
	.p2align 4,,10
	.p2align 3
L659:
	movl	4(%eax), %eax
	cmpl	%eax, 4(%edx)
	jne	L418
	movl	$3, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L642
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%edi, %edx
	orl	$262144, %edx
	movl	%edx, _corruptthings(,%eax,4)
	jmp	L418
	.p2align 4,,10
	.p2align 3
L532:
	xorl	%esi, %esi
	jmp	L406
	.p2align 4,,10
	.p2align 3
L411:
	movl	$4, %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	$63, %edx
	jg	L642
	movl	%edi, %ebx
	leal	1(%edx), %ecx
	orl	$262144, %ebx
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%edx,4)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC71, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L412
	.p2align 4,,10
	.p2align 3
L414:
	movl	$4, %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	$63, %edx
	jg	L642
	movl	%edi, %ebx
	leal	1(%edx), %ecx
	orl	$262144, %ebx
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%edx,4)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC74, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L415
	.p2align 4,,10
	.p2align 3
L661:
	movzwl	52(%esp), %eax
	cmpw	_numwalls, %ax
	jge	L455
L452:
	movl	32(%esp), %eax
	movl	52(%esp), %ecx
	sarl	$3, %eax
	addl	108(%esp), %eax
	andl	$7, %ecx
	movzbl	(%eax), %edx
	movl	%edx, %ebx
	notl	%ebx
	testb	%bl, __ZL8pow2char.lto_priv.0(%ecx)
	je	L666
	movl	$1, %ebx
	sall	%cl, %ebx
	movzwl	80(%esp), %ecx
	orl	%ebx, %edx
	movl	32(%esp), %ebx
	movb	%dl, (%eax)
	movl	112(%esp), %eax
	movw	%cx, (%eax,%ebx,2)
	jmp	L455
	.p2align 4,,10
	.p2align 3
L658:
	cmpl	$63, %edx
	jg	L542
	movl	72(%esp), %esi
	movl	%edi, %ebx
	leal	1(%edx), %ecx
	orl	$262144, %ebx
	movl	%ecx, _numcorruptthings
	movl	%ebx, _corruptthings(,%edx,4)
	movl	%esi, 20(%esp)
	movl	56(%esp), %esi
	movl	%esi, 16(%esp)
	movswl	8(%eax), %eax
	movl	$4, %esi
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$LC69, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L406
	.p2align 4,,10
	.p2align 3
L662:
	cmpl	$63, %eax
	jg	L542
	movl	%edi, %ecx
	leal	1(%eax), %edx
	movl	32(%esp), %esi
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	60(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC88, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	%edi, %edx
	movl	%esi, %eax
	call	__ZL29suggest_nextsector_correctionii
	jmp	L449
	.p2align 4,,10
	.p2align 3
L663:
	movl	$4, %edx
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	$63, %eax
	jg	L642
	movl	%edi, %ecx
	leal	1(%eax), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	_YUPDOWNWALL(,%ebp,4), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	$LC77, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	$0, 92(%esp)
	jmp	L423
	.p2align 4,,10
	.p2align 3
L654:
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L536
	movl	44(%esp), %esi
	leal	1(%eax), %edx
	movl	$5, %ebp
	movl	%edx, _numcorruptthings
	movl	%esi, %ecx
	orl	$131072, %ecx
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC66, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L395
	.p2align 4,,10
	.p2align 3
L660:
	movl	32(%esp), %esi
	movl	_numcorruptthings, %eax
	cmpl	%edi, %esi
	je	L446
	movl	%esi, %edx
	sall	$5, %edx
	addl	_wall, %edx
	cmpw	$-1, 10(%edx)
	je	L667
	cmpl	$63, %eax
	jg	L542
	movl	%edi, %ecx
	leal	1(%eax), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC86, (%esp)
	call	__Z10OSD_PrintfPKcz
L448:
	movl	32(%esp), %esi
	movl	%edi, %edx
	movl	%esi, %eax
	call	__ZL29suggest_nextsector_correctionii
	movl	_corruptcheck_noalreadyrefd, %eax
	testl	%eax, %eax
	jne	L449
	testl	%esi, %esi
	js	L449
L651:
	movzwl	52(%esp), %eax
	cmpw	_numwalls, %ax
	jge	L449
	movl	$4, %esi
	jmp	L452
	.p2align 4,,10
	.p2align 3
L664:
	movl	%ecx, %ebx
	movl	4(%edx), %ecx
	cmpl	%ecx, 4(%ebx)
	jne	L424
	movswl	8(%ebx), %ebx
	movswl	8(%edx), %edx
	movl	92(%esp), %ecx
	sall	$5, %edx
	sall	$5, %ebx
	addl	%ecx, %ebx
	addl	%edx, %ecx
	movl	(%ecx), %edx
	cmpl	%edx, (%ebx)
	jne	L424
	movl	4(%ecx), %ecx
	cmpl	%ecx, 4(%ebx)
	jne	L424
	movl	$1, 92(%esp)
	jmp	L423
	.p2align 4,,10
	.p2align 3
L523:
	xorl	%ebp, %ebp
	jmp	L389
	.p2align 4,,10
	.p2align 3
L528:
	movl	$5, %ebp
L397:
	movl	_sector, %eax
	movl	%eax, %edi
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	leal	(%edi,%eax), %esi
	addl	$12, %eax
	movl	$-858993459, %edi
	mull	%edi
	movl	88(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%eax), %edx
	movl	%edi, %eax
	movzbl	12(%esi), %ecx
	mull	%edx
	shrb	%cl
	andl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	cmpw	$0, 18(%esi)
	setne	%al
	cmpb	%cl, %al
	je	L400
	movl	116(%esp), %eax
	testl	%eax, %eax
	jne	L400
	cmpl	$2, %ebx
	je	L529
	movl	$2, 116(%esp)
L400:
	leal	14(%esi), %edx
	subl	28(%esp), %edx
	movl	$-858993459, %edi
	movl	%edx, %eax
	mull	%edi
	movl	%edi, %eax
	movl	%edx, %ecx
	leal	26(%esi), %edx
	subl	28(%esp), %edx
	mull	%edx
	shrl	$5, %ecx
	addl	$1, _sectorchanged(,%ecx,4)
	movzbl	14(%esi), %eax
	shrl	$5, %edx
	shrb	%al
	addl	$1, _sectorchanged(,%edx,4)
	andl	$1, %eax
	cmpw	$0, 26(%esi)
	setne	%dl
	cmpb	%al, %dl
	je	L399
	movl	116(%esp), %eax
	testl	%eax, %eax
	jne	L399
	movl	$2, 116(%esp)
	movl	$1, %eax
	cmpl	$2, %ebx
	jne	L399
L401:
	movl	_numcorruptthings, %edx
	testl	%ebp, %ebp
	movl	$1, %ecx
	cmovle	%ecx, %ebp
	cmpl	$63, %edx
	jg	L631
	leal	1(%edx), %ecx
	movl	$2, 116(%esp)
	movl	%ecx, _numcorruptthings
	movl	44(%esp), %ecx
	orl	$131072, %ecx
	movl	%ecx, _corruptthings(,%edx,4)
	cmpl	$1, %eax
	jne	L400
	jmp	L399
	.p2align 4,,10
	.p2align 3
L655:
	movl	$3, %eax
	cmpl	%eax, %ebp
	cmovl	%eax, %ebp
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L631
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	44(%esp), %edx
	orl	$131072, %edx
	movl	%edx, _corruptthings(,%eax,4)
	jmp	L395
	.p2align 4,,10
	.p2align 3
L390:
	movl	_numcorruptthings, %eax
	cmpl	$63, %eax
	jg	L536
	movl	44(%esp), %edi
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%edi, %ecx
	orl	$131072, %ecx
	movl	%ecx, _corruptthings(,%eax,4)
	movl	76(%esp), %eax
	movl	%edi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	56(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$LC64, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L392
	.p2align 4,,10
	.p2align 3
L520:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	movl	$5, %edi
	jmp	L376
L542:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$4, %edi
	jmp	L391
	.p2align 4,,10
	.p2align 3
L640:
	movl	36(%esp), %edi
	movl	128(%esp), %ebp
	movl	132(%esp), %esi
L435:
	movl	152(%esp), %eax
	movl	$LC82, (%esp)
	movl	%eax, 8(%esp)
	movl	148(%esp), %eax
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L428
	.p2align 4,,10
	.p2align 3
L642:
	movl	%esi, %edi
	jmp	L391
	.p2align 4,,10
	.p2align 3
L446:
	cmpl	$63, %eax
	jg	L542
	movl	32(%esp), %esi
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%esi, %ecx
	orl	$262144, %ecx
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC86, (%esp)
	call	__Z10OSD_PrintfPKcz
L516:
	movl	%edi, 4(%esp)
	movl	$LC87, (%esp)
	call	__Z10OSD_PrintfPKcz
	movl	_corruptcheck_noalreadyrefd, %ecx
	testl	%ecx, %ecx
	jne	L449
	movl	32(%esp), %edx
	testl	%edx, %edx
	js	L449
	jmp	L651
	.p2align 4,,10
	.p2align 3
L666:
	movl	$3, %edx
	movl	_numcorruptthings, %eax
	cmpl	%edx, %esi
	cmovl	%edx, %esi
	cmpl	$63, %eax
	jg	L642
	leal	1(%eax), %edx
	movl	%edx, _numcorruptthings
	movl	%edi, %edx
	orl	$262144, %edx
	movl	%edx, _corruptthings(,%eax,4)
	jmp	L455
	.p2align 4,,10
	.p2align 3
L653:
	leal	7(%edx), %ebx
	movl	_g_sm_heap, %ecx
	movswl	%bx, %ebx
	sarl	$3, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 172
	subl	$4, %esp
	.cfi_def_cfa_offset 176
	movl	%eax, 108(%esp)
	testl	%eax, %eax
	je	L385
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movswl	_numwalls, %ebx
	movl	_g_sm_heap, %ecx
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 172
	subl	$4, %esp
	.cfi_def_cfa_offset 176
	movl	%eax, 112(%esp)
	testl	%eax, %eax
	jne	L384
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L667:
	cmpl	$63, %eax
	jg	L542
	movl	%edi, %ecx
	movzwl	12(%edx), %ebx
	leal	1(%eax), %edx
	orl	$262144, %ecx
	movl	%edx, _numcorruptthings
	movl	%ecx, _corruptthings(,%eax,4)
	movl	%edi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC86, (%esp)
	call	__Z10OSD_PrintfPKcz
	cmpw	$-1, %bx
	je	L516
	jmp	L448
	.p2align 4,,10
	.p2align 3
L536:
	movl	$5, %edi
	jmp	L391
L439:
	jg	L435
L430:
	movl	$LC83, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L428
L529:
	xorl	%eax, %eax
	jmp	L401
L631:
	movl	%ebp, %edi
	jmp	L391
L649:
	movl	156(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	160(%esp), %esi
	.cfi_restore 6
	movl	168(%esp), %ebp
	.cfi_restore 5
	jmp	L382
L385:
	.cfi_restore_state
	movl	$1, %eax
	call	__Z13handle_memerri
L522:
	movl	$0, 48(%esp)
	jmp	L387
L656:
	movl	_Numsprites, %eax
	movl	$-1, __ZL5csc_i
	movl	$-1, __ZL5csc_s
	cmpl	$16384, %eax
	ja	L541
	movswl	_numsectors, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%eax, 44(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 40(%esp)
	leal	24(%ebp), %esi
	movl	%ecx, 32(%esp)
	movl	%edi, 36(%esp)
	movl	%ebp, 52(%esp)
	jmp	L480
	.p2align 4,,10
	.p2align 3
L475:
	cmpl	$1024, %eax
	ja	L652
	cmpl	$4096, %edx
	je	L478
	cmpl	%edx, 40(%esp)
	jb	L652
L478:
	cmpl	$1024, %eax
	setne	%al
	addl	$1, 28(%esp)
	addl	$44, %esi
	movzbl	%al, %eax
	addl	%eax, 32(%esp)
	cmpl	$16384, 28(%esp)
	je	L668
L480:
	movswl	2(%esi), %eax
	movswl	(%esi), %edx
	cmpl	$1024, %eax
	sete	%bl
	cmpl	$4096, %edx
	movl	%ebx, %ebp
	sete	%bl
	movl	%ebx, %ecx
	movl	%ebp, %ebx
	cmpb	%cl, %bl
	je	L475
	movl	28(%esp), %ecx
	movl	36(%esp), %edi
	movl	$2, %eax
	movl	%ecx, __ZL5csc_i
L474:
	movl	$5, %edx
	cmpl	%edx, %edi
	cmovl	%edx, %edi
	movl	_numcorruptthings, %edx
	cmpl	$63, %edx
	jg	L507
	movl	48(%esp), %esi
	movl	%eax, %ebx
	leal	1(%edx), %ecx
	movl	%ecx, _numcorruptthings
	cmpl	%esi, %edi
	cmovl	%esi, %edi
	orl	$524288, %ebx
	movl	%ebx, _corruptthings(,%edx,4)
	movl	__ZL5csc_i, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 16(%esp)
	movl	__ZL5csc_s, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, 12(%esp)
	movl	$LC94, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L508
L652:
	movl	28(%esp), %ecx
	movl	36(%esp), %edi
	movl	$3, %eax
	movl	%ecx, __ZL5csc_i
	jmp	L474
L541:
	movl	$1, %eax
	jmp	L474
L507:
	cmpl	$3, 48(%esp)
	jg	L509
	jmp	L508
L680:
	xorl	%edx, %edx
	movl	%esi, %ebx
	xorl	%eax, %eax
	movl	$16383, __ZL5csc_i
	movl	%edx, 28(%esp)
L501:
	movl	28(%esp), %esi
	movl	%ebx, 32(%esp)
	movswl	_headspritestat(%esi,%esi), %esi
	jmp	L494
L498:
	cmpl	$16383, %esi
	jg	L669
	movl	%esi, %ecx
	movl	%esi, %eax
	sarl	$3, %ecx
	andl	$7, %eax
	movzbl	__ZZL28check_spritelist_consistencyvE10havesprite(%ecx), %edx
	movzbl	__ZL8pow2char.lto_priv.0(%eax), %eax
	movl	%edx, %ebx
	notl	%ebx
	testb	%al, %bl
	jne	L670
	notl	%eax
	andl	%edx, %eax
	movb	%al, __ZZL28check_spritelist_consistencyvE10havesprite(%ecx)
	imull	$44, %esi, %eax
	movswl	26(%ebp,%eax), %eax
	cmpl	%eax, 28(%esp)
	jne	L671
	movl	%esi, 136(%esp)
	movswl	_nextspritestat(%esi,%esi), %esi
	movl	$1, %eax
L494:
	testl	%esi, %esi
	jns	L498
	addl	$1, %esi
	movl	32(%esp), %ebx
	jne	L672
	addl	$1, 28(%esp)
	cmpl	$1024, 28(%esp)
	jne	L501
	testb	%al, %al
	je	L502
	movl	136(%esp), %eax
	movl	%eax, __ZL5csc_i
L502:
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %esi
	jmp	L503
L505:
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.0(%edx), %edx
	movzbl	__ZZL28check_spritelist_consistencyvE10havesprite(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L673
	movl	%eax, 144(%esp)
	movl	$1, %edx
	addl	$1, %eax
L503:
	cmpl	%esi, %eax
	jne	L505
	testb	%dl, %dl
	je	L510
	movl	144(%esp), %eax
	movl	%eax, __ZL5csc_i
L510:
	movl	48(%esp), %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	testl	%edi, %edi
	je	L512
	cmpl	$3, %edi
	jle	L512
	jmp	L508
L668:
	movl	44(%esp), %eax
	movl	32(%esp), %ebx
	movl	$16383, __ZL5csc_i
	movl	36(%esp), %edi
	movl	52(%esp), %ebp
	cmpl	%ebx, %eax
	jne	L674
	leal	7(%ebx), %eax
	xorl	%ecx, %ecx
	movl	$__ZZL28check_spritelist_consistencyvE10havesprite, (%esp)
	sarl	$3, %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_memset
	xorl	%eax, %eax
	xorl	%edx, %edx
L483:
	cmpl	40(%esp), %edx
	jge	L675
	movl	%ebx, 32(%esp)
	movswl	_headspritesect(%edx,%edx), %esi
	jmp	L484
L488:
	cmpl	$16383, %esi
	jg	L676
	movl	%esi, %ebx
	movl	%esi, %ecx
	sarl	$3, %ebx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.0(%ecx), %ecx
	movzbl	__ZZL28check_spritelist_consistencyvE10havesprite(%ebx), %eax
	movb	%cl, 28(%esp)
	movl	%eax, %ecx
	notl	%ecx
	testb	%cl, 28(%esp)
	je	L677
	orl	28(%esp), %eax
	movb	%al, __ZZL28check_spritelist_consistencyvE10havesprite(%ebx)
	imull	$44, %esi, %eax
	movswl	24(%ebp,%eax), %eax
	cmpl	%eax, %edx
	jne	L678
	movl	%esi, 140(%esp)
	movswl	_nextspritesect(%esi,%esi), %esi
	movl	$1, %eax
L484:
	testl	%esi, %esi
	jns	L488
	addl	$1, %esi
	movl	32(%esp), %ebx
	jne	L679
	addl	$1, %edx
	jmp	L483
L674:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	testl	%ecx, %ecx
	js	L482
	movl	%ebx, 16(%esp)
	xorl	%ebx, %ebx
	movl	%eax, 20(%esp)
	movl	$LC92, 12(%esp)
	movl	$766, 8(%esp)
	movl	$LC93, 4(%esp)
	movl	%ebx, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L482:
	movl	$4, %eax
	jmp	L474
L678:
	movl	%edx, __ZL5csc_s
	movl	$7, %eax
	movl	%esi, __ZL5csc_i
	jmp	L474
L677:
	movl	%edx, __ZL5csc_s
	movl	$6, %eax
	movl	%esi, __ZL5csc_i
	jmp	L474
L676:
	movl	%edx, __ZL5csc_s
	movl	$5, %eax
	movl	%esi, __ZL5csc_i
	jmp	L474
L675:
	xorl	%eax, %eax
	movl	%ebx, %esi
	jmp	L493
	.p2align 5
L492:
	addl	$1, %eax
	cmpl	$16384, %eax
	je	L680
L493:
	imull	$44, %eax, %edx
	cmpw	$1024, 26(%ebp,%edx)
	je	L492
	movl	%eax, %edx
	movl	%eax, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.0(%edx), %edx
	movzbl	__ZZL28check_spritelist_consistencyvE10havesprite(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%bl, %dl
	je	L492
	movl	%eax, __ZL5csc_i
	movl	$9, %eax
	jmp	L474
L679:
	movl	%edx, __ZL5csc_s
	testb	%al, %al
	je	L490
	movl	140(%esp), %eax
	movl	%eax, __ZL5csc_i
L490:
	movl	$8, %eax
	jmp	L474
L672:
	movl	28(%esp), %esi
	movl	%esi, __ZL5csc_s
	testb	%al, %al
	je	L500
	movl	136(%esp), %eax
	movl	%eax, __ZL5csc_i
L500:
	movl	$13, %eax
	jmp	L474
L671:
	movl	28(%esp), %eax
	movl	%esi, __ZL5csc_i
	movl	%eax, __ZL5csc_s
	movl	$12, %eax
	jmp	L474
L670:
	movl	28(%esp), %eax
	movl	%esi, __ZL5csc_i
	movl	%eax, __ZL5csc_s
	movl	$11, %eax
	jmp	L474
L669:
	movl	28(%esp), %eax
	movl	%esi, __ZL5csc_i
	movl	%eax, __ZL5csc_s
	movl	$10, %eax
	jmp	L474
L673:
	movl	%eax, __ZL5csc_i
	movl	$14, %eax
	jmp	L474
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	_map_undoredo
	.def	_map_undoredo;	.scl	2;	.type	32;	.endef
_map_undoredo:
LFB67:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %ecx
	movl	%ebx, 16(%esp)
	cmpb	$0, _g_mouseEnabled
	.cfi_offset 3, -20
	je	L682
	cmpb	$0, _appactive
	jne	L683
L682:
	xorl	%ebx, %ebx
L684:
	movl	_mapstate, %eax
	testl	%eax, %eax
	je	L686
	movzwl	_newnumwalls, %edx
	testw	%dx, _joinsector
	jns	L686
	movl	_circlewall, %edx
	testl	%edx, %edx
	jns	L686
	andl	$1, %ebx
	jne	L681
	cmpb	$0, _isc
	jne	L686
	movl	%ebp, 28(%esp)
	testl	%ecx, %ecx
	movl	84(%eax), %edx
	cmovne	80(%eax), %edx
	.cfi_offset 5, -8
	movl	%edx, %ebp
	testl	%edx, %edx
	je	L710
	movl	20(%edx), %eax
	testl	%eax, %eax
	jne	L689
L710:
	movl	28(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L686:
	movl	$1, %ebx
L681:
	movl	%ebx, %eax
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L683:
	.cfi_restore_state
	cmpb	$0, _g_mouseInsideWindow
	je	L682
	movl	_osd, %eax
	testl	%eax, %eax
	je	L685
	testb	$4, 1172(%eax)
	jne	L682
L685:
	movl	_g_mouseBits, %ebx
	jmp	L684
	.p2align 4,,10
	.p2align 3
L689:
	.cfi_offset 5, -8
	movw	%ax, _numsectors
	movl	24(%edx), %eax
	movl	%edx, _mapstate
	movw	%ax, _numwalls
	movl	(%edx), %eax
	movl	%eax, _map_revision
	movl	4(%edx), %eax
	movl	%eax, _startpos
	movl	8(%edx), %eax
	movl	%eax, _startpos+4
	movl	12(%edx), %eax
	movl	%eax, _startpos+8
	movzwl	16(%edx), %eax
	movw	%ax, _startang
	movzwl	18(%edx), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsector, (%esp)
	movw	%ax, _startsectnum
	call	_memset
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_hlsectorbitmap, (%esp)
	call	_memset
	call	_update_highlightsector
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	call	_update_highlight
	call	_initspritelists
	movl	20(%ebp), %eax
	testl	%eax, %eax
	jne	L711
L691:
	movl	28(%ebp), %eax
	testl	%eax, %eax
	jle	L693
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebx, 12(%esp)
	xorl	%ebx, %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	jmp	L695
	.p2align 4,,10
	.p2align 3
L694:
	movswl	26(%ecx), %edx
	movswl	24(%ecx), %eax
	addl	$1, %ebx
	addl	$44, %edi
	call	_insertsprite
	cmpl	%ebx, 28(%ebp)
	jle	L712
L695:
	movl	_sprite, %edx
	leal	(%edx,%edi), %ecx
	movzwl	12(%ecx), %eax
	notl	%eax
	testb	$48, %al
	jne	L694
	movzbl	22(%ecx), %eax
	orb	23(%ecx), %al
	jne	L694
	leal	12(%ecx), %eax
	movl	$-1171354717, %esi
	subl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-49, 12(%ecx)
	jmp	L694
	.p2align 4,,10
	.p2align 3
L712:
	movl	12(%esp), %ebx
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L693:
	cmpl	$200, _qsetmode
	je	L713
L696:
	xorl	%eax, %eax
	call	_yax_update
	movl	_pos+8, %eax
	call	_yax_updategrays
	call	_calc_sector_reachability
	call	_CheckMapCorruption.constprop.0
	movl	%ebx, %eax
	movl	28(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L713:
	.cfi_restore_state
	cmpl	$4, _rendmode
	jne	L696
	call	_polymer_loadboard
	jmp	L696
L711:
	movl	32(%ebp), %eax
	movl	44(%ebp), %ecx
	movl	$163840, (%esp)
	movl	_sector, %edx
	movl	%eax, 12(%esp)
	addl	$4, %eax
	call	_LZ4_decompress_safe
	movl	24(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L714
L692:
	movl	28(%ebp), %edx
	testl	%edx, %edx
	je	L693
	movl	40(%ebp), %eax
	movl	52(%ebp), %ecx
	movl	$720896, (%esp)
	movl	_sprite, %edx
	movl	%eax, 12(%esp)
	addl	$4, %eax
	call	_LZ4_decompress_safe
	jmp	L691
L714:
	movl	36(%ebp), %eax
	movl	48(%ebp), %ecx
	movl	$524288, (%esp)
	movl	_wall, %edx
	movl	%eax, 12(%esp)
	addl	$4, %eax
	call	_LZ4_decompress_safe
	jmp	L692
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
	.align 4
LC96:
	.ascii "ERROR executing %s. Event disabled.\0"
	.text
	.p2align 4
	.globl	__Z10VM_OnEventii
	.def	__Z10VM_OnEventii;	.scl	2;	.type	32;	.endef
__Z10VM_OnEventii:
LFB72:
	.cfi_startproc
	cmpb	$0, _aEventEnabled(%eax)
	je	L731
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$292, %esp
	.cfi_def_cfa_offset 304
	movl	_vm, %esi
	movl	_insptr, %ebx
	movl	%edx, _vm
	movl	_aGameArrays+4, %ecx
	movl	%esi, 16(%esp)
	movl	_vm+4, %esi
	movl	%esi, 20(%esp)
	movl	_vm+8, %esi
	movl	%esi, 24(%esp)
	movl	_vm+12, %esi
	movl	%esi, 28(%esp)
	movl	_vm+16, %esi
	movl	%esi, 32(%esp)
	testl	%edx, %edx
	js	L717
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L717:
	movl	%eax, %edx
	leal	1(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	%eax, _vm+4
	leal	36(%esp), %eax
	movl	%eax, _aGameArrays+4
	xorl	%eax, %eax
	movl	%edx, 8(%esp)
	movl	$0, _vm+12
	movl	$0, _insptr
	call	__Z10VM_Executei
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	testb	$4, _vm+12
	movl	%ecx, _aGameArrays+4
	jne	L734
	movl	_vm+16, %eax
	testb	$1, %al
	jne	L735
L719:
	testb	$2, %al
	jne	L736
L720:
	movl	16(%esp), %eax
	movl	%ebx, _insptr
	movl	%eax, _vm
	movl	20(%esp), %eax
	movl	%eax, _vm+4
	movl	24(%esp), %eax
	movl	%eax, _vm+8
	movl	28(%esp), %eax
	movl	%eax, _vm+12
	movl	32(%esp), %eax
	movl	%eax, _vm+16
	addl	$292, %esp
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
L731:
	ret
	.p2align 4,,10
	.p2align 3
L736:
	.cfi_def_cfa_offset 304
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	call	_update_highlightsector
	cmpl	$200, _qsetmode
	je	L720
	movl	$1, %eax
	call	_ovh_whiteoutgrab
	jmp	L720
	.p2align 4,,10
	.p2align 3
L734:
	movl	%edx, %eax
	movb	$0, _aEventEnabled(%edx)
	sall	$5, %eax
	movl	$LC96, (%esp)
	movl	%eax, 4(%esp)
	call	_message
	movl	_vm+16, %eax
	testb	$1, %al
	je	L719
L735:
	movl	%eax, 8(%esp)
	call	_update_highlight
	movl	8(%esp), %eax
	andl	$-2, %eax
	testb	$2, %al
	je	L720
	jmp	L736
	.cfi_endproc
LFE72:
	.section .rdata,"dr"
LC97:
	.ascii "Sprite\0"
LC98:
	.ascii "Wall\0"
LC99:
	.ascii "statnum\0"
LC100:
	.ascii "sector\0"
LC101:
	.ascii "???\0"
LC102:
	.ascii "top-level) \0"
LC103:
	.ascii "event\0"
LC104:
	.ascii "state\0"
LC105:
	.ascii "-\0"
LC106:
	.ascii "sprite\0"
LC107:
	.ascii "wall\0"
LC108:
	.ascii "tsprite\0"
	.align 4
LC109:
	.ascii "Line %d, %s: script index out of bounds (%d)\0"
	.align 4
LC110:
	.ascii "Line %d, %s: Tried to set on read-only array `%s'\0"
	.align 4
LC111:
	.ascii "Line %d, %s: Array index %d out of bounds\0"
	.align 4
LC112:
	.ascii "Line %d, %s: Tried to resize read-only array `%s'\0"
	.align 4
LC113:
	.ascii "Line %d, %s: Invalid array size %d (must be between 1 and 65536)\0"
	.align 4
LC114:
	.ascii "Line %d, %s: Array %d is read-only!\0"
	.align 4
LC115:
	.ascii "Line %d, %s: Invalid source index %d\0"
	.align 4
LC116:
	.ascii "Line %d, %s: Invalid destination index %d\0"
LC117:
	.ascii "divvar\0"
LC118:
	.ascii "Line %d, %s: Divide by zero.\0"
LC119:
	.ascii "modvar\0"
LC120:
	.ascii "Line %d, %s: Mod by zero.\0"
	.align 4
LC121:
	.ascii "Line %d, %s: invalid sprite %d\0"
	.align 4
LC122:
	.ascii "Line %d, %s: Unknown iteration type %d!\0"
	.align 4
LC123:
	.ascii "%sLine %d, %s %s: index %d out of range!\12\0"
LC124:
	.ascii "Line %d, %s: Invalid key %d!\0"
LC125:
	.ascii "ifspritepal\0"
	.align 4
LC126:
	.ascii "Line %d, %s: Current sprite invalid!\0"
	.align 4
LC127:
	.ascii "Line %d, %s: %s index %d out of range!\0"
LC128:
	.ascii "ifangdiffl\0"
LC129:
	.ascii "ifawayfromwall\0"
LC130:
	.ascii "ifcansee\0"
LC131:
	.ascii "ifonwater\0"
LC132:
	.ascii "ifinwater\0"
LC133:
	.ascii "ifactor\0"
	.align 4
LC134:
	.ascii "Line %d, %s: Sector index %d out of range!\0"
LC135:
	.ascii "ifoutside\0"
LC136:
	.ascii "ifpdistl\0"
LC137:
	.ascii "ifpdistg\0"
	.align 4
LC138:
	.ascii "Line %d, %s: Invalid sector index %d!\0"
	.align 4
LC139:
	.ascii "Line %d, %s: Maximum number of sprites reached.\0"
	.align 4
LC140:
	.ascii "Line %d, %s: Tried to duplicate nonexistent sprite %d\0"
LC141:
	.ascii "Line %d, %s: Internal error.\0"
	.align 4
LC142:
	.ascii "Line %d, %s: Invalid sprite index %d!\0"
LC143:
	.ascii "Line %d, %s: Invalid wall %d\0"
	.align 4
LC144:
	.ascii "Line %d, %s: Current sprite index invalid!\0"
	.align 4
LC145:
	.ascii "Line %d, %s: invalid status list %d\0"
	.align 4
LC146:
	.ascii "Line %d, %s: Invalid sprite %d\0"
LC147:
	.ascii "Line %d, %s: Invalid %s: %d\0"
	.align 4
LC148:
	.ascii "Line %d, %s: sector highlight active or pending, cannot highlight sprites/walls\0"
	.align 4
LC149:
	.ascii "Line %d, %s: Invalid sprite index %d\0"
	.align 4
LC150:
	.ascii "Line %d, %s: Invalid wall index %d\0"
	.align 4
LC151:
	.ascii "Line %d, %s: sprite/wall highlight active or pending, cannot highlight sectors\0"
LC152:
	.ascii "L=%d\12\0"
LC153:
	.ascii "%d\0"
LC154:
	.ascii ".local[%s]\0"
LC155:
	.ascii "%s[%s]\0"
LC156:
	.ascii "light\0"
LC157:
	.ascii "%s[%s].%s\0"
LC158:
	.ascii "(%s\0"
LC159:
	.ascii " %d) \0"
LC160:
	.ascii "%s%s\0"
LC161:
	.ascii "L%d: %s%s=%d\12\0"
LC162:
	.ascii "redefinequote\0"
LC163:
	.ascii "%s\0"
LC164:
	.ascii "sizeat\0"
LC165:
	.ascii "cstat\0"
LC166:
	.ascii "cstator\0"
LC167:
	.ascii "clipdist\0"
LC168:
	.ascii "spritepal\0"
LC169:
	.ascii "cactor\0"
LC170:
	.ascii "spgetlotag\0"
LC171:
	.ascii "spgethitag\0"
LC172:
	.ascii "sectgetlotag\0"
LC173:
	.ascii "sectgethitag\0"
LC174:
	.ascii "gettexturefloor\0"
LC175:
	.ascii "gettextureceiling\0"
LC176:
	.ascii "Line %d, %s: Invalid sound %d\0"
	.align 4
LC177:
	.ascii "\12An error has occurred in the Mapster32 virtual machine.\12\12Please e-mail the file mapster32.log along with every M32 file\12you're using and instructions how to reproduce this error to\12development@voidpoint.com.\12\12Thank you!\12\0"
	.text
	.p2align 4
	.def	__Z10VM_Executei;	.scl	3;	.type	32;	.endef
__Z10VM_Executei:
LFB75:
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
	subl	$524, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_insptr, %edi
	movl	$LC108, -416(%ebp)
	movss	LC178, %xmm0
	movss	-416(%ebp), %xmm1
	movl	$LC100, -416(%ebp)
	movss	-416(%ebp), %xmm2
	movl	%eax, -404(%ebp)
	movl	$_SpriteLabels, -416(%ebp)
	unpcklps	%xmm1, %xmm0
	movss	LC179, %xmm1
	unpcklps	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	movss	LC180, %xmm1
	movlhps	%xmm0, %xmm3
	movss	-416(%ebp), %xmm0
	movl	$_SectorLabels, -416(%ebp)
	movss	-416(%ebp), %xmm2
	movups	%xmm3, -440(%ebp)
	unpcklps	%xmm0, %xmm1
	unpcklps	%xmm2, %xmm0
	movaps	%xmm0, %xmm4
	movlhps	%xmm1, %xmm4
	movups	%xmm4, -456(%ebp)
	movl	(%edi), %esi
	.p2align 4
	.p2align 3
L738:
	movl	%esi, %eax
	movl	%esi, %edx
	sarl	$12, %eax
	andl	$4095, %edx
	movl	%eax, _g_errorLineNum
	movl	%edx, _g_tw
	cmpl	$243, %edx
	ja	L740
	jmp	*L742(,%edx,4)
	.section .rdata,"dr"
	.align 4
L742:
	.long	L749
	.long	L740
	.long	L740
	.long	L740
	.long	L740
	.long	L739
	.long	L934
	.long	L740
	.long	L924
	.long	L740
	.long	L932
	.long	L931
	.long	L930
	.long	L929
	.long	L740
	.long	L740
	.long	L928
	.long	L927
	.long	L926
	.long	L925
	.long	L924
	.long	L740
	.long	L923
	.long	L922
	.long	L921
	.long	L920
	.long	L919
	.long	L918
	.long	L917
	.long	L916
	.long	L915
	.long	L914
	.long	L913
	.long	L912
	.long	L911
	.long	L910
	.long	L909
	.long	L908
	.long	L907
	.long	L906
	.long	L905
	.long	L904
	.long	L903
	.long	L902
	.long	L901
	.long	L900
	.long	L899
	.long	L898
	.long	L897
	.long	L896
	.long	L895
	.long	L894
	.long	L893
	.long	L892
	.long	L891
	.long	L890
	.long	L889
	.long	L888
	.long	L887
	.long	L886
	.long	L885
	.long	L884
	.long	L883
	.long	L882
	.long	L882
	.long	L881
	.long	L880
	.long	L879
	.long	L878
	.long	L878
	.long	L877
	.long	L876
	.long	L875
	.long	L874
	.long	L873
	.long	L872
	.long	L871
	.long	L870
	.long	L869
	.long	L868
	.long	L867
	.long	L866
	.long	L865
	.long	L864
	.long	L863
	.long	L862
	.long	L861
	.long	L860
	.long	L859
	.long	L858
	.long	L857
	.long	L856
	.long	L855
	.long	L854
	.long	L853
	.long	L852
	.long	L851
	.long	L850
	.long	L849
	.long	L848
	.long	L847
	.long	L846
	.long	L845
	.long	L844
	.long	L843
	.long	L842
	.long	L841
	.long	L840
	.long	L839
	.long	L814
	.long	L814
	.long	L838
	.long	L837
	.long	L836
	.long	L835
	.long	L834
	.long	L833
	.long	L832
	.long	L831
	.long	L830
	.long	L829
	.long	L828
	.long	L827
	.long	L826
	.long	L825
	.long	L824
	.long	L823
	.long	L822
	.long	L821
	.long	L820
	.long	L819
	.long	L818
	.long	L817
	.long	L816
	.long	L815
	.long	L814
	.long	L814
	.long	L813
	.long	L812
	.long	L812
	.long	L811
	.long	L810
	.long	L809
	.long	L808
	.long	L807
	.long	L807
	.long	L807
	.long	L807
	.long	L806
	.long	L805
	.long	L804
	.long	L804
	.long	L803
	.long	L802
	.long	L801
	.long	L800
	.long	L799
	.long	L798
	.long	L797
	.long	L797
	.long	L796
	.long	L796
	.long	L795
	.long	L794
	.long	L793
	.long	L793
	.long	L792
	.long	L791
	.long	L790
	.long	L789
	.long	L788
	.long	L787
	.long	L786
	.long	L785
	.long	L784
	.long	L783
	.long	L782
	.long	L781
	.long	L780
	.long	L779
	.long	L778
	.long	L779
	.long	L778
	.long	L777
	.long	L776
	.long	L775
	.long	L740
	.long	L774
	.long	L773
	.long	L773
	.long	L773
	.long	L773
	.long	L773
	.long	L773
	.long	L773
	.long	L773
	.long	L772
	.long	L772
	.long	L772
	.long	L771
	.long	L769
	.long	L769
	.long	L770
	.long	L769
	.long	L768
	.long	L767
	.long	L767
	.long	L767
	.long	L767
	.long	L766
	.long	L766
	.long	L765
	.long	L764
	.long	L763
	.long	L762
	.long	L761
	.long	L760
	.long	L759
	.long	L758
	.long	L757
	.long	L756
	.long	L755
	.long	L754
	.long	L753
	.long	L752
	.long	L751
	.long	L750
	.long	L748
	.long	L748
	.long	L749
	.long	L748
	.long	L748
	.long	L747
	.long	L746
	.long	L746
	.long	L746
	.long	L745
	.long	L744
	.long	L744
	.long	L744
	.long	L743
	.long	L743
	.long	L743
	.long	L741
	.text
L928:
	andl	$-3, _vm+12
L924:
	addl	$4, _insptr
L739:
	leal	-12(%ebp), %esp
	movl	$1, %eax
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
L773:
	.cfi_restore_state
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	movl	4(%edi), %eax
	call	__ZL19GetMaybeInlineQuotei
	movl	%eax, %ebx
	testb	$4, _vm+12
	je	L1781
	.p2align 4
	.p2align 3
L936:
	movl	-404(%ebp), %eax
	testl	%eax, %eax
	jne	L1782
L1525:
	movl	_vm+12, %edi
	testl	%edi, %edi
	jne	L739
	movl	_insptr, %edi
	movl	(%edi), %esi
	jmp	L738
	.p2align 4,,10
	.p2align 3
L740:
	movl	$LC177, (%esp)
	call	__Z10OSD_PrintfPKcz
	orl	$4, _vm+12
	movl	$0, (%esp)
	call	_fflush
	jmp	L739
	.p2align 4,,10
	.p2align 3
L814:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	cmpl	$255, %eax
	movl	%eax, %ebx
	ja	L1783
	leal	-109(%edx), %ecx
	movl	_insptr, %eax
	cmpl	$1, %ecx
	jbe	L1784
	addl	$4, %eax
	movl	%eax, _insptr
L1142:
	cmpl	$1, %ebx
	jbe	L936
	cmpl	$41, %ebx
	je	L936
	cmpl	$156, %ebx
	je	L936
	cmpl	$56, %ebx
	je	L936
	cmpl	$184, %ebx
	je	L936
	cmpl	$29, %ebx
	je	L936
	cmpl	$157, %ebx
	setne	%cl
	cmpl	$42, %ebx
	setne	%al
	testb	%al, %cl
	je	L936
	cmpl	$54, %ebx
	je	L936
	cmpl	$136, %edx
	sete	_keystatus(%ebx)
	jmp	L936
	.p2align 4,,10
	.p2align 3
L807:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, %edi
	movl	%esi, %eax
	xorl	%esi, %esi
	andl	$4093, %eax
	cmpl	$145, %eax
	je	L1785
L1287:
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	(%eax), %eax
	movl	%ecx, _insptr
	movl	%eax, -416(%ebp)
	movl	_vm, %eax
	cmpl	$16383, %eax
	jbe	L1288
	movl	_vm+4, %eax
	testl	%eax, %eax
	jne	L1289
	cmpw	$3, _searchstat
	je	L1786
L1289:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1787
L1291:
	orl	$4, _vm+12
	jmp	L936
	.p2align 4,,10
	.p2align 3
L767:
	andl	$4093, %esi
	movl	4(%edi), %ebx
	leal	12(%edi), %eax
	movl	8(%edi), %edi
	cmpl	$205, %esi
	jne	L1788
L1425:
	leal	4(%eax), %ecx
	movl	(%eax), %eax
	movl	%ecx, _insptr
	movl	%eax, -420(%ebp)
	cmpl	$16383, _vm
	jbe	L1426
	movl	_vm+4, %eax
	testl	%eax, %eax
	jne	L1427
	cmpw	$3, _searchstat
	je	L1789
L1427:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1790
L1430:
	orl	$4, _vm+12
	jmp	L936
	.p2align 4,,10
	.p2align 3
L748:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1791
L1524:
	orl	$4, _vm+12
	jmp	L936
	.p2align 4,,10
	.p2align 3
L772:
	movl	4(%edi), %eax
	movl	%edx, -420(%ebp)
	movl	%eax, -416(%ebp)
	leal	12(%edi), %eax
	movl	%eax, _insptr
	movl	8(%edi), %eax
	call	__ZL19GetMaybeInlineQuotei
	testb	$4, _vm+12
	movl	-420(%ebp), %edx
	movl	%eax, %ebx
	jne	L936
	movl	_insptr, %eax
	movl	%edx, -424(%ebp)
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	cmpl	$198, -424(%ebp)
	je	L1792
	movl	%ebx, (%esp)
	call	_strlen
	movl	$63, %ecx
	movl	-424(%ebp), %edx
	addl	$1, %eax
	cmpl	%ecx, %eax
	cmova	%ecx, %eax
	cmpl	$16, %eax
	jnb	L1388
	testb	$8, %al
	jne	L1793
	testb	$4, %al
	jne	L1794
	testl	%eax, %eax
	je	L1389
	movzbl	(%ebx), %ecx
	movb	%cl, -280(%ebp)
	testb	$2, %al
	jne	L1795
L1389:
	movl	-420(%ebp), %edi
	testl	%edi, %edi
	je	L1544
	setle	%al
	movl	%eax, %esi
	movl	%edi, %eax
/APP
 # 2577 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
L1395:
	movl	-416(%ebp), %ecx
	cmpl	$196, %edx
	je	L1796
	call	@_Z9Gv_GetVari@4
	movl	%esi, %edx
	movl	%edi, %ecx
	movzbl	%dl, %esi
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	%esi, (%esp)
	call	__getnumber256.constprop.0
	movl	-416(%ebp), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
	.p2align 4,,10
	.p2align 3
L743:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -424(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -472(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -476(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -480(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-424(%ebp), %edx
	movb	$0, -460(%ebp)
	movl	%eax, -420(%ebp)
	cmpl	$240, %edx
	je	L1797
L1504:
	movl	_insptr, %eax
	movl	%edx, -424(%ebp)
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	cmpl	$241, -424(%ebp)
	je	L1506
	movl	-420(%ebp), %ecx
	movl	%esi, %edx
	sall	$16, %edx
	andl	$2048, %ecx
	cmove	%edx, %esi
	movl	%ebx, %edx
	sall	$16, %edx
	testl	%ecx, %ecx
	cmove	%edx, %ebx
L1506:
	movswl	-416(%ebp), %edx
	cmpl	$30719, %edx
	ja	L936
	movl	-464(%ebp), %ecx
	cmpl	%edi, %ecx
	jg	L936
	cmpl	%eax, -408(%ebp)
	jg	L936
	movl	%eax, 36(%esp)
	movl	%edi, 32(%esp)
	movl	-408(%ebp), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 28(%esp)
	movzbl	-460(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-420(%ebp), %eax
	andl	$131071, %eax
	orl	$2, %eax
	movl	%eax, 16(%esp)
	movzbl	-480(%ebp), %eax
	movl	%eax, 12(%esp)
	movsbl	-476(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%ebx, %edx
	movl	%eax, 8(%esp)
	movswl	-472(%ebp), %eax
	movl	%eax, (%esp)
	movl	-468(%ebp), %ecx
	movl	%esi, %eax
	call	_rotatesprite_.part.0.constprop.0
	jmp	L936
	.p2align 4,,10
	.p2align 3
L769:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, _insptr
	call	__ZL19GetMaybeInlineQuotei
	movl	_vm+12, %eax
	testb	$4, %al
	jne	L936
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$16383, %ebx
	ja	L1798
	cmpl	$-2, %edx
	jge	L1799
L1421:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
	.p2align 4,,10
	.p2align 3
L746:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -280(%ebp)
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, -360(%ebp)
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	addl	$4, %eax
	cmpl	$235, %edx
	je	L1800
	movl	%edx, -408(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-408(%ebp), %edx
	movl	%eax, %ecx
	movl	_drawlinepat, %eax
	subl	$234, %edx
	movl	%eax, -424(%ebp)
	cmpl	$1, %edx
	jbe	L1801
L1527:
	movl	$-1, _drawlinepat
	testl	%ecx, %ecx
	js	L1494
	movzbl	%cl, %eax
	movzbl	_editorcolors(%eax), %eax
L1495:
	movl	%eax, 4(%esp)
	movl	-420(%ebp), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	-416(%ebp), %ecx
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	-424(%ebp), %eax
	movl	%eax, _drawlinepat
	jmp	L936
	.p2align 4,,10
	.p2align 3
L744:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -280(%ebp)
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, -360(%ebp)
	movl	%eax, %edi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	(%eax), %eax
	cmpl	$239, %edx
	je	L1802
	movl	%ecx, _insptr
	movl	%eax, %ecx
	movl	%edx, -424(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-424(%ebp), %edx
	movl	$16384, %ecx
	movl	%eax, %ebx
	movl	_drawlinepat, %eax
	subl	$238, %edx
	movl	%eax, -420(%ebp)
	cmpl	$1, %edx
	jbe	L1803
L1499:
	movl	$-1, _drawlinepat
	movl	%ebx, %eax
	negl	%eax
	testl	%ebx, %ebx
	js	L1503
	movzbl	%bl, %ebx
	movzbl	_editorcolors(%ebx), %eax
L1503:
	movzbl	%al, %eax
	movl	%ecx, (%esp)
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	-416(%ebp), %ecx
	movl	%esi, %eax
	call	_editorDraw2dCircle
	movl	-420(%ebp), %eax
	movl	%eax, _drawlinepat
	jmp	L936
L749:
	movl	-404(%ebp), %eax
	addl	$4, _insptr
	testl	%eax, %eax
	je	L1525
L1782:
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
L812:
	.cfi_restore_state
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	cmpl	$16383, %eax
	movl	%eax, %ebx
	ja	L1225
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L1225
L1226:
	cmpl	$138, %edx
	je	L1804
	testb	$4, _vm+12
	jne	L936
	movl	_spritesortcnt, %eax
	movzwl	%bx, %ecx
	imull	$44, %ecx, %ecx
	addl	_sprite, %ecx
	leal	1(%eax), %edx
	movl	%edx, _spritesortcnt
	movl	(%ecx), %edx
	imull	$44, %eax, %eax
	addl	_tsprite, %eax
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movzwl	12(%ecx), %edx
	movw	%dx, 12(%eax)
	movzwl	14(%ecx), %edx
	movw	%dx, 14(%eax)
	movzbl	16(%ecx), %edx
	movb	%dl, 16(%eax)
	movzbl	17(%ecx), %edx
	movb	%dl, 17(%eax)
	movzbl	19(%ecx), %edx
	movb	%dl, 19(%eax)
	movzbl	20(%ecx), %edx
	movb	%dl, 20(%eax)
	movzbl	21(%ecx), %edx
	movb	%dl, 21(%eax)
	movzbl	22(%ecx), %edx
	movb	%dl, 22(%eax)
	movzbl	23(%ecx), %edx
	movb	%dl, 23(%eax)
	movzwl	24(%ecx), %edx
	movw	%dx, 24(%eax)
	movzwl	26(%ecx), %edx
	movw	%dx, 26(%eax)
	movzwl	28(%ecx), %edx
	movl	$-1, _vm
	movw	%dx, 28(%eax)
	movl	32(%ecx), %edx
	movl	%eax, _vm+8
	movl	%edx, 32(%eax)
	movzwl	36(%ecx), %edx
	movw	%dx, 36(%eax)
	movzwl	38(%ecx), %edx
	movw	%dx, 38(%eax)
	movzwl	40(%ecx), %edx
	movw	%dx, 40(%eax)
	movzwl	42(%ecx), %edx
	movb	$0, 18(%eax)
	movw	%dx, 42(%eax)
	movw	%bx, 30(%eax)
	jmp	L936
L882:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %esi
	movl	-416(%ebp), %edx
	movl	%eax, %edi
	ja	L984
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L984
L985:
	cmpl	$16383, %edi
	ja	L987
	imull	$44, %edi, %eax
	movl	_sprite, %ecx
	addl	%ecx, %eax
	cmpw	$1024, 26(%eax)
	je	L987
	testb	$4, _vm+12
	jne	L936
	imull	$44, %esi, %esi
	addl	%esi, %ecx
	cmpl	$63, %edx
	movl	%eax, %edx
	movl	%ecx, %eax
	je	L1805
	call	_ldist
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L878:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, %esi
	leal	512(%eax), %ebx
	movl	_insptr, %eax
	andl	$2047, %esi
	andl	$2047, %ebx
	movl	(%eax), %edi
	cmpl	$68, %edx
	jne	L1806
	leal	8(%eax), %edx
	movl	4(%eax), %eax
	movswl	_sintable(%ebx,%ebx), %ebx
	movl	%edx, _insptr
	movswl	_sintable(%esi,%esi), %esi
	movl	%eax, -416(%ebp)
L997:
	movl	%ebx, %edx
	movl	%edi, %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L766:
	movl	8(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, -420(%ebp)
	cmpl	$210, %edx
	je	L1807
	movl	12(%edi), %esi
	leal	16(%edi), %eax
	movl	%esi, -408(%ebp)
L1444:
	leal	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, _insptr
	cmpl	$16383, _vm
	jbe	L1445
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1446
	cmpw	$3, _searchstat
	je	L1808
L1446:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1809
L1448:
	orl	$4, _vm+12
	jmp	L936
L804:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	leal	-360(%ebp), %edi
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -460(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -472(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -476(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	leal	-376(%ebp), %edx
	cmpl	$150, -416(%ebp)
	movl	(%ecx), %ebx
	movl	%ebx, -480(%ebp)
	movl	4(%ecx), %ebx
	movl	%ebx, -484(%ebp)
	movl	8(%ecx), %ebx
	movl	%ebx, -488(%ebp)
	leal	16(%ecx), %ebx
	movl	%ebx, _insptr
	movl	12(%ecx), %ebx
	movl	%edx, 36(%esp)
	leal	-280(%ebp), %edx
	movl	%edi, 32(%esp)
	movl	%edx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	%esi, 20(%esp)
	movl	-476(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-460(%ebp), %eax
	movl	%eax, (%esp)
	movl	-408(%ebp), %ecx
	movl	-424(%ebp), %edx
	movl	-420(%ebp), %eax
	je	L1810
	call	_rintersect
	cmpl	$-1, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %esi
L1249:
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	testl	%esi, %esi
	je	L936
	movl	-280(%ebp), %edx
	movl	-480(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-360(%ebp), %edx
	movl	-484(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-376(%ebp), %edx
	movl	-488(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L797:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	movl	_insptr, %eax
	leal	4(%eax), %edi
	movl	%edi, _insptr
	testl	%ebx, %ebx
	js	L1272
	movswl	_numsectors, %edi
	cmpl	%ebx, %edi
	jle	L1272
	movl	(%eax), %edi
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %ebx
	leal	(%eax,%ebx,8), %eax
	cmpl	$159, -416(%ebp)
	je	L1811
	testb	$2, 12(%eax)
	je	L1812
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_getceilzofslopeptr.part.0
	movl	%eax, %edx
L1279:
	movl	%edi, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L796:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	testl	%edi, %edi
	js	L1280
	movswl	_numsectors, %eax
	cmpl	%edi, %eax
	jg	L1281
L1280:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1813
L1282:
	orl	$4, _vm+12
	jmp	L936
L793:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %esi
	movl	-416(%ebp), %edx
	movl	%eax, %ebx
	ja	L1814
	testl	%eax, %eax
	js	L1321
	cmpl	$164, %edx
	je	L1322
	movswl	_numsectors, %eax
	cmpl	%eax, %ebx
	jge	L1815
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %edx
	cmpl	%ebx, %edx
	je	L936
	cmpw	$4096, %bx
	ja	L936
	cmpw	%bx, %dx
	je	L936
	cmpw	$4096, %dx
	je	L936
	movswl	%si, %eax
	call	_do_deletespritesect
	movswl	%bx, %edx
	movswl	%si, %eax
	call	_do_insertsprite_at_headofsect
	jmp	L936
	.p2align 4,,10
	.p2align 3
L779:
	addl	$4, _insptr
	cmpl	$181, %edx
	movl	$1, %eax
	sete	%dl
	movzbl	%dl, %edx
	call	_editorFlipHighlightedSectors
	jmp	L936
L778:
	addl	$4, _insptr
	cmpl	$182, %edx
	sete	%dl
	xorl	%eax, %eax
	movzbl	%dl, %edx
	call	_editorFlipHighlightedSectors
	jmp	L936
L929:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edi
	movl	4(%edi), %edx
	movl	(%edi), %ebx
	leal	12(%edi), %esi
	movl	%edi, -424(%ebp)
	leal	(%esi,%edx,8), %ecx
	movl	%ebx, -416(%ebp)
	subl	$1, %edx
	xorl	%ebx, %ebx
	movl	%ecx, -420(%ebp)
	movl	%eax, %ecx
L942:
	leal	(%edx,%ebx), %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	cmpl	%ecx, (%esi,%eax,8)
	jle	L938
	leal	-1(%eax), %edx
L939:
	cmpl	%ebx, %edx
	jge	L942
	movl	-424(%ebp), %edi
	movl	-420(%ebp), %ecx
	movl	8(%edi), %eax
	testl	%eax, %eax
	jns	L1777
L941:
	movl	-416(%ebp), %eax
	andl	$-3, _vm+12
	leal	(%ecx,%eax,4), %eax
	movl	%eax, _insptr
	jmp	L936
L789:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1304
	movswl	_numsectors, %eax
	cmpl	%edx, %eax
	jg	L1305
L1304:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1816
L1306:
	orl	$4, _vm+12
	jmp	L936
L785:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cwtl
	call	_fixrepeats
	jmp	L936
L784:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	$0, 4(%esp)
	movl	%esi, %edx
	movl	$255, (%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	call	_paletteGetClosestColorWithBlacklist
	movl	%eax, %edx
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L783:
	addl	$4, _insptr
	call	_update_highlight
	jmp	L936
L782:
	addl	$4, _insptr
	call	_update_highlightsector
	jmp	L936
L787:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	jbe	L1309
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1817
L1310:
	orl	$4, _vm+12
	jmp	L936
L786:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cwtl
	call	_sectorofwall
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L788:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	jbe	L1307
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1818
L1308:
	orl	$4, _vm+12
	jmp	L936
L917:
	movl	8(%edi), %edx
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L916:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	addl	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L915:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	subl	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L914:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	imull	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L913:
	movl	8(%edi), %esi
	leal	4(%edi), %edx
	movl	%edx, _insptr
	testl	%esi, %esi
	jne	L975
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	$-2, %ecx
	jge	L1819
L976:
	leal	8(%edx), %eax
	orl	$4, _vm+12
	movl	%eax, _insptr
	jmp	L936
L912:
	movl	8(%edi), %ebx
	leal	4(%edi), %edx
	movl	%edx, _insptr
	testl	%ebx, %ebx
	jne	L977
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	cmpl	%ebx, %ecx
	cmovl	%ebx, %ecx
	cmpl	$-2, %ecx
	jge	L1820
L978:
	leal	8(%edx), %eax
	orl	$4, _vm+12
	movl	%eax, _insptr
	jmp	L936
L911:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	andl	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L910:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	orl	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L909:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	xorl	4(%ecx), %eax
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L908:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ebx
	movl	4(%ebx), %ecx
	sall	%cl, %eax
	movl	(%ebx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L907:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ebx
	movl	4(%ebx), %ecx
	sarl	%cl, %eax
	movl	(%ebx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L906:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	imull	$1664525, _randomseed, %esi
	movl	%eax, _insptr
	addl	$221297, %esi
	movl	%esi, _randomseed
	call	@_Z9Gv_GetVari@4
	leal	1(%eax), %edx
	movl	%esi, %eax
	shrl	$16, %eax
/APP
 # 684 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L905:
	leal	8(%edi), %eax
	movl	4(%edi), %esi
	movl	%eax, _insptr
	call	_rand
	movzwl	%ax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	leal	1(%eax), %edx
	movl	%ebx, %eax
/APP
 # 692 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%esi, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L904:
	movl	8(%edi), %ecx
	movl	4(%edi), %ebx
	leal	12(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L903:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	leal	(%ebx,%eax), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L902:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	subl	%eax, %ebx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L921:
	movl	8(%edi), %ecx
	movl	4(%edi), %ebx
	leal	12(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	%ebx, %eax
	call	__ZL10CheckArrayi
	movl	%ebx, %edx
	sall	$4, %edx
	testb	$16, _aGameArrays+9(%edx)
	jne	L1821
L949:
	leal	-1(%esi), %eax
	cmpl	$65535, %eax
	ja	L951
	testb	$4, _vm+12
	jne	L936
	leal	0(,%esi,4), %edi
	sall	$4, %ebx
	movl	%edi, 4(%esp)
	movl	_aGameArrays+4(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	je	L954
	movl	%eax, _aGameArrays+4(%ebx)
	movl	%esi, _aGameArrays+12(%ebx)
	jmp	L936
L920:
	movl	4(%edi), %ebx
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	%eax, _insptr
	movl	%ebx, -420(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	4(%eax), %ecx
	leal	8(%eax), %edx
	movl	(%eax), %esi
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	%ebx, %eax
	call	__ZL10CheckArrayi
	movl	%esi, %eax
	call	__ZL10CheckArrayi
	movl	%esi, %eax
	sall	$4, %eax
	testb	$16, _aGameArrays+9(%eax)
	jne	L955
	testb	$4, _vm+12
	jne	L936
	movl	-420(%ebp), %eax
	sall	$4, %eax
	movl	_aGameArrays+12(%eax), %ebx
	testb	$32, _aGameArrays+8(%eax)
	jne	L1822
L958:
	movl	%esi, %eax
	sall	$4, %eax
	movl	_aGameArrays+12(%eax), %edx
	testb	$32, _aGameArrays+8(%eax)
	jne	L1823
L959:
	movl	%edi, %ecx
	cmpl	%ebx, %edi
	jnb	L1824
L960:
	cmpl	%edx, -416(%ebp)
	jnb	L962
	testb	$4, _vm+12
	jne	L936
	movl	-424(%ebp), %eax
	subl	%edi, %ebx
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	%edx, %eax
	subl	-416(%ebp), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	-420(%ebp), %eax
	sall	$4, %eax
	movl	%eax, -424(%ebp)
	movl	_aGameArrays+8(%eax), %eax
	movl	%eax, %edx
	andl	$7, %edx
	cmpl	$2, %edx
	je	L965
	ja	L966
	testl	%edx, %edx
	je	L967
	movl	-416(%ebp), %eax
	sall	$4, %esi
	leal	(%ebx,%edi), %edx
	movl	%esi, %edi
	sall	$2, %eax
	testl	%ebx, %ebx
	jle	L936
	movl	%edx, -416(%ebp)
	movl	-424(%ebp), %ebx
L974:
	movl	_aGameArrays+4(%ebx), %esi
	movl	_aGameArrays+4(%edi), %edx
	movzbl	(%esi,%ecx), %esi
	addl	$1, %ecx
	movl	%esi, (%edx,%eax)
	addl	$4, %eax
	cmpl	-416(%ebp), %ecx
	jne	L974
	jmp	L936
	.p2align 4,,10
	.p2align 3
L919:
	leal	4(%edi), %eax
	movl	8(%edi), %ebx
	movl	%eax, _insptr
	imull	$1664525, _randomseed, %eax
	leal	1(%ebx), %edx
	addl	$221297, %eax
	movl	%eax, _randomseed
	shrl	$16, %eax
/APP
 # 608 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%edi), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L918:
	addl	$4, _insptr
	call	_rand
	movl	_insptr, %ecx
	movzwl	%ax, %eax
	movl	4(%ecx), %ebx
	leal	1(%ebx), %edx
/APP
 # 614 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L923:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	%ebx, %eax
	call	__ZL10CheckArrayi
	movl	%ebx, %eax
	sall	$4, %eax
	testb	$16, _aGameArrays+9(%eax)
	jne	L1825
L944:
	testl	%esi, %esi
	js	L946
	sall	$4, %ebx
	cmpl	%esi, _aGameArrays+12(%ebx)
	jle	L946
	testb	$4, _vm+12
	jne	L936
	movl	_aGameArrays+4(%ebx), %eax
	movl	%edi, (%eax,%esi,4)
	jmp	L936
L922:
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	4(%edi), %eax
	call	__ZL10CheckArrayi
	jmp	L936
L747:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	movl	%eax, %ebx
	movl	_insptr, %eax
	addl	$4, %eax
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%eax, _insptr
	cmpl	$-2, %edx
	jge	L1826
L1523:
	addl	$4, %eax
	orl	$4, _vm+12
	movl	%eax, _insptr
	jmp	L936
L745:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_palookup, %edx
	movzbl	%al, %eax
	movzbl	(%edx,%eax), %eax
	cmpl	$2, _rendmode
	jg	L1827
	movl	%eax, 4(%esp)
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	-416(%ebp), %eax
	call	__ZL14drawlinepixelsiiiic.lto_priv.0
	jmp	L936
L741:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	jmp	L936
L932:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %eax
	movl	%eax, _insptr
	jmp	L936
L931:
	orl	$1, _vm+12
	jmp	L739
L930:
	orl	$2, _vm+12
	jmp	L739
L927:
	leal	8(%edi), %edx
	movl	4(%edi), %ecx
	movl	%edx, _insptr
	sarl	$2, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L926:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1828
L943:
	orl	$4, _vm+12
	jmp	L936
L795:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -280(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -276(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -272(%ebp)
	cmpl	$16383, %ebx
	jbe	L1269
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1829
L1270:
	orl	$4, _vm+12
	jmp	L936
L794:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%ebx, %ebx
	js	L1284
	movswl	_numsectors, %edx
	cmpl	%ebx, %edx
	jg	L1285
L1284:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1830
L1286:
	orl	$4, _vm+12
	jmp	L936
L869:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	(%eax), %edx
	jnb	L1831
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1129
	movl	%edx, _insptr
	jmp	L936
L868:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	(%eax), %edx
	jb	L1832
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1131
	movl	%edx, _insptr
	jmp	L936
L867:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jnb	L1833
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1133
	movl	%edx, _insptr
	jmp	L936
L866:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	je	L1834
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1030
	movl	%edx, _insptr
	jmp	L936
L865:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jne	L1835
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1032
	movl	%edx, _insptr
	jmp	L936
L864:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	testl	%edx, (%eax)
	jne	L1836
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1107
	movl	%edx, _insptr
	jmp	L936
L863:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	orl	(%edx), %eax
	jne	L1837
	movl	4(%edx), %eax
	leal	4(%edx,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1109
	movl	%edx, _insptr
	jmp	L936
L862:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jne	L1838
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1111
	movl	%edx, _insptr
	jmp	L936
L861:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%eax, %eax
	movl	_insptr, %eax
	jne	L1112
	movl	(%eax), %edi
	testl	%edi, %edi
	jne	L1112
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1114
	movl	%edx, _insptr
	jmp	L936
L860:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%eax, %eax
	movl	_insptr, %eax
	je	L1115
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L1115
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L859:
	leal	8(%edi), %ebx
	.p2align 4
	.p2align 3
L1034:
	movl	4(%edi), %ecx
	movl	%ebx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	(%eax), %edx
	je	L1839
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1036
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1035:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L838:
	imull	$1664525, _randomseed, %eax
	movl	4(%edi), %ecx
	leal	221297(%eax), %ebx
	leal	4(%edi), %eax
	movl	%ebx, _randomseed
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	$255, %edx
	movl	_insptr, %ecx
	movl	%eax, %esi
	movl	%ebx, %eax
	shrl	$24, %eax
	subl	%esi, %edx
	cmpl	%edx, %eax
	jge	L1840
	movl	4(%ecx), %eax
	leal	4(%ecx,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1135
	movl	%edx, _insptr
	jmp	L936
L837:
	leal	4(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1165
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1166
	cmpw	$3, _searchstat
	je	L1841
L1166:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1842
L1167:
	orl	$4, _vm+12
	jmp	L936
L901:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	imull	%eax, %ebx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L900:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L979
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1843
L980:
	orl	$4, _vm+12
	jmp	L936
L899:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L981
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1844
L982:
	orl	$4, _vm+12
	jmp	L936
L898:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	andl	%eax, %ebx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L897:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	orl	%eax, %ebx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L896:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	xorl	%eax, %ebx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L895:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%esi, %ecx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L894:
	movl	4(%edi), %esi
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	%esi, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	sarl	%cl, %ebx
	movl	%esi, %ecx
	movl	%ebx, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L893:
	movl	8(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L892:
	movl	8(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L891:
	addl	$4, _insptr
	call	_rand
	movl	_insptr, %ecx
	leal	4(%ecx), %edx
	movl	(%ecx), %ecx
	movl	%edx, _insptr
	movzwl	%ax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L890:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movl	%eax, %edx
	movl	_insptr, %eax
	cvtsi2ssl	%edx, %xmm0
	cvtsi2ssl	4(%eax), %xmm1
	movl	(%eax), %ecx
	divss	%xmm1, %xmm0
	movss	%xmm0, -416(%ebp)
	movl	-416(%ebp), %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L889:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ebx
	xorps	%xmm0, %xmm0
	movl	%eax, -416(%ebp)
	cvtsi2ssl	4(%ebx), %xmm0
	mulss	-416(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	(%ebx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L888:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %ecx
	movl	%eax, %edi
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %esi
	jg	L1845
	cmpl	%eax, %edi
	jge	L936
	movl	%edi, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L887:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	negl	%eax
	movl	%eax, %edx
	movl	_insptr, %eax
	movl	4(%eax), %ecx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L886:
	movl	4(%edi), %ecx
	leal	12(%edi), %eax
	movl	8(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	call	@ksqrt@4
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L877:
	movl	4(%edi), %ebx
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %eax
	addl	$8, _insptr
	call	__ZL10CheckArrayi
	jmp	L936
L876:
	movl	4(%edi), %ebx
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %eax
	addl	$4, _insptr
	call	__ZL10CheckArrayi
	jmp	L936
L875:
	movl	4(%edi), %eax
	movl	8(%edi), %esi
	movl	%eax, -416(%ebp)
	cmpl	$7, %esi
	jg	L1057
	leal	12(%edi), %eax
	xorl	%edx, %edx
	movl	%eax, -420(%ebp)
L1058:
	movl	-420(%ebp), %eax
	movl	(%eax), %ebx
	movl	%ebx, -424(%ebp)
	leal	4(%eax), %ebx
	movl	_vm+12, %eax
	movl	%ebx, _insptr
	movl	%eax, %ecx
	testb	$4, %al
	jne	L936
	movl	_vm, %edi
	movl	%edi, -408(%ebp)
	movl	_vm+8, %edi
	movl	%edi, -460(%ebp)
	cmpl	$11, %esi
	ja	L1059
	jmp	*L1061(,%esi,4)
	.section .rdata,"dr"
	.align 4
L1061:
	.long	L1072
	.long	L1071
	.long	L1070
	.long	L1528
	.long	L1068
	.long	L1067
	.long	L1066
	.long	L1065
	.long	L1064
	.long	L1063
	.long	L1062
	.long	L1060
	.text
L874:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jg	L1846
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1123
	movl	%edx, _insptr
	jmp	L936
L873:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jge	L1847
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1125
	movl	%edx, _insptr
	jmp	L936
L872:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jl	L1848
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1119
	movl	%edx, _insptr
	jmp	L936
L871:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jle	L1849
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1121
	movl	%edx, _insptr
	jmp	L936
L870:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	%edx, (%eax)
	jb	L1850
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1127
	movl	%edx, _insptr
	jmp	L936
L881:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	movl	%esi, %eax
	imull	%esi
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
	imull	%ecx
	movl	$2147483647, %ecx
	addl	%esi, %eax
	adcl	%edi, %edx
	cmpl	%eax, %ecx
	movl	$0, %ecx
	sbbl	%edx, %ecx
	jge	L1247
	fnstcw	-398(%ebp)
	movl	%eax, -416(%ebp)
	movl	%ebx, %ecx
	movl	%edx, -412(%ebp)
	fildq	-416(%ebp)
	movzwl	-398(%ebp), %eax
	orb	$12, %ah
	fsqrt
	movw	%ax, -400(%ebp)
	fldcw	-400(%ebp)
	fistpl	-416(%ebp)
	fldcw	-398(%ebp)
	movl	-416(%ebp), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L880:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	movl	%eax, %edx
	call	@getangle@8
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L879:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	andl	$2047, %esi
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	andl	$2047, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	subl	%edx, %eax
/APP
 # 193 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$1023, %eax
	jle	L1778
	leal	-2048(%edx), %eax
	cmpl	$1024, %edx
	cmovg	%eax, %edx
	leal	-2048(%esi), %eax
	cmpl	$1024, %esi
	cmovg	%eax, %ecx
L1778:
	subl	%ecx, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L765:
	leal	8(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	leal	-280(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-276(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	%ebx, %ecx
	movl	%eax, %edx
	imull	$1000, -280(%ebp), %eax
	addl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L885:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%edi, %edx
	movl	%eax, %ecx
	movl	%esi, %eax
/APP
 # 971 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L884:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%edi, 12(%esp)
	movl	%esi, %edi
	movl	%eax, %ecx
	xorl	%eax, %eax
	sarl	$31, %edi
	shldl	%cl, %esi, %edi
	sall	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %edi
	cmovne	%eax, %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_tabledivide64.lto_priv.0
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L934:
	leal	8(%edi), %eax
	movl	4(%edi), %esi
	movl	_aGameArrays+4, %ebx
	leal	-280(%ebp), %edx
	movl	%eax, -420(%ebp)
	movl	_vm+4, %eax
	imull	$44, %esi, %edi
	movl	%eax, -424(%ebp)
	movl	_vm+12, %eax
	andl	$1, %eax
	movl	%eax, -416(%ebp)
	movzwl	8(%edi), %eax
	testw	%ax, %ax
	jne	L1851
L937:
	movl	(%edi), %eax
	addl	$21, %esi
	movl	%edx, _aGameArrays+4
	movl	%esi, _vm+4
	sall	$2, %eax
	movl	%eax, _insptr
	xorl	%eax, %eax
	call	__Z10VM_Executei
	movl	-424(%ebp), %eax
	movl	%ebx, _aGameArrays+4
	movl	%eax, _vm+4
	movl	_vm+12, %eax
	andl	$-2, %eax
	orl	-416(%ebp), %eax
	movl	%eax, _vm+12
	movl	-420(%ebp), %eax
	movl	%eax, _insptr
	jmp	L936
L925:
	xorl	%eax, %eax
	addl	$4, _insptr
	call	__Z10VM_Executei
	jmp	L936
L853:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jle	L1852
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1016
	movl	%edx, _insptr
	jmp	L936
L852:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jb	L1853
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1022
	movl	%edx, _insptr
	jmp	L936
L851:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	jnb	L1854
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1024
	movl	%edx, _insptr
	jmp	L936
L850:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	jb	L1855
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1026
	movl	%edx, _insptr
	jmp	L936
L849:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jnb	L1856
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1028
	movl	%edx, _insptr
	jmp	L936
L848:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	je	L1857
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1012
	movl	%edx, _insptr
	jmp	L936
L847:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jne	L1858
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1010
	movl	%edx, _insptr
	jmp	L936
L846:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%eax, %ebx
	movl	_insptr, %eax
	jne	L1859
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1000
	movl	%edx, _insptr
	jmp	L936
L756:
	leal	8(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1471
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1472
	cmpw	$3, _searchstat
	je	L1860
L1472:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1861
L1473:
	orl	$4, _vm+12
	jmp	L936
L755:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1474
	movl	_vm+4, %ebx
	testl	%ebx, %ebx
	jne	L1475
	cmpw	$3, _searchstat
	je	L1862
L1475:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1863
L1476:
	orl	$4, _vm+12
	jmp	L936
L754:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1477
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1478
	cmpw	$3, _searchstat
	je	L1864
L1478:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1865
L1479:
	orl	$4, _vm+12
	jmp	L936
L753:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1480
	movl	_vm+4, %edx
	testl	%edx, %edx
	jne	L1481
	cmpw	$3, _searchstat
	je	L1866
L1481:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1867
L1482:
	orl	$4, _vm+12
	jmp	L936
L752:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1483
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1484
	cmpw	$3, _searchstat
	je	L1868
L1484:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1869
L1485:
	orl	$4, _vm+12
	jmp	L936
L751:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1486
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1487
	cmpw	$3, _searchstat
	je	L1870
L1487:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1871
L1488:
	orl	$4, _vm+12
	jmp	L936
L750:
	movl	_vm+8, %edx
	addl	$4, _insptr
	testl	%edx, %edx
	jne	L1489
	movl	_vm+4, %edi
	testl	%edi, %edi
	jne	L1490
	cmpw	$3, _searchstat
	je	L1872
L1490:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1873
L1491:
	orl	$4, _vm+12
	jmp	L936
L839:
	leal	8(%edi), %esi
	.p2align 4
	.p2align 3
L1054:
	movl	4(%edi), %ecx
	movl	%esi, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jg	L1874
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1056
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1055:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L857:
	leal	8(%edi), %ebx
	.p2align 4
	.p2align 3
L1042:
	movl	4(%edi), %ecx
	movl	%ebx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	(%eax), %edx
	jl	L1875
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1044
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1043:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L856:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jg	L1876
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1018
	movl	%edx, _insptr
	jmp	L936
L858:
	leal	8(%edi), %ebx
	.p2align 4
	.p2align 3
L1038:
	movl	4(%edi), %ecx
	movl	%ebx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	cmpl	(%eax), %edx
	jne	L1877
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1040
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1039:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L855:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jge	L1878
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1020
	movl	%edx, _insptr
	jmp	L936
L854:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jl	L1879
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1014
	movl	%edx, _insptr
	jmp	L936
L764:
	movl	12(%edi), %eax
	movl	16(%edi), %ebx
	movl	20(%edi), %edx
	movl	4(%edi), %ecx
	movl	%eax, -416(%ebp)
	movl	24(%edi), %eax
	movl	%ebx, -420(%ebp)
	movl	28(%edi), %ebx
	movl	%edx, -424(%ebp)
	leal	-280(%ebp), %edx
	movl	8(%edi), %esi
	movl	%eax, -408(%ebp)
	leal	36(%edi), %eax
	movl	32(%edi), %edi
	movl	%ecx, -468(%ebp)
	movl	%ebx, -460(%ebp)
	movl	%eax, _insptr
	movl	%edx, (%esp)
	movl	%edx, -464(%ebp)
	call	__time32
	movl	-464(%ebp), %edx
	movl	%edx, (%esp)
	call	__localtime32
	movl	-468(%ebp), %ecx
	movl	(%eax), %edx
	movl	%eax, %ebx
	call	@_Z9Gv_SetVarii@8
	movl	4(%ebx), %edx
	movl	%esi, %ecx
	call	@_Z9Gv_SetVarii@8
	movl	8(%ebx), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	12(%ebx), %edx
	movl	-420(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	16(%ebx), %edx
	movl	-424(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	20(%ebx), %esi
	movl	-408(%ebp), %ecx
	leal	1900(%esi), %edx
	call	@_Z9Gv_SetVarii@8
	movl	24(%ebx), %edx
	movl	-460(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	28(%ebx), %edx
	movl	%edi, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L763:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	$4096, %ecx
	movl	%eax, %edx
	movl	$1048576, %eax
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	$4096, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	$1048576, %eax
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	call	_renderSetAspect
	jmp	L936
L762:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	ja	L1880
	movl	%eax, _vm
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
	jmp	L936
L761:
	movl	_vm+8, %ecx
	leal	12(%edi), %edx
	movl	%edx, _insptr
	testl	%ecx, %ecx
	jne	L1455
	movl	_vm+4, %edx
	testl	%edx, %edx
	jne	L1456
	cmpw	$3, _searchstat
	je	L1881
L1456:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1882
L1457:
	orl	$4, _vm+12
	jmp	L936
L760:
	movl	_vm+8, %ebx
	leal	8(%edi), %edx
	movl	_sprite, %ecx
	movl	%edx, _insptr
	testl	%ebx, %ebx
	je	L1883
L1460:
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	movl	4(%edi), %esi
	subl	%ecx, %edx
	mull	%edx
	movl	_vm, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ebx)
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L759:
	movl	_vm+8, %ebx
	leal	8(%edi), %edx
	movl	%edx, _insptr
	testl	%ebx, %ebx
	jne	L1462
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1463
	cmpw	$3, _searchstat
	je	L1884
L1463:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1885
L1464:
	orl	$4, _vm+12
	jmp	L936
L758:
	leal	8(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1465
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1466
	cmpw	$3, _searchstat
	je	L1886
L1466:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1887
L1467:
	orl	$4, _vm+12
	jmp	L936
L757:
	movl	_vm+8, %ebx
	leal	8(%edi), %edx
	movl	%edx, _insptr
	testl	%ebx, %ebx
	jne	L1468
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1469
	cmpw	$3, _searchstat
	je	L1888
L1469:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1889
L1470:
	orl	$4, _vm+12
	jmp	L936
L841:
	leal	8(%edi), %esi
	.p2align 4
	.p2align 3
L1046:
	movl	4(%edi), %ecx
	movl	%esi, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	je	L1890
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1048
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1047:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L840:
	leal	8(%edi), %esi
	.p2align 4
	.p2align 3
L1050:
	movl	4(%edi), %ecx
	movl	%esi, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jne	L1891
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1052
	movl	%edx, _insptr
	movl	_vm+12, %eax
L1051:
	andl	$-3, %eax
	movl	%eax, _vm+12
	jmp	L936
L771:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, _insptr
	call	__ZL19GetMaybeInlineQuotei
	movl	_vm+12, %eax
	testb	$4, %al
	jne	L936
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$16383, %ebx
	ja	L1892
	cmpl	$-2, %edx
	jge	L1893
L1424:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L770:
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	movl	8(%edi), %eax
	call	__ZL19GetMaybeInlineQuotei
	testb	$4, _vm+12
	jne	L936
	movl	%eax, (%esp)
	call	_strlen
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L845:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	orl	%ebx, %eax
	jne	L1894
	movl	(%edx), %eax
	leal	(%edx,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1002
	movl	%edx, _insptr
	jmp	L936
L844:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	jne	L1895
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1004
	movl	%edx, _insptr
	jmp	L936
L843:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	orl	%ebx, %eax
	jne	L1896
	movl	(%edx), %eax
	leal	(%edx,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1006
	movl	%edx, _insptr
	jmp	L936
L842:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	testl	%ebx, %ebx
	je	L1007
	testl	%edx, %edx
	je	L1007
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L791:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	jbe	L1300
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1897
L1301:
	orl	$4, _vm+12
	jmp	L936
L822:
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1205
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1206
	cmpw	$3, _searchstat
	je	L1898
L1206:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1899
L1207:
	orl	$4, _vm+12
	jmp	L936
L821:
	movl	$1, %eax
	addl	$8, _insptr
	call	__Z10VM_Executei
	jmp	L936
L820:
	cmpl	$200, _qsetmode
	je	L1900
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1510
	movl	%edx, _insptr
	jmp	L936
L819:
	cmpl	$200, _qsetmode
	je	L1511
	movl	_m32_2d3dmode, %edx
	testl	%edx, %edx
	je	L1511
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L1511
	movl	_m32_2d3d, %esi
	movl	_searchx, %ebx
	cmpl	%ebx, %esi
	jge	L1511
	movl	_xdim, %eax
	movl	_m32_2d3dsize, %ecx
	cltd
	idivl	%ecx
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jge	L1511
	movl	_m32_2d3d+4, %esi
	movl	_searchy, %ebx
	cmpl	%ebx, %esi
	jge	L1511
	movl	_ydim, %eax
	cltd
	idivl	%ecx
	addl	%esi, %eax
	cmpl	%eax, %ebx
	jge	L1511
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L818:
	cmpw	$3, _searchstat
	je	L1514
	cmpl	$200, _qsetmode
	je	L1515
	cmpw	$16383, _pointhighlight
	jg	L1514
L1515:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1516
	movl	%edx, _insptr
	jmp	L936
L816:
	movzwl	_searchstat, %eax
	subl	$1, %eax
	cmpw	$1, %ax
	jbe	L1901
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1520
	movl	%edx, _insptr
	jmp	L936
L817:
	testw	$-5, _searchstat
	jne	L1902
L1514:
	movl	$1, %eax
	addl	$8, _insptr
	call	__Z10VM_Executei
	jmp	L936
L815:
	testb	$4, _vm+16
	jne	L1903
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1522
	movl	%edx, _insptr
	jmp	L936
L809:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	leal	4(%edx), %ecx
	movl	%ecx, _insptr
	testl	%eax, %eax
	js	L1240
	movswl	_numwalls, %ecx
	cmpl	%eax, %ecx
	jg	L1241
L1240:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1904
L1242:
	orl	$4, _vm+12
	jmp	L936
L808:
	addl	$4, _insptr
	movl	$_cursectnum, 12(%esp)
	movl	_pos+8, %eax
	movl	%eax, 8(%esp)
	movl	_pos+4, %eax
	movl	%eax, 4(%esp)
	movl	_pos, %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	jmp	L936
L806:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -280(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -276(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -272(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	4(%eax), %edi
	movl	16(%eax), %ecx
	leal	20(%eax), %edx
	movl	%edx, _insptr
	movl	(%eax), %ebx
	movl	%edi, -416(%ebp)
	movl	8(%eax), %edi
	movl	%edi, -420(%ebp)
	movl	12(%eax), %edi
	movl	%edi, -424(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	testl	%esi, %esi
	js	L1243
	movswl	_numsectors, %eax
	cmpl	%esi, %eax
	jg	L1244
L1243:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1905
L1245:
	orl	$4, _vm+12
	jmp	L936
L768:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	leal	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, _insptr
	call	__ZL19GetMaybeInlineQuotei
	movl	_vm+12, %eax
	testb	$4, %al
	jne	L936
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$16383, %ebx
	ja	L1906
	cmpl	$-2, %edx
	jge	L1907
L1418:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L811:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	jbe	L1236
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1908
L1237:
	orl	$4, _vm+12
	jmp	L936
L810:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	movl	_insptr, %eax
	leal	4(%eax), %edx
	movl	%edx, _insptr
	cmpl	$16383, %ecx
	jbe	L1238
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1909
L1239:
	orl	$4, _vm+12
	jmp	L936
L813:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%eax, %eax
	js	L1220
	movswl	_numsectors, %edx
	cmpl	%eax, %edx
	jle	L1220
	cmpl	$16383, _Numsprites
	jle	L1223
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1910
L1224:
	orl	$4, _vm+12
	jmp	L936
L883:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %esi
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	imull	%edi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.0
	movl	%esi, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L830:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%edi, %edx
	movl	%eax, %ebx
	movswl	%ax, %ecx
	movl	%esi, %eax
	call	_inside
	cmpl	$-1, %eax
	je	L1911
	movl	_insptr, %edx
	testl	%eax, %eax
	jne	L1912
	movl	(%edx), %eax
	leal	(%edx,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1204
	movl	%eax, _insptr
	jmp	L936
L829:
	movzbl	_keystatus+56, %eax
	orb	_keystatus+184, %al
	je	L1143
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L828:
	movzbl	_keystatus+29, %eax
	orb	_keystatus+157, %al
	je	L1145
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L834:
	leal	4(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1196
	movl	_vm+4, %edx
	testl	%edx, %edx
	jne	L1197
	cmpw	$3, _searchstat
	je	L1913
L1197:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1914
L1198:
	orl	$4, _vm+12
	jmp	L936
L826:
	movl	_vm+8, %ebx
	testl	%ebx, %ebx
	jne	L1174
	movl	_vm+4, %edx
	testl	%edx, %edx
	jne	L1175
	cmpw	$3, _searchstat
	je	L1915
L1175:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1916
L1176:
	orl	$4, _vm+12
	jmp	L936
L825:
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1180
	movl	_vm+4, %edi
	testl	%edi, %edi
	jne	L1181
	cmpw	$3, _searchstat
	je	L1917
L1181:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1918
L1182:
	orl	$4, _vm+12
	jmp	L936
L824:
	movl	_vm+8, %edx
	testl	%edx, %edx
	je	L1919
L1185:
	movswl	24(%edx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	cmpw	$1, 34(%eax,%ecx,8)
	je	L1920
L1188:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1190
	movl	%eax, _insptr
	jmp	L936
L823:
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1191
	movl	_vm+4, %ebx
	testl	%ebx, %ebx
	jne	L1192
	cmpw	$3, _searchstat
	je	L1921
L1192:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1922
L1193:
	orl	$4, _vm+12
	jmp	L936
L827:
	movzbl	_keystatus+42, %eax
	orb	_keystatus+54, %al
	je	L1147
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L836:
	leal	4(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1149
	movl	_vm+4, %ebx
	testl	%ebx, %ebx
	jne	L1150
	cmpw	$3, _searchstat
	je	L1923
L1150:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1924
L1151:
	orl	$4, _vm+12
	jmp	L936
L832:
	leal	4(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1210
	movl	_vm+4, %ecx
	testl	%ecx, %ecx
	jne	L1211
	cmpw	$3, _searchstat
	je	L1925
L1211:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1926
L1212:
	orl	$4, _vm+12
	jmp	L936
L831:
	leal	4(%edi), %edx
	movl	%edx, _insptr
	movl	_vm+8, %edx
	testl	%edx, %edx
	jne	L1215
	movl	_vm+4, %edx
	testl	%edx, %edx
	jne	L1216
	cmpw	$3, _searchstat
	je	L1927
L1216:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1928
L1217:
	orl	$4, _vm+12
	jmp	L936
L833:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %ecx
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1929
L1508:
	orl	$4, _vm+12
	addl	$4, _insptr
	jmp	L936
L835:
	movl	8(%edi), %ecx
	leal	8(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%eax, %eax
	js	L1154
	testl	%ebx, %ebx
	jne	L1550
	cmpl	$16383, %eax
	jle	L1550
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1159
	movl	$LC97, %edx
L1160:
	movl	%eax, 28(%esp)
	movl	%edx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC127, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1698, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1159:
	orl	$4, _vm+12
	jmp	L936
L801:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	cmpl	$16383, %ebx
	ja	L1311
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L1311
L1312:
	cmpl	$16383, %esi
	ja	L1314
	imull	$44, %esi, %eax
	movl	_sprite, %edx
	addl	%edx, %eax
	cmpw	$1024, 26(%eax)
	je	L1314
	testb	$4, _vm+12
	jne	L1315
	imull	$44, %ebx, %ebx
	movswl	24(%eax), %edi
	addl	%ebx, %edx
	movl	(%edx), %ebx
	movl	8(%edx), %ecx
	movl	4(%edx), %esi
	movl	%edi, 16(%esp)
	movl	8(%eax), %edi
	movl	%edi, 12(%esp)
	movl	4(%eax), %edi
	movl	%edi, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edx), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_cansee.constprop.0
	movl	%eax, %edx
L1318:
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L800:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -460(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	movl	4(%eax), %edi
	movl	16(%eax), %ecx
	leal	20(%eax), %edx
	movl	%edx, _insptr
	movl	(%eax), %esi
	movl	%edi, -416(%ebp)
	movl	8(%eax), %edi
	movl	%edi, -420(%ebp)
	movl	12(%eax), %edi
	movl	%edi, -424(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	testl	%ebx, %ebx
	js	L1265
	movswl	_numsectors, %edx
	cmpl	%ebx, %edx
	jg	L1266
L1265:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1930
L1267:
	orl	$4, _vm+12
	jmp	L936
L799:
	movl	4(%edi), %ecx
	leal	4(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	movl	4(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	_insptr, %eax
	movl	8(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	12(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	16(%eax), %ecx
	leal	20(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	cwtl
	movl	(%edx), %ebx
	leal	8(%edx), %ecx
	movl	%ecx, _insptr
	movl	%ebx, -416(%ebp)
	movl	4(%edx), %ebx
	leal	-280(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	-420(%ebp), %esi
	movl	%esi, (%esp)
	movl	-424(%ebp), %eax
	movl	%eax, 4(%esp)
	call	_rotatepoint
	movl	-280(%ebp), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-276(%ebp), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L798:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ecx
	testl	%esi, %esi
	js	L1327
	movswl	_numwalls, %eax
	cmpl	%esi, %eax
	jg	L1328
L1327:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1931
L1329:
	orl	$4, _vm+12
	jmp	L936
L803:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -360(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -356(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -352(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	4(%eax), %ecx
	leal	28(%eax), %edx
	movl	(%eax), %ebx
	movl	%edx, _insptr
	movl	%ecx, -416(%ebp)
	movl	8(%eax), %ecx
	movl	%ecx, -420(%ebp)
	movl	12(%eax), %ecx
	movl	%ecx, -424(%ebp)
	movl	16(%eax), %ecx
	movl	%ecx, -408(%ebp)
	movl	20(%eax), %ecx
	movl	%ecx, -460(%ebp)
	movl	24(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	testl	%esi, %esi
	js	L1255
	movswl	_numsectors, %eax
	cmpl	%esi, %eax
	jg	L1256
L1255:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1932
L1257:
	orl	$4, _vm+12
	jmp	L936
L802:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %edx
	leal	4(%edx), %ecx
	movl	%ecx, _insptr
	testl	%edi, %edi
	js	L1259
	movswl	_numsectors, %ecx
	cmpl	%edi, %ecx
	jle	L1259
	testl	%eax, %eax
	js	L1551
	cmpl	%eax, %ecx
	jg	L1262
L1551:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1933
L1264:
	orl	$4, _vm+12
	jmp	L936
L805:
	movl	4(%edi), %eax
	movl	16(%edi), %ecx
	movl	12(%edi), %ebx
	movl	%eax, -424(%ebp)
	movl	8(%edi), %eax
	movl	%eax, -416(%ebp)
	leal	20(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %edi
	movl	4(%eax), %ecx
	leal	8(%eax), %edx
	movl	%edx, _insptr
	movl	%edi, -420(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -460(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -472(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %ecx
	movl	%eax, -476(%ebp)
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %ecx
	movl	%eax, %edi
	call	@_Z9Gv_GetVari@4
	movl	-420(%ebp), %ecx
	movl	%esi, -272(%ebp)
	movl	%eax, -480(%ebp)
	call	@_Z9Gv_GetVari@4
	movw	%ax, -360(%ebp)
	testw	%ax, %ax
	js	L1251
	cmpw	_numsectors, %ax
	jl	L1252
L1251:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1934
L1253:
	orl	$4, _vm+12
	jmp	L936
L792:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$1024, %eax
	jbe	L1298
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1935
L1299:
	orl	$4, _vm+12
	jmp	L936
L777:
	leal	4(%edi), %eax
	movl	%eax, _insptr
	xorl	%eax, %eax
L1349:
	movl	$0, -280(%ebp,%eax)
	movl	$0, -276(%ebp,%eax)
	movl	$0, -272(%ebp,%eax)
	movl	$0, -268(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1349
	xorl	%eax, %eax
L1351:
	movl	$0, -360(%ebp,%eax)
	movl	$0, -356(%ebp,%eax)
	movl	$0, -352(%ebp,%eax)
	movl	$0, -348(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1351
	movl	4(%edi), %ebx
	movl	%ebx, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	cmpl	$1023, %ebx
	jbe	L1353
	movl	%ebx, %edx
	andl	$12288, %edx
	leal	-4096(%edx), %eax
	testl	$-8192, %eax
	jne	L1354
	movl	%edx, -416(%ebp)
	movl	%ebx, %eax
	testb	$4, %bh
	jne	L1936
	shrl	$12, %eax
	movl	$LC101, %ecx
	leal	-360(%ebp), %edi
	andl	$16368, %eax
	movl	_aGameVars+8(%eax), %eax
	movl	%edi, (%esp)
	testl	%eax, %eax
	cmove	%ecx, %eax
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	-416(%ebp), %edx
L1357:
	cmpl	$8192, %edx
	je	L1366
	movzbl	%bl, %eax
	movl	$LC101, %edx
	sall	$4, %eax
	movl	_aGameArrays(%eax), %eax
	movl	%edi, 16(%esp)
	movl	$LC155, 8(%esp)
	testl	%eax, %eax
	movl	$80, 4(%esp)
	cmove	%edx, %eax
	leal	-280(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	%edx, -416(%ebp)
	call	*__imp___snprintf
	movl	-416(%ebp), %edx
L1360:
	andb	$8, %bh
	movl	$LC105, %eax
	movl	$LC26, %ecx
	cmove	%ecx, %eax
L1373:
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC161, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	addl	$4, _insptr
	jmp	L936
L776:
	addl	$4, _insptr
	movl	%eax, 4(%esp)
	movl	$LC152, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L936
L775:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L1374
	addl	$4, %edi
	movl	%edi, _insptr
	jmp	L936
L774:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ebx
	addl	$12, %edi
	movl	-8(%edi), %ecx
	movl	%edi, _insptr
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	cmpl	$16383, %ecx
	ja	L1937
	cmpl	$-2, %edx
	jge	L1938
L1377:
	orl	$4, _vm+12
	jmp	L936
L781:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	cmpw	$0, _highlightsectorcnt
	jns	L1939
	andl	$16384, %esi
	je	L1332
	movl	%ebx, %ecx
	andb	$-65, %ch
	cmpl	$16383, %ecx
	ja	L1333
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L1333
	sarl	$3, %ecx
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %eax
	movzbl	_show2dsprite(%ecx), %ebx
	orl	%eax, %ebx
	notl	%eax
	andb	_show2dsprite(%ecx), %al
	testl	%edx, %edx
	cmovne	%ebx, %eax
	movb	%al, _show2dsprite(%ecx)
L1337:
	orl	$1, _vm+16
	jmp	L936
L790:
	movl	8(%edi), %ecx
	leal	12(%edi), %eax
	movl	4(%edi), %ebx
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	cmpl	$16383, %eax
	jbe	L1302
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1940
L1303:
	orl	$4, _vm+12
	jmp	L936
L780:
	movl	4(%edi), %ecx
	leal	8(%edi), %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	cmpw	$0, _highlightcnt
	jns	L1941
	testl	%ebx, %ebx
	js	L1344
	movswl	_numsectors, %eax
	cmpl	%ebx, %eax
	jle	L1344
	movl	%ebx, %ecx
	movl	%ebx, %eax
	sarl	$3, %ecx
	andl	$7, %eax
	movzbl	_hlsectorbitmap(%ecx), %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%eax), %eax
	orl	%eax, %ebx
	notl	%eax
	andb	_hlsectorbitmap(%ecx), %al
	testl	%edx, %edx
	cmovne	%ebx, %eax
	movb	%al, _hlsectorbitmap(%ecx)
	orl	$2, _vm+16
	jmp	L936
L1115:
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1117
	movl	%edx, _insptr
	jmp	L936
L1147:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1148
	movl	%edx, _insptr
	jmp	L936
L1143:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1144
	movl	%edx, _insptr
	jmp	L936
L1145:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1146
	movl	%edx, _insptr
	jmp	L936
L1007:
	movl	(%eax), %edx
	leal	(%eax,%edx,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1008
	movl	%edx, _insptr
	jmp	L936
L1511:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1513
	movl	%edx, _insptr
	jmp	L936
	.p2align 4,,10
	.p2align 3
L1875:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1042
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1890:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1046
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1891:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1050
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1839:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1034
	jmp	L1035
	.p2align 4,,10
	.p2align 3
L1874:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1054
	jmp	L1055
	.p2align 4,,10
	.p2align 3
L1877:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	testl	%eax, %eax
	je	L1038
	jmp	L1039
	.p2align 4,,10
	.p2align 3
L938:
	jge	L940
	leal	1(%eax), %ebx
	jmp	L939
L1052:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1051
L1036:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1035
L1056:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1055
L1040:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1039
L1044:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1043
L1048:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	jmp	L1047
L1112:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1302:
	movswl	_nextspritestat(%eax,%eax), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1298:
	movswl	_headspritestat(%eax,%eax), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1238:
	movl	(%eax), %ebx
	movl	%ecx, %edx
	movl	$10, %eax
	movl	$0, _g_iReturnVar
	call	__Z10VM_OnEventii
	movl	_g_iReturnVar, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1236:
	cwtl
	call	_deletesprite
	movl	%eax, _g_iReturnVar
	jmp	L936
L1300:
	movswl	_prevspritestat(%eax,%eax), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L977:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	cltd
	idivl	4(%ecx)
	movl	(%ecx), %ecx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L975:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_insptr, %ecx
	cltd
	idivl	4(%ecx)
	movl	(%ecx), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	addl	$8, _insptr
	jmp	L936
L1781:
	movl	-416(%ebp), %edx
	cmpl	$191, %edx
	jg	L1942
	leal	-188(%edx), %eax
	cmpl	$3, %eax
	ja	L936
	jmp	*L1526(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1526:
	.long	L1406
	.long	L1407
	.long	L1406
	.long	L1408
	.text
L1247:
	movl	%eax, %ecx
	call	@ksqrt@4
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1309:
	movswl	_nextspritesect(%eax,%eax), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1307:
	movswl	_prevspritesect(%eax,%eax), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L981:
	movl	%ebx, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %ecx
	cltd
	idivl	%esi
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L979:
	movl	%ebx, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%ebx, %ecx
	cltd
	idivl	%esi
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1269:
	leal	-280(%ebp), %edx
	movswl	%bx, %ebx
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	_setsprite
	jmp	L936
L1806:
	movl	%edi, %ecx
	addl	$4, %eax
	movl	%edx, -424(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movswl	_sintable(%ebx,%ebx), %ebx
	movswl	_sintable(%esi,%esi), %esi
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	movl	4(%eax), %ecx
	movl	(%eax), %edi
	movl	%ecx, -416(%ebp)
	cmpl	$69, -424(%ebp)
	jne	L1943
	leal	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, _insptr
	movl	-420(%ebp), %edx
	movl	%eax, -408(%ebp)
	subl	$100, %edx
	jne	L1944
L998:
	movl	-408(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L997
L1919:
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1186
	cmpw	$3, _searchstat
	je	L1945
L1186:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1946
L1187:
	orl	$4, _vm+12
	jmp	L936
L1883:
	movl	_vm+4, %esi
	testl	%esi, %esi
	jne	L1459
	cmpw	$3, _searchstat
	je	L1947
L1459:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1948
L1461:
	orl	$4, _vm+12
	jmp	L936
L1272:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1949
L1274:
	orl	$4, _vm+12
	jmp	L936
L1281:
	cmpl	$161, -416(%ebp)
	movswl	%di, %eax
	movl	%ecx, (%esp)
	movl	%ebx, %edx
	movl	%esi, %ecx
	je	L1950
	call	_alignceilslope
	jmp	L936
L1494:
	negl	%ecx
	movzbl	%cl, %eax
	jmp	L1495
L1374:
	leal	8(%edi), %eax
	movl	%eax, _insptr
	movl	4(%edi), %eax
	movl	$LC153, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2543, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L936
L1888:
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1468:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	leal	17(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_vm, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 17(%ecx)
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L1915:
	movswl	_searchwall, %ebx
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	movl	%ebx, _vm+8
L1174:
	movzwl	24(%ebx), %eax
	leal	-280(%ebp), %edx
	movw	%ax, -280(%ebp)
	movl	%edx, 8(%esp)
	movl	4(%ebx), %eax
	movl	%edx, -416(%ebp)
	addl	$108, %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	addl	$108, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	24(%ebx), %eax
	cmpw	%ax, -280(%ebp)
	movl	_insptr, %esi
	movl	-416(%ebp), %edx
	je	L1951
L1177:
	movl	4(%esi), %eax
	leal	4(%esi,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1179
	movl	%eax, _insptr
	jmp	L936
L1913:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1196:
	movl	4(%edi), %ecx
	movswl	14(%edx), %ebx
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	je	L1952
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1200
	movl	%eax, _insptr
	jmp	L936
L1886:
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1465:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_vm, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 18(%ecx)
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L1872:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1489:
	movswl	24(%edx), %eax
	movl	_sector, %esi
	movl	$9, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	movswl	16(%eax), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1870:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1486:
	movswl	24(%edx), %eax
	movl	_sector, %edx
	movl	$9, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	24(%eax), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1868:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1483:
	movswl	24(%edx), %eax
	movl	_sector, %ebx
	movl	$8, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movswl	36(%eax), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1866:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1480:
	movswl	24(%edx), %eax
	movl	_sector, %edi
	movl	$7, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	movswl	34(%eax), %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1864:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1477:
	movswl	40(%edx), %edx
	movl	$8, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1862:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1474:
	movswl	38(%edx), %edx
	movl	$7, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1860:
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1471:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	leal	14(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_vm, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 14(%ecx)
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L1898:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1205:
	movswl	24(%edx), %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	testb	$1, 12(%eax)
	jne	L1953
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1209
	movl	%eax, _insptr
	jmp	L936
L1921:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1191:
	movswl	24(%edx), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	cmpw	$2, 34(%eax)
	je	L1954
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1195
	movl	%eax, _insptr
	jmp	L936
L1841:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1165:
	movzwl	_ang, %ecx
	movzwl	28(%edx), %edx
	movl	%ecx, %ebx
	andl	$2047, %ecx
	movl	%edx, %esi
	andl	$2047, %edx
	movl	%ecx, %eax
	andw	$2047, %bx
	andw	$2047, %si
	subl	%edx, %eax
/APP
 # 193 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$1023, %eax
	jle	L1780
	leal	-2048(%edx), %eax
	cmpw	$1024, %si
	cmovg	%eax, %edx
	leal	-2048(%ecx), %eax
	cmpw	$1024, %bx
	cmovg	%eax, %ecx
L1780:
	movl	%edx, %eax
	subl	%ecx, %eax
/APP
 # 1714 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	4(%edi), %ecx
	movl	%eax, %ebx
	call	@_Z9Gv_GetVari@4
	cmpl	%ebx, %eax
	movl	_insptr, %eax
	jge	L1955
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1173
	movl	%eax, _insptr
	jmp	L936
L1927:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1215:
	movl	$_pos, %eax
	call	_dist
	movl	4(%edi), %ecx
	movl	%eax, %ebx
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	jg	L1956
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1219
	movl	%eax, _insptr
	jmp	L936
L1884:
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1462:
	movl	4(%edi), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %ebx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_vm, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	%bx, 12(%ecx)
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L1917:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1180:
	movswl	_cursectnum, %esi
	movl	4(%edx), %ebx
	movl	8(%edx), %ecx
	movl	(%edx), %eax
	movl	%esi, 16(%esp)
	movl	_pos+8, %esi
	movl	%esi, 12(%esp)
	movl	_pos+4, %esi
	movl	%esi, 8(%esp)
	movl	_pos, %esi
	movl	%esi, 4(%esp)
	movswl	24(%edx), %edx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	_cansee.constprop.0
	testl	%eax, %eax
	movl	_insptr, %eax
	jne	L1957
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1184
	movl	%eax, _insptr
	jmp	L936
L1925:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1210:
	movl	$_pos, %eax
	call	_dist
	movl	4(%edi), %ecx
	movl	%eax, %ebx
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	jl	L1958
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1214
	movl	%eax, _insptr
	jmp	L936
L1881:
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1455:
	movl	4(%edi), %ecx
	movl	$-1171354717, %ebx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %esi
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 20(%ecx)
	movl	_insptr, %eax
	movl	-4(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	_vm+8, %ecx
	movl	%eax, %esi
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 21(%ecx)
	movl	_vm, %eax
	cmpl	$-1, %eax
	je	L936
	addl	$1, _spritechanged(,%eax,4)
	jmp	L936
L1923:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1149:
	movl	4(%edi), %ecx
	movzbl	17(%edx), %ebx
	call	@_Z9Gv_GetVari@4
	cmpl	%eax, %ebx
	movl	_insptr, %eax
	je	L1959
	movl	4(%eax), %edx
	leal	4(%eax,%edx,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1153
	movl	%eax, _insptr
	jmp	L936
L1311:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1960
L1313:
	orl	$4, _vm+12
	jmp	L1312
L984:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1961
L986:
	orl	$4, _vm+12
	jmp	L985
L1225:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1962
L1227:
	orl	$4, _vm+12
	jmp	L1226
L1880:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1963
L1454:
	orl	$4, _vm+12
	jmp	L936
L1929:
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC176, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3181, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1508
L1810:
	call	_lintersect
	movl	%eax, %esi
	jmp	L1249
L1827:
	call	_paletteGetColor
	movl	%edi, (%esp)
	movl	%esi, %ecx
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	movl	%edx, 12(%esp)
	movzbl	%ah, %edx
	movzbl	%al, %eax
	movl	%edx, 8(%esp)
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	-416(%ebp), %eax
	call	__ZL10drawlinegliiii9palette_t.isra.0
	jmp	L936
L1826:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC176, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3219, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_insptr, %eax
	jmp	L1523
L1825:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1964
L945:
	orl	$4, _vm+12
	jmp	L944
L1057:
	movl	12(%edi), %ecx
	addl	$16, %edi
	movl	%edi, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edx
	movl	_insptr, %eax
	movl	%eax, -420(%ebp)
	jmp	L1058
L955:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1965
L957:
	orl	$4, _vm+12
	jmp	L936
L1821:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jge	L1966
L950:
	orl	$4, _vm+12
	jmp	L949
L1288:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
L1290:
	movzwl	24(%eax), %eax
	movw	%ax, -280(%ebp)
	cmpl	$146, %edx
	je	L1293
	cmpl	$147, %edx
	je	L1294
	cmpl	$145, %edx
	je	L1295
	leal	-280(%ebp), %edx
	movl	%edi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, (%esp)
	call	_updatesector
L1297:
	movswl	-280(%ebp), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1851:
	sall	$2, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, -408(%ebp)
	call	_memset
	movl	-408(%ebp), %edx
	jmp	L937
L1845:
	movl	%esi, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1791:
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC176, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$3238, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1524
L1788:
	movl	%edi, %ecx
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, %edi
	movl	_insptr, %eax
	jmp	L1425
L951:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1967
L953:
	orl	$4, _vm+12
	jmp	L936
L1911:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1968
L1202:
	orl	$4, _vm+12
	jmp	L936
L1783:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1969
L1137:
	orl	$4, _vm+12
	jmp	L936
L1902:
	cmpl	$200, _qsetmode
	je	L1517
	cmpw	$0, _linehighlight
	jns	L1514
L1517:
	movl	4(%edi), %eax
	leal	4(%edi,%eax,4), %edx
	movl	(%edx), %eax
	andl	$4095, %eax
	cmpl	$10, %eax
	je	L1518
	movl	%edx, _insptr
	jmp	L936
L1785:
	movl	_insptr, %eax
	movl	(%eax), %ecx
	addl	$4, %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-416(%ebp), %edx
	movl	%eax, %esi
	jmp	L1287
L1828:
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC109, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$468, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L943
L1550:
	cmpl	$2, %ebx
	jne	L1157
	movswl	_numwalls, %edx
	cmpl	%eax, %edx
	jg	L1158
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1159
	movl	$LC98, %edx
	jmp	L1160
L1259:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1970
L1261:
	orl	$4, _vm+12
	jmp	L936
L1220:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1971
L1222:
	orl	$4, _vm+12
	jmp	L936
L1256:
	movl	%edx, 24(%esp)
	leal	-280(%ebp), %edx
	movswl	%si, %esi
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	-468(%ebp), %eax
	leal	-360(%ebp), %edi
	movl	%eax, 12(%esp)
	movl	-464(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_hitscan
	movswl	-264(%ebp), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	movswl	-266(%ebp), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movswl	-268(%ebp), %edx
	movl	-420(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-280(%ebp), %edx
	movl	-424(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-276(%ebp), %edx
	movl	-408(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-272(%ebp), %edx
	movl	-460(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1938:
	movl	%ecx, 24(%esp)
	movl	$LC162, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC7, 12(%esp)
	movl	$2551, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1377
L1241:
	movl	(%edx), %ebx
	cwtl
	call	_lastwall
	movl	%eax, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1305:
	movswl	_headspritesect(%edx,%edx), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1328:
	movl	$0, (%esp)
	movswl	%si, %eax
	movl	%ebx, %edx
	call	_dragpoint
	jmp	L936
L1266:
	movzbl	%al, %eax
	movl	%edi, 36(%esp)
	leal	-280(%ebp), %edx
	movswl	%bx, %ebx
	movl	%eax, 40(%esp)
	leal	-392(%ebp), %eax
	leal	-360(%ebp), %edi
	movl	%eax, 28(%esp)
	leal	-376(%ebp), %eax
	movl	%edx, 32(%esp)
	movl	$0, 44(%esp)
	movl	%eax, 24(%esp)
	movl	%edi, 20(%esp)
	movswl	-468(%ebp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 16(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-460(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-408(%ebp), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movswl	-360(%ebp), %edx
	movl	%esi, %ecx
	call	@_Z9Gv_SetVarii@8
	movswl	-376(%ebp), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movswl	-392(%ebp), %edx
	movl	-420(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-280(%ebp), %edx
	movl	-424(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1252:
	movl	-480(%ebp), %eax
	movl	%edi, -280(%ebp)
	leal	-280(%ebp), %edx
	leal	-360(%ebp), %edi
	movl	%eax, -276(%ebp)
	movl	-476(%ebp), %eax
	movl	%eax, 28(%esp)
	movl	-472(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-468(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	-464(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-460(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-408(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_clipmove
	movl	-424(%ebp), %ecx
	movl	-280(%ebp), %esi
	movl	%eax, %edx
	movl	-276(%ebp), %edi
	call	@_Z9Gv_SetVarii@8
	movswl	-360(%ebp), %edx
	movl	-420(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	movl	%edi, %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1244:
	leal	-396(%ebp), %eax
	movl	%edx, 28(%esp)
	movswl	%si, %esi
	leal	-280(%ebp), %edx
	movl	%eax, 20(%esp)
	leal	-392(%ebp), %eax
	movl	%edi, 24(%esp)
	leal	-360(%ebp), %edi
	movl	%eax, 16(%esp)
	leal	-376(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	%edx, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	call	_getzrange
	movl	-360(%ebp), %edx
	movl	%ebx, %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-376(%ebp), %edx
	movl	-416(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-392(%ebp), %edx
	movl	-420(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	movl	-396(%ebp), %edx
	movl	-424(%ebp), %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1285:
	movswl	%ax, %edx
	movswl	%bx, %eax
	call	_setfirstwall
	jmp	L936
L946:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1972
L948:
	orl	$4, _vm+12
	jmp	L936
L1080:
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	movl	%esi, _vm
	addl	$1, %esi
	addl	_sprite, %edi
	movl	$1, %eax
	movl	%edi, _vm+8
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	cmpl	$16384, %esi
	je	L1083
L1072:
	testl	%eax, %eax
	jne	L1083
	movl	_sprite, %edx
L1081:
	imull	$44, %esi, %edi
	cmpw	$1024, 26(%edx,%edi)
	jne	L1080
	addl	$1, %esi
	cmpl	$16384, %esi
	jne	L1081
L1083:
	movl	-408(%ebp), %ebx
	andl	$-3, %eax
	movl	%eax, _vm+12
	movl	-420(%ebp), %eax
	movl	%ebx, _vm
	movl	-460(%ebp), %ebx
	movl	%ebx, _vm+8
	movl	-424(%ebp), %ebx
	leal	(%eax,%ebx,4), %eax
	movl	%eax, _insptr
	jmp	L936
L1939:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1973
L1331:
	orl	$4, _vm+12
	jmp	L936
L1941:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1974
L1343:
	orl	$4, _vm+12
	jmp	L936
L1016:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1520:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1510:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1002:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1004:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1006:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1522:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1111:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1026:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1028:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1022:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1012:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1000:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1024:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1018:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1010:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1127:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1129:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1131:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1008:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1146:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1144:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1030:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1133:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1032:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1107:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1148:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1109:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1135:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1121:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1119:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1117:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1014:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1020:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1123:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1125:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1406:
	movl	%edx, -416(%ebp)
	movl	%ebx, 4(%esp)
	movl	$LC55, (%esp)
	call	__Z10OSD_PrintfPKcz
	cmpl	$190, -416(%ebp)
	jne	L936
	orl	$4, _vm+12
	jmp	L936
L1321:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L1324
	cmpl	$164, %edx
	movl	$LC99, %eax
	movl	$LC100, %edx
	cmovne	%edx, %eax
L1325:
	movl	%ebx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC147, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2284, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1324:
	orl	$4, _vm+12
	jmp	L936
L1063:
	cmpl	$4095, %edx
	jbe	L1975
L1097:
	movl	_iter_tokens(,%esi,8), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 12(%esp)
	movl	_g_errorLineNum, %eax
	movl	%eax, 8(%esp)
	movl	_osd, %eax
	movl	1112(%eax), %eax
	movl	$LC123, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	orl	$4, _vm+12
	jmp	L936
L1064:
	cmpl	$4095, %edx
	ja	L1097
	movswl	_headspritesect(%edx,%edx), %esi
	testl	%esi, %esi
	js	L1083
	movl	%ecx, %eax
	testl	%ecx, %ecx
	jne	L1083
L1099:
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movl	%esi, _vm
	movl	%eax, _vm+8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_nextspritesect(%esi,%esi), %esi
	testl	%esi, %esi
	js	L1735
	movl	_vm+12, %ecx
	movl	%ecx, %eax
	testl	%ecx, %ecx
	je	L1099
	jmp	L1083
	.p2align 4,,10
	.p2align 3
L1067:
	xorl	%esi, %esi
	cmpw	$0, _highlightsectorcnt
	jle	L1083
L1076:
	testl	%eax, %eax
	jne	L1083
	movswl	_highlightsector(%esi,%esi), %edx
	movl	-416(%ebp), %ecx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_highlightsectorcnt, %edx
	movl	_vm+12, %eax
	cmpl	%esi, %edx
	jg	L1076
	jmp	L1083
L1065:
	movl	_sprite, %esi
	movl	_spritesortcnt, %ecx
	movl	720852(%esi), %edx
	leal	720852(%esi), %edi
	movl	%edx, -280(%ebp)
	movl	4(%edi), %edx
	movl	%edx, -276(%ebp)
	movl	8(%edi), %edx
	movl	%edx, -272(%ebp)
	movl	12(%edi), %edx
	movl	%edx, -268(%ebp)
	movl	16(%edi), %edx
	movl	%edx, -264(%ebp)
	movl	20(%edi), %edx
	movl	%edx, -260(%ebp)
	movl	24(%edi), %edx
	movl	%edx, -256(%ebp)
	movl	28(%edi), %edx
	movl	%edx, -252(%ebp)
	movl	32(%edi), %edx
	movl	%edx, -248(%ebp)
	movl	36(%edi), %edx
	movl	%edx, -244(%ebp)
	movl	40(%edi), %edx
	movl	%edx, -240(%ebp)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jle	L1095
	movl	%esi, -464(%ebp)
L1094:
	testl	%eax, %eax
	jne	L1764
	imull	$44, %edx, %esi
	movl	_tsprite, %eax
	movl	%edi, _vm+8
	movl	%edx, -468(%ebp)
	addl	%esi, %eax
	movl	(%eax), %ecx
	movl	%ecx, (%edi)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edi)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edi)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edi)
	movl	16(%eax), %ecx
	movl	%ecx, 16(%edi)
	movl	20(%eax), %ecx
	movl	%ecx, 20(%edi)
	movl	24(%eax), %ecx
	movl	%ecx, 24(%edi)
	movl	28(%eax), %ecx
	movl	%ecx, 28(%edi)
	movl	32(%eax), %ecx
	movl	%ecx, 32(%edi)
	movl	36(%eax), %ecx
	movl	%ecx, 36(%edi)
	movl	40(%eax), %eax
	movl	-416(%ebp), %ecx
	movl	%eax, 40(%edi)
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movl	_tsprite, %eax
	movl	(%edi), %ecx
	movl	-468(%ebp), %edx
	addl	%esi, %eax
	movl	%ecx, (%eax)
	movl	4(%edi), %ecx
	addl	$1, %edx
	movl	%ecx, 4(%eax)
	movl	8(%edi), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edi), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edi), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edi), %ecx
	movl	%ecx, 20(%eax)
	movl	24(%edi), %ecx
	movl	%ecx, 24(%eax)
	movl	28(%edi), %ecx
	movl	%ecx, 28(%eax)
	movl	32(%edi), %ecx
	movl	%ecx, 32(%eax)
	movl	36(%edi), %ecx
	movl	%ecx, 36(%eax)
	movl	40(%edi), %ecx
	movl	%ecx, 40(%eax)
	movl	_vm+12, %eax
	cmpl	%edx, _spritesortcnt
	jg	L1094
L1764:
	movl	-464(%ebp), %esi
L1095:
	movl	-280(%ebp), %edx
	movl	%edx, 720852(%esi)
	movl	-276(%ebp), %edx
	movl	%edx, 4(%edi)
	movl	-272(%ebp), %edx
	movl	%edx, 8(%edi)
	movl	-268(%ebp), %edx
	movl	%edx, 12(%edi)
	movl	-264(%ebp), %edx
	movl	%edx, 16(%edi)
	movl	-260(%ebp), %edx
	movl	%edx, 20(%edi)
	movl	-256(%ebp), %edx
	movl	%edx, 24(%edi)
	movl	-252(%ebp), %edx
	movl	%edx, 28(%edi)
	movl	-248(%ebp), %edx
	movl	%edx, 32(%edi)
	movl	-244(%ebp), %edx
	movl	%edx, 36(%edi)
	movl	-240(%ebp), %edx
	movl	%edx, 40(%edi)
	jmp	L1083
L1066:
	xorl	%esi, %esi
	cmpw	$0, _highlightcnt
	jle	L1083
L1075:
	testl	%eax, %eax
	jne	L1083
L1092:
	movswl	_highlight(%esi,%esi), %edx
	testb	$-64, %dh
	je	L1091
	movswl	_highlightcnt, %edx
	addl	$1, %esi
	cmpl	%edx, %esi
	jl	L1092
	jmp	L1083
L1060:
	xorl	%esi, %esi
	movl	%edx, %edi
	testl	%edx, %edx
	jle	L1083
L1073:
	testl	%eax, %eax
	jne	L1083
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movl	_vm+12, %eax
	cmpl	%esi, %edi
	jne	L1073
	jmp	L1083
L1528:
	movl	-416(%ebp), %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1069:
	imull	$270, %esi, %eax
	testb	$1, _prlights+254(%eax)
	je	L1086
	movl	%esi, %edx
	movl	%edi, %ecx
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
L1086:
	addl	$1, %esi
	cmpl	$1024, %esi
	jne	L1069
L1735:
	movl	_vm+12, %eax
	jmp	L1083
L1070:
	xorl	%esi, %esi
	cmpw	$0, _numwalls
	jle	L1083
L1078:
	testl	%eax, %eax
	jne	L1083
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_numwalls, %edx
	movl	_vm+12, %eax
	cmpl	%esi, %edx
	jg	L1078
	jmp	L1083
L1068:
	xorl	%esi, %esi
	cmpw	$0, _highlightcnt
	jle	L1083
L1077:
	testl	%eax, %eax
	jne	L1083
L1088:
	movzwl	_highlight(%esi,%esi), %edi
	testl	$49152, %edi
	jne	L1087
	movswl	_highlightcnt, %edx
	addl	$1, %esi
	cmpl	%esi, %edx
	jg	L1088
	jmp	L1083
L1071:
	xorl	%esi, %esi
	cmpw	$0, _numsectors
	jle	L1083
L1079:
	testl	%eax, %eax
	jne	L1083
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_numsectors, %edx
	movl	_vm+12, %eax
	cmpl	%esi, %edx
	jg	L1079
	jmp	L1083
L1407:
	movl	%ebx, 4(%esp)
	movl	$LC163, (%esp)
	call	_message
	jmp	L936
L1408:
	cmpl	$200, _qsetmode
	je	L936
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	movl	%ebx, 4(%esp)
	movl	$LC163, (%esp)
	call	__printmessage16
	jmp	L936
L1062:
	testl	%edx, %edx
	js	L1097
	movswl	_numwalls, %eax
	cmpl	%edx, %eax
	jle	L1097
	movl	%edx, %esi
	movl	%edx, %edi
L1103:
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movl	%esi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	8(%eax), %esi
	movl	_vm+12, %eax
	cmpl	%esi, %edi
	je	L1083
	testl	%eax, %eax
	je	L1103
	jmp	L1083
L1803:
	movl	$0, -424(%ebp)
L1498:
	movl	_zoom, %ecx
	leal	-280(%ebp), %edx
	movl	%ecx, 16(%esp)
	subl	_pos+4, %edi
	movl	%ecx, -408(%ebp)
	movl	%edi, 12(%esp)
	leal	-360(%ebp), %edi
	subl	_pos, %esi
	movl	%esi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	_m32_sideview, %ecx
	movl	-360(%ebp), %edi
	testl	%ecx, %ecx
	jne	L1976
	movl	-416(%ebp), %eax
	movl	-408(%ebp), %edx
/APP
 # 3133 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -416(%ebp)
	movl	$16384, %ecx
L1501:
	movl	-280(%ebp), %esi
	addl	_midydim16, %edi
	addl	_halfxdim16, %esi
	jmp	L1499
L1801:
	movl	_pos+4, %edi
	movl	_zoom, %eax
	movl	%ecx, -464(%ebp)
	leal	-280(%ebp), %edx
	movl	_pos, %ecx
	subl	%edi, %esi
	movl	%eax, 16(%esp)
	subl	%ecx, %ebx
	movl	%edi, -408(%ebp)
	leal	-360(%ebp), %edi
	movl	%eax, -460(%ebp)
	movl	%esi, 12(%esp)
	movl	%ecx, %esi
	movl	%edx, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_editorGet2dScreenCoordinates
	movl	-460(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-420(%ebp), %eax
	subl	-408(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-416(%ebp), %eax
	subl	%esi, %eax
	movl	%eax, 8(%esp)
	leal	-392(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-376(%ebp), %eax
	movl	%eax, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	-392(%ebp), %eax
	movl	-360(%ebp), %esi
	movl	-464(%ebp), %ecx
	movl	%eax, -416(%ebp)
L1493:
	movl	_midydim16, %eax
	movl	-416(%ebp), %edi
	movl	_halfxdim16, %ebx
	addl	%eax, %edi
	addl	%eax, %esi
	movl	%edi, -420(%ebp)
	movl	-376(%ebp), %edi
	addl	%ebx, %edi
	addl	-280(%ebp), %ebx
	movl	%edi, -416(%ebp)
	jmp	L1527
L940:
	movl	-420(%ebp), %ecx
	movl	4(%esi,%eax,8), %eax
L1777:
	leal	(%ecx,%eax,4), %eax
	movl	%eax, _insptr
	xorl	%eax, %eax
	call	__Z10VM_Executei
	movl	-420(%ebp), %ecx
	jmp	L941
L1314:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1977
L1317:
	orl	$4, _vm+12
L1315:
	xorl	%edx, %edx
	jmp	L1318
L987:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1978
L989:
	orl	$4, _vm+12
	jmp	L936
L1353:
	movl	%ebx, %eax
	sall	$4, %eax
	testb	$1, _aGameVars+12(%eax)
	jne	L1740
	leal	-280(%ebp), %edx
	leal	-360(%ebp), %edi
L1369:
	sall	$4, %ebx
	movl	$LC101, %ecx
	movl	_aGameVars+8(%ebx), %eax
	movl	%edx, (%esp)
	movl	%edi, 12(%esp)
	testl	%eax, %eax
	movl	$LC160, 8(%esp)
	cmove	%ecx, %eax
	movl	$80, 4(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, -416(%ebp)
	call	*__imp___snprintf
	movl	-416(%ebp), %edx
L1365:
	movl	$LC26, %eax
	jmp	L1373
L1344:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1979
L1346:
	orl	$4, _vm+12
	jmp	L936
L1332:
	testl	%ebx, %ebx
	js	L1338
	movswl	_numwalls, %eax
	cmpl	%ebx, %eax
	jle	L1338
	movl	%ebx, %ecx
	andl	$7, %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %eax
	sarl	$3, %ecx
	movl	%eax, %ebx
	orb	_show2dwall(%ecx), %al
	notl	%ebx
	andb	_show2dwall(%ecx), %bl
	testl	%edx, %edx
	cmove	%ebx, %eax
	movb	%al, _show2dwall(%ecx)
	jmp	L1337
L1804:
	cmpl	$16383, _Numsprites
	jg	L1229
	movl	_maxspritesonscreen, %eax
	cmpl	%eax, _spritesortcnt
	jge	L1229
	movl	_vm+12, %esi
	testl	$4, %esi
	jne	L936
	imull	$44, %ebx, %ebx
	movl	_sprite, %eax
	addl	%ebx, %eax
	movswl	26(%eax), %edx
	movswl	24(%eax), %eax
	call	_insertsprite
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L1980
	imull	$44, %ecx, %esi
	movl	_sprite, %eax
	leal	(%eax,%esi), %edx
	addl	%ebx, %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edx)
	movl	4(%eax), %ebx
	movl	%ecx, _vm
	movl	%ebx, 4(%edx)
	movl	8(%eax), %ebx
	movl	%ebx, 8(%edx)
	movl	12(%eax), %ebx
	movl	%ebx, 12(%edx)
	movl	16(%eax), %ebx
	movl	%ebx, 16(%edx)
	movl	20(%eax), %ebx
	movl	%ebx, 20(%edx)
	movl	24(%eax), %ebx
	movl	%ebx, 24(%edx)
	movl	28(%eax), %ebx
	movl	%ebx, 28(%edx)
	movl	32(%eax), %ebx
	movl	%ebx, 32(%edx)
	movl	36(%eax), %ebx
	movl	%ebx, 36(%edx)
	movl	40(%eax), %eax
	movl	%eax, 40(%edx)
	movl	_sprite, %eax
	addl	%esi, %eax
	movl	%eax, _vm+8
	jmp	L936
L1223:
	cwtl
	xorl	%edx, %edx
	call	_insertsprite
	movl	%eax, _vm
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
	jmp	L936
L1157:
	testl	%ebx, %ebx
	jne	L1158
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_show2dsprite(%eax), %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %ecx
	movl	_insptr, %edx
	andl	%ecx, %ebx
	cmpb	%cl, %bl
	je	L1981
	movl	4(%edx), %eax
	leal	4(%edx,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1162
	movl	%eax, _insptr
	jmp	L936
L1789:
	movswl	_searchwall, %eax
	movl	%eax, _vm
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
L1426:
	subl	$207, %edx
	movl	%edi, -416(%ebp)
	movl	$_headspritestat+2046, %eax
	movswl	_headspritestat+2046, %esi
	cmpl	$1, %edx
	jbe	L1428
L1429:
	movl	%eax, %edi
	testl	%esi, %esi
	jns	L1431
	jmp	L1982
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1438:
	movswl	_nextspritestat(%esi,%esi), %esi
	testl	%esi, %esi
	js	L1983
L1431:
	imull	$44, %esi, %edx
	movl	_sprite, %eax
	addl	%eax, %edx
	movswl	14(%edx), %ecx
	cmpl	%ebx, %ecx
	jne	L1438
	movl	_vm, %ecx
	cmpl	%ecx, %esi
	je	L1438
	imull	$44, %ecx, %ecx
	addl	%ecx, %eax
	call	_ldist
	cmpl	-416(%ebp), %eax
	jge	L1438
L1435:
	movl	-420(%ebp), %ecx
	movl	%esi, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1984:
	cmpl	$_headspritestat, %edi
	je	L1440
	movswl	-2(%edi), %esi
	leal	-2(%edi), %eax
L1428:
	testl	%esi, %esi
	js	L1433
	movl	%eax, %edi
	jmp	L1436
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1434:
	movswl	_nextspritestat(%esi,%esi), %esi
	testl	%esi, %esi
	js	L1984
L1436:
	imull	$44, %esi, %edx
	movl	_sprite, %eax
	addl	%eax, %edx
	movswl	14(%edx), %ecx
	cmpl	%ebx, %ecx
	jne	L1434
	movl	_vm, %ecx
	cmpl	%esi, %ecx
	je	L1434
	imull	$44, %ecx, %ecx
	addl	%ecx, %eax
	call	_dist
	cmpl	-416(%ebp), %eax
	jge	L1434
	jmp	L1435
L1983:
	cmpl	$_headspritestat, %edi
	je	L1440
	leal	-2(%edi), %eax
	movswl	(%eax), %esi
	jmp	L1429
L1808:
	movswl	_searchwall, %edx
	movl	%edx, _vm
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
L1445:
	movl	%eax, -460(%ebp)
	movl	$_headspritestat+2046, %edi
	movl	%ebx, %ecx
	.p2align 4
	.p2align 3
L1447:
	movswl	(%edi), %esi
	cmpl	$-1, %esi
	je	L1449
	movl	%edi, -424(%ebp)
	jmp	L1452
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1450:
	movswl	_nextspritestat(%esi,%esi), %esi
	testl	%esi, %esi
	js	L1985
L1452:
	imull	$44, %esi, %ebx
	movl	_sprite, %eax
	leal	(%eax,%ebx), %edx
	movswl	14(%edx), %edi
	cmpl	%ecx, %edi
	jne	L1450
	movl	_vm, %edi
	cmpl	%esi, %edi
	je	L1450
	imull	$44, %edi, %edi
	movl	%ecx, -416(%ebp)
	addl	%edi, %eax
	call	_ldist
	cmpl	-420(%ebp), %eax
	movl	-416(%ebp), %ecx
	jge	L1450
	movl	_sprite, %edx
	movl	8(%edx,%edi), %eax
	subl	8(%edx,%ebx), %eax
/APP
 # 2930 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, -408(%ebp)
	jle	L1450
	movl	-460(%ebp), %eax
L1451:
	movl	%esi, %edx
	movl	%eax, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
	.p2align 4,,10
	.p2align 3
L1985:
	movl	-424(%ebp), %edi
L1449:
	movl	$_headspritestat, %eax
	cmpl	%edi, %eax
	je	L1986
	subl	$2, %edi
	jmp	L1447
L1740:
	movl	_vm+4, %edx
	movl	$LC102, %eax
	testl	%edx, %edx
	je	L1370
	cmpl	$20, %edx
	movl	$LC104, %eax
	movl	$LC103, %edx
	cmovle	%edx, %eax
L1370:
	leal	-360(%ebp), %edi
	movl	%eax, 8(%esp)
	movl	$LC158, 4(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	_vm+4, %eax
	leal	-280(%ebp), %edx
	testl	%eax, %eax
	jle	L1371
	subl	$1, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	$LC159, 4(%esp)
	movl	%edx, -416(%ebp)
	call	_sprintf
	movl	-416(%ebp), %edx
L1371:
	movl	%edx, 4(%esp)
	movl	%edx, -416(%ebp)
	movl	%edi, (%esp)
	call	_strcat
	movl	-416(%ebp), %edx
	jmp	L1369
L1322:
	cmpl	$1023, %eax
	jg	L1987
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movswl	26(%eax), %edx
	cmpl	%ebx, %edx
	je	L936
	cmpw	%bx, %dx
	je	L936
	cmpw	$1024, %dx
	je	L936
	movswl	%si, %eax
	call	_do_deletespritestat
	movswl	%bx, %edx
	movswl	%si, %eax
	call	_do_insertsprite_at_headofstat
	jmp	L936
L1930:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2077, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1267
L1816:
	movl	%edx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2225, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1306
L1905:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1923, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1245
L1931:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC143, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2308, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1329
L1934:
	cwtl
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1989, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1253
L1809:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC144, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2918, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1448
L1932:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2015, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1257
L1830:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2139, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1286
L1904:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC143, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1900, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1242
L1229:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1988
	orl	$4, _vm+12
	jmp	L936
L1790:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC144, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2863, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1430
L1354:
	movl	%ebx, %eax
	cmpl	$12288, %edx
	je	L1989
	andl	$65532, %eax
	cmpl	$1024, %eax
	je	L1356
	movl	$4144959, -280(%ebp)
	leal	-280(%ebp), %edx
	jmp	L1360
L1158:
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	_show2dwall(%eax), %ebx
	movzbl	__ZL8pow2char.lto_priv.1(%edx), %ecx
	movl	_insptr, %edx
	andl	%ecx, %ebx
	cmpb	%bl, %cl
	je	L1990
	movl	4(%edx), %eax
	leal	4(%edx,%eax,4), %eax
	movl	(%eax), %edx
	andl	$4095, %edx
	cmpl	$10, %edx
	je	L1164
	movl	%eax, _insptr
	jmp	L936
L1338:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1991
L1340:
	orl	$4, _vm+12
	jmp	L936
L1972:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC111, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$497, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L948
L1920:
	movl	8(%edx), %edx
	subl	8(%eax,%ecx,8), %edx
	movl	%edx, %eax
/APP
 # 1758 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$8191, %eax
	jg	L1188
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1833:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1832:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1814:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1992
L1320:
	orl	$4, _vm+12
	jmp	L936
L1901:
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1849:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1850:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1879:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1836:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1840:
	addl	$8, %ecx
	movl	$1, %eax
	movl	%ecx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1854:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1876:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1878:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1896:
	addl	$4, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1903:
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1858:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1895:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1834:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1835:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1837:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1894:
	addl	$4, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1848:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1949:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2110, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1274
L1813:
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2125, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1282
L1838:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1857:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1852:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1900:
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1807:
	movl	%eax, %ecx
	addl	$12, %edi
	movl	%edi, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	jmp	L1444
L1846:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1797:
	movl	_insptr, %eax
	movl	(%eax), %ecx
	addl	$4, %eax
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	-424(%ebp), %edx
	movb	%al, -460(%ebp)
	jmp	L1504
L1802:
	movl	%ecx, _insptr
	movl	%eax, %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, %ebx
	movl	_drawlinepat, %eax
	movl	%eax, -420(%ebp)
	jmp	L1498
L1800:
	movl	%eax, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -408(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -460(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -464(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -468(%ebp)
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	_drawlinepat, %edi
	movl	_pos+4, %ecx
	leal	-280(%ebp), %edx
	movl	%eax, -476(%ebp)
	movl	_pos, %eax
	movl	%edi, -424(%ebp)
	movl	_zoom, %edi
	subl	%ecx, %esi
	subl	%eax, %ebx
	movl	%edi, -420(%ebp)
	movl	%edi, 16(%esp)
	leal	-360(%ebp), %edi
	movl	%ecx, -416(%ebp)
	movl	%esi, 12(%esp)
	movl	%eax, -472(%ebp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	-420(%ebp), %edi
	movl	%edi, 16(%esp)
	movl	-464(%ebp), %edx
	subl	-416(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-460(%ebp), %edx
	subl	-472(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-392(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-376(%ebp), %edx
	movl	%edx, (%esp)
	call	_editorGet2dScreenCoordinates
	movl	_m32_sideview, %ebx
	movl	-392(%ebp), %eax
	movl	-360(%ebp), %esi
	movl	-476(%ebp), %ecx
	testl	%ebx, %ebx
	movl	%eax, -416(%ebp)
	je	L1493
	movl	-420(%ebp), %ebx
	imull	_m32_sidecos, %ebx
	movl	_pos+8, %edi
	movl	-408(%ebp), %eax
	movl	%ebx, %edx
	subl	%edi, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	movl	-468(%ebp), %eax
	addl	%edx, %esi
	movl	%ebx, %edx
	subl	%edi, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, -416(%ebp)
	jmp	L1493
L1856:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1855:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1853:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1859:
	addl	$4, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1937:
	cmpl	$-2, %edx
	jge	L1993
L1376:
	orl	$4, _vm+12
	jmp	L936
L1831:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1847:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1805:
	call	_dist
	movl	%ebx, %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1977:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC146, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2263, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1317
L1936:
	shrl	$16, %eax
	leal	-360(%ebp), %edi
	movl	$LC153, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	movl	%ebx, %eax
	movl	-416(%ebp), %edx
	andl	$65532, %eax
	cmpl	$1024, %eax
	jne	L1357
L1356:
	andl	$3, %ebx
	leal	-280(%ebp), %edx
	cmpl	$1, %ebx
	je	L1362
	cmpl	$2, %ebx
	je	L1363
	testl	%ebx, %ebx
	jne	L1364
	movl	$1835886888, -280(%ebp)
	movl	$1634296933, -276(%ebp)
	movl	$1663067508, -272(%ebp)
	movl	$1953721967, -268(%ebp)
	movl	$695496289, -264(%ebp)
	movb	$0, -260(%ebp)
	jmp	L1365
L1333:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1994
L1336:
	orl	$4, _vm+12
	jmp	L936
L1907:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2693, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1418
L1784:
	cmpb	$0, _keystatus(%ebx)
	jne	L1779
	movl	4(%eax), %ecx
	leal	4(%eax,%ecx,4), %eax
	movl	(%eax), %ecx
	andl	$4095, %ecx
	cmpl	$10, %ecx
	je	L1779
	movl	%eax, _insptr
L1140:
	cmpl	$110, %edx
	je	L936
	jmp	L1142
L1786:
	movswl	_searchwall, %eax
	movl	%eax, _vm
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, _vm+8
	jmp	L1290
L1978:
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC121, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$898, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L989
L1799:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2725, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1421
L1893:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC7, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2750, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1424
L1961:
	movl	%edx, -416(%ebp)
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC121, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$894, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-416(%ebp), %edx
	jmp	L986
L1962:
	movl	%edx, -416(%ebp)
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC140, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1837, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-416(%ebp), %edx
	jmp	L1227
L1960:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC146, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2259, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1313
L1844:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC120, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$727, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L982
L1935:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC145, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2190, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1299
L1924:
	movl	$LC125, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1687, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1151
L1918:
	movl	$LC130, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1749, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1182
L1922:
	movl	$LC132, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1762, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1193
L1516:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1885:
	movl	$LC166, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3006, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1464
L962:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1995
L964:
	orl	$4, _vm+12
	jmp	L936
L1824:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	$-2, %eax
	jge	L1996
L961:
	orl	$4, _vm+12
	jmp	L960
L1823:
	movl	%edx, %ecx
	call	@_Z10Gv_GetVarNi@4
	movl	%eax, %edx
	jmp	L959
L1822:
	movl	%ebx, %ecx
	call	@_Z10Gv_GetVarNi@4
	movl	%eax, %ebx
	jmp	L958
L1513:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1843:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC118, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$712, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L980
L1889:
	movl	$LC168, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3024, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1470
L1863:
	movl	$LC170, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3042, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1476
L1928:
	movl	$LC137, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1804, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1217
L1926:
	movl	$LC136, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1796, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1212
L1916:
	movl	$LC129, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1724, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1176
L1914:
	movl	$LC133, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1768, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1198
L1787:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC144, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2160, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1291
L1899:
	movl	$LC135, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1789, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1207
L1909:
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1888, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1239
L1818:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2236, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1308
L1114:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1829:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2098, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1270
L1820:
	movl	$LC119, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC120, 12(%esp)
	movl	$654, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_insptr, %edx
	jmp	L978
L1867:
	movl	$LC172, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3054, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1482
L1882:
	movl	$LC164, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$2987, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1457
L1518:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1861:
	movl	$LC169, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3033, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1473
L1873:
	movl	$LC175, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3072, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1491
L1908:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1877, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1237
L1815:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1324
	movl	$LC100, %eax
	jmp	L1325
L1940:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2214, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1303
L1897:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2203, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1301
L1942:
	movl	_insptr, %eax
	movl	%edx, -424(%ebp)
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -416(%ebp)
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, -420(%ebp)
	cmpl	$192, -424(%ebp)
	jne	L1997
	cmpl	$200, _qsetmode
	jne	L936
	movl	-420(%ebp), %edx
	movl	-416(%ebp), %eax
	movl	%ebx, %ecx
	call	_printmessage256
	jmp	L936
	.p2align 4,,10
	.p2align 3
L1869:
	movl	$LC173, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3060, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1485
L1817:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2247, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1310
L1819:
	movl	$LC117, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC118, 12(%esp)
	movl	$642, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_insptr, %edx
	jmp	L976
L1262:
	movl	(%edx), %ecx
	cwtl
	movswl	%di, %edi
	movl	%ecx, -460(%ebp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	-408(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	movl	-424(%ebp), %ecx
	movl	-420(%ebp), %edx
	movl	-416(%ebp), %eax
	call	_cansee.constprop.0
	movl	-460(%ebp), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1988:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC139, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1842, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	orl	$4, _vm+12
	jmp	L936
L1887:
	movl	$LC167, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3015, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1467
L1871:
	movl	$LC174, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3066, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1488
L1865:
	movl	$LC171, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$3048, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1479
L1943:
	addl	$8, %eax
	movl	%eax, _insptr
	jmp	L997
L1842:
	movl	$LC128, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1713, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1167
L1154:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1159
	testl	%ebx, %ebx
	movl	$LC97, %edx
	movl	$LC98, %ecx
	cmovne	%ecx, %edx
	jmp	L1160
L1971:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1816, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1222
L1933:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2036, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1264
L1295:
	leal	-280(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_updatesectorz
	jmp	L1297
L1294:
	movl	$0, (%esp)
	movswl	%ax, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_getsectordist
	leal	-280(%ebp), %edx
	movl	%esi, 8(%esp)
	movl	$1536, 20(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 12(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_updatesectorneighborz.constprop.0
	jmp	L1297
L1293:
	movl	$0, (%esp)
	movswl	%ax, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	call	_getsectordist
	leal	-280(%ebp), %edx
	movl	$1536, 16(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	_updatesectorneighbor.constprop.0
	jmp	L1297
L1388:
	movl	-16(%ebx,%eax), %ecx
	movl	%ecx, -296(%ebp,%eax)
	movl	-12(%ebx,%eax), %ecx
	movl	%ecx, -292(%ebp,%eax)
	movl	-8(%ebx,%eax), %ecx
	movl	%ecx, -288(%ebp,%eax)
	movl	-4(%ebx,%eax), %ecx
	movl	%ecx, -284(%ebp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1389
	movl	%edx, -408(%ebp)
	andl	$-16, %eax
	movl	-420(%ebp), %edi
	movl	%eax, -424(%ebp)
	xorl	%eax, %eax
L1393:
	movl	8(%ebx,%eax), %ecx
	movl	4(%ebx,%eax), %esi
	movl	%ecx, -420(%ebp)
	movl	(%ebx,%eax), %ecx
	movl	12(%ebx,%eax), %edx
	movl	%esi, -276(%ebp,%eax)
	movl	%ecx, -280(%ebp,%eax)
	movl	-420(%ebp), %esi
	movl	%edx, -268(%ebp,%eax)
	movl	%esi, -272(%ebp,%eax)
	addl	$16, %eax
	cmpl	-424(%ebp), %eax
	jb	L1393
	movl	%edi, -420(%ebp)
	movl	-408(%ebp), %edx
	jmp	L1389
L1950:
	call	_alignflorslope
	jmp	L936
L1798:
	cmpl	$-2, %edx
	jge	L1998
L1420:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L1544:
	movl	$1, %esi
	movl	$2147483647, %edi
	jmp	L1395
L1906:
	cmpl	$-2, %edx
	jge	L1999
L1417:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L1912:
	addl	$4, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1976:
	movl	-408(%ebp), %edx
	movl	-424(%ebp), %eax
	imull	_m32_sidecos, %edx
	subl	_pos+8, %eax
/APP
 # 672 "source/build/src/2d.cpp" 1
	imull %edx
 # 0 "" 2
/NO_APP
	addl	%edx, %edi
	movl	-416(%ebp), %eax
	movl	-408(%ebp), %edx
/APP
 # 3133 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_m32_sidesin, %edx
	movl	%eax, -416(%ebp)
	movl	$16384, %eax
/APP
 # 625 "source/build/src/2d.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	jmp	L1501
L1892:
	cmpl	$-2, %edx
	jge	L2000
L1423:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L1970:
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2035, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1261
L1979:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC138, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2414, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1346
L1811:
	testb	$2, 14(%eax)
	je	L2001
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_getflorzofslopeptr.part.0
	movl	%eax, %edx
L1277:
	movl	%edi, %ecx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1980:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L2002
L1235:
	movl	%esi, %eax
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L1969:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC124, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1653, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1137
L1958:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1963:
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2979, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1454
L1948:
	movl	$LC165, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$2997, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1461
L1964:
	movl	_aGameArrays(%eax), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC110, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$494, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L945
L1965:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC114, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$556, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L957
L1955:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1959:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1968:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC134, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1780, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1202
L1954:
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1946:
	movl	$LC131, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC126, 12(%esp)
	movl	$1757, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1187
L1957:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1944:
	imull	%edx, %edx
	leal	40000(%edx), %ecx
	call	@ksqrt@4
	movl	%eax, -424(%ebp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$3276800, (%esp)
	movl	$0, 4(%esp)
	call	_tabledivide64.lto_priv.0
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, %edx
/APP
 # 951 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	%ecx, %edx
	movl	%esi, %eax
/APP
 # 952 "source/duke3d/src/m32exec.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	-424(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	$100, %eax
	subl	-420(%ebp), %eax
	cltd
	shldl	$14, %eax, %edx
	sall	$14, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.0
	movl	%eax, %edx
	jmp	L998
L1951:
	movl	%edx, 8(%esp)
	movl	4(%ebx), %eax
	subl	$108, %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	subl	$108, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	24(%ebx), %eax
	cmpw	%ax, -280(%ebp)
	movl	-416(%ebp), %edx
	jne	L1177
	movl	%edx, 8(%esp)
	movl	4(%ebx), %eax
	subl	$108, %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	addl	$108, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	24(%ebx), %eax
	cmpw	%ax, -280(%ebp)
	movl	-416(%ebp), %edx
	jne	L1177
	movl	%edx, 8(%esp)
	movl	4(%ebx), %eax
	addl	$108, %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	subl	$108, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	24(%ebx), %eax
	cmpw	%ax, -280(%ebp)
	jne	L1177
	addl	$8, %esi
	movl	$1, %eax
	movl	%esi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1953:
	addl	$8, %edi
	movl	$1, %eax
	movl	%edi, _insptr
	call	__Z10VM_Executei
	jmp	L936
L1967:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC113, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$531, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L953
L1956:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1952:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1945:
	movswl	_searchwall, %edx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%edx, _vm+8
	jmp	L1185
L1947:
	movswl	_searchwall, %ebx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movl	%ebx, _vm+8
	jmp	L1460
L1966:
	movl	_aGameArrays(%edx), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC112, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$528, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L950
L1910:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC139, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1819, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1224
L1812:
	movl	4(%eax), %edx
	jmp	L1279
L1204:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1091:
	movl	-416(%ebp), %ecx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_highlightcnt, %edx
	movl	_vm+12, %eax
	cmpl	%esi, %edx
	jg	L1075
	jmp	L1083
L1190:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1991:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC150, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2388, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1340
L1200:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1209:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1973:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC148, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2366, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1331
L1179:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1195:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1184:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1173:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1974:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC151, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2410, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1343
L1987:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1324
	movl	$LC99, %eax
	jmp	L1325
L1214:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1219:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1997:
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %edi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	%eax, %esi
	movl	_insptr, %eax
	leal	4(%eax), %ecx
	movl	%ecx, _insptr
	movl	(%eax), %ecx
	call	@_Z9Gv_GetVari@4
	movl	-424(%ebp), %edx
	subl	$193, %edx
	cmpl	$2, %edx
	ja	L936
	jmp	*L1403(,%edx,4)
	.section .rdata,"dr"
	.align 4
L1403:
	.long	L1405
	.long	L1404
	.long	L1402
	.text
L1405:
	cmpl	$255, %edi
	jle	L2003
	xorl	%edx, %edx
L1409:
	cmpl	$256, %esi
	movl	$-1, %ecx
	movzbl	%al, %eax
	movl	%ebx, 16(%esp)
	cmovnb	%ecx, %esi
	movl	%eax, 20(%esp)
	movl	%edx, 8(%esp)
	movswl	%si, %esi
	movl	%esi, 12(%esp)
	movl	-420(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, (%esp)
	call	_printext256
	jmp	L936
L1404:
	cmpl	$200, _qsetmode
	je	L936
	movl	$-1, %edx
	testl	%esi, %esi
	js	L1412
	movl	%esi, %ecx
	movzbl	%cl, %esi
	movzbl	_editorcolors(%esi), %edx
L1412:
	movl	%edi, %ecx
	negl	%ecx
	movzbl	%cl, %ecx
	testl	%edi, %edi
	js	L1414
	movl	%edi, %ecx
	movzbl	%cl, %ecx
	movzbl	_editorcolors(%ecx), %ecx
L1414:
	movzbl	%al, %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	-420(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-416(%ebp), %eax
	movl	%eax, (%esp)
	call	_printext16
	jmp	L936
L1402:
	cmpl	$200, _qsetmode
	je	L936
	movzbl	%al, %edx
	testl	%eax, %eax
	movl	$255, %eax
	movzbl	_editorcolors(%edx), %ecx
	leal	-3(%ecx), %edx
	cmovs	%eax, %ecx
	movl	%esi, %eax
	movzbl	%al, %esi
	movb	%dl, -424(%ebp)
	movzbl	_editorcolors(%esi), %edx
	movl	%edi, 12(%esp)
	movl	-420(%ebp), %esi
	movl	%esi, 8(%esp)
	movl	-416(%ebp), %esi
	movl	%esi, 4(%esp)
	movzbl	-424(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_drawsmallabel
	jmp	L936
L1153:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1796:
	call	@_Z9Gv_GetVari@4
	movl	%esi, %edx
	movl	%edi, %ecx
	movzbl	%dl, %esi
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	%esi, (%esp)
	call	__getnumber16.constprop.0
	movl	-416(%ebp), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1087:
	andl	$16383, %edi
	movl	-416(%ebp), %ecx
	addl	$1, %esi
	movl	%edi, %edx
	call	@_Z9Gv_SetVarii@8
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movl	%edi, _vm
	movl	%eax, _vm+8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	movswl	_highlightcnt, %edx
	movl	_vm+12, %eax
	cmpl	%esi, %edx
	jg	L1077
	jmp	L1083
L2001:
	movl	8(%eax), %edx
	jmp	L1277
L1059:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L2004
L1105:
	orl	$4, %eax
	movl	%eax, _vm+12
	jmp	L936
L1995:
	movl	-416(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC116, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$566, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L964
L966:
	cmpl	$4, %edx
	jne	L936
L967:
	testb	$64, %al
	jne	L2005
	movl	%esi, %eax
	movl	-416(%ebp), %esi
	sall	$2, %ebx
	sall	$4, %eax
	movl	_aGameArrays+4(%eax), %eax
	leal	(%eax,%esi,4), %edx
	movl	-420(%ebp), %eax
	sall	$4, %eax
	movl	_aGameArrays+4(%eax), %eax
	movl	%ebx, 8(%esp)
	movl	%edx, (%esp)
	leal	(%eax,%edi,4), %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	jmp	L936
L1992:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC142, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2281, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1320
L965:
	testl	%ebx, %ebx
	jle	L936
	leal	(%ebx,%edi), %eax
	movl	-416(%ebp), %ecx
	leal	(%edi,%edi), %edx
	sall	$4, %esi
	addl	%eax, %eax
	movl	-424(%ebp), %ebx
	movl	%eax, -416(%ebp)
	sall	$2, %ecx
L973:
	movl	_aGameArrays+4(%ebx), %edi
	movl	_aGameArrays+4(%esi), %eax
	movswl	(%edi,%edx), %edi
	addl	$2, %edx
	movl	%edi, (%eax,%ecx)
	addl	$4, %ecx
	cmpl	%edx, -416(%ebp)
	jne	L973
	jmp	L936
L1779:
	addl	$8, %eax
	movl	%edx, -416(%ebp)
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	movl	-416(%ebp), %edx
	jmp	L1140
L1994:
	movl	%ecx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC149, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2375, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1336
L1996:
	movl	%edx, -408(%ebp)
	movl	%edi, -460(%ebp)
	movl	%edi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC115, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$564, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-460(%ebp), %ecx
	movl	-408(%ebp), %edx
	jmp	L961
L954:
	movl	%edi, %eax
	call	__Z13handle_memerri
L1989:
	andl	$1023, %eax
	leal	-360(%ebp), %edi
	movl	$LC153, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_sprintf
	leal	-280(%ebp), %edx
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	$LC154, 8(%esp)
	movl	$80, 4(%esp)
	movl	%edx, -416(%ebp)
	call	*__imp___snprintf
	movl	-416(%ebp), %edx
	jmp	L1360
L1792:
	movl	_insptr, %eax
	movl	(%eax), %ecx
	leal	4(%eax), %edx
	movl	%edx, _insptr
	call	@_Z9Gv_GetVari@4
	movl	%eax, -424(%ebp)
	movl	%ebx, (%esp)
	call	_strlen
	movl	$63, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L1379
	testb	$8, %al
	jne	L2006
	testb	$4, %al
	jne	L2007
	testl	%eax, %eax
	je	L1380
	movzbl	(%ebx), %edx
	movb	%dl, -280(%ebp)
	testb	$2, %al
	jne	L2008
L1380:
	movl	-420(%ebp), %eax
	movl	$2147483647, %esi
	testl	%eax, %eax
	je	L1386
	movl	-420(%ebp), %eax
/APP
 # 2577 "source/duke3d/src/m32exec.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
L1386:
	movl	-416(%ebp), %ecx
	cmpl	$200, _qsetmode
	je	L2009
	call	@_Z9Gv_GetVari@4
	movl	%esi, %ecx
	movl	%eax, %edx
	movzbl	-424(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__getnumber16.constprop.0
L1397:
	movl	-416(%ebp), %ecx
	movl	%eax, %edx
	call	@_Z9Gv_SetVarii@8
	jmp	L936
L1986:
	movl	-460(%ebp), %eax
	movl	$-1, %esi
	jmp	L1451
L1993:
	movl	%ecx, 24(%esp)
	movl	$LC162, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC6, 12(%esp)
	movl	$2551, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1376
L1366:
	movl	%ebx, %eax
	movups	-440(%ebp), %xmm5
	movups	-456(%ebp), %xmm6
	sarl	$2, %eax
	andl	$63, %eax
	movups	%xmm5, -376(%ebp)
	movups	%xmm6, -392(%ebp)
	cmpl	$22, %eax
	jle	L1368
	movl	$LC156, -364(%ebp)
	subl	$23, %eax
	movl	$_LightLabels, -380(%ebp)
L1368:
	movl	%ebx, %edx
	sall	$4, %eax
	andl	$3, %edx
	addl	-392(%ebp,%edx,4), %eax
	movl	(%eax), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 20(%esp)
	movl	-376(%ebp,%edx,4), %eax
	leal	-280(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 12(%esp)
	movl	$LC157, 8(%esp)
	movl	$80, 4(%esp)
	movl	%edx, -416(%ebp)
	call	*__imp___snprintf
	movl	-416(%ebp), %edx
	jmp	L1360
L1364:
	movl	$1851880563, -272(%ebp)
	movl	$1061109544, -280(%ebp)
	movl	$1852793632, -276(%ebp)
	movl	$2716782, -269(%ebp)
	jmp	L1365
L1999:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2693, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1417
L1363:
	movl	$1650551848, -280(%ebp)
	movl	$1663069285, -276(%ebp)
	movl	$1953721967, -272(%ebp)
	movl	$695496289, -268(%ebp)
	movb	$0, -264(%ebp)
	jmp	L1365
L1362:
	movl	$1684957480, -280(%ebp)
	movl	$1667592809, -276(%ebp)
	movl	$1868767348, -272(%ebp)
	movl	$1635021678, -268(%ebp)
	movl	$2716782, -264(%ebp)
	jmp	L1365
L1998:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2725, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1420
L1164:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1990:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L2000:
	movl	%ebx, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC6, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$2750, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1423
L1379:
	movl	-16(%ebx,%eax), %edx
	movl	%edx, -296(%ebp,%eax)
	movl	-12(%ebx,%eax), %edx
	movl	%edx, -292(%ebp,%eax)
	movl	-8(%ebx,%eax), %edx
	movl	%edx, -288(%ebp,%eax)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, -284(%ebp,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L1380
	andl	$-16, %eax
	movl	-420(%ebp), %edi
	movl	%eax, -408(%ebp)
	xorl	%eax, %eax
L1384:
	movl	12(%ebx,%eax), %edx
	movl	4(%ebx,%eax), %esi
	movl	8(%ebx,%eax), %ecx
	movl	%edx, -420(%ebp)
	movl	(%ebx,%eax), %edx
	movl	%esi, -276(%ebp,%eax)
	movl	%edx, -280(%ebp,%eax)
	movl	%ecx, -272(%ebp,%eax)
	movl	-420(%ebp), %esi
	movl	%esi, -268(%ebp,%eax)
	addl	$16, %eax
	cmpl	-408(%ebp), %eax
	jb	L1384
	movl	%edi, -420(%ebp)
	jmp	L1380
L2002:
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC141, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1854, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %esi
	jmp	L1235
L1162:
	addl	$8, %eax
	movl	%eax, _insptr
	movl	$1, %eax
	call	__Z10VM_Executei
	jmp	L936
L1981:
	addl	$8, %edx
	movl	$1, %eax
	movl	%edx, _insptr
	call	__Z10VM_Executei
	jmp	L936
L2009:
	call	@_Z9Gv_GetVari@4
	movzbl	-424(%ebp), %edx
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__getnumber256.constprop.0
	jmp	L1397
L2004:
	movl	%esi, 24(%esp)
	movl	_g_tw, %eax
	movl	_keyw(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	_g_errorLineNum, %eax
	movl	$LC122, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$1521, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_vm+12, %eax
	jmp	L1105
L1794:
	movl	(%ebx), %ecx
	movl	%ecx, -280(%ebp)
	movl	-4(%ebx,%eax), %ecx
	movl	%ecx, -284(%ebp,%eax)
	jmp	L1389
L1793:
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	%esi, -280(%ebp)
	movl	%edi, -276(%ebp)
	movl	-8(%ebx,%eax), %esi
	movl	-4(%ebx,%eax), %edi
	movl	%esi, -288(%ebp,%eax)
	movl	%edi, -284(%ebp,%eax)
	jmp	L1389
L1975:
	imull	$40, %edx, %edx
	addl	_sector, %edx
	movswl	(%edx), %esi
	movswl	2(%edx), %edx
	leal	(%edx,%esi), %edi
	leal	-1(%edi), %edx
	cmpl	%edx, %esi
	jg	L1083
	movl	%ecx, %eax
	testl	%ecx, %ecx
	jne	L1083
L1101:
	movl	-416(%ebp), %ecx
	movl	%esi, %edx
	addl	$1, %esi
	call	@_Z9Gv_SetVarii@8
	movl	$1, %eax
	movl	%ebx, _insptr
	call	__Z10VM_Executei
	cmpl	%esi, %edi
	je	L1735
	movl	_vm+12, %ecx
	movl	%ecx, %eax
	testl	%ecx, %ecx
	je	L1101
	jmp	L1083
L2005:
	testl	%ebx, %ebx
	jle	L936
	movl	-420(%ebp), %ecx
	movl	-416(%ebp), %eax
	sall	$4, %esi
	leal	(%edi,%ebx,2), %ebx
	movl	%esi, %edx
	sall	$4, %ecx
	sall	$2, %eax
	movl	%ecx, -416(%ebp)
L972:
	movl	-416(%ebp), %esi
	movl	_aGameArrays+4(%edx), %ecx
	movl	_aGameArrays+4(%esi), %esi
	movl	(%esi,%edi,4), %esi
	addl	$2, %edi
	movl	%esi, (%ecx,%eax)
	addl	$4, %eax
	cmpl	%ebx, %edi
	jne	L972
	jmp	L936
L2008:
	movzwl	-2(%ebx,%eax), %edx
	movw	%dx, -282(%ebp,%eax)
	jmp	L1380
L2003:
	cmpl	$-256, %edi
	ja	L1410
	movswl	%di, %edx
	jmp	L1409
L1410:
	negl	%edi
	movzbl	_editorcolors(%edi), %edx
	jmp	L1409
L1433:
	cmpl	$_headspritestat, %eax
	je	L1440
	subl	$2, %eax
	movswl	(%eax), %esi
	jmp	L1428
L1795:
	movzwl	-2(%ebx,%eax), %ecx
	movw	%cx, -282(%ebp,%eax)
	jmp	L1389
L1982:
	cmpl	$_headspritestat, %eax
	je	L1440
	subl	$2, %eax
	movswl	(%eax), %esi
	jmp	L1429
L1440:
	movl	$-1, %esi
	jmp	L1435
L2007:
	movl	(%ebx), %edx
	movl	%edx, -280(%ebp)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, -284(%ebp,%eax)
	jmp	L1380
L2006:
	movl	(%ebx), %edx
	movl	4(%ebx), %ecx
	movl	%edx, -280(%ebp)
	movl	%ecx, -276(%ebp)
	movl	-8(%ebx,%eax), %edx
	movl	-4(%ebx,%eax), %ecx
	movl	%edx, -288(%ebp,%eax)
	movl	%ecx, -284(%ebp,%eax)
	jmp	L1380
	.cfi_endproc
LFE75:
	.p2align 4
	.def	__ZL8X_DoSortPKvS0_;	.scl	3;	.type	32;	.endef
__ZL8X_DoSortPKvS0_:
LFB115:
	.cfi_startproc
	movl	__ZL17x_sortingstateptr, %eax
	movl	%eax, _insptr
	xorl	%eax, %eax
	call	__Z10VM_Executei
	movl	_g_iReturnVar, %eax
	ret
	.cfi_endproc
LFE115:
	.globl	_m32_sidecos
	.bss
	.align 4
_m32_sidecos:
	.space 4
	.globl	_m32_sidesin
	.align 4
_m32_sidesin:
	.space 4
	.globl	_linehighlight
	.data
	.align 2
_linehighlight:
	.word	-1
	.globl	_midydim16
	.bss
	.align 4
_midydim16:
	.space 4
	.globl	_halfxdim16
	.align 4
_halfxdim16:
	.space 4
	.globl	_m32_sideview
	.align 4
_m32_sideview:
	.space 4
	.globl	_drawlinepat
	.data
	.align 4
_drawlinepat:
	.long	-1
	.globl	_LightLabels
	.section .rdata,"dr"
LC182:
	.ascii "x\0"
LC183:
	.ascii "y\0"
LC184:
	.ascii "z\0"
LC185:
	.ascii "horiz\0"
LC186:
	.ascii "range\0"
LC187:
	.ascii "angle\0"
LC188:
	.ascii "faderadius\0"
LC189:
	.ascii "radius\0"
LC190:
	.ascii "r\0"
LC191:
	.ascii "g\0"
LC192:
	.ascii "b\0"
LC193:
	.ascii "priority\0"
LC194:
	.ascii "tilenum\0"
LC195:
	.ascii "minshade\0"
LC196:
	.ascii "maxshade\0"
LC197:
	.ascii "active\0"
	.align 32
_LightLabels:
	.long	LC182
	.word	23
	.word	0
	.long	-524288
	.long	524288
	.long	LC183
	.word	24
	.word	0
	.long	-524288
	.long	524288
	.long	LC184
	.word	25
	.word	0
	.long	0
	.long	0
	.long	LC185
	.word	26
	.word	0
	.long	0
	.long	0
	.long	LC186
	.word	27
	.word	0
	.long	0
	.long	0
	.long	LC187
	.word	28
	.word	0
	.long	0
	.long	0
	.long	LC188
	.word	29
	.word	0
	.long	0
	.long	0
	.long	LC189
	.word	30
	.word	0
	.long	0
	.long	0
	.long	LC100
	.word	31
	.word	0
	.long	0
	.long	0
	.long	LC190
	.word	32
	.word	0
	.long	0
	.long	255
	.long	LC191
	.word	33
	.word	0
	.long	0
	.long	255
	.long	LC192
	.word	34
	.word	0
	.long	0
	.long	255
	.long	LC193
	.word	35
	.word	0
	.long	0
	.long	5
	.long	LC194
	.word	36
	.word	0
	.long	0
	.long	30719
	.long	LC195
	.word	37
	.word	0
	.long	-128
	.long	127
	.long	LC196
	.word	38
	.word	0
	.long	-128
	.long	127
	.long	LC197
	.word	39
	.word	0
	.long	0
	.long	1
	.long	LC26
	.word	-1
	.word	0
	.long	0
	.long	0
	.globl	_WallLabels
LC198:
	.ascii "point2\0"
LC199:
	.ascii "nextwall\0"
LC200:
	.ascii "nextsector\0"
LC201:
	.ascii "picnum\0"
LC202:
	.ascii "overpicnum\0"
LC203:
	.ascii "shade\0"
LC204:
	.ascii "pal\0"
LC205:
	.ascii "xrepeat\0"
LC206:
	.ascii "yrepeat\0"
LC207:
	.ascii "xpanning\0"
LC208:
	.ascii "ypanning\0"
LC209:
	.ascii "lotag\0"
LC210:
	.ascii "hitag\0"
LC211:
	.ascii "extra\0"
	.align 32
_WallLabels:
	.long	LC182
	.word	0
	.word	0
	.long	-524288
	.long	524288
	.long	LC183
	.word	1
	.word	0
	.long	-524288
	.long	524288
	.long	LC198
	.word	2
	.word	1
	.long	0
	.long	0
	.long	LC199
	.word	3
	.word	1
	.long	0
	.long	0
	.long	LC200
	.word	4
	.word	1
	.long	0
	.long	0
	.long	LC165
	.word	5
	.word	0
	.long	0
	.long	0
	.long	LC201
	.word	6
	.word	0
	.long	0
	.long	30719
	.long	LC202
	.word	7
	.word	0
	.long	0
	.long	30719
	.long	LC203
	.word	8
	.word	0
	.long	0
	.long	0
	.long	LC204
	.word	9
	.word	0
	.long	0
	.long	0
	.long	LC205
	.word	10
	.word	0
	.long	0
	.long	0
	.long	LC206
	.word	11
	.word	0
	.long	0
	.long	0
	.long	LC207
	.word	12
	.word	0
	.long	0
	.long	0
	.long	LC208
	.word	13
	.word	0
	.long	0
	.long	0
	.long	LC209
	.word	14
	.word	0
	.long	0
	.long	0
	.long	LC210
	.word	15
	.word	0
	.long	0
	.long	0
	.long	LC211
	.word	16
	.word	0
	.long	0
	.long	0
	.long	LC26
	.word	-1
	.word	0
	.long	0
	.long	0
	.globl	_SectorLabels
LC212:
	.ascii "wallptr\0"
LC213:
	.ascii "wallnum\0"
LC214:
	.ascii "ceilingz\0"
LC215:
	.ascii "floorz\0"
LC216:
	.ascii "ceilingstat\0"
LC217:
	.ascii "floorstat\0"
LC218:
	.ascii "ceilingpicnum\0"
LC219:
	.ascii "ceilingslope\0"
LC220:
	.ascii "ceilingshade\0"
LC221:
	.ascii "ceilingpal\0"
LC222:
	.ascii "ceilingxpanning\0"
LC223:
	.ascii "ceilingypanning\0"
LC224:
	.ascii "floorpicnum\0"
LC225:
	.ascii "floorslope\0"
LC226:
	.ascii "floorshade\0"
LC227:
	.ascii "floorpal\0"
LC228:
	.ascii "floorxpanning\0"
LC229:
	.ascii "floorypanning\0"
LC230:
	.ascii "visibility\0"
LC231:
	.ascii "fogpal\0"
LC232:
	.ascii "alignto\0"
LC233:
	.ascii "ceilingheinum\0"
LC234:
	.ascii "floorheinum\0"
	.align 32
_SectorLabels:
	.long	LC212
	.word	0
	.word	1
	.long	0
	.long	0
	.long	LC213
	.word	1
	.word	1
	.long	0
	.long	0
	.long	LC214
	.word	2
	.word	0
	.long	0
	.long	0
	.long	LC215
	.word	3
	.word	0
	.long	0
	.long	0
	.long	LC216
	.word	4
	.word	0
	.long	0
	.long	0
	.long	LC217
	.word	5
	.word	0
	.long	0
	.long	0
	.long	LC218
	.word	6
	.word	0
	.long	0
	.long	30719
	.long	LC219
	.word	7
	.word	0
	.long	0
	.long	0
	.long	LC220
	.word	8
	.word	0
	.long	0
	.long	0
	.long	LC221
	.word	9
	.word	0
	.long	0
	.long	0
	.long	LC222
	.word	10
	.word	0
	.long	0
	.long	0
	.long	LC223
	.word	11
	.word	0
	.long	0
	.long	0
	.long	LC224
	.word	12
	.word	0
	.long	0
	.long	30719
	.long	LC225
	.word	13
	.word	0
	.long	0
	.long	0
	.long	LC226
	.word	14
	.word	0
	.long	0
	.long	0
	.long	LC227
	.word	15
	.word	0
	.long	0
	.long	0
	.long	LC228
	.word	16
	.word	0
	.long	0
	.long	0
	.long	LC229
	.word	17
	.word	0
	.long	0
	.long	0
	.long	LC230
	.word	18
	.word	0
	.long	0
	.long	0
	.long	LC231
	.word	19
	.word	0
	.long	0
	.long	0
	.long	LC209
	.word	20
	.word	0
	.long	0
	.long	0
	.long	LC210
	.word	21
	.word	0
	.long	0
	.long	0
	.long	LC211
	.word	22
	.word	0
	.long	0
	.long	0
	.long	LC232
	.word	19
	.word	0
	.long	0
	.long	0
	.long	LC233
	.word	7
	.word	0
	.long	0
	.long	0
	.long	LC234
	.word	13
	.word	0
	.long	0
	.long	0
	.long	LC26
	.word	-1
	.word	0
	.long	0
	.long	0
	.globl	_SpriteLabels
LC235:
	.ascii "blend\0"
LC236:
	.ascii "xoffset\0"
LC237:
	.ascii "yoffset\0"
LC238:
	.ascii "sectnum\0"
LC239:
	.ascii "ang\0"
LC240:
	.ascii "owner\0"
LC241:
	.ascii "xvel\0"
LC242:
	.ascii "yvel\0"
LC243:
	.ascii "zvel\0"
	.align 32
_SpriteLabels:
	.long	LC182
	.word	0
	.word	0
	.long	-524288
	.long	524288
	.long	LC183
	.word	1
	.word	0
	.long	-524288
	.long	524288
	.long	LC184
	.word	2
	.word	0
	.long	0
	.long	0
	.long	LC165
	.word	3
	.word	0
	.long	0
	.long	0
	.long	LC201
	.word	4
	.word	0
	.long	0
	.long	30719
	.long	LC203
	.word	5
	.word	0
	.long	0
	.long	0
	.long	LC204
	.word	6
	.word	0
	.long	0
	.long	0
	.long	LC167
	.word	7
	.word	0
	.long	0
	.long	0
	.long	LC235
	.word	8
	.word	0
	.long	0
	.long	0
	.long	LC205
	.word	9
	.word	0
	.long	0
	.long	0
	.long	LC206
	.word	10
	.word	0
	.long	0
	.long	0
	.long	LC236
	.word	11
	.word	0
	.long	0
	.long	0
	.long	LC237
	.word	12
	.word	0
	.long	0
	.long	0
	.long	LC238
	.word	13
	.word	0
	.long	0
	.long	0
	.long	LC99
	.word	14
	.word	0
	.long	0
	.long	0
	.long	LC239
	.word	15
	.word	0
	.long	0
	.long	0
	.long	LC240
	.word	16
	.word	0
	.long	0
	.long	0
	.long	LC241
	.word	17
	.word	0
	.long	0
	.long	0
	.long	LC242
	.word	18
	.word	0
	.long	0
	.long	0
	.long	LC243
	.word	19
	.word	0
	.long	0
	.long	0
	.long	LC209
	.word	20
	.word	0
	.long	0
	.long	0
	.long	LC210
	.word	21
	.word	0
	.long	0
	.long	0
	.long	LC211
	.word	22
	.word	0
	.long	0
	.long	0
	.long	LC26
	.word	-1
	.word	0
	.long	0
	.long	0
	.globl	_aGameVars
	.bss
	.align 32
_aGameVars:
	.space 16384
	.globl	_prevspritesect
	.align 32
_prevspritesect:
	.space 32768
	.globl	_prevspritestat
	.align 32
_prevspritestat:
	.space 32768
	.section .rdata,"dr"
LC244:
	.ascii "allsprites\0"
LC245:
	.ascii "allsectors\0"
LC246:
	.ascii "allwalls\0"
LC247:
	.ascii "activelights\0"
LC248:
	.ascii "selsprites\0"
LC249:
	.ascii "selsectors\0"
LC250:
	.ascii "selwalls\0"
LC251:
	.ascii "drawnsprites\0"
LC252:
	.ascii "spritesofsector\0"
LC253:
	.ascii "loopofwall\0"
LC254:
	.ascii "wallsofsector\0"
LC255:
	.ascii "selspr\0"
LC256:
	.ascii "selsec\0"
LC257:
	.ascii "lights\0"
LC258:
	.ascii "sprofsec\0"
LC259:
	.ascii "walofsec\0"
	.align 32
_iter_tokens:
	.long	LC244
	.long	0
	.long	LC245
	.long	1
	.long	LC246
	.long	2
	.long	LC247
	.long	3
	.long	LC248
	.long	4
	.long	LC249
	.long	5
	.long	LC250
	.long	6
	.long	LC251
	.long	7
	.long	LC252
	.long	8
	.long	LC253
	.long	10
	.long	LC254
	.long	9
	.long	LC186
	.long	11
	.long	LC255
	.long	4
	.long	LC256
	.long	5
	.long	LC257
	.long	3
	.long	LC258
	.long	8
	.long	LC259
	.long	9
	.long	LC26
	.long	-1
	.globl	_prlights
	.bss
	.align 32
_prlights:
	.space 276480
.lcomm _randomseed,4,4
	.globl	_g_iReturnVar
	.align 4
_g_iReturnVar:
	.space 4
.lcomm __ZL17x_sortingstateptr,4,4
	.globl	_vm
	.align 4
_vm:
	.space 20
	.globl	_aGameArrays
	.align 32
_aGameArrays:
	.space 4096
.lcomm _insptr,4,4
.lcomm _aEventEnabled,20,4
	.globl	_g_errorLineNum
	.align 4
_g_errorLineNum:
	.space 4
	.globl	_keyw
	.section .rdata,"dr"
LC260:
	.ascii "nullop\0"
LC261:
	.ascii "define\0"
LC262:
	.ascii "include\0"
LC263:
	.ascii "includeoptional\0"
LC264:
	.ascii "defstate\0"
LC265:
	.ascii "ends\0"
LC266:
	.ascii "onevent\0"
LC267:
	.ascii "endevent\0"
LC268:
	.ascii "gamevar\0"
LC269:
	.ascii "else\0"
LC270:
	.ascii "return\0"
LC271:
	.ascii "break\0"
LC272:
	.ascii "switch\0"
LC273:
	.ascii "case\0"
LC274:
	.ascii "default\0"
LC275:
	.ascii "endswitch\0"
LC276:
	.ascii "getcurraddress\0"
LC277:
	.ascii "jump\0"
LC278:
	.ascii "{\0"
LC279:
	.ascii "}\0"
LC280:
	.ascii "gamearray\0"
LC281:
	.ascii "setarray\0"
LC282:
	.ascii "getarraysize\0"
LC283:
	.ascii "resizearray\0"
LC284:
	.ascii "copy\0"
LC285:
	.ascii "randvar\0"
LC286:
	.ascii "displayrandvar\0"
LC287:
	.ascii "setvar\0"
LC288:
	.ascii "addvar\0"
LC289:
	.ascii "subvar\0"
LC290:
	.ascii "mulvar\0"
LC291:
	.ascii "andvar\0"
LC292:
	.ascii "orvar\0"
LC293:
	.ascii "xorvar\0"
LC294:
	.ascii "shiftvarl\0"
LC295:
	.ascii "shiftvarr\0"
LC296:
	.ascii "randvarvar\0"
LC297:
	.ascii "displayrandvarvar\0"
LC298:
	.ascii "setvarvar\0"
LC299:
	.ascii "addvarvar\0"
LC300:
	.ascii "subvarvar\0"
LC301:
	.ascii "mulvarvar\0"
LC302:
	.ascii "divvarvar\0"
LC303:
	.ascii "modvarvar\0"
LC304:
	.ascii "andvarvar\0"
LC305:
	.ascii "orvarvar\0"
LC306:
	.ascii "xorvarvar\0"
LC307:
	.ascii "shiftvarvarl\0"
LC308:
	.ascii "shiftvarvarr\0"
LC309:
	.ascii "sin\0"
LC310:
	.ascii "cos\0"
LC311:
	.ascii "displayrand\0"
LC312:
	.ascii "itof\0"
LC313:
	.ascii "ftoi\0"
LC314:
	.ascii "clamp\0"
LC315:
	.ascii "inv\0"
LC316:
	.ascii "sqrt\0"
LC317:
	.ascii "mulscale\0"
LC318:
	.ascii "divscale\0"
LC319:
	.ascii "scalevar\0"
LC320:
	.ascii "dist\0"
LC321:
	.ascii "ldist\0"
LC322:
	.ascii "calchypotenuse\0"
LC323:
	.ascii "getangle\0"
LC324:
	.ascii "getincangle\0"
LC325:
	.ascii "a2xy\0"
LC326:
	.ascii "ah2xyz\0"
LC327:
	.ascii "collectsectors\0"
LC328:
	.ascii "sort\0"
LC329:
	.ascii "for\0"
LC330:
	.ascii "ifvarl\0"
LC331:
	.ascii "ifvarle\0"
LC332:
	.ascii "ifvarg\0"
LC333:
	.ascii "ifvarge\0"
LC334:
	.ascii "ifvara\0"
LC335:
	.ascii "ifvarae\0"
LC336:
	.ascii "ifvarb\0"
LC337:
	.ascii "ifvarbe\0"
LC338:
	.ascii "ifvare\0"
LC339:
	.ascii "ifvarn\0"
LC340:
	.ascii "ifvarand\0"
LC341:
	.ascii "ifvaror\0"
LC342:
	.ascii "ifvarxor\0"
LC343:
	.ascii "ifvareither\0"
LC344:
	.ascii "ifvarboth\0"
LC345:
	.ascii "whilevare\0"
LC346:
	.ascii "whilevarn\0"
LC347:
	.ascii "whilevarl\0"
LC348:
	.ascii "ifvarvarl\0"
LC349:
	.ascii "ifvarvarle\0"
LC350:
	.ascii "ifvarvarg\0"
LC351:
	.ascii "ifvarvarge\0"
LC352:
	.ascii "ifvarvara\0"
LC353:
	.ascii "ifvarvarae\0"
LC354:
	.ascii "ifvarvarb\0"
LC355:
	.ascii "ifvarvarbe\0"
LC356:
	.ascii "ifvarvare\0"
LC357:
	.ascii "ifvarvarn\0"
LC358:
	.ascii "ifvarvarand\0"
LC359:
	.ascii "ifvarvaror\0"
LC360:
	.ascii "ifvarvarxor\0"
LC361:
	.ascii "ifvarvareither\0"
LC362:
	.ascii "ifvarvarboth\0"
LC363:
	.ascii "whilevarvare\0"
LC364:
	.ascii "whilevarvarn\0"
LC365:
	.ascii "whilevarvarl\0"
LC366:
	.ascii "ifhitkey\0"
LC367:
	.ascii "ifholdkey\0"
LC368:
	.ascii "ifrnd\0"
LC369:
	.ascii "ifhighlighted\0"
LC370:
	.ascii "ifsound\0"
LC371:
	.ascii "ifinside\0"
LC372:
	.ascii "ifeitheralt\0"
LC373:
	.ascii "ifeitherctrl\0"
LC374:
	.ascii "ifeithershift\0"
LC375:
	.ascii "ifnosounds\0"
LC376:
	.ascii "ifin3dmode\0"
LC377:
	.ascii "ifin2d3dmode\0"
LC378:
	.ascii "ifaimingsprite\0"
LC379:
	.ascii "ifaimingwall\0"
LC380:
	.ascii "ifaimingsector\0"
LC381:
	.ascii "ifinteractive\0"
LC382:
	.ascii "resetkey\0"
LC383:
	.ascii "setkey\0"
LC384:
	.ascii "insertsprite\0"
LC385:
	.ascii "dupsprite\0"
LC386:
	.ascii "tdupsprite\0"
LC387:
	.ascii "deletesprite\0"
LC388:
	.ascii "getspritelinktype\0"
LC389:
	.ascii "lastwall\0"
LC390:
	.ascii "updatecursectnum\0"
LC391:
	.ascii "updatesector\0"
LC392:
	.ascii "updatesectorz\0"
LC393:
	.ascii "updatesectorneighbor\0"
LC394:
	.ascii "updatesectorneighborz\0"
LC395:
	.ascii "getzrange\0"
LC396:
	.ascii "clipmove\0"
LC397:
	.ascii "lineintersect\0"
LC398:
	.ascii "rayintersect\0"
LC399:
	.ascii "hitscan\0"
LC400:
	.ascii "cansee\0"
LC401:
	.ascii "canseespr\0"
LC402:
	.ascii "neartag\0"
LC403:
	.ascii "rotatepoint\0"
LC404:
	.ascii "dragpoint\0"
LC405:
	.ascii "getceilzofslope\0"
LC406:
	.ascii "getflorzofslope\0"
LC407:
	.ascii "alignceilslope\0"
LC408:
	.ascii "alignflorslope\0"
LC409:
	.ascii "bsetsprite\0"
LC410:
	.ascii "setfirstwall\0"
LC411:
	.ascii "changespritestat\0"
LC412:
	.ascii "changespritesect\0"
LC413:
	.ascii "headspritestat\0"
LC414:
	.ascii "prevspritestat\0"
LC415:
	.ascii "nextspritestat\0"
LC416:
	.ascii "headspritesect\0"
LC417:
	.ascii "prevspritesect\0"
LC418:
	.ascii "nextspritesect\0"
LC419:
	.ascii "sectorofwall\0"
LC420:
	.ascii "fixrepeats\0"
LC421:
	.ascii "getclosestcol\0"
LC422:
	.ascii "updatehighlight\0"
LC423:
	.ascii "updatehighlightsector\0"
LC424:
	.ascii "sethighlight\0"
LC425:
	.ascii "sethighlightsector\0"
LC426:
	.ascii "xfliphighlightedsectors\0"
LC427:
	.ascii "yfliphighlightedsectors\0"
LC428:
	.ascii "xmirrorhighlightedsectors\0"
LC429:
	.ascii "ymirrorhighlightedsectors\0"
LC430:
	.ascii "addlogvar\0"
LC431:
	.ascii "addlog\0"
LC432:
	.ascii "debug\0"
LC433:
	.ascii "definequote\0"
LC434:
	.ascii "print\0"
LC435:
	.ascii "quote\0"
LC436:
	.ascii "error\0"
LC437:
	.ascii "printmessage16\0"
LC438:
	.ascii "printmessage256\0"
LC439:
	.ascii "printext256\0"
LC440:
	.ascii "printext16\0"
LC441:
	.ascii "drawlabel\0"
LC442:
	.ascii "getnumber16\0"
LC443:
	.ascii "getnumber256\0"
LC444:
	.ascii "getnumberfromuser\0"
LC445:
	.ascii "qsprintf\0"
LC446:
	.ascii "qstrcat\0"
LC447:
	.ascii "qstrcpy\0"
LC448:
	.ascii "qstrlen\0"
LC449:
	.ascii "qstrncat\0"
LC450:
	.ascii "qsubstr\0"
LC451:
	.ascii "findnearsprite\0"
LC452:
	.ascii "findnearspritevar\0"
LC453:
	.ascii "findnearsprite3d\0"
LC454:
	.ascii "findnearsprite3dvar\0"
LC455:
	.ascii "findnearspritez\0"
LC456:
	.ascii "findnearspritezvar\0"
LC457:
	.ascii "getticks\0"
LC458:
	.ascii "gettimedate\0"
LC459:
	.ascii "setaspect\0"
LC460:
	.ascii "seti\0"
LC461:
	.ascii "sound\0"
LC462:
	.ascii "soundonce\0"
LC463:
	.ascii "stopallsounds\0"
LC464:
	.ascii "stopsound\0"
LC465:
	.ascii "globalsound\0"
LC466:
	.ascii "getsoundflags\0"
LC467:
	.ascii "drawline16\0"
LC468:
	.ascii "drawline16b\0"
LC469:
	.ascii "drawline16z\0"
LC470:
	.ascii "drawline256\0"
LC471:
	.ascii "drawcircle16\0"
LC472:
	.ascii "drawcircle16b\0"
LC473:
	.ascii "drawcircle16z\0"
LC474:
	.ascii "rotatespritea\0"
LC475:
	.ascii "rotatesprite16\0"
LC476:
	.ascii "rotatesprite\0"
LC477:
	.ascii "setgamepalette\0"
LC478:
	.ascii "<null>\0"
	.align 32
_keyw:
	.long	LC260
	.long	LC261
	.long	LC262
	.long	LC263
	.long	LC264
	.long	LC265
	.long	LC104
	.long	LC266
	.long	LC267
	.long	LC268
	.long	LC269
	.long	LC270
	.long	LC271
	.long	LC272
	.long	LC273
	.long	LC274
	.long	LC275
	.long	LC276
	.long	LC277
	.long	LC278
	.long	LC279
	.long	LC280
	.long	LC281
	.long	LC282
	.long	LC283
	.long	LC284
	.long	LC285
	.long	LC286
	.long	LC287
	.long	LC288
	.long	LC289
	.long	LC290
	.long	LC117
	.long	LC119
	.long	LC291
	.long	LC292
	.long	LC293
	.long	LC294
	.long	LC295
	.long	LC296
	.long	LC297
	.long	LC298
	.long	LC299
	.long	LC300
	.long	LC301
	.long	LC302
	.long	LC303
	.long	LC304
	.long	LC305
	.long	LC306
	.long	LC307
	.long	LC308
	.long	LC309
	.long	LC310
	.long	LC311
	.long	LC312
	.long	LC313
	.long	LC314
	.long	LC315
	.long	LC316
	.long	LC317
	.long	LC318
	.long	LC319
	.long	LC320
	.long	LC321
	.long	LC322
	.long	LC323
	.long	LC324
	.long	LC325
	.long	LC326
	.long	LC327
	.long	LC328
	.long	LC329
	.long	LC330
	.long	LC331
	.long	LC332
	.long	LC333
	.long	LC334
	.long	LC335
	.long	LC336
	.long	LC337
	.long	LC338
	.long	LC339
	.long	LC340
	.long	LC341
	.long	LC342
	.long	LC343
	.long	LC344
	.long	LC345
	.long	LC346
	.long	LC347
	.long	LC348
	.long	LC349
	.long	LC350
	.long	LC351
	.long	LC352
	.long	LC353
	.long	LC354
	.long	LC355
	.long	LC356
	.long	LC357
	.long	LC358
	.long	LC359
	.long	LC360
	.long	LC361
	.long	LC362
	.long	LC363
	.long	LC364
	.long	LC365
	.long	LC366
	.long	LC367
	.long	LC368
	.long	LC128
	.long	LC125
	.long	LC369
	.long	LC133
	.long	LC370
	.long	LC136
	.long	LC137
	.long	LC371
	.long	LC372
	.long	LC373
	.long	LC374
	.long	LC129
	.long	LC130
	.long	LC131
	.long	LC132
	.long	LC135
	.long	LC375
	.long	LC376
	.long	LC377
	.long	LC378
	.long	LC379
	.long	LC380
	.long	LC381
	.long	LC382
	.long	LC383
	.long	LC384
	.long	LC385
	.long	LC386
	.long	LC387
	.long	LC388
	.long	LC389
	.long	LC390
	.long	LC391
	.long	LC392
	.long	LC393
	.long	LC394
	.long	LC395
	.long	LC396
	.long	LC397
	.long	LC398
	.long	LC399
	.long	LC400
	.long	LC401
	.long	LC402
	.long	LC403
	.long	LC404
	.long	LC405
	.long	LC406
	.long	LC407
	.long	LC408
	.long	LC409
	.long	LC410
	.long	LC411
	.long	LC412
	.long	LC413
	.long	LC414
	.long	LC415
	.long	LC416
	.long	LC417
	.long	LC418
	.long	LC419
	.long	LC420
	.long	LC421
	.long	LC422
	.long	LC423
	.long	LC424
	.long	LC425
	.long	LC426
	.long	LC427
	.long	LC428
	.long	LC429
	.long	LC430
	.long	LC431
	.long	LC432
	.long	LC433
	.long	LC162
	.long	LC434
	.long	LC435
	.long	LC436
	.long	LC437
	.long	LC438
	.long	LC439
	.long	LC440
	.long	LC441
	.long	LC442
	.long	LC443
	.long	LC444
	.long	LC445
	.long	LC446
	.long	LC447
	.long	LC448
	.long	LC449
	.long	LC450
	.long	LC451
	.long	LC452
	.long	LC453
	.long	LC454
	.long	LC455
	.long	LC456
	.long	LC457
	.long	LC458
	.long	LC459
	.long	LC460
	.long	LC164
	.long	LC165
	.long	LC166
	.long	LC167
	.long	LC168
	.long	LC169
	.long	LC170
	.long	LC171
	.long	LC172
	.long	LC173
	.long	LC174
	.long	LC175
	.long	LC461
	.long	LC462
	.long	LC463
	.long	LC464
	.long	LC465
	.long	LC466
	.long	LC467
	.long	LC468
	.long	LC469
	.long	LC470
	.long	LC471
	.long	LC472
	.long	LC473
	.long	LC474
	.long	LC475
	.long	LC476
	.long	LC477
	.long	LC478
	.globl	_g_tw
	.bss
	.align 4
_g_tw:
	.space 4
	.globl	_divtable64
	.align 32
_divtable64:
	.space 147456
.lcomm _lastd_s64,8,8
.lcomm __ZZL28check_spritelist_consistencyvE10havesprite,2048,32
	.globl	_Numsprites
	.align 4
_Numsprites:
	.space 4
	.globl	_yax_nextwall
	.align 32
_yax_nextwall:
	.space 65536
	.globl	_editstatus
	.align 2
_editstatus:
	.space 2
	.globl	_nextsectbunch
	.align 32
_nextsectbunch:
	.space 16384
	.globl	_headsectbunch
	.align 32
_headsectbunch:
	.space 1024
.lcomm __ZL5csc_s,4,4
.lcomm __ZL5csc_i,4,4
	.globl	_names
	.align 32
_names:
	.space 768000
	.globl	__ZL8pow2char.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL8pow2char.lto_priv.0:
	.ascii "\1\2\4\10\20 @\200"
	.globl	__ZL8pow2char.lto_priv.2
	.set	__ZL8pow2char.lto_priv.2,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.3
	.set	__ZL8pow2char.lto_priv.3,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.4
	.set	__ZL8pow2char.lto_priv.4,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.5
	.set	__ZL8pow2char.lto_priv.5,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.6
	.set	__ZL8pow2char.lto_priv.6,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.7
	.set	__ZL8pow2char.lto_priv.7,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.8
	.set	__ZL8pow2char.lto_priv.8,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.9
	.set	__ZL8pow2char.lto_priv.9,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.10
	.set	__ZL8pow2char.lto_priv.10,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.11
	.set	__ZL8pow2char.lto_priv.11,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.1
	.set	__ZL8pow2char.lto_priv.1,__ZL8pow2char.lto_priv.0
LC479:
	.ascii "upwall\0"
LC480:
	.ascii "downwall\0"
	.align 4
_yupdownwall:
	.long	LC479
	.long	LC480
	.globl	_numyaxbunches
	.bss
	.align 4
_numyaxbunches:
	.space 4
	.section .rdata,"dr"
LC481:
	.ascii "UPWALL\0"
LC482:
	.ascii "DOWNWALL\0"
	.align 4
_YUPDOWNWALL:
	.long	LC481
	.long	LC482
	.globl	_corruptlevel
	.bss
	.align 4
_corruptlevel:
	.space 4
	.globl	_corruptthings
	.align 32
_corruptthings:
	.space 256
	.globl	_numcorruptthings
	.align 4
_numcorruptthings:
	.space 4
	.globl	_corrupt_tryfix_alt
	.section .rdata,"dr"
	.align 4
_corrupt_tryfix_alt:
	.space 4
	.globl	_automapping
	.set	_automapping,_corrupt_tryfix_alt
	.globl	_parallaxyscale_override
	.set	_parallaxyscale_override,_corrupt_tryfix_alt
	.globl	_parallaxyoffs_override
	.set	_parallaxyoffs_override,_corrupt_tryfix_alt
	.globl	_g_rotatespriteNoWidescreen
	.set	_g_rotatespriteNoWidescreen,_corrupt_tryfix_alt
	.globl	_rotatespritesmoothratio
	.set	_rotatespritesmoothratio,_corrupt_tryfix_alt
	.globl	_mdpause
	.set	_mdpause,_corrupt_tryfix_alt
	.globl	_g_mouseBits
	.bss
	.align 4
_g_mouseBits:
	.space 4
	.globl	_g_mouseInsideWindow
	.data
_g_mouseInsideWindow:
	.byte	1
	.globl	_appactive
_appactive:
	.byte	1
	.globl	_g_mouseEnabled
	.bss
_g_mouseEnabled:
	.space 1
	.globl	_hlsectorbitmap
	.align 32
_hlsectorbitmap:
	.space 512
	.globl	_show2dsprite
	.align 32
_show2dsprite:
	.space 2048
	.globl	_show2dwall
	.align 32
_show2dwall:
	.space 2048
	.globl	_show2dsector
	.align 32
_show2dsector:
	.space 512
	.globl	_startsectnum
	.align 2
_startsectnum:
	.space 2
	.globl	_startang
	.align 2
_startang:
	.space 2
	.globl	_startpos
	.align 4
_startpos:
	.space 12
	.globl	_map_revision
	.data
	.align 4
_map_revision:
	.long	1
	.globl	_isc
	.bss
	.align 32
_isc:
	.space 32
	.globl	_circlewall
	.data
	.align 4
_circlewall:
	.long	-1
	.globl	_joinsector
	.bss
	.align 4
_joinsector:
	.space 4
	.globl	_newnumwalls
	.data
	.align 2
_newnumwalls:
	.word	-1
	.globl	_mapstate
	.bss
	.align 4
_mapstate:
	.space 4
	.globl	__ZL8g_taglab.lto_priv.0
	.align 32
__ZL8g_taglab.lto_priv.0:
	.space 131092
	.globl	_getmessagetimeoff
	.align 4
_getmessagetimeoff:
	.space 4
.lcomm _getmessage,162,32
	.globl	__mi_cpu_has_fsrm
	.align 64
__mi_cpu_has_fsrm:
	.space 1
.lcomm _multisprite,65536,32
.lcomm _numsprite,65536,32
	.globl	__ZL13sdl_minimized.lto_priv.0
	.align 4
__ZL13sdl_minimized.lto_priv.0:
	.space 4
	.globl	__ZL10sdl_resize.lto_priv.0
	.align 4
__ZL10sdl_resize.lto_priv.0:
	.space 8
	.section .rdata,"dr"
	.align 4
LC178:
	.long	LC107
	.align 4
LC179:
	.long	LC106
	.align 4
LC180:
	.long	_WallLabels
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZL21sectorofwall_internals.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	@_Z9Gv_GetVari@4;	.scl	2;	.type	32;	.endef
	.def	__Z14SetSpriteExtrav;	.scl	2;	.type	32;	.endef
	.def	_clearmidstatbar16;	.scl	2;	.type	32;	.endef
	.def	_printext16;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__getnumber16.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__printmessage16;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_hash_init;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_hash_findcase;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch;	.scl	2;	.type	32;	.endef
	.def	_update_highlightsector;	.scl	2;	.type	32;	.endef
	.def	_update_highlight;	.scl	2;	.type	32;	.endef
	.def	_initspritelists;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	_yax_update;	.scl	2;	.type	32;	.endef
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	_polymer_loadboard;	.scl	2;	.type	32;	.endef
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
	.def	_ovh_whiteoutgrab;	.scl	2;	.type	32;	.endef
	.def	_fflush;	.scl	2;	.type	32;	.endef
	.def	__getnumber256.constprop.0;	.scl	2;	.type	32;	.endef
	.def	@_Z9Gv_SetVarii@8;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dCircle;	.scl	2;	.type	32;	.endef
	.def	_ldist;	.scl	2;	.type	32;	.endef
	.def	_rintersect;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_editorFlipHighlightedSectors;	.scl	2;	.type	32;	.endef
	.def	_fixrepeats;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_sectorofwall;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	__ZL14drawlinepixelsiiiic.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_deletesprite;	.scl	2;	.type	32;	.endef
	.def	_setsprite;	.scl	2;	.type	32;	.endef
	.def	_alignceilslope;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_dist;	.scl	2;	.type	32;	.endef
	.def	_lintersect;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	__ZL10drawlinegliiii9palette_t.isra.0;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_lastwall;	.scl	2;	.type	32;	.endef
	.def	_dragpoint;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_getzrange;	.scl	2;	.type	32;	.endef
	.def	_setfirstwall;	.scl	2;	.type	32;	.endef
	.def	_editorGet2dScreenCoordinates;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	@_Z10Gv_GetVarNi@4;	.scl	2;	.type	32;	.endef
	.def	_printmessage256;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_updatesectorneighborz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_updatesectorneighbor.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_drawsmallabel;	.scl	2;	.type	32;	.endef
