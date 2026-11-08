	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z12DoBlurExtendsss
	.def	__Z12DoBlurExtendsss;	.scl	2;	.type	32;	.endef
__Z12DoBlurExtendsss:
LFB0:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	_User(,%eax,4), %eax
	movzwl	240(%eax), %edx
	cmpw	12(%esp), %dx
	jge	L6
	movzwl	178(%eax), %ecx
	addl	$1, %ecx
	movw	%cx, 178(%eax)
	cmpw	8(%esp), %cx
	jle	L9
	xorl	%ecx, %ecx
	movw	%cx, 178(%eax)
L5:
	addl	$1, %edx
	cmpw	12(%esp), %dx
	cmovg	12(%esp), %dx
	movw	%dx, 240(%eax)
L6:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L9:
	testw	%cx, %cx
	je	L5
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z13OwnerIsPlayers
	.def	__Z13OwnerIsPlayers;	.scl	2;	.type	32;	.endef
__Z13OwnerIsPlayers:
LFB1:
	.cfi_startproc
	movswl	4(%esp), %edx
	imull	$44, %edx, %eax
	movl	_User(,%edx,4), %edx
	testl	%edx, %edx
	je	L14
	addl	_sprite, %eax
	je	L14
	movswl	30(%eax), %eax
	cmpl	$16383, %eax
	ja	L14
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L14
	movl	144(%eax), %eax
	testl	%eax, %eax
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
L14:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z6DoPuffs
	.def	__Z6DoPuffs;	.scl	2;	.type	32;	.endef
__Z6DoPuffs:
LFB2:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	_sprite, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %eax
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %ebx
	movl	152(%ebx), %edi
	movl	%edx, %eax
	addl	%edx, %ecx
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ecx), %edx
	addl	%edi, (%ecx)
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	156(%ebx), %edi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	addl	%edi, 4(%ecx)
	movl	160(%ebx), %ebx
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 8(%ecx)
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
LFE2:
	.p2align 4
	.globl	__Z10DoRailPuffs
	.def	__Z10DoRailPuffs;	.scl	2;	.type	32;	.endef
