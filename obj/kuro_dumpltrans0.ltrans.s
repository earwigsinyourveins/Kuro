	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z13DoScaleSprites
	.def	__Z13DoScaleSprites;	.scl	2;	.type	32;	.endef
__Z13DoScaleSprites:
LFB0:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %ecx
	movl	_User(,%ecx,4), %eax
	movzwl	204(%eax), %edx
	testw	%dx, %dx
	je	L2
	movl	%ebx, 4(%esp)
	imull	$44, %ecx, %ecx
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	leal	(%edx,%edx,2), %esi
	movl	%ebp, 16(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movzwl	206(%eax), %edi
	leal	(%ecx,%ebx), %ebp
	leal	(%edi,%esi,2), %esi
	movswl	208(%eax), %edi
	movl	%esi, %ecx
	movw	%si, 206(%eax)
	movl	%edi, (%esp)
	movzbl	%ch, %ecx
	testw	%dx, %dx
	jle	L3
	cmpl	%edi, %ecx
	jle	L5
L10:
	xorl	%edx, %edx
	movw	%dx, 204(%eax)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L2:
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L3:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	(%esp), %ecx
	jl	L10
L5:
	leal	21(%ebp), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebp), %edx
	movb	%ah, 21(%ebp)
	subl	%ebx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%ah, 20(%ebp)
	xorl	%eax, %eax
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z17DoActorBeginSlidessss
	.def	__Z17DoActorBeginSlidessss;	.scl	2;	.type	32;	.endef
