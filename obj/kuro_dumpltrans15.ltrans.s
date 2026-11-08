	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z10PlayerSyncv
	.def	__Z10PlayerSyncv;	.scl	2;	.type	32;	.endef
__Z10PlayerSyncv:
LFB0:
	.cfi_startproc
	movl	_connecthead, %eax
	testw	%ax, %ax
	js	L5
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movswl	%ax, %edx
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.p2align 4
	.p2align 3
L4:
	imull	$24124, %edx, %ecx
	movzbl	%ah, %esi
	sall	$8, %eax
	movzbl	_Player(%ecx), %ebx
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	movzbl	_Player+4(%ecx), %ebx
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	movzbl	_Player+8(%ecx), %ebx
	movl	_Player+300(%ecx), %ecx
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	movl	%ecx, %esi
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	sarl	$31, %esi
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorw	%si, %si
	leal	32768(%esi,%ecx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %ecx
	cmovns	%esi, %ecx
	sarl	$16, %ecx
	movzbl	%cl, %ecx
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movl	_connectpoint2(,%edx,4), %ecx
	movswl	%cx, %edx
	testw	%cx, %cx
	jns	L4
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L5:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z11PlayerSync2v
	.def	__Z11PlayerSync2v;	.scl	2;	.type	32;	.endef
__Z11PlayerSync2v:
LFB1:
	.cfi_startproc
	movl	_connecthead, %eax
	testw	%ax, %ax
	js	L17
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movswl	%ax, %edx
	xorl	%eax, %eax
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L16:
	imull	$24124, %edx, %ecx
	movzbl	%ah, %esi
	sall	$8, %eax
	movl	_Player+288(%ecx), %ebx
	movl	%ebx, %edi
	sarl	$31, %edi
	xorw	%di, %di
	leal	32768(%edi,%ebx), %edi
	testl	%edi, %edi
	leal	65535(%edi), %ebx
	cmovns	%edi, %ebx
	sarl	$16, %ebx
	movzbl	%bl, %ebx
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	movswl	_Player+348(%ecx), %ebx
	movzbl	%ah, %esi
	movzbl	_Player+384(%ecx), %ecx
	sall	$8, %eax
	movl	_User(,%ebx,4), %ebx
	movzbl	84(%ebx), %ebx
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movl	_connectpoint2(,%edx,4), %ecx
	movswl	%cx, %edx
	testw	%cx, %cx
	jns	L16
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
L17:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z6SOSyncv
	.def	__Z6SOSyncv;	.scl	2;	.type	32;	.endef
__Z6SOSyncv:
LFB2:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$_SectorObject, %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L25:
	movzbl	180(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	addl	$6028, %edx
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-5844(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-5840(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-5836(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-2806(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-2804(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	movzbl	-2468(%edx), %ecx
	movzbl	%ah, %ebx
	sall	$8, %eax
	xorl	%ebx, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %ax
	cmpl	$_SectorObject+120560, %edx
	jne	L25
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z9EnemySyncv
	.def	__Z9EnemySyncv;	.scl	2;	.type	32;	.endef
__Z9EnemySyncv:
LFB3:
	.cfi_startproc
	movzwl	_headspritestat+4, %edx
	movl	_sprite, %ecx
	xorl	%eax, %eax
	cmpw	$-1, %dx
	je	L37
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L30:
	movswl	%dx, %ebx
	movzbl	%ah, %edi
	sall	$8, %eax
	movzwl	_nextspritestat(%ebx,%ebx), %edx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzbl	(%ebx), %esi
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	4(%ebx), %esi
	movzbl	%ah, %edi
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	8(%ebx), %esi
	movzbl	%ah, %edi
	movzbl	28(%ebx), %ebx
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	cmpw	$-1, %dx
	jne	L30
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
L37:
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z11MissileSyncv
	.def	__Z11MissileSyncv;	.scl	2;	.type	32;	.endef
__Z11MissileSyncv:
LFB4:
	.cfi_startproc
	movzwl	_headspritestat+8, %edx
	movl	_sprite, %ecx
	xorl	%eax, %eax
	cmpw	$-1, %dx
	je	L47
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L40:
	movswl	%dx, %ebx
	movzbl	%ah, %edi
	sall	$8, %eax
	movzwl	_nextspritestat(%ebx,%ebx), %edx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzbl	(%ebx), %esi
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	4(%ebx), %esi
	movzbl	%ah, %edi
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	8(%ebx), %esi
	movzbl	%ah, %edi
	movzbl	28(%ebx), %ebx
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	cmpw	$-1, %dx
	jne	L40
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
L47:
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z16MissileSkip4Syncv
	.def	__Z16MissileSkip4Syncv;	.scl	2;	.type	32;	.endef
__Z16MissileSkip4Syncv:
LFB5:
	.cfi_startproc
	movzwl	_headspritestat+14, %edx
	movl	_sprite, %ecx
	xorl	%eax, %eax
	cmpw	$-1, %dx
	je	L57
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L50:
	movswl	%dx, %ebx
	movzbl	%ah, %edi
	sall	$8, %eax
	movzwl	_nextspritestat(%ebx,%ebx), %edx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzbl	(%ebx), %esi
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	4(%ebx), %esi
	movzbl	%ah, %edi
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	8(%ebx), %esi
	movzbl	%ah, %edi
	movzbl	28(%ebx), %ebx
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	cmpw	$-1, %dx
	jne	L50
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
L57:
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z9ShrapSyncv
	.def	__Z9ShrapSyncv;	.scl	2;	.type	32;	.endef
__Z9ShrapSyncv:
LFB6:
	.cfi_startproc
	movzwl	_headspritestat+10, %edx
	movl	_sprite, %ecx
	xorl	%eax, %eax
	cmpw	$-1, %dx
	je	L67
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L60:
	movswl	%dx, %ebx
	movzbl	%ah, %edi
	sall	$8, %eax
	movzwl	_nextspritestat(%ebx,%ebx), %edx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzbl	(%ebx), %esi
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	4(%ebx), %esi
	movzbl	%ah, %edi
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	8(%ebx), %esi
	movzbl	%ah, %edi
	movzbl	28(%ebx), %ebx
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	cmpw	$-1, %dx
	jne	L60
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
L67:
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z8MiscSyncv
	.def	__Z8MiscSyncv;	.scl	2;	.type	32;	.endef
__Z8MiscSyncv:
LFB7:
	.cfi_startproc
	movzwl	_headspritestat+2, %edx
	movl	_sprite, %ecx
	xorl	%eax, %eax
	cmpw	$-1, %dx
	je	L77
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.p2align 4
	.p2align 3
L70:
	movswl	%dx, %ebx
	movzbl	%ah, %edi
	sall	$8, %eax
	movzwl	_nextspritestat(%ebx,%ebx), %edx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzbl	(%ebx), %esi
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	4(%ebx), %esi
	movzbl	%ah, %edi
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	8(%ebx), %esi
	movzbl	%ah, %edi
	movzbl	28(%ebx), %ebx
	sall	$8, %eax
	xorl	%edi, %esi
	xorw	__ZL8crctable.lto_priv.0(,%esi,4), %ax
	movzbl	%ah, %esi
	sall	$8, %eax
	xorl	%esi, %ebx
	xorw	__ZL8crctable.lto_priv.0(,%ebx,4), %ax
	cmpw	$-1, %dx
	jne	L70
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
L77:
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z10RandomSyncv
	.def	__Z10RandomSyncv;	.scl	2;	.type	32;	.endef
__Z10RandomSyncv:
LFB8:
	.cfi_startproc
	movl	_randomseed, %eax
	movzbl	%al, %edx
	movl	__ZL8crctable.lto_priv.0(,%edx,4), %edx
	xorl	%edx, %eax
	sall	$8, %edx
	movzbl	%ah, %eax
	xorw	__ZL8crctable.lto_priv.0(,%eax,4), %dx
	cmpw	$1, _NumSyncBytes
	je	L84
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L84:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	%edx, (%esp)
	call	__Z10PlayerSyncv
	movl	(%esp), %edx
	movzbl	%al, %eax
	movzbl	%dh, %ecx
	sall	$8, %edx
	xorl	%eax, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %dx
	movl	%edx, (%esp)
	call	__Z11PlayerSync2v
	movl	(%esp), %edx
	movzbl	%al, %eax
	movzbl	%dh, %ecx
	sall	$8, %edx
	xorl	%eax, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %dx
	movl	%edx, (%esp)
	call	__Z11MissileSyncv
	movl	(%esp), %edx
	movzbl	%al, %eax
	movzbl	%dh, %ecx
	sall	$8, %edx
	xorl	%eax, %ecx
	xorw	__ZL8crctable.lto_priv.0(,%ecx,4), %dx
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__Z17TrackTowardPlayerP12spritetypev7P5TRACKP11TRACK_POINT;	.scl	3;	.type	32;	.endef
__Z17TrackTowardPlayerP12spritetypev7P5TRACKP11TRACK_POINT:
LFB9:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%edx), %ebx
	cmpl	%ecx, %ebx
	je	L88
L86:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, %eax
	subl	(%ebx), %eax
	movl	%eax, %edi
	negl	%edi
	cmovns	%edi, %eax
	movl	%ecx, %edi
	subl	4(%ebx), %edi
	movl	%edi, %ebx
	negl	%edi
	cmovns	%edi, %ebx
	subl	(%esi), %edx
	movl	%edx, %edi
	negl	%edi
	cmovns	%edi, %edx
	subl	4(%esi), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovns	%esi, %ecx
	cmpl	%ecx, %edx
	leal	(%edx,%ecx), %esi
	cmovg	%ecx, %edx
	sarl	%edx
	subl	%edx, %esi
	cmpl	%ebx, %eax
	leal	(%eax,%ebx), %edx
	cmovg	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	sarl	%eax
	subl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%edx, %esi
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	setg	%al
	ret
	.p2align 4,,10
	.p2align 3
L88:
	.cfi_restore_state
	movswl	10(%edx), %edx
	leal	-5(%edx,%edx,4), %edx
	leal	(%ebx,%edx,4), %ebx
	jmp	L86
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z20TestVatorMatchActives
	.def	__Z20TestVatorMatchActives;	.scl	2;	.type	32;	.endef
__Z20TestVatorMatchActives:
LFB11:
	.cfi_startproc
	movswl	_headspritestat+140, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	8(%esp), %ebx
	cmpw	$-1, %ax
	je	L90
	movl	_sprite, %ecx
	jmp	L91
	.p2align 5
	.p2align 4,,10
	.p2align 3
L93:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L90
L91:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$92, 40(%edx)
	jne	L93
	cmpw	%bx, 38(%edx)
	jne	L93
	testb	$8, 43(%edx)
	jne	L93
	movl	_User(,%eax,4), %edx
	testb	$8, 68(%edx)
	jne	L96
	movl	76(%edx), %edx
	testl	%edx, %edx
	je	L93
L96:
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L90:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z21MoveSpritesWithSectorsih
	.def	__Z21MoveSpritesWithSectorsih;	.scl	2;	.type	32;	.endef
__Z21MoveSpritesWithSectorsih:
LFB12:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %eax
	movl	%ebp, 12(%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	24(%esp), %ebp
	movl	_SectUser(,%eax,4), %edx
	movzwl	_headspritesect(%eax,%eax), %ecx
	testl	%edx, %edx
	je	L170
	cmpw	$-1, %cx
	je	L103
	movl	%ebx, (%esp)
	movl	_sprite, %esi
	movl	%edi, 8(%esp)
	testb	$-128, 4(%edx)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	je	L106
	movl	$-1171354717, %edi
	cmpb	$0, 28(%esp)
	je	L111
	.p2align 4
	.p2align 3
L126:
	movswl	%cx, %edx
	imull	$44, %edx, %ebx
	movzwl	_nextspritesect(%edx,%edx), %ecx
	movl	_User(,%edx,4), %edx
	addl	%esi, %ebx
	movswl	26(%ebx), %eax
	testl	%edx, %edx
	je	L171
	cmpw	$10, %ax
	je	L124
	jg	L125
	cmpw	$8, %ax
	jne	L121
L124:
	testb	$32, 42(%ebx)
	jne	L121
	testb	$32, 13(%ebx)
	jne	L172
L123:
	leal	8(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebp, 8(%ebx)
L121:
	cmpw	$-1, %cx
	jne	L126
L168:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %edi
	.cfi_restore 7
L103:
	movl	4(%esp), %esi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L174:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	8(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebp, 8(%ebx)
L110:
	cmpw	$-1, %cx
	je	L168
L111:
	movswl	%cx, %edx
	imull	$44, %edx, %ebx
	movzwl	_nextspritesect(%edx,%edx), %ecx
	movl	_User(,%edx,4), %edx
	addl	%esi, %ebx
	movswl	26(%ebx), %eax
	testl	%edx, %edx
	je	L173
	cmpw	$10, %ax
	je	L108
	jg	L109
	cmpw	$8, %ax
	jne	L110
L108:
	testb	$32, 42(%ebx)
	jne	L110
	testb	$32, 13(%ebx)
	je	L110
	jmp	L174
	.p2align 4,,10
	.p2align 3
L173:
	subl	$43, %eax
	cmpl	$1, %eax
	ja	L108
	cmpw	$-1, %cx
	jne	L111
	jmp	L168
	.p2align 4,,10
	.p2align 3
L171:
	subl	$43, %eax
	cmpl	$1, %eax
	ja	L124
	jmp	L121
	.p2align 4,,10
	.p2align 3
L109:
	subl	$39, %eax
	cmpw	$3, %ax
	jbe	L108
	cmpw	$-1, %cx
	jne	L111
	jmp	L168
	.p2align 4,,10
	.p2align 3
L125:
	subl	$39, %eax
	cmpw	$3, %ax
	jbe	L124
	jmp	L121
	.p2align 4,,10
	.p2align 3
L172:
	cmpb	$1, 28(%esp)
	jne	L123
	jmp	L121
	.p2align 4,,10
	.p2align 3
L170:
	.cfi_restore 3
	.cfi_restore 7
	cmpw	$-1, %cx
	je	L103
	movl	%ebx, (%esp)
	movl	_sprite, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
L106:
	movl	$-1171354717, %edi
	jmp	L118
	.p2align 4,,10
	.p2align 3
L113:
	cmpw	$10, %ax
	je	L116
	jg	L117
	cmpw	$8, %ax
	jne	L115
L116:
	testb	$32, 42(%ebx)
	jne	L115
	leal	8(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebp, 8(%ebx)
L115:
	cmpw	$-1, %cx
	je	L168
L118:
	movswl	%cx, %edx
	imull	$44, %edx, %ebx
	movzwl	_nextspritesect(%edx,%edx), %ecx
	movl	_User(,%edx,4), %edx
	addl	%esi, %ebx
	movswl	26(%ebx), %eax
	testl	%edx, %edx
	jne	L113
	subl	$43, %eax
	cmpl	$1, %eax
	ja	L116
	jmp	L115
	.p2align 4,,10
	.p2align 3
L117:
	subl	$39, %eax
	cmpw	$3, %ax
	jbe	L116
	jmp	L115
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z11DoVatorMovesPi
	.def	__Z11DoVatorMovesPi;	.scl	2;	.type	32;	.endef
__Z11DoVatorMovesPi:
LFB13:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %eax
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	20(%esp), %ebx
	movl	_User(,%eax,4), %esi
	movl	(%ebx), %eax
	movl	164(%esi), %ecx
	cmpl	%eax, %ecx
	jle	L176
	movl	%edi, 8(%esp)
	movzwl	172(%esi), %edx
	.cfi_offset 7, -8
	movswl	92(%esi), %edi
	leal	(%edx,%edx,2), %edx
	addl	%edi, %edx
	movw	%dx, 92(%esi)
	leal	(%edi,%edi,2), %edx
	movl	8(%esp), %edi
	.cfi_restore 7
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
L176:
	cmpl	%eax, %ecx
	jge	L177
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movzwl	172(%esi), %edi
	movswl	92(%esi), %edx
	leal	(%edi,%edi,2), %edi
	addl	%edx, %edi
	movw	%di, 92(%esi)
	leal	0(,%edx,4), %esi
	movl	8(%esp), %edi
	.cfi_restore 7
	subl	%esi, %edx
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
L177:
	movl	%eax, %edx
	subl	(%ebx), %edx
	movl	%eax, (%ebx)
	movl	%edx, %eax
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z9SetupSumos
	.def	__Z9SetupSumos;	.scl	2;	.type	32;	.endef
__Z9SetupSumos:
LFB14:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L180
	movl	_User(,%edi,4), %esi
L181:
	movzwl	_Skill, %eax
	testw	%ax, %ax
	jne	L182
	movl	$2000, %ecx
	movw	%cx, 84(%esi)
L183:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L184
	movl	$0, 76(%eax)
	movl	$_s_SumoRun, 24(%eax)
	movl	$_s_SumoRun, 16(%eax)
	movswl	_s_SumoRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L184
	andl	$63, %eax
	movb	%al, 3(%edx)
L184:
	movl	$_SumoAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_SumoDie, 28(%esi)
	movl	$_sg_SumoRun, 20(%esi)
	movl	%edi, (%esp)
	movl	$-1171354717, %edi
	movl	$_SumoPersonality, 8(%esp)
	movl	$_SumoActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %ebp
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$-128, 18(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	%edx, %ecx
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	shrl	$5, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$16, 17(%ebx)
	movl	%eax, _spritechanged(,%edx,4)
	je	L194
	movb	$115, 20(%ebx)
	xorl	%eax, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movb	$75, 21(%ebx)
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
L182:
	.cfi_restore_state
	cmpw	$1, %ax
	jne	L183
	movl	$4000, %edx
	movw	%dx, 84(%esi)
	jmp	L183
	.p2align 4,,10
	.p2align 3
L194:
	movl	$500, %eax
	movb	$43, 20(%ebx)
	addl	$1, _spritechanged(,%ecx,4)
	movb	$29, 21(%ebx)
	movw	%ax, 84(%esi)
	xorl	%eax, %eax
	movl	$_MiniSumoActionSet, 40(%esi)
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
L180:
	.cfi_restore_state
	movl	$_s_SumoRun, %ecx
	movl	$1210, %edx
	movl	%edi, %eax
	movl	$6000, %ebp
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%bp, 84(%eax)
	jmp	L181
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z8NullSumos
	.def	__Z8NullSumos;	.scl	2;	.type	32;	.endef
__Z8NullSumos:
LFB16:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	movl	_User(,%eax,4), %edx
	testb	$-128, 68(%edx)
	je	L198
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L198:
	.cfi_restore_state
	movl	%eax, (%esp)
	movl	%eax, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z12DoSumoRumbles
	.def	__Z12DoSumoRumbles;	.scl	2;	.type	32;	.endef
__Z12DoSumoRumbles:
LFB17:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$120, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z12InitSumoFarts
	.def	__Z12InitSumoFarts;	.scl	2;	.type	32;	.endef
__Z12InitSumoFarts:
LFB19:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %ecx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movswl	56(%esp), %esi
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	imull	$44, %esi, %ebp
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	leal	8(%ecx,%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ecx,%ebp), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$394, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	leal	(%ecx,%ebp), %edx
	movl	28(%esp), %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	%esi, %eax
	call	__Z12InitChemBombs.isra.0
	movl	_sprite, %eax
	movl	$4000, 24(%esp)
	movl	$4, 20(%esp)
	addl	%ebp, %eax
	movl	$60, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	%esi, 56(%esp)
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z14InitSumoNapalms
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z13InitSumoStomps
	.def	__Z13InitSumoStomps;	.scl	2;	.type	32;	.endef
__Z13InitSumoStomps:
LFB21:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %ecx
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movswl	56(%esp), %ebp
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	imull	$44, %ebp, %ebx
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	leal	8(%ecx,%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ecx,%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$581, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	leal	(%ecx,%ebx), %edx
	movl	28(%esp), %ecx
	call	__Z9PlaySoundiPiS_S_i
	addl	_sprite, %ebx
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	$120, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	%ebp, 56(%esp)
	movl	36(%esp), %ebx
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z19InitSumoStompAttacks
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z12InitSumoClaps
	.def	__Z12InitSumoClaps;	.scl	2;	.type	32;	.endef
__Z12InitSumoClaps:
LFB22:
	.cfi_startproc
	movswl	4(%esp), %edx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	cmpb	$16, 17(%eax)
	je	L210
L206:
	movl	%edx, 4(%esp)
	jmp	__Z13InitSumoSkulls
	.p2align 4,,10
	.p2align 3
L210:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L206
	sall	$14, %eax
	cmpl	$860053724, %eax
	ja	L206
	movl	%edx, 4(%esp)
	jmp	__Z16InitMiniSumoClaps
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z11DoVatorAutos
	.def	__Z11DoVatorAutos;	.scl	2;	.type	32;	.endef
__Z11DoVatorAutos:
LFB24:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_sector, %edx
	movswl	32(%esp), %ecx
	movl	_User(,%ecx,4), %esi
	movl	140(%esi), %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %edi
	testb	$8, 12(%ebx)
	je	L212
	leal	4(%edi), %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	%ecx, (%esp)
	movl	%ebp, 4(%esp)
	call	__Z11DoVatorMovesPi
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	movl	4(%edi), %eax
	cmpl	164(%esi), %eax
	je	L226
L214:
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
L212:
	.cfi_restore_state
	leal	8(%edi), %ebp
	movl	%ebp, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	movl	%ebp, 4(%esp)
	call	__Z11DoVatorMovesPi
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	movl	8(%edi), %eax
	cmpl	164(%esi), %eax
	jne	L214
L226:
	movl	256(%esi), %edx
	cmpl	8(%ebx), %eax
	je	L227
	cmpl	%edx, %eax
	jne	L214
	movzwl	172(%esi), %edx
	movl	168(%esi), %eax
	movw	%ax, 92(%esi)
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	movw	%ax, 172(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 164(%esi)
	movswl	216(%esi), %eax
	movl	%eax, 76(%esi)
	movswl	34(%ebx), %eax
	testw	%ax, %ax
	je	L214
	testb	$4, 43(%ebx)
	je	L214
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L214
	.p2align 4,,10
	.p2align 3
L227:
	movswl	216(%esi), %eax
	negw	172(%esi)
	movl	%edx, 164(%esi)
	movl	%eax, 76(%esi)
	movswl	34(%ebx), %eax
	testw	%ax, %ax
	je	L214
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	144(%esi), %eax
	movl	%eax, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L214
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z15MissileHitMatchsss
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
__Z15MissileHitMatchsss:
LFB25:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %ebx
	movswl	36(%esp), %eax
	movzwl	32(%esp), %edi
	imull	$44, %eax, %eax
	addl	%eax, %ebx
	addl	$36, %eax
	mull	%esi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	testw	%di, %di
	js	L258
L229:
	leal	1(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %esi
	movl	%esi, %ecx
	testb	%cl, %cl
	jne	L233
	cmpw	$12, %di
	ja	L228
	movl	$5264, %eax
	movl	%edi, %ecx
	btl	%ecx, %eax
	jc	L255
L228:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L233:
	.cfi_restore_state
	leal	2(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %esi
	movl	%esi, %ecx
	cmpb	$1, %cl
	je	L259
	leal	3(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	cmpb	$2, 37(%ebx)
	je	L260
	addl	$4, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpb	$3, 37(%ebx)
	je	L261
L231:
	xorl	%esi, %esi
L262:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L258:
	.cfi_restore_state
	movswl	28(%esp), %ecx
	addl	$1, %eax
	movl	_User(,%ecx,4), %esi
	movzbl	273(%esi), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movsbw	%cl, %di
	cmpb	$4, 37(%ebx)
	jne	L229
	testb	$32, 74(%esi)
	je	L231
L255:
	movl	$-1, 8(%esp)
	movswl	40(%ebx), %eax
	movl	$1, %esi
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
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
L260:
	.cfi_restore_state
	cmpw	$12, %di
	ja	L231
	movl	$5532, %eax
	movl	%edi, %ecx
	btl	%ecx, %eax
	jc	L255
	xorl	%esi, %esi
	jmp	L262
	.p2align 4,,10
	.p2align 3
L261:
	cmpw	$13, %di
	ja	L231
	movl	$13727, %eax
	movl	%edi, %ecx
	btl	%ecx, %eax
	jc	L255
	xorl	%esi, %esi
	jmp	L262
	.p2align 4,,10
	.p2align 3
L259:
	cmpw	$12, %di
	ja	L231
	movl	$5520, %eax
	movl	%edi, %ecx
	btl	%ecx, %eax
	jnc	L231
	movl	$-1, 8(%esp)
	movswl	40(%ebx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L228
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z15DoSumoDeathMelts
	.def	__Z15DoSumoDeathMelts;	.scl	2;	.type	32;	.endef
__Z15DoSumoDeathMelts:
LFB26:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	_sprite, %ecx
	movswl	40(%esp), %esi
	imull	$44, %esi, %ebx
	movl	_User(,%esi,4), %ebp
	addl	%ecx, %ebx
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 16(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ebx), %eax
	movl	%eax, 12(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	12(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$394, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	16(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$1210, %edx
	movl	%esi, %eax
	movw	%dx, 82(%ebp)
	call	__Z12InitChemBombs.isra.0
	xorl	%ecx, %ecx
	movw	%cx, 82(%ebp)
	movl	$1, 8(%esp)
	movswl	38(%ebx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	cmpb	$0, _gs+27
	jne	L266
L264:
	movl	$-2, %eax
	movw	%ax, _BossSpriteNum+2
	addl	$20, %esp
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
L266:
	.cfi_restore_state
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	orb	_DemoMode, %al
	jne	L264
	movswl	_Level, %eax
	movl	$0, (%esp)
	movl	$1, %ecx
	movzbl	_RedBookSong(%eax), %edx
	xorl	%eax, %eax
	call	__Z8PlaySongPcihh.part.0
	jmp	L264
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z14CanSeeWallMoveP12spritetypev7s
	.def	__Z14CanSeeWallMoveP12spritetypev7s;	.scl	2;	.type	32;	.endef
__Z14CanSeeWallMoveP12spritetypev7s:
LFB28:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+158, %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movzwl	44(%esp), %esi
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	40(%esp), %edi
	cmpw	$-1, %bx
	je	L269
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	xorl	%edx, %edx
	jmp	L268
	.p2align 6
	.p2align 4,,10
	.p2align 3
L272:
	cmpw	$-1, %bx
	je	L280
L268:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	38(%eax), %si
	jne	L272
	movswl	24(%eax), %ebp
	movl	8(%edi), %ecx
	movl	4(%edi), %edx
	movl	%ebp, 16(%esp)
	movl	8(%eax), %ebp
	movl	%ebp, 12(%esp)
	movl	4(%eax), %ebp
	movl	%ebp, 8(%esp)
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	(%edi), %eax
	call	_cansee.constprop.0
	testl	%eax, %eax
	jne	L279
	movl	$1, %edx
	cmpw	$-1, %bx
	jne	L268
L280:
	movl	%edx, %eax
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	xorl	$1, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L279:
	.cfi_restore_state
	movl	32(%esp), %ebp
	.cfi_restore 5
L269:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	$1, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc
	.def	__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc;	.scl	2;	.type	32;	.endef
__Z22DisplayMiniBarSmStringP12PLAYERstructsssPKc:
LFB29:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, 40(%esp)
	movzwl	68(%esp), %eax
	.cfi_offset 3, -20
	movl	76(%esp), %ebx
	movl	%esi, 44(%esp)
	movw	%ax, 36(%esp)
	.cfi_offset 6, -16
	movzwl	64(%esp), %esi
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L281
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movl	36(%esp), %edi
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	sall	$16, %edi
	.p2align 4
	.p2align 3
L284:
	cmpb	$32, %al
	je	L283
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L283
	subl	$1, %ecx
	js	L283
	movl	%edx, 28(%esp)
	movzbl	72(%esp), %edx
	addl	$2897, %eax
	movl	%esi, %ebp
	movl	%ecx, 32(%esp)
	sall	$16, %ebp
	movl	$65536, %ecx
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L283:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	addl	$4, %esi
	testb	%al, %al
	jne	L284
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
L281:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	addl	$56, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z15DisplaySmStringP12PLAYERstructsssPKc
	.def	__Z15DisplaySmStringP12PLAYERstructsssPKc;	.scl	2;	.type	32;	.endef
__Z15DisplaySmStringP12PLAYERstructsssPKc:
LFB32:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	44(%esp), %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movzwl	32(%esp), %esi
	movl	%edi, 16(%esp)
	movzbl	(%ebx), %eax
	.cfi_offset 7, -12
	movzwl	40(%esp), %edi
	testb	%al, %al
	je	L293
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movswl	36(%esp), %ebp
	.p2align 4
	.p2align 3
L296:
	cmpb	$32, %al
	je	L295
	leal	2897(%eax), %edx
	movswl	%si, %eax
	movl	%ebp, 4(%esp)
	movl	$250, %ecx
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movw	%di, 246(%eax)
L295:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	addl	$4, %esi
	testb	%al, %al
	jne	L296
	movl	20(%esp), %ebp
	.cfi_restore 5
L293:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z11StringTimerP18PANEL_SPRITEstruct
	.def	__Z11StringTimerP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z11StringTimerP18PANEL_SPRITEstruct:
LFB33:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movzwl	248(%edx), %eax
	subl	$3, %eax
	movw	%ax, 248(%edx)
	testw	%ax, %ax
	jle	L308
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L308:
	.cfi_restore_state
	movl	32(%edx), %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	8(%esp), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.def	__Z10WarpToAreaP12spritetypev7PiS1_S1_Ps;	.scl	3;	.type	32;	.endef
__Z10WarpToAreaP12spritetypev7PiS1_S1_Ps:
LFB36:
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
	movl	%eax, %ebx
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	(%edx), %eax
	movl	%edx, 40(%esp)
	movl	%eax, 16(%esp)
	movl	(%ebx), %eax
	movl	$0, 44(%esp)
	movl	%eax, 28(%esp)
	movl	(%ecx), %eax
	movl	$0, 48(%esp)
	movzwl	38(%ebx), %ecx
	movl	%eax, 20(%esp)
	movl	4(%ebx), %eax
	movl	$0, 52(%esp)
	movl	%eax, 32(%esp)
	movl	96(%esp), %eax
	movl	$0, 56(%esp)
	movl	(%eax), %eax
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	%eax, 24(%esp)
	movl	8(%ebx), %eax
	movl	$0, 68(%esp)
	movl	%eax, 36(%esp)
	movl	$0, 72(%esp)
	movzwl	40(%ebx), %esi
	cmpw	$85, %si
	je	L320
	cmpw	$86, %si
	je	L321
	cmpw	$84, %si
	je	L336
	movl	$0, 12(%esp)
	xorl	%esi, %esi
L310:
	movswl	_headspritestat+124, %edx
	cmpw	$-1, %dx
	je	L314
	movl	_sprite, %edi
	jmp	L315
	.p2align 5
	.p2align 4,,10
	.p2align 3
L316:
	movswl	_nextspritestat(%edx,%edx), %edx
	cmpw	$-1, %dx
	je	L314
L315:
	imull	$44, %edx, %eax
	addl	%edi, %eax
	cmpw	%cx, 38(%eax)
	jne	L316
	cmpl	%eax, %ebx
	je	L316
	cmpw	40(%eax), %si
	jne	L316
	movswl	24(%eax), %edx
	cmpl	$4095, %edx
	ja	L314
	movl	40(%esp), %esi
	movl	16(%esp), %edx
	subl	28(%esp), %edx
	addl	(%eax), %edx
	movl	%edx, (%esi)
	movl	96(%esp), %ebx
	movl	20(%esp), %edx
	subl	32(%esp), %edx
	addl	4(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	24(%esp), %edx
	subl	36(%esp), %edx
	addl	8(%eax), %edx
	addl	12(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, (%ebx)
	movzwl	24(%eax), %edx
	movl	100(%esp), %eax
	movw	%dx, (%eax)
	movl	%eax, 8(%esp)
	movl	0(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	(%esi), %edx
	movl	%edx, (%esp)
	call	_updatesector
	movl	12(%esp), %eax
	addl	$76, %esp
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
L336:
	.cfi_restore_state
	movzwl	32(%ebx), %eax
	movl	$0, 12(%esp)
	testw	%ax, %ax
	je	L310
	sall	$16, %eax
	orl	%eax, %ecx
	movzwl	34(%ebx), %eax
	movl	%ecx, 44(%esp)
	testw	%ax, %ax
	je	L324
	movl	$3, %edx
	movw	%ax, 48(%esp)
	movl	$3, %edi
	movw	%dx, 12(%esp)
L311:
	movl	$-1171354717, %eax
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpb	$0, 37(%ebx)
	je	L312
	leal	2(%ecx), %eax
	addw	$1, 12(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %ecx
	movw	%cx, 44(%esp,%edi,2)
	movzwl	12(%esp), %edi
L312:
	leal	1(%eax), %ecx
	movl	%ecx, _spritechanged(,%edx,4)
	cmpb	$0, 36(%ebx)
	je	L313
	addl	$2, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	36(%ebx), %eax
	movw	%ax, 44(%esp,%edi,2)
	movzwl	12(%esp), %eax
	addl	$1, %eax
	movzwl	%ax, %edi
L313:
	movl	%edi, %eax
	call	__Z11RandomRangei
	movl	$0, 12(%esp)
	movzwl	44(%esp,%eax,2), %ecx
	jmp	L310
	.p2align 4,,10
	.p2align 3
L314:
	addl	$76, %esp
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
L321:
	.cfi_restore_state
	movl	$512, 12(%esp)
	movl	$85, %esi
	jmp	L310
	.p2align 4,,10
	.p2align 3
L320:
	movl	$-512, 12(%esp)
	movl	$86, %esi
	jmp	L310
L324:
	movl	$2, %eax
	movl	$2, %edi
	movw	%ax, 12(%esp)
	jmp	L311
	.cfi_endproc
LFE36:
	.p2align 4
	.def	__Z10MovePlayerP12PLAYERstructP19SECTOR_OBJECTstructii;	.scl	3;	.type	32;	.endef
__Z10MovePlayerP12PLAYERstructP19SECTOR_OBJECTstructii:
LFB37:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	52(%esp), %ebx
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	22968(%eax), %edx
	testl	$2060, %edx
	jne	L337
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	%esi, 22984(%eax)
	testl	$384, %edx
	je	L345
L339:
	addl	%ecx, (%eax)
	addl	%ebx, 4(%eax)
	testb	$2, 597(%esi)
	jne	L344
	movl	300(%eax), %ebp
	testb	$-128, 22968(%eax)
	jne	L346
	movzwl	340(%eax), %edx
	addl	%ecx, 332(%eax)
	addl	%ebx, 336(%eax)
	movl	%ebp, %ebx
	movl	%edx, %edi
	sall	$16, %edi
	subl	%edi, %ebx
	andl	$134217727, %ebx
L342:
	addw	_GlobSpeedSO, %dx
	movl	%ebx, 344(%eax)
	andw	$2047, %dx
	movl	%eax, 24(%esp)
	movswl	%dx, %edi
	movw	%dx, 340(%eax)
	movl	%edx, 28(%esp)
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	332(%eax), %edx
	movl	336(%eax), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	180(%esi), %eax
	movl	184(%esi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	sall	$16, %edx
	addl	%ebx, %edx
	andl	$134217727, %edx
	movl	%edx, %ebx
	movl	%edx, 300(%eax)
	subl	%ebp, %ebx
	movl	%ebx, %ecx
	addl	308(%eax), %ecx
	andl	$134217727, %ecx
	movl	%ecx, 308(%eax)
L344:
	movl	40(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z18UpdatePlayerSpriteP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L346:
	.cfi_restore_state
	movl	4(%eax), %ebx
	movl	(%eax), %ecx
	xorl	%edx, %edx
	movl	%ebx, 336(%eax)
	movl	%ebp, %ebx
	movl	%ecx, 332(%eax)
	jmp	L342
	.p2align 4,,10
	.p2align 3
L337:
	.cfi_restore 5
	.cfi_restore 7
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L345:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	orb	$1, %dh
	movl	(%eax), %edi
	movl	4(%eax), %ebp
	movl	%edx, 22968(%eax)
	movl	300(%eax), %edx
	movl	%edi, 332(%eax)
	movl	%edx, 344(%eax)
	xorl	%edx, %edx
	movl	%ebp, 336(%eax)
	movw	%dx, 340(%eax)
	jmp	L339
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__Z5MoveZP19SECTOR_OBJECTstruct;	.scl	3;	.type	32;	.endef
__Z5MoveZP19SECTOR_OBJECTstruct:
LFB38:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	movl	572(%eax), %edx
	testl	%edx, %edx
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L348
	movl	%ebp, 24(%esp)
	movswl	3566(%eax), %ecx
	movl	_totalsynctics, %eax
	.cfi_offset 5, -8
	movl	(%ebx), %ebp
	sall	%cl, %eax
	andl	$2047, %eax
	movw	%ax, 3564(%ebx)
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 544(%ebx)
	testl	%ebp, %ebp
	je	L387
	movl	_sector, %edi
	xorl	%ecx, %ecx
	.p2align 4
	.p2align 3
L351:
	movswl	%cx, %eax
	movswl	600(%ebx,%eax,2), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L349
	testb	$1, 4(%edx)
	jne	L350
L349:
	leal	8(%ebp), %edx
	movl	544(%ebx), %esi
	addl	208(%ebx,%eax,4), %esi
	movl	$-858993459, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%esi, 8(%ebp)
L350:
	addl	$1, %ecx
	movl	(%ebx,%ecx,4), %ebp
	testl	%ebp, %ebp
	jne	L351
L387:
	movl	24(%esp), %ebp
	.cfi_restore 5
L348:
	movl	596(%ebx), %edx
	testb	$32, %dl
	jne	L388
L353:
	testb	$16, %dl
	jne	L347
	testb	$8, %dl
	je	L358
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L359
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L360:
	addl	$8, %ecx
	movswl	%bp, %eax
	addl	$1, %ebp
	movl	532(%ebx), %esi
	movl	%ecx, %edx
	addl	208(%ebx,%eax,4), %esi
	subl	_sector, %edx
	movl	$-858993459, %eax
	mull	%edx
	movl	536(%ebx), %edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	call	__Z7AnimSetPiii
	movl	(%ebx,%ebp,4), %ecx
	testl	%ecx, %ecx
	jne	L360
	movl	596(%ebx), %edx
	movl	24(%esp), %ebp
	.cfi_restore 5
L359:
	andl	$-9, %edx
	movl	%edx, 596(%ebx)
L347:
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
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
L358:
	.cfi_restore_state
	testb	$4, %dl
	je	L347
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L361
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L362:
	addl	$8, %ecx
	movswl	%bp, %eax
	addl	$1, %ebp
	movl	532(%ebx), %esi
	movl	%ecx, %edx
	addl	208(%ebx,%eax,4), %esi
	subl	_sector, %edx
	movl	$-858993459, %eax
	mull	%edx
	movl	536(%ebx), %edi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	call	__Z7AnimSetPiii
	movl	(%ebx,%ebp,4), %ecx
	testl	%ecx, %ecx
	jne	L362
	movl	596(%ebx), %edx
	movl	24(%esp), %ebp
	.cfi_restore 5
L361:
	andl	$-5, %edx
	movl	%edx, 596(%ebx)
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
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
L388:
	.cfi_restore_state
	movswl	_AnimCnt, %esi
	testw	%si, %si
	jle	L354
	leal	188(%ebx), %edi
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L356:
	leal	(%eax,%eax,2), %ecx
	cmpl	_Anim(,%ecx,8), %edi
	je	L353
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L356
L354:
	andl	$-33, %edx
	movl	%edx, 596(%ebx)
	jmp	L353
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z14CallbackSOsinkP10ANIMstructPv
	.def	__Z14CallbackSOsinkP10ANIMstructPv;	.scl	2;	.type	32;	.endef
__Z14CallbackSOsinkP10ANIMstructPv:
LFB40:
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
	movl	_sector, %ebp
	movl	52(%esp), %esi
	movswl	600(%esi), %ecx
	cmpw	$-1, %cx
	je	L409
	movswl	%cx, %eax
	xorl	%edx, %edx
	.p2align 4
	.p2align 3
L393:
	movl	_SectUser(,%eax,4), %ebx
	testl	%ebx, %ebx
	je	L391
	testb	$2, 4(%ebx)
	jne	L392
L391:
	addl	$1, %edx
	movswl	%dx, %eax
	movswl	600(%esi,%eax,2), %eax
	cmpw	$-1, %ax
	jne	L393
	movl	$-40, 12(%esp)
	movl	$-1, %edi
L394:
	movl	%edi, 16(%esp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movl	%esi, 52(%esp)
	jmp	L396
	.p2align 6
	.p2align 4,,10
	.p2align 3
L395:
	movl	52(%esp), %eax
	addl	$1, %ebx
	movswl	%bx, %edi
	movswl	600(%eax,%edi,2), %ecx
	cmpw	$-1, %cx
	je	L436
L396:
	movl	48(%esp), %eax
	movl	(%eax), %esi
	leal	(%ecx,%ecx,4), %eax
	leal	8(%ebp,%eax,8), %ecx
	movl	$-858993459, %eax
	movl	%ecx, %edx
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	cmpl	%ecx, %esi
	jne	L395
	movl	52(%esp), %esi
	movl	%edi, %eax
	movl	16(%esp), %edi
	movswl	600(%esi,%eax,2), %esi
	leal	(%esi,%esi,4), %eax
	movl	%esi, 20(%esp)
	movl	%esi, %ecx
	sall	$3, %eax
	movl	%eax, 16(%esp)
L390:
	movl	12(%esp), %eax
	movl	16(%esp), %ebx
	movl	%ecx, 24(%esp)
	addl	%ebp, %eax
	addl	%ebp, %ebx
	movzwl	24(%eax), %edx
	movw	%dx, 24(%ebx)
	movzbl	28(%eax), %eax
	movl	$-858993459, %edx
	movb	%al, 28(%ebx)
	leal	14(%ebx), %eax
	subl	%ebp, %eax
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-65, 14(%ebx)
	call	__Z11GetSectUsers
	movl	%eax, %ebx
	movl	%edi, %eax
	call	__Z11GetSectUsers
	movzwl	_numsectors, %edx
	movl	%eax, %esi
	testw	%dx, %dx
	jle	L397
	movl	24(%esp), %ecx
	xorl	%eax, %eax
	jmp	L399
	.p2align 4
	.p2align 4,,10
	.p2align 3
L398:
	addl	$1, %eax
	cmpw	%dx, %ax
	je	L397
L399:
	cmpw	%ax, %cx
	jne	L398
	movl	48(%esp), %eax
	addl	$8, %ebx
	movl	8(%eax), %eax
	movl	%eax, 12(%esp)
	sall	$8, %eax
	sarl	$8, %eax
	movl	%eax, 8(%esp)
	movswl	10(%esi), %eax
	movl	%ebx, (%esp)
	sall	$16, %eax
	movl	%eax, 4(%esp)
	call	__Z7AnimSetPiii
	cmpw	$-1, %ax
	je	L397
	movl	48(%esp), %edi
	cwtl
	leal	(%eax,%eax,2), %eax
	movzwl	12(%edi), %edx
	movw	%dx, _Anim+12(,%eax,8)
L397:
	movl	20(%esp), %eax
	movl	48(%esp), %esi
	movzwl	_headspritesect(%eax,%eax), %ebx
	cmpw	$-1, %bx
	jne	L400
	jmp	L401
	.p2align 5
	.p2align 4,,10
	.p2align 3
L402:
	cmpw	$-1, %bx
	je	L401
L400:
	movswl	%bx, %eax
	movswl	%bx, %edx
	movzwl	_nextspritesect(%eax,%eax), %ebx
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L402
	movl	144(%eax), %ecx
	testl	%ecx, %ecx
	jne	L402
	testb	$64, 69(%eax)
	je	L402
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	8(%esi), %ebp
	movzbl	21(%edx), %edi
	movswl	14(%edx), %edx
	movl	256(%eax), %ecx
	sarl	$8, %ebp
	movswl	_tilesiz+2(,%edx,4), %edx
	negl	%ecx
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	cmpb	$64, %dl
	je	L437
	movzbl	%dl, %edi
	imull	12(%esp), %edi
	sall	$2, %edi
L404:
	subl	%edi, %ecx
	addl	$256, %eax
	movl	%ebp, 8(%esp)
	leal	-25600(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__Z7AnimSetPiii
	cmpw	$-1, %ax
	je	L402
	movzwl	12(%esi), %edx
	cwtl
	leal	(%eax,%eax,2), %eax
	movw	%dx, _Anim+12(,%eax,8)
	cmpw	$-1, %bx
	jne	L400
	.p2align 4
	.p2align 3
L401:
	movl	16(%esp), %ebp
	addl	_sector, %ebp
	movzwl	0(%ebp), %edx
	movzwl	2(%ebp), %esi
	movl	_wall, %ebx
	addl	%edx, %esi
	subl	$1, %esi
	cmpw	%dx, %si
	jl	L389
	.p2align 6
	.p2align 4
	.p2align 3
L408:
	movswl	%dx, %eax
	addl	$1, %edx
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	andw	$-2, 14(%ebx,%ecx)
	cmpw	%dx, %si
	jge	L408
L389:
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
L437:
	.cfi_restore_state
	movl	12(%esp), %edi
	sall	$8, %edi
	jmp	L404
	.p2align 4,,10
	.p2align 3
L436:
	movl	16(%esp), %edi
	movl	$-1, 20(%esp)
	movl	$-1, %esi
	movl	$-40, 16(%esp)
	jmp	L390
	.p2align 4,,10
	.p2align 3
L392:
	movl	%eax, %edi
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 12(%esp)
	jmp	L394
L409:
	movl	$-1, 20(%esp)
	movl	$-1, %edi
	movl	$-1, %esi
	movl	$-40, 16(%esp)
	movl	$-40, 12(%esp)
	jmp	L390
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_
	.def	__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_;	.scl	2;	.type	32;	.endef
__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_:
LFB42:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	40(%esp), %ebx
	movl	%esi, 24(%esp)
	movswl	3214(%ebx), %eax
	leal	(%eax,%eax,2), %ecx
	movswl	3216(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	.cfi_offset 6, -16
	leal	(%eax,%edx,4), %esi
	movl	192(%ebx), %eax
	testl	%eax, %eax
	jne	L550
L439:
	cmpl	$99, 548(%ebx)
	jg	L440
	movl	%edi, 28(%esp)
	movl	%ebp, 32(%esp)
	movzwl	14(%esi), %eax
	subw	$702, %ax
	cmpw	$27, %ax
	.cfi_remember_state
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	ja	L544
	movzwl	%ax, %eax
	jmp	*L443(,%eax,4)
	.section .rdata,"dr"
	.align 4
L443:
	.long	L464
	.long	L463
	.long	L462
	.long	L461
	.long	L460
	.long	L459
	.long	L544
	.long	L458
	.long	L457
	.long	L456
	.long	L455
	.long	L544
	.long	L544
	.long	L454
	.long	L453
	.long	L452
	.long	L451
	.long	L450
	.long	L449
	.long	L544
	.long	L544
	.long	L448
	.long	L447
	.long	L446
	.long	L445
	.long	L544
	.long	L444
	.long	L442
	.text
	.p2align 4,,10
	.p2align 3
L440:
	.cfi_restore_state
	movl	596(%ebx), %eax
	movl	192(%ebx), %esi
	testb	$1, %al
	je	L506
	movswl	44(%esp), %edx
	movswl	3218(%ebx), %ecx
	sall	%cl, %edx
	addl	%edx, %esi
	movl	196(%ebx), %edx
	cmpl	%edx, %esi
	jl	L549
	andl	$-2, %eax
	movl	%edx, 192(%ebx)
	movl	%edx, %esi
	movl	%eax, 596(%ebx)
	.p2align 4
	.p2align 3
L502:
	testl	%esi, %esi
	je	L438
	testb	$32, 596(%ebx)
	je	L551
L438:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L506:
	.cfi_restore_state
	testb	$2, %al
	je	L502
	movswl	44(%esp), %edx
	movswl	3218(%ebx), %ecx
	sall	%cl, %edx
	subl	%edx, %esi
	movl	196(%ebx), %edx
	cmpl	%edx, %esi
	jg	L549
	andl	$-3, %eax
	movl	%edx, 192(%ebx)
	movl	%edx, %esi
	movl	%eax, 596(%ebx)
	jmp	L502
	.p2align 4,,10
	.p2align 3
L550:
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	184(%ebx), %edx
	subl	180(%ebx), %ecx
	call	@getangle@8
	movw	%ax, 3550(%ebx)
	movw	%ax, 3224(%ebx)
	jmp	L439
	.p2align 4,,10
	.p2align 3
L549:
	movl	%esi, 192(%ebx)
	jmp	L502
	.p2align 4,,10
	.p2align 3
L444:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$-1, 8(%esp)
	movswl	16(%esi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	.p2align 4
	.p2align 3
L544:
	movswl	3214(%ebx), %edx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	leal	(%edx,%edx), %ecx
	.p2align 4
	.p2align 3
L465:
	leal	(%ecx,%edx), %esi
	movw	%ax, 3216(%ebx)
	movzwl	_Track+10(,%esi,4), %esi
	cmpw	%ax, %si
	jle	L498
	testw	%ax, %ax
	jns	L552
	subl	$1, %esi
	movw	%si, 3216(%ebx)
	movswl	%si, %esi
	leal	(%esi,%esi,4), %esi
	sall	$2, %esi
L500:
	addl	%edx, %ecx
	movl	184(%ebx), %edi
	addl	_Track(,%ecx,4), %esi
	movl	180(%ebx), %ecx
	movl	(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovs	%edx, %ebp
	cmpl	%ebp, %eax
	leal	(%eax,%ebp), %edx
	cmovg	%ebp, %eax
	sarl	%eax
	subl	%eax, %edx
	movl	%edx, 548(%ebx)
	movl	(%esi), %eax
	movl	4(%esi), %edx
	subl	%ecx, %eax
	subl	%edi, %edx
	movl	%eax, %ecx
	call	@getangle@8
	movl	596(%ebx), %edi
	movw	%ax, 3550(%ebx)
	movw	%ax, 3224(%ebx)
	testl	$16, %edi
	jne	L501
L547:
	movl	192(%ebx), %esi
L548:
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L502
	.p2align 4,,10
	.p2align 3
L498:
	.cfi_restore_state
	xorl	%esi, %esi
	movw	%si, 3216(%ebx)
	xorl	%esi, %esi
	jmp	L500
	.p2align 4,,10
	.p2align 3
L551:
	.cfi_restore 5
	.cfi_restore 7
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movswl	3224(%ebx), %eax
	sarl	$8, %esi
	movswl	44(%esp), %edx
	movl	48(%esp), %edi
	addl	$512, %eax
	imull	%edx, %esi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%esi, %eax
	sarl	$14, %eax
	movl	%eax, (%edi)
	movl	192(%ebx), %eax
	sarl	$8, %eax
	imull	%edx, %eax
	movswl	3224(%ebx), %edx
	movswl	_sintable(%edx,%edx), %edx
	imull	%edx, %eax
	movl	52(%esp), %edx
	sarl	$14, %eax
	movl	%eax, (%edx)
	movl	(%edi), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	%eax, %edx
	leal	(%edx,%eax), %ecx
	cmovg	%eax, %edx
	movl	%ecx, %eax
	sarl	%edx
	subl	%edx, %eax
	subl	%eax, 548(%ebx)
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L501:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esi), %eax
	subl	528(%ebx), %eax
	movl	(%esi), %ecx
	movl	%eax, %ebp
	subl	180(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	subl	184(%ebx), %eax
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	movl	192(%ebx), %esi
	movl	%eax, %ecx
	movl	188(%ebx), %eax
	subl	%ebp, %eax
	imull	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebp
	negl	%ebp
	cmovs	%eax, %ebp
	sarl	$8, %ebp
	andl	$256, %edi
	movl	%ebp, 536(%ebx)
	jne	L503
	movswl	600(%ebx), %eax
	xorl	%edi, %edi
	cmpw	$-1, %ax
	jne	L504
	jmp	L548
	.p2align 4,,10
	.p2align 3
L505:
	movl	536(%ebx), %ebp
L504:
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	movl	12(%esp), %esi
	addl	$1, %edi
	leal	(%edx,%eax,8), %ecx
	movswl	3202(%ebx), %eax
	addl	$8, %ecx
	leal	(%eax,%eax,4), %eax
	subl	8(%edx,%eax,8), %esi
	addl	(%ecx), %esi
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z7AnimSetPiii
	movswl	%di, %eax
	movswl	600(%ebx,%eax,2), %eax
	cmpw	$-1, %ax
	jne	L505
	jmp	L547
	.p2align 4,,10
	.p2align 3
L503:
	movl	12(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	%eax, 4(%esp)
	leal	188(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z7AnimSetPiii
	jmp	L547
	.p2align 4,,10
	.p2align 3
L463:
	movl	$0, 192(%ebx)
	movzwl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	sall	$7, %eax
	movw	%ax, 3208(%ebx)
	leal	(%edx,%edx), %ecx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L458:
	movl	596(%ebx), %ecx
	movzwl	3220(%ebx), %edi
	movzwl	3216(%ebx), %eax
	movl	532(%ebx), %ebp
	andl	$-13, %ecx
	movswl	3214(%ebx), %edx
	movl	%ecx, 596(%ebx)
	movswl	16(%esi), %esi
	addl	%edi, %eax
	sall	$8, %esi
	testw	%di, %di
	js	L553
L496:
	subl	%esi, %ebp
	orl	$4, %ecx
	movl	%ebp, 532(%ebx)
	movl	%ecx, 596(%ebx)
L546:
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L457:
	movl	596(%ebx), %ecx
	movzwl	3220(%ebx), %edi
	movzwl	3216(%ebx), %eax
	movl	532(%ebx), %ebp
	andl	$-13, %ecx
	movswl	3214(%ebx), %edx
	movl	%ecx, 596(%ebx)
	movswl	16(%esi), %esi
	addl	%edi, %eax
	sall	$8, %esi
	testw	%di, %di
	jle	L496
	orl	$8, %ecx
	addl	%ebp, %esi
	movl	%ecx, 596(%ebx)
	leal	(%edx,%edx), %ecx
	movl	%esi, 532(%ebx)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L455:
	orl	$16, 596(%ebx)
	movswl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	sall	$8, %eax
	movl	%eax, 528(%ebx)
	leal	(%edx,%edx), %ecx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L454:
	movzwl	3220(%ebx), %eax
	movswl	3214(%ebx), %edx
	addw	3216(%ebx), %ax
	cmpw	$0, 3558(%ebx)
	jne	L546
	movzwl	16(%esi), %ecx
	movw	%cx, 3558(%ebx)
	movzwl	3222(%ebx), %ecx
	movw	%cx, 3554(%ebx)
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L456:
	movswl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	sall	$8, %eax
	leal	(%edx,%edx), %ecx
	movl	%eax, 536(%ebx)
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L453:
	movzwl	3220(%ebx), %eax
	movswl	3214(%ebx), %edx
	addw	3216(%ebx), %ax
	cmpw	$0, 3558(%ebx)
	je	L546
	xorl	%ecx, %ecx
	movw	%cx, 3558(%ebx)
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L452:
	orl	$32768, 596(%ebx)
	movswl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	movl	$262144, 3564(%ebx)
	sall	$8, %eax
	movl	%eax, 572(%ebx)
	leal	(%edx,%edx), %ecx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L451:
	movzwl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	movw	%ax, 3566(%ebx)
	leal	(%edx,%edx), %ecx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L450:
	movswl	3214(%ebx), %edx
	movzwl	3220(%ebx), %eax
	movl	$0, 3564(%ebx)
	movl	$0, 572(%ebx)
	addw	3216(%ebx), %ax
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L449:
	movzwl	3558(%ebx), %ecx
	movzwl	3220(%ebx), %eax
	movswl	3214(%ebx), %edx
	addw	3216(%ebx), %ax
	testw	%cx, %cx
	jle	L546
	negl	%ecx
	movw	%cx, 3558(%ebx)
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L448:
	movswl	600(%ebx), %eax
	xorl	%ecx, %ecx
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L467
	.p2align 4
	.p2align 3
L466:
	movswl	%dx, %edi
	movl	_SectUser(,%edi,4), %edi
	testl	%edi, %edi
	je	L478
	testb	$2, 4(%edi)
	jne	L467
L478:
	addl	$1, %ecx
	movswl	%cx, %edx
	movswl	600(%ebx,%edx,2), %edx
	cmpw	$-1, %dx
	jne	L466
L467:
	movl	$0, 3564(%ebx)
	movl	(%ebx), %ecx
	movl	$0, 572(%ebx)
	testl	%ecx, %ecx
	je	L544
	leal	(%edx,%edx,4), %edi
	movl	%esi, 16(%esp)
	movl	%edi, 12(%esp)
	xorl	%edi, %edi
	jmp	L483
	.p2align 4,,10
	.p2align 3
L482:
	movswl	%di, %eax
	movswl	600(%ebx,%eax,2), %eax
L483:
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L480
	testb	$4, 4(%eax)
	jne	L481
L480:
	movl	16(%esp), %eax
	movl	_sector, %edx
	addl	$8, %ecx
	movswl	16(%eax), %ebp
	movl	12(%esp), %eax
	movl	8(%edx,%eax,8), %esi
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebp, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z7AnimSetPiii
	cmpw	$-1, %ax
	je	L481
	cwtl
	movl	$6, %edx
	leal	(%eax,%eax,2), %eax
	movl	$__Z14CallbackSOsinkP10ANIMstructPv, _Anim+16(,%eax,8)
	movl	%ebx, _Anim+20(,%eax,8)
	movw	%dx, _Anim+12(,%eax,8)
L481:
	addl	$1, %edi
	movl	(%ebx,%edi,4), %ecx
	testl	%ecx, %ecx
	jne	L482
	jmp	L544
	.p2align 4,,10
	.p2align 3
L447:
	movl	(%ebx), %ecx
	movl	_sector, %ebp
	movl	%ebx, %esi
	testl	%ecx, %ecx
	je	L544
	movl	%ebx, 40(%esp)
	jmp	L486
	.p2align 6
	.p2align 4,,10
	.p2align 3
L485:
	movl	4(%esi), %ecx
	addl	$4, %esi
	testl	%ecx, %ecx
	je	L554
L486:
	movl	%ecx, %eax
	subl	%ebp, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %edi
	testl	%edi, %edi
	je	L485
	cmpw	$37, 12(%edi)
	jne	L485
	movswl	16(%edi), %eax
	addl	$8, %ecx
	sall	$8, %eax
	addl	(%ecx), %eax
	movl	%ecx, %edx
	movl	%eax, %ebx
	subl	%ebp, %edx
	movl	$-858993459, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	movl	$128, 8(%esp)
	movl	%ebx, 4(%esp)
	call	__Z7AnimSetPiii
	movswl	16(%edi), %ecx
	movl	(%esi), %edi
	movl	_sector, %ebp
	movl	%ecx, %eax
	imull	$10923, %ecx, %ecx
	leal	28(%edi), %edx
	sarw	$15, %ax
	subl	%ebp, %edx
	shrl	$16, %ecx
	subl	%eax, %ecx
	movl	$-858993459, %eax
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%cl, 28(%edi)
	movl	(%esi), %ecx
	leal	38(%ecx), %edx
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	andw	$-33, 38(%ecx)
	jmp	L485
	.p2align 4,,10
	.p2align 3
L446:
	orl	$32, 596(%ebx)
	movzwl	16(%esi), %eax
	movl	$256, %edx
	testw	%ax, %ax
	cmovle	%edx, %eax
	movzwl	3220(%ebx), %edx
	addw	3216(%ebx), %dx
	movw	%dx, 3216(%ebx)
	movswl	%ax, %ecx
	movswl	3214(%ebx), %eax
	leal	(%eax,%eax), %edi
	leal	(%edi,%eax), %esi
	movzwl	_Track+10(,%esi,4), %esi
	cmpw	%si, %dx
	jge	L488
	testw	%dx, %dx
	jns	L555
	leal	-1(%esi), %edx
	movw	%dx, 3216(%ebx)
	movswl	%dx, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
L490:
	addl	%edi, %eax
	movl	%ecx, 8(%esp)
	movl	_Track(,%eax,4), %eax
	movl	8(%eax,%edx), %eax
	movl	%eax, 4(%esp)
	leal	188(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z7AnimSetPiii
	movzwl	3220(%ebx), %esi
	movswl	3214(%ebx), %edx
	movl	%esi, %eax
	leal	(%edx,%edx), %ecx
	negl	%eax
	leal	(%ecx,%edx), %ebp
	movw	%ax, 3220(%ebx)
	movzwl	3216(%ebx), %eax
	movl	%eax, %edi
	subl	%esi, %edi
	movw	%di, 3216(%ebx)
	movzwl	_Track+10(,%ebp,4), %ebp
	cmpw	%bp, %di
	jge	L511
	leal	-1(%esi,%ebp), %ebp
	testw	%di, %di
	cmovs	%ebp, %eax
L491:
	movw	%si, 3220(%ebx)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L445:
	cmpw	$-1, 16(%esi)
	je	L544
	movl	192(%ebx), %eax
	xorl	%ebp, %ebp
	orl	$1024, 596(%ebx)
	movl	$0, 192(%ebx)
	movw	%ax, 3570(%ebx)
	movzwl	3558(%ebx), %eax
	movw	%bp, 3558(%ebx)
	movw	%ax, 3572(%ebx)
	movzwl	16(%esi), %eax
	testw	%ax, %ax
	je	L493
	movw	%ax, 3574(%ebx)
L493:
	movl	$-1, %edi
	movw	%di, 16(%esi)
	movswl	3214(%ebx), %edx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L442:
	movl	$-1, 8(%esp)
	movswl	16(%esi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	$0, 14(%esi)
	movswl	3214(%ebx), %edx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L462:
	movzwl	3220(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	movw	%ax, 3220(%ebx)
	movzwl	3216(%ebx), %eax
	subl	%edx, %eax
	movswl	3214(%ebx), %edx
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L461:
	movl	596(%ebx), %ecx
	movzwl	3220(%ebx), %edi
	movzwl	3216(%ebx), %eax
	movl	196(%ebx), %ebp
	andl	$-4, %ecx
	movswl	3214(%ebx), %edx
	movl	%ecx, 596(%ebx)
	movswl	16(%esi), %esi
	addl	%edi, %eax
	sall	$8, %esi
	testw	%di, %di
	js	L545
L476:
	orl	$1, %ecx
	addl	%ebp, %esi
	movl	%ecx, 596(%ebx)
	leal	(%edx,%edx), %ecx
	movl	%esi, 196(%ebx)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L460:
	movl	596(%ebx), %ecx
	movzwl	3220(%ebx), %edi
	movzwl	3216(%ebx), %eax
	movl	196(%ebx), %ebp
	andl	$-4, %ecx
	movswl	3214(%ebx), %edx
	movl	%ecx, 596(%ebx)
	movswl	16(%esi), %esi
	addl	%edi, %eax
	sall	$8, %esi
	testw	%di, %di
	jle	L476
L545:
	orl	$2, %ecx
	subl	%esi, %ebp
	movl	%ecx, 596(%ebx)
	leal	(%edx,%edx), %ecx
	movl	%ebp, 196(%ebx)
	jmp	L465
	.p2align 4,,10
	.p2align 3
L459:
	movzwl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	movw	%ax, 3218(%ebx)
	leal	(%edx,%edx), %ecx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L464:
	movswl	16(%esi), %eax
	movswl	3214(%ebx), %edx
	sall	$8, %eax
	leal	(%edx,%edx), %ecx
	movl	%eax, 192(%ebx)
	movl	%eax, 196(%ebx)
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	jmp	L465
	.p2align 4,,10
	.p2align 3
L552:
	cwtl
	leal	(%eax,%eax,4), %esi
	sall	$2, %esi
	jmp	L500
	.p2align 4,,10
	.p2align 3
L554:
	movl	40(%esp), %ebx
	movswl	3214(%ebx), %edx
	movzwl	3220(%ebx), %eax
	addw	3216(%ebx), %ax
	leal	(%edx,%edx), %ecx
	jmp	L465
	.p2align 4,,10
	.p2align 3
L511:
	movl	%esi, %eax
	jmp	L491
	.p2align 4,,10
	.p2align 3
L488:
	xorl	%edx, %edx
	movw	%dx, 3216(%ebx)
	xorl	%edx, %edx
	jmp	L490
L553:
	orl	$8, %ecx
	addl	%esi, %ebp
	movl	%ecx, 596(%ebx)
	leal	(%edx,%edx), %ecx
	movl	%ebp, 532(%ebx)
	jmp	L465
L555:
	movzwl	%dx, %edx
	leal	(%edx,%edx,4), %edx
	sall	$2, %edx
	jmp	L490
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z23DoActorHitTrackEndPointP4USER
	.def	__Z23DoActorHitTrackEndPointP4USER;	.scl	2;	.type	32;	.endef
__Z23DoActorHitTrackEndPointP4USER:
LFB45:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movswl	218(%ebx), %eax
	movl	140(%ebx), %esi
	leal	(%eax,%eax,2), %eax
	andw	$-2, _Track+8(,%eax,4)
	movl	68(%ebx), %eax
	testl	$65536, %eax
	jne	L565
	testl	$131072, %eax
	jne	L566
	movl	$-1, %eax
	movw	%ax, 218(%ebx)
	addl	$8, %esp
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
L566:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z17FindTrackToPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L561
L563:
	cwtl
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	addl	$8, %esp
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
L565:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z23FindTrackAwayFromPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	jne	L563
	andl	$-65537, 68(%ebx)
L564:
	subl	_sprite, %esi
	movl	$1, 4(%esp)
	sarl	$2, %esi
	imull	$-1171354717, %esi, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$-1, %edx
	movw	%dx, 218(%ebx)
	addl	$8, %esp
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
L561:
	.cfi_restore_state
	andl	$-131073, 68(%ebx)
	jmp	L564
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z11VatorSwitchss
	.def	__Z11VatorSwitchss;	.scl	2;	.type	32;	.endef
__Z11VatorSwitchss:
LFB46:
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
	jne	L568
	jmp	L567
	.p2align 6
	.p2align 4,,10
	.p2align 3
L571:
	cmpw	$-1, %dx
	je	L567
L568:
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L571
	cmpw	40(%eax), %cx
	jne	L571
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
	jne	L568
L567:
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z19InterpSectorSpritessh
	.def	__Z19InterpSectorSpritessh;	.scl	2;	.type	32;	.endef
__Z19InterpSectorSpritessh:
LFB48:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %eax
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movzwl	_headspritesect(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L578
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	$-1171354717, %ebx
	cmpb	$0, 20(%esp)
	jne	L584
	.p2align 4
	.p2align 3
L589:
	movswl	%si, %edx
	movl	_sprite, %eax
	imull	$44, %edx, %ecx
	movzwl	_nextspritesect(%edx,%edx), %esi
	movl	_User(,%edx,4), %edx
	addl	%eax, %ecx
	testl	%edx, %edx
	je	L588
	movl	68(%edx), %edx
	testl	$268435456, %edx
	jne	L587
	andl	$134217728, %edx
	je	L588
	cmpw	$5, 26(%ecx)
	jg	L588
L586:
	cmpw	$-1, %si
	jne	L589
	.p2align 4
	.p2align 3
L602:
	movl	4(%esp), %ebx
	.cfi_restore 3
L578:
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L603:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	cmpw	$9, 26(%ecx)
	jle	L582
L583:
	addl	$8, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z16setinterpolationPi
L582:
	cmpw	$-1, %si
	je	L602
L584:
	movswl	%si, %edx
	movl	_sprite, %eax
	imull	$44, %edx, %ecx
	movzwl	_nextspritesect(%edx,%edx), %esi
	movl	_User(,%edx,4), %edx
	addl	%eax, %ecx
	testl	%edx, %edx
	je	L583
	movl	68(%edx), %edx
	testl	$268435456, %edx
	jne	L603
	andl	$134217728, %edx
	je	L583
	cmpw	$5, 26(%ecx)
	jle	L582
	jmp	L583
	.p2align 4,,10
	.p2align 3
L587:
	cmpw	$9, 26(%ecx)
	jle	L586
L588:
	addl	$8, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z17stopinterpolationPi
	cmpw	$-1, %si
	jne	L589
	jmp	L602
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z14SetVatorActives
	.def	__Z14SetVatorActives;	.scl	2;	.type	32;	.endef
__Z14SetVatorActives:
LFB49:
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
	movl	_sector, %edi
	movswl	28(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	140(%ebx), %esi
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	leal	4(%eax), %ecx
	testb	$8, 12(%esi)
	jne	L628
	leal	8(%eax), %ecx
L628:
	movl	%ecx, %edx
	movl	$-858993459, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z16setinterpolationPi
	movl	$1, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	call	__Z19InterpSectorSpritessh
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movswl	38(%esi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	orl	$8, 68(%ebx)
	movl	164(%ebx), %eax
	movl	$0, 76(%ebx)
	cmpl	8(%esi), %eax
	je	L629
	cmpl	256(%ebx), %eax
	je	L630
L604:
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
L629:
	.cfi_restore_state
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	je	L604
	movzwl	38(%esi), %esi
	jmp	L609
	.p2align 6
	.p2align 4,,10
	.p2align 3
L610:
	cmpw	$-1, %bx
	je	L604
L609:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L610
	cmpw	40(%eax), %si
	jne	L610
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L610
	.p2align 4,,10
	.p2align 3
L630:
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	je	L604
	movzwl	38(%esi), %esi
	jmp	L612
	.p2align 6
	.p2align 4,,10
	.p2align 3
L613:
	cmpw	$-1, %bx
	je	L604
L612:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L613
	cmpw	40(%eax), %si
	jne	L613
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L613
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z12ReverseVators
	.def	__Z12ReverseVators;	.scl	2;	.type	32;	.endef
__Z12ReverseVators:
LFB50:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %edx
	movl	_User(,%edx,4), %eax
	movl	76(%eax), %ecx
	testl	%ecx, %ecx
	jne	L638
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	164(%eax), %edx
	movl	64(%eax), %ecx
	movl	140(%eax), %esi
	movl	256(%eax), %ebx
	cmpl	%ecx, %edx
	je	L639
	cmpl	%ebx, %edx
	je	L640
L635:
	negw	172(%eax)
	movl	(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	4(%esp), %esi
	.cfi_restore 6
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L639:
	.cfi_restore_state
	movl	8(%esi), %ecx
	cmpl	%ecx, %edx
	je	L641
	cmpl	%ebx, %edx
	jne	L635
L637:
	movl	%ecx, 164(%eax)
	jmp	L635
	.p2align 4,,10
	.p2align 3
L638:
	.cfi_restore 3
	.cfi_restore 6
	movl	$0, 76(%eax)
	movl	%edx, 12(%esp)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z14SetVatorActives
	.p2align 4,,10
	.p2align 3
L640:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	cmpl	8(%esi), %ecx
	jne	L635
	jmp	L637
	.p2align 4,,10
	.p2align 3
L641:
	movl	%ebx, 164(%eax)
	jmp	L635
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z16SetVatorInactives
	.def	__Z16SetVatorInactives;	.scl	2;	.type	32;	.endef
__Z16SetVatorInactives:
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
	movl	_User(,%eax,4), %esi
	movl	_sector, %eax
	movl	140(%esi), %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %edx
	testb	$8, 12(%ebx)
	je	L643
	leal	4(%eax,%edx,8), %ecx
L646:
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z17stopinterpolationPi
	movl	$0, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z19InterpSectorSpritessh
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	andl	$-9, 68(%esi)
	addl	$12, %esp
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
L643:
	.cfi_restore_state
	leal	8(%eax,%edx,8), %ecx
	jmp	L646
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z7DoVators
	.def	__Z7DoVators;	.scl	2;	.type	32;	.endef
__Z7DoVators:
LFB52:
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
	movl	_sector, %ecx
	movswl	44(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 12(%esp)
	movl	140(%ebp), %edi
	movswl	24(%edi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %esi
	testb	$8, 12(%edi)
	je	L648
	leal	4(%esi), %ebx
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z11DoVatorMovesPi
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	movl	4(%esi), %edx
	movl	164(%ebp), %eax
	cmpl	%eax, %edx
	je	L709
L650:
	movswl	24(%edi), %edx
	movswl	_headspritesect(%edx,%edx), %ebx
	testb	$1, 43(%edi)
	jne	L710
	.p2align 4
	.p2align 3
L676:
	cmpl	$-1, %ebx
	je	L659
L712:
	movl	%ebx, %ecx
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	cmpw	$2, 26(%eax)
	jne	L676
	movl	4(%esi), %edx
	subl	8(%esi), %edx
	movl	%edx, %edi
	negl	%edi
	cmovs	%edx, %edi
	movzbl	21(%eax), %edx
	movswl	14(%eax), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L711
	imull	%eax, %edx
	leal	0(,%edx,4), %eax
L675:
	cmpl	%eax, %edi
	jge	L676
	movswl	%cx, %edi
	movl	$1, %edx
	movl	$-1, %ecx
	movl	%edi, %eax
	call	__Z14InitBloodSprayshs.isra.0
	cmpw	$1, _gNet+12
	je	L677
	movl	%edi, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L677:
	movl	%edi, %eax
	call	__Z10KillSprites
	cmpl	$-1, %ebx
	jne	L712
L659:
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
L711:
	.cfi_restore_state
	sall	$8, %eax
	jmp	L675
	.p2align 4,,10
	.p2align 3
L710:
	cmpl	64(%ebp), %eax
	jne	L676
	cmpw	$-1, %bx
	je	L664
	movl	%ebp, 20(%esp)
	movl	%edi, 16(%esp)
	jmp	L663
	.p2align 4,,10
	.p2align 3
L667:
	movl	_User(,%ebx,4), %edx
	testl	%edx, %edx
	je	L669
	testb	$1, 12(%eax)
	je	L669
	testb	$8, 43(%eax)
	jne	L713
L669:
	movswl	%di, %ebx
	cmpw	$-1, %di
	je	L705
L663:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritesect(%ebx,%ebx), %edi
	cmpw	$2, 26(%eax)
	jne	L667
	movl	4(%esi), %edx
	subl	8(%esi), %edx
	movl	%edx, %ecx
	movswl	14(%eax), %ebp
	negl	%ecx
	cmovs	%edx, %ecx
	movzbl	21(%eax), %edx
	movswl	_tilesiz+2(,%ebp,4), %ebp
	cmpb	$64, %dl
	je	L714
	imull	%ebp, %edx
	sall	$2, %edx
L666:
	cmpl	%edx, %ecx
	jge	L667
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	%bx, %eax
	movl	%ebx, %ebp
	call	__Z14InitBloodSprayshs.isra.0
	cmpw	$1, _gNet+12
	je	L668
	movswl	%bx, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L668:
	movswl	%bp, %eax
	call	__Z10KillSprites
	jmp	L669
	.p2align 4,,10
	.p2align 3
L648:
	leal	8(%esi), %ebx
	movl	$-858993459, %edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	mull	%edx
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z11DoVatorMovesPi
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	movl	8(%esi), %edx
	movl	164(%ebp), %eax
	cmpl	%eax, %edx
	jne	L650
L709:
	movl	256(%ebp), %eax
	cmpl	8(%edi), %edx
	je	L715
	cmpl	%eax, %edx
	je	L655
L708:
	movzwl	42(%edi), %eax
L653:
	testb	$-128, %al
	jne	L716
	movl	64(%ebp), %eax
	cmpl	%eax, (%ebx)
	je	L659
	movswl	216(%ebp), %eax
	testw	%ax, %ax
	je	L659
	movl	%eax, 76(%ebp)
	jmp	L659
	.p2align 4,,10
	.p2align 3
L714:
	movl	%ebp, %edx
	sall	$8, %edx
	jmp	L666
	.p2align 4,,10
	.p2align 3
L705:
	movl	20(%esp), %ebp
	movl	16(%esp), %edi
L664:
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L673
	jmp	L659
	.p2align 4,,10
	.p2align 3
L672:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L659
L673:
	movswl	24(%edi), %edx
	imull	$24124, %ebx, %eax
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	cmpl	%edx, _Player+152(%eax)
	je	L671
	cmpl	_Player+148(%eax), %edx
	jne	L672
L671:
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__Z12ReverseVators
	negw	172(%ebp)
	jmp	L672
	.p2align 4,,10
	.p2align 3
L716:
	movl	12(%esp), %esi
	movl	%esi, (%esp)
	call	__Z16SetVatorInactives
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L659
	.p2align 4,,10
	.p2align 3
L715:
	movl	%eax, 164(%ebp)
	movl	12(%esp), %eax
	negw	172(%ebp)
	movl	%eax, (%esp)
	call	__Z16SetVatorInactives
	movswl	34(%edi), %edx
	movzwl	42(%edi), %eax
	testw	%dx, %dx
	je	L653
	testb	$32, %ah
	jne	L653
L707:
	movl	$-1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	144(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L708
	.p2align 4,,10
	.p2align 3
L655:
	movzwl	172(%ebp), %edx
	movl	168(%ebp), %eax
	movw	%ax, 92(%ebp)
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	leal	42(%edi), %edx
	subl	_sprite, %edx
	movw	%ax, 172(%ebp)
	movl	8(%edi), %eax
	movl	%eax, 164(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-8193, 42(%edi)
	movl	%eax, (%esp)
	call	__Z16SetVatorInactives
	movswl	34(%edi), %edx
	movzwl	42(%edi), %eax
	testw	%dx, %dx
	je	L653
	testb	$4, %ah
	je	L653
	jmp	L707
L713:
	movl	12(%esp), %eax
	movl	16(%esp), %edi
	movl	%eax, (%esp)
	call	__Z12ReverseVators
	leal	42(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8192, 42(%edi)
	jmp	L659
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z11SpawnShrapXs
	.def	__Z11SpawnShrapXs;	.scl	2;	.type	32;	.endef
__Z11SpawnShrapXs:
LFB54:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z13SpriteControlv.part.0
	.def	__Z13SpriteControlv.part.0;	.scl	2;	.type	32;	.endef
__Z13SpriteControlv.part.0:
LFB56:
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
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movswl	_headspritestat+2, %ebp
	cmpl	$-1, %ebp
	jne	L720
	jmp	L721
	.p2align 4,,10
	.p2align 3
L739:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	*36(%ebx)
L722:
	cmpl	$-1, %ebp
	je	L721
L720:
	movl	%ebp, %edi
	movswl	_nextspritestat(%ebp,%ebp), %ebp
	movl	_User(,%edi,4), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	je	L739
	movl	140(%ebx), %edx
	movl	76(%ebx), %eax
	movl	%ebp, 28(%esp)
	movl	%edi, %ebp
	movl	%edx, 24(%esp)
	movzwl	26(%edx), %edx
	leal	-6(%edx), %esi
	movw	%dx, 20(%esp)
	leal	12(%eax), %edx
	addl	$6, %eax
	cmpw	$4, %si
	movswl	%di, %esi
	cmova	%eax, %edx
	movl	%edx, 76(%ebx)
L732:
	movl	%esi, 20(%esp)
	movl	4(%ecx), %eax
	jmp	L731
	.p2align 4,,10
	.p2align 3
L728:
	movl	%esi, 20(%esp)
	cmpw	$0, (%ecx)
	je	L730
	movl	76(%ebx), %edx
L731:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L981
	testl	$262144, %eax
	je	L726
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L726:
	cwtl
	movl	20(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L727:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L728
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L728
	movl	12(%ecx), %ecx
	jmp	L727
L981:
	movl	%ebp, %edi
	movl	28(%esp), %ebp
	testl	$524288, %eax
	je	L734
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
L735:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L722
	cmpl	$__Z12NullAnimators, %eax
	je	L722
	movswl	%di, %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpl	$-1, %ebp
	jne	L720
L721:
	cmpb	$0, _MoveSkip2
	jne	L738
	movl	$_headspritestat, %ebx
L758:
	movswl	6(%ebx), %ebp
	cmpl	$-1, %ebp
	je	L742
	movl	%ebx, 28(%esp)
	jmp	L741
L760:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	*36(%ebx)
L743:
	cmpl	$-1, %ebp
	je	L982
L741:
	movl	%ebp, %edi
	movswl	_nextspritestat(%ebp,%ebp), %ebp
	movl	_User(,%edi,4), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	je	L760
	movl	140(%ebx), %eax
	movl	76(%ebx), %edx
	movl	%ebp, 32(%esp)
	movl	%edi, %ebp
	movl	%eax, 24(%esp)
	movzwl	26(%eax), %eax
	leal	6(%edx), %esi
	addl	$12, %edx
	movw	%ax, 20(%esp)
	subl	$6, %eax
	cmpw	$5, %ax
	cmovnb	%esi, %edx
	movswl	%di, %esi
	movl	%edx, 76(%ebx)
L753:
	movl	%esi, 20(%esp)
	movl	4(%ecx), %eax
	jmp	L752
	.p2align 4,,10
	.p2align 3
L749:
	movl	%esi, 20(%esp)
	cmpw	$0, (%ecx)
	je	L751
	movl	76(%ebx), %edx
L752:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L983
	testl	$262144, %eax
	je	L747
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L747:
	cwtl
	movl	20(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L748:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L749
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L749
	movl	12(%ecx), %ecx
	jmp	L748
L730:
	movl	12(%ecx), %edx
	movswl	%bp, %eax
	movl	20(%esp), %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L732
L734:
	movl	24(%esp), %esi
	movl	$-1171354717, %edx
	leal	14(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	addl	$1, %edx
	cmpw	$1, 80(%ebx)
	jle	L736
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%esi)
	jmp	L735
L983:
	movl	%ebp, %edi
	movl	32(%esp), %ebp
	testl	$524288, %eax
	je	L755
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
L756:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L743
	cmpl	$__Z12NullAnimators, %eax
	je	L743
	movswl	%di, %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpl	$-1, %ebp
	jne	L741
L982:
	movl	28(%esp), %ebx
L742:
	addl	$2, %ebx
	cmpl	$_headspritestat+6, %ebx
	jne	L758
	cmpb	$0, _MoveSkip2
	jne	L738
	movswl	_headspritestat+4, %eax
	movl	%eax, 56(%esp)
	cmpl	$-1, %eax
	je	L738
L762:
	movl	56(%esp), %edi
	movl	%edi, %eax
	movl	%edi, 24(%esp)
	movswl	_nextspritestat(%edi,%edi), %edi
	movl	_User(,%eax,4), %esi
	movl	%edi, 56(%esp)
	movl	68(%esi), %eax
	movl	140(%esi), %edi
	movl	%esi, 28(%esp)
	testb	$8, %al
	jne	L794
	movzwl	244(%esi), %edx
	movw	%dx, 20(%esp)
	addl	$6, %edx
	movw	%dx, 244(%esi)
	cmpw	$480, %dx
	jle	L794
	movl	$20000, 132(%esi)
	movl	$480, %ebx
	movw	%bx, 244(%esi)
L794:
	movl	28(%esp), %edx
	xorl	%ecx, %ecx
	movw	%cx, 32(%esp)
	addw	$6, 242(%edx)
	movl	_connecthead, %edx
	movl	%edx, %ebx
	cmpw	$-1, %dx
	je	L777
	movl	%edi, 36(%esp)
	jmp	L776
L987:
	cmpb	$64, %dl
	je	L984
	imull	%edi, %edx
	addl	%edx, %edx
L766:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movl	40(%esp), %edi
	sall	$8, %ecx
	addl	%edx, %ecx
	subl	%ecx, %edi
	movl	%edi, 52(%esp)
L767:
	movzwl	24(%eax), %edi
	movswl	14(%eax), %ecx
	movzbl	21(%eax), %edx
	movw	%di, 50(%esp)
	movl	8(%eax), %edi
	movl	%edi, 44(%esp)
	movswl	_tilesiz+2(,%ecx,4), %edi
	movl	%edi, 40(%esp)
	testb	$-128, 12(%eax)
	je	L770
	cmpb	$64, %dl
	je	L985
	movl	40(%esp), %edi
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	imull	%edx, %edi
	sall	$8, %ecx
	leal	(%ecx,%edi,2), %ecx
	movl	44(%esp), %edi
	subl	%ecx, %edi
	movl	%edi, 44(%esp)
L773:
	imull	40(%esp), %edx
L775:
	movl	0(%ebp), %ecx
	movl	4(%ebp), %edi
	movl	%ecx, 40(%esp)
	movswl	50(%esp), %ecx
	movl	%ecx, 16(%esp)
	movl	44(%esp), %ecx
	addl	%ecx, %edx
	movl	52(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	40(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L763
	movl	$75000, 132(%ebx)
	movl	24(%esp), %eax
	xorl	%edi, %edi
	movl	_User(,%eax,4), %eax
	orl	$8, 68(%eax)
	movw	%di, 244(%eax)
	.p2align 4
	.p2align 3
L763:
	movl	28(%esp), %eax
	movl	20(%esp), %edx
	cmpl	132(%eax), %edx
	setl	%al
	movzbl	%al, %eax
	orw	%ax, 32(%esp)
	movl	_connectpoint2(,%esi,4), %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	je	L986
L776:
	movswl	%bx, %esi
	movl	36(%esp), %edi
	imull	$24124, %esi, %ebx
	movl	(%edi), %edx
	subl	_Player(%ebx), %edx
	leal	_Player(%ebx), %ecx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	subl	_Player+4(%ebx), %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebx
	cmovg	%edx, %eax
	movl	%ebx, %edx
	sarl	%eax
	subl	%eax, %edx
	movl	24(%esp), %eax
	movl	%edx, 20(%esp)
	movl	_User(,%eax,4), %ebx
	cmpw	$359, 242(%ebx)
	jle	L763
	movl	352(%ecx), %eax
	xorl	%ecx, %ecx
	movl	140(%ebx), %ebp
	movw	%cx, 242(%ebx)
	cmpl	$42000, %edx
	jg	L763
	testb	$8, 68(%ebx)
	jne	L763
	movl	8(%ebp), %edx
	movswl	14(%ebp), %ecx
	movl	%edx, 40(%esp)
	movswl	_tilesiz+2(,%ecx,4), %edi
	movzbl	21(%ebp), %edx
	testb	$-128, 12(%ebp)
	jne	L987
	cmpb	$64, %dl
	je	L988
	imull	%edi, %edx
	sall	$2, %edx
L769:
	movl	40(%esp), %edi
	subl	%edx, %edi
	movl	%edi, 52(%esp)
	jmp	L767
L751:
	movl	12(%ecx), %edx
	movswl	%bp, %eax
	movl	20(%esp), %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L753
L755:
	movl	24(%esp), %esi
	movl	$-1171354717, %edx
	leal	14(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	addl	$1, %edx
	cmpw	$1, 80(%ebx)
	jle	L757
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%esi)
	jmp	L756
L770:
	cmpb	$64, %dl
	je	L989
	movl	40(%esp), %ecx
	movl	44(%esp), %edi
	imull	%edx, %ecx
	sall	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, 44(%esp)
	jmp	L773
L986:
	movl	28(%esp), %edi
	movl	68(%edi), %eax
	movl	%eax, %edx
	andl	$-2, %edx
	movl	%edx, 68(%edi)
	cmpw	$0, 32(%esp)
	je	L777
	movl	24(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L778
	cwtl
	movl	%eax, (%esp)
	call	*36(%ebx)
L779:
	cmpl	$-1, 56(%esp)
	jne	L762
L738:
	cmpb	$0, _MoveSkip4
	jne	L795
	movl	$6, %ebx
L813:
	movswl	_headspritestat(%ebx,%ebx), %ebp
	cmpl	$-1, %ebp
	je	L797
	movl	%ebx, 32(%esp)
	jmp	L796
L814:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	*36(%ebx)
L798:
	cmpl	$-1, %ebp
	je	L990
L796:
	movl	%ebp, %edi
	movswl	_nextspritestat(%ebp,%ebp), %ebp
	movl	_User(,%edi,4), %ebx
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	je	L814
	movl	140(%ebx), %edx
	movl	76(%ebx), %eax
	movl	%ebp, 24(%esp)
	movl	%edi, %ebp
	movl	%edx, 28(%esp)
	movzwl	26(%edx), %edx
	leal	-6(%edx), %esi
	movw	%dx, 20(%esp)
	leal	6(%eax), %edx
	addl	$12, %eax
	cmpw	$5, %si
	movswl	%di, %esi
	cmovb	%eax, %edx
	movl	%edx, 76(%ebx)
L808:
	movl	%esi, 20(%esp)
	movl	4(%ecx), %eax
	jmp	L807
	.p2align 4,,10
	.p2align 3
L804:
	movl	%esi, 20(%esp)
	cmpw	$0, (%ecx)
	je	L806
	movl	76(%ebx), %edx
L807:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L991
	testl	$262144, %eax
	je	L802
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L802:
	cwtl
	movl	20(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L803:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L804
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L804
	movl	12(%ecx), %ecx
	jmp	L803
L991:
	movl	%ebp, %edi
	movl	24(%esp), %ebp
	testl	$524288, %eax
	je	L810
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
L811:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L798
	cmpl	$__Z12NullAnimators, %eax
	je	L798
	movswl	%di, %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpl	$-1, %ebp
	jne	L796
L990:
	movl	32(%esp), %ebx
L797:
	addl	$1, %ebx
	cmpl	$11, %ebx
	jne	L813
L795:
	movswl	_headspritestat+82, %ebx
	cmpl	$-1, %ebx
	je	L817
L816:
	movl	%ebx, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L818
	movl	36(%edx), %edx
	testl	%edx, %edx
	je	L818
	cwtl
	movl	%eax, (%esp)
	call	*%edx
L818:
	cmpl	$-1, %ebx
	jne	L816
L817:
	cmpb	$0, _MoveSkip8
	jne	L820
	movswl	_headspritestat+84, %ebx
	cmpl	$-1, %ebx
	je	L820
L822:
	movl	%ebx, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	%eax, (%esp)
	call	__Z20DoStaticFlamesDamages
	cmpl	$-1, %ebx
	jne	L822
L820:
	cmpb	$0, _MoveSkip4
	jne	L823
	movswl	_headspritestat+78, %eax
	movl	%eax, 24(%esp)
	cmpl	$-1, %eax
	jne	L824
L823:
	movswl	_headspritestat+140, %ebx
	cmpl	$-1, %ebx
	jne	L842
	jmp	L843
	.p2align 4,,10
	.p2align 3
L847:
	subl	$3, %eax
	movl	%eax, 76(%edi)
	testl	%eax, %eax
	jle	L992
L844:
	cmpl	$-1, %ebx
	je	L843
L842:
	movl	%ebx, %esi
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	_User(,%esi,4), %edi
	movl	76(%edi), %eax
	testl	%eax, %eax
	jne	L847
L848:
	testb	$8, 68(%edi)
	je	L844
	movl	_User(,%esi,4), %eax
	movswl	%si, %esi
	movl	%esi, (%esp)
	call	*36(%eax)
	cmpl	$-1, %ebx
	jne	L842
L843:
	movswl	_headspritestat+164, %ebx
	cmpl	$-1, %ebx
	jne	L845
	jmp	L846
	.p2align 4,,10
	.p2align 3
L852:
	subl	$3, %eax
	movl	%eax, 76(%edi)
	testl	%eax, %eax
	jle	L993
L849:
	cmpl	$-1, %ebx
	je	L846
L845:
	movl	%ebx, %esi
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	_User(,%esi,4), %edi
	movl	76(%edi), %eax
	testl	%eax, %eax
	jne	L852
L853:
	testb	$8, 68(%edi)
	je	L849
	movl	_User(,%esi,4), %eax
	movswl	%si, %esi
	movl	%esi, (%esp)
	call	*36(%eax)
	cmpl	$-1, %ebx
	jne	L845
L846:
	movswl	_headspritestat+142, %ebx
	cmpl	$-1, %ebx
	jne	L850
	jmp	L851
	.p2align 4,,10
	.p2align 3
L857:
	subl	$3, %eax
	movl	%eax, 76(%edi)
	testl	%eax, %eax
	jle	L994
L854:
	cmpl	$-1, %ebx
	je	L851
L850:
	movl	%ebx, %esi
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	_User(,%esi,4), %edi
	movl	76(%edi), %eax
	testl	%eax, %eax
	jne	L857
L858:
	testb	$8, 68(%edi)
	je	L854
	movl	_User(,%esi,4), %eax
	movswl	%si, %esi
	movl	%esi, (%esp)
	call	*36(%eax)
	cmpl	$-1, %ebx
	jne	L850
L851:
	movswl	_headspritestat+146, %ebx
	cmpl	$-1, %ebx
	jne	L855
	jmp	L856
	.p2align 4,,10
	.p2align 3
L862:
	subl	$3, %eax
	movl	%eax, 76(%edi)
	testl	%eax, %eax
	jle	L995
L859:
	cmpl	$-1, %ebx
	je	L856
L855:
	movl	%ebx, %esi
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	movl	_User(,%esi,4), %edi
	movl	76(%edi), %eax
	testl	%eax, %eax
	jne	L862
L863:
	testb	$8, 68(%edi)
	je	L859
	movl	_User(,%esi,4), %eax
	movswl	%si, %esi
	movl	%esi, (%esp)
	call	*36(%eax)
	cmpl	$-1, %ebx
	jne	L855
L856:
	movswl	_headspritestat+96, %ebx
	cmpl	$-1, %ebx
	je	L719
L860:
	movswl	%bx, %eax
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	call	__Z10KillSprites
	cmpl	$-1, %ebx
	jne	L860
L719:
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
L806:
	.cfi_restore_state
	movl	12(%ecx), %edx
	movswl	%bp, %eax
	movl	20(%esp), %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L808
L810:
	movl	28(%esp), %esi
	movl	$-1171354717, %edx
	leal	14(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	addl	$1, %edx
	cmpw	$1, 80(%ebx)
	jle	L812
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%esi)
	jmp	L811
L840:
	movswl	%di, %eax
	movl	%eax, (%esp)
	call	*36(%ebx)
L825:
	cmpl	$-1, 24(%esp)
	je	L823
L824:
	movl	24(%esp), %eax
	movl	%eax, %edi
	movswl	_nextspritestat(%eax,%eax), %eax
	movl	_User(,%edi,4), %ebx
	movl	%eax, 24(%esp)
	movl	16(%ebx), %ecx
	testl	%ecx, %ecx
	je	L840
	movl	140(%ebx), %ebp
	movl	76(%ebx), %eax
	movzwl	26(%ebp), %edx
	movl	%ebp, 28(%esp)
	movl	%edi, %ebp
	leal	-6(%edx), %esi
	leal	6(%eax), %edx
	addl	$12, %eax
	cmpw	$5, %si
	movswl	%di, %esi
	cmovb	%eax, %edx
	movl	%edx, 76(%ebx)
L835:
	movl	%esi, 20(%esp)
	movl	4(%ecx), %eax
	jmp	L834
	.p2align 4,,10
	.p2align 3
L831:
	movl	%esi, 20(%esp)
	cmpw	$0, (%ecx)
	je	L833
	movl	76(%ebx), %edx
L834:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L996
	testl	$262144, %eax
	je	L829
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L829:
	cwtl
	movl	20(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L830:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L831
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L831
	movl	12(%ecx), %ecx
	jmp	L830
L812:
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movl	28(%esp), %eax
	movw	%cx, 14(%eax)
	jmp	L811
L777:
	movl	28(%esp), %edi
	andl	$-4, %eax
	movl	%eax, 68(%edi)
	jmp	L779
L996:
	movl	%ebp, %edi
	movl	28(%esp), %ebp
	testl	$524288, %eax
	je	L837
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
L838:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L825
	cmpl	$__Z12NullAnimators, %eax
	je	L825
	movswl	%di, %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L825
L833:
	movl	12(%ecx), %edx
	movswl	%bp, %eax
	movl	20(%esp), %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L835
L989:
	movl	40(%esp), %edx
	movl	44(%esp), %edi
	sall	$8, %edx
	subl	%edx, %edi
	movl	%edi, 44(%esp)
L772:
	movl	40(%esp), %edx
	sall	$6, %edx
	jmp	L775
L985:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movl	%edi, %edx
	movl	44(%esp), %edi
	sall	$7, %edx
	sall	$8, %ecx
	addl	%ecx, %edx
	subl	%edx, %edi
	movl	%edi, 44(%esp)
	jmp	L772
L988:
	movl	%edi, %edx
	sall	$8, %edx
	jmp	L769
L984:
	movl	%edi, %edx
	sall	$7, %edx
	jmp	L766
L757:
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	movw	%cx, 14(%eax)
	jmp	L756
L837:
	leal	14(%ebp), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	addl	$1, %edx
	cmpw	$1, 80(%ebx)
	jle	L839
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%ebp)
	jmp	L838
L736:
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	movw	%cx, 14(%eax)
	jmp	L735
L992:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetVatorActives
	jmp	L848
L993:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetSpikeActives
	jmp	L853
L994:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z16SetRotatorActives
	jmp	L858
L995:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z15SetSlidorActives
	jmp	L863
L778:
	movl	140(%ebx), %ebp
	movl	76(%ebx), %eax
	movzwl	26(%ebp), %edi
	leal	-6(%edi), %esi
	leal	6(%eax), %edi
	addl	$12, %eax
	cmpw	$5, %si
	movswl	24(%esp), %esi
	cmovb	%eax, %edi
	movl	%edi, 76(%ebx)
	movl	%edi, %edx
L789:
	movl	%esi, 20(%esp)
	movl	4(%ecx), %eax
	jmp	L788
	.p2align 4,,10
	.p2align 3
L785:
	movl	%esi, 20(%esp)
	cmpw	$0, (%ecx)
	je	L787
	movl	76(%ebx), %edx
L788:
	movzwl	%ax, %edi
	cmpl	%edx, %edi
	jg	L997
	testl	$262144, %eax
	je	L783
	movzbl	174(%ebx), %edi
	movl	48(%ebx), %esi
	movsbw	8(%esi,%edi), %di
	addl	%edi, %eax
L783:
	cwtl
	movl	20(%esp), %esi
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L784:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L785
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L785
	movl	12(%ecx), %ecx
	jmp	L784
L997:
	testl	$524288, %eax
	jne	L998
	movl	$-1171354717, %eax
	leal	14(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpw	$1, 80(%ebx)
	jle	L793
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movw	%cx, 14(%ebp)
L792:
	movl	16(%ebx), %eax
	movl	8(%eax), %eax
	cmpl	$__Z12NullAnimators, %eax
	je	L779
	testl	%eax, %eax
	je	L779
	movswl	24(%esp), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L779
L787:
	movl	12(%ecx), %edx
	movswl	24(%esp), %eax
	movl	20(%esp), %esi
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	movl	16(%ebx), %ecx
	jmp	L789
L998:
	movl	12(%ebx), %edx
	movzwl	(%ecx), %ecx
	leal	16(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
	jmp	L792
L839:
	movzwl	(%ecx), %ecx
	movl	%edx, _spritechanged(,%eax,4)
	movw	%cx, 14(%ebp)
	jmp	L838
L793:
	movzwl	(%ecx), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movw	%cx, 14(%ebp)
	jmp	L792
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z15BossHealthMeterv
	.def	__Z15BossHealthMeterv;	.scl	2;	.type	32;	.endef
__Z15BossHealthMeterv:
LFB60:
	.cfi_startproc
	cmpb	$0, _NoMeters
	jne	L1138
	movzwl	_Level, %eax
	cmpw	$20, %ax
	ja	L1138
	movl	$1050672, %edx
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	btl	%eax, %edx
	setc	36(%esp)
	cmpb	$0, 36(%esp)
	je	L999
	movl	%ebx, 56(%esp)
	movl	_myconnectindex, %ecx
	movl	%esi, 60(%esp)
	movl	%edi, 64(%esp)
	movl	%ebp, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpw	$20, %ax
	je	L1149
	cmpw	$4, %ax
	je	L1006
	cmpw	$5, %ax
	je	L1006
	cmpw	$-1, _BossSpriteNum+2
	je	L1003
L1144:
	movzwl	_BossSpriteNum, %esi
L1004:
	testw	%si, %si
	js	L1080
L1019:
	imull	$24124, %ecx, %eax
	leal	_Player(%eax), %edi
	cmpb	$0, _serpwasseen
	je	L1084
	cmpb	$0, _sumowasseen
	jne	L1150
L1084:
	xorl	%esi, %esi
L1034:
	movswl	_BossSpriteNum(%esi,%esi), %eax
	testw	%ax, %ax
	js	L1022
	movzwl	268(%edi), %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzbl	21(%eax), %edx
	movw	%cx, 36(%esp)
	movl	8(%edi), %ecx
	leal	-10240(%ecx), %ebx
	movl	(%edi), %ecx
	movl	%ebx, 40(%esp)
	movl	4(%edi), %ebx
	movl	%ecx, 48(%esp)
	movl	8(%eax), %ecx
	movl	%ebx, 44(%esp)
	movzwl	24(%eax), %ebx
	movw	%bx, 54(%esp)
	movswl	14(%eax), %ebx
	movswl	_tilesiz+2(,%ebx,4), %ebp
	testb	$-128, 12(%eax)
	je	L1023
	cmpb	$64, %dl
	je	L1151
	imull	%ebp, %edx
	leal	(%edx,%edx), %ebp
L1025:
	movsbl	_picanm+2(%ebx,%ebx,4), %edx
	sall	$8, %edx
	addl	%ebp, %edx
	subl	%edx, %ecx
L1026:
	movswl	36(%esp), %ebx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	40(%esp), %ebx
	movl	%ebx, 12(%esp)
	movl	44(%esp), %ebx
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	movl	%ebx, 4(%esp)
	movswl	54(%esp), %ebx
	movl	%ebx, (%esp)
	call	_cansee.constprop.0
	testl	%eax, %eax
	je	L1022
	testl	%esi, %esi
	je	L1152
	cmpl	$1, %esi
	je	L1153
	cmpb	$0, _zillawasseen
	jne	L1021
	movb	$1, _zillawasseen
	cmpb	$0, _gs+27
	je	L1021
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	orb	_DemoMode, %al
	jne	L1021
	movl	$0, (%esp)
	movl	$1, %ecx
	movl	$13, %edx
	xorl	%eax, %eax
	call	__Z8PlaySongPcihh.part.0
	jmp	L1021
	.p2align 4,,10
	.p2align 3
L1087:
	movl	$655360, %edx
	movl	$1, %ebp
	movl	$25, %esi
	.p2align 4
	.p2align 3
L1062:
	movl	_xdim, %eax
	movl	_ydim, %ecx
	subl	$1, %eax
	js	L1043
	subl	$1, %ecx
	js	L1043
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%eax, 28(%esp)
	movl	$5570560, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$5407, 4(%esp)
	movl	$0, (%esp)
	movl	%edx, 40(%esp)
	call	_rotatesprite_.part.0.constprop.0
	movl	$5406, %eax
	movl	_ydim, %ecx
	subl	%ebp, %eax
	movl	_xdim, %ebp
	subl	$1, %ebp
	js	L1043
	subl	$1, %ecx
	js	L1043
	movl	%ecx, 32(%esp)
	movl	%esi, %ecx
	cwtl
	movl	40(%esp), %edx
	movzbl	%cl, %esi
	movl	%eax, 4(%esp)
	movl	$65536, %ecx
	movl	$9633792, %eax
	movl	%ebp, 28(%esp)
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$10, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1043:
	addl	$1, %ebx
	cmpl	$3, %ebx
	jne	L1076
L1143:
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %esi
	.cfi_restore 6
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
L999:
	addl	$72, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1006:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	_BossSpriteNum, %esi
	cmpw	$-1, %si
	jne	L1004
L1002:
	movzwl	_headspritestat+4, %eax
	cmpw	$-1, %ax
	je	L1080
L1079:
	movb	$0, 40(%esp)
	movl	_sprite, %edi
	xorl	%ebp, %ebp
	movl	%ecx, 48(%esp)
	jmp	L1009
	.p2align 4,,10
	.p2align 3
L1133:
	cmpw	$1210, %dx
	je	L1010
	cmpw	$5426, %dx
	jne	L1012
	cmpb	$16, 17(%ecx)
	movzbl	36(%esp), %edx
	movzbl	40(%esp), %ecx
	cmove	44(%esp), %bx
	cmovne	%edx, %ecx
	movw	%bx, 44(%esp)
	movb	%cl, 40(%esp)
L1012:
	cmpw	$-1, %ax
	je	L1014
L1009:
	movswl	%ax, %edx
	movl	%eax, %ebx
	imull	$44, %edx, %ecx
	movzwl	_nextspritestat(%edx,%edx), %eax
	movl	_User(,%edx,4), %edx
	movzwl	82(%edx), %edx
	addl	%edi, %ecx
	cmpw	$1300, %dx
	jne	L1133
	cmpb	$16, 17(%ecx)
	movzbl	36(%esp), %ecx
	cmovne	%ebx, %esi
	cmovne	%ecx, %ebp
	cmpw	$-1, %ax
	jne	L1009
L1014:
	movl	48(%esp), %ecx
	cmpb	$0, 40(%esp)
	je	L1017
	movzwl	44(%esp), %eax
	movw	%ax, _BossSpriteNum+4
L1017:
	movl	%ebp, %eax
	testb	%al, %al
	je	L1144
	movw	%si, _BossSpriteNum
	testw	%si, %si
	jns	L1019
L1080:
	movzwl	_BossSpriteNum+2, %eax
	testw	%ax, _BossSpriteNum+4
	jns	L1019
	jmp	L1143
	.p2align 4,,10
	.p2align 3
L1022:
	addl	$1, %esi
	cmpl	$3, %esi
	jne	L1034
L1021:
	movl	%edi, 36(%esp)
	xorl	%ebx, %ebx
L1076:
	testl	%ebx, %ebx
	je	L1154
	cmpl	$1, %ebx
	je	L1134
L1039:
	cmpb	$0, _zillawasseen
	je	L1143
	cmpw	$0, _BossSpriteNum+4
	js	L1143
L1041:
	movswl	_BossSpriteNum(%ebx,%ebx), %eax
	movl	_User(,%eax,4), %eax
	movzwl	82(%eax), %edx
	cmpw	$1300, %dx
	je	L1155
	cmpw	$1210, %dx
	je	L1156
	cmpw	$5426, %dx
	je	L1056
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1154:
	cmpb	$0, _serpwasseen
	je	L1036
	cmpw	$0, _BossSpriteNum
	js	L1036
	movswl	_BossSpriteNum, %eax
	movl	_User(,%eax,4), %eax
	movzwl	82(%eax), %edx
	cmpw	$1300, %dx
	je	L1077
	cmpw	$1210, %dx
	je	L1157
	cmpw	$5426, %dx
	jne	L1036
L1056:
	cmpb	$0, _zillawasseen
	je	L1043
	movzwl	_Skill, %edx
	movswl	84(%eax), %eax
	testw	%dx, %dx
	je	L1057
	cmpw	$1, %dx
	je	L1058
	cmpw	$199, %ax
	jg	L1059
L1060:
	movl	$5426, %edx
L1049:
	testw	%ax, %ax
	jle	L1158
	movl	_numplayers, %eax
	cmpl	$1, %eax
	jle	L1087
	subl	$2, %eax
	movzwl	_Level, %ecx
	cmpl	$2, %eax
	ja	L1159
	cmpw	$20, %cx
	je	L1160
L1096:
	movl	$1310720, %edx
	movl	$1, %ebp
	movl	$25, %esi
	jmp	L1062
	.p2align 4,,10
	.p2align 3
L1023:
	cmpb	$64, %dl
	je	L1161
	imull	%ebp, %edx
	sall	$2, %edx
	subl	%edx, %ecx
	jmp	L1026
	.p2align 4,,10
	.p2align 3
L1157:
	cmpb	$0, _sumowasseen
	jne	L1051
	.p2align 4
	.p2align 3
L1036:
	movl	$1, %ebx
L1134:
	cmpb	$0, _sumowasseen
	je	L1040
	cmpw	$0, _BossSpriteNum+2
	jns	L1041
L1040:
	movl	$2, %ebx
	jmp	L1039
	.p2align 4,,10
	.p2align 3
L1150:
	cmpb	$0, _zillawasseen
	jne	L1021
	jmp	L1084
	.p2align 4,,10
	.p2align 3
L1155:
	cmpb	$0, _serpwasseen
	je	L1043
L1077:
	movzwl	_Skill, %edx
	movswl	84(%eax), %eax
	testw	%dx, %dx
	je	L1044
	cmpw	$1, %dx
	je	L1045
	cmpw	$125, %ax
	jle	L1046
	shrl	%eax
	movl	$-2113396605, %edx
	movl	$1300, %esi
	mull	%edx
	shrl	$5, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1010:
	cmpb	$16, 17(%ecx)
	je	L1012
	movw	%bx, _BossSpriteNum+2
	jmp	L1012
	.p2align 4,,10
	.p2align 3
L1156:
	cmpb	$0, _sumowasseen
	je	L1043
L1051:
	movzwl	_Skill, %edx
	movswl	84(%eax), %eax
	testw	%dx, %dx
	je	L1053
	cmpw	$1, %dx
	je	L1054
	cmpw	$199, %ax
	jle	L1055
	movl	$1374389535, %edx
	movl	$1210, %esi
	mull	%edx
	shrl	$6, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1138:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L1149:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	_BossSpriteNum, %esi
	cmpw	$-1, %si
	je	L1002
	cmpw	$-1, _BossSpriteNum+2
	je	L1003
	cmpw	$-1, _BossSpriteNum+4
	jne	L1004
L1003:
	movzwl	_headspritestat+4, %eax
	cmpw	$-1, %ax
	jne	L1079
	jmp	L1144
	.p2align 4,,10
	.p2align 3
L1152:
	cmpb	$0, _serpwasseen
	jne	L1085
	movb	$1, _serpwasseen
	cmpb	$0, _gs+27
	jne	L1145
L1031:
	addl	$1, %esi
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1161:
	movl	%ebp, %edx
	sall	$8, %edx
	subl	%edx, %ecx
	jmp	L1026
	.p2align 4,,10
	.p2align 3
L1151:
	sall	$7, %ebp
	jmp	L1025
	.p2align 4,,10
	.p2align 3
L1057:
	cmpw	$65, %ax
	jle	L1060
	movl	$1041204193, %edx
	movl	$5426, %esi
	mull	%edx
	shrl	$4, %edx
	movl	%edx, %ecx
L1047:
	movl	_numplayers, %eax
	movl	%ecx, %ebp
	leal	-7(%ecx), %edi
	movl	$655360, %edx
	cmpl	$1, %eax
	jle	L1067
	movzwl	_Level, %edx
	subl	$2, %eax
	movw	%dx, 40(%esp)
	cmpl	$2, %eax
	jbe	L1068
	cmpw	$20, %dx
	je	L1093
	movl	$1966080, %edx
	.p2align 4
	.p2align 3
L1067:
	movl	$20, %esi
	cmpw	$5, %di
	jbe	L1062
	cmpw	$6, %cx
	jle	L1147
	movl	$22, %esi
	jmp	L1062
	.p2align 4,,10
	.p2align 3
L1158:
	movl	36(%esp), %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1044:
	cmpw	$35, %ax
	jg	L1048
L1046:
	movl	$1300, %edx
	jmp	L1049
	.p2align 4,,10
	.p2align 3
L1085:
	movl	$1, %esi
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1053:
	cmpw	$65, %ax
	jg	L1162
L1055:
	movl	$1210, %edx
	jmp	L1049
	.p2align 4,,10
	.p2align 3
L1153:
	cmpb	$0, _sumowasseen
	je	L1163
	movl	$2, %esi
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1159:
	cmpw	$20, %cx
	je	L1164
L1091:
	movl	$1966080, %edx
	movl	$1, %ebp
	movl	$25, %esi
	jmp	L1062
	.p2align 4,,10
	.p2align 3
L1048:
	movl	$954437177, %edx
	movl	$1300, %esi
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1059:
	movl	$1374389535, %edx
	movl	$5426, %esi
	mull	%edx
	shrl	$6, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1162:
	movl	$1041204193, %edx
	movl	$1210, %esi
	mull	%edx
	shrl	$4, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1045:
	cmpw	$72, %ax
	jle	L1046
	movswl	%ax, %esi
	movl	$-529516515, %eax
	imull	%esi
	movl	%esi, %eax
	sarl	$31, %eax
	leal	(%edx,%esi), %ecx
	movl	$1300, %esi
	sarl	$6, %ecx
	subl	%eax, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1054:
	cmpw	$132, %ax
	jle	L1055
	movl	$-161464935, %edx
	movl	$1210, %esi
	mull	%edx
	shrl	$7, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1163:
	movb	$1, _sumowasseen
	cmpb	$0, _gs+27
	je	L1031
L1145:
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	orb	_DemoMode, %al
	jne	L1031
	movl	$0, (%esp)
	movl	$1, %ecx
	movl	$13, %edx
	xorl	%eax, %eax
	call	__Z8PlaySongPcihh.part.0
	jmp	L1031
	.p2align 4,,10
	.p2align 3
L1068:
	movl	$1310720, %edx
	cmpw	$20, 40(%esp)
	jne	L1067
	movl	$20, %edx
L1069:
	cmpw	$1210, %si
	je	L1165
	cmpw	$5426, %si
	je	L1073
L1146:
	sall	$16, %edx
	jmp	L1067
	.p2align 4,,10
	.p2align 3
L1058:
	cmpw	$132, %ax
	jle	L1060
	movl	$-161464935, %edx
	movl	$5426, %esi
	mull	%edx
	shrl	$7, %edx
	movl	%edx, %ecx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1093:
	movl	$30, %edx
	jmp	L1069
	.p2align 4,,10
	.p2align 3
L1165:
	cmpb	$0, _sumowasseen
	je	L1146
	addl	$10, %edx
	sall	$16, %edx
	jmp	L1067
L1073:
	cmpb	$0, _zillawasseen
	je	L1146
	addl	$20, %edx
	jmp	L1146
L1164:
	cmpw	$1210, %dx
	je	L1166
	cmpw	$5426, %dx
	jne	L1091
	cmpb	$0, _zillawasseen
	jne	L1095
	movl	$1966080, %edx
	movl	$1, %ebp
L1147:
	movl	$25, %esi
	jmp	L1062
L1160:
	cmpw	$1210, %dx
	je	L1167
	cmpw	$5426, %dx
	jne	L1096
	cmpb	$0, _zillawasseen
	je	L1096
L1089:
	movl	$2621440, %edx
	movl	$1, %ebp
	movl	$25, %esi
	jmp	L1062
L1166:
	cmpb	$0, _sumowasseen
	jne	L1089
	jmp	L1091
L1167:
	cmpb	$0, _sumowasseen
	jne	L1091
	jmp	L1096
L1095:
	movl	$3276800, %edx
	movl	$1, %ebp
	jmp	L1147
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z14DecodePasswordPc.constprop.0
	.def	__Z14DecodePasswordPc.constprop.0;	.scl	2;	.type	32;	.endef
__Z14DecodePasswordPc.constprop.0:
LFB62:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movzbl	_DrawScreen, %eax
	movb	$0, _DrawScreen
	movl	$_gs+41, (%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_randomseed, %edi
	movb	%al, 7(%esp)
	movl	$1234, _randomseed
	call	_strupr
	movl	$_gs+41, (%esp)
	call	_strlen
	testl	%eax, %eax
	je	L1169
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	_krandcount, %eax
	movl	_randomseed, %ecx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%eax, 8(%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	$-805253093, %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1171:
	leal	(%ecx,%ecx,4), %eax
	movl	$25, %edx
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L1170
	movl	%ecx, %edx
	sall	$14, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$25, %edx
L1170:
	subb	%dl, _gs+41(%ebx)
	addl	$1, %ebx
	cmpl	%ebx, %ebp
	jne	L1171
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	addl	%ebp, %eax
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _krandcount
L1169:
	movzbl	7(%esp), %eax
	movl	%edi, _randomseed
	movl	20(%esp), %edi
	movb	%al, _DrawScreen
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z21GetSyncInfoFromPacketPhiPii.constprop.0
	.def	__Z21GetSyncInfoFromPacketPhiPii.constprop.0;	.scl	2;	.type	32;	.endef
__Z21GetSyncInfoFromPacketPhiPii.constprop.0:
LFB64:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, (%esp)
	cmpb	$0, _ready2send
	je	L1179
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_connecthead, %ebp
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ebp, %edx
	cmpl	$-1, %ebp
	je	L1231
	movl	%ebx, 20(%esp)
	movl	%ebp, %eax
	movl	%esi, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1181:
	cmpl	%eax, %esi
	movl	_connectpoint2(,%eax,4), %eax
	sete	%bl
	orl	%ebx, %ecx
	cmpl	$-1, %eax
	jne	L1181
	testb	%cl, %cl
	je	L1229
	movl	(%esp), %eax
	cmpl	(%edi), %eax
	jle	L1182
	movzwl	_NumSyncBytes, %eax
	movw	%ax, 6(%esp)
	testw	%ax, %ax
	jle	L1232
	imull	$24124, %esi, %ebx
	movswl	6(%esp), %ebp
	.p2align 4
	.p2align 3
L1185:
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1184:
	movl	(%edi), %ecx
	leal	1(%ecx), %edx
	movl	%edx, (%edi)
	movl	_Player+6572(%ebx), %esi
	movzbl	__ZL7packbuf.lto_priv.0(%ecx), %ecx
	movl	%esi, %edx
	andl	$1023, %edx
	sall	$4, %edx
	leal	_Player(%ebx,%edx), %edx
	movb	%cl, 6576(%edx,%eax)
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	L1184
	addl	$1, %esi
	movl	(%esp), %eax
	movl	%esi, _Player+6572(%ebx)
	cmpl	(%edi), %eax
	jg	L1185
	movl	_connecthead, %ebp
L1186:
	movl	_syncvaltottail, %esi
	movl	%ebp, %edx
	cmpl	$-1, %ebp
	je	L1208
	movl	%ebp, %eax
	jmp	L1188
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1234:
	movl	_connectpoint2(,%edx,4), %edx
	cmpl	$-1, %edx
	je	L1233
L1188:
	imull	$24124, %edx, %ecx
	cmpl	%esi, _Player+6572(%ecx)
	jne	L1234
L1229:
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
L1231:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L1179:
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
L1233:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	_NumSyncBytes, %edi
	movw	%di, 6(%esp)
L1187:
	movl	_connectpoint2(,%eax,4), %edx
L1201:
	testl	%edx, %edx
	js	L1189
L1200:
	cmpw	$0, 6(%esp)
	jle	L1190
L1230:
	imull	$24124, %eax, %edi
	movl	%esi, %ebp
	movswl	6(%esp), %ecx
	andl	$1023, %ebp
	movl	%edi, 8(%esp)
	movl	%eax, %edi
	movl	%edx, %eax
	movl	%edi, %edx
L1198:
	movl	8(%esp), %edi
	movl	%esi, 12(%esp)
	sall	$4, %ebp
	movl	%eax, 16(%esp)
	leal	(%edi,%ebp), %ebx
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L1191:
	imull	$24124, %edi, %esi
	movl	%edx, (%esp)
	xorl	%eax, %eax
	addl	%ebp, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1193:
	movzbl	_Player+6576(%ebx,%eax), %edx
	cmpb	%dl, _Player+6576(%eax,%esi)
	je	L1192
	movb	$1, _syncstat(%eax)
L1192:
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	L1193
	movl	_connectpoint2(,%edi,4), %edi
	movl	(%esp), %edx
	testl	%edi, %edi
	jns	L1191
	movl	12(%esp), %esi
	movl	16(%esp), %eax
	addl	$1, %esi
	cmpl	$-1, %edx
	je	L1235
	movl	%edx, %edi
	movl	%eax, %edx
	movl	%edi, %eax
L1197:
	movl	%eax, %ecx
	jmp	L1203
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1237:
	movl	_connectpoint2(,%ecx,4), %ecx
	cmpl	$-1, %ecx
	je	L1236
L1203:
	imull	$24124, %ecx, %ebx
	cmpl	%esi, _Player+6572(%ebx)
	jne	L1237
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%esi, _syncvaltottail
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %esi
	.cfi_restore 6
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
L1236:
	.cfi_restore_state
	testl	%edx, %edx
	js	L1205
	cmpw	$0, 6(%esp)
	jg	L1230
L1205:
	addl	$1, %esi
	jmp	L1197
L1190:
	addl	$1, %esi
	cmpl	$-1, %eax
	jne	L1197
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1182:
	movl	_syncvaltottail, %esi
	movl	%ebp, %eax
	jmp	L1188
L1232:
	imull	$24124, %esi, %ebx
	movl	(%esp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1183:
	addl	$1, _Player+6572(%ebx)
	cmpl	(%edi), %eax
	jg	L1183
	jmp	L1186
L1189:
	addl	$1, %esi
	cmpl	$-1, %eax
	jne	L1197
	jmp	L1201
	.p2align 4,,10
	.p2align 3
L1235:
	movl	%esi, %ebp
	andl	$1023, %ebp
	jmp	L1198
L1208:
	movl	$-1, %eax
	jmp	L1187
	.cfi_endproc
LFE64:
	.section .rdata,"dr"
LC0:
	.ascii "GAME OUT OF SYNC - %s\0"
LC1:
	.ascii "OUT OF SYNC - %s\0"
LC2:
	.ascii "FIRST %s\0"
LC3:
	.ascii "MoveCount %u\0"
LC4:
	.ascii "Missed Network packet!\0"
	.text
	.p2align 4
	.globl	__Z15SyncStatMessagev.part.0
	.def	__Z15SyncStatMessagev.part.0;	.scl	2;	.type	32;	.endef
__Z15SyncStatMessagev.part.0:
LFB67:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movzwl	_NumSyncBytes, %ecx
	testw	%cx, %cx
	jle	L1239
	movl	%edi, 40(%esp)
	movl	%esi, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	$_sync_first, %esi
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%esi, %ebp
	.p2align 4
	.p2align 3
L1247:
	cmpb	$0, _syncstat(%ebx)
	je	L1240
	cmpw	$1, %cx
	je	L1241
	movl	_SyncNames(,%ebx,4), %eax
	movl	$LC0, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	leal	68(,%ebx,8), %eax
	movl	$0, 20(%esp)
	movl	$_ds, 16(%esp)
	movl	$31, 12(%esp)
	movl	$1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$68, (%esp)
	call	_printext256
	movzwl	_NumSyncBytes, %ecx
L1241:
	movl	_sync_found, %edi
	testl	%edi, %edi
	jne	L1240
	cmpb	$0, 0(%ebp)
	je	L1243
	.p2align 4
	.p2align 3
L1240:
	movswl	%cx, %eax
L1244:
	addl	$1, %ebx
	addl	$60, %ebp
	cmpl	%eax, %ebx
	jl	L1247
	testw	%cx, %cx
	jle	L1262
	cmpb	$0, _sync_first
	jne	L1263
L1248:
	movswl	_NumSyncBytes, %eax
	xorl	%ebx, %ebx
L1252:
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jge	L1262
L1264:
	addl	$60, %esi
	movl	%esi, %edx
	cmpb	$0, (%esi)
	je	L1252
L1251:
	movl	%edx, 8(%esp)
	addl	$1, %ebx
	movl	$LC2, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$0, 20(%esp)
	movl	$_ds, 16(%esp)
	movl	$31, 12(%esp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	$50, (%esp)
	call	_printext256
	movl	__ZZ15SyncStatMessagevE9MoveCount, %eax
	movl	$LC3, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$0, 20(%esp)
	movl	$_ds, 16(%esp)
	movl	$31, 12(%esp)
	movl	$1, 8(%esp)
	movl	$10, 4(%esp)
	movl	$50, (%esp)
	call	_printext256
	movswl	_NumSyncBytes, %eax
	cmpl	%eax, %ebx
	jl	L1264
L1262:
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
L1239:
	cmpb	$0, _syncstate
	jne	L1265
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1243:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_MoveThingsCount, %eax
	movl	$1, _sync_found
	movl	%eax, __ZZ15SyncStatMessagevE9MoveCount
	testw	%cx, %cx
	jle	L1262
	movl	$_sync_first, %edx
	jmp	L1246
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1245:
	addl	$1, %edi
	movswl	%cx, %eax
	addl	$60, %edx
	cmpl	%eax, %edi
	jge	L1244
L1246:
	cmpb	$0, _syncstat(%edi)
	je	L1245
	cmpb	$0, (%edx)
	jne	L1245
	movl	_SyncNames(,%edi,4), %eax
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 24(%esp)
	call	_sprintf
	movl	24(%esp), %edx
	movl	$_ds, 4(%esp)
	movl	%edx, (%esp)
	call	_strcpy
	movzwl	_NumSyncBytes, %ecx
	movl	24(%esp), %edx
	jmp	L1245
	.p2align 4,,10
	.p2align 3
L1263:
	cmpw	$1, %cx
	jne	L1266
	movl	$33, %eax
	leal	28(%esp), %ecx
	leal	30(%esp), %edx
	movl	$320, %ebx
	movw	%ax, _ds+16
	movl	$_ds, %eax
	movl	$1162690887, _ds
	movl	$1414876960, _ds+4
	movl	$541478688, _ds+8
	movl	$1129208147, _ds+12
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	30(%esp), %eax
	movl	%ebx, %edx
	movl	$19, 4(%esp)
	movl	$0, (%esp)
	movl	$_ds, %ecx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	$20, %edx
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	movl	$46, %edx
	leal	28(%esp), %ecx
	movl	$_ds, %eax
	movw	%dx, _ds+16
	leal	30(%esp), %edx
	movl	$1953719634, _ds
	movl	$544502369, _ds+4
	movl	$543516788, _ds+8
	movl	$1701667175, _ds+12
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	30(%esp), %eax
	movl	$_ds, %ecx
	movl	$19, 4(%esp)
	movl	$0, (%esp)
	movl	$30, %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	cwtl
	call	__Z14MNU_DrawStringssPKcss
	jmp	L1248
	.p2align 4,,10
	.p2align 3
L1265:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$0, 20(%esp)
	movl	$LC4, 16(%esp)
	movl	$31, 12(%esp)
	movl	$1, 8(%esp)
	movl	$92, 4(%esp)
	movl	$68, (%esp)
	call	_printext256
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1266:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%ebx, %ebx
	movl	$_sync_first, %edx
	jmp	L1251
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0
	.def	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0;	.scl	2;	.type	32;	.endef
__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0:
LFB69:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movzbl	_ds, %edx
	testb	%dl, %dl
	je	L1267
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	$_ds, %edi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	40(%esp), %ebp
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movw	%cx, 10(%esp)
	movl	%eax, 12(%esp)
	jmp	L1271
	.p2align 4,,10
	.p2align 3
L1282:
	movl	$58, %ebx
	cmpb	$58, %dl
	je	L1270
	movzbl	%dl, %ebx
	cmpb	$92, %dl
	movl	$47, %eax
	cmove	%eax, %ebx
L1270:
	movswl	36(%esp), %eax
	movl	$250, %ecx
	addl	$1, %edi
	movzwl	__ZZ20DisplaySummaryStringP12PLAYERstructssssPKcE9font_base(%eax,%eax), %eax
	leal	-48(%ebx,%eax), %ebx
	movswl	10(%esp), %eax
	movswl	%bx, %edx
	movzwl	%bx, %ebx
	movl	%eax, 4(%esp)
	movswl	%si, %eax
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movw	%bp, 244(%eax)
	movzwl	_tilesiz(,%ebx,4), %eax
	movzbl	(%edi), %edx
	addl	$1, %eax
	addl	%eax, %esi
	testb	%dl, %dl
	je	L1281
L1271:
	cmpb	$32, %dl
	jne	L1282
	movzbl	1(%edi), %edx
	movl	$4, %eax
	addl	$1, %edi
	addl	%eax, %esi
	testb	%dl, %dl
	jne	L1271
L1281:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L1267:
	movl	20(%esp), %esi
	addl	$32, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0
	.def	__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z20pMenuClearTextLineIDP12PLAYERstructsls.constprop.0.isra.0:
LFB72:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 12(%esp)
	.cfi_offset 6, -12
	leal	22988(%eax), %esi
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	movl	22988(%eax), %edx
	cmpl	%esi, %edx
	je	L1283
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -16
	movl	(%edx), %ebx
	jmp	L1286
	.p2align 4,,10
	.p2align 3
L1285:
	movl	(%ebx), %eax
	movl	%ebx, %edx
	cmpl	%ebx, %esi
	je	L1295
L1287:
	movl	%eax, %ebx
L1286:
	movl	208(%edx), %eax
	cmpl	$250, %eax
	jg	L1295
	cmpw	$8, 176(%edx)
	jne	L1285
	movswl	42(%edx), %ecx
	cmpl	%edi, %ecx
	jne	L1285
	cmpl	$250, %eax
	jne	L1285
	movl	32(%edx), %eax
	movl	%edx, 4(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	4(%esp), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	movl	(%ebx), %eax
	movl	%ebx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	cmpl	%ebx, %esi
	jne	L1287
	.p2align 4
	.p2align 3
L1295:
	movl	8(%esp), %ebx
	.cfi_restore 3
L1283:
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z14pClearTextLineP12PLAYERstructl
	.def	__Z14pClearTextLineP12PLAYERstructl;	.scl	2;	.type	32;	.endef
__Z14pClearTextLineP12PLAYERstructl:
LFB73:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	addl	$22988, %ebx
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	(%ebx), %edx
	cmpl	%ebx, %edx
	je	L1296
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	movl	(%edx), %ecx
	jmp	L1299
	.p2align 4,,10
	.p2align 3
L1298:
	movl	(%ecx), %eax
	movl	%ecx, %edx
	cmpl	%ecx, %ebx
	je	L1308
L1300:
	movl	%eax, %ecx
L1299:
	movl	208(%edx), %eax
	cmpl	$250, %eax
	jg	L1308
	cmpw	$8, 176(%edx)
	jne	L1298
	movswl	42(%edx), %edi
	cmpl	%esi, %edi
	jne	L1298
	cmpl	$250, %eax
	jne	L1298
	movl	32(%edx), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	(%esp), %edx
	movl	4(%esp), %ecx
	movl	$__Z8pSuicideP18PANEL_SPRITEstruct, 172(%edx)
	movl	%ecx, %edx
	movl	(%ecx), %eax
	cmpl	%ecx, %ebx
	jne	L1300
	.p2align 4
	.p2align 3
L1308:
	movl	16(%esp), %edi
	.cfi_restore 7
L1296:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z14PutStringTimerP12PLAYERstructssPKcs
	.def	__Z14PutStringTimerP12PLAYERstructssPKcs;	.scl	2;	.type	32;	.endef
__Z14PutStringTimerP12PLAYERstructssPKcs:
LFB78:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	22988(%eax), %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	22988(%eax), %ebx
	movl	%eax, 20(%esp)
	movl	52(%esp), %ebp
	movl	(%ebx), %esi
	cmpw	$999, 56(%esp)
	je	L1356
	cmpl	%edi, %ebx
	jne	L1318
	jmp	L1316
	.p2align 4,,10
	.p2align 3
L1317:
	movl	(%esi), %eax
	movl	%esi, %ebx
	cmpl	%edi, %esi
	je	L1316
L1329:
	movl	%eax, %esi
L1318:
	movl	208(%ebx), %eax
	cmpl	$250, %eax
	jg	L1316
	cmpw	$8, 176(%ebx)
	jne	L1317
	cmpw	%cx, 42(%ebx)
	jne	L1317
	cmpl	$250, %eax
	jne	L1317
	movl	32(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	$__Z8pSuicideP18PANEL_SPRITEstruct, 172(%ebx)
	movl	%esi, %ebx
	movl	(%esi), %eax
	cmpl	%edi, %esi
	jne	L1329
	.p2align 4
	.p2align 3
L1316:
	movswl	56(%esp), %eax
	movl	$__Z11StringTimerP18PANEL_SPRITEstruct, 28(%esp)
	imull	$120, %eax, %eax
	movl	%eax, 24(%esp)
L1313:
	movzbl	0(%ebp), %eax
	testb	%al, %al
	je	L1309
	movswl	%cx, %esi
	movswl	%dx, %ebx
	addl	$1, %ebp
	movl	%esi, 8(%esp)
	jmp	L1327
	.p2align 4,,10
	.p2align 3
L1320:
	cmpb	$32, %al
	jne	L1309
	movzbl	0(%ebp), %eax
	addl	$1, %ebp
	addl	$4, %ebx
	testb	%al, %al
	je	L1309
L1327:
	movzbl	%al, %edx
	leal	-33(%edx), %ecx
	cmpw	$93, %cx
	ja	L1320
	movl	20(%esp), %eax
	leal	4575(%edx), %esi
	movl	22988(%eax), %eax
	cmpl	%edi, %eax
	je	L1321
	movw	%si, 12(%esp)
	movl	(%eax), %edx
	movl	%ebp, 16(%esp)
	jmp	L1325
	.p2align 4,,10
	.p2align 3
L1322:
	movl	(%edx), %ecx
	movl	%edx, %eax
	cmpl	%edi, %edx
	je	L1353
	movl	%ecx, %edx
L1325:
	movl	208(%eax), %ecx
	cmpl	$250, %ecx
	jg	L1353
	movswl	38(%eax), %esi
	cmpl	%ebx, %esi
	jne	L1322
	movswl	42(%eax), %esi
	movl	8(%esp), %ebp
	cmpl	%ebp, %esi
	jne	L1322
	cmpl	$250, %ecx
	jne	L1322
	movzwl	12(%esp), %esi
	movl	16(%esp), %ebp
	jmp	L1323
	.p2align 4,,10
	.p2align 3
L1353:
	movzwl	12(%esp), %esi
	movl	16(%esp), %ebp
L1321:
	movl	8(%esp), %eax
	movl	%ebx, (%esp)
	movl	$250, %ecx
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
L1323:
	movl	_numpages, %edx
	addl	$1, %ebp
	movw	%si, 180(%eax)
	movzwl	%si, %esi
	orl	$12288, 204(%eax)
	movw	%dx, 194(%eax)
	movzwl	_xdim, %edx
	movl	$0, 182(%eax)
	movl	$-65528, 176(%eax)
	subl	$1, %edx
	movw	%dx, 186(%eax)
	movzwl	_ydim, %edx
	subl	$1, %edx
	movw	%dx, 188(%eax)
	movl	28(%esp), %edx
	movl	%edx, 172(%eax)
	movzwl	24(%esp), %edx
	movw	%dx, 248(%eax)
	movswl	_tilesiz(,%esi,4), %eax
	addl	%eax, %ebx
	movzbl	-1(%ebp), %eax
	testb	%al, %al
	jne	L1327
L1309:
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
L1356:
	.cfi_restore_state
	cmpl	%edi, %ebx
	jne	L1315
	jmp	L1311
	.p2align 4,,10
	.p2align 3
L1314:
	movl	(%esi), %eax
	movl	%esi, %ebx
	cmpl	%edi, %esi
	je	L1311
	movl	%eax, %esi
L1315:
	movl	208(%ebx), %eax
	cmpl	$250, %eax
	jg	L1311
	cmpw	$8, 176(%ebx)
	jne	L1314
	cmpw	%cx, 42(%ebx)
	jne	L1314
	cmpl	$250, %eax
	jne	L1314
	movl	32(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	$__Z8pSuicideP18PANEL_SPRITEstruct, 172(%ebx)
	jmp	L1314
L1311:
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L1313
	.cfi_endproc
LFE78:
	.section .rdata,"dr"
LC5:
	.ascii "%03d\0"
	.text
	.p2align 4
	.globl	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0
	.def	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0;	.scl	2;	.type	32;	.endef
__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0:
LFB83:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$44, %esp
	.cfi_def_cfa_offset 60
	leal	12(%esp), %ebx
	movl	%ecx, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%ebx, (%esp)
	call	_sprintf
	movzbl	12(%esp), %eax
	testb	%al, %al
	je	L1357
	.p2align 4
	.p2align 3
L1360:
	movzbl	%al, %edx
	xorl	%ecx, %ecx
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1359
	leal	3588(%eax), %edx
	movswl	%si, %eax
	movl	$250, %ecx
	movl	$172, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movzbl	(%ebx), %eax
	movzwl	_tilesiz+14352(,%eax,4), %ecx
	addl	$1, %ecx
L1359:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	addl	%ecx, %esi
	testb	%al, %al
	jne	L1360
L1357:
	addl	$44, %esp
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
	.globl	__Z20DisplayMiniBarNumberssi
	.def	__Z20DisplayMiniBarNumberssi;	.scl	2;	.type	32;	.endef
__Z20DisplayMiniBarNumberssi:
LFB84:
	.cfi_startproc
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	leal	36(%esp), %ebx
	movl	%ecx, 8(%esp)
	movl	$LC5, 4(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 72(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 76(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	call	_sprintf
	movzbl	36(%esp), %eax
	testb	%al, %al
	je	L1367
	movl	%ebp, 80(%esp)
	.cfi_offset 5, -8
	sall	$16, %edi
	.p2align 4
	.p2align 3
L1371:
	movzbl	%al, %edx
	xorl	%ecx, %ecx
	subl	$48, %edx
	cmpl	$9, %edx
	ja	L1369
	movl	_xdim, %edx
	movl	_ydim, %ecx
	subl	$1, %edx
	js	L1370
	subl	$1, %ecx
	js	L1370
	addl	$3588, %eax
	movl	%ecx, 32(%esp)
	movl	%esi, %ebp
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	sall	$16, %ebp
	movl	%edi, %edx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$282, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1370:
	movzbl	(%ebx), %eax
	movzwl	_tilesiz+14352(,%eax,4), %ecx
	addl	$1, %ecx
L1369:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	addl	%ecx, %esi
	testb	%al, %al
	jne	L1371
	movl	80(%esp), %ebp
	.cfi_restore 5
L1367:
	movl	68(%esp), %ebx
	movl	72(%esp), %esi
	movl	76(%esp), %edi
	addl	$84, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z17DisplayFragStringP12PLAYERstructssPKc
	.def	__Z17DisplayFragStringP12PLAYERstructssPKc;	.scl	2;	.type	32;	.endef
__Z17DisplayFragStringP12PLAYERstructssPKc:
LFB85:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	36(%esp), %ebx
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	cmpb	$0, _DemoPlaying
	je	L1379
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	movl	%eax, 8(%esp)
L1380:
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L1378
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movzwl	360(%ebp), %edx
	movswl	%cx, %edi
	andl	$3, %edx
	leal	8(%edx), %ecx
	movw	%cx, 14(%esp)
	.p2align 4
	.p2align 3
L1383:
	cmpb	$32, %al
	je	L1382
	leal	2897(%eax), %edx
	movswl	%si, %eax
	movl	%edi, 4(%esp)
	movl	$250, %ecx
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	%eax, %edx
	movzwl	14(%esp), %eax
	movw	%ax, 176(%edx)
	movl	352(%ebp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movzbl	262(%eax), %eax
	movw	%ax, 246(%edx)
L1382:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	addl	$4, %esi
	testb	%al, %al
	jne	L1383
	movl	24(%esp), %edi
	.cfi_restore 7
L1378:
	movl	16(%esp), %ebx
	movl	20(%esp), %esi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1379:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	movl	%eax, 8(%esp)
	jmp	L1380
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z18DisplayFragNumbersP12PLAYERstruct
	.def	__Z18DisplayFragNumbersP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18DisplayFragNumbersP12PLAYERstruct:
LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	subl	$_Player, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sarl	$2, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$-432986257, %eax, %eax
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	cmpb	$0, _DemoPlaying
	je	L1393
	movswl	_screenpeek, %edx
	imull	$24124, %edx, %edx
	leal	_Player(%edx), %ecx
	movl	%ecx, 12(%esp)
L1394:
	movswl	_tilesiz+11682, %edx
	leal	3(%eax), %ebx
	leal	16(%esp), %ebp
	subl	$2, %edx
	testw	%ax, %ax
	cmovns	%eax, %ebx
	andl	$3, %eax
	movl	__ZZ18DisplayFragNumbersP12PLAYERstructE5xoffs(,%eax,4), %esi
	movswl	23236(%edi), %eax
	movl	%ebp, (%esp)
	sarw	$2, %bx
	movl	$LC5, 4(%esp)
	imull	%edx, %ebx
	movl	%eax, 8(%esp)
	call	_sprintf
	addl	$2, %ebx
	leal	-1(%esi), %eax
	movl	$129, %ecx
	movswl	%bx, %ebx
	movl	%eax, (%esp)
	movl	12(%esp), %eax
	movl	$2376, %edx
	movl	%ebx, 4(%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	%ebp, (%esp)
	movswl	%si, %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
	call	__Z17DisplayFragStringP12PLAYERstructssPKc
	addl	$48, %esp
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
L1393:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %edx
	leal	_Player(%edx), %ecx
	movl	%ecx, 12(%esp)
	jmp	L1394
	.cfi_endproc
LFE86:
	.p2align 4
	.globl	__Z17PutStringInfoLineP12PLAYERstructPKc
	.def	__Z17PutStringInfoLineP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
__Z17PutStringInfoLineP12PLAYERstructPKc:
LFB87:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	subl	$_Player, %eax
	movl	%edx, %ebx
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	_myconnectindex, %edx
	cmpb	$0, _DemoPlaying
	je	L1398
	movswl	_screenpeek, %edx
L1398:
	cmpl	%edx, %eax
	je	L1401
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1401:
	.cfi_restore_state
	movl	%ebx, %eax
	leal	12(%esp), %edx
	movl	%ecx, %ebx
	leal	14(%esp), %ecx
	movl	%eax, 8(%esp)
	call	__Z17MNU_MeasureStringPKcPsS1_
	movswl	12(%esp), %edx
	movl	$320, %ecx
	movl	8(%esp), %eax
	subl	%edx, %ecx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	movswl	_GlobInfoStringTime, %ecx
	sarl	%edx
	movl	%ecx, 4(%esp)
	movswl	%dx, %edx
	movl	$40, %ecx
	call	__Z14PutStringTimerP12PLAYERstructssPKcs
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE87:
	.section .rdata,"dr"
LC6:
	.ascii "%s\0"
	.text
	.p2align 4
	.globl	__Z13PutStringInfoP12PLAYERstructPKc
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
__Z13PutStringInfoP12PLAYERstructPKc:
LFB89:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	movl	%edx, %ebx
	subl	$_Player, %ecx
	sarl	$2, %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	imull	$-432986257, %ecx, %ecx
	movl	_myconnectindex, %edx
	cmpb	$0, _DemoPlaying
	je	L1404
	movswl	_screenpeek, %edx
L1404:
	cmpl	%edx, %ecx
	jne	L1402
	cmpb	$0, _gs+25
	jne	L1407
L1402:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1407:
	.cfi_restore_state
	movl	%ebx, 4(%esp)
	movl	$LC6, (%esp)
	movl	%eax, 12(%esp)
	movl	%ebx, 8(%esp)
	call	__Z14CON_ConMessagePKcz
	movl	8(%esp), %edx
	movl	12(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17PutStringInfoLineP12PLAYERstructPKc
	.cfi_endproc
LFE89:
	.section .rdata,"dr"
	.align 4
LC7:
	.ascii "This only opens in single play.\0"
	.text
	.p2align 4
	.globl	__Z12DoVatorMatchP12PLAYERstructs
	.def	__Z12DoVatorMatchP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z12DoVatorMatchP12PLAYERstructs:
LFB91:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+140, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	$-1, %esi
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movzwl	32(%esp), %ebp
	cmpw	$-1, %bx
	je	L1408
	movl	28(%esp), %eax
	testl	%eax, %eax
	je	L1418
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	jmp	L1410
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1424:
	cmpw	$-1, %bx
	je	L1458
L1410:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$92, 40(%eax)
	jne	L1424
	cmpw	38(%eax), %bp
	jne	L1424
	movzwl	42(%eax), %edi
	cmpw	$-1, %si
	cmove	%ecx, %esi
	movw	%di, 6(%esp)
	testw	$512, %di
	je	L1421
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L1433
	cmpw	$1, %di
	je	L1433
L1421:
	movswl	24(%eax), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L1426
	cmpw	$29, 12(%eax)
	je	L1459
L1426:
	movl	_User(,%edx,4), %eax
	movl	28(%esp), %edi
	testb	$8, 68(%eax)
	movl	%edi, 144(%eax)
	movl	%ecx, (%esp)
	jne	L1460
	call	__Z14SetVatorActives
	cmpw	$-1, %bx
	jne	L1410
	.p2align 4
	.p2align 3
L1458:
	movl	16(%esp), %edi
	.cfi_restore 7
L1408:
	movl	%esi, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	20(%esp), %ebp
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1462:
	.cfi_restore_state
	cmpw	38(%eax), %bp
	je	L1461
L1413:
	cmpw	$-1, %bx
	je	L1408
L1418:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$92, 40(%eax)
	jne	L1413
	jmp	L1462
	.p2align 4,,10
	.p2align 3
L1461:
	cmpw	$-1, %si
	cmove	%ecx, %esi
	testb	$2, 43(%eax)
	je	L1415
	movzwl	_gNet+12, %eax
	cmpw	$4, %ax
	je	L1413
	cmpw	$1, %ax
	je	L1413
L1415:
	movl	_User(,%edx,4), %eax
	movl	$0, 144(%eax)
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L1417
	call	__Z14SetVatorActives
	jmp	L1413
	.p2align 4,,10
	.p2align 3
L1460:
	.cfi_offset 7, -12
	call	__Z12ReverseVators
	jmp	L1424
	.p2align 4,,10
	.p2align 3
L1459:
	movswl	22(%eax), %eax
	testw	%ax, %ax
	je	L1426
	movl	_KeyDoorMessage-4(,%eax,4), %edx
	movl	28(%esp), %eax
	movl	$-1, %esi
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1408
	.p2align 4,,10
	.p2align 3
L1433:
	.cfi_restore_state
	testb	$32, 6(%esp)
	je	L1424
	movl	28(%esp), %eax
	movl	$LC7, %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L1424
L1417:
	.cfi_restore 7
	call	__Z12ReverseVators
	jmp	L1413
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z14DoVatorOperateP12PLAYERstructs
	.def	__Z14DoVatorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z14DoVatorOperateP12PLAYERstructs:
LFB92:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movswl	28(%esp), %eax
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -16
	movl	24(%esp), %ebx
	movzwl	_headspritesect(%eax,%eax), %ecx
	cmpw	$-1, %cx
	je	L1463
	movl	%esi, 12(%esp)
	testl	%ebx, %ebx
	.cfi_offset 6, -12
	jne	L1465
	jmp	L1516
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1470:
	cmpw	$-1, %cx
	je	L1514
L1465:
	movswl	%cx, %eax
	movzwl	_nextspritesect(%eax,%eax), %ecx
	movl	%eax, %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$70, 26(%eax)
	jne	L1470
	cmpw	$92, 40(%eax)
	jne	L1470
	cmpb	$0, 18(%eax)
	jne	L1470
	movl	%edi, 16(%esp)
	movzwl	42(%eax), %esi
	.cfi_offset 7, -8
	movl	%esi, %edi
	testw	$512, %si
	je	L1471
	movzwl	_gNet+12, %esi
	cmpw	$1, %si
	je	L1479
	cmpw	$4, %si
	je	L1479
L1471:
	movswl	38(%eax), %esi
	testw	%si, %si
	jle	L1517
	movl	16(%esp), %edi
	.cfi_restore 7
	jmp	L1475
	.p2align 4,,10
	.p2align 3
L1514:
	movl	12(%esp), %esi
	.cfi_restore 6
L1463:
	movl	8(%esp), %ebx
	movl	%ecx, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1516:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	_sprite, %esi
	jmp	L1469
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1466:
	movzwl	_nextspritesect(%edx,%edx), %ecx
	cmpw	$-1, %cx
	je	L1514
L1469:
	movswl	%cx, %edx
	imull	$44, %edx, %eax
	addl	%esi, %eax
	cmpw	$70, 26(%eax)
	jne	L1466
	cmpw	$92, 40(%eax)
	jne	L1466
	cmpb	$0, 18(%eax)
	jne	L1466
	testb	$2, 43(%eax)
	je	L1467
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L1511
	cmpw	$1, %di
	movl	16(%esp), %edi
	.cfi_restore 7
	je	L1466
L1467:
	movswl	38(%eax), %esi
	testw	%si, %si
	jle	L1477
L1475:
	movl	%esi, (%esp)
	call	__Z20TestVatorMatchActives
	testb	%al, %al
	jne	L1478
	movl	%esi, 28(%esp)
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	%ebx, 24(%esp)
	movl	8(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z12DoVatorMatchP12PLAYERstructs
	.p2align 4,,10
	.p2align 3
L1517:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movswl	24(%eax), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L1473
	cmpw	$29, 12(%eax)
	je	L1518
L1473:
	movswl	%dx, %edx
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	%edx, %ecx
L1477:
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z14SetVatorActives
	movl	4(%esp), %ecx
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1479:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	andl	$32, %edi
	jne	L1519
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1470
L1511:
	.cfi_restore_state
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1466
L1519:
	.cfi_restore_state
	movl	$LC7, %edx
	movl	%ebx, %eax
	movl	%ecx, 4(%esp)
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	4(%esp), %ecx
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1470
L1518:
	.cfi_restore_state
	movswl	22(%eax), %eax
	testw	%ax, %ax
	je	L1473
	movl	_KeyDoorMessage-4(,%eax,4), %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	xorl	%ecx, %ecx
	jmp	L1463
L1478:
	.cfi_offset 6, -12
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	$-1, %ecx
	jmp	L1463
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z14ActorFindTracksaiPsS_
	.def	__Z14ActorFindTracksaiPsS_;	.scl	2;	.type	32;	.endef
__Z14ActorFindTracksaiPsS_:
LFB93:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	movl	$_Track, %ebp
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
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	movl	%eax, 60(%esp)
	movl	_User(,%eax,4), %eax
	movb	%dl, 59(%esp)
	movl	140(%eax), %esi
	movl	%eax, 48(%esp)
	xorl	%eax, %eax
	movw	%ax, 74(%esp)
	movl	$0, 76(%esp)
	movl	$0, 68(%esp)
	movl	$0, 64(%esp)
	movl	$999999, 44(%esp)
	movl	%esi, 52(%esp)
	jmp	L1542
	.p2align 4,,10
	.p2align 3
L1559:
	movl	24(%esp), %ebp
	movl	40(%esp), %edi
L1540:
	addl	$12, %ebp
	cmpl	$_Track+1200, %ebp
	je	L1561
L1542:
	testl	%edi, 4(%ebp)
	je	L1540
	testb	$1, 8(%ebp)
	jne	L1540
	cmpl	$128, %edi
	je	L1522
	jg	L1523
	cmpl	$32, %edi
	je	L1524
	jg	L1525
	leal	-4(%edi), %eax
	andl	$-5, %eax
	je	L1562
L1525:
	movzwl	10(%ebp), %eax
	subl	$1, %eax
	movw	%ax, 78(%esp)
L1528:
	movl	$0, 20(%esp)
	movl	%edi, 40(%esp)
	movl	%ebp, 24(%esp)
	movl	52(%esp), %ebp
L1541:
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	movl	0(%ebp), %edx
	movl	(%eax), %esi
	movswl	76(%esp,%ebx,2), %eax
	movw	%ax, 56(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,4), %ebx
	movl	(%ebx), %eax
	movl	4(%ebx), %edi
	subl	%eax, %edx
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	movl	%edi, 28(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 36(%esp)
	cmpl	$14999, %ecx
	jg	L1533
	cmpl	44(%esp), %ecx
	jge	L1533
	movl	8(%ebp), %eax
	subl	8(%ebx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	cmpl	$4096, %edx
	jg	L1533
	movl	48(%esp), %edi
	movl	24(%esp), %edx
	movl	%ebx, %ecx
	movl	200(%edi), %eax
	call	__Z17TrackTowardPlayerP12spritetypev7P5TRACKP11TRACK_POINT
	cmpb	$1, 59(%esp)
	je	L1563
	testw	%ax, %ax
	jne	L1533
L1536:
	movl	60(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %eax
	cmpl	%ebx, %esi
	je	L1564
L1537:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edx, %edi
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	%ecx, %edx
	subl	4(%esi), %edx
	movl	%edx, %esi
	negl	%esi
	cmovs	%edx, %esi
	movl	%edi, %edx
	subl	32(%esp), %edx
	movl	%edx, %edi
	negl	%edi
	cmovns	%edi, %edx
	subl	28(%esp), %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovns	%edi, %ecx
	cmpl	%ecx, %edx
	leal	(%edx,%ecx), %edi
	cmovg	%ecx, %edx
	sarl	%edx
	subl	%edx, %edi
	cmpl	%esi, %eax
	leal	(%eax,%esi), %edx
	cmovg	%esi, %eax
	sarl	%eax
	subl	%eax, %edx
	cmpl	%edx, %edi
	jl	L1565
	.p2align 4
	.p2align 3
L1533:
	cmpl	$1, 20(%esp)
	je	L1559
	movl	$1, 20(%esp)
	jmp	L1541
	.p2align 4,,10
	.p2align 3
L1565:
	movl	100(%esp), %eax
	movzwl	56(%esp), %esi
	movw	%si, (%eax)
	movl	20(%esp), %esi
	movl	104(%esp), %eax
	testl	%esi, %esi
	je	L1566
	movl	$-1, %edx
	movl	%ebx, 68(%esp)
	movw	%dx, (%eax)
	movl	24(%esp), %eax
	movl	%eax, 64(%esp)
	movl	36(%esp), %eax
	movl	%eax, 44(%esp)
	jmp	L1533
	.p2align 4,,10
	.p2align 3
L1523:
	cmpl	$256, %edi
	jne	L1525
	movl	48(%esp), %eax
	movl	40(%eax), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	L1527
L1529:
	xorl	%esi, %esi
	movw	%si, 78(%esp)
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1524:
	movl	48(%esp), %eax
	movl	40(%eax), %eax
	movl	40(%eax), %ebx
	testl	%ebx, %ebx
	jne	L1529
L1527:
	addl	$80, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %eax
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
L1562:
	.cfi_restore_state
	movl	48(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1529
	jmp	L1527
	.p2align 4,,10
	.p2align 3
L1522:
	movl	48(%esp), %eax
	movl	40(%eax), %eax
	movl	16(%eax), %edx
	testl	%edx, %edx
	je	L1527
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L1528
	jmp	L1527
	.p2align 4,,10
	.p2align 3
L1564:
	movl	24(%esp), %edi
	movswl	10(%edi), %edx
	leal	-5(%edx,%edx,4), %edx
	leal	(%esi,%edx,4), %esi
	jmp	L1537
	.p2align 4,,10
	.p2align 3
L1566:
	movl	$1, %ecx
	movl	%ebx, 68(%esp)
	movw	%cx, (%eax)
	movl	24(%esp), %eax
	movl	$1, 20(%esp)
	movl	%eax, 64(%esp)
	movl	36(%esp), %eax
	movl	%eax, 44(%esp)
	jmp	L1541
	.p2align 4,,10
	.p2align 3
L1563:
	testw	%ax, %ax
	jne	L1536
	jmp	L1533
L1561:
	movl	52(%esp), %esi
	cmpl	$14999, 44(%esp)
	jg	L1527
	movl	68(%esp), %edi
	leal	74(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	8(%esi), %eax
	movl	_sector, %ebp
	movl	(%esi), %ebx
	movl	4(%esi), %edx
	leal	-4096(%eax), %ecx
	movswl	74(%esp), %eax
	movl	%eax, 16(%esp)
	leal	(%eax,%eax,4), %eax
	leal	0(%ebp,%eax,8), %eax
	movl	8(%eax), %eax
	subl	$8192, %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1527
	movl	64(%esp), %eax
	addl	$80, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	subl	$_Track, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	sarl	$2, %eax
	imulw	$-21845, %ax, %ax
	ret
	.cfi_endproc
LFE93:
	.p2align 4
	.globl	__Z19NextActorTrackPoints
	.def	__Z19NextActorTrackPoints;	.scl	2;	.type	32;	.endef
__Z19NextActorTrackPoints:
LFB96:
	.cfi_startproc
	cwtl
	movl	_User(,%eax,4), %eax
	movswl	218(%eax), %ecx
	movzwl	222(%eax), %edx
	addw	220(%eax), %dx
	leal	(%ecx,%ecx,2), %ecx
	movw	%dx, 220(%eax)
	movzwl	_Track+10(,%ecx,4), %ecx
	cmpw	%cx, %dx
	jge	L1568
	testw	%dx, %dx
	jns	L1567
	subl	$1, %ecx
	movw	%cx, 220(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L1568:
	xorl	%edx, %edx
	movw	%dx, 220(%eax)
L1567:
	ret
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	.def	__Z13TrackAddPointP5TRACKP11TRACK_POINTs;	.scl	2;	.type	32;	.endef
__Z13TrackAddPointP5TRACKP11TRACK_POINTs:
LFB97:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	movswl	%cx, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movswl	10(%ebx), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%esi,%edx,4), %edx
	movl	(%eax), %esi
	movl	%esi, (%edx)
	movl	4(%eax), %esi
	movl	%esi, 4(%edx)
	movl	8(%eax), %esi
	movl	%esi, 8(%edx)
	movzwl	28(%eax), %esi
	movw	%si, 12(%edx)
	movzwl	38(%eax), %esi
	movw	%si, 14(%edx)
	movzwl	40(%eax), %eax
	movw	%ax, 16(%edx)
	movl	%ecx, %eax
	addw	$1, 10(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z10KillSprites
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__Z15TrackClonePoints
	.def	__Z15TrackClonePoints;	.scl	2;	.type	32;	.endef
__Z15TrackClonePoints:
LFB98:
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
	movswl	%ax, %ebx
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	movswl	26(%ebx), %edx
	movswl	24(%ebx), %eax
	call	__Z17COVERinsertspritess
	movl	_sprite, %edi
	movl	%eax, %esi
	imull	$44, %eax, %eax
	leal	(%edi,%eax), %ecx
	movl	$-1171354717, %edi
	addl	$42, %eax
	mull	%edi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 42(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movzwl	28(%ebx), %eax
	movw	%ax, 28(%ecx)
	movzwl	38(%ebx), %eax
	movw	%ax, 38(%ecx)
	movzwl	40(%ebx), %eax
	movw	%ax, 40(%ecx)
	movl	%esi, %eax
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
LFE98:
	.p2align 4
	.globl	__Z14QuickJumpSetupsss
	.def	__Z14QuickJumpSetupsss;	.scl	2;	.type	32;	.endef
__Z14QuickJumpSetupsss:
LFB99:
	.cfi_startproc
	cwtl
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movzwl	_headspritestat(%eax,%eax), %eax
	movw	%dx, 16(%esp)
	movw	%cx, 18(%esp)
	cmpw	$-1, %ax
	je	L1574
	movl	%ebx, 20(%esp)
	movl	%edi, 28(%esp)
	movl	%ebp, 32(%esp)
	movl	%esi, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	%eax, %esi
L1575:
	movswl	%si, %eax
	movw	%si, 4(%esp)
	xorl	%ebp, %ebp
	movzwl	_nextspritestat(%eax,%eax), %esi
	movl	$_Track+10, %eax
	jmp	L1579
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1590:
	addl	$1, %ebp
	addl	$12, %eax
	cmpl	$100, %ebp
	je	L1578
L1579:
	cmpw	$0, (%eax)
	jne	L1590
L1578:
	leal	(%ebp,%ebp), %edi
	movl	_g_sm_heap, %ecx
	leal	(%edi,%ebp), %eax
	movl	_Track(,%eax,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$80, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1580
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	xorl	%eax, %eax
L1581:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L1581
	leal	(%edi,%ebp), %edx
	movzbl	18(%esp), %ecx
	movl	$1, %eax
	leal	_Track(,%edx,4), %edi
	movl	%ebx, _Track(,%edx,4)
	sall	%cl, %eax
	orl	%eax, 4(%edi)
	xorl	%eax, %eax
	movw	%ax, 8(%edi)
	movswl	4(%esp), %eax
	movl	%edi, 8(%esp)
	movl	$-1171354717, %edi
	movl	%eax, %ebp
	call	__Z15TrackClonePoints
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%ebp, %eax
	call	__Z15TrackClonePoints
	movl	_sprite, %edx
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	movswl	%cx, %ecx
	leal	(%edx,%eax), %ebp
	addl	$38, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$700, %edx
	movw	%dx, 38(%ebp)
	leal	40(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ebp)
	movl	8(%esp), %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, 4(%esp), %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	movswl	28(%ecx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movsbl	_sintable+1(%eax,%eax), %ebp
	movl	%ecx, %eax
	subl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	leal	4(%ecx), %edx
	addl	%ebp, (%ecx)
	subl	_sprite, %edx
	movsbl	_sintable+1(%eax,%eax), %ebp
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	addl	%ebp, 4(%ecx)
	mull	%edi
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	16(%esp), %edx
	movw	%dx, 38(%ecx)
	movl	4(%esp), %ecx
	movl	%ebx, %edx
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	imull	$44, 12(%esp), %ecx
	movl	_sprite, %edx
	addl	%edx, %ecx
	movswl	28(%ecx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ebp
	movl	%ecx, %eax
	subl	%edx, %eax
	mull	%edi
	sarl	$3, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	leal	4(%ecx), %edx
	addl	%ebp, (%ecx)
	subl	_sprite, %edx
	movswl	_sintable(%eax,%eax), %ebp
	movl	%edx, %eax
	mull	%edi
	sarl	$3, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	addl	%ebp, 4(%ecx)
	mull	%edi
	movl	$701, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 38(%ecx)
	movl	%edx, %eax
	mull	%edi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%ax, 40(%ecx)
	movswl	12(%esp), %ecx
	movl	8(%esp), %eax
	call	__Z13TrackAddPointP5TRACKP11TRACK_POINTs
	cmpw	$-1, %si
	jne	L1575
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L1574:
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
L1580:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$1, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	.def	__Z13RefreshPointsP19SECTOR_OBJECTstructiih;	.scl	2;	.type	32;	.endef
__Z13RefreshPointsP19SECTOR_OBJECTstructiih:
LFB100:
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
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	movzbl	100(%esp), %eax
	movl	%edx, 32(%esp)
	movl	%ecx, 36(%esp)
	movb	%al, 63(%esp)
	testb	%al, %al
	jne	L1592
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L1594
	xorl	%esi, %esi
	movl	%ebp, %edi
	movw	%si, 28(%esp)
	jmp	L1605
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1602:
	movl	4(%edi), %eax
	addl	$4, %edi
	testl	%eax, %eax
	je	L1594
L1605:
	testb	$1, 597(%ebp)
	jne	L1602
	movzwl	(%eax), %esi
	movzwl	2(%eax), %ecx
	addl	%esi, %ecx
	leal	-1(%ecx), %eax
	movw	%ax, 60(%esp)
	cmpw	%si, %ax
	jl	L1602
	movswl	%si, %ebx
	movl	%edi, 40(%esp)
	sall	$5, %ebx
	addl	_wall, %ebx
	jmp	L1601
	.p2align 4,,10
	.p2align 3
L1746:
	movswl	28(%esp), %eax
	movl	180(%ebp), %edx
	movswl	800(%ebp,%eax,2), %ecx
	movswl	2000(%ebp,%eax,2), %eax
	subl	%ecx, %edx
	movl	184(%ebp), %ecx
	movl	%edx, 68(%esp)
	subl	%eax, %ecx
	movl	%ecx, 64(%esp)
L1600:
	movl	%ebx, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	4(%ebx), %eax
	movl	%edx, (%ebx)
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%ecx, 4(%ebx)
L1603:
	addw	$1, 28(%esp)
	addl	$32, %ebx
	addl	$1, %esi
	cmpw	%si, 60(%esp)
	jl	L1745
L1601:
	movzwl	30(%ebx), %eax
	testw	%ax, %ax
	je	L1746
	testb	$32, %al
	jne	L1603
	movswl	28(%esp), %ecx
	movswl	800(%ebp,%ecx,2), %edx
	movl	%edx, %edi
	movl	180(%ebp), %edx
	subl	%edi, %edx
	movswl	2000(%ebp,%ecx,2), %edi
	movl	184(%ebp), %ecx
	movl	%edx, 68(%esp)
	subl	%edi, %ecx
	movl	%ecx, 64(%esp)
	testb	$16, %al
	je	L1600
	movswl	%si, %eax
	call	_dragpoint.constprop.0
	jmp	L1603
L1757:
	movl	%esi, %ebp
L1594:
	movzwl	3560(%ebp), %eax
	movzwl	3552(%ebp), %edx
	cmpw	$0, 3558(%ebp)
	je	L1620
	addw	3554(%ebp), %ax
	subl	%edx, %eax
	andw	$2047, %ax
	movw	%ax, 60(%esp)
L1621:
	movl	180(%ebp), %eax
	movl	32(%esp), %esi
	movl	$-1171354717, %ebx
	leal	(%esi,%eax), %ecx
	movl	36(%esp), %esi
	addl	%esi, 184(%ebp)
	cmpl	$2147483647, %ecx
	movl	176(%ebp), %esi
	movl	%ecx, 180(%ebp)
	setne	%dl
	cmpl	$2147483647, %eax
	setne	%al
	andl	%eax, %edx
	movb	%dl, 48(%esp)
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esi)
	movl	176(%ebp), %ecx
	movl	184(%ebp), %esi
	leal	4(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 4(%ecx)
	movl	596(%ebp), %edx
	testb	$-128, %dh
	je	L1622
	movswl	3202(%ebp), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	8(%eax), %eax
	movl	%eax, 188(%ebp)
L1622:
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L1623
	xorl	%esi, %esi
	andb	$3, %dh
	je	L1747
	.p2align 4
	.p2align 3
L1624:
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L1639
	jmp	L1637
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1638:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L1637
L1639:
	imull	$24124, %ebx, %eax
	movl	_Player+104(%eax), %edx
	leal	_Player(%eax), %edi
	testl	%edx, %edx
	jne	L1638
	movl	_Player+152(%eax), %eax
	testl	%eax, %eax
	je	L1638
	testb	$32, 38(%eax)
	jne	L1638
	subl	_sector, %eax
	movswl	600(%ebp,%esi,2), %edx
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	cmpl	%edx, %eax
	jne	L1638
	cmpb	$0, 48(%esp)
	je	L1638
	movl	36(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ebp, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z10MovePlayerP12PLAYERstructP19SECTOR_OBJECTstructii
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L1639
	.p2align 4
	.p2align 3
L1637:
	movl	4(%ebp,%esi,4), %eax
	testl	%eax, %eax
	je	L1623
	movl	596(%ebp), %edx
	addl	$1, %esi
	andb	$3, %dh
	jne	L1624
L1747:
	movswl	(%eax), %edi
	movl	%edi, %edx
	addw	2(%eax), %dx
	subl	$1, %edx
	movswl	%dx, %eax
	movl	%eax, 28(%esp)
	cmpl	%eax, %edi
	jg	L1624
	movzwl	60(%esp), %eax
	movl	%edi, %ebx
	movl	%esi, 52(%esp)
	sall	$5, %ebx
	addl	_wall, %ebx
	negl	%eax
	movw	%ax, 40(%esp)
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1751:
	leal	(%edx,%edx), %ecx
	movl	%ecx, %edx
	andw	$2046, %dx
	testb	$8, %al
	je	L1748
L1630:
	sall	$2, %edx
	leal	72(%esp), %ecx
	movl	%eax, 44(%esp)
	andl	$2044, %edx
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
L1741:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	180(%ebp), %eax
	movl	184(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	72(%esp), %edx
	movl	76(%esp), %ecx
	movl	44(%esp), %eax
L1633:
	testb	$16, %al
	jne	L1635
L1634:
	movl	%ebx, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%ebx)
	subl	_wall, %esi
	shrl	$5, %esi
	addl	$1, _wallchanged(,%esi,4)
	movl	%ecx, 4(%ebx)
L1625:
	addl	$32, %ebx
	addl	$1, %edi
	cmpl	28(%esp), %edi
	jg	L1749
L1636:
	movzwl	30(%ebx), %edx
	testb	$33, %dl
	jne	L1625
	movl	_wall, %ecx
	movl	%ebx, %eax
	leal	4(%ebx), %esi
	subl	%ecx, %eax
	shrl	$5, %eax
	testw	%dx, %dx
	je	L1626
	andl	$16, %edx
	jne	L1750
L1626:
	addl	$1, _wallchanged(,%eax,4)
	movl	32(%esp), %eax
	addl	%eax, (%ebx)
	movl	%esi, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	36(%esp), %eax
	addl	%eax, 4(%ebx)
L1627:
	movzwl	30(%ebx), %eax
	movzwl	60(%esp), %edx
	testb	$2, %al
	cmovne	40(%esp), %dx
	testb	$4, %al
	jne	L1751
	testb	$8, %al
	jne	L1630
	leal	72(%esp), %ecx
	movswl	%dx, %edx
	movl	%eax, 44(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	180(%ebp), %eax
	movl	184(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	44(%esp), %eax
	movl	72(%esp), %edx
	movl	76(%esp), %ecx
	testw	%ax, %ax
	je	L1634
	jmp	L1633
	.p2align 4,,10
	.p2align 3
L1635:
	movswl	%di, %eax
	addl	$32, %ebx
	addl	$1, %edi
	call	_dragpoint.constprop.0
	cmpl	28(%esp), %edi
	jle	L1636
	.p2align 4
	.p2align 3
L1749:
	movl	52(%esp), %esi
	jmp	L1624
	.p2align 4,,10
	.p2align 3
L1750:
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	36(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addl	4(%ebx), %ecx
	movl	%ecx, 4(%ebx)
	movl	32(%esp), %edx
	addl	$1, _wallchanged(,%eax,4)
	addl	(%ebx), %edx
	movswl	%di, %eax
	movl	%edx, (%ebx)
	call	_dragpoint.constprop.0
	jmp	L1627
	.p2align 4,,10
	.p2align 3
L1623:
	movswl	680(%ebp), %ebx
	cmpw	$-1, %bx
	je	L1641
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movw	%si, 28(%esp)
	jmp	L1656
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1642:
	addw	$1, 28(%esp)
	movswl	28(%esp), %eax
	movswl	680(%ebp,%eax,2), %ebx
	movl	%eax, 40(%esp)
	cmpw	$-1, %bx
	je	L1641
L1656:
	movl	_User(,%ebx,4), %esi
	testl	%esi, %esi
	je	L1642
	movl	144(%esi), %ecx
	testl	%ecx, %ecx
	jne	L1642
	testb	$64, 69(%esi)
	je	L1642
	imull	$44, %ebx, %ebx
	movl	_sprite, %edx
	movl	_connecthead, %eax
	movswl	%ax, %edi
	addl	%edx, %ebx
	cmpw	$-1, %ax
	je	L1643
	.p2align 4
	.p2align 3
L1645:
	imull	$24124, %edi, %eax
	addl	$_Player, %eax
	movl	160(%eax), %edx
	cmpl	%edx, %ebx
	sete	%cl
	testl	%edx, %edx
	setne	%dl
	testb	%dl, %cl
	je	L1644
	cmpb	$0, 48(%esp)
	jne	L1752
L1644:
	movl	_connectpoint2(,%edi,4), %eax
	movswl	%ax, %edi
	cmpw	$-1, %ax
	jne	L1645
	movl	_sprite, %edx
L1643:
	movl	%ebx, %eax
	movl	$-1171354717, %edi
	movl	180(%ebp), %ecx
	subl	248(%esi), %ecx
	subl	%edx, %eax
	mull	%edi
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%ecx, (%ebx)
	movl	_sprite, %edi
	movl	184(%ebp), %ecx
	subl	252(%esi), %ecx
	subl	%edi, %edx
	movl	%edi, 44(%esp)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%edi, %edx
	movl	%ecx, 4(%ebx)
	movl	256(%esi), %ecx
	mull	%edx
	movl	%ecx, 56(%esp)
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 52(%esp)
	testb	$1, 597(%ebp)
	je	L1646
	movl	188(%ebp), %eax
	subl	%ecx, %eax
	movl	%eax, %ecx
L1647:
	movl	52(%esp), %eax
	movl	%eax, _spritechanged(,%edx,4)
	movzwl	28(%ebx), %eax
	movl	%ecx, 8(%ebx)
	leal	28(%ebx), %ecx
	movzwl	260(%esi), %edi
	movw	%ax, 52(%esp)
	movl	%ecx, %edx
	movl	$-1171354717, %eax
	subl	44(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebx)
	movl	596(%ebp), %eax
	testb	$64, 70(%esi)
	je	L1649
	testb	$2, %ah
	jne	L1642
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movswl	(%eax), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	30(%eax), %eax
	testb	$1, %al
	jne	L1642
	movl	%ecx, 44(%esp)
	movl	%ebx, 20(%esp)
	testb	$2, %al
	jne	L1753
	movswl	60(%esp), %eax
	movl	%eax, 16(%esp)
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	180(%ebp), %eax
	movl	184(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movzwl	60(%esp), %eax
	addl	%edi, %eax
L1742:
	andw	$2047, %ax
	movl	44(%esp), %ecx
	subl	_sprite, %ecx
	movl	%eax, %edi
	movl	$-1171354717, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 44(%esp)
	movw	%di, 28(%ebx)
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1641:
	movl	_connecthead, %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	jne	L1661
	jmp	L1657
	.p2align 4,,10
	.p2align 3
L1754:
	leal	268(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 4(%esp)
	movl	_Player(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	%ebx, %eax
	testb	$64, 22969(%ebx)
	je	L1659
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	136(%ebx), %ecx
	leal	-9216(%ecx), %eax
L1744:
	movl	%eax, 8(%ebx)
	movl	352(%ebx), %ebx
	movl	$-1171354717, %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
L1660:
	movl	_connectpoint2(,%esi,4), %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	je	L1657
L1661:
	movswl	%bx, %esi
	imull	$24124, %esi, %eax
	movl	_Player+22984(%eax), %edx
	leal	_Player(%eax), %ebx
	testl	%edx, %edx
	jne	L1754
	movl	_connectpoint2(,%esi,4), %eax
	andl	$-257, 22968(%ebx)
	movl	%eax, %ebx
	cmpw	$-1, %ax
	jne	L1661
L1657:
	cmpb	$0, 63(%esp)
	je	L1591
	movl	164(%ebp), %eax
	testl	%eax, %eax
	je	L1591
	movl	%ebp, 100(%esp)
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
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L1659:
	.cfi_restore_state
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	testw	$2060, 22968(%ebx)
	jne	L1660
	movl	136(%ebx), %ecx
	leal	-14848(%ecx), %eax
	jmp	L1744
L1591:
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
L1752:
	.cfi_restore_state
	movl	36(%esp), %ecx
	movl	%ebp, %edx
	movl	%ecx, (%esp)
	movl	32(%esp), %ecx
	call	__Z10MovePlayerP12PLAYERstructP19SECTOR_OBJECTstructii
	jmp	L1644
L1649:
	testb	$2, %ah
	je	L1755
	cmpl	$2147483647, 180(%ebp)
	jne	L1653
L1743:
	movzwl	28(%ebx), %eax
	movw	%ax, 44(%esp)
	movl	%eax, %edi
L1651:
	movswl	52(%esp), %ecx
	movswl	44(%esp), %eax
	subl	%ecx, %eax
	movl	%ecx, %edx
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	cmpl	$1024, %ecx
	jle	L1654
	leal	2048(%edi), %eax
	cmpw	$1025, 44(%esp)
	cmovl	%eax, %edi
	leal	2048(%edx), %eax
	cmpw	$1025, %dx
	cmovl	%eax, %edx
L1654:
	movl	%edi, %eax
	subl	%edx, %eax
	addw	%ax, 286(%esi)
	testb	$16, 43(%ebx)
	je	L1642
	movl	40(%esp), %eax
	movswl	680(%ebp,%eax,2), %eax
	movl	%eax, (%esp)
	call	__Z13DoBladeDamages
	jmp	L1642
L1646:
	movl	_sector, %ecx
	testb	$64, 70(%esi)
	je	L1648
	movswl	24(%ebx), %edi
	leal	(%edi,%edi,4), %edi
	movl	8(%ecx,%edi,8), %ecx
	subl	56(%esp), %ecx
	jmp	L1647
L1620:
	addw	3222(%ebp), %ax
	subl	%edx, %eax
	andw	$2047, %ax
	movw	%ax, 60(%esp)
	jmp	L1621
L1592:
	movl	160(%ebp), %eax
	testl	%eax, %eax
	je	L1756
	movl	%ebp, (%esp)
	call	*%eax
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L1594
	movl	%ebp, %edi
L1597:
	xorl	%ebx, %ebx
	movl	%ebp, %esi
	movw	%bx, 28(%esp)
	jmp	L1619
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1607:
	movl	4(%edi), %eax
	addl	$4, %edi
	testl	%eax, %eax
	je	L1757
L1619:
	testb	$1, 597(%esi)
	jne	L1607
	movzwl	(%eax), %ebp
	movzwl	2(%eax), %ecx
	addl	%ebp, %ecx
	leal	-1(%ecx), %eax
	movw	%ax, 60(%esp)
	cmpw	%bp, %ax
	jl	L1607
	movswl	%bp, %eax
	movl	%edi, 52(%esp)
	movl	%ebp, %edi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%eax, %ebx
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1759:
	testb	$32, %al
	jne	L1611
	movswl	28(%esp), %ebp
	movl	180(%esi), %edx
	movswl	800(%esi,%ebp,2), %ecx
	subl	%ecx, %edx
	movl	%ecx, 48(%esp)
	movl	184(%esi), %ecx
	movl	%edx, 40(%esp)
	movl	%edx, 68(%esp)
	movswl	2000(%esi,%ebp,2), %edx
	subl	%edx, %ecx
	movl	%ecx, 44(%esp)
	movl	%ecx, 64(%esp)
	cmpw	$0, 3578(%esi)
	je	L1614
	testb	$1, %ah
	je	L1665
L1614:
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
L1612:
	testb	$16, %al
	jne	L1617
L1613:
	movl	%ebx, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	4(%ebx), %eax
	movl	%edx, (%ebx)
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%ecx, 4(%ebx)
L1611:
	addw	$1, 28(%esp)
	addl	$32, %ebx
	addl	$1, %edi
	cmpw	%di, 60(%esp)
	jl	L1758
L1618:
	movzwl	30(%ebx), %eax
	testw	%ax, %ax
	jne	L1759
	movswl	28(%esp), %ebp
	movl	180(%esi), %eax
	movswl	800(%esi,%ebp,2), %ecx
	movswl	2000(%esi,%ebp,2), %edx
	subl	%ecx, %eax
	movl	%ecx, 48(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, 68(%esp)
	movl	184(%esi), %eax
	subl	%edx, %eax
	movl	%eax, 44(%esp)
	movl	%eax, 64(%esp)
	cmpw	$0, 3578(%esi)
	jne	L1665
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
	jmp	L1613
L1648:
	movswl	3202(%ebp), %edi
	leal	(%edi,%edi,4), %edi
	movl	8(%ecx,%edi,8), %ecx
	subl	56(%esp), %ecx
	jmp	L1647
L1653:
	movl	40(%esp), %eax
	movl	%ebx, 4(%esp)
	movswl	680(%ebp,%eax,2), %eax
	movl	%eax, (%esp)
	call	_setspritez
	jmp	L1743
L1755:
	movswl	60(%esp), %eax
	movl	%ebx, 20(%esp)
	movl	%ecx, 44(%esp)
	movl	%eax, 16(%esp)
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	180(%ebp), %eax
	movl	184(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	movl	44(%esp), %ecx
	movl	$-1171354717, %eax
	subl	_sprite, %ecx
	mull	%ecx
	addw	60(%esp), %di
	andw	$2047, %di
	movl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%di, 28(%ebx)
	cmpl	$2147483647, 180(%ebp)
	je	L1743
	jmp	L1653
	.p2align 4,,10
	.p2align 3
L1617:
	movswl	%di, %eax
	call	_dragpoint.constprop.0
	jmp	L1611
	.p2align 4,,10
	.p2align 3
L1758:
	movl	52(%esp), %edi
	jmp	L1607
	.p2align 4,,10
	.p2align 3
L1745:
	movl	40(%esp), %edi
	jmp	L1602
L1665:
	movl	48(%esp), %ecx
	negl	%edx
	negl	%ecx
	call	@getangle@8
	movl	%eax, %ecx
	cmpw	$5, 3578(%esi)
	je	L1760
	movswl	3582(%esi), %ebp
	movswl	6002(%esi), %eax
	movswl	6000(%esi), %edx
	imull	%ebp, %eax
	imull	%ebp, %edx
	sarl	$8, %eax
	movl	%eax, 48(%esp)
	leal	512(%ecx), %eax
	sarl	$8, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	andl	$2047, %eax
	imull	48(%esp), %ecx
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	movl	40(%esp), %edx
	sarl	$14, %ecx
	addl	44(%esp), %ecx
	movl	%ecx, 64(%esp)
	sarl	$14, %eax
	addl	%eax, %edx
	movzwl	30(%ebx), %eax
	movl	%edx, 68(%esp)
L1616:
	testw	%ax, %ax
	je	L1613
	jmp	L1612
L1753:
	movzwl	60(%esp), %eax
	negl	%eax
	cwtl
	movl	%eax, 16(%esp)
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	180(%ebp), %eax
	movl	184(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	subw	60(%esp), %di
	movl	%edi, %eax
	jmp	L1742
L1756:
	movl	0(%ebp), %eax
	movl	%ebp, %edi
	testl	%eax, %eax
	jne	L1597
	jmp	L1594
L1760:
	leal	64(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 24(%esp)
	leal	68(%esp), %eax
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	%cx, %eax
	movl	%eax, 8(%esp)
	call	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_
	movzwl	30(%ebx), %eax
	movl	64(%esp), %ecx
	movl	68(%esp), %edx
	jmp	L1616
L1748:
	leal	72(%esp), %edx
	andl	$2046, %ecx
	movl	%eax, 44(%esp)
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	jmp	L1741
	.cfi_endproc
LFE100:
	.p2align 4
	.globl	__Z15DoTornadoObjectP19SECTOR_OBJECTstruct
	.def	__Z15DoTornadoObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z15DoTornadoObjectP19SECTOR_OBJECTstruct:
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
	andl	$-8, %esp
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	movlps	LC8, %xmm0
	movzwl	3224(%edi), %eax
	movl	192(%edi), %ecx
	movlps	180(%edi), %xmm1
	leal	512(%eax), %edx
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %esi
	movlps	%xmm1, 32(%esp)
	movswl	3568(%edi), %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%ecx, %esi
	movw	%ax, 46(%esp)
	imull	%ecx, %edx
	leal	(%eax,%eax,4), %ecx
	movl	%edx, 40(%esp)
	movl	_sector, %edx
	movl	4(%edx,%ecx,8), %eax
	subl	8(%edx,%ecx,8), %eax
	movl	$2147483647, %ecx
	movl	%eax, %ebx
	negl	%ebx
	cmovs	%eax, %ebx
	movl	%edi, %eax
	subl	$_SectorObject, %eax
	sarl	$2, %eax
	sarl	$2, %ebx
	imull	$1048804528, %eax, %eax
	movl	%ebx, 56(%esp)
	movlps	%xmm0, __ZL13so_interpdata.lto_priv.0+458756(%eax)
	movl	$2147483647, %eax
	subl	184(%edi), %ecx
	subl	180(%edi), %eax
	movl	$0, (%esp)
	movl	%eax, %edx
	movl	%edi, %eax
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	movswl	3226(%edi), %eax
	movl	40(%esp), %edx
	movl	%ebx, 24(%esp)
	movl	%esi, 12(%esp)
	movlps	32(%esp), %xmm1
	movl	%eax, 16(%esp)
	leal	46(%esp), %eax
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	$81921, 28(%esp)
	movl	$0, 20(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movlps	%xmm1, 48(%esp)
	call	_clipmove
	movl	52(%esp), %ebx
	movl	48(%esp), %esi
	movl	%ebx, 40(%esp)
	testl	%eax, %eax
	jne	L1774
L1762:
	movswl	3222(%edi), %ecx
	movswl	3550(%edi), %edx
	movl	%edx, %ebx
	subl	%ecx, %edx
	movl	%ecx, %eax
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	movl	%eax, %ecx
	cmpl	$1024, %edx
	jle	L1763
	cmpw	$1025, %bx
	leal	2048(%ebx), %edx
	leal	2048(%eax), %ecx
	cmovl	%edx, %ebx
	cmpw	$1025, %ax
	cmovge	%eax, %ecx
L1763:
	subl	%ecx, %ebx
	movswl	3562(%edi), %ecx
	movswl	%bx, %ebx
	sarl	%cl, %ebx
	addl	%ebx, %eax
	andw	$2047, %ax
	movw	%ax, 3222(%edi)
	movl	%edi, %eax
	call	__Z5MoveZP19SECTOR_OBJECTstruct
	movzwl	3558(%edi), %edx
	movzwl	3560(%edi), %ecx
	leal	(%edx,%edx,2), %eax
	addl	%eax, %ecx
	cwtl
	andw	$2047, %cx
	testw	%dx, %dx
	cmovne	%eax, %ebx
	movw	%cx, 3560(%edi)
	subl	180(%edi), %esi
	movl	%edi, %eax
	movl	40(%esp), %ecx
	subl	184(%edi), %ecx
	movl	%esi, %edx
	movl	%ebx, _GlobSpeedSO
	movl	$1, (%esp)
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
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
L1774:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andw	$511, %ax
	addw	$768, %ax
	addw	3224(%edi), %ax
	movl	%edx, _randomseed
	andw	$2047, %ax
	movw	%ax, 3224(%edi)
	jmp	L1762
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct
	.def	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct:
LFB108:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movswl	680(%eax), %eax
	cmpw	$-1, %ax
	je	L1776
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	leal	680(%ebx), %esi
	.p2align 4
	.p2align 3
L1779:
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	addl	_sprite, %edx
	andl	$-16385, 68(%eax)
	cmpw	$2307, 14(%edx)
	jne	L1777
	cmpw	$69, 40(%edx)
	je	L1778
L1777:
	movl	%ebx, %eax
	call	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	movswl	(%esi), %eax
	call	__Z10KillSprites
L1778:
	movswl	2(%esi), %eax
	addl	$2, %esi
	cmpw	$-1, %ax
	jne	L1779
	movl	4(%esp), %esi
	.cfi_restore 6
L1776:
	movl	$-1, %eax
	movw	%ax, 680(%ebx)
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE108:
	.p2align 4
	.globl	__Z24DetectSectorObjectByWallP10walltypev7
	.def	__Z24DetectSectorObjectByWallP10walltypev7;	.scl	2;	.type	32;	.endef
__Z24DetectSectorObjectByWallP10walltypev7:
LFB109:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$_SectorObject, %edx
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
L1794:
	cmpl	$2147483647, 180(%edx)
	je	L1786
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1786
	movl	%edi, 12(%esp)
	movl	%edx, (%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	_wall, %ebp
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
L1793:
	movzwl	(%eax), %edx
	movzwl	2(%eax), %edi
	addl	%edx, %edi
	subl	$1, %edi
	cmpw	%dx, %di
	jl	L1787
	movswl	%dx, %eax
	sall	$5, %eax
	addl	%ebp, %eax
	jmp	L1792
	.p2align 4,,10
	.p2align 3
L1807:
	addl	$1, %edx
	addl	$32, %eax
	cmpw	%dx, %di
	jl	L1787
L1792:
	testb	$16, 30(%eax)
	je	L1788
	movswl	10(%eax), %ecx
	cmpw	$16383, %cx
	ja	L1788
	sall	$5, %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	je	L1805
L1788:
	cmpl	%eax, %ebx
	jne	L1807
L1805:
	movl	(%esp), %edx
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L1785:
	movl	4(%esp), %ebx
	movl	%edx, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1787:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%esi), %eax
	addl	$4, %esi
	testl	%eax, %eax
	jne	L1793
	movl	(%esp), %edx
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	.p2align 4
	.p2align 3
L1786:
	addl	$6028, %edx
	cmpl	$_SectorObject+120560, %edx
	jne	L1794
	xorl	%edx, %edx
	jmp	L1785
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	__Z10DoWallMoveP12spritetypev7
	.def	__Z10DoWallMoveP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z10DoWallMoveP12spritetypev7:
LFB110:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1171354717, %ecx
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
	movl	_sprite, %edi
	movl	64(%esp), %ebx
	leal	22(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	22(%ebx), %eax
	leal	36(%ebx), %edx
	subl	%edi, %edx
	movswl	28(%ebx), %esi
	movl	%eax, 12(%esp)
	movzwl	32(%ebx), %eax
	movw	%ax, 26(%esp)
	movzwl	34(%ebx), %eax
	movw	%ax, 24(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ebp
	movl	%eax, (%esp)
	movl	%ebp, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %eax
	movb	%al, 22(%esp)
	movl	(%esp), %eax
	addl	$2, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	36(%ebx), %eax
	movb	%al, 23(%esp)
	leal	30(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 16(%esp)
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	30(%ebx), %edi
	salw	$3, %di
	jne	L1859
L1809:
	leal	512(%esi), %eax
	movl	12(%esp), %ecx
	movl	_wall, %ebp
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 8(%esp)
	movswl	_sintable(%esi,%esi), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 4(%esp)
	movswl	_numwalls, %eax
	sall	$5, %eax
	movl	%eax, (%esp)
	addl	%ebp, %eax
	cmpl	%eax, %ebp
	jnb	L1810
	movl	%ebp, %edi
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	L1827
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1811:
	movl	_wall, %ebp
	movl	(%esp), %eax
	addl	$32, %edi
	addl	%ebp, %eax
	cmpl	%eax, %edi
	jnb	L1860
L1827:
	movl	(%ebx), %eax
	cmpl	(%edi), %eax
	jne	L1811
	movl	4(%edi), %edx
	cmpl	%edx, 4(%ebx)
	jne	L1811
	testb	$64, 30(%edi)
	jne	L1861
	movl	%edi, %edx
	addl	8(%esp), %eax
	subl	%ebp, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	4(%esp), %edx
	movl	%eax, (%edi)
	movl	_wall, %ebp
	leal	4(%edi), %eax
	addl	4(%ebx), %edx
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, 4(%edi)
L1816:
	movzbl	22(%esp), %ecx
	testb	%cl, %cl
	je	L1822
	leal	20(%edi), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movb	%cl, 20(%edi)
L1822:
	movzwl	26(%esp), %ecx
	testw	%cx, %cx
	jne	L1862
L1823:
	movl	%edi, %ecx
	subl	%ebp, %ecx
	sarl	$5, %ecx
	movswl	%cx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1824:
	sall	$5, %eax
	leal	0(%ebp,%eax), %edx
	movswl	8(%edx), %eax
	cmpw	%ax, %cx
	jne	L1824
	movzbl	23(%esp), %ecx
	testb	%cl, %cl
	je	L1825
	leal	20(%edx), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movb	%cl, 20(%edx)
L1825:
	movzwl	24(%esp), %ecx
	testw	%cx, %cx
	je	L1826
	leal	16(%edx), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edx)
L1826:
	movl	(%esp), %eax
	addl	$32, %edi
	movl	$1, %ecx
	addl	%ebp, %eax
	cmpl	%eax, %edi
	jb	L1827
	.p2align 4
	.p2align 3
L1860:
	movl	_sprite, %edi
	movl	16(%esp), %eax
	movl	$-1171354717, %edx
	subl	%edi, %eax
	movl	%edi, %ebp
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subb	$1, 31(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, 31(%ebx)
	jle	L1831
	movl	%esi, %eax
	testb	%al, %al
	je	L1830
	movl	%ebx, %eax
	movl	8(%esp), %esi
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %edx
	subl	%esi, 248(%edx)
	movl	_User(,%eax,4), %eax
	movl	4(%esp), %esi
	subl	%esi, 252(%eax)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
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
L1862:
	.cfi_restore_state
	leal	16(%edi), %eax
	subl	%ebp, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%edi)
	jmp	L1823
	.p2align 4,,10
	.p2align 3
L1810:
	movl	_sprite, %ebp
	movl	16(%esp), %eax
	movl	$-1171354717, %edx
	xorl	%ecx, %ecx
	subl	%ebp, %eax
	movl	%ebp, %edi
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	subb	$1, 31(%ebx)
	addl	$1, _spritechanged(,%eax,4)
	cmpb	$0, 31(%ebx)
	jle	L1831
L1830:
	movl	%ebx, %edx
	movl	$-1171354717, %esi
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	addl	%eax, (%ebx)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	4(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, 4(%ebx)
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ecx, %eax
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
L1859:
	.cfi_restore_state
	movswl	%di, %eax
	sarw	%di
	call	__Z11RandomRangei
	subl	%edi, %esi
	addl	%eax, %esi
	andl	$2047, %esi
	jmp	L1809
	.p2align 4,,10
	.p2align 3
L1861:
	movl	%edi, %eax
	call	__Z24DetectSectorObjectByWallP10walltypev7
	movl	%eax, %ecx
	movl	596(%eax), %eax
	movl	%eax, 36(%esp)
	andl	$256, %eax
	jne	L1858
	movl	(%ecx), %edx
	movl	%ecx, 28(%esp)
	testl	%edx, %edx
	je	L1858
	movl	%ebp, 32(%esp)
	movl	%ecx, 40(%esp)
L1821:
	movswl	(%edx), %esi
	movzwl	2(%edx), %ebp
	addl	%esi, %ebp
	subl	$1, %ebp
	cmpw	%bp, %si
	jg	L1818
	movl	%esi, %edx
	movswl	%bp, %ebp
	subl	%eax, %esi
	sall	$5, %edx
	addl	32(%esp), %edx
	jmp	L1820
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1819:
	addl	$1, %eax
	addl	$32, %edx
	leal	(%esi,%eax), %ecx
	cmpl	%ecx, %ebp
	jl	L1818
L1820:
	cmpl	%edi, %edx
	jne	L1819
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	12(%esp), %ebp
	sarl	$2, %edx
	movl	40(%esp), %ecx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %edx
	movswl	260(%edx), %esi
	leal	512(%esi), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	imull	%ebp, %edx
	sarl	$14, %edx
	movl	%edx, %ebp
	movl	%edx, 8(%esp)
	movswl	_sintable(%esi,%esi), %edx
	imull	12(%esp), %edx
	subw	%bp, 800(%ecx,%eax,2)
	movl	%edx, %esi
	sarl	$14, %esi
	subw	%si, 2000(%ecx,%eax,2)
	movl	36(%esp), %eax
	movl	%esi, 4(%esp)
	orl	$1048576, %eax
	movl	%eax, 596(%ecx)
L1858:
	movl	_wall, %ebp
	movl	$1, %esi
	jmp	L1816
	.p2align 4,,10
	.p2align 3
L1831:
	movl	%ebx, %eax
	movl	%ecx, (%esp)
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z10KillSprites
	movl	(%esp), %ecx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	movl	%ecx, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1818:
	.cfi_restore_state
	addl	$4, 28(%esp)
	movl	28(%esp), %esi
	movl	(%esi), %edx
	testl	%edx, %edx
	jne	L1821
	jmp	L1858
	.cfi_endproc
LFE110:
	.p2align 4
	.globl	__Z15DoWallMoveMatchs
	.def	__Z15DoWallMoveMatchs;	.scl	2;	.type	32;	.endef
__Z15DoWallMoveMatchs:
LFB114:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movzwl	_headspritestat+156, %ebx
	movzwl	16(%esp), %esi
	cmpw	$-1, %bx
	jne	L1864
	jmp	L1863
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1867:
	cmpw	$-1, %bx
	je	L1863
L1864:
	movswl	%bx, %edx
	movzwl	_nextspritestat(%edx,%edx), %ebx
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	cmpw	%si, 38(%edx)
	jne	L1867
	movl	%edx, (%esp)
	call	__Z10DoWallMoveP12spritetypev7
	movl	$1, %eax
	cmpw	$-1, %bx
	jne	L1864
L1863:
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
LFE114:
	.p2align 4
	.globl	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii
	.def	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii;	.scl	2;	.type	32;	.endef
__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii:
LFB115:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1873
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	%ebx, %ecx
	movl	%edx, 12(%esp)
	movl	%ebx, %edx
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L1879
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1875:
	movl	4(%edx), %eax
	addl	$4, %edx
	testl	%eax, %eax
	je	L1892
L1879:
	testb	$1, 597(%ecx)
	jne	L1875
	movzwl	(%eax), %esi
	movzwl	2(%eax), %edi
	addl	%esi, %edi
	subl	$1, %edi
	cmpw	%si, %di
	jl	L1875
	movswl	%si, %ebx
	movl	%ecx, 8(%esp)
	movl	%ebp, %ecx
	movl	12(%esp), %ebp
	sall	$5, %ebx
	movl	%edx, 4(%esp)
	addl	_wall, %ebx
	jmp	L1878
	.p2align 4,,10
	.p2align 3
L1877:
	movl	%ebx, %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	4(%ebx), %eax
	movl	%ebp, (%ebx)
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%ecx, 4(%ebx)
L1876:
	addl	$1, %esi
	addl	$32, %ebx
	cmpw	%si, %di
	jl	L1893
L1878:
	movzwl	30(%ebx), %eax
	testb	$32, %al
	jne	L1876
	testw	%ax, %ax
	je	L1877
	testb	$16, %al
	je	L1877
	movswl	%si, %eax
	movl	%ebp, %edx
	addl	$1, %esi
	movl	%ecx, (%esp)
	call	_dragpoint.constprop.0
	addl	$32, %ebx
	movl	(%esp), %ecx
	cmpw	%si, %di
	jge	L1878
	.p2align 4
	.p2align 3
L1893:
	movl	4(%esp), %edx
	movl	%ecx, %ebp
	movl	8(%esp), %ecx
	movl	4(%edx), %eax
	addl	$4, %edx
	testl	%eax, %eax
	jne	L1879
L1892:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
L1873:
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE115:
	.p2align 4
	.globl	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs
	.def	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs;	.scl	2;	.type	32;	.endef
__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs:
LFB116:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 36(%esp)
	.cfi_offset 6, -12
	movswl	%dx, %esi
	movl	%eax, %edx
	subl	$_SectorObject, %edx
	sarl	$2, %edx
	imull	$1048804528, %edx, %edx
	movl	$0, __ZL13so_interpdata.lto_priv.0+458756(%edx)
	movl	%esi, __ZL13so_interpdata.lto_priv.0+458760(%edx)
	movzwl	3214(%eax), %ecx
	cmpw	$89, %cx
	jg	L1917
	movl	%ebx, 32(%esp)
	movzwl	3208(%eax), %edx
	.cfi_offset 3, -16
	movl	%esi, %ebx
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	testw	%dx, %dx
	jne	L1918
	movl	%edi, 40(%esp)
	.cfi_offset 7, -8
	testw	%cx, %cx
	js	L1899
	leal	24(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 12(%esp)
	leal	28(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 16(%esp)
	call	__Z7DoTrackP19SECTOR_OBJECTstructsPiS1_
	movl	16(%esp), %eax
L1899:
	movswl	3222(%eax), %edi
	movswl	3550(%eax), %ecx
	movl	%ecx, %edx
	subl	%edi, %ecx
	movl	%edi, %esi
	movl	%ecx, %edi
	negl	%edi
	cmovs	%ecx, %edi
	movl	%esi, %ecx
	cmpl	$1024, %edi
	jle	L1900
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%esi), %ecx
	cmpw	$1025, %si
	cmovge	%esi, %ecx
L1900:
	subl	%ecx, %edx
	movswl	3562(%eax), %ecx
	movl	%eax, 16(%esp)
	movswl	%dx, %edx
	sarl	%cl, %edx
	addl	%edx, %esi
	movl	%edx, 20(%esp)
	andw	$2047, %si
	movw	%si, 3222(%eax)
	call	__Z5MoveZP19SECTOR_OBJECTstruct
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movzwl	3558(%eax), %esi
	movzwl	3560(%eax), %ecx
	imull	%esi, %ebx
	addl	%ebx, %ecx
	movswl	%bx, %ebx
	andw	$2047, %cx
	movw	%cx, 3560(%eax)
	xorl	%ecx, %ecx
	testw	%si, %si
	cmovne	%ecx, %edx
	addl	%edx, %ebx
	movl	596(%eax), %edx
	movl	%ebx, _GlobSpeedSO
	testb	$64, %dh
	jne	L1919
	testl	$3145728, %edx
	jne	L1904
	movl	192(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1904
	movzwl	3550(%eax), %edi
	cmpw	%di, 3222(%eax)
	jne	L1904
	testl	%ebx, %ebx
	je	L1915
	.p2align 4
	.p2align 3
L1904:
	andl	$-1048577, %edx
	movl	%edx, 596(%eax)
	movl	$0, (%esp)
L1916:
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1918:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	subw	%si, %dx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	movw	%dx, 3208(%eax)
	movl	32(%esp), %ebx
	.cfi_restore 3
L1894:
	movl	36(%esp), %esi
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1917:
	.cfi_restore_state
	movl	596(%eax), %edx
	testl	$1048576, %edx
	je	L1894
	andl	$-1048577, %edx
	xorl	%ecx, %ecx
	movl	%edx, 596(%eax)
	xorl	%edx, %edx
	movl	$0, (%esp)
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	movl	36(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1919:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	$1, (%esp)
	jmp	L1916
	.p2align 4,,10
	.p2align 3
L1915:
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	jmp	L1894
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE
	.def	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE;	.scl	2;	.type	32;	.endef
__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE:
LFB117:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1920
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	%ebp, 12(%esp)
	testl	%ebp, %ebp
	je	L1927
	.p2align 4
	.p2align 3
L1922:
	subl	_sector, %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %edx
	movzwl	_headspritesect(%edx,%edx), %esi
	cmpw	$-1, %si
	jne	L1928
	jmp	L1929
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1930:
	cmpw	$-1, %si
	je	L1929
L1928:
	movswl	%si, %edx
	imull	$44, %edx, %ebx
	addl	_sprite, %ebx
	movzwl	_nextspritesect(%edx,%edx), %esi
	movl	%edx, %eax
	cmpw	$69, 40(%ebx)
	jne	L1930
	cmpb	$3, 18(%ebx)
	jne	L1930
	cmpw	$41, 26(%ebx)
	je	L1930
	movl	_User(,%edx,4), %ebp
	movl	$41, %edx
	call	__Z18change_sprite_statss
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movswl	38(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movswl	38(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z21DoSpawnSpotsForDamages
	movl	12(%esp), %eax
	movl	%eax, 36(%ebp)
	cmpw	$-1, %si
	jne	L1928
	.p2align 4
	.p2align 3
L1929:
	movl	4(%edi), %edx
	addl	$4, %edi
	testl	%edx, %edx
	jne	L1922
L1946:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L1920:
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1923:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%edi), %edx
	addl	$4, %edi
	testl	%edx, %edx
	je	L1946
L1927:
	subl	_sector, %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %eax
	movzwl	_headspritesect(%eax,%eax), %esi
	.p2align 6
	.p2align 4
	.p2align 3
L1945:
	cmpw	$-1, %si
	je	L1923
	movswl	%si, %eax
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movzwl	_nextspritesect(%eax,%eax), %esi
	cmpw	$69, 40(%ebx)
	jne	L1945
	cmpb	$3, 18(%ebx)
	jne	L1945
	movl	$67, %edx
	movl	_User(,%eax,4), %ebp
	call	__Z18change_sprite_statss
	movswl	38(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z20DoSoundSpotStopSounds
	movl	$0, 36(%ebp)
	jmp	L1945
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	__Z16ActorFollowTrackss.constprop.0.isra.0
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z16ActorFollowTrackss.constprop.0.isra.0:
LFB120:
	.cfi_startproc
	subl	$120, %esp
	.cfi_def_cfa_offset 124
	movl	%edi, 112(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movl	%ebp, 116(%esp)
	.cfi_offset 5, -8
	movl	_User(,%edi,4), %ebp
	movswl	218(%ebp), %edx
	cmpw	$-1, %dx
	je	L1947
	movl	%esi, 108(%esp)
	movl	%ebx, 104(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	68(%ebp), %eax
	movl	140(%ebp), %ebx
	movl	%eax, %esi
	andl	$1572864, %esi
	movl	%esi, 48(%esp)
	je	L1949
	testl	$524288, %eax
	je	L1950
	movl	_connecthead, %edx
	movswl	%dx, %ecx
	cmpw	$-1, %dx
	je	L1950
	movl	4(%ebx), %edi
	movl	(%ebx), %esi
	movl	%ebp, 52(%esp)
	movswl	212(%ebp), %ebx
	movl	%eax, 56(%esp)
	movl	%ebx, 48(%esp)
	jmp	L1952
	.p2align 4,,10
	.p2align 3
L1951:
	movl	_connectpoint2(,%ecx,4), %eax
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	je	L2124
L1952:
	imull	$24124, %ecx, %ebx
	movl	_Player(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	_Player+4(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	%ebp, 48(%esp)
	jle	L1951
	movl	56(%esp), %eax
	movl	_Player+352(%ebx), %edx
	movl	52(%esp), %ebp
	andl	$-524289, %eax
	movl	%edx, 200(%ebp)
	movl	%eax, 68(%ebp)
	movl	104(%esp), %ebx
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
L1947:
	movl	112(%esp), %edi
	movl	116(%esp), %ebp
	addl	$120, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1949:
	.cfi_def_cfa_offset 124
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	216(%ebp), %ecx
	testw	%cx, %cx
	jne	L2125
	leal	(%edx,%edx,2), %ecx
	movswl	220(%ebp), %edx
	movl	_Track(,%ecx,4), %ecx
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,4), %esi
	testl	$8320, %eax
	je	L2126
L1954:
	movl	(%esi), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	4(%ebx), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	cmpl	$199, %edx
	jle	L2127
	movl	68(%ebp), %eax
	testb	$8, %ah
	je	L2033
	movswl	172(%ebp), %ecx
	movl	$6, %edx
	sall	%cl, %edx
	movl	224(%ebp), %ecx
	addl	%edx, %ecx
	movl	168(%ebp), %edx
	cmpl	%edx, %ecx
	jge	L2034
L2123:
	movl	%ecx, 224(%ebp)
L2038:
	movl	$-1171354717, %eax
	leal	32(%ebx), %edx
	subl	_sprite, %edx
	sarl	$8, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movl	68(%ebp), %eax
L2036:
	testb	$-128, %al
	je	L2039
	movswl	14(%ebx), %edx
	movl	8(%ebx), %ecx
	movl	%edx, 60(%esp)
	movswl	_tilesiz+2(,%edx,4), %edx
	movl	%ecx, 56(%esp)
	movzbl	21(%ebx), %ecx
	movl	%edx, 52(%esp)
	testb	$-128, 12(%ebx)
	jne	L2128
	cmpb	$64, %cl
	je	L2129
	movzbl	%cl, %edx
	movl	52(%esp), %ecx
	movl	%edx, 64(%esp)
	imull	%edx, %ecx
	leal	0(,%ecx,4), %edx
	movl	56(%esp), %ecx
	subl	%edx, %ecx
	movl	%ecx, 56(%esp)
L2043:
	movl	64(%esp), %edx
	imull	52(%esp), %edx
L2045:
	addl	56(%esp), %edx
	xorl	%ecx, %ecx
	cmpl	256(%ebp), %edx
	jge	L2046
	andb	$127, %al
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, 68(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%ebx)
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	_sprite, %ecx
	leal	28(%ebx), %edx
	movl	%eax, %esi
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebx)
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L2047
	leal	(%eax,%eax,2), %eax
	movl	$-1, %esi
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(,%eax,4)
	movw	%si, 218(%edx)
L2047:
	leal	12(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	andw	$-129, 12(%ebx)
	movl	252(%ebp), %eax
	subl	%ecx, %edx
	movl	%eax, 48(%esp)
	movl	%edx, %eax
	mull	%esi
	movl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, 8(%ebx)
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$-650, %edx
	movl	$__Z19NinjaJumpActionFuncs, 36(%ebp)
	movw	%dx, 92(%ebp)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L2124:
	.cfi_restore_state
	movl	52(%esp), %ebp
L1950:
	movl	$0, 76(%ebp)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %edi
	movl	116(%esp), %ebp
	addl	$120, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2127:
	.cfi_restore_state
	movl	_User(,%edi,4), %eax
	movswl	14(%esi), %edx
	movl	%eax, 52(%esp)
	movl	140(%eax), %eax
	movl	%eax, 56(%esp)
	leal	-700(%edx), %eax
	cmpw	$108, %ax
	ja	L1956
	movzwl	%ax, %eax
	jmp	*L1958(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1958:
	.long	L1987
	.long	L1986
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1985
	.long	L1984
	.long	L1983
	.long	L1982
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1981
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1980
	.long	L1979
	.long	L1978
	.long	L1977
	.long	L1976
	.long	L1956
	.long	L1975
	.long	L1974
	.long	L1973
	.long	L1972
	.long	L1971
	.long	L1970
	.long	L1969
	.long	L1969
	.long	L1969
	.long	L1969
	.long	L1969
	.long	L1969
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1959
	.long	L1968
	.long	L1967
	.long	L1956
	.long	L1956
	.long	L1956
	.long	L1966
	.long	L1965
	.long	L1964
	.long	L1963
	.long	L1961
	.long	L1962
	.long	L1961
	.long	L1960
	.long	L1956
	.long	L1956
	.long	L1959
	.long	L1957
	.text
	.p2align 4,,10
	.p2align 3
L2126:
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, 52(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	jmp	L1954
	.p2align 4,,10
	.p2align 3
L2125:
	subl	$6, %ecx
	movw	%cx, 216(%ebp)
	testw	%cx, %cx
	jle	L2130
L2116:
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	movl	112(%esp), %edi
	movl	116(%esp), %ebp
	addl	$120, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2033:
	.cfi_restore_state
	testb	$16, %ah
	je	L2036
	movswl	172(%ebp), %ecx
	movl	$6, %edx
	sall	%cl, %edx
	movl	224(%ebp), %ecx
	subl	%edx, %ecx
	movl	168(%ebp), %edx
	cmpl	%edx, %ecx
	jg	L2123
	andl	$-3, %eax
	movl	%edx, 224(%ebp)
	movl	%edx, %ecx
	movl	%eax, 68(%ebp)
	jmp	L2038
	.p2align 4,,10
	.p2align 3
L2039:
	movswl	28(%ebx), %ecx
	movswl	32(%ebx), %edx
	leal	512(%ecx), %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%edx, %eax
	sarl	$14, %ecx
	sarl	$14, %eax
	movl	%eax, 48(%esp)
L2046:
	movswl	36(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
L2032:
	movl	$6, 16(%esp)
	movl	$0, 12(%esp)
	movswl	98(%ebp), %edx
	movl	%edx, 8(%esp)
	movswl	96(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	48(%esp), %edx
	call	__Z11move_spritesiiiiiji
	movl	%eax, 264(%ebp)
	testl	%eax, %eax
	je	L2116
	testb	$96, 68(%ebp)
	jne	L2116
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L2116
	leal	(%eax,%eax,2), %eax
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 218(%edx)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L2128:
	.cfi_restore_state
	cmpb	$64, %cl
	je	L2131
	movzbl	%cl, %edx
	movl	52(%esp), %ecx
	movl	%edx, 64(%esp)
	imull	%edx, %ecx
	movl	%ecx, %edx
	movl	60(%esp), %ecx
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	leal	(%ecx,%edx,2), %edx
	movl	56(%esp), %ecx
	subl	%edx, %ecx
	movl	%ecx, 56(%esp)
	jmp	L2043
	.p2align 4,,10
	.p2align 3
L2034:
	andb	$-9, %ah
	movl	%edx, 224(%ebp)
	movl	%edx, %ecx
	movl	%eax, 68(%ebp)
	jmp	L2038
L1969:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	leal	-3048(%eax,%edx,4), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L1956
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$480, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	(%ecx), %edx
L2117:
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4
	.p2align 3
L1956:
	movl	%edi, %eax
	call	__Z19NextActorTrackPoints
	movswl	218(%ebp), %eax
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebp), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	movl	68(%ebp), %ecx
	leal	(%eax,%edx,4), %esi
	testl	$8320, %ecx
	je	L2132
L2031:
	andl	$1024, %ecx
	jne	L2133
	movl	$0, 48(%esp)
	xorl	%eax, %eax
	jmp	L2032
L1961:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	movl	56(%esp), %eax
	movl	_sprite, %ecx
	movl	$-1171354717, %ebp
	movzwl	12(%esi), %ebx
	addl	$28, %eax
	subl	%ecx, %eax
	mull	%ebp
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%eax)
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L1991
	leal	(%eax,%eax,2), %eax
	movl	$-1, %ebx
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(,%eax,4)
	movw	%bx, 218(%edx)
L1991:
	movzwl	16(%esi), %esi
	testw	%si, %si
	je	L1992
	negl	%esi
L1993:
	movl	52(%esp), %ebx
	movw	%si, 92(%ebx)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	$__Z15DoActorMoveJumps, 36(%ebx)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L1959:
	.cfi_restore_state
	movl	52(%esp), %eax
	movl	20(%eax), %edx
	movl	40(%eax), %eax
	cmpl	32(%eax), %edx
	je	L2116
	cmpl	(%eax), %edx
	je	L2116
	movl	56(%esp), %eax
	movl	$-1171354717, %edx
	movswl	12(%esi), %ecx
	addl	$28, %eax
	subl	_sprite, %eax
	mull	%edx
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%eax), %edx
	movw	%cx, 28(%eax)
	movl	%edx, 60(%esp)
	movl	%eax, %edx
	movzbl	21(%eax), %eax
	movswl	14(%edx), %edx
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %al
	je	L2134
	imull	%edx, %eax
	movl	60(%esp), %edx
	sall	$2, %eax
	subl	%eax, %edx
	sarl	%eax
	addl	$1280, %edx
L2003:
	movl	%edx, 84(%esp)
	movl	60(%esp), %edx
	movl	%ebx, 64(%esp)
	movl	56(%esp), %ebx
	subl	%eax, %edx
	movl	%ebp, 60(%esp)
	leal	84(%esp), %ebp
	movl	%edx, 88(%esp)
L2007:
	leal	80(%esp), %eax
	movl	$0, 44(%esp)
	movl	%eax, 32(%esp)
	leal	78(%esp), %eax
	movl	%eax, 28(%esp)
	leal	76(%esp), %eax
	movl	%eax, 24(%esp)
	leal	74(%esp), %eax
	movl	$3, 40(%esp)
	movl	$1024, 36(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, 16(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movswl	78(%esp), %eax
	testw	%ax, %ax
	js	L2004
	cmpl	$1023, 80(%esp)
	jle	L2135
L2004:
	addl	$4, %ebp
	leal	92(%esp), %eax
	cmpl	%eax, %ebp
	je	L2006
	movswl	28(%ebx), %ecx
	jmp	L2007
L1963:
	movl	52(%esp), %ecx
	orl	$1048576, 68(%ecx)
	movzwl	16(%esi), %eax
	movw	%ax, 212(%ecx)
	jmp	L1956
L1957:
	movl	52(%esp), %ecx
	movl	40(%ecx), %eax
	movl	124(%eax), %eax
	cmpl	%eax, 20(%ecx)
	je	L1956
	movl	56(%esp), %ebp
	movl	$-1171354717, %ebx
	movzwl	12(%esi), %ecx
	leal	28(%ebp), %eax
	subl	_sprite, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 28(%ebp)
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L1998
	imull	$12, %eax, %eax
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(%eax)
	movw	$-1, 218(%edx)
L1998:
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$480, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	%edi, (%esp)
	call	__Z13InitActorDucks
	movl	$__Z11DoActorDucks, 36(%esi)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L1983:
	.cfi_restore_state
	movl	52(%esp), %ecx
	movl	68(%ecx), %eax
	movl	168(%ecx), %edx
	movl	%ecx, 52(%esp)
	andb	$-25, %ah
	movl	%eax, 68(%ecx)
	movswl	16(%esi), %ecx
	movl	52(%esp), %esi
	sall	$8, %ecx
	cmpw	$0, 222(%esi)
	jle	L1989
	subl	%ecx, %edx
	orb	$16, %ah
	movl	%edx, 168(%esi)
	movl	%eax, 68(%esi)
	jmp	L1956
L1984:
	movl	52(%esp), %ecx
	movl	68(%ecx), %eax
	movl	%eax, 56(%esp)
	andb	$-25, %ah
	movl	%eax, 68(%ecx)
	movswl	16(%esi), %edx
	movl	%ecx, %esi
	movl	168(%ecx), %ecx
	sall	$8, %edx
	cmpw	$0, 222(%esi)
	js	L2136
L1989:
	movl	52(%esp), %esi
	addl	%ecx, %edx
	orb	$8, %ah
	movl	%edx, 168(%esi)
	movl	%eax, 68(%esi)
	jmp	L1956
L1985:
	movl	52(%esp), %eax
	negw	222(%eax)
	jmp	L1956
L1986:
	movl	52(%esp), %esi
	movswl	218(%esi), %eax
	leal	(%eax,%eax,2), %eax
	movl	_Track+4(,%eax,4), %eax
	testl	%eax, %eax
	je	L1956
	cmpw	$1, 222(%esi)
	jne	L1956
L2119:
	movl	%esi, (%esp)
	call	__Z23DoActorHitTrackEndPointP4USER
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L1975:
	.cfi_restore_state
	movl	52(%esp), %eax
	movl	40(%eax), %ecx
	movl	32(%ecx), %eax
	testl	%eax, %eax
	je	L1956
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$360, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	32(%ecx), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1976:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	24(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1977:
	movl	52(%esp), %esi
	movl	40(%esi), %eax
	movl	20(%eax), %edx
	cmpl	%edx, 20(%esi)
	jne	L2117
L2013:
	movl	28(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1978:
	movl	52(%esp), %esi
	movl	40(%esi), %eax
	movl	16(%eax), %edx
	cmpl	%edx, 20(%esi)
	jne	L2117
	jmp	L2013
L1979:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	movl	56(%esp), %edx
	movzwl	12(%esi), %ecx
	leal	28(%edx), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	movl	56(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 28(%edx)
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %ecx
	negl	%ecx
	testw	%dx, %dx
	movl	$-384, %edx
	movl	%ecx, %eax
	cmove	%edx, %eax
	movw	%ax, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	$__Z15DoActorMoveJumps, 36(%esi)
	jmp	L1956
L1980:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1981:
	movl	52(%esp), %esi
	movl	68(%esi), %eax
	testb	$4, %ah
	je	L2018
	movl	56(%esp), %ecx
	andb	$-5, %ah
	movl	_sector, %edx
	movl	%eax, 68(%esi)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %esi
	leal	8(%ecx), %eax
	movl	$-1171354717, %ecx
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	56(%esp), %eax
	movl	%esi, 8(%eax)
	movl	%eax, %esi
	leal	36(%eax), %eax
	subl	_sprite, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 36(%esi)
	jmp	L1956
L1982:
	movzwl	16(%esi), %eax
	movl	52(%esp), %esi
	movw	%ax, 172(%esi)
	jmp	L1956
L1987:
	movl	52(%esp), %esi
	movswl	218(%esi), %eax
	leal	(%eax,%eax,2), %eax
	movl	_Track+4(,%eax,4), %eax
	testl	%eax, %eax
	je	L1956
	cmpw	$-1, 222(%esi)
	jne	L1956
	jmp	L2119
	.p2align 4,,10
	.p2align 3
L1970:
	movl	52(%esp), %eax
	movl	40(%eax), %ecx
	movl	72(%ecx), %eax
	testl	%eax, %eax
	je	L1956
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$480, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	72(%ecx), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1960:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1956
L2122:
	movl	52(%esp), %edi
	movswl	218(%edi), %eax
	cmpw	$-1, %ax
	je	L2116
	imull	$12, %eax, %eax
	andl	$-196737, 68(%edi)
	andw	$-2, _Track+8(%eax)
	movw	$-1, 218(%edi)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L1962:
	.cfi_restore_state
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	movl	56(%esp), %ebp
	movl	$-1171354717, %ebx
	movzwl	12(%esi), %ecx
	leal	28(%ebp), %eax
	subl	_sprite, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 28(%ebp)
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L1996
	imull	$12, %eax, %eax
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(%eax)
	movw	$-1, 218(%edx)
L1996:
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	negl	%eax
	testw	%dx, %dx
	movl	$-350, %edx
	cmove	%edx, %eax
	movw	%ax, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	$__Z15DoActorMoveJumps, 36(%esi)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L1964:
	.cfi_restore_state
	movl	52(%esp), %ecx
	orl	$524288, 68(%ecx)
	movzwl	16(%esi), %eax
	movw	%ax, 212(%ecx)
	jmp	L1956
L1965:
	movl	52(%esp), %ecx
	movl	40(%ecx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	cmpw	$-1, 222(%ecx)
	jne	L1956
L2118:
	movzwl	16(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	testw	%dx, %dx
	movl	$-384, %edx
	cmove	%edx, %eax
	movw	%ax, 92(%ecx)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	jmp	L1956
L1966:
	movl	52(%esp), %ecx
	movl	40(%ecx), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	cmpw	$1, 222(%ecx)
	jne	L1956
	jmp	L2118
L1967:
	movzwl	16(%esi), %eax
	movl	52(%esp), %esi
	negl	%eax
	movw	%ax, 92(%esi)
	jmp	L1956
L1971:
	movl	52(%esp), %eax
	movl	40(%eax), %ecx
	movl	68(%ecx), %eax
	testl	%eax, %eax
	je	L1956
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$240, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	68(%ecx), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1972:
	movl	52(%esp), %esi
	movl	40(%esi), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L1956
	movl	56(%esp), %ecx
	movl	$-1171354717, %edx
	orl	$256, 68(%esi)
	leal	32(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$-495, %eax
	salw	32(%ecx)
	movw	%ax, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	40(%esi), %eax
	movl	60(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1973:
	movl	52(%esp), %esi
	movl	40(%esi), %eax
	movl	52(%eax), %ecx
	testl	%ecx, %ecx
	je	L1956
	movl	$480, %edx
	movw	%dx, 216(%esi)
	movl	52(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1974:
	movl	52(%esp), %esi
	movl	40(%esi), %eax
	movl	52(%eax), %ecx
	testl	%ecx, %ecx
	je	L1956
	movl	$480, %edx
	movw	%dx, 216(%esi)
	movl	48(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L1968:
	movl	52(%esp), %eax
	movl	40(%eax), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1956
	movl	56(%esp), %eax
	movl	$53, %edx
	call	__Z14FindNearSpriteP12spritetypev7s
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L2122
	movzwl	28(%eax), %edx
	movl	(%ecx), %esi
	movl	%edx, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$100, %eax, %eax
	sarl	$14, %eax
	movl	%eax, 60(%esp)
	leal	512(%edx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$100, %eax, %eax
	sarl	$14, %eax
	addl	%eax, %esi
	movl	56(%esp), %eax
	subl	_sprite, %eax
	movl	%esi, 64(%esp)
	movl	$-1171354717, %esi
	mull	%esi
	movl	64(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	56(%esp), %edx
	movl	%eax, (%edx)
	movl	60(%esp), %eax
	addl	4(%ecx), %eax
	movl	%eax, 60(%esp)
	leal	4(%edx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	%edx, %eax
	movl	56(%esp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	60(%esp), %eax
	movl	%eax, 4(%edx)
	movswl	28(%ecx), %eax
	movl	%edx, %ecx
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, 64(%esp)
	leal	28(%edx), %eax
	subl	_sprite, %eax
	mull	%esi
	movzwl	64(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ecx)
	movzwl	24(%ecx), %eax
	movw	%ax, 70(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 60(%esp)
	movswl	14(%ecx), %edx
	movzbl	21(%ecx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	testb	$-128, 12(%ecx)
	je	L2021
	cmpb	$64, %al
	je	L2137
	movl	%eax, %ecx
	leal	(%edx,%edx,4), %edx
	imull	%esi, %ecx
	movsbl	_picanm+2(%edx), %edx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %edx
	movl	60(%esp), %ecx
	subl	%edx, %ecx
L2024:
	imull	%esi, %eax
	leal	(%eax,%eax), %edx
L2026:
	leal	84(%esp), %eax
	movl	56(%esp), %esi
	subl	%edx, %ecx
	movl	$0, 44(%esp)
	movl	%eax, 32(%esp)
	leal	80(%esp), %eax
	movl	%eax, 28(%esp)
	leal	78(%esp), %eax
	movl	%eax, 24(%esp)
	leal	76(%esp), %eax
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	$3, 40(%esp)
	movl	%eax, 16(%esp)
	movswl	70(%esp), %eax
	movl	$600, 36(%esp)
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	4(%esi), %eax
	movl	%eax, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movswl	78(%esp), %eax
	testw	%ax, %ax
	js	L2138
	sall	$5, %eax
	addl	_wall, %eax
	movl	52(%esp), %esi
	movswl	12(%eax), %eax
	imull	$40, %eax, %eax
	addl	_sector, %eax
	movl	8(%eax), %eax
	movl	%eax, 256(%esi)
	movl	%edi, (%esp)
	call	__Z13DoActorZranges
	movl	56(%esp), %ecx
	movl	_sprite, %esi
	xorl	%edx, %edx
	leal	12(%ecx), %eax
	movl	%esi, 60(%esp)
	subl	%esi, %eax
	movl	$44, %esi
	divl	%esi
	addl	$1, _spritechanged(,%eax,4)
	movswl	14(%ecx), %edx
	orw	$128, 12(%ecx)
	movzbl	21(%ecx), %eax
	movswl	_tilesiz+2(,%edx,4), %ecx
	leal	(%edx,%edx,4), %edx
	movb	%al, 64(%esp)
	movsbl	_picanm+2(%edx), %edx
	imull	%ecx, %eax
	movl	%ecx, %esi
	sall	$7, %esi
	addl	%eax, %eax
	cmpb	$64, 64(%esp)
	cmove	%esi, %eax
	sall	$8, %edx
	movl	52(%esp), %esi
	subl	%edx, %eax
	movl	56(%esp), %edx
	movl	%eax, %ecx
	addl	8(%edx), %eax
	cmpl	108(%esi), %eax
	jle	L2030
	movl	%ecx, 252(%esi)
	leal	8(%edx), %eax
	movl	$44, %esi
	xorl	%edx, %edx
	subl	60(%esp), %eax
	divl	%esi
	movl	56(%esp), %edx
	addl	$1, _spritechanged(,%eax,4)
	subl	%ecx, 8(%edx)
L2030:
	movl	52(%esp), %eax
	orl	$128, 68(%eax)
	movl	40(%eax), %eax
	movl	40(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	56(%esp), %esi
	movl	$44, %ecx
	xorl	%edx, %edx
	leal	36(%esi), %eax
	subl	_sprite, %eax
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	movw	$-256, 36(%esi)
	jmp	L1956
	.p2align 4,,10
	.p2align 3
L2130:
	andb	$-33, %ah
	movl	%eax, 68(%ebp)
	movl	40(%ebp), %eax
	movl	4(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	xorl	%eax, %eax
	movw	%ax, 216(%ebp)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L2129:
	.cfi_restore_state
	movl	52(%esp), %edx
	movl	56(%esp), %ecx
	sall	$8, %edx
	subl	%edx, %ecx
	movl	%ecx, 56(%esp)
L2042:
	movl	52(%esp), %edx
	sall	$6, %edx
	jmp	L2045
L2131:
	movl	60(%esp), %ecx
	sall	$7, %edx
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	addl	%ecx, %edx
	movl	56(%esp), %ecx
	subl	%edx, %ecx
	movl	%ecx, 56(%esp)
	jmp	L2042
L2133:
	movl	(%esi), %ecx
	movl	4(%esi), %eax
	subl	(%ebx), %ecx
	subl	4(%ebx), %eax
	imull	%eax, %eax
	movl	8(%esi), %edx
	imull	%ecx, %ecx
	movl	%edx, 52(%esp)
	addl	%eax, %ecx
	call	@ksqrt@4
	movswl	32(%ebx), %edx
	movl	%eax, %ecx
	movl	8(%ebx), %eax
	subl	52(%esp), %eax
	imull	%edx, %eax
	cltd
	idivl	%ecx
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	negl	%eax
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	xorl	%ecx, %ecx
	jmp	L2032
L2132:
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, 52(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	movl	68(%ebp), %ecx
	jmp	L2031
L2006:
	movswl	74(%esp), %eax
	movl	60(%esp), %ebp
	movl	64(%esp), %ebx
	testw	%ax, %ax
	js	L1956
	cmpl	$1023, 80(%esp)
	jg	L1956
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__Z13OperateSectorss
	testl	%eax, %eax
	je	L1956
	movzwl	16(%esi), %edx
	movl	52(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$240, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%esi)
	movl	40(%esi), %eax
	movl	32(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1956
L2018:
	movl	52(%esp), %esi
	orb	$4, %ah
	movl	%eax, 68(%esi)
	jmp	L1956
L2136:
	subl	%edx, %ecx
	orb	$16, %ah
	movl	%ecx, 168(%esi)
	movl	%eax, 68(%esi)
	jmp	L1956
L2134:
	movl	%edx, %eax
	movl	60(%esp), %edx
	sall	$8, %eax
	subl	%eax, %edx
	sarl	%eax
	addl	$1280, %edx
	jmp	L2003
L2135:
	xorl	%edx, %edx
	call	__Z13OperateSpritess
	testl	%eax, %eax
	je	L2004
	movzwl	16(%esi), %edx
	movl	52(%esp), %ecx
	movl	%edx, %eax
	sall	$7, %eax
	testw	%dx, %dx
	movl	$240, %edx
	cmove	%edx, %eax
	movw	%ax, 216(%ecx)
	movl	40(%ecx), %eax
	movl	(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L2004
L2021:
	cmpb	$64, %al
	je	L2139
	movl	%eax, %edx
	movl	60(%esp), %ecx
	imull	%esi, %edx
	sall	$2, %edx
	subl	%edx, %ecx
	jmp	L2024
L1992:
	movl	56(%esp), %ebp
	movl	$44, %esi
	xorl	%edx, %edx
	leal	12(%ebp), %ebx
	movl	%ebx, %eax
	subl	%ecx, %eax
	divl	%esi
	leal	84(%esp), %edx
	addl	$1, _spritechanged(,%eax,4)
	movswl	28(%ebp), %eax
	andw	$-2, 12(%ebp)
	movl	8(%ebp), %ecx
	movl	4(%ebp), %ebp
	movl	%edx, 16(%esp)
	xorl	%edx, %edx
	movl	%edx, 12(%esp)
	movswl	_sintable(%eax,%eax), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movl	%ecx, 48(%esp)
	subl	$6144, %ecx
	movl	%edx, 8(%esp)
	movl	56(%esp), %edx
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edx), %eax
	movl	%ebp, %edx
	movl	56(%esp), %ebp
	movl	%eax, (%esp)
	movl	0(%ebp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	_sprite, %eax
	divl	%esi
	addl	$1, _spritechanged(,%eax,4)
	orw	$1, 12(%ebp)
	movl	96(%esp), %eax
	andl	$-2147450880, %eax
	cmpl	$32768, %eax
	jne	L2116
	movswl	98(%esp), %eax
	movl	56(%esp), %esi
	movl	_User(,%edi,4), %ebp
	sall	$5, %eax
	addl	_wall, %eax
	movl	8(%esi), %edx
	movswl	12(%eax), %eax
	imull	$40, %eax, %eax
	addl	_sector, %eax
	subl	8(%eax), %edx
	movl	$589224, 92(%ebp)
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	sarl	$8, %eax
	addl	$20, %eax
	movl	%eax, 48(%esp)
	cmpl	$83, %eax
	jle	L2049
	movl	$-700, %ebx
L1995:
	movl	%ebx, %ecx
	movl	%ebx, %esi
	movl	$715827883, %eax
	negw	%cx
	leal	-100(%esi), %ebx
	cmovs	%esi, %ecx
	movswl	%cx, %ecx
	imull	%ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	sarl	$3, %eax
	sarl	$31, %edx
	subl	%edx, %eax
	imull	%ecx, %eax
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	sarl	$9, %eax
	cmpl	48(%esp), %eax
	jle	L1995
	movw	%si, 92(%ebp)
	jmp	L1993
L2139:
	movl	60(%esp), %ecx
	movl	%esi, %eax
	sall	$8, %eax
	subl	%eax, %ecx
L2023:
	sall	$7, %esi
	movl	%esi, %edx
	jmp	L2026
L2138:
	movl	_User(,%edi,4), %edx
	movswl	218(%edx), %eax
	cmpw	$-1, %ax
	je	L2116
	imull	$12, %eax, %eax
	andl	$-196737, 68(%edx)
	andw	$-2, _Track+8(%eax)
	movw	$-1, 218(%edx)
	movl	104(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %esi
	.cfi_restore 6
	jmp	L1947
L2137:
	.cfi_restore_state
	leal	(%edx,%edx,4), %edx
	movl	60(%esp), %ecx
	movsbl	_picanm+2(%edx), %eax
	movl	%esi, %edx
	sall	$7, %edx
	sall	$8, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	jmp	L2023
L2049:
	movl	$-600, %esi
	jmp	L1993
	.cfi_endproc
LFE120:
	.p2align 4
	.globl	__Z10DoSumoMoves
	.def	__Z10DoSumoMoves;	.scl	2;	.type	32;	.endef
__Z10DoSumoMoves:
LFB125:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	cmpw	$0, 218(%eax)
	jns	L2144
	movl	%ebx, (%esp)
	call	*36(%eax)
L2142:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
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
L2144:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L2142
	.cfi_endproc
LFE125:
	.p2align 4
	.globl	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
	.def	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0;	.scl	2;	.type	32;	.endef
__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0:
LFB126:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$_SectorObject, %eax
	sarl	$2, %eax
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movswl	36(%esp), %ecx
	imull	$1048804528, %eax, %eax
	movl	%ebp, 24(%esp)
	movw	%dx, 2(%esp)
	movl	32(%esp), %edx
	movl	$0, __ZL13so_interpdata.lto_priv.0+458756(%eax)
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458760(%eax)
	.cfi_offset 5, -8
	movl	572(%ebx), %ebp
	testl	%ebp, %ebp
	je	L2146
	movswl	3566(%ebx), %ecx
	movl	_totalsynctics, %eax
	sall	%cl, %eax
	andl	$2047, %eax
	movw	%ax, 3564(%ebx)
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebp, %eax
	movl	(%ebx), %ebp
	sarl	$14, %eax
	movl	%eax, 544(%ebx)
	testl	%ebp, %ebp
	je	L2146
	movl	%edx, 4(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 8(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_sector, %edi
	.p2align 4
	.p2align 3
L2149:
	movswl	600(%ebx,%ecx,2), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L2147
	testb	$1, 4(%eax)
	jne	L2148
L2147:
	leal	8(%ebp), %edx
	movl	$-858993459, %eax
	movl	544(%ebx), %esi
	addl	208(%ebx,%ecx,4), %esi
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%esi, 8(%ebp)
L2148:
	addl	$1, %ecx
	movl	(%ebx,%ecx,4), %ebp
	testl	%ebp, %ebp
	jne	L2149
	movl	4(%esp), %edx
	movl	8(%esp), %esi
	movl	20(%esp), %edi
	.cfi_restore 7
L2146:
	movzwl	2(%esp), %eax
	xorl	%ecx, %ecx
	subl	180(%ebx), %esi
	movl	$0, _GlobSpeedSO
	movw	%cx, 3560(%ebx)
	movl	%edx, %ecx
	movl	%esi, %edx
	subl	184(%ebx), %ecx
	movw	%ax, 3224(%ebx)
	movw	%ax, 3222(%ebx)
	movl	%ebx, %eax
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	movl	$0, 32(%esp)
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct
	.def	__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct:
LFB127:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	56(%esp), %edi
	movzwl	3204(%edi), %eax
	cmpw	$-9999, %ax
	je	L2196
	testw	%ax, %ax
	jle	L2161
L2196:
	movl	%ebx, 36(%esp)
	movl	176(%edi), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	.cfi_offset 3, -20
	movl	_User(,%eax,4), %ebx
	movl	200(%ebx), %ecx
	movl	%ebx, 20(%esp)
	movzwl	216(%ebx), %edx
	testl	%ecx, %ecx
	je	L2164
	subw	$3, %dx
	js	L2164
	movw	%dx, 216(%ebx)
	cmpb	$0, _MoveSkip2
	jne	L2212
L2218:
	movl	%esi, 40(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movswl	680(%edi), %eax
	cmpw	$-1, %ax
	je	L2166
	movl	%edi, 56(%esp)
	xorl	%edi, %edi
	jmp	L2174
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2167:
	movl	56(%esp), %esi
	addl	$1, %edi
	movswl	%di, %eax
	movswl	680(%esi,%eax,2), %eax
	cmpw	$-1, %ax
	je	L2216
L2174:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$55, 26(%eax)
	jne	L2167
	movl	20(%esp), %ecx
	movl	200(%ecx), %edx
	movzwl	24(%edx), %ecx
	movl	8(%edx), %ebx
	movswl	14(%edx), %esi
	movw	%cx, 26(%esp)
	movl	%ebx, 28(%esp)
	movswl	_tilesiz+2(,%esi,4), %ecx
	movzbl	21(%edx), %ebx
	testb	$-128, 12(%edx)
	je	L2168
	cmpb	$64, %bl
	je	L2217
	movl	%ebx, %ebp
	movsbl	_picanm+2(%esi,%esi,4), %esi
	imull	%ecx, %ebp
	sall	$8, %esi
	leal	(%esi,%ebp,2), %esi
	movl	28(%esp), %ebp
	subl	%esi, %ebp
	movl	%ebp, 32(%esp)
L2171:
	imull	%ebx, %ecx
L2173:
	movl	8(%eax), %esi
	movswl	26(%esp), %ebp
	leal	-1024(%esi), %ebx
	movl	4(%eax), %esi
	movl	%esi, 28(%esp)
	movl	(%eax), %esi
	movl	%ebp, 16(%esp)
	movl	32(%esp), %ebp
	addl	%ebp, %ecx
	movl	%ecx, 12(%esp)
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	%ebx, %ecx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	28(%esp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L2167
L2215:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L2161:
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2164:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	20(%esp), %edx
	movl	$480, %ecx
	movw	%cx, 216(%edx)
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	cmpb	$0, _MoveSkip2
	je	L2218
L2212:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2168:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$64, %bl
	je	L2219
	movl	%ebx, %esi
	movl	28(%esp), %ebp
	imull	%ecx, %esi
	sall	$2, %esi
	subl	%esi, %ebp
	movl	%ebp, 32(%esp)
	jmp	L2171
	.p2align 4,,10
	.p2align 3
L2216:
	movl	%esi, %edi
L2166:
	movl	20(%esp), %edx
	movzwl	176(%edx), %eax
	testw	%ax, %ax
	jle	L2175
	subl	$6, %eax
	testw	%ax, %ax
	jle	L2220
	movl	20(%esp), %edx
	movw	%ax, 176(%edx)
L2178:
	movl	20(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	184(%edi), %edx
	subl	180(%edi), %ecx
	call	@getangle@8
	movswl	3222(%edi), %ecx
	movl	%eax, %ebx
	movw	%ax, 3550(%edi)
	subl	%ecx, %ebx
	movl	%ecx, %edx
	movl	%ebx, %ecx
	negl	%ecx
	cmovs	%ebx, %ecx
	cmpl	$1024, %ecx
	jg	L2182
	movl	%edx, %ecx
L2183:
	subl	%ecx, %eax
	movzwl	6022(%edi), %ecx
	sarw	$3, %ax
	addl	%edx, %eax
	andw	$2047, %ax
	movw	%ax, 3222(%edi)
	movl	%eax, %edx
	testw	%cx, %cx
	jns	L2221
L2187:
	cmpb	$0, _Prediction
	jne	L2215
	cmpw	$89, 3214(%edi)
	jle	L2215
	movl	180(%edi), %ecx
	movl	$6, 4(%esp)
	movswl	%dx, %edx
	movl	184(%edi), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
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
	ret
	.p2align 4,,10
	.p2align 3
L2219:
	.cfi_restore_state
	movl	28(%esp), %esi
	movl	%ecx, %ebx
	sall	$8, %ebx
	subl	%ebx, %esi
	movl	%esi, 32(%esp)
L2170:
	sall	$6, %ecx
	jmp	L2173
	.p2align 4,,10
	.p2align 3
L2217:
	movsbl	_picanm+2(%esi,%esi,4), %ebx
	movl	%ecx, %ebp
	movl	28(%esp), %esi
	sall	$7, %ebp
	sall	$8, %ebx
	addl	%ebp, %ebx
	subl	%ebx, %esi
	movl	%esi, 32(%esp)
	jmp	L2170
	.p2align 4,,10
	.p2align 3
L2175:
	jne	L2178
L2177:
	movswl	680(%edi), %eax
	cmpw	$-1, %ax
	je	L2178
	movl	20(%esp), %ebp
	xorl	%esi, %esi
	movl	$12, %ebx
	.p2align 4
	.p2align 3
L2181:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$55, 26(%eax)
	jne	L2179
	movzwl	32(%eax), %eax
	testw	%ax, %ax
	cmove	%ebx, %eax
	movw	%ax, 176(%ebp)
	movl	%edi, (%esp)
	call	__Z14InitTurretMgunP19SECTOR_OBJECTstruct
L2179:
	addl	$1, %esi
	movswl	%si, %eax
	movswl	680(%edi,%eax,2), %eax
	cmpw	$-1, %ax
	jne	L2181
	jmp	L2178
	.p2align 4,,10
	.p2align 3
L2182:
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovge	%edx, %ecx
	jmp	L2183
	.p2align 4,,10
	.p2align 3
L2221:
	movswl	%cx, %esi
	movzwl	%ax, %ebx
	subl	%esi, %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovns	%esi, %ebx
	movl	%ecx, %esi
	cmpl	$1024, %ebx
	jle	L2188
	cmpw	$1025, %ax
	leal	2048(%eax), %ebx
	leal	2048(%ecx), %esi
	cmovb	%ebx, %eax
	cmpw	$1025, %cx
	cmovge	%ecx, %esi
L2188:
	subl	%esi, %eax
	movswl	6024(%edi), %ebp
	movl	%eax, %ebx
	negw	%bx
	cmovs	%eax, %ebx
	movzwl	%bx, %ebx
	cmpl	%ebp, %ebx
	jl	L2187
	testw	%ax, %ax
	js	L2222
	leal	0(%ebp,%ecx), %edx
	movw	%dx, 3222(%edi)
	jmp	L2187
	.p2align 4,,10
	.p2align 3
L2220:
	xorl	%eax, %eax
	movw	%ax, 176(%edx)
	jmp	L2177
L2222:
	subl	%ebp, %ecx
	movw	%cx, 3222(%edi)
	movl	%ecx, %edx
	jmp	L2187
	.cfi_endproc
LFE127:
	.p2align 4
	.globl	__Z8SpawnVisssiiii.isra.0
	.def	__Z8SpawnVisssiiii.isra.0;	.scl	2;	.type	32;	.endef
__Z8SpawnVisssiiii.isra.0:
LFB130:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	%dx, %eax
	movl	_sector, %edx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	testw	%bx, %bx
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	js	L2224
	movswl	%bx, %esi
	movl	_sprite, %ecx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	imull	$44, %esi, %edi
	movswl	24(%ecx,%edi), %eax
	leal	(%eax,%eax,4), %ebp
	movzbl	29(%edx,%ebp,8), %edx
	andl	$-5, %edx
	cmpb	$1, %dl
	je	L2237
	movzwl	_headspritestat+186, %ebp
	cmpw	$-1, %bp
	jne	L2226
	jmp	L2227
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2230:
	cmpw	$-1, %bp
	je	L2238
L2226:
	movswl	%bp, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebp
	movl	%eax, %edx
	imull	$44, %eax, %eax
	cmpw	30(%ecx,%eax), %bx
	jne	L2230
	movl	%edx, %eax
	call	__Z10KillSprites
	movl	_sprite, %ecx
	cmpw	$-1, %bp
	jne	L2226
L2238:
	movswl	24(%ecx,%edi), %eax
L2227:
	movl	$93, %edx
	call	__Z17COVERinsertspritess
	movl	_sprite, %ebp
	movl	$-1171354717, %edx
	imull	$44, %eax, %eax
	leal	0(%ebp,%eax), %ecx
	addl	$30, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 30(%ecx)
	movl	_User(,%esi,4), %eax
	orl	$1048576, 72(%eax)
	movl	0(%ebp,%edi), %eax
	movl	%eax, (%ecx)
	movl	_sprite, %ebx
	addl	%ebx, %edi
	movl	4(%edi), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edi), %eax
	movl	%eax, 8(%ecx)
	movl	_User(,%esi,4), %eax
	orl	$8388608, 72(%eax)
	movl	12(%esp), %ebp
	.cfi_restore 5
L2228:
	leal	12(%ecx), %edx
	movl	$-1171354717, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%ebx, %edx
	movw	%ax, 12(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ecx)
	leal	18(%ecx), %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%ebx, %edx
	movb	$1, 18(%ecx)
	movl	%edx, %eax
	mull	%esi
	movzwl	_NormalVisibility, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movw	%ax, 38(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ecx)
L2223:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2224:
	.cfi_restore_state
	movl	%ecx, %edi
	leal	(%eax,%eax,4), %ecx
	cmpb	$1, 29(%edx,%ecx,8)
	je	L2223
	movl	$93, %edx
	movl	$-1171354717, %esi
	call	__Z17COVERinsertspritess
	movl	_sprite, %ecx
	imull	$44, %eax, %edx
	movl	%edx, %eax
	addl	%edx, %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	movl	%edi, (%ecx)
	movl	_sprite, %ebx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%ebx, %edx
	movl	%eax, 4(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	24(%esp), %eax
	subl	$5120, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%ebx, %edx
	movl	%eax, 8(%ecx)
	movl	%edx, %eax
	mull	%esi
	movl	$-1, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 30(%ecx)
	jmp	L2228
L2237:
	.cfi_offset 5, -8
	movl	12(%esp), %ebp
	.cfi_restore 5
	jmp	L2223
	.cfi_endproc
LFE130:
	.p2align 4
	.globl	__Z9WarpPlanePiS_S_Ps
	.def	__Z9WarpPlanePiS_S_Ps;	.scl	2;	.type	32;	.endef
__Z9WarpPlanePiS_S_Ps:
LFB131:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 8(%esp)
	cmpb	$0, _Prediction
	jne	L2242
	movl	44(%esp), %eax
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movzwl	(%eax), %edi
	testw	%di, %di
	js	L2269
	movswl	%di, %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	addl	_sector, %eax
	testb	$4, 38(%eax)
	je	L2269
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movswl	_headspritestat+124, %ebx
	cmpl	$-1, %ebx
	je	L2266
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movl	%ebp, 12(%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 20(%esp)
	jmp	L2243
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2245:
	cmpl	$-1, %ebx
	je	L2246
L2243:
	imull	$44, %ebx, %ecx
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	addl	%esi, %ecx
	cmpw	24(%ecx), %di
	jne	L2245
	leal	30(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$1, 30(%ecx)
	je	L2245
	movzwl	40(%ecx), %eax
	cmpw	$85, %ax
	je	L2250
	cmpw	$86, %ax
	cmove	%ecx, %ebp
	cmpl	$-1, %ebx
	jne	L2243
	.p2align 4
	.p2align 3
L2246:
	movl	%ebp, %eax
	movl	12(%esp), %ebp
	movl	20(%esp), %ebx
	movl	16(%esp), %ecx
	movl	8(%esp), %edx
	testl	%ebp, %ebp
	je	L2249
	movl	8(%ebp), %esi
	cmpl	%esi, (%ebx)
	jle	L2271
L2249:
	testl	%eax, %eax
	je	L2267
	movl	8(%eax), %esi
	cmpl	%esi, (%ebx)
	jl	L2268
	movl	44(%esp), %edi
	movl	%ebx, (%esp)
	movl	%edi, 4(%esp)
L2270:
	call	__Z10WarpToAreaP12spritetypev7PiS1_S1_Ps
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2266:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	24(%esp), %ebx
	.cfi_restore 3
	.p2align 4
	.p2align 3
L2269:
	movl	32(%esp), %edi
	.cfi_restore 7
L2242:
	xorl	%eax, %eax
L2239:
	addl	$40, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2268:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L2242
	.p2align 4,,10
	.p2align 3
L2250:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	jmp	L2245
	.p2align 4,,10
	.p2align 3
L2271:
	movl	44(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	jmp	L2270
	.p2align 4,,10
	.p2align 3
L2267:
	movl	24(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L2239
	.cfi_endproc
LFE131:
	.p2align 4
	.globl	__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0
	.def	__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0:
LFB136:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movswl	_headspritestat+124, %ebx
	cmpl	$-1, %ebx
	je	L2274
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	jmp	L2273
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2275:
	cmpl	$-1, %ebx
	je	L2283
L2273:
	imull	$44, %ebx, %ecx
	movl	_sprite, %edx
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	addl	%edx, %ecx
	cmpw	%si, 24(%ecx)
	jne	L2275
	leal	30(%ecx), %eax
	subl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$1, 30(%ecx)
	je	L2275
	cmpw	$84, 40(%ecx)
	jne	L2275
	movl	%ecx, 0(%ebp)
	cmpl	$-1, %ebx
	jne	L2273
	.p2align 4
	.p2align 3
L2283:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
L2274:
	movl	(%esp), %ebx
	movl	$1, %eax
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	__Z4WarpPiS_S_Ps
	.def	__Z4WarpPiS_S_Ps;	.scl	2;	.type	32;	.endef
__Z4WarpPiS_S_Ps:
LFB137:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2298
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	28(%esp), %eax
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	%edx, %ebx
	movswl	(%eax), %eax
	movl	$0, 8(%esp)
	leal	(%eax,%eax,4), %edx
	sall	$3, %edx
	addl	_sector, %edx
	testb	$4, 38(%edx)
	je	L2287
	leal	8(%esp), %edx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	%ecx, %edi
	call	__Z14WarpSectorInfosPP12spritetypev7.part.0.constprop.0
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L2297
	movl	28(%esp), %ecx
	movl	%edi, (%esp)
	movl	%esi, %edx
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	call	__Z10WarpToAreaP12spritetypev7PiS1_S1_Ps
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2287:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2298:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L2297:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE137:
	.section .rdata,"dr"
	.align 4
__ZZ18DisplayFragNumbersP12PLAYERstructE5xoffs:
	.long	69
	.long	147
	.long	225
	.long	303
	.align 4
__ZZ20DisplaySummaryStringP12PLAYERstructssssPKcE9font_base:
	.word	3601
	.word	3613
	.word	3625
.lcomm __ZZ15SyncStatMessagevE9MoveCount,4,4
LC9:
	.ascii "RandomSync\0"
LC10:
	.ascii "PlayerSync\0"
LC11:
	.ascii "PlayerSync2\0"
LC12:
	.ascii "SOSync\0"
LC13:
	.ascii "EnemySync\0"
LC14:
	.ascii "MissileSync\0"
LC15:
	.ascii "ShrapSync\0"
LC16:
	.ascii "MiscSync\0"
LC17:
	.ascii "MissileSkip4Sync\0"
	.align 32
_SyncNames:
	.long	LC9
	.long	LC10
	.long	LC11
	.long	LC12
	.long	LC13
	.long	LC14
	.long	LC15
	.long	LC16
	.long	LC17
	.long	0
	.align 8
LC8:
	.long	0
	.long	3
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z12InitChemBombs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14InitSumoNapalms;	.scl	2;	.type	32;	.endef
	.def	__Z19InitSumoStompAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSumoSkulls;	.scl	2;	.type	32;	.endef
	.def	__Z16InitMiniSumoClaps;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	_cansee.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	__Z18UpdatePlayerSpriteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z7AnimSetPiii;	.scl	2;	.type	32;	.endef
	.def	__Z11GetSectUsers;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	__Z17FindTrackToPlayerP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z23FindTrackAwayFromPlayerP4USER;	.scl	2;	.type	32;	.endef
	.def	__Z13AnimateSwitchP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z16setinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	__Z17stopinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z20DoStaticFlamesDamages;	.scl	2;	.type	32;	.endef
	.def	__Z14SetSpikeActives;	.scl	2;	.type	32;	.endef
	.def	__Z16SetRotatorActives;	.scl	2;	.type	32;	.endef
	.def	__Z15SetSlidorActives;	.scl	2;	.type	32;	.endef
	.def	_strupr;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_printext256;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z14MNU_DrawStringssPKcss;	.scl	2;	.type	32;	.endef
	.def	__Z8pSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
	.def	__Z14CON_ConMessagePKcz;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14DoPlayerZrangeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBladeDamages;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
	.def	__Z20DoSoundSpotStopSounds;	.scl	2;	.type	32;	.endef
	.def	__Z19NinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorBeginJumps;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorMoveJumps;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13InitActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z14FindNearSpriteP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z13OperateSectorss;	.scl	2;	.type	32;	.endef
	.def	__Z13OperateSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z14InitTurretMgunP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
