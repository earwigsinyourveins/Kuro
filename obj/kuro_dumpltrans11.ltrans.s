	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z17ViewSectorInSceness;	.scl	3;	.type	32;	.endef
__Z17ViewSectorInSceness:
LFB0:
	.cfi_startproc
	movl	%edx, %ecx
	movswl	_headspritestat+120, %edx
	cmpl	$-1, %edx
	je	L17
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_sprite, %ebx
	jmp	L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
L4:
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpl	$-1, %edx
	je	L2
L3:
	imull	$44, %edx, %eax
	addl	%ebx, %eax
	cmpw	40(%eax), %cx
	jne	L4
	cmpw	24(%eax), %si
	jne	L4
	cmpw	$1536, 28(%eax)
	je	L4
	movzbl	_gotpic+294, %edx
	testb	$16, %dl
	jne	L22
L2:
	movl	$-1, %eax
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
L22:
	.cfi_restore_state
	andl	$-17, %edx
	movzwl	38(%eax), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movb	%dl, _gotpic+294
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L17:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z22TestRotatorMatchActives
	.def	__Z22TestRotatorMatchActives;	.scl	2;	.type	32;	.endef
__Z22TestRotatorMatchActives:
LFB1:
	.cfi_startproc
	movswl	_headspritestat+142, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	8(%esp), %ebx
	cmpw	$-1, %ax
	je	L24
	movl	_sprite, %ecx
	jmp	L25
	.p2align 5
	.p2align 4,,10
	.p2align 3
L27:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L24
L25:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$143, 40(%edx)
	jne	L27
	cmpw	%bx, 38(%edx)
	jne	L27
	testb	$8, 43(%edx)
	jne	L27
	movl	_User(,%eax,4), %edx
	testb	$8, 68(%edx)
	jne	L30
	movl	76(%edx), %edx
	testl	%edx, %edx
	je	L27
L30:
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L24:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__Z16PanelNdxToSpriteP12PLAYERstructi;	.scl	3;	.type	32;	.endef
__Z16PanelNdxToSpriteP12PLAYERstructi:
LFB2:
	.cfi_startproc
	cmpl	$-1, %edx
	je	L49
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	leal	22988(%eax), %edi
	movl	%esi, 4(%esp)
	movl	%edi, %ecx
	.cfi_offset 6, -12
	movl	%edx, %esi
	cmpl	$9999, %edx
	je	L37
	movl	22988(%eax), %ecx
	cmpl	%ecx, %edi
	je	L38
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	xorl	%eax, %eax
	movl	(%ecx), %edx
	jmp	L41
	.p2align 5
	.p2align 4,,10
	.p2align 3
L54:
	movl	(%edx), %ebx
	addl	$1, %eax
	movl	%edx, %ecx
	cmpl	%edx, %edi
	je	L53
	movl	%ebx, %edx
L41:
	movswl	%ax, %ebx
	cmpl	%esi, %ebx
	jne	L54
	movl	(%esp), %ebx
	.cfi_restore 3
L37:
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	movl	%ecx, %eax
	addl	$12, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L53:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	(%esp), %ebx
	.cfi_restore 3
L38:
	xorl	%ecx, %ecx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L49:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__Z13Saveable_Initv.part.0;	.scl	3;	.type	32;	.endef
__Z13Saveable_Initv.part.0:
LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	movss	LC0, %xmm0
	movss	LC1, %xmm5
	movl	$_saveable_bunny, 32(%esp)
	movss	32(%esp), %xmm1
	movl	$_saveable_ai, 32(%esp)
	movss	LC3, %xmm4
	movss	LC5, %xmm3
	unpcklps	%xmm1, %xmm0
	movss	32(%esp), %xmm1
	movl	$_saveable_girlninj, 32(%esp)
	movss	LC7, %xmm2
	unpcklps	%xmm1, %xmm5
	movss	32(%esp), %xmm1
	movl	$_saveable_coolie, 32(%esp)
	movlhps	%xmm0, %xmm5
	movss	LC2, %xmm0
	unpcklps	%xmm1, %xmm0
	movss	32(%esp), %xmm1
	movl	$_saveable_lava, 32(%esp)
	unpcklps	%xmm1, %xmm4
	movss	32(%esp), %xmm1
	movl	$_saveable_hornet, 32(%esp)
	movlhps	%xmm0, %xmm4
	movss	LC4, %xmm0
	unpcklps	%xmm1, %xmm0
	movss	32(%esp), %xmm1
	movl	$_saveable_panel, 32(%esp)
	unpcklps	%xmm1, %xmm3
	movss	32(%esp), %xmm1
	movl	$_saveable_morph, 32(%esp)
	movlhps	%xmm0, %xmm3
	movss	LC6, %xmm0
	unpcklps	%xmm1, %xmm0
	movss	32(%esp), %xmm1
	movl	$_saveable_ripper2, 32(%esp)
	unpcklps	%xmm1, %xmm2
	movss	32(%esp), %xmm1
	movlhps	%xmm0, %xmm2
	movss	LC8, %xmm0
	movl	$_saveable_quake, 32(%esp)
	movss	32(%esp), %xmm6
	movl	$_saveable_skull, 32(%esp)
	unpcklps	%xmm1, %xmm0
	movl	$_saveable_weapon, 12(%esp)
	movss	LC9, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm1, %xmm7
	movss	32(%esp), %xmm1
	movl	$_saveable_serp, 32(%esp)
	movlhps	%xmm0, %xmm7
	movss	32(%esp), %xmm6
	movss	LC10, %xmm0
	movl	$_saveable_sumo, 32(%esp)
	movups	%xmm7, 16(%esp)
	unpcklps	%xmm1, %xmm0
	movss	LC11, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm1, %xmm7
	movss	32(%esp), %xmm1
	movl	$_saveable_spike, 32(%esp)
	movlhps	%xmm0, %xmm7
	movss	32(%esp), %xmm6
	movss	LC12, %xmm0
	unpcklps	%xmm1, %xmm0
	movss	LC13, %xmm1
	unpcklps	%xmm6, %xmm1
	movaps	%xmm1, %xmm6
	movss	LC16, %xmm1
	movlhps	%xmm0, %xmm6
	movss	12(%esp), %xmm0
	movups	%xmm6, 32(%esp)
	movss	LC14, %xmm6
	unpcklps	%xmm0, %xmm6
	movss	LC15, %xmm0
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm6, %xmm0
	cmpb	$0, __ZGVZ21Saveable_Init_DynamicvE19saveable_build_data
	jne	L56
	movl	_sector, %eax
	movb	$1, __ZGVZ21Saveable_Init_DynamicvE19saveable_build_data
	movl	%eax, __ZZ21Saveable_Init_DynamicvE19saveable_build_data
	movl	_sprite, %eax
	movl	%eax, __ZZ21Saveable_Init_DynamicvE19saveable_build_data+8
	movl	_wall, %eax
	movl	%eax, __ZZ21Saveable_Init_DynamicvE19saveable_build_data+16
L56:
	movl	__ZL10nummodules, %edx
	movl	$__ZZ21Saveable_Init_DynamicvE19saveable_build_data, _saveable_build+8
	movl	$3, _saveable_build+12
	movups	%xmm3, __ZL15saveablemodules+32(,%edx,4)
	movups	32(%esp), %xmm3
	leal	35(%edx), %eax
	movl	$_saveable_zombie, 32(%esp)
	movss	32(%esp), %xmm1
	movups	%xmm0, __ZL15saveablemodules+112(,%edx,4)
	movss	LC17, %xmm0
	movups	%xmm2, __ZL15saveablemodules+48(,%edx,4)
	movups	16(%esp), %xmm2
	unpcklps	%xmm1, %xmm0
	movl	%eax, __ZL10nummodules
	movl	$_saveable_sector, __ZL15saveablemodules+136(,%edx,4)
	movups	%xmm5, __ZL15saveablemodules(,%edx,4)
	movups	%xmm4, __ZL15saveablemodules+16(,%edx,4)
	movups	%xmm2, __ZL15saveablemodules+64(,%edx,4)
	movups	%xmm7, __ZL15saveablemodules+80(,%edx,4)
	movups	%xmm3, __ZL15saveablemodules+96(,%edx,4)
	movlps	%xmm0, __ZL15saveablemodules+128(,%edx,4)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__Z17WallSetupDontMovev;	.scl	3;	.type	32;	.endef
__Z17WallSetupDontMovev:
LFB5:
	.cfi_startproc
	movswl	_headspritestat+170, %edx
	cmpl	$-1, %edx
	je	L80
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
	movswl	_numwalls, %eax
	movl	_wall, %edi
	movl	_sprite, %ebx
	sall	$5, %eax
	movl	%eax, 12(%esp)
	addl	%edi, %eax
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L66:
	movswl	_headspritestat+172, %ecx
	movl	%edx, %esi
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpl	$-1, %ecx
	je	L64
	imull	$44, %esi, %esi
	movl	%edx, 4(%esp)
	addl	%ebx, %esi
	jmp	L67
	.p2align 5
	.p2align 4,,10
	.p2align 3
L61:
	cmpl	$-1, %ecx
	je	L76
L67:
	imull	$44, %ecx, %eax
	movswl	_nextspritestat(%ecx,%ecx), %ecx
	addl	%ebx, %eax
	movzwl	38(%eax), %edx
	cmpw	%dx, 38(%esi)
	jne	L61
	cmpl	8(%esp), %edi
	jnb	L61
	movl	12(%esp), %edx
	movl	%ebx, (%esp)
	leal	30(%edx), %ebp
	movl	$30, %edx
	.p2align 4
	.p2align 3
L63:
	movl	-30(%edi,%edx), %ebx
	cmpl	(%eax), %ebx
	jge	L62
	cmpl	%ebx, (%esi)
	jge	L62
	movl	-26(%edi,%edx), %ebx
	cmpl	4(%eax), %ebx
	jge	L62
	cmpl	%ebx, 4(%esi)
	jge	L62
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	orw	$32, (%edi,%edx)
	.p2align 4
	.p2align 3
L62:
	addl	$32, %edx
	cmpl	%ebp, %edx
	jne	L63
	movl	(%esp), %ebx
	cmpl	$-1, %ecx
	jne	L67
	.p2align 4
	.p2align 3
L76:
	movl	4(%esp), %edx
L64:
	cmpl	$-1, %edx
	jne	L66
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
L80:
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL13WallSetupLoopP10walltypev7ss;	.scl	3;	.type	32;	.endef
__ZL13WallSetupLoopP10walltypev7ss:
LFB6:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	addl	$30, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	movl	_wall, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%edi), %eax
	orw	%si, 30(%edi)
	cmpw	$16383, %ax
	ja	L82
	movl	%eax, %edx
	andl	$134217727, %eax
	sall	$5, %edx
	addl	$1, _wallchanged(,%eax,4)
	orw	%si, 30(%ecx,%edx)
L82:
	movzwl	8(%edi), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	cmpw	26(%eax), %bx
	je	L81
	.p2align 4
	.p2align 3
L85:
	leal	30(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	10(%eax), %edx
	orw	%si, 30(%eax)
	cmpw	$16383, %dx
	ja	L84
	movl	%edx, %edi
	andl	$134217727, %edx
	sall	$5, %edi
	addl	$1, _wallchanged(,%edx,4)
	orw	%si, 30(%ecx,%edi)
L84:
	movzwl	8(%eax), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	cmpw	26(%eax), %bx
	jne	L85
L81:
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
LFE6:
	.p2align 4
	.globl	__Z10NullRippers
	.def	__Z10NullRippers;	.scl	2;	.type	32;	.endef
__Z10NullRippers:
LFB7:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %edx
	movl	_User(,%edx,4), %eax
	testb	$32, 70(%eax)
	jne	L94
	movl	%edx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L94:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	movl	%edx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z12DoRipperPains
	.def	__Z12DoRipperPains;	.scl	2;	.type	32;	.endef
__Z12DoRipperPains:
LFB9:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %ebx
	testb	$32, 70(%ebx)
	jne	L102
L96:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L103
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L102:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L96
	.p2align 4,,10
	.p2align 3
L103:
	movl	_User(,%esi,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%esi, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z11NullRipper2s;	.scl	3;	.type	32;	.endef
__Z11NullRipper2s:
LFB12:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %edx
	movl	_User(,%edx,4), %eax
	testb	$32, 70(%eax)
	jne	L110
	movl	%edx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	movl	%edx, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.def	__Z13DoRipper2Pains;	.scl	3;	.type	32;	.endef
__Z13DoRipper2Pains:
LFB13:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %ebx
	testb	$32, 70(%ebx)
	jne	L118
L112:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L119
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L118:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L112
	.p2align 4,,10
	.p2align 3
L119:
	movl	_User(,%esi,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%esi, 16(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z13RotatorSwitchss
	.def	__Z13RotatorSwitchss;	.scl	2;	.type	32;	.endef
__Z13RotatorSwitchss:
LFB14:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movzwl	_headspritestat, %edx
	movzwl	24(%esp), %ecx
	cmpw	$-1, %dx
	jne	L121
	jmp	L120
	.p2align 6
	.p2align 4,,10
	.p2align 3
L124:
	cmpw	$-1, %dx
	je	L120
L121:
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L124
	cmpw	%cx, 40(%eax)
	jne	L124
	movswl	28(%esp), %ebx
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	$1, %ebx
	movl	%edx, 8(%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	cmpw	$-1, %dx
	jne	L121
L120:
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z12DoRipperHangs
	.def	__Z12DoRipperHangs;	.scl	2;	.type	32;	.endef
__Z12DoRipperHangs:
LFB16:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jg	L132
	movl	%ebx, %eax
	movl	$_sg_RipperJumpAttack, %edx
	movl	%ecx, (%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	(%esp), %ecx
	movl	16(%ecx), %eax
	movl	4(%eax), %eax
	addl	%eax, 76(%ecx)
L132:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.def	__Z17DoRipperQuickJumps;	.scl	3;	.type	32;	.endef
__Z17DoRipperQuickJumps:
LFB17:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L137
	testb	$8, 43(%eax)
	jne	L142
L137:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L142:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$_sg_RipperJumpAttack, %edx
	movl	%ecx, (%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	(%esp), %ecx
	movl	$1, %eax
	movl	$30, 76(%ecx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z18DoRipperStandHearts
	.def	__Z18DoRipperStandHearts;	.scl	2;	.type	32;	.endef
__Z18DoRipperStandHearts:
LFB19:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %ebx
	testb	$32, 70(%ebx)
	jne	L150
L144:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L151
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L150:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L144
	.p2align 4,,10
	.p2align 3
L151:
	movl	%esi, %eax
	movl	$_sg_RipperRun, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	addl	$4, %esp
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
LFE19:
	.p2align 4
	.def	__Z13DoRipper2Hangs;	.scl	3;	.type	32;	.endef
__Z13DoRipper2Hangs:
LFB20:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jg	L153
	movl	%ebx, %eax
	movl	$_sg_Ripper2JumpAttack, %edx
	movl	%ecx, (%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	(%esp), %ecx
	movl	16(%ecx), %eax
	movl	4(%eax), %eax
	addl	%eax, 76(%ecx)
L153:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.def	__Z18DoRipper2QuickJumps;	.scl	3;	.type	32;	.endef
__Z18DoRipper2QuickJumps:
LFB21:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L158
	testb	$8, 43(%eax)
	jne	L163
L158:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L163:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$_sg_Ripper2JumpAttack, %edx
	movl	%ecx, (%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	(%esp), %ecx
	movl	$1, %eax
	movl	$30, 76(%ecx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.def	__Z17InitRipper2Charges;	.scl	3;	.type	32;	.endef
__Z17InitRipper2Charges:
LFB23:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %ebx
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_User(,%ebx,4), %ecx
	movl	40(%ecx), %eax
	movl	$__Z17DoActorMoveClosers, 36(%ecx)
	movl	4(%eax), %edx
	movl	$__Z17DoActorMoveClosers, %eax
	cmpl	%edx, 20(%ecx)
	je	L165
	movl	%ebx, %eax
	movl	%ecx, 8(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esp), %ecx
	movl	36(%ecx), %eax
L165:
	movl	%ebx, (%esp)
	call	*%eax
	movl	%ebx, %eax
	movl	$_sg_Ripper2RunFast, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z16DoRipperRipHearts
	.def	__Z16DoRipperRipHearts;	.scl	2;	.type	32;	.endef
__Z16DoRipperRipHearts:
LFB25:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$_sg_RipperHeart, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %eax
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	movl	200(%edi), %ebx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$720, %eax
	movw	%ax, 216(%edi)
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
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
LFE25:
	.p2align 4
	.globl	__Z17DoRipper2RipHearts
	.def	__Z17DoRipper2RipHearts;	.scl	2;	.type	32;	.endef
__Z17DoRipper2RipHearts:
LFB26:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$_sg_Ripper2Heart, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %eax
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	movl	200(%edi), %ebx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$720, %eax
	movw	%ax, 216(%edi)
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
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
LFE26:
	.p2align 4
	.def	__Z16DoRipperMoveHangs;	.scl	3;	.type	32;	.endef
__Z16DoRipperMoveHangs:
LFB27:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %edi
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%esi, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	jne	L174
	movl	264(%edi), %ecx
	movl	%ecx, %eax
	andl	$114688, %eax
	cmpl	$32768, %eax
	je	L176
L174:
	addl	$4, %esp
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
L176:
	.cfi_restore_state
	movl	40(%edi), %eax
	movl	%ecx, (%esp)
	movl	120(%eax), %edx
	movl	%esi, %eax
	movl	$-1171354717, %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_randomseed, %eax
	movl	(%esp), %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	andl	$16383, %ecx
	leal	1(%eax,%edx,4), %eax
	movl	_wall, %edx
	sall	$5, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$3, %eax
	imull	$120, %eax, %eax
	addl	$2, %eax
	movw	%ax, 216(%edi)
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	leal	-512(%eax), %ecx
	movl	%edx, %eax
	mull	%esi
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L174
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__Z14DoRipperHangJFs;	.scl	3;	.type	32;	.endef
__Z14DoRipperHangJFs:
LFB29:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movl	68(%ecx), %eax
	testb	$96, %al
	je	L178
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	testb	$32, %al
	je	L179
	call	__Z6DoJumps
	movl	4(%esp), %ecx
L180:
	testb	$96, 68(%ecx)
	jne	L181
	movl	_User(,%ebx,4), %ecx
	.p2align 4
	.p2align 3
L178:
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L182
	testb	$8, 43(%eax)
	jne	L194
L182:
	movl	$__Z13DoActorDecides, 36(%ecx)
	movl	%ebx, (%esp)
	call	__Z13DoActorDecides
L181:
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z16DoRipperMoveHangs
	.p2align 4,,10
	.p2align 3
L179:
	.cfi_restore_state
	call	__Z6DoFalls
	movl	4(%esp), %ecx
	jmp	L180
	.p2align 4,,10
	.p2align 3
L194:
	movl	%ebx, %eax
	movl	$_sg_RipperJumpAttack, %edx
	movl	%ecx, 4(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	4(%esp), %ecx
	xorl	%eax, %eax
	movl	$30, 76(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z16DoRipperMoveJumps
	.def	__Z16DoRipperMoveJumps;	.scl	2;	.type	32;	.endef
__Z16DoRipperMoveJumps:
LFB30:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z14DoRipperHangJFs
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__Z17DoRipper2MoveHangs;	.scl	3;	.type	32;	.endef
__Z17DoRipper2MoveHangs:
LFB31:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %edi
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%esi, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	jne	L198
	movl	264(%edi), %ecx
	movl	%ecx, %eax
	andl	$114688, %eax
	cmpl	$32768, %eax
	je	L200
L198:
	addl	$4, %esp
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
L200:
	.cfi_restore_state
	movl	200(%edi), %edx
	movl	8(%ebx), %eax
	subl	8(%edx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$64000, %eax
	jg	L198
	movl	40(%edi), %eax
	movl	%ecx, (%esp)
	movl	120(%eax), %edx
	movl	%esi, %eax
	movl	$-1171354717, %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_randomseed, %eax
	movl	(%esp), %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	andl	$16383, %ecx
	leal	1(%eax,%edx,4), %eax
	movl	_wall, %edx
	sall	$5, %ecx
	andl	$65535, %eax
	movl	%eax, _randomseed
	xorl	%eax, %eax
	movw	%ax, 216(%edi)
	leal	(%edx,%ecx), %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	leal	-512(%eax), %ecx
	movl	%edx, %eax
	mull	%esi
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L198
	.cfi_endproc
LFE31:
	.p2align 4
	.def	__Z15DoRipper2HangJFs;	.scl	3;	.type	32;	.endef
__Z15DoRipper2HangJFs:
LFB32:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	movl	68(%ecx), %eax
	testb	$96, %al
	je	L202
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	testb	$32, %al
	je	L203
	call	__Z6DoJumps
	movl	4(%esp), %ecx
L204:
	testb	$96, 68(%ecx)
	jne	L205
	movl	_User(,%ebx,4), %ecx
	.p2align 4
	.p2align 3
L202:
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L206
	testb	$8, 43(%eax)
	jne	L218
L206:
	movl	$__Z13DoActorDecides, 36(%ecx)
	movl	%ebx, (%esp)
	call	__Z13DoActorDecides
L205:
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17DoRipper2MoveHangs
	.p2align 4,,10
	.p2align 3
L203:
	.cfi_restore_state
	call	__Z6DoFalls
	movl	4(%esp), %ecx
	jmp	L204
	.p2align 4,,10
	.p2align 3
L218:
	movl	%ebx, %eax
	movl	$_sg_Ripper2JumpAttack, %edx
	movl	%ecx, 4(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	4(%esp), %ecx
	xorl	%eax, %eax
	movl	$30, 76(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__Z17DoRipper2MoveJumps;	.scl	3;	.type	32;	.endef
__Z17DoRipper2MoveJumps:
LFB33:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z15DoRipper2HangJFs
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z23DoRipperBeginJumpAttacks
	.def	__Z23DoRipperBeginJumpAttacks;	.scl	2;	.type	32;	.endef
__Z23DoRipperBeginJumpAttacks:
LFB34:
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
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %ebx
	movl	_User(,%ebx,4), %edi
	imull	$44, %ebx, %esi
	addl	_sprite, %esi
	movl	200(%edi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movzwl	_sintable(%eax,%eax), %ecx
	movl	%eax, %ebp
	addl	$512, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	sarw	$7, %cx
	movl	$81921, 12(%esp)
	movswl	98(%edi), %eax
	movswl	%cx, %ecx
	sarw	$7, %dx
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movswl	%dx, %edx
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__Z11move_spritesiiiiiji
	movl	%eax, 32(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	%ecx, %edx
	movzwl	%cx, %ecx
	andl	$32767, %edx
	movl	%edx, 28(%esp)
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	_krandcount, %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L222
	movswl	28(%esi), %ebp
	movl	28(%esp), %eax
	leal	768(%eax,%ebp), %ebp
	andl	$2047, %ebp
L223:
	movl	20(%esp), %eax
	movl	%ecx, _randomseed
	movl	%eax, _spritechanged(,%edx,4)
	movl	24(%esp), %eax
	movw	%bp, 28(%esi)
	movl	%ebx, (%esp)
	movl	$3, 4(%esp)
	movl	%eax, _krandcount
	call	__Z15DoActorSetSpeedsh
	movl	%ebx, (%esp)
	movl	$-400, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%edi), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edi)
	movl	$17, %eax
	movw	%ax, 94(%edi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	movl	%ebx, 56(%esp)
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
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L222:
	.cfi_restore_state
	movl	28(%esp), %eax
	leal	-256(%eax,%ebp), %ebp
	andl	$2047, %ebp
	jmp	L223
	.cfi_endproc
LFE34:
	.p2align 4
	.def	__Z24DoRipper2BeginJumpAttacks;	.scl	3;	.type	32;	.endef
__Z24DoRipper2BeginJumpAttacks:
LFB35:
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
	movswl	44(%esp), %ebx
	movl	_User(,%ebx,4), %edi
	imull	$44, %ebx, %esi
	addl	_sprite, %esi
	movl	200(%edi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movzwl	_sintable(%eax,%eax), %ecx
	movl	%eax, %ebp
	addl	$512, %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	sarw	$7, %cx
	movl	$81921, 12(%esp)
	movswl	98(%edi), %eax
	movswl	%cx, %ecx
	sarw	$7, %dx
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movswl	%dx, %edx
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__Z11move_spritesiiiiiji
	movl	$-1171354717, %edx
	movl	%eax, %ecx
	leal	28(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	testl	%ecx, %ecx
	jne	L234
L226:
	movl	%eax, _spritechanged(,%edx,4)
	movw	%bp, 28(%esi)
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_randomseed, %eax
	movl	$-499, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L227
	sall	$14, %eax
	movl	$-939472145, %edx
	movl	$-100, %ecx
	mull	%edx
	shrl	$21, %edx
	subl	%edx, %ecx
L227:
	movswl	%cx, %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%edi), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edi)
	movl	$8, %eax
	movw	%ax, 94(%edi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	movl	%ebx, 44(%esp)
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
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L234:
	.cfi_restore_state
	movswl	28(%esi), %ecx
	addl	$1, _krandcount
	movl	%ecx, 20(%esp)
	movl	_randomseed, %ecx
	leal	(%ecx,%ecx,4), %ebp
	leal	1(%ecx,%ebp,4), %ecx
	movzwl	%cx, %ebp
	andl	$32767, %ecx
	movl	%ebp, _randomseed
	movl	20(%esp), %ebp
	leal	768(%ebp,%ecx), %ebp
	andl	$2047, %ebp
	jmp	L226
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z12DoRipperMoves
	.def	__Z12DoRipperMoves;	.scl	2;	.type	32;	.endef
__Z12DoRipperMoves:
LFB37:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	cmpw	$0, 204(%esi)
	jne	L259
L236:
	movl	68(%esi), %eax
	testb	$96, %al
	jne	L260
L237:
	movl	_User(,%ebx,4), %ecx
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L241
	testb	$8, 43(%eax)
	jne	L261
L241:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	68(%esi), %eax
	testl	$2097152, %eax
	je	L243
	.p2align 4
	.p2align 3
L263:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	cmpw	$0, 218(%esi)
	js	L244
L264:
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L245
	.p2align 4,,10
	.p2align 3
L260:
	movl	%ebx, (%esp)
	testb	$32, %al
	jne	L262
	call	__Z6DoFalls
L239:
	movl	68(%esi), %eax
	testb	$96, %al
	je	L237
	testl	$2097152, %eax
	jne	L263
L243:
	cmpw	$0, 218(%esi)
	jns	L264
L244:
	movl	%ebx, (%esp)
	call	*36(%esi)
L245:
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
L242:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L262:
	.cfi_restore_state
	call	__Z6DoJumps
	jmp	L239
	.p2align 4,,10
	.p2align 3
L259:
	movl	%ebx, (%esp)
	call	__Z13DoScaleSprites
	jmp	L236
	.p2align 4,,10
	.p2align 3
L261:
	movl	$_sg_RipperJumpAttack, %edx
	movl	%ebx, %eax
	movl	%ecx, 4(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	4(%esp), %ecx
	movl	$30, 76(%ecx)
	jmp	L242
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__Z13DoRipper2Moves;	.scl	3;	.type	32;	.endef
__Z13DoRipper2Moves:
LFB38:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %ebx
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	_User(,%ebx,4), %esi
	cmpw	$1008, 40(%eax)
	je	L290
L266:
	cmpw	$0, 204(%esi)
	jne	L291
L267:
	movl	68(%esi), %eax
	testb	$96, %al
	jne	L292
L268:
	movl	_User(,%ebx,4), %ecx
	movl	128(%ecx), %eax
	testl	%eax, %eax
	je	L272
	testb	$8, 43(%eax)
	jne	L293
L272:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	68(%esi), %eax
	testl	$2097152, %eax
	je	L274
	.p2align 4
	.p2align 3
L295:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	cmpw	$0, 218(%esi)
	js	L275
L296:
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L276
	.p2align 4,,10
	.p2align 3
L292:
	movl	%ebx, (%esp)
	testb	$32, %al
	jne	L294
	call	__Z6DoFalls
L270:
	movl	68(%esi), %eax
	testb	$96, %al
	je	L268
	testl	$2097152, %eax
	jne	L295
L274:
	cmpw	$0, 218(%esi)
	jns	L296
L275:
	movl	%ebx, (%esp)
	call	*36(%esi)
L276:
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
L273:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
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
	call	__Z6DoJumps
	jmp	L270
	.p2align 4,,10
	.p2align 3
L290:
	cmpw	$1, 38(%eax)
	jne	L266
	movl	%ebx, (%esp)
	call	__Z12DoCheckSwarms
	jmp	L266
	.p2align 4,,10
	.p2align 3
L291:
	movl	%ebx, (%esp)
	call	__Z13DoScaleSprites
	jmp	L267
	.p2align 4,,10
	.p2align 3
L293:
	movl	$_sg_Ripper2JumpAttack, %edx
	movl	%ebx, %eax
	movl	%ecx, 4(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	4(%esp), %ecx
	movl	$30, 76(%ecx)
	jmp	L273
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z12SetupRipper2s
	.def	__Z12SetupRipper2s;	.scl	2;	.type	32;	.endef
__Z12SetupRipper2s:
LFB39:
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
	movswl	44(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L298
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L299:
	testl	%eax, %eax
	je	L300
	movl	$0, 76(%eax)
	movl	$_s_Ripper2Run, 24(%eax)
	movl	$_s_Ripper2Run, 16(%eax)
	movswl	_s_Ripper2Run, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L300
	andl	$63, %eax
	movb	%al, 3(%edx)
L300:
	movl	$_Ripper2Attrib, 48(%esi)
	movl	$-1171354717, %ebp
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_sprite, %ecx
	leal	18(%ebx), %eax
	movl	$_s_Ripper2Die, 28(%esi)
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	subl	%ecx, %edx
	movl	$_sg_Ripper2Run, 20(%esi)
	movl	%edx, %eax
	mull	%ebp
	leal	21(%ebx), %eax
	movl	%eax, 16(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$-128, 18(%ebx)
	movl	%edx, %eax
	mull	%ebp
	leal	20(%ebx), %eax
	movl	%eax, 12(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$55, 21(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$7, 17(%ebx)
	movb	$55, 20(%ebx)
	movl	$_Ripper2Personality, 8(%esp)
	je	L311
	movl	$_Ripper2ActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
L303:
	orl	$16777216, 68(%esi)
	addl	$24, %esp
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
L311:
	.cfi_restore_state
	movl	%edi, (%esp)
	movl	$_Ripper2BrownActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %edi
	movl	12(%esp), %ecx
	subl	%edi, %ecx
	movl	%ecx, %eax
	mull	%ebp
	movl	%edx, %ecx
	movl	16(%esp), %edx
	shrl	$5, %ecx
	subl	%edi, %edx
	addl	$1, _spritechanged(,%ecx,4)
	movl	%edx, %eax
	addb	$40, 20(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$40, 21(%ebx)
	testb	$16, 13(%ebx)
	jne	L302
	movl	$500, %eax
	movw	%ax, 84(%esi)
L302:
	movl	20(%esp), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$32, 18(%ebx)
	jmp	L303
	.p2align 4,,10
	.p2align 3
L298:
	movl	$4320, %edx
	movl	$_s_Ripper2Run, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$200, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	movl	_User(,%edi,4), %eax
	jmp	L299
	.cfi_endproc
LFE39:
	.p2align 4
	.def	__Z12ChestRipper2s;	.scl	3;	.type	32;	.endef
__Z12ChestRipper2s:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %edi
	movswl	28(%esp), %ebx
	imull	$44, %ebx, %ebx
	leal	8(%edi,%ebx), %esi
	leal	4(%edi,%ebx), %ecx
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	movl	$431, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%ebx,%edi), %edx
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	addl	$8, %esp
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
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__Z19DoRipper2StandHearts;	.scl	3;	.type	32;	.endef
__Z19DoRipper2StandHearts:
LFB42:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movswl	32(%esp), %esi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %edi
	testb	$32, 70(%edi)
	jne	L330
L315:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movl	__ZZ19DoRipper2StandHeartsE14riphearthandle, %eax
	testl	%eax, %eax
	jg	L316
L318:
	imull	$44, %esi, %eax
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ecx
	addl	%eax, %ebx
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	8(%esp), %ecx
	movl	$318, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	%eax, __ZZ19DoRipper2StandHeartsE14riphearthandle
L317:
	movzwl	216(%edi), %eax
	subl	$6, %eax
	movw	%ax, 216(%edi)
	testw	%ax, %ax
	jle	L331
L319:
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	xorl	%eax, %eax
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L316:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L318
	testl	%eax, %eax
	je	L318
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	L318
	jmp	L317
	.p2align 4,,10
	.p2align 3
L330:
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L315
	.p2align 4,,10
	.p2align 3
L331:
	movl	$_sg_Ripper2Run, %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L319
	.cfi_endproc
LFE42:
	.p2align 4
	.def	__Z19GetUpperLowerSectorsiiPsS_;	.scl	3;	.type	32;	.endef
__Z19GetUpperLowerSectorsiiPsS_:
LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movw	%ax, 10(%esp)
	movl	%ecx, (%esp)
L360:
	movl	$0, 4(%esp)
	movl	$_GlobStackSect, %ebx
L342:
	movswl	(%ebx), %edi
	movl	(%esp), %edx
	movl	%ebp, %eax
	movl	%edi, %ecx
	movl	%edi, %esi
	call	_inside
	cmpl	$1, %eax
	je	L380
L334:
	addl	$2, %ebx
	cmpl	$_GlobStackSect+4, %ebx
	jne	L342
	cmpl	$1, 4(%esp)
	jle	L381
L343:
	cmpl	$2, 4(%esp)
	jne	L382
	movswl	12(%esp), %ebx
	movzwl	14(%esp), %eax
	movl	_sector, %ecx
	movl	64(%esp), %edi
	movl	%ebx, %edx
	leal	(%ebx,%ebx,4), %ebp
	movswl	%ax, %ebx
	movl	68(%esp), %esi
	leal	(%ebx,%ebx,4), %ebx
	movl	8(%ecx,%ebx,8), %ebx
	cmpl	%ebx, 8(%ecx,%ebp,8)
	movl	%edx, %ecx
	cmovl	%eax, %edx
	cmovl	%ecx, %eax
	movw	%dx, (%esi)
	movw	%ax, (%edi)
	addl	$44, %esp
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
L381:
	.cfi_restore_state
	movswl	_numsectors, %ebx
	testw	%bx, %bx
	jle	L344
	movl	$0, 4(%esp)
	movl	_sprite, %edi
	jmp	L356
	.p2align 4,,10
	.p2align 3
L346:
	subl	$1, %ebx
	je	L383
L356:
	leal	-1(%ebx), %esi
	movl	(%esp), %edx
	movl	%ebp, %eax
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L346
	movzwl	_headspritesect-2(%ebx,%ebx), %edx
	movb	$0, 9(%esp)
	cmpw	$-1, %dx
	jne	L347
	jmp	L346
	.p2align 5
	.p2align 4,,10
	.p2align 3
L352:
	cmpw	$-1, %dx
	je	L384
L347:
	movswl	%dx, %eax
	movzwl	_nextspritesect(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	%edi, %eax
	cmpw	$60, 26(%eax)
	jne	L352
	movzwl	40(%eax), %ecx
	subl	$110, %ecx
	cmpw	$5, %cx
	ja	L352
	movzwl	10(%esp), %ecx
	cmpw	%cx, 38(%eax)
	sete	%al
	orb	%al, 9(%esp)
	cmpw	$-1, %dx
	jne	L347
	.p2align 4
	.p2align 3
L384:
	cmpb	$0, 9(%esp)
	je	L346
	movl	4(%esp), %eax
	cmpl	$1, %eax
	jle	L385
	cmpl	$15, 4(%esp)
	jg	L355
	jmp	L354
	.p2align 4,,10
	.p2align 3
L383:
	movl	4(%esp), %ecx
	testl	%ecx, %ecx
	je	L344
	cmpl	$1, 4(%esp)
	jne	L343
	movl	64(%esp), %edi
	movl	68(%esp), %esi
	movzwl	12(%esp), %eax
	movw	%ax, (%esi)
	movw	%ax, (%edi)
	addl	$44, %esp
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
L385:
	.cfi_restore_state
	movw	%si, _GlobStackSect(%eax,%eax)
L354:
	movl	4(%esp), %eax
	movw	%si, 12(%esp,%eax,2)
L355:
	addl	$1, 4(%esp)
	jmp	L346
	.p2align 4,,10
	.p2align 3
L344:
	movl	64(%esp), %edi
	movl	68(%esp), %esi
	movl	$-1, %eax
	movl	$-1, %edx
	movw	%ax, (%edi)
	movw	%dx, (%esi)
	addl	$44, %esp
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
L382:
	.cfi_restore_state
	subl	$1, %ebp
	jmp	L360
	.p2align 4,,10
	.p2align 3
L380:
	movzwl	_headspritesect(%edi,%edi), %edx
	movb	$0, 9(%esp)
	movl	_sprite, %edi
	cmpw	$-1, %dx
	jne	L338
	jmp	L334
	.p2align 5
	.p2align 4,,10
	.p2align 3
L341:
	cmpw	$-1, %dx
	je	L386
L338:
	movswl	%dx, %eax
	movzwl	_nextspritesect(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	%edi, %eax
	cmpw	$60, 26(%eax)
	jne	L341
	movzwl	40(%eax), %ecx
	subl	$110, %ecx
	cmpw	$5, %cx
	ja	L341
	movzwl	10(%esp), %ecx
	cmpw	%cx, 38(%eax)
	sete	%al
	orb	%al, 9(%esp)
	cmpw	$-1, %dx
	jne	L338
	.p2align 4
	.p2align 3
L386:
	cmpb	$0, 9(%esp)
	je	L334
	movl	4(%esp), %eax
	movw	%si, 12(%esp,%eax,2)
	addl	$1, %eax
	movl	%eax, 4(%esp)
	jmp	L334
	.cfi_endproc
LFE44:
	.p2align 4
	.def	__Z18DoRotatorSetInterps;	.scl	3;	.type	32;	.endef
__Z18DoRotatorSetInterps:
LFB45:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movzwl	(%eax), %esi
	movzwl	2(%eax), %edi
	addl	%esi, %edi
	subl	$1, %edi
	cmpw	%si, %di
	jl	L387
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	jmp	L390
	.p2align 4,,10
	.p2align 3
L389:
	addl	$1, %esi
	cmpw	%si, %di
	jl	L393
L390:
	movswl	%si, %ebx
	movl	_wall, %edx
	sall	$5, %ebx
	movl	%ebx, %eax
	addl	%ebx, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z16setinterpolationPi
	movl	_wall, %eax
	leal	4(%eax,%ebx), %edx
	movl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z16setinterpolationPi
	movl	_wall, %edx
	movzwl	10(%edx,%ebx), %eax
	cmpw	$16383, %ax
	ja	L389
	movswl	%ax, %ebx
	addl	$1, %esi
	sall	$5, %ebx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z16setinterpolationPi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	leal	4(%edx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z16setinterpolationPi
	cmpw	%si, %di
	jge	L390
L393:
	movl	4(%esp), %ebx
	.cfi_restore 3
L387:
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$16, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z16SetRotatorActives
	.def	__Z16SetRotatorActives;	.scl	2;	.type	32;	.endef
__Z16SetRotatorActives:
LFB46:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	140(%ebx), %esi
	movl	(%ebx), %edi
	movl	%eax, (%esp)
	call	__Z18DoRotatorSetInterps
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movswl	38(%esi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	orl	$8, 68(%ebx)
	movl	$0, 76(%ebx)
	movl	8(%edi), %eax
	movzwl	38(%esi), %esi
	movzwl	_headspritestat, %ebx
	testl	%eax, %eax
	jne	L401
	.p2align 4
	.p2align 3
L398:
	cmpw	$-1, %bx
	je	L394
L412:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L398
	cmpw	%si, 40(%eax)
	jne	L398
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	cmpw	$-1, %bx
	jne	L412
L394:
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
L414:
	.cfi_restore_state
	cmpw	%si, 40(%eax)
	je	L413
L401:
	cmpw	$-1, %bx
	je	L394
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L401
	jmp	L414
	.p2align 4,,10
	.p2align 3
L413:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L401
	.cfi_endproc
LFE46:
	.p2align 4
	.def	__Z14ReverseRotators;	.scl	3;	.type	32;	.endef
__Z14ReverseRotators:
LFB47:
	.cfi_startproc
	movswl	4(%esp), %edx
	movl	_User(,%edx,4), %eax
	movl	76(%eax), %ecx
	testl	%ecx, %ecx
	jne	L419
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	testl	%edx, %edx
	jne	L417
	movl	%ecx, 8(%eax)
L418:
	negl	20(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L417:
	cmpl	%ecx, %edx
	jne	L418
	negl	20(%eax)
	movl	$0, 8(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L419:
	movl	$0, 76(%eax)
	movl	%edx, 4(%esp)
	jmp	__Z16SetRotatorActives
	.cfi_endproc
LFE47:
	.section .rdata,"dr"
	.align 4
LC18:
	.ascii "This only opens in single play.\0"
	.text
	.p2align 4
	.globl	__Z14DoRotatorMatchP12PLAYERstructsh
	.def	__Z14DoRotatorMatchP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
__Z14DoRotatorMatchP12PLAYERstructsh:
LFB48:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+142, %ebx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movzwl	32(%esp), %ebp
	movl	%esi, 12(%esp)
	cmpw	$-1, %bx
	.cfi_offset 6, -16
	je	L443
	movl	28(%esp), %eax
	cmpb	$0, 36(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	$-1, %esi
	setne	5(%esp)
	testl	%eax, %eax
	jne	L422
	jmp	L431
	.p2align 6
	.p2align 4,,10
	.p2align 3
L440:
	cmpw	$-1, %bx
	je	L477
L422:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$143, 40(%eax)
	jne	L440
	cmpw	38(%eax), %bp
	jne	L440
	movzwl	42(%eax), %edi
	movw	%di, 6(%esp)
	testw	$512, %di
	je	L433
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L434
	cmpw	$1, %di
	je	L434
L433:
	cmpb	$1, 18(%eax)
	jne	L436
	cmpb	$0, 5(%esp)
	jne	L440
L436:
	movswl	24(%eax), %eax
	cmpw	$-1, %si
	cmove	%ecx, %esi
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L438
	cmpw	$29, 12(%eax)
	je	L478
L438:
	movl	_User(,%edx,4), %eax
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L479
	call	__Z16SetRotatorActives
	cmpw	$-1, %bx
	jne	L422
	.p2align 4
	.p2align 3
L477:
	movl	16(%esp), %edi
	.cfi_restore 7
L420:
	movl	%esi, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	20(%esp), %ebp
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L481:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	38(%eax), %bp
	je	L480
L425:
	cmpw	$-1, %bx
	je	L477
L431:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$143, 40(%eax)
	jne	L425
	jmp	L481
	.p2align 4,,10
	.p2align 3
L480:
	testb	$2, 43(%eax)
	jne	L482
L426:
	cmpb	$1, 18(%eax)
	jne	L447
	cmpb	$0, 5(%esp)
	jne	L425
L447:
	movl	_User(,%edx,4), %eax
	cmpw	$-1, %si
	cmove	%ecx, %esi
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L429
	call	__Z16SetRotatorActives
	jmp	L425
	.p2align 4,,10
	.p2align 3
L482:
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L425
	cmpw	$1, %di
	jne	L426
	jmp	L425
	.p2align 4,,10
	.p2align 3
L479:
	call	__Z14ReverseRotators
	jmp	L440
L478:
	movswl	22(%eax), %eax
	testw	%ax, %ax
	je	L438
	movl	_KeyDoorMessage-4(,%eax,4), %edx
	movl	28(%esp), %eax
	movl	$-1, %esi
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L420
	.p2align 4,,10
	.p2align 3
L434:
	.cfi_restore_state
	testb	$32, 6(%esp)
	je	L440
	movl	28(%esp), %eax
	movl	$LC18, %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L440
L429:
	call	__Z14ReverseRotators
	jmp	L425
L443:
	.cfi_restore 7
	movl	$-1, %esi
	jmp	L420
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z16DoRotatorOperateP12PLAYERstructs
	.def	__Z16DoRotatorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z16DoRotatorOperateP12PLAYERstructs:
LFB49:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_sector, %edx
	movswl	24(%esp), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	36(%eax), %eax
	testw	%ax, %ax
	jle	L486
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	movswl	%ax, %ebx
	movl	%ebx, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	jne	L488
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	movl	12(%esp), %ebx
	.cfi_restore 3
L483:
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L488:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	12(%esp), %ebx
	.cfi_restore 3
L486:
	movl	$-1, %eax
	jmp	L483
	.cfi_endproc
LFE49:
	.p2align 4
	.def	__Z19DoRotatorStopInterps;	.scl	3;	.type	32;	.endef
__Z19DoRotatorStopInterps:
LFB50:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movzwl	(%eax), %esi
	movzwl	2(%eax), %edi
	addl	%esi, %edi
	subl	$1, %edi
	cmpw	%si, %di
	jl	L489
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	jmp	L492
	.p2align 4,,10
	.p2align 3
L491:
	addl	$1, %esi
	cmpw	%si, %di
	jl	L495
L492:
	movswl	%si, %ebx
	movl	_wall, %edx
	sall	$5, %ebx
	movl	%ebx, %eax
	addl	%ebx, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z17stopinterpolationPi
	movl	_wall, %eax
	leal	4(%eax,%ebx), %edx
	movl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z17stopinterpolationPi
	movl	_wall, %edx
	movzwl	10(%edx,%ebx), %eax
	cmpw	$16383, %ax
	ja	L491
	movswl	%ax, %ebx
	addl	$1, %esi
	sall	$5, %ebx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z17stopinterpolationPi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	leal	4(%edx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	__Z17stopinterpolationPi
	cmpw	%si, %di
	jge	L492
L495:
	movl	4(%esp), %ebx
	.cfi_restore 3
L489:
	movl	8(%esp), %esi
	movl	12(%esp), %edi
	addl	$16, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.p2align 4
	.def	__Z18SetRotatorInactives;	.scl	3;	.type	32;	.endef
__Z18SetRotatorInactives:
LFB51:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	140(%ebx), %esi
	movl	%eax, (%esp)
	call	__Z19DoRotatorStopInterps
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%esi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	andl	$-9, 68(%ebx)
	addl	$12, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE51:
	.p2align 4
	.def	__Z13DoRotatorMoves;	.scl	3;	.type	32;	.endef
__Z13DoRotatorMoves:
LFB53:
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
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %eax
	movl	_User(,%eax,4), %esi
	movl	%eax, 24(%esp)
	movl	(%esi), %ebx
	movl	140(%esi), %eax
	movl	8(%ebx), %edx
	movl	%eax, 40(%esp)
	movl	(%ebx), %eax
	cmpl	%edx, %eax
	jge	L499
	movl	12(%ebx), %ecx
	addl	%ecx, %eax
	addl	20(%ebx), %ecx
	movl	%eax, (%ebx)
	movl	%ecx, 12(%ebx)
	cmpl	%eax, %edx
	jl	L538
L500:
	cmpl	%eax, %edx
	je	L501
	movb	$0, 35(%esp)
L503:
	movswl	_headspritestat+144, %edx
	cmpl	$-1, %edx
	je	L512
	movl	_sprite, %eax
	movl	$99999, 36(%esp)
	movl	$0, 44(%esp)
	movl	%eax, 48(%esp)
	movl	40(%esp), %eax
	movl	%ebx, 28(%esp)
	movzwl	38(%eax), %esi
	jmp	L514
	.p2align 5
	.p2align 4,,10
	.p2align 3
L513:
	cmpl	$-1, %edx
	je	L540
L514:
	imull	$44, %edx, %eax
	addl	48(%esp), %eax
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpw	%si, 38(%eax)
	jne	L513
	movl	40(%esp), %edi
	movl	(%eax), %ebx
	subl	(%edi), %ebx
	movl	%ebx, %ecx
	negl	%ecx
	cmovs	%ebx, %ecx
	movl	4(%eax), %ebx
	subl	4(%edi), %ebx
	movl	%ebx, %edi
	negl	%edi
	cmovns	%edi, %ebx
	cmpl	%ebx, %ecx
	leal	(%ecx,%ebx), %edi
	cmovg	%ebx, %ecx
	movl	36(%esp), %ebx
	sarl	%ecx
	subl	%ecx, %edi
	cmpl	%ebx, %edi
	cmovge	44(%esp), %eax
	cmovge	%ebx, %edi
	movl	%eax, 44(%esp)
	movl	%edi, 36(%esp)
	cmpl	$-1, %edx
	jne	L514
L540:
	movl	44(%esp), %eax
	movl	28(%esp), %ebx
	testl	%eax, %eax
	je	L512
	movl	40(%esp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movzwl	(%eax), %esi
	movzwl	2(%eax), %edi
	addl	%esi, %edi
	leal	-1(%edi), %eax
	movw	%ax, 40(%esp)
	cmpw	%ax, %si
	jg	L517
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L518:
	movl	32(%ebx), %ecx
	movl	28(%ebx), %edx
	movswl	%di, %eax
	addl	$1, %edi
	movl	(%edx,%eax,4), %edx
	movl	(%ecx,%eax,4), %eax
	leal	56(%esp), %ecx
	movl	%ecx, 20(%esp)
	movswl	(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 48(%esp)
	movl	%edx, 52(%esp)
	call	_rotatepoint
	movl	60(%esp), %ecx
	movl	56(%esp), %edx
	movswl	%si, %eax
	addl	$1, %esi
	call	_dragpoint.constprop.0
	cmpw	%si, 40(%esp)
	jge	L518
L517:
	cmpb	$0, 35(%esp)
	jne	L541
L512:
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
L499:
	.cfi_restore_state
	jle	L519
	movl	12(%ebx), %ecx
	subl	%ecx, %eax
	addl	20(%ebx), %ecx
	movl	%eax, (%ebx)
	movl	%ecx, 12(%ebx)
	cmpl	%eax, %edx
	jle	L500
L538:
	movl	%edx, (%ebx)
L501:
	movl	4(%ebx), %eax
	cmpl	%edx, %eax
	je	L542
	testl	%edx, %edx
	je	L508
L539:
	movl	40(%esp), %eax
	movzwl	42(%eax), %eax
L507:
	shrb	$7, %al
	movb	%al, 35(%esp)
	jmp	L503
	.p2align 4,,10
	.p2align 3
L541:
	movl	24(%esp), %edi
	movl	_User(,%edi,4), %ebx
	movl	140(%ebx), %esi
	movl	%edi, (%esp)
	call	__Z19DoRotatorStopInterps
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%esi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	andl	$-9, 68(%ebx)
	movl	%edi, %eax
	call	__Z10KillSprites
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
L508:
	.cfi_restore_state
	movl	20(%ebx), %edx
	movss	16(%ebx), %xmm1
	movl	%eax, 48(%esp)
	movss	48(%esp), %xmm0
	movl	%edx, %eax
	negl	%eax
	unpcklps	%xmm1, %xmm0
	cmovs	%edx, %eax
	movlps	%xmm0, 8(%ebx)
	movl	%eax, 20(%ebx)
	movl	24(%esp), %eax
	movl	_User(,%eax,4), %esi
	movl	140(%esi), %edi
	movl	%eax, (%esp)
	call	__Z19DoRotatorStopInterps
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%edi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movl	40(%esp), %eax
	andl	$-9, 68(%esi)
	movswl	34(%eax), %edx
	movzwl	42(%eax), %eax
	testw	%dx, %dx
	je	L507
	testb	$4, %ah
	je	L507
	movl	$-1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L539
L542:
	movl	24(%esp), %ecx
	negl	20(%ebx)
	movl	$0, 8(%ebx)
	movl	_User(,%ecx,4), %edi
	movl	140(%edi), %eax
	movl	%ecx, (%esp)
	movl	%eax, 48(%esp)
	call	__Z19DoRotatorStopInterps
	movl	48(%esp), %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%eax), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movl	40(%esp), %eax
	andl	$-9, 68(%edi)
	movswl	34(%eax), %eax
	testw	%ax, %ax
	jne	L543
L505:
	movswl	216(%esi), %eax
	testw	%ax, %ax
	je	L539
	movl	%eax, 76(%esi)
	movl	40(%esp), %eax
	movzwl	42(%eax), %eax
	jmp	L507
L543:
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L505
L519:
	movl	%eax, %edx
	jmp	L501
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z9DoRotators
	.def	__Z9DoRotators;	.scl	2;	.type	32;	.endef
__Z9DoRotators:
LFB55:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z13DoRotatorMoves
	.cfi_endproc
LFE55:
	.section .rdata,"dr"
LC19:
	.ascii "a\0"
LC20:
	.ascii "savegame symbols missing.txt\0"
LC21:
	.ascii "data %p\12\0"
	.text
	.p2align 4
	.def	__Z15SaveSymDataInfoP6_iobufPv;	.scl	3;	.type	32;	.endef
__Z15SaveSymDataInfoP6_iobufPv:
LFB56:
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, 16(%esp)
	testl	%edx, %edx
	je	L546
	movl	__ZL10nummodules, %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	L548
	movl	%eax, 12(%esp)
L547:
	movl	__ZL15saveablemodules(,%esi,4), %ecx
	movl	12(%ecx), %edi
	testl	%edi, %edi
	je	L553
	movl	8(%ecx), %ecx
	xorl	%ebx, %ebx
L551:
	movl	(%ecx), %eax
	cmpl	%eax, %edx
	jb	L550
	addl	4(%ecx), %eax
	cmpl	%eax, %edx
	jnb	L550
	addl	$1, %esi
	movl	%ebx, 24(%esp)
	movl	%esi, 20(%esp)
	subl	(%ecx), %edx
L549:
	movl	16(%esp), %edi
	movl	%edx, 28(%esp)
	leal	20(%esp), %eax
	movl	$1, %ecx
	movl	$12, %edx
	movl	%edi, (%esp)
	call	_klzw_write_compressed.constprop.0
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
L550:
	.cfi_restore_state
	addl	$1, %ebx
	addl	$8, %ecx
	cmpl	%ebx, %edi
	jne	L551
L553:
	addl	$1, %esi
	cmpl	%esi, 12(%esp)
	jne	L547
	.p2align 4
	.p2align 3
L548:
	movl	$LC19, 4(%esp)
	movl	$LC20, (%esp)
	movl	%edx, 16(%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L554
	movl	16(%esp), %edx
	movl	$LC21, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	call	_fclose
L554:
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
L546:
	.cfi_restore_state
	movl	$0, 20(%esp)
	xorl	%edx, %edx
	movl	$0, 24(%esp)
	jmp	L549
	.cfi_endproc
LFE56:
	.section .rdata,"dr"
LC22:
	.ascii "code %p\12\0"
	.text
	.p2align 4
	.def	__ZL19SaveSymCodeInfo_rawP6_iobufPv;	.scl	3;	.type	32;	.endef
__ZL19SaveSymCodeInfo_rawP6_iobufPv:
LFB62:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	testl	%edx, %edx
	je	L575
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movl	__ZL10nummodules, %edi
	movl	%edx, %ecx
	xorl	%edx, %edx
	testl	%edi, %edi
	je	L568
	movl	%esi, 28(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
L567:
	movl	__ZL15saveablemodules(,%edx,4), %eax
	movl	4(%eax), %esi
	testl	%esi, %esi
	je	L571
	movl	(%eax), %ebp
	xorl	%eax, %eax
L570:
	cmpl	0(%ebp,%eax,4), %ecx
	je	L569
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L570
L571:
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	L567
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L568:
	movl	$LC19, 4(%esp)
	movl	$LC20, (%esp)
	movl	%ecx, 12(%esp)
	call	_fopen
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L573
	movl	12(%esp), %ecx
	movl	$LC22, 4(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	call	_fprintf
	movl	%ebx, (%esp)
	call	_fclose
L573:
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebx
	movl	$1, %eax
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L569:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	addl	$1, %edx
	movl	36(%esp), %ebp
	.cfi_restore 5
L566:
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	%edx, 16(%esp)
	movl	$8, %edx
	movl	%eax, 20(%esp)
	leal	16(%esp), %eax
	call	_klzw_write_compressed.constprop.0
	movl	24(%esp), %ebx
	xorl	%eax, %eax
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L575:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L566
	.cfi_endproc
LFE62:
	.p2align 4
	.def	__Z15LoadSymDataInfoiPPv;	.scl	3;	.type	32;	.endef
__Z15LoadSymDataInfoiPPv:
LFB66:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$1, %ecx
	movl	%edx, %ebx
	movl	$12, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, (%esp)
	leal	4(%esp), %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L592
	cmpl	%eax, __ZL10nummodules
	jb	L590
	movl	__ZL15saveablemodules-4(,%eax,4), %ecx
	movl	8(%esp), %edx
	cmpl	12(%ecx), %edx
	jnb	L590
	movl	8(%ecx), %ecx
	movl	12(%esp), %eax
	leal	(%ecx,%edx,8), %edx
	cmpl	4(%edx), %eax
	jnb	L590
	addl	(%edx), %eax
	movl	%eax, (%ebx)
L587:
	xorl	%eax, %eax
L585:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L592:
	.cfi_restore_state
	movl	$0, (%ebx)
	jmp	L587
	.p2align 4,,10
	.p2align 3
L590:
	movl	$-1, %eax
	jmp	L585
	.cfi_endproc
LFE66:
	.p2align 4
	.def	__Z15LoadSymCodeInfoiPPv;	.scl	3;	.type	32;	.endef
__Z15LoadSymCodeInfoiPPv:
LFB72:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$1, %ecx
	movl	%edx, %ebx
	movl	$8, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, (%esp)
	leal	4(%esp), %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L600
	cmpl	%eax, __ZL10nummodules
	jb	L598
	movl	__ZL15saveablemodules-4(,%eax,4), %eax
	movl	8(%esp), %edx
	cmpl	4(%eax), %edx
	jnb	L598
	movl	(%eax), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%ebx)
L595:
	xorl	%eax, %eax
L593:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L600:
	.cfi_restore_state
	movl	$0, (%ebx)
	jmp	L595
	.p2align 4,,10
	.p2align 3
L598:
	movl	$-1, %eax
	jmp	L593
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z9WallSetupv
	.def	__Z9WallSetupv;	.scl	2;	.type	32;	.endef
__Z9WallSetupv:
LFB75:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	call	__Z17WallSetupDontMovev
	movl	$10240, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_SineWall, (%esp)
	call	_memset
	movswl	_numwalls, %eax
	movl	_wall, %edi
	movl	$999999, _x_min_bound
	movl	$999999, _y_min_bound
	movl	$-999999, _x_max_bound
	sall	$5, %eax
	movl	$-999999, _y_max_bound
	addl	%edi, %eax
	cmpl	%eax, %edi
	jnb	L601
	xorl	%eax, %eax
	movl	%ebx, 48(%esp)
	movl	$-999999, %edx
	movl	$999999, %ecx
	movw	%ax, 38(%esp)
	xorl	%eax, %eax
	movw	%ax, 24(%esp)
	movl	$999999, 20(%esp)
	movl	%esi, 52(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$-999999, %esi
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	leal	26(%edi), %ebp
	.p2align 4
	.p2align 3
L641:
	cmpw	$341, -10(%ebp)
	jne	L603
	leal	-10(%ebp), %ebx
	movl	$2356, %eax
	subl	%edi, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movw	%ax, -10(%ebp)
L603:
	movswl	24(%esp), %ebx
	movl	%ebx, 28(%esp)
	sall	$5, %ebx
	addl	%edi, %ebx
	cmpw	$342, 16(%ebx)
	jne	L604
	leal	16(%ebx), %eax
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	$2357, %eax
	movw	%ax, 16(%ebx)
L604:
	movl	-26(%ebp), %ebx
	movl	20(%esp), %eax
	cmpl	%eax, %ebx
	cmovg	%eax, %ebx
	movl	%ebx, _x_min_bound
	movl	-22(%ebp), %eax
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	movl	%ecx, _y_min_bound
	movl	-26(%ebp), %ecx
	cmpl	%edx, %ecx
	cmovl	%edx, %ecx
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	movl	%ecx, _x_max_bound
	movl	%eax, _y_max_bound
	movzwl	0(%ebp), %eax
	cmpw	$301, %ax
	jle	L669
	leal	-500(%eax), %edx
	cmpw	$8, %dx
	ja	L633
	movzwl	%dx, %edx
	leal	-26(%ebp), %eax
	jmp	*L609(,%edx,4)
	.section .rdata,"dr"
	.align 4
L609:
	.long	L616
	.long	L615
	.long	L614
	.long	L613
	.long	L612
	.long	L611
	.long	L633
	.long	L610
	.long	L608
	.text
	.p2align 4,,10
	.p2align 3
L608:
	movl	$528, %ecx
	movl	$508, %edx
	call	__ZL13WallSetupLoopP10walltypev7ss
	.p2align 4
	.p2align 3
L633:
	movzwl	-10(%ebp), %eax
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 16(%esp)
	movl	$10, 12(%esp)
	movw	%ax, 46(%esp)
	leal	46(%esp), %eax
	movl	$71, 8(%esp)
	movl	$_WallBreakInfo, 4(%esp)
	movl	%eax, (%esp)
	call	_bsearch
	movl	%eax, %edx
	testl	%eax, %eax
	je	L636
	movl	_wall, %ecx
	movl	%ebp, %eax
	movl	$307, %ebx
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	movw	%bx, 0(%ebp)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	orw	$128, 4(%ebp)
	movzwl	2(%edx), %eax
	testw	%ax, %ax
	js	L636
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.0(%eax), %eax
	orb	%al, _gotpic(%edx)
L636:
	movzwl	-8(%ebp), %eax
	testw	%ax, %ax
	jle	L639
	testb	$16, -12(%ebp)
	jne	L670
L639:
	movl	_wall, %edi
L638:
	movswl	_numwalls, %eax
	leal	6(%ebp), %edx
	sall	$5, %eax
	addl	%edi, %eax
	cmpl	%eax, %edx
	jnb	L667
	movl	_x_min_bound, %eax
	addw	$1, 24(%esp)
	addl	$32, %ebp
	movl	_y_min_bound, %ecx
	movl	_x_max_bound, %edx
	movl	%eax, 20(%esp)
	movl	_y_max_bound, %esi
	jmp	L641
	.p2align 4,,10
	.p2align 3
L610:
	movl	$256, %ecx
	movl	$507, %edx
L668:
	call	__ZL13WallSetupLoopP10walltypev7ss
	movl	%ebp, %eax
	subl	_wall, %eax
	xorl	%esi, %esi
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%si, 0(%ebp)
	jmp	L633
	.p2align 4,,10
	.p2align 3
L611:
	leal	4(%ebp), %eax
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	orw	$32, 4(%ebp)
	jmp	L633
	.p2align 4,,10
	.p2align 3
L612:
	movl	$16, %ecx
	movl	$504, %edx
	jmp	L668
	.p2align 4,,10
	.p2align 3
L613:
	movl	$8, %ecx
	movl	$503, %edx
	call	__ZL13WallSetupLoopP10walltypev7ss
	jmp	L633
	.p2align 4,,10
	.p2align 3
L616:
	movl	$1, %ecx
	movl	$500, %edx
	call	__ZL13WallSetupLoopP10walltypev7ss
	jmp	L633
	.p2align 4,,10
	.p2align 3
L614:
	movl	$4, %ecx
	movl	$502, %edx
	call	__ZL13WallSetupLoopP10walltypev7ss
	jmp	L633
	.p2align 4,,10
	.p2align 3
L615:
	movl	$2, %ecx
	movl	$501, %edx
	call	__ZL13WallSetupLoopP10walltypev7ss
	jmp	L633
	.p2align 4,,10
	.p2align 3
L670:
	movw	%ax, 46(%esp)
	leal	46(%esp), %eax
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 16(%esp)
	movl	$10, 12(%esp)
	movl	$71, 8(%esp)
	movl	$_WallBreakInfo, 4(%esp)
	movl	%eax, (%esp)
	call	_bsearch
	movl	_wall, %edi
	testl	%eax, %eax
	je	L638
	movl	%ebp, %eax
	movl	$307, %edx
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	movw	%dx, 0(%ebp)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	orw	$128, 4(%ebp)
	jmp	L638
	.p2align 4,,10
	.p2align 3
L669:
	cmpw	$299, %ax
	jle	L633
	movl	28(%esp), %esi
	leal	2(%eax), %edx
	subw	$300, %ax
	movw	%dx, 36(%esp)
	sall	$5, %esi
	movw	%ax, 26(%esp)
	addl	%edi, %esi
	cmpw	26(%esi), %dx
	je	L643
	movzwl	28(%esi), %eax
	testw	%ax, %ax
	movw	%ax, 28(%esp)
	movswl	8(%esi), %eax
	jne	L620
	movl	$250, %ebx
	movw	%bx, 28(%esp)
L620:
	sall	$5, %eax
	movzwl	36(%esp), %esi
	addl	%edi, %eax
	cmpw	26(%eax), %si
	je	L671
	movswl	28(%eax), %edx
	movswl	8(%eax), %eax
	testw	%dx, %dx
	je	L623
	movzwl	36(%esp), %ebx
	movw	%dx, 20(%esp)
	movl	$2, %ecx
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L626:
	sall	$5, %eax
	addl	%edi, %eax
	cmpw	26(%eax), %bx
	je	L618
	cmpw	$2, %cx
	je	L621
	addl	$1, %ecx
	movswl	8(%eax), %eax
	cmpw	$64, %cx
	jne	L626
L618:
	testw	%dx, %dx
	je	L663
L628:
	movswl	38(%esp), %ebx
	movswl	28(%esp), %ecx
	movl	%ebp, 40(%esp)
	xorl	%esi, %esi
	movzwl	24(%esp), %eax
	movzwl	36(%esp), %ebp
	movl	%edx, 32(%esp)
	sall	$10, %ebx
	movl	%ecx, 28(%esp)
	addl	$_SineWall, %ebx
	jmp	L629
	.p2align 4,,10
	.p2align 3
L634:
	movl	4(%ecx), %edx
	subl	%eax, %edx
L630:
	movl	%edx, (%ebx)
	movl	$2048, %eax
	xorl	%edx, %edx
	addl	$16, %ebx
	idivl	32(%esp)
	imull	%esi, %eax
	addl	$1, %esi
	movw	%ax, -6(%ebx)
	movzwl	8(%ecx), %eax
	cmpw	$64, %si
	je	L631
L629:
	movswl	%ax, %ecx
	sall	$5, %ecx
	addl	%edi, %ecx
	cmpw	26(%ecx), %bp
	je	L631
	movw	%ax, 8(%ebx)
	movzwl	20(%esp), %eax
	movzwl	26(%esp), %edx
	movw	%ax, 12(%ebx)
	movl	28(%esp), %eax
	movw	%dx, 14(%ebx)
	movl	%eax, 4(%ebx)
	leal	30(%ecx), %eax
	subl	%edi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	orw	$128, 30(%ecx)
	movl	4(%ebx), %eax
	sarl	$2, %eax
	cmpw	$0, 14(%ebx)
	je	L634
	movl	(%ecx), %edx
	subl	%eax, %edx
	jmp	L630
	.p2align 4,,10
	.p2align 3
L623:
	sall	$5, %eax
	movzwl	36(%esp), %esi
	movl	$3, %ecx
	addl	%edi, %eax
	movw	%cx, 20(%esp)
	cmpw	26(%eax), %si
	je	L644
L621:
	movzwl	28(%eax), %ecx
	movswl	8(%eax), %eax
	testw	%cx, %cx
	je	L625
	movswl	%cx, %edx
	movzwl	36(%esp), %ebx
	movl	$3, %ecx
	jmp	L626
	.p2align 4,,10
	.p2align 3
L667:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %ebp
	.cfi_restore 5
L601:
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L631:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addw	$1, 38(%esp)
	movl	40(%esp), %ebp
	jmp	L633
	.p2align 4,,10
	.p2align 3
L625:
	movzwl	36(%esp), %ebx
	movl	$3, %ecx
	jmp	L626
L671:
	movl	$3, %eax
	movl	$1, %ecx
	movw	%ax, 20(%esp)
	.p2align 4
	.p2align 3
L663:
	movswl	%cx, %edx
	jmp	L628
L644:
	movl	$2, %ecx
	jmp	L663
L643:
	movl	$3, %esi
	movl	$250, %eax
	xorl	%ecx, %ecx
	movw	%si, 20(%esp)
	movw	%ax, 28(%esp)
	jmp	L663
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z15SectorLiquidSets
	.def	__Z15SectorLiquidSets;	.scl	2;	.type	32;	.endef
__Z15SectorLiquidSets:
LFB79:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_sector, %eax
	movswl	12(%esp), %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	leal	(%edx,%edx,4), %ebx
	sall	$3, %ebx
	movzwl	24(%eax,%ebx), %eax
	cmpw	$299, %ax
	jg	L684
	subw	$175, %ax
	cmpw	$7, %ax
	jbe	L685
L672:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L684:
	.cfi_restore_state
	cmpw	$307, %ax
	jle	L679
	cmpw	$319, %ax
	jle	L672
	cmpw	$343, %ax
	jle	L679
	cmpw	$779, %ax
	jle	L672
	cmpw	$794, %ax
	jle	L679
	subw	$890, %ax
	cmpw	$7, %ax
	ja	L672
L679:
	movl	%edx, %eax
	call	__Z11GetSectUsers
	movl	_sector, %ecx
	leal	38(%ebx), %eax
	addl	%ebx, %ecx
	movl	$-858993459, %ebx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2048, 38(%ecx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L685:
	.cfi_restore_state
	movl	%edx, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	call	__Z11GetSectUsers
	movl	_sector, %ecx
	movl	%eax, %esi
	leal	38(%ebx), %eax
	addl	%ebx, %ecx
	movl	$-858993459, %ebx
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$1024, 38(%ecx)
	cmpw	$0, 20(%esi)
	jne	L682
	movl	$40, %eax
	movw	%ax, 20(%esi)
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L672
	.p2align 4,,10
	.p2align 3
L682:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L672
	.cfi_endproc
LFE79:
	.section .rdata,"dr"
LC23:
	.ascii "source/sw/src/rooms.cpp\0"
LC24:
	.ascii "spnum >= 0\0"
	.text
	.p2align 4
	.globl	__Z17COVERinsertspritess
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
__Z17COVERinsertspritess:
LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%dx, %edx
	cwtl
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	_insertsprite
	movl	%eax, %edi
	testl	%eax, %eax
	js	L689
L687:
	imull	$44, %edi, %ebp
	movl	$-1171354717, %ebx
	movl	_sprite, %esi
	leal	8(%ebp), %eax
	mull	%ebx
	leal	4(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%ebp, %eax
	movl	$0, 8(%esi,%ebp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	leal	12(%ebp), %eax
	movl	$0, 4(%esi,%ebp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	xorl	%eax, %eax
	movl	$0, (%esi,%ebp)
	movl	_sprite, %esi
	shrl	$5, %edx
	leal	(%esi,%ebp), %ecx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 12(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 14(%ecx)
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 16(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 17(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 18(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%ebp, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 21(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 20(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 23(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 22(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 28(%ecx)
	movl	%edx, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 30(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	xorl	%eax, %eax
	subl	%esi, %edx
	movw	%ax, 34(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 32(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 40(%ecx)
	leal	42(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	xorl	%ebx, %ebx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 42(%ecx)
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
L689:
	.cfi_restore_state
	movl	$68, %ecx
	movl	$LC23, %edx
	movl	$LC24, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L687
	.cfi_endproc
LFE80:
	.p2align 4
	.def	__Z11RipperHatchs;	.scl	3;	.type	32;	.endef
__Z11RipperHatchs:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movswl	28(%esp), %ebx
	leal	(%eax,%eax,4), %edx
	imull	$44, %ebx, %ebx
	leal	1(%eax,%edx,4), %edi
	addl	_sprite, %ebx
	xorl	%edx, %edx
	movl	%edi, %eax
	andl	$65535, %eax
	movl	%eax, _randomseed
	movswl	24(%ebx), %eax
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	$0, 28(%ecx)
	movl	$0, 32(%ecx)
	movl	$0, 36(%ecx)
	movl	$0, 40(%ecx)
L691:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L691
	movzwl	24(%ebx), %eax
	leal	26(%ecx), %edx
	movl	$-1171354717, %ebp
	subl	_sprite, %edx
	andw	$2047, %di
	movw	%ax, 24(%ecx)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	movw	%ax, 26(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	_sprite, %ebx
	movl	%eax, 8(%ecx)
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ecx)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 21(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 28(%ecx)
	movswl	%si, %ebx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 17(%ecx)
	movl	%ebx, (%esp)
	call	__Z11SetupRippers
	movl	_User(,%esi,4), %esi
	orl	$8, 68(%esi)
	movl	40(%esi), %eax
	movl	8(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z15DoActorMoveJumps, 36(%esi)
	movl	%ebx, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	%ebx, (%esp)
	movl	$-600, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%esi), %eax
	movl	$8, %ecx
	movw	%cx, 94(%esi)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%esi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	movl	%ebx, 28(%esp)
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
	jmp	__Z6DoJumps
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z12Ripper2Hatchs
	.def	__Z12Ripper2Hatchs;	.scl	2;	.type	32;	.endef
__Z12Ripper2Hatchs:
LFB82:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movswl	28(%esp), %ebx
	leal	(%eax,%eax,4), %edx
	imull	$44, %ebx, %ebx
	leal	1(%eax,%edx,4), %edi
	addl	_sprite, %ebx
	xorl	%edx, %edx
	movl	%edi, %eax
	andl	$65535, %eax
	movl	%eax, _randomseed
	movswl	24(%ebx), %eax
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	$0, 28(%ecx)
	movl	$0, 32(%ecx)
	movl	$0, 36(%ecx)
	movl	$0, 40(%ecx)
L696:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L696
	movzwl	24(%ebx), %eax
	leal	26(%ecx), %edx
	movl	$-1171354717, %ebp
	subl	_sprite, %edx
	andw	$2047, %di
	movw	%ax, 24(%ecx)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	movw	%ax, 26(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	_sprite, %ebx
	movl	%eax, 8(%ecx)
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ecx)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 21(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 28(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%ebx, %edx
	movb	$0, 17(%ecx)
	movswl	%si, %ebx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-10, 16(%ecx)
	movl	%ebx, (%esp)
	call	__Z12SetupRipper2s
	movl	_User(,%esi,4), %esi
	movl	40(%esi), %eax
	orl	$8, 68(%esi)
	movl	8(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z15DoActorMoveJumps, 36(%esi)
	movl	%ebx, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	%ebx, (%esp)
	movl	$-600, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%esi), %eax
	movl	$8, %ecx
	movw	%cx, 94(%esi)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%esi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	movl	%ebx, 28(%esp)
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
	jmp	__Z6DoJumps
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z10FAF_Sectors
	.def	__Z10FAF_Sectors;	.scl	2;	.type	32;	.endef
__Z10FAF_Sectors:
LFB83:
	.cfi_startproc
	cwtl
	movswl	_headspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L701
	movl	_sprite, %ecx
	jmp	L702
	.p2align 5
	.p2align 4,,10
	.p2align 3
L705:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L701
L702:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$60, 26(%edx)
	jne	L705
	movzwl	40(%edx), %edx
	subl	$110, %edx
	cmpw	$5, %dx
	ja	L705
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L701:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0:
LFB85:
	.cfi_startproc
	subl	$80, %esp
	.cfi_def_cfa_offset 84
	movl	%esi, 68(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movswl	84(%esp), %eax
	movl	%esi, 40(%esp)
	movl	96(%esp), %esi
	movl	%ebx, 64(%esp)
	.cfi_offset 3, -20
	movl	100(%esp), %ebx
	movl	%ecx, 48(%esp)
	movl	92(%esp), %ecx
	movl	%esi, 16(%esp)
	movl	88(%esp), %esi
	movw	%ax, 30(%esp)
	movl	%eax, 4(%esp)
	leal	40(%esp), %eax
	movl	$16810048, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 44(%esp)
	call	_hitscan
	cmpw	$0, 16(%ebx)
	js	L713
	movswl	14(%ebx), %eax
	testw	%ax, %ax
	js	L715
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 14(%eax)
	js	L744
L713:
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	addl	$80, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L744:
	.cfi_restore_state
	movl	88(%esp), %eax
	leal	8(%ebx), %ecx
	leal	4(%ebx), %edx
	sarl	$9, %eax
	subl	%eax, (%ebx)
	movl	92(%esp), %eax
	sarl	$9, %eax
	subl	%eax, 4(%ebx)
	leal	16(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z4WarpPiS_S_Ps
	testl	%eax, %eax
	jne	L745
	cmpw	$0, 14(%ebx)
	jns	L713
	.p2align 4
	.p2align 3
L715:
	cmpw	$0, 12(%ebx)
	jns	L713
	movswl	16(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$4, 38(%eax)
	je	L721
	movswl	(%eax), %eax
	leal	16(%ebx), %esi
	leal	8(%ebx), %ecx
	leal	4(%ebx), %edx
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$0, 14(%eax)
	movl	%esi, (%esp)
	movl	%ebx, %eax
	js	L746
	call	__Z9WarpPlanePiS_S_Ps
	testl	%eax, %eax
	movswl	16(%ebx), %eax
	jne	L724
L742:
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
L721:
	leal	32(%esp), %edx
	movl	%edx, 16(%esp)
	leal	36(%esp), %edx
	movl	%edx, 12(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getzsofslopeptr
	movl	8(%ebx), %edx
	movl	%edx, %eax
	subl	32(%esp), %eax
	addl	$1023, %eax
	cmpl	$2046, %eax
	jbe	L747
	movl	%edx, %eax
	subl	36(%esp), %eax
	addl	$1023, %eax
	cmpl	$2046, %eax
	ja	L713
	movswl	16(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	cmpw	$2356, 16(%eax,%ecx,8)
	jne	L713
	cmpw	$0, 14(%eax,%ecx,8)
	js	L713
	leal	30(%esp), %eax
	subl	$3072, %edx
	movl	%eax, 12(%esp)
L743:
	movl	%edx, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movl	(%ebx), %eax
	movl	%eax, 52(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 56(%esp)
	movl	8(%ebx), %eax
	movl	$1090519104, 24(%esp)
	movl	%eax, 60(%esp)
	movl	96(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	92(%esp), %eax
	movl	%eax, 12(%esp)
	movl	88(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	30(%esp), %eax
	movl	%eax, 4(%esp)
	leal	52(%esp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	jmp	L713
	.p2align 4,,10
	.p2align 3
L747:
	movswl	16(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	cmpw	$2356, 24(%eax,%ecx,8)
	jne	L713
	cmpw	$0, 14(%eax,%ecx,8)
	js	L713
	leal	30(%esp), %eax
	addl	$3072, %edx
	movl	%eax, 12(%esp)
	jmp	L743
	.p2align 4,,10
	.p2align 3
L746:
	call	__Z4WarpPiS_S_Ps
	testl	%eax, %eax
	movswl	16(%ebx), %eax
	je	L742
	movl	(%ebx), %edx
	movl	96(%esp), %esi
	movl	%edx, 52(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 56(%esp)
	movl	8(%ebx), %edx
	movl	%ebx, 20(%esp)
	movl	92(%esp), %ebx
	movl	%esi, 16(%esp)
	movl	88(%esp), %esi
	movl	%eax, 4(%esp)
	leal	52(%esp), %eax
	movl	$1090519104, 24(%esp)
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 60(%esp)
	call	_hitscan
	jmp	L713
	.p2align 4,,10
	.p2align 3
L745:
	movl	%edi, 72(%esp)
	movl	_wall, %esi
	movl	%ebp, 76(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	(%ebx), %eax
	movl	%eax, 52(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 56(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 60(%esp)
	movswl	16(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	movl	%eax, %ebp
	movl	_sector, %eax
	movl	%ecx, %edi
	movzwl	(%eax,%ecx,8), %ecx
	movswl	%cx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L717:
	sall	$5, %eax
	leal	(%esi,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	8(%edx), %eax
	andw	$32767, 14(%edx)
	cmpw	%ax, %cx
	jne	L717
	movl	96(%esp), %eax
	movl	$16810048, 24(%esp)
	movl	%ebx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	92(%esp), %eax
	movl	%eax, 12(%esp)
	movl	88(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	16(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	52(%esp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movl	_sector, %eax
	movl	$0, 36(%esp)
	testb	$4, 38(%eax,%edi,8)
	je	L741
	leal	36(%esp), %edx
	movl	%ebp, %eax
	call	__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0
	testb	%al, %al
	je	L741
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L741
	movl	_sector, %eax
	movl	_wall, %ecx
	movzwl	(%eax,%edi,8), %ebx
	movswl	%bx, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L720:
	sall	$5, %eax
	addl	%ecx, %eax
	cmpw	$16383, 10(%eax)
	ja	L719
	leal	14(%eax), %edx
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	orw	$-32768, 14(%eax)
L719:
	movswl	8(%eax), %eax
	cmpw	%ax, %bx
	jne	L720
L741:
	movl	72(%esp), %edi
	.cfi_restore 7
	movl	76(%esp), %ebp
	.cfi_restore 5
	jmp	L713
	.p2align 4,,10
	.p2align 3
L724:
	movl	(%ebx), %edx
	movl	96(%esp), %esi
	movl	%edx, 52(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 56(%esp)
	movl	8(%ebx), %edx
	movl	%ebx, 20(%esp)
	movl	88(%esp), %ebx
	movl	%esi, 16(%esp)
	movl	92(%esp), %esi
	movl	%eax, 4(%esp)
	leal	52(%esp), %eax
	movl	$1090519104, 24(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%edx, 60(%esp)
	call	_hitscan
	jmp	L713
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z14InitRipperHangs
	.def	__Z14InitRipperHangs;	.scl	2;	.type	32;	.endef
__Z14InitRipperHangs:
LFB90:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-2, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$68, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %ebx
	movl	$0, 44(%esp)
	movl	_User(,%ebx,4), %edi
	movw	%dx, 60(%esp)
	imull	$44, %ebx, %eax
	movl	$0, 48(%esp)
	addl	_sprite, %eax
	movl	$0, 52(%esp)
	movl	%eax, %esi
	movl	$65534, 56(%esp)
	movl	%edi, 24(%esp)
	movl	%ebx, 28(%esp)
	xorl	%ebx, %ebx
L753:
	movzwl	28(%esi), %eax
	movswl	14(%esi), %edx
	addl	%ebx, %eax
	movswl	_tilesiz+2(,%edx,4), %edx
	movl	%eax, %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	andw	$2047, %di
	movw	%di, 36(%esp)
	movl	%eax, 40(%esp)
	leal	512(%edi), %eax
	movl	8(%esi), %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ecx
	movzwl	24(%esi), %eax
	movw	%ax, 38(%esp)
	movzbl	21(%esi), %eax
	cmpb	$64, %al
	je	L756
	imull	%edx, %eax
	sall	$2, %eax
L750:
	subl	%eax, %edi
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%ecx, 4(%esp)
	movswl	38(%esp), %ecx
	movl	$0, 12(%esp)
	movl	%eax, 32(%esp)
	leal	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	60(%esp), %eax
	orw	58(%esp), %ax
	js	L751
	movl	44(%esp), %edx
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	48(%esp), %edx
	subl	4(%esi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	subl	$2000, %edx
	cmpl	$5000, %edx
	ja	L751
	leal	28(%esi), %edx
	movl	$-1171354717, %eax
	movl	28(%esp), %ebx
	movl	24(%esp), %edi
	subl	_sprite, %edx
	mull	%edx
	movzwl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_RipperHangJump, %edx
	movw	%ax, 28(%esi)
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$_sg_RipperHangFall, 32(%edi)
	movl	%ebx, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	%ebx, (%esp)
	movl	$-800, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%edi), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edi)
	movl	$8, %eax
	movw	%ax, 94(%edi)
	movl	%ebx, (%esp)
	call	__Z6DoJumps
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
L751:
	.cfi_restore_state
	subw	$-128, %bx
	cmpw	$2048, %bx
	jne	L753
	movl	28(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, (%esp)
	call	__Z13DoActorDecides
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
L756:
	.cfi_restore_state
	movl	%edx, %eax
	sall	$8, %eax
	jmp	L750
	.cfi_endproc
LFE90:
	.p2align 4
	.def	__Z15InitRipper2Hangs;	.scl	3;	.type	32;	.endef
__Z15InitRipper2Hangs:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-2, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$68, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %ebx
	movl	$0, 44(%esp)
	movl	_User(,%ebx,4), %edi
	movw	%dx, 60(%esp)
	imull	$44, %ebx, %eax
	movl	$0, 48(%esp)
	addl	_sprite, %eax
	movl	$0, 52(%esp)
	movl	%eax, %esi
	movl	$65534, 56(%esp)
	movl	%edi, 24(%esp)
	movl	%ebx, 28(%esp)
	xorl	%ebx, %ebx
L763:
	movzwl	28(%esi), %eax
	movswl	14(%esi), %edx
	addl	%ebx, %eax
	movswl	_tilesiz+2(,%edx,4), %edx
	movl	%eax, %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	andw	$2047, %di
	movw	%di, 36(%esp)
	movl	%eax, 40(%esp)
	leal	512(%edi), %eax
	movl	8(%esi), %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ecx
	movzwl	24(%esi), %eax
	movw	%ax, 38(%esp)
	movzbl	21(%esi), %eax
	cmpb	$64, %al
	je	L768
	imull	%edx, %eax
	sall	$2, %eax
L759:
	subl	%eax, %edi
	movl	(%esi), %eax
	movl	4(%esi), %edx
	movl	%ecx, 4(%esp)
	movswl	38(%esp), %ecx
	movl	$0, 12(%esp)
	movl	%eax, 32(%esp)
	leal	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	60(%esp), %eax
	orw	58(%esp), %ax
	js	L760
	movl	44(%esp), %edx
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	48(%esp), %edx
	subl	4(%esi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	subl	$2000, %edx
	cmpl	$5000, %edx
	ja	L760
	movl	$-1171354717, %eax
	leal	28(%esi), %edx
	movl	28(%esp), %ebx
	movl	24(%esp), %edi
	subl	_sprite, %edx
	mull	%edx
	movzwl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_Ripper2HangJump, %edx
	movw	%ax, 28(%esi)
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$_sg_Ripper2HangFall, 32(%edi)
	movl	$3, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_randomseed, %eax
	movl	$-499, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L761
	sall	$14, %eax
	movl	$-939472145, %edx
	movl	$-100, %ecx
	mull	%edx
	shrl	$21, %edx
	subl	%edx, %ecx
L761:
	movswl	%cx, %ecx
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%edi), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edi)
	movl	$8, %eax
	movw	%ax, 94(%edi)
	movl	%ebx, (%esp)
	call	__Z6DoJumps
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
L760:
	.cfi_restore_state
	subw	$-128, %bx
	cmpw	$2048, %bx
	jne	L763
	movl	28(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, (%esp)
	call	__Z13DoActorDecides
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
L768:
	.cfi_restore_state
	movl	%edx, %eax
	sall	$8, %eax
	jmp	L759
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z9FAFcanseeiiisiiis
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
__Z9FAFcanseeiiisiiis:
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
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$88, %esp
	.cfi_def_cfa_offset 108
	movzwl	108(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	%ebx, 56(%esp)
	movw	%ax, 46(%esp)
	movswl	%ax, %ebp
	movl	%edx, 60(%esp)
	movl	%ecx, 64(%esp)
	testw	%ax, %ax
	js	L770
	movl	%ebp, %eax
	call	__Z10FAF_Sectors
	testb	%al, %al
	jne	L771
L770:
	movswl	124(%esp), %edi
	cmpw	$0, 124(%esp)
	js	L772
	movl	%edi, %eax
	call	__Z10FAF_Sectors
	testb	%al, %al
	jne	L771
L772:
	movl	%edi, 16(%esp)
	jmp	L791
	.p2align 4,,10
	.p2align 3
L771:
	movl	116(%esp), %eax
	movl	112(%esp), %edi
	subl	%esi, %eax
	subl	%ebx, %edi
	movl	%eax, %edx
	movl	%edi, %ecx
	movl	%eax, 32(%esp)
	call	@getangle@8
	movl	%eax, %edx
	leal	512(%eax), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ecx
	movl	%ecx, 36(%esp)
	movswl	_sintable(%edx,%edx), %ecx
	movl	32(%esp), %edx
	movl	%ecx, 40(%esp)
	movl	%edi, %ecx
	movl	%edx, %eax
	imull	%edi, %ecx
	imull	%edx, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	testl	%eax, %eax
	je	L774
	cmpl	112(%esp), %ebx
	jne	L792
	xorl	%eax, %eax
	cmpl	116(%esp), %esi
	je	L774
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	120(%esp), %eax
	subl	28(%esp), %eax
	imull	40(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.4
	.p2align 4
	.p2align 3
L774:
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	leal	68(%esp), %edx
	movl	$1090519104, 24(%esp)
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%eax, 8(%esp)
	leal	56(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, (%esp)
	call	_hitscan
	movswl	84(%esp), %eax
	testw	%ax, %ax
	js	L780
	movl	80(%esp), %edx
	notl	%edx
	andl	$-2147450880, %edx
	je	L793
	movswl	124(%esp), %eax
	movl	%eax, 16(%esp)
L791:
	movl	120(%esp), %eax
	movl	28(%esp), %ecx
	movl	%ebp, (%esp)
	movl	%esi, %edx
	movl	%eax, 12(%esp)
	movl	116(%esp), %eax
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	_cansee.constprop.0
L769:
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
L780:
	.cfi_restore_state
	addl	$88, %esp
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
L792:
	.cfi_restore_state
	movl	120(%esp), %eax
	subl	28(%esp), %eax
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	imull	36(%esp)
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.4
	jmp	L774
	.p2align 4,,10
	.p2align 3
L793:
	leal	(%eax,%eax,4), %ebx
	leal	52(%esp), %eax
	movl	72(%esp), %edi
	movl	68(%esp), %esi
	movl	%eax, 16(%esp)
	leal	48(%esp), %eax
	sall	$3, %ebx
	movl	%eax, 12(%esp)
	movl	_sector, %eax
	movl	%edi, 8(%esp)
	addl	%ebx, %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	76(%esp), %ebp
	movl	%ebp, %eax
	subl	52(%esp), %eax
	addl	$1023, %eax
	cmpl	$2046, %eax
	jbe	L794
	movl	%ebp, %eax
	subl	48(%esp), %eax
	addl	$1023, %eax
	cmpl	$2046, %eax
	ja	L780
	movl	_sector, %eax
	cmpw	$2356, 16(%eax,%ebx)
	jne	L780
	leal	46(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	leal	-3072(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_updatesectorz
L781:
	movswl	124(%esp), %eax
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%eax, 16(%esp)
	movl	120(%esp), %eax
	movl	%eax, 12(%esp)
	movl	116(%esp), %eax
	movl	%eax, 8(%esp)
	movl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	46(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_cansee.constprop.0
	jmp	L769
	.p2align 4,,10
	.p2align 3
L794:
	movl	_sector, %eax
	cmpw	$2356, 24(%eax,%ebx)
	jne	L780
	leal	46(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	leal	3072(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_updatesectorz
	jmp	L781
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z14GetZadjustmentss
	.def	__Z14GetZadjustmentss;	.scl	2;	.type	32;	.endef
__Z14GetZadjustmentss:
LFB93:
	.cfi_startproc
	testw	%ax, %ax
	js	L811
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_sector, %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	cwtl
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$16, 38(%eax)
	je	L796
	movswl	_headspritestat+1000, %eax
	cmpw	$-1, %ax
	je	L796
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%edx, %ecx
	movl	_sprite, %esi
	jmp	L797
	.p2align 5
	.p2align 4,,10
	.p2align 3
L798:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L815
L797:
	imull	$44, %eax, %edx
	addl	%esi, %edx
	cmpw	40(%edx), %cx
	jne	L798
	cmpw	24(%edx), %bx
	jne	L798
	movswl	38(%edx), %eax
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	sall	$8, %eax
	ret
	.p2align 4,,10
	.p2align 3
L815:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
L796:
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L811:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE93:
	.p2align 4
	.def	__Z13SectorZadjustiPisS_;	.scl	3;	.type	32;	.endef
__Z13SectorZadjustiPisS_:
LFB95:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	cmpw	$-1, %cx
	je	L817
	movswl	%cx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L865
L817:
	xorl	%ecx, %ecx
L819:
	cmpl	$-1, %ebx
	je	L816
	movl	%ebx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L866
L816:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	%ecx, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L866:
	.cfi_restore_state
	movl	_sector, %eax
	andl	$4095, %ebx
	movl	%edi, 12(%esp)
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %edx
	movzwl	38(%edx), %eax
	.cfi_offset 7, -8
	movl	%edx, %edi
	cmpw	$2356, 16(%edx)
	je	L867
	testb	$16, %al
	je	L862
	movl	$97, %edx
	movl	%ebx, %eax
	movb	%cl, 3(%esp)
	call	__Z14GetZadjustmentss
	movzbl	3(%esp), %ecx
	testl	%eax, %eax
	jne	L864
	testb	$1, 12(%edi)
	je	L862
	movl	_PlaxCeilGlobZadjust, %eax
L864:
	subl	%eax, (%esi)
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L816
	.p2align 4,,10
	.p2align 3
L865:
	movl	_sector, %eax
	andl	$4095, %ecx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, %edi
	cmpw	$2356, 24(%eax)
	je	L868
	testb	$16, 38(%eax)
	je	L858
	movl	$98, %edx
	movl	%ecx, %eax
	call	__Z14GetZadjustmentss
	testl	%eax, %eax
	jne	L863
	testb	$1, 14(%edi)
	je	L858
	movl	_PlaxFloorGlobZadjust, %eax
L863:
	movl	20(%esp), %edx
	addl	%eax, (%edx)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L817
	.p2align 4,,10
	.p2align 3
L868:
	.cfi_restore_state
	cmpw	$0, 14(%eax)
	js	L858
	testb	$16, 38(%eax)
	je	L858
	movl	$98, %edx
	movl	%ecx, %eax
	call	__Z14GetZadjustmentss
	testl	%eax, %eax
	je	L858
	movl	20(%esp), %edx
	movl	$1, %ecx
	addl	%eax, (%edx)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L819
	.p2align 4,,10
	.p2align 3
L867:
	.cfi_restore_state
	testb	$16, %al
	je	L862
	movl	$97, %edx
	movl	%ebx, %eax
	movb	%cl, 3(%esp)
	call	__Z14GetZadjustmentss
	movzbl	3(%esp), %ecx
	testl	%eax, %eax
	je	L862
	movl	20(%esp), %ebx
	movl	$1, %ecx
	addl	%eax, (%ebx)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L816
	.p2align 4,,10
	.p2align 3
L862:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	4(%esp), %ebx
	movl	%ecx, %eax
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L858:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L817
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__Z12FAFgetzrangeiiisPiS_S_S_ii
	.def	__Z12FAFgetzrangeiiisPiS_S_S_ii;	.scl	2;	.type	32;	.endef
__Z12FAFgetzrangeiiisPiS_S_S_ii:
LFB96:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ebp
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	96(%esp), %esi
	movswl	80(%esp), %eax
	cmpw	$0, 80(%esp)
	js	L870
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	sall	$3, %ebx
	addl	%ebx, %edx
	cmpw	$2356, 16(%edx)
	je	L871
	cmpw	$2356, 24(%edx)
	je	L871
L870:
	movl	%edi, 52(%esp)
	movl	104(%esp), %edi
	movl	88(%esp), %ebx
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%edi, 28(%esp)
	movl	100(%esp), %edi
	movl	%ebx, 12(%esp)
	movl	%edi, 24(%esp)
	movl	92(%esp), %edi
	movl	%eax, (%esp)
	movl	%edi, 16(%esp)
	movl	84(%esp), %edi
	movl	%esi, 20(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, 56(%esp)
	movl	%ebp, 48(%esp)
	call	_getzrange
	movl	88(%esp), %eax
	movl	92(%esp), %ebx
	movswl	(%esi), %ecx
	movl	84(%esp), %edx
	movl	(%eax), %eax
	movl	%ebx, (%esp)
L912:
	call	__Z13SectorZadjustiPisS_
	movl	(%esi), %edx
	movswl	%dx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L913
L869:
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
L871:
	.cfi_restore_state
	movl	%ecx, 56(%esp)
	movl	104(%esp), %ecx
	movl	84(%esp), %edx
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	100(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 24(%esp)
	movl	92(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 16(%esp)
	movl	88(%esp), %ecx
	movl	%esi, 20(%esp)
	movl	%ecx, 12(%esp)
	movl	%ebp, 48(%esp)
	movl	%edi, 52(%esp)
	call	_getzrange
	movl	92(%esp), %edx
	movl	88(%esp), %eax
	movswl	(%esi), %ecx
	movl	(%eax), %eax
	movl	%edx, (%esp)
	movl	84(%esp), %edx
	call	__Z13SectorZadjustiPisS_
	movl	(%esi), %edx
	movl	%eax, %ecx
	movswl	%dx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L914
L873:
	testb	%cl, %cl
	jne	L869
	addl	_sector, %ebx
	cmpw	$2356, 16(%ebx)
	je	L915
	cmpw	$2356, 24(%ebx)
	jne	L869
	cmpw	$0, 14(%ebx)
	js	L869
	movzwl	80(%esp), %eax
	movw	%ax, 38(%esp)
	movl	(%esi), %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L869
	movl	92(%esp), %eax
	movl	(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 32(%esp)
	leal	512(%eax), %ebx
	leal	38(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	call	_updatesectorz
	movswl	38(%esp), %eax
	testw	%ax, %ax
	js	L869
	movl	%edi, 52(%esp)
	movl	104(%esp), %edi
	leal	40(%esp), %edx
	movl	%edx, 12(%esp)
	leal	44(%esp), %edx
	movl	%edi, 28(%esp)
	movl	100(%esp), %edi
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%edi, 24(%esp)
	movl	92(%esp), %edi
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%ebp, 48(%esp)
	movl	%ebx, 56(%esp)
	call	_getzrange
	movl	92(%esp), %eax
	movswl	(%esi), %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	$-1, %eax
	jmp	L912
	.p2align 4,,10
	.p2align 3
L914:
	andl	$4095, %edx
	movl	_SectUser(,%edx,4), %eax
	testl	%eax, %eax
	je	L873
	movswl	10(%eax), %eax
	testw	%ax, %ax
	je	L873
	movl	92(%esp), %edx
	sall	$8, %eax
	addl	%eax, (%edx)
	jmp	L873
	.p2align 4,,10
	.p2align 3
L913:
	andl	$4095, %edx
	movl	_SectUser(,%edx,4), %eax
	testl	%eax, %eax
	je	L869
	movswl	10(%eax), %eax
	testw	%ax, %ax
	je	L869
	movl	92(%esp), %esi
	sall	$8, %eax
	addl	%eax, (%esi)
	jmp	L869
	.p2align 4,,10
	.p2align 3
L915:
	movzwl	80(%esp), %eax
	movw	%ax, 38(%esp)
	movl	88(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 32(%esp)
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L869
	movl	84(%esp), %eax
	movl	(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 32(%esp)
	leal	-512(%eax), %ebx
	leal	38(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	call	_updatesectorz
	movswl	38(%esp), %eax
	testw	%ax, %ax
	js	L869
	movl	104(%esp), %esi
	leal	40(%esp), %edx
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%edx, 20(%esp)
	leal	44(%esp), %edx
	movl	%esi, 28(%esp)
	movl	100(%esp), %esi
	movl	%edx, 16(%esp)
	movl	%esi, 24(%esp)
	movl	88(%esp), %esi
	movl	%eax, (%esp)
	movl	%esi, 12(%esp)
	movl	84(%esp), %esi
	movl	%ebp, 48(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 52(%esp)
	movl	%ebx, 56(%esp)
	call	_getzrange
	movl	88(%esp), %eax
	movl	84(%esp), %edx
	movl	$-1, %ecx
	movl	(%eax), %eax
	movl	$0, (%esp)
	call	__Z13SectorZadjustiPisS_
	jmp	L869
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z17FAFgetzrangepointiiisPiS_S_S_
	.def	__Z17FAFgetzrangepointiiisPiS_S_S_;	.scl	2;	.type	32;	.endef
__Z17FAFgetzrangepointiiisPiS_S_S_:
LFB98:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	72(%esp), %ebp
	movl	76(%esp), %edi
	movl	%eax, 20(%esp)
	movswl	64(%esp), %eax
	movl	80(%esp), %esi
	movl	%edx, 24(%esp)
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	sall	$3, %ebx
	addl	%ebx, %edx
	cmpw	$2356, 16(%edx)
	je	L917
	cmpw	$2356, 24(%edx)
	jne	L962
L917:
	cmpw	$0, 64(%esp)
	js	L963
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%esi, 16(%esp)
	movl	20(%esp), %eax
	movl	%edx, 4(%esp)
	movl	24(%esp), %edx
	movl	%edi, 12(%esp)
	movl	%ebp, 8(%esp)
	call	__Z14getzrangepointiiisPiS_S_S_.part.0
	movswl	(%esi), %ecx
L923:
	movl	0(%ebp), %eax
	movl	68(%esp), %edx
	movl	%edi, (%esp)
	call	__Z13SectorZadjustiPisS_
	movl	(%esi), %edx
	movl	%eax, %ecx
	movswl	%dx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L964
L925:
	testb	%cl, %cl
	jne	L916
	addl	_sector, %ebx
	cmpw	$2356, 16(%ebx)
	je	L965
	cmpw	$2356, 24(%ebx)
	je	L966
L916:
	addl	$44, %esp
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
L963:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	$-1, %ecx
	movl	$-2147483648, (%eax)
	movl	$-1, 0(%ebp)
	movl	$2147483647, (%edi)
	movl	$-1, (%esi)
	jmp	L923
	.p2align 4,,10
	.p2align 3
L962:
	cmpw	$0, 64(%esp)
	js	L967
	movl	68(%esp), %ebx
	movl	%eax, (%esp)
	movl	24(%esp), %edx
	movl	20(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%ebx, 4(%esp)
	call	__Z14getzrangepointiiisPiS_S_S_.part.0
	movswl	(%esi), %ecx
L919:
	movl	0(%ebp), %eax
	movl	68(%esp), %edx
	movl	%edi, (%esp)
L961:
	call	__Z13SectorZadjustiPisS_
	movl	(%esi), %edx
	movswl	%dx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	jne	L916
	andl	$4095, %edx
	movl	_SectUser(,%edx,4), %eax
	testl	%eax, %eax
	je	L916
	movswl	10(%eax), %eax
	testw	%ax, %ax
	je	L916
	sall	$8, %eax
	addl	%eax, (%edi)
	jmp	L916
	.p2align 4,,10
	.p2align 3
L964:
	andl	$4095, %edx
	movl	_SectUser(,%edx,4), %eax
	testl	%eax, %eax
	je	L925
	movswl	10(%eax), %eax
	testw	%ax, %ax
	je	L925
	sall	$8, %eax
	addl	%eax, (%edi)
	jmp	L925
	.p2align 4,,10
	.p2align 3
L967:
	movl	68(%esp), %eax
	movl	$-1, %ecx
	movl	$-2147483648, (%eax)
	movl	$-1, 0(%ebp)
	movl	$2147483647, (%edi)
	movl	$-1, (%esi)
	jmp	L919
	.p2align 4,,10
	.p2align 3
L965:
	movzwl	64(%esp), %eax
	movw	%ax, 34(%esp)
	movl	0(%ebp), %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L916
	movl	68(%esp), %eax
	movl	24(%esp), %edi
	movl	20(%esp), %esi
	movl	(%eax), %eax
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 28(%esp)
	leal	-512(%eax), %ebx
	leal	34(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	call	_updatesectorz
	movswl	34(%esp), %eax
	testw	%ax, %ax
	js	L916
	movl	68(%esp), %ecx
	leal	36(%esp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	%edx, 16(%esp)
	leal	40(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	movl	%ebp, 8(%esp)
	call	__Z14getzrangepointiiisPiS_S_S_.part.0
	movl	0(%ebp), %eax
	movl	68(%esp), %edx
	movl	$0, (%esp)
	movl	$-1, %ecx
	call	__Z13SectorZadjustiPisS_
	jmp	L916
	.p2align 4,,10
	.p2align 3
L966:
	cmpw	$0, 14(%ebx)
	js	L916
	movzwl	64(%esp), %eax
	movw	%ax, 34(%esp)
	movl	(%esi), %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L916
	movl	(%edi), %eax
	movl	24(%esp), %ebp
	leal	512(%eax), %ebx
	leal	34(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	call	_updatesectorz
	movswl	34(%esp), %eax
	testw	%ax, %ax
	js	L916
	leal	36(%esp), %edx
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	movl	%ebx, %ecx
	movl	%edx, 8(%esp)
	leal	40(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	call	__Z14getzrangepointiiisPiS_S_S_.part.0
	movswl	(%esi), %ecx
	xorl	%edx, %edx
	movl	%edi, (%esp)
	movl	$-1, %eax
	jmp	L961
	.cfi_endproc
LFE98:
	.section .rdata,"dr"
LC25:
	.ascii "save.zcount < ZMAX\0"
	.text
	.p2align 4
	.globl	__Z15DrawOverlapRoomiiiiis
	.def	__Z15DrawOverlapRoomiiiiis;	.scl	2;	.type	32;	.endef
__Z15DrawOverlapRoomiiiiis:
LFB100:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	movl	%edx, 16(%esp)
	movl	$110, %edx
	movl	%eax, 32(%esp)
	movswl	76(%esp), %eax
	movl	%ebp, 60(%esp)
	movl	%ecx, 20(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movw	%di, _save+3200
	movl	%eax, 24(%esp)
	call	__Z17ViewSectorInSceness
	cmpw	$-1, %ax
	je	L969
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+120, %ebx
	movl	%eax, %edi
	movl	%esi, 52(%esp)
	movswl	%bx, %eax
	cmpw	$-1, %bx
	.cfi_offset 6, -16
	je	L970
	movl	_sprite, %edx
	movswl	%bx, %esi
	jmp	L971
	.p2align 5
	.p2align 4,,10
	.p2align 3
L972:
	movswl	_nextspritestat(%esi,%esi), %esi
	cmpw	$-1, %si
	je	L1009
L971:
	imull	$44, %esi, %ecx
	addl	%edx, %ecx
	cmpw	$120, 40(%ecx)
	jne	L972
	cmpw	38(%ecx), %di
	jne	L972
	movl	12(%esp), %esi
	subl	(%ecx), %esi
	movl	%esi, 36(%esp)
	movl	16(%esp), %esi
	subl	4(%ecx), %esi
	movl	%esi, %ecx
	jmp	L975
	.p2align 5
	.p2align 4,,10
	.p2align 3
L976:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L979
L975:
	imull	$44, %eax, %esi
	addl	%edx, %esi
	cmpw	38(%esi), %di
	jne	L976
	cmpw	$121, 40(%esi)
	jne	L976
	leal	46(%esp), %edx
	addl	4(%esi), %ecx
	movl	36(%esp), %ebx
	movswl	%di, %eax
	addl	(%esi), %ebx
	movl	%edx, 4(%esp)
	leal	44(%esp), %edx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	movl	%ebx, 12(%esp)
	movl	%ecx, 16(%esp)
	call	__Z19GetUpperLowerSectorsiiPsS_
	movzwl	44(%esp), %ebp
	testw	%bp, %bp
	js	L1033
	movzwl	_headspritestat+120, %ebx
	movswl	%bp, %eax
	movl	%eax, 24(%esp)
	cmpw	$-1, %bx
	je	L981
	movl	_sprite, %edx
	jmp	L1005
	.p2align 4,,10
	.p2align 3
L979:
	testw	%bp, %bp
	js	L1033
L1005:
	movswl	24(%esi), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	20(%esp), %ecx
	movl	8(%eax), %esi
	subl	%esi, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	%edx, %ecx
	andl	$-32768, %eax
	leal	32768(%esi,%eax), %eax
	movl	%eax, 40(%esp)
	jmp	L982
	.p2align 6
	.p2align 4,,10
	.p2align 3
L983:
	cmpw	$-1, %bx
	je	L981
L1034:
	movl	_sprite, %ecx
L982:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	cmpw	38(%ecx), %di
	jne	L983
	cmpw	$111, 40(%ecx)
	jne	L983
	movswl	_save+3200, %edx
	movswl	24(%ecx), %eax
	movl	_sector, %esi
	movw	%ax, _save+1600(%edx,%edx)
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
	movw	%dx, 36(%esp)
	movl	8(%ebp), %eax
	movl	%eax, _save(,%edx,4)
	movzwl	24(%ebp), %eax
	movw	%ax, _save+2400(%edx,%edx)
	movzwl	26(%ebp), %eax
	movw	%ax, _save+3202(%edx,%edx)
	leal	8(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%eax, 8(%ebp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
	cmpw	$2356, 24(%ebp)
	je	L984
	leal	24(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$2357, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 24(%ebp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
L984:
	leal	26(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	xorl	%esi, %esi
	mull	%edx
	movzwl	36(%esp), %eax
	addl	$1, %eax
	shrl	$5, %edx
	movw	%ax, _save+3200
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 26(%ebp)
	cmpw	$399, %ax
	jle	L983
	movl	$956, %ecx
	movl	$LC23, %edx
	movl	$LC25, %eax
	call	__Z7_AssertPKcS0_j
	cmpw	$-1, %bx
	jne	L1034
	.p2align 4
	.p2align 3
L981:
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	_renderDrawRoomsQ16.isra.0
	movswl	_save+3200, %ebp
	testw	%bp, %bp
	jle	L1003
	movl	_sector, %edi
	xorl	%ecx, %ecx
	movl	$-858993459, %esi
	.p2align 4
	.p2align 3
L987:
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
	movzwl	_save+3202(%ecx,%ecx), %eax
	addl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 26(%ebx)
	cmpl	%ecx, %ebp
	jne	L987
L1003:
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	$0, (%esp)
	movl	12(%esp), %eax
	call	__Z14analyzespritesiiih
	call	__Z19post_analyzespritesv
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	_renderDrawMasks
	.p2align 4,,10
	.p2align 3
L969:
	.cfi_def_cfa_offset 68
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	movl	$111, %edx
	call	__Z17ViewSectorInSceness
	movl	%eax, %edi
	cmpw	$-1, %ax
	jne	L1035
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1009:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 36(%esp)
	xorl	%ecx, %ecx
	jmp	L975
L970:
	testw	%bp, %bp
	jns	L981
L1033:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1035:
	.cfi_def_cfa_offset 68
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+120, %ebx
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movswl	%bx, %eax
	cmpw	$-1, %bx
	je	L988
	movl	_sprite, %edx
	movswl	%bx, %ecx
	jmp	L989
	.p2align 5
	.p2align 4,,10
	.p2align 3
L990:
	movswl	_nextspritestat(%ecx,%ecx), %ecx
	cmpw	$-1, %cx
	je	L1010
L989:
	imull	$44, %ecx, %esi
	addl	%edx, %esi
	cmpw	$121, 40(%esi)
	jne	L990
	cmpw	38(%esi), %di
	jne	L990
	movl	12(%esp), %ecx
	subl	(%esi), %ecx
	movl	%ecx, 36(%esp)
	movl	16(%esp), %ecx
	subl	4(%esi), %ecx
	movl	%ecx, 40(%esp)
	movl	36(%esp), %ecx
	jmp	L993
	.p2align 5
	.p2align 4,,10
	.p2align 3
L994:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L996
L993:
	imull	$44, %eax, %esi
	addl	%edx, %esi
	cmpw	38(%esi), %di
	jne	L994
	cmpw	$120, 40(%esi)
	jne	L994
	movl	(%esi), %ebx
	leal	46(%esp), %edx
	movl	%ecx, 36(%esp)
	movswl	%di, %eax
	addl	%ecx, %ebx
	movl	40(%esp), %ecx
	addl	4(%esi), %ecx
	movl	%edx, 4(%esp)
	leal	44(%esp), %edx
	movl	%ebx, 12(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	movl	%ecx, 16(%esp)
	call	__Z19GetUpperLowerSectorsiiPsS_
	movzwl	46(%esp), %ebp
	testw	%bp, %bp
	js	L1033
	movzwl	_headspritestat+120, %ebx
	movswl	%bp, %eax
	movl	%eax, 24(%esp)
	cmpw	$-1, %bx
	je	L998
	movl	_sprite, %edx
	jmp	L1007
	.p2align 4,,10
	.p2align 3
L996:
	testw	%bp, %bp
	js	L1033
L1007:
	movswl	24(%esi), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	20(%esp), %ecx
	movl	4(%eax), %esi
	subl	%esi, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	andl	$-32768, %eax
	addl	$32768, %eax
	subl	%eax, %esi
	movl	%esi, 36(%esp)
	jmp	L999
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1000:
	cmpw	$-1, %bx
	je	L998
	movl	_sprite, %edx
L999:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	leal	(%edx,%eax), %ecx
	cmpw	38(%ecx), %di
	jne	L1000
	cmpw	$110, 40(%ecx)
	jne	L1000
	movswl	_save+3200, %edx
	movswl	24(%ecx), %eax
	movl	_sector, %esi
	movw	%ax, _save+1600(%edx,%edx)
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
	movw	%dx, 40(%esp)
	movl	4(%ebp), %eax
	movl	%eax, _save(,%edx,4)
	movzwl	16(%ebp), %eax
	movw	%ax, _save+2400(%edx,%edx)
	movzwl	18(%ebp), %eax
	movw	%ax, _save+3202(%edx,%edx)
	leal	4(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%eax, 4(%ebp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
	cmpw	$2356, 16(%ebp)
	je	L1001
	leal	16(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$2357, %edx
	movw	%dx, 16(%ebp)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ebp
L1001:
	leal	18(%ebp), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 18(%ebp)
	movzwl	40(%esp), %eax
	addl	$1, %eax
	movw	%ax, _save+3200
	cmpw	$399, %ax
	jle	L1000
	movl	$1046, %ecx
	movl	$LC23, %edx
	movl	$LC25, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1000
L988:
	testw	%bp, %bp
	js	L1033
	.p2align 4
	.p2align 3
L998:
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	_renderDrawRoomsQ16.isra.0
	movswl	_save+3200, %ebp
	testw	%bp, %bp
	jle	L1003
	movl	_sector, %edi
	xorl	%ecx, %ecx
	movl	$-858993459, %esi
	.p2align 4
	.p2align 3
L1004:
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
	movzwl	_save+3202(%ecx,%ecx), %eax
	addl	$1, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 18(%ebx)
	cmpl	%ecx, %ebp
	jne	L1004
	jmp	L1003
L1010:
	movl	$0, 40(%esp)
	xorl	%ecx, %ecx
	jmp	L993
	.cfi_endproc
LFE100:
	.align 2
	.p2align 4
	.globl	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
__ZN2sm9Allocator7ReallocEPvjj.constprop.0:
LFB106:
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
	jbe	L1054
	testl	%esi, %esi
	je	L1055
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jb	L1056
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L1057
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
	jb	L1045
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L1045
	leal	(%ebx,%edx), %eax
	testb	$7, %al
	je	L1041
L1045:
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
	je	L1053
	cmpl	%esi, %edi
	movl	%edi, %ecx
	cmova	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L1046
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L1047:
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
L1056:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	addl	$1, %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
	sall	$4, %eax
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L1058
L1041:
	movl	%ebx, %edx
L1053:
	movl	28(%esp), %edi
	.cfi_restore 7
L1036:
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
L1054:
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
L1058:
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
L1057:
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
L1055:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L1036
	.p2align 4,,10
	.p2align 3
L1046:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L1047
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__Z12RTS_Shutdownv
	.def	__Z12RTS_Shutdownv;	.scl	2;	.type	32;	.endef
__Z12RTS_Shutdownv:
LFB126:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	__ZL9lumpcache.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1060
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
L1060:
	movl	__ZL8lumpinfo.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1061
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
L1061:
	movl	$0, __ZL8numlumps.lto_priv.0
	movl	$0, __ZL8lumpinfo.lto_priv.0
	movl	$0, __ZL9lumpcache.lto_priv.0
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE126:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "RTS_SoundLength: %i >= numlumps\0"
LC27:
	.ascii "source/sw/src/rts.cpp\0"
	.text
	.p2align 4
	.globl	__Z15RTS_SoundLengthi
	.def	__Z15RTS_SoundLengthi;	.scl	2;	.type	32;	.endef
__Z15RTS_SoundLengthi:
LFB127:
	.cfi_startproc
	addl	$1, %eax
	cmpl	%eax, __ZL8numlumps.lto_priv.0
	jle	L1075
L1072:
	movl	__ZL8lumpinfo.lto_priv.0, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,4), %eax
	movl	16(%eax), %eax
	ret
	.p2align 4,,10
	.p2align 3
L1075:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L1072
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, 16(%esp)
	movl	$LC26, 12(%esp)
	movl	$240, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %eax
	movl	__ZL8lumpinfo.lto_priv.0, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,4), %eax
	movl	16(%eax), %eax
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE127:
	.section .rdata,"dr"
LC28:
	.ascii "game%d.sav\0"
LC29:
	.ascii "wb\0"
	.align 4
LC30:
	.ascii "There was a problem saving. See \"Save Help\" section of release notes.\0"
LC31:
	.ascii "Game Saved\0"
	.text
	.p2align 4
	.globl	__Z8SaveGames
	.def	__Z8SaveGames;	.scl	2;	.type	32;	.endef
__Z8SaveGames:
LFB129:
	.cfi_startproc
	pushl	%eax
	.cfi_def_cfa_offset 8
	movl	$24844, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_def_cfa_offset 24852
	movl	(%esp,%eax), %eax
	movl	%ebx, 24832(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	%esi, 24836(%esp)
	movl	__ZL10nummodules, %eax
	testl	%eax, %eax
	.cfi_offset 6, -16
	jne	L1077
	call	__Z13Saveable_Initv.part.0
L1077:
	leal	84(%esp), %esi
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	$LC28, 4(%esp)
	call	_sprintf
	movl	%esi, (%esp)
	movl	$LC29, 4(%esp)
	call	_fopen
	movl	%eax, 28(%esp)
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1078
	movl	%eax, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_GameVersion, %eax
	movl	%edi, 24840(%esp)
	movl	%ebp, 24844(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	leal	(%ebx,%ebx,4), %eax
	movl	$1, %ecx
	sall	$4, %eax
	movl	$80, %edx
	addl	$_SaveGameDescr, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_Level, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$_Skill, %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	_waloff+24068, %eax
	movb	$-1, _walock+6017
	testl	%eax, %eax
	je	L1257
L1079:
	movl	$160, %ecx
	movl	$100, %edx
	movl	$6017, %eax
	xorl	%ebp, %ebp
	movl	$100, %ebx
	movl	$1, %esi
	movw	%bx, _tilesiz+24068
	call	_renderSetTarget
	movw	%si, _ScreenSavePic
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z10drawscreenP12PLAYERstruct
	movw	%bp, _ScreenSavePic
	call	_renderRestoreTarget
	movl	28(%esp), %esi
	movl	_waloff+24068, %eax
	movl	$1, %ecx
	movl	$16000, %edx
	movl	%esi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_numplayers, %eax
	movb	$-57, _walock+6017
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_myconnectindex, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_connecthead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$_connectpoint2, %eax
	movl	$1, %ecx
	movl	$64, %edx
	call	_klzw_write_compressed.constprop.0
	movl	_numplayers, %eax
	movl	$0, 52(%esp)
	movl	$0, 20(%esp)
	testl	%eax, %eax
	jle	L1179
	movl	%edi, 32(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1121:
	imull	$24124, %eax, %ebx
	leal	708(%esp), %eax
	movl	$24124, 8(%esp)
	movl	%eax, (%esp)
	leal	_Player(%ebx), %esi
	movl	%esi, 4(%esp)
	call	_memcpy
	movl	_Player+22988(%ebx), %esi
	leal	_Player+22988(%ebx), %eax
	movl	23756(%esp), %ebp
	cmpl	%eax, %esi
	je	L1081
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1084
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1082:
	movl	(%ecx), %edi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1081
	movl	%edi, %ecx
L1084:
	cmpl	%edx, %ebp
	jne	L1082
	movswl	%bx, %ebx
L1083:
	leal	708(%esp), %edi
	movl	%ebx, 23756(%esp)
	leal	23760(%esp), %ebp
	movl	%edi, 16(%esp)
	.p2align 4
	.p2align 3
L1089:
	movl	0(%ebp), %edi
	cmpl	%eax, %esi
	je	L1085
	movl	%esi, 12(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1088
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1086:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1258
	movl	%esi, %ecx
L1088:
	cmpl	%edx, %edi
	jne	L1086
	movl	12(%esp), %esi
	movswl	%bx, %ebx
L1087:
	movl	%ebx, 0(%ebp)
	addl	$4, %ebp
	leal	23816(%esp), %ebx
	cmpl	%ebp, %ebx
	jne	L1089
	movl	16(%esp), %edi
	movl	23816(%esp), %ebp
	cmpl	%eax, %esi
	je	L1090
	movl	%esi, 12(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1093
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1091:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1259
	movl	%esi, %ecx
L1093:
	cmpl	%edx, %ebp
	jne	L1091
	movl	12(%esp), %esi
	movswl	%bx, %ebx
L1092:
	movl	%ebx, 23816(%esp)
	leal	23860(%esp), %ebx
	leal	23832(%esp), %ebp
	movl	%ebx, 16(%esp)
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L1098:
	movl	0(%ebp), %edi
	cmpl	%eax, %esi
	je	L1094
	movl	%esi, 12(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1097
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1095:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1260
	movl	%esi, %ecx
L1097:
	cmpl	%edx, %edi
	jne	L1095
	movl	12(%esp), %esi
	movswl	%bx, %ebx
L1096:
	movl	%ebx, 0(%ebp)
	addl	$4, %ebp
	cmpl	%ebp, 16(%esp)
	jne	L1098
	movl	24(%esp), %edi
	movl	23860(%esp), %ebp
	cmpl	%eax, %esi
	je	L1099
	movl	%esi, 12(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1102
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1100:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1261
	movl	%esi, %ecx
L1102:
	cmpl	%edx, %ebp
	jne	L1100
	movswl	%bx, %ebx
	movl	12(%esp), %esi
	movl	23864(%esp), %ebp
	movl	%ebx, 23860(%esp)
	movl	23868(%esp), %ebx
	movl	%ebx, 12(%esp)
L1101:
	movl	%esi, 16(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1106
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1104:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1262
	movl	%esi, %ecx
L1106:
	cmpl	%ebp, %edx
	jne	L1104
	movl	16(%esp), %esi
	movswl	%bx, %ebx
L1105:
	movl	%ebx, 23864(%esp)
L1174:
	movl	%esi, 16(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	movl	12(%esp), %ebp
	jmp	L1110
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1108:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1263
	movl	%esi, %ecx
L1110:
	cmpl	%edx, %ebp
	jne	L1108
	movl	16(%esp), %esi
	movswl	%bx, %ebx
L1109:
	movl	%ebx, 23868(%esp)
	leal	720(%esp), %ebx
	leal	708(%esp), %ebp
	movl	%ebx, 12(%esp)
	movl	%edi, 24(%esp)
	.p2align 4
	.p2align 3
L1115:
	movl	23164(%ebp), %edi
	cmpl	%eax, %esi
	je	L1111
	movl	%esi, 16(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1114
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1112:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1264
	movl	%esi, %ecx
L1114:
	cmpl	%edx, %edi
	jne	L1112
	movl	16(%esp), %esi
	movswl	%bx, %ebx
L1113:
	movl	%ebx, 23164(%ebp)
	addl	$4, %ebp
	cmpl	%ebp, 12(%esp)
	jne	L1115
	movl	24(%esp), %edi
	.p2align 4
	.p2align 3
L1120:
	movl	23176(%edi), %ebp
	cmpl	%eax, %esi
	je	L1116
	movl	%esi, 16(%esp)
	movl	(%esi), %ecx
	movl	%esi, %edx
	xorl	%ebx, %ebx
	jmp	L1119
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1117:
	movl	(%ecx), %esi
	addl	$1, %ebx
	movl	%ecx, %edx
	cmpl	%eax, %ecx
	je	L1265
	movl	%esi, %ecx
L1119:
	cmpl	%edx, %ebp
	jne	L1117
	movl	16(%esp), %esi
	movswl	%bx, %ebx
L1118:
	movl	%ebx, 23176(%edi)
	addl	$4, %edi
	cmpl	%edi, 12(%esp)
	jne	L1120
	movl	28(%esp), %edi
	movl	$3, %ecx
	movl	$24124, %edx
	leal	708(%esp), %eax
	movw	%cx, 46(%esp)
	movl	$1, %ecx
	movl	%edi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	756(%esp), %edx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	804(%esp), %edx
	movl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	808(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	orl	20(%esp), %ebx
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	812(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	856(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	860(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	864(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	868(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	872(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	1060(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	1064(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	23672(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	23688(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	23692(%esp), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	_numplayers, %edx
	orl	%eax, %ebx
	movl	52(%esp), %eax
	movl	%ebx, 20(%esp)
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	%edx, %eax
	jl	L1121
	movl	$0, 52(%esp)
	movl	32(%esp), %edi
	testl	%edx, %edx
	jle	L1179
	leal	46(%esp), %esi
	movl	%edi, 40(%esp)
	movl	20(%esp), %ebx
	xorl	%eax, %eax
	movl	%esi, 24(%esp)
	movl	28(%esp), %esi
	.p2align 4
	.p2align 3
L1131:
	imull	$24124, %eax, %eax
	xorl	%edx, %edx
	movw	%dx, 46(%esp)
	movl	_Player+22988(%eax), %edi
	leal	_Player+22988(%eax), %ecx
	movl	%eax, 32(%esp)
	movl	%ecx, 20(%esp)
	cmpl	%edi, %ecx
	je	L1122
	movl	(%edi), %eax
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L1130:
	movl	%esi, (%esp)
	movl	24(%esp), %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, 16(%esp)
	xorl	%eax, %eax
L1123:
	movl	4(%edi,%eax), %ebp
	movl	8(%edi,%eax), %ecx
	movl	12(%edi,%eax), %edx
	movl	(%edi,%eax), %ebx
	movl	%ebp, 168(%esp,%eax)
	movl	%ebx, 164(%esp,%eax)
	movl	%ecx, 172(%esp,%eax)
	movl	%edx, 176(%esp,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L1123
	leal	164(%esp,%eax), %edx
	addl	%edi, %eax
	movl	16(%esp), %ebx
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	movl	32(%esp), %eax
	movl	8(%edi), %ebp
	movl	20(%esp), %edi
	movl	_Player+22988(%eax), %eax
	cmpl	%eax, %edi
	je	L1125
	movl	(%eax), %edx
	xorl	%ecx, %ecx
	movl	%edi, %ebx
	jmp	L1128
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1126:
	movl	(%edx), %edi
	addl	$1, %ecx
	movl	%edx, %eax
	cmpl	%edx, %ebx
	je	L1266
	movl	%edi, %edx
L1128:
	cmpl	%eax, %ebp
	jne	L1126
	movl	16(%esp), %ebx
	movswl	%cx, %ecx
L1127:
	movl	%esi, (%esp)
	movl	$252, %edx
	leal	164(%esp), %eax
	movl	%ecx, 172(%esp)
	movl	$1, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	196(%esp), %edx
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	176(%esp), %edx
	movl	%eax, %edi
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	180(%esp), %edx
	orl	%eax, %edi
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%ebx, %edi
	movl	184(%esp), %edx
	orl	%eax, %edi
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	%edi, %ebx
	movl	188(%esp), %edx
	leal	208(%esp), %edi
	orl	%eax, %ebx
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	192(%esp), %edx
	orl	%eax, %ebx
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	336(%esp), %edx
	orl	%eax, %ebx
	movl	%esi, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	orl	%eax, %ebx
	.p2align 4
	.p2align 3
L1129:
	movl	(%edi), %edx
	movl	%esi, %eax
	addl	$16, %edi
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%eax, %ebx
	leal	336(%esp), %eax
	cmpl	%edi, %eax
	jne	L1129
	movl	12(%esp), %edi
	addw	$1, 46(%esp)
	movl	(%edi), %eax
	cmpl	%edi, 20(%esp)
	je	L1122
	movl	%eax, 12(%esp)
	jmp	L1130
	.p2align 4,,10
	.p2align 3
L1266:
	movl	16(%esp), %ebx
L1125:
	cmpl	%ebp, 20(%esp)
	movl	$-1, %ecx
	movl	$9999, %eax
	cmove	%eax, %ecx
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1265:
	movl	16(%esp), %esi
L1116:
	cmpl	%eax, %ebp
	movl	$-1, %ebx
	movl	$9999, %ecx
	cmove	%ecx, %ebx
	jmp	L1118
	.p2align 4,,10
	.p2align 3
L1264:
	movl	16(%esp), %esi
L1111:
	cmpl	%eax, %edi
	movl	$-1, %ebx
	movl	$9999, %edi
	cmove	%edi, %ebx
	jmp	L1113
	.p2align 4,,10
	.p2align 3
L1260:
	movl	12(%esp), %esi
L1094:
	cmpl	%eax, %edi
	movl	$-1, %ebx
	movl	$9999, %edi
	cmove	%edi, %ebx
	jmp	L1096
	.p2align 4,,10
	.p2align 3
L1258:
	movl	12(%esp), %esi
L1085:
	cmpl	%eax, %edi
	movl	$-1, %ebx
	movl	$9999, %edi
	cmove	%edi, %ebx
	jmp	L1087
	.p2align 4,,10
	.p2align 3
L1122:
	movl	$-1, %eax
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movw	%ax, 46(%esp)
	movl	24(%esp), %eax
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	_numplayers, %eax
	jl	L1131
	movl	%ebx, 20(%esp)
	movl	40(%esp), %edi
L1080:
	movl	28(%esp), %esi
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_numsectors, %eax
	movl	%esi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	_sector, %eax
	movl	$40, %edx
	movswl	_numsectors, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	$0, 52(%esp)
	cmpw	$0, _numsectors
	jle	L1132
	movl	24(%esp), %ebp
	xorl	%eax, %eax
	jmp	L1135
L1267:
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	%ebp, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	%ebx, %eax
	movl	$28, %edx
	call	_klzw_write_compressed.constprop.0
L1134:
	movl	52(%esp), %eax
	movswl	_numsectors, %edx
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	%edx, %eax
	jge	L1132
L1135:
	movl	_SectUser(,%eax,4), %ebx
	movw	%ax, 46(%esp)
	testl	%ebx, %ebx
	jne	L1267
	movl	%esi, (%esp)
	movl	$-1, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movw	%ax, 46(%esp)
	movl	%ebp, %eax
	call	_klzw_write_compressed.constprop.0
	jmp	L1134
L1081:
	cmpl	%eax, %ebp
	movl	$-1, %ebx
	movl	$9999, %edi
	cmove	%edi, %ebx
	jmp	L1083
L1259:
	movl	12(%esp), %esi
L1090:
	cmpl	%eax, %ebp
	movl	$-1, %ebx
	movl	$9999, %ecx
	cmove	%ecx, %ebx
	jmp	L1092
L1263:
	movl	16(%esp), %esi
L1172:
	cmpl	%eax, 12(%esp)
	movl	$-1, %ebx
	movl	$9999, %ecx
	cmove	%ecx, %ebx
	jmp	L1109
L1261:
	movl	12(%esp), %esi
	cmpl	%eax, %ebp
	jne	L1268
	movl	23868(%esp), %ebx
	movl	23864(%esp), %ebp
	movl	$9999, 23860(%esp)
	movl	%ebx, 12(%esp)
	jmp	L1101
L1262:
	movl	16(%esp), %esi
	movl	$9999, %ebx
	cmpl	%ebp, %eax
	je	L1105
L1107:
	movl	$-1, 23864(%esp)
	cmpl	%eax, %esi
	jne	L1174
	jmp	L1172
	.p2align 4,,10
	.p2align 3
L1132:
	movl	28(%esp), %ebx
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_numwalls, %eax
	movl	%ebx, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	_wall, %eax
	movl	$32, %edx
	movswl	_numwalls, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$_Numsprites, %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_write_compressed.constprop.0
	movl	$0, 52(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1137:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$1024, 26(%eax)
	je	L1136
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	leal	52(%esp), %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	imull	$44, 52(%esp), %eax
	movl	$1, %ecx
	addl	_sprite, %eax
	movl	$44, %edx
	call	_klzw_write_compressed.constprop.0
L1136:
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	$16383, %eax
	jle	L1137
	movl	28(%esp), %ebx
	movl	$1, %ecx
	leal	52(%esp), %eax
	movl	$4, %edx
	movl	$-1, 52(%esp)
	leal	416(%esp), %ebp
	movl	%ebx, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$8194, %edx
	movl	$_headspritesect, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_prevspritesect, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_nextspritesect, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$2050, %edx
	movl	$_headspritestat, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_prevspritestat, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_nextspritestat, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$_tailspritefree, %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	%edi, 12(%esp)
	movl	20(%esp), %esi
	xorl	%eax, %eax
	movl	$0, 52(%esp)
	.p2align 4
	.p2align 3
L1142:
	movw	%ax, 46(%esp)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1138
	movl	%ebx, (%esp)
	movl	24(%esp), %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$292, 8(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	movl	%ebx, (%esp)
	movl	%ebp, %eax
	movl	$1, %ecx
	movl	$292, %edx
	call	_klzw_write_compressed.constprop.0
	movl	424(%esp), %eax
	testl	%eax, %eax
	je	L1139
	movl	%ebx, (%esp)
	movl	420(%esp), %edx
	movl	$1, %ecx
	call	_klzw_write_compressed.constprop.0
L1139:
	movl	416(%esp), %eax
	testl	%eax, %eax
	je	L1140
	movl	%ebx, (%esp)
	movl	$36, %edx
	movl	$1, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	416(%esp), %edx
	movl	28(%edx), %eax
	testl	%eax, %eax
	je	L1141
	movl	24(%edx), %edx
	movl	%ebx, (%esp)
	movl	$1, %ecx
	sall	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	416(%esp), %edx
L1141:
	movl	32(%edx), %eax
	testl	%eax, %eax
	je	L1140
	movl	24(%edx), %edx
	movl	%ebx, (%esp)
	movl	$1, %ecx
	sall	$2, %edx
	call	_klzw_write_compressed.constprop.0
L1140:
	movl	428(%esp), %edx
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	432(%esp), %edx
	movl	%eax, %edi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	436(%esp), %edx
	orl	%eax, %edi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%edi, %esi
	movl	440(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	444(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	448(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	452(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	456(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	460(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	464(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	468(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	532(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	536(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	540(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	544(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	556(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	560(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	616(%esp), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%eax, %esi
L1138:
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	$16383, %eax
	jle	L1142
	movl	28(%esp), %ebx
	movl	24(%esp), %eax
	movl	$-1, %ebp
	movl	$1, %ecx
	movl	$2, %edx
	movw	%bp, 46(%esp)
	movl	12(%esp), %edi
	movl	%esi, %ebp
	movl	%ebx, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$_SectorObject, %eax
	movl	$1, %ecx
	movl	$120560, %edx
	call	_klzw_write_compressed.constprop.0
	movl	%edi, 12(%esp)
	xorl	%eax, %eax
	movw	%ax, 46(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1143:
	cwtl
	imull	$6028, %eax, %edi
	movl	%ebx, %eax
	movl	_SectorObject+160(%edi), %edx
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	_SectorObject+164(%edi), %edx
	movl	%eax, %esi
	movl	%ebx, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	_SectorObject+168(%edi), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	_SectorObject+172(%edi), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	_SectorObject+176(%edi), %edx
	orl	%eax, %esi
	movl	%ebx, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%esi, %eax
	orl	%eax, %ebp
	movzwl	46(%esp), %eax
	addl	$1, %eax
	movw	%ax, 46(%esp)
	cmpw	$19, %ax
	jle	L1143
	movl	28(%esp), %ebx
	movl	$1, %ecx
	movl	$2520, %edx
	movl	$_SineWaveFloor, %eax
	movl	%ebp, 20(%esp)
	movl	12(%esp), %edi
	movl	%ebx, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$10240, %edx
	movl	$_SineWall, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$80, %edx
	movl	$_SpringBoard, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_x_min_bound, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_y_min_bound, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_x_max_bound, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_y_max_bound, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebx, (%esp)
	movl	$_Track, %eax
	movl	$1, %ecx
	movl	$1200, %edx
	call	_klzw_write_compressed.constprop.0
	movl	$0, 52(%esp)
	xorl	%eax, %eax
	jmp	L1146
L1270:
	movl	%ebx, (%esp)
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$20, %edx
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	$99, %eax
	jg	L1269
L1146:
	leal	(%eax,%eax,2), %edx
	movswl	_Track+10(,%edx,4), %eax
	movl	_Track(,%edx,4), %esi
	testw	%ax, %ax
	je	L1270
	movl	%ebx, (%esp)
	leal	(%eax,%eax,4), %edx
	movl	$1, %ecx
	movl	%esi, %eax
	sall	$2, %edx
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	$99, %eax
	jle	L1146
L1269:
	movl	28(%esp), %ebp
	movl	$1, %ecx
	movl	$24, %edx
	movl	$_loc, %eax
	movl	%ebp, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$20, %edx
	movl	$_LevelName, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_screenpeek, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_totalsynctics, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%ebp, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_AnimCnt, %eax
	call	_klzw_write_compressed.constprop.0
	movl	$0, 52(%esp)
	cmpw	$0, _AnimCnt
	jle	L1147
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1158:
	leal	(%eax,%eax,2), %edx
	movl	$0, 48(%esp)
	xorl	%ebx, %ebx
	leal	_Anim(,%edx,8), %eax
	movl	_Anim(,%edx,8), %edx
	movl	4(%eax), %ecx
	movl	%edx, 60(%esp)
	movl	%ecx, 64(%esp)
	movl	8(%eax), %ecx
	movl	%ecx, 68(%esp)
	movl	12(%eax), %ecx
	movl	%ecx, 72(%esp)
	movl	16(%eax), %ecx
	movl	20(%eax), %eax
	movl	%ecx, 76(%esp)
	movl	%eax, 80(%esp)
	xorl	%eax, %eax
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1200:
	movl	%eax, %edi
L1151:
	movl	_User(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L1148
	cmpl	%ecx, %edx
	jb	L1148
	leal	292(%ecx), %esi
	cmpl	%esi, %edx
	jb	L1271
L1148:
	addl	$1, %eax
	movl	$1, %ebx
	cmpl	$16384, %eax
	jne	L1200
	cmpl	$-2, %edx
	je	L1272
	movswl	_numsectors, %ebx
	testl	%ebx, %ebx
	jle	L1150
	movl	%edi, 12(%esp)
	xorl	%esi, %esi
	movl	36(%esp), %edi
	xorl	%eax, %eax
	movl	%ebp, 16(%esp)
	jmp	L1155
	.p2align 4,,10
	.p2align 3
L1201:
	movl	%eax, %edi
L1155:
	movl	_SectUser(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L1153
	cmpl	%edx, %ecx
	ja	L1153
	leal	28(%ecx), %ebp
	cmpl	%ebp, %edx
	jb	L1273
L1153:
	addl	$1, %eax
	movl	$1, %esi
	cmpl	%ebx, %eax
	jne	L1201
	movl	%eax, 48(%esp)
	movl	16(%esp), %ebp
	movl	%edi, 36(%esp)
	movl	12(%esp), %edi
L1150:
	movl	%ebp, (%esp)
	movl	$24, %edx
	leal	60(%esp), %eax
	movl	$1, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	60(%esp), %edx
	leal	3(%edx), %eax
	cmpl	$1, %eax
	jbe	L1274
	movl	%ebp, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%eax, 20(%esp)
L1157:
	movl	76(%esp), %edx
	movl	%ebp, %eax
	call	__ZL19SaveSymCodeInfo_rawP6_iobufPv
	movl	20(%esp), %ebx
	movl	80(%esp), %edx
	orl	%eax, %ebx
	movl	%ebp, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	movswl	_AnimCnt, %edx
	orl	%eax, %ebx
	movl	52(%esp), %eax
	movl	%ebx, 20(%esp)
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	%edx, %eax
	jl	L1158
L1147:
	movl	28(%esp), %esi
	movl	$1, %ecx
	movl	$16, %edx
	movl	$_totalclock, %eax
	movl	%esi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_numframes, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_randomseed, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_numshades, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_NormalVisibility, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_g_visibility, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_parallaxtype, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_parallaxyoffs_override, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_parallaxyscale_override, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_pskybits_override, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$6, %edx
	movl	$_BorderInfo, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_MoveSkip2, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_MoveSkip4, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_MoveSkip8, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_numinterpolations, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$65536, %edx
	movl	$_oldipos, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$_bakipos, %eax
	movl	$1, %ecx
	movl	$65536, %edx
	call	_klzw_write_compressed.constprop.0
	movl	_numinterpolations, %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	js	L1159
	movl	20(%esp), %ebx
	.p2align 4
	.p2align 3
L1160:
	movl	_curipos(,%eax,4), %edx
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%eax, %ebx
	movl	52(%esp), %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	jns	L1160
	movl	%ebx, 20(%esp)
L1159:
	movl	28(%esp), %esi
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_short_numinterpolations, %eax
	movl	%esi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$512, %edx
	movl	$_short_oldipos, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	movl	$_short_bakipos, %eax
	movl	$1, %ecx
	movl	$512, %edx
	call	_klzw_write_compressed.constprop.0
	movswl	_short_numinterpolations, %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	js	L1161
	movl	20(%esp), %ebx
	.p2align 4
	.p2align 3
L1162:
	movl	_short_curipos(,%eax,4), %edx
	movl	%esi, %eax
	call	__Z15SaveSymDataInfoP6_iobufPv
	orl	%eax, %ebx
	movl	52(%esp), %eax
	subl	$1, %eax
	movl	%eax, 52(%esp)
	jns	L1162
	movl	%ebx, 20(%esp)
L1161:
	movb	$0, 16(%esp)
	movl	28(%esp), %esi
	movl	$__ZL13so_interpdata.lto_priv.0, %ebp
	.p2align 4
	.p2align 3
L1165:
	movl	%esi, (%esp)
	leal	458752(%ebp), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	leal	458764(%ebp), %eax
	movl	$1, %ecx
	movl	$1, %edx
	call	_klzw_write_compressed.constprop.0
	movl	458752(%ebp), %ebx
	testl	%ebx, %ebx
	jle	L1163
	movl	%ebp, 12(%esp)
	leal	4(%ebp), %ebx
	movzbl	16(%esp), %ebp
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1164:
	movl	-4(%ebx), %edx
	movl	%esi, %eax
	addl	$1, %edi
	call	__Z15SaveSymDataInfoP6_iobufPv
	movl	%esi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	orl	%eax, %ebp
	movl	%ebx, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%esi, (%esp)
	leal	20(%ebx), %eax
	movl	$1, %ecx
	movl	$4, %edx
	addl	$28, %ebx
	call	_klzw_write_compressed.constprop.0
	movl	12(%esp), %eax
	cmpl	458752(%eax), %edi
	jl	L1164
	movl	%ebp, %eax
	movl	12(%esp), %ebp
	movb	%al, 16(%esp)
L1163:
	addl	$458768, %ebp
	cmpl	$__ZL13so_interpdata.lto_priv.0+9175360, %ebp
	jne	L1165
	movl	24(%esp), %ebp
	movl	28(%esp), %edi
	movl	$_orgwalllist, %edx
	movl	$0, 52(%esp)
	movzbl	16(%esp), %ebx
	orl	20(%esp), %ebx
	.p2align 4
	.p2align 3
L1169:
	movl	(%edx), %eax
	xorl	%ecx, %ecx
	movw	%cx, 46(%esp)
	movl	%eax, 56(%esp)
	cmpl	%edx, %eax
	je	L1166
	movl	(%eax), %esi
	.p2align 4
	.p2align 3
L1167:
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	%ebp, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$12, %edx
	leal	56(%esp), %eax
	movl	$1, %ecx
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %edx
	movl	%esi, 56(%esp)
	movl	%esi, %eax
	addw	$1, 46(%esp)
	movl	(%esi), %esi
	cmpl	%eax, _otlist(,%edx,4)
	jne	L1167
L1166:
	movl	%edi, (%esp)
	movl	$-1, %eax
	movl	$1, %ecx
	movl	$2, %edx
	movw	%ax, 46(%esp)
	movl	%ebp, %eax
	call	_klzw_write_compressed.constprop.0
	movl	52(%esp), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	cmpl	$3, %eax
	jg	L1168
	movl	_otlist(,%eax,4), %edx
	jmp	L1169
L1274:
	movl	%ebp, (%esp)
	leal	48(%esp), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_write_compressed.constprop.0
	movl	%ebp, (%esp)
	leal	56(%esp), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_write_compressed.constprop.0
	jmp	L1157
L1272:
	movl	$16384, 48(%esp)
	jmp	L1150
L1271:
	testb	%bl, %bl
	je	L1149
	movl	%edi, 48(%esp)
L1149:
	subl	%ecx, %edx
	movl	$-2, 60(%esp)
	movl	%edx, 56(%esp)
	jmp	L1150
L1168:
	movl	28(%esp), %edi
	movl	$1, %ecx
	movl	$288, %edx
	movl	$_mirror, %eax
	movl	%edi, (%esp)
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_mirrorcnt, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_mirrorinview, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_StarQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$64, %edx
	movl	$_StarQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_HoleQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$128, %edx
	movl	$_HoleQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_WallBloodQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$64, %edx
	movl	$_WallBloodQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_FloorBloodQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$64, %edx
	movl	$_FloorBloodQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_GenericQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$64, %edx
	movl	$_GenericQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_LoWangsQueueHead, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$32, %edx
	movl	$_LoWangsQueue, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_PlayClock, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_TotalKillable, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$20, %edx
	movl	$_gNet, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$16, %edx
	movl	$_LevelSong, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_SongTrack, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$768, %edx
	movl	$_palette, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$768, %edx
	movl	$_palette_data, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$332, %edx
	movl	$_gs, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$153600, %edx
	movl	$_picanm, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_LevelSecrets, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2048, %edx
	movl	$_show2dwall, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2048, %edx
	movl	$_show2dsprite, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$512, %edx
	movl	$_show2dsector, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_Bunny_Count, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$80, %edx
	movl	$_UserMapName, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_GodMode, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_FinishTimer, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_FinishAnim, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_serpwasseen, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_sumowasseen, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$1, %edx
	movl	$_zillawasseen, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$6, %edx
	movl	$_BossSpriteNum, %eax
	call	_klzw_write_compressed.constprop.0
	movl	%edi, (%esp)
	call	_fclose
	testl	%ebx, %ebx
	je	L1170
	movl	$LC30, (%esp)
	call	__Z11CON_MessagePKcz
	movl	24840(%esp), %edi
	.cfi_restore 7
	movl	24844(%esp), %ebp
	.cfi_restore 5
L1078:
	movl	$-1, %ebx
L1076:
	movl	%ebx, %eax
	movl	24836(%esp), %esi
	movl	24832(%esp), %ebx
	addl	$24848, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1273:
	.cfi_def_cfa_offset 24852
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %eax
	movl	%edi, 36(%esp)
	movl	%edi, %ebx
	movl	16(%esp), %ebp
	movl	12(%esp), %edi
	testb	%al, %al
	je	L1154
	movl	%ebx, 48(%esp)
L1154:
	subl	%ecx, %edx
	movl	$-3, 60(%esp)
	movl	%edx, 56(%esp)
	jmp	L1150
L1268:
	movl	23868(%esp), %ebx
	movl	23864(%esp), %ebp
	movl	$-1, 23860(%esp)
	movl	%ebx, 12(%esp)
	jmp	L1101
L1170:
	imull	$24124, _myconnectindex, %eax
	movl	$LC31, %edx
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	24840(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	24844(%esp), %ebp
	.cfi_restore 5
	jmp	L1076
L1099:
	.cfi_restore_state
	cmpl	%esi, %ebp
	jne	L1275
	movl	23868(%esp), %ebx
	movl	23864(%esp), %edx
	movl	$9999, 23860(%esp)
	movl	%ebx, 12(%esp)
L1175:
	cmpl	%edx, %eax
	jne	L1107
	movl	$9999, 23864(%esp)
	jmp	L1172
L1257:
	movl	$_walock+6017, %ecx
	movl	$16000, %edx
	movl	$_waloff+24068, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	jmp	L1079
L1179:
	leal	46(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L1080
L1275:
	movl	23868(%esp), %ebx
	movl	23864(%esp), %edx
	movl	$-1, 23860(%esp)
	movl	%ebx, 12(%esp)
	jmp	L1175
	.cfi_endproc
LFE129:
	.p2align 4
	.globl	__Z8LoadGames
	.def	__Z8LoadGames;	.scl	2;	.type	32;	.endef
__Z8LoadGames:
LFB137:
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
	movswl	%ax, %ebx
	subl	$136, %esp
	movl	__ZL10nummodules, %eax
	testl	%eax, %eax
	jne	L1277
	call	__Z13Saveable_Initv.part.0
L1277:
	leal	-96(%ebp), %esi
	movl	%ebx, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	xorl	%edx, %edx
	movl	%esi, %eax
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1276
	movl	%eax, (%esp)
	movl	$1, %ecx
	leal	-104(%ebp), %eax
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_GameVersion, %eax
	cmpl	%eax, -104(%ebp)
	jne	L1420
	cmpb	$0, _InMenuLevel
	jne	L1422
	call	__Z14TerminateLevelv
L1281:
	call	__Z17Terminate3DSoundsv
	call	__Z17Terminate3DSoundsv
	movl	%edi, (%esp)
	leal	(%ebx,%ebx,4), %eax
	movl	$1, %ecx
	sall	$4, %eax
	movl	$80, %edx
	addl	$_SaveGameDescr, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_Level, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$_Skill, %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_waloff+24068, %eax
	movb	$-1, _walock+6017
	testl	%eax, %eax
	je	L1423
L1282:
	movl	$160, %ecx
	movl	$100, %edx
	movl	$6017, %eax
	movl	$100, %ebx
	movw	%bx, _tilesiz+24068
	call	_renderSetTarget
	movl	%edi, (%esp)
	movl	_waloff+24068, %eax
	movl	$1, %ecx
	movl	$16000, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	call	_renderRestoreTarget
	movl	$1, %ecx
	movl	$4, %edx
	movb	$-57, _walock+6017
	movl	%edi, (%esp)
	movl	$_numplayers, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_myconnectindex, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_connecthead, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$64, %edx
	movl	$_connectpoint2, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	_numplayers, %esi
	testl	%esi, %esi
	jle	L1353
	movl	$_Player, %ebx
	xorl	%esi, %esi
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1284:
	movl	_numplayers, %eax
	addl	$1, %esi
	addl	$24124, %ebx
	cmpl	%eax, %esi
	jge	L1424
L1286:
	movl	%ebx, -124(%ebp)
	movl	$1, %ecx
	movl	$24124, %edx
	movl	%ebx, %eax
	movl	%edi, (%esp)
	call	_klzw_read_compressed.constprop.0.isra.0
	leal	48(%ebx), %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	96(%ebx), %edx
	movl	%eax, -120(%ebp)
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	100(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	104(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	148(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	152(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	156(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	160(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	164(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	352(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	356(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	22964(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymCodeInfoiPPv
	movl	-120(%ebp), %ecx
	leal	22980(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	movl	-120(%ebp), %ecx
	leal	22984(%ebx), %edx
	orl	%eax, %ecx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z15LoadSymDataInfoiPPv
	orl	-120(%ebp), %eax
	je	L1284
L1420:
	movl	%edi, %eax
	movl	$-1, %edi
	call	_kclose
L1276:
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
L1422:
	.cfi_restore_state
	cmpb	$0, _DemoMode
	jne	L1281
	call	__Z8StopSongv.part.0
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1424:
	testl	%eax, %eax
	jle	L1283
	leal	-110(%ebp), %eax
	movl	$0, -128(%ebp)
	movl	$_Player+22988, %edx
	movl	%edi, %esi
	movl	%eax, -120(%ebp)
L1296:
	movl	%edx, (%edx)
	movl	%esi, %edi
	movl	%edx, 4(%edx)
	movl	%edx, -124(%ebp)
L1295:
	movl	%edi, (%esp)
	movl	-120(%ebp), %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	cmpw	$-1, -110(%ebp)
	je	L1287
	movl	$252, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1288
	movl	$0, 236(%eax)
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	xorl	%eax, %eax
L1289:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L1289
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$252, %edx
	movl	%ebx, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	-124(%ebp), %esi
	leal	32(%ebx), %edx
	movl	%esi, (%ebx)
	movl	4(%esi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, 4(%esi)
	movl	4(%ebx), %eax
	movl	%ebx, (%eax)
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	12(%ebx), %edx
	movl	%eax, %esi
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	16(%ebx), %edx
	orl	%eax, %esi
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	20(%ebx), %edx
	orl	%eax, %esi
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	24(%ebx), %edx
	orl	%eax, %esi
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	28(%ebx), %edx
	orl	%eax, %esi
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	orl	%eax, %esi
	movl	%edi, %eax
	movl	%esi, -132(%ebp)
	leal	172(%ebx), %esi
	movl	%esi, %edx
	call	__Z15LoadSymCodeInfoiPPv
	orl	-132(%ebp), %eax
	jne	L1420
	addl	$44, %ebx
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1293:
	addl	$16, %ebx
	cmpl	%ebx, %esi
	je	L1295
L1294:
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	testl	%eax, %eax
	je	L1293
	movl	%edi, %eax
	movl	$-1, %edi
	call	_kclose
	jmp	L1276
	.p2align 4,,10
	.p2align 3
L1423:
	movl	$_walock+6017, %ecx
	movl	$16000, %edx
	movl	$_waloff+24068, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	jmp	L1282
L1431:
	movl	%edi, %ecx
	movl	$16, %edx
	movl	$_totalclock, %eax
	movl	-128(%ebp), %ebx
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_numframes, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_randomseed, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_numshades, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_NormalVisibility, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_g_visibility, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_parallaxtype, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_parallaxyoffs_override, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_parallaxyscale_override, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_pskybits_override, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$6, %edx
	movl	$_BorderInfo, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_MoveSkip2, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_MoveSkip4, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_MoveSkip8, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_numinterpolations, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$65536, %edx
	movl	$_oldipos, %eax
	call	_kdfread.constprop.0.isra.0
	movl	$_bakipos, %eax
	movl	%edi, %ecx
	movl	$65536, %edx
	call	_kdfread.constprop.0.isra.0
	movl	_numinterpolations, %eax
	leal	-1(%eax), %esi
	jmp	L1319
L1320:
	leal	_curipos(,%esi,4), %edx
	movl	%edi, %eax
	subl	$1, %esi
	call	__Z15LoadSymDataInfoiPPv
	orl	%eax, %ebx
L1319:
	testl	%esi, %esi
	jns	L1320
	testl	%ebx, %ebx
	jne	L1420
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_short_numinterpolations, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$512, %edx
	movl	$_short_oldipos, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$512, %edx
	movl	$_short_bakipos, %eax
	call	_kdfread.constprop.0.isra.0
	movswl	_short_numinterpolations, %esi
	jmp	L1322
L1323:
	leal	_short_curipos(,%esi,4), %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	orl	%eax, %ebx
L1322:
	subl	$1, %esi
	jns	L1323
	testl	%ebx, %ebx
	jne	L1420
	movb	$0, -128(%ebp)
	movl	$__ZL13so_interpdata.lto_priv.0, %esi
L1324:
	movl	%edi, (%esp)
	leal	458752(%esi), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	leal	458764(%esi), %eax
	movl	$1, %ecx
	movl	$1, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	cmpl	$0, 458752(%esi)
	jle	L1325
	xorl	%ecx, %ecx
	movl	%esi, %ebx
	movl	%ecx, -120(%ebp)
L1326:
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	orb	%al, -128(%ebp)
	movl	$1, %ecx
	leal	4(%ebx), %eax
	movl	%edi, (%esp)
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	leal	24(%ebx), %eax
	movl	$1, %ecx
	movl	$4, %edx
	addl	$28, %ebx
	call	_klzw_read_compressed.constprop.0.isra.0
	movss	-24(%ebx), %xmm0
	addl	$1, -120(%ebp)
	movl	$0, -8(%ebx)
	movl	-120(%ebp), %eax
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, -16(%ebx)
	cmpl	458752(%esi), %eax
	jl	L1326
L1325:
	movlps	LC32, %xmm1
	addl	$458768, %esi
	movlps	%xmm1, -12(%esi)
	cmpl	$__ZL13so_interpdata.lto_priv.0+9175360, %esi
	jne	L1324
	leal	-110(%ebp), %esi
	xorl	%eax, %eax
	movl	%esi, -120(%ebp)
	movl	%edi, %esi
	cmpb	$0, -128(%ebp)
	jne	L1420
L1327:
	movl	_otlist(,%eax,4), %edi
	movl	%edi, -132(%ebp)
	movss	-132(%ebp), %xmm0
	movl	%edi, -128(%ebp)
	unpcklps	%xmm0, %xmm0
	movl	%eax, -132(%ebp)
	movlps	%xmm0, (%edi)
	jmp	L1329
L1425:
	xorl	%edi, %edi
	movl	$2, %ecx
	movl	$12, %edx
	movl	%edi, 8(%eax)
	movl	%eax, %edi
	xorl	%eax, %eax
	rep stosl
	movl	%ebx, %eax
	movl	%esi, %ecx
	call	_kdfread.constprop.0.isra.0
	movl	-128(%ebp), %edi
	movl	%edi, (%ebx)
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, 4(%edi)
	movl	4(%ebx), %eax
	movl	%ebx, (%eax)
L1329:
	movl	-120(%ebp), %eax
	movl	%esi, %ecx
	movl	$2, %edx
	call	_kdfread.constprop.0.isra.0
	cmpw	$-1, -110(%ebp)
	je	L1328
	movl	$12, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %ebx
	pushl	%edx
	testl	%eax, %eax
	jne	L1425
	.p2align 4
	.p2align 3
L1288:
	movl	$1, %eax
	call	__Z13handle_memerri
L1353:
	movl	$0, -124(%ebp)
L1283:
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_numsectors, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movswl	_numsectors, %ecx
	movl	%edi, (%esp)
	movl	$40, %edx
	movl	_sector, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	$0, -104(%ebp)
	cmpw	$0, _numsectors
	jle	L1297
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1299:
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	leal	-114(%ebp), %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movswl	-114(%ebp), %esi
	cmpw	$-1, %si
	je	L1298
	movl	$28, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1288
	movl	$0, (%eax)
	movl	$1, %ecx
	movl	$28, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	%eax, _SectUser(,%esi,4)
	movl	%edi, (%esp)
	call	_klzw_read_compressed.constprop.0.isra.0
L1298:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	movl	%ebx, -104(%ebp)
	cmpl	%eax, %ebx
	jl	L1299
L1297:
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_numwalls, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movswl	_numwalls, %ecx
	movl	%edi, (%esp)
	movl	$32, %edx
	movl	_wall, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$4, %edx
	movl	$_Numsprites, %eax
	jmp	L1421
L1426:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$44, %edx
L1421:
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	leal	-104(%ebp), %eax
	movl	$1, %ecx
	movl	$4, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	-104(%ebp), %eax
	cmpl	$-1, %eax
	jne	L1426
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$8194, %edx
	movl	$_headspritesect, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_prevspritesect, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_nextspritesect, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2050, %edx
	movl	$_headspritestat, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_prevspritestat, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$32768, %edx
	movl	$_nextspritestat, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	movl	$_tailspritefree, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_User, (%esp)
	call	_memset
	movl	%edi, (%esp)
	movl	$1, %ecx
	leal	-112(%ebp), %eax
	movl	$2, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movzwl	-112(%ebp), %esi
	cmpw	$-1, %si
	je	L1302
	movswl	%si, %ebx
L1307:
	movl	$292, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1288
	movl	$292, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%esi, _User(,%ebx,4)
	movl	$1, %ecx
	movl	%esi, %eax
	movl	%edi, (%esp)
	movl	$292, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	8(%esi), %ecx
	testl	%ecx, %ecx
	je	L1303
	movl	4(%esi), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -120(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1288
	movl	-120(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_memset
	movl	%ebx, 8(%esi)
	movl	4(%esi), %edx
	movl	$1, %ecx
	movl	%edi, (%esp)
	movl	%ebx, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
L1303:
	movl	(%esi), %edx
	testl	%edx, %edx
	je	L1304
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1288
	movl	$0, (%eax)
	movl	$1, %ecx
	movl	$36, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%eax, (%esi)
	movl	%edi, (%esp)
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	(%esi), %ebx
	movl	28(%ebx), %eax
	testl	%eax, %eax
	je	L1305
	movl	24(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -120(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1288
	movl	-120(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -120(%ebp)
	call	_memset
	movl	-120(%ebp), %ecx
	movl	%ecx, 28(%ebx)
	movl	(%esi), %eax
	movl	$1, %ecx
	movl	24(%eax), %ebx
	movl	28(%eax), %eax
	movl	%edi, (%esp)
	leal	0(,%ebx,4), %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	(%esi), %ebx
L1305:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L1304
	movl	24(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -120(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1288
	movl	-120(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -120(%ebp)
	call	_memset
	movl	-120(%ebp), %ecx
	movl	%ecx, 32(%ebx)
	movl	(%esi), %eax
	movl	$1, %ecx
	movl	24(%eax), %ebx
	movl	32(%eax), %eax
	movl	%edi, (%esp)
	leal	0(,%ebx,4), %edx
	call	_klzw_read_compressed.constprop.0.isra.0
L1304:
	leal	12(%esi), %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	16(%esi), %edx
	movl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	20(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	24(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	28(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	32(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	36(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymCodeInfoiPPv
	leal	40(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	44(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	48(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	52(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	116(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	120(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	124(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	128(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	140(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	144(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	200(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	orl	%ebx, %eax
	jne	L1420
	movl	%edi, (%esp)
	movl	$1, %ecx
	movl	$2, %edx
	leal	-112(%ebp), %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	movswl	-112(%ebp), %ebx
	cmpw	$-1, %bx
	jne	L1307
L1302:
	movl	%edi, (%esp)
	movl	$_SectorObject, %eax
	movl	$1, %ecx
	movl	$120560, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movw	$0, -110(%ebp)
	xorl	%eax, %eax
	jmp	L1309
L1308:
	movzwl	-110(%ebp), %eax
	addl	$1, %eax
	movw	%ax, -110(%ebp)
	cmpw	$19, %ax
	jg	L1427
L1309:
	cwtl
	imull	$6028, %eax, %esi
	movl	%edi, %eax
	leal	_SectorObject+160(%esi), %edx
	call	__Z15LoadSymCodeInfoiPPv
	leal	_SectorObject+164(%esi), %edx
	movl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymCodeInfoiPPv
	leal	_SectorObject+168(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymCodeInfoiPPv
	leal	_SectorObject+172(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	leal	_SectorObject+176(%esi), %edx
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	orl	%eax, %ebx
	je	L1308
	jmp	L1420
	.p2align 4,,10
	.p2align 3
L1287:
	addl	$1, -128(%ebp)
	movl	-124(%ebp), %edx
	movl	%edi, %esi
	movl	-128(%ebp), %eax
	cmpl	%eax, _numplayers
	jle	L1428
	addl	$24124, %edx
	jmp	L1296
L1428:
	leal	-22988(%edx), %eax
	movl	%eax, -124(%ebp)
	jmp	L1283
L1427:
	movl	%edi, %ecx
	movl	$2520, %edx
	movl	$_SineWaveFloor, %eax
	movl	$_Track, %esi
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$10240, %edx
	movl	$_SineWall, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$80, %edx
	movl	$_SpringBoard, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_x_min_bound, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_y_min_bound, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_x_max_bound, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_y_max_bound, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1200, %edx
	movl	$_Track, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%ebx, -128(%ebp)
	movl	%edi, -120(%ebp)
	jmp	L1312
L1430:
	movl	$20, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1288
	xorl	%eax, %eax
	movl	$4, %ecx
	movl	%ebx, %edi
	movl	$20, %edx
	movl	%eax, 16(%ebx)
	xorl	%eax, %eax
	rep stosl
	movl	%ebx, (%esi)
	movl	$1, %ecx
	movl	-120(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
L1311:
	addl	$12, %esi
	movl	$_Track+1200, %eax
	cmpl	%esi, %eax
	je	L1429
L1312:
	movswl	10(%esi), %eax
	movl	_g_sm_heap, %ecx
	testw	%ax, %ax
	je	L1430
	leal	(%eax,%eax,4), %edi
	sall	$2, %edi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1288
	xorl	%eax, %eax
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
	movswl	10(%esi), %edx
	movl	-120(%ebp), %eax
	movl	%ebx, (%esi)
	movl	$1, %ecx
	movl	%eax, (%esp)
	imull	$20, %edx, %edx
	movl	%ebx, %eax
	call	_klzw_read_compressed.constprop.0.isra.0
	jmp	L1311
L1429:
	movl	-120(%ebp), %edi
	movl	$24, %edx
	movl	$_loc, %eax
	movl	-128(%ebp), %ebx
	movl	$_Anim, %esi
	movl	%edi, %ecx
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$20, %edx
	movl	$_LevelName, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_screenpeek, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_totalsynctics, %eax
	call	_kdfread.constprop.0.isra.0
	movl	$_AnimCnt, %eax
	movl	%edi, %ecx
	movl	$2, %edx
	call	_kdfread.constprop.0.isra.0
	xorl	%eax, %eax
	movl	%ebx, -128(%ebp)
	movl	%eax, -120(%ebp)
	jmp	L1313
L1316:
	movl	%esi, %edx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	movl	%eax, %ebx
L1315:
	leal	16(%esi), %edx
	movl	%edi, %eax
	call	__Z15LoadSymCodeInfoiPPv
	leal	20(%esi), %edx
	addl	$24, %esi
	orl	%eax, %ebx
	movl	%edi, %eax
	call	__Z15LoadSymDataInfoiPPv
	addl	$1, -120(%ebp)
	orl	%ebx, %eax
	jne	L1420
L1313:
	movswl	_AnimCnt, %eax
	cmpl	-120(%ebp), %eax
	jle	L1431
	movl	%edi, (%esp)
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$24, %edx
	call	_klzw_read_compressed.constprop.0.isra.0
	movl	(%esi), %eax
	cmpl	$-2, %eax
	je	L1432
	cmpl	$-3, %eax
	jne	L1316
	movl	%edi, %ecx
	movl	$4, %edx
	leal	-108(%ebp), %eax
	xorl	%ebx, %ebx
	call	_kdfread.constprop.0.isra.0
	movl	$4, %edx
	leal	-100(%ebp), %eax
	movl	%edi, %ecx
	call	_kdfread.constprop.0.isra.0
	movl	-108(%ebp), %edx
	movl	-100(%ebp), %eax
	addl	_SectUser(,%edx,4), %eax
	movl	%eax, (%esi)
	jmp	L1315
L1432:
	movl	%edi, %ecx
	movl	$4, %edx
	leal	-108(%ebp), %eax
	xorl	%ebx, %ebx
	call	_kdfread.constprop.0.isra.0
	movl	$4, %edx
	leal	-100(%ebp), %eax
	movl	%edi, %ecx
	call	_kdfread.constprop.0.isra.0
	movl	-108(%ebp), %edx
	movl	-100(%ebp), %eax
	addl	_User(,%edx,4), %eax
	movl	%eax, (%esi)
	jmp	L1315
L1328:
	movl	-132(%ebp), %eax
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L1327
	movl	%esi, %ecx
	movl	$288, %edx
	movl	$_mirror, %eax
	movl	%esi, %edi
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_mirrorcnt, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$1, %edx
	movl	$_mirrorinview, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_StarQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$64, %edx
	movl	$_StarQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_HoleQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$128, %edx
	movl	$_HoleQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_WallBloodQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$64, %edx
	movl	$_WallBloodQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_FloorBloodQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$64, %edx
	movl	$_FloorBloodQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_GenericQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$64, %edx
	movl	$_GenericQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_LoWangsQueueHead, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$32, %edx
	movl	$_LoWangsQueue, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$4, %edx
	movl	$_PlayClock, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$2, %edx
	movl	$_TotalKillable, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$20, %edx
	movl	$_gNet, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$16, %edx
	movl	$_LevelSong, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	leal	-100(%ebp), %eax
	movl	$1, %edx
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$768, %edx
	movl	$_palette, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%esi, %ecx
	movl	$768, %edx
	movl	$_palette_data, %eax
	call	_kdfread.constprop.0.isra.0
	movzbl	_gs+29, %eax
	movl	%edi, %ecx
	movzwl	_gs+8, %esi
	movl	$332, %edx
	movzwl	_gs+26, %ebx
	movb	%al, -120(%ebp)
	movl	$_gs, %eax
	movw	%si, -128(%ebp)
	movzwl	_gs+4, %esi
	call	_kdfread.constprop.0.isra.0
	movzbl	-120(%ebp), %eax
	movl	%edi, %ecx
	movl	$153600, %edx
	movw	%bx, _gs+26
	movl	$_Player, %ebx
	movb	%al, _gs+29
	movswl	-128(%ebp), %eax
	movl	%eax, _gs+8
	movswl	%si, %eax
	movl	%eax, _gs+4
	movl	$_picanm, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_LevelSecrets, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2048, %edx
	movl	$_show2dwall, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2048, %edx
	movl	$_show2dsprite, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$512, %edx
	movl	$_show2dsector, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$2, %edx
	movl	$_Bunny_Count, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$80, %edx
	movl	$_UserMapName, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_GodMode, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$4, %edx
	movl	$_FinishTimer, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_FinishAnim, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$_serpwasseen, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_sumowasseen, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$1, %edx
	movl	$_zillawasseen, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %ecx
	movl	$6, %edx
	movl	$_BossSpriteNum, %eax
	call	_kdfread.constprop.0.isra.0
	movl	%edi, %eax
	call	_kclose
	movl	_numplayers, %eax
	movl	%eax, -120(%ebp)
L1330:
	cmpl	%esi, -120(%ebp)
	jle	L1433
	movl	%esi, -132(%ebp)
	movl	22988(%ebx), %edi
	leal	22988(%ebx), %esi
	movl	%ebx, -124(%ebp)
	jmp	L1331
L1332:
	movl	(%edi), %eax
	movl	8(%edi), %edx
	movl	%eax, -128(%ebp)
	movl	%ebx, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	%eax, 8(%edi)
	movl	-128(%ebp), %edi
L1331:
	cmpl	%esi, %edi
	jne	L1332
	movl	-132(%ebp), %esi
	addl	$24124, %ebx
	addl	$1, %esi
	jmp	L1330
L1433:
	movl	$_LevelName, 4(%esp)
	movl	$_CacheLastLevel, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1434
L1334:
	call	_calc_sector_reachability
	xorl	%ebx, %ebx
	movl	_totalsynctics, %eax
	movl	%ebx, _totalclock+8
	movl	_sector, %ebx
	movl	%eax, _totalclock
	movl	%eax, _totalclock+12
	movl	%eax, _ototalclock
	movl	$_SectorObject, %eax
L1338:
	movswl	3210(%eax), %esi
	xorl	%edx, %edx
	jmp	L1336
L1337:
	movswl	600(%eax,%edx,2), %ecx
	imull	$40, %ecx, %ecx
	addl	%ebx, %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$1, %edx
L1336:
	cmpl	%edx, %esi
	jg	L1337
	addl	$6028, %eax
	cmpl	$_SectorObject+120560, %eax
	jne	L1338
	movl	_numplayers, %esi
	movl	-124(%ebp), %edi
	xorl	%ebx, %ebx
L1339:
	cmpl	%ebx, %esi
	jle	L1435
	movl	23048(%edi), %edx
	movl	%edi, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	xorl	%ecx, %ecx
	movl	%eax, 23048(%edi)
	jmp	L1340
L1341:
	movl	23048(%edi,%ecx,4), %edx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	-120(%ebp), %ecx
	movl	%eax, 23048(%edi,%ecx,4)
L1340:
	movw	%cx, -110(%ebp)
	addl	$1, %ecx
	cmpl	$15, %ecx
	jne	L1341
	xorl	%ecx, %ecx
	jmp	L1342
L1343:
	movl	23120(%edi,%ecx,4), %edx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	-120(%ebp), %ecx
	movl	%eax, 23120(%edi,%ecx,4)
L1342:
	movw	%cx, -110(%ebp)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L1343
	movl	23108(%edi), %edx
	movl	%edi, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	23152(%edi), %edx
	movl	%eax, 23108(%edi)
	movl	%edi, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	23156(%edi), %edx
	movl	%eax, 23152(%edi)
	movl	%edi, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	23160(%edi), %edx
	movl	%eax, 23156(%edi)
	movl	%edi, %eax
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	xorl	%ecx, %ecx
	movl	%eax, 23160(%edi)
	jmp	L1344
L1345:
	movl	23160(%edi,%ecx,4), %edx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	-120(%ebp), %ecx
	movl	%eax, 23160(%edi,%ecx,4)
L1344:
	movw	%cx, -110(%ebp)
	addl	$1, %ecx
	cmpl	$4, %ecx
	jne	L1345
	xorl	%ecx, %ecx
	jmp	L1346
L1347:
	movl	23172(%edi,%ecx,4), %edx
	movl	%edi, %eax
	movl	%ecx, -120(%ebp)
	call	__Z16PanelNdxToSpriteP12PLAYERstructi
	movl	-120(%ebp), %ecx
	movl	%eax, 23172(%edi,%ecx,4)
L1346:
	movw	%cx, -110(%ebp)
	addl	$1, %ecx
	cmpl	$4, %ecx
	jne	L1347
	addl	$1, %ebx
	jmp	L1339
L1434:
	cmpb	$0, _PreCaching
	jne	L1436
L1335:
	call	__Z10DoTheCachev
	jmp	L1334
L1435:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$17, _randomseed
	movl	$320, %ebx
	movl	%edx, _totalsynctics
	movl	%edx, _totalclock
	movl	%edx, _totalclock+8
	movl	%edx, _totalclock+12
	movl	%edx, _ototalclock
	movl	%ecx, _MoveThingsCount
	movb	$2, _MoveSkip8
	movb	$0, _MoveSkip2
	movb	$1, _MoveSkip4
	call	__Z11InitNetVarsv
	movl	_xdim, %eax
	movl	_ydim, %ecx
	sall	$16, %eax
	sall	$16, %ecx
	cltd
	movl	%eax, _f_xdim
	idivl	%ebx
	movl	%ecx, _f_ydim
	movl	$200, %ebx
	movl	%eax, _x_aspect_mul
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movl	%eax, _y_aspect_mul
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movzbl	_gs+13, %ebx
	movl	$_palette_data, %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
	movl	_myconnectindex, %eax
	movw	%ax, _screenpeek
	movzwl	_Level, %eax
	movw	%ax, _PlayingLevel
	cmpb	$0, _gs+27
	je	L1349
	cmpb	$0, _DemoMode
	jne	L1349
	xorl	%eax, %eax
	movsbl	-100(%ebp), %edx
	movl	$1, %ecx
	movl	%eax, (%esp)
	movl	$_LevelSong, %eax
	call	__Z8PlaySongPcihh.part.0
L1349:
	cmpb	$0, _gs+29
	jne	L1437
L1350:
	movl	_gs+8, %eax
	call	_MV_SetVolume
	movl	_gs+4, %eax
	call	__Z13SetSongVolumei
	movl	$-1, %ecx
	movl	_connecthead, %eax
	movl	%ecx, %ebx
	jmp	L1351
L1352:
	imull	$24124, %eax, %edx
	movb	$0, _Player+24080(%edx)
	movb	$0, _Player+23303(%edx)
	movl	%ecx, _Player+24084(%edx)
	movl	%ebx, _Player+24088(%edx)
	movl	_connectpoint2(,%eax,4), %eax
L1351:
	cmpl	$-1, %eax
	jne	L1352
	imull	$24124, _myconnectindex, %eax
	movb	$0, _NewGame
	xorl	%edi, %edi
	addl	$_Player, %eax
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	jmp	L1276
L1436:
	call	__Z13SetupPreCachev.part.0
	jmp	L1335
L1437:
	call	__Z17StartAmbientSoundv
	jmp	L1350
	.cfi_endproc
LFE137:
	.p2align 4
	.globl	__Z14LoadScriptFilePKc
	.def	__Z14LoadScriptFilePKc;	.scl	2;	.type	32;	.endef
__Z14LoadScriptFilePKc:
LFB155:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	xorl	%edx, %edx
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1441
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edi
	movl	%eax, %esi
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L1440
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%esi, %ecx
	movl	%eax, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%eax, _scriptbuffer
	movl	%ebx, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edi
	movl	%ebx, %eax
	call	_kclose
	movl	_scriptbuffer, %eax
	movl	$1, _scriptline
	movb	$0, (%eax,%edi)
	movl	_scriptbuffer, %eax
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	movb	$0, _endofscript
	movl	%eax, _script_p
	addl	%esi, %eax
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	%eax, _scriptend_p
	movl	$1, %eax
	movb	$0, _tokenready
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1441:
	.cfi_def_cfa_offset 28
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1440:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE155:
	.section .rdata,"dr"
LC34:
	.ascii "Line %i is incomplete\0"
LC35:
	.ascii "source/sw/src/scrip2.cpp\0"
	.text
	.p2align 4
	.globl	__Z8GetTokenh.part.0
	.def	__Z8GetTokenh.part.0;	.scl	2;	.type	32;	.endef
__Z8GetTokenh.part.0:
LFB158:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	_script_p, %edx
	movl	_scriptend_p, %ecx
	cmpl	%ecx, %edx
	jnb	L1464
	movzbl	(%edx), %eax
	cmpb	$32, %al
	ja	L1465
	.p2align 4
	.p2align 3
L1452:
	cmpl	%ecx, %edx
	jnb	L1466
	leal	1(%edx), %eax
	movl	%eax, _script_p
	cmpb	$10, (%edx)
	je	L1467
L1448:
	movl	%eax, %edx
L1471:
	movzbl	(%edx), %eax
	cmpb	$32, %al
	jbe	L1452
L1465:
	cmpl	%ecx, %edx
	jnb	L1468
	cmpb	$35, %al
	jne	L1460
	testb	%bl, %bl
	je	L1469
L1455:
	movl	%edx, %eax
	jmp	L1457
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1458:
	cmpl	%ecx, %eax
	jnb	L1445
L1457:
	addl	$1, %eax
	movl	%eax, _script_p
	cmpb	$10, -1(%eax)
	jne	L1458
	jmp	L1448
	.p2align 4,,10
	.p2align 3
L1467:
	testb	%bl, %bl
	je	L1470
L1450:
	addl	$1, _scriptline
	movl	%eax, %edx
	jmp	L1471
	.p2align 4,,10
	.p2align 3
L1464:
	testb	%al, %al
	je	L1472
L1445:
	movb	$1, _endofscript
L1443:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1469:
	.cfi_restore_state
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	$-2, %eax
	jl	L1455
	movl	_scriptline, %eax
	movl	$LC34, 12(%esp)
	movl	$190, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_scriptend_p, %ecx
	movl	_script_p, %eax
	jmp	L1457
	.p2align 4,,10
	.p2align 3
L1470:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edx
	cmpl	$-2, %edx
	jl	L1450
	movl	_scriptline, %eax
	movl	$LC34, 12(%esp)
	movl	$174, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_script_p, %eax
	movl	_scriptend_p, %ecx
	jmp	L1450
	.p2align 4,,10
	.p2align 3
L1472:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1445
	movl	_scriptline, %eax
	movl	$LC34, 12(%esp)
	movl	$153, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1445
L1466:
	testb	%bl, %bl
	jne	L1445
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1445
	movl	_scriptline, %eax
	movl	$LC34, 12(%esp)
	movl	$167, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1445
L1468:
	testb	%bl, %bl
	jne	L1445
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1445
	movl	_scriptline, %eax
	movl	$LC34, 12(%esp)
	movl	$182, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1445
L1460:
	movl	$_token, %eax
	jmp	L1454
	.p2align 4,,10
	.p2align 3
L1473:
	cmpb	$35, %bl
	je	L1459
L1454:
	addl	$1, %edx
	addl	$1, %eax
	movl	%edx, _script_p
	movzbl	-1(%edx), %ebx
	movb	%bl, -1(%eax)
	cmpl	%ecx, %edx
	je	L1459
	movzbl	(%edx), %ebx
	cmpb	$32, %bl
	ja	L1473
L1459:
	movb	$0, (%eax)
	jmp	L1443
	.cfi_endproc
LFE158:
	.p2align 4
	.globl	__Z17SetSectorWallBitssihh.constprop.0
	.def	__Z17SetSectorWallBitssihh.constprop.0;	.scl	2;	.type	32;	.endef
__Z17SetSectorWallBitssihh.constprop.0:
LFB160:
	.cfi_startproc
	movl	_sector, %ecx
	cwtl
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	testb	%dl, %dl
	leal	(%eax,%eax,4), %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	_wall, %edx
	leal	(%ecx,%eax,8), %eax
	movzwl	(%eax), %ecx
	movswl	%cx, %eax
	jne	L1475
	.p2align 6
	.p2align 4
	.p2align 3
L1477:
	sall	$5, %eax
	addl	%edx, %eax
	movswl	10(%eax), %ebx
	cmpw	$16383, %bx
	ja	L1476
	movl	%ebx, %esi
	andl	$134217727, %ebx
	sall	$5, %esi
	addl	$1, _wallchanged(,%ebx,4)
	orw	$128, 30(%edx,%esi)
L1476:
	movswl	8(%eax), %eax
	cmpw	%ax, %cx
	jne	L1477
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
L1475:
	.cfi_restore_state
	sall	$5, %eax
	leal	(%edx,%eax), %ebx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	orw	$128, 30(%ebx)
	cmpw	$16383, %ax
	ja	L1479
	movl	%eax, %esi
	andl	$134217727, %eax
	sall	$5, %esi
	addl	$1, _wallchanged(,%eax,4)
	orw	$128, 30(%edx,%esi)
L1479:
	movswl	8(%ebx), %eax
	cmpw	%ax, %cx
	jne	L1475
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE160:
	.globl	_ZombieActionSet
	.data
	.align 32
_ZombieActionSet:
	.long	_sg_ZombieStand
	.long	_sg_ZombieRun
	.long	0
	.long	_sg_ZombieFall
	.long	0
	.long	0
	.long	0
	.long	_sg_ZombieRun
	.long	_sg_ZombieRun
	.long	0
	.long	0
	.long	_sg_ZombiePain
	.long	_sg_ZombieRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_ZombieRail
	.space 4
	.word	1024
	.space 2
	.long	_sg_ZombieRail
	.space 20
	.word	1024
	.space 10
	.long	0
	.space 4
	.long	0
	.long	0
	.align 4
_sg_ZombieFall:
	.long	_s_ZombieFall
	.long	_s_ZombieFall+16
	.long	_s_ZombieFall+32
	.long	_s_ZombieFall+48
	.long	_s_ZombieFall+64
	.align 32
_s_ZombieFall:
	.word	1077
	.space 2
	.long	25
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFall
	.word	1081
	.space 2
	.long	25
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFall+16
	.word	1085
	.space 2
	.long	25
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFall+32
	.word	1089
	.space 2
	.long	25
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFall+48
	.word	1093
	.space 2
	.long	25
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFall+64
	.align 4
_sg_ZombieUzi:
	.long	_s_ZombieUzi
	.long	_s_ZombieUzi+272
	.long	_s_ZombieUzi+544
	.long	_s_ZombieUzi+816
	.long	_s_ZombieUzi+1088
	.align 32
_s_ZombieUzi:
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+16
	.word	1069
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_ZombieUzi+32
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+48
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+64
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+80
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+96
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+112
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+128
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+144
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+160
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+176
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+192
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+208
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+224
	.word	1069
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+240
	.word	1069
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+256
	.word	1069
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieUzi+256
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+288
	.word	1071
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_ZombieUzi+304
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+320
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+336
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+352
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+368
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+384
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+400
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+416
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+432
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+448
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+464
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+480
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+496
	.word	1071
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+512
	.word	1071
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+528
	.word	1071
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieUzi+528
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+560
	.word	1072
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_ZombieUzi+576
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+592
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+608
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+624
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+640
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+656
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+672
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+688
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+704
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+720
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+736
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+752
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+768
	.word	1072
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+784
	.word	1072
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+800
	.word	1072
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieUzi+800
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+832
	.word	1073
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_ZombieUzi+848
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+864
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+880
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+896
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+912
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+928
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+944
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+960
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+976
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+992
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1008
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1024
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1040
	.word	1073
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1056
	.word	1073
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1072
	.word	1073
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieUzi+1072
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1104
	.word	1070
	.space 2
	.long	65536
	.long	__Z9CheckFires
	.long	_s_ZombieUzi+1120
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1136
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1152
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1168
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1184
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1200
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1216
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1232
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1248
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1264
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1280
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1296
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1312
	.word	1070
	.space 2
	.long	8
	.long	__Z10NullZombies
	.long	_s_ZombieUzi+1328
	.word	1070
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZombieUzi+1344
	.word	1070
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieUzi+1344
	.align 4
_sg_ZombieFlashBomb:
	.long	_s_ZombieFlashBomb
	.long	_s_ZombieFlashBomb+80
	.long	_s_ZombieFlashBomb+160
	.long	_s_ZombieFlashBomb+240
	.long	_s_ZombieFlashBomb+320
	.align 32
_s_ZombieFlashBomb:
	.word	1094
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+16
	.word	1094
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_ZombieFlashBomb+32
	.word	1094
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+48
	.word	1094
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieFlashBomb+64
	.word	1094
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFlashBomb+64
	.word	1098
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+96
	.word	1098
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_ZombieFlashBomb+112
	.word	1098
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+128
	.word	1098
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieFlashBomb+144
	.word	1098
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFlashBomb+144
	.word	1102
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+176
	.word	1102
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_ZombieFlashBomb+192
	.word	1102
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+208
	.word	1102
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieFlashBomb+224
	.word	1102
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFlashBomb+224
	.word	1106
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+256
	.word	1106
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_ZombieFlashBomb+272
	.word	1106
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+288
	.word	1106
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieFlashBomb+304
	.word	1106
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFlashBomb+304
	.word	1110
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+336
	.word	1110
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_ZombieFlashBomb+352
	.word	1110
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieFlashBomb+368
	.word	1110
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieFlashBomb+384
	.word	1110
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieFlashBomb+384
	.align 4
_sg_ZombieGrenade:
	.long	_s_ZombieGrenade
	.long	_s_ZombieGrenade+80
	.long	_s_ZombieGrenade+160
	.long	_s_ZombieGrenade+240
	.long	_s_ZombieGrenade+320
	.align 32
_s_ZombieGrenade:
	.word	1094
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+16
	.word	1094
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_ZombieGrenade+32
	.word	1094
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+48
	.word	1094
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieGrenade+64
	.word	1094
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieGrenade+64
	.word	1098
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+96
	.word	1098
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_ZombieGrenade+112
	.word	1098
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+128
	.word	1098
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieGrenade+144
	.word	1098
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieGrenade+144
	.word	1102
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+176
	.word	1102
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_ZombieGrenade+192
	.word	1102
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+208
	.word	1102
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieGrenade+224
	.word	1102
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieGrenade+224
	.word	1106
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+256
	.word	1106
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_ZombieGrenade+272
	.word	1106
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+288
	.word	1106
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieGrenade+304
	.word	1106
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieGrenade+304
	.word	1110
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+336
	.word	1110
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_ZombieGrenade+352
	.word	1110
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieGrenade+368
	.word	1110
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieGrenade+384
	.word	1110
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieGrenade+384
	.align 4
_sg_ZombieRail:
	.long	_s_ZombieRail
	.long	_s_ZombieRail+80
	.long	_s_ZombieRail+160
	.long	_s_ZombieRail+240
	.long	_s_ZombieRail+320
	.align 32
_s_ZombieRail:
	.word	1094
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRail+16
	.word	1094
	.space 2
	.long	65536
	.long	__Z13InitEnemyRails
	.long	_s_ZombieRail+32
	.word	1094
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRail+48
	.word	1094
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRail+64
	.word	1094
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRail+64
	.word	1098
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRail+96
	.word	1098
	.space 2
	.long	65536
	.long	__Z13InitEnemyRails
	.long	_s_ZombieRail+112
	.word	1098
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRail+128
	.word	1098
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRail+144
	.word	1098
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRail+144
	.word	1102
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRail+176
	.word	1102
	.space 2
	.long	65536
	.long	__Z13InitEnemyRails
	.long	_s_ZombieRail+192
	.word	1102
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRail+208
	.word	1102
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRail+224
	.word	1102
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRail+224
	.word	1106
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRail+256
	.word	1106
	.space 2
	.long	65536
	.long	__Z13InitEnemyRails
	.long	_s_ZombieRail+272
	.word	1106
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRail+288
	.word	1106
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRail+304
	.word	1106
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRail+304
	.word	1110
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRail+336
	.word	1110
	.space 2
	.long	65536
	.long	__Z13InitEnemyRails
	.long	_s_ZombieRail+352
	.word	1110
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRail+368
	.word	1110
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRail+384
	.word	1110
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRail+384
	.align 4
_sg_ZombieRocket:
	.long	_s_ZombieRocket
	.long	_s_ZombieRocket+80
	.long	_s_ZombieRocket+160
	.long	_s_ZombieRocket+240
	.long	_s_ZombieRocket+320
	.align 32
_s_ZombieRocket:
	.word	1094
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+16
	.word	1094
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_ZombieRocket+32
	.word	1094
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+48
	.word	1094
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRocket+64
	.word	1094
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRocket+64
	.word	1098
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+96
	.word	1098
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_ZombieRocket+112
	.word	1098
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+128
	.word	1098
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRocket+144
	.word	1098
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRocket+144
	.word	1102
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+176
	.word	1102
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_ZombieRocket+192
	.word	1102
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+208
	.word	1102
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRocket+224
	.word	1102
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRocket+224
	.word	1106
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+256
	.word	1106
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_ZombieRocket+272
	.word	1106
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+288
	.word	1106
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRocket+304
	.word	1106
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRocket+304
	.word	1110
	.space 2
	.long	28
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+336
	.word	1110
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_ZombieRocket+352
	.word	1110
	.space 2
	.long	14
	.long	__Z10NullZombies
	.long	_s_ZombieRocket+368
	.word	1110
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieRocket+384
	.word	1110
	.space 2
	.long	14
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRocket+384
	.align 4
_sg_ZombieNuke:
	.long	_s_ZombieNuke
	.long	_s_ZombieNuke+96
	.long	_s_ZombieNuke+192
	.long	_s_ZombieNuke+288
	.long	_s_ZombieNuke+384
	.align 32
_s_ZombieNuke:
	.word	1069
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+16
	.word	1069
	.space 2
	.long	18
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+32
	.word	1069
	.space 2
	.long	65536
	.long	__Z13InitEnemyNukes
	.long	_s_ZombieNuke+48
	.word	1069
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+64
	.word	1069
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieNuke+80
	.word	1069
	.space 2
	.long	18
	.long	__Z12DoZombieMoves
	.long	_s_ZombieNuke+80
	.word	1071
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+112
	.word	1071
	.space 2
	.long	18
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+128
	.word	1071
	.space 2
	.long	65536
	.long	__Z13InitEnemyNukes
	.long	_s_ZombieNuke+144
	.word	1071
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+160
	.word	1071
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieNuke+176
	.word	1071
	.space 2
	.long	18
	.long	__Z12DoZombieMoves
	.long	_s_ZombieNuke+176
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+208
	.word	1072
	.space 2
	.long	18
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+224
	.word	1072
	.space 2
	.long	65536
	.long	__Z13InitEnemyNukes
	.long	_s_ZombieNuke+240
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+256
	.word	1072
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieNuke+272
	.word	1072
	.space 2
	.long	18
	.long	__Z12DoZombieMoves
	.long	_s_ZombieNuke+272
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+304
	.word	1072
	.space 2
	.long	18
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+320
	.word	1072
	.space 2
	.long	65536
	.long	__Z13InitEnemyNukes
	.long	_s_ZombieNuke+336
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+352
	.word	1072
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieNuke+368
	.word	1072
	.space 2
	.long	18
	.long	__Z12DoZombieMoves
	.long	_s_ZombieNuke+368
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+400
	.word	1072
	.space 2
	.long	18
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+416
	.word	1072
	.space 2
	.long	65536
	.long	__Z13InitEnemyNukes
	.long	_s_ZombieNuke+432
	.word	1072
	.space 2
	.long	36
	.long	__Z10NullZombies
	.long	_s_ZombieNuke+448
	.word	1072
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZombieNuke+464
	.word	1072
	.space 2
	.long	18
	.long	__Z12DoZombieMoves
	.long	_s_ZombieNuke+464
	.align 4
_sg_ZombiePain:
	.long	_s_ZombiePain
	.long	_s_ZombiePain+32
	.long	_s_ZombiePain+64
	.long	_s_ZombiePain+96
	.long	_s_ZombiePain+128
	.globl	_s_ZombiePain
	.align 32
_s_ZombiePain:
	.word	1094
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+16
	.word	1095
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+16
	.word	1098
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+48
	.word	1098
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+48
	.word	1102
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+80
	.word	1102
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+80
	.word	1106
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+112
	.word	1106
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+112
	.word	1110
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+144
	.word	1110
	.space 2
	.long	15
	.long	__Z12DoZombiePains
	.long	_s_ZombiePain+144
	.align 4
_sg_ZombieStand:
	.long	_s_ZombieStand
	.long	_s_ZombieStand+16
	.long	_s_ZombieStand+32
	.long	_s_ZombieStand+48
	.long	_s_ZombieStand+64
	.align 32
_s_ZombieStand:
	.word	1094
	.space 2
	.long	10
	.long	__Z10NullZombies
	.long	_s_ZombieStand
	.word	1098
	.space 2
	.long	10
	.long	__Z10NullZombies
	.long	_s_ZombieStand+16
	.word	1102
	.space 2
	.long	10
	.long	__Z10NullZombies
	.long	_s_ZombieStand+32
	.word	1106
	.space 2
	.long	10
	.long	__Z10NullZombies
	.long	_s_ZombieStand+48
	.word	1110
	.space 2
	.long	10
	.long	__Z10NullZombies
	.long	_s_ZombieStand+64
	.globl	_sg_ZombieRun
	.align 4
_sg_ZombieRun:
	.long	_s_ZombieRun
	.long	_s_ZombieRun+64
	.long	_s_ZombieRun+128
	.long	_s_ZombieRun+192
	.long	_s_ZombieRun+256
	.globl	_s_ZombieRun
	.align 32
_s_ZombieRun:
	.word	1094
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+16
	.word	1095
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+32
	.word	1096
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+48
	.word	1097
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun
	.word	1098
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+80
	.word	1099
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+96
	.word	1100
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+112
	.word	1101
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+64
	.word	1102
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+144
	.word	1103
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+160
	.word	1104
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+176
	.word	1105
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+128
	.word	1106
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+208
	.word	1107
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+224
	.word	1108
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+240
	.word	1109
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+192
	.word	1110
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+272
	.word	1111
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+288
	.word	1112
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+304
	.word	1113
	.space 2
	.long	262176
	.long	__Z12DoZombieMoves
	.long	_s_ZombieRun+256
	.globl	_ZombieAttrib
	.align 32
_ZombieAttrib:
	.word	120
	.word	140
	.word	170
	.word	200
	.ascii "\4\0\0\376"
	.byte	3
	.space 3
	.long	88
	.long	92
	.long	2
	.long	90
	.long	91
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_ZombiePersonality
	.align 32
_ZombiePersonality:
	.long	_ZombieBattle
	.long	_ZombieOffense
	.long	_ZombieBroadcast
	.long	_ZombieSurprised
	.long	_ZombieEvasive
	.long	_ZombieLostTarget
	.long	_ZombieCloseRange
	.long	_ZombieCloseRange
	.align 4
_ZombieCloseRange:
	.word	800
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.align 4
_ZombieLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_ZombieEvasive:
	.word	400
	.space 2
	.long	__Z13InitActorDucks
	.word	1024
	.space 2
	.long	0
	.align 4
_ZombieSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_ZombieBroadcast:
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_ZombieOffense:
	.word	399
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_ZombieBattle:
	.word	399
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_ZillaActionSet
	.align 32
_ZillaActionSet:
	.long	_sg_ZillaStand
	.long	_sg_ZillaRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_ZillaPain
	.long	_sg_ZillaDie
	.long	0
	.long	_sg_ZillaDead
	.long	0
	.long	0
	.long	_sg_ZillaUzi
	.long	_sg_ZillaRail
	.word	950
	.word	1024
	.long	_sg_ZillaUzi
	.long	_sg_ZillaRocket
	.long	_sg_ZillaRail
	.space 12
	.word	400
	.word	950
	.word	1024
	.space 6
	.long	0
	.space 4
	.long	0
	.long	0
	.align 4
_sg_ZillaDead:
	.long	_s_ZillaDead
	.align 4
_s_ZillaDead:
	.word	5518
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.long	_s_ZillaDead
	.align 4
_sg_ZillaDie:
	.long	_s_ZillaDie
	.globl	_s_ZillaDie
	.align 32
_s_ZillaDie:
	.word	5510
	.space 2
	.long	450
	.long	__Z16DoZillaDeathMelts
	.space 4
	.word	5511
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5512
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5513
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5514
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5515
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5516
	.space 2
	.long	30
	.long	__Z9NullZillas
	.space 4
	.word	5517
	.space 2
	.long	90
	.long	__Z9NullZillas
	.space 4
	.word	5518
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.align 4
_sg_ZillaUzi:
	.long	_s_ZillaUzi
	.long	_s_ZillaUzi+272
	.long	_s_ZillaUzi+544
	.long	_s_ZillaUzi+816
	.long	_s_ZillaUzi+1088
	.align 32
_s_ZillaUzi:
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+16
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+32
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+48
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+64
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+80
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+96
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+112
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+128
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+144
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+160
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+176
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+192
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+208
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+224
	.word	5506
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+240
	.word	5506
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+256
	.word	5506
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaUzi+256
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+288
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+304
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+320
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+336
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+352
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+368
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+384
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+400
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+416
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+432
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+448
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+464
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+480
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+496
	.word	5502
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+512
	.word	5502
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+528
	.word	5502
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaUzi+528
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+560
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+576
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+592
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+608
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+624
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+640
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+656
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+672
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+688
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+704
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+720
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+736
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+752
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+768
	.word	5498
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+784
	.word	5498
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+800
	.word	5498
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaUzi+800
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+832
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+848
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+864
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+880
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+896
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+912
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+928
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+944
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+960
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+976
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+992
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1008
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1024
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1040
	.word	5494
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1056
	.word	5494
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1072
	.word	5494
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaUzi+1072
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1104
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1120
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1136
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1152
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1168
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1184
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1200
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1216
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1232
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1248
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1264
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1280
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1296
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1312
	.word	5490
	.space 2
	.long	8
	.long	__Z9NullZillas
	.long	_s_ZillaUzi+1328
	.word	5490
	.space 2
	.long	65536
	.long	__Z12InitEnemyUzis
	.long	_s_ZillaUzi+1344
	.word	5490
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaUzi+1344
	.align 4
_sg_ZillaRocket:
	.long	_s_ZillaRocket
	.long	_s_ZillaRocket+112
	.long	_s_ZillaRocket+224
	.long	_s_ZillaRocket+336
	.long	_s_ZillaRocket+448
	.align 32
_s_ZillaRocket:
	.word	5446
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+16
	.word	5447
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+32
	.word	5448
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+48
	.word	5448
	.space 2
	.long	65536
	.long	__Z15InitZillaRockets
	.long	_s_ZillaRocket+64
	.word	5448
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+80
	.word	5449
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRocket+96
	.word	5449
	.space 2
	.long	120
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+80
	.word	5442
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+128
	.word	5443
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+144
	.word	5444
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+160
	.word	5444
	.space 2
	.long	65536
	.long	__Z15InitZillaRockets
	.long	_s_ZillaRocket+176
	.word	5444
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+192
	.word	5445
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRocket+208
	.word	5445
	.space 2
	.long	120
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+192
	.word	5438
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+240
	.word	5439
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+256
	.word	5440
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+272
	.word	5440
	.space 2
	.long	65536
	.long	__Z15InitZillaRockets
	.long	_s_ZillaRocket+288
	.word	5440
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+304
	.word	5441
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRocket+320
	.word	5441
	.space 2
	.long	120
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+304
	.word	5434
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+352
	.word	5435
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+368
	.word	5436
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+384
	.word	5436
	.space 2
	.long	65536
	.long	__Z15InitZillaRockets
	.long	_s_ZillaRocket+400
	.word	5436
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+416
	.word	5437
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRocket+432
	.word	5437
	.space 2
	.long	120
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+416
	.word	5430
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+464
	.word	5431
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+480
	.word	5432
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+496
	.word	5432
	.space 2
	.long	65536
	.long	__Z15InitZillaRockets
	.long	_s_ZillaRocket+512
	.word	5432
	.space 2
	.long	48
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+528
	.word	5433
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRocket+544
	.word	5433
	.space 2
	.long	120
	.long	__Z9NullZillas
	.long	_s_ZillaRocket+528
	.align 4
_sg_ZillaRail:
	.long	_s_ZillaRail
	.long	_s_ZillaRail+224
	.long	_s_ZillaRail+448
	.long	_s_ZillaRail+672
	.long	_s_ZillaRail+896
	.align 32
_s_ZillaRail:
	.word	5466
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+16
	.word	5467
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+32
	.word	5468
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+48
	.word	5469
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+64
	.word	5466
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+80
	.word	5467
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+96
	.word	5468
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+112
	.word	5469
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+128
	.word	5466
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+144
	.word	5467
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+160
	.word	5468
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+176
	.word	5469
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+192
	.word	5469
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+208
	.word	5469
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRail
	.word	5462
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+240
	.word	5463
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+256
	.word	5464
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+272
	.word	5465
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+288
	.word	5462
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+304
	.word	5463
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+320
	.word	5464
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+336
	.word	5465
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+352
	.word	5462
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+368
	.word	5463
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+384
	.word	5464
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+400
	.word	5465
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+416
	.word	5465
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+432
	.word	5465
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRail+224
	.word	5458
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+464
	.word	5459
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+480
	.word	5460
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+496
	.word	5461
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+512
	.word	5458
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+528
	.word	5459
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+544
	.word	5460
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+560
	.word	5461
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+576
	.word	5458
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+592
	.word	5459
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+608
	.word	5460
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+624
	.word	5461
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+640
	.word	5461
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+656
	.word	5461
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRail+448
	.word	5454
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+688
	.word	5455
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+704
	.word	5456
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+720
	.word	5457
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+736
	.word	5454
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+752
	.word	5455
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+768
	.word	5456
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+784
	.word	5457
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+800
	.word	5454
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+816
	.word	5455
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+832
	.word	5456
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+848
	.word	5457
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+864
	.word	5457
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+880
	.word	5457
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRail+672
	.word	5450
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+912
	.word	5451
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+928
	.word	5452
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+944
	.word	5453
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+960
	.word	5450
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+976
	.word	5451
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+992
	.word	5452
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+1008
	.word	5453
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+1024
	.word	5450
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+1040
	.word	5451
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+1056
	.word	5452
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+1072
	.word	5453
	.space 2
	.long	65536
	.long	__Z13InitZillaRails
	.long	_s_ZillaRail+1088
	.word	5453
	.space 2
	.long	12
	.long	__Z9NullZillas
	.long	_s_ZillaRail+1104
	.word	5453
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaRail+896
	.align 4
_sg_ZillaPain:
	.long	_s_ZillaPain
	.long	_s_ZillaPain+32
	.long	_s_ZillaPain+64
	.long	_s_ZillaPain+96
	.long	_s_ZillaPain+128
	.align 32
_s_ZillaPain:
	.word	5524
	.space 2
	.long	30
	.long	__Z9NullZillas
	.long	_s_ZillaPain+16
	.word	5524
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaPain
	.word	5523
	.space 2
	.long	30
	.long	__Z9NullZillas
	.long	_s_ZillaPain+48
	.word	5523
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaPain+32
	.word	5522
	.space 2
	.long	30
	.long	__Z9NullZillas
	.long	_s_ZillaPain+80
	.word	5522
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaPain+64
	.word	5521
	.space 2
	.long	30
	.long	__Z9NullZillas
	.long	_s_ZillaPain+112
	.word	5521
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaPain+96
	.word	5520
	.space 2
	.long	30
	.long	__Z9NullZillas
	.long	_s_ZillaPain+144
	.word	5520
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ZillaPain+128
	.align 4
_sg_ZillaStand:
	.long	_s_ZillaStand
	.long	_s_ZillaStand+16
	.long	_s_ZillaStand+32
	.long	_s_ZillaStand+48
	.long	_s_ZillaStand+64
	.align 32
_s_ZillaStand:
	.word	5426
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaStand
	.word	5422
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaStand+16
	.word	5418
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaStand+32
	.word	5414
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaStand+48
	.word	5410
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaStand+64
	.globl	_sg_ZillaRun
	.align 4
_sg_ZillaRun:
	.long	_s_ZillaRun
	.long	_s_ZillaRun+96
	.long	_s_ZillaRun+192
	.long	_s_ZillaRun+288
	.long	_s_ZillaRun+384
	.globl	_s_ZillaRun
	.align 32
_s_ZillaRun:
	.word	5426
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+16
	.word	5427
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+32
	.word	5427
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+48
	.word	5428
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+64
	.word	5429
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+80
	.word	5429
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun
	.word	5422
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+112
	.word	5423
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+128
	.word	5423
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+144
	.word	5424
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+160
	.word	5425
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+176
	.word	5425
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+96
	.word	5418
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+208
	.word	5419
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+224
	.word	5419
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+240
	.word	5420
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+256
	.word	5421
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+272
	.word	5421
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+192
	.word	5414
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+304
	.word	5415
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+320
	.word	5415
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+336
	.word	5416
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+352
	.word	5417
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+368
	.word	5417
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+288
	.word	5410
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+400
	.word	5411
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+416
	.word	5411
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+432
	.word	5412
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+448
	.word	5413
	.space 2
	.long	65536
	.long	__Z12DoZillaStomps
	.long	_s_ZillaRun+464
	.word	5413
	.space 2
	.long	48
	.long	__Z11DoZillaMoves
	.long	_s_ZillaRun+384
	.globl	_ZillaAttrib
	.align 32
_ZillaAttrib:
	.word	100
	.word	100
	.word	100
	.word	100
	.ascii "\3\0\0\0"
	.byte	3
	.space 3
	.long	590
	.long	590
	.long	592
	.long	591
	.long	592
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_ZillaPersonality
	.align 32
_ZillaPersonality:
	.long	_ZillaBattle
	.long	_ZillaOffense
	.long	_ZillaBroadcast
	.long	_ZillaSurprised
	.long	_ZillaEvasive
	.long	_ZillaLostTarget
	.long	_ZillaCloseRange
	.long	_ZillaCloseRange
	.align 4
_ZillaCloseRange:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_ZillaLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_ZillaEvasive:
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_ZillaSurprised:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	703
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_ZillaBroadcast:
	.word	2
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	4
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 32
_ZillaOffense:
	.word	100
	.space 2
	.long	__Z16InitActorRunAways
	.word	690
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	692
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 32
_ZillaBattle:
	.word	100
	.space 2
	.long	__Z16InitActorRunAways
	.word	690
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	692
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_s_WallBlood4
	.align 32
_s_WallBlood4:
	.word	2503
	.space 2
	.long	65536
	.long	__Z11DoWallBloods
	.space 4
	.word	2503
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_WallBlood4
	.globl	_s_WallBlood3
	.align 32
_s_WallBlood3:
	.word	2502
	.space 2
	.long	65536
	.long	__Z11DoWallBloods
	.space 4
	.word	2502
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_WallBlood3
	.globl	_s_WallBlood2
	.align 32
_s_WallBlood2:
	.word	2501
	.space 2
	.long	65536
	.long	__Z11DoWallBloods
	.space 4
	.word	2501
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_WallBlood2
	.globl	_s_WallBlood1
	.align 32
_s_WallBlood1:
	.word	2500
	.space 2
	.long	65536
	.long	__Z11DoWallBloods
	.space 4
	.word	2500
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_WallBlood1
	.globl	_s_FloorBlood1
	.align 32
_s_FloorBlood1:
	.word	389
	.space 2
	.long	65536
	.long	__Z12DoFloorBloods
	.space 4
	.word	389
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_FloorBlood1
	.globl	_s_PaperShrapC
	.align 32
_s_PaperShrapC:
	.word	3941
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3942
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3943
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3944
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_PaperShrapC
	.globl	_s_PaperShrapB
	.align 32
_s_PaperShrapB:
	.word	3932
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3933
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3934
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3935
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_PaperShrapB
	.globl	_s_PaperShrapA
	.align 32
_s_PaperShrapA:
	.word	3924
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3925
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3926
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3927
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_PaperShrapA
	.globl	_s_MetalShrapC
	.align 32
_s_MetalShrapC:
	.word	3904
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3905
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3906
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3907
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3908
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3909
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3910
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3911
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_MetalShrapC
	.globl	_s_MetalShrapB
	.align 32
_s_MetalShrapB:
	.word	3896
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3897
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3898
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3899
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3900
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3901
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3902
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3903
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_MetalShrapB
	.globl	_s_MetalShrapA
	.align 32
_s_MetalShrapA:
	.word	3888
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3889
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3890
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3891
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3892
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3893
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3894
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3895
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_MetalShrapA
	.globl	_s_StoneShrapC
	.align 32
_s_StoneShrapC:
	.word	3856
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3857
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3858
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3859
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3860
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3861
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3862
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3863
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_StoneShrapC
	.globl	_s_StoneShrapB
	.align 32
_s_StoneShrapB:
	.word	3848
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3849
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3850
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3851
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3852
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3853
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3854
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3855
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_StoneShrapB
	.globl	_s_StoneShrapA
	.align 32
_s_StoneShrapA:
	.word	3840
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3841
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3842
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3843
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3844
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3845
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3846
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3847
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_StoneShrapA
	.globl	_s_WoodShrapC
	.align 32
_s_WoodShrapC:
	.word	3941
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3942
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3943
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3944
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3945
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3946
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3947
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3948
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_WoodShrapC
	.globl	_s_WoodShrapB
	.align 32
_s_WoodShrapB:
	.word	3932
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3933
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3934
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3935
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3936
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3937
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3938
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3939
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_WoodShrapB
	.globl	_s_WoodShrapA
	.align 32
_s_WoodShrapA:
	.word	3924
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3925
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3926
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3927
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3928
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3929
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3930
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3931
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_WoodShrapA
	.globl	_s_GlassShrapC
	.align 32
_s_GlassShrapC:
	.word	3880
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3881
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3882
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3883
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3884
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3885
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3886
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3887
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_GlassShrapC
	.globl	_s_GlassShrapB
	.align 32
_s_GlassShrapB:
	.word	3872
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3873
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3874
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3875
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3876
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3877
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3878
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3879
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_GlassShrapB
	.globl	_s_GlassShrapA
	.align 32
_s_GlassShrapA:
	.word	3864
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3865
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3866
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3867
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3868
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3869
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3870
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	3871
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_GlassShrapA
	.globl	_s_Marbel
	.align 4
_s_Marbel:
	.word	5096
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_Marbel
	.globl	_s_CoinShrap
	.align 32
_s_CoinShrap:
	.word	2530
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2531
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2532
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2533
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.long	_s_CoinShrap
	.globl	_s_GoreFlameChunkB
	.align 32
_s_GoreFlameChunkB:
	.word	843
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	844
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	845
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	846
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreFlameChunkB
	.globl	_s_GoreFlameChunkA
	.align 32
_s_GoreFlameChunkA:
	.word	839
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	840
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	841
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	842
	.space 2
	.long	8
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreFlameChunkA
	.align 4
_s_ShotgunShellShrapStill3:
	.word	2187
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_ShotgunShellShrapStill3
	.align 4
_s_ShotgunShellShrapStill2:
	.word	2183
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_ShotgunShellShrapStill2
	.align 4
_s_ShotgunShellShrapStill1:
	.word	2181
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_ShotgunShellShrapStill1
	.align 4
_s_UziShellShrapStill6:
	.word	2157
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill6
	.align 4
_s_UziShellShrapStill5:
	.word	2156
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill5
	.align 4
_s_UziShellShrapStill4:
	.word	2155
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill4
	.align 4
_s_UziShellShrapStill3:
	.word	2154
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill3
	.align 4
_s_UziShellShrapStill2:
	.word	2153
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill2
	.align 4
_s_UziShellShrapStill1:
	.word	2152
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_UziShellShrapStill1
	.globl	_s_TracerShrap
	.align 32
_s_TracerShrap:
	.word	847
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	848
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	849
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	850
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	851
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	852
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	853
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.space 4
	.word	854
	.space 2
	.long	8
	.long	__Z13DoTracerShraps
	.long	_s_TracerShrap
	.globl	_s_GoreFlame
	.align 32
_s_GoreFlame:
	.word	847
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	848
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	849
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	850
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	851
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	852
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	853
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	854
	.space 2
	.long	8
	.long	__Z19DoFastShrapJumpFalls
	.long	_s_GoreFlame
	.globl	_s_FastGoreDrip
	.align 32
_s_FastGoreDrip:
	.word	1562
	.space 2
	.long	16
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	1563
	.space 2
	.long	16
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	1564
	.space 2
	.long	16
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	1565
	.space 2
	.long	16
	.long	__Z19DoFastShrapJumpFalls
	.long	_s_FastGoreDrip
	.globl	_s_GoreDrip
	.align 32
_s_GoreDrip:
	.word	1562
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1563
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1564
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1565
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreDrip
	.globl	_s_GoreChunkS
	.align 32
_s_GoreChunkS:
	.word	2430
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2431
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2432
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	2433
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreChunkS
	.globl	_s_GoreSkullCap
	.align 32
_s_GoreSkullCap:
	.word	933
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	934
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	935
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	936
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	937
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	938
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	939
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	940
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	941
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	942
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	943
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	944
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreSkullCap
	.globl	_s_GoreLiver
	.align 32
_s_GoreLiver:
	.word	918
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	919
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	920
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	921
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	922
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	923
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	924
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	925
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	926
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	927
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	928
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	929
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreLiver
	.globl	_s_GoreLung
	.align 32
_s_GoreLung:
	.word	903
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	904
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	905
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	906
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	907
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	908
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	909
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	910
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	911
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	912
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	913
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	914
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreLung
	.globl	_s_GoreArm
	.align 32
_s_GoreArm:
	.word	1550
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1551
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1552
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1553
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1554
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1555
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1556
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1557
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1558
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1559
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1560
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1561
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreArm
	.globl	_s_GoreTorso
	.align 32
_s_GoreTorso:
	.word	1696
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1697
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1698
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1699
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1700
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1701
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1702
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1703
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreTorso
	.globl	_s_GoreEye
	.align 32
_s_GoreEye:
	.word	1692
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1693
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1694
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1695
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreEye
	.globl	_s_GoreLeg
	.align 32
_s_GoreLeg:
	.word	1689
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1690
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1691
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreLeg
	.globl	_s_GoreHead
	.align 32
_s_GoreHead:
	.word	1670
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1671
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1672
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1673
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1674
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1675
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1676
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1677
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1678
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1679
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1680
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1681
	.space 2
	.long	16
	.long	__Z15DoShrapJumpFalls
	.long	_s_GoreHead
	.globl	_s_VomitSplash
	.align 4
_s_VomitSplash:
	.word	1711
	.space 2
	.long	16
	.long	__Z13DoVomitSplashs
	.long	_s_VomitSplash
	.align 4
_s_Vomit2:
	.word	1721
	.space 2
	.long	16
	.long	__Z7DoVomits
	.long	_s_Vomit2
	.globl	_s_Vomit1
	.align 4
_s_Vomit1:
	.word	1719
	.space 2
	.long	16
	.long	__Z7DoVomits
	.long	_s_Vomit1
	.globl	_s_MirvMissile
	.align 32
_s_MirvMissile:
	.word	2035
	.space 2
	.long	12
	.long	__Z13DoMirvMissiles
	.space 4
	.word	2036
	.space 2
	.long	12
	.long	__Z13DoMirvMissiles
	.space 4
	.word	2037
	.space 2
	.long	12
	.long	__Z13DoMirvMissiles
	.space 4
	.word	2038
	.space 2
	.long	12
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMissile
	.globl	_s_Mirv
	.align 32
_s_Mirv:
	.word	2035
	.space 2
	.long	12
	.long	__Z6DoMirvs
	.space 4
	.word	2036
	.space 2
	.long	12
	.long	__Z6DoMirvs
	.space 4
	.word	2037
	.space 2
	.long	12
	.long	__Z6DoMirvs
	.space 4
	.word	2038
	.space 2
	.long	12
	.long	__Z6DoMirvs
	.long	_s_Mirv
	.globl	_s_PlasmaExp
	.align 32
_s_PlasmaExp:
	.word	2106
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2107
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2108
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2109
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2108
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2107
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2106
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2107
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2108
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2109
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2108
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2107
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2106
	.space 2
	.long	8
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_BloodWorm
	.align 32
_s_BloodWorm:
	.word	2106
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.space 4
	.word	2107
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.space 4
	.word	2108
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.space 4
	.word	2109
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.space 4
	.word	2108
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.space 4
	.word	2107
	.space 2
	.long	12
	.long	__Z11DoBloodWorms
	.long	_s_BloodWorm
	.globl	_s_Napalm
	.align 32
_s_Napalm:
	.word	2035
	.space 2
	.long	12
	.long	__Z8DoNapalms
	.space 4
	.word	2036
	.space 2
	.long	12
	.long	__Z8DoNapalms
	.space 4
	.word	2037
	.space 2
	.long	12
	.long	__Z8DoNapalms
	.space 4
	.word	2038
	.space 2
	.long	12
	.long	__Z8DoNapalms
	.long	_s_Napalm
	.globl	_s_Ring2
	.align 32
_s_Ring2:
	.word	2031
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2032
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2033
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2034
	.space 2
	.long	12
	.long	__Z6DoRings
	.long	_s_Ring2
	.globl	_s_Ring
	.align 32
_s_Ring:
	.word	2035
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2036
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2037
	.space 2
	.long	12
	.long	__Z6DoRings
	.space 4
	.word	2038
	.space 2
	.long	12
	.long	__Z6DoRings
	.long	_s_Ring
	.globl	_s_Fireball
	.align 32
_s_Fireball:
	.word	2035
	.space 2
	.long	12
	.long	__Z10DoFireballs
	.space 4
	.word	2036
	.space 2
	.long	12
	.long	__Z10DoFireballs
	.space 4
	.word	2037
	.space 2
	.long	12
	.long	__Z10DoFireballs
	.space 4
	.word	2038
	.space 2
	.long	12
	.long	__Z10DoFireballs
	.long	_s_Fireball
	.globl	_s_BreakFlames
	.align 32
_s_BreakFlames:
	.word	3212
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3213
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3214
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3215
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3216
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3217
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3218
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3219
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3220
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3221
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3222
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3223
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3224
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.space 4
	.word	3225
	.space 2
	.long	6
	.long	__Z13DoBreakFlamess
	.long	_s_BreakFlames
	.globl	_s_NapExp
	.align 32
_s_NapExp:
	.word	3072
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3072
	.space 2
	.long	65536
	.long	__Z12DoDamageTests
	.space 4
	.word	3073
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3074
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3075
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3076
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3077
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3078
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3079
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3080
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3081
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3082
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3083
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3084
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3085
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3086
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3087
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3088
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3089
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3090
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3091
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3092
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3093
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3093
	.space 2
	.long	4
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_FireballExp
	.align 32
_s_FireballExp:
	.word	3196
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	3197
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	3198
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	3199
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	3200
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	3200
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_FireballExp
	.globl	_s_SectorExp
	.align 32
_s_SectorExp:
	.word	3100
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z11SpawnShrapXs
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z11DoSectorExps
	.space 4
	.word	3101
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3102
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3103
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3104
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3105
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3106
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3107
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3107
	.space 2
	.long	65536
	.long	__Z11DoSectorExps
	.space 4
	.word	3108
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3109
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3110
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3111
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3112
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3113
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3114
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3115
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3116
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3117
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3118
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3119
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3120
	.space 2
	.long	7
	.long	__Z11DoSectorExps
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_SectorExp
	.globl	_s_TracerExp
	.align 32
_s_TracerExp:
	.word	3100
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z12NullAnimators
	.space 4
	.word	3101
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	65536
	.long	__Z12NullAnimators
	.space 4
	.word	3108
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	4
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_TracerExp
	.globl	_s_TankShellExp
	.align 32
_s_TankShellExp:
	.word	3100
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z11SpawnShrapXs
	.space 4
	.word	3101
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	65536
	.long	__Z11SpawnShrapXs
	.space 4
	.word	3108
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_TankShellExp
	.globl	_s_BoltExp
	.align 32
_s_BoltExp:
	.word	3100
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z11SpawnShrapXs
	.space 4
	.word	3101
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	65536
	.long	__Z11SpawnShrapXs
	.space 4
	.word	3108
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_BoltExp
	.globl	_s_BigGunFlame
	.align 32
_s_BigGunFlame:
	.word	3100
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3101
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_BigGunFlame
	.globl	_s_MicroExp
	.align 32
_s_MicroExp:
	.word	3100
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3100
	.space 2
	.long	65536
	.long	__Z15DoExpDamageTests
	.space 4
	.word	3101
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3108
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_BasicExp
	.align 32
_s_BasicExp:
	.word	3100
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3101
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3102
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3103
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3104
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3105
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3106
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3107
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3108
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3109
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3110
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3111
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3112
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3113
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3114
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	3120
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_BasicExp
	.globl	_s_MineExp
	.align 32
_s_MineExp:
	.word	3121
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3122
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3123
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3124
	.space 2
	.long	65536
	.long	__Z9DoMineExps
	.space 4
	.word	3124
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3125
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3126
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3127
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3128
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3129
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3130
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3131
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3132
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3133
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3134
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3135
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3136
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3137
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3138
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3138
	.space 2
	.long	65536
	.long	__Z13DoMineExpMines
	.space 4
	.word	3139
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3140
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3141
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_GrenadeSmallExp
	.align 32
_s_GrenadeSmallExp:
	.word	3121
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3122
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3123
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3124
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3125
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3126
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3127
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3128
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3129
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3130
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3131
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3132
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3133
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3134
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3135
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3136
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3137
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3138
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3139
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3140
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3141
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_GrenadeExp
	.align 32
_s_GrenadeExp:
	.word	3121
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3122
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3123
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3124
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3125
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3126
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3127
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3127
	.space 2
	.long	65536
	.long	__Z20SpawnGrenadeSmallExps
	.space 4
	.word	3128
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3129
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3130
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3131
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3132
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3133
	.space 2
	.long	65536
	.long	__Z20SpawnGrenadeSmallExps
	.space 4
	.word	3133
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3134
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3135
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3136
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3137
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3138
	.space 2
	.long	65536
	.long	__Z20SpawnGrenadeSmallExps
	.space 4
	.word	3138
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3139
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3140
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3141
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3142
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_ElectroShrap
	.align 32
_s_ElectroShrap:
	.word	2025
	.space 2
	.long	12
	.long	__Z13DoShrapDamages
	.space 4
	.word	2026
	.space 2
	.long	12
	.long	__Z13DoShrapDamages
	.space 4
	.word	2027
	.space 2
	.long	12
	.long	__Z13DoShrapDamages
	.space 4
	.word	2028
	.space 2
	.long	12
	.long	__Z13DoShrapDamages
	.long	_s_ElectroShrap
	.globl	_s_Electro
	.align 32
_s_Electro:
	.word	2025
	.space 2
	.long	12
	.long	__Z9DoElectros
	.space 4
	.word	2026
	.space 2
	.long	12
	.long	__Z9DoElectros
	.space 4
	.word	2027
	.space 2
	.long	12
	.long	__Z9DoElectros
	.space 4
	.word	2028
	.space 2
	.long	12
	.long	__Z9DoElectros
	.long	_s_Electro
	.globl	_s_TeleportEffect2
	.align 32
_s_TeleportEffect2:
	.word	3240
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3241
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3242
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3243
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3244
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3245
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3246
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3247
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3248
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3249
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3250
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3251
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3252
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3253
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3254
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3255
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3256
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3257
	.space 2
	.long	6
	.long	__Z12NullAnimators
	.space 4
	.word	3257
	.space 2
	.long	65536
	.long	__Z12DoTeleRippers
	.space 4
	.word	3257
	.space 2
	.long	6
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_PlasmaDone
	.align 32
_s_PlasmaDone:
	.word	1562
	.space 2
	.long	15
	.long	__Z12DoPlasmaDones
	.space 4
	.word	1564
	.space 2
	.long	15
	.long	__Z12DoPlasmaDones
	.space 4
	.word	1563
	.space 2
	.long	15
	.long	__Z12DoPlasmaDones
	.long	_s_PlasmaDone
	.globl	_s_PlasmaDrip
	.align 32
_s_PlasmaDrip:
	.word	1562
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1563
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1564
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1565
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1566
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1567
	.space 2
	.long	12
	.long	__Z15DoShrapJumpFalls
	.space 4
	.word	1569
	.space 2
	.long	12
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_PlasmaFountain
	.align 32
_s_PlasmaFountain:
	.word	1562
	.space 2
	.long	8
	.long	__Z16DoPlasmaFountains
	.space 4
	.word	1563
	.space 2
	.long	8
	.long	__Z16DoPlasmaFountains
	.space 4
	.word	1564
	.space 2
	.long	8
	.long	__Z16DoPlasmaFountains
	.space 4
	.word	1565
	.space 2
	.long	8
	.long	__Z16DoPlasmaFountains
	.long	_s_PlasmaFountain
	.globl	_s_Plasma
	.align 32
_s_Plasma:
	.word	1562
	.space 2
	.long	8
	.long	__Z8DoPlasmas
	.space 4
	.word	1563
	.space 2
	.long	8
	.long	__Z8DoPlasmas
	.space 4
	.word	1564
	.space 2
	.long	8
	.long	__Z8DoPlasmas
	.long	_s_Plasma
	.globl	_s_CoolgDrip
	.align 4
_s_CoolgDrip:
	.word	1720
	.space 2
	.long	100
	.long	__Z11DoCoolgDrips
	.long	_s_CoolgDrip
	.globl	_s_CoolgFireDone
	.align 32
_s_CoolgFireDone:
	.word	2410
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	2411
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	2412
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	2413
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	2414
	.space 2
	.long	3
	.long	__Z12NullAnimators
	.space 4
	.word	2414
	.space 2
	.long	3
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_CoolgFire
	.align 32
_s_CoolgFire:
	.word	2031
	.space 2
	.long	8
	.long	__Z11DoCoolgFires
	.space 4
	.word	2032
	.space 2
	.long	8
	.long	__Z11DoCoolgFires
	.space 4
	.word	2033
	.space 2
	.long	8
	.long	__Z11DoCoolgFires
	.space 4
	.word	2034
	.space 2
	.long	8
	.long	__Z11DoCoolgFires
	.long	_s_CoolgFire
	.globl	_s_BoltShrapnel
	.align 32
_s_BoltShrapnel:
	.word	2102
	.space 2
	.long	8
	.long	__Z14DoBoltShrapnels
	.space 4
	.word	2103
	.space 2
	.long	8
	.long	__Z14DoBoltShrapnels
	.space 4
	.word	2104
	.space 2
	.long	8
	.long	__Z14DoBoltShrapnels
	.space 4
	.word	2105
	.space 2
	.long	8
	.long	__Z14DoBoltShrapnels
	.long	_s_BoltShrapnel
	.globl	_s_BoltFatMan
	.align 32
_s_BoltFatMan:
	.word	2102
	.space 2
	.long	8
	.long	__Z12DoBoltFatMans
	.space 4
	.word	2103
	.space 2
	.long	8
	.long	__Z12DoBoltFatMans
	.space 4
	.word	2104
	.space 2
	.long	8
	.long	__Z12DoBoltFatMans
	.space 4
	.word	2105
	.space 2
	.long	8
	.long	__Z12DoBoltFatMans
	.long	_s_BoltFatMan
	.align 4
_sg_BoltSeeker:
	.long	_s_BoltSeeker
	.long	_s_BoltSeeker+16
	.long	_s_BoltSeeker+32
	.long	_s_BoltSeeker+48
	.long	_s_BoltSeeker+64
	.align 32
_s_BoltSeeker:
	.word	2018
	.space 2
	.long	8
	.long	__Z12DoBoltSeekers
	.long	_s_BoltSeeker
	.word	2017
	.space 2
	.long	8
	.long	__Z12DoBoltSeekers
	.long	_s_BoltSeeker+16
	.word	2016
	.space 2
	.long	8
	.long	__Z12DoBoltSeekers
	.long	_s_BoltSeeker+32
	.word	2015
	.space 2
	.long	8
	.long	__Z12DoBoltSeekers
	.long	_s_BoltSeeker+48
	.word	2014
	.space 2
	.long	8
	.long	__Z12DoBoltSeekers
	.long	_s_BoltSeeker+64
	.align 4
_sg_BoltThinMan:
	.long	_s_BoltThinMan
	.long	_s_BoltThinMan+16
	.long	_s_BoltThinMan+32
	.long	_s_BoltThinMan+48
	.long	_s_BoltThinMan+64
	.align 32
_s_BoltThinMan:
	.word	2018
	.space 2
	.long	8
	.long	__Z13DoBoltThinMans
	.long	_s_BoltThinMan
	.word	2017
	.space 2
	.long	8
	.long	__Z13DoBoltThinMans
	.long	_s_BoltThinMan+16
	.word	2016
	.space 2
	.long	8
	.long	__Z13DoBoltThinMans
	.long	_s_BoltThinMan+32
	.word	2015
	.space 2
	.long	8
	.long	__Z13DoBoltThinMans
	.long	_s_BoltThinMan+48
	.word	2014
	.space 2
	.long	8
	.long	__Z13DoBoltThinMans
	.long	_s_BoltThinMan+64
	.globl	_sg_MicroMini
	.align 4
_sg_MicroMini:
	.long	_s_MicroMini
	.long	_s_MicroMini+16
	.long	_s_MicroMini+32
	.long	_s_MicroMini+48
	.long	_s_MicroMini+64
	.align 32
_s_MicroMini:
	.word	2206
	.space 2
	.long	8
	.long	__Z11DoMicroMinis
	.long	_s_MicroMini
	.word	2208
	.space 2
	.long	8
	.long	__Z11DoMicroMinis
	.long	_s_MicroMini+16
	.word	2209
	.space 2
	.long	8
	.long	__Z11DoMicroMinis
	.long	_s_MicroMini+32
	.word	2210
	.space 2
	.long	8
	.long	__Z11DoMicroMinis
	.long	_s_MicroMini+48
	.word	2207
	.space 2
	.long	8
	.long	__Z11DoMicroMinis
	.long	_s_MicroMini+64
	.globl	_sg_Micro
	.align 4
_sg_Micro:
	.long	_s_Micro
	.long	_s_Micro+16
	.long	_s_Micro+32
	.long	_s_Micro+48
	.long	_s_Micro+64
	.globl	_s_Micro
	.align 32
_s_Micro:
	.word	2206
	.space 2
	.long	8
	.long	__Z7DoMicros
	.long	_s_Micro
	.word	2208
	.space 2
	.long	8
	.long	__Z7DoMicros
	.long	_s_Micro+16
	.word	2209
	.space 2
	.long	8
	.long	__Z7DoMicros
	.long	_s_Micro+32
	.word	2210
	.space 2
	.long	8
	.long	__Z7DoMicros
	.long	_s_Micro+48
	.word	2207
	.space 2
	.long	8
	.long	__Z7DoMicros
	.long	_s_Micro+64
	.globl	_s_Laser
	.align 4
_s_Laser:
	.word	2206
	.space 2
	.long	8
	.long	__Z7DoLasers
	.long	_s_Laser
	.globl	_sg_Rail
	.align 4
_sg_Rail:
	.long	_s_Rail
	.long	_s_Rail+16
	.long	_s_Rail+32
	.long	_s_Rail+48
	.long	_s_Rail+64
	.globl	_s_Rail
	.align 32
_s_Rail:
	.word	2206
	.space 2
	.long	8
	.long	__Z6DoRails
	.long	_s_Rail
	.word	2208
	.space 2
	.long	8
	.long	__Z6DoRails
	.long	_s_Rail+16
	.word	2209
	.space 2
	.long	8
	.long	__Z6DoRails
	.long	_s_Rail+32
	.word	2210
	.space 2
	.long	8
	.long	__Z6DoRails
	.long	_s_Rail+48
	.word	2207
	.space 2
	.long	8
	.long	__Z6DoRails
	.long	_s_Rail+64
	.globl	_sg_BunnyRocket
	.align 4
_sg_BunnyRocket:
	.long	_s_BunnyRocket
	.long	_s_BunnyRocket+16
	.long	_s_BunnyRocket+32
	.long	_s_BunnyRocket+48
	.long	_s_BunnyRocket+64
	.globl	_s_BunnyRocket
	.align 32
_s_BunnyRocket:
	.word	4552
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_BunnyRocket
	.word	4557
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_BunnyRocket+16
	.word	4562
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_BunnyRocket+32
	.word	4567
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_BunnyRocket+48
	.word	4572
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_BunnyRocket+64
	.globl	_sg_Rocket
	.align 4
_sg_Rocket:
	.long	_s_Rocket
	.long	_s_Rocket+16
	.long	_s_Rocket+32
	.long	_s_Rocket+48
	.long	_s_Rocket+64
	.globl	_s_Rocket
	.align 32
_s_Rocket:
	.word	2206
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_Rocket
	.word	2208
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_Rocket+16
	.word	2209
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_Rocket+32
	.word	2210
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_Rocket+48
	.word	2207
	.space 2
	.long	8
	.long	__Z8DoRockets
	.long	_s_Rocket+64
	.align 4
_sg_Spear:
	.long	_s_Spear
	.long	_s_Spear+16
	.long	_s_Spear+32
	.long	_s_Spear+48
	.long	_s_Spear+64
	.align 32
_s_Spear:
	.word	2030
	.space 2
	.long	8
	.long	__Z7DoSpears
	.long	_s_Spear
	.word	2031
	.space 2
	.long	8
	.long	__Z7DoSpears
	.long	_s_Spear+16
	.word	2032
	.space 2
	.long	8
	.long	__Z7DoSpears
	.long	_s_Spear+32
	.word	2033
	.space 2
	.long	8
	.long	__Z7DoSpears
	.long	_s_Spear+48
	.word	2034
	.space 2
	.long	8
	.long	__Z7DoSpears
	.long	_s_Spear+64
	.globl	_s_SerpMeteorExp
	.align 32
_s_SerpMeteorExp:
	.word	2115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z9DoSuicides
	.space 4
	.globl	_sg_SerpMeteor
	.align 4
_sg_SerpMeteor:
	.long	_s_SerpMeteor
	.long	_s_SerpMeteor+64
	.long	_s_SerpMeteor+128
	.long	_s_SerpMeteor+192
	.long	_s_SerpMeteor+256
	.align 32
_s_SerpMeteor:
	.word	2031
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+16
	.word	2032
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+32
	.word	2033
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+48
	.word	2034
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor
	.word	2031
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+80
	.word	2032
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+96
	.word	2033
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+112
	.word	2034
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+64
	.word	2031
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+144
	.word	2032
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+160
	.word	2033
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+176
	.word	2034
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+128
	.word	2031
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+208
	.word	2032
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+224
	.word	2033
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+240
	.word	2034
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+192
	.word	2031
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+272
	.word	2032
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+288
	.word	2033
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+304
	.word	2034
	.space 2
	.long	8
	.long	__Z12DoSerpMeteors
	.long	_s_SerpMeteor+256
	.globl	_s_MirvMeteorExp
	.align 32
_s_MirvMeteorExp:
	.word	2115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z9DoSuicides
	.space 4
	.globl	_sg_MirvMeteor
	.align 4
_sg_MirvMeteor:
	.long	_s_MirvMeteor
	.long	_s_MirvMeteor+64
	.long	_s_MirvMeteor+128
	.long	_s_MirvMeteor+192
	.long	_s_MirvMeteor+256
	.align 32
_s_MirvMeteor:
	.word	2098
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+16
	.word	2099
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+32
	.word	2100
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+48
	.word	2101
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor
	.word	2090
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+80
	.word	2091
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+96
	.word	2092
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+112
	.word	2093
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+64
	.word	2094
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+144
	.word	2095
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+160
	.word	2096
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+176
	.word	2097
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+128
	.word	2090
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+208
	.word	2091
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+224
	.word	2092
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+240
	.word	2093
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+192
	.word	2098
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+272
	.word	2099
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+288
	.word	2100
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+304
	.word	2101
	.space 2
	.long	8
	.long	__Z13DoMirvMissiles
	.long	_s_MirvMeteor+256
	.globl	_s_MeteorExp
	.align 32
_s_MeteorExp:
	.word	2115
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2116
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2117
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2118
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2119
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z12NullAnimators
	.space 4
	.word	2120
	.space 2
	.long	7
	.long	__Z9DoSuicides
	.space 4
	.align 4
_sg_Meteor:
	.long	_s_Meteor
	.long	_s_Meteor+64
	.long	_s_Meteor+128
	.long	_s_Meteor+192
	.long	_s_Meteor+256
	.align 32
_s_Meteor:
	.word	2098
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+16
	.word	2099
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+32
	.word	2100
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+48
	.word	2101
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor
	.word	2090
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+80
	.word	2091
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+96
	.word	2092
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+112
	.word	2093
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+64
	.word	2094
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+144
	.word	2095
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+160
	.word	2096
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+176
	.word	2097
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+128
	.word	2090
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+208
	.word	2091
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+224
	.word	2092
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+240
	.word	2093
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+192
	.word	2098
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+272
	.word	2099
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+288
	.word	2100
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+304
	.word	2101
	.space 2
	.long	8
	.long	__Z8DoMeteors
	.long	_s_Meteor+256
	.globl	_s_MineSpark
	.align 32
_s_MineSpark:
	.word	2140
	.space 2
	.long	8
	.long	__Z11DoMineSparks
	.space 4
	.word	2141
	.space 2
	.long	8
	.long	__Z11DoMineSparks
	.space 4
	.word	2142
	.space 2
	.long	8
	.long	__Z11DoMineSparks
	.space 4
	.word	2143
	.space 2
	.long	8
	.long	__Z11DoMineSparks
	.space 4
	.word	2144
	.space 2
	.long	8
	.long	__Z11DoMineSparks
	.space 4
	.word	2144
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_MineSpark
	.globl	_s_Mine
	.align 32
_s_Mine:
	.word	2223
	.space 2
	.long	16
	.long	__Z6DoMines
	.space 4
	.word	2224
	.space 2
	.long	16
	.long	__Z6DoMines
	.long	_s_Mine
	.globl	_s_MineStuck
	.align 4
_s_MineStuck:
	.word	2223
	.space 2
	.long	16
	.long	__Z11DoMineStucks
	.long	_s_MineStuck
	.globl	_sg_Grenade
	.align 4
_sg_Grenade:
	.long	_s_Grenade
	.long	_s_Grenade+16
	.long	_s_Grenade+32
	.long	_s_Grenade+48
	.long	_s_Grenade+64
	.globl	_s_Grenade
	.align 32
_s_Grenade:
	.word	2110
	.space 2
	.long	8
	.long	__Z9DoGrenades
	.long	_s_Grenade
	.word	2111
	.space 2
	.long	8
	.long	__Z9DoGrenades
	.long	_s_Grenade+16
	.word	2112
	.space 2
	.long	8
	.long	__Z9DoGrenades
	.long	_s_Grenade+32
	.word	2113
	.space 2
	.long	8
	.long	__Z9DoGrenades
	.long	_s_Grenade+48
	.word	2114
	.space 2
	.long	8
	.long	__Z9DoGrenades
	.long	_s_Grenade+64
	.globl	_s_VulcanBoulder
	.align 32
_s_VulcanBoulder:
	.word	2197
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2198
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2199
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2200
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2201
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2202
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2203
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.space 4
	.word	2204
	.space 2
	.long	6
	.long	__Z15DoVulcanBoulders
	.long	_s_VulcanBoulder
	.globl	_s_LavaShard
	.align 32
_s_LavaShard:
	.word	2197
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2198
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2199
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2200
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2201
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2202
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2203
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.space 4
	.word	2204
	.space 2
	.long	6
	.long	__Z13DoShrapDamages
	.long	_s_LavaShard
	.globl	_s_LavaBoulder
	.align 32
_s_LavaBoulder:
	.word	2197
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2198
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2199
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2200
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2201
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2202
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2203
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.space 4
	.word	2204
	.space 2
	.long	6
	.long	__Z13DoLavaBoulders
	.long	_s_LavaBoulder
	.globl	_sg_CrossBolt
	.align 4
_sg_CrossBolt:
	.long	_s_CrossBolt
	.long	_s_CrossBolt+16
	.long	_s_CrossBolt+32
	.long	_s_CrossBolt+48
	.long	_s_CrossBolt+64
	.globl	_s_CrossBolt
	.align 32
_s_CrossBolt:
	.word	2230
	.space 2
	.long	100
	.long	__Z11DoCrossBolts
	.long	_s_CrossBolt
	.word	2232
	.space 2
	.long	100
	.long	__Z11DoCrossBolts
	.long	_s_CrossBolt+16
	.word	2233
	.space 2
	.long	100
	.long	__Z11DoCrossBolts
	.long	_s_CrossBolt+32
	.word	2234
	.space 2
	.long	100
	.long	__Z11DoCrossBolts
	.long	_s_CrossBolt+48
	.word	2231
	.space 2
	.long	100
	.long	__Z11DoCrossBolts
	.long	_s_CrossBolt+64
	.globl	_s_Splash
	.align 32
_s_Splash:
	.word	772
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.space 4
	.word	773
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.space 4
	.word	774
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.space 4
	.word	775
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.space 4
	.word	776
	.space 2
	.long	10
	.long	__Z12NullAnimators
	.space 4
	.word	776
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_Splash
	.globl	_s_Bubble
	.align 4
_s_Bubble:
	.word	716
	.space 2
	.long	100
	.long	__Z8DoBubbles
	.long	_s_Bubble
	.align 32
_s_UziPowerSpark:
	.word	2140
	.space 2
	.long	8
	.long	__Z10DoUziSmokes
	.long	_s_UziSpark+16
	.word	2141
	.space 2
	.long	8
	.long	__Z10DoUziSmokes
	.long	_s_UziSpark+32
	.word	2142
	.space 2
	.long	8
	.long	__Z10DoUziSmokes
	.long	_s_UziSpark+48
	.word	2143
	.space 2
	.long	8
	.long	__Z10DoUziSmokes
	.long	_s_UziSpark+64
	.word	2144
	.space 2
	.long	8
	.long	__Z10DoUziSmokes
	.long	_s_UziSpark+80
	.word	2144
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_UziSpark
	.globl	_s_UziSpark
	.align 32
_s_UziSpark:
	.word	2140
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2141
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2142
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2143
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2144
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	2144
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_UziSpark
	.align 4
_s_UziBullet:
	.word	717
	.space 2
	.long	100
	.long	__Z11DoUziBullets
	.long	_s_UziBullet
	.globl	_s_ShotgunSmoke
	.align 32
_s_ShotgunSmoke:
	.word	2146
	.space 2
	.long	16
	.long	__Z14DoShotgunSmokes
	.space 4
	.word	2147
	.space 2
	.long	16
	.long	__Z14DoShotgunSmokes
	.space 4
	.word	2148
	.space 2
	.long	16
	.long	__Z14DoShotgunSmokes
	.space 4
	.word	2149
	.space 2
	.long	16
	.long	__Z14DoShotgunSmokes
	.space 4
	.word	2149
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_ShotgunSmoke
	.globl	_s_UziSmoke
	.align 32
_s_UziSmoke:
	.word	2146
	.space 2
	.long	16
	.long	__Z10DoUziSmokes
	.space 4
	.word	2147
	.space 2
	.long	16
	.long	__Z10DoUziSmokes
	.space 4
	.word	2148
	.space 2
	.long	16
	.long	__Z10DoUziSmokes
	.space 4
	.word	2149
	.space 2
	.long	16
	.long	__Z10DoUziSmokes
	.space 4
	.word	2149
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_UziSmoke
	.globl	_s_WaterSmoke
	.align 32
_s_WaterSmoke:
	.word	1748
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1749
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1750
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1751
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1752
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1753
	.space 2
	.long	18
	.long	__Z12DoWaterSmokes
	.space 4
	.word	1753
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_VehicleSmoke
	.align 32
_s_VehicleSmoke:
	.word	1748
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1749
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1750
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1751
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1752
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1753
	.space 2
	.long	18
	.long	__Z14DoVehicleSmokes
	.space 4
	.word	1753
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.space 4
	.globl	_s_TankShell
	.align 4
_s_TankShell:
	.word	3201
	.space 2
	.long	200
	.long	__Z11DoTankShells
	.long	_s_TankShell
	.globl	_s_EMPShrap
	.align 32
_s_EMPShrap:
	.word	2058
	.space 2
	.long	6
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	2059
	.space 2
	.long	6
	.long	__Z19DoFastShrapJumpFalls
	.space 4
	.word	2060
	.space 2
	.long	6
	.long	__Z19DoFastShrapJumpFalls
	.long	_s_EMPShrap
	.globl	_s_EMPBurst
	.align 32
_s_EMPBurst:
	.word	2058
	.space 2
	.long	6
	.long	__Z10DoEMPBursts
	.space 4
	.word	2059
	.space 2
	.long	6
	.long	__Z10DoEMPBursts
	.space 4
	.word	2060
	.space 2
	.long	6
	.long	__Z10DoEMPBursts
	.long	_s_EMPBurst
	.globl	_s_EMP
	.align 32
_s_EMP:
	.word	2058
	.space 2
	.long	6
	.long	__Z5DoEMPs
	.space 4
	.word	2059
	.space 2
	.long	6
	.long	__Z5DoEMPs
	.space 4
	.word	2060
	.space 2
	.long	6
	.long	__Z5DoEMPs
	.long	_s_EMP
	.globl	_s_Tracer
	.align 32
_s_Tracer:
	.word	3201
	.space 2
	.long	6
	.long	__Z8DoTracers
	.space 4
	.word	3202
	.space 2
	.long	6
	.long	__Z8DoTracers
	.space 4
	.word	3203
	.space 2
	.long	6
	.long	__Z8DoTracers
	.space 4
	.word	3204
	.space 2
	.long	6
	.long	__Z8DoTracers
	.space 4
	.word	3205
	.space 2
	.long	6
	.long	__Z8DoTracers
	.space 4
	.word	3206
	.space 2
	.long	6
	.long	__Z8DoTracers
	.long	_s_Tracer
	.globl	_s_LaserPuff
	.align 32
_s_LaserPuff:
	.word	3201
	.space 2
	.long	8
	.long	0
	.space 4
	.word	3201
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_LaserPuff
	.globl	_sg_RailPuff
	.align 4
_sg_RailPuff:
	.long	_s_RailPuff
	.long	_s_RailPuff+272
	.long	_s_RailPuff+544
	.long	_s_RailPuff+272
	.long	_s_RailPuff
	.globl	_s_RailPuff
	.align 32
_s_RailPuff:
	.word	3969
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+16
	.word	3970
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+32
	.word	3971
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+48
	.word	3972
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+64
	.word	3973
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+80
	.word	3974
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+96
	.word	3975
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+112
	.word	3976
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+128
	.word	3977
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+144
	.word	3978
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+160
	.word	3979
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+176
	.word	3980
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+192
	.word	3981
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+208
	.word	3982
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+224
	.word	3983
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+240
	.word	3984
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+256
	.word	3984
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_RailPuff
	.word	3985
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+288
	.word	3986
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+304
	.word	3987
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+320
	.word	3988
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+336
	.word	3989
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+352
	.word	3990
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+368
	.word	3991
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+384
	.word	3992
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+400
	.word	3993
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+416
	.word	3994
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+432
	.word	3995
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+448
	.word	3996
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+464
	.word	3997
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+480
	.word	3998
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+496
	.word	3999
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+512
	.word	4000
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+528
	.word	4000
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_RailPuff+272
	.word	4001
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+560
	.word	4002
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+576
	.word	4003
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+592
	.word	4004
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+608
	.word	4005
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+624
	.word	4006
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+640
	.word	4007
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+656
	.word	4008
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+672
	.word	4009
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+688
	.word	4010
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+704
	.word	4011
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+720
	.word	4012
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+736
	.word	4013
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+752
	.word	4014
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+768
	.word	4015
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+784
	.word	4016
	.space 2
	.long	6
	.long	__Z10DoRailPuffs
	.long	_s_RailPuff+800
	.word	4016
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_RailPuff+544
	.globl	_s_BreakBottle2
	.align 32
_s_BreakBottle2:
	.word	476
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	477
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	478
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	479
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	480
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	481
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.globl	_s_BreakBottle1
	.align 32
_s_BreakBottle1:
	.word	469
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	470
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	471
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	472
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	473
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	474
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.globl	_s_BreakPedistal
	.align 32
_s_BreakPedistal:
	.word	464
	.space 2
	.long	28
	.long	__Z12NullAnimators
	.space 4
	.word	465
	.space 2
	.long	28
	.long	__Z12NullAnimators
	.space 4
	.word	466
	.space 2
	.long	28
	.long	__Z12NullAnimators
	.space 4
	.word	467
	.space 2
	.long	28
	.long	__Z12NullAnimators
	.space 4
	.globl	_s_BreakBarrel
	.align 32
_s_BreakBarrel:
	.word	457
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	458
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	459
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	460
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	461
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	462
	.space 2
	.long	18
	.long	__Z13DoDefaultStats
	.space 4
	.globl	_s_BreakLight
	.align 32
_s_BreakLight:
	.word	447
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	448
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	449
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	450
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	451
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.word	452
	.space 2
	.long	18
	.long	__Z12NullAnimators
	.space 4
	.globl	_s_Suicide
	.align 4
_s_Suicide:
	.word	1
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_Suicide
	.align 4
_s_NotRestored:
	.word	2323
	.space 2
	.long	100
	.long	__Z12NullAnimators
	.long	_s_NotRestored
	.globl	_MiniSumoActionSet
	.align 32
_MiniSumoActionSet:
	.long	_sg_SumoStand
	.long	_sg_SumoRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_SumoPain
	.long	_sg_SumoDie
	.long	0
	.long	_sg_SumoDead
	.long	0
	.long	0
	.long	_sg_SumoClap
	.space 4
	.word	1024
	.space 2
	.long	_sg_SumoClap
	.space 20
	.word	1024
	.space 10
	.long	0
	.space 4
	.long	0
	.long	0
	.globl	_SumoActionSet
	.align 32
_SumoActionSet:
	.long	_sg_SumoStand
	.long	_sg_SumoRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_SumoPain
	.long	_sg_SumoDie
	.long	0
	.long	_sg_SumoDead
	.long	0
	.long	0
	.long	_sg_SumoStomp
	.long	_sg_SumoFart
	.word	800
	.word	1024
	.long	_sg_SumoClap
	.long	_sg_SumoStomp
	.long	_sg_SumoFart
	.space 12
	.word	400
	.word	750
	.word	1024
	.space 6
	.long	0
	.space 4
	.long	0
	.long	0
	.align 4
_sg_SumoDead:
	.long	_s_SumoDead
	.align 4
_s_SumoDead:
	.word	1277
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.long	_s_SumoDead
	.align 4
_sg_SumoDie:
	.long	_s_SumoDie
	.globl	_s_SumoDie
	.align 32
_s_SumoDie:
	.word	1270
	.space 2
	.long	60
	.long	__Z8NullSumos
	.space 4
	.word	1271
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1272
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1273
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1274
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1275
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1276
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1276
	.space 2
	.long	90
	.long	__Z8NullSumos
	.space 4
	.word	1277
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1276
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1277
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1276
	.space 2
	.long	22
	.long	__Z8NullSumos
	.space 4
	.word	1277
	.space 2
	.long	30
	.long	__Z8NullSumos
	.space 4
	.word	1277
	.space 2
	.long	65536
	.long	__Z15DoSumoDeathMelts
	.space 4
	.word	1276
	.space 2
	.long	15
	.long	__Z8NullSumos
	.space 4
	.word	1277
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	1277
	.space 2
	.long	30
	.long	__Z13DoActorDebriss
	.space 4
	.align 4
_sg_SumoStomp:
	.long	_s_SumoStomp
	.long	_s_SumoStomp+96
	.long	_s_SumoStomp+192
	.long	_s_SumoStomp+288
	.long	_s_SumoStomp+384
	.align 32
_s_SumoStomp:
	.word	1230
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+16
	.word	1231
	.space 2
	.long	90
	.long	__Z8NullSumos
	.long	_s_SumoStomp+32
	.word	1232
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+48
	.word	1232
	.space 2
	.long	65536
	.long	__Z13InitSumoStomps
	.long	_s_SumoStomp+64
	.word	1232
	.space 2
	.long	8
	.long	__Z8NullSumos
	.long	_s_SumoStomp+80
	.word	1232
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoStomp+80
	.word	1233
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+112
	.word	1234
	.space 2
	.long	90
	.long	__Z8NullSumos
	.long	_s_SumoStomp+128
	.word	1235
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+144
	.word	1235
	.space 2
	.long	65536
	.long	__Z13InitSumoStomps
	.long	_s_SumoStomp+160
	.word	1235
	.space 2
	.long	8
	.long	__Z8NullSumos
	.long	_s_SumoStomp+176
	.word	1235
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoStomp+176
	.word	1236
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+208
	.word	1237
	.space 2
	.long	90
	.long	__Z8NullSumos
	.long	_s_SumoStomp+224
	.word	1238
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+240
	.word	1238
	.space 2
	.long	65536
	.long	__Z13InitSumoStomps
	.long	_s_SumoStomp+256
	.word	1238
	.space 2
	.long	8
	.long	__Z8NullSumos
	.long	_s_SumoStomp+272
	.word	1238
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoStomp+272
	.word	1239
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+304
	.word	1240
	.space 2
	.long	90
	.long	__Z8NullSumos
	.long	_s_SumoStomp+320
	.word	1241
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+336
	.word	1241
	.space 2
	.long	65536
	.long	__Z13InitSumoStomps
	.long	_s_SumoStomp+352
	.word	1241
	.space 2
	.long	8
	.long	__Z8NullSumos
	.long	_s_SumoStomp+368
	.word	1241
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoStomp+368
	.word	1242
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+400
	.word	1243
	.space 2
	.long	90
	.long	__Z8NullSumos
	.long	_s_SumoStomp+416
	.word	1244
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoStomp+432
	.word	1244
	.space 2
	.long	65536
	.long	__Z13InitSumoStomps
	.long	_s_SumoStomp+448
	.word	1244
	.space 2
	.long	8
	.long	__Z8NullSumos
	.long	_s_SumoStomp+464
	.word	1244
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoStomp+464
	.align 4
_sg_SumoClap:
	.long	_s_SumoClap
	.long	_s_SumoClap+96
	.long	_s_SumoClap+192
	.long	_s_SumoClap+288
	.long	_s_SumoClap+384
	.align 32
_s_SumoClap:
	.word	1245
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+16
	.word	1246
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+32
	.word	1247
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+48
	.word	1247
	.space 2
	.long	65536
	.long	__Z12InitSumoClaps
	.long	_s_SumoClap+64
	.word	1248
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoClap+80
	.word	1248
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoClap+80
	.word	1249
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+112
	.word	1250
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+128
	.word	1251
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+144
	.word	1251
	.space 2
	.long	65536
	.long	__Z12InitSumoClaps
	.long	_s_SumoClap+160
	.word	1252
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoClap+176
	.word	1252
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoClap+176
	.word	1253
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+208
	.word	1254
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+224
	.word	1255
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+240
	.word	1255
	.space 2
	.long	65536
	.long	__Z12InitSumoClaps
	.long	_s_SumoClap+256
	.word	1256
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoClap+272
	.word	1256
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoClap+272
	.word	1257
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+304
	.word	1258
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+320
	.word	1259
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+336
	.word	1259
	.space 2
	.long	65536
	.long	__Z12InitSumoClaps
	.long	_s_SumoClap+352
	.word	1260
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoClap+368
	.word	1260
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoClap+368
	.word	1261
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+400
	.word	1262
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+416
	.word	1263
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoClap+432
	.word	1263
	.space 2
	.long	65536
	.long	__Z12InitSumoClaps
	.long	_s_SumoClap+448
	.word	1264
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoClap+464
	.word	1264
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoClap+464
	.align 4
_sg_SumoFart:
	.long	_s_SumoFart
	.long	_s_SumoFart+96
	.long	_s_SumoFart+192
	.long	_s_SumoFart+288
	.long	_s_SumoFart+384
	.align 32
_s_SumoFart:
	.word	1280
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+16
	.word	1280
	.space 2
	.long	65536
	.long	__Z12InitSumoFarts
	.long	_s_SumoFart+32
	.word	1281
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+48
	.word	1282
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+64
	.word	1283
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoFart+80
	.word	1283
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoFart
	.word	1280
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+112
	.word	1280
	.space 2
	.long	65536
	.long	__Z12InitSumoFarts
	.long	_s_SumoFart+128
	.word	1281
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+144
	.word	1282
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+160
	.word	1283
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoFart+176
	.word	1280
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoFart+96
	.word	1280
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+208
	.word	1280
	.space 2
	.long	65536
	.long	__Z12InitSumoFarts
	.long	_s_SumoFart+224
	.word	1281
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+240
	.word	1282
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+256
	.word	1283
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoFart+272
	.word	1280
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoFart+192
	.word	1280
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+304
	.word	1280
	.space 2
	.long	65536
	.long	__Z12InitSumoFarts
	.long	_s_SumoFart+320
	.word	1281
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+336
	.word	1282
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+352
	.word	1283
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoFart+368
	.word	1280
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoFart+288
	.word	1280
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+400
	.word	1280
	.space 2
	.long	65536
	.long	__Z12InitSumoFarts
	.long	_s_SumoFart+416
	.word	1281
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+432
	.word	1282
	.space 2
	.long	12
	.long	__Z8NullSumos
	.long	_s_SumoFart+448
	.word	1283
	.space 2
	.long	120
	.long	__Z8NullSumos
	.long	_s_SumoFart+464
	.word	1280
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoFart+384
	.align 4
_sg_SumoPain:
	.long	_s_SumoPain
	.long	_s_SumoPain+32
	.long	_s_SumoPain+64
	.long	_s_SumoPain+96
	.long	_s_SumoPain+128
	.align 32
_s_SumoPain:
	.word	1265
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoPain+16
	.word	1265
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoPain
	.word	1265
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoPain+48
	.word	1265
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoPain+32
	.word	1265
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoPain+80
	.word	1265
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoPain+64
	.word	1265
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoPain+112
	.word	1265
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoPain+96
	.word	1265
	.space 2
	.long	30
	.long	__Z8NullSumos
	.long	_s_SumoPain+144
	.word	1265
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SumoPain+128
	.align 4
_sg_SumoStand:
	.long	_s_SumoStand
	.long	_s_SumoStand+16
	.long	_s_SumoStand+32
	.long	_s_SumoStand+48
	.long	_s_SumoStand+64
	.align 32
_s_SumoStand:
	.word	1210
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoStand
	.word	1214
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoStand+16
	.word	1218
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoStand+32
	.word	1222
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoStand+48
	.word	1226
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoStand+64
	.globl	_sg_SumoRun
	.align 4
_sg_SumoRun:
	.long	_s_SumoRun
	.long	_s_SumoRun+64
	.long	_s_SumoRun+128
	.long	_s_SumoRun+192
	.long	_s_SumoRun+256
	.globl	_s_SumoRun
	.align 32
_s_SumoRun:
	.word	1210
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+16
	.word	1211
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+32
	.word	1212
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+48
	.word	1213
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun
	.word	1214
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+80
	.word	1215
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+96
	.word	1216
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+112
	.word	1217
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+64
	.word	1218
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+144
	.word	1219
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+160
	.word	1220
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+176
	.word	1221
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+128
	.word	1222
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+208
	.word	1223
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+224
	.word	1224
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+240
	.word	1225
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+192
	.word	1226
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+272
	.word	1227
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+288
	.word	1228
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+304
	.word	1229
	.space 2
	.long	24
	.long	__Z10DoSumoMoves
	.long	_s_SumoRun+256
	.globl	_SumoAttrib
	.align 32
_SumoAttrib:
	.word	160
	.word	180
	.word	180
	.word	180
	.ascii "\3\0\0\0"
	.byte	3
	.space 3
	.long	322
	.long	321
	.long	320
	.long	323
	.long	320
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_SumoPersonality
	.align 32
_SumoPersonality:
	.long	_SumoBattle
	.long	_SumoOffense
	.long	_SumoBroadcast
	.long	_SumoSurprised
	.long	_SumoEvasive
	.long	_SumoLostTarget
	.long	_SumoCloseRange
	.long	_SumoCloseRange
	.align 4
_SumoCloseRange:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_SumoLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_SumoEvasive:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_SumoSurprised:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	703
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SumoBroadcast:
	.word	2
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	4
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SumoOffense:
	.word	690
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	692
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_SumoBattle:
	.word	690
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	692
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_s_IconFlag
	.align 32
_s_IconFlag:
	.word	2520
	.space 2
	.long	32
	.long	__Z5DoGets
	.space 4
	.word	2521
	.space 2
	.long	32
	.long	__Z5DoGets
	.space 4
	.word	2522
	.space 2
	.long	32
	.long	__Z5DoGets
	.long	_s_IconFlag
	.globl	_s_IconNightVision
	.align 4
_s_IconNightVision:
	.word	3031
	.space 2
	.long	20
	.long	__Z5DoGets
	.long	_s_IconNightVision
	.globl	_s_IconFly
	.align 32
_s_IconFly:
	.word	1782
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1783
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1784
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1785
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1786
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1787
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1788
	.space 2
	.long	20
	.long	__Z5DoGets
	.space 4
	.word	1789
	.space 2
	.long	20
	.long	__Z5DoGets
	.long	_s_IconFly
	.globl	_s_IconCloak
	.align 4
_s_IconCloak:
	.word	1804
	.space 2
	.long	20
	.long	__Z5DoGets
	.long	_s_IconCloak
	.globl	_s_IconHeatCard
	.align 4
_s_IconHeatCard:
	.word	1819
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconHeatCard
	.globl	_s_IconBooster
	.align 4
_s_IconBooster:
	.word	1810
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconBooster
	.globl	_s_IconSmMedkit
	.align 4
_s_IconSmMedkit:
	.word	1802
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconSmMedkit
	.globl	_s_IconCaltrops
	.align 4
_s_IconCaltrops:
	.word	1829
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconCaltrops
	.globl	_s_IconNuke
	.align 4
_s_IconNuke:
	.word	1809
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconNuke
	.globl	_s_IconFlashBomb
	.align 4
_s_IconFlashBomb:
	.word	1805
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconFlashBomb
	.globl	_s_IconChemBomb
	.align 4
_s_IconChemBomb:
	.word	1808
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconChemBomb
	.globl	_s_IconMedkit
	.align 4
_s_IconMedkit:
	.word	1803
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconMedkit
	.globl	_s_IconArmor
	.align 4
_s_IconArmor:
	.word	3030
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconArmor
	.globl	_s_IconSpell
	.align 32
_s_IconSpell:
	.word	1880
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1881
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1882
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1883
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1884
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1885
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1886
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1887
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1888
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1889
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1890
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1891
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1892
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1893
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1894
	.space 2
	.long	8
	.long	__Z5DoGets
	.space 4
	.word	1895
	.space 2
	.long	8
	.long	__Z5DoGets
	.long	_s_IconSpell
	.globl	_s_IconElectro
	.align 32
_s_IconElectro:
	.word	1822
	.space 2
	.long	25
	.long	__Z5DoGets
	.space 4
	.word	1823
	.space 2
	.long	25
	.long	__Z5DoGets
	.long	_s_IconElectro
	.globl	_s_IconRailAmmo
	.align 4
_s_IconRailAmmo:
	.word	1812
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconRailAmmo
	.globl	_s_IconRailGun
	.align 4
_s_IconRailGun:
	.word	1811
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconRailGun
	.globl	_s_IconMicroBattery
	.align 4
_s_IconMicroBattery:
	.word	1800
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconMicroBattery
	.globl	_s_IconMicroGun
	.align 4
_s_IconMicroGun:
	.word	1818
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconMicroGun
	.globl	_s_IconHeartLgAmmo
	.align 32
_s_IconHeartLgAmmo:
	.word	1820
	.space 2
	.long	12
	.long	__Z5DoGets
	.space 4
	.word	1821
	.space 2
	.long	12
	.long	__Z5DoGets
	.long	_s_IconHeartLgAmmo
	.globl	_s_IconHeart
	.align 32
_s_IconHeart:
	.word	1824
	.space 2
	.long	25
	.long	__Z5DoGets
	.space 4
	.word	1825
	.space 2
	.long	25
	.long	__Z5DoGets
	.long	_s_IconHeart
	.globl	_s_IconFireballLgAmmo
	.align 32
_s_IconFireballLgAmmo:
	.word	3035
	.space 2
	.long	12
	.long	__Z5DoGets
	.space 4
	.word	3036
	.space 2
	.long	12
	.long	__Z5DoGets
	.space 4
	.word	3037
	.space 2
	.long	12
	.long	__Z5DoGets
	.long	_s_IconFireballLgAmmo
	.globl	_s_IconGuardHead
	.align 4
_s_IconGuardHead:
	.word	1814
	.space 2
	.long	15
	.long	__Z5DoGets
	.long	_s_IconGuardHead
	.globl	_s_IconLgMine
	.align 4
_s_IconLgMine:
	.word	1842
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconLgMine
	.globl	_s_IconLgGrenade
	.align 4
_s_IconLgGrenade:
	.word	1831
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconLgGrenade
	.globl	_s_IconGrenadeLauncher
	.align 4
_s_IconGrenadeLauncher:
	.word	1817
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconGrenadeLauncher
	.globl	_s_IconAutoRiot
	.align 4
_s_IconAutoRiot:
	.word	1822
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconAutoRiot
	.globl	_s_IconLgShotshell
	.align 4
_s_IconLgShotshell:
	.word	1823
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconLgShotshell
	.globl	_s_IconShotgun
	.align 4
_s_IconShotgun:
	.word	1794
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconShotgun
	.globl	_s_IconLgRocket
	.align 4
_s_IconLgRocket:
	.word	1796
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconLgRocket
	.globl	_s_IconRocket
	.align 4
_s_IconRocket:
	.word	1843
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconRocket
	.globl	_s_IconUziFloor
	.align 4
_s_IconUziFloor:
	.word	1807
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconUziFloor
	.globl	_s_IconLgUziAmmo
	.align 4
_s_IconLgUziAmmo:
	.word	1799
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconLgUziAmmo
	.globl	_s_IconUzi
	.align 4
_s_IconUzi:
	.word	1797
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconUzi
	.globl	_s_IconStar
	.align 4
_s_IconStar:
	.word	1793
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_IconStar
	.align 4
_s_FireFly:
	.word	630
	.space 2
	.long	200
	.long	__Z9DoFireFlys
	.long	_s_FireFly
	.globl	_s_GreenCoin
	.align 32
_s_GreenCoin:
	.word	2460
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2461
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2462
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2463
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2464
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2465
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2466
	.space 2
	.long	6
	.long	__Z6DoCoins
	.space 4
	.word	2467
	.space 2
	.long	6
	.long	__Z6DoCoins
	.long	_s_GreenCoin
	.globl	_s_YellowCoin
	.align 32
_s_YellowCoin:
	.word	2450
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2451
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2452
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2453
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2454
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2455
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2456
	.space 2
	.long	8
	.long	__Z6DoCoins
	.space 4
	.word	2457
	.space 2
	.long	8
	.long	__Z6DoCoins
	.long	_s_YellowCoin
	.globl	_s_RedCoin
	.align 32
_s_RedCoin:
	.word	2440
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2441
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2442
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2443
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2444
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2445
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2446
	.space 2
	.long	10
	.long	__Z6DoCoins
	.space 4
	.word	2447
	.space 2
	.long	10
	.long	__Z6DoCoins
	.long	_s_RedCoin
	.globl	_s_Key
	.align 32
_s_Key:
	.long	_s_RedKey
	.long	_s_BlueKey
	.long	_s_GreenKey
	.long	_s_YellowKey
	.long	_s_RedCard
	.long	_s_BlueCard
	.long	_s_GreenCard
	.long	_s_YellowCard
	.long	_s_GoldSkelKey
	.long	_s_SilverSkelKey
	.long	_s_BronzeSkelKey
	.long	_s_RedSkelKey
	.align 4
_s_YellowCard:
	.word	1779
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_YellowCard
	.align 4
_s_YellowKey:
	.word	1778
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_YellowKey
	.align 4
_s_RedSkelKey:
	.word	1777
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_RedSkelKey
	.align 4
_s_GreenCard:
	.word	1775
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_GreenCard
	.align 4
_s_GreenKey:
	.word	1774
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_GreenKey
	.align 4
_s_BronzeSkelKey:
	.word	1773
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_BronzeSkelKey
	.align 4
_s_RedCard:
	.word	1771
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_RedCard
	.align 4
_s_RedKey:
	.word	1770
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_RedKey
	.align 4
_s_SilverSkelKey:
	.word	1769
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_SilverSkelKey
	.align 4
_s_BlueCard:
	.word	1767
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_BlueCard
	.align 4
_s_BlueKey:
	.word	1766
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_BlueKey
	.align 4
_s_GoldSkelKey:
	.word	1765
	.space 2
	.long	100
	.long	__Z5DoGets
	.long	_s_GoldSkelKey
	.globl	_s_RepairKit
	.align 4
_s_RepairKit:
	.word	1813
	.space 2
	.long	1100
	.long	__Z5DoGets
	.long	_s_RepairKit
	.align 4
_sg_BettyExplode:
	.long	_s_BettyExplode
	.globl	_s_BettyExplode
	.align 32
_s_BettyExplode:
	.word	817
	.space 2
	.long	65536
	.long	__Z12DoDamageTests
	.space 4
	.word	817
	.space 2
	.long	11
	.long	__Z9DoSuicides
	.long	_s_BettyExplode
	.globl	_sg_BettyJump
	.align 4
_sg_BettyJump:
	.long	_s_BettyJump
	.long	_s_BettyJump+16
	.long	_s_BettyJump+32
	.long	_s_BettyJump+48
	.long	_s_BettyJump+64
	.align 32
_s_BettyJump:
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyJumps
	.long	_s_BettyJump
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyJumps
	.long	_s_BettyJump+16
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyJumps
	.long	_s_BettyJump+32
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyJumps
	.long	_s_BettyJump+48
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyJumps
	.long	_s_BettyJump+64
	.globl	_BettyAttrib
	.align 32
_BettyAttrib:
	.word	60
	.word	80
	.word	100
	.word	130
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_sg_BettyWait
	.align 4
_sg_BettyWait:
	.long	_s_BettyWait
	.long	_s_BettyWait+48
	.long	_s_BettyWait+96
	.long	_s_BettyWait+144
	.long	_s_BettyWait+192
	.globl	_s_BettyWait
	.align 32
_s_BettyWait:
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+16
	.word	818
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+32
	.word	819
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+64
	.word	818
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+80
	.word	819
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+48
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+112
	.word	818
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+128
	.word	819
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+96
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+160
	.word	818
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+176
	.word	819
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+144
	.word	817
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+208
	.word	818
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+224
	.word	819
	.space 2
	.long	10
	.long	__Z11DoBettyWaits
	.long	_s_BettyWait+192
	.align 4
_sg_SkullExplode:
	.long	_s_SkullExplode
	.globl	_s_SkullExplode
	.align 32
_s_SkullExplode:
	.word	825
	.space 2
	.long	1
	.long	__Z12NullAnimators
	.space 4
	.word	825
	.space 2
	.long	65536
	.long	__Z12DoDamageTests
	.space 4
	.word	825
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	826
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	827
	.space 2
	.long	65536
	.long	__Z17DoSkullSpawnShraps
	.space 4
	.word	827
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	828
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	829
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	830
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	831
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	832
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	833
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	834
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	835
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	836
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	837
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	838
	.space 2
	.long	11
	.long	__Z12NullAnimators
	.space 4
	.word	838
	.space 2
	.long	11
	.long	__Z9DoSuicides
	.space 4
	.globl	_sg_SkullJump
	.align 4
_sg_SkullJump:
	.long	_s_SkullJump
	.long	_s_SkullJump+16
	.long	_s_SkullJump+32
	.long	_s_SkullJump+48
	.long	_s_SkullJump+64
	.align 32
_s_SkullJump:
	.word	820
	.space 2
	.long	10
	.long	__Z11DoSkullJumps
	.long	_s_SkullJump
	.word	821
	.space 2
	.long	10
	.long	__Z11DoSkullJumps
	.long	_s_SkullJump+16
	.word	822
	.space 2
	.long	10
	.long	__Z11DoSkullJumps
	.long	_s_SkullJump+32
	.word	823
	.space 2
	.long	10
	.long	__Z11DoSkullJumps
	.long	_s_SkullJump+48
	.word	824
	.space 2
	.long	10
	.long	__Z11DoSkullJumps
	.long	_s_SkullJump+64
	.globl	_sg_SkullRing
	.align 4
_sg_SkullRing:
	.long	_s_SkullRing
	.long	_s_SkullRing+16
	.long	_s_SkullRing+32
	.long	_s_SkullRing+48
	.long	_s_SkullRing+64
	.globl	_s_SkullRing
	.align 32
_s_SkullRing:
	.word	820
	.space 2
	.long	10
	.long	__Z10DoSerpRings
	.long	_s_SkullRing
	.word	821
	.space 2
	.long	10
	.long	__Z10DoSerpRings
	.long	_s_SkullRing+16
	.word	822
	.space 2
	.long	10
	.long	__Z10DoSerpRings
	.long	_s_SkullRing+32
	.word	823
	.space 2
	.long	10
	.long	__Z10DoSerpRings
	.long	_s_SkullRing+48
	.word	824
	.space 2
	.long	10
	.long	__Z10DoSerpRings
	.long	_s_SkullRing+64
	.globl	_SkullAttrib
	.align 32
_SkullAttrib:
	.word	60
	.word	80
	.word	100
	.word	130
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	115
	.long	0
	.long	0
	.long	0
	.long	116
	.long	117
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_sg_SkullWait
	.align 4
_sg_SkullWait:
	.long	_s_SkullWait
	.long	_s_SkullWait+16
	.long	_s_SkullWait+32
	.long	_s_SkullWait+48
	.long	_s_SkullWait+64
	.globl	_s_SkullWait
	.align 32
_s_SkullWait:
	.word	820
	.space 2
	.long	10
	.long	__Z11DoSkullWaits
	.long	_s_SkullWait
	.word	821
	.space 2
	.long	10
	.long	__Z11DoSkullWaits
	.long	_s_SkullWait+16
	.word	822
	.space 2
	.long	10
	.long	__Z11DoSkullWaits
	.long	_s_SkullWait+32
	.word	823
	.space 2
	.long	10
	.long	__Z11DoSkullWaits
	.long	_s_SkullWait+48
	.word	824
	.space 2
	.long	10
	.long	__Z11DoSkullWaits
	.long	_s_SkullWait+64
	.globl	_SkelActionSet
	.align 32
_SkelActionSet:
	.long	_sg_SkelStand
	.long	_sg_SkelRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_SkelPain
	.long	_sg_SkelDie
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_SkelSlash
	.space 4
	.word	1024
	.space 2
	.long	_sg_SkelSpell
	.space 20
	.word	1024
	.space 10
	.long	0
	.space 4
	.long	_sg_SkelTeleport
	.long	0
	.align 4
_sg_SkelDie:
	.long	_s_SkelDie
	.globl	_s_SkelDie
	.align 32
_s_SkelDie:
	.word	1320
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	1321
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	1322
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	1323
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	1324
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	1325
	.space 2
	.long	25
	.long	__Z9DoSuicides
	.space 4
	.align 4
_sg_SkelStand:
	.long	_s_SkelStand
	.long	_s_SkelStand+16
	.long	_s_SkelStand+32
	.long	_s_SkelStand+48
	.long	_s_SkelStand+64
	.align 32
_s_SkelStand:
	.word	1367
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelStand
	.word	1373
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelStand+16
	.word	1379
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelStand+32
	.word	1385
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelStand+48
	.word	1391
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelStand+64
	.align 4
_sg_SkelTeleport:
	.long	_s_SkelTeleport
	.long	_s_SkelTeleport
	.long	_s_SkelTeleport
	.long	_s_SkelTeleport
	.long	_s_SkelTeleport
	.globl	_s_SkelTeleport
	.align 32
_s_SkelTeleport:
	.word	1361
	.space 2
	.long	1
	.long	__Z12NullAnimators
	.space 4
	.word	1361
	.space 2
	.long	65536
	.long	__Z18DoSkelInitTeleports
	.space 4
	.word	1361
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1362
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1363
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1364
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1365
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1366
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1366
	.space 2
	.long	65536
	.long	__Z14DoSkelTeleports
	.space 4
	.word	1366
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1365
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1364
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1363
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1362
	.space 2
	.long	20
	.long	__Z12NullAnimators
	.space 4
	.word	1361
	.space 2
	.long	20
	.long	__Z18DoSkelTermTeleports
	.space 4
	.word	1361
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.space 4
	.word	1361
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.space 4
	.align 4
_sg_SkelPain:
	.long	_s_SkelPain
	.long	_s_SkelPain+16
	.long	_s_SkelPain+32
	.long	_s_SkelPain+48
	.long	_s_SkelPain+64
	.align 32
_s_SkelPain:
	.word	1327
	.space 2
	.long	38
	.long	__Z10DoSkelPains
	.long	_s_SkelPain
	.word	1330
	.space 2
	.long	38
	.long	__Z10DoSkelPains
	.long	_s_SkelPain+16
	.word	1333
	.space 2
	.long	38
	.long	__Z10DoSkelPains
	.long	_s_SkelPain+32
	.word	1336
	.space 2
	.long	38
	.long	__Z10DoSkelPains
	.long	_s_SkelPain+48
	.word	1339
	.space 2
	.long	38
	.long	__Z10DoSkelPains
	.long	_s_SkelPain+64
	.align 4
_sg_SkelSpell:
	.long	_s_SkelSpell
	.long	_s_SkelSpell+112
	.long	_s_SkelSpell+224
	.long	_s_SkelSpell+336
	.long	_s_SkelSpell+448
	.align 32
_s_SkelSpell:
	.word	1341
	.space 2
	.long	29
	.long	__Z8NullSkels
	.long	_s_SkelSpell+16
	.word	1342
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+32
	.word	1343
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+48
	.word	1344
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSpell+64
	.word	1344
	.space 2
	.long	65536
	.long	__Z13InitSkelSpells
	.long	_s_SkelSpell+80
	.word	1344
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSpell+96
	.word	1344
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSpell+96
	.word	1345
	.space 2
	.long	29
	.long	__Z8NullSkels
	.long	_s_SkelSpell+128
	.word	1346
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+144
	.word	1347
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+160
	.word	1348
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSpell+176
	.word	1348
	.space 2
	.long	65536
	.long	__Z13InitSkelSpells
	.long	_s_SkelSpell+192
	.word	1348
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSpell+208
	.word	1348
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSpell+208
	.word	1349
	.space 2
	.long	29
	.long	__Z8NullSkels
	.long	_s_SkelSpell+240
	.word	1350
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+256
	.word	1351
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+272
	.word	1352
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSpell+288
	.word	1352
	.space 2
	.long	65536
	.long	__Z13InitSkelSpells
	.long	_s_SkelSpell+304
	.word	1352
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSpell+320
	.word	1352
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSpell+320
	.word	1353
	.space 2
	.long	29
	.long	__Z8NullSkels
	.long	_s_SkelSpell+352
	.word	1354
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+368
	.word	1355
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+384
	.word	1356
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSpell+400
	.word	1356
	.space 2
	.long	65536
	.long	__Z13InitSkelSpells
	.long	_s_SkelSpell+416
	.word	1356
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSpell+432
	.word	1356
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSpell+432
	.word	1357
	.space 2
	.long	29
	.long	__Z8NullSkels
	.long	_s_SkelSpell+464
	.word	1358
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+480
	.word	1359
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSpell+496
	.word	1360
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSpell+512
	.word	1360
	.space 2
	.long	65536
	.long	__Z13InitSkelSpells
	.long	_s_SkelSpell+528
	.word	1360
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSpell+544
	.word	1360
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSpell+544
	.align 4
_sg_SkelSlash:
	.long	_s_SkelSlash
	.long	_s_SkelSlash+112
	.long	_s_SkelSlash+224
	.long	_s_SkelSlash+336
	.long	_s_SkelSlash+448
	.align 32
_s_SkelSlash:
	.word	1326
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+16
	.word	1327
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+32
	.word	1328
	.space 2
	.long	65536
	.long	__Z13InitSkelSlashs
	.long	_s_SkelSlash+48
	.word	1328
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSlash+64
	.word	1327
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+80
	.word	1327
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSlash+96
	.word	1327
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSlash+96
	.word	1329
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+128
	.word	1330
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+144
	.word	1331
	.space 2
	.long	65536
	.long	__Z13InitSkelSlashs
	.long	_s_SkelSlash+160
	.word	1331
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSlash+176
	.word	1330
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+192
	.word	1330
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSlash+208
	.word	1330
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSlash+208
	.word	1332
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+240
	.word	1333
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+256
	.word	1334
	.space 2
	.long	65536
	.long	__Z13InitSkelSlashs
	.long	_s_SkelSlash+272
	.word	1334
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSlash+288
	.word	1333
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+304
	.word	1333
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSlash+320
	.word	1333
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSlash+320
	.word	1335
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+352
	.word	1336
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+368
	.word	1337
	.space 2
	.long	65536
	.long	__Z13InitSkelSlashs
	.long	_s_SkelSlash+384
	.word	1337
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSlash+400
	.word	1336
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+416
	.word	1336
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSlash+432
	.word	1336
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSlash+432
	.word	1338
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+464
	.word	1339
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+480
	.word	1340
	.space 2
	.long	65536
	.long	__Z13InitSkelSlashs
	.long	_s_SkelSlash+496
	.word	1340
	.space 2
	.long	40
	.long	__Z8NullSkels
	.long	_s_SkelSlash+512
	.word	1339
	.space 2
	.long	20
	.long	__Z8NullSkels
	.long	_s_SkelSlash+528
	.word	1339
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SkelSlash+544
	.word	1339
	.space 2
	.long	20
	.long	__Z10DoSkelMoves
	.long	_s_SkelSlash+544
	.globl	_sg_SkelRun
	.align 4
_sg_SkelRun:
	.long	_s_SkelRun
	.long	_s_SkelRun+96
	.long	_s_SkelRun+192
	.long	_s_SkelRun+288
	.long	_s_SkelRun+384
	.globl	_s_SkelRun
	.align 32
_s_SkelRun:
	.word	1367
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+16
	.word	1368
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+32
	.word	1369
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+48
	.word	1370
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+64
	.word	1371
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+80
	.word	1372
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun
	.word	1373
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+112
	.word	1374
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+128
	.word	1375
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+144
	.word	1376
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+160
	.word	1377
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+176
	.word	1378
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+96
	.word	1379
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+208
	.word	1380
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+224
	.word	1381
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+240
	.word	1382
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+256
	.word	1383
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+272
	.word	1384
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+192
	.word	1385
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+304
	.word	1386
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+320
	.word	1387
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+336
	.word	1388
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+352
	.word	1389
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+368
	.word	1390
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+288
	.word	1391
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+400
	.word	1392
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+416
	.word	1393
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+432
	.word	1394
	.space 2
	.long	16
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+448
	.word	1395
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+464
	.word	1396
	.space 2
	.long	12
	.long	__Z10DoSkelMoves
	.long	_s_SkelRun+384
	.globl	_SkelAttrib
	.align 32
_SkelAttrib:
	.word	60
	.word	80
	.word	100
	.word	130
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	108
	.long	109
	.long	0
	.long	110
	.long	111
	.long	112
	.long	113
	.long	114
	.long	0
	.long	0
	.space 4
	.globl	_SkelPersonality
	.align 32
_SkelPersonality:
	.long	_SkelBattle
	.long	_SkelOffense
	.long	_SkelBroadcast
	.long	_SkelSurprised
	.long	_SkelEvasive
	.long	_SkelLostTarget
	.long	_SkelCloseRange
	.long	_SkelCloseRange
	.align 4
_SkelCloseRange:
	.word	800
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.align 4
_SkelLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_SkelEvasive:
	.word	22
	.space 2
	.long	__Z13InitActorDucks
	.word	30
	.space 2
	.long	__Z14InitActorEvades
	.word	1024
	.space 2
	.long	0
	.align 4
_SkelSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SkelBroadcast:
	.word	3
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SkelOffense:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	702
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 32
_SkelBattle:
	.word	600
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	602
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	700
	.space 2
	.long	__Z16InitActorRunAways
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_SerpActionSet
	.align 32
_SerpActionSet:
	.long	_sg_SerpStand
	.long	_sg_SerpRun
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_SerpDie
	.long	0
	.long	_sg_SerpDead
	.long	0
	.long	0
	.long	_sg_SerpSlash
	.space 4
	.word	1024
	.space 2
	.long	_sg_SerpSlash
	.long	_sg_SerpSpell
	.long	_sg_SerpRapidSpell
	.long	_sg_SerpRapidSpell
	.space 8
	.word	256
	.word	724
	.word	900
	.word	1024
	.space 4
	.long	0
	.space 4
	.long	0
	.long	0
	.align 4
_sg_SerpDead:
	.long	_s_SerpDead
	.align 4
_sg_SerpDie:
	.long	_s_SerpDie
	.align 4
_s_SerpDead:
	.word	969
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.long	_s_SerpDead
	.globl	_s_SerpDie
	.align 32
_s_SerpDie:
	.word	960
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	961
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	962
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	963
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	964
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	965
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	966
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	967
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	968
	.space 2
	.long	20
	.long	__Z8NullSerps
	.space 4
	.word	968
	.space 2
	.long	65536
	.long	__Z14DoDeathSpecials
	.space 4
	.word	969
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.space 4
	.align 4
_sg_SerpStand:
	.long	_s_SerpStand
	.long	_s_SerpStand+16
	.long	_s_SerpStand+32
	.long	_s_SerpStand+48
	.long	_s_SerpStand+64
	.align 32
_s_SerpStand:
	.word	1300
	.space 2
	.long	12
	.long	__Z10DoSerpMoves
	.long	_s_SerpStand
	.word	1303
	.space 2
	.long	12
	.long	__Z10DoSerpMoves
	.long	_s_SerpStand+16
	.word	1306
	.space 2
	.long	12
	.long	__Z10DoSerpMoves
	.long	_s_SerpStand+32
	.word	1309
	.space 2
	.long	12
	.long	__Z10DoSerpMoves
	.long	_s_SerpStand+48
	.word	1312
	.space 2
	.long	12
	.long	__Z10DoSerpMoves
	.long	_s_SerpStand+64
	.align 4
_sg_SerpRapidSpell:
	.long	_s_SerpRapidSpell
	.long	_s_SerpRapidSpell+160
	.long	_s_SerpRapidSpell+320
	.long	_s_SerpRapidSpell+480
	.long	_s_SerpRapidSpell+640
	.align 32
_s_SerpRapidSpell:
	.word	999
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+16
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+32
	.word	997
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+48
	.word	997
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+64
	.word	997
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+80
	.word	997
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+96
	.word	997
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+112
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+128
	.word	998
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpRapidSpell+144
	.word	998
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpRapidSpell+144
	.word	1003
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+176
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+192
	.word	1001
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+208
	.word	1001
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+224
	.word	1001
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+240
	.word	1001
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+256
	.word	1001
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+272
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+288
	.word	1002
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpRapidSpell+304
	.word	1002
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpRapidSpell+304
	.word	1007
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+336
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+352
	.word	1005
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+368
	.word	1005
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+384
	.word	1005
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+400
	.word	1005
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+416
	.word	1005
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+432
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+448
	.word	1006
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpRapidSpell+464
	.word	1006
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpRapidSpell+464
	.word	1011
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+496
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+512
	.word	1009
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+528
	.word	1009
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+544
	.word	1009
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+560
	.word	1009
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+576
	.word	1009
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+592
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+608
	.word	1010
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpRapidSpell+624
	.word	1010
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpRapidSpell+624
	.word	1015
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+656
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+672
	.word	1013
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+688
	.word	1013
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+704
	.word	1013
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+720
	.word	1013
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpRapidSpell+736
	.word	1013
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+752
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpRapidSpell+768
	.word	1014
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpRapidSpell+784
	.word	1014
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpRapidSpell+784
	.align 4
_sg_SerpMonstSpell:
	.long	_s_SerpMonstSpell
	.long	_s_SerpMonstSpell+128
	.long	_s_SerpMonstSpell+256
	.long	_s_SerpMonstSpell+384
	.long	_s_SerpMonstSpell+512
	.align 32
_s_SerpMonstSpell:
	.word	999
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+16
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+32
	.word	997
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+48
	.word	997
	.space 2
	.long	65536
	.long	__Z18InitSerpMonstSpells
	.long	_s_SerpMonstSpell+64
	.word	997
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+80
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+96
	.word	998
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpMonstSpell+112
	.word	998
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpMonstSpell+112
	.word	1003
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+144
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+160
	.word	1001
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+176
	.word	1001
	.space 2
	.long	65536
	.long	__Z18InitSerpMonstSpells
	.long	_s_SerpMonstSpell+192
	.word	1001
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+208
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+224
	.word	1002
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpMonstSpell+240
	.word	1002
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpMonstSpell+240
	.word	1007
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+272
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+288
	.word	1005
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+304
	.word	1005
	.space 2
	.long	65536
	.long	__Z18InitSerpMonstSpells
	.long	_s_SerpMonstSpell+320
	.word	1005
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+336
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+352
	.word	1006
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpMonstSpell+368
	.word	1006
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpMonstSpell+368
	.word	1011
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+400
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+416
	.word	1009
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+432
	.word	1009
	.space 2
	.long	65536
	.long	__Z18InitSerpMonstSpells
	.long	_s_SerpMonstSpell+448
	.word	1009
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+464
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+480
	.word	1010
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpMonstSpell+496
	.word	1010
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpMonstSpell+496
	.word	1015
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+528
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+544
	.word	1013
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+560
	.word	1013
	.space 2
	.long	65536
	.long	__Z18InitSerpMonstSpells
	.long	_s_SerpMonstSpell+576
	.word	1013
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+592
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpMonstSpell+608
	.word	1014
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpMonstSpell+624
	.word	1014
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpMonstSpell+624
	.align 4
_sg_SerpSpell:
	.long	_s_SerpSpell
	.long	_s_SerpSpell+128
	.long	_s_SerpSpell+256
	.long	_s_SerpSpell+384
	.long	_s_SerpSpell+512
	.align 32
_s_SerpSpell:
	.word	999
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+16
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+32
	.word	997
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+48
	.word	997
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpSpell+64
	.word	997
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+80
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+96
	.word	998
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSpell+112
	.word	998
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSpell+112
	.word	1003
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+144
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+160
	.word	1001
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+176
	.word	1001
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpSpell+192
	.word	1001
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+208
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+224
	.word	1002
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSpell+240
	.word	1002
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSpell+240
	.word	1007
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+272
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+288
	.word	1005
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+304
	.word	1005
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpSpell+320
	.word	1005
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+336
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+352
	.word	1006
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSpell+368
	.word	1006
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSpell+368
	.word	1011
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+400
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+416
	.word	1009
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+432
	.word	1009
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpSpell+448
	.word	1009
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+464
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+480
	.word	1010
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSpell+496
	.word	1010
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSpell+496
	.word	1015
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+528
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+544
	.word	1013
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSpell+560
	.word	1013
	.space 2
	.long	65536
	.long	__Z13InitSerpSpells
	.long	_s_SerpSpell+576
	.word	1013
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+592
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSpell+608
	.word	1014
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSpell+624
	.word	1014
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSpell+624
	.globl	_sg_SerpSkullSpell
	.align 4
_sg_SerpSkullSpell:
	.long	_s_SerpSkullSpell
	.long	_s_SerpSkullSpell+128
	.long	_s_SerpSkullSpell+256
	.long	_s_SerpSkullSpell+384
	.long	_s_SerpSkullSpell+512
	.align 32
_s_SerpSkullSpell:
	.word	999
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+16
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+32
	.word	997
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+48
	.word	997
	.space 2
	.long	65536
	.long	__Z12InitSerpRings
	.long	_s_SerpSkullSpell+64
	.word	997
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+80
	.word	998
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+96
	.word	998
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSkullSpell+112
	.word	998
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSkullSpell+112
	.word	1003
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+144
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+160
	.word	1001
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+176
	.word	1001
	.space 2
	.long	65536
	.long	__Z12InitSerpRings
	.long	_s_SerpSkullSpell+192
	.word	1001
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+208
	.word	1002
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+224
	.word	1002
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSkullSpell+240
	.word	1002
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSkullSpell+240
	.word	1007
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+272
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+288
	.word	1005
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+304
	.word	1005
	.space 2
	.long	65536
	.long	__Z12InitSerpRings
	.long	_s_SerpSkullSpell+320
	.word	1005
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+336
	.word	1006
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+352
	.word	1006
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSkullSpell+368
	.word	1006
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSkullSpell+368
	.word	1011
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+400
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+416
	.word	1009
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+432
	.word	1009
	.space 2
	.long	65536
	.long	__Z12InitSerpRings
	.long	_s_SerpSkullSpell+448
	.word	1009
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+464
	.word	1010
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+480
	.word	1010
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSkullSpell+496
	.word	1010
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSkullSpell+496
	.word	1015
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+528
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+544
	.word	1013
	.space 2
	.long	36
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+560
	.word	1013
	.space 2
	.long	65536
	.long	__Z12InitSerpRings
	.long	_s_SerpSkullSpell+576
	.word	1013
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+592
	.word	1014
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSkullSpell+608
	.word	1014
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSkullSpell+624
	.word	1014
	.space 2
	.long	18
	.long	__Z10DoSerpMoves
	.long	_s_SerpSkullSpell+624
	.align 4
_sg_SerpSlash:
	.long	_s_SerpSlash
	.long	_s_SerpSlash+160
	.long	_s_SerpSlash+320
	.long	_s_SerpSlash+480
	.long	_s_SerpSlash+640
	.align 32
_s_SerpSlash:
	.word	974
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+16
	.word	973
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+32
	.word	972
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSlash+48
	.word	973
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+64
	.word	974
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+80
	.word	975
	.space 2
	.long	65536
	.long	__Z13InitSerpSlashs
	.long	_s_SerpSlash+96
	.word	975
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+112
	.word	976
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+128
	.word	976
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSlash+144
	.word	976
	.space 2
	.long	9
	.long	__Z10DoSerpMoves
	.long	_s_SerpSlash+144
	.word	979
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+176
	.word	978
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+192
	.word	977
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSlash+208
	.word	978
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+224
	.word	979
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+240
	.word	980
	.space 2
	.long	65536
	.long	__Z13InitSerpSlashs
	.long	_s_SerpSlash+256
	.word	980
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+272
	.word	981
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+288
	.word	981
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSlash+304
	.word	981
	.space 2
	.long	9
	.long	__Z10DoSerpMoves
	.long	_s_SerpSlash+304
	.word	984
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+336
	.word	983
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+352
	.word	982
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSlash+368
	.word	983
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+384
	.word	984
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+400
	.word	985
	.space 2
	.long	65536
	.long	__Z13InitSerpSlashs
	.long	_s_SerpSlash+416
	.word	985
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+432
	.word	986
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+448
	.word	986
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSlash+464
	.word	986
	.space 2
	.long	9
	.long	__Z10DoSerpMoves
	.long	_s_SerpSlash+464
	.word	989
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+496
	.word	988
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+512
	.word	987
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSlash+528
	.word	988
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+544
	.word	989
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+560
	.word	990
	.space 2
	.long	65536
	.long	__Z13InitSerpSlashs
	.long	_s_SerpSlash+576
	.word	990
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+592
	.word	991
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+608
	.word	991
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSlash+624
	.word	991
	.space 2
	.long	9
	.long	__Z10DoSerpMoves
	.long	_s_SerpSlash+624
	.word	994
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+656
	.word	993
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+672
	.word	992
	.space 2
	.long	18
	.long	__Z8NullSerps
	.long	_s_SerpSlash+688
	.word	993
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+704
	.word	994
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+720
	.word	995
	.space 2
	.long	65536
	.long	__Z13InitSerpSlashs
	.long	_s_SerpSlash+736
	.word	995
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+752
	.word	996
	.space 2
	.long	9
	.long	__Z8NullSerps
	.long	_s_SerpSlash+768
	.word	996
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SerpSlash+784
	.word	996
	.space 2
	.long	9
	.long	__Z10DoSerpMoves
	.long	_s_SerpSlash+784
	.globl	_sg_SerpRun
	.align 4
_sg_SerpRun:
	.long	_s_SerpRun
	.long	_s_SerpRun+64
	.long	_s_SerpRun+128
	.long	_s_SerpRun+192
	.long	_s_SerpRun+256
	.globl	_s_SerpRun
	.align 32
_s_SerpRun:
	.word	1300
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+16
	.word	1301
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+32
	.word	1302
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+48
	.word	1301
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun
	.word	1303
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+80
	.word	1304
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+96
	.word	1305
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+112
	.word	1304
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+64
	.word	1306
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+144
	.word	1307
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+160
	.word	1308
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+176
	.word	1307
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+128
	.word	1309
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+208
	.word	1310
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+224
	.word	1311
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+240
	.word	1310
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+192
	.word	1312
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+272
	.word	1313
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+288
	.word	1314
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+304
	.word	1313
	.space 2
	.long	24
	.long	__Z10DoSerpMoves
	.long	_s_SerpRun+256
	.align 32
_SerpPissedAttrib:
	.word	200
	.word	220
	.word	240
	.word	270
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	123
	.long	124
	.long	128
	.long	125
	.long	126
	.long	129
	.long	130
	.long	131
	.long	127
	.long	0
	.space 4
	.globl	_SerpAttrib
	.align 32
_SerpAttrib:
	.word	200
	.word	220
	.word	240
	.word	270
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	123
	.long	124
	.long	128
	.long	125
	.long	126
	.long	129
	.long	130
	.long	131
	.long	127
	.long	0
	.space 4
	.globl	_SerpPersonality
	.align 32
_SerpPersonality:
	.long	_SerpBattle
	.long	_SerpOffense
	.long	_SerpBroadcast
	.long	_SerpSurprised
	.long	_SerpEvasive
	.long	_SerpLostTarget
	.long	_SerpCloseRange
	.long	_SerpCloseRange
	.align 4
_SerpCloseRange:
	.word	700
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.align 4
_SerpLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	921
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_SerpEvasive:
	.word	10
	.space 2
	.long	__Z14InitActorEvades
	.word	1024
	.space 2
	.long	0
	.align 4
_SerpSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SerpBroadcast:
	.word	10
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_SerpOffense:
	.word	775
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	800
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 32
_SerpBattle:
	.word	670
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	700
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	710
	.space 2
	.long	__Z16InitActorRunAways
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_sg_PlayerNinjaThrow:
	.long	_s_PlayerNinjaThrow
	.long	_s_PlayerNinjaThrow+64
	.long	_s_PlayerNinjaThrow+128
	.long	_s_PlayerNinjaThrow+192
	.long	_s_PlayerNinjaThrow+256
	.align 32
_s_PlayerNinjaThrow:
	.word	1069
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+16
	.word	1069
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+32
	.word	1069
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+48
	.word	1069
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaThrow+48
	.word	1071
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+80
	.word	1071
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+96
	.word	1071
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+112
	.word	1071
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaThrow+48
	.word	1072
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+144
	.word	1072
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+160
	.word	1072
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+176
	.word	1072
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaThrow+48
	.word	1073
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+208
	.word	1073
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+224
	.word	1073
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+240
	.word	1073
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaThrow+48
	.word	1070
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+272
	.word	1070
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+288
	.word	1070
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaThrow+304
	.word	1070
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaThrow+48
	.align 4
_ps_PanelKeyYellow:
	.word	2395
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelKeyYellow
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_PanelKeyBlue:
	.word	2394
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelKeyBlue
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_PanelKeyGreen:
	.word	2393
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelKeyGreen
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_PanelKeyRed:
	.word	2392
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelKeyRed
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_PanelEnvironSuit:
	.word	2397
	.space 2
	.long	10
	.long	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct
	.long	_ps_PanelEnvironSuit
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_Fist3Swing
	.align 32
_ps_Fist3Swing:
	.word	4061
	.space 2
	.long	31
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4062
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	16
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	19
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	8
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4062
	.space 2
	.long	26
	.long	__Z11pFistSlideRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	25165824
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	19
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	8
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4063
	.space 2
	.long	8
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_Fist2Swing
	.align 32
_ps_Fist2Swing:
	.word	4058
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4058
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4058
	.space 2
	.long	0
	.long	__Z10pFistBlockP18PANEL_SPRITEstruct
	.long	_ps_Fist2Swing
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	4058
	.space 2
	.long	21
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4058
	.space 2
	.long	2
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_Fist2Hide:
	.word	4050
	.space 2
	.long	16
	.long	__Z9pFistHideP18PANEL_SPRITEstruct
	.long	_ps_Fist2Hide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroNukeFlash
	.align 32
_ps_MicroNukeFlash:
	.word	2076
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2076
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2076
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2076
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2076
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroHeatFlash
	.align 32
_ps_MicroHeatFlash:
	.word	2084
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2084
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2084
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2084
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2084
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_OnFire
	.align 32
_ps_OnFire:
	.word	3157
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3158
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3159
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3160
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3161
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3162
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3163
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3164
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3165
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3166
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3167
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3168
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	3169
	.space 2
	.long	10
	.long	__Z7pOnFireP18PANEL_SPRITEstruct
	.long	_ps_OnFire
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadTurnNapalm
	.align 32
_ps_HotheadTurnNapalm:
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	48
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_HotheadRestNapalm
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadTurnRing
	.align 32
_ps_HotheadTurnRing:
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2318
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_HotheadRestRing
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadTurn
	.align 32
_ps_HotheadTurn:
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2318
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2318
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2317
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2316
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2315
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2314
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_HotheadRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RailRecoil
	.align 32
_ps_RailRecoil:
	.word	2010
	.space 2
	.long	24
	.long	__Z15pRailRecoilDownP18PANEL_SPRITEstruct
	.long	_ps_RailRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2010
	.space 2
	.long	24
	.long	__Z13pRailRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2010
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_RailRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunFlash
	.align 32
_ps_ShotgunFlash:
	.word	2078
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2078
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2078
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2078
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2078
	.space 2
	.long	30
	.long	0
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	0
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunShell
	.align 32
_ps_ShotgunShell:
	.word	2180
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2181
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2182
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2183
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2184
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2185
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2186
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2186
	.space 2
	.long	7
	.long	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.long	_ps_ShotgunShell
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_Uzi2Shell
	.align 32
_ps_Uzi2Shell:
	.word	2152
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2153
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2154
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2155
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2156
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2157
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.long	_ps_Uzi2Shell
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziShell
	.align 32
_ps_UziShell:
	.word	2152
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2153
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2154
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2155
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2156
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2157
	.space 2
	.long	10
	.long	__Z9pUziShellP18PANEL_SPRITEstruct
	.long	_ps_UziShell
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_Uzi2Null:
	.word	2004
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_Uzi2Null
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_Uzi2Suicide:
	.word	2004
	.space 2
	.long	6
	.long	__Z8pSuicideP18PANEL_SPRITEstruct
	.long	_ps_Uzi2Suicide
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.align 4
_ps_UziNull:
	.word	2004
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_UziNull
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 4
_sg_NinjaDieSliced:
	.long	_s_NinjaDieSliced
	.align 4
_sg_NinjaCeiling:
	.long	_s_NinjaCeiling
	.long	_s_NinjaCeiling+16
	.long	_s_NinjaCeiling+32
	.long	_s_NinjaCeiling+48
	.long	_s_NinjaCeiling+64
	.align 32
_DefaultAttrib:
	.word	60
	.word	80
	.word	100
	.word	130
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	0
	.long	0
	.long	0
	.space 32
	.align 32
_s_PruneGirlPain:
	.word	4604
	.space 2
	.long	32
	.long	__Z13PruneGirlPains
	.long	_s_PruneGirlPain+16
	.word	4604
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_PruneGirlPain
	.align 32
_s_SailorGirlPain:
	.word	4600
	.space 2
	.long	32
	.long	__Z14SailorGirlPains
	.long	_s_SailorGirlPain+16
	.word	4600
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_SailorGirlPain
	.align 32
_s_MechanicGirlPain:
	.word	4590
	.space 2
	.long	32
	.long	__Z16MechanicGirlPains
	.long	_s_MechanicGirlPain+16
	.word	4590
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_MechanicGirlPain
	.align 32
_s_CarGirlPain:
	.word	4594
	.space 2
	.long	32
	.long	__Z11CarGirlPains
	.long	_s_CarGirlPain+16
	.word	4594
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CarGirlPain
	.globl	_s_Pachinko4Operate
	.align 32
_s_Pachinko4Operate:
	.word	4840
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4841
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4842
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4843
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4844
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4845
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4846
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4847
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4848
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4849
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4850
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4851
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4852
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4853
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4854
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4855
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4856
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4857
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4858
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4859
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4860
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4861
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4862
	.space 2
	.long	65536
	.long	__Z16PachinkoCheckWins
	.long	_s_Pachinko4Stand
	.globl	_s_Pachinko3Operate
	.align 32
_s_Pachinko3Operate:
	.word	4816
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4817
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4818
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4819
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4820
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4821
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4822
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4823
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4824
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4825
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4826
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4827
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4828
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4829
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4830
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4831
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4832
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4833
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4834
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4835
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4836
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4837
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4838
	.space 2
	.long	65536
	.long	__Z16PachinkoCheckWins
	.long	_s_Pachinko3Stand
	.globl	_s_Pachinko2Operate
	.align 32
_s_Pachinko2Operate:
	.word	4792
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4793
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4794
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4795
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4796
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4797
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4798
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4799
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4800
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4801
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4802
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4803
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4804
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4805
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4806
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4807
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4808
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4809
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4810
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4811
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4812
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4813
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4814
	.space 2
	.long	65536
	.long	__Z16PachinkoCheckWins
	.long	_s_Pachinko2Stand
	.globl	_s_Pachinko1Operate
	.align 32
_s_Pachinko1Operate:
	.word	4768
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4769
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4770
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4771
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4772
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4773
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4774
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4775
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4776
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4777
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4778
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4779
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4780
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4781
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4782
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4783
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4784
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4785
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4786
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4787
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4788
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4789
	.space 2
	.long	12
	.long	__Z16Pachinko1Operates
	.space 4
	.word	4790
	.space 2
	.long	65536
	.long	__Z16PachinkoCheckWins
	.long	_s_Pachinko1Stand
	.globl	_s_TrashCanPain
	.align 32
_s_TrashCanPain:
	.word	2540
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+16
	.word	2541
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+32
	.word	2542
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+48
	.word	2543
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+64
	.word	2544
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+80
	.word	2545
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain+96
	.word	2546
	.space 2
	.long	8
	.long	__Z12TrashCanPains
	.long	_s_TrashCanPain
	.align 32
_s_WashGirlPain:
	.word	5032
	.space 2
	.long	30
	.long	__Z12WashGirlPains
	.long	_s_WashGirlPain+16
	.word	5032
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_WashGirlPain
	.align 32
_s_ToiletGirlPain:
	.word	5023
	.space 2
	.long	32
	.long	__Z14ToiletGirlPains
	.long	_s_ToiletGirlPain+16
	.word	5023
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_ToiletGirlPain
	.align 32
_LavaPissedAttrib:
	.word	200
	.word	220
	.word	240
	.word	270
	.ascii "\3\0\376\375"
	.byte	3
	.space 3
	.long	132
	.long	135
	.long	137
	.long	139
	.long	141
	.long	133
	.long	134
	.long	136
	.long	138
	.long	140
	.space 4
	.globl	_s_Flag
	.align 32
_s_Flag:
	.word	2520
	.space 2
	.long	16
	.long	__Z6DoFlags
	.space 4
	.word	2521
	.space 2
	.long	16
	.long	__Z6DoFlags
	.space 4
	.word	2522
	.space 2
	.long	16
	.long	__Z6DoFlags
	.long	_s_Flag
	.globl	_s_NukeMushroom
	.align 32
_s_NukeMushroom:
	.word	3280
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3281
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3282
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3283
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3284
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3285
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3286
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3287
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3288
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3289
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3290
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3291
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3292
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3293
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3294
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3295
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3296
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3297
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3298
	.space 2
	.long	25
	.long	__Z12NullAnimators
	.space 4
	.word	3299
	.space 2
	.long	100
	.long	__Z9DoSuicides
	.long	_s_NukeMushroom
	.align 4
_sg_CoolgBirth:
	.long	_s_CoolgBirth
	.align 4
_sg_CoolgClub:
	.long	_s_CoolgClub
	.long	_s_CoolgClub+96
	.long	_s_CoolgClub+192
	.long	_s_CoolgClub+288
	.long	_s_CoolgClub+384
	.align 32
_s_CoolgClub:
	.word	1451
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+16
	.word	4277
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+32
	.word	1452
	.space 2
	.long	65536
	.long	__Z13InitCoolgBashs
	.long	_s_CoolgClub+48
	.word	1452
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+64
	.word	1452
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgClub+80
	.word	1452
	.space 2
	.long	16
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgClub+80
	.word	1453
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+112
	.word	4281
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+128
	.word	1454
	.space 2
	.long	65536
	.long	__Z13InitCoolgBashs
	.long	_s_CoolgClub+144
	.word	1454
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+160
	.word	1454
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgClub+176
	.word	1454
	.space 2
	.long	16
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgClub+176
	.word	1455
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+208
	.word	4285
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+224
	.word	1456
	.space 2
	.long	65536
	.long	__Z13InitCoolgBashs
	.long	_s_CoolgClub+240
	.word	1456
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+256
	.word	1456
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgClub+272
	.word	1456
	.space 2
	.long	16
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgClub+272
	.word	1457
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+304
	.word	4289
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+320
	.word	1458
	.space 2
	.long	65536
	.long	__Z13InitCoolgBashs
	.long	_s_CoolgClub+336
	.word	1458
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+352
	.word	1458
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgClub+368
	.word	1458
	.space 2
	.long	16
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgClub+368
	.word	1459
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+400
	.word	4293
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+416
	.word	1460
	.space 2
	.long	65536
	.long	__Z13InitCoolgBashs
	.long	_s_CoolgClub+432
	.word	1460
	.space 2
	.long	16
	.long	__Z9NullCoolgs
	.long	_s_CoolgClub+448
	.word	1460
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_CoolgClub+464
	.word	1460
	.space 2
	.long	16
	.long	__Z11DoCoolgMoves
	.long	_s_CoolgClub+464
	.align 4
_sg_BunnyJumpAttack:
	.long	_s_BunnyJumpAttack
	.long	_s_BunnyJumpAttack+96
	.long	_s_BunnyJumpAttack+192
	.long	_s_BunnyJumpAttack+288
	.long	_s_BunnyJumpAttack+384
	.align 32
_s_BunnyJumpAttack:
	.word	4551
	.space 2
	.long	35
	.long	__Z9NullBunnys
	.long	_s_BunnyJumpAttack+16
	.word	4551
	.space 2
	.long	65536
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	_s_BunnyJumpAttack+32
	.word	4552
	.space 2
	.long	35
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJumpAttack+32
	.space 48
	.word	4556
	.space 2
	.long	35
	.long	__Z9NullBunnys
	.long	_s_BunnyJumpAttack+112
	.word	4556
	.space 2
	.long	65536
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	_s_BunnyJumpAttack+128
	.word	4557
	.space 2
	.long	35
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJumpAttack+128
	.space 48
	.word	4561
	.space 2
	.long	35
	.long	__Z9NullBunnys
	.long	_s_BunnyJumpAttack+208
	.word	4561
	.space 2
	.long	65536
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	_s_BunnyJumpAttack+224
	.word	4562
	.space 2
	.long	35
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJumpAttack+224
	.space 48
	.word	4566
	.space 2
	.long	35
	.long	__Z9NullBunnys
	.long	_s_BunnyJumpAttack+304
	.word	4566
	.space 2
	.long	65536
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	_s_BunnyJumpAttack+320
	.word	4567
	.space 2
	.long	35
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJumpAttack+320
	.space 48
	.word	4571
	.space 2
	.long	35
	.long	__Z9NullBunnys
	.long	_s_BunnyJumpAttack+400
	.word	4571
	.space 2
	.long	65536
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	_s_BunnyJumpAttack+416
	.word	4572
	.space 2
	.long	35
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJumpAttack+416
	.space 48
	.align 32
__ZL20saveable_sector_code:
	.long	__Z17WallSetupDontMovev
	.long	__Z9WallSetupv
	.long	__Z15SectorLiquidSets
	.long	__Z11SectorSetupv
	.long	__Z13DoSpringBoardP12PLAYERstruct
	.long	__Z17DoSpringBoardDownv
	.long	__Z19DoSpawnActorTriggers
	.long	__Z13OperateSectorss
	.long	__Z11OperateWallss
	.long	__Z13AnimateSwitchP12spritetypev7s
	.long	__Z9SectorExpsssi
	.long	__Z15DoExplodeSectors
	.long	__Z11DoSpawnSpots
	.long	__Z19DoSpawnSpotsForKills
	.long	__Z21DoSpawnSpotsForDamages
	.long	__Z16DoSoundSpotMatchsss
	.long	__Z20DoSoundSpotStopSounds
	.long	__Z20DoStopSoundSpotMatchs
	.long	__Z23DoSectorObjectKillMatchs
	.long	__Z19DoDeleteSpriteMatchs
	.long	__Z14DoChangorMatchs
	.long	__Z17DoMatchEverythingP12PLAYERstructss
	.long	__Z11DoTrapResets
	.long	__Z11DoTrapMatchs
	.long	__Z18OperateTripTriggerP12PLAYERstruct
	.long	__Z24OperateContinuousTriggerP12PLAYERstruct
	.long	__Z22PlayerTakeSectorDamageP12PLAYERstruct
	.long	__Z10NearThingsP12PLAYERstruct
	.long	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	.long	__Z16BuildNearTagListP13NEAR_TAG_INFOiP12PLAYERstructiiii
	.long	__Z16DoPlayerGrabStarP12PLAYERstruct
	.long	__Z16PlayerOperateEnvP12PLAYERstruct
	.long	__Z15DoSineWaveFloorv
	.long	__Z14DoSineWaveWallv
	.long	__Z6DoAnimi
	.long	__Z9AnimClearv
	.long	__Z11AnimGetGoalPi
	.long	__Z10AnimDeletePi
	.long	__Z7AnimSetPiii
	.long	__Z15AnimSetCallbacksPFvP10ANIMstructPvES1_
	.long	__Z13AnimSetVelAdjss
	.long	__Z9DoPanningv
	.long	__Z8DoSectorv
	.align 32
__ZL20saveable_zombie_data:
	.long	_ZombieBattle
	.long	16
	.long	_ZombieOffense
	.long	16
	.long	_ZombieBroadcast
	.long	16
	.long	_ZombieSurprised
	.long	16
	.long	_ZombieEvasive
	.long	16
	.long	_ZombieLostTarget
	.long	16
	.long	_ZombieCloseRange
	.long	16
	.long	_ZombiePersonality
	.long	32
	.long	_ZombieAttrib
	.long	60
	.long	_s_ZombieRun
	.long	320
	.long	_sg_ZombieRun
	.long	20
	.long	_s_ZombieStand
	.long	80
	.long	_sg_ZombieStand
	.long	20
	.long	_s_ZombiePain
	.long	160
	.long	_sg_ZombiePain
	.long	20
	.long	_s_ZombieNuke
	.long	480
	.long	_sg_ZombieNuke
	.long	20
	.long	_s_ZombieRocket
	.long	400
	.long	_sg_ZombieRocket
	.long	20
	.long	_s_ZombieRail
	.long	400
	.long	_sg_ZombieRail
	.long	20
	.long	_s_ZombieGrenade
	.long	400
	.long	_sg_ZombieGrenade
	.long	20
	.long	_s_ZombieFlashBomb
	.long	400
	.long	_sg_ZombieFlashBomb
	.long	20
	.long	_s_ZombieUzi
	.long	1360
	.long	_sg_ZombieUzi
	.long	20
	.long	_s_ZombieFall
	.long	80
	.long	_sg_ZombieFall
	.long	20
	.long	_ZombieActionSet
	.long	132
	.align 4
__ZL20saveable_zombie_code:
	.long	__Z11SetupZombies
	.long	__Z11SpawnZombieP12PLAYERstructs
	.long	__Z12SpawnZombie2s
	.long	__Z12DoZombieMoves
	.long	__Z10NullZombies
	.long	__Z12DoZombiePains
	.align 32
__ZL19saveable_zilla_data:
	.long	_ZillaBattle
	.long	32
	.long	_ZillaOffense
	.long	32
	.long	_ZillaBroadcast
	.long	24
	.long	_ZillaSurprised
	.long	24
	.long	_ZillaEvasive
	.long	8
	.long	_ZillaLostTarget
	.long	16
	.long	_ZillaCloseRange
	.long	8
	.long	_ZillaPersonality
	.long	32
	.long	_ZillaAttrib
	.long	60
	.long	_s_ZillaRun
	.long	480
	.long	_sg_ZillaRun
	.long	20
	.long	_s_ZillaStand
	.long	80
	.long	_sg_ZillaStand
	.long	20
	.long	_s_ZillaPain
	.long	160
	.long	_sg_ZillaPain
	.long	20
	.long	_s_ZillaRail
	.long	1120
	.long	_sg_ZillaRail
	.long	20
	.long	_s_ZillaRocket
	.long	560
	.long	_sg_ZillaRocket
	.long	20
	.long	_s_ZillaUzi
	.long	1360
	.long	_sg_ZillaUzi
	.long	20
	.long	_s_ZillaDie
	.long	144
	.long	_sg_ZillaDie
	.long	4
	.long	_s_ZillaDead
	.long	16
	.long	_sg_ZillaDead
	.long	4
	.long	_ZillaActionSet
	.long	132
	.align 4
__ZL19saveable_zilla_code:
	.long	__Z10SetupZillas
	.long	__Z9NullZillas
	.long	__Z11DoZillaMoves
	.long	__Z12DoZillaStomps
	.long	__Z16DoZillaDeathMelts
	.align 32
__ZL20saveable_weapon_data:
	.long	_s_NotRestored
	.long	16
	.long	_s_Suicide
	.long	16
	.long	_s_DeadLoWang
	.long	16
	.long	_s_BreakLight
	.long	96
	.long	_s_BreakBarrel
	.long	96
	.long	_s_BreakPedistal
	.long	64
	.long	_s_BreakBottle1
	.long	96
	.long	_s_BreakBottle2
	.long	96
	.long	_s_Puff
	.long	112
	.long	_s_RailPuff
	.long	816
	.long	_sg_RailPuff
	.long	20
	.long	_s_LaserPuff
	.long	32
	.long	_s_Tracer
	.long	96
	.long	_s_EMP
	.long	48
	.long	_s_EMPBurst
	.long	48
	.long	_s_EMPShrap
	.long	48
	.long	_s_TankShell
	.long	16
	.long	_s_VehicleSmoke
	.long	112
	.long	_s_WaterSmoke
	.long	112
	.long	_s_UziSmoke
	.long	80
	.long	_s_ShotgunSmoke
	.long	80
	.long	_s_UziBullet
	.long	16
	.long	_s_UziSpark
	.long	96
	.long	_s_UziPowerSpark
	.long	96
	.long	_s_Bubble
	.long	16
	.long	_s_Splash
	.long	96
	.long	_s_CrossBolt
	.long	80
	.long	_sg_CrossBolt
	.long	20
	.long	_s_Star
	.long	64
	.long	_s_StarStuck
	.long	16
	.long	_s_StarDown
	.long	64
	.long	_s_StarDownStuck
	.long	16
	.long	_s_LavaBoulder
	.long	128
	.long	_s_LavaShard
	.long	128
	.long	_s_VulcanBoulder
	.long	128
	.long	_s_Grenade
	.long	80
	.long	_s_Grenade
	.long	80
	.long	_sg_Grenade
	.long	20
	.long	_s_MineStuck
	.long	16
	.long	_s_Mine
	.long	32
	.long	_s_MineSpark
	.long	96
	.long	_s_Meteor
	.long	320
	.long	_sg_Meteor
	.long	20
	.long	_s_MeteorExp
	.long	112
	.long	_s_MirvMeteor
	.long	320
	.long	_sg_MirvMeteor
	.long	20
	.long	_s_MirvMeteorExp
	.long	112
	.long	_s_SerpMeteor
	.long	320
	.long	_sg_SerpMeteor
	.long	20
	.long	_s_SerpMeteorExp
	.long	112
	.long	_s_Spear
	.long	80
	.long	_sg_Spear
	.long	20
	.long	_s_Rocket
	.long	80
	.long	_sg_Rocket
	.long	20
	.long	_s_BunnyRocket
	.long	80
	.long	_sg_BunnyRocket
	.long	20
	.long	_s_Rail
	.long	80
	.long	_sg_Rail
	.long	20
	.long	_s_Laser
	.long	16
	.long	_s_Micro
	.long	80
	.long	_sg_Micro
	.long	20
	.long	_s_MicroMini
	.long	80
	.long	_sg_MicroMini
	.long	20
	.long	_s_BoltThinMan
	.long	80
	.long	_sg_BoltThinMan
	.long	20
	.long	_s_BoltSeeker
	.long	80
	.long	_sg_BoltSeeker
	.long	20
	.long	_s_BoltFatMan
	.long	64
	.long	_s_BoltShrapnel
	.long	64
	.long	_s_CoolgFire
	.long	64
	.long	_s_CoolgFireDone
	.long	96
	.long	_s_CoolgDrip
	.long	16
	.long	_s_GoreFloorSplash
	.long	112
	.long	_s_GoreSplash
	.long	112
	.long	_s_Plasma
	.long	48
	.long	_s_PlasmaFountain
	.long	64
	.long	_s_PlasmaDrip
	.long	112
	.long	_s_PlasmaDone
	.long	48
	.long	_s_TeleportEffect
	.long	304
	.long	_s_TeleportEffect2
	.long	320
	.long	_s_Electro
	.long	64
	.long	_s_ElectroShrap
	.long	64
	.long	_s_GrenadeExp
	.long	416
	.long	_s_GrenadeSmallExp
	.long	368
	.long	_s_GrenadeExp
	.long	416
	.long	_s_MineExp
	.long	400
	.long	_s_BasicExp
	.long	336
	.long	_s_MicroExp
	.long	368
	.long	_s_BigGunFlame
	.long	128
	.long	_s_BoltExp
	.long	400
	.long	_s_TankShellExp
	.long	400
	.long	_s_TracerExp
	.long	400
	.long	_s_SectorExp
	.long	400
	.long	_s_FireballExp
	.long	96
	.long	_s_NapExp
	.long	384
	.long	_s_FireballFlames
	.long	224
	.long	_s_BreakFlames
	.long	224
	.long	_s_Fireball
	.long	64
	.long	_s_Fireball
	.long	64
	.long	_s_Ring
	.long	64
	.long	_s_Ring
	.long	64
	.long	_s_Ring2
	.long	64
	.long	_s_Napalm
	.long	64
	.long	_s_BloodWorm
	.long	96
	.long	_s_BloodWorm
	.long	96
	.long	_s_PlasmaExp
	.long	208
	.long	_s_PlasmaExp
	.long	208
	.long	_s_Mirv
	.long	64
	.long	_s_MirvMissile
	.long	64
	.long	_s_Vomit1
	.long	16
	.long	_s_Vomit2
	.long	16
	.long	_s_VomitSplash
	.long	16
	.long	_s_GoreHead
	.long	192
	.long	_s_GoreLeg
	.long	48
	.long	_s_GoreEye
	.long	64
	.long	_s_GoreTorso
	.long	128
	.long	_s_GoreArm
	.long	192
	.long	_s_GoreLung
	.long	192
	.long	_s_GoreLiver
	.long	192
	.long	_s_GoreSkullCap
	.long	192
	.long	_s_GoreChunkS
	.long	64
	.long	_s_GoreDrip
	.long	64
	.long	_s_FastGoreDrip
	.long	64
	.long	_s_GoreFlame
	.long	128
	.long	_s_TracerShrap
	.long	128
	.long	_s_UziShellShrap
	.long	96
	.long	_s_UziShellShrapStill1
	.long	16
	.long	_s_UziShellShrapStill2
	.long	16
	.long	_s_UziShellShrapStill3
	.long	16
	.long	_s_UziShellShrapStill4
	.long	16
	.long	_s_UziShellShrapStill5
	.long	16
	.long	_s_UziShellShrapStill6
	.long	16
	.long	_s_ShotgunShellShrap
	.long	128
	.long	_s_ShotgunShellShrapStill1
	.long	16
	.long	_s_ShotgunShellShrapStill2
	.long	16
	.long	_s_ShotgunShellShrapStill3
	.long	16
	.long	_s_GoreFlameChunkA
	.long	64
	.long	_s_GoreFlameChunkB
	.long	64
	.long	_s_CoinShrap
	.long	64
	.long	_s_Marbel
	.long	16
	.long	_s_GlassShrapA
	.long	128
	.long	_s_GlassShrapB
	.long	128
	.long	_s_GlassShrapC
	.long	128
	.long	_s_WoodShrapA
	.long	128
	.long	_s_WoodShrapB
	.long	128
	.long	_s_WoodShrapC
	.long	128
	.long	_s_StoneShrapA
	.long	128
	.long	_s_StoneShrapB
	.long	128
	.long	_s_StoneShrapC
	.long	128
	.long	_s_MetalShrapA
	.long	128
	.long	_s_MetalShrapB
	.long	128
	.long	_s_MetalShrapC
	.long	128
	.long	_s_PaperShrapA
	.long	64
	.long	_s_PaperShrapB
	.long	64
	.long	_s_PaperShrapC
	.long	64
	.long	_s_FloorBlood1
	.long	32
	.long	_s_FootPrint1
	.long	16
	.long	_s_FootPrint2
	.long	16
	.long	_s_FootPrint3
	.long	16
	.long	_s_WallBlood1
	.long	32
	.long	_s_WallBlood2
	.long	32
	.long	_s_WallBlood3
	.long	32
	.long	_s_WallBlood4
	.long	32
	.align 32
__ZL20saveable_weapon_code:
	.long	__Z15MissileHitMatchsss
	.long	__Z11SpawnShrapXs
	.long	__Z11DoLavaErupts
	.long	__Z14UserShrapSetupP5SHRAPP11STATEstructi
	.long	__Z10SpawnShrapss
	.long	__Z11DoShrapMoves
	.long	__Z7DoVomits
	.long	__Z7DoVomits
	.long	__Z13DoVomitSplashs
	.long	__Z19DoFastShrapJumpFalls
	.long	__Z13DoTracerShraps
	.long	__Z15DoShrapJumpFalls
	.long	__Z13DoShrapDamages
	.long	__Z10SpawnBloodsssiii
	.long	__Z14VehicleMoveHits
	.long	__Z13WeaponMoveHits
	.long	__Z10DoUziSmokes
	.long	__Z14DoShotgunSmokes
	.long	__Z11DoMineSparks
	.long	__Z16DoFireballFlamess
	.long	__Z13DoBreakFlamess
	.long	__Z10SetSuicides
	.long	__Z12DoActorScales
	.long	__Z12DoRipperGrows
	.long	__Z16ActorChooseDeathss
	.long	__Z11ActorHealthss
	.long	__Z9SopDamageP19SECTOR_OBJECTstructs
	.long	__Z12SopCheckKillP19SECTOR_OBJECTstruct
	.long	__Z9ActorPains
	.long	__Z15ActorPainPlasmas
	.long	__Z15ActorStdMissiless
	.long	__Z16ActorDamageSlidesss
	.long	__Z17PlayerDamageSlideP12PLAYERstructss
	.long	__Z9GetDamagesss
	.long	__Z15RadiusGetDamagessi
	.long	__Z16PlayerCheckDeathP12PLAYERstructs
	.long	__Z16PlayerTakeDamageP12PLAYERstructs
	.long	__Z9StarBloodss
	.long	__Z8DoDamagess
	.long	__Z12DoDamageTests
	.long	__ZL15DoHitscanDamagest.lto_priv.0
	.long	__Z18DoFlamesDamageTests
	.long	__Z6DoStars
	.long	__Z11DoCrossBolts
	.long	__Z12DoPlasmaDones
	.long	__Z11MissileSeeksss
	.long	__Z16ComboMissileSeeksss
	.long	__Z17VectorMissileSeeksssss
	.long	__Z14VectorWormSeekssss
	.long	__Z12DoBlurExtendsss
	.long	__Z18InitPlasmaFountainP12spritetypev7S0_
	.long	__Z16DoPlasmaFountains
	.long	__Z8DoPlasmas
	.long	__Z11DoCoolgFires
	.long	__Z9DoEelFires
	.long	__Z9DoGrenades
	.long	__Z15DoVulcanBoulders
	.long	__Z13OwnerIsPlayers
	.long	__Z15DoMineRangeTestss
	.long	__Z11DoMineStucks
	.long	__Z12SetMineStucks
	.long	__Z6DoMines
	.long	__Z6DoPuffs
	.long	__Z10DoRailPuffs
	.long	__Z13DoBoltThinMans
	.long	__Z8DoTracers
	.long	__Z5DoEMPs
	.long	__Z10DoEMPBursts
	.long	__Z11DoTankShells
	.long	__Z13DoTracerStarts
	.long	__Z7DoLasers
	.long	__Z12DoLaserStarts
	.long	__Z6DoRails
	.long	__Z11DoRailStarts
	.long	__Z8DoRockets
	.long	__Z11DoMicroMinis
	.long	__Z19SpawnExtraMicroMinis
	.long	__Z7DoMicros
	.long	__Z11DoUziBullets
	.long	__Z12DoBoltSeekers
	.long	__Z14DoBoltShrapnels
	.long	__Z12DoBoltFatMans
	.long	__Z9DoElectros
	.long	__Z13DoLavaBoulders
	.long	__Z7DoSpears
	.long	__Z13SpawnBasicExps
	.long	__Z19SpawnFireballFlamesss
	.long	__Z16SpawnBreakFlamess
	.long	__Z22SpawnBreakStaticFlamess
	.long	__Z16SpawnFireballExps
	.long	__Z20SpawnGoroFireballExps
	.long	__Z12SpawnBoltExps
	.long	__Z13SpawnBunnyExps
	.long	__Z17SpawnTankShellExps
	.long	__Z24SpawnNuclearSecondaryExpss
	.long	__Z15SpawnNuclearExps
	.long	__Z14SpawnTracerExps
	.long	__Z13SpawnMicroExps
	.long	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct
	.long	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct
	.long	__Z24SpawnGrenadeSecondaryExpss
	.long	__Z20SpawnGrenadeSmallExps
	.long	__Z15SpawnGrenadeExps
	.long	__Z12SpawnMineExps
	.long	__Z13InitMineShraps
	.long	__Z11DoSectorExps
	.long	__Z14SpawnSectorExps
	.long	__Z13SpawnLargeExps
	.long	__Z14SpawnMeteorExps
	.long	__Z14SpawnLittleExps
	.long	__Z10DoFireballs
	.long	__Z12DoFindGrounds
	.long	__Z17DoFindGroundPoints
	.long	__Z8DoNapalms
	.long	__Z11DoBloodWorms
	.long	__Z11DoBloodWorms
	.long	__Z8DoMeteors
	.long	__Z12DoSerpMeteors
	.long	__Z13DoMirvMissiles
	.long	__Z6DoMirvs
	.long	__Z13MissileSetPossPFisEi
	.long	__Z17TestMissileSetPossPFisEii
	.long	__Z6DoRings
	.long	__Z13InitSpellRingP12PLAYERstruct
	.long	__Z10DoSerpRings
	.long	__Z13InitLavaFlames
	.long	__Z13InitLavaThrows
	.long	__Z17InitVulcanBoulders
	.long	__Z12InitSerpRings
	.long	__Z12InitSerpRings
	.long	__Z15InitSpellNapalmP12PLAYERstruct
	.long	__Z15InitEnemyNapalms
	.long	__Z13InitSpellMirvP12PLAYERstruct
	.long	__Z13InitEnemyMirvs
	.long	__Z15InitSwordAttackP12PLAYERstruct
	.long	__Z14InitFistAttackP12PLAYERstruct
	.long	__Z14InitSumoNapalms
	.long	__Z13InitSumoSkulls
	.long	__Z19InitSumoStompAttacks
	.long	__Z16InitMiniSumoClaps
	.long	__Z13WeaponAutoAimP12spritetypev7ssh
	.long	__Z17WeaponAutoAimZvelP12spritetypev7sPish
	.long	__Z18AimHitscanToTargetP12spritetypev7PiPsi
	.long	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	.long	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi
	.long	__Z8InitStarP12PLAYERstruct
	.long	__Z15InitHeartAttackP12PLAYERstruct
	.long	__Z15InitHeartAttackP12PLAYERstruct
	.long	__Z11InitShotgunP12PLAYERstruct
	.long	__Z9InitLaserP12PLAYERstruct
	.long	__Z8InitRailP12PLAYERstruct
	.long	__Z13InitZillaRails
	.long	__Z10InitRocketP12PLAYERstruct
	.long	__Z15InitBunnyRocketP12PLAYERstruct
	.long	__Z8InitNukeP12PLAYERstruct
	.long	__Z13InitEnemyNukes
	.long	__Z9InitMicroP12PLAYERstruct
	.long	__Z15InitRipperSlashs
	.long	__Z14InitBunnySlashs
	.long	__Z13InitSerpSlashs
	.long	__Z22WallSpriteInsideSpriteP12spritetypev7S0_
	.long	__Z13DoBladeDamages
	.long	__Z20DoStaticFlamesDamages
	.long	__Z13InitCoolgBashs
	.long	__Z13InitSkelSlashs
	.long	__Z12InitGoroChops
	.long	__Z15InitHornetStings
	.long	__Z13InitSerpSpells
	.long	__Z14SpawnDemonFists
	.long	__Z18InitSerpMonstSpells
	.long	__Z12DoTeleRippers
	.long	__Z15InitEnemyRockets
	.long	__Z13InitEnemyRails
	.long	__Z15InitZillaRockets
	.long	__Z13InitEnemyStars
	.long	__Z17InitEnemyCrossbows
	.long	__Z13InitSkelSpells
	.long	__Z13InitCoolgFires
	.long	__Z13InitCoolgDrips
	.long	__Z13GenerateDripss
	.long	__Z11InitEelFires
	.long	__Z16InitFireballTraps
	.long	__Z12InitBoltTraps
	.long	__Z17InitEnemyCrossbows
	.long	__Z13InitSpearTraps
	.long	__Z9DoSuicides
	.long	__Z13DoDefaultStats
	.long	__Z13InitTracerUziP12PLAYERstruct
	.long	__Z16InitTracerTurretssi
	.long	__Z20InitTracerAutoTurretssiii
	.long	__Z15BulletHitSpriteP12spritetypev7siiis
	.long	__Z19HitscanSpriteAdjustss
	.long	__Z7InitUziP12PLAYERstruct
	.long	__Z7InitEMPP12PLAYERstruct
	.long	__Z13InitTankShellsP12PLAYERstruct
	.long	__Z15InitTurretMicrosP12PLAYERstruct
	.long	__Z16InitTurretRocketsP12PLAYERstruct
	.long	__Z18InitTurretFireballsP12PLAYERstruct
	.long	__Z14InitTurretRailsP12PLAYERstruct
	.long	__Z15InitTurretLasersP12PLAYERstruct
	.long	__Z18InitSobjMachineGunsP12PLAYERstruct
	.long	__Z11InitSobjGunP12PLAYERstruct
	.long	__Z15SpawnBoatSparksP12PLAYERstructssiiis
	.long	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	.long	__Z17SpawnTurretSparksssiiis
	.long	__Z18SpawnShotgunSparksP12PLAYERstructssiiis
	.long	__Z14InitTurretMgunP19SECTOR_OBJECTstruct
	.long	__Z12InitEnemyUzis
	.long	__Z11InitGrenadeP12PLAYERstruct
	.long	__Z17InitSpriteGrenades
	.long	__Z8InitMineP12PLAYERstruct
	.long	__Z13InitEnemyMines
	.long	__Z18HelpMissileLateralsi
	.long	__Z12InitFireballP12PLAYERstruct
	.long	__Z17InitEnemyFireballs
	.long	__Z16WarpToUnderwaterPsPiS0_S0_
	.long	__Z13WarpToSurfacePsPiS0_S0_
	.long	__Z22SpriteWarpToUnderwaterP12spritetypev7
	.long	__Z19SpriteWarpToSurfaceP12spritetypev7
	.long	__Z11SpawnSplashs
	.long	__Z13SpawnSplashXYiiis
	.long	__Z16SpawnUnderSplashs
	.long	__Z18MissileHitDiveAreas
	.long	__Z11SpawnBubbles
	.long	__Z14DoVehicleSmokes
	.long	__Z12DoWaterSmokes
	.long	__Z17SpawnVehicleSmokes
	.long	__Z14SpawnSmokePuffs
	.long	__Z8DoBubbles
	.long	__Z17SpriteQueueDeletes
	.long	__Z12DoFloorBloods
	.long	__Z11DoWallBloods
	.long	__Z10SpawnShellss
	.long	__Z15DoShrapVelocitys
	.long	__Z15ShrapKillSprites
	.long	__Z9DoItemFlys
	.align 4
__ZL22saveable_wallmove_code:
	.long	__Z10DoWallMoveP12spritetypev7
	.long	__Z14CanSeeWallMoveP12spritetypev7s
	.long	__Z15DoWallMoveMatchs
	.align 32
__ZL19saveable_vator_code:
	.long	__Z12ReverseVators
	.long	__Z11VatorSwitchss
	.long	__Z14SetVatorActives
	.long	__Z16SetVatorInactives
	.long	__Z14DoVatorOperateP12PLAYERstructs
	.long	__Z12DoVatorMatchP12PLAYERstructs
	.long	__Z20TestVatorMatchActives
	.long	__Z19InterpSectorSpritessh
	.long	__Z21MoveSpritesWithSectorsih
	.long	__Z11DoVatorMovesPi
	.long	__Z7DoVators
	.long	__Z11DoVatorAutos
	.align 4
__ZL19saveable_track_code:
	.long	__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_
	.long	__Z15DoTornadoObjectP19SECTOR_OBJECTstruct
	.long	__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct
	.long	__Z23DoActorHitTrackEndPointP4USER
	.long	__Z14CallbackSOsinkP10ANIMstructPv
	.align 32
__ZL18saveable_sumo_data:
	.long	_SumoBattle
	.long	24
	.long	_SumoOffense
	.long	24
	.long	_SumoBroadcast
	.long	24
	.long	_SumoSurprised
	.long	24
	.long	_SumoEvasive
	.long	8
	.long	_SumoLostTarget
	.long	16
	.long	_SumoCloseRange
	.long	8
	.long	_SumoPersonality
	.long	32
	.long	_SumoAttrib
	.long	60
	.long	_s_SumoRun
	.long	320
	.long	_sg_SumoRun
	.long	20
	.long	_s_SumoStand
	.long	80
	.long	_sg_SumoStand
	.long	20
	.long	_s_SumoPain
	.long	160
	.long	_sg_SumoPain
	.long	20
	.long	_s_SumoFart
	.long	480
	.long	_sg_SumoFart
	.long	20
	.long	_s_SumoClap
	.long	480
	.long	_sg_SumoClap
	.long	20
	.long	_s_SumoStomp
	.long	480
	.long	_sg_SumoStomp
	.long	20
	.long	_s_SumoDie
	.long	272
	.long	_sg_SumoDie
	.long	4
	.long	_s_SumoDead
	.long	16
	.long	_sg_SumoDead
	.long	4
	.long	_SumoActionSet
	.long	132
	.long	_MiniSumoActionSet
	.long	132
	.align 32
__ZL18saveable_sumo_code:
	.long	__Z9SetupSumos
	.long	__Z8NullSumos
	.long	__Z10DoSumoMoves
	.long	__Z12DoSumoRumbles
	.long	__Z12InitSumoFarts
	.long	__Z13InitSumoStomps
	.long	__Z12InitSumoClaps
	.long	__Z15DoSumoDeathMelts
	.align 32
__ZL20saveable_sprite_data:
	.long	_Track
	.long	1200
	.long	_SectorObject
	.long	120560
	.long	_s_DebrisNinja
	.long	16
	.long	_s_DebrisRat
	.long	16
	.long	_s_DebrisCrab
	.long	16
	.long	_s_DebrisStarFish
	.long	16
	.long	_s_RepairKit
	.long	16
	.long	_s_GoldSkelKey
	.long	16
	.long	_s_BlueKey
	.long	16
	.long	_s_BlueCard
	.long	16
	.long	_s_SilverSkelKey
	.long	16
	.long	_s_RedKey
	.long	16
	.long	_s_RedCard
	.long	16
	.long	_s_BronzeSkelKey
	.long	16
	.long	_s_GreenKey
	.long	16
	.long	_s_GreenCard
	.long	16
	.long	_s_RedSkelKey
	.long	16
	.long	_s_YellowKey
	.long	16
	.long	_s_YellowCard
	.long	16
	.long	_s_Key
	.long	48
	.long	_s_BlueKey
	.long	16
	.long	_s_RedKey
	.long	16
	.long	_s_GreenKey
	.long	16
	.long	_s_YellowKey
	.long	16
	.long	_s_Key
	.long	48
	.long	_s_RedCoin
	.long	128
	.long	_s_YellowCoin
	.long	128
	.long	_s_GreenCoin
	.long	128
	.long	_s_FireFly
	.long	16
	.long	_s_IconStar
	.long	16
	.long	_s_IconUzi
	.long	16
	.long	_s_IconLgUziAmmo
	.long	16
	.long	_s_IconUziFloor
	.long	16
	.long	_s_IconRocket
	.long	16
	.long	_s_IconLgRocket
	.long	16
	.long	_s_IconShotgun
	.long	16
	.long	_s_IconLgShotshell
	.long	16
	.long	_s_IconAutoRiot
	.long	16
	.long	_s_IconGrenadeLauncher
	.long	16
	.long	_s_IconLgGrenade
	.long	16
	.long	_s_IconLgMine
	.long	16
	.long	_s_IconGuardHead
	.long	16
	.long	_s_IconFireballLgAmmo
	.long	48
	.long	_s_IconHeart
	.long	32
	.long	_s_IconHeartLgAmmo
	.long	32
	.long	_s_IconMicroGun
	.long	16
	.long	_s_IconMicroBattery
	.long	16
	.long	_s_IconRailGun
	.long	16
	.long	_s_IconRailAmmo
	.long	16
	.long	_s_IconElectro
	.long	32
	.long	_s_IconSpell
	.long	256
	.long	_s_IconArmor
	.long	16
	.long	_s_IconMedkit
	.long	16
	.long	_s_IconChemBomb
	.long	16
	.long	_s_IconFlashBomb
	.long	16
	.long	_s_IconNuke
	.long	16
	.long	_s_IconCaltrops
	.long	16
	.long	_s_IconSmMedkit
	.long	16
	.long	_s_IconBooster
	.long	16
	.long	_s_IconHeatCard
	.long	16
	.long	_s_IconCloak
	.long	16
	.long	_s_IconFly
	.long	128
	.long	_s_IconNightVision
	.long	16
	.long	_s_IconFlag
	.long	48
	.align 32
__ZL20saveable_sprite_code:
	.long	__Z13DoActorZranges
	.long	__Z12DoActorGlobZs
	.long	__Z13DoStayOnFloors
	.long	__Z9DoGratings
	.long	__Z12SpearOnFloors
	.long	__Z14SpearOnCeilings
	.long	__Z5DoKeys
	.long	__Z6DoCoins
	.long	__Z7KillGets
	.long	__Z11KillGetAmmos
	.long	__Z13KillGetWeapons
	.long	__Z27DoSpawnItemTeleporterEffectP12spritetypev7
	.long	__Z5DoGets
	.long	__Z14SetEnemyActives
	.long	__Z16SetEnemyInactives
	.long	__Z17ProcessActiveVarss
	.long	__Z12StateControls
	.long	__Z13SpriteControlv
	.align 32
__ZL19saveable_spike_code:
	.long	__Z12ReverseSpikes
	.long	__Z11SpikeSwitchss
	.long	__Z14SetSpikeActives
	.long	__Z16SetSpikeInactives
	.long	__Z14DoSpikeOperates
	.long	__Z12DoSpikeMatchs
	.long	__Z20TestSpikeMatchActives
	.long	__Z11DoSpikeMovesPi
	.long	__Z10SpikeAligns
	.long	__Z20MoveSpritesWithSpikes
	.long	__Z7DoSpikes
	.long	__Z11DoSpikeAutos
	.align 32
__ZL20saveable_slidor_code:
	.long	__Z13ReverseSlidors
	.long	__Z12SlidorSwitchss
	.long	__Z15SetSlidorActives
	.long	__Z17SetSlidorInactives
	.long	__Z15DoSlidorOperateP12PLAYERstructs
	.long	__Z13DoSlidorMatchP12PLAYERstructsh
	.long	__Z21TestSlidorMatchActives
	.long	__Z14DoSlidorInterpsPFvPiE
	.long	__Z17DoSlidorMoveWallssi
	.long	__Z20DoSlidorInstantCloses
	.long	__Z12DoSlidorMoves
	.long	__Z8DoSlidors
	.align 32
__ZL19saveable_skull_data:
	.long	_s_SkullWait
	.long	80
	.long	_sg_SkullWait
	.long	20
	.long	_SkullAttrib
	.long	60
	.long	_s_SkullRing
	.long	80
	.long	_sg_SkullRing
	.long	20
	.long	_s_SkullJump
	.long	80
	.long	_sg_SkullJump
	.long	20
	.long	_s_SkullExplode
	.long	288
	.long	_sg_SkullExplode
	.long	4
	.long	_s_BettyWait
	.long	240
	.long	_sg_BettyWait
	.long	20
	.long	_BettyAttrib
	.long	60
	.long	_s_BettyJump
	.long	80
	.long	_sg_BettyJump
	.long	20
	.long	_s_BettyExplode
	.long	32
	.long	_sg_BettyExplode
	.long	4
	.align 32
__ZL19saveable_skull_code:
	.long	__Z10SetupSkulls
	.long	__Z11DoSkullMoves
	.long	__Z17DoSkullBeginDeaths
	.long	__Z11DoSkullJumps
	.long	__Z10DoSkullBobs
	.long	__Z17DoSkullSpawnShraps
	.long	__Z11DoSkullWaits
	.long	__Z10SetupBettys
	.long	__Z11DoBettyMoves
	.long	__Z17DoBettyBeginDeaths
	.long	__Z11DoBettyJumps
	.long	__Z10DoBettyBobs
	.long	__Z17DoBettySpawnShraps
	.long	__Z11DoBettyWaits
	.align 32
__ZL18saveable_skel_data:
	.long	_SkelBattle
	.long	32
	.long	_SkelOffense
	.long	24
	.long	_SkelBroadcast
	.long	24
	.long	_SkelSurprised
	.long	16
	.long	_SkelEvasive
	.long	24
	.long	_SkelLostTarget
	.long	16
	.long	_SkelCloseRange
	.long	16
	.long	_SkelPersonality
	.long	32
	.long	_SkelAttrib
	.long	60
	.long	_s_SkelRun
	.long	480
	.long	_sg_SkelRun
	.long	20
	.long	_s_SkelSlash
	.long	560
	.long	_sg_SkelSlash
	.long	20
	.long	_s_SkelSpell
	.long	560
	.long	_sg_SkelSpell
	.long	20
	.long	_s_SkelPain
	.long	80
	.long	_sg_SkelPain
	.long	20
	.long	_s_SkelTeleport
	.long	272
	.long	_sg_SkelTeleport
	.long	20
	.long	_s_SkelStand
	.long	80
	.long	_sg_SkelStand
	.long	20
	.long	_s_SkelDie
	.long	96
	.long	_sg_SkelDie
	.long	4
	.long	_SkelActionSet
	.long	132
	.align 4
__ZL18saveable_skel_code:
	.long	__Z9SetupSkels
	.long	__Z18DoSkelInitTeleports
	.long	__Z14DoSkelTeleports
	.long	__Z18DoSkelTermTeleports
	.long	__Z8NullSkels
	.long	__Z10DoSkelPains
	.long	__Z10DoSkelMoves
	.align 32
__ZL18saveable_serp_data:
	.long	_SerpBattle
	.long	32
	.long	_SerpOffense
	.long	24
	.long	_SerpBroadcast
	.long	16
	.long	_SerpSurprised
	.long	16
	.long	_SerpEvasive
	.long	16
	.long	_SerpLostTarget
	.long	24
	.long	_SerpCloseRange
	.long	16
	.long	_SerpPersonality
	.long	32
	.long	_SerpAttrib
	.long	60
	.long	_SerpPissedAttrib
	.long	60
	.long	_s_SerpRun
	.long	320
	.long	_sg_SerpRun
	.long	20
	.long	_s_SerpSlash
	.long	800
	.long	_sg_SerpSlash
	.long	20
	.long	_s_SerpSkullSpell
	.long	640
	.long	_sg_SerpSkullSpell
	.long	20
	.long	_s_SerpSpell
	.long	640
	.long	_sg_SerpSpell
	.long	20
	.long	_s_SerpMonstSpell
	.long	640
	.long	_sg_SerpMonstSpell
	.long	20
	.long	_s_SerpRapidSpell
	.long	800
	.long	_sg_SerpRapidSpell
	.long	20
	.long	_s_SerpStand
	.long	80
	.long	_sg_SerpStand
	.long	20
	.long	_s_SerpDie
	.long	176
	.long	_s_SerpDead
	.long	16
	.long	_sg_SerpDie
	.long	4
	.long	_sg_SerpDead
	.long	4
	.long	_SerpActionSet
	.long	132
	.align 4
__ZL18saveable_serp_code:
	.long	__Z9SetupSerps
	.long	__Z8NullSerps
	.long	__Z10DoSerpMoves
	.long	__Z14DoDeathSpecials
	.align 32
__ZL21saveable_rotator_code:
	.long	__Z14ReverseRotators
	.long	__Z13RotatorSwitchss
	.long	__Z16SetRotatorActives
	.long	__Z18SetRotatorInactives
	.long	__Z16DoRotatorOperateP12PLAYERstructs
	.long	__Z14DoRotatorMatchP12PLAYERstructsh
	.long	__Z22TestRotatorMatchActives
	.long	__Z18DoRotatorSetInterps
	.long	__Z19DoRotatorStopInterps
	.long	__Z13DoRotatorMoves
	.long	__Z9DoRotators
	.align 32
__ZL21saveable_ripper2_data:
	.long	_Ripper2Battle
	.long	32
	.long	_Ripper2Offense
	.long	32
	.long	_Ripper2Broadcast
	.long	16
	.long	_Ripper2Surprised
	.long	24
	.long	_Ripper2Evasive
	.long	16
	.long	_Ripper2LostTarget
	.long	16
	.long	_Ripper2CloseRange
	.long	8
	.long	_Ripper2Personality
	.long	32
	.long	_Ripper2Attrib
	.long	60
	.long	_s_Ripper2Run
	.long	320
	.long	_sg_Ripper2Run
	.long	20
	.long	_s_Ripper2RunFast
	.long	320
	.long	_sg_Ripper2RunFast
	.long	20
	.long	_s_Ripper2Stand
	.long	80
	.long	_sg_Ripper2Stand
	.long	20
	.long	_s_Ripper2Swipe
	.long	640
	.long	_sg_Ripper2Swipe
	.long	20
	.long	_s_Ripper2Kong
	.long	560
	.long	_sg_Ripper2Kong
	.long	20
	.long	_s_Ripper2Heart
	.long	320
	.long	_sg_Ripper2Heart
	.long	20
	.long	_s_Ripper2Hang
	.long	320
	.long	_sg_Ripper2Hang
	.long	20
	.long	_s_Ripper2Pain
	.long	80
	.long	_sg_Ripper2Pain
	.long	20
	.long	_s_Ripper2Jump
	.long	480
	.long	_sg_Ripper2Jump
	.long	20
	.long	_s_Ripper2Fall
	.long	480
	.long	_sg_Ripper2Fall
	.long	20
	.long	_s_Ripper2JumpAttack
	.long	480
	.long	_sg_Ripper2JumpAttack
	.long	20
	.long	_s_Ripper2HangJump
	.long	480
	.long	_sg_Ripper2HangJump
	.long	20
	.long	_s_Ripper2HangFall
	.long	480
	.long	_sg_Ripper2HangFall
	.long	20
	.long	_s_Ripper2Die
	.long	128
	.long	_s_Ripper2Dead
	.long	144
	.long	_sg_Ripper2Die
	.long	4
	.long	_sg_Ripper2Dead
	.long	4
	.long	_s_Ripper2DeathJump
	.long	16
	.long	_s_Ripper2DeathFall
	.long	16
	.long	_sg_Ripper2DeathJump
	.long	4
	.long	_sg_Ripper2DeathFall
	.long	4
	.long	_Ripper2ActionSet
	.long	132
	.long	_Ripper2BrownActionSet
	.long	132
	.align 32
__ZL21saveable_ripper2_code:
	.long	__Z12SetupRipper2s
	.long	__Z15InitRipper2Hangs
	.long	__Z13DoRipper2Hangs
	.long	__Z17DoRipper2MoveHangs
	.long	__Z15DoRipper2HangJFs
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	__Z17DoRipper2MoveJumps
	.long	__Z18DoRipper2QuickJumps
	.long	__Z11NullRipper2s
	.long	__Z13DoRipper2Pains
	.long	__Z17DoRipper2RipHearts
	.long	__Z19DoRipper2StandHearts
	.long	__Z12Ripper2Hatchs
	.long	__Z13DoRipper2Moves
	.long	__Z17InitRipper2Charges
	.long	__Z12ChestRipper2s
	.align 32
__ZL20saveable_ripper_data:
	.long	_RipperBattle
	.long	32
	.long	_RipperOffense
	.long	24
	.long	_RipperBroadcast
	.long	24
	.long	_RipperSurprised
	.long	24
	.long	_RipperEvasive
	.long	16
	.long	_RipperLostTarget
	.long	16
	.long	_RipperCloseRange
	.long	16
	.long	_RipperPersonality
	.long	32
	.long	_RipperAttrib
	.long	60
	.long	_s_RipperRun
	.long	320
	.long	_sg_RipperRun
	.long	20
	.long	_s_RipperStand
	.long	80
	.long	_sg_RipperStand
	.long	20
	.long	_s_RipperSwipe
	.long	640
	.long	_sg_RipperSwipe
	.long	20
	.long	_s_RipperSpew
	.long	560
	.long	_sg_RipperSpew
	.long	20
	.long	_s_RipperHeart
	.long	320
	.long	_sg_RipperHeart
	.long	20
	.long	_s_RipperHang
	.long	320
	.long	_sg_RipperHang
	.long	20
	.long	_s_RipperPain
	.long	80
	.long	_sg_RipperPain
	.long	20
	.long	_s_RipperJump
	.long	480
	.long	_sg_RipperJump
	.long	20
	.long	_s_RipperFall
	.long	480
	.long	_sg_RipperFall
	.long	20
	.long	_s_RipperJumpAttack
	.long	480
	.long	_sg_RipperJumpAttack
	.long	20
	.long	_s_RipperHangJump
	.long	480
	.long	_sg_RipperHangJump
	.long	20
	.long	_s_RipperHangFall
	.long	480
	.long	_sg_RipperHangFall
	.long	20
	.long	_s_RipperDie
	.long	80
	.long	_s_RipperDead
	.long	64
	.long	_sg_RipperDie
	.long	4
	.long	_sg_RipperDead
	.long	4
	.long	_s_RipperDeathJump
	.long	16
	.long	_s_RipperDeathFall
	.long	16
	.long	_sg_RipperDeathJump
	.long	4
	.long	_sg_RipperDeathFall
	.long	4
	.long	_RipperActionSet
	.long	132
	.long	_RipperBrownActionSet
	.long	132
	.align 32
__ZL20saveable_ripper_code:
	.long	__Z11SetupRippers
	.long	__Z13GetJumpHeightss
	.long	__Z13PickJumpSpeedsi
	.long	__Z16PickJumpMaxSpeedss
	.long	__Z14InitRipperHangs
	.long	__Z12DoRipperHangs
	.long	__Z16DoRipperMoveHangs
	.long	__Z14DoRipperHangJFs
	.long	__Z23DoRipperBeginJumpAttacks
	.long	__Z16DoRipperMoveJumps
	.long	__Z17DoRipperQuickJumps
	.long	__Z10NullRippers
	.long	__Z12DoRipperPains
	.long	__Z16DoRipperRipHearts
	.long	__Z18DoRipperStandHearts
	.long	__Z11RipperHatchs
	.long	__Z12DoRipperMoves
	.align 32
__ZL19saveable_quake_code:
	.long	__Z17CopyQuakeSpotToOnP12spritetypev7
	.long	__Z12DoQuakeMatchs
	.long	__Z14ProcessQuakeOnv
	.long	__Z16ProcessQuakeSpotv
	.long	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps
	.long	__Z10SpawnQuakesiiissi
	.long	__Z8SetQuakeP12PLAYERstructss
	.long	__Z11SetExpQuakes
	.long	__Z11SetGunQuakes
	.long	__Z14SetPlayerQuakeP12PLAYERstruct
	.long	__Z15SetNuclearQuakes
	.long	__Z12SetSumoQuakes
	.long	__Z16SetSumoFartQuakes
	.align 32
__ZL20saveable_player_data:
	.long	_Player
	.long	217116
	.long	_s_PlayerNinjaRun
	.long	480
	.long	_sg_PlayerNinjaRun
	.long	20
	.long	_s_PlayerNinjaStand
	.long	80
	.long	_sg_PlayerNinjaStand
	.long	20
	.long	_s_PlayerNinjaThrow
	.long	320
	.long	_sg_PlayerNinjaThrow
	.long	20
	.long	_s_PlayerNinjaJump
	.long	320
	.long	_sg_PlayerNinjaJump
	.long	20
	.long	_s_PlayerNinjaFall
	.long	160
	.long	_sg_PlayerNinjaFall
	.long	20
	.long	_s_PlayerNinjaClimb
	.long	320
	.long	_sg_PlayerNinjaClimb
	.long	20
	.long	_s_PlayerNinjaCrawl
	.long	480
	.long	_sg_PlayerNinjaCrawl
	.long	20
	.long	_s_PlayerNinjaSwim
	.long	320
	.long	_sg_PlayerNinjaSwim
	.long	20
	.long	_s_PlayerHeadFly
	.long	640
	.long	_sg_PlayerHeadFly
	.long	20
	.long	_s_PlayerHead
	.long	80
	.long	_sg_PlayerHead
	.long	20
	.long	_s_PlayerHeadHurl
	.long	80
	.long	_sg_PlayerHeadHurl
	.long	20
	.long	_s_PlayerDeath
	.long	800
	.long	_sg_PlayerDeath
	.long	20
	.long	_s_PlayerNinjaSword
	.long	320
	.long	_sg_PlayerNinjaSword
	.long	20
	.long	_s_PlayerNinjaPunch
	.long	320
	.long	_sg_PlayerNinjaPunch
	.long	20
	.long	_s_PlayerNinjaFly
	.long	320
	.long	_sg_PlayerNinjaFly
	.long	20
	.align 32
__ZL20saveable_player_code:
	.long	__Z13DoPlayerSlideP12PLAYERstruct
	.long	__Z12DoPlayerWadeP12PLAYERstruct
	.long	__Z17DoPlayerBeginWadeP12PLAYERstruct
	.long	__Z18DoPlayerBeginCrawlP12PLAYERstruct
	.long	__Z13DoPlayerCrawlP12PLAYERstruct
	.long	__Z11DoPlayerRunP12PLAYERstruct
	.long	__Z16DoPlayerBeginRunP12PLAYERstruct
	.long	__Z12DoPlayerFallP12PLAYERstruct
	.long	__Z17DoPlayerBeginFallP12PLAYERstruct
	.long	__Z12DoPlayerJumpP12PLAYERstruct
	.long	__Z17DoPlayerBeginJumpP12PLAYERstruct
	.long	__Z17DoPlayerForceJumpP12PLAYERstruct
	.long	__Z16DoPlayerBeginFlyP12PLAYERstruct
	.long	__Z11DoPlayerFlyP12PLAYERstruct
	.long	__Z18DoPlayerBeginClimbP12PLAYERstruct
	.long	__Z13DoPlayerClimbP12PLAYERstruct
	.long	__Z16DoPlayerBeginDieP12PLAYERstruct
	.long	__Z24DoPlayerBeginOperateBoatP12PLAYERstruct
	.long	__Z24DoPlayerBeginOperateTankP12PLAYERstruct
	.long	__Z20DoPlayerBeginOperateP12PLAYERstruct
	.long	__Z19DoPlayerOperateBoatP12PLAYERstruct
	.long	__Z19DoPlayerOperateTankP12PLAYERstruct
	.long	__Z21DoPlayerOperateTurretP12PLAYERstruct
	.long	__Z17DoPlayerBeginDiveP12PLAYERstruct
	.long	__Z12DoPlayerDiveP12PLAYERstruct
	.long	__Z21DoPlayerTeleportPauseP12PLAYERstruct
	.long	__Z17DoPlayerTestCrawlP12PLAYERstruct
	.long	__Z17DoPlayerDeathFlipP12PLAYERstruct
	.long	__Z20DoPlayerDeathCrumbleP12PLAYERstruct
	.long	__Z20DoPlayerDeathExplodeP12PLAYERstruct
	.long	__Z17DoPlayerDeathFallP12PLAYERstruct
	.long	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.long	__Z15DoPlayerCurrentP12PLAYERstruct
	.align 32
__ZL19saveable_panel_data:
	.long	_ps_PresentSword
	.long	24
	.long	_ps_SwordRest
	.long	24
	.long	_ps_SwordHide
	.long	24
	.long	_ps_SwordSwing
	.long	240
	.long	_ps_RetractSword
	.long	24
	.long	_ps_PresentStar
	.long	24
	.long	_ps_StarHide
	.long	24
	.long	_ps_StarRest
	.long	24
	.long	_ps_ThrowStar
	.long	408
	.long	_ps_RetractStar
	.long	24
	.long	_ps_FireUzi
	.long	336
	.long	_ps_UziNull
	.long	24
	.long	_ps_UziHide
	.long	24
	.long	_ps_PresentUzi
	.long	24
	.long	_ps_PresentUziReload
	.long	24
	.long	_ps_RetractUzi
	.long	24
	.long	_ps_FireUzi2
	.long	288
	.long	_ps_PresentUzi2
	.long	24
	.long	_ps_Uzi2Hide
	.long	24
	.long	_ps_RetractUzi2
	.long	24
	.long	_ps_Uzi2Suicide
	.long	24
	.long	_ps_Uzi2Null
	.long	24
	.long	_ps_UziEject
	.long	144
	.long	_ps_UziClip
	.long	24
	.long	_ps_UziReload
	.long	48
	.long	_ps_UziDoneReload
	.long	24
	.long	_ps_UziShell
	.long	144
	.long	_ps_Uzi2Shell
	.long	144
	.long	_ps_ShotgunShell
	.long	192
	.long	_ps_PresentShotgun
	.long	24
	.long	_ps_ShotgunRest
	.long	24
	.long	_ps_ShotgunHide
	.long	24
	.long	_ps_ShotgunRecoil
	.long	216
	.long	_ps_ShotgunRecoilAuto
	.long	192
	.long	_ps_ShotgunFire
	.long	120
	.long	_ps_ShotgunAutoFire
	.long	120
	.long	_ps_ShotgunReload
	.long	144
	.long	_ps_RetractShotgun
	.long	24
	.long	_ps_ShotgunFlash
	.long	240
	.long	_ps_PresentRail
	.long	24
	.long	_ps_RailRest
	.long	120
	.long	_ps_RailHide
	.long	24
	.long	_ps_RailRecoil
	.long	72
	.long	_ps_RailFire
	.long	720
	.long	_ps_RailFireEMP
	.long	240
	.long	_ps_RetractRail
	.long	24
	.long	_ps_PresentHothead
	.long	24
	.long	_ps_HotheadHide
	.long	24
	.long	_ps_RetractHothead
	.long	24
	.long	_ps_HotheadRest
	.long	24
	.long	_ps_HotheadRestRing
	.long	24
	.long	_ps_HotheadRestNapalm
	.long	24
	.long	_ps_HotheadAttack
	.long	144
	.long	_ps_HotheadRing
	.long	144
	.long	_ps_HotheadNapalm
	.long	144
	.long	_ps_HotheadTurn
	.long	288
	.long	_ps_HotheadTurnRing
	.long	240
	.long	_ps_HotheadTurnNapalm
	.long	216
	.long	_ps_OnFire
	.long	312
	.long	_ps_PresentMicro
	.long	24
	.long	_ps_MicroRest
	.long	24
	.long	_ps_MicroHide
	.long	24
	.long	_ps_InitNuke
	.long	192
	.long	_ps_MicroRecoil
	.long	96
	.long	_ps_MicroFire
	.long	168
	.long	_ps_MicroSingleFire
	.long	144
	.long	_ps_RetractMicro
	.long	24
	.long	_ps_MicroHeatFlash
	.long	240
	.long	_ps_MicroNukeFlash
	.long	240
	.long	_ps_PresentHeart
	.long	48
	.long	_ps_HeartRest
	.long	96
	.long	_ps_HeartHide
	.long	48
	.long	_ps_HeartAttack
	.long	192
	.long	_ps_RetractHeart
	.long	48
	.long	_ps_HeartBlood
	.long	168
	.long	_ps_HeartBloodSmall
	.long	168
	.long	_ps_HeartBlood
	.long	168
	.long	_ps_PresentGrenade
	.long	24
	.long	_ps_GrenadeRest
	.long	24
	.long	_ps_GrenadeHide
	.long	24
	.long	_ps_GrenadeFire
	.long	120
	.long	_ps_GrenadeRecoil
	.long	120
	.long	_ps_RetractGrenade
	.long	24
	.long	_ps_PresentMine
	.long	24
	.long	_ps_MineRest
	.long	72
	.long	_ps_MineHide
	.long	24
	.long	_ps_MineThrow
	.long	168
	.long	_ps_RetractMine
	.long	24
	.long	_ps_ChopsAttack1
	.long	144
	.long	_ps_ChopsAttack2
	.long	144
	.long	_ps_ChopsAttack3
	.long	360
	.long	_ps_ChopsAttack4
	.long	168
	.long	_ps_ChopsWait
	.long	24
	.long	_ps_ChopsRetract
	.long	24
	.long	_ps_PresentFist
	.long	24
	.long	_ps_FistRest
	.long	24
	.long	_ps_FistHide
	.long	24
	.long	_ps_PresentFist2
	.long	24
	.long	_ps_Fist2Rest
	.long	24
	.long	_ps_Fist2Hide
	.long	24
	.long	_ps_FistSwing
	.long	240
	.long	_ps_Fist2Swing
	.long	120
	.long	_ps_Fist3Swing
	.long	240
	.long	_ps_Kick
	.long	240
	.long	_ps_RetractFist
	.long	24
	.long	_ps_PanelEnvironSuit
	.long	24
	.long	_ps_PanelCloak
	.long	24
	.long	_ps_PanelRepairKit
	.long	24
	.long	_ps_PanelMedkit
	.long	24
	.long	_ps_PanelNightVision
	.long	24
	.long	_ps_PanelChemBomb
	.long	24
	.long	_ps_PanelFlashBomb
	.long	24
	.long	_ps_PanelCaltrops
	.long	24
	.long	_ps_PanelSelectionBox
	.long	24
	.long	_ps_PanelKeyRed
	.long	24
	.long	_ps_PanelKeyGreen
	.long	24
	.long	_ps_PanelKeyBlue
	.long	24
	.long	_ps_PanelKeyYellow
	.long	24
	.align 4
__ZL19saveable_panel_code:
	.long	__Z8pSuicideP18PANEL_SPRITEstruct
	.long	__Z9SwordBlurP18PANEL_SPRITEstruct
	.long	__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct
	.long	__Z8FistBlurP18PANEL_SPRITEstruct
	.long	__Z11StringTimerP18PANEL_SPRITEstruct
	.align 32
__ZL19saveable_ninja_data:
	.long	_NinjaBattle
	.long	16
	.long	_NinjaOffense
	.long	16
	.long	_NinjaBroadcast
	.long	16
	.long	_NinjaSurprised
	.long	16
	.long	_NinjaEvasive
	.long	16
	.long	_NinjaLostTarget
	.long	16
	.long	_NinjaCloseRange
	.long	16
	.long	_NinjaSniperRoam
	.long	16
	.long	_NinjaSniperBattle
	.long	24
	.long	_NinjaPersonality
	.long	32
	.long	_NinjaSniperPersonality
	.long	32
	.long	_NinjaAttrib
	.long	60
	.long	_InvisibleNinjaAttrib
	.long	60
	.long	_DefaultAttrib
	.long	60
	.long	_s_NinjaRun
	.long	320
	.long	_sg_NinjaRun
	.long	20
	.long	_s_NinjaStand
	.long	80
	.long	_sg_NinjaStand
	.long	20
	.long	_s_NinjaRise
	.long	240
	.long	_sg_NinjaRise
	.long	20
	.long	_s_NinjaCrawl
	.long	320
	.long	_sg_NinjaCrawl
	.long	20
	.long	_s_NinjaKneelCrawl
	.long	400
	.long	_sg_NinjaKneelCrawl
	.long	20
	.long	_s_NinjaDuck
	.long	160
	.long	_sg_NinjaDuck
	.long	20
	.long	_s_NinjaSit
	.long	80
	.long	_sg_NinjaSit
	.long	20
	.long	_s_NinjaCeiling
	.long	80
	.long	_sg_NinjaCeiling
	.long	20
	.long	_s_NinjaJump
	.long	160
	.long	_sg_NinjaJump
	.long	20
	.long	_s_NinjaFall
	.long	160
	.long	_sg_NinjaFall
	.long	20
	.long	_s_NinjaSwim
	.long	240
	.long	_sg_NinjaSwim
	.long	20
	.long	_s_NinjaDive
	.long	320
	.long	_sg_NinjaDive
	.long	20
	.long	_s_NinjaClimb
	.long	320
	.long	_sg_NinjaClimb
	.long	20
	.long	_s_NinjaFly
	.long	80
	.long	_sg_NinjaFly
	.long	20
	.long	_s_NinjaPain
	.long	160
	.long	_sg_NinjaPain
	.long	20
	.long	_s_NinjaStar
	.long	480
	.long	_sg_NinjaStar
	.long	20
	.long	_s_NinjaMirv
	.long	480
	.long	_sg_NinjaMirv
	.long	20
	.long	_s_NinjaNapalm
	.long	480
	.long	_sg_NinjaNapalm
	.long	20
	.long	_s_NinjaRocket
	.long	400
	.long	_sg_NinjaRocket
	.long	20
	.long	_s_NinjaGrenade
	.long	400
	.long	_sg_NinjaGrenade
	.long	20
	.long	_s_NinjaFlashBomb
	.long	400
	.long	_sg_NinjaFlashBomb
	.long	20
	.long	_s_NinjaUzi
	.long	1360
	.long	_sg_NinjaUzi
	.long	20
	.long	_s_NinjaHariKari
	.long	176
	.long	_sg_NinjaHariKari
	.long	20
	.long	_s_NinjaGrabThroat
	.long	96
	.long	_sg_NinjaGrabThroat
	.long	20
	.long	_s_NinjaDie
	.long	176
	.long	_s_NinjaDieSliced
	.long	192
	.long	_s_NinjaDead
	.long	80
	.long	_s_NinjaDeathJump
	.long	48
	.long	_s_NinjaDeathFall
	.long	32
	.long	_sg_NinjaDie
	.long	4
	.long	_sg_NinjaDieSliced
	.long	4
	.long	_sg_NinjaDead
	.long	4
	.long	_sg_NinjaDeathJump
	.long	4
	.long	_sg_NinjaDeathFall
	.long	4
	.long	_NinjaSniperActionSet
	.long	132
	.long	_NinjaActionSet
	.long	132
	.long	_NinjaRedActionSet
	.long	132
	.long	_NinjaSeekerActionSet
	.long	132
	.long	_NinjaGrenadeActionSet
	.long	132
	.long	_NinjaGreenActionSet
	.long	132
	.long	_PlayerNinjaActionSet
	.long	132
	.align 32
__ZL19saveable_ninja_code:
	.long	__Z15DoHariKariBloods
	.long	__Z10SetupNinjas
	.long	__Z15DoNinjaHariKaris
	.long	__Z17DoNinjaGrabThroats
	.long	__Z11DoNinjaMoves
	.long	__Z19NinjaJumpActionFuncs
	.long	__Z9NullNinjas
	.long	__Z11DoNinjaPains
	.long	__Z14DoNinjaSpecials
	.long	__Z9CheckFires
	.long	__Z14DoNinjaCeilings
	.align 32
__ZL19saveable_morph_code:
	.long	__Z22DoSectorObjectSetScales
	.long	__Z9DoSOeventss
	.long	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct
	.long	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_
	.long	__Z12MorphTornadoP19SECTOR_OBJECTstruct
	.long	__Z10MorphFloorP19SECTOR_OBJECTstruct
	.long	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii
	.long	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii
	.long	__Z29SOBJ_AlignFloorCeilingToPointP19SECTOR_OBJECTstructiii
	.long	__Z10SpikeFloorP19SECTOR_OBJECTstruct
	.align 32
__ZL22saveable_miscactr_data:
	.long	_ToiletGirlAttrib
	.long	60
	.long	_WashGirlAttrib
	.long	60
	.long	_TrashCanAttrib
	.long	60
	.long	_PachinkoLightAttrib
	.long	60
	.long	_Pachinko1Attrib
	.long	60
	.long	_Pachinko2Attrib
	.long	60
	.long	_Pachinko3Attrib
	.long	60
	.long	_Pachinko4Attrib
	.long	60
	.long	_CarGirlAttrib
	.long	60
	.long	_MechanicGirlAttrib
	.long	60
	.long	_SailorGirlAttrib
	.long	60
	.long	_PruneGirlAttrib
	.long	60
	.long	_s_ToiletGirlStand
	.long	32
	.long	_s_ToiletGirlPain
	.long	32
	.long	_s_ToiletGirlUzi
	.long	256
	.long	_s_WashGirlStand
	.long	32
	.long	_s_WashGirlStandScrub
	.long	32
	.long	_s_WashGirlPain
	.long	32
	.long	_s_WashGirlUzi
	.long	256
	.long	_s_TrashCanStand
	.long	16
	.long	_s_TrashCanPain
	.long	112
	.long	_s_PachinkoLightStand
	.long	16
	.long	_s_PachinkoLightOperate
	.long	96
	.long	_s_Pachinko1Stand
	.long	16
	.long	_s_Pachinko1Operate
	.long	368
	.long	_s_Pachinko2Stand
	.long	16
	.long	_s_Pachinko2Operate
	.long	368
	.long	_s_Pachinko3Stand
	.long	16
	.long	_s_Pachinko3Operate
	.long	368
	.long	_s_Pachinko4Stand
	.long	16
	.long	_s_Pachinko4Operate
	.long	368
	.long	_s_CarGirlStand
	.long	32
	.long	_s_CarGirlPain
	.long	32
	.long	_s_CarGirlUzi
	.long	256
	.long	_s_MechanicGirlStand
	.long	32
	.long	_s_MechanicGirlPain
	.long	32
	.long	_s_MechanicGirlDrill
	.long	32
	.long	_s_SailorGirlStand
	.long	32
	.long	_s_SailorGirlPain
	.long	32
	.long	_s_SailorGirlThrow
	.long	16
	.long	_s_PruneGirlStand
	.long	32
	.long	_s_PruneGirlPain
	.long	32
	.align 32
__ZL22saveable_miscactr_code:
	.long	__Z15SetupToiletGirls
	.long	__Z12DoToiletGirls
	.long	__Z14NullToiletGirls
	.long	__Z13ToiletGirlUzis
	.long	__Z14ToiletGirlPains
	.long	__Z13SetupWashGirls
	.long	__Z10DoWashGirls
	.long	__Z12NullWashGirls
	.long	__Z11WashGirlUzis
	.long	__Z12WashGirlPains
	.long	__Z13SetupTrashCans
	.long	__Z10DoTrashCans
	.long	__Z12TrashCanPains
	.long	__Z18SetupPachinkoLights
	.long	__Z20PachinkoLightOperates
	.long	__Z14SetupPachinko1s
	.long	__Z14SetupPachinko2s
	.long	__Z14SetupPachinko3s
	.long	__Z14SetupPachinko4s
	.long	__Z16PachinkoCheckWins
	.long	__Z16Pachinko1Operates
	.long	__Z12SetupCarGirls
	.long	__Z9DoCarGirls
	.long	__Z11NullCarGirls
	.long	__Z10CarGirlUzis
	.long	__Z11CarGirlPains
	.long	__Z17SetupMechanicGirls
	.long	__Z14DoMechanicGirls
	.long	__Z16NullMechanicGirls
	.long	__Z17MechanicGirlDrills
	.long	__Z16MechanicGirlPains
	.long	__Z15SetupSailorGirls
	.long	__Z12DoSailorGirls
	.long	__Z14NullSailorGirls
	.long	__Z15SailorGirlThrows
	.long	__Z14SailorGirlPains
	.long	__Z14SetupPruneGirls
	.long	__Z11DoPruneGirls
	.long	__Z13NullPruneGirls
	.long	__Z12PruneGirlUzis
	.long	__Z13PruneGirlPains
	.align 32
__ZL18saveable_lava_data:
	.long	_LavaBattle
	.long	32
	.long	_LavaOffense
	.long	24
	.long	_LavaBroadcast
	.long	24
	.long	_LavaSurprised
	.long	16
	.long	_LavaEvasive
	.long	16
	.long	_LavaLostTarget
	.long	16
	.long	_LavaCloseRange
	.long	16
	.long	_LavaPersonality
	.long	32
	.long	_LavaAttrib
	.long	60
	.long	_LavaPissedAttrib
	.long	60
	.long	_s_LavaStand
	.long	80
	.long	_sg_LavaStand
	.long	20
	.long	_s_LavaRun
	.long	320
	.long	_sg_LavaRun
	.long	20
	.long	_s_LavaThrow
	.long	800
	.long	_sg_LavaThrow
	.long	20
	.long	_s_LavaFlame
	.long	640
	.long	_sg_LavaFlame
	.long	20
	.long	_s_LavaDie
	.long	32
	.long	_s_LavaDead
	.long	16
	.long	_sg_LavaDie
	.long	4
	.long	_sg_LavaDead
	.long	4
	.long	_LavaActionSet
	.long	132
	.align 4
__ZL18saveable_lava_code:
	.long	__Z9SetupLavas
	.long	__Z8NullLavas
	.long	__Z10DoLavaMoves
	.align 32
__ZL21saveable_jweapon_data:
	.long	_s_BloodSpray
	.long	80
	.long	_s_PhosphorExp
	.long	336
	.long	_s_NukeMushroom
	.long	320
	.long	_s_RadiationCloud
	.long	320
	.long	_s_ChemBomb
	.long	80
	.long	_s_Caltrops
	.long	48
	.long	_s_CaltropsStick
	.long	16
	.long	_s_CarryFlag
	.long	48
	.long	_s_CarryFlagNoDet
	.long	48
	.long	_s_Flag
	.long	48
	.long	_s_Phosphorus
	.long	32
	.long	_s_BloodSprayChunk
	.long	96
	.long	_s_BloodSprayDrip
	.long	48
	.align 32
__ZL20saveable_hornet_data:
	.long	_HornetBattle
	.long	32
	.long	_HornetOffense
	.long	16
	.long	_HornetBroadcast
	.long	24
	.long	_HornetSurprised
	.long	24
	.long	_HornetEvasive
	.long	16
	.long	_HornetLostTarget
	.long	16
	.long	_HornetCloseRange
	.long	16
	.long	_HornetTouchTarget
	.long	16
	.long	_HornetPersonality
	.long	32
	.long	_HornetAttrib
	.long	60
	.long	_s_HornetRun
	.long	160
	.long	_sg_HornetRun
	.long	20
	.long	_s_HornetStand
	.long	160
	.long	_sg_HornetStand
	.long	20
	.long	_s_HornetDie
	.long	16
	.long	_sg_HornetDie
	.long	4
	.long	_s_HornetDead
	.long	16
	.long	_sg_HornetDead
	.long	4
	.long	_HornetActionSet
	.long	132
	.align 32
__ZL20saveable_hornet_code:
	.long	__Z11SetupHornets
	.long	__Z10NullHornets
	.long	__Z20DoHornetMatchPlayerZs
	.long	__Z16InitHornetCircles
	.long	__Z14DoHornetCircles
	.long	__Z13DoHornetDeaths
	.long	__Z12DoCheckSwarms
	.long	__Z12DoHornetMoves
	.align 32
__ZL18saveable_goro_data:
	.long	_GoroBattle
	.long	24
	.long	_GoroOffense
	.long	24
	.long	_GoroBroadcast
	.long	16
	.long	_GoroSurprised
	.long	16
	.long	_GoroEvasive
	.long	16
	.long	_GoroLostTarget
	.long	16
	.long	_GoroCloseRange
	.long	16
	.long	_GoroPersonality
	.long	32
	.long	_GoroAttrib
	.long	60
	.long	_s_GoroRun
	.long	320
	.long	_sg_GoroRun
	.long	20
	.long	_s_GoroChop
	.long	560
	.long	_sg_GoroChop
	.long	20
	.long	_s_GoroSpell
	.long	800
	.long	_sg_GoroSpell
	.long	20
	.long	_s_GoroStand
	.long	80
	.long	_sg_GoroStand
	.long	20
	.long	_s_GoroPain
	.long	80
	.long	_sg_GoroPain
	.long	20
	.long	_s_GoroDie
	.long	176
	.long	_s_GoroDead
	.long	16
	.long	_sg_GoroDie
	.long	4
	.long	_sg_GoroDead
	.long	4
	.long	_GoroActionSet
	.long	132
	.align 4
__ZL18saveable_goro_code:
	.long	__Z9SetupGoros
	.long	__Z8NullGoros
	.long	__Z10DoGoroPains
	.long	__Z10DoGoroMoves
	.align 32
__ZL22saveable_girlninj_data:
	.long	_GirlNinjaBattle
	.long	16
	.long	_GirlNinjaOffense
	.long	16
	.long	_GirlNinjaBroadcast
	.long	16
	.long	_GirlNinjaSurprised
	.long	16
	.long	_GirlNinjaEvasive
	.long	16
	.long	_GirlNinjaLostTarget
	.long	16
	.long	_GirlNinjaCloseRange
	.long	16
	.long	_GirlNinjaPersonality
	.long	32
	.long	_GirlNinjaAttrib
	.long	60
	.long	_s_GirlNinjaRun
	.long	320
	.long	_sg_GirlNinjaRun
	.long	20
	.long	_s_GirlNinjaStand
	.long	80
	.long	_sg_GirlNinjaStand
	.long	20
	.long	_s_GirlNinjaRise
	.long	240
	.long	_sg_GirlNinjaRise
	.long	20
	.long	_s_GirlNinjaDuck
	.long	160
	.long	_sg_GirlNinjaDuck
	.long	20
	.long	_s_GirlNinjaSit
	.long	80
	.long	_sg_GirlNinjaSit
	.long	20
	.long	_s_GirlNinjaJump
	.long	160
	.long	_sg_GirlNinjaJump
	.long	20
	.long	_s_GirlNinjaFall
	.long	160
	.long	_sg_GirlNinjaFall
	.long	20
	.long	_s_GirlNinjaPain
	.long	80
	.long	_sg_GirlNinjaPain
	.long	20
	.long	_s_GirlNinjaSticky
	.long	480
	.long	_sg_GirlNinjaSticky
	.long	20
	.long	_s_GirlNinjaCrossbow
	.long	400
	.long	_sg_GirlNinjaCrossbow
	.long	20
	.long	_s_GirlNinjaDie
	.long	176
	.long	_s_GirlNinjaDead
	.long	80
	.long	_s_GirlNinjaDeathJump
	.long	48
	.long	_s_GirlNinjaDeathFall
	.long	32
	.long	_sg_GirlNinjaDie
	.long	4
	.long	_sg_GirlNinjaDead
	.long	4
	.long	_sg_GirlNinjaDeathJump
	.long	4
	.long	_sg_GirlNinjaDeathFall
	.long	4
	.long	_GirlNinjaActionSet
	.long	132
	.align 4
__ZL22saveable_girlninj_code:
	.long	__Z14SetupGirlNinjas
	.long	__Z15DoGirlNinjaMoves
	.long	__Z23GirlNinjaJumpActionFuncs
	.long	__Z13NullGirlNinjas
	.long	__Z15DoGirlNinjaPains
	.long	__Z18DoGirlNinjaSpecials
	.align 32
__ZL17saveable_eel_data:
	.long	_EelBattle
	.long	24
	.long	_EelOffense
	.long	24
	.long	_EelBroadcast
	.long	24
	.long	_EelSurprised
	.long	16
	.long	_EelEvasive
	.long	16
	.long	_EelLostTarget
	.long	16
	.long	_EelCloseRange
	.long	16
	.long	_EelTouchTarget
	.long	8
	.long	_EelPersonality
	.long	32
	.long	_EelAttrib
	.long	60
	.long	_s_EelRun
	.long	320
	.long	_sg_EelRun
	.long	20
	.long	_s_EelStand
	.long	80
	.long	_sg_EelStand
	.long	20
	.long	_s_EelAttack
	.long	560
	.long	_sg_EelAttack
	.long	20
	.long	_s_EelDie
	.long	96
	.long	_sg_EelDie
	.long	4
	.long	_s_EelDead
	.long	16
	.long	_sg_EelDead
	.long	4
	.long	_EelActionSet
	.long	132
	.align 4
__ZL17saveable_eel_code:
	.long	__Z9EelCommons
	.long	__Z8SetupEels
	.long	__Z17DoEelMatchPlayerZs
	.long	__Z10DoEelDeaths
	.long	__Z9DoEelMoves
	.align 32
__ZL20saveable_coolie_data:
	.long	_CoolieBattle
	.long	32
	.long	_CoolieOffense
	.long	24
	.long	_CoolieBroadcast
	.long	16
	.long	_CoolieSurprised
	.long	24
	.long	_CoolieEvasive
	.long	16
	.long	_CoolieLostTarget
	.long	16
	.long	_CoolieCloseRange
	.long	16
	.long	_CooliePersonality
	.long	32
	.long	_CoolieAttrib
	.long	60
	.long	_s_CoolieRun
	.long	320
	.long	_sg_CoolieRun
	.long	20
	.long	_s_CoolieCharge
	.long	320
	.long	_sg_CoolieCharge
	.long	20
	.long	_s_CoolieStand
	.long	480
	.long	_sg_CoolieStand
	.long	20
	.long	_s_CooliePain
	.long	80
	.long	_sg_CooliePain
	.long	20
	.long	_s_CoolieDie
	.long	208
	.long	_sg_CoolieDie
	.long	4
	.long	_s_CoolieDead
	.long	16
	.long	_sg_CoolieDead
	.long	4
	.long	_CoolieActionSet
	.long	132
	.align 32
__ZL20saveable_coolie_code:
	.long	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	.long	__Z11SetupCoolies
	.long	__Z10SpawnCoolgs
	.long	__Z10CooliePains
	.long	__Z10NullCoolies
	.long	__Z12DoCoolieMoves
	.long	__Z16InitCoolieCharges
	.long	__Z17DoCoolieWaitBirths
	.align 32
__ZL19saveable_coolg_data:
	.long	_CoolgBattle
	.long	24
	.long	_CoolgOffense
	.long	16
	.long	_CoolgBroadcast
	.long	16
	.long	_CoolgSurprised
	.long	24
	.long	_CoolgEvasive
	.long	16
	.long	_CoolgLostTarget
	.long	16
	.long	_CoolgCloseRange
	.long	16
	.long	_CoolgTouchTarget
	.long	8
	.long	_CoolgPersonality
	.long	32
	.long	_CoolgAttrib
	.long	60
	.long	_s_CoolgRun
	.long	320
	.long	_sg_CoolgRun
	.long	20
	.long	_s_CoolgStand
	.long	80
	.long	_sg_CoolgStand
	.long	20
	.long	_s_CoolgClub
	.long	480
	.long	_sg_CoolgClub
	.long	20
	.long	_s_CoolgAttack
	.long	560
	.long	_sg_CoolgAttack
	.long	20
	.long	_s_CoolgPain
	.long	160
	.long	_sg_CoolgPain
	.long	20
	.long	_s_CoolgDie
	.long	96
	.long	_sg_CoolgDie
	.long	4
	.long	_s_CoolgDead
	.long	32
	.long	_sg_CoolgDead
	.long	4
	.long	_s_CoolgBirth
	.long	176
	.long	_sg_CoolgBirth
	.long	4
	.long	_CoolgActionSet
	.long	132
	.align 32
__ZL19saveable_coolg_code:
	.long	__Z11CoolgCommons
	.long	__Z10SetupCoolgs
	.long	__Z8NewCoolgs
	.long	__Z12DoCoolgBirths
	.long	__Z9NullCoolgs
	.long	__Z19DoCoolgMatchPlayerZs
	.long	__Z15InitCoolgCircles
	.long	__Z13DoCoolgCircles
	.long	__Z12DoCoolgDeaths
	.long	__Z11DoCoolgMoves
	.long	__Z11DoCoolgPains
	.align 32
__ZL19saveable_bunny_data:
	.long	_BunnyBattle
	.long	32
	.long	_BunnyOffense
	.long	24
	.long	_BunnyBroadcast
	.long	24
	.long	_BunnySurprised
	.long	24
	.long	_BunnyEvasive
	.long	24
	.long	_BunnyLostTarget
	.long	16
	.long	_BunnyCloseRange
	.long	8
	.long	_BunnyWander
	.long	8
	.long	_WhiteBunnyPersonality
	.long	32
	.long	_BunnyPersonality
	.long	32
	.long	_WhiteBunnyAttrib
	.long	60
	.long	_BunnyAttrib
	.long	60
	.long	_s_BunnyRun
	.long	480
	.long	_sg_BunnyRun
	.long	20
	.long	_s_BunnyStand
	.long	240
	.long	_sg_BunnyStand
	.long	20
	.long	_s_BunnyScrew
	.long	160
	.long	_sg_BunnyScrew
	.long	20
	.long	_s_BunnySwipe
	.long	640
	.long	_sg_BunnySwipe
	.long	20
	.long	_s_BunnyHeart
	.long	320
	.long	_sg_BunnyHeart
	.long	20
	.long	_s_BunnyPain
	.long	80
	.long	_sg_BunnyPain
	.long	20
	.long	_s_BunnyJump
	.long	480
	.long	_sg_BunnyJump
	.long	20
	.long	_s_BunnyFall
	.long	480
	.long	_sg_BunnyFall
	.long	20
	.long	_s_BunnyJumpAttack
	.long	480
	.long	_sg_BunnyJumpAttack
	.long	20
	.long	_s_BunnyDie
	.long	96
	.long	_sg_BunnyDie
	.long	4
	.long	_s_BunnyDead
	.long	96
	.long	_sg_BunnyDead
	.long	4
	.long	_s_BunnyDeathJump
	.long	16
	.long	_sg_BunnyDeathJump
	.long	4
	.long	_s_BunnyDeathFall
	.long	16
	.long	_sg_BunnyDeathFall
	.long	4
	.long	_BunnyActionSet
	.long	132
	.long	_BunnyWhiteActionSet
	.long	132
	.align 32
__ZL19saveable_bunny_code:
	.long	__Z10SetupBunnys
	.long	__Z18GetBunnyJumpHeightss
	.long	__Z18PickBunnyJumpSpeedsi
	.long	__Z22DoBunnyBeginJumpAttacks
	.long	__Z15DoBunnyMoveJumps
	.long	__Z16DoPickCloseBunnys
	.long	__Z16DoBunnyQuickJumps
	.long	__Z9NullBunnys
	.long	__Z11DoBunnyPains
	.long	__Z15DoBunnyRipHearts
	.long	__Z16DoBunnyStandKills
	.long	__Z10BunnyHatchs
	.long	__Z11BunnyHatch2s
	.long	__Z11DoBunnyMoves
	.long	__Z9BunnySpews
	.long	__Z10DoBunnyEats
	.long	__Z12DoBunnyScrews
	.long	__Z13DoBunnyGrowUps
	.align 4
__ZL16saveable_ai_data:
	.long	_GenericFlaming
	.long	24
	.align 32
__ZL16saveable_ai_code:
	.long	__Z12DebugMoveHits
	.long	__Z17ActorMoveHitReacts
	.long	__Z12ActorFlamings
	.long	__Z15DoActorSetSpeedsh
	.long	__Z12ChooseActionP8DECISION
	.long	__Z18ChooseActionNumberPs
	.long	__Z12DoActorNoisePFisEs
	.long	__Z12CanSeePlayers
	.long	__Z12CanHitPlayers
	.long	__Z22DoActorPickClosePlayers
	.long	__Z18GetPlayerSpriteNums
	.long	__Z14CloseRangeDistP12spritetypev7S0_
	.long	__Z14DoActorOperates
	.long	__Z19DoActorActionDecides
	.long	__Z15InitActorDecides
	.long	__Z13DoActorDecides
	.long	__Z19InitActorAlertNoises
	.long	__Z21InitActorAmbientNoises
	.long	__Z20InitActorAttackNoises
	.long	__Z18InitActorPainNoises
	.long	__Z17InitActorDieNoises
	.long	__Z20InitActorExtra1Noises
	.long	__Z20InitActorExtra2Noises
	.long	__Z20InitActorExtra3Noises
	.long	__Z20InitActorExtra4Noises
	.long	__Z20InitActorExtra5Noises
	.long	__Z20InitActorExtra6Noises
	.long	__Z19InitActorMoveClosers
	.long	__Z21DoActorCantMoveClosers
	.long	__Z17DoActorMoveClosers
	.long	__Z17FindTrackToPlayerP4USER
	.long	__Z23FindTrackAwayFromPlayerP4USER
	.long	__Z15FindWanderTrackP4USER
	.long	__Z16InitActorRunAways
	.long	__Z18InitActorRunTowards
	.long	__Z15InitActorAttacks
	.long	__Z13DoActorAttacks
	.long	__Z14InitActorEvades
	.long	__Z21InitActorWanderArounds
	.long	__Z19InitActorFindPlayers
	.long	__Z13InitActorDucks
	.long	__Z11DoActorDucks
	.long	__Z15DoActorMoveJumps
	.long	__Z12FindNewAnglesai
	.long	__Z19InitActorRepositions
	.long	__Z17DoActorRepositions
	.long	__Z14InitActorPauses
	.long	__Z12DoActorPauses
	.align 32
__ZL19saveable_actor_code:
	.long	__Z13DoScaleSprites
	.long	__Z10DoActorDiess
	.long	__Z15DoDebrisCurrentP12spritetypev7
	.long	__Z19DoActorSectorDamages
	.long	__Z13DoActorDebriss
	.long	__Z9DoFireFlys
	.long	__Z21DoGenerateSewerDebriss
	.long	__Z16KeepActorOnFloors
	.long	__Z17DoActorBeginSlidessss
	.long	__Z12DoActorSlides
	.long	__Z16DoActorBeginJumps
	.long	__Z11DoActorJumps
	.long	__Z16DoActorBeginFalls
	.long	__Z11DoActorFalls
	.long	__Z15DoActorStopFalls
	.long	__Z16DoActorDeathMoves
	.long	__Z11DoBeginJumps
	.long	__Z6DoJumps
	.long	__Z11DoBeginFalls
	.long	__Z6DoFalls
	.align 32
_s_Ripper2RunFast:
	.word	4340
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+16
	.word	4341
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+32
	.word	4342
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+48
	.word	4343
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast
	.word	4344
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+80
	.word	4345
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+96
	.word	4346
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+112
	.word	4347
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+64
	.word	4348
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+144
	.word	4349
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+160
	.word	4350
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+176
	.word	4351
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+128
	.word	4352
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+208
	.word	4353
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+224
	.word	4354
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+240
	.word	4355
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+192
	.word	4356
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+272
	.word	4357
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+288
	.word	4358
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+304
	.word	4359
	.space 2
	.long	262158
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2RunFast+256
	.align 32
_s_Ripper2HangFall:
	.word	4376
	.space 2
	.long	25
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangFall
	.space 80
	.word	4380
	.space 2
	.long	25
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangFall+96
	.space 80
	.word	4384
	.space 2
	.long	25
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangFall+192
	.space 80
	.word	4388
	.space 2
	.long	25
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangFall+288
	.space 80
	.word	4392
	.space 2
	.long	25
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangFall+384
	.space 80
	.align 32
_s_Ripper2HangJump:
	.word	4374
	.space 2
	.long	20
	.long	__Z11NullRipper2s
	.long	_s_Ripper2HangJump+16
	.word	4375
	.space 2
	.long	20
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangJump+16
	.space 64
	.word	4378
	.space 2
	.long	20
	.long	__Z11NullRipper2s
	.long	_s_Ripper2HangJump+112
	.word	4379
	.space 2
	.long	20
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangJump+112
	.space 64
	.word	4382
	.space 2
	.long	20
	.long	__Z11NullRipper2s
	.long	_s_Ripper2HangJump+208
	.word	4383
	.space 2
	.long	20
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangJump+208
	.space 64
	.word	4386
	.space 2
	.long	20
	.long	__Z11NullRipper2s
	.long	_s_Ripper2HangJump+304
	.word	4387
	.space 2
	.long	20
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangJump+304
	.space 64
	.word	4390
	.space 2
	.long	20
	.long	__Z11NullRipper2s
	.long	_s_Ripper2HangJump+400
	.word	4391
	.space 2
	.long	20
	.long	__Z15DoRipper2HangJFs
	.long	_s_Ripper2HangJump+400
	.space 64
	.align 32
_s_Ripper2Hang:
	.word	4369
	.space 2
	.long	14
	.long	__Z13DoRipper2Hangs
	.long	_s_Ripper2Hang
	.space 48
	.word	4370
	.space 2
	.long	14
	.long	__Z13DoRipper2Hangs
	.long	_s_Ripper2Hang+64
	.space 48
	.word	4371
	.space 2
	.long	14
	.long	__Z13DoRipper2Hangs
	.long	_s_Ripper2Hang+128
	.space 48
	.word	4372
	.space 2
	.long	14
	.long	__Z13DoRipper2Hangs
	.long	_s_Ripper2Hang+192
	.space 48
	.word	4373
	.space 2
	.long	14
	.long	__Z13DoRipper2Hangs
	.long	_s_Ripper2Hang+256
	.space 48
	.align 32
_s_Ripper2Heart:
	.word	4422
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+16
	.word	4423
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart
	.space 32
	.word	4422
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+80
	.word	4423
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+64
	.space 32
	.word	4422
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+144
	.word	4423
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+128
	.space 32
	.word	4422
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+208
	.word	4423
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+192
	.space 32
	.word	4422
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+272
	.word	4423
	.space 2
	.long	20
	.long	__Z19DoRipper2StandHearts
	.long	_s_Ripper2Heart+256
	.space 32
	.align 32
_s_Ripper2Kong:
	.word	4360
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+16
	.word	4360
	.space 2
	.long	65536
	.long	__Z12ChestRipper2s
	.long	_s_Ripper2Kong+32
	.word	4361
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+48
	.word	4362
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+64
	.word	4363
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+80
	.word	4363
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Kong+96
	.word	4360
	.space 2
	.long	18
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Kong+96
	.word	4363
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+128
	.word	4360
	.space 2
	.long	65536
	.long	__Z12ChestRipper2s
	.long	_s_Ripper2Kong+144
	.word	4364
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+160
	.word	4365
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+176
	.word	4366
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+192
	.word	4366
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Kong+208
	.word	4363
	.space 2
	.long	18
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Kong+208
	.word	4366
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+240
	.word	4360
	.space 2
	.long	65536
	.long	__Z12ChestRipper2s
	.long	_s_Ripper2Kong+256
	.word	4367
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+272
	.word	4368
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+288
	.word	4369
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+304
	.word	4369
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Kong+320
	.word	4366
	.space 2
	.long	18
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Kong+320
	.word	4369
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+352
	.word	4360
	.space 2
	.long	65536
	.long	__Z12ChestRipper2s
	.long	_s_Ripper2Kong+368
	.word	4370
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+384
	.word	4371
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+400
	.word	4372
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+416
	.word	4372
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Kong+432
	.word	4369
	.space 2
	.long	18
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Kong+432
	.word	4372
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+464
	.word	4360
	.space 2
	.long	65536
	.long	__Z12ChestRipper2s
	.long	_s_Ripper2Kong+480
	.word	4373
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+496
	.word	4374
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+512
	.word	4375
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Kong+528
	.word	4375
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Kong+544
	.word	4372
	.space 2
	.long	18
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Kong+544
	.align 32
_s_Ripper2JumpAttack:
	.word	4374
	.space 2
	.long	35
	.long	__Z11NullRipper2s
	.long	_s_Ripper2JumpAttack+16
	.word	4374
	.space 2
	.long	65536
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	_s_Ripper2JumpAttack+32
	.word	4376
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+48
	.word	4375
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+48
	.space 32
	.word	4378
	.space 2
	.long	35
	.long	__Z11NullRipper2s
	.long	_s_Ripper2JumpAttack+112
	.word	4378
	.space 2
	.long	65536
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	_s_Ripper2JumpAttack+128
	.word	4380
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+144
	.word	4379
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+144
	.space 32
	.word	4382
	.space 2
	.long	35
	.long	__Z11NullRipper2s
	.long	_s_Ripper2JumpAttack+208
	.word	4382
	.space 2
	.long	65536
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	_s_Ripper2JumpAttack+224
	.word	4384
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+240
	.word	4379
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+240
	.space 32
	.word	4386
	.space 2
	.long	35
	.long	__Z11NullRipper2s
	.long	_s_Ripper2JumpAttack+304
	.word	4386
	.space 2
	.long	65536
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	_s_Ripper2JumpAttack+320
	.word	4388
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+336
	.word	4379
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+336
	.space 32
	.word	4390
	.space 2
	.long	35
	.long	__Z11NullRipper2s
	.long	_s_Ripper2JumpAttack+400
	.word	4390
	.space 2
	.long	65536
	.long	__Z24DoRipper2BeginJumpAttacks
	.long	_s_Ripper2JumpAttack+416
	.word	4392
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+432
	.word	4379
	.space 2
	.long	35
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2JumpAttack+432
	.space 32
	.align 32
_s_Ripper2Swipe:
	.word	4394
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+16
	.word	4395
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+32
	.word	4395
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+48
	.word	4396
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+64
	.word	4397
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+80
	.word	4397
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+96
	.word	4397
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Swipe+112
	.word	4397
	.space 2
	.long	14
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Swipe+112
	.word	4398
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+144
	.word	4399
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+160
	.word	4399
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+176
	.word	4400
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+192
	.word	4401
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+208
	.word	4401
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+224
	.word	4401
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Swipe+240
	.word	4401
	.space 2
	.long	14
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Swipe+240
	.word	4402
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+272
	.word	4403
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+288
	.word	4403
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+304
	.word	4404
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+320
	.word	4405
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+336
	.word	4405
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+352
	.word	4405
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Swipe+368
	.word	4405
	.space 2
	.long	14
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Swipe+368
	.word	4406
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+400
	.word	4407
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+416
	.word	4407
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+432
	.word	4408
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+448
	.word	4409
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+464
	.word	4409
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+480
	.word	4409
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Swipe+496
	.word	4409
	.space 2
	.long	14
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Swipe+496
	.word	4410
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+528
	.word	4411
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+544
	.word	4411
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+560
	.word	4412
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+576
	.word	4413
	.space 2
	.long	14
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Swipe+592
	.word	4413
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_Ripper2Swipe+608
	.word	4413
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_Ripper2Swipe+624
	.word	4413
	.space 2
	.long	14
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Swipe+624
	.align 4
_s_Ripper2DeathFall:
	.word	4415
	.space 2
	.long	18
	.long	__Z16DoActorDeathMoves
	.long	_s_Ripper2DeathFall
	.align 4
_s_Ripper2DeathJump:
	.word	4414
	.space 2
	.long	18
	.long	__Z16DoActorDeathMoves
	.long	_s_Ripper2DeathJump
	.globl	_s_Ripper2Dead
	.align 32
_s_Ripper2Dead:
	.word	4414
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4415
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4416
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4417
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4418
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4419
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4420
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4421
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4421
	.space 2
	.long	8
	.long	__Z13DoActorDebriss
	.space 4
	.align 32
_s_Ripper2Pain:
	.word	4414
	.space 2
	.long	38
	.long	__Z13DoRipper2Pains
	.long	_s_Ripper2Pain
	.word	4414
	.space 2
	.long	38
	.long	__Z13DoRipper2Pains
	.long	_s_Ripper2Pain+16
	.word	4414
	.space 2
	.long	38
	.long	__Z13DoRipper2Pains
	.long	_s_Ripper2Pain+32
	.word	4414
	.space 2
	.long	38
	.long	__Z13DoRipper2Pains
	.long	_s_Ripper2Pain+48
	.word	4414
	.space 2
	.long	38
	.long	__Z13DoRipper2Pains
	.long	_s_Ripper2Pain+64
	.align 32
_s_Ripper2Fall:
	.word	4376
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Fall
	.space 80
	.word	4380
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Fall+96
	.space 80
	.word	4384
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Fall+192
	.space 80
	.word	4388
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Fall+288
	.space 80
	.word	4392
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Fall+384
	.space 80
	.align 32
_s_Ripper2Jump:
	.word	4374
	.space 2
	.long	25
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Jump+16
	.word	4375
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Jump+16
	.space 64
	.word	4378
	.space 2
	.long	25
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Jump+112
	.word	4379
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Jump+112
	.space 64
	.word	4382
	.space 2
	.long	25
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Jump+208
	.word	4383
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Jump+208
	.space 64
	.word	4386
	.space 2
	.long	25
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Jump+304
	.word	4387
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Jump+304
	.space 64
	.word	4390
	.space 2
	.long	25
	.long	__Z11NullRipper2s
	.long	_s_Ripper2Jump+400
	.word	4391
	.space 2
	.long	25
	.long	__Z17DoRipper2MoveJumps
	.long	_s_Ripper2Jump+400
	.space 64
	.align 32
_s_Ripper2Stand:
	.word	4377
	.space 2
	.long	12
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Stand
	.word	4381
	.space 2
	.long	12
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Stand+16
	.word	4385
	.space 2
	.long	12
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Stand+32
	.word	4389
	.space 2
	.long	12
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Stand+48
	.word	4393
	.space 2
	.long	12
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Stand+64
	.align 4
_Ripper2CloseRange:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_Ripper2LostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.align 4
_Ripper2Evasive:
	.word	10
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z17InitRipper2Charges
	.align 4
_Ripper2Surprised:
	.word	40
	.space 2
	.long	__Z15InitRipper2Hangs
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 4
_Ripper2Broadcast:
	.word	3
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.align 32
_Ripper2Offense:
	.word	789
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	790
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	800
	.space 2
	.long	__Z15InitRipper2Hangs
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 32
_Ripper2Battle:
	.word	879
	.space 2
	.long	__Z17InitRipper2Charges
	.word	883
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	900
	.space 2
	.long	__Z15InitRipper2Hangs
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.align 4
_sg_Ripper2Hang:
	.long	_s_Ripper2Hang
	.long	_s_Ripper2Hang+64
	.long	_s_Ripper2Hang+128
	.long	_s_Ripper2Hang+192
	.long	_s_Ripper2Hang+256
	.align 4
_sg_Ripper2Kong:
	.long	_s_Ripper2Kong
	.long	_s_Ripper2Kong+112
	.long	_s_Ripper2Kong+224
	.long	_s_Ripper2Kong+336
	.long	_s_Ripper2Kong+448
	.align 4
_sg_Ripper2Swipe:
	.long	_s_Ripper2Swipe
	.long	_s_Ripper2Swipe+128
	.long	_s_Ripper2Swipe+256
	.long	_s_Ripper2Swipe+384
	.long	_s_Ripper2Swipe+512
	.align 4
_sg_Ripper2DeathFall:
	.long	_s_Ripper2DeathFall
	.align 4
_sg_Ripper2DeathJump:
	.long	_s_Ripper2DeathJump
	.align 4
_sg_Ripper2Dead:
	.long	_s_Ripper2Dead
	.align 4
_sg_Ripper2Die:
	.long	_s_Ripper2Die
	.align 4
_sg_Ripper2Pain:
	.long	_s_Ripper2Pain
	.long	_s_Ripper2Pain+16
	.long	_s_Ripper2Pain+32
	.long	_s_Ripper2Pain+48
	.long	_s_Ripper2Pain+64
	.align 4
_sg_Ripper2Fall:
	.long	_s_Ripper2Fall
	.long	_s_Ripper2Fall+96
	.long	_s_Ripper2Fall+192
	.long	_s_Ripper2Fall+288
	.long	_s_Ripper2Fall+384
	.align 4
_sg_Ripper2Jump:
	.long	_s_Ripper2Jump
	.long	_s_Ripper2Jump+96
	.long	_s_Ripper2Jump+192
	.long	_s_Ripper2Jump+288
	.long	_s_Ripper2Jump+384
	.align 4
_sg_Ripper2Stand:
	.long	_s_Ripper2Stand
	.long	_s_Ripper2Stand+16
	.long	_s_Ripper2Stand+32
	.long	_s_Ripper2Stand+48
	.long	_s_Ripper2Stand+64
	.align 32
_s_RipperHangFall:
	.word	1621
	.space 2
	.long	25
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangFall
	.space 80
	.word	1623
	.space 2
	.long	25
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangFall+96
	.space 80
	.word	1625
	.space 2
	.long	25
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangFall+192
	.space 80
	.word	1627
	.space 2
	.long	25
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangFall+288
	.space 80
	.word	1629
	.space 2
	.long	25
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangFall+384
	.space 80
	.align 32
_s_RipperHangJump:
	.word	1620
	.space 2
	.long	20
	.long	__Z10NullRippers
	.long	_s_RipperHangJump+16
	.word	1621
	.space 2
	.long	20
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangJump+16
	.space 64
	.word	1622
	.space 2
	.long	20
	.long	__Z10NullRippers
	.long	_s_RipperHangJump+112
	.word	1623
	.space 2
	.long	20
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangJump+112
	.space 64
	.word	1624
	.space 2
	.long	20
	.long	__Z10NullRippers
	.long	_s_RipperHangJump+208
	.word	1625
	.space 2
	.long	20
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangJump+208
	.space 64
	.word	1626
	.space 2
	.long	20
	.long	__Z10NullRippers
	.long	_s_RipperHangJump+304
	.word	1627
	.space 2
	.long	20
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangJump+304
	.space 64
	.word	1628
	.space 2
	.long	20
	.long	__Z10NullRippers
	.long	_s_RipperHangJump+400
	.word	1629
	.space 2
	.long	20
	.long	__Z14DoRipperHangJFs
	.long	_s_RipperHangJump+400
	.space 64
.lcomm _scriptline,4,4
	.align 4
__ZZ21Saveable_Init_DynamicvE19saveable_build_data:
	.space 4
	.long	163840
	.space 4
	.long	720896
	.space 4
	.long	524288
.lcomm __ZGVZ21Saveable_Init_DynamicvE19saveable_build_data,8,8
	.align 4
_saveable_sector:
	.long	__ZL20saveable_sector_code
	.long	43
	.long	0
	.long	0
	.align 4
_saveable_zombie:
	.long	__ZL20saveable_zombie_code
	.long	6
	.long	__ZL20saveable_zombie_data
	.long	30
	.align 4
_saveable_zilla:
	.long	__ZL19saveable_zilla_code
	.long	5
	.long	__ZL19saveable_zilla_data
	.long	26
	.align 4
_saveable_weapon:
	.long	__ZL20saveable_weapon_code
	.long	236
	.long	__ZL20saveable_weapon_data
	.long	163
	.align 4
_saveable_wallmove:
	.long	__ZL22saveable_wallmove_code
	.long	3
	.long	0
	.long	0
	.align 4
_saveable_vator:
	.long	__ZL19saveable_vator_code
	.long	12
	.long	0
	.long	0
	.align 4
_saveable_track:
	.long	__ZL19saveable_track_code
	.long	5
	.long	0
	.long	0
	.align 4
_saveable_sumo:
	.long	__ZL18saveable_sumo_code
	.long	8
	.long	__ZL18saveable_sumo_data
	.long	27
	.align 4
_saveable_sprite:
	.long	__ZL20saveable_sprite_code
	.long	18
	.long	__ZL20saveable_sprite_data
	.long	64
	.align 4
_saveable_spike:
	.long	__ZL19saveable_spike_code
	.long	12
	.long	0
	.long	0
	.align 4
_saveable_slidor:
	.long	__ZL20saveable_slidor_code
	.long	12
	.long	0
	.long	0
	.align 4
_saveable_skull:
	.long	__ZL19saveable_skull_code
	.long	14
	.long	__ZL19saveable_skull_data
	.long	16
	.align 4
_saveable_skel:
	.long	__ZL18saveable_skel_code
	.long	7
	.long	__ZL18saveable_skel_data
	.long	24
	.align 4
_saveable_serp:
	.long	__ZL18saveable_serp_code
	.long	4
	.long	__ZL18saveable_serp_data
	.long	29
	.align 4
_saveable_rotator:
	.long	__ZL21saveable_rotator_code
	.long	11
	.long	0
	.long	0
	.align 4
_saveable_ripper2:
	.long	__ZL21saveable_ripper2_code
	.long	16
	.long	__ZL21saveable_ripper2_data
	.long	45
	.align 4
_saveable_ripper:
	.long	__ZL20saveable_ripper_code
	.long	17
	.long	__ZL20saveable_ripper_data
	.long	43
	.align 4
_saveable_quake:
	.long	__ZL19saveable_quake_code
	.long	13
	.long	0
	.long	0
	.align 4
_saveable_player:
	.long	__ZL20saveable_player_code
	.long	33
	.long	__ZL20saveable_player_data
	.long	31
	.align 4
_saveable_panel:
	.long	__ZL19saveable_panel_code
	.long	5
	.long	__ZL19saveable_panel_data
	.long	118
	.align 4
_saveable_ninja:
	.long	__ZL19saveable_ninja_code
	.long	11
	.long	__ZL19saveable_ninja_data
	.long	79
	.align 4
_saveable_morph:
	.long	__ZL19saveable_morph_code
	.long	10
	.long	0
	.long	0
	.align 4
_saveable_miscactr:
	.long	__ZL22saveable_miscactr_code
	.long	41
	.long	__ZL22saveable_miscactr_data
	.long	42
	.align 4
_saveable_lava:
	.long	__ZL18saveable_lava_code
	.long	3
	.long	__ZL18saveable_lava_data
	.long	23
	.align 4
_saveable_jweapon:
	.long	0
	.long	0
	.long	__ZL21saveable_jweapon_data
	.long	13
	.align 4
_saveable_hornet:
	.long	__ZL20saveable_hornet_code
	.long	8
	.long	__ZL20saveable_hornet_data
	.long	19
	.align 4
_saveable_goro:
	.long	__ZL18saveable_goro_code
	.long	4
	.long	__ZL18saveable_goro_data
	.long	24
	.align 4
_saveable_girlninj:
	.long	__ZL22saveable_girlninj_code
	.long	6
	.long	__ZL22saveable_girlninj_data
	.long	38
	.align 4
_saveable_eel:
	.long	__ZL17saveable_eel_code
	.long	5
	.long	__ZL17saveable_eel_data
	.long	21
	.align 4
_saveable_coolie:
	.long	__ZL20saveable_coolie_code
	.long	8
	.long	__ZL20saveable_coolie_data
	.long	22
	.align 4
_saveable_coolg:
	.long	__ZL19saveable_coolg_code
	.long	11
	.long	__ZL19saveable_coolg_data
	.long	27
	.align 4
_saveable_bunny:
	.long	__ZL19saveable_bunny_code
	.long	18
	.long	__ZL19saveable_bunny_data
	.long	40
.lcomm _saveable_build,16,4
	.align 4
_saveable_ai:
	.long	__ZL16saveable_ai_code
	.long	48
	.long	__ZL16saveable_ai_data
	.long	1
	.align 4
_saveable_actor:
	.long	__ZL19saveable_actor_code
	.long	20
	.long	0
	.long	0
	.globl	_SongTrack
	.bss
_SongTrack:
	.space 1
	.section .rdata,"dr"
	.align 4
_otlist:
	.long	_orgwalllist
	.long	_orgwalloverlist
	.long	_orgsectorceilinglist
	.long	_orgsectorfloorlist
	.globl	_pskybits_override
	.data
	.align 2
_pskybits_override:
	.word	-1
	.globl	_parallaxyscale_override
	.bss
	.align 4
_parallaxyscale_override:
	.space 4
	.globl	_parallaxyoffs_override
	.align 4
_parallaxyoffs_override:
	.space 4
	.globl	_numframes
	.align 4
_numframes:
	.space 4
	.globl	_Anim
	.align 32
_Anim:
	.space 6144
	.globl	_SpringBoard
	.align 32
_SpringBoard:
	.space 80
	.globl	_SineWall
	.align 32
_SineWall:
	.space 10240
	.globl	_SineWaveFloor
	.align 32
_SineWaveFloor:
	.space 2520
	.globl	_tailspritefree
	.align 2
_tailspritefree:
	.space 2
	.globl	_prevspritestat
	.align 32
_prevspritestat:
	.space 32768
	.globl	_prevspritesect
	.align 32
_prevspritesect:
	.space 32768
.lcomm __ZL10nummodules,4,4
.lcomm __ZL15saveablemodules,140,32
	.globl	__ZL8numlumps.lto_priv.0
	.align 4
__ZL8numlumps.lto_priv.0:
	.space 4
	.globl	__ZL8lumpinfo.lto_priv.0
	.align 4
__ZL8lumpinfo.lto_priv.0:
	.space 4
	.globl	__ZL9lumpcache.lto_priv.0
	.align 4
__ZL9lumpcache.lto_priv.0:
	.space 4
.lcomm _save,4004,32
.lcomm _GlobStackSect,4,4
	.data
	.align 4
_sg_Ripper2RunFast:
	.long	_s_Ripper2RunFast
	.long	_s_Ripper2RunFast+64
	.long	_s_Ripper2RunFast+128
	.long	_s_Ripper2RunFast+192
	.long	_s_Ripper2RunFast+256
.lcomm __ZZ19DoRipper2StandHeartsE14riphearthandle,4,4
	.align 4
_sg_Ripper2Heart:
	.long	_s_Ripper2Heart
	.long	_s_Ripper2Heart+64
	.long	_s_Ripper2Heart+128
	.long	_s_Ripper2Heart+192
	.long	_s_Ripper2Heart+256
	.align 4
_sg_Ripper2JumpAttack:
	.long	_s_Ripper2JumpAttack
	.long	_s_Ripper2JumpAttack+96
	.long	_s_Ripper2JumpAttack+192
	.long	_s_Ripper2JumpAttack+288
	.long	_s_Ripper2JumpAttack+384
	.align 4
_sg_Ripper2HangFall:
	.long	_s_Ripper2HangFall
	.long	_s_Ripper2HangFall+96
	.long	_s_Ripper2HangFall+192
	.long	_s_Ripper2HangFall+288
	.long	_s_Ripper2HangFall+384
	.align 4
_sg_Ripper2HangJump:
	.long	_s_Ripper2HangJump
	.long	_s_Ripper2HangJump+96
	.long	_s_Ripper2HangJump+192
	.long	_s_Ripper2HangJump+288
	.long	_s_Ripper2HangJump+384
	.align 32
_Ripper2ActionSet:
	.long	_sg_Ripper2Stand
	.long	_sg_Ripper2Run
	.long	_sg_Ripper2Jump
	.long	_sg_Ripper2Fall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_Ripper2Pain
	.long	_sg_Ripper2Die
	.long	0
	.long	_sg_Ripper2Dead
	.long	_sg_Ripper2DeathJump
	.long	_sg_Ripper2DeathFall
	.long	_sg_Ripper2Swipe
	.space 4
	.word	1024
	.space 2
	.long	_sg_Ripper2JumpAttack
	.long	_sg_Ripper2Kong
	.space 16
	.word	500
	.word	1024
	.space 8
	.long	_sg_Ripper2Heart
	.long	_sg_Ripper2Hang
	.long	0
	.long	0
	.align 32
_Ripper2Personality:
	.long	_Ripper2Battle
	.long	_Ripper2Offense
	.long	_Ripper2Broadcast
	.long	_Ripper2Surprised
	.long	_Ripper2Evasive
	.long	_Ripper2LostTarget
	.long	_Ripper2CloseRange
	.long	_Ripper2CloseRange
	.align 32
_Ripper2BrownActionSet:
	.long	_sg_Ripper2Stand
	.long	_sg_Ripper2Run
	.long	_sg_Ripper2Jump
	.long	_sg_Ripper2Fall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_Ripper2Pain
	.long	_sg_Ripper2Die
	.long	0
	.long	_sg_Ripper2Dead
	.long	_sg_Ripper2DeathJump
	.long	_sg_Ripper2DeathFall
	.long	_sg_Ripper2Swipe
	.space 4
	.word	1024
	.space 2
	.long	_sg_Ripper2JumpAttack
	.long	_sg_Ripper2Kong
	.space 16
	.word	400
	.word	1024
	.space 8
	.long	_sg_Ripper2Heart
	.long	_sg_Ripper2Hang
	.long	0
	.long	0
	.align 4
_sg_Ripper2Run:
	.long	_s_Ripper2Run
	.long	_s_Ripper2Run+64
	.long	_s_Ripper2Run+128
	.long	_s_Ripper2Run+192
	.long	_s_Ripper2Run+256
	.globl	_s_Ripper2Die
	.align 32
_s_Ripper2Die:
	.word	4414
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4415
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4416
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4417
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4418
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4419
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4420
	.space 2
	.long	18
	.long	__Z11NullRipper2s
	.space 4
	.word	4421
	.space 2
	.long	18
	.long	__Z13DoActorDebriss
	.space 4
	.align 32
_Ripper2Attrib:
	.word	100
	.word	120
	.word	300
	.word	380
	.ascii "\5\0\376\374"
	.byte	3
	.space 3
	.long	313
	.long	314
	.long	315
	.long	316
	.long	317
	.long	318
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.align 32
_s_Ripper2Run:
	.word	4320
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+16
	.word	4321
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+32
	.word	4322
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+48
	.word	4323
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run
	.word	4324
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+80
	.word	4325
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+96
	.word	4326
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+112
	.word	4327
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+64
	.word	4328
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+144
	.word	4329
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+160
	.word	4330
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+176
	.word	4331
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+128
	.word	4332
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+208
	.word	4333
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+224
	.word	4334
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+240
	.word	4335
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+192
	.word	4336
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+272
	.word	4337
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+288
	.word	4338
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+304
	.word	4339
	.space 2
	.long	262160
	.long	__Z13DoRipper2Moves
	.long	_s_Ripper2Run+256
	.align 4
_sg_RipperHangFall:
	.long	_s_RipperHangFall
	.long	_s_RipperHangFall+96
	.long	_s_RipperHangFall+192
	.long	_s_RipperHangFall+288
	.long	_s_RipperHangFall+384
	.align 4
_sg_RipperHangJump:
	.long	_s_RipperHangJump
	.long	_s_RipperHangJump+96
	.long	_s_RipperHangJump+192
	.long	_s_RipperHangJump+288
	.long	_s_RipperHangJump+384
	.section .rdata,"dr"
	.align 4
LC0:
	.long	_saveable_build
	.align 4
LC1:
	.long	_saveable_actor
	.align 4
LC2:
	.long	_saveable_eel
	.align 4
LC3:
	.long	_saveable_coolg
	.align 4
LC4:
	.long	_saveable_jweapon
	.align 4
LC5:
	.long	_saveable_goro
	.align 4
LC6:
	.long	_saveable_ninja
	.align 4
LC7:
	.long	_saveable_miscactr
	.align 4
LC8:
	.long	_saveable_ripper
	.align 4
LC9:
	.long	_saveable_player
	.align 4
LC10:
	.long	_saveable_skel
	.align 4
LC11:
	.long	_saveable_rotator
	.align 4
LC12:
	.long	_saveable_sprite
	.align 4
LC13:
	.long	_saveable_slidor
	.align 4
LC14:
	.long	_saveable_wallmove
	.align 4
LC15:
	.long	_saveable_track
	.align 4
LC16:
	.long	_saveable_vator
	.align 4
LC17:
	.long	_saveable_zilla
	.align 8
LC32:
	.long	0
	.long	3
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13AnimateSwitchP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z17DoActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z10move_actorsiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z16PickJumpMaxSpeedss;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13DoScaleSprites;	.scl	2;	.type	32;	.endef
	.def	__Z12DoCheckSwarms;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	__Z16setinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z17stopinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	_klzw_write_compressed.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_klzw_read_compressed.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZL16CompareBreakInfoPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_bsearch;	.scl	2;	.type	32;	.endef
	.def	__Z11GetSectUsers;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupRippers;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorMoveJumps;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	__Z4WarpPiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	__Z9WarpPlanePiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.4;	.scl	2;	.type	32;	.endef
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getzrange;	.scl	2;	.type	32;	.endef
	.def	__Z14getzrangepointiiisPiS_S_S_.part.0;	.scl	2;	.type	32;	.endef
	.def	_renderDrawRoomsQ16.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14analyzespritesiiih;	.scl	2;	.type	32;	.endef
	.def	__Z19post_analyzespritesv;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_renderSetTarget;	.scl	2;	.type	32;	.endef
	.def	__Z10drawscreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_renderRestoreTarget;	.scl	2;	.type	32;	.endef
	.def	__Z11CON_MessagePKcz;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14TerminateLevelv;	.scl	2;	.type	32;	.endef
	.def	__Z17Terminate3DSoundsv;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	__Z8StopSongv.part.0;	.scl	2;	.type	32;	.endef
	.def	_kdfread.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
	.def	__Z10DoTheCachev;	.scl	2;	.type	32;	.endef
	.def	__Z11InitNetVarsv;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	_MV_SetVolume;	.scl	2;	.type	32;	.endef
	.def	__Z13SetSongVolumei;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerDivePaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupPreCachev.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z17StartAmbientSoundv;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__Z12DoZombieMoves;	.scl	2;	.type	32;	.endef
	.def	__Z10NullZombies;	.scl	2;	.type	32;	.endef
	.def	__Z9CheckFires;	.scl	2;	.type	32;	.endef
	.def	__Z12InitEnemyUzis;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z13InitFlashBombs;	.scl	2;	.type	32;	.endef
	.def	__Z17InitSpriteGrenades;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyRails;	.scl	2;	.type	32;	.endef
	.def	__Z15InitEnemyRockets;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyNukes;	.scl	2;	.type	32;	.endef
	.def	__Z12DoZombiePains;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z13InitActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z16DoZillaDeathMelts;	.scl	2;	.type	32;	.endef
	.def	__Z9NullZillas;	.scl	2;	.type	32;	.endef
	.def	__Z15InitZillaRockets;	.scl	2;	.type	32;	.endef
	.def	__Z13InitZillaRails;	.scl	2;	.type	32;	.endef
	.def	__Z11DoZillaMoves;	.scl	2;	.type	32;	.endef
	.def	__Z12DoZillaStomps;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
	.def	__Z11DoWallBloods;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z12DoFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z15DoShrapJumpFalls;	.scl	2;	.type	32;	.endef
	.def	__Z13DoTracerShraps;	.scl	2;	.type	32;	.endef
	.def	__Z19DoFastShrapJumpFalls;	.scl	2;	.type	32;	.endef
	.def	__Z13DoVomitSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z7DoVomits;	.scl	2;	.type	32;	.endef
	.def	__Z13DoMirvMissiles;	.scl	2;	.type	32;	.endef
	.def	__Z6DoMirvs;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBloodWorms;	.scl	2;	.type	32;	.endef
	.def	__Z8DoNapalms;	.scl	2;	.type	32;	.endef
	.def	__Z6DoRings;	.scl	2;	.type	32;	.endef
	.def	__Z10DoFireballs;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBreakFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z12DoDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSectorExps;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnShrapXs;	.scl	2;	.type	32;	.endef
	.def	__Z15DoExpDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z9DoMineExps;	.scl	2;	.type	32;	.endef
	.def	__Z13DoMineExpMines;	.scl	2;	.type	32;	.endef
	.def	__Z20SpawnGrenadeSmallExps;	.scl	2;	.type	32;	.endef
	.def	__Z13DoShrapDamages;	.scl	2;	.type	32;	.endef
	.def	__Z9DoElectros;	.scl	2;	.type	32;	.endef
	.def	__Z12DoTeleRippers;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlasmaDones;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlasmaFountains;	.scl	2;	.type	32;	.endef
	.def	__Z8DoPlasmas;	.scl	2;	.type	32;	.endef
	.def	__Z11DoCoolgDrips;	.scl	2;	.type	32;	.endef
	.def	__Z11DoCoolgFires;	.scl	2;	.type	32;	.endef
	.def	__Z14DoBoltShrapnels;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBoltFatMans;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBoltSeekers;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBoltThinMans;	.scl	2;	.type	32;	.endef
	.def	__Z11DoMicroMinis;	.scl	2;	.type	32;	.endef
	.def	__Z7DoMicros;	.scl	2;	.type	32;	.endef
	.def	__Z7DoLasers;	.scl	2;	.type	32;	.endef
	.def	__Z6DoRails;	.scl	2;	.type	32;	.endef
	.def	__Z8DoRockets;	.scl	2;	.type	32;	.endef
	.def	__Z7DoSpears;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSerpMeteors;	.scl	2;	.type	32;	.endef
	.def	__Z8DoMeteors;	.scl	2;	.type	32;	.endef
	.def	__Z11DoMineSparks;	.scl	2;	.type	32;	.endef
	.def	__Z6DoMines;	.scl	2;	.type	32;	.endef
	.def	__Z11DoMineStucks;	.scl	2;	.type	32;	.endef
	.def	__Z9DoGrenades;	.scl	2;	.type	32;	.endef
	.def	__Z15DoVulcanBoulders;	.scl	2;	.type	32;	.endef
	.def	__Z13DoLavaBoulders;	.scl	2;	.type	32;	.endef
	.def	__Z11DoCrossBolts;	.scl	2;	.type	32;	.endef
	.def	__Z8DoBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z10DoUziSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z11DoUziBullets;	.scl	2;	.type	32;	.endef
	.def	__Z14DoShotgunSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z12DoWaterSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z14DoVehicleSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z11DoTankShells;	.scl	2;	.type	32;	.endef
	.def	__Z10DoEMPBursts;	.scl	2;	.type	32;	.endef
	.def	__Z5DoEMPs;	.scl	2;	.type	32;	.endef
	.def	__Z8DoTracers;	.scl	2;	.type	32;	.endef
	.def	__Z10DoRailPuffs;	.scl	2;	.type	32;	.endef
	.def	__Z13DoDefaultStats;	.scl	2;	.type	32;	.endef
	.def	__Z8NullSumos;	.scl	2;	.type	32;	.endef
	.def	__Z15DoSumoDeathMelts;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSumoStomps;	.scl	2;	.type	32;	.endef
	.def	__Z12InitSumoClaps;	.scl	2;	.type	32;	.endef
	.def	__Z12InitSumoFarts;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSumoMoves;	.scl	2;	.type	32;	.endef
	.def	__Z5DoGets;	.scl	2;	.type	32;	.endef
	.def	__Z9DoFireFlys;	.scl	2;	.type	32;	.endef
	.def	__Z6DoCoins;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBettyJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBettyWaits;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSkullSpawnShraps;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSkullJumps;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSerpRings;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSkullWaits;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSkelMoves;	.scl	2;	.type	32;	.endef
	.def	__Z18DoSkelInitTeleports;	.scl	2;	.type	32;	.endef
	.def	__Z14DoSkelTeleports;	.scl	2;	.type	32;	.endef
	.def	__Z18DoSkelTermTeleports;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSkelPains;	.scl	2;	.type	32;	.endef
	.def	__Z8NullSkels;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSkelSpells;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSkelSlashs;	.scl	2;	.type	32;	.endef
	.def	__Z14InitActorEvades;	.scl	2;	.type	32;	.endef
	.def	__Z8NullSerps;	.scl	2;	.type	32;	.endef
	.def	__Z14DoDeathSpecials;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSerpMoves;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSerpSpells;	.scl	2;	.type	32;	.endef
	.def	__Z18InitSerpMonstSpells;	.scl	2;	.type	32;	.endef
	.def	__Z12InitSerpRings;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSerpSlashs;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerSpriteResets;	.scl	2;	.type	32;	.endef
	.def	__Z19PanelInvTestSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pNullAnimatorP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11pFistAttackP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14pFistSlideDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11pFistSlideRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15pFistSlideDownRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10pFistBlockP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9pFistHideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z7pOnFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15pRailRecoilDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pRailRecoilUpP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pShotgunShellP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9pUziShellP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8pSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13PruneGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z14SailorGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z16MechanicGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z11CarGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z16Pachinko1Operates;	.scl	2;	.type	32;	.endef
	.def	__Z16PachinkoCheckWins;	.scl	2;	.type	32;	.endef
	.def	__Z12TrashCanPains;	.scl	2;	.type	32;	.endef
	.def	__Z12WashGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z14ToiletGirlPains;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFlags;	.scl	2;	.type	32;	.endef
	.def	__Z9NullCoolgs;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgBashs;	.scl	2;	.type	32;	.endef
	.def	__Z11DoCoolgMoves;	.scl	2;	.type	32;	.endef
	.def	__Z9NullBunnys;	.scl	2;	.type	32;	.endef
	.def	__Z22DoBunnyBeginJumpAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z15DoBunnyMoveJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11SectorSetupv;	.scl	2;	.type	32;	.endef
	.def	__Z13DoSpringBoardP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSpringBoardDownv;	.scl	2;	.type	32;	.endef
	.def	__Z19DoSpawnActorTriggers;	.scl	2;	.type	32;	.endef
	.def	__Z13OperateSectorss;	.scl	2;	.type	32;	.endef
	.def	__Z11OperateWallss;	.scl	2;	.type	32;	.endef
	.def	__Z9SectorExpsssi;	.scl	2;	.type	32;	.endef
	.def	__Z15DoExplodeSectors;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSpawnSpots;	.scl	2;	.type	32;	.endef
	.def	__Z19DoSpawnSpotsForKills;	.scl	2;	.type	32;	.endef
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
	.def	__Z20DoSoundSpotStopSounds;	.scl	2;	.type	32;	.endef
	.def	__Z20DoStopSoundSpotMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z23DoSectorObjectKillMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z19DoDeleteSpriteMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z14DoChangorMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z11DoTrapResets;	.scl	2;	.type	32;	.endef
	.def	__Z11DoTrapMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z18OperateTripTriggerP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z24OperateContinuousTriggerP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z22PlayerTakeSectorDamageP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10NearThingsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii;	.scl	2;	.type	32;	.endef
	.def	__Z16BuildNearTagListP13NEAR_TAG_INFOiP12PLAYERstructiiii;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerGrabStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerOperateEnvP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoSineWaveFloorv;	.scl	2;	.type	32;	.endef
	.def	__Z14DoSineWaveWallv;	.scl	2;	.type	32;	.endef
	.def	__Z6DoAnimi;	.scl	2;	.type	32;	.endef
	.def	__Z9AnimClearv;	.scl	2;	.type	32;	.endef
	.def	__Z11AnimGetGoalPi;	.scl	2;	.type	32;	.endef
	.def	__Z10AnimDeletePi;	.scl	2;	.type	32;	.endef
	.def	__Z7AnimSetPiii;	.scl	2;	.type	32;	.endef
	.def	__Z15AnimSetCallbacksPFvP10ANIMstructPvES1_;	.scl	2;	.type	32;	.endef
	.def	__Z13AnimSetVelAdjss;	.scl	2;	.type	32;	.endef
	.def	__Z9DoPanningv;	.scl	2;	.type	32;	.endef
	.def	__Z8DoSectorv;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupZombies;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnZombieP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnZombie2s;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupZillas;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z11DoLavaErupts;	.scl	2;	.type	32;	.endef
	.def	__Z14UserShrapSetupP5SHRAPP11STATEstructi;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z11DoShrapMoves;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnBloodsssiii;	.scl	2;	.type	32;	.endef
	.def	__Z14VehicleMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z13WeaponMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z16DoFireballFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorScales;	.scl	2;	.type	32;	.endef
	.def	__Z12DoRipperGrows;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorChooseDeathss;	.scl	2;	.type	32;	.endef
	.def	__Z11ActorHealthss;	.scl	2;	.type	32;	.endef
	.def	__Z9SopDamageP19SECTOR_OBJECTstructs;	.scl	2;	.type	32;	.endef
	.def	__Z12SopCheckKillP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9ActorPains;	.scl	2;	.type	32;	.endef
	.def	__Z15ActorPainPlasmas;	.scl	2;	.type	32;	.endef
	.def	__Z15ActorStdMissiless;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorDamageSlidesss;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerDamageSlideP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z9GetDamagesss;	.scl	2;	.type	32;	.endef
	.def	__Z15RadiusGetDamagessi;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerTakeDamageP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z9StarBloodss;	.scl	2;	.type	32;	.endef
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
	.def	__ZL15DoHitscanDamagest.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18DoFlamesDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z6DoStars;	.scl	2;	.type	32;	.endef
	.def	__Z11MissileSeeksss;	.scl	2;	.type	32;	.endef
	.def	__Z16ComboMissileSeeksss;	.scl	2;	.type	32;	.endef
	.def	__Z17VectorMissileSeeksssss;	.scl	2;	.type	32;	.endef
	.def	__Z14VectorWormSeekssss;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBlurExtendsss;	.scl	2;	.type	32;	.endef
	.def	__Z18InitPlasmaFountainP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z9DoEelFires;	.scl	2;	.type	32;	.endef
	.def	__Z13OwnerIsPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z15DoMineRangeTestss;	.scl	2;	.type	32;	.endef
	.def	__Z12SetMineStucks;	.scl	2;	.type	32;	.endef
	.def	__Z6DoPuffs;	.scl	2;	.type	32;	.endef
	.def	__Z13DoTracerStarts;	.scl	2;	.type	32;	.endef
	.def	__Z12DoLaserStarts;	.scl	2;	.type	32;	.endef
	.def	__Z11DoRailStarts;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnExtraMicroMinis;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnBasicExps;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnBreakFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z22SpawnBreakStaticFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z20SpawnGoroFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnBoltExps;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnBunnyExps;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnTankShellExps;	.scl	2;	.type	32;	.endef
	.def	__Z24SpawnNuclearSecondaryExpss;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnNuclearExps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnTracerExps;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnMicroExps;	.scl	2;	.type	32;	.endef
	.def	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z24SpawnGrenadeSecondaryExpss;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnGrenadeExps;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnMineExps;	.scl	2;	.type	32;	.endef
	.def	__Z13InitMineShraps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnSectorExps;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnLargeExps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnMeteorExps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnLittleExps;	.scl	2;	.type	32;	.endef
	.def	__Z12DoFindGrounds;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z13MissileSetPossPFisEi;	.scl	2;	.type	32;	.endef
	.def	__Z17TestMissileSetPossPFisEii;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpellRingP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitLavaFlames;	.scl	2;	.type	32;	.endef
	.def	__Z13InitLavaThrows;	.scl	2;	.type	32;	.endef
	.def	__Z17InitVulcanBoulders;	.scl	2;	.type	32;	.endef
	.def	__Z15InitSpellNapalmP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitEnemyNapalms;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpellMirvP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyMirvs;	.scl	2;	.type	32;	.endef
	.def	__Z15InitSwordAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitFistAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitSumoNapalms;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSumoSkulls;	.scl	2;	.type	32;	.endef
	.def	__Z19InitSumoStompAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z16InitMiniSumoClaps;	.scl	2;	.type	32;	.endef
	.def	__Z13WeaponAutoAimP12spritetypev7ssh;	.scl	2;	.type	32;	.endef
	.def	__Z17WeaponAutoAimZvelP12spritetypev7sPish;	.scl	2;	.type	32;	.endef
	.def	__Z18AimHitscanToTargetP12spritetypev7PiPsi;	.scl	2;	.type	32;	.endef
	.def	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh;	.scl	2;	.type	32;	.endef
	.def	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi;	.scl	2;	.type	32;	.endef
	.def	__Z8InitStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitHeartAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11InitShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9InitLaserP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10InitRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitBunnyRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitNukeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9InitMicroP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitRipperSlashs;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBunnySlashs;	.scl	2;	.type	32;	.endef
	.def	__Z22WallSpriteInsideSpriteP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBladeDamages;	.scl	2;	.type	32;	.endef
	.def	__Z20DoStaticFlamesDamages;	.scl	2;	.type	32;	.endef
	.def	__Z12InitGoroChops;	.scl	2;	.type	32;	.endef
	.def	__Z15InitHornetStings;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnDemonFists;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyStars;	.scl	2;	.type	32;	.endef
	.def	__Z17InitEnemyCrossbows;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgFires;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgDrips;	.scl	2;	.type	32;	.endef
	.def	__Z13GenerateDripss;	.scl	2;	.type	32;	.endef
	.def	__Z11InitEelFires;	.scl	2;	.type	32;	.endef
	.def	__Z16InitFireballTraps;	.scl	2;	.type	32;	.endef
	.def	__Z12InitBoltTraps;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpearTraps;	.scl	2;	.type	32;	.endef
	.def	__Z13InitTracerUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16InitTracerTurretssi;	.scl	2;	.type	32;	.endef
	.def	__Z20InitTracerAutoTurretssiii;	.scl	2;	.type	32;	.endef
	.def	__Z15BulletHitSpriteP12spritetypev7siiis;	.scl	2;	.type	32;	.endef
	.def	__Z19HitscanSpriteAdjustss;	.scl	2;	.type	32;	.endef
	.def	__Z7InitUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z7InitEMPP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitTankShellsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitTurretMicrosP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16InitTurretRocketsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18InitTurretFireballsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitTurretRailsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitTurretLasersP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18InitSobjMachineGunsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11InitSobjGunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnBoatSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnSwordSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnTurretSparksssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z18SpawnShotgunSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z14InitTurretMgunP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11InitGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyMines;	.scl	2;	.type	32;	.endef
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
	.def	__Z12InitFireballP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitEnemyFireballs;	.scl	2;	.type	32;	.endef
	.def	__Z16WarpToUnderwaterPsPiS0_S0_;	.scl	2;	.type	32;	.endef
	.def	__Z13WarpToSurfacePsPiS0_S0_;	.scl	2;	.type	32;	.endef
	.def	__Z22SpriteWarpToUnderwaterP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z19SpriteWarpToSurfaceP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnSplashXYiiis;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnUnderSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnVehicleSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnSmokePuffs;	.scl	2;	.type	32;	.endef
	.def	__Z17SpriteQueueDeletes;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShellss;	.scl	2;	.type	32;	.endef
	.def	__Z15DoShrapVelocitys;	.scl	2;	.type	32;	.endef
	.def	__Z15ShrapKillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z9DoItemFlys;	.scl	2;	.type	32;	.endef
	.def	__Z10DoWallMoveP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z14CanSeeWallMoveP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z15DoWallMoveMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z12ReverseVators;	.scl	2;	.type	32;	.endef
	.def	__Z11VatorSwitchss;	.scl	2;	.type	32;	.endef
	.def	__Z14SetVatorActives;	.scl	2;	.type	32;	.endef
	.def	__Z16SetVatorInactives;	.scl	2;	.type	32;	.endef
	.def	__Z14DoVatorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z12DoVatorMatchP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z20TestVatorMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z19InterpSectorSpritessh;	.scl	2;	.type	32;	.endef
	.def	__Z21MoveSpritesWithSectorsih;	.scl	2;	.type	32;	.endef
	.def	__Z11DoVatorMovesPi;	.scl	2;	.type	32;	.endef
	.def	__Z7DoVators;	.scl	2;	.type	32;	.endef
	.def	__Z11DoVatorAutos;	.scl	2;	.type	32;	.endef
	.def	__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_;	.scl	2;	.type	32;	.endef
	.def	__Z15DoTornadoObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z23DoActorHitTrackEndPointP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z14CallbackSOsinkP10ANIMstructPv;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSumos;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSumoRumbles;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorGlobZs;	.scl	2;	.type	32;	.endef
	.def	__Z13DoStayOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z9DoGratings;	.scl	2;	.type	32;	.endef
	.def	__Z12SpearOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z14SpearOnCeilings;	.scl	2;	.type	32;	.endef
	.def	__Z5DoKeys;	.scl	2;	.type	32;	.endef
	.def	__Z7KillGets;	.scl	2;	.type	32;	.endef
	.def	__Z11KillGetAmmos;	.scl	2;	.type	32;	.endef
	.def	__Z13KillGetWeapons;	.scl	2;	.type	32;	.endef
	.def	__Z27DoSpawnItemTeleporterEffectP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z14SetEnemyActives;	.scl	2;	.type	32;	.endef
	.def	__Z16SetEnemyInactives;	.scl	2;	.type	32;	.endef
	.def	__Z17ProcessActiveVarss;	.scl	2;	.type	32;	.endef
	.def	__Z12StateControls;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteControlv;	.scl	2;	.type	32;	.endef
	.def	__Z12ReverseSpikes;	.scl	2;	.type	32;	.endef
	.def	__Z11SpikeSwitchss;	.scl	2;	.type	32;	.endef
	.def	__Z14SetSpikeActives;	.scl	2;	.type	32;	.endef
	.def	__Z16SetSpikeInactives;	.scl	2;	.type	32;	.endef
	.def	__Z14DoSpikeOperates;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSpikeMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z20TestSpikeMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSpikeMovesPi;	.scl	2;	.type	32;	.endef
	.def	__Z10SpikeAligns;	.scl	2;	.type	32;	.endef
	.def	__Z20MoveSpritesWithSpikes;	.scl	2;	.type	32;	.endef
	.def	__Z7DoSpikes;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSpikeAutos;	.scl	2;	.type	32;	.endef
	.def	__Z13ReverseSlidors;	.scl	2;	.type	32;	.endef
	.def	__Z12SlidorSwitchss;	.scl	2;	.type	32;	.endef
	.def	__Z15SetSlidorActives;	.scl	2;	.type	32;	.endef
	.def	__Z17SetSlidorInactives;	.scl	2;	.type	32;	.endef
	.def	__Z15DoSlidorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z13DoSlidorMatchP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z21TestSlidorMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z14DoSlidorInterpsPFvPiE;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSlidorMoveWallssi;	.scl	2;	.type	32;	.endef
	.def	__Z20DoSlidorInstantCloses;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSlidorMoves;	.scl	2;	.type	32;	.endef
	.def	__Z8DoSlidors;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupSkulls;	.scl	2;	.type	32;	.endef
	.def	__Z11DoSkullMoves;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSkullBeginDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z10DoSkullBobs;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupBettys;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBettyMoves;	.scl	2;	.type	32;	.endef
	.def	__Z17DoBettyBeginDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z10DoBettyBobs;	.scl	2;	.type	32;	.endef
	.def	__Z17DoBettySpawnShraps;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSkels;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSerps;	.scl	2;	.type	32;	.endef
	.def	__Z13GetJumpHeightss;	.scl	2;	.type	32;	.endef
	.def	__Z13PickJumpSpeedsi;	.scl	2;	.type	32;	.endef
	.def	__Z17CopyQuakeSpotToOnP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z12DoQuakeMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z14ProcessQuakeOnv;	.scl	2;	.type	32;	.endef
	.def	__Z16ProcessQuakeSpotv;	.scl	2;	.type	32;	.endef
	.def	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
	.def	__Z8SetQuakeP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z11SetExpQuakes;	.scl	2;	.type	32;	.endef
	.def	__Z11SetGunQuakes;	.scl	2;	.type	32;	.endef
	.def	__Z14SetPlayerQuakeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15SetNuclearQuakes;	.scl	2;	.type	32;	.endef
	.def	__Z12SetSumoQuakes;	.scl	2;	.type	32;	.endef
	.def	__Z16SetSumoFartQuakes;	.scl	2;	.type	32;	.endef
	.def	__Z13DoPlayerSlideP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerWadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginWadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18DoPlayerBeginCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DoPlayerCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPlayerRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerForceJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginFlyP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPlayerFlyP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18DoPlayerBeginClimbP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DoPlayerClimbP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginDieP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z24DoPlayerBeginOperateBoatP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z24DoPlayerBeginOperateTankP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z20DoPlayerBeginOperateP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerOperateBoatP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerOperateTankP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21DoPlayerOperateTurretP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginDiveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerDiveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21DoPlayerTeleportPauseP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerTestCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerDeathFlipP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z20DoPlayerDeathCrumbleP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z20DoPlayerDeathExplodeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerDeathFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoPlayerCurrentP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SwordBlurP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8FistBlurP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11StringTimerP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoHariKariBloods;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z15DoNinjaHariKaris;	.scl	2;	.type	32;	.endef
	.def	__Z17DoNinjaGrabThroats;	.scl	2;	.type	32;	.endef
	.def	__Z11DoNinjaMoves;	.scl	2;	.type	32;	.endef
	.def	__Z19NinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
	.def	__Z9NullNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z11DoNinjaPains;	.scl	2;	.type	32;	.endef
	.def	__Z14DoNinjaSpecials;	.scl	2;	.type	32;	.endef
	.def	__Z14DoNinjaCeilings;	.scl	2;	.type	32;	.endef
	.def	__Z22DoSectorObjectSetScales;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSOeventss;	.scl	2;	.type	32;	.endef
	.def	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_;	.scl	2;	.type	32;	.endef
	.def	__Z12MorphTornadoP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10MorphFloorP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
	.def	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
	.def	__Z29SOBJ_AlignFloorCeilingToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
	.def	__Z10SpikeFloorP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15SetupToiletGirls;	.scl	2;	.type	32;	.endef
	.def	__Z12DoToiletGirls;	.scl	2;	.type	32;	.endef
	.def	__Z14NullToiletGirls;	.scl	2;	.type	32;	.endef
	.def	__Z13ToiletGirlUzis;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupWashGirls;	.scl	2;	.type	32;	.endef
	.def	__Z10DoWashGirls;	.scl	2;	.type	32;	.endef
	.def	__Z12NullWashGirls;	.scl	2;	.type	32;	.endef
	.def	__Z11WashGirlUzis;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupTrashCans;	.scl	2;	.type	32;	.endef
	.def	__Z10DoTrashCans;	.scl	2;	.type	32;	.endef
	.def	__Z18SetupPachinkoLights;	.scl	2;	.type	32;	.endef
	.def	__Z20PachinkoLightOperates;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko1s;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko2s;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko3s;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko4s;	.scl	2;	.type	32;	.endef
	.def	__Z12SetupCarGirls;	.scl	2;	.type	32;	.endef
	.def	__Z9DoCarGirls;	.scl	2;	.type	32;	.endef
	.def	__Z11NullCarGirls;	.scl	2;	.type	32;	.endef
	.def	__Z10CarGirlUzis;	.scl	2;	.type	32;	.endef
	.def	__Z17SetupMechanicGirls;	.scl	2;	.type	32;	.endef
	.def	__Z14DoMechanicGirls;	.scl	2;	.type	32;	.endef
	.def	__Z16NullMechanicGirls;	.scl	2;	.type	32;	.endef
	.def	__Z17MechanicGirlDrills;	.scl	2;	.type	32;	.endef
	.def	__Z15SetupSailorGirls;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSailorGirls;	.scl	2;	.type	32;	.endef
	.def	__Z14NullSailorGirls;	.scl	2;	.type	32;	.endef
	.def	__Z15SailorGirlThrows;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPruneGirls;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPruneGirls;	.scl	2;	.type	32;	.endef
	.def	__Z13NullPruneGirls;	.scl	2;	.type	32;	.endef
	.def	__Z12PruneGirlUzis;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupLavas;	.scl	2;	.type	32;	.endef
	.def	__Z8NullLavas;	.scl	2;	.type	32;	.endef
	.def	__Z10DoLavaMoves;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupHornets;	.scl	2;	.type	32;	.endef
	.def	__Z10NullHornets;	.scl	2;	.type	32;	.endef
	.def	__Z20DoHornetMatchPlayerZs;	.scl	2;	.type	32;	.endef
	.def	__Z16InitHornetCircles;	.scl	2;	.type	32;	.endef
	.def	__Z14DoHornetCircles;	.scl	2;	.type	32;	.endef
	.def	__Z13DoHornetDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z12DoHornetMoves;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupGoros;	.scl	2;	.type	32;	.endef
	.def	__Z8NullGoros;	.scl	2;	.type	32;	.endef
	.def	__Z10DoGoroPains;	.scl	2;	.type	32;	.endef
	.def	__Z10DoGoroMoves;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupGirlNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z15DoGirlNinjaMoves;	.scl	2;	.type	32;	.endef
	.def	__Z23GirlNinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
	.def	__Z13NullGirlNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z15DoGirlNinjaPains;	.scl	2;	.type	32;	.endef
	.def	__Z18DoGirlNinjaSpecials;	.scl	2;	.type	32;	.endef
	.def	__Z9EelCommons;	.scl	2;	.type	32;	.endef
	.def	__Z8SetupEels;	.scl	2;	.type	32;	.endef
	.def	__Z17DoEelMatchPlayerZs;	.scl	2;	.type	32;	.endef
	.def	__Z10DoEelDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z9DoEelMoves;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupCoolies;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnCoolgs;	.scl	2;	.type	32;	.endef
	.def	__Z10CooliePains;	.scl	2;	.type	32;	.endef
	.def	__Z10NullCoolies;	.scl	2;	.type	32;	.endef
	.def	__Z12DoCoolieMoves;	.scl	2;	.type	32;	.endef
	.def	__Z16InitCoolieCharges;	.scl	2;	.type	32;	.endef
	.def	__Z17DoCoolieWaitBirths;	.scl	2;	.type	32;	.endef
	.def	__Z11CoolgCommons;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupCoolgs;	.scl	2;	.type	32;	.endef
	.def	__Z8NewCoolgs;	.scl	2;	.type	32;	.endef
	.def	__Z12DoCoolgBirths;	.scl	2;	.type	32;	.endef
	.def	__Z19DoCoolgMatchPlayerZs;	.scl	2;	.type	32;	.endef
	.def	__Z15InitCoolgCircles;	.scl	2;	.type	32;	.endef
	.def	__Z13DoCoolgCircles;	.scl	2;	.type	32;	.endef
	.def	__Z12DoCoolgDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z11DoCoolgPains;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupBunnys;	.scl	2;	.type	32;	.endef
	.def	__Z18GetBunnyJumpHeightss;	.scl	2;	.type	32;	.endef
	.def	__Z18PickBunnyJumpSpeedsi;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPickCloseBunnys;	.scl	2;	.type	32;	.endef
	.def	__Z16DoBunnyQuickJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBunnyPains;	.scl	2;	.type	32;	.endef
	.def	__Z15DoBunnyRipHearts;	.scl	2;	.type	32;	.endef
	.def	__Z16DoBunnyStandKills;	.scl	2;	.type	32;	.endef
	.def	__Z10BunnyHatchs;	.scl	2;	.type	32;	.endef
	.def	__Z11BunnyHatch2s;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBunnyMoves;	.scl	2;	.type	32;	.endef
	.def	__Z9BunnySpews;	.scl	2;	.type	32;	.endef
	.def	__Z10DoBunnyEats;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBunnyScrews;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBunnyGrowUps;	.scl	2;	.type	32;	.endef
	.def	__Z12DebugMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z17ActorMoveHitReacts;	.scl	2;	.type	32;	.endef
	.def	__Z12ActorFlamings;	.scl	2;	.type	32;	.endef
	.def	__Z12ChooseActionP8DECISION;	.scl	2;	.type	32;	.endef
	.def	__Z18ChooseActionNumberPs;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorNoisePFisEs;	.scl	2;	.type	32;	.endef
	.def	__Z12CanSeePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z12CanHitPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z18GetPlayerSpriteNums;	.scl	2;	.type	32;	.endef
	.def	__Z14CloseRangeDistP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z14DoActorOperates;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorActionDecides;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorAttackNoises;	.scl	2;	.type	32;	.endef
	.def	__Z18InitActorPainNoises;	.scl	2;	.type	32;	.endef
	.def	__Z17InitActorDieNoises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra1Noises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra2Noises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra3Noises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra4Noises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra5Noises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorExtra6Noises;	.scl	2;	.type	32;	.endef
	.def	__Z21DoActorCantMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z17FindTrackToPlayerP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z23FindTrackAwayFromPlayerP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z15FindWanderTrackP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z18InitActorRunTowards;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z12FindNewAnglesai;	.scl	2;	.type	32;	.endef
	.def	__Z17DoActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z14InitActorPauses;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorPauses;	.scl	2;	.type	32;	.endef
	.def	__Z10DoActorDiess;	.scl	2;	.type	32;	.endef
	.def	__Z15DoDebrisCurrentP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z21DoGenerateSewerDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z17DoActorBeginSlidessss;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorBeginJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorJumps;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorBeginFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorFalls;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorStopFalls;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorDeathMoves;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBeginJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBeginFalls;	.scl	2;	.type	32;	.endef
