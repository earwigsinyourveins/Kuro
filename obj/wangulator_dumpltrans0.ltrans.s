	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z9MapColorss9COLOR_MAPs;	.scl	3;	.type	32;	.endef
__Z9MapColorss9COLOR_MAPs:
LFB0:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	testw	%cx, %cx
	je	L2
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L3:
	movb	%al, __ZL7tempbuf.lto_priv.0(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edx)
	cmpl	$256, %eax
	jne	L3
L2:
	testb	%bl, %bl
	je	L1
	movzbl	%bh, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	xorps	%xmm1, %xmm1
	movzbl	%bl, %esi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm1
	xorps	%xmm2, %xmm2
	movl	%ebx, %eax
	cvtsi2ssl	%esi, %xmm0
	shrl	$24, %eax
	shrl	$16, %ebx
	cvtsi2ssl	%eax, %xmm2
	movzbl	%bl, %edx
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L5:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	movb	%cl, __ZL7tempbuf.lto_priv.0(%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L5
	movl	4(%esp), %esi
	.cfi_restore 6
L1:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
LC0:
	.ascii "Line %i is incomplete\12\0"
	.text
	.p2align 4
	.def	__Z5ErrorPKcz.constprop.0;	.scl	3;	.type	32;	.endef
__Z5ErrorPKcz.constprop.0:
LFB3:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	leal	20(%esp), %eax
	movl	$LC0, (%esp)
	movl	%eax, 4(%esp)
	movl	%eax, 8(%esp)
	call	_vprintf
	movl	$10, (%esp)
	call	_putchar
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__Z19GetUpperLowerSectorsiiPsS_;	.scl	3;	.type	32;	.endef
__Z19GetUpperLowerSectorsiiPsS_:
LFB4:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movzwl	_numsectors, %esi
	testw	%si, %si
	jle	L17
	movl	%ebx, 44(%esp)
	movl	%ecx, (%esp)
	movw	%ax, 8(%esp)
	movw	%si, 10(%esp)
	movl	%ebp, 56(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L32:
	xorl	%esi, %esi
	movswl	10(%esp), %ebx
	movw	%si, 4(%esp)
	jmp	L27
	.p2align 4,,10
	.p2align 3
L19:
	subl	$1, %ebx
	je	L46
L27:
	leal	-1(%ebx), %esi
	movl	(%esp), %edx
	movl	%edi, %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L19
	movzwl	_headspritesect-2(%ebx,%ebx), %edx
	movb	$0, 7(%esp)
	cmpw	$-1, %dx
	jne	L20
	jmp	L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
L25:
	cmpw	$-1, %dx
	je	L47
L20:
	movswl	%dx, %eax
	movzwl	_nextspritesect(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	%ebp, %eax
	cmpw	$60, 26(%eax)
	jne	L25
	movzwl	40(%eax), %ecx
	subl	$110, %ecx
	cmpw	$5, %cx
	ja	L25
	movzwl	8(%esp), %ecx
	cmpw	%cx, 38(%eax)
	sete	%al
	orb	%al, 7(%esp)
	cmpw	$-1, %dx
	jne	L20
	.p2align 4
	.p2align 3
L47:
	cmpb	$0, 7(%esp)
	je	L19
	movswl	4(%esp), %eax
	cmpw	$15, %ax
	jg	L26
	movw	%si, 12(%esp,%eax,2)
L26:
	addw	$1, 4(%esp)
	subl	$1, %ebx
	jne	L27
	.p2align 4
	.p2align 3
L46:
	cmpw	$0, 4(%esp)
	je	L48
	cmpw	$1, 4(%esp)
	je	L49
	cmpw	$2, 4(%esp)
	jle	L31
	subl	$1, %edi
	jmp	L32
L48:
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L17:
	movl	64(%esp), %eax
	movl	$-1, %edx
	movl	$-1, %ecx
	movw	%dx, (%eax)
	movl	68(%esp), %eax
	movw	%cx, (%eax)
	movl	48(%esp), %esi
	addl	$60, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L49:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	12(%esp), %eax
	movl	68(%esp), %edi
	movw	%ax, (%edi)
L45:
	movl	64(%esp), %edi
	movw	%ax, (%edi)
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	48(%esp), %esi
	addl	$60, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L31:
	.cfi_restore_state
	je	L50
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	48(%esp), %esi
	addl	$60, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L50:
	.cfi_restore_state
	movswl	12(%esp), %ebx
	movzwl	14(%esp), %edx
	movl	_sector, %ecx
	movl	%ebx, %eax
	leal	(%ebx,%ebx,4), %esi
	movswl	%dx, %ebx
	leal	(%ebx,%ebx,4), %ebx
	movl	8(%ecx,%ebx,8), %edi
	cmpl	%edi, 8(%ecx,%esi,8)
	movl	%edx, %ecx
	movl	68(%esp), %edi
	cmovge	%eax, %edx
	cmovge	%ecx, %eax
	movw	%dx, (%edi)
	jmp	L45
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__Z15FindCeilingViewsPiS_iPs.isra.0;	.scl	3;	.type	32;	.endef
__Z15FindCeilingViewsPiS_iPs.isra.0:
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
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movswl	_headspritestat+120, %eax
	movw	%si, _save+4000
	cmpw	$-1, %ax
	je	L52
	movl	%edx, %esi
	movl	%ecx, %ebp
	movl	_sprite, %edx
	movswl	%ax, %edi
	jmp	L53
	.p2align 5
	.p2align 4,,10
	.p2align 3
L54:
	movswl	_nextspritestat(%edi,%edi), %edi
	cmpw	$-1, %di
	je	L67
L53:
	imull	$44, %edi, %ecx
	addl	%edx, %ecx
	cmpw	$120, 40(%ecx)
	jne	L54
	cmpw	%bx, 38(%ecx)
	jne	L54
	movl	(%esi), %edi
	subl	(%ecx), %edi
	movl	%edi, 8(%esp)
	movl	0(%ebp), %edi
	subl	4(%ecx), %edi
	movl	%edi, %ecx
	jmp	L57
	.p2align 5
	.p2align 4,,10
	.p2align 3
L58:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L76
L57:
	imull	$44, %eax, %edi
	addl	%edx, %edi
	cmpw	38(%edi), %bx
	jne	L58
	cmpw	$121, 40(%edi)
	jne	L58
	movl	8(%esp), %eax
	addl	(%edi), %eax
	movl	%eax, (%esi)
	addl	4(%edi), %ecx
	movswl	%bx, %eax
	movl	%ecx, 0(%ebp)
	movl	(%esi), %edx
	leal	22(%esp), %esi
	movl	%esi, 4(%esp)
	leal	20(%esp), %esi
	movl	%esi, (%esp)
	call	__Z19GetUpperLowerSectorsiiPsS_
	movzwl	20(%esp), %eax
	movl	48(%esp), %esi
	movw	%ax, (%esi)
L59:
	testw	%ax, %ax
	js	L51
	cmpb	$0, _FAF_DontMoveSectors
	jne	L51
	movzwl	_headspritestat+120, %esi
	cmpw	$-1, %si
	je	L51
	movswl	24(%edi), %eax
	movl	_sector, %edx
	movl	44(%esp), %ecx
	movl	_sprite, %ebp
	leal	(%eax,%eax,4), %eax
	movl	%edx, 8(%esp)
	movl	8(%edx,%eax,8), %edx
	subl	%edx, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	andl	$-32768, %eax
	leal	32768(%edx,%eax), %eax
	xorl	%edx, %edx
	movl	%eax, 16(%esp)
	xorl	%eax, %eax
	movw	%dx, 14(%esp)
	jmp	L62
	.p2align 5
	.p2align 4,,10
	.p2align 3
L66:
	cmpw	$-1, %si
	je	L64
L62:
	movswl	%si, %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %esi
	imull	$44, %ecx, %ecx
	addl	%ebp, %ecx
	cmpw	38(%ecx), %bx
	jne	L66
	cmpw	$111, 40(%ecx)
	jne	L66
	movswl	24(%ecx), %eax
	movswl	14(%esp), %edx
	movl	8(%esp), %edi
	addw	$1, 14(%esp)
	movw	%ax, _save+1600(%edx,%edx)
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %edi
	movl	8(%edi), %eax
	movl	%eax, _save(,%edx,4)
	movzwl	24(%edi), %eax
	movw	%ax, _save+2400(%edx,%edx)
	movzwl	26(%edi), %eax
	movw	%ax, _save+3200(%edx,%edx)
	leal	8(%edi), %edx
	movl	$-858993459, %eax
	subl	8(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	16(%esp), %edx
	movl	%edx, 8(%edi)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %edi
	movl	$-858993459, %eax
	leal	24(,%edi,8), %edx
	mull	%edx
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$2357, %edx
	movw	%dx, 24(%eax,%edi,8)
	movswl	24(%ecx), %eax
	xorl	%edi, %edi
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	26(,%ecx,8), %edx
	mull	%edx
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 26(%eax,%ecx,8)
	movl	$1, %eax
	cmpw	$-1, %si
	jne	L62
	.p2align 4
	.p2align 3
L64:
	testb	%al, %al
	je	L51
	movzwl	14(%esp), %eax
	movw	%ax, _save+4000
L51:
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
L76:
	.cfi_restore_state
	movl	48(%esp), %eax
	movzwl	(%eax), %eax
	jmp	L59
	.p2align 4,,10
	.p2align 3
L67:
	movl	$0, 8(%esp)
	xorl	%ecx, %ecx
	jmp	L57
L52:
	movl	48(%esp), %eax
	xorl	%edi, %edi
	movzwl	(%eax), %eax
	jmp	L59
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__Z13FindFloorViewsPiS_iPs.isra.0;	.scl	3;	.type	32;	.endef
__Z13FindFloorViewsPiS_iPs.isra.0:
LFB8:
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
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movswl	_headspritestat+120, %eax
	movw	%si, _save+4000
	cmpw	$-1, %ax
	je	L78
	movl	%edx, %esi
	movl	%ecx, %ebp
	movl	_sprite, %edx
	movswl	%ax, %edi
	jmp	L79
	.p2align 5
	.p2align 4,,10
	.p2align 3
L80:
	movswl	_nextspritestat(%edi,%edi), %edi
	cmpw	$-1, %di
	je	L93
L79:
	imull	$44, %edi, %ecx
	addl	%edx, %ecx
	cmpw	$121, 40(%ecx)
	jne	L80
	cmpw	%bx, 38(%ecx)
	jne	L80
	movl	(%esi), %edi
	subl	(%ecx), %edi
	movl	%edi, 8(%esp)
	movl	0(%ebp), %edi
	subl	4(%ecx), %edi
	movl	%edi, %ecx
	jmp	L83
	.p2align 5
	.p2align 4,,10
	.p2align 3
L84:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L102
L83:
	imull	$44, %eax, %edi
	addl	%edx, %edi
	cmpw	38(%edi), %bx
	jne	L84
	cmpw	$120, 40(%edi)
	jne	L84
	movl	8(%esp), %eax
	addl	(%edi), %eax
	movl	%eax, (%esi)
	addl	4(%edi), %ecx
	movswl	%bx, %eax
	movl	%ecx, 0(%ebp)
	movl	(%esi), %edx
	leal	22(%esp), %esi
	movl	%esi, 4(%esp)
	leal	20(%esp), %esi
	movl	%esi, (%esp)
	call	__Z19GetUpperLowerSectorsiiPsS_
	movzwl	22(%esp), %eax
	movl	48(%esp), %esi
	movw	%ax, (%esi)
L85:
	testw	%ax, %ax
	js	L77
	cmpb	$0, _FAF_DontMoveSectors
	jne	L77
	movzwl	_headspritestat+120, %esi
	cmpw	$-1, %si
	je	L77
	movswl	24(%edi), %eax
	movl	_sector, %edx
	movl	44(%esp), %ecx
	movl	_sprite, %ebp
	leal	(%eax,%eax,4), %eax
	movl	%edx, 8(%esp)
	movl	4(%edx,%eax,8), %edx
	subl	%edx, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	andl	$-32768, %eax
	addl	$32768, %eax
	subl	%eax, %edx
	xorl	%eax, %eax
	movl	%edx, 16(%esp)
	xorl	%edx, %edx
	movw	%dx, 14(%esp)
	jmp	L88
	.p2align 5
	.p2align 4,,10
	.p2align 3
L92:
	cmpw	$-1, %si
	je	L90
L88:
	movswl	%si, %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %esi
	imull	$44, %ecx, %ecx
	addl	%ebp, %ecx
	cmpw	38(%ecx), %bx
	jne	L92
	cmpw	$110, 40(%ecx)
	jne	L92
	movswl	24(%ecx), %eax
	movswl	14(%esp), %edx
	movl	8(%esp), %edi
	addw	$1, 14(%esp)
	movw	%ax, _save+1600(%edx,%edx)
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %edi
	movl	4(%edi), %eax
	movl	%eax, _save(,%edx,4)
	movzwl	16(%edi), %eax
	movw	%ax, _save+2400(%edx,%edx)
	movzwl	18(%edi), %eax
	movw	%ax, _save+3200(%edx,%edx)
	leal	4(%edi), %edx
	movl	$-858993459, %eax
	subl	8(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	16(%esp), %edx
	movl	%edx, 4(%edi)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %edi
	movl	$-858993459, %eax
	leal	16(,%edi,8), %edx
	mull	%edx
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$2357, %edx
	movw	%dx, 16(%eax,%edi,8)
	movswl	24(%ecx), %eax
	xorl	%edi, %edi
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	18(,%ecx,8), %edx
	mull	%edx
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 18(%eax,%ecx,8)
	movl	$1, %eax
	cmpw	$-1, %si
	jne	L88
	.p2align 4
	.p2align 3
L90:
	testb	%al, %al
	je	L77
	movzwl	14(%esp), %eax
	movw	%ax, _save+4000
L77:
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
L102:
	.cfi_restore_state
	movl	48(%esp), %eax
	movzwl	(%eax), %eax
	jmp	L85
	.p2align 4,,10
	.p2align 3
L93:
	movl	$0, 8(%esp)
	xorl	%ecx, %ecx
	jmp	L83
L78:
	movl	48(%esp), %eax
	xorl	%edi, %edi
	movzwl	(%eax), %eax
	jmp	L85
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__ZL18process_tdragongrpi.lto_priv.0
	.def	__ZL18process_tdragongrpi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18process_tdragongrpi.lto_priv.0:
LFB9:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %eax
	movl	$1430471764, 848(%eax)
	movl	$1297044563, 852(%eax)
	movl	$1415074862, 856(%eax)
	ret
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "Could not find main data file \"%s\"!\0"
LC2:
	.ascii "source/sw/src/common.cpp\0"
	.align 4
LC3:
	.ascii "Using \"%s\" as main game data file.\0"
	.text
	.p2align 4
	.def	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile;	.scl	3;	.type	32;	.endef
__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile:
LFB12:
	.cfi_startproc
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
	movl	%edx, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	call	_initgroupfile
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	%eax, %edi
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %edi
	je	L116
	testl	%eax, %eax
	jns	L117
	testl	%ebx, %ebx
	je	L104
L118:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L108
	movl	%edi, (%esp)
	call	*%eax
L108:
	movzwl	12(%ebx), %eax
	orb	%al, _SW_GameFlags
L104:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
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
L117:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	$482, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	testl	%ebx, %ebx
	jne	L118
	jmp	L104
	.p2align 4,,10
	.p2align 3
L116:
	cmpl	$-1, %eax
	jl	L104
	movl	%esi, 16(%esp)
	movl	$LC1, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	addl	$20, %esp
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
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
LFE12:
	.p2align 4
	.def	__ZL25SW_LoadGrpDependencyChainPK7grpfile;	.scl	3;	.type	32;	.endef
__ZL25SW_LoadGrpDependencyChainPK7grpfile:
LFB14:
	.cfi_startproc
	testl	%eax, %eax
	je	L120
	movl	%eax, %edx
	movl	4(%eax), %eax
	testb	$1, 14(%eax)
	je	L131
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%eax), %ebx
	cmpl	4(%eax), %ebx
	je	L122
	movl	_foundgrps, %eax
	testl	%eax, %eax
	jne	L125
	jmp	L124
	.p2align 4
	.p2align 4,,10
	.p2align 3
L134:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L124
L125:
	movl	4(%eax), %ecx
	cmpl	4(%ecx), %ebx
	jne	L134
L124:
	movl	%edx, (%esp)
	call	__ZL25SW_LoadGrpDependencyChainPK7grpfile
	movl	(%esp), %edx
	movl	4(%edx), %eax
L122:
	movl	(%edx), %ecx
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%eax, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	jmp	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile
	.p2align 4,,10
	.p2align 3
L131:
	movl	(%edx), %ecx
	movl	%eax, %edx
	movl	%ecx, %eax
	jmp	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile
L120:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.def	__ZL15sw_getnumber256PKciic;	.scl	3;	.type	32;	.endef
__ZL15sw_getnumber256PKciic:
LFB16:
	.cfi_startproc
	movzbl	16(%esp), %edx
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	8(%esp), %edx
	jmp	__getnumber256.constprop.0
	.cfi_endproc
LFE16:
	.p2align 4
	.def	__ZL14sw_getnumber16PKciic;	.scl	3;	.type	32;	.endef
__ZL14sw_getnumber16PKciic:
LFB17:
	.cfi_startproc
	movzbl	16(%esp), %edx
	movl	4(%esp), %eax
	movl	12(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	8(%esp), %edx
	jmp	__getnumber16.constprop.0
	.cfi_endproc
LFE17:
	.p2align 4
	.def	__ZL18sw_printmessage256PKc;	.scl	3;	.type	32;	.endef
__ZL18sw_printmessage256PKc:
LFB18:
	.cfi_startproc
	movl	4(%esp), %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	_printmessage256
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC4:
	.ascii "%s\0"
	.text
	.p2align 4
	.def	__ZL17sw_printmessage16PKc;	.scl	3;	.type	32;	.endef
__ZL17sw_printmessage16PKc:
LFB19:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_totalclock, %eax
	movl	$LC4, (%esp)
	movl	%eax, _lastpm16time
	movl	12(%esp), %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "Sprite tag 11 (shade) (snum = %d): \0"
LC6:
	.ascii " \0"
LC7:
	.ascii "Next tag = %d\0"
	.text
	.p2align 4
	.def	__Z8MoreKeysssss;	.scl	3;	.type	32;	.endef
__Z8MoreKeysssss:
LFB20:
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
	movl	%eax, %ebx
	movl	%edx, %eax
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movw	%cx, 20(%esp)
	cmpl	$200, _qsetmode
	je	L232
	testb	$64, 57(%esp)
	jne	L256
	movl	$__ZL17sw_printmessage16PKc, %esi
	movl	$__ZL14sw_getnumber16PKciic, %ebp
	movl	$5, %ebx
L141:
	cwtl
	movl	_sprite, %edx
	imull	$44, %eax, %edi
	movl	%eax, 24(%esp)
	leal	(%edx,%edi), %eax
	movl	%eax, 16(%esp)
	cmpb	$0, _keystatus+184
	je	L142
	cmpb	$0, _keystatus+157
	je	L142
	cmpb	$0, _keystatus+74
	jne	L257
	cmpb	$0, _keystatus+78
	je	L142
	movl	_g_visibility, %ecx
	movb	$0, _keystatus+78
	movl	%ecx, %eax
	sarl	$3, %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$16348, %eax
	cmovg	%ecx, %eax
	movl	%eax, _g_visibility
	.p2align 4
	.p2align 3
L142:
	cmpb	$0, _keystatus+40
	je	L146
	cmpb	$0, _keystatus+37
	je	L147
	movb	$0, _keystatus+37
	cmpw	$3, %bx
	je	L258
L147:
	movzbl	_keystatus+54, %eax
	orb	_keystatus+42, %al
	je	L149
	cmpb	$0, _keystatus+2
	je	L150
	movb	$0, _keystatus+2
	movb	$0, _keystatus+39
	cmpw	$3, %bx
	je	L259
L151:
	movl	$LC6, (%esp)
	call	*%esi
L150:
	cmpb	$0, _keystatus+3
	je	L152
	movb	$0, _keystatus+3
	movb	$0, _keystatus+39
	cmpw	$3, %bx
	je	L260
L153:
	movl	$LC6, (%esp)
	call	*%esi
L152:
	cmpb	$0, _keystatus+4
	je	L154
	movb	$0, _keystatus+4
	cmpw	$3, %bx
	je	L261
L155:
	movl	$LC6, (%esp)
	call	*%esi
L154:
	cmpb	$0, _keystatus+5
	je	L156
	movb	$0, _keystatus+5
	cmpw	$3, %bx
	je	L262
L157:
	movl	$LC6, (%esp)
	call	*%esi
L156:
	cmpb	$0, _keystatus+6
	je	L149
	movb	$0, _keystatus+6
	cmpw	$3, %bx
	je	L263
L158:
	movl	$LC6, (%esp)
	call	*%esi
L149:
	cmpb	$0, _keystatus+2
	je	L159
	movb	$0, _keystatus+2
	cmpw	$3, %bx
	je	L160
	jg	L161
	testw	%bx, %bx
	je	L162
	leal	-1(%ebx), %eax
	cmpw	$1, %ax
	ja	L163
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$694641012, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	leal	(%eax,%eax,4), %eax
	movl	$2112041, __ZL7tempbuf.lto_priv.2+19
	leal	0(,%eax,8), %edx
	movl	$65536, 8(%esp)
	movswl	36(%ecx,%eax,8), %eax
	movl	%edx, 32(%esp)
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$1768433696, __ZL7tempbuf.lto_priv.2+12
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	32(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 28(%esp)
	addl	%edx, %ecx
	leal	36(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 36(%ecx)
L163:
	movl	$LC6, (%esp)
	call	*%esi
L159:
	cmpb	$0, _keystatus+3
	je	L164
	movb	$0, _keystatus+3
	cmpw	$3, %bx
	je	L165
	jg	L166
	testw	%bx, %bx
	je	L167
	leal	-1(%ebx), %eax
	cmpw	$1, %ax
	ja	L168
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$694641012, __ZL7tempbuf.lto_priv.2+16
	movl	$1869359136, __ZL7tempbuf.lto_priv.2+12
	leal	(%eax,%eax,4), %eax
	movl	$0, 12(%esp)
	leal	0(,%eax,8), %edx
	movl	$2112041, __ZL7tempbuf.lto_priv.2+19
	movl	$65536, 8(%esp)
	movswl	34(%ecx,%eax,8), %eax
	movl	%edx, 32(%esp)
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	movl	$840984417, __ZL7tempbuf.lto_priv.2+8
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	32(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 28(%esp)
	addl	%edx, %ecx
	leal	34(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 34(%ecx)
L168:
	movl	$LC6, (%esp)
	call	*%esi
L164:
	cmpb	$0, _keystatus+4
	je	L169
	movb	$0, _keystatus+4
	cmpw	$3, %bx
	je	L170
	jg	L171
	testw	%bx, %bx
	je	L172
	leal	-1(%ebx), %eax
	cmpw	$1, %ax
	ja	L173
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$857761633, __ZL7tempbuf.lto_priv.2+8
	leal	0(,%eax,8), %edx
	movl	$1700997152, __ZL7tempbuf.lto_priv.2+12
	movl	$1852402793, __ZL7tempbuf.lto_priv.2+16
	movl	$1634760807, __ZL7tempbuf.lto_priv.2+20
	movl	$1852403310, __ZL7tempbuf.lto_priv.2+24
	movl	$540682599, __ZL7tempbuf.lto_priv.2+28
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	22(%ecx,%eax,8), %eax
	movl	%edx, 32(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	32(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 28(%esp)
	addl	%edx, %ecx
	leal	22(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzbl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 22(%ecx)
L173:
	movl	$LC6, (%esp)
	call	*%esi
L169:
	cmpb	$0, _keystatus+5
	je	L174
	movb	$0, _keystatus+5
	cmpw	$3, %bx
	je	L175
	jg	L176
	testw	%bx, %bx
	je	L177
	leal	-1(%ebx), %eax
	cmpw	$1, %ax
	ja	L178
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$874538849, __ZL7tempbuf.lto_priv.2+8
	leal	0(,%eax,8), %edx
	movl	$1700997152, __ZL7tempbuf.lto_priv.2+12
	movl	$1852402793, __ZL7tempbuf.lto_priv.2+16
	movl	$1634761063, __ZL7tempbuf.lto_priv.2+20
	movl	$1852403310, __ZL7tempbuf.lto_priv.2+24
	movl	$540682599, __ZL7tempbuf.lto_priv.2+28
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	23(%ecx,%eax,8), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 24(%esp)
	addl	%edx, %ecx
	leal	23(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 23(%ecx)
L178:
	movl	$LC6, (%esp)
	call	*%esi
L174:
	cmpb	$0, _keystatus+6
	je	L179
	movb	$0, _keystatus+6
	cmpw	$2, %bx
	jle	L264
	cmpw	$3, %bx
	jne	L182
	movl	_sprite, %eax
	movl	$0, 12(%esp)
	movl	$539585637, __ZL7tempbuf.lto_priv.2+16
	movl	$1987586080, __ZL7tempbuf.lto_priv.2+12
	movl	$2112032, __ZL7tempbuf.lto_priv.2+19
	movl	$65536, 8(%esp)
	movswl	32(%eax,%edi), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$891316065, __ZL7tempbuf.lto_priv.2+8
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 24(%esp)
	leal	32(%edi), %eax
	mull	%edx
	movzwl	24(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%ecx)
L182:
	movl	$LC6, (%esp)
	call	*%esi
L179:
	cmpb	$0, _keystatus+7
	je	L184
	movb	$0, _keystatus+7
	cmpw	$2, %bx
	jle	L265
	cmpw	$3, %bx
	jne	L187
	movl	_sprite, %eax
	movl	$0, 12(%esp)
	movl	$539585637, __ZL7tempbuf.lto_priv.2+16
	movl	$1987651616, __ZL7tempbuf.lto_priv.2+12
	movl	$2112032, __ZL7tempbuf.lto_priv.2+19
	movl	$65536, 8(%esp)
	movswl	34(%eax,%edi), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$908093281, __ZL7tempbuf.lto_priv.2+8
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 24(%esp)
	leal	34(%edi), %eax
	mull	%edx
	movzwl	24(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 34(%ecx)
L187:
	movl	$LC6, (%esp)
	call	*%esi
L184:
	cmpb	$0, _keystatus+8
	je	L189
	movb	$0, _keystatus+8
	cmpw	$2, %bx
	jle	L266
	cmpw	$3, %bx
	jne	L192
	movl	$-1171354717, %eax
	leal	36(%edi), %edx
	movl	_sprite, %ecx
	movl	$924870497, __ZL7tempbuf.lto_priv.2+8
	mull	%edx
	movl	$1987717152, __ZL7tempbuf.lto_priv.2+12
	addl	%edi, %ecx
	movl	$824208485, __ZL7tempbuf.lto_priv.2+16
	movl	$809246761, __ZL7tempbuf.lto_priv.2+20
	shrl	$5, %edx
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	addl	$1, _spritechanged(,%edx,4)
	movl	$892678701, __ZL7tempbuf.lto_priv.2+24
	movl	$540680254, __ZL7tempbuf.lto_priv.2+28
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	37(%ecx), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	36(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	20(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 37(%ecx)
L192:
	movl	$LC6, (%esp)
	call	*%esi
L189:
	cmpb	$0, _keystatus+9
	je	L194
	movb	$0, _keystatus+9
	cmpw	$3, %bx
	je	L267
L195:
	movl	$LC6, (%esp)
	call	*%esi
L194:
	cmpb	$0, _keystatus+10
	je	L196
	movb	$0, _keystatus+10
	cmpw	$3, %bx
	je	L268
L197:
	movl	$LC6, (%esp)
	call	*%esi
L196:
	cmpb	$0, _keystatus+11
	je	L146
	movb	$0, _keystatus+11
	cmpw	$3, %bx
	je	L269
L198:
	movl	$LC6, (%esp)
	call	*%esi
L146:
	cmpb	$0, _keystatus+39
	je	L140
	movzbl	_keystatus+54, %eax
	orb	_keystatus+42, %al
	movzbl	_keystatus+2, %edx
	jne	L270
	testb	%dl, %dl
	jne	L271
L203:
	cmpb	$0, _keystatus+3
	je	L206
	movb	$0, _keystatus+3
	cmpw	$3, %bx
	je	L272
L207:
	movl	$LC6, (%esp)
	call	*%esi
L206:
	cmpb	$0, _keystatus+4
	je	L209
	movb	$0, _keystatus+4
	cmpw	$3, %bx
	je	L273
L210:
	movl	$LC6, (%esp)
	call	*%esi
L209:
	cmpb	$0, _keystatus+5
	je	L212
	movb	$0, _keystatus+5
	cmpw	$3, %bx
	je	L274
L213:
	movl	$LC6, (%esp)
	call	*%esi
L212:
	cmpb	$0, _keystatus+6
	je	L215
	movb	$0, _keystatus+6
	cmpw	$3, %bx
	je	L275
L216:
	movl	$LC6, (%esp)
	call	*%esi
L215:
	cmpb	$0, _keystatus+7
	je	L218
	movb	$0, _keystatus+7
	cmpw	$3, %bx
	je	L276
L219:
	movl	$LC6, (%esp)
	call	*%esi
L218:
	cmpb	$0, _keystatus+8
	je	L221
	movb	$0, _keystatus+8
	cmpw	$3, %bx
	je	L277
L222:
	movl	$LC6, (%esp)
	call	*%esi
L221:
	cmpb	$0, _keystatus+9
	je	L224
	movb	$0, _keystatus+9
	cmpw	$3, %bx
	je	L278
L225:
	movl	$LC6, (%esp)
	call	*%esi
L224:
	cmpb	$0, _keystatus+10
	je	L227
	movb	$0, _keystatus+10
	cmpw	$3, %bx
	je	L279
L228:
	movl	$LC6, (%esp)
	call	*%esi
L227:
	cmpb	$0, _keystatus+11
	je	L140
	movb	$0, _keystatus+11
	cmpw	$3, %bx
	je	L280
L230:
	movl	$LC6, 56(%esp)
	addl	$36, %esp
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
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L256:
	.cfi_restore_state
	movzwl	56(%esp), %eax
	movl	$__ZL17sw_printmessage16PKc, %esi
	movl	$__ZL14sw_getnumber16PKciic, %ebp
	movl	$3, %ebx
	andb	$-65, %ah
	jmp	L141
	.p2align 4,,10
	.p2align 3
L140:
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
	ret
	.p2align 4,,10
	.p2align 3
L270:
	.cfi_restore_state
	testb	%dl, %dl
	je	L140
	movb	$0, _keystatus+2
	cmpw	$3, %bx
	jne	L230
	movl	16(%esp), %edi
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	$824207201, __ZL7tempbuf.lto_priv.2+16
	movl	$807936049, __ZL7tempbuf.lto_priv.2+20
	movl	$544370464, __ZL7tempbuf.lto_priv.2+24
	movl	$540682545, __ZL7tempbuf.lto_priv.2+28
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	movzbl	42(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 20(%esp)
	shrb	$5, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L202
	orw	$32, 42(%edi)
	jmp	L230
	.p2align 4,,10
	.p2align 3
L232:
	movl	$__ZL18sw_printmessage256PKc, %esi
	movl	$__ZL15sw_getnumber256PKciic, %ebp
	jmp	L141
	.p2align 4,,10
	.p2align 3
L257:
	movl	_g_visibility, %eax
	movb	$0, _keystatus+74
	movl	%eax, %ecx
	sarl	$3, %ecx
	subl	%ecx, %eax
	movl	$16348, %ecx
	cmovs	%ecx, %eax
	movl	%eax, _g_visibility
	jmp	L142
	.p2align 4,,10
	.p2align 3
L266:
	testw	%bx, %bx
	jle	L192
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$694644329, __ZL7tempbuf.lto_priv.2+24
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$924870497, __ZL7tempbuf.lto_priv.2+8
	leal	0(,%eax,8), %edx
	movl	$1818634272, __ZL7tempbuf.lto_priv.2+12
	movl	$2037542767, __ZL7tempbuf.lto_priv.2+16
	movl	$1852727664, __ZL7tempbuf.lto_priv.2+20
	movl	$2112041, __ZL7tempbuf.lto_priv.2+27
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	31(%ecx,%eax,8), %eax
	movl	%edx, 24(%esp)
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	24(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 20(%esp)
	addl	%edx, %ecx
	leal	31(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzbl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 31(%ecx)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L265:
	testw	%bx, %bx
	jle	L187
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$694644329, __ZL7tempbuf.lto_priv.2+24
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$908093281, __ZL7tempbuf.lto_priv.2+8
	leal	0(,%eax,8), %edx
	movl	$1818634272, __ZL7tempbuf.lto_priv.2+12
	movl	$2037542767, __ZL7tempbuf.lto_priv.2+16
	movl	$1852727664, __ZL7tempbuf.lto_priv.2+20
	movl	$2112041, __ZL7tempbuf.lto_priv.2+27
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	31(%ecx,%eax,8), %eax
	movl	%edx, 28(%esp)
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 24(%esp)
	addl	%edx, %ecx
	leal	31(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 31(%ecx)
	jmp	L187
	.p2align 4,,10
	.p2align 3
L264:
	testw	%bx, %bx
	jle	L182
	movswl	20(%esp), %eax
	movl	_sector, %ecx
	movl	$694644329, __ZL7tempbuf.lto_priv.2+24
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	leal	(%eax,%eax,4), %eax
	movl	$1948283503, __ZL7tempbuf.lto_priv.2+4
	leal	0(,%eax,8), %edx
	movl	$891316065, __ZL7tempbuf.lto_priv.2+8
	movl	$1818634272, __ZL7tempbuf.lto_priv.2+12
	movl	$2020765551, __ZL7tempbuf.lto_priv.2+16
	movl	$1852727664, __ZL7tempbuf.lto_priv.2+20
	movl	$2112041, __ZL7tempbuf.lto_priv.2+27
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	30(%ecx,%eax,8), %eax
	movl	%edx, 28(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	_sector, %ecx
	movl	%eax, 24(%esp)
	addl	%edx, %ecx
	leal	30(%edx), %eax
	movl	$-858993459, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, 30(%ecx)
	jmp	L182
	.p2align 4,,10
	.p2align 3
L258:
	movl	16(%esp), %eax
	movzwl	42(%eax), %ecx
	xorl	%eax, %eax
	movw	%cx, 28(%esp)
	andl	$7, %ecx
	addl	$1, %ecx
	cmpw	$4, %cx
	cmovnb	%eax, %ecx
	movl	16(%esp), %eax
	addl	$42, %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	%edx, %eax
	movl	16(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	andw	$-8, 42(%edx)
	addl	$1, _spritechanged(,%eax,4)
	orw	%cx, 42(%edx)
	jmp	L147
	.p2align 4,,10
	.p2align 3
L271:
	movb	$0, _keystatus+2
	cmpw	$3, %bx
	je	L281
L204:
	movl	$LC6, (%esp)
	call	*%esi
	jmp	L203
	.p2align 4,,10
	.p2align 3
L160:
	movl	_sprite, %eax
	movl	$0, 12(%esp)
	movl	$694641012, __ZL7tempbuf.lto_priv.2+16
	movl	$65536, 8(%esp)
	movl	$2112041, __ZL7tempbuf.lto_priv.2+19
	movswl	40(%eax,%edi), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$1768433696, __ZL7tempbuf.lto_priv.2+12
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	40(%edi), %eax
	mull	%edx
	movzwl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	jmp	L163
	.p2align 4,,10
	.p2align 3
L175:
	movl	_sprite, %eax
	movl	$32, %edx
	movl	$874538849, __ZL7tempbuf.lto_priv.2+8
	movw	%dx, __ZL7tempbuf.lto_priv.2+20
	movl	$1851861024, __ZL7tempbuf.lto_priv.2+12
	movl	$975186279, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movswl	28(%eax,%edi), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 24(%esp)
	leal	28(%edi), %eax
	mull	%edx
	movzwl	24(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ecx)
	jmp	L178
	.p2align 4,,10
	.p2align 3
L165:
	movl	_sprite, %eax
	movl	$0, 12(%esp)
	movl	$694641012, __ZL7tempbuf.lto_priv.2+16
	movl	$65536, 8(%esp)
	movl	$2112041, __ZL7tempbuf.lto_priv.2+19
	movswl	38(%eax,%edi), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$840984417, __ZL7tempbuf.lto_priv.2+8
	movl	$1869359136, __ZL7tempbuf.lto_priv.2+12
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	38(%edi), %eax
	mull	%edx
	movzwl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	cmpw	$2307, 14(%ecx)
	jne	L168
	cmpl	$200, _qsetmode
	je	L168
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	xorl	%ecx, %ecx
	movw	%cx, _siNextEndTag
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	_totalclock, %eax
	movl	$LC7, (%esp)
	movl	%eax, _lastpm16time
	movswl	_siNextEndTag, %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L168
	.p2align 4,,10
	.p2align 3
L170:
	movl	_sprite, %eax
	movl	$539587699, __ZL7tempbuf.lto_priv.2+20
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$857761633, __ZL7tempbuf.lto_priv.2+8
	movl	$1818437664, __ZL7tempbuf.lto_priv.2+12
	movl	$1768190057, __ZL7tempbuf.lto_priv.2+16
	movl	$2112032, __ZL7tempbuf.lto_priv.2+23
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	18(%eax,%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	18(%edi), %eax
	mull	%edx
	movzbl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	jmp	L173
	.p2align 4,,10
	.p2align 3
L269:
	movl	$-1171354717, %eax
	leal	30(%edi), %edx
	movl	_sprite, %ecx
	movl	$540947765, __ZL7tempbuf.lto_priv.2+28
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	mull	%edx
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	addl	%edi, %ecx
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$1864900656, __ZL7tempbuf.lto_priv.2+12
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$1919250039, __ZL7tempbuf.lto_priv.2+16
	movl	$539570720, __ZL7tempbuf.lto_priv.2+20
	movl	$841822268, __ZL7tempbuf.lto_priv.2+24
	movl	$2112032, __ZL7tempbuf.lto_priv.2+31
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	30(%ecx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	leal	30(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	20(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 30(%ecx)
	jmp	L198
	.p2align 4,,10
	.p2align 3
L268:
	movl	$32, %eax
	leal	30(%edi), %edx
	movl	_sprite, %ecx
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movw	%ax, __ZL7tempbuf.lto_priv.2+32
	movl	$-1171354717, %eax
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	mull	%edx
	addl	%edi, %ecx
	movl	$958424929, __ZL7tempbuf.lto_priv.2+8
	movl	$2003773472, __ZL7tempbuf.lto_priv.2+12
	movl	$544367982, __ZL7tempbuf.lto_priv.2+16
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$1008740657, __ZL7tempbuf.lto_priv.2+20
	movl	$892480816, __ZL7tempbuf.lto_priv.2+24
	movl	$975191605, __ZL7tempbuf.lto_priv.2+28
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	31(%ecx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	leal	30(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	20(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 31(%ecx)
	jmp	L197
	.p2align 4,,10
	.p2align 3
L267:
	movl	$-1171354717, %eax
	leal	36(%edi), %edx
	movl	_sprite, %ecx
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	mull	%edx
	movl	$941647713, __ZL7tempbuf.lto_priv.2+8
	addl	%edi, %ecx
	movl	$1987717152, __ZL7tempbuf.lto_priv.2+12
	movl	$840985701, __ZL7tempbuf.lto_priv.2+16
	shrl	$5, %edx
	movl	$809246761, __ZL7tempbuf.lto_priv.2+20
	addl	$1, _spritechanged(,%edx,4)
	movl	$892678701, __ZL7tempbuf.lto_priv.2+24
	movl	$540680254, __ZL7tempbuf.lto_priv.2+28
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	36(%ecx), %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	36(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	20(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 36(%ecx)
	jmp	L195
	.p2align 4,,10
	.p2align 3
L166:
	cmpw	$4, %bx
	jne	L168
L167:
	movl	24(%esp), %edx
	movl	_wall, %eax
	movl	$673198624, __ZL7tempbuf.lto_priv.2+8
	movl	$1635020652, __ZL7tempbuf.lto_priv.2+12
	sall	$5, %edx
	movb	$0, __ZL7tempbuf.lto_priv.2+20
	movl	$540682599, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movswl	26(%eax,%edx), %eax
	movl	%edx, 28(%esp)
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	$1734439968, __ZL7tempbuf.lto_priv.2+4
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	%eax, %ecx
	movl	_wall, %eax
	addl	%edx, %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 26(%eax)
	jmp	L168
	.p2align 4,,10
	.p2align 3
L161:
	cmpw	$4, %bx
	jne	L163
L162:
	movl	24(%esp), %edx
	movl	_wall, %eax
	movl	$673198368, __ZL7tempbuf.lto_priv.2+8
	movl	$1635019112, __ZL7tempbuf.lto_priv.2+12
	sall	$5, %edx
	movb	$0, __ZL7tempbuf.lto_priv.2+20
	movl	$540682599, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movswl	28(%eax,%edx), %eax
	movl	%edx, 28(%esp)
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	$1734439968, __ZL7tempbuf.lto_priv.2+4
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	%eax, %ecx
	movl	_wall, %eax
	addl	%edx, %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%cx, 28(%eax)
	jmp	L163
	.p2align 4,,10
	.p2align 3
L176:
	cmpw	$4, %bx
	jne	L178
L177:
	movl	24(%esp), %edx
	movl	_wall, %eax
	movl	$1734439968, __ZL7tempbuf.lto_priv.2+4
	movl	$673199136, __ZL7tempbuf.lto_priv.2+8
	sall	$5, %edx
	movl	$1851879545, __ZL7tempbuf.lto_priv.2+12
	movl	$1735289198, __ZL7tempbuf.lto_priv.2+16
	movl	$2112041, __ZL7tempbuf.lto_priv.2+20
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	25(%eax,%edx), %eax
	movl	%edx, 24(%esp)
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	24(%esp), %edx
	movl	%eax, %ecx
	movl	_wall, %eax
	addl	%edx, %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movb	%cl, 25(%eax)
	jmp	L178
	.p2align 4,,10
	.p2align 3
L171:
	cmpw	$4, %bx
	jne	L173
L172:
	movl	24(%esp), %edx
	movl	_wall, %eax
	movl	$1734439968, __ZL7tempbuf.lto_priv.2+4
	movl	$673198880, __ZL7tempbuf.lto_priv.2+8
	sall	$5, %edx
	movl	$1851879544, __ZL7tempbuf.lto_priv.2+12
	movl	$1735289198, __ZL7tempbuf.lto_priv.2+16
	movl	$2112041, __ZL7tempbuf.lto_priv.2+20
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	24(%eax,%edx), %eax
	movl	%edx, 28(%esp)
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	movl	28(%esp), %edx
	movl	%eax, %ecx
	movl	_wall, %eax
	addl	%edx, %eax
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movb	%cl, 24(%eax)
	jmp	L173
	.p2align 4,,10
	.p2align 3
L202:
	movl	16(%esp), %eax
	andw	$-33, 42(%eax)
	jmp	L230
	.p2align 4,,10
	.p2align 3
L280:
	movl	16(%esp), %edi
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	$824207201, __ZL7tempbuf.lto_priv.2+16
	movl	$807936048, __ZL7tempbuf.lto_priv.2+20
	movl	$544370464, __ZL7tempbuf.lto_priv.2+24
	movl	$540682545, __ZL7tempbuf.lto_priv.2+28
	movb	$0, __ZL7tempbuf.lto_priv.2+32
	movswl	42(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	shrl	$31, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L231
	orw	$-32768, 42(%edi)
	jmp	L230
	.p2align 4,,10
	.p2align 3
L259:
	movl	24(%esp), %eax
	movl	$LC5, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	_sprite, %eax
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movsbl	16(%eax,%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	16(%edi), %eax
	mull	%edx
	movzbl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 16(%ecx)
	jmp	L151
	.p2align 4,,10
	.p2align 3
L260:
	movl	$32, %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movw	%ax, __ZL7tempbuf.lto_priv.2+20
	movl	_sprite, %eax
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$1881677874, __ZL7tempbuf.lto_priv.2+12
	movl	$975793249, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movzbl	17(%eax,%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	17(%edi), %eax
	mull	%edx
	movzbl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%ecx)
	jmp	L153
	.p2align 4,,10
	.p2align 3
L261:
	movl	$32, %eax
	leal	22(%edi), %edx
	movl	_sprite, %ecx
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movw	%ax, __ZL7tempbuf.lto_priv.2+32
	movl	$-1171354717, %eax
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	mull	%edx
	addl	%edi, %ecx
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$2015895603, __ZL7tempbuf.lto_priv.2+12
	movl	$1936090735, __ZL7tempbuf.lto_priv.2+16
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2033153125, __ZL7tempbuf.lto_priv.2+20
	movl	$1936090735, __ZL7tempbuf.lto_priv.2+24
	movl	$975795301, __ZL7tempbuf.lto_priv.2+28
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movswl	22(%ecx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	leal	22(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 22(%ecx)
	jmp	L155
	.p2align 4,,10
	.p2align 3
L262:
	movl	$32, %eax
	leal	20(%edi), %edx
	movl	_sprite, %ecx
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movw	%ax, __ZL7tempbuf.lto_priv.2+32
	movl	$-1171354717, %eax
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	mull	%edx
	addl	%edi, %ecx
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$2015895604, __ZL7tempbuf.lto_priv.2+12
	movl	$1701864818, __ZL7tempbuf.lto_priv.2+16
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2033153121, __ZL7tempbuf.lto_priv.2+20
	movl	$1701864818, __ZL7tempbuf.lto_priv.2+24
	movl	$975795297, __ZL7tempbuf.lto_priv.2+28
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movswl	20(%ecx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	leal	20(%edi), %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 20(%ecx)
	jmp	L157
	.p2align 4,,10
	.p2align 3
L263:
	movl	_sprite, %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+4
	movl	$824207201, __ZL7tempbuf.lto_priv.2+8
	movl	$2049450037, __ZL7tempbuf.lto_priv.2+12
	movl	$2112041, __ZL7tempbuf.lto_priv.2+16
	movl	$0, 12(%esp)
	movl	$65536, 8(%esp)
	movl	8(%eax,%edi), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	%eax, 4(%esp)
	call	*%ebp
	movl	$-1171354717, %edx
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	leal	8(%edi), %eax
	mull	%edx
	movl	28(%esp), %eax
	addl	%edi, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ecx)
	jmp	L158
	.p2align 4,,10
	.p2align 3
L281:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$824207201, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	42(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$6, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L205
	movl	16(%esp), %edi
	orw	$64, 42(%edi)
	jmp	L204
	.p2align 4,,10
	.p2align 3
L279:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$958424929, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$6, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L229
	movl	16(%esp), %edi
	orw	$16384, 42(%edi)
	jmp	L228
	.p2align 4,,10
	.p2align 3
L278:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$941647713, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$5, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L226
	movl	16(%esp), %edi
	orw	$8192, 42(%edi)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L274:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$874538849, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	%al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L214
	movl	16(%esp), %edi
	orw	$512, 42(%edi)
	jmp	L213
	.p2align 4,,10
	.p2align 3
L276:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$908093281, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$3, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L220
	movl	16(%esp), %edi
	orw	$2048, 42(%edi)
	jmp	L219
	.p2align 4,,10
	.p2align 3
L272:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$840984417, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	42(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$7, %al
	movzbl	%al, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L208
	movl	16(%esp), %edi
	orw	$128, 42(%edi)
	jmp	L207
	.p2align 4,,10
	.p2align 3
L277:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$924870497, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	42(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$4, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L223
	movl	16(%esp), %edi
	orw	$16, 42(%edi)
	jmp	L222
	.p2align 4,,10
	.p2align 3
L273:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$857761633, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L211
	movl	16(%esp), %edi
	orw	$256, 42(%edi)
	jmp	L210
	.p2align 4,,10
	.p2align 3
L275:
	movl	$1948280180, __ZL7tempbuf.lto_priv.2+12
	movl	16(%esp), %edi
	movl	$891316065, __ZL7tempbuf.lto_priv.2+16
	movl	$540026912, __ZL7tempbuf.lto_priv.2+20
	movl	$824210031, __ZL7tempbuf.lto_priv.2+24
	movl	$2112041, __ZL7tempbuf.lto_priv.2+28
	movzbl	43(%edi), %eax
	movl	$1819242306, __ZL7tempbuf.lto_priv.2
	movb	%al, 16(%esp)
	shrb	$2, %al
	andl	$1, %eax
	movl	$0, 12(%esp)
	movl	$544104805, __ZL7tempbuf.lto_priv.2+4
	movl	$1769107539, __ZL7tempbuf.lto_priv.2+8
	movl	$65536, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	*%ebp
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movl	%edi, 16(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testl	%ecx, %ecx
	je	L217
	movl	16(%esp), %edi
	orw	$1024, 42(%edi)
	jmp	L216
L205:
	movl	16(%esp), %eax
	andw	$-65, 42(%eax)
	jmp	L204
L217:
	movl	16(%esp), %eax
	andw	$-1025, 42(%eax)
	jmp	L216
L231:
	movl	16(%esp), %eax
	andw	$32767, 42(%eax)
	jmp	L230
L220:
	movl	16(%esp), %eax
	andw	$-2049, 42(%eax)
	jmp	L219
L226:
	movl	16(%esp), %eax
	andw	$-8193, 42(%eax)
	jmp	L225
L223:
	movl	16(%esp), %eax
	andw	$-17, 42(%eax)
	jmp	L222
L229:
	movl	16(%esp), %eax
	andw	$-16385, 42(%eax)
	jmp	L228
L208:
	movl	16(%esp), %eax
	andw	$-129, 42(%eax)
	jmp	L207
L214:
	movl	16(%esp), %eax
	andw	$-513, 42(%eax)
	jmp	L213
L211:
	movl	16(%esp), %eax
	andw	$-257, 42(%eax)
	jmp	L210
	.cfi_endproc
LFE20:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator4FreeEPv
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator4FreeEPv:
LFB22:
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
	movl	8(%ebp), %esi
	cmpl	$16384, %esi
	jbe	L282
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %edi
	cmpl	(%ecx), %eax
	jnb	L284
	leal	(%eax,%eax,4), %eax
	leal	48(%ecx), %ebx
	leal	0(,%eax,8), %edx
	movl	%ebx, 12(%esp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %ebx
	movl	(%eax,%ebx,4), %ebx
	movl	%edi, %eax
	movl	%ebx, 8(%esp)
	sall	$6, %eax
	addl	%eax, %ebx
	movl	%eax, 4(%esp)
	movl	_tlsCacheBuckets@secrel32+52(%ebx), %eax
	testl	%eax, %eax
	je	L285
	movl	_tlsCacheBuckets@secrel32(%ebx), %ecx
	movzbl	_tlsCacheBuckets@secrel32+60(%ebx), %edx
	subl	%ecx, %esi
	movl	%esi, 12(%esp)
	cmpb	$9, %dl
	jbe	L304
	movl	_tlsCacheBuckets@secrel32+4(%ebx), %esi
	movl	_tlsCacheBuckets@secrel32+56(%ebx), %edx
	movl	%esi, 8(%esp)
	cmpl	%eax, %edx
	jnb	L287
	movl	12(%esp), %eax
	movl	%eax, (%esi,%edx,4)
	addl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%ebx)
L282:
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L284:
	.cfi_restore_state
	movl	%esi, %eax
	call	_mi_free
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L304:
	.cfi_restore_state
	movl	4(%esp), %edi
	movl	8(%esp), %eax
	leal	_tlsCacheBuckets@secrel32(%eax,%edi), %eax
	movl	%esi, 12(%eax,%edx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%ebx)
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L285:
	.cfi_restore_state
	leal	48(%ecx,%edx), %edi
	movl	$1, %ebx
	lock xaddl	%ebx, 8(%edi)
	movl	%esi, %eax
	subl	60(%ecx,%edx), %eax
	movl	%eax, %ecx
	movlps	(%edi), %xmm0
	movlps	%xmm0, 16(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %edx
L302:
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	%edx, 36(%esp)
	movl	36(%esp), %edx
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	lock cmpxchg8b	(%edi)
	jne	L302
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L287:
	.cfi_restore_state
	movl	%edx, %esi
	movl	$1, %eax
	shrl	%esi
	je	L288
	movl	%edx, %eax
	movl	%esi, 4(%esp)
	subl	%esi, %eax
	movl	8(%esp), %esi
	addl	(%esi,%eax,4), %ecx
	movl	%ecx, (%esp)
	movl	%ecx, %esi
	leal	1(%eax), %ecx
	cmpl	%edx, %ecx
	jnb	L296
	movl	8(%esp), %ecx
	movl	4(%ecx,%eax,4), %ecx
	movl	$16777215, (%esi)
	addl	$2, %eax
	movl	%ecx, 4(%esi)
	addl	_tlsCacheBuckets@secrel32(%ebx), %ecx
	movl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%ebx), %eax
	jnb	L289
	movl	4(%esp), %ecx
	movl	%edi, 8(%esp)
	subl	%edx, %ecx
	leal	16777214(%ecx), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L290:
	movl	_tlsCacheBuckets@secrel32+4(%ebx), %edx
	leal	(%edi,%eax), %ecx
	movl	(%edx,%eax,4), %edx
	movl	%ecx, (%esi)
	addl	$1, %eax
	movl	%edx, 4(%esi)
	addl	_tlsCacheBuckets@secrel32(%ebx), %edx
	movl	%edx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%ebx), %eax
	jb	L290
	movl	8(%esp), %edi
L289:
	movl	__tls_index, %ebx
	movl	%fs:44, %edx
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%edx,%ebx,4), %eax
	movl	$1, %ebx
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, 8(%esp)
	lock xaddl	%ebx, 8(%eax)
	movl	(%esp), %ecx
	subl	12(%eax), %ecx
	movlps	(%eax), %xmm1
	movlps	%xmm1, 24(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%esi, (%esp)
L292:
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	movl	(%esp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	8(%esp), %esi
	movl	32(%esp), %eax
	movl	36(%esp), %edx
	lock cmpxchg8b	(%esi)
	je	L297
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	jmp	L292
	.p2align 4,,10
	.p2align 3
L297:
	movl	%fs:44, %edx
	movl	__tls_index, %esi
	movl	%edi, %eax
	sall	$6, %eax
	addl	(%edx,%esi,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %eax
	subl	4(%esp), %eax
L288:
	movl	%fs:44, %edx
	movl	__tls_index, %esi
	sall	$6, %edi
	addl	(%edx,%esi,4), %edi
	movl	12(%esp), %esi
	movl	_tlsCacheBuckets@secrel32+4(%edi), %edx
	movl	%esi, (%edx,%eax,4)
	addl	$1, %eax
	movl	%eax, _tlsCacheBuckets@secrel32+56(%edi)
	jmp	L282
L296:
	movl	(%esp), %esi
	jmp	L289
	.cfi_endproc
LFE22:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator8AllocateILb1EEEPvjj:
LFB32:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	testl	%eax, %eax
	je	L305
	movl	12(%ebp), %eax
	cmpl	%eax, 8(%ebp)
	movl	%ecx, %ebx
	cmovnb	8(%ebp), %eax
	subl	$1, %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	cmpl	(%ebx), %eax
	jb	L324
L308:
	lock addl	$1, 380(%ebx)
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edi
L305:
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L324:
	.cfi_restore_state
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	%ecx, %edi
	sall	$6, %edi
	movl	(%eax,%edx,4), %esi
	leal	(%edi,%esi), %eax
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %edx
	testb	%dl, %dl
	jne	L325
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	testl	%edx, %edx
	je	L311
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	subl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
L310:
	testl	%edi, %edi
	je	L326
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 68(%ebx,%eax,8)
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L325:
	.cfi_restore_state
	subl	$1, %edx
	leal	_tlsCacheBuckets@secrel32(%esi,%edi), %esi
	movb	%dl, _tlsCacheBuckets@secrel32+60(%eax)
	movzbl	%dl, %edx
	movl	12(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
	jmp	L310
	.p2align 4,,10
	.p2align 3
L326:
	cmpl	(%ebx), %ecx
	jnb	L308
L311:
	leal	(%ecx,%ecx,4), %eax
	leal	48(%ebx,%eax,8), %esi
	.p2align 4
	.p2align 3
L317:
	movlps	(%esi), %xmm0
	movlps	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
L316:
	andl	%edx, %eax
	cmpl	$-1, %eax
	je	L313
	movl	24(%esp), %edi
	addl	12(%esi), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	lock cmpxchg8b	(%esi)
	jne	L327
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	andl	$7, %ecx
	leal	(%ecx,%ecx,4), %eax
	lock addl	$1, 72(%ebx,%eax,8)
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
L313:
	.cfi_restore_state
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 76(%ebx,%eax,8)
	addl	$1, %ecx
	addl	$40, %esi
	cmpl	(%ebx), %ecx
	jb	L317
	jmp	L308
	.p2align 4,,10
	.p2align 3
L327:
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	jmp	L316
	.cfi_endproc
LFE32:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0:
LFB33:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L340
	movl	$8, %eax
	cmpl	%eax, 8(%ebp)
	cmovnb	8(%ebp), %eax
	movl	%ecx, %ebx
	subl	$1, %eax
	shrl	$4, %eax
	movl	%eax, %ecx
	cmpl	(%ebx), %eax
	jb	L347
L330:
	lock addl	$1, 380(%ebx)
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	$8, %ecx
	movl	(%eax,%edx,4), %eax
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	$0, (%esp)
	movl	8(%ebp), %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	leal	-12(%ebp), %esp
	movl	%eax, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	movl	%edi, %eax
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.p2align 4,,10
	.p2align 3
L347:
	.cfi_restore_state
	movl	__tls_index, %edx
	movl	%fs:44, %eax
	movl	%ecx, %edi
	sall	$6, %edi
	movl	(%eax,%edx,4), %eax
	movl	%eax, 8(%esp)
	addl	%edi, %eax
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L348
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	testl	%edx, %edx
	je	L333
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	subl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	movl	(%esi,%edx,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
L332:
	testl	%edi, %edi
	je	L349
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 68(%ebx,%eax,8)
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L348:
	.cfi_restore_state
	leal	-1(%esi), %edx
	movb	%dl, _tlsCacheBuckets@secrel32+60(%eax)
	movl	8(%esp), %edx
	leal	_tlsCacheBuckets@secrel32(%edx,%edi), %edi
	leal	-1(%esi), %edx
	movzbl	%dl, %esi
	movl	12(%edi,%esi,4), %edi
	addl	_tlsCacheBuckets@secrel32(%eax), %edi
	jmp	L332
	.p2align 4,,10
	.p2align 3
L349:
	cmpl	(%ebx), %ecx
	jnb	L330
L333:
	leal	(%ecx,%ecx,4), %eax
	leal	48(%ebx,%eax,8), %esi
	.p2align 4
	.p2align 3
L339:
	movlps	(%esi), %xmm0
	movlps	%xmm0, 12(%esp)
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
L338:
	andl	%edx, %eax
	cmpl	$-1, %eax
	je	L335
	movl	24(%esp), %edi
	addl	12(%esi), %edi
	movl	(%edi), %ebx
	movl	4(%edi), %ecx
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	lock cmpxchg8b	(%esi)
	jne	L350
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	andl	$7, %ecx
	leal	(%ecx,%ecx,4), %eax
	lock addl	$1, 72(%ebx,%eax,8)
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
	ret	$4
	.p2align 4,,10
	.p2align 3
L335:
	.cfi_restore_state
	movl	8(%esp), %ecx
	movl	4(%esp), %ebx
	movl	%ecx, %eax
	andl	$7, %eax
	leal	(%eax,%eax,4), %eax
	lock addl	$1, 76(%ebx,%eax,8)
	addl	$1, %ecx
	addl	$40, %esi
	cmpl	(%ebx), %ecx
	jb	L339
	jmp	L330
	.p2align 4,,10
	.p2align 3
L350:
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	jmp	L338
	.p2align 4,,10
	.p2align 3
L340:
	leal	-12(%ebp), %esp
	movl	$8, %edi
	popl	%ebx
	.cfi_restore 3
	movl	%edi, %eax
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z8GetTokenh.part.0
	.def	__Z8GetTokenh.part.0;	.scl	2;	.type	32;	.endef
__Z8GetTokenh.part.0:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	_script_p, %edx
	movl	_scriptend_p, %ecx
	cmpl	%ecx, %edx
	jb	L352
L358:
	testb	%bl, %bl
	je	L363
L353:
	movb	$1, _endofscript
L351:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L352:
	.cfi_restore_state
	movzbl	(%edx), %eax
	cmpb	$32, %al
	ja	L387
L369:
	movl	%edx, %eax
	cmpl	%ecx, %edx
	jnb	L358
	addl	$1, %edx
	movl	%edx, _script_p
	cmpb	$10, (%eax)
	jne	L352
	movl	_scriptline, %eax
	testb	%bl, %bl
	je	L388
	addl	$1, %eax
	movl	%eax, _scriptline
	movzbl	(%edx), %eax
	cmpb	$32, %al
	jbe	L369
L386:
	cmpl	%ecx, %edx
	jnb	L358
	cmpb	$35, %al
	je	L362
L360:
	movl	$_token, %eax
	jmp	L368
	.p2align 4,,10
	.p2align 3
L389:
	cmpb	$35, %bl
	je	L367
L368:
	addl	$1, %edx
	addl	$1, %eax
	movl	%edx, _script_p
	movzbl	-1(%edx), %ebx
	movb	%bl, -1(%eax)
	cmpl	%edx, %ecx
	je	L367
	movzbl	(%edx), %ebx
	cmpb	$32, %bl
	ja	L389
L367:
	movb	$0, (%eax)
	jmp	L351
	.p2align 4,,10
	.p2align 3
L387:
	cmpl	%ecx, %edx
	jnb	L358
	cmpb	$35, %al
	jne	L360
	testb	%bl, %bl
	je	L363
L362:
	leal	1(%edx), %eax
	jmp	L364
	.p2align 5
	.p2align 4,,10
	.p2align 3
L365:
	cmpl	%eax, %ecx
	je	L353
	addl	$1, %eax
L364:
	movl	%eax, _script_p
	movl	%eax, %edx
	cmpb	$10, -1(%eax)
	jne	L365
	movzbl	(%eax), %eax
	cmpb	$32, %al
	jbe	L369
	jmp	L386
L363:
	movl	_scriptline, %eax
	movl	$LC0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z5ErrorPKcz.constprop.0
L388:
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	__Z5ErrorPKcz.constprop.0
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z13ResetBuildFAFv
	.def	__Z13ResetBuildFAFv;	.scl	2;	.type	32;	.endef
__Z13ResetBuildFAFv:
LFB43:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %eax
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movzwl	_headspritestat+120, %edi
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movzwl	_numwalls, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	_sector, %esi
	movl	%eax, (%esp)
	cmpw	$-1, %di
	je	L421
	movw	%bx, 6(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	$-858993459, %ebp
	.p2align 4
	.p2align 3
L396:
	movswl	%di, %ebx
	movzwl	_nextspritestat(%ebx,%ebx), %edi
	imull	$44, %ebx, %ebx
	addl	(%esp), %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	cmpw	$2356, 16(%ecx)
	jne	L400
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$341, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L400:
	cmpw	$2356, 24(%ecx)
	jne	L393
	leal	24(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$341, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L393:
	cmpw	$2357, 16(%ecx)
	jne	L394
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$342, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L394:
	cmpw	$2357, 24(%ecx)
	jne	L395
	leal	24(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$342, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%ecx)
L395:
	cmpw	$-1, %di
	jne	L396
	movzwl	6(%esp), %ebx
	movl	20(%esp), %ebp
	.cfi_restore 5
	testw	%bx, %bx
	jle	L398
L397:
	movl	_wall, %esi
	movl	$16, %eax
	xorl	%edx, %edx
	jmp	L403
	.p2align 4,,10
	.p2align 3
L401:
	cmpw	$2357, %cx
	jne	L402
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	$342, %ecx
	movw	%cx, (%esi,%eax)
L402:
	addl	$1, %edx
	addl	$32, %eax
	cmpw	%bx, %dx
	jge	L398
L403:
	movzwl	(%esi,%eax), %ecx
	cmpw	$2356, %cx
	jne	L401
	movl	%eax, %ecx
	movl	$341, %edi
	addl	$1, %edx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movw	%di, (%esi,%eax)
	addl	$32, %eax
	cmpw	%bx, %dx
	jl	L403
L398:
	movzwl	_headspritestat+120, %esi
	movl	_sprite, %edi
	cmpw	$-1, %si
	je	L390
	.p2align 4
	.p2align 3
L406:
	movswl	%si, %edx
	movzwl	_nextspritestat(%edx,%edx), %esi
	movl	%edx, %ebx
	imull	$44, %edx, %edx
	testw	$-1025, 26(%edi,%edx)
	je	L407
	movl	%ebx, %eax
	call	_do_deletespritestat
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofstat
L407:
	cmpw	$-1, %si
	jne	L406
L390:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L421:
	.cfi_restore_state
	testw	%bx, %bx
	jg	L397
	jmp	L390
	.cfi_endproc
LFE43:
	.section .rdata,"dr"
	.align 4
LC8:
	.ascii "Two VIEW_THRU_ tags with same match found on level\12"
	.ascii "1: x %d, y %d \12"
	.ascii "2: x %d, y %d\0"
	.align 4
LC9:
	.ascii "Mirror used for non-connect area. Use tile 342. Sect %d, x %d, y %d\12\0"
	.align 4
LC10:
	.ascii "COULD NOT FIND TAGGED LEVEL2 SECTOR FROM X %d, Y %d, SECTNUM %d.\0"
	.align 4
LC11:
	.ascii "COULD NOT FIND TAGGED LEVEL1 SECTOR FROM X %d, Y %d, SECTNUM %d.\0"
	.text
	.p2align 4
	.globl	__Z9ToggleFAFv
	.def	__Z9ToggleFAFv;	.scl	2;	.type	32;	.endef
__Z9ToggleFAFv:
LFB46:
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
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	cmpb	$0, _keystatus+4
	je	L423
	movzbl	_FAFon, %eax
	movb	$0, _keystatus+4
	movl	%eax, %edx
	xorl	$1, %edx
	movb	%dl, _FAFon
	cmpb	$1, %al
	je	L424
	movzwl	_headspritestat, %edi
	cmpw	$-1, %di
	jne	L425
	jmp	L426
	.p2align 4,,10
	.p2align 3
L521:
	cmpw	$109, %dx
	jle	L429
	movzwl	26(%ebx), %eax
	cmpw	$1024, %ax
	je	L429
	cmpw	$60, %ax
	je	L429
L518:
	movl	%esi, %eax
	call	_do_deletespritestat
	movl	$60, %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofstat
L429:
	cmpw	$-1, %di
	je	L426
L425:
	movswl	%di, %esi
	movl	_sprite, %ecx
	imull	$44, %esi, %eax
	movl	%esi, 28(%esp)
	movzwl	_nextspritestat(%esi,%esi), %edi
	leal	(%ecx,%eax), %ebx
	movl	%eax, 32(%esp)
	cmpw	$2307, 14(%ebx)
	jne	L429
	movzwl	40(%ebx), %edx
	cmpw	$115, %dx
	jle	L521
	leal	-120(%edx), %eax
	cmpw	$1, %ax
	ja	L429
	movswl	_headspritestat+120, %eax
	cmpl	$-1, %eax
	jne	L430
	jmp	L431
	.p2align 5
	.p2align 4,,10
	.p2align 3
L435:
	cmpl	$-1, %esi
	je	L522
L433:
	movzwl	40(%ebx), %edx
	movl	%esi, %eax
L430:
	movswl	_nextspritestat(%eax,%eax), %esi
	imull	$44, %eax, %eax
	addl	%ecx, %eax
	cmpw	%dx, 40(%eax)
	jne	L435
	movzwl	38(%ebx), %edx
	cmpw	%dx, 38(%eax)
	jne	L435
	movl	4(%eax), %edx
	movl	%edx, 20(%esp)
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	(%ebx), %eax
	movl	$LC8, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$0, 8(%esp)
	movl	$_ds, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %ecx
	movw	%cx, __ZL12messagedelay
	movl	_sprite, %ecx
	cmpl	$-1, %esi
	jne	L433
	.p2align 4
	.p2align 3
L522:
	movl	32(%esp), %ebx
	addl	%ecx, %ebx
L431:
	movzwl	26(%ebx), %eax
	cmpw	$1024, %ax
	je	L429
	cmpw	$60, %ax
	je	L429
	movl	28(%esp), %esi
	jmp	L518
	.p2align 4,,10
	.p2align 3
L423:
	cmpb	$0, _FAFon
	je	L422
	cmpl	$200, _qsetmode
	je	L523
L422:
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
L426:
	.cfi_restore_state
	movzwl	_headspritestat+120, %edi
	movl	_sector, %esi
	cmpw	$-1, %di
	jne	L443
	jmp	L437
	.p2align 4,,10
	.p2align 3
L439:
	cmpw	$341, 24(%ecx)
	je	L524
L440:
	cmpw	$342, 16(%ecx)
	jne	L441
	leal	16(%ecx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$2357, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
L441:
	cmpw	$342, 24(%ecx)
	jne	L442
	leal	24(%ecx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$2357, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%ecx)
L442:
	cmpw	$-1, %di
	je	L437
L443:
	movswl	%di, %ebx
	movzwl	_nextspritestat(%ebx,%ebx), %edi
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	cmpw	$341, 16(%ecx)
	jne	L439
	leal	16(%ecx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$2356, %edx
	movw	%dx, 16(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	leal	(%esi,%edx,8), %ecx
	movl	4(%ecx), %edx
	cmpl	%edx, 8(%ecx)
	jne	L439
	movswl	(%ecx), %edx
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ecx
	movl	%ecx, 16(%esp)
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC9, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$0, 8(%esp)
	movl	$_ds, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %eax
	movl	_sector, %esi
	movw	%ax, __ZL12messagedelay
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	cmpw	$341, 24(%ecx)
	jne	L440
	.p2align 4
	.p2align 3
L524:
	leal	24(%ecx), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$2356, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	leal	(%esi,%edx,8), %ecx
	movl	4(%ecx), %edx
	cmpl	%edx, 8(%ecx)
	jne	L440
	movswl	(%ecx), %edx
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ecx
	movl	%ecx, 16(%esp)
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$LC9, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$0, 8(%esp)
	movl	$_ds, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %eax
	movl	_sector, %esi
	movw	%ax, __ZL12messagedelay
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	jmp	L440
	.p2align 4,,10
	.p2align 3
L437:
	movswl	_numwalls, %ecx
	testw	%cx, %cx
	jle	L423
	sall	$5, %ecx
	movl	_wall, %ebx
	movl	$16, %eax
	addl	$16, %ecx
	jmp	L448
	.p2align 4,,10
	.p2align 3
L446:
	cmpw	$342, %dx
	jne	L447
	movl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	$2357, %edx
	movw	%dx, (%ebx,%eax)
L447:
	addl	$32, %eax
	cmpl	%eax, %ecx
	je	L423
L448:
	movzwl	(%ebx,%eax), %edx
	cmpw	$341, %dx
	jne	L446
	movl	%eax, %edx
	movl	$2356, %esi
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movw	%si, (%ebx,%eax)
	jmp	L447
	.p2align 4,,10
	.p2align 3
L424:
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
	jmp	__Z13ResetBuildFAFv
	.p2align 4,,10
	.p2align 3
L523:
	.cfi_restore_state
	movl	_horiz, %eax
	movzwl	_cursectnum, %esi
	xorl	%edi, %edi
	movswl	_headspritestat+120, %edx
	movw	%di, _save+4000
	movl	%eax, 32(%esp)
	movl	_pos, %eax
	movw	%si, 38(%esp)
	movzwl	_ang, %ecx
	movl	%eax, 40(%esp)
	movl	_pos+4, %eax
	movl	_pos+8, %ebx
	movl	%eax, 44(%esp)
	cmpl	$-1, %edx
	je	L450
	movswl	%cx, %eax
	movl	%edx, %edi
	movl	_sprite, %ecx
	movl	%eax, 28(%esp)
	jmp	L451
	.p2align 5
	.p2align 4,,10
	.p2align 3
L452:
	movswl	_nextspritestat(%edi,%edi), %edi
	cmpl	$-1, %edi
	je	L462
L451:
	imull	$44, %edi, %eax
	addl	%ecx, %eax
	cmpw	$110, 40(%eax)
	jne	L452
	cmpw	24(%eax), %si
	jne	L452
	cmpw	$1536, 28(%eax)
	je	L452
	movswl	38(%eax), %eax
	cmpw	$-1, %ax
	je	L462
	leal	38(%esp), %esi
	movl	%ebx, (%esp)
	leal	44(%esp), %ecx
	movl	%esi, 4(%esp)
	leal	40(%esp), %edx
	call	__Z15FindCeilingViewsPiS_iPs.isra.0
	movswl	38(%esp), %eax
	testw	%ax, %ax
	js	L525
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%ebx, %ecx
	movl	44(%esp), %edx
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	40(%esp), %eax
	call	_renderDrawRoomsQ16.isra.0
	call	_renderDrawMasks
	movswl	_save+4000, %eax
	testw	%ax, %ax
	jle	L520
	movl	%eax, 32(%esp)
	movl	_sector, %edi
	xorl	%ecx, %ecx
	movl	$-858993459, %esi
	.p2align 4
	.p2align 3
L459:
	movswl	_save+1600(%ecx,%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %ebx
	leal	8(,%eax,8), %eax
	mull	%esi
	movl	_save(,%ecx,4), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	24(%ebx), %edx
	subl	%edi, %edx
	movl	%eax, 8(%ebx)
	movl	%edx, %eax
	mull	%esi
	movzwl	_save+2400(%ecx,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	26(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 24(%ebx)
	movl	%edx, %eax
	mull	%esi
	movzwl	_save+3200(%ecx,%ecx), %eax
	addl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 26(%ebx)
	cmpl	32(%esp), %ecx
	jne	L459
L520:
	movzbl	_FAFon, %eax
L457:
	movzwl	_searchsector, %edx
	movl	$2, %ecx
	movw	%cx, _searchit
	movw	%dx, _bak_searchsector
	movzwl	_searchwall, %edx
	movw	%dx, _bak_searchwall
	movzwl	_searchstat, %edx
	movw	%dx, _bak_searchstat
	testb	%al, %al
	je	L422
L479:
	cmpl	$200, _qsetmode
	jne	L422
	cmpb	$0, _keystatus+5
	je	L422
	movl	_pos, %eax
	movl	_sector, %ebx
	xorl	%edx, %edx
	movb	$0, _keystatus+5
	movw	%dx, _save+4000
	movl	_pos+8, %esi
	movl	%eax, 44(%esp)
	movl	_pos+4, %eax
	movl	%eax, 40(%esp)
	movswl	_cursectnum, %eax
	movw	%ax, 38(%esp)
	movl	%eax, %ecx
	leal	(%eax,%eax,4), %eax
	cmpw	$2356, 16(%ebx,%eax,8)
	je	L526
	cmpw	$2356, 24(%ebx,%eax,8)
	jne	L422
	movswl	_headspritestat+120, %edx
	cmpl	$-1, %edx
	je	L474
	movl	_sprite, %edi
	jmp	L475
	.p2align 5
	.p2align 4,,10
	.p2align 3
L476:
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpl	$-1, %edx
	je	L474
L475:
	imull	$44, %edx, %eax
	addl	%edi, %eax
	cmpw	$111, 40(%eax)
	jne	L476
	cmpw	24(%eax), %cx
	jne	L476
	cmpw	$1536, 28(%eax)
	je	L476
	movswl	38(%eax), %eax
L477:
	leal	38(%esp), %edi
	movb	$1, _FAF_DontMoveSectors
	leal	40(%esp), %ecx
	movl	%edi, 4(%esp)
	leal	44(%esp), %edx
	movl	%esi, (%esp)
	call	__Z13FindFloorViewsPiS_iPs.isra.0
	movswl	38(%esp), %eax
	movss	44(%esp), %xmm0
	movb	$0, _FAF_DontMoveSectors
	movss	40(%esp), %xmm2
	movw	%ax, _cursectnum
	leal	(%eax,%eax,4), %eax
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, _pos
	movl	4(%ebx,%eax,8), %eax
	addl	$5120, %eax
	movl	%eax, _pos+8
	jmp	L422
	.p2align 4,,10
	.p2align 3
L528:
	cmpw	24(%eax), %si
	je	L527
L460:
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpl	$-1, %edx
	je	L450
L462:
	imull	$44, %edx, %eax
	addl	%ecx, %eax
	cmpw	$111, 40(%eax)
	jne	L460
	jmp	L528
	.p2align 4,,10
	.p2align 3
L527:
	cmpw	$1536, 28(%eax)
	je	L460
	movswl	38(%eax), %eax
	cmpw	$-1, %ax
	je	L450
	leal	38(%esp), %esi
	movl	%ebx, (%esp)
	leal	44(%esp), %ecx
	movl	%esi, 4(%esp)
	leal	40(%esp), %edx
	call	__Z13FindFloorViewsPiS_iPs.isra.0
	movswl	38(%esp), %eax
	testw	%ax, %ax
	js	L529
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%ebx, %ecx
	movl	44(%esp), %edx
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	40(%esp), %eax
	call	_renderDrawRoomsQ16.isra.0
	call	_renderDrawMasks
	movswl	_save+4000, %eax
	testw	%ax, %ax
	jle	L520
	movl	%eax, 32(%esp)
	movl	_sector, %edi
	xorl	%ecx, %ecx
	movl	$-858993459, %esi
	.p2align 4
	.p2align 3
L466:
	movswl	_save+1600(%ecx,%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %ebx
	leal	4(,%eax,8), %eax
	mull	%esi
	movl	_save(,%ecx,4), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%edi, %edx
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
	mull	%esi
	movzwl	_save+2400(%ecx,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	movzwl	_save+3200(%ecx,%ecx), %eax
	addl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 18(%ebx)
	cmpl	32(%esp), %ecx
	jne	L466
	jmp	L520
L450:
	movzwl	_searchsector, %eax
	movw	%ax, _bak_searchsector
	movzwl	_searchwall, %eax
	movw	%ax, _bak_searchwall
	movzwl	_searchstat, %eax
	movw	%ax, _bak_searchstat
	movl	$2, %eax
	movw	%ax, _searchit
	jmp	L479
L526:
	movswl	_headspritestat+120, %edx
	cmpl	$-1, %edx
	je	L468
	movl	_sprite, %edi
	jmp	L469
	.p2align 5
	.p2align 4,,10
	.p2align 3
L470:
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpl	$-1, %edx
	je	L468
L469:
	imull	$44, %edx, %eax
	addl	%edi, %eax
	cmpw	$110, 40(%eax)
	jne	L470
	cmpw	24(%eax), %cx
	jne	L470
	cmpw	$1536, 28(%eax)
	je	L470
	movswl	38(%eax), %eax
L471:
	leal	38(%esp), %edi
	movb	$1, _FAF_DontMoveSectors
	leal	40(%esp), %ecx
	movl	%edi, 4(%esp)
	leal	44(%esp), %edx
	movl	%esi, (%esp)
	call	__Z15FindCeilingViewsPiS_iPs.isra.0
	movswl	38(%esp), %eax
	movss	44(%esp), %xmm0
	movb	$0, _FAF_DontMoveSectors
	movss	40(%esp), %xmm1
	movw	%ax, _cursectnum
	leal	(%eax,%eax,4), %eax
	movl	8(%ebx,%eax,8), %eax
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, _pos
	subl	$5120, %eax
	movl	%eax, _pos+8
	jmp	L422
L525:
	movswl	_cursectnum, %eax
	movl	%eax, 16(%esp)
	movl	_pos+4, %eax
	movl	%eax, 12(%esp)
	movl	_pos, %eax
	movl	$LC10, 4(%esp)
	movl	%eax, 8(%esp)
L519:
	movl	$_ds, (%esp)
	movl	$512, %ebx
	call	_sprintf
	movl	$0, 8(%esp)
	movl	$_ds, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movw	%bx, __ZL12messagedelay
	movzbl	_FAFon, %eax
	jmp	L457
L468:
	movl	$-1, %eax
	jmp	L471
L529:
	movswl	_cursectnum, %eax
	movl	%eax, 16(%esp)
	movl	_pos+4, %eax
	movl	%eax, 12(%esp)
	movl	_pos, %eax
	movl	$LC11, 4(%esp)
	movl	%eax, 8(%esp)
	jmp	L519
L474:
	movl	$-1, %eax
	jmp	L477
	.cfi_endproc
LFE46:
	.section .rdata,"dr"
LC12:
	.ascii "InstallLocation\0"
	.align 4
LC13:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 225160\0"
	.align 4
LC14:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 238070\0"
LC15:
	.ascii "/gameroot\0"
LC16:
	.ascii "/gameroot/addons\0"
LC17:
	.ascii "/gameroot/classic\0"
LC18:
	.ascii "/gameroot/classic/MUSIC\0"
LC19:
	.ascii "PATH\0"
	.align 4
LC20:
	.ascii "SOFTWARE\\GOG.com\\Games\\1618073558\0"
LC21:
	.ascii "/gameroot/MUSIC\0"
	.align 4
LC22:
	.ascii "SOFTWARE\\GOG.com\\Games\\1207659142\0"
LC23:
	.ascii "%s/addons\0"
LC24:
	.ascii "%s/music\0"
	.align 4
LC25:
	.ascii "SOFTWARE\\GOG.com\\GOGSHADOWARRIOR\0"
LC26:
	.ascii "%s/MUSIC\0"
LC27:
	.ascii "InstallPath\0"
	.align 4
LC28:
	.ascii "SOFTWARE\\ZOOM PLATFORM\\Shadow Warrior Classic Complete\0"
	.align 4
LC29:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 358400\0"
LC30:
	.ascii "/Shadow Warrior\0"
	.align 4
LC31:
	.ascii "SOFTWARE\\3DRealms\\Shadow Warrior\0"
LC32:
	.ascii "SOFTWARE\\3DRealms\\Anthology\0"
LC33:
	.ascii "/\0"
LC34:
	.ascii "user_profiles_enabled\0"
LC35:
	.ascii "shell32.dll\0"
LC36:
	.ascii "SHGetSpecialFolderPathA\0"
LC37:
	.ascii "%s/Kuro\0"
LC38:
	.ascii "music\0"
LC39:
	.ascii "SWGRP\0"
LC40:
	.ascii "Using \"%s\" as main GRP file\0"
	.text
	.p2align 4
	.globl	__Z10SW_ExtInitv
	.def	__Z10SW_ExtInitv;	.scl	2;	.type	32;	.endef
__Z10SW_ExtInitv:
LFB52:
	.cfi_startproc
	subl	$560, %esp
	.cfi_def_cfa_offset 564
	movl	_g_useCwd, %edx
	movl	%ebx, 544(%esp)
	.cfi_offset 3, -20
	leal	28(%esp), %ebx
	testl	%edx, %edx
	je	L629
L531:
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	_getcwd
	testl	%eax, %eax
	je	L550
	cmpw	$47, 28(%esp)
	je	L550
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
L550:
	movl	$LC34, (%esp)
	call	*__imp__GetFileAttributesA@4
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	cmpl	$-1, %eax
	jne	L630
L553:
	xorl	%edx, %edx
	movl	$LC38, %eax
	call	_addsearchpath_user
	movl	_g_grpNamePtr, %eax
	testl	%eax, %eax
	je	L631
L530:
	movl	544(%esp), %ebx
	addl	$560, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L630:
	.cfi_restore_state
	movl	%edi, 552(%esp)
	movl	$LC35, (%esp)
	.cfi_offset 7, -12
	call	*__imp__GetModuleHandleA@4
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	testl	%eax, %eax
	je	L554
	movl	$LC36, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	.cfi_def_cfa_offset 556
	subl	$8, %esp
	.cfi_def_cfa_offset 564
	testl	%eax, %eax
	je	L628
	leal	284(%esp), %edi
	movl	$0, 12(%esp)
	movl	$26, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 548
	subl	$16, %esp
	.cfi_def_cfa_offset 564
	testl	%eax, %eax
	js	L628
	movl	%esi, 548(%esp)
	movl	%ebp, 556(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
L574:
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	%eax, %esi
	testl	%eax, %eax
	je	L558
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	%esi, 12(%esp)
	movl	$LC37, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	cmpl	$-2, %eax
	je	L632
L560:
	testl	%eax, %eax
	je	L633
L561:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	548(%esp), %esi
	.cfi_restore 6
	movl	552(%esp), %edi
	.cfi_restore 7
	movl	556(%esp), %ebp
	.cfi_restore 5
	jmp	L553
	.p2align 4,,10
	.p2align 3
L625:
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	548(%esp), %esi
	.cfi_restore 6
	.p2align 4
	.p2align 3
L628:
	movl	552(%esp), %edi
	.cfi_restore 7
	jmp	L553
	.p2align 4,,10
	.p2align 3
L629:
	movl	%esi, 548(%esp)
	xorl	%eax, %eax
	movl	%edi, 552(%esp)
	movl	%ebp, 556(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L532:
	movl	$0, 28(%esp,%eax)
	movl	$0, 32(%esp,%eax)
	movl	$0, 36(%esp,%eax)
	movl	$0, 40(%esp,%eax)
	addl	$16, %eax
	cmpl	$256, %eax
	jb	L532
	leal	24(%esp), %esi
	leal	28(%esp), %ebx
	movl	$LC12, %edx
	movl	$LC13, %eax
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L538
	movl	24(%esp), %eax
	movl	$256, %edx
	movl	$LC15, 4(%esp)
	leal	-1(%ebx,%eax), %ebp
	subl	%eax, %edx
	movl	%edx, 8(%esp)
	movl	%edx, %edi
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L538:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC12, %edx
	movl	$LC14, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L536
	movl	24(%esp), %eax
	movl	$256, %ecx
	movl	$LC15, 4(%esp)
	subl	%eax, %ecx
	leal	-1(%ebx,%eax), %edi
	movl	%ecx, 8(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 20(%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	20(%esp), %ecx
	movl	$LC21, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 8(%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L536:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC19, %edx
	movl	$LC20, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L540
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	__imp___snprintf, %ecx
	leal	284(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$LC23, 8(%esp)
	movl	%ecx, 20(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	*%ecx
	movl	$1, %edx
	leal	284(%esp), %eax
	call	_addsearchpath_user
	leal	284(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	$LC24, 8(%esp)
	movl	$256, 4(%esp)
	movl	%eax, (%esp)
	call	*20(%esp)
	xorl	%edx, %edx
	leal	284(%esp), %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L540:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC19, %edx
	movl	$LC22, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L542
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	leal	284(%esp), %ecx
	movl	%ebx, 12(%esp)
	movl	$LC26, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	leal	284(%esp), %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L542:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC19, %edx
	movl	$LC25, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L544
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	leal	284(%esp), %ecx
	movl	%ebx, 12(%esp)
	movl	$LC26, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	leal	284(%esp), %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L544:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC27, %edx
	movl	$LC28, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L546
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	leal	284(%esp), %ecx
	movl	%ebx, 12(%esp)
	movl	$LC26, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ecx, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	leal	284(%esp), %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L624
L546:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC12, %edx
	movl	$LC29, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L634
L548:
	movl	%esi, (%esp)
	xorl	%edx, %edx
	movl	%ebx, %ecx
	movl	$LC31, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L635
L549:
	movl	%esi, (%esp)
	xorl	%edx, %edx
	movl	%ebx, %ecx
	movl	$LC32, %eax
	movl	$256, 24(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L636
L624:
	movl	548(%esp), %esi
	.cfi_restore 6
	movl	552(%esp), %edi
	.cfi_restore 7
	movl	556(%esp), %ebp
	.cfi_restore 5
	jmp	L531
	.p2align 4,,10
	.p2align 3
L631:
	movl	$LC39, (%esp)
	call	_getenv
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L530
	movl	_g_grpNamePtr, %eax
	movl	_g_sm_heap, %ecx
	movl	%esi, 548(%esp)
	movl	%eax, (%esp)
	.cfi_offset 6, -16
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 560
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	$256, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	%eax, %esi
	testl	%eax, %eax
	je	L563
	movl	%ebx, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L564
	testb	$8, %al
	jne	L637
	testb	$4, %al
	jne	L638
	testl	%eax, %eax
	je	L565
	movzbl	(%ebx), %edx
	movb	%dl, (%esi)
	testb	$2, %al
	jne	L639
L565:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movb	$0, 255(%esi)
	movl	%esi, _g_grpNamePtr
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L640
	movl	548(%esp), %esi
	.cfi_restore 6
	jmp	L530
	.p2align 4,,10
	.p2align 3
L554:
	.cfi_offset 7, -12
	movl	%esi, 548(%esp)
	movl	$LC35, (%esp)
	.cfi_offset 6, -16
	call	*__imp__LoadLibraryA@4
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	%eax, %esi
	testl	%eax, %eax
	je	L625
	movl	$LC36, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	.cfi_def_cfa_offset 556
	subl	$8, %esp
	.cfi_def_cfa_offset 564
	testl	%eax, %eax
	je	L557
	leal	284(%esp), %ecx
	movl	$0, 12(%esp)
	movl	$26, 8(%esp)
	movl	%ecx, %edi
	movl	%ecx, 4(%esp)
	movl	$0, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 548
	subl	$16, %esp
	.cfi_def_cfa_offset 564
	testl	%eax, %eax
	js	L557
	movl	%ebp, 556(%esp)
	movl	%esi, (%esp)
	.cfi_offset 5, -8
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	jmp	L574
	.p2align 4,,10
	.p2align 3
L557:
	.cfi_restore 5
	movl	%esi, (%esp)
	call	*__imp__FreeLibrary@4
	.cfi_def_cfa_offset 560
	subl	$4, %esp
	.cfi_def_cfa_offset 564
	movl	548(%esp), %esi
	.cfi_restore 6
	movl	552(%esp), %edi
	.cfi_restore 7
	jmp	L553
	.p2align 4,,10
	.p2align 3
L633:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, (%esp)
	call	_chdir
	jmp	L561
	.p2align 4,,10
	.p2align 3
L632:
	movl	%ebx, (%esp)
	call	_mkdir
	testl	%eax, %eax
	jne	L561
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	jmp	L560
	.p2align 4,,10
	.p2align 3
L564:
	.cfi_restore 5
	.cfi_restore 7
	movl	-16(%ebx,%eax), %edx
	movl	%edx, -16(%esi,%eax)
	movl	-12(%ebx,%eax), %edx
	movl	%edx, -12(%esi,%eax)
	movl	-8(%ebx,%eax), %edx
	movl	%edx, -8(%esi,%eax)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L565
	andl	$-16, %eax
	movl	%edi, 552(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, 556(%esp)
	movl	%eax, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L569:
	movl	4(%ebx,%ecx), %edi
	movl	8(%ebx,%ecx), %ebp
	movl	12(%ebx,%ecx), %edx
	movl	(%ebx,%ecx), %eax
	movl	%edi, 4(%esi,%ecx)
	movl	%eax, (%esi,%ecx)
	movl	%ebp, 8(%esi,%ecx)
	movl	%edx, 12(%esi,%ecx)
	addl	$16, %ecx
	cmpl	20(%esp), %ecx
	jb	L569
	movl	552(%esp), %edi
	.cfi_restore 7
	movl	556(%esp), %ebp
	.cfi_restore 5
	jmp	L565
	.p2align 4,,10
	.p2align 3
L640:
	movl	%esi, 16(%esp)
	movl	$LC40, 12(%esp)
	movl	$445, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	548(%esp), %esi
	.cfi_restore 6
	jmp	L530
	.p2align 4,,10
	.p2align 3
L636:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %edx
	movl	$256, %eax
	movl	$LC30, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	548(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	552(%esp), %edi
	.cfi_restore 7
	movl	556(%esp), %ebp
	.cfi_restore 5
	jmp	L531
	.p2align 4,,10
	.p2align 3
L635:
	.cfi_restore_state
	movl	24(%esp), %edx
	movl	$256, %eax
	movl	$LC30, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	jmp	L549
	.p2align 4,,10
	.p2align 3
L634:
	movl	24(%esp), %edx
	movl	$256, %eax
	movl	$LC30, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	jmp	L548
	.p2align 4,,10
	.p2align 3
L558:
	movl	20(%esp), %eax
	call	__Z13handle_memerri
L563:
	.cfi_restore 5
	.cfi_restore 7
	movl	$256, %eax
	movl	%edi, 552(%esp)
	movl	%ebp, 556(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L637:
	.cfi_restore 5
	.cfi_restore 7
	movl	4(%ebx), %ecx
	movl	(%ebx), %edx
	movl	%ecx, 4(%esi)
	movl	%edx, (%esi)
	movl	-8(%ebx,%eax), %ecx
	movl	-4(%ebx,%eax), %ebx
	movl	%ecx, -8(%esi,%eax)
	movl	%ebx, -4(%esi,%eax)
	jmp	L565
L638:
	movl	(%ebx), %edx
	movl	%edx, (%esi)
	movl	-4(%ebx,%eax), %edx
	movl	%edx, -4(%esi,%eax)
	jmp	L565
L639:
	movzwl	-2(%ebx,%eax), %edx
	movw	%dx, -2(%esi,%eax)
	jmp	L565
	.cfi_endproc
LFE52:
	.section .rdata,"dr"
LC41:
	.ascii "swbhelp.hlp\0"
LC42:
	.ascii "ERROR: Help file not found.\0"
	.align 4
LC43:
	.ascii "Unexpected end of file while reading swhelp.hlp\0"
LC44:
	.ascii "@TAG%d\0"
LC45:
	.ascii "No help available.\0"
	.align 4
LC46:
	.ascii "Hit any key to continue or Q to quit....\0"
	.text
	.p2align 4
	.globl	__Z11ContextHelps
	.def	__Z11ContextHelps;	.scl	2;	.type	32;	.endef
__Z11ContextHelps:
LFB59:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%edi, 68(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movw	%ax, 26(%esp)
	call	_clearmidstatbar16
	xorl	%edx, %edx
	movl	$LC41, %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L712
	movl	%ebx, 60(%esp)
	movl	%esi, 64(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	movl	%eax, %ebx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 76
	subl	$4, %esp
	.cfi_def_cfa_offset 80
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L713
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	je	L645
	call	_clearmidstatbar16
	movl	_ydim16, %eax
	movl	$1, 20(%esp)
	movl	$LC43, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_printext16
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	72(%esp), %ebp
	.cfi_restore 5
	movl	%esi, %eax
	movl	68(%esp), %edi
	movl	64(%esp), %esi
	.cfi_restore 6
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_kclose
L645:
	.cfi_restore_state
	movswl	26(%esp), %eax
	imull	$44, %eax, %eax
	addl	%eax, %edi
	movl	%esi, %eax
	call	_kclose
	movswl	40(%edi), %eax
	movl	$500, %edx
	leal	-501(%eax), %ecx
	cmpw	$99, %cx
	ja	L714
L646:
	leal	40(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%ebp, %edi
	xorl	%esi, %esi
	movl	$LC44, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	.p2align 5
	.p2align 4
	.p2align 3
L649:
	movzbl	(%edi), %eax
	addl	$1, %esi
	addl	$1, %edi
	cmpb	$64, %al
	je	L707
	cmpl	%esi, %ebx
	jg	L649
	cmpb	$64, %al
	je	L707
L651:
	cmpl	%esi, %ebx
	jg	L649
L669:
	call	_clearmidstatbar16
	movl	_ydim16, %eax
	movl	$1, 20(%esp)
	movl	$LC45, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_printext16
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L641
	.p2align 4,,10
	.p2align 3
L707:
	.cfi_restore_state
	movl	$1, %edx
	jmp	L653
	.p2align 4,,10
	.p2align 3
L715:
	cmpb	$64, %al
	je	L652
	addl	$1, %edx
	cmpl	$9, %edx
	je	L652
	cmpl	%esi, %ebx
	jle	L652
L653:
	movb	%al, 29(%esp,%edx)
	movzbl	(%edi), %eax
	movl	%edx, %ecx
	addl	$1, %edi
	addl	$1, %esi
	cmpb	$47, %al
	ja	L715
L652:
	leal	30(%esp), %eax
	movb	$0, 30(%esp,%ecx)
	movl	%eax, (%esp)
	call	_strupr
	movl	%eax, 4(%esp)
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L651
	testl	%esi, %esi
	je	L669
	addl	%ebp, %esi
	movl	$4, %ebp
	.p2align 4
	.p2align 3
L666:
	movzbl	1(%esi), %ebx
	leal	1(%esi), %edi
	xorl	%eax, %eax
	jmp	L658
	.p2align 4,,10
	.p2align 3
L660:
	movb	%bl, __ZL7tempbuf.lto_priv.1(%eax)
	addl	$1, %eax
	addl	$1, %edi
	movzbl	(%edi), %ebx
	cmpl	$128, %eax
	je	L673
L658:
	cmpb	$10, %bl
	je	L673
	cmpb	$64, %bl
	je	L673
	cmpb	$35, %bl
	jne	L660
	movb	$0, __ZL7tempbuf.lto_priv.1(%eax)
	movl	_ydim16, %eax
	leal	0(%ebp,%ebp,2), %edx
	movl	$1, 20(%esp)
	leal	2(%eax,%edx,2), %eax
	movl	$__ZL7tempbuf.lto_priv.1, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_printext16
	cmpl	$16, %ebp
	jne	L711
L668:
	movl	_ydim16, %eax
	movl	$1, 20(%esp)
	movl	$LC46, 16(%esp)
	addl	$110, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_printext16
	cmpb	$0, _keystatus+16
	jne	L716
	xorl	%eax, %eax
L664:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L664
	call	_clearmidstatbar16
	movl	%edi, %esi
	movl	$6, %ebp
	jmp	L662
	.p2align 4,,10
	.p2align 3
L673:
	movb	$0, __ZL7tempbuf.lto_priv.1(%eax)
	movl	_ydim16, %eax
	leal	0(%ebp,%ebp,2), %edx
	addl	$1, %ebp
	movl	$1, 20(%esp)
	movl	%edi, %esi
	leal	2(%eax,%edx,2), %eax
	movl	$__ZL7tempbuf.lto_priv.1, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_printext16
	cmpl	$17, %ebp
	je	L668
L662:
	cmpb	$64, %bl
	je	L711
	cmpb	$35, %bl
	jne	L666
L711:
	movl	60(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
L641:
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L712:
	.cfi_restore_state
	call	_clearmidstatbar16
	movl	_ydim16, %eax
	movl	$1, 20(%esp)
	movl	$LC42, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4, (%esp)
	call	_printext16
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L714:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testw	%ax, %ax
	je	L647
	cmpw	$1006, %ax
	jle	L717
L647:
	cmpw	$0, 38(%edi)
	movl	$999, %edx
	cmovne	%eax, %edx
	jmp	L646
L713:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L716:
	call	_clearmidstatbar16
	movl	60(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	jmp	L641
L717:
	.cfi_restore_state
	movswl	%ax, %edx
	jmp	L646
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	_snprintf
	.def	_snprintf;	.scl	2;	.type	32;	.endef
_snprintf:
LFB69:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	leal	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	___ms_vsnprintf
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	_ExtAnalyzeSprites.isra.0
	.def	_ExtAnalyzeSprites.isra.0;	.scl	2;	.type	32;	.endef
_ExtAnalyzeSprites.isra.0:
LFB71:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movzwl	_rotang, %eax
	xorl	%edx, %edx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_spritesortcnt, %edi
	addl	$4, %eax
	cmpw	$2048, %ax
	cmovge	%edx, %eax
	movw	%ax, _rotang
	testl	%edi, %edi
	jle	L720
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movzbl	_bVoxelsOn, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_usevoxels, %esi
	movb	%bl, 10(%esp)
	movzbl	_bSpinBobVoxels, %ebx
	movl	%esi, (%esp)
	movl	_rendmode, %esi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	_tsprite, %eax
	movl	%esi, 4(%esp)
	movl	_sector, %ebp
	movb	%bl, 11(%esp)
	cmpb	$0, _bAutoSize
	je	L723
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L757:
	movswl	14(%eax), %ebx
	cmpw	$1847, %bx
	jg	L724
	cmpw	$1796, %bx
	jle	L814
	leal	-1797(%ebx), %edx
	cmpw	$50, %dx
	ja	L726
	movzwl	%dx, %edx
	jmp	*L729(,%edx,4)
	.section .rdata,"dr"
	.align 4
L729:
	.long	L738
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L737
	.long	L726
	.long	L738
	.long	L735
	.long	L726
	.long	L734
	.long	L733
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L732
	.long	L726
	.long	L731
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L730
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L726
	.long	L728
	.long	L728
	.text
	.p2align 4,,10
	.p2align 3
L738:
	movl	$10283, %ecx
	movw	%cx, 20(%eax)
	.p2align 4
	.p2align 3
L726:
	movzbl	16(%eax), %ecx
	leal	6(%ecx), %edx
	movswl	24(%eax), %ecx
	movb	%dl, 16(%eax)
	leal	(%ecx,%ecx,4), %ecx
	leal	0(%ebp,%ecx,8), %ecx
	testb	$1, 12(%ecx)
	jne	L744
	addb	28(%ecx), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	je	L815
L746:
	cmpb	$0, 10(%esp)
	je	L747
	movl	(%esp), %edx
	testl	%edx, %edx
	je	L747
	cmpl	$4, 4(%esp)
	je	L747
	cmpb	$0, 11(%esp)
	je	L751
	cmpw	$1829, %bx
	jg	L749
	cmpw	$1798, %bx
	jg	L750
	leal	-1766(%ebx), %edx
	cmpw	$31, %dx
	ja	L751
	movl	$-671018735, %ecx
	btl	%edx, %ecx
	jnc	L751
L753:
	movzwl	_rotang, %edx
	movw	%dx, 28(%eax)
L751:
	movl	_aVoxelArray(,%ebx,4), %edx
	testl	%edx, %edx
	js	L747
	orb	$16, 18(%eax)
	andw	$-49, 12(%eax)
	movw	%dx, 14(%eax)
	.p2align 4
	.p2align 3
L747:
	addl	$1, %esi
	addl	$44, %eax
	cmpl	%esi, %edi
	jne	L757
L813:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L720:
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L744:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addb	20(%ecx), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	jne	L746
L815:
	cmpb	$19, 17(%eax)
	je	L746
	movb	$17, 17(%eax)
	jmp	L746
	.p2align 4,,10
	.p2align 3
L814:
	leal	-1765(%ebx), %ecx
	cmpw	$29, %cx
	ja	L726
	movl	$1, %edx
	sall	%cl, %edx
	testl	$17476, %edx
	jne	L739
	andl	$4369, %edx
	jne	L740
	cmpw	$29, %cx
	jne	L726
	movl	$14905, %edx
	movw	%dx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L724:
	cmpw	$3030, %bx
	je	L742
	cmpw	$3031, %bx
	jne	L726
	movl	$18235, %edx
	movw	%dx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L740:
	movl	$11559, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L728:
	movl	$10287, %edx
	movw	%dx, 20(%eax)
	jmp	L726
L731:
	movl	$12078, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
L732:
	movl	$13366, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
L737:
	movl	$8736, %edx
	movw	%dx, 20(%eax)
	jmp	L726
L735:
	movl	$12096, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
L733:
	movl	$13874, %edx
	movw	%dx, 20(%eax)
	jmp	L726
L734:
	movl	$9758, %edx
	movw	%dx, 20(%eax)
	jmp	L726
L730:
	movl	$7717, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L723:
	cmpb	$0, 10(%esp)
	jne	L758
	xorl	%ecx, %ecx
	jmp	L762
	.p2align 4,,10
	.p2align 3
L817:
	addb	28(%esi), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	je	L816
L761:
	addl	$1, %ecx
	addl	$44, %eax
	cmpl	%ecx, %edi
	je	L813
L762:
	movzbl	16(%eax), %esi
	movzwl	14(%eax), %ebx
	leal	6(%esi), %edx
	movswl	24(%eax), %esi
	movb	%dl, 16(%eax)
	leal	(%esi,%esi,4), %esi
	leal	0(%ebp,%esi,8), %esi
	testb	$1, 12(%esi)
	je	L817
	addb	20(%esi), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	jne	L761
L816:
	cmpb	$19, 17(%eax)
	je	L761
	movb	$17, 17(%eax)
	jmp	L761
	.p2align 4,,10
	.p2align 3
L739:
	movl	$8484, %edx
	movw	%dx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L742:
	movl	$21586, %ecx
	movw	%cx, 20(%eax)
	jmp	L726
	.p2align 4,,10
	.p2align 3
L758:
	movl	(%esp), %ecx
	testl	%ecx, %ecx
	je	L767
	xorl	%ecx, %ecx
	cmpl	$4, 4(%esp)
	je	L772
	.p2align 4
	.p2align 3
L768:
	movzbl	16(%eax), %ebx
	movswl	14(%eax), %esi
	leal	6(%ebx), %edx
	movswl	24(%eax), %ebx
	movb	%dl, 16(%eax)
	leal	(%ebx,%ebx,4), %ebx
	leal	0(%ebp,%ebx,8), %ebx
	testb	$1, 12(%ebx)
	je	L773
	addb	20(%ebx), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %si
	je	L818
L775:
	cmpb	$0, 11(%esp)
	je	L778
	cmpw	$1829, %si
	jg	L780
	cmpw	$1798, %si
	jg	L781
	leal	-1766(%esi), %edx
	cmpw	$31, %dx
	ja	L778
	movl	$-671018735, %ebx
	btl	%edx, %ebx
	jnc	L778
L779:
	movzwl	_rotang, %edx
	movw	%dx, 28(%eax)
	.p2align 4
	.p2align 3
L778:
	movl	_aVoxelArray(,%esi,4), %edx
	testl	%edx, %edx
	js	L785
	orb	$16, 18(%eax)
	andw	$-49, 12(%eax)
	movw	%dx, 14(%eax)
L785:
	addl	$1, %ecx
	addl	$44, %eax
	cmpl	%edi, %ecx
	jne	L768
	jmp	L813
	.p2align 4,,10
	.p2align 3
L820:
	addb	28(%esi), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	je	L819
L766:
	addl	$1, %ecx
	addl	$44, %eax
	cmpl	%ecx, %edi
	je	L813
L767:
	movzbl	16(%eax), %esi
	movzwl	14(%eax), %ebx
	leal	6(%esi), %edx
	movswl	24(%eax), %esi
	movb	%dl, 16(%eax)
	leal	(%esi,%esi,4), %esi
	leal	0(%ebp,%esi,8), %esi
	testb	$1, 12(%esi)
	je	L820
	addb	20(%esi), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	jne	L766
L819:
	cmpb	$19, 17(%eax)
	je	L766
	movb	$17, 17(%eax)
	jmp	L766
	.p2align 4,,10
	.p2align 3
L822:
	addb	28(%esi), %dl
L770:
	movb	%dl, 16(%eax)
	cmpw	$3030, %bx
	je	L821
L771:
	addl	$1, %ecx
	addl	$44, %eax
	cmpl	%ecx, %edi
	je	L813
L772:
	movzbl	16(%eax), %esi
	movzwl	14(%eax), %ebx
	leal	6(%esi), %edx
	movswl	24(%eax), %esi
	movb	%dl, 16(%eax)
	leal	(%esi,%esi,4), %esi
	leal	0(%ebp,%esi,8), %esi
	testb	$1, 12(%esi)
	je	L822
	addb	20(%esi), %dl
	jmp	L770
	.p2align 4,,10
	.p2align 3
L773:
	addb	28(%ebx), %dl
	movb	%dl, 16(%eax)
	cmpw	$3030, %si
	jne	L775
L818:
	cmpb	$19, 17(%eax)
	je	L776
	movb	$17, 17(%eax)
	cmpb	$0, 11(%esp)
	je	L778
	xorl	%edx, %edx
L777:
	movl	$823197731, %ebx
	btl	%edx, %ebx
	jc	L779
	jmp	L778
	.p2align 4,,10
	.p2align 3
L749:
	cmpw	$1843, %bx
	jg	L754
	cmpw	$1830, %bx
	je	L751
	leal	-1831(%ebx), %edx
	movl	$6209, %ecx
	btl	%edx, %ecx
	jc	L753
	jmp	L751
L754:
	leal	-3030(%ebx), %edx
	cmpw	$29, %dx
	ja	L751
	movl	$823197731, %ecx
	btl	%edx, %ecx
	jc	L753
	jmp	L751
L821:
	cmpb	$19, 17(%eax)
	je	L771
	movb	$17, 17(%eax)
	jmp	L771
L750:
	leal	-1799(%ebx), %edx
	movl	$1128071039, %ecx
	btl	%edx, %ecx
	jnc	L751
	jmp	L753
L776:
	cmpb	$0, 11(%esp)
	jne	L779
	jmp	L778
L780:
	cmpw	$1843, %si
	jg	L783
	cmpw	$1830, %si
	je	L778
	leal	-1831(%esi), %edx
	movl	$6209, %ebx
	btl	%edx, %ebx
	jc	L779
	jmp	L778
L781:
	leal	-1799(%esi), %edx
	movl	$1128071039, %ebx
	btl	%edx, %ebx
	jnc	L778
	jmp	L779
L783:
	leal	-3030(%esi), %edx
	cmpw	$29, %dx
	jbe	L777
	jmp	L778
	.cfi_endproc
LFE71:
	.section .rdata,"dr"
LC61:
	.ascii "-usecwd\0"
	.align 4
LC62:
	.ascii "r00006[/bin/sh: line 1: git: command not found]-nohash\0"
LC63:
	.ascii "Wangulator\0"
LC64:
	.ascii "%s %s\0"
LC65:
	.ascii "source/sw/src/jnstub.cpp\0"
LC66:
	.ascii "Nov  8 2026 11:09:01\0"
	.text
	.p2align 4
	.globl	_ExtPreInit
	.def	_ExtPreInit;	.scl	2;	.type	32;	.endef
_ExtPreInit:
LFB73:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	subl	$280, %esp
	.cfi_def_cfa_offset 300
	testl	%eax, %eax
	jg	L824
	jmp	L826
	.p2align 4,,10
	.p2align 3
L837:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L826
L824:
	movl	$LC61, 4(%esp)
	movl	(%edi,%ebx,4), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L837
	movl	$1, %eax
	jmp	L825
	.p2align 4,,10
	.p2align 3
L826:
	xorl	%eax, %eax
L825:
	movl	%eax, _g_useCwd
	movl	$256, 8(%esp)
	movl	$__ZL9g_rootDir, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__GetModuleFileNameA@12
	.cfi_def_cfa_offset 288
	movl	$1, %edx
	movl	$__ZL9g_rootDir, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	call	_Bcorrectfilename.isra.0
	leal	24(%esp), %ebx
	movl	$LC62, 16(%esp)
	movl	$LC63, 12(%esp)
	movl	$LC64, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	_osd, %eax
	movl	_g_sm_heap, %ecx
	movl	1164(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 296
	movl	_osd, %edi
	subl	$4, %esp
	.cfi_def_cfa_offset 300
	movl	$0, 1164(%edi)
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 296
	subl	$4, %esp
	.cfi_def_cfa_offset 300
	movl	%eax, %esi
	testl	%eax, %eax
	je	L827
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%ebp)
	movl	%esi, 1164(%edi)
	movl	%ebx, (%esp)
	call	_strlen
	movl	%eax, %edx
	movl	_osd, %eax
	movb	%dl, 1168(%eax)
	movl	$10, %edx
	movw	%dx, 1169(%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L828
	movl	%ebx, 16(%esp)
	movl	$LC4, 12(%esp)
	movl	$694, 8(%esp)
	movl	$LC65, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L828:
	movl	$LC66, %eax
	call	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0
	addl	$280, %esp
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
L827:
	.cfi_restore_state
	movl	20(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC67:
	.ascii "SW.GRP\0"
LC71:
	.ascii "sine and arctangent tables\0"
LC72:
	.ascii "\0"
LC73:
	.ascii "sine table\0"
LC74:
	.ascii "s\0"
LC75:
	.ascii "arctangent table\0"
	.align 4
LC84:
	.ascii "Calculated %s differ%s from original!\12\0"
LC85:
	.ascii "source/build/src/engine.cpp\0"
LC92:
	.ascii "palette.dat\0"
	.align 4
LC93:
	.ascii "invalid number of shades in \"palette.dat\"!\0"
LC94:
	.ascii "source/build/src/palette.cpp\0"
LC95:
	.ascii "MoreBlendTab\0"
	.align 4
LC96:
	.ascii "failed reading additional blending table count\0"
	.align 4
LC97:
	.ascii "failed reading additional blending table index\0"
	.align 4
LC98:
	.ascii "duplicate blending table index %3d encountered\0"
	.align 4
LC99:
	.ascii "failed reading additional blending table\0"
	.align 4
LC100:
	.ascii "invalid lognumalphatabs value, must be in [1 .. 7]\0"
	.text
	.p2align 4
	.globl	_ExtPostStartupWindow
	.def	_ExtPostStartupWindow;	.scl	2;	.type	32;	.endef
_ExtPostStartupWindow:
LFB80:
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
	subl	$60, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_g_selectedGrp, %eax
	call	__ZL25SW_LoadGrpDependencyChainPK7grpfile
	cmpl	$-1, %eax
	movl	_g_grpNamePtr, %eax
	jne	L1110
	testl	%eax, %eax
	movl	$LC67, %edx
	cmove	%edx, %eax
	xorl	%edx, %edx
	call	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile
	movl	_g_useCwd, %eax
	testl	%eax, %eax
	je	L1111
L850:
	movl	__ZL13preinitcalled.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1112
L856:
	cmpb	$0, __ZZL16engineLoadTablesvE12tablesloaded
	je	L1113
L858:
	movl	$-1, _xyaspect
	movl	$1, %ecx
	movl	$0, _rotatesprite_y_offset
	movl	$65536, _rotatesprite_yxaspect
	movb	$0, _showinvisibility
	.p2align 5
	.p2align 4
	.p2align 3
L890:
	movl	$16777215, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, __ZL8lowrecip.lto_priv.0(,%ecx,4)
	addl	$1, %ecx
	cmpl	$1024, %ecx
	jne	L890
	movl	$40960, 8(%esp)
	movl	$_voxscale, %edi
	movl	$0, 4(%esp)
	movl	$_voxoff, (%esp)
	call	_memset
	movl	$10240, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7voxlock.lto_priv.0, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_voxflags, (%esp)
	call	_memset
	movl	$61440, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_tiletovox, (%esp)
	call	_memset
	movl	$2048, %ecx
	movl	$65536, %eax
/APP
 # 9255 "source/build/src/engine.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	xorl	%edi, %edi
	movl	$-1, %eax
	movb	$0, _paletteloaded
	movl	$1, %ecx
	movw	%di, _searchit
	movl	$256, %edx
	movl	$0, _totalclock
	movl	$0, _totalclock+8
	movl	$0, _totalclock+12
	movl	$512, _g_visibility
	movl	$512, _parallaxvisibility
	movl	$4096, _maxspritesonscreen
	movw	%ax, _searchstat
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L891:
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
	jne	L891
	movl	$-961, %ebx
	xorl	%esi, %esi
L892:
	leal	-96(%ebx), %eax
	movl	%esi, %edx
L893:
	leal	1(%eax), %ecx
	movl	%eax, __ZL7colscan.lto_priv.0(,%edx,4)
	movl	%ecx, __ZL7colscan.lto_priv.0+4(,%edx,4)
	leal	2(%eax), %ecx
	addl	$32, %eax
	movl	%ecx, __ZL7colscan.lto_priv.0+8(,%edx,4)
	addl	$3, %edx
	cmpl	%eax, %ebx
	jne	L893
	addl	$9, %esi
	addl	$1024, %ebx
	cmpl	$27, %esi
	jne	L892
	movl	__ZL7colscan.lto_priv.0+52, %eax
	movl	__ZL7colscan.lto_priv.0+104, %edx
	movl	$_glblend+4096, %ecx
	movss	LC89, %xmm1
	movss	LC91, %xmm0
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
L895:
	movw	%dx, 4(%eax)
	addl	$16, %eax
	movss	%xmm1, -16(%eax)
	movb	$0, -10(%eax)
	movss	%xmm0, -8(%eax)
	movw	%dx, -4(%eax)
	movb	$0, -2(%eax)
	cmpl	%eax, %ecx
	jne	L895
	xorl	%edx, %edx
	movl	$LC92, %eax
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L896
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$_palette, %edx
	movl	$768, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$_palette+768, %edx
	cmpl	$768, %eax
	movl	$_palette, %eax
	jne	L910
	.p2align 4
	.p2align 4
	.p2align 3
L898:
	salb	$2, (%eax)
	salb	$2, 1(%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L898
	movl	$_palette, (%esp)
	call	_paletteInitClosestColorMap.constprop.0
	movl	%edi, %eax
	orb	$1, _paletteloaded
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	$41600, %eax
	jne	L899
	movl	$32, %esi
	movw	%si, _numshades
	movl	$1, %esi
L900:
	xorl	%eax, %eax
	call	__ZL20maybe_alloc_palookupi.lto_priv.0
	movswl	_numshades, %ecx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_palookup, %edx
	sall	$8, %ecx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movswl	_numshades, %eax
	sall	$8, %eax
	cmpl	%edx, %eax
	jne	L910
	orb	$2, _paletteloaded
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L840
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebx, _blendtable
	testl	%esi, %esi
	je	L904
	leal	1(%ebx), %eax
	movl	%ebx, -40(%ebp)
	movl	%ebx, %esi
	movl	%eax, -36(%ebp)
	movl	%edi, -48(%ebp)
	movl	$255, %edi
L907:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-36(%ebp), %edx
	movl	-48(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	jne	L1114
	movl	$256, %eax
	subl	%edi, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L906:
	movzbl	(%ebx,%eax), %ecx
	movl	%eax, %edx
	addl	$1, %eax
	sall	$8, %edx
	movb	%cl, (%esi,%edx)
	cmpl	$256, %eax
	jne	L906
	addl	$257, -36(%ebp)
	addl	$256, %ebx
	addl	$1, %esi
	subl	$1, %edi
	jne	L907
	movl	-40(%ebp), %edx
	movl	-48(%ebp), %edi
	xorl	%eax, %eax
L908:
	movb	%al, (%edx)
	addl	$1, %eax
	addl	$257, %edx
	cmpl	$256, %eax
	jne	L908
	jmp	L909
L904:
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	$65536, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$65536, %eax
	jne	L910
L909:
	orb	$4, _paletteloaded
	leal	-28(%ebp), %edx
	movl	$12, %ecx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$12, %eax
	jne	L910
	cmpl	$1701998413, -28(%ebp)
	je	L1115
L910:
	movl	%edi, %eax
	call	_kclose
L896:
	movl	_hicinitcounter, %edx
	testl	%edx, %edx
	je	L1116
	movl	_mdinited, %eax
	testl	%eax, %eax
	je	L1117
L927:
	movswl	_numshades, %eax
	sall	$8, %eax
	movl	%eax, 8(%esp)
	movl	_palookup, %eax
	movl	$_DefaultPalette, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L928:
	movb	%al, __ZL7tempbuf.lto_priv.0(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edx)
	cmpl	$256, %eax
	jne	L928
	movzbl	_paletteloaded, %ecx
	testb	%cl, %cl
	je	L929
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$9, %eax
	movl	$60, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ecx
L929:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L930:
	movb	%al, __ZL7tempbuf.lto_priv.0(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edx)
	cmpl	$256, %eax
	jne	L930
	testb	%cl, %cl
	je	L931
	movl	$60, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$1, %eax
	movl	$1, 8(%esp)
	movl	$60, 4(%esp)
	movl	$60, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ecx
L931:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L932:
	movb	%al, __ZL7tempbuf.lto_priv.0(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edx)
	cmpl	$256, %eax
	jne	L932
	testb	%cl, %cl
	je	L1118
	movl	$44, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$5, %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movl	$1, %ecx
	movl	$7, %eax
	movzbl	_paletteloaded, %ebx
	movl	__ZZ11InitPalettevE11BrownRipper, %edx
	call	__Z9MapColorss9COLOR_MAPs
	testb	%bl, %bl
	je	L934
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$7, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movl	$1, %ecx
	movl	$10, %eax
	movzbl	_paletteloaded, %ebx
	movl	__ZZ11InitPalettevE8SkelGore, %edx
	call	__Z9MapColorss9COLOR_MAPs
	testb	%bl, %bl
	je	L936
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$10, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movl	$1, %ecx
	movl	$3, %eax
	movzbl	_paletteloaded, %ebx
	movl	__ZZ11InitPalettevE11ElectroGore, %edx
	call	__Z9MapColorss9COLOR_MAPs
	testb	%bl, %bl
	je	L938
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$3, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movl	$1, %ecx
	movl	$2, %eax
	movzbl	_paletteloaded, %ebx
	movl	__ZZ11InitPalettevE13MenuHighlight, %edx
	call	__Z9MapColorss9COLOR_MAPs
	testb	%bl, %bl
	je	L940
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$2, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L940:
	movl	$1, %ecx
	movl	$4, %eax
	movl	$1, %esi
	movl	__ZZ11InitPalettevE10NinjaBasic, %edx
	call	__Z9MapColorss9COLOR_MAPs
L942:
	movzbl	__ZZ11InitPalettevE10NinjaBasic+1(,%esi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE10NinjaBasic(,%esi,4), %ecx
	movzbl	__ZZ11InitPalettevE10NinjaBasic+2(,%esi,4), %edi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10NinjaBasic+3(,%esi,4), %eax
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L941:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L941
	addl	$1, %esi
	cmpl	$6, %esi
	jne	L942
	testb	%bl, %bl
	je	L943
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$4, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L943:
	movl	$1, %ecx
	movl	$6, %eax
	movl	$1, %esi
	movl	__ZZ11InitPalettevE8NinjaRed, %edx
	call	__Z9MapColorss9COLOR_MAPs
L945:
	movzbl	__ZZ11InitPalettevE8NinjaRed+1(,%esi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE8NinjaRed(,%esi,4), %ecx
	movzbl	__ZZ11InitPalettevE8NinjaRed+2(,%esi,4), %edi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE8NinjaRed+3(,%esi,4), %eax
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L944:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L944
	addl	$1, %esi
	cmpl	$4, %esi
	jne	L945
	testb	%bl, %bl
	je	L946
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$6, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L946:
	movl	$1, %ecx
	movl	$8, %eax
	movl	$1, %esi
	movl	__ZZ11InitPalettevE10NinjaGreen, %edx
	call	__Z9MapColorss9COLOR_MAPs
L948:
	movzbl	__ZZ11InitPalettevE10NinjaGreen+1(,%esi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE10NinjaGreen(,%esi,4), %ecx
	movzbl	__ZZ11InitPalettevE10NinjaGreen+2(,%esi,4), %edi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10NinjaGreen+3(,%esi,4), %eax
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L947:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L947
	addl	$1, %esi
	cmpl	$4, %esi
	jne	L948
	testb	%bl, %bl
	je	L949
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$8, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L949:
	movl	$1, %ecx
	movl	$11, %eax
	movl	$1, %edi
	movl	__ZZ11InitPalettevE10AllToGreen, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L952:
	movzbl	__ZZ11InitPalettevE10AllToGreen(,%edi,4), %ecx
	testb	%cl, %cl
	je	L950
	movzbl	__ZZ11InitPalettevE10AllToGreen+1(,%edi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE10AllToGreen+2(,%edi,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10AllToGreen+3(,%edi,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L951:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L951
L950:
	addl	$1, %edi
	cmpl	$12, %edi
	jne	L952
	testb	%bl, %bl
	je	L953
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$11, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L953:
	movl	$1, %ecx
	movl	$14, %eax
	movl	$1, %edi
	movl	__ZZ11InitPalettevE8AllToRed, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L956:
	movzbl	__ZZ11InitPalettevE8AllToRed(,%edi,4), %ecx
	testb	%cl, %cl
	je	L954
	movzbl	__ZZ11InitPalettevE8AllToRed+1(,%edi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE8AllToRed+2(,%edi,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE8AllToRed+3(,%edi,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L955:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L955
L954:
	addl	$1, %edi
	cmpl	$11, %edi
	jne	L956
	testb	%bl, %bl
	je	L957
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$14, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L957:
	movl	$1, %ecx
	movl	$13, %eax
	movl	$1, %edi
	movl	__ZZ11InitPalettevE9AllToBlue, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L960:
	movzbl	__ZZ11InitPalettevE9AllToBlue(,%edi,4), %ecx
	testb	%cl, %cl
	je	L958
	movzbl	__ZZ11InitPalettevE9AllToBlue+1(,%edi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE9AllToBlue+2(,%edi,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE9AllToBlue+3(,%edi,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L959:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%esi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L959
L958:
	addl	$1, %edi
	cmpl	$11, %edi
	jne	L960
	testb	%bl, %bl
	je	L961
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$13, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L961:
	movl	$1, %ecx
	movl	$32, %eax
	movl	$1, %edi
	movl	__ZZ11InitPalettevE10Illuminate, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L964:
	movzbl	__ZZ11InitPalettevE10Illuminate(,%edi,4), %ecx
	testb	%cl, %cl
	je	L962
	movzbl	__ZZ11InitPalettevE10Illuminate+1(,%edi,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE10Illuminate+2(,%edi,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10Illuminate+3(,%edi,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L963:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf.lto_priv.0(%esi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L963
L962:
	addl	$1, %edi
	cmpl	$14, %edi
	jne	L964
	testb	%bl, %bl
	je	L965
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$32, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L965:
	movl	$16, %esi
	.p2align 4
	.p2align 3
L967:
	movl	__ZL14PlayerColorMap-64(,%esi,4), %edx
	movl	$1, %ecx
	movswl	%si, %eax
	movl	%edx, -36(%ebp)
	call	__Z9MapColorss9COLOR_MAPs
	movl	-36(%ebp), %edx
	xorl	%ecx, %ecx
	movswl	%si, %eax
	call	__Z9MapColorss9COLOR_MAPs
	testb	%bl, %bl
	je	L966
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	%esi, %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ebx
L966:
	addl	$1, %esi
	cmpl	$31, %esi
	jne	L967
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L968:
	movb	%al, __ZL7tempbuf.lto_priv.0(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0(%edx)
	cmpl	$256, %eax
	jne	L968
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L969:
	movl	$64, %edx
	subl	%eax, %edx
	addl	$1, %eax
	movb	%dl, __ZL7tempbuf.lto_priv.0+31(%eax)
	cmpl	$32, %eax
	jne	L969
	testb	%bl, %bl
	je	L970
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	movl	$15, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L970:
	movl	$-1, %eax
	call	_tileSetupSky
	movb	$1, 8(%eax)
	movl	$8192, (%eax)
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
L899:
	.cfi_restore_state
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numshades, %edx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L910
	xorl	%esi, %esi
	cmpw	$1, _numshades
	jg	L900
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L902
	movl	$LC93, 12(%esp)
	movl	$190, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L902:
	xorl	%ebx, %ebx
	movl	%edi, %eax
	movw	%bx, _numshades
	call	_kclose
	jmp	L896
	.p2align 4,,10
	.p2align 3
L1110:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_g_selectedGrp, %eax
	subl	$4, %esp
	movl	(%eax), %esi
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L840
	movl	%esi, (%esp)
	call	_strlen
	movl	$255, %edx
	addl	$1, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	cmpl	$16, %eax
	jnb	L841
	testb	$8, %al
	jne	L1119
	testb	$4, %al
	jne	L1120
	testl	%eax, %eax
	je	L842
	movzbl	(%esi), %edx
	movb	%dl, (%ebx)
	testb	$2, %al
	jne	L1121
L842:
	movl	_g_useCwd, %eax
	movb	$0, 255(%ebx)
	movl	%ebx, _g_grpNamePtr
	testl	%eax, %eax
	jne	L850
L1111:
	movl	__ZL14searchpathhead.lto_priv.0, %esi
L1108:
	testl	%esi, %esi
	je	L850
L1122:
	movl	%esi, %ebx
	movl	(%esi), %esi
	testb	$1, 12(%ebx)
	je	L1108
	movl	__ZL14searchpathhead.lto_priv.0, %eax
	cmpl	%ebx, %eax
	jne	L852
	movl	%esi, __ZL14searchpathhead.lto_priv.0
L853:
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%esi, %esi
	jne	L1122
	movl	__ZL13preinitcalled.lto_priv.0, %eax
	testl	%eax, %eax
	jne	L856
L1112:
	call	_enginePreInit
	cmpb	$0, __ZZL16engineLoadTablesvE12tablesloaded
	jne	L858
L1113:
	movl	$1, -36(%ebp)
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L857:
	movl	%esi, %ebx
	movl	$536870912, %edx
	movl	$15, %ecx
	movl	$1073741824, %eax
	sall	$18, %ebx
	addl	$131072, %ebx
	.p2align 4
	.p2align 3
L860:
	subl	%edx, %eax
	shrl	%eax
	subl	$1, %ecx
	je	L1123
L862:
	shrl	$2, %edx
	cmpl	%eax, %ebx
	jb	L860
	subl	%eax, %ebx
	leal	(%eax,%edx,4), %eax
	subl	%edx, %eax
	shrl	%eax
	subl	$1, %ecx
	jne	L862
L1123:
	cmpl	%eax, %ebx
	sbbl	$-1, %eax
	shrl	%eax
	addl	%eax, %eax
	movw	%ax, _sqrtable(%esi,%esi)
	movl	$10, %eax
	subl	%edi, %eax
	sall	$8, %eax
	leal	(%eax,%edi,2), %eax
	movw	%ax, _shlookup(%esi,%esi)
	cmpl	$255, %esi
	jle	L1124
	addl	$1, %esi
	cmpl	$4096, %esi
	je	L1125
L865:
	movl	-36(%ebp), %eax
	cmpl	%esi, %eax
	jg	L857
	sall	$2, %eax
	addl	$1, %edi
	movl	%eax, -36(%ebp)
	jmp	L857
L1118:
	movl	__ZZ11InitPalettevE11BrownRipper, %edx
	movl	$1, %ecx
	movl	$7, %eax
	call	__Z9MapColorss9COLOR_MAPs
L934:
	movl	__ZZ11InitPalettevE8SkelGore, %edx
	movl	$1, %ecx
	movl	$10, %eax
	call	__Z9MapColorss9COLOR_MAPs
L936:
	movl	__ZZ11InitPalettevE11ElectroGore, %edx
	movl	$1, %ecx
	movl	$3, %eax
	call	__Z9MapColorss9COLOR_MAPs
L938:
	movl	__ZZ11InitPalettevE13MenuHighlight, %edx
	movl	$1, %ecx
	movl	$2, %eax
	xorl	%ebx, %ebx
	call	__Z9MapColorss9COLOR_MAPs
	jmp	L940
L1124:
	movl	$4, %eax
	subl	%edi, %eax
	sall	$8, %eax
	leal	12(%eax,%edi,2), %eax
	movw	%ax, _shlookup+8192(%esi,%esi)
	addl	$1, %esi
	jmp	L865
L1125:
	movl	$0, -36(%ebp)
	.p2align 4
	.p2align 3
L871:
	movl	-36(%ebp), %ebx
	movl	$128, %ecx
	sall	$20, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L866:
	movl	%ebx, %eax
	xorl	%edx, %edx
	divl	%ecx
	leal	(%eax,%ecx), %edx
	leal	1(%ecx), %eax
	movl	%edx, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	$2, %eax
	ja	L866
	movl	%ecx, %edi
	leal	(%ecx,%ecx), %esi
	imull	%ecx, %edi
	subl	%ebx, %edi
	movl	%edi, %eax
	movl	%edi, %ebx
	subl	%esi, %eax
	addl	$1, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jge	L867
	.p2align 4
	.p2align 3
L868:
	movl	%ecx, %eax
	subl	$1, %ecx
	negl	%eax
	leal	(%ecx,%ecx), %esi
	leal	1(%ebx,%eax,2), %ebx
	movl	$1, %eax
	subl	%esi, %eax
	movl	%ebx, %edi
	addl	%ebx, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 8515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L868
L867:
	leal	1(%esi,%edi), %edx
	movl	%edx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%esi, %eax
	jle	L869
	.p2align 4
	.p2align 3
L870:
	addl	$1, %ecx
	movl	%edx, %ebx
	leal	1(%edx,%ecx,2), %edx
	movl	%edx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 8520 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %esi
	jl	L870
L869:
	movl	-36(%ebp), %eax
	movw	%cx, _sqrtable_old(%eax,%eax)
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	cmpl	$2048, %eax
	jne	L871
	movl	$2048, %esi
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L872:
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$0, (%esp)
	movl	$512, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, _reciptable-8192(,%esi,4)
	addl	$1, %esi
	movl	%esi, %eax
	adcl	$0, %edi
	xorb	$16, %ah
	orl	%edi, %eax
	jne	L872
	movl	$-16384, %edx
	.p2align 4
	.p2align 3
L873:
	movl	%edx, %eax
/APP
 # 8664 "source/build/src/engine.cpp" 1
	movl %eax, (_fpuasm); fildl (_fpuasm); addl %eax, %eax; fstps (_fpuasm); sbbl %ebx, %ebx; movl (_fpuasm), %eax; movl %eax, %ecx; andl $0x007ff000, %eax; shrl $10, %eax; subl $0x3f800000, %ecx; shrl $23, %ecx; movl _reciptable(%eax), %eax; sarl %cl, %eax; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _sloptable+65536(,%edx,4)
	addl	$1, %edx
	cmpl	$16384, %edx
	jne	L873
	xorl	%eax, %eax
	movl	$1, %ebx
	movw	%ax, _sintable
	.p2align 4
	.p2align 3
L874:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	LC76, %xmm0
	movss	%xmm0, (%esp)
	call	_sinf
	movss	LC77, %xmm0
	fstps	-36(%ebp)
	mulss	-36(%ebp), %xmm0
	addss	LC78, %xmm0
	cvttss2sil	%xmm0, %eax
	movw	%ax, _sintable(%ebx,%ebx)
	addl	$1, %ebx
	cmpl	$513, %ebx
	jne	L874
	movl	$_sintable, %ebx
	movl	$_sintable+1022, %eax
	movl	$_sintable+1026, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L875:
	movzwl	(%eax), %ecx
	addl	$2, %edx
	movw	%cx, -2(%edx)
	movl	%eax, %ecx
	subl	$2, %eax
	cmpl	%eax, %ebx
	jne	L875
	addl	$2046, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L876:
	movzwl	(%eax), %edx
	addl	$2, %eax
	negl	%edx
	movw	%dx, 2046(%eax)
	cmpl	%eax, %ecx
	jne	L876
	movl	$-27653, %eax
	movl	$1, %ebx
	movw	%ax, __ZL8radarang.lto_priv.0
	.p2align 4
	.p2align 3
L877:
	movl	$640, %eax
	xorps	%xmm0, %xmm0
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	subss	LC69, %xmm0
	mulss	LC79, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	movss	LC80, %xmm0
	fstps	-36(%ebp)
	mulss	-36(%ebp), %xmm0
	addss	LC78, %xmm0
	cvttss2sil	%xmm0, %eax
	movw	%ax, __ZL8radarang.lto_priv.0(%ebx,%ebx)
	addl	$1, %ebx
	cmpl	$640, %ebx
	jne	L877
	movl	$__ZL8radarang.lto_priv.0, %eax
	movl	$__ZL8radarang.lto_priv.0+2558, %ecx
	movl	$__ZL8radarang.lto_priv.0+1280, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L878:
	movzwl	(%eax), %edx
	addl	$2, %eax
	subl	$2, %ecx
	negl	%edx
	movw	%dx, 2(%ecx)
	cmpl	%eax, %ebx
	jne	L878
	movss	LC68, %xmm1
	xorl	%ebx, %ebx
	jmp	L882
	.p2align 4,,10
	.p2align 3
L1126:
	movl	$5120, %eax
	xorps	%xmm0, %xmm0
	subl	%ebx, %eax
	cvtsi2ssl	%eax, %xmm0
	subss	%xmm5, %xmm0
	mulss	LC83, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm1
L882:
	mulss	LC80, %xmm1
	xorps	%xmm0, %xmm0
	movss	LC81, %xmm2
	movss	LC69, %xmm5
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC70, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm5, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, __ZL9qradarang.lto_priv.0(,%ebx,4)
	addl	$1, %ebx
	cmpl	$5120, %ebx
	jne	L1126
	movl	$5120, %esi
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L881:
	movl	__ZL9qradarang.lto_priv.0(,%edx,4), %eax
	addl	$1, %edx
	negl	%eax
	movl	%eax, __ZL9qradarang.lto_priv.0+20476(,%esi,4)
	subl	$1, %esi
	jne	L881
	xorl	%ecx, %ecx
	movl	$4096, %edx
	movl	$_sintable, %eax
	call	_Bcrc32
	movl	$1280, %edx
	xorl	%ecx, %ecx
	movl	%eax, %ebx
	movl	$__ZL8radarang.lto_priv.0, %eax
	call	_Bcrc32
	movl	%eax, %edx
	cmpl	$-299992390, %ebx
	je	L1127
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-292995694, %edx
	je	L886
	cmpl	$-1, %eax
	jl	L885
	movl	$LC71, %eax
	movl	$LC72, %edx
L887:
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC84, 12(%esp)
	movl	$8694, 8(%esp)
	movl	$LC85, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L885:
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L889:
	movss	LC86, %xmm6
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	cvtsi2ssl	%edi, %xmm0
	addss	LC86, %xmm0
	divss	%xmm0, %xmm6
	movss	%xmm6, -36(%ebp)
	flds	-36(%ebp)
	fstl	-48(%ebp)
	movl	$0, (%esp)
	fstpl	8(%esp)
	movl	$1081073664, 4(%esp)
	call	_pow
	movss	LC87, %xmm7
	fstps	-36(%ebp)
	divss	-36(%ebp), %xmm7
	movss	%xmm7, -40(%ebp)
	.p2align 4
	.p2align 3
L888:
	xorps	%xmm3, %xmm3
	fldl	-48(%ebp)
	cvtsi2ssl	%ebx, %xmm3
	fstpl	8(%esp)
	movss	%xmm3, -36(%ebp)
	flds	-36(%ebp)
	fstpl	(%esp)
	call	_pow
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm0
	mulss	-40(%ebp), %xmm0
	cvttss2sil	%xmm0, %eax
	movb	%al, _britable(%esi,%ebx)
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L888
	addl	$1, %edi
	addl	$256, %esi
	cmpl	$16, %edi
	jne	L889
	movb	$1, __ZZL16engineLoadTablesvE12tablesloaded
	jmp	L858
	.p2align 4
	.p2align 4,,10
	.p2align 3
L972:
	movl	%edx, %eax
L852:
	testl	%eax, %eax
	je	L853
	movl	(%eax), %edx
	cmpl	%ebx, %edx
	jne	L972
	movl	%esi, (%eax)
	jmp	L853
L1116:
	call	_hicinit
	movl	_mdinited, %eax
	testl	%eax, %eax
	jne	L927
L1117:
	call	_freeallmodels
	movl	$1, _mdinited
	jmp	L927
L1114:
	movl	-48(%ebp), %eax
	call	_kclose
	jmp	L896
L841:
	movl	-16(%esi,%eax), %edx
	movl	%edx, -16(%ebx,%eax)
	movl	-12(%esi,%eax), %edx
	movl	%edx, -12(%ebx,%eax)
	movl	-8(%esi,%eax), %edx
	movl	%edx, -8(%ebx,%eax)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	subl	$1, %eax
	cmpl	$16, %eax
	jb	L842
	andl	$-16, %eax
	movl	%eax, -36(%ebp)
	xorl	%eax, %eax
L846:
	movl	12(%esi,%eax), %edx
	movl	4(%esi,%eax), %edi
	movl	8(%esi,%eax), %ecx
	movl	%edx, -48(%ebp)
	movl	(%esi,%eax), %edx
	movl	%edi, 4(%ebx,%eax)
	movl	%edx, (%ebx,%eax)
	movl	%ecx, 8(%ebx,%eax)
	movl	-48(%ebp), %edi
	movl	%edi, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	-36(%ebp), %eax
	jb	L846
	jmp	L842
L886:
	cmpl	$-1, %eax
	jl	L885
	movl	$LC73, %eax
	movl	$LC74, %edx
	jmp	L887
L840:
	movl	$256, %eax
	call	__Z13handle_memerri
L1127:
	cmpl	$-292995694, %eax
	je	L885
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L885
	movl	$LC75, %eax
	movl	$LC74, %edx
	jmp	L887
L1115:
	cmpl	$1852140610, -24(%ebp)
	jne	L910
	cmpl	$1650545764, -20(%ebp)
	jne	L910
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-31(%ebp), %edx
	movl	%edi, %eax
	xorl	%esi, %esi
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$1, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L1128
	movl	$65536, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L916
	cmpb	$0, -31(%ebp)
	je	L918
L917:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$1, %ecx
	leal	-30(%ebp), %edx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L1129
	movzbl	-30(%ebp), %edx
	movl	_blendtable(,%edx,4), %ecx
	testl	%ecx, %ecx
	je	L921
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-1, %eax
	jl	L921
	movl	%edx, 16(%esp)
	movl	$LC98, 12(%esp)
	movl	$260, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L921:
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	$65536, %ecx
	movl	%ebx, %edx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$65536, %eax
	jne	L1130
	movzbl	-30(%ebp), %eax
	movl	%ebx, %edx
	addl	$1, %esi
	call	_paletteSetBlendTable
	movzbl	-31(%ebp), %eax
	cmpl	%eax, %esi
	jl	L917
L918:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	leal	-29(%ebp), %edx
	movl	$1, %ecx
	movl	%edi, %eax
	subl	$4, %esp
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$1, %eax
	jne	L910
	movzbl	-29(%ebp), %ecx
	leal	-1(%ecx), %edx
	cmpb	$6, %dl
	ja	L1131
	sall	%cl, %eax
	movb	%al, _numalphatabs
	jmp	L910
L1130:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L923
	movl	$LC99, 12(%esp)
	movl	$264, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L923:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%edi, %eax
	subl	$4, %esp
	call	_kclose
	jmp	L896
L1129:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L923
	movl	$LC97, 12(%esp)
	movl	$254, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L923
L916:
	movl	$65536, %eax
	call	__Z13handle_memerri
L1128:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L910
	movl	$LC96, 12(%esp)
	movl	$244, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L910
L1131:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L910
	movl	$LC100, 12(%esp)
	movl	$278, 8(%esp)
	movl	$LC94, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L910
	.p2align 4,,10
	.p2align 3
L1121:
	movzwl	-2(%esi,%eax), %edx
	movw	%dx, -2(%ebx,%eax)
	jmp	L842
L1120:
	movl	(%esi), %edx
	movl	%edx, (%ebx)
	movl	-4(%esi,%eax), %edx
	movl	%edx, -4(%ebx,%eax)
	jmp	L842
L1119:
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movl	%edx, (%ebx)
	movl	%ecx, 4(%ebx)
	movl	-4(%esi,%eax), %edi
	movl	-8(%esi,%eax), %esi
	movl	%edi, -4(%ebx,%eax)
	movl	%esi, -8(%ebx,%eax)
	jmp	L842
	.cfi_endproc
LFE80:
	.section .rdata,"dr"
LC102:
	.ascii "%02X-%02X\0"
LC103:
	.ascii ",%02X-%02X\0"
LC104:
	.ascii "wb\0"
LC105:
	.ascii "wangulator.cfg\0"
	.align 4
LC106:
	.ascii ";; NOTE: key-value pairs ending in a trailing ';;' will NOT be read from this\12;; file, but from m32_settings.cfg, potentially under a different name.\12\12; Always show configuration options on startup\12;   0 - No\12;   1 - Yes\12forcesetup = %d\12\12; Restrict operation to the current working directory only\12;   0 - No\12;   1 - Yes\12usecwd = %d\12\12; Video mode selection\12;   0 - Windowed\12;   1 - Fullscreen\12fullscreen = %d\12\12; Video resolution\12xdim = %d\12ydim = %d\12upscalefactor = %d\12\12; 3D-mode colour depth\12bpp = %d\12\12vsync = %d ;;\12\12; Rendering mode\12rendmode = %d\12\12; Grid limits\12editorgridextent = %d\12; Startup grid size (0-8, 9 is automatic)\12grid = %d\12\12;; OpenGL mode options\12usemodels = %d ;;\12usehightile = %d ;;\12; Enabling lazytileselector allows the tile display to interrupt\12; drawing hightiles so you can quickly browse without waiting\12; for all of them to load. Set to 0 if you experience flickering.\12lazytileselector = %d\12; glusetexcache: 0:no, 1:yes, 2:compressed\12; For best performance, keep this setting in sync with EDuke32\12glusetexcache = %d ;;\12glusememcache = %d ;;\12gltexfiltermode = %d ;;\12glanisotropy = %d ;;\12r_downsize = %d ;;\12r_texcompr = %d ;;\12r_shadescale = %g ;;\12r_usenewshading = %d ;;\12r_usetileshades = %d ;;\12r_pr_artmapping = %d ;;\12\12; Use new aspect determination code? (classic/Polymost)\12r_usenewaspect = %d ;;\12; Screen aspect for fullscreen, in the form WWHH (e.g. 1609 for 16:9).\12; A value of 0 means to assume that the pixel aspect is square.\12r_screenxy = %d ;;\12\12; Window position\12windowposx = %d\12windowposy = %d\12\12; 3D mode brightness setting\12vid_gamma = %g\12vid_contrast = %g\12\12; Game executable used for map testing\12gameexecutable = %s\12\12; Mouse sensitivity\12mousesensitivity = %g\12\12; Mouse navigation\12;   0 - No\12;   1 - Yes\12mousenavigation = %d\12\12; Mouse navigation acceleration\12mousenavigationaccel = %d\12\12; Quick map cycling (SHIFT)+CTRL+X\12;   0 - No\12;   1 - Yes\12quickmapcycling = %d\12\12; Reverse meaning of Q and W keys in side view mode\12sideview_reversehorizrot = %d\12\12; Revert CTRL for tile "
	.ascii "selction\12;   0 - WHEEL:scrolling, CTRL+WHEEL:zooming\12;   1 - CTRL+WHEEL:scrolling, WHEEL:zooming\12revertCTRL = %d\12\12; Scroll amount for WHEEL in the tile selection\12scrollamount = %d\12\12; Turning acceleration+declaration\12turnaccel = %d\12\12; Turning deceleration\12turndecel = %d\12\12; Autosave map interval (seconds)\12autosavesec = %d\12\12; Auto corruption check interval (seconds)\12autocorruptchecksec = %d\12\12; Ignore 'already referenced wall' warnings\12corruptcheck_noalreadyrefd = %d\12\12; Flag Duke3D issues\12corruptcheck_game_duke3d = %d\12\12; Auto-correct inconsistent ceilingstat/floorstat bit 2 and .heinum?\12; Set to 2, also warn on 'corruptcheck'.\12corruptcheck_heinum = %d\12\12; Fix sprite sectnums when saving a map or entering 3D mode\12fixmaponsave_sprites = %d\12\12; Keep texture stretching when dragging wall vertices\12keeptexturestretch = %d\12\12; Height indicators (0:none, 1:only 2-sided&different, 2:all)\12showheightindicators = %d\12\12; Ambience sound circles (0:none, 1:only in current sector, 2:all)\12showambiencesounds = %d\12\12; Default filesystem mode\12pathsearchmode = %d\12\12; Experimental 2d/3d hybrid mode\12"
	.ascii "2d3dmode = %d\12"
	.ascii "2d3dsize = %d\12"
	.ascii "2d3d_x = %d\12"
	.ascii "2d3d_y = %d\12\12; Enable undo in 3d mode\12"
	.ascii "3dundo = %d\12\12; Point and line highlight/selection distances\12pointhighlightdist = %d\12linehighlightdist = %d\12\12; TROR: Automatic grayout of plain (non-extended) sectors,\12;       toggled with Ctrl-A:\12autogray = %d\12\12; 2D mode display type (0:classic, 1:textured, 2:textured/animated)\12graphicsmode = %d\12\12; Sample rate in Hz\12samplerate = %d\12; Ambient sounds in 3D mode (0:off, 1:on)\12ambiencetoggle = %d\12parlock = %d\12\12; Try executing m32script on invalid command in the OSD? This makes\12; typing m32script commands into the OSD directly possible.\12osdtryscript = %d\12\12; Key Settings\12;  Here's a map of all the keyboard scan codes: NOTE: values are listed in hex!\12; +---------------------------------------------------------------------------------------------+\12; | 01   3B  3C  3D  3E   3F  40  41  42   43  44  57  58          46                   "
	.ascii "        |\12; |ESC   F1  F2  F3  F4   F5  F6  F7  F8   F9 F10 F11 F12        SCROLL                         |\12; |                                                                                             |\12; |29  02  03  04  05  06  07  08  09  0A  0B  0C  0D   0E     D2  C7  C9      45  B5  37  4A   |\12; | ` '1' '2' '3' '4' '5' '6' '7' '8' '9' '0'  -   =  BACK    INS HOME PGUP  NUMLK KP/ KP* KP-  |\12; |                                                                                             |\12; | 0F  10  11  12  13  14  15  16  17  18  19  1A  1B  2B     D3  CF  D1      47  48  49  4E   |\12; |TAB  Q   W   E   R   T   Y   U   I   O   P   [   ]    \\    DEL END PGDN    KP7 KP8 KP9 KP+   |\12; |                                                                                             |\12; | 3A   1E  1F  20  21  22  23  24  25  26  27  28     1C                     4B  4C  4D       |\12; |CAPS  A   S   D   F   G   H   J   K   L   ;   '   ENTER                    KP4 KP5 KP6    9C |\12; |                                                                                      KPENTER|\12; |  2A    2C  2D  2E  2F  30  31  32  33  34  35    36            C8          4F  50  51       |\12; |LSHIFT  Z   X   C   V   B   N   M   ,   .   /   RSHIFT          UP         KP1 KP2 KP3       |\12; |                                                                                             |\12; | 1D     38              39                  B8     9D       CB  D0   CD      52    53        |\12; |LCTRL  LALT           SPACE                RALT   RCTRL   LEFT DOWN RIGHT    KP0    KP.      |\12; +---------------------------------------------------------------------------------------------+\12\12keyforward = %X\12keybackward = %X\12keyturnleft = %X\12keyturnright = %X\12keyrun = %X\12keystrafe = %X\12keystandhigh = %X\12keystandlow = %X\12key2dmode = %X\12keyconsole = %X\12\12; This option allows you to remap keys in case some of them are not available\12; (like on a notebook). It has to be a comma-separated list of SOURCE-TARGET\12; scan"
	.ascii "code values, looked up in the keyboard map above. This also means that\12; the key positions count, not their labels for non-US keyboards.\12;\12; Example:\12;  1. Map the backslash key (0x2B) to KPENTER (9C), since portable devices\12;     often don't have the latter\12;  2. make KP0 (0x52) function as KP5 (0x4C), countering the inability to pan\12;     using Shift-KP5-KP8/2 in 3D mode\12; remap = 2B-9C,52-4C\12remap = \0"
LC107:
	.ascii "\12\12\0"
LC108:
	.ascii "; Mapster32-script history\12\0"
LC109:
	.ascii "hist%d = %s\12\0"
LC110:
	.ascii ".\0"
LC111:
	.ascii "%s_m32_settings.cfg\0"
	.align 4
LC112:
	.ascii "// this file is automatically generated by %s\12\0"
LC113:
	.ascii "alias \"\0"
LC114:
	.ascii "\" \"\0"
LC115:
	.ascii "\"\12\0"
LC116:
	.ascii " \"%f\"\12\0"
LC117:
	.ascii " \"%d\"\12\0"
LC118:
	.ascii " \"%u\"\12\0"
LC119:
	.ascii " \"\0"
LC120:
	.ascii "Wrote m32_settings.cfg\12\0"
LC121:
	.ascii "Wrote %s_m32_settings.cfg\12\0"
	.align 4
LC122:
	.ascii "Error writing m32_settings.cfg: %s\12\0"
	.align 4
LC123:
	.ascii "Error writing %s_m32_settings.cfg: %s\12\0"
	.text
	.p2align 4
	.globl	_ExtUnInit
	.def	_ExtUnInit;	.scl	2;	.type	32;	.endef
_ExtUnInit:
LFB106:
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
	subl	$528, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_numgroupfiles, %ebx
	subl	$1, %ebx
	js	L1133
	.p2align 4
	.p2align 3
L1135:
	cmpl	$-1, __ZL8groupfil.lto_priv.0(,%ebx,4)
	je	L1134
	movl	__ZL9gfilelist.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL9gfileoffs.lto_priv.0(,%ebx,4), %eax
	subl	$4, %esp
	movl	$0, __ZL9gfilelist.lto_priv.0(,%ebx,4)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL9groupname.lto_priv.0(,%ebx,4), %eax
	subl	$4, %esp
	movl	$0, __ZL9gfileoffs.lto_priv.0(,%ebx,4)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL8groupfil.lto_priv.0(,%ebx,4), %eax
	subl	$4, %esp
	movl	$0, __ZL9groupname.lto_priv.0(,%ebx,4)
	movl	%eax, (%esp)
	call	_close
	movl	$-1, __ZL8groupfil.lto_priv.0(,%ebx,4)
L1134:
	subl	$1, %ebx
	jnb	L1135
L1133:
	movl	$0, _numgroupfiles
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1137:
	cmpb	$-3, __ZL7filegrp.lto_priv.0(%eax)
	ja	L1136
	movl	$-1, __ZL7filehan.lto_priv.0(,%eax,4)
L1136:
	addl	$1, %eax
	cmpl	$64, %eax
	jne	L1137
	movl	$LC104, 4(%esp)
	movl	$LC105, (%esp)
	call	_fopen
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1132
	movzbl	_default_buildkeys+19, %eax
	movl	$9, %edx
	movl	$LC103, %edi
	movl	%eax, 312(%esp)
	movzbl	_default_buildkeys+14, %eax
	movl	%eax, 308(%esp)
	movzbl	_default_buildkeys+9, %eax
	movl	%eax, 304(%esp)
	movzbl	_default_buildkeys+8, %eax
	movl	%eax, 300(%esp)
	movzbl	_default_buildkeys+5, %eax
	movl	%eax, 296(%esp)
	movzbl	_default_buildkeys+4, %eax
	movl	%eax, 292(%esp)
	movzbl	_default_buildkeys+3, %eax
	movl	%eax, 288(%esp)
	movzbl	_default_buildkeys+2, %eax
	movl	%eax, 284(%esp)
	movzbl	_default_buildkeys+1, %eax
	movl	%eax, 280(%esp)
	movzbl	_default_buildkeys, %eax
	movl	%eax, 276(%esp)
	movzbl	_m32_osd_tryscript, %eax
	movl	%eax, 272(%esp)
	movl	_ParentalLock, %eax
	movl	%eax, 268(%esp)
	movl	_AmbienceToggle, %eax
	movl	%eax, 264(%esp)
	movl	_MixRate, %eax
	movl	%eax, 260(%esp)
	movl	_graphicsmode, %eax
	movl	%eax, 256(%esp)
	movl	_autogray, %eax
	movl	%eax, 252(%esp)
	movswl	_linehighlightdist, %eax
	movl	%eax, 248(%esp)
	movswl	_pointhighlightdist, %eax
	movl	%eax, 244(%esp)
	movl	_m32_3dundo, %eax
	movl	%eax, 240(%esp)
	movl	_m32_2d3d+4, %eax
	movl	%eax, 236(%esp)
	movl	_m32_2d3d, %eax
	movl	%eax, 232(%esp)
	movl	_m32_2d3dsize, %eax
	movl	%eax, 228(%esp)
	movl	_m32_2d3dmode, %eax
	movl	%eax, 224(%esp)
	movl	_pathsearchmode, %eax
	movl	%eax, 220(%esp)
	movl	_showambiencesounds, %eax
	movl	%eax, 216(%esp)
	movl	_showheightindicators, %eax
	movl	%eax, 212(%esp)
	movsbl	_keeptexturestretch, %eax
	movl	%eax, 208(%esp)
	movl	_fixmaponsave_sprites, %eax
	movl	%eax, 204(%esp)
	movl	_corruptcheck_heinum, %eax
	movl	%eax, 200(%esp)
	movl	_corruptcheck_game_duke3d, %eax
	movl	%eax, 196(%esp)
	movl	_corruptcheck_noalreadyrefd, %eax
	movl	%eax, 192(%esp)
	movl	_autocorruptcheck, %eax
	movl	%eax, 188(%esp)
	movl	_autosave, %eax
	movl	%eax, 184(%esp)
	movl	_pk_turndecel, %eax
	movl	%eax, 180(%esp)
	movl	_pk_turnaccel, %eax
	movl	%eax, 176(%esp)
	movl	_scrollamount, %eax
	movl	%eax, 172(%esp)
	movl	_revertCTRL, %eax
	movl	%eax, 168(%esp)
	movsbl	_sideview_reversehrot, %eax
	movl	%eax, 164(%esp)
	movl	_quickmapcycling, %eax
	movl	%eax, 160(%esp)
	movl	_pk_uedaccel, %eax
	movl	%eax, 156(%esp)
	movl	_unrealedlook, %eax
	movl	%eax, 152(%esp)
	fldl	_msens
	movl	$_game_executable, 140(%esp)
	fstpl	144(%esp)
	flds	_g_videoContrast
	fstpl	132(%esp)
	flds	_g_videoGamma
	fstpl	124(%esp)
	movl	_g_windowPos+4, %eax
	movl	%eax, 120(%esp)
	movl	_g_windowPos, %eax
	movl	%eax, 116(%esp)
	movl	_r_screenxy, %eax
	movl	%eax, 112(%esp)
	movl	_r_usenewaspect, %eax
	movl	%eax, 108(%esp)
	movl	_pr_artmapping, %eax
	movl	%eax, 104(%esp)
	movl	_r_usetileshades, %eax
	movl	%eax, 100(%esp)
	movl	_r_usenewshading, %eax
	movl	%eax, 96(%esp)
	flds	_shadescale
	fstpl	88(%esp)
	movl	_glusetexcompr, %eax
	movl	%eax, 84(%esp)
	movl	_r_downsize, %eax
	movl	%eax, 80(%esp)
	movl	_glanisotropy, %eax
	movl	%eax, 76(%esp)
	movl	_gltexfiltermode, %eax
	movl	%eax, 72(%esp)
	movl	_glusememcache, %eax
	movl	%eax, 68(%esp)
	movl	_glusetexcache, %eax
	movl	%eax, 64(%esp)
	movl	_g_lazy_tileselector, %eax
	movl	%eax, 60(%esp)
	movl	_usehightile, %eax
	movl	%eax, 56(%esp)
	movl	_usemodels, %eax
	movl	%eax, 52(%esp)
	movl	__ZL12default_grid.lto_priv.0, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	xorl	%ebx, %ebx
	movl	%eax, 48(%esp)
	movl	_editorgridextent, %eax
	movl	%eax, 44(%esp)
	movl	_glrendmode, %eax
	movl	%eax, 40(%esp)
	movl	_vsync, %eax
	movl	%eax, 36(%esp)
	movl	_bppgame, %eax
	movl	%eax, 32(%esp)
	movl	_upscalefactor, %eax
	movl	%eax, 28(%esp)
	movl	_yres, %eax
	movl	%eax, 24(%esp)
	movl	_xres, %eax
	movl	%eax, 20(%esp)
	movl	_fullscreen, %eax
	movl	%eax, 16(%esp)
	movl	_g_useCwd, %eax
	movl	%eax, 12(%esp)
	movl	_forcesetup, %eax
	movl	$LC106, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_fprintf
	movl	$1, %edx
	.p2align 4
	.p2align 3
L1143:
	movzbl	_g_keyRemapTable(%ebx), %eax
	cmpl	%ebx, %eax
	je	L1139
	testl	%edx, %edx
	movl	$LC102, %edx
	cmove	%edi, %edx
L1142:
	movl	%ebx, 8(%esp)
	addl	$1, %ebx
	movl	%eax, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	call	_fprintf
	cmpl	$256, %ebx
	je	L1141
	movzbl	_g_keyRemapTable(%ebx), %eax
	movl	$LC103, %edx
	cmpl	%ebx, %eax
	jne	L1142
	xorl	%edx, %edx
L1139:
	addl	$1, %ebx
	cmpl	$256, %ebx
	jne	L1143
L1141:
	movl	%esi, 12(%esp)
	xorl	%edi, %edi
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC107, (%esp)
	call	_fwrite
	movl	%esi, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC108, (%esp)
	call	_fwrite
	movl	_scripthistend, %ebx
	.p2align 4
	.p2align 3
L1145:
	movl	_scripthist(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1144
	movl	%edi, 8(%esp)
	addl	$1, %edi
	movl	%eax, 12(%esp)
	movl	$LC109, 4(%esp)
	movl	%esi, (%esp)
	call	_fprintf
L1144:
	leal	1(%ebx), %eax
	sarl	$31, %eax
	shrl	$27, %eax
	leal	1(%eax,%ebx), %ebx
	andl	$31, %ebx
	subl	%eax, %ebx
	cmpl	_scripthistend, %ebx
	jne	L1145
	movl	%esi, (%esp)
	call	_fclose
	movl	$_setupfilename, (%esp)
	call	_strlen
	leal	1(%eax), %esi
	movl	%eax, %ebx
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	movl	%eax, -220(%ebp)
	testl	%eax, %eax
	je	L1146
	movl	$_setupfilename, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%edi,%ebx)
	movl	$0, -212(%ebp)
	movl	$LC105, 4(%esp)
	movl	$_setupfilename, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L1147
	movl	-220(%ebp), %eax
	leal	-212(%ebp), %ecx
	movl	$LC110, %edx
	leal	-144(%ebp), %ebx
	call	_Bstrtoken.constprop.0
	movl	$LC111, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
L1149:
	movl	$LC104, 4(%esp)
	movl	%ebx, (%esp)
	call	_fopen
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1199
	movl	$LC105, 4(%esp)
	movl	$_setupfilename, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1167
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$LC122, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
L1168:
	movl	-220(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1132:
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
L1147:
	.cfi_restore_state
	movl	$1597125485, -144(%ebp)
	leal	-144(%ebp), %ebx
	movl	$1953785203, -140(%ebp)
	movl	$1936158313, -136(%ebp)
	movl	$1734763310, -132(%ebp)
	movb	$0, -128(%ebp)
	jmp	L1149
L1199:
	movl	$LC63, 8(%esp)
	movl	$LC112, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	movl	_osd, %edi
	leal	1188(%edi), %ebx
	addl	$3236, %edi
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1154:
	addl	$4, %ebx
	cmpl	%ebx, %edi
	je	L1156
L1155:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1156
	cmpl	$4919, 12(%eax)
	jne	L1154
	movl	%esi, 12(%esp)
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC113, (%esp)
	call	_fwrite
	movl	(%ebx), %eax
	movl	(%eax), %edx
	movl	%edx, (%esp)
	movl	%edx, -216(%ebp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-216(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	%esi, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC114, (%esp)
	call	_fwrite
	movl	(%ebx), %eax
	movl	8(%eax), %edx
	movl	%edx, (%esp)
	movl	%edx, -216(%ebp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	-216(%ebp), %edx
	movl	%edx, (%esp)
	call	_fwrite
	movl	%esi, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC115, (%esp)
	call	_fwrite
	jmp	L1154
L1156:
	movl	_osd, %ecx
	xorl	%ebx, %ebx
	movl	1176(%ecx), %eax
	testl	%eax, %eax
	jle	L1153
	.p2align 4
	.p2align 3
L1152:
	movl	%ebx, %eax
	sall	$4, %eax
	addl	1180(%ecx), %eax
	movl	(%eax), %edx
	movl	12(%edx), %edi
	testl	$256, %edi
	jne	L1157
	movl	%ecx, -216(%ebp)
	movl	%edx, -224(%ebp)
	call	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0
	movl	-216(%ebp), %ecx
	testl	%eax, %eax
	je	L1157
	andl	$63, %edi
	movl	-224(%ebp), %edx
	jmp	*L1160(,%edi,4)
	.section .rdata,"dr"
	.align 4
L1160:
	.long	L1159
	.long	L1164
	.long	L1162
	.long	L1159
	.long	L1163
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1162
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1161
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.long	L1159
	.text
L1162:
	movl	(%edx), %edi
	movl	%edx, -216(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	-216(%ebp), %edx
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	$LC117, 8(%esp)
	movl	%eax, 12(%esp)
L1197:
	leal	-208(%ebp), %edi
	movl	$64, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
L1196:
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	_osd, %ecx
	.p2align 4
	.p2align 3
L1157:
	addl	$1, %ebx
	cmpl	1176(%ecx), %ebx
	jl	L1152
L1153:
	movl	%esi, (%esp)
	call	_fclose
	movl	$LC105, 4(%esp)
	movl	$_setupfilename, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L1165
	movl	$LC120, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1168
L1167:
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	$LC123, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1168
L1165:
	movl	-220(%ebp), %eax
	movl	$LC121, (%esp)
	movl	%eax, 4(%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1168
L1164:
	movl	(%edx), %edi
	movl	%edx, -216(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	-216(%ebp), %edx
	movl	8(%edx), %eax
	flds	(%eax)
	fstpl	12(%esp)
L1198:
	leal	-208(%ebp), %edi
	movl	$LC116, 8(%esp)
	movl	$64, 4(%esp)
	movl	%edi, (%esp)
	call	_snprintf
	jmp	L1196
L1159:
	movl	(%edx), %edi
	movl	%edx, -216(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	-216(%ebp), %edx
	movl	8(%edx), %eax
	fldl	(%eax)
	fstpl	12(%esp)
	jmp	L1198
L1161:
	movl	8(%edx), %eax
	testl	%eax, %eax
	je	L1157
	cmpb	$0, (%eax)
	je	L1157
	movl	(%edx), %edi
	movl	%edx, -216(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	%edi, (%esp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	call	_fwrite
	movl	%esi, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC119, (%esp)
	call	_fwrite
	movl	-216(%ebp), %edx
	movl	8(%edx), %edi
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	%esi, 12(%esp)
	movl	$2, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC115, (%esp)
	call	_fwrite
	movl	_osd, %ecx
	jmp	L1157
L1163:
	movl	(%edx), %edi
	movl	%edx, -216(%ebp)
	movl	%edi, (%esp)
	call	_strlen
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	_fwrite
	movl	-216(%ebp), %edx
	movl	8(%edx), %eax
	movl	(%eax), %eax
	movl	$LC118, 8(%esp)
	movl	%eax, 12(%esp)
	jmp	L1197
L1146:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__Z14SetSpriteExtrav
	.def	__Z14SetSpriteExtrav;	.scl	2;	.type	32;	.endef
__Z14SetSpriteExtrav:
LFB114:
	.cfi_startproc
	movl	_sprite, %ecx
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
	leal	720896(%ecx), %edi
	movl	$30, %ebx
	jmp	L1204
	.p2align 4,,10
	.p2align 3
L1201:
	movl	%ebx, %eax
	mull	%esi
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 30(%ecx)
L1202:
	cmpw	$-1, 42(%ecx)
	jne	L1203
	leal	12(%ebx), %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 42(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$2, 42(%ecx)
L1203:
	addl	$44, %ecx
	addl	$44, %ebx
	cmpl	%edi, %ecx
	je	L1211
L1204:
	cmpw	$2307, 14(%ecx)
	jne	L1201
	cmpw	$-1, 30(%ecx)
	jne	L1202
	movl	%ebx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 30(%ecx)
	jmp	L1202
L1211:
	movswl	_numwalls, %esi
	cmpl	_loaded_numwalls, %esi
	je	L1205
	testl	%esi, %esi
	jle	L1205
	movl	%esi, %ebx
	movl	_wall, %edx
	movl	$30, %eax
	sall	$5, %ebx
	addl	$30, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1207:
	cmpw	$0, (%edx,%eax)
	je	L1206
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax)
L1206:
	addl	$32, %eax
	cmpl	%ebx, %eax
	jne	L1207
L1205:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	%esi, _loaded_numwalls
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC124:
	.ascii "%d\0"
LC125:
	.ascii "Ceiling Relative OFF\0"
LC126:
	.ascii "Ceiling Relative ON\0"
LC127:
	.ascii "Floor Relative OFF\0"
LC128:
	.ascii "Floor Relative ON\0"
LC129:
	.ascii "Put Graphic ONLY\0"
LC130:
	.ascii "(1) Plax Set \0"
LC131:
	.ascii "(2) Plax Adjust \0"
LC132:
	.ascii "(3) Shade Adjust \0"
LC133:
	.ascii "(4) Visibility \0"
LC134:
	.ascii "%d Plax Sky shades set.\0"
LC135:
	.ascii "%d Plax Sky shades adjusted.\0"
LC136:
	.ascii "%d Vis adjusted.\0"
	.text
	.p2align 4
	.globl	_ExtCheckKeys
	.def	_ExtCheckKeys;	.scl	2;	.type	32;	.endef
_ExtCheckKeys:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movzwl	_searchstat, %eax
	movl	_sector, %ebx
	cmpw	$1, %ax
	je	L1590
	cmpw	$2, %ax
	je	L1591
L1215:
	call	__Z14SetSpriteExtrav
	movl	_g_visibility, %eax
	addl	$1, _sectorchanged
	movw	%ax, 38(%ebx)
	cmpl	$200, _qsetmode
	je	L1592
L1216:
	movswl	_pointhighlight, %ebx
	movswl	_searchstat, %eax
	movswl	_searchsector, %ecx
	movswl	_searchwall, %edx
	movl	%ebx, (%esp)
	call	__Z8MoreKeysssss
	movl	_qsetmode, %eax
	cmpl	$200, %eax
	je	L1593
	cmpb	$0, _keystatus+40
	je	L1355
	cmpb	$0, _keystatus+50
	jne	L1356
	cmpb	$0, _keystatus+47
	je	L1594
L1357:
	movzwl	_CaptionMode, %edi
	xorl	%ecx, %ecx
	movb	$0, _keystatus+47
	leal	1(%edi), %edx
	cmpw	$4, %dx
	cmovg	%ecx, %edx
	movw	%dx, _CaptionMode
L1406:
	cmpb	$0, _keystatus+32
	jne	L1595
L1354:
	cmpl	$200, %eax
	jne	L1355
L1409:
	movl	_rendmode, %eax
	movl	%eax, 24(%esp)
	cmpl	$2, %eax
	jle	L1589
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1589
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1438
	je	L1417
L1438:
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 52
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	cmpl	%eax, _gl
	jne	L1589
L1417:
	movss	LC137, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1419
	je	L1589
L1419:
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movss	%xmm0, 4(%esp)
	movss	%xmm0, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
L1589:
	movl	_xdim, %ebp
	movl	_searchy, %edi
	movl	_searchx, %esi
L1414:
	movl	_totalclock, %eax
	cmpl	$640, %ebp
	setle	28(%esp)
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_editorcolors, %ebx
	subb	_whitecol, %bl
	movl	%eax, %edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
/APP
 # 496 "source/build/include/editor.h" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	sarl	$3, %ecx
	movl	%ecx, %ebx
	movl	$3, %ecx
	subl	%ebx, %ecx
	movl	$1, %ebx
	sarl	%cl, %edx
	xorl	%eax, %edx
	movzbl	_whitecol, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$640, %ebp
	setg	%dl
	movzbl	%al, %ebp
	movl	%esi, %eax
	leal	4(,%edx,4), %ecx
	movl	%edi, %edx
	movl	%ecx, %esi
	.p2align 4
	.p2align 3
L1421:
	addl	%ebx, %eax
	movl	%ebp, %ecx
	call	_plotpixel
	movl	_searchx, %eax
	movl	_searchy, %edx
	movl	%ebp, %ecx
	subl	%ebx, %eax
	call	_plotpixel
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebp, %ecx
	subl	%ebx, %edx
	call	_plotpixel
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebp, %ecx
	addl	%ebx, %edx
	addl	$1, %ebx
	call	_plotpixel
	movl	_searchy, %edx
	movl	_searchx, %eax
	cmpl	%ebx, %esi
	jne	L1421
	movl	%eax, %esi
	movl	_totalclock, %eax
	movl	%edx, %edi
	sall	$4, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$10, %ax
	cwtl
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movzbl	_whitecol, %ebx
	subb	_editorcolors, %bl
	movl	%eax, %edx
	movsbl	%bl, %ebx
	movl	%ebx, %eax
/APP
 # 496 "source/build/include/editor.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
/APP
 # 496 "source/build/include/editor.h" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	movzbl	28(%esp), %ecx
	movl	$8, %ebx
	sarl	$3, %ebp
	sarl	%cl, %ebx
	movl	$3, %ecx
	subl	%ebp, %ecx
	sarl	%cl, %edx
	xorl	%eax, %edx
	addb	_editorcolors, %dl
	leal	(%ebx,%esi), %eax
	movzbl	%dl, %ebp
	movl	%edi, %edx
	movl	%ebp, %ecx
	call	_plotpixel
	movl	_searchx, %eax
	movl	_searchy, %edx
	movl	%ebp, %ecx
	subl	%ebx, %eax
	call	_plotpixel
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebp, %ecx
	subl	%ebx, %edx
	call	_plotpixel
	addl	_searchy, %ebx
	movl	_searchx, %eax
	movl	%ebp, %ecx
	movl	%ebx, %edx
	call	_plotpixel
	movl	_searchy, %edx
	movl	_searchx, %eax
	movl	%ebp, %ecx
	call	_plotpixel
	cmpl	$2, _rendmode
	jle	L1422
	movl	_nofog, %eax
	testl	%eax, %eax
	je	L1596
L1423:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1422
L1424:
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L1441
	je	L1422
L1441:
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	.p2align 4
	.p2align 3
L1422:
	movl	24(%esp), %eax
	movl	%eax, _rendmode
L1212:
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
L1594:
	.cfi_restore_state
	cmpb	$0, _keystatus+32
	jne	L1597
	.p2align 4
	.p2align 3
L1355:
	movl	_m32_2d3dmode, %edx
	testl	%edx, %edx
	je	L1212
	movswl	_cursectnum, %eax
	cmpl	$4095, %eax
	ja	L1212
	movl	_m32_2d3d, %ecx
	movl	_searchx, %esi
	cmpl	%esi, %ecx
	jge	L1212
	movl	_xdim, %ebp
	movl	_m32_2d3dsize, %ebx
	movl	%ebp, %eax
	cltd
	idivl	%ebx
	addl	%ecx, %eax
	cmpl	%eax, %esi
	jge	L1212
	movl	_m32_2d3d+4, %ecx
	movl	_searchy, %edi
	cmpl	%edi, %ecx
	jge	L1212
	movl	_ydim, %eax
	cltd
	idivl	%ebx
	addl	%ecx, %eax
	cmpl	%eax, %edi
	jge	L1212
	movl	_rendmode, %eax
	movl	$0, _rendmode
	movl	%eax, 24(%esp)
	jmp	L1414
	.p2align 4,,10
	.p2align 3
L1591:
	movswl	_searchsector, %eax
	leal	(%eax,%eax,4), %eax
	cmpw	$2356, 24(%ebx,%eax,8)
	jne	L1215
L1214:
	movzwl	_bak_searchsector, %eax
	movw	%ax, _searchsector
	movzwl	_bak_searchwall, %eax
	movw	%ax, _searchwall
	movzwl	_bak_searchstat, %eax
	movw	%ax, _searchstat
	jmp	L1215
	.p2align 4,,10
	.p2align 3
L1590:
	movswl	_searchsector, %eax
	leal	(%eax,%eax,4), %eax
	cmpw	$2356, 16(%ebx,%eax,8)
	jne	L1215
	jmp	L1214
	.p2align 4,,10
	.p2align 3
L1592:
	movl	__ZZ12ExtCheckKeysE8framecnt, %eax
	movl	_totalclock, %ebx
	movl	__ZZ12ExtCheckKeysE8frameval(,%eax,4), %edx
	cmpl	%ebx, %edx
	jne	L1598
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, __ZZ12ExtCheckKeysE8framecnt
	jmp	L1216
	.p2align 4,,10
	.p2align 3
L1593:
	cmpb	$0, _keystatus+157
	je	L1219
	cmpb	$0, _keystatus+201
	je	L1220
	movzwl	_searchstat, %eax
	cmpw	$1, %ax
	je	L1221
	cmpw	$2, %ax
	jne	L1220
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %ebx
	leal	8(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	subl	$8192, 8(%ecx,%ebx,8)
	movzbl	_keystatus+157, %eax
	movb	$0, _keystatus+201
L1223:
	testb	%al, %al
	je	L1219
L1220:
	cmpb	$0, _keystatus+209
	je	L1219
	movzwl	_searchstat, %eax
	cmpw	$1, %ax
	je	L1224
	cmpw	$2, %ax
	jne	L1219
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %ebx
	leal	8(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	addl	$8192, 8(%ecx,%ebx,8)
	movb	$0, _keystatus+209
	.p2align 4
	.p2align 3
L1219:
	movzbl	_keystatus+40, %eax
	cmpb	$0, _keystatus+28
	je	L1599
L1226:
	testb	%al, %al
	jne	L1227
L1228:
	cmpb	$0, _keystatus+39
	jne	L1427
	cmpb	$0, _keystatus+40
	jne	L1428
	.p2align 4
	.p2align 3
L1338:
	movzwl	__ZL12messagedelay, %eax
	testw	%ax, %ax
	je	L1347
	movl	$1, 20(%esp)
	subl	$1, %eax
	movl	$__ZL10messagebuf, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$8, 4(%esp)
	movl	$4, (%esp)
	movw	%ax, __ZL12messagedelay
	call	_printext256
L1347:
	cmpb	$0, _keystatus+17
	je	L1348
	movb	$0, _keystatus+17
	cmpw	$4, _searchstat
	ja	L1348
	movzwl	_searchstat, %eax
	jmp	*L1350(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1350:
	.long	L1349
	.long	L1353
	.long	L1352
	.long	L1351
	.long	L1349
	.text
L1598:
	movl	%ebx, %ecx
	movl	$1920, %eax
	movl	$LC124, 4(%esp)
	subl	%edx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	idivl	%ecx
	addl	$3, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$1, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_printext256
	movl	__ZZ12ExtCheckKeysE8framecnt, %eax
	movl	%ebx, __ZZ12ExtCheckKeysE8frameval(,%eax,4)
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, __ZZ12ExtCheckKeysE8framecnt
	jmp	L1216
L1599:
	testb	%al, %al
	jne	L1227
	cmpb	$0, _keystatus+19
	je	L1228
	movzwl	_searchstat, %eax
	cmpw	$1, %ax
	je	L1229
	cmpw	$2, %ax
	jne	L1228
	movswl	_searchsector, %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$65, 14(%eax)
	movl	$0, 8(%esp)
	je	L1232
	movl	$LC127, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %eax
	movw	%ax, __ZL12messagedelay
	movzbl	_keystatus+40, %eax
	jmp	L1226
	.p2align 4,,10
	.p2align 3
L1248:
	cmpb	$0, _keystatus+40
	je	L1228
L1245:
	cmpb	$0, _keystatus+28
	jne	L1600
	cmpb	$0, _keystatus+39
	jne	L1427
L1428:
	cmpb	$0, _keystatus+46
	je	L1279
	movb	$0, _keystatus+46
	cmpw	$4, _searchstat
	ja	L1280
	movzwl	_searchstat, %eax
	jmp	*L1282(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1282:
	.long	L1281
	.long	L1285
	.long	L1284
	.long	L1283
	.long	L1281
	.text
L1351:
	movswl	_searchwall, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	xorl	%ebp, %ebp
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$14, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%bp, 14(%ecx)
L1348:
	call	_editinput
	call	_editinput
	movl	_qsetmode, %eax
	jmp	L1354
L1356:
	movb	$0, _keystatus+50
	call	_clearmidstatbar16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC130, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC131, 16(%esp)
	addl	$40, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC132, 16(%esp)
	addl	$48, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$LC133, 16(%esp)
	addl	$56, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	xorl	%eax, %eax
L1359:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1359
	.p2align 4
	.p2align 3
L1361:
	movl	$_keystatus, %eax
	jmp	L1363
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1602:
	addl	$1, %eax
	cmpl	$_keystatus+256, %eax
	je	L1601
L1363:
	cmpb	$0, (%eax)
	je	L1602
	movl	_qsetmode, %edx
	cmpl	$_keystatus+2, %eax
	je	L1603
	cmpl	$_keystatus+3, %eax
	je	L1604
	cmpl	$_keystatus+4, %eax
	je	L1605
	cmpl	$_keystatus+5, %eax
	je	L1606
L1367:
	movl	%edx, %eax
	cmpb	$0, _keystatus+40
	je	L1354
	cmpb	$0, _keystatus+47
	je	L1406
	jmp	L1357
	.p2align 4,,10
	.p2align 3
L1601:
	call	_handleevents
	jmp	L1361
L1427:
	cmpb	$0, _keystatus+31
	je	L1265
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+31
	cmpw	$3, %ax
	je	L1266
	jg	L1267
	testw	%ax, %ax
	je	L1268
	leal	-1(%eax), %edx
	cmpw	$1, %dx
	ja	L1265
	movl	_sector, %ecx
	cmpw	$2, %ax
	je	L1433
	movl	$20, %ebx
	movl	$-858993459, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1270:
	cmpw	$0, -4(%ecx,%ebx)
	jne	L1273
	movl	%ebx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	$0, (%ecx,%ebx)
L1273:
	addl	$40, %ebx
	cmpl	$163860, %ebx
	jne	L1270
L1265:
	cmpb	$0, _keystatus+40
	jne	L1428
L1278:
	cmpb	$0, _keystatus+39
	je	L1338
	cmpb	$0, _keystatus+25
	je	L1338
	movzwl	_highlightsectorcnt, %eax
	movb	$0, _keystatus+25
	testw	%ax, %ax
	jle	L1338
	movl	_sector, %edi
	movl	_wall, %ecx
	movswl	%ax, %ebp
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1346:
	movswl	_highlightsector(%esi,%esi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %ebx
	cmpb	$0, 21(%ebx)
	je	L1342
	leal	20(%ebx), %edx
	movl	$-858993459, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	$127, 20(%ebx)
	cmpb	$0, 21(%ebx)
	je	L1342
	leal	28(%ebx), %edx
	movl	$-858993459, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	$127, 28(%ebx)
L1342:
	movzwl	(%ebx), %eax
	movzwl	2(%ebx), %edx
	leal	(%eax,%edx), %ebx
	cmpw	%bx, %ax
	jge	L1343
	subl	$1, %edx
	movswl	%ax, %ebx
	movzwl	%dx, %edx
	movl	%ebx, %eax
	addl	%ebx, %edx
	sall	$5, %eax
	sall	$5, %edx
	addl	$20, %eax
	addl	$52, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1345:
	cmpb	$0, 1(%ecx,%eax)
	je	L1344
	movl	%eax, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movb	$127, (%ecx,%eax)
L1344:
	addl	$32, %eax
	cmpl	%edx, %eax
	jne	L1345
L1343:
	addl	$1, %esi
	cmpl	%esi, %ebp
	jne	L1346
	jmp	L1338
L1227:
	cmpb	$0, _keystatus+78
	je	L1233
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+78
	cmpw	$1, %ax
	je	L1234
	cmpw	$2, %ax
	jne	L1236
	movswl	_searchsector, %eax
	movl	_sector, %ecx
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %esi
	movzbl	28(%esi), %eax
	testb	$1, 12(%esi)
	jne	L1241
	movl	$1, %edi
	cmpb	$-128, %al
	je	L1239
L1242:
	leal	28(%esi), %eax
	movl	$-858993459, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	subb	$1, 28(%esi)
L1240:
	movl	%edi, %eax
	testb	%al, %al
	je	L1236
L1239:
	movl	_sprite, %esi
	movl	$16, %ecx
	movl	$-1171354717, %edi
	jmp	L1244
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1243:
	addl	$44, %ecx
	cmpl	$720912, %ecx
	je	L1236
L1244:
	cmpw	%bx, 8(%esi,%ecx)
	jne	L1243
	cmpb	$127, (%esi,%ecx)
	je	L1243
	movl	%ecx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$1, (%esi,%ecx)
	jmp	L1243
L1236:
	cmpb	$0, _keystatus+40
	je	L1228
L1233:
	cmpb	$0, _keystatus+74
	je	L1245
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+74
	cmpw	$1, %ax
	je	L1246
	cmpw	$2, %ax
	jne	L1248
	movswl	_searchsector, %eax
	movl	_sector, %ecx
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %esi
	movzbl	28(%esi), %eax
	testb	$1, 12(%esi)
	jne	L1253
	movl	$1, %edi
	cmpb	$127, %al
	je	L1251
L1254:
	leal	28(%esi), %eax
	movl	$-858993459, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	addb	$1, 28(%esi)
L1252:
	movl	%edi, %eax
	testb	%al, %al
	je	L1248
L1251:
	movl	_sprite, %esi
	movl	$16, %ecx
	movl	$-1171354717, %edi
	jmp	L1256
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1255:
	addl	$44, %ecx
	cmpl	$720912, %ecx
	je	L1248
L1256:
	cmpw	%bx, 8(%esi,%ecx)
	jne	L1255
	cmpb	$-128, (%esi,%ecx)
	je	L1255
	movl	%ecx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subb	$1, (%esi,%ecx)
	jmp	L1255
L1281:
	movswl	_searchwall, %eax
	movl	_wall, %edx
	sall	$5, %eax
	movzwl	16(%edx,%eax), %esi
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L1434
	movl	%eax, 24(%esp)
	movl	_sector, %ecx
	xorl	%edi, %edi
L1287:
	movswl	_highlightsector(%edi,%edi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movswl	(%eax), %ebp
	movzwl	2(%eax), %ebx
	leal	0(%ebp,%ebx), %eax
	cmpw	%ax, %bp
	jge	L1289
	subl	$1, %ebx
	movl	%ebp, %eax
	movzwl	%bx, %ebx
	sall	$5, %eax
	addl	%ebp, %ebx
	addl	$16, %eax
	sall	$5, %ebx
	addl	$48, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1291:
	cmpw	(%edx,%eax), %si
	jne	L1290
	movl	%eax, %ebp
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	xorl	%ebp, %ebp
	movw	%bp, (%edx,%eax)
L1290:
	addl	$32, %eax
	cmpl	%ebx, %eax
	jne	L1291
L1289:
	addl	$1, %edi
	cmpl	24(%esp), %edi
	jne	L1287
L1280:
	cmpb	$0, _keystatus+40
	je	L1278
L1279:
	cmpb	$0, _keystatus+20
	je	L1303
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+20
	cmpw	$3, %ax
	je	L1304
	jg	L1305
	testw	%ax, %ax
	je	L1306
	subl	$1, %eax
	cmpw	$1, %ax
	ja	L1307
	movswl	_searchsector, %eax
	movl	$65536, %ecx
	movl	_sector, %ebx
	movl	$1734440047, __ZL7tempbuf.lto_priv.2+8
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1814065775, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$2112103, __ZL7tempbuf.lto_priv.2+11
	leal	(%ebx,%eax,8), %eax
	movswl	34(%eax), %edx
	movl	$1, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	__getnumber256.constprop.0
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	movl	%eax, %esi
	leal	(%ebx,%ebx,4), %ebx
	leal	34(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movw	%si, 34(%ecx,%ebx,8)
L1307:
	cmpb	$0, _keystatus+40
	je	L1278
L1303:
	cmpb	$0, _keystatus+35
	je	L1308
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+35
	cmpw	$3, %ax
	je	L1309
	jg	L1310
	testw	%ax, %ax
	je	L1311
	subl	$1, %eax
	cmpw	$1, %ax
	ja	L1312
	movswl	_searchsector, %eax
	movl	$65536, %ecx
	movl	_sector, %edx
	movl	$1734440041, __ZL7tempbuf.lto_priv.2+8
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1746956911, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$2112103, __ZL7tempbuf.lto_priv.2+11
	leal	(%edx,%eax,8), %eax
	movswl	36(%eax), %edx
	movl	$1, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	__getnumber256.constprop.0
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	movl	%eax, %esi
	leal	(%ebx,%ebx,4), %ebx
	leal	36(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movw	%si, 36(%ecx,%ebx,8)
L1312:
	cmpb	$0, _keystatus+40
	je	L1278
L1308:
	cmpb	$0, _keystatus+31
	je	L1313
	movzwl	_searchstat, %eax
	movb	$0, _keystatus+31
	cmpw	$3, %ax
	je	L1314
	jg	L1315
	testw	%ax, %ax
	je	L1316
	leal	-1(%eax), %edx
	cmpw	$1, %dx
	ja	L1317
	movl	$1701077352, __ZL7tempbuf.lto_priv.2+8
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1931506287, __ZL7tempbuf.lto_priv.2+4
	movl	$2112101, __ZL7tempbuf.lto_priv.2+11
	cmpw	$1, %ax
	je	L1318
	movl	_sector, %ecx
	movswl	_searchsector, %ebx
L1319:
	leal	(%ebx,%ebx,4), %eax
	movsbl	28(%ecx,%eax,8), %edx
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	$-858993459, %edx
	movl	%eax, %ebx
	movswl	_searchsector, %eax
	leal	(%eax,%eax,4), %ecx
	leal	28(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 28(%eax,%ecx,8)
L1317:
	cmpb	$0, _keystatus+40
	je	L1278
L1313:
	cmpb	$0, _keystatus+47
	je	L1320
	movswl	_searchstat, %eax
	movb	$0, _keystatus+47
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	L1607
L1320:
	cmpb	$0, _keystatus+45
	je	L1321
	movb	$0, _keystatus+45
	cmpb	$0, _bVoxelsOn
	sete	_bVoxelsOn
L1321:
	cmpb	$0, _keystatus+44
	je	L1322
	movb	$0, _keystatus+44
	cmpb	$0, _bSpinBobVoxels
	sete	_bSpinBobVoxels
L1322:
	cmpb	$0, _keystatus+30
	je	L1323
	movb	$0, _keystatus+30
	cmpb	$0, _bAutoSize
	sete	_bAutoSize
L1323:
	cmpb	$0, _keystatus+50
	jne	L1608
L1324:
	cmpb	$0, _keystatus+25
	je	L1338
	movswl	_highlightsectorcnt, %eax
	movb	$0, _keystatus+25
	testw	%ax, %ax
	jle	L1338
	movl	_wall, %ecx
	movl	_sector, %edi
	movl	%eax, 24(%esp)
	xorl	%esi, %esi
	leal	21(%ecx), %ebp
	.p2align 4
	.p2align 3
L1341:
	movswl	_highlightsector(%esi,%esi), %eax
	movl	$-858993459, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %ebx
	leal	21(,%eax,8), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	29(%ebx), %edx
	subl	%edi, %edx
	movb	$0, 21(%ebx)
	movl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzwl	(%ebx), %eax
	movzwl	2(%ebx), %edx
	movb	$0, 29(%ebx)
	leal	(%eax,%edx), %ebx
	cmpw	%bx, %ax
	jge	L1339
	subl	$1, %edx
	movswl	%ax, %ebx
	movzwl	%dx, %edx
	movl	%ebx, %eax
	addl	%ebx, %edx
	sall	$5, %eax
	sall	$5, %edx
	addl	%ebp, %eax
	leal	53(%ecx,%edx), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L1340:
	movl	%eax, %edx
	addl	$32, %eax
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movb	$0, -32(%eax)
	cmpl	%ebx, %eax
	jne	L1340
L1339:
	addl	$1, %esi
	cmpl	24(%esp), %esi
	jne	L1341
	jmp	L1278
L1596:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L1422
	movss	LC137, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L1440
	je	L1424
L1440:
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movss	%xmm0, 4(%esp)
	movss	%xmm0, __ZL19polymost1FogEnabled.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 52
	subl	$8, %esp
	.cfi_def_cfa_offset 60
	jmp	L1423
L1595:
	movb	$0, _keystatus+32
	cmpl	$200, %eax
	je	L1409
L1358:
	cmpw	$0, _highlightcnt
	js	L1355
	movl	$1, (%esp)
	movl	$32, %ecx
	xorl	%edx, %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movw	%cx, __ZL7tempbuf.lto_priv.2+16
	movl	$65536, %ecx
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1126196596, __ZL7tempbuf.lto_priv.2+4
	movl	$1685088620, __ZL7tempbuf.lto_priv.2+8
	movl	$980710249, __ZL7tempbuf.lto_priv.2+12
	call	__getnumber16.constprop.0
	movl	%eax, 24(%esp)
	movswl	_highlightcnt, %eax
	testw	%ax, %ax
	jle	L1410
	movl	_sprite, %ebp
	movl	$_highlight, %ebx
	movl	$-1171354717, %edi
	leal	_highlight(%eax,%eax), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1412:
	movzwl	(%ebx), %eax
	testb	$64, %ah
	je	L1411
	andb	$-65, %ah
	movw	%ax, (%ebx)
	cwtl
	imull	$44, %eax, %ecx
	leal	18(%ecx), %eax
	mull	%edi
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebp,%ecx)
L1411:
	addl	$2, %ebx
	cmpl	%ebx, %esi
	jne	L1412
L1410:
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	call	_clearmidstatbar16
	movl	_qsetmode, %eax
	jmp	L1354
L1597:
	movb	$0, _keystatus+32
	jmp	L1358
L1349:
	movswl	_searchwall, %eax
	movl	_wall, %edx
	xorl	%esi, %esi
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 16(%edx)
	jmp	L1348
L1605:
	movb	$0, _keystatus+4
	cmpl	$200, %edx
	je	L1366
	movl	$1, (%esp)
	xorl	%edx, %edx
	movl	$32, %esi
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1969906753, __ZL7tempbuf.lto_priv.2
	movl	$1629516915, __ZL7tempbuf.lto_priv.2+4
	movl	$1853189997, __ZL7tempbuf.lto_priv.2+8
	movl	$724050036, __ZL7tempbuf.lto_priv.2+12
	movl	$808464433, __ZL7tempbuf.lto_priv.2+16
	movl	$1868963888, __ZL7tempbuf.lto_priv.2+20
	movl	$1701716082, __ZL7tempbuf.lto_priv.2+24
	movl	$1769234791, __ZL7tempbuf.lto_priv.2+28
	movl	$975791478, __ZL7tempbuf.lto_priv.2+32
	movw	%si, __ZL7tempbuf.lto_priv.2+36
	call	__getnumber16.constprop.0
	movl	_qsetmode, %edx
	testw	%ax, %ax
	je	L1367
	movl	$10000, %ebx
	movswl	_highlightsectorcnt, %edx
	subl	%eax, %ebx
	cmpw	$10001, %ax
	cmovl	%eax, %ebx
	testw	%dx, %dx
	js	L1609
	movl	_wall, %edi
	je	L1381
	movl	_sector, %eax
	movl	$_highlightsector, 24(%esp)
	movl	_sprite, %esi
	movl	%eax, 28(%esp)
	leal	_highlightsector(%edx,%edx), %eax
	movl	%eax, 32(%esp)
L1388:
	movl	24(%esp), %ebp
	movswl	0(%ebp), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	28(,%ecx,8), %edx
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%bl, 28(%eax,%ecx,8)
	movswl	0(%ebp), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	20(,%ecx,8), %edx
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%bl, 20(%eax,%ecx,8)
	movswl	0(%ebp), %eax
	movzwl	_headspritesect(%eax,%eax), %ebp
	cmpw	$-1, %bp
	je	L1385
	.p2align 6
	.p2align 4
	.p2align 3
L1382:
	movswl	%bp, %ecx
	movl	$-1171354717, %eax
	movzwl	_nextspritesect(%ecx,%ecx), %ebp
	imull	$44, %ecx, %ecx
	leal	16(%ecx), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	%bl, 16(%esi,%ecx)
	cmpw	$-1, %bp
	jne	L1382
	movl	24(%esp), %eax
	movswl	(%eax), %eax
L1385:
	movl	28(%esp), %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	(%eax), %edx
	movzwl	2(%eax), %ecx
	addl	%edx, %ecx
	subl	$1, %ecx
	cmpw	%cx, %dx
	jg	L1384
	.p2align 4
	.p2align 3
L1383:
	movswl	%dx, %eax
	sall	$5, %eax
	addl	%edi, %eax
	testb	$1, 30(%eax)
	jne	L1386
	leal	30(%eax), %ebp
	subl	%edi, %ebp
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	leal	20(%eax), %ebp
	subl	%edi, %ebp
	orw	$1, 30(%eax)
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	addb	%bl, 20(%eax)
L1386:
	movswl	10(%eax), %eax
	cmpw	$16383, %ax
	ja	L1387
	sall	$5, %eax
	addl	%edi, %eax
	testb	$1, 30(%eax)
	jne	L1387
	leal	30(%eax), %ebp
	subl	%edi, %ebp
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	leal	20(%eax), %ebp
	subl	%edi, %ebp
	orw	$1, 30(%eax)
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	addb	%bl, 20(%eax)
L1387:
	addl	$1, %edx
	cmpw	%dx, %cx
	jge	L1383
L1384:
	addl	$2, 24(%esp)
	movl	24(%esp), %eax
	cmpl	%eax, 32(%esp)
	jne	L1388
L1381:
	movswl	%dx, %eax
	movl	$16384, %edx
	sall	$5, %eax
	leal	(%edi,%eax), %ecx
	shrl	$5, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1389:
	addl	$1, _wallchanged(,%eax,4)
	andw	$-2, 30(%ecx)
	subw	$1, %dx
	jne	L1389
L1390:
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	call	_clearmidstatbar16
	movl	_qsetmode, %edx
	jmp	L1367
L1353:
	movswl	_searchsector, %eax
	movl	$-858993459, %edx
	xorl	%ebx, %ebx
	leal	(%eax,%eax,4), %ecx
	leal	16(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%bx, 16(%eax,%ecx,8)
	jmp	L1348
L1352:
	movswl	_searchsector, %eax
	movl	$-858993459, %edx
	leal	(%eax,%eax,4), %ecx
	leal	24(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movw	%dx, 24(%eax,%ecx,8)
	jmp	L1348
L1221:
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %ebx
	leal	4(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	subl	$8192, 4(%ecx,%ebx,8)
	movzbl	_keystatus+157, %eax
	movb	$0, _keystatus+201
	jmp	L1223
L1246:
	movswl	_searchsector, %eax
	movl	_sector, %ecx
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %esi
	movzbl	20(%esi), %eax
	testb	$1, 12(%esi)
	je	L1249
	movl	$1, %edi
	cmpb	$127, %al
	je	L1251
L1250:
	leal	20(%esi), %eax
	movl	$-858993459, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	addb	$1, 20(%esi)
	jmp	L1252
L1224:
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %ebx
	leal	4(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	addl	$8192, 4(%ecx,%ebx,8)
	movb	$0, _keystatus+209
	jmp	L1219
L1234:
	movswl	_searchsector, %eax
	movl	_sector, %ecx
	movl	%eax, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %esi
	movzbl	20(%esi), %eax
	testb	$1, 12(%esi)
	je	L1237
	movl	$1, %edi
	cmpb	$-128, %al
	je	L1239
L1238:
	leal	20(%esi), %eax
	movl	$-858993459, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	subb	$1, 20(%esi)
	jmp	L1240
L1266:
	movl	_sprite, %ebx
	movl	$16, %ecx
	movl	$-1171354717, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1277:
	cmpw	$0, -2(%ebx,%ecx)
	jne	L1276
	movl	%ecx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, (%ebx,%ecx)
L1276:
	addl	$44, %ecx
	cmpl	$720912, %ecx
	jne	L1277
	jmp	L1265
L1309:
	movswl	_searchwall, %eax
	movl	$65536, %ecx
	movl	$1734440041, __ZL7tempbuf.lto_priv.2+8
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1746953588, __ZL7tempbuf.lto_priv.2+4
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$2112103, __ZL7tempbuf.lto_priv.2+11
	movswl	40(%eax), %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movl	%eax, %ebx
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$40, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%bx, 40(%ecx)
	jmp	L1312
L1304:
	movswl	_searchwall, %eax
	movl	$65536, %ecx
	movl	$1734440047, __ZL7tempbuf.lto_priv.2+8
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movl	$1814062452, __ZL7tempbuf.lto_priv.2+4
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$2112103, __ZL7tempbuf.lto_priv.2+11
	movswl	38(%eax), %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movl	%eax, %ebx
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$38, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%bx, 38(%ecx)
	cmpw	$2307, 14(%ecx)
	jne	L1307
	cmpl	$200, _qsetmode
	je	L1307
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	xorl	%ecx, %ecx
	movw	%cx, _siNextEndTag
	movl	%eax, _lastpm16time
	call	__printmessage16
	movl	_totalclock, %eax
	movl	$LC7, (%esp)
	movl	%eax, _lastpm16time
	movswl	_siNextEndTag, %eax
	movl	%eax, 4(%esp)
	call	__printmessage16
	jmp	L1307
L1314:
	movswl	_searchwall, %eax
	movl	$65536, %ecx
	movl	$1701077352, __ZL7tempbuf.lto_priv.2+8
	movl	$1931502964, __ZL7tempbuf.lto_priv.2+4
	movl	$2112101, __ZL7tempbuf.lto_priv.2+11
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$1769107539, __ZL7tempbuf.lto_priv.2
	movsbl	16(%eax), %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movl	%eax, %ebx
	movswl	_searchwall, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$16, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movb	%bl, 16(%ecx)
	jmp	L1317
L1607:
	movswl	_searchsector, %eax
	movl	_sector, %edi
	movl	$65536, %ecx
	movl	$2112121, __ZL7tempbuf.lto_priv.2+16
	movl	$1952671059, __ZL7tempbuf.lto_priv.2
	movl	$1981837935, __ZL7tempbuf.lto_priv.2+4
	leal	(%eax,%eax,4), %eax
	movl	$1651077993, __ZL7tempbuf.lto_priv.2+8
	leal	(%edi,%eax,8), %eax
	movl	$1953066089, __ZL7tempbuf.lto_priv.2+12
	movzbl	32(%eax), %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	$-858993459, %edx
	movl	%eax, %ebx
	movswl	_searchsector, %eax
	leal	(%eax,%eax,4), %ecx
	leal	32(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	_sector, %eax
	movb	%bl, 32(%eax,%ecx,8)
	cmpb	$0, _keystatus+40
	jne	L1320
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1284:
	movswl	_searchsector, %ebx
	movl	_sector, %ecx
	leal	(%ebx,%ebx,4), %eax
	movzwl	24(%ecx,%eax,8), %ebx
	movzwl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	jle	L1435
	movswl	%ax, %ebp
	xorl	%esi, %esi
L1298:
	movswl	_highlightsector(%esi,%esi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %edi
	cmpw	24(%edi), %bx
	jne	L1300
	leal	24(%edi), %eax
	movl	$-858993459, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 24(%edi)
L1300:
	addl	$1, %esi
	cmpl	%ebp, %esi
	jne	L1298
	jmp	L1280
L1285:
	movswl	_highlightsectorcnt, %esi
	movl	_sector, %ecx
	testw	%si, %si
	jle	L1292
	xorl	%ebx, %ebx
	movl	$-858993459, %ebp
L1293:
	movswl	_highlightsector(%ebx,%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %edi
	cmpw	$0, 16(%edi)
	jne	L1296
	leal	16(%edi), %eax
	subl	%ecx, %eax
	mull	%ebp
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 16(%edi)
L1296:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jne	L1293
	jmp	L1280
L1283:
	cmpw	$0, _highlightsectorcnt
	jg	L1279
	movswl	_searchwall, %eax
	movl	$14, %ecx
	movl	$-1171354717, %esi
	movl	_sprite, %edi
	imull	$44, %eax, %eax
	movzwl	14(%edi,%eax), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1302:
	cmpw	(%edi,%ecx), %bx
	jne	L1301
	movl	%ecx, %eax
	xorl	%ebp, %ebp
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, (%edi,%ecx)
L1301:
	addl	$44, %ecx
	cmpl	$720910, %ecx
	jne	L1302
	jmp	L1280
L1603:
	movb	$0, _keystatus+2
	cmpl	$200, %edx
	je	L1366
	movl	$1, (%esp)
	xorl	%edx, %edx
	movl	$32, %edi
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$2019650640, __ZL7tempbuf.lto_priv.2
	movl	$2037076768, __ZL7tempbuf.lto_priv.2+4
	movl	$1952805664, __ZL7tempbuf.lto_priv.2+8
	movl	$1634235168, __ZL7tempbuf.lto_priv.2+12
	movl	$1948280164, __ZL7tempbuf.lto_priv.2+16
	movl	$975380591, __ZL7tempbuf.lto_priv.2+20
	movw	%di, __ZL7tempbuf.lto_priv.2+24
	call	__getnumber16.constprop.0
	movl	_qsetmode, %edx
	movl	%eax, %ebp
	testw	%ax, %ax
	je	L1367
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1436
	leal	(%eax,%eax,4), %eax
	movl	_sector, %ebx
	movl	$20, %ecx
	xorl	%esi, %esi
	leal	20(,%eax,8), %edi
L1370:
	testb	$1, -8(%ebx,%ecx)
	je	L1369
	movl	$-858993459, %eax
	addl	$1, %esi
	mull	%ecx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	%al, (%ebx,%ecx)
L1369:
	addl	$40, %ecx
	cmpl	%ecx, %edi
	jne	L1370
L1368:
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	call	_clearmidstatbar16
	movl	%esi, 8(%esp)
	movl	$LC134, 4(%esp)
L1588:
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	movl	_qsetmode, %edx
	jmp	L1367
L1366:
	cmpb	$0, _keystatus+40
	je	L1409
	cmpb	$0, _keystatus+47
	jne	L1437
	cmpb	$0, _keystatus+32
	je	L1409
	movb	$0, _keystatus+32
	jmp	L1409
L1600:
	movl	$0, 20(%esp)
	movl	$LC129, 16(%esp)
	movl	$0, 12(%esp)
	movl	$15, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_printext256
	movb	$0, _keystatus+28
	cmpw	$4, _searchstat
	ja	L1228
	movzwl	_searchstat, %eax
	jmp	*L1259(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1259:
	.long	L1263
	.long	L1262
	.long	L1261
	.long	L1260
	.long	L1258
	.text
L1260:
	movswl	_searchwall, %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	xorl	%esi, %esi
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$14, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 14(%ecx)
	jmp	L1228
L1261:
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	xorl	%edi, %edi
	leal	(%ebx,%ebx,4), %ebx
	leal	24(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movw	%di, 24(%ecx,%ebx,8)
	jmp	L1228
L1262:
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	xorl	%ebp, %ebp
	leal	(%ebx,%ebx,4), %ebx
	leal	16(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movw	%bp, 16(%ecx,%ebx,8)
	jmp	L1228
L1263:
	movswl	_searchwall, %eax
	movl	_wall, %edx
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 16(%edx)
	jmp	L1228
L1258:
	movswl	_searchwall, %eax
	movl	_wall, %edx
	xorl	%ebx, %ebx
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 18(%edx)
	jmp	L1228
L1608:
	movzbl	_DebugActorFreeze, %eax
	movb	$0, _keystatus+50
	addl	$1, %eax
	movb	%al, _DebugActorFreeze
	cmpb	$2, %al
	jbe	L1325
	movb	$0, _DebugActorFreeze
L1326:
	movl	_sprite, %edi
	movl	$-1171354717, %ebx
	leal	12(%edi), %ecx
	leal	720908(%edi), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1337:
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, (%ecx)
	addl	$44, %ecx
	cmpl	%esi, %ecx
	jne	L1337
L1330:
	cmpb	$0, _keystatus+40
	jne	L1324
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1604:
	movb	$0, _keystatus+3
	cmpl	$200, %edx
	je	L1366
	movl	$1, (%esp)
	xorl	%edx, %edx
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$2019650640, __ZL7tempbuf.lto_priv.2
	movl	$2037076768, __ZL7tempbuf.lto_priv.2+4
	movl	$1784963360, __ZL7tempbuf.lto_priv.2+8
	movl	$544502645, __ZL7tempbuf.lto_priv.2+12
	movl	$1684105331, __ZL7tempbuf.lto_priv.2+16
	movl	$2036473957, __ZL7tempbuf.lto_priv.2+20
	movl	$824911904, __ZL7tempbuf.lto_priv.2+24
	movl	$808464432, __ZL7tempbuf.lto_priv.2+28
	movl	$1919903264, __ZL7tempbuf.lto_priv.2+32
	movl	$1734700576, __ZL7tempbuf.lto_priv.2+36
	movl	$1986622561, __ZL7tempbuf.lto_priv.2+40
	movl	$540682597, __ZL7tempbuf.lto_priv.2+44
	movb	$0, __ZL7tempbuf.lto_priv.2+48
	call	__getnumber16.constprop.0
	movl	_qsetmode, %edx
	testw	%ax, %ax
	je	L1367
	movl	$10000, %esi
	subl	%eax, %esi
	cmpw	$10001, %ax
	cmovl	%eax, %esi
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1373
	leal	(%eax,%eax,4), %eax
	movl	$20, %ecx
	movl	$-858993459, %ebp
	movl	_sector, %ebx
	leal	20(,%eax,8), %edi
L1375:
	testb	$1, -8(%ebx,%ecx)
	je	L1374
	movl	%ecx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, (%ebx,%ecx)
L1374:
	addl	$40, %ecx
	cmpl	%ecx, %edi
	jne	L1375
L1373:
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	call	_clearmidstatbar16
	movl	$0, 8(%esp)
	movl	$LC135, 4(%esp)
	jmp	L1588
L1437:
	movl	$200, %eax
	jmp	L1357
L1325:
	jne	L1610
	movl	_sprite, %edi
	movl	$-1171354717, %ebx
	leal	12(%edi), %ecx
	leal	720908(%edi), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1329:
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, (%ecx)
	addl	$44, %ecx
	cmpl	%esi, %ecx
	jne	L1329
	jmp	L1330
L1310:
	cmpw	$4, %ax
	jne	L1312
L1311:
	movswl	_searchwall, %eax
	movl	$65536, %ecx
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	$1953064992, __ZL7tempbuf.lto_priv.2+4
	sall	$5, %eax
	addl	_wall, %eax
	movl	$540698465, __ZL7tempbuf.lto_priv.2+8
	movswl	28(%eax), %edx
	movl	$1, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movb	$0, __ZL7tempbuf.lto_priv.2+12
	call	__getnumber256.constprop.0
	movl	_wall, %edx
	movl	%eax, %ecx
	movswl	_searchwall, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 28(%edx)
	jmp	L1312
L1267:
	cmpw	$4, %ax
	jne	L1265
L1268:
	movl	_wall, %edx
	movl	$20, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1272:
	cmpw	$0, -4(%edx,%eax)
	jne	L1271
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movb	$0, (%edx,%eax)
L1271:
	addl	$32, %eax
	cmpl	$524308, %eax
	jne	L1272
	jmp	L1265
L1606:
	movb	$0, _keystatus+5
	cmpl	$200, %edx
	je	L1366
	movl	$1, (%esp)
	xorl	%edx, %edx
	movl	$32, %ebx
	movl	$65536, %ecx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1969906753, __ZL7tempbuf.lto_priv.2
	movl	$1847620723, __ZL7tempbuf.lto_priv.2+4
	movl	$2049797743, __ZL7tempbuf.lto_priv.2+8
	movl	$544174693, __ZL7tempbuf.lto_priv.2+12
	movl	$544434550, __ZL7tempbuf.lto_priv.2+16
	movl	$1952671091, __ZL7tempbuf.lto_priv.2+20
	movl	$544436847, __ZL7tempbuf.lto_priv.2+24
	movl	$673216866, __ZL7tempbuf.lto_priv.2+28
	movl	$808464683, __ZL7tempbuf.lto_priv.2+32
	movl	$1713385520, __ZL7tempbuf.lto_priv.2+36
	movl	$1847620207, __ZL7tempbuf.lto_priv.2+40
	movl	$975791973, __ZL7tempbuf.lto_priv.2+44
	movw	%bx, __ZL7tempbuf.lto_priv.2+48
	call	__getnumber16.constprop.0
	movl	_qsetmode, %edx
	testw	%ax, %ax
	je	L1367
	movl	$10000, %edx
	subl	%eax, %edx
	cmpw	$10001, %ax
	cmovge	%edx, %eax
	movw	%ax, 24(%esp)
	movswl	_highlightsectorcnt, %eax
	testw	%ax, %ax
	js	L1611
	je	L1399
	movl	_sector, %esi
	movl	$_highlightsector, %ecx
	leal	_highlightsector(%eax,%eax), %edi
	xorl	%ebp, %ebp
L1403:
	movswl	(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebx
	cmpb	$0, 32(%ebx)
	je	L1402
	leal	32(%ebx), %eax
	movl	$-858993459, %edx
	addl	$1, %ebp
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzbl	24(%esp), %eax
	addb	%al, 32(%ebx)
L1402:
	addl	$2, %ecx
	cmpl	%ecx, %edi
	jne	L1403
L1401:
	movl	$LC6, (%esp)
	movl	_totalclock, %eax
	movl	%eax, _lastpm16time
	call	__printmessage16
	call	_clearmidstatbar16
	movl	%ebp, 8(%esp)
	movl	$LC136, 4(%esp)
	jmp	L1588
L1315:
	cmpw	$4, %ax
	jne	L1317
L1316:
	movswl	_searchwall, %eax
	movb	$0, __ZL7tempbuf.lto_priv.2+12
	movl	$65536, %ecx
	movl	$540697956, __ZL7tempbuf.lto_priv.2+8
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	sall	$5, %eax
	addl	_wall, %eax
	movl	$1634235168, __ZL7tempbuf.lto_priv.2+4
	movsbl	20(%eax), %edx
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movl	$1, (%esp)
	call	__getnumber256.constprop.0
	movl	_wall, %edx
	movl	%eax, %ecx
	movswl	_searchwall, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movb	%cl, 20(%edx)
	jmp	L1317
L1305:
	cmpw	$4, %ax
	jne	L1307
L1306:
	movswl	_searchwall, %eax
	movl	$65536, %ecx
	movl	$1819042135, __ZL7tempbuf.lto_priv.2
	movl	$1953459232, __ZL7tempbuf.lto_priv.2+4
	sall	$5, %eax
	addl	_wall, %eax
	movl	$540698465, __ZL7tempbuf.lto_priv.2+8
	movswl	26(%eax), %edx
	movl	$1, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	movb	$0, __ZL7tempbuf.lto_priv.2+12
	call	__getnumber256.constprop.0
	movl	_wall, %edx
	movl	%eax, %ecx
	movswl	_searchwall, %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 26(%edx)
	jmp	L1307
L1237:
	cmpb	$-128, %al
	je	L1233
	xorl	%edi, %edi
	jmp	L1238
L1253:
	cmpb	$127, %al
	je	L1245
	xorl	%edi, %edi
	jmp	L1254
L1241:
	cmpb	$-128, %al
	je	L1233
	xorl	%edi, %edi
	jmp	L1242
L1229:
	movswl	_searchsector, %eax
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	testb	$65, 12(%eax)
	movl	$0, 8(%esp)
	je	L1231
	movl	$LC125, 4(%esp)
	movl	$512, %ebx
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movw	%bx, __ZL12messagedelay
	movzbl	_keystatus+40, %eax
	jmp	L1226
L1249:
	cmpb	$127, %al
	je	L1245
	xorl	%edi, %edi
	jmp	L1250
L1318:
	movswl	_searchsector, %eax
	movl	_sector, %ebp
	movl	$65536, %ecx
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %eax
	movsbl	20(%eax), %edx
	movl	$1, (%esp)
	movl	$__ZL7tempbuf.lto_priv.2, %eax
	call	__getnumber256.constprop.0
	movswl	_searchsector, %ebx
	movl	$-858993459, %edx
	movl	_sector, %ecx
	movl	%eax, %edi
	leal	(%ebx,%ebx,4), %esi
	leal	20(,%esi,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	%edi, %eax
	movb	%al, 20(%ecx,%esi,8)
	cmpw	$2, _searchstat
	jne	L1317
	jmp	L1319
	.p2align 4,,10
	.p2align 3
L1610:
	movl	_sprite, %ebx
	movl	$12, %ecx
	movl	$-1171354717, %esi
	cmpb	$1, %al
	je	L1336
	jmp	L1326
	.p2align 4,,10
	.p2align 3
L1612:
	cmpw	$1095, %ax
	je	L1331
	jg	L1333
	cmpw	$800, %ax
	je	L1331
	cmpw	$820, %ax
	je	L1331
	.p2align 4
	.p2align 3
L1334:
	addl	$44, %ecx
	cmpl	$720908, %ecx
	je	L1330
L1336:
	movzwl	2(%ebx,%ecx), %eax
	cmpw	$1400, %ax
	je	L1331
	jle	L1612
	cmpw	$2313, %ax
	jg	L1335
	cmpw	$2306, %ax
	jg	L1331
	cmpw	$1469, %ax
	je	L1331
	cmpw	$1580, %ax
	jne	L1334
	.p2align 4
	.p2align 3
L1331:
	movl	%ecx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, (%ebx,%ecx)
	jmp	L1334
	.p2align 4,,10
	.p2align 3
L1333:
	cmpw	$1300, %ax
	je	L1331
	cmpw	$1367, %ax
	jne	L1334
	jmp	L1331
	.p2align 4,,10
	.p2align 3
L1335:
	cmpw	$2355, %ax
	je	L1331
	cmpw	$4096, %ax
	jne	L1334
	jmp	L1331
L1433:
	movl	$28, %ebx
	movl	$-858993459, %esi
	jmp	L1269
	.p2align 4,,10
	.p2align 3
L1275:
	addl	$40, %ebx
	cmpl	$163868, %ebx
	je	L1265
L1269:
	cmpw	$0, -12(%ecx,%ebx)
	jne	L1274
	leal	-8(%ebx), %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	$0, -8(%ecx,%ebx)
L1274:
	cmpw	$0, -4(%ecx,%ebx)
	jne	L1275
	movl	%ebx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movb	$0, (%ecx,%ebx)
	jmp	L1275
L1609:
	movswl	_numwalls, %eax
	testw	%ax, %ax
	jle	L1380
	movl	_wall, %ecx
	sall	$5, %eax
	movl	%ebx, %esi
	leal	20(%ecx), %edx
	leal	(%eax,%edx), %ebp
L1391:
	movl	%edx, %edi
	movl	%esi, %eax
	subl	%ecx, %edi
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	addb	%al, (%edx)
	addl	$32, %edx
	cmpl	%edx, %ebp
	jne	L1391
L1380:
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1390
	movl	%eax, 28(%esp)
	movl	_sector, %eax
	movl	$-1171354717, %ebp
	movl	$0, 24(%esp)
	movl	_sprite, %edi
	movl	%eax, 32(%esp)
	leal	28(%eax), %ecx
L1393:
	movl	32(%esp), %esi
	movl	%ecx, %eax
	movl	$-858993459, %edx
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	leal	-8(%ecx), %eax
	subl	%esi, %eax
	addb	%bl, (%ecx)
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	24(%esp), %eax
	addb	%bl, -8(%ecx)
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1394
	movl	%ecx, 36(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1392:
	movswl	%si, %ecx
	movzwl	_nextspritesect(%ecx,%ecx), %esi
	imull	$44, %ecx, %ecx
	leal	16(%ecx), %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	%bl, 16(%edi,%ecx)
	cmpw	$-1, %si
	jne	L1392
	movl	36(%esp), %ecx
L1394:
	addl	$1, 24(%esp)
	addl	$40, %ecx
	movl	24(%esp), %eax
	cmpl	%eax, 28(%esp)
	jne	L1393
	jmp	L1390
L1231:
	movl	$LC126, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %ecx
	movzbl	_keystatus+40, %eax
	movw	%cx, __ZL12messagedelay
	jmp	L1226
L1434:
	movl	$16, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1286:
	cmpw	(%edx,%eax), %si
	jne	L1288
	movl	%eax, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	xorl	%ecx, %ecx
	movw	%cx, (%edx,%eax)
L1288:
	addl	$32, %eax
	cmpl	$524304, %eax
	jne	L1286
	jmp	L1280
L1232:
	movl	$LC128, 4(%esp)
	movl	$__ZL10messagebuf, (%esp)
	call	_sprintf
	movl	$512, %eax
	movw	%ax, __ZL12messagedelay
	movzbl	_keystatus+40, %eax
	jmp	L1226
L1292:
	movswl	_searchsector, %ebx
	movl	$-858993459, %edi
	leal	(%ebx,%ebx,4), %eax
	movl	$16, %ebx
	movzwl	16(%ecx,%eax,8), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1295:
	cmpw	(%ecx,%ebx), %si
	jne	L1294
	movl	%ebx, %eax
	mull	%edi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, (%ecx,%ebx)
L1294:
	addl	$40, %ebx
	cmpl	$163856, %ebx
	jne	L1295
	jmp	L1280
L1435:
	movl	$24, %esi
	movl	$-858993459, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1297:
	cmpw	(%ecx,%esi), %bx
	jne	L1299
	movl	%esi, %eax
	mull	%edi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, (%ecx,%esi)
L1299:
	addl	$40, %esi
	cmpl	$163864, %esi
	jne	L1297
	jmp	L1280
L1436:
	xorl	%esi, %esi
	jmp	L1368
L1611:
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1399
	leal	(%eax,%eax,4), %eax
	movl	$32, %ecx
	xorl	%ebp, %ebp
	movl	$-858993459, %esi
	movl	_sector, %ebx
	leal	32(,%eax,8), %edi
L1405:
	cmpb	$0, (%ebx,%ecx)
	je	L1404
	movl	%ecx, %eax
	addl	$1, %ebp
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movzbl	24(%esp), %eax
	addb	%al, (%ebx,%ecx)
L1404:
	addl	$40, %ecx
	cmpl	%ecx, %edi
	jne	L1405
	jmp	L1401
L1399:
	xorl	%ebp, %ebp
	jmp	L1401
	.cfi_endproc
LFE115:
	.p2align 4
	.globl	__Z11DrawClipBoxs
	.def	__Z11DrawClipBoxs;	.scl	2;	.type	32;	.endef
__Z11DrawClipBoxs:
LFB134:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%ax, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	imull	$44, %ecx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	addl	_sprite, %ecx
	movl	_zoom, %edi
	movzwl	40(%ecx), %eax
	cmpw	$78, %ax
	je	L1623
	movl	$200, 8(%esp)
	movl	$320, %ebx
	cmpw	$39, %ax
	je	L1624
L1615:
	movswl	38(%ecx), %eax
	movl	%edi, %edx
/APP
 # 2805 "source/sw/src/jnstub.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%esp), %ebp
	movl	$3, 4(%esp)
	leal	(%eax,%ebx), %edi
	subl	%eax, %ebx
	movl	%edi, %ecx
	movl	%eax, %esi
	subl	%eax, %ebp
	movl	%ebx, %eax
	movl	%ebp, (%esp)
	movl	%ebp, %edx
	call	_editorDraw2dLine
	addl	8(%esp), %esi
	movl	%edi, %ecx
	movl	%ebx, %eax
	movl	%esi, (%esp)
	movl	%esi, %edx
	movl	$3, 4(%esp)
	call	_editorDraw2dLine
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$3, 4(%esp)
	movl	%ebx, %eax
	call	_editorDraw2dLine
	movl	%esi, (%esp)
	movl	%edi, %ecx
	movl	%ebp, %edx
	movl	$3, 4(%esp)
	movl	%edi, %eax
	call	_editorDraw2dLine
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
L1623:
	.cfi_restore_state
	movl	(%ecx), %ebx
	subl	_pos, %ebx
	movl	%edi, %edx
	movl	%ebx, %eax
/APP
 # 2792 "source/sw/src/jnstub.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	320(%eax), %ebx
	movl	4(%ecx), %eax
L1622:
	subl	_pos+4, %eax
	movl	%edi, %edx
/APP
 # 2799 "source/sw/src/jnstub.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$200, %eax
	movl	%eax, 8(%esp)
	jmp	L1615
	.p2align 4,,10
	.p2align 3
L1624:
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movzwl	(%eax), %esi
	movzwl	2(%eax), %ebx
	addl	%esi, %ebx
	subl	$1, %ebx
	cmpw	%bx, %si
	jg	L1619
	movswl	%si, %ebp
	movswl	%bx, %eax
	subl	%ebp, %eax
	movl	%ebp, %edx
	xorl	%ebp, %ebp
	addl	$1, %eax
	sall	$5, %edx
	addl	_wall, %edx
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1617:
	addl	$1, %esi
	addl	(%edx), %eax
	addl	4(%edx), %ebp
	addl	$32, %edx
	cmpw	%si, %bx
	jge	L1617
	movl	8(%esp), %esi
	cltd
	idivl	%esi
	movl	%eax, %ebx
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movl	%eax, %ebp
L1616:
	subl	_pos, %ebx
	movl	%edi, %edx
	movl	%ebx, %eax
/APP
 # 2798 "source/sw/src/jnstub.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	320(%eax), %ebx
	movl	%ebp, %eax
	jmp	L1622
	.p2align 4,,10
	.p2align 3
L1619:
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	jmp	L1616
	.cfi_endproc
LFE134:
	.section .rdata,"dr"
LC138:
	.ascii "Wall %d\0"
	.text
	.p2align 4
	.globl	_ExtShowWallData
	.def	_ExtShowWallData;	.scl	2;	.type	32;	.endef
_ExtShowWallData:
LFB137:
	.cfi_startproc
	cmpl	$200, _qsetmode
	je	L1628
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	call	_clearmidstatbar16
	movswl	%bx, %eax
	movl	$LC138, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	call	_sprintf
	movl	_ydim16, %eax
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	addl	$32, %eax
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$8, (%esp)
	call	_printext16
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1628:
	ret
	.cfi_endproc
LFE137:
	.section .rdata,"dr"
LC139:
	.ascii "PicNum = %d\0"
LC140:
	.ascii "HiTag = %d\0"
LC141:
	.ascii "LowTag = %d\0"
	.text
	.p2align 4
	.globl	_ExtEditSectorData.isra.0
	.def	_ExtEditSectorData.isra.0;	.scl	2;	.type	32;	.endef
_ExtEditSectorData.isra.0:
LFB140:
	.cfi_startproc
	cmpl	$200, _qsetmode
	je	L1699
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
	movswl	_FindSpriteNum, %ebx
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	call	_clearmidstatbar16
	movl	$58, %eax
	movl	$1920103747, __ZL7tempbuf.lto_priv.2
	movw	%ax, __ZL7tempbuf.lto_priv.2+48
	movl	$544501349, __ZL7tempbuf.lto_priv.2+4
	movl	$1920234593, __ZL7tempbuf.lto_priv.2+8
	movl	$1953849961, __ZL7tempbuf.lto_priv.2+12
	movl	$1713402725, __ZL7tempbuf.lto_priv.2+16
	movl	$1931506287, __ZL7tempbuf.lto_priv.2+20
	movl	$1953067632, __ZL7tempbuf.lto_priv.2+24
	movl	$1700929637, __ZL7tempbuf.lto_priv.2+28
	movl	$543649385, __ZL7tempbuf.lto_priv.2+32
	movl	$1918985587, __ZL7tempbuf.lto_priv.2+36
	movl	$1684367459, __ZL7tempbuf.lto_priv.2+40
	movl	$1919903264, __ZL7tempbuf.lto_priv.2+44
	movl	$0, 20(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$11, 8(%esp)
	movl	_ydim16, %eax
	movl	$8, (%esp)
	addl	$32, %eax
	movl	%eax, 4(%esp)
	call	_printext16
	movswl	_FindPicNum, %eax
	movl	$LC139, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
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
	movswl	40(%ebx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	$LC140, 4(%esp)
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
	movswl	38(%ebx), %eax
	movl	$__ZL7tempbuf.lto_priv.2, (%esp)
	movl	$LC141, 4(%esp)
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
	cmpl	$200, _qsetmode
	je	L1631
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1631
	movswl	_FindSpriteNum, %ebx
	movl	%eax, 24(%esp)
	movl	_sprite, %edx
	movzbl	_bFindLowTag, %eax
	imull	$44, %ebx, %ebx
	movzbl	_bFindHiTag, %edi
	movb	%al, 35(%esp)
	addl	%edx, %ebx
	cmpb	$0, _bFindPicNum
	jne	L1634
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L1659
	testb	%al, %al
	jne	L1660
	xorl	%ebx, %ebx
L1640:
	movswl	_headspritesect(%ebx,%ebx), %eax
	cmpw	$-1, %ax
	je	L1637
	.p2align 5
	.p2align 4
	.p2align 3
L1639:
	imull	$44, %eax, %ecx
	addl	%edx, %ecx
	testb	$16, 43(%ecx)
	je	L1638
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	jne	L1639
L1637:
	addl	$1, %ebx
	cmpl	%ebx, 24(%esp)
	jne	L1640
L1631:
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
L1699:
	ret
	.p2align 4,,10
	.p2align 3
L1634:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 28(%esp)
	movl	%ebx, %eax
	movzwl	_FindPicNum, %esi
	movl	%edi, %ebx
	movl	%eax, %edi
L1656:
	movl	28(%esp), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1651
	movb	%bl, 36(%esp)
	jmp	L1650
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1654:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1704
L1650:
	imull	$44, %eax, %ecx
	addl	%edx, %ecx
	cmpw	14(%ecx), %si
	jne	L1654
	cmpb	$0, 36(%esp)
	je	L1703
	movzwl	40(%edi), %ebx
	cmpw	%bx, 40(%ecx)
	jne	L1654
L1703:
	cmpb	$0, 35(%esp)
	je	L1653
	movzwl	38(%edi), %ebx
	cmpw	%bx, 38(%ecx)
	jne	L1654
L1653:
	testb	$16, 43(%ecx)
	jne	L1654
L1638:
	leal	42(%ecx), %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	24(%ecx), %eax
	movlps	(%ecx), %xmm0
	orw	$4096, 42(%ecx)
	movw	%ax, _cursectnum
	movl	8(%ecx), %eax
	subl	_kensplayerheight, %eax
	movlps	%xmm0, _pos
	movl	%eax, _pos+8
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
L1704:
	.cfi_restore_state
	movzbl	36(%esp), %ebx
L1651:
	addl	$1, 28(%esp)
	movl	28(%esp), %eax
	cmpl	%eax, 24(%esp)
	jne	L1656
	jmp	L1631
	.p2align 4,,10
	.p2align 3
L1659:
	xorl	%edi, %edi
L1635:
	movswl	_headspritesect(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L1645
	movl	%edi, 36(%esp)
	movzwl	40(%ebx), %esi
	jmp	L1648
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1647:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1705
L1648:
	imull	$44, %eax, %ecx
	addl	%edx, %ecx
	cmpw	%si, 40(%ecx)
	jne	L1647
	cmpb	$0, 35(%esp)
	je	L1649
	movzwl	38(%ecx), %edi
	cmpw	%di, 38(%ebx)
	jne	L1647
L1649:
	testb	$16, 43(%ecx)
	je	L1638
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	jne	L1648
L1705:
	movl	36(%esp), %edi
L1645:
	addl	$1, %edi
	cmpl	%edi, 24(%esp)
	jne	L1635
	jmp	L1631
L1660:
	xorl	%edi, %edi
L1636:
	movswl	_headspritesect(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L1641
	movzwl	38(%ebx), %esi
	jmp	L1643
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1644:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1641
L1643:
	imull	$44, %eax, %ecx
	addl	%edx, %ecx
	cmpw	38(%ecx), %si
	jne	L1644
	testb	$16, 43(%ecx)
	jne	L1644
	jmp	L1638
L1641:
	addl	$1, %edi
	cmpl	%edi, 24(%esp)
	jne	L1636
	jmp	L1631
	.cfi_endproc
LFE140:
	.globl	__mi_page_empty
	.section .rdata,"dr"
	.align 64
__mi_page_empty:
	.space 48
	.globl	__mi_heap_empty
	.align 64
__mi_heap_empty:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 60
	.long	0
	.space 60
	.long	0
	.byte	1
	.space 3
	.long	0
	.long	74
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	__mi_page_empty
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	4
	.long	0
	.long	0
	.long	8
	.long	0
	.long	0
	.long	12
	.long	0
	.long	0
	.long	16
	.long	0
	.long	0
	.long	20
	.long	0
	.long	0
	.long	24
	.long	0
	.long	0
	.long	28
	.long	0
	.long	0
	.long	32
	.long	0
	.long	0
	.long	40
	.long	0
	.long	0
	.long	48
	.long	0
	.long	0
	.long	56
	.long	0
	.long	0
	.long	64
	.long	0
	.long	0
	.long	80
	.long	0
	.long	0
	.long	96
	.long	0
	.long	0
	.long	112
	.long	0
	.long	0
	.long	128
	.long	0
	.long	0
	.long	160
	.long	0
	.long	0
	.long	192
	.long	0
	.long	0
	.long	224
	.long	0
	.long	0
	.long	256
	.long	0
	.long	0
	.long	320
	.long	0
	.long	0
	.long	384
	.long	0
	.long	0
	.long	448
	.long	0
	.long	0
	.long	512
	.long	0
	.long	0
	.long	640
	.long	0
	.long	0
	.long	768
	.long	0
	.long	0
	.long	896
	.long	0
	.long	0
	.long	1024
	.long	0
	.long	0
	.long	1280
	.long	0
	.long	0
	.long	1536
	.long	0
	.long	0
	.long	1792
	.long	0
	.long	0
	.long	2048
	.long	0
	.long	0
	.long	2560
	.long	0
	.long	0
	.long	3072
	.long	0
	.long	0
	.long	3584
	.long	0
	.long	0
	.long	4096
	.long	0
	.long	0
	.long	5120
	.long	0
	.long	0
	.long	6144
	.long	0
	.long	0
	.long	7168
	.long	0
	.long	0
	.long	8192
	.long	0
	.long	0
	.long	10240
	.long	0
	.long	0
	.long	12288
	.long	0
	.long	0
	.long	14336
	.long	0
	.long	0
	.long	16384
	.long	0
	.long	0
	.long	20480
	.long	0
	.long	0
	.long	24576
	.long	0
	.long	0
	.long	28672
	.long	0
	.long	0
	.long	32768
	.long	0
	.long	0
	.long	40960
	.long	0
	.long	0
	.long	49152
	.long	0
	.long	0
	.long	57344
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	81920
	.long	0
	.long	0
	.long	98304
	.long	0
	.long	0
	.long	114688
	.long	0
	.long	0
	.long	131072
	.long	0
	.long	0
	.long	163840
	.long	0
	.long	0
	.long	196608
	.long	0
	.long	0
	.long	229376
	.long	0
	.long	0
	.long	262144
	.long	0
	.long	0
	.long	327680
	.long	0
	.long	0
	.long	393216
	.long	0
	.long	0
	.long	458752
	.long	0
	.long	0
	.long	524288
	.long	0
	.long	0
	.long	655360
	.long	0
	.long	0
	.long	786432
	.long	0
	.long	0
	.long	917504
	.long	0
	.long	0
	.long	1048576
	.long	0
	.long	0
	.long	1310720
	.long	0
	.long	0
	.long	1572864
	.long	0
	.long	0
	.long	1835008
	.long	0
	.long	0
	.long	2097152
	.long	0
	.long	0
	.long	1048580
	.long	0
	.long	0
	.long	1048584
	.globl	_bFindPicNum
	.data
_bFindPicNum:
	.byte	1
	.globl	_kensplayerheight
	.align 4
_kensplayerheight:
	.long	32
	.globl	_bFindLowTag
	.bss
_bFindLowTag:
	.space 1
	.globl	_bFindHiTag
_bFindHiTag:
	.space 1
	.globl	_FindPicNum
	.align 2
_FindPicNum:
	.space 2
	.globl	_FindSpriteNum
	.align 2
_FindSpriteNum:
	.space 2
	.globl	_zoom
	.data
	.align 4
_zoom:
	.long	768
	.globl	_DebugActorFreeze
	.bss
_DebugActorFreeze:
	.space 1
	.globl	_temppal
	.section .rdata,"dr"
	.align 4
_temppal:
	.space 4
	.globl	_tempshade
	.align 4
_tempshade:
	.space 4
	.globl	_highlightsector
	.bss
	.align 32
_highlightsector:
	.space 8192
	.globl	_highlightsectorcnt
	.data
	.align 2
_highlightsectorcnt:
	.word	-1
	.globl	_highlight
	.bss
	.align 32
_highlight:
	.space 65536
	.globl	_highlightcnt
	.align 2
_highlightcnt:
	.space 2
	.globl	_ydim
	.align 4
_ydim:
	.space 4
	.globl	__ZL22polymost1FogEnabledLoc.lto_priv.0
	.data
	.align 4
__ZL22polymost1FogEnabledLoc.lto_priv.0:
	.long	-1
	.globl	__ZL19polymost1FogEnabled.lto_priv.0
	.align 4
__ZL19polymost1FogEnabled.lto_priv.0:
	.long	1065353216
	.globl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0
	.align 4
__ZL24polymost1UseColorOnlyLoc.lto_priv.0:
	.long	-1
	.globl	_glad_glUniform1f
	.bss
	.align 4
_glad_glUniform1f:
	.space 4
	.globl	__ZL21polymost1UseColorOnly.lto_priv.0
	.align 4
__ZL21polymost1UseColorOnly.lto_priv.0:
	.space 4
	.globl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0
	.align 4
__ZL31polymost1CurrentShaderProgramID.lto_priv.0:
	.space 4
	.globl	_gl
	.align 32
_gl:
	.space 348
	.globl	_nofog
	.align 4
_nofog:
	.space 4
	.globl	_searchx
	.data
	.align 4
_searchx:
	.long	-1
	.globl	_searchy
	.bss
	.align 4
_searchy:
	.space 4
	.globl	_whitecol
_whitecol:
	.space 1
	.globl	_editorcolors
	.align 32
_editorcolors:
	.space 256
	.globl	_xdim
	.align 4
_xdim:
	.space 4
	.globl	_CaptionMode
	.data
	.align 2
_CaptionMode:
	.word	2
	.globl	_temppicnum
	.section .rdata,"dr"
	.align 4
_temppicnum:
	.space 4
	.globl	_pointhighlight
	.data
	.align 2
_pointhighlight:
	.word	-1
.lcomm __ZZ12ExtCheckKeysE8frameval,64,32
.lcomm __ZZ12ExtCheckKeysE8framecnt,4,4
	.globl	_siNextTag
	.bss
	.align 2
_siNextTag:
	.space 2
	.globl	_siNextEndTag
	.data
	.align 2
_siNextEndTag:
	.word	1
	.globl	__ZL7tempbuf.lto_priv.2
	.bss
	.align 32
__ZL7tempbuf.lto_priv.2:
	.space 256
	.globl	_lastpm16time
	.align 4
_lastpm16time:
	.space 4
	.globl	_loaded_numwalls
	.align 4
_loaded_numwalls:
	.space 4
	.globl	_spritechanged
	.align 32
_spritechanged:
	.space 65536
	.globl	__ZL9groupname.lto_priv.0
	.align 32
__ZL9groupname.lto_priv.0:
	.space 32
	.globl	__ZL9gfileoffs.lto_priv.0
	.align 32
__ZL9gfileoffs.lto_priv.0:
	.space 32
	.globl	__ZL8groupfil.lto_priv.0
	.data
	.align 32
__ZL8groupfil.lto_priv.0:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.globl	_numgroupfiles
	.bss
	.align 4
_numgroupfiles:
	.space 4
	.data
	.align 32
_setupfilename:
	.ascii "wangulator.cfg\0"
	.space 241
	.globl	_scripthist
	.bss
	.align 32
_scripthist:
	.space 128
	.globl	_scripthistend
	.align 4
_scripthistend:
	.space 4
	.globl	_g_keyRemapTable
	.align 32
_g_keyRemapTable:
	.space 256
	.globl	_game_executable
	.align 32
_game_executable:
	.space 256
	.globl	_forcesetup
	.data
	.align 4
_forcesetup:
	.long	1
	.globl	_fullscreen
	.bss
	.align 4
_fullscreen:
	.space 4
	.globl	_xres
	.data
	.align 4
_xres:
	.long	-1
	.globl	_yres
	.align 4
_yres:
	.long	-1
	.globl	_upscalefactor
	.bss
	.align 4
_upscalefactor:
	.space 4
	.globl	_bppgame
	.data
	.align 4
_bppgame:
	.long	8
	.globl	_vsync
	.bss
	.align 4
_vsync:
	.space 4
	.globl	_glrendmode
	.data
	.align 4
_glrendmode:
	.long	3
	.globl	_editorgridextent
	.align 4
_editorgridextent:
	.long	-1
	.globl	__ZL12default_grid.lto_priv.0
	.align 4
__ZL12default_grid.lto_priv.0:
	.long	9
	.globl	_usemodels
	.align 4
_usemodels:
	.long	1
	.globl	_usehightile
	.align 4
_usehightile:
	.long	1
	.globl	_g_lazy_tileselector
	.bss
	.align 4
_g_lazy_tileselector:
	.space 4
	.globl	_glusetexcache
	.data
	.align 4
_glusetexcache:
	.long	2
	.globl	_glusememcache
	.align 4
_glusememcache:
	.long	1
	.globl	_gltexfiltermode
	.bss
	.align 4
_gltexfiltermode:
	.space 4
	.globl	_glanisotropy
	.data
	.align 4
_glanisotropy:
	.long	16
	.globl	_r_downsize
	.bss
	.align 4
_r_downsize:
	.space 4
	.globl	_glusetexcompr
	.data
	.align 4
_glusetexcompr:
	.long	1
	.globl	_shadescale
	.align 4
_shadescale:
	.long	1065353216
	.globl	_r_usenewshading
	.align 4
_r_usenewshading:
	.long	4
	.globl	_r_usetileshades
	.align 4
_r_usetileshades:
	.long	1
	.globl	_pr_artmapping
	.align 4
_pr_artmapping:
	.long	1
	.globl	_r_usenewaspect
	.align 4
_r_usenewaspect:
	.long	1
	.globl	_r_screenxy
	.bss
	.align 4
_r_screenxy:
	.space 4
	.globl	_g_windowPos
	.align 4
_g_windowPos:
	.space 8
	.globl	_g_videoGamma
	.data
	.align 4
_g_videoGamma:
	.long	1065353216
	.globl	_g_videoContrast
	.align 4
_g_videoContrast:
	.long	1065353216
	.globl	_msens
	.align 8
_msens:
	.long	0
	.long	1072693248
	.globl	_unrealedlook
	.align 4
_unrealedlook:
	.long	1
	.globl	_pk_uedaccel
	.align 4
_pk_uedaccel:
	.long	3
	.globl	_quickmapcycling
	.align 4
_quickmapcycling:
	.long	1
	.globl	_sideview_reversehrot
	.bss
_sideview_reversehrot:
	.space 1
	.globl	_revertCTRL
	.align 4
_revertCTRL:
	.space 4
	.globl	_scrollamount
	.data
	.align 4
_scrollamount:
	.long	3
	.globl	_pk_turnaccel
	.align 4
_pk_turnaccel:
	.long	16
	.globl	_pk_turndecel
	.align 4
_pk_turndecel:
	.long	12
	.globl	_autosave
	.align 4
_autosave:
	.long	180
	.globl	_autocorruptcheck
	.bss
	.align 4
_autocorruptcheck:
	.space 4
	.globl	_corruptcheck_noalreadyrefd
	.align 4
_corruptcheck_noalreadyrefd:
	.space 4
	.globl	_corruptcheck_game_duke3d
	.data
	.align 4
_corruptcheck_game_duke3d:
	.long	1
	.globl	_corruptcheck_heinum
	.align 4
_corruptcheck_heinum:
	.long	1
	.globl	_fixmaponsave_sprites
	.align 4
_fixmaponsave_sprites:
	.long	1
	.globl	_keeptexturestretch
_keeptexturestretch:
	.byte	1
	.globl	_showheightindicators
	.align 4
_showheightindicators:
	.long	1
	.globl	_showambiencesounds
	.align 4
_showambiencesounds:
	.long	2
	.globl	_pathsearchmode
	.bss
	.align 4
_pathsearchmode:
	.space 4
	.globl	_m32_2d3dmode
	.align 4
_m32_2d3dmode:
	.space 4
	.globl	_m32_2d3dsize
	.data
	.align 4
_m32_2d3dsize:
	.long	4
	.globl	_m32_2d3d
	.align 4
_m32_2d3d:
	.long	65535
	.long	4
	.globl	_m32_3dundo
	.align 4
_m32_3dundo:
	.long	1
	.globl	_pointhighlightdist
	.align 2
_pointhighlightdist:
	.word	256
	.globl	_linehighlightdist
	.align 2
_linehighlightdist:
	.word	1024
	.globl	_autogray
	.bss
	.align 4
_autogray:
	.space 4
	.globl	_graphicsmode
	.align 4
_graphicsmode:
	.space 4
	.globl	_MixRate
	.align 4
_MixRate:
	.space 4
	.globl	_AmbienceToggle
	.align 4
_AmbienceToggle:
	.space 4
	.globl	_ParentalLock
	.align 4
_ParentalLock:
	.space 4
	.globl	_m32_osd_tryscript
_m32_osd_tryscript:
	.space 1
	.globl	_default_buildkeys
	.data
	.align 4
_default_buildkeys:
	.ascii "\310\320\313\315*\235\35"
	.ascii "9\36,\321\311"
	.ascii "34\234\34\15\14\17)"
	.globl	__ZL18defaultgrpfilename.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL18defaultgrpfilename.lto_priv.0:
	.long	LC67
	.globl	_g_selectedGrp
	.bss
	.align 4
_g_selectedGrp:
	.space 4
	.globl	_g_addonNum
	.section .rdata,"dr"
	.align 4
_g_addonNum:
	.long	-1
	.globl	_overridepm16y
	.set	_overridepm16y,_g_addonNum
	.globl	__ZL14searchpathhead.lto_priv.0
	.bss
	.align 4
__ZL14searchpathhead.lto_priv.0:
	.space 4
	.globl	_britable
	.align 32
_britable:
	.space 4096
	.globl	_sqrtable_old
	.align 32
_sqrtable_old:
	.space 4096
	.globl	_shlookup
	.align 32
_shlookup:
	.space 8704
	.globl	_sqrtable
	.align 32
_sqrtable:
	.space 8192
	.globl	__ZL9qradarang.lto_priv.0
	.align 32
__ZL9qradarang.lto_priv.0:
	.space 40960
	.globl	__ZL8radarang.lto_priv.0
	.align 32
__ZL8radarang.lto_priv.0:
	.space 2560
	.globl	_sintable
	.align 32
_sintable:
	.space 4096
	.globl	_sloptable
	.align 32
_sloptable:
	.space 131072
	.globl	_reciptable
	.align 32
_reciptable:
	.space 8192
.lcomm __ZZL16engineLoadTablesvE12tablesloaded,1,1
	.globl	__ZL5bdist.lto_priv.0
	.align 32
__ZL5bdist.lto_priv.0:
	.space 2052
	.globl	__ZL5gdist.lto_priv.0
	.align 32
__ZL5gdist.lto_priv.0:
	.space 2052
	.globl	__ZL5rdist.lto_priv.0
	.align 32
__ZL5rdist.lto_priv.0:
	.space 2052
	.globl	__ZL7coldist.lto_priv.0
	.align 8
__ZL7coldist.lto_priv.0:
	.space 8
	.globl	__ZL7colscan.lto_priv.0
	.align 32
__ZL7colscan.lto_priv.0:
	.space 108
	.globl	_numalphatabs
_numalphatabs:
	.space 1
	.globl	_blendtable
	.align 32
_blendtable:
	.space 1024
	.globl	_palette
	.align 32
_palette:
	.space 768
	.globl	_glblend
	.align 32
_glblend:
	.space 4096
	.globl	_mdinited
	.align 4
_mdinited:
	.space 4
	.globl	_hicinitcounter
	.align 4
_hicinitcounter:
	.space 4
	.globl	_maxspritesonscreen
	.align 4
_maxspritesonscreen:
	.space 4
	.globl	_parallaxvisibility
	.align 4
_parallaxvisibility:
	.space 4
	.globl	_g_visibility
	.align 4
_g_visibility:
	.space 4
	.globl	_totalclock
	.align 8
_totalclock:
	.space 16
	.globl	_voxscale
	.align 32
_voxscale:
	.space 8192
	.globl	_tiletovox
	.align 32
_tiletovox:
	.space 61440
	.globl	_voxflags
	.align 32
_voxflags:
	.space 2048
	.globl	__ZL7voxlock.lto_priv.0
	.align 32
__ZL7voxlock.lto_priv.0:
	.space 10240
	.globl	_voxoff
	.align 32
_voxoff:
	.space 40960
	.globl	__ZL8lowrecip.lto_priv.0
	.align 32
__ZL8lowrecip.lto_priv.0:
	.space 4096
	.globl	_showinvisibility
_showinvisibility:
	.space 1
	.globl	_rotatesprite_yxaspect
	.align 4
_rotatesprite_yxaspect:
	.space 4
	.globl	_rotatesprite_y_offset
	.align 4
_rotatesprite_y_offset:
	.space 4
	.globl	_xyaspect
	.align 4
_xyaspect:
	.space 4
	.globl	__ZL13preinitcalled.lto_priv.0
	.align 4
__ZL13preinitcalled.lto_priv.0:
	.space 4
	.globl	_engineerrstr
	.section .rdata,"dr"
LC142:
	.ascii "No error\0"
	.data
	.align 4
_engineerrstr:
	.long	LC142
	.globl	_paletteloaded
	.bss
_paletteloaded:
	.space 1
	.section .rdata,"dr"
	.align 32
__ZL14PlayerColorMap:
	.byte	32
	.byte	32
	.byte	-64
	.byte	32
	.byte	32
	.byte	31
	.byte	-64
	.byte	1
	.byte	32
	.byte	16
	.byte	-64
	.byte	-32
	.byte	32
	.byte	16
	.byte	-64
	.byte	96
	.byte	32
	.byte	16
	.byte	-64
	.byte	-128
	.byte	32
	.byte	16
	.byte	-64
	.byte	-96
	.byte	32
	.byte	16
	.byte	-64
	.byte	-80
	.byte	32
	.byte	32
	.byte	-64
	.byte	-64
	.byte	32
	.byte	32
	.byte	-64
	.byte	64
	.byte	32
	.byte	16
	.byte	-64
	.byte	112
	.byte	32
	.byte	16
	.byte	-64
	.byte	16
	.byte	32
	.byte	16
	.byte	-64
	.byte	-112
	.byte	32
	.byte	16
	.byte	-64
	.byte	-48
	.byte	32
	.byte	16
	.byte	-64
	.byte	-16
	.byte	32
	.byte	16
	.byte	-64
	.byte	-16
	.align 32
__ZZ11InitPalettevE10Illuminate:
	.byte	16
	.byte	8
	.byte	1
	.byte	-112
	.byte	16
	.byte	8
	.byte	16
	.byte	-112
	.byte	16
	.byte	8
	.byte	32
	.byte	-112
	.byte	16
	.byte	8
	.byte	48
	.byte	-112
	.byte	16
	.byte	8
	.byte	64
	.byte	-112
	.byte	16
	.byte	8
	.byte	80
	.byte	-112
	.byte	16
	.byte	8
	.byte	96
	.byte	-112
	.byte	16
	.byte	8
	.byte	-128
	.byte	-112
	.byte	16
	.byte	8
	.byte	-96
	.byte	-112
	.byte	16
	.byte	8
	.byte	-80
	.byte	-112
	.byte	32
	.byte	8
	.byte	-64
	.byte	-112
	.byte	16
	.byte	8
	.byte	112
	.byte	-112
	.byte	16
	.byte	8
	.byte	-32
	.byte	-112
	.byte	16
	.byte	8
	.byte	-16
	.byte	-112
	.align 32
__ZZ11InitPalettevE9AllToBlue:
	.byte	31
	.byte	32
	.byte	1
	.byte	-64
	.byte	32
	.byte	32
	.byte	32
	.byte	-64
	.byte	32
	.byte	32
	.byte	64
	.byte	-64
	.byte	16
	.byte	32
	.byte	96
	.byte	-64
	.byte	16
	.byte	32
	.byte	-128
	.byte	-64
	.byte	16
	.byte	32
	.byte	-112
	.byte	-64
	.byte	16
	.byte	32
	.byte	-96
	.byte	-64
	.byte	16
	.byte	32
	.byte	-80
	.byte	-64
	.byte	16
	.byte	32
	.byte	112
	.byte	-64
	.byte	16
	.byte	32
	.byte	-32
	.byte	-64
	.byte	16
	.byte	32
	.byte	-16
	.byte	-64
	.align 32
__ZZ11InitPalettevE8AllToRed:
	.byte	31
	.byte	16
	.byte	1
	.byte	112
	.byte	32
	.byte	16
	.byte	32
	.byte	112
	.byte	32
	.byte	16
	.byte	64
	.byte	112
	.byte	16
	.byte	16
	.byte	96
	.byte	112
	.byte	16
	.byte	16
	.byte	-128
	.byte	112
	.byte	16
	.byte	16
	.byte	-112
	.byte	112
	.byte	16
	.byte	16
	.byte	-96
	.byte	112
	.byte	16
	.byte	16
	.byte	-80
	.byte	112
	.byte	32
	.byte	16
	.byte	-64
	.byte	112
	.byte	16
	.byte	16
	.byte	-32
	.byte	112
	.byte	16
	.byte	16
	.byte	-16
	.byte	112
	.align 32
__ZZ11InitPalettevE10AllToGreen:
	.byte	31
	.byte	16
	.byte	1
	.byte	-80
	.byte	32
	.byte	16
	.byte	32
	.byte	-80
	.byte	32
	.byte	16
	.byte	64
	.byte	-80
	.byte	16
	.byte	16
	.byte	96
	.byte	-80
	.byte	16
	.byte	16
	.byte	-128
	.byte	-80
	.byte	16
	.byte	16
	.byte	-112
	.byte	-80
	.byte	16
	.byte	16
	.byte	-96
	.byte	-80
	.byte	16
	.byte	16
	.byte	-80
	.byte	-80
	.byte	32
	.byte	16
	.byte	-64
	.byte	-80
	.byte	16
	.byte	16
	.byte	112
	.byte	-80
	.byte	16
	.byte	16
	.byte	-32
	.byte	-80
	.byte	16
	.byte	16
	.byte	-16
	.byte	-80
	.align 4
__ZZ11InitPalettevE10NinjaGreen:
	.byte	16
	.byte	16
	.byte	80
	.byte	16
	.byte	16
	.byte	16
	.byte	-80
	.byte	80
	.byte	16
	.byte	8
	.byte	48
	.byte	-74
	.byte	32
	.byte	16
	.byte	-64
	.byte	-80
	.align 4
__ZZ11InitPalettevE8NinjaRed:
	.byte	16
	.byte	16
	.byte	80
	.byte	16
	.byte	16
	.byte	16
	.byte	-80
	.byte	80
	.byte	16
	.byte	8
	.byte	48
	.byte	120
	.byte	32
	.byte	16
	.byte	-64
	.byte	112
	.align 4
__ZZ11InitPalettevE10NinjaBasic:
	.byte	32
	.byte	16
	.byte	64
	.byte	16
	.byte	32
	.byte	16
	.byte	32
	.byte	16
	.byte	32
	.byte	31
	.byte	-64
	.byte	1
	.byte	16
	.byte	16
	.byte	-96
	.byte	16
	.byte	16
	.byte	16
	.byte	-80
	.byte	16
	.byte	16
	.byte	16
	.byte	-128
	.byte	16
	.align 4
__ZZ11InitPalettevE13MenuHighlight:
	.byte	16
	.byte	16
	.byte	112
	.byte	-16
	.align 4
__ZZ11InitPalettevE11ElectroGore:
	.byte	16
	.byte	16
	.byte	112
	.byte	-48
	.align 4
__ZZ11InitPalettevE8SkelGore:
	.byte	16
	.byte	16
	.byte	112
	.byte	-112
	.align 4
__ZZ11InitPalettevE11BrownRipper:
	.byte	31
	.byte	32
	.byte	1
	.byte	64
.lcomm _DefaultPalette,8192,32
	.globl	_palookup
	.bss
	.align 32
_palookup:
	.space 1024
	.globl	_numshades
	.align 2
_numshades:
	.space 2
.lcomm __ZL9g_rootDir,256,32
	.globl	_osd
	.align 4
_osd:
	.space 4
	.globl	_AppProperName
	.section .rdata,"dr"
	.align 4
_AppProperName:
	.long	LC63
	.globl	_s_buildRev
	.align 4
_s_buildRev:
	.long	LC62
	.globl	_spritesortcnt
	.bss
	.align 4
_spritesortcnt:
	.space 4
	.globl	_aVoxelArray
	.align 32
_aVoxelArray:
	.space 122880
	.data
_bSpinBobVoxels:
	.byte	1
	.globl	_rendmode
	.bss
	.align 4
_rendmode:
	.space 4
	.globl	_usevoxels
	.data
	.align 4
_usevoxels:
	.long	1
_bVoxelsOn:
	.byte	1
_bAutoSize:
	.byte	1
	.globl	_tsprite
	.bss
	.align 4
_tsprite:
	.space 4
.lcomm _rotang,2,2
	.globl	__ZL7filepos.lto_priv.0
	.align 32
__ZL7filepos.lto_priv.0:
	.space 256
	.globl	__ZL7filehan.lto_priv.0
	.data
	.align 32
__ZL7filehan.lto_priv.0:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.globl	__ZL7filegrp.lto_priv.0
	.bss
	.align 32
__ZL7filegrp.lto_priv.0:
	.space 64
	.globl	_ydim16
	.align 4
_ydim16:
	.space 4
.lcomm __ZL7tempbuf.lto_priv.1,256,32
	.globl	__ZL9gfilelist.lto_priv.0
	.align 32
__ZL9gfilelist.lto_priv.0:
	.space 32
	.globl	_foundgrps
	.align 4
_foundgrps:
	.space 4
.lcomm _SW_GameFlags,1,1
	.globl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0
	.data
	.align 4
__ZN6loguruL19s_max_out_verbosityE.lto_priv.0:
	.long	-9
	.globl	__ZN6loguru18g_stderr_verbosityE
	.bss
	.align 4
__ZN6loguru18g_stderr_verbosityE:
	.space 4
	.globl	_g_grpNamePtr
	.align 4
_g_grpNamePtr:
	.space 4
	.globl	_g_sm_heap
	.align 4
_g_sm_heap:
	.space 4
	.globl	_g_useCwd
	.align 4
_g_useCwd:
	.space 4
.lcomm __ZL7tempbuf.lto_priv.0,256,32
	.globl	_nextspritesect
	.align 32
_nextspritesect:
	.space 32768
	.globl	_headspritesect
	.align 32
_headspritesect:
	.space 8194
	.globl	_numsectors
	.align 2
_numsectors:
	.space 2
	.globl	_numwalls
	.align 2
_numwalls:
	.space 2
	.globl	_wallchanged
	.align 32
_wallchanged:
	.space 67584
	.globl	_wall
	.align 4
_wall:
	.space 4
.lcomm __ZL12messagedelay,2,2
.lcomm __ZL10messagebuf,1024,32
	.globl	_sectorchanged
	.align 32
_sectorchanged:
	.space 16392
	.globl	_ds
	.align 32
_ds:
	.space 256
	.globl	_sprite
	.align 4
_sprite:
	.space 4
	.globl	_nextspritestat
	.align 32
_nextspritestat:
	.space 32768
	.globl	_headspritestat
	.align 32
_headspritestat:
	.space 2050
.lcomm _FAF_DontMoveSectors,1,1
	.globl	_sector
	.align 4
_sector:
	.space 4
.lcomm _save,4004,32
	.globl	_searchit
	.align 2
_searchit:
	.space 2
.lcomm _bak_searchstat,2,2
	.globl	_searchstat
	.align 2
_searchstat:
	.space 2
.lcomm _bak_searchwall,2,2
	.globl	_searchwall
	.align 2
_searchwall:
	.space 2
.lcomm _bak_searchsector,2,2
	.globl	_searchsector
	.align 2
_searchsector:
	.space 2
	.globl	_pos
	.align 8
_pos:
	.space 12
	.globl	_ang
	.align 2
_ang:
	.space 2
	.globl	_horiz
	.data
	.align 4
_horiz:
	.long	100
	.globl	_cursectnum
	.bss
	.align 2
_cursectnum:
	.space 2
	.globl	_qsetmode
	.align 4
_qsetmode:
	.space 4
.lcomm _FAFon,1,1
	.globl	_keystatus
	.align 32
_keystatus:
	.space 256
	.globl	_token
	.align 32
_token:
	.space 255
	.globl	_endofscript
_endofscript:
	.space 1
	.globl	_scriptline
	.align 4
_scriptline:
	.space 4
	.globl	_scriptend_p
	.align 4
_scriptend_p:
	.space 4
	.globl	_script_p
	.align 4
_script_p:
	.space 4
	.globl	__mi_heap_default
	.section	.tls$,"dw"
	.align 4
__mi_heap_default:
	.long	__mi_heap_empty
	.globl	_tlsCacheBuckets
	.align 4
_tlsCacheBuckets:
	.space 512
	.section .rdata,"dr"
	.align 4
LC68:
	.long	1068086180
	.align 4
LC69:
	.long	1056964608
	.align 4
LC70:
	.long	-1090519040
	.align 4
LC76:
	.long	994643931
	.align 4
LC77:
	.long	1182793728
	.align 4
LC78:
	.long	953267991
	.align 4
LC79:
	.long	1003277517
	.align 4
LC80:
	.long	-962397821
	.align 4
LC81:
	.long	1199570944
	.align 4
LC83:
	.long	978111693
	.align 4
LC86:
	.long	1090519040
	.align 4
LC87:
	.long	1132396544
	.align 4
LC89:
	.long	1059760811
	.align 4
LC91:
	.long	1051372203
	.align 4
LC137:
	.long	1065353216
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_vprintf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_initgroupfile;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__getnumber256.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__getnumber16.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_printmessage256;	.scl	2;	.type	32;	.endef
	.def	__printmessage16;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	_getcwd;	.scl	2;	.type	32;	.endef
	.def	_addsearchpath_user;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_Paths_ReadRegistryValue.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_getenv;	.scl	2;	.type	32;	.endef
	.def	_chdir;	.scl	2;	.type	32;	.endef
	.def	_mkdir;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_clearmidstatbar16;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_printext16;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_strupr;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	___ms_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_paletteInitClosestColorMap.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20maybe_alloc_palookupi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	_tileSetupSky;	.scl	2;	.type	32;	.endef
	.def	_enginePreInit;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_sinf;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_hicinit;	.scl	2;	.type	32;	.endef
	.def	_freeallmodels;	.scl	2;	.type	32;	.endef
	.def	_paletteSetBlendTable;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL16OSD_CvarModifiedPK9osdcvar_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_plotpixel;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_editinput;	.scl	2;	.type	32;	.endef
	.def	_handleevents;	.scl	2;	.type	32;	.endef
	.def	_editorDraw2dLine;	.scl	2;	.type	32;	.endef
