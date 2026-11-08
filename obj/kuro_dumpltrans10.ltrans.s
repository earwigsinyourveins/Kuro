	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z13GetJumpHeightss
	.def	__Z13GetJumpHeightss;	.scl	2;	.type	32;	.endef
__Z13GetJumpHeightss:
LFB0:
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
LFE0:
	.p2align 4
	.globl	__Z13PickJumpSpeedsi
	.def	__Z13PickJumpSpeedsi;	.scl	2;	.type	32;	.endef
__Z13PickJumpSpeedsi:
LFB2:
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
	jle	L7
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
L6:
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
	jle	L6
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
L7:
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	movl	$-600, %eax
	addl	$20, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z16PickJumpMaxSpeedss
	.def	__Z16PickJumpMaxSpeedss;	.scl	2;	.type	32;	.endef
__Z16PickJumpMaxSpeedss:
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
	movswl	20(%esp), %edx
	movzwl	24(%esp), %ebx
	imull	$44, %edx, %eax
	movl	_User(,%edx,4), %ebp
	addl	_sprite, %eax
	movzwl	%bx, %edx
	orl	$524288, %edx
	movl	%edx, 92(%ebp)
	movswl	14(%eax), %ecx
	movl	8(%eax), %esi
	movzbl	21(%eax), %edx
	movswl	_tilesiz+2(,%ecx,4), %edi
	testb	$-128, 12(%eax)
	je	L11
	movl	%edi, %eax
	sall	$7, %eax
	cmpb	$64, %dl
	je	L13
	imull	%edi, %edx
	leal	(%edx,%edx), %eax
L13:
	movsbl	_picanm+2(%ecx,%ecx,4), %edx
	sall	$8, %edx
	addl	%edx, %eax
	subl	%eax, %esi
L14:
	movl	104(%ebp), %edi
	jmp	L18
	.p2align 4,,10
	.p2align 3
L21:
	addl	$100, %ebx
	movw	%bx, 92(%ebp)
	cmpw	$-199, %bx
	jge	L17
L18:
	movl	%ebx, %ecx
	movl	$715827883, %eax
	negw	%cx
	cmovs	%ebx, %ecx
	movswl	%cx, %ecx
	imull	%ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$3, %eax
	subl	%edx, %eax
	movl	%esi, %edx
	imull	%ecx, %eax
	leal	(%eax,%eax,2), %eax
	addl	%eax, %eax
	sarl	$9, %eax
	sall	$8, %eax
	subl	%eax, %edx
	leal	-4096(%edx), %eax
	cmpl	%edi, %eax
	jle	L21
L17:
	movswl	%bx, %eax
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
L11:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L22
	imull	%edi, %edx
	leal	0(,%edx,4), %edi
	subl	%edi, %esi
	jmp	L14
	.p2align 4,,10
	.p2align 3
L22:
	sall	$8, %edi
	subl	%edi, %esi
	jmp	L14
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__Z14ProcessQuakeOnv
	.def	__Z14ProcessQuakeOnv;	.scl	2;	.type	32;	.endef
__Z14ProcessQuakeOnv:
LFB5:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movzwl	_headspritestat+184, %ebx
	cmpw	$-1, %bx
	je	L23
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	$-1171354717, %edi
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	jmp	L24
	.p2align 6
	.p2align 4,,10
	.p2align 3
L27:
	cmpw	$-1, %bx
	je	L32
L24:
	movswl	%bx, %eax
	movl	_sprite, %esi
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %ecx
	imull	$44, %eax, %eax
	addl	%eax, %esi
	addl	$32, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	$12, 32(%esi)
	jns	L27
	movl	%ecx, %eax
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L24
	.p2align 4
	.p2align 3
L32:
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %edi
	.cfi_restore 7
L23:
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z17DoPlayerDeathFallP12PLAYERstruct
	.def	__Z17DoPlayerDeathFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerDeathFallP12PLAYERstruct:
LFB6:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edi
	leal	4(%edi), %eax
	leal	8(%edi), %ebp
	movl	%eax, 8(%esp)
L43:
	movl	112(%edi), %eax
	movl	152(%edi), %edx
	addl	$8, %eax
	movl	%eax, 112(%edi)
	addl	8(%edi), %eax
	movl	%eax, 8(%edi)
	testl	%edx, %edx
	je	L34
	testb	$1, 38(%edx)
	je	L34
	movl	8(%edx), %edx
	leal	-4096(%edx), %ebx
	cmpl	%ebx, %eax
	jg	L55
	.p2align 4
	.p2align 3
L36:
	subw	$1, %si
	jne	L43
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
L34:
	.cfi_restore_state
	movl	136(%edi), %ecx
	leal	-4096(%ecx), %ebx
	cmpl	%ebx, %eax
	jle	L36
