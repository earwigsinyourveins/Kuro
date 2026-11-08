	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL13remove_spritei;	.scl	3;	.type	32;	.endef
__ZL13remove_spritei:
LFB0:
	.cfi_startproc
	imull	$44, %eax, %eax
	movl	_sprite, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	addl	%eax, %edx
	movl	$0, 28(%edx)
	movl	$0, 32(%edx)
	movl	$0, 36(%edx)
	movl	$0, 40(%edx)
L2:
	movl	$0, (%edx,%ecx)
	movl	$0, 4(%edx,%ecx)
	movl	$0, 8(%edx,%ecx)
	movl	$0, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	$32, %ecx
	jb	L2
	movl	_sprite, %ebx
	leal	(%ebx,%eax), %ecx
	movl	$-1171354717, %ebx
	addl	$26, %eax
	mull	%ebx
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 26(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$4096, %edx
	movw	%dx, 24(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	__ZL20yax_cansee_fixsectoriiis;	.scl	3;	.type	32;	.endef
__ZL20yax_cansee_fixsectoriiis:
LFB1:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movswl	56(%esp), %ebp
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%ebp, %ebx
	cmpl	$4095, %ebp
	jbe	L29
	movl	%ebx, %eax
	movl	48(%esp), %ebp
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L29:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebp, %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ecx, 12(%esp)
	call	_yax_getbunch.constprop.1
	movw	%ax, 18(%esp)
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.0
	orw	18(%esp), %ax
	jne	L9
	jmp	L28
	.p2align 4,,10
	.p2align 3
L11:
	movl	24(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	20(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L12:
	cmpl	%eax, 12(%esp)
	jge	L14
	movl	$0, (%esp)
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L28
	movswl	%ax, %ebp
	movl	%ebp, %ebx
L9:
	leal	20(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	movl	%edi, 24(%esp)
	movl	24(%esp), %edx
	call	_getsectordist
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 12(%eax)
	jne	L11
	movl	4(%eax), %eax
	jmp	L12
	.p2align 4,,10
	.p2align 3
L15:
	movl	32(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L16:
	cmpl	%eax, 12(%esp)
	jle	L28
	movl	$1, (%esp)
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L28
	movswl	%ax, %ebp
	movl	%ebp, %ebx
L14:
	leal	28(%esp), %eax
	movl	%esi, 28(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	movl	%edi, 32(%esp)
	movl	32(%esp), %edx
	call	_getsectordist
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L15
	movl	8(%eax), %eax
	jmp	L16
	.p2align 4,,10
	.p2align 3
L28:
	movl	%ebx, %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebx
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	_renderDrawMasks
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
_renderDrawMasks:
LFB5:
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
	subl	$168, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_spritesortcnt, %ebx
	movl	_rendmode, %eax
	leal	-1(%ebx), %esi
	movl	%eax, -128(%ebp)
	movl	%esi, -52(%ebp)
	cmpl	$3, %eax
	je	L314
	testl	%ebx, %ebx
	jle	L315
	imull	$44, %ebx, %eax
	movl	_tsprite, %edx
	leal	-44(%edx,%eax), %edx
	movl	-52(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L55:
	movl	%edx, _tspriteptr(,%eax,4)
	subl	$1, %eax
	subl	$44, %edx
	cmpl	$-1, %eax
	jne	L55
L52:
	leal	(%ebx,%ebx,2), %eax
	movl	%ebx, -80(%ebp)
	leal	__ZL10spritesxyz.lto_priv.0-12(,%eax,4), %eax
	movl	%eax, -76(%ebp)
	jmp	L62
	.p2align 4,,10
	.p2align 3
L317:
	movl	-68(%ebp), %edx
	subl	-56(%ebp), %edx
	movl	%edx, %esi
	movl	_singlobalang, %edi
	movl	_cosglobalang, %edx
	movl	-72(%ebp), %eax
/APP
 # 10213 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edi
	movl	_xdimen, %esi
	leal	(%edi,%eax), %ebx
	movl	%esi, %edx
	movl	%ebx, %eax
	negl	%eax
	cmovs	%ebx, %eax
/APP
 # 10215 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edi
	jle	L57
	sall	$7, %esi
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%esi, %eax
	movl	%edi, 12(%esp)
	imull	%ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-76(%ebp), %esi
	movl	%eax, (%esi)
L58:
	movl	-76(%ebp), %eax
	movl	-64(%ebp), %esi
	movl	%esi, 4(%eax)
L61:
	subl	$1, -52(%ebp)
	movl	-52(%ebp), %eax
	subl	$12, -76(%ebp)
	cmpl	$-1, %eax
	je	L316
L62:
	movl	-52(%ebp), %eax
	movl	_globalposx, %edx
	movl	_sinviewingrangeglobalang, %edi
	movl	_tspriteptr(,%eax,4), %ecx
	movl	%edx, -68(%ebp)
	movl	(%ecx), %ebx
	movl	4(%ecx), %eax
	subl	_globalposy, %eax
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	%ebx, -56(%ebp)
	subl	%edx, %eax
	movl	%esi, -72(%ebp)
	movl	_cosviewingrangeglobalang, %edx
/APP
 # 10206 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -64(%ebp)
	cmpl	$1024, %eax
	jg	L317
	testb	$48, 12(%ecx)
	jne	L58
L57:
	movl	%ecx, %eax
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L58
	movl	_spritesortcnt, %eax
	movl	-52(%ebp), %ecx
	subl	$1, -80(%ebp)
	movl	-80(%ebp), %esi
	cmpl	%ecx, %eax
	jg	L59
	cmpl	%esi, %ecx
	je	L61
	movl	_tspriteptr(,%esi,4), %eax
	subl	$1, -52(%ebp)
	movl	%eax, _tspriteptr(,%ecx,4)
	leal	(%esi,%esi,2), %eax
	movlps	__ZL10spritesxyz.lto_priv.0(,%eax,4), %xmm5
	movl	-76(%ebp), %eax
	subl	$12, -76(%ebp)
	movlps	%xmm5, (%eax)
	movl	-52(%ebp), %eax
	movlps	%xmm5, -64(%ebp)
	cmpl	$-1, %eax
	jne	L62
	.p2align 4
	.p2align 3
L316:
	movl	_spritesortcnt, %eax
	movl	-80(%ebp), %ebx
	testl	%eax, %eax
	jle	L63
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__ZL11sortspritesii.part.0.lto_priv.0
	movl	_spritesortcnt, %eax
L63:
	cmpl	%eax, %ebx
	jle	L64
	movl	%ebx, %edx
	call	__ZL11sortspritesii.part.0.lto_priv.0
L64:
	call	_videoBeginDrawing
	cmpl	$3, -128(%ebp)
	je	L33
L54:
	movzwl	_maskwallcnt, %edx
	testw	%dx, %dx
	je	L65
L309:
	movss	_fglobalposx, %xmm5
	movss	%xmm5, -92(%ebp)
	movss	-92(%ebp), %xmm2
	movss	_fglobalposy, %xmm5
	xorps	LC3, %xmm2
	movss	%xmm5, -104(%ebp)
	xorps	%xmm5, %xmm5
	movss	%xmm2, -136(%ebp)
	.p2align 4
	.p2align 3
L154:
	movswl	%dx, %eax
	movswl	_maskwall-2(%eax,%eax), %ecx
	cmpl	$4, _rendmode
	je	L112
	movswl	_thewall(%ecx,%ecx), %ecx
L112:
	movl	_wall, %ebx
	sall	$5, %ecx
	leal	-1(%edx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movw	%ax, _maskwallcnt
	leal	(%ebx,%ecx), %edx
	cvtsi2ssl	(%edx), %xmm0
	cvtsi2ssl	4(%edx), %xmm1
	movswl	8(%edx), %edx
	sall	$5, %edx
	addl	%ebx, %edx
	cvtsi2ssl	(%edx), %xmm2
	cvtsi2ssl	4(%edx), %xmm3
	movaps	%xmm2, %xmm4
	subss	%xmm0, %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L113
	jne	L113
	movaps	%xmm0, %xmm6
	xorps	LC3, %xmm6
	movl	$0x00000000, -56(%ebp)
	movss	%xmm6, -68(%ebp)
	movss	LC0, %xmm6
	movss	%xmm6, -100(%ebp)
L115:
	movaps	%xmm0, %xmm4
	subss	-92(%ebp), %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L116
	jne	L116
	movss	-136(%ebp), %xmm6
	movl	$0x00000000, -88(%ebp)
	movss	%xmm6, -80(%ebp)
	movss	LC0, %xmm6
	movss	%xmm6, -84(%ebp)
L118:
	movaps	%xmm2, %xmm4
	subss	-92(%ebp), %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L119
	jne	L119
	movss	-136(%ebp), %xmm6
	movl	$0x00000000, -76(%ebp)
	movss	%xmm6, -72(%ebp)
	movss	LC0, %xmm6
	movss	%xmm6, -96(%ebp)
	cmpl	$3, -128(%ebp)
	je	L122
L324:
	movl	_spritesortcnt, %ebx
	movl	%ebx, -52(%ebp)
	testl	%ebx, %ebx
	je	L124
L123:
	addss	%xmm2, %xmm0
	addss	%xmm3, %xmm1
	movss	LC4, %xmm2
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	movss	%xmm0, -120(%ebp)
	movss	%xmm1, -124(%ebp)
	jmp	L153
	.p2align 4,,10
	.p2align 3
L321:
	cmpw	$16, %ax
	jne	L129
	movswl	14(%ecx), %edx
	movswl	28(%edi), %esi
	movzbl	20(%edi), %edi
	movsbl	_picanm+1(%edx,%edx,4), %ecx
	movl	-64(%ebp), %edx
	movl	%esi, %eax
	movsbl	22(%edx), %edx
	addl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	andl	$4, %ebx
	cmovne	%edx, %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, %edx
	imull	%edi, %eax
/APP
 # 398 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edx
	addl	$1536, %esi
	andl	$2047, %esi
	movl	(%edx), %ebx
	movl	%ecx, %edx
	subl	%eax, %ebx
	movswl	_sintable(%esi,%esi), %eax
	imull	%edi, %eax
/APP
 # 398 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edx
	movl	4(%edx), %esi
	movl	%esi, -108(%ebp)
	movl	%esi, %edx
	subl	%eax, %edx
L131:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	-56(%ebp), %xmm7
	movss	-100(%ebp), %xmm6
	cvtsi2ssl	%ebx, %xmm0
	movss	-104(%ebp), %xmm3
	movss	-92(%ebp), %xmm2
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm7, %xmm3
	mulss	%xmm6, %xmm2
	mulss	%xmm0, %xmm6
	mulss	%xmm1, %xmm7
	addss	%xmm3, %xmm2
	addss	-68(%ebp), %xmm2
	movaps	%xmm6, %xmm3
	addss	%xmm7, %xmm3
	addss	-68(%ebp), %xmm3
	mulss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	ja	L126
	movss	-124(%ebp), %xmm4
	movss	-88(%ebp), %xmm3
	xorl	%eax, %eax
	movss	-120(%ebp), %xmm6
	mulss	-84(%ebp), %xmm6
	mulss	%xmm4, %xmm3
	movss	-96(%ebp), %xmm7
	mulss	-76(%ebp), %xmm4
	addss	%xmm3, %xmm6
	addss	-80(%ebp), %xmm6
	movaps	%xmm4, %xmm3
	movss	-120(%ebp), %xmm4
	mulss	%xmm7, %xmm4
	mulss	%xmm0, %xmm7
	mulss	-84(%ebp), %xmm0
	addss	%xmm3, %xmm4
	addss	-72(%ebp), %xmm4
	movaps	%xmm7, %xmm3
	movss	-76(%ebp), %xmm7
	mulss	%xmm1, %xmm7
	mulss	-88(%ebp), %xmm1
	addss	%xmm7, %xmm3
	addss	-72(%ebp), %xmm3
	addss	%xmm1, %xmm0
	addss	-80(%ebp), %xmm0
	mulss	%xmm4, %xmm3
	mulss	%xmm6, %xmm0
	comiss	%xmm5, %xmm3
	seta	%al
	xorl	%edx, %edx
	addl	%eax, %eax
	comiss	%xmm5, %xmm0
	seta	%dl
	orl	%edx, %eax
	cmpl	$3, %eax
	jne	L318
L136:
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L319
	movl	-52(%ebp), %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
	xorps	%xmm5, %xmm5
L152:
	movl	-52(%ebp), %eax
	movl	$0, _tspriteptr(,%eax,4)
	.p2align 5
	.p2align 4
	.p2align 3
L126:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L320
L153:
	subl	$1, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	_tspriteptr(,%eax,4), %edi
	movl	%edi, -64(%ebp)
	testl	%edi, %edi
	je	L126
	movzwl	12(%edi), %ebx
	movl	%edi, %ecx
	movl	%ebx, %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L127
	cmpw	$48, %ax
	jne	L321
	movl	-64(%ebp), %edi
	movzwl	28(%edi), %eax
	movswl	14(%edi), %ecx
	leal	512(%eax), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %esi
	movzbl	20(%edi), %edx
	movl	%eax, -116(%ebp)
	movsbl	_picanm+1(%ecx,%ecx,4), %eax
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movzbl	21(%edi), %edi
	movl	%esi, -112(%ebp)
	movl	%eax, %esi
	negl	%esi
	testb	$4, %bl
	cmovne	%esi, %eax
	movl	%ecx, %esi
	negl	%esi
	andl	$8, %ebx
	cmovne	%esi, %ecx
	imull	%eax, %edx
	movl	-116(%ebp), %eax
	imull	%edi, %ecx
	movl	%edx, -108(%ebp)
L310:
	movl	-112(%ebp), %esi
	movl	%ecx, %edi
/APP
 # 463 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%eax, -132(%ebp)
	movl	%ecx, %edx
	movl	-116(%ebp), %eax
	negl	%esi
/APP
 # 464 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edi
	movl	-132(%ebp), %ebx
	addl	4(%edi), %eax
	addl	(%edi), %ebx
	movl	%eax, %edx
	jmp	L131
	.p2align 4,,10
	.p2align 3
L127:
	movl	-64(%ebp), %edi
	movzwl	28(%edi), %eax
	movswl	14(%edi), %edx
	leal	512(%eax), %ecx
	andl	$2047, %eax
	andl	$2047, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ecx,%ecx), %esi
	movl	%edi, %ecx
	movl	%eax, -116(%ebp)
	movsbl	22(%ecx), %ecx
	movsbl	_picanm+1(%edx,%edx,4), %eax
	movl	%esi, -112(%ebp)
	movzbl	20(%edi), %esi
	movzbl	21(%edi), %edi
	addl	%ecx, %eax
	movsbl	_picanm+2(%edx,%edx,4), %ecx
	movl	-64(%ebp), %edx
	movsbl	23(%edx), %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	testb	$4, %bl
	cmovne	%edx, %eax
	movl	%ecx, %edx
	negl	%edx
	andl	$8, %ebx
	movl	%esi, %ebx
	cmovne	%edx, %ecx
	imull	%eax, %ebx
	movl	-116(%ebp), %eax
	imull	%edi, %ecx
	movl	%ebx, -108(%ebp)
	movl	%ebx, %edx
	jmp	L310
	.p2align 4,,10
	.p2align 3
L129:
	movl	-64(%ebp), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %edx
	jmp	L131
	.p2align 4,,10
	.p2align 3
L320:
	cmpl	$3, -128(%ebp)
	je	L125
L311:
	movzwl	_maskwallcnt, %eax
L124:
	cwtl
	call	__ZL20renderDrawMaskedWalls.lto_priv.0
	movzwl	_maskwallcnt, %edx
	xorps	%xmm5, %xmm5
	testw	%dx, %dx
	jne	L154
	cmpl	$3, -128(%ebp)
	je	L111
L65:
	movl	_spritesortcnt, %ebx
	movl	_maxspritesonscreen, %eax
	cmpl	%eax, %ebx
	jle	L162
	movl	%eax, _spritesortcnt
	movl	%eax, %ebx
L162:
	xorl	%eax, %eax
	jmp	L156
	.p2align 5
	.p2align 4,,10
	.p2align 3
L163:
	subl	$1, %ebx
	movl	$1, %eax
	movl	_tspriteptr(,%ebx,4), %edi
	testl	%edi, %edi
	jne	L322
L156:
	testl	%ebx, %ebx
	jne	L163
	testb	%al, %al
	je	L164
	movl	$0, _spritesortcnt
L164:
	cmpl	$3, -128(%ebp)
	jne	L165
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	xorl	%eax, %eax
	subl	$4, %esp
	call	__Z17polymost_setClampc
L165:
	cmpl	$4, _rendmode
	je	L323
L166:
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L318:
	.cfi_restore_state
	movl	-64(%ebp), %esi
	movl	$3, %edx
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	subl	%eax, %edx
	movl	$0, -20(%ebp)
	movl	(%esi), %ecx
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	4(%esi), %ebx
	movzwl	12(%esi), %eax
	movl	%ecx, -32(%ebp)
	movl	%ebx, -116(%ebp)
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	andl	$48, %ebx
	movl	%edx, -108(%ebp)
	movw	%bx, -112(%ebp)
	testb	$32, %al
	je	L137
	xorl	%eax, %eax
	cmpw	$48, %bx
	jne	L138
	movswl	22(%esi), %eax
L138:
	movss	%xmm6, -132(%ebp)
	leal	-48(%ebp), %ebx
	leal	-32(%ebp), %esi
	xorl	%ecx, %ecx
	movss	%xmm4, -116(%ebp)
	xorl	%edx, %edx
	movss	%xmm2, -112(%ebp)
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-64(%ebp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	movss	-112(%ebp), %xmm2
	movss	-116(%ebp), %xmm4
	xorps	%xmm5, %xmm5
	movss	-132(%ebp), %xmm6
	movl	$4, %ecx
L139:
	movss	%xmm4, -64(%ebp)
	movss	-68(%ebp), %xmm4
	xorl	%eax, %eax
	movl	%ecx, %edi
	movss	%xmm6, -112(%ebp)
	movss	-100(%ebp), %xmm6
	.p2align 4
	.p2align 3
L146:
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movss	-56(%ebp), %xmm7
	cvtsi2ssl	(%esi,%eax,4), %xmm1
	cvtsi2ssl	(%ebx,%eax,4), %xmm3
	movaps	%xmm1, %xmm0
	mulss	%xmm6, %xmm0
	mulss	%xmm3, %xmm7
	addss	%xmm7, %xmm0
	addss	%xmm4, %xmm0
	mulss	%xmm2, %xmm0
	comiss	%xmm5, %xmm0
	ja	L144
	movss	-96(%ebp), %xmm0
	movss	-76(%ebp), %xmm7
	xorl	%edx, %edx
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm7
	mulss	-84(%ebp), %xmm1
	mulss	-88(%ebp), %xmm3
	addss	%xmm7, %xmm0
	addss	-72(%ebp), %xmm0
	mulss	-64(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-80(%ebp), %xmm1
	mulss	-112(%ebp), %xmm1
	comiss	%xmm5, %xmm0
	seta	%dl
	xorl	%ecx, %ecx
	addl	%edx, %edx
	comiss	%xmm5, %xmm1
	seta	%cl
	orl	%ecx, %edx
	testl	%edx, -108(%ebp)
	jne	L136
L144:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L146
	jmp	L126
	.p2align 4,,10
	.p2align 3
L113:
	movaps	%xmm3, %xmm6
	subss	%xmm1, %xmm6
	divss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	movss	%xmm6, -100(%ebp)
	movaps	%xmm1, %xmm6
	mulss	%xmm0, %xmm4
	subss	%xmm4, %xmm6
	movss	%xmm6, -68(%ebp)
	movss	LC2, %xmm6
	movss	%xmm6, -56(%ebp)
	jmp	L115
	.p2align 4,,10
	.p2align 3
L119:
	movss	-104(%ebp), %xmm7
	movaps	%xmm3, %xmm6
	subss	%xmm7, %xmm6
	divss	%xmm4, %xmm6
	movss	-92(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	movss	%xmm6, -96(%ebp)
	movss	LC2, %xmm6
	movss	%xmm6, -76(%ebp)
	subss	%xmm4, %xmm7
	movss	%xmm7, -72(%ebp)
	cmpl	$3, -128(%ebp)
	jne	L324
L122:
	movl	$3, %eax
	movss	%xmm3, -116(%ebp)
	movss	%xmm2, -112(%ebp)
	movss	%xmm1, -108(%ebp)
	movss	%xmm0, -64(%ebp)
	call	__Z17polymost_setClampc
	movl	_spritesortcnt, %eax
	movss	-64(%ebp), %xmm0
	xorps	%xmm5, %xmm5
	movss	-108(%ebp), %xmm1
	movss	-112(%ebp), %xmm2
	testl	%eax, %eax
	movl	%eax, -52(%ebp)
	movss	-116(%ebp), %xmm3
	jne	L123
	.p2align 4
	.p2align 3
L125:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	jmp	L311
	.p2align 4,,10
	.p2align 3
L116:
	movss	-104(%ebp), %xmm7
	movaps	%xmm1, %xmm6
	subss	%xmm7, %xmm6
	divss	%xmm4, %xmm6
	movss	-92(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	movss	%xmm6, -84(%ebp)
	movss	LC2, %xmm6
	movss	%xmm6, -88(%ebp)
	subss	%xmm4, %xmm7
	movss	%xmm7, -80(%ebp)
	jmp	L118
	.p2align 4,,10
	.p2align 3
L137:
	movl	-64(%ebp), %ebx
	movzwl	28(%ebx), %esi
	movw	%si, -138(%ebp)
	movl	%esi, %edx
	cmpw	$16, -112(%ebp)
	je	L140
	movzwl	_globalang, %edx
	movw	%dx, 28(%ebx)
L140:
	movl	-64(%ebp), %ebx
	movswl	14(%ebx), %edi
	movzbl	20(%ebx), %esi
	movsbl	22(%ebx), %ebx
	movl	%esi, -132(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %esi
	movswl	_tilesiz(,%edi,4), %edi
	addl	%ebx, %esi
	movl	%esi, %ebx
	negl	%ebx
	testb	$4, %al
	movl	%edx, %eax
	cmovne	%ebx, %esi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ebx
	leal	1536(%edx), %eax
	movl	-132(%ebp), %edx
	andl	$2047, %eax
	imull	-132(%ebp), %ebx
	movswl	_sintable(%eax,%eax), %eax
	imull	%eax, %edx
	movl	%edi, %eax
	sarl	%eax
	addl	%eax, %esi
	movl	%ebx, %eax
	movl	%edx, -132(%ebp)
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	%ecx, -32(%ebp)
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%esi, %edx
	movl	-132(%ebp), %eax
	movl	%ecx, -28(%ebp)
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-116(%ebp), %ecx
	movl	%edi, %edx
	subl	%eax, %ecx
	movl	-132(%ebp), %eax
	movl	%ecx, -48(%ebp)
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	cmpw	$16, -112(%ebp)
	je	L143
	movl	-64(%ebp), %eax
	movzwl	-138(%ebp), %esi
	movw	%si, 28(%eax)
L143:
	movl	$2, %ecx
	leal	-48(%ebp), %ebx
	leal	-32(%ebp), %esi
	jmp	L139
	.p2align 4,,10
	.p2align 3
L319:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L149
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L149:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L150
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L150:
	movl	-52(%ebp), %eax
	cmpl	$3, _rendmode
	je	L325
	call	_polymer_drawsprite
	xorps	%xmm5, %xmm5
	jmp	L152
	.p2align 4,,10
	.p2align 3
L322:
	movl	_rendmode, %esi
	movl	%ebx, _spritesortcnt
	testl	%esi, %esi
	jne	L326
	movl	%ebx, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L161:
	movl	_spritesortcnt, %ebx
	movl	$0, _tspriteptr(,%ebx,4)
	jmp	L162
L59:
	movl	-52(%ebp), %ecx
	movl	-80(%ebp), %esi
	subl	$1, %eax
	movl	%eax, _spritesortcnt
	cmpl	%esi, %ecx
	je	L61
	movl	_tspriteptr(,%eax,4), %edx
	movl	%edx, _tspriteptr(,%ecx,4)
	leal	(%eax,%eax,2), %edx
	movl	-76(%ebp), %ecx
	movlps	__ZL10spritesxyz.lto_priv.0(,%edx,4), %xmm5
	movlps	%xmm5, (%ecx)
	movl	_tspriteptr(,%esi,4), %ecx
	movl	%ecx, _tspriteptr(,%eax,4)
	leal	(%esi,%esi,2), %eax
	movlps	__ZL10spritesxyz.lto_priv.0(,%eax,4), %xmm5
	movlps	%xmm5, __ZL10spritesxyz.lto_priv.0(,%edx,4)
	jmp	L61
L325:
	call	__Z19polymost_drawspritei
	xorps	%xmm5, %xmm5
	jmp	L152
L326:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L158
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L158:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L159
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L159:
	movl	%ebx, %eax
	cmpl	$3, _rendmode
	je	L327
	call	_polymer_drawsprite
	jmp	L161
L314:
	movl	$0, _spritesortcnt
	testl	%esi, %esi
	jns	L32
	call	_videoBeginDrawing
L33:
	movl	$3, %eax
	call	__Z17polymost_setClampc
	movl	_spritesortcnt, %edi
	cmpl	%ebx, %edi
	jge	L67
	leal	-1(%ebx), %esi
	cmpl	%esi, %edi
	jle	L104
	jmp	L67
	.p2align 4,,10
	.p2align 3
L70:
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L328
	movl	%esi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L89:
	movl	$0, _tspriteptr(,%esi,4)
	movl	%ebx, %esi
L90:
	movl	_spritesortcnt, %edi
	cmpl	%edi, %ebx
	jl	L67
L104:
	movl	_tspriteptr(,%esi,4), %eax
	leal	-1(%esi), %ecx
	movl	%ecx, -64(%ebp)
	movl	%ecx, %ebx
	movl	%eax, -52(%ebp)
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L70
	cmpl	%edi, %ebx
	jl	L70
	movl	-52(%ebp), %edx
	leal	(%esi,%esi,2), %eax
	movl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %ecx
	movzwl	12(%edx), %eax
	movw	%ax, -52(%ebp)
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L302
	movzwl	28(%edx), %eax
	movl	%esi, -68(%ebp)
	movl	%ecx, %esi
	movw	%ax, -56(%ebp)
	jmp	L77
	.p2align 4,,10
	.p2align 3
L329:
	movl	_tspriteptr(,%ebx,4), %eax
	movzwl	-52(%ebp), %ecx
	xorw	12(%eax), %cx
	andl	$48, %ecx
	jne	L305
	movzwl	-56(%ebp), %ecx
	cmpw	28(%eax), %cx
	jne	L305
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L305
	subl	$1, %ebx
	cmpl	%ebx, %edi
	jg	L305
L77:
	leal	(%ebx,%ebx,2), %eax
	cmpl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %esi
	je	L329
L305:
	movl	-68(%ebp), %esi
L78:
	movl	%esi, %eax
	subl	%ebx, %eax
	cmpl	$1, %eax
	je	L70
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	cmpl	%esi, %ebx
	jge	L91
	movl	%esi, %edi
	jmp	L97
	.p2align 4,,10
	.p2align 3
L92:
	movl	%edi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L96:
	leal	-1(%edi), %eax
	cmpl	%eax, %ebx
	je	L330
L183:
	movl	%eax, %edi
L97:
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L92
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L93
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L93:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L94
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L94:
	movl	%edi, %eax
	cmpl	$3, _rendmode
	je	L331
	call	_polymer_drawsprite
	leal	-1(%edi), %eax
	cmpl	%eax, %ebx
	jne	L183
L330:
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	%ebx, -52(%ebp)
	movl	-64(%ebp), %ebx
	jmp	L103
	.p2align 4,,10
	.p2align 3
L98:
	movl	%esi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L102:
	movl	$0, _tspriteptr(,%esi,4)
	cmpl	%esi, %edi
	je	L332
L184:
	movl	%ebx, %esi
	subl	$1, %ebx
L103:
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L98
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L99
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L99:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L100
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L100:
	movl	%esi, %eax
	cmpl	$3, _rendmode
	je	L333
	call	_polymer_drawsprite
	movl	$0, _tspriteptr(,%esi,4)
	cmpl	%esi, %edi
	jne	L184
L332:
	movl	-52(%ebp), %ebx
L177:
	movl	$1, 12(%esp)
	movl	%ebx, %esi
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L90
L67:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	movswl	_maskwallcnt, %edi
	xorl	%ecx, %ecx
	movw	%cx, _maskwallcnt
	testl	%edi, %edi
	jle	L105
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	L110
	.p2align 4,,10
	.p2align 3
L335:
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L107
	movzbl	21(%eax), %edx
	movswl	16(%eax), %eax
	movl	_palookup(,%edx,4), %ecx
	movl	$33, (%esp)
	testl	%ecx, %ecx
	cmove	%esi, %edx
	xorl	%ecx, %ecx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L107
	movzwl	34(%eax), %eax
	andw	$1032, %ax
	cmpw	$8, %ax
	je	L334
L107:
	movswl	%bx, %eax
	addl	$1, %ebx
	call	__ZL20renderDrawMaskedWalls.lto_priv.0
	cmpl	%ebx, %edi
	je	L105
L110:
	movswl	_maskwall(%ebx,%ebx), %eax
	movl	%eax, %edx
	movswl	_thewall(%eax,%eax), %eax
	sall	$5, %eax
	addl	_wall, %eax
	testb	$-128, 14(%eax)
	je	L335
L106:
	movswl	_maskwallcnt, %ecx
	addl	$1, %ebx
	movl	%ecx, %eax
	movw	%dx, _maskwall(%ecx,%ecx)
	addl	$1, %eax
	movw	%ax, _maskwallcnt
	cmpl	%ebx, %edi
	jne	L110
L105:
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	movzwl	_maskwallcnt, %edx
	subl	$4, %esp
	testw	%dx, %dx
	jne	L309
L111:
	movl	$3, %eax
	call	__Z17polymost_setClampc
	jmp	L65
L323:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L167
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L167:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L168
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L168:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L169
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$2884, %edx
	movl	$1, %ecx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movl	_cursectormaskcount, %edx
	testl	%edx, %edx
	jne	L312
	jmp	L170
	.p2align 4,,10
	.p2align 3
L172:
	movl	_cursectormasks, %ecx
	subl	$1, %eax
	movw	%ax, (%edx)
	cwtl
	movl	$1, %edx
	movswl	(%ecx,%eax,2), %eax
	call	_polymer_drawsector.lto_priv.0
	movl	_cursectormaskcount, %edx
L312:
	movzwl	(%edx), %eax
	testw	%ax, %ax
	jne	L172
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_cursectormasks, %eax
	subl	$4, %esp
	movl	$0, _cursectormaskcount
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _cursectormasks
L170:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L173
L176:
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L173:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L174
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L174:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L166
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
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
	jmp	_videoEndDrawing
L32:
	.cfi_restore_state
	movl	-52(%ebp), %eax
	movl	_tsprite, %esi
	movl	%ebx, -72(%ebp)
	imull	$44, %eax, %edi
	movl	%eax, -68(%ebp)
	movl	%esi, -56(%ebp)
	movl	%eax, -64(%ebp)
	jmp	L51
	.p2align 4,,10
	.p2align 3
L34:
	movl	_usevoxels, %ecx
	testl	%ecx, %ecx
	je	L40
	movswl	%si, %ecx
	movswl	_tiletovox(%ecx,%ecx), %ecx
	cmpl	$2047, %ecx
	ja	L40
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	L40
L35:
	testb	$1, _voxflags(%ecx)
	jne	L48
L40:
	testb	$2, 12(%eax)
	jne	L42
	andl	$2, %edx
	jne	L42
	movswl	30(%eax), %edx
	cmpl	$16383, %edx
	ja	L44
	sall	$6, %edx
	addl	_spriteext, %edx
	xorps	%xmm5, %xmm5
	ucomiss	8(%edx), %xmm5
	jp	L42
	jne	L42
L44:
	movl	_usehightile, %ebx
	testl	%ebx, %ebx
	je	L48
	movzbl	17(%eax), %edx
	xorl	%eax, %eax
	movl	_palookup(,%edx,4), %ecx
	movl	$5, (%esp)
	testl	%ecx, %ecx
	cmove	%eax, %edx
	movswl	%si, %eax
	xorl	%ecx, %ecx
	call	_texcache_fetch
	movl	%eax, %edx
	movl	_tsprite, %eax
	movl	%eax, -56(%ebp)
	addl	%edi, %eax
	testl	%edx, %edx
	je	L48
	movzwl	34(%edx), %edx
	andw	$1032, %dx
	cmpw	$8, %dx
	je	L42
L48:
	movl	-68(%ebp), %esi
	subl	$1, -64(%ebp)
	subl	$44, %edi
	movl	%eax, _tspriteptr(,%esi,4)
	subl	$1, %esi
	movl	%esi, -68(%ebp)
	cmpl	$-1, -64(%ebp)
	je	L336
L51:
	movl	-56(%ebp), %eax
	addl	%edi, %eax
	movzbl	18(%eax), %edx
	movzwl	14(%eax), %esi
	testb	$16, %dl
	je	L34
	movswl	%si, %ecx
	cmpl	$2047, %ecx
	ja	L34
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	jne	L35
	movl	_usevoxels, %ebx
	testl	%ebx, %ebx
	je	L40
	movswl	_tiletovox(%ecx,%ecx), %ebx
	cmpl	$2047, %ebx
	ja	L38
	cmpl	$0, _voxmodels(,%ebx,4)
	je	L38
	testb	$1, _voxflags(%ebx)
	jne	L48
L38:
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	L40
	jmp	L35
	.p2align 4,,10
	.p2align 3
L42:
	movl	_spritesortcnt, %edx
	subl	$1, -64(%ebp)
	subl	$44, %edi
	movl	%eax, _tspriteptr(,%edx,4)
	addl	$1, %edx
	movl	%edx, _spritesortcnt
	cmpl	$-1, -64(%ebp)
	jne	L51
L336:
	movl	-72(%ebp), %ebx
	jmp	L52
L331:
	call	__Z19polymost_drawspritei
	jmp	L96
L333:
	call	__Z19polymost_drawspritei
	jmp	L102
L334:
	movzwl	_maskwall(%ebx,%ebx), %edx
	jmp	L106
L327:
	call	__Z19polymost_drawspritei
	jmp	L161
L328:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L86
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L86:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L87
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L87:
	movl	%esi, %eax
	cmpl	$3, _rendmode
	je	L337
	call	_polymer_drawsprite
	jmp	L89
L302:
	movl	%esi, -56(%ebp)
	movl	%ecx, %esi
	jmp	L71
	.p2align 4,,10
	.p2align 3
L338:
	movl	_tspriteptr(,%ebx,4), %eax
	movzwl	-52(%ebp), %ecx
	xorw	12(%eax), %cx
	andl	$48, %ecx
	jne	L313
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L313
	subl	$1, %ebx
	cmpl	%edi, %ebx
	jl	L313
L71:
	leal	(%ebx,%ebx,2), %eax
	cmpl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %esi
	je	L338
L313:
	movl	-56(%ebp), %esi
	jmp	L78
L315:
	call	_videoBeginDrawing
	jmp	L54
L91:
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L177
L169:
	movl	_cursectormaskcount, %edx
	testl	%edx, %edx
	jne	L312
	jmp	L176
L337:
	call	__Z19polymost_drawspritei
	jmp	L89
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0
	.def	__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0:
LFB32:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edx, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	call	_initspritelists
	call	_mi_collect.constprop.0
	movl	__ZL16reachablesectors.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	$0, __ZL16reachablesectors.lto_priv.0
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsector, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_editwall, (%esp)
	call	_memset
	movl	$16392, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_sectorchanged, (%esp)
	call	_memset
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_spritechanged, (%esp)
	call	_memset
	movl	$67584, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_wallchanged, (%esp)
	call	_memset
	movl	$262144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ornament, (%esp)
	call	_memset
	xorl	%eax, %eax
	cmpl	$9, _mapversion
	jle	L345
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
L345:
	.cfi_restore_state
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	$4, %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L342
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	4(%ebx), %edx
	movl	$4, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L342
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	8(%ebx), %edx
	movl	$4, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L342
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	$2, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L342
	andw	$2047, (%edi)
	movl	28(%esp), %edx
	movl	%esi, %eax
	movl	$2, %ecx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	setne	%al
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	negl	%eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L342:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
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
LFE32:
	.p2align 4
	.globl	_calc_sector_reachability
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
_calc_sector_reachability:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	_numsectors, %edi
	testw	%di, %di
	je	L346
	leal	(%edi,%edi,4), %esi
	movl	%edi, %ebx
	sall	$3, %esi
	testl	%esi, %esi
	jle	L376
	movl	_sector, %edx
	movl	%edi, -16(%ebp)
	movl	$4919, %eax
	addl	%edx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L349:
	movzbl	(%edx), %ecx
	movl	%eax, %ebx
	movzbl	%ah, %eax
	addl	$1, %edx
	sall	$8, %ebx
	xorl	%eax, %ecx
	movzwl	%bx, %eax
	xorl	_crctab16(,%ecx,4), %eax
	cmpl	%edx, %esi
	jne	L349
	movl	-16(%ebp), %ebx
L348:
	leal	7(%edi), %edx
	movl	__ZL16reachablesectors.lto_priv.0, %esi
	movl	%edi, %ecx
	sarl	$3, %edx
	imull	%edi, %edx
	testl	%esi, %esi
	je	L393
	movl	__ZZ24calc_sector_reachabilityE9tablesize, %edi
	cmpw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	je	L394
	movw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	cmpl	%edx, %edi
	je	L353
L351:
	movl	%edx, __ZZ24calc_sector_reachabilityE9tablesize
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZZ24calc_sector_reachabilityE9tablesize, %ebx
	subl	$4, %esp
	movl	$0, __ZL16reachablesectors.lto_priv.0
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L354
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movswl	_numsectors, %ebx
	movl	%esi, __ZL16reachablesectors.lto_priv.0
	movl	%ebx, %ecx
L353:
	movl	%ecx, -16(%ebp)
	movl	$32768, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_wallsect, (%esp)
	call	_memset
	leal	15(%ebx,%ebx), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	-16(%ebp), %ecx
	subl	%eax, %esp
	leal	27(%esp), %eax
	andl	$-16, %eax
	movl	%eax, -40(%ebp)
	testl	%ecx, %ecx
	jle	L346
	movl	$0, -48(%ebp)
	.p2align 4
	.p2align 3
L373:
	movl	-48(%ebp), %edi
	leal	7(%ecx), %eax
	sarl	$3, %eax
	movl	%edi, %edx
	imull	%eax, %edx
	addl	__ZL16reachablesectors.lto_priv.0, %edx
	movl	%edx, -20(%ebp)
	movl	%edx, %ebx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
	movl	-40(%ebp), %eax
	movl	$0, -44(%ebp)
	movw	%di, (%eax)
	movl	%edi, %eax
	sarl	$3, %edi
	andl	$7, %eax
	movl	%edi, -52(%ebp)
	movl	%eax, -56(%ebp)
	movzbl	__ZL8pow2char.lto_priv.1(%eax), %eax
	orb	%al, (%ebx,%edi)
	movl	$1, %eax
	movzwl	_numsectors, %esi
	movw	%ax, -30(%ebp)
	.p2align 4
	.p2align 3
L372:
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edi
	movswl	(%eax,%edi,2), %edx
	movl	_sector, %eax
	leal	(%edx,%edx,4), %ecx
	movl	%edx, %ebx
	leal	(%eax,%ecx,8), %eax
	movswl	(%eax), %ecx
	movswl	2(%eax), %eax
	addl	%ecx, %eax
	movl	%ecx, -28(%ebp)
	movl	%eax, -24(%ebp)
	movl	%eax, %edi
	cmpl	%eax, %ecx
	jge	L355
	subl	%ecx, %edi
	movl	%ecx, %eax
	andl	$1, %edi
	je	L391
	movw	%dx, _wallsect+0(%ecx,%ecx)
	leal	1(%ecx), %eax
	cmpl	%eax, -24(%ebp)
	je	L390
L391:
	movl	%edx, -16(%ebp)
	movl	-24(%ebp), %edx
	movl	%ecx, %edi
L356:
	movw	%bx, _wallsect+0(%eax,%eax)
	movw	%bx, _wallsect+2(%eax,%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L356
	movl	%edi, -28(%ebp)
	movl	-16(%ebp), %edx
L390:
	movswl	%si, %ebx
	cmpl	-48(%ebp), %edx
	je	L359
L375:
	leal	7(%ebx), %eax
	movl	-52(%ebp), %edi
	sarl	$3, %eax
	imull	%eax, %edx
	movl	%eax, -36(%ebp)
	movl	-56(%ebp), %eax
	addl	__ZL16reachablesectors.lto_priv.0, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movb	%al, -16(%ebp)
	andb	(%edx,%edi), %al
	cmpb	%al, -16(%ebp)
	je	L358
	cmpl	-24(%ebp), %ecx
	jge	L360
L359:
	sall	$5, %ecx
	addl	_wall, %ecx
	movl	-28(%ebp), %edi
	movl	%ecx, -16(%ebp)
	.p2align 4
	.p2align 3
L371:
	movl	-16(%ebp), %eax
	movzwl	12(%eax), %edx
	testw	%dx, %dx
	js	L364
	movswl	%dx, %eax
	movl	%edx, %ebx
	sarl	$3, %eax
	addl	-20(%ebp), %eax
	andl	$7, %ebx
	movzbl	(%eax), %ecx
	movl	%eax, -28(%ebp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %eax
	testb	%al, __ZL8pow2char.lto_priv.7(%ebx)
	je	L364
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %ebx
	testb	%bl, %al
	je	L364
	movl	-28(%ebp), %eax
	orl	%ebx, %ecx
	movl	-40(%ebp), %ebx
	movb	%cl, (%eax)
	movswl	-30(%ebp), %eax
	movl	%eax, %ecx
	movw	%dx, (%ebx,%eax,2)
	addl	$1, %ecx
	movw	%cx, -30(%ebp)
	.p2align 4
	.p2align 3
L364:
	xorl	%edx, %edx
	movswl	%di, %eax
	movl	%edi, %ebx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L366
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	js	L366
	sarl	$3, %eax
	addl	-20(%ebp), %eax
	movl	%edx, %esi
	movzbl	(%eax), %ecx
	movl	%eax, -28(%ebp)
	andl	$7, %esi
	movl	%ecx, %eax
	notl	%eax
	testb	%al, __ZL8pow2char.lto_priv.7(%esi)
	je	L366
	movzbl	__ZL8pow2char.lto_priv.1(%esi), %esi
	movl	%ecx, %eax
	movb	%cl, -36(%ebp)
	notl	%eax
	movl	%esi, %ecx
	testb	%cl, %al
	je	L366
	movzbl	-36(%ebp), %ecx
	movl	-28(%ebp), %eax
	orl	%esi, %ecx
	movl	-40(%ebp), %esi
	movb	%cl, (%eax)
	movswl	-30(%ebp), %eax
	movl	%eax, %ecx
	movw	%dx, (%esi,%eax,2)
	addl	$1, %ecx
	movw	%cx, -30(%ebp)
	.p2align 4
	.p2align 3
L366:
	movswl	%bx, %eax
	movl	$1, %edx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L369
	cwtl
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	js	L369
	sarl	$3, %eax
	addl	-20(%ebp), %eax
	movl	%edx, %ebx
	movzbl	(%eax), %ecx
	andl	$7, %ebx
	movl	%eax, -28(%ebp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %eax
	testb	%al, __ZL8pow2char.lto_priv.7(%ebx)
	je	L369
	movzbl	__ZL8pow2char.lto_priv.1(%ebx), %ebx
	testb	%bl, %al
	je	L369
	movl	-28(%ebp), %eax
	orl	%ebx, %ecx
	movb	%cl, (%eax)
	movswl	-30(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	%eax, %ebx
	addl	$1, %ebx
	movw	%dx, (%ecx,%eax,2)
	movw	%bx, -30(%ebp)
	.p2align 4
	.p2align 3
L369:
	addl	$32, -16(%ebp)
	addl	$1, %edi
	cmpl	%edi, -24(%ebp)
	jne	L371
	movswl	_numsectors, %ebx
	movl	%ebx, %esi
L360:
	addl	$1, -44(%ebp)
	movswl	-30(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jg	L372
	movl	%ebx, %ecx
L361:
	addl	$1, -48(%ebp)
	cmpl	%ecx, -48(%ebp)
	jl	L373
L346:
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
L355:
	.cfi_restore_state
	movswl	%si, %ebx
	cmpl	-48(%ebp), %edx
	jne	L375
	jmp	L360
L358:
	movl	-36(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movswl	_numsectors, %ecx
	jmp	L361
L393:
	movw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	jmp	L351
L394:
	cmpl	%edx, %edi
	jne	L351
	jmp	L346
L376:
	movl	$4919, %eax
	jmp	L348
L354:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0
	.def	__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0:
LFB39:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movswl	%cx, %esi
	movl	%ebx, 28(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 12(%esp)
	testl	%esi, %esi
	.cfi_offset 3, -20
	jle	L405
	movl	%esi, 16(%esp)
	xorl	%ebx, %ebx
	movl	$-1171354717, %esi
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%eax, 24(%esp)
	jmp	L400
	.p2align 4,,10
	.p2align 3
L397:
	movswl	26(%ecx), %edx
	cmpw	$1024, %dx
	je	L398
L414:
	movswl	24(%ecx), %eax
	call	_insertsprite
	leal	1(%ebx), %eax
	cmpl	%eax, 12(%esp)
	je	L413
L406:
	movl	%eax, %ebx
L400:
	imull	$44, %ebx, %ebp
	movl	_sprite, %edi
	leal	(%edi,%ebp), %ecx
	movzwl	12(%ecx), %eax
	notl	%eax
	testb	$48, %al
	jne	L397
	movzbl	23(%ecx), %eax
	orb	22(%ecx), %al
	jne	L397
	leal	12(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	26(%ecx), %edx
	andw	$-49, 12(%ecx)
	cmpw	$1024, %dx
	jne	L414
	.p2align 4
	.p2align 3
L398:
	leal	24(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%edi, %edx
	movw	%ax, 24(%ecx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%ax, 26(%ecx)
	movswl	24(%ecx), %eax
	call	_insertsprite
	leal	26(%ebp), %eax
	subl	$1, 16(%esp)
	movl	_sprite, %ecx
	mull	%esi
	movl	$1024, %eax
	addl	%ebp, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 26(%ecx)
	leal	1(%ebx), %eax
	cmpl	%eax, 12(%esp)
	jne	L406
L413:
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	xorl	%edi, %edi
	movl	$-1171354717, %ebp
	movl	24(%esp), %eax
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	%esi, 12(%esp)
	xorl	%esi, %esi
	cmpl	%ecx, %edx
	je	L412
	movl	%eax, 16(%esp)
	jmp	L401
	.p2align 5
	.p2align 4,,10
	.p2align 3
L402:
	addl	$44, %esi
	cmpl	%ebx, %edi
	je	L415
L408:
	addl	$1, %edi
L401:
	movl	_sprite, %edx
	leal	(%edx,%esi), %ecx
	cmpw	$1024, 26(%ecx)
	jne	L402
	leal	26(%ecx), %eax
	addl	$44, %esi
	subl	%edx, %eax
	mull	%ebp
	movswl	%di, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 26(%ecx)
	call	_deletesprite
	cmpl	%ebx, %edi
	jne	L408
L415:
	movl	16(%esp), %eax
L412:
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L396:
	movl	20(%esp), %ebx
	movl	%ebx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	_quickloadboard, %eax
	testl	%eax, %eax
	je	L416
L404:
	movl	$30720, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_tilecols, (%esp)
	movl	$0, _guniqhudid
	call	_memset
	call	_calc_sector_reachability
	movl	12(%esp), %eax
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
L416:
	.cfi_restore_state
	movl	_spriteext, %eax
	movl	$1048576, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_wallext, %eax
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_spritesmooth, %eax
	movl	$166400, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	cmpl	$4, _rendmode
	jne	L404
	testb	$4, 48(%esp)
	jne	L404
	call	_polymer_loadboard
	jmp	L404
	.p2align 4,,10
	.p2align 3
L405:
	movl	$0, 12(%esp)
	jmp	L396
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal statnum (%d) was REMOVED.\0"
LC6:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC7:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal picnum (%d) was REMOVED.\0"
	.align 4
LC8:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal sector (%d) moved to sector %d.\0"
	.align 4
LC9:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal sector (%d) REMOVED.\0"
	.text
	.p2align 4
	.globl	__ZL12check_spritei.lto_priv.0
	.def	__ZL12check_spritei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12check_spritei.lto_priv.0:
LFB40:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %edx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, %eax, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	(%edx,%esi), %ecx
	movswl	26(%ecx), %eax
	cmpl	$1023, %eax
	ja	L425
	movswl	14(%ecx), %eax
	cmpl	$30719, %eax
	ja	L426
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	24(%ecx), %eax
	movl	%eax, %edi
	movl	%eax, %ebp
	movswl	_numsectors, %eax
	cmpl	%eax, %edi
	jnb	L427
L417:
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L426:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	$-2, %edx
	jge	L428
L419:
	movl	40(%esp), %esi
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL13remove_spritei
	.p2align 4,,10
	.p2align 3
L425:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	$-2, %edx
	jl	L419
	movl	%eax, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC5, 12(%esp)
	movl	$11037, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L419
	.p2align 4,,10
	.p2align 3
L428:
	movl	%eax, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC7, 12(%esp)
	movl	$11043, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L419
	.p2align 4,,10
	.p2align 3
L427:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	leal	24(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	%edx, %eax
	movl	$-1, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%dx, 24(%ecx)
	addl	$1, _spritechanged(,%eax,4)
	movl	%edi, 8(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	_sprite, %ecx
	addl	%esi, %ecx
	movswl	24(%ecx), %edx
	testw	%dx, %dx
	js	L429
L422:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpw	$4096, %dx
	je	L423
	cmpl	$-2, %eax
	jl	L417
	movl	%edx, 32(%esp)
	movl	%ebp, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC8, 12(%esp)
	movl	$11058, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L417
	.p2align 4,,10
	.p2align 3
L423:
	cmpl	$-2, %eax
	jl	L417
	movl	%ebp, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC9, 12(%esp)
	movl	$11061, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L417
	.p2align 4,,10
	.p2align 3
L429:
	movl	%ebx, %eax
	call	__ZL13remove_spritei
	addl	_sprite, %esi
	movswl	24(%esi), %edx
	movl	%esi, %ecx
	jmp	L422
	.cfi_endproc
LFE40:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "Ignoring %d bytes of unknown data appended to map file. Saving changes to this file will result in loss of this data.\0"
	.align 4
LC12:
	.ascii "Using mapinfo-defined mapart %s\0"
	.text
	.p2align 4
	.globl	_engineLoadBoard
	.def	_engineLoadBoard;	.scl	2;	.type	32;	.endef
_engineLoadBoard:
LFB42:
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
	subl	$336, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	(%edi), %ebx
	movl	4(%edi), %edi
	movl	%edi, -304(%ebp)
	testl	%eax, %eax
	je	L431
	movb	%dl, -313(%ebp)
	andl	$3, %edx
	movl	%ecx, -300(%ebp)
	movl	%eax, -320(%ebp)
	call	_kopen4load.part.0
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L431
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_mapversion, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L494
	movl	_mapversion, %eax
	subl	$7, %eax
	cmpl	$2, %eax
	ja	L494
	movl	-304(%ebp), %eax
	movl	%ebx, %ecx
	movl	%eax, (%esp)
	movl	-300(%ebp), %edx
	movl	%esi, %eax
	call	__ZL22enginePrepareLoadBoardiP4vec3IiEPsS2_.lto_priv.0
	movl	%eax, -308(%ebp)
	testl	%eax, %eax
	jne	L437
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numsectors, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L437
	cmpl	$7, _mapversion
	movl	$4097, %eax
	movl	$1025, %ecx
	movswl	_numsectors, %edx
	cmovle	%ecx, %eax
	cmpl	%eax, %edx
	jnb	L437
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	(%edx,%edx,4), %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	sall	$3, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_sector, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %ebx
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %edx
	sall	$3, %edx
	cmpl	%ebx, %edx
	jne	L437
	testw	%ax, %ax
	jle	L440
	leal	-5(%eax,%eax,4), %eax
	movl	%esi, -312(%ebp)
	movl	$-858993459, %edi
	movl	_sector, %ebx
	sall	$3, %eax
	movl	%eax, -296(%ebp)
	.p2align 4
	.p2align 3
L441:
	movl	-296(%ebp), %eax
	leal	(%ebx,%eax), %ecx
	movl	%ecx, %edx
	movzwl	(%ecx), %esi
	subl	%ebx, %edx
	movl	-296(%ebp), %ebx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, (%ecx)
	movl	_sector, %eax
	leal	(%eax,%ebx), %ecx
	leal	2(%ecx), %edx
	movzwl	2(%ecx), %esi
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%edi
	movl	-296(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 2(%ecx)
	movl	_sector, %ebx
	leal	(%ebx,%eax), %ecx
	leal	4(%ecx), %edx
	movl	4(%ecx), %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%ebx, %edx
	movl	%esi, 4(%ecx)
	movl	8(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movl	%esi, 8(%ecx)
	movzwl	12(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 12(%ecx)
	movzwl	14(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 14(%ecx)
	movzwl	16(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 16(%ecx)
	movzwl	18(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 18(%ecx)
	movzwl	24(%ecx), %esi
	movl	%edx, %eax
	subl	$40, -296(%ebp)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 24(%ecx)
	movzwl	26(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 26(%ecx)
	movzwl	34(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 34(%ecx)
	movzwl	36(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%ebx, %edx
	movw	%si, 36(%ecx)
	movzwl	38(%ecx), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 38(%ecx)
	cmpl	$-40, -296(%ebp)
	jne	L441
	movl	-312(%ebp), %esi
L440:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numwalls, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L437
	cmpl	$7, _mapversion
	movl	$16385, %eax
	movl	$8193, %edx
	movswl	_numwalls, %ecx
	cmovle	%edx, %eax
	cmpl	%eax, %ecx
	jnb	L437
	movswl	_numsectors, %edi
	testw	%di, %di
	jle	L443
	movl	-308(%ebp), %ebx
	movl	%edi, -296(%ebp)
	movl	%esi, -308(%ebp)
	movl	_sector, %eax
	jmp	L444
	.p2align 4,,10
	.p2align 3
L499:
	movl	%ecx, %edi
	movswl	2(%eax), %esi
	subl	%edx, %edi
	cmpl	%esi, %edi
	jb	L492
	addl	$1, %ebx
	addl	$40, %eax
	cmpl	-296(%ebp), %ebx
	je	L498
L444:
	movswl	(%eax), %edx
	cmpl	%edx, %ecx
	jnb	L499
L492:
	movl	-308(%ebp), %esi
L437:
	xorl	%ecx, %ecx
	movl	%esi, %eax
	xorl	%ebx, %ebx
	movw	%cx, _numsectors
	movw	%bx, _numwalls
	call	_kclose
	movl	$-3, %eax
L430:
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
L498:
	.cfi_restore_state
	movl	-308(%ebp), %esi
L443:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	sall	$5, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_wall, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movswl	_numwalls, %ebx
	movl	%eax, %edx
	movl	%ebx, %ecx
	sall	$5, %ecx
	cmpl	%edx, %ecx
	jne	L437
	testw	%bx, %bx
	jle	L445
	subl	$1, %ebx
	movl	_wall, %edx
	sall	$5, %ebx
	.p2align 4
	.p2align 3
L446:
	movl	(%edx,%ebx), %edi
	movl	%ebx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edi, (%edx,%ebx)
	movl	_wall, %edx
	leal	(%edx,%ebx), %eax
	leal	4(%eax), %ecx
	movl	4(%eax), %edi
	subl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	8(%eax), %ecx
	subl	%edx, %ecx
	movl	%edi, 4(%eax)
	movzwl	8(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	10(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 8(%eax)
	movzwl	10(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	12(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 10(%eax)
	movzwl	12(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	14(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 12(%eax)
	movzwl	14(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	16(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 14(%eax)
	movzwl	16(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	18(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 16(%eax)
	movzwl	18(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	26(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 18(%eax)
	movzwl	26(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	28(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 26(%eax)
	movzwl	28(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	30(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 28(%eax)
	movzwl	30(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	subl	$32, %ebx
	movw	%di, 30(%eax)
	cmpl	$-32, %ebx
	jne	L446
L445:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-290(%ebp), %edx
	movl	$2, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L437
	cmpl	$7, _mapversion
	movl	$16385, %eax
	movl	$4097, %edx
	movswl	-290(%ebp), %ecx
	cmovle	%edx, %eax
	cmpl	%eax, %ecx
	jnb	L437
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	imull	$44, %ecx, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_sprite, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movswl	-290(%ebp), %eax
	imull	$44, %eax, %eax
	cmpl	%edx, %eax
	jne	L437
	movl	%esi, %eax
	call	_ktell
	movl	%eax, %ebx
	movl	%esi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	%eax, %ebx
	je	L448
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jge	L500
L448:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	%esi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L449
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	jne	L501
	movzbl	-313(%ebp), %eax
	movups	LC11, %xmm0
	movl	%ebx, %ecx
	movl	%edi, %edx
	movl	$0, -264(%ebp)
	andl	$-4, %eax
	movups	%xmm0, -280(%ebp)
	movb	%al, -308(%ebp)
	leal	-280(%ebp), %eax
	movl	$0, -260(%ebp)
	call	_md4block
	movl	-264(%ebp), %ebx
	movl	$8, %ecx
	leal	-264(%ebp), %edx
	leal	-288(%ebp), %eax
	call	__ZL6EncodePhPKjj.lto_priv.0
	shrl	$3, %ebx
	movl	$56, %eax
	movl	$120, %ecx
	andl	$63, %ebx
	movl	$__ZL7PADDING, %edx
	subl	%ebx, %eax
	subl	%ebx, %ecx
	cmpl	$55, %ebx
	cmovbe	%eax, %ecx
	leal	-280(%ebp), %eax
	call	_md4block
	movl	$8, %ecx
	leal	-288(%ebp), %edx
	leal	-280(%ebp), %eax
	call	_md4block
	leal	-280(%ebp), %edx
	movl	$_g_loadedMapHack+12, %eax
	movl	$16, %ecx
	call	__ZL6EncodePhPKjj.lto_priv.0
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%esi, %eax
	subl	$4, %esp
	call	_kclose
	movswl	-290(%ebp), %ecx
	movl	_mapversion, %eax
	leal	-1(%ecx), %ebx
	movl	%ebx, -296(%ebp)
	cmpl	$9, %eax
	jg	L454
	movl	$-1171354717, %esi
	testl	%ebx, %ebx
	js	L456
	.p2align 4
	.p2align 3
L455:
	imull	$44, -296(%ebp), %ecx
	movl	_sprite, %edx
	leal	(%edx,%ecx), %ebx
	movl	%ebx, %eax
	movl	(%ebx), %edi
	subl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, (%ebx)
	movl	_sprite, %edi
	addl	%edi, %ecx
	leal	4(%ecx), %edx
	movl	4(%ecx), %ebx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%edi, %edx
	movl	%ebx, 4(%ecx)
	movl	8(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%edi, %edx
	movl	%ebx, 8(%ecx)
	movzwl	12(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 12(%ecx)
	movzwl	14(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 14(%ecx)
	movzwl	24(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 24(%ecx)
	movzwl	26(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 26(%ecx)
	movzwl	28(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 28(%ecx)
	movzwl	30(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 30(%ecx)
	movzwl	32(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 32(%ecx)
	movzwl	34(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 34(%ecx)
	movzwl	36(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 36(%ecx)
	movzwl	38(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 38(%ecx)
	movzwl	40(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%edi, %edx
	movw	%bx, 40(%ecx)
	movzwl	42(%ecx), %ebx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 42(%ecx)
	movl	-296(%ebp), %ebx
	movl	%ebx, %eax
	call	__ZL12check_spritei.lto_priv.0
	leal	-1(%ebx), %eax
	movl	%eax, -296(%ebp)
	cmpl	$-1, %eax
	jne	L455
L495:
	movl	_mapversion, %eax
L456:
	cmpl	$8, %eax
	movl	%eax, _g_loadedMapVersion
	setle	%al
	movzbl	%al, %eax
	call	_yax_update
	cmpw	$0, _editstatus
	jne	L502
L459:
	testb	$8, -313(%ebp)
	je	L503
L460:
	movzbl	-308(%ebp), %eax
	movswl	-290(%ebp), %ecx
	movl	%eax, (%esp)
	movl	-304(%ebp), %edx
	movl	-300(%ebp), %eax
	call	__ZL21engineFinishLoadBoardPK4vec3IiEPssc.lto_priv.0
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
L454:
	.cfi_restore_state
	testw	%cx, %cx
	jle	L456
	movl	-296(%ebp), %ebx
	.p2align 4
	.p2align 3
L458:
	movl	%ebx, %eax
	call	__ZL12check_spritei.lto_priv.0
	subl	$1, %ebx
	jnb	L458
	jmp	L495
L500:
	subl	%ebx, %eax
	movl	$LC10, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$11240, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L448
L503:
	movl	-320(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	leal	-280(%ebp), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L504
	movl	$1734763310, (%eax)
	movb	$0, 4(%eax)
L462:
	leal	-280(%ebp), %eax
	call	__Z8OSD_ExecPKc
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L463
	call	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
L463:
	movl	_vsync, %eax
	call	_videoSetVsync
	movl	%eax, _vsync
	movl	_usermaphacks, %eax
	testl	%eax, %eax
	je	L464
	movl	$_compare_usermaphacks, 16(%esp)
	movl	$28, 12(%esp)
	movl	_num_usermaphacks, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$_g_loadedMapHack, (%esp)
	call	_bsearch
	testl	%eax, %eax
	je	L464
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L464
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L465
	movl	%ebx, 16(%esp)
	movl	$LC12, 12(%esp)
	movl	$11309, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, -296(%ebp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-296(%ebp), %eax
	movl	8(%eax), %ebx
L465:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %edx
	testl	%edx, %edx
	je	L497
	call	_artClearMapArt.part.0
L497:
	movl	%ebx, (%esp)
	call	_strlen
	addl	$7, %eax
	cmpl	$255, %eax
	ja	L460
	movl	%ebx, %eax
	call	_artSetupMapArt.part.0
	jmp	L460
L502:
	movl	-300(%ebp), %eax
	movl	8(%eax), %eax
	call	_yax_updategrays
	jmp	L459
L464:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L468
	call	_artClearMapArt.part.0
L468:
	movl	-320(%ebp), %ebx
	jmp	L497
L494:
	movl	%esi, %eax
	call	_kclose
	movl	$-2, %eax
	jmp	L430
L449:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L501:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L437
L504:
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	$1734763310, -280(%ebp,%eax)
	movb	$0, -276(%ebp,%eax)
	jmp	L462
L431:
	movl	$7, _mapversion
	movl	$-1, %eax
	jmp	L430
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0
	.def	__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15convertv6sectv7P12sectortypev6P12sectortypev7.lto_priv.0:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	addl	$4, %edx
	movl	$-858993459, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	_sector, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subl	%edi, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	12(%eax), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%edi, %edx
	movl	%esi, 4(%ecx)
	movl	16(%ebx), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%esi, 8(%ecx)
	movzwl	(%ebx), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	2(%ecx), %edx
	movw	%si, (%ecx)
	subl	_sector, %edx
	movl	%edx, %eax
	movzwl	2(%ebx), %esi
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	16(%ecx), %edx
	movw	%si, 2(%ecx)
	movl	_sector, %esi
	movzwl	4(%ebx), %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$32767, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%ecx), %edx
	movw	%di, 16(%ecx)
	movswl	8(%ebx), %edi
	sall	$5, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	$-32768, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 18(%ecx)
	testb	$2, 26(%ebx)
	jne	L506
	addl	$1, _sectorchanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 18(%ecx)
L506:
	leal	20(%ecx), %edx
	movl	$-858993459, %ebp
	movzbl	20(%ebx), %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 20(%ecx)
	movzbl	28(%ebx), %edi
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	22(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 21(%ecx)
	movzbl	22(%ebx), %edi
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	23(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 22(%ecx)
	movzbl	24(%ebx), %edi
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 23(%ecx)
	movzwl	6(%ebx), %edi
	movl	%edx, %eax
	mull	%ebp
	movl	$32767, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	26(%ecx), %edx
	movw	%di, 24(%ecx)
	movswl	10(%ebx), %edi
	sall	$5, %edi
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	$-32768, %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 26(%ecx)
	testb	$2, 27(%ebx)
	jne	L507
	xorl	%eax, %eax
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 26(%ecx)
L507:
	leal	28(%ecx), %edx
	movl	$-858993459, %edi
	movzbl	21(%ebx), %ebp
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	29(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 28(%ecx)
	movzbl	29(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 29(%ecx)
	movzbl	23(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	31(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 30(%ecx)
	movzbl	25(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 31(%ecx)
	movzbl	26(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	movzbl	%al, %ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 12(%ecx)
	movzbl	27(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	movzbl	%al, %ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 14(%ecx)
	movzbl	30(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	33(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 32(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 33(%ecx)
	movzwl	31(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 34(%ecx)
	movzwl	33(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 36(%ecx)
	movzwl	35(%ebx), %ebx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%bx, 38(%ecx)
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
LFE57:
	.p2align 4
	.globl	__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0
	.def	__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL15convertv6wallv7P10walltypev6P10walltypev7.lto_priv.0:
LFB58:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %ecx
	subl	_wall, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	(%eax), %ebx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movl	%ebx, (%edx)
	movl	_wall, %ecx
	leal	4(%edx), %ebx
	movl	4(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	8(%edx), %ebx
	subl	%ecx, %ebx
	movl	%esi, 4(%edx)
	movzwl	8(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	10(%edx), %ebx
	subl	%ecx, %ebx
	movw	%si, 8(%edx)
	movzwl	12(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	12(%edx), %ebx
	subl	%ecx, %ebx
	movw	%si, 10(%edx)
	movzwl	10(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	14(%edx), %ebx
	subl	%ecx, %ebx
	movw	%si, 12(%edx)
	movzwl	20(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	16(%edx), %ebx
	subl	%ecx, %ebx
	movw	%si, 14(%edx)
	movzwl	14(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	18(%edx), %ebx
	subl	%ecx, %ebx
	movw	%si, 16(%edx)
	movzwl	16(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	20(%edx), %ebx
	movw	%si, 18(%edx)
	subl	%ecx, %ebx
	movzbl	18(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 20(%edx)
	leal	21(%edx), %ebx
	movzbl	19(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 21(%edx)
	leal	22(%edx), %ebx
	movzbl	22(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 22(%edx)
	leal	23(%edx), %ebx
	movzbl	23(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 23(%edx)
	leal	24(%edx), %ebx
	movzbl	24(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 24(%edx)
	leal	25(%edx), %ebx
	movzbl	25(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movl	%esi, %ebx
	movb	%bl, 25(%edx)
	leal	26(%edx), %ebx
	movzwl	26(%eax), %esi
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	leal	28(%edx), %ebx
	movw	%si, 26(%edx)
	subl	%ecx, %ebx
	movzwl	28(%eax), %esi
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	movw	%si, 28(%edx)
	movzwl	30(%eax), %ebx
	leal	30(%edx), %eax
	subl	%ecx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 30(%edx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0
	.def	__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14convertv6sprv7P12spritetypev6P12spritetypev7.lto_priv.0:
LFB59:
	.cfi_startproc
	movl	%edx, %ecx
	subl	_sprite, %edx
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
	movl	$-1171354717, %ebx
	movl	(%eax), %esi
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	movl	%esi, (%ecx)
	movl	_sprite, %esi
	movl	4(%edi), %ebp
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%esi, %edx
	movl	%ebp, 4(%ecx)
	movl	8(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%esi, %edx
	movl	%ebp, 8(%ecx)
	movzwl	12(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 12(%ecx)
	movzwl	21(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 14(%ecx)
	movzbl	14(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 16(%ecx)
	movzbl	15(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 17(%ecx)
	movzbl	16(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	19(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 18(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	$0, 19(%ecx)
	movzbl	17(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 20(%ecx)
	movzbl	18(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 21(%ecx)
	movzbl	19(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 22(%ecx)
	movzbl	20(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 23(%ecx)
	movzwl	33(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 24(%ecx)
	movzwl	35(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 26(%ecx)
	movzwl	23(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 28(%ecx)
	movzwl	31(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 30(%ecx)
	movzwl	25(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 32(%ecx)
	movzwl	27(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 34(%ecx)
	movzwl	29(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 36(%ecx)
	movzwl	37(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 38(%ecx)
	movzwl	39(%edi), %ebp
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%esi, %edx
	movw	%bp, 40(%ecx)
	movzwl	41(%edi), %edi
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movw	%di, 42(%ecx)
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
LFE59:
	.section .rdata,"dr"
	.align 4
LC13:
	.ascii "Map error: sprite #%d(%d,%d) with illegal statnum (%d)\0"
	.align 4
LC14:
	.ascii "Map error: sprite #%d(%d,%d) with illegal sectnum (%d)\0"
	.align 4
LC15:
	.ascii "Couldn't open file %s for writing: %s.\0"
	.text
	.p2align 4
	.globl	_saveboard
	.def	_saveboard;	.scl	2;	.type	32;	.endef
_saveboard:
LFB60:
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
	xorl	%ebx, %ebx
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	_sprite, %ebp
	movl	%eax, 32(%esp)
	movl	%edx, 36(%esp)
	movw	%cx, 40(%esp)
	jmp	L518
	.p2align 4,,10
	.p2align 3
L514:
	movswl	24(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$4096, %ecx
	ja	L573
L516:
	addl	$1, %ebx
	addl	$44, %esi
	cmpl	$16384, %ebx
	je	L574
L518:
	leal	0(%ebp,%esi), %eax
	movswl	26(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$1024, %ecx
	jbe	L514
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edi
	cmpl	%edi, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edi
	cmpl	$-2, %edi
	jge	L575
L515:
	testw	$-1025, %dx
	je	L514
	movswl	%bx, %eax
	call	_do_deletespritestat
	xorl	%edx, %edx
	movswl	%bx, %eax
	call	_do_insertsprite_at_headofstat
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %eax
	movswl	24(%eax), %ecx
	movl	%ecx, %edx
	cmpl	$4096, %ecx
	jbe	L516
L573:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edi
	cmpl	%edi, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %edi
	cmpl	$-2, %edi
	jge	L576
L517:
	testw	$-4097, %dx
	je	L516
	movswl	%bx, %eax
	addl	$44, %esi
	call	_do_deletespritesect
	movswl	%bx, %eax
	xorl	%edx, %edx
	addl	$1, %ebx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %ebp
	cmpl	$16384, %ebx
	jne	L518
L574:
	leal	26(%ebp), %eax
	leal	720922(%ebp), %edx
	xorl	%ebx, %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L520:
	cmpw	$1024, (%eax)
	leal	1(%ebx), %ecx
	cmovne	%ecx, %ebx
	addl	$44, %eax
	cmpl	%eax, %edx
	jne	L520
	movl	_numyaxbunches, %edx
	movl	$9, %eax
	testl	%edx, %edx
	jg	L521
	cmpw	$1024, _numsectors
	jg	L523
	cmpw	$8192, _numwalls
	jg	L523
	xorl	%eax, %eax
	cmpl	$4096, _Numsprites
	setg	%al
	addl	$7, %eax
L521:
	movl	%eax, _mapversion
	movl	32(%esp), %eax
	movl	$384, 8(%esp)
	movl	$33537, 4(%esp)
	movl	%eax, (%esp)
	call	_open
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L577
	leal	52(%esp), %esi
	movl	%edi, (%esp)
	movl	_mapversion, %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	36(%esp), %ebp
	movl	0(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	4(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movl	8(%ebp), %eax
	movl	%esi, 4(%esp)
	movl	$4, 8(%esp)
	movl	%edi, (%esp)
	movl	%eax, 52(%esp)
	call	_write
	movzwl	40(%esp), %eax
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movzwl	76(%esp), %eax
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movzwl	_numsectors, %eax
	movl	$2, 8(%esp)
	movl	%edi, (%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 4(%esp)
	call	_write
	movswl	_numsectors, %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax,4), %esi
	sall	$3, %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L537
	movswl	_numsectors, %eax
	movl	%ebp, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movzwl	_numsectors, %ecx
	movswl	%cx, %edx
	testw	%cx, %cx
	jle	L530
	movw	%bx, 36(%esp)
	xorl	%ebx, %ebx
	movl	%ebp, 44(%esp)
	addl	$22, %ebp
	movl	%edi, 40(%esp)
	jmp	L536
	.p2align 5
	.p2align 4,,10
	.p2align 3
L531:
	addl	$1, %ebx
	movswl	%cx, %edx
	addl	$40, %ebp
	cmpl	%ebx, %edx
	jle	L578
L536:
	cmpw	$0, _editstatus
	jne	L531
	movzwl	_yax_bunchnum(,%ebx,4), %edx
	leal	-22(%ebp), %esi
	xorl	%ecx, %ecx
	movswl	%bx, %edi
	leal	0(,%ebx,4), %eax
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	testw	%ax, %ax
	js	L533
L535:
	movb	%al, 22(%esi,%ecx,8)
L533:
	cmpl	$1, %ecx
	je	L571
L566:
	cmpw	$0, _editstatus
	je	L579
	movl	$1, %edx
	movl	%edi, %eax
	call	_yax_getbunch.part.0
	movl	$1, %ecx
	testw	%ax, %ax
	jns	L535
	cmpl	$1, %ecx
	jne	L566
L571:
	movzwl	_numsectors, %ecx
L582:
	addl	$1, %ebx
	movswl	%cx, %edx
	addl	$40, %ebp
	cmpl	%ebx, %edx
	jg	L536
L578:
	movzwl	36(%esp), %ebx
	movl	40(%esp), %edi
	movl	44(%esp), %ebp
L530:
	leal	(%edx,%edx,4), %eax
	movl	%ebp, 4(%esp)
	sall	$3, %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	call	_write
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	movzwl	_numwalls, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_write
	movswl	_numwalls, %esi
	movl	_g_sm_heap, %ecx
	sall	$5, %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L537
	movswl	_numwalls, %eax
	movl	%ebp, (%esp)
	xorl	%esi, %esi
	sall	$5, %eax
	movl	%eax, 8(%esp)
	movl	_wall, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	movzwl	_numwalls, %edx
	movswl	%dx, %eax
	testw	%dx, %dx
	jle	L539
	movl	%edi, 36(%esp)
	leal	26(%ebp), %edi
	movw	%bx, 32(%esp)
	jmp	L542
	.p2align 5
	.p2align 4,,10
	.p2align 3
L540:
	addl	$1, %esi
	movswl	%dx, %eax
	addl	$32, %edi
	cmpl	%esi, %eax
	jle	L580
L542:
	cmpw	$0, _editstatus
	jne	L540
	xorl	%edx, %edx
	movswl	%si, %eax
	movl	%esi, %ebx
	call	_yax_getnextwall
	testw	%ax, %ax
	js	L541
	movw	%ax, (%edi)
L541:
	movswl	%bx, %eax
	call	_yax_getnextwall.constprop.0
	movzwl	_numwalls, %edx
	testw	%ax, %ax
	js	L540
	movw	%ax, 4(%edi)
	movzwl	_numwalls, %edx
	addl	$1, %esi
	addl	$32, %edi
	movswl	%dx, %eax
	cmpl	%esi, %eax
	jg	L542
L580:
	movzwl	32(%esp), %ebx
	movl	36(%esp), %edi
L539:
	sall	$5, %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_write
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	leal	50(%esp), %eax
	movl	$2, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movw	%bx, 50(%esp)
	call	_write
	testw	%bx, %bx
	jle	L543
	movswl	%bx, %ebx
	movl	_g_sm_heap, %ecx
	imull	$44, %ebx, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	xorl	%ecx, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, %esi
	movl	%eax, %edx
	testl	%eax, %eax
	je	L581
	.p2align 4
	.p2align 3
L544:
	movl	_sprite, %eax
	addl	%ecx, %eax
	cmpw	$1024, 26(%eax)
	je	L545
	movl	(%eax), %ebp
	addl	$44, %edx
	movl	%ebp, -44(%edx)
	movl	4(%eax), %ebp
	movl	%ebp, -40(%edx)
	movl	8(%eax), %ebp
	movl	%ebp, -36(%edx)
	movl	12(%eax), %ebp
	movl	%ebp, -32(%edx)
	movl	16(%eax), %ebp
	movl	%ebp, -28(%edx)
	movl	20(%eax), %ebp
	movl	%ebp, -24(%edx)
	movl	24(%eax), %ebp
	movl	%ebp, -20(%edx)
	movl	28(%eax), %ebp
	movl	%ebp, -16(%edx)
	movl	32(%eax), %ebp
	movl	%ebp, -12(%edx)
	movl	36(%eax), %ebp
	movl	%ebp, -8(%edx)
	movl	40(%eax), %eax
	movl	%eax, -4(%edx)
L545:
	addl	$44, %ecx
	cmpl	$720896, %ecx
	jne	L544
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	_write
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
L543:
	movl	%edi, (%esp)
	xorl	%edi, %edi
	call	_close
L513:
	addl	$56, %esp
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
	.p2align 4,,10
	.p2align 3
L575:
	.cfi_restore_state
	movl	%ecx, 28(%esp)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC13, 12(%esp)
	movl	$11631, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_sprite, %ebp
	leal	0(%ebp,%esi), %eax
	movzwl	26(%eax), %edx
	jmp	L515
	.p2align 4,,10
	.p2align 3
L576:
	movl	%ecx, 28(%esp)
	movl	4(%eax), %edx
	movl	%edx, 24(%esp)
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC14, 12(%esp)
	movl	$11638, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_sprite, %ebp
	movzwl	24(%ebp,%esi), %edx
	jmp	L517
L579:
	movl	32(%esp), %eax
	movl	$1, %ecx
	movzwl	_yax_bunchnum+2(%eax), %eax
	testw	%ax, %ax
	jns	L535
	movzwl	_numsectors, %ecx
	jmp	L582
L523:
	movl	$8, %eax
	jmp	L521
L537:
	movl	%esi, %eax
	call	__Z13handle_memerri
L581:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L577:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L513
	call	*__imp___errno
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*__imp__strerror
	movl	$LC15, 12(%esp)
	movl	%eax, 20(%esp)
	movl	32(%esp), %eax
	movl	$11672, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L513
	.cfi_endproc
LFE60:
	.section .rdata,"dr"
	.align 4
LC17:
	.ascii "#version 110\12         \12         attribute vec4 i_vertPos;\12         attribute vec2 i_texCoord;\12         \12         varying vec2 v_texCoord;\12         \12         void main()\12         {\12             gl_Position = i_vertPos;\12             v_texCoord = i_texCoord;\12         }\12\0"
	.align 4
LC18:
	.ascii "#version 120\12         \12         //s_texture points to an indexed color texture\12         uniform sampler2D s_texture;\12         //s_palette is the palette texture\12         uniform sampler2D s_palette;\12         \12         varying vec2 v_texCoord;\12         \12         const float c_paletteScale = 255.0/256.0;\12         const float c_paletteOffset = 0.5/256.0;\12         uniform vec4 u_colorCorrection;\12         const vec2 c_vec2_zero_one = vec2(0.0, 1.0);\12         const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12         \12         void main()\12         {\12             vec4 color = texture2D(s_texture, v_texCoord.xy);\12             color.r = c_paletteScale * color.r + c_paletteOffset;\12             color.rgb = texture2D(s_palette, color.rg).rgb;\12             \12             // DEBUG \12             //color = texture2D(s_palette, v_texCoord.xy);\12             //color = texture2D(s_texture, v_texCoord.xy);\12             \12             vec4 v_cc = vec4(u_colorCorrection.x - 1.0, 0.5 * -(u_colorCorrection.y - 1.0), -(u_colorCorrection.z - 1.0), 1.0);\12             gl_FragColor = mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw)\12                          * mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw)\12                          * mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                                 (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                                 (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                                 c_vec2_zero_one.xxxy)\12                          * color;\12         }\12\0"
LC19:
	.ascii "i_vertPos\0"
LC20:
	.ascii "i_texCoord\0"
LC21:
	.ascii "s_texture\0"
LC22:
	.ascii "s_palette\0"
LC23:
	.ascii "u_colorCorrection\0"
	.data
	.align 32
LC16:
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.text
	.p2align 4
	.globl	__ZL20videoAllocateBuffersv.lto_priv.0
	.def	__ZL20videoAllocateBuffersv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20videoAllocateBuffersv.lto_priv.0:
LFB67:
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
	subl	$312, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$__ZL4dplc.lto_priv.0, -128(%ebp)
	movl	_ydim, %edx
	movl	$__ZL5smost.lto_priv.0, -192(%ebp)
	movl	$__ZL5umost.lto_priv.0, -184(%ebp)
	movl	$__ZL5dmost.lto_priv.0, -176(%ebp)
	movl	$_startumost, -168(%ebp)
	movl	$_startdmost, -160(%ebp)
	movl	$__ZL8bakumost, -152(%ebp)
	movl	$__ZL8bakdmost, -144(%ebp)
	movl	$__ZL4uplc.lto_priv.0, -136(%ebp)
	movl	$__ZL5uwall.lto_priv.0, -120(%ebp)
	movl	$__ZL5dwall.lto_priv.0, -112(%ebp)
	movl	$__ZL5swplc.lto_priv.0, -104(%ebp)
	movl	$__ZL4lplc.lto_priv.0, -96(%ebp)
	movl	$__ZL5swall.lto_priv.0, -88(%ebp)
	movl	$__ZL6swallf.lto_priv.0, -80(%ebp)
	movl	$__ZL5lwall.lto_priv.0, -72(%ebp)
	movl	_xdim, %ecx
	movl	$__ZL9radarang2.lto_priv.0, -64(%ebp)
	movl	%ecx, %eax
	movl	$__ZL5dotp1.lto_priv.0, -56(%ebp)
	sall	$14, %eax
	movl	$__ZL5dotp2.lto_priv.0, -48(%ebp)
	sarl	$6, %eax
	movl	$__ZL5lastx.lto_priv.0, -40(%ebp)
	movl	%eax, -188(%ebp)
	leal	(%ecx,%ecx), %eax
	movl	%eax, -180(%ebp)
	movl	%eax, -172(%ebp)
	movl	%eax, -164(%ebp)
	movl	%eax, -156(%ebp)
	movl	%eax, -148(%ebp)
	movl	%eax, -140(%ebp)
	movl	%eax, -132(%ebp)
	movl	%eax, -124(%ebp)
	movl	%eax, -116(%ebp)
	movl	%eax, -108(%ebp)
	leal	0(,%ecx,4), %eax
	leal	16(%eax), %ebx
	movl	%eax, -100(%ebp)
	movl	%eax, -92(%ebp)
	movl	%eax, -84(%ebp)
	movl	%eax, -76(%ebp)
	movl	%eax, -60(%ebp)
	movl	$320, %eax
	cmpl	%eax, %edx
	movl	%ebx, -68(%ebp)
	leal	-192(%ebp), %ebx
	cmovge	%edx, %eax
	imull	%edx, %ecx
	sall	$5, %edx
	movl	$_mirrorBuffer, -32(%ebp)
	movl	$__ZL7lookups, -24(%ebp)
	sall	$2, %eax
	movl	%edx, -20(%ebp)
	movl	%eax, -52(%ebp)
	movl	%eax, -44(%ebp)
	movl	%eax, -36(%ebp)
	movl	%ecx, -28(%ebp)
	jmp	L586
	.p2align 4,,10
	.p2align 3
L604:
	movl	%eax, (%esi)
	addl	$8, %ebx
	leal	-16(%ebp), %eax
	cmpl	%ebx, %eax
	je	L611
L586:
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L604
	testl	%edi, %edi
	je	L604
L601:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L611:
	movl	_ydim, %edx
	movl	__ZL7lookups, %eax
	movl	%edx, %ecx
	movl	%eax, __ZL11horizlookup.lto_priv.0
	sall	$4, %ecx
	addl	%ecx, %eax
	movl	%eax, __ZL12horizlookup2.lto_priv.0
	leal	0(,%edx,4), %eax
	sarl	%eax
	movl	%eax, __ZL10horizycent.lto_priv.0
	movl	_xdim, %eax
	sall	$14, %eax
	sarl	$7, %eax
	movl	%eax, __ZL8ysavecnt.lto_priv.0
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	_rendmode, %ebx
	movl	%eax, __ZL12nodesperline.lto_priv.0
	testl	%ebx, %ebx
	jne	L583
	movss	_ydim, %xmm0
	movl	_xdim, %esi
	movl	%esi, -280(%ebp)
	movss	-280(%ebp), %xmm1
	unpcklps	%xmm0, %xmm1
	cmpb	$0, _nogl
	jne	L589
	movl	__ZL6buffer.lto_priv.0, %eax
	testl	%eax, %eax
	je	L590
	movss	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z17glsurface_destroyv
	movss	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
L590:
	movss	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z28buildgl_resetStateAccountingv
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	*_glad_glPixelStorei
	movss	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
	subl	$8, %esp
	movss	%xmm0, -280(%ebp)
	imull	-280(%ebp), %esi
	movlps	%xmm1, __ZL9bufferRes.lto_priv.0
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L591
	movl	%eax, __ZL6buffer.lto_priv.0
	movl	__ZL11quadVertsID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	subl	$4, %esp
	testb	%al, %al
	je	L592
L593:
	movl	__ZL11quadVertsID.lto_priv.0, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
L594:
	movl	LC16(%eax), %esi
	movl	LC16+4(%eax), %ebx
	movl	LC16+8(%eax), %ecx
	movl	LC16+12(%eax), %edx
	movl	%esi, -272(%ebp,%eax)
	movl	%ebx, -268(%ebp,%eax)
	movl	%ecx, -264(%ebp,%eax)
	movl	%edx, -260(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L594
	leal	-272(%ebp), %eax
	movl	$35044, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	movl	$0, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$12, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$0, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
	movl	$1, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
	cmpl	$33984, _gl+4
	je	L596
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L596:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsTexture
	subl	$4, %esp
	testb	%al, %al
	jne	L597
	movl	$__ZL11bufferTexID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	subl	$8, %esp
L597:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
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
	subl	$12, %esp
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$0, 20(%esp)
	movl	__ZL9bufferRes.lto_priv.0+4, %eax
	movl	%eax, 16(%esp)
	movl	__ZL9bufferRes.lto_priv.0, %eax
	movl	$6403, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	movl	__ZL6buffer.lto_priv.0, %eax
	subl	$36, %esp
	testl	%eax, %eax
	je	L598
	call	__Z20glsurface_setPalettePv.part.0.constprop.0
L598:
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	jne	L599
	call	*_glad_glCreateProgram
	movl	$LC17, %edx
	movl	%eax, __ZL15shaderProgramID.lto_priv.0
	movl	$35633, %eax
	call	__ZL13compileShaderjPKc.lto_priv.0
	movl	$LC18, %edx
	movl	%eax, %esi
	movl	$35632, %eax
	call	__ZL13compileShaderjPKc.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %ebx
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	$LC19, 8(%esp)
	movl	$0, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glBindAttribLocation
	subl	$12, %esp
	movl	$LC20, 8(%esp)
	movl	$1, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glBindAttribLocation
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	subl	$12, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%esi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%ebx, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
L599:
	movl	__ZL15shaderProgramID.lto_priv.0, %ebx
	movl	%ebx, (%esp)
	call	*_glad_glUseProgram
	subl	$4, %esp
	movl	%ebx, _gl
	movl	$LC21, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL13texSamplerLoc
	movl	$LC22, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL17paletteSamplerLoc
	movl	$LC23, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL18colorCorrectionLoc.lto_priv.0
	movl	$0, 4(%esp)
	movl	__ZL13texSamplerLoc, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL17paletteSamplerLoc, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movss	_g_glColorCorrection+12, %xmm0
	subl	$8, %esp
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movss	%xmm0, 4(%esp)
	movl	__ZL18colorCorrectionLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L583:
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
L589:
	.cfi_restore_state
	movl	_xres, %edi
	movl	__ZL6buffer.lto_priv.1, %eax
	movss	_yres, %xmm2
	movl	%edi, -280(%ebp)
	movss	-280(%ebp), %xmm0
	unpcklps	%xmm2, %xmm0
	testl	%eax, %eax
	je	L600
	movlps	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z19softsurface_destroyv
	movlps	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
L600:
	movl	%edi, %eax
	movlps	%xmm1, __ZL9bufferRes.lto_priv.1
	cltd
	movlps	%xmm0, __ZL13destBufferRes.lto_priv.0
	sall	$16, %eax
	movl	%esi, 8(%esp)
	shldl	$16, %edi, %edx
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL9bufferRes.lto_priv.1+4, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL13destBufferRes.lto_priv.0+4, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, __ZL8yScale16.lto_priv.0
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL9bufferRes.lto_priv.1, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL9bufferRes.lto_priv.1, %esi
	imull	__ZL9bufferRes.lto_priv.1+4, %esi
	movl	%eax, __ZL11recXScale16.lto_priv.0
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	addl	$15, %esi
	andl	$-16, %esi
	leal	(%esi,%eax,2), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L601
	leal	(%eax,%esi), %ecx
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	movl	__ZL11recXScale16.lto_priv.0, %esi
	movl	%eax, __ZL6buffer.lto_priv.1
	movl	%ecx, __ZL18scanPosLookupTable.lto_priv.0
	movl	%esi, %eax
	testl	%edx, %edx
	jle	L583
	.p2align 5
	.p2align 4
	.p2align 3
L603:
	movl	%eax, %edx
	addl	%esi, %eax
	shrl	$16, %edx
	movw	%dx, (%ecx,%ebx,2)
	addl	$1, %ebx
	cmpl	__ZL13destBufferRes.lto_priv.0, %ebx
	jl	L603
	jmp	L583
L592:
	movl	$__ZL11quadVertsID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	subl	$8, %esp
	jmp	L593
L591:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
LC24:
	.ascii "reference0000.png\0"
	.text
	.p2align 4
	.globl	_videoNextPage
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
_videoNextPage:
LFB76:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	cmpl	$200, _qsetmode
	je	L648
L613:
	call	__Z16timerUpdateClockv
	movl	_g_cache+16, %ecx
	movl	__ZZN7cache1d9ageBlocksEvE8agecount, %eax
	cmpl	%eax, %ecx
	jg	L624
	leal	-1(%ecx), %eax
	movl	%eax, __ZZN7cache1d9ageBlocksEvE8agecount
L624:
	testl	%eax, %eax
	js	L625
	movl	_g_cache+12, %edx
	subl	$1, %ecx
	sarl	$4, %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	testl	%edx, %edx
	je	L625
	movl	%ebx, 56(%esp)
	subl	$1, %edx
	movl	%esi, 60(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.p2align 4
	.p2align 3
L628:
	movl	%eax, %ecx
	sall	$4, %ecx
	addl	_g_cache, %ecx
	movl	(%ecx), %esi
	movzbl	(%esi), %ebx
	leal	-2(%ebx), %ecx
	movzbl	%cl, %ecx
	cmpl	$197, %ecx
	jg	L626
	subl	$1, %ebx
	movb	%bl, (%esi)
L626:
	subl	$1, %eax
	jns	L627
	movl	_g_cache+16, %eax
	subl	$1, %eax
L627:
	subl	$1, %edx
	jnb	L628
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	%eax, __ZZN7cache1d9ageBlocksEvE8agecount
L625:
	movl	_mdtims, %eax
	movl	%eax, _omdtims
	leal	48(%esp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	52(%esp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	imull	$1000, 48(%esp), %ecx
	movl	_spriteext, %edx
	addl	%eax, %ecx
	leal	16(%edx), %eax
	addl	$1064976, %edx
	movl	%ecx, _mdtims
	subl	_omdtims, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L630:
	testb	$2, -4(%eax)
	je	L629
	addl	%ecx, (%eax)
L629:
	addl	$64, %eax
	cmpl	%eax, %edx
	jne	L630
	addl	$1, _numframes
	movl	$1, __ZL15beforedrawrooms.lto_priv.0
	addl	$68, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L648:
	.cfi_restore_state
	movl	%ebx, 56(%esp)
	movl	%esi, 60(%esp)
	movl	%edi, 64(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	call	_videoBeginDrawing
	movl	__ZL8permtail.lto_priv.0, %ebx
	cmpl	__ZL8permhead.lto_priv.0, %ebx
	jne	L616
L614:
	call	_videoEndDrawing
	movl	_benchmarkScreenshot, %eax
	testl	%eax, %eax
	jne	L649
L617:
	call	__Z8OSD_Drawv
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	jne	L618
	xorl	%eax, %eax
	call	_videoShowFrame.part.0
L618:
	call	_videoBeginDrawing
	movl	__ZL8permtail.lto_priv.0, %esi
	cmpl	%esi, __ZL8permhead.lto_priv.0
	jne	L623
L619:
	call	_videoEndDrawing
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
	jmp	L613
L650:
	.cfi_restore_state
	movl	__ZL8permfifo.lto_priv.0+40(%eax), %esi
	movl	__ZL8permfifo.lto_priv.0(%eax), %edi
	movl	__ZL8permfifo.lto_priv.0+8(%eax), %ecx
	movl	__ZL8permfifo.lto_priv.0+4(%eax), %edx
	movl	%esi, 44(%esp)
	movl	__ZL8permfifo.lto_priv.0+36(%eax), %esi
	movl	%esi, 40(%esp)
	movl	__ZL8permfifo.lto_priv.0+32(%eax), %esi
	movl	%esi, 36(%esp)
	movl	__ZL8permfifo.lto_priv.0+28(%eax), %esi
	movl	%esi, 32(%esp)
	movl	__ZL8permfifo.lto_priv.0+24(%eax), %esi
	movl	%esi, 28(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+20(%eax), %esi
	movl	%esi, 24(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+19(%eax), %esi
	movl	%esi, 20(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+18(%eax), %esi
	movl	%esi, 16(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+17(%eax), %esi
	movl	%esi, 12(%esp)
	movsbl	__ZL8permfifo.lto_priv.0+16(%eax), %esi
	movl	%esi, 8(%esp)
	movswl	__ZL8permfifo.lto_priv.0+14(%eax), %esi
	movl	%esi, 4(%esp)
	movswl	__ZL8permfifo.lto_priv.0+12(%eax), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	.p2align 5
	.p2align 4
	.p2align 3
L615:
	addl	$1, %ebx
	andl	$511, %ebx
	cmpl	%ebx, __ZL8permhead.lto_priv.0
	je	L614
L616:
	imull	$44, %ebx, %eax
	movzbl	__ZL8permfifo.lto_priv.0+21(%eax), %edx
	testb	%dl, %dl
	je	L615
	cmpl	_numpages, %edx
	jg	L615
	jmp	L650
L652:
	imull	$44, %esi, %ecx
	subl	$1, %eax
	movb	%al, __ZL8permfifo.lto_priv.0+21(%ecx)
	testb	$127, %al
	je	L621
L622:
	cmpl	%edx, __ZL8permhead.lto_priv.0
	je	L619
	movl	%edx, %esi
L623:
	imull	$44, %esi, %ebx
	movzbl	__ZL8permfifo.lto_priv.0+21(%ebx), %eax
	cmpb	$-127, %al
	ja	L651
L620:
	leal	1(%esi), %edx
	andl	$511, %edx
	testb	$127, %al
	jne	L652
L621:
	cmpl	%esi, __ZL8permtail.lto_priv.0
	jne	L622
	movl	%edx, __ZL8permtail.lto_priv.0
	jmp	L622
L651:
	movl	__ZL8permfifo.lto_priv.0+40(%ebx), %edi
	movl	__ZL8permfifo.lto_priv.0(%ebx), %eax
	movl	__ZL8permfifo.lto_priv.0+8(%ebx), %ecx
	movl	__ZL8permfifo.lto_priv.0+4(%ebx), %edx
	movl	%edi, 44(%esp)
	movl	__ZL8permfifo.lto_priv.0+36(%ebx), %edi
	movl	%edi, 40(%esp)
	movl	__ZL8permfifo.lto_priv.0+32(%ebx), %edi
	movl	%edi, 36(%esp)
	movl	__ZL8permfifo.lto_priv.0+28(%ebx), %edi
	movl	%edi, 32(%esp)
	movl	__ZL8permfifo.lto_priv.0+24(%ebx), %edi
	movl	%edi, 28(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+20(%ebx), %edi
	movl	%edi, 24(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+19(%ebx), %edi
	movl	%edi, 20(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+18(%ebx), %edi
	movl	%edi, 16(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+17(%ebx), %edi
	movl	%edi, 12(%esp)
	movsbl	__ZL8permfifo.lto_priv.0+16(%ebx), %edi
	movl	%edi, 8(%esp)
	movswl	__ZL8permfifo.lto_priv.0+14(%ebx), %edi
	movl	%edi, 4(%esp)
	movswl	__ZL8permfifo.lto_priv.0+12(%ebx), %edi
	movl	%edi, (%esp)
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	movzbl	__ZL8permfifo.lto_priv.0+21(%ebx), %eax
	jmp	L620
L649:
	movl	$0, 4(%esp)
	movl	$LC24, (%esp)
	call	__Z18videoCaptureScreenPKcc
	movl	$0, _benchmarkScreenshot
	jmp	L617
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
	.align 4
LC27:
	.ascii "VirtualProtect() error! Crashing in 3... 2... 1...\0"
	.align 4
LC28:
	.ascii "source/build/src/baselayer.cpp\0"
LC29:
	.ascii "ABORT: \0"
	.align 4
LC32:
	.ascii "\12#version 120\12\12varying vec4 v_color;\12varying float v_distance;\12\12//u_texturePosSize is the texture position & size packaged into a single vec4 as {pos.x, pos.y, size.x, size.y}\12uniform vec4 u_texturePosSize;\12uniform float u_usePalette;\12uniform mat4 u_rotMatrix;\12\12const float c_zero = 0.0;\12const float c_one  = 1.0;\12\12void main()\12{\12   vec4 vertex = u_rotMatrix * gl_Vertex;\12   vec4 eyeCoordPosition = gl_ModelViewMatrix * vertex;\12   gl_Position = gl_ModelViewProjectionMatrix * vertex;\12\12   eyeCoordPosition.xyz /= eyeCoordPosition.w;\12\12   gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;\12   gl_TexCoord[0] = mix(gl_TexCoord[0].xyzw, gl_TexCoord[0].yxzw, u_usePalette);\12\12   gl_TexCoord[3] = gl_TextureMatrix[3] * gl_MultiTexCoord3;\12   gl_TexCoord[4] = gl_TextureMatrix[4] * gl_MultiTexCoord4;\12\12   gl_FogFragCoord = abs(eyeCoordPosition.z);\12   //gl_FogFragCoord = clamp((gl_Fog.end-abs(eyeCoordPosition.z))*gl_Fog.scale, c_zero, c_one);\12\12   v_color = gl_Color;\12   v_distance = gl_Vertex.z;\12}\12\0"
	.align 4
LC33:
	.ascii "\12#version 120\12#extension GL_ARB_shader_texture_lod : enable\12\12//include an additional space here so that we can programmatically search for and disable this preprocessor definition easily\12 #define POLYMOST1_EXTENDED\12\12//s_texture points to an indexed color texture\12uniform sampler2D s_texture;\12//s_palswap is the palette swap texture where u is the color index and v is the shade\12uniform sampler2D s_palswap;\12//s_palette is the base palette texture where u is the color index\12uniform sampler2D s_palette;\12\12#ifdef POLYMOST1_EXTENDED\12uniform sampler2D s_detail;\12uniform sampler2D s_glow;\12#endif\12\12//u_texturePosSize is the texture position & size packaged into a single vec4 as {pos.x, pos.y, size.x, size.y}\12uniform vec4 u_texturePosSize;\12uniform vec2 u_halfTexelSize;\12uniform vec2 u_palswapPos;\12uniform vec2 u_palswapSize;\12\12uniform vec2 u_clamp;\12\12uniform float u_shade;\12uniform vec2 u_numShades;\12uniform float u_visFactor;\12uniform float u_fogEnabled;\12\12uniform float u_useColorOnly;\12uniform float u_usePalette;\12uniform vec4 u_npotEmulation;\12uniform float u_shadeInterpolate;\12\12#ifdef POLYMOST1_EXTENDED\12uniform float u_useDetailMapping;\12uniform float u_useGlowMapping;\12#endif\12\12varying vec4 v_color;\12varying float v_distance;\12\12const float c_basepalScale = 255.0/256.0;\12const float c_basepalOffset = 0.5/256.0;\12\12const float c_zero = 0.0;\12const float c_one = 1.0;\12const float c_two = 2.0;\12const vec4 c_vec4_one = vec4(c_one);\12const float c_wrapThreshold = 0.9;\12\12uniform vec4 u_colorCorrection;\12const vec2 c_vec2_zero_one = vec2(c_zero, c_one);\12const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12\12void main()\12{\12    vec2 coord = mix(gl_TexCoord[0].xy,gl_TexCoord[0].yx,u_usePalette);\12    float modCoordYnpotEmulationFactor = mod(coord.y,u_npotEmulation.y);\12    coord.xy = vec2(floor(modCoordYnpotEmulationFactor)*u_npotEmulation.x+coord.x, floor(coord.y*u_npotEmulation.w)+modCoordYnpotEmulationFactor);\12    vec2 newCoord = mix(gl_TexCoord[0].xy,mix(coord.xy,coord.yx,u_usePalette),u_npotEmulation"
	.ascii ".z);\12#ifdef GL_ARB_shader_texture_lod\12    vec2 texCoord = mix(fract(newCoord.xy), clamp(newCoord.xy, c_zero, c_one), u_clamp);\12    texCoord = clamp(u_texturePosSize.zw*texCoord, u_halfTexelSize, u_texturePosSize.zw-u_halfTexelSize);\12    vec4 color = texture2DGradARB(s_texture, u_texturePosSize.xy+texCoord, dFdx(gl_TexCoord[0].xy), dFdy(gl_TexCoord[0].xy));\12#else\12    vec2 transitionBlend = fwidth(floor(newCoord.xy));\12    transitionBlend = fwidth(transitionBlend)+transitionBlend;\12    vec2 texCoord = mix(mix(fract(newCoord.xy), abs(c_one-mod(newCoord.xy+c_one, c_two)), transitionBlend), clamp(newCoord.xy, c_zero, c_one), u_clamp);\12    texCoord = clamp(u_texturePosSize.zw*texCoord, u_halfTexelSize, u_texturePosSize.zw-u_halfTexelSize);\12    vec4 color = texture2D(s_texture, u_texturePosSize.xy+texCoord);\12#endif\12\12    float shade = clamp((u_shade+clamp(u_visFactor*v_distance-0.5*u_shadeInterpolate,c_zero,u_numShades.x)), c_zero, u_numShades.x-c_one);\12    float shadeFrac = mod(shade, c_one);\12    float colorIndex = texture2D(s_palswap, vec2(color.r, floor(shade)*u_numShades.y)*u_palswapSize+u_palswapPos).r * c_basepalScale + c_basepalOffset;\12    float colorIndexNext = texture2D(s_palswap, u_palswapSize*vec2(color.r, (floor(shade)+c_one)*u_numShades.y)+u_palswapPos).r * c_basepalScale + c_basepalOffset;\12    vec4 palettedColor = texture2D(s_palette, vec2(colorIndex, c_zero));\12    vec4 palettedColorNext = texture2D(s_palette, vec2(colorIndexNext, c_zero));\12    palettedColor.rgb = mix(palettedColor.rgb, palettedColorNext.rgb, shadeFrac*u_shadeInterpolate);\12    float fullbright = mix(u_usePalette*palettedColor.a, c_zero, u_useColorOnly);\12    palettedColor.a = c_one-floor(color.r);\12    color = mix(color, palettedColor, u_usePalette);\12\12#ifdef POLYMOST1_EXTENDED\12    vec4 detailColor = texture2D(s_detail, gl_TexCoord[3].xy);\12    detailColor = mix(c_vec4_one, 2.0*detailColor, u_useDetailMapping*detailColor.a);\12    color.rgb *= detailColor.rgb;\12#endif\12\12    color = mix(color, c_vec4_one"
	.ascii ", u_useColorOnly);\12\12    // DEBUG\12    //color = texture2D(s_palswap, gl_TexCoord[0].xy);\12    //color = texture2D(s_palette, gl_TexCoord[0].xy);\12    //color = texture2D(s_texture, gl_TexCoord[0].yx);\12\12    color.rgb = mix(v_color.rgb*color.rgb, color.rgb, fullbright);\12\12    fullbright = clamp(-(u_fogEnabled-c_one), fullbright, c_one);\12    float fogFactor = clamp((gl_Fog.end-gl_FogFragCoord)*gl_Fog.scale, fullbright, c_one);\12    //float fogFactor = clamp(gl_FogFragCoord, fullbright, c_one);\12    color.rgb = mix(gl_Fog.color.rgb, color.rgb, fogFactor);\12\12#ifdef POLYMOST1_EXTENDED\12    vec4 glowColor = texture2D(s_glow, gl_TexCoord[4].xy);\12    color.rgb = mix(color.rgb, glowColor.rgb, u_useGlowMapping * glowColor.a * -(u_useColorOnly-c_one));\12#endif\12\12    color.a *= v_color.a;\12\12    vec4 v_cc = vec4(u_colorCorrection.x - c_one, 0.5 * -(u_colorCorrection.y-c_one), -(u_colorCorrection.z-c_one), 1.0);\12    gl_FragData[0] = mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw)\12                   * mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw)\12                   * mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                          (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                          (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                          c_vec2_zero_one.xxxy)\12                   * color;\12}\12\0"
LC34:
	.ascii " #define POLYMOST1_EXTENDED\0"
	.align 4
LC40:
	.ascii "palswap data too large for tilesheet!\0"
LC41:
	.ascii "source/build/src/polymost.cpp\0"
LC42:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC43:
	.ascii "source/build/src/scriptfile.cpp\0"
	.align 4
LC44:
	.ascii "Corrupted texcache index detected, invalidating texcache files.\0"
LC45:
	.ascii "source/build/src/texcache.cpp\0"
	.align 4
LC47:
	.ascii "Failed mapping texcache! Error %d: %s\0"
LC48:
	.ascii "Mapped %d byte texcache\0"
	.align 4
LC49:
	.ascii "Cache contains %d bytes of garbage data\0"
	.align 4
LC50:
	.ascii "Generating 3D meshes from voxel model data. This may take a while...\0"
	.align 4
LC55:
	.ascii "Generated 3D meshes for %d voxels in %.2f ms.\0"
	.data
	.align 32
LC31:
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.text
	.p2align 4
	.globl	_videoSetGameMode
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
_videoSetGameMode:
LFB83:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movzbl	%al, %eax
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
	movl	$640, %ebx
	subl	$232, %esp
	movl	4(%edi), %esi
	cmpb	$0, _nogl
	movl	%eax, -184(%ebp)
	movl	%esi, -168(%ebp)
	movl	$8, %esi
	cmove	(%edi), %esi
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	movl	$400, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%ebx, -176(%ebp)
	movl	%edx, %ebx
	cmpl	$200, _qsetmode
	jne	L655
	cmpb	$0, _videomodereset
	je	L843
L655:
	movl	$0, _g_lastpalettesum
	xorl	%edi, %edi
	movl	$0, _g_lastpalettesum+4
	movl	%ebx, -192(%ebp)
	.p2align 4
	.p2align 3
L658:
	movl	_voxmodels(,%edi,4), %ebx
	testl	%ebx, %ebx
	je	L657
	movl	88(%ebx), %eax
	testl	%eax, %eax
	je	L657
	leal	88(%ebx), %edx
	movl	$1, (%esp)
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteBuffers
	leal	92(%ebx), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 88(%ebx)
L657:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L658
	movl	_models, %edx
	movl	-192(%ebp), %ebx
	testl	%edx, %edx
	je	L659
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L659
	xorl	%edi, %edi
	jmp	L661
	.p2align 5
	.p2align 4,,10
	.p2align 3
L660:
	addl	$1, %edi
	cmpl	_nextmodelid, %edi
	jge	L835
L844:
	movl	_models, %edx
L661:
	movl	(%edx,%edi,4), %ebx
	cmpl	$1, (%ebx)
	jne	L660
	movl	88(%ebx), %eax
	testl	%eax, %eax
	je	L660
	leal	88(%ebx), %edx
	movl	$1, (%esp)
	addl	$1, %edi
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteBuffers
	leal	92(%ebx), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 88(%ebx)
	cmpl	_nextmodelid, %edi
	jl	L844
L835:
	movl	-192(%ebp), %ebx
L659:
	movl	-184(%ebp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %eax
	call	_videoSetMode
	testl	%eax, %eax
	js	L761
	leal	-96(%ebp), %eax
	movl	$64, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$_dep_end, %eax
	subl	$_dep_begin, %eax
	movl	$_dep_begin, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__VirtualProtect@16
	subl	$16, %esp
	testl	%eax, %eax
	je	L845
	xorl	%eax, %eax
	movzbl	_divtable32+1004, %ecx
	cmpl	$8, %esi
	movl	_divtable32+1000, %edx
	cmovg	_glrendmode, %eax
	movl	_yres, %esi
	andl	$31, %ecx
	movl	%eax, _rendmode
	testl	%edx, %edx
	je	L846
	movl	%edx, %eax
	imull	%esi
	movzbl	_divtable32+1004, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %esi
	addl	%edx, %esi
	subl	%eax, %esi
	testb	$64, _divtable32+1004
	cmove	%edx, %esi
	movl	%esi, %eax
	shrl	$31, %esi
	sarl	%cl, %eax
	leal	(%eax,%esi), %ecx
L665:
	movl	-168(%ebp), %eax
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	cmovle	%eax, %ecx
	movl	%ecx, _upscalefactor
	cmpl	$8, _bpp
	jne	L667
	movl	-176(%ebp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -176(%ebp)
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebx
L667:
	movl	-176(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	%ebx, %edx
	movl	%ebx, _ydim
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _xdim
	movss	%xmm0, _fxdim
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, _fydim
	call	__Z17OSD_ResizeDisplayii
	call	__ZL20videoAllocateBuffersv.lto_priv.0
	movl	_ydim, %edx
	movl	_bytesperline, %eax
	movl	$-1, __ZL13oviewingrange.lto_priv.0
	movl	$-1, __ZL7oxdimen.lto_priv.0
	movl	$-1, _oxyaspect
	call	_calc_ylookup
	movl	_xdim, %eax
	xorl	%edx, %edx
	leal	-1(%eax), %ecx
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	cmpl	$200, _qsetmode
	jne	L668
	cmpl	$2, _rendmode
	jg	L847
	call	_videoBeginDrawing
	movl	_bytesperline, %eax
	imull	_ydim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
	call	__Z16timerUpdateClockv
L668:
	movzbl	_curbrightness, %eax
	call	_videoSetPalette.constprop.0
	movl	_searchx, %ebx
	testl	%ebx, %ebx
	jns	L670
	movl	_halfxdimen, %eax
	movl	%eax, _searchx
	movl	_ydimen, %eax
	sarl	%eax
	movl	%eax, _searchy
L670:
	cmpl	$2, _rendmode
	jg	L848
L671:
	movl	$200, _qsetmode
L759:
	xorl	%eax, %eax
L653:
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
L846:
	.cfi_restore_state
	movl	$-1, %eax
	movl	%esi, %edi
	movzbl	_divtable32+1004, %edx
	sall	%cl, %eax
	sarl	$31, %edi
	notl	%eax
	sarb	$7, %dl
	andl	%edi, %eax
	movsbl	%dl, %edx
	addl	%esi, %eax
	sarl	%cl, %eax
	movl	%eax, %ecx
	xorl	%edx, %ecx
	subl	%edx, %ecx
	jmp	L665
L843:
	cmpl	%eax, _fullscreen
	jne	L655
	movl	_g_displayindex, %eax
	cmpl	%eax, _r_displayindex
	jne	L655
	movl	-176(%ebp), %eax
	cmpl	%eax, _xres
	jne	L655
	cmpl	%edx, _yres
	jne	L655
	cmpl	%esi, _bpp
	jne	L655
	movl	-168(%ebp), %eax
	cmpl	%eax, _upscalefactor
	jne	L655
	jmp	L759
	.p2align 4,,10
	.p2align 3
L848:
	call	_polymost_glreset
	call	__Z28buildgl_resetStateAccountingv
	movl	$4354, 4(%esp)
	movl	$3156, (%esp)
	call	*_glad_glHint
	movl	$2049, %edx
	movl	$9729, %eax
	subl	$8, %esp
	cmpl	$1, _r_usenewshading
	cmovle	%edx, %eax
	movl	$2917, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glFogi
	subl	$8, %esp
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	$3333, (%esp)
	call	*_glad_glPixelStorei
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	*_glad_glPixelStorei
	subl	$8, %esp
	testb	$8, _glinfo+28
	jne	L849
L673:
	call	__Z21polymost_initdrawpolyv
	movl	_glinfo+20, %eax
	cmpl	$8192, %eax
	jg	L764
	movss	LC0, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC4, %xmm0
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	divss	%xmm2, %xmm0
L674:
	movl	%eax, __ZL13tilesheetSize
	movss	%xmm1, __ZL18tilesheetSizeRecip.lto_priv.0
	movss	%xmm0, __ZL22tilesheetHalfTexelSize.lto_priv.0
	movss	%xmm0, __ZL22tilesheetHalfTexelSize.lto_priv.0+4
	call	__Z27buildgl_resetSamplerObjectsv
	movl	__ZL13tilesheetSize, %eax
	movl	__ZZ15polymost_glinitvE13numTilesheets, %ebx
	movl	%eax, -168(%ebp)
	testl	%ebx, %ebx
	je	L850
	jle	L692
L690:
	movl	-168(%ebp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L694:
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glIsTexture
	subl	$4, %esp
	testb	%al, %al
	jne	L693
	leal	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%esi, (%esp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$0, 8(%esp)
	movl	$1, %eax
	movl	%esi, 4(%esp)
	call	__Z20uploadtextureindexedi4vec2IiES0_i
L693:
	addl	$1, %ebx
	cmpl	__ZZ15polymost_glinitvE13numTilesheets, %ebx
	jl	L694
L692:
	movl	_tiles+12, %ecx
	movl	$-1, -164(%ebp)
	testl	%ecx, %ecx
	je	L695
	movl	_tiles, %eax
	movl	%eax, -208(%ebp)
	movl	_tiles+4, %eax
	movl	%eax, -204(%ebp)
	movl	_tiles+8, %eax
	movl	%eax, -200(%ebp)
L695:
	movl	-208(%ebp), %eax
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	-164(%ebp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6403, 24(%esp)
	movl	$2, 20(%esp)
	movl	$2, 16(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-204(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	movl	__ZL11quadVertsID.lto_priv.1, %eax
	subl	$36, %esp
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	subl	$4, %esp
	testb	%al, %al
	jne	L696
	movl	$__ZL11quadVertsID.lto_priv.1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	subl	$8, %esp
L696:
	movl	__ZL11quadVertsID.lto_priv.1, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
L697:
	movl	LC31(%eax), %esi
	movl	LC31+4(%eax), %ebx
	movl	LC31+8(%eax), %ecx
	movl	LC31+12(%eax), %edx
	movl	%esi, -96(%ebp,%eax)
	movl	%ebx, -92(%ebp,%eax)
	movl	%ecx, -88(%ebp,%eax)
	movl	%edx, -84(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L697
	leal	-96(%ebp), %eax
	movl	$35044, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	movl	$0, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$12, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glVertexAttribPointer
	movl	$34962, %eax
	subl	$24, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	je	L851
	xorl	%edi, %edi
	xorl	%esi, %esi
L699:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	je	L852
L700:
	movl	%esi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%edi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%ebx, (%esp)
	call	*_glad_glDeleteShader
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	subl	$4, %esp
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	$0, 4(%esp)
	movl	__ZL22polymost1TexSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$2, 4(%esp)
	movl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$3, 4(%esp)
	movl	__ZL25polymost1DetailSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$4, 4(%esp)
	movl	__ZL23polymost1GlowSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L704
	movswl	_numshades, %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movss	LC37, %xmm2
	movl	$0x3e000000, __ZL20polymost1PalswapSize.lto_priv.0
	leal	1(%edx), %ecx
	movzwl	%dx, %eax
	shrl	$16, %edx
	movzwl	%cx, %ebx
	shrl	$16, %ecx
	cvtsi2ssl	%eax, %xmm3
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%ebx, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	LC38, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL20polymost1PalswapSize.lto_priv.0+4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	movss	LC39, %xmm1
	movss	%xmm1, __ZL25polymost1PalswapInnerSize.lto_priv.0
	movss	%xmm0, __ZL25polymost1PalswapInnerSize.lto_priv.0+4
	movss	%xmm0, 8(%esp)
	movss	%xmm1, 4(%esp)
	movl	__ZL23polymost1PalswapSizeLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform2f
	subl	$12, %esp
L704:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	xorl	%ebx, %ebx
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	$0, 4(%esp)
	movl	__ZL22polymost1TexSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$2, 4(%esp)
	movl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$0, (%esp)
	call	*_glad_glUseProgram
	subl	$4, %esp
	movl	$0, _gl
	movl	$-1, __ZL11lastbasepal.lto_priv.0
	.p2align 4
	.p2align 3
L705:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__Z17uploadbasepalettei
	cmpl	$256, %ebx
	jne	L705
	xorl	%ebx, %ebx
	jmp	L710
	.p2align 4,,10
	.p2align 3
L855:
	movl	$__ZL16palswapTextureID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
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
	subl	$12, %esp
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$0, 20(%esp)
	movl	$2048, 16(%esp)
	movl	$2048, 12(%esp)
	movl	$6403, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
L708:
	movswl	_numshades, %eax
	movl	%ebx, %esi
	sarl	$3, %esi
	leal	1(%eax), %edx
	imull	%edx, %esi
	cmpl	$2048, %esi
	jg	L853
	movl	%ebx, %edi
	addl	%esi, %eax
	movl	$__ZZ13uploadpalswapiE14blackPixels256, 32(%esp)
	andl	$7, %edi
	movl	%eax, 12(%esp)
	sall	$8, %edi
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$1, 20(%esp)
	movl	$256, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	movl	_palookup(,%ebx,4), %eax
	subl	$36, %esp
	movl	%eax, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movswl	_numshades, %eax
	movl	$256, 16(%esp)
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	subl	$36, %esp
L706:
	addl	$1, %ebx
	cmpl	$256, %ebx
	je	L854
L710:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %edi
	testl	%edi, %edi
	je	L706
	movl	_palookup(,%ebx,4), %esi
	testl	%esi, %esi
	je	L706
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L855
	call	__Z19buildgl_bindTexturejj.constprop.0
	jmp	L708
L764:
	movss	LC25, %xmm0
	movl	$8192, %eax
	movss	LC26, %xmm1
	jmp	L674
L851:
	call	*_glad_glCreateProgram
	xorl	%ecx, %ecx
	movl	$LC32, %edx
	movl	%eax, __ZL32polymost1ExtendedShaderProgramID.lto_priv.0
	movl	$35633, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	xorl	%ecx, %ecx
	movl	$LC33, %edx
	movl	%eax, %esi
	movl	$35632, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %edi
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	jmp	L699
	.p2align 4,,10
	.p2align 3
L853:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L706
	movl	$LC40, 12(%esp)
	addl	$1, %ebx
	movl	$1968, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	$256, %ebx
	jne	L710
L854:
	movl	$32884, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	call	__Z19polymost_resetStatev
	call	_texcache_init
	call	_texcache_openfiles
	movl	$_TEXCACHEFILE, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_strcpy
	movl	$_ptempbuf, (%esp)
	call	_strlen
	movl	$1684957486, _ptempbuf(%eax)
	movl	$7890276, _ptempbuf+3(%eax)
	movl	$_ptempbuf, %eax
	call	_scriptfile_fromfile
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L711
	.p2align 4
	.p2align 3
L712:
	movl	12(%ebx), %eax
	movl	16(%ebx), %edx
	cmpl	%edx, %eax
	jb	L856
L725:
	movl	%ebx, %eax
	call	_scriptfile_close
L711:
	movl	_glusememcache, %ecx
	testl	%ecx, %ecx
	je	L727
	call	_texcache_enabled
	testl	%eax, %eax
	je	L727
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L727
	movl	%eax, (%esp)
	movl	__imp___fileno, %ebx
	call	*%ebx
	movl	%eax, (%esp)
	call	_filelength
	testl	%eax, %eax
	jle	L727
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	%eax, (%esp)
	call	*__imp___get_osfhandle
	movlps	LC46, %xmm3
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	%eax, %esi
	movl	$0, -152(%ebp)
	movlps	%xmm3, -148(%ebp)
	cmpl	$-1, %eax
	je	L857
	call	__ZNSt3_V215system_categoryEv
	leal	-132(%ebp), %ebx
	movl	%esi, -184(%ebp)
	movl	%eax, -176(%ebp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__GetFileSizeEx@8
	movl	-132(%ebp), %edi
	subl	$8, %esp
	testl	%eax, %eax
	je	L858
L731:
	cmpb	$0, __ZGVZN3mio9page_sizeEvE9page_size
	je	L859
L732:
	movl	%esi, (%esp)
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	call	*__imp__CreateFileMappingA@24
	subl	$24, %esp
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L841
	movl	%edi, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__MapViewOfFile@20
	subl	$20, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L860
L735:
	leal	-160(%ebp), %eax
	movl	%edx, -196(%ebp)
	movl	%eax, %ecx
	movl	%eax, -192(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movb	$0, -168(%ebp)
	movl	-196(%ebp), %edx
	xorl	%eax, %eax
L736:
	movl	$_texcache, %ecx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movl	-184(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edi, _texcache+4
	movlps	LC46, %xmm7
	movl	%edi, _texcache+8
	movl	%eax, _texcache+12
	movzbl	-168(%ebp), %eax
	movl	%edx, _texcache
	movb	%al, _texcache+20
	movl	%esi, _texcache+16
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -152(%ebp)
	movb	$0, -140(%ebp)
	movlps	%xmm7, -148(%ebp)
	movl	%ebx, (%esp)
	movl	-192(%ebp), %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-200(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L737
	cmpl	$-1, _texcache+16
	je	L739
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L727
	movl	_texcache+4, %eax
	movl	$LC48, 12(%esp)
	movl	$908, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC45, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L727:
	call	_texcache_enabled
	testl	%eax, %eax
	je	L743
	movl	_texcache+32, %edx
	xorl	%ebx, %ebx
	movl	%edx, _texcache+36
	movl	12(%edx), %eax
	testl	%eax, %eax
	je	L744
	.p2align 5
	.p2align 4
	.p2align 3
L745:
	addl	8(%edx), %ebx
	movl	%eax, _texcache+36
	movl	%eax, %edx
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L745
L744:
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	%ebx, %eax
	jne	L861
L743:
	movl	$262144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ornament, (%esp)
	call	_memset
	movl	_rendmode, %eax
	cmpl	$3, %eax
	je	L862
L746:
	cmpl	$4, %eax
	jne	L671
	call	_polymer_init
	testl	%eax, %eax
	jne	L671
	movl	$3, _rendmode
	jmp	L671
	.p2align 4,,10
	.p2align 3
L856:
	cmpb	$0, (%eax)
	jne	L726
	addl	$1, %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jnb	L725
L726:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L863
	leal	-160(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L715
	leal	-132(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L715
	movl	%esi, %edx
	movl	$_texcache+32812, %eax
	call	_hash_find
	testl	%eax, %eax
	js	L716
	movl	_texcache+40, %edx
	movss	-160(%ebp), %xmm0
	movss	-132(%ebp), %xmm4
	movl	(%edx,%eax,4), %eax
	unpcklps	%xmm4, %xmm0
	movlps	%xmm0, 4(%eax)
	jmp	L712
L716:
	movl	_texcache+36, %edi
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -184(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L718
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -184(%ebp)
	call	_strcpy
	movl	-184(%ebp), %ecx
	movl	-176(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ecx, (%edi)
	movss	-160(%ebp), %xmm0
	movss	-132(%ebp), %xmm6
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, 4(%edi)
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L864
	movl	$0, (%eax)
	movl	%esi, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, 12(%edi)
	movl	$_texcache+32812, %eax
	movl	$1, (%esp)
	movl	_texcache+32828, %ecx
	call	_hash_add
	movl	_texcache+32828, %eax
	movl	_texcache+32832, %edx
	movl	_texcache+40, %ecx
	addl	$1, %eax
	movl	%eax, _texcache+32828
	cmpl	%edx, %eax
	jg	L865
L722:
	movl	_texcache+36, %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	12(%edi), %eax
	movl	%eax, _texcache+36
	jmp	L712
L847:
	xorl	%eax, %eax
	call	_paletteGetColor
	movl	%eax, %ebx
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	movss	LC30, %xmm1
	shrl	$16, %eax
	subl	$16, %esp
	movzbl	%al, %eax
	movl	$0x00000000, 12(%esp)
	cvtsi2ssl	%eax, %xmm0
	movzbl	%bh, %eax
	movzbl	%bl, %ebx
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$16384, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	jmp	L668
L865:
	addl	$512, %edx
	leal	0(,%edx,4), %esi
	movl	%edx, _texcache+32832
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L770
	testl	%esi, %esi
	jne	L723
L770:
	movl	%ecx, _texcache+40
	movl	_texcache+32828, %eax
	jmp	L722
L863:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L714
	movl	12(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC42, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L715:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L714
	movl	$LC44, 12(%esp)
	movl	$451, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L714:
	movl	%ebx, %eax
	call	_scriptfile_close
	call	_texcache_invalidate
	jmp	L711
L850:
	movl	_nextTreeNodeIndex, %esi
	movl	_heapNodes, %eax
	cmpl	%eax, %esi
	jb	L679
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	$2, %edx
	call	__Z18tilepacker_addTilejjj.part.0
	movl	_heapNodes, %eax
	jmp	L679
	.p2align 4,,10
	.p2align 3
L866:
	movl	_heapNodes, %eax
	movl	%edi, %ebx
L679:
	leal	1(%ebx), %edi
	cmpl	%eax, %esi
	jb	L677
	movswl	_tilesiz+2(,%ebx,4), %edx
	movswl	_tilesiz(,%ebx,4), %ecx
	testl	%edx, %edx
	je	L677
	testl	%ecx, %ecx
	je	L677
	movl	%edi, %eax
	call	__Z18tilepacker_addTilejjj.part.0
L677:
	cmpl	$30720, %edi
	jne	L866
	movss	-168(%ebp), %xmm7
	movl	_numRejected, %eax
	xorl	%edi, %edi
	movl	$_nodes+2214180, %esi
	unpcklps	%xmm7, %xmm7
	movlps	%xmm7, -192(%ebp)
	.p2align 4
	.p2align 3
L691:
	movl	-168(%ebp), %ecx
	movlps	-192(%ebp), %xmm5
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	%ecx, 28(%esi)
	leal	1(%edi), %ecx
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	$-1, 32(%esi)
	movl	%ecx, -184(%ebp)
	movlps	%xmm5, 20(%esi)
	cmpl	$63, %edi
	ja	L867
	testl	%eax, %eax
	jle	L682
	movl	%esi, -196(%ebp)
	movl	_rejectQueueHeadIndex, %ebx
	movl	%eax, %esi
	movl	%edi, -176(%ebp)
	jmp	L684
	.p2align 4,,10
	.p2align 3
L683:
	subl	$1, %esi
	je	L837
L868:
	movl	_numRejected, %eax
L684:
	subl	$1, %eax
	leal	1(%ebx), %ecx
	movl	%eax, _numRejected
	leal	(%ebx,%ebx,8), %eax
	leal	_rejectQueue(,%eax,4), %edi
	movl	$-2004318071, %eax
	mull	%ecx
	shrl	$14, %edx
	imull	$30720, %edx, %eax
	movl	%edi, %edx
	subl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	%ecx, _rejectQueueHeadIndex
	movl	%ecx, %ebx
	call	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	testb	%al, %al
	jne	L683
	movl	%edi, %eax
	call	__ZL15rejectQueue_addP8TreeNode.isra.0
	subl	$1, %esi
	jne	L868
L837:
	movl	-176(%ebp), %edi
	movl	-196(%ebp), %esi
L682:
	movl	_heapNodes, %eax
	testl	%eax, %eax
	je	L685
	leal	-2(%eax), %ebx
	shrl	%ebx
	.p2align 4
	.p2align 3
L686:
	movl	%ebx, %eax
	call	__ZL18maxheap_bubbleDownj.lto_priv.0
	subl	$1, %ebx
	jnb	L686
	.p2align 4
	.p2align 3
L685:
	call	__ZL11maxheap_popv.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L687
L869:
	movl	%eax, %edx
	movl	%edi, %eax
	call	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	testb	%al, %al
	jne	L685
	movl	%ebx, %eax
	call	__ZL15rejectQueue_addP8TreeNode.isra.0
	call	__ZL11maxheap_popv.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L869
L687:
	movl	-184(%ebp), %ecx
	movl	_numRejected, %eax
	movl	%ecx, __ZZ15polymost_glinitvE13numTilesheets
	testl	%eax, %eax
	je	L690
	cmpl	$64, %ecx
	je	L690
	subl	$36, %esi
L681:
	movl	-184(%ebp), %edi
	jmp	L691
L867:
	movl	%ecx, __ZZ15polymost_glinitvE13numTilesheets
	subl	$36, %esi
	jmp	L681
L852:
	movl	$5442, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	movl	%eax, -176(%ebp)
	testl	%eax, %eax
	je	L701
	movl	$5442, 8(%esp)
	movl	$LC33, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	$LC34, 4(%esp)
	movl	%ebx, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L703
	movl	$12079, %edx
	movw	%dx, (%eax)
L703:
	call	*_glad_glCreateProgram
	movl	-176(%ebp), %edx
	leal	-132(%ebp), %ecx
	movl	$5442, -132(%ebp)
	movl	%eax, __ZL29polymost1BasicShaderProgramID.lto_priv.0
	movl	$35632, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %ebx
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	movl	-176(%ebp), %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L700
L849:
	movl	$34383, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L673
	movl	$34383, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$34383, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L673
L718:
	movl	-184(%ebp), %eax
	call	__Z13handle_memerri
L864:
	movl	$16, %eax
	call	__Z13handle_memerri
L862:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L748:
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L747
	call	_voxvboalloc
L747:
	addl	$1, %ebx
	cmpl	$2048, %ebx
	jne	L748
	movl	_models, %eax
	testl	%eax, %eax
	je	L749
	movl	_nextmodelid, %edx
	testl	%edx, %edx
	jle	L749
	xorl	%ebx, %ebx
	jmp	L751
L750:
	addl	$1, %ebx
	cmpl	_nextmodelid, %ebx
	jge	L749
	movl	_models, %eax
L751:
	movl	(%eax,%ebx,4), %eax
	cmpl	$1, (%eax)
	jne	L750
	call	_voxvboalloc
	jmp	L750
L749:
	cmpb	$1, _g_haveVoxels
	je	L752
L842:
	movl	_rendmode, %eax
	jmp	L746
L861:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L743
	movl	%eax, 16(%esp)
	movl	$LC49, 12(%esp)
	movl	$385, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L743
L723:
	movl	%esi, %eax
	call	__Z13handle_memerri
L752:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movb	$2, _g_haveVoxels
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L753
	movl	$LC50, 12(%esp)
	movl	$11909, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L753:
	call	_videoNextPage
	leal	-96(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	call	_enet_gettime.constprop.0.isra.0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %esi
	movl	%eax, -176(%ebp)
	.p2align 4
	.p2align 3
L755:
	movl	__ZL12voxfilenames.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L754
	call	_voxload
	xorps	%xmm0, %xmm0
	addl	$1, %ebx
	cvtsi2ssl	_voxscale(,%edi,4), %xmm0
	movl	%eax, _voxmodels(,%edi,4)
	mulss	LC51, %xmm0
	movss	%xmm0, 8(%eax)
	movl	_voxmodels(,%edi,4), %eax
	call	_voxvboalloc
	movl	__ZL12voxfilenames.lto_priv.0(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL12voxfilenames.lto_priv.0(,%edi,4)
L754:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L755
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L842
	movl	%esi, %eax
	movl	%esi, -184(%ebp)
	fildl	-184(%ebp)
	cltd
	testl	%edx, %edx
	jns	L757
	fadds	LC52
L757:
	fstpl	-184(%ebp)
	fldl	-184(%ebp)
	leal	-96(%ebp), %eax
	fmuls	LC53
	fdivs	LC54
	fildl	-176(%ebp)
	fmuls	LC53
	faddp	%st, %st(1)
	fstpl	-176(%ebp)
	call	_enet_gettime.constprop.0.isra.0
	movl	-92(%ebp), %eax
	fildl	-92(%ebp)
	cltd
	testl	%edx, %edx
	jns	L758
	fadds	LC52
L758:
	fstpl	-184(%ebp)
	fldl	-184(%ebp)
	fmuls	LC53
	fdivs	LC54
	fildl	-96(%ebp)
	fmuls	LC53
	faddp	%st, %st(1)
	fsubl	-176(%ebp)
	movl	%ebx, 16(%esp)
	movl	$LC55, 12(%esp)
	movl	$11926, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$0, (%esp)
	fstpl	20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L842
L761:
	movl	$-1, %eax
	jmp	L653
L701:
	movl	$5442, %eax
	call	__Z13handle_memerri
L858:
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L870
L729:
	movzbl	-140(%ebp), %esi
	movl	$_texcache, %ecx
	movl	%eax, -184(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movlps	LC46, %xmm3
	movl	$0, _texcache
	leal	-160(%ebp), %ecx
	movl	%esi, %eax
	movl	$0, _texcache+4
	movb	%al, _texcache+20
	movl	$0, _texcache+8
	movl	$-1, _texcache+12
	movl	$-1, _texcache+16
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -152(%ebp)
	movb	$0, -140(%ebp)
	movlps	%xmm3, -148(%ebp)
	movl	%ebx, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-184(%ebp), %eax
	subl	$4, %esp
L737:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L739
	movl	-176(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	%eax, -176(%ebp)
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	call	*16(%edx)
	movl	-132(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 20(%esp)
	movl	-176(%ebp), %eax
	movl	$LC47, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$901, 8(%esp)
	movl	$LC45, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-132(%ebp), %eax
	leal	-124(%ebp), %edx
	cmpl	%edx, %eax
	je	L739
	call	_mi_free
L739:
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	jmp	L727
L860:
	movl	%esi, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
L841:
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L768
	movzbl	-140(%ebp), %ecx
	movl	$-1, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	$-1, -184(%ebp)
	movb	%cl, -168(%ebp)
	leal	-160(%ebp), %ecx
	movl	%ecx, -192(%ebp)
	jmp	L736
L857:
	call	__ZNSt3_V216generic_categoryEv
	leal	-132(%ebp), %ebx
	movl	%eax, -176(%ebp)
	movl	$9, %eax
	jmp	L729
L768:
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	L735
L870:
	xorl	%edi, %edi
	jmp	L731
L845:
	xorl	%esi, %esi
	movl	$LC27, 16(%esp)
	movl	$407, 12(%esp)
	movl	$LC28, 8(%esp)
	movl	$LC29, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L859:
	movl	%ebx, (%esp)
	call	*__imp__GetSystemInfo@4
	movl	-104(%ebp), %eax
	subl	$4, %esp
	movb	$1, __ZGVZN3mio9page_sizeEvE9page_size
	movl	%eax, __ZZN3mio9page_sizeEvE9page_size
	jmp	L732
	.cfi_endproc
LFE83:
	.section .rdata,"dr"
	.align 4
LC57:
	.ascii "qloadkvx: file %s is truncated\0"
	.text
	.p2align 4
	.globl	_qloadkvx
	.def	_qloadkvx;	.scl	2;	.type	32;	.endef
_qloadkvx:
LFB138:
	.cfi_startproc
	subl	$160, %esp
	.cfi_def_cfa_offset 164
	cmpl	$2047, %eax
	ja	L872
	movl	%eax, %ecx
	movzbl	_paletteloaded, %eax
	movl	%ebx, 144(%esp)
	notl	%eax
	andl	$1, %eax
	testl	%edx, %edx
	.cfi_offset 3, -20
	sete	%bl
	orb	%bl, %al
	jne	L931
	movl	%edi, 152(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	xorl	%edx, %edx
	movl	%ecx, %ebx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, 44(%esp)
	cmpl	$-1, %eax
	je	L932
	movl	%ebp, 156(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebp
	cmpl	$767, %eax
	jle	L935
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	44(%esp), %eax
	movl	$2, %ecx
	movl	$-768, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%esi, 148(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	call	__Z15klseek_internaliiiPKhPiS1_
	movb	$0, _maxvoxcol
	movl	%ebx, 20(%esp)
	movl	44(%esp), %ebx
L875:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	112(%esp), %edx
	movl	$3, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	112(%esp), %eax
	movzbl	113(%esp), %edx
	sall	$18, %eax
	sall	$10, %edx
	addl	%edx, %eax
	movzbl	114(%esp), %edx
	leal	(%eax,%edx,4), %eax
	movl	%esi, %edx
	addl	$1, %esi
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, _voxpal-1(%esi)
	cmpl	$256, %esi
	jne	L875
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	44(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	20(%esp), %ebx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	leal	-768(%ebp), %eax
	movl	%ebx, 80(%esp)
	xorl	%ebp, %ebp
	movl	%eax, 76(%esp)
	leal	(%ebx,%ebx,4), %eax
	leal	__ZL7voxlock.lto_priv.0(%eax), %esi
	leal	_voxoff(,%eax,4), %eax
	movl	$0, 48(%esp)
	movl	%eax, 52(%esp)
	movl	%esi, 56(%esp)
	xorl	%esi, %esi
	movl	%edi, 84(%esp)
	movl	%ebp, %edi
L898:
	movl	44(%esp), %ebp
	movl	$4, %ecx
	leal	108(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebp, %eax
	movl	$0, 108(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	76(%esp), %ebx
	cmpl	%ebx, 48(%esp)
	jge	L897
	movl	$954437177, %eax
	movl	108(%esp), %ebx
	imull	%esi
	sarl	$31, %esi
	movl	%ebx, 68(%esp)
	sarl	%edx
	movl	%edx, %eax
	subl	%esi, %eax
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jl	L897
	movl	56(%esp), %esi
	movl	%ebx, %edx
	movl	%esi, %ecx
	movb	$-1, (%esi)
	movl	52(%esp), %esi
	movl	%esi, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	(%esi), %ebx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	108(%esp), %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%ebx, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	testl	%edi, %edi
	je	L936
	movl	(%ebx), %esi
	testl	%esi, %esi
	jle	L888
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jle	L888
	leal	2(%eax,%eax), %ecx
	addl	%eax, %eax
	movl	$0, 60(%esp)
	movl	%ebx, %edx
	movl	%ecx, 64(%esp)
	movl	%eax, 72(%esp)
	movl	%edi, 88(%esp)
	leal	28(%ebx,%esi,4), %edi
	addl	$24, %ebx
L896:
	movl	72(%esp), %ecx
	movl	(%ebx), %eax
	movl	%ebx, 96(%esp)
	movl	%edi, %ebp
	movl	%edi, 100(%esp)
	addl	%edi, %ecx
	movl	%esi, 104(%esp)
	movl	%ecx, 40(%esp)
	movl	%edx, 92(%esp)
	leal	24(%edx,%eax), %edx
	.p2align 4
	.p2align 3
L895:
	movswl	0(%ebp), %eax
	leal	(%eax,%edx), %edi
	movswl	2(%ebp), %eax
	leal	(%eax,%edx), %esi
	cmpl	%esi, %edi
	jnb	L889
	movl	%ebp, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L894:
	movzbl	1(%edi), %eax
	xorl	%ebx, %ebx
	subl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	jmp	L893
	.p2align 4,,10
	.p2align 3
L903:
	addl	$1, %ebx
L893:
	movzbl	3(%edi,%ebx), %eax
	cmpb	$-1, %al
	je	L890
	movzbl	%al, %edx
	andl	$7, %eax
	movl	%edx, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movl	%edx, 24(%esp)
	sarl	$3, %ecx
	movzbl	112(%esp,%ecx), %ebp
	andl	%eax, %ebp
	movl	%ebp, %edx
	cmpb	%dl, %al
	jne	L890
	movl	24(%esp), %edx
	movzbl	_PaletteIndexFullbright(%ecx), %ebp
	leal	(%edx,%edx,2), %edx
	andl	%eax, %ebp
	leal	_voxpal(%edx), %ecx
	addl	$_palette, %edx
	movl	%edx, 24(%esp)
	movl	%ebp, %edx
	leal	112(%esp), %ebp
	cmpb	%dl, %al
	movl	%ecx, %eax
	cmovne	24(%esp), %eax
	movzbl	2(%eax), %ecx
	movzbl	1(%eax), %edx
	movzbl	(%eax), %eax
	movl	%ebp, 4(%esp)
	movzbl	_maxvoxcol, %ebp
	movl	%ebp, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movb	%al, 3(%edi,%ebx)
L890:
	cmpl	%ebx, 20(%esp)
	jne	L903
	movzbl	1(%edi), %eax
	leal	3(%edi,%eax), %edi
	cmpl	28(%esp), %edi
	jb	L894
	movl	32(%esp), %ebp
	movl	36(%esp), %edx
L889:
	addl	$2, %ebp
	cmpl	%ebp, 40(%esp)
	jne	L895
	movl	96(%esp), %ebx
	movl	100(%esp), %edi
	addl	$1, 60(%esp)
	movl	92(%esp), %edx
	movl	104(%esp), %esi
	addl	$4, %ebx
	addl	64(%esp), %edi
	cmpl	60(%esp), %esi
	jne	L896
	movl	88(%esp), %edi
L888:
	addl	$1, %edi
	movl	108(%esp), %eax
	cmpl	$5, %edi
	je	L897
	movl	48(%esp), %esi
	addl	$1, 56(%esp)
	addl	$4, 52(%esp)
	leal	4(%eax,%esi), %eax
	movl	%eax, 48(%esp)
L901:
	movl	68(%esp), %esi
	jmp	L898
L936:
	movl	$-1, 112(%esp)
	movl	$-1, 116(%esp)
	movl	$-1, 120(%esp)
	movl	$-1, 124(%esp)
	movl	$-1, 128(%esp)
	movl	$-1, 132(%esp)
	movl	$-1, 136(%esp)
	movl	$-1, 140(%esp)
	movl	(%ebx), %eax
	movb	$0, _maxvoxcol
	testl	%eax, %eax
	jle	L878
	movl	4(%ebx), %edx
	leal	24(%ebx), %ecx
	leal	2(%edx,%edx), %esi
	movl	%esi, 60(%esp)
	leal	28(%ebx,%eax,4), %esi
	leal	(%ecx,%eax,4), %eax
	movl	%esi, 40(%esp)
	movl	%eax, 64(%esp)
	testl	%edx, %edx
	jg	L937
L879:
	movl	60(%esp), %esi
	addl	$4, %ecx
	addl	%esi, 40(%esp)
	cmpl	%ecx, 64(%esp)
	je	L878
	testl	%edx, %edx
	jle	L879
L937:
	movl	60(%esp), %eax
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	movl	$1, %esi
	subl	$2, %eax
	movl	%eax, 72(%esp)
L885:
	movl	(%ecx), %eax
	movl	72(%esp), %edx
	movl	%ecx, 92(%esp)
	movl	%ebx, 88(%esp)
	leal	24(%ebx,%eax), %eax
	movl	%edi, %ebx
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	movl	20(%esp), %ecx
	addl	%eax, %edx
	movl	%edx, 36(%esp)
L884:
	movswl	(%eax), %edx
	leal	(%edx,%ecx), %edi
	movswl	2(%eax), %edx
	addl	%ecx, %edx
	cmpl	%edx, %edi
	jnb	L880
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L883:
	movzbl	1(%edi), %eax
	xorl	%ecx, %ecx
	movb	%al, 20(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L882:
	movzbl	%cl, %eax
	movzbl	3(%edi,%eax), %edx
	cmpb	%dl, %bl
	movl	%edx, %eax
	cmovb	%edx, %ebx
	cmovb	%esi, %ebp
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	addl	$1, %ecx
	notl	%eax
	andb	%al, 112(%esp,%edx)
	cmpb	20(%esp), %cl
	jne	L882
	movzbl	1(%edi), %eax
	leal	3(%edi,%eax), %edi
	cmpl	24(%esp), %edi
	jb	L883
	movl	28(%esp), %ecx
	movl	32(%esp), %eax
L880:
	addl	$2, %eax
	cmpl	%eax, 36(%esp)
	jne	L884
	movl	92(%esp), %ecx
	movl	60(%esp), %edx
	movl	%ebx, %edi
	addl	%edx, 40(%esp)
	movl	88(%esp), %ebx
	addl	$4, %ecx
	cmpl	64(%esp), %ecx
	jne	L885
	movl	%edi, %eax
	movl	%ebp, %edi
	movl	%eax, %ebp
	movl	%edi, %eax
	testb	%al, %al
	je	L878
	movl	%ebp, %eax
	movb	%al, _maxvoxcol
L878:
	movl	48(%esp), %esi
	movl	108(%esp), %eax
	movl	$1, %edi
	addl	$1, 56(%esp)
	leal	4(%esi,%eax), %eax
	addl	$4, 52(%esp)
	movl	%eax, 48(%esp)
	jmp	L901
L897:
	movl	80(%esp), %ebx
	movl	44(%esp), %eax
	movl	84(%esp), %edi
	call	_kclose
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L899
	call	_voxfree
	movl	$0, _voxmodels(,%ebx,4)
L899:
	movl	__ZL12voxfilenames.lto_priv.0(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 160
	subl	$4, %esp
	.cfi_def_cfa_offset 164
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 160
	subl	$4, %esp
	.cfi_def_cfa_offset 164
	movl	%eax, %esi
	testl	%eax, %eax
	je	L900
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$1, _g_haveVoxels
	movl	$0, 44(%esp)
	movb	$0, (%esi,%ebp)
	movl	%esi, __ZL12voxfilenames.lto_priv.0(,%ebx,4)
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	148(%esp), %esi
	.cfi_restore 6
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
L871:
	movl	44(%esp), %eax
	addl	$160, %esp
	.cfi_def_cfa_offset 4
	ret
L900:
	.cfi_def_cfa_offset 164
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %eax
	call	__Z13handle_memerri
L931:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	144(%esp), %ebx
	.cfi_restore 3
L872:
	movl	$-1, 44(%esp)
	jmp	L871
L935:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L938
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
	jmp	L872
L932:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	jmp	L871
L938:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edi, 16(%esp)
	movl	$LC57, 12(%esp)
	movl	$12239, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
	jmp	L872
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	_inside
	.def	_inside;	.scl	2;	.type	32;	.endef
_inside:
LFB143:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movswl	%cx, %ecx
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movswl	_numsectors, %eax
	movl	%edx, (%esp)
	cmpl	%eax, %ecx
	jnb	L948
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	movl	%ebx, 24(%esp)
	movl	%esi, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_wall, %ebx
	leal	(%eax,%edx,8), %eax
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movswl	(%eax), %esi
	movswl	2(%eax), %eax
	movl	%ebx, 8(%esp)
	movl	$0, 20(%esp)
	sall	$5, %esi
	movl	%eax, 12(%esp)
	movl	$0, 16(%esp)
	addl	%ebx, %esi
	movl	%ebp, 4(%esp)
	jmp	L947
	.p2align 4,,10
	.p2align 3
L941:
	movswl	8(%esi), %edx
	sall	$5, %edx
	addl	8(%esp), %edx
	movl	(%edx), %ebx
	subl	4(%esp), %ebx
	movl	4(%edx), %edx
	movl	%ebx, %edi
	subl	(%esp), %edx
	orl	%edx, %edi
	je	L942
	movl	%eax, %edi
	xorl	%edx, %edi
	jns	L943
	movl	%ecx, %edi
	movl	%eax, %ebp
	imull	%ebx, %ebp
	imull	%edx, %edi
	subl	%ebp, %edi
	movl	%ecx, %ebp
	xorl	%edx, %edi
	xorl	%ebx, %ebp
	cmovns	%ecx, %edi
	xorl	%edi, 16(%esp)
L943:
	subl	$1, %eax
	subl	$1, %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	jns	L945
	subl	$1, %ecx
	subl	$1, %ebx
	movl	%edx, %edi
	imull	%ecx, %edi
	imull	%ebx, %eax
	subl	%eax, %edi
	xorl	%edx, %edi
	xorl	%ecx, %ebx
	cmovs	%edi, %ecx
	xorl	%ecx, 20(%esp)
L945:
	addl	$32, %esi
	subl	$1, 12(%esp)
	je	L955
L947:
	movl	(%esi), %ecx
	subl	4(%esp), %ecx
	movl	4(%esi), %eax
	movl	%ecx, %edi
	subl	(%esp), %eax
	orl	%eax, %edi
	jne	L941
L942:
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	32(%esp), %edi
	.cfi_restore 7
L939:
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L955:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16(%esp), %eax
	orl	20(%esp), %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	shrl	$31, %eax
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	addl	$40, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L948:
	.cfi_def_cfa_offset 44
	.cfi_offset 5, -8
	movl	$-1, %eax
	jmp	L939
	.cfi_endproc
LFE143:
	.p2align 4
	.globl	@getangle@8
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
@getangle@8:
LFB147:
	.cfi_startproc
	movl	%ecx, %eax
	orl	%edx, %ecx
	jne	L970
L968:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L970:
	testl	%eax, %eax
	jne	L958
	sarl	$21, %edx
	andl	$1024, %edx
	leal	512(%edx), %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L958:
	testl	%edx, %edx
	je	L971
	cmpl	%edx, %eax
	je	L972
	movl	%eax, %ecx
	addl	%edx, %ecx
	je	L973
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ecx
	movl	%eax, 16(%esp)
/APP
 # 12482 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 12482 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jg	L974
	movl	%ecx, %eax
	movl	$160, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	movl	$640, %eax
	subl	%edx, %eax
	movl	20(%esp), %edx
	movzwl	__ZL8radarang.lto_priv.0(%eax,%eax), %eax
	sarl	$21, %edx
	sarw	$6, %ax
	andl	$1024, %edx
	addw	$512, %ax
	cwtl
	leal	(%eax,%edx), %ecx
L956:
	movl	%ecx, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L971:
	sarl	$21, %eax
	andl	$1024, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L974:
	.cfi_def_cfa_offset 32
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -8
	movl	16(%esp), %ebx
	movl	$160, %edx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movzwl	__ZL8radarang.lto_priv.0+1280(%eax,%eax), %edx
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	sarl	$21, %eax
	sarw	$6, %dx
	andl	$1024, %eax
	leal	(%eax,%edx), %ecx
	andl	$2047, %ecx
	jmp	L956
	.p2align 4,,10
	.p2align 3
L972:
	.cfi_def_cfa_offset 4
	sarl	$21, %eax
	andl	$1024, %eax
	leal	256(%eax), %ecx
	jmp	L968
	.p2align 4,,10
	.p2align 3
L973:
	testl	%eax, %eax
	movl	$768, %ecx
	movl	$1792, %eax
	cmovg	%eax, %ecx
	jmp	L968
	.cfi_endproc
LFE147:
	.p2align 4
	.globl	@gethiq16angle@8
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
@gethiq16angle@8:
LFB149:
	.cfi_startproc
	movl	%ecx, %eax
	orl	%edx, %ecx
	jne	L988
L986:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L988:
	testl	%eax, %eax
	jne	L977
	shrl	$5, %edx
	andl	$67108864, %edx
	leal	33554432(%edx), %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L977:
	testl	%edx, %edx
	je	L989
	cmpl	%edx, %eax
	je	L990
	movl	%eax, %ecx
	addl	%edx, %ecx
	je	L991
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ecx
	movl	%eax, 16(%esp)
/APP
 # 12503 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 12503 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jg	L992
	movl	%ecx, %eax
	movl	$1280, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	movl	$5120, %eax
	subl	%edx, %eax
	movl	20(%esp), %edx
	movl	__ZL9qradarang.lto_priv.0(,%eax,4), %eax
	shrl	$5, %edx
	sarl	$6, %eax
	andl	$67108864, %edx
	leal	33554432(%eax,%edx), %ecx
L975:
	movl	%ecx, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L989:
	shrl	$5, %eax
	andl	$67108864, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L992:
	.cfi_def_cfa_offset 32
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -8
	movl	16(%esp), %ebx
	movl	$1280, %edx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	__ZL9qradarang.lto_priv.0+20480(,%eax,4), %ecx
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	shrl	$5, %eax
	sarl	$6, %ecx
	andl	$67108864, %eax
	addl	%eax, %ecx
	andl	$134217727, %ecx
	jmp	L975
	.p2align 4,,10
	.p2align 3
L990:
	.cfi_def_cfa_offset 4
	shrl	$5, %eax
	andl	$67108864, %eax
	leal	16777216(%eax), %ecx
	jmp	L986
	.p2align 4,,10
	.p2align 3
L991:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	sall	$26, %ecx
	addl	$50331648, %ecx
	jmp	L986
	.cfi_endproc
LFE149:
	.p2align 4
	.globl	@getq16angledelta@8
	.def	@getq16angledelta@8;	.scl	2;	.type	32;	.endef
@getq16angledelta@8:
LFB151:
	.cfi_startproc
	andl	$134217727, %ecx
	movl	%ecx, %eax
	subl	%edx, %eax
/APP
 # 12515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$67108863, %eax
	jg	L994
	movl	%edx, %eax
	subl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L994:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	cmpl	$67108864, %ecx
	jle	L1003
	movl	%edx, %ebx
	leal	134217728(%edx), %eax
	subl	%ecx, %ebx
	subl	%ecx, %eax
	cmpl	$67108865, %edx
	cmovge	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1003:
	.cfi_restore_state
	leal	-134217728(%edx), %eax
	movl	%edx, %ebx
	subl	%ecx, %ebx
	subl	%ecx, %eax
	cmpl	$67108865, %edx
	cmovl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	@ksqrt@4
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
@ksqrt@4:
LFB153:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %eax
/APP
 # 12542 "source/build/src/engine.cpp" 1
	testl $0xff000000, %eax
	movl %eax, %ebx
	jnz 0f
	shrl $12, %ebx
	movw _shlookup(,%ebx,2), %cx
	jmp 1f
	0:
	shrl $24, %ebx
	movw (_shlookup+8192)(,%ebx,2), %cx
	1:
	shrl %cl, %eax
	movb %ch, %cl
	movw _sqrtable(,%eax,2), %ax
	shrl %cl, %eax
 # 0 "" 2
/NO_APP
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	_setsprite
	.def	_setsprite;	.scl	2;	.type	32;	.endef
_setsprite:
LFB155:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %edx
	movswl	32(%esp), %ebx
	movl	36(%esp), %eax
	imull	$44, %ebx, %esi
	addl	%esi, %edx
	movzwl	24(%edx), %ecx
	movw	%cx, 18(%esp)
	cmpl	%eax, %edx
	je	L1007
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
L1007:
	leal	18(%esp), %edx
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	18(%esp), %edx
	testw	%dx, %dx
	js	L1012
	movl	_sprite, %eax
	movzwl	24(%eax,%esi), %ecx
	cmpw	%cx, %dx
	sete	%al
	cmpw	$4096, %cx
	sete	%cl
	orb	%cl, %al
	jne	L1011
	cmpw	$4096, %dx
	ja	L1011
	movl	%ebx, %eax
	movl	%edx, 12(%esp)
	call	_do_deletespritesect
	movswl	12(%esp), %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L1011:
	addl	$20, %esp
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
L1012:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE155:
	.p2align 4
	.globl	_setspritez
	.def	_setspritez;	.scl	2;	.type	32;	.endef
_setspritez:
LFB156:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movl	_sprite, %edx
	movswl	36(%esp), %ebx
	movl	40(%esp), %eax
	imull	$44, %ebx, %esi
	addl	%esi, %edx
	movzwl	24(%edx), %ecx
	movw	%cx, 22(%esp)
	cmpl	%eax, %edx
	je	L1015
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
L1015:
	leal	22(%esp), %edx
	movl	%edx, 12(%esp)
	movl	8(%eax), %edx
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movzwl	22(%esp), %edx
	testw	%dx, %dx
	js	L1020
	movl	_sprite, %eax
	movzwl	24(%eax,%esi), %ecx
	cmpw	%cx, %dx
	sete	%al
	cmpw	$4096, %cx
	sete	%cl
	orb	%cl, %al
	jne	L1019
	cmpw	$4096, %dx
	ja	L1019
	movl	%ebx, %eax
	movl	%edx, 16(%esp)
	call	_do_deletespritesect
	movswl	16(%esp), %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L1019:
	addl	$24, %esp
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
L1020:
	.cfi_restore_state
	addl	$24, %esp
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE156:
	.p2align 4
	.globl	_cansee.constprop.0
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
_cansee.constprop.0:
LFB158:
	.cfi_startproc
	subl	$148, %esp
	.cfi_def_cfa_offset 152
	movl	%edi, 140(%esp)
	.cfi_offset 7, -12
	movzwl	152(%esp), %edi
	movl	%ebp, 144(%esp)
	.cfi_offset 5, -8
	movzwl	168(%esp), %ebp
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 44(%esp)
	movw	%di, 22(%esp)
	cmpl	$0, _numyaxbunches
	jle	L1023
	movl	%ebx, 132(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	%di, %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__ZL20yax_cansee_fixsectoriiis
	movl	164(%esp), %ecx
	movl	160(%esp), %edx
	movw	%ax, 22(%esp)
	movswl	%bp, %eax
	movl	%eax, (%esp)
	movl	156(%esp), %eax
	call	__ZL20yax_cansee_fixsectoriiis
	movl	132(%esp), %ebx
	.cfi_restore 3
	movl	%eax, %ebp
L1023:
	movzwl	22(%esp), %eax
	orl	%ebp, %eax
	cmpw	$4095, %ax
	jbe	L1095
L1024:
	xorl	%eax, %eax
L1022:
	movl	140(%esp), %edi
	movl	144(%esp), %ebp
	addl	$148, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1095:
	.cfi_restore_state
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	movl	%ebx, 132(%esp)
	movl	%esi, 136(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movswl	22(%esp), %ebx
	movswl	%bp, %esi
	testl	%edx, %edx
	je	L1096
L1025:
	movl	%ebp, %eax
	sarl	$3, %esi
	andl	$7, %eax
	addl	%esi, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %edi
	movswl	_numsectors, %eax
	addl	$7, %eax
	movl	%edi, %ecx
	sarl	$3, %eax
	imull	%ebx, %eax
	andb	(%edx,%eax), %cl
	movl	%ecx, %eax
	movl	%edi, %ecx
	cmpb	%al, %cl
	je	L1097
L1094:
	movl	132(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	136(%esp), %esi
	.cfi_restore 6
	jmp	L1024
	.p2align 4,,10
	.p2align 3
L1097:
	.cfi_restore_state
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZZ6canseeE10sectbitmap, (%esp)
	call	_memset
	movl	24(%esp), %eax
	cmpl	156(%esp), %eax
	jne	L1026
	movl	28(%esp), %eax
	cmpl	160(%esp), %eax
	je	L1055
L1026:
	movl	156(%esp), %eax
	subl	24(%esp), %eax
	movl	$0, 104(%esp)
	movl	%eax, 36(%esp)
	movl	160(%esp), %eax
	subl	28(%esp), %eax
	movl	$0, 100(%esp)
	movl	%eax, 40(%esp)
	movl	164(%esp), %eax
	subl	44(%esp), %eax
	movl	$0, 96(%esp)
	movl	%eax, 60(%esp)
	movw	%bp, 168(%esp)
L1057:
	movzwl	22(%esp), %ecx
	sarl	$3, %ebx
	xorl	%ebp, %ebp
	movl	%esi, 88(%esp)
	movl	$1, 76(%esp)
	movl	%ecx, %eax
	movw	%cx, _clipsectorlist
	andl	$7, %eax
	movl	%ebp, 72(%esp)
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	orb	%al, __ZZ6canseeE10sectbitmap(%ebx)
	movl	%edi, %eax
	movb	%al, 95(%esp)
L1058:
	movl	72(%esp), %eax
	movl	_sector, %ebp
	movswl	_clipsectorlist(%eax,%eax), %esi
	leal	(%esi,%esi,4), %eax
	movl	%esi, 84(%esp)
	leal	0(,%eax,8), %ebx
	movl	%esi, %eax
	movl	%ebx, 56(%esp)
	addl	%ebx, %ebp
	call	_yax_getbunch.constprop.1
	movw	%ax, 92(%esp)
	movl	%eax, %edi
	movl	%esi, %eax
	leal	108(%esp), %esi
	call	_yax_getbunch.constprop.0
	movl	%esi, 12(%esp)
	movl	24(%esp), %esi
	leal	112(%esp), %ecx
	movl	%ecx, 16(%esp)
	movl	28(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	_sector, %esi
	movl	%ecx, 8(%esp)
	addl	%ebx, %esi
	movw	%ax, 70(%esp)
	movl	%esi, (%esp)
	leal	116(%esp), %esi
	call	_getzsofslopeptr
	leal	120(%esp), %ecx
	movl	%esi, 12(%esp)
	movl	156(%esp), %esi
	movl	%ecx, 16(%esp)
	movl	160(%esp), %ecx
	addl	_sector, %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, 8(%esp)
	call	_getzsofslopeptr
	movswl	2(%ebp), %ebx
	movl	%ebx, 48(%esp)
	testl	%ebx, %ebx
	jle	L1028
	movswl	0(%ebp), %edx
	andw	70(%esp), %di
	movl	_wall, %eax
	movw	%di, 68(%esp)
	movl	$-1, %edi
	sall	$5, %edx
	movw	%di, 22(%esp)
	leal	(%eax,%edx), %ebp
	jmp	L1054
	.p2align 4,,10
	.p2align 3
L1032:
	movswl	12(%ebp), %edi
	movl	%edi, 64(%esp)
	cmpw	$0, 68(%esp)
	js	L1098
L1042:
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %ebx
	movl	36(%esp), %eax
	movl	%ebx, %edx
/APP
 # 12851 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	24(%esp), %esi
	movl	%ebx, %edx
	leal	(%eax,%esi), %ecx
	movl	40(%esp), %eax
/APP
 # 12852 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	28(%esp), %eax
	movl	%ebx, %edx
	movl	%eax, 32(%esp)
	movl	60(%esp), %eax
/APP
 # 12853 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %edx
	movl	%eax, 80(%esp)
	movl	%ecx, 4(%esp)
	leal	(%eax,%edx), %esi
	movl	32(%esp), %eax
	leal	128(%esp), %edx
	movl	%ecx, 52(%esp)
	movl	%edx, 16(%esp)
	leal	124(%esp), %edx
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	addl	_sector, %eax
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	124(%esp), %eax
	cmpl	%eax, %esi
	jle	L1044
	cmpl	128(%esp), %esi
	movl	52(%esp), %ecx
	jge	L1050
	testl	%edi, %edi
	js	L1094
	testb	$32, 14(%ebp)
	jne	L1094
	leal	128(%esp), %eax
	leal	(%edi,%edi,4), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, 16(%esp)
	leal	124(%esp), %eax
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	124(%esp), %esi
	jle	L1094
	cmpl	128(%esp), %esi
	jge	L1094
L1052:
	movl	64(%esp), %edx
	movl	64(%esp), %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZZ6canseeE10sectbitmap(%edx), %eax
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %ecx
	movl	%eax, %ebx
	notl	%ebx
	testb	%cl, %bl
	je	L1030
	orl	%ecx, %eax
	movzwl	64(%esp), %ebx
	movb	%al, __ZZ6canseeE10sectbitmap(%edx)
	movl	76(%esp), %eax
	movw	%bx, _clipsectorlist(%eax,%eax)
	addl	$1, %eax
	movl	%eax, 76(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1030:
	subl	$1, 48(%esp)
	je	L1053
	movl	_wall, %eax
	addl	$32, %ebp
L1054:
	movswl	8(%ebp), %edx
	movl	0(%ebp), %ecx
	movl	4(%ebp), %ebx
	movl	36(%esp), %esi
	sall	$5, %edx
	addl	%edx, %eax
	movl	%ebx, %edi
	movl	%ecx, %edx
	subl	4(%eax), %edi
	subl	(%eax), %edx
	movl	40(%esp), %eax
	imull	%edi, %esi
	movl	%edx, 32(%esp)
	imull	%edx, %eax
	subl	%esi, %eax
	testl	%eax, %eax
	jle	L1030
	movl	40(%esp), %esi
	movl	36(%esp), %edx
	subl	24(%esp), %ecx
	subl	28(%esp), %ebx
	imull	%ecx, %esi
	imull	%ebx, %edx
	subl	%edx, %esi
	cmpl	%eax, %esi
	jnb	L1030
	movl	32(%esp), %edx
	imull	%edi, %ecx
	imull	%ebx, %edx
	subl	%ecx, %edx
	cmpl	%eax, %edx
	jb	L1032
	cmpl	%edx, %eax
	jg	L1030
	cmpw	$0, 92(%esp)
	js	L1034
	movl	108(%esp), %eax
	cmpl	%eax, 44(%esp)
	jle	L1034
	movl	116(%esp), %edx
	cmpl	%edx, 164(%esp)
	jge	L1034
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	44(%esp), %edx
	subl	164(%esp), %edx
	cmpl	%edx, %ecx
	je	L1034
	xorl	%ebx, %ebx
L1059:
	subl	%ecx, %edx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	movl	44(%esp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %esi
	cmpl	$16777215, %eax
	ja	L1041
	movl	36(%esp), %eax
	movl	%esi, %edx
/APP
 # 12820 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	24(%esp), %eax
	movl	%esi, %edx
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
/APP
 # 12821 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	28(%esp), %edi
	movl	84(%esp), %ecx
	movl	%ebx, (%esp)
	addl	%eax, %edi
	movl	32(%esp), %eax
	movl	%edi, %edx
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1041
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	__ZZ6canseeE10sectbitmap(%ecx), %edx
	movb	%dl, 52(%esp)
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movb	%dl, 64(%esp)
	movzbl	52(%esp), %edx
	notl	%edx
	testb	%dl, 64(%esp)
	je	L1041
	cmpw	$-1, 22(%esp)
	jne	L1041
	movzbl	64(%esp), %edx
	orl	52(%esp), %edx
	movw	%ax, 22(%esp)
	movb	%dl, __ZZ6canseeE10sectbitmap(%ecx)
	movl	60(%esp), %eax
	movl	%esi, %edx
/APP
 # 12833 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	44(%esp), %eax
	movl	%edi, 100(%esp)
	movl	%eax, 104(%esp)
	movl	32(%esp), %eax
	movl	%eax, 96(%esp)
L1041:
	cmpl	$1, %ebx
	je	L1030
L1034:
	cmpw	$0, 70(%esp)
	js	L1030
	movl	44(%esp), %eax
	cmpl	%eax, 112(%esp)
	jle	L1030
	movl	120(%esp), %eax
	cmpl	%eax, 164(%esp)
	jle	L1030
	movl	112(%esp), %eax
	movl	44(%esp), %edx
	movl	$1, %ebx
	subl	164(%esp), %edx
	movl	%eax, %ecx
	subl	120(%esp), %ecx
	cmpl	%ecx, %edx
	jne	L1059
	jmp	L1030
	.p2align 4,,10
	.p2align 3
L1100:
	movl	128(%esp), %eax
	cmpl	%eax, %esi
	jl	L1094
	movl	112(%esp), %edx
	cmpl	44(%esp), %edx
	jl	L1094
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	80(%esp), %eax
	negl	%eax
	cmpl	%ecx, %eax
	je	L1094
	movl	$1, %edi
L1049:
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	subl	%edx, %eax
	cltd
	shldl	$24, %eax, %edx
	sall	$24, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 12871 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	cmpl	$16777215, %eax
	jbe	L1099
L1051:
	cmpl	$1, %edi
	je	L1094
L1050:
	cmpw	$0, 70(%esp)
	jns	L1100
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1098:
	testl	%edi, %edi
	js	L1094
	testb	$32, 14(%ebp)
	je	L1042
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1096:
	call	_calc_sector_reachability
	movl	__ZL16reachablesectors.lto_priv.0, %edx
	jmp	L1025
	.p2align 4,,10
	.p2align 3
L1044:
	cmpw	$0, 92(%esp)
	js	L1050
	movl	108(%esp), %edx
	cmpl	44(%esp), %edx
	jg	L1050
	movl	%edx, %ecx
	xorl	%edi, %edi
	subl	%eax, %ecx
	movl	80(%esp), %eax
	negl	%eax
	cmpl	%eax, %ecx
	jne	L1049
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1028:
	addl	$1, 72(%esp)
	movl	76(%esp), %edi
	cmpl	%edi, 72(%esp)
	jl	L1058
	movl	88(%esp), %esi
	movzbl	95(%esp), %eax
	movl	132(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	andb	__ZZ6canseeE10sectbitmap(%esi), %al
	cmpb	95(%esp), %al
	sete	%al
	movl	136(%esp), %esi
	.cfi_restore 6
	movzbl	%al, %eax
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1053:
	.cfi_restore_state
	cmpw	$-1, 22(%esp)
	je	L1028
	movl	88(%esp), %esi
	movzbl	95(%esp), %edi
	movl	96(%esp), %eax
	cmpl	%eax, 156(%esp)
	jne	L1061
	movl	100(%esp), %eax
	cmpl	%eax, 160(%esp)
	je	L1082
L1061:
	movl	104(%esp), %eax
	movswl	22(%esp), %ebx
	movl	%eax, 44(%esp)
	movl	100(%esp), %eax
	movl	%eax, 28(%esp)
	movl	96(%esp), %eax
	movl	%eax, 24(%esp)
	jmp	L1057
	.p2align 4,,10
	.p2align 3
L1099:
	movl	36(%esp), %eax
	movl	%ebx, %edx
/APP
 # 12875 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	40(%esp), %eax
/APP
 # 12876 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	28(%esp), %edx
	movl	%edi, (%esp)
	addl	%eax, %edx
	movl	24(%esp), %eax
	addl	%ecx, %eax
	movl	84(%esp), %ecx
	call	_yax_getneighborsect
	movl	%eax, 64(%esp)
	testl	%eax, %eax
	js	L1051
	jmp	L1052
L1082:
	movzwl	168(%esp), %ebp
L1055:
	xorl	%eax, %eax
	cmpw	22(%esp), %bp
	movl	132(%esp), %ebx
	.cfi_restore 3
	movl	136(%esp), %esi
	.cfi_restore 6
	sete	%al
	jmp	L1022
	.cfi_endproc
LFE158:
	.p2align 4
	.globl	_neartag.constprop.0
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
_neartag.constprop.0:
LFB163:
	.cfi_startproc
	subl	$156, %esp
	.cfi_def_cfa_offset 160
	movl	%esi, 144(%esp)
	.cfi_offset 6, -16
	movzwl	176(%esp), %esi
	movl	%ebx, 140(%esp)
	.cfi_offset 3, -20
	movl	196(%esp), %ebx
	leal	512(%esi), %eax
	movl	%edi, 148(%esp)
	movswl	172(%esp), %ecx
	andl	$2047, %eax
	movl	%ebx, %edx
	movl	%eax, 96(%esp)
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 12934 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	andl	$2047, %esi
	movl	%eax, 88(%esp)
	movl	%ebx, %edx
	movl	%esi, 100(%esp)
	movswl	_sintable(%esi,%esi), %eax
/APP
 # 12935 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
	.cfi_offset 7, -12
/NO_APP
	movl	160(%esp), %edi
	movl	164(%esp), %ebx
	movl	$-1, %esi
	movl	$-1, %edx
	movl	%eax, 92(%esp)
	movl	%edi, 128(%esp)
	movl	168(%esp), %edi
	movl	%ebx, 132(%esp)
	movl	180(%esp), %ebx
	movl	%edi, 136(%esp)
	movl	$-1, %edi
	movw	%di, (%ebx)
	movl	184(%esp), %edi
	movl	188(%esp), %ebx
	movw	%dx, (%edi)
	movw	%si, (%ebx)
	movl	192(%esp), %esi
	movl	$0, (%esi)
	testb	$3, 200(%esp)
	je	L1101
	movl	88(%esp), %edi
	addl	164(%esp), %eax
	movl	$1, %ebx
	xorl	%esi, %esi
	addl	160(%esp), %edi
	movl	%ebp, 152(%esp)
	.cfi_offset 5, -8
	movl	%edi, 68(%esp)
	movl	%eax, 76(%esp)
	movw	%cx, _clipsectorlist
	movl	$0, 72(%esp)
	movw	%bx, 86(%esp)
	movw	%si, 84(%esp)
	.p2align 4
	.p2align 3
L1133:
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%edi, 40(%esp)
	movl	%eax, 60(%esp)
	subl	$1, %eax
	cmpl	%eax, %edi
	jg	L1103
	movl	_wall, %eax
	sall	$5, %edi
	movl	%ecx, 80(%esp)
	leal	(%eax,%edi), %ebp
	movl	%eax, %ecx
	jmp	L1119
	.p2align 4,,10
	.p2align 3
L1173:
	testb	$1, 200(%esp)
	jne	L1105
	xorl	%esi, %esi
	testb	$2, 200(%esp)
	je	L1107
	movl	56(%esp), %eax
	movl	_sector, %edx
	xorl	%esi, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpw	$0, 36(%eax)
	jne	L1134
L1135:
	cmpw	$0, 28(%ebp)
	je	L1107
L1168:
	orl	$2, %esi
	.p2align 4
	.p2align 3
L1107:
	movswl	8(%ebp), %eax
	movl	4(%ebp), %edi
	movl	0(%ebp), %ebx
	sall	$5, %eax
	movl	%edi, 48(%esp)
	addl	%ecx, %eax
	movl	%ebx, %ecx
	subl	160(%esp), %ecx
	movl	%ebx, 44(%esp)
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%eax, %edx
	subl	164(%esp), %edx
	movl	%eax, 52(%esp)
	movl	%edx, %eax
	imull	%ecx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%edi, %eax
	movl	48(%esp), %edx
	subl	160(%esp), %eax
	subl	164(%esp), %edx
	imull	%edx
	cmpl	%eax, %ecx
	movl	%ebx, %ecx
	sbbl	%edx, %ecx
	jl	L1112
	leal	104(%esp), %eax
	movl	48(%esp), %edx
	leal	112(%esp), %ecx
	movl	44(%esp), %ebx
	movl	%eax, 28(%esp)
	movl	52(%esp), %eax
	movl	%ecx, 36(%esp)
	leal	108(%esp), %ecx
	movl	%eax, 24(%esp)
	movl	72(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	168(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	76(%esp), %eax
	movl	%edx, 16(%esp)
	movl	164(%esp), %edx
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	movl	%edi, 20(%esp)
	movl	%eax, (%esp)
	movl	160(%esp), %eax
	movl	%ebx, 12(%esp)
	call	_lintersect
	cmpl	$1, %eax
	je	L1172
L1112:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	je	L1165
L1174:
	movl	_wall, %ecx
	addl	$32, %ebp
L1119:
	movswl	12(%ebp), %eax
	movw	%ax, 66(%esp)
	movl	%eax, 56(%esp)
	testl	%eax, %eax
	jns	L1173
	testb	$1, 200(%esp)
	je	L1109
	cmpw	$0, 26(%ebp)
	je	L1109
L1110:
	movl	$2, %esi
	jmp	L1107
	.p2align 4,,10
	.p2align 3
L1105:
	movl	56(%esp), %eax
	movl	_sector, %edx
	xorl	%ebx, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpw	$0, 34(%eax)
	setne	%bl
	movl	%ebx, %esi
	testb	$2, 200(%esp)
	jne	L1108
	movl	%esi, %eax
	orl	$2, %eax
	cmpw	$0, 26(%ebp)
	cmovne	%eax, %esi
	jmp	L1107
	.p2align 4,,10
	.p2align 3
L1109:
	testb	$2, 200(%esp)
	je	L1112
	cmpw	$0, 28(%ebp)
	jne	L1110
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	%eax, 60(%esp)
	jne	L1174
	.p2align 4
	.p2align 3
L1165:
	movl	80(%esp), %ecx
L1103:
	movzwl	84(%esp), %edx
	addl	$1, %edx
	movw	%dx, 84(%esp)
	testb	$4, 200(%esp)
	je	L1175
L1123:
	cmpw	86(%esp), %dx
	jge	L1167
L1177:
	movswl	%dx, %edx
	movswl	_clipsectorlist(%edx,%edx), %ecx
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1108:
	cmpw	$0, 36(%eax)
	je	L1176
	movl	$3, %esi
	cmpw	$0, 26(%ebp)
	jne	L1107
L1134:
	cmpw	$1, 28(%ebp)
	sbbl	%esi, %esi
	andl	$-2, %esi
	addl	$3, %esi
	jmp	L1107
	.p2align 4,,10
	.p2align 3
L1172:
	testl	%esi, %esi
	je	L1114
	testl	$1, %esi
	je	L1115
	movl	180(%esp), %eax
	movzwl	66(%esp), %ebx
	movw	%bx, (%eax)
	cmpl	$1, %esi
	jne	L1115
L1116:
	movl	96(%esp), %ebx
	movl	104(%esp), %eax
	movl	108(%esp), %esi
	movswl	_sintable(%ebx,%ebx), %edx
	movl	100(%esp), %ebx
	movl	%eax, 68(%esp)
	movl	%esi, 76(%esp)
	subl	160(%esp), %eax
	subl	164(%esp), %esi
	movswl	_sintable(%ebx,%ebx), %edi
/APP
 # 12983 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %esi
	movl	%eax, (%esi)
	movl	112(%esp), %eax
	movl	%eax, 72(%esp)
L1114:
	movl	56(%esp), %ecx
	testl	%ecx, %ecx
	js	L1112
	movswl	86(%esp), %edx
	movl	%edx, %eax
	subl	$1, %eax
	js	L1117
	movzwl	66(%esp), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L1118:
	cmpw	_clipsectorlist(%eax,%eax), %cx
	je	L1112
	subl	$1, %eax
	jnb	L1118
L1117:
	movzwl	66(%esp), %eax
	addw	$1, 86(%esp)
	movw	%ax, _clipsectorlist(%edx,%edx)
	jmp	L1112
	.p2align 4,,10
	.p2align 3
L1176:
	cmpw	$0, 26(%ebp)
	jne	L1168
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1175:
	movswl	_headspritesect(%ecx,%ecx), %ebp
	testl	%ebp, %ebp
	js	L1123
	testb	$1, 200(%esp)
	je	L1162
	movw	%dx, 40(%esp)
	movl	76(%esp), %ecx
	jmp	L1121
	.p2align 4,,10
	.p2align 3
L1127:
	movl	68(%esp), %ebx
	movl	128(%esp), %edx
	leal	116(%esp), %esi
	movl	%ecx, 120(%esp)
	movl	%esi, 24(%esp)
	movl	88(%esp), %esi
	movl	%ebx, 116(%esp)
	movl	72(%esp), %ebx
	movl	%edx, (%esp)
	movl	132(%esp), %edx
	movl	%ebx, 124(%esp)
	movl	92(%esp), %ebx
	movl	%edx, 4(%esp)
	movl	136(%esp), %edx
	movl	%ebx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$1, 28(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	call	_try_facespr_intersect
	movl	116(%esp), %ebx
	movl	124(%esp), %esi
	movl	120(%esp), %ecx
	movl	%ebx, 68(%esp)
	movl	%esi, 72(%esp)
	testl	%eax, %eax
	je	L1129
	movl	188(%esp), %eax
	movl	100(%esp), %edi
	movl	%ecx, %esi
	subl	164(%esp), %esi
	movw	%bp, (%eax)
	movl	%ebx, %eax
	movl	96(%esp), %ebx
	subl	160(%esp), %eax
	movswl	_sintable(%edi,%edi), %edi
	movswl	_sintable(%ebx,%ebx), %edx
/APP
 # 13014 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %esi
	movl	%eax, (%esi)
L1129:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	js	L1169
L1121:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	cmpw	$0, 38(%eax)
	jne	L1127
	testb	$2, 200(%esp)
	je	L1129
	cmpw	$0, 40(%eax)
	jne	L1127
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1121
	.p2align 4
	.p2align 3
L1169:
	movl	%ecx, 76(%esp)
	movzwl	40(%esp), %edx
L1178:
	cmpw	86(%esp), %dx
	jl	L1177
L1167:
	movl	152(%esp), %ebp
	.cfi_restore 5
L1101:
	movl	140(%esp), %ebx
	movl	144(%esp), %esi
	movl	148(%esp), %edi
	addl	$156, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1115:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	184(%esp), %eax
	movzwl	40(%esp), %edi
	movw	%di, (%eax)
	jmp	L1116
	.p2align 4,,10
	.p2align 3
L1162:
	testb	$2, 200(%esp)
	je	L1123
	movw	%dx, 40(%esp)
	movl	76(%esp), %ecx
	.p2align 4
	.p2align 3
L1122:
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	cmpw	$0, 40(%eax)
	je	L1124
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	leal	116(%esp), %edi
	movl	%ecx, 120(%esp)
	movl	128(%esp), %edx
	movl	%edi, 24(%esp)
	movl	%ebx, 116(%esp)
	movl	92(%esp), %ebx
	movl	%edx, (%esp)
	movl	132(%esp), %edx
	movl	%esi, 124(%esp)
	movl	88(%esp), %esi
	movl	%edx, 4(%esp)
	movl	136(%esp), %edx
	movl	%ebx, 16(%esp)
	movl	$1, 28(%esp)
	movl	$0, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	call	_try_facespr_intersect
	movl	116(%esp), %ebx
	movl	124(%esp), %edi
	movl	120(%esp), %ecx
	movl	%ebx, 68(%esp)
	movl	%edi, 72(%esp)
	testl	%eax, %eax
	je	L1124
	movl	188(%esp), %eax
	movl	100(%esp), %edi
	movl	%ecx, %esi
	subl	164(%esp), %esi
	movw	%bp, (%eax)
	movl	%ebx, %eax
	movl	96(%esp), %ebx
	subl	160(%esp), %eax
	movswl	_sintable(%edi,%edi), %edi
	movswl	_sintable(%ebx,%ebx), %edx
/APP
 # 13014 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	192(%esp), %ebx
	movl	%eax, (%ebx)
L1124:
	movswl	_nextspritesect(%ebp,%ebp), %ebp
	testl	%ebp, %ebp
	jns	L1122
	movl	%ecx, 76(%esp)
	movzwl	40(%esp), %edx
	jmp	L1178
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	_lastwall
	.def	_lastwall;	.scl	2;	.type	32;	.endef
_lastwall:
LFB164:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_wall, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	testw	%ax, %ax
	jle	L1180
	movl	%edi, %eax
	leal	-1(%ebx), %ecx
	sall	$5, %eax
	movswl	%cx, %ecx
	cmpw	-24(%eax,%esi), %bx
	je	L1179
L1180:
	movswl	_numwalls, %edx
	movl	%edi, %ecx
	jmp	L1182
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1188:
	movswl	%ax, %ecx
	subl	$1, %edx
	je	L1187
L1182:
	movl	%ecx, %eax
	sall	$5, %eax
	movzwl	8(%esi,%eax), %eax
	cmpw	%ax, %bx
	jne	L1188
L1179:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	%ecx, %eax
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
	movl	%edi, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	movl	%ecx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	_renderDrawMapView
	.def	_renderDrawMapView;	.scl	2;	.type	32;	.endef
_renderDrawMapView:
LFB165:
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
	sall	$8, %esi
	andl	$-8, %esp
	subl	$204, %esp
	.cfi_offset 3, -20
	movswl	8(%ebp), %ebx
	movl	%eax, 120(%esp)
	movl	_yxaspect, %eax
	movl	%edx, 140(%esp)
	movl	%eax, 52(%esp)
	movl	_viewingrange, %eax
	movl	$200, 8(%esp)
	movl	$0, 12(%esp)
	movl	$13107200, (%esp)
	movl	$0, 4(%esp)
	movl	%eax, 48(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%eax, %edx
	movl	$65536, %eax
	call	_renderSetAspect
	movl	$0, __ZL15beforedrawrooms.lto_priv.0
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_gotsector, (%esp)
	call	_memset
	movl	_windowxy1, %eax
	movl	_windowxy1+4, %edi
	movl	_windowxy2, %edx
	movl	_windowxy2+4, %ecx
	movl	%esi, 8(%esp)
	movl	%eax, 168(%esp)
	movl	$1536, %eax
	subl	%ebx, %eax
	movl	%edi, 156(%esp)
	negl	%ebx
	movl	%edx, 164(%esp)
	movl	%eax, %edi
	movl	%esi, %edx
	andl	$2047, %ebx
	sarl	$31, %edx
	andl	$2047, %edi
	movl	%ecx, 152(%esp)
	movl	%edx, 12(%esp)
	movswl	_sintable(%edi,%edi), %eax
	cltd
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%esi, %edx
	movl	%esi, 8(%esp)
	sarl	$31, %edx
	movl	%eax, 72(%esp)
	movl	%edx, 12(%esp)
	movswl	_sintable(%ebx,%ebx), %eax
	cltd
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%esi, %edx
	movl	%eax, 60(%esp)
	movswl	_sintable(%ebx,%ebx), %eax
/APP
 # 10472 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 116(%esp)
	movl	%esi, %edx
	movswl	_sintable(%edi,%edi), %eax
/APP
 # 10472 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $8, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, 112(%esp)
	movl	116(%esp), %eax
/APP
 # 10473 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_yxaspect, %edx
	movl	%eax, 104(%esp)
	movl	112(%esp), %eax
/APP
 # 10473 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 100(%esp)
	call	_videoBeginDrawing
	cmpw	$0, _numsectors
	jle	L1190
	movl	168(%esp), %eax
	movl	156(%esp), %edi
	movl	$0, 144(%esp)
	movl	$1, %ebx
	movl	$0, 96(%esp)
	sall	$12, %eax
	sall	$12, %edi
	movl	$0, 168(%esp)
	movl	%eax, 136(%esp)
	movl	164(%esp), %eax
	movl	%edi, 132(%esp)
	sall	$12, %eax
	leal	4095(%eax), %esi
	movl	152(%esp), %eax
	movl	%esi, 128(%esp)
	sall	$12, %eax
	addl	$4095, %eax
	movl	%eax, 124(%esp)
	movl	_sector, %eax
	movl	%eax, 108(%esp)
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1204:
	addl	$1, 168(%esp)
	movswl	_numsectors, %eax
	movl	168(%esp), %esi
	addl	$40, 108(%esp)
	cmpl	%esi, %eax
	jle	L1224
	movl	%esi, %eax
	addl	$40, 144(%esp)
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %ebx
L1225:
	movl	168(%esp), %esi
	sarl	$3, %esi
	movzbl	_show2dsector(%esi), %eax
	andl	%ebx, %eax
	cmpb	%bl, %al
	jne	L1204
	movswl	168(%esp), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L1192
	movl	_sector, %eax
	movl	144(%esp), %edi
	testw	$384, 14(%eax,%edi)
	je	L1204
L1192:
	movl	108(%esp), %edi
	movswl	2(%edi), %eax
	testw	%ax, %ax
	jle	L1204
	movswl	(%edi), %edi
	movl	_wall, %ecx
	movl	%esi, 40(%esp)
	movl	$0, 152(%esp)
	movl	%edi, %edx
	addl	%edi, %eax
	movl	%ecx, 88(%esp)
	sall	$5, %edx
	movl	%eax, 80(%esp)
	movl	_xdim, %eax
	movl	%edx, 56(%esp)
	addl	%ecx, %edx
	movl	%edx, 148(%esp)
	movl	_ydim, %edx
	sall	$11, %eax
	movl	%eax, 68(%esp)
	movl	%edx, %eax
	movl	%edi, 164(%esp)
	sall	$11, %eax
	movl	$0, 84(%esp)
	movl	$0, 76(%esp)
	movl	%eax, 64(%esp)
	movl	%edx, 44(%esp)
	movb	%bl, 39(%esp)
	.p2align 4
	.p2align 3
L1195:
	movl	164(%esp), %esi
	movswl	%si, %eax
	call	_lastwall
	cmpl	%esi, %eax
	jle	L1193
	movl	152(%esp), %esi
	testl	%esi, %esi
	je	L1193
	movl	84(%esp), %edi
	movl	%esi, 84(%esp)
	movl	%edi, _xb1-4(,%esi,4)
L1193:
	movl	148(%esp), %esi
	movl	88(%esp), %edx
	sall	$5, %eax
	movswl	8(%esi), %edi
	leal	(%edx,%eax), %ebx
	movl	(%esi), %ecx
	movl	4(%esi), %esi
	sall	$5, %edi
	movl	%ecx, %eax
	subl	(%ebx), %eax
	addl	%edx, %edi
	movl	%esi, 156(%esp)
	movl	4(%edi), %edx
	movl	(%edi), %edi
	subl	%esi, %edx
	subl	%ecx, %edi
	movl	4(%ebx), %esi
	subl	156(%esp), %esi
/APP
 # 10512 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $1, %edx, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	je	L1194
	movl	140(%esp), %edi
	subl	120(%esp), %ecx
	subl	156(%esp), %edi
	movl	%ecx, %eax
	movl	116(%esp), %edx
	movl	%edi, %esi
	movl	112(%esp), %edi
/APP
 # 10514 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edx
	movl	%ecx, %esi
	leal	(%edx,%eax), %edi
	movl	156(%esp), %eax
	movl	104(%esp), %edx
	movl	%edi, 92(%esp)
	subl	140(%esp), %eax
	movl	100(%esp), %edi
/APP
 # 10515 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	64(%esp), %esi
	movl	92(%esp), %edi
	movl	128(%esp), %ebx
	movl	124(%esp), %edx
	addl	%eax, %esi
	movl	%edi, %eax
	subl	136(%esp), %eax
	movl	%esi, %ecx
	subl	%edi, %ebx
	subl	132(%esp), %ecx
	subl	%esi, %edx
/APP
 # 10516 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	orl	%eax, 76(%esp)
	movl	152(%esp), %eax
	movl	%esi, _ry1(,%eax,4)
	movl	%eax, %esi
	movl	%edi, _rx1(,%eax,4)
	leal	1(%eax), %eax
	movl	%eax, _xb1(,%esi,4)
	movl	%eax, 152(%esp)
L1194:
	addl	$32, 148(%esp)
	movl	80(%esp), %esi
	addl	$1, 164(%esp)
	cmpl	%esi, 164(%esp)
	jne	L1195
	movl	152(%esp), %eax
	movl	44(%esp), %edx
	movl	40(%esp), %esi
	movzbl	39(%esp), %ebx
	testl	%eax, %eax
	je	L1196
	movl	84(%esp), %edi
	movl	%edi, _xb1-4(,%eax,4)
L1196:
	movl	76(%esp), %edi
	movl	%edi, %eax
	notl	%eax
	testb	$-16, %al
	jne	L1204
	movl	_rx1, %eax
	sall	$11, %edx
	movl	%edx, 84(%esp)
	movl	%eax, 88(%esp)
	movl	_ry1, %eax
	subl	%edx, %eax
	movl	_xyaspect, %edx
/APP
 # 10526 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	testl	$15, %edi
	je	L1197
	movl	152(%esp), %eax
	movl	%edi, %edx
	call	__ZL8clippolyii.lto_priv.0
	movl	%eax, 152(%esp)
	cmpl	$2, %eax
	jle	L1204
L1197:
	movl	168(%esp), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1198
	movl	_tsprite, %edx
	movb	%bl, 164(%esp)
	movl	_sprite, %edi
	movl	%edx, 156(%esp)
	jmp	L1202
L1200:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1350
L1202:
	imull	$44, %eax, %edx
	movzwl	12(%edi,%edx), %edx
	movl	%edx, %ecx
	andw	$-32736, %cx
	cmpw	$32, %cx
	jne	L1200
	notl	%edx
	andl	$72, %edx
	je	L1200
	movl	96(%esp), %ecx
	movl	156(%esp), %ebx
	imull	$44, %ecx, %edx
	movw	%ax, 30(%ebx,%edx)
	movswl	_nextspritesect(%eax,%eax), %eax
	leal	1(%ecx), %edx
	movl	%edx, 96(%esp)
	testl	%eax, %eax
	jns	L1202
L1350:
	movzbl	164(%esp), %ebx
L1198:
	orb	%bl, _gotsector(%esi)
	movl	108(%esp), %esi
	movzwl	14(%esi), %edx
	movl	%edx, %eax
	movl	%edx, _globalorientation
	testb	$1, %al
	jne	L1204
	movzbl	29(%esi), %eax
	movl	%eax, _globalpal
	movl	_palookup(,%eax,4), %eax
	cmpl	_globalpalwritten, %eax
	je	L1205
	testl	%eax, %eax
	cmove	_palookup, %eax
	movl	%eax, _globalpalwritten
	movl	%eax, (%esp)
	call	_setpalookupaddress
L1205:
	movl	108(%esp), %eax
	movswl	24(%eax), %eax
	movl	%eax, %ebx
	movl	%eax, %edx
	cmpl	$30719, %eax
	ja	L1351
L1207:
	movw	%dx, _globalpicnum
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L1208
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
L1208:
	testb	$64, 169(%esp)
	je	L1210
	testb	$16, _globalorientation+1
	je	L1210
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1210
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
L1210:
/APP
 # 10563 "source/build/src/engine.cpp" 1
	movl %eax, %ebx
	cmpb $200, _walock(%eax)
	jae 0f
	movb $199, _walock(%eax)
	0:
	shrl $3, %eax
	andl $7, %ebx
	movb _gotpic(%eax), %dl
	movb _pow2char_(%ebx), %bl
	orb %bl, %dl
	movb %dl, _gotpic(%eax)
 # 0 "" 2
/NO_APP
	movswl	_globalpicnum, %eax
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L1204
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L1204
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	je	L1352
L1213:
	movl	108(%esp), %esi
	movswl	_numshades, %eax
	movl	%edx, __ZL12globalbufplc.lto_priv.0
	movsbl	28(%esi), %edx
	subl	$1, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, _globalshade
	movzbl	32(%esi), %edx
	movl	_globalhisibility, %eax
	testb	%dl, %dl
	je	L1214
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 10569 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1214:
	movl	%eax, _globvis
	movb	$0, __ZL14globalpolytype.lto_priv.0
	testb	$64, _globalorientation
	jne	L1215
	movl	120(%esp), %eax
	xorps	%xmm0, %xmm0
	movl	72(%esp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _globalposx
	movl	140(%esp), %eax
	movl	%ecx, _globalx1
	movl	%eax, _globalposy
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	60(%esp), %eax
	movl	%eax, __ZL8globaly1.lto_priv.0
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
L1216:
	movl	%ecx, __ZL8globalx2.lto_priv.0
	movl	%eax, _globaly2
	call	__ZL17calc_globalshiftsv.lto_priv.0
	movswl	_globalpicnum, %eax
	movl	__ZL12globalbufplc.lto_priv.0, %edx
	movzbl	_picsiz(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, %edx
	andl	$15, %eax
	shrb	$4, %dl
	movl	%eax, (%esp)
	movzbl	%dl, %edx
	movl	%edx, 4(%esp)
	call	_sethlinesizes
	movl	_globalorientation, %ecx
	movl	_globalposy, %edi
	movl	__ZL8globaly1.lto_priv.0, %ebx
	movl	_globaly2, %eax
	movl	%ecx, 164(%esp)
	andl	$4, %ecx
	movl	_globalposx, %esi
	movl	%edi, 156(%esp)
	movl	__ZL8globalx2.lto_priv.0, %edx
	je	L1217
	movl	_globalx1, %ecx
	negl	%eax
	negl	%esi
	negl	%edi
	movl	%eax, _globalx1
	movl	%ecx, %eax
	movl	%ebx, %ecx
	movl	%esi, 156(%esp)
	movl	%edi, %esi
	movl	%ebx, __ZL8globalx2.lto_priv.0
	negl	%eax
	movl	%edx, %ebx
	movl	%edx, __ZL8globaly1.lto_priv.0
	movl	%ecx, %edx
L1217:
	testb	$16, 164(%esp)
	je	L1218
	negl	%ebx
	negl	_globalx1
	negl	%esi
	movl	%ebx, __ZL8globaly1.lto_priv.0
L1218:
	testb	$32, 164(%esp)
	jne	L1353
L1219:
	movsbl	__ZL12globalxshift.lto_priv.0, %edi
	movl	%edi, %ecx
	movl	%edi, 164(%esp)
	testb	%cl, %cl
	js	L1220
	movl	_globalx1, %edi
	sall	%cl, %ebx
	sall	%cl, %edi
	movl	%edi, %ecx
L1221:
	movl	%ebx, _asm1
	movsbl	__ZL12globalyshift.lto_priv.0, %ebx
	movl	%ecx, _globalx1
	movl	%ebx, %ecx
	testb	%bl, %bl
	js	L1222
	sall	%cl, %edx
	sall	%cl, %eax
L1223:
	movl	%eax, _globaly2
	movl	156(%esp), %eax
	leal	20(%ebx), %ecx
	xorl	%ebx, %ebx
	movl	%edx, _asm2
	xorps	%xmm0, %xmm0
	cltd
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	movl	164(%esp), %ecx
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	movl	108(%esp), %ebx
	addl	$20, %ecx
	movl	%edx, 160(%esp)
	movzbl	31(%ebx), %edx
	sall	%cl, %esi
	movl	%eax, 156(%esp)
	movl	156(%esp), %eax
	sall	$24, %edx
	subl	%edx, %eax
	xorl	%edx, %edx
	testb	$32, %cl
	cmovne	%edx, %esi
	movzbl	30(%ebx), %edx
	movl	%eax, _globalposy
	sall	$24, %edx
	addl	%esi, %edx
	cvtsi2ssl	%edx, %xmm0
	movl	%edx, _globalposx
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	152(%esp), %eax
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
	call	__ZL17renderFillPolygoni.lto_priv.0
	jmp	L1204
	.p2align 4,,10
	.p2align 3
L1190:
	call	_videoEndDrawing
	movl	_r_usenewaspect, %ebx
	testl	%ebx, %ebx
	je	L1258
	movl	52(%esp), %edx
	movl	48(%esp), %eax
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
	jmp	_renderSetAspect
L1224:
	.cfi_restore_state
	movl	96(%esp), %edx
	leal	-1(%edx), %esi
	movl	%esi, 144(%esp)
	cmpl	$1, %edx
	jle	L1226
	movl	$1, %eax
	.p2align 3
	.p2align 4
	.p2align 3
L1227:
	leal	1(%eax,%eax), %eax
	cmpl	%eax, %edx
	jg	L1227
	sarl	%eax
	movl	_sprite, %edi
	movl	_tsprite, %esi
	movl	%eax, 164(%esp)
	.p2align 4
	.p2align 3
L1228:
	movl	96(%esp), %ecx
	movl	164(%esp), %eax
	subl	%eax, %ecx
	testl	%ecx, %ecx
	jle	L1233
	imull	$44, %eax, %eax
	movl	%ecx, 148(%esp)
	movl	%eax, 156(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1234:
	movl	%eax, 168(%esp)
	movl	%eax, 152(%esp)
	jmp	L1230
	.p2align 4,,10
	.p2align 3
L1291:
	movl	_sprite, %edi
	movl	_tsprite, %esi
L1230:
	imull	$44, 168(%esp), %ebx
	leal	(%esi,%ebx), %eax
	addl	156(%esp), %ebx
	addl	%esi, %ebx
	movswl	30(%eax), %edx
	movswl	30(%ebx), %ecx
	imull	$44, %edx, %edx
	imull	$44, %ecx, %ecx
	movl	8(%edi,%edx), %edx
	cmpl	%edx, 8(%edi,%ecx)
	jge	L1345
	addl	$30, %eax
	addl	$30, %ebx
/APP
 # 10646 "source/build/src/engine.cpp" 1
	movw (%eax), %cx; movw (%ebx), %dx; movw %cx, (%ebx); movw %dx, (%eax)
 # 0 "" 2
/NO_APP
	movl	164(%esp), %edi
	subl	%edi, 168(%esp)
	jns	L1291
	movl	152(%esp), %eax
	movl	_sprite, %edi
	movl	_tsprite, %esi
L1229:
	addl	$1, %eax
	cmpl	148(%esp), %eax
	jne	L1234
	sarl	164(%esp)
	jne	L1228
	jmp	L1257
L1356:
	movzwl	%ax, %eax
	movswl	14(%esi), %edx
	movlps	(%esi), %xmm1
	imull	$44, %eax, %eax
	movzwl	_tilesiz(,%edx,4), %ecx
	movzwl	_tilesiz+2(,%edx,4), %edx
	movlps	%xmm1, 156(%esp)
	movlps	%xmm1, 172(%esp)
	addl	%edi, %eax
	movw	%dx, 76(%esp)
	movzwl	12(%eax), %edx
	movw	%cx, 80(%esp)
	xorl	%ecx, %ecx
	notl	%edx
	andl	$48, %edx
	jne	L1236
	movswl	22(%eax), %ecx
L1236:
	leal	184(%esp), %eax
	movl	%ecx, 32(%esp)
	leal	196(%esp), %edx
	movl	%eax, 28(%esp)
	leal	192(%esp), %eax
	leal	188(%esp), %ecx
	movl	%eax, 24(%esp)
	leal	200(%esp), %eax
	leal	176(%esp), %esi
	movl	%eax, 20(%esp)
	leal	180(%esp), %ebx
	leal	172(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	xorl	%ecx, %ecx
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	168(%esp), %eax
	movl	%ebx, 12(%esp)
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	movl	172(%esp), %ecx
	subl	120(%esp), %ecx
	movups	LC58, %xmm3
	movl	140(%esp), %esi
	movl	%ecx, %eax
	movl	116(%esp), %edx
	movl	112(%esp), %edi
	movups	%xmm3, _xb1
	subl	176(%esp), %esi
/APP
 # 10669 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_xdim, %ebx
	movl	176(%esp), %edi
	movl	%ecx, %esi
	subl	140(%esp), %edi
	movl	104(%esp), %edx
	sall	$11, %ebx
	addl	%ebx, %eax
	movl	%ebx, 148(%esp)
	movl	%eax, 156(%esp)
	movl	%edi, %eax
	movl	100(%esp), %edi
/APP
 # 10670 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydim, %ebx
	movl	156(%esp), %edi
	movl	%eax, 88(%esp)
	movl	124(%esp), %esi
	sall	$11, %ebx
	leal	(%ebx,%eax), %edx
	movl	%ebx, 152(%esp)
	movl	%edi, %ebx
	subl	136(%esp), %ebx
	movl	%ebx, %eax
	movl	128(%esp), %ebx
	subl	%edx, %esi
	movl	%edx, 96(%esp)
	movl	%edx, %ecx
	movl	%esi, %edx
	subl	132(%esp), %ecx
	subl	%edi, %ebx
/APP
 # 10671 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	96(%esp), %ecx
	movl	116(%esp), %edx
	movl	%eax, 84(%esp)
	movl	%edi, _rx1
	movl	140(%esp), %esi
	movl	%ecx, _ry1
	movl	196(%esp), %ecx
	subl	120(%esp), %ecx
	movl	112(%esp), %edi
	subl	200(%esp), %esi
	movl	%ecx, %eax
/APP
 # 10675 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %esi
	movl	200(%esp), %edi
	subl	140(%esp), %edi
	movl	104(%esp), %edx
	addl	%esi, %eax
	movl	%ecx, %esi
	movl	%eax, 164(%esp)
	movl	%edi, %eax
	movl	100(%esp), %edi
/APP
 # 10676 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	152(%esp), %ecx
	movl	124(%esp), %edi
	movl	164(%esp), %esi
	movl	128(%esp), %ebx
	leal	(%ecx,%eax), %edx
	subl	%edx, %edi
	movl	%edx, 92(%esp)
	movl	%esi, %eax
	movl	%edx, %ecx
	subl	136(%esp), %eax
	subl	%esi, %ebx
	subl	132(%esp), %ecx
	movl	%edi, %edx
/APP
 # 10677 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %ecx
	movl	92(%esp), %ebx
	movl	%esi, _rx1+4
	movl	116(%esp), %edx
	movl	140(%esp), %esi
	orl	%eax, %ecx
	movl	%ebx, _ry1+4
	movl	112(%esp), %edi
	movl	%ecx, 84(%esp)
	movl	188(%esp), %ecx
	subl	120(%esp), %ecx
	subl	192(%esp), %esi
	movl	%ecx, %eax
/APP
 # 10681 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %ebx
	movl	104(%esp), %edx
	movl	%ecx, %esi
	movl	100(%esp), %edi
	addl	%eax, %ebx
	movl	192(%esp), %eax
	subl	140(%esp), %eax
	movl	%ebx, 148(%esp)
/APP
 # 10682 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	152(%esp), %edx
	movl	128(%esp), %ebx
	movl	148(%esp), %edi
	leal	(%edx,%eax), %esi
	movl	124(%esp), %edx
	movl	148(%esp), %eax
	movl	%esi, %ecx
	subl	136(%esp), %eax
	subl	%edi, %ebx
	subl	132(%esp), %ecx
	subl	%esi, %edx
/APP
 # 10683 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %ebx
	movl	%edi, %ecx
	movl	%edi, _rx1+8
	movl	%esi, _ry1+8
	movl	156(%esp), %edi
	addl	96(%esp), %esi
	subl	92(%esp), %esi
	orl	%eax, %ebx
	movl	%esi, %edx
	subl	132(%esp), %edx
	addl	%ecx, %edi
	movl	%ebx, 148(%esp)
	movl	%edx, %ecx
	movl	128(%esp), %ebx
	movl	124(%esp), %edx
	subl	164(%esp), %edi
	movl	%edi, %eax
	subl	%edi, %ebx
	subl	136(%esp), %eax
	subl	%esi, %edx
/APP
 # 10688 "source/build/src/engine.cpp" 1
	sarl $31, %eax; addl %ebx, %ebx; adcl %eax, %eax; addl %ecx, %ecx; adcl %eax, %eax; addl %edx, %edx; adcl %eax, %eax; movl %eax, %ebx; shl $4, %ebx; orb $0xf0, %al; xorl %ebx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %ecx
	movl	%esi, _ry1+12
	movl	%edi, _rx1+12
	orl	%eax, %ecx
	movl	%ecx, %esi
	notl	%esi
	andl	$240, %esi
	jne	L1235
	movl	_xyaspect, %edx
	movl	88(%esp), %eax
/APP
 # 10693 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	$4, 96(%esp)
	testb	$15, %cl
	jne	L1354
L1238:
	movl	168(%esp), %eax
	movzwl	14(%eax), %ebx
	movzbl	17(%eax), %eax
	movl	%eax, _globalpal
	movswl	%bx, %eax
	movw	%bx, _globalpicnum
	cmpl	$30719, %eax
	jbe	L1240
	xorl	%edi, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movw	%di, _globalpicnum
L1240:
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L1241
	call	_animateoffs
	addl	%eax, %ebx
	movw	%bx, _globalpicnum
	movswl	%bx, %eax
L1241:
	testb	$64, 145(%esp)
	je	L1243
	testb	$16, _globalorientation+1
	jne	L1355
L1243:
/APP
 # 10705 "source/build/src/engine.cpp" 1
	movl %eax, %ebx
	cmpb $200, _walock(%eax)
	jae 0f
	movb $199, _walock(%eax)
	0:
	shrl $3, %eax
	andl $7, %ebx
	movb _gotpic(%eax), %dl
	movb _pow2char_(%ebx), %bl
	orb %bl, %dl
	movb %dl, _gotpic(%eax)
 # 0 "" 2
/NO_APP
	movswl	_globalpicnum, %eax
	cmpw	$0, _tilesiz(,%eax,4)
	jle	L1235
	cmpw	$0, _tilesiz+2(,%eax,4)
	jle	L1235
	movl	_waloff(,%eax,4), %edx
	testl	%edx, %edx
	jne	L1245
	call	_tileLoad
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %eax
	movl	%eax, __ZL12globalbufplc.lto_priv.0
	testl	%eax, %eax
	jne	L1259
	.p2align 4
	.p2align 3
L1235:
	subl	$1, 144(%esp)
	cmpl	$-1, 144(%esp)
	je	L1190
L1348:
	movl	_sprite, %edi
	movl	_tsprite, %esi
L1257:
	imull	$44, 144(%esp), %eax
	movswl	30(%esi,%eax), %edx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	leal	(%edi,%edx), %esi
	movl	%esi, 168(%esp)
	testb	$32, 12(%esi)
	je	L1235
	jmp	L1356
	.p2align 4,,10
	.p2align 3
L1345:
	movl	152(%esp), %eax
	jmp	L1229
L1233:
	sarl	164(%esp)
	jmp	L1228
L1258:
	imull	$200, _xdim, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_ydim, %eax
	leal	(%eax,%eax,4), %eax
	sall	$6, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%eax, %edx
	popl	%esi
	.cfi_restore 6
	movl	$65536, %eax
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	_renderSetAspect
L1245:
	.cfi_restore_state
	movl	%edx, __ZL12globalbufplc.lto_priv.0
L1259:
	movl	168(%esp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$1, 12(%eax)
	je	L1246
	movsbl	20(%eax), %eax
L1247:
	movl	168(%esp), %esi
	movsbl	16(%esi), %edx
	leal	6(%edx,%eax), %eax
	movswl	_numshades, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movzbl	17(%esi), %edx
	movl	108(%esp), %esi
	movl	%eax, _globalshade
	sall	$8, %eax
	addl	_palookup(,%edx,4), %eax
	movzbl	32(%esi), %edx
	movl	%eax, _asm3
	movl	_globalhisibility, %eax
	testb	%dl, %dl
	je	L1248
	addl	$16, %edx
	movzbl	%dl, %edx
/APP
 # 10723 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
L1248:
	movl	%eax, _globvis
	movl	168(%esp), %eax
	movl	200(%esp), %edx
	movl	176(%esp), %ebx
	movzwl	12(%eax), %esi
	movl	%edx, 92(%esp)
	subl	%ebx, %edx
	shrw	%si
	movl	%ebx, 148(%esp)
	movl	%esi, %eax
	movl	172(%esp), %esi
	andl	$1, %eax
	addl	$1, %eax
	movl	%esi, 164(%esp)
	movb	%al, __ZL14globalpolytype.lto_priv.0
	movl	196(%esp), %eax
	subl	%esi, %eax
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%esi, %ecx
	movl	%eax, %edi
	imull	%eax, %edx
	imull	%esi, %ecx
	movl	%edx, %eax
	addl	%ecx, %eax
	je	L1235
	movl	%eax, 4(%esp)
	movl	$1073741824, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	%edi, 88(%esp)
	movl	72(%esp), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	60(%esp), %edi
/APP
 # 10729 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10729 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalx1
	movl	148(%esp), %esi
	movl	%edi, %edx
	movl	88(%esp), %eax
	movl	72(%esp), %edi
	subl	92(%esp), %esi
/APP
 # 10730 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10730 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	180(%esp), %ecx
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	148(%esp), %eax
	subl	184(%esp), %eax
	movl	%ecx, 148(%esp)
	subl	164(%esp), %ecx
	movl	%eax, %ebx
	movl	%ecx, %esi
	movl	%eax, %ecx
	imull	%eax, %ecx
	movl	%esi, %edx
	imull	%esi, %edx
	movl	%ecx, %eax
	addl	%edx, %eax
	je	L1235
	movswl	80(%esp), %edx
	movl	%eax, 4(%esp)
	movl	$1073741824, (%esp)
	movl	%edx, 92(%esp)
	movswl	76(%esp), %edx
	movl	%edx, 88(%esp)
	movl	152(%esp), %edx
	addl	84(%esp), %edx
	movl	%edx, 76(%esp)
	call	_tabledivide32.lto_priv.1
	movl	%edi, 72(%esp)
	movl	%edi, %edx
	movl	60(%esp), %edi
	movl	%eax, %ecx
	movl	%ebx, 152(%esp)
	movl	%ebx, %eax
/APP
 # 10733 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10733 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	164(%esp), %esi
	movl	%edi, %edx
	movl	%eax, __ZL8globalx2.lto_priv.0
	movl	72(%esp), %edi
	movl	152(%esp), %eax
	subl	148(%esp), %esi
/APP
 # 10734 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10734 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	156(%esp), %esi
	movl	%eax, _globaly2
	movswl	_globalpicnum, %eax
	sarl	$4, %esi
	movl	__ZL8globaly1.lto_priv.0, %edi
	movzbl	_picsiz(%eax), %ecx
	movl	%ecx, %eax
	sarl	$4, %ecx
	movl	%ecx, 164(%esp)
	movl	%esi, %ecx
	movl	_ydim, %esi
	movl	%eax, %ebx
	andl	$15, %ebx
	sall	$7, %esi
	movl	%ebx, 152(%esp)
	movl	_xdim, %ebx
	movl	%esi, %edx
	movl	76(%esp), %esi
	sall	$7, %ebx
	sarl	$4, %esi
	movl	%ebx, 156(%esp)
	movl	%esi, %eax
	movl	%edx, %esi
	movl	_globalx1, %edx
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%ebx, %esi
	movl	%eax, 148(%esp)
	subl	%ecx, %esi
/APP
 # 10739 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %edx
	subl	156(%esp), %ecx
	movl	%eax, _globalposx
	movl	148(%esp), %esi
	movl	80(%esp), %edi
	movl	%ecx, %eax
/APP
 # 10740 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, _globalposy
	movl	168(%esp), %eax
	movzwl	12(%eax), %ebx
	testb	$2, %bl
	je	L1357
	movl	168(%esp), %eax
	xorl	%edx, %edx
	movzbl	19(%eax), %eax
	movl	_blendtable(,%eax,4), %esi
	testl	%esi, %esi
	cmove	%edx, %eax
	cmpl	%eax, _globalblend
	je	L1252
	movl	%eax, _globalblend
	movl	_blendtable(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_fixtransluscence
L1252:
	andb	$2, %bh
	je	L1253
	call	_settransreverse
L1254:
	movl	164(%esp), %eax
	movl	%eax, 4(%esp)
	movl	152(%esp), %eax
	movl	%eax, (%esp)
	call	_tsethlineshift
L1250:
	movl	168(%esp), %eax
	movl	_globalx1, %ebx
	movl	__ZL8globaly1.lto_priv.0, %ecx
	movl	_globalposx, %edx
	movzwl	12(%eax), %eax
	testb	$4, %al
	je	L1255
	negl	%ecx
	negl	%ebx
	negl	%edx
	movl	%ecx, __ZL8globaly1.lto_priv.0
L1255:
	sall	$22, %edx
	movl	__ZL8globalx2.lto_priv.0, %esi
	xorps	%xmm0, %xmm0
	sall	$2, %ecx
	cvtsi2ssl	%edx, %xmm0
	sall	$2, %ebx
	movl	92(%esp), %edi
	movl	%ecx, _asm1
	leal	0(,%esi,4), %ecx
	movl	152(%esp), %esi
	movl	%edx, _globalposx
	xorl	%edx, %edx
	movl	%ecx, _asm2
	movl	_globalposy, %ecx
	movl	%ebx, _globalx1
	sall	$22, %ecx
	sall	$2, _globaly2
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	%ecx, _globalposy
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
	cmpl	%edi, _pow2long.lto_priv.0(,%esi,4)
	jne	L1256
	movl	164(%esp), %esi
	xorl	%edx, %edx
	movl	88(%esp), %edi
	cmpl	%edi, _pow2long.lto_priv.0(,%esi,4)
	sete	%dl
L1256:
	movl	%edx, __ZL12globalispow2.lto_priv.0
	movl	%eax, %edx
	shrw	$2, %ax
	movl	92(%esp), %esi
	sall	$7, %edx
	andl	$128, %eax
	andl	$256, %edx
	movl	%esi, __ZL11globalxspan.lto_priv.0
	movl	88(%esp), %esi
	orl	%edx, %eax
	movl	%eax, _globalorientation
	movl	96(%esp), %eax
	movl	%esi, __ZL11globalyspan.lto_priv.0
	call	__ZL17renderFillPolygoni.lto_priv.0
	movl	$1, __ZL12globalispow2.lto_priv.0
	jmp	L1235
L1355:
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L1243
	movw	%dx, _globalpicnum
	movswl	%dx, %eax
	jmp	L1243
L1354:
	movl	%ecx, %edx
	movl	$4, %eax
	call	__ZL8clippolyii.lto_priv.0
	movl	%eax, 96(%esp)
	cmpl	$2, %eax
	jg	L1238
	jmp	L1235
L1246:
	movsbl	28(%eax), %eax
	jmp	L1247
L1351:
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	L1207
L1357:
	movl	164(%esp), %ecx
	movl	152(%esp), %ebx
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	_msethlineshift
	jmp	L1250
L1215:
	movl	_wall, %edx
	movl	56(%esp), %eax
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	movl	4(%eax), %ebx
	sall	$5, %ecx
	movl	%ebx, 148(%esp)
	addl	%ecx, %edx
	movl	4(%edx), %esi
	movl	(%edx), %ecx
	subl	(%eax), %ecx
	movl	%esi, 92(%esp)
	subl	%ebx, %esi
	movl	%ecx, %edx
	movl	%ecx, %edi
	movl	%esi, %eax
	imull	%ecx, %edx
	imull	%esi, %eax
	addl	%edx, %eax
/APP
 # 10581 "source/build/src/engine.cpp" 1
	testl $0xff000000, %eax
	movl %eax, %ebx
	jnz 0f
	shrl $12, %ebx
	movw _shlookup(,%ebx,2), %cx
	jmp 1f
	0:
	shrl $24, %ebx
	movw (_shlookup+8192)(,%ebx,2), %cx
	1:
	shrl %cl, %eax
	movb %ch, %cl
	movw _sqrtable(,%eax,2), %ax
	shrl %cl, %eax
 # 0 "" 2
/NO_APP
	testl	%eax, %eax
	je	L1204
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	$1048576, %eax
	movl	%edi, 164(%esp)
	idivl	%ecx
	movl	72(%esp), %edx
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	60(%esp), %edi
/APP
 # 10583 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10583 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	148(%esp), %ebx
	subl	92(%esp), %ebx
	movl	%eax, 156(%esp)
	movl	%edi, %edx
	movl	%eax, _globalx1
	movl	72(%esp), %edi
	movl	%ebx, %esi
	movl	164(%esp), %eax
/APP
 # 10584 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ecx, %edx
/APP
 # 10584 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $10, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
	movl	84(%esp), %ecx
	movl	%eax, __ZL8globaly1.lto_priv.0
	movl	%eax, %edi
	movl	_ydim, %esi
	movl	_xdim, %ebx
	addl	80(%esp), %ecx
	sarl	$4, %edx
	sall	$7, %esi
	sarl	$4, %ecx
	sall	$7, %ebx
	movl	%esi, 164(%esp)
	subl	%ecx, %esi
	subl	%edx, %ebx
	movl	%esi, %eax
	movl	156(%esp), %edx
	movl	%ebx, 148(%esp)
	movl	%ebx, %esi
/APP
 # 10586 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	164(%esp), %ecx
	movl	%eax, 92(%esp)
	movl	%eax, _globalposx
	movl	156(%esp), %edx
	movl	%ecx, %esi
	movl	148(%esp), %eax
/APP
 # 10587 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $28, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 164(%esp)
	movl	144(%esp), %esi
	movl	_sector, %eax
	movswl	26(%eax,%esi), %eax
	imull	%eax, %eax
	addl	$16777216, %eax
/APP
 # 10592 "source/build/src/engine.cpp" 1
	testl $0xff000000, %eax
	movl %eax, %ebx
	jnz 0f
	shrl $12, %ebx
	movw _shlookup(,%ebx,2), %cx
	jmp 1f
	0:
	shrl $24, %ebx
	movw (_shlookup+8192)(,%ebx,2), %cx
	1:
	shrl %cl, %eax
	movb %ch, %cl
	movw _sqrtable(,%eax,2), %ax
	shrl %cl, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %esi
	movl	164(%esp), %eax
	movl	%esi, %edx
/APP
 # 10593 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	xorps	%xmm0, %xmm0
	movl	%eax, _globalposy
	movl	%esi, %edx
	cvtsi2ssl	92(%esp), %xmm0
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	156(%esp), %eax
	negl	%eax
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_globalposz, %xmm0
	movss	%xmm0, _fglobalposz
/APP
 # 10594 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%edi, %eax
	movl	%esi, %edx
	negl	%eax
/APP
 # 10595 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	jmp	L1216
L1253:
	call	_settransnormal
	jmp	L1254
L1353:
	negl	%edx
	negl	156(%esp)
	negl	%eax
	movl	%edx, __ZL8globalx2.lto_priv.0
	jmp	L1219
L1352:
	call	_tileLoad
	movswl	_globalpicnum, %eax
	movl	_waloff(,%eax,4), %edx
	jmp	L1213
L1222:
	negl	%ecx
	sarl	%cl, %edx
	sarl	%cl, %eax
	jmp	L1223
L1220:
	movl	164(%esp), %ecx
	negl	%ecx
	sarl	%cl, %ebx
	xorl	%ecx, %ecx
	jmp	L1221
L1226:
	cmpl	$-1, 144(%esp)
	je	L1190
	xorl	%eax, %eax
	movl	%eax, 144(%esp)
	jmp	L1348
	.cfi_endproc
LFE165:
	.section .rdata,"dr"
LC59:
	.ascii "dragpoint %d: infloop!\0"
	.text
	.p2align 4
	.globl	_dragpoint
	.def	_dragpoint;	.scl	2;	.type	32;	.endef
_dragpoint:
LFB168:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	%edx, 48(%esp)
	movl	%ecx, 52(%esp)
	testb	$1, 88(%esp)
	je	L1407
L1359:
	movw	%di, __ZZ9dragpointE8yaxwalls
	movl	_wall, %esi
	movl	$1, %ebp
	xorl	%ebx, %ebx
	movw	%di, 64(%esp)
	movw	%di, 66(%esp)
	.p2align 4
	.p2align 3
L1374:
	movswl	64(%esp), %eax
	movl	$0, 32(%esp)
	movl	$16384, 36(%esp)
	movl	%eax, 56(%esp)
	movl	%eax, %edi
	movl	%ebx, 60(%esp)
L1360:
	movl	%edi, %eax
	movl	%edi, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	movl	48(%esp), %eax
	movl	%eax, (%esi,%ecx)
	movl	%ecx, %eax
	movl	_wall, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	52(%esp), %eax
	addl	%ecx, %edx
	movl	%eax, 4(%edx)
	movl	%edi, %edx
	movl	%edi, %eax
	andl	$7, %edx
	sarl	$3, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %esi
	movl	%esi, %edx
	orb	__ZL7tempbuf.lto_priv.3(%eax), %dl
	movb	%dl, __ZL7tempbuf.lto_priv.3(%eax)
	cmpl	$-1, %edi
	je	L1361
	movswl	%di, %eax
	movl	%edi, 20(%esp)
	movl	%eax, 28(%esp)
	movl	%edi, %eax
	movl	%ecx, 40(%esp)
	movl	%edi, 44(%esp)
	movl	$0, 24(%esp)
	jmp	L1364
	.p2align 4,,10
	.p2align 3
L1408:
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL7tempbuf.lto_priv.3(%edx), %edx
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %esi
L1364:
	movl	%edx, %edi
	movl	%esi, %ebx
	movw	%ax, 20(%esp)
	notl	%edi
	movl	%edi, %ecx
	testb	%bl, %cl
	je	L1362
	movl	%eax, %edi
	orl	%esi, %edx
	movw	%ax, __ZZ9dragpointE8yaxwalls(%ebp,%ebp)
	addl	$1, %ebp
	sarl	$3, %edi
	movb	%dl, __ZL7tempbuf.lto_priv.3(%edi)
L1362:
	movl	24(%esp), %ebx
	movswl	20(%esp), %eax
	movswl	%bx, %edx
	call	_yax_getnextwall
	movl	%eax, %edx
	cwtl
	cmpw	$-1, %dx
	jne	L1363
	testl	%ebx, %ebx
	jne	L1363
	movl	28(%esp), %eax
	call	_yax_getnextwall.constprop.0
	movl	$1, 24(%esp)
	cwtl
L1363:
	cmpl	$-1, %eax
	jne	L1408
	movl	40(%esp), %ecx
	movl	44(%esp), %edi
L1361:
	movl	36(%esp), %eax
	movl	32(%esp), %edx
	leal	-1(%eax), %ebx
	testl	%edx, %edx
	jne	L1409
	movl	_wall, %esi
	movswl	10(%esi,%ecx), %eax
	testw	%ax, %ax
	js	L1368
	testl	%ebx, %ebx
	je	L1405
	sall	$5, %eax
	movswl	8(%esi,%eax), %edi
	movl	%edi, %eax
	movl	%edi, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	__ZL7tempbuf.lto_priv.3(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%cl, %al
	movl	$1, %eax
	cmovne	32(%esp), %eax
	cmove	56(%esp), %edi
	movl	%eax, 32(%esp)
L1373:
	movl	%ebx, 36(%esp)
	jmp	L1360
	.p2align 4,,10
	.p2align 3
L1409:
	cmpl	$1, %eax
	je	L1405
	movl	_wall, %esi
	movswl	%di, %eax
L1370:
	call	_lastwall
	sall	$5, %eax
	movzwl	10(%esi,%eax), %eax
	testw	%ax, %ax
	js	L1372
	movswl	%ax, %edi
	andl	$7, %eax
	movl	%edi, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	sarl	$3, %edx
	movzbl	__ZL7tempbuf.lto_priv.3(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	je	L1372
	movl	$1, 32(%esp)
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1372:
	movl	60(%esp), %ebx
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	jge	L1371
	movzwl	__ZZ9dragpointE8yaxwalls(%ebx,%ebx), %eax
	movw	%ax, 64(%esp)
	jmp	L1374
	.p2align 4,,10
	.p2align 3
L1368:
	testl	%ebx, %ebx
	je	L1405
	movswl	64(%esp), %eax
	jmp	L1370
L1405:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movswl	66(%esp), %edi
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1410
L1371:
	cmpw	$0, _editstatus
	je	L1358
	movswl	_numwalls, %esi
	testw	%si, %si
	jle	L1358
	testb	$2, 88(%esp)
	jne	L1382
	movl	$1, %edx
	xorl	%eax, %eax
	jmp	L1378
L1411:
	movl	%eax, %edx
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
L1378:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	__ZL7tempbuf.lto_priv.3(%ecx), %ebx
	andl	%edx, %ebx
	cmpb	%dl, %bl
	jne	L1377
	orb	%dl, _editwall(%ecx)
L1377:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L1411
L1358:
	addl	$68, %esp
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
L1407:
	.cfi_restore_state
	movswl	_numwalls, %eax
	movl	$0, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.3, (%esp)
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 8(%esp)
	call	_memset
	jmp	L1359
L1382:
	movl	$1, %eax
	xorl	%ebx, %ebx
	jmp	L1376
L1412:
	movl	%ebx, %eax
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
L1376:
	movl	%ebx, %edx
	sarl	$3, %edx
	movzbl	__ZL7tempbuf.lto_priv.3(%edx), %ecx
	andl	%eax, %ecx
	cmpb	%al, %cl
	jne	L1379
	orb	%al, _editwall(%edx)
	movswl	%bx, %eax
	call	_lastwall
	movl	%eax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	orb	%al, _editwall(%edx)
L1379:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	jne	L1412
	addl	$68, %esp
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
L1410:
	.cfi_restore_state
	movl	%edi, 16(%esp)
	movl	$LC59, 12(%esp)
	movl	$13081, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1371
	.cfi_endproc
LFE168:
.lcomm __ZZ9dragpointE8yaxwalls,32768,32
.lcomm __ZZ6canseeE10sectbitmap,512,32
.lcomm _voxpal,768,32
.lcomm _maxvoxcol,1,1
.lcomm __ZZN7cache1d9ageBlocksEvE8agecount,4,4
.lcomm _omdtims,4,4
	.globl	_mdtims
	.bss
	.align 4
_mdtims:
	.space 4
.lcomm _benchmarkScreenshot,4,4
	.globl	__ZL8permhead.lto_priv.0
	.align 4
__ZL8permhead.lto_priv.0:
	.space 4
	.globl	_numpages
	.align 4
_numpages:
	.space 4
	.globl	__ZL8permfifo.lto_priv.0
	.align 32
__ZL8permfifo.lto_priv.0:
	.space 22528
	.globl	__ZL8permtail.lto_priv.0
	.align 4
__ZL8permtail.lto_priv.0:
	.space 4
	.globl	_glad_glDeleteBuffers
	.align 4
_glad_glDeleteBuffers:
	.space 4
	.globl	_nextTreeNodeIndex
	.data
	.align 4
_nextTreeNodeIndex:
	.long	61441
	.globl	_nodes
	.bss
	.align 32
_nodes:
	.space 2214216
	.globl	_heapNodes
	.align 4
_heapNodes:
	.space 4
	.globl	_rejectQueue
	.align 32
_rejectQueue:
	.space 1105920
	.globl	_rejectQueueHeadIndex
	.align 4
_rejectQueueHeadIndex:
	.space 4
	.globl	_numRejected
	.align 4
_numRejected:
	.space 4
	.globl	_tiles
	.align 32
_tiles:
	.space 614420
	.globl	__ZL23polymost1PalswapSizeLoc.lto_priv.0
	.data
	.align 4
__ZL23polymost1PalswapSizeLoc.lto_priv.0:
	.long	-1
	.globl	_glad_glUniform2f
	.bss
	.align 4
_glad_glUniform2f:
	.space 4
	.globl	__ZL25polymost1PalswapInnerSize.lto_priv.0
	.align 4
__ZL25polymost1PalswapInnerSize.lto_priv.0:
	.space 8
	.globl	__ZL20polymost1PalswapSize.lto_priv.0
	.align 4
__ZL20polymost1PalswapSize.lto_priv.0:
	.space 8
.lcomm __ZZ13uploadpalswapiE14blackPixels256,256,32
	.globl	_glad_glTexParameterf
	.align 4
_glad_glTexParameterf:
	.space 4
	.globl	__ZL16palswapTextureID.lto_priv.0
	.align 4
__ZL16palswapTextureID.lto_priv.0:
	.space 4
	.globl	_TEXCACHEFILE
	.data
	.align 32
_TEXCACHEFILE:
	.ascii "texturecache\0"
	.space 243
.lcomm __ZZN3mio9page_sizeEvE9page_size,4,4
.lcomm __ZGVZN3mio9page_sizeEvE9page_size,8,8
	.globl	_glad_glEnableClientState
	.bss
	.align 4
_glad_glEnableClientState:
	.space 4
	.globl	__ZL23polymost1GlowSamplerLoc.lto_priv.0
	.data
	.align 4
__ZL23polymost1GlowSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL25polymost1DetailSamplerLoc.lto_priv.0
	.align 4
__ZL25polymost1DetailSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0
	.align 4
__ZL26polymost1PaletteSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0
	.align 4
__ZL26polymost1PalSwapSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL22polymost1TexSamplerLoc.lto_priv.0
	.align 4
__ZL22polymost1TexSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL29polymost1BasicShaderProgramID.lto_priv.0
	.bss
	.align 4
__ZL29polymost1BasicShaderProgramID.lto_priv.0:
	.space 4
	.globl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0
	.align 4
__ZL32polymost1ExtendedShaderProgramID.lto_priv.0:
	.space 4
.lcomm __ZL11quadVertsID.lto_priv.1,4,4
	.globl	_glad_glTexSubImage2D
	.align 4
_glad_glTexSubImage2D:
	.space 4
	.globl	__ZL15tilesheetTexIDs.lto_priv.0
	.align 32
__ZL15tilesheetTexIDs.lto_priv.0:
	.space 256
.lcomm __ZZ15polymost_glinitvE13numTilesheets,4,4
	.globl	__ZL22tilesheetHalfTexelSize.lto_priv.0
	.align 4
__ZL22tilesheetHalfTexelSize.lto_priv.0:
	.space 8
	.globl	__ZL18tilesheetSizeRecip.lto_priv.0
	.align 4
__ZL18tilesheetSizeRecip.lto_priv.0:
	.space 4
.lcomm __ZL13tilesheetSize,4,4
	.globl	_glad_glBlendFunc
	.align 4
_glad_glBlendFunc:
	.space 4
	.globl	_glad_glFogi
	.align 4
_glad_glFogi:
	.space 4
	.globl	_glad_glHint
	.align 4
_glad_glHint:
	.space 4
	.globl	__ZL12voxfilenames.lto_priv.0
	.align 32
__ZL12voxfilenames.lto_priv.0:
	.space 8192
.lcomm _g_haveVoxels,1,1
	.globl	_curbrightness
	.align 4
_curbrightness:
	.space 4
	.globl	_g_lastpalettesum
	.align 8
_g_lastpalettesum:
	.space 8
	.globl	_g_displayindex
	.align 4
_g_displayindex:
	.space 4
	.globl	_glad_glUseProgram
	.align 4
_glad_glUseProgram:
	.space 4
	.globl	_glad_glActiveTexture
	.align 4
_glad_glActiveTexture:
	.space 4
	.globl	_g_glColorCorrection
	.data
	.align 4
_g_glColorCorrection:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.globl	_glad_glUniform4f
	.bss
	.align 4
_glad_glUniform4f:
	.space 4
	.globl	_glad_glUniform1i
	.align 4
_glad_glUniform1i:
	.space 4
	.globl	__ZL18colorCorrectionLoc.lto_priv.0
	.data
	.align 4
__ZL18colorCorrectionLoc.lto_priv.0:
	.long	-1
	.align 4
__ZL17paletteSamplerLoc:
	.long	-1
	.align 4
__ZL13texSamplerLoc:
	.long	-1
	.globl	_glad_glGetUniformLocation
	.bss
	.align 4
_glad_glGetUniformLocation:
	.space 4
	.globl	_glad_glDeleteShader
	.align 4
_glad_glDeleteShader:
	.space 4
	.globl	_glad_glDetachShader
	.align 4
_glad_glDetachShader:
	.space 4
	.globl	_glad_glLinkProgram
	.align 4
_glad_glLinkProgram:
	.space 4
	.globl	_glad_glBindAttribLocation
	.align 4
_glad_glBindAttribLocation:
	.space 4
	.globl	_glad_glAttachShader
	.align 4
_glad_glAttachShader:
	.space 4
	.globl	_glad_glCreateProgram
	.align 4
_glad_glCreateProgram:
	.space 4
	.globl	__ZL15shaderProgramID.lto_priv.0
	.align 4
__ZL15shaderProgramID.lto_priv.0:
	.space 4
	.globl	_glad_glIsProgram
	.align 4
_glad_glIsProgram:
	.space 4
	.globl	_curpalettefaded
	.align 32
_curpalettefaded:
	.space 1024
	.globl	_glad_glTexImage2D
	.align 4
_glad_glTexImage2D:
	.space 4
	.globl	_glad_glTexParameteri
	.align 4
_glad_glTexParameteri:
	.space 4
	.globl	_glad_glGenTextures
	.align 4
_glad_glGenTextures:
	.space 4
	.globl	__ZL11bufferTexID.lto_priv.0
	.align 4
__ZL11bufferTexID.lto_priv.0:
	.space 4
	.globl	_glad_glIsTexture
	.align 4
_glad_glIsTexture:
	.space 4
	.globl	_glad_glEnableVertexAttribArray
	.align 4
_glad_glEnableVertexAttribArray:
	.space 4
	.globl	_glad_glVertexAttribPointer
	.align 4
_glad_glVertexAttribPointer:
	.space 4
	.globl	_glad_glBufferData
	.align 4
_glad_glBufferData:
	.space 4
	.globl	_glad_glGenBuffers
	.align 4
_glad_glGenBuffers:
	.space 4
	.globl	__ZL11quadVertsID.lto_priv.0
	.align 4
__ZL11quadVertsID.lto_priv.0:
	.space 4
	.globl	_glad_glIsBuffer
	.align 4
_glad_glIsBuffer:
	.space 4
	.globl	__ZL9bufferRes.lto_priv.0
	.align 8
__ZL9bufferRes.lto_priv.0:
	.space 8
	.globl	_glad_glPixelStorei
	.align 4
_glad_glPixelStorei:
	.space 4
	.globl	__ZL6buffer.lto_priv.0
	.align 4
__ZL6buffer.lto_priv.0:
	.space 4
	.globl	__ZL18scanPosLookupTable.lto_priv.0
	.align 4
__ZL18scanPosLookupTable.lto_priv.0:
	.space 4
	.globl	__ZL11recXScale16.lto_priv.0
	.align 4
__ZL11recXScale16.lto_priv.0:
	.space 4
	.globl	__ZL8yScale16.lto_priv.0
	.align 4
__ZL8yScale16.lto_priv.0:
	.space 4
	.globl	__ZL8xScale16.lto_priv.0
	.align 4
__ZL8xScale16.lto_priv.0:
	.space 4
	.globl	__ZL13destBufferRes.lto_priv.0
	.align 8
__ZL13destBufferRes.lto_priv.0:
	.space 8
	.globl	__ZL9bufferRes.lto_priv.1
	.align 8
__ZL9bufferRes.lto_priv.1:
	.space 8
	.globl	__ZL6buffer.lto_priv.1
	.align 4
__ZL6buffer.lto_priv.1:
	.space 4
.lcomm __ZL7lookups,4,4
	.globl	_mirrorBuffer
	.align 4
_mirrorBuffer:
	.space 4
.lcomm __ZL8bakdmost,4,4
.lcomm __ZL8bakumost,4,4
	.data
	.align 32
__ZL7PADDING:
	.ascii "\200\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
.lcomm _g_loadedMapHack,28,4
	.globl	_guniqhudid
	.bss
	.align 4
_guniqhudid:
	.space 4
.lcomm __ZZ24calc_sector_reachabilityE9tablesize,4,4
.lcomm __ZZ24calc_sector_reachabilityE7sectcrc,2,2
	.globl	_ornament
	.align 32
_ornament:
	.space 262144
	.globl	__ZL16reachablesectors.lto_priv.0
	.align 4
__ZL16reachablesectors.lto_priv.0:
	.space 4
	.globl	_glad_glColorMask
	.align 4
_glad_glColorMask:
	.space 4
	.globl	_cursectormasks
	.align 4
_cursectormasks:
	.space 4
	.globl	_cursectormaskcount
	.align 4
_cursectormaskcount:
	.space 4
	.globl	_glad_glDepthMask
	.align 4
_glad_glDepthMask:
	.space 4
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1065353216
	.align 4
LC2:
	.long	-1082130432
	.align 16
LC3:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC4:
	.long	1056964608
	.align 16
LC11:
	.long	1732584193
	.long	-271733879
	.long	-1732584194
	.long	271733878
	.align 4
LC25:
	.long	947912704
	.align 4
LC26:
	.long	956301312
	.align 4
LC30:
	.long	998277249
	.align 4
LC37:
	.long	1199570944
	.align 4
LC38:
	.long	973078528
	.align 4
LC39:
	.long	1040121856
	.align 8
LC46:
	.long	-1
	.long	-1
	.align 4
LC51:
	.long	931135488
	.align 4
LC52:
	.long	1602224128
	.align 4
LC53:
	.long	1148846080
	.align 4
LC54:
	.long	1315859240
	.align 16
LC58:
	.long	1
	.long	2
	.long	3
	.long	0
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype;	.scl	2;	.type	32;	.endef
	.def	__ZL11sortspritesii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicDrawSpritei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20renderDrawMaskedWalls.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsprite;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_drawspritei;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_initspritelists;	.scl	2;	.type	32;	.endef
	.def	_mi_collect.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	_deletesprite;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_polymer_loadboard;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_ktell;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_md4block;	.scl	2;	.type	32;	.endef
	.def	__ZL6EncodePhPKjj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_update;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetVsync;	.scl	2;	.type	32;	.endef
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
	.def	_bsearch;	.scl	2;	.type	32;	.endef
	.def	_artClearMapArt.part.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_artSetupMapArt.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_updategrays;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_open;	.scl	2;	.type	32;	.endef
	.def	_write;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getnextwall.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_close;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__Z17glsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13compileShaderjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z19softsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Drawv;	.scl	2;	.type	32;	.endef
	.def	_videoShowFrame.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	_videoSetMode;	.scl	2;	.type	32;	.endef
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
	.def	__Z20uploadtextureindexedi4vec2IiES0_i;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
	.def	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
	.def	_texcache_init;	.scl	2;	.type	32;	.endef
	.def	_texcache_openfiles;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_texcache_invalidate;	.scl	2;	.type	32;	.endef
	.def	__Z18tilepacker_addTilejjj.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10kdtree_addjP8TreeNode.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15rejectQueue_addP8TreeNode.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18maxheap_bubbleDownj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11maxheap_popv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_voxvboalloc;	.scl	2;	.type	32;	.endef
	.def	_voxload;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V216generic_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_lintersect;	.scl	2;	.type	32;	.endef
	.def	_try_facespr_intersect;	.scl	2;	.type	32;	.endef
	.def	_renderSetAspect;	.scl	2;	.type	32;	.endef
	.def	__ZL8clippolyii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_setpalookupaddress;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	__ZL17calc_globalshiftsv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sethlinesizes;	.scl	2;	.type	32;	.endef
	.def	__ZL17renderFillPolygoni.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_fixtransluscence;	.scl	2;	.type	32;	.endef
	.def	_settransreverse;	.scl	2;	.type	32;	.endef
	.def	_tsethlineshift;	.scl	2;	.type	32;	.endef
	.def	_msethlineshift;	.scl	2;	.type	32;	.endef
	.def	_settransnormal;	.scl	2;	.type	32;	.endef
