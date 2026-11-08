	.file	"<artificial>"
	.text
	.p2align 4
	.def	__Z14SectorMidPointsPiS_S_;	.scl	3;	.type	32;	.endef
__Z14SectorMidPointsPiS_S_:
LFB0:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	cwtl
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	leal	(%eax,%eax,4), %esi
	movl	_sector, %eax
	sall	$3, %esi
	movl	%edi, 16(%esp)
	addl	%esi, %eax
	movl	%ebp, 20(%esp)
	movl	%ecx, 4(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movzwl	2(%eax), %ebp
	movzwl	(%eax), %ecx
	movl	%edx, (%esp)
	addl	%ecx, %ebp
	subl	$1, %ebp
	cmpw	%cx, %bp
	jl	L4
	movswl	%cx, %eax
	movswl	%bp, %edi
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%eax, %edx
	subl	%eax, %edi
	xorl	%eax, %eax
	sall	$5, %edx
	addl	$1, %edi
	addl	_wall, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L3:
	addl	$1, %ecx
	addl	(%edx), %eax
	addl	4(%edx), %ebx
	addl	$32, %edx
	cmpw	%cx, %bp
	jge	L3
	cltd
	idivl	%edi
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	8(%esp), %ebx
	.cfi_restore 3
	cltd
	idivl	%edi
L2:
	movl	(%esp), %edi
	movl	28(%esp), %edx
	movl	%ecx, (%edi)
	movl	4(%esp), %edi
	movl	%eax, (%edi)
	addl	_sector, %esi
	movl	4(%esi), %eax
	addl	8(%esi), %eax
	sarl	%eax
	movl	%eax, (%edx)
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	movl	20(%esp), %ebp
	addl	$24, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L4:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	L2
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z11OperateWallss
	.def	__Z11OperateWallss;	.scl	2;	.type	32;	.endef
__Z11OperateWallss:
LFB1:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z13AnimateSwitchP12spritetypev7s
	.def	__Z13AnimateSwitchP12spritetypev7s;	.scl	2;	.type	32;	.endef
__Z13AnimateSwitchP12spritetypev7s:
LFB2:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movzwl	14(%ebx), %ecx
	cmpw	$579, %cx
	jg	L10
	cmpw	$550, %cx
	jle	L12
	subw	$551, %cx
	movl	$1, %eax
	sall	%cl, %eax
	testl	$357913605, %eax
	jne	L14
	testl	$178956298, %eax
	je	L12
L13:
	cmpw	$999, 20(%esp)
	je	L16
	leal	14(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	$1, 14(%ebx)
	cmpw	$1, 20(%esp)
	je	L20
L12:
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
L10:
	.cfi_restore_state
	cmpw	$584, %cx
	jg	L31
	subw	$580, %cx
	movl	$1, %eax
	sall	%cl, %eax
	testb	$21, %al
	jne	L13
L14:
	cmpw	$999, 20(%esp)
	je	L12
	leal	14(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	$1, 14(%ebx)
	cmpw	$0, 20(%esp)
	je	L32
L16:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L31:
	.cfi_restore_state
	cmpw	$2470, %cx
	je	L14
	cmpw	$2471, %cx
	jne	L12
	jmp	L13
	.p2align 4,,10
	.p2align 3
L32:
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
L17:
	movzwl	20(%esp), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L20:
	.cfi_restore_state
	movl	$1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	jmp	L17
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z11DoTrapResets
	.def	__Z11DoTrapResets;	.scl	2;	.type	32;	.endef
__Z11DoTrapResets:
LFB3:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movzwl	_headspritestat+114, %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	_sprite, %ebx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movzwl	16(%esp), %esi
	cmpw	$-1, %cx
	je	L43
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	.p2align 4
	.p2align 3
L39:
	movswl	%cx, %edx
	imull	$44, %edx, %eax
	movzwl	_nextspritestat(%edx,%edx), %ecx
	addl	%ebx, %eax
	cmpw	38(%eax), %si
	jne	L38
	movl	_User(,%edx,4), %edi
	movzwl	40(%eax), %edx
	cmpw	$43, %dx
	jne	L36
	xorl	%edx, %edx
	movw	%dx, 216(%edi)
	movzwl	40(%eax), %edx
L36:
	cmpw	$44, %dx
	jne	L37
	xorl	%edx, %edx
	movw	%dx, 216(%edi)
	movzwl	40(%eax), %edx
L37:
	cmpw	$63, %dx
	jne	L38
	xorl	%eax, %eax
	movw	%ax, 216(%edi)
	.p2align 4
	.p2align 3
L38:
	cmpw	$-1, %cx
	jne	L39
	movl	8(%esp), %edi
	.cfi_restore 7
L43:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z6DoAnimi
	.def	__Z6DoAnimi;	.scl	2;	.type	32;	.endef
__Z6DoAnimi:
LFB4:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movswl	_AnimCnt, %eax
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	subl	$1, %esi
	js	L48
	leal	(%eax,%eax,2), %eax
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	leal	_Anim-24(,%eax,8), %ebx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	jmp	L55
	.p2align 4,,10
	.p2align 3
L52:
	subl	$1, %esi
	subl	$24, %ebx
	cmpl	$-1, %esi
	je	L58
L55:
	movl	(%ebx), %edi
	movl	4(%ebx), %edx
	movl	(%edi), %eax
	cmpl	%eax, %edx
	jle	L50
	movswl	12(%ebx), %ebp
	imull	28(%esp), %ebp
	movl	8(%ebx), %ecx
	addl	%ecx, %ebp
	sarl	$8, %ecx
	imull	28(%esp), %ecx
	movl	%ebp, 8(%ebx)
	addl	%eax, %ecx
	cmpl	%edx, %ecx
	movl	%ecx, %eax
	cmovg	%edx, %eax
L50:
	cmpl	%eax, %edx
	jge	L51
	movswl	12(%ebx), %ebp
	imull	28(%esp), %ebp
	movl	8(%ebx), %ecx
	addl	%ecx, %ebp
	sarl	$8, %ecx
	imull	28(%esp), %ecx
	movl	%ebp, 8(%ebx)
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
L51:
	movl	%eax, (%edi)
	cmpl	%eax, 4(%ebx)
	jne	L52
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	L54
	movl	20(%ebx), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	*%edi
	cmpl	%edi, 16(%ebx)
	jne	L52
	.p2align 4
	.p2align 3
L54:
	movzwl	_AnimCnt, %eax
	subl	$1, %esi
	subl	$24, %ebx
	subl	$1, %eax
	movw	%ax, _AnimCnt
	cwtl
	leal	(%eax,%eax,2), %edx
	leal	_Anim(,%edx,8), %eax
	movl	_Anim(,%edx,8), %edx
	movl	%edx, 24(%ebx)
	movl	4(%eax), %edx
	movl	%edx, 28(%ebx)
	movl	8(%eax), %edx
	movl	%edx, 32(%ebx)
	movl	12(%eax), %edx
	movl	%edx, 36(%ebx)
	movl	16(%eax), %edx
	movl	%edx, 40(%ebx)
	movl	20(%eax), %eax
	movl	%eax, 44(%ebx)
	cmpl	$-1, %esi
	jne	L55
	.p2align 4
	.p2align 3
L58:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
L48:
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z9AnimClearv
	.def	__Z9AnimClearv;	.scl	2;	.type	32;	.endef
__Z9AnimClearv:
LFB5:
	.cfi_startproc
	xorl	%eax, %eax
	movw	%ax, _AnimCnt
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z11AnimGetGoalPi
	.def	__Z11AnimGetGoalPi;	.scl	2;	.type	32;	.endef
__Z11AnimGetGoalPi:
LFB6:
	.cfi_startproc
	movswl	_AnimCnt, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	testw	%cx, %cx
	jle	L61
	xorl	%eax, %eax
	jmp	L64
	.p2align 5
	.p2align 4,,10
	.p2align 3
L67:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L61
L64:
	leal	(%eax,%eax,2), %edx
	cmpl	%ebx, _Anim(,%edx,8)
	jne	L67
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L61:
	.cfi_restore_state
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z10AnimDeletePi
	.def	__Z10AnimDeletePi;	.scl	2;	.type	32;	.endef
__Z10AnimDeletePi:
LFB7:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movzwl	_AnimCnt, %esi
	movl	12(%esp), %ecx
	testw	%si, %si
	jle	L68
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	xorl	%eax, %eax
	movswl	%si, %ebx
	jmp	L71
	.p2align 5
	.p2align 4,,10
	.p2align 3
L75:
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	L74
L71:
	leal	(%eax,%eax,2), %edx
	cmpl	%ecx, _Anim(,%edx,8)
	jne	L75
	subl	$1, %esi
	leal	_Anim(,%edx,8), %ecx
	movw	%si, _AnimCnt
	movzwl	%si, %esi
	leal	(%esi,%esi,2), %eax
	sall	$3, %eax
	movl	_Anim(%eax), %ebx
	movl	%ebx, _Anim(,%edx,8)
	movl	_Anim+4(%eax), %edx
	movl	%edx, 4(%ecx)
	movl	_Anim+8(%eax), %edx
	movl	%edx, 8(%ecx)
	movl	_Anim+12(%eax), %edx
	movl	%edx, 12(%ecx)
	movl	_Anim+16(%eax), %edx
	movl	%edx, 16(%ecx)
	movl	_Anim+20(%eax), %eax
	movl	%eax, 20(%ecx)
L74:
	movl	(%esp), %ebx
	.cfi_restore 3
L68:
	movl	4(%esp), %esi
	addl	$8, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z7AnimSetPiii
	.def	__Z7AnimSetPiii;	.scl	2;	.type	32;	.endef
__Z7AnimSetPiii:
LFB8:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	_AnimCnt, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	28(%esp), %esi
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	20(%esp), %ebx
	movl	%edi, 8(%esp)
	sall	$8, %esi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	testl	%ecx, %ecx
	jle	L85
	xorl	%eax, %eax
	jmp	L79
	.p2align 5
	.p2align 4,,10
	.p2align 3
L88:
	addl	$1, %eax
	cmpl	%eax, %ecx
	je	L85
L79:
	leal	(%eax,%eax,2), %edx
	cmpl	%ebx, _Anim(,%edx,8)
	jne	L88
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movl	24(%esp), %ebp
	movl	%eax, %ebx
	movl	%esi, _Anim+8(,%edx,8)
	xorl	%esi, %esi
	movl	%ebp, _Anim+4(,%edx,8)
	movw	%si, _Anim+12(,%edx,8)
	movl	$0, _Anim+16(,%edx,8)
	movl	$0, _Anim+20(,%edx,8)
	movl	12(%esp), %ebp
	.cfi_restore 5
	cmpl	%eax, %ecx
	je	L83
L76:
	movl	%ebx, %eax
	movl	4(%esp), %esi
	movl	(%esp), %ebx
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
L85:
	.cfi_restore_state
	leal	(%ecx,%ecx,2), %edx
	xorl	%eax, %eax
	movl	%ebx, _Anim(,%edx,8)
	movl	24(%esp), %ecx
	movl	%edi, %ebx
	movl	%esi, _Anim+8(,%edx,8)
	movl	%ecx, _Anim+4(,%edx,8)
	movw	%ax, _Anim+12(,%edx,8)
	movl	$0, _Anim+16(,%edx,8)
	movl	$0, _Anim+20(,%edx,8)
L83:
	addl	$1, %edi
	movw	%di, _AnimCnt
	jmp	L76
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z17DoSpringBoardDownv
	.def	__Z17DoSpringBoardDownv;	.scl	2;	.type	32;	.endef
__Z17DoSpringBoardDownv:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
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
	jmp	L94
	.p2align 5
	.p2align 4,,10
	.p2align 3
L90:
	addl	$1, %ebp
	cmpl	$20, %ebp
	je	L105
L94:
	movswl	_SpringBoard(,%ebp,4), %edx
	cmpw	$-1, %dx
	je	L90
	movzwl	_SpringBoard+2(,%ebp,4), %eax
	subl	$3, %eax
	movw	%ax, _SpringBoard+2(,%ebp,4)
	testw	%ax, %ax
	jg	L90
	movl	_sector, %edi
	leal	(%edx,%edx,4), %eax
	movl	%ebp, 28(%esp)
	movl	$2147483647, %esi
	leal	(%edi,%eax,8), %ebx
	movl	%edi, 16(%esp)
	movl	$-1, %edi
	movl	8(%ebx), %eax
	movswl	2(%ebx), %ecx
	movl	%ebx, 24(%esp)
	movswl	(%ebx), %edx
	movl	%eax, 20(%esp)
	movl	%ecx, 12(%esp)
	sall	$5, %edx
	addl	_wall, %edx
	.p2align 4
	.p2align 3
L93:
	movswl	12(%edx), %eax
	testl	%eax, %eax
	js	L91
	movl	16(%esp), %ecx
	leal	(%eax,%eax,4), %ebx
	movl	8(%ecx,%ebx,8), %ebx
	cmpl	%esi, %ebx
	jge	L91
	cmpl	%ebx, 20(%esp)
	setl	%cl
	testb	%cl, %cl
	cmovne	%eax, %edi
	cmovne	%ebx, %esi
L91:
	addl	$32, %edx
	subl	$1, 12(%esp)
	jne	L93
	movl	24(%esp), %ebx
	movl	16(%esp), %esi
	leal	(%edi,%edi,4), %eax
	movl	28(%esp), %ebp
	addl	$8, %ebx
	movl	8(%esi,%eax,8), %ecx
	movl	$-858993459, %eax
	movl	%ebx, %edx
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, 4(%esp)
	movl	$256, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z7AnimSetPiii
	movswl	_SpringBoard(,%ebp,4), %eax
	leal	(%eax,%eax,4), %ecx
	movl	$-858993459, %eax
	leal	34(,%ecx,8), %edx
	mull	%edx
	movl	_sector, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	$240, %edx
	movw	%dx, 34(%eax,%ecx,8)
	movl	$-1, %ecx
	movw	%cx, _SpringBoard(,%ebp,4)
	addl	$1, %ebp
	cmpl	$20, %ebp
	jne	L94
L105:
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
LFE9:
	.p2align 4
	.globl	__Z15AnimSetCallbacksPFvP10ANIMstructPvES1_
	.def	__Z15AnimSetCallbacksPFvP10ANIMstructPvES1_;	.scl	2;	.type	32;	.endef
__Z15AnimSetCallbacksPFvP10ANIMstructPvES1_:
LFB12:
	.cfi_startproc
	movzwl	4(%esp), %eax
	cmpw	$-1, %ax
	je	L107
	movl	8(%esp), %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,2), %edx
	movl	%ecx, _Anim+16(,%edx,8)
	movl	12(%esp), %ecx
	movl	%ecx, _Anim+20(,%edx,8)
L107:
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z13AnimSetVelAdjss
	.def	__Z13AnimSetVelAdjss;	.scl	2;	.type	32;	.endef
__Z13AnimSetVelAdjss:
LFB13:
	.cfi_startproc
	movzwl	4(%esp), %eax
	cmpw	$-1, %ax
	je	L112
	movzwl	8(%esp), %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,2), %edx
	movw	%cx, _Anim+12(,%edx,8)
L112:
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z9DoPanningv
	.def	__Z9DoPanningv;	.scl	2;	.type	32;	.endef
__Z9DoPanningv:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	_sprite, %eax
	movzwl	_headspritestat+174, %ebp
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	movl	%eax, (%esp)
	cmpw	$-1, %bp
	je	L121
	.p2align 4
	.p2align 3
L120:
	movswl	%bp, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebp
	imull	$44, %eax, %eax
	addl	4(%esp), %eax
	movswl	28(%eax), %ecx
	movswl	24(%eax), %edx
	movswl	32(%eax), %eax
	leal	512(%ecx), %ebx
	movswl	_sintable(%ecx,%ecx), %esi
	leal	(%edx,%edx,4), %edx
	andl	$2047, %ebx
	leal	30(,%edx,8), %ecx
	movswl	_sintable(%ebx,%ebx), %edi
	imull	%eax, %esi
	imull	%eax, %edi
	movl	(%esp), %eax
	sarl	$20, %esi
	leal	(%eax,%edx,8), %ebx
	movl	$-858993459, %eax
	mull	%ecx
	sarl	$20, %edi
	movl	%edi, %eax
	movl	%edx, %ecx
	leal	31(%ebx), %edx
	subl	(%esp), %edx
	shrl	$5, %ecx
	addl	$1, _sectorchanged(,%ecx,4)
	addb	%al, 30(%ebx)
	movl	$-858993459, %eax
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, 31(%ebx)
	addl	$1, _sectorchanged(,%ecx,4)
	addl	$1, _sectorchanged(,%edx,4)
	cmpw	$-1, %bp
	jne	L120
L121:
	movl	_sprite, %eax
	movzwl	_headspritestat+176, %ebp
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	movl	%eax, (%esp)
	cmpw	$-1, %bp
	je	L119
	.p2align 4
	.p2align 3
L124:
	movswl	%bp, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebp
	imull	$44, %eax, %eax
	addl	4(%esp), %eax
	movswl	28(%eax), %ecx
	movswl	24(%eax), %edx
	movswl	32(%eax), %eax
	leal	512(%ecx), %ebx
	movswl	_sintable(%ecx,%ecx), %esi
	leal	(%edx,%edx,4), %edx
	andl	$2047, %ebx
	leal	22(,%edx,8), %ecx
	movswl	_sintable(%ebx,%ebx), %edi
	imull	%eax, %esi
	imull	%eax, %edi
	movl	(%esp), %eax
	sarl	$20, %esi
	leal	(%eax,%edx,8), %ebx
	movl	$-858993459, %eax
	mull	%ecx
	sarl	$20, %edi
	movl	%edi, %eax
	movl	%edx, %ecx
	leal	23(%ebx), %edx
	subl	(%esp), %edx
	shrl	$5, %ecx
	addl	$1, _sectorchanged(,%ecx,4)
	addb	%al, 22(%ebx)
	movl	$-858993459, %eax
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, 23(%ebx)
	addl	$1, _sectorchanged(,%ecx,4)
	addl	$1, _sectorchanged(,%edx,4)
	cmpw	$-1, %bp
	jne	L124
L119:
	movzwl	_headspritestat+178, %esi
	movl	_sprite, %ebp
	movl	_wall, %edi
	cmpw	$-1, %si
	je	L116
	.p2align 4
	.p2align 3
L125:
	movswl	%si, %edx
	movzwl	_nextspritestat(%edx,%edx), %esi
	imull	$44, %edx, %edx
	addl	%ebp, %edx
	movswl	28(%edx), %ecx
	movswl	32(%edx), %ebx
	movswl	30(%edx), %eax
	leal	512(%ecx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	andl	$2047, %edx
	sall	$5, %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%ebx, %edx
	imull	%ecx, %ebx
	leal	(%edi,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	sarl	$20, %edx
	addb	%dl, 24(%ecx)
	leal	25(%ecx), %edx
	subl	%edi, %edx
	sarl	$20, %ebx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	addb	%bl, 25(%ecx)
	addl	$1, _wallchanged(,%eax,4)
	addl	$1, _wallchanged(,%edx,4)
	cmpw	$-1, %si
	jne	L125
L116:
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
LFE14:
	.p2align 4
	.def	__Z7GetTimev;	.scl	3;	.type	32;	.endef
__Z7GetTimev:
LFB15:
	.cfi_startproc
	movl	_totalclock, %eax
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z18DoSkelTermTeleports
	.def	__Z18DoSkelTermTeleports;	.scl	2;	.type	32;	.endef
__Z18DoSkelTermTeleports:
LFB16:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	$-1171354717, %ebx
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	addl	$12, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z14DoChangorMatchs
	.def	__Z14DoChangorMatchs;	.scl	2;	.type	32;	.endef
__Z14DoChangorMatchs:
LFB17:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movzwl	_headspritestat+188, %eax
	movw	%ax, 2(%esp)
	cmpw	$-1, %ax
	je	L139
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	$-858993459, %ebp
	movl	%ebx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L140
	.p2align 4,,10
	.p2align 3
L157:
	leal	16(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%edi, %edx
	movw	%si, 16(%ebx)
	movswl	32(%ecx), %esi
	movl	%edx, %eax
	mull	%ebp
	sall	$8, %esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%edi, %edx
	addl	%esi, 4(%ebx)
	movzwl	34(%ecx), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%ebx), %edx
	addw	18(%ebx), %si
	subl	%edi, %edx
	movw	%si, 18(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	movzwl	12(%ebx), %eax
	testw	%si, %si
	je	L143
	orl	$2, %eax
L144:
	movw	%ax, 12(%ebx)
	leal	36(%ecx), %esi
	movl	$-1171354717, %eax
	subl	4(%esp), %esi
	mull	%esi
	movl	%edx, %esi
	leal	20(%ebx), %edx
	shrl	$5, %esi
	subl	%edi, %edx
	addl	$1, _spritechanged(,%esi,4)
	movzbl	37(%ecx), %eax
	movb	%al, 11(%esp)
	movl	%edx, %eax
	mull	%ebp
	movzbl	11(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	addb	%al, 20(%ebx)
	movl	%edx, %eax
	addl	$1, _spritechanged(,%esi,4)
	movzbl	36(%ecx), %esi
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, 21(%ebx)
L145:
	movl	$-1171354717, %eax
	leal	30(%ecx), %edx
	subl	4(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	movzbl	31(%ecx), %esi
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, 32(%ebx)
	testb	$-128, 42(%ecx)
	je	L156
L148:
	cmpw	$-1, 2(%esp)
	je	L155
L140:
	movswl	2(%esp), %ecx
	movzwl	_nextspritestat(%ecx,%ecx), %eax
	movw	%cx, 8(%esp)
	imull	$44, %ecx, %ecx
	movw	%ax, 2(%esp)
	movl	_sprite, %eax
	addl	%eax, %ecx
	movl	%eax, 4(%esp)
	movzwl	38(%ecx), %eax
	cmpw	%ax, 32(%esp)
	jne	L148
	movswl	24(%ecx), %eax
	movl	_sector, %edi
	movzwl	28(%ecx), %esi
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %ebx
	testb	$64, 42(%ecx)
	jne	L157
	leal	24(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%edi, %edx
	movw	%si, 24(%ebx)
	movswl	32(%ecx), %esi
	movl	%edx, %eax
	mull	%ebp
	sall	$8, %esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	26(%ebx), %edx
	subl	%edi, %edx
	addl	%esi, 8(%ebx)
	movzwl	34(%ecx), %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%ebx), %edx
	addw	26(%ebx), %si
	subl	%edi, %edx
	movw	%si, 26(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	movl	_sectorchanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _sectorchanged(,%edx,4)
	movzwl	14(%ebx), %eax
	testw	%si, %si
	je	L146
	orl	$2, %eax
L147:
	movw	%ax, 14(%ebx)
	leal	36(%ecx), %esi
	movl	$-1171354717, %eax
	subl	4(%esp), %esi
	mull	%esi
	movl	%edx, %esi
	leal	28(%ebx), %edx
	shrl	$5, %esi
	subl	%edi, %edx
	addl	$1, _spritechanged(,%esi,4)
	movzbl	37(%ecx), %eax
	movb	%al, 11(%esp)
	movl	%edx, %eax
	mull	%ebp
	movzbl	11(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	29(%ebx), %edx
	subl	%edi, %edx
	addb	%al, 28(%ebx)
	movl	%edx, %eax
	addl	$1, _spritechanged(,%esi,4)
	movzbl	36(%ecx), %esi
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	addb	%al, 29(%ebx)
	jmp	L145
	.p2align 4,,10
	.p2align 3
L156:
	movswl	8(%esp), %eax
	call	__Z10KillSprites
	cmpw	$-1, 2(%esp)
	jne	L140
	.p2align 4
	.p2align 3
L155:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L139:
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L143:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	andl	$-3, %eax
	jmp	L144
	.p2align 4,,10
	.p2align 3
L146:
	andl	$-3, %eax
	jmp	L147
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z21DoSpawnSpotsForDamages
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
__Z21DoSpawnSpotsForDamages:
LFB18:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movzwl	24(%esp), %esi
	testw	%si, %si
	js	L158
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+134, %ebx
	cmpw	$-1, %bx
	jne	L160
	jmp	L168
	.p2align 6
	.p2align 4,,10
	.p2align 3
L161:
	cmpw	$-1, %bx
	je	L168
L160:
	movswl	%bx, %eax
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movzwl	_nextspritestat(%eax,%eax), %ebx
	cmpw	$69, 40(%ecx)
	jne	L161
	cmpw	38(%ecx), %si
	jne	L161
	movl	$41, %edx
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	_User(,%eax,4), %ebp
	movl	%ecx, (%esp)
	call	__Z18change_sprite_statss
	movl	(%esp), %ecx
	movl	$-1171354717, %eax
	movl	$__Z11DoSpawnSpots, 36(%ebp)
	leal	36(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	37(%ecx), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movw	%ax, 216(%ebp)
	xorl	%eax, %eax
	movw	%ax, 88(%ebp)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	cmpw	$-1, %bx
	jne	L160
	.p2align 4
	.p2align 3
L168:
	movl	4(%esp), %ebx
	.cfi_restore 3
L158:
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "Forgot to tag outer loop for Sector Object #%d\0"
LC6:
	.ascii "source/sw/src/game.h\0"
	.section	.text.unlikely,"x"
LCOLDB11:
	.text
LHOTB11:
	.p2align 4
	.globl	__Z11SectorSetupv
	.def	__Z11SectorSetupv;	.scl	2;	.type	32;	.endef
__Z11SectorSetupv:
LFB19:
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
	movl	$_SectorObject+120560, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	$_SectorObject, %ebx
	andl	$-8, %esp
	subl	$120, %esp
	call	__Z9WallSetupv
	.p2align 4
	.p2align 3
L170:
	movl	%ebx, (%esp)
	addl	$6028, %ebx
	movl	$6028, 8(%esp)
	movl	$-1, 4(%esp)
	call	_memset
	movl	$0, -5868(%ebx)
	movl	$0, -5864(%ebx)
	movl	$0, -5860(%ebx)
	movl	$0, -5856(%ebx)
	movl	$0, -5852(%ebx)
	movl	$2147483647, -5848(%ebx)
	cmpl	%ebx, %esi
	jne	L170
	movl	$2520, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_SineWaveFloor, (%esp)
	call	_memset
	xorl	%eax, %eax
L171:
	movl	$-1, _SpringBoard(%eax)
	addl	$16, %eax
	movl	$-1, _SpringBoard-12(%eax)
	movl	$-1, _SpringBoard-8(%eax)
	movl	$-1, _SpringBoard-4(%eax)
	cmpl	$80, %eax
	jb	L171
	xorl	%edi, %edi
	movw	%di, _LevelSecrets
	cmpw	$0, _numsectors
	jle	L169
	movl	$__Z12MorphTornadoP19SECTOR_OBJECTstruct, 116(%esp)
	movss	116(%esp), %xmm0
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movss	LC10, %xmm1
	movw	%bx, 88(%esp)
	movw	%si, 90(%esp)
	unpcklps	%xmm0, %xmm1
	movlps	%xmm1, 32(%esp)
	jmp	L324
	.p2align 4,,10
	.p2align 3
L174:
	testb	$1, 14(%ebx)
	je	L175
	cmpw	$341, 24(%ebx)
	je	L175
	leal	38(%ebx), %edx
	movl	$-858993459, %eax
	subl	112(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$16, 38(%ebx)
L175:
	testb	$1, 12(%ebx)
	je	L176
	cmpw	$341, 16(%ebx)
	je	L176
	leal	38(%ebx), %edx
	movl	$-858993459, %eax
	subl	112(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$16, 38(%ebx)
L176:
	leal	-501(%edi), %eax
	cmpw	$99, %ax
	jbe	L446
	cmpw	$217, %di
	je	L293
	jg	L294
	cmpw	$115, %di
	jne	L299
	movl	$1, %edx
	movl	%esi, %eax
	call	__Z17SetSectorWallBitssihh.constprop.0
L299:
	addw	$1, 90(%esp)
	movzwl	90(%esp), %eax
	cmpw	%ax, _numsectors
	jle	L169
L324:
	movswl	90(%esp), %esi
	movl	_sector, %edi
	leal	(%esi,%esi,4), %eax
	movl	%edi, 112(%esp)
	sall	$3, %eax
	leal	(%edi,%eax), %ebx
	movl	%eax, 68(%esp)
	movzwl	34(%ebx), %edi
	testb	$1, 38(%ebx)
	je	L174
	movl	%esi, (%esp)
	call	__Z15SectorLiquidSets
	movl	_sector, %eax
	movl	68(%esp), %ebx
	movl	%eax, 112(%esp)
	addl	%eax, %ebx
	jmp	L174
L169:
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
L446:
	.cfi_restore_state
	subw	$500, %di
	movzwl	%di, %eax
	imull	$52429, %eax, %eax
	shrl	$18, %eax
	movl	%eax, 84(%esp)
	imull	$6028, %eax, %eax
	leal	_SectorObject(%eax), %ecx
	movl	%eax, 72(%esp)
	movl	%ecx, 80(%esp)
	cmpw	$-1, _SectorObject+3210(%eax)
	je	L447
L178:
	imulw	$-13107, %di, %di
	cmpw	$-13107, %di
	jb	L299
	imull	$6028, 84(%esp), %edi
	movzwl	90(%esp), %eax
	movw	%ax, _SectorObject+3202(%edi)
	movl	72(%esp), %eax
	leal	_SectorObject+188(%eax), %ecx
	leal	_SectorObject+184(%eax), %edx
	addl	$_SectorObject+180, %eax
	movl	%ecx, (%esp)
	movl	%eax, 44(%esp)
	movl	%esi, %eax
	movl	%ecx, 40(%esp)
	movl	%edx, %ecx
	movl	%edx, 28(%esp)
	movl	44(%esp), %edx
	call	__Z14SectorMidPointsPiS_S_
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movw	%ax, _SectorObject+3220(%edi)
	movzwl	36(%ebx), %eax
	movl	%edi, %ebx
	movw	%ax, _SectorObject+3214(%edi)
	movl	$0, 20(%esp)
	movl	$0, 16(%esp)
	movl	_SectorObject+188(%edi), %eax
	movl	%eax, 12(%esp)
	movl	_SectorObject+184(%edi), %eax
	movl	%eax, 8(%esp)
	movl	_SectorObject+180(%edi), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	movl	$61, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	movl	%eax, 112(%esp)
	addl	%edi, %edx
	movl	%edx, _SectorObject+176(%ebx)
	movl	80(%esp), %ebx
	orl	$32768, 72(%eax)
	movl	%ebx, 52(%eax)
	movzwl	_headspritesect(%esi,%esi), %eax
	movw	%ax, 116(%esp)
	cmpw	$-1, %ax
	jne	L182
	jmp	L183
	.p2align 6
	.p2align 4,,10
	.p2align 3
L211:
	cmpw	$-1, 116(%esp)
	je	L183
L182:
	movswl	116(%esp), %ebx
	movzwl	_nextspritesect(%ebx,%ebx), %eax
	movl	%ebx, %esi
	imull	$44, %ebx, %ebx
	movw	%ax, 116(%esp)
	addl	%edi, %ebx
	cmpw	$500, 26(%ebx)
	jne	L211
	movzwl	40(%ebx), %eax
	subl	$16, %eax
	cmpw	$131, %ax
	ja	L211
	movzwl	%ax, %eax
	jmp	*L186(,%eax,4)
	.section .rdata,"dr"
	.align 4
L186:
	.long	L210
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L209
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L208
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L207
	.long	L211
	.long	L211
	.long	L211
	.long	L206
	.long	L205
	.long	L204
	.long	L203
	.long	L211
	.long	L211
	.long	L202
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L201
	.long	L200
	.long	L211
	.long	L211
	.long	L199
	.long	L198
	.long	L197
	.long	L211
	.long	L211
	.long	L196
	.long	L195
	.long	L194
	.long	L193
	.long	L192
	.long	L211
	.long	L211
	.long	L191
	.long	L190
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L189
	.long	L188
	.long	L187
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L211
	.long	L185
	.text
L293:
	addw	$1, _LevelSecrets
	jmp	L299
L294:
	cmpw	$420, %di
	je	L296
	cmpw	$440, %di
	je	L297
	cmpw	$400, %di
	jne	L299
	movswl	88(%esp), %eax
	movl	$400, 80(%esp)
	imull	$420, %eax, %edx
	movl	%eax, 64(%esp)
	movb	$1, _SineWaveFloor+18(%edx)
	movzwl	14(%ebx), %eax
	andl	$2, %eax
	cmpw	$1, %ax
	sbbl	%eax, %eax
	andl	$-8, %eax
	addl	$9, %eax
	movb	%al, _SineWaveFloor+18(%edx)
L300:
	imull	$420, 64(%esp), %edi
	movzwl	90(%esp), %esi
	movl	$1, %ecx
	movl	$0, 92(%esp)
	movw	%cx, 104(%esp)
	movw	%si, _SineWaveFloor+12(%edi)
	movswl	36(%ebx), %eax
	movl	%edi, 76(%esp)
	sall	$8, %eax
	movl	%eax, _SineWaveFloor+8(%edi)
	movl	%eax, 96(%esp)
	sarl	$2, %eax
	movl	%eax, %edx
	movl	8(%ebx), %eax
	subl	%edx, %eax
	movl	%eax, _SineWaveFloor(%edi)
	movl	4(%ebx), %eax
	subl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, _SineWaveFloor+4(%edi)
	movl	_wall, %eax
	movswl	%si, %edi
	movw	%dx, 68(%esp)
	movl	%eax, 116(%esp)
	movl	$3, %eax
	movw	%ax, 72(%esp)
	.p2align 4
	.p2align 3
L312:
	leal	(%edi,%edi,4), %eax
	movl	112(%esp), %edi
	movzwl	104(%esp), %ecx
	leal	(%edi,%eax,8), %esi
	movl	%ecx, 100(%esp)
	movzwl	(%esi), %eax
	movzwl	2(%esi), %ebx
	addl	%eax, %ebx
	subl	$1, %ebx
	cmpw	%bx, %ax
	jg	L303
	movl	80(%esp), %edi
	movl	%esi, 84(%esp)
	addl	%ecx, %edi
	movl	%edi, 108(%esp)
	.p2align 4
	.p2align 3
L306:
	movl	116(%esp), %edi
	movswl	%ax, %edx
	sall	$5, %edx
	movzwl	12(%edi,%edx), %edx
	testw	%dx, %dx
	js	L304
	movl	112(%esp), %esi
	movswl	%dx, %edi
	leal	(%edi,%edi,4), %ecx
	leal	(%esi,%ecx,8), %ecx
	movswl	34(%ecx), %esi
	cmpl	%esi, 108(%esp)
	je	L305
L304:
	addl	$1, %eax
	cmpw	%ax, %bx
	jge	L306
	movl	84(%esp), %esi
L303:
	imull	$420, 64(%esp), %eax
	movzwl	_SineWaveFloor+12(%eax), %eax
	cmpw	$8, 104(%esp)
	jg	L313
	xorl	%edi, %edi
	testw	%ax, %ax
	js	L315
L314:
	imull	$420, 64(%esp), %ecx
	movzwl	68(%esp), %ebx
	addl	$_SineWaveFloor, %ecx
	testw	%bx, %bx
	jne	L334
	movl	%edi, 116(%esp)
	movzwl	72(%esp), %esi
	movl	100(%esp), %edi
	jmp	L319
	.p2align 6
	.p2align 4,,10
	.p2align 3
L448:
	movl	$2048, %eax
	xorl	%edx, %edx
	movw	%si, 16(%ecx)
	addl	$20, %ecx
	idivl	%edi
	imull	%ebx, %eax
	addl	$1, %ebx
	movw	%ax, -6(%ecx)
	cmpw	$0, 12(%ecx)
	js	L441
L319:
	cmpl	$_SineWaveFloor+2520, %ecx
	jb	L448
L441:
	movl	116(%esp), %edi
	testl	%edi, %edi
	jne	L449
L315:
	addw	$1, 88(%esp)
	jmp	L299
	.p2align 4,,10
	.p2align 3
L305:
	cmpw	$1, 104(%esp)
	je	L450
	cmpw	$2, 104(%esp)
	je	L451
	cmpw	$3, 104(%esp)
	jne	L309
	movzwl	36(%ecx), %eax
	testw	%ax, %ax
	cmove	68(%esp), %ax
	movw	%ax, 68(%esp)
L309:
	movl	100(%esp), %eax
	movl	76(%esp), %ebx
	movl	96(%esp), %esi
	addw	$1, 104(%esp)
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%esi, %ebx
	subl	92(%esp), %esi
	movw	%dx, _SineWaveFloor+12(%eax)
	movl	8(%ecx), %edx
	sarl	$2, %ebx
	movl	%esi, 96(%esp)
	subl	%ebx, %edx
	movl	%edx, _SineWaveFloor(%eax)
	movl	4(%ecx), %edx
	movl	%esi, _SineWaveFloor+8(%eax)
	subl	%ebx, %edx
	movl	%edx, _SineWaveFloor+4(%eax)
	jmp	L312
	.p2align 4,,10
	.p2align 3
L450:
	movswl	36(%ecx), %ebx
	testw	%bx, %bx
	cmove	92(%esp), %ebx
	movl	%ebx, 92(%esp)
	jmp	L309
	.p2align 4,,10
	.p2align 3
L451:
	movzwl	36(%ecx), %eax
	testw	%ax, %ax
	cmove	72(%esp), %ax
	movw	%ax, 72(%esp)
	jmp	L309
L313:
	movswl	36(%esi), %edi
	testw	%ax, %ax
	jns	L314
	movzwl	104(%esp), %eax
	subl	$1, %eax
	testl	%edi, %edi
	je	L315
	jmp	L316
	.p2align 4,,10
	.p2align 3
L334:
	movl	%edi, 116(%esp)
	movswl	68(%esp), %esi
	xorl	%ebx, %ebx
	movzwl	72(%esp), %edi
	jmp	L317
	.p2align 6
	.p2align 4,,10
	.p2align 3
L320:
	movl	$2048, %eax
	xorl	%edx, %edx
	movw	%di, 16(%ecx)
	addl	$20, %ecx
	idivl	%esi
	imull	%ebx, %eax
	addl	$1, %ebx
	movw	%ax, -6(%ecx)
	cmpw	$0, 12(%ecx)
	js	L441
L317:
	cmpl	$_SineWaveFloor+2520, %ecx
	jb	L320
	movl	116(%esp), %edi
	testl	%edi, %edi
	je	L315
L449:
	movzwl	104(%esp), %eax
	subw	$1, %ax
	js	L315
L316:
	imull	$420, 64(%esp), %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %edx
	leal	_SineWaveFloor(%ecx,%edx,4), %edx
	cmpw	$8, %ax
	jle	L321
L452:
	subl	$1, %eax
	subl	$20, %edx
	cmpw	$8, %ax
	jg	L452
	movl	8(%edx), %ecx
	subl	%edi, %ecx
	addl	%edi, %edi
	cmpl	$1023, %ecx
	jle	L335
L453:
	movl	%ecx, %ebx
	sarl	$2, %ebx
L323:
	movl	%ecx, 8(%edx)
	movswl	12(%edx), %ecx
	subl	$1, %eax
	subl	$20, %edx
	movl	112(%esp), %esi
	leal	(%ecx,%ecx,4), %ecx
	leal	(%esi,%ecx,8), %esi
	movl	8(%esi), %ecx
	subl	%ebx, %ecx
	movl	%ecx, 20(%edx)
	movl	4(%esi), %ecx
	subl	%ebx, %ecx
	movl	%ecx, 24(%edx)
	cmpw	$-1, %ax
	je	L315
L321:
	movl	8(%edx), %ecx
	subl	%edi, %ecx
	addl	%edi, %edi
	cmpl	$1023, %ecx
	jg	L453
L335:
	movl	$256, %ebx
	movl	$1024, %ecx
	jmp	L323
L296:
	movswl	88(%esp), %eax
	movl	$420, 80(%esp)
	movl	%eax, 64(%esp)
	imull	$420, %eax, %eax
	movb	$2, _SineWaveFloor+18(%eax)
	jmp	L300
L297:
	movswl	88(%esp), %eax
	movl	$440, 80(%esp)
	movl	%eax, 64(%esp)
	imull	$420, %eax, %eax
	movb	$3, _SineWaveFloor+18(%eax)
	jmp	L300
L183:
	imull	$6028, 84(%esp), %eax
	cmpl	$-1, _SectorObject+192(%eax)
	jne	L229
	movl	$2048, %ecx
	movl	%ecx, _SectorObject+192(%eax)
	movl	%ecx, _SectorObject+196(%eax)
L229:
	movl	72(%esp), %eax
	movzwl	_headspritestat+1000, %edx
	sarl	$2, %eax
	imull	$1182754763, %eax, %eax
	movl	%eax, 48(%esp)
	leal	500(%eax,%eax,4), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L232:
	cmpw	$-1, %dx
	je	L231
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	leal	(%edi,%eax), %ecx
	cmpw	40(%ecx), %bx
	jne	L232
	imull	$6028, 84(%esp), %edx
	sarl	$2, %eax
	movl	(%ecx), %esi
	imull	$-1171354717, %eax, %eax
	movl	%esi, 100(%esp)
	movl	4(%ecx), %esi
	movl	_SectorObject+176(%edx), %edx
	cwtl
	movl	%esi, 108(%esp)
	subl	%edi, %edx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %edi
	call	__Z10KillSprites
	movzwl	48(%esp), %eax
	movzwl	_headspritestat+1000, %edx
	movl	_sprite, %ebx
	leal	501(%eax,%eax,4), %esi
	.p2align 5
	.p2align 4
	.p2align 3
L234:
	cmpw	$-1, %dx
	je	L233
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	leal	(%ebx,%eax), %ecx
	cmpw	40(%ecx), %si
	jne	L234
	sarl	$2, %eax
	movl	(%ecx), %esi
	movl	4(%ecx), %ebx
	imull	$-1171354717, %eax, %eax
	movl	%ebx, 104(%esp)
	movl	%esi, 96(%esp)
	cwtl
	call	__Z10KillSprites
	subl	108(%esp), %ebx
	movl	%esi, %eax
	subl	100(%esp), %eax
	addl	%ebx, %eax
	movl	_sprite, %ebx
	sarl	$2, %eax
	movl	%eax, %edx
	shrl	$2, %edx
	subl	%edx, %eax
	movl	%eax, 188(%edi)
	movzwl	_headspritestat+1000, %edx
	jmp	L237
	.p2align 5
	.p2align 4,,10
	.p2align 3
L454:
	movswl	%dx, %eax
	movzwl	_nextspritestat(%eax,%eax), %edx
	imull	$44, %eax, %eax
	leal	(%ebx,%eax), %ecx
	cmpw	$27, 40(%ecx)
	je	L236
L237:
	cmpw	$-1, %dx
	jne	L454
L235:
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L238
	movl	%eax, 64(%esp)
	movl	_wall, %eax
	movl	$0, 116(%esp)
	movl	_sector, %esi
	movl	%eax, 60(%esp)
	movl	84(%esp), %eax
	imull	$6028, %eax, %ebx
	movl	%ebx, 92(%esp)
	imull	$3014, %eax, %ebx
	imull	$1507, %eax, %eax
	movl	%ebx, 56(%esp)
	movl	%eax, 52(%esp)
	movl	100(%esp), %eax
	movl	%eax, 112(%esp)
	.p2align 4
	.p2align 3
L245:
	movswl	(%esi), %edx
	movzwl	2(%esi), %ebx
	addl	%edx, %ebx
	subl	$1, %ebx
	cmpw	%bx, %dx
	jg	L239
	movl	%edx, %eax
	movl	%esi, 76(%esp)
	movl	112(%esp), %edi
	movswl	%bx, %ebx
	sall	$5, %eax
	movl	96(%esp), %esi
	addl	60(%esp), %eax
	jmp	L241
	.p2align 4,,10
	.p2align 3
L456:
	cmpl	%ecx, %esi
	jle	L437
	movl	4(%eax), %ecx
	cmpl	%ecx, 108(%esp)
	jge	L437
	cmpl	%ecx, 104(%esp)
	jle	L437
	addl	$1, %edx
	addl	$32, %eax
	cmpl	%edx, %ebx
	jl	L455
L241:
	movl	(%eax), %ecx
	cmpl	%ecx, %edi
	jl	L456
L437:
	movl	%edi, 112(%esp)
	movl	76(%esp), %esi
L240:
	addl	$1, 116(%esp)
	addl	$40, %esi
	movl	116(%esp), %eax
	cmpl	%eax, 64(%esp)
	jne	L245
L238:
	movl	72(%esp), %eax
	movl	_SectorObject(%eax), %eax
	testl	%eax, %eax
	je	L246
	imull	$6028, 84(%esp), %ecx
	movl	_wall, %edi
	xorl	%ebx, %ebx
	movl	80(%esp), %esi
	movl	%ecx, 112(%esp)
	.p2align 4
	.p2align 3
L252:
	movswl	(%eax), %ecx
	movzwl	2(%eax), %edx
	addl	%ecx, %edx
	subl	$1, %edx
	cmpw	%dx, %cx
	jg	L247
	movswl	%dx, %edx
	movl	%ecx, %eax
	movl	%esi, 92(%esp)
	addl	$1, %edx
	sall	$5, %eax
	movl	%edx, 116(%esp)
	leal	30(%edi,%eax), %eax
	.p2align 4
	.p2align 3
L251:
	cmpw	$550, -4(%eax)
	jne	L248
	movl	112(%esp), %esi
	movw	%cx, _SectorObject+6004(%esi)
L248:
	movzwl	(%eax), %esi
	movl	%esi, %edx
	shrw	$4, %dx
	andl	$1, %edx
	orl	%ebx, %edx
	testw	%si, %si
	cmovne	%edx, %ebx
	movl	%eax, %edx
	subl	%edi, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	-20(%eax), %edx
	orw	$192, (%eax)
	cmpw	$16383, %dx
	ja	L250
	movl	%edx, %esi
	andl	$134217727, %edx
	sall	$5, %esi
	addl	$1, _wallchanged(,%edx,4)
	orw	$192, 30(%edi,%esi)
L250:
	addl	$1, %ecx
	addl	$32, %eax
	cmpl	116(%esp), %ecx
	jne	L251
	movl	92(%esp), %esi
L247:
	movl	4(%esi), %eax
	addl	$4, %esi
	testl	%eax, %eax
	jne	L252
	testb	%bl, %bl
	je	L246
L253:
	imull	$458768, 48(%esp), %eax
	addl	$__ZL13so_interpdata.lto_priv.0, %eax
	movl	$0, 458752(%eax)
	movb	$0, 458764(%eax)
	movl	%eax, 116(%esp)
	movl	72(%esp), %eax
	movl	_SectorObject(%eax), %edx
	testl	%edx, %edx
	je	L255
	movl	80(%esp), %edi
	.p2align 4
	.p2align 3
L262:
	movswl	(%edx), %ecx
	movswl	2(%edx), %eax
	addl	%ecx, %eax
	movl	%eax, 92(%esp)
	subl	$1, %eax
	cmpl	%eax, %ecx
	jg	L256
	movl	%edi, 76(%esp)
	movl	%ecx, %edi
	.p2align 4
	.p2align 3
L258:
	movl	_wall, %esi
	movl	%edi, %edx
	sall	$5, %edx
	addl	%esi, %edx
	movl	%edx, %eax
	movswl	10(%edx), %ebx
	movl	%edx, 112(%esp)
	subl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	116(%esp), %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movl	112(%esp), %edx
	addl	$4, %edx
	movl	%edx, %eax
	subl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	116(%esp), %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	testw	%bx, %bx
	js	L257
	sall	$5, %ebx
	addl	%esi, %ebx
	movswl	8(%ebx), %eax
	sall	$5, %eax
	leal	(%esi,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	116(%esp), %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movswl	8(%ebx), %eax
	sall	$5, %eax
	leal	4(%esi,%eax), %edx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	116(%esp), %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
L257:
	addl	$1, %edi
	cmpl	%edi, 92(%esp)
	jne	L258
	movl	76(%esp), %edi
L256:
	movl	(%edi), %eax
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movswl	_headspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L259
	movl	_sprite, %ecx
	jmp	L261
	.p2align 5
	.p2align 4,,10
	.p2align 3
L260:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L259
L261:
	imull	$44, %eax, %edx
	addl	%ecx, %edx
	cmpw	$70, 26(%edx)
	jne	L260
	cmpw	$92, 40(%edx)
	jne	L260
L259:
	movl	116(%esp), %ecx
	notl	%eax
	addl	$4, %edi
	shrl	$31, %eax
	orb	458764(%ecx), %al
	movb	%al, 458764(%ecx)
	movl	(%edi), %edx
	testl	%edx, %edx
	jne	L262
	testb	%al, %al
	je	L457
L255:
	movl	116(%esp), %edi
	movl	44(%esp), %edx
	movl	$3, %ebx
	movl	%edi, %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movl	28(%esp), %edx
	movl	%edi, %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movl	40(%esp), %edx
	movl	%edi, %eax
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	imull	$458768, 48(%esp), %eax
	xorl	%ecx, %ecx
	movl	%ebx, __ZL13so_interpdata.lto_priv.0+458760(%eax)
	xorl	%ebx, %ebx
	movl	%ecx, __ZL13so_interpdata.lto_priv.0+458756(%eax)
	movl	84(%esp), %eax
	imull	$6028, %eax, %edi
	imull	$3014, %eax, %eax
	movl	%edi, 112(%esp)
	movl	%eax, 92(%esp)
	.p2align 4
	.p2align 3
L280:
	movzbl	__ZZ23SectorObjectSetupBoundsP19SECTOR_OBJECTstructE8StatList(%ebx), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L265
	movl	%ebx, 76(%esp)
	.p2align 4
	.p2align 3
L264:
	movswl	%si, %eax
	movw	%si, 116(%esp)
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movzwl	_nextspritestat(%eax,%eax), %esi
	movl	(%ebx), %edx
	cmpl	%edx, 100(%esp)
	jge	L266
	cmpl	%edx, 96(%esp)
	jle	L266
	movl	4(%ebx), %edx
	cmpl	%edx, 108(%esp)
	jge	L266
	cmpl	%edx, 104(%esp)
	jle	L266
	cmpw	$81, 26(%ebx)
	jne	L267
	testb	$-128, 42(%ebx)
	je	L266
L267:
	movl	_User(,%eax,4), %edi
	testl	%edi, %edi
	je	L458
L268:
	xorl	%eax, %eax
	movw	%ax, 80(%edi)
	movl	(%ebx), %eax
	movl	%eax, 56(%edi)
	movl	4(%ebx), %eax
	movl	%eax, 60(%edi)
	movl	8(%ebx), %eax
	movl	%eax, 64(%edi)
	cmpw	$0, 26(%ebx)
	jne	L269
	movzwl	40(%ebx), %eax
	cmpw	$62, %ax
	je	L270
	cmpw	$78, %ax
	jne	L269
	movl	112(%esp), %ecx
	xorl	%edi, %edi
	movw	%di, _SectorObject+3226(%ecx)
	movzwl	38(%ebx), %eax
	movswl	_SectorObject+3548(%ecx), %edi
	addl	92(%esp), %edi
	movw	%ax, _SectorObject+3228(%edi,%edi)
	movl	_SectorObject+180(%ecx), %eax
	movl	%eax, 64(%esp)
	movzwl	64(%esp), %edx
	subw	(%ebx), %dx
	movw	%dx, _SectorObject+3292(%edi,%edi)
	movl	_SectorObject+184(%ecx), %edx
	movl	%edx, %eax
	subw	4(%ebx), %ax
	movl	%edx, %ecx
	movl	%edx, 60(%esp)
	movw	%ax, _SectorObject+3356(%edi,%edi)
	movl	64(%esp), %eax
	subl	4(%ebx), %ecx
	subl	(%ebx), %eax
	imull	%eax, %eax
	imull	%ecx, %ecx
	addl	%eax, %ecx
	call	@ksqrt@4
	movw	%ax, _SectorObject+3484(%edi,%edi)
	movl	4(%ebx), %eax
	subl	60(%esp), %eax
	movl	(%ebx), %ecx
	movl	%eax, %edx
	subl	64(%esp), %ecx
	call	@getangle@8
	movl	112(%esp), %ecx
	movl	%eax, %ebx
	movswl	_SectorObject+3222(%ecx), %edx
	movswl	_SectorObject+3548(%ecx), %eax
	movl	%eax, 64(%esp)
	movl	%eax, %edi
	movl	%edx, %eax
	subl	%ebx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	movl	%ebx, %edx
	cmpl	$1024, %ecx
	jle	L272
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	leal	2048(%ebx), %edx
	cmpl	$1025, %ebx
	cmovge	%ebx, %edx
L272:
	movl	92(%esp), %ecx
	movswl	%di, %ebx
	subl	%edx, %eax
	addl	$1, %edi
	leal	1704(%ebx,%ecx), %ecx
	movw	%ax, _SectorObject+12(%ecx,%ecx)
	movl	112(%esp), %eax
	movw	%di, _SectorObject+3548(%eax)
	movswl	116(%esp), %eax
	call	__Z10KillSprites
	.p2align 4
	.p2align 3
L266:
	cmpw	$-1, %si
	jne	L264
	movl	76(%esp), %ebx
L265:
	addl	$1, %ebx
	cmpl	$12, %ebx
	jne	L280
	imull	$6028, 84(%esp), %eax
	leal	_SectorObject(%eax), %edx
	testb	$1, _SectorObject+597(%eax)
	je	L284
	movzwl	680(%edx), %edi
	cmpw	$-1, %di
	je	L285
	movl	80(%esp), %esi
	movl	_sprite, %ecx
	movswl	%di, %ebx
	movl	$-9999999, %eax
	movl	%esi, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L286:
	imull	$44, %ebx, %ebx
	movl	8(%ecx,%ebx), %ebx
	cmpl	%ebx, %eax
	cmovl	%ebx, %eax
	movswl	682(%esi), %ebx
	addl	$2, %esi
	cmpw	$-1, %bx
	jne	L286
	movswl	%di, %esi
	imull	$6028, 84(%esp), %ebx
	movl	_User(,%esi,4), %edi
	imull	$44, %esi, %esi
	movl	%eax, _SectorObject+188(%ebx)
	subl	8(%ecx,%esi), %eax
	movl	%eax, 256(%edi)
	movswl	_SectorObject+682(%ebx), %eax
	cmpw	$-1, %ax
	je	L284
L287:
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %eax
	movl	_SectorObject+188(%ebx), %edi
	addl	$2, %edx
	subl	8(%ecx,%eax), %edi
	movl	%edi, 256(%esi)
	movswl	682(%edx), %eax
	cmpw	$-1, %ax
	jne	L287
L284:
	imull	$6028, 84(%esp), %eax
	movzwl	_SectorObject+3214(%eax), %edx
	cmpw	$89, %dx
	jle	L288
	cmpw	$98, %dx
	jle	L459
	cmpw	$99, %dx
	jne	L291
	orl	$131072, _SectorObject+596(%eax)
	movl	$4, %edx
	movl	$0, _SectorObject+192(%eax)
	movl	$512, _SectorObject+572(%eax)
	movw	%dx, _SectorObject+3566(%eax)
L288:
	movl	_sector, %esi
	movl	68(%esp), %eax
	movl	$-858993459, %ebx
	xorl	%edi, %edi
	leal	(%esi,%eax), %ecx
	addl	$34, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 34(%ecx)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 36(%ecx)
	imull	$6028, 84(%esp), %eax
	cmpw	$0, _SectorObject+3204(%eax)
	jg	L299
	movl	80(%esp), %eax
	movl	$__Z17SpawnVehicleSmokes, %edx
	call	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE
	jmp	L299
	.p2align 4,,10
	.p2align 3
L270:
	movl	$-1171354717, %eax
	leal	30(%ebx), %edx
	subl	_sprite, %edx
	movl	$-1, %ecx
	mull	%edx
	movswl	116(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$55, %edx
	movw	%cx, 30(%ebx)
	call	__Z18change_sprite_statss
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
L269:
	movl	112(%esp), %ecx
	movl	_sector, %edx
	movl	_SectorObject+180(%ecx), %eax
	subl	(%ebx), %eax
	movl	%eax, 248(%edi)
	movl	_SectorObject+184(%ecx), %eax
	subl	4(%ebx), %eax
	movl	%eax, 252(%edi)
	movswl	_SectorObject+3202(%ecx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	72(%esp), %edx
	movl	8(%eax), %eax
	subl	8(%ebx), %eax
	movl	%eax, 256(%edi)
	orl	$16384, 68(%edi)
	movzwl	28(%ebx), %eax
	movw	%ax, 260(%edi)
	movzbl	17(%ebx), %eax
	movb	%al, 262(%edi)
	xorl	%eax, %eax
	jmp	L276
	.p2align 5
	.p2align 4,,10
	.p2align 3
L460:
	addl	$1, %eax
	cmpl	$60, %eax
	je	L277
L276:
	cmpw	$-1, _SectorObject+680(%edx,%eax,2)
	jne	L460
L277:
	movl	92(%esp), %ecx
	movl	%ebx, %edx
	leal	336(%eax,%ecx), %eax
	movzwl	116(%esp), %ecx
	movw	%cx, _SectorObject+8(%eax,%eax)
	movl	80(%esp), %eax
	call	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	movl	112(%esp), %eax
	testb	$1, _SectorObject+597(%eax)
	jne	L266
	movswl	_SectorObject+3210(%eax), %ecx
	testw	%cx, %cx
	jle	L266
	movl	80(%esp), %eax
	addl	92(%esp), %ecx
	movzwl	24(%ebx), %edx
	leal	_SectorObject(%ecx,%ecx), %ecx
	movl	%eax, 116(%esp)
	movl	116(%esp), %eax
	jmp	L279
	.p2align 4
	.p2align 4,,10
	.p2align 3
L278:
	addl	$2, %eax
	cmpl	%eax, %ecx
	je	L266
L279:
	cmpw	%dx, 600(%eax)
	jne	L278
	orl	$4194304, 68(%edi)
	movswl	24(%ebx), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	8(%eax), %eax
	subl	8(%ebx), %eax
	movl	%eax, 256(%edi)
	jmp	L266
L455:
	movl	%edi, 112(%esp)
	movl	76(%esp), %esi
L239:
	movl	92(%esp), %ecx
	movl	56(%esp), %ebx
	movswl	_SectorObject+3210(%ecx), %eax
	leal	296(%eax,%ebx), %edx
	movl	116(%esp), %ebx
	movw	%bx, _SectorObject+8(%edx,%edx)
	movl	52(%esp), %edx
	addl	$1, _sectorchanged(,%ebx,4)
	addl	%edx, %eax
	movl	%esi, _SectorObject(,%eax,4)
	orw	$4096, 38(%esi)
	movswl	_SectorObject+3210(%ecx), %eax
	movl	8(%esi), %ecx
	movl	%eax, %ebx
	addl	%edx, %eax
	leal	52(%eax), %edx
	movl	%ecx, _SectorObject(,%edx,4)
	movl	4(%esi), %edi
	movl	%edi, _SectorObject+368(,%eax,4)
	testb	$1, 38(%esi)
	je	L242
	movl	116(%esp), %eax
	movl	_SectUser(,%eax,4), %eax
	movswl	10(%eax), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%eax, _SectorObject(,%edx,4)
L242:
	movl	92(%esp), %ecx
	movl	8(%esi), %eax
	cmpl	_SectorObject+552(%ecx), %eax
	jle	L243
	movl	%eax, _SectorObject+552(%ecx)
L243:
	movl	92(%esp), %ecx
	cmpl	_SectorObject+556(%ecx), %eax
	jge	L244
	movl	%eax, _SectorObject+556(%ecx)
L244:
	movl	92(%esp), %edi
	leal	1(%ebx), %eax
	movw	%ax, _SectorObject+3210(%edi)
	jmp	L240
L458:
	movswl	116(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %edi
	jmp	L268
L447:
	xorl	%eax, %eax
	movl	%ecx, %edx
L179:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$160, %eax
	jb	L179
	imull	$6028, 84(%esp), %eax
	movl	$6, %edx
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movw	%dx, _SectorObject+3218(%eax)
	movl	$1024, %edx
	movw	%dx, _SectorObject+3226(%eax)
	movl	$-1, %edx
	movups	%xmm0, _SectorObject+572(%eax)
	movups	LC0, %xmm0
	movw	%dx, _SectorObject+3568(%eax)
	movl	$8, %edx
	movl	$0, _SectorObject+588(%eax)
	movl	$0, _SectorObject+200(%eax)
	movl	$0, _SectorObject+3548(%eax)
	movl	$16777472, _SectorObject+6000(%eax)
	movw	%cx, _SectorObject+3552(%eax)
	xorl	%ecx, %ecx
	movw	%dx, _SectorObject+3590(%eax)
	movl	_randomseed, %edx
	movups	%xmm0, _SectorObject+528(%eax)
	movlps	LC1, %xmm0
	movw	%cx, _SectorObject+3558(%eax)
	xorl	%ecx, %ecx
	movw	%cx, _SectorObject+3578(%eax)
	leal	(%edx,%edx,4), %ecx
	movlps	%xmm0, _SectorObject+548(%eax)
	leal	1(%edx,%ecx,4), %edx
	movlps	LC2, %xmm0
	movzwl	%dx, %ecx
	andw	$2047, %dx
	addl	$1, _krandcount
	movlps	%xmm0, _SectorObject+3204(%eax)
	movlps	LC3, %xmm0
	movl	%ecx, _randomseed
	xorl	%ecx, %ecx
	movl	$0, _SectorObject+592(%eax)
	movl	$0, _SectorObject+596(%eax)
	movl	$262144, _SectorObject+3560(%eax)
	movl	$9999999, _SectorObject+556(%eax)
	movl	$0, _SectorObject+204(%eax)
	movl	$0, _SectorObject+3222(%eax)
	movw	%dx, _SectorObject+6006(%eax)
	movlps	%xmm0, _SectorObject+3582(%eax)
	movl	$67108896, _SectorObject+6008(%eax)
	movl	$64, _SectorObject+6012(%eax)
	movl	$20, _SectorObject+6016(%eax)
	movw	%cx, _SectorObject+6020(%eax)
	movl	$0, _SectorObject+160(%eax)
	movl	$0, _SectorObject+164(%eax)
	movl	$0, _SectorObject+168(%eax)
	jmp	L178
L236:
	imull	$6028, 84(%esp), %edx
	movl	(%ecx), %ebx
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	%ebx, _SectorObject+180(%edx)
	movl	4(%ecx), %ebx
	cwtl
	movl	%ebx, _SectorObject+184(%edx)
	movl	8(%ecx), %ecx
	movl	%ecx, _SectorObject+188(%edx)
	call	__Z10KillSprites
	jmp	L235
L457:
	movl	72(%esp), %eax
	movl	_SectorObject(%eax), %ecx
	testl	%ecx, %ecx
	je	L255
	movl	80(%esp), %esi
	movl	$-858993459, %edi
	.p2align 4
	.p2align 3
L263:
	movl	_sector, %ebx
	leal	4(%ecx), %edx
	addl	$4, %esi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	116(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	4(%ecx), %edx
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movl	-4(%esi), %ecx
	addl	$8, %ecx
	movl	%ecx, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	116(%esp), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, %edx
	call	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	jne	L263
	jmp	L255
L459:
	cmpw	$95, %dx
	jle	L291
	orl	$131072, _SectorObject+596(%eax)
	movl	$0, _SectorObject+192(%eax)
	jmp	L288
L185:
	movswl	38(%ebx), %eax
	imull	$6028, 84(%esp), %ecx
	movl	$1, %edx
	sall	$5, %eax
	movl	%eax, _SectorObject+576(%ecx)
	movzbl	18(%ebx), %eax
	testb	$-33, %al
	cmove	%edx, %eax
	movl	$-1171354717, %edx
	movl	%eax, _SectorObject+580(%ecx)
	movswl	34(%ebx), %eax
	sall	$5, %eax
	movl	%eax, _SectorObject+584(%ecx)
	leal	36(%ebx), %eax
	subl	%edi, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$1, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	37(%ebx), %eax
	testb	%al, %al
	cmove	%edx, %eax
	movl	%eax, _SectorObject+588(%ecx)
	movzwl	42(%ebx), %eax
	testb	$64, %al
	je	L225
	orl	$4194304, _SectorObject+596(%ecx)
	movzwl	42(%ebx), %eax
L225:
	testb	$1, %ah
	je	L226
	imull	$6028, 84(%esp), %eax
	orl	$8388608, _SectorObject+596(%eax)
	movzwl	42(%ebx), %eax
L226:
	testb	$2, %ah
	je	L211
	imull	$6028, 84(%esp), %eax
	movl	8(%ebx), %edx
	orl	$16777216, _SectorObject+596(%eax)
	movl	%edx, _SectorObject+592(%eax)
	jmp	L211
L187:
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	je	L212
	imull	$6028, 84(%esp), %edx
	movw	%ax, _SectorObject+6000(%edx)
L212:
	movzwl	34(%ebx), %eax
	testw	%ax, %ax
	je	L444
	imull	$6028, 84(%esp), %edx
	movw	%ax, _SectorObject+6002(%edx)
L444:
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L188:
	movl	72(%esp), %edi
	movl	$1200, 8(%esp)
	movl	$0, 4(%esp)
	leal	_SectorObject+3592(%edi), %eax
	movl	%eax, (%esp)
	call	_memset
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %edx
	movw	%dx, _SectorObject+5992(%eax)
	leal	_SectorObject+4792(%edi), %eax
	leal	_SectorObject+5992(%edi), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L214:
	movzwl	38(%ebx), %ecx
	addl	$2, %eax
	movw	%cx, -2(%eax)
	cmpl	%eax, %edx
	jne	L214
	movzwl	28(%ebx), %eax
	testw	%ax, %ax
	movzbl	%al, %edx
	movl	$64, %eax
	cmove	%eax, %edx
	imull	$6028, 84(%esp), %eax
	movw	%dx, _SectorObject+5998(%eax)
	movzwl	32(%ebx), %edx
	negl	%edx
	movw	%dx, _SectorObject+5994(%eax)
	movzwl	34(%ebx), %edx
	movw	%dx, _SectorObject+5996(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L189:
	imull	$6028, 84(%esp), %eax
	movl	$-1171354717, %edx
	orl	$16384, _SectorObject+596(%eax)
	leal	_SectorObject(%eax), %ecx
	movzwl	38(%ebx), %eax
	movw	%ax, 3584(%ecx)
	movzwl	32(%ebx), %eax
	negl	%eax
	movw	%ax, 3586(%ecx)
	movw	%ax, 108(%esp)
	movzwl	34(%ebx), %eax
	movw	%ax, 3588(%ecx)
	movw	%ax, 104(%esp)
	movzwl	28(%ebx), %eax
	movw	%ax, 3578(%ecx)
	leal	36(%ebx), %eax
	subl	%edi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	_spritechanged(,%eax,4), %edx
	leal	1(%edx), %edi
	movl	%edi, _spritechanged(,%eax,4)
	movzbl	37(%ebx), %edi
	movw	%di, 3580(%ecx)
	leal	2(%edx), %ecx
	movl	%ecx, _spritechanged(,%eax,4)
	movl	$8, %ecx
	cmpb	$0, 36(%ebx)
	je	L216
	addl	$3, %edx
	movl	%edx, _spritechanged(,%eax,4)
	movzbl	36(%ebx), %ecx
L216:
	imull	$6028, 84(%esp), %eax
	movw	%cx, _SectorObject+3590(%eax)
	movzbl	18(%ebx), %edx
	testb	%dl, %dl
	je	L461
	cmpb	$1, %dl
	jne	L444
	movzwl	104(%esp), %edi
	movw	%di, _SectorObject+3582(%eax)
	jmp	L444
L190:
	imull	$6028, 84(%esp), %eax
	movl	$__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct, _SectorObject+168(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L191:
	imull	$6028, 84(%esp), %eax
	orl	$262144, _SectorObject+596(%eax)
	jmp	L444
L192:
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %edx
	movw	%dx, _SectorObject+3206(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L193:
	movzwl	38(%ebx), %edx
	movl	112(%esp), %eax
	movw	%dx, 86(%eax)
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	cmovne	%eax, %edx
	imull	$6028, 84(%esp), %eax
	movw	%dx, _SectorObject+3204(%eax)
	cmpb	$1, 18(%ebx)
	jne	L444
	orl	$524288, _SectorObject+596(%eax)
	jmp	L444
L194:
	imull	$6028, 84(%esp), %eax
	movl	$5, %ecx
	movw	%cx, _SectorObject+3578(%eax)
	orl	$16384, _SectorObject+596(%eax)
	movl	$__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct, _SectorObject+160(%eax)
	movl	72(%esp), %eax
	movl	$1200, 8(%esp)
	addl	$_SectorObject+3592, %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_krandcount, %eax
	movl	%eax, 108(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	$11, %eax
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L219
	movl	%ecx, %edx
	movl	$-2147450879, %eax
	sall	$14, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$26, %eax
	addl	$4, %eax
L219:
	imull	$6028, 84(%esp), %edx
	movw	%ax, _SectorObject+5992(%edx)
	movl	72(%esp), %eax
	leal	_SectorObject+4792(%eax), %ebx
	leal	_SectorObject+5992(%eax), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L221:
	leal	(%ecx,%ecx,4), %eax
	movl	$11, %edx
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L220
	movl	%ecx, %edx
	movl	$-2147450879, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$26, %edx
	addl	$4, %edx
L220:
	movw	%dx, (%ebx)
	addl	$2, %ebx
	cmpl	%ebx, %edi
	jne	L221
	movl	108(%esp), %eax
	movl	$-256, %edx
	movl	%ecx, _randomseed
	addl	$601, %eax
	movl	%eax, _krandcount
	imull	$6028, 84(%esp), %eax
	movl	$2097408, _SectorObject+5996(%eax)
	movw	%dx, _SectorObject+5994(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L195:
	testb	$1, _SW_GameFlags
	jne	L211
	imull	$6028, 84(%esp), %edx
	movl	$8, %eax
	movl	$7, %edi
	xorl	%ebx, %ebx
	movl	$262144120, _SectorObject+6008(%edx)
	movw	%ax, _SectorObject+6012(%edx)
	movswl	%si, %eax
	movw	%di, _SectorObject+6016(%edx)
	orl	$16384, _SectorObject+596(%edx)
	movw	%bx, _SectorObject+3578(%edx)
	movl	$__Z10MorphFloorP19SECTOR_OBJECTstruct, _SectorObject+164(%edx)
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L196:
	testb	$1, _SW_GameFlags
	jne	L211
	movl	$4, %edx
	movlps	32(%esp), %xmm2
	movl	$16, %ecx
	movl	$6, %edi
	imull	$6028, 84(%esp), %eax
	movl	$2500, %ebx
	movw	%dx, _SectorObject+3578(%eax)
	movzwl	_SectorObject+3222(%eax), %edx
	movl	$67108880, _SectorObject+6008(%eax)
	movw	%cx, _SectorObject+3558(%eax)
	movl	$-768, %ecx
	movw	%dx, _SectorObject+3554(%eax)
	movl	$8, %edx
	movw	%di, _SectorObject+6016(%eax)
	orl	$16384, _SectorObject+596(%eax)
	movl	$120, _SectorObject+192(%eax)
	movl	$__Z15DoTornadoObjectP19SECTOR_OBJECTstruct, _SectorObject+168(%eax)
	movw	%bx, _SectorObject+3226(%eax)
	movw	%dx, _SectorObject+6012(%eax)
	movw	%cx, _SectorObject+3586(%eax)
	movlps	%xmm2, _SectorObject+160(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L197:
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %edx
	movw	%si, _SectorObject+3576(%eax)
	movw	%dx, _SectorObject+3574(%eax)
	jmp	L211
L198:
	cmpb	$3, 18(%ebx)
	jne	L211
	movl	$41, %edx
	movswl	%si, %eax
	call	__Z18change_sprite_statss
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movswl	%si, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %edi
	movl	$0, 36(%eax)
	jmp	L211
L199:
	imull	$6028, 84(%esp), %eax
	movzwl	28(%ebx), %edx
	movw	%dx, _SectorObject+6022(%eax)
	movzwl	38(%ebx), %edx
	movw	%dx, _SectorObject+6024(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L200:
	imull	$6028, 84(%esp), %eax
	orl	$8192, _SectorObject+596(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L201:
	imull	$6028, 84(%esp), %eax
	orl	$4096, _SectorObject+596(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L202:
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %edx
	movw	%dx, _SectorObject+3562(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L203:
	imull	$6028, 84(%esp), %edx
	movswl	38(%ebx), %eax
	sall	$8, %eax
	movl	$262144, _SectorObject+3564(%edx)
	movl	%eax, _SectorObject+572(%edx)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L204:
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %ecx
	movzwl	_SectorObject+3222(%eax), %edx
	movw	%dx, _SectorObject+3554(%eax)
	movl	%ecx, %edx
	negl	%edx
	testw	%cx, %cx
	cmovs	%ecx, %edx
	movw	%dx, _SectorObject+3558(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L205:
	imull	$6028, 84(%esp), %edx
	leal	_SectorObject(%edx), %eax
	cmpw	$0, _SectorObject+3558(%edx)
	jne	L211
	movzwl	38(%ebx), %edx
	movw	%dx, 3558(%eax)
	movzwl	3222(%eax), %edx
	movw	%dx, 3554(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L206:
	movswl	38(%ebx), %eax
	imull	$6028, 84(%esp), %edx
	sall	$8, %eax
	movl	%eax, _SectorObject+192(%edx)
	movl	%eax, _SectorObject+196(%edx)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L207:
	imull	$6028, 84(%esp), %eax
	orl	$512, _SectorObject+596(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L208:
	imull	$6028, 84(%esp), %eax
	movzwl	38(%ebx), %edx
	movw	%dx, _SectorObject+3226(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L209:
	imull	$6028, 84(%esp), %eax
	orl	$256, _SectorObject+596(%eax)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L210:
	movzwl	28(%ebx), %eax
	imull	$6028, 84(%esp), %edx
	movl	%eax, %ecx
	sall	$16, %ecx
	movw	%ax, _SectorObject+3224(%edx)
	movw	%ax, _SectorObject+3222(%edx)
	orl	%ecx, %eax
	movl	%eax, _SectorObject+3552(%edx)
	xorl	%eax, %eax
	movw	%ax, _SectorObject+3560(%edx)
	movswl	%si, %eax
	call	__Z10KillSprites
	movl	_sprite, %edi
	jmp	L211
L246:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L462
L254:
	movl	48(%esp), %eax
	movl	$LC5, 4(%esp)
	movl	$_apptitle, (%esp)
	movl	%eax, 8(%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	jmp	L253
L291:
	imull	$6028, 84(%esp), %eax
	orl	$131072, _SectorObject+596(%eax)
	jmp	L288
L462:
	movl	48(%esp), %eax
	movl	$LC5, 12(%esp)
	movl	$2413, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L254
L461:
	movzwl	108(%esp), %edi
	movw	%di, _SectorObject+3582(%eax)
	jmp	L444
L285:
	movl	$-9999999, 188(%edx)
	jmp	L284
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z11SectorSetupv.cold;	.scl	3;	.type	32;	.endef
__Z11SectorSetupv.cold:
LFSB19:
L233:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	0, %eax
	ud2
L231:
	movl	0, %eax
	ud2
	.cfi_endproc
LFE19:
	.text
	.section	.text.unlikely,"x"
LCOLDE11:
	.text
LHOTE11:
	.p2align 4
	.globl	__Z13DoSpringBoardP12PLAYERstruct
	.def	__Z13DoSpringBoardP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13DoSpringBoardP12PLAYERstruct:
LFB29:
	.cfi_startproc
	movl	_sector, %ecx
	movlps	LC12, %xmm0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movb	$24, _PlayerGravity
	movswl	268(%eax), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	movswl	348(%eax), %ecx
	movswl	36(%edx), %edx
	negl	%edx
	movl	%edx, 112(%eax)
	movl	22968(%eax), %edx
	movl	_User(,%ecx,4), %ebx
	orl	$6, 22972(%eax)
	andl	$-49177, %edx
	movlps	%xmm0, 140(%eax)
	movl	$__Z17DoPlayerForceJumpP12PLAYERstruct, 22964(%eax)
	orl	$4, %edx
	movl	%edx, 22968(%eax)
	movl	$12, %edx
	movw	%dx, 376(%eax)
	movl	$50000, 208(%eax)
	movl	40(%ebx), %eax
	movl	-4(%ebp), %ebx
	movl	8(%eax), %edx
	movl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z19DoSpawnActorTriggers
	.def	__Z19DoSpawnActorTriggers;	.scl	2;	.type	32;	.endef
__Z19DoSpawnActorTriggers:
LFB31:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	movswl	_headspritestat+112, %esi
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movzwl	36(%esp), %ebp
	cmpl	$-1, %esi
	je	L465
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	jmp	L466
	.p2align 5
	.p2align 4,,10
	.p2align 3
L469:
	cmpl	$-1, %esi
	je	L479
L466:
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movswl	_nextspritestat(%esi,%esi), %esi
	cmpw	%bp, 40(%ebx)
	jne	L469
	movl	%ebx, %eax
	call	__Z10ActorSpawnP12spritetypev7
	testb	%al, %al
	je	L469
	movl	%ebx, %eax
	addl	$1, %edi
	call	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7
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
	movl	$484, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	12(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	cmpl	$-1, %esi
	jne	L466
	.p2align 4
	.p2align 3
L479:
	movl	16(%esp), %ebx
	.cfi_restore 3
L465:
	movl	%edi, %eax
	movl	20(%esp), %esi
	movl	24(%esp), %edi
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	__Z13OperateSectorss
	.def	__Z13OperateSectorss;	.scl	2;	.type	32;	.endef
__Z13OperateSectorss:
LFB32:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %esi
	cmpw	$0, 28(%esp)
	jne	L481
	movl	_SectUser(,%esi,4), %eax
	testl	%eax, %eax
	je	L482
	cmpw	$29, 12(%eax)
	je	L483
L482:
	movzwl	_headspritesect(%esi,%esi), %eax
	cmpw	$-1, %ax
	je	L481
	movl	_sprite, %ebx
	jmp	L484
	.p2align 4,,10
	.p2align 3
L487:
	cmpw	$71, %cx
	je	L508
	cmpw	$73, %cx
	jne	L489
	cmpw	$145, 40(%eax)
	je	L506
L489:
	movzwl	_nextspritesect(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L481
L484:
	movswl	%ax, %edx
	imull	$44, %edx, %eax
	addl	%ebx, %eax
	movswl	24(%eax), %ecx
	movl	_SectUser(,%ecx,4), %ecx
	testl	%ecx, %ecx
	je	L485
	cmpw	$29, 12(%ecx)
	je	L483
L485:
	movzwl	26(%eax), %ecx
	cmpw	$70, %cx
	jne	L487
	cmpw	$92, 40(%eax)
	jne	L489
L506:
	testb	$16, 42(%eax)
	je	L489
L483:
	addl	$12, %esp
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
L481:
	.cfi_restore_state
	movl	_sector, %edx
	leal	(%esi,%esi,4), %eax
	movl	_GlobPlayerP, %ebx
	leal	(%edx,%eax,8), %edx
	movzwl	34(%edx), %eax
	cmpw	$218, %ax
	je	L492
	cmpw	$220, %ax
	je	L493
	cmpw	$206, %ax
	jne	L483
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z14DoVatorOperateP12PLAYERstructs
L494:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L508:
	.cfi_restore_state
	cmpw	$143, 40(%eax)
	jne	L489
	jmp	L506
	.p2align 4,,10
	.p2align 3
L492:
	movzwl	36(%edx), %eax
	testw	%ax, %ax
	jle	L494
	movswl	%ax, %esi
	movl	%esi, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	jne	L494
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	jmp	L494
	.p2align 4,,10
	.p2align 3
L493:
	movzwl	36(%edx), %eax
	testw	%ax, %ax
	jle	L494
	movswl	%ax, %esi
	movl	%esi, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	jne	L494
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	jmp	L494
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z9SectorExpsssi
	.def	__Z9SectorExpsssi;	.scl	2;	.type	32;	.endef
__Z9SectorExpsssi:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	_sprite, %ebp
	movswl	72(%esp), %eax
	leal	44(%esp), %ecx
	imull	$44, %eax, %edi
	movl	_User(,%eax,4), %ebx
	movl	%eax, 20(%esp)
	movl	%ebx, 36(%esp)
	leal	12(%edi), %eax
	leal	0(%ebp,%edi), %ebx
	movl	%edi, 28(%esp)
	movswl	76(%esp), %edi
	mull	%esi
	leal	40(%esp), %eax
	movl	%edi, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	48(%esp), %edx
	andw	$-49, 12(%ebx)
	movl	%eax, (%esp)
	movl	%edi, %eax
	leal	28(%ebx), %edi
	call	__Z14SectorMidPointsPiS_S_
	movl	%edi, %edx
	leal	4(%ebx), %ecx
	subl	%ebp, %edx
	movl	%ecx, 24(%esp)
	movl	%edx, %eax
	mull	%esi
	movzwl	80(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movw	%ax, 28(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	leal	8(%ebx), %ecx
	movl	%eax, (%ebx)
	subl	_sprite, %edx
	movl	%ecx, %ebp
	movl	%edx, %eax
	subl	_sprite, %ebp
	subl	_sprite, %edi
	mull	%esi
	movl	44(%esp), %eax
	addl	$2, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 4(%ebx)
	movl	%ebp, %eax
	mull	%esi
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebp
	movl	%edi, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movzwl	%bp, %ebp
	movzbl	%dl, %eax
	addl	$-128, %eax
	addw	%ax, 28(%ebx)
	leal	0(%ebp,%ebp,4), %eax
	leal	1(%ebp,%eax,4), %edi
	movl	%ebx, %ebp
	subl	_sprite, %ebp
	movzwl	%di, %eax
	movl	%eax, _randomseed
	movl	%ebp, %eax
	mull	%esi
	shrl	$5, %edx
	andl	$1023, %edi
	addl	$1, _spritechanged(,%edx,4)
	subl	$512, %edi
	addl	%edi, (%ebx)
	movl	_randomseed, %eax
	movl	_sprite, %ebp
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	movl	24(%esp), %edx
	subl	%ebp, %ecx
	movzwl	%di, %eax
	andl	$1023, %edi
	subl	%ebp, %edx
	movl	%eax, _randomseed
	subl	$512, %edi
	movl	%edx, %eax
	mull	%esi
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	84(%esp), %eax
	addl	%edi, 4(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	cmpw	$4096, 76(%esp)
	ja	L510
	movl	28(%esp), %edi
	movzwl	24(%ebp,%edi), %eax
	cmpw	%ax, 76(%esp)
	je	L510
	cmpw	$4096, %ax
	je	L510
	movl	20(%esp), %esi
	movl	%esi, %eax
	call	_do_deletespritesect
	movl	32(%esp), %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
L510:
	movl	36(%esp), %esi
	movl	$-1171354717, %ebp
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
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z14SpawnSectorExps
	addl	$2, _krandcount
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %edx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movl	_sprite, %eax
	movzwl	%cx, %esi
	movzbl	%ch, %ecx
	leal	(%eax,%edx), %ebx
	leal	20(%edx), %eax
	andl	$31, %ecx
	mull	%ebp
	leal	(%esi,%esi,4), %eax
	subl	$16, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	addb	%cl, 20(%ebx)
	leal	1(%esi,%eax,4), %ecx
	movl	%edx, %eax
	mull	%ebp
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$8, %ecx
	andl	$31, %ecx
	shrl	$5, %edx
	subl	$16, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	addb	%cl, 21(%ebx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$92, %eax, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$92, %eax, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	addl	$52, %esp
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
LFE35:
	.p2align 4
	.globl	__Z15DoExplodeSectors
	.def	__Z15DoExplodeSectors;	.scl	2;	.type	32;	.endef
__Z15DoExplodeSectors:
LFB38:
	.cfi_startproc
	movzwl	_headspritestat+150, %eax
	cmpw	$-1, %ax
	je	L536
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
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	jmp	L513
	.p2align 6
	.p2align 4,,10
	.p2align 3
L520:
	cmpw	$-1, %bp
	je	L512
L513:
	movswl	%bp, %eax
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, 16(%esp)
	movzwl	_nextspritestat(%eax,%eax), %ebp
	movzwl	38(%ebx), %edx
	cmpw	%dx, 44(%esp)
	jne	L520
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L537
L515:
	movswl	24(%ebx), %eax
	movl	_sector, %esi
	movswl	28(%ebx), %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %edi
	leal	4(,%eax,8), %edx
	movl	$-858993459, %eax
	sall	$8, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	subl	%ecx, 4(%edi)
	movzwl	32(%ebx), %ecx
	testw	%cx, %cx
	je	L516
	leal	26(%edi), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%edi), %edx
	subl	%esi, %edx
	movw	%cx, 26(%edi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2, 14(%edi)
L516:
	movzwl	34(%ebx), %ecx
	testw	%cx, %cx
	je	L517
	leal	18(%edi), %edx
	movl	$-858993459, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%esi, %edx
	movw	%cx, 18(%edi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	orw	$2, 12(%edi)
L517:
	movl	4(%edi), %esi
	cmpl	8(%edi), %esi
	jge	L518
	movw	%bp, 22(%esp)
	movl	%esi, %ebp
	movl	16(%esp), %esi
	.p2align 4
	.p2align 3
L519:
	movl	_randomseed, %eax
	movl	$0, 8(%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sall	$8, %eax
	andl	$16128, %eax
	leal	-8192(%ebp,%eax), %eax
	addl	$15360, %ebp
	movl	%eax, 12(%esp)
	movswl	24(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z9SectorExpsssi
	cmpl	8(%edi), %ebp
	jl	L519
	movzwl	22(%esp), %ebp
L518:
	movl	16(%esp), %eax
	call	__Z10KillSprites
	cmpw	$-1, %bp
	jne	L513
L512:
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
L537:
	.cfi_restore_state
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	__Z9SpawnUserssP11STATEstruct
	jmp	L515
L536:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z11DoSpawnSpots
	.def	__Z11DoSpawnSpots;	.scl	2;	.type	32;	.endef
__Z11DoSpawnSpots:
LFB39:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	subw	$3, 216(%ecx)
	js	L541
L539:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L541:
	.cfi_restore_state
	movl	$67, %edx
	movl	%ebx, %eax
	movl	%ecx, 8(%esp)
	call	__Z18change_sprite_statss
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnShrapss
	movl	8(%esp), %ecx
	cmpw	$1, 88(%ecx)
	jne	L539
	movl	%ebx, %eax
	call	__Z10KillSprites
	jmp	L539
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z19DoSpawnSpotsForKills
	.def	__Z19DoSpawnSpotsForKills;	.scl	2;	.type	32;	.endef
__Z19DoSpawnSpotsForKills:
LFB40:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movzwl	32(%esp), %esi
	testw	%si, %si
	js	L542
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+134, %ebx
	cmpw	$-1, %bx
	je	L554
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	jmp	L544
	.p2align 6
	.p2align 4,,10
	.p2align 3
L545:
	cmpw	$-1, %bx
	je	L553
L544:
	movswl	%bx, %eax
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %edi
	cmpw	$69, 40(%ecx)
	jne	L545
	cmpw	38(%ecx), %si
	jne	L545
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	$41, %edx
	movl	_User(,%eax,4), %ebp
	movl	%edi, %eax
	movl	%ecx, 8(%esp)
	call	__Z18change_sprite_statss
	movl	8(%esp), %ecx
	movl	$__Z11DoSpawnSpots, 36(%ebp)
	movzwl	32(%ecx), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	movw	%ax, 216(%ebp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	_setspritez
	movl	$1, %eax
	movw	%ax, 88(%ebp)
	movl	24(%esp), %ebp
	.cfi_restore 5
	cmpw	$-1, %bx
	jne	L544
	.p2align 4
	.p2align 3
L553:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
L542:
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L554:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	12(%esp), %ebx
	.cfi_restore 3
	jmp	L542
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z14DoSkelTeleports
	.def	__Z14DoSkelTeleports;	.scl	2;	.type	32;	.endef
__Z14DoSkelTeleports:
LFB41:
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
	movswl	44(%esp), %eax
	imull	$44, %eax, %ebx
	movl	%eax, 20(%esp)
	addl	%ecx, %ebx
	movl	(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 16(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 8(%esp)
	jmp	L561
	.p2align 4,,10
	.p2align 3
L563:
	movl	(%ebx), %eax
	addl	%esi, %eax
L557:
	movl	%eax, (%ebx)
	movl	_randomseed, %eax
	movl	_krandcount, %ebp
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	addl	$2, %ebp
	movzwl	%di, %eax
	movl	%ebp, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	$-1171354717, %eax
	movl	8(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	%ecx, %esi
	movzwl	%cx, %ecx
	andl	$1023, %esi
	movl	%ecx, _randomseed
	addl	$512, %esi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	andl	$512, %edi
	movl	%eax, _spritechanged(,%edx,4)
	jne	L558
	movl	4(%ebx), %eax
	addl	%esi, %eax
L559:
	movl	%eax, 4(%ebx)
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	cmpw	$-1, 24(%ebx)
	jne	L560
	movl	_sprite, %ecx
L561:
	movl	%ebx, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %edx
	movl	%eax, (%ebx)
	movl	_sprite, %ebp
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	movl	16(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 4(%ebx)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	movzwl	%di, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	%ebx, %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movl	%ecx, %esi
	movl	_krandcount, %ebp
	movzwl	%cx, %ecx
	mull	%edx
	andl	$1023, %esi
	movl	%ecx, _randomseed
	addl	$2, %ebp
	addl	$512, %esi
	movl	%ebp, _krandcount
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	andl	$512, %edi
	movl	%eax, _spritechanged(,%edx,4)
	je	L563
	movl	(%ebx), %eax
	subl	%esi, %eax
	jmp	L557
	.p2align 4,,10
	.p2align 3
L558:
	movl	4(%ebx), %eax
	subl	%esi, %eax
	jmp	L559
	.p2align 4,,10
	.p2align 3
L560:
	addl	$24, %esp
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
	.section .rdata,"dr"
LC13:
	.ascii "source/sw/src/sector.cpp\0"
	.text
	.p2align 4
	.globl	__Z16DoSoundSpotMatchsss
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
__Z16DoSoundSpotMatchsss:
LFB42:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movzwl	64(%esp), %eax
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movzwl	_headspritestat+130, %ebp
	subl	$1, %eax
	movw	%ax, 30(%esp)
	cmpw	$-1, %bp
	je	L564
	movl	%ebx, 40(%esp)
	movl	%esi, 44(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L579
	.p2align 6
	.p2align 4,,10
	.p2align 3
L567:
	cmpw	$-1, %bp
	je	L612
L579:
	movswl	%bp, %ebx
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %ebp
	movl	%ebx, %esi
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzwl	38(%ebx), %eax
	cmpw	%ax, 60(%esp)
	jne	L567
	testb	$8, 43(%ebx)
	jne	L567
	leal	22(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	32(%ebx), %edi
	movzwl	22(%ebx), %eax
	movl	%edi, %edx
	movw	%di, 28(%esp)
	sall	$16, %edx
	movw	%ax, 24(%esp)
	orl	%edx, %eax
	movzwl	42(%ebx), %edx
	movl	%eax, 32(%esp)
	movzwl	34(%ebx), %eax
	movw	%dx, 20(%esp)
	movw	%ax, 36(%esp)
	movl	%edx, %eax
	andw	$128, %ax
	negw	%ax
	sbbl	%edi, %edi
	andl	$193, %edi
	andl	$64, %edx
	je	L569
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %eax
	orb	$8, %ah
	movw	%ax, 20(%esp)
	movw	%ax, 42(%ebx)
L569:
	movzwl	20(%esp), %edx
	movl	%edi, %eax
	orl	$8, %eax
	testb	$2, %dh
	cmovne	%eax, %edi
	movl	%edi, %eax
	orl	$4, %eax
	testb	$4, %dh
	cmovne	%eax, %edi
	andb	$1, %dh
	je	L572
	cmpw	$0, 28(%esp)
	je	L567
	cmpw	$0, 24(%esp)
	je	L567
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L574
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	32(%esp,%edx,2), %eax
	movw	%ax, 28(%esp)
	.p2align 4
	.p2align 3
L574:
	cmpw	$0, 28(%esp)
	jle	L567
	testb	$16, 20(%esp)
	je	L576
	movl	_GlobPlayerP, %eax
	testl	%eax, %eax
	je	L567
	imull	$24124, _myconnectindex, %edx
	addl	$_Player, %edx
	cmpl	%edx, %eax
	jne	L567
	cmpb	$0, _Prediction
	jne	L567
	leal	8(%eax), %edx
	movl	%eax, (%esp)
	movswl	28(%esp), %ecx
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%eax, 16(%esp)
	movl	$LC13, %eax
	movl	%edx, 4(%esp)
	movl	$1269, %edx
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L567
	.p2align 4,,10
	.p2align 3
L612:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
L564:
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L572:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	30(%esp), %eax
	movzwl	32(%esp,%eax,2), %eax
	movw	%ax, 28(%esp)
	testw	%ax, %ax
	jne	L574
	jmp	L567
	.p2align 4,,10
	.p2align 3
L576:
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 20(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	20(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movswl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L567
	cmpl	$-1, 32(%eax)
	je	L613
L577:
	movw	%si, 48(%eax)
	jmp	L567
L613:
	testb	$16, 28(%eax)
	jne	L577
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L567
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z20DoSoundSpotStopSounds
	.def	__Z20DoSoundSpotStopSounds;	.scl	2;	.type	32;	.endef
__Z20DoSoundSpotStopSounds:
LFB47:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movzwl	_headspritestat+130, %ebx
	movzwl	12(%esp), %esi
	cmpw	$-1, %bx
	jne	L615
	jmp	L614
	.p2align 6
	.p2align 4,,10
	.p2align 3
L617:
	cmpw	$-1, %bx
	je	L614
L615:
	movswl	%bx, %edx
	movzwl	_nextspritestat(%edx,%edx), %ebx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	cmpw	38(%edx), %si
	jne	L617
	testb	$-128, 42(%edx)
	je	L617
	call	__Z18DeleteNoSoundOwners
	cmpw	$-1, %bx
	jne	L615
L614:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z20DoStopSoundSpotMatchs
	.def	__Z20DoStopSoundSpotMatchs;	.scl	2;	.type	32;	.endef
__Z20DoStopSoundSpotMatchs:
LFB48:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movzwl	_headspritestat+132, %ebx
	movzwl	16(%esp), %esi
	cmpw	$-1, %bx
	jne	L626
	jmp	L625
	.p2align 6
	.p2align 4,,10
	.p2align 3
L629:
	cmpw	$-1, %bx
	je	L625
L626:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	38(%eax), %si
	jne	L629
	movswl	32(%eax), %eax
	movl	%eax, (%esp)
	call	__Z20DoSoundSpotStopSounds
	cmpw	$-1, %bx
	jne	L626
L625:
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
LFE48:
	.p2align 4
	.globl	__Z19DoDeleteSpriteMatchs
	.def	__Z19DoDeleteSpriteMatchs;	.scl	2;	.type	32;	.endef
__Z19DoDeleteSpriteMatchs:
LFB50:
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
	.p2align 4
	.p2align 3
L646:
	movzwl	_headspritestat+162, %eax
	movl	_sprite, %ecx
	movzwl	44(%esp), %esi
	jmp	L634
	.p2align 5
	.p2align 4,,10
	.p2align 3
L654:
	movswl	%ax, %ebp
	imull	$44, %ebp, %edx
	movzwl	_nextspritestat(%ebp,%ebp), %eax
	addl	%ecx, %edx
	cmpw	38(%edx), %si
	je	L637
L634:
	cmpw	$-1, %ax
	jne	L654
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
L637:
	.cfi_restore_state
	movl	4(%edx), %eax
	movl	(%edx), %edi
	movl	$__ZZ19DoDeleteSpriteMatchsE8StatList, %ecx
	movl	%ebp, %esi
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L635:
	movswl	(%ecx), %edx
	movzwl	_headspritestat(%edx,%edx), %ebp
	cmpw	$-1, %bp
	je	L639
	cmpw	$83, %dx
	je	L652
	movl	%edi, %ebx
	movl	%ecx, %edi
	jmp	L644
	.p2align 6
	.p2align 4,,10
	.p2align 3
L643:
	cmpw	$-1, %bp
	je	L655
L644:
	movswl	%bp, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebp
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpl	%ebx, (%eax)
	jne	L643
	movl	4(%esp), %edx
	cmpl	4(%eax), %edx
	jne	L643
	movl	%ecx, (%esp)
	movl	%ecx, 8(%esp)
	call	__Z17SpriteQueueDeletes
	movl	8(%esp), %eax
	call	__Z10KillSprites
	cmpw	$-1, %bp
	jne	L644
	.p2align 4
	.p2align 3
L655:
	movl	%edi, %ecx
	movl	%ebx, %edi
L639:
	addl	$2, %ecx
	cmpl	$__ZZ19DoDeleteSpriteMatchsE8StatList+18, %ecx
	jne	L635
L657:
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L646
	.p2align 4,,10
	.p2align 3
L652:
	movl	%ecx, 16(%esp)
	movl	%esi, 20(%esp)
	jmp	L641
	.p2align 6
	.p2align 4,,10
	.p2align 3
L640:
	cmpw	$-1, %bp
	je	L656
L641:
	movswl	%bp, %ebx
	movl	_sprite, %esi
	movl	%ebx, 8(%esp)
	movzwl	_nextspritestat(%ebx,%ebx), %ebp
	imull	$44, %ebx, %ebx
	leal	(%esi,%ebx), %ecx
	cmpl	%edi, (%ecx)
	jne	L640
	movl	4(%esp), %eax
	cmpl	%eax, 4(%ecx)
	jne	L640
	movzwl	34(%ecx), %eax
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movw	%ax, 14(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzbl	14(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	movb	%al, 16(%ecx)
	subl	%esi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	16(%ecx), %edx
	movb	$0, 17(%ecx)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	_sprite, %eax
	addl	%ebx, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	movl	8(%esp), %esi
	movl	%esi, (%esp)
	call	__Z17SpriteQueueDeletes
	movl	%esi, %eax
	call	__Z10KillSprites
	cmpw	$-1, %bp
	jne	L641
	.p2align 4
	.p2align 3
L656:
	movl	16(%esp), %ecx
	movl	20(%esp), %esi
	addl	$2, %ecx
	cmpl	$__ZZ19DoDeleteSpriteMatchsE8StatList+18, %ecx
	jne	L635
	jmp	L657
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z11DoTrapMatchs
	.def	__Z11DoTrapMatchs;	.scl	2;	.type	32;	.endef
__Z11DoTrapMatchs:
LFB51:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movzwl	_headspritestat+114, %esi
	movzwl	28(%esp), %edx
	cmpw	$-1, %si
	je	L670
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	jmp	L659
	.p2align 4,,10
	.p2align 3
L661:
	cmpw	$44, %cx
	je	L675
L663:
	cmpw	$63, %cx
	je	L676
L665:
	cmpw	$-1, %si
	je	L674
L659:
	movswl	%si, %eax
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movzwl	_nextspritestat(%eax,%eax), %esi
	movl	%eax, %edi
	cmpw	38(%ebx), %dx
	jne	L665
	movzwl	40(%ebx), %ecx
	movl	_User(,%eax,4), %ebp
	cmpw	$43, %cx
	jne	L661
	movzwl	216(%ebp), %ecx
	subl	$3, %ecx
	movw	%cx, 216(%ebp)
	testw	%cx, %cx
	jle	L662
	movzwl	40(%ebx), %ecx
	cmpw	$44, %cx
	jne	L663
L675:
	movzwl	216(%ebp), %eax
	subl	$3, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jle	L664
	movzwl	40(%ebx), %ecx
	cmpw	$63, %cx
	jne	L665
L676:
	movzwl	216(%ebp), %eax
	subl	$3, %eax
	testw	%ax, %ax
	jle	L666
	movw	%ax, 216(%ebp)
	cmpw	$-1, %si
	jne	L659
	.p2align 4
	.p2align 3
L674:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
L670:
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$24, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L662:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$120, %ecx
	movl	%edx, 4(%esp)
	movw	%cx, 216(%ebp)
	movl	%eax, (%esp)
	call	__Z16InitFireballTraps
	movzwl	40(%ebx), %ecx
	movl	4(%esp), %edx
	jmp	L661
	.p2align 4,,10
	.p2align 3
L664:
	movl	%edx, 4(%esp)
	movl	$120, %edx
	movw	%dx, 216(%ebp)
	movl	%edi, (%esp)
	call	__Z12InitBoltTraps
	movzwl	40(%ebx), %ecx
	movl	4(%esp), %edx
	jmp	L663
	.p2align 4,,10
	.p2align 3
L666:
	movl	$120, %eax
	movl	%edx, 4(%esp)
	movw	%ax, 216(%ebp)
	movl	%edi, (%esp)
	call	__Z13InitSpearTraps
	movl	4(%esp), %edx
	jmp	L665
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z24OperateContinuousTriggerP12PLAYERstruct
	.def	__Z24OperateContinuousTriggerP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z24OperateContinuousTriggerP12PLAYERstruct:
LFB52:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L677
	movswl	268(%eax), %eax
	testw	%ax, %ax
	js	L677
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	cmpw	$43, 34(%eax,%edx,8)
	je	L679
L677:
	ret
	.p2align 4,,10
	.p2align 3
L679:
	movswl	36(%eax,%edx,8), %eax
	movl	%eax, 4(%esp)
	jmp	__Z11DoTrapMatchs
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z22PlayerTakeSectorDamageP12PLAYERstruct
	.def	__Z22PlayerTakeSectorDamageP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z22PlayerTakeSectorDamageP12PLAYERstruct:
LFB55:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ecx
	movswl	348(%ecx), %eax
	movl	_User(,%eax,4), %edx
	movzwl	182(%edx), %eax
	subw	$3, %ax
	js	L681
	movw	%ax, 182(%edx)
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L681:
	.cfi_restore_state
	movswl	268(%ecx), %eax
	movl	%ecx, 12(%esp)
	movl	_SectUser(,%eax,4), %eax
	movw	$120, 182(%edx)
	movzwl	20(%eax), %edx
	movl	%ecx, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	12(%esp), %ecx
	movl	$-1, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z10NearThingsP12PLAYERstruct
	.def	__Z10NearThingsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z10NearThingsP12PLAYERstruct:
LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$88, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	movl	_sector, %eax
	movswl	268(%ebx), %edx
	leal	(%edx,%edx,4), %ecx
	leal	(%eax,%ecx,8), %eax
	cmpw	$900, 36(%eax)
	je	L702
	movl	300(%ebx), %ecx
	leal	60(%esp), %esi
	movl	$0, 44(%esp)
	movl	%esi, 32(%esp)
	leal	54(%esp), %esi
	movl	%ecx, %eax
	movl	%esi, 28(%esp)
	leal	56(%esp), %esi
	sarl	$31, %eax
	movl	%esi, 24(%esp)
	leal	58(%esp), %esi
	xorw	%ax, %ax
	movl	$3, 40(%esp)
	leal	32768(%ecx,%eax), %ecx
	movl	$1024, 36(%esp)
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	movl	%esi, 20(%esp)
	cmovns	%ecx, %eax
	movl	%edx, 12(%esp)
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movswl	54(%esp), %eax
	testw	%ax, %ax
	jns	L703
	movswl	56(%esp), %eax
	testw	%ax, %ax
	js	L691
	sall	$5, %eax
	addl	_wall, %eax
	movl	$1, %esi
	cmpw	$900, 28(%eax)
	jne	L684
	imull	$24124, _myconnectindex, %edx
	addl	$_Player, %edx
	cmpl	%edx, %ebx
	je	L704
	.p2align 4
	.p2align 3
L695:
	xorl	%esi, %esi
L684:
	leal	-8(%ebp), %esp
	movl	%esi, %eax
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
L703:
	.cfi_restore_state
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	$900, 40(%eax)
	jne	L695
	imull	$24124, _myconnectindex, %edx
	addl	$_Player, %edx
	cmpl	%edx, %ebx
	jne	L695
	movzbl	_Prediction, %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L695
	movswl	38(%eax), %ecx
	leal	8(%ebx), %eax
	movl	%ebx, 16(%esp)
	movl	$2371, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, %eax
	movl	$9, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L684
	.p2align 4,,10
	.p2align 3
L702:
	imull	$24124, _myconnectindex, %edx
	addl	$_Player, %edx
	cmpl	%edx, %ebx
	jne	L695
	movzbl	_Prediction, %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L695
	movswl	34(%eax), %ecx
	leal	8(%ebx), %eax
	movl	%ebx, 16(%esp)
	movl	$2352, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, %eax
	movl	$9, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L684
	.p2align 4,,10
	.p2align 3
L691:
	movl	300(%ebx), %edx
	xorl	%eax, %eax
	movl	$0, 64(%esp)
	movw	%ax, 80(%esp)
	movl	%edx, %eax
	movl	$0, 68(%esp)
	sarl	$31, %eax
	movl	$0, 72(%esp)
	xorw	%ax, %ax
	movl	$0, 76(%esp)
	leal	32768(%edx,%eax), %eax
	movl	4(%ebx), %edx
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	movl	8(%ebx), %eax
	movl	$0, 12(%esp)
	sarl	$16, %ecx
	leal	-7680(%eax), %esi
	leal	64(%esp), %eax
	movl	%eax, 16(%esp)
	movl	%ecx, %eax
	addl	$512, %ecx
	andl	$2047, %eax
	andl	$2047, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	%ecx, 4(%esp)
	movswl	268(%ebx), %ecx
	movl	%ecx, (%esp)
	movl	(%ebx), %eax
	movl	%esi, %ecx
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	cmpw	$0, 80(%esp)
	js	L695
	movl	(%ebx), %edx
	subl	64(%esp), %edx
	movl	%edx, %eax
	movl	4(%ebx), %ecx
	negl	%eax
	cmovs	%edx, %eax
	subl	68(%esp), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	movl	%ecx, %edx
	sarl	%eax
	subl	%eax, %edx
	cmpl	$1500, %edx
	jg	L695
	cmpw	$0, 76(%esp)
	jns	L695
	cmpw	$0, 58(%esp)
	jns	L696
	movswl	78(%esp), %eax
	testw	%ax, %ax
	js	L695
	sall	$5, %eax
	addl	_wall, %eax
	testb	$-128, 30(%eax)
	jne	L696
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L705
	.p2align 4
	.p2align 3
L696:
	movl	$1, %esi
	jmp	L684
	.p2align 4,,10
	.p2align 3
L704:
	movzbl	_Prediction, %esi
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L695
	movswl	26(%eax), %ecx
	leal	8(%ebx), %eax
	movl	%ebx, 16(%esp)
	movl	$2382, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, %eax
	movl	$9, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L684
L705:
	movl	$32766, %esi
	leal	8(%ebx), %ecx
	leal	4(%ebx), %edx
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	cmpl	%esi, %eax
	movl	%ebx, 12(%esp)
	cmova	%esi, %eax
	movl	$9, 8(%esp)
	movl	%edx, (%esp)
	sall	$14, %eax
	cmpl	$521285233, %eax
	ja	L706
	movl	$264, %edx
	movl	$2423, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L696
L706:
	movl	$450, %edx
	movl	$2421, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L696
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	.def	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii;	.scl	2;	.type	32;	.endef
__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii:
LFB59:
	.cfi_startproc
	subl	$88, %esp
	.cfi_def_cfa_offset 92
	movl	%ebx, 72(%esp)
	.cfi_offset 3, -20
	movl	96(%esp), %ebx
	movl	%esi, 76(%esp)
	movzbl	108(%esp), %ecx
	movl	%edi, 80(%esp)
	movl	300(%ebx), %edx
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	104(%esp), %esi
	movl	92(%esp), %edi
	movl	%ecx, 40(%esp)
	leal	68(%esp), %ecx
	movl	%edx, %eax
	movl	%ecx, 32(%esp)
	leal	62(%esp), %ecx
	sarl	$31, %eax
	movl	%ecx, 28(%esp)
	leal	64(%esp), %ecx
	xorw	%ax, %ax
	movl	%ecx, 24(%esp)
	leal	66(%esp), %ecx
	leal	32768(%edx,%eax), %edx
	movl	$0, 44(%esp)
	testl	%edx, %edx
	leal	65535(%edx), %eax
	movl	%esi, 36(%esp)
	cmovns	%edx, %eax
	movl	%ecx, 20(%esp)
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_neartag.constprop.0
	movzwl	_nti_cnt, %eax
	movzwl	66(%esp), %edx
	addl	$1, %eax
	testw	%dx, %dx
	js	L709
	movswl	%dx, %ecx
	movl	_sector, %esi
	movl	%ebp, 84(%esp)
	leal	(%ecx,%ecx,4), %ecx
	movw	%ax, _nti_cnt
	cwtl
	sall	$3, %ecx
	addl	%ecx, %esi
	.cfi_offset 5, -8
	movzwl	34(%esi), %ebp
	movzwl	36(%esi), %esi
	movw	%dx, 4(%edi)
	movl	$-1, 6(%edi)
	movw	%si, 50(%esp)
	movl	68(%esp), %esi
	movw	%bp, 52(%esp)
	movl	%esi, (%edi)
	cmpl	112(%esp), %eax
	jl	L718
L717:
	movl	84(%esp), %ebp
	.cfi_restore 5
L707:
	movl	72(%esp), %ebx
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	addl	$88, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L718:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_sector, %eax
	movl	$-858993459, %esi
	movl	%ecx, 56(%esp)
	leal	(%eax,%ecx), %ebp
	leal	34(%ecx), %eax
	xorl	%ecx, %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ebp), %edx
	subl	_sector, %edx
	movl	%edx, %eax
	movw	%cx, 34(%ebp)
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 36(%ebp)
	movl	112(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 20(%esp)
	movl	108(%esp), %eax
	movl	%eax, 16(%esp)
	movl	104(%esp), %eax
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	movl	56(%esp), %ecx
	movzwl	52(%esp), %ebp
	movl	_sector, %edi
	leal	34(%ecx), %eax
	mull	%esi
	leal	36(%ecx), %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	mull	%esi
	movzwl	50(%esp), %esi
	movw	%bp, 34(%edi,%ecx)
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 36(%edi,%ecx)
	movl	84(%esp), %ebp
	.cfi_restore 5
	movl	72(%esp), %ebx
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	addl	$88, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L709:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	64(%esp), %edx
	testw	%dx, %dx
	js	L711
	movl	_wall, %ecx
	movswl	%dx, %esi
	movl	%ebp, 84(%esp)
	sall	$5, %esi
	movw	%ax, _nti_cnt
	cwtl
	addl	%esi, %ecx
	.cfi_offset 5, -8
	movzwl	26(%ecx), %ebp
	movzwl	28(%ecx), %ecx
	movw	%dx, 6(%edi)
	movl	$-1, %edx
	movw	%dx, 8(%edi)
	movw	%bp, 50(%esp)
	movl	68(%esp), %ebp
	movl	%ebp, (%edi)
	movl	$-1, %ebp
	movw	%bp, 4(%edi)
	cmpl	112(%esp), %eax
	jge	L717
	movl	_wall, %eax
	movl	%ecx, 52(%esp)
	leal	(%eax,%esi), %edx
	movl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 26(%edx)
	leal	28(%edx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 28(%edx)
	movl	112(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 20(%esp)
	movl	108(%esp), %eax
	movl	%eax, 16(%esp)
	movl	104(%esp), %eax
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	movl	_wall, %ebx
	movzwl	50(%esp), %ebp
	movl	52(%esp), %ecx
	leal	(%ebx,%esi), %edx
	shrl	$5, %esi
	leal	28(%edx), %eax
	addl	$1, _wallchanged(,%esi,4)
	subl	%ebx, %eax
	movw	%bp, 26(%edx)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 28(%edx)
	movl	84(%esp), %ebp
	.cfi_restore 5
	movl	72(%esp), %ebx
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	addl	$88, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L711:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzwl	62(%esp), %edx
	testw	%dx, %dx
	js	L712
	movswl	%dx, %esi
	movl	_sprite, %ecx
	movl	%ebp, 84(%esp)
	.cfi_offset 5, -8
	imull	$44, %esi, %esi
	movw	%ax, _nti_cnt
	cwtl
	addl	%esi, %ecx
	movzwl	38(%ecx), %ebp
	movzwl	40(%ecx), %ecx
	movl	$-1, 4(%edi)
	movw	%dx, 8(%edi)
	movw	%cx, 50(%esp)
	movl	68(%esp), %ecx
	movl	%ecx, (%edi)
	cmpl	112(%esp), %eax
	jge	L717
	movl	_sprite, %eax
	leal	38(%esi), %edx
	leal	(%eax,%esi), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 38(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	movl	112(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 20(%esp)
	movl	108(%esp), %eax
	movl	%eax, 16(%esp)
	movl	104(%esp), %eax
	movl	%eax, 12(%esp)
	movl	100(%esp), %eax
	movl	%eax, 8(%esp)
	leal	12(%edi), %eax
	movl	%eax, (%esp)
	call	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	movl	$-1171354717, %eax
	leal	38(%esi), %edx
	movl	_sprite, %edi
	mull	%edx
	movl	$-1171354717, %eax
	movzwl	50(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%esi), %edx
	mull	%edx
	movw	%bp, 38(%edi,%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 40(%edi,%esi)
	movl	84(%esp), %ebp
	.cfi_restore 5
	jmp	L707
	.p2align 4,,10
	.p2align 3
L712:
	movl	$-1, %edx
	movl	$-1, (%edi)
	movl	$-1, 4(%edi)
	movw	%dx, 8(%edi)
	movw	%ax, _nti_cnt
	jmp	L707
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z16BuildNearTagListP13NEAR_TAG_INFOiP12PLAYERstructiiii
	.def	__Z16BuildNearTagListP13NEAR_TAG_INFOiP12PLAYERstructiiii;	.scl	2;	.type	32;	.endef
__Z16BuildNearTagListP13NEAR_TAG_INFOiP12PLAYERstructiiii:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	40(%esp), %ebx
	movl	44(%esp), %eax
	movl	$-1, 4(%esp)
	movl	60(%esp), %edx
	movl	64(%esp), %ecx
	movl	48(%esp), %esi
	movl	52(%esp), %edi
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	56(%esp), %ebp
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	call	_memset
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	xorl	%eax, %eax
	movl	%ebp, 52(%esp)
	movl	%edi, 48(%esp)
	movl	%esi, 44(%esp)
	movl	%ebx, 40(%esp)
	movw	%ax, _nti_cnt
	movl	%ecx, 60(%esp)
	movl	%edx, 56(%esp)
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
	jmp	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z16DoPlayerGrabStarP12PLAYERstruct
	.def	__Z16DoPlayerGrabStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16DoPlayerGrabStarP12PLAYERstruct:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %ebp
	jmp	L726
	.p2align 5
	.p2align 4,,10
	.p2align 3
L722:
	addl	$1, %edi
	cmpl	$32, %edi
	je	L734
L726:
	movswl	_StarQueue(%edi,%edi), %esi
	testw	%si, %si
	js	L722
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	8(%esi), %ebx
	movl	4(%esi), %edx
	movl	(%esi), %eax
	subl	8(%ebp), %ebx
	subl	4(%ebp), %edx
	subl	0(%ebp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 12(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	leal	3072(%ebx), %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 20(%esp)
	cmpl	%edx, %ecx
	jge	L723
	leal	16(%esp), %ebx
	leal	12(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	12(%esp), %ecx
	movl	20(%esp), %eax
L723:
	cmpl	%eax, %ecx
	jge	L724
	leal	12(%esp), %eax
	leal	20(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	20(%esp), %eax
	movl	12(%esp), %ecx
L724:
	addl	16(%esp), %eax
	movl	%ecx, %ebx
	movl	%eax, %edx
	sarl	$4, %ebx
	movl	%ecx, %eax
	movl	%edx, %ecx
	subl	%ebx, %eax
	sarl	$3, %edx
	sarl	$2, %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	cmpl	$499, %eax
	jg	L722
	movl	$1, %ecx
	movl	$1, %edx
	leal	8(%esi), %ebx
	movl	%ebp, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%esi), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%esi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	8(%esp), %ecx
	movl	$54, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	_StarQueue(%edi,%edi), %eax
	call	__Z10KillSprites
	movl	$-1, %eax
	movw	%ax, _StarQueue(%edi,%edi)
	movl	23012(%ebp), %eax
	testb	$2, %al
	je	L735
L729:
	addl	$24, %esp
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
L734:
	.cfi_restore_state
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
L735:
	.cfi_restore_state
	orl	$2, %eax
	movl	%eax, 23012(%ebp)
	cmpb	$0, _Prediction
	jne	L729
	cmpw	$2, 23018(%ebp)
	jle	L729
	testb	$16, 22969(%ebp)
	jne	L729
	movl	%ebp, %eax
	call	__Z14InitWeaponStarP12PLAYERstruct.part.0
	jmp	L729
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z15DoSineWaveFloorv
	.def	__Z15DoSineWaveFloorv;	.scl	2;	.type	32;	.endef
__Z15DoSineWaveFloorv:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_SineWaveFloor+420, %ebp
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
	movl	_sector, %edi
	movl	$_SineWaveFloor+420, 8(%esp)
	.p2align 4
	.p2align 3
L743:
	movswl	-408(%ebp), %eax
	testw	%ax, %ax
	js	L737
	movzbl	-402(%ebp), %ecx
	leal	-420(%ebp), %ebx
	movb	%cl, 7(%esp)
	testb	$2, %cl
	jne	L738
	andl	$1, %ecx
	jne	L739
	jmp	L740
	.p2align 6
	.p2align 4,,10
	.p2align 3
L774:
	movswl	16(%ebx), %ecx
	movl	$3, %eax
	addl	$20, %ebx
	sall	%cl, %eax
	addw	-6(%ebx), %ax
	andw	$2047, %ax
	movw	%ax, -6(%ebx)
	cmpw	$0, 12(%ebx)
	js	L737
L740:
	cmpl	%ebp, %ebx
	jb	L774
	.p2align 4
	.p2align 3
L737:
	addl	$420, %ebp
	movl	$_SineWaveFloor+2940, %eax
	cmpl	%ebp, %eax
	jne	L743
L777:
	movl	8(%esp), %ebx
	jmp	L748
	.p2align 5
	.p2align 4,,10
	.p2align 3
L744:
	addl	$420, %ebx
	cmpl	$_SineWaveFloor+2940, %ebx
	je	L775
L748:
	movswl	-408(%ebx), %eax
	testw	%ax, %ax
	js	L744
	leal	-420(%ebx), %esi
	testb	$8, -402(%ebx)
	jne	L745
	addl	$420, %ebx
	cmpl	$_SineWaveFloor+2940, %ebx
	jne	L748
L775:
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
L776:
	.cfi_restore_state
	movswl	16(%ebx), %ecx
	movl	$3, %edx
	sall	%cl, %edx
	addw	14(%ebx), %dx
	andl	$2047, %edx
	movw	%dx, 14(%ebx)
	testb	$1, 7(%esp)
	je	L742
	leal	(%eax,%eax,4), %esi
	movswl	_sintable(%edx,%edx), %ecx
	movl	$-858993459, %eax
	imull	8(%ebx), %ecx
	leal	8(,%esi,8), %edx
	mull	%edx
	sarl	$14, %ecx
	addl	(%ebx), %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, 8(%edi,%esi,8)
L742:
	movswl	14(%ebx), %eax
	addl	$20, %ebx
	movswl	_sintable(%eax,%eax), %ecx
	movswl	-8(%ebx), %eax
	imull	-12(%ebx), %ecx
	leal	(%eax,%eax,4), %esi
	movl	$-858993459, %eax
	leal	4(,%esi,8), %edx
	mull	%edx
	sarl	$14, %ecx
	addl	-16(%ebx), %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, 4(%edi,%esi,8)
	movswl	12(%ebx), %eax
	testw	%ax, %ax
	js	L737
L738:
	cmpl	%ebp, %ebx
	jb	L776
	addl	$420, %ebp
	movl	$_SineWaveFloor+2940, %eax
	cmpl	%ebp, %eax
	jne	L743
	jmp	L777
	.p2align 4,,10
	.p2align 3
L778:
	movswl	16(%ebx), %ecx
	movl	$3, %edx
	leal	(%eax,%eax,4), %esi
	addl	$20, %ebx
	movl	$-858993459, %eax
	sall	%cl, %edx
	addw	-6(%ebx), %dx
	andl	$2047, %edx
	movw	%dx, -6(%ebx)
	movswl	_sintable(%edx,%edx), %ecx
	leal	8(,%esi,8), %edx
	imull	-12(%ebx), %ecx
	mull	%edx
	sarl	$14, %ecx
	addl	-20(%ebx), %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ecx, 8(%edi,%esi,8)
	movswl	12(%ebx), %eax
	testw	%ax, %ax
	js	L737
L739:
	cmpl	%ebp, %ebx
	jb	L778
	addl	$420, %ebp
	movl	$_SineWaveFloor+2940, %eax
	cmpl	%ebp, %eax
	jne	L743
	jmp	L777
	.p2align 4,,10
	.p2align 3
L779:
	movswl	(%ecx,%edx,8), %edx
	addl	$2, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movl	4(%edx), %ebp
	movl	(%edx), %edi
	movswl	12(%edx), %edx
	leal	(%edx,%edx,4), %edx
	movl	8(%ecx,%edx,8), %edx
	movl	%ebp, %ecx
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	_alignflorslope
	.p2align 4
	.p2align 3
L746:
	movswl	32(%esi), %eax
	addl	$20, %esi
	testw	%ax, %ax
	js	L744
L745:
	cmpl	%ebx, %esi
	jnb	L744
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %edx
	testb	$2, 14(%ecx,%edx,8)
	je	L746
	cmpw	$4, 2(%ecx,%edx,8)
	jne	L746
	jmp	L779
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z14DoSineWaveWallv
	.def	__Z14DoSineWaveWallv;	.scl	2;	.type	32;	.endef
__Z14DoSineWaveWallv:
LFB67:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	movl	%ebp, 12(%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$_SineWall+1024, %esi
	.p2align 4
	.p2align 3
L786:
	movswl	-1016(%esi), %eax
	testw	%ax, %ax
	js	L781
	leal	-1024(%esi), %ebx
	jmp	L782
	.p2align 4,,10
	.p2align 3
L789:
	movl	(%ecx), %ebp
	addl	$16, %ebx
	movl	%edx, %ecx
	movl	%ebp, %edx
	call	_dragpoint.constprop.0
	movswl	8(%ebx), %eax
	testw	%ax, %ax
	js	L781
L782:
	cmpl	%esi, %ebx
	jnb	L781
	movswl	12(%ebx), %ecx
	movl	$3, %edx
	sall	%cl, %edx
	addw	10(%ebx), %dx
	movl	%eax, %ecx
	andl	$2047, %edx
	sall	$5, %ecx
	addl	_wall, %ecx
	movw	%dx, 10(%ebx)
	movswl	_sintable(%edx,%edx), %edx
	imull	4(%ebx), %edx
	sarl	$14, %edx
	addl	(%ebx), %edx
	cmpw	$0, 14(%ebx)
	je	L789
	movl	4(%ecx), %ecx
	addl	$16, %ebx
	call	_dragpoint.constprop.0
	movswl	8(%ebx), %eax
	testw	%ax, %ax
	jns	L782
L781:
	addl	$1024, %esi
	movl	$_SineWall+7168, %eax
	cmpl	%esi, %eax
	jne	L786
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	12(%esp), %ebp
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z9SetupSerps
	.def	__Z9SetupSerps;	.scl	2;	.type	32;	.endef
__Z9SetupSerps:
LFB68:
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
	je	L791
	movl	_User(,%edi,4), %esi
L792:
	movzwl	_Skill, %eax
	testw	%ax, %ax
	jne	L793
	movl	$1100, %ecx
	movw	%cx, 84(%esi)
L794:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L795
	movl	$0, 76(%eax)
	movl	$_s_SerpRun, 24(%eax)
	movl	$_s_SerpRun, 16(%eax)
	movswl	_s_SerpRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L795
	andl	$63, %eax
	movb	%al, 3(%edx)
L795:
	movl	$_SerpAttrib, 48(%esi)
	movl	$-1171354717, %ebp
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_SerpDie, 28(%esi)
	movl	$_sg_SerpRun, 20(%esi)
	movl	%edi, (%esp)
	movl	$_SerpPersonality, 8(%esp)
	movl	$_SerpActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %ecx
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%edx, %edi
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	shrl	$5, %edi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	cmpb	$16, 17(%ebx)
	je	L807
	addl	$1, _spritechanged(,%edx,4)
	movl	$-128, %edx
	movb	$100, 21(%ebx)
	movl	_spritechanged(,%edi,4), %eax
	addl	$1, %eax
L797:
	movl	%eax, _spritechanged(,%edi,4)
	movl	$-1171354717, %eax
	movb	%dl, 20(%ebx)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-128, 18(%ebx)
	orl	$16777232, 68(%esi)
	movl	8(%ebx), %eax
	movl	$20480, 112(%esi)
	movl	%eax, 108(%esi)
	movl	$671098880, 98(%esi)
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movzwl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L808
	imull	%eax, %edx
	leal	0(,%edx,4), %eax
L799:
	subw	$20480, %ax
	movw	%ax, 96(%esi)
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
L793:
	.cfi_restore_state
	cmpw	$1, %ax
	jne	L794
	movl	$2200, %edx
	movw	%dx, 84(%esi)
	jmp	L794
	.p2align 4,,10
	.p2align 3
L808:
	sall	$8, %eax
	jmp	L799
	.p2align 4,,10
	.p2align 3
L807:
	movl	$1000, %eax
	movw	%ax, 84(%esi)
	addl	$1, _spritechanged(,%edx,4)
	movl	$74, %edx
	movb	$74, 21(%ebx)
	movl	_spritechanged(,%edi,4), %eax
	addl	$1, %eax
	jmp	L797
	.p2align 4,,10
	.p2align 3
L791:
	movl	$_s_SerpRun, %ecx
	movl	$1300, %edx
	movl	%edi, %eax
	movl	$3800, %ebp
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%bp, 84(%eax)
	jmp	L792
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	__Z9SetupSkels
	.def	__Z9SetupSkels;	.scl	2;	.type	32;	.endef
__Z9SetupSkels:
LFB70:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %esi
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	testb	$16, 13(%eax)
	je	L810
	movl	_User(,%esi,4), %ebx
	movl	%ebx, %eax
L811:
	testl	%eax, %eax
	je	L812
	movl	$0, 76(%eax)
	movl	$_s_SkelRun, 24(%eax)
	movl	$_s_SkelRun, 16(%eax)
	movswl	_s_SkelRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L812
	andl	$63, %eax
	movb	%al, 3(%edx)
L812:
	movl	$_SkelAttrib, 48(%ebx)
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$_s_SkelDie, 28(%ebx)
	movl	$_sg_SkelRun, 20(%ebx)
	movl	%esi, (%esp)
	movl	$_SkelPersonality, 8(%esp)
	movl	$_SkelActionSet, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	orl	$16777216, 68(%ebx)
	addl	$12, %esp
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
L810:
	.cfi_restore_state
	movl	$_s_SkelRun, %ecx
	movl	$1367, %edx
	movl	%esi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, _User(,%esi,4)
	movl	%eax, %ebx
	movl	$90, %eax
	movw	%ax, 84(%ebx)
	movl	_User(,%esi,4), %eax
	jmp	L811
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	__Z10SetupSkulls
	.def	__Z10SetupSkulls;	.scl	2;	.type	32;	.endef
__Z10SetupSkulls:
LFB71:
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
	je	L821
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L822:
	testl	%eax, %eax
	je	L823
	movl	$0, 76(%eax)
	movl	$_s_SkullWait, 24(%eax)
	movl	$_s_SkullWait, 16(%eax)
	movswl	_s_SkullWait, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L823
	andl	$63, %eax
	movb	%al, 3(%edx)
L823:
	movl	$_SkullAttrib, 48(%esi)
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$820, %eax
	movl	$_s_SkullExplode, 28(%esi)
	movw	%ax, 82(%esi)
	movl	$_sg_SkullWait, 20(%esi)
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
	je	L824
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %ebp
	movl	%eax, 16(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	%eax, 20(%esp)
	movl	%ebp, %eax
	cmpb	$64, %al
	je	L841
	movl	20(%esp), %ebp
	movzbl	%al, %eax
	imull	%ebp, %eax
	addl	%eax, %eax
L826:
	movl	16(%esp), %ebp
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	sall	$8, %ebp
	subl	%ebp, %eax
	movl	36(%esp), %ebp
	.cfi_restore 5
	addl	%eax, %edx
L824:
	cmpl	%edx, 12(%esp)
	jg	L827
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
	je	L842
	imull	%esi, %eax
	leal	(%eax,%eax), %esi
L829:
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	addl	$1, _spritechanged(,%edx,4)
	sall	$8, %eax
	leal	-768(%esi,%eax), %eax
	addl	%eax, 8(%ebx)
L830:
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
L842:
	.cfi_restore_state
	sall	$7, %esi
	jmp	L829
	.p2align 4,,10
	.p2align 3
L827:
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
	jmp	L830
	.p2align 4,,10
	.p2align 3
L821:
	movl	$820, %edx
	movl	$_s_SkullWait, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$4, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	movl	_User(,%edi,4), %eax
	jmp	L822
	.p2align 4,,10
	.p2align 3
L841:
	.cfi_offset 5, -8
	movl	20(%esp), %eax
	sall	$7, %eax
	jmp	L826
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z8NullSerps
	.def	__Z8NullSerps;	.scl	2;	.type	32;	.endef
__Z8NullSerps:
LFB72:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %edx
	movl	_User(,%edx,4), %eax
	testb	$32, 70(%eax)
	jne	L849
	movl	%edx, (%esp)
	call	__Z16KeepActorOnFloors
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L849:
	.cfi_restore_state
	movl	%edx, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoActorSlides
	movl	4(%esp), %edx
	movl	%edx, (%esp)
	call	__Z16KeepActorOnFloors
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z10DoSerpMoves
	.def	__Z10DoSerpMoves;	.scl	2;	.type	32;	.endef
__Z10DoSerpMoves:
LFB73:
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
	movswl	20(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	imull	$44, %ebx, %edi
	addl	_sprite, %edi
	testb	$32, 70(%esi)
	jne	L861
L851:
	cmpw	$0, 218(%esi)
	jns	L862
	movl	%ebx, (%esp)
	call	*36(%esi)
L853:
	cmpb	$16, 17(%edi)
	je	L854
	movzwl	178(%esi), %eax
	testw	%ax, %ax
	je	L855
	cmpw	$1, %ax
	jne	L854
	cmpw	$0, 176(%esi)
	jle	L863
L854:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
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
L855:
	.cfi_restore_state
	movzwl	86(%esi), %eax
	cmpw	%ax, 84(%esi)
	je	L854
	movl	$_sg_SerpSkullSpell, %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	addw	$1, 178(%esi)
	jmp	L854
	.p2align 4,,10
	.p2align 3
L862:
	movl	%ebx, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	jmp	L853
	.p2align 4,,10
	.p2align 3
L861:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L851
	.p2align 4,,10
	.p2align 3
L863:
	movl	$_sg_SerpSkullSpell, %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L854
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z18DoSkelInitTeleports
	.def	__Z18DoSkelInitTeleports;	.scl	2;	.type	32;	.endef
__Z18DoSkelInitTeleports:
LFB74:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	_sprite, %ecx
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %ebx
	imull	$44, %ebx, %eax
	addl	%eax, %ecx
	addl	$12, %eax
	mull	%esi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$7, %edx
	andw	$-258, 12(%ecx)
	movl	$1, %ecx
	call	__Z15PlaySpriteSoundsii
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__Z8NullSkels
	.def	__Z8NullSkels;	.scl	2;	.type	32;	.endef
__Z8NullSkels:
LFB75:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$32, 70(%eax)
	jne	L872
L867:
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
L872:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L867
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z10DoSkelPains
	.def	__Z10DoSkelPains;	.scl	2;	.type	32;	.endef
__Z10DoSkelPains:
LFB77:
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
	testb	$32, 70(%esi)
	jne	L880
L874:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L881
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
L880:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	jmp	L874
	.p2align 4,,10
	.p2align 3
L881:
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
LFE77:
	.p2align 4
	.globl	__Z10DoSkelMoves
	.def	__Z10DoSkelMoves;	.scl	2;	.type	32;	.endef
__Z10DoSkelMoves:
LFB80:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z10DoGoroMoves
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z24KillMatchingCrackSpritess
	.def	__Z24KillMatchingCrackSpritess;	.scl	2;	.type	32;	.endef
__Z24KillMatchingCrackSpritess:
LFB81:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movzwl	_headspritestat+92, %ebx
	cmpw	$-1, %bx
	je	L883
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	jmp	L884
	.p2align 6
	.p2align 4,,10
	.p2align 3
L886:
	cmpw	$-1, %bx
	je	L892
L884:
	movswl	%bx, %eax
	movl	_sprite, %edx
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	leal	(%edx,%eax), %ebp
	cmpw	%si, 40(%ebp)
	jne	L886
	leal	36(%ebp), %eax
	subl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testb	$4, 36(%ebp)
	jne	L886
	movl	%ecx, %eax
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L884
	.p2align 4
	.p2align 3
L892:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
L883:
	movl	(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z23DoSectorObjectKillMatchs
	.def	__Z23DoSectorObjectKillMatchs;	.scl	2;	.type	32;	.endef
__Z23DoSectorObjectKillMatchs:
LFB82:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$_SectorObject, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	.p2align 4
	.p2align 3
L897:
	cmpl	$2147483647, 180(%ebx)
	je	L894
	cmpw	%ax, 3574(%ebx)
	je	L903
L894:
	addl	$6028, %ebx
	cmpl	$_SectorObject+120560, %ebx
	jne	L897
L895:
	xorl	%eax, %eax
L893:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L903:
	.cfi_restore_state
	testb	$4, 598(%ebx)
	je	L895
	call	__Z24KillMatchingCrackSpritess
	movl	184(%ebx), %ecx
	movl	180(%ebx), %edx
	movl	%ebx, %eax
	call	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii
	movswl	3574(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z19DoSpawnSpotsForKills
	movl	%ebx, %eax
	call	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct
	movl	$1, %eax
	jmp	L893
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z17DoMatchEverythingP12PLAYERstructss
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
__Z17DoMatchEverythingP12PLAYERstructss:
LFB85:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$80, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzwl	12(%ebp), %eax
	movl	8(%ebp), %esi
	movzwl	_headspritestat+132, %ebx
	movl	_GlobPlayerP, %edi
	movw	%ax, 42(%esp)
	movzwl	16(%ebp), %eax
	movl	%esi, _GlobPlayerP
	movw	%ax, 56(%esp)
	cmpw	$-1, %bx
	je	L906
	movl	%esi, 52(%esp)
	movzwl	42(%esp), %esi
	jmp	L905
	.p2align 6
	.p2align 4,,10
	.p2align 3
L908:
	cmpw	$-1, %bx
	je	L1003
L905:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	38(%eax), %si
	jne	L908
	movswl	32(%eax), %eax
	movl	%eax, (%esp)
	call	__Z20DoSoundSpotStopSounds
	cmpw	$-1, %bx
	jne	L905
L1003:
	movl	52(%esp), %esi
L906:
	movswl	42(%esp), %eax
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 32(%esp)
	call	__Z16DoSoundSpotMatchsss
	movl	%edi, _GlobPlayerP
	movswl	56(%esp), %ebx
	movl	32(%esp), %edi
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__Z15DoLightingMatchss
	movl	%edi, (%esp)
	call	__Z12DoQuakeMatchs
	movl	%edi, (%esp)
	call	__Z20TestVatorMatchActives
	testb	%al, %al
	je	L1013
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z20TestSpikeMatchActives
	testb	%al, %al
	je	L1014
L910:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	je	L1015
L911:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	je	L1016
L912:
	movl	32(%esp), %edi
	movl	%edi, (%esp)
	call	__Z23DoSectorObjectKillMatchs
	movl	%edi, (%esp)
	call	__Z22DoSectorObjectSetScales
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9DoSOeventss
	movl	%edi, (%esp)
	call	__Z19DoSpawnActorTriggers
	movzwl	_headspritestat+92, %eax
	movzwl	42(%esp), %ebx
	movl	_sprite, %ecx
	jmp	L913
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1017:
	movswl	%ax, %edx
	movzwl	_nextspritestat(%edx,%edx), %eax
	imull	$44, %edx, %edx
	cmpw	40(%ecx,%edx), %bx
	je	L915
L913:
	cmpw	$-1, %ax
	jne	L1017
L914:
	movzwl	_headspritestat+154, %esi
	cmpw	$-1, %si
	jne	L916
	jmp	L917
	.p2align 6
	.p2align 4,,10
	.p2align 3
L918:
	cmpw	$-1, %si
	je	L1018
L916:
	movswl	%si, %eax
	movl	_sprite, %edi
	movzwl	_nextspritestat(%eax,%eax), %esi
	imull	$44, %eax, %eax
	movl	%eax, 52(%esp)
	addl	%edi, %eax
	movl	%eax, 44(%esp)
	movzwl	38(%eax), %edx
	cmpw	%dx, 42(%esp)
	jne	L918
	movzwl	_headspritestat+152, %eax
	cmpw	$-1, %ax
	je	L918
	movl	44(%esp), %ecx
	movw	%si, 40(%esp)
	movl	%edi, %esi
	movl	%eax, %edi
	movswl	24(%ecx), %ecx
	leal	(%ecx,%ecx,4), %ebx
	movl	_sector, %ecx
	leal	(%ecx,%ebx,8), %ecx
	movl	%ecx, 20(%esp)
	jmp	L919
	.p2align 6
	.p2align 4,,10
	.p2align 3
L920:
	cmpw	$-1, %di
	je	L1008
L1024:
	movl	_sprite, %esi
	movl	52(%esp), %eax
	movzwl	38(%esi,%eax), %edx
L919:
	movswl	%di, %eax
	movzwl	_nextspritestat(%eax,%eax), %edi
	imull	$44, %eax, %eax
	addl	%esi, %eax
	movl	%eax, 56(%esp)
	cmpw	%dx, 38(%eax)
	jne	L920
	movl	52(%esp), %eax
	movl	56(%esp), %ecx
	movzbl	18(%esi,%eax), %eax
	cmpb	%al, 18(%ecx)
	jne	L920
	movswl	24(%ecx), %eax
	movl	_sector, %ebx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	movswl	24(%eax), %ecx
	movzwl	_headspritesect(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	je	L1019
	movl	%eax, %ebx
	movl	%esi, %edx
	jmp	L921
	.p2align 4,,10
	.p2align 3
L924:
	movl	_sprite, %edx
L921:
	movswl	%bx, %esi
	imull	$44, %esi, %eax
	movzwl	_nextspritesect(%esi,%esi), %ebx
	cmpw	$0, 12(%edx,%eax)
	js	L923
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L1020
L923:
	cmpw	$-1, %bx
	jne	L924
	movl	56(%esp), %eax
	movl	44(%esp), %esi
	movl	_sector, %ebx
	movswl	24(%eax), %eax
	movswl	24(%esi), %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ebx,%eax,8), %eax
L922:
	leal	(%ecx,%ecx,4), %edx
	movw	%di, 28(%esp)
	movzwl	(%ebx,%edx,8), %esi
	movswl	(%eax), %edx
	movl	%ebx, 24(%esp)
	movl	_wall, %eax
	movl	%ecx, 12(%esp)
	movw	%si, 36(%esp)
	movl	%eax, 48(%esp)
	movswl	%si, %eax
	movl	48(%esp), %esi
	.p2align 4
	.p2align 3
L926:
	sall	$5, %edx
	sall	$5, %eax
	addl	%esi, %edx
	addl	%esi, %eax
	movzwl	16(%edx), %ecx
	movl	%eax, 48(%esp)
	movw	%cx, 16(%eax)
	movzbl	22(%edx), %ecx
	movb	%cl, 22(%eax)
	movzbl	23(%edx), %ecx
	movb	%cl, 23(%eax)
	movzwl	18(%edx), %ecx
	movw	%cx, 18(%eax)
	movzbl	21(%edx), %ecx
	movb	%cl, 21(%eax)
	movzwl	14(%edx), %ecx
	movw	%cx, 14(%eax)
	movzbl	20(%edx), %ecx
	movb	%cl, 20(%eax)
	movzbl	24(%edx), %ecx
	movb	%cl, 24(%eax)
	movzbl	25(%edx), %ecx
	movb	%cl, 25(%eax)
	movzwl	28(%edx), %ecx
	movw	%cx, 28(%eax)
	movzwl	26(%edx), %ecx
	movw	%cx, 26(%eax)
	movzwl	30(%edx), %ecx
	movw	%cx, 30(%eax)
	movswl	10(%eax), %ecx
	movswl	10(%edx), %ebx
	movl	%ecx, %edi
	orl	%ebx, %edi
	cmpw	$16383, %di
	ja	L925
	sall	$5, %ebx
	sall	$5, %ecx
	addl	%esi, %ebx
	movzwl	16(%ebx), %edi
	movw	%di, 16(%esi,%ecx)
	movzbl	22(%ebx), %eax
	movb	%al, 22(%esi,%ecx)
	movzbl	23(%ebx), %eax
	movb	%al, 23(%esi,%ecx)
	movzwl	18(%ebx), %edi
	movw	%di, 18(%esi,%ecx)
	movzbl	21(%ebx), %eax
	movb	%al, 21(%esi,%ecx)
	movzwl	14(%ebx), %edi
	movw	%di, 14(%esi,%ecx)
	movzbl	20(%ebx), %eax
	movb	%al, 20(%esi,%ecx)
	movzbl	24(%ebx), %eax
	movb	%al, 24(%esi,%ecx)
	movzbl	25(%ebx), %eax
	movb	%al, 25(%esi,%ecx)
	movzwl	28(%ebx), %edi
	movw	%di, 28(%esi,%ecx)
	movzwl	26(%ebx), %edi
	movw	%di, 26(%esi,%ecx)
	movzwl	30(%ebx), %ebx
	movw	%bx, 30(%esi,%ecx)
L925:
	movl	48(%esp), %eax
	movswl	8(%edx), %edx
	movswl	8(%eax), %eax
	cmpw	%ax, 36(%esp)
	jne	L926
	movzwl	28(%esp), %edi
	movl	24(%esp), %ebx
	xorl	%esi, %esi
	movl	12(%esp), %ecx
	.p2align 4
	.p2align 3
L930:
	cmpl	$2147483647, _SectorObject+180(%esi)
	je	L927
	movl	_SectorObject(%esi), %eax
	testl	%eax, %eax
	je	L927
	leal	_SectorObject(%esi), %edx
	jmp	L929
	.p2align 5
	.p2align 4,,10
	.p2align 3
L928:
	movl	4(%edx), %eax
	addl	$4, %edx
	testl	%eax, %eax
	je	L927
L929:
	subl	%ebx, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	cmpl	%ecx, %eax
	jne	L928
	movl	%esi, %eax
	sarl	$2, %eax
	imull	$1048804528, %eax, %eax
	movl	$0, __ZL13so_interpdata.lto_priv.0+458756(%eax)
	movl	$0, __ZL13so_interpdata.lto_priv.0+458760(%eax)
L927:
	addl	$6028, %esi
	cmpl	$120560, %esi
	jne	L930
	movl	56(%esp), %eax
	movswl	24(%eax), %eax
	movzwl	_headspritesect(%eax,%eax), %esi
	movw	%si, 48(%esp)
	cmpw	$-1, %si
	je	L932
	movw	%di, 12(%esp)
	jmp	L931
	.p2align 6
	.p2align 4,,10
	.p2align 3
L945:
	cmpw	$-1, 48(%esp)
	je	L1021
L931:
	movswl	48(%esp), %edi
	movzwl	_nextspritesect(%edi,%edi), %esi
	imull	$44, %edi, %eax
	movl	%edi, 28(%esp)
	movw	%si, 48(%esp)
	movl	_sprite, %esi
	movl	%eax, 36(%esp)
	leal	(%esi,%eax), %ebx
	cmpw	$59, 40(%ebx)
	je	L945
	movl	56(%esp), %eax
	leal	76(%esp), %ecx
	leal	60(%esp), %edx
	movswl	24(%eax), %eax
	movl	%ecx, (%esp)
	leal	64(%esp), %ecx
	call	__Z14SectorMidPointsPiS_S_
	movl	44(%esp), %eax
	leal	76(%esp), %ecx
	leal	68(%esp), %edx
	movswl	24(%eax), %eax
	movl	%ecx, (%esp)
	leal	72(%esp), %ecx
	call	__Z14SectorMidPointsPiS_S_
	movl	68(%esp), %edx
	movl	60(%esp), %eax
	subl	(%ebx), %eax
	movl	64(%esp), %ecx
	subl	%eax, %edx
	movl	%ebx, %eax
	subl	4(%ebx), %ecx
	subl	%esi, %eax
	movl	$-1171354717, %esi
	movl	%edx, 24(%esp)
	mull	%esi
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	%edx, (%ebx)
	movl	72(%esp), %ebx
	subl	%ecx, %ebx
	movl	_sprite, %ecx
	addl	%eax, %ecx
	addl	$4, %eax
	mull	%esi
	movl	44(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, 4(%ecx)
	movswl	24(%esi), %ebx
	cmpw	$4096, %bx
	ja	L935
	movzwl	24(%ecx), %eax
	cmpw	%ax, %bx
	je	L935
	cmpw	$4096, %ax
	je	L935
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%bx, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
	movswl	24(%esi), %ebx
L935:
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	testb	$16, 39(%eax,%edx,8)
	je	L945
	movl	_sprite, %edx
	movl	36(%esp), %edi
	movl	$_SectorObject, %ebx
	movswl	24(%edx,%edi), %edx
	leal	(%edx,%edx,4), %edx
	leal	(%eax,%edx,8), %ecx
L941:
	cmpl	$2147483647, 180(%ebx)
	je	L938
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L938
	movl	%ebx, %edx
	jmp	L940
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1022:
	movl	4(%edx), %eax
	addl	$4, %edx
	testl	%eax, %eax
	je	L938
L940:
	cmpl	%eax, %ecx
	jne	L1022
L939:
	movl	28(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct
	movl	$1, (%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$0, _GlobSpeedSO
	movl	%ebx, %eax
	call	__Z13RefreshPointsP19SECTOR_OBJECTstructiih
	cmpw	$-1, 48(%esp)
	jne	L931
L1021:
	movl	56(%esp), %eax
	movzwl	12(%esp), %edi
	movswl	24(%eax), %eax
L932:
	movl	_SectUser(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L1023
L942:
	call	__Z11GetSectUsers
	movl	%eax, %ebx
	movl	44(%esp), %eax
	movswl	24(%eax), %eax
	call	__Z11GetSectUsers
	movl	(%ebx), %edx
	movl	%edx, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ebx), %edx
	movl	%edx, 16(%eax)
	movl	20(%ebx), %edx
	movl	%edx, 20(%eax)
	movl	24(%ebx), %edx
	movl	%edx, 24(%eax)
L946:
	movl	16(%esp), %esi
	movl	20(%esp), %ebx
	movzwl	36(%esi), %eax
	movw	%ax, 36(%ebx)
	movzwl	34(%esi), %eax
	movw	%ax, 34(%ebx)
	movl	8(%esi), %eax
	movl	%eax, 8(%ebx)
	movl	4(%esi), %eax
	movl	%eax, 4(%ebx)
	movzbl	28(%esi), %eax
	movb	%al, 28(%ebx)
	movzbl	20(%esi), %eax
	movb	%al, 20(%ebx)
	movzwl	24(%esi), %eax
	movw	%ax, 24(%ebx)
	movzwl	16(%esi), %eax
	movw	%ax, 16(%ebx)
	movzwl	26(%esi), %eax
	movw	%ax, 26(%ebx)
	movzwl	18(%esi), %eax
	movw	%ax, 18(%ebx)
	movzbl	29(%esi), %eax
	movb	%al, 29(%ebx)
	movzbl	21(%esi), %eax
	movb	%al, 21(%ebx)
	movzbl	30(%esi), %eax
	movb	%al, 30(%ebx)
	movzbl	22(%esi), %eax
	movb	%al, 22(%ebx)
	movzbl	31(%esi), %eax
	movb	%al, 31(%ebx)
	movzbl	23(%esi), %eax
	movb	%al, 23(%ebx)
	movzwl	14(%esi), %eax
	movw	%ax, 14(%ebx)
	movzwl	12(%esi), %eax
	movw	%ax, 12(%ebx)
	movzwl	38(%esi), %eax
	movw	%ax, 38(%ebx)
	movzbl	32(%esi), %eax
	movb	%al, 32(%ebx)
	cmpw	$-1, %di
	jne	L1024
	.p2align 4
	.p2align 3
L1008:
	movzwl	40(%esp), %esi
	cmpw	$-1, %si
	jne	L916
L1018:
	movzwl	_headspritestat+154, %ebx
	cmpw	$-1, %bx
	je	L917
	movzwl	42(%esp), %esi
	jmp	L948
	.p2align 6
	.p2align 4,,10
	.p2align 3
L953:
	cmpw	$-1, %bx
	je	L917
L948:
	movswl	%bx, %edx
	movzwl	_nextspritestat(%edx,%edx), %ebx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	cmpw	38(%edx), %si
	jne	L953
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L948
L917:
	movzwl	_headspritestat+152, %ebx
	movzwl	42(%esp), %esi
	cmpw	$-1, %bx
	jne	L950
	jmp	L951
	.p2align 6
	.p2align 4,,10
	.p2align 3
L955:
	cmpw	$-1, %bx
	je	L951
L950:
	movswl	%bx, %edx
	movzwl	_nextspritestat(%edx,%edx), %ebx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	cmpw	38(%edx), %si
	jne	L955
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L950
L951:
	movzwl	_headspritestat+156, %ebx
	movzwl	42(%esp), %esi
	cmpw	$-1, %bx
	jne	L956
	jmp	L957
	.p2align 6
	.p2align 4,,10
	.p2align 3
L959:
	cmpw	$-1, %bx
	je	L957
L956:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	38(%eax), %si
	jne	L959
	movl	%eax, (%esp)
	call	__Z10DoWallMoveP12spritetypev7
	cmpw	$-1, %bx
	jne	L956
L957:
	movl	32(%esp), %edi
	movl	%edi, (%esp)
	call	__Z19DoSpawnSpotsForKills
	movl	%edi, (%esp)
	call	__Z11DoTrapResets
	movl	%edi, (%esp)
	call	__Z11DoTrapMatchs
	movl	%edi, %eax
	call	__Z15SpawnItemsMatchs.isra.0
	movl	%edi, (%esp)
	call	__Z14DoChangorMatchs
	movl	%edi, 8(%ebp)
	addl	$80, %esp
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
	jmp	__Z19DoDeleteSpriteMatchs
	.p2align 4,,10
	.p2align 3
L938:
	.cfi_restore_state
	addl	$6028, %ebx
	cmpl	$_SectorObject+120560, %ebx
	jne	L941
	xorl	%ebx, %ebx
	jmp	L939
L1020:
	movl	%esi, (%esp)
	call	__Z17SpriteQueueDeletes
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L923
L915:
	movl	32(%esp), %edi
	movl	%edi, %eax
	call	__Z24KillMatchingCrackSpritess
	movl	%edi, (%esp)
	call	__Z15DoExplodeSectors
	jmp	L914
L1023:
	movl	44(%esp), %esi
	movswl	24(%esi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L942
	jmp	L946
L1013:
	movl	32(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z12DoVatorMatchP12PLAYERstructs
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z20TestSpikeMatchActives
	testb	%al, %al
	jne	L910
L1014:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z12DoSpikeMatchs
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	jne	L911
L1015:
	movl	32(%esp), %eax
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	jne	L912
L1016:
	movl	32(%esp), %eax
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	jmp	L912
L1019:
	movl	16(%esp), %eax
	jmp	L922
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z14DoDeathSpecials
	.def	__Z14DoDeathSpecials;	.scl	2;	.type	32;	.endef
__Z14DoDeathSpecials:
LFB95:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %eax
	movl	$1, 8(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	38(%eax), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	cmpb	$0, _gs+27
	jne	L1028
L1026:
	movl	$-2, %eax
	movw	%ax, _BossSpriteNum
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1028:
	.cfi_restore_state
	movzbl	_SW_GameFlags, %eax
	andl	$1, %eax
	orb	_DemoMode, %al
	jne	L1026
	movswl	_Level, %eax
	movl	$0, (%esp)
	movl	$1, %ecx
	movzbl	_RedBookSong(%eax), %edx
	xorl	%eax, %eax
	call	__Z8PlaySongPcihh.part.0
	jmp	L1026
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__Z15ComboSwitchTestss.constprop.0
	.def	__Z15ComboSwitchTestss.constprop.0;	.scl	2;	.type	32;	.endef
__Z15ComboSwitchTestss.constprop.0:
LFB98:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%esi, 12(%esp)
	.cfi_offset 6, -12
	movzwl	_headspritestat, %esi
	cmpw	$-1, %si
	je	L1031
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -16
	jmp	L1030
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1034:
	cmpw	$-1, %si
	je	L1041
L1030:
	movswl	%si, %eax
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movzwl	_nextspritestat(%eax,%eax), %esi
	cmpw	$213, 38(%ebx)
	jne	L1034
	cmpw	%di, 40(%ebx)
	jne	L1034
	movl	$999, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	cmpb	%al, 18(%ebx)
	je	L1034
	movl	8(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	jmp	L1029
	.p2align 4,,10
	.p2align 3
L1041:
	.cfi_restore_state
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %edi
	.cfi_restore 7
L1031:
	movl	$1, %eax
L1029:
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE98:
	.p2align 4
	.globl	__Z13OperateSpritess
	.def	__Z13OperateSpritess;	.scl	2;	.type	32;	.endef
__Z13OperateSpritess:
LFB99:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L1175
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movswl	14(%ebx), %eax
	cmpw	$2307, %ax
	je	L1043
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %esi
	movl	%esi, 20(%esp)
	testw	%dx, %dx
	jne	L1200
	movzwl	38(%ebx), %eax
	xorl	%esi, %esi
	cmpw	$215, %ax
	jg	L1049
L1203:
	cmpw	$199, %ax
	jle	L1201
	subw	$200, %ax
	cmpw	$15, %ax
	ja	L1182
	movzwl	%ax, %eax
	jmp	*L1055(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1055:
	.long	L1064
	.long	L1182
	.long	L1182
	.long	L1182
	.long	L1182
	.long	L1182
	.long	L1063
	.long	L1182
	.long	L1062
	.long	L1061
	.long	L1060
	.long	L1059
	.long	L1058
	.long	L1057
	.long	L1056
	.long	L1054
	.text
	.p2align 4,,10
	.p2align 3
L1200:
	movl	%ebp, 44(%esp)
	movl	8(%ebx), %ecx
	movl	_GlobPlayerP, %esi
	movswl	24(%ebx), %edx
	movl	%ecx, 24(%esp)
	movzbl	21(%ebx), %ecx
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %cl
	.cfi_offset 5, -8
	je	L1202
	imull	%eax, %ecx
	leal	(%ecx,%ecx), %eax
L1048:
	movl	4(%esi), %ebp
	movl	8(%esi), %ecx
	movl	%ebp, 28(%esp)
	movl	(%esi), %ebp
	movl	%edx, 16(%esp)
	movl	24(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 12(%esp)
	movl	4(%ebx), %eax
	movl	28(%esp), %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	268(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1193
	movzwl	38(%ebx), %eax
	movl	44(%esp), %ebp
	.cfi_restore 5
	cmpw	$215, %ax
	jle	L1203
L1049:
	cmpw	$4792, %ax
	je	L1065
	jg	L1066
	cmpw	$4604, %ax
	jg	L1067
	cmpw	$4589, %ax
	jg	L1068
	cmpw	$304, %ax
	jne	L1182
	movzwl	40(%ebx), %esi
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movswl	%si, %eax
	leal	8(%ebx), %esi
	leal	4(%ebx), %ecx
	imull	$6028, %eax, %eax
	movzwl	_SectorObject+3550(%eax), %edi
	leal	512(%edi), %edx
	movl	$-1171354717, %edi
	andw	$2047, %dx
	movw	%dx, _SectorObject+3550(%eax)
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$202, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L1074:
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %ebx
	movl	$1, %eax
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1072:
	.cfi_restore_state
	cmpw	$5023, %ax
	je	L1053
	cmpw	$5032, %ax
	je	L1053
	.p2align 4
	.p2align 3
L1182:
	movl	36(%esp), %esi
	.cfi_restore 6
L1043:
	movl	32(%esp), %ebx
	movl	40(%esp), %edi
	xorl	%eax, %eax
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1175:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1202:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	sall	$7, %eax
	jmp	L1048
	.p2align 4,,10
	.p2align 3
L1054:
	.cfi_restore 5
	movl	$-1, 4(%esp)
	leal	8(%ebx), %edi
	movl	%ebx, (%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	call	__Z13AnimateSwitchP12spritetypev7s
	cwtl
	movl	%eax, 8(%esp)
	movswl	40(%ebx), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	_sprite, %esi
	leal	40(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 38(%ebx)
	movl	%edi, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$201, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L1193:
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1043
	.p2align 4,,10
	.p2align 3
L1066:
	.cfi_offset 6, -16
	cmpw	$4840, %ax
	je	L1071
	jg	L1072
	cmpw	$4816, %ax
	jne	L1182
	movl	20(%esp), %eax
	cmpw	$0, 216(%eax)
	jg	L1074
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$420, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$1440, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1100
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	imull	$120, %edx, %eax
	leal	360(%eax), %edx
L1100:
	movl	20(%esp), %eax
	movw	%dx, 216(%eax)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L1192
	movl	$0, 76(%eax)
	movl	$_s_Pachinko3Operate, 24(%eax)
	movl	$_s_Pachinko3Operate, 16(%eax)
	movswl	_s_Pachinko3Operate, %eax
L1197:
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1192
	andl	$63, %eax
	movb	%al, 3(%edx)
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1201:
	cmpw	$29, %ax
	je	L1051
	cmpw	$116, %ax
	jne	L1182
	movl	$-1, 4(%esp)
	leal	8(%ebx), %esi
	movl	$-1171354717, %edi
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movl	%esi, %edx
	subl	_sprite, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$202, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movzwl	40(%ebx), %eax
	testw	%ax, %ax
	jne	L1116
	movzwl	_Level, %eax
	addl	$1, %eax
L1116:
	movw	%ax, _Level
	movb	$1, _ExitLevel
	movb	$1, _FinishedLevel
	cmpb	$0, _DemoPlaying
	je	L1074
	cmpb	$1, _CommPlayers
	jbe	L1117
	movb	$1, _MultiPlayQuitFlag
L1118:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	call	__Z13TerminateGamev
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1067:
	cmpw	$4768, %ax
	jne	L1182
	movl	20(%esp), %eax
	cmpw	$0, 216(%eax)
	jg	L1074
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$420, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$1440, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1098
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	imull	$120, %edx, %eax
	leal	360(%eax), %edx
L1098:
	movl	20(%esp), %eax
	movw	%dx, 216(%eax)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L1192
	movl	$0, 76(%eax)
	movl	$_s_Pachinko1Operate, 24(%eax)
	movl	$_s_Pachinko1Operate, 16(%eax)
	movswl	_s_Pachinko1Operate, %eax
	jmp	L1197
	.p2align 4,,10
	.p2align 3
L1051:
	.cfi_restore 5
	movswl	40(%ebx), %eax
	movl	%eax, %ebx
	leal	-1(%eax), %edx
	cmpb	$0, 22995(%esi,%eax)
	je	L1074
	movswl	_numsectors, %ecx
	testw	%cx, %cx
	jle	L1102
	xorl	%eax, %eax
	jmp	L1104
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1103:
	addl	$1, %eax
	cmpl	%ecx, %eax
	je	L1102
L1104:
	movl	_SectUser(,%eax,4), %esi
	testl	%esi, %esi
	je	L1103
	cmpw	$29, 12(%esi)
	jne	L1103
	cmpw	%bx, 22(%esi)
	jne	L1103
	movw	$0, 22(%esi)
	jmp	L1103
	.p2align 4,,10
	.p2align 3
L1071:
	movl	20(%esp), %eax
	cmpw	$0, 216(%eax)
	jg	L1074
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$420, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$1440, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1101
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	imull	$120, %edx, %eax
	leal	360(%eax), %edx
L1101:
	movl	20(%esp), %eax
	movw	%dx, 216(%eax)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L1192
	movl	$0, 76(%eax)
	movl	$_s_Pachinko4Operate, 24(%eax)
	movl	$_s_Pachinko4Operate, 16(%eax)
	movswl	_s_Pachinko4Operate, %eax
	jmp	L1197
	.p2align 4,,10
	.p2align 3
L1064:
	.cfi_restore 5
	movl	$41, %edx
	movl	%edi, %eax
	call	__Z18change_sprite_statss
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %esi
	leal	38(%ebx), %edx
	movl	$-1171354717, %ecx
	movl	$__Z9DoGratings, 36(%eax)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	40(%ebx), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movw	%ax, 40(%ebx)
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1062:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movswl	40(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z22DoSectorObjectSetScales
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1063:
	movswl	40(%ebx), %edi
	movl	%edi, (%esp)
	call	__Z20TestVatorMatchActives
	testb	%al, %al
	je	L1204
L1113:
	movl	%edi, (%esp)
	call	__Z20TestSpikeMatchActives
	testb	%al, %al
	je	L1205
L1114:
	movl	%edi, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	je	L1206
L1115:
	movl	%edi, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	jne	L1074
	movl	$0, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1056:
	movl	$-1, 4(%esp)
	leal	8(%ebx), %edi
	movl	%ebx, (%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	call	__Z13AnimateSwitchP12spritetypev7s
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$201, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	40(%ebx), %eax
	call	__Z15ComboSwitchTestss.constprop.0
	testb	%al, %al
	jne	L1207
L1112:
	movl	_sprite, %esi
	leal	38(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1057:
	movl	$-1, 4(%esp)
	leal	8(%ebx), %edi
	movl	%ebx, (%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	call	__Z13AnimateSwitchP12spritetypev7s
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$201, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	40(%ebx), %eax
	call	__Z15ComboSwitchTestss.constprop.0
	testb	%al, %al
	jne	L1208
L1192:
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1058:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	cwtl
	movl	%eax, 8(%esp)
	movswl	40(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
L1195:
	movl	_sprite, %esi
	leal	38(%ebx), %edx
	movl	$-1171354717, %ecx
	xorl	%edi, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%esi, %edx
	movw	%di, 38(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1059:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	cwtl
	movl	%eax, 8(%esp)
	movswl	40(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1060:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movswl	%ax, %edx
	movswl	40(%ebx), %eax
	call	__Z15DoLightingMatchss
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1061:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13AnimateSwitchP12spritetypev7s
	movswl	40(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z22DoSectorObjectSetScales
	jmp	L1195
	.p2align 4,,10
	.p2align 3
L1065:
	movl	20(%esp), %eax
	cmpw	$0, 216(%eax)
	jg	L1074
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	leal	4(%ebx), %ebp
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$420, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$1440, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1099
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$26, %edx
	imull	$120, %edx, %eax
	leal	360(%eax), %edx
L1099:
	movl	20(%esp), %eax
	movw	%dx, 216(%eax)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L1192
	movl	$0, 76(%eax)
	movl	$_s_Pachinko2Operate, 24(%eax)
	movl	$_s_Pachinko2Operate, 16(%eax)
	movswl	_s_Pachinko2Operate, %eax
	jmp	L1197
	.p2align 4,,10
	.p2align 3
L1068:
	.cfi_restore 5
	subw	$4590, %ax
	movl	$17425, %edx
	btl	%eax, %edx
	jnc	L1182
L1053:
	movl	20(%esp), %eax
	movl	$1, %edx
	movl	$480, %ecx
	movw	%dx, 280(%eax)
	movw	%cx, 216(%eax)
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %esi
	jne	L1074
	movl	$32766, %edx
	movzwl	38(%ebx), %ebx
	leal	8(%esi), %ecx
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	leal	4(%esi), %edx
	sall	$14, %eax
	cmpw	$4594, %bx
	je	L1209
	movl	%ecx, 4(%esp)
	movl	%esi, %ecx
	movl	%esi, 12(%esp)
	movl	$9, 8(%esp)
	movl	%edx, (%esp)
	cmpw	$4590, %bx
	je	L1210
	cmpw	$4600, %bx
	je	L1211
	cmpw	$4604, %bx
	je	L1212
	cmpw	$5023, %bx
	je	L1213
	cmpl	$376334653, %eax
	ja	L1214
	cmpl	$268963853, %eax
	ja	L1215
	cmpl	$134750353, %eax
	jbe	L1097
	movl	$466, %edx
	movl	$1767, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
	.p2align 4,,10
	.p2align 3
L1102:
	movl	$0, 20(%esp)
	cmpl	$7, %edx
	ja	L1105
	movl	_CSWTCH.410(,%edx,4), %eax
	movl	%eax, 20(%esp)
L1105:
	movswl	_headspritestat, %esi
	cmpl	$-1, %esi
	je	L1074
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%edi, 24(%esp)
	jmp	L1106
	.p2align 4,,10
	.p2align 3
L1217:
	cmpw	$1852, %ax
	je	L1110
	cmpw	$1846, %ax
	jne	L1107
	movzbl	17(%ebx), %eax
	cmpl	20(%esp), %eax
	je	L1216
	.p2align 4
	.p2align 3
L1107:
	cmpl	$-1, %esi
	je	L1192
L1106:
	movl	%esi, %edi
	movl	_sprite, %ecx
	movswl	_nextspritestat(%esi,%esi), %esi
	imull	$44, %edi, %ebx
	addl	%ecx, %ebx
	movzwl	14(%ebx), %eax
	cmpw	$1850, %ax
	jne	L1217
	movzbl	17(%ebx), %eax
	cmpl	%eax, 20(%esp)
	jne	L1107
	leal	8(%ebx), %ebp
	movl	$-1171354717, %edi
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$325, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	leal	14(%ebx), %edx
	subl	_sprite, %edx
	movl	$1851, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 14(%ebx)
	jmp	L1107
	.p2align 4,,10
	.p2align 3
L1110:
	movzbl	17(%ebx), %eax
	cmpl	%eax, 20(%esp)
	jne	L1107
	leal	8(%ebx), %ebp
	movl	$-1171354717, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$324, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1171354717, %eax
	leal	14(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpl	%edi, 24(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	je	L1218
	movl	$1854, %eax
	movw	%ax, 14(%ebx)
	jmp	L1107
L1206:
	.cfi_restore 5
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movl	%esi, (%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	movswl	40(%ebx), %edi
	jmp	L1115
L1208:
	.cfi_offset 5, -8
	movl	$1, 8(%esp)
	movswl	40(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1074
L1205:
	movl	%edi, (%esp)
	call	__Z12DoSpikeMatchs
	movswl	40(%ebx), %edi
	jmp	L1114
L1204:
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	__Z12DoVatorMatchP12PLAYERstructs
	movswl	40(%ebx), %edi
	jmp	L1113
L1207:
	.cfi_offset 5, -8
	movl	$1, 8(%esp)
	movswl	40(%ebx), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1112
L1216:
	leal	8(%ebx), %ebp
	movl	$-1171354717, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	28(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$209, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	cmpl	%edi, 24(%esp)
	jne	L1107
	movl	$-1171354717, %edi
	leal	14(%ebx), %eax
	subl	_sprite, %eax
	mull	%edi
	movl	$1847, %edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%di, 14(%ebx)
	jmp	L1107
L1117:
	.cfi_restore 5
	movb	$1, _QuitFlag
	jmp	L1118
L1218:
	.cfi_offset 5, -8
	movl	$1853, %edx
	movw	%dx, 14(%ebx)
	jmp	L1107
L1209:
	.cfi_restore 5
	cmpl	$376334653, %eax
	ja	L1219
	cmpl	$268963853, %eax
	ja	L1220
	cmpl	$134750353, %eax
	jbe	L1078
	cmpb	$0, _Prediction
	jne	L1074
	movl	%ecx, 8(%esp)
	movl	$LC13, %eax
	movl	$545, %ecx
	movl	%edx, 4(%esp)
	movl	$1712, %edx
	movl	%esi, 16(%esp)
	movl	$9, 12(%esp)
	movl	%esi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1074
L1210:
	cmpl	$376334653, %eax
	ja	L1221
	cmpl	$268963853, %eax
	ja	L1222
	cmpl	$134750353, %eax
	jbe	L1082
	movl	$541, %edx
	movl	$1723, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1219:
	cmpb	$0, _Prediction
	jne	L1074
	movl	%ecx, 8(%esp)
	movl	$LC13, %eax
	movl	$543, %ecx
	movl	%edx, 4(%esp)
	movl	$1708, %edx
	movl	%esi, 16(%esp)
	movl	$9, 12(%esp)
	movl	%esi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1074
L1212:
	cmpl	$376334653, %eax
	ja	L1223
	cmpl	$268963853, %eax
	ja	L1224
	cmpl	$134750353, %eax
	jbe	L1090
	movl	$553, %edx
	movl	$1745, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1078:
	cmpb	$0, _Prediction
	jne	L1074
	movl	%ecx, 8(%esp)
	movl	$LC13, %eax
	movl	$546, %ecx
	movl	%edx, 4(%esp)
	movl	$1714, %edx
	movl	%esi, 16(%esp)
	movl	$9, 12(%esp)
	movl	%esi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1074
L1211:
	cmpl	$376334653, %eax
	ja	L1225
	cmpl	$268963853, %eax
	ja	L1226
	cmpl	$134750353, %eax
	jbe	L1086
	movl	$549, %edx
	movl	$1734, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1220:
	movl	%ecx, 4(%esp)
	movl	$1710, %eax
	movl	%esi, %ecx
	movl	%edx, (%esp)
	movl	$544, %edx
	movl	%esi, 12(%esp)
	movl	$9, 8(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1221:
	movl	$539, %edx
	movl	$1719, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1213:
	cmpl	$376334653, %eax
	ja	L1227
	cmpl	$268963853, %eax
	ja	L1228
	cmpl	$134750353, %eax
	jbe	L1094
	movl	$462, %edx
	movl	$1756, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1214:
	movl	$464, %edx
	movl	$1763, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1222:
	movl	$540, %edx
	movl	$1721, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1082:
	movl	$542, %edx
	movl	$1725, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1225:
	movl	$547, %edx
	movl	$1730, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1086:
	movl	$550, %edx
	movl	$1736, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1226:
	movl	$548, %edx
	movl	$1732, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1097:
	movl	$467, %edx
	movl	$1769, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1215:
	movl	$465, %edx
	movl	$1765, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1223:
	movl	$551, %edx
	movl	$1741, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1224:
	movl	$552, %edx
	movl	$1743, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1228:
	movl	$461, %edx
	movl	$1754, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1227:
	movl	$460, %edx
	movl	$1752, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1094:
	movl	$463, %edx
	movl	$1758, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
L1090:
	movl	$554, %edx
	movl	$1747, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0
	jmp	L1074
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__Z15ShootableSwitchs
	.def	__Z15ShootableSwitchs;	.scl	2;	.type	32;	.endef
__Z15ShootableSwitchs:
LFB103:
	.cfi_startproc
	movswl	%ax, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	imull	$44, %ecx, %ebx
	addl	%esi, %ebx
	movzwl	14(%ebx), %eax
	cmpw	$559, %ax
	jle	L1234
	cmpw	$577, %ax
	jne	L1229
	xorl	%edx, %edx
	movl	%ecx, %eax
	call	__Z13OperateSpritess
	leal	14(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$578, %edx
	movw	%dx, 14(%ebx)
L1229:
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
L1234:
	.cfi_restore_state
	cmpw	$557, %ax
	jle	L1229
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movl	$-1171354717, %esi
	movl	%edx, %eax
	mull	%esi
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	andw	$-258, 12(%ebx)
	call	__Z13OperateSpritess
	leal	14(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$560, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	__Z18OperateTripTriggerP12PLAYERstruct.part.0
	.def	__Z18OperateTripTriggerP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z18OperateTripTriggerP12PLAYERstruct.part.0:
LFB104:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movswl	268(%eax), %eax
	testw	%ax, %ax
	js	L1235
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	leal	(%eax,%edx,8), %esi
	movzwl	34(%esi), %eax
	cmpw	$217, %ax
	jg	L1279
	cmpw	$205, %ax
	jle	L1280
	subw	$206, %ax
	cmpw	$11, %ax
	ja	L1279
	movzwl	%ax, %eax
	jmp	*L1243(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1243:
	.long	L1251
	.long	L1279
	.long	L1250
	.long	L1249
	.long	L1248
	.long	L1247
	.long	L1246
	.long	L1279
	.long	L1279
	.long	L1245
	.long	L1244
	.long	L1242
	.text
	.p2align 4,,10
	.p2align 3
L1242:
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1281
L1255:
	movl	$_ds, %edx
	movl	%ebx, %eax
	movl	$544567129, _ds
	movl	$1853189990, _ds+4
	movl	$543236196, _ds+8
	movl	$1919116659, _ds+12
	movl	$1629516901, _ds+16
	movl	$560031090, _ds+20
	movb	$0, _ds+24
	call	__Z13PutStringInfoP12PLAYERstructPKc
	addw	$1, _Player+23256
L1278:
	movl	_sector, %ebx
	leal	34(%esi), %edx
	movl	$-858993459, %ecx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%esi), %edx
	subl	%ebx, %edx
	movw	%ax, 34(%esi)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%ax, 36(%esi)
L1279:
	movl	36(%esp), %esi
	.cfi_restore 6
L1235:
	movl	32(%esp), %ebx
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1280:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	cmpw	$44, %ax
	je	L1238
	jg	L1239
	cmpw	$3, %ax
	je	L1240
	cmpw	$43, %ax
	jne	L1279
	movswl	36(%esi), %eax
	movl	%eax, (%esp)
	call	__Z11DoTrapResets
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1238:
	.cfi_restore_state
	movl	$-1, 8(%esp)
	movswl	36(%esi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1251:
	.cfi_restore_state
	movl	%edi, 40(%esp)
	movswl	36(%esi), %eax
	movl	%eax, (%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	call	__Z20TestVatorMatchActives
	testb	%al, %al
	je	L1282
L1256:
	movl	%edi, (%esp)
	call	__Z20TestSpikeMatchActives
	testb	%al, %al
	je	L1283
L1257:
	movl	%edi, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	je	L1284
L1258:
	movl	%edi, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	je	L1285
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1244:
	.cfi_offset 6, -16
	movl	$-1, 8(%esp)
	movswl	36(%esi), %eax
	movl	$-858993459, %esi
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movswl	268(%ebx), %eax
	leal	(%eax,%eax,4), %ecx
	leal	36(,%ecx,8), %eax
	mull	%esi
	movl	_sector, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%eax,%ecx,8)
	movswl	268(%ebx), %eax
	xorl	%ecx, %ecx
	leal	(%eax,%eax,4), %ebx
	leal	34(,%ebx,8), %eax
	mull	%esi
	movl	_sector, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%cx, 34(%eax,%ebx,8)
	jmp	L1279
	.p2align 4,,10
	.p2align 3
L1245:
	movl	$-1, 8(%esp)
	movswl	36(%esi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movswl	268(%ebx), %eax
	movl	$-858993459, %ecx
	leal	(%eax,%eax,4), %esi
	leal	36(,%esi,8), %eax
	mull	%ecx
	movl	_sector, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%eax,%esi,8)
	movswl	268(%ebx), %eax
	leal	(%eax,%eax,4), %esi
	leal	34(,%esi,8), %eax
	mull	%ecx
	movl	_sector, %eax
	xorl	%ecx, %ecx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movl	%ebx, %edx
	movw	%cx, 34(%eax,%esi,8)
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%eax, (%esp)
	movl	$201, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1246:
	.cfi_restore_state
	movl	$-1, 8(%esp)
	movswl	36(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1247:
	movl	$-1, 8(%esp)
	movswl	36(%esi), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1248:
	.cfi_restore_state
	movswl	36(%esi), %eax
	movl	32(%esp), %ebx
	movl	$-1, %edx
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15DoLightingMatchss
	.p2align 4,,10
	.p2align 3
L1249:
	.cfi_restore_state
	movswl	36(%esi), %eax
	movl	%eax, (%esp)
	call	__Z22DoSectorObjectSetScales
	jmp	L1278
	.p2align 4,,10
	.p2align 3
L1250:
	movswl	36(%esi), %eax
	movl	%eax, (%esp)
	call	__Z22DoSectorObjectSetScales
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1239:
	.cfi_restore_state
	cmpw	$116, %ax
	jne	L1279
	movzwl	36(%esi), %eax
	testw	%ax, %ax
	je	L1286
L1252:
	movw	%ax, _Level
	movb	$1, _ExitLevel
	movb	$1, _FinishedLevel
	cmpb	$0, _DemoPlaying
	je	L1279
	cmpb	$1, _CommPlayers
	jbe	L1253
	movb	$1, _MultiPlayQuitFlag
L1254:
	movl	_osd, %eax
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	32(%esp), %ebx
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13TerminateGamev
	.p2align 4,,10
	.p2align 3
L1240:
	.cfi_restore_state
	movzwl	_headspritestat+4, %eax
	cmpw	$-1, %ax
	je	L1279
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	36(%esi), %edi
	movl	%ebx, 28(%esp)
	movl	%edi, 20(%esp)
	movl	_sprite, %edi
	movl	%edi, 24(%esp)
	jmp	L1259
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1260:
	cmpw	$-1, %ax
	je	L1276
L1259:
	movswl	%ax, %ecx
	movswl	%ax, %edx
	movl	_User(,%ecx,4), %ebx
	movzwl	_nextspritestat(%ecx,%ecx), %eax
	movl	68(%ebx), %esi
	testl	$1048576, %esi
	je	L1260
	movl	28(%esp), %edi
	imull	$44, %edx, %edx
	addl	24(%esp), %edx
	movl	(%edi), %ecx
	subl	(%edx), %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovns	%ebp, %ecx
	movl	4(%edi), %ebp
	subl	4(%edx), %ebp
	movl	%ebp, %edx
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %ecx
	leal	(%ecx,%edx), %ebp
	cmovg	%edx, %ecx
	movl	%ebp, %edx
	sarl	%ecx
	subl	%ecx, %edx
	cmpl	%edx, 20(%esp)
	jle	L1260
	movl	352(%edi), %edx
	andl	$-1048577, %esi
	movl	%esi, 68(%ebx)
	movl	%edx, 200(%ebx)
	jmp	L1260
	.p2align 4,,10
	.p2align 3
L1286:
	.cfi_restore 5
	.cfi_restore 7
	movzwl	_Level, %eax
	addl	$1, %eax
	jmp	L1252
	.p2align 4,,10
	.p2align 3
L1285:
	.cfi_offset 7, -12
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1284:
	.cfi_restore_state
	movl	%edi, 4(%esp)
	movl	$0, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	movswl	36(%esi), %eax
	movl	%eax, %edi
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1283:
	movl	%edi, (%esp)
	call	__Z12DoSpikeMatchs
	movswl	36(%esi), %eax
	movl	%eax, %edi
	jmp	L1257
	.p2align 4,,10
	.p2align 3
L1282:
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z12DoVatorMatchP12PLAYERstructs
	movswl	36(%esi), %eax
	movl	%eax, %edi
	jmp	L1256
L1281:
	.cfi_restore 7
	cmpb	$0, _Prediction
	jne	L1255
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$326, %ecx
	movl	$2145, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, %eax
	movl	%ebx, 16(%esp)
	movl	$13, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1255
	.p2align 4,,10
	.p2align 3
L1276:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
	jmp	L1235
L1253:
	.cfi_offset 6, -16
	movb	$1, _QuitFlag
	jmp	L1254
	.cfi_endproc
LFE104:
	.p2align 4
	.globl	__Z18OperateTripTriggerP12PLAYERstruct
	.def	__Z18OperateTripTriggerP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18OperateTripTriggerP12PLAYERstruct:
LFB105:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1287
	jmp	__Z18OperateTripTriggerP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1287:
	ret
	.cfi_endproc
LFE105:
	.p2align 4
	.globl	__Z16PlayerOperateEnvP12PLAYERstruct.part.0
	.def	__Z16PlayerOperateEnvP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z16PlayerOperateEnvP12PLAYERstruct.part.0:
LFB106:
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
	subl	$456, %esp
	movl	22976(%eax), %eax
	testb	$4, 418(%ebx)
	je	L1290
	testl	$262144, %eax
	jne	L1291
L1373:
	movzwl	268(%ebx), %eax
L1292:
	testw	%ax, %ax
	js	L1320
	movswl	%ax, %edx
	movl	_SectUser(,%edx,4), %ecx
	testl	%ecx, %ecx
	je	L1320
	cmpw	$0, 20(%ecx)
	je	L1320
	testb	$64, 4(%ecx)
	jne	L1374
	movl	_sector, %edi
	leal	(%edx,%edx,4), %esi
	movl	%edi, 36(%esp)
	leal	(%edi,%esi,8), %edi
	movl	352(%ebx), %esi
	movl	%edi, 28(%esp)
	movl	8(%esi), %edi
	movl	%edi, 32(%esp)
	testb	$-128, 12(%esi)
	je	L1324
	movzbl	21(%esi), %edi
	movswl	14(%esi), %esi
	movswl	_tilesiz+2(,%esi,4), %ecx
	movl	%ecx, 24(%esp)
	movl	%edi, %ecx
	cmpb	$64, %cl
	je	L1376
	movzbl	%cl, %edi
	imull	24(%esp), %edi
	leal	(%edi,%edi), %ecx
L1326:
	movsbl	_picanm+2(%esi,%esi,4), %edi
	movl	%ecx, %esi
	sall	$8, %edi
	subl	%edi, %esi
	addl	%esi, 32(%esp)
L1324:
	movl	28(%esp), %edi
	movl	32(%esp), %esi
	cmpl	%esi, 8(%edi)
	jg	L1327
	testb	$2, 22970(%ebx)
	je	L1374
L1327:
	cmpb	$0, _Prediction
	je	L1343
	cmpw	%ax, 270(%ebx)
	je	L1289
	movl	22972(%ebx), %esi
	jmp	L1341
	.p2align 4,,10
	.p2align 3
L1320:
	movswl	348(%ebx), %eax
	xorl	%edx, %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 182(%eax)
	movzwl	268(%ebx), %eax
L1323:
	cmpb	$0, _Prediction
	jne	L1328
	testw	%ax, %ax
	js	L1329
	movl	_sector, %edi
	movswl	%ax, %edx
	movl	%edi, 36(%esp)
L1343:
	movl	36(%esp), %edi
	leal	(%edx,%edx,4), %edx
	cmpw	$43, 34(%edi,%edx,8)
	je	L1377
L1329:
	cmpw	270(%ebx), %ax
	je	L1289
L1340:
	movl	%ebx, %eax
	call	__Z18OperateTripTriggerP12PLAYERstruct.part.0
	movzwl	268(%ebx), %eax
L1331:
	movl	22972(%ebx), %esi
	testw	%ax, %ax
	js	L1332
	movswl	%ax, %edx
	movl	_sector, %eax
	movl	%eax, 36(%esp)
L1341:
	movl	36(%esp), %edi
	leal	(%edx,%edx,4), %eax
	testb	$4, 38(%edi,%eax,8)
	je	L1332
	testl	$1, %esi
	jne	L1332
	movswl	348(%ebx), %eax
	movl	352(%ebx), %edi
	leal	8(%ebx), %ecx
	leal	4(%ebx), %edx
	movl	%ecx, 32(%esp)
	movl	_User(,%eax,4), %esi
	leal	268(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	movl	%eax, 36(%esp)
	movl	%ebx, %eax
	call	__Z4WarpPiS_S_Ps
	testl	%eax, %eax
	je	L1375
	cmpb	$1, 18(%eax)
	je	L1378
	movswl	28(%eax), %edx
	sall	$16, %edx
	movl	%edx, 28(%ebx)
	movl	%edx, 300(%ebx)
	movl	%edx, 308(%ebx)
	movl	288(%ebx), %edx
	movl	%edx, 304(%ebx)
	movl	(%eax), %edx
	movl	%edx, 320(%ebx)
	movl	%edx, 12(%ebx)
	movl	%edx, (%ebx)
	movl	4(%eax), %ecx
	movl	%ecx, 324(%ebx)
	movl	%ecx, 16(%ebx)
	movl	%ecx, 4(%ebx)
	movl	8(%eax), %eax
	subl	$14848, %eax
	movl	%eax, 20(%ebx)
	movl	%eax, 8(%ebx)
	movl	36(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_updatesector
	movl	32(%esp), %eax
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	orl	$1, 22972(%ebx)
	movl	%eax, (%esp)
	movl	$207, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$30, %eax
	andl	$-129, 22968(%ebx)
	movl	$0, 200(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	movl	$0, 228(%ebx)
	movw	%ax, 216(%esi)
	movl	%ebx, (%esp)
	call	__Z16DoPlayerBeginRunP12PLAYERstruct
	movswl	348(%ebx), %eax
	movl	$__Z21DoPlayerTeleportPauseP12PLAYERstruct, 22964(%ebx)
	movl	_User(,%eax,4), %edx
	movl	40(%edx), %edx
	movl	(%edx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, %eax
	call	__Z18UpdatePlayerSpriteP12PLAYERstruct
	movl	%edi, %eax
	call	__Z23DoSpawnTeleporterEffectP12spritetypev7
	movl	_connecthead, %eax
	movl	%eax, %edx
	cmpw	$-1, %ax
	je	L1337
	movl	%ebx, %ecx
	movl	%edi, 28(%esp)
	movl	%ebx, %edi
	subl	$_Player, %ecx
	movl	%esi, 32(%esp)
	sarl	$2, %ecx
	imull	$-432986257, %ecx, %ebx
	jmp	L1339
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1338:
	movl	_connectpoint2(,%esi,4), %eax
	movl	%eax, %edx
	cmpw	$-1, %ax
	je	L1379
L1339:
	movswl	%dx, %esi
	cmpl	%ebx, %esi
	je	L1338
	imull	$24124, %esi, %edx
	movzwl	268(%edi), %ecx
	leal	_Player(%edx), %eax
	cmpw	%cx, _Player+268(%edx)
	jne	L1338
	movswl	348(%eax), %edx
	movl	%eax, 36(%esp)
	movl	_User(,%edx,4), %edx
	movzwl	84(%edx), %edx
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movswl	348(%edi), %edx
	movl	36(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L1338
L1378:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	36(%esp), %ecx
	movl	%eax, 320(%ebx)
	movl	%eax, 12(%ebx)
	movl	%edx, 324(%ebx)
	movl	%edx, 16(%ebx)
	movl	%ecx, 8(%esp)
	movl	%edx, 52(%esp)
	movl	52(%esp), %ecx
	movl	%eax, 48(%esp)
	movl	%eax, 40(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 44(%esp)
	call	_updatesector
	orl	$1, 22972(%ebx)
	movl	%ebx, %eax
	call	__Z18UpdatePlayerSpriteP12PLAYERstruct
L1337:
	movl	(%edi), %eax
	movl	%eax, 56(%esi)
	movl	4(%edi), %eax
	movl	%eax, 60(%esi)
	movl	8(%edi), %eax
	movl	%eax, 64(%esi)
L1375:
	movl	22972(%ebx), %esi
	.p2align 4
	.p2align 3
L1332:
	andl	$-2, %esi
	movl	%esi, 22972(%ebx)
L1289:
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
L1290:
	.cfi_restore_state
	orl	$262144, %eax
	movl	%eax, 22976(%ebx)
	jmp	L1373
	.p2align 4,,10
	.p2align 3
L1328:
	cmpw	%ax, 270(%ebx)
	jne	L1331
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
L1291:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z16DoPlayerGrabStarP12PLAYERstruct
	testl	%eax, %eax
	je	L1293
	andl	$-262145, 22976(%ebx)
L1294:
	movl	8(%ebx), %edx
	xorl	%eax, %eax
L1295:
	movl	$-1, 72(%esp,%eax)
	movl	$-1, 76(%esp,%eax)
	movl	$-1, 80(%esp,%eax)
	movl	$-1, 84(%esp,%eax)
	addl	$16, %eax
	cmpl	$192, %eax
	jb	L1295
	xorl	%eax, %eax
	movw	%ax, _nti_cnt
	leal	72(%esp), %eax
	movl	$8, 20(%esp)
	movl	$3, 16(%esp)
	movl	$2048, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	movl	72(%esp), %edi
	testl	%edi, %edi
	js	L1297
	movb	$0, 36(%esp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1302
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1300:
	addl	$1, %esi
	movswl	%si, %edx
	leal	(%edx,%edx), %eax
	leal	(%eax,%edx), %ecx
	movl	72(%esp,%ecx,4), %edi
	testl	%edi, %edi
	js	L1380
L1302:
	addl	%edx, %eax
	movswl	80(%esp,%eax,4), %eax
	testw	%ax, %ax
	js	L1300
	cmpl	$1791, %edi
	jg	L1300
	movl	$1, %edx
	call	__Z13OperateSpritess
	testl	%eax, %eax
	je	L1300
	andl	$-262145, 22976(%ebx)
	movb	$1, 36(%esp)
	jmp	L1300
	.p2align 4,,10
	.p2align 3
L1377:
	movswl	36(%edi,%edx,8), %eax
	movl	%eax, (%esp)
	call	__Z11DoTrapMatchs
	movzwl	268(%ebx), %eax
	cmpw	%ax, 270(%ebx)
	je	L1289
	cmpb	$0, _Prediction
	je	L1340
	jmp	L1331
	.p2align 4,,10
	.p2align 3
L1374:
	movl	%ebx, (%esp)
	call	__Z22PlayerTakeSectorDamageP12PLAYERstruct
	movzwl	268(%ebx), %eax
	jmp	L1323
	.p2align 4,,10
	.p2align 3
L1293:
	movl	%ebx, (%esp)
	call	__Z10NearThingsP12PLAYERstruct
	jmp	L1294
L1376:
	movl	24(%esp), %edi
	sall	$7, %edi
	movl	%edi, %ecx
	jmp	L1326
	.p2align 4,,10
	.p2align 3
L1380:
	cmpb	$0, 36(%esp)
	je	L1297
L1303:
	movswl	76(%esp), %eax
	cmpl	$1023, 72(%esp)
	jg	L1312
	testw	%ax, %ax
	js	L1312
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13OperateSectorss
	testl	%eax, %eax
	je	L1312
	andl	$-262145, 22976(%ebx)
	.p2align 4
	.p2align 3
L1312:
	movswl	268(%ebx), %ecx
	movl	_sector, %edi
	leal	(%ecx,%ecx,4), %edx
	movl	%ecx, %eax
	leal	(%edi,%edx,8), %edx
	movzwl	34(%edx), %edx
	cmpw	$206, %dx
	je	L1313
	cmpw	$240, %dx
	je	L1314
	cmpw	$112, %dx
	jne	L1292
	movl	$1, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z13OperateSectorss
	testl	%eax, %eax
	je	L1373
	andl	$-262145, 22976(%ebx)
	movzwl	268(%ebx), %eax
	jmp	L1292
	.p2align 4,,10
	.p2align 3
L1297:
	movl	352(%ebx), %ecx
	movl	8(%ecx), %eax
	movzbl	21(%ecx), %edx
	movswl	14(%ecx), %ecx
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %dl
	je	L1381
	imull	%ecx, %edx
	leal	0(,%edx,4), %ecx
L1305:
	movl	%eax, %edx
	movl	%eax, 64(%esp)
	leal	60(%esp), %esi
	leal	264(%esp), %edi
	subl	%ecx, %edx
	movl	%ebx, 36(%esp)
	subl	$2560, %edx
	addl	%edx, %eax
	movl	%edx, 60(%esp)
	sarl	%eax
	movl	%eax, 68(%esp)
L1311:
	movl	(%esi), %edx
	xorl	%eax, %eax
L1306:
	movl	$-1, (%edi,%eax)
	movl	$-1, 4(%edi,%eax)
	movl	$-1, 8(%edi,%eax)
	movl	$-1, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$192, %eax
	jb	L1306
	xorl	%eax, %eax
	movw	%ax, _nti_cnt
	movl	36(%esp), %eax
	movl	$8, 20(%esp)
	movl	$3, 16(%esp)
	movl	$1792, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__Z11NearTagListP13NEAR_TAG_INFOP12PLAYERstructiiii
	movl	264(%esp), %ecx
	testl	%ecx, %ecx
	js	L1308
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	L1310
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1309:
	addl	$1, %ebx
	movswl	%bx, %edx
	leal	(%edx,%edx), %eax
	leal	(%eax,%edx), %ecx
	movl	264(%esp,%ecx,4), %ecx
	testl	%ecx, %ecx
	js	L1308
L1310:
	addl	%eax, %edx
	movswl	272(%esp,%edx,4), %eax
	testw	%ax, %ax
	js	L1309
	cmpl	$1791, %ecx
	jg	L1309
	movl	$1, %edx
	call	__Z13OperateSpritess
	testl	%eax, %eax
	je	L1309
	movl	36(%esp), %eax
	andl	$-262145, 22976(%eax)
	.p2align 4
	.p2align 3
L1308:
	addl	$4, %esi
	leal	72(%esp), %eax
	cmpl	%esi, %eax
	jne	L1311
	movl	36(%esp), %ebx
	jmp	L1303
	.p2align 4,,10
	.p2align 3
L1314:
	movl	%ebx, (%esp)
	call	__Z13DoSpringBoardP12PLAYERstruct
	movzwl	268(%ebx), %eax
	andl	$-262145, 22976(%ebx)
	jmp	L1292
	.p2align 4,,10
	.p2align 3
L1313:
	movl	%ecx, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z14DoVatorOperateP12PLAYERstructs
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z14DoSpikeOperates
	movswl	268(%ebx), %edx
	movl	_sector, %esi
	movl	%edx, %edi
	movl	%edx, %eax
	leal	(%edx,%edx,4), %edx
	leal	(%esi,%edx,8), %edx
	movswl	36(%edx), %esi
	testw	%si, %si
	jle	L1292
	movl	%esi, (%esp)
	call	__Z22TestRotatorMatchActives
	testb	%al, %al
	jne	L1317
	movl	%esi, 4(%esp)
	movl	$1, 8(%esp)
	movl	%ebx, (%esp)
	call	__Z14DoRotatorMatchP12PLAYERstructsh
	movswl	268(%ebx), %edx
	movl	_sector, %ecx
	movl	%edx, %edi
	movl	%edx, %eax
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	movswl	36(%edx), %esi
	testw	%si, %si
	jle	L1292
L1317:
	movl	%esi, (%esp)
	call	__Z21TestSlidorMatchActives
	testb	%al, %al
	jne	L1382
	movl	$1, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13DoSlidorMatchP12PLAYERstructsh
	movzwl	268(%ebx), %eax
	jmp	L1292
L1379:
	movl	%edi, %ebx
	movl	32(%esp), %esi
	movl	28(%esp), %edi
	jmp	L1337
L1381:
	sall	$8, %ecx
	jmp	L1305
L1382:
	movl	%edi, %eax
	jmp	L1292
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__Z16PlayerOperateEnvP12PLAYERstruct
	.def	__Z16PlayerOperateEnvP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16PlayerOperateEnvP12PLAYERstruct:
LFB111:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1383
	jmp	__Z16PlayerOperateEnvP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1383:
	ret
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__Z8DoSectorv.part.0
	.def	__Z8DoSectorv.part.0;	.scl	2;	.type	32;	.endef
__Z8DoSectorv.part.0:
LFB112:
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
	movl	$_SectorObject, %ebx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	.p2align 4
	.p2align 3
L1398:
	movl	180(%ebx), %edi
	cmpl	$2147483647, %edi
	je	L1386
	movl	_connecthead, %eax
	movl	168(%ebx), %edx
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	je	L1387
	movl	%edx, 4(%esp)
	movl	$999999, %esi
	jmp	L1392
	.p2align 4,,10
	.p2align 3
L1388:
	movl	%edi, %edx
	subl	_Player(%eax), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	184(%ebx), %edx
	subl	4(%ebp), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	movl	_connectpoint2(,%ecx,4), %eax
	cmpl	%ebp, %esi
	cmovg	%ebp, %esi
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	je	L1449
L1392:
	imull	$24124, %ecx, %eax
	leal	_Player(%eax), %ebp
	cmpl	%ebx, _Player+22984(%eax)
	jne	L1388
	movl	$0, 22984(%ebp)
	movl	4(%esp), %edx
	testl	%edx, %edx
	je	L1450
L1389:
	movl	%ebx, (%esp)
	call	*%edx
L1386:
	addl	$6028, %ebx
	cmpl	$_SectorObject+120560, %ebx
	jne	L1398
	call	__Z9DoPanningv
	movzwl	_headspritestat+166, %eax
	movl	$-1171354717, %edi
	movl	%eax, %esi
	cmpw	$-1, %ax
	je	L1400
	.p2align 4
	.p2align 3
L1399:
	movswl	%si, %eax
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%eax,%eax), %esi
	imull	$44, %eax, %eax
	leal	(%ecx,%eax), %ebp
	testb	$64, 42(%ebp)
	je	L1405
	movzbl	18(%ebp), %eax
	cmpb	$3, %al
	je	L1401
	ja	L1402
	cmpb	$1, %al
	je	L1403
	cmpb	$2, %al
	jne	L1405
	leal	8(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 12(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebp), %eax
	movswl	28(%ebp), %ebx
	addl	$3, %eax
	movl	%eax, 8(%ebp)
	cmpl	%ebx, %eax
	jl	L1405
	leal	16(%ebp), %eax
	movw	%si, 22(%esp)
	movl	%eax, 4(%esp)
	leal	36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	42(%ebp), %eax
	movl	%eax, 16(%esp)
	jmp	L1412
	.p2align 4,,10
	.p2align 3
L1410:
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ebp), %edx
	subl	%eax, %edx
	movswl	32(%ebp), %eax
	movsbl	%dl, %ebx
	movb	%dl, 16(%ebp)
	negl	%eax
	cmpl	%eax, %ebx
	jg	L1411
L1445:
	movl	16(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ebp), %edx
	addw	$-32768, 42(%ebp)
L1411:
	movsbl	%dl, %edx
	movl	%ebp, %eax
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebp, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	movswl	28(%ebp), %ebx
	cmpl	8(%ebp), %ebx
	jg	L1441
	movl	_sprite, %ecx
L1412:
	movl	12(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	%ebx, 8(%ebp)
	movl	8(%esp), %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
	mull	%edi
	movl	%edx, %ebx
	movl	4(%esp), %edx
	shrl	$5, %ebx
	movl	_spritechanged(,%ebx,4), %eax
	subl	%ecx, %edx
	leal	1(%eax), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	cmpw	$0, 42(%ebp)
	movl	%esi, _spritechanged(,%ebx,4)
	movzbl	37(%ebp), %eax
	jns	L1410
	addl	$1, _spritechanged(,%edx,4)
	addb	16(%ebp), %al
	movsbl	%al, %ebx
	movswl	34(%ebp), %eax
	movb	%bl, 16(%ebp)
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	jl	L1411
	jmp	L1445
	.p2align 4,,10
	.p2align 3
L1439:
	movzwl	16(%esp), %esi
L1405:
	cmpw	$-1, %si
	jne	L1399
L1400:
	call	__Z15DoSineWaveFloorv
	call	__Z14DoSineWaveWallv
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
	jmp	__Z17DoSpringBoardDownv
	.p2align 4,,10
	.p2align 3
L1449:
	.cfi_restore_state
	movl	4(%esp), %edx
	testl	%edx, %edx
	jne	L1389
	movl	596(%ebx), %eax
	andl	$12288, %eax
	jne	L1390
	cmpl	$14999, %esi
	jg	L1394
L1448:
	cmpb	$0, _MoveSkip2
	jne	L1386
	movl	$6, %edx
	movl	%ebx, %eax
	call	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1450:
	movl	596(%ebx), %eax
	andl	$12288, %eax
	jne	L1390
L1435:
	movl	$3, %edx
	movl	%ebx, %eax
	call	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs
	jmp	L1386
	.p2align 4,,10
	.p2align 3
L1441:
	movzwl	22(%esp), %esi
	cmpw	$-1, %si
	jne	L1399
	jmp	L1400
L1387:
	testl	%edx, %edx
	jne	L1389
	movl	596(%ebx), %eax
	andl	$12288, %eax
	je	L1394
	.p2align 4
	.p2align 3
L1390:
	cmpl	$4096, %eax
	jne	L1448
	jmp	L1435
	.p2align 4,,10
	.p2align 3
L1402:
	cmpb	$4, %al
	jne	L1405
	leal	8(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 12(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebp), %eax
	movswl	28(%ebp), %ebx
	addl	$3, %eax
	movl	%eax, 8(%ebp)
	cmpl	%eax, %ebx
	jg	L1405
	leal	16(%ebp), %eax
	movw	%si, 22(%esp)
	movl	%eax, 4(%esp)
	leal	36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	17(%ebp), %eax
	movl	%eax, 16(%esp)
	jmp	L1415
	.p2align 4,,10
	.p2align 3
L1413:
	addl	$1, _spritechanged(,%eax,4)
	movl	%ebp, %eax
	subl	%ecx, %eax
	subb	%dl, 16(%ebp)
	movl	16(%esp), %edx
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	subl	%ecx, %edx
	movl	_User(,%eax,4), %eax
	movzbl	262(%eax), %ebx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%ebp), %eax
	movb	%bl, 17(%ebp)
	movsbl	16(%ebp), %ebx
	negl	%eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	jg	L1414
L1446:
	leal	42(%ebp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	$-32768, 42(%ebp)
	addl	$1, _spritechanged(,%edx,4)
	movzbl	16(%ebp), %edx
	andw	$-65, 42(%ebp)
L1414:
	movsbl	%dl, %edx
	movl	%ebp, %eax
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebp, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	movswl	28(%ebp), %ebx
	cmpl	8(%ebp), %ebx
	jg	L1441
	movl	_sprite, %ecx
L1415:
	movl	12(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subl	%ebx, 8(%ebp)
	movl	8(%esp), %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
	mull	%edi
	movl	%edx, %ebx
	movl	4(%esp), %edx
	shrl	$5, %ebx
	movl	_spritechanged(,%ebx,4), %eax
	subl	%ecx, %edx
	leal	1(%eax), %esi
	movl	%edx, %eax
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	cmpw	$0, 42(%ebp)
	movl	%esi, _spritechanged(,%ebx,4)
	movzbl	37(%ebp), %edx
	jns	L1413
	addl	$1, _spritechanged(,%eax,4)
	addb	16(%ebp), %dl
	movswl	34(%ebp), %eax
	movsbl	%dl, %ebx
	movb	%dl, 16(%ebp)
	cmpl	%eax, %ebx
	jl	L1414
	movl	16(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 17(%ebp)
	jmp	L1446
	.p2align 4,,10
	.p2align 3
L1394:
	cmpb	$0, _MoveSkip4
	jne	L1386
	movl	$12, %edx
	movl	%ebx, %eax
	call	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs
	jmp	L1386
L1403:
	leal	8(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebp), %eax
	movswl	28(%ebp), %ebx
	addl	$3, %eax
	movl	%eax, 8(%ebp)
	cmpl	%ebx, %eax
	jl	L1405
	leal	16(%ebp), %eax
	movw	%si, 16(%esp)
	movl	%eax, 4(%esp)
	leal	17(%ebp), %eax
	movl	%eax, 12(%esp)
	jmp	L1409
	.p2align 4,,10
	.p2align 3
L1451:
	movswl	34(%ebp), %edx
	movswl	32(%ebp), %eax
	addl	%edx, %eax
	call	__Z11RandomRangei
	movl	4(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movswl	32(%ebp), %eax
	subl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%ebp)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebp, %eax
	call	__Z15DiffuseLightingP12spritetypev7
L1408:
	movswl	28(%ebp), %ebx
	cmpl	8(%ebp), %ebx
	jg	L1439
	movl	_sprite, %ecx
L1409:
	movl	8(%esp), %edx
	addl	$1, _krandcount
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	subl	%ebx, 8(%ebp)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$127, %eax
	cmpl	$64, %eax
	jg	L1451
	movl	12(%esp), %edx
	movzbl	17(%ebp), %ebx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	4(%esp), %eax
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movzwl	34(%ebp), %esi
	movb	$0, 17(%ebp)
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%al, %edx
	movb	%al, 16(%ebp)
	movl	%ebp, %eax
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%ebp, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	movl	12(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 17(%ebp)
	jmp	L1408
L1401:
	leal	8(%ebp), %eax
	movw	%si, 16(%esp)
	movl	%ebp, %esi
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebp), %eax
	addl	$3, %eax
	movl	%eax, 8(%ebp)
L1416:
	leal	16(%esi), %ebp
	movl	%ebp, 4(%esp)
	jmp	L1420
	.p2align 4,,10
	.p2align 3
L1452:
	movswl	34(%esi), %edx
	movswl	32(%esi), %eax
	addl	%edx, %eax
	call	__Z11RandomRangei
	movl	4(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movswl	32(%esi), %eax
	subl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%esi)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%esi, %eax
	call	__Z15DiffuseLightingP12spritetypev7
L1418:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$120, %ah
	je	L1419
	movl	8(%esi), %eax
L1420:
	movswl	28(%esi), %ebx
	cmpl	%eax, %ebx
	jg	L1439
	movl	_sprite, %ecx
	movl	8(%esp), %edx
	addl	$1, _krandcount
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	subl	%ebx, 8(%esi)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$127, %eax
	cmpl	$64, %eax
	jg	L1452
	leal	17(%esi), %ebx
	movzbl	17(%esi), %eax
	movl	%ebx, %edx
	subl	%ecx, %edx
	movb	%al, 12(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esp), %edx
	movzwl	34(%esi), %ebp
	movb	$0, 17(%esi)
	subl	%ecx, %edx
	movl	%edx, %eax
	movl	%ebp, %ecx
	mull	%edi
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%esi)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%esi, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	subl	_sprite, %ebx
	movl	%ebx, %eax
	mull	%edi
	movzbl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%esi)
	jmp	L1418
L1419:
	movl	4(%esp), %ebp
	movswl	32(%esi), %ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	negl	%ecx
	movl	%edx, %eax
	mull	%edi
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movsbl	%cl, %edx
	movb	%cl, 16(%esi)
	call	__Z16SectorLightShadeP12spritetypev7s
	movl	%esi, %eax
	call	__Z15DiffuseLightingP12spritetypev7
	leal	42(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esi), %eax
	andw	$-65, 42(%esi)
	jmp	L1416
	.cfi_endproc
LFE112:
	.p2align 4
	.globl	__Z8DoSectorv
	.def	__Z8DoSectorv;	.scl	2;	.type	32;	.endef
__Z8DoSectorv:
LFB114:
	.cfi_startproc
	jmp	__Z8DoSectorv.part.0
	.cfi_endproc
LFE114:
	.section .rdata,"dr"
LC14:
	.ascii "0\0"
LC15:
	.ascii "SDL_DIRECTINPUT_ENABLED\0"
LC16:
	.ascii "SDL_XINPUT_ENABLED\0"
LC17:
	.ascii "Controller supports rumble.\0"
LC18:
	.ascii "source/build/src/sdlayer.cpp\0"
LC19:
	.ascii "MouseButton%d\0"
LC20:
	.ascii "Controls\0"
LC21:
	.ascii "MouseButtonClicked%d\0"
LC22:
	.ascii "MouseAnalogScale%d\0"
LC23:
	.ascii "MouseSensitivity\0"
LC26:
	.ascii "JoystickButton%d\0"
LC27:
	.ascii "JoystickButtonClicked%d\0"
LC28:
	.ascii "JoystickAnalogAxes%d\0"
LC29:
	.ascii "analog_strafing\0"
LC30:
	.ascii "analog_moving\0"
LC31:
	.ascii "analog_lookingupanddown\0"
LC32:
	.ascii "JoystickDigitalAxes%d_0\0"
LC33:
	.ascii "JoystickDigitalAxes%d_1\0"
LC34:
	.ascii "JoystickAnalogScale%d\0"
LC35:
	.ascii "JoystickAnalogDead%d\0"
LC36:
	.ascii "JoystickAnalogSaturate%d\0"
LC38:
	.ascii "RTS file %s not found\0"
LC39:
	.ascii "source/sw/src/rts.cpp\0"
LC40:
	.ascii "IWAD\0"
	.align 4
LC41:
	.ascii "RTS file %s doesn't have IWAD id\0"
LC42:
	.ascii "kuro_cvars.cfg\0"
LC43:
	.ascii "kuro_autoexec.cfg\0"
LC44:
	.ascii "mus_mme_debuginfo\0"
	.align 4
LC45:
	.ascii "Windows MME MIDI buffer debug information\0"
LC46:
	.ascii "analog_turning\0"
	.text
	.p2align 4
	.globl	__Z9InitSetupv
	.def	__Z9InitSetupv;	.scl	2;	.type	32;	.endef
__Z9InitSetupv:
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
	subl	$196, %esp
	.cfi_def_cfa_offset 216
	cmpb	$0, _CONTROL_Started
	jne	L1455
	movl	$__ZZ15CONTROL_StartupE10cvars_mact, %ebx
	.p2align 4
	.p2align 3
L1456:
	movl	%ebx, %eax
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	$__ZZ15CONTROL_StartupE10cvars_mact+120, %ebx
	jne	L1456
	movl	$6144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_g_keyNameTable, (%esp)
	movl	$__Z7GetTimev, __ZL10ExtGetTime.lto_priv.0
	movl	$140, __ZL7ticrate.lto_priv.0
	movb	$79, __ZL24CONTROL_DoubleClickSpeed.lto_priv.0
	movl	$_CONTROL_ScanForControllers, _g_controllerHotplugCallback
	movb	$3, _inputdevices
	movb	$0, _g_mouseGrabbed
	call	_memset
	movl	$511, 20(%esp)
	jmp	L1465
	.p2align 4,,10
	.p2align 3
L1714:
	testb	$8, %dl
	jne	L1710
	testb	$4, %dl
	jne	L1711
	testl	%edx, %edx
	je	L1459
	movzbl	(%esi), %eax
	movb	%al, _g_keyNameTable(,%ebp,8)
	testb	$2, %dl
	jne	L1712
L1459:
	movb	$0, 23(%edi)
L1457:
	subl	$1, 20(%esp)
	cmpl	$-1, 20(%esp)
	je	L1713
L1465:
	movl	20(%esp), %ebx
	cmpb	$0, __ZL14keytranslation.lto_priv.0(%ebx)
	je	L1457
	movl	%ebx, %eax
	orl	$1073741824, %eax
	movl	%eax, (%esp)
	call	_SDL_GetKeyName
	movl	%eax, %esi
	movzbl	__ZL14keytranslation.lto_priv.0(%ebx), %eax
	movl	%esi, (%esp)
	leal	(%eax,%eax,2), %ebp
	leal	_g_keyNameTable(,%ebp,8), %edi
	call	_strlen
	leal	1(%eax), %edx
	movl	$23, %eax
	cmpl	%eax, %edx
	cmova	%eax, %edx
	cmpl	$16, %edx
	jb	L1714
	movl	-16(%esi,%edx), %eax
	movl	%eax, -16(%edi,%edx)
	movl	-12(%esi,%edx), %eax
	movl	%eax, -12(%edi,%edx)
	movl	-8(%esi,%edx), %eax
	movl	%eax, -8(%edi,%edx)
	movl	-4(%esi,%edx), %eax
	movl	%eax, -4(%edi,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L1459
	andl	$-16, %edx
	xorl	%eax, %eax
	movl	%edx, 24(%esp)
L1463:
	movl	4(%esi,%eax), %ebp
	movl	8(%esi,%eax), %ebx
	movl	12(%esi,%eax), %ecx
	movl	(%esi,%eax), %edx
	movl	%ebp, 4(%edi,%eax)
	movl	%edx, (%edi,%eax)
	movl	%ebx, 8(%edi,%eax)
	movl	%ecx, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	24(%esp), %eax
	jb	L1463
	jmp	L1459
	.p2align 4,,10
	.p2align 3
L1710:
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	%ecx, _g_keyNameTable(,%ebp,8)
	movl	%ebx, _g_keyNameTable+4(,%ebp,8)
	movl	-8(%esi,%edx), %ecx
	movl	-4(%esi,%edx), %ebx
	movl	%ecx, -8(%edi,%edx)
	movl	%ebx, -4(%edi,%edx)
	jmp	L1459
L1711:
	movl	(%esi), %eax
	movl	%eax, _g_keyNameTable(,%ebp,8)
	movl	-4(%esi,%edx), %eax
	movl	%eax, -4(%edi,%edx)
	jmp	L1459
L1713:
	movzbl	_g_controllerSupportFlags, %eax
	testb	$1, %al
	je	L1715
L1466:
	movl	$1, %eax
	movb	$1, _g_mouseEnabled
	movl	$_KB_KeyEvent.lto_priv.0, _keypresscallback
	movl	$10, __ZL23CONTROL_NumMouseButtons.lto_priv.0
	call	_mouseGrabInput
	movzbl	_inputdevices, %eax
	movl	$9, %ecx
	movl	$0, _CONTROL_ButtonState
	movl	$0, _CONTROL_ButtonState+4
	movl	$0, _CONTROL_ButtonHeldState
	movl	%eax, %edx
	movl	$0, _CONTROL_ButtonHeldState+4
	shrb	%dl
	andl	$1, %edx
	movb	%dl, _CONTROL_MousePresent
	movb	%dl, _CONTROL_MouseEnabled
	movl	_joystick+16, %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	xorl	%ecx, %ecx
	movl	%edx, __ZL18CONTROL_NumJoyAxes.lto_priv.0
	movl	_joystick+28, %edx
	testl	%edx, %edx
	movl	_joystick+24, %edx
	setg	%cl
	leal	(%edx,%ecx,4), %edx
	movl	$32, %ecx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	shrb	$2, %al
	andl	$1, %eax
	movl	%edx, __ZL21CONTROL_NumJoyButtons.lto_priv.0
	movl	$__ZL13CONTROL_Flags.lto_priv.0+513, %edx
	movb	%al, _CONTROL_JoyPresent
	movb	%al, _CONTROL_JoystickEnabled
	movl	$__ZL13CONTROL_Flags.lto_priv.0+1, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L1471:
	movb	$0, (%eax)
	addl	$16, %eax
	movb	$0, -8(%eax)
	cmpl	%eax, %edx
	jne	L1471
	movb	$1, _CONTROL_Started
L1455:
	movl	$__ZL13CONTROL_Flags.lto_priv.0, %eax
	movl	$__ZL13CONTROL_Flags.lto_priv.0+432, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1472:
	movl	$0, 4(%eax)
	addl	$8, %eax
	movl	$256, -8(%eax)
	cmpl	%eax, %edx
	jne	L1472
	movl	__ZL12scripthandle.lto_priv.0, %eax
	testl	%eax, %eax
	js	L1473
	movl	$0, 20(%esp)
	leal	36(%esp), %esi
	leal	116(%esp), %ebx
	.p2align 4
	.p2align 3
L1486:
	movl	20(%esp), %eax
	movl	$LC19, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1477
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	L1477
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1477
	movl	4(%eax), %ebp
	testl	%ebp, %ebp
	jne	L1476
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1567:
	movl	%eax, %ebp
L1476:
	movl	%esi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1475
	movl	8(%ebp), %eax
	cmpl	%ebp, %eax
	jne	L1567
L1477:
	movl	20(%esp), %eax
	movl	$LC21, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1483
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1483
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1483
	movl	4(%eax), %ebp
	testl	%ebp, %ebp
	jne	L1482
	jmp	L1483
	.p2align 4,,10
	.p2align 3
L1568:
	movl	%eax, %ebp
L1482:
	movl	%esi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1481
	movl	8(%ebp), %eax
	cmpl	%ebp, %eax
	jne	L1568
L1483:
	addl	$1, 20(%esp)
	cmpl	$10, 20(%esp)
	jne	L1486
L1731:
	xorl	%edi, %edi
	leal	32(%esp), %ebp
L1490:
	movl	%edi, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %eax
	movl	_MouseAnalogScale(,%edi,4), %edx
	movl	__ZL11scriptfiles.lto_priv.0(,%eax,4), %ecx
	movl	%edx, 32(%esp)
	testl	%ecx, %ecx
	je	L1488
	movl	(%ecx), %ecx
	testl	%ecx, %ecx
	je	L1488
	movl	%ebp, (%esp)
	movl	$LC20, %edx
	movl	%esi, %ecx
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	32(%esp), %edx
L1488:
	movl	%edx, _MouseAnalogScale(,%edi,4)
	cmpl	$1, %edi
	jne	L1569
	movl	__ZL12scripthandle.lto_priv.0, %edi
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L1492
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1492
	leal	28(%esp), %eax
	movl	$LC23, %ecx
	movl	$LC20, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	__ZL12scripthandle.lto_priv.0, %edi
L1492:
	movl	28(%esp), %edx
	movl	$__ZL12mouseButtons.lto_priv.0, %ecx
	xorl	%eax, %eax
	movl	$127, %ebp
	movl	%edx, _gs
	movl	%edx, 20(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L1496:
	movl	_MouseButtons(,%eax,4), %edx
	cmpl	$64, %edx
	cmovnb	%ebp, %edx
	movb	%dl, (%ecx)
	movl	_MouseButtonsClicked(,%eax,4), %edx
	cmpl	$64, %edx
	cmovnb	%ebp, %edx
	addl	$1, %eax
	addl	$24, %ecx
	movb	%dl, -23(%ecx)
	cmpl	$10, %eax
	jne	L1496
	movss	LC24, %xmm1
	xorps	%xmm0, %xmm0
	movl	20(%esp), %edx
	cvtsi2ssl	_MouseAnalogScale, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, _CONTROL_MouseAxesSensitivity
	xorps	%xmm0, %xmm0
	cvtsi2ssl	_MouseAnalogScale+4, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, _CONTROL_MouseAxesSensitivity+4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC25, %xmm0
	movss	%xmm0, _CONTROL_MouseSensitivity
	testl	%edi, %edi
	js	L1473
	movl	$0, 20(%esp)
	.p2align 4
	.p2align 3
L1509:
	movl	20(%esp), %eax
	movl	$LC26, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1500
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1500
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1500
	movl	4(%eax), %ebp
	testl	%ebp, %ebp
	jne	L1499
	jmp	L1500
	.p2align 4,,10
	.p2align 3
L1570:
	movl	%eax, %ebp
L1499:
	movl	%esi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1498
	movl	8(%ebp), %eax
	cmpl	%ebp, %eax
	jne	L1570
L1500:
	movl	20(%esp), %eax
	movl	$LC27, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1506
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1506
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1506
	movl	4(%eax), %ebp
	testl	%ebp, %ebp
	jne	L1505
	jmp	L1506
	.p2align 4,,10
	.p2align 3
L1571:
	movl	%eax, %ebp
L1505:
	movl	%esi, 4(%esp)
	movl	0(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1504
	movl	8(%ebp), %eax
	cmpl	%ebp, %eax
	jne	L1571
L1506:
	addl	$1, 20(%esp)
	cmpl	$32, 20(%esp)
	jne	L1509
L1726:
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1536:
	movl	%ebp, 8(%esp)
	movl	$LC28, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1513
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1513
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1513
	movl	4(%eax), %edi
	testl	%edi, %edi
	jne	L1512
	jmp	L1513
	.p2align 4,,10
	.p2align 3
L1572:
	movl	%eax, %edi
L1512:
	movl	%esi, 4(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1511
	movl	8(%edi), %eax
	cmpl	%eax, %edi
	jne	L1572
L1513:
	movl	%ebp, 8(%esp)
	movl	$LC32, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1518
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1518
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1518
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	L1517
	jmp	L1518
	.p2align 4,,10
	.p2align 3
L1576:
	movl	%eax, %edx
L1517:
	movl	%esi, 4(%esp)
	movl	(%edx), %eax
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	20(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %edi
	je	L1516
	movl	8(%edx), %eax
	cmpl	%eax, %edx
	jne	L1576
L1518:
	movl	%ebp, 8(%esp)
	movl	$LC33, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %ecx
	movb	$0, 116(%esp)
	movl	%ebx, 32(%esp)
	movl	__ZL11scriptfiles.lto_priv.0(,%ecx,4), %eax
	testl	%eax, %eax
	je	L1524
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L1524
	movl	$LC20, %edx
	movl	%ecx, %eax
	call	_SCRIPT_SectionExists
	testl	%eax, %eax
	je	L1524
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	L1523
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1577:
	movl	%eax, %edx
L1523:
	movl	%esi, 4(%esp)
	movl	(%edx), %eax
	movl	%edx, 20(%esp)
	movl	%eax, (%esp)
	call	_strcasecmp
	movl	20(%esp), %edx
	testl	%eax, %eax
	movl	%eax, %edi
	je	L1522
	movl	8(%edx), %eax
	cmpl	%eax, %edx
	jne	L1577
L1524:
	movl	%ebp, 8(%esp)
	movl	$LC34, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %edi
	movl	_JoystickAnalogScale(,%ebp,4), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	je	L1528
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L1528
	leal	28(%esp), %eax
	movl	%esi, %ecx
	movl	$LC20, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	28(%esp), %eax
L1528:
	movl	%eax, _JoystickAnalogScale(,%ebp,4)
	movl	%ebp, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %edi
	movl	_JoystickAnalogDead(,%ebp,4), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	je	L1531
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	L1531
	leal	28(%esp), %eax
	movl	%esi, %ecx
	movl	$LC20, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	28(%esp), %eax
L1531:
	movl	%eax, _JoystickAnalogDead(,%ebp,4)
	movl	%ebp, 8(%esp)
	movl	$LC36, 4(%esp)
	movl	%esi, (%esp)
	call	_sprintf
	movl	__ZL12scripthandle.lto_priv.0, %edi
	movl	_JoystickAnalogSaturate(,%ebp,4), %eax
	movl	__ZL11scriptfiles.lto_priv.0(,%edi,4), %edx
	movl	%eax, 28(%esp)
	testl	%edx, %edx
	je	L1534
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L1534
	leal	28(%esp), %eax
	movl	%esi, %ecx
	movl	$LC20, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_SCRIPT_GetNumber.part.0.isra.0
	movl	28(%esp), %eax
L1534:
	movl	%eax, _JoystickAnalogSaturate(,%ebp,4)
	addl	$1, %ebp
	cmpl	$9, %ebp
	jne	L1536
	movl	$__ZL10joyButtons.lto_priv.0, %ecx
	xorl	%eax, %eax
	movl	$127, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L1539:
	movl	_JoystickButtons(,%eax,4), %edx
	cmpl	$64, %edx
	cmovnb	%ebx, %edx
	movb	%dl, (%ecx)
	movl	_JoystickButtonsClicked(,%eax,4), %edx
	cmpl	$64, %edx
	cmovnb	%ebx, %edx
	addl	$1, %eax
	addl	$24, %ecx
	movb	%dl, -23(%ecx)
	cmpl	$32, %eax
	jne	L1539
	movss	LC37, %xmm1
	xorl	%eax, %eax
	movl	$127, %ecx
	.p2align 4
	.p2align 3
L1543:
	movl	_JoystickAnalogAxes(%eax), %edx
	leal	1(%edx), %ebx
	cmpl	$6, %ebx
	ja	L1540
	movb	%dl, __ZL7joyAxes.lto_priv.0(,%eax,8)
L1540:
	xorps	%xmm0, %xmm0
	movl	_JoystickDigitalAxes(%eax,%eax), %edx
	movl	_JoystickAnalogDead(%eax), %ebx
	cvtsi2ssl	_JoystickAnalogScale(%eax), %xmm0
	cmpl	$64, %edx
	movw	%bx, __ZL7joyAxes.lto_priv.0+24(,%eax,8)
	cmovnb	%ecx, %edx
	divss	%xmm1, %xmm0
	movb	%dl, __ZL7joyAxes.lto_priv.0+1(,%eax,8)
	movl	_JoystickDigitalAxes+4(%eax,%eax), %edx
	cmpl	$64, %edx
	cmovnb	%ecx, %edx
	movb	%dl, __ZL7joyAxes.lto_priv.0+2(,%eax,8)
	movl	_JoystickAnalogSaturate(%eax), %edx
	movw	%dx, __ZL7joyAxes.lto_priv.0+26(,%eax,8)
	movss	%xmm0, __ZL7joyAxes.lto_priv.0+20(,%eax,8)
	addl	$4, %eax
	cmpl	$36, %eax
	jne	L1543
L1473:
	movl	_ud_setup, %ecx
	xorl	%edx, %edx
	movzbl	_CONTROL_JoyPresent, %eax
	movl	$0, __ZL8numlumps.lto_priv.0
	movl	_ud_setup+4, %ebx
	movl	$0, __ZL8lumpinfo.lto_priv.0
	testl	%ecx, %ecx
	cmove	%edx, %eax
	testl	%ebx, %ebx
	movb	%al, _CONTROL_JoystickEnabled
	movzbl	_CONTROL_MousePresent, %eax
	cmove	%edx, %eax
	xorl	%edx, %edx
	movb	%al, _CONTROL_MouseEnabled
	movl	$_RTSName, %eax
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1716
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	leal	116(%esp), %ebx
	movl	$12, %ecx
	movl	__ZL8numlumps.lto_priv.0, %esi
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%ebx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	$4, 8(%esp)
	movl	$LC40, 4(%esp)
	movl	%ebx, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L1717
	movl	120(%esp), %ebx
	movl	_g_sm_heap, %ecx
	sall	$4, %ebx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 212
	subl	$4, %esp
	.cfi_def_cfa_offset 216
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L1559
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	124(%esp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebx, %ecx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	24(%esp), %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	__ZL8numlumps.lto_priv.0, %eax
	addl	120(%esp), %eax
	leal	(%eax,%eax,4), %ebx
	movl	__ZL8lumpinfo.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	sall	$2, %ebx
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 208
	subl	$8, %esp
	.cfi_def_cfa_offset 216
	testl	%eax, %eax
	jne	L1706
	testl	%ebx, %ebx
	jne	L1559
	testl	%eax, %eax
	je	L1554
L1706:
	movl	__ZL8numlumps.lto_priv.0, %ecx
	addl	120(%esp), %ecx
	movl	%eax, __ZL8lumpinfo.lto_priv.0
	movl	%ecx, __ZL8numlumps.lto_priv.0
	cmpl	%ecx, %esi
	jge	L1556
	leal	(%esi,%esi,4), %edx
	movl	%ecx, 20(%esp)
	leal	(%eax,%edx,4), %ebx
	movl	24(%esp), %eax
	leal	8(%eax), %ebp
	.p2align 4
	.p2align 3
L1557:
	movl	%edi, 8(%ebx)
	movl	-8(%ebp), %eax
	addl	$1, %esi
	movl	%eax, 12(%ebx)
	movl	-4(%ebp), %eax
	movl	%eax, 16(%ebx)
	movl	%ebp, 4(%esp)
	addl	$16, %ebp
	movl	%ebx, (%esp)
	addl	$20, %ebx
	movl	$8, 8(%esp)
	call	_strncpy
	cmpl	%esi, 20(%esp)
	jne	L1557
L1556:
	movl	24(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 212
	movl	__ZL8numlumps.lto_priv.0, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 216
	testl	%eax, %eax
	jne	L1718
L1548:
	movl	$LC42, %eax
	call	__Z8OSD_ExecPKc
	movl	$LC43, %eax
	call	__Z8OSD_ExecPKc
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L1560
	call	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
L1560:
	movl	_vsync, %eax
	call	_videoSetVsync
	movl	%eax, _vsync
	cmpb	$0, __ZGVZ12FX_InitCvarsE14cvars_audiolib
	je	L1719
L1561:
	movl	$__ZZ12FX_InitCvarsE14cvars_audiolib, %ebx
	movl	$__ZL24osdcmd_cvar_set_audiolibPK13osdfuncparm_t.lto_priv.0, %esi
	.p2align 4
	.p2align 3
L1563:
	testb	$2, 13(%ebx)
	movl	$__Z15osdcmd_cvar_setPK13osdfuncparm_t, %edx
	movl	%ebx, %eax
	cmovne	%esi, %edx
	addl	$24, %ebx
	call	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE
	cmpl	$__ZZ12FX_InitCvarsE14cvars_audiolib+240, %ebx
	jne	L1563
	movl	_osd, %eax
	testl	%eax, %eax
	je	L1720
L1564:
	movl	$LC44, %eax
	call	__ZL19osd_findexactsymbolPKc.lto_priv.0
	testl	%eax, %eax
	je	L1721
L1565:
	movl	$LC45, 8(%eax)
	movl	$__Z29WinMMDrv_MIDI_PrintBufferInfoPK13osdfuncparm_t, 12(%eax)
	addl	$196, %esp
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
L1498:
	.cfi_restore_state
	movl	4(%ebp), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1502
	.p2align 4,,10
	.p2align 3
L1723:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1722
L1502:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1723
	movl	20(%esp), %eax
	movl	%edi, _JoystickButtons(,%eax,4)
	jmp	L1500
	.p2align 4,,10
	.p2align 3
L1504:
	movl	4(%ebp), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1508
	.p2align 4,,10
	.p2align 3
L1725:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1724
L1508:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1725
	movl	20(%esp), %eax
	movl	%edi, _JoystickButtonsClicked(,%eax,4)
L1736:
	addl	$1, 20(%esp)
	cmpl	$32, 20(%esp)
	jne	L1509
	jmp	L1726
	.p2align 4,,10
	.p2align 3
L1475:
	movl	4(%ebp), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1728:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1727
L1479:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1728
	movl	20(%esp), %eax
	movl	%edi, _MouseButtons(,%eax,4)
	jmp	L1477
	.p2align 4,,10
	.p2align 3
L1481:
	movl	4(%ebp), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1485
	.p2align 4,,10
	.p2align 3
L1730:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1729
L1485:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1730
	movl	20(%esp), %eax
	movl	%edi, _MouseButtonsClicked(,%eax,4)
L1737:
	addl	$1, 20(%esp)
	cmpl	$10, 20(%esp)
	jne	L1486
	jmp	L1731
	.p2align 4,,10
	.p2align 3
L1522:
	movl	4(%edx), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1526
	.p2align 4,,10
	.p2align 3
L1733:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1732
L1526:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1733
	movl	%edi, _JoystickDigitalAxes+4(,%ebp,8)
	jmp	L1524
	.p2align 4,,10
	.p2align 3
L1511:
	movl	4(%edi), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	movl	$LC46, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	je	L1514
	movl	$LC29, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	movl	$1, %eax
	je	L1514
	movl	$LC30, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	testl	%eax, %eax
	movl	$5, %eax
	je	L1514
	movl	$LC31, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcasecmp
	negl	%eax
	sbbl	%eax, %eax
	orl	$2, %eax
L1514:
	movl	%eax, _JoystickAnalogAxes(,%ebp,4)
	jmp	L1513
	.p2align 4,,10
	.p2align 3
L1516:
	movl	4(%edx), %edx
	leal	32(%esp), %eax
	call	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0
	jmp	L1520
	.p2align 4,,10
	.p2align 3
L1735:
	addl	$1, %edi
	cmpl	$54, %edi
	je	L1734
L1520:
	movl	_gamefunctions(,%edi,4), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	_strcasecmp
	testl	%eax, %eax
	jne	L1735
	movl	%edi, _JoystickDigitalAxes(,%ebp,8)
	jmp	L1518
	.p2align 4,,10
	.p2align 3
L1722:
	movl	20(%esp), %eax
	movl	$-1, %edi
	movl	%edi, _JoystickButtons(,%eax,4)
	jmp	L1500
	.p2align 4,,10
	.p2align 3
L1724:
	movl	20(%esp), %eax
	movl	$-1, %edi
	movl	%edi, _JoystickButtonsClicked(,%eax,4)
	jmp	L1736
L1727:
	movl	20(%esp), %eax
	movl	$-1, %edi
	movl	%edi, _MouseButtons(,%eax,4)
	jmp	L1477
L1729:
	movl	20(%esp), %eax
	movl	$-1, %edi
	movl	%edi, _MouseButtonsClicked(,%eax,4)
	jmp	L1737
L1734:
	movl	$-1, %edi
	movl	%edi, _JoystickDigitalAxes(,%ebp,8)
	jmp	L1518
L1732:
	movl	$-1, %edi
	movl	%edi, _JoystickDigitalAxes+4(,%ebp,8)
	jmp	L1524
L1569:
	movl	$1, %edi
	jmp	L1490
L1712:
	movzwl	-2(%esi,%edx), %eax
	movw	%ax, -2(%edi,%edx)
	jmp	L1459
L1718:
	leal	0(,%eax,4), %ebx
	movl	_g_sm_heap, %ecx
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 212
	subl	$4, %esp
	.cfi_def_cfa_offset 216
	testl	%eax, %eax
	je	L1559
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, __ZL9lumpcache.lto_priv.0
	call	_memset
	jmp	L1548
L1715:
	testb	$2, %al
	jne	L1738
L1467:
	testb	$4, %al
	jne	L1739
L1468:
	movl	$8192, (%esp)
	call	_SDL_InitSubSystem
	testl	%eax, %eax
	je	L1740
L1469:
	cmpb	$2, __ZL6linked.lto_priv.0
	ja	L1470
	jne	L1466
	cmpb	$0, __ZL6linked.lto_priv.0+1
	je	L1741
L1470:
	testb	$2, _joystick+44
	je	L1466
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$4, %eax
	jle	L1466
	movl	$LC17, 12(%esp)
	movl	$1214, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$5, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1466
	.p2align 4,,10
	.p2align 3
L1719:
	call	*__imp__midiOutGetNumDevs@0
	movb	$1, __ZGVZ12FX_InitCvarsE14cvars_audiolib
	subl	$1, %eax
	movl	%eax, __ZZ12FX_InitCvarsE14cvars_audiolib+164
	jmp	L1561
L1559:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1721:
	movl	$LC44, %eax
	call	__ZL13osd_addsymbolPKc.lto_priv.0
	movl	$LC44, (%eax)
	jmp	L1565
L1720:
	call	__Z8OSD_Initv
	jmp	L1564
L1740:
	call	_joyScanDevices
	jmp	L1469
L1739:
	movl	$LC14, 4(%esp)
	movl	$LC16, (%esp)
	call	_SDL_SetHint
	jmp	L1468
L1738:
	movl	$LC14, 4(%esp)
	movl	$LC15, (%esp)
	call	_SDL_SetHint
	movzbl	_g_controllerSupportFlags, %eax
	jmp	L1467
L1741:
	cmpb	$8, __ZL6linked.lto_priv.0+2
	jbe	L1466
	jmp	L1470
L1717:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1742
L1554:
	movl	%edi, %eax
	call	_kclose
	jmp	L1548
L1716:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1548
	movl	$_RTSName, 16(%esp)
	movl	$LC38, 12(%esp)
	movl	$86, 8(%esp)
	movl	$LC39, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1548
L1742:
	movl	$_RTSName, 16(%esp)
	movl	$LC41, 12(%esp)
	movl	$97, 8(%esp)
	movl	$LC39, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1554
	.cfi_endproc
LFE115:
	.globl	_CONTROL_JoySensitivityUnit
	.data
	.align 4
_CONTROL_JoySensitivityUnit:
	.long	1045220557
	.globl	_CONTROL_MouseSensitivityUnit
	.align 4
_CONTROL_MouseSensitivityUnit:
	.long	1023433530
	.globl	_MV_LazyAlloc
	.align 4
_MV_LazyAlloc:
	.long	1
	.globl	_SDLAudioDriverName
	.bss
	.align 4
_SDLAudioDriverName:
	.space 16
	.globl	_MV_XMPInterpolation
	.align 4
_MV_XMPInterpolation:
	.space 4
	.globl	_WinMM_DeviceID
	.data
	.align 4
_WinMM_DeviceID:
	.long	-1
	.globl	_SF2_EffectSampleBlockSize
	.align 4
_SF2_EffectSampleBlockSize:
	.long	16
	.globl	_SF2_BankFile
	.bss
	.align 32
_SF2_BankFile:
	.space 256
	.globl	_AL_Stereo
	.data
	.align 4
_AL_Stereo:
	.long	1
	.globl	_AL_PostAmp
	.align 4
_AL_PostAmp:
	.long	1077936128
	.globl	_AL_AdditiveMode
	.bss
	.align 4
_AL_AdditiveMode:
	.space 4
	.globl	_ASS_EMIDICard
	.data
	.align 4
_ASS_EMIDICard:
	.long	-1
	.globl	__ZL6linked.lto_priv.0
	.bss
__ZL6linked.lto_priv.0:
	.space 3
	.globl	__ZL14keytranslation.lto_priv.0
	.align 32
__ZL14keytranslation.lto_priv.0:
	.space 512
	.globl	_g_mouseGrabbed
_g_mouseGrabbed:
	.space 1
	.globl	_g_controllerHotplugCallback
	.align 4
_g_controllerHotplugCallback:
	.space 4
	.globl	_g_mouseEnabled
_g_mouseEnabled:
	.space 1
	.globl	_g_mouseLockedToWindow
	.section .rdata,"dr"
_g_mouseLockedToWindow:
	.byte	1
	.globl	__ZL21CONTROL_NumJoyButtons.lto_priv.0
	.bss
	.align 4
__ZL21CONTROL_NumJoyButtons.lto_priv.0:
	.space 4
	.globl	__ZL18CONTROL_NumJoyAxes.lto_priv.0
	.align 4
__ZL18CONTROL_NumJoyAxes.lto_priv.0:
	.space 4
	.globl	_inputdevices
_inputdevices:
	.space 1
	.globl	__ZL23CONTROL_NumMouseButtons.lto_priv.0
	.align 4
__ZL23CONTROL_NumMouseButtons.lto_priv.0:
	.space 4
	.globl	__ZL24CONTROL_DoubleClickSpeed.lto_priv.0
__ZL24CONTROL_DoubleClickSpeed.lto_priv.0:
	.space 1
	.globl	__ZL7ticrate.lto_priv.0
	.align 4
__ZL7ticrate.lto_priv.0:
	.space 4
	.globl	__ZL10ExtGetTime.lto_priv.0
	.align 4
__ZL10ExtGetTime.lto_priv.0:
	.space 4
	.section .rdata,"dr"
LC47:
	.ascii "in_mousexsens\0"
	.align 4
LC48:
	.ascii "horizontal mouse sensitivity multiplier\0"
LC49:
	.ascii "in_mouseysens\0"
	.align 4
LC50:
	.ascii "vertical mouse sensitivity multiplier\0"
LC51:
	.ascii "in_mouseunit\0"
LC52:
	.ascii "base mouse input unit\0"
LC53:
	.ascii "in_joyunit\0"
LC54:
	.ascii "base controller input unit\0"
LC55:
	.ascii "sensitivity\0"
	.align 4
LC56:
	.ascii "master mouse sensitivity multiplier\0"
	.data
	.align 32
__ZZ15CONTROL_StartupE10cvars_mact:
	.long	LC47
	.long	LC48
	.long	_CONTROL_MouseAxesSensitivity
	.long	1
	.long	0
	.long	100
	.long	LC49
	.long	LC50
	.long	_CONTROL_MouseAxesSensitivity+4
	.long	1
	.long	0
	.long	100
	.long	LC51
	.long	LC52
	.long	_CONTROL_MouseSensitivityUnit
	.long	1
	.long	0
	.long	1
	.long	LC53
	.long	LC54
	.long	_CONTROL_JoySensitivityUnit
	.long	1
	.long	0
	.long	1
	.long	LC55
	.long	LC56
	.long	_CONTROL_MouseSensitivity
	.long	1
	.long	0
	.long	100
.lcomm _CONTROL_Started,1,1
	.globl	__ZL3osv.lto_priv.0
	.bss
	.align 32
__ZL3osv.lto_priv.0:
	.space 156
	.globl	_vsync
	.align 4
_vsync:
	.space 4
	.section .rdata,"dr"
LC57:
	.ascii "mus_emidicard\0"
	.align 4
LC58:
	.ascii "force a specific EMIDI instrument set\0"
LC59:
	.ascii "mus_al_additivemode\0"
	.align 4
LC60:
	.ascii "enable/disable alternate additive AdLib timbre mode\0"
LC61:
	.ascii "mus_al_postamp\0"
	.align 4
LC62:
	.ascii "controls post-synthesization OPL3 volume amplification\0"
LC63:
	.ascii "mus_al_stereo\0"
	.align 4
LC64:
	.ascii "enable/disable OPL3 stereo mode\0"
LC65:
	.ascii "mus_sf2_bank\0"
	.align 4
LC66:
	.ascii "SoundFont 2 (.sf2) bank filename\0"
LC67:
	.ascii "mus_sf2_sampleblocksize\0"
	.align 4
LC68:
	.ascii "number of samples per effect processing block\0"
LC69:
	.ascii "mus_mme_device\0"
	.align 4
LC70:
	.ascii "select Windows MME MIDI output device\0"
LC71:
	.ascii "mus_xmp_interpolation\0"
	.align 4
LC72:
	.ascii "XMP output interpolation: 0: none  1: linear  2: spline\0"
LC73:
	.ascii "snd_sdl_audiodriver\0"
	.align 4
LC74:
	.ascii "select SDL audio driver (platform-specific)\0"
LC75:
	.ascii "snd_lazyalloc\0"
LC76:
	.ascii "use lazy sound allocations\0"
	.data
	.align 32
__ZZ12FX_InitCvarsE14cvars_audiolib:
	.long	LC57
	.long	LC58
	.long	_ASS_EMIDICard
	.long	514
	.long	-1
	.long	10
	.long	LC59
	.long	LC60
	.long	_AL_AdditiveMode
	.long	8
	.long	0
	.long	1
	.long	LC61
	.long	LC62
	.long	_AL_PostAmp
	.long	1
	.long	1
	.long	6
	.long	LC63
	.long	LC64
	.long	_AL_Stereo
	.long	520
	.long	0
	.long	1
	.long	LC65
	.long	LC66
	.long	_SF2_BankFile
	.long	528
	.long	0
	.long	255
	.long	LC67
	.long	LC68
	.long	_SF2_EffectSampleBlockSize
	.long	514
	.long	1
	.long	64
	.long	LC69
	.long	LC70
	.long	_WinMM_DeviceID
	.long	514
	.long	-1
	.space 4
	.long	LC71
	.long	LC72
	.long	_MV_XMPInterpolation
	.long	514
	.long	0
	.long	2
	.long	LC73
	.long	LC74
	.long	_SDLAudioDriverName
	.long	528
	.long	0
	.long	15
	.long	LC75
	.long	LC76
	.long	_MV_LazyAlloc
	.long	8
	.long	0
	.long	1
.lcomm __ZGVZ12FX_InitCvarsE14cvars_audiolib,8,8
	.globl	_CONTROL_MouseEnabled
	.bss
_CONTROL_MouseEnabled:
	.space 1
	.globl	_CONTROL_JoystickEnabled
_CONTROL_JoystickEnabled:
	.space 1
.lcomm _nti_cnt,2,2
	.section .rdata,"dr"
	.align 32
_CSWTCH.410:
	.long	25
	.long	23
	.long	22
	.long	20
	.long	20
	.long	17
	.long	24
	.long	25
	.globl	_GlobSpeedSO
	.bss
	.align 4
_GlobSpeedSO:
	.space 4
	.section .rdata,"dr"
	.align 4
__ZZ19DoDeleteSpriteMatchsE8StatList:
	.word	0
	.word	70
	.word	82
	.word	57
	.word	10
	.word	83
	.word	42
	.word	68
	.word	60
	.align 4
__ZZ23SectorObjectSetupBoundsP19SECTOR_OBJECTstructE8StatList:
	.ascii "\0\1\12"
	.ascii "9CAN'.DQ8"
	.align 16
LC0:
	.long	0
	.long	0
	.long	256
	.long	15000
	.align 8
LC1:
	.long	0
	.long	-9999999
	.align 8
LC2:
	.word	-9999
	.word	0
	.word	0
	.word	0
	.align 8
LC3:
	.word	0
	.word	20
	.word	-1024
	.word	1024
	.align 4
LC10:
	.long	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct
	.align 8
LC12:
	.long	1024
	.long	2560
	.align 4
LC24:
	.long	969723085
	.align 4
LC25:
	.long	956301312
	.align 4
LC37:
	.long	1186988032
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z9WallSetupv;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z12MorphTornadoP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17SetSectorWallBitssihh.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15SectorLiquidSets;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__ZL24so_setpointinterpolationP9so_interpPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnVehicleSmokes;	.scl	2;	.type	32;	.endef
	.def	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE;	.scl	2;	.type	32;	.endef
	.def	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z18DoAutoTurretObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10MorphFloorP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoTornadoObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerForceJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10ActorSpawnP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z28DoSpawnTeleporterEffectPlaceP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z14DoVatorOperateP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z22TestRotatorMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z14DoRotatorMatchP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z21TestSlidorMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z13DoSlidorMatchP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnSectorExps;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
	.def	__Z17SpriteQueueDeletes;	.scl	2;	.type	32;	.endef
	.def	__Z16SectorLightShadeP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z15DiffuseLightingP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z16InitFireballTraps;	.scl	2;	.type	32;	.endef
	.def	__Z12InitBoltTraps;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpearTraps;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.1.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponStarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15PlaySpriteSoundsii;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z10DoGoroMoves;	.scl	2;	.type	32;	.endef
	.def	__Z20CollapseSectorObjectP19SECTOR_OBJECTstructii;	.scl	2;	.type	32;	.endef
	.def	__Z23KillSectorObjectSpritesP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoLightingMatchss;	.scl	2;	.type	32;	.endef
	.def	__Z12DoQuakeMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z20TestVatorMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z20TestSpikeMatchActives;	.scl	2;	.type	32;	.endef
	.def	__Z22DoSectorObjectSetScales;	.scl	2;	.type	32;	.endef
	.def	__Z9DoSOeventss;	.scl	2;	.type	32;	.endef
	.def	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13RefreshPointsP19SECTOR_OBJECTstructiih;	.scl	2;	.type	32;	.endef
	.def	__Z11GetSectUsers;	.scl	2;	.type	32;	.endef
	.def	__Z10DoWallMoveP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnItemsMatchs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoVatorMatchP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z12DoSpikeMatchs;	.scl	2;	.type	32;	.endef
	.def	__Z8PlaySongPcihh.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__Z9DoGratings;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z4WarpPiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	__Z16DoPlayerBeginRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21DoPlayerTeleportPauseP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18UpdatePlayerSpriteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z23DoSpawnTeleporterEffectP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z14DoSpikeOperates;	.scl	2;	.type	32;	.endef
	.def	__Z17MoveSectorObjectsP19SECTOR_OBJECTstructs;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z15osdcmd_cvar_setPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_RegisterCvarP13osdcvardata_tPFiPK13osdfuncparm_tE;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ScanForControllers;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetKeyName;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_KB_KeyEvent.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_mouseGrabInput;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_SectionExists;	.scl	2;	.type	32;	.endef
	.def	_strcasecmp;	.scl	2;	.type	32;	.endef
	.def	_SCRIPT_GetNumber.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetVsync;	.scl	2;	.type	32;	.endef
	.def	__ZL24osdcmd_cvar_set_audiolibPK13osdfuncparm_t.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19osd_findexactsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z29WinMMDrv_MIDI_PrintBufferInfoPK13osdfuncparm_t;	.scl	2;	.type	32;	.endef
	.def	__ZL18SCRIPT_ParseStringPPcS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_SDL_InitSubSystem;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZL13osd_addsymbolPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Initv;	.scl	2;	.type	32;	.endef
	.def	_joyScanDevices;	.scl	2;	.type	32;	.endef
	.def	_SDL_SetHint;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
