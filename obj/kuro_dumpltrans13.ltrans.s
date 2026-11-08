	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z10DoSkullBobs
	.def	__Z10DoSkullBobs;	.scl	2;	.type	32;	.endef
__Z10DoSkullBobs:
LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %eax
	movl	_User(,%eax,4), %ebx
	imull	$44, %eax, %edx
	movzwl	176(%ebx), %eax
	addl	$60, %eax
	andl	$2047, %eax
	movw	%ax, 176(%ebx)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	256(%ebx), %ecx
	movl	_sprite, %ebx
	addl	%eax, %ecx
	leal	8(%edx), %eax
	addl	%edx, %ebx
	mull	%esi
	xorl	%eax, %eax
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
LFE0:
	.p2align 4
	.globl	__Z10DoBettyBobs
	.def	__Z10DoBettyBobs;	.scl	2;	.type	32;	.endef
__Z10DoBettyBobs:
LFB2:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %eax
	movl	_User(,%eax,4), %ebx
	imull	$44, %eax, %edx
	movzwl	176(%ebx), %eax
	addl	$60, %eax
	andl	$2047, %eax
	movw	%ax, 176(%ebx)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	256(%ebx), %ecx
	movl	_sprite, %ebx
	addl	%eax, %ecx
	leal	8(%edx), %eax
	addl	%edx, %ebx
	mull	%esi
	xorl	%eax, %eax
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
LFE2:
	.p2align 4
	.globl	__Z21TestSlidorMatchActives
	.def	__Z21TestSlidorMatchActives;	.scl	2;	.type	32;	.endef
__Z21TestSlidorMatchActives:
LFB3:
	.cfi_startproc
	movswl	_headspritestat+146, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	8(%esp), %ebx
	cmpw	$-1, %ax
	je	L7
	movl	_sprite, %ecx
	jmp	L8
	.p2align 5
	.p2align 4,,10
	.p2align 3
L10:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L7
L8:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$145, 40(%edx)
	jne	L10
	cmpw	%bx, 38(%edx)
	jne	L10
	testb	$8, 43(%edx)
	jne	L10
	movl	_User(,%eax,4), %edx
	testb	$8, 68(%edx)
	jne	L13
	movl	76(%edx), %edx
	testl	%edx, %edx
	je	L10
L13:
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L7:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z14DoSlidorInterpsPFvPiE
	.def	__Z14DoSlidorInterpsPFvPiE;	.scl	2;	.type	32;	.endef
__Z14DoSlidorInterpsPFvPiE:
LFB4:
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
	movswl	28(%esp), %eax
	movl	32(%esp), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	_wall, %edx
	movzwl	(%eax), %ecx
	movzwl	2(%eax), %ebx
	addl	%ecx, %ebx
	movw	%cx, 4(%esp)
	leal	-1(%ebx), %eax
	movw	%ax, 6(%esp)
	jmp	L36
	.p2align 4,,10
	.p2align 3
L50:
	cmpw	$220, %di
	je	L24
	cmpw	$221, %di
	jne	L25
L24:
	cmpw	4(%esp), %cx
	leal	-1(%ecx), %edi
	movl	%eax, %ecx
	cmovl	6(%esp), %di
	subl	%edx, %ecx
	movswl	10(%eax), %ebp
	shrl	$5, %ecx
	movl	%ecx, %edx
	movl	_wallchanged(,%ecx,4), %ecx
	addl	$1, %ecx
	movl	%ecx, _wallchanged(,%edx,4)
	movl	%eax, (%esp)
	cmpw	$16383, %bp
	jbe	L31
	call	*%esi
	movswl	%di, %edi
	movl	_wall, %eax
	sall	$5, %edi
	addl	%edi, %eax
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movl	%eax, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	movswl	8(%edx,%eax), %eax
	sall	$5, %eax
	addl	%eax, %edx
L43:
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	*%esi
	movl	_wall, %edx
	leal	(%edx,%ebx), %eax
L25:
	movzwl	8(%eax), %ecx
	cmpw	%cx, 4(%esp)
	je	L49
L36:
	movswl	%cx, %ebx
	sall	$5, %ebx
	leal	(%edx,%ebx), %eax
	movzwl	26(%eax), %edi
	cmpw	$222, %di
	je	L26
	jle	L50
	cmpw	$223, %di
	jne	L25
