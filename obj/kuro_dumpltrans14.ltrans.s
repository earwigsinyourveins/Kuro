	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z13ItemSpotClearP12spritetypev7ss.constprop.0;	.scl	3;	.type	32;	.endef
__Z13ItemSpotClearP12spritetypev7ss.constprop.0:
LFB1:
	.cfi_startproc
	testb	$-128, 42(%eax)
	jne	L22
L18:
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L22:
	movswl	24(%eax), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L18
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	_sprite, %ecx
	movl	%edx, %ebx
	jmp	L3
	.p2align 5
	.p2align 4,,10
	.p2align 3
L6:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L2
L3:
	imull	$44, %eax, %edx
	cmpw	$10, 26(%ecx,%edx)
	jne	L6
	movl	_User(,%eax,4), %edx
	cmpw	%bx, 82(%edx)
	jne	L6
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z12DoActorGlobZs
	.def	__Z12DoActorGlobZs;	.scl	2;	.type	32;	.endef
__Z12DoActorGlobZs:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	__ZL9globhihit, %edx
	movss	__ZL7globhiz, %xmm0
	movss	__ZL7globloz, %xmm1
	movl	%edx, %ecx
	andl	$114688, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	unpcklps	%xmm1, %xmm0
	andl	$4095, %ecx
	movswl	8(%ebp), %eax
	movl	_User(,%eax,4), %eax
	movlps	%xmm0, 104(%eax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 116(%eax)
	cmpl	$49152, %edx
	je	L29
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,8), %edx
	movl	%edx, 116(%eax)