L37:
	movl	_randomseed, %eax
	movl	8(%esp), %ecx
	movl	$8, 4(%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	movl	%ebp, (%esp)
	leal	1(%eax,%edx,4), %eax
	movl	%edi, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L40
	sall	$14, %eax
	cmpl	$537936224, %eax
	ja	L40
	movl	$410, %eax
	call	__Z9PlaySoundiPiS_S_i
L42:
	andl	$-9, 22968(%edi)
	movl	%ebx, 8(%edi)
	jmp	L36
	.p2align 4,,10
	.p2align 3
L40:
	movl	$56, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L42
	.p2align 4,,10
	.p2align 3
L55:
	cmpl	%edx, 136(%edi)
	je	L37
	movswl	348(%edi), %eax
	movl	%eax, (%esp)
	call	__Z11SpawnSplashs
	jmp	L37
	.cfi_endproc
LFE6:
	.p2align 4
	.def	__Z17DoPlayerDeathJumpP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z17DoPlayerDeathJumpP12PLAYERstruct:
LFB8:
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
	movl	112(%eax), %ebx
	leal	24(%ebx), %edi
L60:
	leal	8(%ebx), %ecx
	testl	%ecx, %ecx
	jg	L64
	movl	8(%eax), %esi
	movl	132(%eax), %edx
	addl	%ecx, %esi
	addl	$1024, %edx
	movl	%esi, 8(%eax)
	cmpl	%edx, %esi
	jl	L59
	cmpl	%edi, %ecx
	jne	L61
	movl	%edi, 112(%eax)
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
L61:
	.cfi_restore_state
	movl	%ecx, %ebx
	jmp	L60
	.p2align 4,,10
	.p2align 3
L59:
	movl	%edx, 8(%eax)
	movl	$-8, %edx
	subl	%ebx, %edx
	movl	%edx, 112(%eax)
L63:
	movl	22968(%eax), %edx
	movl	%eax, (%esp)
	andl	$-5, %edx
	orl	$8, %edx
	movl	%edx, 22968(%eax)
	call	__Z17DoPlayerDeathFallP12PLAYERstruct
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
L64:
	.cfi_restore_state
	movl	%ecx, 112(%eax)
	jmp	L63
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC0:
	.ascii "%s %s\0"
LC1:
	.ascii "%s was killed by %s.\0"
LC2:
	.ascii "%s was wasted by %s's %s.\0"
	.align 4
LC3:
	.ascii "%s got his ass kicked by %s's %s.\0"
	.align 4
LC4:
	.ascii "%s bows down before the mighty power of %s.\0"
LC5:
	.ascii "%s was killed by %s's %s.\0"
	.align 4
LC6:
	.ascii "%s got slapped down hard by %s's %s.\0"
	.align 4
LC7:
	.ascii "%s got on his knees before %s.\0"
	.align 4
LC8:
	.ascii "%s was totally out classed by %s's %s.\0"
	.align 4
LC9:
	.ascii "%s got chewed apart by %s's %s.\0"
LC10:
	.ascii "%s was retired by %s's %s.\0"
LC11:
	.ascii "%s was greased by %s's %s.\0"
	.align 4
LC12:
	.ascii "%s was humbled lower than dirt by %s.\0"
	.align 4
LC13:
	.ascii "%s beats %s like a red headed step child.\0"
	.align 4
LC14:
	.ascii "%s begs for mercy as %s terminates him with extreme prejudice.\0"
	.align 4
LC15:
	.ascii "%s falls before the superior skills of %s.\0"
	.align 4
LC16:
	.ascii "%s gives %s a beating he'll never forget.\0"
	.align 4
LC17:
	.ascii "%s puts the Smack Dab on %s with his %s.\0"
	.text
	.p2align 4
	.def	__Z20DoPlayerDeathMessageP12PLAYERstructS0_;	.scl	3;	.type	32;	.endef
__Z20DoPlayerDeathMessageP12PLAYERstructS0_:
LFB9:
	.cfi_startproc
	movl	%eax, %ecx
	subl	$_Player, %eax
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	sarl	$2, %eax
	imull	$-432986257, %eax, %eax
	addw	$1, 23240(%edx,%eax,2)
	imull	$24124, _myconnectindex, %eax
	addl	$_Player, %eax
	cmpl	%edx, %ecx
	je	L96
	cmpl	%eax, %edx
	je	L97
L65:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L96:
	.cfi_restore_state
	cmpl	%eax, %ecx
	jne	L65
	imull	$1103515245, _wrandomseed, %eax
	movl	$32766, %edx
	movl	%ebx, 20(%esp)
	movl	$LC0, 4(%esp)
	movl	$_ds, (%esp)
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$1610792977, %edx
	addl	$23262, %ecx
	movl	%ecx, 8(%esp)
	sall	$14, %eax
	.cfi_offset 3, -12
	movl	%eax, %ebx
	mull	%edx
	movl	%ebx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%eax, %edx
	shrl	$25, %edx
	movl	_SuicideNote(,%edx,4), %eax
	movl	%eax, 12(%esp)
	call	_sprintf
L68:
	movl	_connecthead, %ebx
	cmpl	$-1, %ebx
	jne	L89
	jmp	L95
	.p2align 4,,10
	.p2align 3
L87:
	cmpb	$0, _CommEnabled
	je	L88
	movl	$_ds, 4(%esp)
	movl	$__ZL7tempbuf.lto_priv.0+1, (%esp)
	movb	$4, __ZL7tempbuf.lto_priv.0
	call	_strcpy
	movl	$_ds, (%esp)
	call	_strlen
	movl	$__ZL7tempbuf.lto_priv.0, %edx
	leal	2(%eax), %ecx
	movswl	%bx, %eax
	call	__Z13netsendpacketiPhi
L88:
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	je	L95
L89:
	cmpl	%ebx, _myconnectindex
	jne	L87
	movl	$_ds, %eax
	call	__Z12adduserquotePKc
	movl	_connectpoint2(,%ebx,4), %ebx
	cmpl	$-1, %ebx
	jne	L89
L95:
	movl	20(%esp), %ebx
	.cfi_restore 3
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L97:
	.cfi_def_cfa_offset 32
	imull	$1103515245, _wrandomseed, %eax
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -12
	leal	23262(%edx), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -8
	leal	23262(%ecx), %esi
	movzwl	24112(%ecx), %ecx
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	cmpw	348(%edx), %cx
	je	L98
	shrl	$16, %eax
	movl	$32766, %edx
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	$4194433, %edx
	sall	$4, %eax
	mull	%edx
	shrl	$5, %edx
	cmpw	$15, %dx
	ja	L70
	movzwl	%dx, %edx
	jmp	*L72(,%edx,4)
	.section .rdata,"dr"
	.align 4
L72:
	.long	L70
	.long	L86
	.long	L85
	.long	L84
	.long	L83
	.long	L82
	.long	L81
	.long	L80
	.long	L79
	.long	L78
	.long	L77
	.long	L76
	.long	L75
	.long	L74
	.long	L73
	.long	L71
	.text
L71:
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC17, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L73:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC16, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L74:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC15, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L75:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC14, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L76:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC13, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L77:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC12, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L78:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC11, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L79:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC10, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L80:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC9, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L81:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC8, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L82:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC7, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L83:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC6, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L84:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC5, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L85:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC4, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L86:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC3, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
	.p2align 4,,10
	.p2align 3
L98:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC1, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
L70:
	.cfi_restore_state
	movswl	%cx, %eax
	call	__Z11DeathStrings
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$LC2, 4(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	24(%esp), %esi
	.cfi_restore 6
	jmp	L68
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__Z19DoPlayerDeathBounceP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z19DoPlayerDeathBounceP12PLAYERstruct:
LFB14:
	.cfi_startproc
	cmpb	$0, _Prediction
	jne	L109
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, %ecx
	movl	%ebx, 8(%esp)
	movswl	348(%eax), %eax
	.cfi_offset 3, -12
	movl	_User(,%eax,4), %ebx
	movl	152(%ecx), %eax
	testl	%eax, %eax
	je	L101
	testb	$1, 38(%eax)
	jne	L112
L101:
	movl	_randomseed, %eax
	orl	$536870912, 68(%ebx)
	movl	$-300, 112(%ecx)
	leal	(%eax,%eax,4), %edx
	sarl	$2, 232(%ebx)
	leal	1(%eax,%edx,4), %eax
	addl	$1, _krandcount
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$63, %eax
	subl	$32, %eax
	andw	$2047, %ax
	movw	%ax, 228(%ebx)
	orl	$4, 22968(%ecx)
	movl	$-1, 4(%esp)
	movswl	348(%ecx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L109:
	ret
	.p2align 4,,10
	.p2align 3
L112:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	352(%ecx), %esi
	movl	$-1171354717, %eax
	leal	12(%esi), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_PlayerHead, %edx
	andw	$-258, 12(%esi)
	movswl	348(%ecx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	orl	$536870912, 68(%ebx)
	movl	$0, 232(%ebx)
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
LC18:
	.ascii "source/sw/src/player.cpp\0"
	.text
	.p2align 4
	.def	__Z17DoPlayerDeathHurlP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z17DoPlayerDeathHurlP12PLAYERstruct:
LFB16:
	.cfi_startproc
	movl	22968(%eax), %edx
	cmpl	$1, _numplayers
	jle	L114
	testb	$2, 418(%eax)
	jne	L130
L114:
	andl	$12, %edx
	je	L131
	ret
	.p2align 4,,10
	.p2align 3
L130:
	testb	$2, 22978(%eax)
	je	L114
	orl	$8388608, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, %ecx
	movl	%edx, 22968(%eax)
	movswl	348(%eax), %eax
	movl	$_sg_PlayerHeadHurl, %edx
	movl	%ecx, 20(%esp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	cmpb	$0, _MoveSkip4
	movl	20(%esp), %ecx
	je	L132
L113:
	addl	$24, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L131:
	movswl	348(%eax), %eax
	movl	$_sg_PlayerHead, %edx
	jmp	__Z13NewStateGroupsPP11STATEstruct.isra.0
	.p2align 4,,10
	.p2align 3
L132:
	.cfi_def_cfa_offset 28
	movl	$-1, 4(%esp)
	movswl	348(%ecx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	movl	_randomseed, %eax
	movl	20(%esp), %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	movl	%eax, _randomseed
	je	L116
	sall	$14, %eax
	cmpl	$430563724, %eax
	jbe	L113
L116:
	cmpb	$0, _Prediction
	jne	L113
	leal	8(%ecx), %eax
	movl	%ecx, (%esp)
	movl	$6934, %edx
	movl	%eax, 8(%esp)
	leal	4(%ecx), %eax
	movl	%ecx, 16(%esp)
	movl	$48, %ecx
	movl	%eax, 4(%esp)
	movl	$LC18, %eax
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L113
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC20:
	.ascii "Press SPACE to restart\0"
	.text
	.p2align 4
	.globl	__Z16DoPlayerBeginDieP12PLAYERstruct
	.def	__Z16DoPlayerBeginDieP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16DoPlayerBeginDieP12PLAYERstruct:
LFB21:
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzbl	_Prediction, %ecx
	movl	8(%ebp), %ebx
	testb	%cl, %cl
	jne	L133
	movl	_GodMode, %eax
	testl	%eax, %eax
	jne	L133
	movss	288(%ebx), %xmm0
	movss	300(%ebx), %xmm1
	movswl	348(%ebx), %eax
	unpcklps	%xmm1, %xmm0
	movl	_User(,%eax,4), %esi
	movlps	%xmm0, 304(%ebx)
	cmpb	$0, 24080(%ebx)
	je	L135
	movl	24088(%ebx), %eax
	testl	%eax, %eax
	jg	L197
L137:
	movl	$-1, %eax
	addl	$1, _krandcount
	movl	%eax, 24084(%ebx)
	movl	%eax, 24088(%ebx)
	movl	_randomseed, %eax
	movb	$0, 24080(%ebx)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$387, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L141
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$27, %edx
	movl	_PlayerLowHealthPainVocs(,%edx,4), %edx
L141:
	leal	4(%ebx), %edi
	testb	%cl, %cl
	je	L167
L142:
	cmpb	$0, _CommEnabled
	jne	L143
	cmpl	$1, _numplayers
	jle	L198
L143:
	movzwl	_GlobInfoStringTime, %ecx
	movl	$999, %eax
	movl	$LC20, %edx
	movw	%ax, _GlobInfoStringTime
	movl	%ebx, %eax
	movl	%ecx, 24(%esp)
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	24(%esp), %ecx
	movw	%cx, _GlobInfoStringTime
L144:
	movl	22980(%ebx), %ecx
	testl	%ecx, %ecx
	je	L145
	movl	%ebx, %eax
	call	__Z19DoPlayerStopOperateP12PLAYERstruct
L145:
	movl	22968(%ebx), %eax
	testl	$131072, %eax
	je	L146
	movl	$5, %edx
	movw	%dx, 23234(%ebx)
L146:
	movl	$0, 284(%ebx)
	andl	$-182301, %eax
	movl	%eax, 22968(%ebx)
	movswl	348(%ebx), %eax
	call	__Z14ActorCoughItems.isra.0
	cmpl	$1, _numplayers
	jle	L147
	movswl	23238(%ebx), %eax
	testw	%ax, %ax
	js	L148
	movl	_User(,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L147
	movl	144(%ecx), %eax
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L147
	movzbl	_Prediction, %edx
	movb	%dl, 23(%esp)
	cmpl	%ebx, %eax
	je	L199
	cmpb	$0, _gNet+14
	je	L151
	movswl	348(%ebx), %edx
	movzbl	262(%ecx), %eax
	movl	_User(,%edx,4), %edx
	cmpb	%al, 262(%edx)
	je	L200
L151:
	cmpb	$0, 23(%esp)
	jne	L155
	movl	24(%esp), %eax
	movl	$1, %edx
L196:
	movl	%ecx, 24(%esp)
	call	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0
	movl	24(%esp), %ecx
	movl	144(%ecx), %eax
	movl	%eax, 24(%esp)
L155:
	movl	24(%esp), %edx
	movl	%ebx, %eax
	call	__Z20DoPlayerDeathMessageP12PLAYERstructS0_
	.p2align 4
	.p2align 3
L147:
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L158:
	movl	23124(%ebx,%eax,4), %edx
	testl	%edx, %edx
	je	L157
	xorl	%ecx, %ecx
	movw	%cx, 23188(%ebx,%eax,2)
	xorl	%ecx, %ecx
	orl	$65536, 204(%edx)
	movl	23124(%ebx,%eax,4), %edx
	movw	%cx, 194(%edx)
	movl	$0, 23124(%ebx,%eax,4)
L157:
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L158
	movl	$50000, %eax
	xorl	%edx, %edx
	movl	$0, 216(%ebx)
	movl	%eax, 208(%ebx)
	movl	$1024, %eax
	movl	%eax, 140(%ebx)
	movzwl	23234(%ebx), %eax
	movl	%edx, 212(%ebx)
	movl	$7168, %edx
	movl	__ZZ16DoPlayerBeginDieP12PLAYERstructE15PlayerDeathFunc(,%eax,4), %eax
	movl	%edx, 144(%ebx)
	movl	$0, 22980(%ebx)
	movl	%eax, 22964(%ebx)
	movl	22968(%ebx), %eax
	movl	$0, 22984(%ebx)
	andl	$-524289, %eax
	movl	$0, 100(%ebx)
	orl	$32, %eax
	movl	$0, 104(%ebx)
	movl	%eax, 22968(%ebx)
	movl	40(%esi), %eax
	movl	4(%eax), %edx
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	23048(%ebx), %eax
	xorl	%ecx, %ecx
	movl	28(%eax), %edx
	movw	%cx, 228(%eax)
	xorl	%ecx, %ecx
	movl	%edx, 12(%eax)
	testl	%edx, %edx
	je	L159
	movzwl	(%edx), %ecx
L159:
	movw	%cx, 178(%eax)
	cmpw	$5, 23234(%ebx)
	ja	L160
	movzwl	23234(%ebx), %eax
	jmp	*L162(,%eax,4)
	.section .rdata,"dr"
	.align 4
L162:
	.long	L164
	.long	L166
	.long	L165
	.long	L164
	.long	L163
	.long	L161
	.text
	.p2align 4,,10
	.p2align 3
L163:
	leal	8(%ebx), %eax
	movl	$8, 4(%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$61, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$200, 112(%ebx)
	orl	$4194308, 22968(%ebx)
	movl	$800, 232(%esi)
L194:
	movl	$-1, 4(%esp)
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_PlayerHeadFly, %edx
	orw	$128, 12(%ecx)
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$1142, %eax
	movw	%ax, 82(%esi)
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$48, 20(%ecx)
	movl	352(%ebx), %ecx
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$1, %edx
	movb	$48, 21(%ecx)
	movswl	348(%ebx), %eax
	movl	$105, %ecx
	call	__Z14InitBloodSprayshs.isra.0
L160:
	orl	$2, 22968(%ebx)
	andl	$-536870913, 68(%esi)
	andl	$-8388609, 22968(%ebx)
L133:
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
L135:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L168
	sall	$14, %eax
	movl	$-1610571775, %edx
	leal	4(%ebx), %edi
	mull	%edx
	shrl	$27, %edx
	movl	_PlayerLowHealthPainVocs(,%edx,4), %edx
L167:
	movl	%ebx, 16(%esp)
	movl	%edx, %ecx
	movl	$LC18, %eax
	movl	$6655, %edx
	movl	$13, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L142
	.p2align 4,,10
	.p2align 3
L164:
	movl	$4227, %ecx
	movl	$_sg_PlayerDeath, %edx
	movl	$8, %edi
	orl	$4, 22968(%ebx)
	movw	%cx, 82(%esi)
	movswl	348(%ebx), %eax
	movl	$-300, 112(%ebx)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	$2560, 96(%esi)
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z12DoFindGrounds
	movswl	348(%ebx), %ecx
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	movw	%di, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	%ecx, (%esp)
	call	__Z6DoJumps
	movl	$-400, %eax
	movw	%ax, 92(%esi)
	jmp	L160
	.p2align 4,,10
	.p2align 3
L198:
	cmpw	$0, _QuickLoadNum
	js	L143
	movb	$1, _ReloadPrompt
	jmp	L144
	.p2align 4,,10
	.p2align 3
L197:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %edi
	movl	-4(%edx,%eax,4), %edx
	testl	%edi, %edi
	je	L137
	testl	%edx, %edx
	je	L137
	movl	112(%edx), %edx
	testl	%edx, %edx
	jne	L137
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L140
L193:
	movzbl	_Prediction, %ecx
	jmp	L137
	.p2align 4,,10
	.p2align 3
L168:
	leal	4(%ebx), %edi
	movl	$387, %edx
	jmp	L167
	.p2align 4,,10
	.p2align 3
L165:
	leal	8(%ebx), %eax
	movl	$8, 4(%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$58, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$-650, 112(%ebx)
	orl	$4194308, 22968(%ebx)
	movl	$-1, 4(%esp)
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_PlayerHeadFly, %edx
	orw	$128, 12(%ecx)
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$1142, %edx
	movl	$-1171354717, %eax
	movw	%dx, 82(%esi)
	movl	352(%ebx), %ecx
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$48, 20(%ecx)
	movl	352(%ebx), %ecx
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$1, %edx
	movb	$48, 21(%ecx)
	movswl	348(%ebx), %eax
	movl	$-1, %ecx
	call	__Z14InitBloodSprayshs.isra.0
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	348(%ebx), %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	348(%ebx), %eax
	call	__Z14InitBloodSprayshs.isra.0
	jmp	L160
	.p2align 4,,10
	.p2align 3
L161:
	orl	$4, 22968(%ebx)
	movl	$4227, %eax
	movl	$_sg_PlayerDeath, %edx
	movw	%ax, 82(%esi)
	movswl	348(%ebx), %eax
	movl	$-200, 112(%ebx)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z12DoFindGrounds
	movswl	348(%ebx), %ecx
	movl	_User(,%ecx,4), %edx
	movl	68(%edx), %eax
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	$8, %eax
	movw	%ax, 94(%edx)
	movl	%ecx, (%esp)
	call	__Z6DoJumps
	movl	$-300, %eax
	movw	%ax, 92(%esi)
	jmp	L160
	.p2align 4,,10
	.p2align 3
L166:
	leal	8(%ebx), %eax
	movl	$8, 4(%esp)
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$58, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$-300, 112(%ebx)
	orl	$4194308, 22968(%ebx)
	movl	$0, 232(%esi)
	jmp	L194
	.p2align 4,,10
	.p2align 3
L148:
	cmpb	$0, _Prediction
	jne	L150
L156:
	movl	$-1, %edx
	movl	%ebx, %eax
	call	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0
L150:
	movl	%ebx, %edx
	movl	%ebx, %eax
	call	__Z20DoPlayerDeathMessageP12PLAYERstructS0_
	jmp	L147
L200:
	cmpb	$0, 23(%esp)
	jne	L155
	movl	$-1, %edx
	movl	%ebx, %eax
	jmp	L196
L199:
	testb	%dl, %dl
	je	L156
	jmp	L150
L140:
	movl	$2, _FX_ErrorCode
	jmp	L193
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
LC23:
	.ascii "ON\0"
LC24:
	.ascii "OFF\0"
LC25:
	.ascii "Run mode %s\0"
	.text
	.p2align 4
	.def	__Z25DoPlayerDeathFollowKillerP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z25DoPlayerDeathFollowKillerP12PLAYERstruct:
LFB31:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	288(%eax), %eax
	cmpl	$10813440, %eax
	jle	L202
	subl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813440, %eax
	jle	L204
L203:
	movl	%eax, 304(%ebx)
	movl	22968(%ebx), %eax
	testl	$12582912, %eax
	je	L205
	orl	$2, 22972(%ebx)
	testl	$4194304, %eax
	je	L206
	movl	400(%ebx), %edx
	testl	%edx, %edx
	jne	L207
L206:
	testl	$8388608, %eax
	je	L205
L207:
	movl	22976(%ebx), %edx
	testb	$4, 417(%ebx)
	je	L208
	testb	$4, %dh
	je	L209
	xorl	$1048576, %eax
	andb	$-5, %dh
	movl	%eax, 22968(%ebx)
	andl	$1048576, %eax
	movl	%edx, 22976(%ebx)
	movl	%eax, %edx
	shrl	$20, %edx
	movl	$LC25, 4(%esp)
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC24, %eax
	movl	$_ds, (%esp)
	movb	%dl, _gs+21
	movl	$LC23, %edx
	cmovne	%edx, %eax
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%ebx, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
L209:
	movl	400(%ebx), %ecx
	leal	300(%ebx), %edx
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z12DoPlayerTurnP12PLAYERstructPii
	.p2align 4,,10
	.p2align 3
L202:
	.cfi_restore_state
	je	L203
	addl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813439, %eax
	jle	L203
L204:
	movl	$10813440, 288(%ebx)
	movl	$10813440, %eax
	jmp	L203
	.p2align 4,,10
	.p2align 3
L205:
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movswl	23238(%ebx), %esi
	testw	%si, %si
	js	L201
	movl	%edi, 44(%esp)
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	8(%ebx), %eax
	movswl	14(%esi), %edx
	movzwl	268(%ebx), %ebp
	movl	%eax, 20(%esp)
	movl	4(%ebx), %eax
	movl	8(%esi), %ecx
	movl	%eax, 24(%esp)
	movl	(%ebx), %eax
	movl	%eax, 28(%esp)
	movzwl	24(%esi), %eax
	movw	%ax, 34(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	movl	%eax, %edi
	movzbl	21(%esi), %eax
	testb	$-128, 12(%esi)
	je	L212
	cmpb	$64, %al
	je	L245
	imull	%edi, %eax
	addl	%eax, %eax
L214:
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	addl	%edx, %eax
	subl	%eax, %ecx
L215:
	movswl	%bp, %eax
	movl	(%esi), %edi
	movl	4(%esi), %edx
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	34(%esp), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L244
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	movl	$@gethiq16angle@8, %eax
	movl	$@getq16angle.lto_priv.1@8, %esi
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	cmpb	$0, _PedanticMode
	cmovne	%esi, %eax
	call	*%eax
	movl	300(%ebx), %edx
	movl	%eax, %esi
	subl	%edx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovs	%eax, %ecx
	cmpl	$67108864, %ecx
	jle	L219
	cmpl	$67108865, %esi
	leal	134217728(%esi), %eax
	cmovge	%esi, %eax
	leal	134217728(%edx), %esi
	movl	%eax, %ecx
	subl	%esi, %eax
	subl	%edx, %ecx
	cmpl	$67108865, %edx
	cmovge	%ecx, %eax
L219:
	sarl	$4, %eax
	movl	%eax, %ecx
	xorw	%cx, %cx
	cmpb	$0, _PedanticMode
	cmovne	%ecx, %eax
	addl	%eax, %edx
	andl	$134217727, %edx
	movl	%edx, 300(%ebx)
	movl	%edx, 308(%ebx)
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L201:
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L208:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	orb	$4, %dh
	movl	%edx, 22976(%ebx)
	jmp	L209
	.p2align 4,,10
	.p2align 3
L212:
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$64, %al
	je	L246
	imull	%edi, %eax
	sall	$2, %eax
	subl	%eax, %ecx
	jmp	L215
	.p2align 4,,10
	.p2align 3
L244:
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L246:
	.cfi_restore_state
	movl	%edi, %eax
	sall	$8, %eax
	subl	%eax, %ecx
	jmp	L215
	.p2align 4,,10
	.p2align 3
L245:
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L214
	.cfi_endproc
LFE31:
	.p2align 4
	.def	__Z22DoPlayerDeathCheckKickP12PLAYERstruct.isra.0;	.scl	3;	.type	32;	.endef
__Z22DoPlayerDeathCheckKickP12PLAYERstruct.isra.0:
LFB36:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	352(%eax), %edi
	movswl	348(%eax), %eax
	movl	%ebp, 24(%esp)
	movl	_User(,%eax,4), %esi
	movw	%ax, 10(%esp)
	movl	_sprite, %eax
	movl	%esi, 20(%esp)
	movl	%eax, 12(%esp)
	movl	$_StatDamageList, %eax
L253:
	movswl	(%eax), %ecx
	movzwl	_headspritestat(%ecx,%ecx), %ecx
	cmpw	$-1, %cx
	je	L249
	movl	%eax, 16(%esp)
	jmp	L248
	.p2align 4,,10
	.p2align 3
L252:
	movswl	%cx, %esi
	imull	$44, %esi, %ebx
	addl	12(%esp), %ebx
	testb	$8, 43(%ebx)
	je	L250
	movl	(%edi), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	subl	4(%ebx), %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	movl	_User(,%esi,4), %eax
	movl	188(%eax), %eax
	addl	$100, %eax
	cmpl	%eax, %ebp
	jb	L268
L250:
	movzwl	_nextspritestat(%esi,%esi), %ecx
	cmpw	$-1, %cx
	je	L265
L248:
	cmpw	%cx, 10(%esp)
	jne	L252
L265:
	movl	16(%esp), %eax
L249:
	addl	$2, %eax
	movl	$_StatDamageList+40, %esi
	cmpl	%eax, %esi
	jne	L253
	movl	24(%esp), %ebp
	movl	20(%esp), %esi
	movl	%ebp, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	136(%ebp), %eax
	subl	132(%ebp), %eax
	movl	352(%ebp), %ecx
	movl	%eax, %edx
	negl	%edx
	cmovs	%eax, %edx
	movzbl	21(%ecx), %eax
	movswl	14(%ecx), %ecx
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %al
	je	L269
	imull	%ecx, %eax
	leal	-2048(,%eax,4), %eax
L255:
	cmpl	%eax, %edx
	jge	L247
	movl	_randomseed, %eax
	andl	$-536870913, 68(%esi)
	movl	$1000, 232(%esi)
	leal	(%eax,%eax,4), %edx
	addl	$1, _krandcount
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andw	$2047, %ax
	movw	%ax, 228(%esi)
	movl	%edx, _randomseed
	movl	$-100, 112(%ebp)
	jmp	L267
	.p2align 4,,10
	.p2align 3
L268:
	movl	24(%esp), %ebp
	movl	20(%esp), %esi
	movw	%cx, 23238(%ebp)
	movl	4(%edi), %edx
	movl	(%edi), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	addl	$1, _krandcount
	movl	%eax, %edx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	andl	$127, %eax
	leal	-64(%eax,%edx), %eax
	andw	$2047, %ax
	movw	%ax, 228(%esi)
	movswl	32(%ebx), %eax
	andl	$-536870913, 68(%esi)
	addl	%eax, %eax
	movl	%eax, 232(%esi)
	movl	$-500, 112(%ebp)
L267:
	movswl	348(%ebp), %eax
	movl	$_sg_PlayerHeadFly, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	orl	$4, 22968(%ebp)
	movl	$-1, 4(%esp)
	movswl	348(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
L247:
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
L269:
	.cfi_restore_state
	movl	%ecx, %eax
	sall	$8, %eax
	subl	$2048, %eax
	jmp	L255
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z12DoFootPrintss
	.def	__Z12DoFootPrintss;	.scl	2;	.type	32;	.endef
__Z12DoFootPrintss:
LFB37:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movswl	48(%esp), %edx
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_User(,%edx,4), %esi
	movl	144(%esi), %ecx
	testl	%ecx, %ecx
	je	L271
	movswl	268(%ecx), %eax
	testw	%ax, %ax
	js	L271
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	_sector, %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	cmpw	$2356, 16(%eax)
	je	L299
	cmpw	$2356, 24(%eax)
	je	L299
	cmpw	$0, 24078(%ecx)
	jg	L307
L299:
	movl	36(%esp), %edi
	.cfi_restore 7
L271:
	movl	32(%esp), %esi
	xorl	%eax, %eax
	addl	$44, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L307:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	imull	$44, %edx, %ebx
	addl	_sprite, %ebx
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %ebp
	movzwl	38(%edi,%ebp,8), %edi
	testw	$9, %di
	jne	L305
	testb	$1, 14(%eax)
	jne	L305
	testb	$64, 71(%esi)
	jne	L305
	movzbl	22970(%ecx), %ecx
	shrb	%cl
	orb	12(%eax), %cl
	andl	$1, %ecx
	jne	L305
	testw	$5056, %di
	jne	L305
	movl	%edi, %eax
	andw	$3072, %ax
	subw	$1024, %ax
	testw	$-2048, %ax
	je	L305
	movswl	_FloorBloodQueueHead, %eax
	movswl	_FloorBloodQueue(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L272
	call	__Z10KillSprites
	movswl	24(%ebx), %edx
L272:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movswl	28(%ebx), %ecx
	movzwl	%ax, %eax
	movl	%ecx, %ebp
	movl	8(%ebx), %ecx
	movl	%eax, _randomseed
	movl	(%ebx), %edi
	movl	%ecx, 24(%esp)
	movl	4(%ebx), %ecx
	movl	$0, 20(%esp)
	movl	%ebp, 16(%esp)
	cmpl	$65535, %eax
	je	L273
	sall	$14, %eax
	cmpl	$717215039, %eax
	ja	L273
	cmpl	$359656079, %eax
	movl	24(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	%edx, (%esp)
	ja	L308
	movl	$_s_FootPrint3, %ecx
	movl	$2492, %edx
L306:
	movl	$39, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	_FloorBloodQueueHead, %ecx
	movl	%eax, %edx
	movl	%ecx, %eax
	movw	%dx, _FloorBloodQueue(%ecx,%ecx)
	addl	$1, %eax
	andl	$31, %eax
	movw	%ax, _FloorBloodQueueHead
	movl	144(%esi), %eax
	testl	%eax, %eax
	je	L277
	subw	$1, 24078(%eax)
L277:
	movswl	%dx, %eax
	movl	_sprite, %esi
	imull	$44, %eax, %edx
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	leal	(%esi,%edx), %ecx
	leal	40(%edx), %eax
	movl	$-1171354717, %esi
	mull	%esi
	xorl	%eax, %eax
	leal	12(%ecx), %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 40(%ecx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ecx)
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$48, 20(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	23(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$54, 21(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	22(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 23(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 22(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 18(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	xorl	%edi, %edi
	subl	_sprite, %edx
	movl	%edx, %eax
	movw	%di, 42(%ecx)
	leal	17(%ecx), %edi
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 16(%ecx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 17(%ecx)
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	(%ebx), %eax
	movl	%eax, (%ecx)
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%ebx), %eax
	movl	%eax, 8(%ecx)
	movzwl	28(%ebx), %eax
	movl	_sprite, %ebx
	movw	%ax, 28(%ecx)
	movl	24(%esp), %eax
	subl	%ebx, %edi
	andl	$2147483647, 68(%eax)
	movl	%edi, %eax
	movl	24(%esp), %edi
	mull	%esi
	shrl	$5, %edx
	cmpl	$1, _FootMode
	sete	%al
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	leal	17(%eax,%eax), %eax
	movb	%al, 17(%ecx)
	movb	%al, 262(%edi)
	movzbl	_left_foot, %eax
	testb	%al, %al
	movb	%al, 24(%esp)
	sete	_left_foot
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	cmpb	$0, 24(%esp)
	jne	L279
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L279:
	addl	$1, _spritechanged(,%edx,4)
	orw	$32, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$64, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L271
	.p2align 4,,10
	.p2align 3
L305:
	.cfi_restore_state
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
	jmp	L271
	.p2align 4,,10
	.p2align 3
L308:
	.cfi_restore_state
	movl	$_s_FootPrint2, %ecx
	movl	$2491, %edx
	jmp	L306
	.p2align 4,,10
	.p2align 3
L273:
	movl	24(%esp), %eax
	movl	%ecx, 8(%esp)
	movl	$_s_FootPrint1, %ecx
	movl	%edx, (%esp)
	movl	$2490, %edx
	movl	%eax, 12(%esp)
	movl	%edi, 4(%esp)
	jmp	L306
	.cfi_endproc
LFE37:
	.p2align 4
	.def	__Z21DoPlayerDeathMoveHeadP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z21DoPlayerDeathMoveHeadP12PLAYERstruct:
LFB40:
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
	subl	$28, %esp
	movl	352(%eax), %esi
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %edi
	movzwl	228(%edi), %edx
	movl	%edx, %ecx
	addl	$512, %edx
	andl	$2047, %ecx
	andl	$2047, %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	movswl	_sintable(%edx,%edx), %edx
	imull	232(%edi), %ecx
	imull	232(%edi), %edx
	movl	$3, 16(%esp)
	movl	$1, 12(%esp)
	movl	$4096, 8(%esp)
	sarl	$14, %ecx
	movl	$4096, 4(%esp)
	sarl	$14, %edx
	movl	$0, (%esp)
	call	__Z11move_spritesiiiiiji
	movl	%eax, 264(%edi)
	testl	%eax, %eax
	je	L310
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$32768, %edx
	je	L311
	cmpl	$49152, %edx
	je	L333
	.p2align 4
	.p2align 3
L310:
	movl	(%esi), %eax
	movl	%eax, (%ebx)
	movl	4(%esi), %edx
	movl	%edx, 4(%ebx)
	movzwl	24(%esi), %ecx
	movw	%cx, 268(%ebx)
	movw	%cx, 26(%esp)
	leal	26(%esp), %ecx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_updatesector
	movzwl	26(%esp), %eax
	testw	%ax, %ax
	js	L334
	movlps	(%ebx), %xmm0
	movw	%ax, 32(%ebx)
	movlps	%xmm0, 36(%ebx)
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
L334:
	.cfi_restore_state
	movzwl	32(%ebx), %edi
	movl	_sprite, %edx
	movw	%di, 268(%ebx)
	cmpw	$4096, %di
	ja	L320
	movswl	348(%ebx), %eax
	imull	$44, %eax, %ecx
	movzwl	24(%edx,%ecx), %ecx
	cmpw	$4096, %cx
	je	L320
	cmpw	%cx, %di
	je	L320
	movl	%eax, 20(%esp)
	call	_do_deletespritesect
	movl	20(%esp), %eax
	movswl	%di, %edx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %edx
L320:
	movl	%esi, %eax
	movl	$-1171354717, %edi
	movl	36(%ebx), %ecx
	subl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	movl	%ecx, (%esi)
	movl	%ecx, (%ebx)
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	40(%ebx), %ecx
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 4(%esi)
	movl	%ecx, 4(%ebx)
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
L333:
	.cfi_restore_state
	andl	$16383, %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	testb	$16, 12(%eax)
	je	L310
	movzwl	28(%eax), %edx
	movswl	228(%edi), %ecx
	movl	%edx, %eax
	andl	$2047, %edx
	andw	$2047, %ax
	movw	%ax, 20(%esp)
	movl	%ecx, %eax
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movzwl	20(%esp), %ecx
	cmpl	$1024, %edx
	jle	L314
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	movl	%ecx, %edx
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovge	%edx, %ecx
	jmp	L314
	.p2align 4,,10
	.p2align 3
L311:
	movl	_wall, %edx
	andl	$16383, %eax
	sall	$5, %eax
	addl	%edx, %eax
	movswl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	subl	(%eax), %edx
	subl	4(%eax), %ecx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%eax, %ecx
	call	@getangle@8
	movswl	228(%edi), %ecx
	leal	-512(%eax), %edx
	movl	%edx, %eax
	andl	$2047, %edx
	andw	$2047, %ax
	movw	%ax, 20(%esp)
	movl	%ecx, %eax
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movzwl	20(%esp), %ecx
	cmpl	$1024, %edx
	jle	L314
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	movl	%ecx, %edx
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovnb	%edx, %ecx
L314:
	movzwl	20(%esp), %edx
	leal	1024(%edx,%ecx), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	andw	$2047, %ax
	movw	%ax, 228(%edi)
	movl	$-1, 4(%esp)
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnShrapss
	jmp	L310
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z16DoPlayerBeginRunP12PLAYERstruct
	.def	__Z16DoPlayerBeginRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16DoPlayerBeginRunP12PLAYERstruct:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	movl	8(%ebp), %eax
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	348(%eax), %esi
	movl	22972(%eax), %ecx
	movl	136(%eax), %edx
	subl	132(%eax), %edx
	addl	$17407, %edx
	movl	_User(,%esi,4), %edi
	movl	22968(%eax), %ebx
	orl	$6, %ecx
	cmpl	$34814, %edx
	jbe	L336
	movl	%ebx, %edx
	movl	%ecx, 22972(%eax)
	andl	$-49181, %edx
	movl	%edx, 22968(%eax)
	cmpw	$0, 378(%eax)
	jne	L343
	movlps	LC27, %xmm0
	andl	$128, %ebx
	movl	$50000, 208(%eax)
	movl	$__Z11DoPlayerRunP12PLAYERstruct, 22964(%eax)
	movlps	%xmm0, 140(%eax)
	movl	40(%edi), %eax
	jne	L344
	movl	(%eax), %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
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
L344:
	.cfi_restore_state
	movl	4(%eax), %edx
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
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
L336:
	.cfi_restore_state
	andl	$-13, %ebx
	movl	%ecx, 22972(%eax)
	movl	$3072, %ecx
	orb	$64, %bh
	movl	%ecx, 140(%eax)
	movl	%ebx, 22968(%eax)
	movl	$7168, %ebx
	movl	$45056, 208(%eax)
	movl	%ebx, 144(%eax)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%eax)
	movl	40(%edi), %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	16(%eax), %edx
	movl	%esi, %eax
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
L343:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	__Z17DoPlayerBeginWadeP12PLAYERstruct
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z17CopyQuakeSpotToOnP12spritetypev7
	.def	__Z17CopyQuakeSpotToOnP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z17CopyQuakeSpotToOnP12spritetypev7:
LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$91, %edx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %esi
	movswl	24(%esi), %eax
	call	__Z17COVERinsertspritess
	movl	%eax, %ecx
	imull	$44, %eax, %ebx
	movl	%eax, %edi
	movl	(%esi), %eax
	addl	_sprite, %ebx
	movl	%eax, (%ebx)
	movl	4(%esi), %eax
	leal	12(%ebx), %edx
	movl	_sprite, %ebp
	movl	%eax, 4(%ebx)
	movl	8(%esi), %eax
	subl	%ebp, %edx
	movl	%eax, 8(%ebx)
	movl	12(%esi), %eax
	movl	%eax, 12(%ebx)
	movl	16(%esi), %eax
	movl	%eax, 16(%ebx)
	movl	20(%esi), %eax
	movl	%eax, 20(%ebx)
	movl	24(%esi), %eax
	movl	%eax, 24(%ebx)
	movl	28(%esi), %eax
	movl	%eax, 28(%ebx)
	movl	32(%esi), %eax
	movl	%eax, 32(%ebx)
	movl	36(%esi), %eax
	movl	%eax, 36(%ebx)
	movl	40(%esi), %eax
	movl	%eax, 40(%ebx)
	movzwl	24(%esi), %eax
	movw	%ax, 24(%ebx)
	movzwl	26(%esi), %eax
	movl	$-1171354717, %esi
	movw	%ax, 26(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 42(%ebx)
	leal	30(%ebx), %edx
	subl	%ebp, %edx
	movl	$-1, %ebp
	movl	%edx, %eax
	mull	%esi
	movswl	%cx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$92, %edx
	movw	%bp, 30(%ebx)
	call	__Z18change_sprite_statss
	leal	32(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	imulw	$120, 32(%ebx), %ax
	movw	%ax, 32(%ebx)
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
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z12DoQuakeMatchs
	.def	__Z12DoQuakeMatchs;	.scl	2;	.type	32;	.endef
__Z12DoQuakeMatchs:
LFB48:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movzwl	_headspritestat+182, %edi
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movzwl	24(%esp), %ebp
	cmpw	$-1, %di
	je	L347
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jmp	L348
	.p2align 6
	.p2align 4,,10
	.p2align 3
L351:
	cmpw	$-1, %di
	je	L361
L348:
	movswl	%di, %ebx
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %edi
	movl	%ebx, %esi
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	cmpw	38(%ebx), %bp
	jne	L351
	leal	22(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpw	$0, 22(%ebx)
	jle	L350
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-257, 42(%ebx)
	cmpw	$-1, %di
	jne	L348
L361:
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
L347:
	movl	12(%esp), %edi
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L350:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, (%esp)
	call	__Z17CopyQuakeSpotToOnP12spritetypev7
	testb	$-128, 42(%ebx)
	je	L351
	movl	%esi, %eax
	call	__Z10KillSprites
	jmp	L351
	.cfi_endproc
LFE48:
	.p2align 4
	.globl	__Z10SpawnQuakesiiissi
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
__Z10SpawnQuakesiiissi:
LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$92, %edx
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
	movswl	40(%esp), %eax
	call	__Z17COVERinsertspritess
	movl	_sprite, %ebx
	movl	$-1171354717, %ecx
	imull	$44, %eax, %edx
	movl	%eax, 16(%esp)
	movl	%edx, %eax
	addl	%edx, %ebx
	mull	%ecx
	movl	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, (%ebx)
	leal	4(%ebx), %eax
	movl	_sprite, %ebp
	movl	%eax, %esi
	movl	%eax, 12(%esp)
	subl	%ebp, %esi
	movl	%esi, %eax
	mull	%ecx
	movl	48(%esp), %eax
	movl	%edx, %esi
	shrl	$5, %esi
	addl	$1, _spritechanged(,%esi,4)
	movl	%eax, 4(%ebx)
	leal	8(%ebx), %eax
	movl	%eax, %edi
	movl	%eax, 8(%esp)
	subl	%ebp, %edi
	movl	%edi, %eax
	mull	%ecx
	movl	52(%esp), %eax
	movl	%edx, %edi
	leal	12(%ebx), %edx
	shrl	$5, %edi
	subl	%ebp, %edx
	addl	$1, _spritechanged(,%edi,4)
	movl	%eax, 8(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 12(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ebx)
	leal	42(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 42(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 38(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movzwl	60(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%ebp, %edx
	movb	%al, 18(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	64(%esp), %edx
	testl	%edx, %edx
	leal	7(%edx), %eax
	cmovns	%edx, %eax
	leal	32(%ebx), %edx
	subl	%ebp, %edx
	sarl	$3, %eax
	movw	%ax, 28(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movzwl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 32(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 37(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movb	$0, 36(%ebx)
	movl	%edx, %eax
	addl	$1, _spritechanged(,%edi,4)
	movl	8(%esp), %edi
	mull	%ecx
	addl	$1, _spritechanged(,%esi,4)
	movl	12(%esp), %ecx
	movl	$216, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$9, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L362
	cmpl	$-1, 32(%eax)
	je	L364
L365:
	movzwl	16(%esp), %esi
	movw	%si, 48(%eax)
L362:
	movl	16(%esp), %eax
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
L364:
	.cfi_restore_state
	testb	$16, 28(%eax)
	jne	L365
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	movl	16(%esp), %eax
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
LFE49:
	.p2align 4
	.globl	__Z14SetPlayerQuakeP12PLAYERstruct
	.def	__Z14SetPlayerQuakeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14SetPlayerQuakeP12PLAYERstruct:
LFB51:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %eax
	movl	$40000, 24(%esp)
	movl	$8, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	268(%eax), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z8SetQuakeP12PLAYERstructss
	.def	__Z8SetQuakeP12PLAYERstructss;	.scl	2;	.type	32;	.endef
__Z8SetQuakeP12PLAYERstructss:
LFB53:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	40(%esp), %edx
	movl	32(%esp), %eax
	movl	$30000, 24(%esp)
	movl	%edx, 20(%esp)
	movswl	36(%esp), %edx
	movl	%edx, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	268(%eax), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z11SetExpQuakes
	.def	__Z11SetExpQuakes;	.scl	2;	.type	32;	.endef
__Z11SetExpQuakes:
LFB54:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
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
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z11SetGunQuakes
	.def	__Z11SetGunQuakes;	.scl	2;	.type	32;	.endef
__Z11SetGunQuakes:
LFB55:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	$40000, 24(%esp)
	movl	$8, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
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
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE55:
	.p2align 4
	.globl	__Z15SetNuclearQuakes
	.def	__Z15SetNuclearQuakes;	.scl	2;	.type	32;	.endef
__Z15SetNuclearQuakes:
LFB56:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	$64000, 24(%esp)
	movl	$8, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	$400, 16(%esp)
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
LFE56:
	.p2align 4
	.globl	__Z12SetSumoQuakes
	.def	__Z12SetSumoQuakes;	.scl	2;	.type	32;	.endef
__Z12SetSumoQuakes:
LFB57:
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
LFE57:
	.p2align 4
	.globl	__Z16SetSumoFartQuakes
	.def	__Z16SetSumoFartQuakes;	.scl	2;	.type	32;	.endef
__Z16SetSumoFartQuakes:
LFB58:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movswl	32(%esp), %eax
	movl	$4000, 24(%esp)
	movl	$4, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
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
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z16ProcessQuakeSpotv
	.def	__Z16ProcessQuakeSpotv;	.scl	2;	.type	32;	.endef
__Z16ProcessQuakeSpotv:
LFB59:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movzwl	_headspritestat+182, %ebp
	cmpw	$-1, %bp
	je	L384
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L385
	.p2align 6
	.p2align 4,,10
	.p2align 3
L387:
	cmpw	$-1, %bp
	je	L405
L385:
	movswl	%bp, %ebx
	movl	_sprite, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %ebp
	movl	%ebx, %esi
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	cmpw	$0, 34(%ebx)
	je	L387
	testb	$1, 43(%ebx)
	jne	L387
	leal	22(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	leal	1(%eax), %edi
	addl	$2, %eax
	movl	%edi, _spritechanged(,%edx,4)
	movzwl	22(%ebx), %edi
	movl	%eax, _spritechanged(,%edx,4)
	subl	$12, %edi
	movw	%di, 22(%ebx)
	movl	_spritechanged(,%edx,4), %edi
	leal	1(%edi), %eax
	movl	%edi, 4(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	cmpw	$0, 22(%ebx)
	jns	L387
	movswl	34(%ebx), %eax
	leal	(%eax,%eax,4), %edi
	movswl	32(%ebx), %eax
	leal	(%eax,%edi,2), %eax
	movl	4(%esp), %edi
	imull	$120, %eax, %eax
	addl	$2, %edi
	movl	%edi, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	movw	%ax, 22(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	31(%ebx), %ecx
	testl	%ecx, %ecx
	je	L388
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$127, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L389
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$22, %edx
L389:
	cmpl	%edx, %ecx
	jle	L387
L388:
	movl	%ebx, (%esp)
	call	__Z17CopyQuakeSpotToOnP12spritetypev7
	testb	$-128, 42(%ebx)
	je	L387
	movswl	%si, %eax
	call	__Z18DeleteNoSoundOwners
	movswl	%si, %eax
	call	__Z10KillSprites
	cmpw	$-1, %bp
	jne	L385
	.p2align 4
	.p2align 3
L405:
	movl	8(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
L384:
	movl	20(%esp), %ebp
	addl	$24, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z11SetupRippers
	.def	__Z11SetupRippers;	.scl	2;	.type	32;	.endef
__Z11SetupRippers:
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
	movswl	40(%esp), %edi
	imull	$44, %edi, %ebx
	addl	_sprite, %ebx
	testb	$16, 13(%ebx)
	je	L407
	movl	_User(,%edi,4), %esi
	movl	%esi, %eax
L408:
	testl	%eax, %eax
	je	L409
	movl	$0, 76(%eax)
	movl	$_s_RipperRun, 24(%eax)
	movl	$_s_RipperRun, 16(%eax)
	movswl	_s_RipperRun, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L409
	andl	$63, %eax
	movb	%al, 3(%edx)
L409:
	movl	$_RipperAttrib, 48(%esi)
	movl	$-1171354717, %ebp
	movl	$3, 4(%esp)
	movl	%edi, (%esp)
	call	__Z15DoActorSetSpeedsh
	leal	20(%ebx), %eax
	leal	21(%ebx), %ecx
	movl	$_s_RipperDie, 28(%esi)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	movl	$_sg_RipperRun, 20(%esi)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 20(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 21(%ebx)
	cmpb	$7, 17(%ebx)
	je	L420
	movl	$_RipperPersonality, 8(%esp)
	movl	$_RipperActionSet, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
L412:
	orl	$16777216, 68(%esi)
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
L420:
	.cfi_restore_state
	movl	%edi, (%esp)
	movl	$_RipperPersonality, 8(%esp)
	movl	$_RipperBrownActionSet, 4(%esp)
	movl	%ecx, 16(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %edi
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	subl	%edi, %ecx
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	movb	$106, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$90, 21(%ebx)
	testb	$16, 13(%ebx)
	jne	L411
	movl	$500, %eax
	movw	%ax, 84(%esi)
L411:
	leal	18(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addb	$32, 18(%ebx)
	jmp	L412
	.p2align 4,,10
	.p2align 3
L407:
	movl	$1580, %edx
	movl	$_s_RipperRun, %ecx
	movl	%edi, %eax
	call	__Z9SpawnUserssP11STATEstruct
	movl	$35, %edx
	movl	%eax, _User(,%edi,4)
	movl	%eax, %esi
	movw	%dx, 84(%eax)
	movl	_User(,%edi,4), %eax
	jmp	L408
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z19PlayerSpawnPositionP12PLAYERstruct
	.def	__Z19PlayerSpawnPositionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19PlayerSpawnPositionP12PLAYERstruct:
LFB62:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movzbl	_SW_GameFlags, %ecx
	movl	%ecx, %eax
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%edx, %edx
	xorl	%eax, %eax
	andl	$4, %edx
	addl	$4, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L424:
	cmpb	$0, _SpawnPositionUsed(%eax)
	je	L456
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L424
	movl	%ebp, %eax
	subl	$_Player, %eax
	sarl	$2, %eax
	imulw	$10095, %ax, %dx
	movzwl	_gNet+12, %eax
	cmpw	$3, %ax
	je	L425
L459:
	jg	L426
	testw	%ax, %ax
	jne	L457
	leal	36(%esp), %ebx
	movswl	_headspritestat+1200, %eax
	movl	_sprite, %edi
	movswl	%dx, %esi
	movl	%ebx, 20(%esp)
L431:
	movb	$1, _SpawnPositionUsed(%esi)
	testw	%ax, %ax
	jns	L455
	movswl	_headspritestat+1200, %eax
L455:
	imull	$44, %eax, %eax
	addl	%edi, %eax
L430:
	movl	(%eax), %ecx
	movl	20(%esp), %esi
	movl	%ecx, 0(%ebp)
	movl	%ecx, 12(%ebp)
	movl	4(%eax), %ebx
	movl	%ebx, 16(%ebp)
	movl	%ebx, 4(%ebp)
	movl	8(%eax), %edx
	movl	%edx, 20(%ebp)
	movl	%edx, 8(%ebp)
	movswl	28(%eax), %edx
	sall	$16, %edx
	movl	%edx, 28(%ebp)
	movl	%edx, 300(%ebp)
	movl	%edx, 308(%ebp)
	movswl	24(%eax), %eax
	leal	32(%esp), %edx
	movw	%ax, 268(%ebp)
	movl	%edx, 12(%esp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	movl	%esi, 16(%esp)
	leal	(%eax,%edx,8), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	call	_getzsofslopeptr
	movl	36(%esp), %eax
	leal	-14847(%eax), %edx
	cmpl	8(%ebp), %edx
	jg	L421
	subl	$14848, %eax
	movl	%eax, 20(%ebp)
	movl	%eax, 8(%ebp)
L421:
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
L457:
	.cfi_restore_state
	cmpw	$1, %ax
	je	L428
L429:
	movswl	%dx, %eax
	leal	36(%esp), %esi
	movb	$1, _SpawnPositionUsed(%eax)
	movl	_sprite, %eax
	movl	%esi, 20(%esp)
	jmp	L430
	.p2align 4,,10
	.p2align 3
L426:
	cmpw	$4, %ax
	jne	L429
L428:
	testb	$2, 22968(%ebp)
	jne	L458
	movswl	%dx, %esi
	leal	36(%esp), %ebx
	movl	_sprite, %edi
	movl	%ebx, 20(%esp)
	movswl	_headspritestat+1200(%esi,%esi), %eax
	jmp	L431
	.p2align 4,,10
	.p2align 3
L456:
	movl	%eax, %edx
	movzwl	_gNet+12, %eax
	cmpw	$3, %ax
	jne	L459
L425:
	movswl	%dx, %esi
	leal	36(%esp), %ebx
	movl	_sprite, %edi
	movl	%ebx, 20(%esp)
	movswl	_headspritestat+1220(%esi,%esi), %eax
	jmp	L431
L458:
	leal	36(%esp), %eax
	movl	%eax, 20(%esp)
L432:
	andl	$1, %ecx
	cmpb	$1, %cl
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	call	__Z11RandomRangei
	movl	_sprite, %esi
	movswl	%ax, %ebx
	leal	600(%ebx), %edi
	movswl	_headspritestat(%edi,%edi), %eax
	testw	%ax, %ax
	js	L434
	movl	_connecthead, %ecx
	cmpw	$-1, %cx
	je	L435
	imull	$44, %eax, %eax
	movl	%ebx, 24(%esp)
	movl	%edi, 28(%esp)
	movswl	%cx, %edi
	addl	%eax, %esi
	.p2align 4
	.p2align 3
L439:
	imull	$24124, %edi, %edx
	leal	_Player(%edx), %eax
	cmpl	%eax, %ebp
	je	L436
	movl	8(%esi), %ebx
	movl	4(%esi), %ecx
	movl	(%esi), %eax
	subl	_Player+8(%edx), %ebx
	subl	_Player+4(%edx), %ecx
	subl	_Player(%edx), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 36(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	cmpl	%ecx, %edx
	jge	L437
	movl	20(%esp), %eax
	leal	40(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edx
	movl	44(%esp), %eax
L437:
	cmpl	%eax, %edx
	jge	L438
	movl	20(%esp), %eax
	leal	44(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	44(%esp), %eax
	movl	36(%esp), %edx
L438:
	movl	%edx, %ecx
	addl	40(%esp), %eax
	sarl	$4, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%eax, %edx
	cmpl	$999, %edx
	jle	L460
L436:
	movl	_connectpoint2(,%edi,4), %eax
	movswl	%ax, %edi
	cmpw	$-1, %ax
	jne	L439
	movl	28(%esp), %ebx
	movl	24(%esp), %esi
	movl	_sprite, %edi
	movswl	_headspritestat(%ebx,%ebx), %eax
	jmp	L431
	.p2align 4,,10
	.p2align 3
L460:
	movzbl	_SW_GameFlags, %ecx
	jmp	L432
L434:
	movl	%esi, %edi
	movswl	_headspritestat+1200, %eax
	xorl	%esi, %esi
	jmp	L431
L435:
	movb	$1, _SpawnPositionUsed(%ebx)
	movl	%esi, %edi
	jmp	L455
	.cfi_endproc
LFE62:
	.p2align 4
	.def	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z22DoPlayerDeathCheckKeysP12PLAYERstruct:
LFB66:
	.cfi_startproc
	movl	416(%eax), %edx
	testl	%edx, %edx
	js	L488
	ret
	.p2align 4,,10
	.p2align 3
L488:
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
	subl	$40, %esp
	movl	352(%eax), %eax
	movl	%eax, 28(%esp)
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %edi
	movl	%edi, 36(%esp)
	movl	136(%ebx), %edi
	leal	-14848(%edi), %edx
	cmpl	8(%ebx), %edx
	jl	L463
	movl	$-1, %ecx
	movl	$1, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	348(%ebx), %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	348(%ebx), %eax
	call	__Z14InitBloodSprayshs.isra.0
L464:
	movl	$40, %edx
	movl	%ebx, %eax
	call	__Z14pClearTextLineP12PLAYERstructl
	movl	%ebx, %eax
	call	__Z19PlayerSpawnPositionP12PLAYERstruct
	movl	36(%esp), %edi
	movl	40(%edi), %eax
	movl	(%eax), %edx
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	16(%edi), %eax
	movl	352(%ebx), %esi
	movl	%edi, 36(%esp)
	movl	_sprite, %ecx
	movl	$-1171354717, %edi
	movzwl	(%eax), %eax
	leal	14(%esi), %edx
	subl	%ecx, %edx
	movw	%ax, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	movzwl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 14(%esi)
	movl	352(%ebx), %esi
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$47, 21(%esi)
	movl	352(%ebx), %esi
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$47, 20(%esi)
	movl	352(%ebx), %esi
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%esi)
	movl	352(%ebx), %esi
	movl	(%ebx), %eax
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, (%esi)
	movl	352(%ebx), %ecx
	movl	4(%ebx), %esi
	leal	4(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, 4(%ecx)
	movl	352(%ebx), %esi
	movl	8(%ebx), %eax
	leal	8(%esi), %edx
	subl	_sprite, %edx
	leal	14848(%eax), %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%esi)
	movl	300(%ebx), %eax
	movl	352(%ebx), %ecx
	movl	%eax, %esi
	movl	%eax, 32(%esp)
	sarl	$31, %esi
	leal	28(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	xorw	%si, %si
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%eax,%esi), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movw	%ax, 28(%ecx)
	movl	352(%ebx), %eax
	call	__Z23DoSpawnTeleporterEffectP12spritetypev7
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$207, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebx, %eax
	call	__Z14DoPlayerZrangeP12PLAYERstruct
	movl	28(%esp), %esi
	movl	_sprite, %ecx
	movl	$0, 22980(%ebx)
	andl	$2147479517, 22968(%ebx)
	leal	12(%esi), %edx
	movl	$0, 100(%ebx)
	subl	%ecx, %edx
	movl	$0, 104(%ebx)
	movl	$0, 22984(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-129, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	orw	$257, 12(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movb	$47, 20(%esi)
	movl	$4096, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$6553600, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$33, 21(%esi)
	movl	%eax, 288(%ebx)
	movl	%eax, 292(%ebx)
	movl	%ebx, %eax
	movl	$6553600, 304(%ebx)
	movl	$0, 200(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	movl	$0, 228(%ebx)
	andl	$-129, 22968(%ebx)
	movl	36(%esp), %edi
	movw	%cx, 82(%edi)
	call	__Z16PlayerDeathResetP12PLAYERstruct
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	cmpl	%eax, %ebx
	je	L489
L469:
	xorl	%edx, %edx
	movb	$0, 23302(%ebx)
	movl	%ebx, %eax
	movw	%dx, 23300(%ebx)
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	cmpl	$1, _numplayers
	jg	L490
	cmpb	$0, _DemoMode
	jne	L491
	movb	$1, _ExitLevel
L473:
	cmpb	$0, _Prediction
	jne	L461
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %ebx
	movswl	196(%ebx), %eax
	testw	%ax, %ax
	js	L475
	movl	%eax, (%esp)
	call	__Z10SetSuicides
L475:
	movl	$-2, %eax
	movw	%ax, 196(%ebx)
L461:
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
L491:
	.cfi_restore_state
	movb	$1, _DemoDone
	jmp	L473
	.p2align 4,,10
	.p2align 3
L490:
	movl	%ebx, (%esp)
	call	__Z16DoPlayerBeginRunP12PLAYERstruct
	jmp	L473
	.p2align 4,,10
	.p2align 3
L463:
	movzwl	23234(%ebx), %edx
	testw	%dx, %dx
	je	L477
	cmpw	$3, %dx
	jne	L464
L477:
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	_sector, %ecx
	movswl	24(%eax), %edx
	movl	%eax, %esi
	leal	(%edx,%edx,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	38(%eax), %ecx
	movl	%ecx, %eax
	andw	$3072, %ax
	subw	$1024, %ax
	testw	$-2048, %ax
	je	L464
	testw	$4160, %cx
	jne	L464
	movswl	_LoWangsQueueHead, %eax
	movswl	_LoWangsQueue(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L492
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_setspritez
	movswl	_LoWangsQueueHead, %eax
	movzwl	_LoWangsQueue(%eax,%eax), %eax
L467:
	movswl	%ax, %ecx
	movl	_sprite, %edx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %edi
	movl	%edi, 24(%esp)
	leal	(%edx,%eax), %edi
	leal	30(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 30(%edi)
	leal	12(%edi), %eax
	movl	%eax, 32(%esp)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%ax, 12(%edi)
	movzbl	20(%esi), %eax
	movb	%al, 20(%edi)
	movzbl	21(%esi), %eax
	movb	%al, 21(%edi)
	movzbl	16(%esi), %eax
	movb	%al, 16(%edi)
	movzbl	17(%esi), %eax
	movl	24(%esp), %esi
	movb	%al, 17(%edi)
	movb	%al, 262(%esi)
	movl	%ecx, %eax
	call	__Z18change_sprite_statss
	movl	_sprite, %esi
	movl	32(%esp), %ecx
	movl	$-1171354717, %eax
	subl	%esi, %ecx
	mull	%ecx
	movl	$-1171354717, %eax
	movl	%edx, %ecx
	leal	42(%edi), %edx
	subl	%esi, %edx
	shrl	$5, %ecx
	mull	%edx
	movzwl	_LoWangsQueueHead, %eax
	addl	$1, _spritechanged(,%ecx,4)
	orw	$16640, 12(%edi)
	addl	$1, %eax
	shrl	$5, %edx
	andl	$15, %eax
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, _LoWangsQueueHead
	orw	$8192, 42(%edi)
	addl	$1, _spritechanged(,%ecx,4)
	orw	$256, 12(%edi)
	jmp	L464
	.p2align 4,,10
	.p2align 3
L489:
	cmpl	$2, _rendmode
	jg	L470
	movzbl	_gs+13, %esi
	movl	$_palette_data, %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	movzbl	%al, %eax
	call	_videoSetPalette
L471:
	leal	23304(%ebx), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	jmp	L469
	.p2align 4,,10
	.p2align 3
L470:
	call	_videoFadePalette.constprop.0
	jmp	L471
	.p2align 4,,10
	.p2align 3
L492:
	movswl	14(%esi), %eax
	movl	$0, 20(%esp)
	movswl	28(%esi), %ecx
	movl	%ecx, 16(%esp)
	movl	8(%esi), %ecx
	movl	%ecx, 12(%esp)
	movl	4(%esi), %ecx
	movl	%ecx, 8(%esp)
	movl	(%esi), %ecx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	$37, %eax
	movl	%ecx, 4(%esp)
	movl	$_s_DeadLoWang, %ecx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	_LoWangsQueueHead, %edx
	movw	%ax, _LoWangsQueue(%edx,%edx)
	jmp	L467
	.cfi_endproc
LFE66:
	.p2align 4
	.globl	__Z17DoPlayerDeathFlipP12PLAYERstruct
	.def	__Z17DoPlayerDeathFlipP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z17DoPlayerDeathFlipP12PLAYERstruct:
LFB73:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	cmpb	$0, _Prediction
	je	L519
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L519:
	.cfi_restore_state
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoFindGrounds
	movl	4(%esp), %edx
	movl	108(%edx), %eax
	movl	%eax, 136(%ebx)
	movl	128(%edx), %eax
	movl	%eax, 160(%ebx)
	movl	120(%edx), %eax
	movl	%eax, 152(%ebx)
	movl	22968(%ebx), %eax
	testb	$12, %al
	je	L495
	testb	$4, %al
	jne	L520
L496:
	testb	$8, %al
	jne	L521
L501:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L495:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z25DoPlayerDeathFollowKillerP12PLAYERstruct
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L521:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	__Z17DoPlayerDeathFallP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$10813440, %eax
	jle	L502
	subl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813440, %eax
	jg	L503
L504:
	movl	$10813440, 288(%ebx)
	movl	$10813440, %eax
L503:
	movl	%eax, 304(%ebx)
	cmpb	$0, _MoveSkip2
	jne	L501
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z6DoFalls
	jmp	L501
	.p2align 4,,10
	.p2align 3
L520:
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathJumpP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$10813440, %eax
	jle	L497
	subl	$131072, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813440, %eax
	jle	L499
L498:
	movl	%eax, 304(%ebx)
	cmpb	$0, _MoveSkip2
	je	L500
L518:
	movl	22968(%ebx), %eax
	jmp	L496
	.p2align 4,,10
	.p2align 3
L497:
	je	L498
	addl	$131072, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813439, %eax
	jle	L498
L499:
	movl	$10813440, 288(%ebx)
	movl	$10813440, %eax
	jmp	L498
	.p2align 4,,10
	.p2align 3
L502:
	je	L503
	addl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813439, %eax
	jg	L504
	jmp	L503
	.p2align 4,,10
	.p2align 3
L500:
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z6DoJumps
	jmp	L518
	.cfi_endproc
LFE73:
	.p2align 4
	.def	__Z18DoPlayerDeathDrownP12PLAYERstruct;	.scl	3;	.type	32;	.endef
__Z18DoPlayerDeathDrownP12PLAYERstruct:
LFB76:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	20(%esp), %ebx
	cmpb	$0, _Prediction
	je	L545
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L545:
	.cfi_restore_state
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movswl	348(%ebx), %eax
	movl	352(%ebx), %esi
	movl	_User(,%eax,4), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	__Z12DoFindGrounds
	movl	4(%esp), %edx
	movl	108(%edx), %eax
	movl	%eax, 136(%ebx)
	movl	128(%edx), %eax
	movl	%eax, 160(%ebx)
	movl	120(%edx), %eax
	movl	%eax, 152(%ebx)
	movl	22968(%ebx), %eax
	testb	$12, %al
	je	L524
	testb	$4, %al
	jne	L546
L525:
	testb	$8, %al
	je	L524
	movl	8(%ebx), %eax
	addl	$512, %eax
	movl	%eax, 8(%ebx)
	cmpb	$0, _MoveSkip2
	jne	L530
	movl	$-1171354717, %eax
	leal	8(%esi), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	$1024, 8(%esi)
	movl	8(%ebx), %eax
L530:
	movl	136(%ebx), %edx
	leal	-4095(%edx), %ecx
	cmpl	%eax, %ecx
	jg	L524
	subl	$4096, %edx
	andl	$-9, 22968(%ebx)
	movl	%edx, 8(%ebx)
L524:
	movl	%ebx, %eax
	call	__Z25DoPlayerDeathFollowKillerP12PLAYERstruct
	movl	12(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	%ebx, %eax
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L546:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathJumpP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$10813440, %eax
	jg	L547
	je	L527
	addl	$131072, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813439, %eax
	jle	L527
L528:
	movl	$10813440, 288(%ebx)
	movl	$10813440, %eax
L527:
	movl	%eax, 304(%ebx)
	cmpb	$0, _MoveSkip2
	je	L529
L544:
	movl	22968(%ebx), %eax
	jmp	L525
	.p2align 4,,10
	.p2align 3
L547:
	subl	$131072, %eax
	movl	%eax, 288(%ebx)
	cmpl	$10813440, %eax
	jg	L527
	jmp	L528
	.p2align 4,,10
	.p2align 3
L529:
	movswl	348(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z6DoJumps
	jmp	L544
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__Z20DoPlayerDeathCrumbleP12PLAYERstruct
	.def	__Z20DoPlayerDeathCrumbleP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z20DoPlayerDeathCrumbleP12PLAYERstruct:
LFB77:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	20(%esp), %ebx
	cmpb	$0, _Prediction
	je	L574
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L574:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movswl	348(%ebx), %eax
	movl	352(%ebx), %esi
	movl	_User(,%eax,4), %edi
	movl	%eax, (%esp)
	call	__Z12DoFindGrounds
	movl	108(%edi), %eax
	movl	%eax, 136(%ebx)
	movl	128(%edi), %eax
	movl	%eax, 160(%ebx)
	movl	120(%edi), %eax
	movl	%eax, 152(%ebx)
	movl	22968(%ebx), %eax
	testb	$12, %al
	je	L550
	testb	$4, %al
	jne	L575
	testb	$8, %al
	je	L559
L563:
	movl	%ebx, (%esp)
	call	__Z17DoPlayerDeathFallP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$3276800, %eax
	jle	L556
	subl	$196608, %eax
	movl	%eax, 288(%ebx)
	cmpl	$3276800, %eax
	jle	L558
L557:
	movl	%eax, 304(%ebx)
	movl	22968(%ebx), %eax
L555:
	testb	$12, %al
	jne	L559
	testb	$32, 71(%edi)
	je	L576
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_PlayerHead, %edx
	andw	$-258, 12(%esi)
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L561
	.p2align 4,,10
	.p2align 3
L559:
	movl	%ebx, %eax
	call	__Z21DoPlayerDeathMoveHeadP12PLAYERstruct
L561:
	movl	%ebx, %eax
	call	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct
	movl	8(%ebx), %eax
	leal	8(%esi), %edx
	subl	_sprite, %edx
	leal	1792(%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_sector, %edx
	movl	%ecx, 8(%esi)
	movswl	268(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$1, 38(%eax)
	jne	L577
	xorl	%eax, %eax
	movw	%ax, 380(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L556:
	.cfi_restore_state
	je	L557
	addl	$196608, %eax
	movl	%eax, 288(%ebx)
	cmpl	$3276799, %eax
	jle	L557
L558:
	movl	$3276800, 288(%ebx)
	movl	$3276800, %eax
	jmp	L557
	.p2align 4,,10
	.p2align 3
L550:
	movl	%ebx, %eax
	call	__Z22DoPlayerDeathCheckKickP12PLAYERstruct.isra.0
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathHurlP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z25DoPlayerDeathFollowKillerP12PLAYERstruct
	jmp	L561
	.p2align 4,,10
	.p2align 3
L577:
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	$1024, %ecx
	movl	4(%esp), %ebx
	movl	$2048, %edx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	.p2align 4,,10
	.p2align 3
L575:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathJumpP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$9830400, %eax
	jle	L552
	subl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830400, %eax
	jg	L553
L554:
	movl	$9830400, 288(%ebx)
	movl	$9830400, %eax
L553:
	movl	%eax, 304(%ebx)
	movl	22968(%ebx), %eax
	testb	$8, %al
	je	L555
	jmp	L563
	.p2align 4,,10
	.p2align 3
L576:
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z19DoPlayerDeathBounceP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L552:
	.cfi_restore_state
	je	L553
	addl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830399, %eax
	jg	L554
	jmp	L553
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	__Z20DoPlayerDeathExplodeP12PLAYERstruct
	.def	__Z20DoPlayerDeathExplodeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z20DoPlayerDeathExplodeP12PLAYERstruct:
LFB80:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -16
	movl	20(%esp), %ebx
	cmpb	$0, _Prediction
	je	L604
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L604:
	.cfi_restore_state
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movswl	348(%ebx), %eax
	movl	352(%ebx), %esi
	movl	_User(,%eax,4), %edi
	movl	%eax, (%esp)
	call	__Z12DoFindGrounds
	movl	108(%edi), %eax
	movl	%eax, 136(%ebx)
	movl	128(%edi), %eax
	movl	%eax, 160(%ebx)
	movl	120(%edi), %eax
	movl	%eax, 152(%ebx)
	movl	22968(%ebx), %eax
	testb	$12, %al
	je	L580
	testb	$4, %al
	jne	L605
	testb	$8, %al
	je	L589
L593:
	movl	%ebx, (%esp)
	call	__Z17DoPlayerDeathFallP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$9830400, %eax
	jle	L586
	subl	$196608, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830400, %eax
	jle	L588
L587:
	movl	%eax, 304(%ebx)
	movl	22968(%ebx), %eax
L585:
	testb	$12, %al
	jne	L589
	testb	$32, 71(%edi)
	je	L606
	leal	12(%esi), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_PlayerHead, %edx
	andw	$-258, 12(%esi)
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L591
	.p2align 4,,10
	.p2align 3
L589:
	movl	%ebx, %eax
	call	__Z21DoPlayerDeathMoveHeadP12PLAYERstruct
L591:
	movl	%ebx, %eax
	call	__Z22DoPlayerDeathCheckKeysP12PLAYERstruct
	movl	8(%ebx), %eax
	leal	8(%esi), %edx
	subl	_sprite, %edx
	leal	1792(%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	_sector, %edx
	movl	%ecx, 8(%esi)
	movswl	268(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$1, 38(%eax)
	jne	L607
	xorl	%eax, %eax
	movw	%ax, 380(%ebx)
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L586:
	.cfi_restore_state
	je	L587
	addl	$196608, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830399, %eax
	jle	L587
L588:
	movl	$9830400, 288(%ebx)
	movl	$9830400, %eax
	jmp	L587
	.p2align 4,,10
	.p2align 3
L580:
	movl	%ebx, %eax
	call	__Z22DoPlayerDeathCheckKickP12PLAYERstruct.isra.0
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathHurlP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z25DoPlayerDeathFollowKillerP12PLAYERstruct
	jmp	L591
	.p2align 4,,10
	.p2align 3
L607:
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	$1024, %ecx
	movl	4(%esp), %ebx
	movl	$2048, %edx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0
	.p2align 4,,10
	.p2align 3
L605:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z17DoPlayerDeathJumpP12PLAYERstruct
	movl	288(%ebx), %eax
	cmpl	$9830400, %eax
	jle	L582
	subl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830400, %eax
	jg	L583
L584:
	movl	$9830400, 288(%ebx)
	movl	$9830400, %eax
L583:
	movl	%eax, 304(%ebx)
	movl	22968(%ebx), %eax
	testb	$8, %al
	je	L585
	jmp	L593
	.p2align 4,,10
	.p2align 3
L606:
	movl	8(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	4(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z19DoPlayerDeathBounceP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L582:
	.cfi_restore_state
	je	L583
	addl	$262144, %eax
	movl	%eax, 288(%ebx)
	cmpl	$9830399, %eax
	jg	L584
	jmp	L583
	.cfi_endproc
LFE80:
	.p2align 4
	.globl	__Z14PlayerOnLadderP12PLAYERstruct.part.0
	.def	__Z14PlayerOnLadderP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z14PlayerOnLadderP12PLAYERstruct.part.0:
LFB81:
	.cfi_startproc
	subl	$108, %esp
	.cfi_def_cfa_offset 112
	movl	%ebx, 92(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	64(%esp), %ecx
	movl	%esi, 96(%esp)
	movl	%edi, 100(%esp)
	movl	300(%eax), %edx
	movl	%ecx, 32(%esp)
	leal	52(%esp), %ecx
	movl	%edx, %eax
	movl	%ecx, 28(%esp)
	leal	54(%esp), %ecx
	sarl	$31, %eax
	movl	%ecx, 24(%esp)
	leal	56(%esp), %ecx
	xorw	%ax, %ax
	movl	%ecx, 20(%esp)
	leal	32768(%edx,%eax), %edx
	movl	$0, 44(%esp)
	testl	%edx, %edx
	leal	65535(%edx), %eax
	movl	$3, 40(%esp)
	cmovns	%edx, %eax
	movl	$1792, 36(%esp)
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	call	_neartag.constprop.0
	movl	300(%ebx), %ecx
	movl	192(%ebx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	xorw	%dx, %dx
	leal	32768(%ecx,%edx), %edx
	testl	%edx, %edx
	leal	65535(%edx), %esi
	cmovns	%edx, %esi
	sarl	$16, %esi
	leal	512(%esi), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
/APP
 # 4706 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	andl	$2047, %esi
	movl	%eax, %edi
	movl	196(%ebx), %eax
	movswl	_sintable(%esi,%esi), %edx
/APP
 # 4706 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%edi, %eax
	js	L611
	movswl	54(%esp), %eax
	testw	%ax, %ax
	js	L611
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$305, 26(%eax)
	jne	L611
	movl	%ebp, 104(%esp)
	.cfi_offset 5, -8
	movl	4(%ebx), %ebp
	movl	$__ZZ14PlayerOnLadderP12PLAYERstructE6angles, %edi
	movl	%ecx, %esi
	movl	(%ebx), %edx
L619:
	movl	%esi, %eax
	movzwl	(%edi), %ecx
	movl	$0, 44(%esp)
	sarl	$31, %eax
	movl	$3, 40(%esp)
	xorw	%ax, %ax
	movl	$600, 36(%esp)
	movl	%eax, 48(%esp)
	leal	68(%esp), %eax
	movl	%eax, 32(%esp)
	leal	58(%esp), %eax
	movl	%eax, 28(%esp)
	leal	60(%esp), %eax
	movl	%eax, 24(%esp)
	leal	62(%esp), %eax
	movl	%eax, 20(%esp)
	movl	48(%esp), %eax
	movl	%ecx, 48(%esp)
	leal	32768(%esi,%eax), %esi
	testl	%esi, %esi
	leal	65535(%esi), %eax
	cmovns	%esi, %eax
	sarl	$16, %eax
	addl	%ecx, %eax
	andl	$2047, %eax
	movl	%eax, 16(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	movl	%ebp, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_neartag.constprop.0
	movswl	60(%esp), %esi
	testw	%si, %si
	js	L635
	cmpl	$99, 68(%esp)
	jle	L635
	movl	_wall, %eax
	sall	$5, %esi
	cmpw	$305, 26(%eax,%esi)
	jne	L635
	movl	300(%ebx), %edx
	movswl	48(%esp), %ecx
	leal	72(%esp), %ebp
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	4(%ebx), %edx
	sarl	$16, %eax
	addl	%ecx, %eax
	movl	8(%ebx), %ecx
	movl	%ebp, 16(%esp)
	movl	%eax, %ebp
	movl	$0, 12(%esp)
	addl	$512, %eax
	andl	$2047, %ebp
	andl	$2047, %eax
	movswl	_sintable(%ebp,%ebp), %ebp
	movl	%ebp, 8(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	(%ebx), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movl	(%ebx), %edx
	movl	4(%ebx), %ebp
	movl	%edx, %ecx
	movl	%ebp, %eax
	subl	72(%esp), %ecx
	subl	76(%esp), %eax
	imull	%eax, %eax
	movl	%edx, 48(%esp)
	imull	%ecx, %ecx
	addl	%eax, %ecx
	call	@ksqrt@4
	movswl	84(%esp), %eax
	movl	48(%esp), %edx
	testw	%ax, %ax
	js	L616
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movzwl	12(%eax), %eax
	andl	$17, %eax
	cmpw	$1, %ax
	je	L635
L617:
	addl	$2, %edi
	cmpl	$__ZZ14PlayerOnLadderP12PLAYERstructE6angles+4, %edi
	jne	L636
	movl	352(%ebx), %eax
	movl	$53, %edx
	call	__Z14FindNearSpriteP12spritetypev7s
	movl	%eax, %edi
	testl	%eax, %eax
	je	L635
	movzwl	28(%eax), %eax
	movl	_wall, %ebp
	leal	512(%eax), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %ecx
	movl	%eax, %edx
	addw	$1024, %ax
	andl	$2047, %edx
	andw	$2047, %ax
	movswl	_sintable(%edx,%edx), %edx
	imull	$100, %ecx, %ecx
	movw	%ax, 364(%ebx)
	sall	$16, %eax
	movzwl	12(%ebp,%esi), %esi
	imull	$100, %edx, %edx
	sarl	$14, %ecx
	movw	%si, 362(%ebx)
	leal	(%ecx,%ecx,4), %ecx
	addl	(%edi), %ecx
	sarl	$14, %edx
	movl	%ecx, 368(%ebx)
	leal	(%edx,%edx,4), %edx
	addl	4(%edi), %edx
	movl	%eax, 300(%ebx)
	movl	%eax, 308(%ebx)
	movl	$1, %eax
	movl	%edx, 372(%ebx)
	movl	104(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	movl	100(%esp), %edi
	addl	$108, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L616:
	.cfi_restore_state
	movswl	86(%esp), %eax
	testw	%ax, %ax
	js	L617
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$305, 26(%eax)
	je	L617
	.p2align 4
	.p2align 3
L635:
	movl	104(%esp), %ebp
	.cfi_restore 5
L611:
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	xorl	%eax, %eax
	movl	100(%esp), %edi
	addl	$108, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L636:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	300(%ebx), %esi
	jmp	L619
	.cfi_endproc
LFE81:
	.p2align 4
	.globl	__Z11DoPlayerRunP12PLAYERstruct
	.def	__Z11DoPlayerRunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11DoPlayerRunP12PLAYERstruct:
LFB82:
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
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movswl	268(%ebx), %eax
	testw	%ax, %ax
	js	L638
	movl	_sector, %ecx
	movswl	%ax, %edx
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	testb	$3, 39(%edx)
	jne	L729
L638:
	movswl	348(%ebx), %ecx
	movl	_User(,%ecx,4), %edi
	movl	%edi, 32(%esp)
	movl	136(%ebx), %edi
	movl	%edi, %edx
	subl	132(%ebx), %edx
	addl	$17407, %edx
	cmpl	$34814, %edx
	jbe	L725
	movl	416(%ebx), %esi
	testl	$1048576, %esi
	jne	L725
	movl	22976(%ebx), %edx
	testl	$524288, %esi
	je	L641
	testl	$524288, %edx
	jne	L730
	testl	$16384, %esi
	je	L643
L736:
	testb	$64, %dh
	jne	L731
L644:
	movl	_GodMode, %edi
	testl	%edi, %edi
	je	L645
	cmpb	$0, _InputMode
	jne	L645
	cmpb	$0, _keystatus+36
	je	L645
	movl	22968(%ebx), %eax
	movl	$7168, %edx
	orl	$6, 22972(%ebx)
	movl	%edx, 144(%ebx)
	movl	$_sg_PlayerNinjaFly, %edx
	andl	$-16397, %eax
	movb	$0, _keystatus+36
	orb	$8, %ah
	movl	$-2560, 120(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$2560, %eax
	movl	$55808, 208(%ebx)
	movl	%eax, 140(%ebx)
	movl	$__Z11DoPlayerFlyP12PLAYERstruct, 22964(%ebx)
	movl	$0, 112(%ebx)
	movl	$67108864, 380(%ebx)
	jmp	L727
	.p2align 4,,10
	.p2align 3
L725:
	movl	22968(%ebx), %eax
	movl	$7168, %edx
	orl	$6, 22972(%ebx)
	movl	$45056, 208(%ebx)
	andl	$-13, %eax
	movl	%edx, 144(%ebx)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%ebx)
	orb	$64, %ah
	movl	%eax, 22968(%ebx)
	movl	$3072, %eax
	movl	%eax, 140(%ebx)
	movl	32(%esp), %eax
	movl	40(%eax), %eax
L726:
	movl	16(%eax), %edx
L727:
	leal	-12(%ebp), %esp
	movl	%ecx, %eax
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
L645:
	.cfi_restore_state
	cmpb	$0, _DebugOperate
	je	L646
	testb	$2, 22968(%ebx)
	jne	L646
	cmpb	$0, _Prediction
	jne	L646
	andl	$262144, %esi
	movl	22976(%ebx), %edi
	je	L647
	testl	$262144, %edi
	je	L646
	testw	%ax, %ax
	js	L646
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movzwl	38(%eax), %eax
	testb	$2, %al
	jne	L732
	testb	$64, %ah
	je	L646
	movl	352(%ebx), %eax
	movl	$58, %edx
	call	__Z14FindNearSpriteP12spritetypev7s
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L646
	cmpw	$0, 32(%eax)
	jne	L646
	movl	%eax, 48(%ebx)
	movl	%edi, %eax
	movl	$44, %esi
	xorl	%edx, %edx
	andl	$-262145, %eax
	movl	%eax, 22976(%ebx)
	leal	36(%ecx), %eax
	subl	_sprite, %eax
	divl	%esi
	addl	$1, _spritechanged(,%eax,4)
	movzbl	37(%ecx), %eax
	imull	$6028, %eax, %esi
	movl	%eax, 32(%esp)
	movl	352(%ebx), %eax
	addl	$_SectorObject, %esi
	movl	%esi, 22980(%ebx)
	movl	%esi, 104(%ebx)
	movl	%esi, 100(%ebx)
	movl	%eax, 172(%esi)
	movzwl	3204(%esi), %eax
	testw	%ax, %ax
	jg	L649
	cmpw	$-9999, %ax
	je	L649
	cmpb	$0, 23217(%ebx)
	je	L650
	movl	%ebx, %eax
	call	__Z21UseInventoryRepairKitP12PLAYERstruct
	movl	176(%esi), %eax
	xorl	%edx, %edx
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movzwl	86(%eax), %eax
	movw	%ax, 3204(%esi)
	movl	%esi, %eax
	call	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE
	andl	$-33554433, 596(%esi)
L649:
	movzwl	268(%ebx), %eax
	leal	268(%ebx), %edx
	movw	%ax, 30(%esp)
	imull	$6028, 32(%esp), %eax
	leal	_SectorObject(%eax), %ecx
	movswl	_SectorObject+3222(%eax), %eax
	movl	%ecx, 24(%esp)
	sall	$16, %eax
	movl	%eax, 300(%ebx)
	movl	%eax, 308(%ebx)
	movl	180(%ecx), %eax
	movl	%eax, (%ebx)
	movl	184(%ecx), %edi
	movl	%edi, 4(%ebx)
	movl	%edx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_updatesector
	leal	40(%esp), %eax
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	imull	$40, %eax, %eax
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	40(%esp), %eax
	movl	$1, %edx
	andl	$-16413, 22968(%ebx)
	leal	-14848(%eax), %edi
	movl	%ebx, %eax
	movl	%edi, 8(%ebx)
	call	__Z20DoPlayerOperateMatchP12PLAYERstructh
	movl	24(%esp), %ecx
	movswl	680(%ecx), %eax
	cmpw	$-1, %ax
	je	L652
	movl	_sprite, %edx
	jmp	L654
L653:
	movswl	682(%esi), %eax
	addl	$2, %esi
	cmpw	$-1, %ax
	je	L652
L654:
	imull	$44, %eax, %eax
	cmpw	$55, 26(%edx,%eax)
	jne	L653
	imull	$6028, 32(%esp), %eax
	orl	$2048, _SectorObject+596(%eax)
L652:
	xorl	%eax, %eax
	movlps	(%ebx), %xmm1
	xorps	%xmm0, %xmm0
	andl	$-129, 22968(%ebx)
	movl	%eax, 200(%ebx)
	movl	%eax, 192(%ebx)
	movl	%eax, 196(%ebx)
	movl	%eax, 212(%ebx)
	movl	%eax, 216(%ebx)
	movl	%eax, 228(%ebx)
	movl	268(%ebx), %eax
	movlps	%xmm1, 84(%ebx)
	movl	%eax, 52(%ebx)
	movl	8(%ebx), %eax
	movups	%xmm0, 60(%ebx)
	movl	%eax, 92(%ebx)
	xorl	%eax, %eax
	movl	%eax, 76(%ebx)
	movl	%eax, 80(%ebx)
	imull	$6028, 32(%esp), %eax
	movzwl	_SectorObject+3214(%eax), %eax
	cmpw	$98, %ax
	je	L655
	jg	L656
	subl	$96, %eax
	cmpw	$1, %ax
	ja	L637
	movl	104(%ebx), %eax
	movswl	3202(%eax), %eax
	cmpl	$0, 400(%ebx)
	je	L663
	movl	$2, %edx
	call	__Z11PlaySOsoundss
L664:
	movswl	348(%ebx), %eax
	movl	104(%ebx), %ecx
	movl	%edi, 8(%ebx)
	movl	$2560, %esi
	movl	$7168, %edi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ebx)
	movl	%edi, 144(%ebx)
	movl	$__Z21DoPlayerOperateTurretP12PLAYERstruct, 22964(%ebx)
	testb	$8, 597(%ecx)
	je	L665
L728:
	orl	$-2147483648, 22968(%ebx)
L665:
	movl	40(%edx), %edx
	movl	(%edx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L662:
	movzwl	30(%esp), %eax
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	%eax, %edx
	movl	%eax, %ecx
	sall	$16, %edx
	orl	%edx, %eax
	movl	%eax, 268(%ebx)
	movl	48(%ebx), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	4(%eax), %eax
	movl	%eax, 4(%ebx)
	movswl	%cx, %eax
	imull	$40, %eax, %eax
	addl	_sector, %eax
	movl	8(%eax), %eax
	movl	%esi, 212(%ebx)
	movl	%esi, 216(%ebx)
	subl	$14848, %eax
	movups	%xmm0, 192(%ebx)
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
L647:
	.cfi_restore_state
	orl	$262144, %edi
	movl	%edi, 22976(%ebx)
	.p2align 4
	.p2align 3
L646:
	movl	%ebx, %eax
	call	__Z11DoPlayerBobP12PLAYERstruct
	cmpw	$0, 378(%ebx)
	jne	L733
	cmpb	$0, _Prediction
	jne	L671
	movl	%ebx, %eax
	call	__Z14PlayerOnLadderP12PLAYERstruct.part.0
	testb	%al, %al
	jne	L734
L671:
	movl	%ebx, %eax
	call	__Z12DoPlayerMoveP12PLAYERstruct
	movl	32(%esp), %esi
	movl	20(%esi), %eax
	cmpl	$_sg_PlayerNinjaPunch, %eax
	je	L672
	cmpl	$_sg_PlayerNinjaSword, %eax
	je	L672
	movl	40(%esi), %edx
	testb	$-128, 22968(%ebx)
	je	L673
	movl	4(%edx), %edx
	cmpl	%edx, %eax
	je	L672
L724:
	movswl	348(%ebx), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
L672:
	movl	$14848, %edx
	movl	%ebx, %eax
	call	__Z14PlayerFallTestP12PLAYERstructi
	testb	%al, %al
	jne	L735
	movl	136(%ebx), %eax
	movl	_sector, %ecx
	leal	-14848(%eax), %edx
	movswl	268(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$64, 38(%eax)
	jne	L675
	movl	8(%ebx), %ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
L675:
	movl	%edx, 8(%ebx)
L637:
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
L641:
	.cfi_restore_state
	orl	$524288, %edx
	movl	%edx, 22976(%ebx)
	testl	$16384, %esi
	jne	L736
L643:
	orb	$64, %dh
	movl	%edx, 22976(%ebx)
	jmp	L644
	.p2align 4,,10
	.p2align 3
L729:
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
	jmp	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L733:
	.cfi_restore_state
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
	jmp	__Z17DoPlayerBeginWadeP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L673:
	.cfi_restore_state
	movl	(%edx), %edx
	cmpl	%edx, %eax
	jne	L724
	jmp	L672
	.p2align 4,,10
	.p2align 3
L730:
	subl	$14848, %edi
	andl	$-524289, %edx
	movl	%edx, 22976(%ebx)
	movl	%edi, 8(%ebx)
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
	jmp	__Z17DoPlayerBeginJumpP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L731:
	.cfi_restore_state
	movl	22968(%ebx), %eax
	andb	$-65, %dh
	movl	$3072, %esi
	movl	$7168, %edi
	movl	%edx, 22976(%ebx)
	movl	%eax, %edx
	andl	$-13, %eax
	orl	$16, %edx
	orl	$16400, %eax
	movl	%edx, 22968(%ebx)
	movl	_User(,%ecx,4), %edx
	orl	$6, 22972(%ebx)
	movl	%eax, 22968(%ebx)
	movl	$45056, 208(%ebx)
	movl	%esi, 140(%ebx)
	movl	%edi, 144(%ebx)
	movl	$__Z13DoPlayerCrawlP12PLAYERstruct, 22964(%ebx)
	movl	40(%edx), %eax
	jmp	L726
	.p2align 4,,10
	.p2align 3
L735:
	movl	$256, 112(%ebx)
	movl	%ebx, (%esp)
	call	__Z17DoPlayerBeginFallP12PLAYERstruct
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
	jmp	__Z12DoPlayerFallP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L734:
	.cfi_restore_state
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
	jmp	__Z18DoPlayerBeginClimbP12PLAYERstruct
L732:
	.cfi_restore_state
	movl	%edi, %eax
	andl	$-262145, %eax
	movl	%eax, 22976(%ebx)
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
	jmp	__Z20DoPlayerBeginOperateP12PLAYERstruct
L656:
	.cfi_restore_state
	cmpw	$99, %ax
	jne	L637
	movl	104(%ebx), %eax
	movzwl	396(%ebx), %edx
	orw	398(%ebx), %dx
	movswl	3202(%eax), %eax
	je	L666
	movl	$2, %edx
	call	__Z11PlaySOsoundss
L667:
	movswl	348(%ebx), %eax
	movl	104(%ebx), %ecx
	movl	%edi, 8(%ebx)
	movl	$2560, %esi
	movl	$7168, %edi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ebx)
	movl	%edi, 144(%ebx)
	movl	$__Z19DoPlayerOperateBoatP12PLAYERstruct, 22964(%ebx)
	testb	$8, 597(%ecx)
	je	L668
	orl	$-2147483648, 22968(%ebx)
L668:
	movl	40(%edx), %edx
	movl	4(%edx), %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	jmp	L662
L655:
	movl	104(%ebx), %eax
	movzwl	396(%ebx), %edx
	orw	398(%ebx), %dx
	movswl	3202(%eax), %eax
	je	L659
	movl	$2, %edx
	call	__Z11PlaySOsoundss
L660:
	movswl	348(%ebx), %eax
	movl	104(%ebx), %ecx
	movl	%edi, 8(%ebx)
	movl	$2560, %esi
	movl	$7168, %edi
	movl	_User(,%eax,4), %edx
	movl	%esi, 140(%ebx)
	movl	%edi, 144(%ebx)
	movl	$__Z19DoPlayerOperateTankP12PLAYERstruct, 22964(%ebx)
	testb	$8, 597(%ecx)
	je	L665
	jmp	L728
L666:
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	jmp	L667
L659:
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	jmp	L660
L663:
	movl	$1, %edx
	call	__Z11PlaySOsoundss
	jmp	L664
L650:
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$494, %ecx
	movl	$6126, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, %eax
	movl	%ebx, 16(%esp)
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L637
	.cfi_endproc
LFE82:
	.p2align 4
	.globl	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0
	.def	__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z22DoPlayerStopDiveNoWarpP12PLAYERstruct.part.0:
LFB92:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	cmpb	$0, _NoMeters
	je	L753
L738:
	movl	24088(%ebx), %eax
	testl	%eax, %eax
	jg	L754
L739:
	cmpb	$0, _Prediction
	jne	L741
	leal	8(%ebx), %eax
	movl	%ebx, (%esp)
	movl	$476, %ecx
	movl	$5327, %edx
	movl	%eax, 8(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, %eax
	movl	%ebx, 16(%esp)
	movl	$13, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
L741:
	andl	$-393217, 22968(%ebx)
	xorl	%edx, %edx
	movl	%ebx, %eax
	movw	%dx, 380(%ebx)
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%ebx, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	$_Player, %eax
	andw	$-129, 12(%ecx)
	cmpl	%eax, %ebx
	je	L755
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z14DoPlayerZrangeP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L754:
	.cfi_restore_state
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %esi
	movl	-4(%edx,%eax,4), %edx
	testl	%esi, %esi
	je	L739
	testl	%edx, %edx
	je	L739
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	jne	L739
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L756
L740:
	movl	$0, 24088(%ebx)
	movb	$0, 24080(%ebx)
	jmp	L739
	.p2align 4,,10
	.p2align 3
L753:
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L738
	.p2align 4,,10
	.p2align 3
L755:
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	xorl	%eax, %eax
	movw	%ax, 24114(%ebx)
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z14DoPlayerZrangeP12PLAYERstruct
L756:
	.cfi_restore_state
	movl	$2, _FX_ErrorCode
	jmp	L740
	.cfi_endproc
LFE92:
	.p2align 4
	.globl	__Z12DoTankTreadsP12PLAYERstruct.part.0
	.def	__Z12DoTankTreadsP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z12DoTankTreadsP12PLAYERstruct.part.0:
LFB93:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	192(%eax), %ecx
	movl	196(%eax), %edi
	movl	%ecx, %eax
	sarl	$8, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	%eax, %ebx
	movl	%eax, 12(%esp)
	movl	%edi, %eax
	sarl	$8, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%esp)
	testl	%eax, %eax
	je	L758
	testl	%ebx, %ebx
	je	L785
	movl	%eax, %edx
	cmpl	%eax, %ebx
	jge	L759
	leal	12(%esp), %eax
	leal	16(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	192(%esi), %ecx
	movl	196(%esi), %edi
	movl	%eax, (%esp)
L759:
	movl	(%esp), %ebp
	movl	%edx, %eax
	sarl	%eax
	movl	%ebp, %ebx
	addl	%edx, %eax
	movl	%ebp, %edx
	sarl	$5, %ebx
	subl	%ebx, %edx
	movl	%ebp, %ebx
	sarl	$7, %ebx
	subl	%ebx, %edx
	movl	%eax, %ebx
	sarl	$6, %eax
	sarl	$2, %ebx
	addl	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, (%esp)
L758:
	movl	300(%esi), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ebx
	cmovns	%eax, %ebx
	sarl	$16, %ebx
	leal	512(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%ecx, %eax
/APP
 # 3045 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movswl	_sintable(%ebx,%ebx), %edx
	movl	%edi, %eax
/APP
 # 3045 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	104(%esi), %ebx
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L757
	movl	_sector, %esi
	addl	%ecx, %eax
	movl	$-1171354717, %ebp
	movl	_sprite, %edi
	movl	%esi, 4(%esp)
	movl	%ebx, %esi
	js	L762
	.p2align 4
	.p2align 3
L775:
	subl	4(%esp), %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %eax
	movzwl	_headspritesect(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L763
	movl	%esi, 8(%esp)
	jmp	L765
	.p2align 4,,10
	.p2align 3
L817:
	cmpw	$87, %dx
	je	L766
	cmpw	$88, %dx
	je	L815
L768:
	cmpw	$-1, %bx
	je	L816
L765:
	movswl	%bx, %ecx
	movzwl	_nextspritesect(%ecx,%ecx), %ebx
	imull	$44, %ecx, %ecx
	addl	%edi, %ecx
	movzwl	42(%ecx), %eax
	testb	$64, %al
	je	L768
	movzwl	26(%ecx), %edx
	cmpw	$89, %dx
	jne	L817
L766:
	testb	$-128, %al
	je	L774
	leal	42(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %esi
	andw	$-129, 42(%ecx)
	addl	$1024, %esi
	andl	$2047, %esi
L809:
	leal	28(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ecx)
L774:
	leal	32(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	(%esp), %eax
	movw	%ax, 32(%ecx)
	cmpw	$-1, %bx
	jne	L765
L816:
	movl	8(%esp), %esi
L763:
	movl	4(%esi), %edx
	addl	$4, %esi
	testl	%edx, %edx
	jne	L775
L757:
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
L819:
	.cfi_restore_state
	movl	8(%esp), %esi
L777:
	movl	4(%esi), %edx
	addl	$4, %esi
	testl	%edx, %edx
	je	L757
L762:
	subl	4(%esp), %edx
	sarl	$3, %edx
	imull	$-858993459, %edx, %eax
	movzwl	_headspritesect(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L777
	movl	%esi, 8(%esp)
	jmp	L776
	.p2align 4,,10
	.p2align 3
L778:
	cmpw	$87, %dx
	je	L814
	cmpw	$88, %dx
	je	L818
	.p2align 5
	.p2align 4
	.p2align 3
L780:
	cmpw	$-1, %bx
	je	L819
L776:
	movswl	%bx, %ecx
	movzwl	_nextspritesect(%ecx,%ecx), %ebx
	imull	$44, %ecx, %ecx
	addl	%edi, %ecx
	movzwl	42(%ecx), %eax
	testb	$64, %al
	je	L780
	movzwl	26(%ecx), %edx
	cmpw	$89, %dx
	jne	L778
L814:
	testb	$-128, %al
	jne	L783
	leal	42(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %esi
	orw	$128, 42(%ecx)
	addl	$1024, %esi
	andl	$2047, %esi
L811:
	leal	28(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ecx)
L783:
	leal	32(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	(%esp), %eax
	movw	%ax, 32(%ecx)
	jmp	L780
	.p2align 4,,10
	.p2align 3
L818:
	testb	$-128, %al
	jne	L783
	leal	42(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	orw	$128, 42(%ecx)
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, %esi
	jmp	L811
	.p2align 4,,10
	.p2align 3
L815:
	testb	$-128, %al
	je	L774
	leal	42(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ecx), %eax
	andw	$-129, 42(%ecx)
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, %esi
	jmp	L809
L785:
	movl	%eax, (%esp)
	jmp	L758
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC30:
	.ascii "count == 4\0"
	.text
	.p2align 4
	.globl	__Z19DoPlayerOperateTankP12PLAYERstruct
	.def	__Z19DoPlayerOperateTankP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z19DoPlayerOperateTankP12PLAYERstruct:
LFB96:
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
	subl	$768, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %edi
	movl	416(%edi), %edx
	movl	22976(%edi), %eax
	testl	$262144, %edx
	je	L821
	testl	$262144, %eax
	jne	L1070
L822:
	movl	104(%edi), %eax
	movl	%eax, 124(%esp)
	movzwl	3204(%eax), %eax
	cmpw	$-9999, %ax
	je	L823
	testw	%ax, %ax
	jle	L1065
L823:
	movzwl	268(%edi), %eax
	movw	%ax, 56(%esp)
	movl	100(%edi), %eax
	testl	%eax, %eax
	je	L1071
	movl	52(%edi), %eax
	movlps	84(%edi), %xmm4
	movups	60(%edi), %xmm0
	movlps	76(%edi), %xmm5
	movl	%eax, 268(%edi)
	movl	92(%edi), %eax
	movlps	%xmm4, (%edi)
	movl	%eax, 8(%edi)
	movups	%xmm0, 192(%edi)
	movlps	%xmm5, 212(%edi)
	cmpb	$0, _Prediction
	jne	L827
L825:
	movl	124(%esp), %ebx
	movl	176(%ebx), %eax
	movl	%eax, 40(%esp)
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 44(%esp)
	movl	596(%ebx), %eax
	movl	%eax, 120(%esp)
	andl	$16777216, %eax
	movl	%eax, 88(%esp)
	movl	_movefifoplc, %eax
	subl	$2, %eax
	movzbl	%al, %eax
	leal	(%eax,%eax,2), %ecx
	movzwl	420(%edi,%ecx,8), %eax
	orw	422(%edi,%ecx,8), %ax
	movzwl	396(%edi), %ecx
	orw	398(%edi), %cx
	jne	L1072
	testw	%ax, %ax
	jne	L1073
L830:
	movl	22976(%edi), %eax
	andb	$4, %dh
	je	L832
	testb	$4, %ah
	jne	L1074
L833:
	movl	196(%edi), %ebx
	movl	192(%edi), %ecx
	movl	%ebx, 156(%esp)
	movl	156(%esp), %eax
	movl	%ecx, 152(%esp)
	movl	%ecx, 144(%esp)
	movl	%ebx, 148(%esp)
	movl	192(%edi), %esi
	movl	%eax, 120(%esp)
	movl	22968(%edi), %eax
	movl	%ebx, 204(%edi)
	movswl	398(%edi), %ebx
	movl	%eax, %edx
	orb	$-128, %al
	movl	%ecx, 200(%edi)
	andb	$127, %dl
	orl	196(%edi), %esi
	movl	124(%esp), %esi
	movl	%ecx, 112(%esp)
	cmove	%edx, %eax
	movl	%eax, 22968(%edi)
	movl	584(%esi), %edx
	movswl	396(%edi), %eax
	testl	%edx, %edx
	je	L837
/APP
 # 3375 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 192(%edi)
	movl	%eax, %ecx
	movl	584(%esi), %edx
	movl	%ebx, %eax
/APP
 # 3376 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 196(%edi)
	movl	588(%esi), %esi
	movl	%eax, %ebx
	leal	-1(%esi), %eax
	imull	112(%esp), %eax
	addl	%ecx, %eax
	cltd
	idivl	%esi
	movl	124(%esp), %esi
	movl	%eax, 192(%edi)
	movl	588(%esi), %esi
	movl	%eax, %ecx
	leal	-1(%esi), %eax
	imull	120(%esp), %eax
	addl	%ebx, %eax
	cltd
	idivl	%esi
L838:
	movl	%eax, 196(%edi)
	addl	$12799, %ecx
	cmpl	$25598, %ecx
	ja	L839
	addl	$12799, %eax
	cmpl	$25598, %eax
	jbe	L1075
L839:
	movzwl	268(%edi), %eax
	movw	%ax, 54(%esp)
	movw	%ax, 270(%edi)
	movl	8(%edi), %eax
	movl	%eax, 84(%esp)
	movl	88(%esp), %eax
	testl	%eax, %eax
	je	L841
	movl	124(%esp), %ecx
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L842
	movl	%ecx, 120(%esp)
	addl	$800, %ecx
	movl	_wall, %ebx
	movl	%ecx, 92(%esp)
	movl	$0, 112(%esp)
	movl	%edi, 80(%esp)
	movl	%ebx, 96(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L848:
	movzwl	(%eax), %edx
	movzwl	2(%eax), %ecx
	addl	%edx, %ecx
	subl	$1, %ecx
	cmpw	%cx, %dx
	jg	L843
	movswl	%dx, %edi
	movl	112(%esp), %esi
	movl	92(%esp), %edx
	movl	%edi, %eax
	movl	%edi, 104(%esp)
	leal	(%edx,%esi,2), %edx
	movswl	%cx, %esi
	movl	$1, %ecx
	sall	$5, %eax
	subl	%edi, %ecx
	movl	%esi, 100(%esp)
	addl	96(%esp), %eax
	addl	%esi, %ecx
	sall	$5, %ecx
	addl	%eax, %ecx
	.p2align 4
	.p2align 3
L847:
	movzwl	30(%eax), %esi
	testw	%si, %si
	je	L845
	andw	$528, %si
	cmpw	$16, %si
	jne	L845
	movl	(%eax), %esi
	movswl	(%edx), %edi
	movl	%esi, 192(%esp,%ebx,4)
	movl	4(%eax), %esi
	movl	%esi, 208(%esp,%ebx,4)
	movl	124(%esp), %esi
	movl	180(%esi), %esi
	subl	%edi, %esi
	movswl	1200(%edx), %edi
	movl	%esi, 224(%esp,%ebx,4)
	movl	124(%esp), %esi
	movl	184(%esi), %esi
	movl	%esi, 108(%esp)
	subl	%edi, %esi
	movl	%esi, 240(%esp,%ebx,4)
	addl	$1, %ebx
	.p2align 4
	.p2align 3
L845:
	addl	$32, %eax
	addl	$2, %edx
	cmpl	%ecx, %eax
	jne	L847
	movl	112(%esp), %eax
	movl	100(%esp), %esi
	subl	104(%esp), %esi
	leal	1(%esi,%eax), %eax
	movl	%eax, 112(%esp)
L843:
	addl	$4, 120(%esp)
	movl	120(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L848
	movl	80(%esp), %edi
	cmpl	$4, %ebx
	jne	L842
L841:
	movl	300(%edi), %edx
	movl	104(%edi), %ebx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	cmpb	$0, _Prediction
	jne	L852
	cmpw	$89, 3214(%ebx)
	jg	L1076
L852:
	movzwl	3568(%ebx), %ecx
	movl	88(%esp), %eax
	movw	%cx, 268(%edi)
	testl	%eax, %eax
	je	L854
	movl	352(%edi), %ecx
	movzwl	12(%ecx), %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 84(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ecx)
	movl	104(%edi), %ecx
	movl	400(%edi), %eax
	movl	576(%ecx), %edx
	testl	%edx, %edx
	jne	L1077
	cltd
	xorw	%dx, %dx
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$3, %eax
	movl	%eax, 120(%esp)
	movl	120(%esp), %esi
	testl	%esi, %esi
	jne	L1054
L1091:
	leal	640(%esp), %eax
	movl	%eax, 104(%esp)
	leal	512(%esp), %eax
	movl	%eax, 92(%esp)
L859:
	movl	192(%edi), %ebx
	movl	196(%edi), %ecx
	xorl	%eax, %eax
	movl	104(%esp), %edx
	sarl	$14, %ebx
	sarl	$14, %ecx
L864:
	movl	192(%esp,%eax,4), %esi
	addl	%ebx, %esi
	movl	%esi, (%edx,%eax,8)
	movl	208(%esp,%eax,4), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%edx,%eax,8)
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L864
	movswl	268(%edi), %ecx
	movl	104(%esp), %edx
	movl	92(%esp), %eax
	call	__Z14testquadinsectPiPK4vec2IiEs
	movl	%eax, 96(%esp)
	testl	%eax, %eax
	jne	L1078
	movl	512(%esp), %eax
	testl	%eax, %eax
	js	L866
	je	L976
	cmpl	$3, %eax
	je	L976
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	L1079
	.p2align 4
	.p2align 3
L866:
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
	cmpb	$0, _MoveSkip4
	je	L904
	movl	192(%edi), %eax
	orl	196(%edi), %eax
	jne	L873
	movl	400(%edi), %ebx
	testl	%ebx, %ebx
	je	L904
L873:
	movl	22980(%edi), %ecx
	movswl	3568(%ecx), %eax
	movswl	_headspritesect(%eax,%eax), %esi
	cmpl	$-1, %esi
	je	L875
	movl	%ecx, 112(%esp)
	movl	%edi, 108(%esp)
	jmp	L874
	.p2align 4,,10
	.p2align 3
L876:
	movzwl	26(%ebx), %eax
	cmpw	$4, %ax
	je	L1062
	cmpw	$2307, 14(%ebx)
	je	L1062
	movzwl	42(%ebx), %edx
	testb	$8, %dh
	je	L880
	testb	$1, 69(%ecx)
	jne	L880
	andb	$32, %dh
	je	L1062
	.p2align 4
	.p2align 3
L880:
	cmpw	$0, 12(%ebx)
	js	L1062
	cmpw	$47, %ax
	jg	L1062
	movl	112(%esp), %eax
	movl	592(%eax), %eax
	cmpl	%eax, 8(%ebx)
	jl	L1062
	movswl	%di, %edi
	movl	%edi, (%esp)
	call	__Z17SpriteQueueDeletes
	movl	%edi, %eax
	call	__Z10KillSprites
	.p2align 4
	.p2align 3
L1062:
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
L877:
	cmpl	$-1, %esi
	je	L1080
L874:
	movl	%esi, %edi
	leal	208(%esp), %ecx
	movswl	_nextspritesect(%esi,%esi), %esi
	imull	$44, %edi, %ebx
	addl	120(%esp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	leal	192(%esp), %ecx
	call	__Z15testpointinquadiiPiS_
	testl	%eax, %eax
	je	L877
	movl	_User(,%edi,4), %ecx
	testb	$32, 43(%ebx)
	je	L876
	xorl	%edx, %edx
	movswl	%di, %eax
	movl	%ecx, 120(%esp)
	call	__Z14HitBreakSpritess
	movl	120(%esp), %ecx
	testl	%eax, %eax
	je	L876
	jmp	L1062
	.p2align 4,,10
	.p2align 3
L821:
	orl	$262144, %eax
	movl	%eax, 22976(%edi)
	jmp	L822
	.p2align 4,,10
	.p2align 3
L1071:
	cmpb	$0, _Prediction
	je	L825
L820:
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
L1092:
	.cfi_restore_state
	movl	112(%esp), %ecx
	movl	108(%esp), %edi
L882:
	movswl	_headspritestat+6, %esi
	cmpl	$-1, %esi
	je	L892
	movl	%ecx, 112(%esp)
	movl	%edi, 108(%esp)
	.p2align 4
	.p2align 3
L891:
	movl	%esi, %edi
	leal	208(%esp), %ecx
	movswl	_nextspritestat(%esi,%esi), %esi
	imull	$44, %edi, %ebx
	addl	120(%esp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	leal	192(%esp), %ecx
	call	__Z15testpointinquadiiPiS_
	testl	%eax, %eax
	je	L897
	movl	112(%esp), %eax
	movl	592(%eax), %eax
	cmpl	%eax, 8(%ebx)
	jl	L897
	movswl	%di, %edi
	movl	%edi, (%esp)
	call	__Z17SpriteQueueDeletes
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
L897:
	cmpl	$-1, %esi
	jne	L891
	movl	112(%esp), %ecx
	movl	108(%esp), %edi
L892:
	movzbl	_SW_GameFlags, %eax
	movl	%edi, 100(%esp)
	xorl	%edi, %edi
	movl	%ecx, 88(%esp)
	movb	%al, 108(%esp)
	jmp	L895
	.p2align 4,,10
	.p2align 3
L903:
	movswl	_headspritestat+42(%edx,%edx), %ebx
	testl	%ebx, %ebx
	js	L899
	movl	_User(,%ebx,4), %esi
	movl	144(%esi), %eax
	movl	%eax, 112(%esp)
	cmpl	%eax, 100(%esp)
	je	L899
	imull	$44, %ebx, %ebx
	leal	208(%esp), %ecx
	addl	120(%esp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	leal	192(%esp), %ecx
	call	__Z15testpointinquadiiPiS_
	testl	%eax, %eax
	je	L899
	movl	88(%esp), %edx
	movl	592(%edx), %edx
	cmpl	%edx, 8(%ebx)
	jl	L899
	movswl	84(%esi), %eax
	movl	$-100, %edx
	subl	%eax, %edx
	movl	100(%esp), %eax
	movl	300(%eax), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	movl	%ebx, %eax
	movswl	%dx, %ebx
	xorw	%ax, %ax
	movl	%ebx, 4(%esp)
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	112(%esp), %ecx
	sarl	$16, %eax
	movl	%ecx, (%esp)
	movl	%eax, 8(%esp)
	call	__Z17PlayerDamageSlideP12PLAYERstructss
	movl	144(%esi), %eax
	movl	%ebx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	100(%esp), %eax
	movswl	348(%eax), %eax
	movl	%eax, 4(%esp)
	movl	144(%esi), %eax
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	movzbl	_SW_GameFlags, %eax
	movb	%al, 108(%esp)
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
	.p2align 4
	.p2align 3
L899:
	addl	$1, %edi
L895:
	movzbl	108(%esp), %eax
	movswl	%di, %edx
	andl	$1, %eax
	cmpb	$1, %al
	sbbl	%eax, %eax
	andl	$4, %eax
	addl	$4, %eax
	cmpl	%eax, %edx
	jl	L903
	movl	88(%esp), %ecx
	movl	100(%esp), %edi
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L904
	movl	%edi, 112(%esp)
	movl	%ecx, %esi
	movl	%ecx, %edi
	movl	120(%esp), %ecx
	.p2align 4
	.p2align 3
L910:
	subl	_sector, %eax
	sarl	$3, %eax
	imull	$-858993459, %eax, %eax
	movswl	_headspritesect(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L906
	movl	%esi, 120(%esp)
	.p2align 4
	.p2align 3
L905:
	movl	%ebx, %esi
	movl	592(%edi), %edx
	movswl	_nextspritesect(%ebx,%ebx), %ebx
	imull	$44, %esi, %eax
	addl	$10239, %edx
	addl	%ecx, %eax
	cmpl	8(%eax), %edx
	jge	L909
	testb	$8, 43(%eax)
	je	L909
	cmpw	$2, 26(%eax)
	je	L1081
L909:
	cmpl	$-1, %ebx
	jne	L905
	movl	120(%esp), %esi
L906:
	movl	4(%esi), %eax
	addl	$4, %esi
	testl	%eax, %eax
	jne	L910
	movl	%ecx, 120(%esp)
	movl	112(%esp), %edi
L904:
	movl	352(%edi), %ebx
	movl	$-1171354717, %edx
	leal	12(%ebx), %eax
	subl	120(%esp), %eax
	mull	%edx
	movzwl	84(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	movl	96(%esp), %eax
	testl	%eax, %eax
	je	L1082
L924:
	movl	300(%edi), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	cmpb	$0, _Prediction
	jne	L951
	movl	104(%edi), %ebx
	cmpw	$89, 3214(%ebx)
	jle	L951
	leal	32768(%edx,%eax), %eax
	movl	(%edi), %ecx
	movl	$3, 4(%esp)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	sarl	$16, %edx
	movl	%ebx, %eax
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
L951:
	movzwl	54(%esp), %eax
	movl	404(%edi), %ecx
	leal	288(%edi), %edx
	movw	%ax, 268(%edi)
	movl	%edi, %eax
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	cmpb	$0, _Prediction
	jne	L952
	movl	%edi, %eax
	call	__Z12DoTankTreadsP12PLAYERstruct.part.0
L952:
	movl	100(%edi), %ecx
	testl	%ecx, %ecx
	je	L820
L827:
	movl	268(%edi), %eax
	movlps	(%edi), %xmm6
	movups	192(%edi), %xmm0
	movlps	212(%edi), %xmm7
	movl	%eax, 52(%edi)
	movl	8(%edi), %eax
	movups	%xmm0, 60(%edi)
	xorps	%xmm0, %xmm0
	movl	%eax, 92(%edi)
	movzwl	56(%esp), %eax
	movlps	%xmm6, 84(%edi)
	movl	%eax, %edx
	movl	%eax, %ecx
	movlps	%xmm7, 76(%edi)
	sall	$16, %edx
	orl	%edx, %eax
	movl	%eax, 268(%edi)
	movl	48(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	4(%eax), %eax
	movl	_sector, %edx
	movl	%eax, 4(%edi)
	movswl	%cx, %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
	movups	%xmm0, 192(%edi)
	movl	$0, 212(%edi)
	movl	$0, 216(%edi)
	subl	$14848, %eax
	movl	%eax, 8(%edi)
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
	jmp	__Z18UpdatePlayerSpriteP12PLAYERstruct
	.p2align 4,,10
	.p2align 3
L854:
	.cfi_restore_state
	movl	84(%esp), %eax
	addl	$2560, %eax
	movl	%eax, 100(%esp)
	subl	552(%ebx), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	576(%ebx), %edx
	movl	%eax, 96(%esp)
	movl	400(%edi), %eax
	testl	%edx, %edx
	jne	L1083
	cltd
	xorw	%dx, %dx
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	leal	(%eax,%eax,2), %eax
	sarl	$3, %eax
	movl	%eax, 84(%esp)
L927:
	movl	84(%esp), %esi
	testl	%esi, %esi
	je	L1064
	movl	300(%edi), %eax
	testl	%eax, %eax
	js	L1084
	movl	$32768, %edx
	cmpw	$0, 3548(%ebx)
	jle	L933
L932:
	addl	%edx, %eax
	movw	%cx, 512(%esp)
	leal	65535(%eax), %edx
	movl	%edi, 112(%esp)
	cmovns	%eax, %edx
	movzwl	84(%esp), %eax
	xorl	%esi, %esi
	sarl	$16, %edx
	addl	%edx, %eax
	movw	%ax, 108(%esp)
	movl	100(%esp), %eax
	movl	%eax, 120(%esp)
	leal	640(%esp), %eax
	movl	%eax, 104(%esp)
	leal	512(%esp), %eax
	movl	%eax, 92(%esp)
	jmp	L935
	.p2align 4,,10
	.p2align 3
L1086:
	movswl	3548(%ebx), %eax
	addl	$1, %esi
	cmpl	%eax, %esi
	jge	L1085
L935:
	movzwl	108(%esp), %eax
	addw	3420(%ebx,%esi,2), %ax
	andl	$2047, %eax
	movswl	3484(%ebx,%esi,2), %ecx
	movl	112(%esp), %edi
	leal	512(%eax), %edx
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %edx
	movlps	(%edi), %xmm3
	movl	120(%esp), %edi
	imull	%ecx, %eax
	movswl	_sintable(%edx,%edx), %edx
	imull	%ecx, %edx
	movswl	3228(%ebx,%esi,2), %ecx
	movl	%edi, 648(%esp)
	movl	%eax, 12(%esp)
	movl	92(%esp), %eax
	movl	96(%esp), %edi
	movl	$65537, 28(%esp)
	movl	%eax, 4(%esp)
	movl	104(%esp), %eax
	movl	%edi, 24(%esp)
	movl	$1024, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movlps	%xmm3, 640(%esp)
	call	_clipmove
	movl	648(%esp), %edi
	movl	%edi, 120(%esp)
	testl	%eax, %eax
	je	L1086
	movl	112(%esp), %edi
L1064:
	movl	_sprite, %ebx
L930:
	movl	352(%edi), %ecx
	movzwl	12(%ecx), %eax
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movw	%ax, 52(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-2, 12(%ecx)
	movl	104(%edi), %eax
	movl	4(%edi), %ecx
	movzwl	3226(%eax), %ebx
	movl	%eax, 120(%esp)
	movl	%ecx, 84(%esp)
	movw	%bx, 58(%esp)
	testw	%bx, %bx
	jne	L937
	movl	(%edi), %ebx
	movl	%ebx, 76(%esp)
	cmpw	$0, 3548(%eax)
	jle	L1087
	leal	268(%edi), %eax
	movl	$0, 48(%esp)
	xorl	%esi, %esi
	movl	%eax, 60(%esp)
	leal	640(%esp), %eax
	movl	%eax, 104(%esp)
	leal	512(%esp), %eax
	movl	$999999, 64(%esp)
	movl	%eax, 92(%esp)
	movl	%edi, 108(%esp)
	jmp	L945
	.p2align 4,,10
	.p2align 3
L1090:
	movl	108(%esp), %edx
	movl	120(%esp), %eax
	movw	%si, 58(%esp)
	movswl	_sintable(%edi,%edi), %edi
	movl	(%edx), %ebx
	movswl	3484(%eax,%esi,2), %edx
	movl	108(%esp), %eax
	imull	%edx, %edi
	movl	%ebx, 76(%esp)
	movl	4(%eax), %eax
	sarl	$14, %edi
	movl	%eax, 84(%esp)
	addl	%ebx, %edi
	movl	88(%esp), %ebx
	movl	%edi, 256(%esp,%esi,4)
	movswl	_sintable(%ebx,%ebx), %ebx
	imull	%edx, %ebx
	sarl	$14, %ebx
	leal	(%ebx,%eax), %edx
	movl	92(%esp), %ebx
	movl	112(%esp), %eax
	movl	%edx, 384(%esp,%esi,4)
	movl	%eax, (%ebx,%esi,4)
	movl	104(%esp), %ebx
	movl	68(%esp), %eax
	movl	%ecx, (%ebx,%esi,4)
	movl	72(%esp), %ebx
	subl	%edi, %eax
	subl	%edx, %ebx
	imull	%eax, %eax
	imull	%ebx, %ebx
	leal	(%eax,%ebx), %ecx
	call	@ksqrt@4
	movl	%eax, 64(%esp)
	testl	%eax, %eax
	js	L1088
	movl	$0, 64(%esp)
L943:
	movl	120(%esp), %eax
	addl	$1, %esi
	movswl	3548(%eax), %eax
	cmpl	%eax, %esi
	jge	L1089
L945:
	movl	108(%esp), %eax
	movl	300(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ebx
	cmovns	%eax, %ebx
	movl	120(%esp), %eax
	sarl	$16, %ebx
	addw	3420(%eax,%esi,2), %bx
	movswl	3484(%eax,%esi,2), %ecx
	movl	$1, _clipmoveboxtracenum
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %edx
	movl	%ebx, 88(%esp)
	leal	512(%ebx), %edi
	movl	76(%esp), %ebx
	andl	$2047, %edi
	movswl	_sintable(%edi,%edi), %eax
	imull	%ecx, %edx
	movl	%ebx, 160(%esp)
	movl	84(%esp), %ebx
	imull	%ecx, %eax
	movl	120(%esp), %ecx
	movl	%ebx, 164(%esp)
	movl	100(%esp), %ebx
	movswl	3228(%ecx,%esi,2), %ecx
	movl	%edx, 12(%esp)
	movl	%ebx, 168(%esp)
	movl	96(%esp), %ebx
	movl	%ecx, 16(%esp)
	movl	%ebx, 24(%esp)
	movl	60(%esp), %ebx
	movl	$65537, 28(%esp)
	movl	%ebx, 4(%esp)
	leal	160(%esp), %ebx
	movl	%ebx, (%esp)
	movl	$1024, 20(%esp)
	movl	%eax, 8(%esp)
	call	_clipmove
	movl	160(%esp), %edx
	movlps	160(%esp), %xmm4
	movl	168(%esp), %ebx
	movl	%eax, 80(%esp)
	movl	%edx, 68(%esp)
	movl	164(%esp), %edx
	movlps	%xmm4, 136(%esp)
	movl	140(%esp), %ecx
	movlps	%xmm4, 128(%esp)
	movl	%edx, 72(%esp)
	movl	%ebx, 100(%esp)
	movl	$3, _clipmoveboxtracenum
	movlps	%xmm4, 112(%esp)
	testl	%eax, %eax
	jne	L1090
	movl	112(%esp), %eax
	movl	100(%esp), %edx
	movl	%ecx, 384(%esp,%esi,4)
	movlps	112(%esp), %xmm5
	movl	%eax, 256(%esp,%esi,4)
	movl	120(%esp), %eax
	movl	%edx, 184(%esp)
	movl	96(%esp), %edx
	movswl	3228(%eax,%esi,2), %ecx
	movl	108(%esp), %eax
	movlps	%xmm5, 176(%esp)
	movl	192(%eax), %edi
	movl	196(%eax), %ebx
	movl	%edx, 24(%esp)
	movl	%ecx, 16(%esp)
	movl	%edi, 8(%esp)
	movl	60(%esp), %edi
	movl	%ebx, 12(%esp)
	movl	%edi, 4(%esp)
	leal	176(%esp), %edi
	movl	%edi, (%esp)
	movl	$65537, 28(%esp)
	movl	$1024, 20(%esp)
	call	_clipmove
	movl	184(%esp), %edi
	movl	180(%esp), %edx
	movl	%eax, %ebx
	movl	176(%esp), %eax
	movl	%edi, 100(%esp)
	movl	92(%esp), %edi
	movl	%eax, (%edi,%esi,4)
	movl	104(%esp), %edi
	subl	68(%esp), %eax
	movl	%edx, (%edi,%esi,4)
	subl	72(%esp), %edx
	imull	%eax, %eax
	imull	%edx, %edx
	leal	(%eax,%edx), %ecx
	call	@ksqrt@4
	cmpl	%eax, 64(%esp)
	jg	L944
	movl	108(%esp), %eax
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	%edi, 76(%esp)
	movl	%eax, 84(%esp)
	jmp	L943
	.p2align 4,,10
	.p2align 3
L1072:
	testw	%ax, %ax
	jne	L830
	movswl	3202(%ebx), %eax
	movl	$2, %edx
	call	__Z11PlaySOsoundss
	movl	416(%edi), %edx
	jmp	L830
	.p2align 4,,10
	.p2align 3
L837:
	leal	(%eax,%eax,2), %eax
	movl	$53248, %edx
	sall	$7, %eax
	addl	112(%esp), %eax
/APP
 # 3387 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	leal	(%ebx,%ebx,2), %eax
	movl	$53248, %edx
	sall	$7, %eax
	addl	120(%esp), %eax
/APP
 # 3388 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	112(%esp), %ecx
	addl	120(%esp), %eax
	movl	%ecx, %ebx
	movl	%eax, %edx
	shrl	$31, %ebx
	shrl	$31, %edx
	addl	%ebx, %ecx
	addl	%edx, %eax
	sarl	%ecx
	sarl	%eax
	movl	%ecx, 192(%edi)
	jmp	L838
	.p2align 4,,10
	.p2align 3
L832:
	orb	$4, %ah
	movl	%eax, 22976(%edi)
	jmp	L833
L1076:
	leal	32768(%edx,%eax), %eax
	movl	$3, 4(%esp)
	movl	$2147483647, %ecx
	testl	%eax, %eax
	leal	65535(%eax), %edx
	movl	$2147483647, (%esp)
	cmovns	%eax, %edx
	movl	%ebx, %eax
	sarl	$16, %edx
	call	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0
	movl	104(%edi), %ebx
	jmp	L852
L1075:
	movl	$0, 192(%edi)
	movl	$0, 196(%edi)
	jmp	L839
L1074:
	andb	$-5, %ah
	movl	%eax, 22976(%edi)
	movl	22968(%edi), %eax
	xorl	$1048576, %eax
	movl	%eax, 22968(%edi)
	andl	$1048576, %eax
	movl	%eax, %edx
	shrl	$20, %edx
	andl	$1, %edx
	testl	%eax, %eax
	movl	$LC24, %eax
	movb	%dl, _gs+21
	movl	$LC23, %edx
	cmovne	%edx, %eax
	movl	$LC25, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	$_ds, %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L833
L1083:
	movl	228(%edi), %esi
	movl	%esi, 112(%esp)
	movl	%eax, %esi
	sarl	$31, %esi
	xorw	%si, %si
	leal	32768(%esi,%eax), %esi
	testl	%esi, %esi
	leal	65535(%esi), %eax
	cmovns	%esi, %eax
	sarl	$16, %eax
/APP
 # 1717 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 228(%edi)
	movl	580(%ebx), %esi
	leal	-1(%esi), %edx
	movl	%esi, 120(%esp)
	imull	112(%esp), %edx
	addl	%edx, %eax
	cltd
	idivl	120(%esp)
	movl	%eax, 84(%esp)
	movl	%eax, 228(%edi)
	jmp	L927
L1077:
	movl	%eax, %ebx
	movl	228(%edi), %esi
	sarl	$31, %ebx
	xorw	%bx, %bx
	leal	32768(%ebx,%eax), %ebx
	testl	%ebx, %ebx
	leal	65535(%ebx), %eax
	cmovns	%ebx, %eax
	sarl	$16, %eax
/APP
 # 1750 "source/sw/src/player.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 228(%edi)
	movl	580(%ecx), %ebx
	leal	-1(%ebx), %edx
	imull	%esi, %edx
	addl	%edx, %eax
	cltd
	idivl	%ebx
	movl	%eax, 120(%esp)
	movl	120(%esp), %esi
	movl	%eax, 228(%edi)
	testl	%esi, %esi
	je	L1091
L1054:
	movl	300(%edi), %edx
	movzwl	3560(%ecx), %ebx
	leal	240(%esp), %esi
	subw	3552(%ecx), %bx
	movzwl	120(%esp), %ecx
	movl	%edx, %eax
	sarl	$31, %eax
	addl	%ebx, %ecx
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	xorl	%ebx, %ebx
	sarl	$16, %eax
	addl	%eax, %ecx
	leal	640(%esp), %eax
	movl	%eax, 104(%esp)
	movl	%ecx, %eax
	andl	$2047, %eax
	movl	%eax, 112(%esp)
L861:
	movl	(%esi,%ebx,4), %ecx
	movl	224(%esp,%ebx,4), %eax
	movl	%ecx, 12(%esp)
	movl	104(%esp), %ecx
	movl	%eax, 8(%esp)
	leal	(%ecx,%ebx,8), %edx
	movl	112(%esp), %ecx
	addl	$1, %ebx
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_rotatepoint
	cmpl	$4, %ebx
	jne	L861
	movswl	268(%edi), %ecx
	movl	104(%esp), %edx
	leal	512(%esp), %eax
	movl	%eax, 92(%esp)
	call	__Z14testquadinsectPiPK4vec2IiEs
	testl	%eax, %eax
	je	L859
	movl	300(%edi), %edx
	movl	_sprite, %ebx
	movl	$-1171354717, %esi
	movups	640(%esp), %xmm0
	movups	656(%esp), %xmm1
	movl	%edx, %eax
	sarl	$31, %eax
	movaps	%xmm0, %xmm2
	shufps	$221, %xmm1, %xmm0
	movups	%xmm0, 208(%esp)
	xorw	%ax, %ax
	shufps	$136, %xmm1, %xmm2
	movups	%xmm2, 192(%esp)
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	movswl	348(%edi), %eax
	imull	$44, %eax, %eax
	sarl	$16, %ecx
	addl	120(%esp), %ecx
	andl	$2047, %ecx
	sall	$16, %ecx
	addl	%eax, %ebx
	addl	$28, %eax
	movl	%ecx, 300(%edi)
	mull	%esi
	movl	%ecx, 308(%edi)
	shrl	$16, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L859
L842:
	movl	$LC30, %eax
	movl	$3424, %ecx
	movl	$LC18, %edx
	call	__Z7_AssertPKcS0_j
	movzwl	268(%edi), %eax
	movw	%ax, 54(%esp)
	jmp	L841
L1070:
	andl	$-262145, %eax
	movl	%eax, 22976(%edi)
L1065:
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
	jmp	__Z19DoPlayerStopOperateP12PLAYERstruct
L1073:
	.cfi_restore_state
	movl	124(%esp), %eax
	movl	$1, %edx
	movswl	3202(%eax), %eax
	call	__Z11PlaySOsoundss
	movl	416(%edi), %edx
	jmp	L830
	.p2align 4,,10
	.p2align 3
L944:
	movl	108(%esp), %edi
	movw	%si, 58(%esp)
	movl	%ebx, 48(%esp)
	movl	(%edi), %ecx
	movl	4(%edi), %edi
	movl	%eax, 64(%esp)
	movl	%ecx, 76(%esp)
	movl	%edi, 84(%esp)
	jmp	L943
	.p2align 4,,10
	.p2align 3
L1088:
	movl	80(%esp), %eax
	movl	%eax, 48(%esp)
	jmp	L943
L1080:
	movl	112(%esp), %ecx
	movl	108(%esp), %edi
L875:
	movswl	_headspritestat+4, %esi
	cmpl	$-1, %esi
	je	L882
	movl	%ecx, 112(%esp)
	movl	%edi, 108(%esp)
	jmp	L881
L1093:
	movswl	%di, %edi
L887:
	cmpw	$1, _gNet+12
	je	L889
	movl	%edi, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L889:
	movl	$-99, 4(%esp)
	movl	%edi, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L890
	movl	%edi, (%esp)
	call	__Z10SetSuicides
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
	.p2align 4
	.p2align 3
L888:
	cmpl	$-1, %esi
	je	L1092
L881:
	movl	%esi, %edi
	leal	208(%esp), %ecx
	movswl	_nextspritestat(%esi,%esi), %esi
	imull	$44, %edi, %ebx
	addl	120(%esp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	leal	192(%esp), %ecx
	call	__Z15testpointinquadiiPiS_
	testl	%eax, %eax
	je	L888
	movl	112(%esp), %eax
	movl	592(%eax), %eax
	cmpl	%eax, 8(%ebx)
	jl	L888
	movl	108(%esp), %eax
	movl	196(%eax), %edx
	movl	192(%eax), %eax
	sarl	$8, %edx
	movl	%eax, 120(%esp)
	sarl	$8, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 640(%esp)
	movl	%eax, %ebx
	movl	%edx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 644(%esp)
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L885
	testl	%ebx, %ebx
	je	L962
	cmpl	%eax, %ebx
	jge	L886
	leal	644(%esp), %ebx
	movl	104(%esp), %eax
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	644(%esp), %ecx
	movl	640(%esp), %ebx
L886:
	movl	%ecx, %eax
	movl	%ebx, %edx
	sarl	%eax
	addl	%ecx, %eax
	movl	%ebx, %ecx
	sarl	$7, %ebx
	sarl	$5, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$6, %eax
	subl	%ebx, %edx
	sarl	$2, %ecx
	addl	%ecx, %edx
	leal	(%edx,%eax), %ebx
L885:
	cmpl	$8999, %ebx
	jg	L1093
	movl	108(%esp), %eax
	movl	196(%eax), %edx
	movl	192(%eax), %ecx
	call	@getangle@8
	movl	_User(,%edi,4), %edx
	movl	$5, %ecx
	movswl	%di, %edi
	orl	$2097152, 68(%edx)
	testl	%ebx, %ebx
	movw	%ax, 228(%edx)
	leal	7(%ebx), %eax
	cmovns	%ebx, %eax
	movw	%cx, 236(%edx)
	sarl	$3, %eax
	cwtl
	movl	%eax, 232(%edx)
	movl	%edi, (%esp)
	call	__Z12DoActorSlides
	testl	%eax, %eax
	je	L887
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
	jmp	L888
	.p2align 4,,10
	.p2align 3
L1081:
	movswl	%si, %esi
	movl	$-99, 4(%esp)
	movl	%esi, (%esp)
	call	__Z10SpawnShrapss
	testl	%eax, %eax
	je	L908
	movl	%esi, (%esp)
	call	__Z10SetSuicides
	movl	_sprite, %ecx
	jmp	L909
	.p2align 4,,10
	.p2align 3
L908:
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	_sprite, %ecx
	jmp	L909
L937:
	movl	196(%edi), %eax
	movl	100(%esp), %ebx
	movss	(%edi), %xmm0
	movl	192(%edi), %edx
	movl	$65537, 28(%esp)
	movswl	58(%esp), %ecx
	movss	84(%esp), %xmm2
	movl	%ebx, 648(%esp)
	movl	%eax, 12(%esp)
	movl	96(%esp), %ebx
	leal	268(%edi), %eax
	movl	%eax, 4(%esp)
	leal	640(%esp), %eax
	unpcklps	%xmm2, %xmm0
	movl	%ebx, 24(%esp)
	movl	$1024, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	movlps	%xmm0, 640(%esp)
	call	_clipmove
	movlps	640(%esp), %xmm1
	movl	%eax, 48(%esp)
	movlps	%xmm1, (%edi)
L940:
	movl	44(%esp), %esi
	movl	48(%esp), %eax
	movl	%eax, 264(%esi)
	movl	352(%edi), %ecx
	movl	$-1171354717, %eax
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movzwl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movl	264(%esi), %ebx
	testl	%ebx, %ebx
	je	L924
	movl	196(%edi), %ecx
	movl	192(%edi), %eax
	sarl	$8, %ecx
	sarl	$8, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 640(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 644(%esp)
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L946
	testl	%edx, %edx
	je	L974
	cmpl	%eax, %edx
	jge	L947
	leal	640(%esp), %eax
	leal	644(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	644(%esp), %ebx
	movl	640(%esp), %edx
L947:
	movl	%ebx, %eax
	movl	%edx, %ecx
	sarl	%eax
	addl	%ebx, %eax
	movl	%edx, %ebx
	sarl	$7, %edx
	sarl	$5, %ebx
	subl	%ebx, %ecx
	subl	%edx, %ecx
	movl	%eax, %edx
	sarl	$6, %eax
	sarl	$2, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
L946:
	cmpl	$13000, %edx
	jg	L1094
L948:
	cmpl	$12000, %edx
	jle	L924
L949:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 192(%edi)
	jmp	L924
L890:
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	_sprite, %eax
	movl	%eax, 120(%esp)
	jmp	L888
L1089:
	movswl	58(%esp), %eax
	movl	108(%esp), %edi
	movl	%eax, 88(%esp)
L939:
	movl	88(%esp), %ecx
	movl	76(%esp), %eax
	addl	512(%esp,%ecx,4), %eax
	subl	256(%esp,%ecx,4), %eax
	movl	%eax, (%edi)
	movl	84(%esp), %eax
	addl	640(%esp,%ecx,4), %eax
	subl	384(%esp,%ecx,4), %eax
	movl	%eax, 4(%edi)
	jmp	L940
L1078:
	movl	192(%edi), %eax
	sarl	$14, %eax
	addl	%eax, (%edi)
	movl	196(%edi), %eax
	sarl	$14, %eax
	addl	%eax, 4(%edi)
	jmp	L866
L1082:
	movl	196(%edi), %ecx
	movl	192(%edi), %eax
	sarl	$8, %ecx
	sarl	$8, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 640(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 644(%esp)
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L913
	testl	%edx, %edx
	je	L965
	cmpl	%eax, %edx
	jge	L914
	leal	644(%esp), %ebx
	movl	104(%esp), %eax
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	644(%esp), %ebx
	movl	640(%esp), %edx
L914:
	movl	%ebx, %eax
	movl	%edx, %ecx
	sarl	%eax
	addl	%ebx, %eax
	movl	%edx, %ebx
	sarl	$7, %edx
	sarl	$5, %ebx
	subl	%ebx, %ecx
	subl	%edx, %ecx
	movl	%eax, %edx
	sarl	$6, %eax
	sarl	$2, %edx
	addl	%ecx, %edx
	addl	%eax, %edx
L913:
	cmpl	$13000, %edx
	jle	L948
	movswl	268(%edi), %edx
	movl	196(%esp), %eax
	addl	192(%esp), %eax
	movl	212(%esp), %ebx
	sarl	%eax
	addl	208(%esp), %ebx
	movl	300(%edi), %ecx
	movl	%eax, 512(%esp)
	movl	%eax, %esi
	leal	(%edx,%edx,4), %eax
	sarl	%ebx
	sall	$3, %eax
	addl	_sector, %eax
	movl	%ebx, 516(%esp)
	movl	8(%eax), %eax
	movl	$65537, 24(%esp)
	movl	$0, 16(%esp)
	subl	$2560, %eax
	movl	%eax, 520(%esp)
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%eax,%ecx), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	104(%esp), %ecx
	sarl	$16, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, %ecx
	addl	$512, %eax
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %ecx
	sarl	$6, %ecx
	movl	%ecx, 12(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%edx, 4(%esp)
	sarl	$6, %eax
	movl	%eax, 8(%esp)
	movl	92(%esp), %eax
	movl	%eax, (%esp)
	call	_hitscan
	movl	644(%esp), %edx
	movl	640(%esp), %eax
	subl	%ebx, %edx
	subl	%esi, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 384(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 388(%esp)
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L917
	testl	%ecx, %ecx
	je	L967
	cmpl	%eax, %ecx
	jge	L918
	leal	384(%esp), %eax
	leal	388(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	388(%esp), %ebx
	movl	384(%esp), %ecx
L918:
	movl	%ebx, %eax
	movl	%ecx, %edx
	sarl	%eax
	addl	%ebx, %eax
	movl	%ecx, %ebx
	sarl	$7, %ecx
	sarl	$5, %ebx
	subl	%ebx, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$6, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	leal	(%edx,%eax), %ecx
L917:
	cmpl	$799, %ecx
	jg	L1069
	movswl	654(%esp), %eax
	testw	%ax, %ax
	js	L920
	orb	$-128, %ah
	movl	%eax, 96(%esp)
L921:
	movl	44(%esp), %eax
	movl	96(%esp), %ebx
	movl	%ebx, 264(%eax)
	movl	40(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z14VehicleMoveHits
L1069:
	movl	124(%esp), %eax
	testb	$64, 598(%eax)
	jne	L949
	movl	$40000, 24(%esp)
	movl	$8, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	268(%edi), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	jmp	L949
L962:
	movl	%eax, %ebx
	jmp	L885
L1085:
	movl	112(%esp), %edi
	movl	300(%edi), %eax
	cltd
	xorw	%dx, %dx
	addl	$32768, %edx
L933:
	addl	%eax, %edx
	movl	_sprite, %ebx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	addl	84(%esp), %eax
	andl	$2047, %eax
	sall	$16, %eax
	movl	%eax, 300(%edi)
	movl	%eax, %esi
	movl	%eax, 308(%edi)
	movswl	348(%edi), %eax
	shrl	$16, %esi
	imull	$44, %eax, %eax
	leal	(%ebx,%eax), %ecx
	movl	$-1171354717, %eax
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%ecx)
	jmp	L930
L976:
	movl	196(%edi), %ebx
	movl	192(%edi), %ecx
	xorl	%eax, %eax
	movl	104(%esp), %esi
	sarl	$15, %ebx
	sarl	$15, %ecx
L870:
	movl	192(%esp,%eax,4), %edx
	movl	%edx, 120(%esp)
	subl	%ebx, %edx
	movl	%edx, (%esi,%eax,8)
	movl	208(%esp,%eax,4), %edx
	addl	%ecx, %edx
	movl	%edx, 4(%esi,%eax,8)
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L870
	movswl	268(%edi), %ecx
	movl	104(%esp), %edx
	movl	92(%esp), %eax
	call	__Z14testquadinsectPiPK4vec2IiEs
	testl	%eax, %eax
	je	L961
	movl	196(%edi), %eax
	sarl	$15, %eax
	subl	%eax, (%edi)
	movl	192(%edi), %eax
	sarl	$15, %eax
	addl	%eax, 4(%edi)
	jmp	L866
L1084:
	movl	$-32768, %edx
	cmpw	$0, 3548(%ebx)
	jg	L932
	jmp	L933
	.p2align 4,,10
	.p2align 3
L961:
	movl	$0, 96(%esp)
	jmp	L866
L974:
	movl	%eax, %edx
	jmp	L946
L965:
	movl	%eax, %edx
	jmp	L913
L1079:
	movl	196(%edi), %ecx
	movl	192(%edi), %ebx
	xorl	%eax, %eax
	movl	104(%esp), %esi
	sarl	$15, %ecx
	sarl	$15, %ebx
L871:
	movl	192(%esp,%eax,4), %edx
	addl	%ecx, %edx
	movl	%edx, (%esi,%eax,8)
	movl	208(%esp,%eax,4), %edx
	movl	%edx, 120(%esp)
	subl	%ebx, %edx
	movl	%edx, 4(%esi,%eax,8)
	addl	$1, %eax
	cmpl	$4, %eax
	jne	L871
	movswl	268(%edi), %ecx
	movl	104(%esp), %edx
	movl	92(%esp), %eax
	call	__Z14testquadinsectPiPK4vec2IiEs
	testl	%eax, %eax
	je	L961
	movl	196(%edi), %eax
	sarl	$15, %eax
	addl	%eax, (%edi)
	movl	192(%edi), %eax
	sarl	$15, %eax
	subl	%eax, 4(%edi)
	jmp	L866
L1094:
	movl	40(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z14VehicleMoveHits
	movl	192(%edi), %eax
	negl	%eax
	addl	%eax, %eax
	movl	%eax, 212(%edi)
	movl	196(%edi), %eax
	negl	%eax
	addl	%eax, %eax
	movl	%eax, 216(%edi)
	jmp	L1069
L1087:
	movl	$0, 48(%esp)
	jmp	L939
L920:
	movswl	652(%esp), %eax
	movl	%eax, %edx
	orb	$-64, %ah
	testw	%dx, %dx
	cmovs	96(%esp), %eax
	movl	%eax, 96(%esp)
	jmp	L921
L967:
	movl	%eax, %ecx
	jmp	L917
	.cfi_endproc
LFE96:
	.p2align 4
	.globl	__Z14InitPredictionP12PLAYERstruct.part.0
	.def	__Z14InitPredictionP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z14InitPredictionP12PLAYERstruct.part.0:
LFB111:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	$24124, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_PredictPlayer, (%esp)
	call	_memcpy
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movl	$292, 8(%esp)
	movl	$_PredictUser, (%esp)
	movl	%eax, 4(%esp)
	call	_memcpy
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE111:
	.p2align 4
	.globl	__Z12DoPredictionP12PLAYERstruct.part.0
	.def	__Z12DoPredictionP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
__Z12DoPredictionP12PLAYERstruct.part.0:
LFB112:
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
	subl	$52, %esp
	movzbl	_predictmovefifoplc, %eax
	imull	$24124, _myconnectindex, %edx
	movl	_randomseed, %esi
	leal	(%eax,%eax,2), %eax
	leal	_Player+416(%edx,%eax,8), %eax
	movl	4(%eax), %ecx
	movl	%ecx, 396(%ebx)
	movl	8(%eax), %ecx
	movl	%ecx, 400(%ebx)
	movl	12(%eax), %ecx
	movl	%ecx, 404(%ebx)
	movl	16(%eax), %ecx
	movl	%ecx, 408(%ebx)
	movl	20(%eax), %ecx
	movl	%ecx, 412(%ebx)
	movl	24(%eax), %eax
	orl	$1812333055, 22976(%ebx)
	movl	%eax, 416(%ebx)
	movl	_sprite, %eax
	andl	$-1812333056, 416(%ebx)
	movswl	_Player+348(%edx), %ecx
	imull	$44, %ecx, %ecx
	addl	%eax, %ecx
	movl	(%ecx), %edx
	movl	%edx, 8(%esp)
	movl	4(%ecx), %edx
	movl	%edx, 12(%esp)
	movl	8(%ecx), %edx
	movl	%edx, 16(%esp)
	movl	12(%ecx), %edx
	movl	%edx, 20(%esp)
	movl	16(%ecx), %edx
	movl	%edx, 24(%esp)
	movl	20(%ecx), %edx
	movl	%edx, 28(%esp)
	movl	24(%ecx), %edx
	movl	%edx, 32(%esp)
	movl	28(%ecx), %edx
	movl	%edx, 36(%esp)
	movl	32(%ecx), %edx
	movl	%edx, 40(%esp)
	movl	36(%ecx), %edx
	movl	%edx, 44(%esp)
	movl	40(%ecx), %edx
	movl	%edx, 48(%esp)
	leal	12(%ecx), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ecx)
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %edi
	movl	$_PredictUser, _User(,%eax,4)
	movl	300(%ebx), %eax
	movl	%eax, 28(%ebx)
	movl	388(%ebx), %eax
	movl	%eax, 392(%ebx)
	movss	8(%ebx), %xmm1
	movl	%ebx, %eax
	movss	288(%ebx), %xmm3
	movss	4(%ebx), %xmm4
	movb	$1, _Prediction
	movss	(%ebx), %xmm0
	unpcklps	%xmm3, %xmm1
	unpcklps	%xmm4, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, 12(%ebx)
	call	__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct
	movl	%ebx, (%esp)
	call	*22964(%ebx)
	movl	%ebx, %eax
	call	__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct
	movswl	348(%ebx), %eax
	movl	8(%esp), %edx
	movb	$0, _Prediction
	movl	%edi, _User(,%eax,4)
	imull	$24124, _myconnectindex, %eax
	movswl	_Player+348(%eax), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%edx, (%eax)
	movl	12(%esp), %edx
	movl	%esi, _randomseed
	movl	%edx, 4(%eax)
	movl	16(%esp), %edx
	movl	%edx, 8(%eax)
	movl	20(%esp), %edx
	movl	%edx, 12(%eax)
	movl	24(%esp), %edx
	movl	%edx, 16(%eax)
	movl	28(%esp), %edx
	movl	%edx, 20(%eax)
	movl	32(%esp), %edx
	movl	%edx, 24(%eax)
	movl	36(%esp), %edx
	movl	%edx, 28(%eax)
	movl	40(%esp), %edx
	movl	%edx, 32(%eax)
	movl	44(%esp), %edx
	movl	%edx, 36(%eax)
	movl	48(%esp), %edx
	movl	%edx, 40(%eax)
	movl	_predictmovefifoplc, %eax
	movss	300(%ebx), %xmm2
	movss	8(%ebx), %xmm1
	movzbl	%al, %edx
	movss	388(%ebx), %xmm5
	movss	(%ebx), %xmm0
	addl	$1, %eax
	movss	4(%ebx), %xmm6
	imull	$28, %edx, %edx
	movl	%eax, _predictmovefifoplc
	unpcklps	%xmm5, %xmm1
	unpcklps	%xmm6, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, _Predict(%edx)
	movss	288(%ebx), %xmm0
	unpcklps	%xmm2, %xmm0
	movlps	%xmm0, _Predict+16(%edx)
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
LFE112:
	.section .rdata,"dr"
LC31:
	.ascii "%s has quit the game.\0"
LC32:
	.ascii "ab\0"
LC33:
	.ascii "Game Paused\0"
LC34:
	.ascii "No %s\0"
LC35:
	.ascii "Order the full version\0"
LC36:
	.ascii "source/sw/src/panel.cpp\0"
LC40:
	.ascii "PCM lockdepth < 0!\0"
	.align 4
LC41:
	.ascii "source/audiolib/include/multivoc.h\0"
	.align 4
LC42:
	.ascii "Owner == -1 on looping sound with follow flag set!\12p->num = %d\0"
LC43:
	.ascii "source/sw/src/game.h\0"
	.align 4
LC44:
	.ascii "Owner == -1 on looping sound, no follow flag.\12p->num = %d\0"
	.text
	.p2align 4
	.globl	__Z12domovethingsv
	.def	__Z12domovethingsv;	.scl	2;	.type	32;	.endef
__Z12domovethingsv:
LFB113:
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
	subl	$372, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_movefifoplc, %edx
	movl	_connecthead, %ecx
	leal	1(%edx), %eax
	cmpw	$-1, %cx
	je	L1100
	movzbl	%dl, %edx
	movl	%eax, 64(%esp)
	movl	%ecx, %ebx
	leal	(%edx,%edx,2), %esi
	sall	$3, %esi
L1101:
	movswl	%cx, %edi
	imull	$24124, %edi, %ecx
	leal	_Player(%ecx), %edx
	leal	_Player+416(%ecx,%esi), %ecx
	movl	4(%ecx), %eax
	movl	%eax, 396(%edx)
	movl	8(%ecx), %eax
	movl	%eax, 400(%edx)
	movl	12(%ecx), %eax
	movl	%eax, 404(%edx)
	movl	16(%ecx), %eax
	movl	%eax, 408(%edx)
	movl	20(%ecx), %eax
	movl	%eax, 412(%edx)
	movl	24(%ecx), %ecx
	movl	%ecx, 416(%edx)
	movl	_connectpoint2(,%edi,4), %edx
	movl	%edx, %ecx
	cmpw	$-1, %dx
	jne	L1101
	movl	64(%esp), %eax
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	%eax, _movefifoplc
	jmp	L1110
L1106:
	cmpl	%esi, %ecx
	je	L1109
	addl	$_Player+23262, %eax
	movl	$LC31, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$_ds, (%esp)
	call	_sprintf
	movl	$_ds, %eax
	call	__Z12adduserquotePKc
L1109:
	movl	%ebx, %edi
	movl	$1, %edx
L1105:
	movl	_connectpoint2(,%esi,4), %eax
	movl	%eax, %ebx
	cmpw	$-1, %ax
	je	L1813
L1110:
	movswl	%bx, %esi
	imull	$24124, %esi, %eax
	testb	$-128, _Player+418(%eax)
	je	L1105
	movl	_myconnectindex, %ecx
	cmpb	$0, _NetBroadcastMode
	jne	L1106
	cmpl	%esi, _connecthead
	jne	L1106
	cmpl	%esi, %ecx
	je	L1105
L1114:
	movb	$1, _QuitFlag
	movb	$0, _ready2send
L1099:
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
L1813:
	.cfi_restore_state
	testw	%dx, %dx
	jne	L1814
L1103:
	movl	$_user_quote_time, %ebx
	movl	$_user_quote_time+12, %esi
L1121:
	movzwl	(%ebx), %eax
	testw	%ax, %ax
	je	L1120
	subl	$1, %eax
	movl	_myconnectindex, %edx
	movw	%ax, (%ebx)
	testw	%ax, %ax
	jle	L1815
L1120:
	addl	$2, %ebx
	cmpl	%ebx, %esi
	jne	L1121
	movl	_quotebotgoal, %edx
	cmpb	$3, _gs+12
	jg	L1123
	movl	_quotebot, %ecx
	movl	%edx, %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
/APP
 # 7905 "source/sw/src/player.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$16, %eax
	jle	L1816
L1123:
	movl	%edx, _quotebot
	cmpb	$0, _CommEnabled
	je	L1125
	cmpl	$1, _numplayers
	jle	L1125
	imull	$24124, _myconnectindex, %esi
	xorl	%edi, %edi
	movl	$__Z10RandomSyncv, %eax
	addl	$_Player, %esi
L1126:
	movl	6572(%esi), %ebx
	addl	$1, %edi
	call	*%eax
	andl	$1023, %ebx
	movl	%eax, %edx
	sall	$4, %ebx
	leal	(%esi,%ebx), %eax
	movb	%dl, 6575(%edi,%eax)
	movl	__ZL8SyncFunc(,%edi,4), %eax
	testl	%eax, %eax
	jne	L1126
	addl	$1, 6572(%esi)
L1125:
	addl	$1, _MoveThingsCount
	movzwl	_connecthead, %eax
	cmpb	$0, _DemoRecording
	je	L1129
	cmpw	$-1, %ax
	jne	L1128
	jmp	L1129
	.p2align 4,,10
	.p2align 3
L1819:
	movswl	_DemoDebugBufferMax, %eax
	cmpl	%edx, %eax
	jle	L1817
L1131:
	movl	_connectpoint2(,%ebx,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	je	L1818
L1128:
	movswl	%ax, %ebx
	movl	_DemoRecCnt, %edx
	imull	$24124, %ebx, %eax
	leal	(%edx,%edx,2), %esi
	addl	$1, %edx
	cmpb	$0, _DemoDebugMode
	leal	_DemoBuffer(,%esi,8), %ecx
	movl	%edx, _DemoRecCnt
	movl	_Player+396(%eax), %edi
	movl	%edi, _DemoBuffer(,%esi,8)
	movl	_Player+400(%eax), %esi
	movl	%esi, 4(%ecx)
	movl	_Player+404(%eax), %esi
	movl	%esi, 8(%ecx)
	movl	_Player+408(%eax), %esi
	movl	%esi, 12(%ecx)
	movl	_Player+412(%eax), %esi
	movl	_Player+416(%eax), %eax
	movl	%esi, 16(%ecx)
	movl	%eax, 20(%ecx)
	jne	L1819
	cmpl	$2047, %edx
	jle	L1131
	movl	_DemoFileOut, %edx
	movl	$2048, %eax
	call	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0
	movl	$49152, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	call	_memset
	movl	_connectpoint2(,%ebx,4), %edx
	movl	$0, _DemoRecCnt
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L1128
L1818:
	movzwl	_connecthead, %eax
L1129:
	movl	_numinterpolations, %edx
	addl	$3, _totalsynctics
	subl	$1, %edx
	js	L1132
L1133:
	movl	_curipos(,%edx,4), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, _oldipos(,%edx,4)
	subl	$1, %edx
	jnb	L1133
L1132:
	movswl	_short_numinterpolations, %edx
	subl	$1, %edx
	js	L1134
L1135:
	movl	_short_curipos(,%edx,4), %ecx
	movzwl	(%ecx), %ecx
	movw	%cx, _short_oldipos(%edx,%edx)
	subl	$1, %edx
	jnb	L1135
L1134:
	movw	%ax, 64(%esp)
	movl	$__ZL13so_interpdata.lto_priv.0, %ebx
	movl	$_SectorObject, %esi
	cmpb	$0, _gs+24
	movzbl	_CommEnabled, %edx
	je	L1147
	testb	%dl, %dl
	jne	L1147
L1137:
	cmpl	$2147483647, 180(%esi)
	je	L1149
	movl	458756(%ebx), %eax
	cmpl	458760(%ebx), %eax
	jge	L1150
	addl	$3, %eax
	movl	%eax, 458756(%ebx)
L1150:
	movl	458752(%ebx), %eax
	testl	%eax, %eax
	jle	L1149
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	jmp	L1154
	.p2align 4,,10
	.p2align 3
L1820:
	movl	_User(,%edi,4), %edi
	testl	%edi, %edi
	je	L1152
	movw	$0, 286(%edi)
L1152:
	movl	(%eax), %edi
	movswl	(%edi), %edi
L1153:
	movl	%edi, 4(%eax)
	addl	$1, %ecx
	addl	$28, %eax
	cmpl	458752(%ebx), %ecx
	jge	L1149
L1154:
	movl	24(%eax), %edi
	testl	%edi, %edi
	jns	L1820
	movl	(%eax), %edi
	movl	(%edi), %edi
	jmp	L1153
L1138:
	addl	$6028, %esi
	addl	$458768, %ebx
	cmpl	$_SectorObject+120560, %esi
	je	L1794
L1147:
	cmpl	$2147483647, 180(%esi)
	je	L1138
	movl	458756(%ebx), %eax
	cmpl	%eax, 458760(%ebx)
	jle	L1146
	addl	$3, %eax
	movl	%eax, 458756(%ebx)
L1146:
	movl	458752(%ebx), %eax
	testl	%eax, %eax
	jle	L1138
	movl	%ebx, %eax
	xorl	%edi, %edi
	jmp	L1142
	.p2align 4,,10
	.p2align 3
L1140:
	movl	_User(,%ecx,4), %ecx
	testl	%ecx, %ecx
	je	L1145
	movw	$0, 286(%ecx)
L1145:
	movl	(%eax), %ecx
	movl	$0, 20(%eax)
	movswl	(%ecx), %ecx
L1143:
	movl	%ecx, 4(%eax)
	addl	$1, %edi
	addl	$28, %eax
	movl	%ecx, -12(%eax)
	movl	%ecx, -16(%eax)
	cmpl	%edi, 458752(%ebx)
	jle	L1138
L1142:
	movl	24(%eax), %ecx
	testl	%ecx, %ecx
	jns	L1140
	movl	(%eax), %ecx
	movl	(%ecx), %ecx
	jmp	L1143
L1149:
	addl	$6028, %esi
	addl	$458768, %ebx
	cmpl	$_SectorObject+120560, %esi
	jne	L1137
L1794:
	movzbl	_MoveSkip8, %edi
	movswl	64(%esp), %eax
	leal	1(%edi), %ecx
	movzbl	_MoveSkip4, %edi
	andl	$7, %ecx
	addl	$1, %edi
	movb	%cl, _MoveSkip8
	andl	$3, %edi
	movl	%edi, %ebx
	movb	%bl, _MoveSkip4
	movzbl	_MoveSkip2, %ebx
	movl	%ebx, %esi
	xorl	$1, %esi
	movl	%esi, %ecx
	movb	%cl, _MoveSkip2
	cmpw	$-1, %ax
	je	L1155
	movw	%ax, 64(%esp)
	movl	%eax, %esi
	movl	%edi, %ecx
L1156:
	movswl	%si, %edi
	imull	$24124, %edi, %esi
	movl	_connectpoint2(,%edi,4), %edi
	movl	_Player+300(%esi), %eax
	movss	_Player+8(%esi), %xmm1
	movss	_Player+288(%esi), %xmm3
	movss	_Player(%esi), %xmm0
	movss	_Player+4(%esi), %xmm4
	movl	%eax, _Player+28(%esi)
	unpcklps	%xmm3, %xmm1
	movl	_Player+388(%esi), %eax
	unpcklps	%xmm4, %xmm0
	movlhps	%xmm1, %xmm0
	movl	%eax, _Player+392(%esi)
	movups	%xmm0, _Player+12(%esi)
	movl	%edi, %esi
	cmpw	$-1, %di
	jne	L1156
	movswl	64(%esp), %eax
	testb	%cl, %cl
	je	L1158
	cmpb	$1, %bl
	je	L1795
	testb	%dl, %dl
	je	L1192
	jmp	L1185
L1815:
	imull	$24124, %edx, %eax
	addl	$_Player, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	xorl	%edx, %edx
	movw	%dx, (%ebx)
	jmp	L1120
L1155:
	movl	%edi, %ecx
	testb	%cl, %cl
	jne	L1821
L1158:
	movl	$_headspritestat+8, 64(%esp)
	movl	_sprite, %esi
	movl	$_headspritestat, %ecx
	movw	%ax, 60(%esp)
	movl	%ebx, %eax
L1164:
	movzwl	12(%ecx), %edi
	cmpw	$-1, %di
	je	L1166
	movb	%al, 56(%esp)
	movl	%ecx, 52(%esp)
L1163:
	movswl	%di, %ebx
	imull	$44, %ebx, %ecx
	movzwl	_nextspritestat(%ebx,%ebx), %edi
	movl	_User(,%ebx,4), %ebx
	addl	%esi, %ecx
	movl	(%ecx), %eax
	movl	%eax, 56(%ebx)
	movl	4(%ecx), %eax
	movl	%eax, 60(%ebx)
	movl	8(%ecx), %ecx
	movl	%ecx, 64(%ebx)
	cmpw	$-1, %di
	jne	L1163
	movzbl	56(%esp), %eax
	movl	52(%esp), %ecx
L1166:
	addl	$2, %ecx
	movl	$_headspritestat+8, %edi
	cmpl	%ecx, %edi
	jne	L1164
	cmpb	$1, %al
	movswl	60(%esp), %eax
	je	L1159
	testb	%dl, %dl
	jne	L1822
L1173:
	cmpw	$-1, %ax
	jne	L1192
L1161:
	cmpb	$0, _GamePaused
	je	L1193
L1438:
	cmpb	$0, _ReloadPrompt
	je	L1099
L1193:
	addl	$3, _PlayClock
	movl	$3, (%esp)
	call	__Z6DoAnimi
	call	__Z8DoSectorv.part.0
	movzwl	_headspritestat+186, %ebx
	cmpw	$-1, %bx
	jne	L1194
	jmp	L1195
	.p2align 4,,10
	.p2align 3
L1199:
	movl	%eax, _spritechanged(,%edx,4)
	movswl	38(%ecx), %eax
	sarl	%eax
	cmpw	28(%ecx), %ax
	jle	L1196
	movw	%ax, 38(%ecx)
L1197:
	cmpw	$-1, %bx
	je	L1195
L1194:
	movswl	%bx, %eax
	movl	_sprite, %edi
	movzwl	_nextspritestat(%eax,%eax), %ebx
	movl	%eax, %esi
	imull	$44, %eax, %eax
	leal	38(%eax), %edx
	leal	(%edi,%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 18(%ecx)
	jne	L1199
	movl	%eax, _spritechanged(,%edx,4)
	movzwl	_NormalVisibility, %edi
	salw	38(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	movzwl	38(%ecx), %eax
	addl	$1, %eax
	movw	%ax, 38(%ecx)
	cmpw	%di, %ax
	jl	L1197
	addl	$1, _spritechanged(,%edx,4)
	movswl	30(%ecx), %eax
	movw	%di, 38(%ecx)
	testw	%ax, %ax
	js	L1198
	movl	_User(,%eax,4), %eax
	andl	$-8388609, 72(%eax)
L1198:
	movswl	%si, %eax
	call	__Z10KillSprites
	cmpw	$-1, %bx
	jne	L1194
L1195:
	movzbl	_MoveSkip4, %edi
	movl	%edi, %eax
	testb	%al, %al
	je	L1823
L1201:
	call	__Z13SpriteControlv.part.0
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L1209
	movl	$_ps_ChopsAttack1, 64(%esp)
	movss	64(%esp), %xmm1
	movss	LC45, %xmm0
	movaps	%xmm1, %xmm2
	unpcklps	%xmm1, %xmm0
	unpcklps	%xmm1, %xmm2
	movaps	%xmm0, %xmm5
	movlhps	%xmm2, %xmm5
	movups	%xmm5, 20(%esp)
L1337:
	movl	%eax, 44(%esp)
	imull	$24124, %eax, %eax
	leal	_Player(%eax), %edi
	movl	%eax, 48(%esp)
	movl	%edi, _GlobPlayerP
	testb	$2, 22968(%edi)
	je	L1824
L1210:
	movl	%edi, %eax
	call	__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct
	movzbl	_UsingMenus, %eax
	orb	_HelpInputMode, %al
	jne	L1267
	movl	22968(%edi), %eax
	testb	$2, %al
	jne	L1267
	movl	22984(%edi), %esi
	testl	%esi, %esi
	je	L1825
L1267:
	movl	22972(%edi), %ebx
	movl	%ebx, %eax
	andl	$-7, %eax
	movl	%eax, 22972(%edi)
	movl	%edi, (%esp)
	call	*22964(%edi)
	cmpb	$0, _PedanticMode
	jne	L1277
	testb	$2, 22968(%edi)
	jne	L1277
	movl	22972(%edi), %esi
	andl	%esi, %ebx
	testb	$2, %bl
	jne	L1826
L1278:
	andl	$4, %ebx
	jne	L1827
L1279:
	movl	%esi, 22972(%edi)
L1277:
	movl	%edi, %eax
	call	__Z18UpdatePlayerSpriteP12PLAYERstruct
	movl	22988(%edi), %esi
	leal	22988(%edi), %eax
	movl	%eax, 64(%esp)
	cmpl	%esi, %eax
	je	L1280
	movl	(%esi), %eax
	movl	%edi, 40(%esp)
	movl	%eax, %edi
	movl	12(%esi), %eax
	testl	%eax, %eax
	je	L1281
	.p2align 4
	.p2align 3
L1829:
	movzwl	228(%esi), %edx
	addl	$3, %edx
	movw	%dx, 228(%esi)
	movl	4(%eax), %ecx
	movswl	%dx, %ebx
	cmpl	%ecx, %ebx
	jl	L1282
	.p2align 4
	.p2align 3
L1284:
	subl	%ecx, %edx
	movw	%dx, 228(%esi)
	movl	12(%eax), %eax
	movl	%eax, 12(%esi)
	testb	$-128, 18(%eax)
	je	L1283
	movl	%esi, (%esp)
	call	*8(%eax)
	movl	12(%esi), %eax
	movzwl	228(%esi), %edx
	movl	12(%eax), %eax
	movl	%eax, 12(%esi)
L1283:
	movl	4(%eax), %ecx
	movswl	%dx, %ebx
	cmpl	%ebx, %ecx
	jle	L1284
L1282:
	movzwl	(%eax), %edx
	movl	%edi, 60(%esp)
	leal	52(%esi), %ebx
	leal	180(%esi), %ecx
	movl	%eax, 56(%esp)
	movw	%dx, 178(%esi)
	movl	%esi, 52(%esp)
	.p2align 4
	.p2align 3
L1288:
	movl	-8(%ebx), %eax
	testl	%eax, %eax
	je	L1285
	movzwl	(%ebx), %edi
	leal	3(%edi), %edx
	movw	%dx, (%ebx)
	jmp	L1286
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1287:
	subl	%esi, %edx
	movw	%dx, (%ebx)
	movl	12(%eax), %eax
	movl	%eax, -8(%ebx)
	testl	%eax, %eax
	je	L1285
L1286:
	movl	4(%eax), %esi
	movswl	%dx, %edi
	cmpl	%edi, %esi
	jle	L1287
L1285:
	addl	$16, %ebx
	cmpl	%ecx, %ebx
	jne	L1288
	movl	56(%esp), %eax
	movl	60(%esp), %edi
	movl	52(%esp), %esi
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1289
L1804:
	movl	%esi, (%esp)
	call	*%eax
L1289:
	movl	(%edi), %eax
	movl	%edi, %esi
	movl	64(%esp), %edi
	cmpl	%edi, %esi
	je	L1828
L1454:
	movl	%eax, %edi
	movl	12(%esi), %eax
	testl	%eax, %eax
	jne	L1829
L1281:
	movl	172(%esi), %eax
	testl	%eax, %eax
	jne	L1804
	movl	(%edi), %eax
	movl	%edi, %esi
	movl	64(%esp), %edi
	cmpl	%edi, %esi
	jne	L1454
L1828:
	movl	40(%esp), %edi
L1280:
	movswl	348(%edi), %esi
	movl	_User(,%esi,4), %ebx
	movl	76(%ebx), %eax
	leal	3(%eax), %edx
	movl	%edx, 76(%ebx)
L1291:
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	jmp	L1296
	.p2align 4,,10
	.p2align 3
L1293:
	cmpw	$0, (%ecx)
	je	L1295
	movl	76(%ebx), %edx
L1296:
	movzwl	%ax, %eax
	cmpl	%edx, %eax
	jg	L1830
	subl	%eax, %edx
	movl	%edx, 76(%ebx)
	movl	12(%ecx), %ecx
L1292:
	movl	%ecx, 16(%ebx)
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L1293
	movl	%esi, (%esp)
	call	*8(%ecx)
	movl	16(%ebx), %ecx
	movl	4(%ecx), %eax
	testl	$65536, %eax
	je	L1293
	movl	12(%ecx), %ecx
	jmp	L1292
L1831:
	testb	$-128, %cl
	je	L1191
	xorl	$512, _Player+22968(%edx)
	andb	$127, %cl
	movl	%ecx, _Player+22976(%edx)
L1191:
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	je	L1161
L1192:
	imull	$24124, %eax, %edx
	movl	_Player+22976(%edx), %ecx
	testb	$-128, _Player+416(%edx)
	jne	L1831
	orb	$-128, %cl
	movl	%ecx, _Player+22976(%edx)
	jmp	L1191
L1196:
	movzwl	28(%ecx), %eax
	movw	%ax, 38(%ecx)
	leal	18(%ecx), %eax
	subl	%edi, %eax
	movl	$-1171354717, %edi
	mull	%edi
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	xorb	$1, 18(%ecx)
	jmp	L1197
L1830:
	imull	$44, %esi, %eax
	movl	_sprite, %edx
	addl	%eax, %edx
	movl	%edx, 64(%esp)
	leal	14(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpw	$1, 80(%ebx)
	jle	L1298
	movl	20(%ebx), %ecx
	movl	(%ecx), %ecx
	movzwl	(%ecx), %ecx
L1299:
	movl	%eax, _spritechanged(,%edx,4)
	movl	64(%esp), %eax
	movw	%cx, 14(%eax)
	movl	16(%ebx), %eax
	testb	$2, 6(%eax)
	je	L1300
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L1300
	movl	%esi, (%esp)
	call	*%eax
L1300:
	movl	%edi, %eax
	call	__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct
	cmpw	$0, 23122(%edi)
	jne	L1832
L1301:
	movl	_InventoryData, %ecx
	testl	%ecx, %ecx
	je	L1304
	xorl	%esi, %esi
	movl	$_InventoryData, %ebx
	jmp	L1312
	.p2align 4,,10
	.p2align 3
L1834:
	movswl	%si, %eax
	cmpb	$0, 23223(%edi,%eax)
	je	L1306
	leal	(%edi,%eax,2), %ecx
	movzwl	23188(%ecx), %edx
	subl	$3, %edx
	movw	%dx, 23188(%ecx)
	testw	%dx, %dx
	jle	L1833
	.p2align 4
	.p2align 3
L1306:
	movl	28(%ebx), %eax
	addl	$28, %ebx
	addl	$1, %esi
	testl	%eax, %eax
	je	L1304
L1312:
	movzwl	24(%ebx), %eax
	testb	$2, %al
	jne	L1834
	testb	$1, %al
	je	L1306
	movswl	%si, %ecx
	cmpb	$0, 23223(%edi,%ecx)
	je	L1306
	leal	(%edi,%ecx,2), %edx
	movzwl	23188(%edx), %eax
	subl	$3, %eax
	movw	%ax, 23188(%edx)
	testw	%ax, %ax
	jg	L1306
	movzwl	23202(%edx), %eax
	subw	16(%ebx), %ax
	movw	%ax, 23202(%edx)
	testw	%ax, %ax
	jle	L1835
	movl	$120, %eax
	movw	%ax, 23188(%edx)
	movb	$0, 23223(%edi,%ecx)
L1311:
	movswl	23120(%edi), %edx
	movl	%edi, %eax
	addl	$28, %ebx
	addl	$1, %esi
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	L1312
L1304:
	movl	22968(%edi), %eax
	testb	$4, %ah
	jne	L1836
L1313:
	testl	$16777216, %eax
	jne	L1316
	movl	148(%edi), %ecx
	testl	%ecx, %ecx
	je	L1316
	movl	152(%edi), %edx
	testl	%edx, %edx
	je	L1316
	movl	136(%edi), %edx
	subl	132(%edi), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovns	%ecx, %edx
	cmpl	$5119, %edx
	jg	L1316
	testb	$2, %al
	je	L1837
L1316:
	movzwl	23300(%edi), %eax
	testw	%ax, %ax
	jle	L1318
	cmpb	$0, _MoveSkip4
	je	L1838
L1318:
	cmpl	$12000, 172(%edi)
	jle	L1335
	movzwl	264(%edi), %eax
	addl	$14, %eax
	andw	$2047, %ax
	movw	%ax, 264(%edi)
L1335:
	movzwl	266(%edi), %eax
	testw	%ax, %ax
	jle	L1317
	subl	$3, %eax
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovle	%edx, %eax
	movw	%ax, 266(%edi)
L1317:
	movl	44(%esp), %eax
	movl	_connectpoint2(,%eax,4), %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	jne	L1337
L1209:
	movzbl	_ExitLevel, %ebx
	testb	%bl, %bl
	jne	L1338
	cmpw	$1, _gNet+12
	jne	L1338
	movl	_gNet, %esi
	movl	_gNet+4, %edx
	testl	%esi, %esi
	je	L1339
	movl	_connecthead, %ecx
	movswl	%cx, %eax
	cmpw	$-1, %cx
	je	L1339
L1340:
	imull	$24124, %eax, %ecx
	movswl	_Player+23236(%ecx), %ecx
	cmpl	%ecx, %esi
	setle	%cl
	orl	%ecx, %ebx
	movl	_connectpoint2(,%eax,4), %ecx
	movswl	%cx, %eax
	cmpw	$-1, %cx
	jne	L1340
	testl	%edx, %edx
	jne	L1839
L1343:
	testb	%bl, %bl
	je	L1338
	movl	_gNet+4, %eax
	movl	%eax, _gNet+8
L1345:
	cmpb	$0, _ScoreQuit
	je	L1346
	cmpb	$0, _DemoPlaying
	jne	L1346
	cmpb	$1, _CommPlayers
	jbe	L1347
	movb	$1, _MultiPlayQuitFlag
L1347:
	movl	_osd, %eax
	movb	$1, _QuitFlag
	andl	$-3, 1172(%eax)
	xorl	%eax, %eax
	call	__Z16OSD_CaptureInputi
	jmp	L1346
	.p2align 4,,10
	.p2align 3
L1339:
	testl	%edx, %edx
	je	L1338
	movl	_gNet+8, %eax
	leal	-3(%eax), %ecx
	movl	$-2004318071, %eax
	imull	%ecx
	movl	%ecx, _gNet+8
	leal	(%edx,%ecx), %eax
	movl	%ecx, %edx
	sarl	$6, %eax
	sarl	$31, %edx
	subl	%edx, %eax
	imull	$120, %eax, %eax
	subl	%eax, %ecx
	cmpl	$3, %ecx
	jg	L1338
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z21PlayerUpdateTimeLimitP12PLAYERstruct
	movl	_gNet+8, %eax
	testl	%eax, %eax
	jg	L1338
	movl	_gNet+4, %eax
	movl	%eax, _gNet+8
L1346:
	movzwl	_Level, %eax
	cmpw	$22, %ax
	jg	L1348
	addl	$1, %eax
	movw	%ax, _Level
L1348:
	movb	$1, _ExitLevel
	movb	$1, _FinishedLevel
L1338:
	movzbl	_MoveSkip8, %eax
	orb	_UsingMenus, %al
	jne	L1349
	movzbl	__ZZ16DoUpdateSounds3DvE9MoveSkip8, %eax
	addl	$1, %eax
	andl	$15, %eax
	movb	%al, __ZZ16DoUpdateSounds3DvE9MoveSkip8
	leal	116(%esp), %eax
L1350:
	xorl	%ebx, %ebx
	movb	$0, 6(%eax)
	leal	372(%esp), %edi
	addl	$8, %eax
	movl	$0, -8(%eax)
	movw	%bx, -4(%eax)
	cmpl	%eax, %edi
	jne	L1350
	movl	_voc3dstart, %esi
	testl	%esi, %esi
	je	L1351
	movl	$0, 60(%esp)
L1416:
	movl	(%esi), %eax
	movl	28(%esi), %edx
	movl	%eax, 56(%esp)
	movl	36(%eax), %eax
	movl	%eax, 64(%esp)
	movzbl	64(%esp), %ebx
	movl	32(%esi), %eax
	andl	$1, %ebx
	movb	%bl, 64(%esp)
	je	L1352
	cmpw	$-1, 48(%esi)
	je	L1840
L1353:
	testb	$2, %dl
	jne	L1355
	testl	%eax, %eax
	jg	L1841
L1357:
	movl	56(%esp), %eax
	andl	$1, %edx
	movl	32(%eax), %ecx
	movl	%ecx, %eax
	jne	L1842
	movl	20(%esi), %edi
	movl	16(%esi), %ebx
	movl	24(%esi), %ecx
	movl	%eax, (%esp)
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z9SoundDistiiii
	movl	%edi, %edx
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	%ecx, 64(%esp)
	call	__Z10SoundAngleii
	movl	64(%esp), %ecx
L1412:
	cmpw	$255, %cx
	jg	L1410
	movl	_NumVoices, %eax
	testl	%eax, %eax
	jle	L1410
	movl	$32, %edx
	movzbl	58(%esi), %ebx
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	xorl	%eax, %eax
	jmp	L1415
L1843:
	cmpw	120(%esp,%eax,8), %cx
	jl	L1414
L1413:
	addl	$1, %eax
	cmpl	%edx, %eax
	jge	L1410
L1415:
	cmpb	122(%esp,%eax,8), %bl
	jb	L1413
	movl	116(%esp,%eax,8), %edi
	testl	%edi, %edi
	jne	L1843
L1414:
	movl	%esi, 116(%esp,%eax,8)
	movw	%cx, 120(%esp,%eax,8)
	movb	%bl, 122(%esp,%eax,8)
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1295:
	movl	12(%ecx), %edx
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	76(%ebx), %edx
	jmp	L1291
L1833:
	movzwl	23202(%ecx), %edx
	subw	16(%ebx), %dx
	movw	%dx, 23202(%ecx)
	testw	%dx, %dx
	jle	L1844
	movl	$120, %eax
	movw	%ax, 23188(%ecx)
	jmp	L1311
L1298:
	movzwl	(%ecx), %ecx
	jmp	L1299
L1844:
	xorl	%edx, %edx
	movw	%dx, 23202(%ecx)
	imull	$28, %eax, %edx
	movl	_InventoryData+8(%edx), %edx
	testl	%edx, %edx
	je	L1308
	movl	%eax, 4(%esp)
	movl	%eax, 64(%esp)
	movl	%edi, (%esp)
	call	*%edx
	movl	64(%esp), %eax
L1308:
	movb	$0, 23223(%edi,%eax)
	jmp	L1311
L1824:
	movswl	348(%edi), %eax
	movl	416(%edi), %esi
	movl	_User(,%eax,4), %ebx
	movl	22976(%edi), %eax
	testl	$67108864, %esi
	je	L1211
	testl	$67108864, %eax
	je	L1212
	andl	$-67108865, %eax
	movl	%eax, 22976(%edi)
	cmpw	$0, 23122(%edi)
	je	L1213
	movl	$240, %eax
	movw	%ax, 23122(%edi)
	jmp	L1214
L1832:
	movl	%edi, %eax
	call	__Z26InventoryBarUpdatePositionP12PLAYERstruct
	movzwl	23122(%edi), %eax
	subl	$3, %eax
	movw	%ax, 23122(%edi)
	testw	%ax, %ax
	jg	L1301
	xorl	%eax, %eax
L1303:
	movl	23124(%edi,%eax,4), %edx
	testl	%edx, %edx
	je	L1302
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movw	%si, 23188(%edi,%eax,2)
	orl	$65536, 204(%edx)
	movl	23124(%edi,%eax,4), %edx
	movw	%cx, 194(%edx)
	movl	$0, 23124(%edi,%eax,4)
L1302:
	addl	$1, %eax
	cmpl	$7, %eax
	jne	L1303
	movl	23152(%edi), %eax
	xorl	%ebx, %ebx
	orl	$65536, 204(%eax)
	imull	$24124, _myconnectindex, %eax
	movl	$0, 23152(%edi)
	movw	%bx, 23122(%edi)
	cmpl	%eax, 48(%esp)
	jne	L1301
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L1301
L1211:
	orl	$67108864, %eax
	movl	%eax, 22976(%edi)
L1212:
	testl	$134217728, %esi
	je	L1216
	testl	$134217728, %eax
	je	L1217
	andl	$-134217729, %eax
	movl	%eax, 22976(%edi)
	cmpw	$0, 23122(%edi)
	je	L1218
	movl	$240, %eax
	movw	%ax, 23122(%edi)
	jmp	L1219
L1836:
	movzwl	314(%edi), %edx
	addw	316(%edi), %dx
	movw	%dx, 316(%edi)
	movswl	%dx, %edx
	movswl	_sintable(%edx,%edx), %ecx
	testw	%cx, %cx
	js	L1845
	movswl	312(%edi), %edx
	imull	%ecx, %edx
	sarl	$14, %edx
L1315:
	movw	%dx, 318(%edi)
	jmp	L1313
L1216:
	orl	$134217728, %eax
	movl	%eax, 22976(%edi)
L1217:
	testl	$536870912, %esi
	je	L1221
	testl	$536870912, %eax
	je	L1222
	movswl	23120(%edi), %edx
	andl	$-536870913, %eax
	movl	%eax, 22976(%edi)
	movl	%edx, 64(%esp)
	imull	$28, %edx, %edx
	movl	_InventoryData+4(%edx), %ecx
	testl	%ecx, %ecx
	je	L1222
	movl	64(%esp), %eax
	cmpb	$0, 23216(%edi,%eax)
	je	L1223
	movl	%edi, (%esp)
	call	*%ecx
	movl	416(%edi), %esi
	movl	22976(%edi), %eax
L1222:
	sarl	$4, %esi
	andw	$7, %si
	je	L1224
	testb	$16, %al
	je	L1225
	andl	$-17, %eax
	movl	%eax, 22976(%edi)
	leal	-1(%esi), %eax
	movw	%ax, 23120(%edi)
	movzwl	%ax, %eax
	imull	$28, %eax, %edx
	movl	_InventoryData+4(%edx), %edx
	testl	%edx, %edx
	je	L1225
	testb	$-128, 22969(%edi)
	jne	L1225
	cmpb	$0, 23216(%edi,%eax)
	jne	L1846
L1225:
	movzbl	24092(%edi), %ecx
	cmpb	$2, %cl
	ja	L1226
	movzwl	23118(%edi), %eax
	testw	%ax, %ax
	je	L1227
	subw	$3, %ax
	movl	$0, %edx
	cmovs	%edx, %eax
	movw	%ax, 23118(%edi)
L1227:
	movl	104(%edi), %eax
	movl	416(%edi), %esi
	testl	%eax, %eax
	je	L1229
	movswl	3214(%eax), %edx
	subl	$96, %edx
	cmpl	$3, %edx
	ja	L1229
	testb	$8, 597(%eax)
	jne	L1847
L1229:
	movl	%esi, %edx
	movl	22976(%edi), %eax
	andw	$15, %dx
	je	L1230
	testb	$1, %al
	jne	L1848
L1231:
	cmpb	$2, 23112(%edi)
	je	L1444
L1265:
	movl	24100(%edi), %eax
	movb	$0, 24104(%edi)
	testl	%eax, %eax
	jg	L1849
L1226:
	cmpb	$0, _Prediction
	jne	L1210
	movl	%edi, %eax
	call	__Z16PlayerOperateEnvP12PLAYERstruct.part.0
	jmp	L1210
L1835:
	xorl	%eax, %eax
	movw	%ax, 23202(%edx)
	imull	$28, %ecx, %eax
	movl	_InventoryData+8(%eax), %eax
	testl	%eax, %eax
	je	L1311
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	*%eax
	jmp	L1311
L1838:
	movswl	_screenpeek, %ebx
	cmpw	$1, %ax
	je	L1850
	movzwl	23298(%edi), %edx
	subl	$1, %eax
	addl	$3, %edx
	cmpw	$4, %dx
	jle	L1851
L1323:
	subl	$5, %edx
	movl	%eax, %ecx
	subl	$1, %eax
	cmpw	$4, %dx
	ja	L1323
	movw	%dx, 23298(%edi)
	movw	%cx, 23300(%edi)
	cmpw	$32, %cx
	jg	L1318
	imull	$24124, %ebx, %esi
	cmpw	$1, %cx
	jle	L1852
	leal	(%ebx,%ebx,2), %ebx
	movl	$2, %edx
	movw	%cx, 52(%esp)
	sall	$8, %ebx
	movl	%esi, 40(%esp)
	leal	_ppalette(%ebx), %eax
	movl	%eax, 64(%esp)
	movl	_rendmode, %eax
	cmpl	$2, %eax
	movl	%eax, 56(%esp)
	movl	$8, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, 60(%esp)
	jmp	L1332
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1854:
	movl	60(%esp), %ebx
	movl	$255, %esi
	addl	%ebx, %eax
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	cmpb	%al, %cl
	cmovbe	%ecx, %eax
	movb	%al, 23304(%edi,%edx)
L1330:
	addl	$1, %edx
	cmpl	$768, %edx
	je	L1853
L1332:
	movl	64(%esp), %esi
	movzbl	23304(%edi,%edx), %eax
	movzbl	(%esi,%edx), %ecx
	cmpb	%cl, %al
	jb	L1854
	cmpb	%al, %cl
	jnb	L1330
	movl	60(%esp), %esi
	subl	%esi, %eax
	movl	$0, %esi
	cmovs	%esi, %eax
	cmpb	%al, %cl
	cmovb	%eax, %ecx
	movb	%cl, 23304(%edi,%edx)
	addl	$1, %edx
	cmpl	$768, %edx
	jne	L1332
L1853:
	movzwl	52(%esp), %ecx
	movl	40(%esp), %esi
	cmpl	%esi, 48(%esp)
	jne	L1318
	cmpl	$2, 56(%esp)
	jle	L1855
	movl	%ecx, %edx
	movl	$32, %eax
	negw	%dx
	cmovs	%ecx, %edx
	movzwl	%dx, %ecx
	subl	%ecx, %eax
	cmpw	$32, %dx
	movl	$0, %edx
	cmove	%edx, %eax
	movzbl	23303(%edi), %edx
	movzbl	__ZL8faderamp.lto_priv.0(,%eax,4), %eax
	leal	(%edx,%edx,2), %ebx
	movzbl	_palette_data+2(%ebx), %ecx
	movzbl	_palette_data+1(%ebx), %edx
	movzbl	_palette_data(%ebx), %ebx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_videoFadePalette
	jmp	L1318
	.p2align 4,,10
	.p2align 3
L1224:
	orl	$16, %eax
	movl	%eax, 22976(%edi)
	jmp	L1225
L1221:
	orl	$536870912, %eax
	movl	%eax, 22976(%edi)
	jmp	L1222
L1417:
	call	__Z14Delete3DSoundsv
L1349:
	cmpb	$0, _PredictionOn
	je	L1425
	cmpb	$0, _CommEnabled
	je	L1425
	movl	_movefifoplc, %eax
	movl	_myconnectindex, %edx
	subl	$1, %eax
	imull	$24124, %edx, %esi
	movzbl	%al, %eax
	imull	$28, %eax, %eax
	movl	_Player+300(%esi), %edi
	leal	_Predict(%eax), %ebx
	cmpl	%edi, _Predict+20(%eax)
	jne	L1426
	movl	_Player(%esi), %edi
	cmpl	%edi, _Predict(%eax)
	je	L1856
L1426:
	imull	$24124, %edx, %eax
	addl	$_Player, %eax
	call	__Z14InitPredictionP12PLAYERstruct.part.0
	movl	_myconnectindex, %eax
	movl	_movefifoplc, %edx
	imull	$24124, %eax, %ecx
	movl	%edx, _predictmovefifoplc
	cmpl	_Player+6564(%ecx), %edx
	jnb	L1425
L1428:
	cmpb	$0, _PredictionOn
	je	L1427
	movl	$_PredictPlayer, %eax
	call	__Z12DoPredictionP12PLAYERstruct.part.0
	movl	_myconnectindex, %eax
L1427:
	imull	$24124, %eax, %edx
	movl	_Player+6564(%edx), %edi
	cmpl	%edi, _predictmovefifoplc
	jb	L1428
L1425:
	movl	_FinishTimer, %eax
	testl	%eax, %eax
	je	L1099
	subl	$3, %eax
	testl	%eax, %eax
	jle	L1429
	movl	%eax, _FinishTimer
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
L1230:
	.cfi_restore_state
	orl	$1, %eax
	movl	%eax, 22976(%edi)
	cmpb	$2, 23112(%edi)
	jne	L1265
L1444:
	movl	23068(%edi), %eax
	cmpl	%eax, 23048(%edi)
	jne	L1265
	jmp	L1226
L1817:
	movl	$LC32, 4(%esp)
	movl	$_DemoFileName, (%esp)
	call	_fopen
	movl	%eax, %edx
	movl	%eax, _DemoFileOut
	movswl	_DemoDebugBufferMax, %eax
	call	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0
	movswl	_DemoDebugBufferMax, %eax
	movl	$-1, 4(%esp)
	movl	$_DemoBuffer, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	_DemoFileOut, %eax
	movl	%eax, (%esp)
	call	_fclose
	movl	$0, _DemoRecCnt
	jmp	L1131
L1845:
	andb	$-5, %ah
	xorl	%edx, %edx
	movl	%eax, 22968(%edi)
	jmp	L1315
L1827:
	leal	288(%edi), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z15DoPlayerHorizonP12PLAYERstructPii
	jmp	L1279
L1826:
	leal	300(%edi), %edx
	xorl	%ecx, %ecx
	movl	%edi, %eax
	call	__Z12DoPlayerTurnP12PLAYERstructPii
	jmp	L1278
L1849:
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1857
L1266:
	movl	$0, 24100(%edi)
	jmp	L1226
L1848:
	andl	$-2, %eax
	movl	%eax, 22976(%edi)
	leal	-1(%edx), %eax
	cmpw	$4, %dx
	je	L1232
	movb	$2, 24092(%edi)
	cmpw	$14, %ax
	ja	L1231
	movzwl	%ax, %eax
	jmp	*L1234(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1234:
	.long	L1244
	.long	L1243
	.long	L1242
	.long	L1231
	.long	L1241
	.long	L1240
	.long	L1239
	.long	L1238
	.long	L1237
	.long	L1236
	.long	L1231
	.long	L1231
	.long	L1231
	.long	L1235
	.long	L1233
	.text
L1795:
	movl	$_headspritestat+8, 64(%esp)
	movl	_sprite, %esi
L1159:
	movl	$_headspritestat, %edi
L1171:
	movzwl	4(%edi), %ebx
	cmpw	$-1, %bx
	je	L1172
	movw	%ax, 60(%esp)
	movb	%dl, 56(%esp)
L1170:
	movswl	%bx, %ecx
	imull	$44, %ecx, %eax
	movzwl	_nextspritestat(%ecx,%ecx), %ebx
	movl	_User(,%ecx,4), %ecx
	addl	%esi, %eax
	movl	(%eax), %edx
	movl	%edx, 56(%ecx)
	movl	4(%eax), %edx
	movl	%edx, 60(%ecx)
	movl	8(%eax), %eax
	movl	%eax, 64(%ecx)
	cmpw	$-1, %bx
	jne	L1170
	movswl	60(%esp), %eax
	movzbl	56(%esp), %edx
L1172:
	addl	$2, %edi
	cmpl	%edi, 64(%esp)
	jne	L1171
	testb	%dl, %dl
	je	L1173
L1822:
	cmpw	$-1, %ax
	jne	L1185
L1160:
	movl	_FlagCaptureWinner, %eax
	testl	%eax, %eax
	jne	L1186
	movb	$0, __ZZ14PauseMultiPlayvE23FlagCapturePauseApplied
	movswl	_connecthead, %eax
L1187:
	cmpw	$-1, %ax
	je	L1161
L1437:
	cmpb	$0, _CommEnabled
	jne	L1161
	jmp	L1192
	.p2align 4,,10
	.p2align 3
L1218:
	movl	%edi, %eax
	call	__Z17SpawnInventoryBarP12PLAYERstruct.part.0
L1219:
	movzwl	23120(%edi), %eax
	leal	1(%eax), %edx
	movl	%edi, %eax
	movswl	%dx, %edx
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movswl	23120(%edi), %eax
	imull	$28, %eax, %eax
	movl	_InventoryData(%eax), %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	%edi, %eax
	call	__Z26InventoryBarUpdatePositionP12PLAYERstruct
	imull	$24124, _myconnectindex, %eax
	cmpl	%eax, 48(%esp)
	je	L1220
L1798:
	movl	416(%edi), %esi
	movl	22976(%edi), %eax
	jmp	L1217
L1847:
	andl	$131072, %esi
	je	L1226
	testb	$2, 22978(%edi)
	je	L1226
	cmpw	$0, 23118(%edi)
	jne	L1226
	movl	%edi, (%esp)
	call	__Z11InitSobjGunP12PLAYERstruct
	jmp	L1226
L1852:
	xorl	%eax, %eax
	movb	$0, 23303(%edi)
	movw	%ax, 23300(%edi)
	cmpl	%esi, 48(%esp)
	jne	L1318
L1811:
	cmpl	$2, _rendmode
	jle	L1858
	call	_videoFadePalette.constprop.0
L1326:
	leal	23304(%edi), %eax
	movl	$768, 8(%esp)
	movl	$_palette_data, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	%edi, %eax
	call	__Z19DoPlayerDivePaletteP12PLAYERstruct
	movl	%edi, %eax
	call	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct
	jmp	L1318
L1213:
	movl	%edi, %eax
	call	__Z17SpawnInventoryBarP12PLAYERstruct.part.0
L1214:
	movzwl	23120(%edi), %eax
	leal	-1(%eax), %edx
	movl	%edi, %eax
	movswl	%dx, %edx
	call	__Z21PlayerUpdateInventoryP12PLAYERstructs
	movswl	23120(%edi), %eax
	imull	$28, %eax, %eax
	movl	_InventoryData(%eax), %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	%edi, %eax
	call	__Z26InventoryBarUpdatePositionP12PLAYERstruct
	imull	$24124, _myconnectindex, %eax
	cmpl	%eax, 48(%esp)
	je	L1215
L1797:
	movl	416(%edi), %esi
	movl	22976(%edi), %eax
	jmp	L1212
L1816:
/APP
 # 7906 "source/sw/src/player.cpp" 1
	addl %ebx, %ebx; sbbl %eax, %eax; cmpl %ebx, %eax; adcb $0, %al
 # 0 "" 2
/NO_APP
	leal	(%ecx,%eax), %edx
	jmp	L1123
L1429:
	movl	$0, _FinishTimer
	movb	$1, _ExitLevel
	movb	$1, _FinishedLevel
	jmp	L1099
L1860:
	testb	$2, %ah
	je	L1175
	andb	$-3, %ah
	xorb	$1, _GamePaused
	movl	%eax, _Player+22976(%edx)
	je	L1176
	leal	116(%esp), %ecx
	leal	68(%esp), %edx
	movl	$LC33, %eax
	call	__Z17MNU_MeasureStringPKcPsS1_
	movl	_FlagCaptureWinner, %ecx
	testl	%ecx, %ecx
	je	L1859
L1177:
	movzbl	_PredictionOn, %eax
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %edx
	movb	$0, _PredictionOn
	movb	%al, __ZZ14PauseMultiPlayvE14SavePrediction
	testl	%edx, %edx
	je	L1175
	movl	$0, __ZL16_MIDI_SongActive.lto_priv.0
	call	__Z16MIDI_AllNotesOffv.isra.0
L1175:
	movl	_connectpoint2(,%edi,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	je	L1160
L1185:
	movswl	%ax, %edi
	imull	$24124, %edi, %edx
	movl	_Player+22976(%edx), %eax
	testb	$2, _Player+417(%edx)
	jne	L1860
	orb	$2, %ah
	movl	%eax, _Player+22976(%edx)
	jmp	L1175
L1840:
	testb	$16, %dl
	jne	L1353
	orl	$2, %edx
	movl	%edx, 28(%esi)
L1355:
	testl	%eax, %eax
	jg	L1861
L1367:
	movb	$1, 68(%esi)
L1410:
	movl	44(%esi), %esi
	testl	%esi, %esi
	jne	L1416
L1351:
	movl	_NumVoices, %edx
	testl	%edx, %edx
	jle	L1417
	xorl	%edi, %edi
	jmp	L1424
L1863:
	cmpw	$-1, %ax
	je	L1862
L1419:
	movw	%ax, _SoundSpriteNum
	movl	8(%ebx), %ecx
	movb	$1, _Use_SoundSpriteNum
	movl	4(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	12(%ebx), %edx
L1805:
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%esi, %eax
	addl	$1, %edi
	call	__Z9PlaySoundiPiS_S_i
	movzwl	48(%ebx), %edx
	movl	_voc3dend, %eax
	movw	%dx, 48(%eax)
	movl	$-1, %eax
	movl	$32, %edx
	movw	%ax, _SoundSpriteNum
	movl	_NumVoices, %eax
	movb	$1, 68(%ebx)
	cmpl	%edx, %eax
	movb	$0, _Use_SoundSpriteNum
	cmovg	%edx, %eax
	cmpl	%eax, %edi
	jge	L1417
L1424:
	movl	116(%esp,%edi,8), %ebx
	testl	%ebx, %ebx
	je	L1417
	movl	28(%ebx), %edx
	movzwl	48(%ebx), %eax
	movl	52(%ebx), %esi
	testb	$1, %dl
	jne	L1863
	cmpw	$-1, %ax
	je	L1864
L1422:
	movw	%ax, _SoundSpriteNum
	leal	20(%ebx), %ecx
	leal	16(%ebx), %eax
	movb	$1, _Use_SoundSpriteNum
	movl	%edx, 4(%esp)
	leal	24(%ebx), %edx
	jmp	L1805
L1352:
	testb	$2, %dl
	jne	L1355
	testl	%eax, %eax
	jg	L1865
L1364:
	andl	$32, %edx
	je	L1367
	movl	60(%esi), %edi
	leal	3(%edi), %edx
	movl	%edx, 60(%esi)
	cmpl	64(%esi), %edx
	jl	L1410
	movl	_MV_Installed, %ebx
	testl	%eax, %eax
	jg	L1866
L1369:
	movups	LC37, %xmm0
	movl	52(%esi), %edx
	leal	68(%esp), %eax
	movups	%xmm0, 68(%esp)
	movups	LC38, %xmm0
	movups	%xmm0, 84(%esp)
	movups	LC39, %xmm0
	movups	%xmm0, 100(%esp)
L1374:
	cmpl	(%eax), %edx
	je	L1867
	addl	$4, %eax
	leal	116(%esp), %edi
	cmpl	%edi, %eax
	jne	L1374
L1373:
	movl	%edx, 52(%esi)
	testl	%ebx, %ebx
	je	L1375
	movl	%fs:44, %eax
	movl	__tls_index, %edi
	movl	(%eax,%edi,4), %edi
	movl	_MV_Locked@secrel32(%edi), %ebx
	leal	1(%ebx), %eax
	movl	%eax, _MV_Locked@secrel32(%edi)
	testl	%ebx, %ebx
	je	L1376
	movl	_VoiceList, %edx
	movl	%ebx, %eax
	cmpl	$_VoiceList, %edx
	je	L1868
L1377:
	xorl	%ebx, %ebx
L1380:
	movl	(%edx), %edx
	addl	$1, %ebx
	cmpl	$_VoiceList, %edx
	jne	L1380
L1379:
	movl	%fs:44, %edi
	movl	__tls_index, %edx
	movl	(%edi,%edx,4), %edx
	movl	%eax, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	jne	L1378
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	jmp	L1375
	.p2align 4,,10
	.p2align 3
L1861:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %edx
	testl	%ecx, %ecx
	je	L1367
	testl	%edx, %edx
	je	L1367
	movl	112(%edx), %edx
	testl	%edx, %edx
	jne	L1367
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1869
L1362:
	movl	$0, 32(%esi)
	jmp	L1367
L1814:
	call	__Z8DemoTermv
	movl	_connecthead, %eax
	movw	%ax, 64(%esp)
	cmpw	$-1, %ax
	je	L1103
	movswl	%di, %eax
	xorl	%ecx, %ecx
	imull	$24124, %eax, %esi
	movw	%cx, 60(%esp)
	jmp	L1119
L1112:
	cmpl	%ebx, _myconnectindex
	je	L1114
	movl	_connectpoint2(,%ebx,4), %eax
	movl	_connecthead, %edx
	movzwl	64(%esp), %ecx
	cmpw	%cx, _screenpeek
	jne	L1115
	testw	%ax, %ax
	movl	%eax, %ecx
	cmovs	%edx, %ecx
	movw	%cx, _screenpeek
L1115:
	cmpl	%ebx, %edx
	je	L1870
	movswl	60(%esp), %edx
	movl	%eax, _connectpoint2(,%edx,4)
	movl	_connectpoint2(,%ebx,4), %eax
L1118:
	subl	$1, _numplayers
	subb	$1, _CommPlayers
L1113:
	movw	%ax, 64(%esp)
	cmpw	$-1, %ax
	je	L1103
L1119:
	movswl	64(%esp), %ebx
	imull	$24124, %ebx, %edx
	movl	%edx, 52(%esp)
	cmpw	%bx, %di
	je	L1871
L1111:
	movl	52(%esp), %eax
	testb	$-128, _Player+418(%eax)
	jne	L1112
	movzwl	64(%esp), %edx
	movl	_connectpoint2(,%ebx,4), %eax
	movw	%dx, 60(%esp)
	jmp	L1113
L1870:
	movl	%eax, _connecthead
	jmp	L1118
L1871:
	movl	_Player+352(%esi), %ecx
	movl	$-1171354717, %edx
	leal	12(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$-1171354717, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	orw	$-32768, 12(%ecx)
	movl	_Player+352(%esi), %ecx
	leal	12(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	movl	$1, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	andw	$-16642, 12(%ecx)
	movswl	_Player+348(%esi), %eax
	movl	$-2, %ecx
	call	__Z14InitBloodSprayshs.isra.0
	movswl	_Player+348(%esi), %eax
	xorl	%edx, %edx
	movl	$-2, %ecx
	call	__Z14InitBloodSprayshs.isra.0
	movl	_Player+352(%esi), %ecx
	movl	$-1171354717, %edx
	movswl	28(%ecx), %eax
	addl	$1024, %eax
	andl	$2047, %eax
	movl	%eax, 56(%esp)
	leal	28(%ecx), %eax
	subl	_sprite, %eax
	mull	%edx
	movzwl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%ax, 28(%ecx)
	movswl	_Player+348(%esi), %eax
	movl	$-1, %ecx
	call	__Z14InitBloodSprayshs.isra.0
	movl	$-1, %ecx
	movl	$1, %edx
	movswl	_Player+348(%esi), %eax
	call	__Z14InitBloodSprayshs.isra.0
	jmp	L1111
L1850:
	xorl	%eax, %eax
	movb	$0, 23303(%edi)
	movw	%ax, 23300(%edi)
	movswl	%bx, %eax
	imull	$24124, %eax, %eax
	cmpl	%eax, 48(%esp)
	jne	L1318
	jmp	L1811
L1851:
	movw	%dx, 23298(%edi)
	jmp	L1318
L1215:
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L1797
L1232:
	cmpb	$3, 273(%ebx)
	je	L1872
L1250:
	cmpb	$0, _Prediction
	jne	L1231
	movb	$3, 23117(%edi)
	testb	$8, 23012(%edi)
	je	L1231
	testb	$16, 22969(%edi)
	jne	L1231
	movl	%edi, %eax
	call	__Z13InitWeaponUziP12PLAYERstruct.part.0
	jmp	L1231
L1220:
	movl	%edi, %eax
	call	__Z15SetRedrawScreenP12PLAYERstruct
	jmp	L1798
L1862:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1873
L1420:
	movl	%esi, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movzwl	48(%ebx), %eax
	movl	28(%ebx), %edx
	movl	52(%ebx), %esi
	jmp	L1419
L1865:
	movl	__ZL10MV_Handles.lto_priv.0, %ecx
	leal	1073741823(%eax), %edi
	movl	(%ecx,%edi,4), %ebx
	cmpl	$0, _MV_Installed
	je	L1364
	testl	%ebx, %ebx
	je	L1364
	movl	112(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L1364
L1365:
	movl	(%ecx,%edi,4), %ebx
	movl	_MV_Installed, %edi
	testl	%edi, %edi
	je	L1384
	testl	%ebx, %ebx
	jne	L1874
L1384:
	testl	%eax, %eax
	jle	L1388
	movl	-4(%ecx,%eax,4), %eax
	movl	_MV_Installed, %ecx
	testl	%ecx, %ecx
	je	L1388
	testl	%eax, %eax
	jne	L1875
L1388:
	cmpb	$0, 64(%esp)
	je	L1410
	jmp	L1357
	.p2align 4,,10
	.p2align 3
L1864:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1876
L1423:
	movl	%esi, 8(%esp)
	movl	$LC44, 4(%esp)
	movl	$_apptitle, (%esp)
	call	_wm_msgbox.constprop.0
	call	__Z13TerminateGamev
	movzwl	48(%ebx), %eax
	movl	28(%ebx), %edx
	movl	52(%ebx), %esi
	jmp	L1422
L1837:
	movswl	348(%edi), %eax
	movl	_User(,%eax,4), %eax
	movzwl	84(%eax), %edx
	movl	%edi, %eax
	negl	%edx
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	$-1, 4(%esp)
	movl	%edi, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	testb	$2, 22968(%edi)
	je	L1316
	jmp	L1317
L1825:
	cmpl	$1, _numplayers
	jg	L1267
	movswl	396(%edi), %edx
	movl	416(%edi), %ecx
	movl	%eax, %ebx
	orl	400(%edi), %ecx
	orl	404(%edi), %ecx
	andl	$163848, %ebx
	orl	%edx, %ecx
	movswl	398(%edi), %edx
	orl	%edx, %ecx
	movl	23108(%edi), %edx
	orl	%ecx, %ebx
	je	L1268
	testl	%edx, %edx
	je	L1269
	movl	22980(%edi), %ebx
	testl	%ebx, %ebx
	je	L1877
L1270:
	movl	16(%edx), %eax
	xorl	%ecx, %ecx
	movw	%cx, 228(%edx)
	xorl	%ecx, %ecx
	movl	%eax, 12(%edx)
	testl	%eax, %eax
	je	L1271
	movzwl	(%eax), %ecx
L1271:
	movw	%cx, 178(%edx)
L1269:
	movl	$0, _ChopTics
	jmp	L1267
L1841:
	movl	__ZL10MV_Handles.lto_priv.0, %ecx
	leal	1073741823(%eax), %edi
	movl	(%ecx,%edi,4), %ebx
	cmpl	$0, _MV_Installed
	je	L1365
	testl	%ebx, %ebx
	je	L1365
	movl	112(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L1878
	testl	%eax, %eax
	jle	L1357
	jmp	L1365
L1186:
	cmpb	$0, __ZZ14PauseMultiPlayvE23FlagCapturePauseApplied
	jne	L1796
	movb	$1, __ZZ14PauseMultiPlayvE23FlagCapturePauseApplied
	cmpb	$0, _GamePaused
	je	L1879
L1189:
	movl	_connecthead, %edx
	movswl	%dx, %eax
	cmpw	$-1, %dx
	jne	L1437
	jmp	L1438
	.p2align 4,,10
	.p2align 3
L1223:
	movl	_InventoryData(%edx), %eax
	movl	$LC34, 4(%esp)
	movl	$_ds, (%esp)
	movl	%eax, 8(%esp)
	call	_sprintf
	movl	%edi, %eax
	movl	$_ds, %edx
	call	__Z13PutStringInfoP12PLAYERstructPKc
	movl	416(%edi), %esi
	movl	22976(%edi), %eax
	jmp	L1222
L1823:
	call	__Z14ProcessQuakeOnv
	call	__Z16ProcessQuakeSpotv
	movswl	_screenpeek, %ebx
	movl	$1, %eax
	movzwl	_headspritestat+138, %esi
	imull	$24124, %ebx, %ebx
	addl	$_Player, %ebx
	cmpw	$-1, %si
	jne	L1202
	jmp	L1203
	.p2align 4,,10
	.p2align 3
L1208:
	cmpw	$-1, %si
	je	L1880
L1202:
	movswl	%si, %eax
	movzwl	_nextspritestat(%eax,%eax), %esi
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %edx
	movl	(%eax), %eax
	subl	(%ebx), %eax
/APP
 # 614 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	4(%edx), %eax
	subl	4(%ebx), %eax
/APP
 # 615 "source/sw/src/jsector.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	cmpl	$2147483647, %ecx
	je	L1208
	movswl	28(%edx), %eax
	cmpl	%ecx, %eax
	jl	L1208
	movswl	38(%edx), %eax
	movl	$100, %edx
	movl	$1, %edi
	cmpw	%dx, %ax
	cmovl	%edx, %eax
	movl	$200, %edx
	cmpw	%dx, %ax
	cmovg	%edx, %eax
	call	__Z15COVER_SetReverbi
	cmpw	$-1, %si
	jne	L1202
L1880:
	movl	%edi, %eax
	xorl	$1, %eax
	andl	$1, %eax
L1203:
	testb	$2, 22970(%ebx)
	jne	L1201
	testb	%al, %al
	je	L1201
	cmpw	$0, 24114(%ebx)
	jg	L1201
	xorl	%eax, %eax
	call	__Z15COVER_SetReverbi
	jmp	L1201
	.p2align 4,,10
	.p2align 3
L1100:
	movl	%eax, _movefifoplc
	jmp	L1103
L1859:
	movl	_connecthead, %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	je	L1177
	movswl	68(%esp), %ecx
	movl	$320, %edx
	subl	%ecx, %edx
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	movswl	%bx, %ebx
L1178:
	movswl	%ax, %esi
	movl	$LC33, (%esp)
	movl	%ebx, %edx
	movl	$100, %ecx
	imull	$24124, %esi, %eax
	movl	$999, 4(%esp)
	addl	$_Player, %eax
	call	__Z14PutStringTimerP12PLAYERstructssPKcs
	movl	_connectpoint2(,%esi,4), %edx
	movl	%edx, %eax
	cmpw	$-1, %dx
	jne	L1178
	jmp	L1177
L1176:
	movzbl	__ZZ14PauseMultiPlayvE14SavePrediction, %eax
	movb	%al, _PredictionOn
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1180
	movl	$1, __ZL16_MIDI_SongActive.lto_priv.0
L1180:
	movl	_connecthead, %eax
	movswl	%ax, %esi
	cmpw	$-1, %ax
	je	L1175
L1184:
	imull	$24124, %esi, %edx
	addl	$_Player, %edx
	movl	%edx, %eax
	movl	%edx, 64(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	64(%esp), %edx
	movl	22988(%edx), %ebx
	addl	$22988, %edx
	cmpl	%edx, %ebx
	je	L1181
	movl	(%ebx), %ecx
	jmp	L1183
L1182:
	movl	(%ecx), %eax
	movl	%ecx, %ebx
	cmpl	%edx, %ecx
	je	L1181
	movl	%eax, %ecx
L1183:
	movl	208(%ebx), %eax
	cmpl	$250, %eax
	jg	L1181
	cmpw	$8, 176(%ebx)
	jne	L1182
	cmpw	$100, 42(%ebx)
	jne	L1182
	cmpl	$250, %eax
	jne	L1182
	movl	32(%ebx), %eax
	movl	%edx, 60(%esp)
	movl	%ecx, 64(%esp)
	call	__Z15SetRedrawScreenP12PLAYERstruct
	movl	60(%esp), %edx
	movl	64(%esp), %ecx
	movl	$__Z8pSuicideP18PANEL_SPRITEstruct, 172(%ebx)
	jmp	L1182
L1181:
	movl	_connectpoint2(,%esi,4), %eax
	movswl	%ax, %esi
	cmpw	$-1, %ax
	jne	L1184
	jmp	L1175
L1856:
	movl	_Player+4(%esi), %eax
	cmpl	%eax, 4(%ebx)
	jne	L1426
	movl	_Player+8(%esi), %eax
	cmpl	%eax, 8(%ebx)
	jne	L1426
	movl	_Player+388(%esi), %eax
	cmpl	%eax, 12(%ebx)
	jne	L1426
	movl	_Player+288(%esi), %eax
	cmpl	%eax, 16(%ebx)
	jne	L1426
	jmp	L1425
	.p2align 4,,10
	.p2align 3
L1857:
	movl	$2, _FX_ErrorCode
	jmp	L1266
L1874:
	movl	112(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L1384
	andl	$1, %edx
	jne	L1881
	movl	16(%esi), %ebx
	movl	20(%esi), %edi
	xorl	%edx, %edx
	movl	24(%esi), %ecx
	movw	%dx, 64(%esp)
	movl	%ebx, %eax
	orl	%edi, %eax
	orl	%ecx, %eax
	je	L1390
	movl	56(%esp), %eax
	movl	%edi, %edx
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z9SoundDistiiii
	movw	%ax, 64(%esp)
L1390:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z10SoundAngleii
	movl	%eax, %edi
L1389:
	movl	(%esi), %eax
	testb	$1, 36(%eax)
	je	L1392
	movswl	48(%esi), %eax
	cmpw	$-1, %ax
	je	L1392
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	_screenpeek, %edx
	movl	8(%eax), %ebx
	imull	$24124, %edx, %edx
	movl	%ebx, 56(%esp)
	movl	4(%eax), %ebx
	movl	%ebx, 52(%esp)
	movl	(%eax), %ebx
	movl	%ebx, 48(%esp)
	movswl	_Player+268(%edx), %ebx
	movl	%ebx, 16(%esp)
	movl	_Player+8(%edx), %ebx
	movl	%ebx, 12(%esp)
	movl	_Player+4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	_Player(%edx), %edx
	movl	56(%esp), %ecx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	52(%esp), %edx
	movl	%eax, (%esp)
	movl	48(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L1392
	movzwl	64(%esp), %edx
	movl	%edx, %ebx
	shrw	$15, %bx
	movl	%ebx, %eax
	movl	%edx, %ebx
	addl	%edx, %eax
	leal	3(%ebx), %edx
	sarw	%ax
	testw	%bx, %bx
	cmovns	%ebx, %edx
	sarw	$2, %dx
	addl	%edx, %eax
	movl	$255, %edx
	addl	%ebx, %eax
	cmpw	%dx, %ax
	cmovle	%eax, %edx
	movw	%dx, 64(%esp)
	cmpl	$76, 52(%esi)
	je	L1882
L1392:
	cmpw	$254, 64(%esp)
	jle	L1397
L1395:
	movl	(%esi), %eax
	movl	32(%eax), %ebx
	testl	%ebx, %ebx
	je	L1883
L1397:
	movswl	64(%esp), %ebx
	movl	32(%esi), %eax
	testb	$8, 28(%esi)
	jne	L1399
	movswl	%di, %edx
	movl	%ebx, %ecx
	call	_MV_Pan3D
	testl	%eax, %eax
	jne	L1401
L1400:
	testb	$4, 28(%esi)
	jne	L1410
	movl	32(%esi), %eax
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %ecx
	movl	-4(%edx,%eax,4), %edx
	testl	%ecx, %ecx
	je	L1410
	testl	%edx, %edx
	je	L1410
	movl	112(%edx), %edi
	testl	%edi, %edi
	jne	L1410
	movswl	36(%esi), %ecx
	movl	%ebx, %edx
	movl	60(%esp), %ebx
	subl	%ecx, %edx
	subl	%edx, %ebx
	movl	(%esi), %edx
	movzwl	24(%edx), %edi
	testw	%di, %di
	je	L1402
	movzwl	26(%edx), %ecx
	testw	%cx, %cx
	je	L1402
	movl	%edi, %edx
	negw	%dx
	cmovs	%edi, %edx
	movl	%ecx, %edi
	negw	%di
	cmovs	%ecx, %edi
	cmpw	%di, %dx
	cmovb	%edi, %edx
	movzwl	%dx, %edi
	movl	%edi, 60(%esp)
L1404:
	movl	60(%esp), %edi
	movl	%edi, %edx
	negl	%edx
	cmpl	%ebx, %edx
	cmovl	%ebx, %edx
	cmpl	%edi, %ebx
	cmovg	%edi, %edx
	movzwl	64(%esp), %edi
	movw	%di, 36(%esi)
	movl	%edx, 60(%esp)
	call	__Z15MV_BeginServicei
	movl	%eax, %edi
	testl	%eax, %eax
	je	L1406
	movl	100(%eax), %ebx
	movl	60(%esp), %eax
	call	__Z14PITCH_GetScalei
	movl	_MV_MixRate, %ecx
	movl	%eax, 88(%edi)
	movl	%eax, %edx
	movl	%ebx, %eax
	movl	%ecx, (%esp)
	sarl	$31, %ecx
	mull	%edx
	movl	%ecx, 4(%esp)
	call	_divideu64.lto_priv.0
	movl	%eax, %edx
	movl	%eax, 104(%edi)
	sall	$8, %eax
	subl	%edx, %eax
	movl	%fs:44, %edx
	movl	%eax, 92(%edi)
	movl	__tls_index, %eax
	movl	(%edx,%eax,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L1884
	jns	L1410
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1410
	movl	$LC40, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1883:
	movl	32(%esi), %eax
	call	_MV_Kill.constprop.0
	testl	%eax, %eax
	jne	L1885
L1398:
	movl	$0, 32(%esi)
	jmp	L1410
L1884:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	jmp	L1410
L1885:
	movl	$2, _FX_ErrorCode
	jmp	L1398
L1406:
	movl	$2, _FX_ErrorCode
	jmp	L1410
	.p2align 4,,10
	.p2align 3
L1402:
	movl	$400, 60(%esp)
	jmp	L1404
L1399:
	xorl	%edx, %edx
	movl	%ebx, %ecx
	call	_MV_Pan3D
	testl	%eax, %eax
	je	L1400
L1401:
	movl	$2, _FX_ErrorCode
	jmp	L1400
	.p2align 4,,10
	.p2align 3
L1881:
	movl	4(%esi), %edi
	movl	12(%esi), %eax
	movl	8(%esi), %ebx
	movl	(%eax), %ecx
	movl	(%edi), %eax
	movl	(%ebx), %edx
	movl	%eax, 64(%esp)
	movl	56(%esp), %eax
	movl	32(%eax), %eax
	movl	%eax, (%esp)
	movl	64(%esp), %eax
	call	__Z9SoundDistiiii
	movl	(%ebx), %edx
	movw	%ax, 64(%esp)
	movl	(%edi), %eax
	call	__Z10SoundAngleii
	movl	%eax, %edi
	jmp	L1389
L1882:
	testb	$16, 28(%esi)
	je	L1392
	movw	$255, 64(%esp)
	jmp	L1395
	.p2align 4,,10
	.p2align 3
L1879:
	movzbl	_PredictionOn, %eax
	movb	$1, _GamePaused
	movb	$0, _PredictionOn
	movb	%al, __ZZ14PauseMultiPlayvE14SavePrediction
	movl	__ZL16_MIDI_SongLoaded.lto_priv.0, %eax
	testl	%eax, %eax
	je	L1189
	movl	$0, __ZL16_MIDI_SongActive.lto_priv.0
	call	__Z16MIDI_AllNotesOffv.isra.0
L1796:
	movswl	_connecthead, %eax
	jmp	L1187
L1875:
	movl	112(%eax), %eax
	testl	%eax, %eax
	je	L1410
	jmp	L1388
L1878:
	testl	%eax, %eax
	jg	L1365
	jmp	L1357
	.p2align 4,,10
	.p2align 3
L1268:
	movl	_ChopTics, %esi
	leal	3(%esi), %ecx
	movl	%ecx, _ChopTics
	testl	%edx, %edx
	je	L1886
	cmpl	$3600, %ecx
	jle	L1267
	andl	$2147483647, %eax
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	$0, _ChopTics
	movl	%eax, 22968(%edi)
	movl	16(%edx), %eax
	movw	%bx, 228(%edx)
	movl	%eax, 12(%edx)
	testl	%eax, %eax
	je	L1276
	movzwl	(%eax), %ecx
L1276:
	movw	%cx, 178(%edx)
	jmp	L1267
L1886:
	cmpl	$3600, %ecx
	jle	L1267
	orl	$-2147483648, %eax
	movl	$_ps_ChopsAttack1, %edx
	movl	$128, %ecx
	movl	$0, _ChopTics
	movl	%eax, 22968(%edi)
	movl	%edi, %eax
	movl	$200, 4(%esp)
	movl	$180, (%esp)
	call	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii
	movl	%eax, 23108(%edi)
	movswl	178(%eax), %edx
	cmpl	$30719, %edx
	ja	L1273
	cmpb	$0, __ZL23PanelBaseTileSizesSaved.lto_priv.0
	je	L1274
	movzwl	__ZL18PanelBaseTileSizes.lto_priv.0+2(,%edx,4), %ecx
	movl	%ecx, %ebx
	testw	%cx, %cx
	jg	L1273
L1274:
	movswl	_tilesiz+2(,%edx,4), %ebx
L1273:
	addw	%bx, 42(%eax)
	cmpb	$0, _Prediction
	jne	L1267
	movl	23108(%edi), %ebx
	movups	20(%esp), %xmm6
	xorl	%esi, %esi
	movl	32(%ebx), %edx
	movups	%xmm6, 16(%ebx)
	orl	$131072, 204(%ebx)
	leal	8(%edx), %eax
	movl	%esi, 4(%esp)
	leal	4(%edx), %ecx
	movl	%eax, (%esp)
	movl	$236, %eax
	call	__Z9PlaySoundiPiS_S_i
	imull	$21, _randomseed, %eax
	addl	$1, _krandcount
	addl	$1, %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L1275
	sall	$14, %eax
	cmpl	$806367474, %eax
	jbe	L1267
L1275:
	cmpb	$0, _Prediction
	jne	L1267
	movl	32(%ebx), %eax
	movl	$9, 12(%esp)
	movl	$353, %ecx
	leal	8(%eax), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	$6214, %edx
	movl	%eax, (%esp)
	movl	$LC36, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L1267
	.p2align 4,,10
	.p2align 3
L1877:
	andl	$2147483647, %eax
	movl	%eax, 22968(%edi)
	jmp	L1270
L1876:
	movl	%esi, 16(%esp)
	movl	$LC44, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1423
L1873:
	movl	%esi, 16(%esp)
	movl	$LC42, 12(%esp)
	movl	$2413, 8(%esp)
	movl	$LC43, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1420
L1821:
	cmpb	$1, %bl
	je	L1795
	testb	%dl, %dl
	je	L1161
	jmp	L1160
L1872:
	testb	$8, 22970(%edi)
	je	L1251
	testb	%cl, %cl
	sete	24092(%edi)
	jmp	L1250
L1858:
	movzbl	_gs+13, %ebx
	xorl	%eax, %eax
	movl	$_palette_data, %edx
	call	_paletteSetColorTable
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movzbl	%bl, %eax
	call	_videoSetPalette
	jmp	L1326
L1251:
	movb	$1, 24092(%edi)
	jmp	L1250
L1855:
	leal	23304(%edi), %edx
	xorl	%eax, %eax
	call	_paletteSetColorTable
	movl	$6, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	_videoSetPalette
	jmp	L1318
L1869:
	movl	$2, _FX_ErrorCode
	jmp	L1362
L1867:
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	$32766, %eax
	andl	$32767, %ecx
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movl	$1610792977, %eax
	sall	$14, %ecx
	mull	%ecx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$25, %eax
	movl	68(%esp,%eax,4), %edx
	jmp	L1373
L1866:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	-4(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	L1369
	testl	%ebx, %ebx
	je	L1369
	movl	112(%eax), %eax
	testl	%eax, %eax
	jne	L1369
L1371:
	movl	$0, 60(%esi)
	jmp	L1410
L1868:
	movl	%ebx, _MV_Locked@secrel32(%edi)
	xorl	%ebx, %ebx
L1378:
	testl	%eax, %eax
	js	L1887
L1375:
	cmpl	%ebx, _NumVoices
	jle	L1371
	movl	28(%esi), %eax
	movl	52(%esi), %ebx
	testb	$1, %al
	je	L1383
	movl	8(%esi), %ecx
	movl	4(%esi), %edx
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__Z9PlaySoundiPiS_S_i
	movb	$1, 68(%esi)
	jmp	L1371
L1887:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1375
	movl	$LC40, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC41, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1375
L1383:
	movl	%eax, 4(%esp)
	leal	24(%esi), %eax
	leal	20(%esi), %ecx
	movl	%eax, (%esp)
	leal	16(%esi), %edx
	movl	%ebx, %eax
	call	__Z9PlaySoundiPiS_S_i
	movb	$1, 68(%esi)
	jmp	L1371
L1376:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	movl	_MV_Locked@secrel32(%edi), %eax
	movl	_VoiceList, %edx
	subl	$1, %eax
	cmpl	$_VoiceList, %edx
	jne	L1377
	jmp	L1379
	.p2align 4,,10
	.p2align 3
L1839:
	movl	_gNet+8, %eax
	leal	-3(%eax), %ecx
	movl	$-2004318071, %eax
	imull	%ecx
	movl	%ecx, _gNet+8
	leal	(%edx,%ecx), %eax
	movl	%ecx, %edx
	sarl	$6, %eax
	sarl	$31, %edx
	subl	%edx, %eax
	imull	$120, %eax, %eax
	subl	%eax, %ecx
	cmpl	$3, %ecx
	jg	L1343
	movswl	_screenpeek, %eax
	imull	$24124, %eax, %eax
	addl	$_Player, %eax
	call	__Z21PlayerUpdateTimeLimitP12PLAYERstruct
	movl	_gNet+8, %esi
	testl	%esi, %esi
	jg	L1343
	movl	_gNet+4, %eax
	movl	%eax, _gNet+8
	testb	%bl, %bl
	je	L1346
	jmp	L1345
L1842:
	movl	12(%esi), %edx
	movl	8(%esi), %edi
	movl	4(%esi), %ebx
	movl	(%edx), %eax
	movl	(%edi), %edx
	movl	%eax, 64(%esp)
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	64(%esp), %ecx
	call	__Z9SoundDistiiii
	movl	(%edi), %edx
	movl	%eax, %ecx
	movl	(%ebx), %eax
	movl	%ecx, 64(%esp)
	call	__Z10SoundAngleii
	movl	64(%esp), %ecx
	jmp	L1412
L1846:
	movl	%edi, (%esp)
	call	*%edx
	jmp	L1225
L1233:
	movb	$13, 23116(%edi)
L1803:
	cmpb	$0, _Prediction
	jne	L1231
	testb	$32, 23013(%edi)
	je	L1231
	testb	$16, 22969(%edi)
	jne	L1231
	movl	%edi, %eax
	call	__Z15InitWeaponSwordP12PLAYERstruct.part.0
	jmp	L1231
L1460:
	testb	%al, %al
	je	L1233
	cmpb	$13, %al
	jne	L1231
L1235:
	movb	$0, 23116(%edi)
L1800:
	movl	%edi, (%esp)
	call	__Z14InitWeaponFistP12PLAYERstruct
	jmp	L1231
L1236:
	testb	$1, _SW_GameFlags
	jne	L1264
	movl	%edi, (%esp)
	call	__Z15InitWeaponHeartP12PLAYERstruct
	jmp	L1231
L1237:
	testb	$1, _SW_GameFlags
	jne	L1264
	movzbl	273(%ebx), %eax
	leal	-10(%eax), %edx
	cmpb	$1, %dl
	jbe	L1461
	cmpb	$8, %al
	jne	L1260
L1461:
	movzbl	23115(%edi), %eax
	movl	23084(%edi), %edx
	leal	1(%eax), %ecx
	movb	%cl, 23115(%edi)
	cmpb	$2, %cl
	jbe	L1888
	movb	$0, 23115(%edi)
	movl	$2055, %eax
L1263:
	movw	%ax, 54(%edx)
	leal	8(%edi), %eax
	leal	4(%edi), %ecx
	movl	%edi, %edx
	movl	%eax, (%esp)
	movl	$508, %eax
	movl	$9, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	testb	$1, _SW_GameFlags
	jne	L1231
L1260:
	cmpb	$0, _Prediction
	jne	L1231
	testb	$1, 23013(%edi)
	je	L1231
	testb	$16, 22969(%edi)
	jne	L1231
	movl	%edi, %eax
	call	__Z17InitWeaponHotheadP12PLAYERstruct.part.0
	jmp	L1231
L1888:
	movl	$2057, %eax
	je	L1263
	cmpb	$1, %cl
	movl	$2055, %eax
	sbbw	$-1, %ax
	jmp	L1263
L1241:
	movzbl	_Prediction, %edx
	cmpb	$4, 273(%ebx)
	je	L1889
	testb	%dl, %dl
	jne	L1231
L1436:
	testb	$16, 23012(%edi)
	je	L1231
L1445:
	testb	$16, 22969(%edi)
	jne	L1231
	movl	%edi, %eax
	call	__Z15InitWeaponMicroP12PLAYERstruct.part.0
	jmp	L1231
L1242:
	cmpb	$2, 273(%ebx)
	jne	L1257
	cmpb	$0, 24093(%edi)
	leal	8(%edi), %eax
	leal	4(%edi), %ecx
	movl	%edi, %edx
	sete	24093(%edi)
	movl	%eax, (%esp)
	movl	$240, %eax
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
L1257:
	movl	%edi, (%esp)
	call	__Z17InitWeaponShotgunP12PLAYERstruct
	jmp	L1231
L1889:
	movzbl	23112(%edi), %eax
	addl	$1, %eax
	movb	%al, 23112(%edi)
	cmpb	$2, %al
	ja	L1254
	jne	L1255
	cmpb	$0, 23114(%edi)
	je	L1254
	movb	$1, 24105(%edi)
	testb	%dl, %dl
	jne	L1890
	testb	$16, 23012(%edi)
	jne	L1445
	jmp	L1444
	.p2align 4,,10
	.p2align 3
L1243:
	cmpb	$0, _Prediction
	jne	L1231
	testb	$2, 23012(%edi)
	je	L1231
	cmpw	$2, 23018(%edi)
	jle	L1231
	testb	$16, 22969(%edi)
	jne	L1231
	movl	%edi, %eax
	call	__Z14InitWeaponStarP12PLAYERstruct.part.0
	jmp	L1231
L1244:
	movzbl	273(%ebx), %edx
	movzbl	23116(%edi), %eax
	testb	%dl, %dl
	je	L1460
	cmpb	$13, %dl
	je	L1460
	testb	%al, %al
	je	L1800
	cmpb	$13, %al
	jne	L1231
	jmp	L1803
L1890:
	movl	23068(%edi), %eax
	cmpl	%eax, 23048(%edi)
	jne	L1265
	jmp	L1210
	.p2align 4,,10
	.p2align 3
L1254:
	movb	$0, 23112(%edi)
L1255:
	movb	$0, 24105(%edi)
	testb	%dl, %dl
	je	L1436
	jmp	L1265
	.p2align 4,,10
	.p2align 3
L1239:
	movl	%edi, (%esp)
	call	__Z14InitWeaponMineP12PLAYERstruct
	jmp	L1231
L1240:
	movl	%edi, (%esp)
	call	__Z17InitWeaponGrenadeP12PLAYERstruct
	jmp	L1231
L1238:
	testb	$1, _SW_GameFlags
	jne	L1264
	movl	%edi, (%esp)
	call	__Z14InitWeaponRailP12PLAYERstruct
	jmp	L1231
L1264:
	movl	$LC35, %edx
	movl	%edi, %eax
	call	__Z13PutStringInfoP12PLAYERstructPKc
	jmp	L1231
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0
	.def	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0;	.scl	2;	.type	32;	.endef
__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0:
LFB195:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	movzwl	_headspritestat+184, %ebp
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	$0, 16(%esp)
	movl	$999999, 20(%esp)
	cmpw	$-1, %bp
	je	L1891
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, 48(%esp)
	movl	%esi, 52(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	jmp	L1892
	.p2align 4,,10
	.p2align 3
L1921:
	movl	20(%esp), %eax
	cmpl	%ecx, %eax
	cmovle	16(%esp), %esi
	cmovle	%eax, %ecx
	movl	%esi, 16(%esp)
	movl	%ecx, 20(%esp)
	cmpw	$-1, %bp
	je	L1895
L1892:
	movswl	%bp, %esi
	movl	8(%edi), %ebx
	movl	4(%edi), %ecx
	movzwl	_nextspritestat(%esi,%esi), %ebp
	imull	$44, %esi, %esi
	movl	(%edi), %eax
	addl	_sprite, %esi
	subl	8(%esi), %ebx
	subl	4(%esi), %ecx
	subl	(%esi), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 36(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	cmpl	%ecx, %edx
	jge	L1896
	leal	36(%esp), %eax
	leal	40(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edx
	movl	44(%esp), %eax
L1896:
	cmpl	%eax, %edx
	jge	L1897
	leal	44(%esp), %ebx
	leal	36(%esp), %eax
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	44(%esp), %eax
	movl	36(%esp), %edx
L1897:
	movl	%edx, %ecx
	addl	40(%esp), %eax
	sarl	$4, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	testb	$64, 42(%esi)
	je	L1921
	movswl	28(%esi), %eax
	sall	$3, %eax
	movl	%eax, 16(%esp)
	cmpl	%ecx, %eax
	jge	L1928
L1927:
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
L1891:
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1928:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movzbl	18(%esi), %ebp
	movl	%ebp, %eax
	movzbl	%al, %edi
	testl	%edi, %edi
	je	L1900
	imull	$1103515245, _wrandomseed, %ebx
	movl	$32766, %eax
	addl	$12345, %ebx
	movl	%ebx, _wrandomseed
	shrl	$16, %ebx
	andl	$32767, %ebx
	cmpl	%eax, %ebx
	cmova	%eax, %ebx
	xorl	%edx, %edx
	movl	$536854528, %eax
	idivl	%edi
	sall	$14, %ebx
	xorl	%edx, %edx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	divl	20(%esp)
	leal	-1(%edi), %edx
	cmpl	%edi, %eax
	cmovnb	%edx, %eax
	movl	%eax, %edi
L1900:
	movl	%ebp, %eax
	leal	36(%esi), %ebp
	shrb	%al
	movl	%ebp, %edx
	movzbl	%al, %eax
	subl	%eax, %edi
	movl	24(%esp), %eax
	sall	$8, %edi
	movl	%edi, (%eax)
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	37(%esi), %edi
	testl	%edi, %edi
	je	L1902
	imull	$1103515245, _wrandomseed, %ebx
	leal	0(,%edi,4), %edx
	movl	$32766, %eax
	movl	%edx, 20(%esp)
	addl	$12345, %ebx
	movl	%ebx, _wrandomseed
	shrl	$16, %ebx
	andl	$32767, %ebx
	cmpl	%eax, %ebx
	cmova	%eax, %ebx
	xorl	%edx, %edx
	movl	$536854528, %eax
	idivl	20(%esp)
	sall	$14, %ebx
	xorl	%edx, %edx
	movl	%eax, 32(%esp)
	movl	%ebx, %eax
	divl	32(%esp)
	movl	20(%esp), %edx
	movl	%eax, %ebx
	leal	-1(%edx), %eax
	cmpl	%edx, %ebx
	cmovb	%ebx, %eax
L1902:
	negl	%edi
	movl	%ebp, %edx
	leal	(%eax,%edi,2), %edi
	movl	72(%esp), %eax
	movw	%di, (%eax)
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	36(%esi), %edi
	testl	%edi, %edi
	je	L1929
	leal	0(,%edi,4), %ebp
	xorl	%edx, %edx
	movl	$536854528, %eax
	idivl	%ebp
	imull	$1103515245, _wrandomseed, %ebx
	movl	$32766, %edx
	addl	$12345, %ebx
	movl	%ebx, _wrandomseed
	shrl	$16, %ebx
	movl	%eax, 20(%esp)
	movl	%ebx, %eax
	leal	-1(%ebp), %ebx
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	sall	$14, %eax
	divl	20(%esp)
	movl	28(%esp), %edx
	cmpl	%ebp, %eax
	cmovnb	%ebx, %eax
	negl	%edi
	addl	%edi, %edi
	addl	%edi, %eax
	movl	%eax, (%edx)
	movl	$32766, %edx
	imull	$1103515245, _wrandomseed, %eax
	addl	$12345, %eax
	movl	%eax, _wrandomseed
	shrl	$16, %eax
	andl	$32767, %eax
	cmpl	%edx, %eax
	cmova	%edx, %eax
	xorl	%edx, %edx
	sall	$14, %eax
	divl	20(%esp)
	cmpl	%ebp, %eax
	cmovb	%eax, %ebx
	addl	%ebx, %edi
L1905:
	movl	68(%esp), %eax
	movl	%edi, (%eax)
	testb	$64, 42(%esi)
	jne	L1927
	movl	16(%esp), %eax
	movl	24(%esp), %esi
	movl	28(%esp), %ebx
	movl	%eax, 8(%esp)
	movl	%eax, %edi
	subl	%ecx, %eax
	cltd
	sarl	$31, %edi
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%edi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.3
	movl	%eax, %ecx
	movl	(%esi), %eax
	movl	%ecx, %edx
/APP
 # 238 "source/sw/src/quake.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%esi)
	movl	72(%esp), %eax
	movl	%ecx, %edx
	movswl	(%eax), %eax
/APP
 # 239 "source/sw/src/quake.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	72(%esp), %edi
	movl	%ecx, %edx
	movw	%ax, (%edi)
	movl	(%ebx), %eax
/APP
 # 240 "source/sw/src/quake.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, (%ebx)
	movl	68(%esp), %eax
	movl	%ecx, %edx
	movl	(%eax), %eax
/APP
 # 241 "source/sw/src/quake.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	68(%esp), %edi
	movl	%eax, (%edi)
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	addl	$64, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1895:
	.cfi_restore_state
	movl	16(%esp), %esi
	testl	%esi, %esi
	je	L1927
	movswl	28(%esi), %eax
	movl	20(%esp), %ecx
	sall	$3, %eax
	movl	%eax, 16(%esp)
	cmpl	%ecx, %eax
	jl	L1927
	jmp	L1928
	.p2align 4,,10
	.p2align 3
L1929:
	movl	28(%esp), %eax
	movl	$0, (%eax)
	jmp	L1905
	.cfi_endproc
LFE195:
	.p2align 4
	.globl	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps
	.def	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps;	.scl	2;	.type	32;	.endef
__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps:
LFB196:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movl	24(%esp), %eax
	movl	28(%esp), %ebx
	movl	12(%esp), %esi
	movl	$0, (%edx)
	movl	$0, (%ecx)
	movl	$0, (%eax)
	movw	$0, (%ebx)
	cmpb	$0, _GamePaused
	jne	L1930
	movl	%eax, 12(%esp)
	movl	%esi, %eax
	movl	%ebx, 16(%esp)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__Z15QuakeViewChangeP12PLAYERstructPiS1_S1_Ps.part.0.constprop.0
	.p2align 4,,10
	.p2align 3
L1930:
	.cfi_restore_state
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE196:
	.globl	_s_RipperSpew
	.data
	.align 32
_s_RipperSpew:
	.word	1600
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+16
	.word	1601
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+32
	.word	1601
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_RipperSpew+48
	.word	1602
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+64
	.word	1603
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+80
	.word	1603
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSpew+96
	.word	1603
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSpew+96
	.word	1604
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+128
	.word	1605
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+144
	.word	1605
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_RipperSpew+160
	.word	1606
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+176
	.word	1607
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+192
	.word	1607
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSpew+208
	.word	1607
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSpew+208
	.word	1608
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+240
	.word	1609
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+256
	.word	1609
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_RipperSpew+272
	.word	1610
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+288
	.word	1611
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+304
	.word	1611
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSpew+320
	.word	1611
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSpew+320
	.word	1612
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+352
	.word	1613
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+368
	.word	1613
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_RipperSpew+384
	.word	1614
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+400
	.word	1615
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+416
	.word	1615
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSpew+432
	.word	1615
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSpew+432
	.word	1616
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+464
	.word	1617
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+480
	.word	1617
	.space 2
	.long	65536
	.long	__Z13InitCoolgFires
	.long	_s_RipperSpew+496
	.word	1618
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+512
	.word	1619
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSpew+528
	.word	1619
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSpew+544
	.word	1619
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSpew+544
	.globl	_s_RipperHang
	.align 32
_s_RipperHang:
	.word	1645
	.space 2
	.long	14
	.long	__Z12DoRipperHangs
	.long	_s_RipperHang
	.space 48
	.word	1645
	.space 2
	.long	14
	.long	__Z12DoRipperHangs
	.long	_s_RipperHang+64
	.space 48
	.word	1639
	.space 2
	.long	14
	.long	__Z12DoRipperHangs
	.long	_s_RipperHang+128
	.space 48
	.word	1637
	.space 2
	.long	14
	.long	__Z12DoRipperHangs
	.long	_s_RipperHang+192
	.space 48
	.word	1635
	.space 2
	.long	14
	.long	__Z12DoRipperHangs
	.long	_s_RipperHang+256
	.space 48
	.globl	_s_RipperHeart
	.align 32
_s_RipperHeart:
	.word	1635
	.space 2
	.long	14
	.long	__Z18DoRipperStandHearts
	.long	_s_RipperHeart
	.space 48
	.word	1635
	.space 2
	.long	14
	.long	__Z18DoRipperStandHearts
	.long	_s_RipperHeart+64
	.space 48
	.word	1635
	.space 2
	.long	14
	.long	__Z18DoRipperStandHearts
	.long	_s_RipperHeart+128
	.space 48
	.word	1635
	.space 2
	.long	14
	.long	__Z18DoRipperStandHearts
	.long	_s_RipperHeart+192
	.space 48
	.word	1635
	.space 2
	.long	14
	.long	__Z18DoRipperStandHearts
	.long	_s_RipperHeart+256
	.space 48
	.globl	_s_RipperJumpAttack
	.align 32
_s_RipperJumpAttack:
	.word	1620
	.space 2
	.long	35
	.long	__Z10NullRippers
	.long	_s_RipperJumpAttack+16
	.word	1620
	.space 2
	.long	65536
	.long	__Z23DoRipperBeginJumpAttacks
	.long	_s_RipperJumpAttack+32
	.word	1621
	.space 2
	.long	35
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJumpAttack+32
	.space 48
	.word	1622
	.space 2
	.long	35
	.long	__Z10NullRippers
	.long	_s_RipperJumpAttack+112
	.word	1622
	.space 2
	.long	65536
	.long	__Z23DoRipperBeginJumpAttacks
	.long	_s_RipperJumpAttack+128
	.word	1623
	.space 2
	.long	35
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJumpAttack+128
	.space 48
	.word	1624
	.space 2
	.long	35
	.long	__Z10NullRippers
	.long	_s_RipperJumpAttack+208
	.word	1624
	.space 2
	.long	65536
	.long	__Z23DoRipperBeginJumpAttacks
	.long	_s_RipperJumpAttack+224
	.word	1625
	.space 2
	.long	35
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJumpAttack+224
	.space 48
	.word	1626
	.space 2
	.long	35
	.long	__Z10NullRippers
	.long	_s_RipperJumpAttack+304
	.word	1626
	.space 2
	.long	65536
	.long	__Z23DoRipperBeginJumpAttacks
	.long	_s_RipperJumpAttack+320
	.word	1627
	.space 2
	.long	35
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJumpAttack+320
	.space 48
	.word	1628
	.space 2
	.long	35
	.long	__Z10NullRippers
	.long	_s_RipperJumpAttack+400
	.word	1628
	.space 2
	.long	65536
	.long	__Z23DoRipperBeginJumpAttacks
	.long	_s_RipperJumpAttack+416
	.word	1629
	.space 2
	.long	35
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJumpAttack+416
	.space 48
	.globl	_s_RipperSwipe
	.align 32
_s_RipperSwipe:
	.word	1600
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+16
	.word	1601
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+32
	.word	1601
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+48
	.word	1602
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+64
	.word	1603
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+80
	.word	1603
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+96
	.word	1603
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSwipe+112
	.word	1603
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSwipe+112
	.word	1604
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+144
	.word	1605
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+160
	.word	1605
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+176
	.word	1606
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+192
	.word	1607
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+208
	.word	1607
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+224
	.word	1607
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSwipe+240
	.word	1607
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSwipe+240
	.word	1608
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+272
	.word	1609
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+288
	.word	1609
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+304
	.word	1610
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+320
	.word	1611
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+336
	.word	1611
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+352
	.word	1611
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSwipe+368
	.word	1611
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSwipe+368
	.word	1612
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+400
	.word	1613
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+416
	.word	1613
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+432
	.word	1614
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+448
	.word	1615
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+464
	.word	1615
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+480
	.word	1615
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSwipe+496
	.word	1615
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSwipe+496
	.word	1616
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+528
	.word	1617
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+544
	.word	1617
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+560
	.word	1618
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+576
	.word	1619
	.space 2
	.long	8
	.long	__Z10NullRippers
	.long	_s_RipperSwipe+592
	.word	1619
	.space 2
	.long	65536
	.long	__Z15InitRipperSlashs
	.long	_s_RipperSwipe+608
	.word	1619
	.space 2
	.long	65536
	.long	__Z15InitActorDecides
	.long	_s_RipperSwipe+624
	.word	1619
	.space 2
	.long	8
	.long	__Z12DoRipperMoves
	.long	_s_RipperSwipe+624
	.globl	_s_RipperDeathFall
	.align 4
_s_RipperDeathFall:
	.word	1641
	.space 2
	.long	16
	.long	__Z16DoActorDeathMoves
	.long	_s_RipperDeathFall
	.globl	_s_RipperDeathJump
	.align 4
_s_RipperDeathJump:
	.word	1640
	.space 2
	.long	16
	.long	__Z16DoActorDeathMoves
	.long	_s_RipperDeathJump
	.globl	_s_RipperDead
	.align 32
_s_RipperDead:
	.word	1642
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1643
	.space 2
	.long	8
	.long	__Z12NullAnimators
	.space 4
	.word	1643
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.space 4
	.word	1643
	.space 2
	.long	8
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_s_RipperPain
	.align 32
_s_RipperPain:
	.word	1620
	.space 2
	.long	38
	.long	__Z12DoRipperPains
	.long	_s_RipperPain
	.word	1620
	.space 2
	.long	38
	.long	__Z12DoRipperPains
	.long	_s_RipperPain+16
	.word	1620
	.space 2
	.long	38
	.long	__Z12DoRipperPains
	.long	_s_RipperPain+32
	.word	1620
	.space 2
	.long	38
	.long	__Z12DoRipperPains
	.long	_s_RipperPain+48
	.word	1620
	.space 2
	.long	38
	.long	__Z12DoRipperPains
	.long	_s_RipperPain+64
	.globl	_s_RipperFall
	.align 32
_s_RipperFall:
	.word	1621
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperFall
	.space 80
	.word	1623
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperFall+96
	.space 80
	.word	1625
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperFall+192
	.space 80
	.word	1627
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperFall+288
	.space 80
	.word	1629
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperFall+384
	.space 80
	.globl	_s_RipperJump
	.align 32
_s_RipperJump:
	.word	1620
	.space 2
	.long	25
	.long	__Z10NullRippers
	.long	_s_RipperJump+16
	.word	1621
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJump+16
	.space 64
	.word	1622
	.space 2
	.long	25
	.long	__Z10NullRippers
	.long	_s_RipperJump+112
	.word	1623
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJump+112
	.space 64
	.word	1624
	.space 2
	.long	25
	.long	__Z10NullRippers
	.long	_s_RipperJump+208
	.word	1625
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJump+208
	.space 64
	.word	1626
	.space 2
	.long	25
	.long	__Z10NullRippers
	.long	_s_RipperJump+304
	.word	1627
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJump+304
	.space 64
	.word	1628
	.space 2
	.long	25
	.long	__Z10NullRippers
	.long	_s_RipperJump+400
	.word	1629
	.space 2
	.long	25
	.long	__Z16DoRipperMoveJumps
	.long	_s_RipperJump+400
	.space 64
	.globl	_s_RipperStand
	.align 32
_s_RipperStand:
	.word	1620
	.space 2
	.long	12
	.long	__Z12DoRipperMoves
	.long	_s_RipperStand
	.word	1622
	.space 2
	.long	12
	.long	__Z12DoRipperMoves
	.long	_s_RipperStand+16
	.word	1624
	.space 2
	.long	12
	.long	__Z12DoRipperMoves
	.long	_s_RipperStand+32
	.word	1626
	.space 2
	.long	12
	.long	__Z12DoRipperMoves
	.long	_s_RipperStand+48
	.word	1628
	.space 2
	.long	12
	.long	__Z12DoRipperMoves
	.long	_s_RipperStand+64
	.globl	_sg_RipperSpew
	.align 4
_sg_RipperSpew:
	.long	_s_RipperSpew
	.long	_s_RipperSpew+112
	.long	_s_RipperSpew+224
	.long	_s_RipperSpew+336
	.long	_s_RipperSpew+448
	.globl	_RipperCloseRange
	.align 4
_RipperCloseRange:
	.word	900
	.space 2
	.long	__Z15InitActorAttacks
	.word	1024
	.space 2
	.long	__Z19InitActorRepositions
	.globl	_RipperLostTarget
	.align 4
_RipperLostTarget:
	.word	980
	.space 2
	.long	__Z19InitActorFindPlayers
	.word	1024
	.space 2
	.long	__Z21InitActorWanderArounds
	.globl	_RipperEvasive
	.align 4
_RipperEvasive:
	.word	6
	.space 2
	.long	__Z14InitRipperHangs
	.word	1024
	.space 2
	.long	0
	.globl	_RipperSurprised
	.align 4
_RipperSurprised:
	.word	30
	.space 2
	.long	__Z14InitRipperHangs
	.word	701
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_RipperBroadcast
	.align 4
_RipperBroadcast:
	.word	3
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	6
	.space 2
	.long	__Z21InitActorAmbientNoises
	.word	1024
	.space 2
	.long	__Z15InitActorDecides
	.globl	_RipperOffense
	.align 4
_RipperOffense:
	.word	700
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	710
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_RipperBattle
	.align 32
_RipperBattle:
	.word	748
	.space 2
	.long	__Z19InitActorMoveClosers
	.word	750
	.space 2
	.long	__Z19InitActorAlertNoises
	.word	755
	.space 2
	.long	__Z20InitActorAttackNoises
	.word	1024
	.space 2
	.long	__Z15InitActorAttacks
	.globl	_sg_RipperHang
	.align 4
_sg_RipperHang:
	.long	_s_RipperHang
	.long	_s_RipperHang+64
	.long	_s_RipperHang+128
	.long	_s_RipperHang+192
	.long	_s_RipperHang+256
	.globl	_sg_RipperHeart
	.align 4
_sg_RipperHeart:
	.long	_s_RipperHeart
	.long	_s_RipperHeart+64
	.long	_s_RipperHeart+128
	.long	_s_RipperHeart+192
	.long	_s_RipperHeart+256
	.globl	_sg_RipperJumpAttack
	.align 4
_sg_RipperJumpAttack:
	.long	_s_RipperJumpAttack
	.long	_s_RipperJumpAttack+96
	.long	_s_RipperJumpAttack+192
	.long	_s_RipperJumpAttack+288
	.long	_s_RipperJumpAttack+384
	.globl	_sg_RipperSwipe
	.align 4
_sg_RipperSwipe:
	.long	_s_RipperSwipe
	.long	_s_RipperSwipe+128
	.long	_s_RipperSwipe+256
	.long	_s_RipperSwipe+384
	.long	_s_RipperSwipe+512
	.globl	_sg_RipperDeathFall
	.align 4
_sg_RipperDeathFall:
	.long	_s_RipperDeathFall
	.globl	_sg_RipperDeathJump
	.align 4
_sg_RipperDeathJump:
	.long	_s_RipperDeathJump
	.globl	_sg_RipperDead
	.align 4
_sg_RipperDead:
	.long	_s_RipperDead
	.globl	_sg_RipperDie
	.align 4
_sg_RipperDie:
	.long	_s_RipperDie
	.globl	_sg_RipperPain
	.align 4
_sg_RipperPain:
	.long	_s_RipperPain
	.long	_s_RipperPain+16
	.long	_s_RipperPain+32
	.long	_s_RipperPain+48
	.long	_s_RipperPain+64
	.globl	_sg_RipperFall
	.align 4
_sg_RipperFall:
	.long	_s_RipperFall
	.long	_s_RipperFall+96
	.long	_s_RipperFall+192
	.long	_s_RipperFall+288
	.long	_s_RipperFall+384
	.globl	_sg_RipperJump
	.align 4
_sg_RipperJump:
	.long	_s_RipperJump
	.long	_s_RipperJump+96
	.long	_s_RipperJump+192
	.long	_s_RipperJump+288
	.long	_s_RipperJump+384
	.globl	_sg_RipperStand
	.align 4
_sg_RipperStand:
	.long	_s_RipperStand
	.long	_s_RipperStand+16
	.long	_s_RipperStand+32
	.long	_s_RipperStand+48
	.long	_s_RipperStand+64
	.globl	_s_PlayerHeadHurl
	.align 32
_s_PlayerHeadHurl:
	.word	1147
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadHurl
	.word	1148
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadHurl+16
	.word	1149
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadHurl+32
	.word	1150
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadHurl+48
	.word	1151
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadHurl+64
	.globl	_s_PlayerHead
	.align 32
_s_PlayerHead:
	.word	1142
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHead
	.word	1143
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHead+16
	.word	1144
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHead+32
	.word	1145
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHead+48
	.word	1146
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHead+64
	.globl	_s_PlayerHeadFly
	.align 32
_s_PlayerHeadFly:
	.word	1134
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+16
	.word	1135
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+32
	.word	1136
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+48
	.word	1137
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+64
	.word	1138
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+80
	.word	1139
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+96
	.word	1140
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+112
	.word	1141
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly
	.word	1134
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+144
	.word	1135
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+160
	.word	1136
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+176
	.word	1137
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+192
	.word	1138
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+208
	.word	1139
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+224
	.word	1140
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+240
	.word	1141
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+128
	.word	1134
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+272
	.word	1135
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+288
	.word	1136
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+304
	.word	1137
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+320
	.word	1138
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+336
	.word	1139
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+352
	.word	1140
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+368
	.word	1141
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+256
	.word	1134
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+400
	.word	1135
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+416
	.word	1136
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+432
	.word	1137
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+448
	.word	1138
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+464
	.word	1139
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+480
	.word	1140
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+496
	.word	1141
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+384
	.word	1134
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+528
	.word	1135
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+544
	.word	1136
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+560
	.word	1137
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+576
	.word	1138
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+592
	.word	1139
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+608
	.word	1140
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+624
	.word	1141
	.space 2
	.long	16
	.long	__Z12NullAnimators
	.long	_s_PlayerHeadFly+512
	.globl	_s_PlayerDeath
	.align 32
_s_PlayerDeath:
	.word	1152
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+16
	.word	1153
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+32
	.word	1154
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+48
	.word	1155
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+64
	.word	1156
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+80
	.word	1157
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+96
	.word	1158
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+112
	.word	1159
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+128
	.word	1160
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.long	_s_PlayerDeath+144
	.word	1160
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+144
	.word	1152
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+176
	.word	1153
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+192
	.word	1154
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+208
	.word	1155
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+224
	.word	1156
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+240
	.word	1157
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+256
	.word	1158
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+272
	.word	1159
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+288
	.word	1160
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.long	_s_PlayerDeath+304
	.word	1160
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+304
	.word	1152
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+336
	.word	1153
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+352
	.word	1154
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+368
	.word	1155
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+384
	.word	1156
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+400
	.word	1157
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+416
	.word	1158
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+432
	.word	1159
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+448
	.word	1160
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.long	_s_PlayerDeath+464
	.word	1160
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+464
	.word	1152
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+496
	.word	1153
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+512
	.word	1154
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+528
	.word	1155
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+544
	.word	1156
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+560
	.word	1157
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+576
	.word	1158
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+592
	.word	1159
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+608
	.word	1160
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.long	_s_PlayerDeath+624
	.word	1160
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+624
	.word	1152
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+656
	.word	1153
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+672
	.word	1154
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+688
	.word	1155
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+704
	.word	1156
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+720
	.word	1157
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+736
	.word	1158
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+752
	.word	1159
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+768
	.word	1160
	.space 2
	.long	65536
	.long	__Z15QueueFloorBloods
	.long	_s_PlayerDeath+784
	.word	1160
	.space 2
	.long	22
	.long	__Z12NullAnimators
	.long	_s_PlayerDeath+784
	.globl	_RipperActionSet
	.align 32
_RipperActionSet:
	.long	_sg_RipperStand
	.long	_sg_RipperRun
	.long	_sg_RipperJump
	.long	_sg_RipperFall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_RipperPain
	.long	_sg_RipperDie
	.long	0
	.long	_sg_RipperDead
	.long	_sg_RipperDeathJump
	.long	_sg_RipperDeathFall
	.long	_sg_RipperSwipe
	.long	_sg_RipperSpew
	.word	800
	.word	1024
	.long	_sg_RipperJumpAttack
	.long	_sg_RipperSpew
	.space 16
	.word	400
	.word	1024
	.space 8
	.long	_sg_RipperHeart
	.long	_sg_RipperHang
	.long	0
	.long	0
	.globl	_RipperPersonality
	.align 32
_RipperPersonality:
	.long	_RipperBattle
	.long	_RipperOffense
	.long	_RipperBroadcast
	.long	_RipperSurprised
	.long	_RipperEvasive
	.long	_RipperLostTarget
	.long	_RipperCloseRange
	.long	_RipperCloseRange
	.globl	_RipperBrownActionSet
	.align 32
_RipperBrownActionSet:
	.long	_sg_RipperStand
	.long	_sg_RipperRun
	.long	_sg_RipperJump
	.long	_sg_RipperFall
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	_sg_RipperPain
	.long	_sg_RipperDie
	.long	0
	.long	_sg_RipperDead
	.long	_sg_RipperDeathJump
	.long	_sg_RipperDeathFall
	.long	_sg_RipperSwipe
	.space 4
	.word	1024
	.space 2
	.long	_sg_RipperJumpAttack
	.long	_sg_RipperSwipe
	.space 16
	.word	800
	.word	1024
	.space 8
	.long	_sg_RipperHeart
	.long	_sg_RipperHang
	.long	0
	.long	0
	.globl	_sg_RipperRun
	.align 4
_sg_RipperRun:
	.long	_s_RipperRun
	.long	_s_RipperRun+64
	.long	_s_RipperRun+128
	.long	_s_RipperRun+192
	.long	_s_RipperRun+256
	.globl	_s_RipperDie
	.align 32
_s_RipperDie:
	.word	1640
	.space 2
	.long	16
	.long	__Z10NullRippers
	.space 4
	.word	1641
	.space 2
	.long	16
	.long	__Z10NullRippers
	.space 4
	.word	1642
	.space 2
	.long	16
	.long	__Z10NullRippers
	.space 4
	.word	1643
	.space 2
	.long	16
	.long	__Z10NullRippers
	.space 4
	.word	1643
	.space 2
	.long	16
	.long	__Z13DoActorDebriss
	.space 4
	.globl	_RipperAttrib
	.align 32
_RipperAttrib:
	.word	200
	.word	220
	.word	240
	.word	280
	.ascii "\5\0\376\374"
	.byte	3
	.space 3
	.long	95
	.long	96
	.long	97
	.long	98
	.long	99
	.long	100
	.long	0
	.long	0
	.long	0
	.long	0
	.space 4
	.globl	_s_RipperRun
	.align 32
_s_RipperRun:
	.word	1580
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+16
	.word	1581
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+32
	.word	1582
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+48
	.word	1583
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun
	.word	1584
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+80
	.word	1585
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+96
	.word	1586
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+112
	.word	1587
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+64
	.word	1588
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+144
	.word	1589
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+160
	.word	1590
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+176
	.word	1591
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+128
	.word	1592
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+208
	.word	1593
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+224
	.word	1594
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+240
	.word	1595
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+192
	.word	1596
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+272
	.word	1597
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+288
	.word	1598
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+304
	.word	1599
	.space 2
	.long	262160
	.long	__Z12DoRipperMoves
	.long	_s_RipperRun+256
.lcomm _PredictUser,292,32
	.section .rdata,"dr"
	.align 4
__ZZ14PlayerOnLadderP12PLAYERstructE6angles:
	.word	30
	.word	-30
	.globl	_s_FootPrint3
	.data
	.align 4
_s_FootPrint3:
	.word	2492
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_FootPrint3
	.globl	_s_FootPrint2
	.align 4
_s_FootPrint2:
	.word	2491
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_FootPrint2
	.globl	_s_FootPrint1
	.align 4
_s_FootPrint1:
	.word	2490
	.space 2
	.long	30
	.long	__Z12NullAnimators
	.long	_s_FootPrint1
	.section .rdata,"dr"
	.align 32
__ZL8SyncFunc:
	.long	__Z10RandomSyncv
	.long	__Z10PlayerSyncv
	.long	__Z11PlayerSync2v
	.long	__Z6SOSyncv
	.long	__Z9EnemySyncv
	.long	__Z11MissileSyncv
	.long	__Z9ShrapSyncv
	.long	__Z8MiscSyncv
	.long	__Z16MissileSkip4Syncv
	.long	0
	.space 28
	.globl	__ZL16_MIDI_SongActive.lto_priv.0
	.bss
	.align 4
__ZL16_MIDI_SongActive.lto_priv.0:
	.space 4
	.globl	__ZL16_MIDI_SongLoaded.lto_priv.0
	.align 4
__ZL16_MIDI_SongLoaded.lto_priv.0:
	.space 4
.lcomm __ZZ14PauseMultiPlayvE23FlagCapturePauseApplied,1,1
.lcomm __ZZ14PauseMultiPlayvE14SavePrediction,1,1
	.globl	_ps_ChopsRetract
	.data
	.align 4
_ps_ChopsRetract:
	.word	2000
	.space 2
	.long	24
	.long	__Z13pChopsRetractP18PANEL_SPRITEstruct
	.long	_ps_ChopsRetract
	.long	0
	.byte	0
	.byte	0
	.space 2
	.globl	_MV_MixRate
	.bss
	.align 4
_MV_MixRate:
	.space 4
	.globl	__ZL12SoundDrivers.lto_priv.0
	.section .rdata,"dr"
LC46:
	.ascii "SDL\0"
LC47:
	.ascii "DirectSound\0"
LC48:
	.ascii "AdLib OPL3 emulation\0"
LC49:
	.ascii "Windows MME\0"
LC50:
	.ascii "SoundFont2 synthesizer\0"
LC51:
	.ascii "ALSA\0"
	.align 32
__ZL12SoundDrivers.lto_priv.0:
	.long	LC46
	.long	__Z15SDLDrv_GetErrorv
	.long	__Z18SDLDrv_ErrorStringi
	.long	__Z15SDLDrv_PCM_InitPiS_Pv
	.long	__Z19SDLDrv_PCM_Shutdownv
	.long	__Z24SDLDrv_PCM_BeginPlaybackPciiPFvvE
	.long	__Z23SDLDrv_PCM_StopPlaybackv
	.long	__Z15SDLDrv_PCM_Lockv
	.long	__Z17SDLDrv_PCM_Unlockv
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC47
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	LC48
	.long	__Z17AdLibDrv_GetErrorv
	.long	__Z20AdLibDrv_ErrorStringi
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	__Z18AdLibDrv_MIDI_InitP9midifuncs
	.long	__Z22AdLibDrv_MIDI_Shutdownv
	.long	__Z27AdLibDrv_MIDI_StartPlaybackv
	.long	__Z26AdLibDrv_MIDI_HaltPlaybackv
	.long	__Z22AdLibDrv_MIDI_SetTempoii
	.long	0
	.long	0
	.long	__Z21AdLibDrv_MIDI_Servicev
	.long	LC49
	.long	__Z17WinMMDrv_GetErrorv
	.long	__Z20WinMMDrv_ErrorStringi
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	__Z18WinMMDrv_MIDI_InitP9midifuncs
	.long	__Z22WinMMDrv_MIDI_Shutdownv
	.long	__Z27WinMMDrv_MIDI_StartPlaybackv
	.long	__Z26WinMMDrv_MIDI_HaltPlaybackv
	.long	__Z22WinMMDrv_MIDI_SetTempoii
	.long	__Z18WinMMDrv_MIDI_Lockv
	.long	__Z20WinMMDrv_MIDI_Unlockv
	.long	__Z21WinMMDrv_MIDI_Servicev
	.long	LC50
	.long	__Z15SF2Drv_GetErrorv
	.long	__Z18SF2Drv_ErrorStringi
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	__Z16SF2Drv_MIDI_InitP9midifuncs
	.long	__Z20SF2Drv_MIDI_Shutdownv
	.long	__Z25SF2Drv_MIDI_StartPlaybackv
	.long	__Z24SF2Drv_MIDI_HaltPlaybackv
	.long	__Z20SF2Drv_MIDI_SetTempoii
	.long	0
	.long	0
	.long	__Z19SF2Drv_MIDI_Servicev
	.long	LC51
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	_ASS_PCMSoundDriver
	.data
	.align 4
_ASS_PCMSoundDriver:
	.long	-2
	.globl	_VoiceList
	.bss
	.align 32
_VoiceList:
	.space 128
	.globl	_MV_Locked
	.section	.tls$,"dw"
	.align 4
_MV_Locked:
	.space 4
	.globl	_SoundSpriteNum
	.data
	.align 2
_SoundSpriteNum:
	.word	-1
	.globl	_Use_SoundSpriteNum
	.bss
_Use_SoundSpriteNum:
	.space 1
.lcomm __ZZ16DoUpdateSounds3DvE9MoveSkip8,1,1
.lcomm _Predict,7168,32
	.globl	_FinishTimer
	.align 4
_FinishTimer:
	.space 4
	.globl	_GlobPlayerP
	.align 4
_GlobPlayerP:
	.space 4
	.globl	_s_DeadLoWang
	.data
	.align 4
_s_DeadLoWang:
	.word	1160
	.space 2
	.long	100
	.long	__Z12NullAnimators
	.long	_s_DeadLoWang
	.globl	_sg_PlayerHeadHurl
	.align 4
_sg_PlayerHeadHurl:
	.long	_s_PlayerHeadHurl
	.long	_s_PlayerHeadHurl+16
	.long	_s_PlayerHeadHurl+32
	.long	_s_PlayerHeadHurl+48
	.long	_s_PlayerHeadHurl+64
	.globl	_sg_PlayerHead
	.align 4
_sg_PlayerHead:
	.long	_s_PlayerHead
	.long	_s_PlayerHead+16
	.long	_s_PlayerHead+32
	.long	_s_PlayerHead+48
	.long	_s_PlayerHead+64
	.globl	_sg_PlayerHeadFly
	.align 4
_sg_PlayerHeadFly:
	.long	_s_PlayerHeadFly
	.long	_s_PlayerHeadFly+128
	.long	_s_PlayerHeadFly+256
	.long	_s_PlayerHeadFly+384
	.long	_s_PlayerHeadFly+512
	.globl	_sg_PlayerDeath
	.align 4
_sg_PlayerDeath:
	.long	_s_PlayerDeath
	.long	_s_PlayerDeath+160
	.long	_s_PlayerDeath+320
	.long	_s_PlayerDeath+480
	.long	_s_PlayerDeath+640
	.section .rdata,"dr"
	.align 4
__ZZ16DoPlayerBeginDieP12PLAYERstructE15PlayerDeathFunc:
	.long	__Z17DoPlayerDeathFlipP12PLAYERstruct
	.long	__Z20DoPlayerDeathCrumbleP12PLAYERstruct
	.long	__Z20DoPlayerDeathExplodeP12PLAYERstruct
	.long	__Z17DoPlayerDeathFlipP12PLAYERstruct
	.long	__Z20DoPlayerDeathExplodeP12PLAYERstruct
	.long	__Z18DoPlayerDeathDrownP12PLAYERstruct
	.align 4
LC52:
	.ascii "decided to do the graveyard tour.\0"
LC53:
	.ascii "had enough and checked out.\0"
LC54:
	.ascii "didn't fear the Reaper.\0"
	.align 4
LC55:
	.ascii "dialed the 1-800-CYANIDE line.\0"
LC56:
	.ascii "wasted himself.\0"
LC57:
	.ascii "kicked his own ass.\0"
	.align 4
LC58:
	.ascii "went out in blaze of his own glory.\0"
	.align 4
LC59:
	.ascii "killed himself before anyone else could.\0"
LC60:
	.ascii "needs shooting lessons.\0"
LC61:
	.ascii "blew his head off.\0"
	.align 4
LC62:
	.ascii "did everyone a favor and offed himself.\0"
	.align 32
_SuicideNote:
	.long	LC52
	.long	LC53
	.long	LC54
	.long	LC55
	.long	LC56
	.long	LC57
	.long	LC58
	.long	LC59
	.long	LC60
	.long	LC61
	.long	LC62
	.globl	_clipmoveboxtracenum
	.data
	.align 4
_clipmoveboxtracenum:
	.long	3
	.section .rdata,"dr"
	.align 8
LC27:
	.long	2560
	.long	7168
	.align 16
LC37:
	.long	56
	.long	57
	.long	58
	.long	59
	.align 16
LC38:
	.long	60
	.long	61
	.long	62
	.long	63
	.align 16
LC39:
	.long	64
	.long	65
	.long	66
	.long	67
	.align 4
LC45:
	.long	_ps_ChopsRetract
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSplashs;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__Z13netsendpacketiPhi;	.scl	2;	.type	32;	.endef
	.def	__Z12adduserquotePKc;	.scl	2;	.type	32;	.endef
	.def	__Z11DeathStrings;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13PutStringInfoP12PLAYERstructPKc;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerStopOperateP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14ActorCoughItems.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerUpdateKillsP12PLAYERstructs.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoFindGrounds;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	_MV_Kill.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerTurnP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
	.def	@getq16angle.lto_priv.1@8;	.scl	2;	.type	32;	.endef
	.def	__Z14DoPlayerZrangeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z11move_spritesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z13DoPlayerCrawlP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginWadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17COVERinsertspritess;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z18DeleteNoSoundOwners;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z14pClearTextLineP12PLAYERstructl;	.scl	2;	.type	32;	.endef
	.def	__Z23DoSpawnTeleporterEffectP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerDeathResetP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerDivePaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z26DoPlayerNightVisionPaletteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	_paletteSetColorTable;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z6DoFalls;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerSpriteBobP12PLAYERstructsss.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_neartag.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	__Z14FindNearSpriteP12spritetypev7s;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPlayerFlyP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z21UseInventoryRepairKitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15VehicleSetSmokeP19SECTOR_OBJECTstructPFisE;	.scl	2;	.type	32;	.endef
	.def	__Z20DoPlayerOperateMatchP12PLAYERstructh;	.scl	2;	.type	32;	.endef
	.def	__Z11PlaySOsoundss;	.scl	2;	.type	32;	.endef
	.def	__Z21DoPlayerOperateTurretP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18UpdatePlayerSpriteP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z11DoPlayerBobP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14PlayerFallTestP12PLAYERstructi;	.scl	2;	.type	32;	.endef
	.def	__Z23DoPlayerBeginDiveNoWarpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginJumpP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17DoPlayerBeginFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPlayerFallP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z18DoPlayerBeginClimbP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z20DoPlayerBeginOperateP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z19DoPlayerOperateBoatP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15SetRedrawScreenP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15COVER_SetReverbi;	.scl	2;	.type	32;	.endef
	.def	__Z14testquadinsectPiPK4vec2IiEs;	.scl	2;	.type	32;	.endef
	.def	__Z17SpriteQueueDeletes;	.scl	2;	.type	32;	.endef
	.def	__Z15testpointinquadiiPiS_;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z17PlayerDamageSlideP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z26OperateSectorObjectForTicsP19SECTOR_OBJECTstructsiis.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15DoPlayerHorizonP12PLAYERstructPii;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_rotatepoint;	.scl	2;	.type	32;	.endef
	.def	__Z7_AssertPKcS0_j;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoActorSlides;	.scl	2;	.type	32;	.endef
	.def	_hitscan;	.scl	2;	.type	32;	.endef
	.def	__Z14VehicleMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z27DoPlayerSectorUpdatePreMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z28DoPlayerSectorUpdatePostMoveP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10RandomSyncv;	.scl	2;	.type	32;	.endef
	.def	__ZL16DemoWritePacketsPK9SW_PACKETiP6_iobuf.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__Z6DoAnimi;	.scl	2;	.type	32;	.endef
	.def	__Z8DoSectorv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteControlv.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdateInventoryP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16OSD_CaptureInputi;	.scl	2;	.type	32;	.endef
	.def	__Z21PlayerUpdateTimeLimitP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z9SoundDistiiii;	.scl	2;	.type	32;	.endef
	.def	__Z10SoundAngleii;	.scl	2;	.type	32;	.endef
	.def	__Z26InventoryBarUpdatePositionP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerOperateEnvP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	_videoFadePalette;	.scl	2;	.type	32;	.endef
	.def	__Z14Delete3DSoundsv;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnInventoryBarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z11InitSobjGunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17MNU_MeasureStringPKcPsS1_;	.scl	2;	.type	32;	.endef
	.def	__Z16MIDI_AllNotesOffv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z8DemoTermv;	.scl	2;	.type	32;	.endef
	.def	__Z13InitWeaponUziP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	_wm_msgbox.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13TerminateGamev;	.scl	2;	.type	32;	.endef
	.def	__Z14PutStringTimerP12PLAYERstructssPKcs;	.scl	2;	.type	32;	.endef
	.def	__Z8pSuicideP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	_MV_Pan3D;	.scl	2;	.type	32;	.endef
	.def	__Z15MV_BeginServicei;	.scl	2;	.type	32;	.endef
	.def	__Z14PITCH_GetScalei;	.scl	2;	.type	32;	.endef
	.def	_divideu64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	__Z12pSpawnSpriteP12PLAYERstructP17PANEL_STATEstructhii;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponSwordP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponFistP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponHeartP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponHotheadP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15InitWeaponMicroP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponStarP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z17InitWeaponGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	__Z14InitWeaponRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.3;	.scl	2;	.type	32;	.endef
	.def	__Z10NullRippers;	.scl	2;	.type	32;	.endef
	.def	__Z13InitCoolgFires;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorDecides;	.scl	2;	.type	32;	.endef
	.def	__Z12DoRipperMoves;	.scl	2;	.type	32;	.endef
	.def	__Z12DoRipperHangs;	.scl	2;	.type	32;	.endef
	.def	__Z18DoRipperStandHearts;	.scl	2;	.type	32;	.endef
	.def	__Z23DoRipperBeginJumpAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z16DoRipperMoveJumps;	.scl	2;	.type	32;	.endef
	.def	__Z15InitRipperSlashs;	.scl	2;	.type	32;	.endef
	.def	__Z16DoActorDeathMoves;	.scl	2;	.type	32;	.endef
	.def	__Z12NullAnimators;	.scl	2;	.type	32;	.endef
	.def	__Z15QueueFloorBloods;	.scl	2;	.type	32;	.endef
	.def	__Z13DoActorDebriss;	.scl	2;	.type	32;	.endef
	.def	__Z12DoRipperPains;	.scl	2;	.type	32;	.endef
	.def	__Z15InitActorAttacks;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorFindPlayers;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorWanderArounds;	.scl	2;	.type	32;	.endef
	.def	__Z14InitRipperHangs;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorMoveClosers;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorAlertNoises;	.scl	2;	.type	32;	.endef
	.def	__Z21InitActorAmbientNoises;	.scl	2;	.type	32;	.endef
	.def	__Z20InitActorAttackNoises;	.scl	2;	.type	32;	.endef
	.def	__Z10PlayerSyncv;	.scl	2;	.type	32;	.endef
	.def	__Z11PlayerSync2v;	.scl	2;	.type	32;	.endef
	.def	__Z6SOSyncv;	.scl	2;	.type	32;	.endef
	.def	__Z9EnemySyncv;	.scl	2;	.type	32;	.endef
	.def	__Z11MissileSyncv;	.scl	2;	.type	32;	.endef
	.def	__Z9ShrapSyncv;	.scl	2;	.type	32;	.endef
	.def	__Z8MiscSyncv;	.scl	2;	.type	32;	.endef
	.def	__Z16MissileSkip4Syncv;	.scl	2;	.type	32;	.endef
	.def	__Z13pChopsRetractP18PANEL_SPRITEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z15SDLDrv_GetErrorv;	.scl	2;	.type	32;	.endef
	.def	__Z18SDLDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
	.def	__Z15SDLDrv_PCM_InitPiS_Pv;	.scl	2;	.type	32;	.endef
	.def	__Z19SDLDrv_PCM_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z24SDLDrv_PCM_BeginPlaybackPciiPFvvE;	.scl	2;	.type	32;	.endef
	.def	__Z23SDLDrv_PCM_StopPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z15SDLDrv_PCM_Lockv;	.scl	2;	.type	32;	.endef
	.def	__Z17SDLDrv_PCM_Unlockv;	.scl	2;	.type	32;	.endef
	.def	__Z17AdLibDrv_GetErrorv;	.scl	2;	.type	32;	.endef
	.def	__Z20AdLibDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
	.def	__Z18AdLibDrv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
	.def	__Z22AdLibDrv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z27AdLibDrv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z26AdLibDrv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z22AdLibDrv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
	.def	__Z21AdLibDrv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
	.def	__Z17WinMMDrv_GetErrorv;	.scl	2;	.type	32;	.endef
	.def	__Z20WinMMDrv_ErrorStringi;	.scl	2;	.type	32;	.endef
	.def	__Z18WinMMDrv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
	.def	__Z22WinMMDrv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z27WinMMDrv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z26WinMMDrv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z22WinMMDrv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
	.def	__Z18WinMMDrv_MIDI_Lockv;	.scl	2;	.type	32;	.endef
	.def	__Z20WinMMDrv_MIDI_Unlockv;	.scl	2;	.type	32;	.endef
	.def	__Z21WinMMDrv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
	.def	__Z15SF2Drv_GetErrorv;	.scl	2;	.type	32;	.endef
	.def	__Z18SF2Drv_ErrorStringi;	.scl	2;	.type	32;	.endef
	.def	__Z16SF2Drv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
	.def	__Z20SF2Drv_MIDI_Shutdownv;	.scl	2;	.type	32;	.endef
	.def	__Z25SF2Drv_MIDI_StartPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z24SF2Drv_MIDI_HaltPlaybackv;	.scl	2;	.type	32;	.endef
	.def	__Z20SF2Drv_MIDI_SetTempoii;	.scl	2;	.type	32;	.endef
	.def	__Z19SF2Drv_MIDI_Servicev;	.scl	2;	.type	32;	.endef