L26:
	cmpw	4(%esp), %cx
	movswl	10(%eax), %ebp
	leal	-1(%ecx), %edi
	cmovl	6(%esp), %di
	addl	$4, %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	shrl	$5, %ecx
	movl	%ecx, %edx
	movl	_wallchanged(,%ecx,4), %ecx
	addl	$1, %ecx
	movl	%ecx, _wallchanged(,%edx,4)
	movl	%eax, (%esp)
	cmpw	$16383, %bp
	jbe	L35
	call	*%esi
	movswl	%di, %edi
	movl	_wall, %eax
	sall	$5, %edi
	leal	4(%eax,%edi), %eax
	shrl	$5, %edi
	addl	$1, _wallchanged(,%edi,4)
	movl	%eax, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	leal	4(%edx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
L44:
	sall	$5, %eax
	movswl	8(%edx,%eax), %eax
	sall	$5, %eax
	leal	4(%edx,%eax), %edx
	jmp	L43
	.p2align 4,,10
	.p2align 3
L31:
	call	*%esi
	movl	_wall, %eax
	sall	$5, %ebp
	movswl	8(%eax,%ebp), %edx
	sall	$5, %edx
	leal	(%eax,%edx), %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%ecx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	movswl	10(%edx,%eax), %eax
	sall	$5, %eax
	movswl	8(%edx,%eax), %eax
	sall	$5, %eax
	addl	%eax, %edx
	jmp	L43
	.p2align 4,,10
	.p2align 3
L35:
	call	*%esi
	movl	_wall, %eax
	sall	$5, %ebp
	movswl	8(%eax,%ebp), %edx
	sall	$5, %edx
	leal	4(%eax,%edx), %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%ecx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	leal	4(%edx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edx, (%esp)
	call	*%esi
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	movswl	10(%edx,%eax), %eax
	jmp	L44
	.p2align 4,,10
	.p2align 3
L49:
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
LFE4:
	.p2align 4
	.globl	__Z13SoundCallBacki
	.def	__Z13SoundCallBacki;	.scl	2;	.type	32;	.endef
__Z13SoundCallBacki:
LFB5:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpl	$-65536, %eax
	je	L51
	testl	%eax, %eax
	js	L57
	imull	$44, %eax, %eax
	subb	$1, _voc+40(%eax)
L51:
	ret
	.p2align 4,,10
	.p2align 3
L57:
	negl	%eax
	subb	$1, _lumplockbyte(%eax)
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z20TestSpikeMatchActives
	.def	__Z20TestSpikeMatchActives;	.scl	2;	.type	32;	.endef
__Z20TestSpikeMatchActives:
LFB7:
	.cfi_startproc
	movswl	_headspritestat+164, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	8(%esp), %ebx
	cmpw	$-1, %ax
	je	L59
	movl	_sprite, %ecx
	jmp	L60
	.p2align 5
	.p2align 4,,10
	.p2align 3
L62:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L59
L60:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$106, 40(%edx)
	jne	L62
	cmpw	%bx, 38(%edx)
	jne	L62
	testb	$8, 43(%edx)
	jne	L62
	movl	_User(,%eax,4), %edx
	testb	$8, 68(%edx)
	jne	L65
	movl	76(%edx), %edx
	testl	%edx, %edx
	je	L62
L65:
	movl	$1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L59:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z11DoSpikeMovesPi
	.def	__Z11DoSpikeMovesPi;	.scl	2;	.type	32;	.endef
__Z11DoSpikeMovesPi:
LFB8:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	_User(,%eax,4), %ebx
	movl	16(%esp), %eax
	movl	164(%ebx), %ecx
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jle	L73
	movl	%esi, 4(%esp)
	movzwl	172(%ebx), %edx
	.cfi_offset 6, -8
	movswl	92(%ebx), %esi
	leal	(%edx,%edx,2), %edx
	addl	%esi, %edx
	movw	%dx, 92(%ebx)
	leal	(%esi,%esi,2), %edx
	movl	4(%esp), %esi
	.cfi_restore 6
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovg	%ecx, %eax
L73:
	cmpl	%eax, %ecx
	jge	L74
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movzwl	172(%ebx), %esi
	movswl	92(%ebx), %edx
	leal	(%esi,%esi,2), %esi
	addl	%edx, %esi
	movw	%si, 92(%ebx)
	leal	0(,%edx,4), %ebx
	movl	4(%esp), %esi
	.cfi_restore 6
	subl	%ebx, %edx
	addl	%edx, %eax
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
L74:
	movl	16(%esp), %ecx
	movl	%eax, (%ecx)
	xorl	%eax, %eax
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z11DoSkullMoves
	.def	__Z11DoSkullMoves;	.scl	2;	.type	32;	.endef
__Z11DoSkullMoves:
LFB9:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movswl	36(%esp), %ebx
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	_User(,%ebx,4), %esi
	movzwl	28(%eax), %edx
	movswl	32(%eax), %edi
	movl	%edx, %ecx
	addl	$512, %edx
	andl	$2047, %ecx
	andl	$2047, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%edx,%edx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$4096, 8(%esp)
	imull	%edi, %ecx
	movl	$4096, 4(%esp)
	movswl	36(%eax), %eax
	imull	%edi, %edx
	movl	%eax, (%esp)
	sarl	$14, %ecx
	movl	%ebx, %eax
	sarl	$14, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebx, (%esp)
	call	__Z17DoFindGroundPoints
	addl	$20, %esp
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
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z11DoBettyMoves
	.def	__Z11DoBettyMoves;	.scl	2;	.type	32;	.endef
__Z11DoBettyMoves:
LFB10:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z11DoSkullMoves
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__Z17DoSkullSpawnShraps
	.def	__Z17DoSkullSpawnShraps;	.scl	2;	.type	32;	.endef
__Z17DoSkullSpawnShraps:
LFB11:
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
LFE11:
	.p2align 4
	.globl	__Z17DoBettySpawnShraps
	.def	__Z17DoBettySpawnShraps;	.scl	2;	.type	32;	.endef
__Z17DoBettySpawnShraps:
LFB13:
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
LFE13:
	.p2align 4
	.globl	__Z12SlidorSwitchss
	.def	__Z12SlidorSwitchss;	.scl	2;	.type	32;	.endef
__Z12SlidorSwitchss:
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
	jne	L84
	jmp	L83
	.p2align 6
	.p2align 4,,10
	.p2align 3
L87:
	cmpw	$-1, %dx
	je	L83
L84:
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L87
	cmpw	40(%eax), %cx
	jne	L87
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
	jne	L84
L83:
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
	.globl	__Z11SpikeSwitchss
	.def	__Z11SpikeSwitchss;	.scl	2;	.type	32;	.endef
__Z11SpikeSwitchss:
LFB16:
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
	jne	L95
	jmp	L94
	.p2align 6
	.p2align 4,,10
	.p2align 3
L98:
	cmpw	$-1, %dx
	je	L94
L95:
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L98
	cmpw	40(%eax), %cx
	jne	L98
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
	jne	L95
L94:
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z15SetSlidorActives
	.def	__Z15SetSlidorActives;	.scl	2;	.type	32;	.endef
__Z15SetSlidorActives:
LFB17:
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
	movl	$__Z16setinterpolationPi, 4(%esp)
	call	__Z14DoSlidorInterpsPFvPiE
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
	jne	L112
	.p2align 4
	.p2align 3
L109:
	cmpw	$-1, %bx
	je	L105
L123:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L109
	cmpw	%si, 40(%eax)
	jne	L109
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	cmpw	$-1, %bx
	jne	L123
L105:
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
L125:
	.cfi_restore_state
	cmpw	%si, 40(%eax)
	je	L124
L112:
	cmpw	$-1, %bx
	je	L105
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L112
	jmp	L125
	.p2align 4,,10
	.p2align 3
L124:
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L112
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z13ReverseSlidors
	.def	__Z13ReverseSlidors;	.scl	2;	.type	32;	.endef
__Z13ReverseSlidors:
LFB18:
	.cfi_startproc
	movswl	4(%esp), %edx
	movl	_User(,%edx,4), %eax
	movl	76(%eax), %ecx
	testl	%ecx, %ecx
	jne	L130
	movl	(%eax), %eax
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	testl	%edx, %edx
	jne	L128
	movl	%ecx, 8(%eax)
L129:
	negl	20(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L128:
	cmpl	%ecx, %edx
	jne	L129
	negl	20(%eax)
	movl	$0, 8(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L130:
	movl	$0, 76(%eax)
	movl	%edx, 4(%esp)
	jmp	__Z15SetSlidorActives
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z17SetSlidorInactives
	.def	__Z17SetSlidorInactives;	.scl	2;	.type	32;	.endef
__Z17SetSlidorInactives:
LFB19:
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
	movl	$__Z17stopinterpolationPi, 4(%esp)
	call	__Z14DoSlidorInterpsPFvPiE
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
LFE19:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "This only opens in single play.\0"
	.text
	.p2align 4
	.globl	__Z13DoSlidorMatchP12PLAYERstructsh
	.def	__Z13DoSlidorMatchP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
__Z13DoSlidorMatchP12PLAYERstructsh:
LFB21:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+146, %ebx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movzwl	32(%esp), %ebp
	movl	%esi, 12(%esp)
	cmpw	$-1, %bx
	.cfi_offset 6, -16
	je	L156
	movl	28(%esp), %eax
	cmpb	$0, 36(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movl	$-1, %esi
	setne	5(%esp)
	testl	%eax, %eax
	jne	L135
	jmp	L144
	.p2align 6
	.p2align 4,,10
	.p2align 3
L153:
	cmpw	$-1, %bx
	je	L190
L135:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$145, 40(%eax)
	jne	L153
	cmpw	38(%eax), %bp
	jne	L153
	movzwl	42(%eax), %edi
	movw	%di, 6(%esp)
	testw	$512, %di
	je	L146
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L147
	cmpw	$1, %di
	je	L147
L146:
	cmpb	$1, 18(%eax)
	jne	L149
	cmpb	$0, 5(%esp)
	jne	L153
L149:
	movswl	24(%eax), %eax
	cmpw	$-1, %si
	cmove	%ecx, %esi
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L151
	cmpw	$29, 12(%eax)
	je	L191
L151:
	movl	_User(,%edx,4), %eax
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L192
	call	__Z15SetSlidorActives
	cmpw	$-1, %bx
	jne	L135
	.p2align 4
	.p2align 3
L190:
	movl	16(%esp), %edi
	.cfi_restore 7
L133:
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
L194:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	38(%eax), %bp
	je	L193
L138:
	cmpw	$-1, %bx
	je	L190
L144:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$145, 40(%eax)
	jne	L138
	jmp	L194
	.p2align 4,,10
	.p2align 3
L193:
	testb	$2, 43(%eax)
	jne	L195
L139:
	cmpb	$1, 18(%eax)
	jne	L160
	cmpb	$0, 5(%esp)
	jne	L138
L160:
	movl	_User(,%edx,4), %eax
	cmpw	$-1, %si
	cmove	%ecx, %esi
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L142
	call	__Z15SetSlidorActives
	jmp	L138
	.p2align 4,,10
	.p2align 3
L195:
	movzwl	_gNet+12, %edi
	cmpw	$4, %di
	je	L138
	cmpw	$1, %di
	jne	L139
	jmp	L138
	.p2align 4,,10
	.p2align 3
L192:
	call	__Z13ReverseSlidors
	jmp	L153
L191:
	movswl	22(%eax), %eax
	testw	%ax, %ax
	je	L151
	movl	_KeyDoorMessage-4(,%eax,4), %edx
	movl	28(%esp), %eax
	movl	$-1, %esi
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L133
	.p2align 4,,10
	.p2align 3
L147:
	.cfi_restore_state
	testb	$32, 6(%esp)
	je	L153
	movl	28(%esp), %eax
	movl	$LC0, %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L153
L142:
	call	__Z13ReverseSlidors
	jmp	L138
L156:
	.cfi_restore 7
	movl	$-1, %esi
	jmp	L133
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z15DoSlidorOperateP12PLAYERstructs
	.def	__Z15DoSlidorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z15DoSlidorOperateP12PLAYERstructs:
LFB22:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	_sector, %edx
	movswl	24(%esp), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	36(%eax), %eax
	testw	%ax, %ax
	jle	L199
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -8
	movswl	%ax, %ebx
	movl	%ebx, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	jne	L201
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%eax, (%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	movl	12(%esp), %ebx
	.cfi_restore 3
L196:
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L201:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -8
	movl	12(%esp), %ebx
	.cfi_restore 3
L199:
	movl	$-1, %eax
	jmp	L196
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z17DoSlidorMoveWallssi
	.def	__Z17DoSlidorMoveWallssi;	.scl	2;	.type	32;	.endef
__Z17DoSlidorMoveWallssi:
LFB23:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_wall, %ecx
	movswl	24(%esp), %eax
	movl	28(%esp), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movzwl	(%eax), %edx
	movzwl	2(%eax), %edi
	addl	%edx, %edi
	movw	%dx, (%esp)
	leal	-1(%edi), %eax
	movw	%ax, 2(%esp)
	jmp	L218
	.p2align 4,,10
	.p2align 3
L226:
	cmpw	$220, %bp
	je	L205
	cmpw	$221, %bp
	jne	L209
	leal	-1(%edx), %ebp
	cmpw	(%esp), %dx
	cmovl	2(%esp), %bp
	cmpw	$16383, 10(%eax)
	jbe	L213
	movl	%eax, %edx
	movswl	%bp, %ebp
	subl	%ecx, %edx
	sall	$5, %ebp
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addl	%esi, (%eax)
	movl	_wall, %eax
	addl	%ebp, %eax
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	addl	%esi, (%eax)
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	addl	%esi, (%edx,%ecx)
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	movswl	8(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	addl	%esi, (%edx,%ecx)
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	.p2align 4
	.p2align 3
L209:
	movzwl	8(%eax), %edx
	cmpw	%dx, (%esp)
	je	L225
L218:
	movswl	%dx, %edi
	movl	%edi, %ebx
	sall	$5, %ebx
	leal	(%ecx,%ebx), %eax
	movzwl	26(%eax), %ebp
	cmpw	$222, %bp
	je	L203
	jle	L226
	cmpw	$223, %bp
	jne	L209
	leal	-1(%edx), %ebp
	cmpw	(%esp), %dx
	cmovl	2(%esp), %bp
	cmpw	$16383, 10(%eax)
	jbe	L217
	leal	4(%eax), %edx
	movswl	%bp, %ebp
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%ebp, %edx
	andl	$134217727, %ebp
	sall	$5, %edx
	addl	%esi, 4(%eax)
	addl	$1, _wallchanged(,%ebp,4)
	addl	%esi, 4(%ecx,%edx)
	movswl	8(%eax), %edx
	movl	%edx, %ebx
	andl	$134217727, %edx
	sall	$5, %ebx
	addl	$1, _wallchanged(,%edx,4)
	addl	%esi, 4(%ecx,%ebx)
	movswl	8(%eax), %edx
	sall	$5, %edx
	movswl	8(%ecx,%edx), %edx
	movl	%edx, %ebx
	andl	$134217727, %edx
	sall	$5, %ebx
	addl	$1, _wallchanged(,%edx,4)
	addl	%esi, 4(%ecx,%ebx)
	movzwl	8(%eax), %edx
	cmpw	%dx, (%esp)
	jne	L218
L225:
	addl	$4, %esp
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
L203:
	.cfi_restore_state
	leal	-1(%edx), %ebp
	cmpw	(%esp), %dx
	cmovl	2(%esp), %bp
	cmpw	$16383, 10(%eax)
	jbe	L215
	leal	4(%eax), %edx
	movswl	%bp, %ebp
	subl	%ecx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movl	%ebp, %edx
	andl	$134217727, %ebp
	sall	$5, %edx
	subl	%esi, 4(%eax)
	addl	$1, _wallchanged(,%ebp,4)
	subl	%esi, 4(%ecx,%edx)
	movswl	8(%eax), %edx
	movl	%edx, %ebx
	andl	$134217727, %edx
	sall	$5, %ebx
	addl	$1, _wallchanged(,%edx,4)
	subl	%esi, 4(%ecx,%ebx)
	movswl	8(%eax), %edx
	sall	$5, %edx
	movswl	8(%ecx,%edx), %edx
	movl	%edx, %ebx
	andl	$134217727, %edx
	sall	$5, %ebx
	addl	$1, _wallchanged(,%edx,4)
	subl	%esi, 4(%ecx,%ebx)
	jmp	L209
	.p2align 4,,10
	.p2align 3
L205:
	leal	-1(%edx), %ebp
	cmpw	(%esp), %dx
	cmovl	2(%esp), %bp
	cmpw	$16383, 10(%eax)
	jbe	L211
	movl	%eax, %edx
	movswl	%bp, %ebp
	subl	%ecx, %edx
	sall	$5, %ebp
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	subl	%esi, (%eax)
	movl	_wall, %eax
	addl	%ebp, %eax
	shrl	$5, %ebp
	addl	$1, _wallchanged(,%ebp,4)
	subl	%esi, (%eax)
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	subl	%esi, (%edx,%ecx)
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	sall	$5, %eax
	movswl	8(%edx,%eax), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	subl	%esi, (%edx,%ecx)
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	jmp	L209
	.p2align 4,,10
	.p2align 3
L213:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edi, %eax
	addl	%esi, %edx
	call	_dragpoint.constprop.0
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	(%edx), %edi
	movl	4(%edx), %ecx
	addl	%esi, %edi
	movl	%edi, %edx
	call	_dragpoint.constprop.0
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	jmp	L209
	.p2align 4,,10
	.p2align 3
L217:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edi, %eax
	addl	%esi, %ecx
	call	_dragpoint.constprop.0
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	addl	%esi, %ecx
	call	_dragpoint.constprop.0
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	jmp	L209
	.p2align 4,,10
	.p2align 3
L215:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edi, %eax
	subl	%esi, %ecx
	call	_dragpoint.constprop.0
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	subl	%esi, %ecx
	call	_dragpoint.constprop.0
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	jmp	L209
	.p2align 4,,10
	.p2align 3
L211:
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	%edi, %eax
	subl	%esi, %edx
	call	_dragpoint.constprop.0
	movl	_wall, %edx
	movswl	8(%edx,%ebx), %eax
	movl	%eax, %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	subl	%esi, %edx
	call	_dragpoint.constprop.0
	movl	_wall, %ecx
	leal	(%ecx,%ebx), %eax
	jmp	L209
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z20DoSlidorInstantCloses
	.def	__Z20DoSlidorInstantCloses;	.scl	2;	.type	32;	.endef
__Z20DoSlidorInstantCloses:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sector, %edx
	movswl	28(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	_wall, %edx
	movzwl	(%eax), %esi
	movl	%esi, %eax
	jmp	L235
	.p2align 4,,10
	.p2align 3
L241:
	cmpw	$220, %cx
	je	L230
	cmpw	$221, %cx
	jne	L232
	movl	(%ebx), %edx
	subl	(%eax), %edx
L239:
	movl	%edx, 4(%esp)
	movl	%edi, (%esp)
	call	__Z17DoSlidorMoveWallssi
	movl	_wall, %edx
	leal	(%edx,%ebp), %eax
L232:
	movzwl	8(%eax), %eax
	cmpw	%si, %ax
	je	L240
L235:
	movswl	%ax, %ebp
	sall	$5, %ebp
	leal	(%edx,%ebp), %eax
	movzwl	26(%eax), %ecx
	cmpw	$222, %cx
	je	L228
	jle	L241
	cmpw	$223, %cx
	jne	L232
	movl	4(%ebx), %edx
	subl	4(%eax), %edx
	jmp	L239
	.p2align 4,,10
	.p2align 3
L230:
	movl	(%eax), %eax
	subl	(%ebx), %eax
L238:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__Z17DoSlidorMoveWallssi
	movl	_wall, %edx
	leal	(%edx,%ebp), %eax
	movzwl	8(%eax), %eax
	cmpw	%si, %ax
	jne	L235
L240:
	addl	$8, %esp
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
L228:
	.cfi_restore_state
	movl	4(%eax), %eax
	subl	4(%ebx), %eax
	jmp	L238
	.cfi_endproc
LFE24:
	.p2align 4
	.def	__Z8LoadSongPKc;	.scl	3;	.type	32;	.endef
__Z8LoadSongPKc:
LFB25:
	.cfi_startproc
	testl	%eax, %eax
	je	L254
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	xorl	%edx, %edx
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L243
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	movl	%eax, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %edi
	testl	%eax, %eax
	je	L257
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%esi, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %esi
	je	L245
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	call	_kclose
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L243:
	movl	12(%esp), %ebx
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L245:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%ebx, %eax
	call	_kclose
	movl	%edi, _SongPtr
	movl	12(%esp), %ebx
	movl	$1, %eax
	movl	%esi, _SongLength
	movl	20(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	16(%esp), %esi
	.cfi_restore 6
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L257:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
L254:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z14SetSpikeActives
	.def	__Z14SetSpikeActives;	.scl	2;	.type	32;	.endef
__Z14SetSpikeActives:
LFB30:
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
	leal	18(%eax), %ecx
	testb	$8, 12(%esi)
	jne	L282
	leal	26(%eax), %ecx
L282:
	movl	%ecx, %edx
	movl	$-858993459, %eax
	subl	%edi, %edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	call	__Z22short_setinterpolationPs
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
	je	L283
	cmpl	256(%ebx), %eax
	je	L284
L258:
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
L283:
	.cfi_restore_state
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	je	L258
	movzwl	38(%esi), %esi
	jmp	L263
	.p2align 6
	.p2align 4,,10
	.p2align 3
L264:
	cmpw	$-1, %bx
	je	L258
L263:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L264
	cmpw	40(%eax), %si
	jne	L264
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L264
	.p2align 4,,10
	.p2align 3
L284:
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	je	L258
	movzwl	38(%esi), %esi
	jmp	L266
	.p2align 6
	.p2align 4,,10
	.p2align 3
L267:
	cmpw	$-1, %bx
	je	L258
L266:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$206, 38(%eax)
	jne	L267
	cmpw	40(%eax), %si
	jne	L267
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L267
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z12ReverseSpikes
	.def	__Z12ReverseSpikes;	.scl	2;	.type	32;	.endef
__Z12ReverseSpikes:
LFB31:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %edx
	movl	_User(,%edx,4), %eax
	movl	76(%eax), %ecx
	testl	%ecx, %ecx
	jne	L292
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	164(%eax), %edx
	movl	64(%eax), %ecx
	movl	140(%eax), %esi
	movl	256(%eax), %ebx
	cmpl	%ecx, %edx
	je	L293
	cmpl	%ebx, %edx
	je	L294
L289:
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
L293:
	.cfi_restore_state
	movl	8(%esi), %ecx
	cmpl	%ecx, %edx
	je	L295
	cmpl	%ebx, %edx
	jne	L289
L291:
	movl	%ecx, 164(%eax)
	jmp	L289
	.p2align 4,,10
	.p2align 3
L292:
	.cfi_restore 3
	.cfi_restore 6
	movl	$0, 76(%eax)
	movl	%edx, 12(%esp)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z14SetSpikeActives
	.p2align 4,,10
	.p2align 3
L294:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	cmpl	8(%esi), %ecx
	jne	L289
	jmp	L291
	.p2align 4,,10
	.p2align 3
L295:
	movl	%ebx, 164(%eax)
	jmp	L289
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z12DoSpikeMatchs
	.def	__Z12DoSpikeMatchs;	.scl	2;	.type	32;	.endef
__Z12DoSpikeMatchs:
LFB32:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$-1, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movzwl	_headspritestat+164, %ebx
	movzwl	20(%esp), %esi
	cmpw	$-1, %bx
	jne	L297
	jmp	L296
	.p2align 6
	.p2align 4,,10
	.p2align 3
L300:
	cmpw	$-1, %bx
	je	L296
L297:
	movswl	%bx, %edx
	movswl	%bx, %ecx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebx
	cmpw	$106, 40(%eax)
	jne	L300
	cmpw	%si, 38(%eax)
	jne	L300
	movl	_User(,%edx,4), %eax
	cmpw	$-1, %di
	cmove	%ecx, %edi
	testb	$8, 68(%eax)
	movl	%ecx, (%esp)
	jne	L311
	call	__Z14SetSpikeActives
	cmpw	$-1, %bx
	jne	L297
L296:
	addl	$4, %esp
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
L311:
	.cfi_restore_state
	call	__Z12ReverseSpikes
	jmp	L300
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z14DoSpikeOperates
	.def	__Z14DoSpikeOperates;	.scl	2;	.type	32;	.endef
__Z14DoSpikeOperates:
LFB33:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %eax
	movzwl	_headspritesect(%eax,%eax), %edx
	cmpw	$-1, %dx
	je	L312
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	_sprite, %ebx
	jmp	L314
	.p2align 5
	.p2align 4,,10
	.p2align 3
L315:
	movzwl	_nextspritesect(%ecx,%ecx), %edx
	cmpw	$-1, %dx
	je	L326
L314:
	movswl	%dx, %ecx
	imull	$44, %ecx, %eax
	addl	%ebx, %eax
	cmpw	$82, 26(%eax)
	jne	L315
	cmpw	$106, 40(%eax)
	jne	L315
	cmpb	$0, 18(%eax)
	jne	L315
	movzwl	38(%eax), %eax
	testw	%ax, %ax
	jle	L316
	movswl	%ax, %ebx
	movl	%ebx, (%esp)
	call	__Z20TestSpikeMatchActives
	testb	%al, %al
	jne	L318
	movl	%ebx, 16(%esp)
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	jmp	__Z12DoSpikeMatchs
	.p2align 4,,10
	.p2align 3
L326:
	.cfi_restore_state
	movl	8(%esp), %ebx
	.cfi_restore 3
L312:
	movl	%edx, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L316:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -8
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z14SetSpikeActives
	movl	4(%esp), %edx
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
L318:
	.cfi_restore_state
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	$-1, %edx
	jmp	L312
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z16SetSpikeInactives
	.def	__Z16SetSpikeInactives;	.scl	2;	.type	32;	.endef
__Z16SetSpikeInactives:
LFB34:
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
	je	L328
	leal	18(%eax,%edx,8), %ecx
L331:
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	call	__Z23short_stopinterpolationPs
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
L328:
	.cfi_restore_state
	leal	26(%eax,%edx,8), %ecx
	jmp	L331
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z10SpikeAligns
	.def	__Z10SpikeAligns;	.scl	2;	.type	32;	.endef
__Z10SpikeAligns:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movswl	36(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	$-1171354717, %eax
	movl	140(%ebx), %ecx
	leal	36(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	movl	112(%ebx), %edi
	movl	4(%ecx), %esi
	movl	(%ecx), %ebx
	movzwl	12(%ecx), %ebp
	cmpb	$0, 37(%ecx)
	js	L338
	addl	$2, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	%edi, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movzbl	37(%ecx), %eax
	imull	$6028, %eax, %eax
	addl	$_SectorObject, %eax
	movl	%eax, (%esp)
	testw	$8, %bp
	jne	L339
	call	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii
	addl	$16, %esp
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
L339:
	.cfi_restore_state
	call	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii
	addl	$16, %esp
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
L338:
	.cfi_restore_state
	movswl	24(%ecx), %eax
	movl	%ebx, %edx
	movl	%edi, 36(%esp)
	movl	%esi, %ecx
	testw	$8, %bp
	je	L334
	addl	$16, %esp
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
	jmp	_alignceilslope
	.p2align 4,,10
	.p2align 3
L334:
	.cfi_restore_state
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
	jmp	_alignflorslope
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z20MoveSpritesWithSpikes
	.def	__Z20MoveSpritesWithSpikes;	.scl	2;	.type	32;	.endef
__Z20MoveSpritesWithSpikes:
LFB36:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movswl	52(%esp), %eax
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%eax,%eax,4), %esi
	movzwl	_headspritesect(%eax,%eax), %edi
	leal	0(,%esi,8), %eax
	movl	%eax, 20(%esp)
	cmpw	$-1, %di
	je	L340
	movl	%ebp, 44(%esp)
	leal	28(%esp), %esi
	.cfi_offset 5, -8
	leal	24(%esp), %ebp
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	jmp	L344
	.p2align 5
	.p2align 4,,10
	.p2align 3
L343:
	cmpw	$-1, %di
	je	L351
L344:
	movswl	%di, %eax
	movswl	%di, %ebx
	movzwl	_nextspritesect(%eax,%eax), %edi
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	jne	L343
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	testb	$32, 42(%ebx)
	jne	L343
	movl	%ebp, 16(%esp)
	movl	%esi, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	8(%ebx), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	cmpw	$-1, %di
	jne	L344
L351:
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %ebp
	.cfi_restore 5
L340:
	movl	36(%esp), %esi
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z11DoSpikeAutos
	.def	__Z11DoSpikeAutos;	.scl	2;	.type	32;	.endef
__Z11DoSpikeAutos:
LFB37:
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
	movl	_User(,%esi,4), %ebx
	leal	112(%ebx), %eax
	movl	140(%ebx), %edi
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11DoSpikeMovesPi
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	call	__Z20MoveSpritesWithSpikes
	movl	%esi, (%esp)
	call	__Z10SpikeAligns
	movl	164(%ebx), %eax
	cmpl	%eax, 112(%ebx)
	je	L366
L353:
	addl	$12, %esp
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
L366:
	.cfi_restore_state
	movl	256(%ebx), %edx
	cmpl	8(%edi), %eax
	je	L367
	cmpl	%edx, %eax
	jne	L353
	movzwl	172(%ebx), %edx
	movl	168(%ebx), %eax
	movw	%ax, 92(%ebx)
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	movw	%ax, 172(%ebx)
	movl	8(%edi), %eax
	movl	%eax, 164(%ebx)
	movswl	216(%ebx), %eax
	movl	%eax, 76(%ebx)
	movswl	34(%edi), %eax
	testw	%ax, %ax
	je	L353
	testb	$4, 43(%edi)
	je	L353
L365:
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L353
	.p2align 4,,10
	.p2align 3
L367:
	movswl	216(%ebx), %eax
	negw	172(%ebx)
	movl	%edx, 164(%ebx)
	movl	%eax, 76(%ebx)
	movswl	34(%edi), %eax
	testw	%ax, %ax
	je	L353
	jmp	L365
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC1:
	.ascii "PCM lockdepth < 0!\0"
	.align 4
LC2:
	.ascii "source/audiolib/include/multivoc.h\0"
	.text
	.p2align 4
	.globl	__Z9PauseSongh
	.def	__Z9PauseSongh;	.scl	2;	.type	32;	.endef
__Z9PauseSongh:
LFB38:
	.cfi_startproc
	cmpb	$0, _gs+27
	je	L373
	cmpl	$2, _SongType
	je	L376
L373:
	ret
	.p2align 4,,10
	.p2align 3
L376:
	movl	_SongVoice, %edx
	testl	%edx, %edx
	jle	L373
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	movl	%edx, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	call	__Z15MV_BeginServicei
	movl	%eax, %edx
	testl	%eax, %eax
	je	L377
	movzbl	%bl, %eax
	movl	%eax, 112(%edx)
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L378
	js	L379
L368:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L379:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L368
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L368
	.p2align 4,,10
	.p2align 3
L378:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+32(,%eax,8), %eax
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
L377:
	.cfi_restore_state
	movl	$2, _FX_ErrorCode
	jmp	L368
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z13SetSongVolumei
	.def	__Z13SetSongVolumei;	.scl	2;	.type	32;	.endef
__Z13SetSongVolumei:
LFB45:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%eax, %edx
	cmpl	$2, _SongType
	je	L385
L381:
	movl	$255, %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	__Z14MIDI_SetVolumei.isra.0
	.p2align 4,,10
	.p2align 3
L385:
	.cfi_restore_state
	movl	_SongVoice, %eax
	testl	%eax, %eax
	jle	L381
	movl	%edx, 16(%esp)
	call	__Z15MV_BeginServicei
	movl	16(%esp), %edx
	testl	%eax, %eax
	je	L386
	movl	76(%eax), %ecx
	movl	%edx, (%esp)
	movl	%edx, 16(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, %ecx
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	__tls_index, %eax
	movl	16(%esp), %edx
	movl	%fs:44, %ecx
	movl	(%ecx,%eax,4), %ecx
	subl	$1, _MV_Locked@secrel32(%ecx)
	je	L387
	jns	L381
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-2, %eax
	jl	L381
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	movl	%edx, 16(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	16(%esp), %edx
	jmp	L381
	.p2align 4,,10
	.p2align 3
L387:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	movl	16(%esp), %edx
	jmp	L381
L386:
	movl	$2, _FX_ErrorCode
	jmp	L381
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z9SoundDistiiii
	.def	__Z9SoundDistiiii;	.scl	2;	.type	32;	.endef
__Z9SoundDistiiii:
LFB48:
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
	andl	$-8, %esp
	subl	$16, %esp
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	movl	_Player(%eax), %esi
	subl	%ebx, %esi
	movl	_Player+4(%eax), %ebx
	movl	_Player+8(%eax), %eax
	movl	%esi, 8(%esp)
	fildl	8(%esp)
	subl	%ecx, %eax
	subl	%edx, %ebx
	sarl	$4, %eax
	movl	%ebx, 8(%esp)
	fildl	8(%esp)
	movl	%eax, 8(%esp)
	fildl	8(%esp)
	fxch	%st(2)
	fmul	%st(0), %st
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
	fxch	%st(1)
	fmul	%st(0), %st
	faddp	%st, %st(1)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fldz
	fucomip	%st(1), %st
	ja	L407
	movl	8(%ebp), %eax
	fsqrt
	testl	%eax, %eax
	js	L391
	fildl	8(%ebp)
	fcomi	%st(1), %st
	jbe	L409
	fstp	%st(0)
	fstp	%st(0)
	jmp	L396
	.p2align 4,,10
	.p2align 3
L413:
	fstp	%st(0)
L396:
	fldz
	flds	LC7
	xorl	%eax, %eax
L400:
	fnstcw	14(%esp)
	testb	%al, %al
	fcmove	%st(1), %st
	fstp	%st(1)
	movzwl	14(%esp), %eax
	orb	$12, %ah
	movw	%ax, 12(%esp)
	fldcw	12(%esp)
	fistps	8(%esp)
	fldcw	14(%esp)
	movzwl	8(%esp), %eax
	jmp	L410
	.p2align 4,,10
	.p2align 3
L412:
	fstp	%st(0)
L410:
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
L409:
	.cfi_restore_state
	fsubrp	%st, %st(1)
L397:
	fmuls	LC5
	xorl	%eax, %eax
	fdivs	LC6
	fldz
	fcomip	%st(1), %st
	ja	L412
L402:
	flds	LC7
	fld	%st(0)
	fxch	%st(2)
	fcomi	%st(2), %st
	fstp	%st(2)
	seta	%al
	jmp	L400
	.p2align 4,,10
	.p2align 3
L391:
	movl	8(%ebp), %edx
	movl	$274877907, %eax
	negl	%edx
	mull	%edx
	shrl	$8, %edx
	cmpl	$-3999, 8(%ebp)
	jge	L403
	flds	LC3
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L395:
	addl	$1, %eax
	fadd	%st(0), %st
	movswl	%ax, %ecx
	cmpl	%ecx, %edx
	jg	L395
L394:
	fildl	8(%ebp)
	fdivp	%st, %st(1)
/APP
 # 228 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fcomip	%st(1), %st
	jnb	L413
	movl	%edx, 8(%esp)
	fildl	8(%esp)
	fmulp	%st, %st(1)
	jmp	L397
	.p2align 4,,10
	.p2align 3
L403:
	flds	LC3
	jmp	L394
L407:
	fstpl	(%esp)
	call	_sqrt
	cmpl	$0, 8(%ebp)
	js	L391
	fildl	8(%ebp)
	fsubrp	%st, %st(1)
	fmuls	LC5
	fdivs	LC6
	jmp	L402
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z10SoundAngleii
	.def	__Z10SoundAngleii;	.scl	2;	.type	32;	.endef
__Z10SoundAngleii:
LFB49:
	.cfi_startproc
	movl	%eax, %ecx
	movswl	_screenpeek, %eax
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	imull	$24124, %eax, %eax
	subl	_Player(%eax), %ecx
	subl	_Player+4(%eax), %edx
	call	@getangle@8
	movl	%eax, %ebx
	movswl	_screenpeek, %eax
	movl	%ebx, %ecx
	imull	$24124, %eax, %eax
	movl	_Player+300(%eax), %eax
	testl	%eax, %eax
	js	L425
	leal	32768(%eax), %edx
	movl	%ebx, %esi
	sarl	$16, %edx
	subl	%edx, %esi
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	cmpl	$1024, %eax
	jle	L420
	cmpl	$1024, %ebx
	jg	L426
	leal	2048(%ebx), %ecx
	cmpl	$1024, %edx
	jle	L417
L420:
	subw	%dx, %cx
	movl	%ecx, %eax
	jns	L418
L423:
	movl	%ecx, %eax
	andw	$2047, %ax
L418:
	sarw	$4, %ax
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
L425:
	.cfi_restore_state
	leal	32767(%eax), %edx
	subl	$32768, %eax
	movl	%ebx, %esi
	cmovs	%edx, %eax
	sarl	$16, %eax
	movl	%eax, %edx
	subl	%eax, %esi
	movl	%ebx, %eax
	subl	%edx, %eax
	cmpl	$1024, %esi
	jle	L418
	leal	2048(%ebx), %eax
	cmpl	$1025, %ebx
	cmovl	%eax, %ecx
L417:
	addw	$2048, %dx
	subw	%dx, %cx
	movl	%ecx, %eax
	js	L423
	jmp	L418
	.p2align 4,,10
	.p2align 3
L426:
	cmpl	$1024, %edx
	jg	L420
	addw	$2048, %dx
	subl	%edx, %ecx
	jmp	L423
	.cfi_endproc
LFE49:
	.section .rdata,"dr"
LC10:
	.ascii "source/sw/src/sounds.cpp\0"
LC11:
	.ascii "num >= 0 && num < DIGI_MAX\0"
	.align 4
LC12:
	.ascii "Could not open sound %s, num %d, priority %d\12\0"
LC13:
	.ascii "%s\0"
LC14:
	.ascii "Error reading file '%s'.\0"
LC15:
	.ascii "source/sw/src/game.h\0"
	.text
	.p2align 4
	.globl	__Z10CacheSoundii.isra.0
	.def	__Z10CacheSoundii.isra.0;	.scl	2;	.type	32;	.endef
__Z10CacheSoundii.isra.0:
LFB52:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 28(%esp)
	cmpl	$625, %eax
	.cfi_offset 6, -16
	ja	L435
L428:
	imull	$44, %ebx, %ecx
	movl	_voc+16(%ecx), %eax
	leal	_voc(%ecx), %esi
	testl	%eax, %eax
	je	L436
L429:
	movl	$1, %eax
L427:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L435:
	.cfi_restore_state
	movl	$785, %ecx
	movl	$LC10, %edx
	movl	$LC11, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L428
	.p2align 4,,10
	.p2align 3
L436:
	xorl	%edx, %edx
	movl	%esi, %eax
	movl	%ebp, 36(%esp)
	movl	%ecx, 20(%esp)
	.cfi_offset 5, -8
	call	_kopen4load.part.0
	movl	%eax, %ebp
	cmpl	$-1, %eax
	je	L437
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	20(%esp), %ecx
	movb	$-57, 40(%esi)
	movl	%eax, %edi
	movl	%edi, %edx
	leal	_voc+16(%ecx), %eax
	addl	$_voc+40, %ecx
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	16(%esi), %edx
	movl	%edi, %ecx
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %edi
	je	L432
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L438
L433:
	movl	%esi, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
L432:
	imull	$44, %ebx, %ebx
	movl	%ebp, %eax
	movl	%edi, _voc+20(%ebx)
	call	_kclose
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	jmp	L429
	.p2align 4,,10
	.p2align 3
L437:
	.cfi_offset 5, -8
	movzbl	28(%esi), %eax
	movl	%ebx, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC12, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$_ds, 4(%esp)
	movl	$LC13, (%esp)
	call	__Z14CON_ConMessagePKcz
	movl	36(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	jmp	L427
	.p2align 4,,10
	.p2align 3
L438:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, 16(%esp)
	movl	$LC14, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L433
	.cfi_endproc
LFE52:
	.section .rdata,"dr"
	.align 4
LC16:
	.ascii "Invalid or out of range ambient sound number %d\12\0"
	.align 4
LC18:
	.ascii "vp->num=%d, vp->owner=%d, vp->vp->lock=%d\0"
	.align 4
LC19:
	.ascii "sp->picnum=%d, sp->hitag=%d, sp->lotag=%d, sp->owner=%d\12\0"
LC20:
	.ascii "lock > MAX, num = %d\0"
	.text
	.p2align 4
	.globl	__Z9PlaySoundiPiS_S_i
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
__Z9PlaySoundiPiS_S_i:
LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$92, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%edi, -4(%ebp)
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movzbl	_gs+40, %eax
	orb	_Prediction, %al
	.cfi_offset 7, -12
	jne	L440
	cmpb	$0, _gs+26
	je	L440
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%ecx, -20(%ebp)
	cmpl	$625, %esi
	ja	L540
L441:
	movl	$-1, _voice
	cmpb	$0, _Use_SoundSpriteNum
	jne	L541
L442:
	movl	$0, -40(%ebp)
L444:
	cmpb	$0, _gs+29
	je	L445
	movl	-16(%ebp), %eax
	andl	$144, %eax
	cmpl	$16, %eax
	jne	L445
	cmpl	$82, %esi
	ja	L542
L445:
	movl	$72, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L446
	movl	$-858993460, 56(%eax)
	movl	$-858993460, 60(%eax)
	movl	$-858993460, 64(%eax)
	movl	$-858993460, 68(%eax)
	xorl	%eax, %eax
L447:
	movl	$-858993460, (%edi,%eax)
	movl	$-858993460, 4(%edi,%eax)
	movl	$-858993460, 8(%edi,%eax)
	movl	$-858993460, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$64, %eax
	jb	L447
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L543
	movl	%edi, 44(%eax)
	movl	%edi, _voc3dend
	movl	$0, 44(%edi)
	movl	%eax, 40(%edi)
L451:
	movl	$-1, %ecx
	xorl	%eax, %eax
	movl	$-1, 32(%edi)
	movw	%cx, 48(%edi)
	movl	%esi, 52(%edi)
	movb	$0, 58(%edi)
	movw	%ax, 68(%edi)
	cmpb	$0, _gs+29
	je	L453
	movl	-16(%ebp), %eax
	andl	$144, %eax
	cmpl	$16, %eax
	je	L544
L453:
	cmpl	$625, %esi
	ja	L545
L457:
	imull	$44, %esi, %eax
	addl	$_voc, %eax
	cmpb	$0, _UsingMenus
	je	L458
	movl	(%ebx), %edx
	testl	%edx, %edx
	jne	L458
	movl	-20(%ebp), %ecx
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	je	L546
	.p2align 4
	.p2align 3
L458:
	imull	$44, %esi, %edx
	movzbl	_voc+28(%edx), %ecx
	movb	%cl, -32(%ebp)
L459:
	movl	%eax, (%edi)
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	%ebx, 4(%edi)
	movl	%ecx, 12(%edi)
	movl	%eax, 8(%edi)
	movl	(%ebx), %edx
	movl	%edx, 16(%edi)
	movl	%edx, -28(%ebp)
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movl	%edx, 20(%edi)
	movl	(%ecx), %ecx
	movl	%eax, 28(%edi)
	movl	%ecx, 24(%edi)
	movl	(%ebx), %eax
	testb	$1, -16(%ebp)
	je	L460
	movl	-20(%ebp), %ecx
	movl	%eax, -28(%ebp)
	movl	(%ecx), %edx
	movl	-24(%ebp), %ecx
	movl	(%ecx), %ecx
L460:
	testl	%eax, %eax
	jne	L463
	movl	-20(%ebp), %ebx
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L463
	movl	-24(%ebp), %ebx
	movl	(%ebx), %ebx
	testl	%ebx, %ebx
	cmove	%eax, %ecx
	cmove	%eax, %edx
	cmovne	-28(%ebp), %eax
	movl	%eax, -28(%ebp)
L463:
	imull	$44, %esi, %eax
	testb	$1, _voc+36(%eax)
	je	L467
	cmpb	$0, _Use_SoundSpriteNum
	je	L467
	cmpw	$0, _SoundSpriteNum
	js	L467
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	L467
	movl	(%eax), %ebx
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	%ebx, -28(%ebp)
	.p2align 4
	.p2align 3
L467:
	xorl	%eax, %eax
	movw	%ax, -24(%ebp)
	testb	$8, -16(%ebp)
	je	L547
L468:
	movl	-28(%ebp), %eax
	movl	$255, %ebx
	movw	%bx, -20(%ebp)
	orl	%edx, %eax
	orl	%ecx, %eax
	movl	%eax, -36(%ebp)
	jne	L548
L469:
	imull	$44, %esi, %eax
	movzwl	-20(%ebp), %ebx
	movw	%bx, 36(%edi)
	testb	$1, _voc+36(%eax)
	je	L471
	cmpb	$0, _Use_SoundSpriteNum
	je	L471
	cmpw	$0, _SoundSpriteNum
	jns	L549
	.p2align 4
	.p2align 3
L471:
	cmpb	$0, _gs+29
	je	L474
	testb	$16, -16(%ebp)
	je	L474
	movswl	-20(%ebp), %eax
	movl	(%edi), %edx
	movl	%eax, %ecx
	imull	$20165, %eax, %eax
	movzbl	28(%edx), %edx
	sarw	$15, %cx
	sarl	$19, %eax
	subl	%ecx, %eax
	subl	%eax, %edx
	movb	%dl, -32(%ebp)
	movb	%dl, 58(%edi)
L474:
	movl	%esi, %eax
	call	__Z10CacheSoundii.isra.0
	testb	%al, %al
	je	L550
	imull	$44, %esi, %edx
	movzbl	_voc+40(%edx), %eax
	cmpb	$-57, %al
	ja	L477
	movb	$-56, _voc+40(%edx)
L478:
	xorl	%eax, %eax
	cmpw	$4, -20(%ebp)
	cmovg	-24(%ebp), %ax
	movw	%ax, -24(%ebp)
	imull	$44, %esi, %eax
	movswl	_voc+24(%eax), %edx
	movswl	_voc+26(%eax), %ebx
	movl	%edx, -28(%ebp)
	cmpw	%dx, %bx
	je	L487
	subl	%edx, %ebx
	testl	%ebx, %ebx
	jle	L487
	imull	$1103515245, _wrandomseed, %ecx
	movl	$32766, %eax
	addl	$12345, %ecx
	movl	%ecx, _wrandomseed
	shrl	$16, %ecx
	andl	$32767, %ecx
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	xorl	%edx, %edx
	movl	$536854528, %eax
	idivl	%ebx
	sall	$14, %ecx
	xorl	%edx, %edx
	movl	%eax, -40(%ebp)
	movl	%ecx, %eax
	divl	-40(%ebp)
	leal	-1(%ebx), %edx
	cmpl	%ebx, %eax
	cmovb	%eax, %edx
	addl	%edx, -28(%ebp)
L487:
	movl	-16(%ebp), %eax
	andl	$64, %eax
	movl	%eax, -16(%ebp)
	imull	$44, %esi, %eax
	leal	_voc(%eax), %edx
	testb	$1, _voc+36(%eax)
	je	L491
	movl	$255, %ebx
	subw	-20(%ebp), %bx
	testw	%bx, %bx
	jg	L551
	cmpw	$254, -20(%ebp)
	jg	L552
L494:
	xorl	%ebx, %ebx
L493:
	imull	$44, %esi, %eax
	movl	_voc+20(%eax), %edx
	movl	_voc+16(%eax), %eax
	movl	%edx, -36(%ebp)
	movl	%eax, -24(%ebp)
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movzbl	-32(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%ebx, 28(%esp)
	movl	%ebx, 24(%esp)
	movzbl	%al, %eax
	movl	%ecx, 32(%esp)
	movl	-28(%ebp), %ecx
	movl	%ebx, 20(%esp)
	movl	-24(%ebp), %ebx
	movl	%esi, 40(%esp)
	movl	$65536, 36(%esp)
	movl	%ecx, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	*__ZZ7FX_PlayE4func(,%eax,4)
	testl	%eax, %eax
	jle	L539
L496:
	movl	%eax, _voice
	movb	$1, 69(%edi)
	jmp	L500
	.p2align 4,,10
	.p2align 3
L541:
	movswl	_SoundSpriteNum, %eax
	testw	%ax, %ax
	js	L442
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, -40(%ebp)
	jmp	L444
	.p2align 4,,10
	.p2align 3
L477:
	leal	1(%eax), %ecx
	movb	%cl, _voc+40(%edx)
	cmpb	$-3, %al
	jbe	L478
	movl	_voc3dstart, %ebx
	testl	%ebx, %ebx
	jne	L483
	jmp	L479
	.p2align 4,,10
	.p2align 3
L553:
	leal	(%eax,%eax,2), %eax
	movl	$LC18, 4(%esp)
	movswl	_ambarray+2(,%eax,4), %eax
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
L481:
	movswl	48(%ebx), %eax
	testw	%ax, %ax
	js	L482
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	30(%eax), %edx
	movl	%edx, 20(%esp)
	movswl	38(%eax), %edx
	movl	%edx, 16(%esp)
	movswl	40(%eax), %edx
	movl	%edx, 12(%esp)
	movswl	14(%eax), %eax
	movl	$LC19, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
L482:
	movl	44(%ebx), %ebx
	testl	%ebx, %ebx
	je	L479
L483:
	movl	(%ebx), %eax
	movswl	48(%ebx), %edx
	testb	$16, 28(%ebx)
	movzbl	40(%eax), %ecx
	movl	52(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	jne	L553
	movl	%eax, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	jmp	L481
	.p2align 4,,10
	.p2align 3
L491:
	movl	-36(%ebp), %ecx
	testl	%ecx, %ecx
	je	L554
	movl	$-1, %ecx
	movl	$-1, %eax
	cmpw	$254, -20(%ebp)
	jle	L555
L499:
	imull	$44, %esi, %edx
	movl	%ecx, _voice
	subb	$1, _voc+40(%edx)
L500:
	movzwl	-20(%ebp), %esi
	movl	-16(%ebp), %edx
	movl	%eax, 32(%edi)
	movl	$0, 60(%edi)
	movw	%si, 56(%edi)
	testl	%edx, %edx
	je	L538
	xorl	$64, 28(%edi)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L538:
	.cfi_restore_state
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L540:
	.cfi_restore_state
	movl	$887, %ecx
	movl	$LC10, %edx
	movl	$LC11, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L441
	.p2align 4,,10
	.p2align 3
L548:
	imull	$44, %esi, %eax
	movl	%ecx, -48(%ebp)
	movl	%edx, -44(%ebp)
	movl	_voc+32(%eax), %eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	__Z9SoundDistiiii
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %edx
	movw	%ax, -20(%ebp)
	jmp	L469
	.p2align 4,,10
	.p2align 3
L547:
	movl	-28(%ebp), %eax
	movl	%ecx, -36(%ebp)
	movl	%edx, -20(%ebp)
	call	__Z10SoundAngleii
	movl	-36(%ebp), %ecx
	movl	-20(%ebp), %edx
	movw	%ax, -24(%ebp)
	jmp	L468
	.p2align 4,,10
	.p2align 3
L545:
	movl	$929, %ecx
	movl	$LC10, %edx
	movl	$LC11, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L457
	.p2align 4,,10
	.p2align 3
L552:
	movl	-16(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L494
	movzwl	-20(%ebp), %eax
	subb	$1, 40(%edx)
	movl	$-1, _voice
	movl	$-1, 32(%edi)
	movw	%ax, 56(%edi)
	movl	$0, 60(%edi)
	movl	-12(%ebp), %ebx
	.cfi_restore 3
L440:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	movl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L546:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-24(%ebp), %ecx
	movb	$100, -32(%ebp)
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L459
	jmp	L458
	.p2align 4,,10
	.p2align 3
L555:
	movl	20(%edx), %ecx
	movl	16(%edx), %ebx
	movl	%ecx, %edx
	movl	%ebx, %eax
	movl	%ecx, -36(%ebp)
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movl	-36(%ebp), %ecx
	movl	%ebx, (%esp)
	movzbl	%al, %edx
	movzbl	-32(%ebp), %eax
	movl	%esi, 32(%esp)
	movl	$65536, 28(%esp)
	movl	%eax, 24(%esp)
	movswl	-20(%ebp), %eax
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movswl	-24(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 16(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, 12(%esp)
	call	*__ZZ9FX_Play3DE4func(,%edx,4)
	testl	%eax, %eax
	jg	L496
	.p2align 4
	.p2align 3
L539:
	movl	$2, _FX_ErrorCode
	movl	$-2, %ecx
	movl	$-2, %eax
	jmp	L499
	.p2align 4,,10
	.p2align 3
L549:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	movswl	_Player+268(%eax), %ebx
	movl	%ebx, 16(%esp)
	movl	_Player+8(%eax), %ebx
	movl	%ebx, 12(%esp)
	movl	_Player+4(%eax), %ebx
	movl	%ebx, 8(%esp)
	movl	_Player(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	-28(%ebp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L471
	cmpl	$432, %esi
	je	L509
	movzwl	-20(%ebp), %ebx
	movl	%ebx, %eax
	leal	3(%ebx), %edx
	shrw	$15, %ax
	addl	%ebx, %eax
	sarw	%ax
	testw	%bx, %bx
	cmovns	%ebx, %edx
	sarw	$2, %dx
	addl	%edx, %eax
	movl	$255, %edx
	addl	%ebx, %eax
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movw	%dx, -20(%ebp)
	jmp	L471
	.p2align 4,,10
	.p2align 3
L543:
	movl	$0, 40(%edi)
	movl	$0, 44(%edi)
	movl	%edi, _voc3dend
	movl	%edi, _voc3dstart
	jmp	L451
	.p2align 4,,10
	.p2align 3
L551:
	movzwl	%bx, %ebx
	jmp	L493
	.p2align 4,,10
	.p2align 3
L554:
	movl	20(%edx), %ecx
	movl	16(%edx), %ebx
	movl	%ecx, %edx
	movl	%ebx, %eax
	movl	%ecx, -24(%ebp)
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movl	-28(%ebp), %ecx
	movzbl	-32(%ebp), %edx
	movl	%esi, 40(%esp)
	movzbl	%al, %eax
	movl	$65536, 36(%esp)
	movl	%ecx, 16(%esp)
	movl	-24(%ebp), %ecx
	movl	%edx, 32(%esp)
	movl	$255, 28(%esp)
	movl	$255, 24(%esp)
	movl	$255, 20(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	*__ZZ7FX_PlayE4func(,%eax,4)
	testl	%eax, %eax
	jg	L496
	jmp	L539
	.p2align 4,,10
	.p2align 3
L479:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L556
L484:
	movl	%esi, 8(%esp)
	movl	$LC20, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L478
	.p2align 4,,10
	.p2align 3
L446:
	movl	$72, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L544:
	leal	(%esi,%esi), %eax
	movl	%eax, -32(%ebp)
	addl	%esi, %eax
	movl	_ambarray+8(,%eax,4), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	L455
	imull	$1103515245, _wrandomseed, %ecx
	movl	%edx, -28(%ebp)
	movl	$32766, %eax
	addl	$12345, %ecx
	movl	%ecx, _wrandomseed
	shrl	$16, %ecx
	andl	$32767, %ecx
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	xorl	%edx, %edx
	movl	$536854528, %eax
	idivl	-28(%ebp)
	sall	$14, %ecx
	xorl	%edx, %edx
	movl	%eax, -36(%ebp)
	movl	%ecx, %eax
	divl	-36(%ebp)
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	leal	-1(%edx), %eax
	cmpl	%edx, %ecx
	cmovb	%ecx, %eax
L455:
	movl	%eax, 64(%edi)
	movl	-32(%ebp), %eax
	addl	%esi, %eax
	movl	_ambarray+4(,%eax,4), %ecx
	movswl	_ambarray+2(,%eax,4), %esi
	orl	%ecx, -16(%ebp)
	jmp	L453
L542:
	movl	%esi, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movswl	_screenpeek, %eax
	movl	$_ds, %edx
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L440
	.p2align 4,,10
	.p2align 3
L556:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	movl	$LC20, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L484
	.p2align 4,,10
	.p2align 3
L550:
	movl	$2, %eax
	movl	$-1, %edx
	xorl	%esi, %esi
	movb	$1, 68(%edi)
	movl	%eax, 28(%edi)
	movl	%edx, 32(%edi)
	movw	%si, 56(%edi)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L440
	.p2align 4,,10
	.p2align 3
L509:
	.cfi_restore_state
	movl	$255, %eax
	movw	%ax, -20(%ebp)
	jmp	L471
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z11DoSkullWaits
	.def	__Z11DoSkullWaits;	.scl	2;	.type	32;	.endef
__Z11DoSkullWaits:
LFB67:
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
	movswl	36(%esp), %edi
	movl	_User(,%edi,4), %esi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movl	200(%esi), %ecx
	movl	(%ecx), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	subl	4(%ebx), %edx
	movl	%edi, (%esp)
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	movl	%edx, %ebp
	call	__Z22DoActorPickClosePlayers
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L566
L558:
	movl	8(%ebx), %eax
	cmpl	%eax, 108(%esi)
	jge	L560
	cmpl	$3499, %ebp
	jle	L567
L561:
	addl	$16, %esp
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
L567:
	.cfi_restore_state
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	xorl	%ecx, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movl	$-600, %ebx
	movw	%bx, 92(%esi)
L565:
	movl	%edi, %eax
	movl	$_sg_SkullJump, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%edi, 36(%esp)
	addl	$16, %esp
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
L560:
	.cfi_restore_state
	leal	28(%ebx), %eax
	movswl	28(%ebx), %ecx
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	subl	_sprite, %edx
	movl	$-1171354717, %eax
	mull	%edx
	addl	$288, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%edi, (%esp)
	call	__Z10DoSkullBobs
	cmpl	$7999, %ebp
	jg	L561
	movl	200(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	_sprite, %ebp
	movl	8(%esp), %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	addl	$1, _krandcount
	subl	%ebp, %edx
	mull	%edx
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	movw	%cx, 28(%ebx)
	leal	1(%eax,%edx,4), %ecx
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movzwl	%cx, %ecx
	mull	%edx
	movl	%ecx, _randomseed
	sarl	$8, %ecx
	subl	$-128, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-700, %edx
	movw	%cx, 32(%ebx)
	movw	%dx, 92(%esi)
	jmp	L565
	.p2align 4,,10
	.p2align 3
L566:
	leal	8(%ebx), %eax
	movl	$-1171354717, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 12(%esp)
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
	movl	$116, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	12(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$719, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L559
	sall	$14, %eax
	movl	$754986409, %edx
	mull	%edx
	shrl	$19, %edx
	addw	$360, %dx
L559:
	movw	%dx, 216(%esi)
	jmp	L558
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z11DoBettyWaits
	.def	__Z11DoBettyWaits;	.scl	2;	.type	32;	.endef
__Z11DoBettyWaits:
LFB71:
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
	movswl	36(%esp), %edi
	movl	_User(,%edi,4), %esi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movl	200(%esi), %ecx
	movl	(%ecx), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	subl	4(%ebx), %edx
	movl	%edi, (%esp)
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	movl	%edx, %ebp
	call	__Z22DoActorPickClosePlayers
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L574
L569:
	movl	8(%ebx), %eax
	cmpl	%eax, 108(%esi)
	jge	L570
	cmpl	$3499, %ebp
	jle	L575
L571:
	addl	$16, %esp
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
L575:
	.cfi_restore_state
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	xorl	%ecx, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movl	$-600, %ebx
	movw	%bx, 92(%esi)
L573:
	movl	%edi, %eax
	movl	$_sg_BettyJump, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%edi, 36(%esp)
	addl	$16, %esp
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
L570:
	.cfi_restore_state
	leal	28(%ebx), %eax
	movswl	28(%ebx), %ecx
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	subl	_sprite, %edx
	movl	$-1171354717, %eax
	mull	%edx
	addl	$288, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%edi, (%esp)
	call	__Z10DoSkullBobs
	cmpl	$7999, %ebp
	jg	L571
	movl	200(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	_sprite, %ebp
	movl	8(%esp), %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	addl	$1, _krandcount
	subl	%ebp, %edx
	mull	%edx
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	movw	%cx, 28(%ebx)
	leal	1(%eax,%edx,4), %ecx
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movzwl	%cx, %ecx
	mull	%edx
	movl	%ecx, _randomseed
	sarl	$8, %ecx
	subl	$-128, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-700, %edx
	movw	%cx, 32(%ebx)
	movw	%dx, 92(%esi)
	jmp	L573
	.p2align 4,,10
	.p2align 3
L574:
	leal	8(%ebx), %eax
	movl	$-1171354717, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 12(%esp)
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
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	12(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$360, %eax
	movw	%ax, 216(%esi)
	jmp	L569
	.cfi_endproc
LFE71:
	.section .rdata,"dr"
LC21:
	.ascii "RTS_GetSound: %i >= %i\0"
LC22:
	.ascii "source/sw/src/rts.cpp\0"
LC23:
	.ascii "RTS_ReadLump: %i >= numlumps\0"
	.text
	.p2align 4
	.globl	__Z12PlaySoundRTSi
	.def	__Z12PlaySoundRTSi;	.scl	2;	.type	32;	.endef
__Z12PlaySoundRTSi:
LFB72:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	__ZL8numlumps.lto_priv.0, %eax
	cmpl	$1, %eax
	jle	L576
	cmpb	$0, _gs+26
	jne	L586
L576:
	movl	40(%esp), %ebx
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L586:
	.cfi_restore_state
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	leal	-1(%ebx), %ebp
	movl	%esi, 44(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	%ax, %bx
	jnb	L587
L578:
	leal	0(,%ebx,4), %eax
	movl	%eax, %edi
	addl	__ZL9lumpcache.lto_priv.0, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L588
	movzbl	_lumplockbyte(%ebx), %edx
	leal	1(%edx), %ecx
	cmpb	$-57, %dl
	movl	$-56, %edx
	cmova	%ecx, %edx
	movb	%dl, _lumplockbyte(%ebx)
L581:
	movl	(%eax), %esi
	movl	%ebp, %eax
	call	__Z15RTS_SoundLengthi
	movl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	%esi, %eax
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movl	36(%esp), %edx
	movl	%ebx, %ecx
	movl	%esi, (%esp)
	negl	%ecx
	movzbl	%al, %eax
	movl	$65536, 28(%esp)
	movl	%ecx, 32(%esp)
	movl	$255, 24(%esp)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%edx, 4(%esp)
	call	*__ZZ9FX_Play3DE4func(,%eax,4)
	testl	%eax, %eax
	jle	L589
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L589:
	.cfi_restore_state
	subb	$1, _lumplockbyte(%ebx)
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$2, _FX_ErrorCode
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %ebx
	addl	$56, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L588:
	.cfi_restore_state
	movl	%ebp, %eax
	movb	$-56, _lumplockbyte(%ebx)
	call	__Z15RTS_SoundLengthi
	leal	_lumplockbyte(%ebx), %ecx
	movl	%eax, %edx
	movl	__ZL9lumpcache.lto_priv.0, %eax
	addl	%edi, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	__ZL9lumpcache.lto_priv.0, %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 36(%esp)
	cmpl	__ZL8numlumps.lto_priv.0, %ebx
	jge	L590
L580:
	movl	__ZL8lumpinfo.lto_priv.0, %eax
	leal	(%edi,%ebx), %edx
	xorl	%ecx, %ecx
	leal	(%eax,%edx,4), %esi
	movl	12(%esi), %edx
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	16(%esi), %ecx
	movl	8(%esi), %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	36(%esp), %edx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL9lumpcache.lto_priv.0, %eax
	addl	%edi, %eax
	jmp	L581
	.p2align 4,,10
	.p2align 3
L587:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L578
	movl	%eax, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$297, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L578
	.p2align 4,,10
	.p2align 3
L590:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L580
	movl	%ebx, 16(%esp)
	movl	$LC23, 12(%esp)
	movl	$274, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L580
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z15COVER_SetReverbi
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
__Z15COVER_SetReverbi:
LFB79:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	cmpb	$0, _gs+328
	je	L592
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	sall	$7, %eax
	call	_MV_SetReverb
	movl	_MV_SampleSize, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	sall	$8, %eax
	movl	%eax, __ZL14MV_ReverbDelay.lto_priv.0
	ret
	.p2align 4,,10
	.p2align 3
L592:
	.cfi_restore_state
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %ebx
	call	_MV_SetReverb
	movl	$768, %eax
	sall	$8, %ebx
	cmpl	$767, %ebx
	jg	L594
	cmpl	$256, %ebx
	movl	$512, %eax
	movl	$256, %edx
	cmovle	%edx, %eax
L594:
	imull	_MV_SampleSize, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%eax, __ZL14MV_ReverbDelay.lto_priv.0
	ret
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z18DeleteNoSoundOwners
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
__Z18DeleteNoSoundOwners:
LFB82:
	.cfi_startproc
	movl	_voc3dstart, %edx
	testl	%edx, %edx
	je	L634
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	jmp	L607
	.p2align 4
	.p2align 4,,10
	.p2align 3
L600:
	movl	44(%edx), %edx
	testl	%edx, %edx
	je	L598
L607:
	movzwl	48(%edx), %eax
	testw	%ax, %ax
	js	L600
	cmpw	%bx, %ax
	jne	L600
	movl	(%edx), %eax
	testb	$1, 36(%eax)
	je	L600
	movl	32(%edx), %eax
	testl	%eax, %eax
	jg	L637
L601:
	movl	40(%edx), %ecx
	movl	44(%edx), %eax
	testl	%ecx, %ecx
	je	L603
L639:
	movl	%eax, 44(%ecx)
	movl	44(%edx), %ecx
	movl	40(%edx), %eax
	testl	%ecx, %ecx
	je	L605
L640:
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	%eax, 40(%ecx)
	movl	44(%edx), %esi
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	%esi, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	12(%esp), %esi
	.cfi_restore 6
	testl	%edx, %edx
	jne	L607
L598:
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L637:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %ecx
	movl	-4(%ecx,%eax,4), %ecx
	cmpl	$0, _MV_Installed
	je	L601
	testl	%ecx, %ecx
	je	L601
	movl	112(%ecx), %ecx
	testl	%ecx, %ecx
	jne	L601
	movl	%edx, 4(%esp)
	call	_MV_Kill.constprop.0
	movl	4(%esp), %edx
	testl	%eax, %eax
	jne	L638
L602:
	movl	40(%edx), %ecx
	movl	44(%edx), %eax
	movl	$0, 32(%edx)
	testl	%ecx, %ecx
	jne	L639
L603:
	movl	%eax, _voc3dstart
	testl	%eax, %eax
	je	L605
	movl	$0, 40(%eax)
	movl	44(%edx), %ecx
	movl	40(%edx), %eax
	testl	%ecx, %ecx
	jne	L640
L605:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, _voc3dend
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L634:
	ret
L638:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	movl	$2, _FX_ErrorCode
	jmp	L602
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
LC24:
	.ascii "Delete3DSounds(): NULL vp->vp\0"
	.text
	.p2align 4
	.globl	__Z14Delete3DSoundsv
	.def	__Z14Delete3DSoundsv;	.scl	2;	.type	32;	.endef
__Z14Delete3DSoundsv:
LFB84:
	.cfi_startproc
	movl	_voc3dstart, %eax
	testl	%eax, %eax
	je	L666
L665:
	cmpb	$0, 68(%eax)
	je	L672
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	%ebx, -12(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
L667:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L673
	movzbl	28(%edx), %edx
	subl	$50, %edx
	cmpb	$1, %dl
	jbe	L674
L645:
	movl	40(%eax), %ecx
	movl	44(%eax), %edx
	testl	%ecx, %ecx
	je	L648
	movl	%edx, 44(%ecx)
L649:
	movl	44(%eax), %ecx
	movl	40(%eax), %edx
	testl	%ecx, %ecx
	je	L650
	movl	%edx, 40(%ecx)
	movl	44(%eax), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	%ebx, %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L641
L652:
	cmpb	$0, 68(%eax)
	jne	L667
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	L652
L641:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L672:
	movl	44(%eax), %eax
	testl	%eax, %eax
	jne	L665
	ret
	.p2align 4,,10
	.p2align 3
L650:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, _voc3dend
	call	__ZN2sm9Allocator4FreeEPv
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	subl	$4, %esp
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L648:
	.cfi_restore_state
	movl	%edx, _voc3dstart
	testl	%edx, %edx
	je	L650
	movl	$0, 40(%edx)
	jmp	L649
	.p2align 4,,10
	.p2align 3
L673:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L645
	movl	$LC24, 12(%esp)
	movl	$1566, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	movl	%eax, -16(%ebp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-16(%ebp), %eax
	jmp	L645
	.p2align 4,,10
	.p2align 3
L674:
	movl	_connecthead, %ecx
	movswl	%cx, %edx
	cmpw	$-1, %cx
	je	L645
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movlps	LC25, %xmm0
	.p2align 6
	.p2align 4
	.p2align 3
L647:
	imull	$24124, %edx, %ecx
	movl	_Player+24084(%ecx), %esi
	cmpl	%esi, 52(%eax)
	jne	L646
	movb	$0, _Player+24080(%ecx)
	movlps	%xmm0, _Player+24084(%ecx)
L646:
	movl	_connectpoint2(,%edx,4), %ecx
	movswl	%cx, %edx
	cmpw	$-1, %cx
	jne	L647
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L645
	.p2align 4,,10
	.p2align 3
L666:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	ret
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z17StartAmbientSoundv
	.def	__Z17StartAmbientSoundv;	.scl	2;	.type	32;	.endef
__Z17StartAmbientSoundv:
LFB85:
	.cfi_startproc
	cmpb	$0, _InMenuLevel
	jne	L690
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movzwl	_headspritestat+136, %esi
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	cmpw	$-1, %si
	je	L675
	movl	%ebx, 16(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	jmp	L677
	.p2align 4,,10
	.p2align 3
L679:
	movzwl	14(%esp), %ecx
	movw	%cx, 48(%eax)
L678:
	cmpw	$-1, %si
	je	L694
L677:
	movswl	%si, %ebx
	movw	%si, 14(%esp)
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %esi
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ebx), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	8(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	38(%ebx), %eax
	movl	%ebx, %edx
	movl	$85, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L678
	cmpl	$-1, 32(%eax)
	jne	L679
	testb	$16, 28(%eax)
	jne	L679
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	cmpw	$-1, %si
	jne	L677
	.p2align 4
	.p2align 3
L694:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	28(%esp), %ebp
	.cfi_restore 5
L675:
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L690:
	ret
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z17Terminate3DSoundsv
	.def	__Z17Terminate3DSoundsv;	.scl	2;	.type	32;	.endef
__Z17Terminate3DSoundsv:
LFB88:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	_voc3dstart, %ebx
	testl	%ebx, %ebx
	jne	L698
	jmp	L696
	.p2align 5
	.p2align 4,,10
	.p2align 3
L697:
	movl	$0, 32(%ebx)
	movb	$1, 68(%ebx)
	movl	44(%ebx), %ebx
	testl	%ebx, %ebx
	je	L696
L698:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	jle	L697
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	je	L697
	movl	$2, _FX_ErrorCode
	jmp	L697
	.p2align 4,,10
	.p2align 3
L696:
	call	__Z14Delete3DSoundsv
	movl	$_voc+40, %eax
	movl	$_voc+27584, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L700:
	cmpb	$-57, (%eax)
	jbe	L699
	movb	$-57, (%eax)
L699:
	addl	$44, %eax
	cmpl	%eax, %edx
	jne	L700
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L702:
	cmpb	$-57, _lumplockbyte(%eax)
	jbe	L701
	movb	$-57, _lumplockbyte(%eax)
L701:
	addl	$1, %eax
	cmpl	$11, %eax
	jne	L702
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z15PlaySpriteSoundsii
	.def	__Z15PlaySpriteSoundsii;	.scl	2;	.type	32;	.endef
__Z15PlaySpriteSoundsii:
LFB90:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	cwtl
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	imull	$44, %eax, %ebx
	movl	%ecx, 16(%esp)
	movl	_sprite, %ecx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_User(,%eax,4), %eax
	leal	8(%ecx,%ebx), %ebp
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, %eax
	subl	%ecx, %eax
	mull	%esi
	leal	4(%ebx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	8(%esp), %eax
	movl	12(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	48(%eax), %eax
	leal	(%ebx,%ecx), %edx
	leal	4(%ecx,%ebx), %ecx
	movl	16(%eax,%esi,4), %eax
	movl	16(%esp), %esi
	movl	%ebp, (%esp)
	movl	%esi, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	32(%esp), %ebp
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__Z13SoundShutdownv.part.0
	.def	__Z13SoundShutdownv.part.0;	.scl	2;	.type	32;	.endef
__Z13SoundShutdownv.part.0:
LFB91:
	.cfi_startproc
	movl	_FX_Installed, %edx
	testl	%edx, %edx
	jne	L718
	ret
	.p2align 4,,10
	.p2align 3
L718:
	movl	_MV_Installed, %eax
	testl	%eax, %eax
	je	L717
	call	_MV_Shutdown.part.0
L717:
	movl	$0, _FX_Installed
	ret
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
	.align 4
LC26:
	.ascii "Player Sound invalid player: file %s, line %d\0"
	.align 4
LC27:
	.ascii "pp >= Player && pp < Player+MAX_SW_PLAYERS\0"
	.text
	.p2align 4
	.globl	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0:
LFB97:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 3, -16
	movl	24(%ebp), %ebx
	cmpl	$_Player, %ebx
	jb	L720
	testb	$1, _SW_GameFlags
	je	L734
	cmpl	$_Player+96496, %ebx
	jnb	L722
L723:
	cmpl	$625, %esi
	ja	L735
L726:
	testb	$2, 22968(%ebx)
	jne	L719
	imull	$44, %esi, %eax
	movzbl	_voc+28(%eax), %eax
	subl	$50, %eax
	cmpb	$1, %al
	ja	L719
	cmpb	$0, 24080(%ebx)
	je	L736
L719:
	addl	$32, %esp
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
L734:
	.cfi_restore_state
	cmpl	$_Player+192992, %ebx
	jb	L723
L722:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	$-2, %ecx
	jge	L730
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
L728:
	testb	$1, _SW_GameFlags
	movl	$_Player+192992, %eax
	movl	$_Player+96496, %edx
	cmovne	%edx, %eax
	cmpl	%eax, %ebx
	jb	L723
L724:
	movl	$728, %ecx
	movl	$LC10, %edx
	movl	$LC27, %eax
	call	__Z7_AssertPKcS0_j
	cmpl	$625, %esi
	jbe	L726
L735:
	movl	$729, %ecx
	movl	$LC10, %edx
	movl	$LC11, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L726
	.p2align 4,,10
	.p2align 3
L720:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %ecx
	cmpl	$-2, %ecx
	jge	L730
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$LC26, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L724
	.p2align 4,,10
	.p2align 3
L730:
	movl	%edx, 20(%esp)
	movl	%eax, 16(%esp)
	movl	$LC26, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	24(%esp), %edx
	movl	28(%esp), %eax
	movl	$LC26, 4(%esp)
	movl	$_apptitle, (%esp)
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	cmpl	$_Player, %ebx
	jnb	L728
	jmp	L724
	.p2align 4,,10
	.p2align 3
L736:
	movl	20(%ebp), %eax
	movl	12(%ebp), %ecx
	movb	$1, 24080(%ebx)
	movl	%esi, 24084(%ebx)
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, 24088(%ebx)
	testl	%eax, %eax
	jns	L719
	movl	$-1, %eax
	movb	$0, 24080(%ebx)
	movl	%eax, 24084(%ebx)
	movl	%eax, 24088(%ebx)
	jmp	L719
	.cfi_endproc
LFE97:
	.section .rdata,"dr"
LC28:
	.ascii "source/sw/src/sector.cpp\0"
	.text
	.p2align 4
	.globl	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0;	.scl	2;	.type	32;	.endef
__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0:
LFB100:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L740
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 16(%esp)
	movl	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L740:
	ret
	.cfi_endproc
LFE100:
	.section .rdata,"dr"
LC29:
	.ascii "source/sw/src/weapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0:
LFB102:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L746
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%ecx, %ebx
	movl	%edx, %ecx
	movl	%eax, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	40(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 16(%esp)
	movl	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC29, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L746:
	ret
	.cfi_endproc
LFE102:
	.p2align 4
	.globl	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0;	.scl	2;	.type	32;	.endef
__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0:
LFB104:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L752
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	40(%esp), %ebx
	movl	$13, 12(%esp)
	movl	%ebx, 16(%esp)
	movl	36(%esp), %ebx
	movl	%ebx, 8(%esp)
	movl	32(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	28(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L752:
	ret
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	__Z8StopSongv.part.0
	.def	__Z8StopSongv.part.0;	.scl	2;	.type	32;	.endef
__Z8StopSongv.part.0:
LFB105:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_SongType, %eax
	cmpl	$2, %eax
	je	L764
	cmpl	$1, %eax
	je	L765
L757:
	movl	_SongName, %eax
	movl	_g_sm_heap, %ecx
	movl	$0, _SongType
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	movl	_SongPtr, %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movb	$0, _SongTrack
	movl	%eax, (%esp)
	movl	$0, _SongName
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	$0, _SongPtr
	movl	$0, _SongLength
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L764:
	.cfi_restore_state
	movl	_SongVoice, %eax
	testl	%eax, %eax
	jle	L757
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L766
L758:
	movl	$0, _SongVoice
	jmp	L757
	.p2align 4,,10
	.p2align 3
L765:
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	je	L759
	call	__Z13MIDI_StopSongv.part.0
L759:
	movl	$0, _MUSIC_ErrorCode
	jmp	L757
L766:
	movl	$2, _FX_ErrorCode
	jmp	L758
	.cfi_endproc
LFE105:
	.p2align 4
	.globl	__Z13MusicShutdownv.part.0
	.def	__Z13MusicShutdownv.part.0;	.scl	2;	.type	32;	.endef
__Z13MusicShutdownv.part.0:
LFB109:
	.cfi_startproc
	cmpb	$0, _DemoMode
	jne	L768
	call	__Z8StopSongv.part.0
L768:
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	je	L769
	call	__Z13MIDI_StopSongv.part.0
L769:
	movl	_ASS_MIDISoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	jmp	*__ZL12SoundDrivers.lto_priv.0+44(,%eax,8)
	.cfi_endproc
LFE109:
	.section .rdata,"dr"
LC30:
	.ascii "??\0"
LC31:
	.ascii "Can't find CD track %i!\0"
	.align 4
LC32:
	.ascii "Make sure to have \"??\" as a placeholder for the track number in your WaveformTrackName!\0"
	.align 4
LC33:
	.ascii "  e.g. WaveformTrackName = \"MUSIC/Track??\"\0"
	.text
	.p2align 4
	.globl	__Z8PlaySongPcihh.part.0
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
__Z8PlaySongPcihh.part.0:
LFB113:
	.cfi_startproc
	subl	$340, %esp
	.cfi_def_cfa_offset 344
	movl	%ebx, 324(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 328(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ebp, 336(%esp)
	movb	%cl, 44(%esp)
	cmpb	$0, 344(%esp)
	.cfi_offset 5, -8
	jne	L771
	movl	_SongType, %eax
	cmpl	$2, %eax
	je	L865
	cmpl	$1, %eax
	je	L864
L771:
	call	__Z8StopSongv.part.0
	testb	$1, _SW_GameFlags
	jne	L786
	testl	%esi, %esi
	jns	L851
L786:
	testl	%ebx, %ebx
	je	L793
	movl	%edi, 332(%esp)
	.cfi_offset 7, -12
L794:
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	5(%eax), %ebp
	movl	%eax, %esi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	movl	%eax, %edi
	testl	%eax, %eax
	je	L806
	leal	1(%esi), %eax
	movl	%ebx, 4(%esp)
	addl	%edi, %esi
	movl	$__ZZL15LoadSongUpgradePKcE10extensions, %ebp
	movl	%eax, 8(%esp)
	movl	%edi, (%esp)
	call	_memcpy
	movl	$46, 4(%esp)
	movl	%edi, (%esp)
	call	_strrchr
	testl	%eax, %eax
	cmovne	%eax, %esi
L799:
	movl	0(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_strcpy
	movl	%edi, %eax
	call	__Z8LoadSongPKc
	testb	%al, %al
	jne	L866
	addl	$4, %ebp
	cmpl	$__ZZL15LoadSongUpgradePKcE10extensions+8, %ebp
	jne	L799
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 340
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	call	__Z8LoadSongPKc
	movl	%eax, %ebp
	testb	%al, %al
	je	L856
L798:
	movl	_SongPtr, %esi
	cmpl	$1684558925, (%esi)
	je	L867
	movl	_SongLength, %ebp
	movl	%esi, %eax
	movl	_gs+4, %edi
	movl	%ebp, %edx
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movl	$-65536, 40(%esp)
	movzbl	%al, %edx
	movzbl	44(%esp), %eax
	movl	$65536, 36(%esp)
	movl	$2147483647, 32(%esp)
	subl	$1, %eax
	movl	%edi, 28(%esp)
	movl	%edi, 24(%esp)
	movl	%edi, 20(%esp)
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	*__ZZ7FX_PlayE4func(,%edx,4)
	testl	%eax, %eax
	jle	L868
	movl	%eax, _SongVoice
	movl	$2, _SongType
L860:
	movl	_SongName, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	movl	%ebx, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %edi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	movl	%eax, %esi
	testl	%eax, %eax
	je	L806
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movl	332(%esp), %edi
	.cfi_restore 7
	movl	%esi, _SongName
L807:
	movl	$1, %ebp
L770:
	movl	%ebp, %eax
	movl	324(%esp), %ebx
	movl	328(%esp), %esi
	movl	336(%esp), %ebp
	addl	$340, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L865:
	.cfi_restore_state
	movsbl	_SongTrack, %eax
	testb	%al, %al
	jle	L864
	cmpl	%edx, %eax
	je	L807
L864:
	movl	_SongName, %eax
	testl	%eax, %eax
	je	L771
	testl	%ebx, %ebx
	je	L775
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	je	L807
	movl	%edi, 332(%esp)
	.cfi_offset 7, -12
	call	__Z8StopSongv.part.0
	testb	$1, _SW_GameFlags
	jne	L794
	testl	%esi, %esi
	js	L794
	jmp	L778
	.p2align 4,,10
	.p2align 3
L868:
	movl	$2, _FX_ErrorCode
	movl	332(%esp), %edi
	.cfi_restore 7
	movl	$-2, _SongVoice
	.p2align 4
	.p2align 3
L793:
	xorl	%ebp, %ebp
	jmp	L770
	.p2align 4,,10
	.p2align 3
L856:
	.cfi_offset 7, -12
	movl	332(%esp), %edi
	.cfi_restore 7
	jmp	L770
	.p2align 4,,10
	.p2align 3
L775:
	call	__Z8StopSongv.part.0
	testb	$1, _SW_GameFlags
	jne	L793
	testl	%esi, %esi
	js	L793
	.p2align 4
	.p2align 3
L851:
	movl	%edi, 332(%esp)
	.cfi_offset 7, -12
L778:
	leal	68(%esp), %edi
	movl	$255, 8(%esp)
	movl	$_gs+66, 4(%esp)
	movl	%edi, (%esp)
	call	_strncpy
	movl	$LC30, 4(%esp)
	movl	%edi, (%esp)
	call	_strstr
	movl	%eax, %ebp
	testl	%eax, %eax
	je	L783
	subl	%edi, %eax
	cmpl	$253, %eax
	jg	L783
	movl	%edi, (%esp)
	call	_strlen
	movl	%ebx, 60(%esp)
	movl	%eax, 48(%esp)
	movl	$-858993459, %eax
	mull	%esi
	movl	$-858993459, %eax
	shrl	$3, %edx
	movl	%edx, %ecx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	leal	(%edx,%edx,4), %edx
	addl	%edx, %edx
	subl	%edx, %eax
	leal	(%ecx,%ecx,4), %edx
	addl	$48, %eax
	addl	%edx, %edx
	movb	%al, 0(%ebp)
	movl	%esi, %eax
	subl	%edx, %eax
	addl	$48, %eax
	movb	%al, 1(%ebp)
	xorl	%ebp, %ebp
L791:
	movl	48(%esp), %eax
	movb	$0, 68(%esp,%eax)
	movl	__ZZ8PlaySongPcihhE10tracktypes(,%ebp,4), %eax
	movl	$255, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_strncat
	movl	%edi, %eax
	call	__Z8LoadSongPKc
	movl	%eax, %ebx
	testb	%al, %al
	je	L787
	movl	_gs+4, %ecx
	movl	_SongLength, %eax
	movl	%ecx, 64(%esp)
	movl	_SongPtr, %ecx
	movl	%eax, %edx
	movl	%eax, 52(%esp)
	movl	%ecx, %eax
	movl	%ecx, 56(%esp)
	call	__ZL10FX_ReadFmtPKcj.lto_priv.0
	movl	64(%esp), %ecx
	movl	$-65536, 40(%esp)
	movzbl	%al, %edx
	movzbl	44(%esp), %eax
	movl	$65536, 36(%esp)
	movl	%ecx, 28(%esp)
	movl	%ecx, 24(%esp)
	subl	$1, %eax
	movl	%ecx, 20(%esp)
	movl	52(%esp), %ecx
	movl	$2147483647, 32(%esp)
	movl	%ecx, 4(%esp)
	movl	56(%esp), %ecx
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%ecx, (%esp)
	call	*__ZZ7FX_PlayE4func(,%edx,4)
	testl	%eax, %eax
	jle	L788
	movl	%eax, _SongVoice
	movl	%esi, %eax
	movl	_g_sm_heap, %ecx
	movl	%ebx, %ebp
	movb	%al, _SongTrack
	movl	_SongName, %eax
	movl	$2, _SongType
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %esi
	movl	%eax, 44(%esp)
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L869
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	44(%esp), %eax
	movl	%ebx, _SongName
	movb	$0, (%ebx,%eax)
	movl	332(%esp), %edi
	.cfi_restore 7
	jmp	L770
L788:
	.cfi_restore_state
	movl	$2, _FX_ErrorCode
	movl	$-2, _SongVoice
	.p2align 4
	.p2align 3
L787:
	cmpl	$1, %ebp
	jne	L808
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	60(%esp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L870
L854:
	movl	332(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L786
	.p2align 4,,10
	.p2align 3
L783:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L854
	movl	$LC32, 12(%esp)
	movl	$533, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L854
	movl	$LC33, 12(%esp)
	movl	$534, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	332(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L786
	.p2align 4,,10
	.p2align 3
L806:
	.cfi_restore_state
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L867:
	movl	__ZL11_MIDI_Funcs.lto_priv.0, %eax
	movl	$0, _MUSIC_ErrorCode
	testl	%eax, %eax
	je	L803
	cmpl	$1684558925, (%esi)
	jne	L803
	movl	$1, %edx
	movl	%esi, %eax
	call	__Z13MIDI_PlaySongPci.part.0
	testl	%eax, %eax
	jne	L803
L802:
	movl	$1, _SongType
	jmp	L860
	.p2align 4,,10
	.p2align 3
L808:
	movl	$1, %ebp
	jmp	L791
	.p2align 4,,10
	.p2align 3
L866:
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 340
	subl	$4, %esp
	.cfi_def_cfa_offset 344
	jmp	L798
	.p2align 4,,10
	.p2align 3
L870:
	movl	%esi, 16(%esp)
	movl	$LC31, 12(%esp)
	movl	$529, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	332(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L786
	.p2align 4,,10
	.p2align 3
L803:
	.cfi_restore_state
	movl	$1, _MUSIC_ErrorCode
	jmp	L802
L869:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE113:
	.section .rdata,"dr"
LC34:
	.ascii "Music ok.\0"
LC35:
	.ascii "Error playing MIDI file.\0"
LC36:
	.ascii "Unknown Music error code.\0"
LC37:
	.ascii "Music error: %s\0"
LC38:
	.ascii "swtimbr.tmb\0"
	.text
	.p2align 4
	.globl	__Z12MusicStartupv.part.0
	.def	__Z12MusicStartupv.part.0;	.scl	2;	.type	32;	.endef
__Z12MusicStartupv.part.0:
LFB119:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_MusicDevice, %eax
	call	__Z10MUSIC_Initi
	testl	%eax, %eax
	jne	L872
	movl	%ebx, 20(%esp)
	cmpl	$-2, _MusicDevice
	.cfi_offset 3, -16
	je	L893
L873:
	movl	_gs+4, %eax
	movl	$255, %edx
	movb	$1, _MusicInitialized
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	call	__Z14MIDI_SetVolumei.isra.0
	xorl	%edx, %edx
	movl	$LC38, %eax
	call	_kopen4load.part.0
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	L894
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L894:
	.cfi_restore_state
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	movl	%eax, %edi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %esi
	testl	%eax, %eax
	je	L881
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%edi, %ecx
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$_ADLIB_TimbreBank+3328, %edi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$_ADLIB_TimbreBank, %eax
	movl	%esi, %ecx
	.p2align 4
	.p2align 3
L882:
	movzbl	(%ecx), %edx
	addl	$13, %ecx
	addl	$13, %eax
	movb	%dl, -13(%eax)
	movzbl	-12(%ecx), %edx
	movb	%dl, -12(%eax)
	movzbl	-11(%ecx), %edx
	movb	%dl, -11(%eax)
	movzbl	-10(%ecx), %edx
	movb	%dl, -10(%eax)
	movzbl	-9(%ecx), %edx
	movb	%dl, -9(%eax)
	movzbl	-8(%ecx), %edx
	movb	%dl, -8(%eax)
	movzbl	-7(%ecx), %edx
	movb	%dl, -7(%eax)
	movzbl	-6(%ecx), %edx
	movb	%dl, -6(%eax)
	movzbl	-5(%ecx), %edx
	movb	%dl, -5(%eax)
	movzbl	-4(%ecx), %edx
	movb	%dl, -4(%eax)
	movzbl	-3(%ecx), %edx
	movb	%dl, -3(%eax)
	movzbl	-2(%ecx), %edx
	movb	%dl, -2(%eax)
	movzbl	-1(%ecx), %edx
	movb	%dl, -1(%eax)
	cmpl	%eax, %edi
	jne	L882
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	movl	%ebx, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %edi
	.cfi_restore 7
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	jmp	_kclose
L872:
	.cfi_def_cfa_offset 36
	movl	$-2, %eax
	call	__Z10MUSIC_Initi
	testl	%eax, %eax
	jne	L874
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
L893:
	movl	_ASS_MIDISoundDriver, %eax
	movl	%eax, _MusicDevice
	jmp	L873
L874:
	.cfi_restore 3
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L895
L875:
	movb	$0, _gs+27
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
L881:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	%edi, %eax
	call	__Z13handle_memerri
L895:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	movl	_MUSIC_ErrorCode, %eax
	movl	$-1, %edx
L876:
	cmpl	$-3, %edx
	jbe	L896
	testl	%eax, %eax
	je	L883
	jle	L897
	cmpl	$1, %eax
	movl	$LC35, %edx
	movl	$LC36, %eax
	cmove	%edx, %eax
L877:
	movl	%eax, 16(%esp)
	movl	$LC37, 12(%esp)
	movl	$1288, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L875
L883:
	movl	$LC34, %eax
	jmp	L877
L896:
	movl	$LC36, %eax
	jmp	L877
L897:
	movl	%eax, %edx
	jmp	L876
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	__Z8SetOwnerss
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
__Z8SetOwnerss:
LFB122:
	.cfi_startproc
	movswl	%dx, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	imull	$44, %ecx, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	_sprite, %eax
	addl	%eax, %ecx
	testw	%bx, %bx
	js	L899
	movswl	%bx, %edx
	movl	_User(,%edx,4), %edx
	orl	$1048576, 72(%edx)
L899:
	leal	30(%ecx), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 30(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE122:
	.p2align 4
	.globl	__Z10KillSprites
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
__Z10KillSprites:
LFB123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	imull	$44, %eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	_sprite, %edi
	movl	%eax, 16(%esp)
	addl	%ebp, %edi
	movl	%edi, 8(%esp)
	movl	_User(,%eax,4), %edi
	movl	%edi, 12(%esp)
	call	__Z18DeleteNoSoundOwners
	movl	_voc3dstart, %ebx
	testl	%ebx, %ebx
	je	L902
	addl	_sprite, %ebp
	leal	4(%ebp), %eax
	movl	%eax, 4(%esp)
	jmp	L910
	.p2align 4
	.p2align 4,,10
	.p2align 3
L903:
	movl	44(%ebx), %ebx
	testl	%ebx, %ebx
	je	L902
L910:
	testb	$1, 28(%ebx)
	je	L903
	movl	_sprite, %ecx
	movl	%ebp, %edx
	movl	$-1171354717, %eax
	movl	4(%ebx), %edi
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	%ebp, %edi
	jne	L903
	movl	4(%esp), %edx
	movl	$-1171354717, %eax
	movl	8(%ebx), %edi
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpl	4(%esp), %edi
	jne	L903
	movl	32(%ebx), %eax
	testl	%eax, %eax
	jg	L1030
L904:
	movl	40(%ebx), %edx
	movl	44(%ebx), %eax
	testl	%edx, %edx
	je	L906
	movl	%eax, 44(%edx)
L907:
	movl	44(%ebx), %edx
	movl	40(%ebx), %eax
	testl	%edx, %edx
	je	L908
	movl	%eax, 40(%edx)
	movl	44(%ebx), %edi
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edi, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	testl	%ebx, %ebx
	jne	L910
	.p2align 4
	.p2align 3
L902:
	movl	12(%esp), %edi
	testl	%edi, %edi
	je	L911
	movl	8(%edi), %eax
	testl	%eax, %eax
	je	L912
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, 8(%edi)
L912:
	movl	12(%esp), %ebp
	testb	$4, 71(%ebp)
	je	L1031
	addl	$20, %esp
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
L1034:
	.cfi_restore_state
	movl	8(%esp), %edx
	movl	%ebp, %eax
	call	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	movswl	%bx, %eax
	addl	$336, %eax
	movzwl	8(%ebp,%eax,2), %edx
	movw	%dx, 680(%ebp,%edi,2)
	movl	$-1, %edx
	movw	%dx, 8(%ebp,%eax,2)
L915:
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L919
	.p2align 4
	.p2align 3
L921:
	imull	$24124, %eax, %ecx
	movzwl	_Player+23238(%ecx), %edx
	testw	%dx, %dx
	js	L920
	cmpw	%si, %dx
	jne	L920
	movl	$-1, %edi
	movw	%di, _Player+23238(%ecx)
L920:
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	jne	L921
L919:
	movl	8(%esp), %eax
	cmpw	$2, 26(%eax)
	je	L1032
L922:
	movl	8(%esp), %eax
	testb	$8, 43(%eax)
	je	L923
	movzwl	_headspritestat+8, %eax
	cmpw	$-1, %ax
	je	L925
	.p2align 6
	.p2align 4
	.p2align 3
L924:
	movswl	%ax, %edx
	movzwl	_nextspritestat(%edx,%edx), %eax
	movl	_User(,%edx,4), %edx
	cmpw	186(%edx), %si
	jne	L926
	movl	$-1, %ebx
	movw	%bx, 186(%edx)
L926:
	cmpw	$-1, %ax
	jne	L924
L925:
	movzwl	_headspritestat+14, %eax
	cmpw	$-1, %ax
	je	L923
	.p2align 6
	.p2align 4
	.p2align 3
L927:
	movswl	%ax, %edx
	movzwl	_nextspritestat(%edx,%edx), %eax
	movl	_User(,%edx,4), %edx
	cmpw	186(%edx), %si
	jne	L928
	movl	$-1, %ecx
	movw	%cx, 186(%edx)
L928:
	cmpw	$-1, %ax
	jne	L927
L923:
	movl	12(%esp), %eax
	testb	$16, 74(%eax)
	je	L929
	movl	_sprite, %edi
	movl	$_headspritestat, %ebx
	.p2align 4
	.p2align 3
L933:
	movzwl	(%ebx), %ebp
	cmpw	$-1, %bp
	je	L931
	movl	%ebx, 4(%esp)
	.p2align 4
	.p2align 3
L930:
	movswl	%bp, %ebx
	imull	$44, %ebx, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %ebp
	addl	%edi, %ecx
	cmpw	30(%ecx), %si
	jne	L935
	leal	30(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 30(%ecx)
L935:
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L932
	cmpw	%si, 138(%eax)
	jne	L932
	movl	$-1, %edx
	movw	%dx, 138(%eax)
L932:
	cmpw	$-1, %bp
	jne	L930
	movl	4(%esp), %ebx
L931:
	addl	$2, %ebx
	movl	$_headspritestat+94, %eax
	cmpl	%ebx, %eax
	jne	L933
L929:
	movl	8(%esp), %eax
	cmpw	$2, 26(%eax)
	je	L1033
L936:
	movl	12(%esp), %eax
	movswl	196(%eax), %eax
	testw	%ax, %ax
	js	L940
	movl	%eax, (%esp)
	call	__Z10SetSuicides
L940:
	movl	12(%esp), %edi
	movl	(%edi), %eax
	testl	%eax, %eax
	je	L941
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	L942
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	movl	(%edi), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 40
L942:
	movl	32(%eax), %edx
	testl	%edx, %edx
	je	L943
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	12(%esp), %eax
	movl	(%eax), %eax
L943:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
L941:
	movl	16(%esp), %edi
	movl	_g_sm_heap, %ecx
	movl	_User(,%edi,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	$0, _User(,%edi,4)
L911:
	movl	16(%esp), %eax
	movl	$-1171354717, %ebx
	call	_deletesprite.isra.0
	movl	8(%esp), %ebp
	movl	$-858993460, 0(%ebp)
	leal	26(%ebp), %edx
	movzwl	26(%ebp), %edi
	movl	_sprite, %esi
	movl	$-858993460, 4(%ebp)
	movl	$-858993460, 8(%ebp)
	movzwl	24(%ebp), %ecx
	subl	%esi, %edx
	movl	$-858993460, 24(%ebp)
	movl	%edx, %eax
	movl	$-858993460, 12(%ebp)
	mull	%ebx
	movl	$-858993460, 16(%ebp)
	movl	$-858993460, 20(%ebp)
	movl	$-858993460, 28(%ebp)
	shrl	$5, %edx
	movl	$-858993460, 32(%ebp)
	movl	$-858993460, 36(%ebp)
	movl	$-858993460, 40(%ebp)
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ebp), %edx
	subl	%esi, %edx
	movw	%di, 26(%ebp)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 24(%ebp)
	addl	$20, %esp
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
L1031:
	.cfi_restore_state
	leal	256(%ebp), %eax
	movl	$-1171354717, %edi
	movl	%eax, (%esp)
	call	__Z10AnimDeletePi
	movl	8(%esp), %ecx
	leal	8(%ecx), %ebx
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, (%esp)
	call	__Z10AnimDeletePi
	movl	8(%esp), %ecx
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z17stopinterpolationPi
	movl	8(%esp), %ecx
	addl	$4, %ecx
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, (%esp)
	call	__Z17stopinterpolationPi
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, (%esp)
	call	__Z17stopinterpolationPi
	testb	$64, 69(%ebp)
	je	L915
	movl	$-1, %edi
	movl	$_SectorObject, %ebp
	.p2align 4
	.p2align 3
L914:
	movzwl	680(%ebp), %eax
	xorl	%ebx, %ebx
	cmpw	$-1, %ax
	jne	L917
	jmp	L918
	.p2align 5
	.p2align 4,,10
	.p2align 3
L945:
	movswl	%dx, %ebx
L917:
	leal	1(%ebx), %edx
	cmpw	%ax, %si
	movswl	%dx, %eax
	cmove	%ebx, %edi
	movzwl	680(%ebp,%eax,2), %eax
	cmpw	$-1, %ax
	jne	L945
	testw	%di, %di
	jns	L1034
L918:
	addl	$6028, %ebp
	cmpl	$_SectorObject+120560, %ebp
	jne	L914
	jmp	L915
L1030:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %edi
	movl	-4(%edx,%eax,4), %edx
	testl	%edi, %edi
	je	L904
	testl	%edx, %edx
	je	L904
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	jne	L904
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1035
L905:
	movl	$0, 32(%ebx)
	jmp	L904
L1033:
	movzwl	_headspritestat+4, %ebx
	movl	8(%esp), %esi
	cmpw	$-1, %bx
	jne	L937
	jmp	L936
	.p2align 6
	.p2align 4,,10
	.p2align 3
L939:
	cmpw	$-1, %bx
	je	L936
L937:
	movswl	%bx, %eax
	movswl	%bx, %edx
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	_User(,%eax,4), %eax
	cmpl	%esi, 200(%eax)
	jne	L939
	movl	%edx, (%esp)
	call	__Z22DoActorPickClosePlayers
	jmp	L939
L1032:
	movl	12(%esp), %eax
	movswl	218(%eax), %eax
	cmpw	$-1, %ax
	je	L922
	leal	(%eax,%eax,2), %eax
	leal	_Track(,%eax,4), %edx
	movzwl	8(%edx), %eax
	testw	%ax, %ax
	je	L922
	andl	$-2, %eax
	movw	%ax, 8(%edx)
	jmp	L922
L908:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, _voc3dend
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	jmp	L902
L906:
	movl	%eax, _voc3dstart
	testl	%eax, %eax
	je	L908
	movl	$0, 40(%eax)
	jmp	L907
L1035:
	movl	$2, _FX_ErrorCode
	jmp	L905
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	__Z12DoSlidorMoves
	.def	__Z12DoSlidorMoves;	.scl	2;	.type	32;	.endef
__Z12DoSlidorMoves:
LFB125:
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
	movswl	8(%ebp), %esi
	movl	_User(,%esi,4), %edi
	movl	140(%edi), %eax
	movl	(%edi), %ecx
	movl	%edi, 28(%esp)
	movl	%eax, 32(%esp)
	movl	(%ecx), %ebx
	movl	8(%ecx), %eax
	cmpl	%ebx, %eax
	jle	L1037
	movl	12(%ecx), %edx
	movl	20(%ecx), %edi
	addl	%edi, 12(%ecx)
	addl	%ebx, %edx
	movl	%edx, (%ecx)
	cmpl	%edx, %eax
	jge	L1038
L1078:
	movl	%eax, (%ecx)
L1039:
	movl	4(%ecx), %edx
	cmpl	%eax, %edx
	je	L1081
	testl	%eax, %eax
	je	L1046
L1079:
	movl	32(%esp), %eax
	movzwl	42(%eax), %edx
L1045:
	movl	(%ecx), %eax
	movl	%esi, (%esp)
	subl	%ebx, %eax
	andl	$128, %edx
	movl	%eax, 4(%esp)
	je	L1080
	call	__Z17DoSlidorMoveWallssi
	movl	_User(,%esi,4), %ebx
	movl	140(%ebx), %edi
	movl	%esi, (%esp)
	movl	$__Z17stopinterpolationPi, 4(%esp)
	call	__Z14DoSlidorInterpsPFvPiE
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%edi), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	andl	$-9, 68(%ebx)
	movl	%esi, %eax
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
	.p2align 4,,10
	.p2align 3
L1037:
	.cfi_restore_state
	jge	L1060
	movl	%ebx, %edx
	subl	12(%ecx), %edx
	movl	20(%ecx), %edi
	movl	%edx, (%ecx)
	addl	%edi, 12(%ecx)
	cmpl	%edx, %eax
	jg	L1078
L1038:
	cmpl	%edx, %eax
	je	L1039
	movl	32(%esp), %edi
	testb	$1, 43(%edi)
	jne	L1049
L1055:
	subl	%ebx, %edx
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
L1080:
	call	__Z17DoSlidorMoveWallssi
L1048:
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
L1049:
	.cfi_restore_state
	testl	%eax, %eax
	jne	L1055
	movl	32(%esp), %eax
	movswl	24(%eax), %eax
	movl	%eax, 24(%esp)
	movswl	_headspritesect(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L1051
	movl	%edx, 20(%esp)
	movl	_sprite, %edi
	jmp	L1052
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1053:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L1076
L1052:
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L1053
	imull	$44, %eax, %edx
	addl	%edi, %edx
	testb	$1, 12(%edx)
	je	L1053
	testb	$8, 43(%edx)
	je	L1053
	movl	%esi, (%esp)
	movl	%ecx, 28(%esp)
	call	__Z13ReverseSlidors
	movl	32(%esp), %ecx
	movl	$-1171354717, %eax
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8192, 42(%ecx)
	movl	28(%esp), %ecx
	movl	(%ecx), %eax
	movl	%esi, (%esp)
	subl	%ebx, %eax
	movl	%eax, 4(%esp)
	call	__Z17DoSlidorMoveWallssi
	jmp	L1048
	.p2align 4,,10
	.p2align 3
L1046:
	movl	%edx, 28(%esp)
	movl	20(%ecx), %edx
	movss	16(%ecx), %xmm1
	movss	28(%esp), %xmm0
	movl	%ecx, 24(%esp)
	movl	%edx, %eax
	negl	%eax
	unpcklps	%xmm1, %xmm0
	cmovs	%edx, %eax
	movlps	%xmm0, 8(%ecx)
	movl	%eax, 20(%ecx)
	movl	_User(,%esi,4), %edi
	movl	140(%edi), %eax
	movl	$__Z17stopinterpolationPi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 28(%esp)
	call	__Z14DoSlidorInterpsPFvPiE
	movl	28(%esp), %eax
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%eax), %eax
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movl	32(%esp), %ecx
	movl	$-1171354717, %eax
	andl	$-9, 68(%edi)
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ecx), %eax
	movl	%eax, %edx
	movw	%ax, 32(%esp)
	andb	$-33, %dh
	movw	%dx, 42(%ecx)
	movl	24(%esp), %ecx
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L1081:
	negl	20(%ecx)
	movl	$0, 8(%ecx)
	movl	_User(,%esi,4), %eax
	movl	%ecx, 16(%esp)
	movl	140(%eax), %edx
	movl	$__Z17stopinterpolationPi, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	call	__Z14DoSlidorInterpsPFvPiE
	movl	24(%esp), %edx
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movswl	38(%edx), %edx
	movl	%edx, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movl	20(%esp), %eax
	movl	32(%esp), %edi
	movl	16(%esp), %ecx
	andl	$-9, 68(%eax)
	movswl	34(%edi), %eax
	testw	%ax, %ax
	je	L1043
	testb	$32, 43(%edi)
	jne	L1043
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	movl	%ecx, 24(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	24(%esp), %ecx
	.p2align 4
	.p2align 3
L1043:
	movl	28(%esp), %eax
	movswl	216(%eax), %eax
	testw	%ax, %ax
	je	L1079
	movl	28(%esp), %edi
	movl	%eax, 76(%edi)
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1076:
	movl	20(%esp), %edx
L1051:
	movzwl	_connecthead, %eax
	cmpw	$-1, %ax
	je	L1055
	movl	28(%esp), %edi
	movl	24(%esp), %edx
	movl	%ebx, 16(%esp)
	movswl	%ax, %ebx
	movl	%ecx, 20(%esp)
	movl	%esi, 28(%esp)
	jmp	L1059
	.p2align 4,,10
	.p2align 3
L1057:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L1082
	movl	32(%esp), %eax
	movswl	24(%eax), %edx
L1059:
	imull	$24124, %ebx, %eax
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %edx
	cmpl	%edx, _Player+152(%eax)
	je	L1056
	cmpl	_Player+148(%eax), %edx
	jne	L1057
L1056:
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13ReverseSlidors
	negw	172(%edi)
	jmp	L1057
	.p2align 4,,10
	.p2align 3
L1082:
	movl	20(%esp), %ecx
	movl	16(%esp), %ebx
	movl	28(%esp), %esi
	movl	(%ecx), %edx
	jmp	L1055
L1060:
	movl	%ebx, %eax
	jmp	L1039
	.cfi_endproc
LFE125:
	.p2align 4
	.globl	__Z8DoSlidors
	.def	__Z8DoSlidors;	.scl	2;	.type	32;	.endef
__Z8DoSlidors:
LFB126:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z12DoSlidorMoves
	.cfi_endproc
LFE126:
	.p2align 4
	.globl	__Z7DoSpikes
	.def	__Z7DoSpikes;	.scl	2;	.type	32;	.endef
__Z7DoSpikes:
LFB127:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movswl	32(%esp), %esi
	movl	%ebx, 12(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	leal	112(%ebx), %eax
	movl	140(%ebx), %edi
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z11DoSpikeMovesPi
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	call	__Z20MoveSpritesWithSpikes
	movl	%esi, (%esp)
	call	__Z10SpikeAligns
	movl	164(%ebx), %eax
	cmpl	%eax, 112(%ebx)
	je	L1124
	testb	$1, 43(%edi)
	je	L1093
	cmpl	64(%ebx), %eax
	je	L1125
L1093:
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
L1124:
	.cfi_restore_state
	movl	256(%ebx), %edx
	cmpl	8(%edi), %eax
	je	L1126
	cmpl	%edx, %eax
	je	L1089
L1123:
	movzwl	42(%edi), %eax
L1088:
	testb	$-128, %al
	jne	L1127
	movl	64(%ebx), %eax
	cmpl	%eax, 112(%ebx)
	je	L1093
	movswl	216(%ebx), %eax
	testw	%ax, %ax
	je	L1093
	movl	%eax, 76(%ebx)
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1125:
	movswl	24(%edi), %ecx
	movswl	_headspritesect(%ecx,%ecx), %eax
	cmpl	$-1, %eax
	je	L1094
	movl	_sprite, %ebx
	jmp	L1095
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1096:
	movswl	_nextspritesect(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L1094
L1095:
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L1096
	imull	$44, %eax, %edx
	addl	%ebx, %edx
	testb	$1, 12(%edx)
	je	L1096
	testb	$8, 43(%edx)
	je	L1096
	movl	%esi, (%esp)
	call	__Z12ReverseSpikes
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1127:
	movl	%esi, (%esp)
	call	__Z16SetSpikeInactives
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1126:
	negw	172(%ebx)
	movl	%edx, 164(%ebx)
	movl	%esi, (%esp)
	call	__Z16SetSpikeInactives
	movswl	34(%edi), %eax
	testw	%ax, %ax
	je	L1123
	movl	%eax, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movzwl	42(%edi), %eax
	jmp	L1088
	.p2align 4,,10
	.p2align 3
L1094:
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L1100
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1099:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L1093
	movswl	24(%edi), %ecx
L1100:
	imull	$24124, %ebx, %eax
	movl	_sector, %edx
	leal	(%ecx,%ecx,4), %ecx
	leal	(%edx,%ecx,8), %edx
	cmpl	%edx, _Player+152(%eax)
	je	L1098
	cmpl	_Player+148(%eax), %edx
	jne	L1099
L1098:
	movl	%esi, (%esp)
	call	__Z12ReverseSpikes
	jmp	L1099
	.p2align 4,,10
	.p2align 3
L1089:
	movzwl	172(%ebx), %edx
	movl	168(%ebx), %eax
	movw	%ax, 92(%ebx)
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	movw	%ax, 172(%ebx)
	movl	8(%edi), %eax
	movl	%eax, 164(%ebx)
	movl	%esi, (%esp)
	call	__Z16SetSpikeInactives
	movswl	34(%edi), %edx
	movzwl	42(%edi), %eax
	testw	%dx, %dx
	je	L1088
	testb	$4, %ah
	je	L1088
	movl	$-1, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1123
	.cfi_endproc
LFE127:
	.p2align 4
	.globl	__Z18change_sprite_statss
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
__Z18change_sprite_statss:
LFB128:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	cwtl
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	_User(,%eax,4), %esi
	cmpw	$1024, %dx
	ja	L1149
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movzwl	26(%edx), %edx
	cmpw	%dx, %bx
	je	L1131
	cmpw	$1024, %dx
	je	L1131
	movl	%eax, (%esp)
	call	_do_deletespritestat
	movl	(%esp), %eax
	movswl	%bx, %edx
	call	_do_insertsprite_at_headofstat
L1131:
	testl	%esi, %esi
	je	L1148
	movl	68(%esi), %eax
	leal	-6(%ebx), %edx
	andl	$-402653185, %eax
	cmpw	$4, %dx
	ja	L1132
	orl	$268435456, %eax
	movl	%eax, 68(%esi)
	cmpw	$9, %bx
	jne	L1148
L1133:
	movzwl	_wait_active_check_offset, %eax
	addl	$18, %eax
	movl	%eax, %edx
	cmpw	$360, %ax
	jg	L1150
L1135:
	orl	$-2147483648, 68(%esi)
	movw	%ax, 242(%esi)
	movl	4(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movw	%dx, _wait_active_check_offset
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1132:
	.cfi_restore_state
	leal	-2(%ebx), %edx
	cmpw	$3, %dx
	ja	L1151
	orl	$134217728, %eax
	movl	%eax, 68(%esi)
	cmpw	$2, %bx
	je	L1133
L1148:
	movl	4(%esp), %ebx
	.cfi_restore 3
L1128:
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1150:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1135
	.p2align 4,,10
	.p2align 3
L1149:
	.cfi_restore 3
	testl	%esi, %esi
	je	L1128
	andl	$-402653185, 68(%esi)
	jmp	L1128
L1151:
	.cfi_offset 3, -12
	movl	%eax, 68(%esi)
	movl	4(%esp), %ebx
	.cfi_restore 3
	jmp	L1128
	.cfi_endproc
LFE128:
	.p2align 4
	.globl	__Z17DoSkullBeginDeaths
	.def	__Z17DoSkullBeginDeaths;	.scl	2;	.type	32;	.endef
__Z17DoSkullBeginDeaths:
LFB133:
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
	movl	_sprite, %ecx
	movswl	44(%esp), %ebp
	imull	$44, %ebp, %ebx
	movl	_User(,%ebp,4), %eax
	movl	%eax, 4(%esp)
	addl	%ecx, %ebx
	movswl	30(%ebx), %eax
	testw	%ax, %ax
	js	L1153
	movl	_User(,%eax,4), %eax
	subw	$1, 176(%eax)
L1153:
	movzwl	40(%ebx), %eax
	cmpw	$3, %ax
	je	L1154
	jg	L1155
	cmpw	$1, %ax
	je	L1156
	cmpw	$2, %ax
	jne	L1158
	movzwl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1185
	movl	$5, %edx
	movw	%dx, 8(%esp)
L1164:
	leal	28(%ebx), %eax
	xorl	%esi, %esi
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L1166:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1165
	movl	$-2147450879, %edi
	sall	$14, %eax
	mull	%edi
	shrl	$18, %edx
	movl	%edx, %edi
L1165:
	movl	12(%esp), %edx
	movl	$-1171354717, %eax
	addl	$1, %esi
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebx)
	call	__Z12InitCaltropss.isra.0
	movl	_sprite, %ecx
	cmpw	%si, 8(%esp)
	jne	L1166
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1155:
	cmpw	$4, %ax
	jne	L1158
	movzwl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1186
	movl	$5, %eax
	movl	$409, 20(%esp)
	movw	%ax, 12(%esp)
L1168:
	leal	28(%ebx), %eax
	movl	%ebp, 8(%esp)
	movl	%ecx, %edx
	movl	%ebx, %ebp
	movl	%eax, 16(%esp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1170:
	movl	16(%esp), %eax
	movl	$-1171354717, %ecx
	movswl	28(%ebp), %esi
	addl	$1, %edi
	subl	%edx, %eax
	addl	%ebx, %esi
	mull	%ecx
	movl	8(%esp), %eax
	andl	$2047, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebp)
	movl	%eax, (%esp)
	call	__Z17InitSpriteGrenades
	movl	_sprite, %edx
	addl	20(%esp), %ebx
	cmpw	12(%esp), %di
	jne	L1170
	movl	%ebp, %ebx
	movl	%edx, %ecx
	movl	8(%esp), %ebp
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1154:
	cmpw	$1, _gNet+12
	je	L1167
	movl	%ebp, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L1167:
	movl	%ebp, (%esp)
	call	__Z13InitFlashBombs
	movl	_sprite, %ecx
L1163:
	leal	12(%ebx), %edx
	movl	$-1171354717, %esi
	movl	4(%esp), %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$3, %edx
	andw	$-258, 12(%ebx)
	movl	$0, 76(%edi)
	movl	$53739520, 80(%edi)
	movl	_DamageData+744, %eax
	movl	$16384, 192(%edi)
	movl	%eax, 188(%edi)
	movl	%ebp, %eax
	call	__Z18change_sprite_statss
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	movl	%ebp, (%esp)
	call	__Z14SpawnLittleExps
	movl	%ebp, 44(%esp)
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
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L1158:
	.cfi_restore_state
	movl	%ebp, (%esp)
	leal	28(%ebx), %edi
	movl	$3, %esi
	call	__Z12SpawnMineExps
L1172:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1171
	movl	$-2147450879, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$18, %edx
	movl	%edx, %ecx
L1171:
	movl	%edi, %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	call	__Z14InitPhosphoruss.isra.0
	subw	$1, %si
	jne	L1172
	movl	_sprite, %ecx
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1156:
	movswl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1187
	movl	$2, %eax
L1160:
	leal	28(%ebx), %esi
	sall	$10, %eax
	xorl	%edi, %edi
	movl	%ecx, %edx
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
L1162:
	movl	8(%esp), %eax
	movl	$-1171354717, %ecx
	movswl	28(%ebx), %esi
	subl	%edx, %eax
	addl	%edi, %esi
	addl	$1024, %edi
	mull	%ecx
	andl	$2047, %esi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebx)
	call	__Z18InitSpriteChemBombs.isra.0
	movl	_sprite, %edx
	cmpl	12(%esp), %edi
	jne	L1162
	movl	%edx, %ecx
	jmp	L1163
	.p2align 4,,10
	.p2align 3
L1186:
	jle	L1163
	movl	$10, %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movl	$2048, %eax
	movswl	%dx, %esi
	movw	%dx, 12(%esp)
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 20(%esp)
	jmp	L1168
	.p2align 4,,10
	.p2align 3
L1185:
	jle	L1163
	movl	$10, %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movw	%dx, 8(%esp)
	jmp	L1164
	.p2align 4,,10
	.p2align 3
L1187:
	jle	L1163
	movl	$3, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	jmp	L1160
	.cfi_endproc
LFE133:
	.p2align 4
	.globl	__Z11DoSkullJumps
	.def	__Z11DoSkullJumps;	.scl	2;	.type	32;	.endef
__Z11DoSkullJumps:
LFB135:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %eax
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movswl	24(%esp), %esi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	imull	$44, %esi, %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %edi
	addl	%eax, %ebx
	cmpw	$0, 32(%ebx)
	jne	L1206
	leal	28(%ebx), %edx
	movl	%ebp, 16(%esp)
	movswl	28(%ebx), %ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	addl	$384, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	.cfi_offset 5, -8
	movl	16(%esp), %ebp
	.cfi_restore 5
L1190:
	movl	68(%edi), %eax
	testb	$32, %al
	jne	L1207
	testb	$64, %al
	jne	L1208
L1205:
	cmpw	$1, _gNet+12
	je	L1195
L1197:
	movl	%esi, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L1195:
	movl	4(%esp), %ebx
	movl	12(%esp), %edi
	movl	%esi, 24(%esp)
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z17DoSkullBeginDeaths
	.p2align 4,,10
	.p2align 3
L1208:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z6DoFalls
	cmpw	$0, 32(%ebx)
	je	L1193
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	200(%edi), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovs	%ecx, %ebp
	cmpl	%ebp, %eax
	leal	(%eax,%ebp), %ecx
	cmovg	%ebp, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	$999, %ecx
	jle	L1209
L1194:
	movl	108(%edi), %ecx
	leal	-9215(%ecx), %eax
	cmpl	8(%ebx), %eax
	jle	L1210
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L1196
	.p2align 4,,10
	.p2align 3
L1207:
	movl	4(%esp), %ebx
	movl	12(%esp), %edi
	movl	%esi, 24(%esp)
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L1206:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z11DoSkullMoves
	jmp	L1190
	.p2align 4,,10
	.p2align 3
L1193:
	cmpw	$200, 92(%edi)
	jg	L1205
L1196:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	xorl	%eax, %eax
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1209:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	_sprite, %edx
	movl	$8192, %ecx
	movl	%esi, %eax
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movswl	%dx, %edx
	call	__Z14SpriteOverlapZssi
	testb	%al, %al
	je	L1194
	movl	16(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1205
	.p2align 4,,10
	.p2align 3
L1210:
	.cfi_restore_state
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	subl	$9216, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	16(%esp), %ebp
	.cfi_restore 5
	cmpw	$1, _gNet+12
	jne	L1197
	jmp	L1195
	.cfi_endproc
LFE135:
	.p2align 4
	.globl	__Z17DoBettyBeginDeaths
	.def	__Z17DoBettyBeginDeaths;	.scl	2;	.type	32;	.endef
__Z17DoBettyBeginDeaths:
LFB136:
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
	movl	_sprite, %ecx
	movswl	44(%esp), %ebp
	imull	$44, %ebp, %ebx
	movl	_User(,%ebp,4), %eax
	movl	%eax, 4(%esp)
	addl	%ecx, %ebx
	movzwl	40(%ebx), %eax
	cmpw	$3, %ax
	je	L1212
	jg	L1213
	cmpw	$1, %ax
	je	L1214
	cmpw	$2, %ax
	jne	L1216
	movzwl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1242
	movl	$5, %edx
	movw	%dx, 8(%esp)
L1222:
	leal	28(%ebx), %eax
	xorl	%esi, %esi
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L1224:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1223
	movl	$-2147450879, %edi
	sall	$14, %eax
	mull	%edi
	shrl	$18, %edx
	movl	%edx, %edi
L1223:
	movl	12(%esp), %edx
	movl	$-1171354717, %eax
	addl	$1, %esi
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebx)
	call	__Z12InitCaltropss.isra.0
	movl	_sprite, %ecx
	cmpw	8(%esp), %si
	jne	L1224
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1213:
	cmpw	$4, %ax
	jne	L1216
	movzwl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1243
	movl	$5, %eax
	movl	$409, 20(%esp)
	movw	%ax, 12(%esp)
L1225:
	leal	28(%ebx), %eax
	movl	%ebp, 8(%esp)
	movl	%ecx, %edx
	movl	%ebx, %ebp
	movl	%eax, 16(%esp)
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L1227:
	movl	16(%esp), %eax
	movl	$-1171354717, %ecx
	movswl	28(%ebp), %esi
	addl	$1, %edi
	subl	%edx, %eax
	addl	%ebx, %esi
	mull	%ecx
	movl	8(%esp), %eax
	andl	$2047, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebp)
	movl	%eax, (%esp)
	call	__Z17InitSpriteGrenades
	movl	_sprite, %edx
	addl	20(%esp), %ebx
	cmpw	12(%esp), %di
	jne	L1227
	movl	%ebp, %ebx
	movl	%edx, %ecx
	movl	8(%esp), %ebp
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1212:
	movl	%ebp, (%esp)
	call	__Z13InitFlashBombs
	movl	_sprite, %ecx
L1221:
	leal	12(%ebx), %edx
	movl	$-1171354717, %esi
	movl	4(%esp), %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$3, %edx
	andw	$-258, 12(%ebx)
	movl	$0, 76(%edi)
	movl	$53542912, 80(%edi)
	movl	_DamageData+744, %eax
	movl	$16384, 192(%edi)
	movl	%eax, 188(%edi)
	movl	%ebp, %eax
	call	__Z18change_sprite_statss
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	movl	%ebp, (%esp)
	call	__Z14SpawnLittleExps
	movl	%ebp, 44(%esp)
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
	jmp	__Z10SetSuicides
	.p2align 4,,10
	.p2align 3
L1216:
	.cfi_restore_state
	leal	28(%ebx), %eax
	movl	$5, %esi
	movl	%eax, 8(%esp)
L1229:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1228
	movl	$-2147450879, %edi
	sall	$14, %eax
	mull	%edi
	shrl	$18, %edx
	movl	%edx, %edi
L1228:
	movl	8(%esp), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebx)
	call	__Z14InitPhosphoruss.isra.0
	movl	%ebp, (%esp)
	call	__Z12SpawnMineExps
	movl	_sprite, %ecx
	subw	$1, %si
	jne	L1229
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1214:
	movswl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1244
	movl	$2, %eax
L1218:
	leal	28(%ebx), %esi
	sall	$10, %eax
	xorl	%edi, %edi
	movl	%ecx, %edx
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
L1220:
	movl	8(%esp), %eax
	movl	$-1171354717, %ecx
	movswl	28(%ebx), %esi
	subl	%edx, %eax
	addl	%edi, %esi
	addl	$1024, %edi
	mull	%ecx
	andl	$2047, %esi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebx)
	call	__Z18InitSpriteChemBombs.isra.0
	movl	_sprite, %edx
	cmpl	12(%esp), %edi
	jne	L1220
	movl	%edx, %ecx
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1244:
	jle	L1221
	movl	$3, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	jmp	L1218
	.p2align 4,,10
	.p2align 3
L1243:
	jle	L1221
	movl	$10, %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movl	$2048, %eax
	movswl	%dx, %esi
	movw	%dx, 12(%esp)
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 20(%esp)
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1242:
	jle	L1221
	movl	$10, %edx
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movw	%dx, 8(%esp)
	jmp	L1222
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	__Z11DoBettyJumps
	.def	__Z11DoBettyJumps;	.scl	2;	.type	32;	.endef
__Z11DoBettyJumps:
LFB137:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %eax
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movswl	24(%esp), %esi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	imull	$44, %esi, %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %edi
	addl	%eax, %ebx
	cmpw	$0, 32(%ebx)
	jne	L1263
	leal	28(%ebx), %edx
	movl	%ebp, 16(%esp)
	movswl	28(%ebx), %ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	addl	$384, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	.cfi_offset 5, -8
	movl	16(%esp), %ebp
	.cfi_restore 5
L1247:
	movl	68(%edi), %eax
	testb	$32, %al
	jne	L1264
	testb	$64, %al
	jne	L1265
L1262:
	cmpw	$1, _gNet+12
	je	L1252
L1254:
	movl	%esi, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L1252:
	movl	4(%esp), %ebx
	movl	12(%esp), %edi
	movl	%esi, 24(%esp)
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z17DoBettyBeginDeaths
	.p2align 4,,10
	.p2align 3
L1265:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z6DoFalls
	cmpw	$0, 32(%ebx)
	je	L1250
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	200(%edi), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovs	%ecx, %ebp
	cmpl	%ebp, %eax
	leal	(%eax,%ebp), %ecx
	cmovg	%ebp, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	$999, %ecx
	jle	L1266
L1251:
	movl	108(%edi), %ecx
	leal	-9215(%ecx), %eax
	cmpl	8(%ebx), %eax
	jle	L1267
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L1253
	.p2align 4,,10
	.p2align 3
L1264:
	movl	4(%esp), %ebx
	movl	12(%esp), %edi
	movl	%esi, 24(%esp)
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L1263:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z11DoSkullMoves
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1250:
	cmpw	$200, 92(%edi)
	jg	L1262
L1253:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	xorl	%eax, %eax
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1266:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	_sprite, %edx
	movl	$8192, %ecx
	movl	%esi, %eax
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movswl	%dx, %edx
	call	__Z14SpriteOverlapZssi
	testb	%al, %al
	je	L1251
	movl	16(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1262
	.p2align 4,,10
	.p2align 3
L1267:
	.cfi_restore_state
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	subl	$9216, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	16(%esp), %ebp
	.cfi_restore 5
	cmpw	$1, _gNet+12
	jne	L1254
	jmp	L1252
	.cfi_endproc
LFE137:
	.section .rdata,"dr"
LC39:
	.ascii "serpent\0"
LC40:
	.ascii "sumo\0"
LC41:
	.ascii "zilla\0"
	.align 4
LC42:
	.ascii "skill-masked %s at %d,%d,%d not being killed because it activates something\0"
LC43:
	.ascii "source/sw/src/sprite.cpp\0"
	.text
	.p2align 4
	.def	__Z14ActorTestSpawnP12spritetypev7;	.scl	3;	.type	32;	.endef
__Z14ActorTestSpawnP12spritetypev7:
LFB138:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %ecx
	cmpw	$0, 26(%eax)
	jne	L1269
	cmpw	$203, 38(%eax)
	je	L1296
L1269:
	movzbl	_DebugActor, %eax
	testb	%al, %al
	jne	L1271
	movl	%ebx, 36(%esp)
	movzwl	42(%ecx), %edx
	.cfi_offset 3, -12
	movl	%edx, %ebx
	andl	$7, %ebx
	cmpw	%bx, _Skill
	jge	L1272
	movzwl	14(%ecx), %ebx
	cmpw	$1300, %bx
	je	L1273
	cmpw	$1210, %bx
	je	L1297
	movl	$LC41, %edx
	cmpw	$5426, %bx
	jne	L1295
L1276:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	$-1, %eax
	jl	L1272
	movl	8(%ecx), %eax
	movl	%eax, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC42, 12(%esp)
	movl	$1045, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1272:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	$1, %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1296:
	.cfi_def_cfa_offset 48
	movl	%ebx, 36(%esp)
	xorl	%edx, %edx
	movl	%esi, 40(%esp)
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movswl	24(%eax), %eax
	movl	%ecx, 32(%esp)
	call	__Z17COVERinsertspritess
	movl	32(%esp), %ecx
	movl	_sprite, %edx
	imull	$44, %eax, %ebx
	cwtl
	movl	(%ecx), %esi
	addl	%ebx, %edx
	movl	%esi, (%edx)
	movl	4(%ecx), %esi
	movl	%esi, 4(%edx)
	movl	8(%ecx), %esi
	movl	%esi, 8(%edx)
	movl	12(%ecx), %esi
	movl	%esi, 12(%edx)
	movl	16(%ecx), %esi
	movl	%esi, 16(%edx)
	movl	20(%ecx), %esi
	movl	%esi, 20(%edx)
	movl	24(%ecx), %esi
	movl	%esi, 24(%edx)
	movl	28(%ecx), %esi
	movl	%esi, 28(%edx)
	movl	32(%ecx), %esi
	movl	%esi, 32(%edx)
	movl	36(%ecx), %esi
	movl	%esi, 36(%edx)
	movl	40(%ecx), %ecx
	movl	%ecx, 40(%edx)
	movl	$56, %edx
	call	__Z18change_sprite_statss
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	movl	_sprite, %ecx
	mull	%edx
	addl	%ebx, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
L1271:
	xorl	%eax, %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1297:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -12
	movzwl	38(%ecx), %ebx
	testw	%bx, %bx
	jle	L1295
	testw	%dx, %dx
	jle	L1295
	cmpw	$203, %bx
	je	L1295
	movl	$LC40, %edx
	jmp	L1276
	.p2align 4,,10
	.p2align 3
L1273:
	movzwl	38(%ecx), %ebx
	testw	%bx, %bx
	jle	L1295
	testw	%dx, %dx
	jg	L1298
L1295:
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1298:
	.cfi_restore_state
	cmpw	$203, %bx
	je	L1295
	movl	$LC39, %edx
	jmp	L1276
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	__Z9SpawnUserssP11STATEstruct
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
__Z9SpawnUserssP11STATEstruct:
LFB139:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%ecx, -20(%ebp)
	movl	_sprite, %esi
	movw	%dx, -16(%ebp)
	movl	$292, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1304
	movswl	%di, %ecx
	movw	%di, -14(%ebp)
	movl	%eax, %ebx
	movl	%ecx, -24(%ebp)
	imull	$44, %ecx, %edi
	movl	$292, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	addl	%edi, %esi
	call	_memset
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	%ebx, _User(,%ecx,4)
	movl	%ecx, %eax
	movl	%edx, 24(%ebx)
	movl	%edx, 16(%ebx)
	movswl	26(%esi), %edx
	call	__Z18change_sprite_statss
	movzwl	-16(%ebp), %ecx
	movl	$100, %eax
	movl	$-1, %edx
	movw	%ax, 84(%ebx)
	movl	$-1, %eax
	addl	_sprite, %edi
	movw	%cx, 82(%ebx)
	movl	$-1, %ecx
	movw	%dx, 186(%ebx)
	movw	%cx, 138(%ebx)
	movw	%ax, 218(%ebx)
	movl	_Player+352, %eax
	movl	%edi, 140(%ebx)
	movl	%eax, 200(%ebx)
	movl	$-1, %eax
	movw	%ax, 148(%ebx)
	movl	$-1, %eax
	movw	%ax, 196(%ebx)
	movzwl	-14(%ebp), %eax
	movl	$0, (%ebx)
	movw	%ax, 136(%ebx)
	xorl	%eax, %eax
	movw	%ax, 216(%ebx)
	xorl	%eax, %eax
	movl	$220, 188(%ebx)
	movl	$1024, 192(%ebx)
	movl	$0, 8(%ebx)
	movw	%ax, 274(%ebx)
	movl	$256, 238(%ebx)
	movl	(%esi), %eax
	movl	%eax, 56(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 60(%ebx)
	movl	8(%esi), %eax
	movl	$20000, 132(%ebx)
	movl	%eax, 64(%ebx)
	movl	_sector, %eax
	movl	$335546368, 96(%ebx)
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %edx
	movl	8(%eax,%edx,8), %edx
	movl	%edx, 108(%ebx)
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %edx
	movl	4(%eax,%edx,8), %edx
	movl	$0, 124(%ebx)
	movl	$0, 128(%ebx)
	movl	%edx, 104(%ebx)
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %edx
	movl	%edx, 120(%ebx)
	movswl	24(%esi), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, 116(%ebx)
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
	ret
	.p2align 4,,10
	.p2align 3
L1304:
	.cfi_restore_state
	movl	$1, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE139:
	.p2align 4
	.globl	__Z10SetupBettys
	.def	__Z10SetupBettys;	.scl	2;	.type	32;	.endef
__Z10SetupBettys:
LFB140:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movswl	44(%esp), %edi
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movl	%esi, 28(%esp)
	testb	$16, 13(%ebx)
	.cfi_offset 6, -16
	je	L1306
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L1307:
	testl	%eax, %eax
	je	L1308
	movl	$0, 76(%eax)
	movl	$_s_BettyWait, 24(%eax)
	movl	$_s_BettyWait, 16(%eax)
	movswl	_s_BettyWait, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1308
	andl	$63, %eax
	movb	%al, 3(%edx)
L1308:
	movl	$_BettyAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$817, %eax
	movl	$_s_BettyExplode, 28(%esi)
	movw	%ax, 82(%esi)
	movl	$_sg_BettyWait, 20(%esi)
	movl	%edi, (%esp)
	movl	$-1171354717, %edi
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %ecx
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$48, 18(%ebx)
	movl	%edx, %eax
	orl	$16777216, 68(%esi)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	108(%esi), %edi
	movl	$400, 188(%esi)
	movl	8(%ebx), %edx
	leal	-4095(%edi), %eax
	movl	%eax, 12(%esp)
	testb	$-128, 12(%ebx)
	je	L1309
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %ebp
	movl	%eax, 16(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	cmpb	$64, %al
	je	L1326
	movl	20(%esp), %ebp
	movzbl	%al, %eax
	imull	%ebp, %eax
	addl	%eax, %eax
L1311:
	movl	16(%esp), %ebp
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	sall	$8, %ebp
	subl	%ebp, %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	addl	%eax, %edx
L1309:
	cmpl	%edx, 12(%esp)
	jg	L1312
	movswl	14(%ebx), %eax
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	addl	%eax, %edi
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, 8(%ebx)
	movl	%edi, 108(%esi)
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%ecx,4), %esi
	cmpb	$64, %al
	je	L1327
	imull	%esi, %eax
	leal	(%eax,%eax), %esi
L1314:
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	addl	$1, _spritechanged(,%edx,4)
	sall	$8, %eax
	leal	-768(%esi,%eax), %eax
	addl	%eax, 8(%ebx)
L1315:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	xorl	%eax, %eax
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1327:
	.cfi_restore_state
	sall	$7, %esi
	jmp	L1314
	.p2align 4,,10
	.p2align 3
L1312:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andw	$2047, %ax
	movw	%ax, 176(%esi)
	movl	8(%ebx), %eax
	movl	%edx, _randomseed
	movl	%eax, 256(%esi)
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1306:
	movl	$817, %edx
	movl	$_s_BettyWait, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$4, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	movl	_User(,%edi,4), %eax
	jmp	L1307
	.p2align 4,,10
	.p2align 3
L1326:
	.cfi_offset 5, -8
	movl	20(%esp), %eax
	sall	$7, %eax
	jmp	L1311
	.cfi_endproc
LFE140:
	.p2align 4
	.globl	__Z11GetSectUsers
	.def	__Z11GetSectUsers;	.scl	2;	.type	32;	.endef
__Z11GetSectUsers:
LFB142:
	.cfi_startproc
	movswl	%ax, %edx
	movl	_SectUser(,%edx,4), %eax
	testl	%eax, %eax
	je	L1335
	ret
	.p2align 4,,10
	.p2align 3
L1335:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %ecx
	movl	$28, (%esp)
	movl	%edx, 4(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	testl	%eax, %eax
	je	L1330
	movl	4(%esp), %edx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	%eax, _SectUser(,%edx,4)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1330:
	.cfi_restore_state
	movl	$1, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE142:
	.p2align 4
	.globl	__Z11SpawnSpritessP11STATEstructsiiiii
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
__Z11SpawnSpritessP11STATEstructsiiiii:
LFB143:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movw	%dx, 2(%esp)
	movswl	%ax, %edx
	movswl	28(%esp), %eax
	movl	%ecx, 4(%esp)
	call	__Z17COVERinsertspritess
	movl	_sprite, %ecx
	movl	%eax, %edi
	movl	%eax, %ebp
	imull	$44, %eax, %eax
	leal	(%ecx,%eax), %ebx
	addl	$17, %eax
	mull	%esi
	movl	%ebx, %eax
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	32(%esp), %eax
	movb	$0, 17(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%eax, (%ebx)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%eax, 8(%ebx)
	movl	4(%esp), %ecx
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	2(%esp), %edx
	movw	%ax, 12(%ebx)
	movswl	%di, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %ecx
	movl	%eax, _User(,%edi,4)
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L1337
	leal	14(%ebx), %edx
	movswl	(%eax), %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 14(%ebx)
	movzbl	_picanm+3(%edi,%edi,4), %eax
	movl	%eax, %edx
	shrb	$6, %dl
	je	L1337
	andl	$63, %eax
	movb	%al, _picanm+3(%edi,%edi,4)
L1337:
	leal	16(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$64, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%ecx, %edx
	movb	$64, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	44(%esp), %eax
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 28(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ebx)
	leal	38(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	xorl	%edi, %edi
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%ecx, %edx
	movw	%di, 38(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 42(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 22(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 23(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ebx)
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
LFE143:
	.p2align 4
	.globl	__Z10ActorSpawnP12spritetypev7
	.def	__Z10ActorSpawnP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z10ActorSpawnP12spritetypev7:
LFB144:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %esi
	movzwl	14(%ebx), %eax
	cmpw	$4277, %ax
	je	L1346
	jg	L1347
	cmpw	$1400, %ax
	je	L1348
	jg	L1349
	cmpw	$820, %ax
	je	L1350
	jle	L1563
	cmpw	$1300, %ax
	je	L1356
	cmpw	$1367, %ax
	je	L1357
	cmpw	$1210, %ax
	jne	L1355
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1401
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1401:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z9SetupSumos
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1347:
	cmpw	$4792, %ax
	je	L1367
	jg	L1368
	cmpw	$4594, %ax
	je	L1369
	jle	L1564
	cmpw	$4604, %ax
	je	L1374
	cmpw	$4768, %ax
	je	L1375
	cmpw	$4600, %ax
	jne	L1355
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1419
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1419:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z15SetupSailorGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1349:
	cmpw	$2355, %ax
	je	L1359
	jle	L1565
	cmpw	$3780, %ax
	je	L1363
	jle	L1566
	cmpw	$4096, %ax
	je	L1366
	cmpw	$4162, %ax
	jne	L1355
L1366:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1389
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1389:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupNinjas
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1368:
	cmpw	$5032, %ax
	je	L1377
	jg	L1378
	cmpw	$4840, %ax
	je	L1379
	cmpw	$5023, %ax
	je	L1380
	cmpw	$4816, %ax
	jne	L1355
	movzbl	_picanm+24083, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1456
	andl	$63, %eax
	movb	%al, _picanm+24083
L1456:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetupPachinko3s
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1564:
	cmpw	$4550, %ax
	je	L1371
	cmpw	$4590, %ax
	je	L1372
	cmpw	$4320, %ax
	jne	L1355
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1432
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1432:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z12SetupRipper2s
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1563:
	cmpw	$800, %ax
	je	L1352
	cmpw	$817, %ax
	je	L1353
	cmpw	$623, %ax
	jne	L1355
	movzbl	_picanm+3118, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1452
	andl	$63, %eax
	movb	%al, _picanm+3118
L1452:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z18SetupPachinkoLights
L1453:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %edx
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1565:
	.cfi_restore_state
	cmpw	$1469, %ax
	je	L1361
	cmpw	$1580, %ax
	jne	L1567
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1429
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1429:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z11SetupRippers
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1378:
	cmpw	$5162, %ax
	je	L1383
	cmpw	$5426, %ax
	jne	L1355
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1404
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1404:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupZillas
	movzbl	7(%esp), %edx
L1345:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1566:
	.cfi_restore_state
	cmpw	$2540, %ax
	jne	L1355
	movzbl	_picanm+12703, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1424
	andl	$63, %eax
	movb	%al, _picanm+12703
L1424:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z13SetupTrashCans
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1372:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1416
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1416:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z17SetupMechanicGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1353:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1450
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1450:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupBettys
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1357:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1441
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1441:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z9SetupSkels
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1383:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1460
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1460:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z14SetupGirlNinjas
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1375:
	movzbl	_picanm+23843, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1454
	andl	$63, %eax
	movb	%al, _picanm+23843
L1454:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetupPachinko1s
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1380:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	movzbl	_picanm+3(%eax,%eax,4), %ecx
	movl	%ecx, %ebx
	shrb	$6, %bl
	je	L1407
	andl	$63, %ecx
	movb	%cl, _picanm+3(%eax,%eax,4)
L1407:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z15SetupToiletGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1359:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1438
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1438:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z9SetupLavas
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1377:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1410
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1410:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z13SetupWashGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1567:
	cmpw	$1441, %ax
	jne	L1355
L1346:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1395
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1395:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupCoolgs
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1562:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	call	__Z10KillSprites
	movzbl	7(%esp), %edx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1367:
	.cfi_restore_state
	movzbl	_picanm+23963, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1455
	andl	$63, %eax
	movb	%al, _picanm+23963
L1455:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetupPachinko2s
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1369:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1413
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1413:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z12SetupCarGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1374:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1422
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1422:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z14SetupPruneGirls
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1361:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1392
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1392:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z9SetupGoros
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1371:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1426
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1426:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupBunnys
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1352:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1444
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1444:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z11SetupHornets
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1356:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1435
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1435:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z9SetupSerps
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1355:
	xorl	%edx, %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1379:
	movzbl	_picanm+24203, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1457
	andl	$63, %eax
	movb	%al, _picanm+24203
L1457:
	movswl	%si, %eax
	movl	%eax, (%esp)
	call	__Z14SetupPachinko4s
	jmp	L1453
	.p2align 4,,10
	.p2align 3
L1363:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1398
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1398:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z8SetupEels
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1348:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1386
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1386:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z11SetupCoolies
	movzbl	7(%esp), %edx
	jmp	L1345
	.p2align 4,,10
	.p2align 3
L1350:
	movl	%ebx, %eax
	call	__Z14ActorTestSpawnP12spritetypev7
	movl	%eax, %edx
	testb	%al, %al
	je	L1562
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %ecx
	movzbl	3(%ecx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L1447
	andl	$63, %eax
	movb	%al, 3(%ecx)
L1447:
	movswl	%si, %eax
	movb	%dl, 7(%esp)
	movl	%eax, (%esp)
	call	__Z10SetupSkulls
	movzbl	7(%esp), %edx
	jmp	L1345
	.cfi_endproc
LFE144:
	.p2align 4
	.globl	__Z11IconDefaults
	.def	__Z11IconDefaults;	.scl	2;	.type	32;	.endef
__Z11IconDefaults:
LFB145:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$10, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	%ax, %ebx
	movl	%ebx, %eax
	imull	$44, %ebx, %esi
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	addl	_sprite, %esi
	movl	_User(,%ebx,4), %edi
	call	__Z18change_sprite_statss
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%esi)
	movl	$650, 188(%edi)
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	addl	$4, %esp
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
LFE145:
	.p2align 4
	.globl	__Z19PreMapCombineFloorsv
	.def	__Z19PreMapCombineFloorsv;	.scl	2;	.type	32;	.endef
__Z19PreMapCombineFloorsv:
LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$8352, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	xorl	%eax, %eax
L1571:
	movl	$0, 32(%esp,%eax)
	movl	$0, 36(%esp,%eax)
	movl	$0, 40(%esp,%eax)
	movl	$0, 44(%esp,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L1571
	movzwl	_headspritestat, %ebx
	cmpw	$-1, %bx
	je	L1574
L1573:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$2307, 14(%eax)
	jne	L1575
	movzwl	40(%eax), %edi
	leal	-202(%edi), %edx
	cmpw	$1, %dx
	ja	L1575
	movswl	38(%eax), %edx
	movl	%eax, 32(%esp,%edx,4)
	movl	$60, %edx
	movl	%ecx, %eax
	call	__Z18change_sprite_statss
L1575:
	cmpw	$-1, %bx
	jne	L1573
L1574:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	leal	160(%esp), %edi
L1576:
	movl	32(%esp,%ebx,4), %eax
	testl	%eax, %eax
	je	L1579
	cmpw	$202, 40(%eax)
	je	L1597
	movl	32(%esp,%esi,4), %edx
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	movl	(%edx), %ecx
	subl	(%eax), %ecx
	movl	%ecx, 28(%esp)
	movl	4(%edx), %edx
	movswl	24(%eax), %ecx
	subl	4(%eax), %edx
	movl	$1, %eax
	movl	%edx, 24(%esp)
	xorl	%edx, %edx
	movw	%cx, 160(%esp)
	movw	%ax, 16(%esp)
	movw	%dx, 12(%esp)
	.p2align 4
	.p2align 3
L1590:
	movzwl	12(%esp), %eax
	movswl	_headspritesect(%ecx,%ecx), %esi
	addl	$1, %eax
	movw	%ax, 10(%esp)
	movw	%ax, 12(%esp)
	testl	%esi, %esi
	js	L1580
	movl	%ecx, 20(%esp)
	movl	_sprite, %ebx
	.p2align 4
	.p2align 3
L1581:
	imull	$44, %esi, %ecx
	movl	$-1171354717, %eax
	mull	%ecx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%eax, (%ebx,%ecx)
	movl	$-1171354717, %eax
	movl	_sprite, %ebx
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, 4(%ebx,%ecx)
	movswl	_nextspritesect(%esi,%esi), %esi
	testl	%esi, %esi
	jns	L1581
	movl	20(%esp), %ecx
L1580:
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edx
	movzwl	2(%eax), %esi
	addl	%edx, %esi
	cmpw	%dx, %si
	jle	L1582
	movswl	%si, %eax
	movl	_wall, %ebx
	sall	$5, %edx
	sall	$5, %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L1588:
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	28(%esp), %eax
	addl	%eax, (%ebx,%edx)
	movl	_wall, %ebx
	leal	4(%edx), %eax
	shrl	$5, %eax
	leal	(%ebx,%edx), %ecx
	addl	$1, _wallchanged(,%eax,4)
	movl	24(%esp), %eax
	addl	%eax, 4(%ecx)
	movzwl	12(%ecx), %ecx
	testw	%cx, %cx
	js	L1584
	movswl	16(%esp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	jns	L1587
	jmp	L1585
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1616:
	subl	$1, %eax
	jb	L1585
L1587:
	cmpw	%cx, (%edi,%eax,2)
	jne	L1616
L1584:
	addl	$32, %edx
	cmpl	%edx, 20(%esp)
	jne	L1588
L1582:
	movswl	10(%esp), %eax
	cmpw	%ax, 16(%esp)
	jle	L1589
	movswl	160(%esp,%eax,2), %ecx
	jmp	L1590
	.p2align 4,,10
	.p2align 3
L1585:
	addw	$1, 16(%esp)
	movw	%cx, 160(%esp,%esi,2)
	jmp	L1584
L1589:
	movl	_connecthead, %eax
	movl	4(%esp), %esi
	movl	(%esp), %ebx
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L1579
	movswl	16(%esp), %eax
	testw	%ax, %ax
	jle	L1579
	movl	%esi, 16(%esp)
	leal	(%edi,%eax,2), %eax
	movl	%ebx, 12(%esp)
	.p2align 4
	.p2align 3
L1594:
	imull	$24124, %edx, %ecx
	movzwl	_Player+268(%ecx), %ebx
	movl	%edi, %ecx
	jmp	L1593
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1591:
	addl	$2, %ecx
	cmpl	%eax, %ecx
	je	L1592
L1593:
	cmpw	%bx, (%ecx)
	jne	L1591
	imull	$24124, %edx, %ecx
	movl	28(%esp), %ebx
	movl	24(%esp), %esi
	addl	_Player(%ecx), %ebx
	addl	_Player+4(%ecx), %esi
	movl	%ebx, 20(%esp)
	movss	20(%esp), %xmm0
	movl	%esi, 20(%esp)
	movss	20(%esp), %xmm1
	movl	%ebx, _Player(%ecx)
	movl	%esi, _Player+4(%ecx)
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, _Player+320(%ecx)
	movlps	%xmm0, _Player+12(%ecx)
L1592:
	movl	_connectpoint2(,%edx,4), %ecx
	movswl	%cx, %edx
	cmpw	$-1, %cx
	jne	L1594
	movl	16(%esp), %esi
	movl	12(%esp), %ebx
L1579:
	addl	$1, %ebx
	cmpl	$32, %ebx
	jne	L1576
L1617:
	movzwl	_headspritestat+120, %ebx
	cmpw	$-1, %bx
	je	L1570
L1595:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L1595
L1570:
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
L1597:
	.cfi_restore_state
	movl	%ebx, %esi
	addl	$1, %ebx
	cmpl	$32, %ebx
	jne	L1576
	jmp	L1617
	.cfi_endproc
LFE146:
	.section .rdata,"dr"
	.align 4
LC44:
	.ascii "Two VIEW_THRU_ tags with same match found on level\12"
	.ascii "1: x %d, y %d \12"
	.ascii "2: x %d, y %d\0"
	.text
	.p2align 4
	.globl	__Z11SpriteSetupv
	.def	__Z11SpriteSetupv;	.scl	2;	.type	32;	.endef
__Z11SpriteSetupv:
LFB147:
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
	subl	$116, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movzbl	_picanm+5473, %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1619
	andl	$63, %eax
	movb	%al, _picanm+5473
L1619:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_SectUser, (%esp)
	call	_memset
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L1620
	movl	_sector, %edi
	leal	(%eax,%eax,4), %eax
	movl	$-858993459, %ebx
	leal	38(%edi), %ecx
	leal	(%ecx,%eax,8), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L1621:
	movl	%ecx, %edx
	addl	$40, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, -40(%ecx)
	cmpl	%esi, %ecx
	jne	L1621
L1620:
	movzwl	_headspritestat, %esi
	movl	$-1, %ecx
	movl	$0, _parallaxyscale_override
	movw	%cx, _pskybits_override
	cmpw	$-1, %si
	je	L2334
	movw	%si, -64(%ebp)
	jmp	L1622
	.p2align 4,,10
	.p2align 3
L2338:
	cmpw	$511, %ax
	jg	L1626
	cmpw	$460, %ax
	jne	L2335
	leal	8(%ebx), %edi
	movl	$-1171354717, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	mull	%edx
	movl	$79, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$85, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	cmpl	$-1, %eax
	je	L1628
L2329:
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L1628
	cmpl	$-1, 32(%eax)
	je	L2336
L1644:
	movzwl	-72(%ebp), %esi
	movw	%si, 48(%eax)
L1628:
	cmpw	$-1, -64(%ebp)
	je	L2337
L1622:
	movswl	-64(%ebp), %eax
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%eax,%eax), %esi
	movw	%ax, -72(%ebp)
	movl	%eax, -76(%ebp)
	movw	%si, -64(%ebp)
	imull	$44, %eax, %esi
	leal	(%ecx,%esi), %ebx
	movzwl	40(%ebx), %edi
	cmpw	$1000, %di
	je	L1648
	movl	%ebx, %esi
L1649:
	movzwl	14(%esi), %eax
	cmpw	$541, %ax
	jle	L2338
	cmpw	$880, %ax
	je	L1631
	jg	L1632
	cmpw	$795, %ax
	jne	L1628
L1631:
	leal	8(%ebx), %edi
	movl	$-1171354717, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	mull	%edx
	movl	$178, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$13, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	cmpl	$-1, %eax
	jne	L2329
	cmpw	$-1, -64(%ebp)
	jne	L1622
	.p2align 4
	.p2align 3
L2337:
	movzwl	_numwalls, %ebx
	testw	%bx, %bx
	jle	L1647
L1646:
	movl	_wall, %eax
	xorl	%ecx, %ecx
	movl	$1074790401, %esi
	leal	30(%eax), %edx
	jmp	L1655
	.p2align 4,,10
	.p2align 3
L2339:
	cmpw	$330, %ax
	jg	L1652
	cmpw	$299, %ax
	jg	L1653
	subw	$175, %ax
	testw	$-5, %ax
	je	L1650
L1652:
	addl	$1, %ecx
	addl	$32, %edx
	cmpw	%cx, %bx
	jle	L1647
L1655:
	movzwl	-14(%edx), %eax
	cmpw	$352, %ax
	je	L1650
	jle	L2339
	cmpw	$2608, %ax
	je	L1650
	jg	L1654
	cmpw	$780, %ax
	je	L1650
	cmpw	$890, %ax
	jne	L1652
	.p2align 4
	.p2align 3
L1650:
	movl	%ecx, %eax
	addl	$1, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	orw	$128, (%edx)
	addl	$32, %edx
	cmpw	%cx, %bx
	jg	L1655
L1647:
	movzwl	_headspritestat, %edi
	cmpw	$-1, %di
	je	L1618
	.p2align 4
	.p2align 3
L1656:
	movswl	%di, %eax
	movl	_sprite, %ebx
	movw	%di, -64(%ebp)
	imull	$44, %eax, %esi
	movl	%eax, -72(%ebp)
	movzwl	_nextspritestat(%eax,%eax), %edi
	leal	-60(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 12(%esp)
	addl	%esi, %ebx
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
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	sarl	%eax
	cmpl	8(%ebx), %eax
	jl	L1990
	movzwl	12(%ebx), %eax
L1991:
	movl	%eax, %edx
	notl	%edx
	andl	$48, %edx
	jne	L1658
	movl	$-1171354717, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	12(%ebx), %eax
	andl	$-49, %eax
	movw	%ax, 12(%ebx)
L1658:
	testb	$1, %al
	je	L1659
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$256, 12(%ebx)
L1659:
	testb	$64, 42(%ebx)
	je	L1660
	cmpw	$2307, 14(%ebx)
	je	L1660
	movl	_sprite, %eax
	leal	42(%ebx), %ecx
	subl	%eax, %ecx
	movl	%eax, -76(%ebp)
	movl	$-1171354717, %eax
	mull	%ecx
	movl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	%ecx, -80(%ebp)
	andw	$4591, 42(%ebx)
	cmpw	$132, 40(%ebx)
	jne	L1662
	movswl	14(%ebx), %eax
	movzbl	20(%ebx), %edx
	movswl	_tilesiz(,%eax,4), %eax
	movl	%eax, %ecx
	movzbl	%dl, %eax
	imull	%ecx, %eax
	sarl	$6, %eax
	cmpb	$64, %dl
	leal	18(%ebx), %edx
	cmovne	%eax, %ecx
	movl	$-1171354717, %eax
	subl	-76(%ebp), %edx
	mull	%edx
	movl	-80(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	-76(%ebp), %edx
	movb	%cl, 18(%ebx)
	addl	$1, _spritechanged(,%eax,4)
	movl	$-1171354717, %eax
	mull	%edx
	orw	$8192, 42(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%ebx)
	.p2align 4
	.p2align 3
L1662:
	cmpw	$257, 38(%ebx)
	je	L2340
	movl	_sprite, %eax
	addl	%esi, %eax
	movzwl	14(%eax), %edx
	leal	-1900(%edx), %ecx
	cmpw	$100, %cx
	jbe	L1672
	movl	%ebx, %eax
	call	__Z10ActorSpawnP12spritetypev7
	testb	%al, %al
	jne	L1667
	movl	_sprite, %ecx
	leal	(%ecx,%esi), %eax
	movl	%eax, -76(%ebp)
	movzwl	14(%eax), %eax
	cmpw	$1843, %ax
	jg	L1674
	cmpw	$1764, %ax
	jle	L2341
	subw	$1765, %ax
	cmpw	$78, %ax
	ja	L1667
	movzwl	%ax, %eax
	jmp	*L1692(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1692:
	.long	L1733
	.long	L1732
	.long	L1731
	.long	L1667
	.long	L1730
	.long	L1729
	.long	L1996
	.long	L1667
	.long	L1727
	.long	L1726
	.long	L1725
	.long	L1667
	.long	L1724
	.long	L1723
	.long	L1722
	.long	L1667
	.long	L1667
	.long	L1721
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1720
	.long	L1719
	.long	L1667
	.long	L1718
	.long	L1717
	.long	L1667
	.long	L1716
	.long	L2097
	.long	L1667
	.long	L1714
	.long	L1713
	.long	L1712
	.long	L1711
	.long	L1667
	.long	L1710
	.long	L1709
	.long	L1708
	.long	L1707
	.long	L1706
	.long	L1705
	.long	L1704
	.long	L1703
	.long	L1667
	.long	L1667
	.long	L1702
	.long	L1701
	.long	L1700
	.long	L1699
	.long	L1667
	.long	L1698
	.long	L1697
	.long	L1696
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1695
	.long	L1667
	.long	L1694
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1693
	.long	L1691
	.text
	.p2align 4,,10
	.p2align 3
L1648:
	cmpw	$2307, 14(%ebx)
	jne	L2342
L1639:
	movl	-76(%ebp), %eax
	movl	$500, %edx
	call	__Z18change_sprite_statss
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L2335:
	jg	L1628
	cmpw	$430, %ax
	je	L1629
	jg	L1630
	subw	$380, %ax
	testw	$-17, %ax
	jne	L1628
	.p2align 4
	.p2align 3
L1629:
	leal	8(%ebx), %edi
	movl	$-1171354717, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	mull	%edx
	movl	$185, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$13, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	cmpl	$-1, %eax
	je	L1628
	jmp	L2329
	.p2align 4,,10
	.p2align 3
L2342:
	movl	$67, %edx
	call	__Z18change_sprite_statss
	movl	_sprite, %ecx
	addl	%ecx, %esi
	jmp	L1649
	.p2align 4,,10
	.p2align 3
L1632:
	cmpw	$2720, %ax
	je	L1629
	jle	L2343
	cmpw	$3143, %ax
	je	L1629
	cmpw	$3157, %ax
	je	L1629
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L1653:
	subw	$300, %ax
	btl	%eax, %esi
	jnc	L1652
	jmp	L1650
	.p2align 4,,10
	.p2align 3
L1654:
	cmpw	$2616, %ax
	jne	L1652
	jmp	L1650
	.p2align 4,,10
	.p2align 3
L2340:
	testb	$2, 43(%ebx)
	je	L1665
	cmpl	$1, _numplayers
	jle	L1666
	cmpw	$3, _gNet+12
	je	L1666
L1665:
	movl	_sprite, %esi
	leal	12(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%esi, %ecx
	mull	%ecx
	movl	%edx, %ecx
	shrl	$5, %ecx
	movl	_spritechanged(,%ecx,4), %eax
	addl	$1, %eax
	cmpw	$80, 14(%ebx)
	movl	%eax, _spritechanged(,%ecx,4)
	je	L2344
	andw	$-2, 12(%ebx)
	addl	$1, _spritechanged(,%ecx,4)
	orw	$16640, 12(%ebx)
	addl	$1, _spritechanged(,%ecx,4)
	movzwl	12(%ebx), %eax
	orw	$-32768, %ax
L1669:
	leal	36(%ebx), %edx
	movw	%ax, 12(%ebx)
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testb	$1, 36(%ebx)
	je	L1670
	addl	$1, _spritechanged(,%ecx,4)
	orw	$-32768, 12(%ebx)
	movl	_spritechanged(,%edx,4), %eax
L1670:
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testb	$2, 36(%ebx)
	je	L1671
	addl	$1, _spritechanged(,%ecx,4)
	andw	$32767, 12(%ebx)
L1671:
	movswl	-64(%ebp), %eax
	movl	$46, %edx
	call	__Z18change_sprite_statss
L1667:
	cmpw	$-1, %di
	jne	L1656
L1618:
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
L1660:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z19SetupSpriteForBreakP12spritetypev7.isra.0
	jmp	L1662
	.p2align 4,,10
	.p2align 3
L1990:
	movl	$-1171354717, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	12(%ebx), %eax
	orb	$32, %ah
	movw	%ax, 12(%ebx)
	jmp	L1991
	.p2align 4,,10
	.p2align 3
L1672:
	testb	$16, 12(%eax)
	jne	L1667
	subw	$1700, %dx
	movswl	-64(%ebp), %eax
	movswl	%dx, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1666:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2344:
	andw	$-2, 12(%ebx)
	addl	$1, _spritechanged(,%ecx,4)
	movzwl	12(%ebx), %eax
	orb	$65, %ah
	jmp	L1669
	.p2align 4,,10
	.p2align 3
L1674:
	cmpw	$2316, %ax
	jg	L1738
	cmpw	$2306, %ax
	jle	L2345
	subw	$2307, %ax
	cmpw	$9, %ax
	ja	L1667
	movzwl	%ax, %eax
	jmp	*L1681(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1681:
	.long	L1689
	.long	L1667
	.long	L1688
	.long	L1687
	.long	L1686
	.long	L1685
	.long	L1684
	.long	L1683
	.long	L1682
	.long	L1680
	.text
	.p2align 4,,10
	.p2align 3
L1738:
	cmpw	$3031, %ax
	je	L1743
	jle	L2346
	cmpw	$3143, %ax
	je	L1747
	jg	L1748
	cmpw	$3035, %ax
	jne	L1667
	testb	$2, 43(%ebx)
	je	L1949
	cmpl	$1, _numplayers
	jle	L1950
	cmpw	$3, _gNet+12
	je	L1950
L1949:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconFireballLgAmmo, %ecx
	movl	$3035, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2341:
	cmpw	$475, %ax
	je	L1676
	jle	L2347
	cmpw	$589, %ax
	jg	L1736
	cmpw	$557, %ax
	jle	L2348
	subw	$558, %ax
	movl	$-2017460225, %edx
	btl	%eax, %edx
	jnc	L1667
L1734:
	testb	$2, 43(%ebx)
	je	L1988
	cmpl	$1, _numplayers
	jle	L1989
	cmpw	$3, _gNet+12
	je	L1989
L1988:
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%ebx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2336:
	testb	$16, 28(%eax)
	jne	L1644
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L1628
	.p2align 4,,10
	.p2align 3
L1626:
	movl	$536871425, %edx
	btl	%eax, %edx
	jnc	L1628
	jmp	L1629
	.p2align 4,,10
	.p2align 3
L2346:
	cmpw	$2520, %ax
	je	L1745
	cmpw	$3030, %ax
	jne	L2349
	testb	$2, 43(%ebx)
	jne	L2350
L1957:
	movswl	-64(%ebp), %eax
	movl	$_s_IconArmor, %ecx
	movl	$3030, %edx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	leal	17(%ebx), %edx
	subl	_sprite, %edx
	movzbl	17(%ebx), %ecx
	movl	%eax, -64(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	-64(%ebp), %eax
	shrl	$5, %edx
	cmpb	$19, %cl
	je	L1959
	movb	$17, 262(%eax)
	movl	_spritechanged(,%edx,4), %eax
	movl	$17, %ecx
	addl	$1, %eax
L1960:
	movl	%eax, _spritechanged(,%edx,4)
	movl	-80(%ebp), %eax
	movb	%cl, 17(%ebx)
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2343:
	cmpw	$2307, %ax
	jne	L1628
	subw	$1000, %di
	cmpw	$6, %di
	ja	L1628
	movzwl	%di, %edi
	jmp	*L1636(,%edi,4)
	.section .rdata,"dr"
	.align 4
L1636:
	.long	L1639
	.long	L1639
	.long	L1638
	.long	L1628
	.long	L1628
	.long	L1637
	.long	L1635
	.text
L2347:
	cmpw	$362, %ax
	jle	L2351
	subw	$443, %ax
	cmpw	$25, %ax
	ja	L1667
	movl	$34604033, %edx
	btl	%eax, %edx
	jnc	L1667
L1676:
	movswl	14(%ebx), %edx
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$-1171354717, %esi
	call	__Z9SpawnUserssP11STATEstruct
	movswl	14(%ebx), %eax
	movzbl	20(%ebx), %edx
	movswl	_tilesiz(,%eax,4), %ecx
	movzbl	%dl, %eax
	imull	%ecx, %eax
	sarl	$6, %eax
	cmpb	$64, %dl
	cmovne	%eax, %ecx
	leal	18(%ebx), %eax
	subl	_sprite, %eax
	mull	%esi
	leal	12(%ebx), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movb	%cl, 18(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$16640, 12(%ebx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8192, 42(%ebx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1745:
	testb	$2, 43(%ebx)
	je	L1985
	cmpl	$1, _numplayers
	jle	L1986
	cmpw	$3, _gNet+12
	je	L1986
L1985:
	movswl	-64(%ebp), %eax
	movl	$_s_IconFlag, %ecx
	movl	$2520, %edx
	movl	%eax, -64(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %ecx
	movzbl	17(%ebx), %eax
	movb	%al, 262(%ecx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	36(,%esi,8), %edx
	mull	%edx
	movl	$9000, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	_sector, %edx
	movw	%ax, 36(%edx,%esi,8)
	movswl	24(%ebx), %eax
	movzbl	262(%ecx), %esi
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	34(,%ecx,8), %edx
	mull	%edx
	movl	-64(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%esi, %edx
	movzbl	%dl, %esi
	movl	_sector, %edx
	movw	%si, 34(%edx,%ecx,8)
	call	__Z11IconDefaults
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1667
	andl	$63, %eax
	movb	%al, 3(%edx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1680:
	movswl	-64(%ebp), %eax
	movl	$509, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1682:
	movswl	-64(%ebp), %eax
	movl	$508, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1683:
	movswl	-64(%ebp), %eax
	movl	$507, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1684:
	movswl	-64(%ebp), %eax
	movl	$505, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1685:
	movswl	-64(%ebp), %eax
	movl	$504, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1686:
	movswl	-64(%ebp), %eax
	movl	$503, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1687:
	movswl	-64(%ebp), %eax
	movl	$502, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1688:
	movswl	-64(%ebp), %eax
	movl	$501, %edx
	call	__Z18change_sprite_statss
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1689:
	movl	-76(%ebp), %eax
	movl	%ecx, -84(%ebp)
	cmpb	$32, 18(%eax)
	je	L2352
L1750:
	movl	-76(%ebp), %eax
	movl	$-1171354717, %edx
	movzwl	40(%eax), %ebx
	addl	$12, %eax
	subl	%ecx, %eax
	mull	%edx
	movl	-76(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%eax)
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%eax)
	leal	-500(%ebx), %eax
	cmpw	$99, %ax
	jbe	L1998
	cmpw	$27, %bx
	je	L1998
	cmpw	$15, %bx
	jg	L1753
	movl	%ebx, %ecx
	movl	$1, %eax
	movl	$-858993459, %edx
	movl	_sector, %esi
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	orw	%cx, 38(%esi,%ebx,8)
	testb	$1, %cl
	jne	L2353
	testb	$2, %cl
	jne	L2354
	testb	$8, %cl
	jne	L2355
	testb	$32, %cl
	jne	L2356
	testb	$-128, %cl
	jne	L2357
	testb	$1, %ch
	jne	L2358
	andb	$2, %ch
	je	L1667
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 22(%eax)
	cmpb	$1, 18(%esi)
	jne	L1760
	orl	$256, 4(%eax)
L1760:
	movswl	-64(%ebp), %eax
	movl	$51, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
	.p2align 4,,10
	.p2align 3
L1713:
	testb	$2, 43(%ebx)
	je	L1961
	cmpl	$1, _numplayers
	jle	L1962
	cmpw	$3, _gNet+12
	je	L1962
L1961:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconMedkit, %ecx
	movl	$1803, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1714:
	testb	$2, 43(%ebx)
	je	L1963
	cmpl	$1, _numplayers
	jle	L1964
	cmpw	$3, _gNet+12
	je	L1964
L1963:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconSmMedkit, %ecx
	movl	$1802, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1716:
	testb	$2, 43(%ebx)
	je	L1927
	cmpl	$1, _numplayers
	jle	L1928
	cmpw	$3, _gNet+12
	je	L1928
L1927:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconLgUziAmmo, %ecx
	movl	$1799, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1717:
	testb	$2, 43(%ebx)
	je	L1923
	cmpl	$1, _numplayers
	jle	L1924
	cmpw	$3, _gNet+12
	je	L1924
L1923:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconUzi, %ecx
	movl	$1797, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1718:
	testb	$2, 43(%ebx)
	je	L1939
	cmpl	$1, _numplayers
	jle	L1940
	cmpw	$3, _gNet+12
	je	L1940
L1939:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconLgRocket, %ecx
	movl	$1796, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1719:
	testb	$2, 43(%ebx)
	je	L1941
	cmpl	$1, _numplayers
	jle	L1942
	cmpw	$3, _gNet+12
	je	L1942
L1941:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconShotgun, %ecx
	movl	$1794, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$350, 188(%eax)
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1720:
	testb	$2, 43(%ebx)
	je	L1915
	cmpl	$1, _numplayers
	jle	L1916
	cmpw	$3, _gNet+12
	je	L1916
L1915:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconStar, %ecx
	movl	$1793, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1721:
	testb	$2, 43(%ebx)
	je	L1981
	cmpl	$1, _numplayers
	jle	L1982
	cmpw	$3, _gNet+12
	je	L1982
L1981:
	movswl	-64(%ebp), %esi
	movl	$_s_IconFly, %ecx
	movl	$1782, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%esi, %eax
	call	__Z11IconDefaults
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1667
	andl	$63, %eax
	movb	%al, 3(%edx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1722:
	movl	$7, %eax
	movw	%ax, -76(%ebp)
	.p2align 4
	.p2align 3
L1728:
	movzwl	_gNet+12, %eax
	cmpw	$1, %ax
	je	L1999
L2359:
	cmpw	$4, %ax
	je	L1999
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %edx
	movl	_sprite, %eax
	movl	%edx, -64(%ebp)
	leal	(%eax,%esi), %ecx
	movzwl	14(%ecx), %esi
	movw	%si, 82(%edx)
	leal	14(%ecx), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	-64(%ebp), %edx
	movzbl	17(%ecx), %eax
	movw	%si, 14(%ecx)
	movb	%al, 262(%edx)
	movl	-72(%ebp), %eax
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L1911
	movswl	-76(%ebp), %eax
	movl	_s_Key(,%eax,4), %eax
	movl	$0, 76(%edx)
	movl	%eax, 24(%edx)
	movl	%eax, 16(%edx)
	movswl	(%eax), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1911
	andl	$63, %eax
	movb	%al, 3(%edx)
L1911:
	movswl	14(%ebx), %eax
	movl	-80(%ebp), %esi
	movl	$10, %edx
	andb	$63, _picanm+3(%eax,%eax,4)
	movswl	14(%ebx), %eax
	andb	$63, _picanm+8(%eax,%eax,4)
	movl	%esi, %eax
	call	__Z18change_sprite_statss
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	-64(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	andw	$-258, 12(%ebx)
	subl	%ecx, %edx
	movl	$500, 188(%eax)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1723:
	movl	$3, %eax
	movw	%ax, -76(%ebp)
	movzwl	_gNet+12, %eax
	cmpw	$1, %ax
	jne	L2359
	.p2align 4
	.p2align 3
L1999:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
L1725:
	movl	$6, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L1726:
	movl	$2, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L1727:
	movl	$10, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L1691:
	testb	$2, 43(%ebx)
	je	L1937
	cmpl	$1, _numplayers
	jle	L1938
	cmpw	$3, _gNet+12
	je	L1938
L1937:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconRocket, %ecx
	movl	$1843, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1693:
	testb	$2, 43(%ebx)
	je	L1917
	cmpl	$1, _numplayers
	jle	L1918
	cmpw	$3, _gNet+12
	je	L1918
L1917:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconLgMine, %ecx
	movl	$1842, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1694:
	testb	$2, 43(%ebx)
	je	L1931
	cmpl	$1, _numplayers
	jle	L1932
	cmpw	$3, _gNet+12
	je	L1932
L1931:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconLgGrenade, %ecx
	movl	$1831, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1695:
	testb	$2, 43(%ebx)
	je	L1973
	cmpl	$1, _numplayers
	jle	L1974
	cmpw	$3, _gNet+12
	je	L1974
L1973:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconCaltrops, %ecx
	movl	$1829, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1696:
	testb	$2, 43(%ebx)
	je	L1951
	cmpl	$1, _numplayers
	jle	L1952
	cmpw	$3, _gNet+12
	je	L1952
L1951:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconHeart, %ecx
	movl	$1824, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1729:
	xorl	%ecx, %ecx
	movw	%cx, -76(%ebp)
	jmp	L1728
L1730:
	movl	$9, %edx
	movw	%dx, -76(%ebp)
	jmp	L1728
L1731:
	movl	$5, %edx
	movw	%dx, -76(%ebp)
	jmp	L1728
L1732:
	movl	$1, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L1733:
	movl	$8, %ecx
	movw	%cx, -76(%ebp)
	jmp	L1728
L1697:
	testb	$2, 43(%ebx)
	je	L1943
	cmpl	$1, _numplayers
	jle	L1944
	cmpw	$3, _gNet+12
	je	L1944
L1943:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconLgShotshell, %ecx
	movl	$1823, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1698:
	testb	$2, 43(%ebx)
	je	L1945
	cmpl	$1, _numplayers
	jle	L1946
	cmpw	$3, _gNet+12
	je	L1946
L1945:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconAutoRiot, %ecx
	movl	$1822, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1699:
	testb	$2, 43(%ebx)
	je	L1953
	cmpl	$1, _numplayers
	jle	L1954
	cmpw	$3, _gNet+12
	je	L1954
L1953:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconHeartLgAmmo, %ecx
	movl	$1820, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1700:
	testb	$2, 43(%ebx)
	je	L1977
	cmpl	$1, _numplayers
	jle	L1978
	cmpw	$3, _gNet+12
	je	L1978
L1977:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconHeatCard, %ecx
	movl	$1819, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1701:
	testb	$2, 43(%ebx)
	je	L1919
	cmpl	$1, _numplayers
	jle	L1920
	cmpw	$3, _gNet+12
	je	L1920
L1919:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconMicroGun, %ecx
	movl	$1818, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1702:
	testb	$2, 43(%ebx)
	je	L1929
	cmpl	$1, _numplayers
	jle	L1930
	cmpw	$3, _gNet+12
	je	L1930
L1929:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconGrenadeLauncher, %ecx
	movl	$1817, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1703:
	testb	$2, 43(%ebx)
	je	L1947
	cmpl	$1, _numplayers
	jle	L1948
	cmpw	$3, _gNet+12
	je	L1948
L1947:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconGuardHead, %ecx
	movl	$1814, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1704:
	testb	$2, 43(%ebx)
	je	L1913
	cmpl	$1, _numplayers
	jle	L1914
	cmpw	$3, _gNet+12
	je	L1914
L1913:
	movswl	-64(%ebp), %ebx
	movl	$_s_RepairKit, %ecx
	movl	$1813, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1705:
	testb	$2, 43(%ebx)
	je	L1935
	cmpl	$1, _numplayers
	jle	L1936
	cmpw	$3, _gNet+12
	je	L1936
L1935:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconRailAmmo, %ecx
	movl	$1812, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1706:
	testb	$2, 43(%ebx)
	je	L1933
	cmpl	$1, _numplayers
	jle	L1934
	cmpw	$3, _gNet+12
	je	L1934
L1933:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconRailGun, %ecx
	movl	$1811, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1707:
	testb	$2, 43(%ebx)
	je	L1975
	cmpl	$1, _numplayers
	jle	L1976
	cmpw	$3, _gNet+12
	je	L1976
L1975:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconBooster, %ecx
	movl	$1810, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1708:
	movzwl	42(%ebx), %eax
	movzwl	_gNet+12, %edx
	movl	%eax, %ecx
	andw	$512, %cx
	testw	%dx, %dx
	je	L2360
	cmpb	$0, _gNet+19
	je	L1715
	testw	%cx, %cx
	je	L1970
	cmpl	$1, _numplayers
	jle	L1971
	cmpw	$3, %dx
	jne	L1970
L1971:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1709:
	testb	$2, 43(%ebx)
	je	L1965
	cmpl	$1, _numplayers
	jle	L1966
	cmpw	$3, _gNet+12
	je	L1966
L1965:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconChemBomb, %ecx
	movl	$1808, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1710:
	testb	$2, 43(%ebx)
	je	L1925
	cmpl	$1, _numplayers
	jle	L1926
	cmpw	$3, _gNet+12
	je	L1926
L1925:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconUziFloor, %ecx
	movl	$1807, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1711:
	testb	$2, 43(%ebx)
	je	L1967
	cmpl	$1, _numplayers
	jle	L1968
	cmpw	$3, _gNet+12
	je	L1968
L1967:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconFlashBomb, %ecx
	movl	$1805, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1712:
	testb	$2, 43(%ebx)
	je	L1979
	cmpl	$1, _numplayers
	jle	L1980
	cmpw	$3, _gNet+12
	je	L1980
L1979:
	movswl	-64(%ebp), %esi
	movl	$_s_IconCloak, %ecx
	movl	$1804, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%esi, %eax
	call	__Z11IconDefaults
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1667
	andl	$63, %eax
	movb	%al, 3(%edx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1748:
	cmpw	$3157, %ax
	jne	L2361
L1747:
	movswl	-64(%ebp), %esi
	movswl	14(%ebx), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$42, %edx
	movl	%eax, -64(%ebp)
	movl	%esi, %eax
	movl	$3212, %esi
	call	__Z18change_sprite_statss
	movl	-64(%ebp), %ecx
	leal	12(%ebx), %edx
	movw	%si, 82(%ecx)
	movl	_sprite, %esi
	movl	$200, 188(%ecx)
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	40(%ebx), %eax
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	$9999, %eax
	andw	$-257, 12(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2345:
	cmpw	$1852, %ax
	jle	L2362
	cmpw	$1880, %ax
	jne	L1667
	testb	$2, 43(%ebx)
	je	L1955
	cmpl	$1, _numplayers
	jle	L1956
	cmpw	$3, _gNet+12
	je	L1956
L1955:
	movswl	-64(%ebp), %esi
	movl	$_s_IconSpell, %ecx
	movl	$1880, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%esi, %eax
	call	__Z11IconDefaults
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1667
	andl	$63, %eax
	movb	%al, 3(%edx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1630:
	cmpw	$443, %ax
	je	L1629
	jmp	L1628
L1743:
	testb	$2, 43(%ebx)
	je	L1983
	cmpl	$1, _numplayers
	jle	L1984
	cmpw	$3, _gNet+12
	je	L1984
L1983:
	movswl	-64(%ebp), %esi
	movl	$_s_IconNightVision, %ecx
	movl	$3031, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%esi, %eax
	call	__Z11IconDefaults
	movswl	14(%ebx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1667
	andl	$63, %eax
	movb	%al, 3(%edx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2362:
	cmpw	$1845, %ax
	jle	L1667
	subw	$1846, %ax
	movl	$81, %edx
	btl	%eax, %edx
	jnc	L1667
L1690:
	movl	-76(%ebp), %eax
	testb	$2, 43(%eax)
	je	L1667
	cmpl	$1, _numplayers
	jle	L1912
	cmpw	$3, _gNet+12
	jne	L1667
L1912:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L2351:
	cmpw	$359, %ax
	jle	L1667
L1679:
	movswl	-64(%ebp), %esi
	movswl	14(%ebx), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%esi, %eax
	xorl	%edx, %edx
	call	__Z18change_sprite_statss
	movl	_sprite, %esi
	leal	12(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%esi, %edx
	orw	$256, 12(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$4096, 42(%ebx)
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2361:
	cmpw	$5011, %ax
	je	L1679
	jmp	L1667
	.p2align 4,,10
	.p2align 3
L1996:
	movl	$4, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L2097:
	movzwl	42(%ebx), %eax
L1715:
	testb	$2, %ah
	je	L1921
	cmpl	$1, _numplayers
	jle	L1922
	cmpw	$3, _gNet+12
	je	L1922
L1921:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconMicroBattery, %ecx
	movl	$1800, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L1724:
	movl	$11, %eax
	movw	%ax, -76(%ebp)
	jmp	L1728
L2350:
	cmpl	$1, _numplayers
	jle	L1958
	cmpw	$3, _gNet+12
	jne	L1957
L1958:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L2360:
	testw	%cx, %cx
	je	L1970
	cmpl	$1, _numplayers
	jle	L1971
L1970:
	movswl	-64(%ebp), %ebx
	movl	$_s_IconNuke, %ecx
	movl	$1809, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%ebx, %eax
	call	__Z11IconDefaults
	cmpw	$-1, %di
	jne	L1656
	jmp	L1618
	.p2align 4,,10
	.p2align 3
L2348:
	subw	$551, %ax
	cmpw	$3, %ax
	jbe	L1734
	jmp	L1667
L2352:
	addl	$18, %eax
	movl	$-1171354717, %ebx
	subl	%ecx, %eax
	mull	%ebx
	movl	-76(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%eax)
	jmp	L1750
L1998:
	movswl	-64(%ebp), %eax
	movl	$500, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1637:
	movl	-76(%ebp), %eax
	movl	$69, %edx
	call	__Z18change_sprite_statss
	jmp	L1628
L1638:
	movl	-76(%ebp), %eax
	movl	$68, %edx
	call	__Z18change_sprite_statss
	jmp	L1628
L1635:
	movl	-76(%ebp), %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	xorl	%edx, %edx
	movw	%dx, 80(%eax)
	imulw	$120, 38(%ebx), %dx
	movl	$__Z13GenerateDripss, 36(%eax)
	movw	%dx, 216(%eax)
	movl	$41, %edx
	movl	%esi, %eax
	call	__Z18change_sprite_statss
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
	jmp	L1628
L2334:
	movzwl	_numwalls, %ebx
	testw	%bx, %bx
	jg	L1646
	jmp	L1618
L2349:
	cmpw	$2470, %ax
	je	L1690
	jmp	L1667
L1753:
	subl	$16, %ebx
	cmpw	$134, %bx
	ja	L1667
	movzwl	%bx, %ebx
	jmp	*L1762(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L1762:
	.long	L1765
	.long	L1667
	.long	L1667
	.long	L1819
	.long	L1667
	.long	L1818
	.long	L1667
	.long	L1817
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1816
	.long	L1815
	.long	L1814
	.long	L1765
	.long	L1813
	.long	L1812
	.long	L1811
	.long	L1667
	.long	L1667
	.long	L1810
	.long	L1809
	.long	L1765
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1802
	.long	L1802
	.long	L1765
	.long	L1808
	.long	L1807
	.long	L1667
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1667
	.long	L1765
	.long	L1806
	.long	L1805
	.long	L1804
	.long	L1803
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1802
	.long	L1765
	.long	L1765
	.long	L1801
	.long	L1667
	.long	L1765
	.long	L1800
	.long	L1765
	.long	L1799
	.long	L1798
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1667
	.long	L1765
	.long	L1765
	.long	L1797
	.long	L1796
	.long	L1667
	.long	L1795
	.long	L1794
	.long	L1794
	.long	L1793
	.long	L1792
	.long	L1667
	.long	L1791
	.long	L1667
	.long	L1790
	.long	L1667
	.long	L1789
	.long	L1667
	.long	L1667
	.long	L1788
	.long	L1787
	.long	L1786
	.long	L1765
	.long	L1765
	.long	L1765
	.long	L1785
	.long	L1784
	.long	L1667
	.long	L1783
	.long	L1667
	.long	L1782
	.long	L1781
	.long	L1780
	.long	L1780
	.long	L1780
	.long	L1780
	.long	L1780
	.long	L1780
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1779
	.long	L1779
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1778
	.long	L1777
	.long	L1776
	.long	L1775
	.long	L1774
	.long	L1773
	.long	L1772
	.long	L1667
	.long	L1667
	.long	L1667
	.long	L1771
	.long	L1770
	.long	L1667
	.long	L1769
	.long	L1768
	.long	L1767
	.long	L1766
	.long	L1765
	.long	L1764
	.long	L1763
	.long	L1761
	.text
L1959:
	movb	$19, 262(%eax)
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	jmp	L1960
L1989:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1736:
	cmpw	$666, %ax
	je	L1676
	jmp	L1667
L1922:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1984:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1980:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1956:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1968:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1978:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1966:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1926:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1986:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1950:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1944:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1946:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1954:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1964:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1928:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1924:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1940:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1936:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1934:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1976:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1962:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1918:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1932:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1974:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1952:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1942:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1916:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1982:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1938:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1920:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1930:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1948:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1914:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L2354:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1765:
	movswl	-64(%ebp), %eax
	movl	$500, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1780:
	movswl	-64(%ebp), %eax
	movl	$60, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
	.p2align 4,,10
	.p2align 3
L2353:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 10(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L2355:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 18(%eax)
	movzwl	28(%esi), %edx
	movw	%dx, 14(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L2356:
	movswl	-64(%ebp), %eax
	movl	$90, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2358:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 22(%eax)
	movswl	-64(%ebp), %eax
	movl	$50, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2357:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 22(%eax)
	movswl	-64(%ebp), %eax
	movl	$49, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1769:
	movl	-76(%ebp), %ecx
	movswl	-64(%ebp), %esi
	movswl	24(%ecx), %eax
	xorl	%ecx, %ecx
	movl	%esi, -80(%ebp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %ebx
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	-76(%ebp), %ecx
	movl	$1, %edx
	movl	%eax, %esi
	movswl	24(%ecx), %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
	movl	$-858993459, %ecx
	leal	34(%ebx), %eax
	subl	_sector, %eax
	mull	%ecx
	movl	$218, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 34(%ebx)
	movl	-76(%ebp), %eax
	movzwl	38(%eax), %edx
	leal	36(%ebx), %eax
	subl	_sector, %eax
	movw	%dx, -64(%ebp)
	mull	%ecx
	movl	-76(%ebp), %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzwl	-64(%ebp), %edx
	movw	%dx, 36(%ebx)
	movzbl	18(%ecx), %eax
	movl	$-1171354717, %edx
	movb	%al, -84(%ebp)
	leal	30(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	31(%ecx), %edx
	movl	$0, 76(%esi)
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movw	%ax, 216(%esi)
	movswl	24(%ecx), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	(%eax), %ecx
	movzwl	2(%eax), %ebx
	addl	%ecx, %ebx
	movw	%cx, -64(%ebp)
	leal	-1(%ebx), %eax
	xorl	%ebx, %ebx
	movw	%ax, -72(%ebp)
	cmpw	%cx, %ax
	jl	L1850
L1851:
	movzwl	-64(%ebp), %eax
	addl	$1, %ebx
	addl	%ebx, %eax
	cmpw	%ax, -72(%ebp)
	jge	L1851
L1850:
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1852
	movl	-76(%ebp), %ecx
	movswl	%bx, %ebx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 20(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%eax, (%esi)
	movl	%ebx, 24(%eax)
	movswl	32(%ecx), %edx
	sall	$2, %ebx
	movl	(%esi), %eax
	movl	%edx, 4(%eax)
	leal	36(%ecx), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	(%esi), %edx
	movzbl	37(%ecx), %ecx
	movl	%ecx, 12(%edx)
	movl	-76(%ebp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	(%esi), %eax
	movzbl	36(%ecx), %edx
	movl	%edx, 20(%eax)
	movl	(%esi), %eax
	movl	$0, (%eax)
	movl	(%esi), %eax
	movl	4(%eax), %edx
	movl	%edx, 8(%eax)
	movl	(%esi), %eax
	movl	%eax, -76(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1852
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -88(%ebp)
	call	_memset
	movl	-76(%ebp), %eax
	movl	-88(%ebp), %edx
	movl	%edx, 28(%eax)
	movl	(%esi), %eax
	movl	%eax, -76(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1852
	xorl	%edx, %edx
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -88(%ebp)
	call	_memset
	movl	-76(%ebp), %eax
	movl	-88(%ebp), %edx
	movzwl	-64(%ebp), %ecx
	movl	%edx, 32(%eax)
	movl	(%esi), %eax
	movl	12(%eax), %edx
	movl	%edx, 16(%eax)
	cmpw	%cx, -72(%ebp)
	jl	L1854
	movw	%di, -76(%ebp)
	xorl	%ebx, %ebx
L1855:
	movswl	-64(%ebp), %eax
	movl	_wall, %edx
	movswl	%bx, %ecx
	addl	$1, %ebx
	addw	$1, -64(%ebp)
	sall	$5, %eax
	movl	(%edx,%eax), %edi
	movl	(%esi), %edx
	movl	28(%edx), %edx
	movl	%edi, (%edx,%ecx,4)
	movl	_wall, %edx
	movl	4(%edx,%eax), %edx
	movl	(%esi), %eax
	movl	32(%eax), %eax
	movl	%edx, (%eax,%ecx,4)
	movzwl	-64(%ebp), %eax
	cmpw	%ax, -72(%ebp)
	jge	L1855
	movzwl	-76(%ebp), %edi
L1854:
	movl	68(%esi), %eax
	cmpb	$1, -84(%ebp)
	ja	L2363
	andl	$-9, %eax
	movl	$__Z9DoRotators, 36(%esi)
	movl	%eax, 68(%esi)
L1857:
	movl	-80(%ebp), %eax
	movl	$71, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1770:
	movswl	-64(%ebp), %eax
	movl	$81, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1771:
	movl	-76(%ebp), %eax
	movl	$-858993459, %esi
	movl	_sector, %ecx
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$58, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$16384, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L1772:
	movl	-76(%ebp), %ebx
	movl	$-1171354717, %edx
	leal	36(%ebx), %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %esi
	shrl	$5, %esi
	movl	_spritechanged(,%esi,4), %eax
	movl	%esi, -72(%ebp)
	leal	1(%eax), %edx
	movl	%edx, _spritechanged(,%esi,4)
	cmpb	$0, 37(%ebx)
	je	L1836
	addl	$2, %eax
	movl	%eax, _spritechanged(,%esi,4)
	cmpb	$1, 37(%ebx)
	je	L1836
	testb	$64, 42(%ebx)
	je	L1837
L1836:
	movl	-76(%ebp), %ebx
	movl	_sector, %edx
	movswl	24(%ebx), %eax
	imull	$40, %eax, %eax
	leal	(%edx,%eax), %esi
	cmpb	$0, 18(%ebx)
	jne	L1839
	leal	12(%esi), %eax
	movl	$40, %ebx
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	addl	$1, _sectorchanged(,%eax,4)
	orw	$-32768, 12(%esi)
L1837:
	movl	-76(%ebp), %esi
	movl	-72(%ebp), %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	34(%esi), %eax
	movzbl	37(%esi), %ebx
	subl	%ecx, %eax
	movl	$-1171354717, %ecx
	mull	%ecx
	movl	%edx, %eax
	movl	$52, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%bx, 34(%esi)
	addl	$1, _spritechanged(,%eax,4)
	movswl	-64(%ebp), %eax
	salw	$7, 34(%esi)
	call	__Z18change_sprite_statss
	jmp	L1667
L1839:
	leal	14(%esi), %eax
	movl	$40, %ebx
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ebx
	addl	$1, _sectorchanged(,%eax,4)
	orw	$-32768, 14(%esi)
	jmp	L1837
L1773:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	orl	$512, 4(%eax)
	movzwl	38(%esi), %edx
	movw	%dx, 18(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1774:
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	22(%esi), %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$65, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzwl	28(%esi), %eax
	movw	%ax, 22(%esi)
	movswl	-64(%ebp), %eax
	call	__Z18change_sprite_statss
	jmp	L1667
L1775:
	movswl	-64(%ebp), %eax
	movl	$91, %edx
	call	__Z18change_sprite_statss
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	22(%esi), %eax
	subl	_sprite, %eax
	movswl	34(%esi), %ecx
	mull	%edx
	imull	$1200, %ecx, %ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 22(%esi)
	jmp	L1667
L1776:
	movswl	-64(%ebp), %eax
	movl	$45, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1852:
	movl	$1, %eax
	call	__Z13handle_memerri
L2363:
	orl	$8, %eax
	movl	%eax, 68(%esi)
	jmp	L1857
L1764:
	movl	-76(%ebp), %esi
	leal	-36(%ebp), %edx
	movlps	(%esi), %xmm2
	movlps	%xmm2, -48(%ebp)
	movl	8(%esi), %eax
	movlps	%xmm2, -72(%ebp)
	movl	%eax, -72(%ebp)
	subl	$2048, %eax
	movl	%eax, -40(%ebp)
	movswl	28(%esi), %eax
	movl	$1090519104, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movswl	_sintable(%eax,%eax), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movl	%edx, 12(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	movswl	24(%esi), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movswl	-22(%ebp), %eax
	cmpw	$-1, %ax
	je	L2364
	movl	_wall, %edx
	sall	$5, %eax
	addl	%eax, %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$128, 30(%edx)
	call	__Z10KillSprites
	jmp	L1667
L1766:
	movswl	-64(%ebp), %eax
	movl	$94, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2364:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1767:
	movl	-76(%ebp), %ecx
	movswl	-64(%ebp), %ebx
	movswl	24(%ecx), %eax
	xorl	%ecx, %ecx
	movl	%ebx, -80(%ebp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %esi
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	-76(%ebp), %ecx
	movl	$1, %edx
	movl	%eax, %ebx
	movswl	24(%ecx), %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
	movl	$-858993459, %ecx
	leal	34(%esi), %eax
	subl	_sector, %eax
	mull	%ecx
	movl	$220, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 34(%esi)
	movl	-76(%ebp), %eax
	movzwl	38(%eax), %edx
	leal	36(%esi), %eax
	subl	_sector, %eax
	movw	%dx, -64(%ebp)
	mull	%ecx
	movl	-76(%ebp), %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movzwl	-64(%ebp), %edx
	movw	%dx, 36(%esi)
	movzbl	18(%ecx), %eax
	movl	$-1171354717, %esi
	movb	%al, -64(%ebp)
	leal	30(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	31(%ecx), %edx
	movl	$0, 76(%ebx)
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movw	%ax, 216(%ebx)
	movl	$36, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1852
	movl	-76(%ebp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%eax, (%ebx)
	movswl	32(%ecx), %edx
	movl	%edx, 4(%eax)
	leal	36(%ecx), %eax
	subl	_sprite, %eax
	mull	%esi
	movl	%ecx, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, %eax
	movzbl	37(%ecx), %ecx
	movl	(%ebx), %edx
	movl	%ecx, 12(%edx)
	addl	$1, _spritechanged(,%eax,4)
	movl	(%ebx), %eax
	movzbl	36(%esi), %edx
	movl	%edx, 20(%eax)
	movl	(%ebx), %eax
	movl	$0, (%eax)
	movl	(%ebx), %eax
	movl	4(%eax), %edx
	movl	%edx, 8(%eax)
	movl	(%ebx), %eax
	movl	$0, 24(%eax)
	movl	(%ebx), %eax
	movl	12(%eax), %edx
	movl	%edx, 16(%eax)
	movl	68(%ebx), %eax
	cmpb	$1, -64(%ebp)
	ja	L2365
	andl	$-9, %eax
	movl	$__Z8DoSlidors, 36(%ebx)
	movl	%eax, 68(%ebx)
L1859:
	movl	-76(%ebp), %eax
	testb	$4, 43(%eax)
	jne	L2366
L1860:
	movl	-80(%ebp), %eax
	movl	$73, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1768:
	movswl	-64(%ebp), %eax
	movl	$72, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2366:
	movl	-80(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z20DoSlidorInstantCloses
	jmp	L1860
L2365:
	orl	$8, %eax
	movl	%eax, 68(%ebx)
	jmp	L1859
L1779:
	movswl	_headspritestat+120, %eax
	cmpl	$-1, %eax
	je	L1901
	movw	%di, -72(%ebp)
	jmp	L1900
L1902:
	cmpl	$-1, %edi
	je	L2316
	movl	_sprite, %ecx
	movl	%edi, %eax
L1900:
	movswl	_nextspritestat(%eax,%eax), %edi
	imull	$44, %eax, %eax
	movl	-76(%ebp), %esi
	addl	%ecx, %eax
	movzwl	40(%eax), %ecx
	cmpw	%cx, 40(%esi)
	jne	L1902
	movl	-76(%ebp), %esi
	movzwl	38(%eax), %ecx
	cmpw	%cx, 38(%esi)
	jne	L1902
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%esi, %eax
	movl	(%eax), %ebx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, __ZN6loguru18g_stderr_verbosityE
	cmovge	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	4(%esi), %esi
	cmpl	$-2, %eax
	jge	L2367
L1903:
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L1902
L2316:
	movzwl	-72(%ebp), %edi
L1901:
	movswl	-64(%ebp), %eax
	movl	$60, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2367:
	movl	%ecx, 28(%esp)
	movl	%ecx, -84(%ebp)
	movl	%edx, 24(%esp)
	movl	%edx, -80(%ebp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC44, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-84(%ebp), %ecx
	movl	-80(%ebp), %edx
	jmp	L1903
L1817:
	movl	-76(%ebp), %ecx
	leal	-36(%ebp), %edx
	movlps	(%ecx), %xmm0
	movlps	%xmm0, -48(%ebp)
	movl	8(%ecx), %eax
	movlps	%xmm0, -72(%ebp)
	movl	%eax, -72(%ebp)
	subl	$2048, %eax
	movl	%eax, -40(%ebp)
	movswl	28(%ecx), %eax
	movl	$1090519104, 24(%esp)
	movl	%edx, 20(%esp)
	movl	$0, 16(%esp)
	movswl	_sintable(%eax,%eax), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movl	%edx, 12(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	movswl	24(%ecx), %eax
	movl	%eax, 4(%esp)
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movzwl	-22(%ebp), %ecx
	cmpw	$-1, %cx
	je	L2368
	movl	-76(%ebp), %eax
	movl	_sprite, %ebx
	movl	$-1171354717, %edx
	addl	$30, %eax
	subl	%ebx, %eax
	mull	%edx
	movl	-76(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 30(%eax)
	testb	$64, 42(%eax)
	je	L1828
	addl	$32, %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	subl	%ebx, %eax
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	-76(%ebp), %eax
	movw	$0, 32(%eax)
L1829:
	movl	-76(%ebp), %ecx
	movzwl	34(%ecx), %eax
	movw	%ax, 28(%ecx)
	movzwl	-20(%ebp), %edx
	cmpw	$4096, %dx
	ja	L2318
	movzwl	24(%ebx,%esi), %eax
	cmpw	%ax, %dx
	je	L2318
	cmpw	$4096, %ax
	je	L2318
	movswl	-64(%ebp), %esi
	movl	%edx, -72(%ebp)
	movl	%esi, %eax
	movl	%esi, -80(%ebp)
	call	_do_deletespritesect
	movswl	-72(%ebp), %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
L1830:
	movl	-80(%ebp), %eax
	movl	$89, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1818:
	movl	-76(%ebp), %esi
	testb	$64, 42(%esi)
	je	L1824
	leal	32(%esi), %eax
	xorl	%edx, %edx
	subl	%ecx, %eax
	movl	$44, %ecx
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	movw	$0, 32(%esi)
L1825:
	movswl	-64(%ebp), %eax
	movl	$88, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2318:
	movswl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
	jmp	L1830
L1824:
	movl	-76(%ebp), %esi
	movzwl	38(%esi), %eax
	movw	%ax, 32(%esi)
	jmp	L1825
L1828:
	movl	-76(%ebp), %ecx
	movzwl	38(%ecx), %eax
	movw	%ax, 32(%ecx)
	jmp	L1829
L2368:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1819:
	movl	-76(%ebp), %esi
	testb	$64, 42(%esi)
	je	L1822
	leal	32(%esi), %eax
	xorl	%edx, %edx
	subl	%ecx, %eax
	movl	$44, %ecx
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	movw	$0, 32(%esi)
L1823:
	movswl	-64(%ebp), %eax
	movl	$87, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1822:
	movl	-76(%ebp), %esi
	movzwl	38(%esi), %eax
	movw	%ax, 32(%esi)
	jmp	L1823
L1809:
	movl	-76(%ebp), %eax
	movl	_sector, %ebx
	movl	_wall, %ecx
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movzwl	(%eax), %esi
	movswl	%si, %eax
L1908:
	sall	$5, %eax
	leal	(%ecx,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%edx), %eax
	orw	$16384, 14(%edx)
	cmpw	$16383, %ax
	ja	L1907
	movl	%eax, %ebx
	andl	$134217727, %eax
	sall	$5, %ebx
	addl	$1, _wallchanged(,%eax,4)
	orw	$16384, 14(%ecx,%ebx)
L1907:
	movswl	8(%edx), %eax
	cmpw	%ax, %si
	jne	L1908
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1810:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movl	$37, %edx
	movw	%dx, 12(%eax)
	movzwl	38(%esi), %edx
	movw	%dx, 16(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1811:
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	call	__Z11GetSectUsers
	orl	$4, 4(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1812:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	orl	$2, 4(%eax)
	movzwl	38(%esi), %edx
	movw	%dx, 22(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1813:
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	call	__Z11GetSectUsers
	orl	$1, 4(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1814:
	movswl	-64(%ebp), %eax
	movl	$53, %edx
	movl	$-1171354717, %ebx
	call	__Z18change_sprite_statss
	movl	-76(%ebp), %esi
	movl	$506, %edx
	movswl	24(%esi), %eax
	call	__Z17COVERinsertspritess
	movl	_sprite, %esi
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %ecx
	addl	$12, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 12(%ecx)
	leal	42(%ecx), %eax
	subl	%esi, %eax
	movl	-76(%ebp), %esi
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 42(%ecx)
	movl	(%esi), %eax
	movl	%eax, (%ecx)
	movl	4(%esi), %eax
	movl	%eax, 4(%ecx)
	movl	8(%esi), %eax
	movl	%eax, 8(%ecx)
	movswl	28(%esi), %eax
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, %esi
	leal	28(%ecx), %eax
	subl	_sprite, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%si, 28(%ecx)
	movl	-76(%ebp), %esi
	movzwl	14(%esi), %eax
	movw	%ax, 14(%ecx)
	movswl	28(%esi), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	leal	(%eax,%eax,2), %eax
	sarl	$7, %eax
	movl	%eax, %esi
	movl	%ecx, %eax
	subl	_sprite, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	addl	%esi, (%ecx)
	movl	-76(%ebp), %esi
	movzwl	28(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	leal	(%eax,%eax,2), %esi
	leal	4(%ecx), %eax
	subl	_sprite, %eax
	mull	%ebx
	sarl	$7, %esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	addl	%esi, 4(%ecx)
	jmp	L1667
L1815:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movl	$29, %ecx
	movw	%cx, 12(%eax)
	movw	%dx, 22(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1816:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movzwl	38(%esi), %edx
	movw	%dx, 22(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1761:
	movswl	-64(%ebp), %eax
	movl	$66, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1763:
	movl	-76(%ebp), %eax
	testb	$2, 43(%eax)
	je	L1833
	cmpl	$1, _numplayers
	jle	L1834
	cmpw	$3, _gNet+12
	je	L1834
L1833:
	movswl	-64(%ebp), %eax
	movl	$80, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1834:
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1777:
	movswl	-64(%ebp), %eax
	movl	$86, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1778:
	movswl	-64(%ebp), %eax
	movl	$85, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1781:
	movl	-76(%ebp), %edx
	movl	_sector, %ebx
	leal	8(%edx), %eax
	movl	$-1171354717, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	movl	-76(%ebp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movswl	24(%edx), %eax
	movl	$0, 8(%edx)
	leal	(%eax,%eax,4), %eax
	movzbl	28(%ebx,%eax,8), %eax
	movl	%edx, %ebx
	movb	%al, -76(%ebp)
	leal	22(%edx), %eax
	movl	$-1171354717, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	movl	%ebx, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	-76(%ebp), %eax
	movl	%edx, -76(%ebp)
	movb	%al, 22(%ebx)
	movswl	24(%ebx), %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	movzbl	20(%ebx,%eax,8), %eax
	movb	%al, -80(%ebp)
	leal	23(%edx), %eax
	subl	%ecx, %eax
	movl	$-1171354717, %ecx
	mull	%ecx
	movl	-76(%ebp), %ecx
	movzbl	-80(%ebp), %eax
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _spritechanged(,%ebx,4)
	movl	_sector, %ebx
	movb	%al, 23(%ecx)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movzwl	(%eax), %ebx
	movzwl	2(%eax), %edx
	addl	%ebx, %edx
	leal	-1(%edx), %eax
	movw	%ax, -88(%ebp)
	cmpw	%bx, %ax
	jl	L1883
	movzwl	42(%ecx), %eax
	andw	$1024, %ax
	je	L1885
	movl	_wall, %ecx
	movw	$0, -84(%ebp)
	movl	%ebx, %edx
	movl	%ecx, -80(%ebp)
L1889:
	movl	-80(%ebp), %ecx
	movswl	%dx, %eax
	addl	$1, %edx
	sall	$5, %eax
	movzwl	10(%ecx,%eax), %eax
	movzwl	-84(%ebp), %ecx
	notl	%eax
	shrw	$15, %ax
	leal	1(%ecx,%eax), %eax
	movw	%ax, -84(%ebp)
	cmpw	%dx, -88(%ebp)
	jge	L1889
	jmp	L1886
L1885:
	addl	$1, %eax
	leal	(%ebx,%eax), %edx
	cmpw	%dx, -88(%ebp)
	jge	L1885
	movw	%ax, -84(%ebp)
L1886:
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	-72(%ebp), %ecx
	movswl	-84(%ebp), %edx
	movl	%eax, -64(%ebp)
	movl	%eax, _User(,%ecx,4)
	movl	%edx, 4(%eax)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -72(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1852
	movl	-72(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -72(%ebp)
	movl	%eax, (%esp)
	call	_memset
	movl	-64(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	%esi, -84(%ebp)
	movw	%bx, -64(%ebp)
	movl	%eax, 8(%ecx)
	xorl	%ecx, %ecx
L1893:
	movswl	-64(%ebp), %eax
	movl	-72(%ebp), %esi
	sall	$5, %eax
	movl	%eax, %edx
	movl	_wall, %eax
	movzbl	20(%eax,%edx), %ebx
	movswl	%cx, %eax
	movb	%bl, (%esi,%eax)
	movl	-76(%ebp), %eax
	movl	%ecx, %ebx
	addl	$1, %ecx
	testb	$4, 43(%eax)
	je	L1891
	movl	_wall, %eax
	movswl	10(%eax,%edx), %edx
	cmpw	$16383, %dx
	ja	L1891
	sall	$5, %edx
	movswl	%cx, %ecx
	movzbl	20(%eax,%edx), %eax
	movb	%al, (%esi,%ecx)
	leal	2(%ebx), %ecx
L1891:
	addw	$1, -64(%ebp)
	movzwl	-64(%ebp), %eax
	cmpw	%ax, -88(%ebp)
	jge	L1893
	movl	-84(%ebp), %esi
	jmp	L1994
L1883:
	movswl	-64(%ebp), %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %ebx
	movl	-72(%ebp), %eax
	movl	%ebx, _User(,%eax,4)
	xorl	%eax, %eax
	movl	%eax, 4(%ebx)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%edx
	testl	%eax, %eax
	je	L1852
	movl	%eax, 8(%ebx)
L1994:
	movl	_sprite, %eax
	movzwl	26(%eax,%esi), %eax
	cmpw	$1024, %ax
	je	L1667
	cmpw	$84, %ax
	je	L1667
	movl	-80(%ebp), %esi
	movl	%esi, %eax
	call	_do_deletespritestat
	movl	$84, %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofstat
	jmp	L1667
L1783:
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	-76(%ebp), %esi
	xorl	%edx, %edx
	movl	%eax, %ebx
	movswl	24(%esi), %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
	movl	-76(%ebp), %eax
	movl	$-858993459, %edx
	movl	_sector, %esi
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ecx
	leal	38(,%ecx,8), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$64, 38(%esi,%ecx,8)
	movl	-76(%ebp), %esi
	movzbl	18(%esi), %eax
	movzwl	32(%esi), %edx
	movzwl	28(%esi), %ecx
	movw	%dx, -84(%ebp)
	movl	$-1171354717, %edx
	movb	%al, -64(%ebp)
	leal	30(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movzbl	31(%esi), %eax
	movzwl	12(%edx), %edx
	movzwl	42(%esi), %esi
	movw	%cx, 92(%ebx)
	movl	$0, 76(%ebx)
	andl	$8, %edx
	andl	$64, %esi
	movw	%dx, -72(%ebp)
	movswl	%cx, %edx
	movl	%edx, 168(%ebx)
	movzwl	-84(%ebp), %edx
	movw	%dx, 172(%ebx)
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	68(%ebx), %eax
	movw	%dx, 216(%ebx)
	movl	%eax, %edx
	orl	$8, %edx
	movl	%edx, 68(%ebx)
	cmpb	$2, -64(%ebp)
	je	L2321
	ja	L2369
	andl	$-9, %eax
	movl	$__Z7DoSpikes, 36(%ebx)
	movl	%eax, 68(%ebx)
L1864:
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	testw	%ax, %ax
	js	L2370
	movl	-76(%ebp), %edx
	movl	8(%edx), %ecx
	movl	4(%edx), %edx
	movl	%edx, -84(%ebp)
	leal	-52(%ebp), %edx
	movl	%ecx, -64(%ebp)
	leal	-36(%ebp), %ecx
	movl	%edx, 16(%esp)
	movl	%edx, 8(%esp)
	leal	-48(%ebp), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-76(%ebp), %eax
	movl	-64(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	(%eax), %eax
	call	__Z14getzrangepointiiisPiS_S_S_.part.0
L1866:
	cmpw	$0, -72(%ebp)
	jne	L1867
	movl	-36(%ebp), %eax
L2332:
	movl	-76(%ebp), %ecx
	movl	%eax, 112(%ebx)
	movl	%eax, 256(%ebx)
	movl	8(%ecx), %edx
	movl	%edx, 164(%ebx)
	testw	%si, %si
	jne	L2371
L1870:
	movl	112(%ebx), %eax
	movl	$82, %edx
	movl	%eax, 64(%ebx)
	movl	-80(%ebp), %eax
	call	__Z18change_sprite_statss
	jmp	L1667
L1782:
	movl	-76(%ebp), %edx
	movl	$-1171354717, %ebx
	leal	8(%edx), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	movl	-76(%ebp), %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	36(%edx), %eax
	subl	%ecx, %eax
	movl	$0, 8(%edx)
	mull	%ebx
	movl	%edx, %ebx
	shrl	$5, %ebx
	movl	_spritechanged(,%ebx,4), %eax
	leal	1(%eax), %edx
	movl	%edx, _spritechanged(,%ebx,4)
	movl	-76(%ebp), %edx
	cmpb	$0, 37(%edx)
	jne	L1871
	addl	$2, %eax
	movl	%eax, _spritechanged(,%ebx,4)
	movb	$1, 37(%edx)
L1871:
	movl	-76(%ebp), %edx
	movl	_sector, %ebx
	movswl	24(%edx), %eax
	leal	(%eax,%eax,4), %eax
	movzbl	28(%ebx,%eax,8), %eax
	movl	%edx, %ebx
	movb	%al, -76(%ebp)
	leal	22(%edx), %eax
	movl	$-1171354717, %edx
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	movl	%ebx, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	-76(%ebp), %eax
	movl	%edx, -76(%ebp)
	movb	%al, 22(%ebx)
	movswl	24(%ebx), %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	movzbl	20(%ebx,%eax,8), %eax
	movb	%al, -80(%ebp)
	leal	23(%edx), %eax
	subl	%ecx, %eax
	movl	$-1171354717, %ecx
	mull	%ecx
	movl	-76(%ebp), %ecx
	movzbl	-80(%ebp), %eax
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _spritechanged(,%ebx,4)
	movl	_sector, %ebx
	movb	%al, 23(%ecx)
	movswl	24(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movzwl	(%eax), %ebx
	movzwl	2(%eax), %edx
	addl	%ebx, %edx
	movw	%bx, -84(%ebp)
	leal	-1(%edx), %eax
	movw	%ax, -88(%ebp)
	cmpw	%bx, %ax
	jl	L1872
	movzwl	42(%ecx), %eax
	movl	%eax, %ebx
	movw	%ax, -80(%ebp)
	andw	$1024, %bx
	je	L1874
	movl	_wall, %ecx
	movzwl	-84(%ebp), %edx
	xorl	%ebx, %ebx
L1878:
	movswl	%dx, %eax
	addl	$1, %edx
	sall	$5, %eax
	movzwl	10(%ecx,%eax), %eax
	notl	%eax
	shrw	$15, %ax
	leal	1(%eax,%ebx), %ebx
	cmpw	%dx, -88(%ebp)
	jge	L1878
L1875:
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movswl	%bx, %ebx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, -72(%ebp)
	movl	%edx, _User(,%eax,4)
	movl	%ebx, 4(%edx)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -64(%ebp)
	testl	%eax, %eax
	je	L1852
	movl	%ebx, 8(%esp)
	movl	%eax, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-72(%ebp), %edx
	movl	%esi, -72(%ebp)
	movl	%edx, -92(%ebp)
	movl	%ebx, 8(%edx)
	xorl	%ebx, %ebx
L1882:
	movswl	-84(%ebp), %eax
	movl	-64(%ebp), %esi
	sall	$5, %eax
	movl	%eax, %ecx
	movl	_wall, %eax
	movzbl	20(%eax,%ecx), %edx
	movswl	%bx, %eax
	movb	%dl, (%esi,%eax)
	movl	-76(%ebp), %eax
	movl	%ebx, %edx
	addl	$1, %ebx
	testb	$4, 43(%eax)
	je	L1880
	movl	_wall, %eax
	movswl	10(%eax,%ecx), %ecx
	cmpw	$16383, %cx
	ja	L1880
	sall	$5, %ecx
	movswl	%bx, %ebx
	movzbl	20(%eax,%ecx), %eax
	movb	%al, (%esi,%ebx)
	leal	2(%edx), %ebx
L1880:
	addw	$1, -84(%ebp)
	movzwl	-84(%ebp), %eax
	cmpw	%ax, -88(%ebp)
	jge	L1882
	movl	-72(%ebp), %esi
	movl	-92(%ebp), %edx
	jmp	L1992
L1874:
	movzwl	-84(%ebp), %eax
	addl	$1, %ebx
	addl	%ebx, %eax
	cmpw	-88(%ebp), %ax
	jle	L1874
	jmp	L1875
L1872:
	movswl	-64(%ebp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	-72(%ebp), %eax
	movl	%edx, -64(%ebp)
	movl	%edx, _User(,%eax,4)
	movl	%ecx, 4(%edx)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	testl	%eax, %eax
	pushl	%edx
	movl	-64(%ebp), %edx
	je	L1852
	movl	%eax, 8(%edx)
L1992:
	movl	-76(%ebp), %eax
	movzbl	17(%eax), %eax
	movb	%al, 262(%edx)
	movl	_sprite, %eax
	movzwl	26(%eax,%esi), %eax
	cmpw	$83, %ax
	je	L1667
	cmpw	$1024, %ax
	je	L1667
	movl	-80(%ebp), %esi
	movl	%esi, %eax
	call	_do_deletespritestat
	movl	$83, %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofstat
	jmp	L1667
L1793:
	movl	-76(%ebp), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	$-858993459, %esi
	movl	_sector, %ecx
	orw	$-32768, 12(%eax)
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$63, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$4, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L1794:
	movl	-76(%ebp), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	$-858993459, %esi
	movl	_sector, %ecx
	orw	$-32768, 12(%eax)
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$62, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$4, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L1795:
	movl	-76(%ebp), %eax
	movl	_sector, %esi
	movzwl	24(%eax), %ebx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-858993459, %edx
	orw	$-32768, 12(%eax)
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ecx
	leal	38(,%ecx,8), %eax
	mull	%edx
	movswl	-64(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$62, %edx
	orw	$4, 38(%esi,%ecx,8)
	call	__Z18change_sprite_statss
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	30(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	cmpb	$1, 30(%esi)
	je	L1667
	movswl	%bx, %eax
	movl	_wall, %ecx
	imull	$40, %eax, %eax
	addl	_sector, %eax
	movzwl	(%eax), %edx
	movswl	%dx, %eax
L1906:
	sall	$5, %eax
	addl	%ecx, %eax
	cmpw	$16383, 10(%eax)
	ja	L1905
	leal	14(%eax), %ebx
	subl	%ecx, %ebx
	shrl	$5, %ebx
	addl	$1, _wallchanged(,%ebx,4)
	orw	$-32768, 14(%eax)
L1905:
	movswl	8(%eax), %eax
	cmpw	%ax, %dx
	jne	L1906
	jmp	L1667
L1796:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	testb	$64, 42(%esi)
	je	L1820
	orl	$64, 4(%eax)
L1820:
	movl	-76(%ebp), %esi
	movzwl	38(%esi), %edx
	movw	%dx, 20(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1797:
	movswl	-64(%ebp), %eax
	movl	$500, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1798:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movl	_sector, %ecx
	orl	$32, 4(%eax)
	movswl	24(%esi), %eax
	movl	$-858993459, %esi
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$64, 38(%ecx,%ebx,8)
	call	__Z10KillSprites
	jmp	L1667
L1799:
	movl	-76(%ebp), %esi
	movswl	24(%esi), %eax
	call	__Z11GetSectUsers
	movl	_sector, %ecx
	orl	$16, 4(%eax)
	movswl	24(%esi), %eax
	movl	$-858993459, %esi
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$64, 38(%ecx,%ebx,8)
	call	__Z10KillSprites
	jmp	L1667
L1800:
	movswl	-64(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-72(%ebp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L2372
L1898:
	movl	-76(%ebp), %esi
	movl	$-1171354717, %eax
	leal	20(%esi), %edx
	subl	-84(%ebp), %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _spritechanged(,%edx,4)
	cmpw	$16448, 20(%esi)
	jne	L1899
	addl	$2, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movw	$0, 20(%esi)
L1899:
	movl	-80(%ebp), %eax
	movl	$67, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2372:
	movl	-80(%ebp), %eax
	xorl	%ecx, %ecx
	movl	$2307, %edx
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %eax
	movl	%eax, -84(%ebp)
	jmp	L1898
L1801:
	movl	-76(%ebp), %esi
	movl	$-1171354717, %ebx
	leal	36(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$100, %eax
	movw	%ax, 36(%esi)
	leal	34(%esi), %eax
	subl	%ecx, %eax
	mull	%ebx
	movl	%edx, %eax
	movl	$100, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movswl	-64(%ebp), %eax
	movw	%dx, 34(%esi)
	movl	$59, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1803:
	movswl	-64(%ebp), %eax
	movl	$76, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1804:
	movl	-76(%ebp), %eax
	xorl	%edx, %edx
	movswl	24(%eax), %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
	movswl	-64(%ebp), %eax
	movl	$77, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1805:
	movl	-76(%ebp), %esi
	movl	_sector, %edx
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %ecx
	leal	(%edx,%ecx,8), %ebx
	xorl	%edx, %edx
	call	__Z17SetSectorWallBitssihh.constprop.0
	movl	_sprite, %eax
	movl	%eax, -72(%ebp)
	testb	$2, 14(%ebx)
	je	L1896
	movl	%esi, -76(%ebp)
	leal	32(%esi), %eax
	xorl	%edx, %edx
	subl	-72(%ebp), %eax
	movl	$44, %esi
	movzwl	26(%ebx), %ecx
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	-76(%ebp), %eax
	movw	%cx, 32(%eax)
	movl	$40, %ecx
	leal	14(%ebx), %eax
	subl	_sector, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	leal	26(%ebx), %eax
	subl	_sector, %eax
	divl	%ecx
	andw	$-3, 14(%ebx)
	addl	$1, _sectorchanged(,%eax,4)
	movw	$0, 26(%ebx)
L1896:
	testb	$2, 12(%ebx)
	je	L1897
	movl	-76(%ebp), %eax
	movl	$44, %esi
	xorl	%edx, %edx
	movzwl	18(%ebx), %ecx
	addl	$34, %eax
	subl	-72(%ebp), %eax
	divl	%esi
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	-76(%ebp), %eax
	movw	%cx, 34(%eax)
	movl	$40, %ecx
	leal	12(%ebx), %eax
	subl	_sector, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _sectorchanged(,%eax,4)
	leal	18(%ebx), %eax
	subl	_sector, %eax
	divl	%ecx
	andw	$-3, 12(%ebx)
	addl	$1, _sectorchanged(,%eax,4)
	movw	$0, 18(%ebx)
L1897:
	movl	4(%ebx), %eax
	subl	8(%ebx), %eax
	movl	%eax, %edx
	movl	-76(%ebp), %esi
	negl	%edx
	cmovns	%edx, %eax
	movl	$-1171354717, %edx
	sarl	$8, %eax
	movl	%eax, %ecx
	leal	28(%esi), %eax
	subl	-72(%ebp), %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$75, %edx
	movw	%cx, 28(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 4(%ebx)
	movswl	-64(%ebp), %eax
	call	__Z18change_sprite_statss
	jmp	L1667
L1806:
	movswl	-64(%ebp), %ebx
	xorl	%ecx, %ecx
	movl	$2307, %edx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$41, %edx
	movl	%eax, %esi
	movl	%eax, -64(%ebp)
	movl	%ebx, %eax
	call	__Z18change_sprite_statss
	movl	$__Z11DoLavaErupts, 36(%esi)
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	30(%esi), %ebx
	movl	%ebx, %eax
	subl	_sprite, %eax
	mull	%edx
	shrl	$5, %edx
	movl	%edx, %eax
	movl	_spritechanged(,%edx,4), %edx
	movl	%edx, %ecx
	addl	$1, %edx
	movl	%edx, _spritechanged(,%eax,4)
	cmpb	$0, 30(%esi)
	jne	L1894
	addl	$2, %ecx
	movl	%ecx, _spritechanged(,%eax,4)
	movb	$20, 30(%esi)
	movl	_spritechanged(,%eax,4), %edx
L1894:
	movl	-76(%ebp), %esi
	addl	$1, %edx
	movl	%edx, _spritechanged(,%eax,4)
	movzbl	30(%esi), %eax
	call	__Z11RandomRangei
	movl	-64(%ebp), %ecx
	movl	$-1171354717, %edx
	imull	$120, %eax, %eax
	movw	%ax, 216(%ecx)
	movl	_sprite, %ecx
	movl	%ebx, %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	leal	1(%edx), %ebx
	movl	%ebx, _spritechanged(,%eax,4)
	cmpb	$0, 31(%esi)
	jne	L1895
	addl	$2, %edx
	movl	%edx, _spritechanged(,%eax,4)
	movb	$10, 31(%esi)
L1895:
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	8(%esi), %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	addl	$7680, 8(%esi)
	jmp	L1667
L1807:
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	call	__Z11GetSectUsers
	orl	$8, 4(%eax)
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1808:
	movl	-76(%ebp), %esi
	movl	$8192, %edx
	movzwl	38(%esi), %eax
	movw	%ax, _pskybits_override
	movswl	28(%esi), %eax
	cmpw	$2048, %ax
	cmovle	%edx, %eax
	movl	%eax, _parallaxyscale_override
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1802:
	movswl	-64(%ebp), %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	-76(%ebp), %esi
	movl	$-1171354717, %edx
	leal	30(%esi), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$57, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$-1, %eax
	movw	%ax, 30(%esi)
	movl	%ebx, %eax
	call	__Z18change_sprite_statss
	jmp	L1667
L1785:
	movswl	-64(%ebp), %eax
	movl	$78, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1786:
	movswl	-64(%ebp), %eax
	movl	$74, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1787:
	movl	-76(%ebp), %eax
	movl	$-858993459, %esi
	movl	_sector, %ecx
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$500, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$16, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L1788:
	movl	-76(%ebp), %eax
	movl	$-858993459, %esi
	movl	_sector, %ecx
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$500, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$16, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L1789:
	movswl	-64(%ebp), %eax
	movl	$70, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1790:
	movl	-76(%ebp), %eax
	xorl	%ecx, %ecx
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %esi
	movswl	-64(%ebp), %eax
	xorl	%edx, %edx
	movl	%eax, -80(%ebp)
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %ebx
	testb	$32, 39(%esi)
	jne	L2373
L1840:
	movl	$-858993459, %ecx
	leal	38(%esi), %eax
	subl	_sector, %eax
	mull	%ecx
	movl	%edx, %eax
	movl	$1, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movl	-76(%ebp), %eax
	orw	$8192, 38(%esi)
	movswl	24(%eax), %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
	movl	-76(%ebp), %eax
	movl	_sector, %edx
	movswl	24(%eax), %eax
	movl	%edx, -64(%ebp)
	movl	$-858993459, %edx
	leal	(%eax,%eax,4), %ecx
	leal	38(,%ecx,8), %eax
	mull	%edx
	movl	%edx, %eax
	movl	-64(%ebp), %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	orw	$64, 38(%edx,%ecx,8)
	cmpw	$0, 34(%esi)
	jne	L1841
	cmpw	$0, 36(%esi)
	jne	L1841
	leal	34(%esi), %eax
	movl	$40, %ecx
	subl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movw	$206, 34(%esi)
L1841:
	movl	-76(%ebp), %ecx
	movzbl	18(%ecx), %eax
	movzwl	32(%ecx), %edx
	movb	%al, -84(%ebp)
	movzwl	28(%ecx), %eax
	movw	%dx, -88(%ebp)
	movl	$-1171354717, %edx
	movw	%ax, -72(%ebp)
	leal	30(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	12(%eax), %eax
	movzbl	31(%ecx), %edx
	movzwl	42(%ecx), %ecx
	movl	$0, 76(%ebx)
	andl	$8, %eax
	movw	%ax, -92(%ebp)
	movswl	-72(%ebp), %eax
	andl	$64, %ecx
	movl	%eax, 168(%ebx)
	movzwl	-72(%ebp), %eax
	movw	%ax, 92(%ebx)
	movzwl	-88(%ebp), %eax
	movw	%ax, 172(%ebx)
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movw	%ax, 216(%ebx)
	movl	68(%ebx), %eax
	movl	%eax, %edx
	orl	$8, %edx
	movl	%edx, 68(%ebx)
	cmpb	$2, -84(%ebp)
	je	L2320
	ja	L2374
	andl	$-9, %eax
	movl	$__Z7DoVators, 36(%ebx)
	movl	%eax, 68(%ebx)
L1845:
	cmpw	$0, -92(%ebp)
	jne	L1846
	movl	8(%esi), %eax
	movl	%eax, 256(%ebx)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 164(%ebx)
	testw	%cx, %cx
	jne	L2375
L1847:
	movl	8(%esi), %eax
L1848:
	movl	%eax, 64(%ebx)
	movl	-80(%ebp), %eax
	movl	$70, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L2373:
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	call	__Z11GetSectUsers
	orl	$128, 4(%eax)
	jmp	L1840
L2375:
	subl	8(%esi), %eax
	movl	$40, %ecx
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	leal	8(%esi), %eax
	subl	-64(%ebp), %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-72(%ebp), %eax
	addl	%eax, 8(%esi)
	movl	256(%ebx), %eax
	movl	%eax, 164(%ebx)
	xorl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	jmp	L1847
L1846:
	movl	4(%esi), %eax
	movl	%eax, 256(%ebx)
	movl	-76(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 164(%ebx)
	testw	%cx, %cx
	jne	L2376
L1849:
	movl	4(%esi), %eax
	jmp	L1848
L2374:
	cmpb	$3, -84(%ebp)
	jne	L1845
	andl	$-9, %eax
	movl	%eax, 68(%ebx)
L2320:
	movl	$__Z11DoVatorAutos, 36(%ebx)
	jmp	L1845
L2376:
	subl	4(%esi), %eax
	movl	$40, %ecx
	xorl	%edx, %edx
	movl	%eax, -72(%ebp)
	leal	4(%esi), %eax
	subl	-64(%ebp), %eax
	divl	%ecx
	addl	$1, _sectorchanged(,%eax,4)
	movl	-72(%ebp), %eax
	addl	%eax, 4(%esi)
	movl	256(%ebx), %eax
	movl	%eax, 164(%ebx)
	movl	$1, 8(%esp)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-76(%ebp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z21MoveSpritesWithSectorsih
	jmp	L1849
L1791:
	movl	-76(%ebp), %esi
	movl	_sector, %ebx
	movswl	24(%esi), %eax
	movl	$-858993459, %esi
	leal	(%eax,%eax,4), %ecx
	leal	38(,%ecx,8), %eax
	mull	%esi
	movl	-76(%ebp), %esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	orw	$16, 38(%ebx,%ecx,8)
	movswl	38(%esi), %eax
	movl	%eax, _PlaxCeilGlobZadjust
	movzbl	18(%esi), %eax
	movl	%eax, _PlaxFloorGlobZadjust
	movswl	-64(%ebp), %eax
	call	__Z10KillSprites
	jmp	L1667
L1792:
	movl	-76(%ebp), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	$-858993459, %esi
	movl	_sector, %ecx
	orw	$-32768, 12(%eax)
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %ebx
	leal	38(,%ebx,8), %eax
	mull	%esi
	movl	%edx, %eax
	movl	$64, %edx
	shrl	$5, %eax
	addl	$1, _sectorchanged(,%eax,4)
	movswl	-64(%ebp), %eax
	orw	$4, 38(%ecx,%ebx,8)
	call	__Z18change_sprite_statss
	jmp	L1667
L2369:
	cmpb	$3, -64(%ebp)
	jne	L1864
	andl	$-9, %eax
	movl	%eax, 68(%ebx)
L2321:
	movl	$__Z11DoSpikeAutos, 36(%ebx)
	jmp	L1864
L1784:
	movswl	-64(%ebp), %eax
	movl	$79, %edx
	call	__Z18change_sprite_statss
	jmp	L1667
L1867:
	movl	-48(%ebp), %eax
	jmp	L2332
L2370:
	movl	$-2147483648, -48(%ebp)
	movl	$2147483647, -36(%ebp)
	jmp	L1866
L2371:
	movl	%eax, 164(%ebx)
	movl	-80(%ebp), %eax
	movl	%edx, 112(%ebx)
	movl	%eax, (%esp)
	call	__Z10SpikeAligns
	jmp	L1870
	.cfi_endproc
LFE147:
	.globl	_ADLIB_TimbreBank
	.data
	.align 32
_ADLIB_TimbreBank:
	.ascii "!!"
	.ascii "\217\6"
	.ascii "\362\362"
	.ascii "Ev"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "K\0"
	.ascii "\362\362"
	.ascii "TV"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "I\0"
	.ascii "\362\362"
	.ascii "Uv"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\261a"
	.ascii "\16\0"
	.ascii "\362\363"
	.ascii ";\13"
	.ascii "\0\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\1!"
	.ascii "W\0"
	.ascii "\361\361"
	.ascii "8("
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\1!"
	.ascii "\223\0"
	.ascii "\361\361"
	.ascii "8("
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!6"
	.ascii "\200\16"
	.ascii "\242\361"
	.ascii "\1\325"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\1\1"
	.ascii "\222\0"
	.ascii "\302\302"
	.ascii "\250X"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "\14\201"
	.ascii "\\\0"
	.ascii "\366\363"
	.ascii "T\265"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\7\21"
	.ascii "\227\200"
	.ascii "\366\365"
	.ascii "2\21"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "\27\1"
	.ascii "!\0"
	.ascii "V\366"
	.ascii "\4\4"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "\30\201"
	.ascii "b\0"
	.ascii "\363\362"
	.ascii "\346\366"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\30!"
	.ascii "#\0"
	.ascii "\367\345"
	.ascii "U\330"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\25\1"
	.ascii "\221\0"
	.ascii "\366\366"
	.ascii "\246\346"
	.ascii "\0\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "E\201"
	.ascii "Y\200"
	.ascii "\323\243"
	.ascii "\202\343"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "\3\201"
	.ascii "I\200"
	.ascii "t\263"
	.ascii "U\5"
	.ascii "\1\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "q1"
	.ascii "\222\0"
	.ascii "\366\361"
	.ascii "\24\7"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "r0"
	.ascii "\24\0"
	.ascii "\307\307"
	.ascii "X\10"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "p\261"
	.ascii "D\0"
	.ascii "\252\212"
	.ascii "\30\10"
	.ascii "\0\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "#\261"
	.ascii "\223\0"
	.ascii "\227U"
	.ascii "#\24"
	.ascii "\1\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "a\261"
	.ascii "\23\200"
	.ascii "\227U"
	.ascii "\4\4"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "$\261"
	.ascii "H\0"
	.ascii "\230F"
	.ascii "*\32"
	.ascii "\1\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "a!"
	.ascii "\23\0"
	.ascii "\221a"
	.ascii "\6\7"
	.ascii "\1\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "!\241"
	.ascii "\23\211"
	.ascii "qa"
	.ascii "\6\7"
	.ascii "\0\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\2A"
	.ascii "\234\200"
	.ascii "\363\363"
	.ascii "\224\310"
	.ascii "\1\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "\3\21"
	.ascii "T\0"
	.ascii "\363\361"
	.ascii "\232\347"
	.ascii "\1\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "#!"
	.ascii "_\0"
	.ascii "\361\362"
	.ascii ":\370"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\3!"
	.ascii "\207\200"
	.ascii "\366\363"
	.ascii "\"\363"
	.ascii "\1\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\3!"
	.ascii "G\0"
	.ascii "\371\366"
	.ascii "T:"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "#!"
	.ascii "H\0"
	.ascii "\225\204"
	.ascii "\31\31"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "#!"
	.ascii "J\0"
	.ascii "\225\224"
	.ascii "\31\31"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\11\204"
	.ascii "\241\200"
	.ascii " \321"
	.ascii "O\370"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "!\242"
	.ascii "\36\0"
	.ascii "\224\303"
	.ascii "\6\246"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "11"
	.ascii "\22\0"
	.ascii "\361\361"
	.ascii "(\30"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "11"
	.ascii "\215\0"
	.ascii "\361\361"
	.ascii "\350x"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "12"
	.ascii "[\0"
	.ascii "Qq"
	.ascii "(H"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "\1!"
	.ascii "\213@"
	.ascii "\241\362"
	.ascii "\232\337"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\1!"
	.ascii "\211@"
	.ascii "\241\362"
	.ascii "\232\337"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "11"
	.ascii "\213\0"
	.ascii "\364\361"
	.ascii "\350x"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "11"
	.ascii "\22\0"
	.ascii "\361\361"
	.ascii "(\30"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "\25\0"
	.ascii "\335V"
	.ascii "\23&"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "\26\0"
	.ascii "\335f"
	.ascii "\23\6"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "q1"
	.ascii "I\0"
	.ascii "\321a"
	.ascii "\34\14"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "!#"
	.ascii "M\200"
	.ascii "qr"
	.ascii "\22\6"
	.ascii "\1\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "\361\341"
	.ascii "@\0"
	.ascii "\361o"
	.ascii "!\26"
	.ascii "\1\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "\2\1"
	.ascii "\32\200"
	.ascii "\365\205"
	.ascii "u5"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\2\1"
	.ascii "\35\200"
	.ascii "\365\363"
	.ascii "u\364"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\20\21"
	.ascii "A\0"
	.ascii "\365\362"
	.ascii "\5\303"
	.ascii "\1\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "!\242"
	.ascii "\233\1"
	.ascii "\261r"
	.ascii "%\10"
	.ascii "\1\0"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\241!"
	.ascii "\230\0"
	.ascii "\177?"
	.ascii "\3\7"
	.ascii "\1\1"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\241a"
	.ascii "\223\0"
	.ascii "\301O"
	.ascii "\22\5"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "!a"
	.ascii "\30\0"
	.ascii "\301O"
	.ascii "\"\5"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "1r"
	.ascii "[\203"
	.ascii "\364\212"
	.ascii "\25\5"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\241a"
	.ascii "\220\0"
	.ascii "tq"
	.ascii "9g"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "qr"
	.ascii "W\0"
	.ascii "Tz"
	.ascii "\5\5"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "\220A"
	.ascii "\0\0"
	.ascii "T\245"
	.ascii "cE"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\222\1"
	.ascii "\205\217"
	.ascii "\27\11"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\224\5"
	.ascii "u\217"
	.ascii "\27\11"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "!a"
	.ascii "\224\0"
	.ascii "v\202"
	.ascii "\25"
	.ascii "7"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "C\0"
	.ascii "\236b"
	.ascii "\27,"
	.ascii "\1\1"
	.byte	2
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\233\0"
	.ascii "a\177"
	.ascii "j\12"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "a\""
	.ascii "\212\6"
	.ascii "ut"
	.ascii "\37\17"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\241!"
	.ascii "\206\15"
	.ascii "rq"
	.ascii "U\30"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "M\0"
	.ascii "T\246"
	.ascii "<\34"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1a"
	.ascii "\217\0"
	.ascii "\223r"
	.ascii "\2\13"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1a"
	.ascii "\216\0"
	.ascii "\223r"
	.ascii "\3\11"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1a"
	.ascii "\221\0"
	.ascii "\223\202"
	.ascii "\3\11"
	.ascii "\1\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "1a"
	.ascii "\216\0"
	.ascii "\223r"
	.ascii "\17\17"
	.ascii "\1\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "K\0"
	.ascii "\252\217"
	.ascii "\26\12"
	.ascii "\1\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "\220\0"
	.ascii "~\213"
	.ascii "\27\14"
	.ascii "\1\1"
	.byte	6
	.byte	0
	.byte	0
	.ascii "12"
	.ascii "\201\0"
	.ascii "ua"
	.ascii "\31\31"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "2!"
	.ascii "\220\0"
	.ascii "\233r"
	.ascii "!\27"
	.ascii "\0\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "\341\341"
	.ascii "\37\0"
	.ascii "\205e"
	.ascii "_\32"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\341\341"
	.ascii "F\0"
	.ascii "\210e"
	.ascii "_\32"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\241!"
	.ascii "\234\0"
	.ascii "uu"
	.ascii "\37\12"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "\213\0"
	.ascii "\204e"
	.ascii "X\32"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\341\241"
	.ascii "L\0"
	.ascii "fe"
	.ascii "V&"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "b\241"
	.ascii "\313\0"
	.ascii "vU"
	.ascii "F6"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "b\241"
	.ascii "\231\0"
	.ascii "WV"
	.ascii "\7\7"
	.ascii "\0\0"
	.byte	11
	.byte	0
	.byte	0
	.ascii "b\241"
	.ascii "\223\0"
	.ascii "wv"
	.ascii "\7\7"
	.ascii "\0\0"
	.byte	11
	.byte	0
	.byte	0
	.ascii "\"!"
	.ascii "Y\0"
	.ascii "\377\377"
	.ascii "\3\17"
	.ascii "\2\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\16\0"
	.ascii "\377\377"
	.ascii "\17\17"
	.ascii "\1\1"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\"!"
	.ascii "F\200"
	.ascii "\206d"
	.ascii "U\30"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!\241"
	.ascii "E\0"
	.ascii "f\226"
	.ascii "\22\12"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!\""
	.ascii "\213\0"
	.ascii "\222\221"
	.ascii "**"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\242a"
	.ascii "\236@"
	.ascii "\337o"
	.ascii "\5\7"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii " `"
	.ascii "\32\0"
	.ascii "\357\217"
	.ascii "\1\6"
	.ascii "\0\2"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\217\200"
	.ascii "\361\364"
	.ascii ")\11"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "w\241"
	.ascii "\245\0"
	.ascii "S\240"
	.ascii "\224\5"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "a\261"
	.ascii "\37\200"
	.ascii "\250%"
	.ascii "\21\3"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "aa"
	.ascii "\27\0"
	.ascii "\221U"
	.ascii "4\26"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "qr"
	.ascii "]\0"
	.ascii "Tj"
	.ascii "\1\3"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!\242"
	.ascii "\227\0"
	.ascii "!B"
	.ascii "C5"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\241!"
	.ascii "\34\0"
	.ascii "\241"
	.ascii "1"
	.ascii "wG"
	.ascii "\1\1"
	.byte	0
	.byte	0
	.byte	0
	.ascii "!a"
	.ascii "\211\3"
	.ascii "\21B"
	.ascii "3%"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "\241!"
	.ascii "\25\0"
	.ascii "\21\317"
	.ascii "G\7"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii ":Q"
	.ascii "\316\0"
	.ascii "\370\206"
	.ascii "\366\2"
	.ascii "\0\0"
	.byte	2
	.byte	0
	.byte	0
	.ascii "!!"
	.ascii "\25\0"
	.ascii "!A"
	.ascii "#\23"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\6\1"
	.ascii "[\0"
	.ascii "t\245"
	.ascii "\225r"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\"a"
	.ascii "\222\203"
	.ascii "\261\362"
	.ascii "\201&"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "AB"
	.ascii "M\0"
	.ascii "\361\362"
	.ascii "Q\365"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "a\243"
	.ascii "\224\200"
	.ascii "\21\21"
	.ascii "Q\23"
	.ascii "\1\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "a\241"
	.ascii "\214\200"
	.ascii "\21\35"
	.ascii "1\3"
	.ascii "\0\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\244a"
	.ascii "L\0"
	.ascii "\363\201"
	.ascii "s#"
	.ascii "\1\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "\2\7"
	.ascii "\205\3"
	.ascii "\322\362"
	.ascii "S\366"
	.ascii "\0\1"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\21\23"
	.ascii "\14\200"
	.ascii "\243\242"
	.ascii "\21\345"
	.ascii "\1\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "\21\21"
	.ascii "\6\0"
	.ascii "\366\362"
	.ascii "A\346"
	.ascii "\1\2"
	.byte	4
	.byte	0
	.byte	0
	.ascii "\223\221"
	.ascii "\221\0"
	.ascii "\324\353"
	.ascii "2\21"
	.ascii "\0\1"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\4\1"
	.ascii "O\0"
	.ascii "\372\302"
	.ascii "V\5"
	.ascii "\0\0"
	.byte	12
	.byte	0
	.byte	0
	.ascii "!\""
	.ascii "I\0"
	.ascii "|o"
	.ascii " \14"
	.ascii "\0\1"
	.byte	6
	.byte	0
	.byte	0
	.ascii "1!"
	.ascii "\205\0"
	.ascii "\335V"
	.ascii "3\26"
	.ascii "\1\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii " !"
	.ascii "\4\201"
	.ascii "\332\217"
	.ascii "\5\13"
	.ascii "\2\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\5\3"
	.ascii "j\200"
	.ascii "\361\303"
	.ascii "\345\345"
	.ascii "\0\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\7\2"
	.ascii "\25\0"
	.ascii "\354\370"
	.ascii "&\26"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "\5\1"
	.ascii "\235\0"
	.ascii "g\337"
	.ascii "5\5"
	.ascii "\0\0"
	.byte	8
	.byte	0
	.byte	0
	.ascii "\30\22"
	.ascii "\226\0"
	.ascii "\372\370"
	.ascii "(\345"
	.ascii "\0\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "\20\0"
	.ascii "\206\3"
	.ascii "\250\372"
	.ascii "\7\3"
	.ascii "\0\0"
	.byte	6
	.byte	0
	.byte	0
	.ascii "\21\20"
	.ascii "A\3"
	.ascii "\370\363"
	.ascii "G\3"
	.ascii "\2\0"
	.byte	4
	.byte	0
	.byte	0
	.ascii "\1\20"
	.ascii "\216\0"
	.ascii "\361\363"
	.ascii "\6\2"
	.ascii "\2\0"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\16\300"
	.ascii "\0\0"
	.ascii "\37\37"
	.ascii "\0\377"
	.ascii "\0\3"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\6\3"
	.ascii "\200\210"
	.ascii "\370V"
	.ascii "$\204"
	.ascii "\0\2"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\16\320"
	.ascii "\0\5"
	.ascii "\370"
	.ascii "4"
	.ascii "\0\4"
	.ascii "\0\3"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\16\300"
	.ascii "\0\0"
	.ascii "\366\37"
	.ascii "\0\2"
	.ascii "\0\3"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\325\332"
	.ascii "\225@"
	.ascii "7V"
	.ascii "\243"
	.ascii "7"
	.ascii "\0\0"
	.byte	0
	.byte	0
	.byte	0
	.ascii "5\24"
	.ascii "\\\10"
	.ascii "\262\364"
	.ascii "a\25"
	.ascii "\2\0"
	.byte	10
	.byte	0
	.byte	0
	.ascii "\16\320"
	.ascii "\0\0"
	.ascii "\366O"
	.ascii "\0\365"
	.ascii "\0\3"
	.byte	14
	.byte	0
	.byte	0
	.ascii "&\344"
	.ascii "\0\0"
	.ascii "\377\22"
	.ascii "\1\26"
	.ascii "\0\1"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\0\0"
	.ascii "\0\0"
	.ascii "\363\366"
	.ascii "\360\311"
	.ascii "\0\2"
	.byte	14
	.byte	0
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\0\0"
	.ascii "\0\0"
	.ascii "\374\372"
	.ascii "\5\27"
	.ascii "\2\0"
	.byte	14
	.byte	52
	.byte	0
	.ascii "\0\1"
	.ascii "\2\0"
	.ascii "\377\377"
	.ascii "\7\10"
	.ascii "\0\0"
	.byte	0
	.byte	48
	.byte	0
	.ascii "\0\0"
	.ascii "\0\0"
	.ascii "\374\372"
	.ascii "\5\27"
	.ascii "\2\0"
	.byte	14
	.byte	58
	.byte	0
	.ascii "\0\0"
	.ascii "\0\0"
	.ascii "\366\366"
	.ascii "\14\6"
	.ascii "\0\0"
	.byte	4
	.byte	60
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	47
	.byte	0
	.ascii "\0\0"
	.ascii "\3\0"
	.ascii "\370\366"
	.ascii "*E"
	.ascii "\0\1"
	.byte	4
	.byte	43
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	49
	.byte	0
	.ascii "\0\0"
	.ascii "\3\0"
	.ascii "\370\366"
	.ascii "*E"
	.ascii "\0\1"
	.byte	4
	.byte	43
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	51
	.byte	0
	.ascii "\0\0"
	.ascii "\3\0"
	.ascii "\370\366"
	.ascii "*E"
	.ascii "\0\1"
	.byte	4
	.byte	43
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	54
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	57
	.byte	0
	.ascii "\0\0"
	.ascii "\3\0"
	.ascii "\370\366"
	.ascii "*E"
	.ascii "\0\1"
	.byte	4
	.byte	72
	.byte	0
	.ascii "\14\22"
	.ascii "\0\0"
	.ascii "\366\373"
	.ascii "\10G"
	.ascii "\0\2"
	.byte	10
	.byte	60
	.byte	0
	.ascii "\16\320"
	.ascii "\0\12"
	.ascii "\365\237"
	.ascii "0\2"
	.ascii "\0\0"
	.byte	14
	.byte	76
	.byte	0
	.ascii "\16\7"
	.ascii "\12]"
	.ascii "\344\365"
	.ascii "\344\345"
	.ascii "\3\1"
	.byte	6
	.byte	84
	.byte	0
	.ascii "\2\5"
	.ascii "\3\12"
	.ascii "\264\227"
	.ascii "\4\367"
	.ascii "\0\0"
	.byte	14
	.byte	36
	.byte	0
	.ascii "N\236"
	.ascii "\0\0"
	.ascii "\366\237"
	.ascii "\0\2"
	.ascii "\0\3"
	.byte	14
	.byte	76
	.byte	0
	.ascii "\21\20"
	.ascii "E\10"
	.ascii "\370\363"
	.ascii "7\5"
	.ascii "\2\0"
	.byte	8
	.byte	84
	.byte	0
	.ascii "\16\320"
	.ascii "\0\0"
	.ascii "\366\237"
	.ascii "\0\2"
	.ascii "\0\3"
	.byte	14
	.byte	83
	.byte	0
	.ascii "\200\20"
	.ascii "\0\15"
	.ascii "\377\377"
	.ascii "\3\24"
	.ascii "\3\0"
	.byte	12
	.byte	84
	.byte	0
	.ascii "\16\7"
	.ascii "\10Q"
	.ascii "\370\364"
	.ascii "B\344"
	.ascii "\0\3"
	.byte	14
	.byte	24
	.byte	0
	.ascii "\16\320"
	.ascii "\0\12"
	.ascii "\365\237"
	.ascii "0\2"
	.ascii "\0\0"
	.byte	14
	.byte	77
	.byte	0
	.ascii "\1\2"
	.ascii "\0\0"
	.ascii "\372\310"
	.ascii "\277\227"
	.ascii "\0\0"
	.byte	7
	.byte	60
	.byte	0
	.ascii "\1\1"
	.ascii "Q\0"
	.ascii "\372\372"
	.ascii "\207\267"
	.ascii "\0\0"
	.byte	6
	.byte	65
	.byte	0
	.ascii "\1\2"
	.ascii "T\0"
	.ascii "\372\370"
	.ascii "\215\270"
	.ascii "\0\0"
	.byte	6
	.byte	59
	.byte	0
	.ascii "\1\2"
	.ascii "Y\0"
	.ascii "\372\370"
	.ascii "\210\266"
	.ascii "\0\0"
	.byte	6
	.byte	51
	.byte	0
	.ascii "\1\0"
	.ascii "\0\0"
	.ascii "\371\372"
	.ascii "\12\6"
	.ascii "\3\0"
	.byte	14
	.byte	45
	.byte	0
	.ascii "\0\0"
	.ascii "\200\0"
	.ascii "\371\366"
	.ascii "\211l"
	.ascii "\3\0"
	.byte	14
	.byte	71
	.byte	0
	.ascii "\3\14"
	.ascii "\200\10"
	.ascii "\370\366"
	.ascii "\210\266"
	.ascii "\3\0"
	.byte	15
	.byte	60
	.byte	0
	.ascii "\3\14"
	.ascii "\205\0"
	.ascii "\370\366"
	.ascii "\210\266"
	.ascii "\3\0"
	.byte	15
	.byte	58
	.byte	0
	.ascii "\16\0"
	.ascii "@\10"
	.ascii "vw"
	.ascii "O\30"
	.ascii "\0\2"
	.byte	14
	.byte	53
	.byte	0
	.ascii "\16\3"
	.ascii "@\0"
	.ascii "\310\233"
	.ascii "Ii"
	.ascii "\0\2"
	.byte	14
	.byte	64
	.byte	0
	.ascii "\327\307"
	.ascii "\334\0"
	.ascii "\255\215"
	.ascii "\5\5"
	.ascii "\3\0"
	.byte	14
	.byte	71
	.byte	0
	.ascii "\327\307"
	.ascii "\334\0"
	.ascii "\250\210"
	.ascii "\4\4"
	.ascii "\3\0"
	.byte	14
	.byte	61
	.byte	0
	.ascii "\200\21"
	.ascii "\0\0"
	.ascii "\366g"
	.ascii "\6\27"
	.ascii "\3\3"
	.byte	14
	.byte	61
	.byte	0
	.ascii "\200\21"
	.ascii "\0\11"
	.ascii "\365F"
	.ascii "\5\26"
	.ascii "\2\3"
	.byte	14
	.byte	48
	.byte	0
	.ascii "\6\25"
	.ascii "?\0"
	.ascii "\0\367"
	.ascii "\364\365"
	.ascii "\0\0"
	.byte	1
	.byte	48
	.byte	0
	.ascii "\6\22"
	.ascii "?\0"
	.ascii "\0\367"
	.ascii "\364\365"
	.ascii "\3\0"
	.byte	0
	.byte	69
	.byte	0
	.ascii "\6\22"
	.ascii "?\0"
	.ascii "\0\367"
	.ascii "\364\365"
	.ascii "\0\0"
	.byte	1
	.byte	68
	.byte	0
	.ascii "\1\2"
	.ascii "X\0"
	.ascii "gu"
	.ascii "\347\7"
	.ascii "\0\0"
	.byte	0
	.byte	63
	.byte	0
	.ascii "AB"
	.ascii "E\10"
	.ascii "\370u"
	.ascii "H\5"
	.ascii "\0\0"
	.byte	0
	.byte	74
	.byte	0
	.ascii "\12\36"
	.ascii "@N"
	.ascii "\340\377"
	.ascii "\360\5"
	.ascii "\3\0"
	.byte	8
	.byte	60
	.byte	0
	.ascii "\12\36"
	.ascii "|R"
	.ascii "\340\377"
	.ascii "\360\2"
	.ascii "\3\0"
	.byte	8
	.byte	80
	.byte	0
	.ascii "\16\0"
	.ascii "@\10"
	.ascii "z{"
	.ascii "J\33"
	.ascii "\0\2"
	.byte	14
	.byte	64
	.byte	0
	.ascii "\16\7"
	.ascii "\12@"
	.ascii "\344U"
	.ascii "\344"
	.ascii "9"
	.ascii "\3\1"
	.byte	6
	.byte	69
	.byte	0
	.ascii "\5\4"
	.ascii "\5@"
	.ascii "\371\326"
	.ascii "2\245"
	.ascii "\3\0"
	.byte	14
	.byte	73
	.byte	0
	.ascii "\2\25"
	.ascii "?\0"
	.ascii "\0\367"
	.ascii "\363\365"
	.ascii "\3\0"
	.byte	8
	.byte	75
	.byte	0
	.ascii "\1\2"
	.ascii "O\0"
	.ascii "\372\370"
	.ascii "\215\265"
	.ascii "\0\0"
	.byte	7
	.byte	68
	.byte	0
	.ascii "\0\0"
	.ascii "\0\0"
	.ascii "\366\366"
	.ascii "\14\6"
	.ascii "\0\0"
	.byte	4
	.byte	48
	.byte	0
	.ascii "!\21"
	.ascii "\21\0"
	.ascii "\243\304"
	.ascii "C\""
	.ascii "\2\0"
	.byte	13
	.byte	53
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.ascii "\20\21"
	.ascii "D\0"
	.ascii "\370\363"
	.ascii "w\6"
	.ascii "\2\0"
	.byte	8
	.byte	35
	.byte	0
	.globl	__ZL11_MIDI_Funcs.lto_priv.0
	.bss
	.align 4
__ZL11_MIDI_Funcs.lto_priv.0:
	.space 4
	.section .rdata,"dr"
LC45:
	.ascii ".flac\0"
LC46:
	.ascii ".ogg\0"
	.data
	.align 4
__ZZL15LoadSongUpgradePKcE10extensions:
	.long	LC45
	.long	LC46
	.section .rdata,"dr"
	.align 4
__ZZ8PlaySongPcihhE10tracktypes:
	.long	LC45
	.long	LC46
	.globl	_ASS_MIDISoundDriver
	.data
	.align 4
_ASS_MIDISoundDriver:
	.long	-2
	.globl	_MUSIC_ErrorCode
	.bss
	.align 4
_MUSIC_ErrorCode:
	.space 4
.lcomm _SongName,4,4
	.globl	_FX_Installed
	.align 4
_FX_Installed:
	.space 4
	.globl	__ZL14MV_ReverbDelay.lto_priv.0
	.align 4
__ZL14MV_ReverbDelay.lto_priv.0:
	.space 4
	.globl	_MV_SampleSize
	.data
	.align 4
_MV_SampleSize:
	.long	1
	.globl	__ZL18MV_NumberOfBuffers.lto_priv.0
	.align 4
__ZL18MV_NumberOfBuffers.lto_priv.0:
	.long	32
.lcomm _SongLength,4,4
.lcomm _SongPtr,4,4
	.section .rdata,"dr"
	.align 32
__ZZ7FX_PlayE4func:
	.long	__ZL9FX_BadFmtPcjiiiiiiiii.lto_priv.0
	.long	0
	.long	_MV_PlayVOC
	.long	_MV_PlayWAV
	.long	_MV_PlayVorbis
	.long	_MV_PlayFLAC
	.long	_MV_PlayXA
	.long	_MV_PlayXMP
	.align 32
__ZZ9FX_Play3DE4func:
	.long	__ZL11FX_BadFmt3DPcjiiiiiii.lto_priv.0
	.long	0
	.long	_MV_PlayVOC3D
	.long	_MV_PlayWAV3D
	.long	_MV_PlayVorbis3D
	.long	_MV_PlayFLAC3D
	.long	_MV_PlayXA3D
	.long	_MV_PlayXMP3D
.lcomm _voice,4,4
.lcomm _lumplockbyte,11,4
	.align 4
LC3:
	.long	1073741824
	.align 4
LC5:
	.long	1132462080
	.align 4
LC6:
	.long	1184133120
	.align 4
LC7:
	.long	1132396544
	.align 8
LC25:
	.long	-1
	.long	-1
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z13AnimateSwitchP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z16setinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z17stopinterpolationPi;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__Z22short_setinterpolationPs;	.scl	2;	.type	32;	.endef
	.def	__Z19InterpSectorSpritessh;	.scl	2;	.type	32;	.endef
	.def	__Z23short_stopinterpolationPs;	.scl	2;	.type	32;	.endef
	.def	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
	.def	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
	.def	_alignceilslope;	.scl	2;	.type	32;	.endef
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z15MV_BeginServicei;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z14MIDI_SetVolumei.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii;	.scl	2;	.type	32;	.endef
	.def	_sqrt;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__Z14CON_ConMessagePKcz;	.scl	2;	.type	32;	.endef
	.def	__ZL10FX_ReadFmtPKcj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	__Z15RTS_SoundLengthi;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_MV_SetReverb;	.scl	2;	.type	32;	.endef
	.def	_MV_Kill.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_MV_Shutdown.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13MIDI_StopSongv.part.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_strncat;	.scl	2;	.type	32;	.endef
	.def	__Z13MIDI_PlaySongPci.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10MUSIC_Initi;	.scl	2;	.type	32;	.endef
	.def	__Z26so_stopspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	_deletesprite.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10AnimDeletePi;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	__Z12InitCaltropss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17InitSpriteGrenades;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13InitFlashBombs;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnLittleExps;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnMineExps;	.scl	2;	.type	32;	.endef
	.def	__Z14InitPhosphoruss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18InitSpriteChemBombs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z14SpriteOverlapZssi;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSumos;	.scl	2;	.type	32;	.endef
	.def	__Z15SetupSailorGirls;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko3s;	.scl	2;	.type	32;	.endef
	.def	__Z12SetupRipper2s;	.scl	2;	.type	32;	.endef
	.def	__Z18SetupPachinkoLights;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupRippers;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupZillas;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupTrashCans;	.scl	2;	.type	32;	.endef
	.def	__Z17SetupMechanicGirls;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSkels;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupGirlNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko1s;	.scl	2;	.type	32;	.endef
	.def	__Z15SetupToiletGirls;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupLavas;	.scl	2;	.type	32;	.endef
	.def	__Z13SetupWashGirls;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupCoolgs;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko2s;	.scl	2;	.type	32;	.endef
	.def	__Z12SetupCarGirls;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPruneGirls;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupGoros;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupBunnys;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupHornets;	.scl	2;	.type	32;	.endef
	.def	__Z9SetupSerps;	.scl	2;	.type	32;	.endef
	.def	__Z14SetupPachinko4s;	.scl	2;	.type	32;	.endef
	.def	__Z8SetupEels;	.scl	2;	.type	32;	.endef
	.def	__Z11SetupCoolies;	.scl	2;	.type	32;	.endef
	.def	__Z10SetupSkulls;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z19SetupSpriteForBreakP12spritetypev7.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13GenerateDripss;	.scl	2;	.type	32;	.endef
	.def	__Z17SetSectorWallBitssihh.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z9DoRotators;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z14getzrangepointiiisPiS_S_S_.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z11DoLavaErupts;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z7DoVators;	.scl	2;	.type	32;	.endef
	.def	__Z21MoveSpritesWithSectorsih;	.scl	2;	.type	32;	.endef
	.def	__Z11DoVatorAutos;	.scl	2;	.type	32;	.endef
	.def	__ZL9FX_BadFmtPcjiiiiiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayVOC;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayWAV;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayVorbis;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayFLAC;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayXA;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayXMP;	.scl	2;	.type	32;	.endef
	.def	__ZL11FX_BadFmt3DPcjiiiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayVOC3D;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayWAV3D;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayVorbis3D;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayFLAC3D;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayXA3D;	.scl	2;	.type	32;	.endef
	.def	_MV_PlayXMP3D;	.scl	2;	.type	32;	.endef
