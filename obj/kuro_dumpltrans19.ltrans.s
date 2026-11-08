	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z19InitSumoStompAttacks
	.def	__Z19InitSumoStompAttacks;	.scl	2;	.type	32;	.endef
__Z19InitSumoStompAttacks:
LFB0:
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
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movl	_sprite, %esi
	movswl	84(%esp), %eax
	movl	_User(,%eax,4), %ebx
	movl	%eax, 60(%esp)
	imull	$44, %eax, %eax
	movl	%ebx, 28(%esp)
	leal	(%esi,%eax), %ebp
	leal	8(%ebp), %edi
	movl	%edi, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%esi, %edx
	movl	$_StatDamageList, %esi
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$18, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	$12, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L18:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L3
	movl	%esi, 56(%esp)
	jmp	L2
	.p2align 4,,10
	.p2align 3
L37:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	movl	%ecx, 48(%esp)
	cmpb	$64, %dl
	je	L34
	imull	%esi, %edx
	movl	48(%esp), %esi
	movl	%edi, %ecx
	addl	%edx, %edx
	addl	%edx, %esi
	subl	%esi, %ecx
L7:
	subl	48(%esp), %edx
	addl	%edx, %edi
L10:
	movzwl	24(%eax), %esi
	addl	%ecx, %edi
	movzbl	21(%eax), %edx
	sarl	%edi
	movw	%si, 48(%esp)
	movswl	14(%eax), %esi
	movswl	_tilesiz+2(,%esi,4), %ecx
	movl	%ecx, 52(%esp)
	movl	8(%eax), %ecx
	testb	$-128, 12(%eax)
	je	L11
	movsbl	_picanm+2(%esi,%esi,4), %eax
	sall	$8, %eax
	movl	%eax, %esi
	cmpb	$64, %dl
	je	L35
	imull	52(%esp), %edx
	leal	(%edx,%edx), %eax
	leal	(%esi,%eax), %edx
	movl	%eax, 52(%esp)
	movl	%ecx, %eax
	subl	%edx, %eax
L13:
	movl	52(%esp), %edx
	subl	%esi, %edx
	addl	%edx, %ecx