__Z17DoActorBeginSlidessss:
LFB1:
	.cfi_startproc
	movswl	4(%esp), %eax
	movzwl	8(%esp), %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 228(%eax)
	movswl	12(%esp), %edx
	orl	$2097152, 68(%eax)
	movl	%edx, 232(%eax)
	movzwl	16(%esp), %edx
	movw	%dx, 236(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z6DoFalls
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
__Z6DoFalls:
LFB2:
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
	movswl	16(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movzwl	94(%ebx), %ecx
	movzwl	92(%ebx), %eax
	movl	140(%ebx), %esi
	leal	(%ecx,%ecx,2), %ecx
	leal	(%eax,%ecx,2), %ecx
	leal	8(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movw	%cx, 92(%ebx)
	movswl	%cx, %ecx
	leal	(%ecx,%ecx,2), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esi), %eax
	leal	(%eax,%ecx,2), %ecx
	movl	%ecx, 8(%esi)
	movswl	98(%ebx), %edi
	movl	108(%ebx), %eax
	subl	%edi, %eax
	cmpl	%ecx, %eax
	jge	L14
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	andl	$-65, 68(%ebx)
L14:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z11DoBeginFalls
	.def	__Z11DoBeginFalls;	.scl	2;	.type	32;	.endef
__Z11DoBeginFalls:
LFB3:
	.cfi_startproc
	movswl	4(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%ecx, 4(%esp)
	jmp	__Z6DoFalls
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z6DoJumps
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
__Z6DoJumps:
LFB5:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movswl	20(%esp), %esi
	movl	%ebx, (%esp)
	movl	%edi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	movswl	94(%ebx), %eax
	movl	140(%ebx), %edi
	leal	(%eax,%eax,2), %ecx
	movzwl	92(%ebx), %eax
	leal	(%eax,%ecx,2), %ecx
	movw	%cx, 92(%ebx)
	testw	%cx, %cx
	jg	L22
	leal	8(%edi), %eax
	movl	$-1171354717, %edx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movswl	%cx, %ecx
	subl	_sprite, %eax
	leal	(%ecx,%ecx,2), %ecx
	movl	_sprite, %ebp
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%edi), %eax
	leal	(%eax,%ecx,2), %ecx
	imull	$44, %esi, %eax
	movl	%ecx, 8(%edi)
	movswl	14(%ebp,%eax), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	sall	$8, %eax
	addl	104(%ebx), %eax
	cmpl	%ecx, %eax
	jg	L23
	movl	12(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	(%esp), %ebx
	xorl	%eax, %eax
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L23:
	.cfi_restore_state
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%edi)
	negw	92(%ebx)
	movl	_User(,%esi,4), %edx
	movl	68(%edx), %eax
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	12(%esp), %ebp
	.cfi_restore 5
	movl	%esi, 20(%esp)
L21:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z6DoFalls
	.p2align 4,,10
	.p2align 3
L22:
	.cfi_restore_state
	movl	_User(,%esi,4), %edx
	movl	$8, %ecx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%edx)
	movl	%esi, 20(%esp)
	jmp	L21
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z11DoBeginJumps
	.def	__Z11DoBeginJumps;	.scl	2;	.type	32;	.endef
__Z11DoBeginJumps:
LFB6:
	.cfi_startproc
	movswl	4(%esp), %ecx
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%ecx, 4(%esp)
	jmp	__Z6DoJumps
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z12DebugMoveHits
	.def	__Z12DebugMoveHits;	.scl	2;	.type	32;	.endef
__Z12DebugMoveHits:
LFB7:
	.cfi_startproc
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z12ChooseActionP8DECISION
	.def	__Z12ChooseActionP8DECISION;	.scl	2;	.type	32;	.endef
__Z12ChooseActionP8DECISION:
LFB8:
	.cfi_startproc
	movl	_randomseed, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	%ebx, %edx
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	(%ebx), %cx
	jle	L28
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L27:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	%cx, (%edx)
	jl	L27
L28:
	movl	4(%edx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z12ActorFlamings
	.def	__Z12ActorFlamings;	.scl	2;	.type	32;	.endef
__Z12ActorFlamings:
LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	xorl	%edx, %edx
	movl	_User(,%eax,4), %ecx
	movswl	196(%ecx), %eax
	testw	%ax, %ax
	js	L34
	movl	140(%ecx), %ecx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzbl	21(%ecx), %edx
	movswl	14(%ecx), %ecx
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %dl
	je	L43
	imull	%ecx, %edx
	leal	0(,%edx,4), %ebx
L37:
	movl	%ebx, %ecx
	subl	%edx, %ecx
	movzbl	21(%eax), %edx
	movswl	14(%eax), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L44
	imull	%eax, %edx
	leal	0(,%edx,4), %eax
L39:
	cmpl	%ecx, %eax
	setg	%dl
L34:
	movl	%edx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L43:
	.cfi_restore_state
	movl	%ecx, %edx
	sall	$6, %ecx
	sall	$8, %edx
	movl	%edx, %ebx
	movl	%ecx, %edx
	jmp	L37
	.p2align 4,,10
	.p2align 3
L44:
	sall	$8, %eax
	jmp	L39
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z15DoActorSetSpeedsh
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
__Z15DoActorSetSpeedsh:
LFB12:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	_User(,%eax,4), %esi
	movl	140(%esi), %ebx
	testb	$16, 13(%ebx)
	jne	L45
	movzbl	24(%esp), %ecx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	movb	%cl, 174(%esi)
	movl	%eax, (%esp)
	call	__Z12ActorFlamings
	movl	48(%esi), %edx
	movl	%eax, %ecx
	movzbl	24(%esp), %eax
	movzwl	(%edx,%eax,2), %esi
	movl	$-1171354717, %eax
	leal	32(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	testb	%cl, %cl
	je	L47
	movl	%esi, %eax
	sarw	%ax
	addl	%esi, %eax
	movw	%ax, 32(%ebx)
	movl	12(%esp), %edi
	.cfi_restore 7
L45:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L47:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movw	%si, 32(%ebx)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z18ChooseActionNumberPs
	.def	__Z18ChooseActionNumberPs;	.scl	2;	.type	32;	.endef
__Z18ChooseActionNumberPs:
LFB13:
	.cfi_startproc
	movl	_randomseed, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	xorl	%eax, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	sarl	$5, %edx
	andw	$1023, %dx
	cmpw	(%ebx), %dx
	jle	L49
	.p2align 4
	.p2align 4
	.p2align 3
L50:
	addl	$1, %eax
	movswl	%ax, %ecx
	cmpw	%dx, (%ebx,%ecx,2)
	jl	L50
L49:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z21InitActorAmbientNoises
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
__Z21InitActorAmbientNoises:
LFB15:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z18GetPlayerSpriteNums
	.def	__Z18GetPlayerSpriteNums;	.scl	2;	.type	32;	.endef
__Z18GetPlayerSpriteNums:
LFB17:
	.cfi_startproc
	movl	_connecthead, %edx
	cmpw	$-1, %dx
	je	L66
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%dx, %eax
	movswl	8(%esp), %edx
	movl	_User(,%edx,4), %edx
	movl	200(%edx), %ecx
	jmp	L60
	.p2align 5
	.p2align 4,,10
	.p2align 3
L59:
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L67
L60:
	imull	$24124, %eax, %edx
	cmpl	%ecx, _Player+352(%edx)
	jne	L59
	movswl	_Player+348(%edx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L67:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L66:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z14CloseRangeDistP12spritetypev7S0_
	.def	__Z14CloseRangeDistP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
__Z14CloseRangeDistP12spritetypev7S0_:
LFB19:
	.cfi_startproc
	movl	4(%esp), %eax
	movzbl	18(%eax), %edx
	movl	8(%esp), %eax
	movzbl	18(%eax), %eax
	sall	$2, %eax
	leal	400(%eax,%edx,4), %eax
	ret
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z19InitActorAlertNoises
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
__Z19InitActorAlertNoises:
LFB20:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z20InitActorAttackNoises
	.def	__Z20InitActorAttackNoises;	.scl	2;	.type	32;	.endef
__Z20InitActorAttackNoises:
LFB21:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z18InitActorPainNoises
	.def	__Z18InitActorPainNoises;	.scl	2;	.type	32;	.endef
__Z18InitActorPainNoises:
LFB22:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z17InitActorDieNoises
	.def	__Z17InitActorDieNoises;	.scl	2;	.type	32;	.endef
__Z17InitActorDieNoises:
LFB23:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z20InitActorExtra1Noises
	.def	__Z20InitActorExtra1Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra1Noises:
LFB24:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z20InitActorExtra2Noises
	.def	__Z20InitActorExtra2Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra2Noises:
LFB25:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z20InitActorExtra3Noises
	.def	__Z20InitActorExtra3Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra3Noises:
LFB26:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z20InitActorExtra4Noises
	.def	__Z20InitActorExtra4Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra4Noises:
LFB27:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z20InitActorExtra5Noises
	.def	__Z20InitActorExtra5Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra5Noises:
LFB28:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z20InitActorExtra6Noises
	.def	__Z20InitActorExtra6Noises;	.scl	2;	.type	32;	.endef
__Z20InitActorExtra6Noises:
LFB29:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z12DoActorPauses
	.def	__Z12DoActorPauses;	.scl	2;	.type	32;	.endef
__Z12DoActorPauses:
LFB30:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %edx
	subw	$6, 282(%edx)
	jns	L80
	andl	$-5, 68(%edx)
	movl	$__Z13DoActorDecides, 36(%edx)
L80:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z14InitActorPauses
	.def	__Z14InitActorPauses;	.scl	2;	.type	32;	.endef
__Z14InitActorPauses:
LFB32:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %edx
	movl	$__Z12DoActorPauses, 36(%edx)
	movl	_User(,%eax,4), %edx
	subw	$6, 282(%edx)
	jns	L82
	andl	$-5, 68(%edx)
	movl	$__Z13DoActorDecides, 36(%edx)
L82:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__ZL16CompareBreakInfoPKvS0_.lto_priv.0
	.def	__ZL16CompareBreakInfoPKvS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16CompareBreakInfoPKvS0_.lto_priv.0:
LFB33:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movswl	(%eax), %eax
	movswl	(%edx), %edx
	subl	%edx, %eax
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z18GetBunnyJumpHeightss
	.def	__Z18GetBunnyJumpHeightss;	.scl	2;	.type	32;	.endef
__Z18GetBunnyJumpHeightss:
LFB34:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movzwl	8(%esp), %eax
	movl	%eax, %ecx
	negw	%cx
	cmovs	%eax, %ecx
	movswl	12(%esp), %eax
	movswl	%cx, %ecx
	leal	(%eax,%eax,2), %edx
	movl	%ecx, %eax
	leal	(%edx,%edx), %ebx
	cltd
	idivl	%ebx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	imull	%ecx, %eax
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	sarl	$9, %eax
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z18PickBunnyJumpSpeedsi
	.def	__Z18PickBunnyJumpSpeedsi;	.scl	2;	.type	32;	.endef
__Z18PickBunnyJumpSpeedsi:
LFB35:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movswl	24(%esp), %eax
	movl	%esi, 8(%esp)
	movl	_User(,%eax,4), %ecx
	movl	28(%esp), %eax
	.cfi_offset 6, -16
	leal	20(%eax), %esi
	movl	$589224, 92(%ecx)
	cmpl	$83, %esi
	jle	L89
	movl	%ebp, 16(%esp)
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	$-700, %ebx
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	$715827883, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L88:
	movl	%ebx, %ecx
	movl	%ebx, %ebp
	negw	%cx
	cmovs	%ebx, %ecx
	subl	$100, %ebx
	movswl	%cx, %ecx
	movl	%ecx, %eax
	imull	%edi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$3, %edx
	subl	%eax, %edx
	imull	%ecx, %edx
	leal	(%edx,%edx,2), %eax
	addl	%eax, %eax
	sarl	$9, %eax
	cmpl	%esi, %eax
	jle	L88
	movl	(%esp), %ecx
	movswl	%bp, %eax
	movw	%bp, 92(%ecx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %esi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L89:
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	movl	$-600, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z15DoDebrisCurrentP12spritetypev7
	.def	__Z15DoDebrisCurrentP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z15DoDebrisCurrentP12spritetypev7:
LFB36:
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
	movswl	24(%ebx), %edx
	movl	%ebx, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	_SectUser(,%edx,4), %edi
	imull	$-1171354717, %eax, %eax
	movswl	14(%edi), %ebp
	movzwl	18(%edi), %edx
	movl	_User(,%eax,4), %esi
	cwtl
	movswl	_sintable(%ebp,%ebp), %ecx
	addl	$512, %ebp
	sarw	$2, %dx
	andl	$2047, %ebp
	movswl	%dx, %edx
	movswl	_sintable(%ebp,%ebp), %ebp
	imull	%edx, %ecx
	movl	$6, 16(%esp)
	movl	$0, 12(%esp)
	imull	%ebp, %edx
	movswl	98(%esi), %ebp
	sarl	$14, %ecx
	movl	%ebp, 8(%esp)
	movswl	96(%esi), %ebp
	movl	$0, (%esp)
	sarl	$14, %edx
	movl	%ebp, 4(%esp)
	call	__Z11move_spritesiiiiiji
	testl	%eax, %eax
	jne	L98
L93:
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movl	108(%esi), %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
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
	.p2align 4,,10
	.p2align 3
L98:
	.cfi_restore_state
	movl	_randomseed, %eax
	movzwl	18(%edi), %ebp
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	sarw	$2, %bp
	leal	1(%eax,%edx,4), %eax
	movswl	%bp, %ebp
	movzwl	%ax, %edx
	andl	$2047, %eax
	movl	%edx, _randomseed
	movswl	14(%edi), %edx
	leal	(%edx,%eax), %ecx
	leal	512(%edx,%eax), %eax
	andl	$2047, %eax
	andl	$2047, %ecx
	movswl	_sintable(%eax,%eax), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	%ebx, %eax
	movl	$6, 16(%esp)
	movl	$0, 12(%esp)
	movswl	98(%esi), %edi
	subl	_sprite, %eax
	imull	%ebp, %ecx
	movl	%edi, 8(%esp)
	sarl	$2, %eax
	movswl	96(%esi), %edi
	imull	%ebp, %edx
	imull	$-1171354717, %eax, %eax
	movl	$0, (%esp)
	movl	%edi, 4(%esp)
	sarl	$14, %ecx
	sarl	$14, %edx
	cwtl
	call	__Z11move_spritesiiiiiji
	jmp	L93
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z13DoActorDebriss
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
__Z13DoActorDebriss:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1171354717, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %edi
	movl	_sprite, %ecx
	movl	_sector, %eax
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	movl	%eax, 28(%esp)
	addl	%ecx, %ebx
	movzwl	24(%ebx), %eax
	movw	%ax, 26(%esp)
	leal	12(%ebx), %eax
	subl	%ecx, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movzwl	82(%esi), %eax
	cmpw	$4550, %ax
	je	L100
	cmpw	$5426, %ax
	je	L101
	cmpw	$800, %ax
	je	L100
L102:
	movswl	26(%esp), %eax
	movl	28(%esp), %edx
	leal	(%eax,%eax,4), %eax
	movzwl	38(%edx,%eax,8), %eax
	testb	$1, %al
	je	L104
	testb	$8, %al
	jne	L117
	movswl	28(%ebx), %eax
	movl	_User(,%edi,4), %ecx
	movswl	_sintable(%eax,%eax), %edx
	addl	$512, %eax
	movl	%ecx, 28(%esp)
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	leal	(%edx,%edx,2), %ecx
	movl	$6, 16(%esp)
	movl	$0, 12(%esp)
	sarl	$13, %ecx
	leal	(%eax,%eax,2), %edx
	movl	28(%esp), %eax
	sarl	$13, %edx
	movswl	98(%eax), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movswl	96(%eax), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z11move_spritesiiiiiji
	movl	28(%esp), %ecx
	movl	%eax, 264(%ecx)
	testl	%eax, %eax
	jne	L118
L106:
	movswl	24(%ebx), %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L103
	cmpw	$10, 10(%eax)
	jle	L103
	movzwl	216(%esi), %eax
	movl	108(%esi), %ecx
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	addl	$48, %eax
	andl	$1023, %eax
	movw	%ax, 216(%esi)
	movswl	_sintable(%eax,%eax), %eax
	sarl	$5, %eax
	subl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	addl	$32, %esp
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
L101:
	.cfi_restore_state
	leal	108(%esi), %eax
	movl	%ecx, 20(%esp)
	movl	28(%esp), %ecx
	movl	%eax, 16(%esp)
	leal	104(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	24(%ebx), %eax
	movl	28(%esp), %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	%eax, 120(%esi)
	movswl	24(%ebx), %eax
	movl	$0, 124(%esi)
	movl	$0, 128(%esi)
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movl	20(%esp), %ecx
	movl	%eax, 116(%esi)
	jmp	L102
	.p2align 4,,10
	.p2align 3
L100:
	movl	%edi, %eax
	call	__Z10KillSprites
L103:
	addl	$32, %esp
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
L104:
	.cfi_restore_state
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	movl	108(%esi), %esi
	subl	%ecx, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 8(%ebx)
	addl	$32, %esp
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
L117:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z15DoDebrisCurrentP12spritetypev7
	jmp	L106
	.p2align 4,,10
	.p2align 3
L118:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movzwl	%cx, %eax
	andl	$2047, %ecx
	movl	%eax, _randomseed
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L106
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z9DoFireFlys
	.def	__Z9DoFireFlys;	.scl	2;	.type	32;	.endef
__Z9DoFireFlys:
LFB40:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_sprite, %eax
	movswl	24(%esp), %edi
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%eax, %ebx
	movswl	28(%ebx), %ecx
	leal	512(%ecx), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	leal	(%edx,%edx,2), %edx
	sarl	$11, %edx
	movl	%edx, (%esp)
	movswl	_sintable(%ecx,%ecx), %edx
	leal	(%edx,%edx,2), %ecx
	leal	18(%ebx), %edx
	subl	%eax, %edx
	sarl	$11, %ecx
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%esp), %edx
	movb	$64, 18(%ebx)
	call	__Z10move_actorsiii.constprop.0
	movl	_sprite, %edi
	testl	%eax, %eax
	jne	L120
	leal	28(%ebx), %edx
	movswl	28(%ebx), %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	addl	$1024, %ecx
	mull	%ebp
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
L120:
	movzwl	216(%esi), %eax
	leal	8(%ebx), %edx
	subl	%edi, %edx
	addl	$12, %eax
	andl	$2047, %eax
	movw	%ax, 216(%esi)
	movswl	_sintable(%eax,%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	sarl	%ecx
	addl	256(%esi), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	addl	$4, %esp
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
LFE40:
	.p2align 4
	.globl	__Z12DoActorSlides
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
__Z12DoActorSlides:
LFB41:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movswl	228(%ebx), %eax
	movl	232(%ebx), %edx
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
	movl	%eax, %edx
	testl	%eax, %eax
	je	L126
	movswl	236(%ebx), %eax
	leal	0(,%eax,4), %ecx
	subl	%ecx, %eax
	movl	232(%ebx), %ecx
	leal	(%ecx,%eax,2), %eax
	movl	%eax, 232(%ebx)
	cmpl	$19, %eax
	jg	L122
L126:
	andl	$-2097153, 68(%ebx)
L122:
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z21DoGenerateSewerDebriss
	.def	__Z21DoGenerateSewerDebriss;	.scl	2;	.type	32;	.endef
__Z21DoGenerateSewerDebriss:
LFB42:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movswl	48(%esp), %ebx
	movl	_User(,%ebx,4), %edx
	movl	76(%edx), %eax
	subl	$6, %eax
	testl	%eax, %eax
	jle	L128
	movl	%eax, 76(%edx)
	xorl	%eax, %eax
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L128:
	.cfi_restore_state
	movl	%esi, 32(%esp)
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	216(%edx), %ecx
	movl	%ecx, 76(%edx)
	movl	(%eax), %edx
	movzwl	24(%eax), %ebp
	movswl	28(%eax), %esi
	movl	8(%eax), %edi
	movl	4(%eax), %ecx
	movl	%edx, 24(%esp)
	movl	_randomseed, %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 8(%esp)
	movl	24(%esp), %ecx
	leal	(%eax,%eax,4), %edx
	movl	%edi, 12(%esp)
	leal	1(%eax,%edx,4), %eax
	movswl	%bp, %edx
	movl	%ecx, 4(%esp)
	movzwl	%ax, %eax
	movl	%edx, (%esp)
	xorl	%edx, %edx
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$3, %eax
	movl	$200, 20(%esp)
	movl	__ZZ21DoGenerateSewerDebrissE6Debris(,%eax,4), %eax
	addl	$1, _krandcount
	movl	%eax, %ecx
	movl	$3, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	%ebx, %eax
	call	__Z8SetOwnerss
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	40(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z16KeepActorOnFloors
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
__Z16KeepActorOnFloors:
LFB43:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	_sector, %edx
	movl	_sprite, %ecx
	movswl	76(%esp), %eax
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	movl	%ebx, 56(%esp)
	movl	%esi, 60(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_User(,%eax,4), %esi
	movl	%eax, 36(%esp)
	movl	140(%esi), %ebx
	movl	%edx, 24(%esp)
	movzwl	24(%ebx), %eax
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 28(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-9, 12(%ebx)
	movl	68(%esi), %eax
	movl	%eax, 20(%esp)
	testb	$96, %al
	jne	L131
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	movl	%edx, %ebp
	movl	120(%esi), %edx
	movl	%edx, 32(%esp)
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movl	32(%esp), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	%edx, %edi
	shrl	$5, %edi
	testl	%ecx, %ecx
	je	L133
	movl	24(%esp), %edx
	subl	%edx, %ecx
	sarl	$3, %ecx
	imull	$-858993459, %ecx, %ecx
	movl	_SectUser(,%ecx,4), %eax
	testl	%eax, %eax
	je	L133
	movswl	10(%eax), %ecx
	movswl	28(%esp), %eax
	leal	(%eax,%eax,4), %eax
	movl	%ecx, 24(%esp)
	testb	$1, 38(%edx,%eax,8)
	je	L133
	cmpl	$35, %ecx
	jle	L133
	movl	40(%esi), %eax
	testl	%eax, %eax
	je	L133
	movl	20(%eax), %edx
	testl	%edx, %edx
	je	L133
	movl	20(%esi), %ecx
	movl	%ecx, 28(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 32(%esp)
	testb	$4, 22(%esp)
	je	L164
	movl	32(%esp), %ecx
	cmpl	%ecx, 28(%esp)
	je	L138
	movl	28(%esp), %ecx
	cmpl	%ecx, %edx
	je	L139
	cmpl	%ecx, (%eax)
	je	L139
L140:
	movl	20(%esp), %eax
	andl	$-262145, %eax
	movl	%eax, 68(%esi)
	addl	$1, _spritechanged(,%ebp,4)
	andw	$-129, 12(%ebx)
	.p2align 4
	.p2align 3
L136:
	movl	108(%esi), %eax
	addl	$1, _spritechanged(,%edi,4)
	movl	%eax, 8(%ebx)
	movl	%eax, 64(%esi)
	movl	68(%esp), %ebp
	.cfi_restore 5
L131:
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	movl	64(%esp), %edi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L133:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %eax
	andl	$-262145, %eax
	movl	%eax, 68(%esi)
	addl	$1, _spritechanged(,%ebp,4)
	andw	$-129, 12(%ebx)
	testb	$1, 68(%esi)
	jne	L136
	leal	40(%esp), %ebp
	movl	(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	%ebp, 16(%esp)
	leal	44(%esp), %ebp
	movl	%ebp, 12(%esp)
	leal	48(%esp), %ebp
	movl	%ebp, 8(%esp)
	leal	52(%esp), %ebp
	movl	%ebp, 4(%esp)
	movswl	24(%ebx), %ebp
	movl	%ebp, (%esp)
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	movl	44(%esp), %eax
	addl	$1, _spritechanged(,%edi,4)
	movl	%eax, 8(%ebx)
	movl	%eax, 64(%esi)
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	movl	64(%esp), %edi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L138:
	.cfi_restore_state
	movl	36(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L139:
	movl	24(%esp), %ecx
	movl	108(%esi), %eax
	addl	$1, _spritechanged(,%edi,4)
	sall	$8, %ecx
	subl	%ecx, %eax
	movl	%eax, 8(%ebx)
	movl	%eax, 64(%esi)
	movl	68(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L131
	.p2align 4,,10
	.p2align 3
L164:
	.cfi_restore_state
	movl	28(%esp), %eax
	cmpl	%eax, %edx
	je	L142
	cmpl	32(%esp), %eax
	jne	L140
L142:
	movl	36(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	24(%esp), %ecx
	movl	108(%esi), %eax
	addl	$1, _spritechanged(,%edi,4)
	sall	$8, %ecx
	subl	%ecx, %eax
	movl	%eax, 8(%ebx)
	movl	%eax, 64(%esi)
	orl	$262144, 68(%esi)
	addl	$1, _spritechanged(,%ebp,4)
	orw	$128, 12(%ebx)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L131
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z16DoActorBeginJumps
	.def	__Z16DoActorBeginJumps;	.scl	2;	.type	32;	.endef
__Z16DoActorBeginJumps:
LFB44:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %ecx
	movl	_User(,%ecx,4), %ebx
	movl	68(%ebx), %edx
	movl	%edx, %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%ebx)
	movl	$8, %eax
	movw	%ax, 94(%ebx)
	movl	40(%ebx), %eax
	testl	%eax, %eax
	je	L166
	andb	$1, %dh
	je	L167
	movl	60(%eax), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L166:
	movl	$0, 32(%ebx)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L167:
	.cfi_restore_state
	movl	8(%eax), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$0, 32(%ebx)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z10DoActorDiess
	.def	__Z10DoActorDiess;	.scl	2;	.type	32;	.endef
__Z10DoActorDiess:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$3, %edx
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
	movl	_sprite, %ebp
	movswl	52(%esp), %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %esi
	leal	0(%ebp,%eax), %ebx
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	call	__Z18change_sprite_statss
	movl	68(%esi), %eax
	leal	42(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%ebp, 16(%esp)
	andl	$-97, %eax
	orb	$1, %ah
	movl	%eax, 68(%esi)
	movl	$10240, %eax
	movw	%ax, 98(%esi)
	movl	%edx, %eax
	mull	%ecx
	leal	12(%ebx), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ebp, %edx
	orw	$8192, 42(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%ebx)
	cmpw	$0, 56(%esp)
	js	L369
	movswl	56(%esp), %eax
	movl	%eax, 20(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, %ecx
	movzwl	82(%eax), %eax
	cmpw	$2146, %ax
	je	L178
	jle	L370
	cmpw	$4096, %ax
	je	L184
	jg	L185
	cmpw	$2147, %ax
	jne	L371
	movl	_krandcount, %eax
	movl	%eax, 16(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L211
	movl	%eax, %ecx
	sall	$14, %ecx
	cmpl	$537936224, %ecx
	ja	L211
L212:
	movl	_User(,%edi,4), %edx
	testl	%edx, %edx
	je	L213
	movl	28(%esi), %ecx
	movl	$0, 76(%edx)
	movl	%ecx, 24(%edx)
	movl	%ecx, 16(%edx)
	movswl	(%ecx), %edx
	leal	_picanm(%edx,%edx,4), %ecx
	movzbl	3(%ecx), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L213
	movl	12(%esp), %ecx
	andl	$63, %edx
	movb	%dl, 3(%ecx)
L213:
	xorl	%edx, %edx
	leal	(%eax,%eax,4), %ecx
	movw	%dx, 80(%esi)
	movzwl	82(%esi), %edx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %ecx
	cmpw	$1580, %dx
	je	L244
	cmpw	$4320, %dx
	je	L244
	cmpl	$65535, %ecx
	je	L218
	movl	%ecx, %eax
	movl	$1677747263, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$21, %edx
	leal	100(%edx), %eax
	leal	32(%ebx), %edx
	movw	%ax, 12(%esp)
	subl	%ebp, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	16(%esp), %eax
	addl	$3, %eax
	movl	%eax, 16(%esp)
	leal	(%ecx,%ecx,4), %eax
	shrl	$5, %edx
	leal	1(%ecx,%eax,4), %ecx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-349, %eax
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L217
L232:
	movl	%ecx, %eax
	movl	$524296093, %edx
	sall	$14, %eax
	mull	%edx
	movl	$-100, %eax
	shrl	$19, %edx
	subl	%edx, %eax
	jmp	L217
	.p2align 4,,10
	.p2align 3
L370:
	cmpw	$1400, %ax
	je	L180
	jg	L181
	cmpw	$1210, %ax
	je	L182
	cmpw	$1367, %ax
	jne	L183
	.p2align 4
	.p2align 3
L182:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L202
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L202
	andl	$63, %eax
	movb	%al, 3(%edx)
L202:
	xorl	%eax, %eax
	movw	%ax, 80(%esi)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L369:
	cmpw	$-9, 56(%esp)
	je	L174
	cmpw	$-8, 56(%esp)
	jne	L282
L174:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L177
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L177
	andl	$63, %eax
	movb	%al, 3(%edx)
L177:
	xorl	%eax, %eax
	movw	%ax, 80(%esi)
L282:
	addl	$32, %esp
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
L180:
	.cfi_restore_state
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L187
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L187
	andl	$63, %eax
	movb	%al, 3(%edx)
L187:
	leal	32(%ebx), %edx
	xorl	%eax, %eax
	movl	$-1171354717, %edi
	subl	%ebp, %edx
	movw	%ax, 80(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%ebp, %edx
	salw	32(%ebx)
	movl	%edx, %eax
	movl	$0, 36(%esi)
	movswl	28(%ebx), %ecx
	mull	%edi
	addl	$1024, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	.p2align 4
	.p2align 3
L188:
	movzwl	82(%esi), %eax
	cmpw	$4320, %ax
	je	L229
	jg	L230
	cmpw	$1210, %ax
	je	L229
	cmpw	$1400, %ax
	je	L229
L221:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movw	%cx, 82(%esi)
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
	.p2align 4,,10
	.p2align 3
L185:
	.cfi_restore_state
	cmpw	$4277, %ax
	je	L182
	cmpw	$4320, %ax
	je	L182
L183:
	movzwl	82(%esi), %edx
	cmpw	$817, %dx
	je	L219
	cmpw	$820, %dx
	je	L219
	movl	_krandcount, %eax
	movl	_randomseed, %edx
	addl	$1, %eax
	leal	(%edx,%edx,4), %ecx
	movl	%eax, 16(%esp)
	leal	1(%edx,%ecx,4), %edx
	movl	%eax, _krandcount
	imull	$44, 20(%esp), %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	movl	%eax, 20(%esp)
	cmpl	$65535, %edx
	je	L222
	movl	%edx, %eax
	movl	%ebx, 24(%esp)
	sall	$14, %eax
	cmpl	$752681224, %eax
	ja	L222
L223:
	movl	16(%esp), %eax
	addl	$1, %eax
	movl	%eax, _krandcount
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L224
	movl	%ecx, %eax
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L224
L225:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L226
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	shrb	$6, %dl
	je	L226
	movl	12(%esp), %edx
	andl	$63, %eax
	movb	%al, 3(%edx)
L226:
	xorl	%eax, %eax
	movl	$0, 36(%esi)
	movw	%ax, 80(%esi)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movl	$699, %eax
	movzwl	%cx, %ecx
	movw	%ax, 12(%esp)
	cmpl	$65535, %ecx
	je	L227
	movl	%ecx, %eax
	movl	$-939472145, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$21, %edx
	leal	300(%edx), %eax
	movw	%ax, 12(%esp)
L227:
	leal	32(%ebx), %eax
	movl	$-1171354717, %edx
	subl	%ebp, %eax
	mull	%edx
	movzwl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%ebx)
	movl	16(%esp), %eax
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$-649, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L228
	movl	$-1358908765, %ecx
	sall	$14, %eax
	mull	%ecx
	movl	$-300, %ecx
	shrl	$21, %edx
	subl	%edx, %ecx
L228:
	movw	%cx, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	20(%esp), %eax
	movl	24(%esp), %edi
	movzwl	28(%ebp,%eax), %eax
	movw	%ax, 28(%edi)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L244:
	cmpl	$65535, %ecx
	je	L216
	movl	%ecx, %eax
	movl	$1677747263, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$22, %edx
	leal	75(%edx), %eax
	leal	32(%ebx), %edx
	movw	%ax, 12(%esp)
	subl	%ebp, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	16(%esp), %eax
	addl	$3, %eax
	movl	%eax, 16(%esp)
	leal	(%ecx,%ecx,4), %eax
	shrl	$5, %edx
	leal	1(%ecx,%eax,4), %ecx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-249, %eax
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L217
L231:
	movl	%ecx, %eax
	movl	$629155253, %edx
	sall	$14, %eax
	mull	%edx
	movl	$-100, %eax
	shrl	$20, %edx
	subl	%edx, %eax
L217:
	movzwl	12(%esp), %edx
	movl	%ecx, _randomseed
	movw	%dx, 32(%ebx)
	movl	16(%esp), %edx
	movl	%edx, _krandcount
L210:
	movw	%ax, 92(%esi)
	movl	%edi, (%esp)
	movl	$-1171354717, %edi
	call	__Z16DoActorBeginJumps
	movl	$0, 36(%esi)
	movl	200(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	%ebp, %edx
	leal	1024(%eax), %ecx
	movl	%edx, %eax
	andl	$2047, %ecx
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L230:
	cmpw	$5426, %ax
	jne	L221
L229:
	movl	8(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-9, 12(%ebx)
	jmp	L221
	.p2align 4,,10
	.p2align 3
L184:
	imull	$44, 20(%esp), %eax
	movl	%eax, 24(%esp)
	addl	%ebp, %eax
	movl	%eax, 20(%esp)
	cmpw	$4096, 82(%esi)
	jne	L189
	cmpb	$0, 273(%ecx)
	jne	L372
	movl	_krandcount, %eax
	addl	$1, %eax
	movl	%eax, 28(%esp)
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L194
	movl	%ecx, %eax
	movl	%ebx, %ebp
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L194
L195:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L196
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	shrb	$6, %dl
	je	L196
	movl	12(%esp), %edx
	andl	$63, %eax
	movb	%al, 3(%edx)
L196:
	xorl	%eax, %eax
	movl	$0, 36(%esi)
	movw	%ax, 80(%esi)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movl	$399, %eax
	movzwl	%cx, %ecx
	movw	%ax, 12(%esp)
	cmpl	$65535, %ecx
	je	L197
	movl	%ecx, %eax
	movl	$1677747263, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$21, %edx
	leal	200(%edx), %eax
	movw	%ax, 12(%esp)
L197:
	leal	32(%ebx), %eax
	movl	$-1171354717, %edx
	subl	16(%esp), %eax
	mull	%edx
	movzwl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 32(%ebx)
	movl	28(%esp), %eax
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$-449, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L198
	movl	$524296093, %ecx
	sall	$14, %eax
	mull	%ecx
	movl	$-200, %ecx
	shrl	$19, %edx
	subl	%edx, %ecx
L198:
	movw	%cx, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	20(%esp), %eax
	movzwl	28(%eax), %eax
	movw	%ax, 28(%ebp)
	jmp	L192
	.p2align 4,,10
	.p2align 3
L178:
	movl	_krandcount, %eax
	movl	%eax, 16(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L203
	movl	%ecx, %eax
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L203
L204:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L205
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, %edx
	shrb	$6, %dl
	je	L205
	movl	12(%esp), %edx
	andl	$63, %eax
	movb	%al, 3(%edx)
L205:
	xorl	%eax, %eax
	leal	32(%ebx), %edx
	movw	%ax, 80(%esi)
	movzwl	82(%esi), %eax
	subl	%ebp, %edx
	movw	%ax, 12(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 20(%esp)
	movl	16(%esp), %eax
	addl	$2, %eax
	movl	%eax, 16(%esp)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	12(%esp), %eax
	movzwl	%cx, %ecx
	cmpw	$1580, %ax
	je	L243
	cmpw	$4320, %ax
	je	L243
	movl	20(%esp), %eax
	movl	%ecx, _randomseed
	movl	%eax, _spritechanged(,%edx,4)
	xorl	%eax, %eax
	movw	%ax, 32(%ebx)
	movl	16(%esp), %eax
	movl	%eax, _krandcount
	movl	$-34, %eax
	cmpl	$65535, %ecx
	je	L210
	movl	$209718403, %eax
	sall	$14, %ecx
	mull	%ecx
	movl	$-10, %eax
	shrl	$21, %edx
	subl	%edx, %eax
	jmp	L210
	.p2align 4,,10
	.p2align 3
L243:
	movl	20(%esp), %eax
	movl	%ecx, _randomseed
	movl	%eax, _spritechanged(,%edx,4)
	movl	16(%esp), %eax
	salw	32(%ebx)
	movl	%eax, _krandcount
	movl	$-349, %eax
	cmpl	$65535, %ecx
	je	L210
	movl	$524296093, %eax
	sall	$14, %ecx
	mull	%ecx
	movl	$-100, %eax
	shrl	$19, %edx
	subl	%edx, %eax
	jmp	L210
	.p2align 4,,10
	.p2align 3
L181:
	cmpw	$1580, %ax
	je	L182
	cmpw	$2049, %ax
	jne	L183
	jmp	L182
	.p2align 4,,10
	.p2align 3
L203:
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
	jmp	L204
	.p2align 4,,10
	.p2align 3
L211:
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
	jmp	L212
	.p2align 4,,10
	.p2align 3
L189:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L199
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L199
L200:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L201
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L201
	andl	$63, %eax
	movb	%al, 3(%edx)
L201:
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movl	%ebx, %ebp
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%ax, 32(%ebx)
	movw	%dx, 92(%esi)
	movl	%edi, (%esp)
	call	__Z16DoActorBeginJumps
L192:
	xorl	%eax, %eax
	movl	$0, 36(%esi)
	movw	%ax, 80(%esi)
	movl	20(%esp), %eax
	movzwl	28(%eax), %eax
	movw	%ax, 28(%ebp)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L372:
	movl	%ebx, 4(%esp)
	movl	%eax, %ebp
	movl	%eax, (%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	movl	%ebp, (%esp)
	leal	8(%ebx), %ebp
	movl	%ebx, 4(%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%eax, 16(%esp)
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
	movl	16(%esp), %ecx
	movl	$430, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L366
	movl	$0, 76(%eax)
	movl	$_s_NinjaDieSliced, 24(%eax)
	movl	$_s_NinjaDieSliced, 16(%eax)
	movswl	_s_NinjaDieSliced, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L366
	andl	$63, %eax
	movb	%al, 3(%edx)
L366:
	movl	_sprite, %eax
	movl	24(%esp), %edi
	movl	12(%esp), %ebp
	addl	%eax, %edi
	movl	%edi, 20(%esp)
	addl	%eax, %ebp
	jmp	L192
	.p2align 4,,10
	.p2align 3
L216:
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$65516, %ecx
	subl	%ebp, %edx
	mull	%edx
	movl	16(%esp), %eax
	addl	$3, %eax
	shrl	$5, %edx
	movl	%eax, 16(%esp)
	addl	$1, _spritechanged(,%edx,4)
	movl	$174, %edx
	movw	%dx, 12(%esp)
	jmp	L231
	.p2align 4,,10
	.p2align 3
L199:
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
	jmp	L200
	.p2align 4,,10
	.p2align 3
L219:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L221
	movl	28(%esi), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L188
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L188
	.p2align 4,,10
	.p2align 3
L371:
	cmpw	$3780, %ax
	jne	L183
	jmp	L182
	.p2align 4,,10
	.p2align 3
L224:
	movl	8(%esp), %eax
	movl	$-1171354717, %edx
	subl	%ebp, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
	jmp	L225
	.p2align 4,,10
	.p2align 3
L222:
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	addl	%ebp, %eax
	movl	%eax, (%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	movl	_sprite, %ebp
	movl	12(%esp), %eax
	movl	_randomseed, %edx
	addl	%ebp, %eax
	movl	%eax, 24(%esp)
	movl	_krandcount, %eax
	movl	%eax, 16(%esp)
	jmp	L223
	.p2align 4,,10
	.p2align 3
L218:
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$65516, %ecx
	subl	%ebp, %edx
	mull	%edx
	movl	16(%esp), %eax
	addl	$3, %eax
	movl	%eax, 16(%esp)
	shrl	$5, %edx
	movl	$299, %eax
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%esp)
	jmp	L232
	.p2align 4,,10
	.p2align 3
L194:
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18InitPlasmaFountainP12spritetypev7S0_
	movl	_sprite, %eax
	movl	24(%esp), %ecx
	movl	12(%esp), %ebp
	addl	%eax, %ecx
	movl	%eax, 16(%esp)
	addl	%eax, %ebp
	movl	_krandcount, %eax
	movl	%ecx, 20(%esp)
	movl	_randomseed, %ecx
	movl	%eax, 28(%esp)
	jmp	L195
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z19DoActorSectorDamages
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
__Z19DoActorSectorDamages:
LFB48:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movswl	48(%esp), %ecx
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	_User(,%ecx,4), %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movzwl	84(%eax), %esi
	testw	%si, %si
	jle	L386
	imull	$44, %ecx, %edx
	addl	_sprite, %edx
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movswl	24(%edx), %edi
	movl	_SectUser(,%edi,4), %ebx
	movl	%ebx, 8(%esp)
	testl	%ebx, %ebx
	je	L376
	cmpw	$0, 20(%ebx)
	jne	L406
L376:
	movl	120(%eax), %esi
	testl	%esi, %esi
	je	L400
	movl	116(%eax), %ebx
	testl	%ebx, %ebx
	je	L400
	movl	108(%eax), %ebx
	subl	104(%eax), %ebx
	movl	%ebx, %esi
	negl	%esi
	cmovs	%ebx, %esi
	movzbl	21(%edx), %ebx
	movswl	14(%edx), %edx
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %bl
	je	L407
	imull	%edx, %ebx
	leal	(%ebx,%ebx), %edx
L388:
	cmpl	%edx, %esi
	jl	L408
L400:
	movl	36(%esp), %edi
	.cfi_restore 7
L386:
	xorl	%ebx, %ebx
L373:
	movl	%ebx, %eax
	movl	32(%esp), %esi
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L406:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	$64, 4(%ebx)
	je	L377
L405:
	movzwl	182(%eax), %edi
	subw	$3, %di
	js	L378
	movw	%di, 182(%eax)
	jmp	L376
	.p2align 4,,10
	.p2align 3
L377:
	movl	_sector, %ebx
	leal	(%edi,%edi,4), %edi
	leal	(%ebx,%edi,8), %edi
	movl	%edi, 12(%esp)
	movl	8(%edx), %edi
	testb	$-128, 12(%edx)
	je	L381
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movzbl	21(%edx), %ebx
	movb	%bl, 19(%esp)
	movswl	14(%edx), %ebx
	movswl	_tilesiz+2(,%ebx,4), %ebp
	movl	%ebx, 20(%esp)
	movl	%ebp, 24(%esp)
	cmpb	$64, 19(%esp)
	je	L409
	movzbl	19(%esp), %ebp
	movl	24(%esp), %ebx
	imull	%ebp, %ebx
	leal	(%ebx,%ebx), %ebp
L383:
	movl	20(%esp), %ebx
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	sall	$8, %ebx
	subl	%ebx, %ebp
	addl	%ebp, %edi
	movl	40(%esp), %ebp
	.cfi_restore 5
L381:
	movl	12(%esp), %ebx
	cmpl	8(%ebx), %edi
	jl	L376
	jmp	L405
	.p2align 4,,10
	.p2align 3
L408:
	xorl	%edx, %edx
	movl	%ecx, 8(%esp)
	movw	%dx, 84(%eax)
	movl	%ecx, (%esp)
	movl	$-9, 4(%esp)
	call	__Z10SpawnShrapss
	movl	8(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	L389
L380:
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$1, %ebx
	jmp	L373
	.p2align 4,,10
	.p2align 3
L407:
	.cfi_restore_state
	sall	$7, %edx
	jmp	L388
	.p2align 4,,10
	.p2align 3
L378:
	movl	$60, %edi
	movw	%di, 182(%eax)
	movl	8(%esp), %edi
	subw	20(%edi), %si
	movw	%si, 84(%eax)
	testw	%si, %si
	jg	L376
	cmpw	$1, _gNet+12
	je	L379
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	call	__Z21UpdateSinglePlayKillss.part.0
	movl	8(%esp), %ecx
L379:
	movl	$-8, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z10DoActorDiess
	jmp	L380
	.p2align 4,,10
	.p2align 3
L389:
	cmpw	$1, _gNet+12
	je	L390
	movl	%ecx, %eax
	movl	%ecx, 8(%esp)
	call	__Z21UpdateSinglePlayKillss.part.0
	movl	8(%esp), %ecx
L390:
	movl	%ecx, (%esp)
	call	__Z10SetSuicides
	movl	36(%esp), %edi
	.cfi_restore 7
	jmp	L373
	.p2align 4,,10
	.p2align 3
L409:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%ebp, %ebx
	sall	$7, %ebx
	movl	%ebx, %ebp
	jmp	L383
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z15DoActorStopFalls
	.def	__Z15DoActorStopFalls;	.scl	2;	.type	32;	.endef
__Z15DoActorStopFalls:
LFB50:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %ecx
	movswl	48(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	%eax, 12(%esp)
	movl	140(%ebx), %esi
	movl	108(%ebx), %ebp
	leal	8(%esi), %eax
	movl	%eax, %edx
	movl	%eax, 16(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edx, 20(%esp)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movl	%ebp, 8(%esi)
	movl	%edx, %eax
	andl	$-97, 68(%ebx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-9, 12(%esi)
	movl	128(%ebx), %eax
	testl	%eax, %eax
	je	L411
	testb	$32, 12(%eax)
	je	L421
L411:
	movl	40(%ebx), %edi
	testl	%edi, %edi
	je	L412
	movl	%esi, %edx
	movl	$-1171354717, %ebp
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	leal	4(%esi), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	movl	%edx, 24(%esp)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%edx, %ebp
	shrl	$5, %ebp
	testb	$1, 69(%ebx)
	je	L413
	movl	56(%edi), %edx
	movl	12(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	24(%esp), %ecx
	movl	20(%esp), %edi
	movl	%esi, %edx
	movl	$73, %eax
	addl	$1, _spritechanged(,%edi,4)
	addl	$1, _spritechanged(,%ebp,4)
	addl	$1, _spritechanged(,%ecx,4)
	movl	16(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	movl	8(%esp), %ecx
	call	__Z9PlaySoundiPiS_S_i
L412:
	addl	$28, %esp
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
L413:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	8(%esp), %ecx
	movl	%esi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	24(%esp), %eax
	addl	$1, _spritechanged(,%ebp,4)
	addl	$1, _spritechanged(,%eax,4)
	movl	16(%esp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	$74, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	40(%ebx), %eax
	movl	12(%esp), %edi
	movl	4(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	cmpw	$0, 218(%ebx)
	js	L412
	cmpw	$800, 92(%ebx)
	jle	L412
	movl	40(%ebx), %eax
	movl	32(%eax), %ecx
	testl	%ecx, %ecx
	je	L412
	movl	$80, %edx
	movw	%dx, 216(%ebx)
	movl	32(%eax), %edx
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L412
	.p2align 4,,10
	.p2align 3
L421:
	movswl	28(%esi), %eax
	addl	$1, _krandcount
	movl	%eax, 8(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebp
	leal	28(%esi), %edx
	subl	%ecx, %edx
	movzwl	%bp, %ebp
	movl	%edx, %eax
	movl	%ebp, _randomseed
	sarl	$8, %ebp
	mull	%edi
	movl	8(%esp), %eax
	leal	1024(%eax,%ebp), %eax
	andl	$2047, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
	movl	12(%esp), %eax
	movl	$-350, %esi
	movw	%si, 92(%ebx)
	movl	%eax, 48(%esp)
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
	jmp	__Z16DoActorBeginJumps
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z11DoActorFalls
	.def	__Z11DoActorFalls;	.scl	2;	.type	32;	.endef
__Z11DoActorFalls:
LFB51:
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
	movswl	20(%esp), %edi
	movl	_User(,%edi,4), %ebx
	movzwl	94(%ebx), %ecx
	movzwl	92(%ebx), %eax
	movl	140(%ebx), %esi
	leal	(%ecx,%ecx,2), %ecx
	leal	(%eax,%ecx,2), %ecx
	leal	8(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movw	%cx, 92(%ebx)
	movswl	%cx, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esi), %eax
	leal	(%ecx,%ecx,2), %edx
	leal	(%eax,%edx,2), %eax
	movl	%eax, 8(%esi)
	cmpl	%eax, 108(%ebx)
	jl	L425
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
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
L425:
	.cfi_restore_state
	movl	%edi, 20(%esp)
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
	jmp	__Z15DoActorStopFalls
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z16DoActorBeginFalls
	.def	__Z16DoActorBeginFalls;	.scl	2;	.type	32;	.endef
__Z16DoActorBeginFalls:
LFB52:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	68(%ebx), %edx
	movl	%edx, %eax
	andl	$-33, %eax
	orl	$64, %eax
	movl	%eax, 68(%ebx)
	movl	$8, %eax
	movw	%ax, 94(%ebx)
	movl	40(%ebx), %eax
	testl	%eax, %eax
	je	L427
	andb	$1, %dh
	jne	L437
	movl	12(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L429:
	movl	32(%ebx), %edx
	testl	%edx, %edx
	je	L427
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L427:
	movl	%esi, 12(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z11DoActorFalls
	.p2align 4,,10
	.p2align 3
L437:
	.cfi_restore_state
	movl	64(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L429
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z11DoActorJumps
	.def	__Z11DoActorJumps;	.scl	2;	.type	32;	.endef
__Z11DoActorJumps:
LFB53:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movswl	20(%esp), %edi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %ebx
	movswl	94(%ebx), %eax
	movl	140(%ebx), %esi
	leal	(%eax,%eax,2), %ecx
	movzwl	92(%ebx), %eax
	leal	(%eax,%ecx,2), %ecx
	movw	%cx, 92(%ebx)
	testw	%cx, %cx
	jg	L443
	leal	8(%esi), %eax
	movl	$-1171354717, %edx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	movswl	%cx, %ecx
	subl	_sprite, %eax
	leal	(%ecx,%ecx,2), %ecx
	movl	_sprite, %ebp
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esi), %eax
	leal	(%eax,%ecx,2), %ecx
	imull	$44, %edi, %eax
	movl	%ecx, 8(%esi)
	movswl	14(%ebp,%eax), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	sall	$8, %eax
	addl	104(%ebx), %eax
	cmpl	%ecx, %eax
	jg	L444
	movl	12(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	(%esp), %ebx
	xorl	%eax, %eax
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L444:
	.cfi_restore_state
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	negw	92(%ebx)
	movl	12(%esp), %ebp
	.cfi_restore 5
	movl	%edi, 20(%esp)
L442:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z16DoActorBeginFalls
	.p2align 4,,10
	.p2align 3
L443:
	.cfi_restore_state
	movl	%edi, 20(%esp)
	jmp	L442
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z9NullBunnys
	.def	__Z9NullBunnys;	.scl	2;	.type	32;	.endef
__Z9NullBunnys:
LFB54:
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
	movl	68(%esi), %eax
	testb	$96, %al
	jne	L459
L446:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
	movl	68(%esi), %eax
	testl	$2097152, %eax
	jne	L460
L450:
	movl	%ebx, (%esp)
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
L459:
	.cfi_restore_state
	movl	%ebx, (%esp)
	testb	$32, %al
	jne	L461
	call	__Z11DoActorFalls
L448:
	movl	68(%esi), %eax
	testb	$96, %al
	je	L446
	testl	$2097152, %eax
	je	L450
L460:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	movl	%ebx, (%esp)
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
L461:
	.cfi_restore_state
	call	__Z11DoActorJumps
	jmp	L448
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z13InitActorDucks
	.def	__Z13InitActorDucks;	.scl	2;	.type	32;	.endef
__Z13InitActorDucks:
LFB55:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, 8(%esp)
	.cfi_offset 6, -12
	movswl	20(%esp), %esi
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	_User(,%esi,4), %ebx
	movl	40(%ebx), %eax
	movl	124(%eax), %edx
	testl	%edx, %edx
	je	L468
	movl	%edi, 12(%esp)
	.cfi_offset 7, -8
	movl	140(%ebx), %edi
	movl	$__Z11DoActorDucks, 36(%ebx)
	movl	124(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	200(%ebx), %ecx
	movl	(%ecx), %edx
	subl	(%edi), %edx
	movl	%edx, %eax
	movl	4(%ecx), %ecx
	negl	%eax
	cmovs	%edx, %eax
	subl	4(%edi), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	movl	$190, %edx
	sarl	%eax
	subl	%eax, %ecx
	movl	$60, %eax
	cmpw	$8001, %cx
	cmovge	%edx, %eax
	movw	%ax, 216(%ebx)
	movl	%esi, (%esp)
	call	*36(%ebx)
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	xorl	%eax, %eax
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L468:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	$__Z13DoActorDecides, 36(%ebx)
	xorl	%eax, %eax
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z19InitActorMoveClosers
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
__Z19InitActorMoveClosers:
LFB57:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	40(%ecx), %edx
	movl	$__Z17DoActorMoveClosers, 36(%ecx)
	movl	4(%edx), %ebx
	movl	$__Z17DoActorMoveClosers, %edx
	cmpl	%ebx, 20(%ecx)
	je	L470
	movl	%ebx, %edx
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	movl	36(%ecx), %edx
L470:
	movl	%eax, (%esp)
	call	*%edx
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z11DoActorDucks
	.def	__Z11DoActorDucks;	.scl	2;	.type	32;	.endef
__Z11DoActorDucks:
LFB58:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	subw	$6, 216(%ecx)
	js	L477
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
L477:
	.cfi_restore_state
	movl	40(%ecx), %eax
	movl	%ecx, (%esp)
	movl	28(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	(%esp), %ecx
	xorl	%eax, %eax
	andl	$-5, 68(%ecx)
	movl	$__Z13DoActorDecides, 36(%ecx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z15DoBunnyRipHearts
	.def	__Z15DoBunnyRipHearts;	.scl	2;	.type	32;	.endef
__Z15DoBunnyRipHearts:
LFB59:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_sg_BunnyHeart, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %eax
	movl	_User(,%eax,4), %ebp
	imull	$44, %eax, %edi
	movl	200(%ebp), %ebx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$720, %eax
	addl	%esi, %edi
	movw	%ax, 216(%ebp)
	movl	4(%edi), %edx
	movl	(%edi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	movl	%eax, %ecx
	subl	%esi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
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
LFE59:
	.p2align 4
	.globl	__Z16DoBunnyStandKills
	.def	__Z16DoBunnyStandKills;	.scl	2;	.type	32;	.endef
__Z16DoBunnyStandKills:
LFB60:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movswl	32(%esp), %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	_User(,%ebx,4), %edi
	movl	%ebx, (%esp)
	call	__Z9NullBunnys
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L483
	sall	$14, %eax
	cmpl	$860053724, %eax
	ja	L483
L482:
	movzwl	216(%edi), %eax
	subl	$6, %eax
	movw	%ax, 216(%edi)
	testw	%ax, %ax
	jle	L486
L484:
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
L483:
	.cfi_restore_state
	imull	$44, %ebx, %eax
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ecx
	addl	%eax, %esi
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	_sprite, %edx
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
	movl	$424, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L482
	.p2align 4,,10
	.p2align 3
L486:
	movl	$_sg_BunnyRun, %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L484
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z12DoBunnyScrews
	.def	__Z12DoBunnyScrews;	.scl	2;	.type	32;	.endef
__Z12DoBunnyScrews:
LFB61:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movswl	32(%esp), %esi
	movl	%edi, 20(%esp)
	movl	%ebx, 12(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edi
	addl	_sprite, %edi
	movl	68(%ebx), %eax
	testb	$96, %al
	je	L488
	movl	%esi, (%esp)
	testb	$32, %al
	jne	L513
	call	__Z11DoActorFalls
L490:
	movl	68(%ebx), %eax
	testl	$2097152, %eax
	jne	L502
L491:
	testb	$96, %al
	jne	L492
	.p2align 4
	.p2align 3
L503:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
L492:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L493
	sall	$14, %eax
	cmpl	$1064061474, %eax
	ja	L493
L494:
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	cmpw	$0, 280(%ebx)
	jne	L495
	cmpb	$16, 262(%ebx)
	je	L514
L497:
	testw	%ax, %ax
	jle	L500
L507:
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
L488:
	.cfi_restore_state
	testl	$2097152, %eax
	je	L503
L502:
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	movl	68(%ebx), %eax
	jmp	L491
	.p2align 4,,10
	.p2align 3
L513:
	call	__Z11DoActorJumps
	jmp	L490
	.p2align 4,,10
	.p2align 3
L495:
	testw	%ax, %ax
	jg	L504
	cmpb	$16, 262(%ebx)
	je	L501
L500:
	leal	12(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_BunnyRun, %edx
	andw	$32767, 12(%edi)
	movw	%ax, 280(%ebx)
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L507
	.p2align 4,,10
	.p2align 3
L493:
	cmpb	$0, _gs+40
	jne	L494
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	leal	8(%edi), %ebp
	movl	$-1171354717, %ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	8(%esp), %ecx
	movl	$424, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%ebp, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L494
	.p2align 4,,10
	.p2align 3
L504:
	movl	%esi, %eax
	movl	$_sg_BunnyScrew, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movzwl	216(%ebx), %eax
	cmpb	$16, 262(%ebx)
	jne	L497
	testw	%ax, %ax
	jg	L507
	jmp	L501
	.p2align 4,,10
	.p2align 3
L514:
	testw	%ax, %ax
	jg	L504
L501:
	movl	$600, 268(%ebx)
	movl	$1, 276(%ebx)
	jmp	L500
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z16DoActorDeathMoves
	.def	__Z16DoActorDeathMoves;	.scl	2;	.type	32;	.endef
__Z16DoActorDeathMoves:
LFB62:
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
	movswl	24(%esp), %esi
	movl	_User(,%esi,4), %eax
	movl	140(%eax), %edi
	movl	68(%eax), %eax
	testb	$96, %al
	je	L516
	movl	%esi, (%esp)
	testb	$32, %al
	je	L517
	call	__Z11DoActorJumps
L516:
	movswl	28(%edi), %edx
	movswl	32(%edi), %eax
	leal	512(%edx), %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ebx
	movswl	_sintable(%edx,%edx), %ecx
	leal	18(%edi), %edx
	subl	_sprite, %edx
	imull	%eax, %ebx
	imull	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%esi, %eax
	sarl	$14, %ebx
	sarl	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movb	$48, 18(%edi)
	call	__Z10move_actorsiii.constprop.0
	movl	%esi, (%esp)
	call	__Z17DoFindGroundPoints
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
L517:
	.cfi_restore_state
	call	__Z11DoActorFalls
	jmp	L516
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z12DoActorNoisePFisEs
	.def	__Z12DoActorNoisePFisEs;	.scl	2;	.type	32;	.endef
__Z12DoActorNoisePFisEs:
LFB63:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	cmpl	$__Z21InitActorAmbientNoises, %ebx
	je	L540
	cmpl	$__Z19InitActorAlertNoises, %ebx
	je	L541
	cmpl	$__Z20InitActorAttackNoises, %ebx
	je	L542
	cmpl	$__Z18InitActorPainNoises, %ebx
	je	L543
	cmpl	$__Z17InitActorDieNoises, %ebx
	je	L544
	cmpl	$__Z20InitActorExtra1Noises, %ebx
	je	L545
	cmpl	$__Z20InitActorExtra2Noises, %ebx
	jne	L531
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$6, %edx
	call	__Z15PlaySpriteSoundsii
L528:
	cmpl	$__Z20InitActorExtra6Noises, %ebx
	je	L546
L533:
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L541:
	.cfi_restore_state
	movswl	16(%esp), %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L539
	cmpb	$0, 284(%eax)
	je	L547
L539:
	movl	4(%esp), %esi
	.cfi_restore 6
L524:
	cmpl	$__Z20InitActorExtra5Noises, %ebx
	jne	L528
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$9, %edx
	call	__Z15PlaySpriteSoundsii
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L543:
	.cfi_restore_state
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$3, %edx
	call	__Z15PlaySpriteSoundsii
	cmpl	$__Z20InitActorExtra6Noises, %ebx
	jne	L533
L546:
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$10, %edx
	call	__Z15PlaySpriteSoundsii
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L545:
	.cfi_restore_state
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$5, %edx
	call	__Z15PlaySpriteSoundsii
	jmp	L528
	.p2align 4,,10
	.p2align 3
L542:
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$2, %edx
	call	__Z15PlaySpriteSoundsii
	jmp	L524
	.p2align 4,,10
	.p2align 3
L540:
	movswl	16(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__Z15PlaySpriteSoundsii
	jmp	L524
	.p2align 4,,10
	.p2align 3
L544:
	movswl	16(%esp), %eax
	xorl	%ecx, %ecx
	movl	$4, %edx
	call	__Z15PlaySpriteSoundsii
	jmp	L528
	.p2align 4,,10
	.p2align 3
L531:
	cmpl	$__Z20InitActorExtra3Noises, %ebx
	jne	L532
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$7, %edx
	call	__Z15PlaySpriteSoundsii
	jmp	L528
L532:
	cmpl	$__Z20InitActorExtra4Noises, %ebx
	jne	L524
	movswl	16(%esp), %eax
	movl	$1, %ecx
	movl	$8, %edx
	call	__Z15PlaySpriteSoundsii
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L547:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$1, %edx
	call	__Z15PlaySpriteSoundsii
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L524
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z13DoActorAttacks
	.def	__Z13DoActorAttacks;	.scl	2;	.type	32;	.endef
__Z13DoActorAttacks:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	addl	$1, _krandcount
	movswl	36(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	44(%ebx), %eax
	movl	140(%ebx), %edi
	movl	8(%eax), %ebp
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	%cx, 0(%ebp)
	jge	L584
	.p2align 4
	.p2align 4
	.p2align 3
L549:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	0(%ebp,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L549
L552:
	movl	%esi, 4(%esp)
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	__Z12DoActorNoisePFisEs
	movl	_connecthead, %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L551
	movl	_User(,%esi,4), %eax
	movl	200(%eax), %ecx
	jmp	L555
	.p2align 5
	.p2align 4,,10
	.p2align 3
L553:
	movl	_connectpoint2(,%edx,4), %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L551
L555:
	imull	$24124, %edx, %eax
	cmpl	%ecx, _Player+352(%eax)
	jne	L553
	movswl	_Player+348(%eax), %eax
	movl	40(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	68(%ecx), %eax
	movl	%eax, 8(%esp)
	testl	%eax, %eax
	jne	L585
L556:
	movl	12(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L558
L586:
	cmpb	$0, 273(%eax)
	jne	L558
L557:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	76(%ecx), %edi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	xorl	%eax, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	sarl	$5, %edx
	andw	$1023, %dx
	cmpw	76(%ecx), %dx
	jle	L565
	.p2align 4
	.p2align 4
	.p2align 3
L564:
	addl	$1, %eax
	movswl	%ax, %ebx
	cmpw	(%edi,%ebx,2), %dx
	jg	L564
	movl	68(%ecx,%ebx,4), %eax
	movl	%eax, 8(%esp)
L565:
	movl	8(%esp), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
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
L551:
	.cfi_restore_state
	movl	40(%ebx), %ecx
	movl	$0, 12(%esp)
	movl	68(%ecx), %eax
	movl	%eax, 8(%esp)
	testl	%eax, %eax
	je	L556
L585:
	movl	200(%ebx), %eax
	movl	(%eax), %edx
	subl	(%edi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	200(%ebx), %edx
	movl	4(%edx), %edx
	subl	4(%edi), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	movzbl	18(%edi), %eax
	movl	200(%ebx), %edi
	movzbl	18(%edi), %edx
	sall	$2, %edx
	leal	400(%edx,%eax,4), %eax
	cmpl	%eax, %ebp
	jl	L557
	movl	12(%esp), %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	jne	L586
	.p2align 4
	.p2align 3
L558:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	104(%ecx), %ebp
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	xorl	%eax, %eax
	movzwl	%di, %edi
	movl	%edi, _randomseed
	sarl	$5, %edi
	andw	$1023, %di
	cmpw	104(%ecx), %di
	jle	L587
	.p2align 4
	.p2align 4
	.p2align 3
L561:
	addl	$1, %eax
	movswl	%ax, %edx
	cmpw	0(%ebp,%edx,2), %di
	jg	L561
L562:
	movl	80(%ecx,%edx,4), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z13DoActorDecides, 36(%ebx)
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
L584:
	.cfi_restore_state
	movl	%ebp, %edx
	jmp	L552
L587:
	xorl	%edx, %edx
	jmp	L562
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__Z12CanSeePlayers
	.def	__Z12CanSeePlayers;	.scl	2;	.type	32;	.endef
__Z12CanSeePlayers:
LFB66:
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
	movswl	48(%esp), %eax
	movl	_User(,%eax,4), %ecx
	movl	140(%ecx), %eax
	movswl	14(%eax), %esi
	movl	8(%eax), %ebx
	movzbl	21(%eax), %edx
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L589
	cmpb	$64, %dl
	je	L602
	imull	%edi, %edx
	addl	%edx, %edx
L591:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	addl	%esi, %edx
	subl	%edx, %ebx
	movl	%ebx, 20(%esp)
	jmp	L592
	.p2align 4,,10
	.p2align 3
L589:
	cmpb	$64, %dl
	je	L603
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L594:
	subl	%edi, %ebx
	movl	%ebx, 20(%esp)
L592:
	movl	200(%ecx), %edx
	movswl	14(%edx), %edi
	movl	8(%edx), %esi
	movswl	24(%edx), %ebp
	movzbl	21(%edx), %ebx
	movl	%esi, 24(%esp)
	movswl	_tilesiz+2(,%edi,4), %ecx
	testb	$-128, 12(%edx)
	je	L595
	cmpb	$64, %bl
	je	L604
	movl	%ebx, %esi
	movsbl	_picanm+2(%edi,%edi,4), %edi
	imull	%ecx, %esi
	sall	$8, %edi
	leal	(%edi,%esi,2), %edi
	movl	24(%esp), %esi
	subl	%edi, %esi
L598:
	imull	%ebx, %ecx
L600:
	addl	%esi, %ecx
	movl	4(%eax), %edi
	movl	(%eax), %ebx
	movl	%ebp, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	20(%esp), %ecx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	setne	%al
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
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
L595:
	.cfi_restore_state
	cmpb	$64, %bl
	je	L605
	movl	%ebx, %edi
	movl	24(%esp), %esi
	imull	%ecx, %edi
	sall	$2, %edi
	subl	%edi, %esi
	jmp	L598
	.p2align 4,,10
	.p2align 3
L603:
	sall	$8, %edi
	jmp	L594
	.p2align 4,,10
	.p2align 3
L602:
	sall	$7, %edi
	movl	%edi, %edx
	jmp	L591
	.p2align 4,,10
	.p2align 3
L604:
	movsbl	_picanm+2(%edi,%edi,4), %ebx
	movl	%ecx, %esi
	sall	$7, %esi
	sall	$8, %ebx
	addl	%esi, %ebx
	movl	24(%esp), %esi
	subl	%ebx, %esi
L597:
	sall	$6, %ecx
	jmp	L600
	.p2align 4,,10
	.p2align 3
L605:
	movl	24(%esp), %esi
	movl	%ecx, %ebx
	sall	$8, %ebx
	subl	%ebx, %esi
	jmp	L597
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z16DoPickCloseBunnys
	.def	__Z16DoPickCloseBunnys;	.scl	2;	.type	32;	.endef
__Z16DoPickCloseBunnys:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	_sprite, %eax
	movswl	88(%esp), %ecx
	imull	$44, %ecx, %edx
	leal	(%eax,%edx), %esi
	movswl	14(%esi), %ebp
	movl	8(%esi), %ebx
	movzbl	21(%esi), %edx
	movswl	_tilesiz+2(,%ebp,4), %edi
	testb	$-128, 12(%esi)
	je	L607
	cmpb	$64, %dl
	je	L638
	imull	%edi, %edx
	addl	%edx, %edx
L609:
	movsbl	_picanm+2(%ebp,%ebp,4), %edi
	sall	$8, %edi
	addl	%edi, %edx
	subl	%edx, %ebx
	movl	%ebx, 60(%esp)
	jmp	L610
	.p2align 4,,10
	.p2align 3
L607:
	cmpb	$64, %dl
	je	L639
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
L612:
	subl	%edi, %ebx
	movl	%ebx, 60(%esp)
L610:
	movzwl	_headspritestat+4, %ebx
	cmpw	$-1, %bx
	je	L613
	movl	_User(,%ecx,4), %edx
	movl	%eax, %ebp
	movl	%edx, 64(%esp)
	jmp	L614
	.p2align 4,,10
	.p2align 3
L642:
	cmpb	$64, %al
	je	L640
	movl	%eax, %edx
	movl	%eax, 56(%esp)
	imull	%ecx, %edx
	movl	%edx, %eax
	movl	52(%esp), %edx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	leal	(%edx,%eax,2), %edx
	movl	48(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 48(%esp)
L619:
	movl	56(%esp), %eax
	imull	%ecx, %eax
L621:
	movl	48(%esp), %ecx
	movswl	46(%esp), %edx
	addl	%eax, %ecx
	movl	28(%esp), %eax
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	24(%esp), %edx
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	60(%esp), %ecx
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	32(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L615
	cmpl	$1000, 40(%esp)
	je	L615
	movl	20(%esp), %eax
	cmpw	$4550, 82(%eax)
	je	L641
	.p2align 6
	.p2align 4
	.p2align 3
L615:
	cmpw	$-1, %bx
	je	L613
	movl	_sprite, %ebp
L614:
	movswl	%bx, %edi
	imull	$44, %edi, %eax
	movzwl	_nextspritestat(%edi,%edi), %ebx
	addl	%eax, %ebp
	cmpl	%ebp, %esi
	je	L615
	movl	_User(,%edi,4), %eax
	movl	%eax, 20(%esp)
	cmpw	$4550, 82(%eax)
	jne	L615
	movl	0(%ebp), %eax
	movl	(%esi), %edx
	movl	4(%ebp), %ecx
	movl	%edx, 32(%esp)
	subl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	negl	%eax
	movl	%ecx, 28(%esp)
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	movl	%edx, 24(%esp)
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 40(%esp)
	cmpl	$1000, %ecx
	jg	L615
	movzwl	24(%ebp), %eax
	movw	%ax, 46(%esp)
	movswl	14(%ebp), %eax
	movl	%eax, 52(%esp)
	movswl	_tilesiz+2(,%eax,4), %ecx
	movl	8(%ebp), %eax
	movl	%eax, 48(%esp)
	movzbl	21(%ebp), %eax
	testb	$-128, 12(%ebp)
	jne	L642
	cmpb	$64, %al
	je	L643
	movl	%eax, 56(%esp)
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	movl	48(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 48(%esp)
	jmp	L619
	.p2align 4,,10
	.p2align 3
L613:
	addl	$68, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$-1, %edi
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
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
L643:
	.cfi_restore_state
	movl	48(%esp), %edx
	movl	%ecx, %eax
	sall	$8, %eax
	subl	%eax, %edx
	movl	%edx, 48(%esp)
L618:
	movl	%ecx, %eax
	sall	$6, %eax
	jmp	L621
	.p2align 4,,10
	.p2align 3
L640:
	movl	52(%esp), %eax
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movl	%ecx, %eax
	sall	$7, %eax
	sall	$8, %edx
	addl	%edx, %eax
	movl	48(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 48(%esp)
	jmp	L618
	.p2align 4,,10
	.p2align 3
L639:
	sall	$8, %edi
	jmp	L612
	.p2align 4,,10
	.p2align 3
L638:
	sall	$7, %edi
	movl	%edi, %edx
	jmp	L609
L641:
	movl	64(%esp), %edx
	movl	%edi, %eax
	movl	%ebp, 128(%edx)
	movl	%ebp, 200(%edx)
	addl	$68, %esp
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
LFE67:
	.p2align 4
	.globl	__Z12CanHitPlayers
	.def	__Z12CanHitPlayers;	.scl	2;	.type	32;	.endef
__Z12CanHitPlayers:
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
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movswl	76(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	140(%ebp), %ebx
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %eax
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %al
	je	L655
	imull	%ecx, %eax
	addl	%eax, %eax
L646:
	movl	200(%ebp), %esi
	subl	%eax, %edx
	movl	%edx, 20(%esp)
	movl	(%esi), %ecx
	movl	4(%esi), %edx
	subl	(%ebx), %ecx
	subl	4(%ebx), %edx
	call	@getangle@8
	movswl	14(%esi), %ecx
	movl	%eax, %edx
	leal	512(%eax), %eax
	andl	$2047, %eax
	movswl	_tilesiz+2(,%ecx,4), %ecx
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 24(%esp)
	movswl	_sintable(%edx,%edx), %eax
	movzbl	21(%esi), %edx
	movl	%eax, 32(%esp)
	movl	8(%esi), %eax
	cmpb	$64, %dl
	je	L656
	imull	%ecx, %edx
	addl	%edx, %edx
L648:
	subl	%edx, %eax
	movl	(%esi), %ecx
	movl	4(%ebx), %edx
	movl	(%ebx), %edi
	movl	%edx, 28(%esp)
	cmpl	%edi, %ecx
	je	L649
	subl	20(%esp), %eax
	subl	%edi, %ecx
	cltd
	idivl	%ecx
	imull	24(%esp), %eax
L650:
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	leal	36(%esp), %edx
	movl	%edx, 16(%esp)
	movl	20(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	cmpw	$0, 52(%esp)
	js	L653
	movl	200(%ebp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movswl	48(%esp), %edx
	imull	$-1171354717, %eax, %eax
	cmpl	%edx, %eax
	sete	%al
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movzbl	%al, %eax
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
L655:
	.cfi_restore_state
	movl	%ecx, %eax
	sall	$7, %eax
	jmp	L646
	.p2align 4,,10
	.p2align 3
L649:
	movl	4(%esi), %ecx
	cmpl	28(%esp), %ecx
	je	L653
	subl	20(%esp), %eax
	subl	28(%esp), %ecx
	cltd
	idivl	%ecx
	imull	32(%esp), %eax
	jmp	L650
	.p2align 4,,10
	.p2align 3
L656:
	sall	$7, %ecx
	movl	%ecx, %edx
	jmp	L648
	.p2align 4,,10
	.p2align 3
L653:
	addl	$56, %esp
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
LFE68:
	.p2align 4
	.globl	__Z22DoActorPickClosePlayers
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
__Z22DoActorPickClosePlayers:
LFB69:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movswl	84(%esp), %eax
	movl	%eax, 36(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movl	%eax, 20(%esp)
	movswl	14(%edi), %ecx
	movl	8(%edi), %edx
	movl	%edi, 52(%esp)
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%ecx,4), %ebx
	testb	$-128, 12(%edi)
	je	L658
	cmpb	$64, %al
	je	L732
	imull	%ebx, %eax
	addl	%eax, %eax
L660:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, 56(%esp)
	jmp	L661
	.p2align 4,,10
	.p2align 3
L658:
	cmpb	$64, %al
	je	L733
	imull	%ebx, %eax
	leal	0(,%eax,4), %ebx
L663:
	subl	%ebx, %edx
	movl	%edx, 56(%esp)
L661:
	movl	20(%esp), %eax
	movl	72(%eax), %esi
	movl	%esi, %edx
	andl	$16777216, %edx
	cmpw	$1095, 82(%eax)
	je	L734
L664:
	movl	_Player+352, %eax
	movl	20(%esp), %ebx
	movl	%eax, 200(%ebx)
	movl	_connecthead, %eax
	movl	%eax, %ebx
	testl	%edx, %edx
	jne	L666
	movswl	%ax, %ecx
	movl	$42000, %edi
	cmpw	$-1, %ax
	je	L668
	movw	%ax, 24(%esp)
	movl	%esi, 28(%esp)
	movl	52(%esp), %esi
	.p2align 4
	.p2align 3
L667:
	imull	$24124, %ecx, %ebx
	movl	_Player(%ebx), %eax
	subl	(%esi), %eax
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	movl	_Player+4(%ebx), %eax
	subl	4(%esi), %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovns	%ebp, %eax
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	%edi, %ebp
	jge	L674
	movl	_Player+352(%ebx), %eax
	movl	20(%esp), %ebx
	movl	%ebp, %edi
	movl	%eax, 200(%ebx)
L674:
	movl	_connectpoint2(,%ecx,4), %eax
	movswl	%ax, %ecx
	cmpw	$-1, %ax
	jne	L667
	movswl	24(%esp), %ebx
	movl	28(%esp), %esi
L675:
	movb	$0, 60(%esp)
	movl	52(%esp), %ebp
	movl	$42000, 32(%esp)
	jmp	L690
	.p2align 4,,10
	.p2align 3
L736:
	cmpb	$64, %dl
	je	L735
	movzbl	%dl, %esi
	movsbl	_picanm+2(%edi,%edi,4), %edi
	movl	%esi, %edx
	imull	%ecx, %edx
	sall	$8, %edi
	leal	(%edi,%edx,2), %edi
	movl	48(%esp), %edx
	subl	%edi, %edx
L686:
	imull	%esi, %ecx
L688:
	movswl	44(%esp), %esi
	addl	%ecx, %edx
	movl	56(%esp), %ecx
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %eax
	movl	28(%esp), %edx
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L681
	imull	$24124, %ebx, %eax
	movl	20(%esp), %ecx
	movb	$1, 60(%esp)
	movl	_Player+352(%eax), %eax
	movl	%eax, 200(%ecx)
	movl	40(%esp), %eax
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L681:
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L689
	movl	20(%esp), %eax
	movl	72(%eax), %esi
L690:
	andl	$16777216, %esi
	je	L679
	imull	$24124, %ebx, %eax
	movzwl	30(%ebp), %edi
	leal	_Player(%eax), %edx
	cmpw	%di, _Player+348(%eax)
	je	L681
	movl	36(%esp), %eax
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L681
L679:
	imull	$24124, %ebx, %ecx
	movl	0(%ebp), %eax
	movl	4(%ebp), %edi
	movl	%eax, 24(%esp)
	movl	_Player(%ecx), %edx
	movl	%edi, 28(%esp)
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	_Player+4(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovns	%esi, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %esi
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %esi
	movl	%esi, 40(%esp)
	cmpl	32(%esp), %esi
	jge	L681
	movl	_Player+352(%ecx), %eax
	movl	8(%eax), %esi
	movzwl	24(%eax), %ecx
	movswl	14(%eax), %edi
	movl	%esi, 48(%esp)
	movzbl	21(%eax), %esi
	movw	%cx, 44(%esp)
	movswl	_tilesiz+2(,%edi,4), %ecx
	movl	%esi, %edx
	testb	$-128, 12(%eax)
	jne	L736
	cmpb	$64, %dl
	je	L737
	movzbl	%dl, %esi
	movl	48(%esp), %edx
	movl	%esi, %edi
	imull	%ecx, %edi
	sall	$2, %edi
	subl	%edi, %edx
	jmp	L686
	.p2align 4,,10
	.p2align 3
L693:
	cmpb	$64, %dl
	je	L738
	movl	%edx, %ebp
	movl	60(%esp), %ecx
	imull	%eax, %ebp
	sall	$2, %ebp
	subl	%ebp, %ecx
L696:
	imull	%edx, %eax
L698:
	addl	%ecx, %eax
	movswl	48(%esp), %edx
	movl	56(%esp), %ecx
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%edx, 16(%esp)
	movl	%ebx, %edx
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	52(%esp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L700
	movl	20(%esp), %ebx
	movl	40(%esp), %eax
	addl	_sprite, %eax
	movl	%eax, 200(%ebx)
	movl	44(%esp), %eax
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L700:
	cmpl	$-1, %edi
	jne	L691
L668:
	addl	$64, %esp
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
L689:
	.cfi_restore_state
	cmpb	$0, 60(%esp)
	jne	L668
	movl	20(%esp), %eax
	movl	72(%eax), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	andl	$16777216, %edx
L665:
	testl	%edx, %edx
	je	L668
L669:
	movswl	_headspritestat+4, %edi
	movl	$42000, 32(%esp)
	cmpl	$-1, %edi
	je	L668
	.p2align 4
	.p2align 3
L691:
	movl	%edi, %eax
	movswl	_nextspritestat(%edi,%edi), %edi
	cmpl	%eax, 36(%esp)
	je	L700
	movl	_User(,%eax,4), %edx
	testb	$-127, 69(%edx)
	jne	L700
	imull	$44, %eax, %eax
	movl	_sprite, %ecx
	movl	52(%esp), %ebx
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	addl	%eax, %ecx
	movl	%eax, 40(%esp)
	movl	(%ecx), %eax
	movl	%eax, 28(%esp)
	subl	%esi, %eax
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	movl	%edx, 24(%esp)
	subl	%ebx, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	movl	%ebp, 44(%esp)
	cmpl	32(%esp), %ebp
	jge	L700
	movzwl	24(%ecx), %eax
	movl	8(%ecx), %edx
	movswl	14(%ecx), %ebp
	movw	%ax, 48(%esp)
	movl	%edx, 60(%esp)
	movswl	_tilesiz+2(,%ebp,4), %eax
	movzbl	21(%ecx), %edx
	testb	$-128, 12(%ecx)
	je	L693
	cmpb	$64, %dl
	je	L739
	movl	%edx, %ecx
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	imull	%eax, %ecx
	sall	$8, %ebp
	leal	0(%ebp,%ecx,2), %ebp
	movl	60(%esp), %ecx
	subl	%ebp, %ecx
	jmp	L696
	.p2align 4,,10
	.p2align 3
L666:
	cmpw	$-1, %ax
	je	L669
	movl	52(%esp), %ecx
	movswl	%ax, %edx
	movzwl	30(%ecx), %ebp
L671:
	imull	$24124, %edx, %ecx
	cmpw	%bp, _Player+348(%ecx)
	je	L740
	movl	_Player+352(%ecx), %edx
	movl	20(%esp), %ecx
	movl	%edx, 200(%ecx)
L672:
	movl	%esi, 32(%esp)
	movswl	%ax, %edi
	movl	$42000, %ebp
	movw	%bx, 28(%esp)
	movl	52(%esp), %ebx
	.p2align 4
	.p2align 3
L673:
	imull	$24124, %edi, %edx
	movzwl	30(%ebx), %eax
	leal	_Player(%edx), %esi
	cmpw	%ax, _Player+348(%edx)
	je	L677
	movl	36(%esp), %eax
	movl	%esi, (%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 4(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	testb	%al, %al
	je	L677
	movl	24(%esp), %edx
	movl	_Player(%edx), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	4(%ebx), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ebp, %ecx
	jge	L677
	movl	352(%esi), %eax
	movl	20(%esp), %esi
	movl	%ecx, %ebp
	movl	%eax, 200(%esi)
L677:
	movl	_connectpoint2(,%edi,4), %eax
	movswl	%ax, %edi
	cmpw	$-1, %ax
	jne	L673
	movswl	28(%esp), %ebx
	movl	32(%esp), %esi
	jmp	L675
	.p2align 4,,10
	.p2align 3
L735:
	movsbl	_picanm+2(%edi,%edi,4), %edi
	movl	%ecx, %esi
	movl	48(%esp), %edx
	sall	$7, %esi
	sall	$8, %edi
	addl	%edi, %esi
	subl	%esi, %edx
L685:
	sall	$6, %ecx
	jmp	L688
	.p2align 4,,10
	.p2align 3
L737:
	movl	48(%esp), %edx
	movl	%ecx, %esi
	sall	$8, %esi
	subl	%esi, %edx
	jmp	L685
	.p2align 4,,10
	.p2align 3
L734:
	cmpw	$3, _gNet+12
	jne	L664
	jmp	L665
	.p2align 4,,10
	.p2align 3
L732:
	movl	%ebx, %eax
	sall	$7, %eax
	jmp	L660
	.p2align 4,,10
	.p2align 3
L733:
	sall	$8, %ebx
	jmp	L663
	.p2align 4,,10
	.p2align 3
L739:
	movsbl	_picanm+2(%ebp,%ebp,4), %ecx
	movl	%eax, %edx
	sall	$7, %edx
	sall	$8, %ecx
	addl	%ecx, %edx
	movl	60(%esp), %ecx
	subl	%edx, %ecx
L695:
	sall	$6, %eax
	jmp	L698
	.p2align 4,,10
	.p2align 3
L738:
	movl	60(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
	jmp	L695
	.p2align 4,,10
	.p2align 3
L740:
	movl	_connectpoint2(,%edx,4), %ecx
	movswl	%cx, %edx
	cmpw	$-1, %cx
	jne	L671
	jmp	L672
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	__Z17ActorMoveHitReacts
	.def	__Z17ActorMoveHitReacts;	.scl	2;	.type	32;	.endef
__Z17ActorMoveHitReacts:
LFB70:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	20(%esp), %ecx
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	_User(,%ecx,4), %ebx
	movl	264(%ebx), %eax
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L742
L744:
	xorl	%eax, %eax
L741:
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L742:
	.cfi_restore_state
	andl	$16383, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L744
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L744
	movl	%ecx, (%esp)
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	%ecx, 4(%esp)
	call	__Z22DoActorPickClosePlayers
	movl	44(%ebx), %eax
	movl	4(%esp), %ecx
	addl	$1, _krandcount
	movl	28(%eax), %esi
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	xorl	%eax, %eax
	movzwl	%bx, %ebx
	movl	%ebx, _randomseed
	sarl	$5, %ebx
	andw	$1023, %bx
	cmpw	%bx, (%esi)
	jge	L754
	.p2align 4
	.p2align 4
	.p2align 3
L745:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%esi,%edx,8), %edx
	cmpw	(%edx), %bx
	jg	L745
L747:
	movl	4(%edx), %eax
	testl	%eax, %eax
	je	L755
	movl	%ecx, (%esp)
	call	*%eax
	movl	12(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$1, %eax
	jmp	L741
	.p2align 4,,10
	.p2align 3
L755:
	.cfi_restore_state
	movl	12(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L744
	.p2align 4,,10
	.p2align 3
L754:
	.cfi_restore_state
	movl	%esi, %edx
	jmp	L747
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	__Z14DoActorOperates
	.def	__Z14DoActorOperates;	.scl	2;	.type	32;	.endef
__Z14DoActorOperates:
LFB71:
	.cfi_startproc
	subl	$88, %esp
	.cfi_def_cfa_offset 92
	movswl	92(%esp), %ecx
	movl	%ebx, 76(%esp)
	movl	_User(,%ecx,4), %edx
	movzwl	82(%edx), %eax
	cmpw	$800, %ax
	.cfi_offset 3, -16
	sete	%bl
	cmpw	$3780, %ax
	sete	48(%esp)
	orb	48(%esp), %bl
	jne	L757
	cmpw	$4550, %ax
	je	L757
	movl	40(%edx), %eax
	movl	20(%edx), %ebx
	cmpl	32(%eax), %ebx
	je	L757
	cmpl	(%eax), %ebx
	je	L757
	movzwl	216(%edx), %ebx
	movl	_sprite, %eax
	subl	$6, %ebx
	movw	%bx, 216(%edx)
	testw	%bx, %bx
	jg	L757
	imull	$44, %ecx, %ebx
	movl	%edi, 84(%esp)
	movl	%esi, 80(%esp)
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	addl	%ebx, %eax
	movzbl	21(%eax), %ebx
	movl	8(%eax), %esi
	movb	%bl, 48(%esp)
	movswl	14(%eax), %ebx
	movl	%esi, %edi
	movswl	_tilesiz+2(,%ebx,4), %ebx
	cmpb	$64, 48(%esp)
	je	L770
	movzbl	48(%esp), %esi
	imull	%esi, %ebx
	movl	%edi, %esi
	sall	$2, %ebx
	subl	%ebx, %esi
	sarl	%ebx
	addl	$1280, %esi
L761:
	movl	%esi, 68(%esp)
	movl	%edi, %esi
	movl	%edx, %edi
	subl	%ebx, %esi
	leal	68(%esp), %ebx
	movl	%esi, 72(%esp)
	movl	%ecx, %esi
L762:
	leal	64(%esp), %ecx
	movl	%eax, 48(%esp)
	addl	$4, %ebx
	movl	%ecx, 32(%esp)
	leal	58(%esp), %ecx
	movl	%ecx, 28(%esp)
	leal	60(%esp), %ecx
	movl	%ecx, 24(%esp)
	leal	62(%esp), %ecx
	movl	$0, 44(%esp)
	movl	$3, 40(%esp)
	movl	$1024, 36(%esp)
	movl	%ecx, 20(%esp)
	movswl	28(%eax), %edx
	movl	%edx, 16(%esp)
	movswl	24(%eax), %edx
	movl	%edx, 12(%esp)
	movl	-4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %edx
	movl	%edx, (%esp)
	call	_neartag.constprop.0
	leal	76(%esp), %eax
	cmpl	%eax, %ebx
	movl	48(%esp), %eax
	jne	L762
	movswl	62(%esp), %eax
	testw	%ax, %ax
	js	L763
	cmpl	$1023, 64(%esp)
	jle	L764
L763:
	movl	$1, %ebx
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	76(%esp), %ebx
	addl	$88, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L757:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
L756:
	movl	%ebx, %eax
	movl	76(%esp), %ebx
	addl	$88, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L770:
	.cfi_def_cfa_offset 92
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	sall	$8, %ebx
	subl	%ebx, %esi
	sarl	%ebx
	addl	$1280, %esi
	jmp	L761
	.p2align 4,,10
	.p2align 3
L764:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%esi, 52(%esp)
	movl	%edi, 48(%esp)
	call	__Z13OperateSectorss
	movl	48(%esp), %edx
	movl	52(%esp), %ecx
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L763
	movl	$240, %eax
	movw	%ax, 216(%edx)
	movl	40(%edx), %eax
	movl	32(%eax), %edx
	movl	%ecx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	jmp	L756
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z19DoActorActionDecides
	.def	__Z19DoActorActionDecides;	.scl	2;	.type	32;	.endef
__Z19DoActorActionDecides:
LFB73:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movw	%bp, 212(%ebx)
	movl	68(%ebx), %ebp
	movl	140(%ebx), %edi
	andl	$96, %ebp
	jne	L772
	movl	%esi, (%esp)
	call	__Z12ActorFlamings
	testb	%al, %al
	jne	L916
	movl	%esi, (%esp)
	call	__Z12CanSeePlayers
	movl	%eax, 8(%esp)
	testb	$8, 68(%ebx)
	jne	L917
	cmpw	$1008, 40(%edi)
	jne	L918
L827:
	movl	200(%ebx), %eax
	movl	4(%edi), %edx
	movl	(%edi), %edi
	movl	(%eax), %ebp
	movl	4(%eax), %ecx
	movl	%edi, 12(%esp)
	movl	%ebp, %eax
	movl	%ecx, 16(%esp)
	subl	%edi, %eax
	movl	%eax, %edi
	negl	%edi
	cmovns	%edi, %eax
	movl	%ecx, %edi
	subl	%edx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovns	%ecx, %edi
	cmpl	%edi, %eax
	leal	(%eax,%edi), %ecx
	cmovg	%edi, %eax
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 20(%esp)
	cmpl	$14999, %ecx
	jle	L828
	testb	$1, 8(%esp)
	jne	L828
L772:
	movl	$__Z15InitActorDecides, %ebp
L771:
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
L916:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	_GenericFlaming, %cx
	jle	L919
	.p2align 5
	.p2align 4
	.p2align 3
L774:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	_GenericFlaming(,%edx,8), %ebx
	cmpw	_GenericFlaming(,%edx,8), %cx
	jg	L774
L776:
	movl	4(%ebx), %ebp
	addl	$40, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	movl	%ebp, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L918:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
	jmp	L827
	.p2align 4,,10
	.p2align 3
L828:
	movl	12(%esp), %ecx
	subl	16(%esp), %edx
	subl	%ebp, %ecx
	call	@getangle@8
	movl	%eax, %ecx
	movl	200(%ebx), %eax
	movswl	28(%eax), %eax
	movl	%eax, %edx
	subl	%ecx, %eax
	movl	%eax, %edi
	negl	%edi
	cmovs	%eax, %edi
	cmpl	$1024, %edi
	jg	L920
L830:
	subl	%ecx, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$511, %ax
	ja	L858
	cmpl	$9999, 20(%esp)
	jle	L833
L858:
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L921
L833:
	movl	%esi, (%esp)
	call	__Z14DoActorOperates
	movl	44(%ebx), %eax
	addl	$1, _krandcount
	movl	12(%eax), %edi
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	%cx, (%edi)
	jge	L922
	.p2align 4
	.p2align 4
	.p2align 3
L837:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%edi,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L837
L840:
	movl	4(%edx), %ebp
	cmpb	$0, 284(%ebx)
	jne	L771
	testb	$1, 8(%esp)
	je	L771
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L841
	cmpb	$0, 284(%eax)
	je	L923
L841:
	movb	$1, 284(%ebx)
	jmp	L771
	.p2align 4,,10
	.p2align 3
L917:
	movl	%esi, (%esp)
	call	__Z14DoActorOperates
	movl	200(%ebx), %eax
	movl	4(%edi), %edx
	movl	4(%eax), %ecx
	movl	%edx, 12(%esp)
	movl	%eax, 20(%esp)
	movl	(%edi), %edx
	movl	(%eax), %eax
	movl	%ecx, 28(%esp)
	movl	%edx, 36(%esp)
	movl	%eax, 32(%esp)
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	subl	12(%esp), %ecx
	movl	%ecx, %edx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 24(%esp)
	movl	%ecx, %eax
	movl	_User(,%esi,4), %ecx
	movl	_krandcount, %esi
	addl	$1, %esi
	movl	%esi, 16(%esp)
	cmpl	$30000, %eax
	jle	L778
	testb	$1, 8(%esp)
	je	L924
L778:
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L783
	movl	200(%ecx), %ecx
	jmp	L784
	.p2align 5
	.p2align 4,,10
	.p2align 3
L782:
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L783
L784:
	imull	$24124, %eax, %edx
	cmpl	%ecx, _Player+352(%edx)
	jne	L782
	movswl	_Player+348(%edx), %ebp
L783:
	movl	20(%esp), %esi
	movzbl	18(%edi), %eax
	movzbl	18(%esi), %edx
	sall	$2, %edx
	leal	400(%edx,%eax,4), %eax
	cmpl	24(%esp), %eax
	jle	L857
	testb	$1, 8(%esp)
	jne	L785
L857:
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L787
	cmpb	$0, 273(%eax)
	jne	L787
	movzwl	82(%ebx), %eax
	cmpw	$4320, %ax
	je	L787
	cmpw	$1580, %ax
	je	L787
L788:
	movzwl	12(%edi), %edx
	cmpw	$4277, %ax
	je	L925
L796:
	testw	%dx, %dx
	jns	L926
L797:
	movl	44(%ebx), %eax
	movl	16(%eax), %ebx
	movl	16(%esp), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	(%ebx), %cx
	jle	L914
	.p2align 4
	.p2align 4
	.p2align 3
L800:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L800
L822:
	movl	4(%edx), %ebp
	jmp	L771
	.p2align 4,,10
	.p2align 3
L787:
	movl	12(%esp), %edx
	movl	36(%esp), %ecx
	subl	28(%esp), %edx
	subl	32(%esp), %ecx
	call	@getangle@8
	movl	%eax, %ecx
	movl	200(%ebx), %eax
	movswl	28(%eax), %eax
	movl	%eax, %edx
	subl	%ecx, %eax
	movl	%eax, %esi
	negl	%esi
	cmovs	%eax, %esi
	cmpl	$1024, %esi
	jle	L791
	leal	2048(%edx), %eax
	cmpw	$1025, %dx
	cmovl	%eax, %edx
	leal	2048(%ecx), %eax
	cmpl	$1025, %ecx
	cmovl	%eax, %ecx
L791:
	movl	_randomseed, %esi
	subl	%ecx, %edx
	movl	%edx, %ecx
	leal	0(,%esi,4), %ebp
	negw	%cx
	leal	0(%ebp,%esi), %eax
	cmovs	%edx, %ecx
	leal	1(%esi,%eax,4), %eax
	movl	%eax, 12(%esp)
	movzwl	%ax, %eax
	cmpw	$511, %cx
	ja	L795
	movl	68(%ebx), %edx
	testb	$2, %dl
	je	L795
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L803
	testb	$4, %dl
	je	L805
	andl	$-5, %edx
	movl	%edx, 68(%ebx)
	movl	40(%ebx), %edx
	movl	124(%edx), %edx
	testl	%edx, %edx
	je	L806
	movl	16(%esp), %ecx
	movl	%eax, _randomseed
	movl	$__Z13InitActorDucks, %ebp
	movl	%ecx, _krandcount
	cmpl	$25599, %eax
	jbe	L771
	movl	%eax, %esi
	leal	1(%ecx), %eax
	movl	%eax, 16(%esp)
	leal	0(,%esi,4), %ebp
L806:
	movzwl	12(%edi), %eax
	cmpw	$4277, 82(%ebx)
	je	L927
L807:
	testw	%ax, %ax
	jns	L928
L808:
	movl	44(%ebx), %eax
	addl	%esi, %ebp
	movl	16(%eax), %ecx
	movl	16(%esp), %eax
	movl	%eax, _krandcount
	leal	1(%esi,%ebp,4), %eax
	movl	%ecx, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	movl	%eax, %ebx
	xorl	%eax, %eax
	andw	$1023, %bx
	cmpw	%bx, (%ecx)
	jge	L822
	.p2align 4
	.p2align 4
	.p2align 3
L811:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ecx,%edx,8), %edx
	cmpw	(%edx), %bx
	jg	L811
	jmp	L822
	.p2align 4,,10
	.p2align 3
L795:
	movl	8(%esp), %ecx
	testl	%ecx, %ecx
	je	L803
	movzwl	12(%edi), %edx
	cmpw	$4277, 82(%ebx)
	je	L929
L819:
	testw	%dx, %dx
	jns	L930
L820:
	movl	44(%ebx), %edx
	movl	16(%esp), %esi
	movl	%eax, _randomseed
	sarl	$5, %eax
	andw	$1023, %ax
	movl	16(%edx), %ebx
	movl	%esi, _krandcount
	xorl	%edx, %edx
	cmpw	(%ebx), %ax
	jle	L915
	.p2align 4
	.p2align 4
	.p2align 3
L823:
	addl	$1, %edx
	movswl	%dx, %ecx
	leal	(%ebx,%ecx,8), %ecx
	cmpw	(%ecx), %ax
	jg	L823
L826:
	movl	4(%ecx), %ebp
	jmp	L771
	.p2align 4,,10
	.p2align 3
L920:
	leal	2048(%edx), %eax
	cmpw	$1025, %dx
	cmovl	%eax, %edx
	leal	2048(%ecx), %eax
	cmpl	$1025, %ecx
	cmovl	%eax, %ecx
	jmp	L830
	.p2align 4,,10
	.p2align 3
L919:
	movl	$_GenericFlaming, %ebx
	jmp	L776
	.p2align 4,,10
	.p2align 3
L785:
	movzwl	82(%ebx), %eax
	jmp	L788
	.p2align 4,,10
	.p2align 3
L803:
	movl	44(%ebx), %edx
	movl	16(%esp), %esi
	movl	%eax, _randomseed
	sarl	$5, %eax
	andw	$1023, %ax
	movl	20(%edx), %ebx
	movl	%esi, _krandcount
	xorl	%edx, %edx
	cmpw	(%ebx), %ax
	jle	L915
	.p2align 4
	.p2align 4
	.p2align 3
L825:
	addl	$1, %edx
	movswl	%dx, %ecx
	leal	(%ebx,%ecx,8), %ecx
	cmpw	(%ecx), %ax
	jg	L825
	jmp	L826
	.p2align 4,,10
	.p2align 3
L924:
	andl	$-9, 68(%ecx)
	movl	44(%ebx), %eax
	movl	%esi, _krandcount
	movl	20(%eax), %ebx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	(%ebx), %cx
	jle	L914
	.p2align 4
	.p2align 4
	.p2align 3
L779:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L779
	jmp	L822
	.p2align 4,,10
	.p2align 3
L921:
	movl	44(%ebx), %eax
	addl	$1, _krandcount
	movl	8(%eax), %ebx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	%cx, (%ebx)
	jge	L931
	.p2align 4
	.p2align 4
	.p2align 3
L835:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L835
L836:
	movl	%esi, 4(%esp)
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	__Z12DoActorNoisePFisEs
	jmp	L772
L930:
	movl	44(%ebx), %edx
	movl	%eax, %ecx
	movl	16(%esp), %esi
	movl	%eax, _randomseed
	sarl	$5, %ecx
	xorl	%eax, %eax
	movl	4(%edx), %ebx
	movl	%esi, _krandcount
	andw	$1023, %cx
	cmpw	%cx, (%ebx)
	jge	L914
	.p2align 4
	.p2align 4
	.p2align 3
L821:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	%cx, (%edx)
	jl	L821
	jmp	L822
L929:
	testb	$2, %dl
	jne	L820
	jmp	L819
L926:
	movl	_randomseed, %eax
	movl	16(%esp), %esi
	leal	(%eax,%eax,4), %edx
	movl	%esi, _krandcount
	leal	1(%eax,%edx,4), %eax
	movl	44(%ebx), %edx
	movzwl	%ax, %eax
	movl	%eax, %ecx
	movl	24(%edx), %ebx
	movl	%eax, _randomseed
	xorl	%eax, %eax
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	%cx, (%ebx)
	jge	L914
	.p2align 4
	.p2align 4
	.p2align 3
L798:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	%cx, (%edx)
	jl	L798
	jmp	L822
L925:
	testb	$2, %dl
	jne	L797
	jmp	L796
L914:
	movl	%ebx, %edx
	jmp	L822
L922:
	movl	%edi, %edx
	jmp	L840
L915:
	movl	%ebx, %ecx
	jmp	L826
L805:
	movzwl	12(%edi), %edx
	cmpw	$4277, 82(%ebx)
	je	L932
L813:
	testw	%dx, %dx
	jns	L933
L814:
	movl	44(%ebx), %edx
	movl	16(%esp), %esi
	movl	%eax, _randomseed
	sarl	$5, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	16(%edx), %ebx
	movl	%esi, _krandcount
	andw	$1023, %cx
	cmpw	(%ebx), %cx
	jle	L914
	.p2align 4
	.p2align 4
	.p2align 3
L817:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L817
	jmp	L822
L931:
	movl	%ebx, %edx
	jmp	L836
L923:
	movl	$1, %ecx
	movl	$1, %edx
	movl	%esi, %eax
	call	__Z15PlaySpriteSoundsii
	jmp	L841
L933:
	movl	44(%ebx), %ecx
	movl	12(%esp), %edx
	movl	16(%esp), %esi
	movl	(%ecx), %ebx
	sarl	$5, %edx
	movl	%eax, _randomseed
	xorl	%eax, %eax
	movl	%esi, _krandcount
	andw	$1023, %dx
	cmpw	%dx, (%ebx)
	jge	L915
L815:
	addl	$1, %eax
	movswl	%ax, %ecx
	leal	(%ebx,%ecx,8), %ecx
	cmpw	%dx, (%ecx)
	jl	L815
	jmp	L826
L932:
	testb	$2, %dl
	jne	L814
	jmp	L813
L928:
	addl	%esi, %ebp
	movl	44(%ebx), %edx
	leal	1(%esi,%ebp,4), %eax
	movl	16(%esp), %esi
	movzwl	%ax, %eax
	movl	(%edx), %ebx
	movl	%eax, %ecx
	movl	%eax, _randomseed
	xorl	%eax, %eax
	sarl	$5, %ecx
	movl	%esi, _krandcount
	andw	$1023, %cx
	cmpw	%cx, (%ebx)
	jge	L914
L809:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	(%ebx,%edx,8), %edx
	cmpw	%cx, (%edx)
	jl	L809
	jmp	L822
L927:
	testb	$2, %al
	jne	L808
	jmp	L807
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z13DoActorDecides
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
__Z13DoActorDecides:
LFB76:
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
	movswl	28(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	140(%esi), %edi
	movl	%ebx, (%esp)
	call	__Z19DoActorActionDecides
	movl	%eax, %edx
	cmpl	$__Z15InitActorAttacks, %eax
	je	L946
	cmpl	$__Z15InitActorDecides, %eax
	je	L938
L937:
	movl	%ebx, (%esp)
	call	*%edx
L936:
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
L946:
	.cfi_restore_state
	cmpb	$0, 273(%esi)
	je	L936
	cmpw	$1095, 82(%esi)
	jne	L937
	movl	200(%esi), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %ecx
	movl	144(%ecx), %ecx
	testl	%ecx, %ecx
	je	L937
	movswl	30(%edi), %esi
	cmpl	%esi, %eax
	je	L936
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	movl	%edx, 8(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	8(%esp), %edx
	testb	%al, %al
	jne	L937
	jmp	L936
	.p2align 4,,10
	.p2align 3
L938:
	movl	40(%esi), %eax
	movl	(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	addl	$12, %esp
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
LFE76:
	.p2align 4
	.globl	__Z15InitActorDecides
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
__Z15InitActorDecides:
LFB77:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %edx
	movl	$__Z13DoActorDecides, 36(%edx)
	movl	%eax, 4(%esp)
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	__Z15DoActorMoveJumps
	.def	__Z15DoActorMoveJumps;	.scl	2;	.type	32;	.endef
__Z15DoActorMoveJumps:
LFB79:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	12(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	140(%esi), %eax
	movswl	32(%eax), %edx
	movswl	28(%eax), %eax
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%ebx, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testb	$96, 68(%esi)
	je	L951
	xorl	%eax, %eax
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
L951:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 12(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z17DoActorRepositions
	.def	__Z17DoActorRepositions;	.scl	2;	.type	32;	.endef
__Z17DoActorRepositions:
LFB80:
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
	movl	140(%esi), %eax
	movswl	32(%eax), %edx
	movswl	28(%eax), %eax
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%ebx, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	je	L956
	cmpw	$49, 214(%esi)
	jle	L957
L954:
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
L957:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 16(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.p2align 4,,10
	.p2align 3
L956:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z17ActorMoveHitReacts
	testb	%al, %al
	jne	L954
	movl	$6, %eax
	movw	%ax, 282(%esi)
	movl	_User(,%ebx,4), %eax
	movl	$__Z12DoActorPauses, 36(%eax)
	movl	_User(,%ebx,4), %edx
	subw	$6, 282(%edx)
	jns	L954
	andl	$-5, 68(%edx)
	movl	$__Z13DoActorDecides, 36(%edx)
	jmp	L954
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z11DoBunnyPains
	.def	__Z11DoBunnyPains;	.scl	2;	.type	32;	.endef
__Z11DoBunnyPains:
LFB81:
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
	call	__Z9NullBunnys
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L961
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
L961:
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
LFE81:
	.p2align 4
	.globl	__Z17FindTrackToPlayerP4USER
	.def	__Z17FindTrackToPlayerP4USER;	.scl	2;	.type	32;	.endef
__Z17FindTrackToPlayerP4USER:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %edx
	movl	200(%edx), %ecx
	movl	140(%edx), %esi
	movswl	14(%ecx), %ebp
	movl	8(%ecx), %edi
	movzbl	21(%ecx), %eax
	movswl	_tilesiz+2(,%ebp,4), %ebx
	testb	$-128, 12(%ecx)
	je	L963
	cmpb	$64, %al
	je	L979
	movzbl	%al, %ecx
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	movl	%ecx, %eax
	imull	%ebx, %eax
	sall	$8, %ebp
	leal	0(%ebp,%eax,2), %eax
	subl	%eax, %edi
	jmp	L966
	.p2align 4,,10
	.p2align 3
L963:
	cmpb	$64, %al
	je	L980
	movzbl	%al, %ecx
	movl	%ecx, %eax
	imull	%ebx, %eax
	sall	$2, %eax
	subl	%eax, %edi
L966:
	imull	%ecx, %ebx
L968:
	movl	8(%esi), %ecx
	leal	(%edi,%ebx), %eax
	movzbl	21(%esi), %ebx
	movswl	14(%esi), %esi
	movswl	_tilesiz+2(,%esi,4), %esi
	cmpb	$64, %bl
	je	L981
	imull	%esi, %ebx
	sall	$2, %ebx
L970:
	subl	%ebx, %ecx
	addl	$2048, %ecx
	subl	%ecx, %eax
	leal	5120(%eax), %ecx
	cmpl	$10240, %ecx
	jbe	L975
	testl	%eax, %eax
	movl	$5, %ecx
	movl	$6, %eax
	movl	$__ZZ17FindTrackToPlayerP4USERE11PlayerBelow, %ebx
	cmovs	%eax, %ecx
	movl	$__ZZ17FindTrackToPlayerP4USERE11PlayerAbove, %eax
	cmovs	%eax, %ebx
L971:
	leal	(%ebx,%ecx,2), %ebp
	leal	12(%esp), %edi
	movl	%ebp, 8(%esp)
	leal	14(%esp), %esi
	movl	%edx, %ebp
	.p2align 4
	.p2align 3
L974:
	movswl	(%ebx), %ecx
	movswl	136(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	$1, %edx
	movl	%esi, (%esp)
	call	__Z14ActorFindTracksaiPsS_
	testw	%ax, %ax
	jns	L982
	addl	$2, %ebx
	cmpl	%ebx, 8(%esp)
	jne	L974
	addl	$16, %esp
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
L975:
	.cfi_restore_state
	movl	$6, %ecx
	movl	$__ZZ17FindTrackToPlayerP4USERE13PlayerOnLevel, %ebx
	jmp	L971
	.p2align 4,,10
	.p2align 3
L982:
	movzwl	12(%esp), %ebx
	movzwl	14(%esp), %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,2), %edx
	sall	$16, %ebx
	orl	%ebx, %ecx
	movl	%ecx, 220(%ebp)
	orw	$1, _Track+8(,%edx,4)
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
L981:
	.cfi_restore_state
	sall	$8, %esi
	movl	%esi, %ebx
	jmp	L970
	.p2align 4,,10
	.p2align 3
L979:
	movsbl	_picanm+2(%ebp,%ebp,4), %eax
	movl	%ebx, %ecx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
L965:
	sall	$6, %ebx
	jmp	L968
	.p2align 4,,10
	.p2align 3
L980:
	movl	%ebx, %eax
	sall	$8, %eax
	subl	%eax, %edi
	jmp	L965
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z23FindTrackAwayFromPlayerP4USER
	.def	__Z23FindTrackAwayFromPlayerP4USER;	.scl	2;	.type	32;	.endef
__Z23FindTrackAwayFromPlayerP4USER:
LFB83:
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
	movl	$__ZZ23FindTrackAwayFromPlayerP4USERE13RunAwayTracks, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	leal	8(%esp), %ebp
	leal	10(%esp), %edi
	.p2align 4
	.p2align 3
L986:
	movswl	(%ebx), %ecx
	movswl	136(%esi), %eax
	movl	%ebp, 4(%esp)
	movl	$-1, %edx
	movl	%edi, (%esp)
	call	__Z14ActorFindTracksaiPsS_
	testw	%ax, %ax
	jns	L989
	addl	$2, %ebx
	cmpl	$__ZZ23FindTrackAwayFromPlayerP4USERE13RunAwayTracks+20, %ebx
	jne	L986
	addl	$12, %esp
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
L989:
	.cfi_restore_state
	movzwl	8(%esp), %ecx
	movzwl	10(%esp), %edx
	sall	$16, %ecx
	orl	%ecx, %edx
	movl	%edx, 220(%esi)
	movswl	%ax, %edx
	leal	(%edx,%edx,2), %edx
	orw	$1, _Track+8(,%edx,4)
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
LFE83:
	.p2align 4
	.globl	__Z14InitActorEvades
	.def	__Z14InitActorEvades;	.scl	2;	.type	32;	.endef
__Z14InitActorEvades:
LFB84:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movswl	28(%esp), %esi
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	movl	40(%ebx), %eax
	movl	140(%ebx), %edi
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, (%esp)
	call	__Z23FindTrackAwayFromPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L991
	cwtl
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ebp
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 28(%edi)
	movl	$3, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	andl	$-65537, 68(%ebx)
	movl	20(%esp), %ebp
	.cfi_restore 5
L991:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z15FindWanderTrackP4USER
	.def	__Z15FindWanderTrackP4USER;	.scl	2;	.type	32;	.endef
__Z15FindWanderTrackP4USER:
LFB85:
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
	movl	$__ZZ15FindWanderTrackP4USERE12WanderTracks, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	leal	8(%esp), %ebp
	leal	10(%esp), %edi
	.p2align 4
	.p2align 3
L999:
	movswl	(%ebx), %ecx
	movswl	136(%esi), %eax
	movl	%ebp, 4(%esp)
	movl	$-1, %edx
	movl	%edi, (%esp)
	call	__Z14ActorFindTracksaiPsS_
	testw	%ax, %ax
	jns	L1002
	addl	$2, %ebx
	cmpl	$__ZZ15FindWanderTrackP4USERE12WanderTracks+20, %ebx
	jne	L999
	addl	$12, %esp
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
L1002:
	.cfi_restore_state
	movzwl	8(%esp), %ecx
	movzwl	10(%esp), %edx
	sall	$16, %ecx
	orl	%ecx, %edx
	movl	%edx, 220(%esi)
	movswl	%ax, %edx
	leal	(%edx,%edx,2), %edx
	orw	$1, _Track+8(,%edx,4)
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
LFE85:
	.p2align 4
	.globl	__Z21InitActorWanderArounds
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
__Z21InitActorWanderArounds:
LFB86:
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
	movswl	24(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	40(%ebx), %eax
	movl	140(%ebx), %edi
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	%ebx, (%esp)
	call	__Z15FindWanderTrackP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L1004
	cwtl
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
L1004:
	addl	$8, %esp
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
LFE86:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "FindNewAngle called with dir=%d!\0"
LC1:
	.ascii "source/sw/src/ai.cpp\0"
	.text
	.p2align 4
	.globl	__Z12FindNewAnglesai
	.def	__Z12FindNewAnglesai;	.scl	2;	.type	32;	.endef
__Z12FindNewAnglesai:
LFB87:
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
	subl	$116, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %eax
	movsbl	12(%ebp), %ebx
	movl	_User(,%eax,4), %edi
	movl	%eax, 104(%esp)
	movl	140(%edi), %esi
	movl	%eax, (%esp)
	movl	%edi, 28(%esp)
	movl	%esi, 96(%esp)
	call	__Z12ActorFlamings
	movl	16(%ebp), %ecx
	movl	%eax, %edx
	movl	16(%ebp), %eax
	sarl	$3, %ecx
	sarl	$2, %eax
	addl	%ecx, %eax
	testb	%dl, %dl
	cmove	16(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	200(%edi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	%eax, 52(%esp)
	cmpb	$-1, %bl
	je	L1011
	cmpb	$1, %bl
	jne	L1012
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$3, %eax
	leal	(%eax,%eax,8), %eax
	leal	__ZZ12FindNewAnglesaiE18toward_angle_delta(%eax,%eax), %eax
	movl	%eax, 108(%esp)
L1013:
	movl	108(%esp), %eax
	movzwl	(%eax), %esi
	cmpw	$-99, %si
	je	L1026
	imull	$44, 104(%esp), %eax
	movl	$500, 88(%esp)
	movl	%eax, 32(%esp)
	movl	$-1, %eax
	movw	%ax, 100(%esp)
	movl	96(%esp), %eax
	addl	$28, %eax
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L1023:
	addw	52(%esp), %si
	movl	28(%esp), %ecx
	andw	$2047, %si
	movw	%si, 102(%esp)
	movl	%esi, %edi
	movl	_sprite, %esi
	movl	%esi, 92(%esp)
	testl	$33816928, 68(%ecx)
	jne	L1018
	movl	20(%esp), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	movl	96(%esp), %eax
	movl	%edx, %ebx
	shrl	$5, %ebx
	addl	$1, _spritechanged(,%ebx,4)
	movw	%di, 28(%eax)
	movswl	100(%ecx), %edi
	movl	32(%esp), %ecx
	leal	(%esi,%ecx), %eax
	movzwl	28(%eax), %edx
	movl	%eax, 80(%esp)
	leal	512(%edx), %ecx
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %esi
	movswl	_sintable(%edx,%edx), %ecx
	movzwl	24(%eax), %edx
	sarl	$6, %esi
	sarl	$6, %ecx
	addl	(%eax), %esi
	addl	4(%eax), %ecx
	movw	%dx, 114(%esp)
	leal	114(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 84(%esp)
	call	_updatesector
	movswl	114(%esp), %edx
	movl	80(%esp), %eax
	movl	%edi, 8(%esp)
	movl	84(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	8(%eax), %eax
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	104(%esp), %eax
	call	__Z9ActorDropsiiiss
	movl	_spritechanged(,%ebx,4), %edi
	movl	%eax, %edx
	leal	1(%edi), %eax
	movzwl	52(%esp), %edi
	movl	%eax, _spritechanged(,%ebx,4)
	movl	96(%esp), %eax
	movw	%di, 28(%eax)
	testb	%dl, %dl
	jne	L1020
L1018:
	movl	104(%esp), %edi
	movl	_User(,%edi,4), %edi
	movl	140(%edi), %ebx
	movlps	104(%edi), %xmm1
	movups	116(%edi), %xmm0
	movl	(%ebx), %eax
	movl	4(%ebx), %esi
	movlps	%xmm1, 60(%esp)
	movups	%xmm0, 36(%esp)
	movl	%eax, 84(%esp)
	movl	8(%ebx), %eax
	movl	%esi, 80(%esp)
	movzwl	28(%ebx), %esi
	movl	%eax, 76(%esp)
	movzwl	24(%ebx), %eax
	movw	%si, 74(%esp)
	leal	28(%ebx), %esi
	movw	%ax, 72(%esp)
	movl	%esi, %edx
	movl	$-1171354717, %eax
	subl	92(%esp), %edx
	mull	%edx
	movzwl	102(%esp), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	imull	16(%ebp), %ecx
	movswl	_sintable(%eax,%eax), %eax
	imull	16(%ebp), %eax
	movl	$1, 16(%esp)
	movl	$81921, 12(%esp)
	sarl	$14, %ecx
	movl	%eax, %edx
	movswl	98(%edi), %eax
	sarl	$14, %edx
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movl	%eax, 4(%esp)
	movl	104(%esp), %eax
	movl	$0, (%esp)
	call	__Z11move_spritesiiiiiji
	movl	(%ebx), %ecx
	movl	%ebx, %edx
	subl	_sprite, %edx
	movlps	60(%esp), %xmm1
	movups	36(%esp), %xmm0
	movl	%eax, 56(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	%ecx, 92(%esp)
	movl	4(%ebx), %ecx
	movl	$-1171354717, %eax
	movl	%ecx, 68(%esp)
	movl	84(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%ecx, (%ebx)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	subl	%ecx, %esi
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	80(%esp), %edx
	movl	%edx, 4(%ebx)
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	76(%esp), %edx
	movl	%edx, 8(%ebx)
	mull	%esi
	movzwl	74(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ebx)
	movzwl	72(%esp), %ebx
	movlps	%xmm1, 104(%edi)
	movups	%xmm0, 116(%edi)
	cmpw	$4096, %bx
	ja	L1021
	movl	32(%esp), %esi
	movzwl	24(%ecx,%esi), %eax
	cmpw	$4096, %ax
	je	L1021
	cmpw	%ax, %bx
	je	L1021
	movl	104(%esp), %edi
	movl	%edi, %eax
	call	_do_deletespritesect
	movswl	%bx, %edx
	movl	%edi, %eax
	call	_do_insertsprite_at_headofsect
L1021:
	movl	96(%esp), %edi
	movl	92(%esp), %edx
	subl	(%edi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	68(%esp), %edx
	subl	4(%edi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpw	$0, 56(%esp)
	je	L1035
	movl	88(%esp), %eax
	cmpl	%ecx, %eax
	cmovge	%eax, %ecx
	movzwl	100(%esp), %eax
	cmovl	102(%esp), %ax
	movl	%ecx, 88(%esp)
	movw	%ax, 100(%esp)
L1020:
	addl	$2, 108(%esp)
	movl	108(%esp), %eax
	movzwl	(%eax), %esi
	cmpw	$-99, %si
	jne	L1023
	cmpw	$-1, 100(%esp)
	je	L1026
	movl	88(%esp), %edi
	movl	96(%esp), %ebx
	cmpw	$4000, %di
	leal	-3500(%edi), %eax
	leal	28(%ebx), %edx
	cmovle	%edi, %eax
	movl	28(%esp), %edi
	subl	_sprite, %edx
	movw	%ax, 214(%edi)
	movl	$-1171354717, %eax
	mull	%edx
	movswl	100(%esp), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
L1009:
	movl	24(%esp), %eax
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
L1012:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1015
L1017:
	movl	$0, 24(%esp)
	movl	24(%esp), %eax
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
L1011:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	movl	104(%esp), %eax
	movzwl	%bx, %ebx
	movl	%ebx, _randomseed
	sarl	$8, %ebx
	movl	%eax, (%esp)
	andl	$3, %ebx
	call	__Z12CanHitPlayers
	testl	%eax, %eax
	je	L1014
	leal	(%ebx,%ebx,8), %eax
	leal	__ZZ12FindNewAnglesaiE18toward_angle_delta(%eax,%eax), %eax
	movl	%eax, 108(%esp)
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1035:
	movl	28(%esp), %eax
	movw	%cx, 214(%eax)
	movl	24(%esp), %eax
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
L1014:
	.cfi_restore_state
	sall	$4, %ebx
	leal	__ZZ12FindNewAnglesaiE16away_angle_delta(%ebx), %eax
	movl	%eax, 108(%esp)
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1015:
	movl	%ebx, 16(%esp)
	movl	$LC0, 12(%esp)
	movl	$1813, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1017
L1026:
	movl	$-1, 24(%esp)
	jmp	L1009
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	__Z19InitActorRepositions
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
__Z19InitActorRepositions:
LFB94:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
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
	movswl	44(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	140(%ebx), %eax
	movw	%dx, 212(%ebx)
	movl	200(%ebx), %edi
	movl	%eax, %ebp
	movl	%eax, 20(%esp)
	movl	_krandcount, %eax
	movl	%eax, 12(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	movl	(%edi), %ecx
	subl	0(%ebp), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	4(%edi), %ecx
	subl	4(%ebp), %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovs	%ecx, %edi
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	sarl	$8, %eax
	movzwl	%cx, %ebp
	movzbl	%ch, %ecx
	andl	$7, %eax
	movl	%ebp, 16(%esp)
	movl	12(%esp), %ebp
	andl	$7, %ecx
	addl	$2, %ebp
	cmpl	%edi, %edx
	movl	%ebp, 12(%esp)
	leal	(%edx,%edi), %ebp
	cmovg	%edi, %edx
	sarl	%edx
	subl	%edx, %ebp
	cmpl	%ebp, __ZZ19InitActorRepositionsE10PlayerDist(,%eax,4)
	movl	12(%esp), %eax
	jg	L1037
	testb	$1, 70(%ebx)
	je	L1038
L1037:
	movl	%eax, _krandcount
	movl	16(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, _randomseed
	movl	__ZZ19InitActorRepositionsE8AwayDist(,%ecx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z12FindNewAnglesai
	movl	%eax, %ecx
	cmpl	$-1, %eax
	je	L1043
	movl	20(%esp), %ebp
	movl	$-1171354717, %eax
	leal	28(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebp)
	movl	$3, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	68(%ebx), %eax
	andl	$-65537, %eax
	movl	%eax, 68(%ebx)
L1041:
	movl	$__Z17DoActorRepositions, 36(%ebx)
	movl	$__Z17DoActorRepositions, %edx
	testl	$262144, %eax
	je	L1052
L1047:
	movl	%esi, (%esp)
	call	*%edx
L1040:
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
L1038:
	.cfi_restore_state
	movl	%eax, _krandcount
	movl	16(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, _randomseed
	movl	__ZZ19InitActorRepositionsE10TowardDist(,%ecx,4), %eax
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	call	__Z12FindNewAnglesai
	movl	%eax, %edx
	movl	%eax, %edi
	movl	_krandcount, %eax
	leal	1(%eax), %ebp
	movl	_randomseed, %eax
	movl	%ebp, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %eax
	movl	%eax, _randomseed
	cmpl	$-1, %edx
	je	L1053
	andb	$2, %ch
	jne	L1045
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
L1044:
	movl	20(%esp), %ebp
	movl	$-1171354717, %eax
	leal	28(%ebp), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ebp)
	movl	68(%ebx), %eax
	jmp	L1041
	.p2align 4,,10
	.p2align 3
L1052:
	movl	40(%ebx), %eax
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	36(%ebx), %edx
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1053:
	sarl	$8, %eax
	movl	$-1, 4(%esp)
	andl	$7, %eax
	movl	%esi, (%esp)
	movl	__ZZ19InitActorRepositionsE8AwayDist(,%eax,4), %eax
	movl	%eax, 8(%esp)
	call	__Z12FindNewAnglesai
	cmpl	$-1, %eax
	je	L1043
	movl	%eax, %edi
	jmp	L1044
	.p2align 4,,10
	.p2align 3
L1043:
	movl	$8, %eax
	movw	%ax, 282(%ebx)
	movl	_User(,%esi,4), %eax
	movl	$__Z12DoActorPauses, 36(%eax)
	movl	_User(,%esi,4), %edx
	subw	$6, 282(%edx)
	jns	L1040
	andl	$-5, 68(%edx)
	movl	$__Z13DoActorDecides, 36(%edx)
	jmp	L1040
	.p2align 4,,10
	.p2align 3
L1045:
	movl	$2, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoActorSetSpeedsh
	jmp	L1044
	.cfi_endproc
LFE94:
	.p2align 4
	.globl	__Z21DoActorCantMoveClosers
	.def	__Z21DoActorCantMoveClosers;	.scl	2;	.type	32;	.endef
__Z21DoActorCantMoveClosers:
LFB95:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movswl	28(%esp), %esi
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	movl	140(%ebx), %edi
	movl	%ebx, (%esp)
	call	__Z17FindTrackToPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L1060
	cwtl
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	%esi, (%esp)
	movl	$2, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	40(%ebx), %eax
	orl	$131072, 68(%ebx)
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1060:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %ebx
	movl	16(%esp), %edi
	movl	%esi, 28(%esp)
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z19InitActorRepositions
	.cfi_endproc
LFE95:
	.p2align 4
	.globl	__Z17DoActorMoveClosers
	.def	__Z17DoActorMoveClosers;	.scl	2;	.type	32;	.endef
__Z17DoActorMoveClosers:
LFB96:
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
	movswl	28(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	140(%esi), %edi
	movswl	28(%edi), %eax
	movswl	32(%edi), %ebp
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	imull	%ebp, %ecx
	movl	%ebx, %eax
	imull	%ebp, %edx
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testl	%eax, %eax
	jne	L1062
	movl	%ebx, (%esp)
	call	__Z17ActorMoveHitReacts
	testb	%al, %al
	je	L1073
L1063:
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
L1062:
	.cfi_restore_state
	movl	44(%esi), %eax
	addl	$1, _krandcount
	movl	8(%eax), %ebp
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	xorl	%eax, %eax
	movzwl	%cx, %ecx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	andw	$1023, %cx
	cmpw	%cx, 0(%ebp)
	jge	L1074
	.p2align 4
	.p2align 4
	.p2align 3
L1064:
	addl	$1, %eax
	movswl	%ax, %edx
	leal	0(%ebp,%edx,8), %edx
	cmpw	(%edx), %cx
	jg	L1064
L1067:
	movl	%ebx, 4(%esp)
	movl	4(%edx), %eax
	movl	%eax, (%esp)
	call	__Z12DoActorNoisePFisEs
	cmpw	$550, 210(%esi)
	jg	L1075
	cmpw	$1536, 212(%esi)
	jle	L1063
L1072:
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 28(%esp)
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
	jmp	__Z13DoActorDecides
	.p2align 4,,10
	.p2align 3
L1075:
	.cfi_restore_state
	xorl	%eax, %eax
	movw	%ax, 210(%esi)
	movl	%ebx, (%esp)
	call	__Z12CanSeePlayers
	testl	%eax, %eax
	je	L1072
	movl	200(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	cmpw	$1536, 212(%esi)
	jle	L1063
	jmp	L1072
	.p2align 4,,10
	.p2align 3
L1073:
	movl	%ebx, 28(%esp)
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
	jmp	__Z21DoActorCantMoveClosers
	.p2align 4,,10
	.p2align 3
L1074:
	.cfi_restore_state
	movl	%ebp, %edx
	jmp	L1067
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z16InitActorRunAways
	.def	__Z16InitActorRunAways;	.scl	2;	.type	32;	.endef
__Z16InitActorRunAways:
LFB97:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movswl	28(%esp), %esi
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	movl	40(%ebx), %eax
	movl	140(%ebx), %edi
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, (%esp)
	call	__Z23FindTrackAwayFromPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L1082
	cwtl
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	%esi, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	orl	$65536, 68(%ebx)
	xorl	%eax, %eax
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1082:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	orl	$65536, 68(%ebx)
	movl	8(%esp), %ebx
	movl	%esi, 28(%esp)
	movl	16(%esp), %edi
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z19InitActorRepositions
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	__Z15InitActorAttacks
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
__Z15InitActorAttacks:
LFB98:
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
	movl	140(%ebx), %edi
	movl	200(%ebx), %edx
	cmpw	$1095, 82(%ebx)
	je	L1114
	testb	$2, 12(%edx)
	jne	L1093
L1087:
	subl	_sprite, %edx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %eax
	testl	%eax, %eax
	je	L1088
L1095:
	cmpw	$0, 84(%eax)
	jle	L1091
L1088:
	movl	%esi, (%esp)
	call	__Z12CanHitPlayers
	testl	%eax, %eax
	je	L1113
	movl	%ebp, 24(%esp)
	movl	200(%ebx), %edx
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	movl	%edx, %eax
	subl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L1090
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L1090
	testb	$2, 22968(%eax)
	jne	L1110
L1090:
	movl	$__Z13DoActorAttacks, 36(%ebx)
	movl	4(%edx), %eax
	subl	4(%edi), %eax
	movl	(%edx), %ecx
	movl	%eax, %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movl	$-1171354717, %edx
	movl	%eax, %ecx
	leal	28(%edi), %eax
	subl	%ebp, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	200(%ebx), %eax
	subl	%ebp, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movzwl	82(%eax), %edi
	cmpw	%di, 82(%ebx)
	je	L1115
L1092:
	movl	40(%ebx), %eax
	movl	52(%eax), %edx
	testl	%edx, %edx
	je	L1094
	cmpw	$37, 84(%ebx)
	jle	L1116
L1094:
	movl	%esi, (%esp)
	call	*36(%ebx)
L1100:
	movl	24(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	12(%esp), %ebx
	xorl	%eax, %eax
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1110:
	.cfi_restore_state
	movl	24(%esp), %ebp
	.cfi_restore 5
L1091:
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
L1113:
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	movl	%esi, 32(%esp)
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z19InitActorRepositions
	.p2align 4,,10
	.p2align 3
L1114:
	.cfi_restore_state
	movl	%edx, %ecx
	subl	_sprite, %ecx
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	sarl	$2, %ecx
	imull	$-1171354717, %ecx, %ecx
	movl	_User(,%ecx,4), %eax
	movl	144(%eax), %ebp
	testl	%ebp, %ebp
	je	L1085
	movswl	30(%edi), %eax
	cmpl	%eax, %ecx
	je	L1100
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	%edx, 8(%esp)
	call	__Z16PlayerTakeDamageP12PLAYERstructs
	movl	8(%esp), %edx
	testb	%al, %al
	je	L1100
	movl	24(%esp), %ebp
	.cfi_restore 5
	testb	$2, 12(%edx)
	je	L1087
L1093:
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	movl	%esi, 32(%esp)
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z16InitActorRunAways
	.p2align 4,,10
	.p2align 3
L1116:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	andl	$1023, %edx
	movl	%ecx, _randomseed
	cmpl	$99, %edx
	jg	L1094
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	52(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1100
	.p2align 4,,10
	.p2align 3
L1115:
	movl	144(%eax), %ecx
	testl	%ecx, %ecx
	jne	L1092
L1111:
	movl	24(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1085:
	.cfi_restore_state
	testb	$2, 12(%edx)
	jne	L1111
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L1095
	.cfi_endproc
LFE98:
	.p2align 4
	.globl	__Z18InitActorRunTowards
	.def	__Z18InitActorRunTowards;	.scl	2;	.type	32;	.endef
__Z18InitActorRunTowards:
LFB99:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	40(%eax), %eax
	movl	4(%eax), %edx
	movl	%ebx, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, (%esp)
	call	__Z19InitActorRepositions
	movl	%ebx, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE99:
	.p2align 4
	.globl	__Z19InitActorFindPlayers
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
__Z19InitActorFindPlayers:
LFB100:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movswl	28(%esp), %esi
	movl	%ebx, 8(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %ebx
	movl	40(%ebx), %eax
	movl	140(%ebx), %edi
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	%ebx, (%esp)
	call	__Z17FindTrackToPlayerP4USER
	movw	%ax, 218(%ebx)
	cmpw	$-1, %ax
	je	L1125
	cwtl
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	(%eax,%eax,2), %ecx
	movswl	220(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_Track(,%ecx,4), %eax
	leal	(%eax,%edx,4), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	%esi, (%esp)
	movl	$2, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	40(%ebx), %eax
	orl	$131072, 68(%ebx)
	movl	$__Z13DoActorDecides, 36(%ebx)
	movl	4(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1125:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %ebx
	movl	16(%esp), %edi
	movl	%esi, 28(%esp)
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z19InitActorRepositions
	.cfi_endproc
LFE100:
	.p2align 4
	.def	__Z13AutoBreakWallP10walltypev7iiiss.isra.0;	.scl	3;	.type	32;	.endef
__Z13AutoBreakWallP10walltypev7iiiss.isra.0:
LFB102:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	xorl	%ecx, %ecx
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
	addl	$26, %eax
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	_wall, %edx
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	movw	%cx, 26(%ebx)
	testw	%ax, %ax
	js	L1127
	sall	$5, %eax
	addl	%edx, %eax
	cmpw	$307, 26(%eax)
	je	L1170
L1127:
	movzwl	18(%ebx), %eax
	testw	%ax, %ax
	jle	L1128
	testb	$16, 14(%ebx)
	jne	L1129
L1128:
	movzwl	16(%ebx), %eax
L1129:
	leal	24(%esp), %edi
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 16(%esp)
	movl	$10, 12(%esp)
	movl	$71, 8(%esp)
	movl	$_WallBreakInfo, 4(%esp)
	movl	%edi, (%esp)
	movw	%ax, 24(%esp)
	call	_bsearch
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1126
	testb	$1, 6(%eax)
	jne	L1171
L1132:
	cmpl	$2147483647, %esi
	je	L1138
	movl	56(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 20(%esp)
	movl	%esi, 24(%esp)
	movl	%eax, 32(%esp)
	xorl	%eax, %eax
	movl	%ebp, 28(%esp)
	movl	$-1171354717, %ebp
	call	__Z17COVERinsertspritess
	movl	_sprite, %esi
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %esi
	addl	$12, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%esi), %edx
	subl	_sprite, %edx
	movw	%ax, 12(%esi)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movw	%ax, 42(%esi)
	movl	%edx, %eax
	mull	%ebp
	movzwl	60(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%esi), %edx
	subl	_sprite, %edx
	movw	%ax, 28(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	$2307, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movw	%ax, 14(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 21(%esi)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 20(%esi)
	movswl	%cx, %esi
	movl	%edi, 4(%esp)
	movl	%esi, (%esp)
	call	_setspritez
	movl	%esi, (%esp)
	movl	20(%esp), %ecx
	movl	$-1, 4(%esp)
	movl	%ecx, _GlobBreakInfo
	call	__Z10SpawnShrapss
	movl	%esi, %eax
	movl	$0, _GlobBreakInfo
	call	__Z10KillSprites
	movl	20(%esp), %ecx
L1138:
	movzwl	2(%ecx), %esi
	movl	_wall, %edx
	cmpw	$0, 18(%ebx)
	jle	L1139
	testb	$16, 14(%ebx)
	je	L1139
	leal	14(%ebx), %edi
	subl	%edx, %edi
	shrl	$5, %edi
	movl	_wallchanged(,%edi,4), %eax
	leal	1(%eax), %ebp
	leal	18(%ebx), %eax
	subl	%edx, %eax
	movl	%ebp, _wallchanged(,%edi,4)
	shrl	$5, %eax
	cmpw	$-1, %si
	je	L1172
	andw	$-66, 14(%ebx)
	movzwl	2(%ecx), %esi
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	movw	%si, 18(%ebx)
	testw	%ax, %ax
	js	L1126
	sall	$5, %eax
	leal	(%edx,%eax), %ebx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	18(%ebx), %eax
	andw	$-66, 14(%ebx)
	subl	%edx, %eax
	movzwl	2(%ecx), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 18(%ebx)
L1126:
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
L1171:
	.cfi_restore_state
	cmpw	$2099, 64(%esp)
	jg	L1133
	cmpw	$2097, 64(%esp)
	jg	L1132
	cmpw	$822, 64(%esp)
	jg	L1134
	cmpw	$816, 64(%esp)
	jle	L1126
	movzwl	64(%esp), %eax
	movl	$41, %edx
	subw	$817, %ax
	btl	%eax, %edx
	jc	L1132
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1170:
	cmpw	$0, 18(%eax)
	jle	L1127
	testb	$16, 14(%eax)
	je	L1127
	leal	26(%eax), %ecx
	subl	%edx, %ecx
	xorl	%edx, %edx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movw	%dx, 26(%eax)
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1139:
	leal	16(%ebx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	movl	_wallchanged(,%eax,4), %edi
	leal	1(%edi), %edx
	cmpw	$-1, %si
	je	L1173
	movl	%edx, _wallchanged(,%eax,4)
	movw	%si, 16(%ebx)
	movzwl	28(%ebx), %esi
	testw	%si, %si
	jns	L1126
	movzwl	_headspritestat+4, %ebx
	cmpw	$-1, %bx
	jne	L1144
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1133:
	cmpw	$3122, 64(%esp)
	jg	L1126
	cmpw	$3099, 64(%esp)
	jg	L1137
	cmpw	$2196, 64(%esp)
	je	L1132
	cmpw	$3072, 64(%esp)
	jne	L1126
	jmp	L1132
	.p2align 4,,10
	.p2align 3
L1174:
	call	__Z10KillSprites
L1146:
	cmpw	$-1, %bx
	je	L1126
L1144:
	movswl	%bx, %edx
	movzwl	_nextspritestat(%edx,%edx), %ebx
	movl	%edx, %eax
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	cmpw	40(%edx), %si
	jne	L1146
	jmp	L1174
	.p2align 4,,10
	.p2align 3
L1173:
	movl	%edx, _wallchanged(,%eax,4)
	movl	$594, %eax
	movw	%ax, 16(%ebx)
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
L1134:
	.cfi_restore_state
	movzwl	64(%esp), %eax
	subw	$2010, %ax
	cmpw	$26, %ax
	ja	L1126
	movl	$67109313, %edx
	btl	%eax, %edx
	jc	L1132
	jmp	L1126
	.p2align 4,,10
	.p2align 3
L1137:
	movzwl	64(%esp), %eax
	movl	$6291617, %edx
	subw	$3100, %ax
	btl	%eax, %edx
	jnc	L1126
	jmp	L1132
	.p2align 4,,10
	.p2align 3
L1172:
	andw	$-114, 14(%ebx)
	xorl	%ecx, %ecx
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	movw	%cx, 18(%ebx)
	testw	%ax, %ax
	js	L1126
	sall	$5, %eax
	leal	(%edx,%eax), %ecx
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	18(%ecx), %eax
	subl	%edx, %eax
	xorl	%edx, %edx
	andw	$-114, 14(%ecx)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%dx, 18(%ecx)
	jmp	L1126
	.cfi_endproc
LFE102:
	.p2align 4
	.def	__Z15KillBreakSprites.isra.0;	.scl	3;	.type	32;	.endef
__Z15KillBreakSprites.isra.0:
LFB109:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	_User(,%ebx,4), %esi
	movl	_sprite, %edi
	movl	%ebx, (%esp)
	call	__Z17SpriteQueueDeletes
	testl	%esi, %esi
	je	L1176
	imull	$44, %ebx, %eax
	cmpw	$0, 26(%edi,%eax)
	jne	L1177
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z10KillSprites
	.p2align 4,,10
	.p2align 3
L1177:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z10SetSuicides
	addl	$4, %esp
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
L1176:
	.cfi_restore_state
	addl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	movl	$48, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z18change_sprite_statss
	.cfi_endproc
LFE109:
	.p2align 4
	.globl	__Z10SetupBunnys
	.def	__Z10SetupBunnys;	.scl	2;	.type	32;	.endef
__Z10SetupBunnys:
LFB110:
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
	movl	_sprite, %ebp
	movswl	36(%esp), %edi
	imull	$44, %edi, %esi
	addl	%ebp, %esi
	testb	$16, 13(%esi)
	je	L1182
	movl	_User(,%edi,4), %ebx
	movl	%ebx, %eax
L1183:
	addw	$1, _Bunny_Count
	testl	%eax, %eax
	je	L1184
	movl	$0, 76(%eax)
	movl	$_s_BunnyRun, 24(%eax)
	movl	$_s_BunnyRun, 16(%eax)
	movswl	_s_BunnyRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L1184
	andl	$63, %eax
	movb	%al, 3(%edx)
L1184:
	leal	18(%esi), %ecx
	xorl	%eax, %eax
	movl	$_s_BunnyDie, 28(%ebx)
	movl	%ecx, %edx
	movw	%ax, 280(%ebx)
	subl	%ebp, %edx
	movl	$-1171354717, %ebp
	movl	$_sg_BunnyRun, 20(%ebx)
	movl	$0, 276(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	17(%esi), %eax
	movb	$37, 18(%esi)
	cmpb	$17, %al
	je	L1196
	movl	$_BunnyPersonality, 8(%esp)
	movl	$_BunnyActionSet, 4(%esp)
	movl	%edi, (%esp)
	cmpb	$24, %al
	je	L1197
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	leal	17(%esi), %edx
	subl	_sprite, %edx
	movl	$_BunnyAttrib, 48(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 17(%esi)
	movb	$16, 262(%ebx)
	movl	$600, 268(%ebx)
L1186:
	movl	%edi, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	$4096, %eax
	orl	$16777216, 68(%ebx)
	movw	%ax, 100(%ebx)
	xorl	%eax, %eax
	movl	$4096, 112(%ebx)
	movl	$134219776, 96(%ebx)
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
L1182:
	.cfi_restore_state
	movl	$_s_BunnyRun, %ecx
	movl	$4550, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %ebp
	movl	%eax, _User(,%edi,4)
	movl	%eax, %ebx
	movl	$10, %eax
	movw	%ax, 84(%ebx)
	movl	_User(,%edi,4), %eax
	jmp	L1183
	.p2align 4,,10
	.p2align 3
L1197:
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	$_BunnyAttrib, 48(%ebx)
	testb	$16, 13(%esi)
	jne	L1188
	movl	$20, %edx
	movw	%dx, 84(%ebx)
L1188:
	movl	$0, 268(%ebx)
	jmp	L1186
	.p2align 4,,10
	.p2align 3
L1196:
	movl	$_WhiteBunnyPersonality, 8(%esp)
	movl	$_BunnyWhiteActionSet, 4(%esp)
	movl	%edi, (%esp)
	movl	%ecx, 12(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	$_WhiteBunnyAttrib, 48(%ebx)
	movl	%edx, %eax
	movl	12(%esp), %ecx
	subl	_sprite, %ecx
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$96, 20(%esi)
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	movb	$90, 21(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$50, 18(%esi)
	testb	$16, 13(%esi)
	jne	L1186
	movl	$60, %ecx
	movw	%cx, 84(%ebx)
	jmp	L1186
	.cfi_endproc
LFE110:
	.p2align 4
	.globl	__Z15DoBunnyMoveJumps
	.def	__Z15DoBunnyMoveJumps;	.scl	2;	.type	32;	.endef
__Z15DoBunnyMoveJumps:
LFB111:
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
	testb	$96, 68(%esi)
	jne	L1206
L1199:
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	testb	$96, 68(%esi)
	je	L1207
L1201:
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
L1206:
	.cfi_restore_state
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movswl	32(%eax), %edx
	movswl	28(%eax), %eax
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %ecx
	imull	%eax, %edx
	movl	%ebx, %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	call	__Z10move_actorsiii.constprop.0
	testb	$32, 68(%esi)
	movl	%ebx, (%esp)
	je	L1200
	call	__Z11DoActorJumps
	movl	%ebx, (%esp)
	call	__Z13DoActorZranges
	testb	$96, 68(%esi)
	jne	L1201
L1207:
	movl	_User(,%ebx,4), %eax
	movl	$__Z13DoActorDecides, 36(%eax)
	movl	%ebx, 16(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z13DoActorDecides
	.p2align 4,,10
	.p2align 3
L1200:
	.cfi_restore_state
	call	__Z11DoActorFalls
	jmp	L1199
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__Z22DoBunnyBeginJumpAttacks
	.def	__Z22DoBunnyBeginJumpAttacks;	.scl	2;	.type	32;	.endef
__Z22DoBunnyBeginJumpAttacks:
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
	je	L1209
	movswl	28(%esi), %ebp
	movl	28(%esp), %eax
	addl	$1024, %ebp
	andl	$2047, %ebp
	leal	-256(%eax,%ebp), %ebp
L1210:
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
L1209:
	.cfi_restore_state
	movl	28(%esp), %eax
	leal	-256(%eax,%ebp), %ebp
	andl	$2047, %ebp
	jmp	L1210
	.cfi_endproc
LFE112:
	.p2align 4
	.globl	__Z11BunnyHatch2s
	.def	__Z11BunnyHatch2s;	.scl	2;	.type	32;	.endef
__Z11BunnyHatch2s:
LFB113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
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
	movswl	60(%esp), %edi
	imull	$44, %edi, %edi
	addl	_sprite, %edi
	movswl	24(%edi), %eax
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
L1213:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1213
	movzwl	24(%edi), %eax
	leal	26(%ebx), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ebp
	movw	%ax, 24(%ebx)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	movw	%ax, 26(%ebx)
	movl	(%edi), %eax
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	movl	_sprite, %ecx
	addl	$1, _krandcount
	movl	%eax, 4(%ebx)
	movl	8(%edi), %eax
	subl	%ecx, %edx
	movl	%eax, 8(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 30(%ebx)
	leal	20(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	leal	21(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$30, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	movb	$24, 21(%ebx)
	movl	%esi, %eax
	andl	$2047, %esi
	andl	$65535, %eax
	movl	%eax, _randomseed
	leal	28(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	movw	%si, 28(%ebx)
	movl	%edx, 20(%esp)
	subl	%ecx, %edx
	movl	12(%esp), %esi
	movl	%edx, %eax
	mull	%ebp
	movswl	%si, %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 17(%ebx)
	movl	%eax, (%esp)
	call	__Z10SetupBunnys
	movzbl	16(%edi), %eax
	movl	_User(,%esi,4), %esi
	movb	%al, 16(%ebx)
	movl	_krandcount, %eax
	orl	$8, 68(%esi)
	movl	%eax, 36(%esp)
	addl	$1, %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	_sprite, %eax
	movl	20(%esp), %edx
	movzwl	%cx, %ecx
	subl	%eax, %edx
	movl	%eax, 16(%esp)
	movl	%edx, %eax
	movl	%ecx, _randomseed
	mull	%ebp
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ebp
	cmpl	$65535, %ecx
	je	L1224
	sall	$14, %ecx
	cmpl	$537936224, %ecx
	ja	L1224
	movl	$24, %eax
	xorl	%ecx, %ecx
L1215:
	movl	%ebp, _spritechanged(,%edx,4)
	movl	8(%esp), %ebp
	movb	%al, 17(%ebx)
	movb	%al, 262(%esi)
	movl	40(%esi), %eax
	movl	%ecx, 268(%esi)
	movl	$0, 276(%esi)
	movl	8(%eax), %edx
	movl	%ebp, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z15DoActorMoveJumps, 36(%esi)
	movl	$3, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z15DoActorSetSpeedsh
	testb	$1, 43(%edi)
	je	L1216
	movl	_randomseed, %eax
	movl	$-1199, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1217
	movl	$629155341, %ecx
	sall	$13, %eax
	mull	%ecx
	movl	$-600, %ecx
	shrl	$17, %edx
	subl	%edx, %ecx
L1217:
	movl	8(%esp), %eax
	movswl	%cx, %ecx
	movl	$-1171354717, %edi
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	16(%esp), %ebp
	movl	28(%esp), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movb	$64, 21(%ebx)
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movb	$64, 20(%ebx)
	leal	32(%ebx), %edx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L1218
	subl	%ebp, %edx
	movl	$1, %ebp
	movl	%edx, %eax
	mull	%edi
	movl	$524296215, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	sall	$14, %edx
	mull	%edx
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %edi
	movzwl	%di, %edi
	shrl	$17, %edx
	addl	$150, %edx
	movw	%dx, 32(%ebx)
	movw	%bp, 84(%esi)
	movl	$127, %ebp
	cmpl	$65535, %edi
	jne	L1222
L1219:
	movl	$-1171354717, %eax
	movl	24(%esp), %ecx
	subl	16(%esp), %ecx
	mull	%ecx
	movl	36(%esp), %eax
	addl	$5, %eax
	movl	%eax, _krandcount
	leal	(%edi,%edi,4), %eax
	movl	%edx, %ecx
	movl	$127, %edx
	leal	1(%edi,%eax,4), %eax
	shrl	$5, %ecx
	movzwl	%ax, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	%eax, _randomseed
	subw	%bp, 28(%ebx)
	cmpl	$65535, %eax
	je	L1220
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$22, %edx
L1220:
	addl	$1, _spritechanged(,%ecx,4)
	addw	%dx, 28(%ebx)
	jmp	L1221
	.p2align 4,,10
	.p2align 3
L1216:
	movl	8(%esp), %eax
	movl	$-600, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PickJumpMaxSpeedss
L1221:
	movl	$75000, 132(%esi)
	movl	68(%esi), %eax
	xorl	%edx, %edx
	movw	%dx, 280(%esi)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%esi)
	movl	$8, %eax
	movw	%ax, 94(%esi)
	movl	8(%esp), %esi
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	movl	%esi, (%esp)
	call	__Z11DoActorJumps
	movl	12(%esp), %eax
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
L1224:
	.cfi_restore_state
	movl	$16, %eax
	movl	$600, %ecx
	jmp	L1215
	.p2align 4,,10
	.p2align 3
L1218:
	subl	16(%esp), %edx
	movl	$1149, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$1, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
	movw	%di, 84(%esi)
	movl	$65516, %edi
L1222:
	movl	%edi, %ebp
	movl	$-2147450879, %eax
	sall	$14, %ebp
	mull	%ebp
	movl	%edx, %ebp
	shrl	$22, %ebp
	jmp	L1219
	.cfi_endproc
LFE113:
	.section .rdata,"dr"
LC3:
	.ascii "source/sw/src/bunny.cpp\0"
	.text
	.p2align 4
	.globl	__Z16DoBunnyQuickJumps
	.def	__Z16DoBunnyQuickJumps;	.scl	2;	.type	32;	.endef
__Z16DoBunnyQuickJumps:
LFB114:
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
	subl	$84, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movl	_User(,%esi,4), %ebx
	cmpb	$24, 262(%ebx)
	jne	L1238
	movl	_sprite, %edx
	movl	128(%ebx), %edi
	movl	%edx, 64(%esp)
	testl	%edi, %edi
	je	L1298
L1237:
	movl	%edi, %eax
	subl	64(%esp), %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, 56(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 60(%esp)
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1238
	cmpw	$4550, 82(%eax)
	je	L1299
	.p2align 4
	.p2align 3
L1238:
	xorl	%eax, %eax
L1234:
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
L1298:
	.cfi_restore_state
	cmpb	$0, _MoveSkip4
	je	L1238
	movl	%esi, (%esp)
	call	__Z16DoPickCloseBunnys
	movl	128(%ebx), %edi
	movl	64(%esp), %edx
	testl	%edi, %edi
	je	L1238
	movl	_sprite, %eax
	movl	%eax, 64(%esp)
	jmp	L1237
	.p2align 4,,10
	.p2align 3
L1299:
	imull	$44, %esi, %eax
	addl	%eax, %edx
	cmpb	$64, 20(%edx)
	jne	L1238
	movl	%edx, 52(%esp)
	cmpb	$64, 21(%edx)
	jne	L1238
	cmpb	$64, 20(%edi)
	jne	L1238
	cmpb	$64, 21(%edi)
	jne	L1238
	movl	52(%esp), %eax
	movzbl	262(%ecx), %edx
	cmpb	17(%eax), %dl
	je	L1300
L1239:
	cmpb	$24, 262(%ebx)
	jne	L1238
	movl	60(%esp), %eax
	movl	276(%eax), %edx
	testl	%edx, %edx
	jg	L1238
	cmpw	$0, 216(%eax)
	jg	L1238
	cmpw	$0, 216(%ebx)
	jg	L1238
	testb	$8, 43(%edi)
	je	L1238
	movl	$1000, %eax
	call	__Z11RandomRangei
	cmpl	$994, %eax
	jg	L1244
	movl	60(%esp), %eax
	cmpb	$16, 262(%eax)
	jne	L1238
L1244:
	movl	%esi, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebx), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %ecx
	movl	60(%esp), %eax
	movl	%ecx, 64(%esp)
	cmpb	$16, 262(%eax)
	je	L1245
	cmpl	$0, 268(%eax)
	jg	L1238
	movw	$1, 280(%eax)
	movl	$1200, 268(%eax)
	testl	%ecx, %ecx
	je	L1246
	movl	$456, %eax
	movl	$457, %edx
	movl	%eax, 68(%esp)
	imull	$24124, _myconnectindex, %eax
	movl	%edx, 72(%esp)
	addl	$_Player, %eax
	cmpl	%eax, %ecx
	je	L1301
L1246:
	movl	(%edi), %eax
	movl	52(%esp), %edx
	movl	$44, %ecx
	movl	%eax, (%edx)
	movl	4(%edi), %eax
	movl	%eax, 4(%edx)
	movzwl	28(%edi), %eax
	movw	%ax, 28(%edx)
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, 64(%esp)
	leal	28(%edx), %eax
	xorl	%edx, %edx
	subl	_sprite, %eax
	divl	%ecx
	movl	52(%esp), %edx
	movzwl	64(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 28(%edx)
	movl	$2000, 4(%esp)
	movl	%esi, (%esp)
	call	__Z18HelpMissileLateralsi
	movzwl	28(%edi), %eax
	movl	52(%esp), %edx
	movl	60(%esp), %ecx
	movw	%ax, 28(%edx)
	movl	$_sg_BunnyScrew, %edx
	movw	%ax, 282(%ebx)
	movzwl	28(%edi), %eax
	movw	%ax, 282(%ecx)
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	56(%esp), %eax
	movl	$_sg_BunnyScrew, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	cmpb	$0, _gs+40
	je	L1265
	movl	52(%esp), %esi
	movl	$44, %ecx
	xorl	%edx, %edx
	leal	12(%esi), %eax
	subl	_sprite, %eax
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	leal	12(%edi), %eax
	subl	_sprite, %eax
	divl	%ecx
	orw	$-32768, 12(%esi)
	addl	$1, _spritechanged(,%eax,4)
	orw	$-32768, 12(%edi)
L1265:
	movl	60(%esp), %eax
	movw	$1200, 216(%eax)
	movw	$1200, 216(%ebx)
L1243:
	movl	$1, %eax
	jmp	L1234
	.p2align 4,,10
	.p2align 3
L1300:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1240
	sall	$14, %eax
	cmpl	$1069430099, %eax
	jbe	L1239
L1240:
	cmpb	$24, 262(%ebx)
	jne	L1239
	cmpb	$24, %dl
	jne	L1239
	movl	52(%esp), %eax
	xorl	%edx, %edx
	leal	8(%eax), %ecx
	movl	%ecx, 44(%esp)
	subl	64(%esp), %ecx
	movl	%ecx, %eax
	movl	$44, %ecx
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	52(%esp), %eax
	leal	4(%eax), %edx
	movl	%edx, 48(%esp)
	subl	64(%esp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	xorl	%edx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	52(%esp), %eax
	subl	64(%esp), %eax
	divl	%ecx
	movl	44(%esp), %edx
	movl	48(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	$424, %eax
	movl	%edx, (%esp)
	movl	52(%esp), %edx
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	leal	8(%edi), %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	movl	%eax, 52(%esp)
	subl	_sprite, %eax
	divl	%ecx
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%edi), %eax
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 64(%esp)
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edi, %edx
	subl	_sprite, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	64(%esp), %ecx
	movl	%edi, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	52(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	movl	$426, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	60(%esp), %eax
	movl	56(%esp), %edi
	movl	$-1, %ecx
	movl	$1, %edx
	movw	$0, 84(%eax)
	movl	%edi, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L1241
	movl	%edi, (%esp)
	call	__Z10SetSuicides
L1242:
	subw	$1, _Bunny_Count
	xorl	%ecx, %ecx
	movl	%ecx, 128(%ebx)
	jmp	L1243
L1245:
	cmpl	$0, 64(%esp)
	je	L1246
	movl	$1000, %eax
	call	__Z11RandomRangei
	cmpl	$200, %eax
	jle	L1246
	movl	$452, %eax
	movl	$453, %edx
	movl	$454, 76(%esp)
	movl	%eax, 68(%esp)
	imull	$24124, _myconnectindex, %eax
	movl	%edx, 72(%esp)
	addl	$_Player, %eax
	cmpl	%eax, 64(%esp)
	jne	L1246
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movzwl	268(%eax), %ecx
	movw	%cx, 38(%esp)
	movl	8(%eax), %ecx
	movl	%ecx, 32(%esp)
	movl	4(%eax), %ecx
	movl	(%eax), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	52(%esp), %eax
	movzwl	24(%eax), %ecx
	movzbl	21(%eax), %edx
	movw	%cx, 36(%esp)
	movswl	14(%eax), %ecx
	movb	%dl, 48(%esp)
	movl	8(%eax), %edx
	movl	%ecx, 44(%esp)
	movswl	_tilesiz+2(,%ecx,4), %ecx
	movl	%edx, 40(%esp)
	testb	$-128, 12(%eax)
	je	L1257
	movl	%ecx, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	48(%esp), %eax
	imull	%ecx, %eax
	movl	40(%esp), %ecx
	addl	%eax, %eax
	cmpb	$64, 48(%esp)
	cmove	%edx, %eax
	imull	$5, 44(%esp), %edx
	movsbl	_picanm+2(%edx), %edx
	sall	$8, %edx
	addl	%edx, %eax
	subl	%eax, %ecx
L1260:
	movl	52(%esp), %eax
	movl	4(%eax), %edx
	movswl	38(%esp), %eax
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	52(%esp), %eax
	movl	(%eax), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1246
	movl	200(%ebx), %eax
	movl	52(%esp), %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%eax, %ecx
	movw	%ax, 48(%esp)
	movl	200(%ebx), %eax
	movl	%ecx, 44(%esp)
	movswl	28(%eax), %edx
	movl	%edx, %eax
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	$1024, %edx
	jle	L1263
	movl	44(%esp), %ecx
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovge	48(%esp), %dx
	movw	%dx, 48(%esp)
L1263:
	subl	48(%esp), %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	$511, %ax
	ja	L1246
	movl	20(%esp), %eax
	movl	$32766, %edx
	movl	$699029, %ecx
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	sall	$14, %eax
	divl	%ecx
	movl	64(%esp), %edx
	sarl	$8, %eax
	movl	68(%esp,%eax,4), %ecx
	leal	8(%edx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, %eax
	movl	%edx, (%esp)
	movl	$1071, %edx
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L1246
L1257:
	movzbl	48(%esp), %eax
	movl	%ecx, %edx
	sall	$8, %edx
	imull	%ecx, %eax
	movl	40(%esp), %ecx
	sall	$2, %eax
	cmpb	$64, 48(%esp)
	cmove	%edx, %eax
	subl	%eax, %ecx
	jmp	L1260
L1301:
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	movl	%eax, 20(%esp)
	movl	%ecx, %eax
	movzwl	268(%ecx), %ecx
	movw	%cx, 38(%esp)
	movl	8(%eax), %ecx
	movl	%ecx, 32(%esp)
	movl	4(%eax), %ecx
	movl	(%eax), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	movl	52(%esp), %eax
	movzwl	24(%eax), %ecx
	movzbl	21(%eax), %edx
	movw	%cx, 36(%esp)
	movswl	14(%eax), %ecx
	movb	%dl, 48(%esp)
	movl	8(%eax), %edx
	movl	%ecx, 44(%esp)
	movswl	_tilesiz+2(,%ecx,4), %ecx
	movl	%edx, 40(%esp)
	testb	$-128, 12(%eax)
	je	L1248
	movl	%ecx, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movzbl	48(%esp), %eax
	imull	%ecx, %eax
	movl	40(%esp), %ecx
	addl	%eax, %eax
	cmpb	$64, 48(%esp)
	cmove	%edx, %eax
	imull	$5, 44(%esp), %edx
	movsbl	_picanm+2(%edx), %edx
	sall	$8, %edx
	addl	%edx, %eax
	subl	%eax, %ecx
L1251:
	movl	52(%esp), %eax
	movl	4(%eax), %edx
	movswl	38(%esp), %eax
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	36(%esp), %eax
	movl	%eax, (%esp)
	movl	52(%esp), %eax
	movl	(%eax), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L1246
	movl	200(%ebx), %eax
	movl	52(%esp), %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	movl	%eax, %ecx
	movw	%ax, 48(%esp)
	movl	200(%ebx), %eax
	movl	%ecx, 44(%esp)
	movswl	28(%eax), %edx
	movl	%edx, %eax
	subl	%ecx, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	$1024, %edx
	jle	L1254
	movl	44(%esp), %ecx
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovge	48(%esp), %dx
	movw	%dx, 48(%esp)
L1254:
	subl	48(%esp), %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	$511, %ax
	ja	L1246
	movl	20(%esp), %eax
	movl	$32766, %edx
	movl	$1048544, %ecx
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	sall	$14, %eax
	divl	%ecx
	movl	64(%esp), %edx
	sarl	$8, %eax
	movl	68(%esp,%eax,4), %ecx
	leal	8(%edx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	leal	4(%edx), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, %eax
	movl	%edx, (%esp)
	movl	$1055, %edx
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0
	jmp	L1246
L1248:
	movzbl	48(%esp), %eax
	movl	%ecx, %edx
	sall	$8, %edx
	imull	%ecx, %eax
	movl	40(%esp), %ecx
	sall	$2, %eax
	cmpb	$64, 48(%esp)
	cmove	%edx, %eax
	subl	%eax, %ecx
	jmp	L1251
L1241:
	movl	56(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z10DoActorDiess
	jmp	L1242
	.cfi_endproc
LFE114:
	.p2align 4
	.globl	__Z10DoBunnyEats
	.def	__Z10DoBunnyEats;	.scl	2;	.type	32;	.endef
__Z10DoBunnyEats:
LFB116:
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
	movl	_User(,%ebx,4), %edi
	imull	$44, %ebx, %esi
	addl	_sprite, %esi
	movl	68(%edi), %eax
	testb	$96, %al
	jne	L1340
L1303:
	movl	%ebx, (%esp)
	call	__Z16DoBunnyQuickJumps
	movl	68(%edi), %eax
	testl	$2097152, %eax
	jne	L1315
	testb	$96, %al
	jne	L1308
L1341:
	movl	%ebx, (%esp)
	call	__Z16KeepActorOnFloors
L1308:
	movl	%ebx, (%esp)
	call	__Z19DoActorSectorDamages
	movswl	24(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	24(%eax), %eax
	cmpw	$2636, %ax
	je	L1309
	jg	L1310
	cmpw	$193, %ax
	je	L1309
	jg	L1311
	subw	$153, %ax
	cmpw	$1, %ax
	jbe	L1309
L1312:
	movl	%ebx, %eax
	movl	$_sg_BunnyRun, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
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
L1310:
	.cfi_restore_state
	cmpw	$2689, %ax
	je	L1309
	subw	$3561, %ax
	cmpw	$3, %ax
	ja	L1312
L1309:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1312
	sall	$14, %eax
	cmpl	$1042586974, %eax
	ja	L1312
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
L1340:
	.cfi_restore_state
	movl	%ebx, (%esp)
	testb	$32, %al
	je	L1304
	call	__Z11DoActorJumps
L1305:
	movl	68(%edi), %eax
	testb	$96, %al
	je	L1303
	testl	$2097152, %eax
	je	L1308
L1315:
	movl	%ebx, (%esp)
	call	__Z12DoActorSlides
	movl	68(%edi), %eax
	testb	$96, %al
	je	L1341
	jmp	L1308
	.p2align 4,,10
	.p2align 3
L1304:
	call	__Z11DoActorFalls
	jmp	L1305
	.p2align 4,,10
	.p2align 3
L1311:
	cmpw	$219, %ax
	jne	L1312
	jmp	L1309
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	__Z10BunnyHatchs
	.def	__Z10BunnyHatchs;	.scl	2;	.type	32;	.endef
__Z10BunnyHatchs:
LFB117:
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
	addl	$1, _krandcount
	movswl	44(%esp), %eax
	movl	%eax, 8(%esp)
	imull	$44, %eax, %edi
	movl	_User(,%eax,4), %eax
	addl	_sprite, %edi
	movl	%eax, 16(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	xorl	%edx, %edx
	movl	%esi, %eax
	andl	$65535, %eax
	movl	%eax, _randomseed
	movswl	24(%edi), %eax
	call	__Z17COVERinsertspritess
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	%eax, %ebp
	xorl	%eax, %eax
	movl	$0, 28(%ecx)
	movl	$0, 32(%ecx)
	movl	$0, 36(%ecx)
	movl	$0, 40(%ecx)
L1343:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L1343
	movzwl	24(%edi), %eax
	leal	26(%ecx), %edx
	subl	_sprite, %edx
	xorl	%ebx, %ebx
	andw	$2047, %si
	movl	%ecx, 20(%esp)
	movw	%ax, 24(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	movw	%bx, 26(%ecx)
	movl	(%edi), %eax
	movl	%eax, (%ecx)
	movl	4(%edi), %eax
	movl	_sprite, %ebx
	movl	%eax, 4(%ecx)
	movl	8(%edi), %eax
	subl	%ebx, %edx
	movl	%eax, 8(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	movw	%ax, 30(%ecx)
	subl	%ebx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebx, %edx
	movb	$30, 20(%ecx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movb	$24, 21(%ecx)
	mull	%edx
	leal	17(%ecx), %eax
	movl	%eax, 12(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	movw	%si, 28(%ecx)
	movswl	%bp, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 17(%ecx)
	movl	%esi, (%esp)
	call	__Z10SetupBunnys
	movzbl	16(%edi), %eax
	movl	_User(,%ebp,4), %ebx
	movl	20(%esp), %ecx
	movl	_krandcount, %ebp
	movb	%al, 16(%ecx)
	leal	1(%ebp), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	orl	$8, 68(%ebx)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edi
	movl	12(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movzwl	%di, %edi
	movl	%edi, _randomseed
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 12(%esp)
	movl	12(%esp), %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$65535, %edi
	je	L1345
	movl	%edi, %eax
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L1345
	leal	(%edi,%edi,4), %eax
	addl	$2, %ebp
	movb	$24, 17(%ecx)
	leal	1(%edi,%eax,4), %eax
	movb	$24, 262(%ebx)
	movzwl	%ax, %eax
	movl	%ebp, _krandcount
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1348
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L1348
L1347:
	movl	$0, 276(%ebx)
	movl	40(%ebx), %eax
	movl	8(%eax), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$__Z15DoActorMoveJumps, 36(%ebx)
	movl	%esi, (%esp)
	movl	$3, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	movl	%esi, (%esp)
	movl	$-600, 4(%esp)
	call	__Z16PickJumpMaxSpeedss
	movl	68(%ebx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%ebx)
	movl	$8, %eax
	movw	%ax, 94(%ebx)
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	movl	%esi, 44(%esp)
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
	jmp	__Z11DoActorJumps
	.p2align 4,,10
	.p2align 3
L1348:
	.cfi_restore_state
	movl	16(%esp), %eax
	xorl	%edx, %edx
	movl	8(%esp), %edi
	movl	$-1, %ecx
	subw	$1, _Bunny_Count
	movw	%dx, 84(%eax)
	movl	$1, %edx
	movl	%edi, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L1349
	movl	%edi, (%esp)
	call	__Z10SetSuicides
	jmp	L1347
	.p2align 4,,10
	.p2align 3
L1345:
	movb	$16, 17(%ecx)
	movb	$16, 262(%ebx)
	jmp	L1347
	.p2align 4,,10
	.p2align 3
L1349:
	movl	8(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z10DoActorDiess
	jmp	L1347
	.cfi_endproc
LFE117:
	.p2align 4
	.globl	__Z13DoBunnyGrowUps
	.def	__Z13DoBunnyGrowUps;	.scl	2;	.type	32;	.endef
__Z13DoBunnyGrowUps:
LFB118:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movswl	32(%esp), %edi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	addl	%ecx, %ebx
	cmpb	$17, 17(%ebx)
	je	L1359
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %esi
	movzwl	176(%esi), %eax
	subl	$6, %eax
	movw	%ax, 176(%esi)
	testw	%ax, %ax
	jle	L1371
	cmpb	$16, 17(%ebx)
	je	L1365
L1363:
	movl	268(%esi), %eax
	testl	%eax, %eax
	jle	L1370
	subl	$6, %eax
	movl	%eax, 268(%esi)
	cmpb	$16, 17(%ebx)
	je	L1365
L1370:
	movl	16(%esp), %esi
	.cfi_restore 6
L1359:
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1371:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	20(%ebx), %eax
	addl	$1, %eax
	movb	%al, 20(%ebx)
	cmpb	$64, %al
	jbe	L1361
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 20(%ebx)
L1361:
	leal	21(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%ebx), %eax
	addl	$1, %eax
	movb	%al, 21(%ebx)
	cmpb	$64, %al
	jbe	L1362
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 21(%ebx)
L1362:
	movl	$60, %edx
	movw	%dx, 176(%esi)
	cmpb	$16, 17(%ebx)
	jne	L1363
L1365:
	movl	276(%esi), %eax
	testl	%eax, %eax
	jle	L1370
	movl	268(%esi), %eax
	subl	$6, %eax
	movl	%eax, 268(%esi)
	testl	%eax, %eax
	jg	L1370
	cmpw	$19, _Bunny_Count
	jle	L1372
L1366:
	movl	$0, 276(%esi)
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1359
	.p2align 4,,10
	.p2align 3
L1372:
	.cfi_restore_state
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	leal	8(%ebx), %ebp
	movl	$-1171354717, %eax
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	8(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$426, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%edi, (%esp)
	call	__Z10BunnyHatchs
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L1366
	.cfi_endproc
LFE118:
	.p2align 4
	.globl	__Z9BunnySpews
	.def	__Z9BunnySpews;	.scl	2;	.type	32;	.endef
__Z9BunnySpews:
LFB119:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	$-1, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	__Z11DoBunnyMoves
	.def	__Z11DoBunnyMoves;	.scl	2;	.type	32;	.endef
__Z11DoBunnyMoves:
LFB120:
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
	movl	_sprite, %eax
	movswl	20(%esp), %esi
	imull	$44, %esi, %edi
	movl	_User(,%esi,4), %ebx
	addl	%eax, %edi
	cmpw	$0, 12(%edi)
	jns	L1375
	leal	12(%edi), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%edi)
L1375:
	cmpw	$0, 84(%ebx)
	jle	L1415
L1376:
	cmpw	$0, 204(%ebx)
	jne	L1416
L1377:
	movl	68(%ebx), %eax
	testb	$96, %al
	jne	L1417
L1378:
	movl	%esi, (%esp)
	call	__Z16DoBunnyQuickJumps
	movl	68(%ebx), %eax
	testl	$2097152, %eax
	jne	L1418
L1382:
	cmpw	$0, 218(%ebx)
	jns	L1419
L1383:
	movl	%esi, (%esp)
	call	*36(%ebx)
	testb	$96, 68(%ebx)
	je	L1420
L1385:
	movl	%esi, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_krandcount, %edx
	leal	1(%edx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1386
	movl	%eax, %ecx
	sall	$14, %ecx
	cmpl	$1058692849, %ecx
	ja	L1386
L1387:
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
L1417:
	.cfi_restore_state
	movl	%esi, (%esp)
	testb	$32, %al
	jne	L1421
	call	__Z11DoActorFalls
L1380:
	movl	68(%ebx), %eax
	testb	$96, %al
	je	L1378
	testl	$2097152, %eax
	je	L1382
L1418:
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	cmpw	$0, 218(%ebx)
	js	L1383
L1419:
	movl	%esi, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	testb	$96, 68(%ebx)
	jne	L1385
L1420:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L1385
	.p2align 4,,10
	.p2align 3
L1386:
	cmpb	$17, 17(%edi)
	je	L1387
	cmpw	$0, 218(%ebx)
	jns	L1387
	movswl	24(%edi), %ecx
	leal	(%ecx,%ecx,4), %ecx
	sall	$3, %ecx
	addl	_sector, %ecx
	movzwl	24(%ecx), %ecx
	cmpw	$2636, %cx
	je	L1388
	jg	L1389
	cmpw	$193, %cx
	je	L1388
	jg	L1390
	subw	$153, %cx
	cmpw	$1, %cx
	ja	L1391
	.p2align 4
	.p2align 3
L1388:
	movl	$_sg_BunnyStand, %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L1387
	.p2align 4,,10
	.p2align 3
L1421:
	call	__Z11DoActorJumps
	jmp	L1380
	.p2align 4,,10
	.p2align 3
L1416:
	movl	%esi, (%esp)
	call	__Z13DoScaleSprites
	jmp	L1377
	.p2align 4,,10
	.p2align 3
L1415:
	movl	%esi, (%esp)
	call	__Z10SetSuicides
	jmp	L1376
	.p2align 4,,10
	.p2align 3
L1389:
	cmpw	$2689, %cx
	je	L1388
	subw	$3561, %cx
	cmpw	$3, %cx
	jbe	L1388
L1391:
	addl	$2, %edx
	movl	%edx, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	$-1171354717, %eax
	leal	28(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	movzwl	%cx, %ecx
	movl	$524353, %eax
	movl	%ecx, _randomseed
	sall	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	$-350, %eax
	subl	%edx, %ecx
	shrl	%ecx
	addl	%ecx, %edx
	shrl	$18, %edx
	movw	%dx, 28(%edi)
	movw	%ax, 92(%ebx)
	movl	%esi, (%esp)
	call	__Z16DoActorBeginJumps
	movl	$__Z15DoActorMoveJumps, 36(%ebx)
	jmp	L1387
	.p2align 4,,10
	.p2align 3
L1390:
	cmpw	$219, %cx
	jne	L1391
	jmp	L1388
	.cfi_endproc
LFE120:
	.p2align 4
	.globl	__Z7LoadAnms
	.def	__Z7LoadAnms;	.scl	2;	.type	32;	.endef
__Z7LoadAnms:
LFB121:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movb	%al, _ANIMnum
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movswl	%ax, %ebx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	_anm_ptr(,%ebx,4), %esi
	movb	$-37, _walock+30709(%ebx)
	testl	%esi, %esi
	je	L1430
	addl	$66336, %esi
L1422:
	movl	%esi, %eax
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
L1430:
	.cfi_restore_state
	movl	_ANIMname(,%ebx,4), %eax
	xorl	%edx, %edx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	call	_kopen4load.part.0
	movl	%eax, %edi
	cmpl	$-1, %eax
	je	L1429
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movzbl	_ANIMnum, %ecx
	movl	%eax, %ebp
	leal	66336(%eax), %edx
	leal	_anm_ptr(,%ebx,4), %eax
	addl	$_walock+30709, %ecx
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	_anm_ptr(,%ebx,4), %esi
	movl	%ebp, %ecx
	movl	%edi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	addl	$66336, %esi
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%esi, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%edi, %eax
	call	_kclose
	movl	%esi, %eax
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1429:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L1422
	.cfi_endproc
LFE121:
	.p2align 4
	.globl	__Z7playanms
	.def	__Z7playanms;	.scl	2;	.type	32;	.endef
__Z7playanms:
LFB128:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movb	%al, _ANIMnum
	xorl	%eax, %eax
	movl	$0, 44(%esp)
	movl	$8, 48(%esp)
L1432:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1432
	movb	$0, _g_keyAsciiEnd
	xorl	%eax, %eax
	movb	$0, _g_keyAsciiPos
	movb	$0, _KB_LastScan
L1434:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1434
	movswl	%dx, %eax
	call	__Z7LoadAnms
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1431
	movzbl	_ANIMnum, %eax
	xorl	%edx, %edx
	movl	_ANIMname(,%eax,4), %eax
	call	_kopen4load.part.0
	cmpl	$-1, %eax
	je	L1431
	movl	%eax, 36(%esp)
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %esi
	movl	36(%esp), %eax
	call	_kclose
	movl	__ZL4anim.lto_priv.0, %eax
	subl	$1024, %esi
	js	L1534
	movl	$66336, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1439
	movl	$-1, %edi
	movl	%eax, __ZL4anim.lto_priv.0
	movw	%di, 12(%eax)
	movl	$-1, 66332(%eax)
	movl	%ebx, 65560(%eax)
	movl	%ebx, 4(%eax)
	movzwl	6(%ebx), %eax
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	cmpl	%eax, %esi
	js	L1438
	leal	65564(%ecx), %edx
	leal	66332(%ecx), %esi
	leal	256(%ebx), %eax
	cmpl	%esi, %edx
	jnb	L1509
	addl	$1280, %ebx
	movl	%ecx, %edi
	.p2align 5
	.p2align 4
	.p2align 3
L1442:
	movzbl	(%eax), %ecx
	addl	$4, %eax
	addl	$3, %edx
	movb	%cl, -1(%edx)
	movzbl	-3(%eax), %ecx
	movb	%cl, -2(%edx)
	movzbl	-2(%eax), %ecx
	movb	%cl, -3(%edx)
	cmpl	%ebx, %eax
	jne	L1442
	movl	__ZL4anim.lto_priv.0, %edx
	movl	%edi, %ecx
L1441:
	movl	%ebx, 8(%ecx)
	movl	4(%edx), %ebx
L1438:
	movzbl	_ANIMnum, %eax
	movl	8(%ebx), %edi
	movl	$20971720, _tilesiz+122836(,%eax,4)
	xorl	%eax, %eax
	call	_videoClearViewableArea
	movl	__ZL4anim.lto_priv.0, %eax
	leal	65564(%eax), %edx
	movl	$4, %eax
	call	_paletteSetColorTable
	movl	$2, %ecx
	movl	$4, %edx
	movzbl	_gs+13, %eax
	call	_videoSetPalette
	cmpb	$1, _ANIMnum
	je	L1535
L1443:
	movl	_totalclock, %eax
	xorl	%ecx, %ecx
	movw	%cx, _SoundState
	movl	%eax, _ototalclock
	cmpl	$1, %edi
	jle	L1446
	movl	$1, %ebx
L1445:
	movzbl	_ANIMnum, %edx
	cmpb	$2, %dl
	je	L1451
	ja	L1452
	testb	%dl, %dl
	je	L1536
	leal	-1(%edi), %ecx
	leal	16(%eax), %edx
	addl	$136, %eax
	movl	$0, 40(%esp)
	cmpl	%ebx, %ecx
	cmovne	%edx, %eax
	movl	%eax, _ototalclock
	cmpl	$35, %ebx
	je	L1464
	jg	L1465
	cmpl	$1, %ebx
	je	L1466
	cmpl	$16, %ebx
	jne	L1456
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$507, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
L1456:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	movl	%ebx, %eax
	call	_ANIM_DrawFrame
	movzbl	_ANIMnum, %edx
	movl	_rendmode, %esi
	movl	%eax, %ecx
	movl	%edx, %eax
	movl	%ecx, _waloff+122836(,%edx,4)
	addw	$30709, %ax
	movl	%eax, %ebp
	cmpl	$2, %esi
	jle	L1499
	movzwl	%ax, %eax
	xorl	%edx, %edx
	movl	$4, %ecx
	movl	%eax, 36(%esp)
	call	__Z15gltexinvalidateiii
	cmpl	$4, %esi
	movl	36(%esp), %eax
	je	L1537
L1499:
	cmpw	$30719, %bp
	ja	L1500
	movl	_xdim, %eax
	movl	_ydim, %edx
	subl	$1, %eax
	js	L1500
	subl	$1, %edx
	js	L1500
	movl	%eax, 28(%esp)
	movswl	%bp, %eax
	movl	$65536, %ecx
	movl	%edx, 32(%esp)
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$94, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$512, (%esp)
	call	_rotatesprite_.part.0.constprop.0
L1500:
	call	_videoNextPage
	addl	$1, %ebx
	movl	_ototalclock, %eax
	movl	_totalclock, %edx
	cmpl	%edi, %ebx
	je	L1501
	cmpl	%eax, %edx
	jl	L1450
	jmp	L1445
	.p2align 4,,10
	.p2align 3
L1538:
	cmpb	$1, %al
	jne	L1449
	cmpb	$0, 45(%esp)
	jne	L1446
	movzbl	_keystatus+1, %eax
	orb	_quitevent, %al
	jne	L1446
L1449:
	call	__Z10getpacketsv
	movl	_ototalclock, %eax
	cmpl	_totalclock, %eax
	jle	L1445
L1450:
	call	_handleevents.isra.0
	leal	44(%esp), %eax
	call	_CONTROL_GetUserInput.isra.0
	leal	44(%esp), %eax
	call	_CONTROL_ClearUserInput
	movzbl	_ANIMnum, %eax
	testb	%al, %al
	jne	L1538
	movzbl	_g_keyAsciiEnd, %eax
	cmpb	%al, _g_keyAsciiPos
	jne	L1446
	cmpb	$0, 44(%esp)
	jne	L1446
	cmpb	$0, 45(%esp)
	jne	L1446
	cmpb	$0, _quitevent
	je	L1449
L1446:
	xorl	%eax, %eax
	call	_videoClearViewableArea
	call	_videoNextPage
	movzbl	_gs+13, %eax
	movl	$2, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	xorl	%eax, %eax
L1504:
	movl	$0, _g_keyAsciiFIFO(%eax)
	addl	$16, %eax
	movl	$0, _g_keyAsciiFIFO-12(%eax)
	movl	$0, _g_keyAsciiFIFO-8(%eax)
	movl	$0, _g_keyAsciiFIFO-4(%eax)
	cmpl	$64, %eax
	jb	L1504
	movb	$0, _g_keyAsciiEnd
	xorl	%eax, %eax
	movb	$0, _g_keyAsciiPos
	movb	$0, _KB_LastScan
L1506:
	movl	$0, _keystatus(%eax)
	addl	$16, %eax
	movl	$0, _keystatus-12(%eax)
	movl	$0, _keystatus-8(%eax)
	movl	$0, _keystatus-4(%eax)
	cmpl	$256, %eax
	jb	L1506
	movl	__ZL4anim.lto_priv.0, %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 68
	movzbl	_ANIMnum, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 72
	movl	$0, __ZL4anim.lto_priv.0
	movb	$1, _walock+30709(%eax)
L1431:
	addl	$52, %esp
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
L1535:
	.cfi_restore_state
	movl	$1, %eax
	call	_ANIM_DrawFrame
	movl	_rendmode, %ebx
	movl	%eax, _waloff+122840
	cmpl	$2, %ebx
	jle	L1444
	xorl	%edx, %edx
	movl	$4, %ecx
	movl	$30710, %eax
	call	__Z15gltexinvalidateiii
	cmpl	$4, %ebx
	je	L1539
L1444:
	movl	_ydim, %eax
	leal	-1(%eax), %ecx
	movl	_xdim, %eax
	leal	-1(%eax), %edx
	movl	$30710, %eax
L1508:
	movl	%edx, %esi
	orl	%ecx, %esi
	js	L1443
	cwtl
	movl	%ecx, 32(%esp)
	movl	$65536, %ecx
	movl	%edx, 28(%esp)
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	movl	$0, 24(%esp)
	movl	$0, 20(%esp)
	movl	$94, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$512, (%esp)
	call	_rotatesprite_.part.0.constprop.0
	jmp	L1443
L1452:
	cmpb	$3, %dl
	jne	L1456
	leal	-1(%edi), %ecx
	leal	16(%eax), %edx
	addl	$136, %eax
	movl	$0, 40(%esp)
	cmpl	%ebx, %ecx
	cmovne	%edx, %eax
	movl	%eax, _ototalclock
	cmpl	$37, %ebx
	jle	L1540
	leal	-63(%ebx), %eax
	cmpl	$57, %eax
	ja	L1456
	jmp	*L1484(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1484:
	.long	L1490
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1486
	.long	L1489
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1488
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1487
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1486
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1485
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1483
	.text
L1439:
	movl	$66336, %eax
	call	__Z13handle_memerri
L1451:
	leal	-1(%edi), %ecx
	leal	10(%eax), %edx
	addl	$130, %eax
	movl	$0, 40(%esp)
	cmpl	%ebx, %ecx
	cmovne	%edx, %eax
	movl	%eax, _ototalclock
	cmpl	$1, %ebx
	je	L1541
	cmpl	$2, %ebx
	je	L1542
	cmpl	$30, %ebx
	je	L1477
	cmpl	$42, %ebx
	je	L1477
	cmpl	$59, %ebx
	jne	L1456
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$518, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1536:
	leal	-1(%edi), %edx
	movl	$0, 40(%esp)
	cmpl	%ebx, %edx
	je	L1543
	addl	$8, %eax
	cmpl	$1, %ebx
	je	L1544
L1458:
	movl	%eax, _ototalclock
	cmpl	$5, %ebx
	je	L1545
	cmpl	$15, %ebx
	jne	L1456
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$487, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1537:
	movl	_prartmaps(,%eax,4), %edx
	testl	%edx, %edx
	je	L1499
	leal	_prartmaps(,%eax,4), %edx
	movl	$1, (%esp)
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	36(%esp), %eax
	movl	$0, _prartmaps(,%eax,4)
	movzbl	_ANIMnum, %eax
	leal	30709(%eax), %ebp
	jmp	L1499
L1465:
	cmpl	$51, %ebx
	je	L1469
	cmpl	$64, %ebx
	jne	L1456
	leal	40(%esp), %edx
	movl	$506, %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	addw	$1, _SoundState
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1540:
	ja	L1456
	jmp	*L1491(,%ebx,4)
	.section .rdata,"dr"
	.align 4
L1491:
	.long	L1456
	.long	L1495
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1494
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1493
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1492
	.long	L1456
	.long	L1489
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1456
	.long	L1488
	.text
L1477:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$508, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1541:
	addl	$30, _ototalclock
	jmp	L1456
L1501:
	cmpl	%eax, %edx
	jge	L1446
L1503:
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	movl	_totalclock, %eax
	cmpl	%eax, _ototalclock
	jg	L1503
	jmp	L1446
L1543:
	addl	$120, %eax
	jmp	L1458
L1466:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$497, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1534:
	movl	4(%eax), %ebx
	jmp	L1438
L1539:
	movl	_prartmaps+122840, %ebx
	testl	%ebx, %ebx
	je	L1444
	movl	$_prartmaps+122840, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 64
	movzbl	_ANIMnum, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	movl	$0, _prartmaps+122840
	addw	$30709, %ax
	cmpw	$30719, %ax
	ja	L1443
	movl	_ydim, %esi
	leal	-1(%esi), %ecx
	movl	_xdim, %esi
	leal	-1(%esi), %edx
	jmp	L1508
	.p2align 4,,10
	.p2align 3
L1545:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$485, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1464:
	leal	40(%esp), %edx
	movl	$498, %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	addw	$1, _SoundState
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1542:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$516, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1469:
	leal	40(%esp), %edx
	movl	$505, %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	addw	$1, _SoundState
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1490:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$625, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	leal	40(%esp), %edx
	movl	$621, %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	leal	40(%esp), %edx
	movl	$622, %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1492:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$618, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1493:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$617, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1494:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$612, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1495:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$616, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1509:
	movl	%ecx, %edx
	movl	%eax, %ebx
	jmp	L1441
L1544:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$344, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	addl	$360, _ototalclock
	jmp	L1456
L1489:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$619, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1486:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$622, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1483:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$613, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1485:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$624, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1487:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$623, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
L1488:
	leal	40(%esp), %edx
	movl	$0, 4(%esp)
	movl	$620, %eax
	movl	%edx, (%esp)
	movl	%edx, %ecx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1456
	.cfi_endproc
LFE128:
	.p2align 4
	.globl	_tabledivide64.lto_priv.0
	.def	_tabledivide64.lto_priv.0;	.scl	2;	.type	32;	.endef
_tabledivide64.lto_priv.0:
LFB148:
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
	je	L1547
	movl	$16383, %eax
	cmpl	%edi, %eax
	movl	$0, %eax
	sbbl	%ecx, %eax
	jc	L1588
L1547:
	movl	$16383, %eax
	cmpl	%edi, %eax
	movl	$0, %eax
	sbbl	80(%esp), %eax
	movl	%edi, %eax
	jnc	L1566
	xorl	%eax, %eax
L1566:
	leal	(%eax,%eax,8), %eax
	movl	_divtable64(%eax), %ebx
	movzbl	_divtable64+8(%eax), %ecx
	movl	_divtable64+4(%eax), %eax
	movl	%ebx, %edx
	movb	%cl, 92(%esp)
	andl	$63, %ecx
	orl	%eax, %edx
	jne	L1568
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
L1588:
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
	je	L1549
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 68(%esp)
L1550:
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
	jne	L1551
	movl	76(%esp), %eax
	movl	%esi, %ecx
	xorl	%edx, %edx
	sarl	$24, %eax
	andl	$-128, %eax
	orl	%eax, %ecx
	xorl	%eax, %eax
L1552:
	movl	%eax, _divtable64
	movl	%edx, _divtable64+4
	movb	%cl, _divtable64+8
	jmp	L1547
	.p2align 4,,10
	.p2align 3
L1568:
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
	je	L1570
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
L1570:
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
L1549:
	.cfi_restore_state
	bsrl	92(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 68(%esp)
	jmp	L1550
	.p2align 4,,10
	.p2align 3
L1551:
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
	je	L1595
	movl	%ebx, %esi
	xorl	%ebx, %ebx
L1595:
	movl	%ebx, 36(%esp)
	movl	92(%esp), %ebx
	movl	%edx, %ecx
	movl	%esi, 40(%esp)
	movl	96(%esp), %esi
	cmpl	%ebx, %eax
	sbbl	%esi, %ecx
	jnc	L1589
	movl	92(%esp), %ebx
	movzbl	68(%esp), %ecx
	movl	96(%esp), %esi
	shldl	%cl, %ebx, %esi
	sall	%cl, %ebx
	testb	$32, %cl
	je	L1593
	movl	%ebx, %esi
	xorl	%ebx, %ebx
L1593:
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	je	L1594
	movl	%eax, %edx
	xorl	%eax, %eax
L1594:
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
	jnc	L1556
	subl	%ecx, %eax
	movl	88(%esp), %esi
	sbbl	%ebx, %edx
	movl	84(%esp), %ebx
	cmpl	%eax, %ebx
	movl	%esi, %ebx
	movl	$1, %eax
	sbbl	%edx, %ebx
	movl	$0, %edx
	jc	L1590
L1557:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 44(%esp)
	movl	%esi, 48(%esp)
L1556:
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
	jnc	L1558
	subl	%ecx, %eax
	movl	88(%esp), %esi
	sbbl	%ebx, %edx
	movl	84(%esp), %ebx
	cmpl	%eax, %ebx
	movl	%esi, %ebx
	movl	$1, %eax
	sbbl	%edx, %ebx
	movl	$0, %edx
	jc	L1591
L1559:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 60(%esp)
	movl	%esi, 64(%esp)
L1558:
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
	jnc	L1560
	movl	68(%esp), %eax
	movl	72(%esp), %edx
	addl	$1, %eax
	adcl	$0, %edx
L1554:
	movzbl	56(%esp), %ecx
	subl	$1, %ecx
L1561:
	movl	76(%esp), %ebx
	testl	%ebx, %ebx
	jns	L1552
	orl	$-128, %ecx
	negl	%eax
	adcl	$0, %edx
	negl	%edx
	jmp	L1552
	.p2align 4,,10
	.p2align 3
L1589:
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
	jc	L1554
L1555:
	movzbl	56(%esp), %ecx
	orl	$64, %ecx
	jmp	L1561
	.p2align 4,,10
	.p2align 3
L1560:
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
	jnc	L1592
L1562:
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$2, %eax
	adcl	$0, %edx
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1592:
	cmpl	92(%esp), %eax
	movl	%edx, %eax
	sbbl	96(%esp), %eax
	jnc	L1562
	movl	%ecx, %eax
	movl	%ebx, %edx
	addl	$1, %eax
	adcl	$0, %edx
	jmp	L1555
	.p2align 4,,10
	.p2align 3
L1591:
	movl	$2, %eax
	xorl	%edx, %edx
	jmp	L1559
	.p2align 4,,10
	.p2align 3
L1590:
	movl	$2, %eax
	xorl	%edx, %edx
	jmp	L1557
	.cfi_endproc
LFE148:
	.globl	_tabledivide64.lto_priv.1
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.1,_tabledivide64.lto_priv.0
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
	.globl	_tabledivide64.lto_priv.10
	.def	_tabledivide64.lto_priv.10;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.10,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.11
	.def	_tabledivide64.lto_priv.11;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.11,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.12
	.def	_tabledivide64.lto_priv.12;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.12,_tabledivide64.lto_priv.0
	.globl	_tabledivide64.lto_priv.13
	.def	_tabledivide64.lto_priv.13;	.scl	2;	.type	32;	.endef
	.set	_tabledivide64.lto_priv.13,_tabledivide64.lto_priv.0
	.p2align 4
	.globl	__Z12SetCrosshairv
	.def	__Z12SetCrosshairv;	.scl	2;	.type	32;	.endef
__Z12SetCrosshairv:
LFB149:
	.cfi_startproc
	ret
	.cfi_endproc
LFE149:
	.p2align 4
	.globl	__Z15SetRedrawScreenP12PLAYERstruct
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15SetRedrawScreenP12PLAYERstruct:
LFB150:
	.cfi_startproc
	movl	%eax, %edx
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%eax, %edx
	je	L1601
L1597:
	ret
	.p2align 4,,10
	.p2align 3
L1601:
	cmpb	$0, _BorderAdjust
	je	L1597
	movsbl	_gs+12, %eax
	testb	%al, %al
	js	L1602
L1600:
	leal	(%eax,%eax,2), %eax
	movb	$1, _RedrawScreen
	addl	%eax, %eax
	movl	_BorderInfoValues(%eax), %edx
	movzwl	_BorderInfoValues+4(%eax), %eax
	movl	%edx, _BorderInfo
	movw	%ax, _BorderInfo+4
	ret
	.p2align 4,,10
	.p2align 3
L1602:
	movb	$0, _gs+12
	xorl	%eax, %eax
	jmp	L1600
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	__Z10SetFragBarP12PLAYERstruct.part.0
	.def	__Z10SetFragBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z10SetFragBarP12PLAYERstruct.part.0:
LFB152:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_windowxy1, %edx
	movl	%eax, 12(%esp)
	movswl	_OrigCommPlayers, %eax
	leal	2(%eax), %edi
	subl	$1, %eax
	cmovns	%eax, %edi
	movl	%edx, %eax
	movswl	%dx, %edx
	sarl	$2, %edi
	addl	$1, %edi
	cmpl	_windowxy2, %edx
	jg	L1604
	fnstcw	22(%esp)
	flds	LC5
	movw	%di, 10(%esp)
	movswl	%di, %ebx
	leal	-2(%ebx,%ebx), %esi
	movzwl	22(%esp), %edx
	orb	$12, %dh
	movw	%dx, 20(%esp)
	.p2align 4
	.p2align 3
L1606:
	movswl	_tilesiz+11682, %edx
	imull	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, 16(%esp)
	fildl	16(%esp)
	fildl	_ydim
	fdiv	%st(2), %st
	fmulp	%st, %st(1)
	fldcw	20(%esp)
	fistpl	16(%esp)
	fldcw	22(%esp)
	movl	16(%esp), %edx
	cmpl	_windowxy1+4, %edx
	jle	L1605
	movl	_startumost, %edi
	movswl	%ax, %ecx
	movw	%dx, (%edi,%ecx,2)
L1605:
	addl	$1, %eax
	movswl	%ax, %edx
	cmpl	_windowxy2, %edx
	jle	L1606
	fstp	%st(0)
	movzwl	10(%esp), %edi
L1604:
	testw	%di, %di
	jle	L1607
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1608:
	movl	%ebx, 4(%esp)
	movl	12(%esp), %eax
	movl	$128, %ecx
	addl	$1, %esi
	movl	$0, (%esp)
	movl	$2920, %edx
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	_tilesiz+11682, %eax
	leal	-2(%ebx,%eax), %ebx
	cmpw	%si, %di
	jne	L1608
L1607:
	movl	_connecthead, %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	jne	L1613
	jmp	L1617
	.p2align 4,,10
	.p2align 3
L1619:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
L1612:
	movswl	_tilesiz+11682, %esi
	leal	3(%edx), %ecx
	subl	$2, %esi
	testw	%dx, %dx
	cmovns	%edx, %ecx
	andl	$3, %edx
	sarw	$2, %cx
	imull	%esi, %ecx
	movl	__ZZ16DisplayFragNamesP12PLAYERstructE5xoffs(,%edx,4), %esi
	leal	-1(%esi), %edx
	addl	$2, %ecx
	movl	%edx, (%esp)
	movl	$2375, %edx
	movswl	%cx, %ecx
	movl	%ecx, 4(%esp)
	movl	%ecx, 16(%esp)
	movl	$129, %ecx
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	leal	23262(%edi), %eax
	movl	16(%esp), %ecx
	movswl	%si, %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z17DisplayFragStringP12PLAYERstructssPKc
	movl	_connectpoint2(,%ebx,4), %eax
	movswl	%ax, %ebx
	cmpw	$-1, %ax
	je	L1617
L1613:
	imull	$24124, %ebx, %esi
	leal	_Player(%esi), %edi
	cmpb	$0, _Prediction
	jne	L1610
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0
L1610:
	sarl	$2, %esi
	imull	$-432986257, %esi, %edx
	cmpb	$0, _DemoPlaying
	jne	L1619
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	jmp	L1612
	.p2align 4,,10
	.p2align 3
L1617:
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
LFE152:
	.p2align 4
	.globl	__Z9SetBorderP12PLAYERstructi
	.def	__Z9SetBorderP12PLAYERstructi;	.scl	2;	.type	32;	.endef
__Z9SetBorderP12PLAYERstructi:
LFB155:
	.cfi_startproc
	movl	%eax, %ecx
	cmpb	$0, _DemoPlaying
	je	L1621
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%ecx, %eax
	je	L1792
L1785:
	ret
	.p2align 4,,10
	.p2align 3
L1621:
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%ecx, %eax
	jne	L1785
L1792:
	cmpb	$0, _BorderAdjust
	je	L1785
	subl	$84, %esp
	.cfi_def_cfa_offset 88
	movl	%ebx, 68(%esp)
	.cfi_offset 3, -20
	movzbl	_gs+12, %ebx
	testl	%edx, %edx
	js	L1625
	movb	%dl, _gs+12
	movl	%edx, %ebx
L1625:
	testb	%bl, %bl
	js	L1793
	cmpb	$14, %bl
	jle	L1628
	movb	$14, _gs+12
L1620:
	movl	68(%esp), %ebx
	addl	$84, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1793:
	.cfi_restore_state
	movl	%esi, 72(%esp)
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	movl	%edi, 76(%esp)
	movl	%ebp, 80(%esp)
	movb	$0, _gs+12
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
L1627:
	leal	(%eax,%eax,2), %edx
	movl	_x_aspect_mul, %esi
	movl	%ecx, 36(%esp)
	addl	%edx, %edx
	movl	_f_xdim, %edi
	movl	_BorderInfoValues(%edx), %eax
	movswl	_BorderInfoValues+4(%edx), %edx
	movl	%edi, %ebp
	movswl	%ax, %ecx
	movl	%eax, _BorderInfo
	sarl	$16, %eax
	imull	%esi, %ecx
	movw	%dx, _BorderInfo+4
	imull	%esi, %edx
	subl	%ecx, %ebp
	movl	_y_aspect_mul, %ecx
	movl	%ebp, %esi
	sarl	$16, %ebp
	imull	%ecx, %eax
	movl	%ecx, 16(%esp)
	movl	_f_ydim, %ecx
	sarl	$17, %esi
	subl	%eax, %ecx
	movl	%edi, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	sarl	$17, %eax
	subl	%eax, %esi
	movl	%ecx, %eax
	sarl	$16, %edx
	sarl	$16, %eax
	leal	-1(%edx,%esi), %edi
	sarl	$17, %ecx
	imull	%edx, %eax
	cltd
	idivl	%ebp
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	%eax, %ebp
	sarl	%ebp
	subl	%ebp, %edx
	addl	%edx, %eax
	cmpb	$2, %bl
	setne	%cl
	subl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	_videoSetViewableArea
	movzbl	_gs+12, %eax
	cmpb	$1, %al
	jg	L1794
L1630:
	cmpl	$1, _numplayers
	jle	L1789
	cmpw	$3, _gNet+12
	je	L1789
	movl	36(%esp), %eax
	movl	72(%esp), %esi
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	movl	352(%eax), %edx
	testl	%edx, %edx
	je	L1620
	movl	68(%esp), %ebx
	addl	$84, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10SetFragBarP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1789:
	.cfi_def_cfa_offset 88
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	72(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	76(%esp), %edi
	.cfi_restore 7
	movl	80(%esp), %ebp
	.cfi_restore 5
	jmp	L1620
	.p2align 4,,10
	.p2align 3
L1794:
	.cfi_restore_state
	imull	$24124, _myconnectindex, %edx
	addl	$_Player, %edx
	cmpl	%edx, 36(%esp)
	je	L1795
L1631:
	cmpb	$2, %al
	je	L1650
L1721:
	movswl	_tilesiz+9738, %edx
	movl	$200, %eax
	movl	$192, %ecx
	movl	$0, (%esp)
	subl	%edx, %eax
	movl	$2434, %edx
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	jmp	L1630
	.p2align 4,,10
	.p2align 3
L1795:
	movsbl	%al, %edx
	movl	_r_usenewaspect, %ebx
	leal	(%edx,%edx,2), %edx
	addl	%edx, %edx
	movl	_BorderInfoValues(%edx), %ecx
	movzwl	_BorderInfoValues+4(%edx), %edx
	movl	%ecx, _BorderInfo
	movw	%dx, _BorderInfo+4
	testl	%ebx, %ebx
	jne	L1796
	cmpb	$2, %al
	jne	L1647
L1650:
	movl	_xdim, %ecx
	testl	%ecx, %ecx
	jle	L1721
	movl	_y_aspect_mul, %eax
	xorl	%ecx, %ecx
	leal	0(,%eax,4), %edx
	subl	%edx, %eax
	sall	$4, %eax
	addl	_f_ydim, %eax
	sarl	$16, %eax
	cmpl	$480, _ydim
	sete	%cl
	addl	%eax, %ecx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1722:
	movl	_startdmost, %edx
	movw	%cx, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	_xdim, %eax
	jl	L1722
	jmp	L1721
	.p2align 4,,10
	.p2align 3
L1628:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	%esi, 72(%esp)
	movsbl	%bl, %eax
	movl	%edi, 76(%esp)
	movl	%ebp, 80(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	jmp	L1627
L1796:
	movl	_ydim, %ebx
	movl	$3, 8(%esp)
	movl	$0, 12(%esp)
	movl	_xdim, %esi
	movl	%ebx, %eax
	cltd
	sall	$2, %eax
	shldl	$2, %ebx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.0
	testl	%esi, %esi
	jle	L1633
	movl	%esi, %edx
	movl	%esi, %edi
	xorl	%ebp, %ebp
	movl	$0, 52(%esp)
	subl	%eax, %edx
	movw	%bp, 26(%esp)
	movsbl	_gs+14, %ecx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	subl	%eax, %edi
	movl	%eax, 60(%esp)
	leal	-1(%ebx), %eax
	movw	%ax, 34(%esp)
	leal	-1(%esi), %eax
	movl	%ebx, %esi
	movw	%ax, 56(%esp)
	movswl	_BorderInfo+2, %eax
	imull	16(%esp), %eax
	movw	%di, 48(%esp)
	sarl	$16, %eax
	subl	%eax, %esi
	movzbl	_SW_GameFlags, %eax
	movw	%si, 40(%esp)
	movb	%al, 28(%esp)
	.p2align 4
	.p2align 3
L1634:
	testl	%ebx, %ebx
	jle	L1797
	movzwl	26(%esp), %esi
	cmpw	%si, 60(%esp)
	setge	64(%esp)
	cmpw	%si, 56(%esp)
	setge	44(%esp)
	xorl	%esi, %esi
	xorl	%ebp, %ebp
	jmp	L1643
	.p2align 4,,10
	.p2align 3
L1800:
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movzwl	_SWBorderTest(%eax,%eax), %edi
L1636:
	movswl	%di, %eax
	movzwl	26(%esp), %ebx
	movzwl	_tilesiz+2(,%eax,4), %edx
	addl	%ebp, %edx
	cmpw	%dx, 40(%esp)
	setle	16(%esp)
	cmpw	%bp, 34(%esp)
	movzbl	16(%esp), %edx
	setge	25(%esp)
	addw	_tilesiz(,%eax,4), %bx
	movw	%bx, 32(%esp)
	js	L1637
	cmpb	$0, 64(%esp)
	jne	L1798
L1637:
	movzbl	25(%esp), %ebx
	andb	44(%esp), %bl
	testb	%bl, 16(%esp)
	je	L1638
	movzwl	32(%esp), %ebx
	cmpw	%bx, 48(%esp)
	jle	L1799
L1638:
	cmpb	$0, 22(%esp)
	je	L1641
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1642:
	addw	_tilesiz+2(,%eax,4), %bp
	movswl	%bp, %esi
	cmpl	_ydim, %esi
	jge	L1649
L1643:
	movzbl	28(%esp), %eax
	andl	$1, %eax
	movb	%al, 22(%esp)
	jne	L1800
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movzwl	_RegBorderTest(%eax,%eax), %edi
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1641:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
	jmp	L1642
	.p2align 4,,10
	.p2align 3
L1798:
	testb	%dl, %dl
	je	L1638
	cmpb	$0, 25(%esp)
	je	L1638
	movl	52(%esp), %eax
	movl	%esi, 4(%esp)
	movl	$64, %ecx
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%bx, 182(%eax)
	movzwl	40(%esp), %ebx
	movw	%di, 180(%eax)
	xorl	%edi, %edi
	movw	%bx, 184(%eax)
	movzwl	60(%esp), %ebx
	orl	$1073768448, 204(%eax)
	movw	%bx, 186(%eax)
	movzwl	34(%esp), %ebx
	movw	%dx, 194(%eax)
	movl	$-65530, 176(%eax)
	movw	%bx, 188(%eax)
	movw	%di, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 28(%esp)
	andl	$1, %eax
	movb	%al, 22(%esp)
	jmp	L1637
L1797:
	movzbl	28(%esp), %eax
	andl	$1, %eax
	movb	%al, 22(%esp)
	.p2align 4
	.p2align 3
L1649:
	cmpb	$0, 22(%esp)
	je	L1644
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1645:
	movzwl	_tilesiz(,%eax,4), %eax
	addw	%ax, 26(%esp)
	movswl	26(%esp), %eax
	movl	%eax, 52(%esp)
	cmpl	_xdim, %eax
	jge	L1801
	movl	_ydim, %ebx
	jmp	L1634
	.p2align 4,,10
	.p2align 3
L1644:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movswl	_RegBorderTest(%edx,%edx), %eax
	jmp	L1645
L1799:
	cmpb	$0, 22(%esp)
	je	L1639
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %ebx
L1640:
	movl	52(%esp), %eax
	movl	%esi, 4(%esp)
	movl	$64, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movzwl	48(%esp), %esi
	movl	_numpages, %edx
	xorl	%ecx, %ecx
	movw	%cx, 244(%eax)
	movsbl	_gs+14, %ecx
	movw	%si, 182(%eax)
	movzwl	40(%esp), %esi
	orl	$1073768448, 204(%eax)
	movw	%si, 184(%eax)
	movzwl	56(%esp), %esi
	movw	%dx, 194(%eax)
	movw	%si, 186(%eax)
	movzwl	34(%esp), %esi
	movl	$-65529, 176(%eax)
	movw	%bx, 180(%eax)
	movw	%si, 188(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 28(%esp)
	andl	$1, %eax
	movb	%al, 22(%esp)
	jmp	L1638
L1639:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %ebx
	jmp	L1640
L1801:
	movzbl	_gs+12, %eax
	cmpb	$2, %al
	jle	L1631
L1647:
	movl	_xdim, %ecx
	testl	%ecx, %ecx
	jle	L1651
	movswl	_BorderInfo+2, %edx
	imull	_y_aspect_mul, %edx
	movl	$0, 56(%esp)
	movl	_ydim, %eax
	movsbl	_gs+14, %ebp
	sarl	$16, %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	leal	-1(%ebx), %esi
	movzbl	_SW_GameFlags, %ebx
	movw	%si, 34(%esp)
	leal	-1(%ecx), %esi
	movl	%ebp, %ecx
	xorl	%ebp, %ebp
	movw	%si, 60(%esp)
	movb	%bl, 44(%esp)
	.p2align 4
	.p2align 3
L1652:
	testl	%eax, %eax
	jle	L1802
	cmpw	%bp, 60(%esp)
	movw	%bp, 16(%esp)
	setge	52(%esp)
	xorl	%ebp, %ebp
	movl	$0, 40(%esp)
	jmp	L1671
	.p2align 4,,10
	.p2align 3
L1807:
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movzwl	_SWBorderTest(%eax,%eax), %edi
L1654:
	movswl	%di, %eax
	movzwl	16(%esp), %esi
	movzwl	_tilesiz+2(,%eax,4), %edx
	addw	_tilesiz(,%eax,4), %si
	movl	_windowxy1, %eax
	movw	%si, 22(%esp)
	addl	%ebp, %edx
	cmpw	%bp, 34(%esp)
	movl	%edx, %ebx
	setge	25(%esp)
	leal	-1(%eax), %esi
	notl	%ebx
	movw	%dx, 32(%esp)
	shrw	$15, %bx
	cmpw	16(%esp), %si
	jl	L1655
	cmpw	$0, 22(%esp)
	jns	L1803
L1655:
	movl	_windowxy2, %edx
	movzbl	52(%esp), %eax
	andb	25(%esp), %al
	leal	1(%edx), %esi
	testb	%bl, %al
	je	L1726
	cmpw	%si, 22(%esp)
	jge	L1660
L1726:
	movl	_windowxy1, %eax
L1657:
	movzwl	_windowxy1+4, %edi
	cmpw	16(%esp), %dx
	movw	%dx, 64(%esp)
	setge	%dl
	cmpw	%ax, 22(%esp)
	movw	%ax, 48(%esp)
	leal	-1(%edi), %esi
	setge	%al
	cmpw	%bp, %si
	movb	%al, 28(%esp)
	movl	%eax, %edi
	setge	%al
	andl	%ebx, %eax
	testb	%dl, %al
	je	L1659
	movl	%edi, %eax
	testb	%al, %al
	jne	L1804
L1659:
	movzwl	_windowxy2+4, %eax
	leal	1(%eax), %ebx
	cmpw	%bx, 32(%esp)
	setge	%al
	andb	25(%esp), %al
	testb	%dl, %al
	je	L1666
	cmpb	$0, 28(%esp)
	jne	L1805
L1666:
	cmpb	$0, 26(%esp)
	je	L1669
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1670:
	addw	_tilesiz+2(,%eax,4), %bp
	movswl	%bp, %eax
	movl	%eax, 40(%esp)
	cmpl	_ydim, %eax
	jge	L1806
L1671:
	movzbl	44(%esp), %eax
	andl	$1, %eax
	movb	%al, 26(%esp)
	jne	L1807
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movzwl	_RegBorderTest(%eax,%eax), %edi
	jmp	L1654
	.p2align 4,,10
	.p2align 3
L1669:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
	jmp	L1670
	.p2align 4,,10
	.p2align 3
L1803:
	movl	_windowxy2, %edx
	cmpw	%bp, 34(%esp)
	jl	L1657
	cmpw	$0, 32(%esp)
	jns	L1658
	movl	_windowxy2, %edx
	cmpw	%dx, 16(%esp)
	movw	%ax, 48(%esp)
	movw	%dx, 64(%esp)
	setle	%dl
	cmpw	%ax, 22(%esp)
	setge	28(%esp)
	jmp	L1659
	.p2align 4,,10
	.p2align 3
L1806:
	movzwl	16(%esp), %ebp
L1675:
	cmpb	$0, 26(%esp)
	je	L1672
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1673:
	addw	_tilesiz(,%eax,4), %bp
	movswl	%bp, %eax
	movl	%eax, 56(%esp)
	cmpl	_xdim, %eax
	jge	L1651
	movl	_ydim, %eax
	jmp	L1652
	.p2align 4,,10
	.p2align 3
L1672:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movswl	_RegBorderTest(%edx,%edx), %eax
	jmp	L1673
L1804:
	cmpb	$0, 26(%esp)
	je	L1664
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %ebx
L1665:
	movl	40(%esp), %eax
	xorl	%edx, %edx
	movl	$64, %ecx
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	xorl	%ecx, %ecx
	movw	%bx, 180(%eax)
	movzwl	48(%esp), %ebx
	movw	%dx, 194(%eax)
	movl	_windowxy2, %edx
	movw	%bx, 182(%eax)
	movzwl	64(%esp), %ebx
	orl	$1073768448, 204(%eax)
	movw	%bx, 186(%eax)
	xorl	%ebx, %ebx
	movw	%bx, 244(%eax)
	movzbl	_SW_GameFlags, %ebx
	movw	%cx, 184(%eax)
	movsbl	_gs+14, %ecx
	movl	$-65533, 176(%eax)
	movw	%si, 188(%eax)
	movl	_windowxy1, %eax
	movb	%bl, 44(%esp)
	andl	$1, %ebx
	cmpw	%dx, 16(%esp)
	movw	%dx, 64(%esp)
	setle	%dl
	cmpw	%ax, 22(%esp)
	movw	%ax, 48(%esp)
	movb	%bl, 26(%esp)
	setge	28(%esp)
	jmp	L1659
L1805:
	cmpb	$0, 26(%esp)
	je	L1667
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %esi
L1668:
	movl	40(%esp), %eax
	movl	$64, %ecx
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%si, 180(%eax)
	movzwl	48(%esp), %esi
	movw	%dx, 194(%eax)
	xorl	%edx, %edx
	movw	%si, 182(%eax)
	movzwl	64(%esp), %esi
	orl	$1073768448, 204(%eax)
	movw	%si, 186(%eax)
	movzwl	34(%esp), %esi
	movl	$-65532, 176(%eax)
	movw	%bx, 184(%eax)
	movw	%si, 188(%eax)
	movw	%dx, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 44(%esp)
	andl	$1, %eax
	movb	%al, 26(%esp)
	jmp	L1666
L1660:
	cmpb	$0, 26(%esp)
	je	L1662
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %edi
L1663:
	movl	40(%esp), %eax
	movl	$64, %ecx
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movzbl	_SW_GameFlags, %ecx
	movl	_numpages, %edx
	movw	%si, 182(%eax)
	xorl	%esi, %esi
	movw	%si, 184(%eax)
	movzwl	60(%esp), %esi
	movw	%di, 180(%eax)
	xorl	%edi, %edi
	movw	%si, 186(%eax)
	movzwl	34(%esp), %esi
	movb	%cl, 44(%esp)
	andl	$1, %ecx
	movw	%dx, 194(%eax)
	movl	_windowxy2, %edx
	orl	$1073768448, 204(%eax)
	movl	$-65534, 176(%eax)
	movw	%si, 188(%eax)
	movw	%di, 244(%eax)
	movl	_windowxy1, %eax
	movb	%cl, 26(%esp)
	movsbl	_gs+14, %ecx
	jmp	L1657
L1658:
	movl	40(%esp), %eax
	movl	$64, %ecx
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%si, 186(%eax)
	movzwl	34(%esp), %esi
	movw	%dx, 194(%eax)
	xorl	%edx, %edx
	orl	$1073768448, 204(%eax)
	movl	$-65535, 176(%eax)
	movw	%di, 180(%eax)
	movl	$0, 182(%eax)
	movw	%si, 188(%eax)
	movw	%dx, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 44(%esp)
	andl	$1, %eax
	movb	%al, 26(%esp)
	jmp	L1655
L1664:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %ebx
	jmp	L1665
L1667:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %esi
	jmp	L1668
L1662:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %edi
	jmp	L1663
L1633:
	cmpb	$2, _gs+12
	jle	L1721
L1651:
	movl	36(%esp), %esi
	movl	22988(%esi), %eax
	addl	$22988, %esi
	cmpl	%esi, %eax
	je	L1676
	movl	(%eax), %ebx
	jmp	L1678
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1677:
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	%esi, %ebx
	je	L1676
	movl	%edx, %ebx
L1678:
	cmpw	$5, 176(%eax)
	jne	L1677
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 84
	subl	$4, %esp
	.cfi_def_cfa_offset 88
	jmp	L1677
L1676:
	movl	$27, %edi
	movl	_windowxy1+4, %esi
	movl	$20, %ebp
	movl	_windowxy1, %eax
	movw	%di, 66(%esp)
	leal	-1(%esi), %edx
	movl	_windowxy2, %esi
	movw	%bp, 60(%esp)
	subl	$1, %eax
	leal	1(%esi), %ebx
	movl	_windowxy2+4, %esi
	addl	$1, %esi
L1720:
	movl	_xdim, %edi
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovns	%eax, %ecx
	leal	-1(%edi), %eax
	cmpl	%ebx, %eax
	movl	%ecx, 56(%esp)
	cmovle	%eax, %ebx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovns	%edx, %eax
	movl	_y_aspect_mul, %edx
	movl	%ebx, 48(%esp)
	movl	%eax, 52(%esp)
	leal	(%edx,%edx,2), %edx
	movl	_ydim, %eax
	sall	$4, %edx
	sarl	$16, %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	subl	$2, %ecx
	cmpl	%esi, %ecx
	cmovle	%ecx, %esi
	movl	%esi, 28(%esp)
	testl	%edi, %edi
	jle	L1679
	movzbl	_SW_GameFlags, %ebx
	movsbl	_gs+14, %ebp
	movl	$0, 44(%esp)
	xorl	%edi, %edi
	movb	%bl, 25(%esp)
	movl	%ebp, %ecx
	.p2align 4
	.p2align 3
L1680:
	movzbl	25(%esp), %ebp
	andl	$1, %ebp
	testl	%eax, %eax
	jle	L1689
	movzwl	52(%esp), %esi
	movzwl	48(%esp), %eax
	subl	$1, %esi
	addl	$1, %eax
	movw	%si, 40(%esp)
	movl	56(%esp), %esi
	movw	%ax, 64(%esp)
	leal	-1(%esi), %ebx
	movw	%bx, 16(%esp)
	cmpw	%ax, %di
	jle	L1724
	cmpw	%di, %si
	jge	L1725
	movl	%ecx, %edx
	movl	$1808407283, %eax
	movw	%di, 16(%esp)
	xorl	%ebx, %ebx
	shrl	%edx
	movzbl	25(%esp), %edi
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %esi
	jmp	L1688
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1809:
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1687:
	addw	_tilesiz+2(,%eax,4), %bx
	movswl	%bx, %eax
	cmpl	%eax, _ydim
	jle	L1808
L1688:
	movl	%edi, %ebp
	andl	$1, %ebp
	jne	L1809
	movl	%ecx, %eax
	subl	%esi, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
	jmp	L1687
	.p2align 4,,10
	.p2align 3
L1810:
	movl	%edi, %ebp
	movzwl	32(%esp), %edi
L1689:
	movl	%ebp, %eax
	testb	%al, %al
	je	L1717
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1718:
	addw	_tilesiz(,%eax,4), %di
	movswl	%di, %eax
	movl	%eax, 44(%esp)
	cmpl	_xdim, %eax
	jge	L1679
	movl	_ydim, %eax
	jmp	L1680
	.p2align 4,,10
	.p2align 3
L1717:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
	jmp	L1718
	.p2align 4,,10
	.p2align 3
L1724:
	movw	%di, 32(%esp)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	L1681
	.p2align 4,,10
	.p2align 3
L1812:
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
L1716:
	addw	_tilesiz+2(,%eax,4), %bx
	movswl	%bx, %ebp
	cmpl	_ydim, %ebp
	jge	L1810
L1681:
	movzbl	25(%esp), %edi
	andl	$1, %edi
	je	L1699
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movzwl	_SWBorderTest(%eax,%eax), %eax
	movw	%ax, 22(%esp)
L1700:
	movswl	22(%esp), %eax
	movzwl	32(%esp), %esi
	movzwl	_tilesiz+2(,%eax,4), %edx
	addw	_tilesiz(,%eax,4), %si
	addl	%ebx, %edx
	movw	%dx, 34(%esp)
	movl	%edx, %eax
	movzwl	28(%esp), %edx
	addl	$1, %edx
	movw	%dx, 26(%esp)
	cmpw	16(%esp), %si
	jl	L1707
	cmpw	%bx, 52(%esp)
	jl	L1702
	cmpw	40(%esp), %ax
	jge	L1703
	cmpw	26(%esp), %bx
	jg	L1706
	cmpw	%ax, 28(%esp)
	jle	L1705
	movzwl	32(%esp), %eax
	cmpw	%ax, 56(%esp)
	jge	L1706
	.p2align 4
	.p2align 3
L1707:
	cmpw	26(%esp), %bx
	setle	%dl
	cmpw	%si, 48(%esp)
	setle	%al
	testb	%al, %dl
	je	L1706
	movzwl	40(%esp), %esi
	cmpw	%si, 34(%esp)
	jge	L1811
L1706:
	movl	%edi, %eax
	testb	%al, %al
	jne	L1812
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1699:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movzwl	_RegBorderTest(%eax,%eax), %eax
	movw	%ax, 22(%esp)
	jmp	L1700
	.p2align 4,,10
	.p2align 3
L1703:
	movl	44(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	$65, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movzwl	22(%esp), %edi
	movl	_numpages, %edx
	orl	$1073768448, 204(%eax)
	movsbl	_gs+14, %ecx
	movw	%di, 180(%eax)
	movzwl	16(%esp), %edi
	movw	%dx, 194(%eax)
	movw	%di, 182(%eax)
	movzwl	40(%esp), %edi
	movl	$-65531, 176(%eax)
	movw	%di, 184(%eax)
	movzwl	64(%esp), %edi
	movw	%di, 186(%eax)
	movzwl	52(%esp), %edi
	movw	%di, 188(%eax)
	movzwl	66(%esp), %edi
	movw	%di, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 25(%esp)
	andl	$1, %eax
	movl	%eax, %edi
L1702:
	cmpw	26(%esp), %bx
	jg	L1706
	movzwl	34(%esp), %eax
	cmpw	%ax, 28(%esp)
	jle	L1705
	.p2align 4
	.p2align 3
L1791:
	movzwl	32(%esp), %eax
	cmpw	%ax, 56(%esp)
	jl	L1707
	movzwl	40(%esp), %edx
	cmpw	%dx, 34(%esp)
	jl	L1706
	movl	%edi, %eax
	testb	%al, %al
	je	L1711
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %edi
L1712:
	movl	44(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	$65, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%di, 180(%eax)
	movzwl	16(%esp), %edi
	movw	%dx, 194(%eax)
	movw	%di, 182(%eax)
	movzwl	40(%esp), %edi
	orl	$1073768448, 204(%eax)
	movw	%di, 184(%eax)
	movzwl	56(%esp), %edi
	movl	$-65531, 176(%eax)
	movw	%di, 186(%eax)
	movzwl	26(%esp), %edi
	movw	%di, 188(%eax)
	movzwl	60(%esp), %edi
	leal	7(%edi), %edx
	movw	%dx, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 25(%esp)
	andl	$1, %eax
	movl	%eax, %edi
	jmp	L1707
	.p2align 4,,10
	.p2align 3
L1808:
	movzwl	16(%esp), %edi
	jmp	L1689
	.p2align 4,,10
	.p2align 3
L1725:
	movw	%di, 22(%esp)
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	L1682
	.p2align 4,,10
	.p2align 3
L1814:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movzwl	_RegBorderTest(%eax,%eax), %edi
L1691:
	movswl	%di, %eax
	movzwl	22(%esp), %edx
	addw	_tilesiz(,%eax,4), %dx
	cmpw	%dx, 16(%esp)
	jg	L1695
	movzwl	28(%esp), %edx
	addl	$1, %edx
	movw	%dx, 26(%esp)
	cmpw	%bx, %dx
	jge	L1696
	.p2align 4
	.p2align 3
L1695:
	movl	%ebp, %eax
	testb	%al, %al
	jne	L1697
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	movl	%ecx, %eax
	shrl	$3, %edx
	imull	$38, %edx, %edx
	subl	%edx, %eax
	movswl	_RegBorderTest(%eax,%eax), %eax
L1698:
	addw	_tilesiz+2(,%eax,4), %bx
	movswl	%bx, %esi
	cmpl	%esi, _ydim
	jle	L1813
L1682:
	movzbl	25(%esp), %ebp
	andl	$1, %ebp
	je	L1814
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movzwl	_SWBorderTest(%eax,%eax), %edi
	jmp	L1691
	.p2align 4,,10
	.p2align 3
L1697:
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$4, %edx
	leal	(%edx,%edx,4), %eax
	leal	(%edx,%eax,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movswl	_SWBorderTest(%eax,%eax), %eax
	jmp	L1698
L1696:
	movzwl	_tilesiz+2(,%eax,4), %edx
	addl	%ebx, %edx
	cmpw	%dx, 40(%esp)
	jg	L1695
	movl	44(%esp), %eax
	movl	%esi, 4(%esp)
	movl	$65, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movzwl	16(%esp), %esi
	movl	_numpages, %edx
	movw	%di, 180(%eax)
	movsbl	_gs+14, %ecx
	movw	%si, 182(%eax)
	movzwl	40(%esp), %esi
	orl	$1073768448, 204(%eax)
	movw	%si, 184(%eax)
	movzwl	56(%esp), %esi
	movw	%dx, 194(%eax)
	movw	%si, 186(%eax)
	movzwl	26(%esp), %esi
	movl	$-65531, 176(%eax)
	movw	%si, 188(%eax)
	movzwl	66(%esp), %esi
	movw	%si, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 25(%esp)
	andl	$1, %eax
	movl	%eax, %ebp
	jmp	L1695
	.p2align 4,,10
	.p2align 3
L1813:
	movzwl	22(%esp), %edi
	jmp	L1689
	.p2align 4,,10
	.p2align 3
L1705:
	movl	%edi, %eax
	testb	%al, %al
	je	L1709
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %edi
L1710:
	movl	44(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	$65, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%di, 180(%eax)
	movzwl	16(%esp), %edi
	orl	$1073768448, 204(%eax)
	movw	%di, 182(%eax)
	movzwl	28(%esp), %edi
	movw	%dx, 194(%eax)
	movw	%di, 184(%eax)
	movzwl	64(%esp), %edi
	movl	$-65531, 176(%eax)
	movw	%di, 186(%eax)
	movzwl	26(%esp), %edi
	movw	%di, 188(%eax)
	movzwl	60(%esp), %edi
	movw	%di, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 25(%esp)
	andl	$1, %eax
	movl	%eax, %edi
	jmp	L1791
	.p2align 4,,10
	.p2align 3
L1811:
	movl	%edi, %eax
	testb	%al, %al
	je	L1713
	movl	$-2045222521, %eax
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$4, %eax
	leal	(%eax,%eax,4), %edx
	leal	(%eax,%edx,4), %eax
	subl	%eax, %ecx
	movzwl	_SWBorderTest(%ecx,%ecx), %esi
L1714:
	movl	44(%esp), %eax
	movl	%ebp, 4(%esp)
	movl	$65, %ecx
	xorl	%edx, %edx
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	_numpages, %edx
	movsbl	_gs+14, %ecx
	movw	%si, 180(%eax)
	movzwl	48(%esp), %esi
	orl	$1073768448, 204(%eax)
	movw	%si, 182(%eax)
	movzwl	40(%esp), %esi
	movw	%dx, 194(%eax)
	movw	%si, 184(%eax)
	movzwl	64(%esp), %esi
	movl	$-65531, 176(%eax)
	movw	%si, 186(%eax)
	movzwl	26(%esp), %esi
	movw	%si, 188(%eax)
	movzwl	60(%esp), %esi
	movw	%si, 244(%eax)
	movzbl	_SW_GameFlags, %eax
	movb	%al, 25(%esp)
	andl	$1, %eax
	movl	%eax, %edi
	jmp	L1706
	.p2align 4,,10
	.p2align 3
L1679:
	subw	$6, 60(%esp)
	movl	56(%esp), %eax
	movl	52(%esp), %edx
	movl	48(%esp), %ebx
	movl	28(%esp), %esi
	movzwl	60(%esp), %edi
	subl	$1, %eax
	subw	$6, 66(%esp)
	subl	$1, %edx
	addl	$1, %ebx
	addl	$1, %esi
	cmpw	$-4, %di
	jne	L1720
	movzbl	_gs+12, %eax
	jmp	L1631
L1709:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %edi
	jmp	L1710
L1711:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %edi
	jmp	L1712
L1713:
	movl	%ecx, %edx
	movl	$1808407283, %eax
	shrl	%edx
	mull	%edx
	shrl	$3, %edx
	imull	$38, %edx, %eax
	subl	%eax, %ecx
	movzwl	_RegBorderTest(%ecx,%ecx), %esi
	jmp	L1714
L1802:
	movzbl	44(%esp), %eax
	andl	$1, %eax
	movb	%al, 26(%esp)
	jmp	L1675
	.cfi_endproc
LFE155:
	.p2align 4
	.globl	__Z19SetupSpriteForBreakP12spritetypev7.isra.0
	.def	__Z19SetupSpriteForBreakP12spritetypev7.isra.0;	.scl	2;	.type	32;	.endef
__Z19SetupSpriteForBreakP12spritetypev7.isra.0:
LFB174:
	.cfi_startproc
	cmpw	$257, 38(%eax)
	je	L1833
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movzwl	14(%eax), %eax
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 16(%esp)
	movw	%ax, 22(%esp)
	leal	22(%esp), %eax
	movl	$10, 12(%esp)
	movl	$283, 8(%esp)
	movl	$_SpriteBreakInfo, 4(%esp)
	movl	%eax, (%esp)
	call	_bsearch
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L1815
	movl	%edi, 32(%esp)
	.cfi_offset 7, -12
	movzwl	6(%eax), %edi
	testl	$8, %edi
	je	L1817
	testb	$1, 12(%ebx)
	je	L1836
L1817:
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	andl	$4, %edi
	movl	%eax, _spritechanged(,%edx,4)
	movzwl	42(%ebx), %eax
	jne	L1838
	orb	$32, %ah
L1819:
	movw	%ax, 42(%ebx)
	movswl	14(%ebx), %eax
	movl	$-1171354717, %edi
	movzbl	20(%ebx), %edx
	movswl	_tilesiz(,%eax,4), %ebp
	movzbl	%dl, %eax
	imull	%ebp, %eax
	sarl	$6, %eax
	cmpb	$64, %dl
	leal	18(%ebx), %edx
	cmovne	%eax, %ebp
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	%al, 18(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%ebx)
	movzwl	2(%ecx), %eax
	testw	%ax, %ax
	js	L1837
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.0(%eax), %eax
	orb	%al, _gotpic(%edx)
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
L1815:
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1838:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	orb	$64, %ah
	jmp	L1819
	.p2align 4,,10
	.p2align 3
L1837:
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1836:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1833:
	ret
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	__Z17WallBreakPositionsPsPiS0_S0_S_
	.def	__Z17WallBreakPositionsPsPiS0_S0_S_;	.scl	2;	.type	32;	.endef
__Z17WallBreakPositionsPsPiS0_S0_S_:
LFB176:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
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
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_wall, %eax
	movl	%edx, 16(%esp)
	movswl	%bx, %edx
	sall	$5, %edx
	leal	(%eax,%edx), %esi
	movl	%edx, 20(%esp)
	movswl	8(%esi), %edx
	sall	$5, %edx
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movzwl	_numsectors, %ebp
	addw	$512, %ax
	andw	$2047, %ax
	testw	%bp, %bp
	jle	L1840
	movl	%esi, 24(%esp)
	movl	_sector, %edx
	xorl	%ecx, %ecx
	movw	%ax, 30(%esp)
	jmp	L1843
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1850:
	addl	$1, %ecx
	addl	$40, %edx
	cmpw	%bp, %cx
	je	L1857
L1843:
	movzwl	(%edx), %esi
	movzwl	2(%edx), %eax
	addl	%esi, %eax
	subl	$1, %eax
	cmpw	%ax, %bx
	jg	L1850
	cmpw	%si, %bx
	jl	L1850
	movl	24(%esp), %esi
	movzwl	30(%esp), %eax
	jmp	L1841
	.p2align 4,,10
	.p2align 3
L1857:
	movl	24(%esp), %esi
	movzwl	30(%esp), %eax
L1840:
	movl	$-1, %ecx
L1841:
	movl	16(%esp), %ebp
	movl	20(%esp), %ebx
	movw	%cx, 0(%ebp)
	movl	_wall, %edx
	movl	52(%esp), %ecx
	movl	(%edx,%ebx), %edx
	addl	%edx, %edx
	sarl	%edx
	movl	%edx, (%edi)
	movl	_wall, %edx
	movl	4(%edx,%ebx), %edx
	addl	%edx, %edx
	sarl	%edx
	movl	%edx, (%ecx)
	movswl	0(%ebp), %edx
	movl	_sector, %ebx
	leal	(%edx,%edx,4), %edx
	leal	(%ebx,%edx,8), %ecx
	movl	8(%ecx), %edx
	cmpw	$0, 10(%esi)
	js	L1844
	movswl	12(%esi), %esi
	leal	(%esi,%esi,4), %esi
	leal	(%ebx,%esi,8), %esi
	movl	8(%esi), %ebx
	movl	4(%esi), %esi
	cmpl	%ebx, %esi
	je	L1844
	cmpl	%edx, %ebx
	jl	L1858
	movl	4(%ecx), %edx
	cmpl	%esi, %edx
	jge	L1846
	movl	56(%esp), %ecx
	addl	%esi, %edx
	sarl	%edx
	movl	%edx, (%ecx)
	jmp	L1846
	.p2align 4,,10
	.p2align 3
L1844:
	addl	4(%ecx), %edx
	movl	56(%esp), %ecx
	sarl	%edx
	movl	%edx, (%ecx)
L1846:
	movl	60(%esp), %edx
	movl	16(%esp), %ebx
	movw	%ax, (%edx)
	movzwl	%ax, %edx
	addw	$512, %ax
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%eax,%eax), %eax
	sarl	$7, %edx
	sarl	$7, %eax
	addl	%eax, (%edi)
	movl	52(%esp), %eax
	addl	(%eax), %edx
	movl	%edx, (%eax)
	movl	56(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movl	$1, %eax
	cmpw	$0, (%ebx)
	js	L1859
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
	.p2align 4,,10
	.p2align 3
L1859:
	.cfi_restore_state
	movl	$2147483647, (%edi)
	addl	$32, %esp
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
L1858:
	.cfi_restore_state
	movl	56(%esp), %ecx
	addl	%edx, %ebx
	sarl	%ebx
	movl	%ebx, (%ecx)
	jmp	L1846
	.cfi_endproc
LFE176:
	.p2align 4
	.globl	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
__Z12HitBreakWallP10walltypev7iiiss.isra.0:
LFB179:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -12
	movswl	28(%eax), %esi
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	testw	%si, %si
	jg	L1890
	leal	48(%esp), %esi
	movl	%edi, 36(%esp)
	.cfi_offset 7, -8
	leal	44(%esp), %edi
	subl	_wall, %eax
	movl	%esi, 8(%esp)
	leal	16(%esp), %esi
	sarl	$5, %eax
	leal	20(%esp), %ecx
	movl	%edi, 4(%esp)
	leal	26(%esp), %edx
	cwtl
	movl	%esi, (%esp)
	call	__Z17WallBreakPositionsPsPiS0_S0_S_
	movswl	52(%esp), %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	movl	%eax, 8(%esp)
	movswl	48(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z13AutoBreakWallP10walltypev7iiiss.isra.0
	movl	36(%esp), %edi
	.cfi_restore 7
L1860:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1890:
	.cfi_restore_state
	movzwl	_headspritestat+90, %eax
	cmpw	$-1, %ax
	je	L1862
	movl	%edi, 36(%esp)
	.cfi_offset 7, -8
	movl	_sprite, %edi
	jmp	L1863
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1866:
	movzwl	_nextspritestat(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L1882
L1863:
	movswl	%ax, %edx
	imull	$44, %edx, %ecx
	addl	%edi, %ecx
	cmpw	38(%ecx), %si
	jne	L1866
	cmpw	$2307, 14(%ecx)
	jne	L1866
	testw	%ax, %ax
	js	L1882
	movzwl	32(%ecx), %eax
	cmpw	%ax, 16(%ebx)
	je	L1887
	leal	36(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	$5, %edi
	addl	$1, _spritechanged(,%edi,4)
	cmpb	$1, 37(%ecx)
	jbe	L1891
	leal	16(%ebx), %eax
	subl	_wall, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	addw	$1, 16(%ebx)
	movl	%esi, (%esp)
	call	__Z21DoSpawnSpotsForDamages
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1882:
	.cfi_restore_state
	movl	36(%esp), %edi
	.cfi_restore 7
L1862:
	movl	%esi, (%esp)
	call	__Z19DoSpawnSpotsForKills
	movl	_wall, %edx
	leal	14(%ebx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	andw	$-242, 14(%ebx)
	testw	%ax, %ax
	js	L1868
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	andw	$-242, 14(%edx,%ecx)
L1868:
	leal	26(%ebx), %eax
	xorl	%esi, %esi
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	leal	28(%ebx), %eax
	subl	%edx, %eax
	movw	%si, 26(%ebx)
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 28(%ebx)
	movswl	10(%ebx), %eax
	testw	%ax, %ax
	js	L1860
	movl	%eax, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	sall	$5, %ecx
	xorl	%eax, %eax
	movw	%ax, 26(%edx,%ecx)
	movswl	10(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	movw	%bx, 28(%edx,%ecx)
	jmp	L1860
	.p2align 4,,10
	.p2align 3
L1887:
	.cfi_offset 7, -8
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1891:
	.cfi_restore_state
	movl	%esi, (%esp)
	movl	%ecx, 12(%esp)
	call	__Z19DoSpawnSpotsForKills
	movl	$-1, %edx
	movl	%esi, %eax
	call	__Z15DoLightingMatchss
	movl	_spritechanged(,%edi,4), %eax
	movl	12(%esp), %ecx
	leal	1(%eax), %edx
	movl	%edx, _spritechanged(,%edi,4)
	cmpb	$0, 36(%ecx)
	je	L1892
	leal	2(%eax), %edx
	movl	%edx, _spritechanged(,%edi,4)
	cmpb	$1, 36(%ecx)
	je	L1893
	addl	$3, %eax
	movl	%eax, _spritechanged(,%edi,4)
	cmpb	$2, 36(%ecx)
	jne	L1887
	movl	_wall, %eax
	leal	16(%ebx), %edx
	movzwl	32(%ecx), %ecx
	subl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	14(%ebx), %edx
	subl	%eax, %edx
	movw	%cx, 16(%ebx)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	10(%ebx), %edx
	andw	$-66, 14(%ebx)
	testw	%dx, %dx
	js	L1874
	movl	%edx, %ecx
	andl	$134217727, %edx
	sall	$5, %ecx
	addl	$1, _wallchanged(,%edx,4)
	andw	$-66, 14(%eax,%ecx)
L1874:
	leal	26(%ebx), %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	subl	%eax, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%eax, %edx
	movw	%si, 26(%ebx)
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	10(%ebx), %edx
	movw	%di, 28(%ebx)
	testw	%dx, %dx
	js	L1887
	movl	%edx, %ecx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	sall	$5, %ecx
	xorl	%edx, %edx
	movw	%dx, 26(%eax,%ecx)
	movswl	10(%ebx), %edx
	xorl	%ebx, %ebx
	movl	%edx, %ecx
	andl	$134217727, %edx
	sall	$5, %ecx
	addl	$1, _wallchanged(,%edx,4)
	movw	%bx, 28(%eax,%ecx)
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1860
L1892:
	.cfi_restore_state
	movl	_wall, %edx
	leal	16(%ebx), %eax
	movzwl	32(%ecx), %ecx
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movw	%cx, 16(%ebx)
L1873:
	leal	26(%ebx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 26(%ebx)
	leal	28(%ebx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 28(%ebx)
	movswl	10(%ebx), %eax
	testw	%ax, %ax
	js	L1887
	movl	%eax, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	sall	$5, %ecx
	xorl	%eax, %eax
	movw	%ax, 26(%edx,%ecx)
	movswl	10(%ebx), %eax
	movl	%eax, %ecx
	andl	$134217727, %eax
	addl	$1, _wallchanged(,%eax,4)
	sall	$5, %ecx
	xorl	%eax, %eax
	movw	%ax, 28(%edx,%ecx)
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L1860
L1893:
	.cfi_restore_state
	movl	_wall, %edx
	leal	14(%ebx), %eax
	subl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movswl	10(%ebx), %eax
	andw	$-242, 14(%ebx)
	testw	%ax, %ax
	js	L1873
	movl	%eax, %ecx
	andl	$134217727, %eax
	sall	$5, %ecx
	addl	$1, _wallchanged(,%eax,4)
	andw	$-242, 14(%edx,%ecx)
	jmp	L1873
	.cfi_endproc
LFE179:
	.p2align 4
	.globl	__Z14HitBreakSpritess
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
__Z14HitBreakSpritess:
LFB183:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movswl	%ax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	imull	$44, %ebp, %ebx
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	_sprite, %esi
	addl	%esi, %ebx
	movzwl	42(%ebx), %eax
	movl	%eax, %edi
	andw	$64, %di
	je	L1895
	testb	$-128, %al
	je	L1960
L1896:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%esi, %esi
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
L1895:
	.cfi_restore_state
	movl	_User(,%ebp,4), %eax
	testl	%eax, %eax
	je	L1911
	movl	68(%eax), %esi
	andl	$16384, %esi
	jne	L1911
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	L1911
	movl	36(%eax), %ecx
	testl	%ecx, %ecx
	je	L1911
	movswl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L1961
L1913:
	movl	%ebp, (%esp)
	movl	$-1, 4(%esp)
	call	__Z10SpawnShrapss
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-8193, 42(%ebx)
	addl	$52, %esp
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
L1960:
	.cfi_restore_state
	movzwl	_headspritestat+90, %eax
	movswl	38(%ebx), %edi
	cmpw	$-1, %ax
	jne	L1897
	jmp	L1898
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1901:
	movzwl	_nextspritestat(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L1898
L1897:
	movswl	%ax, %edx
	imull	$44, %edx, %ecx
	addl	%esi, %ecx
	cmpw	38(%ecx), %di
	jne	L1901
	cmpw	$2307, 14(%ecx)
	jne	L1901
	testw	%ax, %ax
	js	L1898
	movzwl	32(%ecx), %eax
	cmpw	%ax, 14(%ebx)
	je	L1903
	leal	36(%ecx), %eax
	movswl	34(%ebx), %edi
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$1, 37(%ecx)
	jbe	L1962
	leal	14(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	movswl	%di, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	$1, 14(%ebx)
	movl	%eax, (%esp)
	call	__Z21DoSpawnSpotsForDamages
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1911:
	movzwl	14(%ebx), %eax
	movl	$__ZL16CompareBreakInfoPKvS0_.lto_priv.0, 16(%esp)
	movl	$10, 12(%esp)
	movw	%ax, 48(%esp)
	leal	48(%esp), %eax
	movl	$283, 8(%esp)
	movl	$_SpriteBreakInfo, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 24(%esp)
	call	_bsearch
	movzwl	40(%ebx), %ecx
	movl	24(%esp), %edx
	movl	%eax, 20(%esp)
	testw	%cx, %cx
	js	L1963
L1914:
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L1896
	movzwl	6(%eax), %eax
	testb	$1, %al
	je	L1918
	cmpw	$2099, %dx
	jg	L1919
	cmpw	$2097, %dx
	jg	L1918
	cmpw	$822, %dx
	jg	L1920
	cmpw	$816, %dx
	jle	L1922
	subw	$817, %dx
	movl	$41, %ecx
	btl	%edx, %ecx
	jnc	L1922
	.p2align 4
	.p2align 3
L1918:
	movl	_sprite, %ecx
	leal	42(%ebx), %edx
	movl	$-1171354717, %edi
	leal	12(%ebx), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	andw	$-8193, 42(%ebx)
	movl	20(%esp), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	%ecx, _GlobBreakInfo
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-16641, 12(%ebx)
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z10SpawnShrapss
	movl	20(%esp), %ecx
	movl	$0, _GlobBreakInfo
	movzwl	6(%ecx), %eax
	testb	$2, %al
	jne	L1926
	movzwl	2(%ecx), %ecx
	cmpw	$-1, %cx
	je	L1926
	movl	_sprite, %ebp
	leal	14(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 14(%ebx)
	cmpw	$3683, %cx
	jne	L1896
	subl	%ebp, %esi
	movl	%esi, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1926:
	testb	$16, %al
	jne	L1964
L1928:
	subl	_sprite, %esi
	movl	$-1171354717, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
L1959:
	movl	%ebp, %eax
	call	__Z18DeleteNoSoundOwners
	movl	%ebp, %eax
	call	__Z15KillBreakSprites.isra.0
L1903:
	addl	$52, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %esi
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
L1963:
	.cfi_restore_state
	cmpw	$0, _numwalls
	js	L1914
	movl	%ebp, 28(%esp)
	movl	%ecx, %ebp
	movl	%ebx, 24(%esp)
	movw	%dx, 34(%esp)
	jmp	L1917
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1916:
	addl	$1, %edi
	cmpw	_numwalls, %di
	jg	L1965
L1917:
	movswl	%di, %eax
	movl	_wall, %esi
	movl	%eax, %ebx
	sall	$5, %ebx
	addl	%esi, %ebx
	cmpw	28(%ebx), %bp
	jne	L1916
	leal	38(%esp), %edx
	leal	48(%esp), %ecx
	movl	%edx, 8(%esp)
	leal	44(%esp), %edx
	movl	%ecx, 4(%esp)
	leal	40(%esp), %ecx
	movl	%edx, (%esp)
	leal	36(%esp), %edx
	call	__Z17WallBreakPositionsPsPiS0_S0_S_
	leal	28(%ebx), %eax
	movl	44(%esp), %ecx
	movl	40(%esp), %edx
	subl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 28(%ebx)
	movswl	38(%esp), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z13AutoBreakWallP10walltypev7iiiss.isra.0
	jmp	L1916
	.p2align 4,,10
	.p2align 3
L1965:
	movl	24(%esp), %ebx
	movl	28(%esp), %ebp
	movzwl	34(%esp), %edx
	jmp	L1914
	.p2align 4,,10
	.p2align 3
L1962:
	movl	%edi, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$0, (%esp)
	movl	%ecx, 24(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	%edi, %eax
	xorl	%edx, %edx
	call	__Z15DoLightingMatchss
	movl	_sprite, %edi
	movl	20(%esp), %edx
	movl	$-1171354717, %eax
	movl	24(%esp), %ecx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	cmpb	$0, 36(%ecx)
	je	L1966
	leal	2(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	cmpb	$1, 36(%ecx)
	je	L1959
	addl	$3, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpb	$2, 36(%ecx)
	jne	L1896
	movzwl	32(%ecx), %eax
	movw	%ax, 14(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$2, 36(%ecx)
	jne	L1910
	leal	12(%ebx), %eax
	movl	$-1171354717, %esi
	subl	%edi, %eax
	mull	%esi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	andw	$-258, 12(%ebx)
L1910:
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-8193, 42(%ebx)
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1919:
	cmpw	$3122, %dx
	jg	L1922
	cmpw	$3099, %dx
	jg	L1924
	cmpw	$2196, %dx
	je	L1918
	cmpw	$3072, %dx
	je	L1918
	.p2align 4
	.p2align 3
L1922:
	movl	20(%esp), %edi
	movzwl	2(%edi), %ecx
	cmpw	$-1, %cx
	je	L1896
	movl	_sprite, %esi
	testb	$32, %al
	jne	L1925
	leal	42(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	andw	$-8193, 42(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-16641, 12(%ebx)
	movzwl	2(%edi), %ecx
L1925:
	leal	14(%ebx), %edx
	subl	%esi, %edx
	movl	$-1171354717, %esi
	movl	%edx, %eax
	mull	%esi
	movl	20(%esp), %eax
	movl	%eax, _GlobBreakInfo
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 14(%ebx)
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z10SpawnShrapss
	movl	$0, _GlobBreakInfo
	cmpw	$3683, 14(%ebx)
	jne	L1896
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1966:
	movzwl	32(%ecx), %eax
	leal	42(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 14(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-8193, 42(%ebx)
	jmp	L1896
	.p2align 4,,10
	.p2align 3
L1920:
	subw	$2010, %dx
	cmpw	$26, %dx
	ja	L1922
	movl	$67109313, %ecx
	btl	%edx, %ecx
	jc	L1918
	jmp	L1922
L1964:
	movl	%ebp, (%esp)
	call	__Z16SpawnBreakFlamess
	jmp	L1928
	.p2align 4,,10
	.p2align 3
L1961:
	movl	$-1, %edx
	call	__Z15DoLightingMatchss
	jmp	L1913
	.p2align 4,,10
	.p2align 3
L1898:
	movl	$-1, 8(%esp)
	movl	%edi, 4(%esp)
	movl	$0, (%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	movl	%ebp, %eax
	call	__Z18DeleteNoSoundOwners
	movl	%ebp, %eax
	call	__Z15KillBreakSprites.isra.0
	jmp	L1903
	.p2align 4,,10
	.p2align 3
L1924:
	subw	$3100, %dx
	movl	$6291617, %ecx
	btl	%edx, %ecx
	jnc	L1922
	jmp	L1918
	.cfi_endproc
LFE183:
	.globl	_s_BunnyScrew
	.data
	.align 32
_s_BunnyScrew:
	.word	4550
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+16
	.word	4552
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew
	.word	4555
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+48
	.word	4557
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+32
	.word	4560
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+80
	.word	4562
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+64
	.word	4565
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+112
	.word	4567
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+96
	.word	4570
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+144
	.word	4572
	.space 2
	.long	16
	.long	__Z12DoBunnyScrews
	.long	_s_BunnyScrew+128
	.globl	_s_BunnyHeart
	.align 32
_s_BunnyHeart:
	.word	4575
	.space 2
	.long	14
	.long	__Z16DoBunnyStandKills
	.long	_s_BunnyHeart
	.space 48
	.word	4580
	.space 2
	.long	14
	.long	__Z16DoBunnyStandKills
	.long	_s_BunnyHeart+64
	.space 48
	.word	4580
	.space 2
	.long	14
	.long	__Z16DoBunnyStandKills
	.long	_s_BunnyHeart+128
	.space 48
	.word	4580
	.space 2
	.long	14
	.long	__Z16DoBunnyStandKills
	.long	_s_BunnyHeart+192
	.space 48
	.word	4580
	.space 2
	.long	14
	.long	__Z16DoBunnyStandKills
	.long	_s_BunnyHeart+256
	.space 48
	.globl	_s_BunnySwipe
	.align 32
_s_BunnySwipe:
	.word	4575
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+16
	.word	4576
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+32
	.word	4576
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+48
	.word	4577
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+64
	.word	4578
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+80
	.word	4578
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+96
	.word	4578
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_BunnySwipe+112
	.word	4578
	.space 2
	.long	8
	.long	__Z11DoBunnyMoves
	.long	_s_BunnySwipe+112
	.word	4580
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+144
	.word	4581
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+160
	.word	4581
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+176
	.word	4582
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+192
	.word	4583
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+208
	.word	4583
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+224
	.word	4583
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_BunnySwipe+240
	.word	4583
	.space 2
	.long	8
	.long	__Z11DoBunnyMoves
	.long	_s_BunnySwipe+240
	.word	4580
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+272
	.word	4581
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+288
	.word	4581
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+304
	.word	4582
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+320
	.word	4583
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+336
	.word	4583
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+352
	.word	4583
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_BunnySwipe+368
	.word	4583
	.space 2
	.long	8
	.long	__Z11DoBunnyMoves
	.long	_s_BunnySwipe+368
	.word	4580
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+400
	.word	4581
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+416
	.word	4581
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+432
	.word	4582
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+448
	.word	4583
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+464
	.word	4583
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+480
	.word	4583
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_BunnySwipe+496
	.word	4583
	.space 2
	.long	8
	.long	__Z11DoBunnyMoves
	.long	_s_BunnySwipe+496
	.word	4580
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+528
	.word	4581
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+544
	.word	4581
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+560
	.word	4582
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+576
	.word	4583
	.space 2
	.long	8
	.long	__Z9NullBunnys
	.long	_s_BunnySwipe+592
	.word	4583
	.space 2
	.long	65536
	.long	__Z14InitBunnySlashs
	.long	_s_BunnySwipe+608
	.word	4583
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_BunnySwipe+624
	.word	4583
	.space 2
	.long	8
	.long	__Z11DoBunnyMoves
	.long	_s_BunnySwipe+624
	.globl	_s_BunnyDeathFall
	.align 4
_s_BunnyDeathFall:
	.word	4581
	.space 2
	.long	16
	.long	__Z16DoActorDeathMoves
	.long	_s_BunnyDeathFall
	.globl	_s_BunnyDeathJump
	.align 4
_s_BunnyDeathJump:
	.word	4580
	.space 2
	.long	16
	.long	__Z16DoActorDeathMoves
	.long	_s_BunnyDeathJump
	.globl	_s_BunnyDead
	.align 32
_s_BunnyDead:
	.word	4580
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.long	_s_BunnyDie+16
	.word	4580
	.space 2
	.long	65536
	.long	__Z9BunnySpews
	.long	_s_BunnyDie+32
	.word	4581
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	4582
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	4584
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4584
	.space 2
	.long	8
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_BunnyPain
	.align 32
_s_BunnyPain:
	.word	4575
	.space 2
	.long	38
	.long	__Z11DoBunnyPains
	.long	_s_BunnyPain
	.word	4575
	.space 2
	.long	38
	.long	__Z11DoBunnyPains
	.long	_s_BunnyPain+16
	.word	4575
	.space 2
	.long	38
	.long	__Z11DoBunnyPains
	.long	_s_BunnyPain+32
	.word	4575
	.space 2
	.long	38
	.long	__Z11DoBunnyPains
	.long	_s_BunnyPain+48
	.word	4575
	.space 2
	.long	38
	.long	__Z11DoBunnyPains
	.long	_s_BunnyPain+64
	.globl	_s_BunnyFall
	.align 32
_s_BunnyFall:
	.word	4553
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyFall
	.space 80
	.word	4558
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyFall+96
	.space 80
	.word	4563
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyFall+192
	.space 80
	.word	4568
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyFall+288
	.space 80
	.word	4573
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyFall+384
	.space 80
	.globl	_s_BunnyJump
	.align 32
_s_BunnyJump:
	.word	4551
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+16
	.word	4552
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+16
	.space 64
	.word	4556
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+112
	.word	4557
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+112
	.space 64
	.word	4561
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+208
	.word	4562
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+208
	.space 64
	.word	4566
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+304
	.word	4567
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+304
	.space 64
	.word	4571
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+400
	.word	4572
	.space 2
	.long	25
	.long	__Z15DoBunnyMoveJumps
	.long	_s_BunnyJump+400
	.space 64
	.globl	_s_BunnyStand
	.align 32
_s_BunnyStand:
	.word	4550
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+16
	.word	4554
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyStand+32
	.word	4554
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand
	.word	4555
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+64
	.word	4559
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyStand+80
	.word	4559
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+48
	.word	4560
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+112
	.word	4564
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyStand+128
	.word	4564
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+96
	.word	4565
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+160
	.word	4569
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyStand+176
	.word	4569
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+144
	.word	4570
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+208
	.word	4574
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyStand+224
	.word	4574
	.space 2
	.long	12
	.long	__Z10DoBunnyEats
	.long	_s_BunnyStand+192
	.globl	_BunnyWander
	.align 4
_BunnyWander:
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_BunnyCloseRange
	.align 4
_BunnyCloseRange:
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_BunnyLostTarget
	.align 4
_BunnyLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_BunnyEvasive
	.align 4
_BunnyEvasive:
	.word	500
	.space 2
	.long	__Z21InitActorWanderArounds
	.word	1020
	.space 2
	.long	__Z16InitActorRunAways
	.word	1024
	.space 2
	.long	__Z21InitActorAmbientNoises
	.globl	_BunnySurprised
	.align 4
_BunnySurprised:
	.word	500
	.space 2
	.long	__Z16InitActorRunAways
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_BunnyBroadcast
	.align 4
_BunnyBroadcast:
	.word	21
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	51
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_BunnyOffense
	.align 4
_BunnyOffense:
	.word	600
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	700
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_BunnyBattle
	.align 32
_BunnyBattle:
	.word	748
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	750
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	760
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	1024
	.space 2
	.long	__Z19InitActorMoveClosers
	.globl	_sg_BunnySwipe
	.align 4
_sg_BunnySwipe:
	.long	_s_BunnySwipe
	.long	_s_BunnySwipe+128
	.long	_s_BunnySwipe+256
	.long	_s_BunnySwipe+384
	.long	_s_BunnySwipe+512
	.globl	_sg_BunnyDeathFall
	.align 4
_sg_BunnyDeathFall:
	.long	_s_BunnyDeathFall
	.globl	_sg_BunnyDeathJump
	.align 4
_sg_BunnyDeathJump:
	.long	_s_BunnyDeathJump
	.globl	_sg_BunnyDead
	.align 4
_sg_BunnyDead:
	.long	_s_BunnyDead
	.globl	_sg_BunnyDie
	.align 4
_sg_BunnyDie:
	.long	_s_BunnyDie
	.globl	_sg_BunnyPain
	.align 4
_sg_BunnyPain:
	.long	_s_BunnyPain
	.long	_s_BunnyPain+16
	.long	_s_BunnyPain+32
	.long	_s_BunnyPain+48
	.long	_s_BunnyPain+64
	.globl	_sg_BunnyFall
	.align 4
_sg_BunnyFall:
	.long	_s_BunnyFall
	.long	_s_BunnyFall+96
	.long	_s_BunnyFall+192
	.long	_s_BunnyFall+288
	.long	_s_BunnyFall+384
	.globl	_sg_BunnyJump
	.align 4
_sg_BunnyJump:
	.long	_s_BunnyJump
	.long	_s_BunnyJump+96
	.long	_s_BunnyJump+192
	.long	_s_BunnyJump+288
	.long	_s_BunnyJump+384
	.globl	_s_DebrisStarFish
	.align 4
_s_DebrisStarFish:
	.word	426
	.space 2
	.long	100
	.long	__Z13DoActorDebriss
	.long	_s_DebrisStarFish
	.globl	_s_DebrisCrab
	.align 4
_s_DebrisCrab:
	.word	423
	.space 2
	.long	100
	.long	__Z13DoActorDebriss
	.long	_s_DebrisCrab
	.globl	_s_DebrisRat
	.align 4
_s_DebrisRat:
	.word	750
	.space 2
	.long	100
	.long	__Z13DoActorDebriss
	.long	_s_DebrisRat
	.globl	_s_DebrisNinja
	.align 4
_s_DebrisNinja:
	.word	4222
	.space 2
	.long	100
	.long	__Z13DoActorDebriss
	.long	_s_DebrisNinja
	.globl	_sg_BunnyStand
	.align 4
_sg_BunnyStand:
	.long	_s_BunnyStand
	.long	_s_BunnyStand+48
	.long	_s_BunnyStand+96
	.long	_s_BunnyStand+144
	.long	_s_BunnyStand+192
	.globl	_sg_BunnyHeart
	.align 4
_sg_BunnyHeart:
	.long	_s_BunnyHeart
	.long	_s_BunnyHeart+64
	.long	_s_BunnyHeart+128
	.long	_s_BunnyHeart+192
	.long	_s_BunnyHeart+256
	.globl	_wrandomseed
	.align 4
_wrandomseed:
	.long	1
	.globl	_sg_BunnyScrew
	.align 4
_sg_BunnyScrew:
	.long	_s_BunnyScrew
	.long	_s_BunnyScrew+32
	.long	_s_BunnyScrew+64
	.long	_s_BunnyScrew+96
	.long	_s_BunnyScrew+128
	.globl	_MoveSkip4
	.bss
_MoveSkip4:
	.space 1
	.globl	_BunnyAttrib
	.data
	.align 32
_BunnyAttrib:
	.word	100
	.word	120
	.word	140
	.word	180
	.ascii "\5\0\376\374"
	.byte	3
	.space 3
	.long	428
	.long	0
	.long	424
	.long	424
	.long	426
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_BunnyPersonality
	.align 32
_BunnyPersonality:
	.long	_BunnyEvasive
	.long	_BunnyEvasive
	.long	_BunnyEvasive
	.long	_BunnyWander
	.long	_BunnyWander
	.long	_BunnyWander
	.long	_BunnyEvasive
	.long	_BunnyEvasive
	.globl	_BunnyActionSet
	.align 32
_BunnyActionSet:
	.long	_sg_BunnyStand
	.long	_sg_BunnyRun
	.long	_sg_BunnyJump
	.long	_sg_BunnyFall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_BunnyPain
	.long	_sg_BunnyDie
	.long	0
	.long	_sg_BunnyDead
	.long	_sg_BunnyDeathJump
	.long	_sg_BunnyDeathFall
	.long	0
	.space 4
	.word	1024
	.space 2
	.long	0
	.space 20
	.word	1024
	.space 10
	.long	_sg_BunnyHeart
	.long	_sg_BunnyRun
	.long	0
	.long	0
	.globl	_WhiteBunnyAttrib
	.align 32
_WhiteBunnyAttrib:
	.word	200
	.word	220
	.word	340
	.word	380
	.ascii "\5\0\376\374"
	.byte	3
	.space 3
	.long	428
	.long	0
	.long	424
	.long	424
	.long	426
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_WhiteBunnyPersonality
	.align 32
_WhiteBunnyPersonality:
	.long	_BunnyBattle
	.long	_BunnyOffense
	.long	_BunnyBroadcast
	.long	_BunnySurprised
	.long	_BunnyEvasive
	.long	_BunnyLostTarget
	.long	_BunnyCloseRange
	.long	_BunnyCloseRange
	.globl	_BunnyWhiteActionSet
	.align 32
_BunnyWhiteActionSet:
	.long	_sg_BunnyStand
	.long	_sg_BunnyRun
	.long	_sg_BunnyJump
	.long	_sg_BunnyFall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_BunnyPain
	.long	_sg_BunnyDie
	.long	0
	.long	_sg_BunnyDead
	.long	_sg_BunnyDeathJump
	.long	_sg_BunnyDeathFall
	.long	_sg_BunnySwipe
	.space 4
	.word	1024
	.space 2
	.long	_sg_BunnySwipe
	.space 20
	.word	1024
	.space 10
	.long	_sg_BunnyHeart
	.long	_sg_BunnySwipe
	.long	0
	.long	0
	.globl	_sg_BunnyRun
	.align 4
_sg_BunnyRun:
	.long	_s_BunnyRun
	.long	_s_BunnyRun+96
	.long	_s_BunnyRun+192
	.long	_s_BunnyRun+288
	.long	_s_BunnyRun+384
	.globl	_s_BunnyDie
	.align 32
_s_BunnyDie:
	.word	4580
	.space 2
	.long	16
	.long	__Z9NullBunnys
	.space 4
	.word	4580
	.space 2
	.long	65536
	.long	__Z9BunnySpews
	.space 4
	.word	4581
	.space 2
	.long	16
	.long	__Z9NullBunnys
	.space 4
	.word	4582
	.space 2
	.long	16
	.long	__Z9NullBunnys
	.space 4
	.word	4582
	.space 2
	.long	16
	.long	__Z9NullBunnys
	.space 4
	.word	4584
	.space 2
	.long	16
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_Bunny_Count
	.bss
	.align 2
_Bunny_Count:
	.space 2
	.globl	_s_BunnyRun
	.data
	.align 32
_s_BunnyRun:
	.word	4550
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+16
	.word	4551
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+32
	.word	4552
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+48
	.word	4553
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+64
	.word	4554
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyRun+80
	.word	4554
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun
	.word	4555
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+112
	.word	4556
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+128
	.word	4557
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+144
	.word	4558
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+160
	.word	4559
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyRun+176
	.word	4559
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+96
	.word	4560
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+208
	.word	4561
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+224
	.word	4562
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+240
	.word	4563
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+256
	.word	4564
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyRun+272
	.word	4564
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+192
	.word	4565
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+304
	.word	4566
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+320
	.word	4567
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+336
	.word	4568
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+352
	.word	4569
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyRun+368
	.word	4569
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+288
	.word	4570
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+400
	.word	4571
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+416
	.word	4572
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+432
	.word	4573
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+448
	.word	4574
	.space 2
	.long	65536
	.long	__Z13DoBunnyGrowUps
	.long	_s_BunnyRun+464
	.word	4574
	.space 2
	.long	262154
	.long	__Z11DoBunnyMoves
	.long	_s_BunnyRun+384
	.globl	_numwalls
	.bss
	.align 2
_numwalls:
	.space 2
	.globl	_numsectors
	.align 2
_numsectors:
	.space 2
	.globl	_WallBreakInfo
	.data
	.align 32
_WallBreakInfo:
	.word	60
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	82
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	1
	.word	3593
	.word	8
	.word	0
	.word	0
	.word	253
	.word	255
	.word	1
	.word	0
	.word	0
	.word	254
	.word	255
	.word	1
	.word	0
	.word	0
	.word	282
	.word	-1
	.word	1
	.word	0
	.word	0
	.word	283
	.word	4974
	.word	8
	.word	0
	.word	0
	.word	318
	.word	599
	.word	1
	.word	0
	.word	0
	.word	486
	.word	-1
	.word	8
	.word	0
	.word	0
	.word	487
	.word	3676
	.word	8
	.word	0
	.word	0
	.word	628
	.word	3585
	.word	8
	.word	0
	.word	0
	.word	630
	.word	3586
	.word	8
	.word	0
	.word	0
	.word	633
	.word	608
	.word	1
	.word	0
	.word	0
	.word	634
	.word	608
	.word	1
	.word	0
	.word	0
	.word	637
	.word	3587
	.word	8
	.word	0
	.word	0
	.word	640
	.word	3588
	.word	8
	.word	0
	.word	0
	.word	641
	.word	3588
	.word	8
	.word	0
	.word	0
	.word	665
	.word	3588
	.word	8
	.word	0
	.word	0
	.word	742
	.word	3589
	.word	15
	.word	0
	.word	0
	.word	743
	.word	3590
	.word	15
	.word	0
	.word	0
	.word	750
	.word	608
	.word	1
	.word	0
	.word	0
	.word	2667
	.word	608
	.word	1
	.word	0
	.word	0
	.word	2769
	.word	3681
	.word	1
	.word	0
	.word	0
	.word	2676
	.word	3591
	.word	1
	.word	0
	.word	0
	.word	2677
	.word	3592
	.word	1
	.word	0
	.word	0
	.word	2687
	.word	2727
	.word	1
	.word	0
	.word	0
	.word	2688
	.word	2728
	.word	1
	.word	0
	.word	0
	.word	2732
	.word	3594
	.word	1
	.word	0
	.word	0
	.word	2777
	.word	3683
	.word	8
	.word	0
	.word	0
	.word	2778
	.word	2757
	.word	1
	.word	0
	.word	0
	.word	2801
	.word	3591
	.word	1
	.word	0
	.word	0
	.word	2804
	.word	3595
	.word	1
	.word	0
	.word	0
	.word	2807
	.word	3596
	.word	1
	.word	0
	.word	0
	.word	2810
	.word	4989
	.word	8
	.word	0
	.word	0
	.word	4890
	.word	4910
	.word	8
	.word	0
	.word	0
	.word	4891
	.word	4911
	.word	8
	.word	0
	.word	0
	.word	4892
	.word	4912
	.word	8
	.word	0
	.word	0
	.word	4893
	.word	4913
	.word	8
	.word	0
	.word	0
	.word	4894
	.word	4914
	.word	8
	.word	0
	.word	0
	.word	4895
	.word	4915
	.word	8
	.word	0
	.word	0
	.word	3336
	.word	4940
	.word	15
	.word	0
	.word	0
	.word	3337
	.word	4941
	.word	15
	.word	0
	.word	0
	.word	4885
	.word	4888
	.word	8
	.word	0
	.word	0
	.word	4887
	.word	4889
	.word	15
	.word	0
	.word	0
	.word	3350
	.word	4942
	.word	1
	.word	0
	.word	0
	.word	3351
	.word	4943
	.word	8
	.word	0
	.word	0
	.word	3352
	.word	4944
	.word	8
	.word	0
	.word	0
	.word	3353
	.word	4945
	.word	8
	.word	0
	.word	0
	.word	4896
	.word	4898
	.word	8
	.word	0
	.word	0
	.word	4897
	.word	4899
	.word	8
	.word	0
	.word	0
	.word	3385
	.word	4981
	.word	16
	.word	0
	.word	0
	.word	3389
	.word	4982
	.word	16
	.word	0
	.word	0
	.word	3393
	.word	4984
	.word	16
	.word	0
	.word	0
	.word	3397
	.word	4983
	.word	16
	.word	0
	.word	0
	.word	3401
	.word	4985
	.word	16
	.word	0
	.word	0
	.word	3405
	.word	4986
	.word	16
	.word	0
	.word	0
	.word	3409
	.word	4988
	.word	16
	.word	0
	.word	0
	.word	3413
	.word	4987
	.word	16
	.word	0
	.word	0
	.word	253
	.word	255
	.word	16
	.word	0
	.word	0
	.word	283
	.word	4974
	.word	16
	.word	0
	.word	0
	.word	299
	.word	4975
	.word	16
	.word	0
	.word	0
	.word	5078
	.word	5079
	.word	16
	.word	0
	.word	0
	.word	5080
	.word	5092
	.word	18
	.word	0
	.word	0
	.word	5083
	.word	5093
	.word	18
	.word	0
	.word	0
	.word	5086
	.word	5094
	.word	18
	.word	0
	.word	0
	.word	5089
	.word	5095
	.word	18
	.word	0
	.word	0
	.word	4970
	.word	4973
	.word	8
	.word	0
	.word	0
	.word	297
	.word	4980
	.word	8
	.word	0
	.word	0
	.word	1
	.word	4976
	.word	8
	.word	0
	.word	0
	.word	4917
	.word	4918
	.word	8
	.word	0
	.word	0
	.word	4902
	.word	4903
	.word	8
	.word	0
	.word	0
	.globl	_GlobBreakInfo
	.bss
	.align 4
_GlobBreakInfo:
	.space 4
	.globl	_wallchanged
	.align 32
_wallchanged:
	.space 67584
	.globl	_wall
	.align 4
_wall:
	.space 4
	.globl	_SpriteBreakInfo
	.data
	.align 32
_SpriteBreakInfo:
	.word	60
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	82
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	138
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	253
	.word	255
	.word	1
	.word	0
	.word	0
	.word	254
	.word	255
	.word	1
	.word	0
	.word	0
	.word	270
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	271
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	272
	.word	-1
	.word	12
	.word	0
	.word	0
	.word	274
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	282
	.word	-1
	.word	1
	.word	0
	.word	0
	.word	283
	.word	-1
	.word	8
	.word	0
	.word	0
	.word	297
	.word	-1
	.word	8
	.word	0
	.word	0
	.word	299
	.word	-1
	.word	8
	.word	0
	.word	0
	.word	363
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	365
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	366
	.word	-1
	.word	8
	.word	2
	.word	5
	.word	367
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	368
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	369
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	371
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	372
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	374
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	375
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	376
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	377
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	379
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	380
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	385
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	386
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	387
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	388
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	391
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	392
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	393
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	394
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	395
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	396
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	397
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	398
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	399
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	400
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	401
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	402
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	407
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	408
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	409
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	415
	.word	-1
	.word	8
	.word	18
	.word	5
	.word	418
	.word	-1
	.word	13
	.word	18
	.word	5
	.word	422
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	423
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	424
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	425
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	428
	.word	-1
	.word	8
	.word	4
	.word	0
	.word	430
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	431
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	432
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	433
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	434
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	435
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	436
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	437
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	438
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	441
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	442
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	443
	.word	-1
	.word	9
	.word	18
	.word	0
	.word	453
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	458
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	459
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	460
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	461
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	462
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	463
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	467
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	468
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	475
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	481
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	482
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	483
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	491
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	492
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	493
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	498
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	500
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	501
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	504
	.word	-1
	.word	8
	.word	2
	.word	5
	.word	505
	.word	-1
	.word	5
	.word	2
	.word	5
	.word	506
	.word	-1
	.word	13
	.word	2
	.word	5
	.word	507
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	508
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	509
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	510
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	511
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	512
	.word	-1
	.word	8
	.word	18
	.word	5
	.word	516
	.word	-1
	.word	12
	.word	4
	.word	0
	.word	517
	.word	-1
	.word	12
	.word	4
	.word	0
	.word	518
	.word	-1
	.word	12
	.word	4
	.word	0
	.word	519
	.word	-1
	.word	12
	.word	18
	.word	5
	.word	520
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	521
	.word	-1
	.word	12
	.word	18
	.word	0
	.word	537
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	541
	.word	-1
	.word	12
	.word	18
	.word	0
	.word	586
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	590
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	591
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	593
	.word	608
	.word	1
	.word	1
	.word	0
	.word	604
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	613
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	614
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	615
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	618
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	646
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	647
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	648
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	649
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	656
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	657
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	658
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	659
	.word	-1
	.word	8
	.word	2
	.word	5
	.word	663
	.word	-1
	.word	8
	.word	2
	.word	10
	.word	664
	.word	-1
	.word	8
	.word	2
	.word	5
	.word	666
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	670
	.word	-1
	.word	8
	.word	18
	.word	0
	.word	671
	.word	-1
	.word	1
	.word	18
	.word	0
	.word	673
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	674
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	675
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	676
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	678
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	679
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	683
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	684
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	685
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	686
	.word	-1
	.word	4
	.word	2
	.word	5
	.word	687
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	688
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	690
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	692
	.word	-1
	.word	12
	.word	12
	.word	0
	.word	695
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	696
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	697
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	698
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	699
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	702
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	703
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	704
	.word	-1
	.word	9
	.word	3
	.word	0
	.word	706
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	707
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	710
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	711
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	714
	.word	-1
	.word	9
	.word	2
	.word	5
	.word	721
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	722
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	723
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	724
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	725
	.word	-1
	.word	10
	.word	2
	.word	0
	.word	730
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	744
	.word	-1
	.word	1
	.word	2
	.word	5
	.word	2563
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	2564
	.word	-1
	.word	4
	.word	4
	.word	0
	.word	3570
	.word	-1
	.word	12
	.word	5
	.word	0
	.word	3571
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3572
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3573
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3574
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3575
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3576
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	3577
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	3578
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	3579
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	3580
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	3581
	.word	-1
	.word	12
	.word	5
	.word	0
	.word	3582
	.word	-1
	.word	12
	.word	5
	.word	0
	.word	2640
	.word	-1
	.word	9
	.word	2
	.word	5
	.word	2641
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	2642
	.word	-1
	.word	9
	.word	2
	.word	0
	.word	2680
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2681
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2682
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2683
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2684
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2685
	.word	-1
	.word	13
	.word	2
	.word	0
	.word	2687
	.word	2727
	.word	1
	.word	0
	.word	0
	.word	2688
	.word	2728
	.word	1
	.word	0
	.word	0
	.word	2699
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	2709
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	2720
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2721
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2722
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2723
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2724
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2725
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	2726
	.word	-1
	.word	5
	.word	2
	.word	0
	.word	2719
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	2750
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	2676
	.word	3591
	.word	1
	.word	0
	.word	0
	.word	2769
	.word	3681
	.word	1
	.word	0
	.word	0
	.word	2777
	.word	3683
	.word	8
	.word	1
	.word	0
	.word	2778
	.word	2757
	.word	1
	.word	0
	.word	0
	.word	3448
	.word	3451
	.word	8
	.word	3
	.word	0
	.word	3449
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	3497
	.word	-1
	.word	13
	.word	3
	.word	0
	.word	3551
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3552
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3553
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3554
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3555
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3556
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3557
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3558
	.word	-1
	.word	12
	.word	2
	.word	0
	.word	3568
	.word	-1
	.word	12
	.word	4
	.word	0
	.word	4994
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	4995
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	5010
	.word	-1
	.word	12
	.word	13
	.word	0
	.word	5017
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	5018
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	5019
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	5060
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	5061
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	5073
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	4218
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1133
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1134
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	811
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1440
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1512
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1643
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	1680
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	4226
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	4236
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	4421
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	4312
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	766
	.word	-1
	.word	15
	.word	2
	.word	0
	.word	767
	.word	-1
	.word	15
	.word	2
	.word	0
	.word	2700
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2701
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2702
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2703
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2704
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2705
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	2218
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	689
	.word	-1
	.word	8
	.word	3
	.word	0
	.word	3354
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	3357
	.word	-1
	.word	4
	.word	2
	.word	0
	.word	4886
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	646
	.word	708
	.word	8
	.word	3
	.word	0
	.word	708
	.word	-1
	.word	8
	.word	3
	.word	0
	.word	656
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	663
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	664
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	691
	.word	-1
	.word	8
	.word	2
	.word	0
	.word	5021
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	712
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	713
	.word	-1
	.word	7
	.word	2
	.word	0
	.word	693
	.word	-1
	.word	17
	.word	3
	.word	0
	.word	5041
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	5042
	.word	5077
	.word	11
	.word	3
	.word	0
	.word	5077
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	3356
	.word	3358
	.word	12
	.word	3
	.word	0
	.word	3358
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	900
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	901
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	902
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	915
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	916
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	917
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	930
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	931
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	932
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	1670
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	2219
	.word	-1
	.word	8
	.word	3
	.word	0
	.word	4768
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	4792
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	4816
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	4840
	.word	-1
	.word	1
	.word	2
	.word	0
	.word	4584
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	5062
	.word	-1
	.word	12
	.word	3
	.word	0
	.word	5063
	.word	4947
	.word	19
	.word	35
	.word	0
	.word	4947
	.word	-1
	.word	19
	.word	3
	.word	0
	.word	1160
	.word	-1
	.word	11
	.word	3
	.word	0
	.word	5104
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	3795
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	470
	.word	-1
	.word	11
	.word	2
	.word	0
	.word	5205
	.word	-1
	.word	11
	.word	3
	.word	0
	.globl	__ZL8pow2char.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZL8pow2char.lto_priv.0:
	.ascii "\1\2\4\10\20 @\200"
	.globl	__ZL8pow2char.lto_priv.1
	.set	__ZL8pow2char.lto_priv.1,__ZL8pow2char.lto_priv.0
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
	.globl	__ZL8pow2char.lto_priv.12
	.set	__ZL8pow2char.lto_priv.12,__ZL8pow2char.lto_priv.0
	.globl	__ZL8pow2char.lto_priv.13
	.set	__ZL8pow2char.lto_priv.13,__ZL8pow2char.lto_priv.0
	.globl	_gotpic
	.bss
	.align 32
_gotpic:
	.space 3840
	.section .rdata,"dr"
	.align 4
__ZZ16DisplayFragNamesP12PLAYERstructE5xoffs:
	.long	7
	.long	85
	.long	163
	.long	241
	.globl	_Prediction
	.bss
_Prediction:
	.space 1
	.globl	_startumost
	.align 4
_startumost:
	.space 4
	.globl	_OrigCommPlayers
	.align 2
_OrigCommPlayers:
	.space 2
	.globl	_RedrawScreen
_RedrawScreen:
	.space 1
	.globl	_x_aspect_mul
	.align 4
_x_aspect_mul:
	.space 4
	.globl	_f_xdim
	.align 4
_f_xdim:
	.space 4
	.globl	_DebugBorderShade
	.section .rdata,"dr"
	.align 2
_DebugBorderShade:
	.space 2
	.globl	_SwordAng
	.set	_SwordAng,_DebugBorderShade
	.globl	_FistAng
	.set	_FistAng,_DebugBorderShade
	.globl	_GlobSpriteBoxUpdateEveryFrame
_GlobSpriteBoxUpdateEveryFrame:
	.space 1
	.globl	_DemoEdit
	.set	_DemoEdit,_GlobSpriteBoxUpdateEveryFrame
	.globl	_BotMode
	.set	_BotMode,_GlobSpriteBoxUpdateEveryFrame
	.globl	_ConPanel
	.set	_ConPanel,_GlobSpriteBoxUpdateEveryFrame
	.globl	_ConInputMode
	.set	_ConInputMode,_GlobSpriteBoxUpdateEveryFrame
	.globl	_DebugActorFreeze
	.set	_DebugActorFreeze,_GlobSpriteBoxUpdateEveryFrame
	.globl	_DebugAnim
	.set	_DebugAnim,_GlobSpriteBoxUpdateEveryFrame
	.globl	_DebugSector
	.set	_DebugSector,_GlobSpriteBoxUpdateEveryFrame
	.globl	_DebugPanel
	.set	_DebugPanel,_GlobSpriteBoxUpdateEveryFrame
	.globl	_PlayerTrackingMode
	.set	_PlayerTrackingMode,_GlobSpriteBoxUpdateEveryFrame
	.globl	_Global_PLock
	.set	_Global_PLock,_GlobSpriteBoxUpdateEveryFrame
	.globl	_numpages
	.bss
	.align 4
_numpages:
	.space 4
	.section .rdata,"dr"
	.align 32
_RegBorderTest:
	.word	51
	.word	53
	.word	127
	.word	128
	.word	140
	.word	145
	.word	152
	.word	197
	.word	198
	.word	201
	.word	205
	.word	206
	.word	213
	.word	218
	.word	242
	.word	243
	.word	245
	.word	246
	.word	247
	.word	257
	.word	2560
	.word	2561
	.word	2562
	.word	2570
	.word	2571
	.word	2572
	.word	2573
	.word	2576
	.word	2578
	.word	2579
	.word	2580
	.word	2581
	.word	2582
	.word	2583
	.word	2584
	.word	2585
	.word	2593
	.word	2594
	.align 32
_SWBorderTest:
	.word	51
	.word	53
	.word	127
	.word	128
	.word	140
	.word	145
	.word	201
	.word	205
	.word	206
	.word	213
	.word	218
	.word	245
	.word	2560
	.word	2573
	.word	2576
	.word	2580
	.word	2581
	.word	2582
	.word	2583
	.word	2584
	.word	2593
	.globl	_SW_GameFlags
	.bss
_SW_GameFlags:
	.space 1
	.globl	_r_usenewaspect
	.data
	.align 4
_r_usenewaspect:
	.long	1
	.section .rdata,"dr"
	.align 32
_BorderInfoValues:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	48
	.word	0
	.word	0
	.word	48
	.word	16
	.word	0
	.word	48
	.word	32
	.word	0
	.word	48
	.word	48
	.word	0
	.word	48
	.word	64
	.word	0
	.word	48
	.word	80
	.word	0
	.word	48
	.word	96
	.word	0
	.word	48
	.word	112
	.word	0
	.word	48
	.word	128
	.word	0
	.word	48
	.word	144
	.word	0
	.word	48
	.word	160
	.word	0
	.word	48
	.word	176
	.word	0
	.word	48
	.word	192
	.globl	_BorderInfo
	.bss
	.align 4
_BorderInfo:
	.space 6
	.globl	_startdmost
	.align 4
_startdmost:
	.space 4
	.globl	_f_ydim
	.align 4
_f_ydim:
	.space 4
	.globl	_y_aspect_mul
	.align 4
_y_aspect_mul:
	.space 4
	.globl	_numplayers
	.align 4
_numplayers:
	.space 4
	.globl	_BorderAdjust
	.data
_BorderAdjust:
	.byte	1
	.globl	_myconnectindex
	.bss
	.align 4
_myconnectindex:
	.space 4
	.globl	_screenpeek
	.align 2
_screenpeek:
	.space 2
	.globl	_DemoPlaying
_DemoPlaying:
	.space 1
	.globl	_windowxy1
	.align 4
_windowxy1:
	.space 8
	.globl	_windowxy2
	.align 4
_windowxy2:
	.space 8
	.globl	_divtable64
	.align 32
_divtable64:
	.space 147456
.lcomm _lastd_s64,8,8
	.globl	_glad_glDeleteTextures
	.align 4
_glad_glDeleteTextures:
	.space 4
	.globl	_prartmaps
	.align 32
_prartmaps:
	.space 122880
	.globl	_pow2long.lto_priv.0
	.section .rdata,"dr"
	.align 32
_pow2long.lto_priv.0:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	32
	.long	64
	.long	128
	.long	256
	.long	512
	.long	1024
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.long	32768
	.long	65536
	.long	131072
	.long	262144
	.long	524288
	.long	1048576
	.long	2097152
	.long	4194304
	.long	8388608
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.long	268435456
	.long	536870912
	.long	1073741824
	.long	2147483647
	.globl	_pow2long.lto_priv.1
	.set	_pow2long.lto_priv.1,_pow2long.lto_priv.0
	.globl	_pow2long.lto_priv.2
	.set	_pow2long.lto_priv.2,_pow2long.lto_priv.0
	.globl	_rendmode
	.bss
	.align 4
_rendmode:
	.space 4
	.globl	_g_keyAsciiFIFO
	.align 32
_g_keyAsciiFIFO:
	.space 64
	.globl	_KB_LastScan
_KB_LastScan:
	.space 1
	.globl	_g_sm_heap
	.align 4
_g_sm_heap:
	.space 4
	.globl	__ZL4anim.lto_priv.0
	.align 4
__ZL4anim.lto_priv.0:
	.space 4
	.globl	_keystatus
	.align 32
_keystatus:
	.space 256
	.globl	_quitevent
_quitevent:
	.space 1
	.globl	_g_keyAsciiEnd
_g_keyAsciiEnd:
	.space 1
	.globl	_g_keyAsciiPos
_g_keyAsciiPos:
	.space 1
	.globl	_ototalclock
	.align 4
_ototalclock:
	.space 4
	.globl	_totalclock
	.align 8
_totalclock:
	.space 16
.lcomm _SoundState,2,2
	.globl	_xdim
	.align 4
_xdim:
	.space 4
	.globl	_ydim
	.align 4
_ydim:
	.space 4
	.globl	_waloff
	.align 32
_waloff:
	.space 122880
	.globl	_gs
	.align 32
_gs:
	.space 332
	.globl	_ds
	.align 32
_ds:
	.space 512
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
	.globl	_g_cache
	.align 4
_g_cache:
	.space 20
	.section .rdata,"dr"
LC7:
	.ascii "sw.anm\0"
LC8:
	.ascii "swend.anm\0"
LC9:
	.ascii "sumocinm.anm\0"
LC10:
	.ascii "zfcin.anm\0"
	.align 4
_ANIMname:
	.long	LC7
	.long	LC8
	.long	LC9
	.long	LC10
	.globl	_walock
	.bss
	.align 32
_walock:
	.space 30720
.lcomm _ANIMnum,1,1
.lcomm _anm_ptr,40,32
	.section .rdata,"dr"
	.align 32
__ZZ19InitActorRepositionsE10TowardDist:
	.long	10000
	.long	15000
	.long	20000
	.long	20000
	.long	25000
	.long	30000
	.long	35000
	.long	40000
	.align 32
__ZZ19InitActorRepositionsE8AwayDist:
	.long	17000
	.long	20000
	.long	26000
	.long	26000
	.long	26000
	.long	32000
	.long	32000
	.long	42000
	.align 32
__ZZ19InitActorRepositionsE10PlayerDist:
	.long	2000
	.long	3000
	.long	3000
	.long	5000
	.long	5000
	.long	5000
	.long	9000
	.long	9000
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
	.data
	.align 32
__ZZ12FindNewAnglesaiE16away_angle_delta:
	.word	-768
	.word	768
	.word	-640
	.word	640
	.word	-896
	.word	896
	.word	1024
	.word	-99
	.word	768
	.word	-768
	.word	640
	.word	-640
	.word	-896
	.word	896
	.word	1024
	.word	-99
	.word	896
	.word	-896
	.word	-768
	.word	768
	.word	-640
	.word	640
	.word	1024
	.word	-99
	.word	896
	.word	-896
	.word	768
	.word	-768
	.word	640
	.word	-640
	.word	1024
	.word	-99
	.align 32
__ZZ12FindNewAnglesaiE18toward_angle_delta:
	.word	-160
	.word	-384
	.word	160
	.word	384
	.word	-256
	.word	256
	.word	-512
	.word	512
	.word	-99
	.word	-384
	.word	-160
	.word	384
	.word	160
	.word	-256
	.word	256
	.word	-512
	.word	512
	.word	-99
	.word	160
	.word	384
	.word	-160
	.word	-384
	.word	256
	.word	-256
	.word	512
	.word	-512
	.word	-99
	.word	384
	.word	160
	.word	-384
	.word	-160
	.word	256
	.word	-256
	.word	512
	.word	-512
	.word	-99
	.section .rdata,"dr"
	.align 4
__ZZ15FindWanderTrackP4USERE12WanderTracks:
	.word	256
	.word	512
	.word	2048
	.word	8
	.word	4
	.word	128
	.word	64
	.word	32
	.word	1024
	.word	16384
	.align 4
__ZZ23FindTrackAwayFromPlayerP4USERE13RunAwayTracks:
	.word	1024
	.word	32
	.word	128
	.word	64
	.word	4
	.word	8
	.word	256
	.word	512
	.word	16384
	.word	4096
	.data
	.align 4
__ZZ17FindTrackToPlayerP4USERE11PlayerBelow:
	.word	8
	.word	64
	.word	128
	.word	16384
	.word	4096
	.align 4
__ZZ17FindTrackToPlayerP4USERE11PlayerAbove:
	.word	32
	.word	64
	.word	4
	.word	128
	.word	16384
	.word	4096
	.align 4
__ZZ17FindTrackToPlayerP4USERE13PlayerOnLevel:
	.word	256
	.word	512
	.word	128
	.word	1024
	.word	16384
	.word	4096
	.globl	_Track
	.bss
	.align 32
_Track:
	.space 1200
	.globl	_GenericFlaming
	.data
	.align 4
_GenericFlaming:
	.word	30
	.space 2
	.long	__Z15InitActorAttacks
	.word	512
	.space 2
	.long	__Z18InitActorRunTowards
	.word	1024
	.space 2
	.long	__Z16InitActorRunAways
	.globl	_nextspritestat
	.bss
	.align 32
_nextspritestat:
	.space 32768
	.globl	_headspritestat
	.align 32
_headspritestat:
	.space 2050
	.globl	_connectpoint2
	.align 32
_connectpoint2:
	.space 64
	.globl	_connecthead
	.align 4
_connecthead:
	.space 4
	.globl	_Player
	.align 32
_Player:
	.space 217116
	.section .rdata,"dr"
	.align 4
__ZZ21DoGenerateSewerDebrissE6Debris:
	.long	_s_DebrisNinja
	.long	_s_DebrisRat
	.long	_s_DebrisCrab
	.long	_s_DebrisStarFish
	.globl	_gNet
	.bss
	.align 4
_gNet:
	.space 20
	.globl	_tilesiz
	.align 32
_tilesiz:
	.space 122880
	.globl	_sector
	.align 4
_sector:
	.space 4
	.globl	_sintable
	.align 32
_sintable:
	.space 4096
	.globl	_SectUser
	.align 32
_SectUser:
	.space 16384
	.globl	_picanm
	.align 32
_picanm:
	.space 153600
	.globl	_randomseed
	.align 4
_randomseed:
	.space 4
	.globl	_krandcount
	.align 4
_krandcount:
	.space 4
	.globl	_s_NinjaDieSliced
	.data
	.align 32
_s_NinjaDieSliced:
	.word	4227
	.space 2
	.long	120
	.long	__Z9NullNinjas
	.space 4
	.word	4228
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.space 4
	.word	4229
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.space 4
	.word	4230
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.space 4
	.word	4231
	.space 2
	.long	19
	.long	__Z9NullNinjas
	.space 4
	.word	4232
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.space 4
	.word	4233
	.space 2
	.long	17
	.long	__Z9NullNinjas
	.space 4
	.word	4234
	.space 2
	.long	16
	.long	__Z9NullNinjas
	.space 4
	.word	4234
	.space 2
	.long	65536
	.long	__Z14DoNinjaSpecials
	.space 4
	.word	4235
	.space 2
	.long	15
	.long	__Z9NullNinjas
	.space 4
	.word	4236
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	4236
	.space 2
	.long	20
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_spritechanged
	.bss
	.align 32
_spritechanged:
	.space 65536
	.globl	_User
	.align 32
_User:
	.space 65536
	.globl	_sprite
	.align 4
_sprite:
	.space 4
	.section .rdata,"dr"
	.align 4
LC5:
	.long	1128792064
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z10move_actorsiii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z17FAFgetzrangepointiiisPiS_S_S_;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z18InitPlasmaFountainP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z15PlaySpriteSoundsii;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerTakeDamageP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13OperateSectorss;	.scl	2;	.type	32;	.endef
	.def	__Z14ActorFindTracksaiPsS_;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	__Z9ActorDropsiiiss;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_bsearch;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z17SpriteQueueDeletes;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z16PickJumpMaxSpeedss;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.3.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoClearViewableArea;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	_ANIM_DrawFrame;	.scl	2;	.type	32;	.endef
	.def	__Z15gltexinvalidateiii;	.scl	2;	.type	32;	.endef
	.def	_rotatesprite_.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_GetUserInput.isra.0;	.scl	2;	.type	32;	.endef
	.def	_CONTROL_ClearUserInput;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii;	.scl	2;	.type	32;	.endef
	.def	__Z17DisplayFragStringP12PLAYERstructssPKc;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdatePanelInfoP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
	.def	__Z19DoSpawnSpotsForKills;	.scl	2;	.type	32;	.endef
	.def	__Z15DoLightingMatchss;	.scl	2;	.type	32;	.endef
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnBreakFlamess;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBunnySlashs;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z9NullNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z14DoNinjaSpecials;	.scl	2;	.type	32;	.endef