__Z10DoRailPuffs:
LFB3:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	8(%esp), %eax
	movl	_sprite, %ebx
	imull	$44, %eax, %eax
	leal	(%ebx,%eax), %ecx
	movl	$-1171354717, %ebx
	addl	$20, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	addb	$4, 20(%ecx)
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$4, 21(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z14DoBoltShrapnels
	.def	__Z14DoBoltShrapnels;	.scl	2;	.type	32;	.endef
__Z14DoBoltShrapnels:
LFB4:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z12DoBoltFatMans
	.def	__Z12DoBoltFatMans;	.scl	2;	.type	32;	.endef
__Z12DoBoltFatMans:
LFB6:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z15DoMineRangeTestss
	.def	__Z15DoMineRangeTestss;	.scl	2;	.type	32;	.endef
__Z15DoMineRangeTestss:
LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_StatDamageList, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ebp, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movswl	84(%esp), %eax
	movl	%eax, (%esp)
	imull	$44, %eax, %edi
	addl	_sprite, %edi
	movl	%edi, %ebp
	call	__Z13OwnerIsPlayers
	xorl	$1, %eax
	andl	$1, %eax
	movb	%al, 47(%esp)
	movswl	88(%esp), %eax
	movl	%eax, 24(%esp)
L39:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %eax
	movw	%ax, 22(%esp)
	cmpw	$-1, %ax
	je	L26
	movl	%esi, 48(%esp)
	.p2align 4
	.p2align 3
L38:
	movswl	22(%esp), %eax
	movl	4(%ebp), %ecx
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	movzwl	_nextspritestat(%eax,%eax), %edi
	movl	%eax, 28(%esp)
	movl	0(%ebp), %eax
	subl	(%esi), %eax
	movl	%eax, %edx
	movw	%di, 22(%esp)
	negl	%edx
	cmovs	%eax, %edx
	subl	4(%esi), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	%ebx, %edx
	leal	(%edx,%ebx), %edi
	cmovg	%ebx, %edx
	sarl	%edx
	subl	%edx, %edi
	cmpl	%edi, 24(%esp)
	jl	L27
	cmpl	%esi, %ebp
	je	L27
	testb	$1, 12(%esi)
	je	L27
	testb	$8, 43(%esi)
	je	L27
	movl	28(%esp), %edi
	movl	_User(,%edi,4), %edx
	cmpw	$5162, 82(%edx)
	jne	L42
	cmpb	$0, 47(%esp)
	jne	L27
L42:
	movl	8(%ebp), %edx
	subl	8(%esi), %edx
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 52(%esp)
	movl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	cmpl	%ecx, %ebx
	jge	L29
	leal	56(%esp), %ebx
	leal	52(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	52(%esp), %ebx
	movl	60(%esp), %eax
L29:
	cmpl	%eax, %ebx
	jge	L30
	leal	60(%esp), %ebx
	leal	52(%esp), %eax
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	60(%esp), %eax
	movl	52(%esp), %ebx
L30:
	movl	%ebx, %edx
	addl	56(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	cmpl	%ebx, 24(%esp)
	jl	L27
	movzwl	24(%ebp), %eax
	movswl	14(%esi), %ecx
	movl	8(%esi), %ebx
	movl	0(%ebp), %edi
	movw	%ax, 28(%esp)
	movl	8(%ebp), %eax
	movl	%ebx, 40(%esp)
	movzbl	21(%esi), %edx
	movl	%eax, 32(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 36(%esp)
	movzwl	24(%esi), %eax
	movw	%ax, 44(%esp)
	movswl	_tilesiz+2(,%ecx,4), %eax
	testb	$-128, 12(%esi)
	je	L31
	cmpb	$64, %dl
	je	L58
	movl	%edx, %ebx
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	imull	%eax, %ebx
	sall	$8, %ecx
	leal	(%ecx,%ebx,2), %ebx
	movl	40(%esp), %ecx
	subl	%ebx, %ecx
L34:
	imull	%edx, %eax
L36:
	movl	4(%esi), %edx
	movswl	28(%esp), %ebx
	addl	%eax, %ecx
	movl	(%esi), %eax
	movl	32(%esp), %esi
	movl	%edi, 4(%esp)
	movl	%ebx, 16(%esp)
	movswl	44(%esp), %ebx
	movl	%esi, 12(%esp)
	movl	36(%esp), %esi
	movl	%ebx, (%esp)
	movl	%esi, 8(%esp)
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L27
	movl	$1, %eax
L24:
	addl	$64, %esp
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
L27:
	.cfi_restore_state
	cmpw	$-1, 22(%esp)
	jne	L38
	movl	48(%esp), %esi
L26:
	addl	$2, %esi
	movl	$_StatDamageList+40, %eax
	cmpl	%esi, %eax
	jne	L39
	xorl	%eax, %eax
	jmp	L24
	.p2align 4,,10
	.p2align 3
L31:
	cmpb	$64, %dl
	je	L59
	movl	%edx, %ebx
	movl	40(%esp), %ecx
	imull	%eax, %ebx
	sall	$2, %ebx
	subl	%ebx, %ecx
	jmp	L34
	.p2align 4,,10
	.p2align 3
L59:
	movl	40(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
L33:
	sall	$6, %eax
	jmp	L36
	.p2align 4,,10
	.p2align 3
L58:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movl	%eax, %edx
	sall	$7, %edx
	sall	$8, %ecx
	addl	%ecx, %edx
	movl	%ebx, %ecx
	subl	%edx, %ecx
	jmp	L33
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z15DoExpDamageTests
	.def	__Z15DoExpDamageTests;	.scl	2;	.type	32;	.endef
__Z15DoExpDamageTests:
LFB10:
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
	subl	$80, %esp
	.cfi_def_cfa_offset 100
	movl	_sprite, %eax
	movswl	100(%esp), %esi
	imull	$44, %esi, %edx
	movl	%esi, 56(%esp)
	movl	_User(,%esi,4), %esi
	movl	%esi, 24(%esp)
	leal	(%eax,%edx), %edi
	cmpw	$3280, 82(%esi)
	jne	L176
L61:
	xorl	%eax, %eax
	cmpw	$8, 26(%edi)
	movl	$_StatDamageList, 52(%esp)
	setne	%al
	movl	%edi, 60(%esp)
	leal	_StatDamageList+38(%eax,%eax), %esi
	movl	%esi, 64(%esp)
	.p2align 4
	.p2align 3
L86:
	movl	52(%esp), %eax
	movswl	(%eax), %eax
	movzwl	_headspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L69
	movw	%ax, 20(%esp)
	movl	60(%esp), %ebp
	jmp	L68
	.p2align 4,,10
	.p2align 3
L70:
	movl	8(%esi), %edx
	movl	40(%esp), %eax
	subl	8(%ebp), %edx
	subl	36(%esp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movl	%eax, %ecx
	movl	32(%esp), %eax
	subl	28(%esp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%eax, %ebx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	cmpl	%ebx, %ecx
	jge	L72
	leal	72(%esp), %ebx
	leal	68(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ecx
	movl	76(%esp), %eax
L72:
	cmpl	%eax, %ecx
	jge	L73
	leal	68(%esp), %eax
	leal	76(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ecx
	movl	76(%esp), %eax
L73:
	movl	%ecx, %edx
	addl	72(%esp), %eax
	movl	24(%esp), %edi
	sarl	$4, %edx
	subl	%edx, %ecx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movl	44(%esp), %eax
	movl	188(%eax), %eax
	addl	188(%edi), %eax
	cmpl	%ecx, %eax
	jb	L71
	movzwl	12(%esi), %edx
	testw	$257, %dx
	je	L71
	movzwl	24(%esi), %eax
	movswl	14(%esi), %ebx
	andl	$128, %edx
	movl	8(%esi), %edi
	movzbl	21(%esi), %ecx
	movw	%ax, 28(%esp)
	movswl	_tilesiz+2(,%ebx,4), %eax
	je	L74
	cmpb	$64, %cl
	je	L177
	movl	%ecx, %edx
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	imull	%eax, %edx
	sall	$8, %ebx
	leal	(%ebx,%edx,2), %edx
	subl	%edx, %edi
	movl	%edi, 32(%esp)
L77:
	imull	%ecx, %eax
L79:
	movswl	28(%esp), %ebx
	addl	32(%esp), %eax
	movl	0(%ebp), %edi
	movl	8(%ebp), %ecx
	movl	4(%ebp), %edx
	movl	%ebx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L80
	movzwl	24(%esi), %eax
	movl	8(%esi), %edi
	movzbl	21(%esi), %ecx
	movw	%ax, 32(%esp)
	movswl	14(%esi), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%eax,4), %edx
	testb	$-128, 12(%esi)
	je	L81
	cmpb	$64, %cl
	je	L178
	movzbl	%cl, %ebx
	movl	28(%esp), %edi
	movsbl	_picanm+2(%eax,%eax,4), %eax
	movl	%ebx, %ecx
	imull	%edx, %ecx
	sall	$8, %eax
	leal	(%edi,%ecx,2), %ecx
	subl	%eax, %ecx
	movl	%ecx, 28(%esp)
L84:
	imull	%ebx, %edx
L85:
	movswl	32(%esp), %eax
	movl	4(%ebp), %ebx
	movl	0(%ebp), %edi
	movl	8(%ebp), %ecx
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	subl	%edx, %eax
	movl	%ebx, %edx
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L71
L80:
	movl	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	.p2align 4
	.p2align 3
L71:
	cmpw	$-1, 20(%esp)
	je	L69
L68:
	movswl	20(%esp), %ecx
	movl	0(%ebp), %edx
	movl	4(%ebp), %ebx
	movzwl	_nextspritestat(%ecx,%ecx), %esi
	imull	$44, %ecx, %eax
	movl	%edx, 36(%esp)
	addl	_sprite, %eax
	movl	_User(,%ecx,4), %edi
	movl	%ebx, 28(%esp)
	movw	%si, 20(%esp)
	movl	%eax, %esi
	movl	(%eax), %eax
	movl	%edi, 44(%esp)
	subl	%eax, %edx
	movl	%eax, 40(%esp)
	movl	%edx, %eax
	movl	%ecx, 48(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	%edx, %ebx
	movl	%edx, 32(%esp)
	movl	%ebx, %edx
	negl	%edx
	cmovs	%ebx, %edx
	movl	188(%edi), %ebx
	movl	24(%esp), %edi
	addl	188(%edi), %ebx
	cmpl	%edx, %eax
	movl	%ebx, %edi
	leal	(%eax,%edx), %ebx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebx
	cmpl	%ebx, %edi
	jb	L71
	cmpl	%esi, %ebp
	je	L71
	movl	52(%esp), %eax
	cmpw	$61, (%eax)
	jne	L70
	movl	56(%esp), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	cmpw	$-1, 20(%esp)
	jne	L68
	.p2align 4
	.p2align 3
L69:
	addl	$2, 52(%esp)
	movl	52(%esp), %eax
	cmpl	%eax, 64(%esp)
	jne	L86
	movl	24(%esp), %esi
	movl	60(%esp), %edi
	cmpw	$3280, 82(%esi)
	je	L89
	movl	188(%esi), %ebx
	movl	(%edi), %edx
	movl	$_StatBreakList, %ebp
	movl	4(%edi), %ecx
	movswl	24(%edi), %eax
	movl	%ebx, 8(%esp)
	movswl	28(%edi), %ebx
	movl	%ebx, 4(%esp)
	movl	8(%edi), %ebx
	movl	%ebx, (%esp)
	call	__Z22TraverseBreakableWallssiiisi
	xorl	%edx, %edx
	movl	%edi, 60(%esp)
	movl	%ebp, %edi
	movw	%dx, 52(%esp)
L109:
	movswl	(%edi), %eax
	movzwl	_headspritestat(%eax,%eax), %eax
	movw	%ax, 20(%esp)
	cmpw	$-1, %ax
	je	L91
	movl	%edi, 56(%esp)
	movl	60(%esp), %ebp
	jmp	L90
	.p2align 4,,10
	.p2align 3
L182:
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	sall	$8, %ebx
	movl	%ebx, 44(%esp)
	cmpb	$64, %dl
	je	L179
	imull	36(%esp), %edx
	movl	44(%esp), %ebx
	addl	%edx, %edx
	movl	%edx, 48(%esp)
	addl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	movl	%ebx, 36(%esp)
L94:
	movl	48(%esp), %edx
	subl	44(%esp), %edx
	addl	%edx, %eax
L97:
	movl	36(%esp), %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	28(%esp), %eax
	sarl	%edx
	subl	8(%ebp), %edx
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	movl	%eax, %ebx
	movl	%edi, %eax
	subl	32(%esp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 72(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 76(%esp)
	cmpl	%ecx, %ebx
	jge	L98
	leal	72(%esp), %ebx
	leal	68(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ebx
	movl	76(%esp), %eax
L98:
	cmpl	%eax, %ebx
	jge	L99
	leal	68(%esp), %eax
	leal	76(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %ebx
	movl	76(%esp), %eax
L99:
	movl	%ebx, %edx
	addl	72(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	movl	24(%esp), %eax
	cmpl	%ebx, 188(%eax)
	jb	L108
	movzwl	24(%ebp), %eax
	movswl	14(%esi), %edx
	movl	0(%ebp), %edi
	movl	8(%esi), %ecx
	movw	%ax, 28(%esp)
	movl	8(%ebp), %eax
	movzbl	21(%esi), %ebx
	movl	%eax, 32(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 36(%esp)
	movzwl	24(%esi), %eax
	movw	%ax, 44(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	testb	$-128, 12(%esi)
	je	L101
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %bl
	je	L180
	imull	%eax, %ebx
	leal	(%ebx,%ebx), %eax
	movl	%ecx, %ebx
	movl	%eax, 48(%esp)
	addl	%edx, %eax
	subl	%eax, %ebx
L103:
	movl	48(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L106:
	addl	%ebx, %ecx
	movswl	28(%esp), %ebx
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%ebx, 16(%esp)
	movl	32(%esp), %ebx
	movl	%ebx, 12(%esp)
	movl	36(%esp), %ebx
	movl	%ebx, 8(%esp)
	movswl	44(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L108
	testb	$32, 43(%esi)
	jne	L181
L108:
	cmpw	$-1, 20(%esp)
	je	L171
L90:
	movswl	20(%esp), %esi
	movzwl	_nextspritestat(%esi,%esi), %eax
	movw	%si, 40(%esp)
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	(%esi), %ecx
	movl	4(%esi), %edi
	movw	%ax, 20(%esp)
	movl	0(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebp), %edx
	movl	%edx, 32(%esp)
	subl	%edi, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebx
	movl	24(%esp), %eax
	cmpl	%ebx, 188(%eax)
	jb	L108
	movswl	14(%esi), %ebx
	movzbl	21(%esi), %edx
	movswl	_tilesiz+2(,%ebx,4), %eax
	movl	%eax, 36(%esp)
	movl	8(%esi), %eax
	testb	$-128, 12(%esi)
	jne	L182
	cmpb	$64, %dl
	je	L183
	imull	36(%esp), %edx
	sall	$2, %edx
L96:
	movl	%eax, %ebx
	subl	%edx, %ebx
	movl	%ebx, 36(%esp)
	jmp	L97
	.p2align 4,,10
	.p2align 3
L101:
	cmpb	$64, %bl
	je	L184
	imull	%eax, %ebx
	leal	0(,%ebx,4), %eax
L105:
	movl	%ecx, %ebx
	subl	%eax, %ebx
	jmp	L106
	.p2align 4,,10
	.p2align 3
L74:
	cmpb	$64, %cl
	je	L185
	movl	%ecx, %edx
	imull	%eax, %edx
	sall	$2, %edx
	subl	%edx, %edi
	movl	%edi, 32(%esp)
	jmp	L77
	.p2align 4,,10
	.p2align 3
L179:
	movl	36(%esp), %edx
	sall	$7, %edx
	movl	%edx, 48(%esp)
	addl	%ebx, %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	movl	%ebx, 36(%esp)
	jmp	L94
	.p2align 4,,10
	.p2align 3
L183:
	movl	36(%esp), %edx
	sall	$8, %edx
	jmp	L96
	.p2align 4,,10
	.p2align 3
L181:
	movl	24(%esp), %eax
	movswl	82(%eax), %edx
	movswl	40(%esp), %eax
	call	__Z14HitBreakSpritess
	addw	$1, 52(%esp)
	cmpw	$6, 52(%esp)
	jle	L108
	.p2align 4
	.p2align 3
L171:
	movl	56(%esp), %edi
L91:
	addl	$2, %edi
	cmpl	$_StatBreakList+8, %edi
	jne	L109
	movl	24(%esp), %eax
	movl	60(%esp), %edi
	cmpw	$2106, 82(%eax)
	je	L89
	movzwl	_headspritestat+156, %esi
	movl	$0, 20(%esp)
	movl	$999999, %ebp
	cmpw	$-1, %si
	je	L89
	movl	%ebp, 28(%esp)
	movl	24(%esp), %ebp
	.p2align 4
	.p2align 3
L110:
	movswl	%si, %ebx
	movl	(%edi), %edx
	movzwl	_nextspritestat(%ebx,%ebx), %esi
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	subl	4(%ebx), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	movl	188(%ebp), %eax
	shrl	$2, %eax
	cmpl	%ecx, %eax
	jb	L112
	testb	$64, 42(%ebx)
	jne	L112
	movswl	38(%ebx), %eax
	movl	%edi, (%esp)
	movl	%ecx, 24(%esp)
	movl	%eax, 4(%esp)
	call	__Z14CanSeeWallMoveP12spritetypev7s
	movl	28(%esp), %edx
	movl	24(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L112
	testb	$1, %al
	cmove	20(%esp), %ebx
	cmove	%edx, %ecx
	movl	%ebx, 20(%esp)
	movl	%ecx, 28(%esp)
L112:
	cmpw	$-1, %si
	jne	L110
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L89
	movl	20(%esp), %eax
	movzwl	38(%eax), %esi
	testw	%si, %si
	je	L186
	movzwl	_headspritestat+156, %ebx
	xorl	%edx, %edx
	cmpw	$-1, %bx
	jne	L117
	jmp	L89
	.p2align 6
	.p2align 4,,10
	.p2align 3
L120:
	cmpw	$-1, %bx
	je	L187
L117:
	movswl	%bx, %eax
	movzwl	_nextspritestat(%eax,%eax), %ebx
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpw	38(%eax), %si
	jne	L120
	movl	%eax, (%esp)
	call	__Z10DoWallMoveP12spritetypev7
	movl	$1, %edx
	cmpw	$-1, %bx
	jne	L117
L187:
	testb	%dl, %dl
	je	L89
	movl	20(%esp), %eax
	movswl	38(%eax), %eax
	movl	%eax, (%esp)
	call	__Z21DoSpawnSpotsForDamages
L89:
	addl	$80, %esp
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
L81:
	.cfi_restore_state
	movzbl	%cl, %ebx
	cmpb	$64, %cl
	jne	L84
	sall	$6, %edx
	jmp	L85
	.p2align 4,,10
	.p2align 3
L180:
	sall	$7, %eax
	movl	%ecx, %ebx
	movl	%eax, 48(%esp)
	addl	%edx, %eax
	subl	%eax, %ebx
	jmp	L103
	.p2align 4,,10
	.p2align 3
L184:
	sall	$8, %eax
	jmp	L105
	.p2align 4,,10
	.p2align 3
L177:
	movsbl	_picanm+2(%ebx,%ebx,4), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	subl	%edx, %edi
	movl	%edi, 32(%esp)
L76:
	sall	$6, %eax
	jmp	L79
	.p2align 4,,10
	.p2align 3
L185:
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %edi
	movl	%edi, 32(%esp)
	jmp	L76
	.p2align 4,,10
	.p2align 3
L178:
	movsbl	_picanm+2(%eax,%eax,4), %eax
	movl	%edx, %ecx
	sall	$6, %edx
	sall	$7, %ecx
	sall	$8, %eax
	subl	%eax, %ecx
	addl	%ecx, 28(%esp)
	jmp	L85
L176:
	movzwl	_headspritestat+92, %edx
	cmpw	$-1, %dx
	je	L61
L62:
	movswl	%dx, %ebp
	movl	8(%edi), %ebx
	movl	4(%edi), %ecx
	imull	$44, %ebp, %edx
	movzwl	_nextspritestat(%ebp,%ebp), %esi
	movw	%si, 20(%esp)
	leal	(%eax,%edx), %esi
	movl	(%edi), %eax
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
	jge	L64
	leal	68(%esp), %eax
	leal	72(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edx
	movl	76(%esp), %eax
L64:
	cmpl	%eax, %edx
	jge	L65
	leal	76(%esp), %ebx
	leal	68(%esp), %eax
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	76(%esp), %eax
	movl	68(%esp), %edx
L65:
	movzbl	18(%esi), %ecx
	testb	%cl, %cl
	je	L63
	movl	24(%esp), %ebx
	sall	$5, %ecx
	addl	72(%esp), %eax
	movl	188(%ebx), %ebx
	movl	%ebx, 28(%esp)
	shrl	%ebx
	addl	%ebx, %ecx
	movl	%edx, %ebx
	sarl	$4, %ebx
	subl	%ebx, %edx
	movl	%eax, %ebx
	sarl	$3, %eax
	sarl	$2, %ebx
	addl	%ebx, %edx
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jb	L63
	movswl	24(%esi), %ebx
	movl	8(%edi), %ecx
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	%ebx, 16(%esp)
	movl	8(%esi), %ebx
	movl	%ebx, 12(%esp)
	movl	4(%esi), %ebx
	movl	%ebx, 8(%esp)
	movl	(%esi), %ebx
	movl	%ebx, 4(%esp)
	movswl	24(%edi), %ebx
	movl	%ebx, (%esp)
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L63
	movl	56(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__Z15MissileHitMatchsss
	jmp	L61
	.p2align 4,,10
	.p2align 3
L63:
	movzwl	20(%esp), %edx
	cmpw	$-1, %dx
	je	L61
	movl	_sprite, %eax
	jmp	L62
L186:
	movl	%eax, (%esp)
	call	__Z10DoWallMoveP12spritetypev7
	addl	$80, %esp
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
LFE10:
	.p2align 4
	.globl	__Z13DoMineExpMines
	.def	__Z13DoMineExpMines;	.scl	2;	.type	32;	.endef
__Z13DoMineExpMines:
LFB13:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movswl	_headspritestat+16, %ebx
	cmpw	$-1, %bx
	je	L189
	movswl	56(%esp), %eax
	movl	%edi, 44(%esp)
	movl	%esi, 40(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	_sprite, %esi
	imull	$44, %eax, %edi
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	%esi, 8(%esp)
	addl	%edi, %esi
	movl	%edi, 24(%esp)
	movl	188(%eax), %eax
	movl	(%esi), %edi
	movl	%esi, 32(%esp)
	movl	4(%esi), %esi
	movl	%eax, 12(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 20(%esp)
	.p2align 4
	.p2align 3
L190:
	imull	$44, %ebx, %ebp
	movl	8(%esp), %eax
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movl	12(%esp), %edi
	leal	(%eax,%ebp), %esi
	subl	(%esi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	subl	4(%esi), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	_User(,%ebx,4), %ecx
	addl	188(%ecx), %edi
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %edi
	jb	L191
	cmpl	%ebp, 24(%esp)
	je	L191
	testb	$1, 13(%esi)
	je	L191
	movl	28(%esp), %eax
	movl	%ebx, %edx
	call	__Z13SpriteOverlapss
	testb	%al, %al
	jne	L193
	movl	32(%esp), %eax
	movl	8(%esi), %edx
	subl	8(%eax), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	cmpl	%edi, %eax
	jb	L193
L191:
	movswl	_nextspritestat(%ebx,%ebx), %ebx
	cmpw	$-1, %bx
	jne	L190
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L189:
	movl	36(%esp), %ebx
	xorl	%eax, %eax
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L193:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z12DoPlasmaDones
	.def	__Z12DoPlasmaDones;	.scl	2;	.type	32;	.endef
__Z12DoPlasmaDones:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	_sprite, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movswl	20(%esp), %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	movzwl	176(%ebx), %ebp
	leal	(%edi,%eax), %ecx
	movl	$-1171354717, %edi
	addl	$20, %eax
	mull	%edi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	addb	%al, 20(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subb	$4, 21(%ecx)
	addw	$2, 176(%ebx)
	cmpb	$5, 21(%ecx)
	jbe	L210
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
L210:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z10KillSprites
	popl	%ebx
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
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z11DoCrossBolts
	.def	__Z11DoCrossBolts;	.scl	2;	.type	32;	.endef
__Z11DoCrossBolts:
LFB15:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z12DoBlurExtendsss
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$4096, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L219
L211:
	addl	$20, %esp
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
L219:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L211
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L211
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z8DoTracers
	.def	__Z8DoTracers;	.scl	2;	.type	32;	.endef
__Z8DoTracers:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$4, %ebp
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
	movl	_sprite, %edi
	movswl	40(%esp), %esi
	movl	_User(,%esi,4), %ebx
L223:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L229
L221:
	subw	$1, %bp
	jne	L223
	imull	$44, %esi, %esi
	movl	$-1171354717, %eax
	addl	%edi, %esi
	leal	12(%esi), %edx
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%esi)
L220:
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
L229:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L221
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L220
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z5DoEMPs
	.def	__Z5DoEMPs;	.scl	2;	.type	32;	.endef
__Z5DoEMPs:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$4, %edx
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
	movswl	52(%esp), %ebp
	movw	%dx, 30(%esp)
	imull	$44, %ebp, %edi
	addl	_sprite, %edi
	movl	_User(,%ebp,4), %ebx
	leal	21(%edi), %eax
	movl	%eax, 24(%esp)
	leal	20(%edi), %eax
	movl	%eax, 20(%esp)
L236:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	_randomseed, %eax
	movl	24(%esp), %ecx
	subl	_sprite, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	movl	$-1171354717, %eax
	mull	%ecx
	movl	$-1171354717, %eax
	movzwl	%si, %esi
	movl	%esi, _randomseed
	movl	%edx, %ecx
	movl	20(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpl	$65535, %esi
	je	L231
	sall	$14, %esi
	cmpl	$537936224, %esi
	ja	L231
	movb	$8, 20(%edi)
	movl	_spritechanged(,%ecx,4), %eax
	movl	$38, %edx
	addl	$1, %eax
L233:
	movl	%eax, _spritechanged(,%ecx,4)
	movb	%dl, 21(%edi)
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L245
L234:
	subw	$1, 30(%esp)
	jne	L236
	movl	$-1171354717, %eax
	leal	12(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%edi)
L230:
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
L231:
	.cfi_restore_state
	movb	$52, 20(%edi)
	movl	_spritechanged(,%ecx,4), %eax
	movl	$10, %edx
	addl	$1, %eax
	jmp	L233
	.p2align 4,,10
	.p2align 3
L245:
	movl	%ebp, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L234
	movl	%ebp, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L230
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z13DoTracerStarts
	.def	__Z13DoTracerStarts;	.scl	2;	.type	32;	.endef
__Z13DoTracerStarts:
LFB19:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L254
L246:
	addl	$20, %esp
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
L254:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L246
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L246
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z8DoPlasmas
	.def	__Z8DoPlasmas;	.scl	2;	.type	32;	.endef
__Z8DoPlasmas:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movswl	68(%esp), %esi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %edi
	movl	(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	8(%ebx), %eax
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	movl	%eax, 32(%esp)
	call	__Z12DoBlurExtendsss
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movswl	36(%ebx), %ebp
	leal	512(%eax), %ecx
	andl	$2047, %eax
	andl	$2047, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	movl	$6, 16(%esp)
	imull	%edx, %eax
	movl	$1090519104, 12(%esp)
	imull	%edx, %ecx
	movl	$4096, 8(%esp)
	movl	$4096, 4(%esp)
	movl	%ebp, (%esp)
	sarl	$14, %eax
	sarl	$14, %ecx
	movl	%eax, 36(%esp)
	movl	%ecx, 20(%esp)
	movl	20(%esp), %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%edi)
	testl	%eax, %eax
	je	L256
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L285
L256:
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%edi)
	jne	L286
L257:
	movl	264(%edi), %eax
	testl	%eax, %eax
	jne	L287
L255:
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
L287:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L255
	testb	$-128, 69(%edi)
	je	L259
	movl	%esi, %eax
	call	__Z10KillSprites
L260:
	addl	$48, %esp
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
L286:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L257
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	jmp	L257
	.p2align 4,,10
	.p2align 3
L285:
	movl	%eax, %edx
	andl	$16383, %eax
	imull	$44, %eax, %ecx
	andw	$16383, %dx
	movl	_User(,%eax,4), %eax
	movw	%dx, 44(%esp)
	movl	_sprite, %edx
	addl	%edx, %ecx
	movl	%ecx, 40(%esp)
	movzwl	12(%ecx), %ecx
	movw	%cx, 46(%esp)
	testl	%eax, %eax
	je	L256
	movl	%ecx, %eax
	andl	$17, %eax
	cmpw	$1, %ax
	jne	L256
	movzwl	44(%esp), %eax
	cmpw	%ax, 186(%edi)
	je	L256
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%eax, (%ebx)
	movl	_sprite, %ecx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	movl	%eax, 4(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movl	40(%esp), %eax
	leal	12(%eax), %ebx
	movl	$-1171354717, %eax
	movl	%ebx, %edx
	subl	%ecx, %edx
	movl	36(%esp), %ecx
	mull	%edx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	20(%esp), %edx
	andw	$-258, 12(%eax)
	movl	%esi, %eax
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$4096, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z12move_missilesiiiiiji
	subl	_sprite, %ebx
	movl	%eax, 264(%edi)
	movl	$-1171354717, %eax
	mull	%ebx
	movl	40(%esp), %eax
	movzwl	46(%esp), %ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 12(%eax)
	jmp	L256
	.p2align 4,,10
	.p2align 3
L259:
	movl	$4, %eax
	movw	%ax, 176(%edi)
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L260
	movl	$0, 76(%eax)
	movl	$_s_PlasmaDone, 24(%eax)
	movl	$_s_PlasmaDone, 16(%eax)
	movswl	_s_PlasmaDone, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L260
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L260
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z9DoEelFires
	.def	__Z9DoEelFires;	.scl	2;	.type	32;	.endef
__Z9DoEelFires:
LFB23:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movswl	8(%esp), %eax
	movl	_User(,%eax,4), %edx
	testb	$64, 71(%edx)
	jne	L294
L289:
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L294:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L289
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z7DoSpears
	.def	__Z7DoSpears;	.scl	2;	.type	32;	.endef
__Z7DoSpears:
LFB25:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	jne	L310
L298:
	testb	$-128, %ah
	jne	L299
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L311
L295:
	addl	$20, %esp
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
L311:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L295
	movl	%esi, %eax
	call	__Z10KillSprites
L299:
	addl	$20, %esp
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
L310:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L298
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	movl	68(%ebx), %eax
	jmp	L298
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z12SetMineStucks
	.def	__Z12SetMineStucks;	.scl	2;	.type	32;	.endef
__Z12SetMineStucks:
LFB26:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_sprite, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	imull	$44, %ebx, %edx
	movl	68(%ecx), %eax
	addl	%edx, %esi
	andl	$-9, %eax
	orl	$536870912, %eax
	movl	%eax, 68(%ecx)
	movl	$360, %eax
	movw	%ax, 216(%ecx)
	leal	12(%edx), %eax
	mull	%edi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	orw	$256, 12(%esi)
	movw	%dx, 176(%ecx)
	movl	$8, %edx
	call	__Z18change_sprite_statss
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L313
	movl	$0, 76(%eax)
	movl	$_s_MineStuck, 24(%eax)
	movl	$_s_MineStuck, 16(%eax)
	movswl	_s_MineStuck, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L313
	andl	$63, %eax
	movb	%al, 3(%edx)
L313:
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
LFE26:
	.p2align 4
	.def	__Z15PickEnemyTargetP12spritetypev7s;	.scl	3;	.type	32;	.endef
__Z15PickEnemyTargetP12spritetypev7s:
LFB27:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movswl	%dx, %edx
	xorl	%ecx, %ecx
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	_TargetSortCount, %eax
	movl	$_TargetSort, %edx
	movl	_sprite, %edi
	leal	(%eax,%eax,2), %eax
	leal	_TargetSort(,%eax,4), %esi
	cmpl	%edx, %esi
	jbe	L326
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
L325:
	movswl	(%edx), %eax
	testw	%ax, %ax
	js	L324
	movzwl	30(%ebx), %ecx
	cmpw	%cx, %ax
	je	L324
	imull	$44, %eax, %ebp
	cmpw	%cx, 30(%edi,%ebp)
	je	L324
	movl	12(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	(%esp), %ebx
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
L324:
	.cfi_restore_state
	addl	$12, %edx
	cmpl	%esi, %edx
	jb	L325
	movl	12(%esp), %ebp
	.cfi_restore 5
L326:
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	$-1, %eax
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z11MissileSeeksss
	.def	__Z11MissileSeeksss;	.scl	2;	.type	32;	.endef
__Z11MissileSeeksss:
LFB28:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	movswl	28(%esp), %edi
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %esi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	movzwl	216(%esi), %eax
	movzwl	186(%esi), %edx
	cmpw	32(%esp), %ax
	jg	L333
	addl	$6, %eax
	movw	%ax, 216(%esi)
	cmpw	$-1, %dx
	je	L361
L338:
	testw	%dx, %dx
	jns	L362
L356:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
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
L333:
	.cfi_restore_state
	cmpw	$-1, %dx
	jne	L338
L352:
	movswl	36(%esp), %edx
	testb	$1, 75(%esi)
	je	L336
	movl	%ebx, %eax
	call	__Z15PickEnemyTargetP12spritetypev7s
	cmpl	$-1, %eax
	je	L360
L339:
	movl	_User(,%eax,4), %edx
	movw	%ax, 186(%esi)
	orl	$6, 68(%edx)
L360:
	movzwl	186(%esi), %edx
	testw	%dx, %dx
	js	L356
L362:
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	_User(,%edi,4), %eax
	movswl	186(%eax), %edi
	imull	$44, %edi, %edi
	addl	_sprite, %edi
	movl	4(%edi), %edx
	movl	(%edi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movswl	28(%ebx), %edx
	movl	%edx, %ebp
	subl	%eax, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	$1024, %edx
	jle	L341
	leal	2048(%ebp), %edx
	cmpw	$1025, %bp
	cmovl	%edx, %ebp
	leal	2048(%eax), %edx
	cmpl	$1025, %eax
	cmovl	%edx, %eax
L341:
	subl	%eax, %ebp
	movl	%ebp, %eax
	negw	%ax
	cmovs	%ebp, %eax
	cmpw	$32, %ax
	jbe	L344
	testw	%bp, %bp
	movl	$32, %eax
	movl	$-32, %ebp
	cmovg	%eax, %ebp
L344:
	movl	_sprite, %ecx
	leal	28(%ebx), %eax
	movl	$-1171354717, %edx
	subl	%ecx, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	%bp, 28(%ebx)
	movswl	14(%edi), %ebp
	movzbl	21(%edi), %edx
	movswl	_tilesiz+2(,%ebp,4), %eax
	movl	%eax, (%esp)
	movl	8(%edi), %eax
	movl	%eax, 4(%esp)
	testb	$-128, 12(%edi)
	je	L345
	cmpb	$64, %dl
	je	L363
	movl	(%esp), %eax
	movsbl	_picanm+2(%ebp,%ebp,4), %edi
	imull	%edx, %eax
	sall	$8, %edi
	leal	(%edi,%eax,2), %ebp
	movl	4(%esp), %edi
	subl	%ebp, %edi
L348:
	movl	(%esp), %eax
	imull	%edx, %eax
L350:
	addl	%edi, %eax
	subl	8(%ebx), %eax
	sarl	%eax
	movl	%eax, %edx
	movl	%eax, %ebp
	movl	%eax, %edi
	negw	%dx
	cmovs	%ebp, %edx
	cmpw	$4096, %dx
	jbe	L351
	testw	%ax, %ax
	movl	$-4096, %edi
	movl	$4096, %eax
	cmovg	%eax, %edi
L351:
	leal	36(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movw	%di, 36(%ebx)
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movl	20(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L356
	.p2align 4,,10
	.p2align 3
L345:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L364
	movl	(%esp), %ebp
	movl	4(%esp), %edi
	imull	%edx, %ebp
	sall	$2, %ebp
	subl	%ebp, %edi
	jmp	L348
	.p2align 4,,10
	.p2align 3
L361:
	.cfi_restore 5
	cmpw	32(%esp), %ax
	jle	L356
	jmp	L352
	.p2align 4,,10
	.p2align 3
L363:
	.cfi_offset 5, -8
	movsbl	_picanm+2(%ebp,%ebp,4), %edx
	movl	(%esp), %eax
	movl	4(%esp), %edi
	sall	$8, %edx
	sall	$7, %eax
	addl	%eax, %edx
	subl	%edx, %edi
L347:
	movl	(%esp), %eax
	sall	$6, %eax
	jmp	L350
	.p2align 4,,10
	.p2align 3
L364:
	movl	(%esp), %eax
	movl	4(%esp), %edi
	sall	$8, %eax
	subl	%eax, %edi
	jmp	L347
	.p2align 4,,10
	.p2align 3
L336:
	.cfi_restore 5
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	jne	L339
	jmp	L360
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z18InitPlasmaFountainP12spritetypev7S0_
	.def	__Z18InitPlasmaFountainP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
__Z18InitPlasmaFountainP12spritetypev7S0_:
LFB30:
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
	movl	52(%esp), %ebx
	movswl	28(%ebx), %ecx
	movl	8(%ebx), %edx
	testb	$-128, 12(%ebx)
	je	L366
	movswl	14(%ebx), %esi
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%esi,4), %edi
	cmpb	$64, %al
	je	L377
	imull	%edi, %eax
	addl	%eax, %eax
L368:
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	subl	%esi, %eax
	addl	%eax, %edx
L366:
	movl	%ecx, 16(%esp)
	movl	$_s_PlasmaFountain, %ecx
	movl	%edx, 12(%esp)
	movl	$2059, %edx
	movl	$0, 20(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movl	$-1171354717, %edx
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %ebp
	leal	(%edi,%eax), %esi
	addl	$16, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	48(%esp), %edx
	movb	$-40, 16(%esi)
	testl	%edx, %edx
	je	L369
	movl	48(%esp), %eax
	movl	%ecx, %edx
	movl	%ecx, 24(%esp)
	movswl	30(%eax), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	movl	24(%esp), %ecx
L369:
	subl	%edi, %ebx
	movl	_User(,%ecx,4), %edx
	movl	$-1171354717, %ecx
	sarl	$2, %ebx
	imull	$-1171354717, %ebx, %ebx
	movswl	%bx, %eax
	movl	_User(,%eax,4), %eax
	orl	$1048576, 72(%eax)
	movw	%bx, 138(%edx)
	leal	21(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%edi, %edx
	movb	$0, 21(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	$180, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%esi)
	movw	%ax, 216(%ebp)
	xorl	%eax, %eax
	movl	$50, 188(%ebp)
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
L377:
	.cfi_restore_state
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L368
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z11DoUziBullets
	.def	__Z11DoUziBullets;	.scl	2;	.type	32;	.endef
__Z11DoUziBullets:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$2, %edx
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
	movswl	52(%esp), %ebp
	movw	%dx, 30(%esp)
	movl	_User(,%ebp,4), %esi
	imull	$44, %ebp, %ebx
	addl	_sprite, %ebx
L384:
	movzwl	28(%ebx), %edx
	movl	4(%ebx), %ecx
	movzwl	32(%ebx), %eax
	movl	(%ebx), %edi
	movl	%ecx, 24(%esp)
	movl	%edx, %ecx
	addl	$512, %edx
	andl	$2047, %ecx
	andl	$2047, %edx
	sarw	%ax
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%edx,%edx), %edx
	cwtl
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	imull	%eax, %ecx
	imull	%eax, %edx
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	sarl	$14, %ecx
	sarl	$14, %edx
	movl	%eax, 4(%esp)
	movzwl	36(%ebx), %eax
	sarw	%ax
	cwtl
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebx), %edx
	subl	24(%esp), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovs	%edx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	addw	%dx, 212(%esi)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%esi)
	jne	L391
L379:
	movl	264(%esi), %edi
	testl	%edi, %edi
	jne	L392
	cmpw	$8000, 212(%esi)
	jg	L393
	cmpw	$1, 30(%esp)
	jne	L386
L378:
	addl	$32, %esp
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
L386:
	.cfi_restore_state
	movl	$1, %eax
	movw	%ax, 30(%esp)
	jmp	L384
	.p2align 4,,10
	.p2align 3
L391:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$56, %ah
	jne	L379
	movl	%ebp, (%esp)
	call	__Z11SpawnBubbles
	jmp	L379
	.p2align 4,,10
	.p2align 3
L392:
	movl	%ebp, (%esp)
	call	__Z13WeaponMoveHits
	movl	$_s_UziSmoke, %ecx
	movl	$2146, %edx
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	addl	%eax, %edi
	leal	16(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$-40, 16(%edi)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$24, 20(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movb	$24, 21(%edi)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movzwl	28(%ebx), %eax
	movl	_sprite, %ecx
	leal	18(%edi), %edx
	movw	%ax, 28(%edi)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ecx, %edx
	movb	$32, 18(%edi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%edi)
	testb	$64, 71(%esi)
	je	L394
L381:
	movl	%ebp, %eax
	movl	$1, %edi
	call	__Z10KillSprites
	jmp	L378
	.p2align 4,,10
	.p2align 3
L393:
	movl	%ebp, %eax
	call	__Z10KillSprites
	jmp	L378
L394:
	movl	$0, 20(%esp)
	movl	$_s_UziSpark, %ecx
	movl	$2140, %edx
	movl	$0, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	leal	(%edi,%eax), %esi
	leal	16(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%edi, %edx
	movb	$-40, 16(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%edi, %edx
	movb	$24, 20(%esi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movb	$24, 21(%esi)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movzwl	28(%ebx), %eax
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movw	%ax, 28(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	jmp	L381
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z14SpawnCoolieExps
	.def	__Z14SpawnCoolieExps;	.scl	2;	.type	32;	.endef
__Z14SpawnCoolieExps:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	_sprite, %ecx
	addl	$1, _krandcount
	movswl	64(%esp), %eax
	imull	$44, %eax, %ebx
	movl	_User(,%eax,4), %edi
	movl	%eax, 40(%esp)
	movl	_randomseed, %eax
	movl	%edi, 24(%esp)
	leal	(%eax,%eax,4), %edx
	addl	%ecx, %ebx
	leal	1(%eax,%edx,4), %eax
	movl	$119, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L396
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$23, %edx
L396:
	movl	24(%esp), %eax
	movw	%dx, 176(%eax)
	movswl	14(%ebx), %esi
	movzbl	21(%ebx), %eax
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%esi,4), %esi
	cmpb	$64, %al
	je	L403
	imull	%esi, %eax
	sall	$2, %eax
	subl	%eax, %edx
	sarl	$2, %eax
L398:
	addl	%edx, %eax
	leal	8(%ebx), %edi
	movl	$-1171354717, %ebp
	movl	%eax, 28(%esp)
	movswl	28(%ebx), %eax
	movl	%edi, %esi
	subl	%ecx, %esi
	leal	1536(%eax), %edx
	addl	$1024, %eax
	andl	$2047, %eax
	andl	$2047, %edx
	movsbl	_sintable+1(%eax,%eax), %eax
	addl	4(%ebx), %eax
	movsbl	_sintable+1(%edx,%edx), %edx
	addl	(%ebx), %edx
	movl	%eax, 36(%esp)
	movl	%esi, %eax
	movl	%edx, 32(%esp)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%ebp
	movl	$75, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	28(%esp), %edi
	movl	32(%esp), %edx
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_BoltExp, %ecx
	movl	%edi, 12(%esp)
	movl	%eax, 16(%esp)
	movl	36(%esp), %eax
	movl	%edx, 4(%esp)
	movl	$3100, %edx
	movl	%eax, 8(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %edi
	addl	%eax, %ebx
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movw	%ax, 40(%ebx)
	movl	40(%esp), %eax
	call	__Z8SetOwnerss
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	_sprite, %edx
	movb	$-40, 16(%ebx)
	movzbl	262(%eax), %ecx
	movl	%edx, %eax
	mull	%ebp
	movb	%cl, 262(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	%cl, 17(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	_DamageData+616, %eax
	movl	%eax, 188(%edi)
	movl	%esi, (%esp)
	call	__Z15DoExpDamageTests
	addl	$44, %esp
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
L403:
	.cfi_restore_state
	movl	%esi, %eax
	sall	$8, %eax
	subl	%eax, %edx
	sarl	$2, %eax
	jmp	L398
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z13SpawnBunnyExps
	.def	__Z13SpawnBunnyExps;	.scl	2;	.type	32;	.endef
__Z13SpawnBunnyExps:
LFB35:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movswl	36(%esp), %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	_User(,%ebx,4), %edi
	testl	%edi, %edi
	je	L406
	testb	$-128, 69(%edi)
	jne	L411
L406:
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	imull	$44, %ebx, %esi
	movl	$-1171354717, %ecx
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	leal	8(%ebp,%esi), %eax
	movl	%eax, %edx
	movl	%eax, 12(%esp)
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp,%esi), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	8(%esp), %ecx
	movl	$427, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	12(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	leal	(%esi,%ebp), %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$3100, %eax
	movl	$-1, %ecx
	movl	$1, %edx
	movw	%ax, 82(%edi)
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, %eax
	movl	$-1, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, %eax
	movl	$-1, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, 36(%esp)
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	movl	24(%esp), %edi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z15DoExpDamageTests
L411:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	16(%esp), %ebx
	movl	24(%esp), %edi
	movl	$-1, %eax
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z16DoPlasmaFountains
	.def	__Z16DoPlasmaFountains;	.scl	2;	.type	32;	.endef
__Z16DoPlasmaFountains:
LFB36:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%esi, 28(%esp)
	.cfi_offset 6, -16
	movswl	44(%esp), %esi
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movswl	138(%ebx), %eax
	testw	%ax, %ax
	js	L425
	movl	%edi, 32(%esp)
	imull	$44, %eax, %eax
	.cfi_offset 7, -12
	imull	$44, %esi, %edi
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	movl	%esi, (%esp)
	addl	%ebp, %edi
	addl	%eax, %ebp
	movl	%ebp, 4(%esp)
	call	_setspritez
	movzwl	28(%ebp), %eax
	movw	%ax, 28(%edi)
	movzwl	176(%ebx), %eax
	addl	$1, %eax
	movw	%ax, 176(%ebx)
	cmpw	$3, %ax
	jg	L415
	testw	%ax, %ax
	je	L419
L416:
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	testw	%ax, %ax
	jle	L418
	movw	%ax, 216(%ebx)
	xorl	%eax, %eax
	movl	32(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L415:
	.cfi_restore_state
	xorl	%eax, %eax
	movw	%ax, 176(%ebx)
L419:
	movl	%ebp, %eax
	subl	_sprite, %eax
	movl	$0, 20(%esp)
	sarl	$2, %eax
	movl	$0, 16(%esp)
	imull	$-1171354717, %eax, %eax
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	%esi, 4(%esp)
	cwtl
	movl	%eax, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L417
	sall	$14, %eax
	cmpl	$645308724, %eax
	jbe	L416
	.p2align 4
	.p2align 3
L417:
	movl	%ebp, %eax
	subl	_sprite, %eax
	movl	$105, %ecx
	xorl	%edx, %edx
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z14InitBloodSprayshs.isra.0
	jmp	L416
	.p2align 4,,10
	.p2align 3
L425:
	.cfi_restore 5
	.cfi_restore 7
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	xorl	%eax, %eax
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L418:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edx, %edx
	movl	$-1171354717, %eax
	movw	%dx, 216(%ebx)
	leal	12(%edi), %edx
	movzwl	12(%edi), %ecx
	subl	_sprite, %edx
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 12(%edi)
	call	__Z10KillSprites
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	addl	$40, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z11DoCoolgFires
	.def	__Z11DoCoolgFires;	.scl	2;	.type	32;	.endef
__Z11DoCoolgFires:
LFB37:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movswl	40(%esp), %ebx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	_User(,%ebx,4), %esi
	movl	156(%esi), %ecx
	movl	152(%esi), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	movl	%eax, 4(%esp)
	movl	160(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebx, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%esi)
	jne	L447
L427:
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L448
L426:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L447:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L427
	movl	%ebx, (%esp)
	call	__Z11SpawnBubbles
	movl	264(%esi), %eax
	testl	%eax, %eax
	je	L426
	.p2align 4
	.p2align 3
L448:
	movl	%ebx, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L426
	imull	$44, %ebx, %eax
	movl	$-1171354717, %ecx
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	leal	(%edi,%eax), %esi
	leal	8(%esi), %edi
	leal	4(%esi), %ebp
	movl	%edi, %edx
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
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$86, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L429
	movl	$0, 76(%eax)
	movl	$_s_CoolgFireDone, 24(%eax)
	movl	$_s_CoolgFireDone, 16(%eax)
	movswl	_s_CoolgFireDone, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L429
	andl	$63, %eax
	movb	%al, 3(%edx)
L429:
	movswl	30(%esi), %eax
	testw	%ax, %ax
	js	L430
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L430
	cmpw	$1580, 82(%eax)
	je	L430
	movl	%ebx, (%esp)
	call	__Z14SpawnDemonFists
L430:
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
	jmp	L426
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z11DoMineStucks
	.def	__Z11DoMineStucks;	.scl	2;	.type	32;	.endef
__Z11DoMineStucks:
LFB38:
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
	movswl	8(%ebp), %esi
	movl	_sprite, %edx
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	leal	(%edx,%eax), %edi
	movswl	138(%ebx), %eax
	testw	%ax, %ax
	js	L450
	imull	$44, %eax, %ecx
	movl	_User(,%eax,4), %eax
	addl	%ecx, %edx
	testb	$1, 69(%eax)
	je	L451
	cmpw	$98, 178(%ebx)
	jg	L451
	movl	$99, %eax
	movw	%ax, 178(%ebx)
	movl	$60, %eax
	movw	%ax, 216(%ebx)
L451:
	movl	8(%edx), %eax
	subl	256(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 24(%esp)
	leal	16(%esp), %eax
	movlps	(%edx), %xmm0
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movlps	%xmm0, 16(%esp)
	call	_setspritez
	movl	12(%esp), %edx
	movl	8(%edx), %ecx
	movzbl	21(%edx), %eax
	movswl	14(%edx), %edx
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %al
	je	L501
	imull	%edx, %eax
	addl	%eax, %eax
	movl	%eax, 12(%esp)
L453:
	leal	8(%edi), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	subl	12(%esp), %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%edi)
L450:
	movl	68(%ebx), %eax
	testb	$8, %al
	je	L454
	movzwl	176(%ebx), %eax
	movzwl	178(%ebx), %ecx
	addl	$1, %eax
	cmpw	$1, %ax
	jle	L502
	xorl	%eax, %eax
	movw	%ax, 176(%ebx)
	cmpw	$99, %cx
	jne	L503
L462:
	movzwl	216(%ebx), %eax
	subl	$12, %eax
	movw	%ax, 216(%ebx)
L469:
	testw	%ax, %ax
	jns	L478
	leal	8(%edi), %ebx
	movl	$-1171354717, %ecx
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 12(%esp)
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
	movl	12(%esp), %ecx
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$8, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%esi, (%esp)
	call	__Z12SpawnMineExps
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L478
	.p2align 4,,10
	.p2align 3
L454:
	movzwl	216(%ebx), %ecx
	leal	-12(%ecx), %edx
	testw	%dx, %dx
	jg	L504
	orl	$8, %eax
	movl	$32767, %ecx
	movl	%eax, 68(%ebx)
	movzwl	176(%ebx), %eax
	movw	%cx, 216(%ebx)
	addl	$1, %eax
	cmpw	$1, %ax
	jle	L505
	movl	$65536, 176(%ebx)
L460:
	movl	$3000, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15DoMineRangeTestss
	testl	%eax, %eax
	jne	L467
	movzwl	216(%ebx), %eax
	movzwl	178(%ebx), %edx
	subl	$12, %eax
	movw	%ax, 216(%ebx)
	cmpw	$30, %dx
	jne	L506
L466:
	cmpw	$719, %ax
	jg	L478
	leal	8(%edi), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 12(%esp)
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
	movl	12(%esp), %ecx
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$99, %eax
	movw	%ax, 178(%ebx)
	jmp	L478
	.p2align 4,,10
	.p2align 3
L504:
	movw	%dx, 216(%ebx)
L478:
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
L502:
	.cfi_restore_state
	movw	%ax, 176(%ebx)
	cmpw	$99, %cx
	je	L462
	leal	1(%ecx), %edx
	movw	%dx, 178(%ebx)
	cmpw	$30, %cx
	jle	L464
L463:
	leal	8(%edi), %eax
	movl	$-1171354717, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 8(%esp)
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 12(%esp)
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
	movl	12(%esp), %ecx
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$32767, %eax
	movw	%ax, 216(%ebx)
	xorl	%eax, %eax
	movw	%ax, 178(%ebx)
	cmpw	$0, 176(%ebx)
	je	L460
L497:
	movl	$32755, %edx
	xorl	%eax, %eax
	movw	%dx, 216(%ebx)
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
L501:
	.cfi_restore_state
	sall	$7, %edx
	movl	%edx, 12(%esp)
	jmp	L453
	.p2align 4,,10
	.p2align 3
L505:
	movl	$1, %edx
	movw	%ax, 176(%ebx)
	movw	%dx, 178(%ebx)
	testw	%ax, %ax
	jne	L497
	jmp	L460
	.p2align 4,,10
	.p2align 3
L503:
	leal	1(%ecx), %eax
	movw	%ax, 178(%ebx)
	cmpw	$30, %cx
	jg	L463
	jmp	L460
	.p2align 4,,10
	.p2align 3
L506:
	cmpw	$99, %dx
	je	L469
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
L467:
	.cfi_restore_state
	movl	$99, %ecx
	movl	$48, %esi
	movw	%cx, 178(%ebx)
	movw	%si, 216(%ebx)
	jmp	L478
	.p2align 4,,10
	.p2align 3
L464:
	testw	%ax, %ax
	je	L460
	movzwl	216(%ebx), %eax
	subl	$12, %eax
	movw	%ax, 216(%ebx)
	cmpw	$30, %dx
	je	L466
	jmp	L478
	.cfi_endproc
LFE38:
	.section .rdata,"dr"
LC0:
	.ascii "source/sw/src/weapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z6DoMines
	.def	__Z6DoMines;	.scl	2;	.type	32;	.endef
__Z6DoMines:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %eax
	movswl	60(%esp), %ebp
	movl	%eax, 24(%esp)
	movl	_User(,%ebp,4), %ebx
	movl	160(%ebx), %eax
	movzwl	176(%ebx), %ecx
	movl	152(%ebx), %esi
	movl	156(%ebx), %edi
	movl	%eax, 20(%esp)
	testb	$64, 71(%ebx)
	jne	L566
	addl	$40, %ecx
	movswl	%cx, %edx
	addl	20(%esp), %edx
L509:
	movw	%cx, 176(%ebx)
	movl	%edi, %ecx
	movl	%edx, 160(%ebx)
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%ebx)
	jne	L567
L510:
	movl	264(%ebx), %edi
	testl	%edi, %edi
	je	L511
	imull	$44, %ebp, %esi
	movl	24(%esp), %eax
	addl	%eax, %esi
	movl	%edi, %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L512
	jg	L513
	cmpl	$16384, %eax
	je	L514
	cmpl	$32768, %eax
	jne	L516
	movl	_wall, %eax
	andl	$16383, %edi
	sall	$5, %edi
	addl	%edi, %eax
	cmpw	$307, 26(%eax)
	je	L568
	movl	%ebp, (%esp)
	call	__Z12SetMineStucks
	movl	_wall, %eax
	orl	$131072, 72(%ebx)
	testb	$-128, 30(%eax,%edi)
	jne	L529
	.p2align 4
	.p2align 3
L516:
	movl	$0, 264(%ebx)
L511:
	addl	$40, %esp
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
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L510
	movl	%ebp, (%esp)
	call	__Z11SpawnBubbles
	jmp	L510
	.p2align 4,,10
	.p2align 3
L566:
	movl	%esi, %eax
	movl	$50000, %edx
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 152(%ebx)
	movl	%eax, %esi
	movl	%edi, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%ebx)
	movl	%eax, %edi
	movl	20(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	$20, %ecx
	movswl	%cx, %edx
	addl	%eax, %edx
	jmp	L509
	.p2align 4,,10
	.p2align 3
L512:
	movl	%edi, %eax
	andl	$16383, %edi
	andw	$16383, %ax
	imull	$44, %edi, %ecx
	movl	%edi, 36(%esp)
	movw	%ax, 34(%esp)
	movl	%edi, %eax
	movl	_sprite, %edi
	movl	_User(,%eax,4), %eax
	movl	%ebp, (%esp)
	addl	%ecx, %edi
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	call	__Z12SetMineStucks
	movswl	14(%edi), %edx
	movzbl	21(%edi), %eax
	movl	8(%edi), %ecx
	movswl	_tilesiz+2(,%edx,4), %edx
	cmpb	$64, %al
	je	L569
	imull	%edx, %eax
	leal	(%eax,%eax), %edx
L518:
	subl	%edx, %ecx
	leal	8(%esi), %edx
	movl	%ecx, 20(%esp)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%esi)
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L519
	cmpw	$0, 84(%eax)
	jle	L511
L519:
	testb	$8, 43(%edi)
	jne	L570
	movzwl	12(%edi), %eax
	testb	$16, %al
	jne	L571
	testb	$32, %al
	je	L529
	movl	72(%ebx), %eax
	movl	108(%ebx), %edx
	addl	104(%ebx), %edx
	movl	%eax, %ecx
	sarl	%edx
	orl	$262144, %eax
	orl	$524288, %ecx
	cmpl	%edx, 20(%esp)
	cmovle	%ecx, %eax
	movl	%eax, 72(%ebx)
	jmp	L516
	.p2align 4,,10
	.p2align 3
L514:
	movl	%ebp, (%esp)
	call	__Z12SetMineStucks
	movl	72(%ebx), %eax
	movl	108(%ebx), %edx
	addl	104(%ebx), %edx
	movl	%eax, %ecx
	sarl	%edx
	orl	$524288, %eax
	orl	$262144, %ecx
	cmpl	8(%esi), %edx
	movl	_sector, %edx
	cmovl	%ecx, %eax
	andl	$4095, %edi
	movl	%eax, 72(%ebx)
	leal	(%edi,%edi,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$16, 39(%eax)
	je	L516
L529:
	movl	%ebp, (%esp)
	call	__Z12SpawnMineExps
	jmp	L565
	.p2align 4,,10
	.p2align 3
L513:
	cmpl	$65536, %eax
	jne	L516
L565:
	movl	%ebp, %eax
	call	__Z10KillSprites
	addl	$40, %esp
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
L571:
	.cfi_restore_state
	orl	$131072, 72(%ebx)
	jmp	L516
	.p2align 4,,10
	.p2align 3
L568:
	movswl	82(%ebx), %edi
	movl	4(%esi), %ecx
	movl	(%esi), %edx
	movl	%edi, 8(%esp)
	movswl	28(%esi), %edi
	movl	%edi, 4(%esp)
	movl	8(%esi), %esi
	movl	%esi, (%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L516
	.p2align 4,,10
	.p2align 3
L569:
	sall	$7, %edx
	jmp	L518
	.p2align 4,,10
	.p2align 3
L570:
	movl	36(%esp), %eax
	movl	_User(,%ebp,4), %edx
	movl	_User(,%eax,4), %eax
	orl	$1048576, 72(%eax)
	movzwl	34(%esp), %eax
	movw	%ax, 138(%edx)
	movl	28(%esp), %eax
	movl	8(%ecx,%eax), %eax
	subl	8(%esi), %eax
	movl	%eax, 256(%ebx)
	movswl	30(%esi), %eax
	testw	%ax, %ax
	js	L516
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L516
	movl	144(%eax), %ecx
	testl	%ecx, %ecx
	je	L516
	movl	_krandcount, %edx
	leal	1(%edx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L521
	movl	%eax, %esi
	sall	$14, %esi
	cmpl	$860053724, %esi
	ja	L521
	leal	2(%edx), %esi
	movl	%esi, _krandcount
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L523
	movl	%eax, %esi
	sall	$14, %esi
	cmpl	$860053724, %esi
	ja	L523
	leal	3(%edx), %esi
	movl	%esi, _krandcount
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L525
	movl	%eax, %esi
	sall	$14, %esi
	cmpl	$860053724, %esi
	ja	L525
	imull	$21, %eax, %eax
	addl	$4, %edx
	movl	%edx, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L527
	sall	$14, %eax
	cmpl	$860053724, %eax
	jbe	L516
L527:
	leal	8(%ecx), %eax
	movl	%ecx, 12(%esp)
	movl	$379, %edx
	movl	%eax, 4(%esp)
	leal	4(%ecx), %eax
	movl	%eax, (%esp)
	movl	$9662, %eax
	movl	$9, 8(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0
	jmp	L516
	.p2align 4,,10
	.p2align 3
L521:
	cmpb	$0, _Prediction
	jne	L516
	leal	8(%ecx), %eax
	movl	%ecx, (%esp)
	movl	$9656, %edx
	movl	%eax, 8(%esp)
	leal	4(%ecx), %eax
	movl	%ecx, 16(%esp)
	movl	$376, %ecx
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L516
L523:
	cmpb	$0, _Prediction
	jne	L516
	leal	8(%ecx), %eax
	movl	%ecx, (%esp)
	movl	$9658, %edx
	movl	%eax, 8(%esp)
	leal	4(%ecx), %eax
	movl	%ecx, 16(%esp)
	movl	$377, %ecx
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L516
L525:
	cmpb	$0, _Prediction
	jne	L516
	leal	8(%ecx), %eax
	movl	%ecx, (%esp)
	movl	$9660, %edx
	movl	%eax, 8(%esp)
	leal	4(%ecx), %eax
	movl	%ecx, 16(%esp)
	movl	$378, %ecx
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L516
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z10DoEMPBursts
	.def	__Z10DoEMPBursts;	.scl	2;	.type	32;	.endef
__Z10DoEMPBursts:
LFB44:
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
	movswl	8(%ebp), %eax
	movl	_sprite, %esi
	movl	_User(,%eax,4), %ebx
	imull	$44, %eax, %ecx
	movl	%eax, 12(%esp)
	movswl	138(%ebx), %eax
	addl	%esi, %ecx
	testw	%ax, %ax
	js	L574
	imull	$44, %eax, %eax
	movl	%ecx, 20(%esp)
	addl	%eax, %esi
	movl	8(%esi), %eax
	subl	256(%ebx), %eax
	movl	%eax, 32(%esp)
	leal	24(%esp), %eax
	movlps	(%esi), %xmm0
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movlps	%xmm0, 24(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movl	20(%esp), %ecx
	movswl	28(%esi), %edi
	movl	$-1171354717, %edx
	movl	_sprite, %esi
	leal	28(%ecx), %eax
	addl	$1024, %edi
	subl	%esi, %eax
	andl	$2047, %edi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 28(%ecx)
L574:
	movl	68(%ebx), %eax
	testb	$8, %al
	jne	L575
	movl	$840, %edx
	orl	$8, %eax
	movw	%dx, 216(%ebx)
	movl	%eax, 68(%ebx)
L575:
	movl	_krandcount, %eax
	movl	%eax, 16(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	leal	21(%ecx), %edx
	subl	%esi, %edx
	movzwl	%ax, %edi
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	leal	20(%ecx), %edx
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %esi
	movl	%esi, _spritechanged(,%edx,4)
	cmpl	$65535, %edi
	je	L576
	movl	%edi, %eax
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L576
	movl	20(%esp), %eax
	movb	$8, 20(%ecx)
	movl	$38, %edx
	movl	_spritechanged(,%eax,4), %eax
	movl	%eax, 8(%esp)
	addl	$1, %eax
L578:
	movl	20(%esp), %esi
	movl	%eax, _spritechanged(,%esi,4)
	movl	16(%esp), %eax
	movb	%dl, 21(%ecx)
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%edi,%edi,4), %eax
	leal	1(%edi,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$44799, %eax
	jbe	L585
	subw	$12, 216(%ebx)
	js	L586
L580:
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
L576:
	.cfi_restore_state
	movl	20(%esp), %eax
	movb	$52, 20(%ecx)
	movl	$10, %edx
	movl	_spritechanged(,%eax,4), %eax
	movl	%eax, 8(%esp)
	addl	$1, %eax
	jmp	L578
	.p2align 4,,10
	.p2align 3
L585:
	movl	12(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	subw	$12, 216(%ebx)
	jns	L580
L586:
	movl	12(%esp), %eax
	call	__Z10KillSprites
	leal	-12(%ebp), %esp
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
LFE44:
	.p2align 4
	.globl	__Z9DoElectros
	.def	__Z9DoElectros;	.scl	2;	.type	32;	.endef
__Z9DoElectros:
LFB45:
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
	movswl	40(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	imull	$44, %ebx, %edi
	movl	$4, 8(%esp)
	addl	_sprite, %edi
	movl	$0, 4(%esp)
	call	__Z12DoBlurExtendsss
	cmpw	$0, 176(%esi)
	jle	L588
	movl	$512, 8(%esp)
	movl	$30, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z11MissileSeeksss
L588:
	movzwl	28(%edi), %eax
	movswl	32(%edi), %ebp
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %ecx
	movswl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$1024, 8(%esp)
	imull	%ebp, %ecx
	movl	$1024, 4(%esp)
	movswl	36(%edi), %eax
	imull	%ebp, %edx
	movl	%eax, (%esp)
	sarl	$14, %ecx
	movl	%ebx, %eax
	sarl	$14, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebx, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	68(%esi), %eax
	testl	$1073741824, %eax
	jne	L613
L591:
	testb	$-128, %ah
	jne	L592
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L614
L587:
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
L614:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L587
	movl	264(%esi), %eax
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	jne	L594
	andl	$16383, %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	testb	$8, 43(%edx)
	je	L594
	movl	_User(,%eax,4), %eax
	movzwl	82(%eax), %eax
	cmpw	$820, %ax
	je	L594
	cmpw	$817, %ax
	jne	L596
	.p2align 4
	.p2align 3
L594:
	movl	$-1, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnShrapss
L596:
	movl	%ebx, %eax
	call	__Z10KillSprites
L592:
	addl	$20, %esp
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
L613:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L591
	movl	%ebx, (%esp)
	call	__Z11SpawnBubbles
	movl	68(%esi), %eax
	jmp	L591
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z13DoLavaBoulders
	.def	__Z13DoLavaBoulders;	.scl	2;	.type	32;	.endef
__Z13DoLavaBoulders:
LFB46:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	jne	L630
L618:
	testb	$-128, %ah
	jne	L619
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L631
L615:
	addl	$20, %esp
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
L631:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L615
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnShrapss
	movl	%esi, %eax
	call	__Z10KillSprites
L619:
	addl	$20, %esp
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
L630:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L618
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	movl	68(%ebx), %eax
	jmp	L618
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z19SpawnExtraMicroMinis
	.def	__Z19SpawnExtraMicroMinis;	.scl	2;	.type	32;	.endef
__Z19SpawnExtraMicroMinis:
LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_Micro, %ecx
	movl	$2018, %edx
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
	movswl	56(%esp), %eax
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	movl	_User(,%eax,4), %ebp
	movswl	32(%esi), %eax
	movl	%eax, 20(%esp)
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
	movswl	%ax, %ecx
	movswl	30(%esi), %eax
	movl	%ecx, %edx
	movl	_User(,%ecx,4), %edi
	imull	$44, %ecx, %ebx
	movl	%ecx, 24(%esp)
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movzbl	20(%esi), %eax
	movl	$_sg_MicroMini, %edx
	movb	%al, 20(%ebx)
	movzbl	20(%esi), %eax
	movb	%al, 21(%ebx)
	movzbl	16(%esi), %eax
	movb	%al, 16(%ebx)
	movzbl	18(%esi), %eax
	movb	%al, 18(%ebx)
	movl	$5, %eax
	movw	%ax, 80(%edi)
	movl	24(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movzbl	273(%ebp), %eax
	movl	$63, 24(%esp)
	movb	%al, 273(%edi)
	movl	188(%ebp), %eax
	movl	%eax, 188(%edi)
	movzwl	96(%ebp), %eax
	movw	%ax, 96(%edi)
	movzwl	98(%ebp), %eax
	movw	%ax, 98(%edi)
	movzwl	12(%esi), %eax
	movw	%ax, 12(%ebx)
	movswl	28(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	_krandcount, %eax
	movl	%eax, 32(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L633
	movl	%ecx, %edx
	movl	$-2147450879, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$23, %edx
	movl	%edx, 24(%esp)
L633:
	movl	_sprite, %ebp
	leal	28(%ebx), %eax
	movl	$-1171354717, %edx
	subl	%ebp, %eax
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	leal	-32(%eax,%edx), %eax
	andl	$2047, %eax
	movw	%ax, 28(%ebx)
	movzwl	36(%esi), %eax
	movw	%ax, 36(%ebx)
	movl	32(%esp), %eax
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$2047, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L634
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$17, %edx
	leal	-2048(%edx), %ecx
L634:
	leal	36(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	addw	%cx, 36(%ebx)
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%edi)
	addl	$36, %esp
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
LFE47:
	.p2align 4
	.globl	__Z6DoRails
	.def	__Z6DoRails;	.scl	2;	.type	32;	.endef
__Z6DoRails:
LFB48:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	jne	L669
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
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
	movswl	72(%esp), %edi
	movw	%cx, 26(%esp)
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movl	%edi, 32(%esp)
	movl	%eax, 48(%esp)
	movl	_User(,%edi,4), %edi
	.p2align 4
	.p2align 3
L642:
	movl	152(%edi), %edx
	movl	156(%edi), %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%edi), %eax
	movl	32(%esp), %esi
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movl	%eax, 4(%esp)
	movl	160(%edi), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%edi)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%edi), %edx
	testl	%edx, %edx
	je	L643
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L643
	movl	264(%edi), %eax
	testl	%eax, %eax
	jne	L674
L643:
	addw	$1, 26(%esp)
	cmpw	$127, 26(%esp)
	jg	L642
	movl	48(%esp), %ebx
	movl	$_s_RailPuff, %ecx
	movl	$1748, %edx
	movl	$20, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, 44(%esp)
	movl	_User(,%eax,4), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 36(%esp)
	movl	_krandcount, %eax
	addl	%ecx, %ebx
	movl	%eax, 40(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L654
	movl	%ecx, %esi
	movl	$587211553, %ebp
	sall	$14, %esi
	movl	%esi, %eax
	mull	%ebp
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	movl	%edx, %esi
	shrl	$20, %esi
	cmpl	$65535, %ecx
	jne	L648
	subw	$139, %si
	movl	$65516, %ebp
	movl	$65516, %ecx
L647:
	leal	32(%ebx), %edx
	movl	$-1171354717, %eax
	subl	28(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	%si, 32(%ebx)
	cmpl	$65535, %ecx
	je	L655
	sall	$14, %ebp
	movl	$587211553, %esi
	movl	%ebp, %eax
	mull	%esi
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	movl	%edx, %ebp
	shrl	$20, %ebp
	cmpl	$65535, %ecx
	jne	L650
	subw	$139, %bp
	movl	$65516, %ecx
	movl	$65516, %esi
L649:
	movl	$-1171354717, %eax
	leal	34(%ebx), %edx
	subl	28(%esp), %edx
	mull	%edx
	movl	40(%esp), %eax
	addl	$6, %eax
	shrl	$5, %edx
	movl	%eax, 40(%esp)
	addl	$1, _spritechanged(,%edx,4)
	addw	34(%ebx), %bp
	cmpl	$65535, %esi
	je	L656
	sall	$14, %ecx
	movl	$587211553, %eax
	mull	%ecx
	leal	(%esi,%esi,4), %eax
	leal	1(%esi,%eax,4), %esi
	movzwl	%si, %esi
	movl	%edx, %ecx
	shrl	$20, %ecx
	cmpl	$65535, %esi
	jne	L652
	subw	$139, %cx
L651:
	movl	40(%esp), %eax
	leal	36(%ebx), %edx
	subl	28(%esp), %edx
	movw	%bp, 34(%ebx)
	movl	%esi, _randomseed
	movl	36(%esp), %esi
	movl	%eax, _krandcount
	movl	$-1171354717, %eax
	movl	44(%esp), %ebp
	mull	%edx
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_RailPuff, %edx
	addw	%cx, 36(%ebx)
	movw	%ax, 80(%esi)
	movl	%ebp, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$10, 20(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movb	$10, 21(%ebx)
	movl	56(%edi), %eax
	subl	%ecx, %edx
	movl	%eax, 56(%esi)
	movl	60(%edi), %eax
	movl	%eax, 60(%esi)
	movl	64(%edi), %eax
	movl	%eax, 64(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$1500, %edx
	andw	$-258, 12(%ebx)
	movl	152(%edi), %eax
	movl	%eax, 152(%esi)
	movl	156(%edi), %eax
	movl	%eax, 156(%esi)
	movl	160(%edi), %eax
	movl	%eax, 160(%esi)
	movl	_User(,%ebp,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1500, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$1500, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	testb	$64, 71(%edi)
	je	L642
	orl	$1073741824, 68(%esi)
	jmp	L642
	.p2align 4,,10
	.p2align 3
L654:
	movl	$65117, %ebp
	movl	$65117, %ecx
	xorl	%esi, %esi
	jmp	L647
	.p2align 4,,10
	.p2align 3
L656:
	movl	$65516, %esi
	xorl	%ecx, %ecx
	jmp	L651
	.p2align 4,,10
	.p2align 3
L655:
	movl	$65117, %ecx
	movl	$65117, %esi
	xorl	%ebp, %ebp
	jmp	L649
	.p2align 4,,10
	.p2align 3
L650:
	movl	%ecx, %edx
	sall	$14, %edx
	movl	%edx, %eax
	mull	%esi
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %esi
	movzwl	%si, %esi
	shrl	$20, %edx
	movl	%esi, %ecx
	subl	%edx, %ebp
	jmp	L649
	.p2align 4,,10
	.p2align 3
L648:
	movl	%ecx, %edx
	sall	$14, %edx
	movl	%edx, %eax
	mull	%ebp
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %ecx
	movzwl	%cx, %ecx
	shrl	$20, %edx
	movl	%ecx, %ebp
	subl	%edx, %esi
	jmp	L647
	.p2align 4,,10
	.p2align 3
L652:
	movl	%esi, %edx
	movl	$587211553, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$20, %edx
	subl	%edx, %ecx
	jmp	L651
	.p2align 4,,10
	.p2align 3
L674:
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	jne	L644
	andl	$16383, %eax
	movl	_sprite, %edi
	imull	$44, %eax, %ebx
	leal	(%edi,%ebx), %ecx
	testb	$8, 43(%ecx)
	je	L644
	leal	12(%ecx), %edx
	movzwl	12(%ecx), %esi
	subl	%edi, %edx
	movl	$-1171354717, %edi
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-16642, 12(%ecx)
	movl	%eax, (%esp)
	call	__Z6DoRails
	leal	12(%ebx), %eax
	movl	_sprite, %ecx
	mull	%edi
	movl	$1, %eax
	addl	%ebx, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 12(%ecx)
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
L644:
	.cfi_restore_state
	movl	32(%esp), %edi
	movl	%edi, (%esp)
	call	__Z14SpawnTracerExps
	movl	%edi, (%esp)
	movl	$-1, 4(%esp)
	call	__Z10SpawnShrapss
	movl	%edi, %eax
	call	__Z10KillSprites
	addl	$52, %esp
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
L669:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z11DoRailStarts
	.def	__Z11DoRailStarts;	.scl	2;	.type	32;	.endef
__Z11DoRailStarts:
LFB49:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L676
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L676:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L688
L675:
	addl	$20, %esp
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
L688:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L689
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
	.p2align 4,,10
	.p2align 3
L689:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z14SpawnTracerExps
	movl	$-1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnShrapss
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L675
	.cfi_endproc
LFE49:
	.p2align 4
	.globl	__Z11DoMicroMinis
	.def	__Z11DoMicroMinis;	.scl	2;	.type	32;	.endef
__Z11DoMicroMinis:
LFB50:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$3, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movswl	36(%esp), %edi
	movl	_User(,%edi,4), %ebx
L693:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%edi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L699
L691:
	subw	$1, %si
	jne	L693
	xorl	%eax, %eax
L690:
	addl	$20, %esp
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
L699:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L691
	movl	%edi, (%esp)
	call	__Z13SpawnMicroExps
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L690
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__Z7DoMicros
	.def	__Z7DoMicros;	.scl	2;	.type	32;	.endef
__Z7DoMicros:
LFB51:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L701
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L701:
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movswl	56(%esp), %esi
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%ebx)
	jne	L724
L703:
	cmpw	$0, 176(%ebx)
	je	L725
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L726
L700:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L724:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L703
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	jmp	L703
	.p2align 4,,10
	.p2align 3
L725:
	imull	$44, %esi, %eax
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	$_s_Puff, %ecx
	movl	$1748, %edx
	movl	$100, 20(%esp)
	movl	$-1171354717, %ebp
	addl	%eax, %edi
	movswl	28(%edi), %eax
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %edx
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	%ecx, 32(%esp)
	movl	%eax, %ecx
	movswl	30(%edi), %eax
	movl	%edx, 24(%esp)
	movl	%ecx, %edx
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	movl	32(%esp), %ecx
	leal	16(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%ecx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$20, 20(%ecx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$20, 21(%ecx)
	movl	56(%ebx), %eax
	movl	%eax, 56(%edx)
	movl	60(%ebx), %eax
	movl	%eax, 60(%edx)
	movl	64(%ebx), %eax
	movl	%eax, 64(%edx)
	movzwl	36(%edi), %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 36(%ecx)
	movl	%ebp, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$20000, %edx
	andw	$-258, 12(%ecx)
	movl	152(%ebx), %eax
	movl	24(%esp), %ebp
	movl	%eax, 152(%ebp)
	movl	156(%ebx), %eax
	movl	%eax, 156(%ebp)
	movl	160(%ebx), %eax
	movl	%eax, 160(%ebp)
	movl	28(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	152(%ebp), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ebp)
	movl	156(%ebp), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%ebp)
	movl	160(%ebp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ebp)
	testb	$64, 71(%ebx)
	je	L705
	movl	24(%esp), %ebp
	orl	$1073741824, 68(%ebp)
L705:
	movzwl	216(%ebx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebx)
	testw	%ax, %ax
	jle	L727
	movl	264(%ebx), %eax
	movl	48(%esp), %ebp
	.cfi_restore 5
	testl	%eax, %eax
	je	L700
L726:
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L728
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	xorl	%eax, %eax
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L728:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13SpawnMicroExps
	movl	%esi, %eax
	call	__Z10KillSprites
L706:
	movl	$1, %eax
	jmp	L700
	.p2align 4,,10
	.p2align 3
L727:
	.cfi_offset 5, -8
	movl	28(%esp), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movl	$_sg_MicroMini, %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %ebx
	leal	21(%edi), %edx
	movl	$-1171354717, %ecx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	%ebx, %edx
	movb	$10, 21(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ebx, %edx
	movb	$10, 20(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$32767, 12(%edi)
	movl	%esi, (%esp)
	call	__Z19SpawnExtraMicroMinis
	movl	48(%esp), %ebp
	.cfi_restore 5
	jmp	L706
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z13SpawnBasicExps
	.def	__Z13SpawnBasicExps;	.scl	2;	.type	32;	.endef
__Z13SpawnBasicExps:
LFB52:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	movl	%edi, 24(%esp)
	testb	$-128, 69(%edi)
	jne	L731
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, %eax, %esi
	movl	_sprite, %ecx
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	movl	%eax, 32(%esp)
	addl	%ecx, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	leal	8(%esi), %edi
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%ebp
	movl	$182, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_BasicExp, %ecx
	movl	$3102, %edx
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
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebx
	movl	%ebx, 28(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$24, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movb	$24, 21(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	movl	24(%esp), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	movzbl	262(%esi), %esi
	movl	%esi, %edx
	movb	%dl, 262(%eax)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	28(%esp), %esi
	movb	%dl, 17(%ebx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	$3840, %ecx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	andw	$-258, 12(%ebx)
	movl	_DamageData+776, %eax
	movl	%eax, 188(%esi)
	movl	32(%esp), %eax
	movl	$3840, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%edi, (%esp)
	call	__Z15DoExpDamageTests
	movl	(%ebx), %ecx
	movswl	24(%ebx), %edx
	movl	$16, 8(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L729:
	movl	%edi, %eax
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L731:
	.cfi_restore_state
	movl	$-1, %edi
	jmp	L729
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z20SpawnGoroFireballExps
	.def	__Z20SpawnGoroFireballExps;	.scl	2;	.type	32;	.endef
__Z20SpawnGoroFireballExps:
LFB53:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %eax
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	_User(,%eax,4), %edi
	movl	%edi, 24(%esp)
	testb	$-128, 69(%edi)
	jne	L735
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, %eax, %esi
	movl	_sprite, %ecx
	movl	$-1171354717, %edi
	movl	%eax, 28(%esp)
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	addl	%ecx, %esi
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$182, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$0, 20(%esp)
	movswl	28(%esi), %eax
	xorl	%edx, %edx
	movl	$_s_FireballExp, %ecx
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
	movl	_sprite, %ecx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	_User(,%ebp,4), %ebx
	movl	%ebx, 32(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	$16, 21(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	movl	24(%esp), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	movzbl	262(%esi), %esi
	movl	%esi, %edx
	movb	%dl, 262(%eax)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movb	%dl, 17(%ebx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	$3840, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	andw	$-258, 12(%ebx)
	movl	$3840, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
L733:
	movl	%ebp, %eax
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L735:
	.cfi_restore_state
	movl	$-1, %ebp
	jmp	L733
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z17SpawnTankShellExps
	.def	__Z17SpawnTankShellExps;	.scl	2;	.type	32;	.endef
__Z17SpawnTankShellExps:
LFB54:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %eax
	movl	%eax, 24(%esp)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L742
	testb	$-128, 69(%eax)
	jne	L745
L742:
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, 24(%esp), %esi
	movl	_sprite, %ecx
	movl	%ebp, 48(%esp)
	movl	%edi, 44(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	addl	%ecx, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$14, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_TankShellExp, %ecx
	movl	$3107, %edx
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
	movl	_sprite, %ebx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	_User(,%ebp,4), %ecx
	movl	%ebp, 28(%esp)
	movl	%ecx, 32(%esp)
	addl	%eax, %ebx
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$96, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	addl	$1, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$96, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ecx
	andl	$1023, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, _randomseed
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	cmpl	$512, %eax
	jg	L739
L740:
	movl	_DamageData+648, %eax
	movl	32(%esp), %edi
	movl	%ebx, %edx
	movl	$10240, %ecx
	movl	%eax, 188(%edi)
	movl	24(%esp), %eax
	movl	$10240, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%ebp, (%esp)
	call	__Z15DoExpDamageTests
	movl	(%ebx), %ecx
	movswl	24(%ebx), %edx
	movl	$16, 8(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L737:
	movl	28(%esp), %eax
	addl	$52, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L739:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
	jmp	L740
L745:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 28(%esp)
	jmp	L737
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z11DoTankShells
	.def	__Z11DoTankShells;	.scl	2;	.type	32;	.endef
__Z11DoTankShells:
LFB55:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$4, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movswl	36(%esp), %edi
	movl	_User(,%edi,4), %ebx
L749:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%edi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L755
L747:
	subw	$1, %si
	jne	L749
	xorl	%eax, %eax
L746:
	addl	$20, %esp
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
L755:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L747
	movl	%edi, (%esp)
	call	__Z17SpawnTankShellExps
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L746
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z19SpawnFireballFlamesss
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
__Z19SpawnFireballFlamesss:
LFB56:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %eax
	movl	%ebp, 52(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movzwl	64(%esp), %ebp
	movl	_User(,%eax,4), %edi
	movl	%edi, 36(%esp)
	testb	$64, 71(%edi)
	jne	L757
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	testw	%bp, %bp
	js	L758
	movswl	%bp, %ecx
	imull	$44, %ecx, %edx
	addl	%esi, %edx
	movzwl	42(%edx), %ebx
	andw	$16384, %bx
	je	L759
	cmpb	$40, 16(%edx)
	jg	L787
L759:
	movl	_User(,%ecx,4), %ecx
	movzwl	196(%ecx), %edi
	testw	%di, %di
	js	L758
	movzbl	21(%edx), %eax
	movswl	14(%edx), %edx
	movswl	_tilesiz+2(,%edx,4), %ebp
	cmpb	$64, %al
	je	L790
	imull	%ebp, %eax
	leal	0(,%eax,4), %edx
L761:
	movswl	%di, %ebp
	movl	%ebp, 28(%esp)
	testw	%bx, %bx
	jne	L789
	movl	_User(,%ebp,4), %ebx
	imull	$44, %ebp, %ebp
	addl	%edx, %eax
	cltd
	movzwl	176(%ebx), %edi
	movswl	14(%esi,%ebp), %esi
	movswl	_tilesiz+2(,%esi,4), %esi
	sall	$2, %esi
	idivl	%esi
	movswl	%di, %edx
	cmpl	%eax, %edx
	jl	L791
L764:
	movl	$230, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	movw	%ax, 176(%ebx)
	cmpw	$239, 216(%ebx)
	jg	L765
	movl	$240, %eax
	movw	%ax, 216(%ebx)
L765:
	movswl	196(%ecx), %eax
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	movl	%eax, 28(%esp)
	movl	52(%esp), %ebp
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L758:
	.cfi_restore_state
	imull	$44, %eax, %eax
	movl	$_s_FireballFlames, %ecx
	movl	$3212, %edx
	movl	$0, 20(%esp)
	addl	%eax, %esi
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
	movl	_sprite, %ecx
	movswl	%ax, %edi
	movw	%ax, 34(%esp)
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebx
	movl	%edi, 28(%esp)
	movl	%ebx, 24(%esp)
	leal	40(%eax), %edx
	leal	(%ecx,%eax), %ebx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	testw	%bp, %bp
	js	L766
	movswl	%bp, %eax
	movzwl	34(%esp), %edx
	movl	_User(,%eax,4), %eax
	movw	%dx, 196(%eax)
L766:
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 20(%ebx)
	mull	%edx
	movl	$48, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 21(%ebx)
	testw	%bp, %bp
	js	L767
	movswl	%bp, %eax
	imull	$44, %eax, %eax
	addl	%eax, %ecx
	movswl	14(%ecx), %eax
	movzbl	21(%ecx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	testb	$64, 43(%ecx)
	jne	L792
	cmpb	$64, %dl
	je	L793
	imull	%edx, %eax
	addl	%eax, %eax
L772:
	movswl	14(%ebx), %edx
	movswl	_tilesiz+2(,%edx,4), %ecx
	cltd
	sall	$2, %ecx
	idivl	%ecx
L767:
	movl	24(%esp), %edx
	movw	%ax, 176(%edx)
	movswl	30(%esi), %eax
	movl	%edi, %edx
	movl	$-1171354717, %esi
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$-40, 16(%ebx)
	movzbl	262(%eax), %eax
	movb	%al, 262(%edx)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movb	%al, 36(%esp)
	movl	%edx, %eax
	mull	%esi
	movzbl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	%al, 17(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	andw	$-258, 12(%ebx)
	movl	$200, 188(%edx)
	testw	%bp, %bp
	jns	L794
	movswl	24(%ebx), %eax
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	testw	$4160, 38(%eax)
	jne	L775
	movl	24(%esp), %esi
	movl	$0, 96(%esi)
	movl	%edi, (%esp)
	call	__Z12DoFindGrounds
	xorl	%eax, %eax
	movl	$8, %ecx
	movw	%ax, 92(%esi)
	movl	_User(,%edi,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%edi, (%esp)
	call	__Z6DoJumps
	movl	_sprite, %ecx
L774:
	leal	8(%ebx), %ebp
	movl	$-1171354717, %esi
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$185, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L789
	cmpl	$-1, 32(%eax)
	je	L795
L777:
	movzwl	34(%esp), %esi
	movw	%si, 48(%eax)
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
L756:
	movl	28(%esp), %eax
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L794:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	%bp, %eax
	movl	_User(,%edi,4), %edx
	movl	_User(,%eax,4), %eax
	orl	$1048576, 72(%eax)
	movw	%bp, 138(%edx)
	jmp	L774
	.p2align 4,,10
	.p2align 3
L789:
	movl	28(%esp), %eax
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L792:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L796
	imull	%edx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	jmp	L772
	.p2align 4,,10
	.p2align 3
L791:
	movl	$2048, %eax
	xorl	%edx, %edx
	idivl	%esi
	addl	%edi, %eax
	jmp	L764
	.p2align 4,,10
	.p2align 3
L790:
	movl	%ebp, %edx
	movl	%ebp, %eax
	sall	$8, %edx
	sall	$6, %eax
	jmp	L761
	.p2align 4,,10
	.p2align 3
L775:
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
L757:
	movl	48(%esp), %edi
	movl	52(%esp), %ebp
	movl	$-1, 28(%esp)
	movl	28(%esp), %eax
	addl	$56, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L795:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	$16, 28(%eax)
	jne	L777
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	movl	40(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L756
	.p2align 4,,10
	.p2align 3
L793:
	.cfi_restore_state
	sall	$7, %eax
	jmp	L772
	.p2align 4,,10
	.p2align 3
L796:
	movl	%eax, %ecx
	sall	$6, %eax
	sall	$8, %ecx
	addl	%ecx, %eax
	jmp	L772
L787:
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	jmp	L757
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z16SpawnFireballExps
	.def	__Z16SpawnFireballExps;	.scl	2;	.type	32;	.endef
__Z16SpawnFireballExps:
LFB59:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	movl	%edi, 28(%esp)
	testb	$-128, 69(%edi)
	jne	L800
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, %eax, %esi
	movl	$-1171354717, %edi
	movl	_sprite, %ecx
	movl	%ebp, 48(%esp)
	movl	%eax, 32(%esp)
	addl	%ecx, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$181, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_FireballExp, %ecx
	movl	$3101, %edx
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
	movl	_sprite, %ecx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %ebp
	movl	%eax, 24(%esp)
	leal	40(%edx), %eax
	leal	(%ecx,%edx), %ebx
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$52, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$52, 21(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	movl	28(%esp), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	movzbl	262(%esi), %esi
	movl	%esi, %edx
	movb	%dl, 262(%ebp)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	28(%esp), %esi
	movb	%dl, 17(%ebx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	$3840, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	68(%esi), %eax
	andl	$1073741824, %eax
	orl	%eax, 68(%ebp)
	movl	32(%esp), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	andw	$-258, 12(%ebx)
	movl	$3840, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$149, %eax
	jle	L803
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %ebp
	.cfi_restore 5
L797:
	movl	24(%esp), %eax
	movl	44(%esp), %edi
	addl	$52, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L803:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	24(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z19SpawnFireballFlamesss
	movl	24(%esp), %eax
	movl	36(%esp), %ebx
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
L800:
	.cfi_def_cfa_offset 56
	.cfi_offset 7, -12
	movl	$-1, 24(%esp)
	jmp	L797
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z16SpawnBreakFlamess
	.def	__Z16SpawnBreakFlamess;	.scl	2;	.type	32;	.endef
__Z16SpawnBreakFlamess:
LFB60:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_BreakFlames, %ecx
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movswl	52(%esp), %edx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movl	_User(,%edx,4), %esi
	movl	$0, 20(%esp)
	movswl	28(%eax), %edx
	movl	%edx, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$3213, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	movw	%ax, 30(%esp)
	imull	$44, %edi, %eax
	movl	%edi, 24(%esp)
	movl	_User(,%edi,4), %edi
	leal	(%ecx,%eax), %ebx
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	$48, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 21(%ebx)
	movw	%ax, 176(%edi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-40, 16(%ebx)
	testl	%esi, %esi
	je	L805
	movzbl	262(%esi), %esi
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%esi, %eax
	movb	%al, 262(%edi)
	movl	%edx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 17(%ebx)
L805:
	leal	12(%ebx), %edx
	movl	$-1171354717, %esi
	movl	24(%esp), %ebp
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	$200, 188(%edi)
	movl	$0, 96(%edi)
	movl	%ebp, (%esp)
	call	__Z12DoFindGrounds
	xorl	%eax, %eax
	movl	$8, %ecx
	movw	%ax, 92(%edi)
	movl	_User(,%ebp,4), %edx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%ebp, (%esp)
	leal	8(%ebx), %ebp
	call	__Z6DoJumps
	movl	_sprite, %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$185, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L804
	cmpl	$-1, 32(%eax)
	je	L816
L807:
	movzwl	30(%esp), %esi
	movw	%si, 48(%eax)
L804:
	movl	24(%esp), %eax
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
L816:
	.cfi_restore_state
	testb	$16, 28(%eax)
	jne	L807
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	movl	24(%esp), %eax
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
LFE60:
	.p2align 4
	.globl	__Z22SpawnBreakStaticFlamess
	.def	__Z22SpawnBreakStaticFlamess;	.scl	2;	.type	32;	.endef
__Z22SpawnBreakStaticFlamess:
LFB61:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %edx
	imull	$44, %edx, %eax
	addl	_sprite, %eax
	movl	_User(,%edx,4), %edi
	movl	$0, 20(%esp)
	movswl	28(%eax), %edx
	movl	%edi, 28(%esp)
	movl	%edx, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$3212, %edx
	movl	%eax, (%esp)
	movl	$42, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	addl	$1, _krandcount
	movw	%ax, 38(%esp)
	cwtl
	imull	$44, %eax, %edx
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%ecx, %edi
	movl	%eax, 24(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ebx
	leal	1(%eax,%ebx,4), %esi
	leal	14(%edx), %eax
	leal	(%ecx,%edx), %ebx
	movzwl	%si, %esi
	mull	%ebp
	movl	%esi, _randomseed
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %ebp
	movl	$3143, %eax
	cmpl	$65535, %esi
	je	L818
	sall	$14, %esi
	cmpl	$537936225, %esi
	sbbl	%eax, %eax
	andl	$14, %eax
	addw	$3143, %ax
L818:
	movl	%ebp, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movw	%ax, 14(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$-40, 16(%ebx)
	movzbl	262(%eax), %ebp
	movl	%ebp, %eax
	movb	%al, 262(%edx)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	%al, 17(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	andw	$-258, 12(%ebx)
	movl	$200, 188(%edx)
	movl	$0, 96(%edx)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	testb	$2, 14(%eax)
	je	L832
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
	movl	_sprite, %edi
	movl	%eax, %esi
L820:
	leal	8(%ebx), %ebp
	movl	$-1171354717, %ecx
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 8(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$185, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L817
	cmpl	$-1, 32(%eax)
	je	L833
L822:
	movzwl	38(%esp), %edi
	movw	%di, 48(%eax)
L817:
	movl	32(%esp), %eax
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
L832:
	.cfi_restore_state
	movl	8(%eax), %esi
	jmp	L820
	.p2align 4,,10
	.p2align 3
L833:
	testb	$16, 28(%eax)
	jne	L822
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	movl	32(%esp), %eax
	addl	$40, %esp
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
LFE61:
	.p2align 4
	.globl	__Z12SpawnBoltExps
	.def	__Z12SpawnBoltExps;	.scl	2;	.type	32;	.endef
__Z12SpawnBoltExps:
LFB63:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L839
	testb	$-128, 69(%eax)
	jne	L842
L839:
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	imull	$44, 28(%esp), %esi
	movl	_sprite, %ecx
	movl	%ebp, 56(%esp)
	movl	%edi, 52(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	$-1171354717, %edi
	addl	%ecx, %esi
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$14, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_BoltExp, %ecx
	movl	$3100, %edx
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
	movl	_sprite, %ebx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	_User(,%ebp,4), %ecx
	movl	%ebp, 32(%esp)
	movl	%ecx, 40(%esp)
	addl	%eax, %ebx
	movl	%eax, 36(%esp)
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$76, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	addl	$1, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$76, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ecx
	andl	$1023, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, _randomseed
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	cmpl	$512, %eax
	jg	L836
L837:
	movl	_DamageData+616, %eax
	movl	40(%esp), %edi
	movl	$10240, %ecx
	movl	%ebx, %edx
	movl	%eax, 188(%edi)
	movl	28(%esp), %eax
	movl	$10240, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%ebp, (%esp)
	call	__Z15DoExpDamageTests
	movl	36(%esp), %eax
	addl	_sprite, %eax
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	(%ebx), %ecx
	movswl	24(%ebx), %edx
	movl	$16, 8(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L834:
	movl	32(%esp), %eax
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L836:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
	jmp	L837
L842:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 32(%esp)
	jmp	L834
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z13DoBoltThinMans
	.def	__Z13DoBoltThinMans;	.scl	2;	.type	32;	.endef
__Z13DoBoltThinMans:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movswl	40(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	imull	$44, %ebx, %edi
	movl	$4, 8(%esp)
	addl	_sprite, %edi
	movl	$0, 4(%esp)
	call	__Z12DoBlurExtendsss
	movzwl	28(%edi), %eax
	movswl	32(%edi), %ebp
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %ecx
	movswl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$1024, 8(%esp)
	imull	%ebp, %ecx
	movl	$1024, 4(%esp)
	movswl	36(%edi), %eax
	imull	%ebp, %edx
	movl	%eax, (%esp)
	sarl	$14, %ecx
	movl	%ebx, %eax
	sarl	$14, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebx, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	68(%esi), %eax
	testl	$1073741824, %eax
	jne	L858
L846:
	testb	$-128, %ah
	jne	L847
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L859
L843:
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
L859:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L843
	movl	%ebx, (%esp)
	call	__Z12SpawnBoltExps
	movl	%ebx, %eax
	call	__Z10KillSprites
L847:
	addl	$20, %esp
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
L858:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L846
	movl	%ebx, (%esp)
	call	__Z11SpawnBubbles
	movl	68(%esi), %eax
	jmp	L846
	.cfi_endproc
LFE65:
	.p2align 4
	.globl	__Z7DoLasers
	.def	__Z7DoLasers;	.scl	2;	.type	32;	.endef
__Z7DoLasers:
LFB66:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	jne	L869
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %esi
	movw	%dx, 30(%esp)
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	addl	_sprite, %eax
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L862:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L863
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L874
L863:
	addw	$1, 30(%esp)
	cmpw	$255, 30(%esp)
	jg	L862
	movl	$0, 20(%esp)
	movswl	28(%edi), %eax
	movl	$_s_LaserPuff, %ecx
	movl	$1748, %edx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	cwtl
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	movl	$-1171354717, %eax
	addl	%edx, %ecx
	addl	$16, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$-40, 16(%ecx)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	24(%esp), %eax
	movb	$16, 20(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	_sprite, %edx
	movb	$16, 21(%ecx)
	movb	$14, 262(%eax)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	24(%esp), %eax
	movb	$14, 17(%ecx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	$0, 160(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
	jmp	L862
	.p2align 4,,10
	.p2align 3
L869:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L874:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, (%esp)
	call	__Z12SpawnBoltExps
	movl	%esi, %eax
	call	__Z10KillSprites
	addl	$32, %esp
	movl	$1, %eax
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
LFE66:
	.p2align 4
	.globl	__Z12DoLaserStarts
	.def	__Z12DoLaserStarts;	.scl	2;	.type	32;	.endef
__Z12DoLaserStarts:
LFB67:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L876
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L876:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	testl	%eax, %eax
	jne	L888
L875:
	addl	$20, %esp
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
L888:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L889
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
	.p2align 4,,10
	.p2align 3
L889:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12SpawnBoltExps
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L875
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z12DoBoltSeekers
	.def	__Z12DoBoltSeekers;	.scl	2;	.type	32;	.endef
__Z12DoBoltSeekers:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movswl	40(%esp), %ebx
	movl	_User(,%ebx,4), %esi
	movl	%ebx, (%esp)
	imull	$44, %ebx, %edi
	movl	$768, 8(%esp)
	addl	_sprite, %edi
	movl	$30, 4(%esp)
	call	__Z11MissileSeeksss
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z12DoBlurExtendsss
	movzwl	28(%edi), %eax
	movswl	32(%edi), %ebp
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %ecx
	movswl	_sintable(%eax,%eax), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	$1024, 8(%esp)
	imull	%ebp, %ecx
	movl	$1024, 4(%esp)
	movswl	36(%edi), %eax
	imull	%ebp, %edx
	movl	%eax, (%esp)
	sarl	$14, %ecx
	movl	%ebx, %eax
	sarl	$14, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebx, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%esi)
	jne	L902
L891:
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L903
L890:
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
L902:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L891
	movl	%ebx, (%esp)
	call	__Z11SpawnBubbles
	movl	264(%esi), %eax
	testl	%eax, %eax
	je	L890
	.p2align 4
	.p2align 3
L903:
	movl	%ebx, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L890
	movl	%ebx, (%esp)
	call	__Z12SpawnBoltExps
	movl	%ebx, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L890
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	__Z24SpawnNuclearSecondaryExpss
	.def	__Z24SpawnNuclearSecondaryExpss;	.scl	2;	.type	32;	.endef
__Z24SpawnNuclearSecondaryExpss:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_GrenadeExp, %ecx
	movl	$3121, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movzwl	72(%esp), %eax
	movl	$512, 20(%esp)
	movw	%ax, 24(%esp)
	movswl	68(%esp), %eax
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%eax, 32(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
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
	movl	$-1171354717, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebp
	movl	%edi, 28(%esp)
	addl	%eax, %esi
	addl	$40, %eax
	mull	%ecx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movw	%ax, 40(%esi)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	addl	$1, _krandcount
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-128, 16(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-38, 20(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movb	$-104, 21(%esi)
	movzbl	18(%ebx), %eax
	movb	%al, 18(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	_randomseed, %eax
	movl	$268439552, 96(%ebp)
	movl	$4223, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	andw	$-258, 12(%esi)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L905
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$18, %edx
	leal	2176(%edx), %ecx
L905:
	movzwl	24(%esp), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	24(%esp), %eax
	imull	%ecx, %edx
	andl	$2047, %eax
	sarl	$14, %edx
	movl	%edx, 152(%ebp)
	movswl	_sintable(%eax,%eax), %eax
	movl	$200, 188(%ebp)
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movl	%eax, %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebp), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebp), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebp)
	movl	8(%esi), %edx
	movl	4(%esi), %ecx
	movl	(%esi), %eax
	subl	8(%ebx), %edx
	subl	4(%ebx), %ecx
	subl	(%ebx), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 36(%esp)
	movl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	cmpl	%ecx, %ebx
	jge	L906
	leal	36(%esp), %eax
	leal	40(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ebx
	movl	44(%esp), %eax
L906:
	cmpl	%eax, %ebx
	jge	L907
	leal	36(%esp), %eax
	leal	44(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	44(%esp), %eax
	movl	36(%esp), %ebx
L907:
	movl	%ebx, %edx
	addl	40(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	cmpl	$1023, %ebx
	jle	L914
	movl	$2560, (%esp)
	movl	32(%esp), %eax
	movl	$12800, %ecx
	movl	%esi, %edx
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%edi, %eax
	call	__Z12InitChemBombs.isra.0
L904:
	movl	28(%esp), %eax
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
L914:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	$-1, 28(%esp)
	jmp	L904
	.cfi_endproc
LFE69:
	.p2align 4
	.globl	__Z16ComboMissileSeeksss
	.def	__Z16ComboMissileSeeksss;	.scl	2;	.type	32;	.endef
__Z16ComboMissileSeeksss:
LFB70:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movswl	40(%esp), %esi
	movl	%ebx, 20(%esp)
	movzwl	44(%esp), %ecx
	movl	%edi, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	_User(,%esi,4), %edi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movzwl	216(%edi), %eax
	movzwl	186(%edi), %edx
	cmpw	%cx, %ax
	jg	L916
	addl	$6, %eax
	movw	%ax, 216(%edi)
	cmpw	$-1, %dx
	je	L940
L920:
	testw	%dx, %dx
	js	L935
L943:
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_User(,%esi,4), %eax
	movswl	186(%eax), %esi
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movswl	28(%ebx), %edx
	movl	%edx, %ecx
	subl	%eax, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	$1024, %edx
	jle	L922
	leal	2048(%ecx), %edx
	cmpw	$1025, %cx
	cmovl	%edx, %ecx
	leal	2048(%eax), %edx
	cmpl	$1025, %eax
	cmovl	%edx, %eax
L922:
	subl	%eax, %ecx
	movl	%ecx, %eax
	negw	%ax
	cmovs	%ecx, %eax
	cmpw	$32, %ax
	jbe	L925
	testw	%cx, %cx
	movl	$32, %eax
	movl	$-32, %ecx
	cmovg	%eax, %ecx
L925:
	movl	$-1171354717, %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	subl	%ecx, %eax
	movw	%ax, 28(%ebx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movswl	14(%esi), %ebp
	movl	8(%esi), %ecx
	movzbl	21(%esi), %edx
	movswl	_tilesiz+2(,%ebp,4), %eax
	movl	%ecx, 16(%esp)
	testb	$-128, 12(%esi)
	je	L926
	cmpb	$64, %dl
	je	L941
	movl	%edx, %ecx
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	imull	%eax, %ecx
	sall	$8, %ebp
	leal	0(%ebp,%ecx,2), %ebp
	movl	16(%esp), %ecx
	subl	%ebp, %ecx
	jmp	L929
	.p2align 4,,10
	.p2align 3
L926:
	cmpb	$64, %dl
	je	L942
	movl	%edx, %ebp
	movl	16(%esp), %ecx
	imull	%eax, %ebp
	sall	$2, %ebp
	subl	%ebp, %ecx
L929:
	imull	%edx, %eax
L931:
	leal	(%eax,%ecx), %ebp
	movl	4(%ebx), %edx
	movl	(%ebx), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	movl	8(%ebx), %esi
	imull	%edx, %edx
	imull	%ecx, %ecx
	movl	%esi, %eax
	subl	%ebp, %eax
	subl	%esi, %ebp
	imull	%eax, %eax
	addl	%edx, %ecx
	sarl	$8, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	movl	160(%edi), %ecx
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	32(%ebx), %edx
	movl	%ebp, %eax
	movl	%ecx, 16(%esp)
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	16(%esp), %ecx
	movl	%eax, %edx
	movl	%ecx, %eax
	sall	$4, %eax
	subl	%ecx, %eax
	addl	%edx, %eax
	leal	15(%eax), %edx
	cmovs	%edx, %eax
	sarl	$4, %eax
	movl	%eax, 160(%edi)
	movl	32(%esp), %ebp
	.cfi_restore 5
L935:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L916:
	.cfi_restore_state
	cmpw	$-1, %dx
	jne	L920
L932:
	movswl	48(%esp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	je	L939
	movl	_User(,%eax,4), %edx
	movw	%ax, 186(%edi)
	orl	$6, 68(%edx)
L939:
	movzwl	186(%edi), %edx
	testw	%dx, %dx
	jns	L943
	jmp	L935
	.p2align 4,,10
	.p2align 3
L940:
	cmpw	%cx, %ax
	jle	L935
	jmp	L932
	.p2align 4,,10
	.p2align 3
L941:
	.cfi_offset 5, -8
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	movl	%eax, %edx
	sall	$7, %edx
	sall	$8, %ebp
	addl	%ebp, %edx
	subl	%edx, %ecx
L928:
	sall	$6, %eax
	jmp	L931
	.p2align 4,,10
	.p2align 3
L942:
	movl	16(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
	jmp	L928
	.cfi_endproc
LFE70:
	.p2align 4
	.globl	__Z17VectorMissileSeeksssss
	.def	__Z17VectorMissileSeeksssss;	.scl	2;	.type	32;	.endef
__Z17VectorMissileSeeksssss:
LFB71:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movswl	60(%esp), %esi
	movl	%edi, 48(%esp)
	movl	%ebx, 40(%esp)
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %eax
	addl	_sprite, %eax
	movl	%eax, %edi
	movzwl	186(%ebx), %edx
	movzwl	216(%ebx), %eax
	cmpw	64(%esp), %ax
	jg	L945
	addl	$6, %eax
	movw	%ax, 216(%ebx)
	cmpw	$-1, %dx
	je	L971
L950:
	testw	%dx, %dx
	js	L963
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	_User(,%esi,4), %eax
	movswl	186(%eax), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %ebp
	je	L969
	movswl	14(%eax), %esi
	movl	8(%ebp), %ecx
	movzbl	21(%ebp), %edx
	movl	%ecx, 16(%esp)
	movswl	_tilesiz+2(,%esi,4), %eax
	testb	$-128, 12(%ebp)
	je	L954
	cmpb	$64, %dl
	je	L972
	movl	%edx, %ecx
	movsbl	_picanm+2(%esi,%esi,4), %esi
	imull	%eax, %ecx
	sall	$8, %esi
	leal	(%esi,%ecx,2), %esi
	movl	16(%esp), %ecx
	subl	%esi, %ecx
L957:
	imull	%edx, %eax
L959:
	leal	(%eax,%ecx), %esi
	movl	4(%edi), %eax
	subl	4(%ebp), %eax
	movl	0(%ebp), %edx
	movl	(%edi), %ecx
	movl	%eax, 24(%esp)
	movl	8(%edi), %eax
	movl	%esi, 16(%esp)
	movl	%ecx, 20(%esp)
	subl	%edx, %ecx
	subl	%esi, %eax
	imull	%ecx, %ecx
	movl	%edx, 36(%esp)
	movl	%eax, %esi
	movl	24(%esp), %eax
	imull	%esi, %esi
	imull	%eax, %eax
	sarl	$8, %esi
	addl	%ecx, %eax
	leal	(%eax,%esi), %ecx
	call	@ksqrt@4
	movl	156(%ebx), %edx
	movl	%eax, %esi
	movl	152(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	36(%esp), %edx
	movl	%eax, 24(%esp)
	movl	160(%ebx), %eax
	subl	20(%esp), %edx
	movl	%esi, 8(%esp)
	movl	%eax, 32(%esp)
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	32(%edi), %ecx
	movl	%edx, %eax
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%esi, %ecx
	sarl	$31, %ecx
	movl	%eax, 152(%ebx)
	movl	%ecx, 12(%esp)
	movl	%esi, 8(%esp)
	movswl	32(%edi), %edx
	movl	4(%ebp), %eax
	subl	4(%edi), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, 156(%ebx)
	movl	16(%esp), %eax
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movswl	32(%edi), %edx
	subl	8(%edi), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movswl	68(%esp), %esi
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	leal	-1(%esi), %ecx
	imull	%ecx, %eax
	addl	152(%ebx), %eax
	cltd
	idivl	%esi
	movl	28(%esp), %edx
	imull	%ecx, %edx
	imull	32(%esp), %ecx
	movl	%eax, %ebp
	movl	%eax, 152(%ebx)
	movl	156(%ebx), %eax
	addl	%edx, %eax
	cltd
	idivl	%esi
	movl	%eax, 16(%esp)
	movl	%eax, 156(%ebx)
	movl	20(%esp), %eax
	addl	%ecx, %eax
	movl	%ebp, %ecx
	cltd
	idivl	%esi
	movl	16(%esp), %edx
	movl	%eax, 160(%ebx)
	call	@getangle@8
	leal	28(%edi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	movl	52(%esp), %ebp
	.cfi_restore 5
L963:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	xorl	%eax, %eax
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L945:
	.cfi_restore_state
	cmpw	$-1, %dx
	jne	L950
L960:
	movswl	72(%esp), %edx
	testb	$1, 75(%ebx)
	je	L948
	movl	%edi, %eax
	call	__Z15PickEnemyTargetP12spritetypev7s
	cmpl	$-1, %eax
	je	L949
L953:
	movl	_User(,%eax,4), %edx
	movw	%ax, 186(%ebx)
	orl	$6, 68(%edx)
L970:
	movzwl	186(%ebx), %edx
	jmp	L950
	.p2align 4,,10
	.p2align 3
L954:
	.cfi_offset 5, -8
	cmpb	$64, %dl
	je	L973
	movl	%edx, %esi
	movl	16(%esp), %ecx
	imull	%eax, %esi
	sall	$2, %esi
	subl	%esi, %ecx
	jmp	L957
	.p2align 4,,10
	.p2align 3
L971:
	.cfi_restore 5
	cmpw	64(%esp), %ax
	jle	L963
	jmp	L960
	.p2align 4,,10
	.p2align 3
L969:
	.cfi_offset 5, -8
	movl	52(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L963
	.p2align 4,,10
	.p2align 3
L973:
	.cfi_restore_state
	movl	16(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
L956:
	sall	$6, %eax
	jmp	L959
	.p2align 4,,10
	.p2align 3
L972:
	movsbl	_picanm+2(%esi,%esi,4), %edx
	movl	%eax, %esi
	sall	$7, %esi
	sall	$8, %edx
	addl	%esi, %edx
	subl	%edx, %ecx
	jmp	L956
	.p2align 4,,10
	.p2align 3
L948:
	.cfi_restore 5
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	jne	L953
	movswl	76(%esp), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	jne	L953
	jmp	L970
	.p2align 4,,10
	.p2align 3
L949:
	movswl	76(%esp), %edx
	movl	%edi, %eax
	call	__Z15PickEnemyTargetP12spritetypev7s
	cmpl	$-1, %eax
	jne	L953
	jmp	L970
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z8DoRockets
	.def	__Z8DoRockets;	.scl	2;	.type	32;	.endef
__Z8DoRockets:
LFB72:
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
	movl	_sprite, %ecx
	movswl	52(%esp), %esi
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %edi
	movzwl	280(%ebx), %eax
	addl	%ecx, %edi
	subl	$6, %eax
	movw	%ax, 280(%ebx)
	testw	%ax, %ax
	jle	L998
L975:
	testb	$2, 70(%ebx)
	jne	L999
L976:
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	96(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	160(%ebx), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	68(%ebx), %ebp
	testl	$1073741824, %ebp
	jne	L1000
L979:
	andl	$32768, %ebp
	jne	L980
	movl	264(%ebx), %edx
	testl	%edx, %edx
	jne	L1001
L981:
	cmpw	$0, 176(%ebx)
	je	L1002
	addl	$32, %esp
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
L1001:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	je	L981
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L981
	cmpw	$2014, 82(%ebx)
	je	L1003
	cmpl	$30000, 188(%ebx)
	movl	%esi, (%esp)
	je	L1004
	call	__Z12SpawnBoltExps
L983:
	movl	%esi, %eax
	call	__Z10KillSprites
L980:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %ebp
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
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
	movl	$100, 20(%esp)
	movswl	28(%edi), %eax
	movl	$_s_Puff, %ecx
	movl	$1748, %edx
	movl	%eax, 16(%esp)
	movl	64(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	60(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	56(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %ecx
	imull	$44, %eax, %edi
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	addl	_sprite, %edi
	movl	%esi, %eax
	movl	$-1171354717, %esi
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	leal	16(%edi), %edx
	subl	_sprite, %edx
	movl	28(%esp), %ecx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%edi)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 20(%edi)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	_sprite, %edx
	movb	$40, 21(%edi)
	movl	56(%ebx), %eax
	movl	%eax, 56(%ecx)
	movl	60(%ebx), %eax
	movl	%eax, 60(%ecx)
	movl	64(%ebx), %eax
	movl	%eax, 64(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movl	$20000, %edx
	andw	$-258, 12(%edi)
	movl	152(%ebx), %eax
	movl	%eax, 152(%ecx)
	movl	156(%ebx), %eax
	movl	%eax, 156(%ecx)
	movl	160(%ebx), %eax
	movl	%eax, 160(%ecx)
	movl	24(%esp), %eax
	movl	_User(,%eax,4), %esi
	movl	152(%esi), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%esi)
	movl	156(%esi), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 156(%esi)
	movl	160(%esi), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%esi)
	testb	$64, 71(%ebx)
	je	L987
	orl	$1073741824, 68(%ecx)
	addl	$32, %esp
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
L998:
	.cfi_restore_state
	cmpb	$20, 262(%ebx)
	jne	L975
	movl	200(%ebx), %ebp
	movl	0(%ebp), %edx
	subl	(%edi), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ebp), %edx
	subl	4(%edi), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovs	%edx, %ebp
	cmpl	%ebp, %eax
	leal	(%eax,%ebp), %edx
	cmovg	%ebp, %eax
	movl	$-1171354717, %ebp
	sarl	%eax
	subl	%eax, %edx
	leal	8(%edi), %eax
	sarl	$6, %edx
	movl	%eax, 28(%esp)
	movw	%dx, 280(%ebx)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	leal	4(%edi), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	movl	$26, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%edi, %edx
	call	__Z9PlaySoundiPiS_S_i
	jmp	L975
	.p2align 4,,10
	.p2align 3
L1000:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L979
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	movl	68(%ebx), %ebp
	jmp	L979
	.p2align 4,,10
	.p2align 3
L999:
	movl	$768, 16(%esp)
	movl	$128, 12(%esp)
	movl	$16, 8(%esp)
	movl	$30, 4(%esp)
	movl	%esi, (%esp)
	call	__Z17VectorMissileSeeksssss
	jmp	L976
	.p2align 4,,10
	.p2align 3
L987:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%ebp, %ebp
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
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
L1004:
	.cfi_restore_state
	call	__Z15SpawnNuclearExps
	jmp	L983
L1003:
	movl	%esi, (%esp)
	call	__Z13SpawnBunnyExps
	jmp	L983
	.cfi_endproc
LFE72:
	.p2align 4
	.globl	__Z14VectorWormSeekssss
	.def	__Z14VectorWormSeekssss;	.scl	2;	.type	32;	.endef
__Z14VectorWormSeekssss:
LFB73:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%edi, 48(%esp)
	.cfi_offset 7, -12
	movswl	60(%esp), %edi
	movl	%esi, 44(%esp)
	movzwl	64(%esp), %ecx
	movl	%ebx, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_User(,%edi,4), %ebx
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movzwl	216(%ebx), %eax
	movzwl	186(%ebx), %edx
	cmpw	%cx, %ax
	jg	L1006
	addl	$6, %eax
	movw	%ax, 216(%ebx)
	cmpw	$-1, %dx
	je	L1025
L1010:
	testw	%dx, %dx
	js	L1020
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	_User(,%edi,4), %eax
	movswl	186(%eax), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %edi
	movswl	14(%eax), %ebp
	movl	8(%edi), %ecx
	movzbl	21(%edi), %edx
	movswl	_tilesiz+2(,%ebp,4), %eax
	movl	%ecx, 16(%esp)
	testb	$-128, 12(%edi)
	je	L1012
	cmpb	$64, %dl
	je	L1026
	movl	%edx, %ecx
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	imull	%eax, %ecx
	sall	$8, %ebp
	leal	0(%ebp,%ecx,2), %ebp
	movl	16(%esp), %ecx
	subl	%ebp, %ecx
L1015:
	imull	%edx, %eax
L1017:
	leal	(%eax,%ecx), %ebp
	movl	4(%esi), %eax
	subl	4(%edi), %eax
	movl	(%edi), %edx
	movl	(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	8(%esi), %eax
	movl	%ebp, 16(%esp)
	movl	%ecx, 20(%esp)
	subl	%edx, %ecx
	subl	%ebp, %eax
	imull	%ecx, %ecx
	movl	%edx, 36(%esp)
	movl	%eax, %ebp
	movl	24(%esp), %eax
	imull	%ebp, %ebp
	imull	%eax, %eax
	sarl	$8, %ebp
	addl	%ecx, %eax
	leal	(%eax,%ebp), %ecx
	call	@ksqrt@4
	movl	160(%ebx), %ecx
	movl	%eax, %ebp
	movl	152(%ebx), %eax
	movl	%ebp, %edx
	movl	%ecx, 32(%esp)
	sarl	$31, %edx
	movl	%eax, 24(%esp)
	movl	156(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	36(%esp), %edx
	subl	20(%esp), %edx
	movl	%ebp, 8(%esp)
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	movswl	32(%esi), %edx
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%ebp, %ecx
	sarl	$31, %ecx
	movl	%eax, 152(%ebx)
	movl	%ecx, 12(%esp)
	movl	%ebp, 8(%esp)
	movswl	32(%esi), %edx
	movl	4(%edi), %eax
	subl	4(%esi), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, 156(%ebx)
	movl	16(%esp), %eax
	movl	%ebp, 8(%esp)
	sarl	$31, %ebp
	movl	%ebp, 12(%esp)
	movswl	32(%esi), %edx
	subl	8(%esi), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	24(%esp), %edi
	movl	28(%esp), %ecx
	leal	0(,%edi,8), %edx
	leal	0(,%ecx,8), %ebp
	subl	%edi, %edx
	addl	152(%ebx), %edx
	leal	7(%edx), %edi
	cmovns	%edx, %edi
	subl	%ecx, %ebp
	movl	32(%esp), %ecx
	sarl	$3, %edi
	addl	156(%ebx), %ebp
	leal	7(%ebp), %edx
	movl	%edi, 152(%ebx)
	cmovns	%ebp, %edx
	leal	0(,%ecx,8), %ebp
	subl	%ecx, %ebp
	sarl	$3, %edx
	addl	%ebp, %eax
	leal	7(%eax), %ecx
	movl	%edx, 156(%ebx)
	cmovs	%ecx, %eax
	movl	%edi, %ecx
	sarl	$3, %eax
	movl	%eax, 160(%ebx)
	call	@getangle@8
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	52(%esp), %ebp
	.cfi_restore 5
L1020:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	xorl	%eax, %eax
	movl	48(%esp), %edi
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1006:
	.cfi_restore_state
	cmpw	$-1, %dx
	jne	L1010
L1018:
	movswl	68(%esp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	je	L1009
L1011:
	movl	_User(,%eax,4), %edx
	movw	%ax, 186(%ebx)
	orl	$6, 68(%edx)
L1024:
	movzwl	186(%ebx), %edx
	jmp	L1010
	.p2align 4,,10
	.p2align 3
L1012:
	.cfi_offset 5, -8
	cmpb	$64, %dl
	je	L1027
	movl	%edx, %ebp
	movl	16(%esp), %ecx
	imull	%eax, %ebp
	sall	$2, %ebp
	subl	%ebp, %ecx
	jmp	L1015
	.p2align 4,,10
	.p2align 3
L1025:
	.cfi_restore 5
	cmpw	%cx, %ax
	jle	L1020
	jmp	L1018
	.p2align 4,,10
	.p2align 3
L1026:
	.cfi_offset 5, -8
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	movl	%eax, %edx
	sall	$7, %edx
	sall	$8, %ebp
	addl	%ebp, %edx
	subl	%edx, %ecx
L1014:
	sall	$6, %eax
	jmp	L1017
	.p2align 4,,10
	.p2align 3
L1027:
	movl	16(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
	jmp	L1014
	.p2align 4,,10
	.p2align 3
L1009:
	.cfi_restore 5
	movswl	72(%esp), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	cmpl	$-1, %eax
	jne	L1011
	jmp	L1024
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z10WallBouncess
	.def	__Z10WallBouncess;	.scl	2;	.type	32;	.endef
__Z10WallBouncess:
LFB74:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
	movswl	%dx, %ecx
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
	movl	_User(,%eax,4), %ebp
	leal	512(%ecx), %eax
	andl	$2047, %eax
	movl	140(%ebp), %ebx
	addw	$1, 274(%ebp)
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ecx,%ecx), %edx
	movl	%ebx, (%esp)
/APP
 # 8835 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $13, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 8(%esp)
	leal	512(%ecx,%ecx), %eax
	movl	152(%ebp), %esi
	andl	$2046, %eax
	movl	8(%esp), %edx
	movswl	_sintable(%eax,%eax), %edi
	movl	156(%ebp), %eax
	negl	%esi
	movl	%esi, 4(%esp)
	negl	%eax
/APP
 # 8842 "source/sw/src/weapon.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 152(%ebp)
	movl	%eax, %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	156(%ebp), %esi
/APP
 # 8843 "source/sw/src/weapon.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%ebp)
	movl	(%esp), %ebx
	movl	%eax, %edx
	movl	$-1171354717, %esi
	movzwl	28(%ebx), %edi
	call	@getangle@8
	movl	%ebx, (%esp)
	addl	$28, %ebx
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%esi
	movl	(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%eax)
	cmpw	%di, %cx
	je	L1031
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
L1031:
	.cfi_restore_state
	movl	152(%ebp), %ecx
	movl	156(%ebp), %edx
	negl	%ecx
	negl	%edx
	movl	%ecx, 152(%ebp)
	movl	%edx, 156(%ebp)
	call	@getangle@8
	subl	_sprite, %ebx
	movl	%eax, %ecx
	movl	%ebx, %eax
	mull	%esi
	movl	(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%eax)
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
LFE74:
	.p2align 4
	.globl	__Z11SlopeBouncesPh
	.def	__Z11SlopeBouncesPh;	.scl	2;	.type	32;	.endef
__Z11SlopeBouncesPh:
LFB75:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_User(,%eax,4), %ebx
	movl	%edx, 20(%esp)
	movl	264(%ebx), %eax
	movl	140(%ebx), %esi
	andl	$4095, %eax
	leal	(%eax,%eax,4), %edx
	leal	24(%esp), %eax
	movl	%eax, 16(%esp)
	leal	28(%esp), %eax
	leal	0(,%edx,8), %edi
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movl	_sector, %eax
	addl	%edi, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	_sector, %ecx
	movl	24(%esp), %eax
	addl	28(%esp), %eax
	addl	%edi, %ecx
	sarl	%eax
	cmpl	8(%esi), %eax
	jle	L1033
	testb	$2, 12(%ecx)
	je	L1037
	movswl	18(%ecx), %ebp
	testl	%ebp, %ebp
	jne	L1045
L1037:
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
L1033:
	.cfi_restore_state
	testb	$2, 14(%ecx)
	je	L1037
	movswl	26(%ecx), %ebp
	testl	%ebp, %ebp
	je	L1037
L1045:
	movl	%ebp, %eax
	negl	%eax
	cmovs	%ebp, %eax
	cmpl	$4096, %eax
	movl	20(%esp), %eax
	setg	(%eax)
	movl	_sector, %eax
	movl	_wall, %ecx
	movswl	(%eax,%edi), %eax
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
	movswl	_sintable(%eax,%eax), %edx
	leal	1536(%eax), %ecx
	movl	%ebp, %eax
/APP
 # 8907 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	andl	$2047, %ecx
	movl	%eax, %edi
	movl	%ebp, %eax
	movswl	_sintable(%ecx,%ecx), %edx
/APP
 # 8908 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$4096, %edx
	movl	%eax, %ecx
	movl	160(%ebx), %eax
/APP
 # 8912 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	152(%ebx), %edx
	movl	156(%ebx), %ebp
	imull	%edi, %edx
	imull	%ecx, %ebp
	addl	%ebp, %edx
	addl	%eax, %edx
	movl	%edx, %eax
/APP
 # 8916 "source/sw/src/weapon.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%ecx, %eax
	movl	%edi, %ebp
	movl	%ecx, 20(%esp)
	imull	%edi, %ebp
	imull	%ecx, %eax
	leal	16777216(%ebp,%eax), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	cltd
	shldl	$17, %eax, %edx
	sall	$17, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	%eax, %ebp
	movl	%edi, %eax
	movl	%ebp, %edx
/APP
 # 8919 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	152(%ebx), %edi
	movl	%ebp, %edx
	subl	%eax, %edi
	movl	20(%esp), %eax
	movl	%edi, 152(%ebx)
/APP
 # 8920 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	156(%ebx), %ecx
	movl	%ebp, %edx
	subl	%eax, %ecx
	movl	$4096, %eax
	movl	%ecx, 156(%ebx)
/APP
 # 8921 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $12, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, 160(%ebx)
	movl	%ecx, %edx
	movl	%edi, %ecx
	call	@getangle@8
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
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
LFE75:
	.p2align 4
	.globl	__Z6DoStars
	.def	__Z6DoStars;	.scl	2;	.type	32;	.endef
__Z6DoStars:
LFB76:
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
	movl	_sprite, %ebp
	movswl	56(%esp), %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	movl	%eax, 20(%esp)
	leal	0(%ebp,%eax), %edi
	testb	$64, 71(%ebx)
	je	L1047
	xorl	%eax, %eax
	movl	$54000, %edx
	movw	%ax, 240(%ebx)
	movl	_User(,%esi,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$54000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$54000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	152(%ebx), %ecx
	movl	156(%ebx), %eax
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	cmpl	$100, %eax
	jg	L1137
L1050:
	leal	8(%edi), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	$768, 8(%edi)
	movl	%esi, (%esp)
	call	__Z13DoActorZranges
	movl	%esi, %eax
	call	__Z18MissileWaterAdjusts.isra.0
	movl	8(%edi), %eax
	cmpl	%eax, 108(%ebx)
	jl	L1134
	movl	160(%ebx), %eax
	movl	156(%ebx), %ebp
	movl	152(%ebx), %edx
L1052:
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %ecx
	movl	%ecx, 8(%esp)
	movswl	96(%ebx), %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	%ecx, 4(%esp)
	movl	%ebp, %ecx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%esi, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	264(%ebx), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1046
	movl	68(%ebx), %edx
	testl	$1073741824, %edx
	jne	L1094
	movl	%eax, %ecx
	andl	$114688, %ecx
	cmpl	$16384, %ecx
	je	L1056
	cmpl	$32768, %ecx
	jne	L1094
	movl	%eax, %ecx
	movl	_wall, %ebp
	andl	$16383, %ecx
	sall	$5, %ecx
	movl	%ebp, 28(%esp)
	addl	%ebp, %ecx
	movl	%ecx, 24(%esp)
	cmpw	$307, 26(%ecx)
	je	L1138
	testl	$67108864, %edx
	jne	L1094
	andl	$536870912, %edx
	movl	_randomseed, %ecx
	movl	_krandcount, %ebp
	jne	L1060
	leal	(%ecx,%ecx,4), %edx
	addl	$1, %ebp
	leal	1(%ecx,%edx,4), %edx
	movl	%ebp, _krandcount
	movzwl	%dx, %ecx
	andl	$1023, %edx
	movl	%ecx, _randomseed
	cmpl	$399, %edx
	jle	L1139
L1060:
	leal	1(%ebp), %edx
	movl	%edx, _krandcount
	leal	(%ecx,%ecx,4), %edx
	leal	1(%ecx,%edx,4), %edx
	movzwl	%dx, %ecx
	andl	$1023, %edx
	movl	%ecx, _randomseed
	cmpl	$599, %edx
	jle	L1094
	movl	24(%esp), %ecx
	movl	28(%esp), %edi
	movswl	8(%ecx), %eax
	sall	$5, %eax
	addl	%edi, %eax
	movl	%ecx, %edi
	movl	4(%eax), %edx
	subl	4(%ecx), %edx
	movl	(%eax), %ecx
	subl	(%edi), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
	movl	%esi, %eax
	andl	$2047, %edx
	call	__Z10WallBouncess
	movl	_User(,%esi,4), %ecx
	movl	$36000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$36000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$36000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	orl	$536870912, 68(%ebx)
	movw	%cx, 240(%ebx)
	movl	$0, 264(%ebx)
L1046:
	addl	$36, %esp
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
L1047:
	.cfi_restore_state
	movl	152(%ebx), %edx
	movl	156(%ebx), %ebp
	movl	%edx, %ecx
	movl	%ebp, %eax
	movl	%edx, 24(%esp)
	imull	%edx, %ecx
	imull	%ebp, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	movl	24(%esp), %edx
	cmpl	$799, %eax
	movl	160(%ebx), %eax
	jg	L1052
	movzwl	176(%ebx), %ecx
	addl	$50, %ecx
	movw	%cx, 176(%ebx)
	movswl	%cx, %ecx
	addl	%ecx, %eax
	movl	%eax, 160(%ebx)
	jmp	L1052
	.p2align 4,,10
	.p2align 3
L1056:
	movl	108(%ebx), %edx
	addl	104(%ebx), %edx
	sarl	%edx
	cmpl	8(%edi), %edx
	jl	L1140
L1068:
	movl	128(%ebx), %edx
	testl	%edx, %edx
	je	L1069
	cmpw	$257, 38(%edx)
	je	L1094
L1069:
	movl	124(%ebx), %edx
	testl	%edx, %edx
	je	L1071
	cmpw	$257, 38(%edx)
	je	L1094
L1071:
	movl	_User(,%esi,4), %ecx
	movl	$58000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$58000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$58000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	152(%ebx), %ebp
	movl	156(%ebx), %eax
	movl	%ebp, %ecx
	imull	%ebp, %ecx
	movl	%eax, 20(%esp)
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	cmpl	$499, %eax
	jg	L1073
L1135:
	movl	264(%ebx), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	je	L1046
	.p2align 4
	.p2align 3
L1094:
	movl	%eax, %edx
	andl	$16383, %edx
	movl	_User(,%edx,4), %edx
	testl	%edx, %edx
	je	L1095
	movzwl	82(%edx), %edx
	cmpw	$2540, %dx
	je	L1099
	cmpw	$5426, %dx
	je	L1099
L1095:
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L1097
	leal	8(%edi), %ebx
	movl	$-1171354717, %ecx
	leal	4(%edi), %ebp
	movl	%ebx, %edx
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
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$3, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L1097:
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L1134
	xorl	%edx, %edx
L1141:
	addl	$36, %esp
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
L1137:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$56, %ah
	jne	L1050
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	movl	_sprite, %ebp
	jmp	L1050
	.p2align 4,,10
	.p2align 3
L1140:
	movl	%eax, %edx
	andl	$4095, %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1068
	cmpw	$0, 10(%edx)
	jle	L1068
	movl	%esi, (%esp)
	call	__Z11SpawnSplashs
L1134:
	movl	%esi, %eax
	call	__Z10KillSprites
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L1099:
	.cfi_restore_state
	leal	8(%edi), %ebp
	movl	$-1171354717, %ecx
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %eax
	movl	%eax, 20(%esp)
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
	movl	20(%esp), %ecx
	movl	$3, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	264(%ebx), %eax
	jmp	L1095
	.p2align 4,,10
	.p2align 3
L1138:
	movswl	82(%ebx), %eax
	movl	(%edi), %edx
	movl	4(%edi), %ecx
	movl	%eax, 8(%esp)
	movswl	28(%edi), %eax
	movl	%eax, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	xorl	%edx, %edx
	movl	$0, 264(%ebx)
	jmp	L1141
	.p2align 4,,10
	.p2align 3
L1073:
	movl	_krandcount, %eax
	movl	%eax, 24(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L1077
	movl	%ecx, %eax
	sall	$14, %eax
	cmpl	$1073663999, %eax
	ja	L1077
	movl	$-100359273, %edx
	mull	%edx
	shrl	$14, %edx
	addl	$32000, %edx
L1076:
	movl	%ebp, %eax
/APP
 # 8119 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 152(%ebx)
	movl	24(%esp), %eax
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1080
	sall	$14, %eax
	cmpl	$1073663999, %eax
	ja	L1080
	movl	$-100359273, %edx
	mull	%edx
	shrl	$14, %edx
	addl	$32000, %edx
L1079:
	movl	20(%esp), %eax
/APP
 # 8120 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	108(%ebx), %edx
	addl	104(%ebx), %edx
	movl	%eax, 156(%ebx)
	sarl	%edx
	movl	160(%ebx), %eax
	cmpl	8(%edi), %edx
	jge	L1081
	movl	$50000, %edx
/APP
 # 8123 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
L1082:
	movl	%eax, 160(%ebx)
	leal	35(%esp), %edx
	movl	%esi, %eax
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L1083
	cmpb	$0, 35(%esp)
	jne	L1142
L1084:
	xorl	%edx, %edx
	orl	$536870912, 68(%ebx)
	movw	%dx, 240(%ebx)
	xorl	%edx, %edx
	movl	$0, 264(%ebx)
	jmp	L1141
L1077:
	movl	$95999, %edx
	jmp	L1076
L1081:
	movl	$40000, %edx
/APP
 # 8125 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	jmp	L1082
L1080:
	movl	$95999, %edx
	jmp	L1079
L1083:
	xorl	%eax, %eax
	movl	160(%ebx), %ecx
	orl	$536870912, 68(%ebx)
	movw	%ax, 240(%ebx)
	movl	_krandcount, %eax
	negl	%ecx
	movl	152(%ebx), %ebp
	movl	$0, 264(%ebx)
	movl	%eax, 20(%esp)
	movl	_randomseed, %eax
	movl	%ecx, 160(%ebx)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	movzwl	%si, %esi
	cmpl	$65535, %esi
	je	L1089
	movl	%esi, %eax
	sall	$14, %eax
	cmpl	$1073663999, %eax
	ja	L1089
	movl	$-100359273, %edx
	mull	%edx
	shrl	$14, %edx
	addl	$32000, %edx
L1088:
	movl	%ebp, %eax
/APP
 # 8162 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 152(%ebx)
	movl	20(%esp), %eax
	movl	156(%ebx), %ebp
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%esi,%esi,4), %eax
	leal	1(%esi,%eax,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1092
	sall	$14, %eax
	cmpl	$1073663999, %eax
	ja	L1092
	movl	$-100359273, %edx
	mull	%edx
	shrl	$14, %edx
	addl	$32000, %edx
L1091:
	movl	%ebp, %eax
/APP
 # 8163 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 156(%ebx)
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%edi), %eax
	jge	L1093
	movl	$50000, %edx
	movl	%ecx, %eax
/APP
 # 8165 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%edx, %edx
	movl	%eax, 160(%ebx)
	jmp	L1141
L1139:
	xorl	%ebp, %ebp
	movw	%bp, 240(%ebx)
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L1061
	movl	$0, 76(%eax)
	movl	$_s_StarStuck, 24(%eax)
	movl	$_s_StarStuck, 16(%eax)
	movswl	_s_StarStuck, %eax
	movzbl	_picanm+3(%eax,%eax,4), %edx
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L1061
	andl	$63, %edx
	movb	%dl, _picanm+3(%eax,%eax,4)
L1061:
	movl	_sprite, %ecx
	leal	20(%edi), %eax
	movl	$-1171354717, %ebp
	subl	%ecx, %eax
	mull	%ebp
	leal	21(%edi), %eax
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	leal	12(%edi), %eax
	subl	%ecx, %eax
	subb	$16, 20(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	leal	18(%edi), %eax
	subl	%ecx, %eax
	subb	$16, 21(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	andw	$-258, 12(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$4, 18(%edi)
	movl	28(%esp), %edi
	movl	$33554944, 96(%ebx)
	movl	_User(,%esi,4), %edx
	movl	264(%edx), %eax
	andl	$16383, %eax
	sall	$5, %eax
	addl	%edi, %eax
	testb	$-128, 30(%eax)
	jne	L1062
	testb	$1, 14(%eax)
	je	L1063
	cmpw	$16383, 10(%eax)
	jbe	L1062
L1063:
	movswl	_StarQueueHead, %ebx
	movswl	_StarQueue(%ebx,%ebx), %eax
	cmpw	$-1, %ax
	jne	L1065
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 52
	movl	$43, %edx
	movl	%esi, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	movl	$0, _User(,%esi,4)
	call	__Z18change_sprite_statss
	movswl	_StarQueueHead, %edx
	movzwl	56(%esp), %edi
	movw	%di, _StarQueue(%edx,%edx)
	movl	%edx, %eax
L1066:
	addl	$1, %eax
	xorl	%edx, %edx
	andl	$31, %eax
	movw	%ax, _StarQueueHead
	jmp	L1141
L1142:
	movl	_krandcount, %ecx
	leal	1(%ecx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movzwl	%dx, %eax
	andl	$1023, %edx
	movl	%eax, _randomseed
	cmpl	$399, %edx
	jle	L1135
	imull	$21, %eax, %eax
	addl	$2, %ecx
	movl	%ecx, _krandcount
	addl	$1, %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$599, %eax
	jg	L1084
	jmp	L1135
L1092:
	movl	$95999, %edx
	jmp	L1091
L1089:
	movl	$95999, %edx
	jmp	L1088
L1093:
	movl	$40000, %edx
	movl	%ecx, %eax
/APP
 # 8167 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%edx, %edx
	movl	%eax, 160(%ebx)
	jmp	L1141
L1065:
	imull	$44, %eax, %eax
	movl	20(%esp), %edx
	addl	%ecx, %edx
	addl	%eax, %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movzwl	24(%edx), %edi
	cmpw	$4096, %di
	ja	L1067
	movswl	_StarQueue(%ebx,%ebx), %ebx
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movzwl	24(%eax), %eax
	cmpw	$4096, %ax
	je	L1067
	cmpw	%ax, %di
	je	L1067
	movl	%ebx, %eax
	call	_do_deletespritesect
	movswl	%di, %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L1067:
	movl	%esi, %eax
	call	__Z10KillSprites
	movzwl	_StarQueueHead, %eax
	jmp	L1066
L1062:
	movl	%esi, %eax
	call	__Z10KillSprites
	xorl	%edx, %edx
	jmp	L1141
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z9DoGrenades
	.def	__Z9DoGrenades;	.scl	2;	.type	32;	.endef
__Z9DoGrenades:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %ebp
	movl	_User(,%ebp,4), %ebx
	imull	$44, %ebp, %eax
	addl	_sprite, %eax
	movl	%eax, 24(%esp)
	movzwl	176(%ebx), %eax
	movl	152(%ebx), %edi
	movl	156(%ebx), %ecx
	leal	20(%eax), %esi
	movl	160(%ebx), %eax
	movswl	%si, %edx
	movl	%eax, 28(%esp)
	addl	%edx, %eax
	movl	%edx, 32(%esp)
	testb	$64, 71(%ebx)
	jne	L1203
L1145:
	movl	%eax, 160(%ebx)
	movw	%si, 176(%ebx)
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %edx
	movl	%edx, 8(%esp)
	movswl	96(%ebx), %edx
	movl	%eax, (%esp)
	movl	%ebp, %eax
	movl	%edx, 4(%esp)
	movl	%edi, %edx
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%ebx)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%ebx)
	jne	L1204
L1146:
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L1147
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L1148
	jg	L1149
	cmpl	$16384, %edx
	je	L1150
	cmpl	$32768, %edx
	jne	L1147
	movl	_wall, %esi
	andl	$16383, %eax
	sall	$5, %eax
	addl	%eax, %esi
	movl	%eax, 32(%esp)
	cmpw	$307, 26(%esi)
	je	L1205
	movl	24(%esp), %ecx
	movl	$-1171354717, %edi
	leal	8(%ecx), %eax
	addl	$4, %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	%edi, %eax
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	%eax, (%esp)
	movl	$284, %eax
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_wall, %eax
	movl	32(%esp), %edi
	movswl	8(%eax,%edi), %edx
	sall	$5, %edx
	addl	%edx, %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
	movl	%ebp, %eax
	andl	$2047, %edx
	call	__Z10WallBouncess
L1163:
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
	.p2align 4
	.p2align 3
L1147:
	cmpw	$10, 274(%ebx)
	jg	L1165
	xorl	%eax, %eax
	testb	$96, 71(%ebx)
	je	L1206
L1143:
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
L1206:
	.cfi_restore_state
	movl	24(%esp), %esi
	movl	$_s_Puff, %ecx
	movl	$1748, %edx
	movl	$100, 20(%esp)
	movl	$-1171354717, %edi
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
	cwtl
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ecx
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	addl	_sprite, %ecx
	movl	%ebp, %eax
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	movl	28(%esp), %ecx
	leal	16(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 20(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movb	$40, 21(%ecx)
	movl	56(%ebx), %eax
	movl	%eax, 56(%esi)
	movl	60(%ebx), %eax
	movl	%eax, 60(%esi)
	movl	64(%ebx), %eax
	movl	%eax, 64(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$22000, %edx
	andw	$-258, 12(%ecx)
	movl	152(%ebx), %eax
	movl	%eax, 152(%esi)
	movl	156(%ebx), %eax
	movl	%eax, 156(%esi)
	movl	160(%ebx), %eax
	movl	%eax, 160(%esi)
	movl	24(%esp), %eax
	movl	_User(,%eax,4), %ecx
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
	movl	68(%ebx), %eax
	andl	$1073741824, %eax
	je	L1143
	orl	$1073741824, 68(%esi)
	addl	$40, %esp
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
L1204:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L1146
	movl	%ebp, (%esp)
	call	__Z11SpawnBubbles
	jmp	L1146
	.p2align 4,,10
	.p2align 3
L1203:
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
	movl	%ecx, %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$50000, %edx
	movl	%eax, 156(%ebx)
	movl	%eax, %ecx
	movl	28(%esp), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	32(%esp), %eax
	jmp	L1145
	.p2align 4,,10
	.p2align 3
L1148:
	movl	24(%esp), %ecx
	movl	$-1171354717, %esi
	leal	8(%ecx), %edi
	addl	$4, %ecx
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
	movl	24(%esp), %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$284, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	%edi, (%esp)
	movl	$8, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	264(%ebx), %edi
	movl	_sprite, %ecx
	andl	$16383, %edi
	imull	$44, %edi, %edi
	addl	%ecx, %edi
	cmpw	$257, 38(%edi)
	je	L1207
L1153:
	testb	$16, 12(%edi)
	jne	L1208
	cmpw	$1, 178(%ebx)
	je	L1209
	.p2align 4
	.p2align 3
L1165:
	movl	%ebp, (%esp)
	call	__Z15SpawnGrenadeExps
	movl	%ebp, %eax
	call	__Z10KillSprites
L1158:
	addl	$40, %esp
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
L1150:
	.cfi_restore_state
	leal	39(%esp), %edx
	movl	%ebp, %eax
	call	__Z11SlopeBouncesPh
	testb	%al, %al
	je	L1160
	cmpb	$0, 39(%esp)
	jne	L1210
	movl	24(%esp), %edi
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%edi), %eax
	jge	L1163
	movl	68(%ebx), %eax
	testl	$536870912, %eax
	jne	L1164
	orl	$536870912, %eax
	movl	$40000, %edx
	movl	%eax, 68(%ebx)
	movl	_User(,%ebp,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%ebx), %edx
	movl	$0, 264(%ebx)
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	xorl	%esi, %esi
	movw	%si, 176(%ebx)
	sarl	$2, %eax
	movl	%eax, 160(%ebx)
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1149:
	cmpl	$65536, %edx
	jne	L1147
	movl	%ebp, %eax
	call	__Z10KillSprites
	jmp	L1158
	.p2align 4,,10
	.p2align 3
L1160:
	movl	24(%esp), %edi
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%edi), %eax
	jge	L1168
	movl	68(%ebx), %eax
	testl	$1073741824, %eax
	je	L1169
	movl	120(%ebx), %ecx
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
	testl	%ecx, %ecx
	je	L1170
	movswl	24(%edi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L1170
L1171:
	cmpw	$0, 10(%edx)
	je	L1201
	orl	$536870912, %eax
	movl	%eax, 68(%ebx)
L1170:
	cmpw	$1, 178(%ebx)
	jne	L1165
	movl	24(%esp), %edi
	movl	$5, %ebx
	leal	28(%edi), %esi
L1176:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1175
	movl	$-2147450879, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$18, %edx
	movl	%edx, %ecx
L1175:
	movl	%esi, %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	call	__Z14InitPhosphoruss.isra.0
	subw	$1, %bx
	jne	L1176
	jmp	L1165
	.p2align 4,,10
	.p2align 3
L1209:
	movl	24(%esp), %edi
	movl	$5, %ebx
	leal	28(%edi), %esi
L1157:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1156
	movl	$-2147450879, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$18, %edx
	movl	%edx, %ecx
L1156:
	movl	%esi, %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	call	__Z14InitPhosphoruss.isra.0
	subw	$1, %bx
	jne	L1157
	jmp	L1165
	.p2align 4,,10
	.p2align 3
L1210:
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
	xorl	%edi, %edi
	movl	%eax, 160(%ecx)
	movl	$0, 264(%ebx)
	movw	%di, 176(%ebx)
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1168:
	negl	160(%ebx)
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
L1202:
	movl	24(%esp), %esi
	movl	$-1171354717, %ecx
	leal	8(%esi), %edi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %eax
	subl	_sprite, %eax
	mull	%ecx
	leal	4(%esi), %ecx
	movl	$284, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1208:
	movzwl	28(%edi), %edx
	movl	%ebp, %eax
	andl	$2047, %edx
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
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1207:
	leal	36(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testb	$8, 36(%edi)
	je	L1153
	movl	$-1, 8(%esp)
	movswl	40(%edi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	jmp	L1153
	.p2align 4,,10
	.p2align 3
L1205:
	movl	24(%esp), %edi
	movswl	82(%ebx), %eax
	movl	4(%edi), %ecx
	movl	(%edi), %edx
	movl	%eax, 8(%esp)
	movswl	28(%edi), %eax
	movl	%eax, 4(%esp)
	movl	8(%edi), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%ebx)
	jmp	L1147
	.p2align 4,,10
	.p2align 3
L1169:
	movl	120(%ebx), %edx
	testl	%edx, %edx
	je	L1201
	movl	24(%esp), %edi
	movswl	24(%edi), %edx
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	jne	L1171
L1201:
	movl	%eax, %edx
	andl	$536870912, %edx
	testl	%edx, %edx
	jne	L1170
	orl	$536870912, %eax
	negl	160(%ebx)
	movl	$40000, %edx
	movl	%eax, 68(%ebx)
	xorl	%eax, %eax
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
	movl	_User(,%ebp,4), %ecx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
	movl	160(%ebx), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	sarl	$2, %eax
	movl	%eax, 160(%ebx)
	jmp	L1202
	.p2align 4,,10
	.p2align 3
L1164:
	cmpw	$1, 178(%ebx)
	jne	L1165
	movl	24(%esp), %edi
	movl	$5, %ebx
	leal	28(%edi), %esi
L1167:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	movl	$2047, %ecx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1166
	movl	$-2147450879, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$18, %edx
	movl	%edx, %ecx
L1166:
	movl	%esi, %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%edi)
	call	__Z14InitPhosphoruss.isra.0
	subw	$1, %bx
	jne	L1167
	jmp	L1165
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z15DoVulcanBoulders
	.def	__Z15DoVulcanBoulders;	.scl	2;	.type	32;	.endef
__Z15DoVulcanBoulders:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %ebp
	movswl	48(%esp), %esi
	movl	_User(,%esi,4), %ebx
	movzwl	176(%ebx), %eax
	movl	156(%ebx), %ecx
	movl	152(%ebx), %edx
	addl	$40, %eax
	movw	%ax, 176(%ebx)
	cwtl
	addl	160(%ebx), %eax
	movl	%eax, 160(%ebx)
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%ebx), %edi
	movl	%edi, 8(%esp)
	movswl	96(%ebx), %edi
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	%edi, 4(%esp)
	call	__Z12move_missilesiiiiiji
	movl	152(%ebx), %ecx
	movl	%eax, 264(%ebx)
	movl	%eax, %edi
	movl	156(%ebx), %eax
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	cmpl	$29, %eax
	jle	L1221
	testl	%edi, %edi
	je	L1211
	movl	%edi, %eax
	andl	$114688, %eax
	cmpl	$49152, %eax
	je	L1215
	jg	L1216
	imull	$44, %esi, %ecx
	addl	%ebp, %ecx
	cmpl	$16384, %eax
	je	L1217
	cmpl	$32768, %eax
	jne	L1219
	movl	_wall, %edx
	andl	$16383, %edi
	sall	$5, %edi
	leal	(%edx,%edi), %eax
	cmpw	$307, 26(%eax)
	je	L1237
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%edx, %ecx
	movl	4(%ecx), %edx
	movl	(%ecx), %ecx
	subl	4(%eax), %edx
	subl	(%eax), %ecx
	call	@getangle@8
	leal	512(%eax), %edx
L1235:
	andl	$2047, %edx
	movl	%esi, %eax
	call	__Z10WallBouncess
	movl	_User(,%esi,4), %ecx
	movl	$40000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$40000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 160(%ecx)
L1219:
	xorl	%edi, %edi
L1211:
	addl	$28, %esp
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
L1221:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z14SpawnLittleExps
	movl	%esi, %eax
	call	__Z10KillSprites
L1213:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$1, %edi
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
L1216:
	.cfi_restore_state
	cmpl	$65536, %eax
	jne	L1219
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L1213
	.p2align 4,,10
	.p2align 3
L1215:
	andl	$16383, %edi
	imull	$44, %edi, %edi
	addl	_sprite, %edi
	testb	$16, 12(%edi)
	je	L1221
	movzwl	28(%edi), %edx
	jmp	L1235
	.p2align 4,,10
	.p2align 3
L1217:
	leal	27(%esp), %edx
	movl	%esi, %eax
	movl	%ecx, 20(%esp)
	call	__Z11SlopeBouncesPh
	movl	20(%esp), %ecx
	testb	%al, %al
	je	L1223
	cmpb	$0, 27(%esp)
	jne	L1238
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	sarl	%eax
	cmpl	8(%ecx), %eax
	jge	L1226
	movl	152(%ebx), %eax
	movl	$30000, %edx
/APP
 # 9281 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$30000, %edx
	movl	%eax, 152(%ebx)
	movl	156(%ebx), %eax
/APP
 # 9282 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$12000, %edx
	movl	%eax, 156(%ebx)
	movl	160(%ebx), %eax
/APP
 # 9283 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$8192, %edx
	xorl	%ecx, %ecx
	movl	$0, 264(%ebx)
	cmpl	%edx, %eax
	movw	%cx, 176(%ebx)
	cmovg	%edx, %eax
	xorl	%edi, %edi
	movl	%eax, 160(%ebx)
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1223:
	movl	108(%ebx), %eax
	addl	104(%ebx), %eax
	movl	160(%ebx), %edi
	sarl	%eax
	cmpl	8(%ecx), %eax
	jge	L1227
	xorl	%eax, %eax
	movl	$20000, %edx
	movl	$0, 264(%ebx)
	movw	%ax, 176(%ebx)
	movl	152(%ebx), %eax
/APP
 # 9308 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$20000, %edx
	movl	%eax, 152(%ebx)
	movl	156(%ebx), %eax
/APP
 # 9309 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$32000, %edx
	movl	%eax, 156(%ebx)
	movl	%edi, %eax
/APP
 # 9310 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$6144, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edi, %edi
	negl	%eax
	movl	%eax, 160(%ebx)
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1237:
	movswl	82(%ebx), %edi
	movl	4(%ecx), %esi
	movl	(%ecx), %edx
	movl	%edi, 8(%esp)
	movswl	28(%ecx), %edi
	movl	%edi, 4(%esp)
	movl	8(%ecx), %ecx
	xorl	%edi, %edi
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	$0, 264(%ebx)
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1227:
	negl	%edi
	movl	%edi, 160(%ebx)
L1236:
	movl	_User(,%esi,4), %ecx
	movl	$30000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$30000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$30000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%edi, %edi
	movl	%eax, 160(%ecx)
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1238:
	movl	_User(,%esi,4), %ecx
	movl	$30000, %edx
	movl	152(%ecx), %eax
/APP
 # 8811 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$30000, %edx
	movl	%eax, 152(%ecx)
	movl	156(%ecx), %eax
/APP
 # 8812 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$30000, %edx
	movl	%eax, 156(%ecx)
	movl	160(%ecx), %eax
/APP
 # 8813 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorl	%esi, %esi
	movl	%eax, 160(%ecx)
	xorl	%edi, %edi
	movl	$0, 264(%ebx)
	movw	%si, 176(%ebx)
	jmp	L1211
L1226:
	movl	$0, 264(%ebx)
	xorl	%edx, %edx
	movw	%dx, 176(%ebx)
	jmp	L1236
	.cfi_endproc
LFE83:
	.section .rdata,"dr"
	.align 4
_StatBreakList:
	.word	0
	.word	45
	.word	41
	.word	3
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
	.def	__Z22TraverseBreakableWallssiiisi;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z14CanSeeWallMoveP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z10DoWallMoveP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z21DoSpawnSpotsForDamages;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteOverlapss;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
	.def	__Z13WeaponMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPickTargetP12spritetypev7jh;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnBloodsssiii;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnDemonFists;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnMineExps;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnTracerExps;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnMicroExps;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnExpZadjustsP12spritetypev7ii;	.scl	2;	.type	32;	.endef
	.def	__Z8SpawnVisssiiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoFindGrounds;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
	.def	__Z12InitChemBombs.isra.0;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.5;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnNuclearExps;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorZranges;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileWaterAdjusts.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z15SpawnGrenadeExps;	.scl	2;	.type	32;	.endef
	.def	__Z14InitPhosphoruss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnLittleExps;	.scl	2;	.type	32;	.endef
