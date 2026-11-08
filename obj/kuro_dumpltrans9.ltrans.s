	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z10SetVisHighv
	.def	__Z10SetVisHighv;	.scl	2;	.type	32;	.endef
__Z10SetVisHighv:
LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE0:
	.globl	__ZL17_internal_gettimev.lto_priv.0
	.def	__ZL17_internal_gettimev.lto_priv.0;	.scl	2;	.type	32;	.endef
	.set	__ZL17_internal_gettimev.lto_priv.0,__Z10SetVisHighv
	.p2align 4
	.def	__Z11pSetVisNormP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pSetVisNormP18PANEL_SPRITEstruct:
LFB1:
	.cfi_startproc
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.def	__ZL13CompareTargetPKvS0_;	.scl	3;	.type	32;	.endef
__ZL13CompareTargetPKvS0_:
LFB3:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%esp), %edx
	movl	8(%eax), %eax
	subl	8(%edx), %eax
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.def	__Z20DoPlayerSetWadeDepthP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z20DoPlayerSetWadeDepthP12PLAYERstruct:
LFB4:
	.cfi_startproc
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movw	%cx, 378(%eax)
	movl	152(%eax), %eax
	testl	%eax, %eax
	je	L14
	testb	$1, 38(%eax)
	je	L14
	movl	%eax, %ecx
	subl	_sector, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	sarl	$3, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	8(%edx), %esi
	imull	$-858993459, %ecx, %ecx
	movl	8(%eax), %eax
	addl	$14847, %esi
	movl	_SectUser(,%ecx,4), %ecx
	movswl	10(%ecx), %ebx
	movl	%ebx, %ecx
	sall	$8, %ebx
	subl	%ebx, %eax
	cmpl	%eax, %esi
	jl	L5
	movw	%cx, 378(%edx)
L5:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L14:
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z19DoPlayerSpriteResets
	.def	__Z19DoPlayerSpriteResets;	.scl	2;	.type	32;	.endef
