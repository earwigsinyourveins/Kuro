	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z22DoSectorObjectSetScales
	.def	__Z22DoSectorObjectSetScales;	.scl	2;	.type	32;	.endef
__Z22DoSectorObjectSetScales:
LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_SectorObject, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$1, %ebx
	movzwl	12(%esp), %ecx
	jmp	L9
	.p2align 5
	.p2align 4,,10
	.p2align 3
L2:
	addl	$6028, %eax
	cmpl	$_SectorObject+120560, %eax
	je	L14
L9:
	cmpl	$2147483647, 180(%eax)
	je	L2
	cmpw	%cx, 3574(%eax)
	jne	L2
	movzwl	3580(%eax), %edx
	orl	$16384, 596(%eax)
	movl	$__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct, 160(%eax)
	cmpw	$4, %dx
	jg	L3
	cmpw	$2, %dx
	jg	L4
	jne	L2
	movl	$2, %edx
	movzwl	3588(%eax), %esi
	movw	%dx, 3578(%eax)
	movzwl	3584(%eax), %edx
	cmpw	%si, 3582(%eax)
	je	L15
	testw	%dx, %dx
	jns	L2
	negl	%edx
	movw	%dx, 3584(%eax)
L16:
	addl	$6028, %eax
	cmpl	$_SectorObject+120560, %eax
	jne	L9
L14:
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
L3:
	.cfi_restore_state
	cmpw	$5, %dx
	jne	L2
	cmpw	$2, 3578(%eax)
	sbbl	%edx, %edx
	andl	$4, %edx
	addl	$1, %edx
	movw	%dx, 3578(%eax)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L4:
	cmpw	$1, 3578(%eax)
	cmovne	%ebx, %edx
	movw	%dx, 3578(%eax)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L15:
	testw	%dx, %dx
	jle	L2
	negl	%edx
	movw	%dx, 3584(%eax)
	jmp	L16
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z9DoSOeventss
	.def	__Z9DoSOeventss;	.scl	2;	.type	32;	.endef
__Z9DoSOeventss:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movl	$_SectorObject, %ecx
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
	movzwl	28(%esp), %esi
	movzwl	32(%esp), %edx
	movw	%ax, 2(%esp)
	jmp	L32
	.p2align 5
	.p2align 4,,10
	.p2align 3
L19:
	addl	$6028, %ecx
	cmpl	$_SectorObject+120560, %ecx
	je	L44
L32:
	cmpl	$2147483647, 180(%ecx)
	je	L19
	cmpw	%si, 3574(%ecx)
	jne	L19
	movl	596(%ecx), %eax
	testb	$4, %ah
	je	L21
	movzwl	3570(%ecx), %ebx
	movw	%bx, 4(%esp)
	movzwl	3572(%ecx), %ebx
	movw	%bx, 6(%esp)
	cmpw	$0, 4(%esp)
	jle	L45
L22:
	andb	$-5, %ah
	movswl	4(%esp), %ebx
	movl	%eax, 596(%ecx)
	movzwl	6(%esp), %eax
	movl	%ebx, 192(%ecx)
	movw	%ax, 3558(%ecx)
L21:
	movswl	3576(%ecx), %ebx
	cmpw	$-1, %bx
	je	L19
	imull	$44, %ebx, %ebx
	addl	%edi, %ebx
	cmpw	$-1, %dx
	je	L46
	cmpw	$1, %dx
	je	L26
	testw	%dx, %dx
	je	L25
L28:
	addw	%bp, 3558(%ecx)
	movswl	2(%esp), %eax
	testb	$64, 42(%ebx)
	je	L29
	addl	%eax, 196(%ecx)
L30:
	testb	$-128, 42(%ebx)
	je	L19
	negw	3220(%ecx)
	addl	$6028, %ecx
	cmpl	$_SectorObject+120560, %ecx
	jne	L32
L44:
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
L29:
	.cfi_restore_state
	addl	%eax, 192(%ecx)
	jmp	L30
	.p2align 4,,10
	.p2align 3
L24:
	orw	$256, 42(%ebx)
L26:
	leal	36(%ebx), %edx
	movl	$-1171354717, %eax
	movzbl	18(%ebx), %ebp
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %eax
	movl	$1, %edx
	movw	%ax, 2(%esp)
	jmp	L28
	.p2align 4,,10
	.p2align 3
L46:
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	testb	$1, 43(%ebx)
	movl	%eax, _spritechanged(,%edx,4)
	je	L24
	andw	$-257, 42(%ebx)
L25:
	movzbl	18(%ebx), %eax
	leal	36(%ebx), %edx
	subl	%edi, %edx
	negl	%eax
	movl	%eax, %ebp
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	37(%ebx), %eax
	xorl	%edx, %edx
	negl	%eax
	movw	%ax, 2(%esp)
	jmp	L28
	.p2align 4,,10
	.p2align 3
L45:
	testw	%bx, %bx
	jg	L22
	jmp	L21
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct
	.def	__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z17ScaleSectorObjectP19SECTOR_OBJECTstruct:
LFB2:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movzwl	3578(%eax), %edx
	cmpw	$3, %dx
	je	L48
	cmpw	$4, %dx
	je	L49
	cmpw	$2, %dx
	jne	L47
	movzwl	3588(%eax), %ecx
	movzwl	3584(%eax), %edx
	addw	3582(%eax), %dx
	cmpw	%cx, %dx
	jg	L52
	movzwl	3586(%eax), %ecx
	cmpw	%cx, %dx
	jl	L52
	movw	%dx, 3582(%eax)
L47:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore_state
	movzwl	3582(%eax), %ecx
	movzwl	3584(%eax), %edx
	movzwl	3588(%eax), %ebx
	addl	%edx, %ecx
	movw	%cx, 3582(%eax)
	cmpw	%bx, %cx
	jle	L55
L58:
	negl	%edx
	movw	%bx, 3582(%eax)
	movw	%dx, 3584(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L48:
	.cfi_restore_state
	movzwl	3582(%eax), %ecx
	movzwl	3584(%eax), %edx
	movzwl	3588(%eax), %ebx
	addl	%edx, %ecx
	movw	%cx, 3582(%eax)
	cmpw	%bx, %cx
	jle	L53
L57:
	negl	%edx
	movw	%bx, 3582(%eax)
	movw	%dx, 3584(%eax)
L54:
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	andl	$1023, %edx
	movl	%ecx, _randomseed
	movswl	3590(%eax), %ecx
	sall	$3, %ecx
	cmpl	%ecx, %edx
	jge	L47
	negw	3584(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L52:
	.cfi_restore_state
	movl	$1, %edx
	movw	%cx, 3582(%eax)
	movw	%dx, 3578(%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L53:
	.cfi_restore_state
	movzwl	3586(%eax), %ebx
	cmpw	%bx, %cx
	jge	L54
	jmp	L57
	.p2align 4,,10
	.p2align 3
L55:
	movzwl	3586(%eax), %ebx
	cmpw	%bx, %cx
	jge	L47
	jmp	L58
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_
	.def	__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_;	.scl	2;	.type	32;	.endef
__Z16ScaleRandomPointP19SECTOR_OBJECTstructssiiPiS1_:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %edx
	movswl	28(%esp), %eax
	leal	(%edx,%eax,2), %ecx
	movzwl	3592(%ecx), %ebx
	movzwl	4792(%ecx), %eax
	addl	%eax, %ebx
	movw	%bx, 3592(%ecx)
	movzwl	5996(%edx), %esi
	cmpw	%si, %bx
	jg	L65
	movzwl	5994(%edx), %esi
	cmpw	%si, %bx
	jl	L65
L61:
	movl	_randomseed, %eax
	movswl	5998(%edx), %ebp
	movl	_krandcount, %edi
	leal	(%eax,%eax,4), %ebx
	movl	%ebp, %esi
	leal	1(%eax,%ebx,4), %eax
	movzwl	%ax, %ebx
	andl	$1023, %eax
	cmpl	%ebp, %eax
	jge	L62
	negw	4792(%ecx)
L62:
	leal	2(%edi), %eax
	movl	%eax, _krandcount
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %ebx
	movzwl	%bx, %eax
	andl	$1023, %ebx
	movl	%eax, _randomseed
	movl	%esi, %eax
	shrw	$15, %ax
	addl	%esi, %eax
	sarw	%ax
	cwtl
	cmpl	%eax, %ebx
	jl	L66
L63:
	movswl	3592(%ecx), %esi
	movswl	32(%esp), %ebx
	movswl	6002(%edx), %ecx
	movswl	6000(%edx), %edx
	leal	512(%ebx), %eax
	imull	%esi, %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%esi, %ecx
	sarl	$8, %edx
	imull	%edx, %eax
	movl	44(%esp), %edx
	sarl	$8, %ecx
	sarl	$14, %eax
	addl	36(%esp), %eax
	movl	%eax, (%edx)
	movswl	_sintable(%ebx,%ebx), %eax
	movl	48(%esp), %edx
	imull	%ecx, %eax
	sarl	$14, %eax
	addl	40(%esp), %eax
	movl	%eax, (%edx)
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
L65:
	.cfi_restore_state
	negl	%eax
	movw	%si, 3592(%ecx)
	movw	%ax, 4792(%ecx)
	jmp	L61
	.p2align 4,,10
	.p2align 3
L66:
	movzwl	5992(%edx), %ebx
	movl	%ecx, (%esp)
	movl	%edx, 24(%esp)
	movl	%ebx, %eax
	shrw	$15, %ax
	addl	%ebx, %eax
	sarw	%ax
	cwtl
	call	__Z11RandomRangei
	testw	%bx, %bx
	movl	(%esp), %ecx
	movl	24(%esp), %edx
	movl	%eax, %esi
	leal	3(%ebx), %eax
	cmovns	%ebx, %eax
	sarw	$2, %ax
	subl	%eax, %ebx
	addl	%esi, %ebx
	movw	%bx, 4792(%ecx)
	jmp	L63
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__Z10DecodeBitsP9SW_PACKETS0_Ph;	.scl	3;	.type	32;	.endef
__Z10DecodeBitsP9SW_PACKETS0_Ph:
LFB5:
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
	movl	(%edx), %ecx
	leal	1(%ebp), %ebx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	20(%edx), %edx
	movl	%edx, 20(%eax)
	movzbl	0(%ebp), %ecx
	testb	$1, %cl
	je	L69
	movzwl	1(%ebp), %edx
	leal	3(%ebp), %ebx
	movw	%dx, (%eax)
	movzbl	0(%ebp), %ecx
L69:
	testb	$2, %cl
	je	L70
	movzwl	(%ebx), %edx
	addl	$2, %ebx
	movw	%dx, 2(%eax)
	movzbl	0(%ebp), %ecx
L70:
	testb	$4, %cl
	je	L71
	movl	(%ebx), %edx
	addl	$8, %ebx
	movl	%edx, 4(%eax)
	movl	-4(%ebx), %edx
	movl	%edx, 12(%eax)
	movzbl	0(%ebp), %ecx
L71:
	testb	$8, %cl
	je	L72
	movl	(%ebx), %edx
	addl	$8, %ebx
	movl	%edx, 8(%eax)
	movl	-4(%ebx), %edx
	movl	%edx, 16(%eax)
	movzbl	0(%ebp), %ecx
L72:
	xorl	%edx, %edx
	movl	%ebx, %edi
	leal	4(%edx), %ebx
	btl	%ebx, %ecx
	jnc	L73
L90:
	leal	0(,%edx,8), %ecx
	movl	$255, %esi
	movl	%edi, %ebx
	sall	%cl, %esi
	notl	%esi
	andl	20(%eax), %esi
	movl	%esi, 20(%eax)
	movzbl	(%edi), %edi
	sall	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 20(%eax)
	leal	1(%ebx), %edi
L73:
	addl	$1, %edx
	cmpl	$4, %edx
	je	L74
L91:
	movzbl	0(%ebp), %ecx
	leal	4(%edx), %ebx
	btl	%ebx, %ecx
	jc	L90
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L91
L74:
	movl	%edi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	subl	%ebp, %eax
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z15DoHariKariBloods
	.def	__Z15DoHariKariBloods;	.scl	2;	.type	32;	.endef
__Z15DoHariKariBloods:
LFB6:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z12NullAnimators
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
__Z12NullAnimators:
LFB8:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	__Z8WeaponOKP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z8WeaponOKP12PLAYERstruct:
LFB9:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebp, 16(%esp)
	movswl	348(%eax), %edx
	.cfi_offset 5, -8
	movl	_User(,%edx,4), %ebp
	movsbl	273(%ebp), %ecx
	movl	%ecx, %edx
	sall	$5, %edx
	cmpw	$-1, _DamageData+12(%edx)
	je	L95
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movzwl	_DamageData+14(%edx), %edi
	cmpw	%di, 23016(%eax,%ecx,2)
	jge	L111
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%eax, %ecx
	cmpb	$3, %bl
	je	L112
	cmpb	$4, %bl
	jne	L110
	cmpb	$0, 23114(%eax)
	je	L110
	cmpb	$0, 24106(%eax)
	jne	L100
	movb	$1, 24105(%eax)
L100:
	movb	$4, 273(%ebp)
	movl	%ecx, (%esp)
	call	*_DamageData+128
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %edi
	.cfi_restore 7
L95:
	movl	16(%esp), %ebp
	movl	$1, %eax
	addl	$20, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L111:
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	12(%esp), %edi
	.cfi_restore 7
	jmp	L95
	.p2align 4,,10
	.p2align 3
L110:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
L99:
	movl	23012(%ecx), %esi
	xorl	%edx, %edx
	movl	$2, %eax
	andl	$-131073, 22976(%ecx)
	jmp	L103
	.p2align 5
	.p2align 4,,10
	.p2align 3
L101:
	movzbl	__ZZ8WeaponOKP12PLAYERstructE9wpn_order+1(%edx), %eax
	addl	$1, %edx
L103:
	btl	%eax, %esi
	movswl	%ax, %ebx
	jnc	L101
	cmpw	%di, 23016(%ecx,%ebx,2)
	jl	L101
	movb	%al, 273(%ebp)
	movsbl	%al, %edx
	cmpb	$8, %al
	jne	L104
	movb	$8, 23117(%ecx)
	movb	$0, 23115(%ecx)
	movsbl	273(%ebp), %edx
L104:
	sall	$5, %edx
	movl	%ecx, (%esp)
	call	*_DamageData(%edx)
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L112:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	movb	$2, 24092(%eax)
	jmp	L99
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z13pUziEjectDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pUziEjectDownP18PANEL_SPRITEstruct:
LFB10:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movzwl	42(%edx), %eax
	addl	$15, %eax
	cmpw	$260, %ax
	jg	L114
	movw	%ax, 42(%edx)
L113:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L114:
	.cfi_restore_state
	movl	$260, %eax
	xorl	%ecx, %ecx
	movw	%ax, 42(%edx)
	movl	12(%edx), %eax
	movw	%cx, 228(%edx)
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L113
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	*32(%eax)
	movl	8(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	__Z11pUziEjectUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pUziEjectUpP18PANEL_SPRITEstruct:
LFB13:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	testb	$2, 204(%eax)
	je	L121
	movl	$2043, %edx
	movl	$-6553586, 56(%eax)
	movw	%dx, 54(%eax)
L121:
	movzwl	42(%eax), %ecx
	leal	-15(%ecx), %edx
	cmpw	$199, %dx
	jle	L122
	movw	%dx, 42(%eax)
L120:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L122:
	.cfi_restore_state
	movl	$200, %edx
	xorl	%ecx, %ecx
	movw	%dx, 42(%eax)
	movl	12(%eax), %edx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L120
	movl	%eax, (%esp)
	movl	%eax, 8(%esp)
	call	*32(%edx)
	movl	8(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.def	__Z18pShotgunRecoilDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z18pShotgunRecoilDownP18PANEL_SPRITEstruct:
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
	movl	$780, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movl	32(%eax), %edx
	movswl	232(%eax), %ecx
	movswl	190(%eax), %edi
	cmpb	$1, 24093(%edx)
	movl	$890, %edx
	movl	%ecx, %esi
	cmove	%edx, %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	imull	%edi, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%edi, %ecx
	movzwl	190(%eax), %edi
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %edx
	addl	%edx, 40(%eax)
	leal	-72(%edi), %edx
	sarl	$6, %ecx
	addl	%ecx, 36(%eax)
	movswl	%dx, %ecx
	cmpl	%ebx, %ecx
	jl	L133
	movw	%dx, 190(%eax)
L131:
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
L133:
	.cfi_restore_state
	xorl	%edx, %edx
	addw	$1024, %si
	movw	%bx, 190(%eax)
	movw	%dx, 228(%eax)
	movl	12(%eax), %edx
	andw	$2047, %si
	movw	%si, 232(%eax)
	leal	24(%edx), %ecx
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L131
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	*32(%edx)
	movl	20(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
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
LFE17:
	.p2align 4
	.def	__Z16pShotgunRecoilUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pShotgunRecoilUpP18PANEL_SPRITEstruct:
LFB18:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movzwl	190(%eax), %ebx
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %ecx
	sarl	$6, %edx
	addl	%ecx, 36(%eax)
	addl	40(%eax), %edx
	leal	45(%ebx), %ecx
	movl	%edx, 40(%eax)
	movw	%cx, 190(%eax)
	cmpl	$13107199, %edx
	jle	L147
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L147:
	.cfi_restore_state
	movl	$200, %edx
	movl	$202, %ecx
	movl	$900, %ebx
	movw	%dx, 42(%eax)
	movl	$1792, %edx
	movw	%dx, 232(%eax)
	movl	12(%eax), %edx
	movw	%cx, 38(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 190(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L142
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	12(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
L142:
	andl	$-5, 204(%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z15pRailRecoilDownP18PANEL_SPRITEstruct
	.def	__Z15pRailRecoilDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z15pRailRecoilDownP18PANEL_SPRITEstruct:
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
	movl	16(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %esi
	movswl	_sintable(%ecx,%ecx), %edx
	movl	%ecx, %ebx
	addl	$512, %ecx
	andl	$2047, %ecx
	imull	%esi, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %ecx
	movzwl	190(%eax), %esi
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %edx
	addl	%edx, 40(%eax)
	leal	-72(%esi), %edx
	sarl	$6, %ecx
	addl	%ecx, 36(%eax)
	cmpw	$799, %dx
	jle	L149
	movw	%dx, 190(%eax)
L148:
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
L149:
	.cfi_restore_state
	movl	$800, %edx
	xorl	%ecx, %ecx
	addw	$1024, %bx
	movw	%dx, 190(%eax)
	movl	12(%eax), %edx
	andw	$2047, %bx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 232(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L148
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	*32(%edx)
	movl	16(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
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
LFE19:
	.p2align 4
	.globl	__Z13pRailRecoilUpP18PANEL_SPRITEstruct
	.def	__Z13pRailRecoilUpP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pRailRecoilUpP18PANEL_SPRITEstruct:
LFB20:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movzwl	190(%eax), %ebx
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %ecx
	sarl	$6, %edx
	addl	%ecx, 36(%eax)
	addl	40(%eax), %edx
	leal	45(%ebx), %ecx
	movl	%edx, 40(%eax)
	movw	%cx, 190(%eax)
	cmpl	$13107199, %edx
	jle	L162
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L162:
	.cfi_restore_state
	movl	$200, %edx
	movl	$166, %ecx
	movl	$900, %ebx
	movw	%dx, 42(%eax)
	movl	$1792, %edx
	movw	%dx, 232(%eax)
	movl	12(%eax), %edx
	movw	%cx, 38(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 190(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L157
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	12(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
L157:
	andl	$-5, 204(%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.def	__Z16pMicroRecoilDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pMicroRecoilDownP18PANEL_SPRITEstruct:
LFB21:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %esi
	movswl	_sintable(%ecx,%ecx), %edx
	movl	%ecx, %ebx
	addl	$512, %ecx
	andl	$2047, %ecx
	imull	%esi, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %ecx
	movzwl	190(%eax), %esi
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %edx
	addl	%edx, 40(%eax)
	leal	-72(%esi), %edx
	sarl	$6, %ecx
	addl	%ecx, 36(%eax)
	cmpw	$549, %dx
	jle	L164
	movw	%dx, 190(%eax)
L163:
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
L164:
	.cfi_restore_state
	movl	$550, %edx
	xorl	%ecx, %ecx
	addw	$1024, %bx
	movw	%dx, 190(%eax)
	movl	12(%eax), %edx
	andw	$2047, %bx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 232(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L163
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	*32(%edx)
	movl	16(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
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
LFE21:
	.p2align 4
	.def	__Z14pMicroRecoilUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pMicroRecoilUpP18PANEL_SPRITEstruct:
LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movzwl	190(%eax), %ebx
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %ecx
	sarl	$6, %edx
	addl	%ecx, 36(%eax)
	addl	40(%eax), %edx
	leal	45(%ebx), %ecx
	movl	%edx, 40(%eax)
	movw	%cx, 190(%eax)
	cmpl	$13434879, %edx
	jle	L177
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L177:
	.cfi_restore_state
	movl	$205, %edx
	movl	$160, %ecx
	movl	$900, %ebx
	movw	%dx, 42(%eax)
	movl	$1792, %edx
	movw	%dx, 232(%eax)
	movl	12(%eax), %edx
	movw	%cx, 38(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 190(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L172
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	12(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
L172:
	andl	$-5, 204(%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.def	__Z14pMicroOverlaysP18PANEL_SPRITEstruct.isra.0;	.scl	3;	.type	32;	.endef
__Z14pMicroOverlaysP18PANEL_SPRITEstruct.isra.0:
LFB24:
	.cfi_startproc
	cmpw	$-1, 56(%eax)
	jne	L179
	movl	$-3801059, 56(%eax)
	movl	$-2686911, 88(%eax)
	movl	$-3342258, 72(%eax)
L179:
	movl	32(%eax), %edx
	movzbl	23112(%edx), %ecx
	cmpb	$0, 23114(%edx)
	jne	L180
	cmpb	$2, %cl
	je	L181
	cmpb	$1, %cl
	je	L182
L183:
	testb	%cl, %cl
	jne	L178
	movl	$2075, %edx
	movl	$2077, %ecx
	orl	$67108864, 80(%eax)
	movw	%dx, 54(%eax)
	movl	$-1, %edx
	movw	%cx, 86(%eax)
	movw	%dx, 70(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L181:
	movb	$0, 23112(%edx)
	movl	32(%eax), %edx
	movzbl	23112(%edx), %ecx
L180:
	cmpb	$1, %cl
	je	L182
	cmpb	$2, %cl
	jne	L183
	movl	$-1, %edx
	movl	$-1, %ecx
	orl	$67108864, 80(%eax)
	movw	%dx, 54(%eax)
	movl	$2076, %edx
	orl	$67108864, 64(%eax)
	movw	%cx, 70(%eax)
	movw	%dx, 86(%eax)
L178:
	ret
	.p2align 4,,10
	.p2align 3
L182:
	movl	80(%eax), %ecx
	orl	$67108864, %ecx
	cmpb	$0, 23113(%edx)
	movw	$2075, 54(%eax)
	movw	$2077, 86(%eax)
	movl	%ecx, 80(%eax)
	je	L186
	movzbl	23113(%edx), %ecx
	movl	$2089, %edx
	subl	%ecx, %edx
	movw	%dx, 70(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L186:
	movl	$-1, %ecx
	movw	%cx, 70(%eax)
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.def	__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0;	.scl	3;	.type	32;	.endef
__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0:
LFB26:
	.cfi_startproc
	movl	216(%eax), %edx
	addl	220(%eax), %edx
	movl	%edx, 216(%eax)
	movl	40(%eax), %ecx
	testl	%edx, %edx
	jg	L200
	leal	(%edx,%edx,2), %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	movw	%dx, 40(%eax)
	sarl	$16, %ecx
	movw	%cx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L200:
	addl	$8000, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	204(%eax), %ebx
	movl	%edx, 216(%eax)
	leal	(%edx,%edx,2), %edx
	addl	%ecx, %edx
	andl	$-2097153, %ebx
	movl	$8000, 220(%eax)
	movl	%edx, %ecx
	orl	$4194304, %ebx
	movw	%dx, 40(%eax)
	sarl	$16, %ecx
	movl	%ebx, 204(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movw	%cx, 42(%eax)
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__Z18pGrenadeRecoilDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z18pGrenadeRecoilDownP18PANEL_SPRITEstruct:
LFB31:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %esi
	movswl	_sintable(%ecx,%ecx), %edx
	movl	%ecx, %ebx
	addl	$512, %ecx
	andl	$2047, %ecx
	imull	%esi, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %ecx
	movzwl	190(%eax), %esi
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %edx
	addl	%edx, 40(%eax)
	leal	-72(%esi), %edx
	sarl	$6, %ecx
	addl	%ecx, 36(%eax)
	cmpw	$399, %dx
	jle	L202
	movw	%dx, 190(%eax)
L201:
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
L202:
	.cfi_restore_state
	movl	$400, %edx
	xorl	%ecx, %ecx
	addw	$1024, %bx
	movw	%dx, 190(%eax)
	movl	12(%eax), %edx
	andw	$2047, %bx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 232(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L201
	movl	%eax, (%esp)
	movl	%eax, 16(%esp)
	call	*32(%edx)
	movl	16(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
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
LFE31:
	.p2align 4
	.def	__Z16pGrenadeRecoilUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pGrenadeRecoilUpP18PANEL_SPRITEstruct:
LFB32:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movswl	232(%eax), %ecx
	movswl	190(%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movzwl	190(%eax), %ebx
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %ecx
	sarl	$6, %edx
	addl	%ecx, 36(%eax)
	addl	40(%eax), %edx
	leal	45(%ebx), %ecx
	movl	%edx, 40(%eax)
	movw	%cx, 190(%eax)
	cmpl	$13107199, %edx
	jle	L215
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L215:
	.cfi_restore_state
	movl	$200, %edx
	movl	$180, %ecx
	movl	$900, %ebx
	movw	%dx, 42(%eax)
	movl	$1792, %edx
	movw	%dx, 232(%eax)
	movl	12(%eax), %edx
	movw	%cx, 38(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	leal	24(%edx), %ecx
	movw	%bx, 190(%eax)
	movl	%ecx, 12(%eax)
	testb	$-128, 42(%edx)
	je	L210
	movl	%eax, (%esp)
	call	*32(%edx)
	movl	12(%esp), %eax
	movl	12(%eax), %edx
	movl	12(%edx), %edx
	movl	%edx, 12(%eax)
L210:
	andl	$-5, 204(%eax)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__Z10pMineLowerP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pMineLowerP18PANEL_SPRITEstruct:
LFB33:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$200, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$12, %eax
	movw	%ax, 42(%edx)
	cwtl
	cmpl	$30719, %ebx
	ja	L217
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L233
L218:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L231:
	addl	$200, %ecx
L217:
	cmpl	%ecx, %eax
	jg	L234
L216:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L233:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L218
	jmp	L231
	.p2align 4,,10
	.p2align 3
L234:
	movl	32(%edx), %eax
	movl	%edx, 12(%esp)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L216
	movl	12(%esp), %edx
	movl	$200, %eax
	movswl	178(%edx), %ecx
	cmpl	$30719, %ecx
	ja	L220
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L221
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %eax
	testw	%ax, %ax
	jg	L232
L221:
	movzwl	_tilesiz+2(,%ecx,4), %eax
L232:
	addw	$200, %ax
L220:
	movw	%ax, 42(%edx)
	xorl	%eax, %eax
	movw	%ax, 228(%edx)
	movl	12(%edx), %eax
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L216
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	*32(%eax)
	movl	12(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.def	__Z10pMineRaiseP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pMineRaiseP18PANEL_SPRITEstruct:
LFB36:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movzwl	42(%edx), %eax
	subl	$12, %eax
	cmpw	$199, %ax
	jle	L236
	movw	%ax, 42(%edx)
L235:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L236:
	.cfi_restore_state
	movl	$200, %eax
	xorl	%ecx, %ecx
	movw	%ax, 42(%edx)
	movl	12(%edx), %eax
	movw	%cx, 228(%edx)
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L235
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	*32(%eax)
	movl	8(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE36:
	.p2align 4
	.def	__Z8pChopsUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z8pChopsUpP18PANEL_SPRITEstruct:
LFB37:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movzwl	42(%edx), %eax
	subl	$9, %eax
	cmpw	$199, %ax
	jle	L243
	movw	%ax, 42(%edx)
L242:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L243:
	.cfi_restore_state
	movl	$200, %eax
	xorl	%ecx, %ecx
	movw	%ax, 42(%edx)
	movl	12(%edx), %eax
	movw	%cx, 228(%edx)
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L242
	movl	%edx, (%esp)
	movl	%edx, 8(%esp)
	call	*32(%eax)
	movl	8(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__Z11pChopsShakeP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pChopsShakeP18PANEL_SPRITEstruct:
LFB38:
	.cfi_startproc
	movl	_randomseed, %eax
	movl	4(%esp), %edx
	addl	$2, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	movzbl	%ah, %eax
	andl	$3, %eax
	subl	$2, %eax
	addw	%ax, 38(%edx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$200, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$3, %eax
	subl	$2, %eax
	addw	%ax, 42(%edx)
	movzwl	42(%edx), %eax
	cmpw	%cx, %ax
	cmovl	%ecx, %eax
	movw	%ax, 42(%edx)
	ret
	.cfi_endproc
LFE38:
	.p2align 4
	.def	__Z17InsertPanelSpriteP12PLAYERstructP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z17InsertPanelSpriteP12PLAYERstructP18PANEL_SPRITEstruct:
LFB39:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	22988(%eax), %edx
	leal	22988(%eax), %ebx
	cmpl	%ebx, %edx
	je	L260
	movl	208(%esi), %ecx
	cmpl	208(%edx), %ecx
	jle	L253
	movl	(%edx), %eax
	jmp	L254
	.p2align 4,,10
	.p2align 3
L255:
	cmpl	208(%edx), %ecx
	jl	L256
	cmpl	208(%eax), %ecx
	jle	L258
L256:
	movl	%eax, %edx
	movl	(%eax), %eax
L254:
	cmpl	%eax, %ebx
	jne	L255
L258:
	movl	%edx, 4(%esi)
	movl	(%edx), %eax
	movl	%eax, (%esi)
	movl	%esi, (%edx)
	movl	(%esi), %eax
	movl	%esi, 4(%eax)
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
L253:
	.cfi_restore_state
	movl	%ebx, 4(%esi)
L259:
	movl	22988(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, 22988(%eax)
	movl	(%esi), %eax
	movl	%esi, 4(%eax)
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
L260:
	.cfi_restore_state
	movl	%edx, 4(%esi)
	jmp	L259
	.cfi_endproc
LFE39:
	.p2align 4
	.def	__Z10pWeaponBobP18PANEL_SPRITEstructs;	.scl	3;	.type	32;	.endef
__Z10pWeaponBobP18PANEL_SPRITEstructs:
LFB40:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	32(%eax), %eax
	movl	196(%eax), %ecx
	movl	192(%eax), %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 4(%esp)
	testl	%eax, %eax
	je	L262
	testl	%edx, %edx
	je	L269
	movl	%eax, %ecx
	cmpl	%eax, %edx
	jge	L263
	movl	%esp, %eax
	leal	4(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	(%esp), %edx
L263:
	movl	%ecx, %eax
	movl	%edx, %ebx
	sarl	%eax
	sarl	$5, %ebx
	addl	%ecx, %eax
	movl	%edx, %ecx
	sarl	$7, %edx
	subl	%ebx, %ecx
	subl	%edx, %ecx
	movl	%eax, %edx
	sarl	$6, %eax
	sarl	$2, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
L262:
	movl	204(%esi), %eax
	testw	%di, %di
	je	L264
	orl	$4, %eax
	movzwl	236(%esi), %ecx
	movl	%eax, 204(%esi)
L265:
	movl	_randomseed, %eax
	sarl	$15, %edx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ebx
	leal	1(%eax,%ebx,4), %eax
	movzwl	%ax, %ebx
	andl	$7, %eax
	leal	24(%eax,%eax,2), %eax
	movl	%ebx, _randomseed
	movswl	238(%esi), %ebx
	addl	%ecx, %eax
	movswl	242(%esi), %ecx
	andl	$2047, %eax
	movw	%ax, 236(%esi)
	movl	%eax, %edi
	movswl	_sintable(%eax,%eax), %eax
	imull	%eax, %ebx
	movl	%edx, %eax
	sarw	$2, %ax
	addl	%eax, %edx
	movl	$128, %eax
	sarl	$14, %ebx
	cmpw	%ax, %dx
	cmovg	%eax, %edx
	movswl	%dx, %eax
	leal	512(%edi), %edx
	andl	$1023, %edx
	sarl	%cl, %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%edx, %eax
	sarl	$14, %eax
L268:
	movzbl	_UziRecoilYadj, %edx
	addw	200(%esi), %dx
	addw	196(%esi), %bx
	addl	%edx, %eax
	movw	%bx, 38(%esi)
	movw	%ax, 42(%esi)
	addl	$8, %esp
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
L264:
	.cfi_restore_state
	movzwl	236(%esi), %ecx
	movl	%ecx, %ebx
	andw	$1023, %bx
	cmpw	$69, %bx
	jle	L266
	testb	$4, %al
	jne	L265
L267:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	jmp	L268
	.p2align 4,,10
	.p2align 3
L269:
	movl	%eax, %edx
	jmp	L262
	.p2align 4,,10
	.p2align 3
L266:
	andl	$-5, %eax
	addl	$1, _krandcount
	movl	%eax, 204(%esi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	shrl	$9, %eax
	andl	$1, %eax
	movl	%edx, _randomseed
	xorl	$1, %eax
	sall	$10, %eax
	movw	%ax, 236(%esi)
	jmp	L267
	.cfi_endproc
LFE40:
	.p2align 4
	.def	__Z14pShotgunActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pShotgunActionP18PANEL_SPRITEstruct:
LFB43:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 204(%eax)
	jne	L275
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L275:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE43:
	.p2align 4
	.def	__Z11pRailActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pRailActionP18PANEL_SPRITEstruct:
LFB47:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 204(%eax)
	jne	L277
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L277:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE47:
	.p2align 4
	.def	__Z14pHotheadActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pHotheadActionP18PANEL_SPRITEstruct:
LFB48:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$2, 418(%edx)
	je	L278
	testb	$2, 22978(%edx)
	jne	L287
L278:
	ret
	.p2align 4,,10
	.p2align 3
L287:
	testb	$4, 204(%eax)
	jne	L280
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L280:
	movl	$1, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z12pMicroActionP18PANEL_SPRITEstruct
	.def	__Z12pMicroActionP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z12pMicroActionP18PANEL_SPRITEstruct:
LFB50:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 204(%eax)
	jne	L289
	movl	$655360, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L289:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE50:
	.p2align 4
	.def	__Z12pHeartActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pHeartActionP18PANEL_SPRITEstruct:
LFB53:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	200(%eax), %ecx
	leal	-3(%ecx), %edx
	movl	$200, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	movl	%edx, 200(%eax)
	movw	%dx, 42(%eax)
	testb	$4, 204(%eax)
	jne	L291
	movswl	%dx, %edx
	movswl	38(%eax), %ecx
	movl	$786432, 236(%eax)
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movl	%ecx, 196(%eax)
	movw	%dx, 242(%eax)
L291:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE53:
	.p2align 4
	.def	__Z14pGrenadeActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pGrenadeActionP18PANEL_SPRITEstruct:
LFB54:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 204(%eax)
	jne	L293
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L293:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE54:
	.p2align 4
	.def	__Z11pMineActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pMineActionP18PANEL_SPRITEstruct:
LFB55:
	.cfi_startproc
	movl	4(%esp), %eax
	testb	$4, 204(%eax)
	jne	L295
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L295:
	movl	32(%eax), %ecx
	movl	196(%ecx), %edx
	orw	192(%ecx), %dx
	movswl	%dx, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z10pFistBlockP18PANEL_SPRITEstruct
	.def	__Z10pFistBlockP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z10pFistBlockP18PANEL_SPRITEstruct:
LFB56:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$200, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	movl	200(%ebx), %eax
	addl	$3, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 200(%ebx)
	movw	%ax, 42(%ebx)
	testb	$4, 204(%ebx)
	jne	L297
	movl	$786432, 236(%ebx)
	movswl	38(%ebx), %edx
	cwtl
	movl	%eax, 200(%ebx)
	movl	%edx, 196(%ebx)
	movl	$3, %edx
	movw	%dx, 242(%ebx)
L297:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$4, 418(%eax)
	je	L303
L296:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L303:
	.cfi_restore_state
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	movl	12(%ebx), %eax
	leal	24(%eax), %edx
	movl	%edx, 12(%ebx)
	testb	$-128, 42(%eax)
	je	L296
	movl	%ebx, (%esp)
	call	*32(%eax)
	movl	12(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z14DoNinjaCeilings
	.def	__Z14DoNinjaCeilings;	.scl	2;	.type	32;	.endef
__Z14DoNinjaCeilings:
LFB57:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movswl	8(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z12PruneGirlUzis
	.def	__Z12PruneGirlUzis;	.scl	2;	.type	32;	.endef
__Z12PruneGirlUzis:
LFB58:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	_User(,%ebx,4), %ecx
	testb	$-128, 68(%ecx)
	je	L320
L307:
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L321
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
L320:
	.cfi_restore_state
	movl	%ebx, (%esp)
	movl	%ecx, 4(%esp)
	call	__Z16KeepActorOnFloors
	movl	4(%esp), %ecx
	jmp	L307
	.p2align 4,,10
	.p2align 3
L321:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$359, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L309
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$22, %edx
	addl	$120, %edx
L309:
	movw	%dx, 216(%ecx)
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L310
	movl	$0, 76(%eax)
	movl	$_s_PruneGirlStand, 24(%eax)
	movl	$_s_PruneGirlStand, 16(%eax)
	movswl	_s_PruneGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ebx
	shrb	$6, %bl
	je	L310
	andl	$63, %eax
	movb	%al, 3(%edx)
L310:
	xorl	%eax, %eax
	movw	%ax, 280(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.def	__Z18pShotgunReloadDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z18pShotgunReloadDownP18PANEL_SPRITEstruct:
LFB61:
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
	movzwl	42(%ebx), %eax
	movswl	178(%ebx), %esi
	addl	$9, %eax
	movw	%ax, 42(%ebx)
	cmpl	$30719, %esi
	ja	L323
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L337
L324:
	movswl	_tilesiz+2(,%esi,4), %ecx
L325:
	movl	%ecx, %edx
	cwtl
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	addl	$199, %edx
	cmpl	%eax, %edx
	jl	L338
L322:
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
L337:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%esi,4), %ecx
	testw	%cx, %cx
	jle	L324
	jmp	L325
	.p2align 4,,10
	.p2align 3
L338:
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$241, %eax
	call	__Z9PlaySoundiPiS_S_i
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L329
L326:
	movswl	_tilesiz+2(,%esi,4), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
L336:
	sarl	%eax
	addw	$200, %ax
	jmp	L327
	.p2align 4,,10
	.p2align 3
L323:
	cmpw	$199, %ax
	jle	L322
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$241, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$200, %eax
L327:
	movw	%ax, 42(%ebx)
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	movl	12(%ebx), %eax
	leal	24(%eax), %edx
	movl	%edx, 12(%ebx)
	testb	$-128, 42(%eax)
	je	L322
	movl	%ebx, (%esp)
	call	*32(%eax)
	movl	12(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebx)
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
L329:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%esi,4), %eax
	testw	%ax, %ax
	jle	L326
	jmp	L336
	.cfi_endproc
LFE61:
	.p2align 4
	.def	__Z16pShotgunReloadUpP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pShotgunReloadUpP18PANEL_SPRITEstruct:
LFB62:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$202, %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movzwl	42(%ebx), %eax
	movw	%cx, 38(%ebx)
	subl	$9, %eax
	movw	%ax, 42(%ebx)
	cmpw	$199, %ax
	jle	L346
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L346:
	.cfi_restore_state
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$240, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$200, %eax
	xorl	%edx, %edx
	movw	%ax, 42(%ebx)
	movl	12(%ebx), %eax
	movw	%dx, 228(%ebx)
	leal	24(%eax), %edx
	movl	%edx, 12(%ebx)
	testb	$-128, 42(%eax)
	je	L341
	movl	%ebx, (%esp)
	call	*32(%eax)
	movl	12(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebx)
L341:
	andl	$-5, 204(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE62:
	.p2align 4
	.def	__Z13pMicroStandByP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pMicroStandByP18PANEL_SPRITEstruct:
LFB64:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	32(%eax), %ebx
	call	__Z14pMicroOverlaysP18PANEL_SPRITEstruct.isra.0
	movl	32(%eax), %edx
	movl	$9, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$273, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, 24100(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.def	__Z11pMicroCountP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pMicroCountP18PANEL_SPRITEstruct:
LFB65:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	32(%eax), %ebx
	movl	$9, 4(%esp)
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$274, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, 24100(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE65:
	.p2align 4
	.def	__Z11pMicroReadyP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pMicroReadyP18PANEL_SPRITEstruct:
LFB66:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	32(%eax), %ebx
	movl	$9, 4(%esp)
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$275, %eax
	call	__Z9PlaySoundiPiS_S_i
	movb	$1, 24106(%ebx)
	movl	%eax, 24100(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE66:
	.p2align 4
	.def	__Z12pMineUpSoundP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pMineUpSoundP18PANEL_SPRITEstruct:
LFB67:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	32(%eax), %edx
	movl	$1, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$244, %eax
	call	__Z9PlaySoundiPiS_S_i
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE67:
	.p2align 4
	.globl	__Z11DoPruneGirls
	.def	__Z11DoPruneGirls;	.scl	2;	.type	32;	.endef
__Z11DoPruneGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 20(%esp)
	movl	140(%ebp), %ebx
	movl	%eax, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%ebp), %eax
	movzwl	24(%eax), %edi
	movswl	14(%eax), %esi
	movl	8(%eax), %edx
	movzbl	21(%eax), %ecx
	movw	%di, 38(%esp)
	movswl	_tilesiz+2(,%esi,4), %edi
	testb	$-128, 12(%eax)
	je	L356
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	cmpb	$64, %cl
	je	L408
	imull	%edi, %ecx
	leal	(%ecx,%ecx), %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
L358:
	movl	24(%esp), %ecx
	subl	%esi, %ecx
	addl	%ecx, %edx
	jmp	L361
	.p2align 4,,10
	.p2align 3
L356:
	cmpb	$64, %cl
	je	L409
	imull	%edi, %ecx
	sall	$2, %ecx
L360:
	movl	%edx, %edi
	subl	%ecx, %edi
L361:
	addl	%edi, %edx
	movl	4(%eax), %edi
	movl	8(%ebx), %ecx
	sarl	%edx
	movl	%edx, 24(%esp)
	movswl	14(%ebx), %edx
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movzwl	24(%ebx), %eax
	movswl	_tilesiz+2(,%edx,4), %esi
	movw	%ax, 32(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L362
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L410
	imull	%esi, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
L364:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L367:
	addl	%esi, %ecx
	movswl	38(%esp), %esi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%edi, 4(%esp)
	sarl	%ecx
	movl	%esi, 16(%esp)
	movl	24(%esp), %esi
	movl	%esi, 12(%esp)
	movl	28(%esp), %esi
	movl	%esi, 8(%esp)
	movswl	32(%esp), %esi
	movl	%esi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edx
	cmpw	$1, 280(%ebp)
	je	L411
	movl	__ZZ11DoPruneGirlsE9coyhandle, %eax
	testl	%eax, %eax
	jg	L412
L376:
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	sall	$14, %eax
	cmpl	$532022313, %eax
	ja	L413
	cmpl	$529338043, %eax
	ja	L414
	cmpl	$526653773, %eax
	ja	L415
	cmpl	$523969503, %eax
	jbe	L369
	leal	8(%ebx), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %edx
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
	movl	$568, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9coyhandle
	.p2align 4
	.p2align 3
L369:
	testb	$-32, 68(%ebp)
	je	L416
L380:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19DoActorSectorDamages
	movl	_sprite, %esi
	leal	36(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 34(%ebx)
	leal	32(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 32(%ebx)
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
L362:
	.cfi_restore_state
	cmpb	$64, %al
	je	L417
	imull	%esi, %eax
	sall	$2, %eax
L366:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L367
	.p2align 4,,10
	.p2align 3
L411:
	movzwl	216(%ebp), %eax
	subl	$6, %eax
	movw	%ax, 216(%ebp)
	testw	%ax, %ax
	jg	L369
	testb	%dl, %dl
	je	L369
	movl	__ZZ11DoPruneGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L418
L370:
	movl	$32766, %edx
	movl	$-1171354717, %ecx
	leal	4(%ebx), %edi
	imull	$1103515245, _wrandomseed, %eax
	movl	%edi, 28(%esp)
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	sall	$14, %eax
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %esi
	movl	%edi, %edx
	leal	8(%ebx), %edi
	subl	_sprite, %edx
	movl	%edx, %eax
	shrl	$5, %esi
	mull	%ecx
	shrl	$5, %edx
	movl	%edx, 32(%esp)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpl	$403177353, 24(%esp)
	ja	L419
	cmpl	$268963853, 24(%esp)
	ja	L420
	cmpl	$134750353, 24(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	jbe	L374
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	movl	$569, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9madhandle
L371:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L375
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L375:
	xorl	%eax, %eax
	movw	%dx, 216(%ebp)
	movw	%ax, 280(%ebp)
	jmp	L369
	.p2align 4,,10
	.p2align 3
L416:
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L380
	.p2align 4,,10
	.p2align 3
L412:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %edi
	movl	-4(%edx,%eax,4), %eax
	testl	%edi, %edi
	je	L376
	testl	%eax, %eax
	je	L376
	movl	112(%eax), %esi
	testl	%esi, %esi
	je	L369
	jmp	L376
	.p2align 4,,10
	.p2align 3
L408:
	sall	$7, %edi
	leal	(%edi,%esi), %ecx
	movl	%edi, 24(%esp)
	movl	%edx, %edi
	subl	%ecx, %edi
	jmp	L358
	.p2align 4,,10
	.p2align 3
L409:
	sall	$8, %edi
	movl	%edi, %ecx
	jmp	L360
	.p2align 4,,10
	.p2align 3
L415:
	leal	8(%ebx), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %edx
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
	movl	$580, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9coyhandle
	jmp	L369
	.p2align 4,,10
	.p2align 3
L413:
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
	movl	$578, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9coyhandle
	jmp	L369
	.p2align 4,,10
	.p2align 3
L410:
	movl	%esi, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %esi
	jmp	L364
	.p2align 4,,10
	.p2align 3
L417:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L366
	.p2align 4,,10
	.p2align 3
L414:
	leal	8(%ebx), %edi
	movl	$-1171354717, %ecx
	movl	%edi, %edx
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
	movl	$579, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9coyhandle
	jmp	L369
	.p2align 4,,10
	.p2align 3
L418:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L370
	testl	%eax, %eax
	je	L370
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L371
	jmp	L370
L419:
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	movl	%ebx, %edx
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	$567, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9madhandle
	jmp	L371
	.p2align 4,,10
	.p2align 3
L374:
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %ecx
	movl	%ebx, %edx
	movl	$570, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9madhandle
	jmp	L371
	.p2align 4,,10
	.p2align 3
L420:
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %eax
	movl	%ebx, %edx
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%eax,4)
	movl	$568, %eax
	addl	$1, _spritechanged(,%esi,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ11DoPruneGirlsE9madhandle
	jmp	L371
	.cfi_endproc
LFE68:
	.p2align 4
	.globl	__Z13NullPruneGirls
	.def	__Z13NullPruneGirls;	.scl	2;	.type	32;	.endef
__Z13NullPruneGirls:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %ebp
	movl	_User(,%ebp,4), %esi
	movl	140(%esi), %ebx
	movl	%ebp, (%esp)
	call	__Z22DoActorPickClosePlayers
	movl	200(%esi), %eax
	movzwl	24(%eax), %ecx
	movl	8(%eax), %edi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movw	%cx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%edx, 32(%esp)
	movswl	14(%ebx), %edx
	movl	%eax, 20(%esp)
	movzwl	24(%ebx), %eax
	movl	%edi, 28(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movw	%ax, 38(%esp)
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L422
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L458
	imull	%edi, %eax
	movl	%ecx, %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
L424:
	movl	40(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
	jmp	L427
	.p2align 4,,10
	.p2align 3
L422:
	cmpb	$64, %al
	je	L459
	imull	%edi, %eax
	sall	$2, %eax
L426:
	movl	%ecx, %edi
	subl	%eax, %edi
L427:
	addl	%edi, %ecx
	movswl	24(%esp), %edi
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	sarl	%ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	movl	%edi, 12(%esp)
	movl	32(%esp), %edi
	movl	%edi, 8(%esp)
	movl	20(%esp), %edi
	movl	%edi, 4(%esp)
	movswl	38(%esp), %edi
	movl	%edi, (%esp)
	call	__Z9FAFcanseeiiisiiis
	movl	%eax, %edi
	testb	$-128, 68(%esi)
	je	L460
L428:
	cmpw	$1, 280(%esi)
	je	L461
L429:
	addl	$44, %esp
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
L461:
	.cfi_restore_state
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jg	L429
	movl	%edi, %eax
	testb	%al, %al
	je	L429
	movl	__ZZ13NullPruneGirlsE9madhandle, %eax
	testl	%eax, %eax
	jg	L462
L430:
	movl	_randomseed, %eax
	movl	$-1171354717, %ecx
	leal	8(%ebx), %edi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movzwl	%ax, %ebp
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%ebp, _randomseed
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	movl	%edx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	%edx, 28(%esp)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	24(%esp), %ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, _spritechanged(,%edx,4)
	movl	28(%esp), %eax
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%eax,4)
	movl	20(%esp), %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	$8, 4(%esp)
	movl	%edi, (%esp)
	cmpl	$65535, %ebp
	je	L432
	sall	$14, %ebp
	cmpl	$806367474, %ebp
	ja	L432
	cmpl	$537936224, %ebp
	ja	L463
	cmpl	$269504974, %ebp
	jbe	L435
	movl	$569, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ13NullPruneGirlsE9madhandle
L431:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$360, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L436
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	addl	$1, %edx
	imull	$120, %edx, %edx
L436:
	xorl	%eax, %eax
	movw	%dx, 216(%esi)
	movw	%ax, 280(%esi)
	jmp	L429
	.p2align 4,,10
	.p2align 3
L460:
	movl	%ebp, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L428
	.p2align 4,,10
	.p2align 3
L459:
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L426
	.p2align 4,,10
	.p2align 3
L458:
	movl	%edi, %eax
	movl	%ecx, %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L424
	.p2align 4,,10
	.p2align 3
L462:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %eax
	testl	%ecx, %ecx
	je	L430
	testl	%eax, %eax
	je	L430
	movl	112(%eax), %edx
	testl	%edx, %edx
	je	L431
	jmp	L430
	.p2align 4,,10
	.p2align 3
L432:
	movl	$567, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ13NullPruneGirlsE9madhandle
	jmp	L431
	.p2align 4,,10
	.p2align 3
L435:
	movl	$570, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ13NullPruneGirlsE9madhandle
	jmp	L431
	.p2align 4,,10
	.p2align 3
L463:
	movl	$568, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	%eax, __ZZ13NullPruneGirlsE9madhandle
	jmp	L431
	.cfi_endproc
LFE71:
	.p2align 4
	.globl	__Z13PruneGirlPains
	.def	__Z13PruneGirlPains;	.scl	2;	.type	32;	.endef
__Z13PruneGirlPains:
LFB72:
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
	call	__Z13NullPruneGirls
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L473
L465:
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
L473:
	.cfi_restore_state
	movl	_User(,%ebx,4), %eax
	testl	%eax, %eax
	je	L465
	movl	$0, 76(%eax)
	movl	$_s_PruneGirlStand, 24(%eax)
	movl	$_s_PruneGirlStand, 16(%eax)
	movswl	_s_PruneGirlStand, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L465
	andl	$63, %eax
	movb	%al, 3(%edx)
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
LFE72:
	.p2align 4
	.globl	__Z12MorphTornadoP19SECTOR_OBJECTstruct
	.def	__Z12MorphTornadoP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z12MorphTornadoP19SECTOR_OBJECTstruct:
LFB73:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	movl	44(%esp), %ebx
	movswl	6016(%ebx), %eax
	movzwl	6004(%ebx), %edx
	sall	$8, %eax
	addl	%eax, 560(%ebx)
	testw	%dx, %dx
	js	L474
	movl	%esi, 28(%esp)
	movl	%ebp, 36(%esp)
	movl	%edi, 32(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	180(%ebx), %edi
	movswl	6018(%ebx), %eax
	movl	%edx, 16(%esp)
	movl	%edi, %esi
	movl	%edi, 8(%esp)
	movswl	6006(%ebx), %edi
	subl	%eax, %esi
	movswl	6020(%ebx), %eax
	movl	%esi, %ecx
	movl	%esi, 20(%esp)
	movl	184(%ebx), %esi
	movl	%esi, %ebp
	subl	%eax, %ebp
	movswl	6008(%ebx), %eax
	movl	%ebp, 12(%esp)
	leal	512(%edi), %ebp
	andl	$2047, %ebp
	movswl	_sintable(%ebp,%ebp), %ebp
	imull	%eax, %ebp
	sarl	$14, %ebp
	addl	%ecx, %ebp
	movswl	_sintable(%edi,%edi), %ecx
	movl	%esi, %edi
	imull	%ecx, %eax
	movl	8(%esp), %ecx
	subl	%ebp, %ecx
	sarl	$14, %eax
	imull	%ecx, %ecx
	addl	12(%esp), %eax
	subl	%eax, %edi
	movl	%eax, 4(%esp)
	movl	%edi, %eax
	imull	%edi, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	movswl	3582(%ebx), %ecx
	movl	16(%esp), %edx
	movl	%eax, %edi
	movswl	6010(%ebx), %eax
	addl	%ecx, %eax
	cmpl	%eax, %edi
	jg	L497
L476:
	subw	4(%esp), %si
	movzwl	8(%esp), %edi
	movw	%si, 6020(%ebx)
	movl	_krandcount, %esi
	subl	%ebp, %edi
	leal	1(%esi), %eax
	movw	%di, 6018(%ebx)
	movswl	6012(%ebx), %edi
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, %ecx
	movl	%eax, _randomseed
	sarl	$4, %ecx
	andl	$1023, %ecx
	cmpl	%edi, %ecx
	jl	L498
L477:
	movl	4(%esp), %ecx
	movswl	%dx, %eax
	movl	%ebp, %edx
	call	_dragpoint.constprop.0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L496
	movswl	3568(%ebx), %ecx
	movl	_sector, %edx
	movl	%ebx, %esi
	leal	(%ecx,%ecx,4), %ecx
	movl	4(%edx,%ecx,8), %edi
	movl	%edi, 8(%esp)
	movl	8(%edx,%ecx,8), %edi
	jmp	L481
	.p2align 4,,10
	.p2align 3
L499:
	negw	6016(%ebx)
	movl	%edi, %ecx
	movl	%edi, 560(%ebx)
L480:
	movl	(%esi), %eax
	movl	%ecx, (%esp)
	movl	4(%esp), %ecx
	subl	%edx, %eax
	movl	%ebp, %edx
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	cwtl
	call	_alignceilslope
L478:
	movl	4(%esi), %eax
	addl	$4, %esi
	testl	%eax, %eax
	je	L496
	movl	_sector, %edx
L481:
	subl	%edx, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %eax
	testl	%eax, %eax
	je	L478
	testb	$32, 4(%eax)
	je	L478
	movl	560(%ebx), %ecx
	cmpl	%ecx, %edi
	jl	L499
	movl	8(%esp), %eax
	cmpl	%ecx, %eax
	jle	L480
	negw	6016(%ebx)
	movl	%eax, %ecx
	movl	%eax, 560(%ebx)
	jmp	L480
	.p2align 4,,10
	.p2align 3
L496:
	movl	28(%esp), %esi
	.cfi_restore 6
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
L474:
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L498:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%eax,%eax,4), %ecx
	addl	$2, %esi
	leal	1(%eax,%ecx,4), %eax
	movl	%esi, _krandcount
	movzwl	%ax, %ecx
	andw	$2047, %ax
	movl	%ecx, _randomseed
	movw	%ax, 6006(%ebx)
	jmp	L477
	.p2align 4,,10
	.p2align 3
L497:
	movl	4(%esp), %edx
	movl	%ebp, %ecx
	subl	8(%esp), %ecx
	subl	%esi, %edx
	call	@getangle@8
	movswl	6008(%ebx), %edx
	movl	12(%esp), %edi
	addw	$1024, %ax
	movl	20(%esp), %ebp
	movl	184(%ebx), %esi
	andl	$2047, %eax
	movw	%ax, 6006(%ebx)
	leal	512(%eax), %ecx
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %ecx
	imull	%edx, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%edx, %ecx
	movzwl	6004(%ebx), %edx
	addl	%eax, %eax
	sarl	$14, %eax
	addl	%eax, %edi
	addl	%ecx, %ecx
	movl	180(%ebx), %eax
	sarl	$14, %ecx
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	addl	%ecx, %ebp
	jmp	L476
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii
	.def	__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
__Z24SOBJ_AlignCeilingToPointP19SECTOR_OBJECTstructiii:
LFB75:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L503
	jmp	L500
	.p2align 6
	.p2align 4,,10
	.p2align 3
L502:
	movl	4(%ebx), %eax
	addl	$4, %ebx
	testl	%eax, %eax
	je	L500
L503:
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %edx
	testl	%edx, %edx
	je	L502
	testb	$32, 4(%edx)
	je	L502
	movl	24(%esp), %ecx
	movl	16(%esp), %edx
	cwtl
	addl	$4, %ebx
	movl	%ecx, (%esp)
	movl	20(%esp), %ecx
	call	_alignceilslope
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L503
L500:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__Z10MorphFloorP19SECTOR_OBJECTstruct
	.def	__Z10MorphFloorP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z10MorphFloorP19SECTOR_OBJECTstruct:
LFB76:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	48(%esp), %ebx
	movswl	6016(%ebx), %eax
	sall	$8, %eax
	subl	%eax, 560(%ebx)
	movzwl	6004(%ebx), %eax
	movw	%ax, 20(%esp)
	testw	%ax, %ax
	js	L515
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	180(%ebx), %ecx
	movswl	6018(%ebx), %eax
	movl	184(%ebx), %ebp
	movl	%ecx, %edi
	movswl	6008(%ebx), %edx
	movl	%ecx, 8(%esp)
	subl	%eax, %edi
	movswl	6020(%ebx), %eax
	movl	%ebp, %esi
	movl	%edx, 4(%esp)
	subl	%eax, %esi
	movswl	6006(%ebx), %eax
	movl	%edi, 12(%esp)
	movl	%esi, 16(%esp)
	leal	512(%eax), %edx
	movw	%ax, 22(%esp)
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %esi
	movl	4(%esp), %edx
	imull	%edx, %esi
	sarl	$14, %esi
	addl	%edi, %esi
	movswl	_sintable(%eax,%eax), %edi
	movl	%ecx, %eax
	subl	%esi, %eax
	imull	%edx, %edi
	movw	%ax, 6018(%ebx)
	movl	%ebp, %eax
	sarl	$14, %edi
	addl	16(%esp), %edi
	subl	%edi, %eax
	movw	%ax, 6020(%ebx)
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	%edi, %ecx
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	subl	%ebp, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movswl	6010(%ebx), %ecx
	cmpl	%edx, %eax
	movl	%ecx, 24(%esp)
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, 24(%esp)
	jge	L517
	movzwl	22(%esp), %eax
	addw	$1024, %ax
	andl	$2047, %eax
	leal	512(%eax), %edx
	movw	%ax, 6006(%ebx)
	movswl	_sintable(%eax,%eax), %edi
	andl	$2047, %edx
	movzwl	8(%esp), %eax
	movswl	_sintable(%edx,%edx), %esi
	movl	4(%esp), %edx
	imull	%edx, %esi
	imull	%edx, %edi
	sarl	$14, %esi
	addl	12(%esp), %esi
	subl	%esi, %eax
	sarl	$14, %edi
	addl	16(%esp), %edi
	movw	%ax, 6018(%ebx)
	movl	%ebp, %eax
	subl	%edi, %eax
	movw	%ax, 6020(%ebx)
L517:
	movl	_krandcount, %ecx
	movswl	6012(%ebx), %ebp
	leal	1(%ecx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, %edx
	movl	%eax, _randomseed
	sarl	$4, %edx
	andl	$1023, %edx
	cmpl	%ebp, %edx
	jl	L538
L518:
	movswl	20(%esp), %eax
	movl	%edi, %ecx
	movl	%esi, %edx
	call	_dragpoint.constprop.0
	movswl	3568(%ebx), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	movl	8(%ecx,%eax,8), %edx
	movl	560(%ebx), %eax
	cmpl	$76800, %eax
	jle	L519
	negw	6016(%ebx)
	movl	$76800, 560(%ebx)
L520:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L537
	movl	%esi, 4(%esp)
	movl	%ebx, %ebp
	movl	%edx, %esi
	jmp	L522
	.p2align 6
	.p2align 4,,10
	.p2align 3
L521:
	movl	4(%ebp), %eax
	addl	$4, %ebp
	testl	%eax, %eax
	je	L537
L539:
	movl	_sector, %ecx
L522:
	subl	%ecx, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %edx
	testl	%edx, %edx
	je	L521
	testb	$32, 4(%edx)
	je	L521
	movl	560(%ebx), %edx
	cwtl
	movl	%edi, %ecx
	addl	$4, %ebp
	addl	%esi, %edx
	movl	%edx, (%esp)
	movl	4(%esp), %edx
	call	_alignflorslope
	movl	0(%ebp), %eax
	testl	%eax, %eax
	jne	L539
L537:
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L515:
	movl	28(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L519:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	$-76800, %eax
	jge	L520
	negw	6016(%ebx)
	movl	$-76800, 560(%ebx)
	jmp	L520
	.p2align 4,,10
	.p2align 3
L538:
	leal	(%eax,%eax,4), %edx
	addl	$2, %ecx
	leal	1(%eax,%edx,4), %eax
	movl	%ecx, _krandcount
	movzwl	%ax, %edx
	andw	$2047, %ax
	movl	%edx, _randomseed
	movw	%ax, 6006(%ebx)
	jmp	L518
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii
	.def	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii:
LFB79:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L543
	jmp	L540
	.p2align 6
	.p2align 4,,10
	.p2align 3
L542:
	movl	4(%ebx), %eax
	addl	$4, %ebx
	testl	%eax, %eax
	je	L540
L543:
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %edx
	testl	%edx, %edx
	je	L542
	testb	$32, 4(%edx)
	je	L542
	movl	24(%esp), %ecx
	movl	16(%esp), %edx
	cwtl
	addl	$4, %ebx
	movl	%ecx, (%esp)
	movl	20(%esp), %ecx
	call	_alignflorslope
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L543
L540:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE79:
	.p2align 4
	.globl	__Z10SpikeFloorP19SECTOR_OBJECTstruct
	.def	__Z10SpikeFloorP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z10SpikeFloorP19SECTOR_OBJECTstruct:
LFB80:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	%ebx, 16(%esp)
	movswl	6016(%eax), %ecx
	movl	560(%eax), %edx
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	sall	$8, %ecx
	subl	%ecx, %edx
	movl	%edx, 560(%eax)
	cmpw	$0, 6004(%eax)
	js	L555
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movswl	6018(%eax), %ecx
	movl	180(%eax), %esi
	movl	184(%eax), %edi
	subl	%ecx, %esi
	movswl	6020(%eax), %ecx
	subl	%ecx, %edi
	movswl	3568(%eax), %ecx
	leal	(%ecx,%ecx,4), %ecx
	sall	$3, %ecx
	addl	_sector, %ecx
	movl	8(%ecx), %ecx
	cmpl	$76800, %edx
	jle	L557
	negl	%ebx
	movl	$76800, %edx
	movl	$76800, 560(%eax)
	movw	%bx, 6016(%eax)
L558:
	addl	%ecx, %edx
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	__Z22SOBJ_AlignFloorToPointP19SECTOR_OBJECTstructiii
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L555:
	movl	16(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L557:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	cmpl	$-76800, %edx
	jge	L558
	negl	%ebx
	movl	$-76800, %edx
	movl	$-76800, 560(%eax)
	movw	%bx, 6016(%eax)
	jmp	L558
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z29SOBJ_AlignFloorCeilingToPointP19SECTOR_OBJECTstructiii
	.def	__Z29SOBJ_AlignFloorCeilingToPointP19SECTOR_OBJECTstructiii;	.scl	2;	.type	32;	.endef
__Z29SOBJ_AlignFloorCeilingToPointP19SECTOR_OBJECTstructiii:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	36(%esp), %ebp
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L563
	jmp	L560
	.p2align 6
	.p2align 4,,10
	.p2align 3
L562:
	movl	4(%ebx), %eax
	addl	$4, %ebx
	testl	%eax, %eax
	je	L560
L563:
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movl	_SectUser(,%eax,4), %edx
	testl	%edx, %edx
	je	L562
	testb	$32, 4(%edx)
	je	L562
	movl	%ebp, (%esp)
	cwtl
	movl	%edi, %ecx
	movl	%esi, %edx
	addl	$4, %ebx
	call	_alignflorslope
	movl	-4(%ebx), %eax
	movl	%ebp, (%esp)
	movl	%edi, %ecx
	subl	_sector, %eax
	movl	%esi, %edx
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	cwtl
	call	_alignceilslope
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L563
L560:
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
LFE81:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "netsendpacket(): packet length > %d!\0"
LC1:
	.ascii "source/sw/src/network.cpp\0"
	.text
	.p2align 4
	.def	__Z13netsendpacketiPhi.part.0;	.scl	3;	.type	32;	.endef
__Z13netsendpacketiPhi.part.0:
LFB82:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%edx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	leal	2(%ecx), %ebx
	subl	$604, %esp
	.cfi_def_cfa_offset 616
	cmpl	$576, %ecx
	ja	L580
L577:
	movb	%al, 27(%esp)
	leal	28(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movb	$19, 26(%esp)
	call	_memcpy
	movl	_connecthead, %eax
	movl	%ebx, %ecx
	leal	26(%esp), %edx
	call	__Z17mmulti_sendpacketiPhi
	addl	$604, %esp
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
L580:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jge	L581
	movl	$578, %ebx
	movl	$576, %ecx
	jmp	L577
	.p2align 4,,10
	.p2align 3
L581:
	movl	$576, 16(%esp)
	movl	$578, %ebx
	movl	$LC0, 12(%esp)
	movl	$145, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-1, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %eax
	movl	$576, %ecx
	jmp	L577
	.cfi_endproc
LFE82:
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "netbroadcastpacket(): packet length > %d!\0"
	.text
	.p2align 4
	.def	__Z18netbroadcastpacketPhi.part.0;	.scl	3;	.type	32;	.endef
__Z18netbroadcastpacketPhi.part.0:
LFB84:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$600, %esp
	.cfi_def_cfa_offset 612
	cmpl	$576, %edx
	ja	L583
	movl	%edx, %eax
	leal	2(%edx), %ebx
L584:
	leal	24(%esp), %ecx
	movl	%esi, 4(%esp)
	movl	$-237, %edx
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	movw	%dx, 22(%esp)
	call	_memcpy
	movl	_connecthead, %eax
	movl	%ebx, %ecx
	leal	22(%esp), %edx
	call	__Z17mmulti_sendpacketiPhi
	addl	$600, %esp
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
L583:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jge	L587
	movl	$578, %ebx
	movl	$576, %eax
	jmp	L584
	.p2align 4,,10
	.p2align 3
L587:
	movl	$576, 16(%esp)
	movl	$578, %ebx
	movl	$LC2, 12(%esp)
	movl	$186, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	$576, %eax
	jmp	L584
	.cfi_endproc
LFE84:
	.p2align 4
	.globl	__Z10SetupNinjas
	.def	__Z10SetupNinjas;	.scl	2;	.type	32;	.endef
__Z10SetupNinjas:
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
	andl	$-8, %esp
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %edi
	movl	_sprite, %ecx
	movl	$_NinjaPersonality, 32(%esp)
	movss	32(%esp), %xmm0
	imull	$44, %edi, %ebx
	movl	$_NinjaSniperPersonality, 32(%esp)
	movss	LC4, %xmm1
	movss	LC5, %xmm2
	unpcklps	%xmm0, %xmm1
	movss	32(%esp), %xmm0
	addl	%ecx, %ebx
	movlps	%xmm1, 12(%esp)
	movzwl	14(%ebx), %eax
	unpcklps	%xmm0, %xmm2
	movlps	%xmm2, 20(%esp)
	movw	%ax, 30(%esp)
	testb	$16, 13(%ebx)
	je	L589
	movl	_User(,%edi,4), %esi
L590:
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$_s_NinjaDie, 28(%esi)
	subl	%ecx, %edx
	movl	$_sg_NinjaRun, 20(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$46, 20(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	17(%ebx), %eax
	leal	17(%ebx), %edx
	movb	$46, 21(%ebx)
	movl	%edx, 32(%esp)
	cmpb	$21, %al
	je	L644
	movl	$_NinjaAttrib, 48(%esi)
	cmpb	$19, %al
	je	L645
	cmpb	$24, %al
	je	L646
	cmpb	$17, %al
	je	L647
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	movb	$16, 262(%esi)
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 17(%ebx)
	movl	$_NinjaPersonality, 8(%esp)
	movl	$_NinjaActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	cmpw	$4162, 30(%esp)
	je	L648
L593:
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L595
	movl	$0, 76(%eax)
	movl	$_s_NinjaRun, 24(%eax)
	movl	$_s_NinjaRun, 16(%eax)
	movswl	_s_NinjaRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L595
	andl	$63, %eax
	movb	%al, 3(%edx)
L595:
	movl	%edi, (%esp)
	movl	$1, 4(%esp)
	call	__Z15DoActorSetSpeedsh
	orl	$16777216, 68(%esi)
	xorl	%eax, %eax
	movl	$280, 188(%esi)
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
L589:
	.cfi_restore_state
	movl	$_s_NinjaRun, %ecx
	movl	$4096, %edx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %ecx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movl	$40, %eax
	movw	%ax, 84(%esi)
	jmp	L590
	.p2align 4,,10
	.p2align 3
L644:
	movl	$_InvisibleNinjaAttrib, 48(%esi)
	movl	$_NinjaPersonality, 8(%esp)
	movl	$_NinjaGreenActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	testb	$16, 13(%ebx)
	jne	L592
	movl	$160, %eax
	movw	%ax, 84(%esi)
L592:
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$2, 12(%ebx)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movb	$127, 16(%ebx)
	movl	%edx, %eax
	movb	$21, 262(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$21, 17(%ebx)
	mull	%ecx
	movl	$9998, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	cmpw	$4162, 30(%esp)
	jne	L593
	testb	$8, 12(%ebx)
	movl	$_NinjaAttrib, 48(%esi)
	je	L594
	movlps	12(%esp), %xmm4
	movlps	%xmm4, 40(%esi)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L595
L643:
	movl	$0, 76(%eax)
	movl	$_s_NinjaCeiling, 24(%eax)
	movl	$_s_NinjaCeiling, 16(%eax)
	movswl	_s_NinjaCeiling, %eax
	jmp	L641
	.p2align 4,,10
	.p2align 3
L647:
	movl	$_NinjaPersonality, 8(%esp)
	movl	$_NinjaGrenadeActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	testb	$16, 13(%ebx)
	jne	L602
	movl	$160, %eax
	movw	%ax, 84(%esi)
L602:
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movb	$17, 262(%esi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%ebx)
	movl	$_NinjaAttrib, 48(%esi)
	jmp	L593
	.p2align 4,,10
	.p2align 3
L645:
	movl	$_NinjaPersonality, 8(%esp)
	movl	$_NinjaRedActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	testb	$16, 13(%ebx)
	jne	L597
	movl	$160, %ecx
	movw	%cx, 84(%esi)
L597:
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movb	$19, 262(%esi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$19, 17(%ebx)
	cmpw	$4162, 30(%esp)
	jne	L593
	testb	$8, 12(%ebx)
	movl	$_NinjaAttrib, 48(%esi)
	je	L598
	movlps	12(%esp), %xmm6
	movlps	%xmm6, 40(%esi)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	jne	L643
	jmp	L595
	.p2align 4,,10
	.p2align 3
L646:
	movl	$_NinjaPersonality, 8(%esp)
	movl	$_NinjaSeekerActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	testb	$16, 13(%ebx)
	jne	L600
	movl	$160, %edx
	movw	%dx, 84(%esi)
L600:
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movb	$24, 262(%esi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$24, 17(%ebx)
	movl	$_NinjaAttrib, 48(%esi)
	jmp	L593
	.p2align 4,,10
	.p2align 3
L648:
	movlps	20(%esp), %xmm3
	movl	$_NinjaAttrib, 48(%esi)
	movlps	%xmm3, 40(%esi)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	je	L595
L642:
	movl	$0, 76(%eax)
	movl	$_s_NinjaDuck, 24(%eax)
	movl	$_s_NinjaDuck, 16(%eax)
	movswl	_s_NinjaDuck, %eax
L641:
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L593
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L593
	.p2align 4,,10
	.p2align 3
L594:
	movlps	20(%esp), %xmm5
	movlps	%xmm5, 40(%esi)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	jne	L642
	jmp	L595
	.p2align 4,,10
	.p2align 3
L598:
	movlps	20(%esp), %xmm7
	movlps	%xmm7, 40(%esi)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	jne	L642
	jmp	L595
	.cfi_endproc
LFE85:
	.p2align 4
	.globl	__Z15DoNinjaHariKaris
	.def	__Z15DoNinjaHariKaris;	.scl	2;	.type	32;	.endef
__Z15DoNinjaHariKaris:
LFB86:
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
	movswl	48(%esp), %ebx
	movl	_User(,%ebx,4), %ebp
	movl	140(%ebp), %esi
	cmpw	$1, _gNet+12
	je	L650
	movl	%ebx, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L650:
	movl	$3, %edx
	movl	%ebx, %eax
	movl	$-1171354717, %edi
	call	__Z18change_sprite_statss
	imull	$44, %ebx, %eax
	movl	_sprite, %ecx
	movl	%eax, 24(%esp)
	addl	$12, %eax
	mull	%edi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	andw	$-258, 12(%ecx,%eax)
	movl	68(%ebp), %eax
	movw	%dx, 80(%ebp)
	leal	42(%esi), %edx
	andl	$-97, %eax
	subl	%ecx, %edx
	movl	$0, 36(%ebp)
	orb	$1, %ah
	movl	%eax, 68(%ebp)
	movl	$10240, %eax
	movw	%ax, 98(%ebp)
	movl	%edx, %eax
	leal	8(%esi), %ebp
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	orw	$8192, 42(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	orw	$16640, 12(%esi)
	movl	%edx, %eax
	mull	%edi
	leal	4(%esi), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$93, %eax
	movl	$4, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	$1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1, 20(%esp)
	movl	$-1, 16(%esp)
	movl	$-1, 12(%esp)
	movl	$-1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z10SpawnBloodsssiii
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L651
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$27, %edx
	leal	1(%edx), %edi
L651:
	addl	$1, %edi
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L652:
	movl	$-2, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	addl	$1, %esi
	call	__Z14InitBloodSprayshs.isra.0
	cmpw	%di, %si
	jne	L652
	addl	$28, %esp
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
LFE86:
	.p2align 4
	.globl	__Z17DoNinjaGrabThroats
	.def	__Z17DoNinjaGrabThroats;	.scl	2;	.type	32;	.endef
__Z17DoNinjaGrabThroats:
LFB88:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movswl	32(%esp), %esi
	movl	%ebx, 12(%esp)
	movl	_User(,%esi,4), %ecx
	movzwl	216(%ecx), %eax
	.cfi_offset 3, -20
	movl	140(%ecx), %ebx
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L668
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L668:
	.cfi_restore_state
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpw	$1, _gNet+12
	je	L659
	movl	%esi, %eax
	movl	%ecx, 8(%esp)
	call	__Z21UpdateSinglePlayKillss.part.0
	movl	8(%esp), %ecx
L659:
	leal	12(%ebx), %ebp
	movl	$-1171354717, %eax
	andl	$-4194305, 72(%ecx)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%ecx, 8(%esp)
	mull	%edx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$3, %edx
	andw	$-9, 12(%ebx)
	call	__Z18change_sprite_statss
	imull	$44, %esi, %ecx
	movl	$-1171354717, %eax
	movl	_sprite, %edi
	leal	12(%ecx), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$10240, %edx
	andw	$-258, 12(%edi,%ecx)
	movl	8(%esp), %ecx
	movl	68(%ecx), %eax
	movw	%dx, 98(%ecx)
	leal	42(%ebx), %edx
	subl	%edi, %edx
	movl	$0, 36(%ecx)
	andl	$-97, %eax
	orb	$1, %ah
	movl	%eax, 68(%ecx)
	xorl	%eax, %eax
	movw	%ax, 80(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	orw	$8192, 42(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$16640, 12(%ebx)
	movl	_User(,%esi,4), %eax
	testl	%eax, %eax
	je	L660
	movl	28(%ecx), %edx
	movl	$0, 76(%eax)
	movl	%edx, 24(%eax)
	movl	%edx, 16(%eax)
	movswl	(%edx), %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L660
	andl	$63, %eax
	movb	%al, 3(%edx)
L660:
	leal	32(%ebx), %edx
	movl	$-1171354717, %ecx
	leal	8(%ebx), %esi
	subl	%edi, %edx
	leal	4(%ebx), %ebp
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%edi, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebp, %ecx
	movl	$91, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%esi, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z11DoNinjaMoves
	.def	__Z11DoNinjaMoves;	.scl	2;	.type	32;	.endef
__Z11DoNinjaMoves:
LFB89:
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
	testb	$64, 74(%ebx)
	jne	L685
	movl	68(%ebx), %eax
	testb	$96, %al
	jne	L686
L672:
	movl	68(%ebx), %eax
	andl	$2097280, %eax
	cmpl	$2097152, %eax
	je	L687
L674:
	cmpw	$0, 218(%ebx)
	jns	L688
	movl	%esi, (%esp)
	call	*36(%ebx)
	testb	$-32, 68(%ebx)
	je	L689
L677:
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
L686:
	.cfi_restore_state
	testb	$-128, %al
	jne	L672
	testb	$32, %al
	jne	L690
	testb	$64, %al
	je	L672
	movl	%esi, (%esp)
	call	__Z11DoActorFalls
	jmp	L672
	.p2align 4,,10
	.p2align 3
L688:
	movl	%esi, %eax
	call	__Z16ActorFollowTrackss.constprop.0.isra.0
	testb	$-32, 68(%ebx)
	jne	L677
L689:
	movl	%esi, (%esp)
	call	__Z16KeepActorOnFloors
	jmp	L677
	.p2align 4,,10
	.p2align 3
L685:
	movl	%esi, %eax
	movl	$_sg_NinjaGrabThroat, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
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
L687:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z12DoActorSlides
	jmp	L674
	.p2align 4,,10
	.p2align 3
L690:
	movl	%esi, (%esp)
	call	__Z11DoActorJumps
	jmp	L672
	.cfi_endproc
LFE89:
	.p2align 4
	.globl	__Z19NinjaJumpActionFuncs
	.def	__Z19NinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
__Z19NinjaJumpActionFuncs:
LFB90:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z23GirlNinjaJumpActionFuncs
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__Z9NullNinjas
	.def	__Z9NullNinjas;	.scl	2;	.type	32;	.endef
__Z9NullNinjas:
LFB91:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z13NullGirlNinjas
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__Z11DoNinjaPains
	.def	__Z11DoNinjaPains;	.scl	2;	.type	32;	.endef
__Z11DoNinjaPains:
LFB92:
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
	call	__Z13NullGirlNinjas
	testb	$64, 74(%esi)
	jne	L697
	movzwl	216(%esi), %eax
	subl	$6, %eax
	movw	%ax, 216(%esi)
	testw	%ax, %ax
	jle	L698
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
L698:
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
L697:
	.cfi_restore_state
	movl	%ebx, %eax
	movl	$_sg_NinjaGrabThroat, %edx
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
LFE92:
	.p2align 4
	.globl	__Z14DoNinjaSpecials
	.def	__Z14DoNinjaSpecials;	.scl	2;	.type	32;	.endef
__Z14DoNinjaSpecials:
LFB94:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z18DoGirlNinjaSpecials
	.cfi_endproc
LFE94:
	.p2align 4
	.globl	__Z9CheckFires
	.def	__Z9CheckFires;	.scl	2;	.type	32;	.endef
__Z9CheckFires:
LFB95:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z12CanSeePlayers
	testl	%eax, %eax
	je	L703
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
L703:
	.cfi_restore_state
	movl	%ebx, 12(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13InitActorDucks
	.cfi_endproc
LFE95:
	.section .rdata,"dr"
LC6:
	.ascii "source/sw/src/panel.cpp\0"
	.text
	.p2align 4
	.def	__Z18DoPlayerChooseYellP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z18DoPlayerChooseYellP12PLAYERstruct:
LFB96:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	_krandcount, %eax
	testb	$15, 416(%ecx)
	leal	1(%eax), %edx
	movl	_randomseed, %eax
	movl	%edx, _krandcount
	leal	(%eax,%eax,4), %ebx
	leal	1(%eax,%ebx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	jne	L705
	cmpl	$65535, %eax
	je	L706
	sall	$14, %eax
	cmpl	$966352499, %eax
	jbe	L704
	.p2align 4
	.p2align 3
L706:
	imull	$1103515245, _wrandomseed, %eax
	imull	$24124, _myconnectindex, %edx
	addl	$12345, %eax
	addl	$_Player, %edx
	movl	%eax, _wrandomseed
	cmpl	%edx, %ecx
	je	L716
L704:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L705:
	.cfi_restore_state
	cmpl	$65535, %eax
	je	L706
	sall	$14, %eax
	cmpl	$1062987749, %eax
	ja	L706
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L716:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L704
	shrl	$16, %eax
	movl	$32766, %edx
	movl	%ecx, 16(%esp)
	andl	$32767, %eax
	movl	%ecx, (%esp)
	cmpl	%edx, %eax
	movl	$9, 12(%esp)
	cmova	%edx, %eax
	movl	$1610661893, %edx
	sall	$14, %eax
	imull	%edx
	sarl	$26, %edx
	movl	_PlayerYellVocs(,%edx,4), %eax
	leal	8(%ecx), %edx
	movl	%edx, 8(%esp)
	leal	4(%ecx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, %ecx
	movl	$289, %edx
	movl	$LC6, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L704
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z10pUziActionP18PANEL_SPRITEstruct
	.def	__Z10pUziActionP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z10pUziActionP18PANEL_SPRITEstruct:
LFB101:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	32(%eax), %edx
	movl	204(%eax), %ecx
	testb	$2, 418(%edx)
	je	L718
	testb	$2, 22978(%edx)
	jne	L739
L718:
	testb	$2, %cl
	jne	L740
L722:
	andl	$4, %ecx
	jne	L731
	movl	$786432, 236(%eax)
	movswl	38(%eax), %ecx
	movl	%ecx, 196(%eax)
	movswl	42(%eax), %ecx
	movl	%ecx, 200(%eax)
	movl	$3, %ecx
	movw	%cx, 242(%eax)
L731:
	movl	192(%edx), %ecx
	orl	196(%edx), %ecx
	setne	%dl
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	movzbl	%dl, %edx
	jmp	__Z10pWeaponBobP18PANEL_SPRITEstructs
	.p2align 4,,10
	.p2align 3
L739:
	.cfi_restore_state
	testb	$2, %cl
	je	L720
	movzbl	__ZZ10pUziActionP18PANEL_SPRITEstructE9alternate, %edx
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -8
	movzwl	56(%eax), %ebx
	addl	$1, %edx
	movb	%dl, __ZZ10pUziActionP18PANEL_SPRITEstructE9alternate
	cmpb	$6, %dl
	jbe	L723
	movb	$0, __ZZ10pUziActionP18PANEL_SPRITEstructE9alternate
L724:
	cmpw	$-1, %bx
	je	L741
L726:
	movl	$2042, %edx
	movw	%dx, 54(%eax)
	movl	4(%esp), %ebx
	.cfi_restore 3
	.p2align 4
	.p2align 3
L720:
	andl	$4, %ecx
	jne	L728
	movl	$786432, 236(%eax)
	movswl	38(%eax), %edx
	movl	%edx, 196(%eax)
	movswl	42(%eax), %edx
	movl	%edx, 200(%eax)
	movl	$3, %edx
	movw	%dx, 242(%eax)
L728:
	movl	_randomseed, %edx
	addl	$1, _krandcount
	movl	%eax, (%esp)
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	sarl	$8, %edx
	andl	$3, %edx
	movb	%dl, _UziRecoilYadj
	movl	$1, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	_randomseed, %edx
	addl	$1, _krandcount
	movb	$0, _UziRecoilYadj
	movl	(%esp), %eax
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	andl	$1023, %edx
	cmpl	$990, %edx
	movl	%ecx, _randomseed
	jg	L742
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L742:
	.cfi_restore_state
	movl	32(%eax), %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	jmp	__Z18DoPlayerChooseYellP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L740:
	.cfi_restore_state
	cmpw	$-1, 56(%eax)
	jne	L730
	movl	$-4784096, 56(%eax)
L730:
	movw	$2040, 54(%eax)
	jmp	L722
	.p2align 4,,10
	.p2align 3
L723:
	.cfi_offset 3, -8
	cmpb	$3, %dl
	jbe	L724
	cmpw	$-1, %bx
	je	L743
L727:
	movl	$2040, %ebx
	movw	%bx, 54(%eax)
	movl	4(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	jmp	L720
	.p2align 4,,10
	.p2align 3
L743:
	.cfi_restore_state
	movl	$-4784096, 56(%eax)
	jmp	L727
	.p2align 4,,10
	.p2align 3
L741:
	movl	$-4784096, 56(%eax)
	jmp	L726
	.cfi_endproc
LFE101:
	.p2align 4
	.def	__Z11pChopsClickP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pChopsClickP18PANEL_SPRITEstruct:
LFB102:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %ebx
	movl	32(%ebx), %edx
	movl	$0, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$237, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L745
	sall	$14, %eax
	cmpl	$1021112474, %eax
	ja	L745
	cmpl	$967426224, %eax
	ja	L753
	cmpl	$860053724, %eax
	ja	L754
L744:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L753:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L744
	movl	32(%ebx), %eax
	movl	$9, 12(%esp)
	movl	$352, %ecx
	leal	8(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	$6228, %edx
	movl	%eax, (%esp)
	movl	$LC6, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L745:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L744
	movl	32(%ebx), %eax
	movl	$9, 12(%esp)
	movl	$264, %ecx
	leal	8(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	$6226, %edx
	movl	%eax, (%esp)
	movl	$LC6, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L754:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L744
	movl	32(%ebx), %eax
	movl	$9, 12(%esp)
	movl	$354, %ecx
	leal	8(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	$6230, %edx
	movl	%eax, (%esp)
	movl	$LC6, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L744
	.cfi_endproc
LFE102:
	.p2align 4
	.globl	__Z13pSwordPresentP18PANEL_SPRITEstruct
	.def	__Z13pSwordPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pSwordPresentP18PANEL_SPRITEstruct:
LFB103:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L755
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L757
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L757:
	movl	$200, %edx
	xorl	%ecx, %ecx
	movl	$200, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L758
	movzwl	(%edx), %ecx
L758:
	movw	%cx, 178(%eax)
L755:
	ret
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	__Z13pStarRestTestP18PANEL_SPRITEstruct
	.def	__Z13pStarRestTestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pStarRestTestP18PANEL_SPRITEstruct:
LFB107:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movl	32(%edx), %eax
	testb	$2, 418(%eax)
	je	L762
	testb	$2, 22978(%eax)
	jne	L780
L762:
	movl	28(%edx), %eax
	xorl	%ecx, %ecx
	movw	%cx, 228(%edx)
	xorl	%ecx, %ecx
	movl	%eax, 12(%edx)
	testl	%eax, %eax
	je	L764
	movzwl	(%eax), %ecx
L764:
	movw	%cx, 178(%edx)
L761:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L780:
	.cfi_restore_state
	call	__Z8WeaponOKP12PLAYERstruct
	movl	8(%esp), %edx
	testb	%al, %al
	je	L761
	movl	32(%edx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	8(%esp), %edx
	xorl	%eax, %eax
	movw	%ax, 228(%edx)
	movl	12(%edx), %eax
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L761
	movl	%edx, (%esp)
	call	*32(%eax)
	movl	8(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	jmp	L761
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__Z12pStarPresentP18PANEL_SPRITEstruct
	.def	__Z12pStarPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z12pStarPresentP18PANEL_SPRITEstruct:
LFB109:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L781
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	movw	%dx, 42(%eax)
	cmpw	$207, %dx
	jg	L788
	movl	$208, %edx
	movw	%dx, 42(%eax)
L785:
	movl	28(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L784
	movzwl	(%edx), %ecx
L784:
	movw	%cx, 178(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L788:
	cmpw	$208, %dx
	je	L785
L781:
	ret
	.cfi_endproc
LFE109:
	.p2align 4
	.def	__Z10pUziReloadP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pUziReloadP18PANEL_SPRITEstruct:
LFB111:
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
	movl	28(%esp), %ebx
	movswl	232(%ebx), %eax
	movswl	190(%ebx), %ebp
	movl	8(%ebx), %esi
	leal	512(%eax), %edi
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %edi
	movl	36(%esi), %edx
	movl	40(%esi), %ecx
	movswl	_sintable(%edi,%edi), %edi
	imull	%ebp, %eax
	imull	%ebp, %edi
	movzwl	190(%ebx), %ebp
	imull	$-3, %eax, %eax
	addl	$42, %ebp
	leal	(%edi,%edi,2), %edi
	movw	%bp, 190(%ebx)
	sarl	$6, %edi
	sarl	$6, %eax
	addl	%edi, 36(%ebx)
	addl	%eax, 40(%ebx)
	movswl	232(%esi), %ebp
	movswl	190(%esi), %edi
	leal	512(%ebp), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edi, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$6, %eax
	subl	%eax, %edx
	movswl	_sintable(%ebp,%ebp), %eax
	movl	%edx, 36(%esi)
	imull	%edi, %eax
	movl	%edx, %edi
	sarl	$16, %edi
	imull	$-3, %eax, %eax
	sarl	$6, %eax
	subl	%eax, %ecx
	movl	%ecx, 40(%esi)
	movzwl	38(%ebx), %eax
	testb	$-128, 205(%ebx)
	je	L790
	cmpw	%ax, %di
	jg	L794
L789:
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
	ret
	.p2align 4,,10
	.p2align 3
L790:
	.cfi_restore_state
	cmpw	%ax, %di
	jge	L789
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$9, %eax
	call	__Z9PlaySoundiPiS_S_i
	movzwl	38(%esi), %eax
	movl	$680, %edx
	addl	$16, %eax
	movw	%ax, 38(%ebx)
	movzwl	42(%esi), %eax
	movw	%dx, 190(%ebx)
	subl	$84, %eax
	movw	%ax, 42(%ebx)
	movzwl	232(%ebx), %eax
	addw	$192, %ax
L793:
	andw	$2047, %ax
	movl	$_ps_UziReload+24, 12(%ebx)
	movw	%ax, 232(%ebx)
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	movzwl	_ps_UziReload+24, %eax
	movw	%ax, 178(%ebx)
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
	ret
	.p2align 4,,10
	.p2align 3
L794:
	.cfi_restore_state
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$9, %eax
	call	__Z9PlaySoundiPiS_S_i
	movzwl	38(%esi), %eax
	movl	$680, %ecx
	subl	$16, %eax
	movw	%ax, 38(%ebx)
	movzwl	42(%esi), %eax
	movw	%cx, 190(%ebx)
	subl	$84, %eax
	movw	%ax, 42(%ebx)
	movzwl	232(%ebx), %eax
	subw	$192, %ax
	jmp	L793
	.cfi_endproc
LFE111:
	.p2align 4
	.def	__Z11pUziPresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pUziPresentP18PANEL_SPRITEstruct:
LFB112:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L795
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	movw	%dx, 42(%eax)
	cmpw	$207, %dx
	jle	L800
L795:
	ret
	.p2align 4,,10
	.p2align 3
L800:
	movl	$208, %edx
	xorl	%ecx, %ecx
	andl	$-17, 204(%eax)
	movw	%dx, 42(%eax)
	movswl	38(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 196(%eax)
	movl	28(%eax), %edx
	movl	$208, 200(%eax)
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L797
	movzwl	(%edx), %ecx
L797:
	movw	%cx, 178(%eax)
	ret
	.cfi_endproc
LFE112:
	.p2align 4
	.def	__Z17pUziPresentReloadP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z17pUziPresentReloadP18PANEL_SPRITEstruct:
LFB114:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L801
	movzwl	42(%eax), %ecx
	leal	-15(%ecx), %edx
	cmpw	$207, %dx
	jle	L803
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L803:
	movl	$208, %edx
	xorl	%ecx, %ecx
	movl	$208, 200(%eax)
	movw	%dx, 42(%eax)
	movswl	38(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 196(%eax)
	movl	28(%eax), %edx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L804
	movzwl	(%edx), %ecx
L804:
	movw	%cx, 178(%eax)
L801:
	ret
	.cfi_endproc
LFE114:
	.p2align 4
	.def	__Z15pShotgunPresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z15pShotgunPresentP18PANEL_SPRITEstruct:
LFB116:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L807
	movl	$1792, %ecx
	movl	$900, %edx
	movw	%cx, 232(%eax)
	movzwl	42(%eax), %ecx
	movw	%dx, 190(%eax)
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L809
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L809:
	movl	$200, %edx
	xorl	%ecx, %ecx
	movl	$200, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L810
	movzwl	(%edx), %ecx
L810:
	movw	%cx, 178(%eax)
L807:
	ret
	.cfi_endproc
LFE116:
	.p2align 4
	.def	__Z12pRailPresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pRailPresentP18PANEL_SPRITEstruct:
LFB118:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L813
	movl	$1792, %ecx
	movl	$900, %edx
	movw	%cx, 232(%eax)
	movzwl	42(%eax), %ecx
	movw	%dx, 190(%eax)
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L815
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L815:
	movl	$200, %edx
	xorl	%ecx, %ecx
	movl	$200, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L816
	movzwl	(%edx), %ecx
L816:
	movw	%cx, 178(%eax)
L813:
	ret
	.cfi_endproc
LFE118:
	.p2align 4
	.def	__Z16pHotheadRestTestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pHotheadRestTestP18PANEL_SPRITEstruct:
LFB119:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movl	32(%edx), %eax
	testb	$2, 418(%eax)
	je	L820
	testb	$2, 22978(%eax)
	jne	L836
L820:
	movzbl	23115(%eax), %eax
	xorl	%ecx, %ecx
	movw	%cx, 228(%edx)
	movl	_HotheadRestStates(,%eax,4), %eax
	movl	%eax, 12(%edx)
	movzwl	(%eax), %eax
	movl	$0, 56(%edx)
	movw	%ax, 178(%edx)
L819:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L836:
	.cfi_restore_state
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L819
	movl	8(%esp), %edx
	movl	32(%edx), %eax
	cmpw	$9, 23032(%eax)
	jle	L837
L822:
	movl	%edx, 8(%esp)
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	8(%esp), %edx
	xorl	%eax, %eax
	movw	%ax, 228(%edx)
	movl	12(%edx), %eax
	leal	24(%eax), %ecx
	movl	%ecx, 12(%edx)
	testb	$-128, 42(%eax)
	je	L819
	movl	%edx, (%esp)
	call	*32(%eax)
	movl	8(%esp), %edx
	movl	12(%edx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%edx)
	jmp	L819
	.p2align 4,,10
	.p2align 3
L837:
	movb	$0, 23115(%eax)
	movl	32(%edx), %eax
	call	__Z8WeaponOKP12PLAYERstruct
	movl	8(%esp), %edx
	movl	32(%edx), %eax
	jmp	L822
	.cfi_endproc
LFE119:
	.p2align 4
	.globl	__Z15pHotheadPresentP18PANEL_SPRITEstruct
	.def	__Z15pHotheadPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z15pHotheadPresentP18PANEL_SPRITEstruct:
LFB121:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L838
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L840
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L840:
	movl	$200, %edx
	xorl	%ecx, %ecx
	movl	$200, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L841
	movzwl	(%edx), %ecx
L841:
	movw	%cx, 178(%eax)
L838:
	ret
	.cfi_endproc
LFE121:
	.p2align 4
	.globl	__Z13pMicroPresentP18PANEL_SPRITEstruct
	.def	__Z13pMicroPresentP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pMicroPresentP18PANEL_SPRITEstruct:
LFB122:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %ecx
	testb	$16, 22969(%ecx)
	jne	L844
	movl	$900, %edx
	movw	%dx, 190(%eax)
	movl	$1792, %edx
	movw	%dx, 232(%eax)
	movzwl	42(%eax), %edx
	subl	$9, %edx
	cmpw	$204, %dx
	jg	L851
	movl	$205, 200(%eax)
	movl	$205, %edx
	movw	%dx, 42(%eax)
	cmpb	$2, 23112(%ecx)
	jne	L847
	cmpb	$0, 24106(%ecx)
	jne	L847
	xorl	%edx, %edx
	movb	$0, 24105(%ecx)
	movw	%dx, 228(%eax)
	movzwl	_ps_InitNuke, %edx
	movl	$_ps_InitNuke, 12(%eax)
	movw	%dx, 178(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L847:
	movl	28(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L848
	movzwl	(%edx), %ecx
L848:
	movw	%cx, 178(%eax)
L844:
	ret
	.p2align 4,,10
	.p2align 3
L851:
	movw	%dx, 42(%eax)
	ret
	.cfi_endproc
LFE122:
	.p2align 4
	.def	__Z11pNukeActionP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pNukeActionP18PANEL_SPRITEstruct:
LFB123:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movzwl	42(%ebx), %eax
	movl	32(%ebx), %esi
	subl	$9, %eax
	cmpw	$204, %ax
	jle	L853
	movw	%ax, 42(%ebx)
L854:
	testb	$4, 204(%ebx)
	jne	L855
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$655360, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L855:
	movl	196(%esi), %edx
	orw	192(%esi), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	cmpb	$0, 24104(%esi)
	je	L861
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
L853:
	.cfi_restore_state
	movl	$205, 200(%ebx)
	movl	$205, %eax
	movw	%ax, 42(%ebx)
	jmp	L854
	.p2align 4,,10
	.p2align 3
L861:
	movl	20(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L857
	movzwl	(%eax), %edx
L857:
	movw	%dx, 178(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE123:
	.p2align 4
	.def	__Z13pHeartPresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pHeartPresentP18PANEL_SPRITEstruct:
LFB125:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L862
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	cmpw	$211, %dx
	jle	L864
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L864:
	movl	$212, %edx
	xorl	%ecx, %ecx
	movl	$212, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L865
	movzwl	(%edx), %ecx
L865:
	movw	%cx, 178(%eax)
L862:
	ret
	.cfi_endproc
LFE125:
	.p2align 4
	.def	__Z15pGrenadePresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z15pGrenadePresentP18PANEL_SPRITEstruct:
LFB127:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L868
	movswl	232(%eax), %ecx
	movswl	190(%eax), %ebx
	movswl	_sintable(%ecx,%ecx), %edx
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%ebx, %edx
	imull	%ebx, %ecx
	movzwl	234(%eax), %ebx
	imull	$-3, %edx, %edx
	leal	(%ecx,%ecx,2), %ecx
	sarl	$6, %ecx
	addl	%ecx, 36(%eax)
	leal	18(%ebx), %ecx
	sarl	$6, %edx
	movl	%ecx, %ebx
	addl	40(%eax), %edx
	andw	$2047, %bx
	andw	$1024, %cx
	movl	%edx, 40(%eax)
	cmovne	%ebx, %ecx
	movw	%cx, 234(%eax)
	cmpl	$13107199, %edx
	jle	L877
L868:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L877:
	.cfi_restore_state
	movl	$900, %edx
	movl	$180, %ecx
	movl	$200, %ebx
	movl	$1792, 232(%eax)
	movw	%dx, 190(%eax)
	movl	28(%eax), %edx
	movw	%cx, 38(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movw	%bx, 42(%eax)
	movl	$200, 200(%eax)
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L871
	movzwl	(%edx), %ecx
L871:
	movw	%cx, 178(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE127:
	.p2align 4
	.def	__Z12pMinePresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pMinePresentP18PANEL_SPRITEstruct:
LFB128:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L878
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L880
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L880:
	movl	$200, %edx
	xorl	%ecx, %ecx
	movl	$200, 200(%eax)
	movw	%dx, 42(%eax)
	movl	28(%eax), %edx
	movw	%cx, 234(%eax)
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L881
	movzwl	(%edx), %ecx
L881:
	movw	%cx, 178(%eax)
L878:
	ret
	.cfi_endproc
LFE128:
	.p2align 4
	.def	__Z10pChopsDownP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pChopsDownP18PANEL_SPRITEstruct:
LFB130:
	.cfi_startproc
	movl	4(%esp), %edx
	movzwl	42(%edx), %eax
	addl	$9, %eax
	cmpw	$310, %ax
	jg	L885
	movw	%ax, 42(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L885:
	movl	$310, %eax
	xorl	%ecx, %ecx
	movl	$_ps_ChopsWait, 12(%edx)
	movw	%ax, 42(%edx)
	movzwl	_ps_ChopsWait, %eax
	movw	%cx, 228(%edx)
	movw	%ax, 178(%edx)
	ret
	.cfi_endproc
LFE130:
	.p2align 4
	.def	__Z14pChopsDownSlowP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pChopsDownSlowP18PANEL_SPRITEstruct:
LFB132:
	.cfi_startproc
	movl	4(%esp), %edx
	movzwl	42(%edx), %eax
	addl	$3, %eax
	cmpw	$310, %ax
	jg	L888
	movw	%ax, 42(%edx)
	ret
	.p2align 4,,10
	.p2align 3
L888:
	movl	$310, %eax
	xorl	%ecx, %ecx
	movl	$_ps_ChopsWait, 12(%edx)
	movw	%ax, 42(%edx)
	movzwl	_ps_ChopsWait, %eax
	movw	%cx, 228(%edx)
	movw	%ax, 178(%edx)
	ret
	.cfi_endproc
LFE132:
	.p2align 4
	.def	__Z10pChopsWaitP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pChopsWaitP18PANEL_SPRITEstruct:
LFB133:
	.cfi_startproc
	movl	_krandcount, %ecx
	leal	1(%ecx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$9, %eax
	jle	L899
	ret
	.p2align 4,,10
	.p2align 3
L899:
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	addl	$2, %ecx
	leal	(%edx,%edx,4), %eax
	movl	%ecx, _krandcount
	leal	1(%edx,%eax,4), %eax
	movl	12(%esp), %ecx
	movzwl	%ax, %edx
	andl	$127, %eax
	movl	%edx, _randomseed
	movl	32(%ecx), %edx
	addl	$116, %eax
	movw	%ax, 38(%ecx)
	leal	8(%edx), %eax
	movl	$0, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$236, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$_ps_ChopsAttack4, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L892
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$27, %edx
	movl	_psp_ChopsAttack(,%edx,4), %edx
L892:
	movl	12(%esp), %eax
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	movl	12(%esp), %ecx
	movl	%edx, 12(%eax)
	movzwl	(%edx), %eax
	movw	%ax, 178(%ecx)
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE133:
	.p2align 4
	.def	__Z12pFistPresentP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pFistPresentP18PANEL_SPRITEstruct:
LFB135:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %edx
	testb	$16, 22969(%edx)
	jne	L900
	movzwl	42(%eax), %ecx
	leal	-9(%ecx), %edx
	cmpw	$199, %dx
	jle	L902
	movw	%dx, 42(%eax)
	ret
	.p2align 4,,10
	.p2align 3
L902:
	movl	$200, %edx
	addl	$1, _krandcount
	movw	%dx, 42(%eax)
	movl	_randomseed, %edx
	movl	$200, 200(%eax)
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	cmpl	$65535, %edx
	je	L905
	sall	$14, %edx
	cmpl	$537936224, %edx
	ja	L905
	movl	$_ps_PresentFist2, %ecx
	movl	$_ps_Fist2Rest, %edx
L903:
	movl	%ecx, 20(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 28(%eax)
	movw	%cx, 228(%eax)
	movl	%edx, 12(%eax)
	movzwl	(%edx), %edx
	movw	%dx, 178(%eax)
L900:
	ret
	.p2align 4,,10
	.p2align 3
L905:
	movl	$_ps_PresentFist, %ecx
	movl	$_ps_FistRest, %edx
	jmp	L903
	.cfi_endproc
LFE135:
	.p2align 4
	.def	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct;	.scl	3;	.type	32;	.endef
__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct:
LFB137:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movl	204(%eax), %edx
	testb	$4, %dh
	jne	L910
	movl	32(%eax), %ecx
	testb	$-128, %dl
	je	L909
	movl	22968(%ecx), %ecx
	testl	%ecx, %ecx
	jns	L938
L910:
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L909:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	416(%ecx), %edx
	movl	22976(%ecx), %esi
	testl	$1073741824, %edx
	jne	L939
	movl	%esi, %edx
	orl	$1073741824, %edx
	movl	%edx, 22976(%ecx)
	movl	32(%eax), %ecx
	movl	416(%ecx), %edx
L913:
	andl	$131072, %edx
	je	L934
	testb	$2, 22978(%ecx)
	jne	L940
L934:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L910
	.p2align 4,,10
	.p2align 3
L939:
	.cfi_restore_state
	testl	$1073741824, %esi
	je	L913
	movl	%esi, %edx
	andl	$-1073741825, %edx
	movl	%edx, 22976(%ecx)
L937:
	xorl	%edx, %edx
	movl	%ebx, 12(%eax)
	movw	%dx, 228(%eax)
	xorl	%edx, %edx
	testl	%ebx, %ebx
	je	L916
	movzwl	(%ebx), %edx
L916:
	movw	%dx, 178(%eax)
	movl	4(%esp), %esi
	.cfi_restore 6
	jmp	L915
	.p2align 4,,10
	.p2align 3
L938:
	andb	$127, %dl
	xorl	%ecx, %ecx
	movl	%ebx, 12(%eax)
	movl	%edx, 204(%eax)
	xorl	%edx, %edx
	movw	%cx, 228(%eax)
	testl	%ebx, %ebx
	je	L911
	movzwl	(%ebx), %edx
L911:
	movw	%dx, 178(%eax)
L915:
	movl	(%esp), %ebx
	movl	$1, %eax
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L940:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	orl	$1048576, 204(%eax)
	jmp	L937
	.cfi_endproc
LFE137:
	.p2align 4
	.def	__Z10pSwordHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pSwordHideP18PANEL_SPRITEstruct:
LFB139:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L945
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L948
L943:
	movswl	_tilesiz+2(,%ebx,4), %edx
L947:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L949
L941:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L948:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L943
	jmp	L947
	.p2align 4,,10
	.p2align 3
L945:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L941
L949:
	addw	$200, %dx
	movl	$332, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	movw	%ax, 38(%ecx)
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE139:
	.p2align 4
	.def	__Z9pStarHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pStarHideP18PANEL_SPRITEstruct:
LFB140:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L954
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L957
L952:
	movswl	_tilesiz+2(,%ebx,4), %edx
L956:
	leal	207(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L958
L950:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L957:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L952
	jmp	L956
	.p2align 4,,10
	.p2align 3
L954:
	movl	$207, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L950
L958:
	addw	$208, %dx
	movl	%ecx, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE140:
	.p2align 4
	.def	__Z8pUziHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z8pUziHideP18PANEL_SPRITEstruct:
LFB141:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L965
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L976
L961:
	movswl	_tilesiz+2(,%ebx,4), %edx
L975:
	leal	199(%edx), %ebx
L960:
	cwtl
	cmpl	%ebx, %eax
	jle	L959
	movl	204(%ecx), %eax
	addw	$200, %dx
	movw	%dx, 42(%ecx)
	testb	$1, %al
	je	L963
	movl	32(%ecx), %edx
	cmpb	$1, 24092(%edx)
	jne	L977
L963:
	testb	$2, %al
	je	L978
L959:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L976:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L961
	jmp	L975
	.p2align 4,,10
	.p2align 3
L965:
	movl	$199, %ebx
	xorl	%edx, %edx
	jmp	L960
	.p2align 4,,10
	.p2align 3
L978:
	movl	20(%ecx), %edx
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.p2align 4,,10
	.p2align 3
L977:
	.cfi_restore_state
	movl	20(%ecx), %edx
	movl	%ecx, %eax
	movl	%ecx, (%esp)
	call	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	movl	(%esp), %ecx
	testb	%al, %al
	je	L959
	movl	8(%ecx), %eax
	xorl	%ecx, %ecx
	movl	20(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L964
	movzwl	(%edx), %ecx
L964:
	movw	%cx, 178(%eax)
	jmp	L959
	.cfi_endproc
LFE141:
	.p2align 4
	.def	__Z12pShotgunHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pShotgunHideP18PANEL_SPRITEstruct:
LFB142:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L983
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L986
L981:
	movswl	_tilesiz+2(,%ebx,4), %edx
L985:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L987
L979:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L986:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L981
	jmp	L985
	.p2align 4,,10
	.p2align 3
L983:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L979
L987:
	addw	$200, %dx
	movl	%ecx, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE142:
	.p2align 4
	.def	__Z9pRailHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pRailHideP18PANEL_SPRITEstruct:
LFB144:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L992
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L995
L990:
	movswl	_tilesiz+2(,%ebx,4), %edx
L994:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L996
L988:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L995:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L990
	jmp	L994
	.p2align 4,,10
	.p2align 3
L992:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L988
L996:
	addw	$200, %dx
	movl	%ecx, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE144:
	.p2align 4
	.def	__Z12pHotheadHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pHotheadHideP18PANEL_SPRITEstruct:
LFB145:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movzwl	38(%eax), %ecx
	leal	9(%ecx), %edx
	movswl	178(%eax), %ecx
	movw	%dx, 38(%eax)
	cmpl	$30719, %ecx
	ja	L1015
	movswl	%dx, %edx
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L1001
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0(,%ecx,4), %ebx
	testw	%bx, %bx
	jg	L1012
	movswl	_tilesiz(,%ecx,4), %ebx
L1012:
	addl	$215, %ebx
	cmpl	%edx, %ebx
	jge	L1016
L1003:
	movl	$216, %ebx
	movw	%bx, 38(%eax)
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jle	L1007
	jmp	L1013
	.p2align 4,,10
	.p2align 3
L1001:
	movswl	_tilesiz(,%ecx,4), %ebx
	addl	$215, %ebx
	cmpl	%edx, %ebx
	jge	L1008
L1010:
	movl	$216, %edx
	movw	%dx, 38(%eax)
L1007:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L1013:
	addw	$200, %dx
	movw	%dx, 42(%eax)
	movl	20(%eax), %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.p2align 4,,10
	.p2align 3
L1015:
	.cfi_restore_state
	cmpw	$215, %dx
	jle	L999
L1006:
	movl	$216, %edx
	movw	%dx, 38(%eax)
	movl	$200, %edx
	movw	%dx, 42(%eax)
	movl	20(%eax), %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.p2align 4,,10
	.p2align 3
L999:
	.cfi_restore_state
	cmpw	$199, 42(%eax)
	jg	L1006
L997:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1008:
	.cfi_restore_state
	movswl	_tilesiz+2(,%ecx,4), %edx
	movswl	42(%eax), %ebx
	addl	$199, %edx
	cmpl	%edx, %ebx
	jg	L1010
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1016:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L1017
	movswl	_tilesiz+2(,%ecx,4), %edx
	movswl	42(%eax), %ebx
	addl	$199, %edx
	cmpl	%edx, %ebx
	jg	L1003
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1017:
	.cfi_restore_state
	leal	199(%edx), %ebx
	movswl	42(%eax), %edx
	cmpl	%edx, %ebx
	jl	L1003
	jmp	L997
	.cfi_endproc
LFE145:
	.p2align 4
	.def	__Z10pMicroHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pMicroHideP18PANEL_SPRITEstruct:
LFB147:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L1022
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1025
L1020:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1024:
	leal	224(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L1026
L1018:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1025:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1020
	jmp	L1024
	.p2align 4,,10
	.p2align 3
L1022:
	movl	$224, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L1018
L1026:
	addw	$225, %dx
	movl	$160, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	movw	%ax, 38(%ecx)
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE147:
	.p2align 4
	.def	__Z10pHeartHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pHeartHideP18PANEL_SPRITEstruct:
LFB148:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L1031
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1034
L1029:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1033:
	leal	211(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L1035
L1027:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1034:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1029
	jmp	L1033
	.p2align 4,,10
	.p2align 3
L1031:
	movl	$211, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L1027
L1035:
	addw	$212, %dx
	movl	%ecx, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE148:
	.p2align 4
	.def	__Z12pGrenadeHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pGrenadeHideP18PANEL_SPRITEstruct:
LFB149:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L1040
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1043
L1038:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1042:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L1044
L1036:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1043:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1038
	jmp	L1042
	.p2align 4,,10
	.p2align 3
L1040:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L1036
L1044:
	addw	$234, %dx
	movl	$135, %eax
	movl	$117965184, 232(%ecx)
	movw	%dx, 42(%ecx)
	movl	$680, %edx
	movw	%ax, 38(%ecx)
	movl	%ecx, %eax
	movw	%dx, 190(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE149:
	.p2align 4
	.def	__Z9pMineHideP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pMineHideP18PANEL_SPRITEstruct:
LFB150:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L1049
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1052
L1047:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1051:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L1053
L1045:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1052:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1047
	jmp	L1051
	.p2align 4,,10
	.p2align 3
L1049:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L1045
L1053:
	addw	$200, %dx
	movl	$210, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	movw	%ax, 38(%ecx)
	movl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE150:
	.p2align 4
	.globl	__Z9pFistHideP18PANEL_SPRITEstruct
	.def	__Z9pFistHideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z9pFistHideP18PANEL_SPRITEstruct:
LFB151:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ecx
	movzwl	42(%ecx), %eax
	movswl	178(%ecx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%ecx)
	cmpl	$30719, %ebx
	ja	L1058
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1061
L1056:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1060:
	leal	199(%edx), %ebx
	cwtl
	cmpl	%ebx, %eax
	jg	L1062
L1054:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1061:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1056
	jmp	L1060
	.p2align 4,,10
	.p2align 3
L1058:
	movl	$199, %ebx
	cwtl
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	jle	L1054
L1062:
	addw	$200, %dx
	movl	%ecx, %eax
	movw	%dx, 42(%ecx)
	movl	20(%ecx), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17pWeaponUnHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	.cfi_endproc
LFE151:
	.p2align 4
	.globl	__Z9SwordBlurP18PANEL_SPRITEstruct
	.def	__Z9SwordBlurP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z9SwordBlurP18PANEL_SPRITEstruct:
LFB152:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	248(%edx), %eax
	movl	4(%edx), %ebx
	movl	(%edx), %ecx
	subl	$3, %eax
	movw	%ax, 248(%edx)
	testw	%ax, %ax
	jle	L1069
	cmpw	$6, %ax
	jg	L1066
	orl	$32, 204(%edx)
L1066:
	addw	$10, 244(%edx)
	movl	%ecx, (%ebx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	32(%edx), %eax
	subl	$1, 208(%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17InsertPanelSpriteP12PLAYERstructP18PANEL_SPRITEstruct
	.p2align 4,,10
	.p2align 3
L1069:
	.cfi_restore_state
	movl	%ecx, (%ebx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE152:
	.p2align 4
	.globl	__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct
	.def	__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct:
LFB155:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	180(%edx), %ebx
	addl	$12, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1071
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1077
L1072:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1076:
	addl	$199, %ecx
L1071:
	cwtl
	cmpl	%ecx, %eax
	jg	L1078
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1077:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1072
	jmp	L1076
	.p2align 4,,10
	.p2align 3
L1078:
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE155:
	.p2align 4
	.globl	__Z13pSwordRetractP18PANEL_SPRITEstruct
	.def	__Z13pSwordRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pSwordRetractP18PANEL_SPRITEstruct:
LFB156:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1080
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1086
L1081:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1085:
	addl	$199, %ecx
L1080:
	cwtl
	cmpl	%ecx, %eax
	jg	L1087
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1086:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1081
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1087:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23104(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE156:
	.p2align 4
	.globl	__Z12pStarRetractP18PANEL_SPRITEstruct
	.def	__Z12pStarRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z12pStarRetractP18PANEL_SPRITEstruct:
LFB158:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$207, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1089
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1095
L1090:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1094:
	addl	$207, %ecx
L1089:
	cwtl
	cmpl	%ecx, %eax
	jg	L1096
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1095:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1090
	jmp	L1094
	.p2align 4,,10
	.p2align 3
L1096:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23056(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE158:
	.p2align 4
	.def	__Z17pUziReloadRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z17pUziReloadRetractP18PANEL_SPRITEstruct:
LFB160:
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
	movl	24(%esp), %eax
	movswl	232(%eax), %edx
	movswl	190(%eax), %ebp
	movl	8(%eax), %ecx
	leal	512(%edx), %esi
	movswl	_sintable(%edx,%edx), %edx
	andl	$2047, %esi
	movl	40(%ecx), %ebx
	movl	36(%ecx), %edi
	imull	%ebp, %edx
	movswl	_sintable(%esi,%esi), %esi
	imull	%ebp, %esi
	movzwl	190(%eax), %ebp
	imull	$-3, %edx, %edx
	addl	$54, %ebp
	leal	(%esi,%esi,2), %esi
	movw	%bp, 190(%eax)
	sarl	$6, %edx
	sarl	$6, %esi
	subl	%edx, 40(%eax)
	subl	%edx, %ebx
	subl	%esi, 36(%eax)
	subl	%esi, %edi
	movl	$200, %edx
	movl	%ebx, %esi
	movl	%ebx, 40(%ecx)
	movswl	178(%ecx), %ebx
	movl	%edi, 36(%ecx)
	sarl	$16, %esi
	cmpl	$30719, %ebx
	ja	L1098
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1104
L1099:
	movswl	_tilesiz+2(,%ebx,4), %edx
L1103:
	addl	$200, %edx
L1098:
	cmpl	%edx, %esi
	jg	L1105
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
L1104:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %edx
	testw	%dx, %dx
	jle	L1099
	jmp	L1103
	.p2align 4,,10
	.p2align 3
L1105:
	xorl	%edx, %edx
	movl	$_ps_UziDoneReload, 12(%ecx)
	movw	%dx, 228(%ecx)
	movzwl	_ps_UziDoneReload, %edx
	movw	%dx, 178(%ecx)
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
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
LFE160:
	.p2align 4
	.def	__Z11pUziRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pUziRetractP18PANEL_SPRITEstruct:
LFB161:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movzwl	42(%eax), %ebx
	leal	9(%ebx), %edx
	movswl	178(%eax), %ebx
	movw	%dx, 42(%eax)
	cmpl	$30719, %ebx
	ja	L1107
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1120
L1108:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1119:
	addl	$199, %ecx
L1107:
	movswl	%dx, %edx
	cmpl	%ecx, %edx
	jle	L1106
	movl	204(%eax), %edx
	testb	$16, %dl
	je	L1110
L1113:
	movl	32(%eax), %edx
	andl	$-4097, 22968(%edx)
	movl	32(%eax), %edx
	movl	$0, 23064(%edx)
L1111:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L1106:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1120:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1108
	jmp	L1119
	.p2align 4,,10
	.p2align 3
L1110:
	testb	$1, %dl
	jne	L1113
	andl	$2, %edx
	je	L1113
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L1111
	cmpl	8(%edx), %eax
	jne	L1111
	movl	$0, 8(%edx)
	jmp	L1111
	.cfi_endproc
LFE161:
	.p2align 4
	.globl	__Z9pUziShellP18PANEL_SPRITEstruct
	.def	__Z9pUziShellP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z9pUziShellP18PANEL_SPRITEstruct:
LFB163:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %eax
	movl	12(%eax), %edx
	movzwl	38(%eax), %ebx
	testl	%edx, %edx
	je	L1122
	testb	$1, 19(%edx)
	jne	L1132
L1122:
	addl	$9, %ebx
L1123:
	movswl	240(%eax), %ecx
	movl	$3, %edx
	movw	%bx, 38(%eax)
	addl	$10, %ebx
	movswl	238(%eax), %esi
	sall	%cl, %edx
	movl	200(%eax), %ecx
	addw	236(%eax), %dx
	andl	$1023, %edx
	movw	%cx, 42(%eax)
	movw	%dx, 236(%eax)
	movswl	_sintable(%edx,%edx), %edx
	negl	%edx
	imull	%esi, %edx
	sarl	$14, %edx
	addl	%ecx, %edx
	movw	%dx, 42(%eax)
	cmpw	$340, %bx
	ja	L1133
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
L1132:
	.cfi_restore_state
	subl	$9, %ebx
	jmp	L1123
	.p2align 4,,10
	.p2align 3
L1133:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
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
LFE163:
	.p2align 4
	.globl	__Z13pShotgunShellP18PANEL_SPRITEstruct
	.def	__Z13pShotgunShellP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pShotgunShellP18PANEL_SPRITEstruct:
LFB164:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	204(%eax), %ecx
	movl	36(%eax), %edx
	testl	$2097152, %ecx
	jne	L1143
	andl	$4194304, %ecx
	jne	L1144
L1136:
	addl	224(%eax), %edx
	movl	%edx, 36(%eax)
	sarl	$16, %edx
	cmpw	$320, %dx
	ja	L1137
	cmpw	$200, 42(%eax)
	jg	L1137
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1144:
	.cfi_restore_state
	movl	220(%eax), %ecx
	addl	216(%eax), %ecx
	movl	%ecx, 216(%eax)
	leal	(%ecx,%ecx,2), %ecx
	addl	%ecx, 40(%eax)
	jmp	L1136
	.p2align 4,,10
	.p2align 3
L1137:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1143:
	.cfi_restore_state
	movl	%edx, 4(%esp)
	call	__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0
	movl	4(%esp), %edx
	jmp	L1136
	.cfi_endproc
LFE164:
	.p2align 4
	.def	__Z15pShotgunRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z15pShotgunRetractP18PANEL_SPRITEstruct:
LFB166:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$249, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1146
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1152
L1147:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1151:
	addl	$249, %ecx
L1146:
	cwtl
	cmpl	%ecx, %eax
	jg	L1153
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1152:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1147
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1153:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movswl	250(%edx), %ecx
	movl	$0, 23052(%eax,%ecx,4)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	__Z15pHotheadRetractP18PANEL_SPRITEstruct
	.def	__Z15pHotheadRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z15pHotheadRetractP18PANEL_SPRITEstruct:
LFB168:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1155
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1161
L1156:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1160:
	addl	$199, %ecx
L1155:
	cwtl
	cmpl	%ecx, %eax
	jg	L1162
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1161:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1156
	jmp	L1160
	.p2align 4,,10
	.p2align 3
L1162:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23084(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE168:
	.p2align 4
	.globl	__Z7pOnFireP18PANEL_SPRITEstruct
	.def	__Z7pOnFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z7pOnFireP18PANEL_SPRITEstruct:
LFB170:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %edx
	movl	32(%edx), %eax
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	cmpw	$-1, 196(%eax)
	jl	L1169
	movzwl	42(%edx), %eax
	je	L1170
	subl	$2, %eax
	movl	$190, %ecx
	cmpw	%cx, %ax
	cmovl	%ecx, %eax
	movw	%ax, 42(%edx)
L1163:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1170:
	.cfi_restore_state
	addl	$1, %eax
	movw	%ax, 42(%edx)
	cmpw	$230, %ax
	jle	L1163
L1169:
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
LFE170:
	.p2align 4
	.globl	__Z13pMicroRetractP18PANEL_SPRITEstruct
	.def	__Z13pMicroRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pMicroRetractP18PANEL_SPRITEstruct:
LFB172:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$204, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1172
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1178
L1173:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1177:
	addl	$204, %ecx
L1172:
	cwtl
	cmpl	%ecx, %eax
	jg	L1179
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1178:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1173
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1179:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23068(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE172:
	.p2align 4
	.def	__Z13pHeartRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pHeartRetractP18PANEL_SPRITEstruct:
LFB174:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$211, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1181
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1187
L1182:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1186:
	addl	$211, %ecx
L1181:
	cwtl
	cmpl	%ecx, %eax
	jg	L1188
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1187:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1182
	jmp	L1186
	.p2align 4,,10
	.p2align 3
L1188:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23088(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE174:
	.p2align 4
	.def	__Z11pHeartBloodP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pHeartBloodP18PANEL_SPRITEstruct:
LFB176:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %eax
	movl	204(%eax), %ecx
	movl	36(%eax), %edx
	testl	$2097152, %ecx
	jne	L1198
	andl	$4194304, %ecx
	jne	L1199
L1191:
	addl	224(%eax), %edx
	movl	%edx, 36(%eax)
	sarl	$16, %edx
	cmpw	$320, %dx
	ja	L1192
	cmpw	$200, 42(%eax)
	jg	L1192
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1199:
	.cfi_restore_state
	movl	220(%eax), %ecx
	addl	216(%eax), %ecx
	movl	%ecx, 216(%eax)
	leal	(%ecx,%ecx,2), %ecx
	addl	%ecx, 40(%eax)
	jmp	L1191
	.p2align 4,,10
	.p2align 3
L1192:
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1198:
	.cfi_restore_state
	movl	%edx, 4(%esp)
	call	__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0
	movl	4(%esp), %edx
	jmp	L1191
	.cfi_endproc
LFE176:
	.p2align 4
	.def	__Z15pGrenadeRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z15pGrenadeRetractP18PANEL_SPRITEstruct:
LFB177:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1201
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1207
L1202:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1206:
	addl	$199, %ecx
L1201:
	cwtl
	cmpl	%ecx, %eax
	jg	L1208
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1207:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1202
	jmp	L1206
	.p2align 4,,10
	.p2align 3
L1208:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23072(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE177:
	.p2align 4
	.def	__Z12pMineRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pMineRetractP18PANEL_SPRITEstruct:
LFB179:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1210
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1216
L1211:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1215:
	addl	$199, %ecx
L1210:
	cwtl
	cmpl	%ecx, %eax
	jg	L1217
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1216:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1211
	jmp	L1215
	.p2align 4,,10
	.p2align 3
L1217:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23076(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE179:
	.p2align 4
	.globl	__Z13pChopsRetractP18PANEL_SPRITEstruct
	.def	__Z13pChopsRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z13pChopsRetractP18PANEL_SPRITEstruct:
LFB181:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %edx
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	28(%esp), %ebx
	movzwl	42(%ebx), %eax
	movswl	178(%ebx), %ecx
	addl	$18, %eax
	movw	%ax, 42(%ebx)
	cmpl	$30719, %ecx
	ja	L1219
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1232
L1220:
	movswl	_tilesiz+2(,%ecx,4), %edx
L1231:
	addl	$199, %edx
L1219:
	cwtl
	cmpl	%edx, %eax
	jg	L1233
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1232:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jle	L1220
	jmp	L1231
	.p2align 4,,10
	.p2align 3
L1233:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	32(%ebx), %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1222
	sall	$14, %eax
	cmpl	$860053724, %eax
	ja	L1222
L1224:
	movl	$0, 23108(%edx)
L1225:
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%eax)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1222:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L1224
	leal	8(%edx), %eax
	movl	%edx, (%esp)
	movl	$374, %ecx
	movl	%eax, 8(%esp)
	leal	4(%edx), %eax
	movl	%edx, 16(%esp)
	movl	$6312, %edx
	movl	%eax, 4(%esp)
	movl	$LC6, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	32(%ebx), %eax
	movl	$0, 23108(%eax)
	jmp	L1225
	.cfi_endproc
LFE181:
	.p2align 4
	.globl	__Z8FistBlurP18PANEL_SPRITEstruct
	.def	__Z8FistBlurP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z8FistBlurP18PANEL_SPRITEstruct:
LFB183:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	248(%edx), %eax
	movl	4(%edx), %ebx
	movl	(%edx), %ecx
	subl	$3, %eax
	movw	%ax, 248(%edx)
	testw	%ax, %ax
	jle	L1240
	cmpw	$6, %ax
	jg	L1237
	orl	$32, 204(%edx)
L1237:
	addw	$10, 244(%edx)
	movl	%ecx, (%ebx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	32(%edx), %eax
	subl	$1, 208(%edx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17InsertPanelSpriteP12PLAYERstructP18PANEL_SPRITEstruct
	.p2align 4,,10
	.p2align 3
L1240:
	.cfi_restore_state
	movl	%ecx, (%ebx)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE183:
	.p2align 4
	.def	__Z12pFistRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pFistRetractP18PANEL_SPRITEstruct:
LFB184:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$199, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1242
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1248
L1243:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1247:
	addl	$199, %ecx
L1242:
	cwtl
	cmpl	%ecx, %eax
	jg	L1249
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1248:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1243
	jmp	L1247
	.p2align 4,,10
	.p2align 3
L1249:
	movl	32(%edx), %eax
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movl	$0, 23052(%eax)
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE184:
	.section .rdata,"dr"
LC7:
	.ascii "psp\0"
	.text
	.p2align 4
	.globl	__Z8pSuicideP18PANEL_SPRITEstruct
	.def	__Z8pSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z8pSuicideP18PANEL_SPRITEstruct:
LFB186:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	testl	%ebx, %ebx
	je	L1253
L1251:
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%eax)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1253:
	.cfi_restore_state
	movl	$7272, %ecx
	movl	$LC6, %edx
	movl	$LC7, %eax
	call	__Z7_AssertPKcS0_j
	jmp	L1251
	.cfi_endproc
LFE186:
	.p2align 4
	.def	__Z15pUziStartReloadP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z15pUziStartReloadP18PANEL_SPRITEstruct:
LFB187:
	.cfi_startproc
	movl	32(%eax), %ecx
	movzbl	24092(%ecx), %edx
	cmpb	$2, %dl
	ja	L1255
	addl	$3, %edx
	movb	%dl, 24092(%ecx)
L1255:
	xorl	%edx, %edx
	movl	$_ps_UziEject, 12(%eax)
	movw	%dx, 228(%eax)
	movzwl	_ps_UziEject, %edx
	movw	%dx, 178(%eax)
	movl	204(%eax), %edx
	movl	%edx, %ecx
	orl	$16, %ecx
	andl	$1, %edx
	movl	%ecx, 204(%eax)
	je	L1254
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1254
	movl	16(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L1257
	movzwl	(%edx), %ecx
L1257:
	movw	%cx, 178(%eax)
L1254:
	ret
	.cfi_endproc
LFE187:
	.p2align 4
	.globl	__Z15InitWeaponSwordP12PLAYERstruct
	.def	__Z15InitWeaponSwordP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitWeaponSwordP12PLAYERstruct:
LFB191:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1266
	testb	$32, 23013(%eax)
	je	L1266
	testb	$16, 22969(%eax)
	jne	L1266
	jmp	__Z15InitWeaponSwordP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1266:
	ret
	.cfi_endproc
LFE191:
	.p2align 4
	.globl	__Z12pSwordAttackP18PANEL_SPRITEstruct
	.def	__Z12pSwordAttackP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z12pSwordAttackP18PANEL_SPRITEstruct:
LFB193:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	__Z15InitSwordAttackP12PLAYERstruct
	.cfi_endproc
LFE193:
	.p2align 4
	.globl	__Z14InitWeaponStarP12PLAYERstruct
	.def	__Z14InitWeaponStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitWeaponStarP12PLAYERstruct:
LFB194:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1272
	testb	$2, 23012(%eax)
	je	L1272
	cmpw	$2, 23018(%eax)
	jle	L1272
	testb	$16, 22969(%eax)
	jne	L1272
	jmp	__Z14InitWeaponStarP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1272:
	ret
	.cfi_endproc
LFE194:
	.p2align 4
	.globl	__Z10pStarThrowP18PANEL_SPRITEstruct
	.def	__Z10pStarThrowP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z10pStarThrowP18PANEL_SPRITEstruct:
LFB195:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	__Z8InitStarP12PLAYERstruct
	.cfi_endproc
LFE195:
	.p2align 4
	.globl	__Z13InitWeaponUziP12PLAYERstruct
	.def	__Z13InitWeaponUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13InitWeaponUziP12PLAYERstruct:
LFB196:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1278
	movb	$3, 23117(%eax)
	testb	$8, 23012(%eax)
	je	L1278
	testb	$16, 22969(%eax)
	jne	L1278
	jmp	__Z13InitWeaponUziP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1278:
	ret
	.cfi_endproc
LFE196:
	.p2align 4
	.globl	__Z8pUziFireP18PANEL_SPRITEstruct
	.def	__Z8pUziFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z8pUziFireP18PANEL_SPRITEstruct:
LFB198:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movl	24(%esp), %ebx
	movl	32(%ebx), %esi
	movl	%esi, %eax
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1283
	testb	$2, 204(%ebx)
	je	L1285
	cmpb	$0, 24092(%esi)
	jne	L1283
L1285:
	movl	32(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z7InitUziP12PLAYERstruct
	movl	12(%ebx), %edx
	movl	32(%ebx), %eax
	testl	%edx, %edx
	je	L1286
	testb	$1, 19(%edx)
	jne	L1316
L1286:
	cmpb	$0, 23295(%eax)
	sete	23295(%eax)
	je	L1317
L1287:
	testb	$2, 204(%ebx)
	je	L1288
	movzwl	23022(%esi), %edx
	imulw	$23593, %dx, %ax
	testb	$8, 22970(%esi)
	je	L1289
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1289
	addw	$1308, %ax
	rorw	$2, %ax
	cmpw	$654, %ax
	ja	L1283
L1314:
	addl	$1, %edx
	movw	%dx, 23022(%esi)
L1283:
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
L1289:
	.cfi_restore_state
	addw	$1310, %ax
	rorw	%ax
	cmpw	$1310, %ax
	jbe	L1314
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
L1316:
	.cfi_restore_state
	cmpb	$0, 23294(%eax)
	sete	23294(%eax)
	jne	L1287
	movswl	348(%eax), %eax
	movl	$-3, %edx
	call	__Z9InitShellss.isra.0
	jmp	L1287
	.p2align 4,,10
	.p2align 3
L1288:
	movl	32(%ebx), %eax
	movl	$-1, %ecx
	movl	$-1, %edx
	movswl	348(%eax), %eax
	movl	$32, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1283
	movzwl	23022(%esi), %eax
	imulw	$23593, %ax, %ax
	testb	$8, 22970(%esi)
	je	L1290
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L1290
	addw	$1308, %ax
	rorw	$2, %ax
	cmpw	$654, %ax
	ja	L1283
L1291:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z15pUziStartReloadP18PANEL_SPRITEstruct
	.p2align 4,,10
	.p2align 3
L1290:
	.cfi_restore_state
	addw	$1310, %ax
	rorw	%ax
	cmpw	$1310, %ax
	ja	L1283
	jmp	L1291
	.p2align 4,,10
	.p2align 3
L1317:
	movswl	348(%eax), %eax
	movl	$-2, %edx
	call	__Z9InitShellss.isra.0
	jmp	L1287
	.cfi_endproc
LFE198:
	.p2align 4
	.def	__Z17SpawnShotgunShellP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z17SpawnShotgunShellP18PANEL_SPRITEstruct:
LFB202:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$-4, %edx
	movl	32(%eax), %eax
	movswl	348(%eax), %eax
	jmp	__Z9InitShellss.isra.0
	.cfi_endproc
LFE202:
	.p2align 4
	.def	__Z12pShotgunFireP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pShotgunFireP18PANEL_SPRITEstruct:
LFB203:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$-1, %ecx
	movl	$-1, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	32(%ebx), %eax
	movswl	348(%eax), %eax
	movl	$32, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	movl	%eax, 20(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z11InitShotgunP12PLAYERstruct
	.cfi_endproc
LFE203:
	.p2align 4
	.def	__Z9pRailFireP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pRailFireP18PANEL_SPRITEstruct:
LFB204:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$-1, %ecx
	movl	$-1, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	32(%ebx), %eax
	movswl	348(%eax), %eax
	movl	$16, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	cmpb	$0, 24096(%eax)
	movl	%eax, 20(%esp)
	jne	L1322
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z8InitRailP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1322:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z7InitEMPP12PLAYERstruct
	.cfi_endproc
LFE204:
	.p2align 4
	.def	__Z12pRailRetractP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pRailRetractP18PANEL_SPRITEstruct:
LFB205:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$249, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %edx
	movzwl	42(%edx), %eax
	movswl	178(%edx), %ebx
	addl	$9, %eax
	movw	%ax, 42(%edx)
	cmpl	$30719, %ebx
	ja	L1325
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L1331
L1326:
	movswl	_tilesiz+2(,%ebx,4), %ecx
L1330:
	addl	$249, %ecx
L1325:
	cwtl
	cmpl	%ecx, %eax
	jg	L1332
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1331:
	.cfi_restore_state
	movswl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ebx,4), %ecx
	testw	%cx, %cx
	jle	L1326
	jmp	L1330
	.p2align 4,,10
	.p2align 3
L1332:
	movl	32(%edx), %eax
	movl	%edx, 12(%esp)
	andl	$-4097, 22968(%eax)
	movl	32(%edx), %eax
	movswl	250(%edx), %ecx
	movl	$0, 23052(%eax,%ecx,4)
	movl	32(%edx), %eax
	movswl	348(%eax), %eax
	call	__Z18DeleteNoSoundOwners
	movl	12(%esp), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %eax
	movl	%eax, (%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE205:
	.p2align 4
	.globl	__Z17InitWeaponHotheadP12PLAYERstruct
	.def	__Z17InitWeaponHotheadP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17InitWeaponHotheadP12PLAYERstruct:
LFB207:
	.cfi_startproc
	movzbl	_SW_GameFlags, %eax
	movl	4(%esp), %edx
	andl	$1, %eax
	orb	_Prediction, %al
	jne	L1333
	testb	$1, 23013(%edx)
	je	L1333
	testb	$16, 22969(%edx)
	jne	L1333
	movl	%edx, %eax
	jmp	__Z17InitWeaponHotheadP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1333:
	ret
	.cfi_endproc
LFE207:
	.p2align 4
	.def	__Z14pHotheadAttackP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pHotheadAttackP18PANEL_SPRITEstruct:
LFB208:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	32(%ebx), %edx
	movzbl	23115(%edx), %eax
	cmpb	$1, %al
	je	L1339
	cmpb	$2, %al
	je	L1340
	testb	%al, %al
	jne	L1338
	movswl	348(%edx), %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	movl	%eax, 20(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z12InitFireballP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1340:
	.cfi_restore_state
	movswl	348(%edx), %eax
	movl	$16, 8(%esp)
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	movl	%eax, 20(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15InitSpellNapalmP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1339:
	.cfi_restore_state
	movswl	348(%edx), %eax
	movl	$20, 8(%esp)
	movl	$-1, %ecx
	movl	$-1, %edx
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	cmpw	$9, 23032(%eax)
	jg	L1343
L1338:
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1343:
	.cfi_restore_state
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13InitSpellRingP12PLAYERstruct.part.0
	.cfi_endproc
LFE208:
	.p2align 4
	.globl	__Z15InitWeaponMicroP12PLAYERstruct
	.def	__Z15InitWeaponMicroP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitWeaponMicroP12PLAYERstruct:
LFB210:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpb	$0, _Prediction
	jne	L1344
	testb	$16, 23012(%eax)
	je	L1344
	testb	$16, 22969(%eax)
	jne	L1344
	jmp	__Z15InitWeaponMicroP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L1344:
	ret
	.cfi_endproc
LFE210:
	.p2align 4
	.globl	__Z10pMicroFireP18PANEL_SPRITEstruct
	.def	__Z10pMicroFireP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z10pMicroFireP18PANEL_SPRITEstruct:
LFB211:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$-1, %edx
	movl	$-1, %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	32(%ebx), %eax
	movswl	348(%eax), %eax
	movl	$20, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %edx
	movzbl	23112(%edx), %eax
	cmpb	$1, %al
	je	L1350
	cmpb	$2, %al
	je	L1351
	testb	%al, %al
	je	L1350
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1350:
	.cfi_restore_state
	cmpb	$0, 24111(%edx)
	jne	L1354
	testb	$2, _DemoMDRFeatures
	je	L1359
L1354:
	movl	%edx, 20(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z15InitBunnyRocketP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1351:
	.cfi_restore_state
	leal	8(%edx), %eax
	movl	$9, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$486, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z8InitNukeP12PLAYERstruct
	movl	32(%ebx), %eax
	movb	$0, 24106(%eax)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1359:
	.cfi_restore_state
	movl	%edx, 20(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z10InitRocketP12PLAYERstruct
	.cfi_endproc
LFE211:
	.p2align 4
	.def	__Z12pHeartAttackP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pHeartAttackP18PANEL_SPRITEstruct:
LFB212:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$28, %eax
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
	movl	32(%ebx), %ebp
	movl	$9, 4(%esp)
	leal	8(%ebp), %edi
	leal	4(%ebp), %esi
	movl	%ebp, %edx
	movl	%edi, (%esp)
	movl	%esi, %ecx
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1361
	sall	$14, %eax
	cmpl	$860053724, %eax
	ja	L1361
L1362:
	movl	32(%ebx), %eax
	movl	%eax, 40(%esp)
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
	jmp	__Z15InitHeartAttackP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1361:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L1362
	movl	%ebp, 16(%esp)
	movl	$583, %ecx
	movl	$5299, %edx
	movl	$LC6, %eax
	movl	$9, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1362
	.cfi_endproc
LFE212:
	.p2align 4
	.def	__Z12pGrenadeFireP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pGrenadeFireP18PANEL_SPRITEstruct:
LFB213:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$-1, %ecx
	movl	$-1, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	movl	32(%ebx), %eax
	movswl	348(%eax), %eax
	movl	$32, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z8SpawnVisssiiii.isra.0
	movl	32(%ebx), %eax
	movl	%eax, 20(%esp)
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z11InitGrenadeP12PLAYERstruct
	.cfi_endproc
LFE213:
	.section .rdata,"dr"
LC8:
	.ascii "Weapon Holstered\0"
	.text
	.p2align 4
	.def	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct;	.scl	3;	.type	32;	.endef
__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct:
LFB214:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	32(%eax), %ebx
	movl	22968(%ebx), %ecx
	testb	$2, %cl
	jne	L1380
	testl	%ecx, %ecx
	js	L1381
	movl	22976(%ebx), %ecx
	testb	$64, 419(%ebx)
	je	L1374
	andl	$1073741824, %ecx
	jne	L1382
L1375:
	movl	4(%esp), %ebx
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1374:
	.cfi_restore_state
	orl	$1073741824, %ecx
	movl	%ecx, 22976(%ebx)
	jmp	L1375
	.p2align 4,,10
	.p2align 3
L1380:
	xorl	%ebx, %ebx
	movl	%edx, 12(%eax)
	orl	$1024, 204(%eax)
	movw	%bx, 228(%eax)
	movzwl	(%edx), %edx
	movw	%dx, 178(%eax)
L1371:
	movl	4(%esp), %ebx
	movl	$1, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1382:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	%edx, %esi
	movl	$LC8, %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	(%esp), %ecx
	movl	32(%ecx), %eax
	andl	$-1073741825, 22976(%eax)
	xorl	%eax, %eax
	movw	%ax, 228(%ecx)
	movl	%esi, 12(%ecx)
	movzwl	(%esi), %eax
	movw	%ax, 178(%ecx)
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L1371
	.p2align 4,,10
	.p2align 3
L1381:
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	orl	$128, 204(%eax)
	movw	%cx, 228(%eax)
	movzwl	(%edx), %edx
	movw	%dx, 178(%eax)
	jmp	L1371
	.cfi_endproc
LFE214:
	.p2align 4
	.globl	__Z10pSwordRestP18PANEL_SPRITEstruct
	.def	__Z10pSwordRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z10pSwordRestP18PANEL_SPRITEstruct:
LFB215:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	movl	$_ps_SwordHide, %edx
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1383
	movl	200(%ebx), %eax
	movl	$200, %edx
	addl	$3, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 200(%ebx)
	movw	%ax, 42(%ebx)
	testb	$4, 204(%ebx)
	jne	L1385
	movswl	38(%ebx), %edx
	cwtl
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movl	%eax, 200(%ebx)
	movl	%edx, 196(%ebx)
	movw	%cx, 242(%ebx)
L1385:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %ecx
	movl	204(%ebx), %eax
	testb	$2, 418(%ecx)
	je	L1403
	testb	$2, 22978(%ecx)
	jne	L1388
L1403:
	testl	$1048576, %eax
	jne	L1388
L1383:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1388:
	.cfi_restore_state
	andl	$-1048577, %eax
	xorl	%edx, %edx
	movl	%eax, 204(%ebx)
	movl	24(%ebx), %eax
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1389
	movzwl	(%eax), %edx
L1389:
	movl	$2500, %eax
	movw	%dx, 178(%ebx)
	movl	$1024, %edx
	movw	%ax, 190(%ebx)
	movl	_randomseed, %eax
	movw	%dx, 232(%ebx)
	leal	(%eax,%eax,4), %edx
	addl	$1, _krandcount
	leal	1(%eax,%edx,4), %eax
	movl	$320, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1390
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL13SwordAngTable(%edx,%edx), %edx
L1390:
	movw	%dx, 23004(%ecx)
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.cfi_endproc
LFE215:
	.p2align 4
	.globl	__Z9pStarRestP18PANEL_SPRITEstruct
	.def	__Z9pStarRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z9pStarRestP18PANEL_SPRITEstruct:
LFB217:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_ps_StarHide, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	%ebx, %eax
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1422
L1404:
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
L1422:
	.cfi_restore_state
	andl	$1048576, %esi
	testb	$4, 204(%ebx)
	jne	L1406
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$655360, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1406:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1407
	testl	%esi, %esi
	je	L1423
L1408:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1404
	movl	32(%ebx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1410
	movzwl	(%eax), %edx
L1410:
	movw	%dx, 178(%ebx)
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1407:
	.cfi_restore_state
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%esi, %edx
	jne	L1408
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
L1423:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE217:
	.p2align 4
	.def	__Z12pShotgunRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pShotgunRestP18PANEL_SPRITEstruct:
LFB218:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	$_ps_ShotgunHide, %edx
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	28(%esp), %ebx
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	movl	32(%ebx), %eax
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	204(%ebx), %edi
	movzwl	23020(%eax), %esi
	movzbl	24095(%eax), %eax
	movb	%al, 4(%esp)
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1424
	andl	$1048576, %edi
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	204(%ebx), %ecx
	movl	%edi, %eax
	movzwl	56(%ebx), %ebp
	shrl	$20, %eax
	andl	$1, %eax
	movb	%al, 3(%esp)
	movl	32(%ebx), %eax
	movzbl	24093(%eax), %edx
	testw	%si, %si
	jle	L1426
	cmpb	$1, %dl
	je	L1471
L1426:
	cmpw	$-1, %bp
	je	L1442
	testb	%dl, %dl
	je	L1429
L1473:
	cmpb	$1, %dl
	je	L1430
L1432:
	andl	$4, %ecx
	jne	L1433
	movswl	38(%ebx), %edx
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%edx, 196(%ebx)
	movswl	42(%ebx), %edx
	movl	%edx, 200(%ebx)
L1433:
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	je	L1470
	testb	$2, 22978(%eax)
	jne	L1435
L1470:
	cmpb	$0, 3(%esp)
	je	L1467
L1435:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1469
	movl	32(%ebx), %eax
	orl	$8, 204(%ebx)
	cmpb	$0, 24093(%eax)
	jne	L1439
	leal	-1(%esi), %edx
	movb	%dl, 24095(%eax)
	movl	32(%ebx), %eax
L1439:
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	32(%ebx), %eax
	movl	$0, %edx
	cmpb	$0, 24093(%eax)
	movw	%dx, 228(%ebx)
	jne	L1440
	movzwl	_ps_ShotgunFire, %edx
	movl	$_ps_ShotgunFire, 12(%ebx)
	movw	%dx, 178(%ebx)
L1467:
	movl	20(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	16(%esp), %edi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1429:
	.cfi_restore_state
	movl	$-1, %ebp
	orl	$67108864, 48(%ebx)
	movw	%bp, 54(%ebx)
	jmp	L1432
	.p2align 4,,10
	.p2align 3
L1471:
	testl	$3, %esi
	je	L1427
	movzbl	4(%esp), %edx
	movl	%edx, 4(%esp)
	movswl	%si, %edx
	cmpl	%edx, 4(%esp)
	jne	L1472
L1427:
	cmpw	$-1, %bp
	jne	L1430
L1442:
	movl	$-1114084, 56(%ebx)
	movzbl	24093(%eax), %edx
	testb	%dl, %dl
	jne	L1473
	jmp	L1429
	.p2align 4,,10
	.p2align 3
L1469:
	movl	20(%esp), %ebp
	.cfi_restore 5
L1424:
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
L1430:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$2078, %edi
	orl	$67108864, 48(%ebx)
	movw	%di, 54(%ebx)
	jmp	L1432
	.p2align 4,,10
	.p2align 3
L1440:
	movzwl	_ps_ShotgunAutoFire, %edx
	movl	$_ps_ShotgunAutoFire, 12(%ebx)
	movw	%dx, 178(%ebx)
	jmp	L1467
	.p2align 4,,10
	.p2align 3
L1472:
	movl	%ecx, %edx
	andl	$8, %edx
	orl	%edi, %edx
	setne	3(%esp)
	jmp	L1427
	.cfi_endproc
LFE218:
	.p2align 4
	.def	__Z16pShotgunRestTestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z16pShotgunRestTestP18PANEL_SPRITEstruct:
LFB222:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	16(%esp), %ebx
	movl	32(%ebx), %edx
	movl	204(%ebx), %eax
	movzbl	24093(%edx), %ecx
	cmpb	$1, %cl
	je	L1498
L1475:
	shrl	$20, %eax
	movl	%eax, %ecx
	movzwl	23020(%edx), %eax
	andl	$1, %ecx
	testw	%ax, %ax
	jle	L1479
	testb	$3, %al
	je	L1499
L1479:
	movl	$_ps_ShotgunHide, %edx
	movl	%ebx, %eax
	movb	%cl, 3(%esp)
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1474
	testb	$4, 204(%ebx)
	movzbl	3(%esp), %ecx
	jne	L1481
	movswl	38(%ebx), %eax
	movl	$3, %edx
	movl	$786432, 236(%ebx)
	movw	%dx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1481:
	movl	32(%ebx), %eax
	movb	%cl, 3(%esp)
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	movzbl	3(%esp), %ecx
	testb	$2, 418(%eax)
	je	L1500
	testb	$2, 22978(%eax)
	jne	L1483
	andl	$1, %ecx
	jne	L1483
L1484:
	movl	28(%ebx), %edx
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	xorl	%eax, %eax
	movl	%edx, 12(%ebx)
	testl	%edx, %edx
	je	L1486
	movzwl	(%edx), %eax
L1486:
	movw	%ax, 178(%ebx)
L1474:
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1498:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movzwl	23020(%edx), %esi
	testw	%si, %si
	jle	L1497
	andl	$3, %esi
	je	L1501
L1497:
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1500:
	testb	%cl, %cl
	je	L1484
L1483:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1474
	movl	32(%ebx), %eax
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z18DoPlayerChooseYellP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1499:
	.cfi_restore_state
	movzwl	_ps_ShotgunReload, %eax
	xorl	%ecx, %ecx
	andl	$-9, 204(%ebx)
	movw	%cx, 228(%ebx)
	movl	$_ps_ShotgunReload, 12(%ebx)
	movw	%ax, 178(%ebx)
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1501:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%eax, %ecx
	xorl	%esi, %esi
	movl	$_ps_ShotgunReload, 12(%ebx)
	andl	$-9, %ecx
	movw	%si, 228(%ebx)
	movl	%ecx, 204(%ebx)
	movzwl	_ps_ShotgunReload, %ecx
	movw	%cx, 178(%ebx)
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L1475
	.cfi_endproc
LFE222:
	.p2align 4
	.def	__Z11pRailOkTestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z11pRailOkTestP18PANEL_SPRITEstruct:
LFB225:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	movl	$_ps_RailHide, %edx
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1505
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1505:
	.cfi_restore_state
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE225:
	.p2align 4
	.def	__Z9pRailRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pRailRestP18PANEL_SPRITEstruct:
LFB228:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	testb	$1, _SW_GameFlags
	je	L1524
L1506:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1524:
	.cfi_restore_state
	movl	$_ps_RailHide, %edx
	movl	%ebx, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1523
	movl	%esi, %eax
	andl	$1048576, %eax
	movl	%eax, %esi
	testb	$4, 204(%ebx)
	jne	L1508
	movswl	38(%ebx), %eax
	movl	$3, %edx
	movl	$786432, 236(%ebx)
	movw	%dx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1508:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1509
	testl	%esi, %esi
	je	L1525
L1510:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1523
	movl	32(%ebx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	32(%ebx), %eax
	cmpb	$0, 24096(%eax)
	movl	$0, %eax
	movw	%ax, 228(%ebx)
	jne	L1512
	movzwl	_ps_RailFire, %eax
	movl	$_ps_RailFire, 12(%ebx)
	movw	%ax, 178(%ebx)
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1506
	.p2align 4,,10
	.p2align 3
L1509:
	.cfi_restore_state
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%esi, %edx
	jne	L1510
L1523:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1512:
	.cfi_restore_state
	movzwl	_ps_RailFireEMP, %eax
	movl	$_ps_RailFireEMP, 12(%ebx)
	movw	%ax, 178(%ebx)
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1506
	.p2align 4,,10
	.p2align 3
L1525:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE228:
	.p2align 4
	.def	__Z13pRailRestTestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pRailRestTestP18PANEL_SPRITEstruct:
LFB229:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_ps_RailHide, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	%ebx, %eax
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1542
L1526:
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
L1542:
	.cfi_restore_state
	andl	$1048576, %esi
	testb	$4, 204(%ebx)
	jne	L1528
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1528:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1529
	testl	%esi, %esi
	je	L1531
L1530:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1526
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z18DoPlayerChooseYellP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1529:
	.cfi_restore_state
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%esi, %edx
	jne	L1530
L1531:
	movl	28(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1532
	movzwl	(%eax), %edx
L1532:
	movw	%dx, 178(%ebx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE229:
	.p2align 4
	.def	__Z12pHotheadRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pHotheadRestP18PANEL_SPRITEstruct:
LFB230:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	testb	$1, _SW_GameFlags
	je	L1563
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1563:
	.cfi_restore_state
	movl	$_ps_HotheadHide, %edx
	movl	%ebx, %eax
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1562
	movl	%esi, %eax
	andl	$1048576, %eax
	movl	%eax, %esi
	movl	32(%ebx), %eax
	movzbl	23115(%eax), %edx
	movl	_HotheadRestStates(,%edx,4), %edx
	cmpl	28(%ebx), %edx
	je	L1545
	movl	%edx, 28(%ebx)
	movzbl	23115(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%ebx)
	movl	_HotheadRestStates(,%edx,4), %edx
	movl	%edx, 12(%ebx)
	movzwl	(%edx), %edx
	movw	%dx, 178(%ebx)
L1545:
	testb	$4, 204(%ebx)
	jne	L1546
	movswl	38(%ebx), %edx
	movl	$2, %ecx
	movl	$655360, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%edx, 196(%ebx)
	movswl	42(%ebx), %edx
	movl	%edx, 200(%ebx)
L1546:
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1547
	testl	%esi, %esi
	je	L1564
L1548:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1562
	movl	32(%ebx), %eax
	cmpw	$9, 23032(%eax)
	jle	L1565
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	32(%ebx), %eax
	movzbl	23115(%eax), %eax
	movl	_HotheadAttackStates(,%eax,4), %eax
L1551:
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	movw	%dx, 228(%ebx)
	movzwl	(%eax), %eax
	movl	$-589825, 56(%ebx)
	movw	%ax, 178(%ebx)
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1547:
	.cfi_restore_state
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%esi, %edx
	jne	L1548
L1562:
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1564:
	.cfi_restore_state
	movl	4(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1565:
	.cfi_restore_state
	movb	$0, 23115(%eax)
	movl	32(%ebx), %eax
	call	__Z8WeaponOKP12PLAYERstruct
	movl	32(%ebx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	32(%ebx), %eax
	movzbl	23115(%eax), %eax
	movl	_HotheadAttackStates(,%eax,4), %eax
	jmp	L1551
	.cfi_endproc
LFE230:
	.p2align 4
	.def	__Z10pMicroRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pMicroRestP18PANEL_SPRITEstruct:
LFB233:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$_ps_MicroHide, %edx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %ebx
	movl	%ebx, %eax
	movl	32(%ebx), %esi
	movl	204(%ebx), %edi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1596
L1566:
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
L1596:
	.cfi_restore_state
	movl	%ebx, %eax
	andl	$1048576, %edi
	call	__Z14pMicroOverlaysP18PANEL_SPRITEstruct.isra.0
	testb	$4, 204(%ebx)
	jne	L1568
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$655360, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1568:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	cmpb	$0, 24104(%esi)
	je	L1594
	imull	$24124, _myconnectindex, %edx
	movb	$0, 24104(%esi)
	movb	$1, 24106(%esi)
	movl	32(%ebx), %eax
	addl	$_Player, %edx
	cmpl	%edx, %esi
	je	L1597
L1570:
	testb	$2, 418(%eax)
	jne	L1574
L1602:
	testl	%edi, %edi
	je	L1598
L1575:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1566
	movl	32(%ebx), %eax
	movzbl	23112(%eax), %edx
	cmpw	$0, 23024(%eax)
	jle	L1599
	cmpb	$1, %dl
	ja	L1600
	xorl	%edx, %edx
	movl	$_ps_MicroSingleFire, 12(%ebx)
	movw	%dx, 228(%ebx)
	movzwl	_ps_MicroSingleFire, %edx
	movw	%dx, 178(%ebx)
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
	jmp	__Z18DoPlayerChooseYellP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1597:
	.cfi_restore_state
	imull	$1103515245, _wrandomseed, %edx
	movl	$32766, %ecx
	addl	$12345, %edx
	movl	%edx, _wrandomseed
	shrl	$16, %edx
	andl	$32767, %edx
	cmpl	%ecx, %edx
	cmova	%ecx, %edx
	sall	$14, %edx
	cmpl	$315087471, %edx
	ja	L1601
	cmpl	$157805871, %edx
	jbe	L1570
	cmpb	$0, _Prediction
	jne	L1570
	leal	4(%eax), %edx
	movl	%eax, (%esp)
	movl	$249, %ecx
	movl	%eax, 16(%esp)
	movl	$LC6, %eax
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$4906, %edx
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	.p2align 4
	.p2align 3
L1594:
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	je	L1602
L1574:
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%edi, %edx
	jne	L1575
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
L1598:
	.cfi_restore_state
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
	jmp	__Z8WeaponOKP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1599:
	.cfi_restore_state
	cmpb	$2, %dl
	jne	L1603
L1578:
	cmpb	$0, 23114(%eax)
	je	L1566
	xorl	%eax, %eax
	movl	$_ps_MicroSingleFire, 12(%ebx)
	movw	%ax, 228(%ebx)
	movzwl	_ps_MicroSingleFire, %eax
	movw	%ax, 178(%ebx)
	jmp	L1566
	.p2align 4,,10
	.p2align 3
L1603:
	movb	$0, 23114(%eax)
	movl	32(%ebx), %eax
	call	__Z8WeaponOKP12PLAYERstruct
	movl	32(%ebx), %eax
	movb	$1, 23114(%eax)
	jmp	L1566
	.p2align 4,,10
	.p2align 3
L1600:
	cmpb	$2, %dl
	jne	L1566
	jmp	L1578
L1601:
	cmpb	$0, _Prediction
	jne	L1570
	leal	4(%eax), %edx
	movl	%eax, (%esp)
	movl	$247, %ecx
	movl	%eax, 16(%esp)
	movl	$LC6, %eax
	movl	%edx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$4903, %edx
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	32(%ebx), %eax
	jmp	L1570
	.cfi_endproc
LFE233:
	.p2align 4
	.def	__Z10pHeartRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pHeartRestP18PANEL_SPRITEstruct:
LFB234:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_ps_HeartHide, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	%ebx, %eax
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1604
	movl	200(%ebx), %eax
	movl	$212, %edx
	andl	$1048576, %esi
	addl	$3, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 200(%ebx)
	movw	%ax, 42(%ebx)
	testb	$4, 204(%ebx)
	jne	L1606
	movswl	38(%ebx), %edx
	cwtl
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movl	%eax, 200(%ebx)
	movl	%edx, 196(%ebx)
	movw	%cx, 242(%ebx)
L1606:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	movl	22976(%eax), %edx
	testb	$2, 418(%eax)
	jne	L1607
	testl	%esi, %esi
	je	L1622
L1608:
	andl	$-131073, %edx
	movl	%edx, 22976(%eax)
	movl	32(%ebx), %eax
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	jne	L1623
L1604:
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
L1607:
	.cfi_restore_state
	movl	%edx, %ecx
	andl	$131072, %ecx
	orl	%esi, %ecx
	jne	L1608
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
L1623:
	.cfi_restore_state
	movl	32(%ebx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1610
	movzwl	(%eax), %edx
L1610:
	movw	%dx, 178(%ebx)
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
L1622:
	.cfi_restore_state
	orl	$131072, %edx
	movl	%edx, 22976(%eax)
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE234:
	.p2align 4
	.def	__Z12pGrenadeRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z12pGrenadeRestP18PANEL_SPRITEstruct:
LFB235:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_ps_GrenadeHide, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	%ebx, %eax
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1642
L1624:
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
L1642:
	.cfi_restore_state
	andl	$1048576, %esi
	testb	$4, 204(%ebx)
	jne	L1626
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1626:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1627
	testl	%esi, %esi
	je	L1643
L1628:
	andl	$-1048577, 204(%ebx)
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L1624
	movl	32(%ebx), %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1630
	movzwl	(%eax), %edx
L1630:
	movw	%dx, 178(%ebx)
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
L1627:
	.cfi_restore_state
	movl	22976(%eax), %edx
	andl	$131072, %edx
	orl	%esi, %edx
	jne	L1628
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
L1643:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE235:
	.p2align 4
	.def	__Z9pMineRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pMineRestP18PANEL_SPRITEstruct:
LFB236:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$_ps_MineHide, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	%ebx, %eax
	movl	204(%ebx), %esi
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L1659
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
L1659:
	.cfi_restore_state
	testb	$4, 204(%ebx)
	jne	L1646
	movswl	38(%ebx), %eax
	movl	$3, %ecx
	movl	$786432, 236(%ebx)
	movw	%cx, 242(%ebx)
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
L1646:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	testb	$2, 418(%eax)
	jne	L1647
	andl	$1048576, %esi
	je	L1648
L1650:
	andl	$-1048577, 204(%ebx)
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1651
	movzwl	(%eax), %edx
L1651:
	movw	%dx, 178(%ebx)
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
L1647:
	.cfi_restore_state
	testb	$2, 22978(%eax)
	jne	L1650
	andl	$1048576, %esi
	jne	L1650
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
L1648:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.cfi_endproc
LFE236:
	.p2align 4
	.def	__Z9pFistRestP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z9pFistRestP18PANEL_SPRITEstruct:
LFB237:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	movl	$_ps_FistHide, %edx
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L1660
	movl	200(%ebx), %eax
	movl	$200, %edx
	addl	$3, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 200(%ebx)
	movw	%ax, 42(%ebx)
	testb	$4, 204(%ebx)
	jne	L1662
	movl	$786432, 236(%ebx)
	cwtl
	movswl	38(%ebx), %edx
	movl	%eax, 200(%ebx)
	movl	$3, %eax
	movl	%edx, 196(%ebx)
	movw	%ax, 242(%ebx)
L1662:
	movl	32(%ebx), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	204(%ebx), %eax
	andl	$1048576, %eax
	cmpl	$_ps_Kick, 24(%ebx)
	je	L1682
L1663:
	movl	32(%ebx), %edx
	movb	$0, 24110(%edx)
	movl	32(%ebx), %edx
	testb	$2, 418(%edx)
	je	L1681
	testb	$2, 22978(%edx)
	jne	L1666
L1681:
	testl	%eax, %eax
	jne	L1666
L1660:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1666:
	.cfi_restore_state
	movl	$_ps_FistSwing, 24(%ebx)
	xorl	%ecx, %ecx
	andl	$-1048577, 204(%ebx)
	movb	$0, 24110(%edx)
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%cx, 228(%ebx)
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L1667
	movzwl	(%eax), %edx
L1667:
	movl	$5500, %eax
	movw	%dx, 178(%ebx)
	movl	$1024, %edx
	movw	%ax, 190(%ebx)
	movl	_randomseed, %eax
	movw	%dx, 232(%ebx)
	leal	(%eax,%eax,4), %edx
	addl	$1, _krandcount
	leal	1(%eax,%edx,4), %eax
	movl	$320, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1668
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL12FistAngTable(%edx,%edx), %edx
L1668:
	movl	32(%ebx), %eax
	movw	%dx, 24108(%eax)
	movl	32(%ebx), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L1682:
	.cfi_restore_state
	movl	$_ps_FistSwing, 24(%ebx)
	jmp	L1663
	.cfi_endproc
LFE237:
	.p2align 4
	.def	__Z10pMineThrowP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z10pMineThrowP18PANEL_SPRITEstruct:
LFB239:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	__Z8InitMineP12PLAYERstruct
	.cfi_endproc
LFE239:
	.p2align 4
	.globl	__Z11pFistAttackP18PANEL_SPRITEstruct
	.def	__Z11pFistAttackP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z11pFistAttackP18PANEL_SPRITEstruct:
LFB240:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	32(%eax), %eax
	movl	%eax, 4(%esp)
	jmp	__Z14InitFistAttackP12PLAYERstruct
	.cfi_endproc
LFE240:
	.p2align 4
	.globl	__Z13netsendpacketiPhi
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
__Z13netsendpacketiPhi:
LFB241:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	%edx, %ebx
	cmpb	$0, _NetBroadcastMode
	jne	L1686
	movl	_myconnectindex, %edx
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	_connecthead, %esi
	cmpl	%eax, %edx
	setne	3(%esp)
	cmpl	%esi, %edx
	setne	%dl
	testb	%dl, 3(%esp)
	je	L1695
	cmpl	%eax, %esi
	jne	L1696
L1695:
	movl	8(%esp), %esi
	.cfi_restore 6
L1686:
	movl	%ebx, %edx
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17mmulti_sendpacketiPhi
	.p2align 4,,10
	.p2align 3
L1696:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	%ebx, %edx
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z13netsendpacketiPhi.part.0
	.cfi_endproc
LFE241:
	.p2align 4
	.globl	__Z18netbroadcastpacketPhi
	.def	__Z18netbroadcastpacketPhi;	.scl	2;	.type	32;	.endef
__Z18netbroadcastpacketPhi:
LFB242:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	_connecthead, %ebx
	cmpb	$0, _NetBroadcastMode
	jne	L1698
	cmpl	%ebx, _myconnectindex
	jne	L1704
L1698:
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	testl	%ebx, %ebx
	js	L1697
	.p2align 4
	.p2align 3
L1701:
	cmpl	%ebx, _myconnectindex
	je	L1700
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
	call	__Z17mmulti_sendpacketiPhi
L1700:
	movl	_connectpoint2(,%ebx,4), %ebx
	testl	%ebx, %ebx
	jns	L1701
L1697:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1704:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z18netbroadcastpacketPhi.part.0
	.cfi_endproc
LFE242:
	.section .rdata,"dr"
	.align 4
LC9:
	.ascii "netgetpacket(): Got a proxy message from %d instead of %d\0"
	.text
	.p2align 4
	.globl	__Z12netgetpacketPiPh.constprop.0
	.def	__Z12netgetpacketPiPh.constprop.0;	.scl	2;	.type	32;	.endef
__Z12netgetpacketPiPh.constprop.0:
LFB244:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	$__ZL7packbuf.lto_priv.0, %edx
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	call	__Z16mmulti_getpacketPiPh
	movl	%eax, %ecx
	cmpl	$1, %eax
	jbe	L1705
	cmpb	$19, __ZL7packbuf.lto_priv.0
	jne	L1705
	movl	%esi, 36(%esp)
	movl	_connecthead, %eax
	.cfi_offset 6, -12
	movl	_myconnectindex, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -8
	movl	(%ebx), %edi
	cmpl	%eax, %esi
	je	L1722
	cmpl	%edi, %eax
	je	L1723
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jge	L1724
L1716:
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	xorl	%ecx, %ecx
L1705:
	movl	32(%esp), %ebx
	movl	%ecx, %eax
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1723:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movzbl	__ZL7packbuf.lto_priv.0+1, %eax
	movl	%eax, (%ebx)
L1721:
	subl	$2, %ecx
	movl	$__ZL7packbuf.lto_priv.0+2, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	$__ZL7packbuf.lto_priv.0, (%esp)
	movl	%ecx, 24(%esp)
	call	_memmove
	movl	24(%esp), %ecx
	movl	36(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebx
	addl	$44, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1722:
	.cfi_restore_state
	movzbl	__ZL7packbuf.lto_priv.0+1, %edx
	cmpb	$-1, %dl
	je	L1725
	movl	%edi, %ebx
	movzbl	%dl, %eax
	movb	%bl, __ZL7packbuf.lto_priv.0+1
	cmpl	%eax, %esi
	je	L1721
	movl	$__ZL7packbuf.lto_priv.0, %edx
	call	__Z17mmulti_sendpacketiPhi
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1724:
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$312, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1716
	.p2align 4,,10
	.p2align 3
L1725:
	movl	%edi, %edx
	movb	%dl, __ZL7packbuf.lto_priv.0+1
	testl	%eax, %eax
	js	L1721
L1711:
	movl	_connectpoint2(,%eax,4), %eax
	testl	%eax, %eax
	js	L1721
L1726:
	cmpl	%eax, _myconnectindex
	je	L1711
	cmpl	%eax, (%ebx)
	je	L1711
	movl	$__ZL7packbuf.lto_priv.0, %edx
	movl	%ecx, 28(%esp)
	movl	%eax, 24(%esp)
	call	__Z17mmulti_sendpacketiPhi
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	_connectpoint2(,%eax,4), %eax
	testl	%eax, %eax
	jns	L1726
	jmp	L1721
	.cfi_endproc
LFE244:
	.p2align 4
	.globl	__Z10EncodeBitsP9SW_PACKETS0_Ph
	.def	__Z10EncodeBitsP9SW_PACKETS0_Ph;	.scl	2;	.type	32;	.endef
__Z10EncodeBitsP9SW_PACKETS0_Ph:
LFB245:
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
	movl	%ecx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movb	$0, (%ecx)
	movzwl	(%eax), %eax
	cmpw	(%edx), %ax
	je	L1742
	movb	$1, (%ecx)
	movw	%ax, 1(%ecx)
	leal	3(%ecx), %eax
L1729:
	movzwl	2(%ebp), %edx
	cmpw	2(%edi), %dx
	je	L1730
	movw	%dx, (%eax)
	addl	$2, %eax
	orb	$2, (%ebx)
L1730:
	movl	4(%ebp), %edx
	cmpl	4(%edi), %edx
	je	L1743
L1731:
	movl	%edx, (%eax)
	movl	12(%ebp), %edx
	addl	$8, %eax
	movl	%edx, -4(%eax)
	orb	$4, (%ebx)
L1732:
	movl	8(%ebp), %edx
	cmpl	8(%edi), %edx
	je	L1744
L1733:
	movl	%edx, (%eax)
	movl	16(%ebp), %edx
	addl	$8, %eax
	movl	%edx, -4(%eax)
	orb	$8, (%ebx)
L1734:
	movl	%ebp, (%esp)
	xorl	%edx, %edx
	movl	%edi, 4(%esp)
L1736:
	movl	4(%esp), %ebp
	movl	(%esp), %esi
	leal	0(,%edx,8), %ecx
	movl	20(%ebp), %edi
	movl	20(%esi), %esi
	movl	$255, %ebp
	sall	%cl, %ebp
	xorl	%esi, %edi
	testl	%ebp, %edi
	je	L1735
	sarl	%cl, %esi
	addl	$1, %eax
	movl	%esi, %ecx
	movl	$1, %esi
	movb	%cl, -1(%eax)
	leal	4(%edx), %ecx
	sall	%cl, %esi
	movl	%esi, %ecx
	orb	%cl, (%ebx)
L1735:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L1736
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	subl	%ebx, %eax
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
L1742:
	.cfi_restore_state
	leal	1(%ecx), %eax
	jmp	L1729
	.p2align 4,,10
	.p2align 3
L1744:
	movl	16(%edi), %ecx
	cmpl	%ecx, 16(%ebp)
	jne	L1733
	jmp	L1734
	.p2align 4,,10
	.p2align 3
L1743:
	movl	12(%edi), %ecx
	cmpl	%ecx, 12(%ebp)
	jne	L1731
	jmp	L1732
	.cfi_endproc
LFE245:
	.section .rdata,"dr"
LC10:
	.ascii "%s has quit the game.\0"
	.text
	.p2align 4
	.globl	__Z18MenuCommPlayerQuits.isra.0
	.def	__Z18MenuCommPlayerQuits.isra.0;	.scl	2;	.type	32;	.endef
__Z18MenuCommPlayerQuits.isra.0:
LFB247:
	.cfi_startproc
	movl	_connecthead, %edx
	cmpw	$-1, %dx
	je	L1772
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	movl	%ebx, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	.p2align 4
	.p2align 3
L1748:
	movswl	%ax, %esi
	cmpw	%ax, %bx
	je	L1747
	imull	$24124, _myconnectindex, %eax
	movl	$LC10, 4(%esp)
	movl	$_ds, (%esp)
	addl	$_Player+23262, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	cmpb	$0, _CommEnabled
	je	L1747
	movl	$_ds, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.0+1, (%esp)
	movb	$4, __ZL7tempbuf.lto_priv.0
	call	_strcpy
	movl	$_ds, (%esp)
	call	_strlen
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	leal	2(%eax), %ecx
	movl	%esi, %eax
	call	__Z13netsendpacketiPhi
L1747:
	movl	_connectpoint2(,%esi,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L1748
	movl	_connecthead, %esi
	movl	%esi, %eax
	cmpw	$-1, %si
	je	L1745
	movl	%edi, 28(%esp)
	xorl	%edx, %edx
	.cfi_offset 7, -12
	movzwl	_screenpeek, %edi
	movb	$0, 17(%esp)
	movb	$0, 19(%esp)
	movb	$0, 18(%esp)
	movw	%dx, 12(%esp)
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	_numplayers, %ebp
	movw	%di, 14(%esp)
	movzbl	_CommPlayers, %edi
	.p2align 4
	.p2align 3
L1757:
	movswl	%ax, %ecx
	movl	_connectpoint2(,%ecx,4), %edx
	cmpw	%ax, %bx
	jne	L1760
	cmpw	%bx, 14(%esp)
	je	L1776
L1750:
	cmpl	%ecx, %esi
	je	L1777
	movswl	12(%esp), %eax
	movl	%edx, _connectpoint2(,%eax,4)
L1755:
	movb	$1, 17(%esp)
	subl	$1, %ebp
	subl	$1, %edi
L1749:
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L1757
	cmpb	$0, 17(%esp)
	je	L1758
	movl	%edi, %eax
	movl	%ebp, _numplayers
	movb	%al, _CommPlayers
L1758:
	cmpb	$0, 19(%esp)
	je	L1759
	movl	%esi, _connecthead
L1759:
	cmpb	$0, 18(%esp)
	je	L1775
	movzwl	14(%esp), %eax
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	movw	%ax, _screenpeek
L1745:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1760:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movw	%ax, 12(%esp)
	jmp	L1749
	.p2align 4,,10
	.p2align 3
L1776:
	movl	%edx, %eax
	testw	%dx, %dx
	js	L1751
	cmpl	%ecx, %esi
	je	L1778
	movswl	12(%esp), %ecx
	movw	%dx, 14(%esp)
	subl	$1, %ebp
	subl	$1, %edi
	movb	$1, 17(%esp)
	movl	%edx, _connectpoint2(,%ecx,4)
	movb	$1, 18(%esp)
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1777:
	movb	$1, 19(%esp)
	movl	_connectpoint2(,%esi,4), %esi
	jmp	L1755
	.p2align 4,,10
	.p2align 3
L1751:
	movw	%si, 14(%esp)
	movb	$1, 18(%esp)
	jmp	L1750
	.p2align 4,,10
	.p2align 3
L1775:
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1778:
	.cfi_restore_state
	movw	%dx, 14(%esp)
	movl	%edx, %esi
	subl	$1, %ebp
	subl	$1, %edi
	movb	$1, 17(%esp)
	movb	$1, 19(%esp)
	movb	$1, 18(%esp)
	jmp	L1757
	.p2align 4,,10
	.p2align 3
L1772:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.cfi_endproc
LFE247:
	.p2align 4
	.globl	__Z11InitNetVarsv
	.def	__Z11InitNetVarsv;	.scl	2;	.type	32;	.endef
__Z11InitNetVarsv:
LFB252:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	$0, _loc
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	_connecthead, %ebx
	movl	$0, _loc+4
	movl	$0, _loc+8
	movl	$0, _loc+12
	movl	$0, _loc+16
	movl	$0, _loc+20
	cmpw	$-1, %bx
	je	L1780
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	movswl	%bx, %esi
	.p2align 4
	.p2align 3
L1781:
	movswl	%bx, %ebx
	imull	$24124, %ebx, %eax
	movl	$0, _Player+6564(%eax)
	movl	$0, _Player+6572(%eax)
	addl	$_Player+420, %eax
	movl	$6144, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	_connectpoint2(,%ebx,4), %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	jne	L1781
	movl	$960, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_sync_first, (%esp)
	movl	$0, _movefifoplc
	movl	$0, _movefifosendplc
	movl	$0, _syncvaltail
	movl	$0, _syncvaltottail
	movl	$0, _predictmovefifoplc
	movl	$0, _syncstat
	movl	$0, _syncstat+4
	movl	$0, _syncstat+8
	movl	$0, _syncstat+12
	movb	$0, _syncstate
	call	_memset
	movl	$0, _sync_found
	.p2align 5
	.p2align 4
	.p2align 3
L1782:
	imull	$24124, %esi, %eax
	movl	$0, _Player+6568(%eax)
	movl	_connectpoint2(,%esi,4), %eax
	movswl	%ax, %esi
	cmpw	$-1, %ax
	jne	L1782
	movl	16(%esp), %esi
	.cfi_restore 6
L1783:
	movl	$0, _mymaxlag
	movl	12(%esp), %ebx
	movl	$0, _otherminlag
	addl	$20, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1780:
	.cfi_restore_state
	movl	$960, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_sync_first, (%esp)
	movl	$0, _movefifoplc
	movl	$0, _movefifosendplc
	movl	$0, _syncvaltail
	movl	$0, _syncvaltottail
	movl	$0, _predictmovefifoplc
	movl	$0, _syncstat
	movl	$0, _syncstat+4
	movl	$0, _syncstat+8
	movl	$0, _syncstat+12
	movb	$0, _syncstate
	call	_memset
	movl	$0, _sync_found
	jmp	L1783
	.cfi_endproc
LFE252:
	.p2align 4
	.globl	__Z19AddSyncInfoToPacketPi
	.def	__Z19AddSyncInfoToPacketPi;	.scl	2;	.type	32;	.endef
__Z19AddSyncInfoToPacketPi:
LFB253:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	_myconnectindex, %eax
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	_syncvaltail, %esi
	imull	$24124, %eax, %edx
	cmpl	%esi, _Player+6572(%edx)
	je	L1788
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movswl	_NumSyncBytes, %ebp
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	leal	4(%esi), %edi
	movl	%edi, 4(%esp)
	testw	%bp, %bp
	jle	L1800
L1793:
	movl	%esi, %edi
	movl	%esi, (%esp)
	xorl	%edx, %edx
	andl	$1023, %edi
	sall	$4, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L1791:
	imull	$24124, %eax, %eax
	movl	(%ebx), %ecx
	leal	1(%ecx), %esi
	leal	_Player(%edi,%eax), %eax
	movl	%esi, (%ebx)
	movzbl	6576(%eax,%edx), %eax
	addl	$1, %edx
	movb	%al, __ZL7packbuf.lto_priv.0(%ecx)
	movl	_myconnectindex, %eax
	cmpl	%ebp, %edx
	jne	L1791
	imull	$24124, %eax, %edx
	movl	(%esp), %esi
	addl	$1, %esi
	movl	_Player+6572(%edx), %edx
	cmpl	%esi, %edx
	je	L1792
	cmpl	%esi, 4(%esp)
	jne	L1793
L1794:
	movl	4(%esp), %eax
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _syncvaltail
L1788:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1792:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	movl	%edx, _syncvaltail
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1800:
	.cfi_restore_state
	movl	4(%esp), %eax
	leal	_Player(%edx), %ecx
L1790:
	movl	6572(%ecx), %edx
	addl	$1, %esi
	cmpl	%edx, %esi
	je	L1792
	cmpl	%eax, %esi
	jne	L1790
	jmp	L1794
	.cfi_endproc
LFE253:
	.section .rdata,"dr"
LC11:
	.ascii "%s\0"
LC12:
	.ascii "%s\12\0"
	.align 4
LC13:
	.ascii "getpackets(): nested proxy packets!?\0"
	.text
	.p2align 4
	.globl	__Z10getpacketsv
	.def	__Z10getpacketsv;	.scl	2;	.type	32;	.endef
__Z10getpacketsv:
LFB254:
	.cfi_startproc
	subl	$348, %esp
	.cfi_def_cfa_offset 352
	call	__Z16timerUpdateClockv
	cmpb	$0, _CommEnabled
	je	L1803
	movl	%ebx, 332(%esp)
	movl	%esi, 336(%esp)
	movl	%edi, 340(%esp)
	movl	%ebp, 344(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L1859:
	leal	48(%esp), %eax
	call	__Z12netgetpacketPiPh.constprop.0
	movl	%eax, 20(%esp)
	testl	%eax, %eax
	jle	L1885
	movzbl	__ZL7packbuf.lto_priv.0, %eax
	cmpb	$38, %al
	ja	L1806
	jmp	*L1809(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1809:
	.long	L1820
	.long	L1819
	.long	L1859
	.long	L1859
	.long	L1818
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1817
	.long	L1817
	.long	L1816
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1859
	.long	L1815
	.long	L1859
	.long	L1814
	.long	L1813
	.long	L1859
	.long	L1811
	.long	L1810
	.long	L1859
	.long	L1808
	.text
L1817:
	movl	48(%esp), %esi
	movl	$1, 44(%esp)
	imull	$24124, %esi, %eax
	testb	$31, _Player+6564(%eax)
	je	L1886
L1822:
	movl	$1, %ecx
	movl	$1, %edi
L1824:
	imull	$24124, %esi, %ebx
	addl	$__ZL7packbuf.lto_priv.0, %ecx
	movl	_Player+6564(%ebx), %eax
	leal	-1(%eax), %edx
	movzbl	%al, %eax
	movzbl	%dl, %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%edx,2), %edx
	leal	_Player+420(%ebx,%eax,8), %eax
	leal	_Player+420(%ebx,%edx,8), %edx
	call	__Z10DecodeBitsP9SW_PACKETS0_Ph
	addl	%edi, %eax
	movl	_MovesPerPacket, %edi
	movl	%eax, 44(%esp)
	movl	_Player+6564(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, _Player+6564(%ebx)
	cmpl	$1, %edi
	jle	L1828
	movl	$1, %ecx
	.p2align 4
	.p2align 3
L1829:
	movzbl	%dl, %eax
	subl	$1, %edx
	addl	$1, %ecx
	movzbl	%dl, %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%edx,2), %edx
	leal	_Player+420(%ebx,%edx,8), %edx
	movl	(%edx), %ebp
	movl	%ebp, _Player+420(%ebx,%eax,8)
	movl	4(%edx), %ebp
	movl	%ebp, _Player+424(%ebx,%eax,8)
	movl	8(%edx), %ebp
	movl	%ebp, _Player+428(%ebx,%eax,8)
	movl	12(%edx), %ebp
	movl	%ebp, _Player+432(%ebx,%eax,8)
	movl	16(%edx), %ebp
	movl	%ebp, _Player+436(%ebx,%eax,8)
	movl	20(%edx), %edx
	movl	%edx, _Player+440(%ebx,%eax,8)
	movl	_Player+6564(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, _Player+6564(%ebx)
	cmpl	%edi, %ecx
	jne	L1829
L1828:
	movl	20(%esp), %eax
	leal	44(%esp), %edx
	movl	%esi, %ecx
	call	__Z21GetSyncInfoFromPacketPhiPii.constprop.0
	jmp	L1859
L1818:
	imull	$24124, 48(%esp), %ebx
	cmpb	$0, _DemoPlaying
	je	L1887
L1853:
	movl	20(%esp), %esi
	movl	$__ZL7packbuf.lto_priv.0+1, 4(%esp)
	addl	$_Player+23262, %ebx
	movl	$_ds, (%esp)
	subl	$1, %esi
	movl	%esi, 8(%esp)
	call	_memcpy
	movl	$_ds, %eax
	movb	$0, _ds(%esi)
	call	__Z12adduserquotePKc
	movl	%ebx, (%esp)
	call	_strlen
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1859
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$_ds, (%esp)
	call	_strncmp
	testl	%eax, %eax
	jne	L1859
	cmpb	$58, _ds(%esi)
	jne	L1859
	leal	76(%esp), %ebx
	movl	$_ds, 12(%esp)
	movl	$LC11, 8(%esp)
	movl	$256, 4(%esp)
	movl	%ebx, (%esp)
	call	_snprintf
	movl	%ebx, %eax
	call	__Z22DemoAutoRecordChatLinePKc
	movl	%ebx, 4(%esp)
	movl	$LC12, (%esp)
	call	__Z10OSD_PrintfPKcz
	jmp	L1859
	.p2align 4,,10
	.p2align 3
L1819:
	movl	48(%esp), %esi
	movl	$__ZL7packbuf.lto_priv.0+1, %ecx
	movl	$1, 44(%esp)
	imull	$24124, %esi, %ebx
	movl	_Player+6564(%ebx), %eax
	leal	-1(%eax), %edx
	movzbl	%al, %eax
	movzbl	%dl, %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%edx,2), %edx
	leal	_Player+420(%ebx,%eax,8), %eax
	leal	_Player+420(%ebx,%edx,8), %edx
	call	__Z10DecodeBitsP9SW_PACKETS0_Ph
	movl	%esi, %ecx
	leal	44(%esp), %edx
	addl	$1, _Player+6564(%ebx)
	addl	$1, %eax
	movl	%eax, 44(%esp)
	movl	20(%esp), %eax
	call	__Z21GetSyncInfoFromPacketPhiPii.constprop.0
	movl	_MovesPerPacket, %esi
	cmpl	$1, %esi
	jle	L1859
	movl	_Player+6564(%ebx), %eax
	movl	$1, %ecx
	.p2align 4
	.p2align 3
L1852:
	movzbl	%al, %edx
	subl	$1, %eax
	addl	$1, %ecx
	movzbl	%al, %eax
	leal	(%edx,%edx,2), %edx
	leal	(%eax,%eax,2), %eax
	leal	_Player+420(%ebx,%eax,8), %eax
	movl	(%eax), %edi
	movl	%edi, _Player+420(%ebx,%edx,8)
	movl	4(%eax), %edi
	movl	%edi, _Player+424(%ebx,%edx,8)
	movl	8(%eax), %edi
	movl	%edi, _Player+428(%ebx,%edx,8)
	movl	12(%eax), %edi
	movl	%edi, _Player+432(%ebx,%edx,8)
	movl	16(%eax), %edi
	movl	%edi, _Player+436(%ebx,%edx,8)
	movl	20(%eax), %eax
	movl	%eax, _Player+440(%ebx,%edx,8)
	movl	_Player+6564(%ebx), %eax
	addl	$1, %eax
	movl	%eax, _Player+6564(%ebx)
	cmpl	%esi, %ecx
	jne	L1852
	jmp	L1859
L1820:
	movl	48(%esp), %eax
	movl	_connecthead, %edi
	movl	$1, 44(%esp)
	movl	%eax, 32(%esp)
	imull	$24124, %eax, %eax
	movl	%edi, 28(%esp)
	testb	$31, _Player+6564(%eax)
	je	L1888
L1830:
	movl	$1, %ebp
L1832:
	movl	28(%esp), %ebx
	testl	%ebx, %ebx
	js	L1837
	movl	_myconnectindex, %edi
	jmp	L1840
	.p2align 4,,10
	.p2align 3
L1838:
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %eax
	leal	_Player+420(%esi,%eax,8), %eax
	call	__Z10DecodeBitsP9SW_PACKETS0_Ph
	movl	_connectpoint2(,%ebx,4), %ebx
	addl	$1, _Player+6564(%esi)
	addl	%eax, %ebp
	movl	%ebp, 44(%esp)
	testl	%ebx, %ebx
	js	L1837
L1840:
	imull	$24124, %ebx, %esi
	leal	__ZL7packbuf.lto_priv.0(%ebp), %ecx
	movl	_Player+6564(%esi), %eax
	leal	-1(%eax), %edx
	movzbl	%dl, %edx
	leal	(%edx,%edx,2), %edx
	leal	_Player+420(%esi,%edx,8), %edx
	cmpl	%edi, %ebx
	jne	L1838
	leal	52(%esp), %eax
	call	__Z10DecodeBitsP9SW_PACKETS0_Ph
	movl	_connectpoint2(,%ebx,4), %ebx
	addl	%eax, %ebp
	movl	%ebp, 44(%esp)
	testl	%ebx, %ebx
	jns	L1840
L1837:
	cmpl	%ebp, 20(%esp)
	je	L1841
	movswl	_NumSyncBytes, %esi
	movl	_myconnectindex, %edi
	movl	28(%esp), %eax
	movl	%esi, %ecx
L1842:
	testl	%eax, %eax
	jns	L1889
	addl	%esi, %ebp
	cmpl	20(%esp), %ebp
	jne	L1842
L1847:
	movl	20(%esp), %eax
	movl	%eax, 44(%esp)
L1841:
	movl	32(%esp), %ecx
	movl	20(%esp), %eax
	leal	44(%esp), %edx
	call	__Z21GetSyncInfoFromPacketPhiPii.constprop.0
	movl	_connecthead, %edx
	testl	%edx, %edx
	js	L1859
	movl	_myconnectindex, %edi
	jmp	L1851
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1849:
	movl	_connectpoint2(,%edx,4), %edx
	testl	%edx, %edx
	js	L1859
L1851:
	cmpl	%edi, %edx
	je	L1849
	movl	_MovesPerPacket, %eax
	movl	$1, 44(%esp)
	cmpl	$1, %eax
	jle	L1849
	imull	$24124, %edx, %ebx
	movl	%edx, 16(%esp)
	movl	$2, %esi
	leal	1(%eax), %ebp
	movl	_Player+6564(%ebx), %ecx
	.p2align 4
	.p2align 3
L1850:
	movzbl	%cl, %eax
	subl	$1, %ecx
	movl	%esi, 44(%esp)
	addl	$1, %esi
	movzbl	%cl, %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%ecx,2), %ecx
	leal	_Player+420(%ebx,%ecx,8), %ecx
	movl	(%ecx), %edx
	movl	%edx, _Player+420(%ebx,%eax,8)
	movl	4(%ecx), %edx
	movl	%edx, _Player+424(%ebx,%eax,8)
	movl	8(%ecx), %edx
	movl	%edx, _Player+428(%ebx,%eax,8)
	movl	12(%ecx), %edx
	movl	%edx, _Player+432(%ebx,%eax,8)
	movl	16(%ecx), %edx
	movl	%edx, _Player+436(%ebx,%eax,8)
	movl	20(%ecx), %ecx
	movl	%ecx, _Player+440(%ebx,%eax,8)
	movl	_Player+6564(%ebx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _Player+6564(%ebx)
	cmpl	%esi, %ebp
	jne	L1850
	movl	16(%esp), %edx
	jmp	L1849
L1810:
	movl	48(%esp), %ebx
	movl	$__ZL7packbuf.lto_priv.0+1, 4(%esp)
	imull	$24124, %ebx, %esi
	addl	$_Player+23262, %esi
	movl	%esi, (%esp)
	call	_strcpy
	movswl	%bx, %eax
	movl	%esi, %edx
	call	__Z30DemoAutoRecordUpdatePlayerNamesPKc
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L1859
L1811:
	movl	48(%esp), %eax
	movw	%ax, _PlayerQuitMenuLevel
	jmp	L1859
L1808:
	imull	$24124, 48(%esp), %eax
	movl	__ZL7packbuf.lto_priv.0+1, %edx
	movl	%edx, _Player+24120(%eax)
	jmp	L1859
L1813:
	movzbl	__ZL7packbuf.lto_priv.0+1, %eax
	call	__Z12PlaySoundRTSi
	jmp	L1859
L1814:
	movl	48(%esp), %edx
	imull	$24124, %edx, %ecx
	movswl	%dx, %esi
	movl	_Player+22968(%ecx), %eax
	movl	%eax, %ebx
	andl	$-1048577, %eax
	orl	$1048576, %ebx
	cmpb	$0, __ZL7packbuf.lto_priv.0+1
	cmovne	%ebx, %eax
	movzbl	__ZL7packbuf.lto_priv.0+2, %ebx
	movl	%eax, _Player+22968(%ecx)
	movb	%bl, _Player+23296(%ecx)
	cmpb	$0, __ZL17DemoAutoRecording.lto_priv.0
	je	L1858
	cmpw	$7, %dx
	ja	L1858
	cmpw	__ZL19DemoAutoPlayerCount.lto_priv.0, %dx
	jl	L1890
L1858:
	movl	_Player+352(%ecx), %ebp
	movl	_sprite, %edi
	movl	$-1171354717, %edx
	addl	$16, %ebx
	leal	17(%ebp), %eax
	subl	%edi, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%bl, 17(%ebp)
	movl	_Player+352(%ecx), %edx
	leal	_Player+23262(%ecx), %ebx
	movl	%edx, %eax
	movzbl	17(%edx), %edx
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movb	%dl, 262(%eax)
	movl	$__ZL7packbuf.lto_priv.0+3, 4(%esp)
	movl	%ebx, (%esp)
	call	_strcpy
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__Z30DemoAutoRecordUpdatePlayerNamesPKc
	jmp	L1859
L1815:
	movzbl	__ZL7packbuf.lto_priv.0+3, %eax
	movzbl	__ZL7packbuf.lto_priv.0+10, %edx
	movb	$0, _ready2send
	movw	%ax, _Level
	movsbw	__ZL7packbuf.lto_priv.0+5, %ax
	movw	%ax, _Skill
	movzwl	__ZL7packbuf.lto_priv.0+7, %eax
	movw	%ax, _gNet+15
	movzbl	__ZL7packbuf.lto_priv.0+9, %eax
	movb	%al, _gNet+14
	movzbl	__ZL7packbuf.lto_priv.0+2, %eax
	movb	%al, _gNet+17
	movzbl	__ZL7packbuf.lto_priv.0+12, %eax
	movb	%al, _gNet+19
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	movl	%eax, _gNet
	movzbl	__ZL7packbuf.lto_priv.0+11, %eax
	movswl	_TimeLimitTable(%eax,%eax), %ecx
	imull	$7200, %ecx, %eax
	movl	%eax, _gNet+4
	cmpb	$0, _ShortGameMode
	je	L1854
	imull	$3600, %ecx, %eax
	movl	%edx, _gNet
	movl	%eax, _gNet+4
L1854:
	movl	%eax, _gNet+8
	movzbl	__ZL7packbuf.lto_priv.0+6, %eax
	movl	$1, %edx
	movb	$1, _ExitLevel
	addl	$1, %eax
	movb	$1, _NewGame
	cmpw	$2, %ax
	movb	$0, _DemoInitOnce
	cmove	%edx, %eax
	movb	$0, _InputMode
	movl	$0, _cust_callback
	movw	%ax, _gNet+12
	sete	_gNet+18
	jmp	L1859
L1816:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1859
	movl	$LC13, 12(%esp)
	movl	$1746, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1859
L1806:
	cmpb	$-6, %al
	jne	L1859
	imull	$24124, 48(%esp), %eax
	addl	$1, _Player+22960(%eax)
	movl	332(%esp), %ebx
	.cfi_restore 3
	movl	336(%esp), %esi
	.cfi_restore 6
	movl	340(%esp), %edi
	.cfi_restore 7
	movl	344(%esp), %ebp
	.cfi_restore 5
L1803:
	addl	$348, %esp
	.cfi_def_cfa_offset 4
	ret
L1886:
	.cfi_def_cfa_offset 352
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	_connecthead, %esi
	jne	L1822
	movl	_connectpoint2(,%esi,4), %eax
	testl	%eax, %eax
	js	L1822
	movl	_myconnectindex, %ecx
	xorl	%edx, %edx
	movl	$1, %edi
L1826:
	cmpl	%eax, %ecx
	jne	L1825
	movsbl	__ZL7packbuf.lto_priv.0(%edi), %ebx
	movl	$1, %edx
	movl	%ebx, 40(%esp)
L1825:
	movl	_connectpoint2(,%eax,4), %eax
	addl	$1, %edi
	testl	%eax, %eax
	jns	L1826
	movl	%edi, 44(%esp)
	movl	%edi, %ecx
	testb	%dl, %dl
	je	L1824
	movl	40(%esp), %eax
	movl	%eax, _otherminlag
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L1889:
	movw	%cx, 16(%esp)
	movl	%ebp, %ecx
	.p2align 4
	.p2align 3
L1846:
	movl	%ecx, 24(%esp)
	movl	28(%esp), %ebx
	leal	__ZL7packbuf.lto_priv.0(%ecx), %ebp
	jmp	L1845
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1843:
	movl	_connectpoint2(,%ebx,4), %ebx
	testl	%ebx, %ebx
	js	L1891
L1845:
	cmpl	%ebx, %edi
	je	L1843
	cmpw	$0, 16(%esp)
	jle	L1844
	imull	$24124, %ebx, %ecx
	movl	_Player+6572(%ecx), %eax
	movl	%esi, 8(%esp)
	movl	%ebp, 4(%esp)
	andl	$1023, %eax
	sall	$4, %eax
	leal	_Player+6576(%ecx,%eax), %eax
	movl	%eax, (%esp)
	call	_memcpy
L1844:
	imull	$24124, %ebx, %eax
	movl	_connectpoint2(,%ebx,4), %ebx
	addl	$1, _Player+6572(%eax)
	testl	%ebx, %ebx
	jns	L1845
L1891:
	movl	24(%esp), %ecx
	addl	%esi, %ecx
	cmpl	%ecx, 20(%esp)
	jne	L1846
	jmp	L1847
L1887:
	imull	$24124, _myconnectindex, %eax
	movl	$8, 4(%esp)
	leal	_Player(%eax), %edx
	leal	_Player+4(%eax), %ecx
	addl	$_Player+8, %eax
	movl	%eax, (%esp)
	movl	$504, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L1853
L1888:
	movl	_connectpoint2(,%edi,4), %eax
	testl	%eax, %eax
	js	L1830
	movl	_myconnectindex, %ecx
	movl	36(%esp), %edx
	xorl	%ebx, %ebx
	movl	$1, %ebp
L1834:
	cmpl	%eax, %ecx
	jne	L1833
	movsbl	__ZL7packbuf.lto_priv.0(%ebp), %edx
	movl	$1, %ebx
L1833:
	movl	_connectpoint2(,%eax,4), %eax
	addl	$1, %ebp
	testl	%eax, %eax
	jns	L1834
	movl	%edx, 36(%esp)
	movl	%ebp, 44(%esp)
	testb	%bl, %bl
	je	L1832
	movl	%edx, _otherminlag
	jmp	L1832
L1890:
	movb	%bl, __ZL20DemoAutoPlayerColors.lto_priv.0(%esi)
	jmp	L1858
L1885:
	movl	332(%esp), %ebx
	.cfi_restore 3
	movl	336(%esp), %esi
	.cfi_restore 6
	movl	340(%esp), %edi
	.cfi_restore 7
	movl	344(%esp), %ebp
	.cfi_restore 5
	addl	$348, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE254:
	.section .rdata,"dr"
LC14:
	.ascii "waitforeverybody() #%d\0"
	.text
	.p2align 4
	.globl	__Z16waitforeverybodyv.part.0
	.def	__Z16waitforeverybodyv.part.0;	.scl	2;	.type	32;	.endef
__Z16waitforeverybodyv.part.0:
LFB257:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L1893
	imull	$24124, _myconnectindex, %eax
	movl	_Player+22960(%eax), %eax
	movl	$LC14, 12(%esp)
	movl	$650, 8(%esp)
	addl	$1, %eax
	movl	$LC1, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1893:
	movl	_myconnectindex, %edx
	movb	$-6, __ZL7tempbuf.lto_priv.0
	imull	$24124, %edx, %eax
	movl	_Player+22960(%eax), %eax
	leal	1(%eax), %ecx
	movb	%cl, __ZL7tempbuf.lto_priv.0+1
	cmpb	$0, _NetBroadcastMode
	je	L1917
	movl	$__ZL7tempbuf.lto_priv.0, %eax
	movl	$2, %edx
	call	__Z18netbroadcastpacketPhi
	movl	_myconnectindex, %ebx
	imull	$24124, %ebx, %eax
	movl	_Player+22960(%eax), %eax
L1895:
	imull	$24124, %ebx, %ebx
	addl	$1, %eax
	movl	$__Z7wfe_Escv, _wfe_ExitCallback
	movl	%eax, _Player+22960(%ebx)
L1906:
	movswl	_PlayerQuitMenuLevel, %eax
	testw	%ax, %ax
	js	L1896
	call	__Z18MenuCommPlayerQuits.isra.0
	movl	$-1, %eax
	movw	%ax, _PlayerQuitMenuLevel
L1896:
	call	_handleevents.isra.0
	call	__Z10getpacketsv
	cmpb	$0, _quitevent
	jne	L1897
	movl	_wfe_ExitCallback, %eax
	testl	%eax, %eax
	je	L1898
	call	*%eax
	testb	%al, %al
	jne	L1897
L1898:
	movl	_connecthead, %ebx
	movzbl	_NetBroadcastMode, %esi
	testl	%ebx, %ebx
	js	L1900
	movl	_myconnectindex, %eax
	imull	$24124, %eax, %edx
	movl	_Player+22960(%edx), %ecx
	movl	%esi, %edx
	testb	%dl, %dl
	jne	L1908
	cmpl	%eax, %ebx
	jne	L1901
L1908:
	movl	%ebx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1904:
	imull	$24124, %eax, %edx
	cmpl	_Player+22960(%edx), %ecx
	jg	L1906
	movl	_connectpoint2(,%eax,4), %eax
	testl	%eax, %eax
	jns	L1904
L1900:
	movl	%esi, %eax
	testb	%al, %al
	je	L1905
L1907:
	movl	$0, _wfe_ExitCallback
	movb	$0, _wfe_Show
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
L1901:
	.cfi_restore_state
	imull	$24124, %ebx, %eax
	cmpl	%ecx, _Player+22960(%eax)
	jl	L1906
L1905:
	cmpl	_myconnectindex, %ebx
	jne	L1907
	movl	$2, %edx
	movl	$__ZL7tempbuf.lto_priv.0, %eax
	call	__Z18netbroadcastpacketPhi
	jmp	L1907
	.p2align 4,,10
	.p2align 3
L1897:
	movl	$1, %edx
	movl	$__ZL7tempbuf.lto_priv.0, %eax
	movb	$35, __ZL7tempbuf.lto_priv.0
	call	__Z18netbroadcastpacketPhi
	call	__Z13TerminateGamev
	movl	$0, (%esp)
	call	_exit
L1917:
	movl	_connecthead, %ebx
	cmpl	%ebx, %edx
	je	L1895
	movl	%ebx, %eax
	movl	$2, %ecx
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	call	__Z13netsendpacketiPhi
	movl	_myconnectindex, %ebx
	imull	$24124, %ebx, %eax
	movl	_Player+22960(%eax), %eax
	jmp	L1895
	.cfi_endproc
LFE257:
	.p2align 4
	.globl	__Z13RetractCurWpnP12PLAYERstruct
	.def	__Z13RetractCurWpnP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13RetractCurWpnP12PLAYERstruct:
LFB258:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%ebx, -8(%ebp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	23048(%eax), %eax
	testl	%eax, %eax
	je	L1918
	cmpl	23064(%ebx), %eax
	je	L1940
L1920:
	movl	16(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L1922
	movzwl	(%edx), %ecx
L1922:
	movw	%cx, 178(%eax)
	movl	23048(%ebx), %eax
	orl	$4096, 22968(%ebx)
L1921:
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1923
	movl	16(%eax), %edx
	xorl	%ecx, %ecx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L1924
	movzwl	(%edx), %ecx
L1924:
	movw	%cx, 178(%eax)
L1918:
	movl	-8(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1923:
	.cfi_restore_state
	movl	%esi, -4(%ebp)
	.cfi_offset 6, -12
	movl	22988(%ebx), %eax
	leal	22988(%ebx), %esi
	cmpl	%esi, %eax
	je	L1939
	movl	(%eax), %edx
	jmp	L1926
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1925:
	movl	(%edx), %ecx
	movl	%edx, %eax
	cmpl	%edx, %esi
	je	L1939
L1929:
	movl	%ecx, %edx
L1926:
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	je	L1925
	cmpl	23048(%ebx), %ecx
	jne	L1925
	movzwl	178(%eax), %ecx
	movl	$0, 8(%eax)
	movl	$__Z21SpecialUziRetractFuncP18PANEL_SPRITEstruct, 172(%eax)
	movw	%cx, 180(%eax)
	movl	$0, 12(%eax)
	movl	%edx, %eax
	movl	(%edx), %ecx
	cmpl	%edx, %esi
	jne	L1929
L1939:
	movl	-4(%ebp), %esi
	.cfi_restore 6
	movl	-8(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1940:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -16
	.cfi_offset 5, -8
	cmpb	$2, 24092(%ebx)
	jne	L1921
	jmp	L1920
	.cfi_endproc
LFE258:
	.p2align 4
	.globl	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii:
LFB259:
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
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	_g_sm_heap, %ecx
	movl	$252, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1942
	movl	$0, 236(%eax)
	movl	%eax, %edx
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	xorl	%eax, %eax
L1943:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L1943
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movzbl	%al, %eax
	movl	%eax, 208(%edx)
	movl	%esi, %eax
	call	__Z17InsertPanelSpriteP12PLAYERstructP18PANEL_SPRITEstruct
	movl	4(%esp), %edx
	movl	24(%esp), %eax
	movw	%ax, 38(%edx)
	movl	28(%esp), %eax
	movl	%esi, 32(%edx)
	movw	%ax, 42(%edx)
	xorl	%eax, %eax
	movw	%ax, 228(%edx)
	movl	$-1, %eax
	movl	%ebx, 12(%edx)
	testl	%ebx, %ebx
	je	L1945
	movzwl	(%ebx), %eax
L1945:
	movw	%ax, 178(%edx)
	xorl	%eax, %eax
	leal	172(%edx), %ecx
	movl	$0, 232(%edx)
	movl	$65536, 212(%edx)
	movw	%ax, 190(%edx)
	xorl	%eax, %eax
	movw	%ax, 176(%edx)
	leal	44(%edx), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1946:
	movl	$-1, %ebx
	movl	$-1, %esi
	movl	$-1, %edi
	addl	$16, %eax
	movl	$0, -16(%eax)
	movw	%bx, -6(%eax)
	movw	%si, -4(%eax)
	movw	%di, -2(%eax)
	cmpl	%ecx, %eax
	jne	L1946
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L1942:
	.cfi_restore_state
	movl	$1, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE259:
	.p2align 4
	.globl	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	.def	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii;	.scl	2;	.type	32;	.endef
__Z22pSpawnFullScreenSpriteP12PLAYERstructssii:
LFB260:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	$65535, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$32, %esp
	movl	%esi, 24(%esp)
	movl	%edi, 28(%esp)
	leal	22988(%ebx), %edi
	movw	%dx, 26(%esp)
	movl	22988(%eax), %eax
	movlps	24(%esp), %xmm0
	cmpl	%edi, %eax
	je	L1953
	movl	%ebx, 16(%esp)
	movl	(%eax), %edx
	movswl	%cx, %esi
	movw	%cx, 14(%esp)
	jmp	L1957
	.p2align 4,,10
	.p2align 3
L1954:
	movl	(%edx), %ecx
	movl	%edx, %eax
	cmpl	%edx, %edi
	je	L1962
	movl	%ecx, %edx
L1957:
	movl	208(%eax), %ecx
	cmpl	%esi, %ecx
	jg	L1962
	movswl	38(%eax), %ebx
	cmpl	%ebx, 8(%ebp)
	jne	L1954
	movswl	42(%eax), %ebx
	cmpl	12(%ebp), %ebx
	jne	L1954
	cmpl	%esi, %ecx
	jne	L1954
L1955:
	movl	_numpages, %edx
	movzwl	_xdim, %edi
	movlps	%xmm0, 178(%eax)
	orl	$14336, 204(%eax)
	movw	%dx, 194(%eax)
	leal	-1(%edi), %edx
	movzwl	_ydim, %edi
	movw	%dx, 186(%eax)
	leal	-1(%edi), %edx
	movw	%dx, 188(%eax)
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
L1962:
	.cfi_restore_state
	movl	16(%esp), %ebx
	movzwl	14(%esp), %ecx
L1953:
	movl	12(%ebp), %eax
	movzbl	%cl, %ecx
	xorl	%edx, %edx
	movlps	%xmm0, 16(%esp)
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movlps	16(%esp), %xmm0
	jmp	L1955
	.cfi_endproc
LFE260:
	.p2align 4
	.globl	__Z18PlayerUpdateHealthP12PLAYERstructs
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z18PlayerUpdateHealthP12PLAYERstructs:
LFB262:
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
	movzbl	_Prediction, %ecx
	movb	%cl, 31(%esp)
	testb	%cl, %cl
	jne	L1997
	movl	%eax, %ebx
	movl	_GodMode, %ecx
	movswl	348(%eax), %eax
	movl	%edx, %esi
	movl	_User(,%eax,4), %edi
	testl	%ecx, %ecx
	je	L1967
	testw	%dx, %dx
	js	L1997
	testb	$2, 22968(%ebx)
	jne	L1997
L1968:
	movzwl	84(%edi), %ecx
	cmpw	$1000, %si
	jg	L2000
	cmpw	%cx, 23260(%ebx)
	jle	L1989
	addl	%esi, %ecx
	movw	%cx, 84(%edi)
	jmp	L1989
	.p2align 4,,10
	.p2align 3
L1997:
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
L1967:
	.cfi_restore_state
	testb	$2, 22968(%ebx)
	jne	L1997
	testw	%dx, %dx
	jns	L1968
	cmpw	$-1999, %dx
	jge	L1969
	leal	2000(%esi), %eax
	movw	%ax, 24(%esp)
	movl	%eax, %esi
	movl	$-2000, %eax
	subl	%edx, %eax
	movw	%ax, 88(%edi)
L1970:
	movzwl	84(%edi), %ecx
	movzwl	24(%esp), %eax
	addl	%eax, %ecx
	movw	%cx, 84(%edi)
	testw	%ax, %ax
	js	L1976
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L2001
L1979:
	cmpw	$100, %cx
	jg	L1988
L1992:
	movl	$100, %edx
	movw	%dx, 23260(%ebx)
	movzwl	84(%edi), %ecx
L1989:
	testw	%cx, %cx
	jns	L1988
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movw	%ax, 84(%edi)
L1988:
	movzwl	23260(%ebx), %eax
	cmpw	%cx, %ax
	jge	L1991
	movw	%ax, 84(%edi)
L1991:
	cmpb	$1, _gs+12
	jle	L1997
	movl	%ebx, %eax
	movswl	_screenpeek, %edx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%edx, %eax
	jne	L1997
	movl	$168, 4(%esp)
	movl	$128, %ecx
	movl	$2401, %edx
	movl	%ebx, %eax
	movl	$20, (%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	84(%edi), %ecx
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	movl	$22, %edx
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
	jmp	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0
	.p2align 4,,10
	.p2align 3
L2000:
	.cfi_restore_state
	leal	-1000(%ecx,%esi), %ecx
	movw	%cx, 84(%edi)
	jmp	L1989
	.p2align 4,,10
	.p2align 3
L1969:
	cmpw	$-999, %dx
	jl	L2002
	movl	%edx, %eax
	negl	%eax
	movw	%ax, 88(%edi)
	cmpw	$0, 23258(%ebx)
	jne	L1972
	movzwl	84(%edi), %ecx
	movb	$0, 30(%esp)
	movw	%dx, 24(%esp)
	addl	%edx, %ecx
	movw	%cx, 84(%edi)
L1993:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$4, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1980
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$27, %edx
L1980:
	leal	4(%ebx), %eax
	cmpw	$50, %cx
	jle	L1981
	cmpb	$0, 30(%esp)
	jne	L1982
	movl	%eax, 8(%esp)
	movl	_PlayerPainVocs(,%edx,4), %ecx
	movl	$377, %edx
	movl	%eax, 4(%esp)
	movl	$LC6, %eax
	movl	%ebx, 16(%esp)
	movl	$13, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
L1982:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L1984
L1999:
	movzwl	84(%edi), %ecx
	jmp	L1979
	.p2align 4,,10
	.p2align 3
L2002:
	leal	1000(%esi), %eax
	movb	$1, 31(%esp)
	movw	%ax, 24(%esp)
	movl	%eax, %esi
	movl	$-1000, %eax
	subl	%edx, %eax
	movw	%ax, 88(%edi)
	cmpw	$0, 23258(%ebx)
	je	L1970
L1972:
	movl	%esi, %eax
	negw	%ax
	cmovs	%esi, %eax
	cmpw	$1, %ax
	je	L2003
	fnstcw	34(%esp)
	movzwl	%ax, %eax
	movl	%eax, 24(%esp)
	fildl	24(%esp)
	movzwl	34(%esp), %edx
	fmull	LC16
	fadds	LC17
	orb	$12, %dh
	movw	%dx, 32(%esp)
	fldcw	32(%esp)
	fistpl	24(%esp)
	fldcw	34(%esp)
	movl	24(%esp), %edx
	subl	%edx, %eax
	negl	%edx
	movl	%eax, %esi
L1975:
	movl	%ebx, %eax
	movswl	%dx, %edx
	call	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0
	movl	%esi, %eax
	negl	%eax
	movw	%ax, 24(%esp)
	movl	%eax, %esi
	jmp	L1970
	.p2align 4,,10
	.p2align 3
L2001:
	cmpb	$0, 31(%esp)
	je	L1979
L1978:
	movl	$144, %ecx
	movl	$-40, %edx
	movl	%ebx, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	movzwl	84(%edi), %ecx
	jmp	L1979
	.p2align 4,,10
	.p2align 3
L1976:
	movzbl	_Prediction, %eax
	movb	%al, 30(%esp)
	jmp	L1993
	.p2align 4,,10
	.p2align 3
L1981:
	cmpb	$0, 30(%esp)
	jne	L1983
	movl	%eax, 8(%esp)
	movl	_PlayerLowHealthPainVocs(,%edx,4), %ecx
	movl	$382, %edx
	movl	%eax, 4(%esp)
	movl	$LC6, %eax
	movl	%ebx, 16(%esp)
	movl	$13, 12(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1982
L1983:
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	jne	L1992
	.p2align 4
	.p2align 3
L1984:
	cmpb	$0, 31(%esp)
	jne	L1978
	cmpw	$-9, %si
	jge	L1986
	movl	$112, %ecx
	movswl	%si, %edx
	movl	%ebx, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	movzwl	84(%edi), %ecx
	jmp	L1979
L1986:
	cmpw	$-10, 24(%esp)
	jbe	L1999
	movl	$112, %ecx
	movl	$-20, %edx
	movl	%ebx, %eax
	call	__Z10SetFadeAmtP12PLAYERstructsh
	jmp	L1999
L2003:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$-1, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$1, %eax
	movl	%eax, %esi
	jmp	L1975
	.cfi_endproc
LFE262:
	.p2align 4
	.def	__Z25PlayerUpdateWeaponSummaryP12PLAYERstructs;	.scl	3;	.type	32;	.endef
__Z25PlayerUpdateWeaponSummaryP12PLAYERstructs:
LFB266:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2015
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movswl	%dx, %eax
	sall	$5, %eax
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movzwl	_DamageData+16(%eax), %ebx
	cmpw	$-1, %bx
	cmove	%edx, %ebx
	cmpb	$1, _gs+12
	jle	L2004
	movl	%esi, %eax
	movswl	_screenpeek, %ecx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%ecx, %eax
	jne	L2004
	movl	%edi, 44(%esp)
	leal	-1(%ebx), %ecx
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	348(%esi), %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 20(%esp)
	cmpw	$8, %cx
	jg	L2012
	movswl	%cx, %eax
	movl	%ecx, %ebp
	imull	$21846, %eax, %edi
	sarw	$15, %bp
	shrl	$16, %edi
	subl	%ebp, %edi
	movswl	%di, %edi
	movzwl	__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_xoff(%edi,%edi), %ebp
	movl	%edi, 16(%esp)
	addl	$93, %ebp
	movzwl	%bp, %edi
	movw	%bp, 34(%esp)
	movl	%edi, 24(%esp)
	movl	16(%esp), %edi
	movzwl	__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE13wsum_back_pic(%edi,%edi), %edi
	movw	%di, 30(%esp)
	movl	16(%esp), %edi
	movzwl	__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_xoff(%edi,%edi), %edi
	addl	$99, %edi
	movw	%di, 32(%esp)
L2007:
	imull	$21846, %eax, %eax
	movl	%edx, %edi
	movl	%ecx, %edx
	sarw	$15, %dx
	shrl	$16, %eax
	subl	%edx, %eax
	movswl	30(%esp), %edx
	leal	(%eax,%eax,2), %eax
	subl	%eax, %ecx
	leal	(%ecx,%ecx,2), %ecx
	leal	169(%ecx,%ecx), %ebp
	movl	$128, %ecx
	movzwl	%bp, %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	20(%esp), %eax
	xorl	%edx, %edx
	movsbw	273(%eax), %ax
	movl	$_ds, (%esp)
	cmpw	%di, %ax
	movl	$11, %eax
	cmove	%edx, %eax
	movl	%eax, %edi
	leal	1(%ebx), %eax
	cmpw	$10, %ax
	cmovge	%edx, %eax
	cwtl
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_fmt1(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	_sprintf
	movl	23012(%esi), %eax
	movswl	%bx, %ecx
	movswl	34(%esp), %edx
	movl	%ecx, 20(%esp)
	movswl	%bp, %ecx
	btl	%ebx, %eax
	movl	%ecx, %ebp
	jnc	L2010
	movswl	%di, %ebx
	movl	$1, (%esp)
	movl	%esi, %eax
	movl	%ebx, 4(%esp)
	call	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0
L2011:
	movl	20(%esp), %ecx
	movl	%ecx, %eax
	sall	$5, %eax
	movswl	_DamageData+12(%eax), %eax
	movl	%eax, 12(%esp)
	movswl	23016(%esi,%ecx,2), %eax
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	movl	16(%esp), %eax
	movl	__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_fmt2(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	_sprintf
	movl	%ebx, 4(%esp)
	movswl	32(%esp), %edx
	movl	%ebp, %ecx
	movl	$0, (%esp)
	movl	%esi, %eax
	call	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L2004:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2015:
	ret
	.p2align 4,,10
	.p2align 3
L2012:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$159, %eax
	movl	$165, %edi
	movl	$2406, %ebp
	movl	$159, 24(%esp)
	movw	%ax, 34(%esp)
	movswl	%cx, %eax
	movw	%di, 32(%esp)
	movw	%bp, 30(%esp)
	movl	$2, 16(%esp)
	jmp	L2007
	.p2align 4,,10
	.p2align 3
L2010:
	leal	6(%edi), %eax
	movl	$2, (%esp)
	movswl	%di, %ebx
	cwtl
	movl	%eax, 4(%esp)
	movl	%esi, %eax
	call	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0
	jmp	L2011
	.cfi_endproc
LFE266:
	.p2align 4
	.globl	__Z16PlayerUpdateAmmoP12PLAYERstructss
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
__Z16PlayerUpdateAmmoP12PLAYERstructss:
LFB267:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2029
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movswl	%dx, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	sall	$5, %edi
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	leal	_DamageData(%edi), %edx
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movzbl	_gs+12, %eax
	cmpw	$-1, _DamageData+12(%edi)
	je	L2032
	movswl	348(%ebx), %edi
	movswl	16(%edx), %edx
	movl	_User(,%edi,4), %edi
	movl	%edi, 8(%esp)
	cmpw	$-1, %dx
	je	L2024
	movswl	%dx, %ecx
L2021:
	leal	(%ebx,%ecx,2), %edi
	addw	23016(%edi), %bp
	movw	%bp, 23016(%edi)
	testw	%bp, %bp
	jle	L2033
L2022:
	sall	$5, %ecx
	movzwl	_DamageData+12(%ecx), %ecx
	cmpw	%bp, %cx
	cmovg	%ebp, %ecx
	movw	%cx, 23016(%edi)
	cmpb	$1, %al
	jle	L2018
	movl	%ebx, %eax
	movswl	_screenpeek, %ecx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%ecx, %eax
	je	L2034
L2018:
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
L2032:
	.cfi_restore_state
	cmpb	$1, %al
	jle	L2018
	movl	%ebx, %eax
	movswl	_screenpeek, %edx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%edx, %eax
	jne	L2018
	movl	$168, 4(%esp)
	movl	$128, %ecx
	movl	$2404, %edx
	movl	%ebx, %eax
	movl	$197, (%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	jmp	L2018
	.p2align 4,,10
	.p2align 3
L2029:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	ret
	.p2align 4,,10
	.p2align 3
L2033:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$8259, %ebp
	btl	%ecx, %ebp
	jnc	L2023
	movl	$-2, %ebp
	roll	%cl, %ebp
	andl	%ebp, 23012(%ebx)
L2023:
	xorl	%ebp, %ebp
	movw	%bp, 23016(%edi)
	xorl	%ebp, %ebp
	jmp	L2022
	.p2align 4,,10
	.p2align 3
L2024:
	movswl	%cx, %edx
	jmp	L2021
	.p2align 4,,10
	.p2align 3
L2034:
	movl	%ebx, %eax
	call	__Z25PlayerUpdateWeaponSummaryP12PLAYERstructs
	movl	8(%esp), %eax
	movsbw	273(%eax), %ax
	cmpw	%si, %ax
	jne	L2018
	movl	$168, 4(%esp)
	movl	$128, %ecx
	movl	$2404, %edx
	movl	%ebx, %eax
	movl	$197, (%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movswl	23016(%edi), %ecx
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
	movl	$198, %edx
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
	jmp	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0
	.cfi_endproc
LFE267:
	.p2align 4
	.globl	__Z18PlayerUpdateWeaponP12PLAYERstructs
	.def	__Z18PlayerUpdateWeaponP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z18PlayerUpdateWeaponP12PLAYERstructs:
LFB268:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2040
	movl	%eax, %ecx
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movb	%dl, 273(%eax)
	cmpb	$1, _gs+12
	jle	L2040
	movl	%ecx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	subl	$_Player, %eax
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movswl	_screenpeek, %ebx
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%ebx, %eax
	je	L2044
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2040:
	ret
	.p2align 4,,10
	.p2align 3
L2044:
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	%ecx, %eax
	movl	%ecx, %esi
	movsbl	%dl, %edx
	xorl	%ecx, %ecx
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	cmpb	$0, _Prediction
	jne	L2043
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L2037:
	movswl	%bx, %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	__Z25PlayerUpdateWeaponSummaryP12PLAYERstructs
	cmpw	$10, %bx
	jne	L2037
L2043:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE268:
	.p2align 4
	.globl	__Z17PlayerUpdateArmorP12PLAYERstructs
	.def	__Z17PlayerUpdateArmorP12PLAYERstructs;	.scl	2;	.type	32;	.endef
__Z17PlayerUpdateArmorP12PLAYERstructs:
LFB270:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2045
	cmpw	$999, %dx
	jg	L2053
	addw	23258(%eax), %dx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	movl	$100, %ecx
	cmpw	%cx, %dx
	cmovg	%ecx, %edx
L2048:
	movw	%dx, 23258(%eax)
	cmpb	$1, _gs+12
	jle	L2045
	movl	%eax, %edx
	movswl	_screenpeek, %ecx
	subl	$_Player, %edx
	sarl	$2, %edx
	imull	$-432986257, %edx, %edx
	cmpl	%ecx, %edx
	je	L2054
L2045:
	ret
	.p2align 4,,10
	.p2align 3
L2053:
	subw	$1000, %dx
	movl	$100, %ecx
	cmpw	%cx, %dx
	cmova	%ecx, %edx
	jmp	L2048
	.p2align 4,,10
	.p2align 3
L2054:
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
LFE270:
	.p2align 4
	.globl	__Z16PlayerUpdateKeysP12PLAYERstruct
	.def	__Z16PlayerUpdateKeysP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16PlayerUpdateKeysP12PLAYERstruct:
LFB273:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2070
	cmpw	$1, _gNet+12
	je	L2070
	cmpb	$1, _gs+12
	jle	L2070
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movswl	_screenpeek, %edx
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$_Player, %eax
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%edx, %eax
	je	L2074
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2070:
	ret
	.p2align 4,,10
	.p2align 3
L2074:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	movl	%ebp, 28(%esp)
	movl	$128, %ecx
	movl	$2402, %edx
	movzwl	_tilesiz+9568, %eax
	movl	$168, 4(%esp)
	addl	$1, %eax
	movl	$276, (%esp)
	movw	%ax, 12(%esp)
	movzwl	_tilesiz+9570, %eax
	movl	%esi, 20(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$2, %esi
	leal	2(%eax), %ebp
	movl	%ebx, %eax
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	$170, %edi
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	$276, %ecx
	movw	%si, 8(%esp)
	movzwl	8(%esp), %eax
	movw	%cx, 14(%esp)
	leal	-2(%eax), %esi
L2059:
	movswl	%si, %eax
	cmpb	$0, 22996(%ebx,%eax)
	jne	L2075
L2058:
	movzwl	8(%esp), %eax
	addl	$1, %esi
	addl	%ebp, %edi
	cmpw	%ax, %si
	jne	L2059
	movzwl	12(%esp), %edx
	addw	%dx, 14(%esp)
	cmpw	$4, %ax
	je	L2063
	movl	$4, %edx
	movl	$170, %edi
	movw	%dx, 8(%esp)
	movzwl	8(%esp), %eax
	leal	-2(%eax), %esi
	movswl	%si, %eax
	cmpb	$0, 22996(%ebx,%eax)
	je	L2058
L2075:
	movswl	__ZZ16PlayerUpdateKeysP12PLAYERstructE13StatusKeyPics(%eax,%eax), %edx
	movswl	%di, %eax
	movl	$250, %ecx
	movl	%eax, 4(%esp)
	movswl	14(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	jmp	L2058
	.p2align 4,,10
	.p2align 3
L2063:
	movl	$276, %eax
	movl	%ebx, 8(%esp)
	movl	$2, %ebx
	movl	$170, %edi
	movw	%ax, 14(%esp)
	leal	-2(%ebx), %esi
L2062:
	movl	8(%esp), %ecx
	movswl	%si, %eax
	leal	4(%eax), %edx
	cmpb	$0, 23000(%ecx,%eax)
	jne	L2076
L2061:
	addl	$1, %esi
	addl	%ebp, %edi
	cmpw	%si, %bx
	jne	L2062
	movzwl	12(%esp), %ecx
	addw	%cx, 14(%esp)
	cmpw	$4, %bx
	je	L2073
	movl	$4, %ebx
	movl	$170, %edi
	leal	-2(%ebx), %esi
	jmp	L2062
	.p2align 4,,10
	.p2align 3
L2076:
	movswl	%di, %eax
	movswl	__ZZ16PlayerUpdateKeysP12PLAYERstructE13StatusKeyPics(%edx,%edx), %edx
	movl	$250, %ecx
	movl	%eax, 4(%esp)
	movswl	14(%esp), %eax
	movl	%eax, (%esp)
	movl	8(%esp), %eax
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	jmp	L2061
	.p2align 4,,10
	.p2align 3
L2073:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	movl	16(%esp), %ebx
	addl	$32, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE273:
	.section .rdata,"dr"
LC19:
	.ascii "%03d:%02d\0"
	.text
	.p2align 4
	.globl	__Z21PlayerUpdateTimeLimitP12PLAYERstruct
	.def	__Z21PlayerUpdateTimeLimitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21PlayerUpdateTimeLimitP12PLAYERstruct:
LFB275:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L2080
	cmpb	$1, _gs+12
	jle	L2080
	movl	%eax, %edx
	subl	$_Player, %eax
	movswl	_screenpeek, %ecx
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	cmpl	%ecx, %eax
	jne	L2080
	cmpw	$1, _gNet+12
	jne	L2080
	movl	_gNet+4, %eax
	testl	%eax, %eax
	je	L2080
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%edx, %ebx
	movl	$128, %ecx
	movl	$2402, %edx
	movl	%ebx, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	movl	$168, 4(%esp)
	movl	$276, (%esp)
	call	__Z22pSpawnFullScreenSpriteP12PLAYERstructssii
	movl	_gNet+8, %ecx
	movl	$-2004318071, %eax
	movl	$LC19, 4(%esp)
	movl	$_ds, (%esp)
	imull	%ecx
	addl	%ecx, %edx
	sarl	$31, %ecx
	sarl	$6, %edx
	movl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$-2004318071, %eax
	imull	%ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%ecx, %edx
	sarl	$5, %edx
	subl	%eax, %edx
	imull	$60, %edx, %eax
	movl	%edx, 8(%esp)
	subl	%eax, %ecx
	movl	%ecx, 12(%esp)
	call	_sprintf
	movl	$0, 4(%esp)
	movl	%ebx, %eax
	movl	$174, %ecx
	movl	$0, (%esp)
	movl	$277, %edx
	call	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0
	addl	$16, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2080:
	ret
	.cfi_endproc
LFE275:
	.p2align 4
	.globl	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	.def	__Z21PlayerUpdatePanelInfoP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z21PlayerUpdatePanelInfoP12PLAYERstruct:
LFB277:
	.cfi_startproc
	cmpb	$0, _Prediction
	je	L2091
	ret
	.p2align 4,,10
	.p2align 3
L2091:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %ebx
	movl	%esi, %eax
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movswl	23120(%esi), %edx
	movl	%esi, %eax
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movsbl	273(%ebx), %edx
	xorl	%ecx, %ecx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movsbl	273(%ebx), %edx
	movl	%esi, %eax
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movl	%esi, %eax
	call	__Z16PlayerUpdateKeysP12PLAYERstruct
	cmpb	$0, _Prediction
	jne	L2085
	xorl	%edx, %edx
	movl	%esi, %eax
	call	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0
	cmpb	$0, _Prediction
	jne	L2085
	movl	$1, %ebx
	.p2align 4
	.p2align 3
L2086:
	movswl	%bx, %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	__Z25PlayerUpdateWeaponSummaryP12PLAYERstructs
	cmpw	$10, %bx
	jne	L2086
L2085:
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z21PlayerUpdateTimeLimitP12PLAYERstruct
	.cfi_endproc
LFE277:
	.p2align 4
	.globl	__Z16PlayerDeathResetP12PLAYERstruct
	.def	__Z16PlayerDeathResetP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16PlayerDeathResetP12PLAYERstruct:
LFB278:
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
	subl	$4, %esp
	movswl	348(%eax), %eax
	imull	$44, %eax, %edi
	movl	_User(,%eax,4), %esi
	addl	_sprite, %edi
	testb	$2, 22970(%ebx)
	jne	L2099
L2093:
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$8192, %edx
	movw	%cx, 24114(%ebx)
	movb	$13, 273(%esi)
	movw	%ax, 24104(%ebx)
	xorl	%eax, %eax
	movw	%ax, 23040(%ebx)
	xorl	%eax, %eax
	movw	%ax, 23200(%ebx)
	xorl	%eax, %eax
	movw	%ax, 23214(%ebx)
	movl	$30, %eax
	movw	%ax, 23042(%ebx)
	xorl	%eax, %eax
	movl	$0, 23216(%ebx)
	movl	$0, 23223(%ebx)
	movl	%eax, 23008(%ebx)
	movl	$1, %eax
	movl	%edx, 23012(%ebx)
	movb	$13, 23116(%ebx)
	movl	$0, 23112(%ebx)
	movl	$2, 24092(%ebx)
	movb	$0, 24097(%ebx)
	movl	$0, 24100(%ebx)
	movb	$0, 24106(%ebx)
	movb	$0, 24111(%ebx)
	movl	$0, 23020(%ebx)
	movl	$0, 23024(%ebx)
	movl	$0, 23028(%ebx)
	movl	$0, 23032(%ebx)
	movl	$0, 23036(%ebx)
	movl	$0, 23188(%ebx)
	movl	$0, 23192(%ebx)
	movl	$0, 23196(%ebx)
	movl	$0, 23202(%ebx)
	movl	$0, 23206(%ebx)
	movl	$0, 23210(%ebx)
	movl	$0, 23219(%ebx)
	movl	$0, 23226(%ebx)
	movl	$1966110, 23016(%ebx)
	movsbl	273(%esi), %ecx
	sall	%cl, %eax
	movl	$100, %ecx
	orl	$8193, %eax
	movl	%eax, 23012(%ebx)
	movsbl	273(%esi), %edx
	andl	$-532481, 22968(%ebx)
	btsl	%edx, %eax
	movl	$100, %edx
	orl	$2, %eax
	movl	%eax, 23012(%ebx)
	movw	%dx, 84(%esi)
	movswl	360(%ebx), %eax
	movl	$100, %edx
	movw	%cx, 23260(%ebx)
	xorl	%ecx, %ecx
	imull	$292, %eax, %eax
	movw	%dx, _puser+84(%eax)
	movw	%cx, 23258(%ebx)
	cmpb	$0, _Prediction
	jne	L2094
	xorl	%edx, %edx
	movl	%ebx, %eax
	call	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0
L2094:
	xorl	%edx, %edx
	movl	$-1, %eax
	movl	$0, 23300(%ebx)
	movw	%ax, 23238(%ebx)
	movl	%ebx, %eax
	movw	%dx, 23234(%ebx)
	call	__Z21PlayerUpdatePanelInfoP12PLAYERstruct
	leal	12(%edi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%edi)
	movl	$0, 22980(%ebx)
	andl	$2147479421, 22968(%ebx)
	movl	$0, 22984(%ebx)
	movl	$0, 100(%ebx)
	movl	$0, 104(%ebx)
	movl	$0, 200(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	movl	$0, 228(%ebx)
	movsbl	273(%esi), %eax
	movl	%ebx, (%esp)
	sall	$5, %eax
	call	*_DamageData(%eax)
	addl	$4, %esp
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
L2099:
	.cfi_restore_state
	cmpb	$0, _Prediction
	jne	L2093
	movl	%ebx, %eax
	call	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0
	jmp	L2093
	.cfi_endproc
LFE278:
	.p2align 4
	.def	__Z14SpawnSwordBlurP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14SpawnSwordBlurP18PANEL_SPRITEstruct:
LFB281:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	32(%eax), %eax
	cmpw	$200, 23004(%eax)
	jle	L2107
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2107:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movswl	42(%ebx), %edx
	movl	$64, %ecx
	movl	%edx, 4(%esp)
	movswl	38(%ebx), %edx
	movl	%edx, (%esp)
	xorl	%edx, %edx
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	204(%eax), %ecx
	movl	%ecx, %edx
	orl	$131072, %edx
	movl	%edx, 204(%eax)
	movzwl	36(%ebx), %esi
	movw	%si, 36(%eax)
	movzwl	40(%ebx), %esi
	movw	%si, 40(%eax)
	movzwl	232(%ebx), %esi
	movw	%si, 232(%eax)
	movzwl	190(%ebx), %esi
	movl	$__Z9SwordBlurP18PANEL_SPRITEstruct, 172(%eax)
	movw	%si, 190(%eax)
	movl	$9, %esi
	movw	%si, 248(%eax)
	movzwl	244(%ebx), %esi
	addl	$10, %esi
	movw	%si, 244(%eax)
	movl	$-1, %esi
	movw	%si, 178(%eax)
	movzwl	178(%ebx), %esi
	movw	%si, 180(%eax)
	movl	12(%ebx), %esi
	testb	$1, 19(%esi)
	je	L2102
	orl	$163840, %ecx
	movl	%ecx, 204(%eax)
	movl	%ecx, %edx
L2102:
	movzwl	234(%ebx), %ecx
	orb	$1, %dh
	movw	%cx, 234(%eax)
	movl	212(%ebx), %ecx
	movl	%edx, 204(%eax)
	movl	%ecx, 212(%eax)
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE281:
	.p2align 4
	.globl	__Z11pSwordSlideP18PANEL_SPRITEstruct
	.def	__Z11pSwordSlideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z11pSwordSlideP18PANEL_SPRITEstruct:
LFB282:
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
	movl	20(%esp), %ebx
	movl	%ebx, %eax
	movl	36(%ebx), %esi
	movl	40(%ebx), %edi
	call	__Z14SpawnSwordBlurP18PANEL_SPRITEstruct
	movswl	232(%ebx), %edx
	movswl	190(%ebx), %ebp
	movswl	_sintable(%edx,%edx), %eax
	addl	$512, %edx
	movl	%ebp, %ecx
	andl	$2047, %edx
	addl	$72, %ecx
	movswl	_sintable(%edx,%edx), %edx
	imull	%ebp, %eax
	movw	%cx, 190(%ebx)
	imull	%ebp, %edx
	imull	$-3, %eax, %eax
	leal	(%edx,%edx,2), %edx
	sarl	$6, %eax
	sarl	$6, %edx
	addl	%edi, %eax
	addl	%esi, %edx
	movl	%edx, 36(%ebx)
	movl	%eax, 40(%ebx)
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
LFE282:
	.p2align 4
	.globl	__Z15pSwordSlideDownP18PANEL_SPRITEstruct
	.def	__Z15pSwordSlideDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z15pSwordSlideDownP18PANEL_SPRITEstruct:
LFB283:
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
	movl	24(%esp), %ebx
	movl	%ebx, %eax
	movl	40(%ebx), %esi
	movl	36(%ebx), %edi
	call	__Z14SpawnSwordBlurP18PANEL_SPRITEstruct
	movl	32(%ebx), %ebp
	movswl	232(%ebx), %edx
	movswl	190(%ebx), %ecx
	movswl	23004(%ebp), %eax
	addl	%eax, %edx
	leal	512(%edx), %eax
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %edx
	imull	%ecx, %eax
	imull	$-3, %edx, %edx
	leal	(%eax,%eax,2), %eax
	sarl	$6, %eax
	sarl	$6, %edx
	addl	%edi, %eax
	addl	%esi, %edx
	movzwl	190(%ebx), %esi
	movl	%eax, 36(%ebx)
	movl	%edx, 40(%ebx)
	leal	60(%esi), %edx
	movw	%dx, 190(%ebx)
	cmpl	$-2621440, %eax
	jge	L2110
	testb	$2, 418(%ebp)
	je	L2112
	testb	$2, 22978(%ebp)
	jne	L2132
L2112:
	movl	20(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2133
	movswl	(%eax), %eax
	movl	$332, %edx
	movl	$200, %ecx
	movw	%dx, 38(%ebx)
	movw	%ax, 178(%ebx)
	movw	%cx, 42(%ebx)
	cmpl	$30719, %eax
	ja	L2120
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2118
L2134:
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%eax,4), %edx
	testw	%dx, %dx
	jle	L2118
	leal	200(%edx), %eax
	movswl	%ax, %edx
	jmp	L2117
	.p2align 4,,10
	.p2align 3
L2118:
	movzwl	_tilesiz+2(,%eax,4), %eax
	addw	$200, %ax
	movswl	%ax, %edx
L2117:
	movw	%ax, 42(%ebx)
	movl	%edx, 200(%ebx)
L2110:
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
L2120:
	.cfi_restore_state
	movl	$200, %edx
	movl	$200, %eax
	jmp	L2117
	.p2align 4,,10
	.p2align 3
L2133:
	xorl	%esi, %esi
	movl	$332, %edi
	movl	$200, %ebp
	movw	%si, 178(%ebx)
	movw	%di, 38(%ebx)
	movw	%bp, 42(%ebx)
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2118
	jmp	L2134
	.p2align 4,,10
	.p2align 3
L2132:
	movl	%ebp, %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	movl	12(%ebx), %eax
	leal	24(%eax), %edx
	movl	%edx, 12(%ebx)
	testb	$-128, 42(%eax)
	je	L2113
	movl	%ebx, (%esp)
	call	*32(%eax)
	movl	12(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebx)
L2113:
	movl	_randomseed, %eax
	movl	$-80, %esi
	movl	$200, %edi
	movl	$1024, %ebp
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	movw	%si, 38(%ebx)
	leal	1(%eax,%edx,4), %eax
	movw	%di, 42(%ebx)
	movl	$320, %edx
	movzwl	%ax, %eax
	movw	%bp, 232(%ebx)
	movl	$200, 200(%ebx)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L2114
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL13SwordAngTable(%edx,%edx), %edx
L2114:
	movl	32(%ebx), %eax
	movl	$2500, %ecx
	movw	%dx, 23004(%eax)
	movl	32(%ebx), %eax
	movw	%cx, 190(%ebx)
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
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.cfi_endproc
LFE283:
	.p2align 4
	.globl	__Z12pSwordSlideRP18PANEL_SPRITEstruct
	.def	__Z12pSwordSlideRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z12pSwordSlideRP18PANEL_SPRITEstruct:
LFB284:
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
	movl	20(%esp), %ebx
	movl	%ebx, %eax
	movl	36(%ebx), %esi
	movl	40(%ebx), %edi
	call	__Z14SpawnSwordBlurP18PANEL_SPRITEstruct
	movswl	232(%ebx), %edx
	movswl	190(%ebx), %ebp
	leal	1024(%edx), %eax
	addl	$1536, %edx
	movl	%ebp, %ecx
	andl	$2047, %eax
	andl	$2047, %edx
	addl	$72, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	movw	%cx, 190(%ebx)
	imull	%ebp, %eax
	imull	%ebp, %edx
	imull	$-3, %eax, %eax
	leal	(%edx,%edx,2), %edx
	sarl	$6, %edx
	sarl	$6, %eax
	addl	%esi, %edx
	addl	%edi, %eax
	movl	%edx, 36(%ebx)
	movl	%eax, 40(%ebx)
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
LFE284:
	.p2align 4
	.globl	__Z16pSwordSlideDownRP18PANEL_SPRITEstruct
	.def	__Z16pSwordSlideDownRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z16pSwordSlideDownRP18PANEL_SPRITEstruct:
LFB285:
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
	movl	24(%esp), %ebx
	movl	%ebx, %eax
	movl	36(%ebx), %edi
	movl	40(%ebx), %esi
	call	__Z14SpawnSwordBlurP18PANEL_SPRITEstruct
	movl	32(%ebx), %ebp
	movswl	232(%ebx), %eax
	movswl	190(%ebx), %ecx
	movswl	23004(%ebp), %edx
	subl	%edx, %eax
	leal	1536(%eax), %edx
	addl	$1024, %eax
	andl	$2047, %eax
	andl	$2047, %edx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%ecx, %eax
	imull	%ecx, %edx
	imull	$-3, %eax, %eax
	leal	(%edx,%edx,2), %edx
	sarl	$6, %edx
	sarl	$6, %eax
	addl	%edi, %edx
	addl	%esi, %eax
	movl	%edx, 36(%ebx)
	movl	%eax, 40(%ebx)
	movzwl	190(%ebx), %eax
	addl	$72, %eax
	movw	%ax, 190(%ebx)
	cmpl	$23003135, %edx
	jle	L2137
	testb	$2, 418(%ebp)
	je	L2139
	testb	$2, 22978(%ebp)
	jne	L2159
L2139:
	movl	20(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2160
	movswl	(%eax), %eax
	movl	$332, %edx
	movl	$200, %ecx
	movw	%dx, 38(%ebx)
	movw	%ax, 178(%ebx)
	movw	%cx, 42(%ebx)
	cmpl	$30719, %eax
	ja	L2147
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2145
L2161:
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%eax,4), %edx
	testw	%dx, %dx
	jle	L2145
	leal	200(%edx), %eax
	movswl	%ax, %edx
	jmp	L2144
	.p2align 4,,10
	.p2align 3
L2145:
	movzwl	_tilesiz+2(,%eax,4), %eax
	addw	$200, %ax
	movswl	%ax, %edx
L2144:
	movw	%ax, 42(%ebx)
	movl	%edx, 200(%ebx)
L2137:
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
L2147:
	.cfi_restore_state
	movl	$200, %edx
	movl	$200, %eax
	jmp	L2144
	.p2align 4,,10
	.p2align 3
L2160:
	xorl	%esi, %esi
	movl	$332, %edi
	movl	$200, %ebp
	movw	%si, 178(%ebx)
	movw	%di, 38(%ebx)
	movw	%bp, 42(%ebx)
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2145
	jmp	L2161
	.p2align 4,,10
	.p2align 3
L2159:
	movl	%ebp, %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	xorl	%eax, %eax
	movw	%ax, 228(%ebx)
	movl	12(%ebx), %eax
	leal	24(%eax), %edx
	movl	%edx, 12(%ebx)
	testb	$-128, 42(%eax)
	je	L2140
	movl	%ebx, (%esp)
	call	*32(%eax)
	movl	12(%ebx), %eax
	movl	12(%eax), %eax
	movl	%eax, 12(%ebx)
L2140:
	movl	_randomseed, %eax
	movl	$412, %edi
	movl	$200, %ebp
	addl	$1, _krandcount
	movw	%di, 38(%ebx)
	leal	(%eax,%eax,4), %edx
	movw	%bp, 42(%ebx)
	movl	$200, 200(%ebx)
	leal	1(%eax,%edx,4), %eax
	movl	$320, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L2141
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL13SwordAngTable(%edx,%edx), %edx
L2141:
	movl	32(%ebx), %eax
	movl	$2500, %esi
	movl	$1024, %ecx
	movw	%dx, 23004(%eax)
	movl	32(%ebx), %eax
	movw	%cx, 232(%ebx)
	movw	%si, 190(%ebx)
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
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.cfi_endproc
LFE285:
	.p2align 4
	.def	__Z13pSpawnUziClipP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13pSpawnUziClipP18PANEL_SPRITEstruct:
LFB286:
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
	movl	32(%ebx), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$8, %eax
	call	__Z9PlaySoundiPiS_S_i
	movswl	42(%ebx), %edx
	movswl	38(%ebx), %eax
	movl	32(%ebx), %esi
	subl	$84, %edx
	testb	$-128, 205(%ebx)
	movl	%edx, 4(%esp)
	je	L2163
	subl	$16, %eax
	movl	$64, %ecx
	movl	$_ps_UziClip, %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	$1814, %ecx
	movl	204(%eax), %edx
	movw	%cx, 232(%eax)
	orb	$-128, %dh
	movl	%edx, 204(%eax)
L2164:
	movl	$1050, %ecx
	orl	$131072, %edx
	movl	%ebx, 8(%eax)
	movw	%cx, 190(%eax)
	movl	%edx, 204(%eax)
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
L2163:
	.cfi_restore_state
	addl	$16, %eax
	movl	$_ps_UziClip, %edx
	movl	$64, %ecx
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	$1258, %esi
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movw	%si, 232(%eax)
	movl	204(%eax), %edx
	jmp	L2164
	.cfi_endproc
LFE286:
	.p2align 4
	.def	__Z14pUziDoneReloadP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z14pUziDoneReloadP18PANEL_SPRITEstruct:
LFB287:
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
	pushl	%ebx
	subl	$16, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	movl	(%edi), %edi
	movl	32(%edi), %ebx
	movzbl	24092(%ebx), %eax
	testb	$1, 204(%edi)
	je	L2167
	cmpb	$3, %al
	je	L2180
L2167:
	cmpb	$2, %al
	ja	L2181
L2171:
	movl	$0, 23064(%ebx)
	movl	$0, 23048(%ebx)
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	%eax, (%edx)
	movl	4(%edi), %edx
	movl	%edx, 4(%eax)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpb	$0, _Prediction
	jne	L2166
	movb	$3, 23117(%ebx)
	testb	$8, 23012(%ebx)
	je	L2166
	testb	$16, 22969(%ebx)
	jne	L2166
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
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
	jmp	__Z13InitWeaponUziP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L2180:
	.cfi_restore_state
	movl	$_ps_UziEject, -16(%ebp)
	movss	-16(%ebp), %xmm0
	movl	$128, %ecx
	movl	$_ps_PresentUzi, %edx
	movb	$0, 24092(%ebx)
	movl	32(%edi), %eax
	unpcklps	%xmm0, %xmm0
	movlps	%xmm0, -16(%ebp)
	movl	$208, 4(%esp)
	movl	$60, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movlps	-16(%ebp), %xmm0
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2168
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2169
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L2168
L2169:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2168:
	addw	%dx, 42(%eax)
	xorl	%edx, %edx
	movw	%dx, 228(%eax)
	movzwl	_ps_PresentUziReload, %edx
	orl	$163858, 204(%eax)
	movl	$_ps_RetractUzi, 16(%eax)
	movl	$_ps_PresentUzi, 20(%eax)
	movl	$_ps_PresentUziReload, 12(%eax)
	movw	%dx, 178(%eax)
	movlps	%xmm0, 24(%eax)
	movl	%eax, 23064(%ebx)
	movl	%eax, 23048(%ebx)
	movl	$0, 8(%eax)
	movl	4(%edi), %edx
	movl	(%edi), %eax
	movl	%eax, (%edx)
	movl	4(%edi), %edx
	movl	%edx, 4(%eax)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2166:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
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
L2181:
	.cfi_restore_state
	subl	$3, %eax
	movb	%al, 24092(%ebx)
	jmp	L2171
	.cfi_endproc
LFE287:
	.p2align 4
	.def	__Z8pUziClipP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z8pUziClipP18PANEL_SPRITEstruct:
LFB289:
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
	movl	24(%esp), %ebx
	movswl	232(%ebx), %eax
	movswl	190(%ebx), %edi
	movl	36(%ebx), %ecx
	movzwl	40(%ebx), %esi
	leal	512(%eax), %edx
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	imull	%edi, %eax
	imull	%edi, %edx
	movzwl	190(%ebx), %edi
	imull	$-3, %eax, %eax
	addl	$48, %edi
	leal	(%edx,%edx,2), %edx
	movw	%di, 190(%ebx)
	sarl	$6, %edx
	sarl	$6, %eax
	addl	40(%ebx), %eax
	addl	%ecx, %edx
	movl	%eax, 40(%ebx)
	movl	%edx, 36(%ebx)
	cmpl	$13172735, %eax
	jg	L2188
	addl	$8, %esp
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
L2188:
	.cfi_restore_state
	movl	8(%ebx), %edx
	movl	%ecx, 36(%ebx)
	movl	$200, %ecx
	movw	%si, 40(%ebx)
	movl	$800, %esi
	movw	%cx, 42(%ebx)
	movl	$64, %ecx
	movw	%si, 190(%edx)
	movzwl	232(%ebx), %eax
	addw	$1024, %ax
	andw	$2047, %ax
	movw	%ax, 232(%edx)
	movl	32(%ebx), %eax
	movl	$200, 4(%esp)
	movswl	38(%ebx), %edx
	movl	%edx, (%esp)
	movl	$_ps_UziReload, %edx
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	204(%eax), %edx
	movl	%edx, %ecx
	orl	$131072, %ecx
	movl	%ecx, 204(%eax)
	testb	$-128, 205(%ebx)
	je	L2187
	orl	$163840, %edx
	movl	%edx, 204(%eax)
L2187:
	movzwl	232(%ebx), %esi
	leal	1024(%esi), %edx
	andw	$2047, %dx
	movw	%dx, 232(%eax)
	movl	$900, %edx
	movw	%dx, 190(%eax)
	movl	8(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%eax)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
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
LFE289:
	.p2align 4
	.globl	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0
	.def	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0;	.scl	2;	.type	32;	.endef
__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0:
LFB292:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	32(%eax), %esi
	cmpb	$1, 24092(%esi)
	je	L2189
	movl	23048(%esi), %edx
	movl	8(%edx), %ebx
	testl	%ebx, %ebx
	jne	L2189
	testb	$16, 22969(%esi)
	jne	L2189
	orl	$1, 204(%eax)
	movl	%eax, %ebx
	movl	$128, %ecx
	movl	$_ps_PresentUzi2, %edx
	movss	LC21, %xmm1
	movl	$_ps_PresentUzi2, 8(%esp)
	movss	8(%esp), %xmm2
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	movss	8(%esp), %xmm0
	movb	$0, 24092(%esi)
	movl	$208, 4(%esp)
	unpcklps	%xmm2, %xmm1
	movl	$60, (%esp)
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movups	8(%esp), %xmm0
	movl	%eax, 8(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2191
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	jne	L2196
L2192:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2191:
	movss	LC22, %xmm1
	movl	$_ps_FireUzi2, 8(%esp)
	xorl	%ecx, %ecx
	movss	8(%esp), %xmm2
	addw	%dx, 42(%eax)
	movzwl	_ps_PresentUzi2, %edx
	movw	%cx, 228(%eax)
	unpcklps	%xmm2, %xmm1
	movups	%xmm0, 8(%eax)
	orl	$131074, 204(%eax)
	movw	%dx, 178(%eax)
	movlps	%xmm1, 24(%eax)
	cmpw	$-1, 56(%eax)
	je	L2197
L2193:
	movl	$2040, %edx
	movw	%dx, 54(%eax)
L2189:
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
L2196:
	.cfi_restore_state
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jle	L2192
	jmp	L2191
	.p2align 4,,10
	.p2align 3
L2197:
	movl	$-4784096, 56(%eax)
	jmp	L2193
	.cfi_endproc
LFE292:
	.p2align 4
	.globl	__Z8pUziRestP18PANEL_SPRITEstruct
	.def	__Z8pUziRestP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z8pUziRestP18PANEL_SPRITEstruct:
LFB293:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	204(%ebx), %eax
	movl	32(%ebx), %edx
	movl	%eax, %esi
	testb	$8, 22970(%edx)
	je	L2199
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	L2234
	testb	$1, %al
	je	L2214
L2213:
	movl	$_ps_UziHide, %edx
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	jne	L2235
L2202:
	movl	204(%ebx), %edx
	testb	$2, %dl
	jne	L2212
L2205:
	andl	$1048576, %esi
	movl	%esi, %ecx
	movl	32(%ebx), %esi
	testb	$2, 418(%esi)
	jne	L2207
	shrl	$20, %ecx
	andl	$1, %ecx
L2208:
	andl	$4, %edx
	jne	L2209
	movl	$786432, 236(%ebx)
	movswl	38(%ebx), %eax
	movl	%eax, 196(%ebx)
	movswl	42(%ebx), %eax
	movl	%eax, 200(%ebx)
	movl	$3, %eax
	movw	%ax, 242(%ebx)
L2209:
	movl	192(%esi), %eax
	orl	196(%esi), %eax
	movl	%ebx, %eax
	movb	%cl, 3(%esp)
	setne	%dl
	orl	%ecx, %edx
	andl	$1, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	32(%ebx), %eax
	cmpb	$0, 3(%esp)
	je	L2210
	call	__Z8WeaponOKP12PLAYERstruct
	testb	%al, %al
	je	L2198
	andl	$-1048577, 204(%ebx)
	movl	24(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	xorl	%edx, %edx
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2211
	movzwl	(%eax), %edx
L2211:
	movw	%dx, 178(%ebx)
L2198:
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
L2234:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z14InitWeaponUzi2P18PANEL_SPRITEstruct.isra.0
	movl	204(%ebx), %eax
	.p2align 4
	.p2align 3
L2199:
	testb	$1, %al
	je	L2214
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L2213
L2214:
	movl	%eax, %edx
	testb	$2, %al
	je	L2236
L2212:
	cmpw	$-1, 56(%ebx)
	jne	L2206
	movl	$-4784096, 56(%ebx)
L2206:
	movl	$2040, %eax
	movw	%ax, 54(%ebx)
	jmp	L2205
	.p2align 4,,10
	.p2align 3
L2236:
	movl	$_ps_UziHide, %edx
	movl	%ebx, %eax
	call	__Z15pWeaponHideKeysP18PANEL_SPRITEstructP17PANEL_STATEstruct
	testb	%al, %al
	je	L2202
	jmp	L2198
	.p2align 4,,10
	.p2align 3
L2207:
	movl	22976(%esi), %eax
	andl	$131072, %eax
	orl	%ecx, %eax
	setne	%cl
	jmp	L2208
	.p2align 4,,10
	.p2align 3
L2210:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z8WeaponOKP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L2235:
	.cfi_restore_state
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2198
	xorl	%edx, %edx
	movl	$_ps_Uzi2Hide, 12(%eax)
	movw	%dx, 228(%eax)
	movzwl	_ps_Uzi2Hide, %edx
	movw	%dx, 178(%eax)
	jmp	L2198
	.cfi_endproc
LFE293:
	.p2align 4
	.globl	__Z17InitWeaponShotgunP12PLAYERstruct
	.def	__Z17InitWeaponShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17InitWeaponShotgunP12PLAYERstruct:
LFB294:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L2237
	movb	$2, 23117(%ebx)
	testb	$4, 23012(%ebx)
	je	L2237
	testb	$16, 22969(%ebx)
	jne	L2237
	movl	23060(%ebx), %edx
	movl	$2, %eax
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	L2248
L2239:
	cmpl	%edx, 23048(%ebx)
	je	L2237
	movss	LC23, %xmm1
	movl	$_ps_ShotgunFire, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$_ps_RetractShotgun, 8(%esp)
	movss	8(%esp), %xmm2
	movw	%ax, 250(%ecx)
	movl	%ebx, %eax
	unpcklps	%xmm0, %xmm1
	movzbl	23117(%ebx), %edx
	movss	LC23, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movups	8(%esp), %xmm0
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movzbl	23117(%ebx), %eax
	movl	23052(%ebx,%eax,4), %esi
	xorl	%eax, %eax
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentShotgun, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	leal	8(%ebx), %eax
	movl	$_ps_ShotgunRest, 28(%esi)
	movups	%xmm0, 12(%esi)
	movl	%eax, (%esp)
	movl	$240, %eax
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L2237:
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
L2248:
	.cfi_restore_state
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentShotgun, %edx
	movl	%ebx, %eax
	movl	$202, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, 23060(%ebx)
	movswl	178(%eax), %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$30719, %edx
	ja	L2240
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2241
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%edx,4), %eax
	testw	%ax, %ax
	jg	L2240
L2241:
	movzwl	_tilesiz+2(,%edx,4), %eax
L2240:
	addw	%ax, 42(%ecx)
	movzbl	23117(%ebx), %edx
	movl	%edx, %eax
	movl	23052(%ebx,%edx,4), %edx
	jmp	L2239
	.cfi_endproc
LFE294:
	.p2align 4
	.globl	__Z14InitWeaponRailP12PLAYERstruct
	.def	__Z14InitWeaponRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitWeaponRailP12PLAYERstruct:
LFB296:
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzbl	_SW_GameFlags, %eax
	movl	8(%ebp), %ebx
	andl	$1, %eax
	orb	_Prediction, %al
	jne	L2249
	movb	$7, 23117(%ebx)
	testb	$-128, 23012(%ebx)
	je	L2249
	testb	$16, 22969(%ebx)
	jne	L2249
	movl	23080(%ebx), %edx
	movl	$7, %eax
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	L2266
L2251:
	cmpl	%edx, 23048(%ebx)
	je	L2249
	movl	$_ps_RailFire, 8(%esp)
	movss	8(%esp), %xmm0
	leal	8(%ebx), %edi
	movss	LC24, %xmm1
	movl	$_ps_RetractRail, 8(%esp)
	movss	8(%esp), %xmm2
	movw	%ax, 250(%ecx)
	movl	%ebx, %eax
	unpcklps	%xmm0, %xmm1
	movzbl	23117(%ebx), %edx
	movss	LC24, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movups	8(%esp), %xmm0
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movzbl	23117(%ebx), %eax
	movl	%ecx, 8(%esp)
	movl	23052(%ebx,%eax,4), %esi
	xorl	%eax, %eax
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentRail, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	movl	$243, %eax
	movups	%xmm0, 12(%esi)
	movl	$_ps_RailRest, 28(%esi)
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%edi, (%esp)
	movl	8(%esp), %ecx
	movl	%ebx, %edx
	movl	$9, 4(%esp)
	movl	$270, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %edx
	movl	32(%esi), %eax
	testl	%edx, %edx
	je	L2254
	cmpl	$-1, 32(%edx)
	je	L2267
L2255:
	movzwl	348(%eax), %eax
	movw	%ax, 48(%edx)
	movl	32(%esi), %eax
L2254:
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L2249:
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
L2267:
	.cfi_restore_state
	testb	$16, 28(%edx)
	jne	L2255
	movb	$1, 68(%edx)
	movl	$2, 28(%edx)
	movl	32(%esi), %eax
	jmp	L2254
	.p2align 4,,10
	.p2align 3
L2266:
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentRail, %edx
	movl	%ebx, %eax
	movl	$166, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, 23080(%ebx)
	movswl	178(%eax), %edx
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$30719, %edx
	ja	L2252
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2253
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%edx,4), %eax
	testw	%ax, %ax
	jg	L2252
L2253:
	movzwl	_tilesiz+2(,%edx,4), %eax
L2252:
	addw	%ax, 42(%ecx)
	movzbl	23117(%ebx), %edx
	movl	%edx, %eax
	movl	23052(%ebx,%edx,4), %edx
	jmp	L2251
	.cfi_endproc
LFE296:
	.p2align 4
	.globl	__Z15InitWeaponHeartP12PLAYERstruct
	.def	__Z15InitWeaponHeartP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitWeaponHeartP12PLAYERstruct:
LFB299:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 3, -12
	movzbl	_SW_GameFlags, %eax
	movl	8(%ebp), %ebx
	andl	$1, %eax
	orb	_Prediction, %al
	jne	L2268
	testb	$2, 23013(%ebx)
	je	L2268
	testb	$16, 22969(%ebx)
	jne	L2268
	movl	23088(%ebx), %eax
	testl	%eax, %eax
	je	L2278
L2270:
	cmpl	%eax, 23048(%ebx)
	je	L2268
	movl	$_ps_HeartAttack, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$9, %edx
	movl	%ebx, %eax
	movss	LC25, %xmm1
	movl	$_ps_RetractHeart, 8(%esp)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC25, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	leal	8(%ebx), %eax
	movl	%ebx, %edx
	leal	4(%ebx), %ecx
	movl	%eax, (%esp)
	movl	$27, %eax
	movl	$13, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	23088(%ebx), %eax
	xorl	%edx, %edx
	movups	8(%esp), %xmm0
	movl	%eax, 23048(%ebx)
	movw	%dx, 228(%eax)
	movzwl	_ps_PresentHeart, %edx
	orl	$131072, 204(%eax)
	movw	%dx, 178(%eax)
	movl	32(%eax), %edx
	movl	$_ps_HeartRest, 28(%eax)
	movups	%xmm0, 12(%eax)
	andl	$-131073, 22976(%edx)
	movl	32(%eax), %eax
	orl	$131072, 22976(%eax)
L2268:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2278:
	.cfi_restore_state
	movl	$212, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentHeart, %edx
	movl	%ebx, %eax
	movl	$170, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23088(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2271
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2272
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L2271
L2272:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2271:
	addw	%dx, 42(%eax)
	movl	23088(%ebx), %eax
	jmp	L2270
	.cfi_endproc
LFE299:
	.p2align 4
	.def	__Z17pHeartActionBloodP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z17pHeartActionBloodP18PANEL_SPRITEstruct:
LFB301:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$200, %edx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	32(%esp), %esi
	movl	200(%esi), %eax
	subl	$3, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	%eax, 200(%esi)
	movw	%ax, 42(%esi)
	testb	$4, 204(%esi)
	jne	L2280
	movswl	38(%esi), %edx
	cwtl
	movl	$3, %ecx
	movl	$786432, 236(%esi)
	movl	%eax, 200(%esi)
	movl	%edx, 196(%esi)
	movw	%cx, 242(%esi)
L2280:
	movl	32(%esi), %eax
	movl	196(%eax), %edx
	orw	192(%eax), %dx
	movl	%esi, %eax
	movswl	%dx, %edx
	call	__Z10pWeaponBobP18PANEL_SPRITEstructs
	movl	__ZZ15SpawnHeartBloodP18PANEL_SPRITEstructE10HeartShrap+8, %edx
	testl	%edx, %edx
	je	L2279
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	$__ZZ15SpawnHeartBloodP18PANEL_SPRITEstructE10HeartShrap, %ebx
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	32(%esi), %eax
	movl	%eax, 8(%esp)
	jmp	L2287
	.p2align 4,,10
	.p2align 3
L2294:
	sall	$14, %eax
	cmpl	$1073699999, %eax
	ja	L2284
	shrl	%eax
	movl	$-362654125, %ecx
	mull	%ecx
	movl	%edx, %eax
	shrl	$14, %eax
	leal	20000(%eax), %edx
L2286:
	movl	%edx, 212(%ebp)
	movl	8(%ebx), %edi
	movl	12(%ebx), %eax
	addl	%edi, %eax
	sarl	$4, %eax
	call	__Z11RandomRangei
	movl	$8000, 220(%ebp)
	sall	$4, %eax
	addl	%edi, %eax
	movl	%eax, 216(%ebp)
	movl	204(%ebp), %eax
	andl	$-4194305, %eax
	orl	$2097152, %eax
	movl	%eax, 204(%ebp)
	movl	%ebp, %eax
	call	__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0
L2283:
	movl	40(%ebx), %eax
	addl	$32, %ebx
	testl	%eax, %eax
	je	L2293
L2287:
	cmpw	$2, 4(%ebx)
	jne	L2282
	cmpb	$0, _MoveSkip2
	jne	L2283
L2282:
	movl	_randomseed, %eax
	movl	$64, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$1, %eax
	movl	24(%ebx,%eax,4), %edx
	movl	8(%esp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, %ebp
	movzwl	(%ebx), %eax
	addw	38(%esi), %ax
	movw	%ax, 38(%ebp)
	movzwl	2(%ebx), %eax
	addw	42(%esi), %ax
	movw	%ax, 42(%ebp)
	movl	16(%ebx), %edi
	movl	20(%ebx), %eax
	subl	%edi, %eax
	sarl	$4, %eax
	call	__Z11RandomRangei
	addl	$1, _krandcount
	orl	$131072, 204(%ebp)
	sall	$4, %eax
	addl	%edi, %eax
	movl	%eax, 224(%ebp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	jne	L2294
L2284:
	movl	$49999, %edx
	jmp	L2286
	.p2align 4,,10
	.p2align 3
L2293:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L2279:
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE301:
	.p2align 4
	.def	__Z20SpawnSmallHeartBloodP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z20SpawnSmallHeartBloodP18PANEL_SPRITEstruct:
LFB305:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	32(%esp), %esi
	movl	32(%esi), %edx
	movl	$13, 4(%esp)
	leal	8(%edx), %eax
	leal	4(%edx), %ecx
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movl	$27, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	__ZZ20SpawnSmallHeartBloodP18PANEL_SPRITEstructE10HeartShrap+8, %edx
	testl	%edx, %edx
	je	L2295
	movl	%edi, 20(%esp)
	movl	%ebp, 24(%esp)
	movl	%ebx, 12(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	$__ZZ20SpawnSmallHeartBloodP18PANEL_SPRITEstructE10HeartShrap, %ebx
	.p2align 4
	.p2align 3
L2298:
	movl	_randomseed, %eax
	movl	$64, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$1, %eax
	movl	24(%ebx,%eax,4), %edx
	movl	8(%esp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, %ebp
	movzwl	(%ebx), %eax
	addw	38(%esi), %ax
	movw	%ax, 38(%ebp)
	movzwl	2(%ebx), %eax
	addw	42(%esi), %ax
	movw	%ax, 42(%ebp)
	movl	16(%ebx), %edi
	movl	20(%ebx), %eax
	subl	%edi, %eax
	sarl	$4, %eax
	call	__Z11RandomRangei
	addl	$1, _krandcount
	orl	$131072, 204(%ebp)
	sall	$4, %eax
	addl	%edi, %eax
	movl	%eax, 224(%ebp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$29999, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L2297
	sall	$13, %eax
	movl	$-1673474013, %ecx
	mull	%ecx
	shrl	$14, %edx
	addl	$10000, %edx
L2297:
	movl	%edx, 212(%ebp)
	movl	8(%ebx), %edi
	addl	$32, %ebx
	movl	-20(%ebx), %eax
	addl	%edi, %eax
	sarl	$4, %eax
	call	__Z11RandomRangei
	movl	$8000, 220(%ebp)
	sall	$4, %eax
	addl	%edi, %eax
	movl	%eax, 216(%ebp)
	movl	204(%ebp), %eax
	andl	$-4194305, %eax
	orl	$2097152, %eax
	movl	%eax, 204(%ebp)
	movl	%ebp, %eax
	call	__Z11DoPanelJumpP18PANEL_SPRITEstruct.isra.0
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jne	L2298
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
L2295:
	movl	16(%esp), %esi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE305:
	.p2align 4
	.globl	__Z17InitWeaponGrenadeP12PLAYERstruct
	.def	__Z17InitWeaponGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17InitWeaponGrenadeP12PLAYERstruct:
LFB306:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L2303
	testb	$32, 23012(%ebx)
	je	L2303
	testb	$16, 22969(%ebx)
	jne	L2303
	movl	23072(%ebx), %eax
	testl	%eax, %eax
	je	L2313
L2305:
	cmpl	%eax, 23048(%ebx)
	je	L2303
	movl	$_ps_GrenadeFire, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$5, %edx
	movl	%ebx, %eax
	movss	LC26, %xmm1
	movl	$_ps_RetractGrenade, 8(%esp)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC26, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23072(%ebx), %esi
	xorl	%eax, %eax
	leal	4(%ebx), %ecx
	movups	8(%esp), %xmm0
	movl	$680, %edx
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentGrenade, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	leal	8(%ebx), %eax
	addw	$34, 42(%esi)
	subw	$45, 38(%esi)
	movw	%dx, 190(%esi)
	movl	%ebx, %edx
	movl	$_ps_GrenadeRest, 28(%esi)
	movl	$117965184, 232(%esi)
	movups	%xmm0, 12(%esi)
	movl	%eax, (%esp)
	movl	$242, %eax
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L2303:
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
L2313:
	.cfi_restore_state
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentGrenade, %edx
	movl	%ebx, %eax
	movl	$180, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23072(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2306
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2307
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L2306
L2307:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2306:
	addw	%dx, 42(%eax)
	movl	23072(%ebx), %eax
	jmp	L2305
	.cfi_endproc
LFE306:
	.section .rdata,"dr"
LC27:
	.ascii "Out of Sticky Bombs!\0"
	.text
	.p2align 4
	.globl	__Z14InitWeaponMineP12PLAYERstruct
	.def	__Z14InitWeaponMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitWeaponMineP12PLAYERstruct:
LFB308:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L2314
	cmpw	$0, 23028(%ebx)
	jle	L2330
	testb	$64, 23012(%ebx)
	je	L2314
L2320:
	testb	$16, 22969(%ebx)
	jne	L2314
	movl	23076(%ebx), %eax
	testl	%eax, %eax
	je	L2331
L2317:
	cmpl	%eax, 23048(%ebx)
	je	L2314
	movl	$_ps_MineThrow, 8(%esp)
	movss	8(%esp), %xmm0
	movl	$6, %edx
	movl	%ebx, %eax
	movss	LC28, %xmm1
	movl	$_ps_RetractMine, 8(%esp)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC28, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23076(%ebx), %esi
	xorl	%eax, %eax
	leal	4(%ebx), %ecx
	movups	8(%esp), %xmm0
	movl	%ebx, %edx
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentMine, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	leal	8(%ebx), %eax
	movl	$_ps_MineRest, 28(%esi)
	movups	%xmm0, 12(%esi)
	movl	%eax, (%esp)
	movl	$279, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L2314:
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
L2330:
	.cfi_restore_state
	movl	$LC27, %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	testb	$64, 23012(%ebx)
	je	L2314
	cmpw	$0, 23028(%ebx)
	jg	L2320
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
L2331:
	.cfi_restore_state
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentMine, %edx
	movl	%ebx, %eax
	movl	$210, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23076(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2318
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2319
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L2318
L2319:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2318:
	addw	%dx, 42(%eax)
	movl	23076(%ebx), %eax
	jmp	L2317
	.cfi_endproc
LFE308:
	.p2align 4
	.def	__Z13SpawnFistBlurP18PANEL_SPRITEstruct;	.scl	3;	.type	32;	.endef
__Z13SpawnFistBlurP18PANEL_SPRITEstruct:
LFB310:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	32(%eax), %eax
	cmpw	$200, 24108(%eax)
	jle	L2339
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2339:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movswl	42(%ebx), %edx
	movl	$64, %ecx
	movl	%edx, 4(%esp)
	movswl	38(%ebx), %edx
	movl	%edx, (%esp)
	xorl	%edx, %edx
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	204(%eax), %ecx
	movl	%ecx, %edx
	orl	$131072, %edx
	movl	%edx, 204(%eax)
	movzwl	36(%ebx), %esi
	movw	%si, 36(%eax)
	movzwl	40(%ebx), %esi
	movw	%si, 40(%eax)
	movzwl	232(%ebx), %esi
	movw	%si, 232(%eax)
	movzwl	190(%ebx), %esi
	movl	$__Z8FistBlurP18PANEL_SPRITEstruct, 172(%eax)
	movw	%si, 190(%eax)
	movl	$9, %esi
	movw	%si, 248(%eax)
	movzwl	244(%ebx), %esi
	addl	$10, %esi
	movw	%si, 244(%eax)
	movl	$-1, %esi
	movw	%si, 178(%eax)
	movzwl	178(%ebx), %esi
	movw	%si, 180(%eax)
	movl	12(%ebx), %esi
	testb	$1, 19(%esi)
	je	L2334
	orl	$163840, %ecx
	movl	%ecx, 204(%eax)
	movl	%ecx, %edx
L2334:
	movzwl	234(%ebx), %ecx
	orb	$1, %dh
	movw	%cx, 234(%eax)
	movl	212(%ebx), %ecx
	movl	%edx, 204(%eax)
	movl	%ecx, 212(%eax)
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE310:
	.p2align 4
	.globl	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.def	__Z14pFistSlideDownP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z14pFistSlideDownP18PANEL_SPRITEstruct:
LFB311:
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
	movl	20(%esp), %ebx
	movl	%ebx, %eax
	movl	36(%ebx), %edi
	movl	40(%ebx), %esi
	call	__Z13SpawnFistBlurP18PANEL_SPRITEstruct
	movl	32(%ebx), %ecx
	movswl	190(%ebx), %ebp
	movzwl	24108(%ecx), %eax
	addw	232(%ebx), %ax
	movl	%ebp, %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cmpl	$_ps_Kick, 24(%ebx)
	je	L2341
	cmpb	$3, 24110(%ecx)
	je	L2341
	imull	%eax, %ebp
	leal	0(%ebp,%ebp,2), %eax
	movl	%eax, %ebp
	negl	%eax
	sarl	$6, %eax
	sarl	$6, %ebp
	leal	(%eax,%eax,2), %eax
	subl	%ebp, %edi
	addl	%eax, %esi
	jmp	L2343
	.p2align 4,,10
	.p2align 3
L2341:
	imull	%ebp, %eax
	imull	$-3, %eax, %eax
	sarl	$6, %eax
	addl	%eax, %esi
L2343:
	addw	$144, %dx
	movl	%edi, 36(%ebx)
	movl	%esi, 40(%ebx)
	movw	%dx, 190(%ebx)
	cmpl	$28901375, %esi
	jle	L2340
	testb	$2, 418(%ecx)
	je	L2345
	testb	$2, 22978(%ecx)
	jne	L2373
L2345:
	movl	20(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2374
	movswl	(%eax), %eax
	movl	$302, %edx
	movl	$200, %ecx
	movw	%dx, 38(%ebx)
	movw	%ax, 178(%ebx)
	movw	%cx, 42(%ebx)
	cmpl	$30719, %eax
	ja	L2358
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2354
L2375:
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%eax,4), %edx
	testw	%dx, %dx
	jle	L2354
	leal	200(%edx), %eax
	movswl	%ax, %edx
	jmp	L2353
	.p2align 4,,10
	.p2align 3
L2354:
	movzwl	_tilesiz+2(,%eax,4), %eax
	addw	$200, %ax
	movswl	%ax, %edx
L2353:
	movw	%ax, 42(%ebx)
	movl	%edx, 200(%ebx)
L2340:
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
L2358:
	.cfi_restore_state
	movl	$200, %edx
	movl	$200, %eax
	jmp	L2353
	.p2align 4,,10
	.p2align 3
L2374:
	xorl	%esi, %esi
	movl	$302, %edi
	movl	$200, %ebp
	movw	%si, 178(%ebx)
	movw	%di, 38(%ebx)
	movw	%bp, 42(%ebx)
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2354
	jmp	L2375
	.p2align 4,,10
	.p2align 3
L2373:
	movl	%ecx, %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	_krandcount, %edx
	movl	32(%ebx), %esi
	leal	1(%edx), %eax
	addl	$2, %edx
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %ecx
	leal	(%ecx,%ecx,4), %eax
	movl	%ecx, _randomseed
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	cmpl	$65535, %ecx
	je	L2346
	sall	$14, %ecx
	cmpl	$537936224, %ecx
	ja	L2346
	movl	12(%ebx), %ecx
	subl	24(%ebx), %ecx
	xorl	%ebp, %ebp
	movl	%edx, _krandcount
	leal	_ps_FistSwing+24(%ecx), %edi
	movl	%eax, _randomseed
	movl	$320, %edx
	movl	%edi, 12(%ebx)
	movl	$1024, %edi
	movw	%bp, 228(%ebx)
	movzwl	_ps_FistSwing+24(%ecx), %ecx
	movl	$_ps_FistSwing, 24(%ebx)
	movw	%cx, 178(%ebx)
	movl	$20, %ecx
	movb	$0, 24110(%esi)
	movl	$200, %esi
	movw	%cx, 38(%ebx)
	movw	%si, 42(%ebx)
	movl	$200, 200(%ebx)
	movw	%di, 232(%ebx)
	cmpl	$65535, %eax
	je	L2350
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL12FistAngTable(%edx,%edx), %edx
L2350:
	movl	32(%ebx), %eax
	movw	%dx, 24108(%eax)
L2372:
	movl	$3500, %ecx
	movl	32(%ebx), %eax
	movw	%cx, 190(%ebx)
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
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L2346:
	.cfi_restore_state
	movl	$_ps_FistSwing, 24(%ebx)
	xorl	%edi, %edi
	movb	$0, 24110(%esi)
	movl	24(%ebx), %ecx
	xorl	%esi, %esi
	movw	%di, 228(%ebx)
	movl	%ecx, 12(%ebx)
	testl	%ecx, %ecx
	je	L2348
	movzwl	(%ecx), %esi
L2348:
	movw	%si, 178(%ebx)
	movl	$302, %ecx
	movl	$200, %esi
	movl	%edx, _krandcount
	movl	$320, %edx
	movw	%cx, 38(%ebx)
	movw	%si, 42(%ebx)
	movl	$200, 200(%ebx)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L2349
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL12FistAngTable(%edx,%edx), %edx
L2349:
	movl	32(%ebx), %eax
	movl	$1024, %ebp
	movw	%dx, 24108(%eax)
	movw	%bp, 232(%ebx)
	jmp	L2372
	.cfi_endproc
LFE311:
	.p2align 4
	.globl	__Z11pFistSlideRP18PANEL_SPRITEstruct
	.def	__Z11pFistSlideRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z11pFistSlideRP18PANEL_SPRITEstruct:
LFB312:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %esi
	movl	%esi, %eax
	movl	40(%esi), %ebx
	call	__Z13SpawnFistBlurP18PANEL_SPRITEstruct
	movswl	232(%esi), %eax
	movswl	190(%esi), %ecx
	addl	$1024, %eax
	movl	%ecx, %edx
	andl	$2047, %eax
	addw	$204, %dx
	movswl	_sintable(%eax,%eax), %eax
	movw	%dx, 190(%esi)
	imull	%ecx, %eax
	imull	$-3, %eax, %eax
	sarl	$6, %eax
	addl	%ebx, %eax
	movl	%eax, 40(%esi)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE312:
	.p2align 4
	.globl	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.def	__Z15pFistSlideDownRP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
__Z15pFistSlideDownRP18PANEL_SPRITEstruct:
LFB313:
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
	movl	20(%esp), %ebx
	movl	%ebx, %eax
	movl	36(%ebx), %edi
	movl	40(%ebx), %esi
	call	__Z13SpawnFistBlurP18PANEL_SPRITEstruct
	movl	32(%ebx), %ecx
	movswl	190(%ebx), %ebp
	movzwl	24108(%ecx), %eax
	addw	232(%ebx), %ax
	movl	%ebp, %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	cmpl	$_ps_Kick, 24(%ebx)
	je	L2379
	cmpb	$3, 24110(%ecx)
	je	L2379
	imull	%eax, %ebp
	leal	0(%ebp,%ebp,2), %eax
	movl	%eax, %ebp
	negl	%eax
	sarl	$6, %eax
	sarl	$6, %ebp
	leal	(%eax,%eax,2), %eax
	subl	%ebp, %edi
	addl	%eax, %esi
	jmp	L2381
	.p2align 4,,10
	.p2align 3
L2379:
	imull	%ebp, %eax
	imull	$-3, %eax, %eax
	sarl	$6, %eax
	addl	%eax, %esi
L2381:
	addw	$144, %dx
	movl	%edi, 36(%ebx)
	movl	%esi, 40(%ebx)
	movw	%dx, 190(%ebx)
	cmpl	$28901375, %esi
	jle	L2378
	testb	$2, 418(%ecx)
	je	L2383
	testb	$2, 22978(%ecx)
	jne	L2411
L2383:
	movl	20(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 228(%ebx)
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2412
	movswl	(%eax), %eax
	movl	$302, %edx
	movl	$200, %ecx
	movw	%dx, 38(%ebx)
	movw	%ax, 178(%ebx)
	movw	%cx, 42(%ebx)
	cmpl	$30719, %eax
	ja	L2396
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2392
L2413:
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%eax,4), %edx
	testw	%dx, %dx
	jle	L2392
	leal	200(%edx), %eax
	movswl	%ax, %edx
	jmp	L2391
	.p2align 4,,10
	.p2align 3
L2392:
	movzwl	_tilesiz+2(,%eax,4), %eax
	addw	$200, %ax
	movswl	%ax, %edx
L2391:
	movw	%ax, 42(%ebx)
	movl	%edx, 200(%ebx)
L2378:
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
L2396:
	.cfi_restore_state
	movl	$200, %edx
	movl	$200, %eax
	jmp	L2391
	.p2align 4,,10
	.p2align 3
L2412:
	xorl	%esi, %esi
	movl	$302, %edi
	movl	$200, %ebp
	movw	%si, 178(%ebx)
	movw	%di, 38(%ebx)
	movw	%bp, 42(%ebx)
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2392
	jmp	L2413
	.p2align 4,,10
	.p2align 3
L2411:
	movl	%ecx, %eax
	call	__Z18DoPlayerChooseYellP12PLAYERstruct
	movl	_krandcount, %edx
	movl	32(%ebx), %esi
	leal	1(%edx), %eax
	addl	$2, %edx
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %ecx
	leal	(%ecx,%ecx,4), %eax
	movl	%ecx, _randomseed
	leal	1(%ecx,%eax,4), %eax
	movzwl	%ax, %eax
	cmpl	$65535, %ecx
	je	L2384
	sall	$14, %ecx
	cmpl	$537936224, %ecx
	ja	L2384
	movl	12(%ebx), %ecx
	subl	24(%ebx), %ecx
	xorl	%ebp, %ebp
	movl	%edx, _krandcount
	leal	_ps_FistSwing+24(%ecx), %edi
	movl	%eax, _randomseed
	movl	$320, %edx
	movw	%bp, 228(%ebx)
	movl	%edi, 12(%ebx)
	movzwl	_ps_FistSwing+24(%ecx), %ecx
	movl	$_ps_FistSwing, 24(%ebx)
	movw	%cx, 178(%ebx)
	movl	$302, %ecx
	movb	$0, 24110(%esi)
	movl	$200, %esi
	movw	%cx, 38(%ebx)
	movw	%si, 42(%ebx)
	movl	$200, 200(%ebx)
	cmpl	$65535, %eax
	je	L2388
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL12FistAngTable(%edx,%edx), %edx
L2388:
	movl	32(%ebx), %eax
	movl	$1024, %esi
	movw	%dx, 24108(%eax)
	movw	%si, 232(%ebx)
L2410:
	movl	$3500, %ecx
	movl	32(%ebx), %eax
	movw	%cx, 190(%ebx)
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
	jmp	__Z19DoPlayerSpriteThrowP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L2384:
	.cfi_restore_state
	movl	$_ps_FistSwing+120, 24(%ebx)
	movb	$0, 24110(%esi)
	movl	24(%ebx), %ecx
	xorl	%esi, %esi
	movw	%si, 228(%ebx)
	xorl	%esi, %esi
	movl	%ecx, 12(%ebx)
	testl	%ecx, %ecx
	je	L2386
	movzwl	(%ecx), %esi
L2386:
	movl	$20, %edi
	movl	$200, %ebp
	movl	$1024, %ecx
	movl	%edx, _krandcount
	movw	%si, 178(%ebx)
	movl	$320, %edx
	movw	%di, 38(%ebx)
	movw	%bp, 42(%ebx)
	movl	$200, 200(%ebx)
	movw	%cx, 232(%ebx)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L2387
	sall	$14, %eax
	movl	$-1073692671, %edx
	mull	%edx
	shrl	$28, %edx
	movzwl	__ZL12FistAngTable(%edx,%edx), %edx
L2387:
	movl	32(%ebx), %eax
	movw	%dx, 24108(%eax)
	jmp	L2410
	.cfi_endproc
LFE313:
	.p2align 4
	.globl	__Z14InitWeaponFistP12PLAYERstruct
	.def	__Z14InitWeaponFistP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitWeaponFistP12PLAYERstruct:
LFB314:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %ebx
	cmpb	$0, _Prediction
	jne	L2414
	movl	23012(%ebx), %eax
	testb	$1, %al
	je	L2416
	testb	$16, 22969(%ebx)
	jne	L2431
	movl	23052(%ebx), %eax
	testl	%eax, %eax
	je	L2432
L2419:
	cmpl	%eax, 23048(%ebx)
	je	L2414
	movl	$_ps_FistSwing, 8(%esp)
	movss	8(%esp), %xmm0
	xorl	%edx, %edx
	movl	%ebx, %eax
	movss	LC29, %xmm1
	movl	$_ps_RetractFist, 8(%esp)
	movss	8(%esp), %xmm2
	unpcklps	%xmm0, %xmm1
	movss	LC29, %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 8(%esp)
	call	__Z18PlayerUpdateWeaponP12PLAYERstructs
	movb	$2, 24092(%ebx)
	movl	%ebx, %eax
	call	__Z13RetractCurWpnP12PLAYERstruct
	movl	23052(%ebx), %esi
	xorl	%eax, %eax
	movups	8(%esp), %xmm0
	addl	$1, _krandcount
	movl	%esi, 23048(%ebx)
	movw	%ax, 228(%esi)
	movzwl	_ps_PresentFist, %eax
	orl	$131072, 204(%esi)
	movw	%ax, 178(%esi)
	movl	_randomseed, %eax
	movl	$_ps_FistRest, 28(%esi)
	leal	(%eax,%eax,4), %edx
	movups	%xmm0, 12(%esi)
	leal	1(%eax,%edx,4), %eax
	movb	$0, 24110(%ebx)
	movzwl	%ax, %edx
	andw	$1023, %ax
	movl	%edx, _randomseed
	cmpw	$900, %ax
	jg	L2433
	cmpw	$800, %ax
	jg	L2434
	cmpw	$700, %ax
	jg	L2435
L2423:
	movl	32(%esi), %eax
	andl	$-131073, 22976(%eax)
	movl	32(%esi), %eax
	orl	$131072, 22976(%eax)
L2414:
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
L2431:
	.cfi_restore_state
	movb	$13, 23116(%ebx)
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
L2433:
	.cfi_restore_state
	leal	8(%ebx), %eax
	movl	$9, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$247, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L2423
	.p2align 4,,10
	.p2align 3
L2416:
	movb	$13, 23116(%ebx)
	testb	$32, %ah
	je	L2414
	testb	$16, 22969(%ebx)
	jne	L2414
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z15InitWeaponSwordP12PLAYERstruct.part.0
	.p2align 4,,10
	.p2align 3
L2432:
	.cfi_restore_state
	movl	$200, 4(%esp)
	movl	$128, %ecx
	movl	$_ps_PresentFist, %edx
	movl	%ebx, %eax
	movl	$302, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	xorl	%edx, %edx
	movl	%eax, 23052(%ebx)
	movswl	178(%eax), %ecx
	cmpl	$30719, %ecx
	ja	L2420
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L2421
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%ecx,4), %edx
	testw	%dx, %dx
	jg	L2420
L2421:
	movzwl	_tilesiz+2(,%ecx,4), %edx
L2420:
	addw	%dx, 42(%eax)
	movl	23052(%ebx), %eax
	jmp	L2419
	.p2align 4,,10
	.p2align 3
L2434:
	leal	8(%ebx), %eax
	movl	$9, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$261, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L2423
	.p2align 4,,10
	.p2align 3
L2435:
	leal	8(%ebx), %eax
	movl	$9, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$262, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L2423
	.cfi_endproc
LFE314:
	.globl	_ps_ChopsAttack4
	.data
	.align 32
_ps_ChopsAttack4:
	.word	2001
	.space 2
	.long	72
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	24
	.long	__Z8pChopsUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	8
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	96
	.long	__Z11pChopsShakeP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z10pChopsDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ChopsAttack3
	.align 32
_ps_ChopsAttack3:
	.word	2001
	.space 2
	.long	72
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	24
	.long	__Z8pChopsUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	0
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	16
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	16
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	16
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	8
	.long	__Z14pChopsDownSlowP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	10
	.long	__Z14pChopsDownSlowP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	10
	.long	__Z14pChopsDownSlowP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	10
	.long	__Z14pChopsDownSlowP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ChopsAttack2
	.align 32
_ps_ChopsAttack2:
	.word	2001
	.space 2
	.long	72
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	24
	.long	__Z8pChopsUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	8
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z10pChopsDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ChopsAttack1
	.align 32
_ps_ChopsAttack1:
	.word	2000
	.space 2
	.long	72
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2000
	.space 2
	.long	24
	.long	__Z8pChopsUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2001
	.space 2
	.long	8
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2002
	.space 2
	.long	0
	.long	__Z11pChopsClickP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2002
	.space 2
	.long	8
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2002
	.space 2
	.long	24
	.long	__Z10pChopsDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_GrenadeRecoil
	.align 32
_ps_GrenadeRecoil:
	.word	2121
	.space 2
	.long	24
	.long	__Z18pGrenadeRecoilDownP18PANEL_SPRITEstruct
	.long	_ps_GrenadeRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2121
	.space 2
	.long	24
	.long	__Z16pGrenadeRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2125
	.space 2
	.long	12
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2126
	.space 2
	.long	12
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2121
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_GrenadeRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HeartBloodSmall
	.align 32
_ps_HeartBloodSmall:
	.word	2420
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+24
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2421
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+48
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2422
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+72
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2423
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+96
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2424
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+120
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2425
	.space 2
	.long	7
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+144
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2425
	.space 2
	.long	7
	.long	__Z8pSuicideP18PANEL_SPRITEstruct
	.long	_ps_HeartBlood+144
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HeartBlood
	.align 32
_ps_HeartBlood:
	.word	2420
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2421
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2422
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2423
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2424
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2425
	.space 2
	.long	10
	.long	__Z11pHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2425
	.space 2
	.long	10
	.long	__Z8pSuicideP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroRecoil
	.align 32
_ps_MicroRecoil:
	.word	2070
	.space 2
	.long	6
	.long	__Z16pMicroRecoilDownP18PANEL_SPRITEstruct
	.long	_ps_MicroRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	6
	.long	__Z14pMicroRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_MicroRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroRest
	.align 4
_ps_MicroRest:
	.word	2070
	.space 2
	.long	24
	.long	__Z10pMicroRestP18PANEL_SPRITEstruct
	.long	_ps_MicroRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadNapalm
	.align 32
_ps_HotheadNapalm:
	.word	2049
	.space 2
	.long	2
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	3
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z14pHotheadAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	50
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z16pHotheadRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	3
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.long	_ps_HotheadNapalm
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadRing
	.align 32
_ps_HotheadRing:
	.word	2049
	.space 2
	.long	2
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	10
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z14pHotheadAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	40
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z16pHotheadRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	3
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.long	_ps_HotheadRing
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadAttack
	.align 32
_ps_HotheadAttack:
	.word	2049
	.space 2
	.long	2
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	3
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z14pHotheadAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	3
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z16pHotheadRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2049
	.space 2
	.long	0
	.long	__Z14pHotheadActionP18PANEL_SPRITEstruct
	.long	_ps_HotheadAttack
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadRestNapalm
	.align 4
_ps_HotheadRestNapalm:
	.word	2048
	.space 2
	.long	24
	.long	__Z12pHotheadRestP18PANEL_SPRITEstruct
	.long	_ps_HotheadRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadRestRing
	.align 4
_ps_HotheadRestRing:
	.word	2048
	.space 2
	.long	24
	.long	__Z12pHotheadRestP18PANEL_SPRITEstruct
	.long	_ps_HotheadRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HotheadRest
	.align 4
_ps_HotheadRest:
	.word	2048
	.space 2
	.long	24
	.long	__Z12pHotheadRestP18PANEL_SPRITEstruct
	.long	_ps_HotheadRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunRecoilAuto
	.align 32
_ps_ShotgunRecoilAuto:
	.word	2216
	.space 2
	.long	1
	.long	__Z18pShotgunRecoilDownP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRecoilAuto
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	1
	.long	__Z16pShotgunRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	1
	.long	__Z16pShotgunRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	1
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	1
	.long	__Z12pShotgunRestP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRest
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunRecoil
	.align 32
_ps_ShotgunRecoil:
	.word	2216
	.space 2
	.long	4
	.long	__Z18pShotgunRecoilDownP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	4
	.long	__Z16pShotgunRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	20
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2211
	.space 2
	.long	4
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2212
	.space 2
	.long	20
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	4
	.long	__Z16pShotgunRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	2
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	2
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_s_NinjaGrabThroat
	.align 32
_s_NinjaGrabThroat:
	.word	4237
	.space 2
	.long	32
	.long	__Z9NullNinjas
	.space 4
	.word	4237
	.space 2
	.long	65536
	.long	__Z14DoNinjaSpecials
	.space 4
	.word	4238
	.space 2
	.long	32
	.long	__Z9NullNinjas
	.space 4
	.word	4239
	.space 2
	.long	65536
	.long	__Z17DoNinjaGrabThroats
	.space 4
	.word	4239
	.space 2
	.long	32
	.long	__Z9NullNinjas
	.space 4
	.word	4238
	.space 2
	.long	32
	.long	__Z9NullNinjas
	.long	_s_NinjaGrabThroat
	.globl	_s_NinjaGrenade
	.align 32
_s_NinjaGrenade:
	.word	4096
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+16
	.word	4096
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_NinjaGrenade+32
	.word	4096
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+48
	.word	4096
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaGrenade+64
	.word	4096
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaGrenade+64
	.word	4100
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+96
	.word	4100
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_NinjaGrenade+112
	.word	4100
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+128
	.word	4100
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaGrenade+144
	.word	4100
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaGrenade+144
	.word	4104
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+176
	.word	4104
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_NinjaGrenade+192
	.word	4104
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+208
	.word	4104
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaGrenade+224
	.word	4104
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaGrenade+224
	.word	4108
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+256
	.word	4108
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_NinjaGrenade+272
	.word	4108
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+288
	.word	4108
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaGrenade+304
	.word	4108
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaGrenade+304
	.word	4112
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+336
	.word	4112
	.space 2
	.long	65536
	.long	__Z17InitSpriteGrenades
	.long	_s_NinjaGrenade+352
	.word	4112
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaGrenade+368
	.word	4112
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaGrenade+384
	.word	4112
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaGrenade+384
	.globl	_s_NinjaRocket
	.align 32
_s_NinjaRocket:
	.word	4096
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+16
	.word	4096
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_NinjaRocket+32
	.word	4096
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+48
	.word	4096
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaRocket+64
	.word	4096
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRocket+64
	.word	4100
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+96
	.word	4100
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_NinjaRocket+112
	.word	4100
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+128
	.word	4100
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaRocket+144
	.word	4100
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRocket+144
	.word	4104
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+176
	.word	4104
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_NinjaRocket+192
	.word	4104
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+208
	.word	4104
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaRocket+224
	.word	4104
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRocket+224
	.word	4108
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+256
	.word	4108
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_NinjaRocket+272
	.word	4108
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+288
	.word	4108
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaRocket+304
	.word	4108
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRocket+304
	.word	4112
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+336
	.word	4112
	.space 2
	.long	65536
	.long	__Z15InitEnemyRockets
	.long	_s_NinjaRocket+352
	.word	4112
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaRocket+368
	.word	4112
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaRocket+384
	.word	4112
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaRocket+384
	.globl	_s_NinjaCrawl
	.align 32
_s_NinjaCrawl:
	.word	4162
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+16
	.word	4163
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+32
	.word	4164
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+48
	.word	4163
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl
	.word	4166
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+80
	.word	4167
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+96
	.word	4168
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+112
	.word	4167
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+64
	.word	4170
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+144
	.word	4171
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+160
	.word	4172
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+176
	.word	4171
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+128
	.word	4174
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+208
	.word	4175
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+224
	.word	4176
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+240
	.word	4175
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+192
	.word	4178
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+272
	.word	4179
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+288
	.word	4180
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+304
	.word	4179
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaCrawl+256
	.globl	_s_NinjaDive
	.align 32
_s_NinjaDive:
	.word	4122
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+16
	.word	4123
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+32
	.word	4124
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+48
	.word	4125
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive
	.word	4126
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+80
	.word	4127
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+96
	.word	4128
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+112
	.word	4129
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+64
	.word	4130
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+144
	.word	4131
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+160
	.word	4132
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+176
	.word	4133
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+128
	.word	4134
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+208
	.word	4135
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+224
	.word	4136
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+240
	.word	4137
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+192
	.word	4138
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+272
	.word	4139
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+288
	.word	4140
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+304
	.word	4141
	.space 2
	.long	23
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaDive+256
	.globl	_s_NinjaNapalm
	.align 32
_s_NinjaNapalm:
	.word	4202
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+16
	.word	4203
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+32
	.word	4204
	.space 2
	.long	65536
	.long	__Z15InitEnemyNapalms
	.long	_s_NinjaNapalm+48
	.word	4204
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+64
	.word	4204
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaNapalm+80
	.word	4204
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaNapalm+80
	.word	4205
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+112
	.word	4206
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+128
	.word	4207
	.space 2
	.long	65536
	.long	__Z15InitEnemyNapalms
	.long	_s_NinjaNapalm+144
	.word	4207
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+160
	.word	4207
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaNapalm+176
	.word	4207
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaNapalm+176
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+208
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+224
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitEnemyNapalms
	.long	_s_NinjaNapalm+240
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+256
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaNapalm+272
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaNapalm+272
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+304
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+320
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitEnemyNapalms
	.long	_s_NinjaNapalm+336
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+352
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaNapalm+368
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaNapalm+368
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+400
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+416
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitEnemyNapalms
	.long	_s_NinjaNapalm+432
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaNapalm+448
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaNapalm+464
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaNapalm+464
	.globl	_s_NinjaMirv
	.align 32
_s_NinjaMirv:
	.word	4202
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+16
	.word	4203
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+32
	.word	4204
	.space 2
	.long	65536
	.long	__Z13InitEnemyMirvs
	.long	_s_NinjaMirv+48
	.word	4204
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+64
	.word	4204
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaMirv+80
	.word	4204
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaMirv+80
	.word	4205
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+112
	.word	4206
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+128
	.word	4207
	.space 2
	.long	65536
	.long	__Z13InitEnemyMirvs
	.long	_s_NinjaMirv+144
	.word	4207
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+160
	.word	4207
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaMirv+176
	.word	4207
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaMirv+176
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+208
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+224
	.word	4210
	.space 2
	.long	65536
	.long	__Z13InitEnemyMirvs
	.long	_s_NinjaMirv+240
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+256
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaMirv+272
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaMirv+272
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+304
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+320
	.word	4210
	.space 2
	.long	65536
	.long	__Z13InitEnemyMirvs
	.long	_s_NinjaMirv+336
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+352
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaMirv+368
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaMirv+368
	.word	4208
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+400
	.word	4209
	.space 2
	.long	18
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+416
	.word	4210
	.space 2
	.long	65536
	.long	__Z13InitEnemyMirvs
	.long	_s_NinjaMirv+432
	.word	4210
	.space 2
	.long	36
	.long	__Z9NullNinjas
	.long	_s_NinjaMirv+448
	.word	4210
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaMirv+464
	.word	4210
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStar+464
	.globl	_s_NinjaFlashBomb
	.align 32
_s_NinjaFlashBomb:
	.word	4096
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+16
	.word	4096
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_NinjaFlashBomb+32
	.word	4096
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+48
	.word	4096
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaFlashBomb+64
	.word	4096
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFlashBomb+64
	.word	4100
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+96
	.word	4100
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_NinjaFlashBomb+112
	.word	4100
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+128
	.word	4100
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaFlashBomb+144
	.word	4100
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFlashBomb+144
	.word	4104
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+176
	.word	4104
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_NinjaFlashBomb+192
	.word	4104
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+208
	.word	4104
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaFlashBomb+224
	.word	4104
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFlashBomb+224
	.word	4108
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+256
	.word	4108
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_NinjaFlashBomb+272
	.word	4108
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+288
	.word	4108
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaFlashBomb+304
	.word	4108
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFlashBomb+304
	.word	4112
	.space 2
	.long	28
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+336
	.word	4112
	.space 2
	.long	65536
	.long	__Z13InitFlashBombs
	.long	_s_NinjaFlashBomb+352
	.word	4112
	.space 2
	.long	14
	.long	__Z9NullNinjas
	.long	_s_NinjaFlashBomb+368
	.word	4112
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_NinjaFlashBomb+384
	.word	4112
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFlashBomb+384
	.globl	_s_NinjaClimb
	.align 32
_s_NinjaClimb:
	.word	4182
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+16
	.word	4183
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+32
	.word	4184
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+48
	.word	4185
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb
	.word	4186
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+80
	.word	4187
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+96
	.word	4188
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+112
	.word	4189
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+64
	.word	4198
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+144
	.word	4199
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+160
	.word	4200
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+176
	.word	4201
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+128
	.word	4194
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+208
	.word	4195
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+224
	.word	4196
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+240
	.word	4197
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+192
	.word	4190
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+272
	.word	4191
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+288
	.word	4192
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+304
	.word	4193
	.space 2
	.long	20
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaClimb+256
	.globl	_s_NinjaSwim
	.align 32
_s_NinjaSwim:
	.word	4123
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+16
	.word	4124
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+32
	.word	4125
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim
	.word	4127
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+64
	.word	4128
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+80
	.word	4129
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+48
	.word	4131
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+112
	.word	4132
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+128
	.word	4133
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+96
	.word	4135
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+160
	.word	4136
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+176
	.word	4137
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+144
	.word	4139
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+208
	.word	4140
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+224
	.word	4141
	.space 2
	.long	18
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaSwim+192
	.globl	_s_NinjaKneelCrawl
	.align 32
_s_NinjaKneelCrawl:
	.word	4162
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.long	_s_NinjaKneelCrawl+16
	.word	4162
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+32
	.word	4163
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+48
	.word	4164
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+64
	.word	4163
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+16
	.word	4166
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.long	_s_NinjaKneelCrawl+96
	.word	4166
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+112
	.word	4167
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+128
	.word	4168
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+144
	.word	4167
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+96
	.word	4170
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.long	_s_NinjaKneelCrawl+176
	.word	4170
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+192
	.word	4171
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+208
	.word	4172
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+224
	.word	4171
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+176
	.word	4174
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.long	_s_NinjaKneelCrawl+256
	.word	4174
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+272
	.word	4175
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+288
	.word	4176
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+304
	.word	4175
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+256
	.word	4178
	.space 2
	.long	20
	.long	__Z9NullNinjas
	.long	_s_NinjaKneelCrawl+336
	.word	4178
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+352
	.word	4179
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+368
	.word	4180
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+384
	.word	4179
	.space 2
	.long	14
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaKneelCrawl+336
	.globl	_s_NinjaFall
	.align 32
_s_NinjaFall:
	.word	4143
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+16
	.word	4144
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+16
	.word	4147
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+48
	.word	4148
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+48
	.word	4151
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+80
	.word	4152
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+80
	.word	4155
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+112
	.word	4156
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+112
	.word	4159
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+144
	.word	4160
	.space 2
	.long	16
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaFall+144
	.globl	_s_NinjaJump
	.align 32
_s_NinjaJump:
	.word	4142
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+16
	.word	4143
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+16
	.word	4146
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+48
	.word	4147
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+48
	.word	4150
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+80
	.word	4151
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+80
	.word	4154
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+112
	.word	4155
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+112
	.word	4158
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+144
	.word	4159
	.space 2
	.long	24
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaJump+144
	.globl	_s_NinjaStand
	.align 32
_s_NinjaStand:
	.word	4096
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStand
	.word	4100
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStand+16
	.word	4104
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStand+32
	.word	4108
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStand+48
	.word	4112
	.space 2
	.long	10
	.long	__Z11DoNinjaMoves
	.long	_s_NinjaStand+64
	.globl	_sg_NinjaGrenade
	.align 4
_sg_NinjaGrenade:
	.long	_s_NinjaGrenade
	.long	_s_NinjaGrenade+80
	.long	_s_NinjaGrenade+160
	.long	_s_NinjaGrenade+240
	.long	_s_NinjaGrenade+320
	.globl	_sg_NinjaRocket
	.align 4
_sg_NinjaRocket:
	.long	_s_NinjaRocket
	.long	_s_NinjaRocket+80
	.long	_s_NinjaRocket+160
	.long	_s_NinjaRocket+240
	.long	_s_NinjaRocket+320
	.globl	_NinjaSniperRoam
	.align 4
_NinjaSniperRoam:
	.word	1023
	.space 2
	.long	__Z13InitActorDucks
	.word	1024
	.space 2
	.long	__Z21InitActorAmbientNoises
	.globl	_NinjaSniperBattle
	.align 4
_NinjaSniperBattle:
	.word	499
	.space 2
	.long	__Z13InitActorDucks
	.word	500
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_NinjaCrawl
	.align 4
_sg_NinjaCrawl:
	.long	_s_NinjaCrawl
	.long	_s_NinjaCrawl+64
	.long	_s_NinjaCrawl+128
	.long	_s_NinjaCrawl+192
	.long	_s_NinjaCrawl+256
	.globl	_NinjaCloseRange
	.align 4
_NinjaCloseRange:
	.word	700
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_NinjaLostTarget
	.align 4
_NinjaLostTarget:
	.word	900
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_NinjaEvasive
	.align 4
_NinjaEvasive:
	.word	400
	.space 2
	.long	__Z13InitActorDucks
	.word	1024
	.space 2
	.long	0
	.globl	_NinjaSurprised
	.align 4
_NinjaSurprised:
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_NinjaBroadcast
	.align 4
_NinjaBroadcast:
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_NinjaOffense
	.align 4
_NinjaOffense:
	.word	499
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_NinjaBattle
	.align 4
_NinjaBattle:
	.word	499
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_NinjaDive
	.align 4
_sg_NinjaDive:
	.long	_s_NinjaDive
	.long	_s_NinjaDive+64
	.long	_s_NinjaDive+128
	.long	_s_NinjaDive+192
	.long	_s_NinjaDive+256
	.globl	_sg_NinjaNapalm
	.align 4
_sg_NinjaNapalm:
	.long	_s_NinjaNapalm
	.long	_s_NinjaNapalm+96
	.long	_s_NinjaNapalm+192
	.long	_s_NinjaNapalm+288
	.long	_s_NinjaNapalm+384
	.globl	_sg_NinjaMirv
	.align 4
_sg_NinjaMirv:
	.long	_s_NinjaMirv
	.long	_s_NinjaMirv+96
	.long	_s_NinjaMirv+192
	.long	_s_NinjaMirv+288
	.long	_s_NinjaMirv+384
	.globl	_sg_NinjaFlashBomb
	.align 4
_sg_NinjaFlashBomb:
	.long	_s_NinjaFlashBomb
	.long	_s_NinjaFlashBomb+80
	.long	_s_NinjaFlashBomb+160
	.long	_s_NinjaFlashBomb+240
	.long	_s_NinjaFlashBomb+320
	.globl	_sg_NinjaClimb
	.align 4
_sg_NinjaClimb:
	.long	_s_NinjaClimb
	.long	_s_NinjaClimb+64
	.long	_s_NinjaClimb+128
	.long	_s_NinjaClimb+192
	.long	_s_NinjaClimb+256
	.globl	_sg_NinjaSwim
	.align 4
_sg_NinjaSwim:
	.long	_s_NinjaSwim
	.long	_s_NinjaSwim+48
	.long	_s_NinjaSwim+96
	.long	_s_NinjaSwim+144
	.long	_s_NinjaSwim+192
	.globl	_sg_NinjaKneelCrawl
	.align 4
_sg_NinjaKneelCrawl:
	.long	_s_NinjaKneelCrawl
	.long	_s_NinjaKneelCrawl+80
	.long	_s_NinjaKneelCrawl+160
	.long	_s_NinjaKneelCrawl+240
	.long	_s_NinjaKneelCrawl+320
	.globl	_sg_NinjaFall
	.align 4
_sg_NinjaFall:
	.long	_s_NinjaFall
	.long	_s_NinjaFall+32
	.long	_s_NinjaFall+64
	.long	_s_NinjaFall+96
	.long	_s_NinjaFall+128
	.globl	_sg_NinjaJump
	.align 4
_sg_NinjaJump:
	.long	_s_NinjaJump
	.long	_s_NinjaJump+32
	.long	_s_NinjaJump+64
	.long	_s_NinjaJump+96
	.long	_s_NinjaJump+128
	.globl	_sg_NinjaStand
	.align 4
_sg_NinjaStand:
	.long	_s_NinjaStand
	.long	_s_NinjaStand+16
	.long	_s_NinjaStand+32
	.long	_s_NinjaStand+48
	.long	_s_NinjaStand+64
	.globl	_ps_FistHide
	.align 4
_ps_FistHide:
	.word	4070
	.space 2
	.long	16
	.long	__Z9pFistHideP18PANEL_SPRITEstruct
	.long	_ps_FistHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_Kick
	.align 32
_ps_Kick:
	.word	4080
	.space 2
	.long	40
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	20
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	30
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4080
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	25165824
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	20
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	30
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4081
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentFist2
	.align 4
_ps_PresentFist2:
	.word	4050
	.space 2
	.long	16
	.long	__Z12pFistPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentFist2
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_Fist2Rest
	.align 4
_ps_Fist2Rest:
	.word	4050
	.space 2
	.long	16
	.long	__Z9pFistRestP18PANEL_SPRITEstruct
	.long	_ps_Fist2Rest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_FistRest
	.align 4
_ps_FistRest:
	.word	4070
	.space 2
	.long	16
	.long	__Z9pFistRestP18PANEL_SPRITEstruct
	.long	_ps_FistRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractFist
	.align 4
_ps_RetractFist:
	.word	4070
	.space 2
	.long	16
	.long	__Z12pFistRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractFist
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_FistSwing
	.align 32
_ps_FistSwing:
	.word	4071
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4072
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	16
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	2
	.long	__Z14pFistSlideDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	4072
	.space 2
	.long	6
	.long	__Z11pFistSlideRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	0
	.long	__Z11pFistAttackP18PANEL_SPRITEstruct
	.space 4
	.long	25165824
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	16
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	2
	.long	__Z15pFistSlideDownRP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	4073
	.space 2
	.long	2
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentFist
	.align 4
_ps_PresentFist:
	.word	4070
	.space 2
	.long	16
	.long	__Z12pFistPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentFist
	.long	0
	.byte	0
	.byte	0
	.space 2
	.section .rdata,"dr"
	.align 4
_psp_ChopsAttack:
	.long	_ps_ChopsAttack1
	.long	_ps_ChopsAttack2
	.long	_ps_ChopsAttack3
	.long	_ps_ChopsAttack4
	.globl	_ps_ChopsWait
	.data
	.align 4
_ps_ChopsWait:
	.word	2000
	.space 2
	.long	24
	.long	__Z10pChopsWaitP18PANEL_SPRITEstruct
	.long	_ps_ChopsWait
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MineHide
	.align 4
_ps_MineHide:
	.word	2220
	.space 2
	.long	24
	.long	__Z9pMineHideP18PANEL_SPRITEstruct
	.long	_ps_MineHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MineRest
	.align 32
_ps_MineRest:
	.word	2220
	.space 2
	.long	36
	.long	__Z9pMineRestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2220
	.space 2
	.long	0
	.long	__Z12pMineUpSoundP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2221
	.space 2
	.long	24
	.long	__Z9pMineRestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractMine
	.align 4
_ps_RetractMine:
	.word	2220
	.space 2
	.long	24
	.long	__Z12pMineRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractMine
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MineThrow
	.align 32
_ps_MineThrow:
	.word	2222
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2222
	.space 2
	.long	6
	.long	__Z10pMineThrowP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2222
	.space 2
	.long	6
	.long	__Z10pMineLowerP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2222
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2220
	.space 2
	.long	6
	.long	__Z10pMineRaiseP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2220
	.space 2
	.long	6
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2220
	.space 2
	.long	3
	.long	__Z11pMineActionP18PANEL_SPRITEstruct
	.long	_ps_MineRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentMine
	.align 4
_ps_PresentMine:
	.word	2220
	.space 2
	.long	24
	.long	__Z12pMinePresentP18PANEL_SPRITEstruct
	.long	_ps_PresentMine
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_GrenadeHide
	.align 4
_ps_GrenadeHide:
	.word	2121
	.space 2
	.long	24
	.long	__Z12pGrenadeHideP18PANEL_SPRITEstruct
	.long	_ps_GrenadeHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_GrenadeRest
	.align 4
_ps_GrenadeRest:
	.word	2121
	.space 2
	.long	24
	.long	__Z12pGrenadeRestP18PANEL_SPRITEstruct
	.long	_ps_GrenadeRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractGrenade
	.align 4
_ps_RetractGrenade:
	.word	2121
	.space 2
	.long	24
	.long	__Z15pGrenadeRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractGrenade
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_GrenadeFire
	.align 32
_ps_GrenadeFire:
	.word	2122
	.space 2
	.long	6
	.long	__Z14pGrenadeActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2123
	.space 2
	.long	6
	.long	__Z14pGrenadeActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2124
	.space 2
	.long	6
	.long	__Z14pGrenadeActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2121
	.space 2
	.long	0
	.long	__Z12pGrenadeFireP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2121
	.space 2
	.long	3
	.long	__Z14pGrenadeActionP18PANEL_SPRITEstruct
	.long	_ps_GrenadeRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentGrenade
	.align 4
_ps_PresentGrenade:
	.word	2121
	.space 2
	.long	24
	.long	__Z15pGrenadePresentP18PANEL_SPRITEstruct
	.long	_ps_PresentGrenade
	.long	0
	.byte	0
	.byte	0
	.space 2
	.align 32
__ZZ20SpawnSmallHeartBloodP18PANEL_SPRITEstructE10HeartShrap:
	.word	-10
	.word	-80
	.word	0
	.space 2
	.long	-65536
	.long	-131072
	.long	-65536
	.long	-196608
	.long	_ps_HeartBloodSmall
	.long	_ps_HeartBloodSmall
	.word	0
	.word	-85
	.word	0
	.space 2
	.long	-65536
	.long	-327680
	.long	-65536
	.long	-65536
	.long	_ps_HeartBloodSmall
	.long	_ps_HeartBloodSmall
	.word	10
	.word	-85
	.word	0
	.space 2
	.long	-65536
	.long	-131072
	.long	65536
	.long	131072
	.long	_ps_HeartBloodSmall
	.long	_ps_HeartBloodSmall
	.word	25
	.word	-80
	.word	0
	.space 2
	.long	-65536
	.long	-131072
	.long	196608
	.long	262144
	.long	_ps_HeartBloodSmall
	.long	_ps_HeartBloodSmall
	.word	0
	.word	0
	.word	0
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
__ZZ15SpawnHeartBloodP18PANEL_SPRITEstructE10HeartShrap:
	.word	-10
	.word	-80
	.word	2
	.space 2
	.long	-97536
	.long	-163072
	.long	-359680
	.long	-228608
	.long	_ps_HeartBlood
	.long	_ps_HeartBlood
	.word	0
	.word	-85
	.word	0
	.space 2
	.long	-228608
	.long	-556288
	.long	-228608
	.long	-97536
	.long	_ps_HeartBlood
	.long	_ps_HeartBlood
	.word	10
	.word	-85
	.word	2
	.space 2
	.long	-97536
	.long	-163072
	.long	163072
	.long	228608
	.long	_ps_HeartBlood
	.long	_ps_HeartBlood
	.word	25
	.word	-80
	.word	2
	.space 2
	.long	-97536
	.long	-163072
	.long	359680
	.long	425216
	.long	_ps_HeartBlood
	.long	_ps_HeartBlood
	.word	0
	.word	0
	.word	0
	.space 2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_ps_HeartHide
	.align 32
_ps_HeartHide:
	.word	2050
	.space 2
	.long	60
	.long	__Z10pHeartHideP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	60
	.long	__Z10pHeartHideP18PANEL_SPRITEstruct
	.long	_ps_HeartHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HeartRest
	.align 32
_ps_HeartRest:
	.word	2050
	.space 2
	.long	60
	.long	__Z10pHeartRestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	60
	.long	__Z10pHeartRestP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	60
	.long	__Z20SpawnSmallHeartBloodP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	0
	.long	__Z10pHeartRestP18PANEL_SPRITEstruct
	.long	_ps_HeartRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractHeart
	.align 32
_ps_RetractHeart:
	.word	2050
	.space 2
	.long	60
	.long	__Z13pHeartRetractP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	60
	.long	__Z13pHeartRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractHeart
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_HeartAttack
	.align 32
_ps_HeartAttack:
	.word	2052
	.space 2
	.long	10
	.long	__Z17pHeartActionBloodP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2053
	.space 2
	.long	10
	.long	__Z17pHeartActionBloodP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2053
	.space 2
	.long	10
	.long	__Z17pHeartActionBloodP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2053
	.space 2
	.long	10
	.long	__Z12pHeartAttackP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2053
	.space 2
	.long	10
	.long	__Z12pHeartActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2053
	.space 2
	.long	10
	.long	__Z12pHeartActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2052
	.space 2
	.long	10
	.long	__Z12pHeartActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2052
	.space 2
	.long	10
	.long	__Z12pHeartActionP18PANEL_SPRITEstruct
	.long	_ps_HeartRest
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentHeart
	.align 32
_ps_PresentHeart:
	.word	2050
	.space 2
	.long	60
	.long	__Z13pHeartPresentP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2051
	.space 2
	.long	60
	.long	__Z13pHeartPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentHeart
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroSingleFire
	.align 32
_ps_MicroSingleFire:
	.word	2071
	.space 2
	.long	8
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2072
	.space 2
	.long	8
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2072
	.space 2
	.long	0
	.long	__Z10pMicroFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2073
	.space 2
	.long	6
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
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
	.long	3
	.long	__Z12pMicroActionP18PANEL_SPRITEstruct
	.long	_ps_MicroRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_MicroHide
	.align 4
_ps_MicroHide:
	.word	2070
	.space 2
	.long	24
	.long	__Z10pMicroHideP18PANEL_SPRITEstruct
	.long	_ps_MicroHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_InitNuke
	.align 32
_ps_InitNuke:
	.word	2070
	.space 2
	.long	6
	.long	__Z11pNukeActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	0
	.long	__Z13pMicroStandByP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	240
	.long	__Z11pNukeActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	0
	.long	__Z11pMicroCountP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	360
	.long	__Z11pNukeActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	0
	.long	__Z11pMicroReadyP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	240
	.long	__Z11pNukeActionP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2070
	.space 2
	.long	3
	.long	__Z11pNukeActionP18PANEL_SPRITEstruct
	.long	_ps_MicroRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.section .rdata,"dr"
	.align 4
_HotheadAttackStates:
	.long	_ps_HotheadAttack
	.long	_ps_HotheadRing
	.long	_ps_HotheadNapalm
	.globl	_ps_HotheadHide
	.data
	.align 4
_ps_HotheadHide:
	.word	2048
	.space 2
	.long	24
	.long	__Z12pHotheadHideP18PANEL_SPRITEstruct
	.long	_ps_HotheadHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_HotheadRestStates
	.section .rdata,"dr"
	.align 4
_HotheadRestStates:
	.long	_ps_HotheadRest
	.long	_ps_HotheadRestRing
	.long	_ps_HotheadRestNapalm
	.globl	_ps_RailFireEMP
	.data
	.align 32
_ps_RailFireEMP:
	.word	2015
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2018
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	0
	.long	__Z9pRailFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	3
	.long	__Z13pRailRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.long	_ps_RailRest
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RailHide
	.align 4
_ps_RailHide:
	.word	2010
	.space 2
	.long	24
	.long	__Z9pRailHideP18PANEL_SPRITEstruct
	.long	_ps_RailHide
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RailRest
	.align 32
_ps_RailRest:
	.word	2010
	.space 2
	.long	24
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2011
	.space 2
	.long	24
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2012
	.space 2
	.long	24
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2013
	.space 2
	.long	24
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2014
	.space 2
	.long	24
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.long	_ps_RailRest
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractRail
	.align 4
_ps_RetractRail:
	.word	2010
	.space 2
	.long	24
	.long	__Z12pRailRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractRail
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RailFire
	.align 32
_ps_RailFire:
	.word	2015
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2018
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2019
	.space 2
	.long	0
	.long	__Z9pRailFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2010
	.space 2
	.long	24
	.long	__Z15pRailRecoilDownP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2010
	.space 2
	.long	24
	.long	__Z13pRailRecoilUpP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	3
	.long	__Z11pRailOkTestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	3
	.long	__Z11pRailOkTestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	4
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	4
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	4
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	5
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	5
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	5
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	6
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	6
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	7
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	7
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	7
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	8
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	8
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2017
	.space 2
	.long	8
	.long	__Z11pRailActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2015
	.space 2
	.long	3
	.long	__Z13pRailRestTestP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2016
	.space 2
	.long	3
	.long	__Z9pRailRestP18PANEL_SPRITEstruct
	.long	_ps_RailRest
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentRail
	.align 4
_ps_PresentRail:
	.word	2010
	.space 2
	.long	24
	.long	__Z12pRailPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentRail
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunReload
	.align 32
_ps_ShotgunReload:
	.word	2213
	.space 2
	.long	24
	.long	__Z18pShotgunReloadDownP18PANEL_SPRITEstruct
	.long	_ps_ShotgunReload
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	24
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	30
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	24
	.long	__Z16pShotgunReloadUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2213
	.space 2
	.long	3
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunAutoFire
	.align 32
_ps_ShotgunAutoFire:
	.word	2215
	.space 2
	.long	2
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2215
	.space 2
	.long	2
	.long	__Z12pShotgunFireP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2215
	.space 2
	.long	2
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	0
	.long	__Z17SpawnShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	1
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRecoilAuto
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunHide
	.align 4
_ps_ShotgunHide:
	.word	2213
	.space 2
	.long	24
	.long	__Z12pShotgunHideP18PANEL_SPRITEstruct
	.long	_ps_ShotgunHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunRest
	.align 4
_ps_ShotgunRest:
	.word	2213
	.space 2
	.long	24
	.long	__Z12pShotgunRestP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRest
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractShotgun
	.align 4
_ps_RetractShotgun:
	.word	2213
	.space 2
	.long	24
	.long	__Z15pShotgunRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractShotgun
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_ShotgunFire
	.align 32
_ps_ShotgunFire:
	.word	2214
	.space 2
	.long	4
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	33554432
	.byte	0
	.byte	0
	.space 2
	.word	2215
	.space 2
	.long	4
	.long	__Z12pShotgunFireP18PANEL_SPRITEstruct
	.space 4
	.long	75497472
	.byte	0
	.byte	0
	.space 2
	.word	2215
	.space 2
	.long	4
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.space 4
	.long	67108864
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	0
	.long	__Z17SpawnShotgunShellP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2216
	.space 2
	.long	4
	.long	__Z14pShotgunActionP18PANEL_SPRITEstruct
	.long	_ps_ShotgunRecoil
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentShotgun
	.align 4
_ps_PresentShotgun:
	.word	2213
	.space 2
	.long	24
	.long	__Z15pShotgunPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentShotgun
	.long	0
	.byte	0
	.byte	0
	.space 2
.lcomm _UziRecoilYadj,1,1
.lcomm __ZZ10pUziActionP18PANEL_SPRITEstructE9alternate,1,1
	.globl	_ps_Uzi2Hide
	.align 4
_ps_Uzi2Hide:
	.word	2004
	.space 2
	.long	6
	.long	__Z8pUziHideP18PANEL_SPRITEstruct
	.long	_ps_Uzi2Hide
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziHide
	.align 4
_ps_UziHide:
	.word	2004
	.space 2
	.long	6
	.long	__Z8pUziHideP18PANEL_SPRITEstruct
	.long	_ps_UziHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractUzi2
	.align 4
_ps_RetractUzi2:
	.word	2004
	.space 2
	.long	6
	.long	__Z11pUziRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractUzi2
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_FireUzi2
	.align 32
_ps_FireUzi2:
	.word	2004
	.space 2
	.long	3
	.long	__Z8pUziRestP18PANEL_SPRITEstruct
	.long	_ps_FireUzi2
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	1
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	50331648
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	92274688
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	83886080
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	83886080
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	92274688
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	83886080
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	50331648
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	0
	.long	__Z8pUziFireP18PANEL_SPRITEstruct
	.space 4
	.long	58720256
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	50331648
	.byte	0
	.byte	0
	.space 2
	.word	2006
	.space 2
	.long	4
	.long	__Z10pUziActionP18PANEL_SPRITEstruct
	.space 4
	.long	50331648
	.byte	0
	.byte	0
	.space 2
	.word	2008
	.space 2
	.long	5
	.long	__Z8pUziRestP18PANEL_SPRITEstruct
	.long	_ps_FireUzi2
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentUzi2
	.align 4
_ps_PresentUzi2:
	.word	2004
	.space 2
	.long	6
	.long	__Z11pUziPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentUzi2
	.long	16777216
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentUziReload
	.align 4
_ps_PresentUziReload:
	.word	2004
	.space 2
	.long	1
	.long	__Z17pUziPresentReloadP18PANEL_SPRITEstruct
	.long	_ps_PresentUziReload
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_RetractUzi
	.align 4
_ps_RetractUzi:
	.word	2004
	.space 2
	.long	6
	.long	__Z11pUziRetractP18PANEL_SPRITEstruct
	.long	_ps_RetractUzi
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziEject
	.align 32
_ps_UziEject:
	.word	2004
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2004
	.space 2
	.long	1
	.long	__Z13pUziEjectDownP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2009
	.space 2
	.long	1
	.long	__Z11pUziEjectUpP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2009
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2009
	.space 2
	.long	1
	.long	__Z13pSpawnUziClipP18PANEL_SPRITEstruct
	.space 4
	.long	8388608
	.byte	0
	.byte	0
	.space 2
	.word	2009
	.space 2
	.long	1
	.long	__Z13pNullAnimatorP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_PresentUzi
	.align 4
_ps_PresentUzi:
	.word	2004
	.space 2
	.long	6
	.long	__Z11pUziPresentP18PANEL_SPRITEstruct
	.long	_ps_PresentUzi
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziDoneReload
	.align 4
_ps_UziDoneReload:
	.word	2009
	.space 2
	.long	1
	.long	__Z14pUziDoneReloadP18PANEL_SPRITEstruct
	.long	_ps_UziDoneReload
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziReload
	.align 32
_ps_UziReload:
	.word	2007
	.space 2
	.long	1
	.long	__Z10pUziReloadP18PANEL_SPRITEstruct
	.long	_ps_UziReload
	.long	0
	.byte	0
	.byte	0
	.space 2
	.word	2007
	.space 2
	.long	1
	.long	__Z17pUziReloadRetractP18PANEL_SPRITEstruct
	.space 4
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_UziClip
	.align 4
_ps_UziClip:
	.word	2005
	.space 2
	.long	1
	.long	__Z8pUziClipP18PANEL_SPRITEstruct
	.long	_ps_UziClip
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_StarHide
	.align 4
_ps_StarHide:
	.word	2130
	.space 2
	.long	5
	.long	__Z9pStarHideP18PANEL_SPRITEstruct
	.long	_ps_StarHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_ps_SwordHide
	.align 4
_ps_SwordHide:
	.word	2080
	.space 2
	.long	24
	.long	__Z10pSwordHideP18PANEL_SPRITEstruct
	.long	_ps_SwordHide
	.long	0
	.byte	0
	.byte	0
	.space 2
	.section .rdata,"dr"
	.align 4
__ZL13SwordAngTable:
	.word	82
	.word	168
	.word	320
	.set	__ZL12FistAngTable,__ZL13SwordAngTable
	.align 4
__ZZ8WeaponOKP12PLAYERstructE9wpn_order:
	.ascii "\2\3\4\5\6\7\10\11\1\0"
	.align 4
__ZZ16PlayerUpdateKeysP12PLAYERstructE13StatusKeyPics:
	.word	2392
	.word	2394
	.word	2393
	.word	2395
	.word	2448
	.word	2449
	.word	2458
	.word	2459
LC30:
	.ascii "%3d/%-3d\0"
LC31:
	.ascii "%2d/%-2d\0"
	.align 4
__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_fmt2:
	.long	LC30
	.long	LC31
	.long	LC31
LC32:
	.ascii "%d:\0"
	.align 4
__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_fmt1:
	.long	LC32
	.long	LC32
	.long	LC32
	.align 4
__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE13wsum_back_pic:
	.word	2405
	.word	2406
	.word	2406
	.align 4
__ZZ25PlayerUpdateWeaponSummaryP12PLAYERstructsE9wsum_xoff:
	.word	0
	.word	36
	.word	66
	.globl	_PlayerPainVocs
	.align 4
_PlayerPainVocs:
	.long	256
	.long	257
	.long	258
	.long	259
	.long	260
	.align 4
_PlayerYellVocs:
	.long	261
	.long	262
	.long	263
	.globl	_sg_NinjaGrabThroat
	.data
	.align 4
_sg_NinjaGrabThroat:
	.long	_s_NinjaGrabThroat
	.long	_s_NinjaGrabThroat
	.long	_s_NinjaGrabThroat
	.long	_s_NinjaGrabThroat
	.long	_s_NinjaGrabThroat
	.globl	_NinjaGrenadeActionSet
	.align 32
_NinjaGrenadeActionSet:
	.long	_sg_NinjaStand
	.long	_sg_NinjaRun
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.long	_sg_NinjaUzi
	.word	812
	.word	1024
	.long	_sg_NinjaUzi
	.long	_sg_NinjaGrenade
	.space 16
	.word	812
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_NinjaSeekerActionSet
	.align 32
_NinjaSeekerActionSet:
	.long	_sg_NinjaStand
	.long	_sg_NinjaRun
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.long	_sg_NinjaStar
	.word	812
	.word	1024
	.long	_sg_NinjaUzi
	.long	_sg_NinjaRocket
	.space 16
	.word	812
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_NinjaRedActionSet
	.align 32
_NinjaRedActionSet:
	.long	_sg_NinjaStand
	.long	_sg_NinjaRun
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.long	_sg_NinjaUzi
	.word	812
	.word	1024
	.long	_sg_NinjaUzi
	.long	_sg_NinjaRocket
	.space 16
	.word	812
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_NinjaSniperPersonality
	.align 32
_NinjaSniperPersonality:
	.long	_NinjaSniperBattle
	.long	_NinjaSniperBattle
	.long	_NinjaSniperRoam
	.long	_NinjaSniperRoam
	.long	_NinjaSniperRoam
	.long	_NinjaSniperRoam
	.long	_NinjaSniperBattle
	.long	_NinjaSniperBattle
	.globl	_NinjaSniperActionSet
	.align 32
_NinjaSniperActionSet:
	.long	_sg_NinjaDuck
	.long	_sg_NinjaCrawl
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaUzi
	.long	_sg_NinjaDuck
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.space 4
	.word	1024
	.space 2
	.long	_sg_NinjaUzi
	.space 20
	.word	1024
	.space 10
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_s_NinjaCeiling
	.align 32
_s_NinjaCeiling:
	.word	4162
	.space 2
	.long	10
	.long	__Z14DoNinjaCeilings
	.long	_s_NinjaCeiling
	.word	4166
	.space 2
	.long	10
	.long	__Z14DoNinjaCeilings
	.long	_s_NinjaCeiling+16
	.word	4170
	.space 2
	.long	10
	.long	__Z14DoNinjaCeilings
	.long	_s_NinjaCeiling+32
	.word	4174
	.space 2
	.long	10
	.long	__Z14DoNinjaCeilings
	.long	_s_NinjaCeiling+48
	.word	4178
	.space 2
	.long	10
	.long	__Z14DoNinjaCeilings
	.long	_s_NinjaCeiling+64
	.globl	_NinjaActionSet
	.align 32
_NinjaActionSet:
	.long	_sg_NinjaStand
	.long	_sg_NinjaRun
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.long	_sg_NinjaStar
	.word	1000
	.word	1024
	.long	_sg_NinjaUzi
	.long	_sg_NinjaStar
	.space 16
	.word	800
	.word	1024
	.space 8
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_NinjaAttrib
	.align 32
_NinjaAttrib:
	.word	110
	.word	130
	.word	150
	.word	180
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
	.globl	_NinjaPersonality
	.align 32
_NinjaPersonality:
	.long	_NinjaBattle
	.long	_NinjaOffense
	.long	_NinjaBroadcast
	.long	_NinjaSurprised
	.long	_NinjaEvasive
	.long	_NinjaLostTarget
	.long	_NinjaCloseRange
	.long	_NinjaCloseRange
	.globl	_NinjaGreenActionSet
	.align 32
_NinjaGreenActionSet:
	.long	_sg_NinjaStand
	.long	_sg_NinjaRun
	.long	_sg_NinjaJump
	.long	_sg_NinjaFall
	.long	_sg_NinjaKneelCrawl
	.long	_sg_NinjaSwim
	.long	_sg_NinjaFly
	.long	_sg_NinjaRise
	.long	_sg_NinjaSit
	.long	0
	.long	_sg_NinjaClimb
	.long	_sg_NinjaPain
	.long	_sg_NinjaDie
	.long	_sg_NinjaHariKari
	.long	_sg_NinjaDead
	.long	_sg_NinjaDeathJump
	.long	_sg_NinjaDeathFall
	.long	_sg_NinjaUzi
	.long	_sg_NinjaFlashBomb
	.word	912
	.word	1024
	.long	_sg_NinjaFlashBomb
	.long	_sg_NinjaUzi
	.long	_sg_NinjaMirv
	.long	_sg_NinjaNapalm
	.space 8
	.word	150
	.word	500
	.word	712
	.word	1024
	.space 4
	.long	0
	.space 4
	.long	_sg_NinjaDuck
	.long	_sg_NinjaDive
	.globl	_InvisibleNinjaAttrib
	.align 32
_InvisibleNinjaAttrib:
	.word	220
	.word	240
	.word	300
	.word	360
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
.lcomm _wfe_ExitCallback,4,4
	.globl	_sync_found
	.bss
	.align 4
_sync_found:
	.space 4
	.globl	_sync_first
	.align 32
_sync_first:
	.space 960
	.globl	_syncstate
_syncstate:
	.space 1
	.globl	_syncstat
	.align 4
_syncstat:
	.space 16
	.globl	_syncvaltottail
	.align 4
_syncvaltottail:
	.space 4
.lcomm _syncvaltail,4,4
.lcomm __ZZ13NullPruneGirlsE9madhandle,4,4
.lcomm __ZZ11DoPruneGirlsE9coyhandle,4,4
.lcomm __ZZ11DoPruneGirlsE9madhandle,4,4
	.section .rdata,"dr"
	.align 4
LC4:
	.long	_NinjaActionSet
	.align 4
LC5:
	.long	_NinjaSniperActionSet
	.align 8
LC16:
	.long	858993459
	.long	1071854387
	.align 4
LC17:
	.long	1056964608
	.align 4
LC21:
	.long	_ps_RetractUzi2
	.align 4
LC22:
	.long	_ps_FireUzi2+24
	.align 4
LC23:
	.long	_ps_PresentShotgun
	.align 4
LC24:
	.long	_ps_PresentRail
	.align 4
LC25:
	.long	_ps_PresentHeart
	.align 4
LC26:
	.long	_ps_PresentGrenade
	.align 4
LC28:
	.long	_ps_PresentMine
	.align 4
LC29:
	.long	_ps_PresentFist
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z19DoActorSectorDamages;	.scl	2;	.type	32;	.endef
	.def	__Z16KeepActorOnFloors;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z22DoActorPickClosePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_dragpoint.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_alignceilslope;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_alignflorslope;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z17mmulti_sendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnBloodsssiii;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorFalls;	.scl	2;	.type	32;	.endef
	.def	__Z16ActorFollowTrackss.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	__Z11DoActorJumps;	.scl	2;	.type	32;	.endef
	.def	__Z23GirlNinjaJumpActionFuncs;	.scl	2;	.type	32;	.endef
	.def	__Z13NullGirlNinjas;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z18DoGirlNinjaSpecials;	.scl	2;	.type	32;	.endef
	.def	__Z12CanSeePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z13InitActorDucks;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponSwordP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15InitSwordAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponStarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z8InitStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitWeaponUziP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z7InitUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9InitShellss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z8SpawnVisssiiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z11InitShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z7InitEMPP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponHotheadP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12InitFireballP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitSpellNapalmP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpellRingP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponMicroP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15InitBunnyRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitNukeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10InitRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitHeartAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11InitGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerSpriteThrowP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z8InitMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitFistAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16mmulti_getpacketPiPh;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z16timerUpdateClockv;	.scl	2;	.type	32;	.endef
	.def	__Z21GetSyncInfoFromPacketPhiPii.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
	.def	_strncmp;	.scl	2;	.type	32;	.endef
	.def	_snprintf;	.scl	2;	.type	32;	.endef
	.def	__Z22DemoAutoRecordChatLinePKc;	.scl	2;	.type	32;	.endef
	.def	__Z10OSD_PrintfPKcz;	.scl	2;	.type	32;	.endef
	.def	__Z30DemoAutoRecordUpdatePlayerNamesPKc;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12PlaySoundRTSi;	.scl	2;	.type	32;	.endef
	.def	__Z7wfe_Escv;	.scl	2;	.type	32;	.endef
	.def	_handleevents.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__Z18DisplayPanelNumberP12PLAYERstructssi.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerUpdateArmorP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z20DisplaySummaryStringP12PLAYERstructssssPKc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdateInventoryP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
	.def	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13pNullAnimatorP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitSpriteGrenades;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z15InitEnemyRockets;	.scl	2;	.type	32;	.endef
	.def	__Z15InitEnemyNapalms;	.scl	2;	.type	32;	.endef
	.def	__Z13InitEnemyMirvs;	.scl	2;	.type	32;	.endef
	.def	__Z13InitFlashBombs;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