L16:
	addl	%eax, %ecx
	movswl	46(%esp), %eax
	movl	32(%esp), %edx
	movl	%edi, 12(%esp)
	sarl	%ecx
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	48(%esp), %eax
	movl	%eax, (%esp)
	movl	40(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L36
	.p2align 4
	.p2align 3
L4:
	cmpw	$-1, %bx
	je	L31
L2:
	movl	28(%esp), %edi
	movswl	%bx, %eax
	movl	%eax, 20(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	cmpl	%eax, 200(%edi)
	jne	L31
	movl	20(%esp), %ebx
	movzwl	_nextspritestat(%ebx,%ebx), %ebx
	testb	$8, 43(%eax)
	je	L4
	movl	(%eax), %esi
	movl	4(%ebp), %ecx
	movl	0(%ebp), %edx
	movl	4(%eax), %edi
	movl	%ecx, 24(%esp)
	movl	%esi, %ecx
	subl	%edx, %ecx
	movl	%edx, 36(%esp)
	movl	%ecx, %edx
	movl	%edi, 32(%esp)
	negl	%edx
	movl	%esi, 40(%esp)
	movzbl	18(%ebp), %esi
	cmovs	%ecx, %edx
	subl	24(%esp), %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovs	%edi, %ecx
	movzbl	18(%eax), %edi
	sall	$2, %esi
	cmpl	%ecx, %edx
	leal	16384(%esi,%edi,4), %edi
	leal	(%edx,%ecx), %esi
	cmovg	%ecx, %edx
	sarl	%edx
	subl	%edx, %esi
	cmpl	%esi, %edi
	jle	L4
	movzwl	24(%ebp), %edi
	movswl	14(%ebp), %ecx
	movzbl	21(%ebp), %edx
	movw	%di, 46(%esp)
	movswl	_tilesiz+2(,%ecx,4), %esi
	movl	8(%ebp), %edi
	testb	$-128, 12(%ebp)
	jne	L37
	cmpb	$64, %dl
	je	L38
	imull	%esi, %edx
	sall	$2, %edx
L9:
	movl	%edi, %ecx
	subl	%edx, %ecx
	jmp	L10
	.p2align 4,,10
	.p2align 3
L11:
	cmpb	$64, %dl
	je	L39
	imull	52(%esp), %edx
	sall	$2, %edx
L15:
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	L16
	.p2align 4,,10
	.p2align 3
L31:
	movl	56(%esp), %esi
L3:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L18
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
L36:
	.cfi_restore_state
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L4
	.p2align 4,,10
	.p2align 3
L34:
	sall	$7, %esi
	movl	%esi, %edx
	leal	(%esi,%ecx), %esi
	movl	%edi, %ecx
	subl	%esi, %ecx
	jmp	L7
	.p2align 4,,10
	.p2align 3
L39:
	movl	52(%esp), %edx
	sall	$8, %edx
	jmp	L15
	.p2align 4,,10
	.p2align 3
L35:
	movl	52(%esp), %edx
	sall	$7, %edx
	movl	%edx, 52(%esp)
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	L13
	.p2align 4,,10
	.p2align 3
L38:
	sall	$8, %esi
	movl	%esi, %edx
	jmp	L9
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__Z16InitMiniSumoClaps
	.def	__Z16InitMiniSumoClaps;	.scl	2;	.type	32;	.endef
__Z16InitMiniSumoClaps:
LFB2:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movswl	68(%esp), %edi
	movl	%esi, 52(%esp)
	movl	_User(,%edi,4), %eax
	.cfi_offset 6, -16
	movl	200(%eax), %esi
	movl	%eax, 24(%esp)
	testl	%esi, %esi
	je	L41
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	movl	_sprite, %ecx
	movl	%ebp, 60(%esp)
	.cfi_offset 5, -8
	movl	(%esi), %eax
	movl	4(%esi), %ebp
	addl	%ecx, %ebx
	movl	%eax, 36(%esp)
	movl	4(%ebx), %edx
	movl	%ebp, 32(%esp)
	movl	%edx, 20(%esp)
	movl	(%ebx), %edx
	subl	%edx, %eax
	movl	%edx, 28(%esp)
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	subl	20(%esp), %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovns	%edx, %ebp
	cmpl	%ebp, %eax
	leal	(%eax,%ebp), %edx
	cmovg	%ebp, %eax
	movzbl	18(%esi), %ebp
	sarl	%eax
	subl	%eax, %edx
	movzbl	18(%ebx), %eax
	sall	$2, %eax
	leal	(%eax,%ebp,4), %eax
	leal	999(%eax), %ebp
	cmpl	%edx, %ebp
	jge	L84
	addl	$10000, %eax
	cmpl	%edx, %eax
	jle	L83
	movzwl	24(%ebx), %eax
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movw	%ax, 44(%esp)
	movswl	_tilesiz+2(,%ecx,4), %ebp
	movl	8(%ebx), %eax
	testb	$-128, 12(%ebx)
	jne	L85
	cmpb	$64, %dl
	je	L86
	imull	%ebp, %edx
	sall	$2, %edx
L59:
	movl	%eax, %ebp
	subl	%edx, %ebp
L60:
	addl	%ebp, %eax
	movswl	14(%esi), %edx
	movl	8(%esi), %ecx
	sarl	%eax
	movl	%eax, 40(%esp)
	movzwl	24(%esi), %eax
	movswl	_tilesiz+2(,%edx,4), %ebp
	movw	%ax, 46(%esp)
	movzbl	21(%esi), %eax
	testb	$-128, 12(%esi)
	je	L61
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L87
	imull	%ebp, %eax
	movl	%ecx, %esi
	addl	%eax, %eax
	leal	(%edx,%eax), %ebp
	subl	%ebp, %esi
L63:
	subl	%edx, %eax
	addl	%eax, %ecx
L66:
	movswl	44(%esp), %eax
	addl	%esi, %ecx
	movl	32(%esp), %edx
	sarl	%ecx
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	46(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L83
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
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
	movl	$18, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	200(%eax), %eax
	subl	_sprite, %eax
	movl	%edi, (%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, 4(%esp)
	call	__Z19SpawnFireballFlamesss
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %ebp
	.cfi_restore 5
L41:
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L84:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %edx
	movl	%edi, %eax
	subl	%ecx, %edx
	movl	$5120, %ecx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movswl	%dx, %edx
	call	__Z14SpriteOverlapZssi
	testb	%al, %al
	je	L83
	movzwl	24(%ebx), %eax
	movswl	14(%ebx), %ebp
	movl	8(%ebx), %ecx
	movw	%ax, 46(%esp)
	movswl	_tilesiz+2(,%ebp,4), %edx
	movzbl	21(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L43
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	sall	$8, %ebp
	cmpb	$64, %al
	je	L88
	imull	%edx, %eax
	addl	%eax, %eax
	leal	(%eax,%ebp), %edx
	movl	%eax, 40(%esp)
	movl	%ecx, %eax
	subl	%edx, %eax
L45:
	movl	40(%esp), %edx
	subl	%ebp, %edx
	addl	%edx, %ecx
	jmp	L48
	.p2align 4,,10
	.p2align 3
L83:
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	52(%esp), %esi
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L85:
	.cfi_restore_state
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %dl
	je	L89
	imull	%ebp, %edx
	addl	%edx, %edx
	leal	(%ecx,%edx), %ebp
	movl	%edx, 40(%esp)
	movl	%ebp, %edx
	movl	%eax, %ebp
	subl	%edx, %ebp
L57:
	movl	40(%esp), %edx
	subl	%ecx, %edx
	addl	%edx, %eax
	jmp	L60
	.p2align 4,,10
	.p2align 3
L61:
	cmpb	$64, %al
	je	L90
	imull	%ebp, %eax
	sall	$2, %eax
L65:
	movl	%ecx, %esi
	subl	%eax, %esi
	jmp	L66
	.p2align 4,,10
	.p2align 3
L43:
	cmpb	$64, %al
	je	L91
	imull	%edx, %eax
	leal	0(,%eax,4), %edx
L47:
	movl	%ecx, %eax
	subl	%edx, %eax
L48:
	addl	%ecx, %eax
	movswl	14(%esi), %edx
	movl	8(%esi), %ecx
	sarl	%eax
	movl	%eax, 40(%esp)
	movzwl	24(%esi), %eax
	movswl	_tilesiz+2(,%edx,4), %ebp
	movw	%ax, 44(%esp)
	movzbl	21(%esi), %eax
	testb	$-128, 12(%esi)
	je	L49
	movsbl	_picanm+2(%edx,%edx,4), %edx
	movl	%edx, %esi
	sall	$8, %esi
	cmpb	$64, %al
	je	L92
	imull	%ebp, %eax
	movl	%ecx, %edx
	addl	%eax, %eax
	leal	(%esi,%eax), %ebp
	subl	%ebp, %edx
L51:
	subl	%esi, %eax
	addl	%eax, %ecx
L54:
	movswl	46(%esp), %eax
	addl	%edx, %ecx
	movl	32(%esp), %edx
	sarl	%ecx
	movl	%eax, 16(%esp)
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	20(%esp), %eax
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	44(%esp), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L83
	leal	8(%ebx), %esi
	movl	$-1171354717, %ecx
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
	movl	$82, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$9, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	%edi, 4(%esp)
	movl	200(%eax), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %ebp
	.cfi_restore 5
	jmp	L41
	.p2align 4,,10
	.p2align 3
L91:
	.cfi_restore_state
	sall	$8, %edx
	jmp	L47
	.p2align 4,,10
	.p2align 3
L88:
	sall	$7, %edx
	movl	%ecx, %eax
	movl	%edx, 40(%esp)
	addl	%ebp, %edx
	subl	%edx, %eax
	jmp	L45
	.p2align 4,,10
	.p2align 3
L49:
	cmpb	$64, %al
	je	L93
	imull	%ebp, %eax
	sall	$2, %eax
L53:
	movl	%ecx, %edx
	subl	%eax, %edx
	jmp	L54
	.p2align 4,,10
	.p2align 3
L90:
	movl	%ebp, %eax
	sall	$8, %eax
	jmp	L65
	.p2align 4,,10
	.p2align 3
L87:
	movl	%ebp, %eax
	movl	%ecx, %esi
	sall	$7, %eax
	leal	(%edx,%eax), %ebp
	subl	%ebp, %esi
	jmp	L63
	.p2align 4,,10
	.p2align 3
L86:
	movl	%ebp, %edx
	sall	$8, %edx
	jmp	L59
	.p2align 4,,10
	.p2align 3
L89:
	movl	%ebp, %edx
	movl	%eax, %ebp
	sall	$7, %edx
	movl	%edx, 40(%esp)
	addl	%ecx, %edx
	subl	%edx, %ebp
	jmp	L57
	.p2align 4,,10
	.p2align 3
L92:
	movl	%ebp, %eax
	movl	%ecx, %edx
	sall	$7, %eax
	leal	(%esi,%eax), %ebp
	subl	%ebp, %edx
	jmp	L51
	.p2align 4,,10
	.p2align 3
L93:
	movl	%ebp, %eax
	sall	$8, %eax
	jmp	L53
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__Z15InitRipperSlashs
	.def	__Z15InitRipperSlashs;	.scl	2;	.type	32;	.endef
__Z15InitRipperSlashs:
LFB3:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	_sprite, %edi
	movswl	68(%esp), %eax
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	movl	%eax, 16(%esp)
	leal	8(%ebp), %esi
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$315, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$_StatDamageList, %esi
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L105:
	movswl	(%esi), %eax
	movswl	_headspritestat(%eax,%eax), %edi
	cmpw	$-1, %di
	je	L96
	movl	%esi, 28(%esp)
	jmp	L95
	.p2align 4,,10
	.p2align 3
L99:
	movswl	10(%esp), %edi
	cmpw	$-1, %di
	je	L112
L95:
	cmpw	%di, 68(%esp)
	je	L112
	movzwl	_nextspritestat(%edi,%edi), %eax
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movl	8(%ebp), %ebx
	movl	4(%ebp), %ecx
	subl	8(%esi), %ebx
	subl	4(%esi), %ecx
	movw	%ax, 10(%esp)
	movl	_User(,%edi,4), %eax
	movl	%eax, 12(%esp)
	movl	0(%ebp), %eax
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
	jge	L97
	leal	36(%esp), %eax
	leal	40(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edx
	movl	44(%esp), %eax
L97:
	cmpl	%eax, %edx
	jge	L98
	leal	44(%esp), %ebx
	leal	36(%esp), %eax
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %edx
	movl	44(%esp), %eax
L98:
	movl	%edx, %ecx
	addl	40(%esp), %eax
	movl	12(%esp), %ebx
	sarl	$4, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%eax, %edx
	movl	16(%esp), %eax
	movl	188(%eax), %eax
	addl	188(%ebx), %eax
	cmpl	%edx, %eax
	jb	L99
	movl	0(%ebp), %eax
	movl	(%esi), %ebx
	movl	4(%ebp), %ecx
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	subl	%ebx, %edx
	movl	%ecx, 20(%esp)
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	movzbl	18(%esi), %esi
	subl	%edx, %ecx
	movl	%edx, 12(%esp)
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movzbl	18(%ebp), %ecx
	sall	$2, %esi
	cmpl	%edx, %eax
	leal	599(%esi,%ecx,4), %esi
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %esi
	jl	L99
	subl	24(%esp), %ebx
	movl	12(%esp), %edx
	movl	%ebx, %ecx
	subl	20(%esp), %edx
	call	@getangle@8
	movswl	28(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	$1024, %edx
	jle	L101
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovl	%edx, %ecx
L101:
	subl	%ecx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	$149, %ax
	ja	L99
	movl	32(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movswl	10(%esp), %edi
	cmpw	$-1, %di
	jne	L95
	.p2align 4
	.p2align 3
L112:
	movl	28(%esp), %esi
L96:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L105
	addl	$48, %esp
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
LFE3:
	.p2align 4
	.globl	__Z14InitBunnySlashs
	.def	__Z14InitBunnySlashs;	.scl	2;	.type	32;	.endef
__Z14InitBunnySlashs:
LFB7:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %edi
	movswl	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	leal	8(%ebp), %esi
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$424, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$_StatDamageList, %esi
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L123:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L116
	movl	%esi, 24(%esp)
	jmp	L115
	.p2align 4,,10
	.p2align 3
L117:
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	je	L130
L115:
	cmpw	%bx, 52(%esp)
	je	L130
	movswl	%bx, %esi
	movl	4(%ebp), %edi
	movzwl	_nextspritestat(%esi,%esi), %eax
	imull	$44, %esi, %ecx
	addl	_sprite, %ecx
	movl	(%ecx), %ebx
	movl	%edi, 16(%esp)
	movw	%ax, 10(%esp)
	movl	0(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	subl	%ebx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	movzbl	18(%ecx), %ecx
	subl	%edx, %edi
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	movzbl	18(%ebp), %edi
	sall	$2, %ecx
	cmpl	%edx, %eax
	leal	599(%ecx,%edi,4), %edi
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %edi
	jl	L117
	subl	20(%esp), %ebx
	movl	12(%esp), %edx
	movl	%ebx, %ecx
	subl	16(%esp), %edx
	call	@getangle@8
	movswl	28(%ebp), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	$1024, %ebx
	jle	L119
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L119:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$149, %ax
	ja	L117
	movl	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	jne	L115
	.p2align 4
	.p2align 3
L130:
	movl	24(%esp), %esi
L116:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L123
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
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z13InitSerpSlashs
	.def	__Z13InitSerpSlashs;	.scl	2;	.type	32;	.endef
__Z13InitSerpSlashs:
LFB8:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %edi
	movswl	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	leal	8(%ebp), %esi
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$128, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$_StatDamageList, %esi
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L141:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L134
	movl	%esi, 24(%esp)
	jmp	L133
	.p2align 4,,10
	.p2align 3
L135:
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	je	L148
L133:
	cmpw	%bx, 52(%esp)
	je	L148
	movswl	%bx, %esi
	movl	4(%ebp), %edi
	movzwl	_nextspritestat(%esi,%esi), %eax
	imull	$44, %esi, %ecx
	addl	_sprite, %ecx
	movl	(%ecx), %ebx
	movl	%edi, 16(%esp)
	movw	%ax, 10(%esp)
	movl	0(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	subl	%ebx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	movzbl	18(%ecx), %ecx
	subl	%edx, %edi
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	movzbl	18(%ebp), %edi
	sall	$2, %ecx
	cmpl	%edx, %eax
	leal	799(%ecx,%edi,4), %edi
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %edi
	jl	L135
	subl	20(%esp), %ebx
	movl	12(%esp), %edx
	movl	%ebx, %ecx
	subl	16(%esp), %edx
	call	@getangle@8
	movswl	28(%ebp), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	$1024, %ebx
	jle	L137
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L137:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$149, %ax
	ja	L135
	movl	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	jne	L133
	.p2align 4
	.p2align 3
L148:
	movl	24(%esp), %esi
L134:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L141
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
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__Z13InitCoolgBashs
	.def	__Z13InitCoolgBashs;	.scl	2;	.type	32;	.endef
__Z13InitCoolgBashs:
LFB9:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %edi
	movswl	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	leal	8(%ebp), %esi
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$82, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$_StatDamageList, %esi
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L159:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L152
	movl	%esi, 24(%esp)
	movl	%ebp, %edi
	jmp	L151
	.p2align 4,,10
	.p2align 3
L153:
	cmpw	$-1, %bx
	je	L169
L151:
	cmpw	%bx, 52(%esp)
	je	L169
	movswl	%bx, %esi
	imull	$44, %esi, %edx
	addl	_sprite, %edx
	movzwl	_nextspritestat(%esi,%esi), %ebx
	testb	$8, 43(%edx)
	je	L153
	movl	(%edx), %eax
	movl	(%edi), %ecx
	movl	4(%edi), %ebp
	movl	%ecx, 20(%esp)
	subl	%eax, %ecx
	movl	%eax, 16(%esp)
	movl	%ecx, %eax
	negl	%eax
	movl	%ebp, 12(%esp)
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	movzbl	18(%edx), %edx
	subl	%ecx, %ebp
	movl	%ecx, 8(%esp)
	movl	%ebp, %ecx
	negl	%ecx
	cmovs	%ebp, %ecx
	movzbl	18(%edi), %ebp
	sall	$2, %edx
	cmpl	%ecx, %eax
	leal	599(%edx,%ebp,4), %ebp
	leal	(%eax,%ecx), %edx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edx
	cmpl	%edx, %ebp
	jl	L153
	movl	8(%esp), %edx
	movl	16(%esp), %ecx
	subl	12(%esp), %edx
	subl	20(%esp), %ecx
	call	@getangle@8
	movswl	28(%edi), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebp
	negl	%ebp
	cmovns	%ebp, %ecx
	cmpl	$1024, %ecx
	jle	L155
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L155:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$149, %ax
	ja	L153
	movl	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	cmpw	$-1, %bx
	jne	L151
	.p2align 4
	.p2align 3
L169:
	movl	24(%esp), %esi
	movl	%edi, %ebp
L152:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L159
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
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z13InitSkelSlashs
	.def	__Z13InitSkelSlashs;	.scl	2;	.type	32;	.endef
__Z13InitSkelSlashs:
LFB10:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %edi
	movswl	52(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	leal	8(%ebp), %esi
	movl	%esi, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebp), %ecx
	movl	$112, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$_StatDamageList, %esi
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L180:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L173
	movl	%esi, 24(%esp)
	jmp	L172
	.p2align 4,,10
	.p2align 3
L174:
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	je	L187
L172:
	cmpw	%bx, 52(%esp)
	je	L187
	movswl	%bx, %esi
	movl	4(%ebp), %edi
	movzwl	_nextspritestat(%esi,%esi), %eax
	imull	$44, %esi, %ecx
	addl	_sprite, %ecx
	movl	(%ecx), %ebx
	movl	%edi, 16(%esp)
	movw	%ax, 10(%esp)
	movl	0(%ebp), %eax
	movl	%eax, %edx
	movl	%eax, 20(%esp)
	subl	%ebx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	movzbl	18(%ecx), %ecx
	subl	%edx, %edi
	movl	%edx, 12(%esp)
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	movzbl	18(%ebp), %edi
	sall	$2, %ecx
	cmpl	%edx, %eax
	leal	599(%ecx,%edi,4), %edi
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %edi
	jl	L174
	subl	20(%esp), %ebx
	movl	12(%esp), %edx
	movl	%ebx, %ecx
	subl	16(%esp), %edx
	call	@getangle@8
	movswl	28(%ebp), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	$1024, %ebx
	jle	L176
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L176:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$149, %ax
	ja	L174
	movl	28(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	jne	L172
	.p2align 4
	.p2align 3
L187:
	movl	24(%esp), %esi
L173:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L180
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
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__Z12InitGoroChops
	.def	__Z12InitGoroChops;	.scl	2;	.type	32;	.endef
__Z12InitGoroChops:
LFB11:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %ebx
	movswl	60(%esp), %eax
	movl	%eax, 36(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	leal	8(%ebp), %edi
	leal	4(%ebp), %esi
	movl	%edi, %edx
	movl	%esi, 28(%esp)
	subl	%ebx, %edx
	movl	%edi, 32(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%esi, %ecx
	movl	$106, %eax
	movl	$_StatDamageList, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	.p2align 4
	.p2align 3
L198:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L191
	movl	%esi, 24(%esp)
	movl	%ebp, %esi
	jmp	L190
	.p2align 4,,10
	.p2align 3
L192:
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	je	L205
L190:
	cmpw	%bx, 60(%esp)
	je	L205
	movswl	%bx, %edi
	movl	(%esi), %edx
	movl	4(%esi), %ebp
	movzwl	_nextspritestat(%edi,%edi), %eax
	imull	$44, %edi, %ecx
	addl	_sprite, %ecx
	movl	%edx, 20(%esp)
	movl	4(%ecx), %ebx
	movw	%ax, 10(%esp)
	movl	(%ecx), %eax
	movl	%ebp, 12(%esp)
	movzbl	18(%ecx), %ecx
	subl	%eax, %edx
	movl	%eax, 16(%esp)
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	subl	%ebx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovs	%ebp, %edx
	movzbl	18(%esi), %ebp
	sall	$2, %ecx
	cmpl	%edx, %eax
	leal	699(%ecx,%ebp,4), %ebp
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %ebp
	jl	L192
	subl	12(%esp), %ebx
	movl	16(%esp), %ecx
	movl	%ebx, %edx
	subl	20(%esp), %ecx
	call	@getangle@8
	movswl	28(%esi), %ecx
	movl	%ecx, %edx
	subl	%eax, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	$1024, %ebx
	jle	L194
	leal	2048(%edx), %ecx
	cmpw	$1025, %dx
	cmovl	%ecx, %edx
	leal	2048(%eax), %ecx
	cmpl	$1025, %eax
	cmovl	%ecx, %eax
L194:
	subl	%eax, %edx
	movl	%edx, %eax
	negw	%ax
	cmovs	%edx, %eax
	cmpw	$149, %ax
	ja	L192
	movl	32(%esp), %ebx
	movl	_sprite, %ecx
	movl	$-1171354717, %eax
	movl	28(%esp), %ebp
	movl	%ebx, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%ebp, %ecx
	mull	%edx
	movl	$107, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	36(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movzwl	10(%esp), %ebx
	cmpw	$-1, %bx
	jne	L190
	.p2align 4
	.p2align 3
L205:
	movl	%esi, %ebp
	movl	24(%esp), %esi
L191:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L198
	addl	$40, %esp
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
LFE11:
	.p2align 4
	.globl	__Z13WeaponAutoAimP12spritetypev7ssh
	.def	__Z13WeaponAutoAimP12spritetypev7ssh;	.scl	2;	.type	32;	.endef
__Z13WeaponAutoAimP12spritetypev7ssh:
LFB12:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	40(%esp), %edi
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	_sprite, %esi
	movl	%edi, %eax
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L208
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L208
	testb	$2, 22969(%eax)
	je	L224
L208:
	movzbl	52(%esp), %ecx
	movswl	48(%esp), %edx
	movl	%ebp, 32(%esp)
	movl	%edi, %eax
	.cfi_offset 5, -8
	movswl	44(%esp), %ebp
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_User(,%ebp,4), %ebx
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	%eax, %edi
	cmpl	$-1, %eax
	jne	L245
L242:
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
L207:
	movl	%edi, %eax
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L245:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	imull	$44, %ebp, %ebp
	addl	%ebp, %esi
	imull	$44, %eax, %ebp
	movl	_User(,%eax,4), %eax
	movw	%di, 186(%ebx)
	addl	_sprite, %ebp
	orl	$6, 68(%eax)
	movl	4(%ebp), %edx
	movl	0(%ebp), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	_sprite, %ebx
	movl	$-1171354717, %edx
	movl	%eax, %ecx
	leal	28(%esi), %eax
	subl	%ebx, %eax
	movl	%ebx, (%esp)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esi), %eax
	movw	%cx, 28(%esi)
	subl	4(%ebp), %eax
	movl	%eax, %edx
	movl	(%esi), %eax
	subl	0(%ebp), %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 12(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	je	L211
	testl	%ecx, %ecx
	je	L246
	cmpl	%eax, %ecx
	jl	L247
L214:
	movl	%edx, %eax
	movl	%ecx, %ebx
	sarl	%eax
	sarl	$5, %ebx
	addl	%edx, %eax
	movl	%ecx, %edx
	sarl	$7, %ecx
	subl	%ebx, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$6, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	leal	(%edx,%eax), %ecx
L211:
	testl	%ecx, %ecx
	je	L242
	movl	_sprite, %eax
	movl	%eax, (%esp)
L213:
	movswl	14(%ebp), %eax
	movl	8(%ebp), %ebx
	movswl	_tilesiz+2(,%eax,4), %edx
	movl	%edx, 4(%esp)
	movzbl	21(%ebp), %edx
	testb	$-128, 12(%ebp)
	je	L215
	movl	4(%esp), %ebp
	cmpb	$64, %dl
	je	L248
	imull	%edx, %ebp
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	leal	(%eax,%ebp,2), %ebp
L244:
	movl	%ebx, %eax
	imull	4(%esp), %edx
	subl	%ebp, %eax
	movl	8(%esi), %ebp
	movl	%ebp, %ebx
	sall	$2, %edx
	subl	%eax, %ebx
	movl	%ebx, 8(%esp)
L220:
	cmpl	$-12800, 8(%esp)
	jge	L221
	sarl	%edx
	addl	%eax, %edx
L222:
	movswl	32(%esi), %eax
	subl	%ebp, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	leal	36(%esi), %edx
	subl	(%esp), %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%esi)
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L247:
	.cfi_restore_state
	leal	12(%esp), %eax
	leal	16(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	jmp	L214
	.p2align 4,,10
	.p2align 3
L221:
	movl	%edx, %ebx
	sarl	$2, %edx
	sarl	$3, %ebx
	addl	%eax, %edx
	addl	%eax, %ebx
	cmpl	$12801, 8(%esp)
	cmovge	%ebx, %edx
	jmp	L222
	.p2align 4,,10
	.p2align 3
L215:
	cmpb	$64, %dl
	je	L249
	movl	4(%esp), %ebp
	imull	%edx, %ebp
	sall	$2, %ebp
	jmp	L244
	.p2align 4,,10
	.p2align 3
L246:
	movl	%eax, %ecx
	jmp	L213
	.p2align 4,,10
	.p2align 3
L248:
	movsbl	_picanm+2(%eax,%eax,4), %edx
	sall	$7, %ebp
	sall	$8, %edx
	addl	%ebp, %edx
L243:
	movl	8(%esi), %ebp
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	4(%esp), %edx
	movl	%ebp, %ebx
	subl	%eax, %ebx
	sall	$8, %edx
	movl	%ebx, 8(%esp)
	jmp	L220
	.p2align 4,,10
	.p2align 3
L249:
	movl	4(%esp), %edx
	sall	$8, %edx
	jmp	L243
L224:
	.cfi_restore 3
	.cfi_restore 5
	movl	$-1, %edi
	jmp	L207
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z17WeaponAutoAimZvelP12spritetypev7sPish
	.def	__Z17WeaponAutoAimZvelP12spritetypev7sPish;	.scl	2;	.type	32;	.endef
__Z17WeaponAutoAimZvelP12spritetypev7sPish:
LFB15:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	40(%esp), %esi
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%esi, %eax
	subl	%edi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L251
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L251
	testb	$2, 22969(%eax)
	je	L267
L251:
	movzbl	56(%esp), %ecx
	movswl	52(%esp), %edx
	movl	%ebp, 32(%esp)
	movl	%esi, %eax
	.cfi_offset 5, -8
	movswl	44(%esp), %ebp
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_User(,%ebp,4), %ebx
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	%eax, %esi
	cmpl	$-1, %eax
	jne	L288
L285:
	movl	20(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
L250:
	movl	%esi, %eax
	movl	28(%esp), %edi
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L288:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	imull	$44, %ebp, %ebp
	addl	%ebp, %edi
	imull	$44, %eax, %ebp
	movl	_User(,%eax,4), %eax
	movw	%si, 186(%ebx)
	addl	_sprite, %ebp
	orl	$6, 68(%eax)
	movl	4(%ebp), %edx
	movl	0(%ebp), %ecx
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
	movl	4(%edi), %eax
	movw	%cx, 28(%edi)
	subl	4(%ebp), %eax
	movl	%eax, %edx
	movl	(%edi), %eax
	subl	0(%ebp), %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 12(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 16(%esp)
	movl	%eax, %edx
	testl	%eax, %eax
	je	L254
	testl	%ecx, %ecx
	je	L289
	cmpl	%eax, %ecx
	jl	L290
L257:
	movl	%edx, %eax
	movl	%ecx, %ebx
	sarl	%eax
	sarl	$5, %ebx
	addl	%edx, %eax
	movl	%ecx, %edx
	sarl	$7, %ecx
	subl	%ebx, %edx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$6, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	leal	(%edx,%eax), %ecx
L254:
	testl	%ecx, %ecx
	je	L285
L256:
	movswl	14(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%eax, 4(%esp)
	movswl	_tilesiz+2(,%eax,4), %ebx
	movl	%edx, (%esp)
	movzbl	21(%ebp), %eax
	testb	$-128, 12(%ebp)
	jne	L291
	cmpb	$64, %al
	je	L292
	movl	%eax, %edx
	movl	%eax, 8(%esp)
	imull	%ebx, %edx
	sall	$2, %edx
L287:
	movl	(%esp), %eax
	movl	8(%edi), %ebp
	subl	%edx, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%edx, (%esp)
	movl	8(%esp), %edx
	imull	%ebx, %edx
	sall	$2, %edx
L263:
	cmpl	$-12800, (%esp)
	jge	L264
	sarl	%edx
	addl	%eax, %edx
L265:
	movswl	32(%edi), %eax
	subl	%ebp, %edx
	imull	%edx, %eax
	cltd
	idivl	%ecx
	movl	48(%esp), %edx
	movl	%eax, (%edx)
	movl	%esi, %eax
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %esi
	movl	28(%esp), %edi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L291:
	.cfi_restore_state
	cmpb	$64, %al
	je	L293
	movl	%eax, %ebp
	movl	%eax, 8(%esp)
	movl	4(%esp), %eax
	imull	%ebx, %ebp
	movsbl	_picanm+2(%eax,%eax,4), %edx
	sall	$8, %edx
	leal	(%edx,%ebp,2), %edx
	jmp	L287
	.p2align 4,,10
	.p2align 3
L290:
	leal	12(%esp), %eax
	leal	16(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	16(%esp), %edx
	movl	12(%esp), %ecx
	jmp	L257
	.p2align 4,,10
	.p2align 3
L264:
	movl	%edx, %ebx
	sarl	$2, %edx
	sarl	$3, %ebx
	addl	%eax, %edx
	addl	%eax, %ebx
	cmpl	$12801, (%esp)
	cmovge	%ebx, %edx
	jmp	L265
	.p2align 4,,10
	.p2align 3
L289:
	movl	%eax, %ecx
	jmp	L256
	.p2align 4,,10
	.p2align 3
L292:
	movl	%ebx, %edx
	sall	$8, %edx
L286:
	movl	(%esp), %eax
	movl	8(%edi), %ebp
	sall	$8, %ebx
	subl	%edx, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
	movl	%edx, (%esp)
	movl	%ebx, %edx
	jmp	L263
	.p2align 4,,10
	.p2align 3
L293:
	movl	4(%esp), %edx
	movl	%ebx, %eax
	sall	$7, %eax
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	addl	%eax, %edx
	jmp	L286
L267:
	.cfi_restore 3
	.cfi_restore 5
	movl	$-1, %esi
	jmp	L250
	.cfi_endproc
LFE15:
	.p2align 4
	.globl	__Z14SpawnDemonFists
	.def	__Z14SpawnDemonFists;	.scl	2;	.type	32;	.endef
__Z14SpawnDemonFists:
LFB16:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movswl	44(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	_User(,%eax,4), %edx
	testb	$-128, 69(%edx)
	.cfi_offset 3, -20
	jne	L302
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	movl	%ebp, 36(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	14(%eax), %ecx
	movswl	28(%eax), %esi
	movl	8(%eax), %ebx
	movswl	_tilesiz+2(,%ecx,4), %ebp
	movzbl	21(%eax), %edx
	testb	$-128, 12(%eax)
	jne	L304
	cmpb	$64, %dl
	je	L305
	imull	%ebp, %edx
	leal	0(,%edx,4), %ebp
L300:
	movl	%ebx, %edx
	subl	%ebp, %edx
L301:
	addl	%ebx, %edx
	movl	%esi, 16(%esp)
	movl	$_s_TeleportEffect, %ecx
	movl	$-1171354717, %edi
	sarl	%edx
	movl	$0, 20(%esp)
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
	movl	_sprite, %ebp
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %esi
	leal	0(%ebp,%eax), %ecx
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%ebp, %edx
	movw	%ax, 40(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ecx)
	leal	16(%ecx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	%ebp, %edx
	movb	$32, 20(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ecx), %edx
	subl	%ebp, %edx
	movb	$32, 21(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebp, %edx
	movb	$25, 17(%ecx)
	movl	%edx, %eax
	movb	$25, 262(%esi)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	_DamageData+776, %eax
	movl	%eax, 188(%esi)
	movl	_randomseed, %eax
	addl	$2, _krandcount
	movl	28(%esp), %esi
	.cfi_restore 6
	leal	(%eax,%eax,4), %edx
	movl	32(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebp
	.cfi_restore 5
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	andl	$65535, %eax
	movl	%eax, _randomseed
L294:
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L304:
	.cfi_def_cfa_offset 44
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movsbl	_picanm+2(%ecx,%ecx,4), %edi
	sall	$8, %edi
	cmpb	$64, %dl
	je	L306
	imull	%ebp, %edx
	leal	(%edx,%edx), %ecx
	movl	%ebx, %edx
	leal	(%ecx,%edi), %ebp
	subl	%ebp, %edx
L298:
	subl	%edi, %ecx
	addl	%ecx, %ebx
	jmp	L301
	.p2align 4,,10
	.p2align 3
L305:
	sall	$8, %ebp
	jmp	L300
	.p2align 4,,10
	.p2align 3
L306:
	movl	%ebp, %ecx
	movl	%ebx, %edx
	sall	$7, %ecx
	leal	(%ecx,%edi), %ebp
	subl	%ebp, %edx
	jmp	L298
	.p2align 4,,10
	.p2align 3
L302:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %ebx
	jmp	L294
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z13InitEnemyStars
	.def	__Z13InitEnemyStars;	.scl	2;	.type	32;	.endef
__Z13InitEnemyStars:
LFB18:
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
	movswl	68(%esp), %eax
	movl	_User(,%eax,4), %ebp
	movl	%eax, 36(%esp)
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	200(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	_sprite, %edi
	leal	28(%ebx), %edx
	movl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	$-1171354717, %eax
	subl	%edi, %edx
	movl	%edi, 24(%esp)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movw	%si, 28(%ebx)
	movl	%eax, 28(%esp)
	movl	4(%ebx), %eax
	movswl	_tilesiz+2(,%ecx,4), %edi
	movl	%eax, 32(%esp)
	movl	8(%ebx), %eax
	testb	$-128, 12(%ebx)
	je	L308
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %dl
	je	L325
	imull	%edi, %edx
	movl	%eax, %edi
	addl	%edx, %edx
	leal	(%edx,%ecx), %esi
	subl	%esi, %edi
L310:
	subl	%ecx, %edx
	addl	%edx, %eax
	jmp	L313
	.p2align 4,,10
	.p2align 3
L308:
	cmpb	$64, %dl
	je	L326
	imull	%edi, %edx
	sall	$2, %edx
L312:
	movl	%eax, %edi
	subl	%edx, %edi
L313:
	movl	$1800, 20(%esp)
	addl	%edi, %eax
	movl	200(%ebp), %edx
	movl	$_s_Star, %ecx
	sarl	%eax
	movswl	28(%edx), %edx
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%edx, 16(%esp)
	movl	$2049, %edx
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	24(%esp), %ecx
	cwtl
	imull	$44, %eax, %edi
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	addl	%ecx, %edi
	movl	_User(,%eax,4), %ecx
	movl	36(%esp), %eax
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	movl	_sprite, %esi
	leal	21(%edi), %edx
	movl	$-1171354717, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	%esi, %edx
	movb	$16, 21(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%edi), %edx
	subl	%esi, %edx
	movb	$16, 20(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%edi), %edx
	movl	%edx, 32(%esp)
	subl	%esi, %edx
	movl	%edx, %eax
	movb	$-25, 16(%edi)
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%edi), %edx
	subl	%esi, %edx
	movw	%ax, 36(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	40(%esp), %edx
	movw	%dx, 28(%edi)
	leal	18(%edi), %edx
	subl	%esi, %edx
	movl	28(%esp), %esi
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%edi), %eax
	movb	$16, 18(%edi)
	movswl	32(%edi), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%edi), %eax
	movswl	32(%edi), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%edi), %eax
	movl	%eax, 160(%esi)
	movl	$400, 8(%esp)
	movl	24(%esp), %eax
	movl	$__Z6DoStars, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	200(%ebp), %edx
	movl	(%edx), %ecx
	subl	(%edi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%edi), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovns	%esi, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %esi
	cmovg	%ecx, %eax
	movl	_sprite, %ecx
	sarl	%eax
	subl	%eax, %esi
	movl	%esi, 36(%esp)
	je	L314
	movswl	32(%edi), %eax
	movswl	14(%edx), %esi
	movl	8(%edx), %ebp
	movl	%eax, 44(%esp)
	movswl	_tilesiz+2(,%esi,4), %eax
	movl	%eax, 40(%esp)
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L315
	cmpb	$64, %al
	je	L327
	movl	40(%esp), %edx
	movsbl	_picanm+2(%esi,%esi,4), %esi
	imull	%eax, %edx
	sall	$8, %esi
	leal	(%esi,%edx,2), %edx
	subl	%edx, %ebp
L318:
	movl	40(%esp), %esi
	imull	%eax, %esi
L320:
	addl	%ebp, %esi
	subl	8(%edi), %esi
	imull	44(%esp), %esi
	movl	%esi, %eax
	cltd
	idivl	36(%esp)
	movl	$-1171354717, %edx
	movl	%eax, %esi
	movl	32(%esp), %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	28(%esp), %eax
	movw	%si, 36(%edi)
	movswl	%si, %esi
	movl	%esi, 160(%eax)
L314:
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
	movl	$2, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
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
L315:
	.cfi_restore_state
	cmpb	$64, %al
	je	L328
	movl	40(%esp), %edx
	imull	%eax, %edx
	sall	$2, %edx
	subl	%edx, %ebp
	jmp	L318
	.p2align 4,,10
	.p2align 3
L326:
	sall	$8, %edi
	movl	%edi, %edx
	jmp	L312
	.p2align 4,,10
	.p2align 3
L325:
	sall	$7, %edi
	leal	(%edi,%ecx), %esi
	movl	%edi, %edx
	movl	%eax, %edi
	subl	%esi, %edi
	jmp	L310
	.p2align 4,,10
	.p2align 3
L328:
	movl	40(%esp), %eax
	sall	$8, %eax
	subl	%eax, %ebp
L317:
	movl	40(%esp), %esi
	sall	$6, %esi
	jmp	L320
	.p2align 4,,10
	.p2align 3
L327:
	movsbl	_picanm+2(%esi,%esi,4), %edx
	movl	40(%esp), %eax
	sall	$8, %edx
	sall	$7, %eax
	addl	%edx, %eax
	subl	%eax, %ebp
	jmp	L317
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z8InitStarP12PLAYERstruct
	.def	__Z8InitStarP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z8InitStarP12PLAYERstruct:
LFB19:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	$-3, %ecx
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	72(%esp), %esi
	movswl	348(%esi), %eax
	movl	_User(,%eax,4), %eax
	movsbl	273(%eax), %edx
	movl	%eax, 24(%esp)
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%esi), %eax
	movl	%esi, %edx
	leal	4(%esi), %ecx
	movl	%eax, (%esp)
	movl	$2, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%esi), %edx
	testw	%dx, %dx
	js	L330
	movl	%ebp, 64(%esp)
	movl	%ebx, 52(%esp)
	movl	%edi, 60(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	300(%esi), %ecx
	movl	388(%esi), %eax
	addl	8(%esi), %eax
	leal	2048(%eax), %ebp
	movl	%ecx, %eax
	movl	(%esi), %edi
	movl	4(%esi), %ebx
	sarl	$31, %eax
	movl	%ebp, 12(%esp)
	xorw	%ax, %ax
	movl	%ebx, 8(%esp)
	leal	32768(%ecx,%eax), %ecx
	movl	%edi, 4(%esp)
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	movl	%edx, (%esp)
	movl	$2049, %edx
	cmovns	%ecx, %eax
	movl	$_s_Star, %ecx
	movl	$1800, 20(%esp)
	movl	%edi, 40(%esp)
	sarl	$16, %eax
	movl	%ebx, 44(%esp)
	movl	%eax, 16(%esp)
	movl	$4, %eax
	movl	%ebp, 48(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ebx
	movswl	348(%esi), %eax
	imull	$44, %ebx, %ebp
	movl	%ebx, %edx
	addl	_sprite, %ebp
	movl	_User(,%ebx,4), %edi
	call	__Z8SetOwnerss
	leal	20(%ebp), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$26, 20(%ebp)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$26, 21(%ebp)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-25, 16(%ebp)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebp)
	movl	288(%esi), %edx
	movl	$16777472, 96(%edi)
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$228, %edx, %eax
	movl	24(%esp), %edx
	movl	%eax, 28(%esp)
	movzbl	273(%edx), %eax
	leal	12(%ebp), %edx
	subl	_sprite, %edx
	movl	$100, 188(%edi)
	movb	%al, 273(%edi)
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$128, 12(%ebp)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %eax
	sarl	%eax
	movw	%ax, 36(%ebp)
	movl	$1000, 8(%esp)
	movl	$__Z6DoStars, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13MissileSetPossPFisEi
	testb	%al, %al
	jne	L356
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	352(%esi), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	cmpl	$-1, %eax
	je	L334
	movswl	36(%ebp), %eax
	movl	%eax, 28(%esp)
L334:
	movswl	28(%ebp), %eax
	movswl	32(%ebp), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebp), %eax
	movswl	32(%ebp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movl	28(%esp), %eax
	movl	%eax, 160(%edi)
	testb	$2, 22970(%esi)
	jne	L335
	movswl	24(%ebp), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	jne	L335
L336:
	movl	0(%ebp), %eax
	movl	$__ZZ8InitStarP12PLAYERstructE4dang, 24(%esp)
	movl	%esi, 72(%esp)
	movl	%eax, 56(%edi)
	movl	4(%ebp), %eax
	movl	%eax, 60(%edi)
	movl	8(%ebp), %eax
	movl	%eax, 64(%edi)
L341:
	movswl	32(%ebp), %eax
	movl	$_s_Star, %ecx
	movl	$2049, %edx
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movzwl	(%eax), %eax
	addw	28(%ebp), %ax
	andl	$2047, %eax
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movswl	268(%eax), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %esi
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	imull	$44, %eax, %ebx
	movswl	30(%ebp), %eax
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	20(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	movl	%ecx, 36(%esp)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$26, 20(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$26, 21(%ebx)
	movzbl	16(%ebp), %eax
	movb	%al, 16(%ebx)
	movzwl	42(%ebp), %eax
	movw	%ax, 42(%ebx)
	movzbl	18(%ebp), %eax
	movb	%al, 18(%ebx)
	movzbl	273(%edi), %eax
	movb	%al, 273(%esi)
	movl	188(%edi), %eax
	movl	%eax, 188(%esi)
	movzwl	96(%edi), %eax
	movw	%ax, 96(%esi)
	movzwl	98(%edi), %eax
	movw	%ax, 98(%esi)
	movl	72(%edi), %eax
	movl	%eax, 72(%esi)
	movl	72(%esp), %eax
	testb	$2, 22970(%eax)
	jne	L337
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L338
L337:
	orl	$1073741824, 68(%esi)
L338:
	movl	72(%esp), %eax
	leal	36(%ebx), %edx
	subl	36(%esp), %edx
	movl	288(%eax), %eax
	movl	%eax, 28(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$31, %ecx
	movl	28(%esp), %eax
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	imull	$228, %eax, %eax
	sarl	%eax
	movw	%ax, 36(%ebx)
	movl	32(%esp), %eax
	movl	$1000, 8(%esp)
	movl	$__Z6DoStars, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	testb	%al, %al
	jne	L357
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	movl	160(%edi), %edx
	addl	$2, 24(%esp)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%edx, 160(%esi)
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movl	(%ebx), %eax
	movl	%eax, 56(%esi)
	movl	4(%ebx), %eax
	movl	%eax, 60(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 64(%esi)
	cmpl	$__ZZ8InitStarP12PLAYERstructE4dang+4, 24(%esp)
	jne	L341
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
L330:
	movl	56(%esp), %esi
	xorl	%eax, %eax
	addl	$68, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L356:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebx, %eax
	call	__Z10KillSprites
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	60(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	64(%esp), %ebp
	.cfi_restore 5
	movl	56(%esp), %esi
	addl	$68, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L335:
	.cfi_restore_state
	orl	$1073741824, 68(%edi)
	jmp	L336
	.p2align 4,,10
	.p2align 3
L357:
	movl	32(%esp), %eax
	call	__Z10KillSprites
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	jmp	L330
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z15InitHeartAttackP12PLAYERstruct
	.def	__Z15InitHeartAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitHeartAttackP12PLAYERstruct:
LFB20:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	$9, %edx
	movl	$-1, %ecx
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	52(%esp), %esi
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movzwl	268(%esi), %edx
	testw	%dx, %dx
	js	L358
	movl	%ebx, 32(%esp)
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	300(%esi), %ecx
	movl	$-1171354717, %ebp
	movl	$1600, 20(%esp)
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	$_s_BloodWorm, %ecx
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%esi), %eax
	addl	$3072, %eax
	movl	%eax, 12(%esp)
	movl	4(%esi), %eax
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	%dx, %eax
	movl	$2106, %edx
	movl	%eax, (%esp)
	movl	$7, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	%edi, 24(%esp)
	movl	_User(,%edi,4), %edi
	leal	(%ecx,%eax), %ebx
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movw	%ax, 40(%ebx)
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
	movb	$-10, 16(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 20(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movb	$0, 18(%ebx)
	movl	288(%esi), %eax
	movl	%eax, 28(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebp
	sarl	$31, %ecx
	movl	28(%esp), %eax
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	sall	$7, %eax
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	orl	$16777216, 72(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movl	$200, %edx
	orw	$-32768, 12(%ebx)
	movw	%dx, 212(%edi)
	movl	$16777472, 96(%edi)
	movl	352(%esi), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movb	%al, 28(%esp)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%ecx)
	movswl	28(%ebx), %eax
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
	movl	24(%esp), %ebx
	movl	%eax, 160(%edi)
	movl	%ebx, (%esp)
	xorl	%ebx, %ebx
	movl	$1100, 8(%esp)
	movl	$__Z11DoBloodWorms, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	352(%esi), %ecx
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	movzbl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	xorl	%ecx, %ecx
	movl	$0, 176(%edi)
	movw	%cx, 180(%edi)
	movw	%bx, 216(%edi)
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
L358:
	movl	36(%esp), %esi
	addl	$48, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z9InitLaserP12PLAYERstruct
	.def	__Z9InitLaserP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z9InitLaserP12PLAYERstruct:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	movswl	348(%ebx), %eax
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	orl	$6, 22972(%ebx)
	movl	$5242887, %eax
	orl	$1024, 22968(%ebx)
	movl	%eax, 312(%ebx)
	movl	%ebx, %eax
	movl	%edx, 316(%ebx)
	movsbl	273(%edi), %edx
	movl	%edi, 36(%esp)
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$11, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L366
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	%esi, %edx
	addl	$2048, %eax
	movl	4(%ebx), %edi
	movl	$300, 20(%esp)
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	xorw	%dx, %dx
	movl	%edi, 8(%esp)
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	(%ebx), %esi
	movl	$2018, %edx
	movl	%ecx, (%esp)
	movl	$_s_Laser, %ecx
	movl	%esi, 4(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %edi
	movl	%ecx, 40(%esp)
	movl	%edi, 28(%esp)
	movl	$-1171354717, %edi
	addl	%eax, %esi
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movw	%ax, 40(%esi)
	movswl	348(%ebx), %eax
	call	__Z8SetOwnerss
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 21(%esi)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 20(%esi)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-15, 16(%esi)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%esi), %edx
	subl	_sprite, %edx
	movb	$16, 18(%esi)
	movl	288(%ebx), %eax
	movl	%eax, 32(%esp)
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	xorw	%cx, %cx
	leal	32768(%eax,%ecx), %eax
	shrl	$5, %edx
	leal	65535(%eax), %ecx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	cmovns	%eax, %ecx
	movl	$100, %eax
	sarl	$16, %ecx
	subl	%ecx, %eax
	sall	$7, %eax
	movw	%ax, 36(%esi)
	addl	$1, _spritechanged(,%edx,4)
	movswl	36(%esi), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	movl	28(%esp), %edx
	sarl	$2, %eax
	movw	%ax, 36(%esi)
	movl	36(%esp), %eax
	movzbl	273(%eax), %eax
	movl	$200, 188(%edx)
	movb	%al, 273(%edx)
	movl	$16777472, 96(%edx)
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%esi)
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movb	%al, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	leal	28(%esi), %eax
	movl	%eax, 36(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 18(%ecx)
	movswl	28(%esi), %ecx
	mull	%edi
	addl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	40(%esp), %ecx
	movl	$900, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	36(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movswl	28(%esi), %ecx
	mull	%edi
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	testb	$2, 22970(%ebx)
	je	L384
L369:
	movl	28(%esp), %eax
	orl	$1073741824, 68(%eax)
L370:
	movl	40(%esp), %eax
	movl	$300, 8(%esp)
	movl	$__Z12DoLaserStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	testb	%al, %al
	jne	L383
	movl	40(%esp), %eax
	movl	$300, 8(%esp)
	movl	$__Z12DoLaserStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	testb	%al, %al
	jne	L383
	movl	40(%esp), %eax
	movl	$300, 8(%esp)
	movl	$__Z12DoLaserStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	testb	%al, %al
	jne	L383
	movl	40(%esp), %eax
	movl	$300, 8(%esp)
	movl	$__Z12DoLaserStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	352(%ebx), %ecx
	movl	%eax, %edi
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 24(%esp)
	movl	%edi, %eax
	testb	%al, %al
	movl	24(%esp), %eax
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	32(%esp), %eax
	movb	%al, 18(%ecx)
	jne	L385
	movl	40(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	cmpl	$-1, %eax
	jne	L375
	movl	36(%esp), %eax
	movl	$-1171354717, %edi
	subl	_sprite, %eax
	mull	%edi
	leal	2043(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
L375:
	leal	512(%ecx), %eax
	movswl	32(%esi), %edx
	movl	28(%esp), %edi
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
	xorl	%eax, %eax
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
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
L383:
	.cfi_restore_state
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	32(%esp), %eax
	movb	%al, 18(%ecx)
	movl	40(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
L366:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L384:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L370
	jmp	L369
	.p2align 4,,10
	.p2align 3
L385:
	movl	40(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L366
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z8InitRailP12PLAYERstruct
	.def	__Z8InitRailP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z8InitRailP12PLAYERstruct:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	testb	$1, _SW_GameFlags
	je	L402
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L402:
	.cfi_restore_state
	movl	%edi, -4(%ebp)
	movswl	348(%ebx), %eax
	xorl	%edx, %edx
	movl	$-1, %ecx
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	orl	$6, 22972(%ebx)
	movl	$5242887, %eax
	orl	$1024, 22968(%ebx)
	movl	%eax, 312(%ebx)
	movl	%ebx, %eax
	movl	%edx, 316(%ebx)
	movsbl	273(%edi), %edx
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$269, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movw	%ax, 282(%edi)
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L401
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	$1200, 20(%esp)
	movl	%esi, %edx
	addl	$2816, %eax
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	xorw	%dx, %dx
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	4(%ebx), %eax
	movl	$2017, %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	$_s_Rail, %ecx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ecx
	movl	_User(,%ecx,4), %eax
	movl	%ecx, %edx
	imull	$44, %ecx, %esi
	movl	%ecx, 40(%esp)
	addl	_sprite, %esi
	movl	%eax, 36(%esp)
	movswl	348(%ebx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$52, 21(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movb	$52, 20(%esi)
	movl	$5, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%esi)
	movl	288(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	movl	36(%esp), %eax
	imull	$145, %edx, %edx
	movw	%cx, 80(%eax)
	movl	40(%esp), %eax
	movl	%edx, 32(%esp)
	movl	$_sg_Rail, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movzbl	273(%edi), %eax
	movl	36(%esp), %edi
	leal	12(%esi), %edx
	movb	%al, 273(%edi)
	movl	$-1171354717, %eax
	movl	$3500, 188(%edi)
	movl	$16777472, 96(%edi)
	movl	_sprite, %edi
	subl	%edi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%esi)
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %edx
	movb	%dl, 26(%esp)
	leal	18(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%edi, %edx
	movb	$0, 18(%ecx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	movswl	28(%esi), %ecx
	movl	%edx, 28(%esp)
	subl	%edi, %edx
	mull	%edx
	addl	$512, %ecx
	movb	$8, 18(%esi)
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	40(%esp), %ecx
	movl	$700, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movswl	28(%esi), %ecx
	mull	%edx
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	testb	$2, 22970(%ebx)
	je	L403
L390:
	movl	36(%esp), %eax
	orl	$1073741824, 68(%eax)
L391:
	movl	32(%esp), %eax
	movl	$1200, 8(%esp)
	movl	$__Z11DoRailStarts, 4(%esp)
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	352(%ebx), %ecx
	movl	_sprite, %edi
	movb	%al, 27(%esp)
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 27(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	26(%esp), %eax
	movb	%al, 18(%ecx)
	jne	L404
	leal	36(%esi), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	32(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%esi)
	movl	40(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	cmpl	$-1, %eax
	je	L405
	movswl	36(%esi), %eax
	movl	%eax, 32(%esp)
L394:
	leal	512(%ecx), %eax
	movswl	32(%esi), %edx
	movl	36(%esp), %edi
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
	movl	32(%esp), %eax
	movl	%eax, 160(%edi)
	xorl	%eax, %eax
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
L403:
	.cfi_restore_state
	movswl	24(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L391
	jmp	L390
	.p2align 4,,10
	.p2align 3
L405:
	movl	$-1171354717, %eax
	movl	28(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	leal	2044(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
	jmp	L394
	.p2align 4,,10
	.p2align 3
L401:
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L404:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z13InitZillaRails
	.def	__Z13InitZillaRails;	.scl	2;	.type	32;	.endef
__Z13InitZillaRails:
LFB24:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L425
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L425:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %ecx
	movswl	60(%esp), %eax
	imull	$44, %eax, %ebx
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 28(%esp)
	addl	%ecx, %ebx
	leal	8(%ebx), %ebp
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
	movl	$269, %eax
	movl	$128, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	28(%esp), %eax
	movw	%si, 282(%eax)
	movswl	14(%ebx), %edx
	movl	(%ebx), %edi
	movl	4(%ebx), %ecx
	movswl	_tilesiz+2(,%edx,4), %esi
	movzbl	21(%ebx), %eax
	movl	8(%ebx), %ebp
	testb	$-128, 12(%ebx)
	je	L408
	cmpb	$64, %al
	je	L426
	imull	%esi, %eax
	leal	(%eax,%eax), %esi
L410:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%ebp, %edx
	sall	$8, %eax
	addl	%esi, %eax
	subl	%eax, %edx
	jmp	L411
	.p2align 4,,10
	.p2align 3
L408:
	cmpb	$64, %al
	je	L427
	imull	%esi, %eax
	sall	$2, %eax
L413:
	movl	%ebp, %edx
	subl	%eax, %edx
L411:
	movl	$1200, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%edx, 12(%esp)
	movl	$2017, %edx
	movl	%ecx, 8(%esp)
	movl	$_s_Rail, %ecx
	movl	%edi, 4(%esp)
	movl	$-1171354717, %edi
	movl	%eax, 16(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %ebp
	imull	$44, %eax, %esi
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	32(%esp), %eax
	addl	_sprite, %esi
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$52, 21(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movb	$52, 20(%esi)
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	movb	$-15, 16(%esi)
	movw	%dx, 80(%ebp)
	movl	$_sg_Rail, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	28(%esp), %ecx
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movzbl	273(%ecx), %eax
	movl	$16777472, 96(%ebp)
	movl	$3500, 188(%ebp)
	movb	%al, 273(%ebp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%esi)
	movzbl	18(%ebx), %ecx
	movb	%cl, 38(%esp)
	leal	18(%ebx), %ecx
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%ecx, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 18(%ebx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%esi), %ecx
	leal	28(%esi), %edx
	movl	%edx, 28(%esp)
	addl	$512, %ecx
	subl	_sprite, %edx
	movb	$8, 18(%esi)
	movl	%edx, %eax
	andl	$2047, %ecx
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	$700, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movswl	28(%esi), %ecx
	mull	%edi
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%esi), %eax
	movw	%cx, 28(%esi)
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L414
	orl	$1073741824, 68(%ebp)
L414:
	movl	24(%esp), %eax
	movl	$14500, 12(%esp)
	movl	$-1171354717, %edi
	movl	$1200, 8(%esp)
	movl	$__Z11DoRailStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	_sprite, %ecx
	movl	32(%esp), %edx
	movb	%al, 39(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 39(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	38(%esp), %eax
	movb	%al, 18(%ebx)
	jne	L428
	leal	36(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$7250, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%esi)
	movl	24(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	cmpl	$-1, %eax
	je	L429
	movswl	36(%esi), %edx
L417:
	leal	512(%ecx), %eax
	movswl	32(%esi), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%esi), %eax
	movswl	32(%esi), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%edx, 160(%ebp)
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
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
L427:
	.cfi_restore_state
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L413
	.p2align 4,,10
	.p2align 3
L426:
	sall	$7, %esi
	jmp	L410
	.p2align 4,,10
	.p2align 3
L428:
	movl	24(%esp), %eax
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
L429:
	.cfi_restore_state
	movl	28(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	leal	2044(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$14500, %edx
	movw	%ax, 28(%esi)
	jmp	L417
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z10InitRocketP12PLAYERstruct
	.def	__Z10InitRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z10InitRocketP12PLAYERstruct:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	movswl	348(%ebx), %eax
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	orl	$6, 22972(%ebx)
	movl	$5242887, %eax
	orl	$1024, 22968(%ebx)
	movl	%eax, 312(%ebx)
	movl	%ebx, %eax
	movl	%edx, 316(%ebx)
	movsbl	273(%edi), %edx
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movzbl	23113(%ebx), %eax
	movb	%al, 28(%esp)
	testb	%al, %al
	je	L431
	cmpb	$1, 23112(%ebx)
	je	L453
L431:
	leal	8(%ebx), %eax
	movl	$12, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$11, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movw	%ax, 282(%edi)
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L432
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	$1350, 20(%esp)
	movl	%esi, %edx
	addl	$2048, %eax
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	xorw	%dx, %dx
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	4(%ebx), %eax
	movl	$2018, %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	$_s_Rocket, %ecx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	_User(,%edx,4), %eax
	imull	$44, %edx, %esi
	movl	%edx, 36(%esp)
	addl	_sprite, %esi
	movl	%eax, 40(%esp)
	movswl	348(%ebx), %eax
	call	__Z8SetOwnerss
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$90, 21(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$90, 20(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%esi)
	movl	288(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$163, %edx, %edx
	movl	%edx, 32(%esp)
	leal	18(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	40(%esp), %ecx
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_Rocket, %edx
	movb	$16, 18(%esi)
	movw	%ax, 80(%ecx)
	movl	36(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movzbl	273(%edi), %eax
	movl	40(%esp), %ecx
	leal	12(%esi), %edx
	movl	_sprite, %edi
	movb	%al, 273(%ecx)
	subl	%edi, %edx
	movl	$50332416, 96(%ecx)
	movl	$2000, 188(%ecx)
	movl	%edx, %eax
	movl	$-1171354717, %ecx
	mull	%ecx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	%edi, %edx
	orw	$257, 12(%esi)
	movb	$17, 262(%eax)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%esi)
	cmpb	$0, 28(%esp)
	je	L435
	cmpb	$1, 23112(%ebx)
	je	L454
L435:
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	%edi, %edx
	movb	%al, 27(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	leal	28(%esi), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	movb	$0, 18(%ecx)
	movswl	28(%esi), %ecx
	mull	%edx
	movl	36(%esp), %edi
	addl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	$900, 4(%esp)
	movl	%edi, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movswl	28(%esi), %ecx
	mull	%edx
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	testb	$2, 22970(%ebx)
	je	L455
L436:
	movl	40(%esp), %eax
	orl	$1073741824, 68(%eax)
L437:
	movl	40(%esp), %eax
	movl	$1, %ecx
	movw	%cx, 176(%eax)
	movl	32(%esp), %eax
	movl	$1200, 8(%esp)
	movl	%eax, 12(%esp)
	movl	36(%esp), %eax
	movl	$__Z8DoRockets, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	_sprite, %edi
	testb	%al, %al
	jne	L456
	movl	40(%esp), %eax
	xorl	%edx, %edx
	movw	%dx, 176(%eax)
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	movzbl	27(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%esi), %edx
	movb	%al, 18(%ecx)
	subl	%edi, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	32(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%esi)
	movl	36(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	cmpl	$-1, %eax
	je	L457
	movswl	36(%esi), %eax
	movl	%eax, 32(%esp)
L440:
	leal	512(%ecx), %eax
	movswl	32(%esi), %edx
	movl	40(%esp), %edi
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
	movl	32(%esp), %eax
	movl	%eax, 160(%edi)
	movl	-8(%ebp), %esi
	.cfi_restore 6
L432:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L455:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%esi), %eax
	movl	_sector, %edi
	leal	(%eax,%eax,4), %eax
	leal	(%edi,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L437
	jmp	L436
	.p2align 4,,10
	.p2align 3
L456:
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	movzbl	27(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movl	36(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L453:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	subl	$1, %eax
	movb	%al, 23113(%ebx)
	jmp	L431
	.p2align 4,,10
	.p2align 3
L454:
	.cfi_offset 6, -16
	movl	40(%esp), %eax
	orl	$131072, 68(%eax)
	movb	$20, 262(%eax)
	addl	$1, _spritechanged(,%edx,4)
	movb	$20, 17(%esi)
	jmp	L435
	.p2align 4,,10
	.p2align 3
L457:
	movl	$-1171354717, %eax
	movl	28(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	leal	2043(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
	jmp	L440
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z15InitBunnyRocketP12PLAYERstruct
	.def	__Z15InitBunnyRocketP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitBunnyRocketP12PLAYERstruct:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	movl	%edi, -4(%ebp)
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	orl	$6, 22972(%ebx)
	orl	$1024, 22968(%ebx)
	movl	%eax, 28(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	$5242887, %eax
	movl	%eax, 312(%ebx)
	movl	%ebx, %eax
	movl	%edx, 316(%ebx)
	movsbl	273(%edi), %edx
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movzbl	23113(%ebx), %eax
	movb	%al, 32(%esp)
	testb	%al, %al
	je	L459
	cmpb	$1, 23112(%ebx)
	je	L481
L459:
	leal	8(%ebx), %eax
	movl	$12, 4(%esp)
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$424, %eax
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L460
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	$1350, 20(%esp)
	movl	%esi, %edx
	addl	$2048, %eax
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	xorw	%dx, %dx
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	4(%ebx), %eax
	movl	$2014, %edx
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%ecx, (%esp)
	movl	$_s_BunnyRocket, %ecx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %edi
	movl	%eax, %ecx
	imull	$44, %eax, %esi
	movswl	348(%ebx), %eax
	addl	_sprite, %esi
	movl	%ecx, %edx
	movl	%ecx, 40(%esp)
	call	__Z8SetOwnerss
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 21(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 20(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%esi)
	movl	288(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$163, %edx, %edx
	movl	%edx, 36(%esp)
	leal	18(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_BunnyRocket, %edx
	movb	$16, 18(%esi)
	movw	%ax, 80(%edi)
	movl	40(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	28(%esp), %eax
	leal	12(%esi), %edx
	movl	$-1171354717, %ecx
	movzbl	273(%eax), %eax
	movl	$50332416, 96(%edi)
	movl	$2000, 188(%edi)
	movb	%al, 273(%edi)
	movl	_sprite, %eax
	subl	%eax, %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%esi)
	movl	68(%edi), %eax
	movl	%eax, %edx
	orl	$16777216, %edx
	movl	%edx, 68(%edi)
	cmpb	$0, 32(%esp)
	je	L463
	cmpb	$1, 23112(%ebx)
	je	L482
L463:
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	28(%esp), %edx
	movb	%al, 27(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	movl	%edx, 32(%esp)
	subl	28(%esp), %edx
	mull	%edx
	movb	$0, 18(%ecx)
	movswl	28(%esi), %ecx
	movl	40(%esp), %eax
	addl	$512, %ecx
	shrl	$5, %edx
	andl	$2047, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	$900, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movswl	28(%esi), %ecx
	mull	%edx
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	testb	$2, 22970(%ebx)
	je	L483
L464:
	orl	$1073741824, 68(%edi)
L465:
	movl	36(%esp), %eax
	movl	$1, %edx
	movw	%dx, 176(%edi)
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	$1200, 8(%esp)
	movl	$__Z8DoRockets, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	_sprite, %ecx
	movl	%ecx, 28(%esp)
	testb	%al, %al
	jne	L484
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	28(%esp), %edx
	mull	%edx
	movzbl	27(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%esi), %edx
	subl	28(%esp), %edx
	movb	%al, 18(%ecx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	36(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%esi)
	movl	40(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	movl	_sprite, %ebx
	cmpl	$-1, %eax
	je	L485
	movswl	36(%esi), %eax
	movl	%eax, 36(%esp)
L468:
	leal	512(%ecx), %eax
	movswl	32(%esi), %edx
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
	leal	17(%esi), %edx
	subl	%ebx, %edx
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movl	36(%esp), %eax
	movl	%eax, 160(%edi)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%esi)
	movb	$17, 262(%edi)
	movl	-8(%ebp), %esi
	.cfi_restore 6
L460:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L483:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%esi), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L465
	jmp	L464
	.p2align 4,,10
	.p2align 3
L484:
	movl	352(%ebx), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	28(%esp), %edx
	mull	%edx
	movzbl	27(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movl	40(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L481:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	subl	$1, %eax
	movb	%al, 23113(%ebx)
	jmp	L459
	.p2align 4,,10
	.p2align 3
L482:
	.cfi_offset 6, -16
	orl	$16908288, %eax
	movl	%eax, 68(%edi)
	jmp	L463
	.p2align 4,,10
	.p2align 3
L485:
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	%ebx, %edx
	mull	%edx
	leal	2043(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
	jmp	L468
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z8InitNukeP12PLAYERstruct
	.def	__Z8InitNukeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z8InitNukeP12PLAYERstruct:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	8(%ebp), %ebx
	cmpb	$0, 23114(%ebx)
	jne	L504
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L504:
	.cfi_restore_state
	movl	%edi, -4(%ebp)
	movswl	348(%ebx), %eax
	xorl	%edx, %edx
	leal	4(%ebx), %ecx
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	movl	$5242964, %eax
	orl	$1024, 22968(%ebx)
	movl	%eax, 312(%ebx)
	leal	8(%ebx), %eax
	orl	$6, 22972(%ebx)
	movl	%edx, 316(%ebx)
	movl	%ebx, %edx
	movb	$0, 23114(%ebx)
	movl	%eax, (%esp)
	movl	$11, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movl	%edi, 32(%esp)
	movw	%ax, 282(%edi)
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L503
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	%esi, %edx
	addl	$2048, %eax
	movl	4(%ebx), %edi
	movl	$700, 20(%esp)
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	xorw	%dx, %dx
	movl	%edi, 8(%esp)
	leal	32768(%esi,%edx), %esi
	testl	%esi, %esi
	leal	65535(%esi), %edx
	cmovns	%esi, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	(%ebx), %eax
	movl	$2018, %edx
	movl	%ecx, (%esp)
	movl	$_s_Rocket, %ecx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %edi
	movl	%eax, %ecx
	imull	$44, %eax, %esi
	movswl	348(%ebx), %eax
	movl	%ecx, %edx
	addl	_sprite, %esi
	movl	%ecx, 40(%esp)
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$-128, 21(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movb	$-128, 20(%esi)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%esi)
	movl	288(%ebx), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$92, %edx, %eax
	leal	18(%esi), %edx
	subl	%ecx, %edx
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	%ecx, %edx
	movb	$16, 18(%esi)
	mull	%edx
	movl	$5, %eax
	movb	$19, 262(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_Rocket, %edx
	movb	$19, 17(%esi)
	movw	%ax, 80(%edi)
	movl	40(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	32(%esp), %edx
	movzbl	273(%edx), %eax
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movl	$30000, 188(%edi)
	movl	$50332416, 96(%edi)
	movb	%al, 273(%edi)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	orw	$257, 12(%esi)
	movl	352(%ebx), %ecx
	movzbl	18(%ecx), %edx
	movb	%dl, 31(%esp)
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	movl	%edx, 32(%esp)
	subl	_sprite, %edx
	movb	$0, 18(%ecx)
	mull	%edx
	movswl	28(%esi), %ecx
	addl	$512, %ecx
	shrl	$5, %edx
	andl	$2047, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	movl	40(%esp), %ecx
	movl	$900, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z18HelpMissileLateralsi
	movswl	28(%esi), %ecx
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	$512, %ecx
	andl	$2047, %ecx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%esi)
	testb	$2, 22970(%ebx)
	je	L505
L490:
	orl	$1073741824, 68(%edi)
L491:
	movl	36(%esp), %eax
	movl	$1, %edx
	movw	%dx, 176(%edi)
	movl	%eax, 12(%esp)
	movl	40(%esp), %eax
	movl	$1200, 8(%esp)
	movl	$__Z8DoRockets, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	_sprite, %ecx
	testb	%al, %al
	jne	L506
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	352(%ebx), %edx
	movl	$-1171354717, %eax
	movl	%edx, 24(%esp)
	addl	$18, %edx
	subl	%ecx, %edx
	mull	%edx
	movzbl	31(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	%al, 18(%edx)
	leal	36(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	36(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%esi)
	movl	40(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%esi), %ecx
	cmpl	$-1, %eax
	je	L507
	movswl	36(%esi), %eax
	movl	%eax, 36(%esp)
L494:
	leal	512(%ecx), %eax
	movswl	32(%esi), %edx
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
	movl	36(%esp), %eax
	movl	%eax, 160(%edi)
	movl	300(%ebx), %edx
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
	movl	%eax, %edx
	leal	512(%edx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$240, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 212(%ebx)
	movzwl	%dx, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	$240, %eax, %eax
	sarl	$14, %eax
	sall	$15, %eax
	movl	%eax, 216(%ebx)
	xorl	%eax, %eax
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
L505:
	.cfi_restore_state
	movswl	24(%esi), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L491
	jmp	L490
	.p2align 4,,10
	.p2align 3
L507:
	movl	$-1171354717, %eax
	movl	32(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	leal	2043(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%esi)
	jmp	L494
	.p2align 4,,10
	.p2align 3
L503:
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	-12(%ebp), %ebx
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L506:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	352(%ebx), %esi
	movl	$-1171354717, %eax
	leal	18(%esi), %edx
	subl	%ecx, %edx
	mull	%edx
	movzbl	31(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%esi)
	movl	40(%esp), %eax
	call	__Z10KillSprites
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	-12(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z13InitEnemyNukes
	.def	__Z13InitEnemyNukes;	.scl	2;	.type	32;	.endef
__Z13InitEnemyNukes:
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
	movl	$-1171354717, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	_sprite, %ecx
	movswl	52(%esp), %esi
	imull	$44, %esi, %eax
	leal	(%ecx,%eax), %ebp
	movl	_User(,%esi,4), %eax
	leal	8(%ebp), %edi
	movl	%edi, %edx
	movl	%eax, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	movl	%edx, 24(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	24(%esp), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$11, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%edi, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	28(%esp), %eax
	movl	$128, %ecx
	movl	$2018, %edx
	movw	%cx, 282(%eax)
	movl	$_s_Rocket, %ecx
	movl	$700, 20(%esp)
	movswl	28(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebp), %edi
	leal	10240(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edi
	movl	28(%esp), %eax
	imull	$44, %edi, %ebx
	movl	%edi, 24(%esp)
	addl	_sprite, %ebx
	movl	_User(,%edi,4), %edi
	cmpw	$1095, 82(%eax)
	je	L520
	movl	24(%esp), %edx
	movl	%esi, %eax
	call	__Z8SetOwnerss
L510:
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-128, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$-128, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 18(%ebx)
	movl	%edx, %eax
	movb	$19, 262(%edi)
	mull	%esi
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_Rocket, %edx
	movb	$19, 17(%ebx)
	movw	%ax, 80(%edi)
	movl	24(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	28(%esp), %ecx
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movzbl	273(%ecx), %eax
	movl	$50332416, 96(%edi)
	movl	$30000, 188(%edi)
	movb	%al, 273(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	movswl	28(%ebx), %eax
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	leal	512(%eax), %ecx
	movl	%edx, %eax
	orw	$257, 12(%ebx)
	mull	%esi
	movl	24(%esp), %eax
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$500, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movswl	28(%ebx), %ecx
	mull	%esi
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	movw	%cx, 28(%ebx)
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L511
	orl	$1073741824, 68(%edi)
L511:
	movl	24(%esp), %eax
	movl	$1, %ecx
	movw	%cx, 176(%edi)
	movl	$9200, 12(%esp)
	movl	$1200, 8(%esp)
	movl	$__Z8DoRockets, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	testb	%al, %al
	jne	L521
	xorl	%eax, %eax
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movw	%ax, 176(%edi)
	movl	$-1171354717, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$4600, %edx
	movw	%dx, 36(%ebx)
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%ebx), %ecx
	cmpl	$-1, %eax
	je	L522
	movswl	36(%ebx), %edx
L515:
	leal	512(%ecx), %eax
	movswl	32(%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%edi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%edx, 160(%edi)
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
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
L522:
	.cfi_restore_state
	movl	$-1171354717, %eax
	movl	28(%esp), %esi
	subl	_sprite, %esi
	mull	%esi
	leal	2043(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$9200, %edx
	movw	%ax, 28(%ebx)
	jmp	L515
	.p2align 4,,10
	.p2align 3
L521:
	movl	24(%esp), %eax
	call	__Z10KillSprites
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
L520:
	.cfi_restore_state
	movswl	30(%ebp), %eax
	movl	24(%esp), %edx
	call	__Z8SetOwnerss
	jmp	L510
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z9InitMicroP12PLAYERstruct
	.def	__Z9InitMicroP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z9InitMicroP12PLAYERstruct:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	movl	$256, %edx
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
	movl	80(%esp), %edi
	movswl	348(%edi), %eax
	movl	(%edi), %ebx
	movl	4(%edi), %esi
	movl	_User(,%eax,4), %eax
	movl	%eax, 32(%esp)
	movl	352(%edi), %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	_TargetSortCount, %eax
	movswl	268(%edi), %ecx
	cmpl	$1, %eax
	jbe	L524
	movl	$1, _TargetSortCount
	testw	%cx, %cx
	js	L525
L526:
	movswl	_TargetSort, %eax
	testw	%ax, %ax
	jns	L567
L527:
	movl	300(%edi), %edx
	movl	$_TargetSort, 52(%esp)
	movl	$0, 44(%esp)
	movl	%edx, %eax
	movl	$0, 48(%esp)
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	shrl	$16, %eax
	movl	%eax, %ebp
L528:
	movl	388(%edi), %eax
	addl	8(%edi), %eax
	movl	%eax, 24(%esp)
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$2304, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L530
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$25, %edx
	sall	$8, %edx
	subl	$2560, %edx
L530:
	movl	24(%esp), %eax
	movswl	%bp, %ebp
	movl	%esi, 8(%esp)
	movl	%ebp, 16(%esp)
	leal	3584(%edx,%eax), %eax
	movl	%ecx, (%esp)
	movl	$2018, %edx
	movl	$_s_Micro, %ecx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	movl	%ebx, 4(%esp)
	movl	$1200, 20(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	_User(,%eax,4), %ebp
	movswl	348(%edi), %eax
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	$-1171354717, %eax
	leal	21(%ebx), %edx
	leal	36(%ebx), %ecx
	subl	_sprite, %edx
	movl	%ecx, 56(%esp)
	mull	%edx
	movl	$-1171354717, %eax
	subl	_sprite, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$24, 21(%ebx)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	movb	$24, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ebx)
	movl	288(%edi), %eax
	movl	%eax, 28(%esp)
	movl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%ecx
	sarl	$31, %esi
	movl	28(%esp), %eax
	xorw	%si, %si
	leal	32768(%eax,%esi), %eax
	movl	%edx, %ecx
	leal	65535(%eax), %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	testl	%eax, %eax
	cmovns	%eax, %edx
	movl	$100, %eax
	addl	$1, _krandcount
	sarl	$16, %edx
	subl	%edx, %eax
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	sall	$7, %eax
	movw	%ax, 36(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movb	$16, 18(%ebx)
	movl	$767, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L532
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$18, %edx
	subw	$1280, %dx
L532:
	addl	$1, _spritechanged(,%ecx,4)
	movl	$5, %esi
	movl	24(%esp), %eax
	addw	%dx, 36(%ebx)
	movl	$_sg_Micro, %edx
	movw	%si, 80(%ebp)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	32(%esp), %eax
	leal	12(%ebx), %edx
	movzbl	273(%eax), %eax
	movl	$33554944, 96(%ebp)
	movl	$200, 188(%ebp)
	movb	%al, 273(%ebp)
	movl	_sprite, %eax
	subl	%eax, %edx
	movl	%eax, 28(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	_krandcount, %eax
	movl	%eax, 36(%esp)
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	orw	$-32768, 12(%ebx)
	movl	$49, %edx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L533
	movl	%ecx, %edx
	movl	$-1610571775, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$24, %edx
	addl	$10, %edx
L533:
	movw	%dx, 216(%ebp)
	movl	352(%edi), %esi
	movzbl	18(%esi), %eax
	leal	18(%esi), %edx
	subl	28(%esp), %edx
	movb	%al, 43(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	movl	%edx, 32(%esp)
	subl	28(%esp), %edx
	mull	%edx
	movl	36(%esp), %eax
	movb	$0, 18(%esi)
	movswl	28(%ebx), %esi
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%ecx,%ecx,4), %eax
	addl	$512, %esi
	shrl	$5, %edx
	leal	1(%ecx,%eax,4), %eax
	andl	$2047, %esi
	addl	$1, _spritechanged(,%edx,4)
	movl	$3499, %edx
	movzwl	%ax, %eax
	movw	%si, 28(%ebx)
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L534
	sall	$14, %eax
	movl	$-1673486221, %edx
	mull	%edx
	shrl	$17, %edx
	subl	$1500, %edx
L534:
	movl	24(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	movswl	28(%ebx), %ecx
	mull	%edx
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	testb	$2, 22970(%edi)
	jne	L535
	movswl	24(%ebx), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	testb	$3, 39(%eax)
	jne	L535
L536:
	movl	24(%esp), %eax
	movl	$1, %edx
	movw	%dx, 176(%ebp)
	movl	$700, 8(%esp)
	movl	$__Z7DoMicros, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	_sprite, %esi
	movl	%esi, 28(%esp)
	testb	%al, %al
	jne	L568
	xorl	%eax, %eax
	movw	%ax, 176(%ebp)
	movl	352(%edi), %ecx
	movl	$-1171354717, %eax
	movl	44(%esp), %edi
	leal	18(%ecx), %edx
	subl	28(%esp), %edx
	mull	%edx
	movzbl	43(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	testl	%edi, %edi
	je	L538
	movl	(%edi), %edx
	subl	(%ebx), %edx
	movl	%edi, %esi
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
	movl	%ecx, 24(%esp)
	je	L539
	movswl	14(%edi), %ecx
	movzbl	21(%edi), %eax
	movl	8(%edi), %edi
	movswl	_tilesiz+2(,%ecx,4), %edx
	testb	$-128, 12(%esi)
	jne	L569
	cmpb	$64, %al
	je	L570
	movl	%eax, %esi
	imull	%edx, %esi
	sall	$2, %esi
	subl	%esi, %edi
	movl	%edi, %ecx
L543:
	imull	%eax, %edx
L545:
	movswl	32(%ebx), %eax
	addl	%edx, %ecx
	subl	8(%ebx), %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	cltd
	idivl	24(%esp)
	movl	$-1171354717, %edx
	movl	%eax, %ecx
	movl	56(%esp), %eax
	subl	28(%esp), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%cx, 36(%ebx)
L539:
	movl	52(%esp), %eax
	movzwl	(%eax), %eax
	movw	%ax, 186(%ebp)
	movl	48(%esp), %eax
	orl	$6, 68(%eax)
	movzwl	28(%ebx), %eax
L546:
	addl	$512, %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%ebp)
L525:
	addl	$60, %esp
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
L535:
	.cfi_restore_state
	orl	$1073741824, 68(%ebp)
	jmp	L536
	.p2align 4,,10
	.p2align 3
L524:
	testw	%cx, %cx
	js	L525
	negl	%eax
	andl	$12, %eax
	addl	$_TargetSort, %eax
	cmpl	$_TargetSort, %eax
	jbe	L527
	jmp	L526
	.p2align 4,,10
	.p2align 3
L569:
	cmpb	$64, %al
	je	L571
	movl	%eax, %esi
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	imull	%edx, %esi
	sall	$8, %ecx
	leal	(%ecx,%esi,2), %esi
	subl	%esi, %edi
	movl	%edi, %ecx
	jmp	L543
	.p2align 4,,10
	.p2align 3
L538:
	movl	_randomseed, %eax
	movswl	28(%ebx), %esi
	movl	$199, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L547
	movl	$-939472145, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$21, %edx
	leal	-200(%edx), %ecx
L547:
	movl	$-1171354717, %eax
	movl	32(%esp), %edx
	subl	28(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	-16(%esi,%ecx), %edx
	andl	$2047, %edx
	movw	%dx, 28(%ebx)
	movl	%edx, %eax
	jmp	L546
	.p2align 4,,10
	.p2align 3
L567:
	imull	$44, %eax, %ecx
	movl	_User(,%eax,4), %eax
	addl	_sprite, %ecx
	movl	4(%ecx), %edx
	movl	%ecx, 44(%esp)
	movl	%eax, 48(%esp)
	movl	(%ecx), %eax
	subl	%esi, %edx
	movl	%eax, %ecx
	movl	%eax, 24(%esp)
	subl	%ebx, %ecx
	call	@getangle@8
	movl	$_TargetSort+12, 52(%esp)
	movswl	268(%edi), %ecx
	movl	%eax, %ebp
	jmp	L528
	.p2align 4,,10
	.p2align 3
L568:
	movl	352(%edi), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%esi, %edx
	mull	%edx
	movzbl	43(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movl	24(%esp), %eax
	call	__Z10KillSprites
	addl	$60, %esp
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
L570:
	.cfi_restore_state
	movl	%edx, %eax
	sall	$8, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
L542:
	sall	$6, %edx
	jmp	L545
	.p2align 4,,10
	.p2align 3
L571:
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	movl	%edx, %esi
	sall	$7, %esi
	sall	$8, %eax
	addl	%esi, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	jmp	L542
	.cfi_endproc
LFE30:
	.p2align 4
	.globl	__Z13InitSerpSpells
	.def	__Z13InitSerpSpells;	.scl	2;	.type	32;	.endef
__Z13InitSerpSpells:
LFB32:
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
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movswl	112(%esp), %edi
	movl	$0, 32(%esp)
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movl	%edi, 80(%esp)
	movl	%eax, %esi
	movl	_User(,%edi,4), %eax
	movl	$-1171354717, %edi
	movl	%esi, %ebp
	movl	%eax, 36(%esp)
	leal	28(%esi), %eax
	movl	%eax, 72(%esp)
	leal	18(%esi), %eax
	movl	%eax, 48(%esp)
	leal	4(%esi), %eax
	movl	%eax, 52(%esp)
	leal	8(%esi), %eax
	movl	%eax, 76(%esp)
L587:
	movl	36(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebp), %edx
	subl	0(%ebp), %ecx
	call	@getangle@8
	movl	72(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2099, %edx
	movw	%cx, 28(%ebp)
	movl	%ecx, 16(%esp)
	movl	_sg_SerpMeteor, %ecx
	movl	$1500, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	14(%ebp), %esi
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movswl	_tilesiz+2(,%esi,4), %edx
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	addl	%ecx, %ebx
	movl	%eax, 40(%esp)
	movzbl	21(%ebp), %eax
	testb	$-128, 12(%ebp)
	je	L573
	cmpb	$64, %al
	je	L596
	imull	%edx, %eax
	leal	(%eax,%eax), %edx
L575:
	movsbl	_picanm+2(%esi,%esi,4), %eax
	movl	40(%esp), %esi
	sall	$8, %eax
	addl	%edx, %eax
	subl	%eax, %esi
L576:
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_SerpMeteor, %edx
	movl	%esi, 8(%ebx)
	movl	24(%esp), %esi
	movw	%ax, 80(%esi)
	movl	28(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$_s_MirvMeteorExp, 28(%esi)
	movl	28(%esp), %edx
	movl	80(%esp), %eax
	movl	%esi, 24(%esp)
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	movl	76(%esp), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%esi, %eax
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	52(%esp), %eax
	movb	$-40, 16(%ebx)
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	52(%esp), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$129, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_sprite, %esi
	leal	17(%ebx), %edx
	movl	24(%esp), %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$27, 17(%ebx)
	movl	%edx, %eax
	movb	$27, 262(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$64, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%esi, %edx
	movb	$64, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	leal	36(%ebx), %eax
	movl	%eax, 64(%esp)
	subl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movb	$8, 18(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$200, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$268439552, 96(%ecx)
	movw	%ax, 212(%ecx)
	movzbl	18(%ebp), %eax
	movb	%al, 59(%esp)
	movl	48(%esp), %eax
	subl	%esi, %eax
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%ebp)
	movzwl	__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0(%eax), %eax
	movzwl	28(%ebx), %ecx
	movw	%ax, 40(%esp)
	addl	%eax, %ecx
	leal	28(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 44(%esp)
	andw	$2047, %cx
	subl	%esi, %edx
	movl	28(%esp), %esi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%esi, (%esp)
	movl	$4200, 4(%esp)
	call	__Z18HelpMissileLateralsi
	movl	_sprite, %eax
	movl	44(%esp), %esi
	movzwl	28(%ebx), %ecx
	subw	40(%esp), %cx
	subl	%eax, %esi
	movl	%eax, 60(%esp)
	andw	$2047, %cx
	movl	%esi, %eax
	movw	%cx, 40(%esp)
	mull	%edi
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	200(%eax), %esi
	movl	%edx, 44(%esp)
	movl	(%esi), %edx
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
	movl	%ecx, 68(%esp)
	je	L579
	movswl	32(%ebx), %eax
	movl	8(%esi), %edx
	movl	%eax, 40(%esp)
	movswl	14(%esi), %eax
	movl	%edx, 84(%esp)
	movl	%eax, 88(%esp)
	movswl	_tilesiz+2(,%eax,4), %ecx
	movzbl	21(%esi), %eax
	testb	$-128, 12(%esi)
	je	L580
	cmpb	$64, %al
	je	L597
	movl	88(%esp), %edx
	movl	%eax, %esi
	imull	%ecx, %esi
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	leal	(%edx,%esi,2), %esi
	movl	84(%esp), %edx
	subl	%esi, %edx
	jmp	L583
	.p2align 4,,10
	.p2align 3
L580:
	cmpb	$64, %al
	je	L598
	movl	%eax, %edx
	imull	%ecx, %edx
	leal	0(,%edx,4), %esi
	movl	84(%esp), %edx
	subl	%esi, %edx
L583:
	imull	%ecx, %eax
L585:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	imull	40(%esp), %eax
	cltd
	idivl	68(%esp)
	movl	64(%esp), %edx
	subl	60(%esp), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%ebx), %eax
	movw	%cx, 36(%ebx)
	movw	%ax, 40(%esp)
L579:
	movl	32(%esp), %eax
	movzwl	40(%esp), %ecx
	movl	24(%esp), %esi
	addw	__ZZ13InitSerpSpellsE9delta_ang(%eax), %cx
	movl	44(%esp), %eax
	andw	$2047, %cx
	addl	$1, _spritechanged(,%eax,4)
	movswl	32(%ebx), %edx
	movw	%cx, 28(%ebx)
	addw	$512, %cx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %eax
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
	movl	28(%esp), %eax
	movl	$400, 8(%esp)
	movl	$__Z13DoMirvMissiles, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	48(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movzbl	59(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebp)
	movl	36(%esp), %eax
	testb	$64, 71(%eax)
	je	L586
	orl	$1073741824, 68(%esi)
L586:
	cmpl	$2, 32(%esp)
	jne	L588
	addl	$92, %esp
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
L573:
	.cfi_restore_state
	cmpb	$64, %al
	je	L599
	imull	%edx, %eax
	sall	$2, %eax
L578:
	movl	40(%esp), %esi
	subl	%eax, %esi
	jmp	L576
	.p2align 4,,10
	.p2align 3
L588:
	movl	$2, 32(%esp)
	jmp	L587
	.p2align 4,,10
	.p2align 3
L599:
	movl	%edx, %eax
	sall	$8, %eax
	jmp	L578
	.p2align 4,,10
	.p2align 3
L596:
	sall	$7, %edx
	jmp	L575
	.p2align 4,,10
	.p2align 3
L598:
	movl	84(%esp), %edx
	movl	%ecx, %eax
	sall	$8, %eax
	subl	%eax, %edx
L582:
	movl	%ecx, %eax
	sall	$6, %eax
	jmp	L585
	.p2align 4,,10
	.p2align 3
L597:
	movl	88(%esp), %eax
	movl	%ecx, %esi
	sall	$7, %esi
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	addl	%esi, %eax
	subl	%eax, %edx
	jmp	L582
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z18InitSerpMonstSpells
	.def	__Z18InitSerpMonstSpells;	.scl	2;	.type	32;	.endef
__Z18InitSerpMonstSpells:
LFB33:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	_sprite, %ecx
	movswl	88(%esp), %ebx
	imull	$44, %ebx, %eax
	movl	%ebx, 36(%esp)
	leal	(%ecx,%eax), %ebp
	movl	_User(,%ebx,4), %eax
	leal	8(%ebp), %edi
	movl	%edi, %edx
	movl	%eax, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$30, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	28(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebp), %edx
	subl	0(%ebp), %ecx
	call	@getangle@8
	leal	28(%ebp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2099, %edx
	movw	%cx, 28(%ebp)
	movl	%ecx, 16(%esp)
	movl	_sg_SerpMeteor, %ecx
	movl	$500, 20(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	%edi, 24(%esp)
	movl	_User(,%edi,4), %edi
	movl	%edi, 32(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$17, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$25, 17(%ebx)
	movb	$25, 262(%edi)
	movswl	14(%ebp), %edi
	movzbl	21(%ebp), %eax
	movl	8(%ebp), %edx
	movswl	_tilesiz+2(,%edi,4), %esi
	testb	$-128, 12(%ebp)
	je	L601
	cmpb	$64, %al
	je	L622
	imull	%esi, %eax
	addl	%eax, %eax
L603:
	movsbl	_picanm+2(%edi,%edi,4), %esi
	movl	%edx, %edi
	sall	$8, %esi
	addl	%eax, %esi
	subl	%esi, %edi
	jmp	L604
	.p2align 4,,10
	.p2align 3
L601:
	cmpb	$64, %al
	je	L623
	imull	%esi, %eax
	leal	0(,%eax,4), %esi
L606:
	movl	%edx, %edi
	subl	%esi, %edi
L604:
	leal	8(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_SerpMeteor, %edx
	movl	%edi, 8(%ebx)
	movl	32(%esp), %edi
	movw	%ax, 80(%edi)
	movl	24(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$_s_TeleportEffect2, 28(%edi)
	movl	24(%esp), %edx
	movl	36(%esp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$122, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$116, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	leal	36(%ebx), %eax
	movl	%eax, 52(%esp)
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movb	$8, 18(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$200, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$268439552, 96(%edi)
	movw	%ax, 212(%edi)
	movzbl	18(%ebp), %eax
	movb	%al, 47(%esp)
	leal	18(%ebp), %eax
	movl	%eax, 40(%esp)
	subl	%ecx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%ebp)
	movzwl	28(%ebx), %edi
	leal	512(%edi), %eax
	leal	28(%ebx), %edi
	movl	%edi, %edx
	andw	$2047, %ax
	subl	%ecx, %edx
	movw	%ax, 36(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	36(%esp), %ecx
	movl	24(%esp), %eax
	movw	%cx, 28(%ebx)
	movl	$4200, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movzwl	28(%ebx), %eax
	leal	-512(%eax), %ecx
	movl	_sprite, %eax
	andw	$2047, %cx
	subl	%eax, %edi
	movl	%eax, 48(%esp)
	movl	%edi, %eax
	mull	%esi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	200(%eax), %esi
	movl	%edx, 36(%esp)
	movl	(%esi), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	subl	4(%ebx), %edx
	movl	%edx, %edi
	negl	%edi
	cmovns	%edi, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %edi
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %edi
	movl	%edi, 56(%esp)
	je	L607
	movswl	32(%ebx), %eax
	movswl	14(%esi), %edx
	movl	8(%esi), %ecx
	movl	%eax, 60(%esp)
	movswl	_tilesiz+2(,%edx,4), %edi
	movl	%ecx, 64(%esp)
	movzbl	21(%esi), %eax
	testb	$-128, 12(%esi)
	je	L608
	cmpb	$64, %al
	je	L624
	movl	%eax, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%edi, %ecx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	movl	64(%esp), %edx
	subl	%ecx, %edx
L611:
	imull	%eax, %edi
L613:
	addl	%edx, %edi
	subl	8(%ebx), %edi
	imull	60(%esp), %edi
	movl	%edi, %eax
	cltd
	idivl	56(%esp)
	movl	$-1171354717, %edx
	movl	%eax, %edi
	movl	52(%esp), %eax
	subl	48(%esp), %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzwl	28(%ebx), %ecx
	movw	%di, 36(%ebx)
L607:
	movl	36(%esp), %eax
	subl	$10, %ecx
	movl	32(%esp), %esi
	andw	$2047, %cx
	addl	$1, _spritechanged(,%eax,4)
	movswl	32(%ebx), %edx
	movw	%cx, 28(%ebx)
	addw	$512, %cx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %eax
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
	movl	24(%esp), %eax
	movl	$400, 8(%esp)
	movl	$__Z13DoMirvMissiles, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	$-1171354717, %eax
	movl	40(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	47(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebp)
	movl	28(%esp), %eax
	testb	$64, 71(%eax)
	je	L614
	orl	$1073741824, 68(%esi)
L614:
	addl	$68, %esp
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
L608:
	.cfi_restore_state
	cmpb	$64, %al
	je	L625
	movl	%eax, %ecx
	movl	64(%esp), %edx
	imull	%edi, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L611
	.p2align 4,,10
	.p2align 3
L623:
	sall	$8, %esi
	jmp	L606
	.p2align 4,,10
	.p2align 3
L622:
	movl	%esi, %eax
	sall	$7, %eax
	jmp	L603
	.p2align 4,,10
	.p2align 3
L625:
	movl	64(%esp), %edx
	movl	%edi, %eax
	sall	$8, %eax
	subl	%eax, %edx
L610:
	sall	$6, %edi
	jmp	L613
	.p2align 4,,10
	.p2align 3
L624:
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%edi, %ecx
	movl	64(%esp), %edx
	sall	$7, %ecx
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	jmp	L610
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z15InitEnemyRockets
	.def	__Z15InitEnemyRockets;	.scl	2;	.type	32;	.endef
__Z15InitEnemyRockets:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	_sprite, %ecx
	movswl	64(%esp), %eax
	imull	$44, %eax, %ebx
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	addl	%ecx, %ebx
	leal	8(%ebx), %ebp
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
	movl	$94, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %edi
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%ebx), %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %esi
	movw	%di, 28(%ebx)
	movswl	14(%ebx), %edi
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%edi,4), %edi
	cmpb	$64, %al
	je	L643
	imull	%edi, %eax
	addl	%eax, %eax
L628:
	movl	24(%esp), %edi
	movl	$500, 20(%esp)
	subl	%eax, %edx
	subl	$4096, %edx
	movl	200(%edi), %edi
	movswl	28(%edi), %edi
	movl	%edx, 12(%esp)
	movl	$2016, %edx
	movl	%esi, 8(%esp)
	movl	%edi, 16(%esp)
	movl	%ecx, 4(%esp)
	movswl	24(%ebx), %eax
	movl	$_s_Rocket, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ebp
	movl	_sprite, %eax
	imull	$44, %ebp, %esi
	movl	_User(,%ebp,4), %edi
	movb	$17, 262(%edi)
	addl	%eax, %esi
	leal	17(%esi), %ecx
	movl	%ecx, %edx
	movl	%ecx, 36(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%esi)
	cmpw	$1095, 82(%eax)
	je	L644
	movl	32(%esp), %eax
	movl	%ebp, %edx
	call	__Z8SetOwnerss
L630:
	movl	_sprite, %ecx
	leal	21(%esi), %edx
	movl	$-1171354717, %ebx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$28, 21(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movb	$28, 20(%esi)
	movl	%edx, %eax
	mull	%ebx
	leal	36(%esi), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$-15, 16(%esi)
	movl	%edx, %eax
	mull	%ebx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%esi), %edx
	subl	%ecx, %edx
	movw	%ax, 36(%esi)
	movl	%edx, %eax
	mull	%ebx
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%ecx, %edx
	movw	%ax, 28(%esi)
	movl	%edx, %eax
	mull	%ebx
	movl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	movb	$16, 18(%esi)
	movw	%dx, 80(%edi)
	movl	$_sg_Rocket, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %ecx
	leal	12(%esi), %edx
	movl	$200, 188(%edi)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%esi), %eax
	orw	$128, 12(%esi)
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
	movl	24(%esp), %eax
	cmpb	$24, 262(%eax)
	jne	L631
	movl	36(%esp), %edx
	orl	$131072, 68(%edi)
	movb	$20, 262(%edi)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$20, 17(%esi)
L631:
	movl	$400, 8(%esp)
	movl	$__Z13DoBoltThinMans, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	24(%esp), %eax
	movl	200(%eax), %edx
	movl	(%edx), %ecx
	subl	(%esi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%esi), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovns	%ebx, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %ebx
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %ebx
	movl	%ebx, 24(%esp)
	je	L626
	movswl	32(%esi), %eax
	movl	8(%edx), %ebx
	movzbl	21(%edx), %ecx
	movl	%eax, 28(%esp)
	movswl	14(%edx), %eax
	movl	%ebx, 36(%esp)
	movl	%eax, 40(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	testb	$-128, 12(%edx)
	je	L633
	cmpb	$64, %cl
	je	L645
	movl	40(%esp), %ebx
	movl	%ecx, %edx
	imull	%eax, %edx
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	sall	$8, %ebx
	leal	(%ebx,%edx,2), %ebx
	movl	36(%esp), %edx
	subl	%ebx, %edx
L636:
	imull	%ecx, %eax
L638:
	addl	%edx, %eax
	subl	8(%esi), %eax
	imull	28(%esp), %eax
	cltd
	idivl	24(%esp)
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%esi)
	movswl	%cx, %ecx
	movl	%ecx, 160(%edi)
L626:
	addl	$44, %esp
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
L633:
	.cfi_restore_state
	cmpb	$64, %cl
	je	L646
	movl	%ecx, %ebx
	movl	36(%esp), %edx
	imull	%eax, %ebx
	sall	$2, %ebx
	subl	%ebx, %edx
	jmp	L636
	.p2align 4,,10
	.p2align 3
L644:
	movswl	30(%ebx), %eax
	movl	%ebp, %edx
	call	__Z8SetOwnerss
	jmp	L630
	.p2align 4,,10
	.p2align 3
L643:
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L628
	.p2align 4,,10
	.p2align 3
L645:
	movl	40(%esp), %ebx
	movl	%eax, %ecx
	sall	$7, %ecx
	movsbl	_picanm+2(%ebx,%ebx,4), %edx
	sall	$8, %edx
	addl	%edx, %ecx
	movl	36(%esp), %edx
	subl	%ecx, %edx
L635:
	sall	$6, %eax
	jmp	L638
	.p2align 4,,10
	.p2align 3
L646:
	movl	36(%esp), %edx
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%ecx, %edx
	jmp	L635
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z13InitEnemyRails
	.def	__Z13InitEnemyRails;	.scl	2;	.type	32;	.endef
__Z13InitEnemyRails:
LFB35:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	testb	$1, _SW_GameFlags
	jne	L648
	movswl	64(%esp), %eax
	movl	_sprite, %ecx
	movl	%ebx, 44(%esp)
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	cmpw	$3, _gNet+12
	.cfi_offset 3, -20
	jne	L649
	cmpw	$1095, 82(%eax)
	je	L672
L649:
	movl	24(%esp), %eax
	movl	%edi, 52(%esp)
	movl	$-1171354717, %ebx
	movl	%ebp, 56(%esp)
	movl	%esi, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	140(%eax), %esi
	leal	8(%esi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$269, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	leal	28(%esi), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	_krandcount, %ebx
	movswl	%cx, %ebp
	leal	1(%ebx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edi
	movw	%cx, 28(%esi)
	leal	1(%eax,%edi,4), %eax
	movzwl	%ax, %edi
	movl	%edi, _randomseed
	testb	$2, %ah
	je	L673
L653:
	movswl	14(%esi), %edi
	movzbl	21(%esi), %eax
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	movl	8(%esi), %edx
	movswl	_tilesiz+2(,%edi,4), %edi
	cmpb	$64, %al
	je	L674
	imull	%edi, %eax
	addl	%eax, %eax
L655:
	subl	%eax, %edx
	movl	%ebp, 16(%esp)
	subl	$2048, %edx
	movl	%ebx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	$2017, %edx
	movl	%ecx, 4(%esp)
	movl	$_s_Rail, %ecx
	movl	$1200, 20(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edi
	movl	24(%esp), %eax
	imull	$44, %edi, %ebx
	movl	%edi, 28(%esp)
	movl	_User(,%edi,4), %ebp
	addl	_sprite, %ebx
	cmpw	$1095, 82(%eax)
	je	L675
	movl	32(%esp), %eax
	movl	%edi, %edx
	call	__Z8SetOwnerss
L657:
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	movl	$-1171354717, %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$52, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$52, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	leal	36(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	movw	%ax, 36(%ebx)
	movl	%edi, %eax
	movw	%dx, 80(%ebp)
	movl	$_sg_Rail, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	orl	$2097152, 72(%ebp)
	movl	$200, 188(%ebp)
	subl	%ecx, %edx
	movl	$16777472, 96(%ebp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$257, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movb	$16, 18(%ebx)
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%ebp)
	movswl	36(%ebx), %eax
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
	movl	$600, 8(%esp)
	movl	$__Z11DoRailStarts, 4(%esp)
	call	__Z17TestMissileSetPossPFisEii
	testb	%al, %al
	jne	L676
	movl	24(%esp), %eax
	movl	200(%eax), %ecx
	movl	(%ecx), %edx
	subl	(%ebx), %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%ecx), %edx
	subl	4(%ebx), %edx
	movl	%edx, %esi
	negl	%esi
	cmovns	%esi, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %edi
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %edi
	je	L671
	movswl	32(%ebx), %eax
	movl	8(%ecx), %edx
	movl	%eax, 24(%esp)
	movswl	14(%ecx), %eax
	movl	%edx, 36(%esp)
	movl	%eax, 40(%esp)
	movswl	_tilesiz+2(,%eax,4), %esi
	movzbl	21(%ecx), %eax
	testb	$-128, 12(%ecx)
	je	L660
	cmpb	$64, %al
	je	L677
	movl	40(%esp), %edx
	movl	%eax, %ecx
	imull	%esi, %ecx
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	leal	(%edx,%ecx,2), %ecx
	movl	36(%esp), %edx
	subl	%ecx, %edx
L663:
	imull	%eax, %esi
L665:
	addl	%edx, %esi
	subl	8(%ebx), %esi
	imull	24(%esp), %esi
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %esi
	movl	$-1171354717, %eax
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 36(%ebx)
	movswl	%si, %esi
	movl	%esi, 160(%ebp)
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L676:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	44(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L648:
	movl	$0, 28(%esp)
	movl	28(%esp), %eax
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L674:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	sall	$7, %eax
	jmp	L655
	.p2align 4,,10
	.p2align 3
L675:
	movswl	30(%esi), %eax
	movl	%edi, %edx
	call	__Z8SetOwnerss
	jmp	L657
	.p2align 4,,10
	.p2align 3
L671:
	movl	28(%esp), %eax
	movl	44(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	48(%esp), %esi
	.cfi_restore 6
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	addl	$60, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L673:
	.cfi_restore_state
	leal	(%edi,%edi,4), %eax
	addl	$2, %ebx
	addl	$1, _spritechanged(,%edx,4)
	leal	1(%edi,%eax,4), %eax
	movl	%ebx, _krandcount
	movzwl	%ax, %ebx
	andl	$127, %eax
	leal	-64(%eax,%ecx), %eax
	movl	%ebx, _randomseed
	andl	$2047, %eax
	movw	%ax, 28(%esi)
	movswl	%ax, %ebp
	jmp	L653
	.p2align 4,,10
	.p2align 3
L672:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	_connecthead, %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L649
	movl	24(%esp), %eax
	movl	200(%eax), %ebx
	jmp	L652
	.p2align 6
	.p2align 4,,10
	.p2align 3
L650:
	movl	_connectpoint2(,%edx,4), %eax
	movswl	%ax, %edx
	cmpw	$-1, %ax
	je	L649
L652:
	imull	$24124, %edx, %eax
	movswl	_Player+348(%eax), %eax
	imull	$44, %eax, %eax
	addl	%ecx, %eax
	cmpl	%eax, %ebx
	jne	L650
	movl	44(%esp), %ebx
	.cfi_restore 3
	jmp	L648
	.p2align 4,,10
	.p2align 3
L660:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpb	$64, %al
	je	L678
	movl	%eax, %ecx
	movl	36(%esp), %edx
	imull	%esi, %ecx
	sall	$2, %ecx
	subl	%ecx, %edx
	jmp	L663
	.p2align 4,,10
	.p2align 3
L677:
	movl	40(%esp), %eax
	movl	%esi, %ecx
	sall	$7, %ecx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
L662:
	sall	$6, %esi
	jmp	L665
	.p2align 4,,10
	.p2align 3
L678:
	movl	36(%esp), %edx
	movl	%esi, %eax
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L662
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z15InitZillaRockets
	.def	__Z15InitZillaRockets;	.scl	2;	.type	32;	.endef
__Z15InitZillaRockets:
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
	subl	$72, %esp
	.cfi_def_cfa_offset 92
	movl	_sprite, %ecx
	movswl	92(%esp), %ebx
	imull	$44, %ebx, %eax
	movl	%ebx, 60(%esp)
	leal	(%ecx,%eax), %ebp
	movl	_User(,%ebx,4), %eax
	movl	$-1171354717, %ebx
	leal	8(%ebp), %edi
	movl	%ebp, 40(%esp)
	movl	%edi, %edx
	movl	%eax, 36(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	leal	4(%ebp), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$94, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	36(%esp), %eax
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebp), %edx
	subl	0(%ebp), %ecx
	call	@getangle@8
	leal	28(%ebp), %edx
	subl	_sprite, %edx
	movl	$__ZZ15InitZillaRocketsE2mp, 44(%esp)
	movl	%eax, %ecx
	movl	%eax, 64(%esp)
	movl	%edx, %eax
	mull	%ebx
	movl	$0, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebp)
	movl	$-1171354717, %ebp
	jmp	L691
	.p2align 4,,10
	.p2align 3
L700:
	leal	17(%ebx), %edx
	movb	$17, 262(%edi)
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	$17, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
L683:
	movb	%al, 17(%ebx)
	movl	44(%esp), %eax
	movl	32(%esp), %edx
	movl	(%eax), %ecx
	movzwl	8(%eax), %eax
	subl	%esi, %edx
	movl	%ecx, 52(%esp)
	movzwl	28(%ebx), %ecx
	movw	%ax, 28(%esp)
	movl	52(%esp), %esi
	addl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebp
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%esi, 4(%esp)
	movl	48(%esp), %esi
	movl	%esi, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movzwl	28(%ebx), %ecx
	subw	28(%esp), %cx
	mull	%ebp
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	%esi, (%esp)
	movl	$400, 8(%esp)
	movl	$__Z13DoBoltThinMans, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	36(%esp), %eax
	movl	200(%eax), %eax
	movl	(%eax), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movl	4(%eax), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovns	%esi, %ecx
	cmpl	%ecx, %edx
	leal	(%edx,%ecx), %esi
	cmovg	%ecx, %edx
	sarl	%edx
	subl	%edx, %esi
	movl	%esi, 28(%esp)
	je	L684
	movswl	32(%ebx), %ecx
	movl	8(%eax), %esi
	movl	%ecx, 32(%esp)
	movswl	14(%eax), %ecx
	movl	%esi, 52(%esp)
	movl	%ecx, 68(%esp)
	movswl	_tilesiz+2(,%ecx,4), %edx
	movzbl	21(%eax), %ecx
	testb	$-128, 12(%eax)
	je	L685
	cmpb	$64, %cl
	je	L697
	movl	68(%esp), %esi
	movl	%ecx, %eax
	imull	%edx, %eax
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	leal	(%esi,%eax,2), %esi
	movl	52(%esp), %eax
	subl	%esi, %eax
L688:
	imull	%ecx, %edx
L690:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	imull	32(%esp), %eax
	cltd
	idivl	28(%esp)
	movl	56(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	movswl	%cx, %ecx
	movl	%ecx, 160(%edi)
L684:
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	addl	$12, 44(%esp)
	cmpl	$6, %eax
	je	L698
L691:
	movl	40(%esp), %edi
	movswl	14(%edi), %esi
	movzbl	21(%edi), %eax
	movl	(%edi), %ecx
	movl	4(%edi), %ebx
	movl	8(%edi), %edx
	movswl	_tilesiz+2(,%esi,4), %esi
	cmpb	$64, %al
	je	L699
	imull	%esi, %eax
	addl	%eax, %eax
L681:
	movl	36(%esp), %edi
	movl	$500, 20(%esp)
	subl	%eax, %edx
	movl	40(%esp), %eax
	subl	$4096, %edx
	movl	200(%edi), %esi
	movswl	28(%esi), %esi
	movl	%edx, 12(%esp)
	movl	$2016, %edx
	movl	%ebx, 8(%esp)
	movl	%esi, 16(%esp)
	movl	%ecx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$_s_Rocket, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	60(%esp), %eax
	movl	%esi, %edx
	movl	_User(,%esi,4), %edi
	imull	$44, %esi, %ebx
	movl	%esi, 48(%esp)
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$28, 21(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$28, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	leal	36(%ebx), %eax
	movl	%eax, 56(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%ebx)
	leal	28(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movzwl	64(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 28(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	movb	$16, 18(%ebx)
	movw	%dx, 80(%edi)
	movl	$_sg_Rocket, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %esi
	leal	12(%ebx), %edx
	movl	$200, 188(%edi)
	movl	$18, %ecx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	orw	$128, 12(%ebx)
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
	movzbl	24(%esp), %eax
	btl	%eax, %ecx
	jnc	L700
	leal	17(%ebx), %edx
	orl	$131072, 68(%edi)
	subl	%esi, %edx
	movb	$20, 262(%edi)
	movl	%edx, %eax
	mull	%ebp
	movl	$20, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	jmp	L683
	.p2align 4,,10
	.p2align 3
L699:
	movl	%esi, %eax
	sall	$7, %eax
	jmp	L681
	.p2align 4,,10
	.p2align 3
L685:
	cmpb	$64, %cl
	je	L701
	movl	%ecx, %esi
	movl	52(%esp), %eax
	imull	%edx, %esi
	sall	$2, %esi
	subl	%esi, %eax
	jmp	L688
	.p2align 4,,10
	.p2align 3
L698:
	movl	48(%esp), %eax
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
L697:
	.cfi_restore_state
	movl	68(%esp), %eax
	movl	%edx, %ecx
	sall	$7, %ecx
	movsbl	_picanm+2(%eax,%eax,4), %eax
	sall	$8, %eax
	addl	%eax, %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
L687:
	sall	$6, %edx
	jmp	L690
	.p2align 4,,10
	.p2align 3
L701:
	movl	52(%esp), %eax
	movl	%edx, %ecx
	sall	$8, %ecx
	subl	%ecx, %eax
	jmp	L687
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z17InitEnemyCrossbows
	.def	__Z17InitEnemyCrossbows;	.scl	2;	.type	32;	.endef
__Z17InitEnemyCrossbows:
LFB37:
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
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movswl	72(%esp), %edi
	movl	_User(,%edi,4), %eax
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movl	%eax, 28(%esp)
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	_sprite, %ebp
	leal	28(%esi), %edx
	movl	%eax, %ebx
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%esi), %eax
	movswl	14(%esi), %ecx
	movw	%bx, 28(%esi)
	movl	%eax, 24(%esp)
	movl	4(%esi), %eax
	movswl	_tilesiz+2(,%ecx,4), %edx
	movzbl	21(%esi), %ebx
	movl	%eax, 32(%esp)
	movl	8(%esi), %eax
	testb	$-128, 12(%esi)
	je	L703
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %bl
	je	L720
	imull	%edx, %ebx
	addl	%ebx, %ebx
	leal	(%ebx,%ecx), %edx
	movl	%ebx, 40(%esp)
	movl	%eax, %ebx
	subl	%edx, %ebx
L705:
	movl	40(%esp), %edx
	subl	%ecx, %edx
	addl	%edx, %eax
	jmp	L708
	.p2align 4,,10
	.p2align 3
L703:
	cmpb	$64, %bl
	je	L721
	imull	%edx, %ebx
	leal	0(,%ebx,4), %edx
L707:
	movl	%eax, %ebx
	subl	%edx, %ebx
L708:
	movl	28(%esp), %ecx
	addl	%ebx, %eax
	movl	$800, 20(%esp)
	sarl	%eax
	movl	200(%ecx), %edx
	subl	$3584, %eax
	movl	$_s_CrossBolt, %ecx
	movswl	28(%edx), %edx
	movl	%eax, 12(%esp)
	movl	32(%esp), %eax
	movl	%edx, 16(%esp)
	movl	$2230, %edx
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	addl	%ebp, %ebx
	movl	_User(,%eax,4), %ebp
	movl	%edi, %eax
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$16, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%edi, %edx
	movb	$26, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	leal	36(%ebx), %eax
	movl	%eax, 32(%esp)
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	xorl	%eax, %eax
	movb	$-25, 16(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movzwl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%edi, %edx
	movw	%ax, 28(%ebx)
	movl	24(%esp), %edi
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	movb	$16, 18(%ebx)
	movw	%dx, 80(%ebp)
	movl	$_sg_CrossBolt, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movswl	36(%ebx), %eax
	orl	$16777216, 68(%ebp)
	movl	%eax, 160(%ebp)
	movl	%edi, (%esp)
	movl	$400, 8(%esp)
	movl	$__Z6DoStars, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	28(%esp), %ecx
	movl	200(%ecx), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovns	%edi, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edi
	cmovg	%ecx, %eax
	movl	_sprite, %ecx
	sarl	%eax
	subl	%eax, %edi
	movl	%edi, 28(%esp)
	je	L709
	movswl	32(%ebx), %eax
	movl	8(%edx), %edi
	movl	%eax, 40(%esp)
	movswl	14(%edx), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 48(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	movl	%eax, 36(%esp)
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L710
	cmpb	$64, %al
	je	L722
	movl	36(%esp), %edx
	movl	48(%esp), %edi
	imull	%eax, %edx
	movsbl	_picanm+2(%edi,%edi,4), %edi
	sall	$8, %edi
	leal	(%edi,%edx,2), %edx
	movl	44(%esp), %edi
	subl	%edx, %edi
L713:
	imull	36(%esp), %eax
L715:
	addl	%edi, %eax
	subl	8(%ebx), %eax
	imull	40(%esp), %eax
	cltd
	idivl	28(%esp)
	movl	$-1171354717, %edx
	movl	%eax, %edi
	movl	32(%esp), %eax
	subl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%di, 36(%ebx)
	movswl	%di, %edi
	movl	%edi, 160(%ebp)
L709:
	leal	8(%esi), %ebp
	movl	$-1171354717, %ebx
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	leal	4(%esi), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$2, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
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
L710:
	.cfi_restore_state
	cmpb	$64, %al
	je	L723
	movl	36(%esp), %edx
	movl	44(%esp), %edi
	imull	%eax, %edx
	sall	$2, %edx
	subl	%edx, %edi
	jmp	L713
	.p2align 4,,10
	.p2align 3
L721:
	sall	$8, %edx
	jmp	L707
	.p2align 4,,10
	.p2align 3
L720:
	sall	$7, %edx
	movl	%eax, %ebx
	movl	%edx, 40(%esp)
	addl	%ecx, %edx
	subl	%edx, %ebx
	jmp	L705
	.p2align 4,,10
	.p2align 3
L723:
	movl	36(%esp), %eax
	movl	44(%esp), %edi
	sall	$8, %eax
	subl	%eax, %edi
L712:
	movl	36(%esp), %eax
	sall	$6, %eax
	jmp	L715
	.p2align 4,,10
	.p2align 3
L722:
	movl	48(%esp), %eax
	movsbl	_picanm+2(%eax,%eax,4), %edx
	movl	36(%esp), %eax
	sall	$8, %edx
	sall	$7, %eax
	addl	%edx, %eax
	subl	%eax, %edi
	jmp	L712
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z22WallSpriteInsideSpriteP12spritetypev7S0_
	.def	__Z22WallSpriteInsideSpriteP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
__Z22WallSpriteInsideSpriteP12spritetypev7S0_:
LFB38:
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
	movl	40(%esp), %ecx
	movswl	14(%ecx), %esi
	movl	4(%ecx), %eax
	movsbl	22(%ecx), %edx
	movzbl	20(%ecx), %edi
	movl	%eax, 16(%esp)
	movsbl	_picanm+1(%esi,%esi,4), %eax
	movl	(%ecx), %ebp
	addl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	testb	$4, 12(%ecx)
	cmovne	%edx, %eax
	movswl	28(%ecx), %edx
	movswl	_sintable(%edx,%edx), %ecx
	addl	$1536, %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %ebx
	imull	%edi, %ecx
	imull	%edi, %ebx
	movswl	_tilesiz(,%esi,4), %edi
	movl	%edi, %esi
	sarl	%esi
	addl	%eax, %esi
	movl	%ecx, %eax
	movl	%esi, %edx
/APP
 # 16121 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ebp
	movl	%edi, %edx
	movl	%ecx, %eax
/APP
 # 16123 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	%ebx, %eax
/APP
 # 16125 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %esi
	movl	%edi, %edx
	subl	%eax, %esi
	movl	%ebx, %eax
/APP
 # 16126 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	44(%esp), %edi
	addl	%ebp, %ecx
	movl	%edi, %ebx
	movl	4(%edi), %edx
	movl	(%edi), %edi
	movzbl	18(%ebx), %ebx
	movl	%ecx, 4(%esp)
	movl	%ebp, %ecx
	movl	%esi, (%esp)
	sall	$2, %ebx
	movl	%ebx, 12(%esp)
	leal	(%esi,%eax), %ebx
	movl	%edi, %eax
	movl	%ebx, 8(%esp)
	call	_clipinsideboxline
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
LFE38:
	.p2align 4
	.globl	__Z13DoBladeDamages
	.def	__Z13DoBladeDamages;	.scl	2;	.type	32;	.endef
__Z13DoBladeDamages:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$_StatDamageList, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %eax
	movl	%eax, 20(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebp
	.p2align 4
	.p2align 3
L736:
	movswl	(%edi), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L731
	movl	%ebp, 8(%esp)
	movl	%edi, 16(%esp)
	jmp	L730
	.p2align 4,,10
	.p2align 3
L735:
	movswl	%si, %edi
	movzwl	_nextspritestat(%edi,%edi), %eax
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movw	%ax, 14(%esp)
	testb	$8, 43(%esi)
	je	L732
	movl	8(%esp), %ecx
	movl	(%ecx), %eax
	subl	(%esi), %eax
	movl	%eax, %edx
	movl	4(%ecx), %ecx
	negl	%edx
	cmovs	%eax, %edx
	subl	4(%esi), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	%ebx, %edx
	leal	(%edx,%ebx), %ebp
	cmovg	%ebx, %edx
	movl	%ebp, %ebx
	sarl	%edx
	subl	%edx, %ebx
	cmpl	$2000, %ebx
	jg	L732
	movl	8(%esp), %edx
	movl	8(%edx), %edx
	subl	8(%esi), %edx
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 24(%esp)
	movl	%eax, %ebx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 32(%esp)
	cmpl	%ecx, %ebx
	jge	L733
	leal	28(%esp), %ebx
	leal	24(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	24(%esp), %ebx
	movl	32(%esp), %eax
L733:
	cmpl	%eax, %ebx
	jge	L734
	leal	24(%esp), %eax
	leal	32(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	32(%esp), %eax
	movl	24(%esp), %ebx
L734:
	movl	%ebx, %edx
	addl	28(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	cmpl	$2000, %ebx
	jg	L732
	movl	8(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z22WallSpriteInsideSpriteP12spritetypev7S0_
	testb	%al, %al
	jne	L751
	.p2align 4
	.p2align 3
L732:
	movzwl	14(%esp), %esi
	cmpw	$-1, %si
	je	L749
L730:
	cmpw	%si, 56(%esp)
	jne	L735
L749:
	movl	8(%esp), %ebp
	movl	16(%esp), %edi
L731:
	addl	$2, %edi
	movl	$_StatDamageList+40, %eax
	cmpl	%edi, %eax
	jne	L736
	addl	$36, %esp
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
L751:
	.cfi_restore_state
	movl	20(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	jmp	L732
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z20DoStaticFlamesDamages
	.def	__Z20DoStaticFlamesDamages;	.scl	2;	.type	32;	.endef
__Z20DoStaticFlamesDamages:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$_StatDamageList, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$64, %esp
	.cfi_def_cfa_offset 84
	movswl	84(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 36(%esp)
	movl	140(%eax), %ebp
	.p2align 4
	.p2align 3
L772:
	movswl	(%edi), %eax
	movzwl	_headspritestat(%eax,%eax), %esi
	cmpw	$-1, %si
	je	L754
	movl	%ebp, 20(%esp)
	movl	%edi, 32(%esp)
	jmp	L753
	.p2align 4,,10
	.p2align 3
L771:
	movswl	%si, %edi
	movzwl	_nextspritestat(%edi,%edi), %eax
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movw	%ax, 26(%esp)
	testb	$8, 43(%esi)
	je	L755
	movl	20(%esp), %ecx
	movl	(%ecx), %eax
	subl	(%esi), %eax
	movl	%eax, %edx
	movl	4(%ecx), %ecx
	negl	%edx
	cmovs	%eax, %edx
	subl	4(%esi), %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	%ebx, %edx
	leal	(%edx,%ebx), %ebp
	cmovg	%ebx, %edx
	movl	%ebp, %ebx
	sarl	%edx
	subl	%edx, %ebx
	cmpl	$2000, %ebx
	jg	L755
	movl	20(%esp), %edx
	movl	8(%edx), %edx
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
	jge	L756
	leal	56(%esp), %ebx
	leal	52(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	52(%esp), %ebx
	movl	60(%esp), %eax
L756:
	cmpl	%ebx, %eax
	jle	L757
	leal	52(%esp), %eax
	leal	60(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	60(%esp), %eax
	movl	52(%esp), %ebx
L757:
	movl	%ebx, %edx
	addl	56(%esp), %eax
	sarl	$4, %edx
	subl	%edx, %ebx
	movl	%eax, %edx
	sarl	$3, %eax
	sarl	$2, %edx
	addl	%edx, %ebx
	addl	%eax, %ebx
	cmpl	$2000, %ebx
	jg	L755
	movl	28(%esp), %eax
	movl	%edi, %edx
	call	__Z13SpriteOverlapss
	testb	%al, %al
	jne	L787
	movl	36(%esp), %eax
	cmpl	$200, 188(%eax)
	jbe	L755
	movzwl	24(%esi), %eax
	movswl	14(%esi), %ebx
	movzbl	21(%esi), %ecx
	movw	%ax, 50(%esp)
	movswl	_tilesiz+2(,%ebx,4), %edx
	movl	8(%esi), %eax
	testb	$-128, 12(%esi)
	je	L759
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %cl
	je	L788
	imull	%edx, %ecx
	leal	(%ecx,%ecx), %edx
	movl	%eax, %ecx
	leal	(%edx,%ebx), %ebp
	subl	%ebp, %ecx
L761:
	subl	%ebx, %edx
	addl	%edx, %eax
L764:
	addl	%ecx, %eax
	movl	20(%esp), %ebp
	sarl	%eax
	movswl	14(%ebp), %ebx
	movzbl	21(%ebp), %ecx
	movl	%eax, 40(%esp)
	movl	4(%esi), %eax
	movl	(%esi), %esi
	movswl	_tilesiz+2(,%ebx,4), %edx
	movl	%eax, 44(%esp)
	movzwl	24(%ebp), %eax
	movw	%ax, 48(%esp)
	movl	8(%ebp), %eax
	testb	$-128, 12(%ebp)
	je	L765
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	sall	$8, %ebx
	cmpb	$64, %cl
	je	L789
	imull	%edx, %ecx
	leal	(%ecx,%ecx), %edx
	movl	%eax, %ecx
	leal	(%edx,%ebx), %ebp
	subl	%ebp, %ecx
L767:
	subl	%ebx, %edx
	addl	%edx, %eax
L770:
	addl	%eax, %ecx
	movswl	50(%esp), %ebx
	movl	20(%esp), %eax
	sarl	%ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ebx, 16(%esp)
	movl	40(%esp), %ebx
	movl	%esi, 4(%esp)
	movl	%ebx, 12(%esp)
	movl	44(%esp), %ebx
	movl	%ebx, 8(%esp)
	movswl	48(%esp), %ebx
	movl	%ebx, (%esp)
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L787
	.p2align 4
	.p2align 3
L755:
	movzwl	26(%esp), %esi
	cmpw	$-1, %si
	je	L785
L753:
	cmpw	84(%esp), %si
	jne	L771
L785:
	movl	20(%esp), %ebp
	movl	32(%esp), %edi
L754:
	addl	$2, %edi
	movl	$_StatDamageList+40, %eax
	cmpl	%edi, %eax
	jne	L772
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
L787:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	jmp	L755
	.p2align 4,,10
	.p2align 3
L759:
	cmpb	$64, %cl
	je	L790
	imull	%edx, %ecx
	leal	0(,%ecx,4), %edx
L763:
	movl	%eax, %ecx
	subl	%edx, %ecx
	jmp	L764
	.p2align 4,,10
	.p2align 3
L765:
	cmpb	$64, %cl
	je	L791
	imull	%edx, %ecx
	leal	0(,%ecx,4), %edx
L769:
	movl	%eax, %ecx
	subl	%edx, %ecx
	jmp	L770
L789:
	sall	$7, %edx
	movl	%eax, %ecx
	leal	(%edx,%ebx), %ebp
	subl	%ebp, %ecx
	jmp	L767
L791:
	sall	$8, %edx
	jmp	L769
L788:
	sall	$7, %edx
	movl	%eax, %ecx
	leal	(%edx,%ebx), %ebp
	subl	%ebp, %ecx
	jmp	L761
L790:
	sall	$8, %edx
	jmp	L763
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__Z15InitHornetStings
	.def	__Z15InitHornetStings;	.scl	2;	.type	32;	.endef
__Z15InitHornetStings:
LFB41:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movswl	16(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	_User(,%ebx,4), %eax
	movl	264(%eax), %eax
	andl	$16383, %eax
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	__Z19InitActorRepositions
	.cfi_endproc
LFE41:
	.p2align 4
	.globl	__Z12DoTeleRippers
	.def	__Z12DoTeleRippers;	.scl	2;	.type	32;	.endef
__Z12DoTeleRippers:
LFB42:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %ecx
	movswl	32(%esp), %edi
	imull	$44, %edi, %ebx
	leal	8(%ecx,%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	leal	4(%ecx,%ebx), %eax
	movl	%eax, 8(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$442, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%ebx,%ecx), %edx
	movl	8(%esp), %ecx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%edi, (%esp)
	call	__Z12Ripper2Hatchs
	addl	$12, %esp
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
LFE42:
	.p2align 4
	.globl	__Z18AimHitscanToTargetP12spritetypev7PiPsi
	.def	__Z18AimHitscanToTargetP12spritetypev7PiPsi;	.scl	2;	.type	32;	.endef
__Z18AimHitscanToTargetP12spritetypev7PiPsi:
LFB43:
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
	movl	_sprite, %esi
	movl	56(%esp), %edi
	movl	%edi, %eax
	subl	%esi, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	200(%eax), %ebx
	testl	%ebx, %ebx
	je	L806
	subl	%esi, %ebx
	sarl	$2, %ebx
	imull	$-1171354717, %ebx, %ebx
	movswl	%bx, %ebx
	imull	$44, %ebx, %eax
	movl	%ebx, %ebp
	addl	%eax, %esi
	movl	_User(,%ebx,4), %eax
	orl	$6, 68(%eax)
	movl	4(%esi), %edx
	movl	(%esi), %ecx
	subl	4(%edi), %edx
	subl	(%edi), %ecx
	call	@getangle@8
	movl	%eax, %edx
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movw	%dx, (%eax)
	movl	(%edi), %ecx
	movl	(%esi), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	subl	%eax, %ecx
	movl	4(%edi), %eax
	movl	4(%esi), %edi
	imull	%ecx, %ecx
	movl	%eax, 32(%esp)
	subl	%edi, %eax
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L796
	movswl	14(%esi), %ecx
	movzbl	21(%esi), %eax
	movl	8(%esi), %edx
	movswl	_tilesiz+2(,%ecx,4), %ebp
	testb	$-128, 12(%esi)
	je	L798
	cmpb	$64, %al
	je	L814
	movl	%eax, %esi
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	imull	%ebp, %esi
	sall	$8, %ecx
	leal	(%ecx,%esi,2), %esi
	subl	%esi, %edx
	movl	%edx, %ecx
	jmp	L801
	.p2align 4,,10
	.p2align 3
L798:
	cmpb	$64, %al
	je	L815
	movl	%eax, %esi
	imull	%ebp, %esi
	sall	$2, %esi
	subl	%esi, %edx
	movl	%edx, %ecx
L801:
	imull	%eax, %ebp
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	addl	%ecx, %ebp
	cmpl	%edx, %eax
	je	L804
L816:
	subl	%eax, %edx
	movl	28(%esp), %eax
	movl	60(%esp), %edi
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	addl	$512, %eax
	movl	%edx, 12(%esp)
	subl	(%edi), %ebp
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ebp
L813:
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	cltd
	movl	%eax, %ecx
	idivl	24(%esp)
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
L805:
	movl	60(%esp), %edi
	cmpl	%eax, 68(%esp)
	movl	$-1, %ebp
	cmovge	%ebx, %ebp
	movl	%ecx, (%edi)
L796:
	addl	$36, %esp
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
L814:
	.cfi_restore_state
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	movl	%ebp, %esi
	sall	$7, %esi
	sall	$8, %eax
	addl	%esi, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
L800:
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	sall	$6, %ebp
	addl	%ecx, %ebp
	cmpl	%edx, %eax
	jne	L816
L804:
	movl	32(%esp), %esi
	cmpl	%edi, %esi
	je	L807
	movl	%edi, %eax
	subl	%esi, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	subl	(%eax), %ebp
	movl	28(%esp), %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%ebp, %eax
	imull	%edx
	jmp	L813
	.p2align 4,,10
	.p2align 3
L815:
	movl	%ebp, %eax
	sall	$8, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
	jmp	L800
	.p2align 4,,10
	.p2align 3
L807:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L805
L806:
	movl	$-1, %ebp
	jmp	L796
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	.def	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh;	.scl	2;	.type	32;	.endef
__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh:
LFB44:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	56(%esp), %esi
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	64(%esp), %ebp
	movl	%esi, %eax
	subl	_sprite, %eax
	movl	%ebx, 36(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L818
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L818
	testb	$2, 22969(%eax)
	je	L829
L818:
	movzbl	68(%esp), %ecx
	movswl	0(%ebp), %edx
	movl	%esi, %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	L845
L817:
	movl	%ebx, %eax
	movl	40(%esp), %esi
	movl	36(%esp), %ebx
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L845:
	.cfi_restore_state
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	imull	$44, %eax, %edi
	movl	_User(,%eax,4), %eax
	addl	_sprite, %edi
	orl	$6, 68(%eax)
	movl	4(%edi), %edx
	movl	(%edi), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movw	%ax, 0(%ebp)
	movl	(%esi), %ebp
	movl	%eax, 20(%esp)
	movl	(%edi), %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%eax, 16(%esp)
	movl	4(%esi), %eax
	movl	4(%edi), %esi
	imull	%ecx, %ecx
	movl	%eax, 24(%esp)
	subl	%esi, %eax
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	testl	%eax, %eax
	je	L843
	movswl	14(%edi), %eax
	movl	8(%edi), %ecx
	movl	%eax, 32(%esp)
	movswl	_tilesiz+2(,%eax,4), %edx
	movl	%ecx, 28(%esp)
	movzbl	21(%edi), %eax
	testb	$-128, 12(%edi)
	jne	L846
	cmpb	$64, %al
	je	L847
	movl	%eax, %edi
	movl	28(%esp), %ecx
	imull	%edx, %edi
	sall	$2, %edi
	subl	%edi, %ecx
L824:
	imull	%edx, %eax
L826:
	addl	%eax, %ecx
	movl	16(%esp), %eax
	cmpl	%eax, %ebp
	je	L827
	subl	%ebp, %eax
	movl	60(%esp), %edi
	movl	%eax, 8(%esp)
	movl	%eax, %edx
	movl	20(%esp), %eax
	sarl	$31, %edx
	addl	$512, %eax
	movl	%edx, 12(%esp)
	subl	(%edi), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx
L844:
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	60(%esp), %edi
	movl	%eax, (%edi)
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L817
	.p2align 4,,10
	.p2align 3
L843:
	.cfi_restore_state
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L817
	.p2align 4,,10
	.p2align 3
L846:
	.cfi_restore_state
	cmpb	$64, %al
	je	L848
	movl	32(%esp), %ecx
	movl	%eax, %edi
	imull	%edx, %edi
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	leal	(%ecx,%edi,2), %edi
	movl	28(%esp), %ecx
	subl	%edi, %ecx
	jmp	L824
	.p2align 4,,10
	.p2align 3
L827:
	movl	24(%esp), %eax
	cmpl	%esi, %eax
	je	L828
	subl	%eax, %esi
	movl	60(%esp), %eax
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	subl	(%eax), %ecx
	movl	20(%esp), %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%ecx, %eax
	imull	%edx
	jmp	L844
	.p2align 4,,10
	.p2align 3
L828:
	movl	60(%esp), %eax
	movl	$0, (%eax)
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L817
	.p2align 4,,10
	.p2align 3
L847:
	.cfi_restore_state
	movl	28(%esp), %ecx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%eax, %ecx
L823:
	movl	%edx, %eax
	sall	$6, %eax
	jmp	L826
	.p2align 4,,10
	.p2align 3
L848:
	movl	32(%esp), %eax
	movsbl	_picanm+2(%eax,%eax,4), %ecx
	movl	%edx, %eax
	sall	$7, %eax
	sall	$8, %ecx
	addl	%ecx, %eax
	movl	28(%esp), %ecx
	subl	%eax, %ecx
	jmp	L823
L829:
	.cfi_restore 7
	movl	$-1, %ebx
	jmp	L817
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi
	.def	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi;	.scl	2;	.type	32;	.endef
__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movl	52(%esp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	(%esi), %ebp
	movl	4(%ebx), %edx
	movl	%eax, 16(%esp)
	movl	(%ebx), %edi
	movl	4(%esi), %eax
	movl	%ebp, %ecx
	movl	%edx, 24(%esp)
	subl	%edi, %ecx
	movl	%eax, 20(%esp)
	subl	%edx, %eax
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%eax, %ecx
	call	@ksqrt@4
	testl	%eax, %eax
	je	L849
	movl	8(%ebx), %edx
	leal	5120(%edx), %ecx
	testb	$-128, 12(%ebx)
	je	L854
	movzbl	21(%ebx), %eax
	movswl	14(%ebx), %ecx
	movswl	_tilesiz+2(,%ecx,4), %ebx
	cmpb	$64, %al
	je	L863
	imull	%ebx, %eax
	addl	%eax, %eax
L853:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	subl	%ecx, %eax
	leal	5120(%edx,%eax), %ecx
L854:
	movl	8(%esi), %ebx
	cmpl	%edi, %ebp
	jne	L864
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	cmpl	%edx, %eax
	jne	L865
	movl	56(%esp), %eax
	movl	$0, (%eax)
L849:
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
L864:
	.cfi_restore_state
	movzwl	16(%esp), %eax
	subl	%ebp, %edi
	subl	%ebx, %ecx
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	addw	$512, %ax
	movl	%edi, 12(%esp)
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx
L862:
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.5
	movl	56(%esp), %edi
	movl	%eax, (%edi)
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
L865:
	.cfi_restore_state
	subl	%eax, %edx
	movl	16(%esp), %eax
	subl	%ebx, %ecx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	movswl	_sintable(%eax,%eax), %edx
	movl	%ecx, %eax
	imull	%edx
	jmp	L862
	.p2align 4,,10
	.p2align 3
L863:
	movl	%ebx, %eax
	sall	$7, %eax
	jmp	L853
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0
	.def	__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0;	.scl	2;	.type	32;	.endef
__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0:
LFB47:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movswl	%dx, %edx
	movl	%ebx, 56(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ecx, %eax
	movl	%esi, 60(%esp)
	movswl	348(%ebx), %ecx
	.cfi_offset 6, -16
	movl	_User(,%ecx,4), %esi
	leal	36(%esp), %ecx
	movl	%edx, (%esp)
	movl	%ecx, 16(%esp)
	movl	96(%esp), %ecx
	movl	76(%esp), %edx
	movl	%esi, 28(%esp)
	movl	%ecx, 12(%esp)
	movl	92(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	88(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	80(%esp), %ecx
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	52(%esp), %esi
	testw	%si, %si
	js	L866
	movl	48(%esp), %eax
	movswl	50(%esp), %edx
	notl	%eax
	testl	$-2147450880, %eax
	je	L889
L868:
	testw	%dx, %dx
	js	L869
	movl	%edx, %eax
	movl	%edi, 64(%esp)
	.cfi_offset 7, -12
	movl	44(%esp), %edi
	sall	$5, %eax
	addl	_wall, %eax
	movl	%ebp, 68(%esp)
	movswl	12(%eax), %ecx
	movl	%edi, 32(%esp)
	testw	%cx, %cx
	.cfi_offset 5, -8
	js	L870
	movl	_sector, %ebp
	leal	(%ecx,%ecx,4), %ecx
	testb	$1, 12(%ebp,%ecx,8)
	jne	L890
L870:
	movl	40(%esp), %ecx
	movl	36(%esp), %ebp
	cmpw	$307, 26(%eax)
	je	L891
	movl	32(%esp), %edi
	movl	%ecx, (%esp)
	movswl	%si, %eax
	movl	%ebp, %ecx
	movl	%edi, 4(%esp)
	call	__Z9QueueHolessiii.isra.0
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
L869:
	movswl	48(%esp), %eax
	testw	%ax, %ax
	js	L872
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	cmpw	$257, 38(%esi)
	je	L892
L873:
	testb	$32, 43(%esi)
	jne	L893
	movl	44(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	40(%esp), %edx
	movl	%edx, 12(%esp)
	movl	36(%esp), %edx
	movl	%edx, 8(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L866
	testb	$16, 12(%esi)
	je	L872
	cmpw	$0, 38(%esi)
	jne	L875
	cmpw	$0, 40(%esi)
	jne	L875
	.p2align 4
	.p2align 3
L872:
	movswl	84(%esp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 24(%esp)
	movl	44(%esp), %eax
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	movl	%eax, 16(%esp)
	movl	36(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	50(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	52(%esp), %eax
	movl	%eax, 4(%esp)
	call	__Z18SpawnShotgunSparksP12PLAYERstructssiiis
	movl	%eax, %esi
	movzwl	48(%esp), %eax
	cmpw	$16383, %ax
	ja	L866
	movswl	%ax, %ebx
	movl	$_StatDamageList+40, %ecx
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L877
	.p2align 4
	.p2align 4,,10
	.p2align 3
L876:
	addl	$2, %eax
	cmpl	%eax, %ecx
	je	L866
L877:
	cmpw	(%eax), %dx
	jne	L876
	movswl	%si, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	__Z8DoDamagess
L866:
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L890:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpl	%edi, 4(%ebp,%ecx,8)
	jle	L870
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L866
	.p2align 4,,10
	.p2align 3
L875:
	movswl	48(%esp), %eax
	call	__Z15ShootableSwitchs
	jmp	L872
	.p2align 4,,10
	.p2align 3
L893:
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	movl	56(%esp), %ebx
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L889:
	.cfi_restore_state
	movl	%edi, 64(%esp)
	movswl	%si, %eax
	.cfi_offset 7, -12
	movl	_sector, %edi
	leal	(%eax,%eax,4), %eax
	movl	44(%esp), %ecx
	movl	%ebp, 68(%esp)
	.cfi_offset 5, -8
	leal	(%edi,%eax,8), %ebp
	movl	%ecx, %eax
	subl	4(%ebp), %eax
	movl	%eax, %edi
	negl	%edi
	cmovns	%edi, %eax
	cmpl	$256, %eax
	jg	L886
	addl	$4096, %ecx
	testb	$1, 12(%ebp)
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	%ecx, 44(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	je	L868
	jmp	L866
	.p2align 4,,10
	.p2align 3
L892:
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	jne	L866
	movswl	48(%esp), %eax
	jmp	L873
	.p2align 4,,10
	.p2align 3
L891:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	28(%esp), %ebx
	movswl	82(%ebx), %edx
	movl	32(%esp), %ebx
	movl	%edx, 8(%esp)
	movswl	84(%esp), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	movl	%ebp, %edx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	64(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L866
	.p2align 4,,10
	.p2align 3
L886:
	.cfi_restore_state
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L868
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z11InitShotgunP12PLAYERstruct
	.def	__Z11InitShotgunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11InitShotgunP12PLAYERstruct:
LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %edi
	movl	8(%ebp), %eax
	movsbl	273(%edi), %edx
	movl	%edi, 32(%esp)
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	8(%ebp), %eax
	movl	$12, 4(%esp)
	movl	8(%ebp), %edx
	leal	4(%eax), %ecx
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	$12, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movw	%ax, 282(%edi)
	movl	8(%ebp), %eax
	movzbl	24094(%eax), %eax
	testb	%al, %al
	je	L895
	movl	8(%ebp), %edi
	cmpb	$1, 24093(%edi)
	je	L963
L895:
	movl	8(%ebp), %eax
	movl	8(%ebp), %edi
	movl	(%eax), %eax
	movzwl	268(%edi), %ebx
	movl	%eax, 76(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 72(%esp)
	movl	8(%ebp), %eax
	movl	388(%eax), %eax
	addl	8(%edi), %eax
	movl	%eax, 68(%esp)
	movl	352(%edi), %edi
	movl	%eax, 92(%esp)
	movl	$64, %eax
	movw	%ax, 90(%esp)
	leal	90(%esp), %eax
	movl	%eax, 8(%esp)
	leal	92(%esp), %eax
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	movl	%edi, 40(%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	cmpl	$-1, %eax
	je	L896
	movl	92(%esp), %eax
	movl	%eax, 56(%esp)
	movzwl	90(%esp), %eax
	movw	%ax, 52(%esp)
L897:
	movswl	%bx, %eax
	movl	$12, %esi
	movl	%eax, 60(%esp)
	movl	56(%esp), %eax
	movw	%si, 66(%esp)
	addl	$34559, %eax
	movl	%eax, 36(%esp)
	movzwl	52(%esp), %eax
	subl	$30, %eax
	movw	%ax, 64(%esp)
	.p2align 4
	.p2align 3
L923:
	movl	_krandcount, %eax
	leal	2(%eax), %ebx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %esi
	movzwl	%si, %esi
	leal	(%esi,%esi,4), %eax
	leal	1(%esi,%eax,4), %ecx
	movl	8(%ebp), %eax
	movzwl	%cx, %ecx
	cmpb	$0, 24093(%eax)
	jne	L900
	cmpl	$65535, %esi
	je	L901
	movl	$-268374015, %eax
	sall	$14, %esi
	movl	%ebx, _krandcount
	mull	%esi
	movl	56(%esp), %eax
	movl	%ecx, _randomseed
	shrl	$15, %edx
	leal	-11520(%eax,%edx), %eax
	movl	$29, %edx
	movl	%eax, 84(%esp)
	cmpl	$65535, %ecx
	je	L902
L924:
	sall	$14, %ecx
	movl	%ecx, %eax
	movl	$-268374015, %ecx
	mull	%ecx
	shrl	$25, %edx
L902:
	movzwl	52(%esp), %eax
	leal	-15(%eax,%edx), %edi
	andw	$2047, %di
L903:
	leal	512(%edi), %eax
	movl	68(%esp), %ecx
	movl	72(%esp), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %esi
	movzwl	%di, %eax
	movswl	_sintable(%eax,%eax), %ebx
	leal	96(%esp), %eax
	movl	%eax, 16(%esp)
	movl	84(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	76(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	112(%esp), %eax
	movw	%ax, 80(%esp)
	testw	%ax, %ax
	js	L906
	movl	108(%esp), %eax
	movswl	110(%esp), %edx
	notl	%eax
	testl	$-2147450880, %eax
	je	L964
L907:
	testw	%dx, %dx
	js	L910
	movl	%edx, %eax
	movl	104(%esp), %ecx
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %ebx
	movl	%ecx, 84(%esp)
	testw	%bx, %bx
	js	L911
	leal	(%ebx,%ebx,4), %esi
	movl	_sector, %ebx
	leal	(%ebx,%esi,8), %ebx
	testb	$1, 12(%ebx)
	je	L911
	cmpl	%ecx, 4(%ebx)
	jg	L906
L911:
	movl	100(%esp), %esi
	movl	96(%esp), %ebx
	cmpw	$307, 26(%eax)
	je	L965
	movl	84(%esp), %ecx
	movswl	80(%esp), %eax
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	call	__Z9QueueHolessiii.isra.0
L910:
	movswl	108(%esp), %eax
	testw	%ax, %ax
	js	L913
	imull	$44, %eax, %ebx
	movl	_sprite, %ecx
	movl	_User(,%eax,4), %esi
	addl	%ecx, %ebx
	testl	%esi, %esi
	je	L915
	cmpw	$2540, 82(%esi)
	je	L966
L915:
	cmpw	$257, 38(%ebx)
	je	L967
L918:
	testb	$32, 43(%ebx)
	jne	L968
	movl	104(%esp), %edx
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	$2147, 20(%esp)
	movl	%edx, 16(%esp)
	movl	100(%esp), %edx
	movl	%edx, 12(%esp)
	movl	96(%esp), %edx
	movl	%edx, 8(%esp)
	movl	352(%eax), %eax
	movl	%eax, (%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L906
	testb	$16, 12(%ebx)
	je	L913
	cmpw	$0, 38(%ebx)
	jne	L920
	cmpw	$0, 40(%ebx)
	jne	L920
	.p2align 4
	.p2align 3
L913:
	movswl	%di, %eax
	movl	%eax, 24(%esp)
	movl	104(%esp), %eax
	movl	%eax, 20(%esp)
	movl	100(%esp), %eax
	movl	%eax, 16(%esp)
	movl	96(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	110(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	112(%esp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z18SpawnShotgunSparksP12PLAYERstructssiiis
	movswl	108(%esp), %ebx
	movl	%eax, %esi
	cmpw	$16383, %bx
	ja	L906
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	$_StatDamageList+40, %ecx
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L922
	.p2align 4
	.p2align 4,,10
	.p2align 3
L921:
	addl	$2, %eax
	cmpl	%eax, %ecx
	je	L906
L922:
	cmpw	(%eax), %dx
	jne	L921
	movswl	%si, %esi
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	call	__Z8DoDamagess
	.p2align 4
	.p2align 3
L906:
	subw	$1, 66(%esp)
	jne	L923
	movl	8(%ebp), %eax
	movl	8(%ebp), %edi
	xorl	%edx, %edx
	orl	$1024, 22968(%eax)
	orl	$6, 22972(%eax)
	movl	$5242892, %eax
	movl	%eax, 312(%edi)
	xorl	%eax, %eax
	movl	%edx, 316(%edi)
	addl	$116, %esp
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
	movswl	108(%esp), %eax
	call	__Z15ShootableSwitchs
	jmp	L913
	.p2align 4,,10
	.p2align 3
L900:
	cmpl	$65535, %esi
	je	L904
	sall	$14, %esi
	movl	$-1878881787, %eax
	movl	%ebx, _krandcount
	mull	%esi
	movl	56(%esp), %eax
	movl	%ecx, _randomseed
	subl	%edx, %esi
	shrl	%esi
	addl	%esi, %edx
	shrl	$14, %edx
	leal	-16640(%eax,%edx), %eax
	movl	$69, %edx
	movl	%eax, 84(%esp)
	cmpl	$65535, %ecx
	je	L905
L925:
	sall	$14, %ecx
	movl	%ecx, %eax
	movl	$587211553, %ecx
	mull	%ecx
	shrl	$21, %edx
L905:
	addw	64(%esp), %dx
	movl	%edx, %edi
	andw	$2047, %di
	jmp	L903
	.p2align 4,,10
	.p2align 3
L904:
	movl	36(%esp), %eax
	movl	%ebx, _krandcount
	movl	$65516, _randomseed
	movl	%eax, 84(%esp)
	jmp	L925
	.p2align 4,,10
	.p2align 3
L901:
	movl	56(%esp), %eax
	movl	%ebx, _krandcount
	movl	$65516, _randomseed
	addl	$19199, %eax
	movl	%eax, 84(%esp)
	jmp	L924
	.p2align 4,,10
	.p2align 3
L968:
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	jmp	L906
	.p2align 4,,10
	.p2align 3
L964:
	movswl	80(%esp), %ecx
	movl	104(%esp), %eax
	movl	%ecx, 28(%esp)
	movl	%eax, 44(%esp)
	leal	(%ecx,%ecx,4), %eax
	movl	_sector, %ecx
	leal	(%ecx,%eax,8), %ecx
	movl	44(%esp), %eax
	subl	4(%ecx), %eax
	movl	%ecx, 48(%esp)
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	$256, %eax
	jg	L908
	movl	44(%esp), %eax
	movl	48(%esp), %ecx
	addl	$4096, %eax
	movl	%eax, 104(%esp)
	testb	$1, 12(%ecx)
	jne	L906
	testb	$3, 39(%ecx)
	je	L907
	leal	104(%esp), %eax
	movl	%eax, 12(%esp)
	leal	100(%esp), %eax
	movl	%eax, 8(%esp)
	leal	96(%esp), %eax
	movl	%eax, 4(%esp)
	leal	112(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13WarpToSurfacePsPiS0_S0_
L962:
	movl	84(%esp), %eax
	movswl	112(%esp), %edx
	movl	%ebx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	96(%esp), %ecx
	movl	%eax, 20(%esp)
	movswl	%di, %eax
	movl	%eax, 8(%esp)
	movl	104(%esp), %eax
	movl	%eax, 4(%esp)
	movl	100(%esp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	call	__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0
	jmp	L906
	.p2align 4,,10
	.p2align 3
L967:
	movl	%eax, 8(%esp)
	movl	$2, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	jne	L906
	movswl	108(%esp), %eax
	jmp	L918
	.p2align 4,,10
	.p2align 3
L965:
	movl	32(%esp), %ecx
	movswl	82(%ecx), %edx
	movl	%esi, %ecx
	movl	%edx, 8(%esp)
	movswl	%di, %edx
	movl	84(%esp), %edi
	movl	%edx, 4(%esp)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L906
	.p2align 4,,10
	.p2align 3
L908:
	movl	48(%esp), %ecx
	movl	44(%esp), %eax
	subl	8(%ecx), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovns	%ecx, %eax
	cmpl	$256, %eax
	jg	L907
	movl	48(%esp), %ecx
	movzwl	38(%ecx), %eax
	testb	$12, %ah
	je	L907
	cmpb	$0, _Prediction
	jne	L909
	movl	28(%esp), %eax
	movl	44(%esp), %ecx
	movl	100(%esp), %edx
	movl	%eax, (%esp)
	movl	96(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	movswl	112(%esp), %eax
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	38(%eax), %eax
L909:
	testb	$-128, %al
	je	L906
	leal	104(%esp), %eax
	movl	%eax, 12(%esp)
	leal	100(%esp), %eax
	movl	%eax, 8(%esp)
	leal	96(%esp), %eax
	movl	%eax, 4(%esp)
	leal	112(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16WarpToUnderwaterPsPiS0_S0_
	jmp	L962
	.p2align 4,,10
	.p2align 3
L966:
	movl	40(%esp), %eax
	leal	8(%eax), %edx
	movl	$-1171354717, %eax
	movl	%edx, 80(%esp)
	subl	%ecx, %edx
	mull	%edx
	movl	40(%esp), %eax
	addl	$4, %eax
	shrl	$5, %edx
	movl	%eax, 84(%esp)
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	subl	%ecx, %edx
	movl	84(%esp), %ecx
	mull	%edx
	movl	80(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%eax, (%esp)
	movl	$416, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	108(%esp), %eax
	cmpw	$0, 216(%esi)
	jg	L915
	movl	$240, %edx
	movw	%dx, 216(%esi)
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L915
	movl	$0, 76(%edx)
	movl	$_s_TrashCanPain, 24(%edx)
	movl	$_s_TrashCanPain, 16(%edx)
	movswl	_s_TrashCanPain, %edx
	leal	_picanm(%edx,%edx,4), %esi
	movzbl	3(%esi), %edx
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L915
	andl	$63, %edx
	movb	%dl, 3(%esi)
	jmp	L915
	.p2align 4,,10
	.p2align 3
L896:
	movl	8(%ebp), %eax
	movl	288(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$2000, %edx, %eax
	movl	%eax, 56(%esp)
	movl	%eax, 92(%esp)
	movl	8(%ebp), %eax
	movl	300(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	shrl	$16, %eax
	movl	%eax, 52(%esp)
	jmp	L897
L963:
	subl	$1, %eax
	movb	%al, 24094(%edi)
	jmp	L895
	.cfi_endproc
LFE49:
	.section .rdata,"dr"
	.align 32
__ZZ15InitZillaRocketsE2mp:
	.long	3600
	.long	400
	.word	512
	.space 2
	.long	5400
	.long	400
	.word	512
	.space 2
	.long	6600
	.long	400
	.word	512
	.space 2
	.long	3600
	.long	400
	.word	-512
	.space 2
	.long	5400
	.long	400
	.word	-512
	.space 2
	.long	6600
	.long	400
	.word	-512
	.space 2
	.align 4
__ZZ13InitSerpSpellsE9delta_ang:
	.word	-10
	.word	10
	.align 4
__ZZ8InitStarP12PLAYERstructE4dang:
	.word	-12
	.word	12
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
	.def	__Z14SpriteOverlapZssi;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPickTargetP12spritetypev7jh;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z6DoStars;	.scl	2;	.type	32;	.endef
	.def	__Z13MissileSetPossPFisEi;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z11DoBloodWorms;	.scl	2;	.type	32;	.endef
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
	.def	__Z12DoLaserStarts;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z11DoRailStarts;	.scl	2;	.type	32;	.endef
	.def	__Z17TestMissileSetPossPFisEii;	.scl	2;	.type	32;	.endef
	.def	__Z8DoRockets;	.scl	2;	.type	32;	.endef
	.def	__Z7DoMicros;	.scl	2;	.type	32;	.endef
	.def	__Z13DoMirvMissiles;	.scl	2;	.type	32;	.endef
	.def	__Z13DoBoltThinMans;	.scl	2;	.type	32;	.endef
	.def	_clipinsideboxline;	.scl	2;	.type	32;	.endef
	.def	__Z13SpriteOverlapss;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z12Ripper2Hatchs;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.5;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z9QueueHolessiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15BulletHitSpriteP12spritetypev7siiis;	.scl	2;	.type	32;	.endef
	.def	__Z18SpawnShotgunSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z15ShootableSwitchs;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z13WarpToSurfacePsPiS0_S0_;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnSplashXYiiis.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z16WarpToUnderwaterPsPiS0_S0_;	.scl	2;	.type	32;	.endef