__Z19DoPlayerSpriteResets:
LFB5:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %edx
	testl	%edx, %edx
	je	L18
	movl	40(%eax), %ecx
	movswl	348(%edx), %eax
	cmpl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%edx)
	je	L24
	testb	$-128, 22968(%edx)
	je	L20
	movl	4(%ecx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L18:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L20:
	movl	(%ecx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L24:
	movl	16(%ecx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z17DoPlayerBeginFallP12PLAYERstruct
	.def	__Z17DoPlayerBeginFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerBeginFallP12PLAYERstruct:
LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movlps	LC0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	22968(%eax), %edx
	movswl	348(%eax), %ebx
	andl	$-16405, %edx
	movl	_User(,%ebx,4), %ecx
	orl	$6, 22972(%eax)
	orl	$8, %edx
	movlps	%xmm0, 140(%eax)
	movl	%edx, 22968(%eax)
	movl	$__Z12DoPlayerFallP12PLAYERstruct, 22964(%eax)
	movl	$50000, 208(%eax)
	movl	40(%ecx), %eax
	movl	8(%eax), %edx
	cmpl	%edx, 20(%ecx)
	je	L28
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L28:
	.cfi_restore_state
	movl	12(%eax), %edx
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z18DoPlayerBeginCrawlP12PLAYERstruct
	.def	__Z18DoPlayerBeginCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18DoPlayerBeginCrawlP12PLAYERstruct:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movlps	LC1, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movswl	348(%eax), %ecx
	movl	22968(%eax), %edx
	movl	_User(,%ecx,4), %ebx
	andl	$-13, %edx
	orl	$6, 22972(%eax)
	orb	$64, %dh
	movlps	%xmm0, 140(%eax)
	movl	%edx, 22968(%eax)
	movl	$45056, 208(%eax)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%eax)
	movl	40(%ebx), %eax
	movl	-4(%ebp), %ebx
	movl	16(%eax), %edx
	movl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z18DoPlayerBeginClimbP12PLAYERstruct
	.def	__Z18DoPlayerBeginClimbP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18DoPlayerBeginClimbP12PLAYERstruct:
LFB11:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %ecx
	movl	22968(%ecx), %eax
	movl	352(%ecx), %ebx
	movl	$__Z13DoPlayerClimbP12PLAYERstruct, 22964(%ecx)
	orl	$4, 22972(%ecx)
	andl	$-16413, %eax
	leal	12(%ebx), %edx
	orl	$-2147450880, %eax
	subl	%esi, %edx
	movl	%eax, 22968(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movswl	348(%ecx), %edx
	movl	_User(,%edx,4), %eax
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	L32
	cmpw	$6144, (%ecx)
	ja	L31
L32:
	imull	$44, %edx, %edx
	movl	_sg_PlayerNinjaClimb, %ecx
	movl	$_sg_PlayerNinjaClimb, 20(%eax)
	movl	$0, 76(%eax)
	movl	%ecx, 24(%eax)
	movl	%ecx, 16(%eax)
	movswl	14(%esi,%edx), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
L31:
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
LFE11:
	.p2align 4
	.globl	__Z16DoPlayerBeginFlyP12PLAYERstruct
	.def	__Z16DoPlayerBeginFlyP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16DoPlayerBeginFlyP12PLAYERstruct:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movlps	LC2, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	22968(%eax), %edx
	orl	$6, 22972(%eax)
	movl	$55808, 208(%eax)
	andl	$-16397, %edx
	movl	$-2560, 120(%eax)
	orb	$8, %dh
	movl	$__Z11DoPlayerFlyP12PLAYERstruct, 22964(%eax)
	movl	%edx, 22968(%eax)
	movl	$0, 112(%eax)
	movl	$67108864, 380(%eax)
	movlps	%xmm0, 140(%eax)
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %edx
	movl	16(%edx), %ecx
	testl	%ecx, %ecx
	je	L39
	cmpw	$6144, (%ecx)
	ja	L38
L39:
	movl	_sg_PlayerNinjaFly, %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$_sg_PlayerNinjaFly, 20(%edx)
	movl	$0, 76(%edx)
	movl	%ecx, 24(%edx)
	movl	%ecx, 16(%edx)
	movswl	14(%eax), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
L38:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z17DoPlayerTestCrawlP12PLAYERstruct
	.def	__Z17DoPlayerTestCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerTestCrawlP12PLAYERstruct:
LFB14:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	136(%edx), %eax
	subl	132(%edx), %eax
	addl	$17407, %eax
	cmpl	$34814, %eax
	setbe	%al
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z24DoPlayerBeginOperateBoatP12PLAYERstruct
	.def	__Z24DoPlayerBeginOperateBoatP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z24DoPlayerBeginOperateBoatP12PLAYERstruct:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movlps	LC2, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movswl	348(%eax), %edx
	movl	104(%eax), %ebx
	movl	_User(,%edx,4), %ecx
	movlps	%xmm0, 140(%eax)
	movl	$__Z19DoPlayerOperateBoatP12PLAYERstruct, 22964(%eax)
	testb	$8, 597(%ebx)
	je	L47
	orl	$-2147483648, 22968(%eax)
L47:
	movl	40(%ecx), %eax
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	L46
	movl	_User(,%edx,4), %eax
	movl	16(%eax), %ebx
	testl	%ebx, %ebx
	je	L49
	cmpw	$6144, (%ebx)
	ja	L46
L49:
	movl	%ecx, 20(%eax)
	movl	(%ecx), %ecx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	$0, 76(%eax)
	movl	%ecx, 24(%eax)
	movl	%ecx, 16(%eax)
	movswl	14(%edx), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
L46:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z24DoPlayerBeginOperateTankP12PLAYERstruct
	.def	__Z24DoPlayerBeginOperateTankP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z24DoPlayerBeginOperateTankP12PLAYERstruct:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movlps	LC2, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movswl	348(%eax), %edx
	movl	104(%eax), %ebx
	movl	_User(,%edx,4), %ecx
	movlps	%xmm0, 140(%eax)
	movl	$__Z19DoPlayerOperateTankP12PLAYERstruct, 22964(%eax)
	testb	$8, 597(%ebx)
	je	L61
	orl	$-2147483648, 22968(%eax)
L61:
	movl	40(%ecx), %eax
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L60
	movl	_User(,%edx,4), %eax
	movl	16(%eax), %ebx
	testl	%ebx, %ebx
	je	L63
	cmpw	$6144, (%ebx)
	ja	L60
L63:
	movl	%ecx, 20(%eax)
	movl	(%ecx), %ecx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	$0, 76(%eax)
	movl	%ecx, 24(%eax)
	movl	%ecx, 16(%eax)
	movswl	14(%edx), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
L60:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	@getq16angle.lto_priv.1@8
	.def	@getq16angle.lto_priv.1@8;	.scl	2;	.type	32;	.endef
@getq16angle.lto_priv.1@8:
LFB19:
	.cfi_startproc
	call	@getangle@8
	sall	$16, %eax
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z21DoPlayerTeleportPauseP12PLAYERstruct
	.def	__Z21DoPlayerTeleportPauseP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21DoPlayerTeleportPauseP12PLAYERstruct:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movswl	348(%eax), %edx
	movl	_User(,%edx,4), %ecx
	movzwl	268(%eax), %edx
	movw	%dx, 270(%eax)
	movzwl	216(%ecx), %edx
	subl	$3, %edx
	movw	%dx, 216(%ecx)
	testw	%dx, %dx
	jle	L78
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L78:
	.cfi_restore_state
	andl	$-2, 22972(%eax)
	andl	$-129, 22968(%eax)
	movl	$0, 200(%eax)
	movl	$0, 192(%eax)
	movl	$0, 196(%eax)
	movl	$0, 212(%eax)
	movl	$0, 216(%eax)
	movl	$0, 228(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.cfi_endproc
LFE21:
	.p2align 4
	.def	__Z23UpdatePlayerUnderSpriteP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z23UpdatePlayerUnderSpriteP12PLAYERstruct:
LFB23:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L101
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	352(%eax), %ebx
	movswl	24(%ebx), %eax
	movl	8(%ebx), %ecx
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	movl	8(%edx), %eax
	movl	%eax, 24(%esp)
	testb	$-128, 12(%ebx)
	je	L81
	movl	%esi, 44(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movswl	14(%ebx), %esi
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%esi,4), %ebp
	cmpb	$64, %al
	je	L104
	imull	%ebp, %eax
	addl	%eax, %eax
L83:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	movl	52(%esp), %ebp
	.cfi_restore 5
	sall	$8, %esi
	subl	%esi, %eax
	movl	44(%esp), %esi
	.cfi_restore 6
	addl	%eax, %ecx
L81:
	movswl	350(%edi), %eax
	cmpb	$0, 38(%edx)
	jns	L93
	cmpl	24(%esp), %ecx
	jle	L93
	movl	%esi, 44(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movswl	348(%edi), %edx
	movl	_User(,%edx,4), %esi
	testw	%ax, %ax
	js	L105
L86:
	movl	356(%edi), %ecx
	movswl	%ax, %edi
	movl	_User(,%edi,4), %eax
	movl	%eax, 28(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movzwl	24(%ebx), %edx
	cmpw	$4096, %dx
	ja	L88
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	%ax, %dx
	je	L88
	cmpw	$4096, %ax
	je	L88
	movl	%edi, %eax
	movl	%ecx, 32(%esp)
	movl	%edx, 36(%esp)
	call	_do_deletespritesect
	movswl	36(%esp), %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	movl	32(%esp), %ecx
L88:
	movl	%ecx, (%esp)
	movl	%ecx, 32(%esp)
	call	__Z22SpriteWarpToUnderwaterP12spritetypev7
	testb	$-128, 12(%ebx)
	movl	8(%ebx), %eax
	movl	32(%esp), %ecx
	je	L89
	movswl	14(%ebx), %edi
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%edi,4), %ebp
	cmpb	$64, %dl
	je	L106
	imull	%ebp, %edx
	addl	%edx, %edx
L91:
	movsbl	_picanm+2(%edi,%edi,4), %edi
	sall	$8, %edi
	subl	%edi, %edx
	addl	%edx, %eax
L89:
	movswl	24(%ecx), %edx
	movl	_sector, %edi
	subl	24(%esp), %eax
	leal	(%edx,%edx,4), %edx
	leal	(%edi,%edx,8), %edx
	addl	4(%edx), %eax
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	movl	%eax, %edi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ecx)
	movl	28(%esp), %edi
	movl	16(%esi), %eax
	movl	%eax, 16(%edi)
	movl	20(%esi), %eax
	movl	%eax, 20(%edi)
	movl	24(%esi), %eax
	movl	%eax, 24(%edi)
	movzwl	14(%ebx), %eax
	movw	%ax, 14(%ecx)
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %ebp
	.cfi_restore 5
L79:
	movl	40(%esp), %ebx
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L93:
	.cfi_restore_state
	testw	%ax, %ax
	js	L79
	call	__Z10KillSprites
	movl	$-1, %eax
	movl	$0, 356(%edi)
	movw	%ax, 350(%edi)
	movl	40(%esp), %ebx
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L101:
	ret
	.p2align 4,,10
	.p2align 3
L104:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, %eax
	sall	$7, %eax
	jmp	L83
	.p2align 4,,10
	.p2align 3
L105:
	movl	300(%edi), %ecx
	movl	%edi, %eax
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	subl	$_Player, %eax
	movl	%edx, 32(%esp)
	movl	%ecx, %ebp
	sarl	$2, %eax
	movl	$0, 20(%esp)
	sarl	$31, %ebp
	imull	$-432986257, %eax, %eax
	movl	%ebp, %edx
	xorw	%dx, %dx
	leal	32768(%ecx,%edx), %ecx
	addl	$29, %eax
	leal	65535(%ecx), %edx
	testl	%ecx, %ecx
	cwtl
	cmovns	%ecx, %edx
	xorl	%ecx, %ecx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	8(%edi), %edx
	movl	%edx, 12(%esp)
	movl	4(%edi), %edx
	movl	%edx, 8(%esp)
	movl	(%edi), %edx
	movl	%edx, 4(%esp)
	movswl	268(%edi), %edx
	movl	%edx, (%esp)
	movl	$4096, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movw	%ax, 350(%edi)
	cwtl
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	_User(,%eax,4), %ebp
	movl	%eax, 28(%esp)
	leal	12(%ecx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movl	%ecx, 36(%esp)
	mull	%edx
	movl	%ecx, 356(%edi)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	orw	$257, 12(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$2048, 42(%ecx)
	movl	$_sg_NinjaRun, 20(%ebp)
	movzwl	80(%esi), %eax
	movw	%ax, 80(%ebp)
	movl	28(%esp), %eax
	movl	20(%esi), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	188(%esi), %eax
	movl	%edi, 144(%ebp)
	movl	32(%esp), %edx
	movl	36(%esp), %ecx
	movl	%eax, 188(%ebp)
	movzwl	23260(%edi), %eax
	orl	$16777216, 68(%ebp)
	movw	%ax, 84(%ebp)
	movl	40(%esi), %eax
	movl	%eax, 40(%ebp)
	movzwl	14(%edx), %eax
	movw	%ax, 14(%ecx)
	movzbl	18(%edx), %eax
	movb	%al, 18(%ecx)
	movzbl	20(%edx), %eax
	movb	%al, 20(%ecx)
	movzbl	21(%edx), %eax
	movb	%al, 21(%ecx)
	movzwl	350(%edi), %eax
	jmp	L86
	.p2align 4,,10
	.p2align 3
L106:
	movl	%ebp, %edx
	sall	$7, %edx
	jmp	L91
	.cfi_endproc
LFE23:
	.p2align 4
	.def	__Z18StackedWaterSplashP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z18StackedWaterSplashP12PLAYERstruct:
LFB27:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 20(%esp)
	movswl	268(%eax), %edx
	movl	%edx, %ecx
	.cfi_offset 3, -12
	leal	(%edx,%edx,4), %ebx
	movl	_sector, %edx
	cmpw	$2356, 16(%edx,%ebx,8)
	je	L108
	cmpw	$2356, 24(%edx,%ebx,8)
	je	L108
L107:
	movl	20(%esp), %ebx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L108:
	.cfi_restore_state
	movl	352(%eax), %edx
	movw	%cx, 18(%esp)
	movl	8(%edx), %ecx
	testb	$-128, 12(%edx)
	je	L110
	movl	%esi, 24(%esp)
	.cfi_offset 6, -8
	movzbl	21(%edx), %ebx
	movswl	14(%edx), %edx
	movl	%edx, %esi
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %bl
	je	L121
	imull	%edx, %ebx
	leal	(%ebx,%ebx), %edx
L112:
	movsbl	_picanm+2(%esi,%esi,4), %ebx
	movl	24(%esp), %esi
	.cfi_restore 6
	sall	$8, %ebx
	subl	%ebx, %edx
	addl	%edx, %ecx
L110:
	leal	18(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, %ebx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %edx
	movl	%edx, (%esp)
	call	_updatesectorz
	movswl	18(%esp), %edx
	testw	%dx, %dx
	js	L107
	movl	_sector, %eax
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %edx
	testb	$3, 39(%edx)
	je	L107
	leal	8(%ebx), %edx
	movl	$8, 4(%esp)
	leal	4(%ebx), %ecx
	movl	$196, %eax
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	20(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L121:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	sall	$7, %edx
	jmp	L112
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z13DoPlayerSlideP12PLAYERstruct
	.def	__Z13DoPlayerSlideP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13DoPlayerSlideP12PLAYERstruct:
LFB28:
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
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	212(%ebx), %eax
	movl	216(%ebx), %esi
	movl	%eax, %ecx
	orl	%esi, %ecx
	je	L122
	movl	104(%ebx), %edx
	testl	%edx, %edx
	je	L136
L122:
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
L136:
	.cfi_restore_state
	movswl	348(%ebx), %edx
	movl	_User(,%edx,4), %edi
	movl	$53248, %edx
/APP
 # 2407 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$53248, %edx
	movl	%eax, 212(%ebx)
	leal	12799(%eax), %ecx
	movl	%esi, %eax
/APP
 # 2408 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	$25598, %ecx
	ja	L126
	leal	12799(%eax), %edx
	cmpl	$25598, %edx
	ja	L126
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	jmp	L125
	.p2align 4,,10
	.p2align 3
L126:
	movl	%eax, 216(%ebx)
L125:
	movl	$1, 24(%esp)
	leal	268(%ebx), %esi
	movl	$65537, 20(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
	cmpl	$-1, %eax
	je	L135
	movl	$65537, 28(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	sall	$2, %eax
	movl	%eax, 16(%esp)
	movl	216(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	212(%ebx), %eax
	movl	%esi, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_clipmove
	cmpw	$-1, 268(%ebx)
	jne	L128
	movl	328(%ebx), %eax
	addl	$1, __ZZ20PlayerCheckValidMoveP12PLAYERstructE5count
	movlps	320(%ebx), %xmm0
	movl	%eax, 8(%ebx)
	movzwl	270(%ebx), %eax
	movlps	%xmm0, (%ebx)
	movw	%ax, 268(%ebx)
L128:
	movl	$1, 24(%esp)
	movl	$65537, 20(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
	cmpl	$-1, %eax
	jne	L122
L135:
	testb	$2, 22968(%ebx)
	jne	L122
	movzwl	84(%edi), %edx
	movl	%ebx, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L122
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z15DoPlayerCurrentP12PLAYERstruct
	.def	__Z15DoPlayerCurrentP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15DoPlayerCurrentP12PLAYERstruct:
LFB30:
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
	movl	8(%ebp), %ebx
	movswl	268(%ebx), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L137
	movswl	14(%eax), %edx
	movzwl	18(%eax), %edi
	leal	268(%ebx), %esi
	leal	512(%edx), %eax
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	movw	%ax, 38(%esp)
	movzwl	_sintable(%edx,%edx), %eax
	movl	$1, 24(%esp)
	movl	$65537, 20(%esp)
	movw	%ax, 36(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
	cmpl	$-1, %eax
	je	L145
	movl	$65537, 28(%esp)
	movl	144(%ebx), %eax
	movswl	%di, %edx
	movl	%eax, 24(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 20(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 16(%esp)
	movswl	36(%esp), %eax
	imull	%edx, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$4, %eax
	movl	%eax, 12(%esp)
	movswl	38(%esp), %eax
	imull	%edx, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$4, %eax
	movl	%eax, 8(%esp)
	call	_clipmove
	cmpw	$-1, 268(%ebx)
	jne	L140
	movl	328(%ebx), %eax
	addl	$1, __ZZ20PlayerCheckValidMoveP12PLAYERstructE5count
	movlps	320(%ebx), %xmm0
	movl	%eax, 8(%ebx)
	movzwl	270(%ebx), %eax
	movlps	%xmm0, (%ebx)
	movw	%ax, 268(%ebx)
L140:
	movl	$1, 24(%esp)
	movl	$65537, 20(%esp)
	movl	144(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	140(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	352(%ebx), %eax
	movzbl	18(%eax), %eax
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
L137:
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
L145:
	.cfi_restore_state
	testb	$2, 22968(%ebx)
	jne	L137
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movzwl	84(%eax), %edx
	movl	%ebx, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L137
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__Z17PlayerSectorBoundP12PLAYERstructi.constprop.0;	.scl	3;	.type	32;	.endef
__Z17PlayerSectorBoundP12PLAYERstructi.constprop.0:
LFB32:
	.cfi_startproc
	movl	%eax, %edx
	movswl	268(%eax), %eax
	cmpw	$8, %ax
	jg	L154
	ret
	.p2align 4,,10
	.p2align 3
L154:
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	leal	28(%esp), %ecx
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	leal	24(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %ecx
	movl	%ecx, 4(%esp)
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	20(%esp), %edx
	movl	28(%esp), %eax
	movl	8(%edx), %ecx
	subl	$256, %eax
	cmpl	%eax, %ecx
	jle	L148
	movl	%eax, 8(%edx)
	movl	%eax, %ecx
L148:
	movl	24(%esp), %eax
	addl	$256, %eax
	cmpl	%ecx, %eax
	jle	L146
	movl	%eax, 8(%edx)
L146:
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
LC4:
	.ascii "a\0"
LC5:
	.ascii "superjump.log\0"
	.align 4
LC6:
	.ascii "demo tic %lu: player %d posz %d: DOS sector[-1] super jump applied\12\0"
	.text
	.p2align 4
	.globl	__Z17DoPlayerBeginJumpP12PLAYERstruct
	.def	__Z17DoPlayerBeginJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerBeginJumpP12PLAYERstruct:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$2560, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$64, %esp
	movb	$24, _PlayerGravity
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	movl	22968(%ebx), %eax
	movswl	348(%ebx), %ecx
	andl	$-16409, %eax
	.cfi_offset 7, -12
	movl	_User(,%ecx,4), %edi
	movl	%edx, 144(%ebx)
	orl	$4, %eax
	orl	$6, 22972(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$1024, %eax
	movl	%eax, 140(%ebx)
	movswl	378(%ebx), %eax
	movl	$50000, 208(%ebx)
	leal	-650(,%eax,4), %edx
	movl	%edx, 112(%ebx)
	cmpb	$0, _Prediction
	jne	L158
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movswl	268(%ebx), %esi
	sall	$8, %eax
	movl	_sector, %ecx
	leal	(%esi,%esi,4), %edx
	leal	(%ecx,%edx,8), %edx
	movl	%esi, %ecx
	movl	$3, %esi
	movl	8(%edx), %edx
	subl	%eax, %edx
	leal	-512(%edx), %eax
	movl	%eax, 28(%esp)
L157:
	movl	300(%ebx), %edx
	movl	$0, 12(%esp)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	leal	32(%esp), %edx
	movl	%edx, 16(%esp)
	sarl	$16, %eax
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %edx
	movl	%edx, 8(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, (%esp)
	movl	28(%esp), %ecx
	movl	%eax, 4(%esp)
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	46(%esp), %ecx
	orw	48(%esp), %cx
	js	L160
	movswl	46(%esp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	movw	%ax, 48(%esp)
	testw	%ax, %ax
	js	L161
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	movb	$0, 27(%esp)
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
L162:
	subl	8(%ebx), %eax
	addl	$12799, %eax
	cmpl	$25598, %eax
	jbe	L177
L160:
	subl	$1, %esi
	je	L176
	movswl	268(%ebx), %ecx
	jmp	L157
	.p2align 4,,10
	.p2align 3
L177:
	movl	32(%esp), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	movl	36(%esp), %ecx
	negl	%eax
	cmovs	%edx, %eax
	subl	4(%ebx), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %ecx
	cmpl	%edx, %eax
	leal	255(,%ecx,4), %ecx
	movl	%ecx, 20(%esp)
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, 20(%esp)
	jl	L160
	cmpb	$0, 27(%esp)
	jne	L178
L163:
	movswl	378(%ebx), %eax
	leal	650(%eax,%eax,4), %eax
	negl	%eax
	movl	%eax, 112(%ebx)
L176:
	movswl	348(%ebx), %ecx
	movl	-8(%ebp), %esi
	.cfi_restore 6
L158:
	movl	$__Z12DoPlayerJumpP12PLAYERstruct, 22964(%ebx)
	movl	$12, %eax
	movw	%ax, 376(%ebx)
	movl	40(%edi), %eax
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	movl	8(%eax), %edx
	movl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L161:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$0, _VoidJumpBugCompat
	jne	L160
	movb	$1, 27(%esp)
	xorl	%eax, %eax
	jmp	L162
L178:
	movzbl	_DemoSyncRecord, %eax
	orb	_DemoSyncTest, %al
	je	L163
	movl	$LC4, 4(%esp)
	movl	$LC5, (%esp)
	call	_fopen
	movl	%eax, %esi
	testl	%eax, %eax
	je	L163
	movl	8(%ebx), %eax
	movl	$LC6, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	movl	%eax, 12(%esp)
	movl	_DemoRunningTics, %eax
	movl	%eax, 8(%esp)
	call	_fprintf
	movl	%esi, (%esp)
	call	_fclose
	jmp	L163
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z17DoPlayerBeginWadeP12PLAYERstruct
	.def	__Z17DoPlayerBeginWadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerBeginWadeP12PLAYERstruct:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %ecx
	movswl	348(%ecx), %eax
	movl	152(%ecx), %edx
	movl	_User(,%eax,4), %ebx
	testl	%edx, %edx
	je	L180
	testb	$1, 14(%edx)
	jne	L196
L180:
	movlps	LC7, %xmm0
	andl	$-16397, 22968(%ecx)
	orl	$6, 22972(%ecx)
	movl	$50000, 208(%ecx)
	movl	$__Z12DoPlayerWadeP12PLAYERstruct, 22964(%ecx)
	movlps	%xmm0, 140(%ecx)
	cmpb	$0, _Prediction
	jne	L184
	cmpw	$20, 378(%ecx)
	jg	L197
L184:
	movl	112(%ecx), %edx
	cmpl	$100, %edx
	jg	L198
L186:
	subl	$1, %edx
	cmpl	$1298, %edx
	ja	L187
	movl	$0, 112(%ecx)
L187:
	movl	40(%ebx), %edx
	movl	-4(%ebp), %ebx
	movl	4(%edx), %edx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L196:
	.cfi_restore_state
	movzwl	84(%ebx), %edx
	movl	%ecx, %eax
	movl	%ecx, 12(%esp)
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	12(%esp), %ecx
	movl	$-1, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L197:
	.cfi_restore_state
	movl	_User(,%eax,4), %edx
	movswl	196(%edx), %eax
	testw	%ax, %ax
	js	L185
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	call	__Z10SetSuicides
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
L185:
	movl	$-2, %eax
	movw	%ax, 196(%edx)
	movl	112(%ecx), %edx
	movswl	348(%ecx), %eax
	cmpl	$100, %edx
	jle	L186
L198:
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	call	__Z11SpawnSplashs
	movl	12(%esp), %ecx
	movl	112(%ecx), %edx
	movswl	348(%ecx), %eax
	jmp	L186
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z15pDisplaySpritesP12PLAYERstruct
	.def	__Z15pDisplaySpritesP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15pDisplaySpritesP12PLAYERstruct:
LFB40:
	.cfi_startproc
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	%esi, 104(%esp)
	.cfi_offset 6, -16
	leal	22988(%eax), %esi
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	22988(%eax), %edi
	movl	%esi, 40(%esp)
	cmpl	%esi, %edi
	je	L199
	movl	%ebx, 100(%esp)
	xorl	%ecx, %ecx
	movl	%ebp, 112(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	(%edi), %ebp
	movl	%eax, 36(%esp)
	movswl	348(%eax), %eax
	movw	%cx, 56(%esp)
	movl	%ebp, %esi
	movl	_User(,%eax,4), %eax
	movl	%eax, 96(%esp)
	.p2align 4
	.p2align 3
L276:
	movl	204(%edi), %eax
	cmpb	$0, _DrawBeforeView
	je	L201
	testl	$1073741824, %eax
	je	L204
L201:
	testl	$65536, %eax
	jne	L204
	testb	$8, %ah
	je	L205
	cmpw	$0, 194(%edi)
	je	L359
L205:
	movzwl	178(%edi), %ebp
	cmpw	$-1, %bp
	je	L206
	movl	12(%edi), %edx
	testl	%edx, %edx
	je	L206
L207:
	movl	36(%esp), %ecx
	movzbl	_gs+322, %edx
	movzbl	24097(%ecx), %ecx
	testb	%dl, %dl
	je	L208
	leal	-2130(%ebp), %ebx
	cmpw	$7, %bx
	ja	L208
	addw	$380, %bp
	testb	%cl, %cl
	je	L211
	cmpb	$0, _gs+40
	je	L362
	.p2align 4
	.p2align 3
L211:
	testb	$2, %ah
	jne	L204
	movl	12(%edi), %edx
	testl	%edx, %edx
	je	L223
	testb	$1, 18(%edx)
	jne	L204
L223:
	movzbl	246(%edi), %ecx
	movb	%cl, 48(%esp)
	testl	$131072, %eax
	je	L285
	movl	36(%esp), %ebx
	movswl	268(%ebx), %ebx
	testw	%bx, %bx
	js	L286
	movl	_SectUser(,%ebx,4), %ecx
	leal	(%ebx,%ebx,4), %ebx
	movl	%ecx, 44(%esp)
	movl	_sector, %ecx
	leal	(%ecx,%ebx,8), %ebx
	movzbl	29(%ebx), %ecx
	movzbl	28(%ebx), %ebx
	movb	%cl, 60(%esp)
	movb	%bl, 54(%esp)
	testb	%cl, %cl
	jne	L363
L226:
	movsbw	54(%esp), %bx
	movb	$0, 48(%esp)
	subl	$10, %ebx
	movw	%bx, 56(%esp)
L225:
	movl	32(%edi), %ebx
	movl	22968(%ebx), %ebx
	movl	%ebx, %ecx
	andl	$201326592, %ecx
	cmpl	$67108864, %ecx
	je	L204
	andl	$268435456, %ebx
	je	L364
	.p2align 4
	.p2align 3
L204:
	movl	(%esi), %eax
	movl	%esi, %edi
	cmpl	%esi, 40(%esp)
	je	L365
	movl	%eax, %esi
	jmp	L276
	.p2align 4,,10
	.p2align 3
L208:
	testb	%cl, %cl
	je	L212
	cmpb	$0, _gs+40
	jne	L212
	cmpw	$4073, %bp
	jg	L211
	cmpw	$4049, %bp
	jle	L366
	leal	-4050(%ebp), %edx
	cmpw	$23, %dx
	ja	L212
	movzwl	%dx, %edx
	jmp	*L217(,%edx,4)
	.section .rdata,"dr"
	.align 4
L217:
	.long	L220
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L212
	.long	L219
	.long	L218
	.long	L280
	.long	L216
	.text
	.p2align 4,,10
	.p2align 3
L362:
	cmpw	$2510, %bp
	je	L367
	.p2align 4
	.p2align 3
L212:
	movl	36(%esp), %edx
	cmpb	$1, 24093(%edx)
	jne	L211
	cmpw	$2212, %bp
	je	L283
	jg	L222
	cmpw	$2211, %bp
	movl	$2226, %edx
	cmove	%edx, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L206:
	movzwl	180(%edi), %ebp
	jmp	L207
	.p2align 4,,10
	.p2align 3
L365:
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	112(%esp), %ebp
	.cfi_restore 5
L199:
	movl	104(%esp), %esi
	movl	108(%esp), %edi
	addl	$116, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L286:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$-10, %ebx
	movl	$0, 44(%esp)
	movw	%bx, 56(%esp)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L375:
	movl	84(%esp), %edi
	movw	%si, 56(%esp)
	movl	92(%esp), %esi
	movl	204(%edi), %eax
L271:
	testb	$8, %ah
	je	L204
	movzwl	194(%edi), %eax
	subl	$1, %eax
	movw	%ax, 194(%edi)
	testw	%ax, %ax
	jg	L204
L359:
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	%eax, (%edx)
	movl	4(%edi), %edx
	movl	%edx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 116
	subl	$4, %esp
	.cfi_def_cfa_offset 120
	jmp	L204
	.p2align 4,,10
	.p2align 3
L285:
	xorl	%ecx, %ecx
	movl	$2, 60(%esp)
	movw	%cx, 84(%esp)
L224:
	movzwl	234(%edi), %ecx
	testb	$1, %ah
	movl	$3, %ebx
	cmove	60(%esp), %ebx
	movw	%cx, 54(%esp)
	movswl	38(%edi), %ecx
	movl	%ecx, 68(%esp)
	movswl	42(%edi), %ecx
	movl	%ecx, 80(%esp)
	movl	%eax, %ecx
	andl	$32, %ecx
	orl	%ebx, %ecx
	movl	%ecx, %ebx
	orl	$16, %ecx
	testl	$262144, %eax
	cmove	%ebx, %ecx
	movl	%ecx, 44(%esp)
	testb	$32, %ah
	je	L234
	andl	$-3, %ecx
	movl	%ecx, %ebx
	orl	$26, %ecx
	orl	$16, %ebx
	testb	$16, %ah
	cmovne	%ecx, %ebx
	movl	%ebx, %ecx
	orl	$8, %ecx
	testb	$64, %ah
	cmove	%ebx, %ecx
	movswl	182(%edi), %ebx
	movl	%ebx, 72(%esp)
	movswl	184(%edi), %ebx
	movl	%ecx, 44(%esp)
	movl	%ebx, 64(%esp)
	movswl	186(%edi), %ebx
	movl	%ebx, 60(%esp)
	movswl	188(%edi), %ebx
	movl	%ebx, 76(%esp)
	movzwl	244(%edi), %ebx
	movw	%bx, 84(%esp)
	testl	%edx, %edx
	je	L239
L372:
	movl	16(%edx), %edx
	testl	$16777216, %edx
	jne	L368
	movzwl	54(%esp), %ebx
	leal	1024(%ebx), %ecx
	movl	%eax, %ebx
	andw	$2047, %cx
	andl	$32768, %ebx
	movl	%ebx, 88(%esp)
	movl	%ecx, %ebx
	cmove	54(%esp), %bx
	movw	%bx, 54(%esp)
	movl	44(%esp), %ebx
	movl	%ebx, %ecx
	orl	$4, %ecx
	cmpl	$0, 88(%esp)
	cmove	%ebx, %ecx
	movl	%ecx, 44(%esp)
	testl	$100663296, %edx
	je	L243
L373:
	movb	$0, 88(%esp)
	testl	$67108864, %edx
	je	L369
	.p2align 4
	.p2align 3
L242:
	movl	212(%edi), %ecx
	movl	%eax, %edx
	andl	$-2147481600, %edx
	movl	%ecx, 84(%esp)
	cmpb	$0, 48(%esp)
	jne	L245
	cmpw	$2221, %bp
	jg	L246
	cmpw	$2219, %bp
	jg	L247
	cmpl	$2048, %edx
	je	L370
L251:
	movl	60(%esp), %edx
	cmpl	%edx, 72(%esp)
	movswl	%bp, %ecx
	movl	76(%esp), %edx
	setg	%bl
	cmpl	%edx, 64(%esp)
	setg	%dl
	cmpl	$30719, %ecx
	jbe	L249
	orb	%bl, %dl
	je	L263
L262:
	movzwl	56(%esp), %ebp
	leal	44(%edi), %edx
	leal	172(%edi), %ecx
	xorl	%ebx, %ebx
	jmp	L274
	.p2align 5
	.p2align 4,,10
	.p2align 3
L272:
	testb	$4, 7(%edx)
	cmovne	%ebx, %ebp
	addl	$16, %edx
	cmpl	%edx, %ecx
	je	L371
L274:
	cmpl	$0, (%edx)
	jne	L272
	cmpw	$0, 10(%edx)
	jns	L272
	addl	$16, %edx
	cmpl	%edx, %ecx
	jne	L274
	.p2align 4
	.p2align 3
L371:
	movw	%bp, 56(%esp)
	jmp	L271
	.p2align 4,,10
	.p2align 3
L234:
	movl	_windowxy1, %ebx
	movl	%ebx, 72(%esp)
	movl	_windowxy1+4, %ebx
	movl	%ebx, 64(%esp)
	movl	_windowxy2, %ebx
	movl	%ebx, 60(%esp)
	movl	_windowxy2+4, %ebx
	movl	%ebx, 76(%esp)
	testl	%edx, %edx
	jne	L372
L239:
	movzbl	84(%esp), %ebx
	movl	%eax, %ecx
	movb	%bl, 88(%esp)
	movzwl	54(%esp), %ebx
	leal	1024(%ebx), %edx
	andw	$2047, %dx
	andl	$32768, %ecx
	cmove	%ebx, %edx
	movl	44(%esp), %ebx
	movw	%dx, 54(%esp)
	movl	%ebx, %edx
	orl	$4, %edx
	testl	%ecx, %ecx
	cmove	%ebx, %edx
	movl	%edx, 44(%esp)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L364:
	movl	36(%esp), %ebx
	cmpb	$0, 23225(%ebx)
	setne	%bl
	movzbl	%bl, %ebx
	orl	$2, %ebx
	movl	%ebx, 60(%esp)
	movzwl	56(%esp), %ebx
	movw	%bx, 84(%esp)
	movl	44(%esp), %ebx
	testl	%ebx, %ebx
	je	L224
	xorl	%ecx, %ecx
	testb	$8, 4(%ebx)
	movzbl	48(%esp), %ebx
	cmove	%ebx, %ecx
	movb	%cl, 48(%esp)
	jmp	L224
	.p2align 4,,10
	.p2align 3
L363:
	movl	44(%esp), %ecx
	testl	%ecx, %ecx
	je	L227
	testb	$8, 4(%ecx)
	jne	L226
L227:
	cmpb	$9, 60(%esp)
	ja	L228
	movsbw	54(%esp), %cx
	movl	$546, %ebx
	subl	$10, %ecx
	movw	%cx, 56(%esp)
	movzbl	60(%esp), %ecx
	btl	%ecx, %ebx
	jc	L225
L228:
	movsbw	54(%esp), %bx
	movzbl	60(%esp), %ecx
	subl	$10, %ebx
	movb	%cl, 48(%esp)
	movw	%bx, 56(%esp)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L368:
	movzwl	54(%esp), %ecx
	orl	$4, 44(%esp)
	addw	$1024, %cx
	andw	$2047, %cx
	movw	%cx, 54(%esp)
	testl	$100663296, %edx
	jne	L373
L243:
	movzbl	84(%esp), %edx
	movb	%dl, 88(%esp)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L366:
	cmpw	$2082, %bp
	je	L278
	jg	L215
	cmpw	$2080, %bp
	je	L279
	cmpw	$2081, %bp
	movl	$4091, %edx
	cmove	%edx, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L283:
	movl	$2225, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L246:
	leal	-4080(%ebp), %ecx
	cmpw	$1, %cx
	ja	L245
L247:
	movl	96(%esp), %ebx
	movzbl	262(%ebx), %ecx
	movb	%cl, 48(%esp)
	cmpl	$2048, %edx
	je	L374
L249:
	movl	68(%esp), %ebx
L358:
	sall	$16, %ebx
	movl	%ebx, 92(%esp)
L260:
	movl	72(%esp), %ecx
	cmpl	60(%esp), %ecx
	jg	L262
	movl	76(%esp), %ebx
	cmpl	%ebx, 64(%esp)
	jg	L262
	movl	60(%esp), %eax
	movl	80(%esp), %edx
	movl	%ecx, 20(%esp)
	movl	%ebx, 32(%esp)
	movl	84(%esp), %ecx
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	sall	$16, %edx
	movl	%eax, 24(%esp)
	movl	44(%esp), %eax
	movl	%eax, 16(%esp)
	movzbl	48(%esp), %eax
	movl	%eax, 12(%esp)
	movsbl	88(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	%bp, %eax
	movl	%eax, 4(%esp)
	movswl	54(%esp), %eax
	movl	%eax, (%esp)
	movl	92(%esp), %eax
	call	_rotatesprite_.part.0.constprop.0
L263:
	movzbl	48(%esp), %eax
	movl	%esi, 92(%esp)
	leal	44(%edi), %ebx
	leal	172(%edi), %ebp
	movl	%edi, 84(%esp)
	movzwl	56(%esp), %esi
	movl	%eax, 88(%esp)
	jmp	L270
	.p2align 4,,10
	.p2align 3
L269:
	addl	$16, %ebx
	cmpl	%ebp, %ebx
	je	L375
L270:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L376
	movswl	(%eax), %eax
L268:
	xorl	%ecx, %ecx
	leal	-1(%eax), %edx
	testb	$4, 7(%ebx)
	cmovne	%ecx, %esi
	cmpw	$30718, %dx
	ja	L269
	movl	84(%esp), %edx
	movswl	12(%ebx), %edi
	addl	68(%esp), %edi
	movl	212(%edx), %ecx
	movswl	14(%ebx), %edx
	sall	$16, %edi
	movl	%eax, 4(%esp)
	addl	80(%esp), %edx
	movswl	54(%esp), %eax
	movl	%edi, 56(%esp)
	sall	$16, %edx
	movl	%edx, 48(%esp)
	movl	76(%esp), %edx
	movl	%eax, (%esp)
	movl	56(%esp), %eax
	movl	%edx, 32(%esp)
	movl	60(%esp), %edx
	movl	%edx, 28(%esp)
	movl	64(%esp), %edx
	movl	%edx, 24(%esp)
	movl	72(%esp), %edx
	movl	%edx, 20(%esp)
	movl	44(%esp), %edx
	movl	%edx, 16(%esp)
	movl	88(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%esi, %edx
	movsbl	%dl, %edi
	movl	48(%esp), %edx
	movl	%edi, 8(%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L269
	.p2align 4,,10
	.p2align 3
L376:
	movswl	10(%ebx), %eax
	testw	%ax, %ax
	jns	L268
	jmp	L269
	.p2align 4,,10
	.p2align 3
L245:
	cmpl	$2048, %edx
	je	L377
L255:
	leal	-4051(%ebp), %edx
	cmpw	$26, %dx
	ja	L251
	movl	$124902519, %ecx
	btl	%edx, %ecx
	jnc	L249
	movl	68(%esp), %ebx
	testb	$4, 44(%esp)
	je	L259
	cmpl	$160, %ebx
	jle	L358
	movl	$65, 68(%esp)
	movl	$4259840, 92(%esp)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L259:
	cmpl	$159, %ebx
	jg	L358
	movl	$345, 68(%esp)
	movl	$22609920, 92(%esp)
	jmp	L260
	.p2align 4,,10
	.p2align 3
L222:
	cmpw	$2213, %bp
	jne	L378
	movl	$2227, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L377:
	cmpb	$0, _UsingMenus
	jne	L255
	cmpl	$4, _rendmode
	je	L257
	xorl	%edx, %edx
	movw	%dx, 194(%edi)
L257:
	orl	$128, 44(%esp)
	jmp	L255
	.p2align 4,,10
	.p2align 3
L369:
	andl	$33554432, %edx
	je	L243
	movzwl	84(%esp), %ebx
	movl	%ebx, %edx
	shrw	$15, %dx
	addl	%ebx, %edx
	sarw	%dx
	movb	%dl, 88(%esp)
	jmp	L242
	.p2align 4,,10
	.p2align 3
L279:
	movl	$4090, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L374:
	cmpb	$0, _UsingMenus
	jne	L249
L360:
	cmpl	$4, _rendmode
	je	L253
	xorl	%ecx, %ecx
	orl	$128, 44(%esp)
	movw	%cx, 194(%edi)
	jmp	L251
L378:
	cmpw	$2216, %bp
	movl	$2227, %edx
	cmove	%edx, %ebp
	jmp	L211
L218:
	movl	$4074, %ebp
	jmp	L211
L219:
	movl	$4077, %ebp
	jmp	L211
L220:
	movl	$4051, %ebp
	jmp	L211
	.p2align 4,,10
	.p2align 3
L278:
	movl	$4092, %ebp
	jmp	L211
L367:
	movl	$2518, %ebp
	jmp	L211
L370:
	cmpb	$0, _UsingMenus
	jne	L251
	jmp	L360
L253:
	orl	$128, 44(%esp)
	jmp	L251
L280:
	movl	$4075, %ebp
	jmp	L211
L216:
	movl	$4076, %ebp
	jmp	L211
L215:
	cmpw	$2130, %bp
	jne	L379
L221:
	cmpb	$1, %dl
	sbbl	%ebp, %ebp
	andw	$-380, %bp
	addw	$2518, %bp
	jmp	L211
L379:
	cmpw	$2510, %bp
	je	L221
	cmpw	$2083, %bp
	jne	L212
	movl	$4093, %ebp
	jmp	L211
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0
	.def	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
__Z17PlayerUpdateKillsP12PLAYERstructs.part.0:
LFB44:
	.cfi_startproc
	movl	%eax, %ecx
	movzwl	_gNet+12, %eax
	cmpw	$3, %ax
	je	L398
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	_numplayers, %esi
	cmpw	$1, %ax
	je	L402
L384:
	addw	23236(%ecx), %dx
	movl	$-99, %eax
	cmpw	%ax, %dx
	cmovge	%edx, %eax
	cmpw	$1000, %dx
	movl	$0, %edx
	cmovge	%edx, %eax
	movw	%ax, 23236(%ecx)
	cmpl	$1, %esi
	jg	L403
	movl	4(%esp), %esi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L403:
	.cfi_restore_state
	movl	4(%esp), %esi
	movl	%ecx, %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z18DisplayFragNumbersP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L402:
	.cfi_restore_state
	cmpb	$0, _gNet+14
	je	L384
	movl	_connecthead, %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L401
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	jmp	L383
	.p2align 5
	.p2align 4,,10
	.p2align 3
L386:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L404
L383:
	imull	$24124, %ebx, %eax
	addl	$_Player, %eax
	cmpl	%edi, %eax
	je	L386
	movswl	348(%eax), %edx
	movl	_User(,%edx,4), %ecx
	movswl	348(%edi), %edx
	movl	_User(,%edx,4), %edx
	movzbl	262(%edx), %edx
	cmpb	%dl, 262(%ecx)
	jne	L386
	movzwl	23236(%eax), %ecx
	movl	$-99, %edx
	addl	%ebp, %ecx
	cmpw	%dx, %cx
	cmovge	%ecx, %edx
	cmpw	$1000, %cx
	movl	$0, %ecx
	cmovge	%ecx, %edx
	movw	%dx, 23236(%eax)
	cmpl	$1, %esi
	jle	L386
	call	__Z18DisplayFragNumbersP12PLAYERstruct
	movl	_connectpoint2(,%ebx,4), %eax
	movl	_numplayers, %esi
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L383
	.p2align 4
	.p2align 3
L404:
	movl	%edi, %ecx
	movl	%ebp, %edx
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
	jmp	L384
	.p2align 4,,10
	.p2align 3
L398:
	.cfi_def_cfa_offset 4
	.cfi_restore 6
	ret
	.p2align 4,,10
	.p2align 3
L401:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	(%esp), %ebx
	.cfi_restore 3
	jmp	L384
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0
	.def	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
__Z17PlayerUpdateArmorP12PLAYERstructs.part.0:
LFB45:
	.cfi_startproc
	cmpw	$999, %dx
	jle	L406
	subw	$1000, %dx
	movl	$100, %ecx
	cmpw	%cx, %dx
	cmova	%ecx, %edx
L407:
	movw	%dx, 23258(%eax)
	cmpb	$1, _gs+12
	jle	L405
	movl	%eax, %edx
	movswl	_screenpeek, %ecx
	subl	$_Player, %edx
	sarl	$2, %edx
	imull	$-432986257, %edx, %edx
	cmpl	%ecx, %edx
	je	L413
L405:
	ret
	.p2align 4,,10
	.p2align 3
L406:
	addw	23258(%eax), %dx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	movl	$100, %ecx
	cmpw	%cx, %dx
	cmovg	%ecx, %edx
	jmp	L407
	.p2align 4,,10
	.p2align 3
L413:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$128, %ecx
	movl	%eax, %ebx
	movl	$2401, %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$168, 4(%esp)
	movl	$56, (%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	23258(%ebx), %ecx
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$58, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
LC8:
	.ascii "source/sw/src/panel.cpp\0"
	.text
	.p2align 4
	.globl	__Z15InitWeaponSwordP12PLAYERstruct.part.0
	.def	__Z15InitWeaponSwordP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z15InitWeaponSwordP12PLAYERstruct.part.0:
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$36, %esp
	movl	23104(%eax), %eax
	testl	%eax, %eax
	je	L415
	movl	204(%eax), %edx
	testb	$4, %dh
	jne	L432
L416:
	cmpl	%eax, 23048(%ebx)
	je	L414
	movl	$_ps_SwordSwing, 20(%esp)
	movss	20(%esp), %xmm0
	movl	$13, %edx
	movl	%ebx, %eax
	movss	LC9, %xmm1
	movl	$_ps_RetractSword, 20(%esp)
	leal	8(%ebx), %edi
	movss	20(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC9, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 20(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23104(%ebx), %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movups	20(%esp), %xmm0
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentSword, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	leal	4(%ebx), %eax
	movl	$_ps_SwordRest, 28(%esi)
	movl	%eax, %ecx
	movups	%xmm0, 12(%esi)
	movl	$9, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$238, %eax
	call	__Z9PlaySoundiPiS_S_i
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L433
L421:
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L414:
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
L433:
	.cfi_restore_state
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$472369071, %eax
	ja	L434
	cmpl	$419941871, %eax
	ja	L435
	cmpl	$367514671, %eax
	ja	L436
	cmpl	$315087471, %eax
	jbe	L421
	cmpb	$0, _Prediction
	jne	L421
	movl	20(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$361, %ecx
	movl	$1375, %edx
	movl	$9, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$LC8, %eax
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L421
	.p2align 4,,10
	.p2align 3
L415:
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentSword, %edx
	movl	%ebx, %eax
	movl	$332, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23104(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L419
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L437
L420:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L419:
	addw	%dx, 42(%eax)
	movl	23104(%ebx), %eax
	jmp	L416
	.p2align 4,,10
	.p2align 3
L432:
	andb	$-5, %dh
	xorl	%ecx, %ecx
	movl	%edx, 204(%eax)
	movl	23048(%ebx), %eax
	andl	$2147479551, 22968(%ebx)
	movl	20(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L417
	movzwl	(%edx), %ecx
L417:
	movw	%cx, 178(%eax)
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
L437:
	.cfi_restore_state
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jle	L420
	jmp	L419
	.p2align 4,,10
	.p2align 3
L435:
	movl	%edi, (%esp)
	movl	20(%esp), %ecx
	movl	%ebx, %edx
	movl	$261, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L421
	.p2align 4,,10
	.p2align 3
L434:
	movl	%edi, (%esp)
	movl	20(%esp), %ecx
	movl	%ebx, %edx
	movl	$247, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L421
	.p2align 4,,10
	.p2align 3
L436:
	movl	%edi, (%esp)
	movl	20(%esp), %ecx
	movl	%ebx, %edx
	movl	$262, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L421
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z14InitWeaponStarP12PLAYERstruct.part.0
	.def	__Z14InitWeaponStarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z14InitWeaponStarP12PLAYERstruct.part.0:
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$36, %esp
	movl	23056(%eax), %eax
	testl	%eax, %eax
	je	L439
	movl	204(%eax), %edx
	xorl	%esi, %esi
	testb	$4, %dh
	jne	L452
L440:
	cmpl	%eax, 23048(%ebx)
	je	L438
	movl	$_ps_ThrowStar, 20(%esp)
	movss	20(%esp), %xmm0
	movl	$1, %edx
	movl	%ebx, %eax
	movss	LC10, %xmm1
	movl	$_ps_RetractStar, 20(%esp)
	leal	8(%ebx), %edi
	movss	20(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC10, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 20(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23056(%ebx), %eax
	movups	20(%esp), %xmm0
	movl	%ebx, %edx
	movl	%eax, 23048(%ebx)
	xorl	%eax, %eax
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentStar, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	leal	4(%ebx), %eax
	movl	$_ps_StarRest, 28(%esi)
	movl	%eax, %ecx
	movups	%xmm0, 12(%esi)
	movl	$9, 4(%esp)
	movl	%edi, (%esp)
	movl	%eax, 20(%esp)
	movl	$279, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$32766, %edx
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$483705453, %eax
	ja	L453
L445:
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L438:
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
L453:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	jne	L445
	movzbl	_gs+322, %eax
	orb	_Prediction, %al
	jne	L445
	movl	20(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$362, %ecx
	movl	$1837, %edx
	movl	$9, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$LC8, %eax
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L445
	.p2align 4,,10
	.p2align 3
L439:
	movl	$208, 4(%esp)
	movl	$_ps_PresentStar, %edx
	movl	$128, %ecx
	movl	%ebx, %eax
	movl	$240, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, 23056(%ebx)
	movswl	178(%eax), %edx
	movl	%eax, %esi
	xorl	%eax, %eax
	cmpl	$30719, %edx
	ja	L443
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L454
L444:
	movzwl	_tilesiz+2(,%edx,4), %eax
L443:
	addw	%ax, 42(%esi)
	movl	23056(%ebx), %eax
	jmp	L440
	.p2align 4,,10
	.p2align 3
L452:
	andb	$-5, %dh
	xorl	%ecx, %ecx
	movl	%edx, 204(%eax)
	movl	23048(%ebx), %eax
	andl	$-4097, 22968(%ebx)
	movl	20(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L441
	movzwl	(%edx), %ecx
L441:
	movw	%cx, 178(%eax)
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
L454:
	.cfi_restore_state
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%edx,4), %eax
	testw	%ax, %ax
	jle	L444
	jmp	L443
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z13InitWeaponUziP12PLAYERstruct.part.0
	.def	__Z13InitWeaponUziP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z13InitWeaponUziP12PLAYERstruct.part.0:
LFB54:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	xorl	%esi, %esi
	pushl	%ebx
	.cfi_offset 3, -16
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$24, %esp
	movl	23064(%eax), %eax
	testl	%eax, %eax
	je	L477
L456:
	cmpl	%eax, 23048(%ebx)
	je	L478
	movl	$_ps_FireUzi+24, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$3, %edx
	movl	%ebx, %eax
	movss	LC11, %xmm1
	movl	$_ps_RetractUzi, 8(%esp)
	andl	$-8193, 22968(%ebx)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC11, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23064(%ebx), %eax
	movups	8(%esp), %xmm0
	movl	%eax, 23048(%ebx)
	xorl	%eax, %eax
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentUzi, %eax
	orl	$131072, 204(%esi)
	movl	$_ps_FireUzi, 28(%esi)
	movw	%ax, 178(%esi)
	movups	%xmm0, 12(%esi)
	testb	$8, 22970(%ebx)
	jne	L479
L464:
	leal	8(%ebx), %eax
	movl	$1, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$239, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L455:
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
L479:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0
	jmp	L464
	.p2align 4,,10
	.p2align 3
L478:
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L460
	movzbl	24092(%ebx), %edx
	cmpb	$1, %dl
	je	L480
	movl	204(%eax), %ecx
	testb	$1, %cl
	je	L462
	testb	%dl, %dl
	jne	L455
	andl	$16, %ecx
	jne	L455
	call	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0
	.p2align 4
	.p2align 3
L460:
	movl	22968(%ebx), %edx
	testb	$32, %dh
	je	L455
	movl	23064(%ebx), %eax
	testb	$1, 204(%eax)
	jne	L455
	movl	23048(%ebx), %ecx
L465:
	andb	$-33, %dh
	movl	%edx, 22968(%ebx)
	testb	$16, 204(%ecx)
	jne	L455
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L477:
	.cfi_restore_state
	movl	$208, 4(%esp)
	movl	$_ps_PresentUzi, %edx
	movl	$128, %ecx
	movl	%ebx, %eax
	movl	$260, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, 23064(%ebx)
	movswl	178(%eax), %edx
	movl	%eax, %esi
	xorl	%eax, %eax
	cmpl	$30719, %edx
	ja	L457
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L458
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%edx,4), %eax
	testw	%ax, %ax
	jg	L457
L458:
	movzwl	_tilesiz+2(,%edx,4), %eax
L457:
	addw	%ax, 42(%esi)
	movl	23064(%ebx), %eax
	jmp	L456
	.p2align 4,,10
	.p2align 3
L462:
	movl	22968(%ebx), %edx
	movl	%eax, %ecx
	testb	$32, %dh
	jne	L465
	jmp	L455
	.p2align 4,,10
	.p2align 3
L480:
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	jmp	L460
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z17InitWeaponHotheadP12PLAYERstruct.part.0
	.def	__Z17InitWeaponHotheadP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z17InitWeaponHotheadP12PLAYERstruct.part.0:
LFB55:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	23084(%eax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L493
L482:
	cmpl	%edx, 23048(%ebx)
	je	L481
	movl	$8, %ecx
	movl	$8, %edx
	movw	%cx, 250(%eax)
	movl	%ebx, %eax
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23084(%ebx), %eax
	movl	%eax, 23048(%ebx)
	movl	32(%eax), %edx
	orl	$131072, 204(%eax)
	movl	$_ps_HotheadAttack, 24(%eax)
	movl	$_ps_PresentHothead, 20(%eax)
	movzbl	23115(%edx), %ecx
	movl	$_ps_RetractHothead, 16(%eax)
	movl	_HotheadRestStates(,%ecx,4), %ecx
	movl	$_ps_PresentHothead, 12(%eax)
	movl	%ecx, 28(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	movzwl	_ps_PresentHothead, %ecx
	movw	%cx, 178(%eax)
	movl	$768, %ecx
	movw	%cx, 232(%eax)
	movl	$512, %ecx
	movw	%cx, 190(%eax)
	andl	$-131073, 22976(%edx)
	movl	32(%eax), %edx
	orl	$131072, 22976(%edx)
	movzbl	23115(%ebx), %edx
	cmpb	$1, %dl
	je	L486
	cmpb	$2, %dl
	je	L487
	testb	%dl, %dl
	je	L494
L488:
	movl	$0, 56(%eax)
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$102, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
L481:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L494:
	.cfi_restore_state
	movl	$2055, %edx
	movw	%dx, 54(%eax)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L487:
	movl	$2057, %edx
	movw	%dx, 54(%eax)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L493:
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentHothead, %edx
	movl	%ebx, %eax
	movl	$216, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23084(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L483
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L484
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L483
L484:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L483:
	addw	%dx, 42(%eax)
	movl	23084(%ebx), %edx
	jmp	L482
	.p2align 4,,10
	.p2align 3
L486:
	movl	$2056, %ecx
	movw	%cx, 54(%eax)
	jmp	L488
	.cfi_endproc
LFE55:
	.section .rdata,"dr"
LC13:
	.ascii "psp\0"
	.text
	.p2align 4
	.globl	__Z15InitWeaponMicroP12PLAYERstruct.part.0
	.def	__Z15InitWeaponMicroP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z15InitWeaponMicroP12PLAYERstruct.part.0:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%eax, %ebx
	andl	$-16, %esp
	subl	$24, %esp
	movl	23068(%eax), %esi
	testl	%esi, %esi
	je	L505
L496:
	cmpl	%esi, 23048(%ebx)
	je	L506
	movl	$_ps_MicroFire, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$4, %edx
	movl	%ebx, %eax
	movss	LC15, %xmm1
	movl	$_ps_RetractMicro, 8(%esp)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC15, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23068(%ebx), %esi
	movups	8(%esp), %xmm0
	xorl	%edx, %edx
	movzwl	_ps_PresentMicro, %eax
	movl	%esi, 23048(%ebx)
	movl	$_ps_MicroRest, 28(%esi)
	orl	$131072, 204(%esi)
	movw	%dx, 228(%esi)
	movw	%ax, 178(%esi)
	movups	%xmm0, 12(%esi)
	cmpb	$2, 23112(%ebx)
	je	L507
L502:
	leal	8(%ebx), %eax
	movl	$1, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$241, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L495:
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
L507:
	.cfi_restore_state
	cmpb	$0, 24104(%ebx)
	jne	L502
	cmpb	$0, 24106(%ebx)
	jne	L502
	movl	$257, %eax
	movw	%ax, 24104(%ebx)
	jmp	L502
	.p2align 4,,10
	.p2align 3
L506:
	cmpb	$0, 24105(%ebx)
	je	L495
	cmpb	$2, 23112(%ebx)
	jne	L495
	cmpb	$0, 24104(%ebx)
	jne	L495
	cmpb	$0, 23114(%ebx)
	je	L495
	cmpb	$0, 24106(%ebx)
	jne	L495
	movl	$1, %eax
	movw	%ax, 24104(%ebx)
	testl	%esi, %esi
	je	L508
L501:
	movzwl	_ps_InitNuke, %eax
	xorl	%ecx, %ecx
	movl	$_ps_InitNuke, 12(%esi)
	movw	%cx, 228(%esi)
	movw	%ax, 178(%esi)
	jmp	L495
	.p2align 4,,10
	.p2align 3
L505:
	movl	$205, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentMicro, %edx
	movl	$160, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23068(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L497
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L498
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L497
L498:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L497:
	addw	%dx, 42(%eax)
	movl	23068(%ebx), %esi
	jmp	L496
L508:
	movl	$7738, %ecx
	movl	$LC8, %edx
	movl	$LC13, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L501
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.def	__Z19DoPlayerSpriteThrowP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19DoPlayerSpriteThrowP12PLAYERstruct:
LFB58:
	.cfi_startproc
	testw	$584, 22969(%eax)
	jne	L509
	movl	23104(%eax), %ecx
	cmpl	%ecx, 23048(%eax)
	movswl	348(%eax), %eax
	je	L513
L512:
	movl	$_sg_PlayerNinjaPunch, %edx
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L509:
	ret
	.p2align 4,,10
	.p2align 3
L513:
	movl	_User(,%eax,4), %edx
	cmpl	$_sg_PlayerNinjaSword, 20(%edx)
	je	L512
	movl	$_sg_PlayerNinjaSword, %edx
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z12DoPickTargetP12spritetypev7jh
	.def	__Z12DoPickTargetP12spritetypev7jh;	.scl	2;	.type	32;	.endef
__Z12DoPickTargetP12spritetypev7jh:
LFB61:
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
	movl	$_StatDamageList, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	subl	_sprite, %eax
	movl	$0, _TargetSortCount
	sarl	$2, %eax
	movb	%cl, 41(%esp)
	imull	$-1171354717, %eax, %eax
	testl	%edx, %edx
	movl	_User(,%eax,4), %eax
	movl	%eax, 60(%esp)
	movl	$1, %eax
	cmovne	%edx, %eax
	movl	%eax, 32(%esp)
	movl	$-1, %eax
	movw	%ax, _TargetSort
	.p2align 4
	.p2align 3
L544:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %edi
	cmpw	$-1, %di
	je	L516
	movl	%esi, 52(%esp)
	.p2align 4
	.p2align 3
L515:
	movl	_sprite, %esi
	movl	%ebp, %eax
	movswl	%di, %edx
	movw	%di, 20(%esp)
	movzwl	_nextspritestat(%edx,%edx), %edi
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cmpl	%edx, %eax
	je	L519
	movzbl	41(%esp), %ebx
	cmpb	$2, %bl
	je	L517
	movl	_User(,%edx,4), %eax
	testb	%bl, %bl
	je	L518
	testb	$4, 68(%eax)
	jne	L519
L518:
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L517
	testb	$2, 22968(%eax)
	jne	L519
L517:
	movswl	20(%esp), %eax
	movl	8(%ebp), %ebx
	movl	4(%ebp), %ecx
	imull	$44, %eax, %eax
	addl	%eax, %esi
	movl	0(%ebp), %eax
	subl	8(%esi), %ebx
	subl	4(%esi), %ecx
	subl	(%esi), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	cmpl	%ecx, %edx
	jge	L520
	leal	68(%esp), %eax
	leal	72(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edx
	movl	76(%esp), %eax
L520:
	cmpl	%eax, %edx
	jge	L521
	leal	68(%esp), %eax
	leal	76(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	76(%esp), %eax
	movl	68(%esp), %edx
L521:
	movl	%edx, %ecx
	addl	72(%esp), %eax
	sarl	$4, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	cmpl	$40000, %eax
	jg	L519
	cmpb	$2, 41(%esp)
	je	L522
	testb	$8, 43(%esi)
	je	L519
L522:
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebp), %edx
	subl	0(%ebp), %ecx
	call	@getangle@8
	movswl	28(%ebp), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	$1024, %ebx
	jle	L524
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L524:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovns	%eax, %edx
	movswl	%dx, %eax
	movw	%dx, 42(%esp)
	movl	%eax, 44(%esp)
	cmpl	32(%esp), %eax
	jg	L519
	movl	60(%esp), %eax
	testl	%eax, %eax
	je	L527
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L527
	movl	8(%eax), %eax
	movl	%eax, 36(%esp)
L528:
	movswl	14(%esi), %edx
	movl	8(%esi), %ebx
	movzbl	21(%esi), %ecx
	movl	%ebx, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	testb	$-128, 12(%esi)
	je	L535
	cmpb	$64, %cl
	je	L582
	imull	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	movl	28(%esp), %eax
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ebx
	movl	%ecx, 56(%esp)
	subl	%ebx, %eax
	movl	%edx, 64(%esp)
	leal	(%eax,%ecx), %ebx
	addl	%ecx, %ecx
	addl	%ecx, %eax
	movl	%eax, 48(%esp)
L537:
	subl	64(%esp), %ecx
	addl	%ecx, 28(%esp)
L539:
	movswl	24(%esi), %eax
	movl	4(%ebp), %edx
	movl	%ebx, 12(%esp)
	movl	36(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	0(%ebp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L583
L540:
	movl	_TargetSortCount, %ecx
	movl	%ecx, %eax
	cmpl	$15, %ecx
	ja	L584
L541:
	movzwl	20(%esp), %esi
	leal	(%eax,%eax,2), %eax
	addl	$1, %ecx
	leal	_TargetSort(,%eax,4), %ebx
	movw	%si, _TargetSort(,%eax,4)
	movzwl	42(%esp), %eax
	movl	$20000, %esi
	movw	%ax, 2(%ebx)
	movl	24(%esp), %eax
	movl	%eax, 4(%ebx)
	sarl	%eax
	subl	%eax, %esi
	movl	$1759218605, %eax
	sall	$16, %esi
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$13, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	subl	%eax, %esi
	movl	32(%esp), %eax
	subl	44(%esp), %eax
	movl	%esi, 20(%esp)
	movl	32(%esp), %esi
	sall	$16, %eax
	divl	%esi
	movl	20(%esp), %esi
	leal	(%eax,%esi,4), %esi
	movl	$1717986919, %eax
	imull	%esi
	sarl	$31, %esi
	movl	$16, %eax
	sarl	%edx
	subl	%esi, %edx
	cmpl	$15, %ecx
	cmova	%eax, %ecx
	movl	%edx, 8(%ebx)
	movl	%ecx, _TargetSortCount
	.p2align 4
	.p2align 3
L519:
	cmpw	$-1, %di
	jne	L515
	movl	52(%esp), %esi
L516:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L544
	movl	_TargetSortCount, %eax
	cmpl	$1, %eax
	jbe	L547
	movl	$__ZL13CompareTargetPKvS0_, 12(%esp)
	movl	$12, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_TargetSort, (%esp)
	call	_qsort
L547:
	movswl	_TargetSort, %eax
	addl	$80, %esp
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
L527:
	.cfi_restore_state
	movswl	14(%ebp), %edx
	movl	8(%ebp), %ecx
	movzbl	21(%ebp), %eax
	movl	%ecx, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %ebx
	testb	$-128, 12(%ebp)
	je	L529
	cmpb	$64, %al
	je	L585
	movl	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%ebx, %ecx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	movl	28(%esp), %edx
	subl	%ecx, %edx
L532:
	imull	%eax, %ebx
L534:
	leal	(%edx,%ebx), %eax
	movl	%eax, 36(%esp)
	jmp	L528
	.p2align 4,,10
	.p2align 3
L535:
	cmpb	$64, %cl
	je	L586
	imull	%eax, %ecx
	movl	28(%esp), %edx
	leal	0(,%ecx,4), %eax
	movl	%ecx, 56(%esp)
	subl	%eax, %edx
	sarl	%eax
	addl	%edx, %eax
	leal	(%edx,%ecx), %ebx
	movl	%eax, 48(%esp)
	jmp	L539
	.p2align 4,,10
	.p2align 3
L583:
	movswl	24(%esi), %ecx
	movl	48(%esp), %ebx
	movl	4(%ebp), %edx
	movl	0(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	4(%esi), %ecx
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%ecx, 4(%esp)
	movswl	24(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	36(%esp), %ecx
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L540
	movswl	24(%esi), %ecx
	movl	4(%ebp), %edx
	movl	0(%ebp), %eax
	movl	%ecx, 16(%esp)
	movl	28(%esp), %ecx
	subl	56(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	4(%esi), %ecx
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%ecx, 4(%esp)
	movswl	24(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	36(%esp), %ecx
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L519
	movl	_TargetSortCount, %ecx
	movl	%ecx, %eax
	cmpl	$15, %ecx
	jbe	L541
	.p2align 4
	.p2align 3
L584:
	movl	24(%esp), %ebx
	movl	$_TargetSort+4, %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L542:
	cmpl	%ebx, (%edx)
	jg	L541
	addl	$1, %eax
	addl	$12, %edx
	cmpl	$16, %eax
	jne	L542
	jmp	L519
	.p2align 4,,10
	.p2align 3
L529:
	cmpb	$64, %al
	je	L587
	movl	%eax, %ecx
	movl	28(%esp), %edx
	imull	%ebx, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L532
	.p2align 4,,10
	.p2align 3
L582:
	movsbl	_picanm+2(%edx,%edx,4), %edx
	movl	%eax, %ecx
	sall	$6, %eax
	sall	$7, %ecx
	movl	%eax, 56(%esp)
	sall	$8, %edx
	leal	(%edx,%ecx), %ebx
	movl	%edx, 64(%esp)
	movl	28(%esp), %edx
	subl	%ebx, %edx
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	%ebx, %eax
	leal	(%ebx,%edx), %ebx
	addl	%ecx, %eax
	movl	%eax, 48(%esp)
	jmp	L537
	.p2align 4,,10
	.p2align 3
L586:
	movl	28(%esp), %edx
	sall	$8, %eax
	movl	%eax, %ebx
	subl	%eax, %edx
	sarl	%eax
	sarl	$2, %ebx
	addl	%edx, %eax
	movl	%ebx, 56(%esp)
	addl	%edx, %ebx
	movl	%eax, 48(%esp)
	jmp	L539
	.p2align 4,,10
	.p2align 3
L585:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%ebx, %ecx
	movl	28(%esp), %edx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
L531:
	sall	$6, %ebx
	jmp	L534
	.p2align 4,,10
	.p2align 3
L587:
	movl	28(%esp), %edx
	movl	%ebx, %eax
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L531
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z23DoSpawnTeleporterEffectP12spritetypev7
	.def	__Z23DoSpawnTeleporterEffectP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z23DoSpawnTeleporterEffectP12spritetypev7:
LFB65:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movswl	28(%eax), %esi
	movswl	14(%eax), %ebp
	movl	%esi, %edx
	leal	512(%esi), %ecx
	movswl	_tilesiz+2(,%ebp,4), %edi
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%edx,%edx), %ebx
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	8(%eax), %edx
	sarl	$5, %ecx
	sarl	$5, %ebx
	addl	(%eax), %ecx
	addl	4(%eax), %ebx
	movl	%edx, 24(%esp)
	movzbl	21(%eax), %edx
	testb	$-128, 12(%eax)
	je	L589
	cmpb	$64, %dl
	je	L596
	imull	%edi, %edx
	addl	%edx, %edx
L591:
	movsbl	_picanm+2(%ebp,%ebp,4), %edi
	sall	$8, %edi
	addl	%edx, %edi
	movl	24(%esp), %edx
	subl	%edi, %edx
	addl	$4096, %edx
	jmp	L592
	.p2align 4,,10
	.p2align 3
L589:
	cmpb	$64, %dl
	je	L597
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L594:
	movl	24(%esp), %edx
	subl	%edi, %edx
	addl	$4096, %edx
L592:
	movl	%esi, 16(%esp)
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	$_s_TeleportEffect, %ecx
	movl	$0, 20(%esp)
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_setspritez
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$42, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	$42, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$16, 12(%ebx)
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
L597:
	.cfi_restore_state
	sall	$8, %edi
	jmp	L594
	.p2align 4,,10
	.p2align 3
L596:
	sall	$7, %edi
	movl	%edi, %edx
	jmp	L591
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7
	.def	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7:
LFB66:
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
	subl	$24, %esp
	.cfi_def_cfa_offset 40
	movswl	14(%eax), %esi
	movswl	28(%eax), %ebx
	movl	8(%eax), %ecx
	movzbl	21(%eax), %edx
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L599
	cmpb	$64, %dl
	je	L606
	imull	%edi, %edx
	addl	%edx, %edx
L601:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	addl	%esi, %edx
	subl	%edx, %ecx
	addl	$4096, %ecx
	jmp	L602
	.p2align 4,,10
	.p2align 3
L599:
	cmpb	$64, %dl
	je	L607
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L604:
	subl	%edi, %ecx
	addl	$4096, %ecx
L602:
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	$_s_TeleportEffect, %ecx
	movl	$0, 20(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	call	_setspritez
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$42, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	$42, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$16, 12(%ebx)
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
L607:
	.cfi_restore_state
	sall	$8, %edi
	jmp	L604
	.p2align 4,,10
	.p2align 3
L606:
	sall	$7, %edi
	movl	%edi, %edx
	jmp	L601
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z12DoPlayerTurnP12PLAYERstructPii
	.def	__Z12DoPlayerTurnP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
__Z12DoPlayerTurnP12PLAYERstructPii:
LFB67:
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
	subl	$24, %esp
	.cfi_offset 3, -20
	movzbl	_PedanticMode, %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 12(%esp)
	movb	%al, 16(%esp)
	testb	%al, %al
	jne	L609
	leal	300(%esi), %eax
	cmpl	%eax, %edx
	je	L702
L609:
	testb	$32, 22970(%esi)
	je	L703
L615:
	movl	20(%esp), %eax
	movswl	272(%esi), %ecx
	movl	(%eax), %ebx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ebx,%eax), %ebx
	movl	%ecx, %eax
	testl	%ebx, %ebx
	leal	65535(%ebx), %edx
	cmovns	%ebx, %edx
	sarl	$16, %edx
	subl	%edx, %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovns	%edi, %ecx
	cmpl	$1024, %ecx
	jg	L633
	movl	%edx, %ecx
	subl	%ecx, %eax
	sarw	$2, %ax
	cmpb	$0, 16(%esp)
	je	L637
L708:
	leal	(%edx,%eax), %ebx
	andl	$2047, %ebx
	sall	$16, %ebx
L638:
	movl	20(%esp), %edi
	leal	300(%esi), %eax
	movl	%ebx, (%edi)
	cmpl	%eax, %edi
	je	L671
	movl	$32768, %ecx
L647:
	addl	%ebx, %ecx
	movswl	272(%esi), %ebx
	leal	65535(%ecx), %edx
	cmovns	%ecx, %edx
	movl	%ebx, 8(%esp)
	movl	%ebx, %eax
	sarl	$16, %edx
	subl	%edx, %ebx
	movl	%ebx, %edi
	negl	%edi
	cmovns	%edi, %ebx
	cmpl	$1024, %ebx
	jg	L648
	movl	%edx, %ebx
L649:
	subl	%ebx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovs	%eax, %edx
	cmpw	$11, %dx
	ja	L608
	movl	8(%esp), %eax
	movl	20(%esp), %ebx
	sall	$16, %eax
	movl	%eax, (%ebx)
	andl	$-2097153, 22968(%esi)
L617:
	movl	12(%esp), %ecx
	movl	$786432, %edx
	movl	20(%esp), %ebx
	movl	%ecx, %eax
	imull	%edx
	movl	%edx, %edi
	sarl	$15, %edi
	testl	%edx, %edx
	js	L704
	testl	%edi, %edi
	jne	L705
	movl	%eax, %edi
	shrdl	$16, %edx, %edi
	testl	%edi, %edi
	jne	L706
L608:
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
L703:
	.cfi_restore_state
	movl	22976(%esi), %eax
	testb	$2, 419(%esi)
	je	L616
	testl	$33554432, %eax
	je	L617
	movl	20(%esp), %ecx
	andl	$-33554433, %eax
	movl	%eax, 22976(%esi)
	movl	(%ecx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	addw	$1024, %ax
	andw	$2047, %ax
	movw	%ax, 272(%esi)
	movl	(%ecx), %edi
	movl	%edi, %edx
	movl	%edi, 8(%esp)
	sarl	$31, %edx
	xorw	%dx, %dx
	leal	32768(%edi,%edx), %ebx
	testl	%ebx, %ebx
	leal	65535(%ebx), %edx
	cmovns	%ebx, %edx
	movl	%edx, %ecx
	movzwl	%ax, %edx
	sarl	$16, %ecx
	subl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	cmovns	%edi, %edx
	cmpl	$1024, %edx
	jg	L620
	movl	%ecx, %edx
L621:
	subl	%edx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovs	%eax, %edx
	movzwl	%dx, %edx
	sarl	$2, %edx
	cmpb	$0, 16(%esp)
	je	L624
	leal	(%ecx,%edx), %eax
	andl	$2047, %eax
	sall	$16, %eax
L625:
	movl	20(%esp), %ebx
	movl	%eax, (%ebx)
	orl	$2097152, 22968(%esi)
	jmp	L615
	.p2align 4,,10
	.p2align 3
L704:
	cmpl	$-1, %edi
	jne	L707
	addl	$-1, %eax
	adcl	$-1, %edx
	shrdl	$16, %edx, %eax
	leal	1(%eax), %edi
	cmpl	$-2147483648, %edi
	je	L656
	movl	$262144, %edx
	movl	%edi, %eax
	call	_fix16_div
	cmpl	$-2147483648, %eax
	je	L657
L658:
	addl	%edi, %eax
	movl	$196608, %edx
	imull	%edx
	movl	%edx, %ecx
	sarl	$15, %ecx
	testl	%edx, %edx
	js	L668
L662:
	testl	%ecx, %ecx
	jne	L663
	movl	%eax, %edi
	shrdl	$16, %edx, %edi
	movl	%edi, %ecx
L655:
	movl	%ecx, %eax
	xorl	$-2097153, %edi
	movl	$2097152, %edx
	call	_fix16_div
	movl	%edi, %ecx
	sarl	$31, %ecx
	addl	$-2147483648, %ecx
	cmpl	$-2147483648, %eax
	cmovne	%eax, %ecx
L664:
	addl	(%ebx), %ecx
	movl	%ecx, %eax
	andl	$134152192, %ecx
	andl	$134217727, %eax
	cmpb	$0, 16(%esp)
	cmove	%eax, %ecx
	leal	300(%esi), %eax
	movl	%ecx, (%ebx)
	cmpl	%eax, %ebx
	jne	L608
	movl	_sprite, %eax
	addl	$32768, %ecx
	sarl	$16, %ecx
	movl	%eax, 20(%esp)
	movswl	348(%esi), %eax
	imull	$44, %eax, %edi
	movl	$-1171354717, %eax
	leal	28(%edi), %edx
	mull	%edx
	movl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%eax,%edi)
	cmpb	$0, _Prediction
	jne	L608
	movswl	350(%esi), %ecx
	testw	%cx, %cx
	js	L608
	imull	$44, %ecx, %ecx
	movl	(%ebx), %esi
	movl	$-1171354717, %eax
	movl	%esi, %ebx
	leal	28(%ecx), %edx
	sarl	$31, %ebx
	mull	%edx
	xorw	%bx, %bx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%esi,%ebx), %edx
	movl	20(%esp), %esi
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%esi,%ecx)
	jmp	L608
	.p2align 4,,10
	.p2align 3
L633:
	leal	2048(%eax), %ecx
	cmpw	$1025, %ax
	cmovl	%ecx, %eax
	cmpl	$67174400, %ebx
	leal	2048(%edx), %ecx
	cmovge	%edx, %ecx
	subl	%ecx, %eax
	sarw	$2, %ax
	cmpb	$0, 16(%esp)
	jne	L708
L637:
	movw	%ax, 4(%esp)
	filds	4(%esp)
	cmpb	$0, _CommEnabled
	jne	L639
	fmuls	LC19
	flds	LC20
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
L639:
	movss	LC18, %xmm2
	fstps	4(%esp)
	xorps	%xmm0, %xmm0
	movss	4(%esp), %xmm1
	movss	LC16, %xmm3
	movl	8(%esp), %edi
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC17, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %eax
	leal	(%eax,%edi), %ebx
	xorl	%edi, %eax
	js	L642
	xorl	%ebx, %edi
	js	L643
L642:
	cmpl	$-2147483648, %ebx
	je	L643
L644:
	andl	$134217727, %ebx
	jmp	L638
	.p2align 4,,10
	.p2align 3
L648:
	leal	2048(%eax), %ebx
	cmpw	$1025, %ax
	cmovl	%ebx, %eax
	leal	2048(%edx), %ebx
	cmpl	$67174400, %ecx
	cmovge	%edx, %ebx
	jmp	L649
	.p2align 4,,10
	.p2align 3
L616:
	orl	$33554432, %eax
	movl	%eax, 22976(%esi)
	jmp	L617
	.p2align 4,,10
	.p2align 3
L702:
	movl	408(%esi), %edx
	orl	$2, 22972(%esi)
	imull	$24124, _myconnectindex, %eax
	movl	%edx, 300(%esi)
	addl	$_Player, %eax
	cmpl	%eax, %esi
	je	L685
	cmpl	$_PredictPlayer, %esi
	je	L685
L610:
	movswl	348(%esi), %ecx
	movl	20(%esp), %eax
	imull	$44, %ecx, %ecx
	movl	(%eax), %edi
	movl	_sprite, %eax
	movl	%eax, 16(%esp)
	movl	$-1171354717, %eax
	movl	%edi, %ebx
	leal	28(%ecx), %edx
	sarl	$31, %ebx
	mull	%edx
	xorw	%bx, %bx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%edi,%ebx), %edx
	movl	16(%esp), %edi
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%edi,%ecx)
	cmpb	$0, _Prediction
	jne	L608
	movswl	350(%esi), %ecx
	testw	%cx, %cx
	js	L608
	imull	$44, %ecx, %ecx
	movl	20(%esp), %eax
	movl	(%eax), %esi
	movl	$-1171354717, %eax
	leal	28(%ecx), %edx
	mull	%edx
	movl	%esi, %ebx
	sarl	$31, %ebx
	xorw	%bx, %bx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%esi,%ebx), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%edi,%ecx)
	jmp	L608
	.p2align 4,,10
	.p2align 3
L657:
	movl	$-3, %ecx
	movl	$-3, %edi
	jmp	L655
	.p2align 4,,10
	.p2align 3
L671:
	movswl	348(%esi), %ecx
	movl	$-1171354717, %eax
	movl	_sprite, %edi
	addl	$32768, %ebx
	sarl	$16, %ebx
	imull	$44, %ecx, %ecx
	movl	%edi, 8(%esp)
	leal	28(%ecx), %edx
	mull	%edx
	movl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%edi,%ecx)
	movl	(%eax), %ebx
	cmpb	$0, _Prediction
	jne	L670
	movswl	350(%esi), %eax
	testw	%ax, %ax
	js	L670
	imull	$44, %eax, %edi
	movl	$-1171354717, %eax
	movl	%ebx, %ecx
	sarl	$31, %ecx
	xorw	%cx, %cx
	leal	28(%edi), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%ecx,%ebx), %edx
	movl	8(%esp), %ebx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%ebx,%edi)
	movl	20(%esp), %eax
	movl	(%eax), %ebx
L670:
	movl	%ebx, %ecx
	sarl	$31, %ecx
	xorw	%cx, %cx
	addl	$32768, %ecx
	jmp	L647
	.p2align 4,,10
	.p2align 3
L656:
	xorl	$-786433, %ecx
	movl	$262144, %edx
	sarl	$31, %ecx
	leal	-2147483648(%ecx), %edi
	movl	%ecx, 20(%esp)
	movl	%edi, %eax
	call	_fix16_div
	cmpl	$-2147483648, %eax
	jne	L658
	cmpl	$-2147483648, 20(%esp)
	js	L657
	movl	$-196608, %eax
	movl	$-1, %edx
	jmp	L660
L707:
	movl	$262144, %edx
	movl	$-2147483648, %eax
	call	_fix16_div
	cmpl	$-2147483648, %eax
	je	L657
	addl	$-2147483648, %eax
	movl	$196608, %edx
	imull	%edx
	movl	%edx, %ecx
	sarl	$15, %ecx
	.p2align 4
	.p2align 3
L668:
	cmpl	$-1, %ecx
	jne	L663
L660:
	addl	$-1, %eax
	adcl	$-1, %edx
	shrdl	$16, %edx, %eax
	leal	1(%eax), %edi
	movl	%edi, %ecx
	jmp	L655
	.p2align 4,,10
	.p2align 3
L620:
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovb	%edx, %eax
	leal	2048(%ecx), %edx
	cmpl	$67174400, %ebx
	cmovge	%ecx, %edx
	jmp	L621
	.p2align 4,,10
	.p2align 3
L685:
	movl	%edx, 28(%esi)
	jmp	L610
	.p2align 4,,10
	.p2align 3
L624:
	movl	%edx, 4(%esp)
	fildl	4(%esp)
	cmpb	$0, _CommEnabled
	je	L626
	movss	LC16, %xmm0
	fstps	4(%esp)
	movss	4(%esp), %xmm2
	mulss	LC18, %xmm2
L627:
	addss	%xmm2, %xmm0
	movl	$65536, %eax
	movl	8(%esp), %edi
	cvttss2sil	%xmm0, %edx
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	leal	(%edx,%edi), %eax
	xorl	%edi, %edx
	js	L629
	xorl	%eax, %edi
	js	L630
L629:
	cmpl	$-2147483648, %eax
	je	L630
L631:
	andl	$134217727, %eax
	jmp	L625
	.p2align 4,,10
	.p2align 3
L706:
	movl	$262144, %edx
	movl	%edi, %eax
	call	_fix16_div
	movl	$2147483647, %edx
	cmpl	$-2147483648, %eax
	cmove	%edx, %eax
	jmp	L658
	.p2align 4,,10
	.p2align 3
L643:
	movl	8(%esp), %eax
	notl	%eax
	sarl	$31, %eax
	leal	-2147483648(%eax), %ebx
	jmp	L644
	.p2align 4,,10
	.p2align 3
L626:
	fmuls	LC19
	flds	LC20
	xorps	%xmm0, %xmm0
	movss	LC18, %xmm2
	fdivl	_elapsedInputTicks
	movss	LC16, %xmm3
	fdivrp	%st, %st(1)
	fstps	4(%esp)
	movss	4(%esp), %xmm1
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC17, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	jmp	L627
L630:
	movl	8(%esp), %eax
	notl	%eax
	sarl	$31, %eax
	addl	$-2147483648, %eax
	jmp	L631
L663:
	movl	$2097152, %edx
	movl	$-2147483648, %eax
	call	_fix16_div
	movl	%eax, %ecx
	jmp	L664
L705:
	movl	$262144, %edx
	movl	$2147483647, %eax
	call	_fix16_div
	cmpl	$-2147483648, %eax
	je	L709
	addl	$2147483647, %eax
	movl	$196608, %edx
	imull	%edx
	movl	%edx, %ecx
	sarl	$15, %ecx
	jmp	L662
L709:
	movl	$-393216, %eax
	movl	$-1, %edx
	jmp	L660
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z15DoPlayerHorizonP12PLAYERstructPii
	.def	__Z15DoPlayerHorizonP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
__Z15DoPlayerHorizonP12PLAYERstructPii:
LFB73:
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
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$36, %esp
	movl	%ecx, 28(%esp)
	cmpb	$0, _PedanticMode
	jne	L711
	leal	288(%eax), %eax
	cmpl	%eax, %edx
	je	L922
	movl	22968(%ebx), %eax
	movl	%eax, %edx
	testl	$1073973260, %eax
	je	L715
L918:
	movl	296(%ebx), %edx
L716:
	testb	$-128, %ah
	je	L736
	cmpl	$6553599, %edx
	jg	L740
	movss	LC18, %xmm0
	cmpb	$0, _PedanticMode
	je	L738
	movl	%edx, %ecx
	sarl	$31, %ecx
	xorw	%cx, %cx
	leal	32768(%ecx,%edx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %esi
	cmovns	%ecx, %esi
	movl	$100, %ecx
	sarl	$16, %esi
	subl	%esi, %ecx
	sarl	$3, %ecx
	addl	$1, %ecx
	sall	$16, %ecx
	addl	%ecx, %edx
	movl	%edx, 296(%ebx)
	.p2align 4
	.p2align 3
L740:
	movl	28(%esp), %esi
	testl	%esi, %esi
	je	L764
	orl	$96, %eax
	addl	%esi, 292(%ebx)
	movl	%eax, 22968(%ebx)
L764:
	movl	416(%ebx), %edx
	testb	$1, %dh
	je	L765
	cmpb	$0, _PedanticMode
	je	L766
	movl	$6553600, 292(%ebx)
	movl	$6553600, %eax
L767:
	movl	%eax, (%edi)
	movl	416(%ebx), %edx
	movl	$0, 296(%ebx)
L765:
	movl	%edx, %eax
	movl	292(%ebx), %ecx
	movl	22968(%ebx), %esi
	andl	$2097152, %eax
	movl	%eax, 28(%esp)
	jne	L782
	testl	$4194304, %edx
	je	L783
	orl	$96, %esi
	movl	%esi, 22968(%ebx)
	cmpb	$0, _PedanticMode
	je	L785
	subl	$524288, %ecx
	movl	%ecx, 292(%ebx)
	.p2align 4
	.p2align 3
L783:
	movl	%edx, %eax
	andl	$4096, %eax
	jne	L802
	andb	$32, %dh
	jne	L803
	testl	$32, %esi
	jne	L805
	cmpl	$6553600, %ecx
	je	L823
	cmpb	$0, _PedanticMode
	je	L923
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%eax,%ecx), %eax
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$25, %eax
	sarl	$18, %edx
	subl	%edx, %eax
	sall	$16, %eax
	addl	%eax, %ecx
	.p2align 4
	.p2align 3
L805:
	movl	$-6488064, %eax
	movl	$19595264, %edx
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	296(%ebx), %edx
	addl	%eax, %edx
	movl	%eax, 292(%ebx)
	cmpl	$-6488064, %edx
	jge	L840
	movl	$-6488064, %edx
	subl	%eax, %edx
	movl	%edx, 296(%ebx)
	movl	$-6488064, %edx
L841:
	movl	%edx, (%edi)
L710:
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
L736:
	.cfi_restore_state
	testl	%edx, %edx
	jle	L748
	movss	LC18, %xmm0
	cmpb	$0, _PedanticMode
	je	L734
	leal	32768(%edx), %ecx
	sarl	$19, %ecx
	addl	$1, %ecx
	sall	$16, %ecx
	subl	%ecx, %edx
	movl	%edx, 296(%ebx)
	jns	L740
L749:
	movl	$32768, %ecx
	subl	%edx, %ecx
	sarl	$19, %ecx
	addl	$1, %ecx
	sall	$16, %ecx
	addl	%ecx, %edx
L919:
	movl	%edx, 296(%ebx)
	jmp	L740
	.p2align 4,,10
	.p2align 3
L711:
	movl	22968(%eax), %eax
	movl	%eax, %edx
	testl	$231436, %eax
	jne	L918
L715:
	movswl	268(%ebx), %ecx
	movl	_sector, %esi
	movl	%ecx, %eax
	leal	(%ecx,%ecx,4), %ecx
	leal	(%esi,%ecx,8), %ecx
	testb	$2, 14(%ecx)
	je	L924
	movl	300(%ebx), %ecx
	movw	%ax, 34(%esp)
	leal	34(%esp), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	xorw	%dx, %dx
	leal	32768(%ecx,%edx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %edx
	cmovns	%ecx, %edx
	sarl	$16, %edx
	leal	512(%edx), %ecx
	andl	$2047, %edx
	andl	$2047, %ecx
	movzwl	_sintable(%edx,%edx), %edx
	movzwl	_sintable(%ecx,%ecx), %ecx
	sarw	$5, %dx
	sarw	$5, %cx
	movswl	%cx, %esi
	movswl	%dx, %ecx
	addl	(%ebx), %esi
	addl	4(%ebx), %ecx
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 24(%esp)
	movl	%ecx, 20(%esp)
	call	_updatesector
	movswl	34(%esp), %esi
	testw	%si, %si
	jns	L719
	movl	22968(%ebx), %eax
	movl	296(%ebx), %edx
	jmp	L716
	.p2align 4,,10
	.p2align 3
L840:
	cmpl	$19595264, %edx
	jle	L841
	movl	$19595264, %edx
	subl	%eax, %edx
	movl	%edx, 296(%ebx)
	movl	$19595264, %edx
	jmp	L841
	.p2align 4,,10
	.p2align 3
L802:
	andl	$-33, %esi
	orl	$64, %esi
	movl	%esi, 22968(%ebx)
	andb	$32, %dh
	je	L925
	cmpb	$0, _PedanticMode
	jne	L805
L807:
	movzbl	_CommEnabled, %edx
	movb	%dl, 24(%esp)
	testb	%dl, %dl
	jne	L857
	flds	LC20
	fdivl	_elapsedInputTicks
	xorps	%xmm2, %xmm2
	movss	LC18, %xmm0
	fdivrs	LC28
	fstps	28(%esp)
	movss	28(%esp), %xmm1
	mulss	%xmm1, %xmm0
	comiss	%xmm2, %xmm1
	jnb	L926
	subss	LC16, %xmm0
	cvttss2sil	%xmm0, %esi
	movl	%esi, 28(%esp)
	movl	%esi, %edx
L810:
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	28(%esp), %edx
	xorl	%ecx, %edx
	js	L927
L813:
	movl	%esi, %edx
	cmpl	$-2147483648, %esi
	je	L814
L815:
	movl	%edx, %ecx
	testl	%eax, %eax
	je	L805
	jmp	L816
	.p2align 4,,10
	.p2align 3
L782:
	orl	$96, %esi
	movl	%esi, 22968(%ebx)
	testl	$4194304, %edx
	je	L928
	cmpb	$0, _PedanticMode
	je	L785
L801:
	movl	%ecx, 292(%ebx)
	jmp	L783
	.p2align 4,,10
	.p2align 3
L928:
	cmpb	$0, _PedanticMode
	je	L929
	addl	$524288, %ecx
	movl	%ecx, 292(%ebx)
	jmp	L783
	.p2align 4,,10
	.p2align 3
L803:
	andl	$-33, %esi
	orl	$64, %esi
	movl	%esi, 22968(%ebx)
	cmpb	$0, _PedanticMode
	je	L807
	subl	$1048576, %ecx
	jmp	L805
	.p2align 4,,10
	.p2align 3
L766:
	movl	292(%ebx), %eax
	cmpl	$6553600, %eax
	jg	L930
	je	L767
	cmpb	$0, _CommEnabled
	je	L931
	leal	6291456(%eax), %edx
	testl	%eax, %eax
	js	L781
	movl	%edx, %esi
	xorl	%eax, %esi
	js	L780
	.p2align 4
	.p2align 3
L781:
	movl	$6553600, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
L921:
	movl	%eax, 292(%ebx)
	jmp	L767
	.p2align 4,,10
	.p2align 3
L925:
	cmpb	$0, _PedanticMode
	je	L932
	addl	$1048576, %ecx
	jmp	L805
	.p2align 4,,10
	.p2align 3
L924:
	movl	%edx, %eax
	jmp	L918
	.p2align 4,,10
	.p2align 3
L734:
	movl	%edx, %ecx
	xorps	%xmm1, %xmm1
	sarl	$3, %ecx
	addl	$65536, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	LC25, %xmm1
	cmpb	$0, _CommEnabled
	jne	L933
	movss	%xmm1, 24(%esp)
	flds	24(%esp)
	fmuls	LC19
	xorps	%xmm1, %xmm1
	flds	LC20
	fdivl	_elapsedInputTicks
	movl	%edx, %ecx
	movss	LC16, %xmm3
	fdivrp	%st, %st(1)
	fstps	24(%esp)
	movss	24(%esp), %xmm2
	mulss	%xmm2, %xmm0
	cmpnless	%xmm2, %xmm1
	movss	LC17, %xmm2
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %esi
	subl	%esi, %ecx
	xorl	%edx, %esi
	jns	L754
	xorl	%ecx, %edx
	js	L755
L754:
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovns	%ecx, %edx
	cmpl	$-2147483648, %ecx
	jne	L919
L755:
	movl	$2147483647, %edx
	jmp	L919
	.p2align 4,,10
	.p2align 3
L929:
	movzbl	_CommEnabled, %eax
	movb	%al, 20(%esp)
	movl	%ecx, %eax
L794:
	cmpb	$0, 20(%esp)
	jne	L856
	flds	LC20
	fdivl	_elapsedInputTicks
	xorps	%xmm2, %xmm2
	movss	LC18, %xmm0
	fdivrs	LC27
	fstps	28(%esp)
	movss	28(%esp), %xmm1
	mulss	%xmm1, %xmm0
	comiss	%xmm2, %xmm1
	jnb	L934
	subss	LC16, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	%ecx, 24(%esp)
L796:
	addl	%eax, %ecx
	movl	%ecx, 28(%esp)
	movl	24(%esp), %ecx
	xorl	%eax, %ecx
	js	L799
	movl	%eax, %ecx
	xorl	28(%esp), %ecx
	js	L800
L799:
	movl	28(%esp), %ecx
	cmpl	$-2147483648, %ecx
	jne	L801
L800:
	notl	%eax
	sarl	$31, %eax
	leal	-2147483648(%eax), %ecx
	jmp	L801
	.p2align 4,,10
	.p2align 3
L932:
	movzbl	_CommEnabled, %eax
	movl	%ecx, %edx
	movb	%al, 24(%esp)
L816:
	cmpb	$0, 24(%esp)
	jne	L858
	flds	LC20
	fdivl	_elapsedInputTicks
	xorps	%xmm2, %xmm2
	movss	LC18, %xmm0
	fdivrs	LC28
	fstps	28(%esp)
	movss	28(%esp), %xmm1
	mulss	%xmm1, %xmm0
	comiss	%xmm2, %xmm1
	jnb	L935
	subss	LC16, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %ecx
L818:
	addl	%edx, %ecx
	xorl	%edx, %eax
	js	L821
	movl	%edx, %eax
	xorl	%ecx, %eax
	js	L822
L821:
	cmpl	$-2147483648, %ecx
	jne	L805
L822:
	notl	%edx
	sarl	$31, %edx
	leal	-2147483648(%edx), %ecx
	jmp	L805
	.p2align 4,,10
	.p2align 3
L785:
	movzbl	_CommEnabled, %eax
	movb	%al, 20(%esp)
	testb	%al, %al
	jne	L855
	flds	LC20
	fdivl	_elapsedInputTicks
	xorps	%xmm2, %xmm2
	movss	LC18, %xmm0
	fdivrs	LC27
	fstps	24(%esp)
	movss	24(%esp), %xmm1
	mulss	%xmm1, %xmm0
	comiss	%xmm2, %xmm1
	jnb	L936
	subss	LC16, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, 24(%esp)
	movl	%eax, %esi
L788:
	movl	%ecx, %eax
	subl	%esi, %eax
	movl	24(%esp), %esi
	xorl	%ecx, %esi
	js	L937
L791:
	cmpl	$-2147483648, %eax
	je	L792
L793:
	movl	28(%esp), %ecx
	movl	22968(%ebx), %esi
	movl	%eax, 292(%ebx)
	testl	%ecx, %ecx
	jne	L794
	movl	%eax, %ecx
	jmp	L783
L733:
	movl	$-2147483648, %edx
	cmpl	$6553599, %ecx
	jg	L740
	.p2align 4
	.p2align 3
L738:
	movl	$6553600, %ecx
	xorps	%xmm1, %xmm1
	subl	%edx, %ecx
	sarl	$3, %ecx
	addl	$65536, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	LC25, %xmm1
	cmpb	$0, _CommEnabled
	je	L741
	mulss	%xmm0, %xmm1
	addss	LC16, %xmm1
	cvttss2sil	%xmm1, %esi
	leal	(%esi,%edx), %ecx
	xorl	%edx, %esi
	js	L920
	movl	%ecx, %esi
	xorl	%edx, %esi
	js	L743
	.p2align 4
	.p2align 3
L920:
	movl	%ecx, 296(%ebx)
	jmp	L740
	.p2align 4,,10
	.p2align 3
L741:
	movss	LC16, %xmm3
	movss	%xmm1, 24(%esp)
	flds	24(%esp)
	xorps	%xmm1, %xmm1
	fmuls	LC19
	flds	LC20
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
	fstps	24(%esp)
	movss	24(%esp), %xmm2
	mulss	%xmm2, %xmm0
	cmpnless	%xmm2, %xmm1
	movss	LC17, %xmm2
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %esi
	leal	(%esi,%edx), %ecx
	xorl	%edx, %esi
	js	L747
	movl	%ecx, %esi
	xorl	%edx, %esi
	js	L743
L747:
	cmpl	$-2147483648, %ecx
	jne	L920
L743:
	movl	%edx, %ecx
	notl	%ecx
	sarl	$31, %ecx
	addl	$-2147483648, %ecx
	jmp	L920
	.p2align 4,,10
	.p2align 3
L931:
	flds	LC20
	fdivl	_elapsedInputTicks
	xorps	%xmm0, %xmm0
	movss	LC18, %xmm2
	movss	LC16, %xmm3
	fdivrs	LC26
	fstps	28(%esp)
	movss	28(%esp), %xmm1
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC17, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %ecx
	leal	(%ecx,%eax), %edx
	xorl	%eax, %ecx
	js	L779
	movl	%edx, %esi
	xorl	%eax, %esi
	jns	L779
	.p2align 4
	.p2align 3
L780:
	notl	%eax
	movl	%eax, %edx
	sarl	$31, %edx
	addl	$-2147483648, %edx
	jmp	L781
	.p2align 4,,10
	.p2align 3
L779:
	cmpl	$-2147483648, %edx
	jne	L781
	jmp	L780
	.p2align 4,,10
	.p2align 3
L748:
	je	L740
	movss	LC18, %xmm0
	cmpb	$0, _PedanticMode
	jne	L749
L735:
	movl	%edx, %ecx
	xorps	%xmm1, %xmm1
	negl	%ecx
	sarl	$3, %ecx
	addl	$65536, %ecx
	cvtsi2ssl	%ecx, %xmm1
	mulss	LC25, %xmm1
	cmpb	$0, _CommEnabled
	jne	L938
	movss	LC16, %xmm3
	movss	%xmm1, 24(%esp)
	flds	24(%esp)
	xorps	%xmm1, %xmm1
	fmuls	LC19
	flds	LC20
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
	fstps	24(%esp)
	movss	24(%esp), %xmm2
	mulss	%xmm2, %xmm0
	cmpnless	%xmm2, %xmm1
	movss	LC17, %xmm2
	andps	%xmm1, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %esi
	leal	(%esi,%edx), %ecx
	xorl	%edx, %esi
	js	L762
	xorl	%ecx, %edx
	js	L939
L762:
	xorl	%edx, %edx
	testl	%ecx, %ecx
	cmovg	%edx, %ecx
	jmp	L920
	.p2align 4,,10
	.p2align 3
L922:
	movl	412(%ebx), %edx
	orl	$4, 22972(%ebx)
	imull	$24124, _myconnectindex, %eax
	movl	%edx, 288(%ebx)
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L863
	cmpl	$_PredictPlayer, %ebx
	jne	L710
L863:
	movl	%edx, 24(%ebx)
	jmp	L710
	.p2align 4,,10
	.p2align 3
L719:
	movswl	268(%ebx), %edx
	leal	(%edx,%edx,4), %ecx
	movl	%edx, %eax
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	testb	$2, 14(%edx)
	je	L940
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movswl	268(%ebx), %edx
	movl	%eax, 16(%esp)
	leal	(%edx,%edx,4), %ecx
	movl	%edx, %eax
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	testb	$2, 14(%edx)
	je	L941
	movl	20(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	%eax, %ecx
	movzwl	268(%ebx), %eax
L721:
	cmpw	%ax, %si
	je	L723
	movl	_sector, %eax
	leal	(%esi,%esi,4), %edx
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L942
	movl	20(%esp), %esi
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	24(%esp), %esi
	movl	%esi, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	12(%esp), %ecx
L725:
	subl	%ecx, %eax
/APP
 # 1884 "source/sw/src/player.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$1024, %eax
	jle	L723
	movl	296(%ebx), %edx
	movl	22968(%ebx), %eax
	jmp	L716
	.p2align 4,,10
	.p2align 3
L930:
	cmpb	$0, _CommEnabled
	je	L769
	subl	$6291456, %eax
	movl	$6553600, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	jmp	L921
	.p2align 4,,10
	.p2align 3
L933:
	mulss	%xmm0, %xmm1
	addss	LC16, %xmm1
	cvttss2sil	%xmm1, %ecx
	subl	%ecx, %edx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	jmp	L919
	.p2align 4,,10
	.p2align 3
L935:
	addss	LC16, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %ecx
	jmp	L818
	.p2align 4,,10
	.p2align 3
L926:
	addss	LC16, %xmm0
	cvttss2sil	%xmm0, %esi
	movl	%esi, 28(%esp)
	movl	%esi, %edx
	jmp	L810
	.p2align 4,,10
	.p2align 3
L934:
	addss	LC16, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	%ecx, 24(%esp)
	jmp	L796
	.p2align 4,,10
	.p2align 3
L936:
	addss	LC16, %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, 24(%esp)
	movl	%eax, %esi
	jmp	L788
	.p2align 4,,10
	.p2align 3
L938:
	mulss	%xmm0, %xmm1
	addss	LC16, %xmm1
	cvttss2sil	%xmm1, %ecx
	addl	%edx, %ecx
	jmp	L762
	.p2align 4,,10
	.p2align 3
L857:
	movl	$1048576, 28(%esp)
	movl	$1048576, %edx
	jmp	L810
	.p2align 4,,10
	.p2align 3
L855:
	movl	$524288, 24(%esp)
	movl	$524288, %esi
	jmp	L788
	.p2align 4,,10
	.p2align 3
L858:
	movl	$1048576, %ecx
	movl	$1048576, %eax
	jmp	L818
	.p2align 4,,10
	.p2align 3
L856:
	movl	$524288, 24(%esp)
	movl	$524288, %ecx
	jmp	L796
	.p2align 4,,10
	.p2align 3
L923:
	movl	$262144, %edx
	movl	%ecx, %eax
	movl	%ecx, 28(%esp)
	call	_fix16_div
	movzbl	_CommEnabled, %esi
	movl	28(%esp), %ecx
	cmpl	$-2147483648, %eax
	movl	%eax, %edx
	je	L825
	movl	$1638400, %eax
	subl	%edx, %eax
	testl	%edx, %edx
	js	L943
L827:
	cmpl	$-2147483648, %eax
	je	L835
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	%esi, %eax
	mulss	LC25, %xmm0
	testb	%al, %al
	jne	L830
	movss	%xmm0, 28(%esp)
	flds	28(%esp)
	fmuls	LC19
L828:
	flds	LC20
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
	fstps	28(%esp)
	movss	28(%esp), %xmm0
L830:
	movss	LC18, %xmm1
	xorps	%xmm2, %xmm2
	comiss	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	jb	L944
	addss	LC16, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, %eax
L829:
	addl	%ecx, %eax
	xorl	%ecx, %edx
	js	L833
	movl	%eax, %esi
	xorl	%ecx, %esi
	js	L834
L833:
	cmpl	$-2147483648, %eax
	je	L834
	movl	%eax, %ecx
	jmp	L805
	.p2align 4,,10
	.p2align 3
L940:
	movl	8(%edx), %ecx
	movl	%ecx, 16(%esp)
	jmp	L721
	.p2align 4,,10
	.p2align 3
L769:
	flds	LC20
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	movss	LC18, %xmm2
	movss	LC16, %xmm3
	fdivl	_elapsedInputTicks
	fdivrs	LC26
	fstps	28(%esp)
	movss	28(%esp), %xmm1
	mulss	%xmm1, %xmm2
	cmpnless	%xmm1, %xmm0
	movss	LC17, %xmm1
	andps	%xmm0, %xmm1
	andnps	%xmm3, %xmm0
	orps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edx
	subl	%edx, %ecx
	xorl	%eax, %edx
	jns	L773
	xorl	%ecx, %eax
	js	L774
L773:
	movl	$6553600, %eax
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	cmpl	$-2147483648, %ecx
	jne	L921
L774:
	movl	$2147483647, %eax
	jmp	L921
	.p2align 4,,10
	.p2align 3
L723:
	movl	16(%esp), %eax
	subl	%ecx, %eax
	movl	296(%ebx), %ecx
	cmpb	$0, _PedanticMode
	je	L726
	leal	(%eax,%eax,4), %edx
	movl	22968(%ebx), %eax
	sall	$5, %edx
	xorw	%dx, %dx
	addl	%ecx, %edx
	movl	%edx, 296(%ebx)
	jmp	L716
	.p2align 4,,10
	.p2align 3
L927:
	movl	%ecx, %edx
	xorl	%esi, %edx
	jns	L813
	.p2align 4
	.p2align 3
L814:
	notl	%ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	addl	$-2147483648, %edx
	jmp	L815
	.p2align 4,,10
	.p2align 3
L937:
	movl	%ecx, %esi
	xorl	%eax, %esi
	jns	L791
	.p2align 4
	.p2align 3
L792:
	movl	%ecx, %eax
	notl	%eax
	sarl	$31, %eax
	addl	$-2147483648, %eax
	jmp	L793
	.p2align 4,,10
	.p2align 3
L823:
	andl	$-65, %esi
	movl	%esi, 22968(%ebx)
	jmp	L805
	.p2align 4,,10
	.p2align 3
L726:
	movl	$160, %edx
/APP
 # 1889 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	cmpb	$0, _CommEnabled
	jne	L727
	fmuls	LC19
	flds	LC20
	fdivl	_elapsedInputTicks
	fdivrp	%st, %st(1)
L727:
	movss	LC18, %xmm0
	fstps	24(%esp)
	xorps	%xmm1, %xmm1
	movss	24(%esp), %xmm3
	movss	LC16, %xmm4
	movaps	%xmm3, %xmm2
	cmpnless	%xmm3, %xmm1
	movss	LC17, %xmm3
	mulss	%xmm0, %xmm2
	andps	%xmm1, %xmm3
	andnps	%xmm4, %xmm1
	orps	%xmm3, %xmm1
	addss	%xmm2, %xmm1
	cvttss2sil	%xmm1, %eax
	leal	(%eax,%ecx), %edx
	xorl	%ecx, %eax
	js	L730
	movl	%ecx, %eax
	xorl	%edx, %eax
	js	L731
L730:
	cmpl	$-2147483648, %edx
	je	L731
	movl	%edx, 296(%ebx)
	movl	22968(%ebx), %eax
	jmp	L716
	.p2align 4,,10
	.p2align 3
L942:
	movl	8(%eax), %eax
	jmp	L725
L825:
	testl	%ecx, %ecx
	js	L835
	movl	%esi, %eax
	testb	%al, %al
	je	L860
	movl	$-2145845248, %eax
	movl	$-2145845248, %edx
	jmp	L829
L943:
	testl	%eax, %eax
	jns	L827
L835:
	movl	%esi, %eax
	testb	%al, %al
	je	L859
	cvttss2sil	LC29, %edx
	movl	%edx, %eax
	jmp	L829
L944:
	subss	LC16, %xmm1
	cvttss2sil	%xmm1, %edx
	movl	%edx, %eax
	jmp	L829
L834:
	notl	%ecx
	sarl	$31, %ecx
	addl	$-2147483648, %ecx
	jmp	L805
L860:
	flds	LC24
	jmp	L828
L731:
	notl	%ecx
	movl	22968(%ebx), %eax
	sarl	$31, %ecx
	addl	$-2147483648, %ecx
	movl	%ecx, 296(%ebx)
	testb	$-128, %ah
	jne	L733
	movl	$2147483647, %edx
	testl	%ecx, %ecx
	jg	L734
	movl	$-2147483648, %edx
	jmp	L735
L859:
	flds	LC23
	jmp	L828
L939:
	movl	$-2147483648, %ecx
	jmp	L762
L941:
	movl	8(%edx), %ecx
	jmp	L721
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z11DoPlayerBobP12PLAYERstruct
	.def	__Z11DoPlayerBobP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11DoPlayerBobP12PLAYERstruct:
LFB78:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	320(%eax), %eax
	subl	(%ebx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	movl	324(%ebx), %eax
	subl	4(%ebx), %eax
	movl	%eax, %esi
	negl	%esi
	cmovs	%eax, %esi
	cmpl	%esi, %edx
	leal	(%edx,%esi), %ecx
	cmovg	%esi, %edx
	xorl	%eax, %eax
	movzwl	384(%ebx), %esi
	sarl	%edx
	subl	%edx, %ecx
	cmpl	$513, %ecx
	cmovge	%eax, %ecx
	movl	%ecx, %edx
	testb	$1, 418(%ebx)
	jne	L947
	testb	$16, 22970(%ebx)
	je	L948
L947:
	sall	$8, %edx
	movl	$12, %eax
/APP
 # 2101 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$26000, %edx
	movl	%eax, (%esp)
	movl	%ecx, %eax
/APP
 # 2103 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%esi,%eax), %ecx
	movl	(%esp), %eax
	andl	$2047, %ecx
	movw	%cx, 384(%ebx)
	sall	$8, %eax
	movswl	_sintable(%ecx,%ecx), %edx
/APP
 # 2112 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 388(%ebx)
	addl	$4, %esp
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
L948:
	.cfi_restore_state
	sall	$9, %edx
	movl	$5, %eax
/APP
 # 2117 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, (%esp)
	movl	%ecx, %eax
/APP
 # 2119 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %esi
	movl	(%esp), %eax
	andl	$2047, %esi
	movw	%si, 384(%ebx)
	sall	$8, %eax
	movswl	_sintable(%esi,%esi), %edx
/APP
 # 2128 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 388(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE78:
	.p2align 4
	.globl	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	.def	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0;	.scl	2;	.type	32;	.endef
__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0:
LFB80:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	movswl	%cx, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	352(%eax), %ebx
	movzwl	382(%eax), %eax
	addl	$24, %eax
	andl	$2047, %eax
	movw	%ax, 382(%esi)
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	movswl	%dx, %ecx
	leal	8(%ebx), %edx
	addl	8(%esi), %ecx
	subl	_sprite, %edx
	sarl	$14, %eax
	movw	%ax, 380(%esi)
	addl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z18UpdatePlayerSpriteP12PLAYERstruct
	.def	__Z18UpdatePlayerSpriteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18UpdatePlayerSpriteP12PLAYERstruct:
LFB81:
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
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	352(%eax), %ecx
	movl	(%eax), %esi
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	movl	%esi, (%ecx)
	movl	_sprite, %esi
	movl	4(%ebx), %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 4(%ecx)
	testb	$2, 22968(%ebx)
	jne	L982
	movl	22980(%ebx), %edi
	testl	%edi, %edi
	je	L961
	movswl	268(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %edi
L980:
	leal	8(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ecx)
	movzwl	268(%ebx), %edi
	cmpw	$4096, %di
	ja	L962
L979:
	movswl	348(%ebx), %ebp
	imull	$44, %ebp, %eax
	movzwl	24(%esi,%eax), %eax
	cmpw	$4096, %ax
	je	L962
	cmpw	%ax, %di
	je	L962
L977:
	movl	%ebp, %eax
	call	_do_deletespritesect
	movswl	%di, %edx
	movl	%ebp, %eax
	call	_do_insertsprite_at_headofsect
L962:
	movl	%ebx, %eax
	movl	$-1171354717, %edi
	call	__Z23UpdatePlayerUnderSpriteP12PLAYERstruct
	movswl	348(%ebx), %eax
	movl	300(%ebx), %esi
	movl	_sprite, %ebx
	imull	$44, %eax, %eax
	movl	%esi, %ecx
	sarl	$31, %ecx
	xorw	%cx, %cx
	addl	%eax, %ebx
	addl	$28, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%esi,%ecx), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%ebx)
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
L961:
	.cfi_restore_state
	movl	22964(%ebx), %edi
	cmpl	$__Z13DoPlayerCrawlP12PLAYERstruct, %edi
	je	L983
	cmpl	$__Z12DoPlayerWadeP12PLAYERstruct, %edi
	je	L984
	cmpl	$__Z12DoPlayerDiveP12PLAYERstruct, %edi
	je	L985
	cmpl	$__Z13DoPlayerClimbP12PLAYERstruct, %edi
	je	L986
	cmpl	$__Z11DoPlayerFlyP12PLAYERstruct, %edi
	je	L987
	leal	8(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	cmpl	$__Z12DoPlayerJumpP12PLAYERstruct, %edi
	movl	_spritechanged(,%edx,4), %eax
	sete	3(%esp)
	cmpl	$__Z12DoPlayerFallP12PLAYERstruct, %edi
	leal	1(%eax), %ebp
	sete	%al
	orb	3(%esp), %al
	jne	L981
	cmpl	$__Z17DoPlayerForceJumpP12PLAYERstruct, %edi
	je	L981
	cmpl	$__Z21DoPlayerTeleportPauseP12PLAYERstruct, %edi
	je	L981
	movl	136(%ebx), %eax
	movl	%ebp, _spritechanged(,%edx,4)
	movl	%eax, 8(%ecx)
	movzwl	268(%ebx), %edi
	cmpw	$4096, %di
	ja	L962
	movswl	348(%ebx), %ebp
	imull	$44, %ebp, %eax
	movzwl	24(%esi,%eax), %eax
	cmpw	%ax, %di
	je	L962
	cmpw	$4096, %ax
	jne	L977
	jmp	L962
	.p2align 4,,10
	.p2align 3
L982:
	movswl	348(%ebx), %ebp
	movzwl	268(%ebx), %edi
	imull	$44, %ebp, %ecx
	addl	%esi, %ecx
	cmpw	$4096, %di
	ja	L959
	movzwl	24(%ecx), %eax
	cmpw	$4096, %ax
	je	L959
	cmpw	%ax, %di
	je	L959
	movl	%ebp, %eax
	call	_do_deletespritesect
	movswl	%di, %edx
	movl	%ebp, %eax
	call	_do_insertsprite_at_headofsect
	movswl	348(%ebx), %ecx
	movl	_sprite, %esi
	imull	$44, %ecx, %ecx
	addl	%esi, %ecx
L959:
	leal	28(%ecx), %edx
	movl	300(%ebx), %ebp
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	movl	%ebp, %edi
	sarl	$31, %edi
	xorw	%di, %di
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%ebp,%edi), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%ecx)
	addl	$4, %esp
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
	jmp	__Z23UpdatePlayerUnderSpriteP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L981:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%ebp, _spritechanged(,%edx,4)
	addl	$14848, %eax
	movl	%eax, 8(%ecx)
	movzwl	268(%ebx), %edi
	cmpw	$4096, %di
	jbe	L979
	jmp	L962
	.p2align 4,,10
	.p2align 3
L983:
	movl	8(%ebx), %eax
	leal	9216(%eax), %edi
	jmp	L980
	.p2align 4,,10
	.p2align 3
L984:
	movl	8(%ebx), %eax
	leal	8(%ecx), %edx
	subl	%esi, %edx
	leal	14848(%eax), %edi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ecx)
	movzwl	268(%ebx), %edi
	cmpw	$4096, %di
	ja	L965
	movswl	348(%ebx), %ebp
	imull	$44, %ebp, %eax
	movzwl	24(%esi,%eax), %eax
	cmpw	$4096, %ax
	je	L965
	cmpw	%ax, %di
	je	L965
	movl	%ebp, %eax
	call	_do_deletespritesect
	movswl	%di, %edx
	movl	%ebp, %eax
	call	_do_insertsprite_at_headofsect
L965:
	cmpw	$7424, 378(%ebx)
	jle	L962
	movl	$768, %ecx
	movl	$14848, %edx
	movl	%ebx, %eax
	call	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	jmp	L962
	.p2align 4,,10
	.p2align 3
L986:
	movl	8(%ebx), %eax
	leal	4352(%eax), %edi
	jmp	L980
	.p2align 4,,10
	.p2align 3
L985:
	movl	8(%ebx), %eax
	leal	2560(%eax), %edi
	jmp	L980
	.p2align 4,,10
	.p2align 3
L987:
	movl	$1536, %ecx
	movl	$14848, %edx
	movl	%ebx, %eax
	call	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	movzwl	268(%ebx), %esi
	cmpw	$4096, %si
	ja	L962
	movswl	348(%ebx), %edi
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L962
	cmpw	%ax, %si
	je	L962
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%si, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	jmp	L962
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z14DoPlayerZrangeP12PLAYERstruct
	.def	__Z14DoPlayerZrangeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14DoPlayerZrangeP12PLAYERstruct:
LFB82:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$40, %esp
	movl	352(%eax), %ecx
	movzwl	12(%ecx), %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 30(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ecx)
	movl	8(%ebx), %edi
	movl	4(%ebx), %edx
	movl	$65537, 24(%esp)
	movl	352(%ebx), %eax
	leal	2048(%edi), %ecx
	movzbl	18(%eax), %eax
	leal	-8(,%eax,4), %eax
	movl	%eax, 20(%esp)
	leal	32(%esp), %eax
	movl	%eax, 16(%esp)
	leal	136(%ebx), %eax
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%eax, 8(%esp)
	leal	132(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	(%ebx), %eax
	call	__Z12FAFgetzrangeiiisPiS_S_S_ii
	movl	352(%ebx), %edi
	movl	_sprite, %ecx
	xorps	%xmm0, %xmm0
	leal	12(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movzwl	30(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%edi)
	movl	36(%esp), %eax
	movups	%xmm0, 148(%ebx)
	movl	%eax, %edx
	notl	%eax
	andl	$4095, %edx
	testb	$-64, %ah
	je	L994
	movl	_sector, %eax
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, 148(%ebx)
L990:
	movl	32(%esp), %eax
	movl	%eax, %edx
	notl	%eax
	andl	$4095, %edx
	testb	$-64, %ah
	je	L995
	movl	_sector, %eax
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, 152(%ebx)
L988:
	addl	$40, %esp
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
L994:
	.cfi_restore_state
	imull	$44, %edx, %edx
	addl	%ecx, %edx
	movl	%edx, 156(%ebx)
	jmp	L990
	.p2align 4,,10
	.p2align 3
L995:
	imull	$44, %edx, %edx
	addl	%edx, %ecx
	movl	%ecx, 160(%ebx)
	cmpw	$2, 26(%ecx)
	jne	L988
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %eax
	cmpw	$1095, 82(%eax)
	jne	L988
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, 152(%ebx)
	movl	8(%ecx), %eax
	movl	$0, 160(%ebx)
	movl	%eax, 136(%ebx)
	jmp	L988
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC30:
	.ascii "ON\0"
LC31:
	.ascii "OFF\0"
LC32:
	.ascii "Run mode %s\0"
	.text
	.p2align 4
	.globl	__Z12DoPlayerMoveP12PLAYERstruct
	.def	__Z12DoPlayerMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12DoPlayerMoveP12PLAYERstruct:
LFB83:
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
	subl	$88, %esp
	.cfi_offset 3, -20
	movswl	348(%eax), %eax
	movl	22984(%esi), %ecx
	movb	$0, 63(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 36(%esp)
	testl	%ecx, %ecx
	je	L997
	movb	$1, 63(%esp)
	cmpb	$0, _gs+24
	jne	L1071
L997:
	movswl	268(%esi), %eax
	testw	%ax, %ax
	js	L998
	movl	_SectUser(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L998
	testb	$2, 5(%ebx)
	je	L998
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	testb	$2, 14(%eax,%edx,8)
	jne	L1072
L998:
	movl	22976(%esi), %eax
	testb	$4, 417(%esi)
	je	L999
	testb	$4, %ah
	jne	L1073
L1000:
	movl	400(%esi), %ecx
	leal	300(%esi), %edx
	movl	%esi, %eax
	call	__Z12DoPlayerTurnP12PLAYERstructPii
	movl	8(%esi), %eax
	movl	192(%esi), %edx
	movlps	(%esi), %xmm0
	movl	%eax, 328(%esi)
	movzwl	268(%esi), %eax
	movlps	%xmm0, 320(%esi)
	movw	%ax, 270(%esi)
	movl	22968(%esi), %eax
	movl	%eax, %ecx
	orb	$-128, %al
	andb	$127, %cl
	orl	196(%esi), %edx
	cmove	%ecx, %eax
	movl	%eax, 22968(%esi)
	movl	%esi, (%esp)
	call	__Z13DoPlayerSlideP12PLAYERstruct
	movl	192(%esi), %eax
	movl	196(%esi), %edx
	movl	%eax, 72(%esp)
	movl	%eax, %ebx
	movl	%edx, 76(%esp)
	movl	76(%esp), %edi
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	192(%esi), %ecx
	movl	%edx, 204(%esi)
	movswl	398(%esi), %edx
	movl	%eax, 48(%esp)
	leal	(%edx,%edx,2), %edx
	movl	%eax, 200(%esi)
	movswl	396(%esi), %eax
	sall	$7, %edx
	movl	%edi, 52(%esp)
	addl	%edx, %edi
	movl	%ecx, 44(%esp)
	leal	(%eax,%eax,2), %eax
	movl	196(%esi), %ecx
	movl	%edi, 56(%esp)
	movl	22968(%esi), %edi
	sall	$7, %eax
	addl	%ebx, %eax
	movl	%ecx, 40(%esp)
	movl	208(%esi), %ebx
	testl	$65536, %edi
	jne	L1006
	movswl	378(%esi), %edx
	movl	%edx, %ecx
	imull	$-100, %edx, %edx
	addl	%ebx, %edx
	testw	%cx, %cx
	cmovne	%edx, %ebx
L1006:
	movl	%ebx, %edx
/APP
 # 2711 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 192(%esi)
	movl	%eax, %ecx
	movl	%ebx, %edx
	movl	56(%esp), %eax
/APP
 # 2712 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 196(%esi)
	movl	%eax, %ebx
	testl	$2048, %edi
	je	L1007
	movl	48(%esp), %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	movl	52(%esp), %edx
	sarl	%ecx
	addl	%eax, %edx
	movl	%ecx, 192(%esi)
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	movl	%ebx, 196(%esi)
L1008:
	leal	12799(%ecx), %eax
	cmpl	$25598, %eax
	ja	L1011
	leal	12799(%ebx), %eax
	cmpl	$25598, %eax
	jbe	L1074
L1011:
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1012
	testl	%ecx, %ecx
	je	L1030
	cmpl	%eax, %ecx
	jge	L1013
	leal	80(%esp), %eax
	leal	84(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	84(%esp), %edx
	movl	80(%esp), %ecx
L1013:
	movl	%edx, %eax
	movl	%ecx, %ebx
	sarl	%eax
	sarl	$5, %ebx
	addl	%eax, %edx
	movl	%ecx, %eax
	sarl	$7, %ecx
	subl	%ebx, %eax
	subl	%ecx, %eax
	movl	%edx, %ecx
	sarl	$6, %edx
	sarl	$2, %ecx
	addl	%ecx, %eax
	leal	(%eax,%edx), %ecx
L1012:
	movl	352(%esi), %ebx
	movl	$-1171354717, %eax
	sarl	$14, %ecx
	leal	32(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	leal	268(%esi), %ebx
	testb	$1, 22971(%esi)
	je	L1014
	movzwl	268(%esi), %eax
	movl	(%esi), %edx
	movl	4(%esi), %ecx
	movw	%ax, 80(%esp)
	cmpb	$0, 63(%esp)
	je	L1015
	movlps	(%esi), %xmm1
	movlps	%xmm1, 12(%esi)
L1015:
	movl	192(%esi), %eax
	sarl	$14, %eax
	addl	%edx, %eax
	movl	196(%esi), %edx
	movl	%eax, (%esi)
	sarl	$14, %edx
	addl	%ecx, %edx
	leal	80(%esp), %ecx
	movl	%edx, 4(%esi)
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_updatesector
	movzwl	80(%esp), %eax
	cmpw	$-1, %ax
	je	L1017
	movw	%ax, 268(%esi)
L1017:
	cmpb	$0, 63(%esp)
	jne	L1075
L1022:
	movl	%ebx, (%esp)
	leal	8(%esi), %ecx
	leal	4(%esi), %edx
	movl	%esi, %eax
	call	__Z9WarpPlanePiS_S_Ps
	testl	%eax, %eax
	je	L1023
	cmpb	$0, _Prediction
	je	L1076
L1023:
	movl	%esi, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	%esi, %eax
	call	__Z20DoPlayerSetWadeDepthP12PLAYERstruct
	movl	404(%esi), %ecx
	movl	%esi, %eax
	leal	288(%esi), %edx
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	movswl	268(%esi), %eax
	testw	%ax, %ax
	js	L996
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$64, 38(%eax)
	je	L996
	movl	22968(%esi), %eax
	testl	$2060, %eax
	je	L1024
	movl	8(%esi), %eax
	movl	136(%esi), %edx
	cmpl	%edx, %eax
	jle	L1025
	leal	-14848(%edx), %eax
	movl	%eax, 8(%esi)
L1025:
	movl	132(%esi), %edx
	cmpl	%eax, %edx
	jle	L996
	addl	$14848, %edx
	movl	%edx, 8(%esi)
L996:
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
L1007:
	.cfi_restore_state
	andl	$131072, %edi
	je	L1008
	movl	44(%esp), %eax
	movl	$1431655766, %edi
	leal	(%ecx,%eax,2), %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	40(%esp), %eax
	movl	%ecx, 192(%esi)
	leal	(%ebx,%eax,2), %ebx
	movl	%ebx, %eax
	imull	%edi
	movl	%ebx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, 196(%esi)
	jmp	L1008
	.p2align 4,,10
	.p2align 3
L999:
	orb	$4, %ah
	movl	%eax, 22976(%esi)
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1075:
	movl	8(%esi), %eax
	movl	%eax, 20(%esi)
	movl	300(%esi), %eax
	movl	%eax, 28(%esi)
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1071:
	cmpb	$0, _CommEnabled
	setne	63(%esp)
	jmp	L997
	.p2align 4,,10
	.p2align 3
L1076:
	movl	8(%esi), %eax
	movlps	(%esi), %xmm2
	movl	%eax, 20(%esi)
	movl	%esi, %eax
	movlps	%xmm2, 12(%esi)
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	%esi, %eax
	call	__Z18UpdatePlayerSpriteP12PLAYERstruct
	jmp	L1023
	.p2align 4,,10
	.p2align 3
L1074:
	movl	$0, 192(%esi)
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	$0, 196(%esi)
	jmp	L1011
	.p2align 4,,10
	.p2align 3
L1073:
	andb	$-5, %ah
	movl	%eax, 22976(%esi)
	movl	22968(%esi), %eax
	xorl	$1048576, %eax
	movl	%eax, 22968(%esi)
	andl	$1048576, %eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC31, %eax
	movb	%dl, _gs+21
	movl	$LC30, %edx
	cmovne	%edx, %eax
	movl	$LC32, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1030:
	movl	%eax, %ecx
	jmp	L1012
	.p2align 4,,10
	.p2align 3
L1014:
	movl	$1, 24(%esp)
	movl	$65537, 20(%esp)
	movl	144(%esi), %eax
	subl	$4096, %eax
	movl	%eax, 16(%esp)
	movl	140(%esi), %eax
	movl	%eax, 12(%esp)
	movl	352(%esi), %eax
	movzbl	18(%eax), %eax
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
	cmpl	$-1, %eax
	je	L1077
L1018:
	cmpb	$0, 63(%esp)
	jne	L1078
L1020:
	movl	352(%esi), %ecx
	movl	$-1171354717, %edi
	movzwl	12(%ecx), %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 56(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ecx)
	movl	%ebx, 8(%esp)
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	$65537, 28(%esp)
	movl	144(%esi), %eax
	movl	%eax, 24(%esp)
	movl	140(%esi), %eax
	movl	%eax, 20(%esp)
	movl	352(%esi), %eax
	movzbl	18(%eax), %eax
	sall	$2, %eax
	movl	%eax, 16(%esp)
	movl	196(%esi), %eax
	movl	%eax, 12(%esp)
	movl	192(%esi), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	_clipmove
	movl	352(%esi), %ecx
	movl	%edi, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movzwl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	cmpw	$-1, 268(%esi)
	jne	L1021
	movl	328(%esi), %eax
	addl	$1, __ZZ20PlayerCheckValidMoveP12PLAYERstructE5count
	movlps	320(%esi), %xmm4
	movl	%eax, 8(%esi)
	movzwl	270(%esi), %eax
	movlps	%xmm4, (%esi)
	movw	%ax, 268(%esi)
L1021:
	movl	$1, 24(%esp)
	movl	$65537, 20(%esp)
	movl	144(%esi), %eax
	subl	$4096, %eax
	movl	%eax, 16(%esp)
	movl	140(%esi), %eax
	movl	%eax, 12(%esp)
	movl	352(%esi), %eax
	movzbl	18(%eax), %eax
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_pushmove.constprop.0
	cmpl	$-1, %eax
	jne	L1017
	testb	$2, 22968(%esi)
	jne	L1017
	movl	36(%esp), %eax
	movzwl	84(%eax), %edx
	movl	%esi, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testb	$2, 22968(%esi)
	je	L1017
	jmp	L996
	.p2align 4,,10
	.p2align 3
L1072:
	movswl	(%eax,%edx,8), %eax
	movl	_wall, %ecx
	sall	$5, %eax
	addl	%ecx, %eax
	movswl	8(%eax), %edx
	sall	$5, %edx
	addl	%ecx, %edx
	movl	4(%edx), %edi
	subl	4(%eax), %edi
	movl	(%edx), %ecx
	movl	%edi, %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movswl	268(%esi), %edx
	addw	$512, %ax
	andw	$2047, %ax
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	movw	%ax, 56(%esp)
	addw	$512, %ax
	leal	(%edx,%ecx,8), %edi
	andl	$2047, %eax
	movswl	18(%ebx), %ecx
	movswl	_sintable(%eax,%eax), %eax
	movswl	26(%edi), %edx
/APP
 # 1848 "source/sw/src/player.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 192(%esi)
	movzwl	56(%esp), %eax
	movswl	26(%edi), %edx
	movswl	18(%ebx), %ecx
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 1849 "source/sw/src/player.cpp" 1
	imull %edx; shrdl %cl, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 196(%esi)
	jmp	L998
	.p2align 4,,10
	.p2align 3
L1078:
	movlps	(%esi), %xmm3
	movlps	%xmm3, 12(%esi)
	jmp	L1020
	.p2align 4,,10
	.p2align 3
L1024:
	testl	$196608, %eax
	je	L996
	movl	8(%esi), %eax
	movl	136(%esi), %edx
	cmpl	%edx, %eax
	jle	L1026
	leal	-6656(%edx), %eax
	movl	%eax, 8(%esi)
L1026:
	movl	132(%esi), %edx
	cmpl	%eax, %edx
	jle	L996
	addl	$6656, %edx
	movl	%edx, 8(%esi)
	jmp	L996
	.p2align 4,,10
	.p2align 3
L1077:
	testb	$2, 22968(%esi)
	jne	L1018
	movl	36(%esp), %eax
	movzwl	84(%eax), %eax
	movl	%eax, %edx
	movw	%ax, 56(%esp)
	movl	%esi, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testb	$2, 22968(%esi)
	je	L1018
	jmp	L996
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct
	.def	__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct:
LFB88:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movzwl	268(%eax), %edx
	movw	%dx, 18(%esp)
	testw	%dx, %dx
	js	L1079
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movswl	%dx, %eax
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %eax
	testb	$64, 38(%eax)
	jne	L1083
	cmpw	$2356, 16(%eax)
	je	L1083
	cmpw	$2356, 24(%eax)
	je	L1083
L1082:
	movw	%dx, 268(%ebx)
	movl	20(%esp), %ebx
	.cfi_restore 3
L1079:
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1083:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -8
	leal	18(%esp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	(%ebx), %edx
	movl	%edx, (%esp)
	call	_updatesectorz
	movzwl	18(%esp), %edx
	leal	18(%esp), %eax
	testw	%dx, %dx
	jns	L1082
	movzwl	268(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movw	%dx, 18(%esp)
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	18(%esp), %edx
	jmp	L1082
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct
	.def	__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct:
LFB89:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -12
	movzwl	268(%eax), %ebx
	testw	%bx, %bx
	js	L1088
	movswl	%bx, %edx
	movl	_sector, %ecx
	leal	(%edx,%edx,4), %edx
	sall	$3, %edx
	addl	%edx, %ecx
	cmpw	$2356, 16(%ecx)
	je	L1089
	cmpw	$2356, 24(%ecx)
	je	L1089
L1088:
	movl	36(%esp), %ebx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17PlayerSectorBoundP12PLAYERstructi.constprop.0
	.p2align 4,,10
	.p2align 3
L1089:
	.cfi_restore_state
	movl	%edx, 24(%esp)
	leal	268(%eax), %edx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -8
	movl	%edx, %esi
	movl	%edx, 12(%esp)
	movl	8(%eax), %ecx
	movl	%eax, 20(%esp)
	movl	%ecx, 8(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%esp)
	movl	(%eax), %ecx
	movl	%ecx, (%esp)
	call	_updatesectorz
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	cmpw	$0, 268(%eax)
	js	L1094
L1087:
	movl	40(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	36(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1094:
	.cfi_restore_state
	leal	32(%esp), %ecx
	movw	%bx, 268(%eax)
	addl	_sector, %edx
	movl	%ecx, 16(%esp)
	leal	28(%esp), %ecx
	movl	%ecx, 12(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 8(%esp)
	movl	(%eax), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_getzsofslopeptr
	movl	20(%esp), %eax
	movl	32(%esp), %ecx
	movl	8(%eax), %edx
	cmpl	%ecx, %edx
	jle	L1091
	movl	%ecx, 8(%eax)
	movl	%ecx, %edx
L1091:
	movl	28(%esp), %ecx
	cmpl	%edx, %ecx
	jle	L1092
	movl	%ecx, 8(%eax)
	movl	%ecx, %edx
L1092:
	movl	%esi, 12(%esp)
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	jmp	L1087
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	__Z11PlaySOsoundss
	.def	__Z11PlaySOsoundss;	.scl	2;	.type	32;	.endef
__Z11PlaySOsoundss:
LFB90:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	cwtl
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L1095
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movswl	%dx, %edi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	jmp	L1096
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1099:
	cmpw	$-1, %si
	je	L1104
L1096:
	movswl	%si, %eax
	imull	$44, %eax, %ebx
	movzwl	_nextspritesect(%eax,%eax), %esi
	movl	_sprite, %eax
	addl	%ebx, %eax
	cmpw	$65, 26(%eax)
	jne	L1099
	movswl	38(%eax), %eax
	movl	%eax, (%esp)
	call	__Z20DoSoundSpotStopSounds
	movl	_sprite, %eax
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movswl	38(%eax,%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	cmpw	$-1, %si
	jne	L1096
L1104:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
L1095:
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__Z14PlayerFallTestP12PLAYERstructi
	.def	__Z14PlayerFallTestP12PLAYERstructi;	.scl	2;	.type	32;	.endef
__Z14PlayerFallTestP12PLAYERstructi:
LFB91:
	.cfi_startproc
	movl	%eax, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%eax), %eax
	movl	%edx, %ebx
	subl	136(%ecx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$9216, %ebx
	movl	$16384, %eax
	movl	$22016, %ebx
	cmovne	%ebx, %eax
	cmpl	%eax, %edx
	jle	L1109
	movl	152(%ecx), %eax
	testl	%eax, %eax
	je	L1108
	movzwl	26(%eax), %ebx
	movl	%ebx, %edx
	negw	%dx
	cmovs	%ebx, %edx
	cmpw	$3000, %dx
	jbe	L1108
	testb	$2, 14(%eax)
	je	L1108
	movswl	270(%ecx), %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	cmpl	%edx, %eax
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
L1109:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1108:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z14FindNearSpriteP12spritetypev7s
	.def	__Z14FindNearSpriteP12spritetypev7s;	.scl	2;	.type	32;	.endef
__Z14FindNearSpriteP12spritetypev7s:
LFB93:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	%dx, %edx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat(%edx,%edx), %ebx
	cmpw	$-1, %bx
	je	L1114
	movl	_sprite, %edi
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	$15000, %esi
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	%edi, (%esp)
	movl	4(%eax), %edi
	movl	(%eax), %eax
	movl	%edi, 4(%esp)
	xorl	%edi, %edi
	movl	%eax, 8(%esp)
	.p2align 4
	.p2align 3
L1118:
	movswl	%bx, %edx
	movl	4(%esp), %ebp
	movzwl	_nextspritestat(%edx,%edx), %ebx
	imull	$44, %edx, %edx
	addl	(%esp), %edx
	movl	(%edx), %eax
	subl	8(%esp), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	movl	4(%edx), %eax
	subl	%ebp, %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovns	%ebp, %eax
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %ebp
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	%esi, %ebp
	cmovl	%edx, %edi
	cmovl	%ebp, %esi
	cmpw	$-1, %bx
	jne	L1118
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L1114:
	movl	%edi, %eax
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE93:
	.p2align 4
	.globl	__Z13DoPlayerClimbP12PLAYERstruct
	.def	__Z13DoPlayerClimbP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13DoPlayerClimbP12PLAYERstruct:
LFB94:
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
	subl	$88, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %esi
	cmpb	$0, _Prediction
	jne	L1121
	movswl	348(%esi), %eax
	movl	$45056, %edx
	movl	_User(,%eax,4), %eax
	movl	%eax, 64(%esp)
	movl	352(%esi), %eax
	movl	%eax, 56(%esp)
	movswl	398(%esi), %eax
	leal	(%eax,%eax,2), %ecx
	movswl	396(%esi), %eax
	sall	$7, %ecx
	addl	196(%esi), %ecx
	leal	(%eax,%eax,2), %eax
	sall	$7, %eax
	addl	192(%esi), %eax
/APP
 # 3982 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$45056, %edx
	movl	%eax, 192(%esi)
	movl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 3983 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 196(%esi)
	movl	%eax, %ecx
	leal	12799(%ebx), %eax
	cmpl	$25598, %eax
	ja	L1124
	leal	12799(%ecx), %eax
	cmpl	$25598, %eax
	ja	L1124
	movl	$0, 192(%esi)
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$0, 196(%esi)
L1124:
	movl	%ebx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 80(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 84(%esp)
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1126
	testl	%edx, %edx
	je	L1163
	cmpl	%eax, %edx
	jge	L1127
	leal	80(%esp), %eax
	leal	84(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	84(%esp), %edi
	movl	80(%esp), %edx
	movl	192(%esi), %ebx
	movl	196(%esi), %ecx
L1127:
	movl	%edi, %eax
	sarl	%eax
	addl	%edi, %eax
	movl	%edx, %edi
	movl	%eax, 68(%esp)
	movl	%edx, %eax
	sarl	$7, %edx
	sarl	$5, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	68(%esp), %edi
	subl	%edx, %eax
	sarl	$2, %edi
	leal	(%edi,%eax), %edx
	movl	68(%esp), %eax
	sarl	$6, %eax
	addl	%eax, %edx
L1126:
	sarl	$9, %edx
	movl	%edx, 60(%esp)
	movl	300(%esi), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %edi
	cmovns	%eax, %edi
	sarl	$16, %edi
	leal	512(%edi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%ebx, %eax
/APP
 # 3988 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movswl	_sintable(%edi,%edi), %edx
	movl	%ecx, %eax
/APP
 # 3988 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	60(%esp), %edi
	movl	%edi, %edx
	negl	%edx
	addl	%eax, %ebx
	movl	22976(%esi), %eax
	cmovns	%edi, %edx
	movl	%edx, 60(%esp)
	movl	416(%esi), %edx
	testb	$4, %dh
	jne	L1176
	orb	$4, %ah
	movl	%eax, 22976(%esi)
L1132:
	andl	$524288, %edx
	jne	L1177
L1135:
	movl	60(%esp), %ebx
	testl	%ebx, %ebx
	jne	L1166
	movl	%esi, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movswl	348(%esi), %eax
	movl	$_sg_PlayerNinjaClimb, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esi), %ecx
L1137:
	movl	56(%esp), %eax
	movl	_sprite, %ebx
	addl	$14848, %ecx
	leal	8(%eax), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%eax)
	movzwl	268(%esi), %edx
	cmpw	$4096, %dx
	ja	L1157
	movswl	348(%esi), %edi
	imull	$44, %edi, %eax
	movzwl	24(%ebx,%eax), %eax
	cmpw	$4096, %ax
	je	L1157
	cmpw	%ax, %dx
	je	L1157
	movl	%edi, %eax
	movl	%edx, 68(%esp)
	call	_do_deletespritesect
	movswl	68(%esp), %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
L1157:
	movl	404(%esi), %ecx
	leal	288(%esi), %edx
	movl	%esi, %eax
	leal	4(%esi), %edi
	leal	268(%esi), %ebx
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	movswl	268(%esi), %eax
	leal	8(%esi), %ecx
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	cmpw	$2356, 16(%eax,%edx,8)
	je	L1158
	cmpw	$2356, 24(%eax,%edx,8)
	je	L1158
	movl	%ebx, (%esp)
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z9WarpPlanePiS_S_Ps
	testl	%eax, %eax
	je	L1121
	cmpb	$0, _Prediction
	je	L1178
L1160:
	movl	300(%esi), %edx
	leal	80(%esp), %ecx
	movl	$0, 44(%esp)
	movl	%ecx, 32(%esp)
	leal	74(%esp), %ecx
	movl	%edx, %eax
	movl	%ecx, 28(%esp)
	leal	76(%esp), %ecx
	sarl	$31, %eax
	movl	%ecx, 24(%esp)
	leal	78(%esp), %ecx
	xorw	%ax, %ax
	movl	$3, 40(%esp)
	leal	32768(%edx,%eax), %edx
	movl	$800, 36(%esp)
	testl	%edx, %edx
	leal	65535(%edx), %eax
	movl	%ecx, 20(%esp)
	cmovns	%edx, %eax
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movswl	268(%esi), %eax
	movl	%eax, 12(%esp)
	movl	8(%esi), %eax
	movl	%eax, 8(%esp)
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movswl	76(%esp), %eax
	testw	%ax, %ax
	jns	L1179
L1121:
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
L1176:
	.cfi_restore_state
	testb	$4, %ah
	je	L1132
	andb	$-5, %ah
	movl	%eax, 22976(%esi)
	movl	22968(%esi), %eax
	xorl	$1048576, %eax
	movl	%eax, 22968(%esi)
	andl	$1048576, %eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC31, %eax
	movb	%dl, _gs+21
	movl	$LC30, %edx
	cmovne	%edx, %eax
	movl	$LC32, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	416(%esi), %edx
	andl	$524288, %edx
	je	L1135
L1177:
	movl	56(%esp), %edi
	movl	$-1171354717, %eax
	andl	$2147450879, 22968(%esi)
	leal	12(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%edi)
	movl	%esi, 8(%ebp)
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
	jmp	__Z17DoPlayerBeginJumpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1166:
	.cfi_restore_state
	movl	56(%esp), %eax
	movb	$3, 55(%esp)
	movl	$-1171354717, %edi
	movl	%esi, 68(%esp)
	leal	4(%eax), %ebx
	movl	%eax, %esi
	movl	%ebx, 48(%esp)
L1136:
	movl	68(%esp), %eax
	movl	(%eax), %edx
	movl	368(%eax), %eax
	cmpl	%eax, %edx
	je	L1138
	leal	-8(%edx), %ebx
	leal	8(%edx), %ecx
	cmovge	%ebx, %ecx
	movl	68(%esp), %ebx
	movl	%ecx, %edx
	subl	%eax, %edx
	addl	$8, %edx
	cmpl	$17, %edx
	cmovnb	%ecx, %eax
	movl	%eax, (%ebx)
L1138:
	movl	68(%esp), %eax
	movl	4(%eax), %edx
	movl	372(%eax), %eax
	cmpl	%eax, %edx
	je	L1142
	leal	-8(%edx), %ebx
	leal	8(%edx), %ecx
	cmovge	%ebx, %ecx
	movl	68(%esp), %ebx
	movl	%ecx, %edx
	subl	%eax, %edx
	addl	$8, %edx
	cmpl	$17, %edx
	cmovnb	%ecx, %eax
	movl	%eax, 4(%ebx)
L1142:
	movl	64(%esp), %eax
	movl	(%esi), %ecx
	movl	248(%eax), %ebx
	cmpl	%ecx, %ebx
	je	L1146
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	(%esi), %eax
	cmpl	%ecx, %ebx
	jle	L1147
	addl	$8, %eax
L1148:
	movl	64(%esp), %ebx
	movl	%eax, (%esi)
	movl	248(%ebx), %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$8, %eax
	jg	L1146
	movl	%esi, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esi)
L1146:
	movl	64(%esp), %eax
	movl	4(%esi), %ecx
	movl	252(%eax), %ebx
	cmpl	%ecx, %ebx
	je	L1149
	movl	48(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	4(%esi), %eax
	cmpl	%ecx, %ebx
	jle	L1150
	leal	8(%eax), %ecx
L1151:
	movl	64(%esp), %eax
	movl	%ecx, 4(%esi)
	movl	252(%eax), %ebx
	subl	%ebx, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	cmpl	$8, %eax
	jg	L1149
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, 4(%esi)
L1149:
	subb	$1, 55(%esp)
	jne	L1136
	movl	68(%esp), %esi
	movl	%esi, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	128(%esi), %edx
	movl	60(%esp), %edi
	movl	8(%esi), %ecx
	movl	%edi, %eax
	andl	$1023, %edx
	movl	%edx, 128(%esi)
	sarl	$4, %eax
	testl	%edi, %edi
	jle	L1152
	sall	$3, %eax
	subl	%eax, %ecx
	movl	132(%esi), %eax
	cmpl	%eax, %ecx
	jl	L1153
	movl	%ecx, 8(%esi)
L1154:
	addl	$1024, %eax
	cmpl	%ecx, %eax
	jle	L1155
	movswl	362(%esi), %eax
	movl	_sector, %ecx
	movl	$_sg_PlayerNinjaClimb, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	4(%eax), %eax
	addl	$1024, %eax
	movl	%eax, 8(%esi)
	movswl	348(%esi), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esi), %ecx
L1155:
	movswl	362(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
	subl	$1536, %eax
	cmpl	%ecx, %eax
	jle	L1137
	movl	56(%esp), %ebx
	movl	$-1171354717, %eax
	andl	$2147450879, 22968(%esi)
	movl	$-1100, 112(%esi)
	movlps	LC3, %xmm0
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movb	$24, _PlayerGravity
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%ebx)
	movl	22968(%esi), %eax
	movswl	348(%esi), %ecx
	andl	$-49177, %eax
	movl	_User(,%ecx,4), %edx
	orl	$4, %eax
	orl	$6, 22972(%esi)
	movl	%eax, 22968(%esi)
	movl	$12, %eax
	movw	%ax, 376(%esi)
	movl	$__Z17DoPlayerForceJumpP12PLAYERstruct, 22964(%esi)
	movl	$50000, 208(%esi)
	movlps	%xmm0, 140(%esi)
	movl	40(%edx), %eax
	movl	8(%eax), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esi), %ecx
	jmp	L1137
	.p2align 4,,10
	.p2align 3
L1150:
	leal	-8(%eax), %ecx
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1147:
	subl	$8, %eax
	jmp	L1148
	.p2align 4,,10
	.p2align 3
L1158:
	movl	%ebx, 12(%esp)
	movl	8(%esi), %eax
	movl	%ecx, 68(%esp)
	movl	%eax, 8(%esp)
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movl	%ebx, (%esp)
	movl	68(%esp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	__Z9WarpPlanePiS_S_Ps
	testl	%eax, %eax
	je	L1160
	cmpb	$0, _Prediction
	jne	L1160
	jmp	L1178
	.p2align 4,,10
	.p2align 3
L1179:
	sall	$5, %eax
	addl	_wall, %eax
	movl	$53, %edx
	movl	%eax, %ebx
	movzwl	12(%eax), %eax
	movw	%ax, 362(%esi)
	movl	352(%esi), %eax
	call	__Z14FindNearSpriteP12spritetypev7s
	movl	%eax, %edi
	movzwl	28(%eax), %eax
	leal	512(%eax), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %ecx
	movl	%eax, %edx
	addw	$1024, %ax
	andl	$2047, %edx
	andw	$2047, %ax
	movswl	_sintable(%edx,%edx), %edx
	imull	$100, %ecx, %ecx
	movw	%ax, 364(%esi)
	sall	$16, %eax
	movzwl	12(%ebx), %ebx
	imull	$100, %edx, %edx
	sarl	$14, %ecx
	movw	%bx, 362(%esi)
	leal	(%ecx,%ecx,4), %ecx
	addl	(%edi), %ecx
	sarl	$14, %edx
	movl	%ecx, 368(%esi)
	leal	(%edx,%edx,4), %edx
	addl	4(%edi), %edx
	movl	%eax, 300(%esi)
	movl	%edx, 372(%esi)
	movl	%eax, 308(%esi)
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
L1178:
	.cfi_restore_state
	movl	8(%esi), %eax
	movlps	(%esi), %xmm1
	movl	%eax, 20(%esi)
	movl	%esi, %eax
	movlps	%xmm1, 12(%esi)
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	%esi, %eax
	call	__Z18UpdatePlayerSpriteP12PLAYERstruct
	jmp	L1160
	.p2align 4,,10
	.p2align 3
L1163:
	movl	%eax, %edx
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1152:
	negl	%eax
	leal	(%ecx,%eax,8), %ecx
	movl	136(%esi), %eax
	subl	$15872, %eax
	cmpl	%eax, %ecx
	jg	L1156
	movl	%ecx, 8(%esi)
	jmp	L1137
	.p2align 4,,10
	.p2align 3
L1153:
	movl	%eax, 8(%esi)
	movswl	348(%esi), %eax
	movl	$_sg_PlayerNinjaClimb, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	132(%esi), %eax
	movl	8(%esi), %ecx
	jmp	L1154
	.p2align 4,,10
	.p2align 3
L1156:
	movl	56(%esp), %edi
	movl	%eax, 8(%esi)
	movl	$-1171354717, %eax
	andl	$2147450879, 22968(%esi)
	leal	12(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%edi)
	movl	%esi, 8(%ebp)
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
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.cfi_endproc
LFE94:
	.section .rdata,"dr"
LC33:
	.ascii "source/sw/src/player.cpp\0"
LC34:
	.ascii "found <= 2\0"
	.align 4
LC35:
	.ascii "GetOverlapSector x = %d, y = %d, over %d, under %d\0"
LC36:
	.ascii "source/sw/src/game.h\0"
LC37:
	.ascii "found != 0\0"
	.text
	.p2align 4
	.globl	__Z16GetOverlapSectoriiPsS_
	.def	__Z16GetOverlapSectoriiPsS_;	.scl	2;	.type	32;	.endef
__Z16GetOverlapSectoriiPsS_:
LFB96:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movzwl	(%ecx), %ebp
	movl	%eax, 32(%esp)
	movl	80(%esp), %eax
	movl	%ecx, 36(%esp)
	movswl	%bp, %esi
	movswl	(%eax), %ebx
	movl	$0, 52(%esp)
	movl	_SectUser(,%ebx,4), %eax
	movw	%bx, 40(%esp)
	movl	%ebx, 44(%esp)
	testl	%eax, %eax
	je	L1181
	cmpw	$29999, 22(%eax)
	jg	L1182
L1181:
	movl	_SectUser(,%esi,4), %eax
	movl	%esi, 48(%esp)
	testl	%eax, %eax
	je	L1183
	cmpw	$29999, 22(%eax)
	jle	L1183
L1182:
	movl	32(%esp), %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	movl	$0, 56(%esp)
	call	_inside
	movl	%ebx, %ecx
	movl	%edi, %edx
	testl	%eax, %eax
	movl	32(%esp), %eax
	je	L1251
	call	_inside
	testl	%eax, %eax
	jne	L1187
L1249:
	movl	$1, %esi
L1211:
	movl	36(%esp), %eax
	movl	$-1, %edx
	movw	%bp, (%eax)
	movl	80(%esp), %eax
	movw	%dx, (%eax)
	addl	$60, %esp
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
L1251:
	.cfi_restore_state
	call	_inside
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1223
	movswl	_headspritestat+98, %ebx
	cmpl	$-1, %ebx
	jne	L1188
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1193:
	cmpl	$-1, %ebx
	je	L1189
L1188:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	%edi, %edx
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movswl	24(%eax), %ecx
	movl	32(%esp), %eax
	movl	%ecx, %ebp
	call	_inside
	testl	%eax, %eax
	je	L1193
	movw	%bp, 56(%esp,%esi,2)
	addl	$1, %esi
	cmpl	$2, %esi
	jle	L1193
	movl	$4978, %ecx
	movl	$LC33, %edx
	movl	$LC34, %eax
	call	__Z7_AssertPKcS0_j
	cmpl	$-1, %ebx
	jne	L1188
	.p2align 4
	.p2align 3
L1189:
	movl	$__ZZ17GetOverlapSector2iiPsS_E13UnderStatList, %edx
L1191:
	movswl	(%edx), %eax
	movswl	_headspritestat(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L1195
	movl	%edx, 40(%esp)
	.p2align 4
	.p2align 3
L1194:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	cmpw	$0, 38(%eax)
	je	L1198
	movswl	24(%eax), %ecx
	movl	32(%esp), %eax
	movl	%edi, %edx
	movl	%ecx, %ebp
	call	_inside
	testl	%eax, %eax
	je	L1198
	movw	%bp, 56(%esp,%esi,2)
	addl	$1, %esi
	cmpl	$2, %esi
	jg	L1252
	.p2align 4
	.p2align 3
L1198:
	cmpl	$-1, %ebx
	jne	L1194
	movl	40(%esp), %edx
L1195:
	addl	$2, %edx
	movl	$__ZZ17GetOverlapSector2iiPsS_E13UnderStatList+4, %eax
	cmpl	%edx, %eax
	jne	L1191
	testl	%esi, %esi
	je	L1253
	cmpl	$2, %esi
	jle	L1204
	movl	$5004, %ecx
	movl	$LC33, %edx
	movl	$LC34, %eax
	call	__Z7_AssertPKcS0_j
	movzwl	56(%esp), %ebp
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1183:
	movl	32(%esp), %eax
	movl	%esi, %ecx
	movl	%edi, %edx
	call	_inside
	movl	%ebx, %ecx
	movl	%edi, %edx
	testl	%eax, %eax
	jne	L1254
	movl	32(%esp), %ebp
	movl	%ebp, %eax
	call	_inside
	testl	%eax, %eax
	jne	L1223
	cmpw	$0, _numsectors
	jle	L1212
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	L1216
	.p2align 4,,10
	.p2align 3
L1213:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%ebx, %eax
	jle	L1255
L1216:
	movswl	%bx, %ecx
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_inside
	testl	%eax, %eax
	je	L1213
	movw	%bx, 52(%esp,%esi,2)
	addl	$1, %esi
	cmpl	$2, %esi
	jle	L1213
	movl	$4909, %ecx
	movl	$LC33, %edx
	movl	$LC34, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1223:
	movzwl	40(%esp), %ebp
	jmp	L1249
L1204:
	movzwl	56(%esp), %ebp
	jne	L1211
	movswl	58(%esp), %ebx
	movswl	%bp, %esi
	movw	%bx, 40(%esp)
	.p2align 4
	.p2align 3
L1187:
	movl	_sector, %eax
	leal	(%esi,%esi,4), %ecx
	leal	(%ebx,%ebx,4), %edx
	movl	8(%eax,%edx,8), %edi
	cmpl	%edi, 8(%eax,%ecx,8)
	movl	80(%esp), %eax
	jg	L1250
L1220:
	movzwl	40(%esp), %edi
	movw	%di, (%eax)
	movl	36(%esp), %eax
	movw	%bp, (%eax)
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1254:
	movl	32(%esp), %eax
	call	_inside
	testl	%eax, %eax
	je	L1249
L1210:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %ecx
	leal	(%esi,%esi,4), %edx
	movl	8(%eax,%edx,8), %edi
	cmpl	%edi, 8(%eax,%ecx,8)
	movl	80(%esp), %eax
	jge	L1220
L1250:
	movw	%bp, (%eax)
	movzwl	40(%esp), %edi
	movl	36(%esp), %eax
	movw	%di, (%eax)
L1221:
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$2, %esi
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
	.p2align 4,,10
	.p2align 3
L1252:
	.cfi_restore_state
	movl	$4994, %ecx
	movl	$LC33, %edx
	movl	$LC34, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1198
	.p2align 4,,10
	.p2align 3
L1253:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1256
L1203:
	movl	80(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 20(%esp)
	movl	36(%esp), %eax
	movswl	(%eax), %eax
	movl	%edi, 12(%esp)
	movl	$LC35, 4(%esp)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	$_apptitle, (%esp)
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	$5003, %ecx
	movl	$LC33, %edx
	movl	$LC37, %eax
	call	__Z7_AssertPKcS0_j
	movzwl	56(%esp), %ebp
	jmp	L1211
L1258:
	movl	80(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 48(%esp)
L1212:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1257
L1218:
	movl	44(%esp), %eax
	movl	%edi, 12(%esp)
	xorl	%esi, %esi
	movl	$LC35, 4(%esp)
	movl	%eax, 20(%esp)
	movl	48(%esp), %eax
	movl	$_apptitle, (%esp)
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movl	$4917, %ecx
	movl	$LC33, %edx
	movl	$LC37, %eax
	call	__Z7_AssertPKcS0_j
	movzwl	52(%esp), %ebp
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1255:
	testl	%esi, %esi
	je	L1258
	cmpl	$2, %esi
	jle	L1219
	movl	$4918, %ecx
	movl	$LC33, %edx
	movl	$LC34, %eax
	call	__Z7_AssertPKcS0_j
	movzwl	52(%esp), %ebp
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1256:
	movl	80(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 28(%esp)
	movl	36(%esp), %eax
	movswl	(%eax), %eax
	movl	%edi, 20(%esp)
	movl	$LC35, 12(%esp)
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	movl	$2413, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC36, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1203
	.p2align 4,,10
	.p2align 3
L1257:
	movl	44(%esp), %eax
	movl	%edi, 20(%esp)
	movl	$LC35, 12(%esp)
	movl	%eax, 28(%esp)
	movl	48(%esp), %eax
	movl	$2413, 8(%esp)
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	movl	$LC36, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	80(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	movswl	(%eax), %eax
	movl	%eax, 48(%esp)
	jmp	L1218
L1219:
	movzwl	52(%esp), %ebp
	jne	L1211
	movswl	54(%esp), %ebx
	movswl	%bp, %esi
	movw	%bx, 40(%esp)
	jmp	L1210
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z19DoPlayerDivePaletteP12PLAYERstruct
	.def	__Z19DoPlayerDivePaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19DoPlayerDivePaletteP12PLAYERstruct:
LFB99:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1269
L1259:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1269:
	.cfi_restore_state
	movl	22968(%ebx), %eax
	cmpw	$5, 23234(%ebx)
	je	L1261
	testl	$131072, %eax
	je	L1262
L1261:
	testl	$262144, %eax
	je	L1270
L1262:
	cmpb	$-46, 23303(%ebx)
	jne	L1259
	leal	23304(%ebx), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	_palookup, %eax
	movl	$8192, 8(%esp)
	movl	$_DefaultPalette, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	cmpl	$2, _rendmode
	jle	L1271
	call	_videoFadePalette.constprop.0
L1264:
	xorl	%eax, %eax
	movw	%ax, 23300(%ebx)
	jmp	L1259
	.p2align 4,,10
	.p2align 3
L1270:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	movl	$210, %ecx
	movl	$-1005, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10SetFadeAmtP12PLAYERstructsh
	.p2align 4,,10
	.p2align 3
L1271:
	.cfi_restore_state
	movzbl	_gs+13, %eax
	movl	$_palette_data, %edx
	movb	%al, 15(%esp)
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movzbl	15(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	jmp	L1264
	.cfi_endproc
LFE99:
	.section .rdata,"dr"
LC38:
	.ascii "Found == TRUE\0"
	.text
	.p2align 4
	.globl	__Z12DoPlayerDiveP12PLAYERstruct
	.def	__Z12DoPlayerDiveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12DoPlayerDiveP12PLAYERstruct:
LFB103:
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
	subl	$52, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	movzwl	268(%edi), %eax
	testw	%ax, %ax
	js	L1388
	movl	_sector, %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L1388
	movswl	348(%edi), %eax
	movl	_SectUser(,%edx,4), %ebx
	movl	_User(,%eax,4), %esi
	subw	$3, 23230(%edi)
	js	L1389
L1275:
	movl	152(%edi), %eax
	testl	%eax, %eax
	je	L1281
	testb	$8, 38(%eax)
	jne	L1390
L1281:
	testb	$4, 22970(%edi)
	je	L1282
	movzwl	182(%esi), %eax
	subw	$3, %ax
	js	L1283
	movw	%ax, 182(%esi)
L1282:
	movl	416(%edi), %edx
	movl	120(%edi), %eax
	testl	$1048576, %edx
	je	L1284
	addl	$600, %eax
	cmpl	$1700, %eax
	jg	L1391
L1284:
	andl	$524288, %edx
	leal	-600(%eax), %ecx
	cmovne	%ecx, %eax
	movl	$-1700, %ecx
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	testl	%edx, %edx
	cmovne	%ecx, %eax
L1285:
	movl	$58000, %edx
/APP
 # 5488 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	15(%eax), %ecx
	movl	%eax, 120(%edi)
	movl	8(%edi), %edx
	cmpl	$30, %ecx
	jbe	L1286
	addl	%eax, %edx
	movl	%edx, 8(%edi)
	testl	%eax, %eax
	jns	L1291
	movswl	268(%edi), %ecx
	movl	_sector, %eax
	movw	%cx, 44(%esp)
	leal	(%ecx,%ecx,4), %ecx
	leal	(%eax,%ecx,8), %ecx
	cmpw	$2356, 16(%ecx)
	je	L1288
	cmpw	$2356, 24(%ecx)
	je	L1288
L1291:
	testl	%ebx, %ebx
	je	L1293
L1399:
	cmpw	$0, 22(%ebx)
	jne	L1392
L1294:
	movl	140(%edi), %eax
	addl	132(%edi), %eax
	cmpl	%edx, %eax
	jg	L1393
L1296:
	movl	136(%edi), %eax
	subl	$6656, %eax
	cmpl	%edx, %eax
	jg	L1313
	movl	%eax, 8(%edi)
L1313:
	movl	192(%edi), %edx
	orl	196(%edi), %edx
	jne	L1314
	movl	120(%edi), %edx
	testl	%edx, %edx
	je	L1394
L1314:
	movzwl	380(%edi), %ecx
	movl	%ecx, %edx
	negw	%dx
	cmovs	%ecx, %edx
	cmpw	$255, %dx
	ja	L1316
	movl	$0, 380(%edi)
	xorl	%edx, %edx
	addl	8(%edi), %edx
	cmpl	%eax, %edx
	jge	L1395
L1317:
	movl	140(%edi), %eax
	addl	132(%edi), %eax
	cmpl	%edx, %eax
	jg	L1396
L1318:
	movl	%edi, %eax
	call	__Z12DoPlayerMoveP12PLAYERstruct
	cmpb	$0, _Prediction
	jne	L1319
	movl	120(%edi), %eax
	testl	%eax, %eax
	jne	L1397
L1319:
	movl	192(%edi), %eax
	orl	196(%edi), %eax
	jne	L1398
L1272:
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
L1290:
	.cfi_restore_state
	movswl	268(%edi), %edx
	leal	(%edx,%edx,4), %edx
	movl	4(%ecx,%edx,8), %edx
	movw	%ax, 268(%edi)
	subl	$2048, %edx
	movl	%edx, 8(%edi)
	.p2align 4
	.p2align 3
L1388:
	cmpb	$0, _Prediction
	jne	L1292
	movl	%edi, %eax
	call	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0
L1292:
	movl	%edi, 8(%ebp)
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
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1286:
	.cfi_restore_state
	movl	$0, 120(%edi)
	testl	%ebx, %ebx
	jne	L1399
L1293:
	movl	132(%edi), %eax
	addl	$1023, %eax
	cmpl	%edx, %eax
	jl	L1296
	movl	156(%edi), %ebx
	testl	%ebx, %ebx
	jne	L1296
	cmpb	$0, _Prediction
	jne	L1272
	movswl	348(%edi), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 40(%esp)
	cmpb	$0, _NoMeters
	je	L1400
	movl	24088(%edi), %eax
	testl	%eax, %eax
	jg	L1321
L1300:
	leal	8(%edi), %eax
	movl	%edi, 16(%esp)
	movl	$476, %ecx
	xorl	%esi, %esi
	movl	%eax, 8(%esp)
	leal	4(%edi), %eax
	movl	$5362, %edx
	movl	%eax, 4(%esp)
	movl	$LC33, %eax
	movl	$13, 12(%esp)
	movl	%edi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movw	%si, 380(%edi)
	cmpb	$0, _Prediction
	jne	L1301
	movswl	348(%edi), %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 28(%esp)
	movswl	268(%edi), %eax
	movl	_SectUser(,%eax,4), %eax
	movl	%eax, 44(%esp)
	movswl	_headspritestat+100, %eax
	cmpw	$-1, %ax
	je	L1324
	movl	_sprite, %esi
	movl	_sector, %ecx
	movl	%ebx, 36(%esp)
	movl	%edi, 32(%esp)
	movl	%esi, %ebx
	movl	%ecx, %edi
	jmp	L1303
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1304:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1383
L1303:
	imull	$44, %eax, %esi
	addl	%ebx, %esi
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$1, 39(%edi,%ecx,8)
	je	L1304
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1304
	movl	44(%esp), %ecx
	movzwl	22(%ecx), %ecx
	cmpw	%cx, 22(%edx)
	jne	L1304
	movl	36(%esp), %ebx
	movl	32(%esp), %edi
L1305:
	movswl	_headspritestat+98, %eax
	cmpw	$-1, %ax
	je	L1307
	movl	_sprite, %ebx
	movl	_sector, %ecx
	movl	%esi, 36(%esp)
	movl	%edi, 32(%esp)
	movl	%ebx, %esi
	movl	%ecx, %edi
	jmp	L1308
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1309:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1385
L1308:
	imull	$44, %eax, %ebx
	addl	%esi, %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$-128, 38(%edi,%ecx,8)
	je	L1309
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1309
	movl	44(%esp), %ecx
	movzwl	22(%ecx), %ecx
	cmpw	%cx, 22(%edx)
	jne	L1309
	movl	36(%esp), %esi
	movl	32(%esp), %edi
L1310:
	movl	28(%esp), %ecx
	movl	(%esi), %edx
	subl	(%edi), %edx
	movl	%edx, 248(%ecx)
	movl	4(%esi), %eax
	subl	4(%edi), %eax
	movl	%eax, 252(%ecx)
	movl	(%ebx), %eax
	subl	%edx, %eax
	movl	%eax, (%edi)
	movl	4(%ebx), %edx
	subl	252(%ecx), %edx
	movl	%edx, 4(%edi)
	movzwl	24(%ebx), %ecx
	movw	%cx, 48(%esp)
	movzwl	24(%esi), %ecx
	leal	50(%esp), %esi
	movl	%esi, (%esp)
	movw	%cx, 50(%esp)
	leal	48(%esp), %ecx
	call	__Z16GetOverlapSectoriiPsS_
	testl	%eax, %eax
	je	L1312
	movzwl	48(%esp), %eax
	movw	%ax, 268(%edi)
L1312:
	movswl	24(%ebx), %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movl	8(%eax), %eax
	subl	$512, %eax
	movl	%eax, 8(%edi)
	movl	%edi, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	%edi, %eax
	call	__Z20DoPlayerSetWadeDepthP12PLAYERstruct
	movswl	378(%edi), %eax
	movl	8(%edi), %esi
	movss	4(%edi), %xmm1
	movss	(%edi), %xmm2
	sall	$8, %eax
	subl	%eax, %esi
	movl	%esi, 44(%esp)
	movss	44(%esp), %xmm0
	unpcklps	%xmm0, %xmm1
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%edi)
L1301:
	movl	%edi, (%esp)
	call	__Z17DoPlayerBeginWadeP12PLAYERstruct
	movl	%edi, %eax
	andl	$-393217, 22968(%edi)
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%edi, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	movl	40(%esp), %esi
	movl	$-1171354717, %eax
	leal	12(%esi), %edx
	subl	_sprite, %edx
	mull	%edx
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	$_Player, %eax
	andw	$-129, 12(%esi)
	cmpl	%eax, %edi
	jne	L1272
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	xorl	%ecx, %ecx
	movw	%cx, 24114(%edi)
	jmp	L1272
	.p2align 4,,10
	.p2align 3
L1392:
	testb	$1, 5(%ebx)
	je	L1293
	jmp	L1294
	.p2align 4,,10
	.p2align 3
L1393:
	movl	%eax, 8(%edi)
	movl	%eax, %edx
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1391:
	andl	$524288, %edx
	cmpl	$1, %edx
	sbbl	%eax, %eax
	andl	$600, %eax
	addl	$1100, %eax
	jmp	L1285
	.p2align 4,,10
	.p2align 3
L1394:
	cmpw	$0, 118(%edi)
	jne	L1314
L1316:
	movl	$6656, %edx
	movl	%edi, %eax
	movl	$2048, %ecx
	call	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	movl	136(%edi), %eax
	movswl	380(%edi), %edx
	addl	8(%edi), %edx
	subl	$6656, %eax
	cmpl	%eax, %edx
	jl	L1317
L1395:
	movzwl	382(%edi), %edx
	movl	$1536, %eax
	movl	$2048, %ecx
	subl	%edx, %eax
	leal	(%edx,%eax,2), %eax
	movl	$6656, %edx
	andw	$2047, %ax
	movw	%ax, 382(%edi)
	movl	%edi, %eax
	call	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	movswl	380(%edi), %edx
	addl	8(%edi), %edx
	movl	140(%edi), %eax
	addl	132(%edi), %eax
	cmpl	%edx, %eax
	jle	L1318
L1396:
	movzwl	382(%edi), %edx
	movl	$512, %eax
	movl	$2048, %ecx
	subl	%edx, %eax
	leal	(%edx,%eax,2), %eax
	movl	$6656, %edx
	andw	$2047, %ax
	movw	%ax, 382(%edi)
	movl	%edi, %eax
	call	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	jmp	L1318
	.p2align 4,,10
	.p2align 3
L1397:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$120, %ah
	jne	L1319
L1320:
	leal	8(%edi), %eax
	movl	$0, 4(%esp)
	leal	4(%edi), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$158, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	352(%edi), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	testl	%eax, %eax
	js	L1272
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	cwtl
	movswl	28(%edx), %edx
	leal	1024(%edx), %ecx
	addl	$1536, %edx
	andl	$2047, %ecx
	andl	$2047, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%edx,%edx), %edx
	movl	$3, 16(%esp)
	movl	$0, 12(%esp)
	movswl	98(%esi), %ebx
	leal	(%ecx,%ecx,2), %ecx
	leal	(%edx,%edx,2), %edx
	movl	%ebx, 8(%esp)
	movswl	96(%esi), %ebx
	sarl	$8, %ecx
	sarl	$8, %edx
	movl	$0, (%esp)
	movl	%ebx, 4(%esp)
	call	__Z11move_spritesiiiiiji
	jmp	L1272
	.p2align 4,,10
	.p2align 3
L1283:
	movl	$30, %eax
	movl	$-40, %edx
	movw	%ax, 182(%esi)
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	jmp	L1282
	.p2align 4,,10
	.p2align 3
L1288:
	movl	4(%ecx), %ecx
	leal	2559(%ecx), %eax
	cmpl	%eax, %edx
	jg	L1291
	movzwl	44(%esp), %eax
	subl	$2048, %ecx
	movl	%ecx, 8(%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movzwl	50(%esp), %eax
	testw	%ax, %ax
	js	L1289
	movswl	%ax, %edx
	movl	_sector, %ecx
	leal	(%edx,%edx,4), %edx
	testb	$3, 39(%ecx,%edx,8)
	je	L1290
L1289:
	movl	8(%edi), %edx
	jmp	L1291
	.p2align 4,,10
	.p2align 3
L1389:
	movzwl	23232(%edi), %eax
	subw	$3, %ax
	js	L1277
	movw	%ax, 23232(%edi)
	jmp	L1275
	.p2align 4,,10
	.p2align 3
L1398:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$120, %ah
	jne	L1272
	jmp	L1320
	.p2align 4,,10
	.p2align 3
L1390:
	movl	%edi, (%esp)
	call	__Z15DoPlayerCurrentP12PLAYERstruct
	jmp	L1281
	.p2align 4,,10
	.p2align 3
L1277:
	movl	$50, %eax
	movw	%ax, 23232(%edi)
	cmpb	$0, _Prediction
	jne	L1278
	leal	8(%edi), %eax
	movl	%edi, (%esp)
	movl	$502, %ecx
	movl	$5446, %edx
	movl	%eax, 8(%esp)
	leal	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, %eax
	movl	%edi, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
L1278:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$-9, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1279
	sall	$14, %eax
	movl	$-536812671, %edx
	movl	$-3, %ecx
	mull	%edx
	shrl	$27, %edx
	subl	%edx, %ecx
L1279:
	movswl	%cx, %edx
	movl	%edi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testb	$2, 22968(%edi)
	je	L1275
	jmp	L1272
L1400:
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	24088(%edi), %eax
	testl	%eax, %eax
	jle	L1298
L1321:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %edx
	testl	%ecx, %ecx
	je	L1298
	testl	%edx, %edx
	jne	L1401
L1298:
	cmpb	$0, _Prediction
	je	L1300
	xorl	%eax, %eax
	movw	%ax, 380(%edi)
	jmp	L1301
L1385:
	movl	36(%esp), %esi
	movl	32(%esp), %edi
L1307:
	movl	$5151, %ecx
	movl	$LC33, %edx
	movl	$LC38, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1310
L1383:
	movl	36(%esp), %ebx
	movl	32(%esp), %edi
L1302:
	movl	$5134, %ecx
	movl	$LC33, %edx
	movl	$LC38, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1305
L1401:
	cmpl	$0, 112(%edx)
	jne	L1298
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1402
L1299:
	movl	$0, 24088(%edi)
	movb	$0, 24080(%edi)
	jmp	L1298
L1324:
	xorl	%esi, %esi
	jmp	L1302
L1402:
	movl	$2, _FX_ErrorCode
	jmp	L1299
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	__Z17DoPlayerBeginDiveP12PLAYERstruct
	.def	__Z17DoPlayerBeginDiveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerBeginDiveP12PLAYERstruct:
LFB111:
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L1403
	movswl	348(%ebx), %eax
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	addl	_sprite, %edx
	movl	%edx, 24(%esp)
	movl	%eax, 20(%esp)
	cmpb	$0, 24097(%ebx)
	jne	L1440
L1405:
	orl	$131072, 22968(%ebx)
	movl	%ebx, %eax
	orl	$6, 22972(%ebx)
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1441
L1406:
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z11SpawnSplashs
	cmpb	$0, _Prediction
	jne	L1408
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movswl	268(%ebx), %eax
	movl	_SectUser(,%eax,4), %eax
	movl	%eax, 28(%esp)
	movswl	_headspritestat+98, %eax
	cmpw	$-1, %ax
	je	L1421
	movl	_sector, %esi
	movl	%ebx, 16(%esp)
	movl	_sprite, %edi
	movl	%esi, %ebx
	jmp	L1410
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1411:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1436
L1410:
	imull	$44, %eax, %esi
	addl	%edi, %esi
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$-128, 38(%ebx,%ecx,8)
	je	L1411
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1411
	movl	28(%esp), %ecx
	movzwl	22(%ecx), %ecx
	cmpw	%cx, 22(%edx)
	jne	L1411
	movl	16(%esp), %ebx
L1412:
	movswl	_headspritestat+100, %eax
	cmpw	$-1, %ax
	je	L1422
	movl	_sprite, %edi
	movl	_sector, %ecx
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, %esi
	movl	%edi, %ebx
	jmp	L1415
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1416:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1438
L1415:
	imull	$44, %eax, %edi
	addl	%ebx, %edi
	movswl	24(%edi), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$1, 39(%esi,%ecx,8)
	je	L1416
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1416
	movl	28(%esp), %ecx
	movzwl	22(%ecx), %ecx
	cmpw	%cx, 22(%edx)
	jne	L1416
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
L1417:
	movl	8(%esp), %ecx
	movl	(%esi), %edx
	subl	(%ebx), %edx
	movl	%edx, 248(%ecx)
	movl	4(%esi), %eax
	subl	4(%ebx), %eax
	movl	%eax, 252(%ecx)
	movl	(%edi), %eax
	subl	%edx, %eax
	movl	%eax, (%ebx)
	movl	4(%edi), %edx
	subl	252(%ecx), %edx
	movl	%edx, 4(%ebx)
	movzwl	24(%esi), %ecx
	leal	34(%esp), %esi
	movw	%cx, 32(%esp)
	movzwl	24(%edi), %ecx
	movl	%esi, (%esp)
	movw	%cx, 34(%esp)
	leal	32(%esp), %ecx
	call	__Z16GetOverlapSectoriiPsS_
	movl	_sector, %edx
	movss	4(%ebx), %xmm1
	cmpl	$2, %eax
	movzwl	34(%esp), %eax
	cmovne	32(%esp), %ax
	movss	(%ebx), %xmm2
	movw	%ax, 268(%ebx)
	movswl	24(%edi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	4(%eax), %eax
	addl	$1536, %eax
	movl	%eax, 28(%esp)
	movss	28(%esp), %xmm0
	movl	%ebx, %eax
	unpcklps	%xmm0, %xmm1
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%ebx)
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	cmpb	$0, _Prediction
	jne	L1408
	movl	%ebx, %eax
	call	__Z18OperateTripTriggerP12PLAYERstruct.part.0
L1408:
	movl	24(%esp), %edi
	movl	$5632, %eax
	movl	$4608, %edx
	andl	$-16413, 22968(%ebx)
	movl	%eax, 140(%ebx)
	movl	$-1171354717, %eax
	movl	%edx, 144(%ebx)
	leal	12(%edi), %edx
	subl	_sprite, %edx
	movl	$49152, 208(%ebx)
	mull	%edx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%edi)
	movl	$__Z12DoPlayerDiveP12PLAYERstruct, 22964(%ebx)
	movl	$1440, 23230(%ebx)
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	20(%esp), %eax
	movl	40(%eax), %eax
	movl	128(%eax), %edx
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, 8(%ebp)
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
	jmp	__Z12DoPlayerDiveP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1440:
	.cfi_restore_state
	movb	$0, 24097(%ebx)
	jmp	L1405
	.p2align 4,,10
	.p2align 3
L1403:
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
L1438:
	.cfi_restore_state
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
L1414:
	movl	$5076, %ecx
	movl	$LC33, %edx
	movl	$LC38, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1417
	.p2align 4,,10
	.p2align 3
L1436:
	movl	16(%esp), %ebx
L1409:
	movl	$5059, %ecx
	movl	$LC33, %edx
	movl	$LC38, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1412
	.p2align 4,,10
	.p2align 3
L1441:
	movl	$140, %eax
	call	__Z15COVER_SetReverbi
	movl	$140, %ecx
	movw	%cx, 24114(%ebx)
	jmp	L1406
L1422:
	xorl	%edi, %edi
	jmp	L1414
L1421:
	xorl	%esi, %esi
	jmp	L1409
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.def	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct:
LFB114:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L1442
	movswl	268(%ebx), %eax
	testw	%ax, %ax
	js	L1442
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L1442
	movl	%esi, -4(%ebp)
	.cfi_offset 6, -12
	movswl	348(%ebx), %eax
	imull	$44, %eax, %ecx
	movl	_User(,%eax,4), %esi
	addl	_sprite, %ecx
	cmpb	$0, 24097(%ebx)
	jne	L1456
L1444:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1457
L1445:
	cmpw	$0, 24078(%ebx)
	jle	L1446
	movl	_FootMode, %edx
	testl	%edx, %edx
	jne	L1446
L1447:
	movl	152(%ebx), %eax
	movzwl	38(%eax), %eax
	andw	$3072, %ax
	cmpw	$1024, %ax
	jne	L1449
	orl	$262144, 22968(%ebx)
	xorl	%eax, %eax
	movw	%ax, 182(%esi)
L1449:
	orl	$131072, 22968(%ebx)
	movl	%ebx, %eax
	orl	$6, 22972(%ebx)
	movl	%ecx, (%esp)
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	movl	(%esp), %ecx
	movl	$5632, %eax
	movl	$4608, %edx
	movl	%eax, 140(%ebx)
	movl	$-1171354717, %eax
	movl	%edx, 144(%ebx)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	%ebx, %eax
	andl	$-13, 22968(%ebx)
	movl	$49152, 208(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	movl	$__Z12DoPlayerDiveP12PLAYERstruct, 22964(%ebx)
	movl	$0, 120(%ebx)
	movl	$1440, 23230(%ebx)
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	40(%esi), %eax
	movl	128(%eax), %edx
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, 8(%ebp)
	movl	-4(%ebp), %esi
	.cfi_restore 6
	movl	-8(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z12DoPlayerDiveP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1442:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -16
	.cfi_offset 5, -8
	movl	-8(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1446:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -16
	.cfi_offset 5, -8
	.cfi_offset 6, -12
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$12, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1448
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	addl	$3, %edx
L1448:
	movw	%dx, 24078(%ebx)
	movl	$0, _FootMode
	jmp	L1447
	.p2align 4,,10
	.p2align 3
L1456:
	movb	$0, 24097(%ebx)
	jmp	L1444
	.p2align 4,,10
	.p2align 3
L1457:
	movl	$140, %eax
	movl	%ecx, (%esp)
	call	__Z15COVER_SetReverbi
	movl	$140, %ecx
	movw	%cx, 24114(%ebx)
	movl	(%esp), %ecx
	jmp	L1445
	.cfi_endproc
LFE114:
	.p2align 4
	.globl	__Z12DoPlayerFallP12PLAYERstruct
	.def	__Z12DoPlayerFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12DoPlayerFallP12PLAYERstruct:
LFB117:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$48, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	testb	$8, 418(%ebx)
	jne	L1459
	orl	$524288, 22976(%ebx)
L1459:
	movzwl	268(%ebx), %eax
	testw	%ax, %ax
	js	L1460
	movl	_sector, %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	testb	$3, 39(%edx)
	jne	L1532
L1460:
	movl	$3, %edx
	movl	%edi, -4(%ebp)
	movl	%esi, -8(%ebp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	8(%ebx), %ecx
	movw	%dx, 24(%esp)
	movw	%ax, 28(%esp)
	movl	%ecx, %edi
L1473:
	movzbl	_PlayerGravity, %eax
	addl	112(%ebx), %eax
	movl	%eax, 112(%ebx)
	cmpl	$4100, %eax
	jle	L1533
	addl	$4100, %edi
	movl	$4100, 112(%ebx)
	movl	%edi, 8(%ebx)
L1498:
	cmpb	$0, _Prediction
	jne	L1463
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$266, %ecx
	movl	$3804, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, %eax
	movl	%ebx, 16(%esp)
	movl	$13, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movzwl	268(%ebx), %eax
	movw	%ax, 28(%esp)
L1463:
	movl	24088(%ebx), %eax
	movl	8(%ebx), %edi
	movl	%eax, __ZZ12DoPlayerFallP12PLAYERstructE6handle
L1464:
	movswl	28(%esp), %esi
	movl	$98, %edx
	movl	%esi, %eax
	call	__Z14GetZadjustmentss
	sarl	$8, %eax
	movl	%eax, %ecx
	jne	L1467
	movswl	378(%ebx), %ecx
L1467:
	xorl	%eax, %eax
	cmpl	$20, %ecx
	jg	L1468
	movl	112(%ebx), %eax
	movl	$8960, %edx
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
L1468:
	movl	140(%ebx), %edx
	addl	132(%ebx), %edx
	cmpl	%edi, %edx
	jle	L1469
	movl	%edx, 8(%ebx)
	movl	%edx, %edi
L1469:
	movl	136(%ebx), %edx
	leal	-14848(%eax,%edx), %edx
	cmpl	%edi, %edx
	jl	L1534
	subw	$1, 24(%esp)
	jne	L1473
	movl	_GodMode, %eax
	testl	%eax, %eax
	je	L1496
	cmpb	$0, _InputMode
	jne	L1496
	cmpb	$0, _keystatus+36
	je	L1496
	movl	22968(%ebx), %eax
	movl	$7168, %edx
	orl	$6, 22972(%ebx)
	movl	%edx, 144(%ebx)
	movl	$_sg_PlayerNinjaFly, %edx
	andl	$-16397, %eax
	movl	$-2560, 120(%ebx)
	orb	$8, %ah
	movl	$0, 112(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$2560, %eax
	movl	%eax, 140(%ebx)
	movswl	348(%ebx), %eax
	movl	$55808, 208(%ebx)
	movl	$__Z11DoPlayerFlyP12PLAYERstruct, 22964(%ebx)
	movl	$67108864, 380(%ebx)
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	movb	$0, _keystatus+36
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L1533:
	.cfi_restore_state
	addl	%eax, %edi
	movl	%edi, 8(%ebx)
	cmpl	$2000, %eax
	jg	L1498
	cmpl	$1300, %eax
	jle	L1464
	movl	22968(%ebx), %eax
	testb	$32, %al
	je	L1464
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 22968(%ebx)
	jmp	L1464
	.p2align 4,,10
	.p2align 3
L1496:
	cmpb	$0, _Prediction
	jne	L1497
	movl	%ebx, %eax
	call	__Z14PlayerOnLadderP12PLAYERstruct.part.0
	testb	%al, %al
	jne	L1535
L1497:
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z12DoPlayerMoveP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1534:
	.cfi_restore_state
	movl	%esi, %edi
	movl	%eax, %esi
	movl	_sector, %eax
	movl	%ecx, 28(%esp)
	movl	_SectUser(,%edi,4), %edx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	movl	%edx, 24(%esp)
	call	__Z17PlayerSectorBoundP12PLAYERstructi.constprop.0
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L1472
	leal	(%edi,%edi,4), %eax
	movl	20(%esp), %edi
	testb	$12, 39(%edi,%eax,8)
	jne	L1475
L1472:
	cmpl	$1020, 112(%ebx)
	jg	L1536
L1477:
	movl	__ZZ12DoPlayerFallP12PLAYERstructE6handle, %eax
	testl	%eax, %eax
	jg	L1537
L1478:
	movl	28(%esp), %edi
	cmpl	$1700, 112(%ebx)
	setg	%cl
	movl	136(%ebx), %eax
	testl	%edi, %edi
	sete	%dl
	andl	%edx, %ecx
	movl	%eax, %edx
	subl	132(%ebx), %edx
	addl	$17407, %edx
	cmpl	$34814, %edx
	jbe	L1480
	testb	$16, 418(%ebx)
	jne	L1481
	addl	8(%ebx), %esi
	subl	$14848, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %edx
	sarl	$2, %eax
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, 8(%ebx)
	testb	%cl, %cl
	jne	L1482
L1483:
	cmpb	$0, _Prediction
	jne	L1489
	cmpl	$1400, 112(%ebx)
	jle	L1489
	movswl	268(%ebx), %eax
	movl	%eax, %edx
	leal	(%eax,%eax,4), %ecx
	movl	_sector, %eax
	cmpw	$2356, 16(%eax,%ecx,8)
	je	L1490
	cmpw	$2356, 24(%eax,%ecx,8)
	je	L1490
L1489:
	movl	%ebx, %eax
	call	__Z18StackedWaterSplashP12PLAYERstruct
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	%ebx, 8(%ebp)
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1481:
	.cfi_restore_state
	subl	$9216, %eax
	movl	%eax, 8(%ebx)
	testb	%cl, %cl
	jne	L1482
L1499:
	movl	%ebx, %eax
	movl	$3072, %esi
	movl	$7168, %edi
	call	__Z18StackedWaterSplashP12PLAYERstruct
	movswl	348(%ebx), %ecx
	movl	22968(%ebx), %eax
	movl	_User(,%ecx,4), %edx
	andl	$-13, %eax
	orl	$6, 22972(%ebx)
	orb	$64, %ah
	movl	%esi, 140(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$45056, 208(%ebx)
	movl	%edi, 144(%ebx)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%ebx)
	movl	40(%edx), %eax
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	16(%eax), %edx
	movl	-12(%ebp), %ebx
	movl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L1532:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	%ebx, %eax
	call	__Z18StackedWaterSplashP12PLAYERstruct
	movl	%ebx, 8(%ebp)
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1490:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	352(%ebx), %eax
	movw	%dx, 34(%esp)
	movl	8(%eax), %edx
	testb	$-128, 12(%eax)
	je	L1491
	movzbl	21(%eax), %ecx
	movswl	14(%eax), %esi
	movswl	_tilesiz+2(,%esi,4), %eax
	cmpb	$64, %cl
	je	L1538
	imull	%eax, %ecx
	leal	(%ecx,%ecx), %eax
L1493:
	movsbl	_picanm+2(%esi,%esi,4), %ecx
	sall	$8, %ecx
	subl	%ecx, %eax
	addl	%eax, %edx
L1491:
	leal	34(%esp), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movzwl	34(%esp), %eax
	testw	%ax, %ax
	js	L1489
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	testb	$3, 39(%edx)
	je	L1489
	movw	%ax, 268(%ebx)
	movl	4(%edx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	$5120, 120(%ebx)
	addl	$5120, %eax
	movl	$0, 112(%ebx)
	movl	%eax, 8(%ebx)
	leal	8(%ebx), %eax
	movl	%eax, (%esp)
	movl	$196, %eax
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebx, (%esp)
	call	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	%ebx, 8(%ebp)
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1537:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %edx
	testl	%ecx, %ecx
	je	L1478
	testl	%edx, %edx
	je	L1478
	movl	112(%edx), %edx
	testl	%edx, %edx
	jne	L1478
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1539
L1479:
	movb	$0, 24080(%ebx)
	movl	$0, __ZZ12DoPlayerFallP12PLAYERstructE6handle
	jmp	L1478
	.p2align 4,,10
	.p2align 3
L1480:
	subl	$9216, %eax
	movl	%eax, 8(%ebx)
	testb	%cl, %cl
	jne	L1482
L1484:
	testb	$16, 418(%ebx)
	je	L1483
	jmp	L1499
	.p2align 4,,10
	.p2align 3
L1536:
	leal	8(%ebx), %eax
	movl	$9, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$57, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1475:
	leal	8(%ebx), %eax
	movl	$8, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$196, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1482:
	cmpb	$0, _Prediction
	jne	L1485
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$257, %ecx
	movl	$3885, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC33, %eax
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
L1485:
	movl	112(%ebx), %eax
	leal	-1701(%eax), %edx
	cmpl	$2298, %edx
	jbe	L1540
	cmpl	$3999, %eax
	jg	L1541
L1487:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testb	$2, 22968(%ebx)
	je	L1484
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1535:
	.cfi_restore_state
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	%ebx, 8(%ebp)
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z18DoPlayerBeginClimbP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1540:
	.cfi_restore_state
	leal	-1700(%eax), %ecx
	movl	$1717986919, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$4, %edx
	subl	%edx, %eax
	movswl	%ax, %edx
	movl	%ebx, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	jmp	L1487
L1541:
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %esi
	movl	%ebx, %eax
	movzwl	84(%esi), %edx
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	xorl	%edx, %edx
	movw	%dx, 84(%esi)
	jmp	L1487
L1538:
	sall	$7, %eax
	jmp	L1493
L1539:
	movl	$2, _FX_ErrorCode
	jmp	L1479
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	__Z13DoPlayerCrawlP12PLAYERstruct
	.def	__Z13DoPlayerCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13DoPlayerCrawlP12PLAYERstruct:
LFB122:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	20(%esp), %ebx
	movswl	268(%ebx), %eax
	testw	%ax, %ax
	js	L1543
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$3, 39(%eax)
	jne	L1583
L1543:
	movl	%edi, 12(%esp)
	movswl	348(%ebx), %eax
	movl	22968(%ebx), %edx
	.cfi_offset 7, -8
	movl	_User(,%eax,4), %edi
	movl	416(%ebx), %eax
	testb	$16, %dl
	je	L1584
	movl	22976(%ebx), %ecx
	testb	$64, %ah
	je	L1549
	testb	$64, %ch
	je	L1550
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movl	136(%ebx), %eax
	subl	132(%ebx), %eax
	movl	%eax, %esi
	negl	%esi
	cmovns	%esi, %eax
	cmpl	$17407, %eax
	jg	L1585
	movl	8(%esp), %esi
	.cfi_restore 6
	.p2align 4
	.p2align 3
L1551:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1552
	testb	$8, 38(%eax)
	jne	L1586
L1552:
	movl	%ebx, %eax
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	22968(%ebx), %eax
	cmpw	$30, 378(%ebx)
	jg	L1587
	testb	$-128, %al
	je	L1588
	movl	$9216, %edx
	movl	%ebx, %eax
	call	__Z14PlayerFallTestP12PLAYERstructi
	testb	%al, %al
	jne	L1589
L1555:
	movswl	268(%ebx), %eax
	testw	%ax, %ax
	js	L1556
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$64, 38(%eax)
	je	L1556
	movl	136(%ebx), %eax
	subl	$9216, %eax
	movl	%eax, 8(%ebx)
L1556:
	movl	%ebx, %eax
	call	__Z11DoPlayerBobP12PLAYERstruct
	movl	8(%ebx), %eax
	movl	%eax, %edx
	subl	136(%ebx), %edx
	addl	$9216, %edx
	movl	%edx, %ecx
	sarl	$3, %edx
	sarl	$2, %ecx
	addl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, 8(%ebx)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1584:
	.cfi_restore_state
	testl	$1048576, %eax
	jne	L1551
L1582:
	movl	136(%ebx), %eax
	subl	132(%ebx), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	$17407, %eax
	jle	L1551
	andb	$-65, %dh
	movl	%edx, 22968(%ebx)
L1580:
	movl	%ebx, 20(%esp)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1583:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	cmpw	$2356, 16(%eax)
	je	L1544
	cmpw	$2356, 24(%eax)
	je	L1544
	movl	%ebx, 20(%esp)
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1549:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	orb	$64, %ch
	movl	%ecx, 22976(%ebx)
L1550:
	testl	$524288, %eax
	je	L1551
	jmp	L1582
	.p2align 4,,10
	.p2align 3
L1544:
	.cfi_restore 7
	movl	4(%eax), %eax
	addl	$3072, %eax
	movl	%eax, 8(%ebx)
	movl	%ebx, 20(%esp)
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1588:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 7, -8
	movl	40(%edi), %eax
	movl	16(%eax), %edx
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$9216, %edx
	movl	%ebx, %eax
	call	__Z14PlayerFallTestP12PLAYERstructi
	testb	%al, %al
	je	L1555
L1589:
	andl	$-16385, 22968(%ebx)
	movl	$256, 112(%ebx)
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
	movl	%ebx, 20(%esp)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1586:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z15DoPlayerCurrentP12PLAYERstruct
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1587:
	andb	$-65, %ah
	movl	%eax, 22968(%ebx)
	jmp	L1580
	.p2align 4,,10
	.p2align 3
L1585:
	.cfi_offset 6, -12
	andb	$-65, %ch
	andb	$-65, %dh
	movl	%ecx, 22976(%ebx)
	movl	%edx, 22968(%ebx)
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	%ebx, 20(%esp)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	__Z11DoPlayerFlyP12PLAYERstruct
	.def	__Z11DoPlayerFlyP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11DoPlayerFlyP12PLAYERstruct:
LFB123:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ecx
	movswl	268(%ecx), %eax
	testw	%ax, %ax
	js	L1591
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	jne	L1608
L1591:
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	416(%ecx), %edx
	movl	120(%ecx), %eax
	testl	$1048576, %edx
	jne	L1609
L1592:
	andl	$524288, %edx
	leal	-1000(%eax), %ebx
	cmovne	%ebx, %eax
	movl	$-2560, %ebx
	cmpl	%ebx, %eax
	cmovge	%eax, %ebx
	testl	%edx, %edx
	cmovne	%ebx, %eax
L1593:
	movl	$58000, %edx
/APP
 # 4622 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	132(%ecx), %ebx
	movl	%eax, 120(%ecx)
	addl	8(%ecx), %eax
	leal	5120(%ebx), %edx
	cmpl	%edx, %eax
	jl	L1594
	movl	%eax, 8(%ecx)
L1595:
	movl	136(%ecx), %ebx
	leal	-17920(%ebx), %edx
	cmpl	%eax, %edx
	jge	L1596
	movl	%edx, 8(%ecx)
	movl	$0, 120(%ecx)
L1596:
	movl	_GodMode, %eax
	testl	%eax, %eax
	je	L1597
	cmpb	$0, _InputMode
	jne	L1597
	cmpb	$0, _keystatus+36
	je	L1597
	andl	$-2049, 22968(%ecx)
	movl	$0, 380(%ecx)
	movl	%ecx, (%esp)
	movl	%ecx, 4(%esp)
	movb	$0, _keystatus+36
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
	movl	4(%esp), %ecx
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%ecx, 16(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1597:
	.cfi_restore_state
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%ecx, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z12DoPlayerMoveP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1609:
	.cfi_restore_state
	addl	$1000, %eax
	cmpl	$2560, %eax
	jle	L1592
	andl	$524288, %edx
	cmpl	$1, %edx
	sbbl	%eax, %eax
	andl	$1000, %eax
	addl	$1560, %eax
	jmp	L1593
	.p2align 4,,10
	.p2align 3
L1594:
	movl	%edx, 8(%ecx)
	movl	%edx, %eax
	movl	$0, 120(%ecx)
	jmp	L1595
	.p2align 4,,10
	.p2align 3
L1608:
	.cfi_restore 3
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	__Z12DoPlayerJumpP12PLAYERstruct
	.def	__Z12DoPlayerJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12DoPlayerJumpP12PLAYERstruct:
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
	subl	$8, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	testb	$8, 418(%ebx)
	je	L1611
	movzwl	376(%ebx), %edx
	movl	112(%ebx), %eax
	movzbl	_PlayerGravity, %edi
	testw	%dx, %dx
	jle	L1640
	subl	$1, %edx
	movw	%dx, 376(%ebx)
	movl	$3, %edx
	movw	%dx, 6(%esp)
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1611:
	movl	112(%ebx), %eax
	movzbl	_PlayerGravity, %esi
	movl	$3, %edi
	orl	$524288, 22976(%ebx)
L1617:
	addl	%esi, %eax
	testl	%eax, %eax
	jg	L1639
	movl	8(%ebx), %ecx
	movl	132(%ebx), %edx
	addl	%eax, %ecx
	addl	$1024, %edx
	movl	%ecx, 8(%ebx)
	cmpl	%ecx, %edx
	jg	L1615
	movl	136(%ebx), %edx
	subl	144(%ebx), %edx
	cmpl	%edx, %ecx
	jg	L1616
	movl	%edi, %ecx
	subw	$1, %cx
	movl	%ecx, %edi
	jne	L1617
L1618:
	movl	%eax, 112(%ebx)
	movl	_GodMode, %eax
	testl	%eax, %eax
	je	L1624
	cmpb	$0, _InputMode
	jne	L1624
	cmpb	$0, _keystatus+36
	je	L1624
	movl	22968(%ebx), %eax
	movl	$7168, %edx
	orl	$6, 22972(%ebx)
	movl	%edx, 144(%ebx)
	movl	$_sg_PlayerNinjaFly, %edx
	andl	$-16397, %eax
	movl	$-2560, 120(%ebx)
	orb	$8, %ah
	movl	$0, 112(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$2560, %eax
	movl	%eax, 140(%ebx)
	movswl	348(%ebx), %eax
	movl	$55808, 208(%ebx)
	movl	$__Z11DoPlayerFlyP12PLAYERstruct, 22964(%ebx)
	movl	$67108864, 380(%ebx)
	movb	$0, _keystatus+36
	addl	$8, %esp
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
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L1640:
	.cfi_restore_state
	movl	$3, %ecx
	movw	%cx, 6(%esp)
L1613:
	movl	%edi, %ecx
	movzbl	%cl, %edx
	addl	%edx, %eax
L1620:
	testl	%eax, %eax
	jg	L1639
	movl	132(%ebx), %esi
	leal	1024(%esi), %ecx
L1619:
	movl	8(%ebx), %esi
	movl	%ecx, %edx
	addl	%eax, %esi
	movl	%esi, 8(%ebx)
	cmpl	%ecx, %esi
	jl	L1615
	movl	136(%ebx), %edx
	subl	144(%ebx), %edx
	cmpl	%edx, %esi
	jg	L1616
	subw	$1, 6(%esp)
	je	L1618
	movzwl	376(%ebx), %edx
	testw	%dx, %dx
	jle	L1613
	subl	$1, %edx
	movw	%dx, 376(%ebx)
	jmp	L1619
	.p2align 4,,10
	.p2align 3
L1615:
	movl	%edx, 8(%ebx)
	negl	%eax
L1639:
	movl	%eax, 112(%ebx)
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
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
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1624:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L1625
	movl	%ebx, %eax
	call	__Z14PlayerOnLadderP12PLAYERstruct.part.0
	testb	%al, %al
	jne	L1641
L1625:
	movl	%ebx, %eax
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1610
	testb	$64, 38(%eax)
	je	L1610
	movl	8(%ebx), %eax
	movl	136(%ebx), %edx
	addl	$14847, %eax
	cmpl	%edx, %eax
	jge	L1642
L1610:
	addl	$8, %esp
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
L1616:
	.cfi_restore_state
	movl	%edx, 8(%ebx)
	movl	%ebx, %eax
	movl	$0, 112(%ebx)
	call	__Z17PlayerSectorBoundP12PLAYERstructi.constprop.0
	movl	%ebx, (%esp)
	call	__Z16DoPlayerBeginRunP12PLAYERstruct
	movl	8(%ebx), %eax
	movl	%eax, %edx
	subl	136(%ebx), %edx
	addl	$14848, %edx
	movl	%edx, %ecx
	sarl	$3, %edx
	sarl	$2, %ecx
	addl	%ecx, %edx
	subl	%edx, %eax
	movl	%eax, 8(%ebx)
	addl	$8, %esp
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
L1641:
	.cfi_restore_state
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
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
	jmp	__Z18DoPlayerBeginClimbP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1642:
	.cfi_restore_state
	subl	$14848, %edx
	movl	%edx, 8(%ebx)
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.cfi_endproc
LFE124:
	.p2align 4
	.globl	__Z17DoPlayerForceJumpP12PLAYERstruct
	.def	__Z17DoPlayerForceJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerForceJumpP12PLAYERstruct:
LFB127:
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
	movl	$3, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movzbl	_PlayerGravity, %edi
	movl	28(%esp), %eax
	movl	112(%eax), %edx
	addl	%edi, %edx
L1646:
	movl	%edx, %ebp
	testl	%edx, %edx
	jg	L1651
	movl	8(%eax), %ebx
	movl	132(%eax), %ecx
	addl	%edx, %ebx
	addl	$1024, %ecx
	movl	%ebx, 8(%eax)
	cmpl	%ecx, %ebx
	jl	L1645
	addl	%edi, %edx
	subw	$1, %si
	jne	L1646
	movl	%ebp, 112(%eax)
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
	jmp	__Z12DoPlayerMoveP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1645:
	.cfi_restore_state
	movl	%ecx, 8(%eax)
	negl	%edx
L1651:
	movl	%edx, 112(%eax)
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
	movl	4(%esp), %eax
	movl	%eax, 28(%esp)
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
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.cfi_endproc
LFE127:
	.p2align 4
	.globl	__Z20DoPlayerOperateMatchP12PLAYERstructh
	.def	__Z20DoPlayerOperateMatchP12PLAYERstructh;	.scl	2;	.type	32;	.endef
__Z20DoPlayerOperateMatchP12PLAYERstructh:
LFB128:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	104(%eax), %eax
	testl	%eax, %eax
	je	L1652
	movswl	3202(%eax), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1652
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movl	_sprite, %ecx
	movl	%edx, %esi
	jmp	L1654
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1655:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1680
L1654:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$500, 26(%edx)
	jne	L1655
	cmpw	$147, 40(%edx)
	jne	L1655
	movl	%esi, %eax
	testb	%al, %al
	je	L1656
	movswl	32(%edx), %eax
	testw	%ax, %ax
	je	L1680
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	16(%esp), %esi
	.cfi_restore 6
L1652:
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1656:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	testb	$-128, 42(%edx)
	je	L1680
	movzwl	32(%edx), %eax
	testw	%ax, %ax
	jne	L1681
L1680:
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L1681:
	.cfi_restore_state
	addl	$1, %eax
	movl	$-1, 8(%esp)
	cwtl
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	16(%esp), %esi
	.cfi_restore 6
	jmp	L1652
	.cfi_endproc
LFE128:
	.section	.text.unlikely,"x"
LCOLDB40:
	.text
LHOTB40:
	.p2align 4
	.globl	__Z20DoPlayerBeginOperateP12PLAYERstruct
	.def	__Z20DoPlayerBeginOperateP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z20DoPlayerBeginOperateP12PLAYERstruct:
LFB129:
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
	xorl	%esi, %esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -20
	movl	8(%ebp), %ecx
	movl	$0, 24(%esp)
	movswl	268(%ecx), %eax
	movl	%ecx, 20(%esp)
	leal	(%eax,%eax,4), %ebx
	movl	%eax, %edx
	movl	_sector, %eax
	leal	(%eax,%ebx,8), %edi
	movl	$_SectorObject, %ebx
	jmp	L1687
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1683:
	addl	$1, %esi
	addl	$3014, 24(%esp)
	addl	$6028, %ebx
	cmpl	$20, %esi
	je	L1734
L1687:
	cmpw	$89, 3214(%ebx)
	jle	L1683
	movswl	3210(%ebx), %eax
	testw	%ax, %ax
	jle	L1683
	addl	24(%esp), %eax
	leal	_SectorObject(%eax,%eax), %ecx
	movl	%ebx, %eax
	jmp	L1686
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1684:
	addl	$2, %eax
	cmpl	%ecx, %eax
	je	L1683
L1686:
	cmpw	600(%eax), %dx
	jne	L1684
	testb	$2, 38(%edi)
	je	L1684
	imull	$6028, %esi, %esi
	movl	20(%esp), %ecx
	leal	_SectorObject(%esi), %ebx
	movl	_SectorObject+172(%esi), %esi
	testl	%esi, %esi
	je	L1735
L1682:
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
L1735:
	.cfi_restore_state
	testb	$-128, 598(%ebx)
	jne	L1682
	movzwl	3204(%ebx), %eax
	testw	%ax, %ax
	jg	L1690
	cmpw	$-9999, %ax
	je	L1690
	cmpb	$0, 23217(%ecx)
	je	L1691
	movl	%ecx, %eax
	movl	%ecx, 24(%esp)
	call	__Z21UseInventoryRepairKitP12PLAYERstruct
	movl	176(%ebx), %eax
	xorl	%edx, %edx
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movzwl	86(%eax), %eax
	movw	%ax, 3204(%ebx)
	movl	%ebx, %eax
	call	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE
	movl	24(%esp), %ecx
	andl	$-33554433, 596(%ebx)
L1690:
	movl	352(%ecx), %eax
	movl	%ebx, 104(%ecx)
	leal	268(%ecx), %esi
	movl	%ebx, 22980(%ecx)
	movl	%eax, 172(%ebx)
	movswl	3222(%ebx), %eax
	movl	%ecx, 24(%esp)
	sall	$16, %eax
	movl	%eax, 300(%ecx)
	movl	%eax, 308(%ecx)
	movl	180(%ebx), %eax
	movl	%eax, (%ecx)
	movl	184(%ebx), %edx
	movl	%edx, 4(%ecx)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_updatesector
	movl	24(%esp), %ecx
	leal	28(%esp), %eax
	movl	%eax, 16(%esp)
	leal	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ecx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	24(%esp), %ecx
	movl	28(%esp), %eax
	movl	$1, %edx
	andl	$-16413, 22968(%ecx)
	leal	-14848(%eax), %esi
	movl	%ecx, %eax
	movl	%esi, 8(%ecx)
	call	__Z20DoPlayerOperateMatchP12PLAYERstructh
	movswl	680(%ebx), %eax
	movl	24(%esp), %ecx
	cmpw	$-1, %ax
	je	L1692
	movl	_sprite, %edi
	leal	682(%ebx), %edx
	jmp	L1694
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1693:
	movswl	(%edx), %eax
	addl	$2, %edx
	cmpw	$-1, %ax
	je	L1692
L1694:
	imull	$44, %eax, %eax
	cmpw	$55, 26(%edi,%eax)
	jne	L1693
	orl	$2048, 596(%ebx)
L1692:
	andl	$-129, 22968(%ecx)
	movl	$0, 200(%ecx)
	movl	$0, 192(%ecx)
	movl	$0, 196(%ecx)
	movl	$0, 212(%ecx)
	movl	$0, 216(%ecx)
	movl	$0, 228(%ecx)
	movzwl	3214(%ebx), %eax
	cmpw	$98, %ax
	je	L1695
	jg	L1696
	subl	$96, %eax
	cmpw	$1, %ax
	ja	L1682
	movl	400(%ecx), %edx
	movl	104(%ecx), %eax
	movl	%ecx, 24(%esp)
	testl	%edx, %edx
	movswl	3202(%eax), %eax
	jne	L1736
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
L1703:
	movswl	348(%ecx), %eax
	movl	104(%ecx), %ebx
	movl	%esi, 8(%ecx)
	movl	$7168, %edi
	movl	$2560, %esi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ecx)
	movl	%edi, 144(%ecx)
	movl	$__Z21DoPlayerOperateTurretP12PLAYERstruct, 22964(%ecx)
	testb	$8, 597(%ebx)
	je	L1704
	jmp	L1733
L1695:
	movl	104(%ecx), %eax
	movzwl	396(%ecx), %edx
	movl	%ecx, 24(%esp)
	orw	398(%ecx), %dx
	movswl	3202(%eax), %eax
	jne	L1737
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
L1700:
	movswl	348(%ecx), %eax
	movl	104(%ecx), %ebx
	movl	%esi, 8(%ecx)
	movl	$7168, %edi
	movl	$2560, %esi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ecx)
	movl	%edi, 144(%ecx)
	movl	$__Z19DoPlayerOperateTankP12PLAYERstruct, 22964(%ecx)
	testb	$8, 597(%ebx)
	je	L1704
L1733:
	orl	$-2147483648, 22968(%ecx)
L1704:
	movl	40(%edx), %edx
	movl	(%edx), %edx
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
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
L1696:
	.cfi_restore_state
	cmpw	$99, %ax
	jne	L1682
	movl	104(%ecx), %eax
	movzwl	396(%ecx), %edx
	movl	%ecx, 24(%esp)
	orw	398(%ecx), %dx
	movswl	3202(%eax), %eax
	jne	L1738
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
L1706:
	movswl	348(%ecx), %eax
	movl	104(%ecx), %ebx
	movl	%esi, 8(%ecx)
	movl	$7168, %edi
	movl	$2560, %esi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ecx)
	movl	%edi, 144(%ecx)
	movl	$__Z19DoPlayerOperateBoatP12PLAYERstruct, 22964(%ecx)
	testb	$8, 597(%ebx)
	je	L1707
	orl	$-2147483648, 22968(%ecx)
L1707:
	movl	40(%edx), %edx
	movl	4(%edx), %edx
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
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
L1738:
	.cfi_restore_state
	movl	$2, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
	jmp	L1706
L1737:
	movl	$2, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
	jmp	L1700
L1736:
	movl	$2, %edx
	call	__Z11PlaySOsoundss
	movl	24(%esp), %ecx
	jmp	L1703
L1691:
	cmpb	$0, _Prediction
	jne	L1682
	leal	8(%ecx), %eax
	movl	%ecx, (%esp)
	movl	$6038, %edx
	movl	%eax, 8(%esp)
	leal	4(%ecx), %eax
	movl	%ecx, 16(%esp)
	movl	$494, %ecx
	movl	%eax, 4(%esp)
	movl	$LC33, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1682
L1734:
	jmp	L1729
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z20DoPlayerBeginOperateP12PLAYERstruct.cold;	.scl	3;	.type	32;	.endef
__Z20DoPlayerBeginOperateP12PLAYERstruct.cold:
LFSB129:
L1729:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	172, %eax
	ud2
	.cfi_endproc
LFE129:
	.text
	.section	.text.unlikely,"x"
LCOLDE40:
	.text
LHOTE40:
	.p2align 4
	.globl	__Z12DoPlayerWadeP12PLAYERstruct
	.def	__Z12DoPlayerWadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12DoPlayerWadeP12PLAYERstruct:
LFB132:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %esi
	cmpb	$0, _Prediction
	jne	L1740
	cmpw	$20, 378(%ebx)
	jg	L1792
L1740:
	cmpb	$0, _DebugOperate
	je	L1742
	movl	22976(%ebx), %eax
	testb	$4, 418(%ebx)
	je	L1743
	testl	$262144, %eax
	jne	L1793
	.p2align 4
	.p2align 3
L1742:
	movl	136(%ebx), %eax
	subl	132(%ebx), %eax
	addl	$17407, %eax
	cmpl	$34814, %eax
	jbe	L1794
	movl	416(%ebx), %edx
	testl	$1048576, %edx
	je	L1764
	cmpw	$30, 378(%ebx)
	jle	L1791
L1764:
	andl	$524288, %edx
	movl	22976(%ebx), %eax
	jne	L1795
L1750:
	orl	$524288, %eax
	movl	%eax, 22976(%ebx)
L1751:
	movl	_GodMode, %eax
	testl	%eax, %eax
	je	L1752
	cmpb	$0, _InputMode
	jne	L1752
	cmpb	$0, _keystatus+36
	jne	L1796
L1752:
	cmpb	$0, _Prediction
	jne	L1753
	movl	%ebx, %eax
	call	__Z14PlayerOnLadderP12PLAYERstruct.part.0
	testb	%al, %al
	jne	L1797
L1753:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1754
	testb	$8, 38(%eax)
	jne	L1798
L1754:
	movl	%ebx, %eax
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	20(%esi), %eax
	movl	40(%esi), %edx
	testb	$-128, 22968(%ebx)
	je	L1755
	movl	4(%edx), %edx
	cmpl	%edx, %eax
	je	L1756
L1790:
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L1756:
	movl	8(%ebx), %esi
	movl	136(%ebx), %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	cmpl	$22016, %eax
	jg	L1799
	cmpb	$0, _Prediction
	jne	L1758
	testb	$16, 418(%ebx)
	jne	L1759
	movl	112(%ebx), %eax
	testl	%eax, %eax
	jle	L1758
L1759:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	L1758
	movswl	268(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$-128, 38(%eax)
	jne	L1800
L1758:
	movl	%ebx, %eax
	movl	%ecx, 4(%esp)
	call	__Z11DoPlayerBobP12PLAYERstruct
	movl	4(%esp), %ecx
	movl	%esi, %eax
	subl	$14848, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, 8(%ebx)
	cmpw	$0, 378(%ebx)
	je	L1801
L1739:
	addl	$8, %esp
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
L1795:
	.cfi_restore_state
	testl	$524288, %eax
	je	L1751
	andl	$-524289, %eax
	movl	%eax, 22976(%ebx)
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginJumpP12PLAYERstruct
	movl	$0, 380(%ebx)
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L1792:
	movswl	196(%esi), %eax
	testw	%ax, %ax
	jns	L1802
	movl	$-2, %eax
	movw	%ax, 196(%esi)
	jmp	L1740
	.p2align 4,,10
	.p2align 3
L1743:
	orl	$262144, %eax
	movl	%eax, 22976(%ebx)
	jmp	L1742
	.p2align 4,,10
	.p2align 3
L1794:
	cmpw	$30, 378(%ebx)
	jle	L1791
	movl	416(%ebx), %edx
	movl	22976(%ebx), %eax
	andl	$524288, %edx
	je	L1750
	jmp	L1795
	.p2align 4,,10
	.p2align 3
L1755:
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jne	L1790
	jmp	L1756
	.p2align 4,,10
	.p2align 3
L1796:
	movl	22968(%ebx), %eax
	movl	$7168, %edx
	orl	$6, 22972(%ebx)
	movl	%edx, 144(%ebx)
	movl	$_sg_PlayerNinjaFly, %edx
	andl	$-16397, %eax
	movl	$-2560, 120(%ebx)
	orb	$8, %ah
	movl	$0, 112(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$2560, %eax
	movl	%eax, 140(%ebx)
	movswl	348(%ebx), %eax
	movl	$55808, 208(%ebx)
	movl	$__Z11DoPlayerFlyP12PLAYERstruct, 22964(%ebx)
	movl	$67108864, 380(%ebx)
	movb	$0, _keystatus+36
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$0, 380(%ebx)
	addl	$8, %esp
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
L1802:
	.cfi_restore_state
	movl	%eax, (%esp)
	call	__Z10SetSuicides
	movl	$-2, %eax
	movw	%ax, 196(%esi)
	jmp	L1740
	.p2align 4,,10
	.p2align 3
L1793:
	movswl	268(%ebx), %edx
	movl	_sector, %ecx
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	testb	$2, 38(%edx)
	je	L1742
	andl	$-262145, %eax
	movl	%eax, 22976(%ebx)
	movl	%ebx, (%esp)
	call	__Z20DoPlayerBeginOperateP12PLAYERstruct
	movl	$0, 380(%ebx)
	jmp	L1739
	.p2align 4,,10
	.p2align 3
L1791:
	movswl	348(%ebx), %ecx
	movl	22968(%ebx), %eax
	movlps	LC1, %xmm0
	movl	_User(,%ecx,4), %edx
	andl	$-13, %eax
	orl	$6, 22972(%ebx)
	orb	$64, %ah
	movlps	%xmm0, 140(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$45056, 208(%ebx)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%ebx)
	movl	40(%edx), %eax
	movl	16(%eax), %edx
	addl	$8, %esp
	movl	%ecx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L1799:
	.cfi_restore_state
	movl	$256, 112(%ebx)
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1798:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z15DoPlayerCurrentP12PLAYERstruct
	jmp	L1754
	.p2align 4,,10
	.p2align 3
L1797:
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z18DoPlayerBeginClimbP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1801:
	.cfi_restore_state
	movl	%ebx, 8(%ebp)
	addl	$8, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z16DoPlayerBeginRunP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1800:
	.cfi_restore_state
	cmpw	$0, 24078(%ebx)
	jle	L1760
	movl	_FootMode, %eax
	testl	%eax, %eax
	je	L1761
L1760:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$12, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1762
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	addl	$3, %edx
L1762:
	movw	%dx, 24078(%ebx)
	movl	$0, _FootMode
L1761:
	movswl	378(%ebx), %eax
	addl	$5120, %esi
	movl	$5120, 120(%ebx)
	movl	%esi, 8(%ebx)
	sall	$8, %eax
	movl	$0, 112(%ebx)
	subl	%eax, %ecx
	subl	$511, %ecx
	cmpl	%ecx, %esi
	jge	L1803
L1763:
	movl	$0, 380(%ebx)
	addl	$8, %esp
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
L1803:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginDiveP12PLAYERstruct
	jmp	L1763
	.cfi_endproc
LFE132:
	.p2align 4
	.globl	__Z19DoPlayerStopOperateP12PLAYERstruct
	.def	__Z19DoPlayerStopOperateP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19DoPlayerStopOperateP12PLAYERstruct:
LFB136:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$4, %esp
	movl	$0, 200(%eax)
	andl	$2147483519, 22968(%eax)
	movl	$0, 192(%eax)
	movl	$0, 196(%eax)
	movl	$0, 212(%eax)
	movl	$0, 216(%eax)
	movl	$0, 228(%eax)
	cmpb	$0, _Prediction
	jne	L1805
	call	__Z12DoTankTreadsP12PLAYERstruct.part.0
L1805:
	movl	%ebx, %eax
	xorl	%edx, %edx
	call	__Z20DoPlayerOperateMatchP12PLAYERstructh
	movl	104(%ebx), %eax
	movswl	3202(%eax), %eax
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	jne	L1806
	jmp	L1807
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1809:
	cmpw	$-1, %si
	je	L1807
L1806:
	movswl	%si, %eax
	movzwl	_nextspritesect(%eax,%eax), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$65, 26(%eax)
	jne	L1809
	movswl	38(%eax), %eax
	movl	%eax, (%esp)
	call	__Z20DoSoundSpotStopSounds
	cmpw	$-1, %si
	jne	L1806
	.p2align 4
	.p2align 3
L1807:
	movl	100(%ebx), %eax
	testl	%eax, %eax
	je	L1810
	movl	48(%ebx), %edx
	testb	$64, 42(%edx)
	je	L1811
	movswl	28(%edx), %eax
	sall	$16, %eax
	movl	%eax, 28(%ebx)
	movl	%eax, 300(%ebx)
	movl	%eax, 308(%ebx)
L1810:
	movl	22980(%ebx), %eax
	testl	%eax, %eax
	je	L1812
	movl	$0, 172(%eax)
L1812:
	movl	$0, 22980(%ebx)
	movl	$0, 22984(%ebx)
	movl	$0, 100(%ebx)
	movl	$0, 104(%ebx)
	movl	%ebx, (%esp)
	call	__Z16DoPlayerBeginRunP12PLAYERstruct
	addl	$4, %esp
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
L1811:
	.cfi_restore_state
	movl	184(%eax), %edx
	movl	180(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	sall	$16, %eax
	movl	%eax, 28(%ebx)
	movl	%eax, 300(%ebx)
	movl	%eax, 308(%ebx)
	jmp	L1810
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	__Z19DoPlayerOperateBoatP12PLAYERstruct
	.def	__Z19DoPlayerOperateBoatP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19DoPlayerOperateBoatP12PLAYERstruct:
LFB138:
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
	subl	$112, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	416(%ebx), %eax
	movl	22976(%ebx), %edx
	testl	$262144, %eax
	je	L1825
	testl	$262144, %edx
	jne	L1879
L1826:
	movl	104(%ebx), %ecx
	movzwl	3204(%ecx), %edx
	cmpw	$-9999, %dx
	je	L1827
	testw	%dx, %dx
	jle	L1878
L1827:
	movzwl	268(%ebx), %edi
	movl	100(%ebx), %esi
	movzbl	_Prediction, %edx
	movw	%di, 54(%esp)
	testl	%esi, %esi
	je	L1828
	movl	52(%ebx), %edi
	movlps	84(%ebx), %xmm2
	movl	92(%ebx), %esi
	movups	60(%ebx), %xmm1
	movlps	76(%ebx), %xmm0
	movl	%edi, 268(%ebx)
	movl	%esi, 8(%ebx)
	movlps	%xmm2, (%ebx)
	movups	%xmm1, 192(%ebx)
	movlps	%xmm0, 212(%ebx)
	testb	%dl, %dl
	jne	L1829
L1855:
	movl	_movefifoplc, %edi
	leal	-2(%edi), %edx
	movzbl	%dl, %edx
	leal	(%edx,%edx,2), %esi
	movzwl	420(%ebx,%esi,8), %edx
	orw	422(%ebx,%esi,8), %dx
	movzwl	396(%ebx), %esi
	orw	398(%ebx), %si
	jne	L1880
	testw	%dx, %dx
	jne	L1881
L1832:
	movl	22976(%ebx), %edx
	testb	$4, %ah
	je	L1834
	testb	$4, %dh
	jne	L1882
L1835:
	movl	104(%ebx), %edi
	movl	400(%ebx), %eax
	movl	576(%edi), %edx
	testl	%edx, %edx
	je	L1837
	movl	228(%ebx), %esi
	movl	%esi, 56(%esp)
	movl	%eax, %esi
	sarl	$31, %esi
	xorw	%si, %si
	leal	32768(%esi,%eax), %esi
	testl	%esi, %esi
	leal	65535(%esi), %eax
	cmovns	%esi, %eax
	sarl	$16, %eax
/APP
 # 1685 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 228(%ebx)
	movl	580(%edi), %esi
	leal	-1(%esi), %edx
	movl	%esi, 60(%esp)
	imull	56(%esp), %edx
	addl	%edx, %eax
	cltd
	idivl	60(%esp)
	movl	%eax, 228(%ebx)
L1839:
	testl	%eax, %eax
	je	L1841
	movl	300(%ebx), %edx
	movl	_sprite, %edi
	movl	%edx, %esi
	sarl	$31, %esi
	xorw	%si, %si
	leal	32768(%esi,%edx), %edx
	testl	%edx, %edx
	leal	65535(%edx), %esi
	cmovns	%edx, %esi
	movl	$-1171354717, %edx
	sarl	$16, %esi
	addl	%eax, %esi
	movswl	348(%ebx), %eax
	andl	$2047, %esi
	imull	$44, %eax, %eax
	sall	$16, %esi
	movl	%esi, 300(%ebx)
	movl	%esi, 308(%ebx)
	shrl	$16, %esi
	addl	%eax, %edi
	addl	$28, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%edi)
	movl	104(%ebx), %edi
L1841:
	movlps	192(%ebx), %xmm3
	movlps	%xmm3, 88(%esp)
	movl	92(%esp), %eax
	movlps	192(%ebx), %xmm4
	movl	192(%ebx), %esi
	movl	%eax, 60(%esp)
	movlps	%xmm4, 80(%esp)
	movl	22968(%ebx), %eax
	movlps	192(%ebx), %xmm5
	movl	%esi, 56(%esp)
	movl	192(%ebx), %esi
	movl	%eax, %edx
	orb	$-128, %al
	movlps	%xmm5, 200(%ebx)
	andb	$127, %dl
	orl	196(%ebx), %esi
	movswl	398(%ebx), %esi
	cmove	%edx, %eax
	movl	%eax, 22968(%ebx)
	movl	584(%ecx), %edx
	movswl	396(%ebx), %eax
	testl	%edx, %edx
	je	L1845
/APP
 # 2980 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 192(%ebx)
	movl	584(%ecx), %edx
	movl	%eax, 48(%esp)
	movl	%esi, %eax
/APP
 # 2981 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 196(%ebx)
	movl	588(%ecx), %esi
	movl	%eax, 44(%esp)
	leal	-1(%esi), %eax
	imull	56(%esp), %eax
	addl	48(%esp), %eax
	cltd
	idivl	%esi
	movl	%eax, 192(%ebx)
	movl	588(%ecx), %ecx
	movl	%eax, %esi
	leal	-1(%ecx), %eax
	imull	60(%esp), %eax
	addl	44(%esp), %eax
	cltd
	idivl	%ecx
L1846:
	movl	%eax, 196(%ebx)
	addl	$12799, %esi
	cmpl	$25598, %esi
	ja	L1847
	addl	$12799, %eax
	cmpl	$25598, %eax
	jbe	L1883
L1847:
	movzwl	268(%ebx), %eax
	movl	300(%ebx), %edx
	movw	%ax, 60(%esp)
	movw	%ax, 270(%ebx)
	movl	8(%ebx), %eax
	leal	2560(%eax), %esi
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	cmpb	$0, _Prediction
	jne	L1851
	cmpw	$89, 3214(%edi)
	jg	L1884
L1851:
	movzwl	3568(%edi), %eax
	movl	%esi, %edx
	movlps	(%ebx), %xmm6
	movl	%esi, 104(%esp)
	movw	%ax, 268(%ebx)
	subl	552(%edi), %edx
	movl	%edx, %eax
	movswl	3226(%edi), %ecx
	movl	192(%ebx), %edi
	movlps	%xmm6, 96(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	196(%ebx), %edx
	movl	%edi, 8(%esp)
	movl	$65537, 28(%esp)
	movl	%eax, 24(%esp)
	leal	268(%ebx), %eax
	movl	%eax, 4(%esp)
	leal	96(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$1024, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, (%esp)
	call	_clipmove
	movl	300(%ebx), %edx
	movl	96(%esp), %esi
	movl	100(%esp), %edi
	movl	%edx, %eax
	movl	%esi, (%ebx)
	sarl	$31, %eax
	movl	%edi, 4(%ebx)
	xorw	%ax, %ax
	cmpb	$0, _Prediction
	jne	L1853
	movl	104(%ebx), %ecx
	movl	%ecx, 56(%esp)
	cmpw	$89, 3214(%ecx)
	jg	L1885
L1853:
	movzwl	60(%esp), %eax
	movl	404(%ebx), %ecx
	leal	288(%ebx), %edx
	movw	%ax, 268(%ebx)
	movl	%ebx, %eax
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	movl	100(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1824
	movl	268(%ebx), %edi
	movlps	(%ebx), %xmm2
	movl	8(%ebx), %esi
	movups	192(%ebx), %xmm1
	movlps	212(%ebx), %xmm0
L1829:
	movzwl	54(%esp), %eax
	movl	%edi, 52(%ebx)
	movlps	%xmm0, 76(%ebx)
	xorps	%xmm0, %xmm0
	movl	%eax, %edx
	movl	%eax, %edi
	movl	%esi, 92(%ebx)
	sall	$16, %edx
	movlps	%xmm2, 84(%ebx)
	orl	%edx, %eax
	movups	%xmm1, 60(%ebx)
	movl	%eax, 268(%ebx)
	movl	48(%ebx), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	4(%eax), %eax
	movl	_sector, %edx
	movl	%eax, 4(%ebx)
	movswl	%di, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
	movups	%xmm0, 192(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	subl	$14848, %eax
	movl	%eax, 8(%ebx)
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
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
	jmp	__Z18UpdatePlayerSpriteP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1825:
	.cfi_restore_state
	orl	$262144, %edx
	movl	%edx, 22976(%ebx)
	jmp	L1826
	.p2align 4,,10
	.p2align 3
L1828:
	testb	%dl, %dl
	je	L1855
L1824:
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
L1837:
	.cfi_restore_state
	cltd
	xorw	%dx, %dx
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	leal	(%eax,%eax,2), %edx
	leal	0(,%edx,8), %eax
	subl	%edx, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$5, %eax
	jmp	L1839
	.p2align 4,,10
	.p2align 3
L1834:
	orb	$4, %dh
	movl	%edx, 22976(%ebx)
	jmp	L1835
	.p2align 4,,10
	.p2align 3
L1845:
	leal	(%eax,%eax,2), %eax
	movl	$51968, %edx
	sall	$7, %eax
	addl	56(%esp), %eax
/APP
 # 2992 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	leal	(%esi,%esi,2), %eax
	movl	$51968, %edx
	sall	$7, %eax
	addl	60(%esp), %eax
/APP
 # 2993 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	56(%esp), %esi
	movl	%eax, %ecx
	movl	$715827883, %eax
	leal	(%esi,%esi,4), %esi
	addl	48(%esp), %esi
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	movl	60(%esp), %edx
	subl	%eax, %esi
	leal	(%edx,%edx,4), %eax
	movl	%esi, 192(%ebx)
	addl	%eax, %ecx
	movl	$715827883, %eax
	imull	%ecx
	sarl	$31, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	jmp	L1846
	.p2align 4,,10
	.p2align 3
L1880:
	testw	%dx, %dx
	jne	L1832
	movswl	3202(%ecx), %eax
	movl	$2, %edx
	movl	%ecx, 60(%esp)
	call	__Z11PlaySOsoundss
	movl	416(%ebx), %eax
	movl	60(%esp), %ecx
	jmp	L1832
	.p2align 4,,10
	.p2align 3
L1885:
	leal	32768(%edx,%eax), %eax
	movl	%edi, 68(%esp)
	movl	%esi, %ecx
	testl	%eax, %eax
	leal	65535(%eax), %edx
	movl	%esi, 72(%esp)
	cmovns	%eax, %edx
	movl	68(%esp), %eax
	movl	%edi, 76(%esp)
	movl	$3, 4(%esp)
	movl	%eax, (%esp)
	movl	56(%esp), %eax
	sarl	$16, %edx
	movl	%esi, 64(%esp)
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
	jmp	L1853
	.p2align 4,,10
	.p2align 3
L1884:
	leal	32768(%edx,%eax), %eax
	movl	$3, 4(%esp)
	movl	$2147483647, %ecx
	testl	%eax, %eax
	leal	65535(%eax), %edx
	movl	$2147483647, (%esp)
	cmovns	%eax, %edx
	movl	%edi, %eax
	sarl	$16, %edx
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
	movl	104(%ebx), %edi
	jmp	L1851
	.p2align 4,,10
	.p2align 3
L1883:
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	jmp	L1847
	.p2align 4,,10
	.p2align 3
L1882:
	movl	22968(%ebx), %eax
	andb	$-5, %dh
	movl	%ecx, 60(%esp)
	movl	%edx, 22976(%ebx)
	xorl	$1048576, %eax
	movl	%eax, 22968(%ebx)
	andl	$1048576, %eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC31, %eax
	movb	%dl, _gs+21
	movl	$LC30, %edx
	cmovne	%edx, %eax
	movl	$LC32, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	60(%esp), %ecx
	jmp	L1835
	.p2align 4,,10
	.p2align 3
L1879:
	andl	$-262145, %edx
	movl	%edx, 22976(%ebx)
L1878:
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
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
	jmp	__Z19DoPlayerStopOperateP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1881:
	.cfi_restore_state
	movswl	3202(%ecx), %eax
	movl	$1, %edx
	movl	%ecx, 60(%esp)
	call	__Z11PlaySOsoundss
	movl	416(%ebx), %eax
	movl	60(%esp), %ecx
	jmp	L1832
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__Z21DoPlayerOperateTurretP12PLAYERstruct
	.def	__Z21DoPlayerOperateTurretP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21DoPlayerOperateTurretP12PLAYERstruct:
LFB147:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	416(%ebx), %edx
	movl	22976(%ebx), %eax
	testl	$262144, %edx
	je	L1887
	testl	$262144, %eax
	jne	L1949
	movl	104(%ebx), %ecx
	movzwl	3204(%ecx), %eax
	cmpw	$-9999, %ax
	je	L1889
L1951:
	testw	%ax, %ax
	jle	L1948
L1889:
	movzwl	268(%ebx), %eax
	movl	100(%ebx), %esi
	movw	%ax, 24(%esp)
	testl	%esi, %esi
	je	L1890
	movl	52(%ebx), %eax
	movlps	84(%ebx), %xmm1
	movups	60(%ebx), %xmm0
	movlps	76(%ebx), %xmm2
	movl	%eax, 268(%ebx)
	movl	92(%ebx), %eax
	movlps	%xmm1, (%ebx)
	movl	%eax, 8(%ebx)
	movups	%xmm0, 192(%ebx)
	movlps	%xmm2, 212(%ebx)
L1890:
	movl	22976(%ebx), %eax
	andb	$4, %dh
	je	L1891
	testb	$4, %ah
	je	L1894
	andb	$-5, %ah
	movl	%eax, 22976(%ebx)
	movl	22968(%ebx), %eax
	xorl	$1048576, %eax
	movl	%eax, 22968(%ebx)
	andl	$1048576, %eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC31, %eax
	movb	%dl, _gs+21
	movl	$LC30, %edx
	cmovne	%edx, %eax
	movl	$LC32, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	104(%ebx), %ecx
L1894:
	movzbl	_Prediction, %edx
	movl	400(%ebx), %eax
	movb	%dl, 27(%esp)
	testb	%dl, %dl
	jne	L1896
	movl	_movefifoplc, %edi
	leal	-2(%edi), %edx
	movzbl	%dl, %edx
	leal	(%edx,%edx,2), %edx
	movl	424(%ebx,%edx,8), %edx
	testl	%eax, %eax
	jne	L1950
	testl	%edx, %edx
	jne	L1899
	movl	576(%ecx), %edx
	testl	%edx, %edx
	je	L1901
	movl	228(%ebx), %edi
	movl	$32768, %esi
	jmp	L1903
	.p2align 4,,10
	.p2align 3
L1887:
	movl	104(%ebx), %ecx
	orl	$262144, %eax
	movl	%eax, 22976(%ebx)
	movzwl	3204(%ecx), %eax
	cmpw	$-9999, %ax
	jne	L1951
	jmp	L1889
	.p2align 4,,10
	.p2align 3
L1891:
	orb	$4, %ah
	movl	%eax, 22976(%ebx)
	jmp	L1894
	.p2align 4,,10
	.p2align 3
L1950:
	testl	%edx, %edx
	je	L1952
L1896:
	movl	576(%ecx), %edx
	testl	%edx, %edx
	je	L1902
	movl	%eax, %esi
	movl	228(%ebx), %edi
	sarl	$31, %esi
	xorw	%si, %si
	addl	$32768, %esi
L1903:
	addl	%esi, %eax
	leal	65535(%eax), %esi
	cmovs	%esi, %eax
	sarl	$16, %eax
/APP
 # 1799 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 228(%ebx)
	movl	580(%ecx), %edx
	leal	-1(%edx), %esi
	imull	%edi, %esi
	movl	%edx, %edi
	addl	%esi, %eax
	cltd
	idivl	%edi
	movl	%eax, 228(%ebx)
L1904:
	testl	%eax, %eax
	je	L1901
	movl	300(%ebx), %edx
	movzwl	6022(%ecx), %edi
	movl	%edx, %esi
	sarl	$31, %esi
	xorw	%si, %si
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	addl	%edx, %eax
	andl	$2047, %eax
	testw	%di, %di
	js	L1953
	movzwl	%ax, %esi
	movswl	%di, %edx
	movl	%esi, 20(%esp)
	subl	%edx, %esi
	movl	%esi, %edx
	negl	%edx
	cmovs	%esi, %edx
	cmpl	$1024, %edx
	jg	L1954
	movl	%edi, %edx
L1909:
	subl	%edx, %eax
	movswl	6024(%ecx), %ecx
	movl	%eax, %edx
	negw	%dx
	cmovs	%eax, %edx
	movzwl	%dx, %edx
	cmpl	%ecx, %edx
	jl	L1908
	movl	%edi, %edx
	subl	%ecx, %edx
	testw	%ax, %ax
	leal	(%ecx,%edi), %ecx
	cmovs	%edx, %ecx
	sall	$16, %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	xorw	%si, %si
	addl	$32768, %esi
L1912:
	movswl	348(%ebx), %eax
	movl	_sprite, %edi
	movl	%ecx, 300(%ebx)
	movl	%ecx, 308(%ebx)
	imull	$44, %eax, %eax
	addl	%eax, %edi
	leal	28(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%edi, 20(%esp)
	movl	20(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ecx, %esi
	leal	65535(%esi), %eax
	cmovns	%esi, %eax
	sarl	$16, %eax
	movw	%ax, 28(%edi)
L1901:
	movl	22968(%ebx), %eax
	movl	192(%ebx), %edx
	movl	%eax, %ecx
	orb	$-128, %al
	andb	$127, %cl
	orl	196(%ebx), %edx
	movl	300(%ebx), %edx
	cmove	%ecx, %eax
	movl	%eax, 22968(%ebx)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	cmpb	$0, 27(%esp)
	jne	L1918
	movl	104(%ebx), %esi
	cmpw	$89, 3214(%esi)
	jle	L1918
	leal	32768(%edx,%eax), %eax
	movl	180(%esi), %ecx
	movl	$3, 4(%esp)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	184(%esi), %eax
	movl	%eax, (%esp)
	sarl	$16, %edx
	movl	%esi, %eax
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
L1918:
	movl	404(%ebx), %ecx
	leal	288(%ebx), %edx
	movl	%ebx, %eax
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	movl	100(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1886
	movl	268(%ebx), %eax
	movlps	(%ebx), %xmm3
	movups	192(%ebx), %xmm0
	movlps	212(%ebx), %xmm4
	movl	%eax, 52(%ebx)
	movl	8(%ebx), %eax
	movups	%xmm0, 60(%ebx)
	xorps	%xmm0, %xmm0
	movl	%eax, 92(%ebx)
	movzwl	24(%esp), %eax
	movlps	%xmm3, 84(%ebx)
	movl	%eax, %edx
	movl	%eax, %edi
	movlps	%xmm4, 76(%ebx)
	sall	$16, %edx
	orl	%edx, %eax
	movl	%eax, 268(%ebx)
	movl	48(%ebx), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	4(%eax), %eax
	movl	_sector, %edx
	movl	%eax, 4(%ebx)
	movswl	%di, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
	movups	%xmm0, 192(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	subl	$14848, %eax
	movl	%eax, 8(%ebx)
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
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
	jmp	__Z18UpdatePlayerSpriteP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1886:
	.cfi_restore_state
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
L1902:
	.cfi_restore_state
	cltd
	xorw	%dx, %dx
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$2, %eax
	jmp	L1904
	.p2align 4,,10
	.p2align 3
L1954:
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovb	%edx, %eax
	leal	2048(%edi), %edx
	cmpw	$1025, %di
	cmovge	%edi, %edx
	jmp	L1909
	.p2align 4,,10
	.p2align 3
L1949:
	andl	$-262145, %eax
	movl	%eax, 22976(%ebx)
L1948:
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
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
	jmp	__Z19DoPlayerStopOperateP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1952:
	.cfi_restore_state
	movl	%ecx, 20(%esp)
	movswl	3202(%ecx), %eax
	movl	$2, %edx
L1947:
	call	__Z11PlaySOsoundss
	movzbl	_Prediction, %ecx
	movl	400(%ebx), %eax
	movb	%cl, 27(%esp)
	movl	20(%esp), %ecx
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1899:
	movl	%ecx, 20(%esp)
	movswl	3202(%ecx), %eax
	movl	$1, %edx
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L1953:
	movl	%eax, 20(%esp)
L1908:
	movl	20(%esp), %ecx
	movl	$32768, %esi
	sall	$16, %ecx
	jmp	L1912
	.cfi_endproc
LFE147:
	.globl	_s_PlayerNinjaFly
	.data
	.align 32
_s_PlayerNinjaFly:
	.word	1200
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFly
	.space 48
	.word	1200
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFly+64
	.space 48
	.word	1200
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFly+128
	.space 48
	.word	1200
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFly+192
	.space 48
	.word	1200
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaFly+256
	.space 48
	.globl	_s_PlayerNinjaPunch
	.align 32
_s_PlayerNinjaPunch:
	.word	1176
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+16
	.word	1177
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+32
	.word	1177
	.space 2
	.long	131087
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaPunch+32
	.space 16
	.word	1178
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+80
	.word	1179
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+96
	.word	1179
	.space 2
	.long	131087
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaPunch+96
	.space 16
	.word	1180
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+144
	.word	1181
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+160
	.word	1181
	.space 2
	.long	131087
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaPunch+160
	.space 16
	.word	1182
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+208
	.word	1183
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+224
	.word	1183
	.space 2
	.long	131087
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaPunch+224
	.space 16
	.word	1184
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+272
	.word	1185
	.space 2
	.long	15
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaPunch+288
	.word	1185
	.space 2
	.long	131087
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaPunch+288
	.space 16
	.globl	_s_PlayerNinjaSword
	.align 32
_s_PlayerNinjaSword:
	.word	1161
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+16
	.word	1162
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+32
	.word	1163
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+48
	.word	1163
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaSword
	.word	1164
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+80
	.word	1165
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+96
	.word	1166
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+112
	.word	1166
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaSword+64
	.word	1167
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+144
	.word	1168
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+160
	.word	1169
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+176
	.word	1169
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaSword+128
	.word	1170
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+208
	.word	1171
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+224
	.word	1172
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+240
	.word	1172
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaSword+192
	.word	1173
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+272
	.word	1174
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+288
	.word	1175
	.space 2
	.long	12
	.long	__Z12NullAnimators
	.long	_s_PlayerNinjaSword+304
	.word	1175
	.space 2
	.long	131084
	.long	__Z19DoPlayerSpriteResets
	.long	_s_PlayerNinjaSword+256
	.globl	_FootMode
	.bss
	.align 4
_FootMode:
	.space 4
	.section .rdata,"dr"
	.align 4
__ZZ17GetOverlapSector2iiPsS_E13UnderStatList:
	.word	50
	.word	51
.lcomm __ZZ12DoPlayerFallP12PLAYERstructE6handle,4,4
	.globl	_sg_PlayerNinjaFly
	.data
	.align 4
_sg_PlayerNinjaFly:
	.long	_s_PlayerNinjaFly
	.long	_s_PlayerNinjaFly+64
	.long	_s_PlayerNinjaFly+128
	.long	_s_PlayerNinjaFly+192
	.long	_s_PlayerNinjaFly+256
.lcomm __ZZ20PlayerCheckValidMoveP12PLAYERstructE5count,4,4
	.globl	_s_TeleportEffect
	.align 32
_s_TeleportEffect:
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
	.long	6
	.long	__Z9DoSuicides
	.space 4
	.globl	_TargetSort
	.bss
	.align 32
_TargetSort:
	.space 192
	.globl	_TargetSortCount
	.align 4
_TargetSortCount:
	.space 4
	.globl	_sg_PlayerNinjaPunch
	.data
	.align 4
_sg_PlayerNinjaPunch:
	.long	_s_PlayerNinjaPunch
	.long	_s_PlayerNinjaPunch+64
	.long	_s_PlayerNinjaPunch+128
	.long	_s_PlayerNinjaPunch+192
	.long	_s_PlayerNinjaPunch+256
	.globl	_sg_PlayerNinjaSword
	.align 4
_sg_PlayerNinjaSword:
	.long	_s_PlayerNinjaSword
	.long	_s_PlayerNinjaSword+64
	.long	_s_PlayerNinjaSword+128
	.long	_s_PlayerNinjaSword+192
	.long	_s_PlayerNinjaSword+256
	.globl	_ps_RetractMicro
	.align 4
_ps_RetractMicro:
	.word	2070
	.space 2
	.long	24
	.long	__Z13pMicroRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractMicro
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroFire
	.align 32
_ps_MicroFire:
	.word	2071
	.space 2
	.long	6
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2072
	.space 2
	.long	6
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2073
	.space 2
	.long	6
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2074
	.space 2
	.long	6
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	0
	.long	__Z10pMicroFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	120
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	3
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.long	_ps_MicroRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentMicro
	.align 4
_ps_PresentMicro:
	.word	2070
	.space 2
	.long	24
	.long	__Z13pMicroPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentMicro
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractHothead
	.align 4
_ps_RetractHothead:
	.word	2048
	.space 2
	.long	24
	.long	__Z15pHotheadRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractHothead
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentHothead
	.align 4
_ps_PresentHothead:
	.word	2048
	.space 2
	.long	24
	.long	__Z15pHotheadPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentHothead
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_FireUzi
	.align 32
_ps_FireUzi:
	.word	2004
	.space 2
	.long	3
	.long	__Z8pUziRestP18PANEL_SPRITEstruct
	.long	_ps_FireUzi
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	1
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z11pSetVisNormP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z11pSetVisNormP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	5
	.long	__Z8pUziRestP18PANEL_SPRITEstruct
	.long	_ps_FireUzi
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_StarRest
	.align 4
_ps_StarRest:
	.word	2130
	.space 2
	.long	2
	.long	__Z9pStarRestP18PANEL_SPRITEstruct
	.long	_ps_StarRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractStar
	.align 4
_ps_RetractStar:
	.word	2130
	.space 2
	.long	5
	.long	__Z12pStarRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractStar
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ThrowStar
	.align 32
_ps_ThrowStar:
	.word	2131
	.space 2
	.long	5
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2132
	.space 2
	.long	5
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2132
	.space 2
	.long	4
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	65536
	.byte	0
	.byte	0
	.space 2
	.word	2132
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2131
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2133
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2133
	.space 2
	.long	2
	.long	__Z10pStarThrowP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2133
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2134
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2135
	.space 2
	.long	4
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2136
	.space 2
	.long	4
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2137
	.space 2
	.long	4
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2132
	.space 2
	.long	5
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2131
	.space 2
	.long	5
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2130
	.space 2
	.long	5
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2131
	.space 2
	.long	3
	.long	__Z13pStarRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2137
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentStar
	.align 4
_ps_PresentStar:
	.word	2130
	.space 2
	.long	5
	.long	__Z12pStarPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentStar
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_SwordRest
	.align 4
_ps_SwordRest:
	.word	2080
	.space 2
	.long	24
	.long	__Z10pSwordRestP18PANEL_SPRITEstruct
	.long	_ps_SwordRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractSword
	.align 4
_ps_RetractSword:
	.word	2080
	.space 2
	.long	24
	.long	__Z13pSwordRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractSword
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_SwordSwing
	.align 32
_ps_SwordSwing:
	.word	2081
	.space 2
	.long	10
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2082
	.space 2
	.long	10
	.long	__Z11pSwordSlideP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2082
	.space 2
	.long	0
	.long	__Z12pSwordAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	14
	.long	__Z15pSwordSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	99
	.long	__Z15pSwordSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2082
	.space 2
	.long	10
	.long	__Z12pSwordSlideRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	0
	.long	__Z12pSwordAttackP18PANEL_SPRITEstruct
	.space 4
	.long	25165824
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	14
	.long	__Z16pSwordSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	99
	.long	__Z16pSwordSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2083
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentSword
	.align 4
_ps_PresentSword:
	.word	2080
	.space 2
	.long	24
	.long	__Z13pSwordPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentSword
	.long	0
	.byte	0
	.byte	0
	.space 2
	.section .rdata,"dr"
	.align 8
LC0:
	.long	1024
	.long	8704
	.align 8
LC1:
	.long	3072
	.long	7168
	.align 8
LC2:
	.long	2560
	.long	7168
	.align 8
LC3:
	.long	1024
	.long	2560
	.align 8
LC7:
	.long	1024
	.long	7168
	.align 4
LC9:
	.long	_ps_PresentSword
	.align 4
LC10:
	.long	_ps_PresentStar
	.align 4
LC11:
	.long	_ps_PresentUzi
	.align 4
LC15:
	.long	_ps_PresentMicro
	.align 4
LC16:
	.long	1056964608
	.align 4
LC17:
	.long	-1090519040
	.align 4
LC18:
	.long	1199570944
	.align 4
LC19:
	.long	1109393408
	.align 4
LC20:
	.long	1148846080
	.align 4
LC23:
	.long	1235222528
	.align 4
LC24:
	.long	-912269120
	.align 4
LC25:
	.long	931135488
	.align 4
LC26:
	.long	1164967936
	.align 4
LC27:
	.long	1134559232
	.align 4
LC28:
	.long	1142947840
	.align 4
LC29:
	.long	1325400064
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerOperateTankP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z22SpriteWarpToUnderwaterP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	_pushmove.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z18DisplayFragNumbersP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii;	.scl	2;	.type	32;	.endef
	.def	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateWeaponP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z13RetractCurWpnP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	_fix16_div;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12FAFgetzrangeiiisPiS_S_S_ii;	.scl	2;	.type	32;	.endef
	.def	__Z9WarpPlanePiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z20DoSoundSpotStopSounds;	.scl	2;	.type	32;	.endef
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_MV_Kill.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z18OperateTripTriggerP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14GetZadjustmentss;	.scl	2;	.type	32;	.endef
	.def	__Z14PlayerOnLadderP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z21UseInventoryRepairKitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE;	.scl	2;	.type	32;	.endef
	.def	__Z12DoTankTreadsP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z13pMicroRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pMicroActionP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10pMicroFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pMicroPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15pHotheadRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15pHotheadPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8pUziRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10pUziActionP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8pUziFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9pStarRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pStarRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pNullAnimatorP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10pStarThrowP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pStarRestTestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pStarPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10pSwordRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pSwordRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11pSwordSlideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pSwordAttackP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15pSwordSlideDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pSwordSlideRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16pSwordSlideDownRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13pSwordPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
