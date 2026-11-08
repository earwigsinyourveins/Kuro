	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z20InitTracerAutoTurretssiii
	.def	__Z20InitTracerAutoTurretssiii;	.scl	2;	.type	32;	.endef
__Z20InitTracerAutoTurretssiii:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_Tracer, %ecx
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
	movl	_User(,%eax,4), %edi
	movl	140(%edi), %eax
	movl	$1200, 20(%esp)
	movswl	28(%eax), %edx
	movl	%edx, 16(%esp)
	movl	8(%eax), %edx
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
	movl	_sprite, %ebx
	movl	$-1171354717, %edx
	movswl	%ax, %ebp
	imull	$44, %ebp, %ecx
	movl	_User(,%ebp,4), %esi
	addl	%ebx, %ecx
	leal	40(%ecx), %eax
	subl	%ebx, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ecx)
	cmpw	$0, 52(%esp)
	js	L2
	movswl	52(%esp), %eax
	movl	%ebp, %edx
	movl	%ecx, 24(%esp)
	call	__Z8SetOwnerss
	movl	_sprite, %ebx
	movl	24(%esp), %ecx
L2:
	leal	21(%ecx), %edx
	movl	$-1171354717, %ebp
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	%ebx, %edx
	movb	$10, 21(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%ebx, %edx
	movb	$10, 20(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%ebx, %edx
	movb	$-40, 16(%ecx)
	movl	%edx, %eax
	mull	%ebp
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%ebx, %edx
	movw	%ax, 36(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	movb	$2, 18(%ecx)
	movzbl	273(%edi), %eax
	subl	%ebx, %edx
	movl	$50, 188(%esi)
	movb	%al, 273(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	56(%esp), %eax
	movl	$16777472, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ecx)
	movl	%eax, 152(%esi)
	movl	60(%esp), %eax
	movl	%eax, 156(%esi)
	movl	64(%esp), %eax
	movl	%eax, 160(%esi)
	movswl	24(%ecx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L3
	orl	$1073741824, 68(%esi)
L3:
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
LFE0:
	.p2align 4
	.globl	__Z13InitSkelSpells
	.def	__Z13InitSkelSpells;	.scl	2;	.type	32;	.endef
__Z13InitSkelSpells:
LFB1:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	_sprite, %ecx
	movswl	68(%esp), %ebp
	imull	$44, %ebp, %ebx
	movl	_User(,%ebp,4), %edi
	addl	%ecx, %ebx
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 28(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	movl	$113, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	200(%edi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	%eax, 40(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movw	%cx, 28(%ebx)
	movswl	14(%ebx), %ecx
	movl	%eax, 24(%esp)
	movl	4(%ebx), %eax
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%ecx,4), %ecx
	movl	%eax, 28(%esp)
	movzbl	21(%ebx), %eax
	cmpb	$64, %al
	je	L23
	imull	%ecx, %eax
	leal	(%eax,%eax), %ecx
L11:
	movl	$850, 20(%esp)
	movl	200(%edi), %eax
	movl	%edx, %esi
	movl	$2026, %edx
	subl	%ecx, %esi
	movl	24(%esp), %ecx
	movswl	28(%eax), %eax
	movl	%esi, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	$_s_Electro, %ecx
	movl	%eax, 16(%esp)
	movl	28(%esp), %eax
	movl	%esi, 44(%esp)
	movl	$-1171354717, %esi
	movl	%eax, 8(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edx
	movl	_User(,%edx,4), %eax
	imull	$44, %edx, %ebx
	movl	%edx, 36(%esp)
	addl	_sprite, %ebx
	movl	%eax, 32(%esp)
	movl	%ebp, %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	20(%ebx), %edx
	leal	36(%ebx), %ecx
	subl	%ebp, %edx
	subl	%ebp, %ecx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	subb	$20, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	subb	$20, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%esi
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	28(%ebx), %edx
	subl	%ebp, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	40(%esp), %edx
	movw	%dx, 28(%ebx)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$16, 18(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	200(%edi), %edx
	movl	(%edx), %esi
	subl	24(%esp), %esi
	movl	%esi, %eax
	movl	4(%edx), %edi
	negl	%eax
	cmovs	%esi, %eax
	subl	28(%esp), %edi
	movl	%edi, %esi
	negl	%esi
	cmovs	%edi, %esi
	cmpl	%esi, %eax
	leal	(%eax,%esi), %edi
	cmovg	%esi, %eax
	sarl	%eax
	subl	%eax, %edi
	movl	%edi, 24(%esp)
	je	L12
	movswl	32(%ebx), %eax
	movswl	14(%edx), %edi
	movl	8(%edx), %ebp
	movl	%eax, 28(%esp)
	movswl	_tilesiz+2(,%edi,4), %esi
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L13
	cmpb	$64, %al
	je	L24
	movl	%eax, %edx
	movsbl	_picanm+2(%edi,%edi,4), %edi
	imull	%esi, %edx
	sall	$8, %edi
	leal	(%edi,%edx,2), %edi
	movl	%ebp, %edx
	subl	%edi, %edx
L16:
	imull	%eax, %esi
L18:
	leal	(%esi,%edx), %eax
	subl	44(%esp), %eax
	addl	$1, _spritechanged(,%ecx,4)
	imull	28(%esp), %eax
	cltd
	idivl	24(%esp)
	movw	%ax, 36(%ebx)
L12:
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movl	32(%esp), %edi
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
	movl	36(%esp), %edi
	movl	$400, 8(%esp)
	movl	%edi, (%esp)
	movl	$__Z9DoElectros, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	addl	$48, %esp
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
L13:
	.cfi_restore_state
	cmpb	$64, %al
	je	L25
	movl	%eax, %edi
	movl	%ebp, %edx
	imull	%esi, %edi
	sall	$2, %edi
	subl	%edi, %edx
	jmp	L16
	.p2align 4,,10
	.p2align 3
L23:
	sall	$7, %ecx
	jmp	L11
	.p2align 4,,10
	.p2align 3
L24:
	movsbl	_picanm+2(%edi,%edi,4), %edx
	movl	%esi, %eax
	sall	$7, %eax
	sall	$8, %edx
	addl	%edx, %eax
	movl	%ebp, %edx
	subl	%eax, %edx
L15:
	sall	$6, %esi
	jmp	L18
	.p2align 4,,10
	.p2align 3
L25:
	movl	%esi, %eax
	movl	%ebp, %edx
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L15
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z11DoCoolgDrips
	.def	__Z11DoCoolgDrips;	.scl	2;	.type	32;	.endef
__Z11DoCoolgDrips:
LFB3:
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
	movswl	36(%esp), %eax
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %ebx
	movl	%eax, 8(%esp)
	movzwl	176(%edi), %eax
	addl	%ebp, %ebx
	leal	220(%eax), %ecx
	leal	8(%ebx), %eax
	movl	%eax, %esi
	movl	%eax, 12(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %esi
	movw	%cx, 176(%edi)
	movswl	%cx, %ecx
	mull	%esi
	movl	%edx, %esi
	shrl	$5, %esi
	addl	$1, _spritechanged(,%esi,4)
	addl	8(%ebx), %ecx
	movl	%ecx, 8(%ebx)
	movswl	98(%edi), %edx
	movl	108(%edi), %eax
	subl	%edx, %eax
	cmpl	%ecx, %eax
	jl	L36
L27:
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
L36:
	.cfi_restore_state
	leal	20(%ebx), %edx
	addl	$1, _spritechanged(,%esi,4)
	subl	%ebp, %edx
	movl	%eax, 8(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 20(%ebx)
	mull	%edx
	movl	8(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$32, 21(%ebx)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L28
	movl	$0, 76(%eax)
	movl	$_s_GoreFloorSplash, 24(%eax)
	movl	$_s_GoreFloorSplash, 16(%eax)
	movswl	_s_GoreFloorSplash, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L28
	andl	$63, %eax
	movb	%al, 3(%edx)
L28:
	cmpb	$13, 262(%edi)
	jne	L27
	leal	4(%ebx), %ecx
	addl	$1, _spritechanged(,%esi,4)
	movl	$-1171354717, %esi
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	12(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$175, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L27
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__Z16InitFireballTraps
	.def	__Z16InitFireballTraps;	.scl	2;	.type	32;	.endef
__Z16InitFireballTraps:
LFB5:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %ecx
	movswl	48(%esp), %eax
	imull	$44, %eax, %ebx
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
	movl	$187, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	14(%ebx), %edi
	movzbl	21(%ebx), %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %esi
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%edi,4), %edi
	cmpb	$64, %al
	je	L41
	imull	%edi, %eax
	sall	$2, %eax
L39:
	movl	$750, 20(%esp)
	movswl	28(%ebx), %edi
	subl	%eax, %edx
	movl	$-1171354717, %ebp
	movl	%edx, 12(%esp)
	movl	$2035, %edx
	movl	%edi, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movswl	24(%ebx), %eax
	movl	$_s_Fireball, %ecx
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
	movl	24(%esp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	subb	$20, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	subb	$20, 21(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ecx, %edx
	movb	$8, 18(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movb	$8, 273(%edi)
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
	movl	%eax, 160(%edi)
	addl	$28, %esp
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
L41:
	.cfi_restore_state
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L39
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z13InitEnemyMines
	.def	__Z13InitEnemyMines;	.scl	2;	.type	32;	.endef
__Z13InitEnemyMines:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %ecx
	movswl	56(%esp), %eax
	imull	$44, %eax, %ebx
	movl	_User(,%eax,4), %edi
	movl	%eax, 24(%esp)
	movl	%edi, 32(%esp)
	movl	$-1171354717, %edi
	addl	%ecx, %ebx
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ecx, %edx
	leal	4(%ebx), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	$23, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_Mine, %ecx
	movl	$2223, %edx
	movl	$520, 20(%esp)
	movswl	28(%ebx), %eax
	movl	%eax, 16(%esp)
	movl	8(%ebx), %esi
	leal	-10240(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	24(%esp), %eax
	movl	%esi, %edx
	imull	$44, %esi, %ebx
	movl	%esi, 28(%esp)
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %esi
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	21(%ebx), %edx
	movl	32(%esp), %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movb	$32, 18(%ebx)
	movzbl	273(%ecx), %eax
	subl	%ebp, %edx
	movl	$200, 188(%esi)
	movb	%al, 273(%esi)
	xorl	%eax, %eax
	movw	%ax, 176(%esi)
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	movl	$83887360, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	andw	$-258, 12(%ebx)
	movl	_User(,%eax,4), %eax
	subl	%ebp, %edx
	movzbl	262(%eax), %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 17(%ebx)
	movl	_sector, %edx
	movb	%cl, 262(%esi)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L43
	orl	$1073741824, 68(%esi)
L43:
	movl	28(%esp), %eax
	movl	$300, 8(%esp)
	leal	28(%ebx), %edi
	movl	$-1171354717, %ebp
	movl	$__Z6DoMines, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	%edi, %edx
	subl	_sprite, %edx
	movswl	28(%ebx), %ecx
	movl	%edx, %eax
	mull	%ebp
	subl	$512, %ecx
	movl	28(%esp), %eax
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$300, 8(%esp)
	movl	$__Z6DoMines, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	subl	_sprite, %edi
	movswl	28(%ebx), %ecx
	movl	%edi, %eax
	mull	%ebp
	addl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$-5000, 160(%esi)
	movswl	28(%ebx), %eax
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
LFE6:
	.p2align 4
	.globl	__Z13InitCoolgFires
	.def	__Z13InitCoolgFires;	.scl	2;	.type	32;	.endef
__Z13InitCoolgFires:
LFB7:
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
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movswl	76(%esp), %edi
	movl	_User(,%edi,4), %eax
	imull	$44, %edi, %esi
	addl	_sprite, %esi
	movl	%eax, 24(%esp)
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%esi), %edx
	subl	(%esi), %ecx
	call	@getangle@8
	movl	_sprite, %ecx
	leal	28(%esi), %edx
	movl	%eax, %ebp
	subl	%ecx, %edx
	movl	%ebp, 28(%esp)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%esp), %edx
	movl	4(%esi), %ebp
	movw	%dx, 28(%esi)
	movl	(%esi), %edx
	movl	%ebp, 36(%esp)
	leal	8(%esi), %ebp
	movl	%edx, 40(%esp)
	movl	8(%esi), %edx
	subl	$4096, %edx
	movl	%edx, 44(%esp)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%esi), %edx
	movl	%edx, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%esi, %eax
	subl	%ecx, %eax
	movl	32(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	$85, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	%ebp, (%esp)
	movl	$1, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	44(%esp), %ecx
	movl	$400, 20(%esp)
	movl	40(%esp), %edx
	movl	200(%eax), %eax
	movswl	28(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	36(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	$2430, %edx
	movl	%eax, 16(%esp)
	movl	%ecx, 8(%esp)
	movswl	24(%esi), %eax
	movl	$_s_CoolgFire, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ecx
	movl	%edi, %eax
	movl	%ecx, %edx
	imull	$44, %ecx, %esi
	movl	_User(,%ecx,4), %ebp
	movl	%ecx, 48(%esp)
	addl	_sprite, %esi
	call	__Z8SetOwnerss
	movl	_sprite, %edi
	leal	40(%esi), %edx
	leal	36(%esi), %ecx
	movl	%ecx, 52(%esp)
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%edi, %edx
	movw	%ax, 40(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%edi, %edx
	movb	$18, 21(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%edi, %edx
	movb	$18, 20(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movzwl	28(%esp), %ecx
	subl	%edi, %edx
	movb	$-40, 16(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%esi)
	leal	28(%esi), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%edi, %edx
	movw	%cx, 28(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	%edi, %edx
	movb	$8, 18(%esi)
	movl	%edx, %eax
	movl	$67109888, 96(%ebp)
	mull	%ebx
	movl	24(%esp), %eax
	shrl	$5, %edx
	cmpw	$1580, 82(%eax)
	sete	%cl
	addl	$1, _spritechanged(,%edx,4)
	leal	25(%ecx,%ecx), %ecx
	movb	%cl, 17(%esi)
	movb	%cl, 262(%ebp)
	leal	8(%esi), %ecx
	movl	%ecx, %edx
	movl	%ecx, 32(%esp)
	leal	4(%esi), %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%ecx, %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	%esi, %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	$40, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$5, 4(%esp)
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
	movl	200(%eax), %eax
	movl	(%eax), %ebx
	subl	40(%esp), %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovs	%ebx, %edx
	movl	4(%eax), %ebx
	subl	36(%esp), %ebx
	movl	%ebx, %ecx
	negl	%ebx
	cmovs	%ecx, %ebx
	cmpl	%ebx, %edx
	leal	(%edx,%ebx), %ecx
	cmovg	%ebx, %edx
	sarl	%edx
	subl	%edx, %ecx
	movl	%ecx, 24(%esp)
	je	L50
	movswl	32(%esi), %edi
	movzbl	21(%eax), %ecx
	movl	8(%eax), %ebx
	movl	%edi, 32(%esp)
	movswl	14(%eax), %edi
	movswl	_tilesiz+2(,%edi,4), %edx
	testb	$-128, 12(%eax)
	je	L51
	cmpb	$64, %cl
	je	L62
	movl	%ecx, %eax
	movsbl	_picanm+2(%edi,%edi,4), %edi
	imull	%edx, %eax
	sall	$8, %edi
	leal	(%edi,%eax,2), %eax
	subl	%eax, %ebx
L54:
	imull	%edx, %ecx
L56:
	movl	52(%esp), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	(%ecx,%ebx), %eax
	subl	44(%esp), %eax
	imull	32(%esp), %eax
	cltd
	idivl	24(%esp)
	movw	%ax, 36(%esi)
L50:
	movswl	28(%esi), %eax
	movswl	32(%esi), %edx
	movl	48(%esp), %edi
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%esi), %eax
	movswl	32(%esi), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movswl	36(%esi), %eax
	movl	%eax, 160(%ebp)
	movl	28(%esp), %eax
	movswl	_sintable(%eax,%eax), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	$3, 16(%esp)
	imull	$728, %ecx, %ecx
	movl	$0, 12(%esp)
	movswl	98(%ebp), %eax
	imull	$728, %edx, %edx
	movl	%eax, 8(%esp)
	movswl	96(%ebp), %eax
	sarl	$14, %ecx
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	sarl	$14, %edx
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	addl	$56, %esp
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
L51:
	.cfi_restore_state
	cmpb	$64, %cl
	je	L63
	movl	%ecx, %eax
	imull	%edx, %eax
	sall	$2, %eax
	subl	%eax, %ebx
	jmp	L54
	.p2align 4,,10
	.p2align 3
L62:
	movsbl	_picanm+2(%edi,%edi,4), %ecx
	movl	%edx, %eax
	sall	$7, %eax
	sall	$8, %ecx
	addl	%ecx, %eax
	subl	%eax, %ebx
L53:
	movl	%edx, %ecx
	sall	$6, %ecx
	jmp	L56
	.p2align 4,,10
	.p2align 3
L63:
	movl	%edx, %eax
	sall	$8, %eax
	subl	%eax, %ebx
	jmp	L53
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z18HelpMissileLateralsi
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
__Z18HelpMissileLateralsi:
LFB8:
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
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movswl	56(%esp), %esi
	movl	60(%esp), %ecx
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %edi
	movzwl	32(%ebx), %eax
	leal	32(%ebx), %edx
	movl	%edx, 24(%esp)
	subl	_sprite, %edx
	movw	%ax, 34(%esp)
	movzbl	18(%ebx), %eax
	movb	%al, 33(%esp)
	movl	%edx, %eax
	mull	%ebp
	movswl	%cx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%ebx), %edx
	movw	%cx, 32(%ebx)
	leal	512(%edx), %ecx
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%eax, %ecx
	sarl	$14, %ecx
	movl	%ecx, 28(%esp)
	movswl	_sintable(%edx,%edx), %ecx
	imull	%eax, %ecx
	leal	18(%ebx), %eax
	movl	%eax, 20(%esp)
	subl	_sprite, %eax
	mull	%ebp
	movl	%esi, %eax
	sarl	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	movl	$1, 16(%esp)
	movl	28(%esp), %edx
	movl	$0, 12(%esp)
	movl	$4096, 8(%esp)
	movl	$4096, 4(%esp)
	movl	$0, (%esp)
	call	__Z12move_missilesiiiiiji
	movl	_sprite, %ecx
	movl	24(%esp), %edx
	movl	%eax, 264(%edi)
	movl	20(%esp), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	subl	%ecx, %esi
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	34(%esp), %edx
	movw	%dx, 32(%ebx)
	mull	%ebp
	movzbl	33(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ebx)
	movl	(%ebx), %eax
	movl	%eax, 56(%edi)
	movl	4(%ebx), %eax
	movl	%eax, 60(%edi)
	movl	8(%ebx), %eax
	movl	%eax, 64(%edi)
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
LFE8:
	.p2align 4
	.globl	__Z13InitCoolgDrips
	.def	__Z13InitCoolgDrips;	.scl	2;	.type	32;	.endef
__Z13InitCoolgDrips:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_CoolgDrip, %ecx
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
	movswl	48(%esp), %edi
	movl	$0, 20(%esp)
	imull	$44, %edi, %eax
	addl	_sprite, %eax
	movswl	28(%eax), %edx
	movl	%edx, 16(%esp)
	movl	8(%eax), %edx
	movl	%edx, 12(%esp)
	movl	4(%eax), %edx
	movl	%edx, 8(%esp)
	movl	(%eax), %edx
	movl	%edx, 4(%esp)
	movswl	24(%eax), %eax
	movl	$1720, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	_User(,%esi,4), %eax
	movl	%esi, %edx
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	%eax, 24(%esp)
	movl	%edi, %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	20(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$20, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movb	$20, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ebp, %edx
	movb	$-5, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$4, 18(%ebx)
	movl	$67109888, 96(%eax)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	%edi, (%esp)
	call	__Z17DoFindGroundPoints
	addl	$28, %esp
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
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z13GenerateDripss
	.def	__Z13GenerateDripss;	.scl	2;	.type	32;	.endef
__Z13GenerateDripss:
LFB10:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movswl	48(%esp), %edi
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	movl	%ebp, 40(%esp)
	movl	_User(,%edi,4), %ecx
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movzwl	216(%ecx), %eax
	subl	$6, %eax
	movw	%ax, 216(%ecx)
	testw	%ax, %ax
	jle	L83
L68:
	movl	%ebp, %eax
	movl	28(%esp), %ebx
	movl	36(%esp), %edi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L83:
	.cfi_restore_state
	imull	$44, %edi, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	addl	%eax, %ebx
	movl	_krandcount, %eax
	movzwl	38(%ebx), %edx
	leal	1(%eax), %ebp
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %esi
	leal	1(%eax,%esi,4), %esi
	movzwl	%si, %esi
	testw	%dx, %dx
	jne	L70
	movl	%esi, %edx
	sarl	$8, %edx
L71:
	movl	%ebp, _krandcount
	movl	%esi, _randomseed
	movw	%dx, 216(%ecx)
	testb	$-128, 42(%ebx)
	jne	L84
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_CoolgDrip, %ecx
	movl	$1720, %edx
	movl	%eax, 16(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$5, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ebp
	movl	_User(,%ebp,4), %eax
	movl	%ebp, %edx
	imull	$44, %ebp, %esi
	addl	_sprite, %esi
	movl	%eax, 24(%esp)
	movl	%edi, %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	20(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movb	$20, 20(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movb	$20, 21(%esi)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%esi), %edx
	subl	%ecx, %edx
	movb	$-10, 16(%esi)
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	movw	%ax, 36(%esi)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	movb	$4, 18(%esi)
	subl	%ecx, %edx
	movl	$67109888, 96(%eax)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	testb	$64, 42(%ebx)
	je	L74
	leal	17(%esi), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$13, 17(%esi)
	movb	$13, 262(%eax)
L74:
	movl	%edi, (%esp)
	call	__Z17DoFindGroundPoints
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L68
	.p2align 4,,10
	.p2align 3
L70:
	.cfi_restore_state
	movswl	%dx, %eax
	movl	$2, %edx
	movl	%eax, 24(%esp)
	cmpl	$65535, %esi
	je	L72
	movl	%esi, %eax
	movl	$-1073692671, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$28, %edx
L72:
	movl	24(%esp), %eax
	addl	%eax, %edx
	imull	$120, %edx, %edx
	jmp	L71
	.p2align 4,,10
	.p2align 3
L84:
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	28(%esp), %ebx
	movl	%edi, 48(%esp)
	movl	40(%esp), %ebp
	movl	36(%esp), %edi
	addl	$44, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z11SpawnBubbles
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	__Z11InitEelFires
	.def	__Z11InitEelFires;	.scl	2;	.type	32;	.endef
__Z11InitEelFires:
LFB13:
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
	movl	$_StatDamageList, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movswl	72(%esp), %eax
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movl	140(%eax), %eax
	movl	%eax, 36(%esp)
	.p2align 4
	.p2align 3
L96:
	movswl	(%esi), %eax
	movzwl	_headspritestat(%eax,%eax), %ebp
	cmpw	$-1, %bp
	je	L87
	movl	%esi, 28(%esp)
	movl	36(%esp), %edi
	jmp	L86
	.p2align 5
	.p2align 4,,10
	.p2align 3
L88:
	cmpw	$-1, %bp
	je	L106
L86:
	movswl	%bp, %edx
	movswl	%bp, %eax
	movzwl	_nextspritestat(%edx,%edx), %ebp
	cmpw	%ax, 72(%esp)
	je	L88
	imull	$44, %eax, %esi
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
	addl	_sprite, %esi
	cmpl	%esi, 200(%eax)
	jne	L88
	movl	_User(,%edx,4), %eax
	movl	8(%edi), %ebx
	movl	4(%edi), %ecx
	subl	8(%esi), %ebx
	movl	%eax, 16(%esp)
	subl	4(%esi), %ecx
	movl	(%edi), %eax
	subl	(%esi), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 40(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 44(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 48(%esp)
	cmpl	%ecx, %edx
	jge	L89
	leal	44(%esp), %ebx
	leal	40(%esp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	40(%esp), %edx
	movl	48(%esp), %eax
L89:
	cmpl	%eax, %edx
	jge	L90
	leal	40(%esp), %eax
	leal	48(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	40(%esp), %edx
	movl	48(%esp), %eax
L90:
	movl	%edx, %ecx
	addl	44(%esp), %eax
	movl	16(%esp), %ebx
	sarl	$4, %ecx
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%eax, %edx
	movl	8(%esp), %eax
	movl	188(%eax), %eax
	addl	188(%ebx), %eax
	cmpl	%edx, %eax
	jb	L88
	movl	(%edi), %eax
	movl	(%esi), %ebx
	movl	%eax, %edx
	movl	%eax, 16(%esp)
	subl	%ebx, %edx
	movl	%edx, %ecx
	negl	%ecx
	movl	%ecx, %eax
	movl	4(%edi), %ecx
	cmovs	%edx, %eax
	movl	4(%esi), %edx
	movzbl	18(%esi), %esi
	movl	%ecx, 20(%esp)
	subl	%edx, %ecx
	movl	%edx, 24(%esp)
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	movzbl	18(%edi), %ecx
	sall	$2, %esi
	cmpl	%edx, %eax
	leal	599(%esi,%ecx,4), %esi
	leal	(%eax,%edx), %ecx
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ecx
	cmpl	%ecx, %esi
	jl	L91
	subl	16(%esp), %ebx
	movl	24(%esp), %esi
	subl	20(%esp), %esi
	movl	%ebx, %ecx
	movl	%esi, %edx
	call	@getangle@8
	movswl	28(%edi), %edx
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovns	%ebx, %edx
	cmpl	$1024, %edx
	jle	L93
	leal	2048(%eax), %edx
	cmpw	$1025, %ax
	cmovl	%edx, %eax
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovl	%edx, %ecx
L93:
	subl	%ecx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	$149, %ax
	jbe	L107
L91:
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19InitActorRepositions
	cmpw	$-1, %bp
	jne	L86
	.p2align 4
	.p2align 3
L106:
	movl	28(%esp), %esi
L87:
	addl	$2, %esi
	cmpl	$_StatDamageList+40, %esi
	jne	L96
	addl	$52, %esp
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
L107:
	.cfi_restore_state
	leal	8(%edi), %esi
	movl	$-1171354717, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %ecx
	movl	$395, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	12(%esp), %eax
	movl	%eax, (%esp)
	call	__Z8DoDamagess
	jmp	L88
	.cfi_endproc
LFE13:
	.p2align 4
	.globl	__Z12InitBoltTraps
	.def	__Z12InitBoltTraps;	.scl	2;	.type	32;	.endef
__Z12InitBoltTraps:
LFB17:
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	_sprite, %ecx
	movswl	48(%esp), %eax
	imull	$44, %eax, %ebx
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
	movl	$11, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	14(%ebx), %edi
	movzbl	21(%ebx), %eax
	movl	(%ebx), %ecx
	movl	4(%ebx), %esi
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%edi,4), %edi
	cmpb	$64, %al
	je	L112
	imull	%edi, %eax
	sall	$2, %eax
L110:
	movl	$950, 20(%esp)
	movswl	28(%ebx), %edi
	subl	%eax, %edx
	movl	%edx, 12(%esp)
	movl	$2018, %edx
	movl	%edi, 16(%esp)
	movl	%esi, 8(%esp)
	movl	%ecx, 4(%esp)
	movswl	24(%ebx), %eax
	movl	$_s_Rocket, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	24(%esp), %eax
	movl	%esi, %edx
	movl	_User(,%esi,4), %edi
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	21(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ebp, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$5, %edx
	orw	$128, 12(%ebx)
	movw	%dx, 80(%edi)
	movl	$_sg_Rocket, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$200, 188(%edi)
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
	movl	%eax, 160(%edi)
	addl	$28, %esp
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
L112:
	.cfi_restore_state
	movl	%edi, %eax
	sall	$8, %eax
	jmp	L110
	.cfi_endproc
LFE17:
	.p2align 4
	.globl	__Z13InitSpearTraps
	.def	__Z13InitSpearTraps;	.scl	2;	.type	32;	.endef
__Z13InitSpearTraps:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movswl	52(%esp), %eax
	movl	%eax, 28(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movswl	14(%eax), %esi
	movl	%eax, %edi
	movl	(%eax), %ebp
	movl	4(%eax), %ebx
	movzbl	21(%edi), %edx
	movswl	_tilesiz+2(,%esi,4), %ecx
	movl	8(%eax), %eax
	testb	$-128, 12(%edi)
	je	L114
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	movl	%esi, 24(%esp)
	cmpb	$64, %dl
	je	L121
	imull	%ecx, %edx
	movl	24(%esp), %ecx
	movl	%eax, %esi
	addl	%edx, %edx
	addl	%edx, %ecx
	subl	%ecx, %esi
L116:
	subl	24(%esp), %edx
	addl	%edx, %eax
	jmp	L119
	.p2align 4,,10
	.p2align 3
L114:
	cmpb	$64, %dl
	je	L122
	imull	%ecx, %edx
	leal	0(,%edx,4), %ecx
L118:
	movl	%eax, %esi
	subl	%ecx, %esi
L119:
	movl	$750, 20(%esp)
	addl	%esi, %eax
	movswl	28(%edi), %edx
	movl	$_s_CrossBolt, %ecx
	sarl	%eax
	movl	%ebx, 8(%esp)
	movl	$-1171354717, %esi
	movl	%edx, 16(%esp)
	movl	$2230, %edx
	movl	%ebp, 4(%esp)
	movl	%eax, 12(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %ebp
	imull	$44, %eax, %ebx
	movl	%eax, 24(%esp)
	movl	%eax, %edx
	movl	28(%esp), %eax
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$16, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$26, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$-25, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	$5, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$_sg_CrossBolt, %edx
	movb	$16, 18(%ebx)
	movw	%ax, 80(%ebp)
	movl	24(%esp), %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movl	_sprite, %ecx
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
	leal	8(%edi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	4(%edi), %ecx
	movl	%edx, %eax
	mull	%esi
	movl	$2, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
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
L122:
	.cfi_restore_state
	sall	$8, %ecx
	jmp	L118
	.p2align 4,,10
	.p2align 3
L121:
	sall	$7, %ecx
	movl	%ecx, %edx
	leal	(%esi,%ecx), %ecx
	movl	%eax, %esi
	subl	%ecx, %esi
	jmp	L116
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z17InitSpriteGrenades
	.def	__Z17InitSpriteGrenades;	.scl	2;	.type	32;	.endef
__Z17InitSpriteGrenades:
LFB19:
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
	movswl	52(%esp), %ebp
	imull	$44, %ebp, %edi
	movl	_User(,%ebp,4), %eax
	movl	%eax, 28(%esp)
	addl	%ecx, %edi
	leal	8(%edi), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	leal	4(%edi), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	24(%esp), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$16, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	%esi, (%esp)
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_Grenade, %ecx
	movl	$2110, %edx
	movl	$900, 20(%esp)
	movswl	28(%edi), %eax
	movl	%eax, 16(%esp)
	movl	8(%edi), %esi
	leal	-10240(%esi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	$5, %ecx
	movl	$_sg_Grenade, %edx
	cwtl
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ebx
	movl	%eax, 24(%esp)
	addl	_sprite, %ebx
	movw	%cx, 80(%esi)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	28(%esp), %eax
	orl	$16777216, 68(%esi)
	cmpw	$1095, 82(%eax)
	je	L127
	movl	24(%esp), %edx
	movl	%ebp, %eax
	call	__Z8SetOwnerss
L125:
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	movl	$-1171354717, %ebp
	leal	28(%ebx), %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 21(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movb	$8, 18(%ebx)
	movzbl	273(%eax), %eax
	subl	%ecx, %edx
	movl	$200, 188(%esi)
	movb	%al, 273(%esi)
	xorl	%eax, %eax
	movw	%ax, 176(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	$50332416, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ecx, %edx
	orw	$1, 12(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movl	$-2000, %edx
	movw	%dx, 36(%ebx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movswl	32(%ebx), %edx
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%esi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movswl	28(%ebx), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%ebp
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	movl	24(%esp), %eax
	movl	$800, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	subl	_sprite, %edi
	movswl	28(%ebx), %ecx
	movl	%edi, %eax
	mull	%ebp
	subl	$512, %ecx
	movl	24(%esp), %eax
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	orl	$536870912, 68(%esi)
	movl	$400, 8(%esp)
	movl	$__Z9DoGrenades, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	andl	$-536870913, 68(%esi)
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
L127:
	.cfi_restore_state
	movswl	30(%edi), %eax
	movl	24(%esp), %edx
	call	__Z8SetOwnerss
	jmp	L125
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z9DoSuicides
	.def	__Z9DoSuicides;	.scl	2;	.type	32;	.endef
__Z9DoSuicides:
LFB20:
	.cfi_startproc
	movswl	4(%esp), %eax
	call	__Z10KillSprites
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z13DoDefaultStats
	.def	__Z13DoDefaultStats;	.scl	2;	.type	32;	.endef
__Z13DoDefaultStats:
LFB21:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movswl	12(%esp), %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movl	_User(,%eax,4), %ebx
	testw	$-1025, 26(%edx)
	je	L130
	movl	%eax, (%esp)
	call	_do_deletespritestat
	movl	(%esp), %eax
	xorl	%edx, %edx
	call	_do_insertsprite_at_headofstat
L130:
	testl	%ebx, %ebx
	je	L131
	andl	$-402653185, 68(%ebx)
L131:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	__Z13InitTracerUziP12PLAYERstruct
	.def	__Z13InitTracerUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13InitTracerUziP12PLAYERstruct:
LFB27:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	68(%esp), %esi
	movswl	268(%esi), %edx
	testw	%dx, %dx
	js	L140
	movl	%ebx, 48(%esp)
	movl	%edi, 56(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	348(%esi), %eax
	movl	8(%esi), %edi
	movl	288(%esi), %ecx
	movl	$-52428000, 44(%esp)
	movl	_User(,%eax,4), %ebp
	movl	4(%esi), %ebx
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	$100, %ecx
	sarl	$16, %eax
	subl	%eax, %ecx
	leal	(%ecx,%ecx,8), %eax
	movl	300(%esi), %ecx
	movl	%ebx, 8(%esp)
	leal	2048(%edi,%eax,8), %edi
	movl	$1200, 20(%esp)
	movl	%ecx, %eax
	movl	%edi, 12(%esp)
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	$_s_Tracer, %ecx
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	(%esi), %eax
	movl	%edx, (%esp)
	xorl	%edx, %edx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %edi
	movl	%ecx, 24(%esp)
	movl	%edi, 28(%esp)
	movl	$-1171354717, %edi
	addl	%eax, %ebx
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movswl	348(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$10, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$10, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	leal	36(%ebx), %eax
	movl	%eax, 40(%esp)
	subl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movb	$8, 18(%ebx)
	movzbl	273(%ebp), %eax
	movl	$50, 188(%edx)
	movb	%al, 273(%edx)
	movl	$50332416, 96(%edx)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
	movl	352(%esi), %ebp
	movzbl	18(%ebp), %eax
	leal	18(%ebp), %edx
	subl	%ecx, %edx
	movb	%al, 39(%esp)
	movl	%edx, %eax
	mull	%edi
	leal	28(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$0, 18(%ebp)
	movswl	28(%ebx), %ebp
	movl	%edx, %eax
	mull	%edi
	addl	$512, %ebp
	andl	$2047, %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bp, 28(%ebx)
	testb	$8, 22970(%esi)
	je	L143
	cmpb	$0, 24092(%esi)
	je	L162
L143:
	movl	24(%esp), %eax
	movl	$800, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
L144:
	movl	32(%esp), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %edi
	movl	%edx, %eax
	movswl	28(%ebx), %ecx
	mull	%edi
	movl	24(%esp), %eax
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$800, 8(%esp)
	movl	$__Z13DoTracerStarts, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	_sprite, %ebp
	testb	%al, %al
	jne	L163
	movl	288(%esi), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movl	%eax, %edx
	movl	$100, %eax
	subl	%edx, %eax
	movzwl	32(%ebx), %edx
	testw	%dx, %dx
	leal	7(%edx), %ecx
	cmovns	%edx, %ecx
	movl	40(%esp), %edx
	sarw	$3, %cx
	subl	%ebp, %edx
	movswl	%cx, %ecx
	imull	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	movl	352(%esi), %ecx
	leal	18(%ecx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movzbl	39(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movl	24(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	352(%esi), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movl	_randomseed, %eax
	movswl	28(%ebx), %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$29, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L147
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$25, %edx
L147:
	leal	-15(%ecx,%edx), %ecx
	movl	$-1171354717, %eax
	movl	32(%esp), %edx
	movl	28(%esp), %edi
	subl	_sprite, %edx
	andl	$2047, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%ebx), %edx
	movw	%cx, 28(%ebx)
	addl	$512, %ecx
	andl	$2047, %ecx
	movswl	_sintable(%ecx,%ecx), %eax
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
	testb	$2, 22970(%esi)
	je	L164
L148:
	movl	28(%esp), %eax
	orl	$1073741824, 68(%eax)
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
L140:
	movl	52(%esp), %esi
	xorl	%eax, %eax
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L164:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	jne	L148
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L162:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	andl	$1, %eax
	movswl	44(%esp,%eax,2), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	jmp	L144
	.p2align 4,,10
	.p2align 3
L163:
	movl	352(%esi), %ecx
	leal	18(%ecx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	movzbl	39(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movl	24(%esp), %eax
	call	__Z10KillSprites
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z16InitTracerTurretssi
	.def	__Z16InitTracerTurretssi;	.scl	2;	.type	32;	.endef
__Z16InitTracerTurretssi:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_Tracer, %ecx
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
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movl	%eax, 32(%esp)
	movl	$100, %eax
	subl	64(%esp), %eax
	movl	$1200, 20(%esp)
	movl	%eax, %esi
	movl	%eax, 28(%esp)
	movswl	28(%edi), %eax
	leal	(%esi,%esi,8), %edx
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	leal	(%eax,%edx,8), %eax
	xorl	%edx, %edx
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	_sprite, %eax
	imull	$44, %esi, %ebx
	movl	%esi, 24(%esp)
	movl	_User(,%esi,4), %esi
	movl	%eax, %ebp
	addl	%eax, %ebx
	leal	40(%ebx), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	cmpw	$0, 60(%esp)
	js	L166
	movswl	60(%esp), %eax
	movl	24(%esp), %edx
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
L166:
	leal	21(%ebx), %edx
	movl	$-1171354717, %eax
	leal	36(%ebx), %ecx
	subl	%ebp, %edx
	subl	%ebp, %ecx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$10, 21(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movb	$10, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	shrl	$5, %ecx
	subl	%ebp, %edx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movb	$2, 18(%ebx)
	movzbl	273(%eax), %eax
	subl	%ebp, %edx
	movl	$50, 188(%esi)
	movb	%al, 273(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	movl	$16777472, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movzwl	32(%ebx), %edx
	orw	$-32768, 12(%ebx)
	leal	7(%edx), %eax
	testw	%dx, %dx
	cmovns	%edx, %eax
	addl	$1, _spritechanged(,%ecx,4)
	sarw	$3, %ax
	cwtl
	imull	28(%esp), %eax
	movw	%ax, 36(%ebx)
	movl	24(%esp), %eax
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movl	_randomseed, %eax
	movswl	28(%ebx), %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$29, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L167
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$25, %edx
L167:
	leal	-15(%ecx,%edx), %ecx
	movl	$-1171354717, %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	32(%ebx), %edx
	movw	%cx, 28(%ebx)
	addl	$512, %ecx
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
	movl	_sector, %edx
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L168
	orl	$1073741824, 68(%esi)
L168:
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
LFE28:
	.p2align 4
	.globl	__Z13InitTankShellsP12PLAYERstruct
	.def	__Z13InitTankShellsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13InitTankShellsP12PLAYERstruct:
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movswl	52(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 28(%esp)
	movl	140(%eax), %edi
	testb	$1, _SW_GameFlags
	je	L187
L176:
	movl	$1200, 20(%esp)
	movswl	28(%edi), %eax
	xorl	%edx, %edx
	movl	$_s_TankShell, %ecx
	movl	$-1171354717, %ebp
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
	movswl	%ax, %ecx
	movl	56(%esp), %eax
	imull	$44, %ecx, %ebx
	movl	%ecx, %edx
	addl	_sprite, %ebx
	movl	%ecx, 24(%esp)
	movswl	348(%eax), %eax
	movl	_User(,%ecx,4), %esi
	call	__Z8SetOwnerss
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	leal	36(%ebx), %ecx
	movl	%edx, %eax
	subl	_sprite, %ecx
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$8, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$8, 20(%ebx)
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movb	$8, 18(%ebx)
	movzbl	273(%eax), %eax
	orl	$2097152, 72(%esi)
	movb	%al, 273(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	$67109888, 96(%esi)
	movl	$50, 188(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	56(%esp), %eax
	orw	$-32768, 12(%ebx)
	movzwl	32(%ebx), %ebp
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
	testw	%bp, %bp
	leal	7(%ebp), %eax
	cmovns	%ebp, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	24(%esp), %ecx
	sarw	$3, %ax
	cwtl
	imull	%eax, %edx
	movw	%dx, 36(%ebx)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	$64, 8(%esp)
	movl	%edi, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movl	_randomseed, %eax
	movl	$14, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L178
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$25, %edx
	leal	-15(%edx), %ecx
L178:
	movl	$-1171354717, %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	28(%ebx), %cx
	movw	%cx, 28(%ebx)
	andw	$2047, %cx
	addl	$1, _spritechanged(,%edx,4)
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
	movl	_sector, %edx
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L179
	orl	$1073741824, 68(%esi)
L179:
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
L187:
	.cfi_restore_state
	movl	56(%esp), %eax
	movl	56(%esp), %edx
	movl	$12, 4(%esp)
	leal	4(%eax), %ecx
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	$514, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L176
	.cfi_endproc
LFE29:
	.p2align 4
	.globl	__Z16InitTurretRocketsP12PLAYERstruct
	.def	__Z16InitTurretRocketsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z16InitTurretRocketsP12PLAYERstruct:
LFB30:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L199
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L199:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_Rocket, %ecx
	movl	$2018, %edx
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
	movswl	52(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movl	%eax, 24(%esp)
	movl	$1350, 20(%esp)
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
	movl	56(%esp), %edx
	movswl	%ax, %ecx
	movswl	348(%edx), %eax
	imull	$44, %ecx, %ebx
	movl	%ecx, %edx
	addl	_sprite, %ebx
	movl	_User(,%ecx,4), %esi
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	leal	36(%ebx), %ecx
	movl	%edx, %eax
	subl	_sprite, %ecx
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 20(%ebx)
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movb	$8, 18(%ebx)
	movzbl	273(%eax), %eax
	orl	$2097152, 72(%esi)
	movb	%al, 273(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	$67109888, 96(%esi)
	movl	$50, 188(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	56(%esp), %eax
	movzwl	32(%ebx), %ebp
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
	testw	%bp, %bp
	leal	7(%ebp), %eax
	cmovns	%ebp, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	sarw	$3, %ax
	cwtl
	imull	%eax, %edx
	movw	%dx, 36(%ebx)
	movl	$0, 12(%esp)
	movl	$64, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movswl	28(%ebx), %eax
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
	movl	_sector, %edx
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L189
	orl	$1073741824, 68(%esi)
L189:
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
LFE30:
	.p2align 4
	.globl	__Z18InitTurretFireballsP12PLAYERstruct
	.def	__Z18InitTurretFireballsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18InitTurretFireballsP12PLAYERstruct:
LFB31:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L214
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L214:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_Fireball, %ecx
	movl	$2035, %edx
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
	movswl	52(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movl	%eax, 24(%esp)
	movl	$2000, 20(%esp)
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
	movl	56(%esp), %edx
	movswl	%ax, %ecx
	movswl	348(%edx), %eax
	imull	$44, %ecx, %ebx
	movl	%ecx, %edx
	addl	_sprite, %ebx
	movl	_User(,%ecx,4), %esi
	movl	%ecx, 28(%esp)
	call	__Z8SetOwnerss
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	leal	36(%ebx), %ecx
	movl	%edx, %eax
	subl	_sprite, %ecx
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$40, 20(%ebx)
	mull	%ebp
	movl	%ecx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	xorl	%eax, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movb	$8, 18(%ebx)
	movzbl	273(%eax), %eax
	orl	$2097152, 72(%esi)
	movb	%al, 273(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	$67109888, 96(%esi)
	movl	$50, 188(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	56(%esp), %eax
	movzwl	32(%ebx), %ebp
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
	testw	%bp, %bp
	leal	7(%ebp), %eax
	cmovns	%ebp, %eax
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	sarw	$3, %ax
	cwtl
	imull	%eax, %edx
	movw	%dx, 36(%ebx)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	$64, 8(%esp)
	movl	%edi, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movl	_randomseed, %eax
	movl	$14, %ecx
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L203
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$25, %edx
	leal	-15(%edx), %ecx
L203:
	movl	$-1171354717, %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addw	28(%ebx), %cx
	movw	%cx, 28(%ebx)
	andw	$2047, %cx
	addl	$1, _spritechanged(,%edx,4)
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
	movl	_sector, %edx
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L201
	orl	$1073741824, 68(%esi)
L201:
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
LFE31:
	.p2align 4
	.globl	__Z14InitTurretRailsP12PLAYERstruct
	.def	__Z14InitTurretRailsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitTurretRailsP12PLAYERstruct:
LFB32:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	jne	L221
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %eax
	movswl	268(%eax), %eax
	testw	%ax, %ax
	js	L216
	movswl	48(%esp), %edx
	movl	%ebx, 28(%esp)
	movl	%esi, 32(%esp)
	movl	%edi, 36(%esp)
	movl	%ebp, 40(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	_User(,%edx,4), %edx
	movl	$-1171354717, %ebp
	movl	140(%edx), %edx
	movl	$1200, 20(%esp)
	movswl	28(%edx), %ecx
	movl	%ecx, 16(%esp)
	movl	8(%edx), %ecx
	movl	%ecx, 12(%esp)
	movl	4(%edx), %ecx
	movl	%ecx, 8(%esp)
	movl	(%edx), %edx
	movl	$_s_Rail, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	movl	%edx, 4(%esp)
	movl	$2017, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %edi
	movl	52(%esp), %eax
	imull	$44, %edi, %ebx
	movl	%edi, %edx
	addl	_sprite, %ebx
	movl	_User(,%edi,4), %esi
	movswl	348(%eax), %eax
	call	__Z8SetOwnerss
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 20(%ebx)
	mull	%ebp
	movl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movb	$-15, 16(%ebx)
	movl	288(%eax), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebp
	sarl	$31, %ecx
	movl	24(%esp), %eax
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
	movl	$_sg_Rail, %edx
	sall	$7, %eax
	movw	%ax, 36(%ebx)
	movl	$5, %eax
	movw	%ax, 80(%esi)
	movl	%edi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	orl	$2097152, 72(%esi)
	movl	$200, 188(%esi)
	subl	%ecx, %edx
	movl	$16777472, 96(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32640, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$257, 12(%ebx)
	movl	%edx, %eax
	mull	%ebp
	movl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 18(%ebx)
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%edi, 4(%esp)
	movl	352(%eax), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%ebx), %ecx
	cmpl	$-1, %eax
	jne	L218
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	andw	$2047, %cx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
L218:
	leal	512(%ecx), %eax
	movswl	32(%ebx), %edx
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
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	32(%esp), %esi
	.cfi_restore 6
	movl	36(%esp), %edi
	.cfi_restore 7
	movl	40(%esp), %ebp
	.cfi_restore 5
L216:
	xorl	%eax, %eax
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L221:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE32:
	.p2align 4
	.globl	__Z15InitTurretLasersP12PLAYERstruct
	.def	__Z15InitTurretLasersP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitTurretLasersP12PLAYERstruct:
LFB33:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	jne	L230
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	56(%esp), %eax
	movswl	268(%eax), %eax
	testw	%ax, %ax
	js	L225
	movswl	52(%esp), %edx
	movl	%ebx, 32(%esp)
	movl	$_s_Laser, %ecx
	movl	%esi, 36(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	movl	_User(,%edx,4), %edx
	movl	140(%edx), %edi
	movl	$300, 20(%esp)
	movswl	28(%edi), %edx
	movl	%edx, 16(%esp)
	movl	8(%edi), %edx
	movl	%edx, 12(%esp)
	movl	4(%edi), %edx
	movl	%edx, 8(%esp)
	movl	(%edi), %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	movl	%edx, 4(%esp)
	movl	$2018, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %ecx
	movl	56(%esp), %eax
	imull	$44, %ecx, %ebx
	movl	%ecx, %edx
	addl	_sprite, %ebx
	movl	%ecx, 28(%esp)
	movswl	348(%eax), %eax
	movl	_User(,%ecx,4), %esi
	call	__Z8SetOwnerss
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 21(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$52, 20(%ebx)
	mull	%ebp
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movb	$-15, 16(%ebx)
	movl	288(%eax), %eax
	movl	%eax, 24(%esp)
	sarl	$31, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%ebp
	movl	24(%esp), %eax
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
	movw	%ax, 36(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movswl	36(%ebx), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	sarl	$2, %eax
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%ebp
	orl	$2097152, 72(%esi)
	movl	$200, 188(%esi)
	movl	$16777472, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	28(%esp), %ecx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$257, 12(%ebx)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$16, 18(%ebx)
	movl	%ecx, 4(%esp)
	movl	$0, 12(%esp)
	movl	$32, 8(%esp)
	movl	%edi, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movzwl	28(%ebx), %ecx
	cmpl	$-1, %eax
	jne	L227
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	andw	$2047, %cx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
L227:
	leal	512(%ecx), %eax
	movswl	32(%ebx), %edx
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
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
L225:
	xorl	%eax, %eax
	addl	$48, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L230:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z15BulletHitSpriteP12spritetypev7siiis
	.def	__Z15BulletHitSpriteP12spritetypev7siiis;	.scl	2;	.type	32;	.endef
__Z15BulletHitSpriteP12spritetypev7siiis:
LFB34:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	_sprite, %ecx
	movl	80(%esp), %eax
	movzwl	92(%esp), %edx
	movl	%ebp, 64(%esp)
	.cfi_offset 5, -8
	movswl	76(%esp), %ebp
	movl	%edi, 60(%esp)
	movl	%eax, 40(%esp)
	movl	84(%esp), %eax
	.cfi_offset 7, -12
	imull	$44, %ebp, %edi
	movl	%eax, 44(%esp)
	movl	88(%esp), %eax
	movl	%eax, 48(%esp)
	xorl	%eax, %eax
	testb	$8, 43(%ecx,%edi)
	jne	L282
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	addl	$68, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L282:
	.cfi_restore_state
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	_User(,%ebp,4), %eax
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	subl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %ecx
	movl	$2146, %eax
	movl	144(%ecx), %ebx
	testl	%ebx, %ebx
	je	L283
L235:
	testw	%dx, %dx
	movl	$0, 20(%esp)
	movl	$_s_UziSmoke, %ecx
	cmovle	%eax, %edx
	movl	72(%esp), %eax
	movswl	28(%eax), %eax
	movl	$0, (%esp)
	movswl	%dx, %edx
	movl	%eax, 16(%esp)
	movl	88(%esp), %eax
	movl	%eax, 12(%esp)
	movl	84(%esp), %eax
	movl	%eax, 8(%esp)
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movl	$-1171354717, %ecx
	cwtl
	movl	%eax, 36(%esp)
	imull	$44, %eax, %eax
	leal	(%esi,%eax), %ebx
	addl	$16, %eax
	mull	%ecx
	leal	12(%ebx), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movb	$-40, 16(%ebx)
	movl	144(%edx), %edx
	testl	%edx, %edx
	je	L237
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
L237:
	movl	28(%esp), %eax
	leal	21(%ebx), %ecx
	subl	%esi, %ecx
	movzwl	82(%eax), %eax
	movw	%ax, 26(%esp)
	movl	$-1171354717, %eax
	mull	%ecx
	movl	$-1171354717, %eax
	movl	%edx, %ecx
	leal	20(%ebx), %edx
	subl	%esi, %edx
	shrl	$5, %ecx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpw	$4792, 26(%esp)
	je	L238
	jle	L284
	cmpw	$4840, 26(%esp)
	je	L238
	cmpw	$5426, 26(%esp)
	je	L238
	cmpw	$4816, 26(%esp)
	je	L238
L240:
	movl	%eax, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$-1171354717, %eax
	movb	$8, 20(%ebx)
	subl	%esi, %edx
	addl	$1, _spritechanged(,%ecx,4)
	mull	%edx
	movb	$8, 21(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
L242:
	movl	72(%esp), %eax
	subl	%esi, %eax
	movl	36(%esp), %esi
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	%esi, %edx
	cwtl
	call	__Z8SetOwnerss
	movl	72(%esp), %eax
	movzwl	28(%eax), %eax
	movw	%ax, 28(%ebx)
	leal	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_setspritez
	movl	$-1171354717, %eax
	movl	32(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movl	_randomseed, %eax
	addl	$1, _krandcount
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	andw	$-258, 12(%ebx)
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$5, %eax
	andl	$1023, %eax
	cmpl	$639, %eax
	jg	L244
	movl	28(%esp), %ebx
	movl	72(%esp), %eax
	movl	88(%esp), %esi
	movl	144(%ebx), %edx
	movswl	28(%eax), %eax
	testl	%edx, %edx
	je	L285
	leal	5120(%esi), %edx
	movl	80(%esp), %ebx
	movl	84(%esp), %esi
	movl	%eax, 8(%esp)
	movl	%edx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z10SpawnBloodsssiii
L246:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$96, %ah
	jne	L244
	movl	28(%esp), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L286
L247:
	movl	28(%esp), %eax
	movzwl	82(%eax), %eax
	cmpw	$2540, %ax
	je	L244
	cmpw	$5426, %ax
	jne	L287
	.p2align 4
	.p2align 3
L244:
	cmpw	$16383, 76(%esp)
	ja	L248
	movl	_sprite, %eax
	movl	$_StatDamageList+40, %ecx
	movzwl	26(%eax,%edi), %edx
	movl	$_StatDamageList, %eax
	jmp	L250
	.p2align 4
	.p2align 4,,10
	.p2align 3
L249:
	addl	$2, %eax
	cmpl	%eax, %ecx
	je	L248
L250:
	cmpw	(%eax), %dx
	jne	L249
	movl	36(%esp), %eax
	movl	%ebp, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
L248:
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	$1, %eax
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	addl	$68, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L284:
	.cfi_restore_state
	cmpw	$2540, 26(%esp)
	je	L238
	cmpw	$4768, 26(%esp)
	je	L238
	cmpw	$623, 26(%esp)
	jne	L240
	.p2align 4
	.p2align 3
L238:
	movl	%eax, _spritechanged(,%edx,4)
	movl	_randomseed, %eax
	movb	$24, 20(%ebx)
	leal	(%eax,%eax,4), %edx
	addl	$1, _spritechanged(,%ecx,4)
	leal	1(%eax,%edx,4), %eax
	addl	$1, _krandcount
	movzwl	%ax, %edx
	andl	$1023, %eax
	movb	$24, 21(%ebx)
	movl	%edx, _randomseed
	cmpl	$800, %eax
	jle	L242
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z10SpawnShrapss
	movl	_sprite, %esi
	jmp	L242
	.p2align 4,,10
	.p2align 3
L283:
	movl	68(%ecx), %eax
	andl	$16384, %eax
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$2, %eax
	addw	$2146, %ax
	jmp	L235
	.p2align 4,,10
	.p2align 3
L285:
	movl	%esi, 20(%esp)
	movl	84(%esp), %ebx
	movl	80(%esp), %esi
	movl	%eax, 8(%esp)
	movl	%ebx, 16(%esp)
	movl	%esi, 12(%esp)
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z10SpawnBloodsssiii
	jmp	L246
	.p2align 4,,10
	.p2align 3
L287:
	movl	72(%esp), %eax
	movswl	28(%eax), %edx
	movl	%ebp, %eax
	call	__Z14QueueWallBloodss
	jmp	L244
L286:
	movl	88(%esp), %eax
	movl	%eax, 20(%esp)
	movl	84(%esp), %eax
	movl	%eax, 16(%esp)
	movl	80(%esp), %eax
	movl	%eax, 12(%esp)
	movl	72(%esp), %eax
	movzwl	28(%eax), %eax
	movl	$-1, 4(%esp)
	movl	%ebp, (%esp)
	movw	%ax, 26(%esp)
	addw	$1024, %ax
	andl	$2047, %eax
	movl	%eax, 8(%esp)
	call	__Z10SpawnBloodsssiii
	jmp	L247
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z19HitscanSpriteAdjustss
	.def	__Z19HitscanSpriteAdjustss;	.scl	2;	.type	32;	.endef
__Z19HitscanSpriteAdjustss:
LFB36:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movswl	60(%esp), %esi
	movl	%edi, 48(%esp)
	movswl	64(%esp), %eax
	.cfi_offset 7, -12
	imull	$44, %esi, %edi
	movl	%ebx, 40(%esp)
	.cfi_offset 3, -20
	movl	_sprite, %ebx
	addl	%edi, %ebx
	testw	%ax, %ax
	jns	L293
	movswl	28(%ebx), %ecx
L290:
	leal	512(%ecx), %eax
	movswl	_sintable(%ecx,%ecx), %edx
	movzwl	24(%ebx), %ecx
	movl	$1, _clipmoveboxtracenum
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	sall	$4, %edx
	movl	$1090519104, 28(%esp)
	movl	%edx, 12(%esp)
	sall	$4, %eax
	movl	$1024, 24(%esp)
	movl	%eax, 8(%esp)
	leal	38(%esp), %eax
	movl	$1024, 20(%esp)
	movl	$4, 16(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movw	%cx, 38(%esp)
	call	_clipmove
	movzwl	38(%esp), %edx
	movl	$3, _clipmoveboxtracenum
	cmpw	%dx, 24(%ebx)
	je	L291
	cmpw	$4096, %dx
	ja	L291
	movl	_sprite, %eax
	movzwl	24(%eax,%edi), %eax
	cmpw	%ax, %dx
	je	L291
	cmpw	$4096, %ax
	je	L291
	movl	%esi, %eax
	movl	%edx, 32(%esp)
	call	_do_deletespritesect
	movswl	32(%esp), %edx
	movl	%esi, %eax
	call	_do_insertsprite_at_headofsect
L291:
	movl	40(%esp), %ebx
	movl	44(%esp), %esi
	movl	$1, %eax
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
L293:
	.cfi_restore_state
	movl	_wall, %edx
	sall	$5, %eax
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	addl	%edx, %eax
	movzwl	8(%eax), %ecx
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	4(%edx), %ecx
	subl	4(%eax), %ecx
	movl	%ecx, %ebp
	movl	(%edx), %ecx
	subl	(%eax), %ecx
	movl	%ebp, %edx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	leal	512(%eax), %ecx
	movl	$-1171354717, %eax
	mull	%edx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	52(%esp), %ebp
	.cfi_restore 5
	jmp	L290
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z15SpawnBoatSparksP12PLAYERstructssiiis
	.def	__Z15SpawnBoatSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
__Z15SpawnBoatSparksP12PLAYERstructssiiis:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_UziSmoke, %ecx
	movl	$2146, %edx
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	72(%esp), %eax
	movswl	76(%esp), %esi
	movl	$0, 20(%esp)
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%esi, 16(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	56(%esp), %eax
	movl	%eax, (%esp)
	movl	%eax, 24(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	%ecx, 28(%esp)
	leal	0(%ebp,%eax), %ebx
	addl	$16, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$36, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	52(%esp), %edx
	movb	$36, 21(%ebx)
	movswl	348(%edx), %eax
	movl	%ecx, %edx
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	12(%ebx), %edx
	movl	28(%esp), %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%ebp, %edx
	orw	$130, 12(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 40(%ebx)
	movswl	60(%esp), %ebp
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	movl	%ecx, (%esp)
	movl	%ebp, 4(%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	%esi, 16(%esp)
	movl	72(%esp), %esi
	movl	$_s_UziSpark, %ecx
	movl	24(%esp), %eax
	movl	$0, 20(%esp)
	movl	$2140, %edx
	movl	%esi, 12(%esp)
	movl	68(%esp), %esi
	movl	%eax, (%esp)
	movl	$4, %eax
	movl	%esi, 8(%esp)
	movl	64(%esp), %esi
	movl	%esi, 4(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	movl	%ebx, 24(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
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
	movl	52(%esp), %ecx
	movb	$34, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movb	$34, 21(%ebx)
	movswl	348(%ecx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 17(%ebx)
	movb	$0, 262(%eax)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$128, 12(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	movl	%ebp, 4(%esp)
	movl	%esi, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$99, %eax
	jle	L297
	addl	$32, %esp
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
L297:
	.cfi_restore_state
	leal	8(%ebx), %ecx
	leal	4(%ebx), %ebp
	movl	%ecx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movl	$6, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ecx, (%esp)
	movl	%ebp, %ecx
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	addl	$32, %esp
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
	.cfi_endproc
LFE39:
	.p2align 4
	.globl	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	.def	__Z16SpawnSwordSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
__Z16SpawnSwordSparksP12PLAYERstructssiiis:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_UziSmoke, %ecx
	movl	$2146, %edx
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
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	52(%esp), %eax
	movswl	76(%esp), %ebp
	movswl	56(%esp), %edi
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movl	$0, 20(%esp)
	movl	%ebp, 16(%esp)
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	movl	%edi, (%esp)
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	cwtl
	movl	%eax, 24(%esp)
	imull	$44, %eax, %eax
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movl	52(%esp), %ecx
	movb	$20, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$20, 20(%ebx)
	movswl	348(%ecx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%ecx, %edx
	orw	$130, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	cmpw	$-1, 60(%esp)
	je	L299
	movswl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__Z19HitscanSpriteAdjustss
L299:
	movl	72(%esp), %eax
	movl	%edi, (%esp)
	movl	$_s_UziSpark, %ecx
	movl	$2140, %edx
	movl	%ebp, 16(%esp)
	movl	$-1171354717, %edi
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebp
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$20, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movb	$20, 20(%ebx)
	movswl	348(%eax), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 17(%ebx)
	movl	%edx, %eax
	movb	$0, 262(%ebp)
	mull	%edi
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	cmpb	$0, 273(%eax)
	jne	L300
	addl	$1, _spritechanged(,%edx,4)
	orw	$-32768, 12(%ebx)
L300:
	leal	18(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	cmpw	$-1, 60(%esp)
	je	L301
	movswl	60(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19HitscanSpriteAdjustss
L301:
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
LFE40:
	.p2align 4
	.globl	__Z17SpawnTurretSparksssiiis
	.def	__Z17SpawnTurretSparksssiiis;	.scl	2;	.type	32;	.endef
__Z17SpawnTurretSparksssiiis:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$2146, %edx
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
	movl	64(%esp), %ecx
	movl	60(%esp), %esi
	movl	$0, 20(%esp)
	movswl	68(%esp), %eax
	movswl	48(%esp), %ebx
	movl	%ecx, 12(%esp)
	movl	56(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	%esi, 8(%esp)
	movl	$-1171354717, %esi
	movl	%ecx, 4(%esp)
	movl	$_s_UziSmoke, %ecx
	movl	%ebx, (%esp)
	movl	%eax, 24(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	leal	0(%ebp,%eax), %edi
	addl	$16, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	%ebp, %edx
	movb	$36, 20(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ebp, %edx
	movb	$36, 21(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%edi), %edx
	subl	%ebp, %edx
	orw	$130, 12(%edi)
	movl	%edx, %eax
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%edi), %edx
	subl	%ebp, %edx
	movw	%ax, 40(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%edi)
	movswl	52(%esp), %edi
	movl	%ecx, (%esp)
	movl	%edi, 4(%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	24(%esp), %eax
	movl	%ebx, (%esp)
	movl	$_s_UziSpark, %ecx
	movl	$0, 20(%esp)
	movl	$2140, %edx
	movl	%eax, 16(%esp)
	movl	64(%esp), %eax
	movl	%eax, 12(%esp)
	movl	60(%esp), %eax
	movl	%eax, 8(%esp)
	movl	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %ebp
	movl	%ebx, 24(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
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
	movb	$34, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	%ecx, %edx
	movb	$34, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$0, 17(%ebx)
	movl	%edx, %eax
	movb	$0, 262(%ebp)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$128, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$99, %eax
	jle	L312
	movl	24(%esp), %eax
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
L312:
	.cfi_restore_state
	movl	_sprite, %ecx
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
	movl	$6, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	24(%esp), %eax
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
LFE41:
	.p2align 4
	.globl	__Z18SpawnShotgunSparksP12PLAYERstructssiiis
	.def	__Z18SpawnShotgunSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
__Z18SpawnShotgunSparksP12PLAYERstructssiiis:
LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_UziSpark, %ecx
	movl	$2140, %edx
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
	movl	72(%esp), %ebx
	movl	64(%esp), %esi
	movl	$0, 20(%esp)
	movswl	76(%esp), %eax
	movswl	56(%esp), %ebp
	movl	%ebx, 12(%esp)
	movl	68(%esp), %ebx
	movl	%eax, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	movl	%eax, 24(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebx
	movl	%ebx, 28(%esp)
	movl	$-1171354717, %ebx
	leal	(%ecx,%eax), %esi
	addl	$16, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movl	52(%esp), %ecx
	movb	$24, 20(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movb	$24, 21(%esi)
	movswl	348(%ecx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	17(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movb	$0, 17(%esi)
	movb	$0, 262(%edx)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%ecx, %edx
	orw	$128, 12(%esi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%esi)
	movswl	60(%esp), %esi
	movl	%edi, (%esp)
	movl	%esi, 4(%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	24(%esp), %eax
	movl	%ebp, (%esp)
	movl	$_s_ShotgunSmoke, %ecx
	movl	$0, 20(%esp)
	movl	$2147, %edx
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	leal	(%ecx,%eax), %edi
	addl	$16, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%edi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	%ecx, %edx
	movb	$18, 20(%edi)
	movl	%edx, %eax
	mull	%ebx
	movl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movb	$18, 21(%edi)
	movswl	348(%eax), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	12(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%edi), %edx
	subl	%ecx, %edx
	orw	$130, 12(%edi)
	movl	%edx, %eax
	mull	%ebx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%edi), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%edi)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%edi)
	movl	%esi, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z19HitscanSpriteAdjustss
	addl	$32, %esp
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
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z18InitSobjMachineGunsP12PLAYERstruct
	.def	__Z18InitSobjMachineGunsP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z18InitSobjMachineGunsP12PLAYERstruct:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movswl	88(%esp), %eax
	movl	92(%esp), %esi
	movl	_User(,%eax,4), %eax
	movl	%esi, %edx
	leal	4(%esi), %ecx
	movl	140(%eax), %ebx
	leal	8(%esi), %eax
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	movl	$145, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	(%ebx), %eax
	movl	8(%ebx), %edi
	addl	$1, _krandcount
	movl	%eax, 28(%esp)
	movl	4(%ebx), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 32(%esp)
	movzwl	24(%ebx), %eax
	movw	%ax, 38(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$199, %eax
	jg	L316
	movl	288(%esi), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	movl	%eax, 8(%esp)
	movswl	348(%esi), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z16InitTracerTurretssi
L316:
	movl	$64, %eax
	movl	$0, 12(%esp)
	movw	%ax, 42(%esp)
	leal	42(%esp), %eax
	movl	%eax, 8(%esp)
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	movl	%eax, %ecx
	movl	_krandcount, %eax
	leal	1(%eax), %edx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ebp
	leal	1(%eax,%ebp,4), %eax
	movzwl	%ax, %eax
	cmpl	$-1, %ecx
	jne	L349
	movl	288(%esi), %ecx
	testl	%ecx, %ecx
	js	L321
	addl	$32768, %ecx
	cmpl	$4915199, %ecx
	jle	L321
	sarl	$16, %ecx
	movl	$100, %ebp
	subl	%ecx, %ebp
	imull	$2000, %ebp, %ecx
L323:
	movl	%edx, _krandcount
	movl	$10239, %edx
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L324
	sall	$14, %eax
	movl	$-1610571775, %edx
	mull	%edx
	shrl	$15, %edx
	subl	$10240, %edx
L324:
	movswl	28(%ebx), %ebx
	addl	%ecx, %edx
L320:
	leal	48(%esp), %eax
	movl	%edx, 12(%esp)
	movl	32(%esp), %edx
	movl	%edi, %ecx
	movl	%eax, 16(%esp)
	movl	%ebx, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	leal	512(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	38(%esp), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movzwl	64(%esp), %edi
	testw	%di, %di
	js	L325
	movzwl	60(%esp), %edx
	testw	%dx, %dx
	js	L350
	movswl	%dx, %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	movl	%edx, %ebp
	cmpw	$257, 38(%edx)
	je	L351
	testb	$32, 43(%edx)
	jne	L352
	movl	56(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	52(%esp), %edx
	movl	%edx, 12(%esp)
	movl	48(%esp), %edx
	movl	%edx, 8(%esp)
	movl	352(%esi), %eax
	movl	%eax, (%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L325
	testb	$16, 12(%ebp)
	jne	L333
L348:
	movl	56(%esp), %ecx
	movswl	62(%esp), %edx
	movswl	64(%esp), %eax
L328:
	movl	%ecx, 20(%esp)
	movl	52(%esp), %ecx
	movl	%ebx, 24(%esp)
	movl	%ecx, 16(%esp)
	movl	48(%esp), %ecx
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__Z15SpawnBoatSparksP12PLAYERstructssiiis
	movl	%eax, %ebx
	movzwl	60(%esp), %eax
	cmpw	$16383, %ax
	ja	L325
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L337
	.p2align 4
	.p2align 4,,10
	.p2align 3
L336:
	addl	$2, %eax
	cmpl	$_StatDamageList+40, %eax
	je	L325
L337:
	cmpw	(%eax), %dx
	jne	L336
	movswl	%bx, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	__Z8DoDamagess
L325:
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
L321:
	.cfi_restore_state
	movl	$50000, %ecx
	jmp	L323
	.p2align 4,,10
	.p2align 3
L349:
	movl	%edx, _krandcount
	movl	$3839, %edx
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L319
	sall	$14, %eax
	movl	$-268374015, %ecx
	mull	%ecx
	shrl	$17, %edx
	subl	$3840, %edx
L319:
	movswl	42(%esp), %ebx
	addl	44(%esp), %edx
	jmp	L320
	.p2align 4,,10
	.p2align 3
L350:
	movswl	62(%esp), %edx
	movl	56(%esp), %ecx
	movswl	%di, %eax
	testw	%dx, %dx
	jns	L328
	movl	_sector, %edi
	leal	(%eax,%eax,4), %ebp
	leal	(%edi,%ebp,8), %ebp
	movl	%ecx, %edi
	subl	4(%ebp), %edi
	movl	%ebp, 28(%esp)
	movl	%edi, %ebp
	negl	%ebp
	cmovns	%ebp, %edi
	cmpl	$256, %edi
	jg	L329
	movl	28(%esp), %edi
	addl	$4096, %ecx
	movl	%ecx, 56(%esp)
	testb	$1, 12(%edi)
	je	L328
	jmp	L325
	.p2align 4,,10
	.p2align 3
L333:
	cmpw	$0, 38(%ebp)
	jne	L334
	cmpw	$0, 40(%ebp)
	je	L348
L334:
	movswl	60(%esp), %eax
	call	__Z15ShootableSwitchs
	jmp	L348
	.p2align 4,,10
	.p2align 3
L352:
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
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
L329:
	.cfi_restore_state
	movl	28(%esp), %ebp
	movl	%ecx, %edi
	subl	8(%ebp), %edi
	movl	%edi, %ebp
	negl	%ebp
	cmovns	%ebp, %edi
	cmpl	$256, %edi
	jg	L328
	movl	28(%esp), %edi
	testb	$12, 39(%edi)
	je	L328
	cmpb	$0, _Prediction
	jne	L325
	movl	%eax, (%esp)
	movl	52(%esp), %edx
	movl	48(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	jmp	L325
	.p2align 4,,10
	.p2align 3
L351:
	movl	56(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%esi, (%esp)
	movl	%eax, 20(%esp)
	movl	52(%esp), %eax
	movl	%eax, 16(%esp)
	movl	48(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	62(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	%di, %eax
	movl	%eax, 4(%esp)
	call	__Z15SpawnBoatSparksP12PLAYERstructssiiis
	movl	_User(,%eax,4), %edx
	cwtl
	orl	$2097152, 72(%edx)
	movswl	60(%esp), %edx
	movl	$-1, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	__Z15MissileHitMatchsss
	jmp	L325
	.cfi_endproc
LFE43:
	.p2align 4
	.globl	__Z11InitGrenadeP12PLAYERstruct
	.def	__Z11InitGrenadeP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11InitGrenadeP12PLAYERstruct:
LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	$-1, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	8(%ebp), %esi
	movl	%edi, -4(%ebp)
	movswl	348(%esi), %eax
	.cfi_offset 7, -12
	movl	_User(,%eax,4), %edi
	orl	$6, 22972(%esi)
	movl	$5242892, %eax
	orl	$1024, 22968(%esi)
	movl	%eax, 312(%esi)
	movl	%esi, %eax
	movl	%edx, 316(%esi)
	movsbl	273(%edi), %edx
	movl	%edi, 32(%esp)
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%esi), %eax
	leal	4(%esi), %ecx
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	$16, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movw	%ax, 282(%edi)
	movswl	268(%esi), %ecx
	testw	%cx, %cx
	js	L354
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	300(%esi), %ebx
	movl	388(%esi), %eax
	addl	8(%esi), %eax
	movl	$900, 20(%esp)
	movl	%ebx, %edx
	addl	$2048, %eax
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	xorw	%dx, %dx
	leal	32768(%ebx,%edx), %ebx
	testl	%ebx, %ebx
	leal	65535(%ebx), %edx
	cmovns	%ebx, %edx
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	4(%esi), %eax
	movl	$2110, %edx
	movl	%eax, 8(%esp)
	movl	(%esi), %eax
	movl	%ecx, (%esp)
	movl	$_s_Grenade, %ecx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edx
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, 36(%esp)
	movl	_User(,%eax,4), %edi
	addl	%edx, %ebx
	testb	$64, 22969(%esi)
	je	L356
	leal	32(%ebx), %eax
	movzwl	32(%ebx), %ecx
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	sarw	$2, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	subw	%cx, 32(%ebx)
L356:
	movl	$5, %ecx
	movl	36(%esp), %eax
	movl	$_sg_Grenade, %edx
	movw	%cx, 80(%edi)
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	orl	$16777216, 68(%edi)
	movl	36(%esp), %edx
	movswl	348(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %eax
	leal	21(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%eax, %edx
	movl	%eax, 40(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	40(%esp), %edx
	movl	%edx, %eax
	movb	$32, 21(%ebx)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	40(%esp), %edx
	movl	%edx, %eax
	movb	$32, 20(%ebx)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	40(%esp), %edx
	movl	%edx, %eax
	movb	$-15, 16(%ebx)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movb	$8, 18(%ebx)
	movzbl	273(%edx), %eax
	leal	12(%ebx), %edx
	subl	40(%esp), %edx
	movl	$200, 188(%edi)
	movl	$50332416, 96(%edi)
	movb	%al, 273(%edi)
	xorl	%eax, %eax
	movw	%ax, 176(%edi)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	orw	$1, 12(%ebx)
	testb	$2, 22970(%esi)
	je	L370
L357:
	orl	$1073741824, 68(%edi)
L358:
	movl	288(%esi), %eax
	leal	36(%ebx), %edx
	movl	%edx, 28(%esp)
	subl	40(%esp), %edx
	movl	%eax, 32(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$31, %ecx
	movl	32(%esp), %eax
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
	sall	$7, %eax
	movw	%ax, 36(%ebx)
	movl	352(%esi), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	40(%esp), %edx
	movb	%al, 27(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	leal	28(%ebx), %eax
	movl	%eax, 32(%esp)
	subl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	movb	$0, 18(%ecx)
	mull	%edx
	movswl	28(%ebx), %ecx
	addl	$512, %ecx
	shrl	$5, %edx
	andl	$2047, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	36(%esp), %ecx
	movl	$800, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	32(%esp), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	movswl	28(%ebx), %ecx
	mull	%edx
	subl	$512, %ecx
	shrl	$5, %edx
	andl	$2047, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	36(%esp), %ecx
	orl	$536870912, 68(%edi)
	movl	%ecx, (%esp)
	movl	$1000, 8(%esp)
	movl	$__Z9DoGrenades, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	andl	$-536870913, 68(%edi)
	movl	352(%esi), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	27(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	movzwl	36(%ebx), %ecx
	movl	$0, 12(%esp)
	movl	%ecx, 32(%esp)
	movl	36(%esp), %ecx
	movl	$32, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	352(%esi), %eax
	movl	%eax, (%esp)
	call	__Z13WeaponAutoAimP12spritetypev7ssh
	movl	28(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, 40(%esp)
	movl	$-1171354717, %eax
	movl	32(%esp), %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movw	%cx, 36(%ebx)
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movswl	32(%ebx), %eax
	imull	%eax, %edx
	sarl	$14, %edx
	movl	%edx, 152(%edi)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	movl	40(%esp), %ecx
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movswl	36(%ebx), %ebx
	movl	%ebx, 160(%edi)
	testl	%ecx, %ecx
	js	L371
L360:
	movl	$1, %eax
	movw	%ax, 178(%edi)
	movl	-12(%ebp), %ebx
	.cfi_restore 3
L354:
	movl	-8(%ebp), %esi
	movl	-4(%ebp), %edi
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L371:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	192(%esi), %ecx
	sarl	$14, %ecx
	addl	%ecx, %edx
	movl	%edx, 152(%edi)
	movl	196(%esi), %edx
	sarl	$14, %edx
	addl	%edx, %eax
	movl	%eax, 156(%edi)
	jmp	L360
	.p2align 4,,10
	.p2align 3
L370:
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L358
	jmp	L357
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z8InitMineP12PLAYERstruct
	.def	__Z8InitMineP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z8InitMineP12PLAYERstruct:
LFB46:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	$-1, %ecx
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	56(%esp), %ebx
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movsbl	273(%eax), %edx
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$23, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%ebx), %ecx
	testw	%cx, %cx
	js	L373
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	300(%ebx), %esi
	movl	388(%ebx), %eax
	addl	8(%ebx), %eax
	movl	%esi, %edx
	addl	$2048, %eax
	movl	(%ebx), %ebp
	movl	4(%ebx), %edi
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	xorw	%dx, %dx
	movl	%edi, 8(%esp)
	movl	$-1171354717, %edi
	leal	32768(%esi,%edx), %esi
	movl	%ebp, 4(%esp)
	testl	%esi, %esi
	leal	65535(%esi), %edx
	movl	%ecx, (%esp)
	movl	$_s_Mine, %ecx
	cmovns	%esi, %edx
	movl	$520, 20(%esp)
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	$2223, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ebp
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	movswl	348(%ebx), %eax
	addl	_sprite, %ebp
	call	__Z8SetOwnerss
	leal	21(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$32, 21(%ebp)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$32, 20(%ebp)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-15, 16(%ebp)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebp), %edx
	subl	_sprite, %edx
	movb	$32, 18(%ebp)
	movl	288(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
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
	xorl	%ecx, %ecx
	sarl	$16, %edx
	subl	%edx, %eax
	leal	12(%ebp), %edx
	subl	_sprite, %edx
	sall	$7, %eax
	movw	%ax, 36(%ebp)
	movl	24(%esp), %eax
	movzbl	273(%eax), %eax
	movw	%cx, 176(%esi)
	movl	$200, 188(%esi)
	movb	%al, 273(%esi)
	movl	%edx, %eax
	mull	%edi
	movl	$83887360, 96(%esi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebp)
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebp), %edx
	subl	_sprite, %edx
	andw	$-258, 12(%ebp)
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movzbl	262(%eax), %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 17(%ebp)
	movb	%cl, 262(%esi)
	testb	$2, 22970(%ebx)
	je	L387
L376:
	orl	$1073741824, 68(%esi)
L377:
	movl	32(%esp), %eax
	movl	$800, 8(%esp)
	movl	$__Z6DoMines, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movzwl	36(%ebp), %eax
	sarw	%ax
	cwtl
	movl	%eax, 160(%esi)
	movswl	28(%ebp), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edi
	movswl	32(%ebp), %eax
	imull	%eax, %edi
	sarl	$14, %edi
	movl	%edi, 152(%esi)
	movzwl	28(%ebp), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movswl	32(%ebp), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movl	300(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	192(%ebx), %ebp
	movl	%edx, %ecx
	sarl	$31, %ecx
	movl	%ecx, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	sarl	$16, %ecx
	leal	512(%ecx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	%ebp, %eax
/APP
 # 19489 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movswl	_sintable(%ecx,%ecx), %edx
	movl	196(%ebx), %eax
/APP
 # 19489 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	28(%esp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	cmpl	$10000, %eax
	jle	L386
	sarl	$13, %ebp
	addl	%edi, %ebp
	movl	%ebp, 152(%esi)
	movl	196(%ebx), %eax
	sarl	$13, %eax
	addl	24(%esp), %eax
	movl	%eax, 156(%esi)
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
L373:
	movl	36(%esp), %ebx
	xorl	%eax, %eax
	addl	$52, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L386:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	40(%esp), %esi
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
L387:
	.cfi_restore_state
	movswl	24(%ebp), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L377
	jmp	L376
	.cfi_endproc
LFE46:
	.section .rdata,"dr"
LC1:
	.ascii "source/sw/src/weapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z7InitEMPP12PLAYERstruct
	.def	__Z7InitEMPP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z7InitEMPP12PLAYERstruct:
LFB47:
	.cfi_startproc
	subl	$96, %esp
	.cfi_def_cfa_offset 100
	movl	%ebx, 80(%esp)
	.cfi_offset 3, -20
	movl	100(%esp), %ebx
	testb	$1, _SW_GameFlags
	je	L435
L389:
	movl	80(%esp), %ebx
	xorl	%eax, %eax
	addl	$96, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L435:
	.cfi_restore_state
	movl	%esi, 84(%esp)
	movl	$-1, %ecx
	movl	%edi, 88(%esp)
	movl	%ebp, 92(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	348(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movsbl	273(%eax), %edx
	movl	%eax, 28(%esp)
	movl	%ebx, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%ebx), %eax
	leal	4(%ebx), %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	$12, 4(%esp)
	movl	%eax, 32(%esp)
	movl	$269, %eax
	movl	%ecx, 36(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	%ebx, (%esp)
	call	__Z13InitTracerUziP12PLAYERstruct
	leal	54(%esp), %eax
	movl	388(%ebx), %esi
	addl	8(%ebx), %esi
	movl	%eax, 8(%esp)
	leal	56(%esp), %eax
	movl	$64, %ecx
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
	movl	352(%ebx), %eax
	movl	%esi, 56(%esp)
	movl	%eax, (%esp)
	movw	%cx, 54(%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	cmpl	$-1, %eax
	je	L390
	movl	56(%esp), %edx
	movzwl	54(%esp), %eax
L391:
	movswl	%ax, %ebp
	leal	60(%esp), %ecx
	andl	$2047, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 16(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%esi, %ecx
	movl	%eax, 8(%esp)
	leal	512(%ebp), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movl	68(%esp), %eax
	movl	%ebp, 16(%esp)
	movl	$_s_EMPBurst, %ecx
	movl	$0, 20(%esp)
	movl	$2058, %edx
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	76(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	$840, %edx
	movl	$-1171354717, %ecx
	movswl	%ax, %edi
	movl	_User(,%edi,4), %esi
	imull	$44, %edi, %eax
	movw	%dx, 216(%esi)
	movl	%esi, 24(%esp)
	movl	_sprite, %esi
	addl	%eax, %esi
	addl	$16, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movb	$-127, 16(%esi)
	movswl	348(%ebx), %eax
	call	__Z8SetOwnerss
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	$128, 12(%esi)
	mull	%ecx
	movswl	76(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%esi)
	testw	%cx, %cx
	js	L434
	movl	72(%esp), %edx
	movswl	74(%esp), %eax
	notl	%edx
	andl	$-2147450880, %edx
	je	L436
L394:
	testw	%ax, %ax
	js	L396
	movl	%eax, %edx
	sall	$5, %edx
	addl	_wall, %edx
	movswl	12(%edx), %edx
	testw	%dx, %dx
	js	L397
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	testb	$1, 12(%edx,%ecx,8)
	je	L397
	movl	4(%edx,%ecx,8), %ecx
	cmpl	%ecx, 68(%esp)
	jl	L434
L397:
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movswl	74(%esp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	cmpw	$307, 26(%eax)
	je	L437
L396:
	movswl	72(%esp), %eax
	testw	%ax, %ax
	js	L434
	imull	$44, %eax, %ebp
	addl	_sprite, %ebp
	cmpw	$257, 38(%ebp)
	je	L438
L398:
	testb	$32, 43(%ebp)
	jne	L439
L399:
	movl	68(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	64(%esp), %edx
	movl	%edx, 12(%esp)
	movl	60(%esp), %edx
	movl	%edx, 8(%esp)
	movl	352(%ebx), %eax
	movl	%eax, (%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	je	L400
	testb	$16, 12(%ebp)
	je	L400
	cmpw	$0, 38(%ebp)
	jne	L401
	cmpw	$0, 40(%ebp)
	je	L400
L401:
	movswl	72(%esp), %eax
	call	__Z15ShootableSwitchs
	.p2align 4
	.p2align 3
L400:
	testb	$8, 43(%ebp)
	jne	L440
	movzwl	12(%ebp), %eax
	testb	$16, %al
	jne	L441
	testb	$32, %al
	je	L405
	movl	24(%esp), %edi
	movl	72(%edi), %eax
	movl	108(%edi), %edx
	addl	104(%edi), %edx
	movl	%eax, %ecx
	sarl	%edx
	orl	$262144, %eax
	orl	$524288, %ecx
	cmpl	8(%esi), %edx
	cmovge	%ecx, %eax
	movl	%eax, 72(%edi)
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
	.p2align 4,,10
	.p2align 3
L436:
	.cfi_restore_state
	movl	68(%esp), %edx
	movl	%ecx, 48(%esp)
	leal	(%ecx,%ecx,4), %ecx
	movl	%edx, 44(%esp)
	movl	_sector, %edx
	leal	(%edx,%ecx,8), %ecx
	movl	%ecx, %edx
	movl	%ecx, 40(%esp)
	movl	44(%esp), %ecx
	subl	4(%edx), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	$256, %edx
	jg	L395
	movl	44(%esp), %edx
	addl	$4096, %edx
	movl	%edx, 68(%esp)
	movl	40(%esp), %edx
	testb	$1, 12(%edx)
	je	L394
L434:
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
	movl	92(%esp), %ebp
	.cfi_restore 5
	movl	80(%esp), %ebx
	addl	$96, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L390:
	.cfi_restore_state
	movl	288(%ebx), %edx
	movl	300(%ebx), %ecx
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
	movl	%ecx, %eax
	sarl	$31, %eax
	imull	$2000, %edx, %edx
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	movl	%edx, 56(%esp)
	cmovns	%eax, %ecx
	sarl	$16, %ecx
	movw	%cx, 54(%esp)
	movl	%ecx, %eax
	jmp	L391
	.p2align 4,,10
	.p2align 3
L441:
	movl	24(%esp), %eax
	orl	$131072, 72(%eax)
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
	.p2align 4,,10
	.p2align 3
L437:
	.cfi_restore_state
	movl	28(%esp), %edi
	movl	64(%esp), %ecx
	movswl	82(%edi), %edx
	movl	%ebp, 4(%esp)
	movl	%edx, 8(%esp)
	movl	68(%esp), %edx
	movl	%edx, (%esp)
	movl	60(%esp), %edx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
	.p2align 4,,10
	.p2align 3
L440:
	.cfi_restore_state
	movswl	72(%esp), %eax
	movl	_User(,%edi,4), %edi
	addl	$1, _krandcount
	movl	_User(,%eax,4), %ecx
	orl	$1048576, 72(%ecx)
	movw	%ax, 138(%edi)
	imull	$44, %eax, %eax
	movl	24(%esp), %edi
	addl	_sprite, %eax
	movl	8(%eax), %eax
	subl	8(%esi), %eax
	movl	%eax, 256(%edi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L403
	sall	$14, %eax
	cmpl	$537936224, %eax
	jbe	L434
	.p2align 4
	.p2align 3
L403:
	cmpb	$0, _Prediction
	jne	L434
	movl	32(%esp), %eax
	movl	%ebx, (%esp)
	movl	$346, %ecx
	movl	$18145, %edx
	movl	%ebx, 16(%esp)
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	$9, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$LC1, %eax
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
	.p2align 4,,10
	.p2align 3
L439:
	.cfi_restore_state
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	movswl	72(%esp), %eax
	jmp	L399
	.p2align 4,,10
	.p2align 3
L438:
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	jne	L434
	movswl	72(%esp), %eax
	jmp	L398
	.p2align 4,,10
	.p2align 3
L395:
	movl	40(%esp), %edx
	movl	44(%esp), %ecx
	subl	8(%edx), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovs	%ecx, %edx
	cmpl	$256, %edx
	jg	L394
	movl	40(%esp), %edx
	testb	$12, 39(%edx)
	je	L394
	cmpb	$0, _Prediction
	jne	L434
	movl	48(%esp), %eax
	movl	44(%esp), %ecx
	movl	64(%esp), %edx
	movl	%eax, (%esp)
	movl	60(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	movl	84(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
L405:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	84(%esp), %esi
	.cfi_restore 6
	movl	88(%esp), %edi
	.cfi_restore 7
	movl	92(%esp), %ebp
	.cfi_restore 5
	jmp	L389
	.cfi_endproc
LFE47:
	.p2align 4
	.globl	__Z15InitTurretMicrosP12PLAYERstruct
	.def	__Z15InitTurretMicrosP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitTurretMicrosP12PLAYERstruct:
LFB53:
	.cfi_startproc
	testb	$1, _SW_GameFlags
	je	L481
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L481:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movswl	88(%esp), %eax
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movl	92(%esp), %eax
	movswl	348(%eax), %eax
	movl	%edi, 28(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 56(%esp)
	movl	(%edi), %eax
	movl	%eax, 48(%esp)
	movl	4(%edi), %eax
	movl	%eax, 52(%esp)
	movl	92(%esp), %eax
	movl	352(%eax), %eax
	call	__Z12DoPickTargetP12spritetypev7jh
	movl	_TargetSortCount, %eax
	cmpl	$10, %eax
	jbe	L444
	movl	$10, _TargetSortCount
	movl	$10, %eax
L444:
	movl	$10, %edx
	movl	$_TargetSort, 32(%esp)
	movw	%dx, 62(%esp)
	jmp	L461
	.p2align 4,,10
	.p2align 3
L484:
	movl	(%eax), %edx
	subl	(%ebx), %edx
	movl	%eax, %esi
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
	movl	%ecx, 24(%esp)
	je	L452
	movl	%esi, %eax
	movswl	14(%esi), %esi
	movzbl	21(%eax), %ecx
	movl	%esi, 36(%esp)
	movswl	_tilesiz+2(,%esi,4), %edx
	movl	8(%eax), %esi
	movl	%esi, 64(%esp)
	testb	$-128, 12(%eax)
	je	L453
	cmpb	$64, %cl
	je	L482
	movl	36(%esp), %esi
	movl	%ecx, %eax
	imull	%edx, %eax
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	leal	(%esi,%eax,2), %esi
	movl	64(%esp), %eax
	subl	%esi, %eax
L456:
	imull	%ecx, %edx
L458:
	movswl	32(%ebx), %ecx
	addl	%edx, %eax
	subl	8(%ebx), %eax
	imull	%ecx, %eax
	cltd
	idivl	24(%esp)
	movl	44(%esp), %edx
	subl	%edi, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
L452:
	movl	32(%esp), %eax
	movzwl	(%eax), %eax
	movw	%ax, 186(%ebp)
	movl	40(%esp), %eax
	orl	$6, 68(%eax)
	movzwl	28(%ebx), %eax
L459:
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
	subw	$1, 62(%esp)
	movl	%eax, 156(%ebp)
	movswl	36(%ebx), %eax
	movl	%eax, 160(%ebp)
	je	L443
	movl	_TargetSortCount, %eax
L461:
	leal	(%eax,%eax,2), %eax
	movl	32(%esp), %edi
	leal	_TargetSort(,%eax,4), %eax
	cmpl	%eax, %edi
	jnb	L445
	movswl	(%edi), %eax
	testw	%ax, %ax
	jns	L483
L445:
	movl	28(%esp), %eax
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movswl	28(%eax), %ecx
L446:
	movl	28(%esp), %eax
	addl	$1, _krandcount
	movl	8(%eax), %ebx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$2304, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L447
	sall	$14, %eax
	movl	$-1610571775, %esi
	mull	%esi
	shrl	$25, %edx
	sall	$8, %edx
	subl	$2560, %edx
L447:
	movl	52(%esp), %eax
	addl	%edx, %ebx
	movl	%ecx, 16(%esp)
	movl	$2018, %edx
	movl	%ebx, 12(%esp)
	movl	$_s_Micro, %ecx
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	movl	$1200, 20(%esp)
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movswl	24(%eax), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movswl	%ax, %esi
	movl	92(%esp), %eax
	imull	$44, %esi, %ebx
	movl	%esi, %edx
	addl	_sprite, %ebx
	movl	_User(,%esi,4), %ebp
	movswl	348(%eax), %eax
	call	__Z8SetOwnerss
	movl	$-1171354717, %eax
	leal	21(%ebx), %edx
	leal	36(%ebx), %ecx
	subl	_sprite, %edx
	movl	%ecx, 44(%esp)
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
	movl	92(%esp), %eax
	movb	$24, 20(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$-15, 16(%ebx)
	movl	288(%eax), %eax
	movl	%eax, 24(%esp)
	movl	%eax, %edi
	movl	$-1171354717, %eax
	mull	%ecx
	sarl	$31, %edi
	movl	24(%esp), %eax
	xorw	%di, %di
	leal	32768(%eax,%edi), %eax
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
	je	L449
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$18, %edx
	subw	$1280, %dx
L449:
	addl	$1, _spritechanged(,%ecx,4)
	movl	$5, %eax
	addw	%dx, 36(%ebx)
	movl	$_sg_Micro, %edx
	movw	%ax, 80(%ebp)
	movl	%esi, %eax
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	56(%esp), %eax
	leal	12(%ebx), %edx
	movl	_sprite, %edi
	movl	_krandcount, %esi
	movzbl	273(%eax), %eax
	subl	%edi, %edx
	movl	$33554944, 96(%ebp)
	movl	$200, 188(%ebp)
	movb	%al, 273(%ebp)
	movl	$-1171354717, %eax
	mull	%edx
	leal	1(%esi), %eax
	movl	%eax, _krandcount
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
	movl	%ecx, _randomseed
	cmpl	$65535, %ecx
	je	L450
	movl	%ecx, %eax
	movl	$-1610571775, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$24, %edx
	addl	$10, %edx
L450:
	movl	36(%esp), %eax
	movw	%dx, 216(%ebp)
	testl	%eax, %eax
	jne	L484
	movswl	28(%ebx), %eax
	addl	$2, %esi
	movl	%esi, _krandcount
	movl	%eax, 24(%esp)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	$199, %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L460
	movl	$-939472145, %ecx
	sall	$14, %eax
	mull	%ecx
	shrl	$21, %edx
	leal	-200(%edx), %ecx
L460:
	leal	28(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	-16(%eax,%ecx), %edx
	andl	$2047, %edx
	movw	%dx, 28(%ebx)
	movl	%edx, %eax
	jmp	L459
	.p2align 4,,10
	.p2align 3
L483:
	imull	$44, %eax, %esi
	movl	_User(,%eax,4), %eax
	addl	_sprite, %esi
	addl	$12, %edi
	movl	4(%esi), %edx
	subl	52(%esp), %edx
	movl	%esi, 36(%esp)
	movl	%eax, 40(%esp)
	movl	(%esi), %eax
	movl	%eax, %ecx
	subl	48(%esp), %ecx
	movl	%eax, 24(%esp)
	call	@getangle@8
	movl	%edi, 32(%esp)
	movswl	%ax, %ecx
	jmp	L446
	.p2align 4,,10
	.p2align 3
L453:
	cmpb	$64, %cl
	je	L485
	movl	%ecx, %esi
	movl	64(%esp), %eax
	imull	%edx, %esi
	sall	$2, %esi
	subl	%esi, %eax
	jmp	L456
	.p2align 4,,10
	.p2align 3
L443:
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
L482:
	.cfi_restore_state
	movl	36(%esp), %esi
	movl	%edx, %eax
	sall	$7, %eax
	movsbl	_picanm+2(%esi,%esi,4), %ecx
	sall	$8, %ecx
	addl	%eax, %ecx
	movl	64(%esp), %eax
	subl	%ecx, %eax
L455:
	sall	$6, %edx
	jmp	L458
	.p2align 4,,10
	.p2align 3
L485:
	movl	64(%esp), %eax
	movl	%edx, %ecx
	sall	$8, %ecx
	subl	%ecx, %eax
	jmp	L455
	.cfi_endproc
LFE53:
	.p2align 4
	.globl	__Z11InitSobjGunP12PLAYERstruct
	.def	__Z11InitSobjGunP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z11InitSobjGunP12PLAYERstruct:
LFB54:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	52(%esp), %ebp
	movl	%ebx, 32(%esp)
	movl	104(%ebp), %eax
	.cfi_offset 3, -20
	movswl	680(%eax), %ebx
	cmpw	$-1, %bx
	je	L487
	movl	%esi, 36(%esp)
	xorl	%ecx, %ecx
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	%edi, 40(%esp)
	.cfi_offset 7, -12
	jmp	L510
	.p2align 6
	.p2align 4,,10
	.p2align 3
L488:
	addl	$1, %esi
	movswl	%si, %edx
	movswl	680(%eax,%edx,2), %ebx
	cmpw	$-1, %bx
	je	L544
L510:
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	cmpw	$55, 26(%ebx)
	jne	L488
	movswl	38(%ebx), %eax
	testw	%ax, %ax
	jne	L548
L489:
	movzbl	18(%ebx), %edi
	movl	%edi, %eax
	cmpb	$-1, %al
	je	L544
L550:
	testb	%cl, %cl
	jne	L491
	movswl	34(%ebx), %eax
	testw	%ax, %ax
	jne	L549
L491:
	movl	%edi, %eax
	cmpb	$32, %al
	ja	L493
	movzbl	%al, %eax
	jmp	*L495(,%eax,4)
	.section .rdata,"dr"
	.align 4
L495:
	.long	L494
	.long	L501
	.long	L500
	.long	L499
	.long	L498
	.long	L497
	.long	L496
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L493
	.long	L494
	.text
	.p2align 4,,10
	.p2align 3
L494:
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$8, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	104(%ebp), %eax
	movl	%eax, 8(%esp)
	movswl	348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct
	movl	_sprite, %edx
	movl	%ebx, %eax
	movl	$40000, 24(%esp)
	movl	$8, 20(%esp)
	subl	%edx, %eax
	movl	$40, 16(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	imull	$44, %eax, %eax
	addl	%eax, %edx
	movl	8(%edx), %eax
	movl	%eax, 12(%esp)
	movl	4(%edx), %eax
	movl	%eax, 8(%esp)
	movl	(%edx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edx), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z13InitTankShellsP12PLAYERstruct
	movzwl	32(%ebx), %eax
	movl	$80, %edx
	testw	%ax, %ax
	cmove	%edx, %eax
	movw	%ax, 23118(%ebp)
	.p2align 4
	.p2align 3
L493:
	movl	104(%ebp), %eax
	movl	$1, %ecx
	jmp	L488
L497:
	movzbl	_SW_GameFlags, %ecx
	andl	$1, %ecx
	je	L541
L547:
	movl	104(%ebp), %eax
	jmp	L488
L498:
	movzbl	_SW_GameFlags, %ecx
	andl	$1, %ecx
	jne	L547
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z18InitTurretFireballsP12PLAYERstruct
	movzwl	32(%ebx), %eax
	movl	$20, %edx
	movl	$1, %ecx
	testw	%ax, %ax
	cmove	%edx, %eax
	movw	%ax, 23118(%ebp)
	movl	104(%ebp), %eax
	jmp	L488
L496:
	movzbl	_SW_GameFlags, %ecx
	andl	$1, %ecx
	jne	L547
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z15InitTurretMicrosP12PLAYERstruct
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	je	L509
L545:
	movw	%ax, 23118(%ebp)
	movl	$1, %ecx
	movl	104(%ebp), %eax
	jmp	L488
L501:
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	104(%ebp), %eax
	movl	%eax, 8(%esp)
	movswl	348(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z18InitSobjMachineGunsP12PLAYERstruct
	movzwl	32(%ebx), %eax
	movl	$10, %edx
	movl	%edi, %ecx
	testw	%ax, %ax
	cmove	%edx, %eax
	movw	%ax, 23118(%ebp)
	movl	104(%ebp), %eax
	jmp	L488
L499:
	movzbl	_SW_GameFlags, %ecx
	andl	$1, %ecx
	jne	L547
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z14InitTurretRailsP12PLAYERstruct
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	je	L506
	jmp	L545
L500:
	movzbl	_SW_GameFlags, %ecx
	andl	$1, %ecx
	jne	L547
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z15InitTurretLasersP12PLAYERstruct
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	jne	L545
L506:
	movl	$120, %edx
	movl	104(%ebp), %eax
	movl	$1, %ecx
	movw	%dx, 23118(%ebp)
	jmp	L488
	.p2align 4,,10
	.p2align 3
L548:
	movl	$-1, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, (%esp)
	movb	%cl, 31(%esp)
	call	__Z17DoMatchEverythingP12PLAYERstructss
	testb	$64, 42(%ebx)
	movzbl	31(%esp), %ecx
	je	L489
	movl	$-1171354717, %eax
	leal	38(%ebx), %edx
	subl	_sprite, %edx
	xorl	%edi, %edi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 38(%ebx)
	movzbl	18(%ebx), %edi
	movl	%edi, %eax
	cmpb	$-1, %al
	jne	L550
	.p2align 4
	.p2align 3
L544:
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
L487:
	movl	32(%esp), %ebx
	movl	44(%esp), %ebp
	xorl	%eax, %eax
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L549:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16DoSoundSpotMatchsss
	movzbl	18(%ebx), %edi
	jmp	L491
	.p2align 4,,10
	.p2align 3
L541:
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	$32, 8(%esp)
	movl	$-1, %ecx
	sarl	$2, %eax
	movl	$-1, 4(%esp)
	movl	$-1, %edx
	imull	$-1171354717, %eax, %eax
	movl	$-1, (%esp)
	cwtl
	call	__Z8SpawnVisssiiii.isra.0
	movl	%ebx, %eax
	subl	_sprite, %eax
	movl	%ebp, 4(%esp)
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z16InitTurretRocketsP12PLAYERstruct
	movzwl	32(%ebx), %eax
	testw	%ax, %ax
	jne	L545
L509:
	movl	$100, %eax
	movl	$1, %ecx
	movw	%ax, 23118(%ebp)
	movl	104(%ebp), %eax
	jmp	L488
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z14InitTurretMgunP19SECTOR_OBJECTstruct
	.def	__Z14InitTurretMgunP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z14InitTurretMgunP19SECTOR_OBJECTstruct:
LFB56:
	.cfi_startproc
	subl	$92, %esp
	.cfi_def_cfa_offset 96
	movl	96(%esp), %eax
	movl	$12, 4(%esp)
	movl	%ebx, 76(%esp)
	leal	184(%eax), %ecx
	leal	180(%eax), %edx
	addl	$188, %eax
	movl	%eax, (%esp)
	movl	$145, %eax
	.cfi_offset 3, -20
	call	__Z9PlaySoundiPiS_S_i
	movl	96(%esp), %eax
	movswl	680(%eax), %ebx
	cmpw	$-1, %bx
	je	L552
	movl	%esi, 80(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	movl	%ebp, 88(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	%edi, 84(%esp)
	.cfi_offset 7, -12
	movw	%si, 36(%esp)
	jmp	L575
	.p2align 6
	.p2align 4,,10
	.p2align 3
L553:
	addw	$1, 36(%esp)
	movl	96(%esp), %eax
	movswl	36(%esp), %ebp
	movswl	680(%eax,%ebp,2), %ebx
	cmpw	$-1, %bx
	je	L598
L575:
	imull	$44, %ebx, %ebx
	addl	_sprite, %ebx
	cmpw	$55, 26(%ebx)
	jne	L553
	movl	(%ebx), %eax
	movl	%eax, 24(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 32(%esp)
	movl	%eax, 52(%esp)
	movzwl	24(%ebx), %eax
	movw	%ax, 38(%esp)
	movl	96(%esp), %eax
	movl	168(%eax), %ecx
	testl	%ecx, %ecx
	je	L554
	leal	50(%esp), %eax
	leal	52(%esp), %esi
	movl	%ebx, (%esp)
	movl	$512, %edx
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movw	%dx, 50(%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	movl	%eax, %edx
	movw	%ax, 68(%esp)
	movswl	50(%esp), %eax
	cmpl	$-1, %edx
	jne	L555
	movl	%eax, %edx
	movl	52(%esp), %edi
	andl	$2047, %edx
L556:
	movl	%eax, 40(%esp)
	addl	$512, %eax
	leal	56(%esp), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %esi
	movswl	_sintable(%edx,%edx), %eax
	movl	%ecx, 16(%esp)
	movl	28(%esp), %edx
	movl	32(%esp), %ecx
	movl	%edi, 12(%esp)
	movl	%eax, 44(%esp)
	movl	%eax, 8(%esp)
	movswl	38(%esp), %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	24(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$399, %eax
	jle	L600
L563:
	movzwl	72(%esp), %ebp
	testw	%bp, %bp
	js	L553
	movl	68(%esp), %eax
	movswl	70(%esp), %edx
	notl	%eax
	testl	$-2147450880, %eax
	je	L601
L564:
	testw	%dx, %dx
	js	L566
	movl	%edx, %eax
	movl	64(%esp), %ecx
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %esi
	testw	%si, %si
	js	L567
	leal	(%esi,%esi,4), %edi
	movl	_sector, %esi
	testb	$1, 12(%esi,%edi,8)
	je	L567
	cmpl	%ecx, 4(%esi,%edi,8)
	jg	L598
L567:
	movl	60(%esp), %edi
	movl	56(%esp), %esi
	cmpw	$307, 26(%eax)
	je	L602
	movl	%ecx, 4(%esp)
	movswl	%bp, %eax
	movl	%esi, %ecx
	movl	%edi, (%esp)
	call	__Z9QueueHolessiii.isra.0
L566:
	movswl	68(%esp), %eax
	testw	%ax, %ax
	js	L569
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	cmpw	$257, 38(%esi)
	je	L603
L570:
	testb	$32, 43(%esi)
	jne	L604
	movl	64(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	60(%esp), %edx
	movl	%ebx, (%esp)
	movl	%edx, 12(%esp)
	movl	56(%esp), %edx
	movl	%edx, 8(%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L553
	testb	$16, 12(%esi)
	je	L569
	cmpw	$0, 38(%esi)
	jne	L572
	cmpw	$0, 40(%esi)
	jne	L572
	.p2align 4
	.p2align 3
L569:
	movl	40(%esp), %eax
	movl	%eax, 20(%esp)
	movl	64(%esp), %eax
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	movswl	70(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	72(%esp), %eax
	movl	%eax, (%esp)
	call	__Z17SpawnTurretSparksssiiis
	movl	%eax, %ebx
	movzwl	68(%esp), %eax
	cmpw	$16383, %ax
	ja	L553
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L574
	.p2align 5
	.p2align 4,,10
	.p2align 3
L573:
	addl	$2, %eax
	movl	$_StatDamageList+40, %edi
	cmpl	%eax, %edi
	je	L553
L574:
	cmpw	(%eax), %dx
	jne	L573
	movswl	%bx, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	__Z8DoDamagess
	jmp	L553
	.p2align 4,,10
	.p2align 3
L555:
	movswl	28(%ebx), %edi
	movswl	%ax, %ecx
	subl	%edi, %ecx
	movw	%di, 40(%esp)
	movl	%ecx, %edi
	negl	%edi
	cmovns	%edi, %ecx
	movzwl	40(%esp), %edi
	cmpl	$1024, %ecx
	jle	L557
	leal	2048(%eax), %ecx
	cmpw	$1025, %ax
	cmovl	%ecx, %eax
	movl	%edi, %ecx
	leal	2048(%ecx), %edi
	cmpw	$1025, %cx
	cmovge	%ecx, %edi
L557:
	subl	%edi, %eax
	movl	%eax, %ecx
	negw	%cx
	cmovs	%eax, %ecx
	cmpw	$128, %cx
	jg	L598
	cmpw	$24, %cx
	jle	L559
	imull	$44, %edx, %edx
	addl	_sprite, %edx
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi
	movl	_randomseed, %eax
	movl	52(%esp), %edi
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$31, %eax
	subl	$16, %eax
	addw	28(%ebx), %ax
	movl	%edx, _randomseed
	andl	$2047, %eax
	movswl	%ax, %edx
	jmp	L556
	.p2align 4,,10
	.p2align 3
L600:
	movl	%edi, %eax
	movl	44(%esp), %edi
	sarl	$4, %esi
	movl	$-1, 4(%esp)
	sarl	$4, %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	movl	96(%esp), %eax
	sarl	$4, %edi
	movl	%edi, 12(%esp)
	movswl	680(%eax,%ebp,2), %eax
	movl	%eax, (%esp)
	call	__Z20InitTracerAutoTurretssiii
	jmp	L563
	.p2align 4,,10
	.p2align 3
L554:
	movl	$64, %eax
	movl	$0, 12(%esp)
	movw	%ax, 50(%esp)
	leal	50(%esp), %eax
	movl	%eax, 8(%esp)
	leal	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	movl	52(%esp), %edi
	cmpl	$-1, %eax
	je	L599
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$3839, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L562
	sall	$14, %eax
	movl	$-268374015, %edx
	mull	%edx
	shrl	$17, %edx
	subl	$3840, %edx
L562:
	addl	%edx, %edi
L599:
	movswl	50(%esp), %eax
	movl	%eax, %edx
	andl	$2047, %edx
	jmp	L556
	.p2align 4,,10
	.p2align 3
L559:
	movl	_randomseed, %eax
	movl	_krandcount, %esi
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	movl	$15359, %edx
	movzwl	%cx, %ecx
	cmpl	$65535, %ecx
	je	L560
	movl	%ecx, %edx
	movl	$-268374015, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$15, %edx
	subl	$15360, %edx
L560:
	addl	$2, %esi
	movl	52(%esp), %edi
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %eax
	movl	%esi, _krandcount
	movzwl	40(%esp), %esi
	addl	%edx, %edi
	movzwl	%ax, %edx
	andl	$63, %eax
	leal	-32(%esi,%eax), %eax
	movl	%edx, _randomseed
	andl	$2047, %eax
	movswl	%ax, %edx
	jmp	L556
	.p2align 4,,10
	.p2align 3
L604:
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	jmp	L553
	.p2align 4,,10
	.p2align 3
L598:
	movl	80(%esp), %esi
	.cfi_restore 6
	movl	84(%esp), %edi
	.cfi_restore 7
	movl	88(%esp), %ebp
	.cfi_restore 5
L552:
	movl	76(%esp), %ebx
	xorl	%eax, %eax
	addl	$92, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L601:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	64(%esp), %eax
	movswl	%bp, %edi
	leal	(%edi,%edi,4), %ecx
	movl	%eax, 24(%esp)
	movl	_sector, %eax
	leal	(%eax,%ecx,8), %esi
	movl	24(%esp), %ecx
	subl	4(%esi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	cmpl	$256, %eax
	jle	L605
	movl	24(%esp), %ecx
	subl	8(%esi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	cmpl	$256, %eax
	jg	L564
	testb	$12, 39(%esi)
	je	L564
	cmpb	$0, _Prediction
	jne	L553
	movl	24(%esp), %ecx
	movl	60(%esp), %edx
	movl	%edi, (%esp)
	movl	56(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	jmp	L553
	.p2align 4,,10
	.p2align 3
L603:
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	jne	L553
	movswl	68(%esp), %eax
	jmp	L570
	.p2align 4,,10
	.p2align 3
L602:
	movl	40(%esp), %edx
	movl	%ecx, (%esp)
	movl	%edi, %ecx
	movl	$0, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L553
	.p2align 4,,10
	.p2align 3
L605:
	movl	24(%esp), %eax
	addl	$4096, %eax
	movl	%eax, 64(%esp)
	testb	$1, 12(%esi)
	je	L564
	jmp	L553
	.p2align 4,,10
	.p2align 3
L572:
	movswl	68(%esp), %eax
	call	__Z15ShootableSwitchs
	jmp	L569
	.cfi_endproc
LFE56:
	.p2align 4
	.globl	__Z12InitEnemyUzis
	.def	__Z12InitEnemyUzis;	.scl	2;	.type	32;	.endef
__Z12InitEnemyUzis:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-2, %eax
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
	movswl	8(%ebp), %esi
	movl	%eax, 64(%esp)
	movl	_User(,%esi,4), %edi
	movl	%eax, 68(%esp)
	movl	$-2, %eax
	movw	%ax, 80(%esp)
	movl	$128, %eax
	movl	140(%edi), %ebx
	movw	%ax, 282(%edi)
	movl	%esi, (%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, 44(%esp)
	movl	%edi, 40(%esp)
	movl	$-2, 72(%esp)
	movl	$-65538, 76(%esp)
	call	_setspritez
	movswl	14(%ebx), %esi
	movzbl	21(%ebx), %eax
	movl	8(%ebx), %edx
	movswl	_tilesiz+2(,%esi,4), %ecx
	cmpw	$5426, 82(%edi)
	je	L653
	cmpb	$64, %al
	je	L654
	imull	%ecx, %eax
	leal	0(,%eax,4), %ecx
L616:
	movl	%ecx, %eax
	sarl	$2, %eax
	subl	%eax, %ecx
	movl	%ecx, 52(%esp)
L614:
	leal	58(%esp), %eax
	movl	$200, 12(%esp)
	subl	52(%esp), %edx
	movl	%eax, 8(%esp)
	leal	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movl	%edx, 60(%esp)
	call	__Z18AimHitscanToTargetP12spritetypev7PiPsi
	movl	_krandcount, %esi
	cmpl	$-1, %eax
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	je	L617
	movzwl	58(%esp), %eax
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	addl	$2, %esi
	movw	%ax, 48(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movzwl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	leal	(%ecx,%ecx,4), %eax
	leal	1(%ecx,%eax,4), %edi
	movzwl	%di, %edi
	cmpl	$65535, %ecx
	je	L618
	sall	$14, %ecx
	movl	$-1073692671, %eax
	movl	%esi, _krandcount
	mull	%ecx
	movzwl	48(%esp), %eax
	movl	%edi, _randomseed
	shrl	$25, %edx
	leal	-12(%eax,%edx), %ecx
	movl	$5119, %edx
	andw	$2047, %cx
	movw	%cx, 58(%esp)
	cmpl	$65535, %edi
	je	L619
L640:
	sall	$14, %edi
	movl	$-1610571775, %eax
	mull	%edi
	shrl	$16, %edx
	subl	$5120, %edx
L619:
	addl	60(%esp), %edx
	movl	%edx, 60(%esp)
L620:
	movswl	%cx, %edi
	movl	4(%ebx), %esi
	movl	8(%ebx), %ecx
	movl	(%ebx), %eax
	subl	52(%esp), %ecx
	movl	%edi, 48(%esp)
	leal	64(%esp), %edi
	movl	%edi, 16(%esp)
	movl	48(%esp), %edi
	movl	%edx, 12(%esp)
	movswl	_sintable(%edi,%edi), %edx
	movl	%edx, 8(%esp)
	leal	512(%edi), %edx
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %edx
	movl	%edx, 4(%esp)
	movswl	24(%ebx), %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	cmpw	$0, 80(%esp)
	js	L645
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$4, %eax
	andl	$1023, %eax
	cmpl	$700, %eax
	jle	L622
	movl	40(%esp), %eax
	movzwl	82(%eax), %edx
	cmpw	$5023, %dx
	sete	%al
	cmpw	$5032, %dx
	sete	%cl
	orb	%cl, %al
	jne	L642
	cmpw	$4594, %dx
	jne	L623
L642:
	movl	44(%esp), %eax
	movl	$-3, %edx
	call	__Z9InitShellss.isra.0
L622:
	movzwl	__ZZ12InitEnemyUzisE9alternate, %eax
	leal	1(%eax), %edx
	movw	%dx, __ZZ12InitEnemyUzisE9alternate
	cmpw	$2, %ax
	jle	L625
	xorl	%ecx, %ecx
	movw	%cx, __ZZ12InitEnemyUzisE9alternate
L626:
	movzbl	17(%ebx), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	leal	4(%ebx), %edi
	movl	$-1171354717, %ecx
	movl	%edi, 52(%esp)
	movb	%al, 31(%esp)
	movl	%edx, %eax
	mull	%ecx
	movl	%edx, %esi
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	shrl	$5, %esi
	mull	%ecx
	movl	%edx, %edi
	leal	8(%ebx), %edx
	movl	%edx, 36(%esp)
	subl	_sprite, %edx
	shrl	$5, %edi
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, 32(%esp)
	movzbl	31(%esp), %eax
	cmpb	$24, %al
	ja	L628
	movl	$19529728, %ecx
	btl	%eax, %ecx
	jnc	L628
	movl	32(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movl	36(%esp), %eax
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%edi,4)
	addl	$1, _spritechanged(,%esi,4)
	movl	%eax, (%esp)
	movl	$319, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L627
	.p2align 4,,10
	.p2align 3
L654:
	sall	$8, %ecx
	jmp	L616
	.p2align 4,,10
	.p2align 3
L617:
	leal	1(%esi), %edx
	movl	%ecx, _randomseed
	movl	%edx, _krandcount
	testb	$2, %ah
	jne	L655
L645:
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
L653:
	.cfi_restore_state
	testb	$-128, 12(%ebx)
	jne	L656
	cmpb	$64, %al
	je	L657
	imull	%ecx, %eax
	sall	$2, %eax
L613:
	movl	%edx, %ecx
	subl	%eax, %ecx
L611:
	leal	5120(%ecx), %eax
	movl	%eax, 52(%esp)
	jmp	L614
	.p2align 4,,10
	.p2align 3
L625:
	testw	%dx, %dx
	je	L626
L627:
	movzwl	78(%esp), %eax
	testw	%ax, %ax
	js	L630
	movswl	%ax, %esi
	movl	72(%esp), %edi
	movl	%esi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %edx
	testw	%dx, %dx
	js	L631
	leal	(%edx,%edx,4), %ecx
	movl	_sector, %edx
	testb	$1, 12(%edx,%ecx,8)
	je	L631
	cmpl	%edi, 4(%edx,%ecx,8)
	jg	L645
L631:
	movl	68(%esp), %ecx
	movl	64(%esp), %edx
	cmpw	$307, 26(%eax)
	je	L658
	movl	%ecx, (%esp)
	movswl	80(%esp), %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	%edi, 4(%esp)
	call	__Z9QueueHolessiii.isra.0
L630:
	movswl	76(%esp), %eax
	testw	%ax, %ax
	js	L633
	movl	72(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	68(%esp), %edx
	movl	%ebx, (%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %edx
	movl	%edx, 8(%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L645
L633:
	movl	48(%esp), %eax
	movl	$_s_UziSmoke, %ecx
	movl	$2148, %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	80(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %esi
	movl	$-1171354717, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	addl	%eax, %esi
	addl	$16, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$24, 20(%esi)
	mull	%ecx
	movl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$24, 21(%esi)
	cmpw	$1095, 82(%eax)
	je	L659
	movl	44(%esp), %eax
	movl	%edi, %edx
	call	__Z8SetOwnerss
L635:
	movl	_User(,%edi,4), %eax
	movl	$63, %edx
	movl	$-1171354717, %edi
	movl	_sprite, %ecx
	movw	%dx, 216(%eax)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%esi), %edx
	subl	%ecx, %edx
	orw	$128, 12(%esi)
	movl	$_s_UziSmoke, %ecx
	movl	%edx, %eax
	mull	%edi
	movl	48(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$2146, %edx
	movb	$8, 18(%esi)
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	$0, 20(%esp)
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	80(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
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
	movb	$24, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movb	$24, 21(%ebx)
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$128, 12(%ebx)
	movl	%edx, %eax
	mull	%edi
	movswl	78(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%ebx)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movzwl	76(%esp), %eax
	cmpw	$16383, %ax
	ja	L636
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L638
	.p2align 4
	.p2align 4,,10
	.p2align 3
L637:
	addl	$2, %eax
	cmpl	$_StatDamageList+40, %eax
	je	L636
L638:
	cmpw	(%eax), %dx
	jne	L637
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z8DoDamagess
L636:
	movl	48(%esp), %eax
	movl	$_s_UziSpark, %ecx
	movl	$2140, %edx
	movl	$0, 20(%esp)
	movl	$-1171354717, %esi
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movl	68(%esp), %eax
	movl	%eax, 8(%esp)
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	80(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebx
	movl	%ebx, 52(%esp)
	leal	(%ecx,%eax), %ebx
	addl	$16, %eax
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
	movb	$24, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movb	$24, 21(%ebx)
	call	__Z8SetOwnerss
	movzbl	17(%ebx), %eax
	movl	52(%esp), %ecx
	leal	12(%ebx), %edx
	movb	%al, 262(%ecx)
	movl	_sprite, %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$128, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	movswl	78(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%ebx)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	_krandcount, %edx
	leal	1(%edx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	movzwl	%ax, %ecx
	andl	$1023, %eax
	movl	%ecx, _randomseed
	cmpl	$99, %eax
	jle	L660
	leal	(%ecx,%ecx,4), %eax
	addl	$2, %edx
	leal	1(%ecx,%eax,4), %eax
	movl	%edx, _krandcount
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$99, %eax
	jg	L645
	leal	8(%ebx), %edi
	leal	4(%ebx), %ecx
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
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$7, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L645
	.p2align 4,,10
	.p2align 3
L618:
	movzwl	48(%esp), %eax
	movl	%esi, _krandcount
	movl	$65516, _randomseed
	addl	$11, %eax
	andw	$2047, %ax
	movw	%ax, 58(%esp)
	movl	%eax, %ecx
	jmp	L640
	.p2align 4,,10
	.p2align 3
L656:
	cmpb	$64, %al
	je	L661
	imull	%ecx, %eax
	leal	(%eax,%eax), %ecx
L610:
	movsbl	_picanm+2(%esi,%esi,4), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	jmp	L611
	.p2align 4,,10
	.p2align 3
L655:
	leal	(%ecx,%ecx,4), %eax
	addl	$2, %esi
	movl	$0, 60(%esp)
	xorl	%edx, %edx
	leal	1(%ecx,%eax,4), %ecx
	movl	%esi, _krandcount
	movzwl	%cx, %eax
	andl	$127, %ecx
	subl	$64, %ecx
	addw	28(%ebx), %cx
	movl	%eax, _randomseed
	andw	$2047, %cx
	jmp	L620
	.p2align 4,,10
	.p2align 3
L660:
	leal	8(%ebx), %edi
	leal	4(%ebx), %ecx
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
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$6, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
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
L628:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movl	36(%esp), %eax
	movl	%ebx, %edx
	addl	$1, _spritechanged(,%edi,4)
	addl	$1, _spritechanged(,%esi,4)
	movl	%eax, (%esp)
	movl	$93, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L627
	.p2align 4,,10
	.p2align 3
L659:
	movswl	30(%ebx), %eax
	movl	%edi, %edx
	call	__Z8SetOwnerss
	jmp	L635
	.p2align 4,,10
	.p2align 3
L623:
	movl	44(%esp), %eax
	movl	$-2, %edx
	call	__Z9InitShellss.isra.0
	jmp	L622
	.p2align 4,,10
	.p2align 3
L657:
	movl	%ecx, %eax
	sall	$8, %eax
	jmp	L613
	.p2align 4,,10
	.p2align 3
L661:
	sall	$7, %ecx
	jmp	L610
	.p2align 4,,10
	.p2align 3
L658:
	movl	40(%esp), %ebx
	movswl	82(%ebx), %ebx
	movl	%edi, (%esp)
	movl	%ebx, 8(%esp)
	movl	48(%esp), %ebx
	movl	%ebx, 4(%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L645
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__Z12InitFireballP12PLAYERstruct
	.def	__Z12InitFireballP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z12InitFireballP12PLAYERstruct:
LFB58:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	$-1, %ecx
	movl	$8, %edx
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	64(%esp), %esi
	movl	%ebx, 44(%esp)
	movswl	348(%esi), %eax
	.cfi_offset 3, -20
	movl	_User(,%eax,4), %ebx
	movl	%esi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%esi), %eax
	leal	4(%esi), %ecx
	movl	%esi, %edx
	movl	%eax, (%esp)
	movl	$20, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$128, %eax
	movw	%ax, 282(%ebx)
	movswl	268(%esi), %ecx
	testw	%cx, %cx
	js	L663
	movl	%edi, 52(%esp)
	movl	%ebp, 56(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	300(%esi), %ebp
	movl	388(%esi), %eax
	addl	8(%esi), %eax
	movl	%ebp, %edx
	addl	$3840, %eax
	movl	(%esi), %ebx
	movl	4(%esi), %edi
	sarl	$31, %edx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	xorw	%dx, %dx
	movl	%edi, 8(%esp)
	leal	32768(%ebp,%edx), %ebp
	movl	%ebx, 4(%esp)
	testl	%ebp, %ebp
	leal	65535(%ebp), %edx
	movl	%ecx, (%esp)
	movl	$_s_Fireball, %ecx
	cmovns	%ebp, %edx
	movl	$2000, 20(%esp)
	sarl	$16, %edx
	movl	%edx, 16(%esp)
	movl	$2010, %edx
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ebp
	movl	%edi, 24(%esp)
	movl	$-1171354717, %edi
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
	movb	$40, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$40, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movb	$8, 18(%ebx)
	movswl	348(%esi), %eax
	call	__Z8SetOwnerss
	leal	12(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$100, 188(%ebp)
	movl	$100664832, 96(%ebp)
	movl	288(%esi), %edx
	movl	352(%esi), %ecx
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
	imull	$240, %edx, %eax
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movl	%eax, 32(%esp)
	movl	%eax, 40(%esp)
	movzbl	18(%ecx), %eax
	movb	%al, 38(%esp)
	movl	%edx, %eax
	mull	%edi
	leal	28(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$0, 18(%ecx)
	movswl	28(%ebx), %ecx
	mull	%edi
	movl	24(%esp), %eax
	addl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$2100, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movswl	28(%ebx), %ecx
	mull	%edi
	subl	$512, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	testb	$2, 22970(%esi)
	je	L676
L666:
	orl	$1073741824, 68(%ebp)
L667:
	movl	32(%esp), %eax
	movl	$44000, %edx
/APP
 # 19653 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	$1200, 8(%esp)
	movl	$__Z10DoFireballs, 4(%esp)
	movl	%eax, (%esp)
	call	__Z17TestMissileSetPossPFisEii
	movl	352(%esi), %ecx
	movl	_sprite, %edi
	movb	%al, 39(%esp)
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%edi, %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 39(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	38(%esp), %eax
	movb	%al, 18(%ecx)
	jne	L677
	leal	36(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%edi, %edx
	mull	%edx
	movl	32(%esp), %eax
	sarl	%eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 36(%ebx)
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	$0, 16(%esp)
	movl	$32, 12(%esp)
	movl	%eax, 4(%esp)
	movl	352(%esi), %eax
	movl	%eax, (%esp)
	call	__Z17WeaponAutoAimZvelP12spritetypev7sPish
	movzwl	28(%ebx), %ecx
	cmpl	$-1, %eax
	jne	L669
	movl	$-1171354717, %eax
	movl	28(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	leal	2039(%ecx), %eax
	andl	$2047, %eax
	movl	%eax, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
L669:
	leal	512(%ecx), %eax
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
	movl	40(%esp), %eax
	movl	%eax, 160(%ebp)
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
L663:
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	xorl	%eax, %eax
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L676:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L667
	jmp	L666
	.p2align 4,,10
	.p2align 3
L677:
	movl	24(%esp), %eax
	call	__Z10KillSprites
	movl	52(%esp), %edi
	.cfi_restore 7
	movl	56(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__Z17InitEnemyFireballs
	.def	__Z17InitEnemyFireballs;	.scl	2;	.type	32;	.endef
__Z17InitEnemyFireballs:
LFB59:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	_sprite, %ecx
	movswl	88(%esp), %eax
	movl	%eax, 56(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %esi
	movl	200(%eax), %eax
	leal	8(%esi), %edi
	movl	%eax, 60(%esp)
	leal	4(%esi), %ebp
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%ebp, %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$187, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	60(%esp), %eax
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
	movswl	%cx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	14(%esi), %ebx
	movzbl	21(%esi), %edx
	movw	%cx, 28(%esi)
	movswl	_tilesiz+2(,%ebx,4), %ebx
	cmpb	$64, %dl
	je	L691
	imull	%ebx, %edx
	sarl	$6, %edx
	sall	$8, %edx
L680:
	movl	8(%esi), %edi
	movl	%edx, %ebx
	movl	$0, 32(%esp)
	sarl	$2, %ebx
	movl	$0, 40(%esp)
	subl	%edx, %edi
	sarl	$3, %edx
	addl	%edi, %ebx
	leal	1024(%ebx,%edx), %edi
	leal	512(%ecx), %edx
	andl	$2047, %edx
	movl	%edi, 44(%esp)
	movl	$-1171354717, %edi
	movswl	_sintable(%edx,%edx), %edx
	imull	$800, %edx, %edx
	sarl	$14, %edx
	movl	%edx, 48(%esp)
	movswl	_sintable(%ecx,%ecx), %edx
	imull	$800, %edx, %edx
	sarl	$14, %edx
	movl	%edx, 52(%esp)
L685:
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	movl	$_s_Fireball, %ecx
	movl	$2036, %edx
	movl	$800, 20(%esp)
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
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %edx
	movl	%edx, 36(%esp)
	leal	(%ecx,%eax), %ebp
	addl	$40, %eax
	mull	%edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebp), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebp), %edx
	subl	%ecx, %edx
	movb	$20, 20(%ebp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebp), %edx
	subl	%ecx, %edx
	movb	$20, 21(%ebp)
	movl	%edx, %eax
	mull	%edi
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movb	$-40, 16(%ebp)
	call	__Z8SetOwnerss
	leal	36(%ebp), %eax
	movl	%eax, 64(%esp)
	subl	_sprite, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebp)
	leal	18(%ebp), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	movzwl	__ZZ17InitEnemyFireballsE7lat_ang.lto_priv.0(%eax,%eax), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	28(%ebp), %ecx
	movw	%ax, 24(%esp)
	addl	%eax, %ecx
	leal	28(%ebp), %eax
	movb	$4, 18(%ebp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 28(%esp)
	andw	$2047, %cx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebp)
	movl	$500, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	28(%esp), %eax
	subl	_sprite, %eax
	mull	%edi
	movzwl	28(%ebp), %ecx
	subw	24(%esp), %cx
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movw	%cx, 28(%ebp)
	movl	48(%esp), %ecx
	movl	%ecx, 152(%edx)
	movl	52(%esp), %ecx
	movl	%ecx, 156(%edx)
	movl	$700, 8(%esp)
	movl	$__Z10DoFireballs, 4(%esp)
	movl	%ebx, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	je	L692
	movl	40(%esp), %eax
	movl	36(%esp), %esi
	movswl	36(%eax), %eax
	movw	%ax, 36(%ebp)
	movl	%eax, 160(%esi)
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
L692:
	.cfi_restore_state
	movl	60(%esp), %ebx
	movl	0(%ebp), %ecx
	movl	4(%ebp), %eax
	subl	(%ebx), %ecx
	subl	4(%ebx), %eax
	imull	%eax, %eax
	imull	%ecx, %ecx
	addl	%eax, %ecx
	call	@ksqrt@4
	movzbl	21(%esi), %edx
	movl	%eax, %ebx
	movswl	14(%esi), %eax
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L693
	imull	%eax, %edx
	sarl	$6, %edx
	sall	$7, %edx
L683:
	testl	%ebx, %ebx
	je	L684
	movl	60(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	subl	%edx, %eax
	subl	8(%ebp), %eax
	imull	$800, %eax, %eax
	cltd
	idivl	%ebx
	movl	$-1171354717, %edx
	movl	%eax, %ecx
	movl	64(%esp), %eax
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	36(%esp), %eax
	movw	%cx, 36(%ebp)
	movswl	%cx, %ecx
	movl	%ecx, 160(%eax)
L684:
	movl	%ebp, 40(%esp)
	movswl	28(%esi), %eax
	movl	$1, 32(%esp)
	jmp	L685
	.p2align 4,,10
	.p2align 3
L691:
	sall	$8, %ebx
	movl	%ebx, %edx
	jmp	L680
	.p2align 4,,10
	.p2align 3
L693:
	sall	$7, %eax
	movl	%eax, %edx
	jmp	L683
	.cfi_endproc
LFE59:
	.section	.text.unlikely,"x"
LCOLDB3:
	.text
LHOTB3:
	.p2align 4
	.globl	__Z16WarpToUnderwaterPsPiS0_S0_
	.def	__Z16WarpToUnderwaterPsPiS0_S0_;	.scl	2;	.type	32;	.endef
__Z16WarpToUnderwaterPsPiS0_S0_:
LFB60:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %eax
	movl	44(%esp), %ecx
	movswl	(%eax), %eax
	movl	_SectUser(,%eax,4), %eax
	movzwl	22(%eax), %eax
	movw	%ax, 6(%esp)
	testw	%ax, %ax
	je	L708
	movswl	_headspritestat+98, %eax
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpw	$-1, %ax
	je	L709
	movl	_sprite, %edi
	movl	_sector, %esi
	jmp	L697
	.p2align 6
	.p2align 4,,10
	.p2align 3
L700:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L696
L697:
	imull	$44, %eax, %edx
	addl	%edi, %edx
	movswl	24(%edx), %ebx
	leal	(%ebx,%ebx,4), %ebp
	testb	$-128, 38(%esi,%ebp,8)
	je	L700
	movl	_SectUser(,%ebx,4), %ebx
	testl	%ebx, %ebx
	je	L700
	movzwl	6(%esp), %ebp
	cmpw	22(%ebx), %bp
	jne	L700
L696:
	movswl	_headspritestat+100, %eax
	cmpw	$-1, %ax
	je	L702
	movl	%edx, 8(%esp)
	movl	_sprite, %ebp
	movl	_sector, %edi
	jmp	L703
	.p2align 6
	.p2align 4,,10
	.p2align 3
L706:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L713
L703:
	imull	$44, %eax, %ebx
	addl	%ebp, %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %esi
	testb	$1, 39(%edi,%esi,8)
	je	L706
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L706
	movzwl	6(%esp), %esi
	cmpw	22(%edx), %si
	jne	L706
L713:
	movl	8(%esp), %edx
	movl	40(%esp), %edi
	movl	(%ebx), %eax
	movl	4(%edx), %esi
	subl	(%edx), %eax
	subl	(%ecx), %esi
	addl	%eax, (%edi)
	movl	4(%ebx), %eax
	subl	%esi, %eax
	movl	%eax, (%ecx)
	movzwl	24(%edx), %edx
	leal	14(%esp), %ecx
	movl	(%edi), %esi
	movw	%dx, 14(%esp)
	movzwl	24(%ebx), %edx
	movw	%dx, 12(%esp)
	leal	12(%esp), %edx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%esi, %eax
	call	__Z16GetOverlapSectoriiPsS_
	movzwl	12(%esp), %eax
	movl	36(%esp), %ecx
	movw	%ax, (%ecx)
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	48(%esp), %edx
	movl	4(%eax), %eax
	addl	$256, %eax
	movl	%eax, (%edx)
	movl	$1, %eax
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L708:
	.cfi_def_cfa_offset 36
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
L709:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edx, %edx
	jmp	L696
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z16WarpToUnderwaterPsPiS0_S0_.cold;	.scl	3;	.type	32;	.endef
__Z16WarpToUnderwaterPsPiS0_S0_.cold:
LFSB60:
L702:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	0, %eax
	ud2
	.cfi_endproc
LFE60:
	.text
	.section	.text.unlikely,"x"
LCOLDE3:
	.text
LHOTE3:
	.section	.text.unlikely,"x"
LCOLDB4:
	.text
LHOTB4:
	.p2align 4
	.globl	__Z13WarpToSurfacePsPiS0_S0_
	.def	__Z13WarpToSurfacePsPiS0_S0_;	.scl	2;	.type	32;	.endef
__Z13WarpToSurfacePsPiS0_S0_:
LFB61:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	36(%esp), %eax
	movl	44(%esp), %ecx
	movswl	(%eax), %eax
	movl	_SectUser(,%eax,4), %eax
	movzwl	22(%eax), %eax
	movw	%ax, 6(%esp)
	testw	%ax, %ax
	je	L729
	movswl	_headspritestat+100, %eax
	movl	%ebx, 16(%esp)
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	movl	%ebp, 28(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	cmpw	$-1, %ax
	je	L730
	movl	_sprite, %edi
	movl	_sector, %esi
	jmp	L717
	.p2align 6
	.p2align 4,,10
	.p2align 3
L720:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L716
L717:
	imull	$44, %eax, %edx
	addl	%edi, %edx
	movswl	24(%edx), %ebx
	leal	(%ebx,%ebx,4), %ebp
	testb	$1, 39(%esi,%ebp,8)
	je	L720
	movl	_SectUser(,%ebx,4), %ebx
	testl	%ebx, %ebx
	je	L720
	movzwl	6(%esp), %ebp
	cmpw	22(%ebx), %bp
	jne	L720
L716:
	movswl	_headspritestat+98, %eax
	cmpw	$-1, %ax
	je	L722
	movl	%edx, 8(%esp)
	movl	_sprite, %ebp
	movl	_sector, %edi
	jmp	L723
	.p2align 6
	.p2align 4,,10
	.p2align 3
L726:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L737
L723:
	imull	$44, %eax, %ebx
	addl	%ebp, %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %esi
	testb	$-128, 38(%edi,%esi,8)
	je	L726
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L726
	movzwl	6(%esp), %esi
	cmpw	22(%edx), %si
	jne	L726
L737:
	movl	8(%esp), %edx
	movl	40(%esp), %edi
	movl	(%ebx), %eax
	movl	4(%edx), %esi
	subl	(%edx), %eax
	subl	(%ecx), %esi
	addl	%eax, (%edi)
	movl	4(%ebx), %eax
	subl	%esi, %eax
	movl	%eax, (%ecx)
	movzwl	24(%edx), %edx
	movzwl	24(%ebx), %ecx
	movl	(%edi), %esi
	movw	%dx, 12(%esp)
	leal	12(%esp), %edx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	%esi, %eax
	movw	%cx, 14(%esp)
	leal	14(%esp), %ecx
	call	__Z16GetOverlapSectoriiPsS_
	testl	%eax, %eax
	jne	L738
L728:
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	48(%esp), %edx
	movl	8(%eax), %eax
	subl	$512, %eax
	movl	%eax, (%edx)
	movl	$1, %eax
	movl	16(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	.cfi_restore 5
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L738:
	.cfi_restore_state
	movzwl	14(%esp), %eax
	movl	36(%esp), %ecx
	movw	%ax, (%ecx)
	jmp	L728
	.p2align 4,,10
	.p2align 3
L729:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	xorl	%eax, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 4
	ret
L730:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%edx, %edx
	jmp	L716
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z13WarpToSurfacePsPiS0_S0_.cold;	.scl	3;	.type	32;	.endef
__Z13WarpToSurfacePsPiS0_S0_.cold:
LFSB61:
L722:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	0, %eax
	ud2
	.cfi_endproc
LFE61:
	.text
	.section	.text.unlikely,"x"
LCOLDE4:
	.text
LHOTE4:
	.p2align 4
	.globl	__Z7InitUziP12PLAYERstruct
	.def	__Z7InitUziP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z7InitUziP12PLAYERstruct:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1, %ecx
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
	movl	100(%esp), %ebp
	movswl	348(%ebp), %eax
	movl	_User(,%eax,4), %eax
	movsbl	273(%eax), %edx
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	movl	__ZZ7InitUziP12PLAYERstructE8uziclock, %edx
	movl	_totalclock, %eax
	cmpl	%eax, %edx
	jg	L740
	movl	%eax, %ecx
	subl	%edx, %ecx
	cmpl	$20, %ecx
	jg	L740
L741:
	movl	24(%esp), %eax
	movl	$128, %edx
	addl	$1, _krandcount
	movw	%dx, 282(%eax)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$399, %eax
	jle	L808
L742:
	leal	54(%esp), %eax
	movl	388(%ebp), %esi
	addl	8(%ebp), %esi
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	leal	56(%esp), %eax
	movl	$32, %edi
	movl	%eax, 4(%esp)
	movl	352(%ebp), %eax
	movw	%di, 54(%esp)
	movl	%eax, (%esp)
	movl	%esi, 56(%esp)
	call	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh
	movl	_krandcount, %edi
	cmpl	$-1, %eax
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ebx
	movzwl	%bx, %ebx
	jne	L809
	movl	300(%ebp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	movl	$23, %edx
	testl	%eax, %eax
	leal	65535(%eax), %ecx
	cmovns	%eax, %ecx
	sarl	$16, %ecx
	cmpl	$65535, %ebx
	je	L748
	movl	%ebx, %eax
	movl	$-1073692671, %edx
	sall	$14, %eax
	mull	%edx
	shrl	$25, %edx
L748:
	leal	-12(%edx,%ecx), %ecx
	movl	288(%ebp), %edx
	andw	$2047, %cx
	movl	%edx, %eax
	movw	%cx, 54(%esp)
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	addl	$2, %edi
	movl	%edi, _krandcount
	sarl	$16, %eax
	subl	%eax, %edx
	imull	$2000, %edx, %eax
	movl	%eax, 28(%esp)
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %eax
	movl	$11999, %ebx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L750
	sall	$14, %eax
	movl	$1572907689, %edx
	mull	%edx
	shrl	$14, %edx
	leal	-12000(%edx), %ebx
L750:
	movl	28(%esp), %eax
	addl	%eax, %ebx
L746:
	movswl	%cx, %edi
	movl	4(%ebp), %edx
	movl	%ebx, 56(%esp)
	leal	512(%edi), %eax
	movl	%edi, 28(%esp)
	movswl	_sintable(%edi,%edi), %edi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%edi, %ecx
	movl	%edi, 36(%esp)
	leal	60(%esp), %edi
	movl	%ecx, 8(%esp)
	movl	%esi, %ecx
	movl	%edi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	%eax, 32(%esp)
	movswl	268(%ebp), %eax
	movl	%eax, (%esp)
	movl	0(%ebp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movswl	76(%esp), %eax
	testw	%ax, %ax
	js	L785
	movl	72(%esp), %ecx
	movswl	74(%esp), %edx
	notl	%ecx
	andl	$-2147450880, %ecx
	je	L810
L752:
	xorl	%ecx, %ecx
	movw	%cx, 40(%esp)
L754:
	testw	%dx, %dx
	js	L756
	movl	%edx, %ebx
	movl	68(%esp), %edi
	sall	$5, %ebx
	addl	_wall, %ebx
	movswl	12(%ebx), %ecx
	testw	%cx, %cx
	js	L757
	leal	(%ecx,%ecx,4), %esi
	movl	_sector, %ecx
	testb	$1, 12(%ecx,%esi,8)
	je	L757
	cmpl	%edi, 4(%ecx,%esi,8)
	jg	L785
L757:
	movl	64(%esp), %ecx
	movl	60(%esp), %esi
	cmpw	$307, 26(%ebx)
	je	L811
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	movl	%edi, 4(%esp)
	call	__Z9QueueHolessiii.isra.0
L756:
	movswl	72(%esp), %eax
	testw	%ax, %ax
	js	L759
	imull	$44, %eax, %ebx
	movl	_sprite, %ecx
	movl	_User(,%eax,4), %esi
	addl	%ecx, %ebx
	testl	%esi, %esi
	je	L761
	cmpw	$2540, 82(%esi)
	je	L812
L761:
	cmpw	$257, 38(%ebx)
	je	L813
L764:
	testb	$32, 43(%ebx)
	je	L765
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	testl	%eax, %eax
	jne	L785
	movswl	72(%esp), %eax
L765:
	movl	68(%esp), %edx
	movl	$0, 20(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, 16(%esp)
	movl	64(%esp), %edx
	movl	%edx, 12(%esp)
	movl	60(%esp), %edx
	movl	%edx, 8(%esp)
	movl	352(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z15BulletHitSpriteP12spritetypev7siiis
	testl	%eax, %eax
	jne	L785
	testb	$16, 12(%ebx)
	je	L759
	cmpw	$0, 38(%ebx)
	jne	L766
	cmpw	$0, 40(%ebx)
	je	L759
L766:
	movswl	72(%esp), %eax
	call	__Z15ShootableSwitchs
	.p2align 4
	.p2align 3
L759:
	movl	28(%esp), %eax
	movl	$_s_UziSmoke, %ecx
	movl	$2146, %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	68(%esp), %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	76(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movl	$-1171354717, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	leal	(%edi,%eax), %ebx
	addl	$16, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%edi, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%edi, %edx
	movb	$24, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movb	$24, 21(%ebx)
	movswl	348(%ebp), %eax
	call	__Z8SetOwnerss
	leal	12(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	_sprite, %edx
	movl	%edx, %eax
	movzwl	40(%esp), %edi
	mull	%ecx
	orw	$128, %di
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	orw	%di, 12(%ebx)
	mull	%ecx
	movswl	74(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%ebx)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__Z19HitscanSpriteAdjustss
	movzwl	72(%esp), %eax
	cmpw	$16383, %ax
	ja	L767
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	addl	_sprite, %eax
	movzwl	26(%eax), %edx
	movl	$_StatDamageList, %eax
	jmp	L769
	.p2align 4
	.p2align 4,,10
	.p2align 3
L768:
	addl	$2, %eax
	cmpl	$_StatDamageList+40, %eax
	je	L767
L769:
	cmpw	(%eax), %dx
	jne	L768
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z8DoDamagess
L767:
	movl	28(%esp), %eax
	movl	$_s_UziSpark, %ecx
	movl	$2140, %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	68(%esp), %eax
	movl	%eax, 12(%esp)
	movl	64(%esp), %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	76(%esp), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %esi
	movl	%ecx, 28(%esp)
	movl	%esi, 24(%esp)
	movl	$-1171354717, %esi
	addl	%eax, %ebx
	addl	$16, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-40, 16(%ebx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$24, 20(%ebx)
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movb	$24, 21(%ebx)
	movswl	348(%ebp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	17(%ebx), %edx
	movl	28(%esp), %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$0, 17(%ebx)
	movb	$0, 262(%eax)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	orw	%di, 12(%ebx)
	movl	%edx, %eax
	mull	%esi
	movswl	74(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$2, 18(%ebx)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z19HitscanSpriteAdjustss
	movl	_krandcount, %ecx
	leal	1(%ecx), %eax
	movl	%eax, _krandcount
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$99, %eax
	jg	L770
	movl	_sprite, %ebp
	leal	8(%ebx), %edi
	leal	4(%ebx), %ecx
	movl	%edi, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$6, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
L785:
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
L740:
	.cfi_restore_state
	movl	%eax, __ZZ7InitUziP12PLAYERstructE8uziclock
	leal	8(%ebp), %eax
	leal	4(%ebp), %ecx
	movl	%ebp, %edx
	movl	%eax, (%esp)
	movl	$5, %eax
	movl	$12, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L741
	.p2align 4,,10
	.p2align 3
L809:
	cmpl	$65535, %ebx
	je	L744
	movl	%ebx, %edx
	movl	$-1073692671, %eax
	movzwl	54(%esp), %ecx
	addl	$2, %edi
	sall	$14, %edx
	movl	%edi, _krandcount
	mull	%edx
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %eax
	movl	$4999, %ebx
	movzwl	%ax, %eax
	shrl	$25, %edx
	movl	%eax, _randomseed
	leal	-12(%ecx,%edx), %ecx
	andw	$2047, %cx
	movw	%cx, 54(%esp)
	cmpl	$65535, %eax
	jne	L771
	addl	56(%esp), %ebx
	jmp	L746
	.p2align 4,,10
	.p2align 3
L744:
	movzwl	54(%esp), %eax
	addl	$2, %edi
	movl	$65516, _randomseed
	movl	%edi, _krandcount
	leal	11(%eax), %ecx
	movl	$65516, %eax
	andw	$2047, %cx
	movw	%cx, 54(%esp)
L771:
	sall	$12, %eax
	movl	$655373321, %edx
	mull	%edx
	shrl	$12, %edx
	leal	-5000(%edx), %ebx
	addl	56(%esp), %ebx
	jmp	L746
	.p2align 4,,10
	.p2align 3
L808:
	movl	%ebp, (%esp)
	call	__Z13InitTracerUziP12PLAYERstruct
	jmp	L742
	.p2align 4,,10
	.p2align 3
L770:
	leal	2(%ecx), %eax
	movl	%eax, _krandcount
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$99, %eax
	jg	L785
	movl	_sprite, %ebp
	leal	8(%ebx), %edi
	leal	4(%ebx), %ecx
	movl	%edi, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$7, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	jmp	L785
	.p2align 4,,10
	.p2align 3
L810:
	movl	68(%esp), %esi
	movswl	%ax, %ecx
	movl	%ecx, 48(%esp)
	movl	%esi, 44(%esp)
	leal	(%ecx,%ecx,4), %esi
	movl	_sector, %ecx
	leal	(%ecx,%esi,8), %ecx
	movl	44(%esp), %esi
	subl	4(%ecx), %esi
	movl	%ecx, 40(%esp)
	movl	%esi, %ecx
	negl	%ecx
	cmovs	%esi, %ecx
	cmpl	$256, %ecx
	jle	L814
	movl	40(%esp), %ecx
	movl	44(%esp), %esi
	subl	8(%ecx), %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovs	%esi, %ecx
	cmpl	$256, %ecx
	jg	L752
	movl	40(%esp), %ecx
	movzwl	38(%ecx), %ecx
	movl	%ecx, %esi
	andw	$3072, %si
	movw	%si, 40(%esp)
	je	L754
	cmpb	$0, _Prediction
	jne	L755
	movl	48(%esp), %eax
	movl	44(%esp), %ecx
	movl	64(%esp), %edx
	movl	%eax, (%esp)
	movl	60(%esp), %eax
	call	__Z13SpawnSplashXYiiis.part.0
	movswl	76(%esp), %eax
	movl	_sector, %esi
	leal	(%eax,%eax,4), %eax
	leal	(%esi,%eax,8), %eax
	movzwl	38(%eax), %ecx
L755:
	andl	$128, %ecx
	je	L785
	leal	68(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	leal	64(%esp), %eax
	movl	%eax, 8(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16WarpToUnderwaterPsPiS0_S0_
L807:
	movl	36(%esp), %eax
	movswl	76(%esp), %edx
	movl	%ebx, 20(%esp)
	movl	60(%esp), %ecx
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 12(%esp)
	movl	28(%esp), %eax
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0
	jmp	L785
	.p2align 4,,10
	.p2align 3
L813:
	movl	%eax, 8(%esp)
	movl	$3, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	jne	L785
	movswl	72(%esp), %eax
	jmp	L764
	.p2align 4,,10
	.p2align 3
L811:
	movl	24(%esp), %eax
	movl	%esi, %edx
	movswl	82(%eax), %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	%ebx, %eax
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L785
	.p2align 4,,10
	.p2align 3
L814:
	movl	44(%esp), %ecx
	addl	$4096, %ecx
	movl	%ecx, 68(%esp)
	movl	40(%esp), %ecx
	testb	$1, 12(%ecx)
	jne	L785
	movl	$8, %esi
	movw	%si, 40(%esp)
	testb	$3, 39(%ecx)
	je	L754
	leal	68(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 12(%esp)
	leal	64(%esp), %eax
	movl	%eax, 8(%esp)
	leal	76(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13WarpToSurfacePsPiS0_S0_
	jmp	L807
	.p2align 4,,10
	.p2align 3
L812:
	leal	8(%ebx), %eax
	movl	$-1171354717, %edi
	movl	%eax, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%edi
	movl	$416, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	32(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movswl	72(%esp), %eax
	cmpw	$0, 216(%esi)
	jg	L761
	movl	$240, %edx
	movw	%dx, 216(%esi)
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L761
	movl	$0, 76(%edx)
	movl	$_s_TrashCanPain, 24(%edx)
	movl	$_s_TrashCanPain, 16(%edx)
	movswl	_s_TrashCanPain, %edx
	leal	_picanm(%edx,%edx,4), %esi
	movzbl	3(%esi), %edx
	movl	%edx, %ecx
	shrb	$6, %cl
	je	L761
	andl	$63, %edx
	movb	%dl, 3(%esi)
	jmp	L761
	.cfi_endproc
LFE62:
	.section	.text.unlikely,"x"
LCOLDB5:
	.text
LHOTB5:
	.p2align 4
	.globl	__Z22SpriteWarpToUnderwaterP12spritetypev7
	.def	__Z22SpriteWarpToUnderwaterP12spritetypev7;	.scl	2;	.type	32;	.endef
__Z22SpriteWarpToUnderwaterP12spritetypev7:
LFB66:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	40(%esp), %esi
	movswl	24(%esi), %eax
	movl	_SectUser(,%eax,4), %eax
	movzwl	22(%eax), %eax
	movw	%ax, 4(%esp)
	testw	%ax, %ax
	je	L832
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%esi, %eax
	movl	%ebx, 20(%esp)
	subl	%edi, %eax
	movl	%ebp, 32(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	movl	%eax, 8(%esp)
	movswl	_headspritestat+98, %eax
	cmpw	$-1, %ax
	je	L833
	movl	_sector, %ebp
	jmp	L818
	.p2align 6
	.p2align 4,,10
	.p2align 3
L819:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L817
L818:
	imull	$44, %eax, %ecx
	addl	%edi, %ecx
	movswl	24(%ecx), %edx
	leal	(%edx,%edx,4), %ebx
	testb	$-128, 38(%ebp,%ebx,8)
	je	L819
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L819
	movzwl	4(%esp), %ebx
	cmpw	22(%edx), %bx
	jne	L819
L817:
	movswl	_headspritestat+100, %eax
	cmpw	$-1, %ax
	je	L822
	movl	%ecx, 12(%esp)
	movl	_sector, %ebp
	jmp	L823
	.p2align 6
	.p2align 4,,10
	.p2align 3
L824:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L825
L823:
	imull	$44, %eax, %ebx
	addl	%edi, %ebx
	movswl	24(%ebx), %edx
	leal	(%edx,%edx,4), %ecx
	testb	$1, 39(%ebp,%ecx,8)
	je	L824
	movl	_SectUser(,%edx,4), %edx
	testl	%edx, %edx
	je	L824
	movzwl	4(%esp), %ecx
	cmpw	22(%edx), %cx
	jne	L824
L825:
	movl	12(%esp), %ecx
	movl	(%ebx), %edx
	movl	%esi, %ebp
	subl	%edi, %ebp
	movl	4(%ecx), %eax
	subl	4(%esi), %eax
	movl	%eax, 12(%esp)
	movl	(%ecx), %eax
	subl	(%esi), %eax
	subl	%eax, %edx
	movl	%ebp, %eax
	movl	$-1171354717, %ebp
	movl	%edx, 4(%esp)
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%esp), %edx
	movl	%edx, (%esi)
	leal	4(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movl	4(%ebx), %edi
	subl	12(%esp), %edi
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%esp), %edx
	movl	%edi, 4(%esi)
	movzwl	24(%ecx), %eax
	leal	18(%esp), %ecx
	movw	%ax, 18(%esp)
	movzwl	24(%ebx), %eax
	movw	%ax, 16(%esp)
	movl	(%esi), %eax
	movl	%edx, (%esp)
	movl	%edi, %edx
	movl	%esi, %edi
	call	__Z16GetOverlapSectoriiPsS_
	movl	%eax, %edx
	movl	_sprite, %eax
	subl	%eax, %edi
	sarl	$2, %edi
	imull	$-1171354717, %edi, %edi
	cmpl	$2, %edx
	je	L850
	movzwl	18(%esp), %ebp
	cmpw	$4096, %bp
	ja	L829
	movswl	%di, %edi
	imull	$44, %edi, %edx
	movzwl	24(%eax,%edx), %edx
	cmpw	%dx, %bp
	je	L829
	cmpw	$4096, %dx
	je	L829
L849:
	movl	%edi, %eax
	call	_do_deletespritesect
	movl	%edi, %eax
	movswl	%bp, %edx
	call	_do_insertsprite_at_headofsect
	movl	_sprite, %eax
L829:
	movswl	24(%ebx), %edx
	movl	_sector, %ecx
	movl	8(%esp), %edi
	leal	(%edx,%edx,4), %edx
	leal	(%ecx,%edx,8), %edx
	movswl	96(%edi), %ecx
	addl	4(%edx), %ecx
	leal	8(%esi), %edx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	addl	$256, %ecx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%esi), %eax
	movl	%ecx, 8(%esi)
	movl	%eax, 56(%edi)
	movl	4(%esi), %eax
	movl	%eax, 60(%edi)
	movl	8(%esi), %eax
	movl	%eax, 64(%edi)
	movl	$1, %eax
	movl	20(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L850:
	.cfi_restore_state
	movzwl	16(%esp), %ebp
	cmpw	$4096, %bp
	ja	L829
	movswl	%di, %edi
	imull	$44, %edi, %edx
	movzwl	24(%eax,%edx), %edx
	cmpw	$4096, %dx
	je	L829
	cmpw	%dx, %bp
	jne	L849
	jmp	L829
	.p2align 4,,10
	.p2align 3
L832:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	24(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L833:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	xorl	%ecx, %ecx
	jmp	L817
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__Z22SpriteWarpToUnderwaterP12spritetypev7.cold;	.scl	3;	.type	32;	.endef
__Z22SpriteWarpToUnderwaterP12spritetypev7.cold:
LFSB66:
L822:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	0, %eax
	ud2
	.cfi_endproc
LFE66:
	.text
	.section	.text.unlikely,"x"
LCOLDE5:
	.text
LHOTE5:
.lcomm __ZZ12InitEnemyUzisE9alternate,2,2
.lcomm __ZZ7InitUziP12PLAYERstructE8uziclock,4,4
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z9DoElectros;	.scl	2;	.type	32;	.endef
	.def	__Z13MissileSetPossPFisEi;	.scl	2;	.type	32;	.endef
	.def	__Z6DoMines;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z19InitActorRepositions;	.scl	2;	.type	32;	.endef
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z9DoGrenades;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritestat;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofstat;	.scl	2;	.type	32;	.endef
	.def	__Z13DoTracerStarts;	.scl	2;	.type	32;	.endef
	.def	__Z13WeaponAutoAimP12spritetypev7ssh;	.scl	2;	.type	32;	.endef
	.def	_setspritez;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnBloodsssiii;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnShrapss;	.scl	2;	.type	32;	.endef
	.def	__Z14QueueWallBloodss;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z20WeaponAutoAimHitscanP12spritetypev7PiPsh;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15ShootableSwitchs;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z13SpawnSplashXYiiis.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z12DoPickTargetP12spritetypev7jh;	.scl	2;	.type	32;	.endef
	.def	__Z8SpawnVisssiiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
	.def	__Z17DoMatchEverythingP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z16DoSoundSpotMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z9QueueHolessiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z22WeaponHitscanShootFeetP12spritetypev7S0_Pi;	.scl	2;	.type	32;	.endef
	.def	__Z18AimHitscanToTargetP12spritetypev7PiPsi;	.scl	2;	.type	32;	.endef
	.def	__Z9InitShellss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10DoFireballs;	.scl	2;	.type	32;	.endef
	.def	__Z17TestMissileSetPossPFisEii;	.scl	2;	.type	32;	.endef
	.def	__Z17WeaponAutoAimZvelP12spritetypev7sPish;	.scl	2;	.type	32;	.endef
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
	.def	__Z16GetOverlapSectoriiPsS_;	.scl	2;	.type	32;	.endef
	.def	__Z15ContinueHitscanP12PLAYERstructsiiisiii.isra.0;	.scl	2;	.type	32;	.endef
