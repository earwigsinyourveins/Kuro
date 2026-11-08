	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__Z11DoSectorExps
	.def	__Z11DoSectorExps;	.scl	2;	.type	32;	.endef
__Z11DoSectorExps:
LFB0:
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
	movl	156(%ebx), %ebx
	mull	%esi
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ebx, 4(%ecx)
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
LFE0:
	.p2align 4
	.globl	__Z8DoMeteors
	.def	__Z8DoMeteors;	.scl	2;	.type	32;	.endef
__Z8DoMeteors:
LFB1:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__Z13MissileSetPossPFisEi
	.def	__Z13MissileSetPossPFisEi;	.scl	2;	.type	32;	.endef
__Z13MissileSetPossPFisEi:
LFB3:
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
	movswl	8(%ebp), %ecx
	movl	_User(,%ecx,4), %esi
	imull	$44, %ecx, %ebx
	addl	_sprite, %ebx
	movzwl	32(%ebx), %edi
	movl	160(%esi), %eax
	movlps	152(%esi), %xmm0
	movw	%di, 16(%esp)
	movl	$-1171354717, %edi
	movl	%eax, 24(%esp)
	movzwl	36(%ebx), %eax
	movlps	%xmm0, 4(%esp)
	movw	%ax, 18(%esp)
	leal	32(%ebx), %eax
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 28(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	16(%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	36(%ebx), %edx
	movw	%ax, 32(%ebx)
	leal	36(%ebx), %eax
	movw	%dx, 20(%esp)
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movzwl	20(%esp), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movw	%dx, 36(%ebx)
	movswl	32(%ebx), %edx
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
	orl	$67108864, 68(%esi)
	movl	%eax, 160(%esi)
	movl	%ecx, (%esp)
	call	*12(%ebp)
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	movl	%eax, 20(%esp)
	movlps	4(%esp), %xmm0
	movl	%ecx, 160(%esi)
	movl	_sprite, %ecx
	andl	$-67108865, 68(%esi)
	subl	%ecx, %edx
	movlps	%xmm0, 152(%esi)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	16(%esp), %edx
	movw	%dx, 32(%ebx)
	movl	32(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	movzwl	18(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movw	%di, 36(%ebx)
	movl	%eax, 56(%esi)
	movl	4(%ebx), %eax
	movl	%eax, 60(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 64(%esi)
	movl	20(%esp), %eax
	testl	%eax, %eax
	setne	%al
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
LFE3:
	.p2align 4
	.globl	__Z17TestMissileSetPossPFisEii
	.def	__Z17TestMissileSetPossPFisEii;	.scl	2;	.type	32;	.endef
__Z17TestMissileSetPossPFisEii:
LFB4:
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
	movswl	8(%ebp), %ecx
	movl	_sprite, %eax
	movl	16(%ebp), %edi
	movl	_User(,%ecx,4), %esi
	imull	$44, %ecx, %ebx
	movl	160(%esi), %edx
	movlps	152(%esi), %xmm0
	addl	%eax, %ebx
	movl	%edx, 20(%esp)
	movzwl	32(%ebx), %edx
	movlps	%xmm0, 4(%esp)
	movw	%dx, 16(%esp)
	movzwl	36(%ebx), %edx
	movw	%dx, 18(%esp)
	leal	32(%ebx), %edx
	movl	%edx, 24(%esp)
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	movw	%di, 32(%ebx)
	movswl	%di, %edi
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%eax, %edi
	sarl	$14, %edi
	movl	%edi, 152(%esi)
	movzwl	28(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movswl	32(%ebx), %edx
	orl	$67108864, 68(%esi)
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%esi)
	movl	20(%ebp), %eax
	movl	%eax, 160(%esi)
	movl	%ecx, (%esp)
	call	*12(%ebp)
	movl	_sprite, %ecx
	movl	24(%esp), %edx
	movl	%eax, %edi
	movl	20(%esp), %eax
	movlps	4(%esp), %xmm0
	subl	%ecx, %edx
	andl	$-67108865, 68(%esi)
	movl	%eax, 160(%esi)
	movl	$-1171354717, %eax
	mull	%edx
	movlps	%xmm0, 152(%esi)
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	16(%esp), %edx
	movw	%dx, 32(%ebx)
	leal	36(%ebx), %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	18(%esp), %edx
	testl	%edi, %edi
	movl	(%ebx), %eax
	movw	%dx, 36(%ebx)
	movl	%eax, 56(%esi)
	movl	4(%ebx), %eax
	movl	%eax, 60(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 64(%esi)
	setne	%al
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
LFE4:
	.p2align 4
	.globl	__Z13InitLavaFlames
	.def	__Z13InitLavaFlames;	.scl	2;	.type	32;	.endef
__Z13InitLavaFlames:
LFB5:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__Z9DoMineExps
	.def	__Z9DoMineExps;	.scl	2;	.type	32;	.endef
__Z9DoMineExps:
LFB6:
	.cfi_startproc
	movswl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	__Z15DoExpDamageTests
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__Z14SpawnTracerExps
	.def	__Z14SpawnTracerExps;	.scl	2;	.type	32;	.endef
__Z14SpawnTracerExps:
LFB7:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movswl	52(%esp), %esi
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	_User(,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L12
	testb	$-128, 69(%ebp)
	jne	L19
L12:
	imull	$44, %esi, %esi
	addl	_sprite, %esi
	movl	%ebx, 32(%esp)
	movl	%edi, 40(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	4(%esi), %ecx
	movswl	28(%esi), %edi
	movswl	24(%esi), %eax
	movl	8(%esi), %ebx
	movl	(%esi), %edx
	cmpw	$2017, 82(%ebp)
	movl	%ecx, 8(%esp)
	movl	$_s_TracerExp, %ecx
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	je	L24
	movl	$3106, %edx
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
L15:
	movswl	%ax, %edi
	movl	_sprite, %ebx
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ecx
	movl	%edi, 24(%esp)
	movl	%ecx, 28(%esp)
	movl	$-1171354717, %ecx
	addl	%eax, %ebx
	addl	$40, %eax
	mull	%ecx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%esi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$4, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	$4, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
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
	jg	L25
	cmpw	$2017, 82(%ebp)
	je	L26
L17:
	movl	28(%esp), %edi
	movl	_DamageData+616, %eax
	movl	%eax, 188(%edi)
	movl	32(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
L11:
	movl	24(%esp), %eax
	movl	36(%esp), %esi
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L25:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
	cmpw	$2017, 82(%ebp)
	jne	L17
L26:
	movl	28(%esp), %ebx
	movl	_DamageData+776, %eax
	movl	%eax, 188(%ebx)
	movl	%edi, (%esp)
	call	__Z15DoExpDamageTests
	movl	24(%esp), %eax
	movl	32(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %esi
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L24:
	.cfi_restore_state
	movl	$2017, %edx
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	jmp	L15
L19:
	.cfi_restore 3
	.cfi_restore 7
	movl	$-1, 24(%esp)
	jmp	L11
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__Z17InitVulcanBoulders
	.def	__Z17InitVulcanBoulders;	.scl	2;	.type	32;	.endef
__Z17InitVulcanBoulders:
LFB9:
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
	movl	_sprite, %eax
	movswl	68(%esp), %edi
	imull	$44, %edi, %esi
	addl	%eax, %esi
	movl	4(%esi), %ebx
	movl	(%esi), %ecx
	movl	%ebx, 32(%esp)
	leal	36(%esi), %ebx
	movl	%ebx, %edx
	movl	%ecx, 24(%esp)
	movl	8(%esi), %ecx
	subl	%eax, %edx
	movl	$-1171354717, %eax
	movl	%ebx, 36(%esp)
	mull	%edx
	leal	-10240(%ecx), %ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	cmpb	$0, 37(%esi)
	je	L28
	movzwl	32(%esi), %ebx
	movswl	28(%esi), %eax
	movl	%eax, 28(%esp)
	movswl	%bx, %eax
	call	__Z11RandomRangei
	movl	%eax, %edx
	movl	%ebx, %eax
	sarw	%ax
	cwtl
	subl	%eax, %edx
	movl	28(%esp), %eax
	addl	%edx, %eax
	andl	$2047, %eax
	movl	%eax, 28(%esp)
L29:
	movzwl	34(%esi), %edx
	testw	%dx, %dx
	je	L37
	leal	3(%edx), %eax
	movl	%edx, %ebx
	cmovns	%edx, %eax
	shrw	$15, %bx
	addl	%edx, %ebx
	sarw	$2, %ax
	sarw	%bx
	cwtl
	movswl	%bx, %ebx
	addl	%eax, %ebx
L30:
	call	__Z11RandomRangei
	movl	%ebp, 12(%esp)
	movl	$_s_VulcanBoulder, %ecx
	movl	$2196, %edx
	addl	%ebx, %eax
	movl	%eax, 20(%esp)
	movl	28(%esp), %eax
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%eax, 8(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%esi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	movl	%eax, %edx
	movl	%eax, 44(%esp)
	imull	$44, %eax, %ebx
	movl	_User(,%eax,4), %ebp
	movl	%edi, %eax
	addl	_sprite, %ebx
	call	__Z8SetOwnerss
	movl	_krandcount, %eax
	movl	$79, %ecx
	movl	%eax, 32(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, 40(%esp)
	cmpl	$65535, %eax
	je	L31
	movl	%eax, %edx
	movl	$-1879011273, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$23, %edx
	leal	8(%edx), %ecx
L31:
	movl	_sprite, %eax
	leal	21(%ebx), %edx
	movl	$-1171354717, %edi
	subl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	24(%esp), %edx
	movl	%edx, %eax
	movb	%cl, 21(%ebx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	movb	%cl, 20(%ebx)
	movl	24(%esp), %ecx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%edi
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 28(%ebx)
	xorl	%eax, %eax
	movw	%ax, 176(%ebp)
	movswl	14(%ebx), %eax
	movzbl	21(%ebx), %edx
	movswl	_tilesiz+2(,%eax,4), %eax
	cmpb	$64, %dl
	je	L42
	movzbl	%dl, %edi
	imull	%eax, %edi
	leal	0(,%edi,4), %eax
	movl	%eax, 28(%esp)
L33:
	leal	12(%ebx), %ecx
	subl	24(%esp), %ecx
	movl	$-1171354717, %edi
	movl	$200, 188(%ebp)
	movl	%ecx, %eax
	mull	%edi
	movl	%edx, %ecx
	leal	18(%ebx), %edx
	subl	24(%esp), %edx
	movl	%edx, %eax
	shrl	$5, %ecx
	mull	%edi
	movl	28(%esp), %edi
	addl	$1, _spritechanged(,%ecx,4)
	orw	$128, 12(%ebx)
	sarl	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 18(%ebx)
	movw	%di, 96(%ebp)
	movw	%di, 98(%ebp)
	movl	40(%esp), %edi
	leal	(%edi,%edi,4), %eax
	leal	1(%edi,%eax,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	cmpl	$512, %eax
	jle	L34
	addl	$1, _spritechanged(,%ecx,4)
	orw	$4, 12(%ebx)
L34:
	movl	32(%esp), %eax
	addl	$3, %eax
	movl	%eax, _krandcount
	leal	(%edx,%edx,4), %eax
	leal	1(%edx,%eax,4), %eax
	movzwl	%ax, %edx
	andl	$1023, %eax
	movl	%edx, _randomseed
	cmpl	$512, %eax
	jle	L35
	addl	$1, _spritechanged(,%ecx,4)
	orw	$8, 12(%ebx)
L35:
	movl	$-1171354717, %eax
	movl	36(%esp), %edx
	subl	24(%esp), %edx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %ecx
	leal	1(%ecx), %eax
	movl	%eax, _spritechanged(,%edx,4)
	cmpb	$0, 37(%esi)
	je	L39
	leal	2(%ecx), %eax
	addl	$3, %ecx
	movl	%eax, _spritechanged(,%edx,4)
	movzbl	37(%esi), %eax
	movl	%ecx, _spritechanged(,%edx,4)
	movzbl	36(%esi), %edx
	sall	$8, %eax
	movl	%eax, %esi
	negl	%esi
L36:
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ebp)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ebp)
	movl	%edx, %eax
	call	__Z11RandomRangei
	sall	$8, %eax
	subl	%eax, %esi
	movl	44(%esp), %eax
	movl	%esi, 160(%ebp)
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
L37:
	.cfi_restore_state
	movl	$600, %ebx
	movl	$200, %eax
	jmp	L30
	.p2align 4,,10
	.p2align 3
L28:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$2047, %eax
	movl	%edx, _randomseed
	movl	%eax, 28(%esp)
	jmp	L29
	.p2align 4,,10
	.p2align 3
L39:
	movl	$-12800, %esi
	movl	$40, %edx
	jmp	L36
	.p2align 4,,10
	.p2align 3
L42:
	sall	$8, %eax
	movl	%eax, 28(%esp)
	jmp	L33
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	__Z14SpawnMeteorExps
	.def	__Z14SpawnMeteorExps;	.scl	2;	.type	32;	.endef
__Z14SpawnMeteorExps:
LFB11:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movswl	52(%esp), %ebx
	movl	_User(,%ebx,4), %eax
	testb	$-128, 69(%eax)
	jne	L49
	imull	$44, %ebx, %ebx
	movl	_sprite, %ecx
	movl	%esi, 36(%esp)
	movl	%edi, 40(%esp)
	movl	%ebp, 44(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	addl	%ecx, %ebx
	cmpb	$25, 262(%eax)
	je	L51
	leal	8(%ebx), %edi
	movl	$-1171354717, %ebp
	movl	%edi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
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
	movl	$182, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%edi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_MeteorExp, %ecx
	movl	$2115, %edx
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
L46:
	cwtl
	movl	_sprite, %edi
	movl	$-1171354717, %ebp
	imull	$44, %eax, %edx
	movl	%eax, 24(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 28(%esp)
	leal	40(%edx), %eax
	leal	(%edi,%edx), %ecx
	mull	%ebp
	movl	$9999, %eax
	leal	21(%ecx), %esi
	subl	%edi, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%edi, %edx
	movw	%ax, 40(%ecx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ecx)
	leal	16(%ecx), %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebp
	movb	$-40, 16(%ecx)
	movl	%edx, %esi
	leal	20(%ecx), %edx
	subl	%edi, %edx
	shrl	$5, %esi
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$63, 21(%ebx)
	movl	%eax, _spritechanged(,%edx,4)
	jbe	L52
	movb	$80, 20(%ecx)
	movl	_spritechanged(,%esi,4), %eax
	movl	$80, %edx
	addl	$1, %eax
L48:
	movl	%eax, _spritechanged(,%esi,4)
	movl	$-1171354717, %eax
	movb	%dl, 21(%ecx)
	leal	12(%ecx), %edx
	subl	%edi, %edx
	movl	28(%esp), %edi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ecx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ecx)
	movl	_DamageData+776, %eax
	movl	%eax, 188(%edi)
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	44(%esp), %ebp
	.cfi_restore 5
L43:
	movl	24(%esp), %eax
	movl	32(%esp), %ebx
	addl	$48, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L52:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movb	$64, 20(%ecx)
	movl	_spritechanged(,%esi,4), %eax
	movl	$64, %edx
	addl	$1, %eax
	jmp	L48
	.p2align 4,,10
	.p2align 3
L51:
	movl	$0, 20(%esp)
	movswl	28(%ebx), %eax
	movl	$_s_TeleportEffect2, %ecx
	movl	$2115, %edx
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
	jmp	L46
	.p2align 4,,10
	.p2align 3
L49:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 24(%esp)
	jmp	L43
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	__Z13InitSpellMirvP12PLAYERstruct
	.def	__Z13InitSpellMirvP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13InitSpellMirvP12PLAYERstruct:
LFB12:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	%esi, 44(%esp)
	.cfi_offset 6, -16
	movl	60(%esp), %esi
	movl	$0, 4(%esp)
	leal	8(%esi), %eax
	movl	%esi, %edx
	leal	4(%esi), %ecx
	movl	%eax, (%esp)
	movl	$36, %eax
	call	__Z9PlaySoundiPiS_S_i
	movzwl	268(%esi), %edx
	testw	%dx, %dx
	js	L54
	movl	%ebx, 40(%esp)
	movl	%edi, 48(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	300(%esi), %ecx
	movl	$600, 20(%esp)
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	$_s_Mirv, %ecx
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
	movl	$2010, %edx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %edi
	movl	$-1171354717, %ecx
	movw	%ax, 38(%esp)
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, 32(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 24(%esp)
	addl	%edi, %ebx
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%eax, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	28(%esp), %ecx
	movl	$37, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$1, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L56
	cmpl	$-1, 32(%eax)
	je	L66
L57:
	movzwl	38(%esp), %edi
	movw	%di, 48(%eax)
L56:
	movl	352(%esi), %eax
	movl	32(%esp), %edx
	movl	$-1171354717, %edi
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
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
	movb	$72, 20(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$72, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	movb	$8, 18(%ebx)
	movl	288(%esi), %eax
	subl	%ecx, %edx
	movl	%eax, 28(%esp)
	movl	%eax, %ebp
	movl	%edx, %eax
	mull	%edi
	sarl	$31, %ebp
	movl	28(%esp), %eax
	xorw	%bp, %bp
	leal	32768(%eax,%ebp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	testl	%eax, %eax
	leal	65535(%eax), %edx
	cmovns	%eax, %edx
	movl	$100, %eax
	sarl	$16, %edx
	subl	%edx, %eax
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	sall	$7, %eax
	movw	%ax, 36(%ebx)
	movl	%edx, %eax
	mull	%edi
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$200, %edx
	andw	$-258, 12(%ebx)
	movw	%dx, 212(%eax)
	movl	$268439552, 96(%eax)
	movl	352(%esi), %ebp
	movzbl	18(%ebp), %eax
	leal	18(%ebp), %edx
	subl	%ecx, %edx
	movb	%al, 28(%esp)
	movl	%edx, %eax
	movl	24(%esp), %ecx
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 18(%ebp)
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 152(%ecx)
	movzwl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%edx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%ecx)
	movswl	36(%ebx), %eax
	movl	%ecx, %ebx
	movl	%eax, 160(%ecx)
	movl	32(%esp), %ecx
	movl	$600, 8(%esp)
	movl	%ecx, (%esp)
	movl	$__Z6DoMirvs, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	352(%esi), %ecx
	leal	18(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	movzbl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	xorl	%ecx, %ecx
	movw	%cx, 176(%ebx)
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
L54:
	movl	44(%esp), %esi
	xorl	%eax, %eax
	addl	$56, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L66:
	.cfi_def_cfa_offset 60
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	testb	$16, 28(%eax)
	jne	L57
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L56
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	__Z13InitEnemyMirvs
	.def	__Z13InitEnemyMirvs;	.scl	2;	.type	32;	.endef
__Z13InitEnemyMirvs:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	_sprite, %ecx
	movswl	64(%esp), %eax
	imull	$44, %eax, %ebx
	movl	%eax, 36(%esp)
	movl	_User(,%eax,4), %eax
	movl	%eax, 32(%esp)
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
	movl	$36, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	14(%ebx), %esi
	movswl	28(%ebx), %edi
	movzbl	21(%ebx), %edx
	movl	8(%ebx), %ecx
	movswl	_tilesiz+2(,%esi,4), %eax
	testb	$-128, 12(%ebx)
	je	L68
	cmpb	$64, %dl
	je	L91
	movl	%edx, %ebp
	movsbl	_picanm+2(%esi,%esi,4), %esi
	imull	%eax, %ebp
	sall	$8, %esi
	leal	(%esi,%ebp,2), %esi
	subl	%esi, %ecx
	jmp	L71
	.p2align 4,,10
	.p2align 3
L68:
	cmpb	$64, %dl
	je	L92
	movl	%edx, %esi
	imull	%eax, %esi
	sall	$2, %esi
	subl	%esi, %ecx
L71:
	imull	%edx, %eax
L73:
	addl	%ecx, %eax
	movl	%edi, 16(%esp)
	movl	$_s_Mirv, %ecx
	movl	$2098, %edx
	movl	$600, 20(%esp)
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebp
	movl	$-1171354717, %ecx
	movswl	%ax, %edi
	movw	%ax, 42(%esp)
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%ebp, %ebx
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 28(%esp)
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%ebx, %eax
	subl	%ebp, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	24(%esp), %ecx
	movl	$37, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	28(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L74
	cmpl	$-1, 32(%eax)
	je	L93
L75:
	movzwl	42(%esp), %ecx
	movw	%cx, 48(%eax)
L74:
	movl	36(%esp), %eax
	movl	%edi, %edx
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$72, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ebp, %edx
	movb	$72, 21(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$8, 18(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	$200, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	$268439552, 96(%esi)
	movw	%ax, 212(%esi)
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
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movl	%edi, (%esp)
	movl	$600, 8(%esp)
	movl	$__Z6DoMirvs, 4(%esp)
	call	__Z13MissileSetPossPFisEi
	movl	32(%esp), %eax
	movl	200(%eax), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovs	%ecx, %edi
	cmpl	%edi, %eax
	leal	(%eax,%edi), %ecx
	cmovg	%edi, %eax
	sarl	%eax
	subl	%eax, %ecx
	je	L77
	movswl	32(%ebx), %eax
	movl	8(%edx), %ebp
	movzbl	21(%edx), %edi
	testb	$-128, 12(%edx)
	movl	%eax, 24(%esp)
	movswl	14(%edx), %eax
	movl	%ebp, 28(%esp)
	movl	%edi, %edx
	movl	%eax, 32(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	je	L78
	cmpb	$64, %dl
	je	L94
	movl	32(%esp), %ebp
	movzbl	%dl, %edi
	movl	%edi, %edx
	imull	%eax, %edx
	movsbl	_picanm+2(%ebp,%ebp,4), %ebp
	sall	$8, %ebp
	leal	0(%ebp,%edx,2), %ebp
	movl	28(%esp), %edx
	subl	%ebp, %edx
L81:
	imull	%edi, %eax
L83:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	imull	24(%esp), %eax
	cltd
	idivl	%ecx
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	movswl	%cx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	movl	%eax, 160(%esi)
L77:
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
L93:
	.cfi_restore_state
	testb	$16, 28(%eax)
	jne	L75
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L78:
	cmpb	$64, %dl
	je	L95
	movzbl	%dl, %edi
	movl	28(%esp), %edx
	movl	%edi, %ebp
	imull	%eax, %ebp
	sall	$2, %ebp
	subl	%ebp, %edx
	jmp	L81
	.p2align 4,,10
	.p2align 3
L91:
	movsbl	_picanm+2(%esi,%esi,4), %edx
	movl	%eax, %ebp
	sall	$7, %ebp
	sall	$8, %edx
	addl	%ebp, %edx
	subl	%edx, %ecx
L70:
	sall	$6, %eax
	jmp	L73
	.p2align 4,,10
	.p2align 3
L92:
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
	jmp	L70
	.p2align 4,,10
	.p2align 3
L95:
	movl	28(%esp), %edx
	movl	%eax, %edi
	sall	$8, %edi
	subl	%edi, %edx
L80:
	sall	$6, %eax
	jmp	L83
	.p2align 4,,10
	.p2align 3
L94:
	movl	32(%esp), %edi
	movsbl	_picanm+2(%edi,%edi,4), %edx
	movl	%eax, %edi
	sall	$7, %edi
	sall	$8, %edx
	addl	%edx, %edi
	movl	%ebp, %edx
	subl	%edi, %edx
	jmp	L80
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	__Z14SpawnSectorExps
	.def	__Z14SpawnSectorExps;	.scl	2;	.type	32;	.endef
__Z14SpawnSectorExps:
LFB16:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movswl	52(%esp), %ebx
	movl	%edi, 40(%esp)
	movl	_User(,%ebx,4), %eax
	testb	$-128, 69(%eax)
	.cfi_offset 7, -12
	jne	L98
	imull	$44, %ebx, %ebx
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	movl	%esi, 36(%esp)
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	addl	%ebp, %ebx
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
	movl	$18, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_SectorExp, %ecx
	movl	$3121, %edx
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
	movl	_sprite, %ecx
	movswl	%ax, %edi
	imull	$44, %edi, %ebp
	movl	_User(,%edi,4), %eax
	movl	%eax, 28(%esp)
	leal	40(%ebp), %eax
	leal	(%ecx,%ebp), %ebx
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ebx)
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
	movb	$90, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$90, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	movl	28(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	_DamageData+584, %eax
	movl	%eax, 188(%esi)
	movl	%edi, (%esp)
	call	__Z15DoExpDamageTests
	addl	_sprite, %ebp
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
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
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %ebp
	.cfi_restore 5
L96:
	movl	%edi, %eax
	movl	32(%esp), %ebx
	movl	40(%esp), %edi
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L98:
	.cfi_restore_state
	movl	$-1, %edi
	jmp	L96
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	__Z14SpawnLittleExps
	.def	__Z14SpawnLittleExps;	.scl	2;	.type	32;	.endef
__Z14SpawnLittleExps:
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
	movl	$-1171354717, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	_sprite, %ebp
	movswl	44(%esp), %ebx
	imull	$44, %ebx, %ebx
	addl	%ebp, %ebx
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
	movl	$22, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%edi, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_SectorExp, %ecx
	movl	$3100, %edx
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
	movl	_sprite, %ebp
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ecx
	leal	0(%ebp,%eax), %ebx
	addl	$40, %eax
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%ebp, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ebx)
	leal	16(%ebx), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$-127, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	_DamageData+776, %eax
	movl	%eax, 188(%ecx)
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
	addl	$24, %esp
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
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct
	.def	__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z17SpawnBigGunFlamesssP19SECTOR_OBJECTstruct:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movzwl	60(%esp), %eax
	movl	68(%esp), %esi
	movl	%eax, %edx
	negw	%dx
	cmovs	%eax, %edx
	testw	%ax, %ax
	sets	33(%esp)
	cmovs	%edx, %eax
	movl	$3105, %edx
	cwtl
	imull	$44, %eax, %ecx
	addl	_sprite, %ecx
	movl	_User(,%eax,4), %edi
	movl	$0, 20(%esp)
	movswl	28(%ecx), %eax
	movl	%ecx, 36(%esp)
	movl	%eax, 16(%esp)
	movl	8(%ecx), %eax
	movl	%eax, 12(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 8(%esp)
	movl	(%ecx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ecx), %eax
	movl	$_s_BigGunFlame, %ecx
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ecx
	movw	%ax, 34(%esp)
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %edx
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	addl	%eax, %ebx
	leal	40(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movswl	64(%esp), %eax
	call	__Z8SetOwnerss
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	leal	21(%ebx), %ecx
	movl	_sprite, %ebp
	subl	%ebp, %edx
	subl	%ebp, %ecx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	$-1171354717, %eax
	movb	$-40, 16(%ebx)
	movl	%edx, %ecx
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	shrl	$5, %ecx
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	cmpb	$0, 33(%esp)
	movl	%eax, _spritechanged(,%edx,4)
	je	L104
	movb	$12, 20(%ebx)
	movl	_spritechanged(,%ecx,4), %eax
	movl	$12, %edx
	addl	$1, %eax
L105:
	movl	%eax, _spritechanged(,%ecx,4)
	movl	$-1171354717, %eax
	movb	%dl, 21(%ebx)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movl	_krandcount, %ebp
	mull	%edx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ecx
	andl	$1023, %eax
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	cmpl	$512, %eax
	jle	L106
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
L106:
	leal	(%ecx,%ecx,4), %eax
	addl	$2, %ebp
	leal	1(%ecx,%eax,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %ecx
	andl	$1023, %eax
	movl	%ecx, _randomseed
	cmpl	$512, %eax
	jle	L107
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
L107:
	xorl	%eax, %eax
	jmp	L109
	.p2align 5
	.p2align 4,,10
	.p2align 3
L116:
	addl	$1, %eax
	cmpl	$60, %eax
	je	L108
L109:
	cmpw	$-1, 680(%esi,%eax,2)
	jne	L116
L108:
	movzwl	34(%esp), %edx
	movw	%dx, 680(%esi,%eax,2)
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	movl	68(%edi), %eax
	movl	24(%esp), %edx
	movl	_sector, %ebp
	andl	$4210688, %eax
	orl	%eax, 68(%edx)
	leal	8(%ebx), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	movl	256(%edi), %ecx
	mull	%edx
	shrl	$5, %edx
	testb	$64, 70(%edi)
	je	L110
	movl	36(%esp), %eax
	movswl	24(%eax), %eax
L115:
	leal	(%eax,%eax,4), %eax
	movl	24(%esp), %esi
	movl	8(%ebp,%eax,8), %eax
	subl	%ecx, %eax
	movl	%eax, 64(%esi)
	movl	_spritechanged(,%edx,4), %esi
	leal	1(%esi), %ecx
	movl	%ecx, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movl	24(%esp), %ebx
	movl	248(%edi), %eax
	movl	%eax, 248(%ebx)
	movl	252(%edi), %eax
	movl	%eax, 252(%ebx)
	movl	256(%edi), %eax
	movl	%eax, 256(%ebx)
	movl	28(%esp), %eax
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
L104:
	.cfi_restore_state
	movb	$34, 20(%ebx)
	movl	_spritechanged(,%ecx,4), %eax
	movl	$34, %edx
	addl	$1, %eax
	jmp	L105
	.p2align 4,,10
	.p2align 3
L110:
	movswl	3202(%esi), %eax
	jmp	L115
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct
	.def	__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct;	.scl	2;	.type	32;	.endef
__Z23AddSpriteToSectorObjectsP19SECTOR_OBJECTstruct:
LFB20:
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
	movl	20(%esp), %ebx
	movl	_User(,%eax,4), %edi
	imull	$44, %eax, %esi
	addl	_sprite, %esi
	testl	%edi, %edi
	je	L123
L118:
	xorl	%eax, %eax
	jmp	L120
	.p2align 5
	.p2align 4,,10
	.p2align 3
L124:
	addl	$1, %eax
	cmpl	$60, %eax
	je	L119
L120:
	cmpw	$-1, 680(%ebx,%eax,2)
	jne	L124
L119:
	movzwl	16(%esp), %ecx
	movl	%esi, %edx
	movw	%cx, 680(%ebx,%eax,2)
	movl	%ebx, %eax
	call	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7
	orl	$4210688, 68(%edi)
	movl	180(%ebx), %eax
	subl	(%esi), %eax
	movl	_sector, %edx
	movl	%eax, 248(%edi)
	movl	184(%ebx), %eax
	subl	4(%esi), %eax
	movl	%eax, 252(%edi)
	movswl	3202(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	8(%eax), %eax
	subl	8(%esi), %eax
	movl	%eax, 256(%edi)
	movzwl	28(%esi), %eax
	movw	%ax, 260(%edi)
	xorl	%eax, %eax
	popl	%ebx
	.cfi_remember_state
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
L123:
	.cfi_restore_state
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	__Z9SpawnUserssP11STATEstruct
	movl	%eax, %edi
	jmp	L118
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	__Z13InitMineShraps
	.def	__Z13InitMineShraps;	.scl	2;	.type	32;	.endef
__Z13InitMineShraps:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$18, %edx
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
	movswl	72(%esp), %eax
	movw	%dx, 30(%esp)
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, %edi
	.p2align 4
	.p2align 3
L127:
	movl	_randomseed, %eax
	movl	8(%edi), %esi
	movl	4(%edi), %ebp
	addl	$2, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movzwl	%dx, %eax
	movl	%edx, %ebx
	addw	$512, %dx
	leal	(%eax,%eax,4), %ecx
	andl	$2047, %ebx
	andl	$2047, %edx
	leal	1(%eax,%ecx,4), %eax
	leal	-7680(%esi), %ecx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sall	$11, %eax
	movl	(%edi), %esi
	andl	$96256, %eax
	movl	%eax, 24(%esp)
	leal	32(%esp), %eax
	movl	%eax, 16(%esp)
	movl	24(%esp), %eax
	subl	$49152, %eax
	movl	%eax, 12(%esp)
	movswl	_sintable(%ebx,%ebx), %eax
	movl	%eax, 8(%esp)
	movswl	_sintable(%edx,%edx), %eax
	movl	%ebp, %edx
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	movswl	48(%esp), %ecx
	testw	%cx, %cx
	js	L126
	movl	32(%esp), %esi
	movl	(%edi), %edx
	movl	36(%esp), %ebp
	subl	%esi, %edx
	movl	%edx, %eax
	movl	%ebp, 24(%esp)
	negl	%eax
	cmovs	%edx, %eax
	movl	4(%edi), %edx
	subl	%ebp, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	$20000, %ebp
	jg	L126
	movl	40(%esp), %eax
	movl	24(%esp), %ebp
	movl	%ecx, (%esp)
	movl	$5011, %edx
	movl	%ebx, 16(%esp)
	movl	$_s_MineSpark, %ecx
	movl	%eax, 12(%esp)
	movl	$4, %eax
	movl	%esi, 4(%esp)
	movl	$0, 20(%esp)
	movl	%ebp, 8(%esp)
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	leal	(%ecx,%eax), %ebx
	leal	16(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%edi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	12(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$130, 12(%ebx)
	mull	%edx
	movswl	46(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$8, 18(%ebx)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	__Z19HitscanSpriteAdjustss
L126:
	subw	$1, 30(%esp)
	jne	L127
	addl	$52, %esp
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
LFE21:
	.p2align 4
	.globl	__Z12DoSerpMeteors
	.def	__Z12DoSerpMeteors;	.scl	2;	.type	32;	.endef
__Z12DoSerpMeteors:
LFB22:
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
	movl	_sprite, %eax
	movswl	56(%esp), %edi
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%eax, %ebx
	leal	20(%ebx), %edx
	movl	4(%ebx), %ecx
	movl	(%ebx), %ebp
	subl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	%ecx, 24(%esp)
	movl	8(%ebx), %ecx
	movl	%ecx, 20(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	20(%ebx), %eax
	addl	$12, %eax
	movb	%al, 20(%ebx)
	cmpb	$80, %al
	jbe	L131
	addl	$1, _spritechanged(,%edx,4)
	movb	$80, 20(%ebx)
L131:
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
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	testl	%eax, %eax
	je	L130
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L133
L135:
	movl	%edi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	jne	L134
	xorl	%eax, %eax
L130:
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
L133:
	.cfi_restore_state
	andl	$16383, %eax
	movl	_User(,%eax,4), %edx
	testl	%edx, %edx
	je	L135
	movzwl	82(%edx), %edx
	subw	$820, %dx
	cmpw	$2, %dx
	ja	L135
	imull	$44, %eax, %eax
	movl	_sprite, %ecx
	addl	%ecx, %eax
	movzwl	12(%eax), %edx
	movl	%eax, 28(%esp)
	movl	$-1171354717, %eax
	movw	%dx, 34(%esp)
	movl	%ebx, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%ebp, (%ebx)
	movl	_sprite, %ecx
	movl	24(%esp), %ebp
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ebx), %edx
	subl	%ecx, %edx
	movl	%ebp, 4(%ebx)
	movl	20(%esp), %ebp
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, 8(%ebx)
	movl	28(%esp), %ebp
	leal	12(%ebp), %ebx
	movl	%ebx, %edx
	subl	%ecx, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebp)
	movl	152(%esi), %edx
	movl	156(%esi), %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	movl	%eax, 4(%esp)
	movl	160(%esi), %eax
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	subl	_sprite, %ebx
	movl	%eax, 264(%esi)
	movl	$-1171354717, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	34(%esp), %edx
	movw	%dx, 12(%ebp)
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L135
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
L134:
	.cfi_restore_state
	movl	%edi, (%esp)
	call	__Z14SpawnMeteorExps
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L130
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z10DoFireballs
	.def	__Z10DoFireballs;	.scl	2;	.type	32;	.endef
__Z10DoFireballs:
LFB23:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movswl	40(%esp), %esi
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -20
	movl	_User(,%esi,4), %ebx
	testb	$64, 71(%ebx)
	je	L145
	imull	$44, %esi, %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	movl	_sprite, %edi
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	movl	$-1171354717, %ebp
	addl	%eax, %edi
	addl	$21, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%edi), %eax
	leal	20(%edi), %edx
	subl	_sprite, %edx
	leal	-1(%eax), %ecx
	movl	%edx, %eax
	mull	%ebp
	movb	%cl, 21(%edi)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 20(%edi)
	cmpb	$37, %cl
	jbe	L166
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L145:
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
	jne	L167
L144:
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
L167:
	.cfi_restore_state
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L144
	movl	264(%ebx), %eax
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L168
L148:
	cmpw	$2036, 82(%ebx)
	movl	%esi, (%esp)
	je	L169
	call	__Z16SpawnFireballExps
L150:
	movl	%esi, %eax
	call	__Z10KillSprites
L146:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	$1, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L166:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, (%esp)
	call	__Z14SpawnSmokePuffs
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L146
	.p2align 4,,10
	.p2align 3
L168:
	andl	$16383, %eax
	movl	_sprite, %edx
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	imull	$44, %eax, %ecx
	leal	(%edx,%ecx), %edi
	testb	$64, 43(%edi)
	je	L165
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L170
L149:
	subl	%edx, %edi
	movl	%esi, (%esp)
	sarl	$2, %edi
	imull	$-1171354717, %edi, %eax
	cwtl
	movl	%eax, 4(%esp)
	call	__Z19SpawnFireballFlamesss
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L150
	.p2align 4,,10
	.p2align 3
L169:
	call	__Z20SpawnGoroFireballExps
	jmp	L150
	.p2align 4,,10
	.p2align 3
L165:
	.cfi_offset 7, -12
	movl	28(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L148
L170:
	.cfi_restore_state
	movl	%ecx, %eax
	movswl	14(%edi), %edx
	xorl	%ecx, %ecx
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z9SpawnUserssP11STATEstruct
	movl	_sprite, %edx
	jmp	L149
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	__Z12DoFindGrounds
	.def	__Z12DoFindGrounds;	.scl	2;	.type	32;	.endef
__Z12DoFindGrounds:
LFB24:
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
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	_sprite, %eax
	movswl	68(%esp), %edi
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%eax, %ebx
	movzwl	12(%ebx), %ecx
	movw	%cx, 34(%esp)
	leal	12(%ebx), %ecx
	movl	%ecx, %edx
	movl	%ecx, 28(%esp)
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	andw	$-258, 12(%ebx)
	movl	%eax, 36(%esp)
	movl	$65537, 24(%esp)
	movzbl	18(%ebx), %eax
	leal	-8(,%eax,4), %eax
	movl	%eax, 20(%esp)
	leal	40(%esp), %eax
	movl	%eax, 16(%esp)
	leal	108(%esi), %eax
	movl	%eax, 12(%esp)
	leal	44(%esp), %eax
	movl	%eax, 8(%esp)
	leal	104(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	call	__Z12FAFgetzrangeiiisPiS_S_S_ii
	movl	_sprite, %ecx
	movl	28(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movzwl	34(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	movl	40(%esp), %ebx
	movl	%ebx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L172
	cmpl	$49152, %eax
	je	L178
L173:
	addl	$48, %esp
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
L178:
	.cfi_restore_state
	andl	$16383, %ebx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzwl	12(%ebx), %eax
	movw	%ax, 28(%esp)
	testb	$32, %al
	je	L174
	movl	%ebx, 128(%esi)
	movl	$0, 120(%esi)
	jmp	L175
	.p2align 4,,10
	.p2align 3
L172:
	movl	_sector, %eax
	andl	$4095, %ebx
	movl	$0, 128(%esi)
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, 120(%esi)
L175:
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
L174:
	.cfi_restore_state
	leal	12(%ebx), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	%edi, (%esp)
	call	__Z12DoFindGrounds
	subl	_sprite, %esi
	movl	%esi, %eax
	mull	%ebp
	movzwl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	jmp	L173
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	__Z17DoFindGroundPoints
	.def	__Z17DoFindGroundPoints;	.scl	2;	.type	32;	.endef
__Z17DoFindGroundPoints:
LFB25:
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
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	_sprite, %eax
	movswl	60(%esp), %edi
	imull	$44, %edi, %ebx
	movl	_User(,%edi,4), %esi
	addl	%eax, %ebx
	movzwl	12(%ebx), %ecx
	movw	%cx, 26(%esp)
	leal	12(%ebx), %ecx
	movl	%ecx, %edx
	movl	%ecx, 20(%esp)
	subl	%eax, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	%eax, 28(%esp)
	leal	32(%esp), %eax
	andw	$-258, 12(%ebx)
	movl	%eax, 16(%esp)
	leal	108(%esi), %eax
	movl	%eax, 12(%esp)
	leal	36(%esp), %eax
	movl	%eax, 8(%esp)
	leal	104(%esi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z17FAFgetzrangepointiiisPiS_S_S_
	movl	_sprite, %ecx
	movl	20(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	movzwl	26(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	movl	32(%esp), %ebx
	movl	%ebx, %eax
	andl	$114688, %eax
	cmpl	$16384, %eax
	je	L180
	cmpl	$49152, %eax
	je	L186
L181:
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
L186:
	.cfi_restore_state
	andl	$16383, %ebx
	imull	$44, %ebx, %ebx
	addl	%ecx, %ebx
	movzwl	12(%ebx), %eax
	movw	%ax, 20(%esp)
	testb	$32, %al
	je	L182
	movl	%ebx, 128(%esi)
	movl	$0, 120(%esi)
	jmp	L183
	.p2align 4,,10
	.p2align 3
L180:
	movl	_sector, %eax
	andl	$4095, %ebx
	movl	$0, 128(%esi)
	leal	(%ebx,%ebx,4), %edx
	leal	(%eax,%edx,8), %eax
	movl	%eax, 120(%esi)
L183:
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
L182:
	.cfi_restore_state
	leal	12(%ebx), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	%edi, (%esp)
	call	__Z17DoFindGroundPoints
	subl	_sprite, %esi
	movl	%esi, %eax
	mull	%ebp
	movzwl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 12(%ebx)
	jmp	L181
	.cfi_endproc
LFE25:
	.p2align 4
	.globl	__Z13DoMirvMissiles
	.def	__Z13DoMirvMissiles;	.scl	2;	.type	32;	.endef
__Z13DoMirvMissiles:
LFB26:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	$-1171354717, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movl	_sprite, %ecx
	movswl	36(%esp), %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ebx
	addl	%eax, %ecx
	addl	$20, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	20(%ecx), %eax
	addl	$12, %eax
	movb	%al, 20(%ecx)
	cmpb	$80, %al
	jbe	L188
	addl	$1, _spritechanged(,%edx,4)
	movb	$80, 20(%ecx)
L188:
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
	testb	$64, 71(%ebx)
	jne	L202
L191:
	testl	%eax, %eax
	jne	L203
L187:
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
L202:
	.cfi_restore_state
	movl	_randomseed, %edx
	addl	$1, _krandcount
	leal	(%edx,%edx,4), %ecx
	leal	1(%edx,%ecx,4), %edx
	movzwl	%dx, %ecx
	movl	%ecx, _randomseed
	andb	$48, %dh
	jne	L191
	movl	%esi, (%esp)
	call	__Z11SpawnBubbles
	movl	264(%ebx), %eax
	testl	%eax, %eax
	je	L187
	.p2align 4
	.p2align 3
L203:
	movl	%esi, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L187
	movl	%esi, (%esp)
	call	__Z14SpawnMeteorExps
	movl	%esi, %eax
	call	__Z10KillSprites
	movl	$1, %eax
	jmp	L187
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	__Z8DoNapalms
	.def	__Z8DoNapalms;	.scl	2;	.type	32;	.endef
__Z8DoNapalms:
LFB27:
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
	movl	$7, 8(%esp)
	movl	$1, 4(%esp)
	movl	%ebp, (%esp)
	imull	$44, %ebp, %ebx
	addl	_sprite, %ebx
	call	__Z12DoBlurExtendsss
	movl	_User(,%ebp,4), %esi
	testb	$64, 71(%esi)
	je	L205
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	$-1171354717, %edi
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%ebx), %eax
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	leal	-1(%eax), %ecx
	movl	%edx, %eax
	mull	%edi
	movb	%cl, 21(%ebx)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%cl, 20(%ebx)
	cmpb	$30, %cl
	jbe	L232
L205:
	movl	4(%ebx), %eax
	movl	(%ebx), %edi
	movl	156(%esi), %ecx
	movl	152(%esi), %edx
	movl	%eax, 28(%esp)
	movl	8(%ebx), %eax
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movl	%eax, 24(%esp)
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	movl	%eax, 4(%esp)
	movl	160(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%ebp, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%esi)
	jne	L233
L207:
	movl	264(%esi), %eax
	testl	%eax, %eax
	je	L208
	movl	%eax, %edx
	andl	$114688, %edx
	cmpl	$49152, %edx
	je	L234
L208:
	movzwl	176(%esi), %eax
	addl	$1, %eax
	movw	%ax, 176(%esi)
	cmpw	$2, %ax
	jg	L209
	testw	%ax, %ax
	je	L213
L210:
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L235
L204:
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
L209:
	.cfi_restore_state
	xorl	%eax, %eax
	movw	%ax, 176(%esi)
L213:
	leal	8(%ebx), %eax
	movl	$-1171354717, %edi
	leal	4(%ebx), %ecx
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 24(%esp)
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
	movl	$35, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	24(%esp), %edx
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_NapExp, %ecx
	movl	$3072, %edx
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
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %edx
	movl	%ecx, 28(%esp)
	movl	_sprite, %ecx
	movl	%edx, 24(%esp)
	addl	%eax, %ecx
	addl	$40, %eax
	mull	%edi
	movl	%ecx, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$9999, %edx
	movw	%dx, 40(%ecx)
	movl	28(%esp), %edx
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movl	32(%esp), %ecx
	leal	16(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ecx), %edx
	subl	_sprite, %edx
	movb	$-40, 16(%ecx)
	movzwl	12(%ebx), %eax
	movw	%ax, 12(%ecx)
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$48, 20(%ecx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 21(%ecx)
	mull	%edi
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %ebx
	leal	1(%eax,%ebx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ebx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, _randomseed
	orw	$128, 12(%ecx)
	testb	$2, %ah
	jne	L211
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ecx)
L211:
	movl	24(%esp), %edi
	movl	28(%esp), %ebx
	movl	%ecx, 32(%esp)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-3, 12(%ecx)
	movl	$1500, 188(%edi)
	movl	%ebx, (%esp)
	call	__Z17DoFindGroundPoints
	movl	%ebx, %eax
	call	__Z18MissileWaterAdjusts.isra.0
	movl	32(%esp), %ecx
	movl	108(%edi), %ebx
	movl	%edi, 24(%esp)
	movl	$-1171354717, %eax
	movl	24(%esp), %edi
	leal	8(%ecx), %edx
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, 8(%ecx)
	movl	%ebx, 64(%edi)
	testb	$64, 71(%esi)
	je	L210
	orl	$1073741824, 68(%edi)
	movl	264(%esi), %eax
	testl	%eax, %eax
	je	L204
	.p2align 4
	.p2align 3
L235:
	movl	%ebp, (%esp)
	call	__Z13WeaponMoveHits
	testb	%al, %al
	movl	$0, %eax
	je	L204
	movl	%ebp, %eax
	call	__Z10KillSprites
L206:
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
L233:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L207
	movl	%ebp, (%esp)
	call	__Z11SpawnBubbles
	jmp	L207
	.p2align 4,,10
	.p2align 3
L234:
	andl	$16383, %eax
	movl	_sprite, %ecx
	imull	$44, %eax, %eax
	addl	%ecx, %eax
	movl	%eax, 32(%esp)
	movzwl	12(%eax), %eax
	movw	%ax, 38(%esp)
	andl	$17, %eax
	cmpw	$1, %ax
	jne	L208
	movl	%ebx, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	movl	%edi, (%ebx)
	movl	_sprite, %ecx
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
	movl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movl	32(%esp), %eax
	leal	12(%eax), %edi
	movl	$-1171354717, %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	mull	%edx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%eax)
	movl	152(%esi), %edx
	movl	156(%esi), %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%esi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%esi), %eax
	movl	%eax, 4(%esp)
	movl	160(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	subl	_sprite, %edi
	movl	%eax, 264(%esi)
	movl	$-1171354717, %eax
	mull	%edi
	movl	32(%esp), %eax
	movzwl	38(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 12(%eax)
	jmp	L208
	.p2align 4,,10
	.p2align 3
L232:
	movl	%ebp, (%esp)
	call	__Z14SpawnSmokePuffs
	movl	%ebp, %eax
	call	__Z10KillSprites
	jmp	L206
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	__Z11DoBloodWorms
	.def	__Z11DoBloodWorms;	.scl	2;	.type	32;	.endef
__Z11DoBloodWorms:
LFB28:
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
	subl	$96, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	8(%ebp), %eax
	movl	_sprite, %edi
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ecx
	movl	%eax, 64(%esp)
	movzwl	98(%esi), %eax
	leal	(%edi,%ecx), %ebx
	movl	%ecx, 48(%esp)
	movl	164(%esi), %ecx
	movw	%ax, 52(%esp)
	movzwl	96(%esi), %eax
	movw	%ax, 46(%esp)
	movl	156(%esi), %eax
	movl	%eax, 60(%esp)
	movl	152(%esi), %eax
	movl	%eax, 56(%esp)
	movzwl	24(%ebx), %eax
	movw	%ax, 54(%esp)
	movw	%ax, 74(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 68(%esp)
	testl	%ecx, %ecx
	je	L237
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	cmpl	$10240, %eax
	jle	L238
	leal	8(%ebx), %eax
	movl	$-1171354717, %edx
	subl	%edi, %eax
	mull	%edx
	shrl	$5, %edx
	cmpl	%ecx, 68(%esp)
	movl	_spritechanged(,%edx,4), %edi
	leal	1(%edi), %eax
	movl	%eax, _spritechanged(,%edx,4)
	jge	L239
	addl	$7680, 8(%ebx)
L240:
	movl	$0, 264(%esi)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	__Z18MissileHitDiveAreas
	movl	164(%esi), %eax
	testl	%eax, %eax
	jne	L250
	movzwl	180(%esi), %eax
	addl	$1, %eax
	movw	%ax, 180(%esi)
	cmpw	$3, %ax
	jg	L276
L250:
	movzwl	28(%ebx), %eax
	addw	$512, %ax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %esi
	leal	512(%eax), %edx
	movl	(%ebx), %eax
	andl	$2047, %edx
	addl	$1, _krandcount
	movl	%eax, 60(%esp)
	movl	4(%ebx), %eax
	movswl	_sintable(%edx,%edx), %edx
	movl	%eax, 68(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %ecx
	movzwl	%cx, %eax
	andl	$2047, %ecx
	movl	%eax, _randomseed
	leal	-1024(%ecx), %eax
/APP
 # 12329 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	%eax, 56(%esp)
	movl	$-1171354717, %edi
	movl	%edx, %eax
	mull	%edi
	movl	56(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	addl	%eax, (%ebx)
	leal	-1024(%ecx), %eax
/APP
 # 12330 "source/sw/src/weapon.cpp" 1
	imull %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	4(%ebx), %esi
	movl	%eax, %ecx
	movl	%esi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	24(%ebx), %eax
	addl	4(%ebx), %ecx
	movw	%ax, 80(%esp)
	leal	80(%esp), %eax
	movl	%ecx, 4(%ebx)
	movl	%eax, 12(%esp)
	movl	8(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	cmpw	$0, 80(%esp)
	js	L256
	movl	64(%esp), %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	movb	$1, _GlobalSkipZrange
	call	__Z14InitBloodSprayshs.isra.0
	movb	$0, _GlobalSkipZrange
L256:
	movl	%ebx, %edx
	subl	_sprite, %edx
	movl	$-1171354717, %ecx
	movl	%edx, %eax
	mull	%ecx
	movl	60(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, (%ebx)
	subl	_sprite, %esi
	movl	%esi, %eax
	mull	%ecx
	movl	68(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 4(%ebx)
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
L238:
	.cfi_restore_state
	movl	$0, 164(%esi)
L237:
	movl	(%ebx), %eax
	movl	%ebx, %edx
	movl	56(%esp), %ecx
	subl	%edi, %edx
	movl	$-1171354717, %edi
	movl	%eax, 36(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 32(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	movl	60(%esp), %ecx
	shrl	$5, %edx
	sarl	%eax
	addl	$1, _spritechanged(,%edx,4)
	addl	%eax, (%ebx)
	leal	4(%ebx), %eax
	movl	%eax, %edx
	subl	_sprite, %edx
	movl	%eax, 40(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	leal	74(%esp), %ecx
	shrl	$5, %edx
	sarl	%eax
	addl	$1, _spritechanged(,%edx,4)
	addl	4(%ebx), %eax
	movl	%eax, 4(%ebx)
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movswl	74(%esp), %eax
	testw	%ax, %ax
	js	L277
L241:
	movl	$0, 164(%esi)
	leal	8(%ebx), %edi
	movl	%edi, 68(%esp)
	cmpw	%ax, 24(%ebx)
	jne	L278
L244:
	leal	108(%esi), %edx
	movl	%edx, 16(%esp)
	leal	104(%esi), %edx
	movl	%edx, 12(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%edx, 4(%esp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movswl	24(%ebx), %eax
	movl	_sector, %ecx
	movl	$0, 124(%esi)
	movl	_sprite, %edi
	movl	68(%esp), %edx
	movl	$0, 128(%esi)
	leal	(%eax,%eax,4), %eax
	leal	(%ecx,%eax,8), %eax
	subl	%edi, %edx
	movl	%eax, 120(%esi)
	movl	%eax, 116(%esi)
	movl	108(%esi), %eax
	subl	$2048, %eax
	movl	%eax, 60(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	60(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movl	104(%esi), %eax
	subl	108(%esi), %eax
	addl	$3071, %eax
	cmpl	$6142, %eax
	jbe	L248
	movswl	24(%ebx), %eax
	leal	(%eax,%eax,4), %eax
	testb	$4, 38(%ecx,%eax,8)
	je	L240
	movl	40(%esp), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %ecx
	subl	%edi, %ecx
	subl	%edi, %eax
	leal	74(%esp), %edi
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	68(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%edi, (%esp)
	call	__Z9WarpPlanePiS_S_Ps
	movl	%eax, %edi
	testl	%eax, %eax
	je	L247
	movswl	74(%esp), %edx
	movl	64(%esp), %eax
	call	__Z20MissileWarpUpdatePosss
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z15MissileWarpTypeP12spritetypev7S0_
L247:
	movzwl	54(%esp), %eax
	cmpw	%ax, 24(%ebx)
	je	L240
	movl	_sprite, %edi
	movl	68(%esp), %edx
	movl	$-1171354717, %ecx
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	40(%esp), %eax
	subl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	%ebx, %eax
	subl	%edi, %eax
	leal	74(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	68(%esp), %ecx
	movl	%ebx, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%edi, (%esp)
	call	__Z4WarpPiS_S_Ps
	movl	%eax, %edi
	testl	%eax, %eax
	je	L240
	movswl	74(%esp), %edx
	movl	64(%esp), %eax
	call	__Z20MissileWarpUpdatePosss
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__Z15MissileWarpTypeP12spritetypev7S0_
	jmp	L240
	.p2align 4,,10
	.p2align 3
L277:
	movzwl	24(%ebx), %eax
	movl	%ebx, %edx
	subl	_sprite, %edx
	movw	%ax, 54(%esp)
	movw	%ax, 74(%esp)
	movl	%edx, %eax
	mull	%edi
	movl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	movl	%eax, (%ebx)
	subl	_sprite, %edx
	movl	$1, _clipmoveboxtracenum
	movl	%edx, %eax
	mull	%edi
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 4(%ebx)
	movzbl	18(%ebx), %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	_sprite, %edx
	leal	0(,%eax,4), %ecx
	movl	%edx, %eax
	mull	%edi
	movl	68(%esp), %eax
	movl	%eax, 88(%esp)
	movswl	52(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movlps	(%ebx), %xmm0
	movl	%eax, 24(%esp)
	movswl	46(%esp), %eax
	movl	%ecx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	60(%esp), %eax
	movlps	%xmm0, 80(%esp)
	leal	(%eax,%eax,2), %eax
	movl	$1090519104, 28(%esp)
	sall	$12, %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	leal	(%eax,%eax,2), %eax
	sall	$12, %eax
	movl	%eax, 8(%esp)
	leal	74(%esp), %eax
	movl	%eax, 4(%esp)
	leal	80(%esp), %eax
	movl	%eax, (%esp)
	call	_clipmove
	movlps	80(%esp), %xmm1
	movl	$3, _clipmoveboxtracenum
	movl	%eax, %edx
	movswl	74(%esp), %eax
	movl	_sprite, %edi
	movlps	%xmm1, (%ebx)
	testw	%ax, %ax
	js	L248
	testl	%edx, %edx
	je	L241
L248:
	leal	28(%ebx), %edx
	movl	$-1171354717, %eax
	negl	152(%esi)
	subl	%edi, %edx
	negl	156(%esi)
	movl	$0, 264(%esi)
	mull	%edx
	movswl	28(%ebx), %ecx
	addl	$1024, %ecx
	andl	$2047, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
L255:
	leal	-12(%ebp), %esp
	movl	$1, %eax
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
L278:
	.cfi_restore_state
	leal	76(%esp), %edx
	movl	%edx, 16(%esp)
	leal	80(%esp), %edx
	movl	%edx, 12(%esp)
	movl	4(%ebx), %edx
	movl	%edx, 8(%esp)
	movl	(%ebx), %edx
	movl	%edx, 4(%esp)
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	_sprite, %ecx
	subl	%ecx, %edi
	movl	%edi, %eax
	movl	$-1171354717, %edi
	mull	%edi
	movl	76(%esp), %eax
	movzwl	74(%esp), %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	cmpw	$4096, %di
	ja	L245
	movl	48(%esp), %eax
	movzwl	24(%ecx,%eax), %eax
	cmpw	$4096, %ax
	je	L245
	cmpw	%ax, %di
	je	L245
	movl	64(%esp), %eax
	call	_do_deletespritesect
	movl	64(%esp), %eax
	movswl	%di, %edx
	call	_do_insertsprite_at_headofsect
L245:
	movswl	24(%ebx), %eax
	jmp	L244
	.p2align 4,,10
	.p2align 3
L239:
	subl	$7680, 8(%ebx)
	jmp	L240
	.p2align 4,,10
	.p2align 3
L276:
	movl	64(%esp), %edi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%edi, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	call	__Z14InitBloodSprayshs.isra.0
	movswl	_headspritestat+4, %eax
	cmpl	$-1, %eax
	je	L251
	movl	_sprite, %ecx
	jmp	L252
	.p2align 5
	.p2align 4,,10
	.p2align 3
L253:
	movswl	_nextspritestat(%eax,%eax), %eax
	cmpl	$-1, %eax
	je	L251
L252:
	movl	_User(,%eax,4), %edx
	cmpw	$1095, 82(%edx)
	jne	L253
	imull	$44, %eax, %edx
	movzwl	30(%ecx,%edx), %edi
	cmpw	%di, 30(%ebx)
	jne	L253
	movswl	%ax, %ebx
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	$105, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	call	__Z14InitBloodSprayshs.isra.0
	movl	%ebx, (%esp)
	call	__Z10SetSuicides
L251:
	movl	64(%esp), %edi
	movl	%edi, (%esp)
	call	__Z12SpawnZombie2s
	movl	%edi, %eax
	call	__Z10KillSprites
	jmp	L255
	.cfi_endproc
LFE28:
	.p2align 4
	.globl	__Z6DoMirvs
	.def	__Z6DoMirvs;	.scl	2;	.type	32;	.endef
__Z6DoMirvs:
LFB34:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movswl	56(%esp), %edi
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movl	_sprite, %ebp
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %esi
	movl	%edi, 24(%esp)
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
	movl	%edi, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%esi)
	movl	%edi, (%esp)
	call	__Z18MissileHitDiveAreas
	testb	$64, 71(%esi)
	jne	L296
L280:
	movzwl	176(%esi), %eax
	addl	$1, %eax
	andw	$1, %ax
	movw	%ax, 176(%esi)
	jne	L281
	imull	$44, 24(%esp), %eax
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	$__ZZ6DoMirvsE4angs, %edi
	movl	%esi, 28(%esp)
	addl	%eax, %ebp
L283:
	movl	$800, 20(%esp)
	movzwl	(%edi), %eax
	movl	$2098, %edx
	addw	28(%ebp), %ax
	movl	_sg_MirvMeteor, %ecx
	andl	$2047, %eax
	movl	%eax, 16(%esp)
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
	movl	$5, %edx
	cwtl
	movl	_User(,%eax,4), %esi
	imull	$44, %eax, %ebx
	movl	%eax, 32(%esp)
	addl	_sprite, %ebx
	movw	%dx, 80(%esi)
	movl	$_sg_MirvMeteor, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	$_s_MirvMeteorExp, 28(%esi)
	movl	32(%esp), %edx
	movl	24(%esp), %eax
	call	__Z8SetOwnerss
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
	movb	$40, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	movb	$40, 21(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ecx, %edx
	movb	$8, 18(%ebx)
	mull	%edx
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movw	%ax, 36(%ebx)
	subl	%ecx, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$200, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$268439552, 96(%esi)
	movw	%ax, 212(%esi)
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
	movswl	36(%ebx), %eax
	movl	%eax, 160(%esi)
	movl	28(%esp), %eax
	testb	$64, 71(%eax)
	je	L282
	orl	$1073741824, 68(%esi)
L282:
	addl	$2, %edi
	cmpl	$__ZZ6DoMirvsE4angs+4, %edi
	jne	L283
	movl	28(%esp), %esi
	movl	36(%esp), %ebx
	.cfi_restore 3
L281:
	movl	264(%esi), %eax
	testl	%eax, %eax
	jne	L297
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L296:
	.cfi_restore_state
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$48, %ah
	jne	L280
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	jmp	L280
	.p2align 4,,10
	.p2align 3
L297:
	movl	24(%esp), %edi
	movl	%edi, (%esp)
	call	__Z14SpawnMeteorExps
	movl	%edi, %eax
	call	__Z10KillSprites
	movl	40(%esp), %esi
	movl	44(%esp), %edi
	movl	$1, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE34:
	.p2align 4
	.globl	__Z6DoRings
	.def	__Z6DoRings;	.scl	2;	.type	32;	.endef
__Z6DoRings:
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
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	_sprite, %ecx
	movswl	76(%esp), %eax
	imull	$44, %eax, %ebx
	movl	%eax, 20(%esp)
	movl	_User(,%eax,4), %ebp
	addl	%ecx, %ebx
	movswl	30(%ebx), %edi
	movl	_User(,%edi,4), %eax
	movl	144(%eax), %eax
	movl	%eax, 28(%esp)
	imull	$44, %edi, %eax
	leal	(%ecx,%eax), %esi
	testb	$64, 71(%ebp)
	je	L320
	leal	21(%ebx), %edx
	movl	$-1171354717, %edi
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzbl	21(%ebx), %eax
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	subl	$1, %eax
	movb	%al, 24(%esp)
	movb	%al, 21(%ebx)
	movl	%edx, %eax
	mull	%edi
	movzbl	24(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 20(%ebx)
	cmpb	$30, %al
	jbe	L300
	movswl	30(%ebx), %edi
	imull	$44, %edi, %eax
	addl	%eax, %ecx
	jmp	L299
	.p2align 4,,10
	.p2align 3
L320:
	movl	%esi, %ecx
L299:
	movl	(%ecx), %edx
	movl	%edx, (%ebx)
	movl	_sprite, %ecx
	movl	$-1171354717, %edx
	movl	4(%ecx,%eax), %eax
	movl	%eax, 4(%ebx)
	leal	8(%ebx), %eax
	movl	%eax, 24(%esp)
	subl	%ecx, %eax
	mull	%edx
	shrl	$5, %edx
	movl	_spritechanged(,%edx,4), %eax
	addl	$1, %eax
	movl	%eax, 32(%esp)
	movl	_User(,%edi,4), %eax
	movl	144(%eax), %edi
	testl	%edi, %edi
	je	L302
	movl	28(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 36(%esp)
	addl	$5120, %eax
L303:
	movl	32(%esp), %edi
	movl	%edi, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
	movzwl	212(%ebp), %eax
	cmpw	$0, 178(%ebp)
	je	L323
	subl	$96, %eax
	movw	%ax, 212(%ebp)
	cmpw	$800, %ax
	jle	L324
L311:
	leal	28(%ebx), %edx
	movl	$-1171354717, %edi
	movswl	28(%ebx), %esi
	subl	%ecx, %edx
	movl	%edx, %eax
	addl	$60, %esi
	mull	%edi
	andl	$2047, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movw	%si, 28(%ebx)
	addl	$512, %esi
	movswl	212(%ebp), %eax
	subl	%ecx, %edx
	andl	$2047, %esi
	movswl	_sintable(%esi,%esi), %esi
	imull	%eax, %esi
	movl	%edx, %eax
	mull	%edi
	sarl	$14, %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	28(%ebx), %eax
	leal	4(%ebx), %edx
	addl	%esi, (%ebx)
	movl	_sprite, %esi
	movswl	_sintable(%eax,%eax), %ecx
	movswl	212(%ebp), %eax
	subl	%esi, %edx
	imull	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	sarl	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	30(%ebx), %eax
	addl	%ecx, 4(%ebx)
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L314
	movl	28(%esp), %eax
	movl	$100, %ecx
	movl	288(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	24(%esp), %edx
	sarl	$16, %eax
	subl	%esi, %edx
	subl	%eax, %ecx
	movswl	212(%ebp), %eax
	imull	%eax, %ecx
	movl	%edx, %eax
	mull	%edi
	sall	$7, %ecx
	shrl	$5, %edx
	sarl	$9, %ecx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ecx, 8(%ebx)
L314:
	movl	20(%esp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_setsprite
	leal	48(%esp), %eax
	movl	%eax, 16(%esp)
	leal	52(%esp), %eax
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
	movl	8(%ebx), %edx
	movl	48(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L316
	movl	24(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movl	%ecx, 8(%ebx)
L316:
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %al
	je	L325
	imull	%ecx, %eax
	leal	0(,%eax,4), %ecx
L318:
	addl	52(%esp), %ecx
	cmpl	%edx, %ecx
	jle	L319
	movl	24(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
L319:
	movl	20(%esp), %eax
	movl	%eax, 76(%esp)
	addl	$56, %esp
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
	jmp	__Z12DoDamageTests
	.p2align 4,,10
	.p2align 3
L323:
	.cfi_restore_state
	addl	$96, %eax
	movw	%ax, 212(%ebp)
	cmpw	$3200, %ax
	jle	L311
	movl	$1, %esi
	movw	%si, 178(%ebp)
	jmp	L311
	.p2align 4,,10
	.p2align 3
L302:
	movswl	14(%esi), %edi
	movswl	_tilesiz+2(,%edi,4), %eax
	movl	%edi, 40(%esp)
	movl	8(%esi), %edi
	movl	%eax, 44(%esp)
	movzbl	21(%esi), %eax
	movl	%edi, 36(%esp)
	testb	$-128, 12(%esi)
	jne	L326
	cmpb	$64, %al
	je	L327
	imull	44(%esp), %eax
	sall	$2, %eax
L308:
	movl	36(%esp), %edi
	subl	%eax, %edi
L309:
	movl	36(%esp), %eax
	addl	%edi, %eax
	sarl	%eax
	addl	$7680, %eax
	jmp	L303
	.p2align 4,,10
	.p2align 3
L325:
	sall	$8, %ecx
	jmp	L318
	.p2align 4,,10
	.p2align 3
L326:
	movl	40(%esp), %edi
	movsbl	_picanm+2(%edi,%edi,4), %esi
	sall	$8, %esi
	cmpb	$64, %al
	je	L328
	imull	44(%esp), %eax
	movl	36(%esp), %edi
	addl	%eax, %eax
	movl	%eax, 40(%esp)
	addl	%esi, %eax
	subl	%eax, %edi
L306:
	movl	40(%esp), %eax
	subl	%esi, %eax
	addl	%eax, 36(%esp)
	jmp	L309
	.p2align 4,,10
	.p2align 3
L300:
	movl	20(%esp), %edi
	movl	%edi, (%esp)
	call	__Z14SpawnSmokePuffs
	movl	%edi, %eax
	call	__Z10KillSprites
	addl	$56, %esp
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
L324:
	.cfi_restore_state
	movswl	30(%ebx), %eax
	movl	_User(,%eax,4), %eax
	movl	144(%eax), %edx
	testl	%edx, %edx
	je	L329
L312:
	movl	20(%esp), %eax
	call	__Z10KillSprites
	addl	$56, %esp
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
L327:
	.cfi_restore_state
	movl	44(%esp), %eax
	sall	$8, %eax
	jmp	L308
	.p2align 4,,10
	.p2align 3
L329:
	subw	$1, 176(%eax)
	jmp	L312
	.p2align 4,,10
	.p2align 3
L328:
	movl	44(%esp), %eax
	movl	36(%esp), %edi
	sall	$7, %eax
	movl	%eax, 40(%esp)
	addl	%esi, %eax
	subl	%eax, %edi
	jmp	L306
	.cfi_endproc
LFE35:
	.p2align 4
	.globl	__Z13InitSpellRingP12PLAYERstruct
	.def	__Z13InitSpellRingP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z13InitSpellRingP12PLAYERstruct:
LFB36:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpw	$9, 23032(%eax)
	jg	L332
	ret
	.p2align 4,,10
	.p2align 3
L332:
	jmp	__Z13InitSpellRingP12PLAYERstruct.part.0
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__Z13InitLavaThrows
	.def	__Z13InitLavaThrows;	.scl	2;	.type	32;	.endef
__Z13InitLavaThrows:
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movswl	64(%esp), %esi
	movl	_User(,%esi,4), %eax
	imull	$44, %esi, %ebx
	addl	_sprite, %ebx
	movl	%eax, 28(%esp)
	movl	200(%eax), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %edi
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	4(%ebx), %eax
	movl	8(%ebx), %ecx
	movl	(%ebx), %ebp
	movw	%di, 28(%ebx)
	movswl	14(%ebx), %edi
	movzbl	21(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	%ecx, 32(%esp)
	movswl	_tilesiz+2(,%edi,4), %eax
	testb	$-128, 12(%ebx)
	je	L334
	cmpb	$64, %dl
	je	L353
	movl	%edx, %ecx
	movsbl	_picanm+2(%edi,%edi,4), %edi
	imull	%eax, %ecx
	sall	$8, %edi
	leal	(%edi,%ecx,2), %edi
	movl	32(%esp), %ecx
	subl	%edi, %ecx
	jmp	L337
	.p2align 4,,10
	.p2align 3
L334:
	cmpb	$64, %dl
	je	L354
	movl	%edx, %edi
	movl	32(%esp), %ecx
	imull	%eax, %edi
	sall	$2, %edi
	subl	%edi, %ecx
L337:
	imull	%edx, %eax
L339:
	addl	%ecx, %eax
	movl	36(%esp), %edi
	movl	%ebp, 4(%esp)
	movl	$_s_LavaBoulder, %ecx
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	$2196, %edx
	movl	%edi, 16(%esp)
	movl	$500, 20(%esp)
	movl	%eax, 8(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	cwtl
	imull	$44, %eax, %ebx
	movl	%eax, %edx
	movl	%eax, 24(%esp)
	movl	_User(,%eax,4), %ebp
	movl	%esi, %eax
	addl	_sprite, %ebx
	movl	$-1171354717, %esi
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	40(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$72, 21(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movb	$72, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	leal	36(%ebx), %eax
	movl	%eax, 40(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movb	$-15, 16(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 36(%ebx)
	leal	28(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	movl	_krandcount, %eax
	movl	%eax, 32(%esp)
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	movw	%di, 28(%ebx)
	leal	1(%eax,%edx,4), %edi
	leal	12(%ebx), %edx
	movzwl	%di, %eax
	subl	%ecx, %edx
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	andl	$1023, %edi
	cmpl	$512, %edi
	jle	L340
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
L340:
	movl	32(%esp), %eax
	movl	36(%esp), %edi
	addl	$2, %eax
	movl	%eax, _krandcount
	leal	(%edi,%edi,4), %eax
	leal	1(%edi,%eax,4), %eax
	movzwl	%ax, %esi
	andl	$1023, %eax
	movl	%esi, _randomseed
	cmpl	$512, %eax
	jle	L341
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
L341:
	movl	$200, 188(%ebp)
	movl	$-1171354717, %eax
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$128, 12(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$64, 18(%ebx)
	movl	$234884608, 96(%ebp)
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
	movl	%eax, 160(%ebp)
	movl	24(%esp), %eax
	movl	$1200, 8(%esp)
	movl	$__Z13DoLavaBoulders, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	28(%esp), %eax
	movl	200(%eax), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovns	%esi, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %edi
	cmovg	%ecx, %eax
	sarl	%eax
	subl	%eax, %edi
	je	L333
	movswl	32(%ebx), %eax
	movl	8(%edx), %esi
	movzbl	21(%edx), %ecx
	movl	%eax, 28(%esp)
	movswl	14(%edx), %eax
	movl	%esi, 32(%esp)
	movl	%eax, 36(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	testb	$-128, 12(%edx)
	je	L343
	cmpb	$64, %cl
	je	L355
	movl	36(%esp), %esi
	movl	%ecx, %edx
	imull	%eax, %edx
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	leal	(%esi,%edx,2), %esi
	movl	32(%esp), %edx
	subl	%esi, %edx
L346:
	imull	%ecx, %eax
L348:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	imull	28(%esp), %eax
	cltd
	idivl	%edi
	movl	40(%esp), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
	movswl	%cx, %ecx
	movl	%ecx, 160(%ebp)
L333:
	movl	24(%esp), %eax
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
L343:
	.cfi_restore_state
	cmpb	$64, %cl
	je	L356
	movl	%ecx, %esi
	movl	32(%esp), %edx
	imull	%eax, %esi
	sall	$2, %esi
	subl	%esi, %edx
	jmp	L346
	.p2align 4,,10
	.p2align 3
L354:
	movl	32(%esp), %ecx
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
L336:
	sall	$6, %eax
	jmp	L339
	.p2align 4,,10
	.p2align 3
L353:
	movsbl	_picanm+2(%edi,%edi,4), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	sall	$8, %edx
	addl	%ecx, %edx
	movl	32(%esp), %ecx
	subl	%edx, %ecx
	jmp	L336
	.p2align 4,,10
	.p2align 3
L356:
	movl	32(%esp), %edx
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%ecx, %edx
L345:
	sall	$6, %eax
	jmp	L348
	.p2align 4,,10
	.p2align 3
L355:
	movl	36(%esp), %esi
	movl	%eax, %ecx
	sall	$7, %ecx
	movsbl	_picanm+2(%esi,%esi,4), %edx
	sall	$8, %edx
	addl	%edx, %ecx
	movl	32(%esp), %edx
	subl	%ecx, %edx
	jmp	L345
	.cfi_endproc
LFE37:
	.p2align 4
	.globl	__Z10DoSerpRings
	.def	__Z10DoSerpRings;	.scl	2;	.type	32;	.endef
__Z10DoSerpRings:
LFB38:
	.cfi_startproc
	subl	$60, %esp
	.cfi_def_cfa_offset 64
	movl	_sprite, %edx
	movl	%edi, 52(%esp)
	.cfi_offset 7, -12
	movswl	64(%esp), %edi
	movl	%ebx, 44(%esp)
	.cfi_offset 3, -20
	imull	$44, %edi, %ebx
	movl	%esi, 48(%esp)
	.cfi_offset 6, -16
	movl	_User(,%edi,4), %esi
	addl	%edx, %ebx
	movswl	30(%ebx), %eax
	cmpw	$-1, %ax
	je	L358
	movl	_User(,%eax,4), %ecx
	movl	%ecx, 20(%esp)
	cmpw	$4, 80(%ecx)
	jle	L358
	imull	$44, %eax, %eax
	movl	%ebp, 56(%esp)
	.cfi_offset 5, -8
	movswl	36(%ebx), %ecx
	movl	(%edx,%eax), %edx
	movl	%edx, (%ebx)
	movl	_sprite, %ebp
	movl	$-1171354717, %edx
	movl	4(%ebp,%eax), %eax
	movl	%eax, 4(%ebx)
	leal	8(%ebx), %eax
	movl	%eax, 24(%esp)
	subl	%ebp, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	30(%ebx), %eax
	addl	8(%ebx), %ecx
	imull	$44, %eax, %eax
	movl	%ecx, 8(%ebx)
	movl	8(%ebp,%eax), %eax
	subl	256(%esi), %eax
	cmpl	%ecx, %eax
	jge	L360
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, 8(%ebx)
L360:
	cmpw	$0, 178(%esi)
	jne	L363
	movzwl	212(%esi), %eax
	addl	$96, %eax
	movw	%ax, 212(%esi)
	cmpw	214(%esi), %ax
	jle	L363
	movl	$1, %eax
	movw	%ax, 178(%esi)
L363:
	movzwl	34(%ebx), %eax
	addw	228(%esi), %ax
	andw	$2047, %ax
	movw	%ax, 228(%esi)
	leal	28(%ebx), %eax
	movswl	28(%ebx), %ecx
	movl	%eax, %edx
	movl	%eax, 28(%esp)
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	mull	%edx
	leal	336(%ecx), %eax
	subl	$336, %ecx
	andl	$2047, %eax
	andl	$2047, %ecx
	shrl	$5, %edx
	testb	$32, 71(%esi)
	cmovne	%eax, %ecx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%ebp, %edx
	movw	%cx, 28(%ebx)
	movswl	228(%esi), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ecx
	movswl	212(%esi), %eax
	imull	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	addl	%ecx, (%ebx)
	movswl	228(%esi), %eax
	subl	_sprite, %edx
	movswl	_sintable(%eax,%eax), %ecx
	movswl	212(%esi), %eax
	imull	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$14, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	addl	%ecx, 4(%ebx)
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_setsprite
	leal	36(%esp), %eax
	movl	%eax, 16(%esp)
	leal	40(%esp), %eax
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
	movl	8(%ebx), %edx
	movl	36(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L366
	movl	24(%esp), %edx
	movl	$-1171354717, %eax
	subl	_sprite, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movl	%ecx, 8(%ebx)
L366:
	movswl	14(%ebx), %ecx
	movzbl	21(%ebx), %eax
	movswl	_tilesiz+2(,%ecx,4), %ecx
	cmpb	$64, %al
	je	L393
	imull	%ecx, %eax
	leal	0(,%eax,4), %ecx
L368:
	addl	40(%esp), %ecx
	cmpl	%edx, %ecx
	jle	L369
	movl	24(%esp), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movl	%ecx, 8(%ebx)
L369:
	cmpw	$0, 178(%esi)
	jle	L392
	movl	20(%esp), %eax
	movl	200(%eax), %edx
	movl	%edx, %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L370
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L370
	testb	$2, 22968(%eax)
	je	L370
	.p2align 4
	.p2align 3
L392:
	movl	56(%esp), %ebp
	.cfi_restore 5
L362:
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	xorl	%eax, %eax
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L370:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edx, 200(%esi)
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	4(%edx), %edx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%ebx), %ecx
	subl	%ecx, %edx
	movl	%edx, %ebp
	negl	%ebp
	cmovns	%ebp, %edx
	cmpl	%edx, %eax
	leal	(%eax,%edx), %ebp
	cmovg	%edx, %eax
	sarl	%eax
	subl	%eax, %ebp
	cmpl	$17999, %ebp
	jle	L394
L371:
	movswl	30(%ebx), %eax
	movl	_User(,%eax,4), %eax
	cmpw	$3, 176(%eax)
	jg	L392
L372:
	movzwl	24(%ebx), %eax
	movl	%ecx, 4(%esp)
	movw	%ax, 34(%esp)
	leal	34(%esp), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_updatesector
	cmpw	$-1, 34(%esp)
	je	L392
	movl	%edi, (%esp)
	call	__Z12CanSeePlayers
	testl	%eax, %eax
	je	L392
	movl	$820, %eax
	sarl	$5, %ebp
	movw	%ax, 82(%esi)
	movl	200(%esi), %eax
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	subl	4(%ebx), %edx
	subl	(%ebx), %ecx
	call	@getangle@8
	movl	$-1171354717, %ecx
	addl	$1, _krandcount
	movl	%eax, 20(%esp)
	movl	28(%esp), %eax
	subl	_sprite, %eax
	mull	%ecx
	movzwl	20(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ebx), %edx
	subl	_sprite, %edx
	movw	%ax, 28(%ebx)
	movl	%edx, %eax
	mull	%ecx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, _randomseed
	sarl	$8, %eax
	movw	%bp, 32(%ebx)
	andl	$127, %eax
	sarw	%bp
	addl	$1, _spritechanged(,%edx,4)
	addw	%bp, 32(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	$-800, %edx
	addw	%ax, 32(%ebx)
	movl	%edi, %eax
	movw	%dx, 92(%esi)
	movl	$2, %edx
	call	__Z18change_sprite_statss
	movl	%edi, %eax
	movl	$_sg_SkullJump, %edx
	call	__Z13NewStateGroupsPP11STATEstruct.isra.0
	movl	_User(,%edi,4), %edx
	movl	$8, %ecx
	movl	68(%edx), %eax
	movw	%cx, 94(%edx)
	andl	$-65, %eax
	orl	$32, %eax
	movl	%eax, 68(%edx)
	movl	56(%esp), %ebp
	.cfi_restore 5
	movl	44(%esp), %ebx
	movl	48(%esp), %esi
	movl	%edi, 64(%esp)
	movl	52(%esp), %edi
	addl	$60, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__Z6DoJumps
	.p2align 4,,10
	.p2align 3
L358:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	cmpw	$1, _gNet+12
	je	L361
	movl	%edi, %eax
	call	__Z21UpdateSinglePlayKillss.part.0
L361:
	movl	%edi, (%esp)
	call	__Z17DoSkullBeginDeaths
	movl	$822, %eax
	movw	%ax, 82(%esi)
	jmp	L362
	.p2align 4,,10
	.p2align 3
L393:
	.cfi_offset 5, -8
	sall	$8, %ecx
	jmp	L368
	.p2align 4,,10
	.p2align 3
L394:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%edx, _randomseed
	testb	$-2, %ah
	je	L372
	jmp	L371
	.cfi_endproc
LFE38:
	.p2align 4
	.globl	__Z12InitSerpRings
	.def	__Z12InitSerpRings;	.scl	2;	.type	32;	.endef
__Z12InitSerpRings:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$12, %edx
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
	movl	_sprite, %ebp
	movswl	68(%esp), %eax
	movl	%eax, 44(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %edi
	movw	%dx, 176(%eax)
	movl	%eax, 36(%esp)
	movzwl	28(%edi), %eax
	leal	8(%edi), %esi
	movl	%esi, %edx
	subw	$1024, %ax
	subl	%ebp, %edx
	andw	$2047, %ax
	movw	%ax, 40(%esp)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%edi), %ecx
	movl	$130, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movzwl	40(%esp), %eax
	addw	$2040, %ax
	movw	%ax, 42(%esp)
	jmp	L402
	.p2align 4,,10
	.p2align 3
L407:
	cmpb	$64, %al
	je	L405
	imull	32(%esp), %eax
	addl	%eax, %eax
L398:
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movl	24(%esp), %edx
	sall	$8, %ecx
	addl	%ecx, %eax
	subl	%eax, %edx
	leal	-5120(%edx), %ecx
L399:
	leal	8(%ebx), %edx
	movl	$-1171354717, %eax
	addl	$1, _krandcount
	subl	%ebp, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
	movl	$12800, 256(%esi)
	movzwl	28(%ebx), %eax
	movw	%ax, 228(%esi)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	leal	28(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%ebp, %edx
	movzwl	%cx, %ecx
	movl	28(%esp), %ebp
	mull	%edx
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	36(%esp), %ecx
	movl	68(%ecx), %eax
	movl	%eax, 24(%esp)
	xorl	$536870912, %eax
	movl	%eax, 68(%ecx)
	andl	$536870912, %eax
	orl	%eax, 68(%esi)
	xorl	%eax, %eax
	movw	%ax, 178(%esi)
	movl	$183501400, 212(%esi)
	movl	$_s_SkullExplode, 28(%esi)
	movl	$_sg_SkullRing, 20(%esi)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	$6, %edx
	movl	%ebp, %eax
	call	__Z18change_sprite_statss
	movl	_sprite, %ecx
	leal	42(%ebx), %edx
	movl	$-1171354717, %eax
	addw	$170, 40(%esp)
	subl	%ecx, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	andw	$-2049, 42(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$48, 18(%ebx)
	mull	%edx
	orl	$16777216, 68(%esi)
	movzwl	40(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$400, 188(%esi)
	cmpw	42(%esp), %ax
	je	L406
L402:
	movswl	40(%esp), %eax
	movl	$_s_SkullRing, %ecx
	movl	$822, %edx
	movl	$0, 20(%esp)
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$6, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ecx
	imull	$44, %ecx, %eax
	movl	_User(,%ecx,4), %esi
	movl	%ecx, 28(%esp)
	addl	%eax, %ebx
	leal	32(%eax), %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	44(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$500, %edx
	movw	%dx, 32(%ebx)
	movl	%ecx, %edx
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$24, %ecx
	subl	%ebp, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$-20, 16(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$64, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ebx), %edx
	subl	%ebp, %edx
	movb	$64, 21(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	subl	%ebp, %edx
	movw	%cx, 34(%ebx)
	mull	%edx
	movl	$768, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	movw	%ax, 36(%ebx)
	subl	%ebp, %edx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$0, 17(%ebx)
	movswl	14(%edi), %ecx
	movl	8(%edi), %edx
	movswl	_tilesiz+2(,%ecx,4), %eax
	movl	%edx, 24(%esp)
	movl	%eax, 32(%esp)
	movzbl	21(%edi), %eax
	testb	$-128, 12(%edi)
	jne	L407
	cmpb	$64, %al
	je	L408
	imull	32(%esp), %eax
	sall	$2, %eax
L401:
	movl	24(%esp), %edx
	subl	%eax, %edx
	leal	-5120(%edx), %ecx
	jmp	L399
	.p2align 4,,10
	.p2align 3
L405:
	movl	32(%esp), %eax
	sall	$7, %eax
	jmp	L398
	.p2align 4,,10
	.p2align 3
L408:
	movl	32(%esp), %eax
	sall	$8, %eax
	jmp	L401
	.p2align 4,,10
	.p2align 3
L406:
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
LFE41:
	.p2align 4
	.globl	__Z15InitSpellNapalmP12PLAYERstruct
	.def	__Z15InitSpellNapalmP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitSpellNapalmP12PLAYERstruct:
LFB42:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
	movl	68(%esp), %edi
	cmpw	$9, 23032(%edi)
	jg	L434
L409:
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_remember_state
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L434:
	.cfi_restore_state
	movl	$-10, %ecx
	movl	$8, %edx
	movl	%edi, %eax
	call	__Z16PlayerUpdateAmmoP12PLAYERstructss
	leal	8(%edi), %eax
	movl	%edi, %edx
	leal	4(%edi), %ecx
	movl	%eax, (%esp)
	movl	$33, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	268(%edi), %edx
	testw	%dx, %dx
	js	L409
	movl	%ebx, 48(%esp)
	movl	%esi, 52(%esp)
	movl	%ebp, 60(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	$__ZZ15InitSpellNapalmP12PLAYERstructE2mp, 32(%esp)
	movl	$0, 24(%esp)
L422:
	movl	300(%edi), %ecx
	movl	$1600, 20(%esp)
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	movl	$_s_Napalm, %ecx
	sarl	$16, %eax
	movl	%eax, 16(%esp)
	movl	8(%edi), %eax
	addl	$3072, %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%edx, (%esp)
	movl	$2010, %edx
	movl	%eax, 4(%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %ebp
	movl	%ebx, 28(%esp)
	movl	%ebx, %esi
	leal	40(%eax), %edx
	leal	(%ecx,%eax), %ebx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L435
L412:
	movl	352(%edi), %eax
	movl	28(%esp), %edx
	subl	%ecx, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	call	__Z8SetOwnerss
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 21(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ebx), %edx
	movb	$0, 18(%ebx)
	movl	288(%edi), %eax
	subl	%esi, %edx
	movl	%eax, 36(%esp)
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	sarl	$31, %ecx
	movl	36(%esp), %eax
	xorw	%cx, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32768(%eax,%ecx), %edx
	movl	$200, %ecx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	movl	$100, %edx
	sarl	$16, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	leal	12(%ebx), %edx
	sall	$7, %eax
	subl	%esi, %edx
	movw	%ax, 36(%ebx)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	movl	$16777472, 96(%ebp)
	orl	$8192, 72(%ebp)
	movw	%cx, 212(%ebp)
	movl	352(%edi), %ecx
	movzbl	18(%ecx), %eax
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movb	%al, 36(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	32(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%ecx)
	movl	(%eax), %edx
	movzwl	28(%ebx), %ecx
	testl	%edx, %edx
	jne	L436
L417:
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
	movswl	36(%ebx), %eax
	movl	%eax, 160(%ebp)
	movl	32(%esp), %eax
	movl	4(%eax), %eax
	movl	$__Z8DoNapalms, 4(%esp)
	movl	%eax, 8(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	_sprite, %esi
	testb	%al, %al
	jne	L437
	testb	$2, 22970(%edi)
	jne	L420
	movswl	24(%ebx), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$3, 39(%eax)
	je	L421
L420:
	orl	$1073741824, 68(%ebp)
L421:
	movl	352(%edi), %ecx
	movl	$-1171354717, %eax
	leal	18(%ecx), %edx
	subl	%esi, %edx
	mull	%edx
	movzbl	36(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	%al, 18(%ecx)
	xorl	%eax, %eax
	movw	%ax, 176(%ebp)
L419:
	addl	$1, 24(%esp)
	cmpl	$3, 24(%esp)
	je	L432
	addl	$12, 32(%esp)
	movswl	268(%edi), %edx
	jmp	L422
	.p2align 4,,10
	.p2align 3
L432:
	movl	48(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %ebp
	.cfi_restore 5
	movl	56(%esp), %edi
	addl	$64, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L436:
	.cfi_restore_state
	movzwl	8(%eax), %eax
	movw	%ax, 46(%esp)
	leal	28(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 40(%esp)
	movl	$-1171354717, %eax
	subl	%esi, %edx
	movzwl	46(%esp), %esi
	mull	%edx
	movl	28(%esp), %eax
	addl	%esi, %ecx
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	$3600, 4(%esp)
	movl	%eax, (%esp)
	call	__Z18HelpMissileLateralsi
	movzwl	28(%ebx), %ecx
	movl	$-1171354717, %eax
	subl	%esi, %ecx
	movl	40(%esp), %esi
	subl	_sprite, %esi
	mull	%esi
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L417
	.p2align 4,,10
	.p2align 3
L435:
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 36(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 40(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	40(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$34, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L433
	cmpl	$-1, 32(%eax)
	je	L438
L414:
	movw	%si, 48(%eax)
	movl	_sprite, %ecx
	jmp	L412
	.p2align 4,,10
	.p2align 3
L437:
	movl	352(%edi), %ecx
	movl	$-1171354717, %edx
	leal	18(%ecx), %eax
	subl	%esi, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movzbl	36(%esp), %eax
	movb	%al, 18(%ecx)
	movl	28(%esp), %eax
	call	__Z10KillSprites
	jmp	L419
	.p2align 4,,10
	.p2align 3
L438:
	testb	$16, 28(%eax)
	jne	L414
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
L433:
	movl	_sprite, %ecx
	jmp	L412
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__Z15InitEnemyNapalms
	.def	__Z15InitEnemyNapalms;	.scl	2;	.type	32;	.endef
__Z15InitEnemyNapalms:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$-1171354717, %ebx
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	_sprite, %ecx
	movswl	88(%esp), %esi
	imull	$44, %esi, %eax
	movl	%esi, 60(%esp)
	leal	(%ecx,%eax), %edi
	movl	_User(,%esi,4), %eax
	leal	8(%edi), %ebp
	movl	%ebp, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	4(%edi), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$33, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	leal	18(%edi), %eax
	movl	$__ZZ15InitEnemyNapalmsE2mp, 28(%esp)
	movl	%eax, 40(%esp)
	movl	$0, 24(%esp)
L459:
	movswl	14(%edi), %ebx
	movswl	28(%edi), %esi
	movl	8(%edi), %ecx
	movzbl	21(%edi), %edx
	movswl	_tilesiz+2(,%ebx,4), %eax
	testb	$-128, 12(%edi)
	je	L440
	cmpb	$64, %dl
	je	L465
	movl	%edx, %ebp
	movsbl	_picanm+2(%ebx,%ebx,4), %ebx
	imull	%eax, %ebp
	sall	$8, %ebx
	leal	(%ebx,%ebp,2), %ebx
	subl	%ebx, %ecx
L443:
	imull	%edx, %eax
L445:
	addl	%ecx, %eax
	movl	%esi, 16(%esp)
	movl	$_s_Napalm, %ecx
	movl	$2010, %edx
	movl	$800, 20(%esp)
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
	movswl	%ax, %ebx
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %ebp
	movl	%ebx, 36(%esp)
	movl	%ebx, %esi
	leal	40(%eax), %edx
	leal	(%ecx,%eax), %ebx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, 40(%ebx)
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L466
L446:
	movl	32(%esp), %eax
	cmpw	$1095, 82(%eax)
	je	L467
	movl	36(%esp), %edx
	movl	60(%esp), %eax
	call	__Z8SetOwnerss
L450:
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$200, %ecx
	subl	%esi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 21(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	$0, 18(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	40(%esp), %edx
	andw	$-258, 12(%ebx)
	movl	$16777472, 96(%ebp)
	subl	%esi, %edx
	orl	$8192, 72(%ebp)
	movw	%cx, 212(%ebp)
	movzbl	18(%edi), %eax
	movb	%al, 44(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%edi)
	movl	(%eax), %edx
	testl	%edx, %edx
	jne	L468
L451:
	movl	32(%esp), %eax
	movl	200(%eax), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	movl	4(%edx), %esi
	negl	%eax
	cmovs	%ecx, %eax
	subl	4(%ebx), %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovns	%ecx, %esi
	cmpl	%esi, %eax
	leal	(%eax,%esi), %ecx
	cmovg	%esi, %eax
	movl	%ecx, %esi
	sarl	%eax
	subl	%eax, %esi
	movl	%esi, 48(%esp)
	cmpw	%ax, %cx
	je	L452
	movswl	32(%ebx), %eax
	movl	8(%edx), %esi
	movzbl	21(%edx), %ecx
	movl	%eax, 52(%esp)
	movswl	14(%edx), %eax
	movl	%esi, 56(%esp)
	movl	%eax, 64(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	testb	$-128, 12(%edx)
	je	L453
	cmpb	$64, %cl
	je	L469
	movl	64(%esp), %esi
	movl	%ecx, %edx
	imull	%eax, %edx
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	leal	(%esi,%edx,2), %esi
	movl	56(%esp), %edx
	subl	%esi, %edx
	jmp	L456
	.p2align 4,,10
	.p2align 3
L453:
	cmpb	$64, %cl
	je	L470
	movl	%ecx, %esi
	movl	56(%esp), %edx
	imull	%eax, %esi
	sall	$2, %esi
	subl	%esi, %edx
L456:
	imull	%ecx, %eax
L458:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	movswl	48(%esp), %esi
	imull	52(%esp), %eax
	cltd
	idivl	%esi
	leal	36(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
L452:
	movswl	28(%ebx), %eax
	movswl	32(%ebx), %edx
	movl	28(%esp), %esi
	addl	$512, %eax
	andl	$2047, %eax
	addl	$12, %esi
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
	movl	-8(%esi), %eax
	movl	$__Z8DoNapalms, 4(%esp)
	movl	%eax, 8(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	$-1171354717, %eax
	movl	40(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	44(%esp), %eax
	addl	$1, 24(%esp)
	movl	%esi, 28(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	cmpl	$3, 24(%esp)
	movb	%al, 18(%edi)
	movl	32(%esp), %eax
	movw	%dx, 176(%eax)
	jne	L459
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
L440:
	.cfi_restore_state
	cmpb	$64, %dl
	je	L471
	movl	%edx, %ebx
	imull	%eax, %ebx
	sall	$2, %ebx
	subl	%ebx, %ecx
	jmp	L443
	.p2align 4,,10
	.p2align 3
L467:
	movswl	30(%edi), %eax
	movl	36(%esp), %edx
	call	__Z8SetOwnerss
	jmp	L450
	.p2align 4,,10
	.p2align 3
L468:
	movzwl	8(%eax), %eax
	movzwl	28(%ebx), %ecx
	movw	%ax, 48(%esp)
	addl	%eax, %ecx
	leal	28(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 52(%esp)
	movl	$-1171354717, %eax
	andw	$2047, %cx
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	36(%esp), %ecx
	movl	$3600, 4(%esp)
	movl	%ecx, (%esp)
	call	__Z18HelpMissileLateralsi
	movl	52(%esp), %esi
	movl	$-1171354717, %eax
	subl	_sprite, %esi
	mull	%esi
	movzwl	28(%ebx), %ecx
	subw	48(%esp), %cx
	andw	$2047, %cx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	jmp	L451
	.p2align 4,,10
	.p2align 3
L466:
	leal	8(%ebx), %eax
	movl	%eax, %edx
	movl	%eax, 48(%esp)
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 44(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	44(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$34, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	48(%esp), %edx
	movl	$1, 4(%esp)
	movl	%edx, (%esp)
	movl	%ebx, %edx
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L446
	cmpl	$-1, 32(%eax)
	je	L472
L447:
	movw	%si, 48(%eax)
	jmp	L446
	.p2align 4,,10
	.p2align 3
L471:
	movl	%eax, %edx
	sall	$8, %edx
	subl	%edx, %ecx
L442:
	sall	$6, %eax
	jmp	L445
	.p2align 4,,10
	.p2align 3
L465:
	movsbl	_picanm+2(%ebx,%ebx,4), %edx
	movl	%eax, %ebp
	sall	$7, %ebp
	sall	$8, %edx
	addl	%ebp, %edx
	subl	%edx, %ecx
	jmp	L442
	.p2align 4,,10
	.p2align 3
L470:
	movl	56(%esp), %edx
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%ecx, %edx
L455:
	sall	$6, %eax
	jmp	L458
	.p2align 4,,10
	.p2align 3
L469:
	movl	64(%esp), %ecx
	movsbl	_picanm+2(%ecx,%ecx,4), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	sall	$8, %edx
	addl	%edx, %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	jmp	L455
	.p2align 4,,10
	.p2align 3
L472:
	testb	$16, 28(%eax)
	jne	L447
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L446
	.cfi_endproc
LFE44:
	.p2align 4
	.globl	__Z14InitSumoNapalms
	.def	__Z14InitSumoNapalms;	.scl	2;	.type	32;	.endef
__Z14InitSumoNapalms:
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
	subl	$68, %esp
	.cfi_def_cfa_offset 88
	movl	_sprite, %ecx
	movswl	88(%esp), %ebx
	imull	$44, %ebx, %eax
	movl	%ebx, 52(%esp)
	leal	(%ecx,%eax), %edi
	movl	_User(,%ebx,4), %eax
	movl	$-1171354717, %ebx
	leal	8(%edi), %ebp
	movl	%ebp, %edx
	movl	%eax, 32(%esp)
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	4(%edi), %ecx
	movl	%edx, %eax
	mull	%ebx
	movl	$33, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movzwl	28(%edi), %eax
	leal	18(%edi), %ecx
	movl	%ecx, 36(%esp)
	movw	%ax, 48(%esp)
	addw	$2048, %ax
	movw	%ax, 50(%esp)
L474:
	movswl	14(%edi), %ecx
	movswl	48(%esp), %ebx
	movl	8(%edi), %edx
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%ecx,4), %esi
	testb	$-128, 12(%edi)
	je	L498
	cmpb	$64, %al
	je	L499
	imull	%esi, %eax
	leal	(%eax,%eax), %esi
L476:
	movsbl	_picanm+2(%ecx,%ecx,4), %eax
	sall	$8, %eax
	addl	%esi, %eax
	subl	%eax, %edx
L477:
	movl	%ebx, 16(%esp)
	movl	$_s_Napalm, %ecx
	movl	$9999, %esi
	movl	%edx, 12(%esp)
	movl	$2010, %edx
	movl	$800, 20(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ecx
	movswl	%ax, %ebx
	movw	%ax, 40(%esp)
	imull	$44, %ebx, %eax
	movl	_User(,%ebx,4), %ebp
	movl	%ebx, 28(%esp)
	leal	40(%eax), %edx
	leal	(%ecx,%eax), %ebx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 40(%ebx)
	leal	8(%ebx), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	mull	%edx
	leal	4(%ebx), %eax
	movl	%eax, 24(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	subl	%ecx, %edx
	mull	%edx
	movl	%ebx, %eax
	subl	%ecx, %eax
	movl	24(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	movl	$-1171354717, %eax
	mull	%edx
	movl	$34, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_voc3dend, %eax
	testl	%eax, %eax
	je	L480
	cmpl	$-1, 32(%eax)
	je	L500
L481:
	movzwl	40(%esp), %ecx
	movw	%cx, 48(%eax)
L480:
	movl	28(%esp), %edx
	movl	52(%esp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %esi
	leal	16(%ebx), %edx
	movl	$-1171354717, %eax
	movl	$200, %ecx
	subl	%esi, %edx
	movl	%esi, 40(%esp)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%esi, %edx
	movb	$-40, 16(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 20(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%esi, %edx
	movb	$32, 21(%ebx)
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%esi, %edx
	movb	$0, 18(%ebx)
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$130, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	36(%esp), %edx
	andw	$-258, 12(%ebx)
	movw	%cx, 212(%ebp)
	subl	%esi, %edx
	orl	$8192, 72(%ebp)
	movl	$16777472, 96(%ebp)
	movzbl	18(%edi), %eax
	movb	%al, 24(%esp)
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$1, 18(%edi)
	movl	32(%esp), %eax
	movl	200(%eax), %edx
	movl	(%edx), %ecx
	subl	(%ebx), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	movl	4(%edx), %ecx
	subl	4(%ebx), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovns	%esi, %ecx
	cmpl	%ecx, %eax
	leal	(%eax,%ecx), %esi
	cmovg	%ecx, %eax
	movl	%esi, %ecx
	sarl	%eax
	subl	%eax, %ecx
	movl	%ecx, 44(%esp)
	cmpw	%ax, %si
	je	L483
	movswl	32(%ebx), %eax
	movl	8(%edx), %esi
	movzbl	21(%edx), %ecx
	movl	%eax, 56(%esp)
	movswl	14(%edx), %eax
	movl	%esi, 60(%esp)
	movl	%eax, 64(%esp)
	movswl	_tilesiz+2(,%eax,4), %eax
	testb	$-128, 12(%edx)
	je	L484
	cmpb	$64, %cl
	je	L501
	movl	64(%esp), %esi
	movl	%ecx, %edx
	imull	%eax, %edx
	movsbl	_picanm+2(%esi,%esi,4), %esi
	sall	$8, %esi
	leal	(%esi,%edx,2), %esi
	movl	60(%esp), %edx
	subl	%esi, %edx
L487:
	imull	%ecx, %eax
L489:
	addl	%edx, %eax
	subl	8(%ebx), %eax
	movswl	44(%esp), %esi
	imull	56(%esp), %eax
	cltd
	idivl	%esi
	leal	36(%ebx), %edx
	subl	40(%esp), %edx
	movl	%eax, %ecx
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 36(%ebx)
L483:
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
	movl	%eax, 160(%ebp)
	movl	28(%esp), %eax
	movl	$1100, 8(%esp)
	movl	$__Z8DoNapalms, 4(%esp)
	movl	%eax, (%esp)
	call	__Z13MissileSetPossPFisEi
	movl	$-1171354717, %eax
	movl	36(%esp), %edx
	subl	_sprite, %edx
	mull	%edx
	movzbl	24(%esp), %eax
	addw	$512, 48(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movb	%al, 18(%edi)
	movl	32(%esp), %eax
	movw	%dx, 176(%eax)
	movzwl	48(%esp), %eax
	cmpw	50(%esp), %ax
	jne	L474
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
L498:
	.cfi_restore_state
	cmpb	$64, %al
	je	L502
	imull	%esi, %eax
	sall	$2, %eax
	subl	%eax, %edx
	jmp	L477
	.p2align 4,,10
	.p2align 3
L500:
	testb	$16, 28(%eax)
	jne	L481
	movb	$1, 68(%eax)
	movl	$2, 28(%eax)
	jmp	L480
	.p2align 4,,10
	.p2align 3
L484:
	cmpb	$64, %cl
	je	L503
	movl	%ecx, %esi
	movl	60(%esp), %edx
	imull	%eax, %esi
	sall	$2, %esi
	subl	%esi, %edx
	jmp	L487
	.p2align 4,,10
	.p2align 3
L502:
	movl	%esi, %eax
	sall	$8, %eax
	subl	%eax, %edx
	jmp	L477
	.p2align 4,,10
	.p2align 3
L499:
	sall	$7, %esi
	jmp	L476
	.p2align 4,,10
	.p2align 3
L501:
	movl	64(%esp), %ecx
	movsbl	_picanm+2(%ecx,%ecx,4), %edx
	movl	%eax, %ecx
	sall	$7, %ecx
	sall	$8, %edx
	addl	%edx, %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
L486:
	sall	$6, %eax
	jmp	L489
	.p2align 4,,10
	.p2align 3
L503:
	movl	60(%esp), %edx
	movl	%eax, %ecx
	sall	$8, %ecx
	subl	%ecx, %edx
	jmp	L486
	.cfi_endproc
LFE45:
	.p2align 4
	.globl	__Z15InitSwordAttackP12PLAYERstruct
	.def	__Z15InitSwordAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z15InitSwordAttackP12PLAYERstruct:
LFB46:
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
	subl	$88, %esp
	.cfi_def_cfa_offset 108
	movl	108(%esp), %eax
	movl	108(%esp), %edx
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movl	$12, 4(%esp)
	movl	%eax, 52(%esp)
	movl	108(%esp), %eax
	leal	4(%eax), %ecx
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	$1, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	108(%esp), %eax
	testb	$2, 22970(%eax)
	je	L505
	movl	$__ZZ15InitSwordAttackP12PLAYERstructE5dangs, %ebx
	movl	$-1171354717, %ebp
	movl	%eax, %edi
L509:
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L506
	sall	$14, %eax
	cmpl	$536862499, %eax
	ja	L506
L507:
	addl	$2, %ebx
	cmpl	$__ZZ15InitSwordAttackP12PLAYERstructE5dangs+10, %ebx
	jne	L509
L505:
	movl	$_StatDamageList, %ebp
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L533:
	movswl	0(%ebp), %eax
	movswl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L511
	movl	%ebp, 36(%esp)
	jmp	L510
	.p2align 4,,10
	.p2align 3
L512:
	movswl	28(%esp), %ebx
	cmpw	$-1, %bx
	je	L610
L510:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	108(%esp), %esi
	movl	%eax, %ebp
	movl	_User(,%ebx,4), %eax
	cmpl	%esi, 144(%eax)
	je	L610
	movzwl	_nextspritestat(%ebx,%ebx), %eax
	movw	%ax, 28(%esp)
	testb	$8, 43(%ebp)
	je	L512
	movl	108(%esp), %eax
	movl	0(%ebp), %ecx
	movl	108(%esp), %edi
	movl	4(%ebp), %edx
	subl	(%eax), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	subl	4(%edi), %edx
	movl	108(%esp), %edi
	movl	%edx, %esi
	movl	%edx, 32(%esp)
	movl	352(%edi), %edi
	negl	%esi
	cmovs	%edx, %esi
	movzbl	18(%edi), %edi
	movl	%edi, %edx
	movzbl	18(%ebp), %edi
	sall	$2, %edi
	cmpl	%esi, %eax
	leal	1000(%edi,%edx,4), %edx
	leal	(%eax,%esi), %edi
	cmovg	%esi, %eax
	sarl	%eax
	subl	%eax, %edi
	cmpl	%edi, %edx
	jle	L512
	movl	32(%esp), %edx
	call	@getangle@8
	movl	%eax, %ecx
	movl	108(%esp), %eax
	movl	300(%eax), %edx
	testl	%edx, %edx
	js	L612
	addl	$32768, %edx
	sarl	$16, %edx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	cmpl	$1024, %eax
	jg	L516
	movl	%edx, %eax
L515:
	subl	%ecx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	$199, %ax
	ja	L512
	movl	108(%esp), %eax
	movl	$5120, %ecx
	movl	%ebx, %edx
	movswl	348(%eax), %eax
	call	__Z14SpriteOverlapZssi
	testb	%al, %al
	je	L512
	movl	108(%esp), %eax
	movl	352(%eax), %edx
	movzwl	24(%edx), %eax
	movswl	14(%edx), %ecx
	movl	8(%edx), %edi
	movw	%ax, 46(%esp)
	movswl	_tilesiz+2(,%ecx,4), %esi
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L519
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %al
	je	L613
	imull	%esi, %eax
	movl	%edi, %esi
	addl	%eax, %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	subl	%eax, %esi
L521:
	movl	32(%esp), %eax
	subl	%ecx, %eax
	addl	%eax, %edi
L524:
	movl	4(%edx), %eax
	addl	%esi, %edi
	movl	8(%ebp), %esi
	sarl	%edi
	movl	%eax, 32(%esp)
	movl	(%edx), %eax
	movswl	14(%ebp), %edx
	movl	%eax, 40(%esp)
	movzwl	24(%ebp), %eax
	movswl	_tilesiz+2(,%edx,4), %ecx
	movw	%ax, 44(%esp)
	movzbl	21(%ebp), %eax
	testb	$-128, 12(%ebp)
	je	L525
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	movl	%edx, 48(%esp)
	cmpb	$64, %al
	je	L614
	imull	%ecx, %eax
	movl	48(%esp), %ecx
	movl	%esi, %edx
	addl	%eax, %eax
	addl	%eax, %ecx
	subl	%ecx, %edx
L527:
	subl	48(%esp), %eax
	addl	%eax, %esi
L530:
	movswl	46(%esp), %ecx
	movl	0(%ebp), %eax
	addl	%edx, %esi
	movl	4(%ebp), %edx
	movl	%edi, 12(%esp)
	sarl	%esi
	movl	%ecx, 16(%esp)
	movl	32(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	40(%esp), %ecx
	movl	%ecx, 4(%esp)
	movswl	44(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	je	L512
	movl	108(%esp), %eax
	movswl	348(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	movswl	28(%esp), %ebx
	cmpw	$-1, %bx
	jne	L510
	.p2align 4
	.p2align 3
L610:
	movl	%ebp, %edi
	movl	36(%esp), %ebp
L511:
	addl	$2, %ebp
	cmpl	$_StatDamageList+40, %ebp
	jne	L533
	movl	108(%esp), %eax
	movl	$100, %ebx
	movl	300(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %esi
	cmovns	%eax, %esi
	movl	108(%esp), %eax
	movl	288(%eax), %edx
	sarl	$16, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	addl	$1, _krandcount
	sarl	$16, %eax
	subl	%eax, %ebx
	movl	_randomseed, %eax
	imull	$2000, %ebx, %ebx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movl	$11999, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	cmpl	$65535, %edx
	je	L536
	movl	$1572907689, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$14, %edx
	leal	-12000(%edx), %eax
L536:
	movl	108(%esp), %ebp
	addl	%eax, %ebx
	movl	108(%esp), %ecx
	movl	%esi, %eax
	movl	108(%esp), %edx
	andl	$2047, %eax
	movl	0(%ebp), %ebp
	movl	8(%ecx), %ecx
	movl	4(%edx), %edx
	movl	%ebx, 12(%esp)
	movl	%ebp, 28(%esp)
	leal	68(%esp), %ebp
	movl	108(%esp), %ebx
	movl	%ebp, 16(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	leal	512(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	cmpw	$0, 84(%esp)
	js	L537
	movl	108(%esp), %eax
	movl	8(%eax), %ebx
	movl	4(%eax), %ecx
	subl	76(%esp), %ebx
	movl	(%eax), %eax
	subl	72(%esp), %ecx
	subl	68(%esp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 56(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)
	cmpl	%ecx, %edx
	jge	L538
	leal	56(%esp), %eax
	leal	60(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	56(%esp), %edx
	movl	64(%esp), %eax
L538:
	cmpl	%eax, %edx
	jge	L539
	leal	56(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	64(%esp), %eax
	movl	56(%esp), %edx
L539:
	addl	60(%esp), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
	subl	%eax, %edx
	movl	%ecx, %eax
	sarl	$3, %ecx
	sarl	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	cmpl	$699, %eax
	jg	L537
	movswl	80(%esp), %eax
	testw	%ax, %ax
	js	L540
	movl	_User(,%eax,4), %ecx
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	testl	%ecx, %ecx
	je	L546
	movzwl	82(%ecx), %edx
	cmpw	$4792, %dx
	je	L543
	jg	L544
	cmpw	$2540, %dx
	jne	L615
	cmpw	$0, 216(%ecx)
	jle	L616
L548:
	movl	76(%esp), %eax
	movl	%esi, 24(%esp)
	leal	8(%edi), %ebp
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movl	72(%esp), %eax
	movl	%eax, 16(%esp)
	movl	68(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	76(%esp), %eax
	leal	72(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	68(%esp), %edx
	movl	$312, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	$-1171354717, %ecx
	movl	%ebp, %eax
	subl	_sprite, %eax
	mull	%ecx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	leal	4(%edi), %eax
	movl	%eax, 28(%esp)
	subl	_sprite, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	28(%esp), %ecx
	movl	$416, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	80(%esp), %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	jmp	L542
L615:
	cmpw	$4768, %dx
	je	L543
	cmpw	$623, %dx
	je	L543
L546:
	movl	%ebx, %edx
L542:
	cmpw	$257, 38(%edx)
	je	L617
L549:
	testb	$32, 43(%ebx)
	jne	L618
L550:
	testb	$16, 12(%ebx)
	je	L540
	cmpw	$0, 38(%ebx)
	jne	L551
	cmpw	$0, 40(%ebx)
	je	L540
L551:
	movswl	80(%esp), %eax
	call	__Z15ShootableSwitchs
L540:
	movzwl	82(%esp), %eax
	testw	%ax, %ax
	jns	L619
L537:
	addl	$88, %esp
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
L612:
	.cfi_restore_state
	leal	32767(%edx), %eax
	subl	$32768, %edx
	movl	%ecx, %esi
	cmovns	%edx, %eax
	sarl	$16, %eax
	subl	%eax, %esi
	movl	%eax, %edx
	cmpl	$1024, %esi
	jle	L515
L514:
	leal	2048(%edx), %eax
L517:
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovl	%edx, %ecx
	jmp	L515
	.p2align 4,,10
	.p2align 3
L516:
	cmpl	$1024, %edx
	jle	L514
	movl	%edx, %eax
	jmp	L517
	.p2align 4,,10
	.p2align 3
L519:
	cmpb	$64, %al
	je	L620
	imull	%esi, %eax
	sall	$2, %eax
L523:
	movl	%edi, %esi
	subl	%eax, %esi
	jmp	L524
	.p2align 4,,10
	.p2align 3
L525:
	cmpb	$64, %al
	je	L621
	imull	%ecx, %eax
	sall	$2, %eax
L529:
	movl	%esi, %edx
	subl	%eax, %edx
	jmp	L530
L506:
	movl	352(%edi), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L507
	movl	300(%edi), %esi
	imull	$44, %eax, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%esi,%eax), %esi
	testl	%esi, %esi
	leal	65535(%esi), %eax
	cmovns	%esi, %eax
	addl	$1, _krandcount
	sarl	$16, %eax
	movl	%eax, %esi
	movl	_sprite, %eax
	addl	%edx, %eax
	movl	%eax, 28(%esp)
	leal	28(%edx), %eax
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%si, 28(%eax)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movswl	(%ebx), %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	addl	%esi, %edx
	andl	$31, %eax
	subl	$16, %eax
	cwtl
	addl	%edx, %eax
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %esi
	movswl	_sintable(%eax,%eax), %edx
	movswl	%cx, %eax
	movl	$1, 16(%esp)
	movl	52(%esp), %ecx
	movl	$65537, 12(%esp)
	imull	$3840, %esi, %esi
	movswl	98(%ecx), %ecx
	imull	$3840, %edx, %edx
	movl	%ecx, 8(%esp)
	movl	52(%esp), %ecx
	sarl	$14, %esi
	sarl	$14, %edx
	movswl	96(%ecx), %ecx
	movl	$0, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, %ecx
	call	__Z12move_missilesiiiiiji
	jmp	L507
L613:
	movl	%esi, %eax
	movl	%edi, %esi
	sall	$7, %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	subl	%eax, %esi
	jmp	L521
L620:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L523
L614:
	movl	%ecx, %eax
	sall	$7, %eax
	leal	(%eax,%edx), %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	jmp	L527
L621:
	movl	%ecx, %eax
	sall	$8, %eax
	jmp	L529
L619:
	movswl	%ax, %ebp
	movl	76(%esp), %edx
	movl	%ebp, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %ecx
	testw	%cx, %cx
	js	L552
	leal	(%ecx,%ecx,4), %ebx
	movl	_sector, %ecx
	testb	$1, 12(%ecx,%ebx,8)
	jne	L622
L552:
	movl	72(%esp), %ecx
	movl	68(%esp), %ebx
	cmpw	$307, 26(%eax)
	je	L623
	movswl	84(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%ebx, 12(%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	76(%esp), %eax
	leal	72(%esp), %ecx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	68(%esp), %edx
	movl	$312, %eax
	call	__Z9PlaySoundiPiS_S_i
	jmp	L537
L618:
	movswl	80(%esp), %eax
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	jmp	L550
L544:
	cmpw	$5426, %dx
	jne	L624
L543:
	movl	76(%esp), %eax
	movl	%esi, 24(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movl	72(%esp), %eax
	movl	%eax, 16(%esp)
	movl	68(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	108(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	76(%esp), %eax
	leal	68(%esp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	leal	72(%esp), %ecx
	movl	$312, %eax
	call	__Z9PlaySoundiPiS_S_i
	movswl	80(%esp), %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	jmp	L542
L623:
	movl	52(%esp), %edi
	movswl	82(%edi), %edi
	movl	%edx, (%esp)
	movl	%ebx, %edx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L537
L622:
	cmpl	%edx, 4(%ecx,%ebx,8)
	jle	L552
	jmp	L537
L624:
	jg	L546
	cmpw	$4816, %dx
	je	L543
	cmpw	$4840, %dx
	jne	L546
	jmp	L543
L617:
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	je	L549
	jmp	L537
L616:
	movl	$240, %edx
	movw	%dx, 216(%ecx)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L548
	movl	$0, 76(%eax)
	movl	$_s_TrashCanPain, 24(%eax)
	movl	$_s_TrashCanPain, 16(%eax)
	movswl	_s_TrashCanPain, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L548
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L548
	.cfi_endproc
LFE46:
	.p2align 4
	.globl	__Z14InitFistAttackP12PLAYERstruct
	.def	__Z14InitFistAttackP12PLAYERstruct;	.scl	2;	.type	32;	.endef
__Z14InitFistAttackP12PLAYERstruct:
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
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	movl	112(%esp), %eax
	movl	112(%esp), %edx
	movswl	348(%eax), %eax
	movl	_User(,%eax,4), %eax
	movl	$12, 4(%esp)
	movl	%eax, 56(%esp)
	movl	112(%esp), %eax
	leal	4(%eax), %ecx
	addl	$8, %eax
	movl	%eax, (%esp)
	movl	$2, %eax
	call	__Z9PlaySoundiPiS_S_i
	movl	112(%esp), %eax
	testb	$2, 22970(%eax)
	je	L626
	movl	$__ZZ14InitFistAttackP12PLAYERstructE5dangs, %esi
	movl	$-1171354717, %ebp
	movl	%eax, %edi
L629:
	movl	352(%edi), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	cwtl
	movl	%eax, (%esp)
	call	__Z11SpawnBubbles
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L627
	movl	300(%edi), %ebx
	imull	$44, %eax, %edx
	movl	%ebx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ebx,%eax), %ebx
	testl	%ebx, %ebx
	leal	65535(%ebx), %eax
	cmovns	%ebx, %eax
	addl	$1, _krandcount
	sarl	$16, %eax
	movl	%eax, %ebx
	movl	_sprite, %eax
	addl	%edx, %eax
	movl	%eax, 28(%esp)
	leal	28(%edx), %eax
	mull	%ebp
	movl	28(%esp), %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%bx, 28(%eax)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movswl	(%esi), %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	sarl	$8, %eax
	addl	%ebx, %edx
	andl	$31, %eax
	subl	$16, %eax
	cwtl
	addl	%edx, %eax
	movl	%eax, %edx
	addl	$512, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movswl	_sintable(%edx,%edx), %ebx
	movswl	_sintable(%eax,%eax), %edx
	movswl	%cx, %eax
	movl	$1, 16(%esp)
	movl	56(%esp), %ecx
	movl	$65537, 12(%esp)
	imull	$3840, %ebx, %ebx
	movswl	98(%ecx), %ecx
	imull	$3840, %edx, %edx
	movl	%ecx, 8(%esp)
	movl	56(%esp), %ecx
	sarl	$14, %ebx
	sarl	$14, %edx
	movswl	96(%ecx), %ecx
	movl	$0, (%esp)
	movl	%ecx, 4(%esp)
	movl	%ebx, %ecx
	call	__Z12move_missilesiiiiiji
L627:
	addl	$2, %esi
	cmpl	$__ZZ14InitFistAttackP12PLAYERstructE5dangs+4, %esi
	jne	L629
L626:
	movl	$_StatDamageList, %ebp
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L656:
	movswl	0(%ebp), %eax
	movswl	_headspritestat(%eax,%eax), %ebx
	cmpw	$-1, %bx
	je	L631
	movl	%ebp, 40(%esp)
	jmp	L630
	.p2align 4,,10
	.p2align 3
L748:
	movl	$190, %edi
	movl	$2300, 32(%esp)
	movw	%di, 38(%esp)
L633:
	movl	112(%esp), %edi
	movl	352(%edi), %esi
	movzbl	18(%esi), %edi
	movzbl	18(%ebp), %esi
	sall	$2, %esi
	leal	(%esi,%edi,4), %esi
	addl	32(%esp), %esi
	cmpl	%eax, %esi
	jg	L747
L632:
	movswl	28(%esp), %ebx
	cmpw	$-1, %bx
	je	L745
L630:
	imull	$44, %ebx, %eax
	addl	_sprite, %eax
	movl	112(%esp), %edi
	movl	%eax, %ebp
	movl	_User(,%ebx,4), %eax
	cmpl	%edi, 144(%eax)
	je	L745
	movzwl	_nextspritestat(%ebx,%ebx), %eax
	movw	%ax, 28(%esp)
	testb	$8, 43(%ebp)
	je	L632
	movl	112(%esp), %eax
	movl	0(%ebp), %ecx
	movl	4(%ebp), %edx
	subl	(%eax), %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovs	%ecx, %esi
	subl	4(%eax), %edx
	movl	%edx, %edi
	negl	%edi
	cmovs	%edx, %edi
	cmpl	%edi, %esi
	leal	(%esi,%edi), %eax
	cmovg	%edi, %esi
	movl	112(%esp), %edi
	sarl	%esi
	subl	%esi, %eax
	cmpb	$0, 23225(%edi)
	jne	L748
	movl	$200, %esi
	movl	$1000, 32(%esp)
	movw	%si, 38(%esp)
	jmp	L633
	.p2align 4,,10
	.p2align 3
L747:
	call	@getangle@8
	movl	%eax, %ecx
	movl	112(%esp), %eax
	movl	300(%eax), %edx
	testl	%edx, %edx
	js	L749
	addl	$32768, %edx
	sarl	$16, %edx
	movl	%edx, %esi
	subl	%ecx, %esi
	movl	%esi, %eax
	negl	%eax
	cmovs	%esi, %eax
	cmpl	$1024, %eax
	jg	L637
	movl	%edx, %eax
L636:
	subl	%ecx, %eax
	movl	%eax, %edx
	negw	%dx
	cmovns	%edx, %eax
	cmpw	%ax, 38(%esp)
	jbe	L632
	movl	112(%esp), %eax
	movl	$5120, %ecx
	movl	%ebx, %edx
	movswl	348(%eax), %eax
	call	__Z14SpriteOverlapZssi
	cmpw	$190, 38(%esp)
	je	L689
	testb	$1, %al
	je	L632
L689:
	movl	112(%esp), %eax
	movl	352(%eax), %edx
	movzwl	24(%edx), %eax
	movswl	14(%edx), %ecx
	movl	8(%edx), %edi
	movw	%ax, 50(%esp)
	movswl	_tilesiz+2(,%ecx,4), %esi
	movzbl	21(%edx), %eax
	testb	$-128, 12(%edx)
	je	L641
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %al
	je	L750
	imull	%esi, %eax
	movl	%edi, %esi
	addl	%eax, %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	subl	%eax, %esi
L643:
	movl	32(%esp), %eax
	subl	%ecx, %eax
	addl	%eax, %edi
L646:
	movl	4(%edx), %eax
	addl	%esi, %edi
	movl	8(%ebp), %esi
	sarl	%edi
	movl	%eax, 44(%esp)
	movl	(%edx), %eax
	movswl	14(%ebp), %edx
	movl	%eax, 32(%esp)
	movzwl	24(%ebp), %eax
	movswl	_tilesiz+2(,%edx,4), %ecx
	movw	%ax, 48(%esp)
	movzbl	21(%ebp), %eax
	testb	$-128, 12(%ebp)
	je	L647
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	movl	%edx, 52(%esp)
	cmpb	$64, %al
	je	L751
	imull	%ecx, %eax
	movl	52(%esp), %ecx
	movl	%esi, %edx
	addl	%eax, %eax
	addl	%eax, %ecx
	subl	%ecx, %edx
L649:
	subl	52(%esp), %eax
	addl	%eax, %esi
L652:
	movswl	50(%esp), %ecx
	movl	0(%ebp), %eax
	addl	%edx, %esi
	movl	4(%ebp), %edx
	movl	%edi, 12(%esp)
	sarl	%esi
	movl	%ecx, 16(%esp)
	movl	44(%esp), %ecx
	movl	%ecx, 8(%esp)
	movl	32(%esp), %ecx
	movl	%ecx, 4(%esp)
	movswl	48(%esp), %ecx
	movl	%ecx, (%esp)
	movl	%esi, %ecx
	call	__Z9FAFcanseeiiisiiis
	testb	%al, %al
	jne	L752
L653:
	cmpw	$190, 38(%esp)
	jne	L632
	movl	%ebx, (%esp)
	call	__Z14SpawnDemonFists
	movswl	28(%esp), %ebx
	cmpw	$-1, %bx
	jne	L630
	.p2align 4
	.p2align 3
L745:
	movl	%ebp, %edi
	movl	40(%esp), %ebp
L631:
	addl	$2, %ebp
	cmpl	$_StatDamageList+40, %ebp
	jne	L656
	movl	112(%esp), %eax
	movl	$100, %ebx
	movl	300(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %eax
	testl	%eax, %eax
	leal	65535(%eax), %esi
	cmovns	%eax, %esi
	movl	112(%esp), %eax
	movl	288(%eax), %edx
	sarl	$16, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	addl	$1, _krandcount
	sarl	$16, %eax
	subl	%eax, %ebx
	movl	_randomseed, %eax
	imull	$2000, %ebx, %ebx
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %edx
	movl	$11999, %eax
	movzwl	%dx, %edx
	movl	%edx, _randomseed
	cmpl	$65535, %edx
	je	L659
	movl	$1572907689, %eax
	sall	$14, %edx
	mull	%edx
	shrl	$14, %edx
	leal	-12000(%edx), %eax
L659:
	movl	112(%esp), %ebp
	addl	%eax, %ebx
	movl	112(%esp), %ecx
	movl	%esi, %eax
	movl	112(%esp), %edx
	andl	$2047, %eax
	movl	0(%ebp), %ebp
	movl	8(%ecx), %ecx
	movl	4(%edx), %edx
	movl	%ebx, 12(%esp)
	movl	%ebp, 28(%esp)
	leal	72(%esp), %ebp
	movl	112(%esp), %ebx
	movl	%ebp, 16(%esp)
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 8(%esp)
	leal	512(%esi), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, 4(%esp)
	movswl	268(%ebx), %eax
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	call	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0
	cmpw	$0, 88(%esp)
	js	L660
	movl	112(%esp), %eax
	movl	8(%eax), %ebx
	movl	4(%eax), %ecx
	subl	80(%esp), %ebx
	movl	(%eax), %eax
	subl	76(%esp), %ecx
	subl	72(%esp), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 60(%esp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 64(%esp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 68(%esp)
	cmpl	%ecx, %edx
	jge	L661
	leal	60(%esp), %eax
	leal	64(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	60(%esp), %edx
	movl	68(%esp), %eax
L661:
	cmpl	%eax, %edx
	jge	L662
	leal	60(%esp), %eax
	leal	68(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	68(%esp), %eax
	movl	60(%esp), %edx
L662:
	addl	64(%esp), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
	subl	%eax, %edx
	movl	%ecx, %eax
	sarl	$3, %ecx
	sarl	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	cmpl	$699, %eax
	jg	L660
	movswl	84(%esp), %eax
	testw	%ax, %ax
	js	L663
	movl	_User(,%eax,4), %ecx
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	testl	%ecx, %ecx
	je	L669
	movzwl	82(%ecx), %edx
	cmpw	$4792, %dx
	je	L666
	jg	L667
	cmpw	$2540, %dx
	jne	L753
	cmpw	$0, 216(%ecx)
	jle	L754
L671:
	movl	80(%esp), %eax
	movl	%esi, 24(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movl	76(%esp), %eax
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	80(%esp), %eax
	leal	76(%esp), %ecx
	movl	%ebp, %edx
	movl	%eax, (%esp)
	movl	$295, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	leal	8(%edi), %eax
	movl	$-1171354717, %ecx
	movl	%eax, 32(%esp)
	subl	_sprite, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%edi), %edx
	movl	%edx, 28(%esp)
	subl	_sprite, %edx
	movl	%edx, %eax
	mull	%ecx
	movl	%edi, %eax
	subl	_sprite, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ecx
	movl	32(%esp), %eax
	movl	%edx, %ecx
	movl	%edi, %edx
	shrl	$5, %ecx
	addl	$1, _spritechanged(,%ecx,4)
	movl	28(%esp), %ecx
	movl	%eax, (%esp)
	movl	$416, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	84(%esp), %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	jmp	L665
L753:
	cmpw	$4768, %dx
	je	L666
	cmpw	$623, %dx
	je	L666
L669:
	movl	%ebx, %edx
L665:
	cmpw	$257, 38(%edx)
	je	L755
L672:
	testb	$32, 43(%ebx)
	jne	L756
L673:
	testb	$16, 12(%ebx)
	je	L674
	cmpw	$0, 38(%ebx)
	jne	L675
	cmpw	$0, 40(%ebx)
	je	L674
L675:
	movswl	84(%esp), %eax
	call	__Z15ShootableSwitchs
L674:
	movzwl	14(%ebx), %eax
	cmpw	$4947, %ax
	je	L676
	subw	$5062, %ax
	cmpw	$1, %ax
	ja	L663
L676:
	movl	80(%esp), %eax
	movl	%esi, 24(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movl	76(%esp), %eax
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	80(%esp), %eax
	movl	%ebp, %edx
	leal	76(%esp), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L677
	sall	$14, %eax
	cmpl	$752681224, %eax
	ja	L677
L678:
	leal	12(%ebx), %eax
	movl	$-1171354717, %edx
	subl	_sprite, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	orw	$257, 12(%ebx)
L663:
	movzwl	86(%esp), %eax
	testw	%ax, %ax
	jns	L757
L660:
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
L749:
	.cfi_restore_state
	leal	32767(%edx), %eax
	subl	$32768, %edx
	movl	%ecx, %esi
	cmovns	%edx, %eax
	sarl	$16, %eax
	subl	%eax, %esi
	movl	%eax, %edx
	cmpl	$1024, %esi
	jle	L636
L635:
	leal	2048(%edx), %eax
L638:
	leal	2048(%ecx), %edx
	cmpl	$1025, %ecx
	cmovl	%edx, %ecx
	jmp	L636
	.p2align 4,,10
	.p2align 3
L637:
	cmpl	$1024, %edx
	jle	L635
	movl	%edx, %eax
	jmp	L638
	.p2align 4,,10
	.p2align 3
L647:
	cmpb	$64, %al
	je	L758
	imull	%ecx, %eax
	sall	$2, %eax
L651:
	movl	%esi, %edx
	subl	%eax, %edx
	jmp	L652
	.p2align 4,,10
	.p2align 3
L641:
	cmpb	$64, %al
	je	L759
	imull	%esi, %eax
	sall	$2, %eax
L645:
	movl	%edi, %esi
	subl	%eax, %esi
	jmp	L646
	.p2align 4,,10
	.p2align 3
L752:
	movl	112(%esp), %eax
	movswl	348(%eax), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	call	__Z8DoDamagess
	jmp	L653
L750:
	movl	%esi, %eax
	movl	%edi, %esi
	sall	$7, %eax
	movl	%eax, 32(%esp)
	addl	%ecx, %eax
	subl	%eax, %esi
	jmp	L643
L758:
	movl	%ecx, %eax
	sall	$8, %eax
	jmp	L651
L751:
	movl	%ecx, %eax
	sall	$7, %eax
	leal	(%eax,%edx), %ecx
	movl	%esi, %edx
	subl	%ecx, %edx
	jmp	L649
L759:
	movl	%esi, %eax
	sall	$8, %eax
	jmp	L645
L757:
	movswl	%ax, %edi
	movl	80(%esp), %edx
	movl	%edi, %eax
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %ecx
	testw	%cx, %cx
	js	L679
	leal	(%ecx,%ecx,4), %ebx
	movl	_sector, %ecx
	testb	$1, 12(%ecx,%ebx,8)
	jne	L760
L679:
	movl	76(%esp), %ecx
	movl	72(%esp), %ebx
	cmpw	$307, 26(%eax)
	je	L761
	movswl	88(%esp), %eax
	movl	%edx, 20(%esp)
	movl	%ecx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	80(%esp), %eax
	movl	%ebp, %edx
	leal	76(%esp), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movl	$-1, %edx
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L681
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$28, %edx
	negl	%edx
L681:
	movl	112(%esp), %eax
	movswl	%dx, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	movl	112(%esp), %eax
	movl	$-1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z16PlayerCheckDeathP12PLAYERstructs
	jmp	L660
L756:
	movswl	84(%esp), %eax
	xorl	%edx, %edx
	call	__Z14HitBreakSpritess
	jmp	L673
L667:
	cmpw	$5426, %dx
	jne	L762
L666:
	movl	80(%esp), %eax
	movl	%esi, 24(%esp)
	movl	$-1, 8(%esp)
	movl	%eax, 20(%esp)
	movl	76(%esp), %eax
	movl	%eax, 16(%esp)
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)
	movswl	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	112(%esp), %eax
	movl	%eax, (%esp)
	call	__Z16SpawnSwordSparksP12PLAYERstructssiiis
	leal	80(%esp), %eax
	movl	%ebp, %edx
	leal	76(%esp), %ecx
	movl	%eax, (%esp)
	movl	$295, %eax
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	84(%esp), %eax
	imull	$44, %eax, %edx
	addl	_sprite, %edx
	jmp	L665
L761:
	movl	56(%esp), %edi
	movswl	82(%edi), %edi
	movl	%edx, (%esp)
	movl	%ebx, %edx
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	call	__Z12HitBreakWallP10walltypev7iiiss.isra.0
	jmp	L660
L760:
	cmpl	%edx, 4(%ecx,%ebx,8)
	jle	L679
	jmp	L660
L762:
	jg	L669
	cmpw	$4816, %dx
	je	L666
	cmpw	$4840, %dx
	jne	L669
	jmp	L666
L677:
	movl	112(%esp), %eax
	movl	$1, %edx
	call	__Z18PlayerUpdateHealthP12PLAYERstructs
	jmp	L678
L755:
	movl	%eax, 8(%esp)
	movl	$1, 4(%esp)
	movl	$-1, (%esp)
	call	__Z15MissileHitMatchsss
	testb	%al, %al
	je	L672
	jmp	L660
L754:
	movl	$240, %edx
	movw	%dx, 216(%ecx)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L671
	movl	$0, 76(%eax)
	movl	$_s_TrashCanPain, 24(%eax)
	movl	$_s_TrashCanPain, 16(%eax)
	movswl	_s_TrashCanPain, %eax
	leal	_picanm(%eax,%eax,4), %edx
	movzbl	3(%edx), %eax
	movl	%eax, %ecx
	shrb	$6, %cl
	je	L671
	andl	$63, %eax
	movb	%al, 3(%edx)
	jmp	L671
	.cfi_endproc
LFE51:
	.p2align 4
	.globl	__Z13InitSumoSkulls
	.def	__Z13InitSumoSkulls;	.scl	2;	.type	32;	.endef
__Z13InitSumoSkulls:
LFB52:
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
	movl	_sprite, %esi
	movswl	52(%esp), %eax
	movl	%eax, 24(%esp)
	movl	_User(,%eax,4), %eax
	movl	140(%eax), %ebx
	movl	%eax, 28(%esp)
	leal	8(%ebx), %ebp
	movl	%ebp, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	4(%ebx), %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	leal	4(%ebx), %ecx
	movl	$130, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	14(%ebx), %ecx
	movswl	28(%ebx), %edi
	movzbl	21(%ebx), %edx
	movl	8(%ebx), %eax
	movswl	_tilesiz+2(,%ecx,4), %esi
	testb	$-128, 12(%ebx)
	je	L764
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	sall	$8, %ecx
	cmpb	$64, %dl
	je	L771
	imull	%esi, %edx
	movl	%eax, %esi
	addl	%edx, %edx
	leal	(%edx,%ecx), %ebp
	subl	%ebp, %esi
L766:
	subl	%ecx, %edx
	addl	%edx, %eax
	jmp	L769
	.p2align 4,,10
	.p2align 3
L764:
	cmpb	$64, %dl
	je	L772
	imull	%esi, %edx
	sall	$2, %edx
L768:
	movl	%eax, %esi
	subl	%edx, %esi
L769:
	addl	%esi, %eax
	movl	%edi, 16(%esp)
	movl	$_s_SkullWait, %ecx
	movl	$820, %edx
	sarl	%eax
	movl	$0, 20(%esp)
	movl	$-1171354717, %edi
	movl	%eax, 12(%esp)
	movl	4(%ebx), %eax
	movl	%eax, 8(%esp)
	movl	(%ebx), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebx), %eax
	movl	%eax, (%esp)
	movl	$2, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	_User(,%ebp,4), %esi
	addl	%eax, %ebx
	addl	$32, %eax
	mull	%edi
	movl	$500, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
	movw	%ax, 32(%ebx)
	movl	24(%esp), %eax
	call	__Z8SetOwnerss
	leal	16(%ebx), %edx
	subl	_sprite, %edx
	addl	$1, _krandcount
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$-20, 16(%ebx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 20(%ebx)
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%ebx), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$64, 21(%ebx)
	mull	%edi
	movl	_randomseed, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ecx
	leal	28(%ebx), %edx
	subl	_sprite, %edx
	movb	$0, 17(%ebx)
	movl	%edx, %eax
	movzwl	%cx, %ecx
	mull	%edi
	movl	%ecx, _randomseed
	sarl	$5, %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%cx, 28(%ebx)
	movl	28(%esp), %ecx
	movl	68(%ecx), %edx
	movl	%edx, %eax
	movl	%edx, 28(%esp)
	xorl	$536870912, %eax
	movl	%eax, 68(%ecx)
	andl	$536870912, %eax
	movl	$_s_SkullExplode, 28(%esi)
	orl	%eax, 68(%esi)
	movl	$_sg_SkullWait, 20(%esi)
	movl	$_SkullAttrib, 48(%esi)
	movl	24(%esp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	__Z15DoActorSetSpeedsh
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andw	$2047, %ax
	movw	%ax, 176(%esi)
	movl	8(%ebx), %eax
	movl	%edx, _randomseed
	movl	$100, %edx
	movl	%eax, 256(%esi)
	movw	%dx, 84(%esi)
	movl	%ebp, (%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	call	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct
	movl	_sprite, %ecx
	leal	42(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	18(%ebx), %edx
	subl	%ecx, %edx
	orw	$2048, 42(%ebx)
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
	xorl	%eax, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	movl	$400, 188(%esi)
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
L772:
	.cfi_restore_state
	sall	$8, %esi
	movl	%esi, %edx
	jmp	L768
	.p2align 4,,10
	.p2align 3
L771:
	sall	$7, %esi
	leal	(%esi,%ecx), %ebp
	movl	%esi, %edx
	movl	%eax, %esi
	subl	%ebp, %esi
	jmp	L766
	.cfi_endproc
LFE52:
	.p2align 4
	.globl	__Z15SpawnExpZadjustsP12spritetypev7ii
	.def	__Z15SpawnExpZadjustsP12spritetypev7ii;	.scl	2;	.type	32;	.endef
__Z15SpawnExpZadjustsP12spritetypev7ii:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	cwtl
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
	movl	%edx, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %esi
	movl	_User(,%eax,4), %eax
	subl	%esi, %edx
	sarl	$2, %edx
	imull	$-1171354717, %edx, %edx
	movl	_User(,%edx,4), %edi
	movl	%edi, 20(%esp)
	testl	%eax, %eax
	je	L774
	movl	104(%eax), %edi
	movl	8(%ebx), %ecx
	leal	1024(%edi), %edx
	movl	%edx, 24(%esp)
	movl	%ecx, %edx
	subl	%ebp, %edx
	cmpl	%edx, 24(%esp)
	jge	L782
	movl	56(%esp), %edx
	movl	108(%eax), %eax
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L776
	subl	56(%esp), %eax
	leal	8(%ebx), %edx
	movl	%eax, %ecx
	subl	%esi, %edx
L781:
	movl	$-1171354717, %eax
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, 8(%ebx)
L776:
	movl	20(%esp), %eax
	movl	%ecx, 64(%eax)
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
L782:
	.cfi_restore_state
	leal	8(%ebx), %edx
	movl	$-1171354717, %ecx
	addl	%ebp, %edi
	subl	%esi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movl	%edi, 8(%ebx)
	subl	%esi, %edx
L780:
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	8(%ebx), %ecx
	movl	20(%esp), %eax
	orw	$8, 12(%ebx)
	movl	%ecx, 64(%eax)
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
L774:
	.cfi_restore_state
	leal	28(%esp), %eax
	movl	%eax, 16(%esp)
	leal	32(%esp), %eax
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
	movl	8(%ebx), %ecx
	movl	32(%esp), %esi
	movl	%ecx, %eax
	leal	1024(%esi), %edx
	subl	%ebp, %eax
	cmpl	%eax, %edx
	jl	L777
	movl	_sprite, %edi
	leal	8(%ebx), %edx
	movl	$-1171354717, %ecx
	addl	%ebp, %esi
	subl	%edi, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movl	%esi, 8(%ebx)
	subl	%edi, %edx
	jmp	L780
	.p2align 4,,10
	.p2align 3
L777:
	movl	56(%esp), %edx
	movl	28(%esp), %eax
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jge	L776
	subl	56(%esp), %eax
	leal	8(%ebx), %edx
	subl	_sprite, %edx
	movl	%eax, %ecx
	jmp	L781
	.cfi_endproc
LFE53:
	.section .rdata,"dr"
LC0:
	.ascii "source/sw/src/weapon.cpp\0"
	.text
	.p2align 4
	.globl	__Z15SpawnNuclearExps
	.def	__Z15SpawnNuclearExps;	.scl	2;	.type	32;	.endef
__Z15SpawnNuclearExps:
LFB54:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movswl	68(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L788
	testb	$-128, 69(%eax)
	jne	L799
L788:
	movl	%ebx, 48(%esp)
	.cfi_offset 3, -20
	imull	$44, 28(%esp), %ebx
	movl	_sprite, %ecx
	movl	%ebp, 60(%esp)
	movl	%esi, 52(%esp)
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	addl	%ecx, %ebx
	movl	%edi, 56(%esp)
	.cfi_offset 7, -12
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
	movl	$272, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	$12, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movswl	30(%ebx), %eax
	testw	%ax, %ax
	jne	L785
	movl	$0, 32(%esp)
L786:
	movl	$_s_NukeMushroom, %ecx
	movl	$3280, %edx
	movl	$-1171354717, %ebp
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
	movl	_sprite, %esi
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	_User(,%edi,4), %ecx
	movl	%ecx, 36(%esp)
	addl	%eax, %esi
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movw	%ax, 40(%esi)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%esi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$-128, 16(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movb	$-1, 20(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	movb	$-1, 21(%esi)
	movzbl	18(%ebx), %eax
	subl	%ecx, %edx
	movb	%al, 18(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	leal	17(%esi), %edx
	subl	%ecx, %edx
	movl	36(%esp), %ecx
	andw	$-258, 12(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	%edi, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movb	$17, 17(%esi)
	movb	$17, 262(%ecx)
	call	__Z12InitChemBombs.isra.0
	movl	$_s_GrenadeExp, %ecx
	movl	$3280, %edx
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
	movl	_sprite, %esi
	movswl	%ax, %edi
	imull	$44, %edi, %eax
	movl	%edi, %edx
	movl	%edi, 36(%esp)
	addl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	_User(,%edi,4), %eax
	movl	%eax, 44(%esp)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%esi), %edx
	addl	$1, _krandcount
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%esi), %edx
	subl	%ecx, %edx
	movb	$-128, 16(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	%ecx, %edx
	movb	$-38, 20(%esi)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	%ecx, %edx
	movb	$-104, 21(%esi)
	movl	%edx, %eax
	mull	%ebp
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ecx
	andl	$1023, %eax
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, _randomseed
	orw	$128, 12(%esi)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%esi)
	cmpl	$512, %eax
	jg	L800
L793:
	movl	44(%esp), %eax
	movl	$7680, %ecx
	movl	%esi, %edx
	movl	$30000, 188(%eax)
	movl	28(%esp), %eax
	movl	$7680, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%edi, (%esp)
	call	__Z15DoExpDamageTests
	movl	40(%esp), %eax
	addl	_sprite, %eax
	movl	$64000, 24(%esp)
	movl	$8, 20(%esp)
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
	movl	32(%esp), %eax
	movl	$1, %ecx
	movl	$-80, %edx
	call	__Z10SetFadeAmtP12PLAYERstructsh
	movl	_randomseed, %eax
	movl	%edi, (%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movl	%eax, %esi
	andl	$2047, %eax
	movl	%eax, 4(%esp)
	andw	$2047, %si
	movl	%edx, _randomseed
	call	__Z24SpawnNuclearSecondaryExpss
	movl	_randomseed, %eax
	movl	%edi, (%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	movzwl	%bx, %eax
	movzbl	%bl, %ebx
	leal	512(%esi,%ebx), %ebx
	movl	%eax, _randomseed
	movswl	%bx, %eax
	movl	%eax, 4(%esp)
	call	__Z24SpawnNuclearSecondaryExpss
	movl	_randomseed, %eax
	movl	%edi, (%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movzbl	%al, %eax
	leal	512(%ebx,%eax), %ebx
	movl	%edx, _randomseed
	movswl	%bx, %eax
	movl	%eax, 4(%esp)
	call	__Z24SpawnNuclearSecondaryExpss
	movl	_randomseed, %eax
	movl	%edi, (%esp)
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	movzbl	%al, %eax
	leal	512(%ebx,%eax), %ebx
	movl	%edx, _randomseed
	movswl	%bx, %ebx
	movl	%ebx, 4(%esp)
	call	__Z24SpawnNuclearSecondaryExpss
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	52(%esp), %esi
	.cfi_restore 6
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
L783:
	movl	36(%esp), %eax
	addl	$64, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L800:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%esi)
	jmp	L793
	.p2align 4,,10
	.p2align 3
L785:
	movl	_User(,%eax,4), %eax
	addl	$1, _krandcount
	movl	144(%eax), %eax
	movl	%eax, 32(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L789
	sall	$14, %eax
	cmpl	$1064061474, %eax
	ja	L789
	cmpl	$1053324224, %eax
	ja	L801
	cmpl	$1042586974, %eax
	jbe	L786
	cmpb	$0, _Prediction
	jne	L786
	movl	32(%esp), %edi
	movl	$358, %ecx
	movl	$11210, %edx
	movl	$9, 12(%esp)
	leal	8(%edi), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	leal	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%edi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L786
	.p2align 4,,10
	.p2align 3
L801:
	cmpb	$0, _Prediction
	jne	L786
	movl	32(%esp), %edi
	movl	$357, %ecx
	movl	$11208, %edx
	movl	$9, 12(%esp)
	leal	8(%edi), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	leal	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%edi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L786
	.p2align 4,,10
	.p2align 3
L789:
	cmpb	$0, _Prediction
	jne	L786
	movl	32(%esp), %edi
	movl	$356, %ecx
	movl	$11206, %edx
	movl	$9, 12(%esp)
	leal	8(%edi), %eax
	movl	%edi, 16(%esp)
	movl	%eax, 8(%esp)
	leal	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, %eax
	movl	%edi, (%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L786
L799:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, 36(%esp)
	jmp	L783
	.cfi_endproc
LFE54:
	.p2align 4
	.globl	__Z13SpawnMicroExps
	.def	__Z13SpawnMicroExps;	.scl	2;	.type	32;	.endef
__Z13SpawnMicroExps:
LFB59:
	.cfi_startproc
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movswl	48(%esp), %edi
	movl	%esi, 32(%esp)
	movl	_User(,%edi,4), %eax
	testl	%eax, %eax
	.cfi_offset 6, -16
	je	L807
	testb	$-128, 69(%eax)
	jne	L811
L807:
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	imull	$44, %edi, %ebp
	movl	$_s_MicroExp, %ecx
	addl	_sprite, %ebp
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -20
	movl	$3105, %edx
	movl	$0, 20(%esp)
	movswl	28(%ebp), %eax
	movl	%eax, 16(%esp)
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
	movl	$-1171354717, %ecx
	movswl	%ax, %esi
	movl	_User(,%esi,4), %ebx
	imull	$44, %esi, %eax
	movl	%ebx, 24(%esp)
	movl	_sprite, %ebx
	addl	%eax, %ebx
	addl	$40, %eax
	mull	%ecx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%ebp), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ebp
	leal	16(%ebx), %edx
	movl	$-1171354717, %ecx
	subl	%ebp, %edx
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ebp, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 20(%ebx)
	movl	%edx, %eax
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ebp, %edx
	movb	$32, 21(%ebx)
	movl	_krandcount, %ebp
	movl	%edx, %eax
	mull	%ecx
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %ecx
	leal	1(%eax,%ecx,4), %eax
	shrl	$5, %edx
	movzwl	%ax, %ecx
	andl	$1023, %eax
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	andw	$-258, 12(%ebx)
	cmpl	$512, %eax
	jle	L805
	addl	$1, _spritechanged(,%edx,4)
	orw	$4, 12(%ebx)
L805:
	leal	(%ecx,%ecx,4), %eax
	addl	$2, %ebp
	leal	1(%ecx,%eax,4), %eax
	movl	%ebp, _krandcount
	movzwl	%ax, %ecx
	andl	$1023, %eax
	movl	%ecx, _randomseed
	cmpl	$512, %eax
	jg	L812
L808:
	movl	_DamageData+616, %eax
	movl	24(%esp), %ecx
	movl	%ebx, %edx
	movl	%eax, 188(%ecx)
	movl	$5120, %ecx
	movl	%edi, %eax
	movl	$5120, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	(%ebx), %ecx
	movswl	24(%ebx), %edx
	movl	$16, 8(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	movl	28(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %ebp
	.cfi_restore 5
L802:
	movl	%esi, %eax
	movl	36(%esp), %edi
	movl	32(%esp), %esi
	addl	$44, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L812:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	addl	$1, _spritechanged(,%edx,4)
	orw	$8, 12(%ebx)
	jmp	L808
L811:
	.cfi_restore 3
	.cfi_restore 5
	movl	$-1, %esi
	jmp	L802
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__Z24SpawnGrenadeSecondaryExpss
	.def	__Z24SpawnGrenadeSecondaryExpss;	.scl	2;	.type	32;	.endef
__Z24SpawnGrenadeSecondaryExpss:
LFB60:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$_s_GrenadeSmallExp, %ecx
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
	movl	$1024, 20(%esp)
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
	movswl	%ax, %ebp
	imull	$44, %ebp, %eax
	movl	_User(,%ebp,4), %edi
	movl	%ebp, 28(%esp)
	addl	%eax, %esi
	addl	$40, %eax
	mull	%ecx
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebp, %edx
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
	movb	$-40, 16(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%esi), %edx
	subl	_sprite, %edx
	movl	%edx, %eax
	movb	$32, 20(%esi)
	mull	%ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%esi), %edx
	subl	_sprite, %edx
	movb	$32, 21(%esi)
	movzbl	18(%ebx), %eax
	movb	%al, 18(%esi)
	movl	%edx, %eax
	mull	%ecx
	movl	_randomseed, %eax
	movl	$268439552, 96(%edi)
	movl	$2559, %ecx
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
	je	L814
	sall	$14, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$19, %edx
	leal	1536(%edx), %ecx
L814:
	movzwl	24(%esp), %eax
	addl	$512, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %edx
	movl	24(%esp), %eax
	imull	%ecx, %edx
	andl	$2047, %eax
	sarl	$14, %edx
	movl	%edx, 152(%edi)
	movswl	_sintable(%eax,%eax), %eax
	imull	%ecx, %eax
	sarl	$14, %eax
	movl	%eax, 156(%edi)
	movl	%eax, %ecx
	movl	$6, 16(%esp)
	movl	$1090519104, 12(%esp)
	movswl	98(%edi), %eax
	movl	%eax, 8(%esp)
	movswl	96(%edi), %eax
	movl	$0, (%esp)
	movl	%eax, 4(%esp)
	movl	%ebp, %eax
	call	__Z12move_missilesiiiiiji
	movl	%eax, 264(%edi)
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
	jge	L815
	leal	36(%esp), %eax
	leal	40(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	36(%esp), %ebx
	movl	44(%esp), %eax
L815:
	cmpl	%eax, %ebx
	jge	L816
	leal	36(%esp), %eax
	leal	44(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	44(%esp), %eax
	movl	36(%esp), %ebx
L816:
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
	jle	L823
	movl	$2560, (%esp)
	movl	32(%esp), %eax
	movl	$12800, %ecx
	movl	%esi, %edx
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	(%esi), %eax
	movl	%eax, 56(%edi)
	movl	4(%esi), %eax
	movl	%eax, 60(%edi)
	movl	8(%esi), %eax
	movl	%eax, 64(%edi)
L813:
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
L823:
	.cfi_restore_state
	movl	%ebp, %eax
	call	__Z10KillSprites
	movl	$-1, 28(%esp)
	jmp	L813
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	__Z20SpawnGrenadeSmallExps
	.def	__Z20SpawnGrenadeSmallExps;	.scl	2;	.type	32;	.endef
__Z20SpawnGrenadeSmallExps:
LFB61:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %edx
	andl	$2047, %eax
	movl	%eax, 4(%esp)
	movswl	12(%esp), %eax
	movl	%edx, _randomseed
	movl	%eax, (%esp)
	call	__Z24SpawnGrenadeSecondaryExpss
	xorl	%eax, %eax
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE61:
	.p2align 4
	.globl	__Z15SpawnGrenadeExps
	.def	__Z15SpawnGrenadeExps;	.scl	2;	.type	32;	.endef
__Z15SpawnGrenadeExps:
LFB62:
	.cfi_startproc
	subl	$64, %esp
	.cfi_def_cfa_offset 68
	movswl	68(%esp), %eax
	movl	%esi, 52(%esp)
	.cfi_offset 6, -16
	movl	_User(,%eax,4), %esi
	movl	%eax, 28(%esp)
	testl	%esi, %esi
	je	L827
	testb	$-128, 69(%esi)
	jne	L844
L827:
	imull	$44, 28(%esp), %eax
	movl	_sprite, %ecx
	movl	%edi, 56(%esp)
	movl	%ebp, 60(%esp)
	movl	%ebx, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	movl	$-1171354717, %ebx
	leal	(%ecx,%eax), %edi
	leal	8(%edi), %ebp
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	leal	4(%edi), %eax
	movl	%eax, 32(%esp)
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebx
	movl	%edi, %eax
	subl	%ecx, %eax
	movl	32(%esp), %ecx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	mull	%ebx
	movl	$18, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	_randomseed, %eax
	addl	$1, _krandcount
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %eax
	movzwl	%ax, %eax
	movl	%eax, _randomseed
	cmpl	$65535, %eax
	je	L829
	sall	$14, %eax
	cmpl	$1064061474, %eax
	ja	L829
L830:
	movl	(%edi), %eax
	movl	4(%edi), %ebp
	movl	8(%edi), %ecx
	movl	%eax, 32(%esp)
	cmpw	$5426, 82(%esi)
	je	L860
L831:
	movl	$0, 20(%esp)
	movswl	28(%edi), %eax
	movl	$3121, %edx
	movl	%ecx, 12(%esp)
	movl	$_s_GrenadeExp, %ecx
	movl	%eax, 16(%esp)
	movl	32(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	$-1171354717, %ebp
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	movl	$4, %eax
	call	__Z11SpawnSpritessP11STATEstructsiiiii
	movl	_sprite, %ebx
	movswl	%ax, %esi
	imull	$44, %esi, %eax
	movl	_User(,%esi,4), %ecx
	movl	%ecx, 36(%esp)
	addl	%eax, %ebx
	movl	%eax, 32(%esp)
	addl	$40, %eax
	mull	%ebp
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%esi, %edx
	movw	%ax, 40(%ebx)
	movswl	30(%edi), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%ebx), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%ebx), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%ebx), %edx
	subl	%ecx, %edx
	movb	$96, 20(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	movb	$96, 21(%ebx)
	movzbl	18(%edi), %eax
	subl	%ecx, %edx
	movl	36(%esp), %ecx
	movb	%al, 18(%ebx)
	movl	%edx, %eax
	mull	%ebp
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	andw	$-258, 12(%ebx)
	movl	_DamageData+808, %eax
	movl	%eax, 188(%ecx)
	movl	28(%esp), %eax
	movl	$25600, %ecx
	movl	$7680, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%esi, (%esp)
	call	__Z15DoExpDamageTests
	movl	32(%esp), %eax
	addl	_sprite, %eax
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	%eax, %edi
	movl	$40, 16(%esp)
	movl	8(%eax), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	(%ebx), %ecx
	movswl	24(%ebx), %edx
	movl	$0, 8(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	movl	48(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %edi
	.cfi_restore 7
	movl	60(%esp), %ebp
	.cfi_restore 5
L826:
	movl	%esi, %eax
	movl	52(%esp), %esi
	addl	$64, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L829:
	.cfi_def_cfa_offset 68
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movswl	30(%edi), %eax
	testw	%ax, %ax
	js	L830
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L830
	movl	144(%eax), %eax
	testl	%eax, %eax
	je	L830
	cmpb	$0, _Prediction
	jne	L830
	leal	8(%eax), %edx
	movl	%eax, (%esp)
	movl	$355, %ecx
	movl	%edx, 8(%esp)
	leal	4(%eax), %edx
	movl	%eax, 16(%esp)
	movl	$LC0, %eax
	movl	%edx, 4(%esp)
	movl	$11564, %edx
	movl	$9, 12(%esp)
	call	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0
	jmp	L830
	.p2align 4,,10
	.p2align 3
L860:
	movl	_krandcount, %eax
	movl	%eax, 36(%esp)
	movl	_randomseed, %eax
	leal	(%eax,%eax,4), %edx
	leal	1(%eax,%edx,4), %ebx
	movzwl	%bx, %ebx
	cmpl	$65535, %ebx
	je	L845
	movl	%ebx, %edx
	movl	$524296215, %esi
	sall	$14, %edx
	movl	%edx, %eax
	mull	%esi
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %ebx
	movzwl	%bx, %ebx
	shrl	$17, %edx
	movl	%edx, 40(%esp)
	cmpl	$65535, %ebx
	jne	L833
	movl	32(%esp), %eax
	movl	$56738, 40(%esp)
	addl	$6, %ebp
	movl	$56738, %esi
	leal	-999(%eax,%edx), %eax
	movl	%eax, 32(%esp)
L834:
	movswl	14(%edi), %edx
	movzbl	21(%edi), %eax
	movswl	_tilesiz+2(,%edx,4), %ebx
	testb	$-128, 12(%edi)
	je	L836
	movsbl	_picanm+2(%edx,%edx,4), %edx
	sall	$8, %edx
	cmpb	$64, %al
	je	L861
	imull	%ebx, %eax
	movl	%ecx, %ebx
	addl	%eax, %eax
	movl	%eax, 44(%esp)
	addl	%edx, %eax
	subl	%eax, %ebx
L838:
	movl	44(%esp), %eax
	subl	%edx, %eax
	addl	%eax, %ecx
L841:
	addl	%ebx, %ecx
	movl	36(%esp), %ebx
	sarl	%ecx
	addl	$6, %ebx
	cmpl	$65535, %esi
	je	L862
	movl	40(%esp), %edx
	movl	$524296215, %eax
	movl	%ebx, _krandcount
	sall	$14, %edx
	mull	%edx
	leal	(%esi,%esi,4), %eax
	leal	1(%esi,%eax,4), %eax
	movzwl	%ax, %eax
	shrl	$17, %edx
	movl	%eax, _randomseed
	addl	%edx, %ecx
	cmpl	$65535, %eax
	jne	L843
	subl	$999, %ecx
	jmp	L831
	.p2align 4,,10
	.p2align 3
L845:
	movl	$993, 40(%esp)
	movl	$56738, %esi
	movl	$56738, %eax
L832:
	movl	$1073725, %ebx
	sall	$14, %eax
	xorl	%edx, %edx
	divl	%ebx
	movl	40(%esp), %ebx
	subl	%eax, %ebx
	imull	$21, %esi, %eax
	addl	%ebx, %ebp
	addl	$1, %eax
	movzwl	%ax, %esi
	movl	%esi, 40(%esp)
	jmp	L834
	.p2align 4,,10
	.p2align 3
L836:
	cmpb	$64, %al
	je	L863
	imull	%ebx, %eax
	sall	$2, %eax
L840:
	movl	%ecx, %ebx
	subl	%eax, %ebx
	jmp	L841
	.p2align 4,,10
	.p2align 3
L833:
	movl	%ebx, %edx
	sall	$14, %edx
	movl	%edx, %eax
	mull	%esi
	movl	40(%esp), %eax
	shrl	$17, %edx
	subl	%edx, %eax
	addl	%eax, 32(%esp)
	leal	(%ebx,%ebx,4), %eax
	leal	1(%ebx,%eax,4), %eax
	movzwl	%ax, %eax
	cmpl	$65535, %eax
	jne	L864
	movl	$65117, 40(%esp)
	movl	$65117, %esi
	jmp	L834
	.p2align 4,,10
	.p2align 3
L862:
	movl	%ebx, _krandcount
	movl	$65516, _randomseed
	jmp	L831
	.p2align 4,,10
	.p2align 3
L843:
	sall	$14, %eax
	movl	$524296215, %esi
	mull	%esi
	shrl	$17, %edx
	subl	%edx, %ecx
	jmp	L831
	.p2align 4,,10
	.p2align 3
L861:
	movl	%ebx, %eax
	movl	%ecx, %ebx
	sall	$7, %eax
	movl	%eax, 44(%esp)
	addl	%edx, %eax
	subl	%eax, %ebx
	jmp	L838
	.p2align 4,,10
	.p2align 3
L863:
	movl	%ebx, %eax
	sall	$8, %eax
	jmp	L840
L844:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, %esi
	jmp	L826
L864:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	imull	$21, %eax, %edx
	movl	$1073725, %ebx
	sall	$14, %eax
	addl	$1, %edx
	movzwl	%dx, %esi
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, 40(%esp)
	cmpl	$65535, %esi
	jne	L865
	movl	$65516, 40(%esp)
	leal	-999(%ebp,%eax), %ebp
	movl	$65516, %esi
	jmp	L834
L865:
	movl	%esi, %eax
	jmp	L832
	.cfi_endproc
LFE62:
	.p2align 4
	.globl	__Z12SpawnMineExps
	.def	__Z12SpawnMineExps;	.scl	2;	.type	32;	.endef
__Z12SpawnMineExps:
LFB63:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movswl	60(%esp), %eax
	movl	%eax, 28(%esp)
	movl	_User(,%eax,4), %eax
	testl	%eax, %eax
	je	L869
	testb	$-128, 69(%eax)
	jne	L874
L869:
	movl	28(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	$4, %edx
	movl	%esi, 44(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	$-1171354717, %esi
	imull	$44, %eax, %ebx
	addl	_sprite, %ebx
	movl	%edi, 48(%esp)
	movl	%ebp, 52(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	leal	8(%ebx), %ebp
	call	__Z18change_sprite_statss
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
	movl	$25, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_MineExp, %ecx
	movl	$3122, %edx
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
	cwtl
	imull	$44, %eax, %ebp
	movl	_User(,%eax,4), %edi
	movl	%eax, %ecx
	movl	%eax, 32(%esp)
	movl	%edi, 36(%esp)
	movl	_sprite, %edi
	leal	40(%ebp), %eax
	mull	%esi
	addl	%ebp, %edi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ecx, %edx
	movw	%ax, 40(%edi)
	movswl	30(%ebx), %eax
	call	__Z8SetOwnerss
	movl	_sprite, %ecx
	leal	16(%edi), %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	20(%edi), %edx
	subl	%ecx, %edx
	movb	$-40, 16(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	21(%edi), %edx
	subl	%ecx, %edx
	movb	$108, 20(%edi)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%edi), %edx
	subl	%ecx, %edx
	movb	$108, 21(%edi)
	movl	$25600, %ecx
	movl	%edx, %eax
	mull	%esi
	movl	36(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%edi)
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, %edx
	andw	$-258, 12(%edi)
	movl	_DamageData+840, %eax
	movl	%eax, 188(%esi)
	movl	28(%esp), %eax
	movl	$5120, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	(%edi), %ecx
	movswl	24(%edi), %edx
	movl	$16, 8(%esp)
	movl	8(%edi), %eax
	movl	%eax, 4(%esp)
	movl	4(%edi), %eax
	movl	%eax, (%esp)
	movl	$-1, %eax
	call	__Z8SpawnVisssiiii.isra.0
	addl	_sprite, %ebp
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	0(%ebp), %eax
	movl	%eax, 4(%esp)
	movswl	24(%ebp), %eax
	movl	%eax, (%esp)
	call	__Z10SpawnQuakesiiissi
	movl	40(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	movl	52(%esp), %ebp
	.cfi_restore 5
L866:
	movl	32(%esp), %eax
	addl	$56, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
L874:
	.cfi_restore_state
	movl	$-1, 32(%esp)
	jmp	L866
	.cfi_endproc
LFE63:
	.p2align 4
	.globl	__Z13SpawnLargeExps
	.def	__Z13SpawnLargeExps;	.scl	2;	.type	32;	.endef
__Z13SpawnLargeExps:
LFB64:
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
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %ecx
	movswl	56(%esp), %eax
	imull	$44, %eax, %ebx
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
	movl	$18, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	movl	%ebp, (%esp)
	movl	$0, 4(%esp)
	call	__Z9PlaySoundiPiS_S_i
	movl	$_s_SectorExp, %ecx
	movl	$3121, %edx
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
	movl	_sprite, %ecx
	movswl	%ax, %ebp
	imull	$44, %ebp, %edi
	movl	_User(,%ebp,4), %ebx
	movl	%ebx, 32(%esp)
	leal	40(%edi), %eax
	leal	(%ecx,%edi), %ebx
	mull	%esi
	movl	$9999, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ebx), %edx
	subl	%ecx, %edx
	movw	%ax, 40(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$-1, %edx
	movw	%dx, 30(%ebx)
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
	movb	$90, 20(%ebx)
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ebx), %edx
	subl	%ecx, %edx
	movb	$90, 21(%ebx)
	movl	$12800, %ecx
	movl	%edx, %eax
	mull	%esi
	movl	32(%esp), %esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	orw	$128, 12(%ebx)
	addl	$1, _spritechanged(,%edx,4)
	movl	%ebx, %edx
	andw	$-258, 12(%ebx)
	movl	_DamageData+584, %eax
	movl	%eax, 188(%esi)
	movl	28(%esp), %eax
	movl	$12800, (%esp)
	call	__Z15SpawnExpZadjustsP12spritetypev7ii
	movl	%ebp, (%esp)
	call	__Z15DoExpDamageTests
	addl	_sprite, %edi
	movl	$20000, 24(%esp)
	movl	$4, 20(%esp)
	movl	$40, 16(%esp)
	movl	8(%edi), %eax
	movl	%eax, 12(%esp)
	movl	4(%edi), %eax
	movl	%eax, 8(%esp)
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movswl	24(%edi), %eax
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
	addl	$36, %esp
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
LFE64:
	.globl	__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0
	.section .rdata,"dr"
	.align 4
__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0:
	.word	512
	.word	-512
	.globl	__ZZ18InitSerpMonstSpellsE7lat_ang.lto_priv.0
	.set	__ZZ18InitSerpMonstSpellsE7lat_ang.lto_priv.0,__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0
	.globl	__ZZ17InitEnemyFireballsE7lat_ang.lto_priv.0
	.set	__ZZ17InitEnemyFireballsE7lat_ang.lto_priv.0,__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0
	.set	__ZZ6DoMirvsE4angs,__ZZ13InitSerpSpellsE7lat_ang.lto_priv.0
	.align 4
__ZZ14InitFistAttackP12PLAYERstructE5dangs:
	.word	-128
	.word	128
	.align 4
__ZZ15InitSwordAttackP12PLAYERstructE5dangs:
	.word	-256
	.word	-128
	.word	0
	.word	128
	.word	256
	.align 32
__ZZ15InitEnemyNapalmsE2mp:
	.long	3600
	.long	400
	.word	512
	.space 2
	.long	0
	.long	1100
	.word	0
	.space 2
	.long	3600
	.long	400
	.word	-512
	.space 2
	.align 32
__ZZ15InitSpellNapalmP12PLAYERstructE2mp:
	.long	3600
	.long	400
	.word	512
	.space 2
	.long	0
	.long	1100
	.word	0
	.space 2
	.long	3600
	.long	400
	.word	-512
	.space 2
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__Z15DoExpDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnSpritessP11STATEstructsiiiii;	.scl	2;	.type	32;	.endef
	.def	__Z8SetOwnerss;	.scl	2;	.type	32;	.endef
	.def	__Z11RandomRangei;	.scl	2;	.type	32;	.endef
	.def	__Z9PlaySoundiPiS_S_i;	.scl	2;	.type	32;	.endef
	.def	__Z10SpawnQuakesiiissi;	.scl	2;	.type	32;	.endef
	.def	__Z8SpawnVisssiiii.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z25so_setspriteinterpolationP19SECTOR_OBJECTstructP12spritetypev7;	.scl	2;	.type	32;	.endef
	.def	__Z9SpawnUserssP11STATEstruct;	.scl	2;	.type	32;	.endef
	.def	__Z10FAFhitscaniiisiiiP9hitdata_ti.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19HitscanSpriteAdjustss;	.scl	2;	.type	32;	.endef
	.def	__Z12move_missilesiiiiiji;	.scl	2;	.type	32;	.endef
	.def	__Z13WeaponMoveHits;	.scl	2;	.type	32;	.endef
	.def	__Z10KillSprites;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileHitDiveAreas;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnSmokePuffs;	.scl	2;	.type	32;	.endef
	.def	__Z19SpawnFireballFlamesss;	.scl	2;	.type	32;	.endef
	.def	__Z20SpawnGoroFireballExps;	.scl	2;	.type	32;	.endef
	.def	__Z12FAFgetzrangeiiisPiS_S_S_ii;	.scl	2;	.type	32;	.endef
	.def	__Z17FAFgetzrangepointiiisPiS_S_S_;	.scl	2;	.type	32;	.endef
	.def	__Z11SpawnBubbles;	.scl	2;	.type	32;	.endef
	.def	__Z12DoBlurExtendsss;	.scl	2;	.type	32;	.endef
	.def	__Z18MissileWaterAdjusts.isra.0;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	__Z14InitBloodSprayshs.isra.0;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	__Z9WarpPlanePiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	__Z20MissileWarpUpdatePosss;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileWarpTypeP12spritetypev7S0_;	.scl	2;	.type	32;	.endef
	.def	__Z4WarpPiS_S_Ps;	.scl	2;	.type	32;	.endef
	.def	_clipmove;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	__Z10SetSuicides;	.scl	2;	.type	32;	.endef
	.def	__Z12SpawnZombie2s;	.scl	2;	.type	32;	.endef
	.def	__Z13NewStateGroupsPP11STATEstruct.isra.0;	.scl	2;	.type	32;	.endef
	.def	_setsprite;	.scl	2;	.type	32;	.endef
	.def	__Z12DoDamageTests;	.scl	2;	.type	32;	.endef
	.def	__Z13InitSpellRingP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	__Z13DoLavaBoulders;	.scl	2;	.type	32;	.endef
	.def	__Z12CanSeePlayers;	.scl	2;	.type	32;	.endef
	.def	__Z18change_sprite_statss;	.scl	2;	.type	32;	.endef
	.def	__Z6DoJumps;	.scl	2;	.type	32;	.endef
	.def	__Z21UpdateSinglePlayKillss.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z17DoSkullBeginDeaths;	.scl	2;	.type	32;	.endef
	.def	__Z13EnemyDefaultssP16ACTOR_ACTION_SETP17PERSONALITYstruct;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerUpdateAmmoP12PLAYERstructss;	.scl	2;	.type	32;	.endef
	.def	__Z18HelpMissileLateralsi;	.scl	2;	.type	32;	.endef
	.def	__Z14SpriteOverlapZssi;	.scl	2;	.type	32;	.endef
	.def	__Z9FAFcanseeiiisiiis;	.scl	2;	.type	32;	.endef
	.def	__Z8DoDamagess;	.scl	2;	.type	32;	.endef
	.def	__Z16SpawnSwordSparksP12PLAYERstructssiiis;	.scl	2;	.type	32;	.endef
	.def	__Z15ShootableSwitchs;	.scl	2;	.type	32;	.endef
	.def	__Z14HitBreakSpritess;	.scl	2;	.type	32;	.endef
	.def	__Z12HitBreakWallP10walltypev7iiiss.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z15MissileHitMatchsss;	.scl	2;	.type	32;	.endef
	.def	__Z14SpawnDemonFists;	.scl	2;	.type	32;	.endef
	.def	__Z18PlayerUpdateHealthP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z16PlayerCheckDeathP12PLAYERstructs;	.scl	2;	.type	32;	.endef
	.def	__Z15DoActorSetSpeedsh;	.scl	2;	.type	32;	.endef
	.def	__Z12InitChemBombs.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z10SetFadeAmtP12PLAYERstructsh;	.scl	2;	.type	32;	.endef
	.def	__Z24SpawnNuclearSecondaryExpss;	.scl	2;	.type	32;	.endef
	.def	__Z12_PlayerSoundPKciiPiS1_S1_iP12PLAYERstruct.part.0;	.scl	2;	.type	32;	.endef
