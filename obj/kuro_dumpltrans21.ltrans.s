	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z16SpawnUnderSplashs
	.def	__Z16SpawnUnderSplashs;	.scl	2;	.type	32;	.endef
__Z16SpawnUnderSplashs:
LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z14DoVehicleSmokes
	.def	__Z14DoVehicleSmokes;	.scl	2;	.type	32;	.endef
__Z14DoVehicleSmokes:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %eax
	imull	$44, %eax, %ecx
	movl	_User(,%eax,4), %ebx
	addl	%ebp, %ecx
	leal	8(%ecx), %edx
	movswl	36(%ecx), %edi
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	subl	%edi, 8(%ecx)
	movl	152(%ebx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%edi, (%ecx)
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	156(%ebx), %ebx
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 4(%ecx)
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
	.globl	__Z12DoWaterSmokes
	.def	__Z12DoWaterSmokes;	.scl	2;	.type	32;	.endef
__Z12DoWaterSmokes:
LFB3:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	_sprite, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %ecx
	imull	$44, %ecx, %ecx
	addl	%eax, %ecx
	leal	8(%ecx), %edx
	movswl	36(%ecx), %ebx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	%ebx, 8(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z17SpriteQueueDeletes
	.def	__Z17SpriteQueueDeletes;	.scl	2;	.type	32;	.endef
__Z17SpriteQueueDeletes:
LFB4:
	.cfi_startproc
	movzwl	4(%esp), %edx
	movl	$_StarQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L9:
	cmpw	%dx, (%eax)
	jne	L8
	movl	$-1, %ecx
	movw	%cx, (%eax)
L8:
	addl	$2, %eax
	cmpl	$_StarQueue+64, %eax
	jne	L9
	movl	$_HoleQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L11:
	cmpw	%dx, (%eax)
	jne	L10
	movl	$-1, %ecx
	movw	%cx, (%eax)
L10:
	addl	$2, %eax
	cmpl	$_HoleQueue+128, %eax
	jne	L11
	movl	$_WallBloodQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L13:
	cmpw	%dx, (%eax)
	jne	L12
	movl	$-1, %ecx
	movw	%cx, (%eax)
L12:
	addl	$2, %eax
	cmpl	$_WallBloodQueue+64, %eax
	jne	L13
	movl	$_FloorBloodQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L15:
	cmpw	%dx, (%eax)
	jne	L14
	movl	$-1, %ecx
	movw	%cx, (%eax)
L14:
	addl	$2, %eax
	cmpl	$_FloorBloodQueue+64, %eax
	jne	L15
	movl	$_GenericQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L17:
	cmpw	%dx, (%eax)
	jne	L16
	movl	$-1, %ecx
	movw	%cx, (%eax)
L16:
	addl	$2, %eax
	cmpl	$_GenericQueue+64, %eax
	jne	L17
	movl	$_LoWangsQueue, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L19:
	cmpw	%dx, (%eax)
	jne	L18
	movl	$-1, %ecx
	movw	%cx, (%eax)
L18:
	addl	$2, %eax
	cmpl	$_LoWangsQueue+32, %eax
	jne	L19
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z12DoFloorBloods
	.def	__Z12DoFloorBloods;	.scl	2;	.type	32;	.endef
__Z12DoFloorBloods:
LFB5:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$40, %ecx
	movswl	24(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_sprite, %edi
	imull	$44, %eax, %ebx
	movl	%esi, 8(%esp)
	movl	_User(,%eax,4), %eax
	movl	%edi, (%esp)
	.cfi_offset 6, -16
	movl	140(%eax), %esi
	movl	$12, %eax
	addl	%edi, %ebx
	cmpw	$9995, 40(%ebx)
	cmove	%eax, %ecx
	movzbl	20(%ebx), %eax
	cmpb	$4, %al
	je	L28
	movzbl	%al, %edx
	cmpl	%ecx, %edx
	jl	L59
L28:
	movzbl	21(%ebx), %edx
	cmpl	%ecx, %edx
	jge	L29
	movzbl	%al, %edx
	cmpl	%ecx, %edx
	je	L30
	cmpb	$4, %al
	je	L45
	movl	$-1171354717, %eax
	leal	21(%ebx), %edx
	subl	(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	20(%ebx), %eax
	addb	$1, 21(%ebx)
L30:
	cmpb	$4, %al
	je	L45
	cmpb	$4, 21(%ebx)
	ja	L37
L45:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	xorl	%eax, %eax
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L29:
	.cfi_restore_state
	cmpb	$4, %al
	je	L45
L37:
	movl	_connecthead, %eax
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	je	L45
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	jmp	L36
	.p2align 4,,10
	.p2align 3
L32:
	movl	_connectpoint2(,%ecx,4), %eax
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	je	L60
L36:
	imull	$24124, %ecx, %edi
	movl	_Player(%edi), %edx
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	_Player+4(%edi), %edx
	subl	4(%esi), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	$299, %ebp
	jg	L32
	cmpw	$0, _Player+24078(%edi)
	jle	L33
	cmpl	$1, _FootMode
	je	L34
L33:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$12, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L35
	sall	$14, %eax
	movl	$-1610571775, %edi
	mull	%edi
	shrl	$26, %edx
	addl	$3, %edx
L35:
	imull	$24124, %ecx, %eax
	movl	$1, _FootMode
	movw	%dx, _Player+24078(%eax)
L34:
	cmpb	$40, 20(%ebx)
	jne	L32
	cmpb	$10, 21(%ebx)
	jbe	L32
	movl	(%esp), %ebp
	leal	21(%ebx), %edx
	movl	$-1171354717, %edi
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%ebx), %eax
	subl	$10, %eax
	movb	%al, 21(%ebx)
	cmpb	$10, %al
	ja	L32
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$4, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$4, 20(%ebx)
	movl	_connectpoint2(,%ecx,4), %eax
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	jne	L36
	.p2align 4
	.p2align 3
L60:
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L45
	.p2align 4,,10
	.p2align 3
L59:
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	20(%ebx), %eax
	addl	$1, %eax
	movb	%al, 20(%ebx)
	jmp	L28
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z11DoWallBloods
	.def	__Z11DoWallBloods;	.scl	2;	.type	32;	.endef
__Z11DoWallBloods:
LFB7:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	_sprite, %ebx
	imull	$44, %ecx, %ecx
	addl	%ebx, %ecx
	cmpb	$79, 21(%ecx)
	ja	L62
	leal	21(%ecx), %edx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	$-1171354717, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%ebx, %edx
	addb	$1, 21(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	$-128, 8(%ecx)
	movl	4(%esp), %esi
	.cfi_restore 6
L62:
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__Z9MapColorss9COLOR_MAPs;	.scl	3;	.type	32;	.endef
__Z9MapColorss9COLOR_MAPs:
LFB8:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	testw	%cx, %cx
	je	L65
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L66:
	movb	%al, __ZL7tempbuf(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf(%edx)
	cmpl	$256, %eax
	jne	L66
L65:
	testb	%bl, %bl
	je	L64
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
L68:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	movb	%cl, __ZL7tempbuf(%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L68
	movl	4(%esp), %esi
	.cfi_restore 6
L64:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4
	.globl	__Z19SpriteWarpToSurfaceP12spritetypev7
	.def	__Z19SpriteWarpToSurfaceP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z19SpriteWarpToSurfaceP12spritetypev7:
LFB10:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	40(%esp), %ebp
	movswl	24(%ebp), %eax
	movl	_SectUser(,%eax,4), %eax
	movzwl	22(%eax), %eax
	movw	%ax, 4(%esp)
	testw	%ax, %ax
	je	L77
	movswl	_headspritestat+100, %eax
	movl	%esi, 24(%esp)
	movl	%ebx, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_sprite, %esi
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	cmpw	$-1, %ax
	je	L78
	movl	_sector, %edi
	jmp	L79
	.p2align 6
	.p2align 4,,10
	.p2align 3
L80:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L81
L79:
	imull	$44, %eax, %ecx
	addl	%esi, %ecx
	movswl	24(%ecx), %edx
	leal	(%edx,%edx,4), %ebx
	testb	$1, 39(%edi,%ebx,8)
	je	L80
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L80
	movzwl	4(%esp), %ebx
	cmpw	22(%edx), %bx
	jne	L80
L81:
	cmpw	$0, 38(%ecx)
	je	L116
	movl	%ebp, %eax
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movswl	_headspritestat+98, %eax
	cmpw	$-1, %ax
	je	L117
	movl	%ecx, 12(%esp)
	jmp	L85
	.p2align 6
	.p2align 4,,10
	.p2align 3
L87:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L88
L85:
	imull	$44, %eax, %ebx
	addl	%esi, %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$-128, 38(%edi,%ecx,8)
	je	L87
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L87
	movzwl	4(%esp), %ecx
	cmpw	22(%edx), %cx
	jne	L87
L88:
	movl	12(%esp), %ecx
	movl	(%ebx), %edi
	movl	%ebp, %edx
	subl	%esi, %edx
	movl	4(%ecx), %eax
	subl	4(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	(%ecx), %eax
	subl	0(%ebp), %eax
	subl	%eax, %edi
	movl	%edx, %eax
	movl	%edi, 4(%esp)
	movl	$-1171354717, %edi
	movl	4(%esp), %esi
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	movl	%esi, 0(%ebp)
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	4(%ebx), %esi
	subl	12(%esp), %esi
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esp), %edx
	movl	%esi, 4(%ebp)
	movzwl	24(%ebx), %eax
	movw	%ax, 18(%esp)
	movzwl	24(%ecx), %eax
	leal	18(%esp), %ecx
	movw	%ax, 16(%esp)
	movl	0(%ebp), %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	movl	%ebp, %esi
	call	__Z16GetOverlapSectoriiPsS_
	movl	_sprite, %edi
	subl	%edi, %esi
	sarl	$2, %esi
	imull	$-1171354717, %esi, %esi
	movl	%esi, %ecx
	testl	%eax, %eax
	jne	L118
L93:
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	movswl	%cx, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	leal	8(%ebp), %edx
	movl	8(%eax), %ebx
	subl	%edi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	subl	$512, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, 8(%ebp)
	movl	%ecx, (%esp)
	call	__Z13DoActorZranges
	movl	%ebp, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z18MissileWaterAdjusts.isra.0
	movl	0(%ebp), %eax
	movl	8(%esp), %edi
	movl	%eax, 56(%edi)
	movl	4(%ebp), %eax
	movl	%eax, 60(%edi)
	movl	8(%ebp), %eax
	movl	%eax, 64(%edi)
	movl	$1, %eax
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L116:
	.cfi_restore_state
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
L77:
	movl	32(%esp), %ebp
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L118:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	18(%esp), %edx
	cmpw	$4096, %dx
	ja	L93
	movswl	%si, %esi
	imull	$44, %esi, %eax
	movzwl	24(%edi,%eax), %eax
	cmpw	$4096, %ax
	je	L93
	cmpw	%ax, %dx
	je	L93
	movl	%esi, %eax
	movl	%edx, 4(%esp)
	call	_do_deletespritesect
	movswl	4(%esp), %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %edi
	movl	%ebp, %ecx
	subl	%edi, %ecx
	sarl	$2, %ecx
	imulw	$-29789, %cx, %cx
	jmp	L93
L117:
	jmp	L113
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z19SpriteWarpToSurfaceP12spritetypev7.cold;	.scl	3;	.type	32;	.endef
__Z19SpriteWarpToSurfaceP12spritetypev7.cold:
LFSB10:
L78:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	38, %eax
	ud2
L113:
	movl	0, %eax
	ud2
	.cfi_endproc
LFE10:
	.text
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.p2align 4
	.globl	__Z11SpawnBubbles
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
__Z11SpawnBubbles:
LFB13:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	cmpb	$0, _Prediction
	jne	L121
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movswl	48(%esp), %esi
	movl	$_s_Bubble, %ecx
	movl	$716, %edx
	movl	%ebx, 28(%esp)
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	movl	$0, 20(%esp)
	movswl	28(%esi), %eax
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	addl	$1, _krandcount
	cwtl
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %edx
	movl	%eax, 24(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ebx
	movl	_sprite, %eax
	movzwl	%bx, %ebx
	leal	(%eax,%edx), %ecx
	leal	20(%edx), %eax
	movl	%ebx, _randomseed
	sarl	$8, %ebx
	mull	%ebp
	andl	$7, %ebx
	addl	$8, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_sector, %edx
	movb	%bl, 21(%ecx)
	movb	%bl, 20(%ecx)
	movl	%ebx, 248(%edi)
	movzbl	21(%ecx), %eax
	leal	16(%ecx), %ebx
	movl	$16777472, 96(%edi)
	subl	_sprite, %ebx
	movl	%eax, 252(%edi)
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzbl	28(%eax), %esi
	movl	%ebx, %eax
	mull	%ebp
	leal	-10(%esi), %eax
	movl	$14400, %esi
	movl	%edx, %ebx
	leal	36(%ecx), %edx
	subl	_sprite, %edx
	shrl	$5, %ebx
	addl	$1, _spritechanged(,%ebx,4)
	movb	%al, 16(%ecx)
	movl	%edx, %eax
	mull	%ebp
	movw	%si, 216(%edi)
	movl	$512, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 36(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$3, 18(%ecx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	orl	$1073741824, 68(%edi)
	addl	$1, _spritechanged(,%ebx,4)
	movb	$-60, 16(%ecx)
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L119:
	movl	24(%esp), %eax
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L121:
	.cfi_restore_state
	movl	$-1, 24(%esp)
	jmp	L119
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z17SpawnVehicleSmokes
	.def	__Z17SpawnVehicleSmokes;	.scl	2;	.type	32;	.endef
__Z17SpawnVehicleSmokes:
LFB15:
	.cfi_startproc
	cmpb	$0, _MoveSkip2
	je	L131
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L131:
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
	movl	_randomseed, %edx
	addl	$1, _krandcount
	movswl	52(%esp), %eax
	leal	(%edx,%edx,4), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	leal	1(%edx,%esi,4), %edx
	movl	8(%eax), %ecx
	movswl	28(%eax), %ebx
	movzwl	%dx, %esi
	andl	$2047, %edx
	movl	$0, 20(%esp)
	subl	%edx, %ecx
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	4(%eax), %edx
	movl	$_s_VehicleSmoke, %ecx
	movl	%esi, _randomseed
	movl	$-1171354717, %esi
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$1748, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %edi
	movl	$120, %eax
	movw	%ax, 216(%edi)
	leal	16(%edx), %eax
	leal	(%ebx,%edx), %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 20(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 21(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	_krandcount, %eax
	movl	%eax, 28(%esp)
	movl	_randomseed, %eax
	shrl	$5, %edx
	leal	(%eax,%eax,4), %esi
	addl	$1, _spritechanged(,%edx,4)
	leal	1(%eax,%esi,4), %esi
	orw	$128, 12(%ecx)
	movzwl	%si, %eax
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	andl	$512, %esi
	jne	L125
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L125:
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %esi
	movzwl	%si, %eax
	andl	$512, %esi
	jne	L126
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ecx)
L126:
	leal	(%eax,%eax,4), %edx
	movl	$-1171354717, %esi
	leal	1(%eax,%edx,4), %ebp
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebp, %eax
	movzwl	%bp, %ebp
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	movw	%ax, 28(%ecx)
	leal	0(%ebp,%ebp,4), %eax
	subl	%ebx, %edx
	leal	1(%ebp,%eax,4), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %ebp
	movl	%edx, %eax
	mull	%esi
	andl	$31, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movw	%bp, 32(%ecx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebp, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ecx), %eax
	movswl	32(%ecx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movl	28(%esp), %edi
	leal	5(%edi), %eax
	movl	%eax, _krandcount
	movzwl	24(%esp), %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	leal	36(%ecx), %edx
	movl	%edi, %eax
	subl	%ebx, %edx
	andl	$1023, %edi
	andl	$65535, %eax
	addl	$1024, %edi
	movl	%eax, _randomseed
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 36(%ecx)
	addl	$32, %esp
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
LFE15:
	.p2align 4
	.globl	__Z14SpawnSmokePuffs
	.def	__Z14SpawnSmokePuffs;	.scl	2;	.type	32;	.endef
__Z14SpawnSmokePuffs:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_randomseed, %edx
	addl	$1, _krandcount
	movswl	52(%esp), %eax
	leal	(%edx,%edx,4), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	leal	1(%edx,%esi,4), %edx
	movl	8(%eax), %ecx
	movswl	28(%eax), %ebx
	movzwl	%dx, %esi
	andl	$2047, %edx
	movl	$0, 20(%esp)
	subl	%edx, %ecx
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	4(%eax), %edx
	movl	$_s_WaterSmoke, %ecx
	movl	%esi, _randomseed
	movl	$-1171354717, %esi
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$1748, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %edi
	movl	$120, %eax
	movw	%ax, 216(%edi)
	leal	16(%edx), %eax
	leal	(%ebx,%edx), %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 20(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movb	$64, 21(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	_krandcount, %eax
	movl	%eax, 28(%esp)
	movl	_randomseed, %eax
	shrl	$5, %edx
	leal	(%eax,%eax,4), %esi
	addl	$1, _spritechanged(,%edx,4)
	leal	1(%eax,%esi,4), %esi
	orw	$128, 12(%ecx)
	movzwl	%si, %eax
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	andl	$512, %esi
	jne	L133
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L133:
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %esi
	movzwl	%si, %eax
	andl	$512, %esi
	jne	L134
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ecx)
L134:
	leal	(%eax,%eax,4), %edx
	movl	$-1171354717, %esi
	leal	1(%eax,%edx,4), %ebp
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebp, %eax
	movzwl	%bp, %ebp
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	movw	%ax, 28(%ecx)
	leal	0(%ebp,%ebp,4), %eax
	subl	%ebx, %edx
	leal	1(%ebp,%eax,4), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %ebp
	movl	%edx, %eax
	mull	%esi
	andl	$31, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	movw	%bp, 32(%ecx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebp, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ecx), %eax
	movswl	32(%ecx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movl	28(%esp), %edi
	leal	5(%edi), %eax
	movl	%eax, _krandcount
	movzwl	24(%esp), %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	leal	36(%ecx), %edx
	movl	%edi, %eax
	subl	%ebx, %edx
	andl	$511, %edi
	andl	$65535, %eax
	addl	$256, %edi
	movl	%eax, _randomseed
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 36(%ecx)
	addl	$32, %esp
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
LFE16:
	.p2align 4
	.globl	__Z11SpawnSplashs
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
__Z11SpawnSplashs:
LFB17:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L150
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
	movswl	52(%esp), %esi
	movl	_User(,%esi,4), %ebp
	movl	140(%ebp), %ebx
	movswl	24(%ebx), %eax
	movl	_SectUser(,%eax,4), %ecx
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	movl	%ecx, 28(%esp)
	leal	(%eax,%edx,8), %edi
	testl	%ecx, %ecx
	je	L138
	testb	$12, 39(%edi)
	je	L137
	testb	$1, 14(%edi)
	jne	L137
L138:
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$196, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	movl	%esi, %eax
	call	__Z18MissileWaterAdjusts.isra.0
	movl	$_s_Splash, %ecx
	movl	$772, %edx
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	108(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movl	28(%esp), %ebp
	cwtl
	imull	$44, %eax, %ecx
	addl	%esi, %ecx
	testl	%ebp, %ebp
	je	L139
	movzwl	38(%edi), %edx
	andw	$3072, %dx
	cmpw	$1024, %dx
	je	L153
L139:
	leal	20(%ecx), %edx
	movl	$-1171354717, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$45, 20(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_sector, %edx
	movb	$42, 21(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movzbl	28(%eax), %ebx
	movl	%edx, %eax
	mull	%edi
	subl	$10, %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 16(%ecx)
L137:
	addl	$32, %esp
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
L150:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L153:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	17(%ecx), %edx
	movl	_User(,%eax,4), %edi
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$14, 17(%ecx)
	movb	$14, 262(%edi)
	jmp	L139
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z12DoZillaStomps
	.def	__Z12DoZillaStomps;	.scl	2;	.type	32;	.endef
__Z12DoZillaStomps:
LFB18:
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
	movl	$615, %eax
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
LFE18:
	.p2align 4
	.globl	__Z18MissileHitDiveAreas
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
__Z18MissileHitDiveAreas:
LFB19:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movswl	28(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	_sector, %esi
	movl	_User(,%eax,4), %edx
	movl	140(%edx), %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %ecx
	cmpw	$2356, 16(%ecx)
	je	L157
	cmpw	$2356, 24(%ecx)
	je	L157
L158:
	movl	264(%edx), %eax
	testl	%eax, %eax
	je	L162
	movl	%eax, %ecx
	andl	$114688, %ecx
	cmpl	$16384, %ecx
	je	L172
L162:
	xorl	%esi, %esi
L156:
	movl	%esi, %eax
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L157:
	.cfi_restore_state
	movl	%edi, 20(%esp)
	movl	68(%edx), %eax
	.cfi_offset 7, -8
	movl	%eax, %edi
	orl	$1073741824, %eax
	andl	$-1073741825, %edi
	testb	$3, 39(%ecx)
	cmove	%edi, %eax
	movl	%eax, 68(%edx)
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L158
	.p2align 4,,10
	.p2align 3
L172:
	movswl	24(%ebx), %ecx
	leal	(%ecx,%ecx,4), %ecx
	movzwl	38(%esi,%ecx,8), %ecx
	testb	$-128, %cl
	je	L163
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	108(%edx), %ecx
	movl	8(%ebx), %edi
	addl	104(%edx), %ecx
	sarl	%ecx
	cmpl	%edi, %ecx
	jg	L171
	andl	$4095, %eax
	leal	(%eax,%eax,4), %eax
	movl	8(%esi,%eax,8), %eax
	subl	$5120, %eax
	cmpl	%edi, %eax
	jle	L173
L171:
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L162
	.p2align 4,,10
	.p2align 3
L163:
	andb	$3, %ch
	je	L162
	movl	108(%edx), %eax
	addl	104(%edx), %eax
	sarl	%eax
	cmpl	8(%ebx), %eax
	jl	L162
	andl	$-1073741825, 68(%edx)
	movl	%ebx, (%esp)
	movl	%edx, 8(%esp)
	call	__Z19SpriteWarpToSurfaceP12spritetypev7
	movl	%eax, %esi
	testb	%al, %al
	je	L156
	subl	_sprite, %ebx
	sarl	$2, %ebx
	imull	$-1171354717, %ebx, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z11SpawnSplashs
	movl	8(%esp), %edx
	movl	$0, 264(%edx)
	jmp	L156
	.p2align 4,,10
	.p2align 3
L173:
	.cfi_offset 7, -8
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%edx, 8(%esp)
	leal	8(%ebx), %edi
	sarl	$2, %eax
	orl	$1073741824, 68(%edx)
	movl	$-1171354717, %esi
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z11SpawnSplashs
	movl	%ebx, (%esp)
	call	__Z22SpriteWarpToUnderwaterP12spritetypev7
	movl	8(%esp), %edx
	leal	4(%ebx), %ecx
	movl	$0, 264(%edx)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$52, %eax
	movl	$1, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L156
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z8DoBubbles
	.def	__Z8DoBubbles;	.scl	2;	.type	32;	.endef
__Z8DoBubbles:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_sprite, %eax
	imull	$44, %esi, %ecx
	movl	%eax, 12(%esp)
	movl	%esi, 4(%esp)
	movl	_User(,%esi,4), %esi
	addl	%eax, %ecx
	leal	8(%ecx), %edx
	movswl	36(%ecx), %ebx
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	12(%esp), %edx
	movl	%edx, %eax
	subl	%ebx, 8(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	36(%ecx), %eax
	addl	$32, %eax
	movw	%ax, 36(%ecx)
	cmpw	$768, %ax
	jle	L175
	movl	$768, %ebx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 36(%ecx)
L175:
	movl	248(%esi), %eax
	leal	1(%eax), %ebx
	movl	%ebx, 248(%esi)
	cmpl	$32, %ebx
	jg	L176
	addl	$1, 252(%esi)
L177:
	movl	_randomseed, %eax
	addl	$2, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	leal	20(%ecx), %edx
	subl	12(%esp), %edx
	movzwl	%di, %eax
	movl	%eax, 8(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	%edi, %eax
	movzbl	%ah, %edi
	andl	$7, %edi
	leal	-4(%ebx,%edi), %eax
	movl	8(%esp), %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	12(%esp), %edx
	movb	%al, 20(%ecx)
	leal	(%ebx,%ebx,4), %eax
	movl	252(%esi), %edi
	leal	1(%ebx,%eax,4), %ebx
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	%bx, %ebx
	movl	%ebx, _randomseed
	sarl	$8, %ebx
	andl	$7, %ebx
	leal	-4(%edi,%ebx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_sector, %edx
	movb	%al, 21(%ecx)
	movswl	24(%ecx), %eax
	movl	8(%ecx), %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	cmpl	%edi, 4(%eax)
	jle	L178
	movl	116(%esi), %eax
	testb	$3, 39(%eax)
	je	L179
	movl	%ecx, (%esp)
	call	__Z19SpriteWarpToSurfaceP12spritetypev7
	testb	%al, %al
	je	L179
	movl	_randomseed, %eax
	andl	$-1073741825, 68(%esi)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$63, %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L187
L179:
	movl	4(%esp), %eax
	call	__Z10KillSprites
	addl	$16, %esp
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
L176:
	.cfi_restore_state
	movl	$32, %eax
	movl	$32, %ebx
	movl	%eax, 248(%esi)
	movl	%eax, 252(%esi)
	jmp	L177
	.p2align 4,,10
	.p2align 3
L178:
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L179
L187:
	addl	$16, %esp
	xorl	%eax, %eax
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
LFE20:
	.p2align 4
	.globl	__Z15QueueFloorBloods
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
__Z15QueueFloorBloods:
LFB21:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %ecx
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	imull	$44, %ecx, %esi
	addl	_sprite, %esi
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %eax
	sall	$3, %eax
	addl	_sector, %eax
	movzwl	38(%eax), %eax
	testb	$9, %al
	jne	L191
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	_User(,%ecx,4), %ebx
	movl	%ebx, 24(%esp)
	testb	$64, 71(%ebx)
	jne	L202
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	andw	$5056, %di
	jne	L204
	andw	$3072, %ax
	subw	$1024, %ax
	testw	$-2048, %ax
	je	L204
	movswl	_FloorBloodQueueHead, %eax
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movswl	_FloorBloodQueue(%eax,%eax), %eax
	cmpw	$-1, %ax
	jne	L205
L192:
	movl	$0, 20(%esp)
	movswl	28(%esi), %eax
	movl	$_s_FloorBlood1, %ecx
	movl	$-1171354717, %ebx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%edx, (%esp)
	movl	$389, %edx
	movl	%eax, 4(%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	_FloorBloodQueueHead, %ecx
	movl	_sprite, %ebp
	movl	%eax, %edx
	movl	%ecx, %eax
	movw	%dx, _FloorBloodQueue(%ecx,%ecx)
	addl	$1, %eax
	andl	$31, %eax
	movw	%ax, _FloorBloodQueueHead
	movswl	%dx, %eax
	movl	%eax, 36(%esp)
	imull	$44, %eax, %eax
	leal	0(%ebp,%eax), %ecx
	addl	$30, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%ebp, %edx
	movw	%ax, 30(%ecx)
	movl	%edx, %eax
	mull	%ebx
	movl	24(%esp), %eax
	shrl	$5, %edx
	cmpw	$1670, 82(%eax)
	movl	$9995, %eax
	cmove	%eax, %edi
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	movw	%di, 40(%ecx)
	leal	16(%ecx), %edi
	mull	%ebx
	movl	%edi, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebp, %edx
	movb	$8, 21(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ecx), %edx
	subl	%ebp, %edx
	movb	$8, 20(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ecx), %edx
	subl	%ebp, %edx
	movb	$0, 23(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%ebp, %edx
	movb	$0, 22(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%ebp, %edx
	movb	$0, 18(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ecx)
	movl	%edi, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%ebp, %edx
	movb	$0, 16(%ecx)
	movl	%edx, %eax
	mull	%ebx
	leal	12(%ecx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	xorl	%edi, %edi
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ebp, %edx
	movb	$0, 17(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	movw	%di, 12(%ecx)
	movl	(%esi), %eax
	movl	%eax, (%ecx)
	movl	4(%esi), %eax
	addl	$1, _krandcount
	movl	%eax, 4(%ecx)
	movl	8(%esi), %edi
	movl	_sprite, %esi
	addl	$256, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	movl	%edi, 8(%ecx)
	leal	1(%eax,%edx,4), %edi
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movzwl	%di, %eax
	andl	$2047, %edi
	movl	%eax, _randomseed
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movw	%di, 28(%ecx)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	subb	$5, 16(%ecx)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %esi
	orw	$32, 12(%ecx)
	movl	36(%esp), %eax
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	andl	$2147483647, 68(%esi)
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L205:
	.cfi_restore_state
	call	__Z10KillSprites
	movswl	24(%esi), %edx
	jmp	L192
	.p2align 4,,10
	.p2align 3
L204:
	.cfi_restore 5
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %edi
	.cfi_restore 7
L191:
	movl	44(%esp), %esi
	movl	$-1, %eax
	addl	$56, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L202:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	40(%esp), %ebx
	.cfi_restore 3
	jmp	L191
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	_miniz_def_free_func
	.def	_miniz_def_free_func;	.scl	2;	.type	32;	.endef
_miniz_def_free_func:
LFB22:
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
LFE22:
	.p2align 4
	.def	__Z12QueueGenericss.isra.0;	.scl	3;	.type	32;	.endef
__Z12QueueGenericss.isra.0:
LFB24:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %ecx
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	imull	$44, %ebp, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_sector, %esi
	movw	%dx, 6(%esp)
	leal	(%ecx,%ebx), %eax
	movswl	24(%eax), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%esi,%edx,8), %edx
	movzwl	38(%edx), %esi
	movl	%esi, %edx
	andw	$3072, %dx
	subw	$1024, %dx
	testw	$-2048, %dx
	je	L210
	testw	$4160, %si
	jne	L210
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movzbl	20(%eax), %edx
	movzwl	6(%esp), %esi
	movswl	_GenericQueueHead, %edi
	movb	%dl, 6(%esp)
	movzbl	21(%eax), %edx
	movw	%si, 10(%esp)
	movl	%ebp, %esi
	movb	%dl, 9(%esp)
	movswl	_GenericQueue(%edi,%edi), %edx
	cmpw	$-1, %dx
	jne	L211
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L212
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$0, _User(,%ebp,4)
L212:
	movl	%ebp, %eax
	movl	$37, %edx
	call	__Z18change_sprite_statss
	movswl	_GenericQueueHead, %eax
	movw	%si, _GenericQueue(%eax,%eax)
	jmp	L213
	.p2align 4,,10
	.p2align 3
L211:
	imull	$44, %edx, %edx
	addl	%edx, %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ecx)
	movl	8(%eax), %edx
	movl	%edx, 8(%ecx)
	movzwl	24(%eax), %ebx
	cmpw	$4096, %bx
	ja	L214
	movswl	_GenericQueue(%edi,%edi), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L214
	cmpw	%ax, %bx
	je	L214
	movl	%esi, %eax
	call	_do_deletespritesect
	movswl	%bx, %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
L214:
	movl	%ebp, %eax
	call	__Z10KillSprites
	movswl	_GenericQueueHead, %eax
	movswl	_GenericQueue(%eax,%eax), %ebp
	imull	$44, %ebp, %ebx
L213:
	movl	_sprite, %ecx
	leal	14(%ebx), %eax
	leal	(%ecx,%ebx), %esi
	movl	$-1171354717, %ebx
	mull	%ebx
	movzwl	10(%esp), %eax
	leal	12(%esi), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movw	%ax, 14(%esi)
	movl	%edx, %eax
	mull	%ebx
	movzbl	6(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movb	%al, 20(%esi)
	movl	%edx, %eax
	mull	%ebx
	movzbl	9(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	movb	%al, 21(%esi)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	leal	42(%esi), %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%esi)
	movzwl	14(%esi), %eax
	cmpw	$932, %ax
	jg	L215
	cmpw	$929, %ax
	jg	L216
	cmpw	$902, %ax
	jle	L224
	subw	$915, %ax
	cmpw	$2, %ax
	ja	L218
L216:
	movl	%ebp, %eax
	xorl	%edx, %edx
	movl	$-1171354717, %ebp
	call	__Z18change_sprite_statss
	movl	_sprite, %ecx
	subl	%ecx, %edi
	subl	%ecx, %ebx
	movl	%edi, %eax
	mull	%ebp
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	orw	$16640, 12(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%esi), %eax
	orb	$32, %ah
	jmp	L219
	.p2align 4,,10
	.p2align 3
L210:
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	movl	%ebp, %eax
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z10KillSprites
	.p2align 4,,10
	.p2align 3
L215:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$1670, %ax
	je	L216
L218:
	movl	$-1171354717, %eax
	subl	%ecx, %ebx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	andw	$-16641, 12(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%esi), %eax
	andb	$-33, %ah
L219:
	movw	%ax, 42(%esi)
	movzwl	_GenericQueueHead, %eax
	movl	20(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	12(%esp), %ebx
	addl	$1, %eax
	movl	16(%esp), %esi
	movl	24(%esp), %ebp
	andl	$31, %eax
	movw	%ax, _GenericQueueHead
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L224:
	.cfi_restore_state
	cmpw	$899, %ax
	jle	L218
	jmp	L216
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z10SpawnShellss
	.def	__Z10SpawnShellss;	.scl	2;	.type	32;	.endef
__Z10SpawnShellss:
LFB25:
	.cfi_startproc
	movswl	4(%esp), %eax
	movswl	8(%esp), %edx
	call	__Z9InitShellss.isra.0
	movl	$1, %eax
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z9DoItemFlys
	.def	__Z9DoItemFlys;	.scl	2;	.type	32;	.endef
__Z9DoItemFlys:
LFB26:
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
	movswl	8(%ebp), %esi
	movl	_sprite, %eax
	movl	_User(,%esi,4), %ebx
	movl	%eax, 20(%esp)
	movzwl	176(%ebx), %eax
	movl	152(%ebx), %edi
	movw	%ax, 26(%esp)
	movl	160(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	156(%ebx), %eax
	movl	%eax, 32(%esp)
	testb	$64, 71(%ebx)
	jne	L241
	movzwl	26(%esp), %edx
	addl	$120, %edx
	movswl	%dx, %eax
	addl	28(%esp), %eax
L228:
	movw	%dx, 176(%ebx)
	movl	32(%esp), %ecx
	movl	%eax, 160(%ebx)
	movl	$12, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %edx
	movl	%edx, 8(%esp)
	movswl	96(%ebx), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L229
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$32768, %edx
	je	L230
	cmpl	$49152, %edx
	je	L231
	cmpl	$16384, %edx
	je	L232
	.p2align 4
	.p2align 3
L229:
	movl	$1, %eax
L226:
	addl	$36, %esp
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
L241:
	.cfi_restore_state
	movl	%edi, %eax
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 152(%ebx)
	movl	%eax, %edi
	movl	32(%esp), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 32(%esp)
	movl	%eax, 156(%ebx)
	movl	28(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzwl	26(%esp), %edx
	movl	%eax, 28(%esp)
	addl	$40, %edx
	movswl	%dx, %eax
	addl	28(%esp), %eax
	jmp	L228
	.p2align 4,,10
	.p2align 3
L232:
	imull	$44, %esi, %ecx
	movl	20(%esp), %eax
	movl	108(%ebx), %edi
	addl	%eax, %ecx
	movl	104(%ebx), %eax
	addl	%edi, %eax
	sarl	%eax
	cmpl	8(%ecx), %eax
	jge	L235
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %esi
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	_sprite, %edx
	movl	%edi, 8(%ecx)
	movw	%ax, 176(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 32(%ecx)
	movl	$0, 152(%ebx)
	movl	$0, 156(%ebx)
	movl	$0, 160(%ebx)
	jmp	L226
	.p2align 4,,10
	.p2align 3
L230:
	movl	_wall, %ecx
	andl	$16383, %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
L240:
	andl	$2047, %edx
	movl	%esi, %eax
	call	__Z10WallBouncess
	movl	_User(,%esi,4), %ecx
	movl	$32000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L231:
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	testb	$16, 12(%eax)
	jne	L242
	negl	152(%ebx)
	negl	156(%ebx)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L235:
	negl	160(%ebx)
	movl	_User(,%esi,4), %ecx
	movl	$22000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$22000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$22000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	jmp	L229
	.p2align 4,,10
	.p2align 3
L242:
	movzwl	28(%eax), %edx
	jmp	L240
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z15ShrapKillSprites
	.def	__Z15ShrapKillSprites;	.scl	2;	.type	32;	.endef
__Z15ShrapKillSprites:
LFB28:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_sprite, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_krandcount, %ebp
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movswl	40(%esp), %ebx
	leal	1(%ebp), %eax
	movl	%esi, 24(%esp)
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	movl	_User(,%ebx,4), %edx
	.cfi_offset 6, -16
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	movzwl	82(%edx), %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L244
	imull	$44, %ebx, %esi
	addl	%ecx, %esi
	cmpw	$1670, %dx
	je	L245
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	sall	$14, %edi
	cmpw	$1670, %dx
	jg	L246
	cmpw	$918, %dx
	je	L247
	cmpw	$933, %dx
	je	L248
	cmpw	$903, %dx
	jne	L322
	leal	(%eax,%eax,4), %edx
	addl	$2, %ebp
	leal	1(%eax,%edx,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	jne	L323
L322:
	movl	28(%esp), %edi
	.cfi_restore 7
L250:
	movl	%ebx, %eax
	call	__Z10KillSprites
L314:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L246:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$2152, %dx
	je	L251
	cmpw	$2180, %dx
	jne	L322
	cmpl	$717215039, %edi
	ja	L324
	cmpl	$359656079, %edi
	jbe	L260
	movl	$2183, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L244:
	cmpw	$1670, %dx
	je	L275
	jg	L276
	cmpw	$918, %dx
	je	L275
	cmpw	$933, %dx
	je	L275
	cmpw	$903, %dx
	jne	L250
L275:
	movl	$65516, _randomseed
	addl	$2, %ebp
	movl	%ebp, _krandcount
	jmp	L250
	.p2align 4,,10
	.p2align 3
L276:
	cmpw	$2152, %dx
	je	L280
	cmpw	$2180, %dx
	jne	L250
L281:
	movl	$2181, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	jmp	L314
	.p2align 4,,10
	.p2align 3
L251:
	.cfi_offset 7, -12
	cmpl	$896518799, %edi
	ja	L325
	cmpl	$718263599, %edi
	ja	L326
	cmpl	$540008399, %edi
	ja	L327
	cmpl	$361753199, %edi
	ja	L328
	cmpl	$183497999, %edi
	jbe	L258
	movl	$2156, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L248:
	.cfi_restore_state
	leal	(%eax,%eax,4), %edx
	addl	$2, %ebp
	leal	1(%eax,%edx,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L322
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L322
	movswl	14(%esi), %edx
	movzbl	20(%esi), %eax
	movswl	_tilesiz(,%edx,4), %ebp
	movzbl	%al, %edx
	imull	%ebp, %edx
	sarl	$6, %edx
	cmpb	$64, %al
	movl	$-1171354717, %eax
	cmovne	%edx, %ebp
	leal	18(%esi), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%esi)
	movl	%ebx, %eax
	call	__Z16SpawnFloorSplashs
	cmpl	$717215039, %edi
	ja	L329
	cmpl	$359656079, %edi
	jbe	L273
	movl	$931, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L323:
	.cfi_restore_state
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L322
	movswl	14(%esi), %edx
	movzbl	20(%esi), %eax
	movswl	_tilesiz(,%edx,4), %ebp
	movzbl	%al, %edx
	imull	%ebp, %edx
	sarl	$6, %edx
	cmpb	$64, %al
	movl	$-1171354717, %eax
	cmovne	%edx, %ebp
	leal	18(%esi), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%esi)
	movl	%ebx, %eax
	call	__Z16SpawnFloorSplashs
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%esi, %edx
	subl	_sprite, %edx
	movzwl	%ax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	leal	4(%esi), %eax
	movl	%ecx, _randomseed
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	movl	%edx, 16(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	%edx, %ebp
	shrl	$5, %ebp
	movl	%ebp, 12(%esp)
	leal	8(%esi), %ebp
	movl	%ebp, %eax
	subl	_sprite, %eax
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L262
	sall	$14, %ecx
	cmpl	$536862499, %ecx
	ja	L262
	movl	12(%esp), %ecx
	movl	%esi, %edx
	movl	$395, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	16(%esp), %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	8(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L263:
	cmpl	$717215039, %edi
	ja	L330
	cmpl	$359656079, %edi
	jbe	L265
	movl	$901, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L247:
	.cfi_restore_state
	leal	(%eax,%eax,4), %edx
	addl	$2, %ebp
	leal	1(%eax,%edx,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L322
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L322
	movswl	14(%esi), %edx
	movzbl	20(%esi), %eax
	movswl	_tilesiz(,%edx,4), %ebp
	movzbl	%al, %edx
	imull	%ebp, %edx
	sarl	$6, %edx
	cmpb	$64, %al
	movl	$-1171354717, %eax
	cmovne	%edx, %ebp
	leal	18(%esi), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%esi)
	movl	%ebx, %eax
	call	__Z16SpawnFloorSplashs
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%esi, %edx
	subl	_sprite, %edx
	movzwl	%ax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	leal	4(%esi), %eax
	movl	%ecx, _randomseed
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	%edx, %ebp
	shrl	$5, %ebp
	movl	%ebp, 16(%esp)
	leal	8(%esi), %ebp
	movl	%ebp, %eax
	subl	_sprite, %eax
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$65535, %ecx
	je	L267
	sall	$14, %ecx
	cmpl	$536862499, %ecx
	ja	L267
	movl	16(%esp), %ecx
	movl	%esi, %edx
	movl	$395, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	12(%esp), %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	8(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L268:
	cmpl	$717215039, %edi
	ja	L331
	cmpl	$359656079, %edi
	jbe	L270
	movl	$916, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L245:
	leal	(%eax,%eax,4), %edx
	addl	$2, %ebp
	leal	1(%eax,%edx,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L250
	sall	$14, %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	cmpl	$537936224, %eax
	ja	L322
	movswl	14(%esi), %edx
	movzbl	20(%esi), %eax
	movswl	_tilesiz(,%edx,4), %edi
	movzbl	%al, %edx
	imull	%edi, %edx
	sarl	$6, %edx
	cmpb	$64, %al
	movl	$-1171354717, %eax
	cmovne	%edx, %edi
	leal	18(%esi), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%esi)
	movl	%ebx, (%esp)
	call	__Z15QueueFloorBloods
	movl	$1670, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L260:
	.cfi_restore_state
	movl	$2187, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L262:
	.cfi_restore_state
	movl	12(%esp), %eax
	movl	8(%esp), %ecx
	movl	%esi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	16(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$396, %eax
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L263
	.p2align 4,,10
	.p2align 3
L327:
	movl	$2154, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L325:
	.cfi_restore_state
	movl	28(%esp), %edi
	.cfi_restore 7
	.p2align 4
	.p2align 3
L280:
	movl	$2152, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	jmp	L314
	.p2align 4,,10
	.p2align 3
L267:
	.cfi_offset 7, -12
	movl	16(%esp), %eax
	movl	8(%esp), %ecx
	movl	%esi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	12(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$396, %eax
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L268
	.p2align 4,,10
	.p2align 3
L326:
	movl	$2153, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L273:
	.cfi_restore_state
	movl	$932, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L270:
	.cfi_restore_state
	movl	$917, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L265:
	.cfi_restore_state
	movl	$902, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L330:
	.cfi_restore_state
	movl	$900, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L329:
	.cfi_restore_state
	movl	$930, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L331:
	.cfi_restore_state
	movl	$915, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L258:
	.cfi_restore_state
	movl	$2157, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L328:
	.cfi_restore_state
	movl	$2155, %edx
	movl	%ebx, %eax
	call	__Z12QueueGenericss.isra.0
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L314
	.p2align 4,,10
	.p2align 3
L324:
	.cfi_restore_state
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L281
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z15DoShrapVelocitys
	.def	__Z15DoShrapVelocitys;	.scl	2;	.type	32;	.endef
__Z15DoShrapVelocitys:
LFB29:
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
	movswl	56(%esp), %ebp
	movl	_User(,%ebp,4), %ebx
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	movl	%eax, 28(%esp)
	movl	160(%ebx), %esi
	movzwl	176(%ebx), %edi
	movl	156(%ebx), %ecx
	movl	%esi, 20(%esp)
	movl	152(%ebx), %esi
	movw	%di, 26(%esp)
	testb	$64, 71(%ebx)
	jne	L333
	movswl	24(%eax), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L383
L333:
	movl	%esi, %eax
	movl	$20000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ebx)
	movl	%eax, %esi
	movl	%ecx, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%ebx)
	movl	%eax, %ecx
	movl	20(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movzwl	26(%esp), %edx
	addl	$32, %edx
	movswl	%dx, %edi
	addl	%eax, %edi
L334:
	movw	%dx, 176(%ebx)
	movl	%esi, %edx
	movl	%edi, 160(%ebx)
	movl	$12, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L335
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L336
	jg	L337
	cmpl	$16384, %edx
	je	L338
	cmpl	$32768, %edx
	jne	L335
	movl	_wall, %ecx
	andl	$16383, %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
L380:
	andl	$2047, %edx
	movl	%ebp, %eax
	call	__Z10WallBouncess
	movl	_User(,%ebp,4), %ecx
	movl	$32000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
L335:
	xorl	%eax, %eax
	cmpw	$10, 274(%ebx)
	jg	L376
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
L383:
	.cfi_restore_state
	leal	240(%edi), %edx
	movswl	%dx, %edi
	addl	20(%esp), %edi
	jmp	L334
	.p2align 4,,10
	.p2align 3
L337:
	cmpl	$65536, %edx
	jne	L335
L376:
	movl	%ebp, %eax
	call	__Z10KillSprites
L340:
	addl	$36, %esp
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
L336:
	.cfi_restore_state
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzwl	28(%eax), %edx
	jmp	L380
	.p2align 4,,10
	.p2align 3
L338:
	leal	35(%esp), %edx
	movl	%ebp, %eax
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L341
	cmpb	$0, 35(%esp)
	jne	L384
	movl	28(%esp), %esi
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%esi), %eax
	jge	L381
	movl	68(%ebx), %eax
	testl	$536870912, %eax
	jne	L350
	orl	$536870912, %eax
	movl	$18000, %edx
	movl	%eax, 68(%ebx)
	movl	_User(,%ebp,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$18000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$18000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%edi, %edi
	movl	%eax, 160(%ecx)
	movl	$0, 264(%ebx)
	movw	%di, 176(%ebx)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L341:
	movl	108(%ebx), %esi
	movl	104(%ebx), %eax
	movl	28(%esp), %edx
	addl	%esi, %eax
	sarl	%eax
	cmpl	8(%edx), %eax
	jge	L348
	leal	8(%edx), %eax
	movl	_sprite, %edi
	movl	%eax, %ecx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	subl	%edi, %ecx
	mull	%ecx
	movl	%edx, %ecx
	movl	28(%esp), %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	%esi, 8(%edx)
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	je	L349
	movl	120(%ebx), %esi
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
	testl	%esi, %esi
	je	L350
	movswl	24(%edx), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L350
L351:
	cmpw	$0, 10(%edx)
	je	L375
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
L350:
	cmpw	$1562, 82(%ebx)
	je	L385
	movl	%ebp, (%esp)
	call	__Z15ShrapKillSprites
	jmp	L340
	.p2align 4,,10
	.p2align 3
L384:
	movl	_User(,%ebp,4), %ecx
	movl	$28000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$28000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L348:
	negl	160(%ebx)
L381:
	movl	_User(,%ebp,4), %ecx
	movl	$22000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$22000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$22000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	jmp	L335
	.p2align 4,,10
	.p2align 3
L349:
	movl	120(%ebx), %edx
	testl	%edx, %edx
	je	L375
	movl	28(%esp), %esi
	movswl	24(%esi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L351
L375:
	movl	%eax, %edx
	andl	$536870912, %edx
	testl	%edx, %edx
	jne	L350
	orl	$536870912, %eax
	negl	160(%ebx)
	movl	$18000, %edx
	movl	%eax, 68(%ebx)
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
	movl	_User(,%ebp,4), %esi
	movl	152(%esi), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$18000, %edx
	movl	%eax, 152(%esi)
	movl	156(%esi), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$18000, %edx
	movl	%eax, 156(%esi)
	movl	160(%esi), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%esi)
	movzwl	82(%ebx), %eax
	cmpw	$2152, %ax
	je	L355
	cmpw	$2180, %ax
	jne	L335
	movl	28(%esp), %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	$-1171354717, %esi
	leal	4(%eax), %ecx
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	movl	20(%esp), %esi
	movl	$291, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L335
L385:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L340
	movl	$0, 76(%eax)
	movl	$_s_GoreFloorSplash, 24(%eax)
	movl	$_s_GoreFloorSplash, 16(%eax)
	movswl	_s_GoreFloorSplash, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L340
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L340
L355:
	movl	28(%esp), %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	$-1171354717, %esi
	leal	4(%eax), %ecx
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%esi
	movl	20(%esp), %esi
	movl	$10, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L335
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z11SetupZombies
	.def	__Z11SetupZombies;	.scl	2;	.type	32;	.endef
__Z11SetupZombies:
LFB31:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$100, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %edi
	movswl	28(%esp), %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	movw	%dx, 84(%ebx)
	leal	(%edi,%eax), %ecx
	movl	$-1171354717, %edi
	addl	$20, %eax
	movl	$_s_ZombiePain, 28(%ebx)
	mull	%edi
	movl	$_sg_ZombieRun, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$47, 20(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$33, 21(%ecx)
	movl	$_ZombieAttrib, 48(%ebx)
	movl	$_ZombiePersonality, 8(%esp)
	movl	$_ZombieActionSet, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L387
	movl	$0, 76(%eax)
	movl	$_s_ZombieRun, 24(%eax)
	movl	$_s_ZombieRun, 16(%eax)
	movswl	_s_ZombieRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L387
	andl	$63, %eax
	movb	%al, 3(%edx)
L387:
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	orl	$16777216, 68(%ebx)
	xorl	%eax, %eax
	movl	$280, 188(%ebx)
	addl	$12, %esp
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
	.globl	__Z10SetupZillas
	.def	__Z10SetupZillas;	.scl	2;	.type	32;	.endef
__Z10SetupZillas:
LFB32:
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
	movswl	28(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L396
	movl	_User(,%esi,4), %edi
L397:
	movzwl	_Skill, %eax
	testw	%ax, %ax
	jne	L398
	movl	$2000, %edx
	movw	%dx, 84(%edi)
L399:
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L400
	movl	$0, 76(%eax)
	movl	$_s_ZillaRun, 24(%eax)
	movl	$_s_ZillaRun, 16(%eax)
	movswl	_s_ZillaRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L400
	andl	$63, %eax
	movb	%al, 3(%edx)
L400:
	movl	$_ZillaAttrib, 48(%edi)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_ZillaDie, 28(%edi)
	movl	$_sg_ZillaRun, 20(%edi)
	movl	%esi, (%esp)
	movl	$_ZillaPersonality, 8(%esp)
	movl	$_ZillaActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %esi
	leal	18(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$-128, 18(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$97, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$79, 21(%ebx)
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
L398:
	.cfi_restore_state
	cmpw	$1, %ax
	jne	L399
	movl	$4000, %eax
	movw	%ax, 84(%edi)
	jmp	L399
	.p2align 4,,10
	.p2align 3
L396:
	movl	$_s_ZillaRun, %ecx
	movl	$5426, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$6000, %ecx
	movl	%eax, _User(,%esi,4)
	movl	%eax, %edi
	movw	%cx, 84(%eax)
	jmp	L397
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z9NullZillas
	.def	__Z9NullZillas;	.scl	2;	.type	32;	.endef
__Z9NullZillas:
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
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_User(,%esi,4), %edi
	movl	140(%edi), %ebx
	leal	108(%edi), %eax
	movl	%eax, 16(%esp)
	leal	104(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	24(%ebx), %edx
	movl	_sector, %eax
	movl	108(%edi), %ecx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %edx
	movl	%edx, 120(%edi)
	movswl	24(%ebx), %edx
	movl	$0, 124(%edi)
	movl	$0, 128(%edi)
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, 116(%edi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$20, %esp
	xorl	%eax, %eax
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
LFE33:
	.p2align 4
	.globl	__Z11DoZillaMoves
	.def	__Z11DoZillaMoves;	.scl	2;	.type	32;	.endef
__Z11DoZillaMoves:
LFB34:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	__ZZ11DoZillaMovesE6handle, %eax
	movl	_sprite, %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movswl	32(%esp), %ebx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_User(,%ebx,4), %edi
	testl	%eax, %eax
	jg	L411
L432:
	imull	$1103515245, _wrandomseed, %eax
	movl	%esi, 16(%esp)
	movl	$32766, %edx
	.cfi_offset 6, -16
	imull	$44, %ebx, %esi
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	addl	%ecx, %esi
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$532022313, %eax
	ja	L435
	cmpl	$529338043, %eax
	ja	L435
	cmpl	$526653773, %eax
	ja	L435
	cmpl	$523969503, %eax
	ja	L435
	movl	16(%esp), %esi
	.cfi_restore 6
	cmpw	$0, 218(%edi)
	js	L418
	.p2align 4
	.p2align 3
L436:
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L419
	.p2align 4,,10
	.p2align 3
L435:
	.cfi_offset 6, -16
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	leal	8(%esi), %ebp
	movl	$-1171354717, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%esi), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%esi, %eax
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$584, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %ecx
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	%eax, __ZZ11DoZillaMovesE6handle
L415:
	cmpw	$0, 218(%edi)
	jns	L436
L418:
	movl	%ebx, (%esp)
	call	*36(%edi)
L419:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L411:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L432
	testl	%eax, %eax
	je	L432
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L415
	jmp	L432
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z16DoZillaDeathMelts
	.def	__Z16DoZillaDeathMelts;	.scl	2;	.type	32;	.endef
__Z16DoZillaDeathMelts:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	_randomseed, %eax
	movswl	8(%ebp), %edx
	addl	$1, _krandcount
	imull	$44, %edx, %ebx
	leal	(%eax,%eax,4), %ecx
	movl	_User(,%edx,4), %esi
	addl	_sprite, %ebx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L438
	sall	$14, %eax
	cmpl	$860053724, %eax
	ja	L438
L439:
	movl	$5426, %edx
	andl	$-98, 68(%esi)
	movw	%dx, 82(%esi)
	cmpb	$0, _gs+27
	jne	L445
L440:
	leal	108(%esi), %eax
	movl	%eax, 16(%esp)
	leal	104(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	24(%ebx), %edx
	movl	_sector, %eax
	movl	108(%esi), %ecx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %edx
	movl	%edx, 120(%esi)
	movswl	24(%ebx), %edx
	movl	$0, 124(%esi)
	movl	$0, 128(%esi)
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, 116(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-2, %eax
	movw	%ax, _BossSpriteNum+4
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	addl	$20, %esp
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
L438:
	.cfi_restore_state
	movl	%edx, (%esp)
	call	__Z15SpawnGrenadeExps
	jmp	L439
	.p2align 4,,10
	.p2align 3
L445:
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	orb	_DemoMode, %al
	jne	L440
	movswl	_Level, %eax
	movl	$0, (%esp)
	movl	$1, %ecx
	movzbl	_RedBookSong(%eax), %edx
	xorl	%eax, %eax
	call	__Z8PlaySongPcihh.part.0
	jmp	L440
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z11SpawnZombieP12PLAYERstructs
	.def	__Z11SpawnZombieP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z11SpawnZombieP12PLAYERstructs:
LFB39:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movswl	52(%esp), %eax
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	48(%esp), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movswl	30(%eax), %edi
	testw	%di, %di
	js	L449
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	300(%ebx), %edx
	movl	$_s_ZombieRun, %ecx
	movl	$0, 20(%esp)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$1095, %edx
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	$2, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movzwl	268(%ebx), %ecx
	movl	_sprite, %ebx
	movswl	%ax, %esi
	addl	$1, _krandcount
	imull	$44, %esi, %eax
	movw	%cx, 26(%esp)
	movl	$-1171354717, %ecx
	movl	_User(,%esi,4), %ebp
	addl	%eax, %ebx
	addl	$24, %eax
	mull	%ecx
	movzwl	26(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	_sprite, %edx
	movw	%ax, 24(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	_sprite, %edx
	movw	%di, 30(%ebx)
	movl	_User(,%edi,4), %eax
	movzbl	262(%eax), %edi
	movl	%edi, %eax
	movb	%al, 262(%ebp)
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%ebx)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%edi, %eax
	andl	$2047, %edi
	andl	$65535, %eax
	movl	%eax, _randomseed
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebx)
	movl	%esi, (%esp)
	call	__Z11SetupZombies
	movl	_sprite, %edi
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%edi, %edx
	movb	$-10, 16(%ebx)
	movl	%edx, %eax
	orl	$16777216, 72(%ebp)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2, 12(%ebx)
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	68(%ebp), %eax
	andl	$-97, %eax
	orl	$8, %eax
	movl	%eax, 68(%ebp)
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	movl	40(%esp), %ebp
	.cfi_restore 5
L446:
	movl	%esi, %eax
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
L449:
	.cfi_restore_state
	movl	$-1, %esi
	jmp	L446
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z12SpawnZombie2s
	.def	__Z12SpawnZombie2s;	.scl	2;	.type	32;	.endef
__Z12SpawnZombie2s:
LFB40:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movswl	48(%esp), %ebx
	movl	%ebp, 40(%esp)
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	.cfi_offset 5, -8
	movswl	30(%ebx), %ebp
	testw	%bp, %bp
	js	L453
	movl	%esi, 32(%esp)
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ecx
	.cfi_offset 6, -16
	movl	%eax, %esi
	leal	(%edx,%ecx,8), %edx
	movzwl	38(%edx), %ecx
	cmpl	$0, _SectUser(,%eax,4)
	je	L454
	testb	$12, %ch
	jne	L464
L454:
	andb	$3, %ch
	jne	L464
	cmpw	$2356, 16(%edx)
	je	L455
	cmpw	$2356, 24(%edx)
	je	L455
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
L456:
	movl	$0, 20(%esp)
	movswl	28(%ebx), %edx
	movl	$_s_ZombieRun, %ecx
	movl	%edx, 16(%esp)
	movl	8(%ebx), %edx
	movl	%edx, 12(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%eax, (%esp)
	movl	$2, %eax
	movl	%edx, 4(%esp)
	movl	$1095, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	xorl	%edx, %edx
	movl	$-1171354717, %ecx
	movswl	%ax, %ebx
	addl	$1, _krandcount
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %edi
	movw	%dx, 180(%edi)
	addl	%eax, %esi
	addl	$30, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	_sprite, %edx
	movw	%bp, 30(%esi)
	movl	_User(,%ebp,4), %eax
	movzbl	262(%eax), %ebp
	movl	%ebp, %eax
	movb	%al, 262(%edi)
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%esi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebp
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%ebp, %eax
	andl	$2047, %ebp
	andl	$65535, %eax
	movl	%eax, _randomseed
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 28(%esi)
	movl	%ebx, (%esp)
	call	__Z11SetupZombies
	movl	_sprite, %ebp
	leal	16(%esi), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	%ebp, %edx
	movb	$-10, 16(%esi)
	movl	%edx, %eax
	orl	$16777216, 72(%edi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2, 12(%esi)
	movl	%ebx, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	68(%edi), %eax
	andl	$-97, %eax
	orl	$8, %eax
	movl	%eax, 68(%edi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
L452:
	movl	%ebx, %eax
	movl	40(%esp), %ebp
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L455:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	leal	26(%esp), %eax
	movw	%si, 26(%esp)
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	addl	$2560, %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movswl	26(%esp), %eax
	testw	%ax, %ax
	js	L457
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	jne	L464
L457:
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movswl	24(%ebx), %eax
	jmp	L456
	.p2align 4,,10
	.p2align 3
L464:
	.cfi_restore 7
	movl	32(%esp), %esi
	.cfi_restore 6
L453:
	movl	$-1, %ebx
	jmp	L452
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z12DoZombieMoves
	.def	__Z12DoZombieMoves;	.scl	2;	.type	32;	.endef
__Z12DoZombieMoves:
LFB41:
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
	movzwl	180(%ebx), %eax
	leal	1(%eax), %edx
	movw	%dx, 180(%ebx)
	cmpw	$399, %ax
	jg	L492
	movl	200(%ebx), %eax
	testl	%eax, %eax
	je	L467
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L467
	testb	$2, 68(%eax)
	jne	L493
L467:
	movl	68(%ebx), %eax
	testb	$96, %al
	je	L470
L499:
	testb	$32, %al
	jne	L494
	testb	$64, %al
	jne	L495
L470:
	testl	$2097152, %eax
	jne	L496
L472:
	cmpw	$0, 218(%ebx)
	jns	L497
	movl	%esi, (%esp)
	call	*36(%ebx)
	testb	$96, 68(%ebx)
	je	L498
L475:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
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
L497:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	testb	$96, 68(%ebx)
	jne	L475
L498:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
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
L496:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L472
	.p2align 4,,10
	.p2align 3
L492:
	movl	%esi, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%esi, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%esi, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%esi, 16(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L493:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	68(%ebx), %eax
	testb	$96, %al
	je	L470
	jmp	L499
	.p2align 4,,10
	.p2align 3
L495:
	movl	%esi, (%esp)
	call	__Z11DoActorFalls
	movl	68(%ebx), %eax
	jmp	L470
	.p2align 4,,10
	.p2align 3
L494:
	movl	%esi, (%esp)
	call	__Z11DoActorJumps
	movl	68(%ebx), %eax
	jmp	L470
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z10NullZombies
	.def	__Z10NullZombies;	.scl	2;	.type	32;	.endef
__Z10NullZombies:
LFB42:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %edx
	movzwl	180(%edx), %eax
	leal	1(%eax), %ecx
	movw	%cx, 180(%edx)
	cmpw	$399, %ax
	jg	L516
	movl	200(%edx), %eax
	testl	%eax, %eax
	je	L502
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L502
	testb	$2, 68(%eax)
	jne	L517
L502:
	movzwl	216(%edx), %eax
	testw	%ax, %ax
	jle	L503
L520:
	subl	$6, %eax
	movw	%ax, 216(%edx)
L503:
	movl	68(%edx), %eax
	andl	$2097248, %eax
	cmpl	$2097152, %eax
	je	L518
L504:
	testb	$96, 68(%edx)
	je	L519
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L519:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L516:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, %eax
	movl	$105, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L517:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z22DoActorPickClosePlayers
	movl	4(%esp), %edx
	movzwl	216(%edx), %eax
	testw	%ax, %ax
	jg	L520
	jmp	L503
	.p2align 4,,10
	.p2align 3
L518:
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	jmp	L504
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z12DoZombiePains
	.def	__Z12DoZombiePains;	.scl	2;	.type	32;	.endef
__Z12DoZombiePains:
LFB43:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	call	__Z10NullZombies
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L524
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
L524:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 16(%esp)
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
LFE43:
	.p2align 4
	.globl	__ZL18process_tdragongrpi.lto_priv.0
	.def	__ZL18process_tdragongrpi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18process_tdragongrpi.lto_priv.0:
LFB45:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	__ZL9gfilelist.lto_priv.0(,%eax,4), %eax
	movl	$1430471764, 848(%eax)
	movl	$1297044563, 852(%eax)
	movl	$1415074862, 856(%eax)
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.def	_tdefl_optimize_huffman_table;	.scl	3;	.type	32;	.endef
_tdefl_optimize_huffman_table:
LFB48:
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
L527:
	movl	$0, 64(%esp,%eax)
	movl	$0, 68(%esp,%eax)
	movl	$0, 72(%esp,%eax)
	movl	$0, 76(%esp,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L527
	movl	40(%esp), %edi
	movl	5596(%esp), %esi
	movl	$0, 64(%esp,%eax)
	testl	%esi, %esi
	leal	0(,%edi,8), %eax
	movl	%eax, 52(%esp)
	je	L529
	addl	%edi, %eax
	movl	48(%esp), %edi
	sall	$5, %eax
	addl	20(%esp), %eax
	leal	(%edi,%eax), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L530:
	movzbl	36626(%eax), %edx
	addl	$1, %eax
	addl	$1, 64(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L530
	leal	3524(%esp), %eax
	movl	%eax, 44(%esp)
	movl	5592(%esp), %eax
	leal	1(%eax), %edx
L531:
	movl	44(%esp), %ebx
	xorl	%ecx, %ecx
	movl	$2, %eax
	movl	$0, 3528(%esp)
	.p2align 4
	.p2align 4
	.p2align 3
L574:
	addl	60(%esp,%eax,4), %ecx
	addl	%ecx, %ecx
	movl	%ecx, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	L574
	movl	20(%esp), %eax
	movl	52(%esp), %ebx
	addl	40(%esp), %ebx
	movl	48(%esp), %esi
	sall	$5, %ebx
	addl	%eax, %ebx
	negl	%eax
	addl	%ebx, %esi
	movl	%eax, %edi
	jmp	L577
	.p2align 5
	.p2align 4,,10
	.p2align 3
L575:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	je	L627
L577:
	movzbl	36626(%ebx), %edx
	testl	%edx, %edx
	je	L575
	movl	3524(%esp,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, 3524(%esp,%edx,4)
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L576:
	movl	%ecx, %ebp
	addl	%eax, %eax
	shrl	%ecx
	andl	$1, %ebp
	orl	%ebp, %eax
	subl	$1, %edx
	jne	L576
	movw	%ax, 34898(%edi,%ebx,2)
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jne	L577
L627:
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
L529:
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
L533:
	movzwl	(%ecx,%eax,2), %edx
	testw	%dx, %dx
	je	L532
	movl	%eax, %ebp
	sall	$16, %ebp
	orl	%ebp, %edx
	movl	%edx, (%edi,%ebx,4)
	addl	$1, %ebx
L532:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L533
	leal	3524(%esp), %eax
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, 24(%esp)
	movl	%eax, 44(%esp)
	call	_memset
	testl	%ebx, %ebx
	je	L578
	leal	0(,%ebx,4), %eax
	movl	%edi, %edx
	movl	%eax, 56(%esp)
	leal	(%edi,%eax), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L535:
	movzwl	(%edx), %eax
	addl	$4, %edx
	movzbl	%al, %ecx
	movzbl	%ah, %eax
	addl	$1, 3524(%esp,%ecx,4)
	addl	$1, 4548(%esp,%eax,4)
	cmpl	%edx, %esi
	jne	L535
	movl	24(%esp), %eax
	cmpl	4548(%esp), %eax
	setne	%al
	movzbl	%al, %eax
	addl	$1, %eax
L534:
	cmpl	$1, %eax
	leal	2372(%esp), %ebp
	setne	%al
	xorl	%ecx, %ecx
	movzbl	%al, %eax
	leal	8(,%eax,8), %eax
	movl	%eax, 28(%esp)
	leal	196(%esp), %eax
L539:
	movl	%ecx, %esi
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	sall	$7, %esi
	addl	44(%esp), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L536:
	movl	%ebx, (%eax,%edx,4)
	addl	(%esi,%edx,4), %ebx
	addl	$1, %edx
	cmpl	$256, %edx
	jne	L536
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L537
	movl	56(%esp), %esi
	movl	%edi, 16(%esp)
	movl	%edi, %ebx
	addl	%edi, %esi
	movl	%esi, 12(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L538:
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
	jne	L538
	movl	16(%esp), %edi
L537:
	addl	$8, %ecx
	cmpl	%ecx, 28(%esp)
	je	L628
	movl	%edi, %edx
	movl	%ebp, %edi
	movl	%edx, %ebp
	jmp	L539
L628:
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L541
	cmpl	$1, %eax
	je	L629
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
	je	L543
	movl	%esi, 28(%esp)
	xorl	%edx, %edx
	movl	$1, %eax
	movl	$2, %edi
	jmp	L553
	.p2align 6
	.p2align 4,,10
	.p2align 3
L630:
	leal	0(%ebp,%edx,4), %ecx
	movw	%bx, 0(%ebp,%eax,4)
	addl	$1, %edx
	movw	%ax, (%ecx)
	movzwl	0(%ebp,%eax,4), %ecx
L545:
	leal	0(%ebp,%edx,4), %esi
	movzwl	(%esi), %ebx
L549:
	addl	%ecx, %ebx
	addl	$1, %edx
	movw	%bx, 0(%ebp,%eax,4)
	movw	%ax, (%esi)
	addl	$1, %eax
	cmpl	16(%esp), %eax
	je	L552
L631:
	movzwl	0(%ebp,%edx,4), %ebx
L553:
	cmpl	%edi, 24(%esp)
	jle	L630
	movzwl	0(%ebp,%edi,4), %ecx
	cmpw	%cx, %bx
	jnb	L546
	leal	0(%ebp,%edx,4), %ecx
	movw	%bx, 0(%ebp,%eax,4)
	addl	$1, %edx
	movw	%ax, (%ecx)
	movzwl	0(%ebp,%eax,4), %ecx
L547:
	cmpl	%edi, 24(%esp)
	jle	L545
	movzwl	0(%ebp,%edi,4), %esi
	movw	%si, 12(%esp)
	cmpl	%eax, %edx
	jge	L550
	leal	0(%ebp,%edx,4), %esi
	movzwl	(%esi), %ebx
	cmpw	12(%esp), %bx
	jb	L549
L550:
	addw	12(%esp), %cx
	addl	$1, %edi
	movw	%cx, 0(%ebp,%eax,4)
	addl	$1, %eax
	cmpl	16(%esp), %eax
	jne	L631
L552:
	movl	28(%esp), %esi
	xorl	%eax, %eax
	leal	-4(%ebp), %ecx
	movw	%ax, (%esi)
	movl	56(%esp), %eax
	leal	-12(%ebp,%eax), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L555:
	movzwl	(%eax), %edx
	subl	$4, %eax
	movzwl	0(%ebp,%edx,4), %edx
	addl	$1, %edx
	movw	%dx, 4(%eax)
	cmpl	%eax, %ecx
	jne	L555
L554:
	movl	24(%esp), %eax
	movl	$1, 12(%esp)
	xorl	%edi, %edi
	xorl	%edx, %edx
	subl	$2, %eax
	testl	%eax, %eax
	jns	L557
	jmp	L632
	.p2align 5
	.p2align 4,,10
	.p2align 3
L560:
	addl	$1, %edx
	subl	$1, %eax
	jb	L561
L557:
	movzwl	0(%ebp,%eax,4), %ecx
	cmpl	%edi, %ecx
	je	L560
L561:
	leal	(%edx,%edx), %esi
	movl	%esi, 32(%esp)
	cmpl	12(%esp), %edx
	jge	L626
L558:
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
	jle	L620
	testb	$1, 36(%esp)
	je	L624
	movl	28(%esp), %ebx
	movw	%di, (%ebx,%ecx,4)
	movl	12(%esp), %ecx
	subl	$2, %ecx
	cmpl	%edx, %ecx
	jle	L620
L624:
	movl	28(%esp), %ebx
L562:
	movw	%si, (%ebx,%ecx,4)
	movw	%si, -4(%ebx,%ecx,4)
	subl	$2, %ecx
	cmpl	%edx, %ecx
	jg	L562
L620:
	testl	%edx, %edx
	je	L563
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
L626:
	movl	32(%esp), %esi
	addl	$1, %edi
	xorl	%edx, %edx
	movl	%esi, 12(%esp)
	testl	%eax, %eax
	jns	L557
L632:
	movl	$0, 32(%esp)
	jmp	L558
L546:
	movw	%cx, 0(%ebp,%eax,4)
	addl	$1, %edi
	jmp	L547
L622:
	movl	16(%esp), %ebp
L541:
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
L573:
	movl	64(%esp,%edi,4), %ebp
	testl	%ebp, %ebp
	jle	L571
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
L572:
	movzwl	(%eax), %ebp
	subl	$4, %eax
	movb	%cl, 36626(%ebp,%esi)
	cmpl	%eax, %ebx
	jne	L572
	movl	16(%esp), %ebp
	subl	%ebp, %edx
L571:
	movl	28(%esp), %eax
	addl	$1, %edi
	cmpl	%eax, %edi
	jne	L573
	movl	%eax, %edx
	jmp	L531
L563:
	movzwl	0(%ebp), %eax
	movl	56(%esp), %ecx
	addl	$1, 64(%esp,%eax,4)
	addl	%ebp, %ecx
	leal	4(%ebp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L564:
	movzwl	(%eax), %edx
	addl	$4, %eax
	addl	$1, 64(%esp,%edx,4)
	cmpl	%eax, %ecx
	jne	L564
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
L565:
	addl	4(%edx), %eax
	addl	$4, %edx
	movl	%eax, (%esi)
	cmpl	%edx, %ecx
	jne	L565
	movl	5592(%esp), %edx
	movl	%eax, 28(%esp)
	xorl	%ebx, %ebx
	movl	%edx, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L566:
	movl	64(%esp,%edx,4), %eax
	movl	%edi, %ecx
	subl	%edx, %ecx
	movl	%eax, 12(%esp)
	sall	%cl, %eax
	addl	%eax, %ebx
	subl	$1, %edx
	jne	L566
	movl	$128, %edi
	cmpl	$7, 5592(%esp)
	movl	$32768, %edx
	movl	28(%esp), %eax
	cmovne	%edx, %edi
	cmpl	%edi, %ebx
	je	L541
	movl	16(%esp), %ecx
	movl	%ebp, 16(%esp)
	movl	5592(%esp), %ebp
	leal	60(%esp,%ecx), %ecx
	movl	%ecx, 12(%esp)
	.p2align 4
	.p2align 3
L570:
	subl	$1, %eax
	leal	-1(%ebp), %edx
	movl	%eax, (%esi)
	movl	12(%esp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L569:
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	jne	L633
	subl	$4, %eax
	subl	$1, %edx
	jne	L569
L568:
	subl	$1, %ebx
	cmpl	%edi, %ebx
	je	L622
	movl	(%esi), %eax
	jmp	L570
	.p2align 4,,10
	.p2align 3
L633:
	subl	$1, %ecx
	movl	%ecx, (%eax)
	addl	$2, 68(%esp,%edx,4)
	jmp	L568
L629:
	movl	$1, %ecx
	movl	$1, 68(%esp)
	movw	%cx, 0(%ebp)
	jmp	L541
L578:
	movl	$0, 56(%esp)
	movl	$1, %eax
	jmp	L534
L543:
	xorl	%edx, %edx
	movw	%dx, (%esi)
	jmp	L554
	.cfi_endproc
LFE48:
	.section .rdata,"dr"
LC4:
	.ascii "\2\3\7\0"
	.text
	.p2align 4
	.def	_tdefl_start_dynamic_block;	.scl	3;	.type	32;	.endef
_tdefl_start_dynamic_block:
LFB52:
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
	jmp	L636
	.p2align 5
	.p2align 4,,10
	.p2align 3
L794:
	cmpl	$257, %edi
	je	L793
L636:
	movl	%edi, %ecx
	subl	$1, %edi
	cmpb	$0, 36626(%ebx,%edi)
	je	L794
	leal	-257(%ecx), %eax
	movl	%ecx, %edi
	movl	%eax, 28(%esp)
L637:
	movl	$30, %esi
	jmp	L640
	.p2align 5
	.p2align 4,,10
	.p2align 3
L638:
	cmpl	$1, %esi
	je	L795
L640:
	movl	%esi, %eax
	subl	$1, %esi
	movl	%esi, %ebp
	cmpb	$0, 36914(%ebx,%esi)
	je	L638
	movl	%eax, 12(%esp)
	movl	%eax, %esi
L639:
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
	jnb	L641
	testl	$8, %esi
	jne	L796
	testl	$4, %esi
	jne	L797
	testl	%esi, %esi
	je	L642
	movzbl	36914(%ebx), %eax
	movb	%al, (%ecx)
	testl	$2, %esi
	jne	L798
L642:
	movl	$0, 34344(%ebx)
	xorl	%eax, %eax
	movl	$0, 34348(%ebx)
	movl	$0, 34352(%ebx)
	movl	$0, 34356(%ebx)
	movl	12(%esp), %esi
L648:
	movl	$0, 34322(%ebx,%eax)
	movl	$0, 34326(%ebx,%eax)
	movl	$0, 34330(%ebx,%eax)
	movl	$0, 34334(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L648
	leal	352(%esp), %eax
	addl	%esi, %edi
	movzbl	352(%esp), %ecx
	movl	%esi, 12(%esp)
	leal	(%eax,%edi), %esi
	movl	%esi, 16(%esp)
	testb	%cl, %cl
	je	L713
	movb	$-1, 12(%esp)
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L651:
	movl	%ebx, 20(%esp)
	xorl	%edx, %edx
L661:
	cmpb	%cl, 12(%esp)
	je	L666
	movl	%esi, 24(%esp)
	testl	%edx, %edx
	je	L782
	cmpl	$2, %edx
	jbe	L799
	movl	20(%esp), %ebx
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
	addw	$1, 34354(%ebx)
	addl	$2, 24(%esp)
	movl	24(%esp), %edi
L665:
	movzbl	%cl, %edx
	movb	%cl, 32(%esp,%edi)
	leal	1(%edi), %esi
	addl	$1, %eax
	addw	$1, 34322(%ebx,%edx,2)
	cmpl	16(%esp), %eax
	je	L792
	movzbl	(%eax), %edx
	testb	%dl, %dl
	jne	L800
L786:
	movl	%esi, 12(%esp)
L650:
	xorl	%edx, %edx
L655:
	addl	$1, %edx
	cmpl	$138, %edx
	je	L801
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	je	L654
L803:
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	je	L655
	testl	%edx, %edx
	je	L715
	cmpl	$2, %edx
	jbe	L802
	movl	12(%esp), %edi
	leal	2(%edi), %esi
	cmpl	$10, %edx
	ja	L660
	subl	$3, %edx
	addw	$1, 34356(%ebx)
	movb	$17, 32(%esp,%edi)
	movb	%dl, 33(%esp,%edi)
L791:
	movb	$0, 12(%esp)
	jmp	L651
L641:
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
	jb	L642
	andl	$-16, %edx
	movl	%edi, 20(%esp)
	xorl	%eax, %eax
	movl	%ebp, 24(%esp)
	movl	%edx, 16(%esp)
L646:
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
	jb	L646
	movl	20(%esp), %edi
	movl	24(%esp), %ebp
	jmp	L642
L713:
	movl	$0, 12(%esp)
	jmp	L650
L801:
	movl	12(%esp), %edi
	movl	$32530, %edx
	addw	$1, 34358(%ebx)
	addl	$1, %eax
	movw	%dx, 32(%esp,%edi)
	leal	2(%edi), %esi
	cmpl	16(%esp), %eax
	je	L792
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	jne	L791
	movl	%esi, 12(%esp)
	movl	$1, %edx
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	jne	L803
L654:
	testl	%edx, %edx
	je	L658
	cmpl	$2, %edx
	ja	L677
	movl	12(%esp), %eax
	addw	%dx, 34322(%ebx)
	leal	32(%esp,%eax), %ecx
	testl	%edx, %edx
	je	L679
	xorl	%eax, %eax
	testb	$1, %dl
	jne	L778
L678:
	movb	$0, (%ecx,%eax)
	movb	$0, 1(%ecx,%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jb	L678
L679:
	addl	%edx, 12(%esp)
	jmp	L658
	.p2align 4,,10
	.p2align 3
L800:
	cmpb	%dl, %cl
	je	L804
	movl	%edx, %ecx
	movl	%esi, %edi
	jmp	L665
L666:
	addl	$1, %edx
	cmpl	$6, %edx
	jne	L664
	movl	20(%esp), %edi
	movl	$784, %ebx
	leal	2(%esi), %edx
	addl	$1, %eax
	addw	$1, 34354(%edi)
	movw	%bx, 32(%esp,%esi)
	cmpl	16(%esp), %eax
	je	L784
	movzbl	(%eax), %esi
	movl	%esi, %ebx
	testb	%bl, %bl
	jne	L805
	movl	%edx, 12(%esp)
	movl	20(%esp), %ebx
	jmp	L650
L804:
	movl	%ebx, 20(%esp)
	movl	$1, %edx
L664:
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	je	L670
	movzbl	(%eax), %edi
	movl	%edi, %ebx
	testb	%bl, %bl
	je	L671
	movb	%cl, 12(%esp)
	movl	%edi, %ecx
	jmp	L661
L671:
	movl	20(%esp), %ebx
	testl	%edx, %edx
	je	L786
	cmpl	$2, %edx
	jbe	L806
	leal	2(%esi), %edi
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	addw	$1, 34354(%ebx)
	movl	%edi, 12(%esp)
	movb	%dl, 33(%esp,%esi)
	jmp	L650
L660:
	movl	12(%esp), %edi
	subl	$11, %edx
	addw	$1, 34358(%ebx)
	movb	$18, 32(%esp,%edi)
	movb	%dl, 33(%esp,%edi)
	jmp	L791
L802:
	movl	12(%esp), %edi
	addw	%dx, 34322(%ebx)
	movb	$0, 12(%esp)
	movb	$0, 32(%esp,%edi)
	leal	1(%edi), %esi
	cmpl	$1, %edx
	je	L651
	movb	$0, 32(%esp,%esi)
	leal	2(%edi), %esi
	jmp	L651
L806:
	movzbl	%cl, %edi
	movb	%cl, 32(%esp,%esi)
	addw	%dx, 34322(%ebx,%edi,2)
	leal	1(%esi), %edi
	movl	%edi, 12(%esp)
	cmpl	$1, %edx
	je	L650
	movb	%cl, 33(%esp,%esi)
	addl	$2, %esi
	movl	%esi, 12(%esp)
	jmp	L650
L792:
	movl	%esi, 12(%esp)
L658:
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
	jbe	L682
	.p2align 6
	.p2align 4
	.p2align 3
L684:
	cmpl	52(%ebx), %eax
	jnb	L683
	leal	1(%eax), %edx
	movl	%edx, 48(%ebx)
	movb	%cl, (%eax)
	movl	72(%ebx), %ecx
	movl	48(%ebx), %eax
L683:
	movl	68(%ebx), %edi
	shrl	$8, %ecx
	movl	%ecx, 72(%ebx)
	leal	-8(%edi), %edx
	movl	%edx, 68(%ebx)
	cmpl	$7, %edx
	ja	L684
	movl	%ecx, %esi
L682:
	movl	28(%esp), %edi
	movl	%edx, %ecx
	sall	%cl, %edi
	leal	5(%edx), %ecx
	orl	%edi, %esi
	movl	%ecx, 68(%ebx)
	movl	%esi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L685
	movl	%esi, %edx
	jmp	L687
	.p2align 6
	.p2align 4,,10
	.p2align 3
L807:
	movl	48(%ebx), %eax
L687:
	cmpl	52(%ebx), %eax
	jnb	L686
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L686:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	leal	-8(%eax), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L807
	movl	%edx, %esi
	movl	%ebp, %edx
	sall	%cl, %edx
	leal	-3(%eax), %ecx
	orl	%edx, %esi
	movl	%ecx, 68(%ebx)
	movl	%esi, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L688
	movl	48(%ebx), %eax
	movl	%esi, %edx
	jmp	L690
	.p2align 6
	.p2align 4,,10
	.p2align 3
L808:
	movl	48(%ebx), %eax
L690:
	cmpl	52(%ebx), %eax
	jnb	L689
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L689:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	leal	-8(%eax), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L808
L688:
	movl	$18, %esi
	jmp	L692
	.p2align 5
	.p2align 4,,10
	.p2align 3
L810:
	subl	$1, %esi
	jb	L809
L692:
	movzbl	_s_tdefl_packed_code_size_syms_swizzle(%esi), %eax
	cmpb	$0, 37202(%ebx,%eax)
	je	L810
	movl	$3, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	leal	-3(%esi), %eax
	sall	%cl, %eax
L693:
	orl	72(%ebx), %eax
	addl	$4, %ecx
	movl	%eax, 72(%ebx)
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	jbe	L694
	.p2align 6
	.p2align 4
	.p2align 3
L696:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L695
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L695:
	movl	68(%ebx), %edi
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L696
L694:
	xorl	%edi, %edi
	movl	%eax, %edx
	.p2align 4
	.p2align 3
L701:
	movzbl	_s_tdefl_packed_code_size_syms_swizzle(%edi), %eax
	movzbl	37202(%ebx,%eax), %eax
	sall	%cl, %eax
	addl	$3, %ecx
	orl	%edx, %eax
	movl	%ecx, 68(%ebx)
	movl	%eax, 72(%ebx)
	cmpl	$7, %ecx
	jbe	L697
	.p2align 6
	.p2align 4
	.p2align 3
L699:
	movl	48(%ebx), %edx
	cmpl	52(%ebx), %edx
	jnb	L698
	leal	1(%edx), %ecx
	movl	%ecx, 48(%ebx)
	movb	%al, (%edx)
	movl	72(%ebx), %eax
L698:
	movl	68(%ebx), %edx
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %edx
	movl	%edx, 68(%ebx)
	cmpl	$7, %edx
	ja	L699
L697:
	cmpl	%edi, %esi
	je	L721
	movl	72(%ebx), %edx
	movl	68(%ebx), %ecx
	addl	$1, %edi
	jmp	L701
L721:
	xorl	%esi, %esi
L705:
	cmpl	12(%esp), %esi
	jnb	L811
	.p2align 4
	.p2align 3
L709:
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
	jbe	L702
	.p2align 6
	.p2align 4
	.p2align 3
L704:
	movl	48(%ebx), %ecx
	cmpl	52(%ebx), %ecx
	jnb	L703
	leal	1(%ecx), %ebp
	movl	%ebp, 48(%ebx)
	movb	%al, (%ecx)
	movl	72(%ebx), %eax
L703:
	movl	68(%ebx), %ecx
	shrl	$8, %eax
	movl	%eax, 72(%ebx)
	subl	$8, %ecx
	movl	%ecx, 68(%ebx)
	cmpl	$7, %ecx
	ja	L704
L702:
	cmpl	$15, %edx
	ja	L812
	movl	%edi, %esi
	cmpl	12(%esp), %esi
	jb	L709
L811:
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
L812:
	.cfi_restore_state
	movzbl	LC4-16(%edx), %eax
	movzbl	32(%esp,%edi), %edx
	addl	$2, %esi
	sall	%cl, %edx
	addl	%ecx, %eax
	orl	72(%ebx), %edx
	movl	%edx, 72(%ebx)
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	jbe	L705
	.p2align 6
	.p2align 4
	.p2align 3
L708:
	movl	48(%ebx), %eax
	cmpl	52(%ebx), %eax
	jnb	L707
	leal	1(%eax), %ecx
	movl	%ecx, 48(%ebx)
	movb	%dl, (%eax)
	movl	72(%ebx), %edx
L707:
	movl	68(%ebx), %eax
	shrl	$8, %edx
	movl	%edx, 72(%ebx)
	subl	$8, %eax
	movl	%eax, 68(%ebx)
	cmpl	$7, %eax
	ja	L708
	jmp	L705
L809:
	xorl	%eax, %eax
	movl	$3, %esi
	jmp	L693
L782:
	movl	24(%esp), %edi
	movl	20(%esp), %ebx
	jmp	L665
L793:
	movl	$0, 28(%esp)
	movl	$257, %ecx
	jmp	L637
L795:
	movl	%esi, 12(%esp)
	xorl	%ebp, %ebp
	jmp	L639
L799:
	movzbl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$1, 24(%esp)
	addw	%dx, 34322(%edi,%ebx,2)
	movzbl	12(%esp), %ebx
	movl	24(%esp), %edi
	movb	%bl, 32(%esp,%esi)
	cmpl	$1, %edx
	je	L783
	addl	$2, %esi
	movb	%bl, 32(%esp,%edi)
	movl	20(%esp), %ebx
	movl	%esi, 24(%esp)
	movl	%esi, %edi
	jmp	L665
L805:
	movl	%esi, %ebx
	cmpb	%bl, %cl
	je	L813
	movl	%edx, 24(%esp)
	movl	20(%esp), %ebx
	movl	%esi, %ecx
	movl	%edx, %edi
	jmp	L665
L783:
	movl	20(%esp), %ebx
	jmp	L665
L677:
	movl	12(%esp), %esi
	leal	2(%esi), %eax
	cmpl	$10, %edx
	ja	L680
	subl	$3, %edx
	addw	$1, 34356(%ebx)
	movb	$17, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
L681:
	movl	%eax, 12(%esp)
	jmp	L658
L813:
	movl	%edx, %esi
	movl	$1, %edx
	jmp	L664
L796:
	movl	36914(%ebx), %eax
	movl	36918(%ebx), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	36906(%ebx,%esi), %eax
	movl	36910(%ebx,%esi), %edx
	movl	%eax, -8(%ecx,%esi)
	movl	%edx, -4(%ecx,%esi)
	jmp	L642
L685:
	sall	%cl, %ebp
	addl	$10, %edx
	orl	%ebp, %esi
	movl	%edx, 68(%ebx)
	movl	%esi, 72(%ebx)
	movl	%esi, %edx
	jmp	L690
L670:
	movl	20(%esp), %ebx
	testl	%edx, %edx
	je	L792
	cmpl	$2, %edx
	ja	L674
	movzbl	%cl, %ecx
	leal	32(%esp,%esi), %edi
	addw	%dx, 34322(%ebx,%ecx,2)
	testl	%edx, %edx
	je	L676
	xorl	%eax, %eax
	testb	$1, %dl
	jne	L777
L675:
	movb	%cl, (%edi,%eax)
	movb	%cl, 1(%edi,%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jb	L675
L676:
	leal	(%esi,%edx), %eax
	movl	%eax, 12(%esp)
	jmp	L658
L674:
	leal	2(%esi), %eax
	subl	$3, %edx
	movb	$16, 32(%esp,%esi)
	addw	$1, 34354(%ebx)
	movl	%eax, 12(%esp)
	movb	%dl, 33(%esp,%esi)
	jmp	L658
L777:
	movl	$1, %eax
	movb	%cl, (%edi)
	cmpl	%edx, %eax
	jb	L675
	jmp	L676
L778:
	movl	$1, %eax
	movb	$0, (%ecx)
	cmpl	%edx, %eax
	jb	L678
	jmp	L679
L680:
	movl	12(%esp), %esi
	subl	$11, %edx
	addw	$1, 34358(%ebx)
	movb	$18, 32(%esp,%esi)
	movb	%dl, 33(%esp,%esi)
	jmp	L681
L784:
	movl	%edx, 12(%esp)
	movl	20(%esp), %ebx
	jmp	L658
L798:
	movzwl	36912(%ebx,%esi), %eax
	movw	%ax, -2(%ecx,%esi)
	jmp	L642
L797:
	movl	36914(%ebx), %eax
	movl	%eax, (%ecx)
	movl	36910(%ebx,%esi), %eax
	movl	%eax, -4(%ecx,%esi)
	jmp	L642
L715:
	movl	12(%esp), %esi
	jmp	L791
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16
	.def	__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16;	.scl	2;	.type	32;	.endef
__ZL15startup_dlgprocP6HWND__jjl.lto_priv.0@16:
LFB53:
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
	subl	$244, %esp
	movl	4(%ecx), %eax
	movl	(%ecx), %ebx
	movl	8(%ecx), %edx
	movl	12(%ecx), %esi
	cmpl	$78, %eax
	je	L815
	ja	L816
	cmpl	$15, %eax
	je	L817
	cmpl	$16, %eax
	je	L818
	cmpl	$2, %eax
	jne	L820
	movl	__ZZL15startup_dlgprocP6HWND__jjlE4hbmp, %eax
	testl	%eax, %eax
	je	L827
	movl	%eax, (%esp)
	call	*__imp__DeleteObject@4
	subl	$4, %esp
	movl	$0, __ZZL15startup_dlgprocP6HWND__jjlE4hbmp
L827:
	movl	__ZL5pages, %eax
	testl	%eax, %eax
	je	L828
	movl	%eax, (%esp)
	call	*__imp__DestroyWindow@4
	subl	$4, %esp
	movl	$0, __ZL5pages
L828:
	movl	$0, __ZL10startupdlg.lto_priv.0
L825:
	movl	$1, %eax
L814:
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L816:
	.cfi_restore_state
	cmpl	$273, %eax
	je	L821
	cmpl	$312, %eax
	je	L822
	cmpl	$272, %eax
	jne	L820
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$-16, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__GetWindowLongA@8
	subl	$8, %esp
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	call	*__imp__AdjustWindowRect@12
	leal	-168(%ebp), %eax
	movl	__imp__GetWindowRect@8, %edi
	subl	$12, %esp
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edi
	movl	__imp__GetDlgItem@8, %esi
	movl	-104(%ebp), %eax
	subl	$8, %esp
	subl	%eax, -168(%ebp)
	movl	-100(%ebp), %eax
	subl	%eax, -164(%ebp)
	movl	-96(%ebp), %eax
	subl	%eax, -160(%ebp)
	movl	-92(%ebp), %eax
	subl	%eax, -156(%ebp)
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-120(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	movl	-120(%ebp), %edx
	subl	$8, %esp
	leal	-1(%edx), %eax
	subl	%eax, -112(%ebp)
	movl	-116(%ebp), %eax
	subl	-168(%ebp), %edx
	leal	-1(%eax), %ecx
	subl	-164(%ebp), %eax
	subl	%ecx, -108(%ebp)
	movl	%edx, -120(%ebp)
	movl	%eax, -116(%ebp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-136(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	movl	-136(%ebp), %edx
	subl	$8, %esp
	leal	-1(%edx), %eax
	subl	%eax, -128(%ebp)
	movl	-132(%ebp), %eax
	subl	-168(%ebp), %edx
	leal	-1(%eax), %ecx
	subl	-164(%ebp), %eax
	subl	%ecx, -124(%ebp)
	movl	%edx, -136(%ebp)
	movl	%eax, -132(%ebp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-152(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	movl	-152(%ebp), %eax
	movl	-148(%ebp), %ecx
	leal	-184(%ebp), %edi
	subl	$8, %esp
	leal	-1(%eax), %edx
	subl	%edx, -144(%ebp)
	leal	-1(%ecx), %edx
	subl	%edx, -140(%ebp)
	movl	-168(%ebp), %edx
	movl	$0, -168(%ebp)
	subl	%edx, %eax
	subl	$1, %edx
	subl	%edx, -160(%ebp)
	movl	%eax, -152(%ebp)
	movl	-164(%ebp), %eax
	movl	$0, -164(%ebp)
	subl	%eax, %ecx
	subl	$1, %eax
	subl	%eax, -156(%ebp)
	movl	__imp__GetModuleHandleA@4, %eax
	movl	%ecx, -148(%ebp)
	movl	$0, (%esp)
	movl	%eax, -200(%ebp)
	call	*%eax
	subl	$4, %esp
	movl	$200, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__LoadBitmapA@8
	subl	$8, %esp
	movl	%eax, __ZZL15startup_dlgprocP6HWND__jjlE4hbmp
	movl	$100, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, (%esp)
	movl	__imp__GetClientRect@8, %eax
	movl	%edi, 4(%esp)
	movl	%eax, -196(%ebp)
	call	*%eax
	movl	-108(%ebp), %ecx
	movl	-172(%ebp), %edi
	subl	-156(%ebp), %edi
	subl	$8, %esp
	movl	-176(%ebp), %eax
	movl	%edi, %edx
	movl	-120(%ebp), %edi
	addl	%edx, -132(%ebp)
	addl	%edx, %ecx
	addl	%edx, -148(%ebp)
	movl	-116(%ebp), %edx
	movl	%ecx, -108(%ebp)
	addl	%eax, %edi
	movl	%ecx, -208(%ebp)
	movl	-172(%ebp), %ecx
	addl	%eax, -136(%ebp)
	movl	%ecx, -156(%ebp)
	movl	-112(%ebp), %ecx
	addl	%eax, -152(%ebp)
	addl	%eax, -160(%ebp)
	movl	%edi, -120(%ebp)
	movl	%ecx, -192(%ebp)
	movl	%edx, -204(%ebp)
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	$0, 20(%esp)
	movl	-208(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-192(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-204(%ebp), %edx
	movl	%edi, 4(%esp)
	movl	__imp__MoveWindow@24, %edi
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	*%edi
	movl	-124(%ebp), %ecx
	movl	-128(%ebp), %edx
	subl	$24, %esp
	movl	%ecx, -192(%ebp)
	movl	-132(%ebp), %ecx
	movl	%edx, -204(%ebp)
	movl	-136(%ebp), %edx
	movl	%ecx, -212(%ebp)
	movl	%edx, -208(%ebp)
	movl	$2, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	$0, 20(%esp)
	movl	-192(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-212(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-208(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%edi
	movl	-140(%ebp), %ecx
	movl	-144(%ebp), %edx
	subl	$24, %esp
	movl	%ecx, -192(%ebp)
	movl	-148(%ebp), %ecx
	movl	%edx, -204(%ebp)
	movl	-152(%ebp), %edx
	movl	%ecx, -212(%ebp)
	movl	%edx, -208(%ebp)
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	$0, 20(%esp)
	movl	-192(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-204(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-212(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-208(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	*%edi
	subl	$24, %esp
	movl	$0, (%esp)
	call	*__imp__GetDC@4
	movl	__imp__GetDeviceCaps@8, %edx
	subl	$4, %esp
	movl	$8, 4(%esp)
	movl	%eax, -192(%ebp)
	movl	%eax, (%esp)
	movl	%edx, -204(%ebp)
	call	*%edx
	movl	%eax, %ecx
	subl	-160(%ebp), %ecx
	subl	$8, %esp
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, -168(%ebp)
	movl	$10, 4(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, (%esp)
	movl	-204(%ebp), %edx
	call	*%edx
	movl	%eax, %ecx
	subl	-156(%ebp), %ecx
	subl	$8, %esp
	movl	%ecx, %edx
	shrl	$31, %ecx
	leal	(%ecx,%edx), %eax
	movl	-192(%ebp), %edx
	sarl	%eax
	movl	%eax, -164(%ebp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	*__imp__ReleaseDC@8
	movl	-104(%ebp), %eax
	subl	$8, %esp
	movl	$1, 20(%esp)
	movl	-92(%ebp), %edx
	subl	-100(%ebp), %edx
	addl	-156(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-96(%ebp), %edx
	subl	%eax, %edx
	addl	-160(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-164(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, 8(%esp)
	addl	-168(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*%edi
	subl	$24, %esp
	movl	$101, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	leal	-80(%ebp), %edx
	subl	$8, %esp
	movl	%eax, %edi
	movl	$0, -76(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -56(%ebp)
	movl	$1, -80(%ebp)
	movl	$__ZZL15startup_dlgprocP6HWND__jjlE9textSetup, -68(%ebp)
	movl	%eax, (%esp)
	movl	__imp__SendMessageA@16, %eax
	movl	%edx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4871, 4(%esp)
	movl	%eax, -192(%ebp)
	call	*%eax
	leal	-80(%ebp), %edx
	subl	$16, %esp
	movl	$1, -80(%ebp)
	movl	$__ZZL15startup_dlgprocP6HWND__jjlE14textMessageLog, -68(%ebp)
	movl	%edx, 12(%esp)
	movl	%edi, (%esp)
	movl	$1, 8(%esp)
	movl	$4871, 4(%esp)
	movl	-192(%ebp), %eax
	call	*%eax
	leal	-184(%ebp), %ecx
	subl	$16, %esp
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	movl	$0, -176(%ebp)
	movl	$0, -172(%ebp)
	movl	%edi, (%esp)
	movl	%ecx, 4(%esp)
	movl	-196(%ebp), %ecx
	call	*%ecx
	leal	-184(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 12(%esp)
	movl	%edi, (%esp)
	movl	$0, 8(%esp)
	movl	$4904, 4(%esp)
	movl	-192(%ebp), %eax
	call	*%eax
	movl	-184(%ebp), %eax
	subl	$16, %esp
	leal	-1(%eax), %edx
	subl	%edx, -176(%ebp)
	movl	-180(%ebp), %edx
	addl	-120(%ebp), %eax
	leal	-1(%edx), %ecx
	addl	-116(%ebp), %edx
	subl	%ecx, -172(%ebp)
	movl	%edx, -180(%ebp)
	movl	%eax, -184(%ebp)
	movl	$0, (%esp)
	movl	-200(%ebp), %edx
	call	*%edx
	subl	$4, %esp
	movl	$0, 16(%esp)
	movl	$__ZL14ConfigPageProcP6HWND__jjl@16, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$2000, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__CreateDialogParamA@20
	subl	$20, %esp
	movl	%eax, __ZL5pages
	movl	$128, 24(%esp)
	movl	-172(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	-176(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	-180(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-184(%ebp), %edx
	movl	%edi, 4(%esp)
	movl	%edx, 8(%esp)
	movl	__imp__SetWindowPos@28, %edx
	movl	%eax, (%esp)
	movl	%edx, -200(%ebp)
	call	*%edx
	subl	$28, %esp
	movl	$104, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, __ZL5pages+4
	movl	$128, 24(%esp)
	movl	-172(%ebp), %ecx
	movl	%ecx, 20(%esp)
	movl	-176(%ebp), %ecx
	movl	%ecx, 16(%esp)
	movl	-180(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-184(%ebp), %ecx
	movl	%edi, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%eax, (%esp)
	movl	-200(%ebp), %edx
	call	*%edx
	leal	-184(%ebp), %edx
	subl	$28, %esp
	movl	%edx, 4(%esp)
	movl	__ZL5pages+4, %eax
	movl	%eax, (%esp)
	movl	-196(%ebp), %ecx
	call	*%ecx
	subl	$8, %esp
	movl	$2, (%esp)
	call	*__imp__GetSystemMetrics@4
	leal	-184(%ebp), %ecx
	subl	$4, %esp
	addl	$4, %eax
	subl	%eax, -176(%ebp)
	movl	$0, -184(%ebp)
	movl	$0, -180(%ebp)
	movl	%ecx, 12(%esp)
	movl	$0, 8(%esp)
	movl	$180, 4(%esp)
	movl	__ZL5pages+4, %eax
	movl	%eax, (%esp)
	movl	-192(%ebp), %edi
	call	*%edi
	subl	$16, %esp
	movl	$150, -188(%ebp)
	movl	$106, 4(%esp)
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	call	*%esi
	leal	-188(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 12(%esp)
	movl	$1, 8(%esp)
	movl	$402, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	subl	$16, %esp
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	*%esi
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*__imp__SetFocus@4
	subl	$4, %esp
	movl	$_apptitle, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__SetWindowTextA@8
	subl	$8, %esp
L820:
	xorl	%eax, %eax
L849:
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
	ret	$16
	.p2align 4,,10
	.p2align 3
L821:
	.cfi_restore_state
	movzwl	%dx, %eax
	cmpw	$1, %dx
	je	L829
	cmpl	$2, %eax
	jne	L820
L818:
	movl	__ZL4mode, %eax
	testl	%eax, %eax
	jne	L826
	movl	$0, __ZL4done.lto_priv.0
	jmp	L825
	.p2align 4,,10
	.p2align 3
L822:
	cmpl	%esi, __ZL5pages+4
	jne	L820
	movl	$5, (%esp)
	call	*__imp__GetSysColorBrush@4
	subl	$4, %esp
	jmp	L814
	.p2align 4,,10
	.p2align 3
L815:
	cmpl	$101, 4(%esi)
	jne	L820
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4875, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	*__imp__SendMessageA@16
	movl	%eax, %ecx
	movl	8(%esi), %eax
	subl	$16, %esp
	leal	552(%eax), %edx
	cmpl	$1, %edx
	ja	L820
	testl	%ecx, %ecx
	js	L820
	movl	__ZL5pages(,%ecx,4), %edx
	testl	%edx, %edx
	je	L820
	cmpl	$-552, %eax
	movl	%edx, (%esp)
	setne	%al
	movzbl	%al, %eax
	leal	(%eax,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	*__imp__ShowWindow@8
	subl	$8, %esp
	jmp	L825
	.p2align 4,,10
	.p2align 3
L817:
	movl	%ebx, (%esp)
	leal	-80(%ebp), %esi
	movl	$100, 4(%esp)
	call	*__imp__GetDlgItem@8
	subl	$8, %esp
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__BeginPaint@8
	movl	%eax, %edx
	subl	$8, %esp
	movl	-72(%ebp), %eax
	cmpl	%eax, -64(%ebp)
	jle	L830
	movl	-68(%ebp), %eax
	cmpl	%eax, -60(%ebp)
	jg	L848
L830:
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__EndPaint@8
	xorl	%eax, %eax
	subl	$8, %esp
	jmp	L849
	.p2align 4,,10
	.p2align 3
L826:
	addb	$1, _quitevent
	jmp	L825
	.p2align 4,,10
	.p2align 3
L848:
	leal	-120(%ebp), %eax
	movl	%edx, -192(%ebp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	*__imp__GetClientRect@8
	leal	-104(%ebp), %eax
	subl	$8, %esp
	movl	%eax, 8(%esp)
	movl	$24, 4(%esp)
	movl	__ZZL15startup_dlgprocP6HWND__jjlE4hbmp, %eax
	movl	%eax, (%esp)
	call	*__imp__GetObjectA@12
	movl	-192(%ebp), %edx
	subl	$12, %esp
	movl	%edx, (%esp)
	call	*__imp__CreateCompatibleDC@4
	movl	%eax, %edi
	movl	__ZZL15startup_dlgprocP6HWND__jjlE4hbmp, %eax
	subl	$4, %esp
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__SelectObject@8
	subl	$8, %esp
	movl	$4, 4(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, (%esp)
	call	*__imp__SetStretchBltMode@8
	subl	$8, %esp
	movl	$13369376, 40(%esp)
	movl	-96(%ebp), %eax
	movl	%eax, 36(%esp)
	movl	-100(%ebp), %eax
	movl	$0, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$0, 24(%esp)
	movl	%edi, 20(%esp)
	movl	-108(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	-112(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-116(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-120(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-192(%ebp), %edx
	movl	%edx, (%esp)
	call	*__imp__StretchBlt@44
	subl	$44, %esp
	movl	%edi, (%esp)
	call	*__imp__DeleteDC@4
	subl	$4, %esp
	jmp	L830
	.p2align 4,,10
	.p2align 3
L829:
	movl	$1, __ZL4done.lto_priv.0
	jmp	L825
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	_miniz_def_alloc_func
	.def	_miniz_def_alloc_func;	.scl	2;	.type	32;	.endef
_miniz_def_alloc_func:
LFB55:
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
	je	L854
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L854:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z9QueueHolessiii.isra.0
	.def	__Z9QueueHolessiii.isra.0;	.scl	2;	.type	32;	.endef
__Z9QueueHolessiii.isra.0:
LFB57:
	.cfi_startproc
	movswl	%dx, %edx
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	sall	$5, %edx
	movl	%edx, 36(%esp)
	addl	_wall, %edx
	testb	$-128, 30(%edx)
	jne	L855
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
	movl	%edi, 60(%esp)
	movl	%ebp, 64(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	testb	$1, 14(%edx)
	jne	L872
L857:
	movswl	_HoleQueueHead, %edx
	movl	%eax, %esi
	movl	%ecx, 44(%esp)
	movl	%edx, %eax
	movzwl	_HoleQueue(%edx,%edx), %edx
	cmpw	$-1, %dx
	je	L873
L858:
	addl	$1, %eax
	movl	$-1171354717, %ecx
	movl	_sprite, %ebp
	andl	$63, %eax
	movw	%ax, _HoleQueueHead
	movswl	%dx, %eax
	imull	$44, %eax, %edi
	movl	%eax, 32(%esp)
	leal	30(%edi), %eax
	leal	0(%ebp,%edi), %ebx
	mull	%ecx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 30(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$16, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ebx), %edx
	subl	%ebp, %edx
	movb	$16, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ebx), %edx
	subl	%ebp, %edx
	movb	$0, 23(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movb	$0, 22(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%ebp, %edx
	movb	$0, 18(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ebx)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ebp, %edx
	movb	$0, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movl	%edx, 40(%esp)
	subl	%ebp, %edx
	movl	%edx, %eax
	movb	$0, 17(%ebx)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movw	%ax, 12(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	44(%esp), %edx
	movl	%edx, (%ebx)
	movl	_sprite, %ebp
	leal	4(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	72(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%ebp, %edx
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	76(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ebx), %edx
	subl	%ebp, %edx
	movl	%eax, 8(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$2151, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ebx)
	cmpw	$4096, %si
	ja	L862
	movzwl	24(%ebp,%edi), %eax
	cmpw	$4096, %ax
	je	L862
	cmpw	%ax, %si
	je	L862
	movl	32(%esp), %ebp
	movl	%ebp, %eax
	call	_do_deletespritesect
	movl	%ebp, %eax
	movswl	%si, %edx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %ebp
L862:
	movl	40(%esp), %esi
	subl	%ebp, %esi
	movl	$-1171354717, %ebp
	movl	%esi, %eax
	mull	%ebp
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	_wall, %edx
	andw	$-258, 12(%ebx)
	addl	%edx, %eax
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
	movl	$1, _clipmoveboxtracenum
	leal	512(%eax), %ecx
	movl	%edx, %eax
	mull	%ebp
	andl	$2047, %ecx
	leal	512(%ecx), %eax
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movswl	_sintable(%eax,%eax), %edx
	movswl	_sintable(%ecx,%ecx), %eax
	movzwl	24(%ebx), %ecx
	movl	%ebx, (%esp)
	sall	$4, %edx
	movl	$1090519104, 28(%esp)
	sall	$4, %eax
	movl	$0, 24(%esp)
	movl	%eax, 12(%esp)
	leal	50(%esp), %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movw	%cx, 50(%esp)
	call	_clipmove
	movzwl	50(%esp), %esi
	movl	$3, _clipmoveboxtracenum
	cmpw	%si, 24(%ebx)
	je	L871
	cmpw	$4096, %si
	ja	L871
	movl	_sprite, %eax
	movzwl	24(%eax,%edi), %eax
	cmpw	$4096, %ax
	je	L871
	cmpw	%ax, %si
	je	L871
	movl	32(%esp), %edi
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%si, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	addl	$68, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L872:
	.cfi_restore_state
	cmpw	$16383, 10(%edx)
	ja	L857
	.p2align 4
	.p2align 3
L871:
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
L855:
	addl	$68, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L873:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$44, %edx
	movswl	%si, %eax
	call	__Z17COVERinsertspritess
	movswl	_HoleQueueHead, %ebx
	movl	%eax, %ecx
	movl	%eax, %edx
	movw	%cx, _HoleQueue(%ebx,%ebx)
	movl	%ebx, %eax
	jmp	L858
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z14QueueWallBloodss
	.def	__Z14QueueWallBloodss;	.scl	2;	.type	32;	.endef
__Z14QueueWallBloodss:
LFB59:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	_User(,%ebx,4), %eax
	movl	68(%eax), %eax
	andl	$1073741824, %eax
	movl	%eax, 32(%esp)
	jne	L877
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	movswl	24(%ebx), %ecx
	leal	(%ecx,%ecx,4), %eax
	sall	$3, %eax
	addl	_sector, %eax
	testw	$896, 38(%eax)
	jne	L877
	movl	_randomseed, %eax
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	%esi, 72(%esp)
	leal	(%eax,%eax,4), %edx
	movl	%edi, 76(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%ebx), %edi
	leal	1(%eax,%edx,4), %eax
	addl	$2, _krandcount
	movzwl	%ax, %eax
	subl	$7680, %edi
	leal	(%eax,%eax,4), %esi
	movl	%eax, %edx
	leal	1(%eax,%esi,4), %eax
	movl	4(%ebx), %esi
	sall	$11, %edx
	movzwl	%ax, %eax
	andl	$260096, %edx
	movl	%eax, _randomseed
	sarl	$5, %eax
	subl	$131072, %edx
	movl	%esi, 36(%esp)
	movl	(%ebx), %esi
	andl	$127, %eax
	leal	-64(%eax,%ebp), %eax
	movl	%edx, 12(%esp)
	movl	%esi, 40(%esp)
	leal	48(%esp), %esi
	movl	%esi, 16(%esp)
	movl	%eax, %esi
	addl	$512, %eax
	andl	$2047, %esi
	andl	$2047, %eax
	movswl	_sintable(%esi,%esi), %edx
	movl	%edx, 8(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, (%esp)
	movl	36(%esp), %edx
	movl	%edi, %ecx
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movswl	64(%esp), %ecx
	testw	%cx, %cx
	js	L901
	movl	(%ebx), %edx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	subl	%esi, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebx
	cmpl	$2500, %ebx
	jg	L901
	cmpw	$0, 60(%esp)
	jns	L898
	movswl	62(%esp), %eax
	testw	%ax, %ax
	js	L901
	sall	$5, %eax
	addl	_wall, %eax
	testb	$-128, 30(%eax)
	jne	L901
	testb	$1, 14(%eax)
	jne	L903
L878:
	movswl	_WallBloodQueueHead, %eax
	movswl	_WallBloodQueue(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L879
	call	__Z10KillSprites
	movl	52(%esp), %edi
	movl	48(%esp), %esi
	movswl	64(%esp), %ecx
L879:
	movl	_randomseed, %eax
	movl	56(%esp), %ebx
	movl	%edi, 8(%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	movl	$0, 20(%esp)
	leal	1(%eax,%edx,4), %eax
	movswl	%bp, %edx
	movl	%ebx, 12(%esp)
	movzwl	%ax, %eax
	movl	%edx, 16(%esp)
	movl	%eax, _randomseed
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	cmpl	$65535, %eax
	je	L880
	sall	$14, %eax
	cmpl	$806342639, %eax
	ja	L880
	movl	$_s_WallBlood2, %ecx
	movl	$2501, %edx
	cmpl	$537911279, %eax
	ja	L902
	cmpl	$135264239, %eax
	jbe	L884
	movl	$_s_WallBlood3, %ecx
	movl	$2502, %edx
L902:
	movl	$39, %eax
	movl	$-1171354717, %esi
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	_WallBloodQueueHead, %edx
	movswl	%ax, %edi
	imull	$44, %edi, %ebp
	movl	%edx, %eax
	movw	%di, _WallBloodQueue(%edx,%edx)
	movl	_sprite, %ecx
	addl	$1, %eax
	andl	$31, %eax
	movw	%ax, _WallBloodQueueHead
	leal	30(%ebp), %eax
	leal	(%ecx,%ebp), %ebx
	mull	%esi
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 30(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$30, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ebx), %edx
	subl	%ecx, %edx
	movb	$40, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 23(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 22(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 18(%ebx)
	movl	%edx, %eax
	mull	%esi
	leal	16(%ebx), %eax
	movl	%eax, 36(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ebx)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	leal	12(%ebx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$0, 17(%ebx)
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	movl	%ebx, %eax
	subl	%ecx, %eax
	mull	%esi
	movl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%eax, (%ebx)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movl	%eax, 8(%ebx)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%ecx, %edx
	subb	$5, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	movzwl	62(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movw	%ax, 34(%ebx)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 12(%ebx)
	movl	_wall, %ecx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movswl	62(%esp), %eax
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	$1, _clipmoveboxtracenum
	leal	512(%eax), %ecx
	movl	%edx, %eax
	mull	%esi
	andl	$2047, %ecx
	leal	512(%ecx), %eax
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movswl	_sintable(%eax,%eax), %edx
	movswl	_sintable(%ecx,%ecx), %eax
	movzwl	24(%ebx), %ecx
	movl	%ebx, (%esp)
	sall	$4, %edx
	movl	$1090519104, 28(%esp)
	sall	$4, %eax
	movl	$0, 24(%esp)
	movl	%eax, 12(%esp)
	leal	46(%esp), %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movw	%cx, 46(%esp)
	call	_clipmove
	movzwl	46(%esp), %esi
	movl	$3, _clipmoveboxtracenum
	cmpw	%si, 24(%ebx)
	je	L885
	cmpw	$4096, %si
	ja	L885
	movl	_sprite, %eax
	movzwl	24(%eax,%ebp), %eax
	cmpw	%ax, %si
	je	L885
	cmpw	$4096, %ax
	je	L885
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%si, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
L885:
	movl	72(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	%edi, 32(%esp)
	movl	68(%esp), %ebx
	movl	32(%esp), %eax
	movl	76(%esp), %edi
	.cfi_restore 7
	addl	$84, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L903:
	.cfi_restore_state
	cmpw	$16383, 10(%eax)
	ja	L878
L901:
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
L877:
	movl	$-1, 32(%esp)
	movl	68(%esp), %ebx
	movl	32(%esp), %eax
	addl	$84, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L898:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	32(%esp), %eax
	movl	72(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	68(%esp), %ebx
	addl	$84, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L884:
	.cfi_restore_state
	movl	$_s_WallBlood4, %ecx
	movl	$2503, %edx
	jmp	L902
	.p2align 4,,10
	.p2align 3
L880:
	movl	$_s_WallBlood1, %ecx
	movl	$2500, %edx
	jmp	L902
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z21UpdateSinglePlayKillss.part.0
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
__Z21UpdateSinglePlayKillss.part.0:
LFB61:
	.cfi_startproc
	cwtl
	movl	_User(,%eax,4), %eax
	testb	$-128, 69(%eax)
	jne	L904
	movzwl	82(%eax), %ecx
	cmpw	$1580, %cx
	je	L906
	jg	L907
	cmpw	$1300, %cx
	je	L906
	jle	L959
	cmpw	$1441, %cx
	je	L906
	jg	L910
	cmpw	$1367, %cx
	je	L906
	cmpw	$1400, %cx
	je	L906
L904:
	ret
	.p2align 4,,10
	.p2align 3
L907:
	cmpw	$4277, %cx
	je	L906
	jg	L911
	cmpw	$4096, %cx
	je	L906
	jg	L912
	cmpw	$2355, %cx
	je	L906
	cmpw	$3780, %cx
	jne	L904
L906:
	addw	$1, _Player+23236
	ret
	.p2align 4,,10
	.p2align 3
L959:
	cmpw	$820, %cx
	jg	L909
	cmpw	$799, %cx
	jle	L904
	movl	$1179649, %eax
	shrl	%cl, %eax
	testb	$1, %al
	jne	L906
	ret
	.p2align 4,,10
	.p2align 3
L911:
	cmpw	$5162, %cx
	je	L906
	cmpw	$5426, %cx
	je	L906
	cmpw	$4320, %cx
	je	L906
	ret
	.p2align 4,,10
	.p2align 3
L912:
	cmpw	$4162, %cx
	je	L906
	ret
	.p2align 4,,10
	.p2align 3
L910:
	cmpw	$1469, %cx
	je	L906
	ret
	.p2align 4,,10
	.p2align 3
L909:
	cmpw	$1210, %cx
	je	L906
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z13InitSpellRingP12PLAYERstruct.part.0
	.def	__Z13InitSpellRingP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z13InitSpellRingP12PLAYERstruct.part.0:
LFB62:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$-10, %ecx
	movl	$8, %edx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebx, 28(%esp)
	movl	%edi, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	300(%esi), %ebx
	movl	%ebx, %edi
	sarl	$31, %edi
	xorw	%di, %di
	addl	$32768, %edi
	testb	$1, _SW_GameFlags
	je	L975
L962:
	movswl	268(%esi), %eax
	testw	%ax, %ax
	js	L960
	leal	(%ebx,%edi), %ecx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	testl	%ecx, %ecx
	leal	65535(%ecx), %edx
	cmovns	%ecx, %edx
	sarl	$16, %edx
	subw	$1024, %dx
	andw	$2047, %dx
	leal	1920(%edx), %ecx
	movw	%dx, 24(%esp)
	movw	%cx, 26(%esp)
	jmp	L967
	.p2align 4,,10
	.p2align 3
L976:
	subw	$-128, %ax
	movw	%ax, 24(%esp)
	movswl	268(%esi), %eax
L967:
	movswl	24(%esp), %edx
	movl	$0, 20(%esp)
	movl	$_s_Ring, %ecx
	movl	%edx, 16(%esp)
	movl	8(%esi), %edx
	movl	%edx, 12(%esp)
	movl	4(%esi), %edx
	movl	%edx, 8(%esp)
	movl	(%esi), %edx
	movl	%eax, (%esp)
	movl	$7, %eax
	movl	%edx, 4(%esp)
	movl	$2010, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	leal	(%ecx,%eax), %ebx
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	$500, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	352(%esi), %eax
	subl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z8SetOwnerss
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$32, 20(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$32, 21(%ebx)
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 36(%ebx)
	movl	_User(,%edi,4), %ecx
	movl	$800, %eax
	movw	%ax, 212(%ecx)
	movl	$5120, 256(%ecx)
	movl	$16, 176(%ecx)
	movl	$167774720, 96(%ecx)
	movswl	28(%ebx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	subl	_sprite, %edx
	movswl	_sintable(%eax,%eax), %edi
	movl	%edx, %eax
	mull	%ebp
	imull	$800, %edi, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	sarl	$14, %edi
	leal	4(%ebx), %edx
	addl	%edi, (%ebx)
	subl	_sprite, %edx
	movswl	_sintable(%eax,%eax), %edi
	movswl	212(%ecx), %eax
	imull	%eax, %edi
	movl	%edx, %eax
	mull	%ebp
	sarl	$14, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%edi, 4(%ebx)
	movl	288(%esi), %edx
	movl	8(%esi), %edi
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	movswl	212(%ecx), %edx
	imull	%edx, %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	sall	$7, %eax
	sarl	$9, %eax
	leal	5120(%edi,%eax), %edi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	%edi, 8(%ebx)
	movswl	28(%ebx), %edi
	mull	%ebp
	addl	$512, %edi
	andl	$2047, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movw	%di, 28(%ebx)
	movl	%eax, 56(%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 60(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 64(%ecx)
	testb	$2, 22970(%esi)
	jne	L965
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L966
L965:
	orl	$1073741824, 68(%ecx)
L966:
	movzwl	24(%esp), %eax
	cmpw	26(%esp), %ax
	jne	L976
	movl	40(%esp), %ebp
	.cfi_restore 5
L960:
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
L975:
	.cfi_restore_state
	leal	8(%esi), %eax
	movl	$0, 4(%esp)
	leal	4(%esi), %ecx
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	$32, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L962
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z13SpawnSplashXYiiis.part.0
	.def	__Z13SpawnSplashXYiiis.part.0;	.scl	2;	.type	32;	.endef
__Z13SpawnSplashXYiiis.part.0:
LFB63:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 40
	movswl	40(%esp), %eax
	movl	_SectUser(,%eax,4), %esi
	testl	%esi, %esi
	je	L978
	movl	_sector, %esi
	leal	(%eax,%eax,4), %edx
	leal	(%esi,%edx,8), %esi
	testb	$12, 39(%esi)
	je	L977
	testb	$1, 14(%esi)
	jne	L977
	movl	%ecx, 12(%esp)
	movl	$772, %edx
	movl	$_s_Splash, %ecx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%edi, 8(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movzwl	38(%esi), %edx
	movl	_sprite, %ebx
	cwtl
	imull	$44, %eax, %ecx
	andw	$3072, %dx
	addl	%ebx, %ecx
	cmpw	$1024, %dx
	jne	L981
	leal	17(%ecx), %edx
	movl	_User(,%eax,4), %esi
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$14, 17(%ecx)
	movb	$14, 262(%esi)
L981:
	leal	20(%ecx), %edx
	movl	$-1171354717, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movb	$45, 20(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	movl	_sector, %edx
	movb	$42, 21(%ecx)
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	leal	16(%ecx), %edx
	subl	%ebx, %edx
	movzbl	28(%eax), %edi
	movl	%edx, %eax
	mull	%esi
	leal	-10(%edi), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 16(%ecx)
L977:
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
L978:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	movl	$_s_Splash, %ecx
	movl	%edx, 8(%esp)
	movl	$772, %edx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	$4, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ecx
	imull	$44, %ecx, %ecx
	addl	%ebx, %ecx
	jmp	L981
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z13SpawnSplashXYiiis
	.def	__Z13SpawnSplashXYiiis;	.scl	2;	.type	32;	.endef
__Z13SpawnSplashXYiiis:
LFB64:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L992
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movswl	20(%esp), %eax
	movl	16(%esp), %ecx
	movl	12(%esp), %edx
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L992:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z11InitPalettev
	.def	__Z11InitPalettev;	.scl	2;	.type	32;	.endef
__Z11InitPalettev:
LFB65:
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
	movswl	_numshades, %eax
	movl	$_DefaultPalette, (%esp)
	sall	$8, %eax
	movl	%eax, 8(%esp)
	movl	_palookup, %eax
	movl	%eax, 4(%esp)
	call	_memcpy
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L996:
	movb	%al, __ZL7tempbuf(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf(%edx)
	cmpl	$256, %eax
	jne	L996
	movzbl	_paletteloaded, %ecx
	testb	%cl, %cl
	je	L997
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$9, %eax
	movl	$60, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ecx
L997:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L998:
	movb	%al, __ZL7tempbuf(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf(%edx)
	cmpl	$256, %eax
	jne	L998
	testb	%cl, %cl
	je	L999
	movl	$60, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$1, %eax
	movl	$1, 8(%esp)
	movl	$60, 4(%esp)
	movl	$60, (%esp)
	call	_paletteMakeLookupTable.part.0
	movzbl	_paletteloaded, %ecx
L999:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1000:
	movb	%al, __ZL7tempbuf(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf(%edx)
	cmpl	$256, %eax
	jne	L1000
	testb	%cl, %cl
	je	L1001
	movl	$44, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$5, %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1001:
	movl	__ZZ11InitPalettevE11BrownRipper, %edx
	movl	$1, %ecx
	movl	$7, %eax
	call	__Z9MapColorss9COLOR_MAPs
	cmpb	$0, _paletteloaded
	je	L1002
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$7, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1002:
	movl	__ZZ11InitPalettevE8SkelGore, %edx
	movl	$1, %ecx
	movl	$10, %eax
	call	__Z9MapColorss9COLOR_MAPs
	cmpb	$0, _paletteloaded
	je	L1003
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$10, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1003:
	movl	__ZZ11InitPalettevE11ElectroGore, %edx
	movl	$1, %ecx
	movl	$3, %eax
	call	__Z9MapColorss9COLOR_MAPs
	cmpb	$0, _paletteloaded
	je	L1004
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$3, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1004:
	movl	__ZZ11InitPalettevE13MenuHighlight, %edx
	movl	$1, %ecx
	movl	$2, %eax
	call	__Z9MapColorss9COLOR_MAPs
	cmpb	$0, _paletteloaded
	je	L1005
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$2, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1005:
	movl	$1, %ecx
	movl	$4, %eax
	movl	$1, %ebx
	movl	__ZZ11InitPalettevE10NinjaBasic, %edx
	call	__Z9MapColorss9COLOR_MAPs
L1007:
	movzbl	__ZZ11InitPalettevE10NinjaBasic+1(,%ebx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE10NinjaBasic(,%ebx,4), %ecx
	movzbl	__ZZ11InitPalettevE10NinjaBasic+2(,%ebx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10NinjaBasic+3(,%ebx,4), %eax
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1006:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L1006
	addl	$1, %ebx
	cmpl	$6, %ebx
	jne	L1007
	cmpb	$0, _paletteloaded
	je	L1008
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$4, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1008:
	movl	__ZZ11InitPalettevE8NinjaRed, %edx
	movl	$1, %ecx
	movl	$6, %eax
	call	__Z9MapColorss9COLOR_MAPs
	movl	$1, %ecx
L1010:
	movzbl	__ZZ11InitPalettevE8NinjaRed+1(,%ecx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE8NinjaRed(,%ecx,4), %ebx
	movzbl	__ZZ11InitPalettevE8NinjaRed+2(,%ecx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE8NinjaRed+3(,%ecx,4), %eax
	cvtsi2ssl	%ebx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1009:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	L1009
	addl	$1, %ecx
	cmpl	$4, %ecx
	jne	L1010
	cmpb	$0, _paletteloaded
	je	L1011
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$6, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1011:
	movl	__ZZ11InitPalettevE10NinjaGreen, %edx
	movl	$1, %ecx
	movl	$8, %eax
	call	__Z9MapColorss9COLOR_MAPs
	movl	$1, %ecx
L1013:
	movzbl	__ZZ11InitPalettevE10NinjaGreen+1(,%ecx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	movzbl	__ZZ11InitPalettevE10NinjaGreen(,%ecx,4), %ebx
	movzbl	__ZZ11InitPalettevE10NinjaGreen+2(,%ecx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10NinjaGreen+3(,%ecx,4), %eax
	cvtsi2ssl	%ebx, %xmm0
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1012:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	L1012
	addl	$1, %ecx
	cmpl	$4, %ecx
	jne	L1013
	cmpb	$0, _paletteloaded
	je	L1014
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$8, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1014:
	movl	$1, %ecx
	movl	$11, %eax
	movl	$1, %ebx
	movl	__ZZ11InitPalettevE10AllToGreen, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L1017:
	movzbl	__ZZ11InitPalettevE10AllToGreen(,%ebx,4), %ecx
	testb	%cl, %cl
	je	L1015
	movzbl	__ZZ11InitPalettevE10AllToGreen+1(,%ebx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE10AllToGreen+2(,%ebx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10AllToGreen+3(,%ebx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1016:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L1016
L1015:
	addl	$1, %ebx
	cmpl	$12, %ebx
	jne	L1017
	cmpb	$0, _paletteloaded
	je	L1018
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$11, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1018:
	movl	$1, %ecx
	movl	$14, %eax
	movl	$1, %ebx
	movl	__ZZ11InitPalettevE8AllToRed, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L1021:
	movzbl	__ZZ11InitPalettevE8AllToRed(,%ebx,4), %ecx
	testb	%cl, %cl
	je	L1019
	movzbl	__ZZ11InitPalettevE8AllToRed+1(,%ebx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE8AllToRed+2(,%ebx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE8AllToRed+3(,%ebx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1020:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L1020
L1019:
	addl	$1, %ebx
	cmpl	$11, %ebx
	jne	L1021
	cmpb	$0, _paletteloaded
	je	L1022
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$14, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1022:
	movl	$1, %ecx
	movl	$13, %eax
	movl	$1, %ebx
	movl	__ZZ11InitPalettevE9AllToBlue, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L1025:
	movzbl	__ZZ11InitPalettevE9AllToBlue(,%ebx,4), %ecx
	testb	%cl, %cl
	je	L1023
	movzbl	__ZZ11InitPalettevE9AllToBlue+1(,%ebx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE9AllToBlue+2(,%ebx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE9AllToBlue+3(,%ebx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1024:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L1024
L1023:
	addl	$1, %ebx
	cmpl	$11, %ebx
	jne	L1025
	cmpb	$0, _paletteloaded
	je	L1026
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$13, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1026:
	movl	$1, %ecx
	movl	$32, %eax
	movl	$1, %ebx
	movl	__ZZ11InitPalettevE10Illuminate, %edx
	call	__Z9MapColorss9COLOR_MAPs
	.p2align 4
	.p2align 3
L1029:
	movzbl	__ZZ11InitPalettevE10Illuminate(,%ebx,4), %ecx
	testb	%cl, %cl
	je	L1027
	movzbl	__ZZ11InitPalettevE10Illuminate+1(,%ebx,4), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm0
	movzbl	__ZZ11InitPalettevE10Illuminate+2(,%ebx,4), %esi
	cvtsi2ssl	%eax, %xmm1
	movzbl	__ZZ11InitPalettevE10Illuminate+3(,%ebx,4), %eax
	cvtsi2ssl	%eax, %xmm2
	xorl	%eax, %eax
	divss	%xmm0, %xmm1
	.p2align 6
	.p2align 4
	.p2align 3
L1028:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	movb	%dl, __ZL7tempbuf(%esi,%eax)
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L1028
L1027:
	addl	$1, %ebx
	cmpl	$14, %ebx
	jne	L1029
	cmpb	$0, _paletteloaded
	je	L1030
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$32, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L1030:
	movl	$16, %ebx
	.p2align 4
	.p2align 3
L1032:
	movl	__ZL14PlayerColorMap-64(,%ebx,4), %edi
	movl	$1, %ecx
	movswl	%bx, %eax
	movl	%edi, %edx
	call	__Z9MapColorss9COLOR_MAPs
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movswl	%bx, %eax
	call	__Z9MapColorss9COLOR_MAPs
	cmpb	$0, _paletteloaded
	je	L1031
	movl	$0, (%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	%ebx, %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	call	_paletteMakeLookupTable.part.0
L1031:
	addl	$1, %ebx
	cmpl	$31, %ebx
	jne	L1032
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1033:
	movb	%al, __ZL7tempbuf(%eax)
	leal	1(%eax), %edx
	addl	$2, %eax
	movb	%dl, __ZL7tempbuf(%edx)
	cmpl	$256, %eax
	jne	L1033
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1034:
	movl	$64, %edx
	subl	%eax, %edx
	addl	$1, %eax
	movb	%dl, __ZL7tempbuf+31(%eax)
	cmpl	$32, %eax
	jne	L1034
	cmpb	$0, _paletteloaded
	je	L995
	movl	$1, 8(%esp)
	xorl	%ecx, %ecx
	movl	$__ZL7tempbuf, %edx
	movl	$15, %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_paletteMakeLookupTable.part.0
L995:
	addl	$12, %esp
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
LFE65:
	.p2align 4
	.globl	__Z18GetPaletteFromVESAPh
	.def	__Z18GetPaletteFromVESAPh;	.scl	2;	.type	32;	.endef
__Z18GetPaletteFromVESAPh:
LFB68:
	.cfi_startproc
	xorl	%edx, %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1083:
	movzbl	_curpalette(,%edx,4), %ecx
	addl	$3, %eax
	movb	%cl, -3(%eax)
	movzbl	_curpalette+1(,%edx,4), %ecx
	movb	%cl, -2(%eax)
	movzbl	_curpalette+2(,%edx,4), %ecx
	addl	$1, %edx
	movb	%cl, -1(%eax)
	cmpl	$256, %edx
	jne	L1083
	ret
	.cfi_endproc
LFE68:
	.section .rdata,"dr"
LC5:
	.ascii "InstallLocation\0"
	.align 4
LC6:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 225160\0"
	.align 4
LC7:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 238070\0"
LC8:
	.ascii "/gameroot\0"
LC9:
	.ascii "/gameroot/addons\0"
LC10:
	.ascii "/gameroot/classic\0"
LC11:
	.ascii "/gameroot/classic/MUSIC\0"
LC12:
	.ascii "PATH\0"
	.align 4
LC13:
	.ascii "SOFTWARE\\GOG.com\\Games\\1618073558\0"
LC14:
	.ascii "/gameroot/MUSIC\0"
	.align 4
LC15:
	.ascii "SOFTWARE\\GOG.com\\Games\\1207659142\0"
LC16:
	.ascii "%s/addons\0"
LC17:
	.ascii "%s/music\0"
	.align 4
LC18:
	.ascii "SOFTWARE\\GOG.com\\GOGSHADOWARRIOR\0"
LC19:
	.ascii "%s/MUSIC\0"
LC20:
	.ascii "InstallPath\0"
	.align 4
LC21:
	.ascii "SOFTWARE\\ZOOM PLATFORM\\Shadow Warrior Classic Complete\0"
	.align 4
LC22:
	.ascii "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App 358400\0"
LC23:
	.ascii "/Shadow Warrior\0"
	.align 4
LC24:
	.ascii "SOFTWARE\\3DRealms\\Shadow Warrior\0"
LC25:
	.ascii "SOFTWARE\\3DRealms\\Anthology\0"
	.text
	.p2align 4
	.globl	__ZL17SW_AddSearchPathsv.lto_priv.0
	.def	__ZL17SW_AddSearchPathsv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17SW_AddSearchPathsv.lto_priv.0:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$532, %esp
	.cfi_def_cfa_offset 552
L1086:
	movl	$0, 20(%esp,%eax)
	movl	$0, 24(%esp,%eax)
	movl	$0, 28(%esp,%eax)
	movl	$0, 32(%esp,%eax)
	addl	$16, %eax
	cmpl	$256, %eax
	jb	L1086
	leal	16(%esp), %esi
	leal	20(%esp), %ebx
	movl	$LC5, %edx
	movl	$LC6, %eax
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L1088
	.p2align 4
	.p2align 3
L1092:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC5, %edx
	movl	$LC7, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L1090
	movl	16(%esp), %eax
	movl	$256, %edi
	movl	$LC8, 4(%esp)
	subl	%eax, %edi
	leal	-1(%ebx,%eax), %ebp
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L1085
L1090:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC12, %edx
	movl	$LC13, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L1094
	leal	276(%esp), %edi
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	__imp___snprintf, %ebp
	movl	%edi, (%esp)
	movl	%ebx, 12(%esp)
	movl	$LC16, 8(%esp)
	movl	$256, 4(%esp)
	call	*%ebp
	movl	$1, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	movl	%ebx, 12(%esp)
	movl	$LC17, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebp
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L1085
L1094:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC12, %edx
	movl	$LC15, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L1096
	movl	$1, %edx
	leal	276(%esp), %edi
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%ebx, 12(%esp)
	movl	$LC19, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L1085
L1096:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC12, %edx
	movl	$LC18, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L1098
	movl	$1, %edx
	leal	276(%esp), %edi
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%ebx, 12(%esp)
	movl	$LC19, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L1085
L1098:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC20, %edx
	movl	$LC21, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	je	L1100
	movl	$1, %edx
	leal	276(%esp), %edi
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%ebx, 12(%esp)
	movl	$LC19, 8(%esp)
	movl	$256, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp___snprintf
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	je	L1085
L1100:
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	movl	$LC5, %edx
	movl	$LC22, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L1130
L1102:
	movl	%esi, (%esp)
	xorl	%edx, %edx
	movl	%ebx, %ecx
	movl	$LC24, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L1131
L1103:
	movl	%esi, (%esp)
	xorl	%edx, %edx
	movl	%ebx, %ecx
	movl	$LC25, %eax
	movl	$256, 16(%esp)
	call	_Paths_ReadRegistryValue.constprop.0
	testl	%eax, %eax
	jne	L1132
L1085:
	addl	$532, %esp
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
L1088:
	.cfi_restore_state
	movl	16(%esp), %eax
	movl	$256, %edi
	movl	$LC8, 4(%esp)
	subl	%eax, %edi
	leal	-1(%ebx,%eax), %ebp
	movl	%edi, 8(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC9, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	movl	$1, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	movl	%edi, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	%ebp, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	testl	%eax, %eax
	jne	L1092
	addl	$532, %esp
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
L1130:
	.cfi_restore_state
	movl	16(%esp), %edx
	movl	$256, %eax
	movl	$LC23, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	jmp	L1102
	.p2align 4,,10
	.p2align 3
L1132:
	movl	16(%esp), %edx
	movl	$256, %eax
	movl	$LC23, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	_addsearchpath_user
	addl	$532, %esp
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
L1131:
	.cfi_restore_state
	movl	16(%esp), %edx
	movl	$256, %eax
	movl	$LC23, 4(%esp)
	subl	%edx, %eax
	movl	%eax, 8(%esp)
	leal	-1(%ebx,%edx), %eax
	movl	%eax, (%esp)
	call	_strncpy
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	_addsearchpath_user
	jmp	L1103
	.cfi_endproc
LFE69:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "Could not find main data file \"%s\"!\0"
LC27:
	.ascii "source/sw/src/common.cpp\0"
	.align 4
LC28:
	.ascii "Using \"%s\" as main game data file.\0"
	.text
	.p2align 4
	.globl	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0
	.def	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0:
LFB72:
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
	je	L1145
	testl	%eax, %eax
	jns	L1146
	testl	%ebx, %ebx
	je	L1133
L1147:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L1137
	movl	%edi, (%esp)
	call	*%eax
L1137:
	movzwl	12(%ebx), %eax
	orb	%al, _SW_GameFlags
L1133:
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
L1146:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$482, 8(%esp)
	movl	$LC27, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	testl	%ebx, %ebx
	jne	L1147
	jmp	L1133
	.p2align 4,,10
	.p2align 3
L1145:
	cmpl	$-1, %eax
	jl	L1133
	movl	%esi, 16(%esp)
	movl	$LC26, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC27, 4(%esp)
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
LFE72:
	.p2align 4
	.globl	__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0
	.def	__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0:
LFB74:
	.cfi_startproc
	testl	%eax, %eax
	je	L1149
	movl	%eax, %edx
	movl	4(%eax), %eax
	testb	$1, 14(%eax)
	je	L1160
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%eax), %ebx
	cmpl	4(%eax), %ebx
	je	L1151
	movl	_foundgrps, %eax
	testl	%eax, %eax
	jne	L1154
	jmp	L1153
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1163:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1153
L1154:
	movl	4(%eax), %ecx
	cmpl	4(%ecx), %ebx
	jne	L1163
L1153:
	movl	%edx, (%esp)
	call	__ZL25SW_LoadGrpDependencyChainPK7grpfile.lto_priv.0
	movl	(%esp), %edx
	movl	4(%edx), %eax
L1151:
	movl	(%edx), %ecx
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%eax, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	jmp	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0
	.p2align 4,,10
	.p2align 3
L1160:
	movl	(%edx), %ecx
	movl	%eax, %edx
	movl	%ecx, %eax
	jmp	__ZL16SW_TryLoadingGrpPKcPK15internalgrpfile.lto_priv.0
L1149:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE74:
	.section .rdata,"dr"
LC29:
	.ascii "software\0"
LC30:
	.ascii "OpenGL\0"
LC33:
	.ascii "%dx%d %s\0"
LC34:
	.ascii "%s\11%s\0"
	.text
	.p2align 4
	.globl	__ZL12PopulateFormi.lto_priv.0
	.def	__ZL12PopulateFormi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12PopulateFormi.lto_priv.0:
LFB76:
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
	subl	$576, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -556(%ebp)
	movl	$101, 4(%esp)
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	movl	__imp__GetDlgItem@8, %eax
	movl	%eax, -552(%ebp)
	call	*%eax
	movl	$__ZL8settings.lto_priv.0+20, %edx
	subl	$8, %esp
	movl	%eax, %esi
	movl	$1, 4(%esp)
	movl	__ZL8settings.lto_priv.0+12, %eax
	movl	%eax, (%esp)
	movl	__ZL8settings.lto_priv.0+24, %ecx
	movl	$__ZL8settings.lto_priv.0+16, %eax
	call	_videoCheckMode
	movl	__ZL8settings.lto_priv.0+24, %ecx
	movl	%eax, -544(%ebp)
	cmpl	$-1, %eax
	je	L1165
	cmpl	$14, %ecx
	jle	L1206
L1167:
	movl	__ZL8settings.lto_priv.0+12, %edi
	movl	$100, 4(%esp)
	xorl	%ebx, %ebx
	movl	__ZL5pages, %eax
	testl	%edi, %edi
	setne	%bl
	movl	%eax, (%esp)
	movl	-552(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	%ebx, 8(%esp)
	movl	__imp__SendMessageA@16, %ebx
	movl	$0, 12(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	movl	__ZL8settings.lto_priv.0+36, %edx
	xorl	%eax, %eax
	subl	$16, %esp
	testl	%edx, %edx
	movl	$108, 4(%esp)
	setne	%al
	movl	%eax, %edi
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	movl	-552(%ebp), %eax
	call	*%eax
	subl	$8, %esp
	movl	$0, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$331, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	movl	_validmodecnt, %ecx
	subl	$16, %esp
	testl	%ecx, %ecx
	jle	L1177
	movl	$_validmode, %edx
	xorl	%edi, %edi
	jmp	L1180
	.p2align 4,,10
	.p2align 3
L1208:
	movl	__ZL8settings.lto_priv.0+36, %ecx
	testl	%ecx, %ecx
	jne	L1178
	cmpb	$8, %al
	movl	$LC30, %ecx
	movl	$LC29, %eax
	cmovne	%ecx, %eax
L1179:
	movl	%eax, 16(%esp)
	movl	4(%edx), %eax
	movl	%eax, 12(%esp)
	movl	(%edx), %eax
	movl	%edx, -540(%ebp)
	movl	%eax, 8(%esp)
	leal	-536(%ebp), %eax
	movl	$LC33, 4(%esp)
	movl	%eax, (%esp)
	call	_sprintf
	leal	-536(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$323, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	%eax, -548(%ebp)
	movl	%edi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$337, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	movl	-540(%ebp), %edx
	subl	$16, %esp
	cmpl	%edi, -544(%ebp)
	je	L1207
L1178:
	addl	$1, %edi
	addl	$16, %edx
	cmpl	%edi, _validmodecnt
	jle	L1177
L1180:
	movzbl	9(%edx), %eax
	cmpl	__ZL8settings.lto_priv.0+12, %eax
	jne	L1178
	movzbl	8(%edx), %eax
	cmpb	$14, %al
	jbe	L1208
	movl	$LC30, %eax
	jmp	L1179
	.p2align 4,,10
	.p2align 3
L1177:
	cmpl	$-1, -556(%ebp)
	jne	L1164
	movl	__ZL8settings.lto_priv.0+28, %edx
	xorl	%eax, %eax
	movl	$105, 4(%esp)
	testl	%edx, %edx
	setne	%al
	movl	%eax, %esi
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	movl	-552(%ebp), %edi
	call	*%edi
	subl	$8, %esp
	movl	%esi, 8(%esp)
	movl	$0, 12(%esp)
	movl	$241, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	$110, 4(%esp)
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	call	*%edi
	xorl	%edi, %edi
	subl	$8, %esp
	movl	%eax, %esi
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$331, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$334, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
L1189:
	movl	_controlstrings(,%edi,4), %eax
	movl	%edi, 8(%esp)
	movl	$330, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	%edi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$337, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	cmpl	$2, %edi
	je	L1182
	cmpl	$3, %edi
	je	L1183
	cmpl	$1, %edi
	jne	L1194
	movl	__ZL8settings.lto_priv.0+8, %eax
	testl	%eax, %eax
	je	L1185
	movl	__ZL8settings.lto_priv.0+4, %eax
	testl	%eax, %eax
	je	L1209
L1185:
	addl	$1, %edi
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1183:
	movl	__ZL8settings.lto_priv.0+8, %edx
	testl	%edx, %edx
	jne	L1210
L1188:
	movl	$106, 4(%esp)
	movl	__ZL5pages, %eax
	movl	%eax, (%esp)
	movl	-552(%ebp), %eax
	call	*%eax
	movl	_foundgrps, %esi
	subl	$8, %esp
	movl	%eax, %edi
	testl	%esi, %esi
	jne	L1191
L1164:
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
L1207:
	.cfi_restore_state
	movl	$0, 12(%esp)
	movl	-548(%ebp), %eax
	movl	$334, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	movl	-540(%ebp), %edx
	subl	$16, %esp
	jmp	L1178
	.p2align 4,,10
	.p2align 3
L1206:
	movl	__ZL8settings.lto_priv.0+36, %ebx
	testl	%ebx, %ebx
	je	L1167
L1165:
	movups	LC31, %xmm0
	movl	$8, %eax
	xorl	%edx, %edx
	movl	%eax, -520(%ebp)
	xorl	%eax, %eax
	movl	%edx, -516(%ebp)
	movl	$32, %edx
	movups	%xmm0, -536(%ebp)
	jmp	L1170
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1211:
	addl	$1, %eax
	movl	-536(%ebp,%eax,4), %edx
	testl	%edx, %edx
	je	L1167
L1170:
	cmpl	%edx, %ecx
	jle	L1211
	movl	-536(%ebp,%eax,4), %edi
	testl	%edi, %edi
	je	L1167
	leal	-532(%ebp,%eax,4), %ebx
L1173:
	movl	$1, 4(%esp)
	movl	__ZL8settings.lto_priv.0+12, %eax
	movl	%edi, %ecx
	movl	$__ZL8settings.lto_priv.0+20, %edx
	movl	%eax, (%esp)
	movl	$__ZL8settings.lto_priv.0+16, %eax
	call	_videoCheckMode
	cmpl	$-1, %eax
	je	L1212
	movl	%eax, -544(%ebp)
	movl	%edi, __ZL8settings.lto_priv.0+24
	jmp	L1167
	.p2align 4,,10
	.p2align 3
L1182:
	movl	__ZL8settings.lto_priv.0+8, %eax
	testl	%eax, %eax
	jne	L1186
	movl	__ZL8settings.lto_priv.0+4, %ecx
	testl	%ecx, %ecx
	jne	L1187
L1186:
	movl	$3, %edi
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1194:
	movl	$1, %edi
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1213:
	movl	$0, 12(%esp)
	movl	-540(%ebp), %eax
	movl	$390, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	*%ebx
	subl	$16, %esp
	.p2align 4
	.p2align 3
L1190:
	movl	8(%esi), %esi
	testl	%esi, %esi
	je	L1164
L1191:
	movl	(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	(%eax), %eax
	movl	$LC34, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-536(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	leal	-536(%ebp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$384, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebx
	subl	$16, %esp
	movl	%eax, -540(%ebp)
	movl	%esi, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$410, 4(%esp)
	movl	%edi, (%esp)
	call	*%ebx
	subl	$16, %esp
	cmpl	%esi, __ZL8settings.lto_priv.0
	jne	L1190
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1210:
	movl	__ZL8settings.lto_priv.0+4, %eax
	testl	%eax, %eax
	je	L1188
	movl	$0, 12(%esp)
	movl	$3, 8(%esp)
	movl	$334, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	jmp	L1188
	.p2align 4,,10
	.p2align 3
L1187:
	movl	$0, 12(%esp)
	movl	$2, 8(%esp)
	movl	$334, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	jmp	L1185
	.p2align 4,,10
	.p2align 3
L1209:
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$334, 4(%esp)
	movl	%esi, (%esp)
	call	*%ebx
	subl	$16, %esp
	jmp	L1185
	.p2align 4,,10
	.p2align 3
L1212:
	movl	(%ebx), %edi
	addl	$4, %ebx
	testl	%edi, %edi
	jne	L1173
	movl	%eax, -544(%ebp)
	jmp	L1167
	.cfi_endproc
LFE76:
	.p2align 4
	.def	__ZL14ConfigPageProcP6HWND__jjl@16;	.scl	3;	.type	32;	.endef
__ZL14ConfigPageProcP6HWND__jjl@16:
LFB77:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$24, %esp
	movl	(%ecx), %edx
	movl	8(%ecx), %eax
	movl	12(%ecx), %ebx
	cmpl	$273, 4(%ecx)
	je	L1215
L1216:
	xorl	%eax, %eax
L1214:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret	$16
	.p2align 4,,10
	.p2align 3
L1215:
	.cfi_restore_state
	movzwl	%ax, %ecx
	subl	$100, %ecx
	cmpl	$10, %ecx
	ja	L1216
	jmp	*L1219(,%ecx,4)
	.section .rdata,"dr"
	.align 4
L1219:
	.long	L1224
	.long	L1223
	.long	L1216
	.long	L1216
	.long	L1216
	.long	L1222
	.long	L1221
	.long	L1216
	.long	L1220
	.long	L1216
	.long	L1218
	.text
	.p2align 4,,10
	.p2align 3
L1218:
	shrl	$16, %eax
	cmpl	$1, %eax
	je	L1251
L1225:
	leal	-8(%ebp), %esp
	movl	$1, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret	$16
	.p2align 4,,10
	.p2align 3
L1224:
	.cfi_restore_state
	movl	__ZL8settings.lto_priv.0+12, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	movl	%eax, __ZL8settings.lto_priv.0+12
	movl	$1, %eax
	call	__ZL12PopulateFormi.lto_priv.0
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1223:
	shrl	$16, %eax
	cmpl	$1, %eax
	jne	L1225
	movl	__imp__SendMessageA@16, %ecx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$327, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, -12(%ebp)
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	%ebx, (%esp)
	movl	-12(%ebp), %ecx
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	sall	$4, %eax
	movlps	_validmode(%eax), %xmm1
	movzbl	_validmode+8(%eax), %eax
	movlps	%xmm1, __ZL8settings.lto_priv.0+16
	movl	%eax, __ZL8settings.lto_priv.0+24
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1222:
	movl	$105, 4(%esp)
	movl	%edx, (%esp)
	call	*__imp__IsDlgButtonChecked@8
	subl	$8, %esp
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, __ZL8settings.lto_priv.0+28
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1221:
	shrl	$16, %eax
	cmpl	$1, %eax
	jne	L1216
	movl	__imp__SendMessageA@16, %ecx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$392, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, -12(%ebp)
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$409, 4(%esp)
	movl	%ebx, (%esp)
	movl	-12(%ebp), %ecx
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	movl	%eax, __ZL8settings.lto_priv.0
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1220:
	movl	__ZL8settings.lto_priv.0+36, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	movl	%eax, __ZL8settings.lto_priv.0+36
	cmpl	$8, __ZL8settings.lto_priv.0+24
	jne	L1226
	movl	$32, __ZL8settings.lto_priv.0+24
L1226:
	movl	$1, %eax
	call	__ZL12PopulateFormi.lto_priv.0
	jmp	L1225
L1251:
	movl	__imp__SendMessageA@16, %ecx
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$327, 4(%esp)
	movl	%ebx, (%esp)
	movl	%ecx, -12(%ebp)
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$336, 4(%esp)
	movl	%ebx, (%esp)
	movl	-12(%ebp), %ecx
	call	*%ecx
	subl	$16, %esp
	cmpl	$-1, %eax
	je	L1225
	cmpl	$2, %eax
	je	L1227
	jg	L1228
	testl	%eax, %eax
	je	L1229
	cmpl	$1, %eax
	jne	L1225
	movlps	LC35, %xmm0
	movlps	%xmm0, __ZL8settings.lto_priv.0+4
	jmp	L1214
L1228:
	cmpl	$3, %eax
	jne	L1225
	movl	$1, %eax
	movl	%eax, __ZL8settings.lto_priv.0+4
	movl	%eax, __ZL8settings.lto_priv.0+8
	jmp	L1225
L1227:
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, __ZL8settings.lto_priv.0+4
	movl	%edx, __ZL8settings.lto_priv.0+8
	jmp	L1225
L1229:
	xorl	%eax, %eax
	movl	%eax, __ZL8settings.lto_priv.0+4
	movl	%eax, __ZL8settings.lto_priv.0+8
	jmp	L1225
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	__ZL7SetPagei.lto_priv.0
	.def	__ZL7SetPagei.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL7SetPagei.lto_priv.0:
LFB79:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	__imp__GetDlgItem@8, %esi
	movl	$101, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 32
	movl	__imp__SendMessageA@16, %ebp
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$4875, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	*%ebp
	.cfi_def_cfa_offset 24
	movl	__imp__ShowWindow@8, %edi
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 4(%esp)
	movl	__ZL5pages(,%eax,4), %eax
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	16(%esp), %edx
	movl	%ebx, 8(%esp)
	movl	$0, 12(%esp)
	movl	%edx, (%esp)
	movl	$4876, 4(%esp)
	call	*%ebp
	.cfi_def_cfa_offset 24
	subl	$16, %esp
	.cfi_def_cfa_offset 40
	movl	$5, 4(%esp)
	movl	__ZL5pages(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	movl	__ZL10startupdlg.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, __ZL4mode
	movl	$101, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, (%esp)
	call	*__imp__SetFocus@4
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
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
LFE79:
	.p2align 4
	.globl	__ZL12EnableConfigb.lto_priv.0
	.def	__ZL12EnableConfigb.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL12EnableConfigb.lto_priv.0:
LFB80:
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
	movzbl	%al, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	__ZL10startupdlg.lto_priv.0, %eax
	movl	__imp__GetDlgItem@8, %edi
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	movl	__imp__EnableWindow@8, %esi
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	movl	__ZL5pages, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$106, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	movl	__ZL5pages, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$100, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	movl	__ZL5pages, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$110, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	movl	__ZL5pages, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$108, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	movl	__ZL5pages, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	$101, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*%esi
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	addl	$8, %esp
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
LFE80:
	.section .rdata,"dr"
LC38:
	.ascii "\15\12\0"
	.text
	.p2align 4
	.globl	_startwin_puts.isra.0
	.def	_startwin_puts.isra.0;	.scl	2;	.type	32;	.endef
_startwin_puts.isra.0:
LFB82:
	.cfi_startproc
	movl	__ZL10startupdlg.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L1286
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	__ZL5pages+4, %esi
	testl	%esi, %esi
	je	L1256
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	__ZZ13startwin_putsE6dactrl, %eax
	movl	%ebx, 28(%esp)
	movl	%edi, 36(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	testl	%eax, %eax
	je	L1292
L1258:
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
	je	L1293
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
	je	L1294
L1270:
	movl	%esi, 16(%esp)
	movl	%ebx, 24(%esp)
	movl	%ebp, %ebx
	.p2align 4
	.p2align 3
L1268:
	cmpb	$0, __ZZ13startwin_putsE7newline
	jne	L1295
	movzbl	(%ebx), %eax
	movl	%ebx, %ebp
	testb	%al, %al
	jne	L1262
	jmp	L1296
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1264:
	movzbl	1(%ebp), %eax
	addl	$1, %ebp
	testb	%al, %al
	je	L1290
L1262:
	cmpb	$10, %al
	jne	L1264
L1290:
	movl	%ebp, %esi
	subl	%ebx, %esi
	movl	%esi, %eax
L1263:
	movl	%ebx, 4(%esp)
	movl	%ebp, %ebx
	movl	%eax, 8(%esp)
	movl	$__ZZ13startwin_putsE7workbuf, (%esp)
	call	_memcpy
	xorl	%eax, %eax
	cmpb	$10, 0(%ebp)
	je	L1297
L1265:
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
	jne	L1268
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
	je	L1269
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L1256:
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1297:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	1(%ebp), %eax
	testb	%al, %al
	jne	L1266
	movb	$1, __ZZ13startwin_putsE7newline
L1267:
	leal	1(%ebp), %ebx
	jmp	L1265
	.p2align 4,,10
	.p2align 3
L1295:
	movl	16(%esp), %eax
	movl	$LC38, 12(%esp)
	movl	%ebx, %ebp
	movl	$0, 8(%esp)
	movl	$194, 4(%esp)
	movl	%eax, (%esp)
	call	*%edi
	.cfi_def_cfa_offset 32
	movzbl	(%ebx), %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movb	$0, __ZZ13startwin_putsE7newline
	testb	%al, %al
	jne	L1262
L1296:
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	L1263
	.p2align 4,,10
	.p2align 3
L1266:
	movl	$10, %eax
	movw	%ax, __ZZ13startwin_putsE7workbuf+1(%esi)
	movl	$13, %eax
	jmp	L1267
L1293:
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
	jne	L1270
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
L1269:
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$11, 4(%esp)
L1291:
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
L1294:
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
	jmp	L1291
L1286:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
L1292:
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
	jmp	L1258
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	_LZ4_compress_fast.constprop.0
	.def	_LZ4_compress_fast.constprop.0;	.scl	2;	.type	32;	.endef
_LZ4_compress_fast.constprop.0:
LFB84:
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
	ja	L1299
	movl	$-2139062143, %eax
	mull	%ebx
	shrl	$7, %edx
	leal	16(%ebx,%edx), %eax
	cmpl	%eax, 16488(%esp)
	jl	L1300
	cmpl	$65546, %ebx
	jle	L1301
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
	jbe	L1589
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$1, 16448(%esp)
	movl	$1, 32(%esp)
	movl	%edi, (%eax)
L1488:
	imull	$-1640531535, 1(%edi), %eax
	movl	20(%esp), %esi
	leal	1(%edi), %ebp
	movl	%edi, %ecx
	leal	2(%edi), %edx
	movl	%esi, 36(%esp)
	shrl	$20, %eax
	cmpl	$1, 32(%esp)
	je	L1348
L1391:
	cmpl	%edx, 12(%esp)
	jb	L1350
	movl	%ebp, %esi
	leal	52(%esp,%eax,4), %ebx
	movl	%edi, 24(%esp)
	subl	%edi, %esi
	movl	%ecx, 28(%esp)
	movl	(%ebx), %eax
	movl	$65, %edi
	movl	$1, 16(%esp)
	jmp	L1351
	.p2align 4,,10
	.p2align 3
L1591:
	addl	$1, %edi
	movl	%ecx, %edx
L1351:
	movl	%esi, (%ebx)
	leal	65535(%eax), %ebx
	movl	(%edx), %ecx
	cmpl	%esi, %ebx
	jb	L1357
	addl	24(%esp), %eax
	movl	0(%ebp), %esi
	cmpl	%esi, (%eax)
	je	L1590
L1357:
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
	jnb	L1591
	movl	28(%esp), %ecx
L1350:
	movl	40(%esp), %esi
	movl	36(%esp), %edi
	subl	%ecx, %esi
	leal	1(%edi), %ebx
	cmpl	$14, %esi
	jbe	L1392
	leal	-15(%esi), %eax
	movb	$-16, (%edi)
	cmpl	$254, %eax
	jbe	L1393
	.p2align 5
	.p2align 4
	.p2align 3
L1394:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L1394
L1393:
	movb	%al, (%ebx)
	addl	$1, %ebx
L1395:
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
L1583:
	call	_memcpy
	leal	(%esi,%ebx), %eax
	movl	16480(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	subl	20(%esp), %eax
	movl	16472(%esp), %esi
	.cfi_restore 6
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1575:
	.cfi_restore_state
	movl	16472(%esp), %esi
	.cfi_restore 6
	movl	16480(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L1299:
	xorl	%eax, %eax
L1298:
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
L1300:
	.cfi_restore_state
	cmpl	$65546, %ebx
	jle	L1304
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
	jbe	L1592
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$1, 16448(%esp)
	movl	$1, 32(%esp)
	movl	%edi, (%eax)
L1489:
	movl	20(%esp), %esi
	movl	%edi, 40(%esp)
	leal	1(%edi), %ebp
	leal	2(%edi), %eax
	imull	$-1640531535, 1(%edi), %edx
	movl	%esi, 36(%esp)
	shrl	$20, %edx
	cmpl	$1, 32(%esp)
	je	L1438
L1483:
	cmpl	%eax, 12(%esp)
	jb	L1442
	movl	%ebp, %esi
	leal	52(%esp,%edx,4), %ebx
	movl	%edi, 24(%esp)
	subl	%edi, %esi
	movl	$1, 16(%esp)
	movl	(%ebx), %ecx
	movl	$65, %edi
	jmp	L1440
	.p2align 4,,10
	.p2align 3
L1594:
	addl	$1, %edi
	movl	%edx, %eax
L1440:
	movl	%esi, (%ebx)
	leal	65535(%ecx), %ebx
	movl	(%eax), %edx
	cmpl	%esi, %ebx
	jb	L1446
	addl	24(%esp), %ecx
	movl	0(%ebp), %esi
	cmpl	%esi, (%ecx)
	je	L1593
L1446:
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
	jnb	L1594
L1442:
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
	jb	L1575
	movl	%esi, %edi
	leal	1(%esi), %esi
	cmpl	$14, %ebx
	jbe	L1484
	leal	-15(%ebx), %eax
	movb	$-16, (%edi)
	cmpl	$254, %eax
	jbe	L1485
	.p2align 5
	.p2align 4
	.p2align 3
L1486:
	subl	$255, %eax
	addl	$1, %esi
	movb	$-1, -1(%esi)
	cmpl	$254, %eax
	ja	L1486
L1485:
	movb	%al, (%esi)
	addl	$1, %esi
	jmp	L1487
	.p2align 4,,10
	.p2align 3
L1301:
	.cfi_restore 5
	.cfi_restore 6
	testl	%ebx, %ebx
	je	L1397
	movl	%esi, 16472(%esp)
	movl	%ebp, 16480(%esp)
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$3, 16448(%esp)
	cmpl	$12, %ebx
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	jle	L1309
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
L1343:
	movl	%ebx, 32(%esp)
	movl	$64, %ecx
	movl	%edx, %ebx
	movl	$1, 16(%esp)
	jmp	L1312
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1310:
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
	je	L1595
	addl	$1, %ecx
L1312:
	movl	%eax, %ebp
	addl	16(%esp), %eax
	cmpl	%eax, 12(%esp)
	jnb	L1310
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
	subl	%esi, %ebx
L1311:
	movl	28(%esp), %edi
	leal	1(%edi), %eax
	cmpl	$14, %ebx
	jbe	L1491
	leal	-15(%ebx), %edx
	movb	$-16, (%edi)
	cmpl	$254, %edx
	jbe	L1345
	.p2align 5
	.p2align 4
	.p2align 3
L1346:
	subl	$255, %edx
	addl	$1, %eax
	movb	$-1, -1(%eax)
	cmpl	$254, %edx
	ja	L1346
L1345:
	movb	%dl, (%eax)
	leal	1(%eax), %ebp
L1347:
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
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1304:
	testl	%ebx, %ebx
	jne	L1396
	movl	16488(%esp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	L1298
L1397:
	movl	20(%esp), %eax
	movb	$0, (%eax)
	movl	$1, %eax
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1599:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	16(%esp), %ecx
	movl	24(%esp), %edi
L1355:
	movl	40(%esp), %esi
	subl	$5, %esi
	movl	%esi, 44(%esp)
L1587:
	cmpl	%eax, %edi
	jb	L1596
L1359:
	movl	36(%esp), %ebx
	movl	%ebp, %esi
	subl	%ecx, %esi
	addl	$1, %ebx
	movl	%ebx, 16(%esp)
	cmpl	$14, %esi
	ja	L1597
	movl	36(%esp), %edx
	movl	%esi, %ebx
	sall	$4, %ebx
	movb	%bl, (%edx)
L1366:
	movl	16(%esp), %edx
	addl	%edx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1367:
	movl	(%ecx), %ebx
	addl	$8, %edx
	addl	$8, %ecx
	movl	%ebx, -8(%edx)
	movl	-4(%ecx), %ebx
	movl	%ebx, -4(%edx)
	cmpl	%esi, %edx
	jb	L1367
	movl	40(%esp), %ebx
	movl	%esi, 16(%esp)
	movl	%edi, 28(%esp)
	movl	36(%esp), %esi
	subl	$8, %ebx
	movl	%ebx, 24(%esp)
	jmp	L1368
	.p2align 4,,10
	.p2align 3
L1386:
	movl	28(%esp), %edi
	subl	%edi, %eax
	movl	%eax, (%ebx)
	movl	%ebp, %ebx
	movl	(%edx), %eax
	subl	%edi, %ebx
	movl	%ebx, (%edx)
	leal	65535(%eax), %edx
	cmpl	%ebx, %edx
	jb	L1577
	movl	28(%esp), %edi
	addl	%edi, %eax
	cmpl	%ecx, (%eax)
	jne	L1577
L1369:
	leal	1(%esi), %edi
	movb	$0, (%esi)
	movl	%edi, 16(%esp)
L1368:
	movl	16(%esp), %edi
	movl	%ebp, %edx
	leal	4(%ebp), %ebx
	subl	%eax, %edx
	movw	%dx, (%edi)
	leal	2(%edi), %ecx
	cmpl	24(%esp), %ebx
	jnb	L1370
	movl	4(%eax), %edx
	movl	4(%ebp), %edi
	cmpl	%edi, %edx
	je	L1598
	xorl	%edi, %edx
	xorl	%ebx, %ebx
	rep bsfl	%edx, %ebx
	shrl	$3, %ebx
	movl	%ebx, %edx
	leal	4(%ebp,%ebx), %ebp
L1374:
	addb	%dl, (%esi)
	movl	%ecx, %esi
L1385:
	cmpl	12(%esp), %ebp
	jnb	L1493
	imull	$-1640531535, -2(%ebp), %edx
	movl	0(%ebp), %ecx
	leal	-2(%ebp), %eax
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %ebx
	imull	$-1640531535, %ecx, %edx
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %edx
	cmpl	$1, 32(%esp)
	jne	L1386
	movl	%eax, (%ebx)
	movl	(%edx), %eax
	movl	%ebp, (%edx)
	leal	65535(%eax), %edx
	cmpl	%ebp, %edx
	jb	L1578
	cmpl	%ecx, (%eax)
	je	L1369
L1578:
	imull	$-1640531535, 1(%ebp), %eax
	movl	%esi, 36(%esp)
	leal	2(%ebp), %edx
	movl	%ebp, %ecx
	movl	28(%esp), %edi
	addl	$1, %ebp
	shrl	$20, %eax
	.p2align 4
	.p2align 3
L1348:
	cmpl	%edx, 12(%esp)
	jb	L1350
	movl	%ecx, 16(%esp)
	movl	$65, %esi
	movl	%eax, %ecx
	movl	%edi, 24(%esp)
	movl	$1, %edi
	jmp	L1353
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1354:
	imull	$-1640531535, %ecx, %ecx
	leal	(%edx,%edi), %eax
	movl	%esi, %edi
	movl	%edx, %ebp
	sarl	$6, %edi
	shrl	$20, %ecx
	cmpl	%eax, 12(%esp)
	jb	L1558
	addl	$1, %esi
	movl	%eax, %edx
L1353:
	leal	52(%esp,%ecx,4), %ebx
	movl	(%edx), %ecx
	movl	(%ebx), %eax
	movl	%ebp, (%ebx)
	leal	65535(%eax), %ebx
	cmpl	%ebp, %ebx
	jb	L1354
	movl	0(%ebp), %ebx
	cmpl	%ebx, (%eax)
	jne	L1354
	jmp	L1599
	.p2align 4,,10
	.p2align 3
L1602:
	movl	%eax, (%edx)
	movl	(%ebx), %ecx
	movl	%ebp, (%ebx)
	leal	65535(%ecx), %eax
	cmpl	%ebp, %eax
	jb	L1481
	cmpl	%esi, (%ecx)
	je	L1582
L1481:
	imull	$-1640531535, 1(%ebp), %edx
	movl	%edi, 36(%esp)
	leal	2(%ebp), %eax
	movl	40(%esp), %edi
	movl	%ebp, 40(%esp)
	addl	$1, %ebp
	shrl	$20, %edx
	.p2align 4
	.p2align 3
L1438:
	movl	$65, %esi
	cmpl	%eax, 12(%esp)
	jb	L1442
	movl	%edi, 16(%esp)
	movl	$1, %edi
	jmp	L1441
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1444:
	imull	$-1640531535, %edx, %edx
	leal	(%eax,%edi), %ecx
	movl	%esi, %edi
	movl	%eax, %ebp
	sarl	$6, %edi
	shrl	$20, %edx
	cmpl	%ecx, 12(%esp)
	jb	L1442
	addl	$1, %esi
	movl	%ecx, %eax
L1441:
	leal	52(%esp,%edx,4), %ebx
	movl	(%eax), %edx
	movl	(%ebx), %ecx
	movl	%ebp, (%ebx)
	leal	65535(%ecx), %ebx
	cmpl	%ebp, %ebx
	jb	L1444
	movl	0(%ebp), %ebx
	cmpl	%ebx, (%ecx)
	jne	L1444
	movl	16(%esp), %edi
L1445:
	cmpl	%ecx, %edi
	jnb	L1448
	movzbl	-1(%ecx), %eax
	cmpb	%al, -1(%ebp)
	je	L1600
L1448:
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
	jb	L1575
	movl	44(%esp), %eax
	subl	$5, %eax
	movl	%eax, 48(%esp)
	cmpl	$14, %esi
	ja	L1601
	movl	36(%esp), %edx
	movl	%esi, %eax
	sall	$4, %eax
	movb	%al, (%edx)
L1455:
	movl	40(%esp), %eax
	addl	%ebx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1456:
	movl	(%eax), %edx
	addl	$8, %ebx
	addl	$8, %eax
	movl	%edx, -8(%ebx)
	movl	-4(%eax), %edx
	movl	%edx, -4(%ebx)
	cmpl	%esi, %ebx
	jb	L1456
	movl	44(%esp), %eax
	movl	%edi, 40(%esp)
	movl	36(%esp), %edi
	subl	$8, %eax
	movl	%eax, 16(%esp)
	jmp	L1457
	.p2align 4,,10
	.p2align 3
L1460:
	addl	$8, %esi
	cmpl	%esi, 28(%esp)
	jb	L1575
	xorl	%edx, %eax
	xorl	%ecx, %ecx
	rep bsfl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%ebp,%ecx), %ebp
L1472:
	addb	%cl, (%edi)
	movl	%ebx, %edi
L1475:
	cmpl	12(%esp), %ebp
	jnb	L1499
	movl	0(%ebp), %esi
	imull	$-1640531535, -2(%ebp), %edx
	leal	-2(%ebp), %eax
	imull	$-1640531535, %esi, %ecx
	shrl	$20, %edx
	leal	52(%esp,%edx,4), %edx
	shrl	$20, %ecx
	leal	52(%esp,%ecx,4), %ebx
	cmpl	$1, 32(%esp)
	je	L1602
	movl	40(%esp), %ecx
	subl	%ecx, %eax
	movl	%eax, (%edx)
	movl	(%ebx), %edx
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	65535(%edx), %ecx
	movl	%eax, (%ebx)
	cmpl	%eax, %ecx
	jb	L1482
	movl	40(%esp), %eax
	leal	(%eax,%edx), %ecx
	cmpl	%esi, (%ecx)
	jne	L1482
L1582:
L1458:
	movb	$0, (%edi)
	leal	1(%edi), %esi
L1457:
	movl	%ebp, %eax
	leal	2(%esi), %ebx
	subl	%ecx, %eax
	movw	%ax, (%esi)
	leal	4(%ebp), %eax
	movl	%eax, 24(%esp)
	cmpl	16(%esp), %eax
	jnb	L1459
	movl	4(%ecx), %eax
	movl	4(%ebp), %edx
	cmpl	%edx, %eax
	jne	L1460
	leal	8(%ecx), %eax
	leal	8(%ebp), %edx
	movl	%eax, 36(%esp)
	cmpl	16(%esp), %edx
	jnb	L1462
L1461:
	movl	36(%esp), %eax
	movl	(%edx), %ecx
	movl	(%eax), %eax
	cmpl	%ecx, %eax
	je	L1603
	xorl	%ecx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	leal	(%edx,%eax), %ecx
	subl	24(%esp), %ecx
L1465:
	movl	$-2139062143, %eax
	leal	240(%ecx), %edx
	mull	%edx
	shrl	$7, %edx
	leal	6(%ebx,%edx), %eax
	cmpl	%eax, 28(%esp)
	jb	L1575
	leal	4(%ebp,%ecx), %ebp
	cmpl	$14, %ecx
	jbe	L1472
	subl	$15, %ecx
	addb	$15, (%edi)
	movl	$-1, 2(%esi)
	cmpl	$1019, %ecx
	jbe	L1473
	.p2align 5
	.p2align 4
	.p2align 3
L1474:
	subl	$1020, %ecx
	addl	$4, %ebx
	movl	$-1, (%ebx)
	cmpl	$1019, %ecx
	ja	L1474
L1473:
	movl	$-2139062143, %eax
	mull	%ecx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ebx,%edx), %edi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movb	%cl, (%ebx,%edx)
	jmp	L1475
	.p2align 4,,10
	.p2align 3
L1589:
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$2, 16448(%esp)
	movl	$2, 32(%esp)
	movl	$0, (%eax)
	jmp	L1488
	.p2align 4,,10
	.p2align 3
L1592:
	movl	%ebx, 16452(%esp)
	movl	%ebx, 16444(%esp)
	movl	$2, 16448(%esp)
	movl	$2, 32(%esp)
	movl	$0, (%eax)
	jmp	L1489
	.p2align 4,,10
	.p2align 3
L1392:
	movl	36(%esp), %edi
	movl	%esi, %eax
	sall	$4, %eax
	movb	%al, (%edi)
	jmp	L1395
	.p2align 4,,10
	.p2align 3
L1396:
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
	jle	L1495
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
L1433:
	movl	$64, 12(%esp)
	movl	$1, %ebp
	jmp	L1400
	.p2align 4,,10
	.p2align 3
L1399:
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
	je	L1604
	movl	12(%esp), %esi
	addl	$1, %esi
	movl	%esi, 12(%esp)
L1400:
	movl	%eax, %edi
	addl	%ebp, %eax
	cmpl	%eax, 24(%esp)
	jnb	L1399
	movl	44(%esp), %ebx
	movl	40(%esp), %edi
	movl	16480(%esp), %ebp
	.cfi_restore 5
	subl	%edi, %ebx
L1398:
	leal	240(%ebx), %eax
	movl	$-2139062143, %ecx
	movl	36(%esp), %esi
	mull	%ecx
	shrl	$7, %edx
	leal	1(%ebx,%edx), %eax
	addl	%esi, %eax
	cmpl	%eax, 32(%esp)
	jb	L1572
	movl	%esi, %ecx
	leal	1(%esi), %esi
	cmpl	$14, %ebx
	jbe	L1434
	leal	-15(%ebx), %eax
	movb	$-16, (%ecx)
	cmpl	$254, %eax
	jbe	L1435
	.p2align 5
	.p2align 4
	.p2align 3
L1436:
	subl	$255, %eax
	addl	$1, %esi
	movb	$-1, -1(%esi)
	cmpl	$254, %eax
	ja	L1436
L1435:
	movb	%al, (%esi)
	addl	$1, %esi
L1437:
	movl	%esi, (%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
	leal	(%esi,%ebx), %eax
	movl	16472(%esp), %esi
	.cfi_restore 6
	subl	20(%esp), %eax
	jmp	L1298
	.p2align 4,,10
	.p2align 3
L1484:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	36(%esp), %edi
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%edi)
L1487:
	movl	40(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	jmp	L1583
	.p2align 4,,10
	.p2align 3
L1596:
	movzbl	-1(%eax), %ebx
	cmpb	%bl, -1(%ebp)
	jne	L1359
	subl	$1, %ebp
	subl	$1, %eax
	cmpl	%ebp, %ecx
	jb	L1587
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1597:
	movl	36(%esp), %edx
	leal	-15(%esi), %ebx
	movb	$-16, (%edx)
	cmpl	$254, %ebx
	jbe	L1364
	movl	16(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1365:
	subl	$255, %ebx
	addl	$1, %edx
	movb	$-1, -1(%edx)
	cmpl	$254, %ebx
	ja	L1365
	movl	%edx, 16(%esp)
L1364:
	movl	16(%esp), %edx
	movb	%bl, (%edx)
	leal	1(%edx), %ebx
	movl	%ebx, 16(%esp)
	jmp	L1366
	.p2align 4,,10
	.p2align 3
L1598:
	addl	$8, %eax
	leal	8(%ebp), %edi
	movl	%eax, 36(%esp)
	cmpl	24(%esp), %edi
	jnb	L1373
L1372:
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	(%edi), %eax
	cmpl	%eax, %edx
	je	L1605
	xorl	%eax, %edx
	rep bsfl	%edx, %edx
	shrl	$3, %edx
	addl	%edi, %edx
	subl	%ebx, %edx
L1376:
	leal	4(%ebp,%edx), %ebp
	cmpl	$14, %edx
	jbe	L1374
	movl	16(%esp), %eax
	leal	-15(%edx), %ebx
	addb	$15, (%esi)
	movl	$-1, 2(%eax)
	cmpl	$1019, %ebx
	jbe	L1383
	.p2align 5
	.p2align 4
	.p2align 3
L1384:
	subl	$1020, %ebx
	addl	$4, %ecx
	movl	$-1, (%ecx)
	cmpl	$1019, %ebx
	ja	L1384
L1383:
	movl	$-2139062143, %eax
	mull	%ebx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ecx,%edx), %esi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	movb	%bl, (%ecx,%edx)
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L1370:
	addl	$4, %eax
	movl	%ebx, %edi
	movl	%eax, 36(%esp)
L1373:
	movl	40(%esp), %eax
	leal	-6(%eax), %edx
	cmpl	%edx, %edi
	jnb	L1378
	movl	36(%esp), %eax
	movzwl	(%edi), %edx
	cmpw	%dx, (%eax)
	jne	L1378
	addl	$2, 36(%esp)
	addl	$2, %edi
	.p2align 4
	.p2align 3
L1378:
	cmpl	44(%esp), %edi
	jnb	L1381
	movl	36(%esp), %edx
	movzbl	(%edi), %eax
	cmpb	%al, (%edx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edi
L1381:
	subl	%ebx, %edi
	movl	%edi, %edx
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1605:
	addl	$4, 36(%esp)
	addl	$4, %edi
	cmpl	24(%esp), %edi
	jb	L1372
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1558:
	movl	16(%esp), %ecx
	jmp	L1350
	.p2align 4,,10
	.p2align 3
L1572:
	.cfi_restore 5
	movl	16472(%esp), %esi
	.cfi_restore 6
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1590:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	28(%esp), %ecx
	movl	24(%esp), %edi
	jmp	L1355
	.p2align 4,,10
	.p2align 3
L1593:
	movl	24(%esp), %edi
	jmp	L1445
	.p2align 4,,10
	.p2align 3
L1459:
	leal	4(%ecx), %eax
	movl	24(%esp), %edx
	movl	%eax, 36(%esp)
L1462:
	movl	44(%esp), %eax
	subl	$6, %eax
	cmpl	%eax, %edx
	jnb	L1467
	movl	36(%esp), %eax
	movzwl	(%edx), %ecx
	cmpw	%cx, (%eax)
	jne	L1467
	addl	$2, 36(%esp)
	addl	$2, %edx
L1467:
	cmpl	48(%esp), %edx
	jnb	L1470
	movl	36(%esp), %ecx
	movzbl	(%edx), %eax
	cmpb	%al, (%ecx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edx
L1470:
	movl	%edx, %ecx
	subl	24(%esp), %ecx
	jmp	L1465
	.p2align 4,,10
	.p2align 3
L1495:
	.cfi_restore 5
	movl	20(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	L1398
	.p2align 4,,10
	.p2align 3
L1309:
	.cfi_offset 5, -8
	movl	20(%esp), %eax
	movl	%edi, %esi
	movl	%eax, 28(%esp)
	leal	1(%eax), %ebp
L1344:
	movl	28(%esp), %edi
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%edi)
	jmp	L1347
	.p2align 4,,10
	.p2align 3
L1603:
	addl	$4, 36(%esp)
	addl	$4, %edx
	cmpl	16(%esp), %edx
	jb	L1461
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1577:
	imull	$-1640531535, 1(%ebp), %eax
	leal	2(%ebp), %edx
	movl	%ebp, %ecx
	movl	%esi, 36(%esp)
	addl	$1, %ebp
	shrl	$20, %eax
	jmp	L1391
L1595:
	movl	32(%esp), %ebx
L1585:
	cmpl	%edx, %edi
	jnb	L1316
	movzbl	-1(%edx), %eax
	cmpb	%al, -1(%ebp)
	je	L1606
L1316:
	movl	28(%esp), %eax
	movl	%ebp, %esi
	subl	%ebx, %esi
	addl	$1, %eax
	movl	%eax, 16(%esp)
	cmpl	$14, %esi
	ja	L1607
	movl	28(%esp), %eax
	movl	%esi, %ecx
	sall	$4, %ecx
	movb	%cl, (%eax)
L1322:
	movl	16(%esp), %eax
	addl	%eax, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1323:
	movl	(%ebx), %ecx
	addl	$8, %eax
	addl	$8, %ebx
	movl	%ecx, -8(%eax)
	movl	-4(%ebx), %ecx
	movl	%ecx, -4(%eax)
	cmpl	%esi, %eax
	jb	L1323
	movl	36(%esp), %eax
	movl	%edi, 32(%esp)
	leal	-8(%eax), %ebx
	subl	$6, %eax
	movl	%ebx, 24(%esp)
	movl	28(%esp), %ebx
	movl	%eax, 44(%esp)
	jmp	L1342
	.p2align 4,,10
	.p2align 3
L1325:
	xorl	%edi, %eax
	xorl	%edi, %edi
	rep bsfl	%eax, %edi
	shrl	$3, %edi
	leal	4(%ebp,%edi), %ebp
L1328:
	movl	%edi, %eax
	addb	%al, (%ebx)
	movl	%ecx, %ebx
L1339:
	cmpl	12(%esp), %ebp
	jnb	L1608
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
	jne	L1341
	movb	$0, (%ebx)
	leal	1(%ebx), %esi
L1342:
	movl	%ebp, %eax
	leal	2(%esi), %ecx
	subl	%edx, %eax
	movw	%ax, (%esi)
	leal	4(%ebp), %eax
	movl	%eax, 16(%esp)
	cmpl	24(%esp), %eax
	jnb	L1324
	movl	4(%edx), %eax
	movl	4(%ebp), %edi
	cmpl	%edi, %eax
	jne	L1325
	leal	8(%edx), %eax
	leal	8(%ebp), %edi
	movl	%eax, 28(%esp)
	cmpl	24(%esp), %edi
	jnb	L1327
L1326:
	movl	28(%esp), %eax
	movl	(%edi), %edx
	movl	(%eax), %eax
	cmpl	%edx, %eax
	je	L1609
	xorl	%edx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	addl	%eax, %edi
	subl	16(%esp), %edi
L1330:
	leal	4(%ebp,%edi), %ebp
	cmpl	$14, %edi
	jbe	L1328
	subl	$15, %edi
	addb	$15, (%ebx)
	movl	$-1, 2(%esi)
	cmpl	$1019, %edi
	jbe	L1337
	.p2align 5
	.p2align 4
	.p2align 3
L1338:
	subl	$1020, %edi
	addl	$4, %ecx
	movl	$-1, (%ecx)
	cmpl	$1019, %edi
	ja	L1338
L1337:
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
	jmp	L1339
	.p2align 4,,10
	.p2align 3
L1324:
	leal	4(%edx), %eax
	movl	16(%esp), %edi
	movl	%eax, 28(%esp)
L1327:
	cmpl	44(%esp), %edi
	jnb	L1332
	movl	28(%esp), %eax
	movzwl	(%edi), %edx
	cmpw	%dx, (%eax)
	jne	L1332
	addl	$2, 28(%esp)
	addl	$2, %edi
	.p2align 4
	.p2align 3
L1332:
	cmpl	40(%esp), %edi
	jnb	L1335
	movl	28(%esp), %edx
	movzbl	(%edi), %eax
	cmpb	%al, (%edx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edi
L1335:
	subl	16(%esp), %edi
	jmp	L1330
	.p2align 4,,10
	.p2align 3
L1609:
	addl	$4, 28(%esp)
	addl	$4, %edi
	cmpl	24(%esp), %edi
	jb	L1326
	jmp	L1327
L1493:
	movl	%esi, 36(%esp)
	movl	%ebp, %ecx
	jmp	L1350
L1604:
	cmpl	%ecx, %ebx
	jnb	L1404
L1580:
	movzbl	-1(%ecx), %eax
	cmpb	%al, -1(%edi)
	je	L1610
L1404:
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
	jb	L1575
	cmpl	$14, %ebp
	ja	L1611
	movl	36(%esp), %esi
	movl	%ebp, %eax
	sall	$4, %eax
	movb	%al, (%esi)
L1411:
	movl	40(%esp), %esi
	addl	%ebx, %ebp
	.p2align 5
	.p2align 4
	.p2align 3
L1412:
	movl	(%esi), %eax
	addl	$8, %ebx
	addl	$8, %esi
	movl	%eax, -8(%ebx)
	movl	-4(%esi), %eax
	movl	%eax, -4(%ebx)
	cmpl	%ebp, %ebx
	jb	L1412
	movl	44(%esp), %eax
	movl	36(%esp), %esi
	subl	$8, %eax
	movl	%eax, 12(%esp)
	jmp	L1432
	.p2align 4,,10
	.p2align 3
L1414:
	addl	$8, %ebp
	cmpl	%ebp, 32(%esp)
	jb	L1575
	xorl	%edx, %eax
	xorl	%ecx, %ecx
	rep bsfl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%edi,%ecx), %edi
L1426:
	addb	%cl, (%esi)
	movl	%ebx, %esi
L1429:
	cmpl	24(%esp), %edi
	jnb	L1612
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
	jne	L1431
	movb	$0, (%esi)
	leal	1(%esi), %ebp
L1432:
	movl	%edi, %eax
	leal	2(%ebp), %ebx
	subl	%ecx, %eax
	movw	%ax, 0(%ebp)
	leal	4(%edi), %eax
	movl	%eax, 16(%esp)
	cmpl	12(%esp), %eax
	jnb	L1413
	movl	4(%ecx), %eax
	movl	4(%edi), %edx
	cmpl	%edx, %eax
	jne	L1414
	leal	8(%ecx), %eax
	leal	8(%edi), %edx
	movl	%eax, 36(%esp)
	cmpl	12(%esp), %edx
	jnb	L1416
L1415:
	movl	36(%esp), %eax
	movl	(%edx), %ecx
	movl	(%eax), %eax
	cmpl	%ecx, %eax
	je	L1613
	xorl	%ecx, %eax
	rep bsfl	%eax, %eax
	shrl	$3, %eax
	leal	(%edx,%eax), %ecx
	subl	16(%esp), %ecx
L1419:
	movl	$-2139062143, %eax
	leal	240(%ecx), %edx
	mull	%edx
	shrl	$7, %edx
	leal	6(%ebx,%edx), %eax
	cmpl	%eax, 32(%esp)
	jb	L1575
	leal	4(%edi,%ecx), %edi
	cmpl	$14, %ecx
	jbe	L1426
	subl	$15, %ecx
	addb	$15, (%esi)
	movl	$-1, 2(%ebp)
	cmpl	$1019, %ecx
	jbe	L1427
	.p2align 5
	.p2align 4
	.p2align 3
L1428:
	subl	$1020, %ecx
	addl	$4, %ebx
	movl	$-1, (%ebx)
	cmpl	$1019, %ecx
	ja	L1428
L1427:
	movl	$-2139062143, %eax
	mull	%ecx
	shrl	$7, %edx
	movl	%edx, %eax
	leal	1(%ebx,%edx), %esi
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movb	%cl, (%ebx,%edx)
	jmp	L1429
L1434:
	.cfi_restore 5
	movl	36(%esp), %ecx
	movl	%ebx, %eax
	sall	$4, %eax
	movb	%al, (%ecx)
	jmp	L1437
L1491:
	.cfi_offset 5, -8
	movl	%eax, %ebp
	jmp	L1344
L1413:
	leal	4(%ecx), %eax
	movl	16(%esp), %edx
	movl	%eax, 36(%esp)
L1416:
	movl	44(%esp), %eax
	subl	$6, %eax
	cmpl	%eax, %edx
	jnb	L1421
	movl	36(%esp), %eax
	movzwl	(%edx), %ecx
	cmpw	%cx, (%eax)
	jne	L1421
	addl	$2, 36(%esp)
	addl	$2, %edx
L1421:
	cmpl	48(%esp), %edx
	jnb	L1424
	movl	36(%esp), %ecx
	movzbl	(%edx), %eax
	cmpb	%al, (%ecx)
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %edx
L1424:
	movl	%edx, %ecx
	subl	16(%esp), %ecx
	jmp	L1419
L1601:
	movl	36(%esp), %edx
	leal	-15(%esi), %eax
	movb	$-16, (%edx)
	cmpl	$254, %eax
	jbe	L1453
	.p2align 5
	.p2align 4
	.p2align 3
L1454:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L1454
L1453:
	movb	%al, (%ebx)
	addl	$1, %ebx
	jmp	L1455
L1613:
	addl	$4, 36(%esp)
	addl	$4, %edx
	cmpl	12(%esp), %edx
	jb	L1415
	jmp	L1416
L1608:
	movl	%ebx, 28(%esp)
	movl	36(%esp), %ebx
	movl	%ebp, %esi
	subl	%ebp, %ebx
	jmp	L1311
L1341:
	imull	$-1640531535, 1(%ebp), %edx
	movl	32(%esp), %edi
	movl	%ebx, 28(%esp)
	leal	1(%ebp), %eax
	movl	%ebp, %ebx
	shrl	$19, %edx
	jmp	L1343
L1482:
	imull	$-1640531535, 1(%ebp), %edx
	movl	%edi, 36(%esp)
	leal	2(%ebp), %eax
	movl	40(%esp), %edi
	movl	%ebp, 40(%esp)
	addl	$1, %ebp
	shrl	$20, %edx
	jmp	L1483
L1607:
	movl	28(%esp), %eax
	leal	-15(%esi), %ecx
	movb	$-16, (%eax)
	cmpl	$254, %ecx
	jbe	L1320
	movl	16(%esp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1321:
	subl	$255, %ecx
	addl	$1, %eax
	movb	$-1, -1(%eax)
	cmpl	$254, %ecx
	ja	L1321
	movl	%eax, 16(%esp)
L1320:
	movl	16(%esp), %eax
	movb	%cl, (%eax)
	addl	$1, %eax
	movl	%eax, 16(%esp)
	jmp	L1322
L1499:
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	jmp	L1442
L1611:
	movl	36(%esp), %esi
	leal	-15(%ebp), %eax
	movb	$-16, (%esi)
	cmpl	$254, %eax
	jbe	L1409
	.p2align 5
	.p2align 4
	.p2align 3
L1410:
	subl	$255, %eax
	addl	$1, %ebx
	movb	$-1, -1(%ebx)
	cmpl	$254, %eax
	ja	L1410
L1409:
	movb	%al, (%ebx)
	addl	$1, %ebx
	jmp	L1411
L1600:
	subl	$1, %ebp
	subl	$1, %ecx
	cmpl	%ebp, 40(%esp)
	jb	L1445
	jmp	L1448
	.p2align 4,,10
	.p2align 3
L1612:
	movl	44(%esp), %ebx
	movl	16480(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	%esi, 36(%esp)
	subl	%edi, %ebx
	jmp	L1398
L1431:
	.cfi_restore_state
	imull	$-1640531535, 1(%edi), %edx
	movl	%esi, 36(%esp)
	leal	1(%edi), %eax
	movl	%edi, 40(%esp)
	shrl	$19, %edx
	jmp	L1433
L1606:
	subl	$1, %ebp
	subl	$1, %edx
	cmpl	%ebp, %ebx
	jb	L1585
	jmp	L1316
	.p2align 4,,10
	.p2align 3
L1610:
	subl	$1, %edi
	subl	$1, %ecx
	cmpl	%edi, 40(%esp)
	jnb	L1404
	cmpl	%ecx, 28(%esp)
	jb	L1580
	jmp	L1404
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	_LZ4_decompress_safe
	.def	_LZ4_decompress_safe;	.scl	2;	.type	32;	.endef
_LZ4_decompress_safe:
LFB90:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	80(%esp), %eax
	movl	%edx, 16(%esp)
	testl	%ebp, %ebp
	je	L1615
	testl	%eax, %eax
	js	L1615
	je	L1760
	testl	%ecx, %ecx
	je	L1615
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
	jle	L1680
	leal	-17(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	%ebp, %edi
	movl	%eax, 36(%esp)
	leal	-15(%ebx), %eax
	movl	%eax, 48(%esp)
	movl	%ebp, 44(%esp)
L1620:
	movzbl	(%edi), %ebp
	leal	1(%edi), %ebx
	movl	%ebp, %eax
	movb	%al, 20(%esp)
	shrl	$4, %eax
	cmpl	$15, %eax
	je	L1761
	movl	12(%esp), %ecx
	leal	(%ebx,%eax), %esi
	leal	(%ecx,%eax), %edx
	cmpl	%ebx, 36(%esp)
	jb	L1746
	movl	1(%edi), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ecx)
L1628:
	movzbl	20(%esp), %ecx
	movzwl	(%esi), %ebp
	movl	%edx, %eax
	andl	$15, %ecx
	movw	%bp, 32(%esp)
	subl	%ebp, %eax
	cmpb	$15, %cl
	je	L1762
	addl	$4, %ecx
	movl	24(%esp), %edi
	leal	2(%esi), %ebx
	movzbl	%cl, %esi
	leal	(%edx,%esi), %ecx
	subl	$64, %edi
	movl	%ecx, 12(%esp)
	cmpl	%edi, %ecx
	jnb	L1748
	cmpl	16(%esp), %eax
	jb	L1749
	cmpl	$7, %ebp
	ja	L1763
	movzwl	32(%esp), %edi
	cmpw	$2, %di
	je	L1637
	cmpw	$4, %di
	je	L1638
	cmpw	$1, %di
	jne	L1764
L1639:
	movzbl	(%eax), %eax
	movl	%ebx, %edi
	imull	$16843009, %eax, %eax
	movl	%eax, 52(%esp)
	movl	%eax, 56(%esp)
L1644:
	movl	52(%esp), %ecx
	movl	56(%esp), %ebx
	addl	$8, %edx
	movl	12(%esp), %eax
	movl	%ecx, -8(%edx)
	movl	%ebx, -4(%edx)
	cmpl	%eax, %edx
	jnb	L1620
	movl	%eax, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1649:
	movl	52(%esp), %ebx
	movl	56(%esp), %esi
	addl	$8, %edx
	movl	%ebx, -8(%edx)
	movl	%esi, -4(%edx)
	cmpl	%ecx, %edx
	jb	L1649
L1758:
	movl	%ecx, 12(%esp)
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1761:
	movl	48(%esp), %eax
	cmpl	%eax, %ebx
	jnb	L1749
	leal	2(%edi), %ebx
	cmpl	%ebx, %eax
	jb	L1749
	movzbl	1(%edi), %eax
	cmpl	$255, %eax
	je	L1765
L1623:
	movl	12(%esp), %ecx
	addl	$15, %eax
	leal	(%eax,%ecx), %edi
	addl	%eax, %ecx
	jnc	L1766
	.p2align 4
	.p2align 3
L1749:
	movl	44(%esp), %ebp
L1622:
	movl	%ebp, %eax
	movl	64(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %edi
	.cfi_restore 7
	subl	%ebx, %eax
	movl	60(%esp), %ebx
	.cfi_restore 3
	subl	$1, %eax
L1614:
	movl	72(%esp), %ebp
	addl	$76, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1762:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %ecx
	leal	3(%esi), %edi
	subl	$4, %ecx
	cmpl	%edi, %ecx
	jb	L1683
	movzbl	2(%esi), %esi
	cmpl	$255, %esi
	je	L1767
L1630:
	addl	$19, %esi
	movl	%edx, %ecx
	addl	%esi, %ecx
	leal	(%esi,%edx), %ebx
	jc	L1683
	movl	24(%esp), %ecx
	movl	%ebx, 12(%esp)
	subl	$64, %ecx
	cmpl	%ecx, %ebx
	jnb	L1768
	cmpl	16(%esp), %eax
	jb	L1683
	movl	%ebx, %ecx
	cmpl	$15, %ebp
	jbe	L1769
	.p2align 6
	.p2align 4
	.p2align 3
L1642:
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
	jb	L1642
	movl	%ecx, 12(%esp)
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1766:
	movl	%ebx, %ecx
	leal	(%eax,%ebx), %esi
	addl	%eax, %ecx
	jc	L1749
	movl	%edi, %edx
	cmpl	%edi, 40(%esp)
	jb	L1746
	movl	28(%esp), %ecx
	subl	$32, %ecx
	cmpl	%esi, %ecx
	jb	L1746
	movl	12(%esp), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1627:
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
	jb	L1627
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L1680:
	movl	16(%esp), %eax
	movl	%ebp, %ebx
	movl	%eax, 12(%esp)
L1619:
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
	je	L1670
	movl	12(%esp), %ecx
	movl	%ebp, %ebx
L1653:
	cmpl	20(%esp), %esi
	jnb	L1650
	cmpl	%ecx, 40(%esp)
	jb	L1650
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
	je	L1687
	cmpl	$7, %esi
	jbe	L1687
	cmpl	16(%esp), %eax
	jnb	L1770
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %ebx
L1652:
	leal	4(%ecx), %esi
L1633:
	cmpl	16(%esp), %eax
	jb	L1622
	leal	(%edx,%esi), %edi
	movl	%edi, 12(%esp)
	cmpl	$7, 20(%esp)
	jbe	L1771
	movl	(%eax), %edi
	addl	$8, %eax
	movl	%edi, (%edx)
	movl	-4(%eax), %edi
	movl	%edi, 4(%edx)
L1671:
	leal	8(%edx), %edi
	movl	24(%esp), %ecx
	movl	%edi, 20(%esp)
	movl	12(%esp), %edi
	subl	$12, %ecx
	cmpl	%edi, %ecx
	jb	L1772
	movl	(%eax), %ecx
	movl	20(%esp), %edi
	movl	%ecx, 8(%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edi)
	cmpl	$16, %esi
	jbe	L1619
	movl	12(%esp), %ecx
	addl	$8, %eax
	addl	$16, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1679:
	movl	(%eax), %esi
	addl	$8, %edx
	addl	$8, %eax
	movl	%esi, -8(%edx)
	movl	-4(%eax), %esi
	movl	%esi, -4(%edx)
	cmpl	%ecx, %edx
	jb	L1679
L1759:
	movl	%ecx, 12(%esp)
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1763:
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
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1683:
	movl	44(%esp), %ebp
	movl	%edi, %ebx
	jmp	L1622
L1765:
	movl	28(%esp), %edi
	movl	12(%esp), %ecx
	leal	-14(%edi), %esi
L1624:
	addl	$1, %ebx
	cmpl	%esi, %ebx
	je	L1749
	movzbl	-1(%ebx), %edx
	addl	%edx, %eax
	js	L1749
	cmpl	$255, %edx
	je	L1624
	movl	%ecx, 12(%esp)
	jmp	L1623
	.p2align 4,,10
	.p2align 3
L1760:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	cmpl	$1, %ecx
	je	L1617
L1615:
	movl	72(%esp), %ebp
	movl	$-1, %eax
	addl	$76, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1770:
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
	jne	L1653
	movl	%ecx, 12(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %ebx
L1670:
	movl	28(%esp), %eax
	subl	$15, %eax
	cmpl	%eax, %esi
	jnb	L1689
	leal	2(%ebx), %esi
	cmpl	%esi, %eax
	jb	L1689
	movzbl	1(%ebx), %eax
	cmpl	$255, %eax
	je	L1773
L1654:
	movl	12(%esp), %edi
	addl	$15, %eax
	movl	%edi, %ecx
	addl	%eax, %ecx
	jc	L1689
	leal	(%eax,%edi), %edx
	movl	%esi, %edi
	movl	%esi, %ebx
	addl	%eax, %edi
	movl	%edi, 20(%esp)
	jc	L1689
L1626:
	movl	24(%esp), %edi
	leal	-12(%edi), %esi
	cmpl	%edx, %esi
	jb	L1660
	movl	28(%esp), %edi
	leal	-8(%edi), %esi
	cmpl	20(%esp), %esi
	jb	L1660
	movl	12(%esp), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1661:
	movl	(%ebx), %eax
	addl	$8, %ecx
	addl	$8, %ebx
	movl	%eax, -8(%ecx)
	movl	-4(%ebx), %eax
	movl	%eax, -4(%ecx)
	cmpl	%edx, %ecx
	jb	L1661
	movl	20(%esp), %eax
	movl	36(%esp), %ecx
	movzwl	(%eax), %edi
	leal	2(%eax), %esi
	movl	%edx, %eax
	andl	$15, %ecx
	movl	%edi, 20(%esp)
	subl	%edi, %eax
L1651:
	cmpl	$15, %ecx
	jne	L1690
	movl	28(%esp), %edi
	leal	1(%esi), %ebx
	leal	-4(%edi), %ecx
	cmpl	%ebx, %ecx
	jb	L1622
	movzbl	(%esi), %ecx
	cmpl	$255, %ecx
	je	L1774
L1662:
	addl	$15, %ecx
	movl	%edx, %edi
	addl	%ecx, %edi
	jnc	L1652
	jmp	L1622
L1764:
	leal	8(%edx), %edi
	movl	%edi, 20(%esp)
L1640:
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
L1647:
	movl	(%eax), %edx
	addl	$8, %esi
	addl	$8, %eax
	movl	%edx, -8(%esi)
	movl	-4(%eax), %edx
	movl	%edx, -4(%esi)
	cmpl	%ecx, %esi
	jb	L1647
	jmp	L1758
L1686:
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L1638:
	movl	(%eax), %esi
	movl	%ebx, %edi
	movl	%esi, 52(%esp)
	movl	(%eax), %eax
	movl	%eax, 56(%esp)
	jmp	L1644
L1617:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movzbl	0(%ebp), %eax
	negb	%al
	sbbl	%eax, %eax
	jmp	L1614
L1660:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %ecx
	cmpl	%ecx, 28(%esp)
	jne	L1622
	cmpl	%edx, 24(%esp)
	jb	L1622
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
	jmp	L1614
L1767:
	.cfi_restore_state
	movl	28(%esp), %ebx
	subl	$3, %ebx
L1631:
	addl	$1, %edi
	cmpl	%edi, %ebx
	je	L1749
	movzbl	-1(%edi), %ecx
	addl	%ecx, %esi
	js	L1683
	cmpl	$255, %ecx
	je	L1631
	jmp	L1630
L1746:
	movl	%ebp, 36(%esp)
	movl	44(%esp), %ebp
	movl	%esi, 20(%esp)
	jmp	L1626
L1685:
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L1637:
	movzwl	(%eax), %esi
	movl	%ebx, %edi
	movw	%si, 52(%esp)
	movzwl	(%eax), %eax
	movw	%ax, 54(%esp)
	movl	52(%esp), %eax
	movl	%eax, 56(%esp)
	jmp	L1644
L1650:
	leal	(%esi,%eax), %edi
	movl	%ebx, %ebp
	movl	%ecx, 12(%esp)
	leal	(%ecx,%eax), %edx
	movl	%edi, 20(%esp)
	movl	%esi, %ebx
	jmp	L1626
L1772:
	movl	24(%esp), %ecx
	leal	-5(%ecx), %edx
	cmpl	%edi, %edx
	jb	L1622
	subl	$7, %ecx
	movl	%ecx, 32(%esp)
	cmpl	%ecx, 20(%esp)
	jnb	L1674
	movl	20(%esp), %edx
	movl	%eax, 36(%esp)
	movl	%eax, %esi
	movl	%ecx, %eax
	movl	%edx, %edi
L1675:
	movl	(%esi), %ecx
	addl	$8, %edx
	addl	$8, %esi
	movl	%ecx, -8(%edx)
	movl	-4(%esi), %ecx
	movl	%ecx, -4(%edx)
	cmpl	%eax, %edx
	jb	L1675
	movl	32(%esp), %ecx
	movl	36(%esp), %eax
	movl	%ecx, %edx
	movl	%ecx, 20(%esp)
	subl	%edi, %edx
	addl	%edx, %eax
L1674:
	movl	12(%esp), %edi
	cmpl	%edi, 20(%esp)
	jnb	L1619
	movl	12(%esp), %ecx
	movl	20(%esp), %edi
	.p2align 4
	.p2align 4
	.p2align 3
L1676:
	movzbl	(%eax), %edx
	addl	$1, %edi
	addl	$1, %eax
	movb	%dl, -1(%edi)
	cmpl	%edi, %ecx
	jne	L1676
	jmp	L1759
L1771:
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
	jmp	L1671
L1748:
	movl	%ebp, 20(%esp)
	movl	44(%esp), %ebp
	jmp	L1633
L1687:
	movl	%esi, 20(%esp)
	movl	%ebx, %ebp
	movl	32(%esp), %esi
	jmp	L1651
L1768:
	movl	%ebp, 20(%esp)
	movl	%edi, %ebx
	movl	44(%esp), %ebp
	jmp	L1633
L1774:
	subl	$3, %edi
L1665:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	je	L1622
	movzbl	-1(%ebx), %esi
	addl	%esi, %ecx
	js	L1622
	cmpl	$255, %esi
	je	L1665
	jmp	L1662
L1689:
	movl	%esi, %ebx
	jmp	L1622
L1773:
	movl	28(%esp), %edi
	movl	12(%esp), %ecx
	leal	-14(%edi), %ebx
L1657:
	addl	$1, %esi
	cmpl	%ebx, %esi
	je	L1689
	movzbl	-1(%esi), %edx
	addl	%edx, %eax
	js	L1689
	cmpl	$255, %edx
	je	L1657
	movl	%ecx, 12(%esp)
	jmp	L1654
L1769:
	movzwl	32(%esp), %ebx
	cmpw	$2, %bx
	je	L1685
	cmpw	$4, %bx
	je	L1686
	subw	$1, %bx
	jne	L1643
	movl	%edi, %ebx
	jmp	L1639
	.p2align 4,,10
	.p2align 3
L1643:
	leal	8(%edx), %ebx
	movl	%ebx, 20(%esp)
	movl	%ebx, %esi
	cmpl	$7, %ebp
	jbe	L1775
	movl	(%eax), %ebx
	movl	12(%esp), %ecx
	addl	$8, %eax
	movl	%ebx, (%edx)
	movl	-4(%eax), %ebx
	movl	%ebx, 4(%edx)
	jmp	L1647
L1690:
	movl	%esi, %ebx
	jmp	L1652
L1775:
	movl	%edi, %ebx
	jmp	L1640
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	_tdefl_compress_block.lto_priv.0
	.def	_tdefl_compress_block.lto_priv.0;	.scl	2;	.type	32;	.endef
_tdefl_compress_block.lto_priv.0:
LFB91:
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
	je	L1777
	movl	$134744072, 36754(%eax)
	xorl	%edx, %edx
	movl	$134744072, 36758(%eax)
	movl	$134744072, 36762(%eax)
	movl	$134744072, 36766(%eax)
L1778:
	movl	$134744072, 36626(%eax,%edx)
	movl	$134744072, 36630(%eax,%edx)
	movl	$134744072, 36634(%eax,%edx)
	movl	$134744072, 36638(%eax,%edx)
	addl	$16, %edx
	cmpl	$128, %edx
	jb	L1778
	movl	$151587081, 36866(%eax)
	xorl	%edx, %edx
	movl	$151587081, 36870(%eax)
	movl	$151587081, 36874(%eax)
	movl	$151587081, 36878(%eax)
L1780:
	movl	$151587081, 36770(%eax,%edx)
	movl	$151587081, 36774(%eax,%edx)
	movl	$151587081, 36778(%eax,%edx)
	movl	$151587081, 36782(%eax,%edx)
	addl	$16, %edx
	cmpl	$96, %edx
	jb	L1780
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
	jbe	L1782
	.p2align 6
	.p2align 4
	.p2align 3
L1784:
	cmpl	52(%eax), %edi
	jnb	L1783
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L1783:
	movl	68(%eax), %ebx
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%ebx), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1784
	leal	37490(%eax), %ebp
	cmpl	40(%eax), %ebp
	jb	L1821
	.p2align 4
	.p2align 3
L1785:
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
	jbe	L1805
	.p2align 6
	.p2align 4
	.p2align 3
L1807:
	cmpl	%esi, %edx
	jnb	L1806
	leal	1(%edx), %ecx
	movl	%ecx, 48(%eax)
	movb	%bl, (%edx)
	movl	72(%eax), %ebx
	movl	48(%eax), %edx
	movl	52(%eax), %esi
L1806:
	movl	68(%eax), %edi
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%edi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1807
L1805:
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
L1777:
	.cfi_restore_state
	movl	%eax, 8(%esp)
	call	_tdefl_start_dynamic_block
	movl	8(%esp), %eax
	movl	72(%eax), %edx
	movl	68(%eax), %ecx
	movl	48(%eax), %edi
L1782:
	leal	37490(%eax), %ebp
	cmpl	40(%eax), %ebp
	jnb	L1785
L1821:
	movl	$1, 12(%esp)
	.p2align 4
	.p2align 3
L1804:
	cmpl	$1, 12(%esp)
	jne	L1786
	movzbl	0(%ebp), %ebx
	addl	$1, %ebp
	orb	$1, %bh
	movl	%ebx, 12(%esp)
L1786:
	movzbl	0(%ebp), %ebx
	movl	%ebx, 8(%esp)
	testb	$1, 12(%esp)
	je	L1787
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
	jbe	L1788
	movl	8(%esp), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1790:
	cmpl	52(%eax), %edi
	jnb	L1789
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L1789:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1790
	movl	%ebx, 8(%esp)
L1788:
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
	jbe	L1791
	.p2align 6
	.p2align 4
	.p2align 3
L1793:
	cmpl	52(%eax), %edi
	jnb	L1792
	leal	1(%edi), %edx
	movl	%edx, 48(%eax)
	movb	%bl, (%edi)
	movl	72(%eax), %ebx
	movl	48(%eax), %edi
L1792:
	movl	68(%eax), %esi
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1793
	movl	%ecx, 8(%esp)
L1791:
	movl	16(%esp), %esi
	cmpw	$511, 20(%esp)
	ja	L1794
	movzbl	_s_tdefl_small_dist_sym.lto_priv.0(%esi), %edx
	movzbl	_s_tdefl_small_dist_extra(%esi), %esi
L1795:
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
	jbe	L1796
	.p2align 6
	.p2align 4
	.p2align 3
L1798:
	cmpl	52(%eax), %edi
	jnb	L1797
	leal	1(%edi), %edx
	movl	%edx, 48(%eax)
	movb	%bl, (%edi)
	movl	72(%eax), %ebx
	movl	48(%eax), %edi
L1797:
	movl	68(%eax), %edx
	shrl	$8, %ebx
	movl	%ebx, 72(%eax)
	leal	-8(%edx), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1798
L1796:
	movl	16(%esp), %edx
	andl	_mz_bitmasks(,%esi,4), %edx
	sall	%cl, %edx
	addl	%esi, %ecx
	orl	%ebx, %edx
	movl	%ecx, 68(%eax)
	movl	%edx, 72(%eax)
	cmpl	$7, %ecx
	jbe	L1799
	.p2align 6
	.p2align 4
	.p2align 3
L1801:
	cmpl	52(%eax), %edi
	jnb	L1800
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L1800:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1801
L1799:
	shrl	12(%esp)
	cmpl	40(%eax), %ebp
	jb	L1804
	jmp	L1785
	.p2align 4,,10
	.p2align 3
L1787:
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
	jbe	L1799
	.p2align 6
	.p2align 4
	.p2align 3
L1803:
	cmpl	52(%eax), %edi
	jnb	L1802
	leal	1(%edi), %ecx
	movl	%ecx, 48(%eax)
	movb	%dl, (%edi)
	movl	72(%eax), %edx
	movl	48(%eax), %edi
L1802:
	movl	68(%eax), %esi
	shrl	$8, %edx
	movl	%edx, 72(%eax)
	leal	-8(%esi), %ecx
	movl	%ecx, 68(%eax)
	cmpl	$7, %ecx
	ja	L1803
	shrl	12(%esp)
	cmpl	40(%eax), %ebp
	jb	L1804
	jmp	L1785
	.p2align 4,,10
	.p2align 3
L1794:
	shrl	$8, %esi
	movzbl	_s_tdefl_large_dist_sym.lto_priv.0(%esi), %edx
	movzbl	_s_tdefl_large_dist_extra(%esi), %esi
	jmp	L1795
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
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
.lcomm __ZZ13startwin_putsE7newline,1,1
.lcomm __ZZ13startwin_putsE6dactrl,4,4
	.data
	.align 4
__ZZL15startup_dlgprocP6HWND__jjlE14textMessageLog:
	.ascii "Message Log\0"
	.align 4
__ZZL15startup_dlgprocP6HWND__jjlE9textSetup:
	.ascii "Setup\0"
.lcomm __ZZL15startup_dlgprocP6HWND__jjlE4hbmp,4,4
.lcomm __ZL4mode,4,4
	.section .rdata,"dr"
LC40:
	.ascii "Keyboard only\0"
LC41:
	.ascii "Keyboard and mouse\0"
LC42:
	.ascii "Keyboard and joystick\0"
LC43:
	.ascii "All supported devices\0"
	.align 4
_controlstrings:
	.long	LC40
	.long	LC41
	.long	LC42
	.long	LC43
.lcomm __ZL5pages,12,4
	.globl	__ZL9gfilelist.lto_priv.0
	.bss
	.align 32
__ZL9gfilelist.lto_priv.0:
	.space 32
	.globl	_curpalette
	.align 32
_curpalette:
	.space 1024
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
.lcomm __ZL7tempbuf,256,32
.lcomm __ZZ11DoZillaMovesE6handle,4,4
	.align 16
LC31:
	.long	32
	.long	24
	.long	16
	.long	15
	.align 8
LC35:
	.long	0
	.long	1
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z16GetOverlapSectoriiPsS_;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileWaterAdjusts.isra.0;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z22SpriteWarpToUnderwaterP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z9InitShellss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z10WallBouncess;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnFloorSplashs;	.scl	2;	.type	32;	.endef
	.def	__Z11SlopeBouncesPh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnGrenadeExps;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorFalls;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorJumps;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	_paletteMakeLookupTable.part.0;	.scl	2;	.type	32;	.endef
	.def	_Paths_ReadRegistryValue.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_addsearchpath_user;	.scl	2;	.type	32;	.endef
	.def	_initgroupfile;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_videoCheckMode;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