L25:
	movl	__ZL9globlohit, %edx
	movl	%edx, %ecx
	andl	$114688, %edx
	andl	$4095, %ecx
	cmpl	$49152, %edx
	je	L30
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,8), %edx
	movl	%edx, 120(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L29:
	.cfi_restore_state
	imull	$44, %ecx, %ecx
	addl	_sprite, %ecx
	movl	%ecx, 124(%eax)
	jmp	L25
	.p2align 4,,10
	.p2align 3
L30:
	imull	$44, %ecx, %ecx
	addl	_sprite, %ecx
	movl	%ecx, 128(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z13DoStayOnFloors
	.def	__Z13DoStayOnFloors;	.scl	2;	.type	32;	.endef
__Z13DoStayOnFloors:
LFB3:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %ecx
	movl	_sector, %edx
	imull	$44, %ecx, %ecx
	addl	%esi, %ecx
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	leal	8(%ecx), %edx
	movl	8(%eax), %ebx
	subl	%esi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, 8(%ecx)
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
	.globl	__Z12SpearOnFloors
	.def	__Z12SpearOnFloors;	.scl	2;	.type	32;	.endef
__Z12SpearOnFloors:
LFB4:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	movl	_User(,%eax,4), %ecx
	testb	$64, 69(%ecx)
	jne	L34
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	140(%ecx), %ebx
	movl	$-1171354717, %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpl	$0, 128(%ecx)
	je	L35
	movl	108(%ecx), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	(%esp), %ebx
	.cfi_restore 3
L34:
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L35:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movswl	24(%ebx), %esi
	movl	256(%ecx), %ecx
	leal	(%esi,%esi,4), %esi
	sall	$3, %esi
	addl	_sector, %esi
	addl	8(%esi), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	xorl	%eax, %eax
	movl	%ecx, 8(%ebx)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z14SpearOnCeilings
	.def	__Z14SpearOnCeilings;	.scl	2;	.type	32;	.endef
__Z14SpearOnCeilings:
LFB5:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	movl	_User(,%eax,4), %ecx
	testb	$64, 69(%ecx)
	jne	L38
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	140(%ecx), %ebx
	movl	$-1171354717, %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpl	$0, 124(%ecx)
	je	L39
	movl	104(%ecx), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	(%esp), %ebx
	.cfi_restore 3
L38:
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L39:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movswl	24(%ebx), %esi
	movl	256(%ecx), %ecx
	leal	(%esi,%esi,4), %esi
	sall	$3, %esi
	addl	_sector, %esi
	addl	4(%esi), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	xorl	%eax, %eax
	movl	%ecx, 8(%ebx)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL14MdrWeaponStaysP4USER;	.scl	3;	.type	32;	.endef
__ZL14MdrWeaponStaysP4USER:
LFB6:
	.cfi_startproc
	testb	$1, _DemoMDRFeatures
	je	L42
	cmpw	$1, _gNet+12
	jne	L42
	movzwl	82(%eax), %eax
	subw	$1794, %ax
	cmpw	$24, %ax
	ja	L42
	movl	$25305097, %edx
	btl	%eax, %edx
	setc	%al
	ret
	.p2align 4,,10
	.p2align 3
L42:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__Z12CanGetWeaponP12PLAYERstructsi;	.scl	3;	.type	32;	.endef
__Z12CanGetWeaponP12PLAYERstructsi:
LFB7:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	%dx, %edx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movzwl	_gNet+12, %eax
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	_User(,%edx,4), %ebx
	cmpw	$3, %ax
	je	L49
	cmpw	$4, %ax
	je	L50
	cmpw	$1, %ax
	je	L50
L51:
	movl	$1, %ecx
L48:
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
L50:
	.cfi_restore_state
	testb	$1, 74(%ebx)
	jne	L51
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	movl	%ecx, %edx
	movl	%ecx, %edi
	movzbl	_gNet+18, %ecx
	testb	%cl, %cl
	je	L54
	movl	23008(%esi), %eax
	xorl	%ecx, %ecx
	btl	%edx, %eax
	jc	L77
	movl	%ebx, %eax
	movl	%esi, (%esp)
	call	__ZL14MdrWeaponStaysP4USER
	testb	%al, %al
	je	L78
L56:
	cmpl	$3, %edi
	jne	L78
	movl	%esi, %eax
	movl	_totalsynctics, %ebx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	jmp	L59
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore 7
	testb	$1, 74(%ebx)
	jne	L51
	movl	23008(%esi), %eax
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	btl	%ecx, %eax
	setnc	%cl
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L54:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%ebx, %eax
	movl	%esi, (%esp)
	call	__ZL14MdrWeaponStaysP4USER
	testb	%al, %al
	je	L78
	movl	23008(%esi), %eax
	movl	%edi, %ebx
	btl	%ebx, %eax
	jnc	L56
	cmpl	$3, %edi
	jne	L77
	testb	$8, 22970(%esi)
	jne	L77
	movl	%esi, %eax
	movl	_totalsynctics, %ebx
	subl	$_Player, %eax
	sarl	$2, %eax
	movl	%ebx, %edx
	imull	$-432986257, %eax, %eax
	subl	__ZL13MdrUziGrabTic(,%eax,4), %edx
	cmpl	$179, %edx
	jle	L77
L59:
	movl	%ebx, __ZL13MdrUziGrabTic(,%eax,4)
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L51
	.p2align 4,,10
	.p2align 3
L78:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L51
	.p2align 4,,10
	.p2align 3
L77:
	.cfi_restore_state
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L48
	.cfi_endproc
LFE7:
	.p2align 4
	.def	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi;	.scl	3;	.type	32;	.endef
__ZL22HandleWeaponAutoSwitchP12PLAYERstructi:
LFB8:
	.cfi_startproc
	cmpb	$0, _gs+323
	jne	L80
	cmpb	$0, _PedanticMode
	je	L86
L82:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	sall	$5, %edx
	movl	%eax, (%esp)
	call	*_DamageData(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L80:
	cmpb	$0, _CommEnabled
	je	L82
	cmpb	$0, _PedanticMode
	jne	L82
	leal	8(,%edx,8), %edx
	orl	%edx, 22972(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L86:
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z14SetEnemyActives
	.def	__Z14SetEnemyActives;	.scl	2;	.type	32;	.endef
__Z14SetEnemyActives:
LFB10:
	.cfi_startproc
	movswl	4(%esp), %eax
	xorl	%edx, %edx
	movl	_User(,%eax,4), %eax
	orl	$8, 68(%eax)
	movw	%dx, 244(%eax)
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__Z16SetEnemyInactives
	.def	__Z16SetEnemyInactives;	.scl	2;	.type	32;	.endef
__Z16SetEnemyInactives:
LFB11:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	andl	$-9, 68(%eax)
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z17ProcessActiveVarss
	.def	__Z17ProcessActiveVarss;	.scl	2;	.type	32;	.endef
__Z17ProcessActiveVarss:
LFB12:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	testb	$8, 68(%eax)
	jne	L90
	movzwl	244(%eax), %ecx
	leal	6(%ecx), %edx
	movw	%dx, 244(%eax)
	cmpw	$480, %dx
	jle	L90
	movl	$20000, 132(%eax)
	movl	$480, %edx
	movw	%dx, 244(%eax)
L90:
	addw	$6, 242(%eax)
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.def	__Z16SetupItemForJumpP12spritetypev7s;	.scl	3;	.type	32;	.endef
__Z16SetupItemForJumpP12spritetypev7s:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	36(%esi), %ecx
	movswl	%dx, %ebx
	movl	%ecx, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %ebp
	movl	_User(,%ebx,4), %eax
	subl	%ebp, %edx
	movl	%eax, (%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, 37(%esi)
	jne	L94
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
L94:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$6, %edx
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	imull	$44, %ebx, %esi
	call	__Z18change_sprite_statss
	movl	8(%esp), %ecx
	movl	(%esp), %eax
	xorl	%edx, %edx
	movl	_sprite, %ebx
	movw	%dx, 176(%eax)
	addl	%ebp, %esi
	subl	%ebx, %ecx
	movl	$1536, 96(%eax)
	movl	%ecx, %eax
	mull	%edi
	movl	%edx, %ecx
	movl	4(%esp), %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movzbl	37(%edx), %ebp
	leal	32(%esi), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	movzbl	%al, %ebp
	sall	$2, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esp), %edx
	movw	%bp, 32(%esi)
	addl	$1, _spritechanged(,%ecx,4)
	movzbl	36(%edx), %ecx
	leal	36(%esi), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	sall	$5, %ecx
	mull	%edi
	negl	%ecx
	movl	(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%esi), %eax
	movw	%cx, 36(%esi)
	movswl	32(%esi), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%esi), %eax
	movswl	32(%esi), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movswl	36(%esi), %eax
	movl	%eax, 160(%edi)
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
LFE13:
	.p2align 4
	.globl	__Z27DoSpawnItemTeleporterEffectP12spritetypev7
	.def	__Z27DoSpawnItemTeleporterEffectP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z27DoSpawnItemTeleporterEffectP12spritetypev7:
LFB14:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_s_TeleportEffect, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %eax
	movl	$0, 20(%esp)
	movswl	28(%eax), %edx
	movl	%edx, 16(%esp)
	movl	8(%eax), %ebx
	leal	-3072(%ebx), %edx
	movl	$-1171354717, %ebx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	cwtl
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %ecx
	addl	$16, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	movb	$36, 21(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%esi, %edx
	movb	$36, 20(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	addl	$24, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z6DoCoins
	.def	__Z6DoCoins;	.scl	2;	.type	32;	.endef
__Z6DoCoins:
LFB15:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movzwl	216(%edx), %eax
	subl	$12, %eax
	movw	%ax, 216(%edx)
	testw	%ax, %ax
	jle	L122
	cmpw	$1199, %ax
	jg	L100
	movl	24(%edx), %eax
	cmpl	$_s_GreenCoin, %eax
	je	L99
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movl	16(%edx), %ebx
	movl	_User(,%ecx,4), %ecx
	subl	%eax, %ebx
	movl	%ebx, %esi
	testl	%ecx, %ecx
	je	L103
	movl	$0, 76(%ecx)
	movswl	_s_GreenCoin, %eax
	movl	$_s_GreenCoin, 24(%ecx)
	movl	$_s_GreenCoin, 16(%ecx)
L121:
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L119
	andl	$63, %eax
	movb	%al, 3(%ecx)
L119:
	movl	24(%edx), %eax
L103:
	addl	%esi, %eax
	movl	%eax, 16(%edx)
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
L99:
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L100:
	.cfi_restore_state
	cmpw	$2399, %ax
	jg	L99
	movl	24(%edx), %eax
	cmpl	$_s_YellowCoin, %eax
	je	L99
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	.cfi_offset 6, -8
	.cfi_offset 3, -12
	movl	16(%edx), %ebx
	movl	_User(,%ecx,4), %ecx
	subl	%eax, %ebx
	movl	%ebx, %esi
	testl	%ecx, %ecx
	je	L103
	movl	$0, 76(%ecx)
	movswl	_s_YellowCoin, %eax
	movl	$_s_YellowCoin, 24(%ecx)
	movl	$_s_YellowCoin, 16(%ecx)
	jmp	L121
	.p2align 4,,10
	.p2align 3
L122:
	.cfi_restore 3
	.cfi_restore 6
	movl	%ecx, %eax
	call	__Z10KillSprites
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z7KillGets
	.def	__Z7KillGets;	.scl	2;	.type	32;	.endef
__Z7KillGets:
LFB17:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movzwl	_gNet+12, %eax
	cmpw	$3, %ax
	je	L124
	jg	L125
	testw	%ax, %ax
	je	L124
	cmpw	$1, %ax
	jne	L127
L126:
	movswl	36(%esp), %eax
	movl	_User(,%eax,4), %ecx
	testb	$1, 74(%ecx)
	jne	L144
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -12
	movl	%ecx, %ebx
	movl	140(%ecx), %ecx
	movl	$3600, %eax
	movw	%ax, 216(%ebx)
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ecx)
	cmpb	$0, _gNet+16
	je	L143
	cmpw	$1003, 40(%ecx)
	je	L143
	movl	%esi, 28(%esp)
	.cfi_offset 6, -8
	movl	$2440, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	$_s_RedCoin, %ecx
	movl	%eax, (%esp)
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %ecx
	movl	$-1171354717, %eax
	addl	%edx, %esi
	addl	$16, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-20, 16(%esi)
	movzwl	216(%ebx), %eax
	subl	$12, %eax
	movw	%ax, 216(%ecx)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
L127:
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L125:
	.cfi_restore_state
	cmpw	$4, %ax
	je	L126
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L124:
	.cfi_restore_state
	movswl	36(%esp), %eax
	call	__Z10KillSprites
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L143:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -12
	movl	24(%esp), %ebx
	.cfi_restore 3
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L144:
	.cfi_def_cfa_offset 36
	call	__Z10KillSprites
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z11KillGetAmmos
	.def	__Z11KillGetAmmos;	.scl	2;	.type	32;	.endef
__Z11KillGetAmmos:
LFB18:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movzwl	_gNet+12, %eax
	cmpw	$3, %ax
	je	L146
	jg	L147
	testw	%ax, %ax
	je	L146
	cmpw	$1, %ax
	jne	L149
L148:
	movswl	36(%esp), %eax
	movl	%esi, 28(%esp)
	movl	_User(,%eax,4), %ecx
	.cfi_offset 6, -8
	movl	%ecx, %esi
	testb	$1, 74(%ecx)
	jne	L151
	cmpb	$0, _gNet+18
	jne	L151
	movl	140(%ecx), %ecx
	movl	$3600, %eax
	movw	%ax, 216(%esi)
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ecx)
	cmpb	$0, _gNet+16
	jne	L166
	movl	28(%esp), %esi
	.cfi_restore 6
L149:
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L147:
	.cfi_restore_state
	cmpw	$4, %ax
	je	L148
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L146:
	.cfi_restore_state
	movswl	36(%esp), %eax
	call	__Z10KillSprites
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L151:
	.cfi_def_cfa_offset 36
	.cfi_offset 6, -8
	call	__Z10KillSprites
	movl	28(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L166:
	.cfi_restore_state
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -12
	movl	$2440, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	$_s_RedCoin, %ecx
	movl	%eax, (%esp)
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %ecx
	movl	$-1171354717, %eax
	addl	%edx, %ebx
	addl	$16, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-20, 16(%ebx)
	movzwl	216(%esi), %eax
	subl	$12, %eax
	movw	%ax, 216(%ecx)
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	jmp	L149
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z13KillGetWeapons
	.def	__Z13KillGetWeapons;	.scl	2;	.type	32;	.endef
__Z13KillGetWeapons:
LFB19:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movzwl	_gNet+12, %eax
	movswl	36(%esp), %edx
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -12
	movl	_User(,%edx,4), %ebx
	cmpw	$3, %ax
	je	L168
	jg	L169
	testw	%ax, %ax
	je	L173
	cmpw	$1, %ax
	je	L171
L172:
	movl	24(%esp), %ebx
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L169:
	.cfi_restore_state
	cmpw	$4, %ax
	jne	L172
L171:
	testb	$1, 74(%ebx)
	jne	L173
	movl	%ebx, %eax
	call	__ZL14MdrWeaponStaysP4USER
	orb	_gNet+18, %al
	jne	L172
	movl	140(%ebx), %ecx
	movl	$3600, %eax
	movw	%ax, 216(%ebx)
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ecx)
	cmpb	$0, _gNet+16
	je	L172
	movl	%esi, 28(%esp)
	.cfi_offset 6, -8
	movl	$2440, %edx
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	$_s_RedCoin, %ecx
	movl	%eax, (%esp)
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %ecx
	movl	$-1171354717, %eax
	addl	%edx, %esi
	addl	$16, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-20, 16(%esi)
	movzwl	216(%ebx), %eax
	subl	$12, %eax
	movw	%ax, 216(%ecx)
	movl	28(%esp), %esi
	.cfi_restore 6
	jmp	L172
	.p2align 4,,10
	.p2align 3
L168:
	testb	$1, 74(%ebx)
	je	L172
L173:
	movl	%edx, %eax
	call	__Z10KillSprites
	movl	24(%esp), %ebx
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z13DoActorZranges
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
__Z13DoActorZranges:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %edx
	movl	_sprite, %eax
	imull	$44, %edx, %ebx
	movl	_User(,%edx,4), %esi
	addl	%eax, %ebx
	leal	12(%ebx), %edi
	movzwl	12(%ebx), %ecx
	movl	%edi, %edx
	movl	%edi, 32(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	andl	$1, %ecx
	mull	%edx
	movw	%cx, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	18(%ebx), %eax
	movswl	14(%ebx), %edi
	andw	$-2, 12(%ebx)
	leal	-8(,%eax,4), %edx
	leal	108(%esi), %eax
	movl	8(%ebx), %ecx
	movl	%eax, 40(%esp)
	leal	104(%esi), %eax
	movswl	_tilesiz+2(,%edi,4), %edi
	movl	%eax, 36(%esp)
	movzwl	24(%ebx), %eax
	movw	%ax, 30(%esp)
	movzbl	21(%ebx), %eax
	cmpb	$64, %al
	je	L192
	imull	%edi, %eax
	addl	%eax, %eax
L186:
	movl	4(%ebx), %edi
	subl	%eax, %ecx
	movl	(%ebx), %eax
	movl	%edx, 20(%esp)
	leal	44(%esp), %edx
	movl	$81921, 24(%esp)
	movl	%edx, 16(%esp)
	movl	40(%esp), %edx
	movl	%edx, 12(%esp)
	leal	48(%esp), %edx
	movl	%edx, 8(%esp)
	movl	36(%esp), %edx
	movl	%edx, 4(%esp)
	movswl	30(%esp), %edx
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z12FAFgetzrangeiiisPiS_S_S_ii
	movl	_sprite, %ecx
	movl	32(%esp), %edx
	xorps	%xmm0, %xmm0
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	%ax, 12(%ebx)
	movl	48(%esp), %eax
	movups	%xmm0, 116(%esi)
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$16384, %edx
	je	L187
	cmpl	$49152, %edx
	je	L193
L188:
	movl	44(%esp), %eax
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$16384, %edx
	je	L189
	cmpl	$49152, %edx
	je	L194
	addl	$52, %esp
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
L194:
	.cfi_restore_state
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	movl	%ecx, 128(%esi)
	addl	$52, %esp
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
L193:
	.cfi_restore_state
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	%ecx, %eax
	movl	%eax, 124(%esi)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L192:
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L186
	.p2align 4,,10
	.p2align 3
L189:
	andl	$4095, %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, 120(%esi)
	addl	$52, %esp
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
L187:
	.cfi_restore_state
	andl	$4095, %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, 116(%esi)
	jmp	L188
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z9DoGratings
	.def	__Z9DoGratings;	.scl	2;	.type	32;	.endef
__Z9DoGratings:
LFB21:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %ecx
	movswl	24(%esp), %esi
	movl	_User(,%esi,4), %eax
	movl	140(%eax), %ebx
	movzwl	28(%ebx), %eax
	movl	%eax, %edi
	sarw	$9, %di
	testb	$2, %ah
	jne	L196
	movl	%ebx, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testw	%di, %di
	jne	L197
	addl	$6, (%ebx)
	movl	_sprite, %ecx
	jmp	L198
	.p2align 4,,10
	.p2align 3
L196:
	leal	4(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpw	$1, %di
	je	L206
	subl	$6, 4(%ebx)
L198:
	leal	40(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	40(%ebx), %eax
	subl	$3, %eax
	movw	%ax, 40(%ebx)
	testw	%ax, %ax
	jle	L207
L201:
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_setspritez
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
	ret
	.p2align 4,,10
	.p2align 3
L197:
	.cfi_restore_state
	subl	$6, (%ebx)
	movl	_sprite, %ecx
	jmp	L198
	.p2align 4,,10
	.p2align 3
L207:
	movl	%esi, %eax
	xorl	%edx, %edx
	call	__Z18change_sprite_statss
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L201
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, _User(,%esi,4)
	jmp	L201
	.p2align 4,,10
	.p2align 3
L206:
	addl	$6, 4(%ebx)
	jmp	L198
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
LC0:
	.ascii "source/sw/src/sprite.cpp\0"
	.text
	.p2align 4
	.def	__Z20ChoosePlayerGetSoundP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z20ChoosePlayerGetSoundP12PLAYERstruct:
LFB22:
	.cfi_startproc
	movl	%eax, %ecx
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ecx
	je	L214
L211:
	ret
	.p2align 4,,10
	.p2align 3
L214:
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	cmpb	$0, _Prediction
	jne	L211
	shrl	$16, %eax
	movl	$32766, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	andl	$32767, %eax
	movl	%ecx, 16(%esp)
	cmpl	%edx, %eax
	movl	%ecx, (%esp)
	cmova	%edx, %eax
	movl	$268443649, %edx
	movl	$9, 12(%esp)
	sall	$10, %eax
	mull	%edx
	shrl	$19, %edx
	movl	_PlayerGetItemVocs(,%edx,4), %eax
	leal	8(%ecx), %edx
	movl	%edx, 8(%esp)
	leal	4(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, %ecx
	movl	$5497, %edx
	movl	$LC0, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z13SpriteControlv
	.def	__Z13SpriteControlv;	.scl	2;	.type	32;	.endef
__Z13SpriteControlv:
LFB28:
	.cfi_startproc
	jmp	__Z13SpriteControlv.part.0
	.cfi_endproc
LFE28:
	.p2align 4
	.def	__Z13ActorWarpTypeP12spritetypev7S0_.part.0;	.scl	3;	.type	32;	.endef
__Z13ActorWarpTypeP12spritetypev7S0_.part.0:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leal	8(%eax), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%esi, %edx
	movl	%eax, %ebx
	leal	4(%ebx), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %ebp
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$442, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	addl	$8, %esp
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
	jmp	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z15SpawnItemsMatchs.isra.0
	.def	__Z15SpawnItemsMatchs.isra.0;	.scl	2;	.type	32;	.endef
__Z15SpawnItemsMatchs.isra.0:
LFB31:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movzwl	_headspritestat+160, %esi
	cmpw	$-1, %si
	je	L218
	movl	%ebx, 56(%esp)
	movl	%edi, 64(%esp)
	movl	%ebp, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%eax, %ebp
	.p2align 4
	.p2align 3
L219:
	movswl	%si, %ebx
	movzwl	_nextspritestat(%ebx,%ebx), %esi
	movl	%ebx, %edi
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	cmpw	%bp, 38(%ebx)
	jne	L262
	movzbl	18(%ebx), %eax
	cmpb	$92, %al
	ja	L221
	movzbl	%al, %edx
	jmp	*L223(,%edx,4)
	.section .rdata,"dr"
	.align 4
L223:
	.long	L256
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L258
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L257
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L256
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L255
	.long	L254
	.long	L253
	.long	L252
	.long	L251
	.long	L250
	.long	L249
	.long	L248
	.long	L247
	.long	L246
	.long	L221
	.long	L245
	.long	L244
	.long	L227
	.long	L242
	.long	L226
	.long	L240
	.long	L239
	.long	L238
	.long	L237
	.long	L236
	.long	L235
	.long	L234
	.long	L233
	.long	L232
	.long	L231
	.long	L230
	.long	L229
	.long	L228
	.long	L227
	.long	L226
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L221
	.long	L225
	.long	L224
	.long	L222
	.text
L227:
	movl	$1814, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconGuardHead, %ecx
	movl	$1814, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	.p2align 4
	.p2align 3
L376:
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	_User(,%edx,4), %eax
	orl	$65536, 72(%eax)
	movl	%edx, %eax
	movl	%edx, 24(%esp)
	call	__Z11IconDefaults
	movl	24(%esp), %edx
	movl	%ebx, %eax
	call	__Z16SetupItemForJumpP12spritetypev7s
	.p2align 4
	.p2align 3
L221:
	testb	$64, 42(%ebx)
	je	L381
L262:
	cmpw	$-1, %si
	jne	L219
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
L218:
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L381:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	%di, %eax
	call	__Z10KillSprites
	jmp	L262
L226:
	movl	$1824, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconHeart, %ecx
	movl	$1824, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
	.p2align 4,,10
	.p2align 3
L258:
	movzwl	_gNet+12, %edx
	movl	$336992025, 44(%esp)
	movl	$336992025, 48(%esp)
	movl	$421007636, 52(%esp)
	cmpw	$1, %dx
	je	L221
	cmpw	$4, %dx
	je	L221
	subl	$1, %eax
	movzwl	%ax, %eax
	movl	_s_Key(,%eax,4), %ecx
	movl	%eax, 28(%esp)
	movswl	(%ecx), %eax
	movl	%ecx, 24(%esp)
	movl	%eax, 32(%esp)
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	movl	24(%esp), %ecx
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	32(%esp), %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ecx
	movl	_User(,%ecx,4), %edx
	imull	$44, %ecx, %eax
	movl	%ecx, 32(%esp)
	movl	%edx, 36(%esp)
	movl	28(%esp), %edx
	movl	_s_Key(,%edx,4), %edx
	movzwl	(%edx), %ecx
	movl	36(%esp), %edx
	movw	%cx, 42(%esp)
	movw	%cx, 82(%edx)
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$14, %eax
	movl	%ecx, 24(%esp)
	movl	$-1171354717, %ecx
	mull	%ecx
	movzwl	42(%esp), %ecx
	movl	%edx, %eax
	movl	28(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	movw	%cx, 14(%eax)
	movzbl	44(%esp,%edx), %eax
	movl	24(%esp), %ecx
	movb	%al, 42(%esp)
	leal	17(%ecx), %eax
	movl	$-1171354717, %ecx
	subl	_sprite, %eax
	mull	%ecx
	movzbl	42(%esp), %eax
	movl	%edx, %ecx
	movl	36(%esp), %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	24(%esp), %ecx
	movb	%al, 17(%ecx)
	movl	32(%esp), %ecx
	movb	%al, 262(%edx)
	movl	_User(,%ecx,4), %eax
	testl	%eax, %eax
	je	L261
	movl	28(%esp), %edx
	movl	_s_Key(,%edx,4), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L261
	andl	$63, %eax
	movb	%al, 3(%edx)
L261:
	movl	24(%esp), %ecx
	movl	32(%esp), %edx
	movswl	14(%ecx), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
	movswl	14(%ecx), %eax
	andb	$63, _picanm+8(%eax,%eax,4)
	movl	%ebx, %eax
	call	__Z16SetupItemForJumpP12spritetypev7s
	jmp	L221
L256:
	movl	$1797, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconUzi, %ecx
	movl	$1797, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L257:
	movl	$1807, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconUziFloor, %ecx
	movl	$1807, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L228:
	movl	$1799, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconLgUziAmmo, %ecx
	movl	$1799, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L231:
	movl	$1819, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconHeatCard, %ecx
	movl	$1819, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L230:
	movl	$1804, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconCloak, %ecx
	movl	$1804, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L229:
	movl	$3031, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconNightVision, %ecx
	movl	$3031, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L225:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	__Z11BunnyHatch2s
	movl	%eax, %edx
	imull	$44, %eax, %eax
	movl	_User(,%edx,4), %ecx
	movl	$-1171354717, %edx
	movl	%ecx, 24(%esp)
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$17, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$24, 17(%ecx)
	movb	$24, 262(%eax)
	movzwl	28(%ebx), %eax
	movw	%ax, 28(%ecx)
	jmp	L221
L239:
	movl	$3030, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconArmor, %ecx
	movl	$3030, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	_User(,%edx,4), %ecx
	imull	$44, %edx, %eax
	movl	%edx, 28(%esp)
	addl	_sprite, %eax
	orl	$65536, 72(%ecx)
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	movl	%ecx, 32(%esp)
	call	__Z11IconDefaults
	movl	28(%esp), %edx
	movl	%ebx, %eax
	call	__Z16SetupItemForJumpP12spritetypev7s
	movl	24(%esp), %ecx
	movl	$-1171354717, %edx
	leal	17(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	cmpb	$19, 17(%ecx)
	movl	32(%esp), %ecx
	je	L259
	movb	$17, 262(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%eax)
	jmp	L221
L238:
	movl	$1803, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconMedkit, %ecx
	movl	$1803, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L237:
	movl	$1802, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconSmMedkit, %ecx
	movl	$1802, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L236:
	movl	$1808, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconChemBomb, %ecx
	movl	$1808, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L235:
	movl	$1805, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconFlashBomb, %ecx
	movl	$1805, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L234:
	movl	$1809, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconNuke, %ecx
	movl	$1809, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L233:
	movl	$1829, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconCaltrops, %ecx
	movl	$1829, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L232:
	movl	$1810, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconBooster, %ecx
	movl	$1810, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L255:
	movl	$1813, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_RepairKit, %ecx
	movl	$1813, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L254:
	movl	$1793, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconStar, %ecx
	movl	$1793, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L253:
	movl	$1842, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconLgMine, %ecx
	movl	$1842, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L252:
	movl	$1818, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconMicroGun, %ecx
	movl	$1818, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L251:
	movl	$1800, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconMicroBattery, %ecx
	movl	$1800, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L250:
	movl	$1817, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconGrenadeLauncher, %ecx
	movl	$1817, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L249:
	movl	$1831, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconLgGrenade, %ecx
	movl	$1831, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L248:
	movl	$1811, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconRailGun, %ecx
	movl	$1811, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L247:
	movl	$1812, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconRailAmmo, %ecx
	movl	$1812, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L246:
	movl	$1843, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconRocket, %ecx
	movl	$1843, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L245:
	movl	$1794, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconShotgun, %ecx
	movl	$1794, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L244:
	movl	$1823, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconLgShotshell, %ecx
	movl	$1823, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L222:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	__Z11BunnyHatch2s
	movzwl	28(%ebx), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movw	%dx, 28(%eax)
	jmp	L221
L242:
	movl	$3035, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconFireballLgAmmo, %ecx
	movl	$3035, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L224:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	__Z11BunnyHatch2s
	movl	%eax, %edx
	imull	$44, %eax, %eax
	movl	_User(,%edx,4), %ecx
	movl	$-1171354717, %edx
	movl	%ecx, 24(%esp)
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$17, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 17(%ecx)
	movb	$16, 262(%eax)
	movzwl	28(%ebx), %eax
	movw	%ax, 28(%ecx)
	jmp	L221
L240:
	movl	$1820, %edx
	movl	%ebx, %eax
	call	__Z13ItemSpotClearP12spritetypev7ss.constprop.0
	testb	%al, %al
	je	L221
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_IconHeartLgAmmo, %ecx
	movl	$1820, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	jmp	L376
L259:
	movl	24(%esp), %eax
	movb	$19, 262(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movb	$19, 17(%eax)
	jmp	L221
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z14ActorCoughItems.isra.0
	.def	__Z14ActorCoughItems.isra.0;	.scl	2;	.type	32;	.endef
__Z14ActorCoughItems.isra.0:
LFB33:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	cwtl
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_User(,%eax,4), %esi
	movzwl	82(%esi), %eax
	cmpw	$4320, %ax
	je	L383
	jle	L481
	cmpw	$4600, %ax
	je	L388
	cmpw	$4599, %ax
	jle	L382
	cmpw	$4816, %ax
	je	L389
	jg	L390
	cmpw	$4768, %ax
	je	L389
	cmpw	$4792, %ax
	jne	L382
L389:
	movl	%edi, 20(%esp)
	movl	$80, %edx
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 24(%esp)
	movswl	24(%ebx), %eax
	.cfi_offset 5, -8
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	leal	42(%ecx), %eax
	movl	%eax, %edx
	movl	%eax, 4(%esp)
	subl	_sprite, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ecx)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movl	8(%ebx), %ebp
	movswl	_tilesiz+2(,%eax,4), %edi
	movl	%edi, (%esp)
	testb	$-128, 12(%ebx)
	je	L437
	cmpb	$64, %dl
	je	L482
	movzbl	%dl, %edi
	movl	(%esp), %edx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	movl	%edi, 8(%esp)
	imull	%edi, %edx
	sall	$8, %eax
	leal	0(%ebp,%edx,2), %edx
	subl	%eax, %edx
	movl	%edx, %ebp
L440:
	movl	8(%esp), %eax
	imull	(%esp), %eax
	movl	%eax, (%esp)
L441:
	movl	_sprite, %edi
	leal	8(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	%ebp, %eax
	subl	(%esp), %eax
	addl	$2560, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	movl	%eax, 8(%ecx)
	movzwl	28(%ebx), %eax
	subl	%edi, %edx
	movw	%ax, 28(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$10, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movb	$10, 36(%ecx)
	movzwl	82(%esi), %eax
	cmpw	$4768, %ax
	je	L483
	cmpw	$4792, %ax
	je	L484
	cmpw	$4816, %ax
	je	L485
	cmpw	$4840, %ax
	je	L486
L444:
	leal	38(%ecx), %edx
	movl	$-1171354717, %ebx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esp), %edx
	movw	%ax, 38(%ecx)
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
L479:
	andw	$-65, 42(%ecx)
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	$-1, %eax
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z15SpawnItemsMatchs.isra.0
	.p2align 4,,10
	.p2align 3
L481:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	cmpw	$1469, %ax
	je	L385
	cmpw	$4096, %ax
	jne	L382
	movl	_krandcount, %eax
	cmpl	$0, 144(%esi)
	leal	1(%eax), %edx
	movl	_randomseed, %eax
	movl	%edx, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	movl	%ecx, _randomseed
	je	L410
	andl	$1023, %eax
	cmpl	$200, %eax
	jg	L382
	movl	%edi, 20(%esp)
	movl	$80, %edx
	movl	%ebp, 24(%esp)
	movswl	24(%ebx), %eax
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z17COVERinsertspritess
	movl	_sprite, %edi
	imull	$44, %eax, %eax
	leal	(%edi,%eax), %ecx
	leal	12(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	leal	42(%ecx), %eax
	movl	%eax, %edx
	movl	%eax, (%esp)
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 42(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %edx
	movl	8(%ebx), %ebp
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %edi
	testb	$-128, 12(%ebx)
	jne	L487
	cmpb	$64, %al
	je	L488
	imull	%edi, %eax
	sall	$2, %eax
L415:
	movl	%ebp, %edi
	subl	%eax, %edi
	movl	%edi, 4(%esp)
L416:
	movl	_sprite, %ebx
	leal	8(%ecx), %edx
	movl	$-1171354717, %eax
	movl	4(%esp), %edi
	subl	%ebx, %edx
	mull	%edx
	leal	0(%ebp,%edi), %eax
	xorl	%ebp, %ebp
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	movl	%eax, 8(%ecx)
	subl	%ebx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 28(%ecx)
	movl	(%esp), %edx
	subl	%ebx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, %edi
	leal	36(%ecx), %edx
	subl	%ebx, %edx
	movw	%bp, 42(%ecx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movb	$40, 36(%ecx)
	cmpb	$12, 273(%esi)
	ja	L417
	movzbl	273(%esi), %eax
	jmp	*L419(,%eax,4)
	.section .rdata,"dr"
	.align 4
L419:
	.long	L417
	.long	L427
	.long	L426
	.long	L425
	.long	L418
	.long	L424
	.long	L423
	.long	L422
	.long	L421
	.long	L420
	.long	L417
	.long	L417
	.long	L418
	.text
	.p2align 4,,10
	.p2align 3
L390:
	.cfi_restore 5
	.cfi_restore 7
	cmpw	$4840, %ax
	je	L389
L382:
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L388:
	.cfi_restore_state
	movl	%edi, 20(%esp)
	movl	$80, %edx
	movl	$-1171354717, %esi
	movl	%ebp, 24(%esp)
	movswl	24(%ebx), %eax
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	leal	42(%ecx), %ebp
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 42(%ecx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %esi
	movl	8(%ebx), %edi
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	testb	$-128, 12(%ebx)
	je	L391
	movsbl	_picanm+2(%esi,%esi,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %al
	je	L489
	imull	%edx, %eax
	movl	%edi, %esi
	addl	%eax, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
L393:
	subl	%ebx, %eax
	addl	%eax, %edi
L396:
	movl	_sprite, %esi
	leal	8(%ecx), %edx
	movl	$-1171354717, %ebx
	addl	$1, _krandcount
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	(%esp), %eax
	addl	%edi, %eax
	xorl	%edi, %edi
	shrl	$5, %edx
	sarl	%eax
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movw	%di, 28(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, %ebp
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 42(%ecx)
	movl	%edx, %eax
	mull	%ebx
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movb	$40, 36(%ecx)
	movzwl	%ax, %edx
	movl	%eax, %edi
	movl	%edx, _randomseed
	leal	18(%ecx), %edx
	andw	$1023, %di
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, (%esp)
	movl	$91, %eax
	cmpw	$854, %di
	jg	L397
	movl	$48, %eax
	cmpw	$684, %di
	jg	L397
	movl	$58, %eax
	cmpw	$514, %di
	jg	L397
	movl	$60, %eax
	cmpw	$344, %di
	jg	L397
	cmpw	$174, %di
	movl	$62, %ebx
	movl	$68, %eax
	cmovg	%ebx, %eax
	.p2align 4
	.p2align 3
L397:
	movl	(%esp), %edi
	movl	%edi, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	movb	%al, 18(%ecx)
	subl	%esi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 38(%ecx)
	addl	$1, _spritechanged(,%ebp,4)
	jmp	L479
	.p2align 4,,10
	.p2align 3
L385:
	.cfi_restore 5
	.cfi_restore 7
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$699, %eax
	jle	L382
	movl	%edi, 20(%esp)
	movl	$80, %edx
	movl	$-1171354717, %esi
	movl	%ebp, 24(%esp)
	movswl	24(%ebx), %eax
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	leal	42(%ecx), %ebp
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 42(%ecx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %esi
	movl	8(%ebx), %edi
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	testb	$-128, 12(%ebx)
	jne	L490
	cmpb	$64, %al
	je	L491
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
L402:
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
L403:
	movl	_sprite, %esi
	leal	8(%ecx), %edx
	movl	$-1171354717, %ebx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	(%esp), %eax
	addl	%edi, %eax
	shrl	$5, %edx
	sarl	%eax
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movw	%ax, 28(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, %edi
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 42(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	$40, 36(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	movb	$69, 18(%ecx)
	subl	%esi, %edx
	jmp	L480
	.p2align 4,,10
	.p2align 3
L383:
	.cfi_restore 5
	.cfi_restore 7
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$699, %eax
	jle	L382
	movl	%edi, 20(%esp)
	movl	$80, %edx
	movl	$-1171354717, %esi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 24(%esp)
	movswl	24(%ebx), %eax
	.cfi_offset 5, -8
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	leal	42(%ecx), %ebp
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movw	%di, 42(%ecx)
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %esi
	movl	8(%ebx), %edi
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	testb	$-128, 12(%ebx)
	jne	L492
	cmpb	$64, %al
	je	L493
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
L408:
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
L409:
	movl	_sprite, %esi
	leal	8(%ecx), %edx
	movl	$-1171354717, %ebx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	(%esp), %eax
	addl	%edi, %eax
	shrl	$5, %edx
	sarl	%eax
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%esi, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movw	%ax, 28(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, %edi
	xorl	%edx, %edx
	movw	%dx, 42(%ecx)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	$40, 36(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	movb	$70, 18(%ecx)
	subl	%esi, %edx
L480:
	movl	%edx, %eax
	mull	%ebx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 38(%ecx)
	addl	$1, _spritechanged(,%edi,4)
	jmp	L479
	.p2align 4,,10
	.p2align 3
L437:
	movzbl	%dl, %eax
	movl	%eax, 8(%esp)
	cmpb	$64, %dl
	jne	L440
L439:
	movl	(%esp), %eax
	sall	$6, %eax
	movl	%eax, (%esp)
	jmp	L441
	.p2align 4,,10
	.p2align 3
L391:
	cmpb	$64, %al
	je	L494
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
L395:
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, (%esp)
	jmp	L396
	.p2align 4,,10
	.p2align 3
L492:
	movsbl	_picanm+2(%esi,%esi,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %al
	je	L495
	imull	%edx, %eax
	movl	%edi, %esi
	addl	%eax, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
L406:
	subl	%ebx, %eax
	addl	%eax, %edi
	jmp	L409
	.p2align 4,,10
	.p2align 3
L490:
	movsbl	_picanm+2(%esi,%esi,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %al
	je	L496
	imull	%edx, %eax
	movl	%edi, %esi
	addl	%eax, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
L400:
	subl	%ebx, %eax
	addl	%eax, %edi
	jmp	L403
	.p2align 4,,10
	.p2align 3
L487:
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L497
	imull	%edi, %eax
	movl	%ebp, %edi
	addl	%eax, %eax
	leal	(%eax,%edx), %ebx
	subl	%ebx, %edi
	movl	%edi, 4(%esp)
L413:
	subl	%edx, %eax
	addl	%eax, %ebp
	jmp	L416
L418:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$43, 18(%ecx)
	.p2align 4
	.p2align 3
L417:
	leal	38(%ecx), %edx
	subl	%ebx, %edx
	movl	$-1171354717, %ebx
	jmp	L480
L426:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$51, 18(%ecx)
	jmp	L417
L427:
	movl	144(%esi), %eax
	cmpw	$8, 23018(%eax)
	jle	L417
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$41, 18(%ecx)
	jmp	L417
L423:
	movl	144(%esi), %eax
	cmpw	$4, 23028(%eax)
	jle	L417
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$42, 18(%ecx)
	jmp	L417
L424:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$45, 18(%ecx)
	jmp	L417
L425:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ecx)
	jmp	L417
L420:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$55, 18(%ecx)
	jmp	L417
L421:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$53, 18(%ecx)
	jmp	L417
L422:
	leal	18(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$47, 18(%ecx)
	jmp	L417
	.p2align 4,,10
	.p2align 3
L410:
	.cfi_restore 5
	.cfi_restore 7
	testb	$2, %ah
	je	L382
	movl	%edi, 20(%esp)
	movl	$80, %edx
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	24(%ebx), %eax
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	leal	42(%ecx), %eax
	movl	%eax, %edx
	movl	%eax, (%esp)
	subl	_sprite, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 42(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movswl	14(%ebx), %edx
	movl	8(%ebx), %ebp
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %edi
	testb	$-128, 12(%ebx)
	je	L428
	movsbl	_picanm+2(%edx,%edx,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %al
	je	L498
	imull	%edi, %eax
	movl	%ebp, %edi
	addl	%eax, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %edi
	movl	%edi, 4(%esp)
L430:
	subl	%ebx, %eax
	addl	%eax, %ebp
L433:
	movl	_sprite, %ebx
	leal	8(%ecx), %edx
	movl	$-1171354717, %eax
	movl	4(%esp), %edi
	subl	%ebx, %edx
	mull	%edx
	leal	0(%ebp,%edi), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	movl	%eax, 8(%ecx)
	subl	%ebx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%esp), %edx
	movw	%ax, 28(%ecx)
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, (%esp)
	leal	36(%ecx), %edx
	movw	%ax, 42(%ecx)
	subl	%ebx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 37(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%ebx, %edx
	movb	$40, 36(%ecx)
	movzbl	262(%esi), %esi
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	movl	%edx, %ebp
	movl	%esi, %edx
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	$44, %eax
	cmpb	$24, %dl
	je	L434
	movl	$46, %eax
	cmpb	$17, %dl
	je	L434
	movl	_krandcount, %eax
	addl	$1, %eax
	movl	%eax, 8(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edi
	leal	1(%eax,%edi,4), %eax
	movzwl	%ax, %edi
	cmpb	$21, %dl
	je	L499
	movl	8(%esp), %esi
	movl	%edi, _randomseed
	movl	%esi, _krandcount
	cmpb	$19, %dl
	je	L500
	andl	$512, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-27, %eax
	addl	$68, %eax
L434:
	movl	4(%esp), %esi
	leal	38(%ecx), %edx
	subl	%ebx, %edx
	movl	%esi, _spritechanged(,%ebp,4)
	movl	$-1, %ebp
	movb	%al, 18(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 38(%ecx)
	addl	$1, _spritechanged(,%eax,4)
	jmp	L479
	.p2align 4,,10
	.p2align 3
L483:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	18(%ecx), %edx
	movzwl	%bx, %eax
	subl	%edi, %edx
	andl	$1023, %ebx
	movl	%eax, _randomseed
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$599, %ebx
	jg	L443
	movb	$64, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L482:
	movl	(%esp), %edi
	movsbl	_picanm+2(%eax,%eax,4), %edx
	sall	$7, %edi
	sall	$8, %edx
	movl	%edi, %eax
	subl	%edx, %eax
	addl	%eax, %ebp
	jmp	L439
	.p2align 4,,10
	.p2align 3
L494:
	sall	$8, %edx
	jmp	L395
	.p2align 4,,10
	.p2align 3
L489:
	movl	%edx, %eax
	movl	%edi, %esi
	sall	$7, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
	jmp	L393
	.p2align 4,,10
	.p2align 3
L484:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	18(%ecx), %edx
	movzwl	%bx, %eax
	subl	%edi, %edx
	andl	$1023, %ebx
	movl	%eax, _randomseed
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$599, %ebx
	jg	L446
	movb	$52, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L485:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	18(%ecx), %edx
	movzwl	%bx, %eax
	subl	%edi, %edx
	andl	$1023, %ebx
	movl	%eax, _randomseed
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$599, %ebx
	jg	L448
	movb	$57, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L486:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	leal	18(%ecx), %edx
	movzwl	%bx, %eax
	subl	%edi, %edx
	andl	$1023, %ebx
	movl	%eax, _randomseed
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$599, %ebx
	jg	L449
	movb	$60, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L443:
	movb	$59, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L495:
	movl	%edx, %eax
	movl	%edi, %esi
	sall	$7, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
	jmp	L406
	.p2align 4,,10
	.p2align 3
L491:
	sall	$8, %edx
	jmp	L402
	.p2align 4,,10
	.p2align 3
L496:
	movl	%edx, %eax
	movl	%edi, %esi
	sall	$7, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %esi
	movl	%esi, (%esp)
	jmp	L400
	.p2align 4,,10
	.p2align 3
L493:
	sall	$8, %edx
	jmp	L408
	.p2align 4,,10
	.p2align 3
L446:
	movb	$68, 18(%ecx)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L428:
	movl	%edi, %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L432
	imull	%edi, %eax
	leal	0(,%eax,4), %edx
L432:
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	%eax, 4(%esp)
	jmp	L433
	.p2align 4,,10
	.p2align 3
L448:
	movb	$63, 18(%ecx)
	jmp	L444
L488:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L415
L497:
	movl	%edi, %eax
	movl	%ebp, %edi
	sall	$7, %eax
	leal	(%eax,%edx), %ebx
	subl	%ebx, %edi
	movl	%edi, 4(%esp)
	jmp	L413
L449:
	movb	$61, 18(%ecx)
	jmp	L444
L498:
	movl	%edi, %eax
	movl	%ebp, %edi
	sall	$7, %eax
	leal	(%eax,%ebx), %edx
	subl	%edx, %edi
	movl	%edi, 4(%esp)
	jmp	L430
L500:
	andl	$1023, %eax
	movl	$44, %esi
	cmpl	$800, %eax
	movl	$68, %eax
	cmovge	%esi, %eax
	jmp	L434
L499:
	andl	$1023, %eax
	movl	8(%esp), %esi
	movl	%edi, _randomseed
	cmpl	$700, %eax
	setl	%al
	movl	%esi, _krandcount
	addl	$60, %eax
	jmp	L434
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
__Z13NewStateGroupsPP11STATEstruct.isra.0:
LFB36:
	.cfi_startproc
	testl	%edx, %edx
	je	L511
	cwtl
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ecx
	movl	_User(,%eax,4), %edx
	movl	16(%edx), %ebx
	testl	%ebx, %ebx
	je	L503
	cmpw	$6144, (%ebx)
	ja	L501
L503:
	movl	%ecx, 20(%edx)
	movl	(%ecx), %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$0, 76(%edx)
	movl	%ecx, 24(%edx)
	movl	%ecx, 16(%edx)
	movswl	14(%eax), %eax
	andb	$63, _picanm+3(%eax,%eax,4)
L501:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L511:
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z12StateControls
	.def	__Z12StateControls;	.scl	2;	.type	32;	.endef
__Z12StateControls:
LFB37:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movswl	28(%esp), %esi
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	je	L543
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	76(%ebx), %eax
	movzwl	26(%ebp), %edi
	leal	12(%eax), %edx
	addl	$6, %eax
	subl	$6, %edi
	cmpw	$4, %di
	cmova	%eax, %edx
	movl	%edx, 76(%ebx)
L526:
	movl	%esi, 4(%esp)
	movl	4(%ecx), %eax
	jmp	L525
	.p2align 4,,10
	.p2align 3
L522:
	movl	%esi, 4(%esp)
	cmpw	$0, (%ecx)
	je	L524
	movl	76(%ebx), %edx
L525:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L544
	testl	$262144, %eax
	je	L520
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L520:
	cwtl
	movl	4(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L521:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L522
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L522
	movl	12(%ecx), %ecx
	jmp	L521
L544:
	movl	4(%esp), %esi
	testl	$524288, %eax
	jne	L545
	leal	14(%ebp), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edi
	leal	1(%edi), %edx
	cmpw	$1, 80(%ebx)
	jle	L530
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%ebp)
L529:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L542
L546:
	cmpl	$__Z12NullAnimators, %eax
	je	L542
	movl	%esi, (%esp)
	call	*%eax
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L524:
	.cfi_restore_state
	movl	4(%esp), %esi
	movl	12(%ecx), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L526
L545:
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L546
L542:
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L530:
	.cfi_restore_state
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%ebp)
	jmp	L529
L543:
	.cfi_restore 5
	.cfi_restore 7
	movl	%esi, (%esp)
	call	*36(%ebx)
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z13SpriteOverlapss
	.def	__Z13SpriteOverlapss;	.scl	2;	.type	32;	.endef
__Z13SpriteOverlapss:
LFB38:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	cwtl
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movswl	%dx, %esi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	_User(,%eax,4), %ecx
	movl	%ebx, (%esp)
	testl	%ecx, %ecx
	je	L551
	testl	%ebx, %ebx
	je	L551
	imull	$44, %esi, %esi
	movl	_sprite, %edx
	movl	(%esp), %ebx
	movl	%edi, 20(%esp)
	imull	$44, %eax, %eax
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	addl	%edx, %eax
	addl	%esi, %edx
	movl	(%edx), %edi
	subl	(%eax), %edi
	movl	%edi, %esi
	movl	4(%edx), %ebp
	negl	%esi
	cmovs	%edi, %esi
	subl	4(%eax), %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovs	%ebp, %edi
	cmpl	%edi, %esi
	leal	(%esi,%edi), %ebp
	cmovg	%edi, %esi
	movl	%ebp, %edi
	sarl	%esi
	subl	%esi, %edi
	movl	188(%ebx), %esi
	addl	188(%ecx), %esi
	cmpl	%edi, %esi
	jb	L566
	movswl	14(%eax), %esi
	movl	8(%eax), %edi
	movzbl	21(%eax), %ebx
	movswl	_tilesiz+2(,%esi,4), %ebp
	testb	$-128, 12(%eax)
	jne	L567
	movl	%ebp, %eax
	sall	$8, %eax
	cmpb	$64, %bl
	je	L556
	movzbl	%bl, %eax
	imull	%ebp, %eax
	sall	$2, %eax
L556:
	movl	%edi, %ebx
	subl	%eax, %ebx
	movl	%ebx, 4(%esp)
L557:
	movswl	14(%edx), %ebp
	movl	8(%edx), %esi
	movswl	_tilesiz+2(,%ebp,4), %eax
	movl	%eax, %ebx
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L558
	movsbl	_picanm+2(%ebp,%ebp,4), %edx
	sall	$8, %edx
	movl	%edx, 8(%esp)
	cmpb	$64, %al
	je	L568
	imull	%ebx, %eax
	movl	8(%esp), %ebx
	movl	%esi, %edx
	addl	%eax, %eax
	leal	(%ebx,%eax), %ebp
	subl	%ebp, %edx
L560:
	subl	8(%esp), %eax
	addl	%eax, %esi
L563:
	movl	(%esp), %eax
	movl	192(%eax), %eax
	addl	192(%ecx), %eax
	movl	4(%esp), %ecx
	subl	%eax, %ecx
	cmpl	%esi, %ecx
	jg	L566
	subl	%eax, %edx
	movl	24(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	12(%esp), %ebx
	cmpl	%edi, %edx
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	.cfi_restore 7
	setle	%al
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L566:
	.cfi_restore_state
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L551:
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L567:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movsbl	_picanm+2(%esi,%esi,4), %eax
	sall	$8, %eax
	cmpb	$64, %bl
	je	L569
	movzbl	%bl, %esi
	movl	%edi, %ebx
	imull	%ebp, %esi
	addl	%esi, %esi
	leal	(%eax,%esi), %ebp
	subl	%ebp, %ebx
	movl	%ebx, 4(%esp)
L554:
	subl	%eax, %esi
	addl	%esi, %edi
	jmp	L557
	.p2align 4,,10
	.p2align 3
L558:
	cmpb	$64, %al
	je	L570
	imull	%ebx, %eax
	sall	$2, %eax
L562:
	movl	%esi, %edx
	subl	%eax, %edx
	jmp	L563
	.p2align 4,,10
	.p2align 3
L568:
	movl	%ebx, %eax
	sall	$7, %eax
	leal	(%edx,%eax), %ebp
	movl	%esi, %edx
	subl	%ebp, %edx
	jmp	L560
	.p2align 4,,10
	.p2align 3
L569:
	movl	%ebp, %esi
	movl	%edi, %ebx
	sall	$7, %esi
	leal	(%eax,%esi), %ebp
	subl	%ebp, %ebx
	movl	%ebx, 4(%esp)
	jmp	L554
	.p2align 4,,10
	.p2align 3
L570:
	movl	%ebx, %eax
	sall	$8, %eax
	jmp	L562
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC1:
	.ascii "Darts\0"
LC2:
	.ascii "Shurikens\0"
LC3:
	.ascii "Fortune Say: %s\12\0"
LC4:
	.ascii "%s\0"
	.text
	.p2align 4
	.globl	__Z5DoGets
	.def	__Z5DoGets;	.scl	2;	.type	32;	.endef
__Z5DoGets:
LFB40:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movswl	76(%esp), %eax
	movl	%ebp, 68(%esp)
	movl	%eax, 48(%esp)
	movl	_User(,%eax,4), %eax
	.cfi_offset 5, -8
	movl	140(%eax), %ebp
	movl	%eax, 40(%esp)
	cmpw	$0, 12(%ebp)
	js	L810
	movl	%ebx, 56(%esp)
	cmpw	$0, 32(%ebp)
	.cfi_offset 3, -20
	jne	L811
L574:
	movl	_connecthead, %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	je	L780
	leal	12(%ebp), %eax
	movl	%esi, 60(%esp)
	movl	%edi, 64(%esp)
	movl	%eax, 52(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L683:
	movswl	%bx, %eax
	imull	$24124, %eax, %ebx
	movl	%eax, 24(%esp)
	leal	_Player(%ebx), %esi
	movl	22968(%esi), %eax
	andl	$2, %eax
	movl	%eax, 36(%esp)
	jne	L575
	movl	_sprite, %eax
	movl	352(%esi), %edx
	movl	0(%ebp), %ecx
	subl	_Player(%ebx), %ecx
	subl	%eax, %edx
	movl	%eax, 32(%esp)
	movl	4(%ebp), %edi
	sarl	$2, %edx
	imull	$-1171354717, %edx, %eax
	movl	_User(,%eax,4), %edx
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	subl	4(%esi), %edi
	movl	%edx, 44(%esp)
	movl	%edi, %ecx
	negl	%ecx
	cmovs	%edi, %ecx
	movl	40(%esp), %edi
	movl	188(%edi), %edi
	addl	188(%edx), %edi
	cmpl	%ecx, %eax
	movl	%edi, %edx
	leal	(%eax,%ecx), %edi
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edi
	cmpl	%edi, %edx
	jb	L575
	movswl	28(%esp), %edx
	movl	48(%esp), %eax
	call	__Z13SpriteOverlapss
	testb	%al, %al
	je	L575
	movl	52(%esp), %edx
	movl	$-1171354717, %eax
	subl	32(%esp), %edx
	mull	%edx
	movzwl	12(%ebp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	0(%ebp), %eax
	orw	$257, 12(%ebp)
	movl	8(%ebp), %ecx
	movl	%eax, 28(%esp)
	movswl	268(%esi), %eax
	movl	4(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	_Player(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	movl	_sprite, %ecx
	movl	52(%esp), %edx
	movb	%al, 28(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 12(%ebp)
	cmpb	$0, 28(%esp)
	je	L575
	movl	40(%esp), %edi
	movzwl	82(%edi), %eax
	cmpw	$1842, %ax
	jg	L576
	cmpw	$1764, %ax
	jle	L577
	subw	$1765, %ax
	cmpw	$77, %ax
	ja	L577
	movzwl	%ax, %eax
	jmp	*L579(,%eax,4)
	.section .rdata,"dr"
	.align 4
L579:
	.long	L611
	.long	L610
	.long	L610
	.long	L577
	.long	L609
	.long	L608
	.long	L608
	.long	L577
	.long	L607
	.long	L606
	.long	L606
	.long	L577
	.long	L605
	.long	L604
	.long	L604
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L603
	.long	L602
	.long	L577
	.long	L577
	.long	L595
	.long	L577
	.long	L601
	.long	L600
	.long	L577
	.long	L599
	.long	L598
	.long	L597
	.long	L596
	.long	L577
	.long	L595
	.long	L594
	.long	L593
	.long	L592
	.long	L591
	.long	L590
	.long	L589
	.long	L588
	.long	L577
	.long	L577
	.long	L587
	.long	L586
	.long	L585
	.long	L584
	.long	L577
	.long	L577
	.long	L583
	.long	L582
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L581
	.long	L577
	.long	L580
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L577
	.long	L578
	.text
L607:
	movl	$6, 36(%esp)
	.p2align 4
	.p2align 3
L608:
	imull	$24124, 24(%esp), %eax
	movl	36(%esp), %ecx
	addl	$_Player, %eax
	leal	(%eax,%ecx), %edi
	cmpb	$0, 22996(%edi)
	je	L812
	.p2align 4
	.p2align 3
L575:
	movl	24(%esp), %eax
	movl	_connectpoint2(,%eax,4), %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	jne	L683
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
L573:
	movl	68(%esp), %ebp
	xorl	%eax, %eax
	addl	$72, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L811:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z9DoItemFlys
	testl	%eax, %eax
	jne	L574
	leal	32(%ebp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$10, %edx
	movw	%ax, 32(%ebp)
	movl	48(%esp), %eax
	call	__Z18change_sprite_statss
	jmp	L574
	.p2align 4,,10
	.p2align 3
L810:
	.cfi_restore 3
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movzwl	216(%eax), %eax
	movw	%ax, 24(%esp)
	subl	$12, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L813
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	68(%esp), %ebp
	xorl	%eax, %eax
	addl	$72, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L812:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_KeyMsg(,%ecx,4), %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	movb	$1, 22996(%edi)
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L814
L617:
	movl	%esi, %eax
	call	__Z16PlayerUpdateKeysP12PLAYERstruct
	cmpw	$3, _gNet+12
	je	L575
	.p2align 4
	.p2align 3
L577:
	movl	48(%esp), %eax
	call	__Z10KillSprites
	jmp	L575
	.p2align 4,,10
	.p2align 3
L813:
	.cfi_restore 3
	.cfi_restore 7
	movl	%edi, 64(%esp)
	leal	8(%ebp), %esi
	.cfi_offset 7, -12
	movl	_sprite, %edi
	leal	4(%ebp), %ecx
	movl	%esi, %edx
	movl	%ebx, 56(%esp)
	.cfi_offset 3, -20
	movl	$-1171354717, %ebx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$442, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebp, (%esp)
	call	__Z27DoSpawnItemTeleporterEffectP12spritetypev7
	leal	12(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%ebp)
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
	jmp	L573
	.p2align 4,,10
	.p2align 3
L780:
	.cfi_offset 3, -20
	movl	56(%esp), %ebx
	.cfi_restore 3
	jmp	L573
	.p2align 4,,10
	.p2align 3
L576:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$3031, %ax
	je	L612
	jg	L613
	cmpw	$2520, %ax
	je	L614
	cmpw	$3030, %ax
	jne	L577
	movswl	23258(%esi), %edx
	movl	_InventoryDecls+12, %eax
	cmpl	%eax, %edx
	jge	L575
	movl	40(%esp), %ecx
	cmpb	$19, 262(%ecx)
	je	L815
	movl	_InventoryDecls+4, %eax
	cmpl	%eax, %edx
	jge	L575
	addw	$1000, %ax
	movswl	%ax, %edx
	movl	%esi, %eax
	call	__Z17PlayerUpdateArmorP12PLAYERstructs
	movl	_InventoryDecls, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
L619:
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L816
L631:
	cmpw	$1, _gNet+12
	jne	L797
	cmpb	$0, _gNet+18
	jne	L577
	.p2align 4
	.p2align 3
L797:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z7KillGets
	jmp	L575
L613:
	cmpw	$3035, %ax
	jne	L577
	testb	$1, _SW_GameFlags
	jne	L577
	movzwl	_DamageData+268, %eax
	cmpw	%ax, 23032(%esi)
	jge	L575
	movl	_DamageData+280, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+286, %ecx
	movl	$8, %edx
L806:
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L817
L648:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z11KillGetAmmos
	jmp	L575
L604:
	movl	$3, 36(%esp)
	jmp	L608
L610:
	movl	$1, 36(%esp)
	jmp	L608
L606:
	movl	$2, 36(%esp)
	jmp	L608
L595:
	movl	48(%esp), %edx
	movl	$3, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$8, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$8, _Player+22970(%eax)
	je	L641
	movzwl	_DamageData+108, %eax
	cmpw	%ax, 23022(%edx)
	jge	L575
L641:
	imull	$24124, 24(%esp), %edi
	movl	_DamageData+116, %edx
	leal	_Player(%edi), %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+124, %ecx
	movl	$3, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L818
L642:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %ecx
	movl	_Player+22968(%edx), %eax
	testb	$8, %cl
	je	L643
	testl	$524288, %eax
	jne	L575
	orl	$532480, %eax
	movb	$0, _Player+24092(%edx)
	movl	%eax, _Player+22968(%edx)
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L819
L645:
	imull	$24124, 24(%esp), %eax
	movswl	_Player+348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$3, %al
	jle	L686
	cmpb	$13, %al
	jne	L575
L686:
	cmpb	$0, _PedanticMode
	jne	L647
	cmpb	$0, _CommEnabled
	je	L647
	cmpb	$0, _gs+323
	je	L575
	cmpb	$3, %al
	je	L575
L647:
	movl	$3, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
L602:
	movl	48(%esp), %edx
	movl	$2, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$4, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$4, _Player+23012(%eax)
	je	L662
	movzwl	_DamageData+76, %eax
	cmpw	%ax, 23020(%edx)
	jge	L575
L662:
	imull	$24124, 24(%esp), %eax
	movl	_DamageData+84, %edx
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+92, %ecx
	movl	$2, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L820
L663:
	movl	%esi, %eax
	call	__Z20ChoosePlayerGetSoundP12PLAYERstruct
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$4, %al
	jne	L575
	orl	$4, %eax
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$13, %al
	je	L690
	cmpb	$2, %al
	jg	L575
L690:
	movl	$2, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L601:
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+108, %edi
	cmpw	%di, _Player+23022(%eax)
	jge	L575
	movl	_DamageData+120, %edx
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+126, %ecx
	movl	$3, %edx
L801:
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L648
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
L796:
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %ecx
	movl	%ebp, %edx
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L648
L600:
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+140, %edi
	cmpw	%di, _Player+23024(%eax)
	jge	L575
	movl	_DamageData+152, %edx
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+158, %ecx
	movl	$4, %edx
	jmp	L801
L599:
	movl	44(%esp), %eax
	cmpw	$99, 84(%eax)
	jg	L575
	imull	$24124, 24(%esp), %eax
	movl	_InventoryDecls+16, %edx
	leal	_Player(%eax), %edi
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	_InventoryDecls+20, %eax
	cmpw	$200, 23260(%edi)
	je	L623
	movswl	%ax, %edx
	movl	%esi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
L809:
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L631
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L631
L582:
	testb	$1, _SW_GameFlags
	jne	L577
	movl	48(%esp), %edx
	movl	$9, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$512, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$2, _Player+23013(%eax)
	je	L669
	movzwl	_DamageData+300, %eax
	cmpw	%ax, 23034(%edx)
	jge	L575
L669:
	movl	_DamageData+308, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+316, %ecx
	movl	$9, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L821
L670:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$430020053, %eax
	ja	L822
L671:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$2, %ah
	jne	L575
	orb	$2, %ah
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$9, %al
	jle	L692
	cmpb	$13, %al
	jne	L575
L692:
	movl	$9, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L598:
	imull	$24124, 24(%esp), %eax
	cmpb	$0, _Player+23216(%eax)
	je	L630
	movswl	_Player+23202(%eax), %eax
	cmpl	_InventoryDecls+36, %eax
	jge	L575
L630:
	imull	$24124, 24(%esp), %eax
	movl	_InventoryDecls+32, %edx
	leal	_Player(%eax), %edi
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	_InventoryDecls+36, %eax
	xorl	%edx, %edx
	movb	$1, 23216(%edi)
	movw	%ax, 23202(%edi)
	movl	%esi, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	jmp	L809
L597:
	imull	$24124, 24(%esp), %eax
	cmpb	$0, _Player+23218(%eax)
	je	L636
	movswl	_Player+23206(%eax), %eax
	cmpl	_InventoryDecls+84, %eax
	jge	L575
L636:
	imull	$24124, 24(%esp), %eax
	movl	_InventoryDecls+80, %edx
	leal	_Player(%eax), %edi
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	_InventoryDecls+84, %eax
	movl	$2, %edx
	movb	$1, 23218(%edi)
	movw	%ax, 23206(%edi)
L791:
	movl	%esi, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L797
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L797
L596:
	imull	$24124, 24(%esp), %eax
	leal	_Player(%eax), %edi
	movsbl	_Player+23221(%eax), %eax
	cmpl	_InventoryDecls+52, %eax
	jge	L575
	movl	_InventoryDecls+48, %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	xorl	%eax, %eax
	movl	$5, %edx
	addb	$1, 23221(%edi)
	movw	%ax, 23212(%edi)
	jmp	L791
L594:
	imull	$24124, 24(%esp), %eax
	leal	_Player(%eax), %edi
	movsbl	_Player+23220(%eax), %eax
	cmpl	_InventoryDecls+44, %eax
	jge	L575
	movl	_InventoryDecls+40, %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	xorl	%eax, %eax
	movl	$4, %edx
	addb	$1, 23220(%edi)
	movw	%ax, 23210(%edi)
	jmp	L791
L593:
	imull	$24124, 24(%esp), %edi
	leal	_Player(%edi), %eax
	cmpb	$1, _Player+23114(%edi)
	je	L575
	movl	_DamageData+948, %edx
	movl	%eax, 28(%esp)
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	28(%esp), %eax
	movl	$144, %ecx
	movzwl	_DamageData+956, %edx
	movb	%dl, 23114(%eax)
	movl	%esi, %eax
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L823
L652:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$430020053, %eax
	ja	L824
L653:
	imull	$24124, 24(%esp), %eax
	movl	_Player+23048(%eax), %edx
	cmpl	_Player+23068(%eax), %edx
	jne	L648
	cmpb	$2, _Player+23112(%eax)
	je	L648
	xorl	%ecx, %ecx
	movw	%cx, 84(%edx)
	movl	_Player+23048(%eax), %eax
	movl	$_ps_MicroNukeFlash, 76(%eax)
	jmp	L648
	.p2align 4,,10
	.p2align 3
L592:
	imull	$24124, 24(%esp), %eax
	movl	44(%esp), %ecx
	movl	$200, %edx
	addl	$_Player, %eax
	movw	%dx, 23260(%eax)
	cmpw	$199, 84(%ecx)
	jg	L575
	movl	_InventoryDecls+24, %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_InventoryDecls+28, %edx
	movl	%esi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L825
L626:
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L631
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
L799:
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %ecx
	movl	%ebp, %edx
	movl	$55, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L631
	.p2align 4,,10
	.p2align 3
L591:
	testb	$1, _SW_GameFlags
	jne	L577
	movl	48(%esp), %edx
	movl	$7, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$128, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$-128, _Player+23012(%eax)
	je	L658
	movzwl	_DamageData+236, %eax
	cmpw	%ax, 23030(%edx)
	jge	L575
L658:
	imull	$24124, 24(%esp), %edi
	movl	_DamageData+244, %edx
	leal	_Player(%edi), %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+252, %ecx
	movl	$7, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L826
L659:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$-128, %al
	jne	L575
	orb	$-128, %al
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$7, %al
	jle	L689
	cmpb	$13, %al
	jne	L575
L689:
	movl	$7, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L580:
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+172, %ecx
	cmpw	%cx, _Player+23026(%eax)
	jge	L575
	movl	_DamageData+184, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+190, %ecx
	movl	$5, %edx
	jmp	L801
L611:
	movl	$4, 36(%esp)
	jmp	L608
L603:
	movl	48(%esp), %edx
	movl	$1, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+44, %ecx
	orl	$2, _Player+23008(%eax)
	leal	_Player(%eax), %edi
	cmpw	%cx, _Player+23018(%eax)
	jge	L575
	cmpb	$0, _gs+322
	movl	$LC1, %edx
	movl	$LC2, %eax
	movl	$_ds, (%esp)
	cmovne	%edx, %eax
	movl	%eax, 4(%esp)
	call	_sprintf
	movl	_DamageData+52, %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+60, %ecx
	movl	$1, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L827
L638:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$2, %al
	jne	L575
	orl	$2, %eax
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	cmpb	$1, 273(%eax)
	jle	L575
	movl	$1, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L578:
	movl	48(%esp), %edx
	movl	$6, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+204, %ecx
	orl	$64, _Player+23008(%eax)
	cmpw	%cx, _Player+23028(%eax)
	jge	L575
	movl	_DamageData+212, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+220, %ecx
	movl	$6, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L828
L639:
	movl	%esi, %eax
	call	__Z20ChoosePlayerGetSoundP12PLAYERstruct
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$64, %al
	jne	L575
	orl	$64, %eax
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$6, %al
	jle	L685
	cmpb	$13, %al
	jne	L575
L685:
	movl	$6, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L609:
	movl	$5, 36(%esp)
	jmp	L608
L581:
	imull	$24124, 24(%esp), %eax
	leal	_Player(%eax), %edi
	movsbl	_Player+23222(%eax), %eax
	cmpl	_InventoryDecls+60, %eax
	jge	L575
	movl	_InventoryDecls+56, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	xorl	%eax, %eax
	movl	_InventoryDecls+60, %edx
	movw	%ax, 23214(%edi)
	movzbl	23222(%edi), %eax
	addl	$3, %eax
	movsbl	%al, %ecx
	cmpl	%edx, %ecx
	cmovg	%edx, %eax
	movl	$6, %edx
	movb	%al, 23222(%edi)
	jmp	L791
L590:
	testb	$1, _SW_GameFlags
	jne	L577
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+236, %ecx
	cmpw	%cx, _Player+23030(%eax)
	jge	L575
	movl	_DamageData+248, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+254, %ecx
	movl	$7, %edx
	jmp	L806
L589:
	imull	$24124, 24(%esp), %eax
	cmpb	$0, _Player+23217(%eax)
	je	L634
	movswl	_Player+23204(%eax), %eax
	cmpl	_InventoryDecls+76, %eax
	jge	L575
L634:
	movl	_InventoryDecls+72, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	imull	$24124, 24(%esp), %eax
	movl	_InventoryDecls+76, %edx
	movb	$1, _Player+23217(%eax)
	movw	%dx, _Player+23204(%eax)
	movl	$1, %edx
	movl	%esi, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L829
L635:
	cmpw	$3, _gNet+12
	je	L575
	jmp	L797
L588:
	testb	$1, _SW_GameFlags
	jne	L577
	movl	48(%esp), %edx
	movl	$8, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$256, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$1, _Player+23013(%eax)
	je	L665
	movzwl	_DamageData+268, %eax
	cmpw	%ax, 23032(%edx)
	jge	L575
L665:
	movl	_DamageData+276, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+284, %ecx
	movl	$8, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L830
L666:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$430020053, %eax
	ja	L831
L667:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$1, %ah
	jne	L575
	orb	$13, %ah
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$8, %al
	jle	L691
	cmpb	$13, %al
	jne	L575
L691:
	movl	$8, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L587:
	movl	48(%esp), %edx
	movl	$5, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$32, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$32, _Player+23012(%eax)
	je	L654
	movzwl	_DamageData+172, %eax
	cmpw	%ax, 23026(%edx)
	jge	L575
L654:
	movl	_DamageData+180, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+188, %ecx
	movl	$5, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L832
L655:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$430020053, %eax
	ja	L833
L656:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$32, %al
	jne	L575
	orl	$32, %eax
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$5, %al
	jle	L688
	cmpb	$13, %al
	jne	L575
L688:
	movl	$5, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L586:
	movl	48(%esp), %edx
	movl	$4, %ecx
	movl	%esi, %eax
	call	__Z12CanGetWeaponP12PLAYERstructsi
	testb	%al, %al
	je	L575
	imull	$24124, 24(%esp), %eax
	orl	$16, _Player+23008(%eax)
	leal	_Player(%eax), %edx
	testb	$16, _Player+23012(%eax)
	je	L649
	movzwl	_DamageData+140, %eax
	cmpw	%ax, 23024(%edx)
	jge	L575
L649:
	movl	_DamageData+148, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+156, %ecx
	movl	$4, %edx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%esi, %eax
	movl	$144, %ecx
	movl	$-8, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L834
L650:
	movl	%esi, %eax
	call	__Z20ChoosePlayerGetSoundP12PLAYERstruct
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13KillGetWeapons
	imull	$24124, 24(%esp), %edx
	movl	_Player+23012(%edx), %eax
	testb	$16, %al
	jne	L575
	orl	$16, %eax
	movl	%eax, _Player+23012(%edx)
	movswl	_Player+348(%edx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	273(%eax), %eax
	cmpb	$13, %al
	je	L687
	cmpb	$4, %al
	jg	L575
L687:
	movl	$4, %edx
	movl	%esi, %eax
	call	__ZL22HandleWeaponAutoSwitchP12PLAYERstructi
	jmp	L575
	.p2align 4,,10
	.p2align 3
L585:
	imull	$24124, 24(%esp), %eax
	leal	_Player(%eax), %edi
	cmpb	$5, _Player+23113(%eax)
	je	L575
	movl	_DamageData+952, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	$144, %ecx
	movl	$-8, %edx
	movzwl	_DamageData+958, %eax
	movb	%al, 23113(%edi)
	movl	%esi, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	je	L835
L673:
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z7KillGets
	imull	$24124, 24(%esp), %eax
	movl	_Player+23048(%eax), %edx
	cmpl	_Player+23068(%eax), %edx
	jne	L575
	movzbl	_Player+23112(%eax), %ecx
	testb	%cl, %cl
	jne	L674
	movb	$1, _Player+23112(%eax)
	jmp	L575
	.p2align 4,,10
	.p2align 3
L584:
	testb	$1, _SW_GameFlags
	jne	L577
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+300, %ecx
	cmpw	%cx, _Player+23034(%eax)
	jge	L575
	movl	_DamageData+312, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+318, %ecx
	movl	$9, %edx
	jmp	L806
L583:
	imull	$24124, 24(%esp), %eax
	movzwl	_DamageData+76, %ecx
	cmpw	%cx, _Player+23020(%eax)
	jge	L575
	movl	_DamageData+88, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movswl	_DamageData+94, %ecx
	movl	$2, %edx
	jmp	L801
L605:
	movl	$7, 36(%esp)
	jmp	L608
L614:
	movswl	348(%esi), %eax
	movzbl	17(%ebp), %ebx
	imull	$44, %eax, %eax
	cmpb	%bl, 17(%ecx,%eax)
	je	L575
	leal	8(%ebp), %esi
	movl	$-1171354717, %edi
	movl	%esi, %eax
	subl	%ecx, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ecx, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	leal	4(%ebp), %ecx
	mull	%edi
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movzwl	24(%ebp), %ebx
	movl	0(%ebp), %eax
	movl	4(%ebp), %edx
	movl	8(%ebp), %ecx
	cmpw	$1003, 40(%ebp)
	movl	%eax, 4(%esp)
	movswl	%bx, %eax
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	je	L836
	movl	$_s_CarryFlag, %ecx
	movl	$2520, %edx
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
L676:
	movswl	%ax, %edi
	movl	_sprite, %ebx
	movl	$-1171354717, %ecx
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %esi
	movl	%edi, 32(%esp)
	movl	%esi, 28(%esp)
	leal	(%ebx,%eax), %esi
	addl	$16, %eax
	mull	%ecx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movb	$-20, 16(%esi)
	movw	%dx, 176(%eax)
	leal	12(%esi), %eax
	subl	%ebx, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	andw	$-258, 12(%esi)
	addl	$1, _spritechanged(,%eax,4)
	imull	$24124, 24(%esp), %eax
	orw	$16, 12(%esi)
	movl	_User(,%edi,4), %edi
	movswl	_Player+348(%eax), %ecx
	movl	%ecx, %edx
	movl	_User(,%ecx,4), %ecx
	orl	$1048576, 72(%ecx)
	movw	%dx, 138(%edi)
	movswl	_Player+348(%eax), %edx
	imull	$44, %edx, %edx
	addl	%ebx, %edx
	movswl	14(%edx), %ecx
	movl	8(%edx), %ebx
	movswl	_tilesiz+2(,%ecx,4), %eax
	movl	%eax, %edi
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L677
	movsbl	_picanm+2(%ecx,%ecx,4), %edx
	movl	%edx, %ecx
	sall	$8, %ecx
	cmpb	$64, %al
	je	L837
	imull	%edi, %eax
	movl	%ebx, %edi
	addl	%eax, %eax
	leal	(%eax,%ecx), %edx
	subl	%edx, %edi
L679:
	subl	%ecx, %eax
	addl	%eax, %ebx
L682:
	leal	(%edi,%ebx), %eax
	movl	28(%esp), %ebx
	movl	32(%esp), %edx
	sarl	%eax
	movl	%eax, 256(%ebx)
	movzbl	17(%ebp), %eax
	movb	%al, 17(%esi)
	movb	%al, 262(%ebx)
	imull	$24124, 24(%esp), %eax
	movswl	_Player+348(%eax), %eax
	call	__Z8SetOwnerss
	movzwl	76(%esp), %eax
	movw	%ax, 280(%ebx)
	jmp	L797
L612:
	cmpb	$0, 23219(%esi)
	je	L633
	movswl	23208(%esi), %eax
	cmpl	_InventoryDecls+68, %eax
	jge	L575
L633:
	movl	_InventoryDecls+64, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	imull	$24124, 24(%esp), %eax
	movl	_InventoryDecls+68, %edx
	movb	$1, _Player+23219(%eax)
	movw	%dx, _Player+23208(%eax)
	movl	$3, %edx
	jmp	L791
L814:
	leal	8(%ebp), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$53, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L617
L677:
	cmpb	$64, %al
	je	L838
	imull	%edi, %eax
	sall	$2, %eax
L681:
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %edi
	jmp	L682
L824:
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L653
	cmpb	$0, _Prediction
	jne	L653
	leal	_Player+8(%edi), %eax
	movl	%esi, (%esp)
	movl	$360, %ecx
	movl	$6139, %edx
	movl	%eax, 8(%esp)
	leal	_Player+4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%esi, 16(%esp)
	movl	$13, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L653
L836:
	movl	$_s_CarryFlagNoDet, %ecx
	movl	$2520, %edx
	movl	$10, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	jmp	L676
L643:
	orb	$32, %ah
	orl	$8, %ecx
	movl	%eax, _Player+22968(%edx)
	movl	%esi, %eax
	movl	%ecx, _Player+23012(%edx)
	call	__Z20ChoosePlayerGetSoundP12PLAYERstruct
	jmp	L645
L623:
	movl	$100, %ecx
	movswl	%ax, %edx
	movl	%esi, %eax
	movw	%cx, 23260(%edi)
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$200, %eax
	movw	%ax, 23260(%edi)
	jmp	L809
L833:
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L656
	cmpb	$0, _Prediction
	jne	L656
	leal	_Player+8(%ebx), %eax
	movl	%esi, (%esp)
	movl	$330, %ecx
	movl	$6174, %edx
	movl	%eax, 8(%esp)
	leal	_Player+4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%esi, 16(%esp)
	movl	$13, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L656
L825:
	cmpb	$0, _gs+25
	je	L626
	imull	$1103515245, _wrandomseed, %edx
	movl	$32766, %ecx
	addl	$12345, %edx
	movl	%edx, %eax
	movl	%edx, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%ecx, %eax
	cmova	%ecx, %eax
	movl	$53685452, %ecx
	sall	$14, %eax
	cmpb	$0, _gs+40
	jne	L786
	movl	$33553408, %ecx
L786:
	xorl	%edx, %edx
	divl	%ecx
	movl	_ReadFortune(,%eax,4), %eax
	movl	$LC3, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	cmpb	$0, _DemoPlaying
	jne	L626
	movl	$_ds, 4(%esp)
	movl	$LC4, (%esp)
	call	__Z11CON_MessagePKcz
	jmp	L626
L817:
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	subl	%edi, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	divl	%ecx
	jmp	L796
L815:
	addw	$1000, %ax
	movswl	%ax, %edx
	movl	%esi, %eax
	call	__Z17PlayerUpdateArmorP12PLAYERstructs
	movl	_InventoryDecls+8, %edx
	movl	%esi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L619
L829:
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L635
L823:
	leal	8(%ebp), %eax
	movl	$-1171354717, %ecx
	movl	%eax, 32(%esp)
	subl	_sprite, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	32(%esp), %eax
	movl	%edx, %ecx
	movl	%ebp, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	movl	%eax, (%esp)
	movl	$54, %eax
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L652
L838:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L681
L832:
	leal	8(%ebp), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	movl	%eax, 28(%esp)
	subl	_sprite, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	28(%esp), %ecx
	movl	$54, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L655
L831:
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L667
	leal	_Player+8(%ebx), %eax
	movl	%esi, 12(%esp)
	movl	$330, %ecx
	movl	$6353, %edx
	movl	%eax, 8(%esp)
	leal	_Player+4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%esi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L667
L822:
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L671
	leal	_Player+8(%ebx), %eax
	movl	%esi, 12(%esp)
	movl	$330, %ecx
	movl	$6397, %edx
	movl	%eax, 8(%esp)
	leal	_Player+4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%esi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L671
L820:
	leal	8(%ebp), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L663
L834:
	leal	8(%ebp), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L650
L674:
	cmpb	$2, %cl
	jne	L575
	movw	$0, 68(%edx)
	movl	_Player+23048(%eax), %eax
	movl	$_ps_MicroHeatFlash, 60(%eax)
	jmp	L575
L835:
	movl	_sprite, %ebx
	leal	8(%ebp), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %eax
	subl	%ebx, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%ebx, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ebx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	movl	%ebp, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L673
L837:
	movl	%edi, %eax
	movl	%ebx, %edi
	sall	$7, %eax
	leal	(%eax,%ecx), %edx
	subl	%edx, %edi
	jmp	L679
L818:
	leal	8(%ebp), %eax
	movl	$-1171354717, %ecx
	movl	%eax, 32(%esp)
	subl	_sprite, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	32(%esp), %eax
	movl	%edx, %ecx
	movl	%ebp, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	movl	%eax, (%esp)
	movl	$54, %eax
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L642
L827:
	leal	8(%ebp), %edi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	divl	%ecx
	leal	4(%ebp), %ecx
	movl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L638
L828:
	leal	8(%ebp), %edi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	divl	%ecx
	leal	4(%ebp), %ecx
	movl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L639
L826:
	leal	8(%ebp), %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%eax, 32(%esp)
	subl	_sprite, %eax
	divl	%ecx
	leal	4(%ebp), %edx
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	_sprite, %eax
	divl	%ecx
	movl	28(%esp), %ecx
	movl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	32(%esp), %eax
	movl	$8, 4(%esp)
	movl	%eax, (%esp)
	movl	$54, %eax
	call	__Z9PlaySoundiPiS_S_i
	imull	$24124, _myconnectindex, %eax
	cmpl	%ebx, %eax
	jne	L659
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	movl	%esi, 12(%esp)
	movl	%esi, (%esp)
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$376334653, %eax
	leal	_Player+8(%edi), %eax
	movl	%eax, 8(%esp)
	leal	_Player+4(%edi), %eax
	movl	%eax, 4(%esp)
	ja	L839
	movl	$451, %ecx
	movl	$6244, %edx
	movl	$LC0, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L659
L821:
	leal	8(%ebp), %edi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	movl	%eax, 28(%esp)
	subl	_sprite, %eax
	divl	%ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	28(%esp), %ecx
	movl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L670
L816:
	movl	_sprite, %edi
	leal	8(%ebp), %esi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	subl	%edi, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	subl	%edi, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%edi, %eax
	divl	%ecx
	jmp	L799
L830:
	leal	8(%ebp), %edi
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%ebp), %eax
	movl	%eax, 28(%esp)
	subl	_sprite, %eax
	divl	%ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	28(%esp), %ecx
	movl	%ebp, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	$54, %eax
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L666
L819:
	cmpb	$0, _Prediction
	jne	L645
	leal	_Player+8(%edi), %eax
	movl	%esi, (%esp)
	movl	$445, %ecx
	movl	$6059, %edx
	movl	%eax, 8(%esp)
	leal	_Player+4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%esi, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L645
L839:
	movl	$330, %ecx
	movl	$6241, %edx
	movl	$LC0, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L659
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z5DoKeys
	.def	__Z5DoKeys;	.scl	2;	.type	32;	.endef
__Z5DoKeys:
LFB43:
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
	movswl	16(%esp), %esi
	movl	_User(,%esi,4), %eax
	movl	140(%eax), %ebx
	movl	$-1171354717, %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movswl	28(%ebx), %ecx
	mull	%edx
	addl	$84, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%esi, 16(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z5DoGets
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z14SpriteOverlapZssi
	.def	__Z14SpriteOverlapZssi;	.scl	2;	.type	32;	.endef
__Z14SpriteOverlapZssi:
LFB44:
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
	movswl	%dx, %esi
	movswl	%ax, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$44, %edx, %edx
	movl	%ecx, %ebx
	imull	$44, %esi, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %ecx
	addl	%ecx, %edx
	leal	(%ecx,%esi), %eax
	movswl	14(%edx), %ebp
	movl	8(%edx), %esi
	movzbl	21(%edx), %ecx
	movswl	_tilesiz+2(,%ebp,4), %edi
	testb	$-128, 12(%edx)
	je	L843
	movsbl	_picanm+2(%ebp,%ebp,4), %edx
	sall	$8, %edx
	cmpb	$64, %cl
	je	L858
	imull	%edi, %ecx
	movl	%esi, %ebp
	addl	%ecx, %ecx
	leal	(%edx,%ecx), %edi
	subl	%edi, %ebp
	movl	%ebp, (%esp)
L845:
	subl	%edx, %ecx
	addl	%ecx, %esi
	jmp	L848
	.p2align 4,,10
	.p2align 3
L843:
	cmpb	$64, %cl
	je	L859
	imull	%edi, %ecx
	leal	0(,%ecx,4), %edi
L847:
	movl	%esi, %ecx
	subl	%edi, %ecx
	movl	%ecx, (%esp)
L848:
	movswl	14(%eax), %ebp
	movl	8(%eax), %ecx
	movzbl	21(%eax), %edx
	movswl	_tilesiz+2(,%ebp,4), %edi
	testb	$-128, 12(%eax)
	je	L849
	movsbl	_picanm+2(%ebp,%ebp,4), %eax
	sall	$8, %eax
	cmpb	$64, %dl
	je	L860
	imull	%edi, %edx
	movl	%ecx, %ebp
	addl	%edx, %edx
	leal	(%edx,%eax), %edi
	subl	%edi, %ebp
L851:
	subl	%eax, %edx
	addl	%edx, %ecx
L854:
	movl	(%esp), %eax
	xorl	%edx, %edx
	addl	%ebx, %eax
	cmpl	%ecx, %eax
	jg	L842
	addl	%ebp, %ebx
	cmpl	%esi, %ebx
	setle	%dl
L842:
	addl	$4, %esp
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
L849:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L861
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L853:
	movl	%ecx, %ebp
	subl	%edi, %ebp
	jmp	L854
	.p2align 4,,10
	.p2align 3
L858:
	sall	$7, %edi
	movl	%esi, %ebp
	movl	%edi, %ecx
	leal	(%edx,%edi), %edi
	subl	%edi, %ebp
	movl	%ebp, (%esp)
	jmp	L845
	.p2align 4,,10
	.p2align 3
L859:
	sall	$8, %edi
	jmp	L847
	.p2align 4,,10
	.p2align 3
L860:
	sall	$7, %edi
	movl	%ecx, %ebp
	movl	%edi, %edx
	leal	(%edi,%eax), %edi
	subl	%edi, %ebp
	jmp	L851
	.p2align 4,,10
	.p2align 3
L861:
	sall	$8, %edi
	jmp	L853
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z9ActorDropsiiiss
	.def	__Z9ActorDropsiiiss;	.scl	2;	.type	32;	.endef
__Z9ActorDropsiiiss:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	$-1171354717, %eax
	imull	$44, %ebx, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %ecx
	movl	%edx, 20(%esp)
	addl	%ecx, %ebx
	leal	12(%ebx), %esi
	movzwl	12(%ebx), %edi
	movl	%esi, %edx
	subl	%ecx, %edx
	andl	$1, %edi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	14(%ebx), %edx
	movzbl	21(%ebx), %eax
	andw	$-2, 12(%ebx)
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %al
	je	L873
	imull	%edx, %eax
	addl	%eax, %eax
L864:
	movl	60(%esp), %ecx
	movl	%ebp, %edx
	subl	%eax, %ecx
	leal	32(%esp), %eax
	movl	%eax, 16(%esp)
	leal	24(%esp), %eax
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	64(%esp), %eax
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	movl	_sprite, %ecx
	movl	$-1171354717, %eax
	subl	%ecx, %esi
	mull	%esi
	movl	32(%esp), %eax
	movl	%eax, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	%di, 12(%ebx)
	orl	36(%esp), %esi
	js	L865
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$16384, %edx
	je	L866
	cmpl	$49152, %edx
	je	L867
L865:
	movl	$1, %eax
L862:
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
	.p2align 4,,10
	.p2align 3
L866:
	.cfi_restore_state
	movl	24(%esp), %eax
	subl	60(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	movswl	68(%esp), %eax
	cmpl	%eax, %edx
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
	.p2align 4,,10
	.p2align 3
L873:
	.cfi_restore_state
	movl	%edx, %eax
	sall	$7, %eax
	jmp	L864
	.p2align 4,,10
	.p2align 3
L867:
	andl	$4095, %eax
	imull	$44, %eax, %eax
	testb	$32, 12(%ecx,%eax)
	je	L865
	movl	24(%esp), %eax
	subl	60(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movswl	68(%esp), %edx
	cmpl	%edx, %eax
	setg	%al
	jmp	L862
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z11move_spritesiiiiiji
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
__Z11move_spritesiiiiiji:
LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
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
	movl	_User(,%eax,4), %edi
	movl	%eax, 56(%esp)
	imull	$44, %eax, %eax
	movl	%ecx, 48(%esp)
	movl	_sprite, %ecx
	movl	%edx, 52(%esp)
	leal	(%ecx,%eax), %ebx
	movl	%eax, 44(%esp)
	movzwl	24(%ebx), %eax
	movl	8(%ebx), %esi
	movl	%edi, 36(%esp)
	movl	$0, 64(%esp)
	movw	%ax, 34(%esp)
	movw	%ax, 70(%esp)
	testb	$-128, 12(%ebx)
	jne	L875
	movl	112(%edi), %eax
	movl	%eax, 64(%esp)
	subl	%eax, %esi
L875:
	movzbl	18(%ebx), %eax
	movl	$-1171354717, %edi
	movl	%esi, 80(%esp)
	movl	$1, _clipmoveboxtracenum
	movl	20(%ebp), %esi
	sall	$2, %eax
	movl	%eax, 60(%esp)
	leal	4(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 40(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movlps	(%ebx), %xmm0
	movl	%esi, 28(%esp)
	movl	16(%ebp), %eax
	movlps	%xmm0, 72(%esp)
	movl	%eax, 24(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	imull	24(%ebp), %eax
	sall	$11, %eax
	movl	%eax, 12(%esp)
	movl	52(%esp), %eax
	imull	24(%ebp), %eax
	sall	$11, %eax
	movl	%eax, 8(%esp)
	leal	70(%esp), %eax
	movl	%eax, 4(%esp)
	leal	72(%esp), %eax
	movl	%eax, (%esp)
	call	_clipmove
	movlps	72(%esp), %xmm1
	movzwl	70(%esp), %esi
	movl	$3, _clipmoveboxtracenum
	movl	%eax, 60(%esp)
	movlps	%xmm1, (%ebx)
	testw	%si, %si
	js	L894
	movl	_sprite, %eax
	cmpw	%si, 24(%ebx)
	je	L880
	cmpw	$4096, %si
	ja	L880
	movl	44(%esp), %edi
	movzwl	24(%eax,%edi), %edx
	cmpw	%dx, %si
	je	L880
	cmpw	$4096, %dx
	je	L880
	movl	56(%esp), %edi
	movl	%edi, %eax
	call	_do_deletespritesect
	movl	%edi, %eax
	movswl	%si, %edx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %eax
L880:
	movzwl	12(%ebx), %esi
	movl	20(%ebp), %edi
	movl	64(%esp), %ecx
	movw	%si, 52(%esp)
	leal	12(%ebx), %esi
	movl	%esi, %edx
	notl	%ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	addl	8(%ebx), %ecx
	movw	%dx, 12(%ebx)
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%edi, 24(%esp)
	movzbl	18(%ebx), %edi
	movl	$__ZL9globlohit, 16(%esp)
	movl	$__ZL7globloz, 12(%esp)
	leal	-8(,%edi,4), %edi
	movl	$__ZL9globhihit, 8(%esp)
	movl	%edi, 20(%esp)
	movl	$__ZL7globhiz, 4(%esp)
	movswl	24(%ebx), %edi
	movl	%edi, (%esp)
	call	__Z12FAFgetzrangeiiisPiS_S_S_ii
	subl	_sprite, %esi
	movl	$-1171354717, %eax
	mull	%esi
	movzwl	52(%esp), %esi
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ebx)
	movl	%eax, (%esp)
	call	__Z12DoActorGlobZs
	movl	24(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	addl	8(%ebx), %ecx
	movl	%ecx, %eax
	subl	64(%esp), %eax
	cmpl	__ZL7globhiz, %eax
	jle	L881
	cmpl	__ZL7globloz, %eax
	jg	L881
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
L885:
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	cmpw	$2356, 16(%eax)
	je	L886
	cmpw	$2356, 24(%eax)
	je	L886
	testb	$4, 38(%eax)
	jne	L905
L874:
	movl	60(%esp), %eax
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
L881:
	.cfi_restore_state
	movl	60(%esp), %eax
	testl	%eax, %eax
	jne	L885
	movl	36(%esp), %eax
	testb	$-128, 68(%eax)
	jne	L906
	movswl	70(%esp), %eax
	orb	$64, %ah
	movl	%eax, 60(%esp)
	jmp	L885
	.p2align 4,,10
	.p2align 3
L905:
	movl	_sprite, %esi
	leal	8(%ebx), %eax
	movl	$-1171354717, %ecx
	movl	40(%esp), %edi
	movl	%eax, %edx
	movl	%eax, 64(%esp)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	leal	70(%esp), %esi
	movl	%edx, %eax
	mull	%ecx
	movl	64(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%esi, (%esp)
	call	__Z9WarpPlanePiS_S_Ps
	movl	%eax, %esi
	testl	%eax, %eax
	je	L889
	movl	56(%esp), %eax
	movzwl	70(%esp), %ecx
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edx
	movl	(%edx), %edi
	movl	%edi, 56(%eax)
	movl	4(%edx), %edi
	movl	%edi, 60(%eax)
	movl	8(%edx), %edx
	movl	%edx, 64(%eax)
	cmpw	$4096, %cx
	ja	L890
	movl	_sprite, %eax
	movl	44(%esp), %edi
	movzwl	24(%eax,%edi), %eax
	cmpw	%ax, %cx
	je	L890
	cmpw	$4096, %ax
	je	L890
	movl	56(%esp), %edi
	movl	%ecx, 52(%esp)
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	52(%esp), %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
L890:
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13DoActorZranges
	cmpb	$1, 18(%esi)
	je	L889
	movl	%ebx, %eax
	call	__Z13ActorWarpTypeP12spritetypev7S0_.part.0
L889:
	movzwl	34(%esp), %eax
	cmpw	24(%ebx), %ax
	je	L874
	movl	_sprite, %esi
	movl	64(%esp), %edx
	movl	$-1171354717, %ecx
	movl	40(%esp), %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	leal	70(%esp), %esi
	movl	%edx, %eax
	mull	%ecx
	movl	64(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%esi, (%esp)
	call	__Z4WarpPiS_S_Ps
	movl	%eax, %esi
	testl	%eax, %eax
	je	L874
	movl	56(%esp), %eax
	movzwl	70(%esp), %edi
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edx
	movl	(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 60(%eax)
	movl	8(%edx), %edx
	movl	%edx, 64(%eax)
	cmpw	$4096, %di
	ja	L892
	movl	_sprite, %eax
	movl	44(%esp), %ecx
	movzwl	24(%eax,%ecx), %eax
	cmpw	%ax, %di
	je	L892
	cmpw	$4096, %ax
	je	L892
	movl	56(%esp), %eax
	call	_do_deletespritesect
	movl	56(%esp), %eax
	movswl	%di, %edx
	call	_do_insertsprite_at_headofsect
L892:
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13DoActorZranges
	cmpb	$1, 18(%esi)
	je	L874
	movl	%ebx, %eax
	call	__Z13ActorWarpTypeP12spritetypev7S0_.part.0
	jmp	L874
	.p2align 4,,10
	.p2align 3
L886:
	movl	56(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$4, 38(%eax)
	je	L874
	jmp	L905
	.p2align 4,,10
	.p2align 3
L894:
	movl	$32768, 60(%esp)
	movl	60(%esp), %eax
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
L906:
	.cfi_restore_state
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	60(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
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
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z10move_actorsiii.constprop.0
	.def	__Z10move_actorsiii.constprop.0;	.scl	2;	.type	32;	.endef
__Z10move_actorsiii.constprop.0:
LFB52:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$84, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_User(,%eax,4), %ebx
	movl	%eax, 80(%esp)
	movl	140(%ebx), %esi
	testb	$2, 71(%ebx)
	jne	L908
	movl	8(%esi), %eax
	movl	%eax, 76(%esp)
L909:
	movl	(%esi), %eax
	movlps	104(%ebx), %xmm0
	movl	%edi, %edx
	movl	$1, _clipmoveboxtracenum
	movups	116(%ebx), %xmm1
	movl	%eax, 72(%esp)
	movl	4(%esi), %eax
	movlps	%xmm0, 52(%esp)
	movl	%eax, 68(%esp)
	movzwl	24(%esi), %eax
	movl	$6, 16(%esp)
	movl	$81921, 12(%esp)
	movw	%ax, 66(%esp)
	movswl	98(%ebx), %eax
	movups	%xmm1, 36(%esp)
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	80(%esp), %eax
	call	__Z11move_spritesiiiiiji
	movl	68(%ebx), %edx
	movl	$3, _clipmoveboxtracenum
	movl	%eax, 264(%ebx)
	movl	%edx, %edi
	andl	$33817056, %edi
	jne	L910
	movl	8(%esi), %eax
	movl	%eax, %edx
	subl	__ZL7globloz, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	movswl	100(%ebx), %edx
	cmpl	%edx, %ecx
	jg	L920
	movl	4(%esi), %ecx
	movl	%ecx, 60(%esp)
	movl	(%esi), %ecx
	movl	%edx, 8(%esp)
	movswl	24(%esi), %edx
	movl	%eax, (%esp)
	movl	80(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%ecx, 32(%esp)
	movl	60(%esp), %ecx
	movl	32(%esp), %edx
	call	__Z9ActorDropsiiiss
	testb	%al, %al
	jne	L913
	movl	68(%ebx), %edx
	movl	264(%ebx), %eax
L910:
	orl	$1, %edx
	xorl	%edi, %edi
	movl	%edx, 68(%ebx)
	testl	%eax, %eax
	je	L921
L907:
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
	ret
	.p2align 4,,10
	.p2align 3
L908:
	.cfi_restore_state
	movl	256(%ebx), %eax
	leal	8(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, 76(%esp)
	movl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	76(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	jmp	L909
	.p2align 4,,10
	.p2align 3
L921:
	movl	(%esi), %edx
	subl	72(%esp), %edx
	movl	$1, %edi
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	68(%esp), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	subw	%dx, 214(%ebx)
	movl	%edi, %eax
	addw	%dx, 212(%ebx)
	addw	%dx, 210(%ebx)
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
L920:
	.cfi_restore_state
	movl	%esi, %edx
	movl	$-1171354717, %eax
	movlps	52(%esp), %xmm2
	subl	_sprite, %edx
	mull	%edx
	movl	72(%esp), %eax
	movups	36(%esp), %xmm3
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	movl	%eax, (%esi)
	movl	_sprite, %ecx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	68(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%esi), %edx
	movl	%eax, 4(%esi)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	76(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	movzwl	66(%esp), %esi
	movl	$-1, 264(%ebx)
	movlps	%xmm2, 104(%ebx)
	movups	%xmm3, 116(%ebx)
	cmpw	$4096, %si
	ja	L907
L919:
	movl	80(%esp), %ebx
	imull	$44, %ebx, %eax
	movzwl	24(%ecx,%eax), %eax
	cmpw	$4096, %ax
	je	L907
	cmpw	%ax, %si
	je	L907
	movl	%ebx, %eax
	call	_do_deletespritesect
	movl	%ebx, %eax
	movswl	%si, %edx
	call	_do_insertsprite_at_headofsect
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
	ret
	.p2align 4,,10
	.p2align 3
L913:
	.cfi_restore_state
	movl	%esi, %edx
	movl	$-1171354717, %eax
	movlps	52(%esp), %xmm4
	subl	_sprite, %edx
	mull	%edx
	movl	72(%esp), %eax
	movups	36(%esp), %xmm5
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	movl	%eax, (%esi)
	movl	_sprite, %ecx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	68(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%esi), %edx
	movl	%eax, 4(%esi)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	76(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	movzwl	66(%esp), %esi
	movl	$-1, 264(%ebx)
	movlps	%xmm4, 104(%ebx)
	movups	%xmm5, 116(%ebx)
	cmpw	$4096, %si
	jbe	L919
	jmp	L907
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z20MissileWarpUpdatePosss
	.def	__Z20MissileWarpUpdatePosss;	.scl	2;	.type	32;	.endef
__Z20MissileWarpUpdatePosss:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movswl	%ax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_User(,%edi,4), %eax
	movl	140(%eax), %edx
	movl	(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 60(%eax)
	movl	8(%edx), %edx
	movl	%edx, 64(%eax)
	movl	_sprite, %eax
	cmpw	$4096, %bx
	ja	L926
	imull	$44, %edi, %edx
	movzwl	24(%eax,%edx), %edx
	cmpw	$4096, %dx
	je	L926
	cmpw	%dx, %bx
	je	L926
	movl	%edi, %eax
	call	_do_deletespritesect
	movl	%edi, %eax
	movswl	%bx, %edx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %eax
L926:
	movl	_User(,%edi,4), %edx
	movl	$-1171354717, %ebp
	movl	140(%edx), %ebx
	movzwl	12(%ebx), %esi
	movw	%si, 22(%esp)
	leal	12(%ebx), %esi
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebx), %eax
	movl	4(%ebx), %edx
	andw	$-2, 12(%ebx)
	leal	-1(%eax), %ecx
	movl	(%ebx), %eax
	movl	$__ZL9globlohit, 16(%esp)
	movl	$__ZL7globloz, 12(%esp)
	movl	%eax, 24(%esp)
	movl	$__ZL9globhihit, 8(%esp)
	movl	$__ZL7globhiz, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	subl	_sprite, %esi
	movl	%esi, %eax
	movzwl	22(%esp), %esi
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ebx)
	movl	%edi, (%esp)
	call	__Z12DoActorGlobZs
	addl	$28, %esp
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
LFE53:
	.p2align 4
	.globl	__Z15MissileWarpTypeP12spritetypev7S0_
	.def	__Z15MissileWarpTypeP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
__Z15MissileWarpTypeP12spritetypev7S0_:
LFB56:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movswl	40(%edx), %eax
	subl	$85, %eax
	cmpl	$1, %eax
	jbe	L928
	cmpb	$1, 18(%edx)
	jne	L931
L928:
	movl	8(%esp), %ebx
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L931:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	.cfi_offset 6, -12
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$442, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebx, (%esp)
	call	__Z27DoSpawnItemTeleporterEffectP12spritetypev7
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z18MissileWaterAdjusts.isra.0
	.def	__Z18MissileWaterAdjusts.isra.0;	.scl	2;	.type	32;	.endef
__Z18MissileWaterAdjusts.isra.0:
LFB59:
	.cfi_startproc
	cwtl
	movl	_User(,%eax,4), %edx
	movl	120(%edx), %eax
	testl	%eax, %eax
	je	L932
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L932
	movswl	10(%eax), %eax
	testw	%ax, %ax
	je	L932
	sall	$8, %eax
	subl	%eax, 108(%edx)
L932:
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z12move_missilesiiiiiji
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
__Z12move_missilesiiiiiji:
LFB60:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
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
	movl	_User(,%eax,4), %edi
	movl	%eax, 56(%esp)
	imull	$44, %eax, %eax
	movl	%ecx, 44(%esp)
	movl	_sprite, %ecx
	movl	%edx, 48(%esp)
	leal	(%ecx,%eax), %ebx
	movl	%eax, 36(%esp)
	movzwl	24(%ebx), %eax
	movl	8(%ebx), %esi
	movl	%edi, 52(%esp)
	movl	$0, 60(%esp)
	movw	%ax, 34(%esp)
	movw	%ax, 70(%esp)
	testb	$-128, 12(%ebx)
	jne	L944
	movl	112(%edi), %eax
	movl	%eax, 60(%esp)
	subl	%eax, %esi
L944:
	movzbl	18(%ebx), %eax
	movl	$-1171354717, %edi
	movl	%esi, 80(%esp)
	movl	$1, _clipmoveboxtracenum
	sall	$2, %eax
	movl	%eax, 64(%esp)
	leal	4(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 40(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	20(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movlps	(%ebx), %xmm0
	movl	%eax, 28(%esp)
	movl	16(%ebp), %edi
	movl	64(%esp), %eax
	movlps	%xmm0, 72(%esp)
	movl	%edi, 24(%esp)
	movl	12(%ebp), %edi
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	movl	%edi, 20(%esp)
	imull	24(%ebp), %eax
	sall	$11, %eax
	movl	%eax, 12(%esp)
	movl	48(%esp), %eax
	imull	24(%ebp), %eax
	sall	$11, %eax
	movl	%eax, 8(%esp)
	leal	70(%esp), %eax
	movl	%eax, 4(%esp)
	leal	72(%esp), %eax
	movl	%eax, (%esp)
	call	_clipmove
	movlps	72(%esp), %xmm1
	movzwl	70(%esp), %esi
	movl	$3, _clipmoveboxtracenum
	movl	%eax, 64(%esp)
	movlps	%xmm1, (%ebx)
	testw	%si, %si
	js	L965
	movl	_sprite, %ecx
	cmpw	%si, 24(%ebx)
	je	L949
	cmpw	$4096, %si
	ja	L949
	movl	36(%esp), %eax
	movzwl	24(%ecx,%eax), %eax
	cmpw	%ax, %si
	je	L949
	cmpw	$4096, %ax
	je	L949
	movl	56(%esp), %edi
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%si, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %ecx
L949:
	movzwl	12(%ebx), %eax
	leal	12(%ebx), %esi
	movl	%esi, %edx
	movw	%ax, 48(%esp)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	andw	$-2, 12(%ebx)
	subl	$1, %ecx
	movl	$__ZL9globlohit, 16(%esp)
	movl	$__ZL7globloz, 12(%esp)
	movl	$__ZL9globhihit, 8(%esp)
	movl	$__ZL7globhiz, 4(%esp)
	movswl	24(%ebx), %edi
	movl	%edi, (%esp)
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	subl	_sprite, %esi
	movl	$-1171354717, %eax
	mull	%esi
	movl	56(%esp), %esi
	movzwl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	movl	%esi, (%esp)
	call	__Z12DoActorGlobZs
	movl	%esi, %eax
	call	__Z18MissileWaterAdjusts.isra.0
	movl	24(%ebp), %ecx
	imull	8(%ebp), %ecx
	leal	8(%ebx), %edx
	movl	%edx, 36(%esp)
	subl	_sprite, %edx
	movl	52(%esp), %edi
	sarl	$3, %ecx
	addl	8(%ebx), %ecx
	movl	%ecx, %eax
	subl	60(%esp), %eax
	movl	104(%edi), %esi
	movl	%eax, 48(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	12(%ebp), %eax
	addl	%esi, %eax
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %edi
	addl	$1, %edi
	movl	%edi, 44(%esp)
	cmpl	%eax, 48(%esp)
	jg	L950
	movl	%edi, _spritechanged(,%edx,4)
	movl	64(%esp), %edx
	addl	60(%esp), %esi
	addl	12(%ebp), %esi
	movl	%esi, 8(%ebx)
	testl	%edx, %edx
	jne	L952
L985:
	movswl	70(%esp), %eax
	orb	$64, %ah
	movl	%eax, 64(%esp)
L952:
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	cmpw	$2356, 16(%eax)
	je	L955
	cmpw	$2356, 24(%eax)
	je	L955
	testb	$4, 38(%eax)
	jne	L986
L957:
	movl	64(%esp), %ecx
	testl	%ecx, %ecx
	je	L943
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$1, 12(%eax)
	je	L961
	movl	%ecx, %edi
	andl	$-49153, %edi
	movl	%edi, %edx
	movl	8(%ebx), %edi
	orl	$65536, %edx
	cmpl	%edi, 4(%eax)
	cmovle	%ecx, %edx
	movl	%edx, 64(%esp)
L961:
	testb	$1, 14(%eax)
	je	L943
	movl	64(%esp), %esi
	movl	%esi, %edi
	andl	$-49153, %edi
	movl	%edi, %edx
	movl	8(%ebx), %edi
	orl	$65536, %edx
	cmpl	%edi, 8(%eax)
	cmovge	%esi, %edx
	movl	%edx, 64(%esp)
L943:
	movl	64(%esp), %eax
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
L950:
	.cfi_restore_state
	movl	52(%esp), %eax
	movl	108(%eax), %esi
	movl	%esi, %eax
	subl	16(%ebp), %eax
	cmpl	%eax, 48(%esp)
	movl	44(%esp), %eax
	movl	%eax, _spritechanged(,%edx,4)
	jle	L953
	movl	64(%esp), %eax
	addl	60(%esp), %esi
	subl	16(%ebp), %esi
	movl	%esi, 8(%ebx)
	testl	%eax, %eax
	jne	L952
	jmp	L985
	.p2align 4,,10
	.p2align 3
L955:
	movl	56(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$4, 38(%eax)
	je	L957
L986:
	movl	36(%esp), %edi
	movl	_sprite, %esi
	movl	$-1171354717, %ecx
	movl	%edi, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	40(%esp), %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	70(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	__Z9WarpPlanePiS_S_Ps
	movl	%eax, %esi
	testl	%eax, %eax
	je	L958
	movswl	70(%esp), %edx
	movl	56(%esp), %eax
	call	__Z20MissileWarpUpdatePosss
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z15MissileWarpTypeP12spritetypev7S0_
L958:
	movzwl	34(%esp), %eax
	cmpw	24(%ebx), %ax
	je	L957
	movl	36(%esp), %edi
	movl	_sprite, %esi
	movl	$-1171354717, %ecx
	movl	%edi, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	40(%esp), %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	70(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	call	__Z4WarpPiS_S_Ps
	movl	%eax, %esi
	testl	%eax, %eax
	je	L957
	movswl	70(%esp), %edx
	movl	56(%esp), %eax
	call	__Z20MissileWarpUpdatePosss
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z15MissileWarpTypeP12spritetypev7S0_
	jmp	L957
	.p2align 4,,10
	.p2align 3
L953:
	movl	%ecx, 8(%ebx)
	jmp	L952
	.p2align 4,,10
	.p2align 3
L965:
	movl	$65536, 64(%esp)
	movl	64(%esp), %eax
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
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z14getzrangepointiiisPiS_S_S_.part.0
	.def	__Z14getzrangepointiiisPiS_S_S_.part.0;	.scl	2;	.type	32;	.endef
__Z14getzrangepointiiisPiS_S_S_.part.0:
LFB61:
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
	subl	$72, %esp
	.cfi_def_cfa_offset 92
	movl	96(%esp), %ebx
	movl	104(%esp), %edi
	movl	%eax, 64(%esp)
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	movl	%ebx, 12(%esp)
	movswl	92(%esp), %ebx
	movl	%edx, 68(%esp)
	movl	%edx, 8(%esp)
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%edi, 16(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 60(%esp)
	call	_getzsofslopeptr
	movl	100(%esp), %edi
	movl	108(%esp), %esi
	leal	16384(%ebx), %eax
	movl	%eax, (%edi)
	movl	%eax, (%esi)
	movswl	_headspritesect(%ebx,%ebx), %ebp
	testl	%ebp, %ebp
	js	L987
	movl	%ebp, 20(%esp)
	jmp	L1008
	.p2align 4,,10
	.p2align 3
L993:
	movl	%ebx, %ecx
	xorl	%edx, %ecx
	js	L1022
L996:
	movl	%edx, %esi
	xorl	24(%esp), %esi
	js	L1023
L1000:
	movl	24(%esp), %edx
	movl	%edi, %esi
	xorl	%edx, %esi
	js	L1024
L1004:
	testb	%al, %al
	je	L989
	movl	56(%esp), %eax
	cmpl	60(%esp), %eax
	jge	L1007
	movl	96(%esp), %edi
	cmpl	(%edi), %eax
	jle	L989
	movl	%eax, (%edi)
	movl	20(%esp), %eax
	movl	100(%esp), %ebx
	addl	$49152, %eax
	movl	%eax, (%ebx)
	.p2align 6
	.p2align 4
	.p2align 3
L989:
	movl	20(%esp), %eax
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	js	L987
L1008:
	imull	$44, 20(%esp), %ecx
	addl	_sprite, %ecx
	movzwl	12(%ecx), %eax
	movl	%eax, %edx
	andl	$49, %edx
	cmpw	$33, %dx
	jne	L989
	movl	8(%ecx), %ebx
	movl	%eax, %edi
	andl	$8, %edi
	movl	%ebx, 56(%esp)
	testb	$64, %al
	je	L990
	cmpl	60(%esp), %ebx
	movl	%edi, %edx
	setl	%bl
	shrw	$3, %dx
	xorl	$1, %edx
	cmpb	%dl, %bl
	je	L989
L990:
	movswl	14(%ecx), %esi
	movsbl	22(%ecx), %ebp
	movsbl	_picanm+1(%esi,%esi,4), %ebx
	movsbl	_picanm+2(%esi,%esi,4), %edx
	addl	%ebp, %ebx
	movsbl	23(%ecx), %ebp
	addl	%ebp, %edx
	movl	%ebx, %ebp
	negl	%ebp
	testb	$4, %al
	movl	%edx, %eax
	cmovne	%ebp, %ebx
	negl	%eax
	testw	%di, %di
	movswl	28(%ecx), %edi
	cmovne	%eax, %edx
	movzbl	20(%ecx), %ebp
	leal	512(%edi), %eax
	movswl	_sintable(%edi,%edi), %edi
	movl	%ebp, 36(%esp)
	andl	$2047, %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz(,%esi,4), %edi
	movswl	_sintable(%eax,%eax), %eax
	movl	%edi, %ebp
	movl	%edi, 32(%esp)
	sarl	%ebp
	movl	%eax, 24(%esp)
	movl	28(%esp), %eax
	addl	%ebp, %ebx
	movl	36(%esp), %ebp
	imull	%ebp, %ebx
	movl	%ebx, %edi
	movswl	_tilesiz+2(,%esi,4), %ebx
	movzbl	21(%ecx), %esi
	movl	%edi, 40(%esp)
	movl	%ebx, %ebp
	movl	%esi, 48(%esp)
	sarl	%ebp
	movl	%ebx, 44(%esp)
	addl	%edx, %ebp
	movl	%edi, %edx
	imull	%esi, %ebp
	movl	24(%esp), %esi
	movl	%ebp, %edi
/APP
 # 4762 "source/sw/src/sprite.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	(%ecx), %eax
	movl	24(%esp), %esi
	movl	%ebp, %edx
	movl	%eax, %ebx
	subl	64(%esp), %ebx
	movl	28(%esp), %eax
	movl	%ebx, 52(%esp)
	movl	40(%esp), %edi
	negl	%esi
/APP
 # 4763 "source/sw/src/sprite.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	4(%ecx), %eax
	movl	32(%esp), %ecx
	imull	36(%esp), %ecx
	movl	%eax, %edi
	movl	28(%esp), %eax
	subl	68(%esp), %edi
	movl	%ecx, %edx
/APP
 # 4765 "source/sw/src/sprite.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	52(%esp), %ebp
	movl	%ecx, %edx
	movl	%ebp, %esi
	subl	%eax, %esi
	movl	24(%esp), %eax
/APP
 # 4766 "source/sw/src/sprite.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %ecx
	imull	48(%esp), %ecx
	leal	(%edi,%eax), %ebx
	movl	24(%esp), %eax
	movl	%ecx, %edx
/APP
 # 4768 "source/sw/src/sprite.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, 32(%esp)
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	28(%esp), %eax
	movl	%edx, 36(%esp)
	movl	%ecx, %edx
/APP
 # 4771 "source/sw/src/sprite.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edi, %ecx
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, 24(%esp)
	movl	%edi, %ecx
	xorl	%ebx, %ecx
	jns	L993
	movl	%ebp, %eax
	movl	%ebp, %ecx
	notl	%eax
	shrl	$31, %eax
	xorl	%esi, %ecx
	jns	L993
	movl	%ebp, %ecx
	movl	%edi, %eax
	imull	%ebx, %ecx
	imull	%esi, %eax
	cmpl	%eax, %ecx
	setl	%al
	cmpl	%ebx, %edi
	setl	%cl
	xorl	%ecx, %eax
	movl	%ebx, %ecx
	xorl	%edx, %ecx
	jns	L996
	.p2align 4
	.p2align 3
L1022:
	movl	32(%esp), %ecx
	movl	%ecx, %ebp
	xorl	%esi, %ebp
	js	L1025
	movl	%eax, %ecx
	xorl	$1, %ecx
	testl	%esi, %esi
	movl	%edx, %esi
	cmovns	%ecx, %eax
	xorl	24(%esp), %esi
	jns	L1000
L1023:
	movl	32(%esp), %esi
	movl	36(%esp), %ebp
	movl	%esi, %ecx
	xorl	%ebp, %ecx
	js	L1026
	movl	32(%esp), %ebx
	movl	%eax, %edx
	movl	%edi, %esi
	xorl	$1, %edx
	testl	%ebx, %ebx
	cmovns	%edx, %eax
	movl	24(%esp), %edx
	xorl	%edx, %esi
	jns	L1004
L1024:
	movl	52(%esp), %ebx
	movl	36(%esp), %ecx
	movl	%ebx, %esi
	xorl	%ecx, %esi
	js	L1027
	movl	36(%esp), %ecx
	movl	%eax, %edx
	xorl	$1, %edx
	testl	%ecx, %ecx
	cmovns	%edx, %eax
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1007:
	movl	104(%esp), %edi
	movl	56(%esp), %eax
	cmpl	(%edi), %eax
	jge	L989
	movl	%eax, (%edi)
	movl	20(%esp), %eax
	movl	108(%esp), %edi
	addl	$49152, %eax
	movl	%eax, (%edi)
	jmp	L989
	.p2align 4,,10
	.p2align 3
L987:
	addl	$72, %esp
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
L1026:
	.cfi_restore_state
	imull	%ebp, %edx
	imull	24(%esp), %esi
	cmpl	%edx, %esi
	setl	%dl
	cmpl	%ebx, %edi
	setg	%cl
	xorl	%ecx, %edx
	xorl	%edx, %eax
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1027:
	imull	%edi, %ecx
	movl	%edx, %esi
	imull	%edx, %ebx
	cmpl	%ebx, %ecx
	setl	%dl
	cmpl	%esi, %edi
	setg	%cl
	xorl	%ecx, %edx
	xorl	%edx, %eax
	jmp	L1004
	.p2align 4,,10
	.p2align 3
L1025:
	imull	%edx, %esi
	imull	%ebx, %ecx
	cmpl	%ecx, %esi
	setl	%cl
	cmpl	%edx, %ebx
	movl	%ecx, %ebp
	setl	%cl
	movl	%ecx, %esi
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	xorl	%ecx, %eax
	jmp	L996
	.cfi_endproc
LFE61:
.lcomm __ZL13MdrUziGrabTic,36,32
	.section .rdata,"dr"
	.align 4
_PlayerGetItemVocs:
	.long	267
	.long	439
	.long	438
	.long	331
	.long	333
.lcomm __ZL9globlohit,4,4
.lcomm __ZL9globhihit,4,4
.lcomm __ZL7globhiz,4,4
.lcomm __ZL7globloz,4,4
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z12FAFgetzrangeiiisPiS_S_S_ii;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteControlv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z11IconDefaults;	.scl	2;	.type	32;	.endef
	.def	__Z11BunnyHatch2s;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z9DoItemFlys;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateKeysP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerUpdateArmorP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdateInventoryP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z11CON_MessagePKcz;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17FAFgetzrangepointiiisPiS_S_S_;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z9WarpPlanePiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	__Z4WarpPiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
