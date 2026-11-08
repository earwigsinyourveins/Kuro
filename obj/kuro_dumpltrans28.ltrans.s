	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL13remove_spritei;	.scl	3;	.type	32;	.endef
__ZL13remove_spritei:
LFB0:
	.cfi_startproc
	imull	$44, %eax, %eax
	movl	_sprite, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ecx, %ecx
	addl	%eax, %edx
	movl	$0, 28(%edx)
	movl	$0, 32(%edx)
	movl	$0, 36(%edx)
	movl	$0, 40(%edx)
L2:
	movl	$0, (%edx,%ecx)
	movl	$0, 4(%edx,%ecx)
	movl	$0, 8(%edx,%ecx)
	movl	$0, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	$32, %ecx
	jb	L2
	movl	_sprite, %ebx
	leal	(%ebx,%eax), %ecx
	movl	$-1171354717, %ebx
	addl	$26, %eax
	mull	%ebx
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	_sprite, %edx
	movw	%ax, 26(%ecx)
	movl	%edx, %eax
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$4096, %edx
	movw	%dx, 24(%ecx)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal statnum (%d) was REMOVED.\0"
LC1:
	.ascii "source/build/src/engine.cpp\0"
	.align 4
LC2:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal picnum (%d) was REMOVED.\0"
	.align 4
LC3:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal sector (%d) moved to sector %d.\0"
	.align 4
LC4:
	.ascii "Error in map file: sprite #%d (%d,%d) with illegal sector (%d) REMOVED.\0"
	.text
	.p2align 4
	.def	__ZL12check_spritei;	.scl	3;	.type	32;	.endef
__ZL12check_spritei:
LFB1:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	_sprite, %edx
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	imull	$44, %eax, %esi
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	leal	(%edx,%esi), %ecx
	movswl	26(%ecx), %eax
	cmpl	$1023, %eax
	ja	L15
	movswl	14(%ecx), %eax
	cmpl	$30719, %eax
	ja	L16
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movswl	24(%ecx), %eax
	movl	%eax, %edi
	movl	%eax, %ebp
	movswl	_numsectors, %eax
	cmpl	%eax, %edi
	jnb	L17
L7:
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L16:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	$-2, %edx
	jge	L18
L9:
	movl	40(%esp), %esi
	movl	%ebx, %eax
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL13remove_spritei
	.p2align 4,,10
	.p2align 3
L15:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %esi
	cmpl	%esi, %edx
	cmovl	%esi, %edx
	cmpl	$-2, %edx
	jl	L9
	movl	%eax, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC0, 12(%esp)
	movl	$11037, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L9
	.p2align 4,,10
	.p2align 3
L18:
	movl	%eax, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC2, 12(%esp)
	movl	$11043, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L9
	.p2align 4,,10
	.p2align 3
L17:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	leal	24(%ecx), %edi
	movl	%edi, %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	%edx, %eax
	movl	$-1, %edx
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	movw	%dx, 24(%ecx)
	addl	$1, _spritechanged(,%eax,4)
	movl	%edi, 8(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 4(%esp)
	movl	(%ecx), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	_sprite, %ecx
	addl	%esi, %ecx
	movswl	24(%ecx), %edx
	testw	%dx, %dx
	js	L19
L12:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	movl	__ZN6loguru18g_stderr_verbosityE, %esi
	cmpl	%esi, %eax
	cmovl	%esi, %eax
	cmpw	$4096, %dx
	je	L13
	cmpl	$-2, %eax
	jl	L7
	movl	%edx, 32(%esp)
	movl	%ebp, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC3, 12(%esp)
	movl	$11058, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L7
	.p2align 4,,10
	.p2align 3
L13:
	cmpl	$-2, %eax
	jl	L7
	movl	%ebp, 28(%esp)
	movl	4(%ecx), %eax
	movl	%eax, 24(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC4, 12(%esp)
	movl	$11061, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L7
	.p2align 4,,10
	.p2align 3
L19:
	movl	%ebx, %eax
	call	__ZL13remove_spritei
	addl	_sprite, %esi
	movswl	24(%esi), %edx
	movl	%esi, %ecx
	jmp	L12
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	@gethiq16angle@8
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
@gethiq16angle@8:
LFB3:
	.cfi_startproc
	movl	%ecx, %eax
	orl	%edx, %ecx
	jne	L33
L31:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L33:
	testl	%eax, %eax
	jne	L22
	shrl	$5, %edx
	andl	$67108864, %edx
	leal	33554432(%edx), %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L22:
	testl	%edx, %edx
	je	L34
	cmpl	%edx, %eax
	je	L35
	movl	%eax, %ecx
	addl	%edx, %ecx
	je	L36
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ecx
	movl	%eax, 16(%esp)
/APP
 # 12503 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 12503 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jg	L37
	movl	%ecx, %eax
	movl	$1280, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	$5120, %eax
	subl	%edx, %eax
	movl	20(%esp), %edx
	movl	__ZL9qradarang.lto_priv.0(,%eax,4), %eax
	shrl	$5, %edx
	sarl	$6, %eax
	andl	$67108864, %edx
	leal	33554432(%eax,%edx), %ecx
L20:
	movl	%ecx, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L34:
	shrl	$5, %eax
	andl	$67108864, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L37:
	.cfi_def_cfa_offset 32
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -8
	movl	16(%esp), %ebx
	movl	$1280, %edx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	__ZL9qradarang.lto_priv.0+20480(,%eax,4), %ecx
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	shrl	$5, %eax
	sarl	$6, %ecx
	andl	$67108864, %eax
	addl	%eax, %ecx
	andl	$134217727, %ecx
	jmp	L20
	.p2align 4,,10
	.p2align 3
L35:
	.cfi_def_cfa_offset 4
	shrl	$5, %eax
	andl	$67108864, %eax
	leal	16777216(%eax), %ecx
	jmp	L31
	.p2align 4,,10
	.p2align 3
L36:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	sall	$26, %ecx
	addl	$50331648, %ecx
	jmp	L31
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	_calc_sector_reachability
	.def	_calc_sector_reachability;	.scl	2;	.type	32;	.endef
_calc_sector_reachability:
LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movswl	_numsectors, %edi
	testw	%di, %di
	je	L38
	leal	(%edi,%edi,4), %esi
	movl	%edi, -16(%ebp)
	sall	$3, %esi
	testl	%esi, %esi
	jle	L76
	movl	_sector, %edx
	movl	$4919, %eax
	addl	%edx, %esi
	.p2align 5
	.p2align 4
	.p2align 3
L41:
	movzbl	(%edx), %ebx
	movl	%eax, %ecx
	movzbl	%ah, %eax
	addl	$1, %edx
	sall	$8, %ecx
	xorl	%ebx, %eax
	movzwl	%cx, %ecx
	xorl	_crctab16(,%eax,4), %ecx
	movl	%ecx, %eax
	cmpl	%edx, %esi
	jne	L41
L40:
	leal	7(%edi), %edx
	movl	__ZL16reachablesectors.lto_priv.0, %ecx
	movl	%edi, %ebx
	sarl	$3, %edx
	imull	%edi, %edx
	testl	%ecx, %ecx
	je	L103
	movl	__ZZ24calc_sector_reachabilityE9tablesize, %esi
	cmpw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	je	L104
	movw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	cmpl	%edx, %esi
	je	L45
L43:
	movl	%edx, __ZZ24calc_sector_reachabilityE9tablesize
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZZ24calc_sector_reachabilityE9tablesize, %ebx
	subl	$4, %esp
	movl	$0, __ZL16reachablesectors.lto_priv.0
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L46
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movswl	_numsectors, %eax
	movl	%esi, __ZL16reachablesectors.lto_priv.0
	movl	%eax, -16(%ebp)
	movl	%eax, %ebx
L45:
	movl	$32768, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_wallsect, (%esp)
	call	_memset
	movl	-16(%ebp), %eax
	leal	15(%eax,%eax), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	27(%esp), %eax
	andl	$-16, %eax
	movl	%eax, -40(%ebp)
	testl	%ebx, %ebx
	jle	L38
	movl	$0, -48(%ebp)
	movl	%ebx, %esi
	.p2align 4
	.p2align 3
L73:
	movl	-48(%ebp), %edi
	leal	7(%esi), %eax
	sarl	$3, %eax
	movl	%edi, %edx
	imull	%eax, %edx
	addl	__ZL16reachablesectors.lto_priv.0, %edx
	movl	%edx, -24(%ebp)
	movl	%edx, %ebx
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	call	_memset
	movl	-40(%ebp), %eax
	movl	$0, -44(%ebp)
	movw	%di, (%eax)
	movl	%edi, %eax
	sarl	$3, %edi
	andl	$7, %eax
	movl	%edi, -52(%ebp)
	movl	%eax, -56(%ebp)
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %eax
	orb	%al, (%ebx,%edi)
	movl	$1, %eax
	movzwl	_numsectors, %esi
	movw	%ax, -34(%ebp)
	.p2align 4
	.p2align 3
L72:
	movl	-40(%ebp), %eax
	movl	-44(%ebp), %edi
	movswl	(%eax,%edi,2), %ebx
	movl	_sector, %eax
	leal	(%ebx,%ebx,4), %edx
	movl	%ebx, %ecx
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edx
	movswl	2(%eax), %eax
	addl	%edx, %eax
	movl	%edx, -20(%ebp)
	movl	%eax, -28(%ebp)
	movl	%eax, %edi
	cmpl	%eax, %edx
	jge	L47
	subl	%edx, %edi
	movl	%edx, %eax
	andl	$1, %edi
	je	L100
	movw	%bx, _wallsect+0(%edx,%edx)
	leal	1(%edx), %eax
	cmpl	%eax, -28(%ebp)
	je	L99
L100:
	movl	%edx, -16(%ebp)
	movl	%edx, %edi
	movl	-28(%ebp), %edx
L48:
	movw	%cx, _wallsect+0(%eax,%eax)
	movw	%cx, _wallsect+2(%eax,%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	L48
	movl	%edi, -20(%ebp)
	movl	-16(%ebp), %edx
L99:
	movswl	%si, %ecx
	cmpl	-48(%ebp), %ebx
	je	L51
L75:
	leal	7(%ecx), %eax
	movl	-52(%ebp), %edi
	sarl	$3, %eax
	imull	%eax, %ebx
	movl	%eax, -32(%ebp)
	movl	-56(%ebp), %eax
	addl	__ZL16reachablesectors.lto_priv.0, %ebx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movb	%al, -16(%ebp)
	andb	(%ebx,%edi), %al
	cmpb	%al, -16(%ebp)
	je	L50
	cmpl	-28(%ebp), %edx
	jge	L52
L51:
	sall	$5, %edx
	addl	_wall, %edx
	movl	-20(%ebp), %edi
	leal	12(%edx), %eax
	movl	%eax, -16(%ebp)
	jmp	L71
	.p2align 4,,10
	.p2align 3
L57:
	movl	_wall, %ebx
	movswl	%di, %eax
	sall	$5, %eax
	addl	%ebx, %eax
	movzwl	14(%eax), %ecx
	testb	$4, %ch
	je	L61
	leal	26(%eax), %ecx
	subl	%ebx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	movswl	26(%eax), %ecx
	testw	%cx, %cx
	js	L102
	sall	$5, %ecx
	movswl	12(%ebx,%ecx), %eax
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L63
L59:
	sarl	$3, %eax
	addl	-24(%ebp), %eax
	movl	%ecx, %esi
	movzbl	(%eax), %ebx
	movl	%eax, -32(%ebp)
	andl	$7, %esi
	movl	%ebx, %eax
	notl	%eax
	testb	%al, __ZL8pow2char.lto_priv.9(%esi)
	je	L66
	movzbl	__ZL8pow2char.lto_priv.6(%esi), %esi
	movl	%ebx, %eax
	movb	%bl, -35(%ebp)
	notl	%eax
	movl	%esi, %ebx
	testb	%bl, %al
	je	L66
	movzbl	-35(%ebp), %ebx
	movl	-32(%ebp), %eax
	movl	-40(%ebp), %edx
	orl	%esi, %ebx
	movb	%bl, (%eax)
	movswl	-34(%ebp), %eax
	movl	%eax, %ebx
	movw	%cx, (%edx,%eax,2)
	movzwl	_editstatus, %edx
	addl	$1, %ebx
	movw	%bx, -34(%ebp)
L66:
	testw	%dx, %dx
	je	L60
	movl	_wall, %ebx
L63:
	movswl	-20(%ebp), %eax
	sall	$5, %eax
	addl	%ebx, %eax
L102:
	movzwl	14(%eax), %ecx
L61:
	andb	$8, %ch
	je	L68
	leal	26(%eax), %edx
	subl	%ebx, %edx
	shrl	$5, %edx
	addl	$1, _wallchanged(,%edx,4)
	movswl	30(%eax), %eax
L67:
	testw	%ax, %ax
	js	L68
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	movl	%eax, %edx
	testl	%eax, %eax
	js	L68
	sarl	$3, %eax
	addl	-24(%ebp), %eax
	movl	%edx, %ebx
	movzbl	(%eax), %ecx
	andl	$7, %ebx
	movl	%eax, -20(%ebp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %eax
	testb	%al, __ZL8pow2char.lto_priv.9(%ebx)
	je	L68
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	testb	%bl, %al
	je	L68
	movl	-20(%ebp), %eax
	orl	%ebx, %ecx
	movl	-40(%ebp), %ebx
	movb	%cl, (%eax)
	movswl	-34(%ebp), %eax
	movl	%eax, %esi
	movw	%dx, (%ebx,%eax,2)
	addl	$1, %esi
	movw	%si, -34(%ebp)
	.p2align 4
	.p2align 3
L68:
	addl	$32, -16(%ebp)
	addl	$1, %edi
	cmpl	%edi, -28(%ebp)
	je	L105
L71:
	movl	-16(%ebp), %eax
	movzwl	(%eax), %edx
	testw	%dx, %dx
	js	L56
	movswl	%dx, %eax
	movl	%edx, %ebx
	sarl	$3, %eax
	addl	-24(%ebp), %eax
	andl	$7, %ebx
	movzbl	(%eax), %ecx
	movl	%eax, -20(%ebp)
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %eax
	testb	%al, __ZL8pow2char.lto_priv.9(%ebx)
	je	L56
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	testb	%bl, %al
	je	L56
	movl	-20(%ebp), %eax
	orl	%ebx, %ecx
	movl	-40(%ebp), %esi
	movb	%cl, (%eax)
	movswl	-34(%ebp), %eax
	movl	%eax, %ebx
	movw	%dx, (%esi,%eax,2)
	addl	$1, %ebx
	movw	%bx, -34(%ebp)
	.p2align 4
	.p2align 3
L56:
	movzwl	_editstatus, %edx
	movw	%di, -20(%ebp)
	testw	%dx, %dx
	jne	L57
	movswl	%di, %ecx
	movswl	_yax_nextwall(,%ecx,4), %eax
	testw	%ax, %ax
	js	L58
	sall	$5, %eax
	addl	_wall, %eax
	movswl	12(%eax), %eax
	movl	%eax, %ecx
	testl	%eax, %eax
	jns	L59
L60:
	movswl	-20(%ebp), %ecx
L58:
	movswl	_yax_nextwall+2(,%ecx,4), %eax
	jmp	L67
	.p2align 4,,10
	.p2align 3
L105:
	movswl	_numsectors, %ecx
	movl	%ecx, %esi
L52:
	addl	$1, -44(%ebp)
	movswl	-34(%ebp), %eax
	cmpl	-44(%ebp), %eax
	jg	L72
	movl	%ecx, %esi
L53:
	addl	$1, -48(%ebp)
	cmpl	%esi, -48(%ebp)
	jl	L73
L38:
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
L47:
	.cfi_restore_state
	movswl	%si, %ecx
	cmpl	-48(%ebp), %ebx
	jne	L75
	jmp	L52
L50:
	movl	-32(%ebp), %eax
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcpy
	movswl	_numsectors, %esi
	jmp	L53
L103:
	movw	%ax, __ZZ24calc_sector_reachabilityE7sectcrc
	jmp	L43
L104:
	cmpl	%edx, %esi
	jne	L43
	jmp	L38
L76:
	movl	$4919, %eax
	jmp	L40
L46:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE5:
	.section .rdata,"dr"
	.align 4
LC5:
	.ascii "Ignoring %d bytes of unknown data appended to map file. Saving changes to this file will result in loss of this data.\0"
	.align 4
LC8:
	.ascii "Using mapinfo-defined mapart %s\0"
	.text
	.p2align 4
	.globl	_engineLoadBoard.constprop.0
	.def	_engineLoadBoard.constprop.0;	.scl	2;	.type	32;	.endef
_engineLoadBoard.constprop.0:
LFB12:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movzbl	%dl, %edx
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-16, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	pushl	%ebx
	subl	$336, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -304(%ebp)
	movl	%ecx, -300(%ebp)
	call	_kopen4load.part.0
	movl	%eax, -296(%ebp)
	cmpl	$-1, %eax
	je	L264
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_mapversion, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L262
	movl	_mapversion, %eax
	subl	$7, %eax
	cmpl	$2, %eax
	ja	L262
	movl	$8192, 8(%esp)
	movl	$-1171354717, %edi
	movl	$255, 4(%esp)
	movl	$_headspritesect, (%esp)
	call	_memset
	movl	_sprite, %esi
	xorl	%ecx, %ecx
	movw	%cx, _headspritesect+8192
	movl	$1, %ecx
	leal	24(%esi), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L112:
	movl	%ebx, %edx
	leal	-2(%ecx), %eax
	movw	%cx, _nextspritesect-2(%ecx,%ecx)
	addl	$44, %ebx
	subl	%esi, %edx
	movw	%ax, _prevspritesect-2(%ecx,%ecx)
	addl	$1, %ecx
	movl	%edx, %eax
	mull	%edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	$4096, %edx
	movw	%dx, -44(%ebx)
	cmpl	$16385, %ecx
	jne	L112
	movl	$-1, %eax
	movl	$1, %ebx
	movl	$-1171354717, %edi
	movw	%ax, _prevspritesect
	movl	$-1, %eax
	movw	%ax, _nextspritesect+32766
	movl	$2048, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_headspritestat, (%esp)
	call	_memset
	xorl	%eax, %eax
	leal	26(%esi), %ecx
	movw	%ax, _headspritestat+2048
	.p2align 6
	.p2align 4
	.p2align 3
L113:
	movl	%ecx, %edx
	leal	-2(%ebx), %eax
	movw	%bx, _nextspritestat-2(%ebx,%ebx)
	addl	$44, %ecx
	subl	%esi, %edx
	movw	%ax, _prevspritestat-2(%ebx,%ebx)
	addl	$1, %ebx
	movl	%edx, %eax
	mull	%edi
	movl	$1024, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%ax, -44(%ecx)
	cmpl	$16385, %ebx
	jne	L113
	movl	$16383, %eax
	movl	$-1, %esi
	movl	$-1, %edi
	movl	$0, _Numsprites
	movw	%ax, _tailspritefree
	movw	%si, _prevspritestat
	movw	%di, _nextspritestat+32766
	call	_mi_collect.constprop.0
	movl	__ZL16reachablesectors.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL16reachablesectors.lto_priv.0
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsector, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dsprite, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_show2dwall, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_editwall, (%esp)
	call	_memset
	movl	$16392, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_sectorchanged, (%esp)
	call	_memset
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_spritechanged, (%esp)
	call	_memset
	movl	$67584, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_wallchanged, (%esp)
	call	_memset
	movl	$262144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ornament, (%esp)
	call	_memset
	cmpl	$9, _mapversion
	jle	L265
L114:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numsectors, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L115
	cmpl	$7, _mapversion
	movl	$4097, %eax
	movl	$1025, %ecx
	movswl	_numsectors, %edx
	cmovle	%ecx, %eax
	cmpl	%eax, %edx
	jnb	L115
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	(%edx,%edx,4), %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	sall	$3, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_sector, %edx
	movl	-296(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %esi
	movswl	_numsectors, %eax
	leal	(%eax,%eax,4), %edx
	sall	$3, %edx
	cmpl	%esi, %edx
	jne	L115
	testw	%ax, %ax
	jle	L118
	leal	-5(%eax,%eax,4), %eax
	movl	_sector, %esi
	movl	%ebx, -300(%ebp)
	leal	0(,%eax,8), %ebx
	.p2align 4
	.p2align 3
L119:
	movl	$-858993459, %eax
	movzwl	(%esi,%ebx), %edi
	mull	%ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, (%esi,%ebx)
	movl	_sector, %eax
	leal	(%eax,%ebx), %ecx
	leal	2(%ecx), %edx
	movzwl	2(%ecx), %esi
	subl	%eax, %edx
	movl	$-858993459, %eax
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%si, 2(%ecx)
	movl	_sector, %esi
	leal	(%esi,%ebx), %ecx
	leal	4(%ecx), %edx
	movl	4(%ecx), %edi
	subl	%esi, %edx
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%esi, %edx
	movl	%edi, 4(%ecx)
	movl	8(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%esi, %edx
	movl	%edi, 8(%ecx)
	movzwl	12(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 12(%ecx)
	movzwl	14(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	16(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 14(%ecx)
	movzwl	16(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	18(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 16(%ecx)
	movzwl	18(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 18(%ecx)
	movzwl	24(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	subl	$40, %ebx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 24(%ecx)
	movzwl	26(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 26(%ecx)
	movzwl	34(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 34(%ecx)
	movzwl	36(%ecx), %edi
	mull	%edx
	movl	$-858993459, %eax
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%esi, %edx
	movw	%di, 36(%ecx)
	movzwl	38(%ecx), %edi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _sectorchanged(,%edx,4)
	movw	%di, 38(%ecx)
	cmpl	$-40, %ebx
	jne	L119
	movl	-300(%ebp), %ebx
L118:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	$_numwalls, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L115
	cmpl	$7, _mapversion
	movl	$16385, %eax
	movl	$8193, %edx
	movswl	_numwalls, %edi
	cmovle	%edx, %eax
	cmpl	%eax, %edi
	jnb	L115
	movswl	_numsectors, %eax
	testw	%ax, %ax
	jle	L121
	movl	%eax, -300(%ebp)
	xorl	%ecx, %ecx
	movl	_sector, %eax
	movl	%ebx, -308(%ebp)
	jmp	L122
	.p2align 4,,10
	.p2align 3
L267:
	movl	%edi, %esi
	movswl	2(%eax), %ebx
	subl	%edx, %esi
	cmpl	%ebx, %esi
	jb	L115
	addl	$1, %ecx
	addl	$40, %eax
	cmpl	-300(%ebp), %ecx
	je	L266
L122:
	movswl	(%eax), %edx
	cmpl	%edx, %edi
	jnb	L267
L115:
	movl	-296(%ebp), %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movw	%dx, _numsectors
	movw	%cx, _numwalls
	call	_kclose
	movl	$-3, -296(%ebp)
L106:
	movl	-296(%ebp), %eax
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
L265:
	.cfi_restore_state
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_Player, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %esi
	movl	%esi, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L115
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_Player+4, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L115
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$4, %ecx
	movl	$_Player+8, %edx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$4, %eax
	jne	L115
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$2, %ecx
	movl	%esi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-300(%ebp), %edi
	movl	%edi, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L115
	andw	$2047, (%edi)
	movl	$2, %ecx
	movl	$_Player+268, %edx
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	je	L114
	jmp	L115
	.p2align 4,,10
	.p2align 3
L266:
	movl	-308(%ebp), %ebx
L121:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	sall	$5, %edi
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%edi, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	_wall, %edx
	movl	-296(%ebp), %eax
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %ecx
	movswl	_numwalls, %eax
	movl	%eax, %esi
	sall	$5, %esi
	cmpl	%ecx, %esi
	jne	L115
	testw	%ax, %ax
	jle	L123
	leal	-1(%eax), %esi
	movl	_wall, %edx
	sall	$5, %esi
	.p2align 4
	.p2align 3
L124:
	movl	(%edx,%esi), %edi
	movl	%esi, %eax
	shrl	$5, %eax
	addl	$1, _wallchanged(,%eax,4)
	movl	%edi, (%edx,%esi)
	movl	_wall, %edx
	leal	(%edx,%esi), %eax
	leal	4(%eax), %ecx
	movl	4(%eax), %edi
	subl	%edx, %ecx
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	8(%eax), %ecx
	subl	%edx, %ecx
	movl	%edi, 4(%eax)
	movzwl	8(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	10(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 8(%eax)
	movzwl	10(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	12(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 10(%eax)
	movzwl	12(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	14(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 12(%eax)
	movzwl	14(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	16(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 14(%eax)
	movzwl	16(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	18(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 16(%eax)
	movzwl	18(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	26(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 18(%eax)
	movzwl	26(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	28(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 26(%eax)
	movzwl	28(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	leal	30(%eax), %ecx
	subl	%edx, %ecx
	movw	%di, 28(%eax)
	movzwl	30(%eax), %edi
	shrl	$5, %ecx
	addl	$1, _wallchanged(,%ecx,4)
	subl	$32, %esi
	movw	%di, 30(%eax)
	cmpl	$-32, %esi
	jne	L124
L123:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	-290(%ebp), %edx
	movl	$2, %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %esi
	movl	%esi, %eax
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	$2, %eax
	jne	L115
	cmpl	$7, _mapversion
	movl	$4097, %edx
	movswl	-290(%ebp), %eax
	cmovle	%edx, %ebx
	cmpl	%ebx, %eax
	jnb	L115
	imull	$44, %eax, %ecx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%esi, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	_sprite, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	movl	%eax, %edx
	movswl	-290(%ebp), %eax
	imull	$44, %eax, %eax
	cmpl	%edx, %eax
	jne	L115
	movl	%esi, %eax
	call	_ktell
	movl	%eax, %ebx
	movl	%esi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	cmpl	%eax, %ebx
	je	L126
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jge	L268
L126:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	-296(%ebp), %edi
	movl	%edi, %eax
	call	__Z15klseek_internaliiiPKhPiS1_
	movl	%edi, %eax
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %ebx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L127
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	%eax, %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	cmpl	%eax, %ebx
	jne	L269
	movups	LC6, %xmm0
	movl	%ebx, %ecx
	movl	%esi, %edx
	leal	-280(%ebp), %eax
	movl	$0, -264(%ebp)
	movups	%xmm0, -280(%ebp)
	movl	$0, -260(%ebp)
	call	_md4block
	movl	-264(%ebp), %ebx
	movl	$8, %ecx
	leal	-264(%ebp), %edx
	leal	-288(%ebp), %eax
	call	__ZL6EncodePhPKjj.lto_priv.0
	movl	%ebx, %eax
	movl	$56, %edx
	movl	$120, %ecx
	shrl	$3, %eax
	andl	$63, %eax
	subl	%eax, %edx
	subl	%eax, %ecx
	cmpl	$55, %eax
	cmovbe	%edx, %ecx
	leal	-280(%ebp), %eax
	movl	$__ZL7PADDING, %edx
	call	_md4block
	movl	$8, %ecx
	leal	-288(%ebp), %edx
	leal	-280(%ebp), %eax
	call	_md4block
	leal	-280(%ebp), %edx
	movl	$_g_loadedMapHack+12, %eax
	movl	$16, %ecx
	call	__ZL6EncodePhPKjj.lto_priv.0
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-296(%ebp), %eax
	subl	$4, %esp
	call	_kclose
	movswl	-290(%ebp), %edx
	movl	_mapversion, %ebx
	leal	-1(%edx), %edi
	movl	%edi, -296(%ebp)
	cmpl	$9, %ebx
	jg	L132
	movl	$-1171354717, %esi
	testl	%edi, %edi
	js	L134
L133:
	imull	$44, -296(%ebp), %ecx
	movl	_sprite, %edx
	leal	(%edx,%ecx), %ebx
	movl	%ebx, %eax
	movl	(%ebx), %edi
	subl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movl	%edi, (%ebx)
	movl	_sprite, %ebx
	addl	%ebx, %ecx
	leal	4(%ecx), %edx
	movl	4(%ecx), %edi
	subl	%ebx, %edx
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	8(%ecx), %edx
	subl	%ebx, %edx
	movl	%edi, 4(%ecx)
	movl	8(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	12(%ecx), %edx
	subl	%ebx, %edx
	movl	%edi, 8(%ecx)
	movzwl	12(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	14(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 12(%ecx)
	movzwl	14(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	24(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 14(%ecx)
	movzwl	24(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	26(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 24(%ecx)
	movzwl	26(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	28(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 26(%ecx)
	movzwl	28(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	30(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 28(%ecx)
	movzwl	30(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	32(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 30(%ecx)
	movzwl	32(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	34(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 32(%ecx)
	movzwl	34(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	36(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 34(%ecx)
	movzwl	36(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	38(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 36(%ecx)
	movzwl	38(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	40(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 38(%ecx)
	movzwl	40(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	leal	42(%ecx), %edx
	subl	%ebx, %edx
	movw	%di, 40(%ecx)
	movzwl	42(%ecx), %edi
	movl	%edx, %eax
	mull	%esi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 42(%ecx)
	movl	-296(%ebp), %edi
	movl	%edi, %eax
	call	__ZL12check_spritei
	leal	-1(%edi), %eax
	movl	%eax, -296(%ebp)
	cmpl	$-1, %eax
	jne	L133
L263:
	movl	_mapversion, %ebx
L134:
	movzwl	_editstatus, %eax
	movl	%ebx, _g_loadedMapVersion
	movl	$_yax_bunchnum+16384, %edx
	movl	$0, _numyaxbunches
	movups	LC7, %xmm0
	movw	%ax, -308(%ebp)
	movl	$_yax_bunchnum, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L137:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L137
	movl	$16384, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_nextsectbunch, (%esp)
	call	_memset
	movl	$16384, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$__ZL10yax_updown.lto_priv.0, (%esp)
	call	_memset
	movl	$1024, 8(%esp)
	movl	$255, 4(%esp)
	movl	$_headsectbunch, (%esp)
	call	_memset
	movl	$_yax_nextwall, %eax
	movl	$_yax_nextwall+65536, %edx
	movups	LC7, %xmm0
	.p2align 4
	.p2align 4
	.p2align 3
L138:
	movups	%xmm0, (%eax)
	addl	$32, %eax
	movups	%xmm0, -16(%eax)
	cmpl	%eax, %edx
	jne	L138
	cmpl	$8, %ebx
	jle	L139
	movzwl	_numsectors, %edi
	movl	$1, %eax
	movl	$0, __ZL7tempbuf.lto_priv.1
	movw	%ax, _editstatus
	movl	$0, __ZL7tempbuf.lto_priv.1+4
	movl	$0, __ZL7tempbuf.lto_priv.1+8
	movl	$0, __ZL7tempbuf.lto_priv.1+12
	movl	$0, __ZL7tempbuf.lto_priv.1+16
	movl	$0, __ZL7tempbuf.lto_priv.1+20
	movl	$0, __ZL7tempbuf.lto_priv.1+24
	movl	$0, __ZL7tempbuf.lto_priv.1+28
	testw	%di, %di
	jle	L202
	xorl	%ebx, %ebx
L143:
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	testw	%si, %si
	js	L141
	movswl	%si, %edx
	andl	$7, %esi
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%esi), %ecx
	orb	%cl, __ZL7tempbuf.lto_priv.1(%edx)
L141:
	testw	%ax, %ax
	js	L142
	movswl	%ax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	orb	%al, __ZL7tempbuf.lto_priv.1(%edx)
L142:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	movl	%eax, %edi
	cmpl	%eax, %ebx
	jl	L143
	movzbl	__ZL7tempbuf.lto_priv.1, %ecx
L140:
	movw	%di, -300(%ebp)
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ecx, %ebx
	jmp	L147
	.p2align 4,,10
	.p2align 3
L270:
	movl	%eax, %ecx
	sarl	$3, %ecx
	movzbl	__ZL7tempbuf.lto_priv.1(%ecx), %ebx
	movl	%eax, %ecx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %esi
L147:
	movl	%eax, %ecx
	andl	%esi, %ebx
	leal	1(%edx), %edi
	subl	%edx, %ecx
	movb	%cl, -296(%ebp)
	movl	%esi, %ecx
	movzbl	-296(%ebp), %esi
	cmpb	%cl, %bl
	movl	$-1, %ebx
	cmove	%esi, %ebx
	cmovne	%edi, %edx
	addl	$1, %eax
	movb	%bl, __ZL7tempbuf.lto_priv.1+31(%eax)
	cmpl	$256, %eax
	jne	L270
	cmpw	$0, -300(%ebp)
	jle	L148
	xorl	%ebx, %ebx
L151:
	movswl	%bx, %eax
	movw	%bx, -300(%ebp)
	call	_yax_getbunch.constprop.1
	movswl	%ax, %edi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	movw	%ax, -296(%ebp)
	testw	%di, %di
	js	L149
	movzbl	__ZL7tempbuf.lto_priv.1+32(%edi), %ecx
	xorl	%edx, %edx
	movswl	%bx, %eax
	call	_yax_setbunch
L149:
	movswl	-296(%ebp), %eax
	testw	%ax, %ax
	js	L150
	movzbl	__ZL7tempbuf.lto_priv.1+32(%eax), %ecx
	movswl	-300(%ebp), %eax
	movl	$1, %edx
	call	_yax_setbunch
L150:
	movswl	_numsectors, %eax
	addl	$1, %ebx
	cmpl	%eax, %ebx
	jl	L151
	movl	%eax, %ebx
	subl	$1, %ebx
	js	L148
	movswl	-308(%ebp), %eax
	movl	%eax, -316(%ebp)
	leal	(%ebx,%ebx,4), %eax
	sall	$3, %eax
	movl	%eax, -300(%ebp)
L168:
	movswl	%bx, %eax
	movw	%bx, -296(%ebp)
	call	_yax_getbunch.constprop.1
	movswl	%ax, %edi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	movw	%di, _yax_bunchnum(,%ebx,4)
	movw	%ax, _yax_bunchnum+2(,%ebx,4)
	movl	%eax, %esi
	testw	%di, %di
	js	L152
	movl	-300(%ebp), %eax
	addl	_sector, %eax
	cmpw	$0, 2(%eax)
	jle	L153
	movl	%eax, -312(%ebp)
	movswl	(%eax), %eax
	movl	_wall, %edx
	movl	%eax, %ecx
	sall	$5, %ecx
	cmpl	$0, -316(%ebp)
	je	L154
	movl	%ebx, -320(%ebp)
	movl	-312(%ebp), %ebx
	leal	14(%edx,%ecx), %ecx
	movw	%di, -312(%ebp)
L156:
	testb	$4, 1(%ecx)
	je	L155
	movl	%eax, %edx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	12(%ecx), %edx
	movw	%dx, _yax_nextwall(,%eax,4)
L155:
	movswl	2(%ebx), %edx
	movswl	(%ebx), %edi
	addl	$1, %eax
	addl	$32, %ecx
	addl	%edi, %edx
	cmpl	%edx, %eax
	jl	L156
	movl	-320(%ebp), %ebx
	movswl	-312(%ebp), %edi
L153:
	movzwl	_headsectbunch(%edi,%edi), %eax
	cmpw	$-1, %ax
	je	L271
	movzwl	-296(%ebp), %ecx
	movw	%ax, _nextsectbunch(%ebx,%ebx)
	movw	%cx, _headsectbunch(%edi,%edi)
L152:
	testw	%si, %si
	js	L160
	movl	-300(%ebp), %edi
	addl	_sector, %edi
	cmpw	$0, 2(%edi)
	jle	L161
	movswl	(%edi), %eax
	movl	_wall, %edx
	movl	%eax, %ecx
	sall	$5, %ecx
	cmpl	$0, -316(%ebp)
	je	L162
	movl	%ebx, -312(%ebp)
	leal	14(%edx,%ecx), %ecx
L164:
	testb	$8, 1(%ecx)
	je	L163
	movl	%eax, %edx
	andl	$134217727, %edx
	addl	$1, _wallchanged(,%edx,4)
	movzwl	16(%ecx), %edx
	movw	%dx, _yax_nextwall+2(,%eax,4)
L163:
	movswl	2(%edi), %edx
	movswl	(%edi), %ebx
	addl	$1, %eax
	addl	$32, %ecx
	addl	%ebx, %edx
	cmpl	%edx, %eax
	jl	L164
	movl	-312(%ebp), %ebx
L161:
	movswl	%si, %eax
	movzwl	-296(%ebp), %esi
	addl	$256, %eax
	movzwl	_headsectbunch(%eax,%eax), %edx
	movw	%si, _headsectbunch(%eax,%eax)
	cmpw	$-1, %dx
	je	L160
	movw	%dx, _nextsectbunch+8192(%ebx,%ebx)
L160:
	subl	$1, %ebx
	subl	$40, -300(%ebp)
	cmpl	$-1, %ebx
	jne	L168
L148:
	movzwl	-308(%ebp), %eax
	movw	%ax, _editstatus
L139:
	cmpw	$0, -308(%ebp)
	jne	L272
L169:
	movl	-304(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcpy
	leal	-280(%ebp), %eax
	movl	$46, 4(%esp)
	movl	%eax, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L273
	movl	$1734763310, (%eax)
	movb	$0, 4(%eax)
L184:
	leal	-280(%ebp), %eax
	call	__Z8OSD_ExecPKc
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L185
	call	__Z26windowsDwmSetupCompositioni.part.0.constprop.0
L185:
	movl	_vsync, %eax
	call	_videoSetVsync
	movl	%eax, _vsync
	movl	_usermaphacks, %eax
	testl	%eax, %eax
	je	L186
	movl	$_compare_usermaphacks, 16(%esp)
	movl	$28, 12(%esp)
	movl	_num_usermaphacks, %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$_g_loadedMapHack, (%esp)
	call	_bsearch
	movl	%eax, %esi
	testl	%eax, %eax
	je	L186
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	je	L186
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	jns	L274
L187:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L188
	call	_artClearMapArt.part.0
L188:
	movl	%ebx, (%esp)
	call	_strlen
	addl	$7, %eax
	cmpl	$255, %eax
	jbe	L275
L189:
	movswl	-290(%ebp), %eax
	movl	%eax, -296(%ebp)
	testl	%eax, %eax
	jle	L204
	movl	%eax, -300(%ebp)
	xorl	%ebx, %ebx
	jmp	L195
L192:
	movzwl	26(%ecx), %eax
	cmpw	$1024, %ax
	je	L276
L193:
	movswl	%ax, %edx
	movswl	24(%ecx), %eax
	call	_insertsprite
	leal	1(%ebx), %eax
	cmpl	%eax, -296(%ebp)
	je	L277
L205:
	movl	%eax, %ebx
L195:
	imull	$44, %ebx, %edi
	movl	_sprite, %esi
	leal	(%esi,%edi), %ecx
	movzwl	12(%ecx), %eax
	notl	%eax
	testb	$48, %al
	jne	L192
	movzbl	22(%ecx), %eax
	orb	23(%ecx), %al
	jne	L192
	leal	12(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movzwl	26(%ecx), %eax
	andw	$-49, 12(%ecx)
	cmpw	$1024, %ax
	jne	L193
L276:
	leal	24(%ecx), %edx
	movl	$-1171354717, %eax
	subl	%esi, %edx
	mull	%edx
	movl	$-1171354717, %eax
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	xorl	%edx, %edx
	movw	%dx, 24(%ecx)
	leal	26(%ecx), %edx
	subl	%esi, %edx
	xorl	%esi, %esi
	mull	%edx
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movswl	24(%ecx), %eax
	xorl	%edx, %edx
	movw	%si, 26(%ecx)
	call	_insertsprite
	leal	26(%edi), %edx
	movl	$-1171354717, %eax
	movl	_sprite, %ecx
	mull	%edx
	subl	$1, -300(%ebp)
	leal	1(%ebx), %eax
	addl	%edi, %ecx
	movl	$1024, %edi
	shrl	$5, %edx
	addl	$1, _spritechanged(,%edx,4)
	movw	%di, 26(%ecx)
	cmpl	%eax, -296(%ebp)
	jne	L205
L277:
	movl	-296(%ebp), %eax
	movl	-300(%ebp), %edi
	movl	%eax, %esi
	subl	%edi, %esi
	movl	%esi, -296(%ebp)
	cmpl	%edi, %eax
	je	L191
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	L198
L197:
	addl	$44, %esi
	cmpl	%ebx, %edi
	je	L191
	addl	$1, %edi
L198:
	movl	_sprite, %edx
	leal	(%edx,%esi), %ecx
	cmpw	$1024, 26(%ecx)
	jne	L197
	leal	26(%ecx), %eax
	subl	%edx, %eax
	movl	$-1171354717, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	addl	$1, _spritechanged(,%eax,4)
	xorl	%eax, %eax
	movw	%ax, 26(%ecx)
	movswl	%di, %eax
	call	_deletesprite.isra.0
	jmp	L197
L204:
	movl	$0, -296(%ebp)
L191:
	movl	$_Player+268, 8(%esp)
	movl	_Player+4, %eax
	movl	%eax, 4(%esp)
	movl	_Player, %eax
	movl	%eax, (%esp)
	call	_updatesector
	movl	$1048576, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spriteext, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	_wallext, %eax
	movl	%eax, (%esp)
	call	_memset
	movl	$166400, 8(%esp)
	movl	$0, 4(%esp)
	movl	_spritesmooth, %eax
	movl	%eax, (%esp)
	call	_memset
	cmpl	$4, _rendmode
	jne	L199
	call	_polymer_loadboard
L199:
	movl	$0, _guniqhudid
	movl	$30720, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_tilecols, (%esp)
	call	_memset
	call	_calc_sector_reachability
	jmp	L106
L186:
	movl	__ZL16g_bakTileFileNum.lto_priv.0, %eax
	testl	%eax, %eax
	je	L190
	call	_artClearMapArt.part.0
L190:
	movl	-304(%ebp), %esi
	movl	%esi, (%esp)
	call	_strlen
	addl	$7, %eax
	cmpl	$255, %eax
	ja	L189
	movl	%esi, %eax
	call	_artSetupMapArt.part.0
	jmp	L189
L132:
	testw	%dx, %dx
	jle	L134
	movl	-296(%ebp), %ebx
L136:
	movl	%ebx, %eax
	call	__ZL12check_spritei
	subl	$1, %ebx
	jnb	L136
	jmp	L263
L268:
	subl	%ebx, %eax
	movl	$LC5, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$11240, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L126
L275:
	movl	%ebx, %eax
	call	_artSetupMapArt.part.0
	jmp	L189
L274:
	movl	%ebx, 16(%esp)
	movl	$LC8, 12(%esp)
	movl	$11309, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	8(%esi), %ebx
	jmp	L187
L271:
	movzwl	-296(%ebp), %eax
	addl	$1, _numyaxbunches
	movw	%ax, _headsectbunch(%edi,%edi)
	jmp	L152
L162:
	movl	%ebx, -312(%ebp)
	leal	30(%edx,%ecx), %edx
	movw	%si, -320(%ebp)
L166:
	testb	$8, -15(%edx)
	je	L165
	movl	%eax, %ebx
	andl	$134217727, %ebx
	movl	_wallchanged(,%ebx,4), %ecx
	leal	1(%ecx), %esi
	addl	$2, %ecx
	movl	%esi, _wallchanged(,%ebx,4)
	movzwl	(%edx), %esi
	movl	%ecx, _wallchanged(,%ebx,4)
	movl	$-1, %ecx
	movw	%si, _yax_nextwall+2(,%eax,4)
	movw	%cx, (%edx)
L165:
	movswl	(%edi), %ecx
	movswl	2(%edi), %ebx
	addl	$1, %eax
	addl	$32, %edx
	addl	%ebx, %ecx
	cmpl	%eax, %ecx
	jg	L166
	movl	-312(%ebp), %ebx
	movzwl	-320(%ebp), %esi
	jmp	L161
L154:
	movl	%ebx, -320(%ebp)
	leal	26(%edx,%ecx), %edx
	movw	%di, -322(%ebp)
	movw	%si, -324(%ebp)
	movl	-312(%ebp), %esi
L158:
	testb	$4, -11(%edx)
	je	L157
	movl	%eax, %ebx
	andl	$134217727, %ebx
	movl	_wallchanged(,%ebx,4), %ecx
	leal	1(%ecx), %edi
	addl	$2, %ecx
	movl	%edi, _wallchanged(,%ebx,4)
	movzwl	(%edx), %edi
	movl	%ecx, _wallchanged(,%ebx,4)
	xorl	%ecx, %ecx
	movw	%di, _yax_nextwall(,%eax,4)
	movw	%cx, (%edx)
L157:
	movswl	(%esi), %ecx
	movswl	2(%esi), %ebx
	addl	$1, %eax
	addl	$32, %edx
	addl	%ebx, %ecx
	cmpl	%eax, %ecx
	jg	L158
	movl	-320(%ebp), %ebx
	movswl	-322(%ebp), %edi
	movzwl	-324(%ebp), %esi
	jmp	L153
L272:
	movl	_Player+8, %eax
	movl	%eax, -296(%ebp)
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_graysectbitmap, (%esp)
	call	_memset
	movl	$2048, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_graywallbitmap, (%esp)
	call	_memset
	cmpw	$0, _numsectors
	jle	L170
	xorl	%ebx, %ebx
L176:
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movswl	%bx, %eax
	call	_yax_getbunch.constprop.0
	leal	(%ebx,%ebx,4), %edx
	movl	%eax, %edi
	movl	_sector, %eax
	leal	(%eax,%edx,8), %edx
	movl	%eax, -300(%ebp)
	movl	4(%edx), %ecx
	testw	%si, %si
	js	L171
	cmpl	%ecx, -296(%ebp)
	jle	L172
L171:
	movl	$1, %esi
	testw	%di, %di
	js	L173
	movl	-296(%ebp), %eax
	cmpl	8(%edx), %eax
	setle	%al
	movl	%eax, %esi
L173:
	testl	%ecx, %ecx
	js	L172
	movl	8(%edx), %eax
	testl	%eax, %eax
	jg	L172
	movl	%esi, %eax
	testb	%al, %al
	jne	L174
L172:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%ecx), %ecx
	orb	%cl, _graysectbitmap(%edx)
L174:
	movswl	_numsectors, %esi
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jl	L176
	movl	$0, _numgraysects
	movl	-300(%ebp), %eax
	testl	%esi, %esi
	jle	L169
	movl	%eax, -296(%ebp)
	movl	$1, %edx
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movl	$0, -300(%ebp)
	jmp	L182
L178:
	addl	$1, %ebx
	cmpl	%ebx, %esi
	je	L181
	movl	%ebx, %edx
	addl	$40, -296(%ebp)
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
L182:
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movzbl	_graysectbitmap(%ecx), %eax
	andl	%edx, %eax
	cmpb	%dl, %al
	jne	L178
	movl	-296(%ebp), %eax
	addl	$1, -300(%ebp)
	cmpw	$0, 2(%eax)
	jle	L179
	movl	%ebx, -296(%ebp)
	movswl	(%eax), %edx
L180:
	movl	%edx, %ecx
	movl	%edx, %edi
	addl	$1, %edx
	sarl	$3, %ecx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %ebx
	orb	%bl, _graywallbitmap(%ecx)
	movswl	(%eax), %ecx
	movswl	2(%eax), %edi
	addl	%edi, %ecx
	cmpl	%ecx, %edx
	jl	L180
	movl	-296(%ebp), %ebx
	movl	%eax, -296(%ebp)
L179:
	movl	$1, %edi
	jmp	L178
L181:
	movl	%edi, %eax
	testb	%al, %al
	je	L169
	movl	-300(%ebp), %eax
	movl	%eax, _numgraysects
	jmp	L169
L273:
	leal	-280(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	$1734763310, -280(%ebp,%eax)
	movb	$0, -276(%ebp,%eax)
	jmp	L184
L269:
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L115
L127:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L262:
	movl	-296(%ebp), %eax
	call	_kclose
	movl	$-2, -296(%ebp)
	jmp	L106
L264:
	movl	$7, _mapversion
	jmp	L106
L170:
	movl	$0, _numgraysects
	jmp	L169
L202:
	xorl	%ecx, %ecx
	jmp	L140
	.cfi_endproc
LFE12:
	.section .rdata,"dr"
	.align 4
LC10:
	.ascii "#version 110\12         \12         attribute vec4 i_vertPos;\12         attribute vec2 i_texCoord;\12         \12         varying vec2 v_texCoord;\12         \12         void main()\12         {\12             gl_Position = i_vertPos;\12             v_texCoord = i_texCoord;\12         }\12\0"
	.align 4
LC11:
	.ascii "#version 120\12         \12         //s_texture points to an indexed color texture\12         uniform sampler2D s_texture;\12         //s_palette is the palette texture\12         uniform sampler2D s_palette;\12         \12         varying vec2 v_texCoord;\12         \12         const float c_paletteScale = 255.0/256.0;\12         const float c_paletteOffset = 0.5/256.0;\12         uniform vec4 u_colorCorrection;\12         const vec2 c_vec2_zero_one = vec2(0.0, 1.0);\12         const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12         \12         void main()\12         {\12             vec4 color = texture2D(s_texture, v_texCoord.xy);\12             color.r = c_paletteScale * color.r + c_paletteOffset;\12             color.rgb = texture2D(s_palette, color.rg).rgb;\12             \12             // DEBUG \12             //color = texture2D(s_palette, v_texCoord.xy);\12             //color = texture2D(s_texture, v_texCoord.xy);\12             \12             vec4 v_cc = vec4(u_colorCorrection.x - 1.0, 0.5 * -(u_colorCorrection.y - 1.0), -(u_colorCorrection.z - 1.0), 1.0);\12             gl_FragColor = mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw)\12                          * mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw)\12                          * mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                                 (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                                 (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                                 c_vec2_zero_one.xxxy)\12                          * color;\12         }\12\0"
LC12:
	.ascii "i_vertPos\0"
LC13:
	.ascii "i_texCoord\0"
LC14:
	.ascii "s_texture\0"
LC15:
	.ascii "s_palette\0"
LC16:
	.ascii "u_colorCorrection\0"
	.data
	.align 32
LC9:
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.text
	.p2align 4
	.globl	__ZL20videoAllocateBuffersv.lto_priv.0
	.def	__ZL20videoAllocateBuffersv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20videoAllocateBuffersv.lto_priv.0:
LFB36:
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
	subl	$312, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$__ZL4dplc.lto_priv.0, -128(%ebp)
	movl	_ydim, %edx
	movl	$__ZL5smost.lto_priv.0, -192(%ebp)
	movl	$__ZL5umost.lto_priv.0, -184(%ebp)
	movl	$__ZL5dmost.lto_priv.0, -176(%ebp)
	movl	$_startumost, -168(%ebp)
	movl	$_startdmost, -160(%ebp)
	movl	$__ZL8bakumost.lto_priv.0, -152(%ebp)
	movl	$__ZL8bakdmost.lto_priv.0, -144(%ebp)
	movl	$__ZL4uplc.lto_priv.0, -136(%ebp)
	movl	$__ZL5uwall.lto_priv.0, -120(%ebp)
	movl	$__ZL5dwall.lto_priv.0, -112(%ebp)
	movl	$__ZL5swplc.lto_priv.0, -104(%ebp)
	movl	$__ZL4lplc.lto_priv.0, -96(%ebp)
	movl	$__ZL5swall.lto_priv.0, -88(%ebp)
	movl	$__ZL6swallf.lto_priv.0, -80(%ebp)
	movl	$__ZL5lwall.lto_priv.0, -72(%ebp)
	movl	_xdim, %ecx
	movl	$__ZL9radarang2.lto_priv.0, -64(%ebp)
	movl	%ecx, %eax
	movl	$__ZL5dotp1.lto_priv.0, -56(%ebp)
	sall	$14, %eax
	movl	$__ZL5dotp2.lto_priv.0, -48(%ebp)
	sarl	$6, %eax
	movl	$__ZL5lastx.lto_priv.0, -40(%ebp)
	movl	%eax, -188(%ebp)
	leal	(%ecx,%ecx), %eax
	movl	%eax, -180(%ebp)
	movl	%eax, -172(%ebp)
	movl	%eax, -164(%ebp)
	movl	%eax, -156(%ebp)
	movl	%eax, -148(%ebp)
	movl	%eax, -140(%ebp)
	movl	%eax, -132(%ebp)
	movl	%eax, -124(%ebp)
	movl	%eax, -116(%ebp)
	movl	%eax, -108(%ebp)
	leal	0(,%ecx,4), %eax
	leal	16(%eax), %ebx
	movl	%eax, -100(%ebp)
	movl	%eax, -92(%ebp)
	movl	%eax, -84(%ebp)
	movl	%eax, -76(%ebp)
	movl	%eax, -60(%ebp)
	movl	$320, %eax
	cmpl	%eax, %edx
	movl	%ebx, -68(%ebp)
	leal	-192(%ebp), %ebx
	cmovge	%edx, %eax
	imull	%edx, %ecx
	sall	$5, %edx
	movl	$_mirrorBuffer, -32(%ebp)
	movl	$__ZL7lookups, -24(%ebp)
	sall	$2, %eax
	movl	%edx, -20(%ebp)
	movl	%eax, -52(%ebp)
	movl	%eax, -44(%ebp)
	movl	%eax, -36(%ebp)
	movl	%ecx, -28(%ebp)
	jmp	L281
	.p2align 4,,10
	.p2align 3
L299:
	movl	%eax, (%esi)
	addl	$8, %ebx
	leal	-16(%ebp), %eax
	cmpl	%ebx, %eax
	je	L306
L281:
	movl	(%ebx), %esi
	movl	4(%ebx), %edi
	movl	%edi, 4(%esp)
	movl	(%esi), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L299
	testl	%edi, %edi
	je	L299
L296:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L306:
	movl	_ydim, %edx
	movl	__ZL7lookups, %eax
	movl	%edx, %ecx
	movl	%eax, __ZL11horizlookup.lto_priv.0
	sall	$4, %ecx
	addl	%ecx, %eax
	movl	%eax, __ZL12horizlookup2.lto_priv.0
	leal	0(,%edx,4), %eax
	sarl	%eax
	movl	%eax, __ZL10horizycent.lto_priv.0
	movl	_xdim, %eax
	sall	$14, %eax
	sarl	$7, %eax
	movl	%eax, __ZL8ysavecnt.lto_priv.0
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_tabledivide32.lto_priv.1
	movl	_rendmode, %ebx
	movl	%eax, __ZL12nodesperline.lto_priv.0
	testl	%ebx, %ebx
	jne	L278
	movss	_ydim, %xmm0
	movl	_xdim, %esi
	movl	%esi, -280(%ebp)
	movss	-280(%ebp), %xmm1
	unpcklps	%xmm0, %xmm1
	cmpb	$0, _nogl
	jne	L284
	movl	__ZL6buffer.lto_priv.0, %eax
	testl	%eax, %eax
	je	L285
	movss	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z17glsurface_destroyv
	movss	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
L285:
	movss	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z28buildgl_resetStateAccountingv
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	*_glad_glPixelStorei
	movss	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
	subl	$8, %esp
	movss	%xmm0, -280(%ebp)
	imull	-280(%ebp), %esi
	movlps	%xmm1, __ZL9bufferRes.lto_priv.0
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L286
	movl	%eax, __ZL6buffer.lto_priv.0
	movl	__ZL11quadVertsID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	subl	$4, %esp
	testb	%al, %al
	je	L287
L288:
	movl	__ZL11quadVertsID.lto_priv.0, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
L289:
	movl	LC9(%eax), %esi
	movl	LC9+4(%eax), %ebx
	movl	LC9+8(%eax), %ecx
	movl	LC9+12(%eax), %edx
	movl	%esi, -272(%ebp,%eax)
	movl	%ebx, -268(%ebp,%eax)
	movl	%ecx, -264(%ebp,%eax)
	movl	%edx, -260(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L289
	leal	-272(%ebp), %eax
	movl	$35044, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	movl	$0, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$12, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$0, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
	movl	$1, (%esp)
	call	*_glad_glEnableVertexAttribArray
	subl	$4, %esp
	cmpl	$33984, _gl+4
	je	L291
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L291:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsTexture
	subl	$4, %esp
	testb	%al, %al
	jne	L292
	movl	$__ZL11bufferTexID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	subl	$8, %esp
L292:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$1, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$0, 20(%esp)
	movl	__ZL9bufferRes.lto_priv.0+4, %eax
	movl	%eax, 16(%esp)
	movl	__ZL9bufferRes.lto_priv.0, %eax
	movl	$6403, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	movl	__ZL6buffer.lto_priv.0, %eax
	subl	$36, %esp
	testl	%eax, %eax
	je	L293
	call	__Z20glsurface_setPalettePv.part.0.constprop.0
L293:
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	jne	L294
	call	*_glad_glCreateProgram
	movl	$LC10, %edx
	movl	%eax, __ZL15shaderProgramID.lto_priv.0
	movl	$35633, %eax
	call	__ZL13compileShaderjPKc.lto_priv.0
	movl	$LC11, %edx
	movl	%eax, %esi
	movl	$35632, %eax
	call	__ZL13compileShaderjPKc.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %ebx
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	$LC12, 8(%esp)
	movl	$0, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glBindAttribLocation
	subl	$12, %esp
	movl	$LC13, 8(%esp)
	movl	$1, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glBindAttribLocation
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	subl	$12, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%esi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%ebx, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
L294:
	movl	__ZL15shaderProgramID.lto_priv.0, %ebx
	movl	%ebx, (%esp)
	call	*_glad_glUseProgram
	subl	$4, %esp
	movl	%ebx, _gl
	movl	$LC14, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL13texSamplerLoc
	movl	$LC15, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL17paletteSamplerLoc
	movl	$LC16, 4(%esp)
	movl	__ZL15shaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glGetUniformLocation
	subl	$8, %esp
	movl	%eax, __ZL18colorCorrectionLoc
	movl	$0, 4(%esp)
	movl	__ZL13texSamplerLoc, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL17paletteSamplerLoc, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movss	_g_glColorCorrection+12, %xmm0
	subl	$8, %esp
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movss	%xmm0, 4(%esp)
	movl	__ZL18colorCorrectionLoc, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L278:
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
L284:
	.cfi_restore_state
	movl	_xres, %edi
	movl	__ZL6buffer.lto_priv.1, %eax
	movss	_yres, %xmm2
	movl	%edi, -280(%ebp)
	movss	-280(%ebp), %xmm0
	unpcklps	%xmm2, %xmm0
	testl	%eax, %eax
	je	L295
	movlps	%xmm0, -288(%ebp)
	movlps	%xmm1, -280(%ebp)
	call	__Z19softsurface_destroyv
	movlps	-288(%ebp), %xmm0
	movlps	-280(%ebp), %xmm1
L295:
	movl	%edi, %eax
	movlps	%xmm1, __ZL9bufferRes.lto_priv.1
	cltd
	movlps	%xmm0, __ZL13destBufferRes.lto_priv.0
	sall	$16, %eax
	movl	%esi, 8(%esp)
	shldl	$16, %edi, %edx
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.13
	movl	__ZL9bufferRes.lto_priv.1+4, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL13destBufferRes.lto_priv.0+4, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.13
	movl	%eax, __ZL8yScale16.lto_priv.0
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	__ZL9bufferRes.lto_priv.1, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.13
	movl	__ZL9bufferRes.lto_priv.1, %esi
	imull	__ZL9bufferRes.lto_priv.1+4, %esi
	movl	%eax, __ZL11recXScale16.lto_priv.0
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	addl	$15, %esi
	andl	$-16, %esi
	leal	(%esi,%eax,2), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L296
	leal	(%eax,%esi), %ecx
	movl	__ZL13destBufferRes.lto_priv.0, %edx
	movl	__ZL11recXScale16.lto_priv.0, %esi
	movl	%eax, __ZL6buffer.lto_priv.1
	movl	%ecx, __ZL18scanPosLookupTable.lto_priv.0
	movl	%esi, %eax
	testl	%edx, %edx
	jle	L278
	.p2align 5
	.p2align 4
	.p2align 3
L298:
	movl	%eax, %edx
	addl	%esi, %eax
	shrl	$16, %edx
	movw	%dx, (%ecx,%ebx,2)
	addl	$1, %ebx
	cmpl	__ZL13destBufferRes.lto_priv.0, %ebx
	jl	L298
	jmp	L278
L287:
	movl	$__ZL11quadVertsID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	subl	$8, %esp
	jmp	L288
L286:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC17:
	.ascii "reference0000.png\0"
LC22:
	.ascii "##Background\0"
LC25:
	.ascii "##Foreground\0"
LC30:
	.ascii "gdi32.dll\0"
LC31:
	.ascii "D3DKMTOpenAdapterFromHdc\0"
LC32:
	.ascii "D3DKMTCloseAdapter\0"
	.align 4
LC33:
	.ascii "D3DKMTWaitForVerticalBlankEvent\0"
LC34:
	.ascii "Failed flushing DWM!\0"
LC35:
	.ascii "source/build/src/winbits.cpp\0"
	.align 4
LC36:
	.ascii "null device context for display: %s windowx: %d windowy: %d.\0"
	.align 4
LC37:
	.ascii "D3DKMTCloseAdapter() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC38:
	.ascii "D3DKMTWaitForVerticalBlankEvent() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC39:
	.ascii "D3DKMTOpenAdapterFromHdc() failed: NTSTATUS: 0x%08x (%s)\0"
	.align 4
LC40:
	.ascii "Unable to use D3DKMT, falling back to DWM sync.\0"
	.align 4
LC41:
	.ascii "Frame was still locked at a depth of %d when videoShowFrame() was called!\0"
LC42:
	.ascii "source/build/src/sdlayer.cpp\0"
	.text
	.p2align 4
	.globl	_videoNextPage
	.def	_videoNextPage;	.scl	2;	.type	32;	.endef
_videoNextPage:
LFB45:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	leal	8(%esp), %edi
	.cfi_def_cfa 7, 0
	andl	$-16, %esp
	pushl	-4(%edi)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	pushl	%esi
	leal	-104(%ebp), %eax
	pushl	%ebx
	subl	$300, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -172(%ebp)
	cmpl	$200, _qsetmode
	je	L711
L308:
	movl	_g_cache+16, %ecx
	movl	__ZZN7cache1d9ageBlocksEvE8agecount, %eax
	cmpl	%eax, %ecx
	jg	L506
	leal	-1(%ecx), %eax
	movl	%eax, __ZZN7cache1d9ageBlocksEvE8agecount
L506:
	testl	%eax, %eax
	js	L507
	movl	_g_cache+12, %edx
	subl	$1, %ecx
	sarl	$4, %edx
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	testl	%edx, %edx
	je	L507
	subl	$1, %edx
	.p2align 4
	.p2align 3
L510:
	movl	%eax, %ecx
	sall	$4, %ecx
	addl	_g_cache, %ecx
	movl	(%ecx), %esi
	movzbl	(%esi), %ebx
	leal	-2(%ebx), %ecx
	movzbl	%cl, %ecx
	cmpl	$197, %ecx
	jg	L508
	subl	$1, %ebx
	movb	%bl, (%esi)
L508:
	subl	$1, %eax
	jns	L509
	movl	_g_cache+16, %eax
	subl	$1, %eax
L509:
	subl	$1, %edx
	jnb	L510
	movl	%eax, __ZZN7cache1d9ageBlocksEvE8agecount
L507:
	movl	_mdtims, %eax
	movl	%eax, _omdtims
	movl	-172(%ebp), %eax
	call	_enet_gettime.constprop.0.isra.0
	movl	$1000, %eax
	imull	-100(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	imull	$1000, -104(%ebp), %ecx
	movl	_spriteext, %edx
	addl	%eax, %ecx
	leal	16(%edx), %eax
	addl	$1064976, %edx
	movl	%ecx, _mdtims
	subl	_omdtims, %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L512:
	testb	$2, -4(%eax)
	je	L511
	addl	%ecx, (%eax)
L511:
	addl	$64, %eax
	cmpl	%edx, %eax
	jne	L512
	addl	$1, _numframes
	movl	$1, __ZL15beforedrawrooms.lto_priv.0
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
L711:
	.cfi_restore_state
	call	_videoBeginDrawing
	movl	__ZL8permtail.lto_priv.0, %ebx
	cmpl	%ebx, __ZL8permhead.lto_priv.0
	jne	L311
L309:
	call	_videoEndDrawing
	movl	_benchmarkScreenshot, %ebx
	testl	%ebx, %ebx
	jne	L712
L312:
	call	__Z8OSD_Drawv
	leal	-104(%ebp), %edi
	movl	__ZL10sdl_resize.lto_priv.0, %eax
	orl	__ZL13sdl_minimized.lto_priv.0, %eax
	movl	%edi, -172(%ebp)
	movl	%eax, -224(%ebp)
	jne	L313
	cmpb	$0, _nogl
	je	L713
	cmpb	$0, _offscreenrendering
	jne	L313
	movl	_lockcount, %edx
	testl	%edx, %edx
	jne	L714
L483:
	movl	__ZL11sdl_surface.lto_priv.0, %ecx
	testb	$2, (%ecx)
	jne	L715
	movl	__ZL6buffer.lto_priv.1, %esi
	movl	20(%ecx), %edi
	testl	%esi, %esi
	je	L500
	testl	%edi, %edi
	je	L500
L708:
	movl	4(%ecx), %eax
	movzbl	8(%eax), %eax
	cmpb	$24, %al
	je	L488
	ja	L489
	subl	$15, %eax
	cmpb	$1, %al
	ja	L709
	movl	%edi, %eax
	call	__Z30softsurface_blitBufferInternalItEvPT_
	movl	__ZL11sdl_surface.lto_priv.0, %eax
L487:
	testb	$2, (%eax)
	je	L500
	movl	%eax, (%esp)
	call	_SDL_UnlockSurface
L500:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	leal	-104(%ebp), %edi
	movl	%eax, (%esp)
	call	_SDL_UpdateWindowSurface
	movl	%edi, -172(%ebp)
	testl	%eax, %eax
	je	L313
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GetWindowSurface
	movl	%eax, __ZL11sdl_surface.lto_priv.0
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_UpdateWindowSurface
L313:
	call	_videoBeginDrawing
	movl	__ZL8permtail.lto_priv.0, %esi
	cmpl	__ZL8permhead.lto_priv.0, %esi
	jne	L505
L501:
	call	_videoEndDrawing
	jmp	L308
L716:
	movl	__ZL8permfifo.lto_priv.0+40(%eax), %edi
	movl	__ZL8permfifo.lto_priv.0(%eax), %esi
	movl	__ZL8permfifo.lto_priv.0+8(%eax), %ecx
	movl	__ZL8permfifo.lto_priv.0+4(%eax), %edx
	movl	%edi, 44(%esp)
	movl	__ZL8permfifo.lto_priv.0+36(%eax), %edi
	movl	%edi, 40(%esp)
	movl	__ZL8permfifo.lto_priv.0+32(%eax), %edi
	movl	%edi, 36(%esp)
	movl	__ZL8permfifo.lto_priv.0+28(%eax), %edi
	movl	%edi, 32(%esp)
	movl	__ZL8permfifo.lto_priv.0+24(%eax), %edi
	movl	%edi, 28(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+20(%eax), %edi
	movl	%edi, 24(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+19(%eax), %edi
	movl	%edi, 20(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+18(%eax), %edi
	movl	%edi, 16(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+17(%eax), %edi
	movl	%edi, 12(%esp)
	movsbl	__ZL8permfifo.lto_priv.0+16(%eax), %edi
	movl	%edi, 8(%esp)
	movswl	__ZL8permfifo.lto_priv.0+14(%eax), %edi
	movl	%edi, 4(%esp)
	movswl	__ZL8permfifo.lto_priv.0+12(%eax), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	.p2align 5
	.p2align 4
	.p2align 3
L310:
	addl	$1, %ebx
	andl	$511, %ebx
	cmpl	%ebx, __ZL8permhead.lto_priv.0
	je	L309
L311:
	imull	$44, %ebx, %eax
	movzbl	__ZL8permfifo.lto_priv.0+21(%eax), %edx
	testb	%dl, %dl
	je	L310
	cmpl	_numpages, %edx
	jg	L310
	jmp	L716
L718:
	imull	$44, %esi, %ecx
	subl	$1, %eax
	movb	%al, __ZL8permfifo.lto_priv.0+21(%ecx)
	testb	$127, %al
	je	L503
L504:
	cmpl	%edx, __ZL8permhead.lto_priv.0
	je	L501
	movl	%edx, %esi
L505:
	imull	$44, %esi, %ebx
	movzbl	__ZL8permfifo.lto_priv.0+21(%ebx), %eax
	cmpb	$-127, %al
	ja	L717
L502:
	leal	1(%esi), %edx
	andl	$511, %edx
	testb	$127, %al
	jne	L718
L503:
	cmpl	%esi, __ZL8permtail.lto_priv.0
	jne	L504
	movl	%edx, __ZL8permtail.lto_priv.0
	jmp	L504
L717:
	movl	__ZL8permfifo.lto_priv.0+40(%ebx), %edi
	movl	__ZL8permfifo.lto_priv.0(%ebx), %eax
	movl	__ZL8permfifo.lto_priv.0+8(%ebx), %ecx
	movl	__ZL8permfifo.lto_priv.0+4(%ebx), %edx
	movl	%edi, 44(%esp)
	movl	__ZL8permfifo.lto_priv.0+36(%ebx), %edi
	movl	%edi, 40(%esp)
	movl	__ZL8permfifo.lto_priv.0+32(%ebx), %edi
	movl	%edi, 36(%esp)
	movl	__ZL8permfifo.lto_priv.0+28(%ebx), %edi
	movl	%edi, 32(%esp)
	movl	__ZL8permfifo.lto_priv.0+24(%ebx), %edi
	movl	%edi, 28(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+20(%ebx), %edi
	movl	%edi, 24(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+19(%ebx), %edi
	movl	%edi, 20(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+18(%ebx), %edi
	movl	%edi, 16(%esp)
	movzbl	__ZL8permfifo.lto_priv.0+17(%ebx), %edi
	movl	%edi, 12(%esp)
	movsbl	__ZL8permfifo.lto_priv.0+16(%ebx), %edi
	movl	%edi, 8(%esp)
	movswl	__ZL8permfifo.lto_priv.0+14(%ebx), %edi
	movl	%edi, 4(%esp)
	movswl	__ZL8permfifo.lto_priv.0+12(%ebx), %edi
	movl	%edi, (%esp)
	call	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0
	movzbl	__ZL8permfifo.lto_priv.0+21(%ebx), %eax
	jmp	L502
L712:
	movl	$0, 4(%esp)
	movl	$LC17, (%esp)
	call	__Z18videoCaptureScreenPKcc
	movl	$0, _benchmarkScreenshot
	jmp	L312
L713:
	cmpl	$8, _bpp
	jle	L315
	movzbl	_palfadedelta, %ebx
	testb	%bl, %bl
	jne	L719
L316:
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	cmpb	$0, _g_ImGuiFrameActive
	jne	L720
L328:
	cmpl	$1, _r_glfinish
	je	L721
L454:
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	je	L455
L456:
	movl	__ZL10sdl_window.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	_SDL_GL_SwapWindow
	cmpl	$1, _r_glfinish
	je	L722
L480:
	cmpl	$8, _bpp
	jle	L481
	call	__Z19polymost_resetStatev
	jmp	L313
L714:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %eax
	cmovl	%ecx, %eax
	cmpl	$-1, %eax
	jge	L723
L485:
	call	_videoEndDrawing
	movl	_lockcount, %edx
	testl	%edx, %edx
	jne	L485
	jmp	L483
L481:
	cmpl	$33984, _gl+4
	je	L482
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L482:
	movl	__ZL11bufferTexID.lto_priv.0, %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	jmp	L313
L723:
	movl	%edx, 16(%esp)
	movl	$LC41, 12(%esp)
	movl	$2313, 8(%esp)
	movl	$LC42, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_lockcount, %ecx
	testl	%ecx, %ecx
	jne	L485
	jmp	L483
L722:
	movl	_r_finishbeforeswap, %ebx
	testl	%ebx, %ebx
	jne	L480
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	je	L480
	call	*_glad_glFinish
	jmp	L480
L721:
	cmpl	$1, _r_finishbeforeswap
	jne	L454
L455:
	call	*_glad_glFinish
	cmpl	$2, __ZL17vsync_renderlayer.lto_priv.0
	jne	L456
	cmpb	$0, __ZGVZ14videoShowFrameE12nextSwapTime
	je	L724
L457:
	movl	__ZL9sys_timer.lto_priv.0, %eax
	cmpl	$1, %eax
	je	L458
	cmpl	$3, %eax
	je	L459
	call	_SDL_GetPerformanceFrequency
L460:
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	fildq	-184(%ebp)
	testl	%edx, %edx
	jns	L461
	fadds	LC28
L461:
	fstpl	-184(%ebp)
	fldl	-184(%ebp)
	fdivl	_refreshfreq
	flds	LC29
	fxch	%st(1)
	fcomi	%st(1), %st
	jnb	L462
	fstp	%st(1)
	fnstcw	-166(%ebp)
	movzwl	-166(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -168(%ebp)
	fldcw	-168(%ebp)
	fistpq	-192(%ebp)
	fldcw	-166(%ebp)
L463:
	call	__Z26timerGetPerformanceCounterv
	movl	__ZZ14videoShowFrameE12nextSwapTime, %ecx
	movl	__ZZ14videoShowFrameE12nextSwapTime+4, %ebx
	movl	%edx, %edi
	cmpl	%ecx, %eax
	movl	%ecx, -184(%ebp)
	sbbl	%ebx, %edi
	movl	%ebx, -180(%ebp)
	jc	L725
	movl	-192(%ebp), %esi
	subl	-184(%ebp), %eax
	movl	-188(%ebp), %edi
	sbbl	-180(%ebp), %edx
	cmpl	%esi, %eax
	movl	%edx, %eax
	sbbl	%edi, %eax
	jc	L467
	addl	%esi, -184(%ebp)
	adcl	%edi, -180(%ebp)
L467:
	movl	-184(%ebp), %ecx
	movl	-180(%ebp), %ebx
	addl	-192(%ebp), %ecx
	adcl	-188(%ebp), %ebx
	movl	%ecx, __ZZ14videoShowFrameE12nextSwapTime
	movl	%ebx, __ZZ14videoShowFrameE12nextSwapTime+4
	jmp	L456
L462:
	fnstcw	-166(%ebp)
	fsubp	%st, %st(1)
	movzwl	-166(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -168(%ebp)
	fldcw	-168(%ebp)
	fistpq	-184(%ebp)
	fldcw	-166(%ebp)
	movl	-180(%ebp), %edx
	movl	-184(%ebp), %eax
	addl	$-2147483648, %edx
	movl	%eax, -192(%ebp)
	movl	%edx, -188(%ebp)
	jmp	L463
L720:
	movl	_GImGui, %eax
	movl	%eax, -192(%ebp)
	movl	16048(%eax), %esi
	movl	%eax, %edi
	cmpl	%esi, 16052(%eax)
	je	L329
	call	__ZN5ImGui8EndFrameEv
	movl	16048(%edi), %esi
L329:
	movl	-192(%ebp), %edi
	movl	16060(%edi), %eax
	movl	23476(%edi), %edx
	movl	%esi, 16060(%edi)
	movl	$0, 180(%edi)
	movl	%eax, -184(%ebp)
	testl	%edx, %edx
	jle	L330
	xorl	%ebx, %ebx
L332:
	movl	23484(%edi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$4, 4(%eax)
	jne	L331
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	*12(%eax)
L331:
	addl	$1, %ebx
	cmpl	23476(%edi), %ebx
	jl	L332
L330:
	movl	-192(%ebp), %eax
	movl	18608(%eax), %eax
	testl	%eax, %eax
	je	L333
	movl	%esi, -196(%ebp)
	xorl	%edi, %edi
	jmp	L340
L727:
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %ecx
	movl	%eax, %esi
	testl	%ecx, %ecx
	je	L336
	movl	(%ebx), %eax
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L519
	subl	$1, 188(%edi)
L519:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L336:
	movl	%esi, 8(%ebx)
	movl	$0, 4(%ebx)
L334:
	movl	$0, (%ebx)
	addl	$12, %ebx
	cmpl	-172(%ebp), %ebx
	jne	L338
	movl	-200(%ebp), %esi
	movl	-204(%ebp), %edi
	movl	120(%esi), %eax
	testl	%eax, %eax
	je	L339
	xorl	%edx, %edx
	movl	$LC22, %ecx
	movl	%esi, %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	%eax, %edx
	movl	-176(%ebp), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
L339:
	movl	-192(%ebp), %eax
	addl	$1, %edi
	cmpl	18608(%eax), %edi
	je	L726
L340:
	movl	-192(%ebp), %eax
	movl	%edi, -204(%ebp)
	movl	18616(%eax), %eax
	movl	(%eax,%edi,4), %esi
	leal	176(%esi), %eax
	movl	%esi, -200(%ebp)
	movl	%eax, -176(%ebp)
	movl	%eax, %ebx
	leal	200(%esi), %eax
	movl	%eax, -172(%ebp)
L338:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jns	L334
	movl	_GImGui, %edi
	testl	%edi, %edi
	jne	L727
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	8(%ebx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L336
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	8(%ebx), %eax
	jmp	L519
L719:
	movzbl	_palfadergb+2, %eax
	movzbl	_palfadergb+1, %esi
	movzbl	_palfadergb, %edi
	movb	%al, -172(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L317
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L317:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L318
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L318:
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L319
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L531
	je	L319
L531:
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L319:
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$8, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L321
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L321:
	movl	%ebx, 12(%esp)
	movzbl	-172(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	movzbl	%al, %esi
	movl	%edi, %eax
	movzbl	%al, %eax
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	*_glad_glColor4ub
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$16, %esp
	cmpl	%eax, _gl
	jne	L322
	movss	LC19, %xmm4
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm4
	jp	L532
	je	L322
L532:
	movl	$0x3f800000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x3f800000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L322:
	movl	$4, (%esp)
	call	*_glad_glBegin
	subl	$4, %esp
	movl	$0x3f800000, 4(%esp)
	movl	$0xc0200000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	movl	$0x3f800000, 4(%esp)
	movl	$0x40200000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	movl	$0xc0200000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glVertex2f
	subl	$8, %esp
	call	*_glad_glEnd
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	cmpl	%eax, _gl
	jne	L324
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L533
	je	L324
L533:
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	$0x00000000, 4(%esp)
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	subl	$8, %esp
L324:
	call	*_glad_glPopMatrix
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	jmp	L316
L315:
	movl	__ZL6buffer.lto_priv.0, %ecx
	testl	%ecx, %ecx
	je	L316
	movl	__ZL18colorCorrectionLoc, %eax
	cmpl	$-1, %eax
	je	L326
	movss	_g_glColorCorrection+12, %xmm0
	movss	%xmm0, 16(%esp)
	movss	_g_glColorCorrection+8, %xmm0
	movss	%xmm0, 12(%esp)
	movss	_g_glColorCorrection+4, %xmm0
	movss	%xmm0, 8(%esp)
	movss	_g_glColorCorrection, %xmm0
	movl	%eax, (%esp)
	movss	%xmm0, 4(%esp)
	call	*_glad_glUniform4f
	subl	$20, %esp
L326:
	cmpl	$33984, _gl+4
	je	L327
	movl	$33984, _gl+4
	movl	$33984, (%esp)
	call	*_glad_glActiveTexture
	subl	$4, %esp
L327:
	movl	__ZL6buffer.lto_priv.0, %eax
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	%eax, 32(%esp)
	movl	__ZL9bufferRes.lto_priv.0+4, %eax
	movl	%eax, 20(%esp)
	movl	__ZL9bufferRes.lto_priv.0, %eax
	movl	$0, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	subl	$36, %esp
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$5, (%esp)
	call	*_glad_glDrawArrays
	subl	$12, %esp
	jmp	L316
L726:
	movl	-196(%ebp), %esi
L333:
	movl	-192(%ebp), %eax
	movl	19020(%eax), %ebx
	testl	%ebx, %ebx
	je	L341
	xorl	%edi, %edi
	testb	$32, 13(%ebx)
	jne	L342
	movl	840(%ebx), %edi
L342:
	movl	-192(%ebp), %eax
	movl	%edi, -164(%ebp)
	movl	19028(%eax), %ebx
L343:
	movl	-192(%ebp), %eax
	movl	%ebx, -160(%ebp)
	movl	16076(%eax), %eax
	testl	%eax, %eax
	je	L344
	movl	%esi, -176(%ebp)
	movl	%ebx, %esi
	xorl	%ebx, %ebx
L346:
	movl	-192(%ebp), %eax
	movl	16084(%eax), %eax
	movl	(%eax,%ebx,4), %eax
	cmpb	$0, 223(%eax)
	je	L345
	cmpb	$0, 230(%eax)
	jne	L345
	cmpl	%edi, %eax
	movl	12(%eax), %edx
	setne	-172(%ebp)
	cmpl	%eax, %esi
	setne	%cl
	testb	%cl, -172(%ebp)
	je	L345
	testl	$16777216, %edx
	je	L728
L345:
	movl	-192(%ebp), %eax
	addl	$1, %ebx
	cmpl	16076(%eax), %ebx
	jne	L346
	movl	-176(%ebp), %esi
L344:
	leal	-164(%ebp), %ebx
L348:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L347
	cmpb	$0, 223(%eax)
	je	L347
	cmpb	$0, 230(%eax)
	jne	L347
	movl	12(%eax), %edx
	sarl	$25, %edx
	andl	$1, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
L347:
	addl	$4, %ebx
	leal	-156(%ebp), %eax
	cmpl	%eax, %ebx
	jne	L348
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	cmpl	%esi, -184(%ebp)
	je	L349
	movl	_GImGui, %edi
	movl	18580(%edi), %eax
	movl	%edi, -184(%ebp)
	movl	%eax, %edx
	subl	$1, %edx
	js	L350
	movl	18588(%edi), %ecx
	leal	(%eax,%eax,4), %eax
	leal	-36(%ecx,%eax,8), %eax
L353:
	movl	(%eax), %edi
	testl	%edi, %edi
	je	L351
	testb	$8, 15(%edi)
	je	L351
	cmpb	$0, 223(%edi)
	je	L351
	cmpb	$0, 230(%edi)
	jne	L351
L352:
	movl	-184(%ebp), %eax
	xorps	%xmm1, %xmm1
	movss	19060(%eax), %xmm0
	comiss	%xmm0, %xmm1
	jnb	L729
L359:
	movl	-184(%ebp), %eax
	movl	19024(%eax), %ebx
	testl	%ebx, %ebx
	je	L730
	movzbl	223(%ebx), %eax
	testl	%edi, %edi
	jne	L362
	leal	-104(%ebp), %esi
	movl	%esi, -172(%ebp)
	cmpb	$1, %al
	jne	L356
	testl	%edi, %edi
	jne	L362
	testb	%al, %al
	je	L377
L518:
	movl	-184(%ebp), %eax
	leal	-104(%ebp), %edi
	movl	$4, %ecx
	leal	15472(%eax), %esi
	rep movsl
	mulss	14404(%eax), %xmm0
	mulss	15484(%eax), %xmm0
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L378
	movl	%eax, %edx
	movl	%ebx, %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
L378:
	movl	-184(%ebp), %ebx
	movl	19024(%ebx), %edx
	movl	19028(%ebx), %eax
	movl	48(%edx), %edi
	movl	%eax, -176(%ebp)
	movl	%edi, -196(%ebp)
	testl	%eax, %eax
	je	L379
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L382
	cmpl	%edi, %eax
	je	L382
	movl	_GImGui, %eax
	movl	-172(%ebp), %edi
	movl	$4, %ecx
	movl	%edx, -200(%ebp)
	movss	19060(%ebx), %xmm0
	leal	15472(%eax), %esi
	rep movsl
	leal	-104(%ebp), %edi
	movl	%edi, -172(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15484(%eax), %xmm0
	movl	%edi, %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-200(%ebp), %edx
	cmpl	$16777215, %eax
	jbe	L382
	movl	%eax, %edx
	movl	-176(%ebp), %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
	movl	19024(%ebx), %edx
	movl	48(%edx), %eax
	movl	%eax, -196(%ebp)
	movl	19028(%ebx), %eax
	movl	%eax, -176(%ebp)
	testl	%eax, %eax
	je	L379
L382:
	movl	-176(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, -176(%ebp)
L379:
	movss	68(%edx), %xmm2
	movss	76(%edx), %xmm3
	movl	-184(%ebp), %eax
	movss	72(%edx), %xmm0
	addss	%xmm2, %xmm3
	movss	80(%edx), %xmm4
	movss	15516(%eax), %xmm5
	movl	-196(%ebp), %eax
	addss	%xmm0, %xmm4
	addss	%xmm5, %xmm3
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm0
	addss	%xmm5, %xmm4
	movaps	%xmm3, %xmm1
	movss	%xmm2, -124(%ebp)
	subss	%xmm2, %xmm1
	movss	%xmm0, -120(%ebp)
	comiss	16(%eax), %xmm1
	jb	L384
	movaps	%xmm4, %xmm1
	subss	%xmm0, %xmm1
	comiss	20(%eax), %xmm1
	jb	L384
	movss	LC43, %xmm1
	subss	%xmm5, %xmm1
	subss	%xmm1, %xmm2
	subss	%xmm1, %xmm0
	addss	%xmm1, %xmm3
	addss	%xmm1, %xmm4
	movss	%xmm2, -124(%ebp)
	movss	%xmm0, -120(%ebp)
L384:
	movl	676(%edx), %ecx
	cmpl	$0, (%ecx)
	je	L731
L387:
	movl	-196(%ebp), %eax
	xorl	%ebx, %ebx
	movl	%edx, -200(%ebp)
	movss	%xmm4, -216(%ebp)
	movss	12(%eax), %xmm1
	movss	8(%eax), %xmm0
	movss	%xmm3, -212(%ebp)
	movss	16(%eax), %xmm2
	movl	%ebx, 4(%esp)
	movss	20(%eax), %xmm5
	addss	%xmm0, %xmm2
	addss	%xmm1, %xmm5
	movss	%xmm5, (%esp)
	call	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0
	movl	$4, %ecx
	pushl	%esi
	pushl	%esi
	movl	-200(%ebp), %edx
	movl	-184(%ebp), %edi
	movl	676(%edx), %eax
	movss	124(%edx), %xmm2
	movl	%edx, -204(%ebp)
	movss	19036(%edi), %xmm0
	movl	-172(%ebp), %edi
	movl	%eax, -200(%ebp)
	movl	_GImGui, %eax
	movss	%xmm2, -208(%ebp)
	leal	15456(%eax), %esi
	rep movsl
	mulss	14404(%eax), %xmm0
	mulss	15468(%eax), %xmm0
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movl	-204(%ebp), %edx
	cmpl	$16777215, %eax
	jbe	L388
	movss	-212(%ebp), %xmm3
	movss	-216(%ebp), %xmm4
	leal	-124(%ebp), %ebx
	movss	%xmm3, -116(%ebp)
	movaps	%xmm4, %xmm1
	movaps	%xmm3, %xmm0
	movss	%xmm4, -112(%ebp)
	movl	$0x40400000, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, (%esp)
	movss	-208(%ebp), %xmm2
	movl	-200(%ebp), %ecx
	call	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0
	movl	-204(%ebp), %edx
	subl	$12, %esp
L388:
	movl	676(%edx), %ecx
	call	__ZN10ImDrawList11PopClipRectEv
	movl	-184(%ebp), %eax
	cmpl	$0, 18608(%eax)
	jle	L356
L389:
	movl	-184(%ebp), %esi
	xorl	%edi, %edi
L391:
	movl	18616(%esi), %eax
	movl	(%eax,%edi,4), %ebx
	cmpl	%ebx, -196(%ebp)
	je	L390
	cmpl	-176(%ebp), %ebx
	je	L390
	movl	$LC25, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	addl	$8, %ebx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movss	19060(%esi), %xmm0
	movl	%eax, -184(%ebp)
	movl	_GImGui, %eax
	movl	15472(%eax), %edx
	movl	%edx, -104(%ebp)
	movl	15476(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15480(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15484(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15484(%eax), %xmm0
	movl	-172(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	12(%ebx), %xmm0
	movss	8(%ebx), %xmm1
	addss	4(%ebx), %xmm0
	addss	(%ebx), %xmm1
	movss	%xmm0, -100(%ebp)
	xorps	%xmm0, %xmm0
	movss	%xmm1, -104(%ebp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %edx
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	movl	-184(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L390:
	addl	$1, %edi
	cmpl	%edi, 18608(%esi)
	jg	L391
	jmp	L356
	.p2align 4,,10
	.p2align 3
L351:
	subl	$1, %edx
	subl	$40, %eax
	cmpl	$-1, %edx
	jne	L353
	xorl	%edi, %edi
	jmp	L352
L527:
	xorl	%eax, %eax
	testb	$1, %dl
	je	L396
	movl	$1, %eax
	cmpl	%edx, %eax
	je	L349
L396:
	addl	$2, %eax
	cmpl	%edx, %eax
	jne	L396
L349:
	movl	-192(%ebp), %eax
	movl	$0, 172(%eax)
	movl	$0, 176(%eax)
	movl	18608(%eax), %eax
	testl	%eax, %eax
	jle	L421
	movl	$0, -184(%ebp)
L449:
	movl	-192(%ebp), %eax
	movl	-184(%ebp), %edi
	movl	18616(%eax), %eax
	movl	(%eax,%edi,4), %ebx
	movl	176(%ebx), %eax
	movl	188(%ebx), %edx
	movl	180(%ebx), %ecx
	leal	(%eax,%edx), %edi
	movl	%eax, -196(%ebp)
	cmpl	%edi, %ecx
	jge	L423
	testl	%ecx, %ecx
	jne	L424
	movl	$8, %eax
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	movl	%eax, -176(%ebp)
L425:
	movl	-176(%ebp), %eax
	movl	_GImGui, %ecx
	sall	$2, %eax
	testl	%ecx, %ecx
	je	L427
	addl	$1, 188(%ecx)
	movl	%ecx, -200(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	184(%ebx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L706
	movl	176(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	184(%ebx), %eax
	testl	%eax, %eax
	je	L516
	movl	-200(%ebp), %ecx
	subl	$1, 188(%ecx)
L516:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L706:
	movl	188(%ebx), %edx
L429:
	movl	-176(%ebp), %eax
	movl	%esi, 184(%ebx)
	movl	%eax, 180(%ebx)
L423:
	movl	%edi, 176(%ebx)
	testl	%edx, %edx
	je	L431
	movl	184(%ebx), %eax
	movl	-196(%ebp), %edi
	sall	$2, %edx
	movl	196(%ebx), %ecx
	movl	%edx, 8(%esp)
	leal	(%eax,%edi,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	192(%ebx), %eax
	testl	%eax, %eax
	jns	L433
	movl	_GImGui, %edi
	testl	%edi, %edi
	je	L732
	addl	$1, 188(%edi)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	196(%ebx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L436
	movl	188(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	196(%ebx), %eax
	testl	%eax, %eax
	je	L437
	subl	$1, 188(%edi)
L437:
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL11FreeWrapperPvS_.lto_priv.0
L436:
	movl	%esi, 196(%ebx)
	movl	$0, 192(%ebx)
L433:
	movl	$0, 188(%ebx)
L431:
	movl	124(%ebx), %edi
	testl	%edi, %edi
	je	L441
	movl	$1, %edx
	movl	$LC25, %ecx
	movl	%ebx, %eax
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	%eax, %edx
	leal	176(%ebx), %eax
	call	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0
L441:
	movl	4(%ebx), %edi
	movl	_GImGui, %eax
	leal	128(%ebx), %edx
	movb	$1, 128(%ebx)
	movl	176(%ebx), %ecx
	movl	%edx, 48(%ebx)
	andl	$1024, %edi
	movl	%eax, -176(%ebp)
	movl	%edi, -196(%ebp)
	testl	%ecx, %ecx
	jle	L442
	movl	8(%ebx), %esi
	movl	12(%ebx), %edi
	movl	%ecx, 132(%ebx)
	movl	$0, 136(%ebx)
	movl	184(%ebx), %eax
	movl	%esi, 148(%ebx)
	movl	-196(%ebp), %esi
	movl	%eax, 144(%ebx)
	movl	$0, 140(%ebx)
	movl	%edi, 152(%ebx)
	testl	%esi, %esi
	je	L514
	movl	$0x00000000, 156(%ebx)
	movl	-176(%ebp), %edi
	movl	$0x00000000, 160(%ebx)
	movl	88(%edi), %esi
	movl	92(%edi), %edi
	movl	%ebx, 172(%ebx)
	movl	%esi, 164(%ebx)
	movl	%edi, 168(%ebx)
L522:
	xorl	%ecx, %ecx
L447:
	movl	(%eax,%ecx,4), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	jle	L445
	movl	8(%esi), %edx
	leal	(%eax,%eax,4), %edi
	leal	-12(%edx,%edi,8), %edx
	jmp	L446
	.p2align 4,,10
	.p2align 3
L733:
	movl	4(%edx), %edi
	testl	%edi, %edi
	jne	L445
	subl	$1, %eax
	subl	$40, %edx
	movl	%eax, (%esi)
	testl	%eax, %eax
	je	L445
L446:
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L733
L445:
	movl	24(%esi), %eax
	addl	$1, %ecx
	addl	%eax, 140(%ebx)
	movl	12(%esi), %eax
	addl	%eax, 136(%ebx)
	cmpl	176(%ebx), %ecx
	jge	L689
	movl	184(%ebx), %eax
	jmp	L447
L689:
	movl	48(%ebx), %edx
	movl	12(%edx), %eax
L448:
	movl	-192(%ebp), %edi
	addl	$1, -184(%ebp)
	addl	%eax, 172(%edi)
	movl	8(%edx), %eax
	addl	%eax, 176(%edi)
	movl	-184(%ebp), %eax
	cmpl	18608(%edi), %eax
	jl	L449
L421:
	movl	-192(%ebp), %eax
	movl	23476(%eax), %edx
	testl	%edx, %edx
	jle	L450
	movl	-224(%ebp), %ebx
	movl	%eax, %esi
L452:
	movl	23484(%esi), %edx
	leal	(%ebx,%ebx,4), %eax
	leal	(%edx,%eax,4), %eax
	cmpl	$5, 4(%eax)
	jne	L451
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	*12(%eax)
L451:
	addl	$1, %ebx
	cmpl	23476(%esi), %ebx
	jl	L452
L450:
	movl	_GImGui, %eax
	movl	18616(%eax), %eax
	movl	(%eax), %edx
	cmpb	$0, 128(%edx)
	leal	128(%edx), %eax
	movl	$0, %edx
	cmove	%edx, %eax
	call	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData
	movb	$0, _g_ImGuiFrameActive
	jmp	L328
L514:
	movl	-176(%ebp), %eax
	movss	20(%ebx), %xmm0
	movss	16(%ebx), %xmm1
	movss	%xmm0, 160(%ebx)
	movss	%xmm1, 156(%ebx)
	movl	88(%eax), %esi
	movl	92(%eax), %edi
	movl	%ebx, 172(%ebx)
	movl	%esi, 164(%ebx)
	movl	%edi, 168(%ebx)
	testl	%ecx, %ecx
	jle	L444
	movl	184(%ebx), %eax
	jmp	L522
L442:
	movl	8(%ebx), %esi
	movl	12(%ebx), %edi
	movl	$0, 144(%ebx)
	movl	-196(%ebp), %eax
	movl	%ecx, 132(%ebx)
	movl	$0, 136(%ebx)
	movl	$0, 140(%ebx)
	movl	%esi, 148(%ebx)
	movl	%edi, 152(%ebx)
	testl	%eax, %eax
	je	L514
	movl	$0x00000000, 156(%ebx)
	movl	-176(%ebp), %eax
	movl	$0x00000000, 160(%ebx)
	movl	88(%eax), %esi
	movl	92(%eax), %edi
	movl	%ebx, 172(%ebx)
	xorl	%eax, %eax
	movl	%esi, 164(%ebx)
	movl	%edi, 168(%ebx)
	jmp	L448
L424:
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	%ecx, %eax
	cmpl	%edi, %eax
	cmovl	%edi, %eax
	movl	%eax, -176(%ebp)
	cmpl	%eax, %ecx
	jge	L423
	jmp	L425
L427:
	movl	%edx, -200(%ebp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	-200(%ebp), %edx
	movl	%eax, %esi
	movl	184(%ebx), %eax
	testl	%eax, %eax
	je	L429
	movl	-196(%ebp), %ecx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	leal	0(,%ecx,4), %edx
	movl	%edx, 8(%esp)
	call	_memcpy
	movl	184(%ebx), %eax
	jmp	L516
L732:
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	__ZL13MallocWrapperjPv.lto_priv.0
	movl	196(%ebx), %edx
	movl	%eax, %esi
	testl	%edx, %edx
	je	L436
	movl	188(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memcpy
	movl	196(%ebx), %eax
	jmp	L437
L489:
	cmpb	$32, %al
	jne	L709
L488:
	movl	__ZL8yScale16.lto_priv.0, %eax
	movl	__ZL13destBufferRes.lto_priv.0, %ebx
	movl	__ZL9bufferRes.lto_priv.1+4, %edx
	movl	%eax, -192(%ebp)
/APP
 # 152 "source/build/src/softsurface.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	$0, -184(%ebp)
	imull	%ebx, %eax
	leal	(%edi,%eax,4), %eax
	movl	%eax, -176(%ebp)
	cmpl	%eax, %edi
	jnb	L709
	movl	%edi, %ecx
L492:
	leal	0(,%ebx,4), %eax
	movl	__ZL18scanPosLookupTable.lto_priv.0, %edi
	leal	(%ecx,%eax), %ebx
	movl	%eax, -196(%ebp)
	leal	-256(%ebx), %eax
	movl	%eax, -172(%ebp)
	cmpl	%eax, %ecx
	jnb	L493
	movl	%ebx, -200(%ebp)
	movl	%ecx, %eax
	movl	%edi, %edx
	movl	%ecx, -204(%ebp)
	movl	-172(%ebp), %ecx
L494:
	movzwl	(%edx), %ebx
	addl	$256, %eax
	subl	$-128, %edx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -256(%eax)
	movzwl	-126(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -252(%eax)
	movzwl	-124(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -248(%eax)
	movzwl	-122(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -244(%eax)
	movzwl	-120(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -240(%eax)
	movzwl	-118(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -236(%eax)
	movzwl	-116(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -232(%eax)
	movzwl	-114(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -228(%eax)
	movzwl	-112(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -224(%eax)
	movzwl	-110(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -220(%eax)
	movzwl	-108(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -216(%eax)
	movzwl	-106(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -212(%eax)
	movzwl	-104(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -208(%eax)
	movzwl	-102(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -204(%eax)
	movzwl	-100(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -200(%eax)
	movzwl	-98(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -196(%eax)
	movzwl	-96(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -192(%eax)
	movzwl	-94(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -188(%eax)
	movzwl	-92(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -184(%eax)
	movzwl	-90(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -180(%eax)
	movzwl	-88(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -176(%eax)
	movzwl	-86(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -172(%eax)
	movzwl	-84(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -168(%eax)
	movzwl	-82(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -164(%eax)
	movzwl	-80(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -160(%eax)
	movzwl	-78(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -156(%eax)
	movzwl	-76(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -152(%eax)
	movzwl	-74(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -148(%eax)
	movzwl	-72(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -144(%eax)
	movzwl	-70(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -140(%eax)
	movzwl	-68(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -136(%eax)
	movzwl	-66(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -132(%eax)
	movzwl	-64(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -128(%eax)
	movzwl	-62(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -124(%eax)
	movzwl	-60(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -120(%eax)
	movzwl	-58(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -116(%eax)
	movzwl	-56(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -112(%eax)
	movzwl	-54(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -108(%eax)
	movzwl	-52(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -104(%eax)
	movzwl	-50(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -100(%eax)
	movzwl	-48(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -96(%eax)
	movzwl	-46(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -92(%eax)
	movzwl	-44(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -88(%eax)
	movzwl	-42(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -84(%eax)
	movzwl	-40(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -80(%eax)
	movzwl	-38(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -76(%eax)
	movzwl	-36(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -72(%eax)
	movzwl	-34(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -68(%eax)
	movzwl	-32(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -64(%eax)
	movzwl	-30(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -60(%eax)
	movzwl	-28(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -56(%eax)
	movzwl	-26(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -52(%eax)
	movzwl	-24(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -48(%eax)
	movzwl	-22(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -44(%eax)
	movzwl	-20(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -40(%eax)
	movzwl	-18(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -36(%eax)
	movzwl	-16(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -32(%eax)
	movzwl	-14(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -28(%eax)
	movzwl	-12(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -24(%eax)
	movzwl	-10(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -20(%eax)
	movzwl	-8(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -16(%eax)
	movzwl	-6(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -12(%eax)
	movzwl	-4(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -8(%eax)
	movzwl	-2(%edx), %ebx
	movzbl	(%esi,%ebx), %ebx
	movl	__ZL4pPal.lto_priv.0(,%ebx,4), %ebx
	movl	%ebx, -4(%eax)
	cmpl	%ecx, %eax
	jb	L494
	movl	-196(%ebp), %eax
	movl	-204(%ebp), %ecx
	movl	-200(%ebp), %ebx
	subl	$257, %eax
	movl	%eax, %edx
	xorb	%al, %al
	shrl	$8, %edx
	leal	256(%ecx,%eax), %ecx
	sall	$7, %edx
	leal	128(%edi,%edx), %edi
L493:
	cmpl	%ebx, %ecx
	jnb	L495
	movl	%ecx, %eax
L496:
	movzwl	(%edi), %edx
	addl	$4, %eax
	addl	$2, %edi
	movzbl	(%esi,%edx), %edx
	movl	__ZL4pPal.lto_priv.0(,%edx,4), %edx
	movl	%edx, -4(%eax)
	cmpl	%ebx, %eax
	jb	L496
	leal	-1(%ebx), %eax
	subl	%ecx, %eax
	andl	$-4, %eax
	leal	4(%ecx,%eax), %ecx
L495:
	movl	-184(%ebp), %edx
	addl	-192(%ebp), %edx
	movl	__ZL9bufferRes.lto_priv.1, %eax
	movl	%edx, %ebx
	shrl	$16, %ebx
	movl	%eax, -172(%ebp)
	subl	$1, %ebx
	je	L497
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	movl	%edx, -196(%ebp)
	movl	%ecx, %edi
	movl	%esi, -184(%ebp)
	movl	%ecx, %esi
	sall	$2, %eax
	subl	%eax, %edi
L498:
	movl	%esi, (%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 4(%esp)
	call	_memcpy
	movl	__ZL13destBufferRes.lto_priv.0, %eax
	sall	$2, %eax
	addl	%eax, %esi
	subl	$1, %ebx
	jne	L498
	movl	%esi, %ecx
	movl	-196(%ebp), %edx
	movl	-184(%ebp), %esi
L497:
	cmpl	-176(%ebp), %ecx
	jnb	L734
	movzwl	%dx, %eax
	movl	__ZL13destBufferRes.lto_priv.0, %ebx
	addl	-172(%ebp), %esi
	movl	%eax, -184(%ebp)
	jmp	L492
L709:
	movl	%ecx, %eax
	jmp	L487
L715:
	movl	%ecx, (%esp)
	call	_SDL_LockSurface
	movl	__ZL11sdl_surface.lto_priv.0, %ecx
	movl	__ZL6buffer.lto_priv.1, %esi
	movl	20(%ecx), %edi
	movl	%ecx, %eax
	testl	%edi, %edi
	je	L487
	testl	%esi, %esi
	jne	L708
	jmp	L487
L734:
	movl	__ZL11sdl_surface.lto_priv.0, %eax
	jmp	L487
L730:
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	testl	%edi, %edi
	je	L356
L362:
	movl	-184(%ebp), %esi
	movl	16084(%esi), %eax
	movl	16076(%esi), %edx
	leal	(%eax,%edx,4), %ecx
	cmpl	%ecx, %eax
	jnb	L524
	movl	%eax, %edx
	jmp	L367
L735:
	addl	$4, %edx
	cmpl	%ecx, %edx
	jnb	L366
L367:
	cmpl	(%edx), %edi
	jne	L735
L366:
	subl	%eax, %edx
	js	L736
L365:
	sarl	$2, %edx
	movl	%edi, %esi
	movl	%edx, -172(%ebp)
L374:
	movl	-172(%ebp), %ecx
	movl	(%eax,%ecx,4), %edx
	movl	12(%edx), %ecx
	testl	$16777216, %ecx
	jne	L373
	cmpl	832(%edx), %edi
	je	L370
	movl	%edx, %ebx
	jmp	L371
L737:
	movl	828(%ebx), %ebx
	testl	%ebx, %ebx
	je	L368
L371:
	cmpl	%ebx, %edi
	jne	L737
L370:
	cmpb	$0, 223(%edx)
	je	L373
	cmpb	$0, 230(%edx)
	jne	L373
	movl	12(%edi), %ebx
	sarl	$25, %ecx
	andl	$1, %ecx
	sarl	$25, %ebx
	andl	$1, %ebx
	cmpl	%ebx, %ecx
	cmovle	%edx, %esi
L373:
	subl	$1, -172(%ebp)
	cmpl	$-1, -172(%ebp)
	jne	L374
L368:
	movl	-184(%ebp), %ecx
	movl	15488(%ecx), %eax
	movl	%eax, -104(%ebp)
	movl	15492(%ecx), %eax
	movl	%eax, -100(%ebp)
	movl	15496(%ecx), %eax
	movl	%eax, -96(%ebp)
	movl	15500(%ecx), %eax
	movl	%eax, -92(%ebp)
	mulss	14404(%ecx), %xmm0
	leal	-104(%ebp), %eax
	mulss	15500(%ecx), %xmm0
	movl	%eax, -172(%ebp)
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	cmpl	$16777215, %eax
	jbe	L375
	movl	%eax, %edx
	movl	%esi, %eax
	call	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0
L375:
	movl	-184(%ebp), %eax
	movl	18608(%eax), %eax
	testl	%eax, %eax
	jle	L356
	movl	48(%edi), %eax
	movl	%edi, -196(%ebp)
	xorl	%esi, %esi
	movl	-184(%ebp), %edi
	movl	%eax, -176(%ebp)
L395:
	movl	18616(%edi), %eax
	movl	(%eax,%esi,4), %ebx
	cmpl	%ebx, -176(%ebp)
	je	L392
	testl	%ebx, %ebx
	je	L392
	movl	108(%ebx), %eax
	testl	%eax, %eax
	je	L393
	movl	-196(%ebp), %edx
	call	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_
	testb	%al, %al
	jne	L392
L393:
	movl	$LC25, %ecx
	movl	$1, %edx
	movl	%ebx, %eax
	addl	$8, %ebx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movss	19060(%edi), %xmm0
	movl	%eax, -184(%ebp)
	movl	_GImGui, %eax
	movl	15488(%eax), %edx
	movl	%edx, -104(%ebp)
	movl	15492(%eax), %edx
	movl	%edx, -100(%ebp)
	movl	15496(%eax), %edx
	movl	%edx, -96(%ebp)
	movl	15500(%eax), %edx
	movl	%edx, -92(%ebp)
	mulss	14404(%eax), %xmm0
	mulss	15500(%eax), %xmm0
	movl	-172(%ebp), %eax
	movss	%xmm0, -92(%ebp)
	call	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4
	movss	4(%ebx), %xmm0
	movss	(%ebx), %xmm1
	addss	12(%ebx), %xmm0
	addss	8(%ebx), %xmm1
	movss	%xmm0, -100(%ebp)
	xorps	%xmm0, %xmm0
	movss	%xmm1, -104(%ebp)
	movl	$0, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-172(%ebp), %eax
	movl	%ebx, (%esp)
	movl	%eax, 4(%esp)
	movl	-184(%ebp), %ecx
	call	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi
	subl	$16, %esp
L392:
	addl	$1, %esi
	cmpl	18608(%edi), %esi
	jl	L395
	jmp	L356
L729:
	comiss	19036(%eax), %xmm1
	leal	-104(%ebp), %esi
	movl	%esi, -172(%ebp)
	jb	L359
L356:
	movl	-192(%ebp), %edi
	cmpb	$0, 104(%edi)
	je	L349
	movl	19064(%edi), %eax
	cmpl	$-1, %eax
	je	L349
	movl	_GImGui, %ecx
	movl	18608(%ecx), %edx
	testl	%edx, %edx
	jle	L349
	cmpl	$8, %eax
	ja	L527
	movl	15532(%ecx), %edx
	movss	14608(%edi), %xmm7
	leal	(%eax,%eax,2), %eax
	movl	%ecx, -228(%ebp)
	movss	3528(%edi), %xmm2
	movss	3532(%edi), %xmm4
	movl	%eax, -260(%ebp)
	movl	48(%edx), %edi
	xorl	%edx, %edx
	movss	%xmm7, -232(%ebp)
	movl	%edx, -196(%ebp)
	movl	%edi, -236(%ebp)
	movss	%xmm2, -244(%ebp)
	movss	%xmm4, -240(%ebp)
	jmp	L420
L742:
	xorl	%eax, %eax
L407:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L397:
	movl	-228(%ebp), %edi
	addl	$1, -196(%ebp)
	movl	-196(%ebp), %eax
	cmpl	%eax, 18608(%edi)
	jle	L349
L420:
	movl	-236(%ebp), %edi
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -88(%ebp)
	movl	$0, -84(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	testb	$2, (%edi)
	jne	L397
	xorps	%xmm3, %xmm3
	xorps	%xmm0, %xmm0
	movss	48(%edi), %xmm1
	movss	44(%edi), %xmm2
	imull	$28, 1128(%edi), %eax
	addl	80(%edi), %eax
	movzwl	6(%eax), %edx
	movl	-260(%ebp), %esi
	unpcklps	%xmm1, %xmm2
	movss	LC26, %xmm6
	movzwl	4(%eax), %eax
	movlhps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm3
	leal	__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA(,%esi,8), %edx
	cvtsi2ssl	%eax, %xmm0
	addss	4(%edx), %xmm3
	movss	8(%edx), %xmm7
	addss	__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA(,%esi,8), %xmm0
	movss	12(%edx), %xmm4
	movaps	%xmm7, %xmm5
	movl	-228(%ebp), %eax
	movl	-196(%ebp), %esi
	movss	%xmm4, -208(%ebp)
	addss	%xmm3, %xmm4
	addss	%xmm0, %xmm5
	addss	%xmm0, %xmm6
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm4, %xmm5
	movlhps	%xmm5, %xmm0
	mulps	%xmm2, %xmm0
	movaps	%xmm7, %xmm5
	addss	%xmm6, %xmm5
	unpcklps	%xmm4, %xmm5
	movups	%xmm0, -104(%ebp)
	movaps	%xmm6, %xmm0
	unpcklps	%xmm3, %xmm0
	movss	-240(%ebp), %xmm3
	subss	20(%edx), %xmm3
	movlhps	%xmm5, %xmm0
	mulps	%xmm2, %xmm0
	movss	-244(%ebp), %xmm5
	subss	16(%edx), %xmm5
	movups	%xmm0, -88(%ebp)
	movl	18616(%eax), %eax
	movl	(%eax,%esi,4), %eax
	movss	%xmm5, -156(%ebp)
	movss	%xmm3, -152(%ebp)
	movss	12(%eax), %xmm2
	movss	20(%eax), %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L397
	movss	-232(%ebp), %xmm6
	movss	-208(%ebp), %xmm1
	movss	%xmm3, -212(%ebp)
	movss	LC27, %xmm0
	mulss	40(%eax), %xmm6
	addss	%xmm0, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm3, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L397
	movss	8(%eax), %xmm1
	movss	16(%eax), %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm5, %xmm2
	jbe	L397
	addss	%xmm7, %xmm0
	movss	%xmm7, -216(%ebp)
	movss	%xmm6, -200(%ebp)
	movss	%xmm5, -204(%ebp)
	mulss	%xmm6, %xmm0
	addss	%xmm5, %xmm0
	comiss	%xmm1, %xmm0
	movss	%xmm0, -256(%ebp)
	jbe	L397
	movl	$LC25, %ecx
	movl	$1, %edx
	call	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0
	movl	4(%edi), %esi
	movl	%eax, %ecx
	movl	%eax, %ebx
	movl	%esi, (%esp)
	call	__ZN10ImDrawList13PushTextureIDEPv
	movss	-208(%ebp), %xmm4
	xorps	%xmm1, %xmm1
	movss	-200(%ebp), %xmm6
	movss	-216(%ebp), %xmm7
	movss	-212(%ebp), %xmm3
	subl	$4, %esp
	addss	%xmm1, %xmm4
	mulss	%xmm6, %xmm1
	addss	LC19, %xmm7
	movss	-204(%ebp), %xmm5
	movaps	%xmm4, %xmm0
	mulss	%xmm6, %xmm0
	movaps	%xmm0, %xmm4
	movaps	%xmm7, %xmm0
	movaps	%xmm1, %xmm7
	mulss	%xmm6, %xmm0
	addss	%xmm3, %xmm4
	addss	%xmm3, %xmm7
	addss	%xmm5, %xmm6
	movss	%xmm4, -252(%ebp)
	movss	%xmm4, -140(%ebp)
	addss	%xmm5, %xmm0
	movss	%xmm7, -248(%ebp)
	movss	%xmm6, -124(%ebp)
	movss	%xmm7, -120(%ebp)
	movss	%xmm0, -144(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L738
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	leal	-124(%ebp), %edi
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-80(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	%eax, -176(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, -220(%ebp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L417
	xorl	%eax, %eax
L419:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L418:
	movss	-256(%ebp), %xmm7
	movss	-252(%ebp), %xmm2
	movss	%xmm7, -144(%ebp)
	movss	-200(%ebp), %xmm7
	movss	%xmm2, -140(%ebp)
	movaps	%xmm7, %xmm0
	addss	%xmm7, %xmm0
	addss	-204(%ebp), %xmm0
	movss	-248(%ebp), %xmm7
	movss	%xmm7, -120(%ebp)
	movss	%xmm0, -124(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L739
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L414
	xorl	%eax, %eax
L416:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L415:
	movss	-200(%ebp), %xmm7
	movss	-208(%ebp), %xmm0
	movss	-212(%ebp), %xmm6
	mulss	%xmm7, %xmm0
	mulss	-216(%ebp), %xmm7
	addss	%xmm0, %xmm6
	movss	-204(%ebp), %xmm0
	addss	%xmm7, %xmm0
	movss	%xmm6, -208(%ebp)
	movss	%xmm6, -120(%ebp)
	movss	%xmm0, -200(%ebp)
	movss	%xmm0, -124(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L740
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-16777216, 16(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L411
	xorl	%eax, %eax
L413:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L412:
	movss	-200(%ebp), %xmm6
	movss	-208(%ebp), %xmm2
	movss	%xmm6, -124(%ebp)
	movss	%xmm2, -120(%ebp)
	cmpl	%esi, 112(%ebx)
	je	L741
	movl	%esi, (%esp)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList13PushTextureIDEPv
	movl	%ebx, %ecx
	subl	$4, %esp
	movl	$4, 4(%esp)
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-96(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-172(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	movl	72(%ebx), %eax
	subl	$20, %esp
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	jne	L408
	xorl	%eax, %eax
L410:
	movl	%eax, 112(%ebx)
	movl	%ebx, %ecx
	call	__ZN10ImDrawList19_OnChangedTextureIDEv
L409:
	movl	72(%ebx), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movl	%edx, 72(%ebx)
	je	L742
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L407
L524:
	xorl	%edx, %edx
	jmp	L365
L736:
	movl	%edi, %esi
	jmp	L368
	.p2align 4,,10
	.p2align 3
L725:
	cmpl	$5, __ZL3osv.lto_priv.0+4
	jbe	L467
	movl	__ZL15dwmapi_DwmFlush.lto_priv.0, %eax
	testl	%eax, %eax
	je	L467
	movl	__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0, %eax
	testl	%eax, %eax
	je	L467
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %edi
	testl	%edi, %edi
	je	L743
L468:
	movl	__ZZ20windowsWaitForVBlankvE10useDWMsync, %eax
	testl	%eax, %eax
	jne	L707
	cmpl	$0, _fullscreen
	je	L707
	cmpl	$0, __ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc
	je	L707
	cmpl	$0, __ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter
	je	L707
	cmpl	$0, __ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank
	je	L707
	xorl	%eax, %eax
	leal	-100(%ebp), %edi
	movl	$17, %ecx
	xorl	%ebx, %ebx
	rep stosl
	movl	$72, -104(%ebp)
	call	__Z11win_gethwndv
	movl	%ebx, 4(%esp)
	leal	-144(%ebp), %ebx
	movl	%eax, (%esp)
	call	*__imp__MonitorFromWindow@8
	pushl	%esi
	pushl	%esi
	movl	-172(%ebp), %edi
	leal	-64(%ebp), %esi
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetMonitorInfoA@8
	xorl	%eax, %eax
	movl	$5, %ecx
	pushl	%edi
	pushl	%edi
	movl	%ebx, %edi
	rep stosl
	xorl	%eax, %eax
	movl	%eax, 12(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__CreateDCA@16
	subl	$16, %esp
	movl	%eax, -144(%ebp)
	testl	%eax, %eax
	je	L744
	movl	%ebx, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc
	pushl	%edx
	movl	%eax, %esi
	movl	-144(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__DeleteDC@4
	pushl	%ecx
	testl	%esi, %esi
	js	L475
	movl	-140(%ebp), %eax
	xorl	%esi, %esi
	leal	-156(%ebp), %ebx
	movl	%esi, -152(%ebp)
	movl	%eax, -156(%ebp)
	movl	-128(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	%ebx, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank
	movl	%eax, %esi
	pushl	%edi
	testl	%eax, %eax
	js	L476
	movl	%ebx, (%esp)
	call	*__ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter
	movl	%eax, %esi
	pushl	%ebx
	testl	%eax, %eax
	js	L745
L472:
	movl	__ZZ14videoShowFrameE12nextSwapTime, %eax
	movl	__ZZ14videoShowFrameE12nextSwapTime+4, %edx
	movl	%eax, -184(%ebp)
	movl	%edx, -180(%ebp)
	jmp	L467
L459:
	movl	__ZL8tsc_freq.lto_priv.0, %eax
	movl	__ZL8tsc_freq.lto_priv.0+4, %edx
	jmp	L460
L745:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	$-2, %edx
	jge	L746
L479:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L474
	movl	$LC40, 12(%esp)
	movl	$520, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L474:
	movl	$1, __ZZ20windowsWaitForVBlankvE10useDWMsync
L469:
	movl	$0, -124(%ebp)
	movl	%ebx, (%esp)
	call	*__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	subl	$4, %esp
	testl	%eax, %eax
	js	L472
	cmpl	$0, -124(%ebp)
	je	L472
	call	*__ZL15dwmapi_DwmFlush.lto_priv.0
	testl	%eax, %eax
	je	L472
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L472
	movl	$LC34, 12(%esp)
	movl	$479, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L472
L746:
	movl	__imp__GetLastError@0, %edx
	leal	-120(%ebp), %edi
	movl	%edx, -176(%ebp)
	call	*%edx
	movl	$4, %ecx
	movl	%eax, -184(%ebp)
	xorl	%eax, %eax
	rep stosl
	xorl	%eax, %eax
	movl	%esi, -124(%ebp)
	movl	%eax, 12(%esp)
	leal	-164(%ebp), %eax
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-176(%ebp)
	movl	%eax, %edi
	movl	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	pushl	%eax
	movl	%edx, 24(%esp)
	movl	%ecx, 4(%esp)
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC37, 12(%esp)
	movl	$512, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L479
L476:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	cmpl	$-2, %edx
	jl	L479
	movl	__imp__GetLastError@0, %eax
	leal	-120(%ebp), %edi
	movl	%eax, -184(%ebp)
	call	*%eax
	movl	$4, %ecx
	xorl	%edx, %edx
	movl	%eax, -176(%ebp)
	xorl	%eax, %eax
	rep stosl
	xorl	%eax, %eax
	movl	%esi, -124(%ebp)
	movl	%eax, 12(%esp)
	leal	-164(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, 4(%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-184(%ebp)
	movl	%eax, %edi
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	xorl	%eax, %eax
	pushl	%ecx
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC38, 12(%esp)
	movl	$515, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L479
L475:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L474
	movl	__imp__GetLastError@0, %eax
	leal	-120(%ebp), %edi
	movl	%eax, -184(%ebp)
	call	*%eax
	movl	$4, %ecx
	movl	%eax, -176(%ebp)
	xorl	%eax, %eax
	rep stosl
	leal	-156(%ebp), %eax
	movl	%esi, -124(%ebp)
	xorl	%edi, %edi
	movl	%eax, 8(%esp)
	xorl	%eax, %eax
	movl	%edi, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__GetOverlappedResult@16
	subl	$16, %esp
	call	*-184(%ebp)
	movl	%eax, %edi
	movl	-176(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SetLastError@4
	pushl	%eax
	xorl	%eax, %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	$1024, 20(%esp)
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 16(%esp)
	movl	$1024, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$4608, (%esp)
	call	*__imp__FormatMessageA@28
	subl	$28, %esp
	movl	$__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0, 20(%esp)
	movl	%esi, 16(%esp)
	movl	$LC39, 12(%esp)
	movl	$518, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	jmp	L479
L744:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	leal	-124(%ebp), %ebx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L474
	movl	_g_windowPos+4, %eax
	movl	%eax, 24(%esp)
	movl	_g_windowPos, %eax
	movl	%esi, 16(%esp)
	movl	%eax, 20(%esp)
	movl	$LC36, 12(%esp)
	movl	$493, 8(%esp)
	movl	$LC35, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L474
	.p2align 4,,10
	.p2align 3
L707:
	leal	-124(%ebp), %ebx
	jmp	L469
L743:
	movl	$LC30, (%esp)
	call	*__imp__GetModuleHandleA@4
	pushl	%esi
	movl	%eax, __ZZ20windowsWaitForVBlankvE6hGDI32
	testl	%eax, %eax
	je	L468
	movl	__imp__GetProcAddress@8, %ebx
	movl	$LC31, 4(%esp)
	movl	%eax, (%esp)
	call	*%ebx
	pushl	%edx
	pushl	%edx
	movl	%eax, __ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc
	movl	$LC32, 4(%esp)
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %eax
	movl	%eax, (%esp)
	call	*%ebx
	pushl	%ecx
	pushl	%ecx
	movl	%eax, __ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter
	movl	$LC33, 4(%esp)
	movl	__ZZ20windowsWaitForVBlankvE6hGDI32, %eax
	movl	%eax, (%esp)
	call	*%ebx
	pushl	%ebx
	pushl	%ebx
	movl	%eax, __ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank
	jmp	L468
	.p2align 4,,10
	.p2align 3
L458:
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__QueryPerformanceFrequency@4
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	subl	$4, %esp
	jmp	L460
L724:
	call	__Z26timerGetPerformanceCounterv
	movb	$1, __ZGVZ14videoShowFrameE12nextSwapTime
	movl	%eax, __ZZ14videoShowFrameE12nextSwapTime
	movl	%edx, __ZZ14videoShowFrameE12nextSwapTime+4
	jmp	L457
L444:
	movl	140(%ebx), %eax
	jmp	L448
	.p2align 4,,10
	.p2align 3
L341:
	movl	$0, -164(%ebp)
	xorl	%edi, %edi
	jmp	L343
L731:
	movl	%edx, -200(%ebp)
	movss	%xmm4, -208(%ebp)
	movss	%xmm3, -204(%ebp)
	call	__ZN10ImDrawList10AddDrawCmdEv
	movl	-200(%ebp), %edx
	movss	-208(%ebp), %xmm4
	movss	-204(%ebp), %xmm3
	movl	676(%edx), %ecx
	jmp	L387
L377:
	movl	-184(%ebp), %eax
	cmpl	$0, 18608(%eax)
	jle	L747
	xorl	%ecx, %ecx
	leal	-104(%ebp), %eax
	movl	%ecx, -176(%ebp)
	movl	%ecx, -196(%ebp)
	movl	%eax, -172(%ebp)
	jmp	L389
L350:
	movl	-184(%ebp), %eax
	xorps	%xmm1, %xmm1
	movss	19060(%eax), %xmm0
	comiss	%xmm0, %xmm1
	jnb	L748
	movl	-184(%ebp), %eax
L710:
	movl	19024(%eax), %ebx
	testl	%ebx, %ebx
	je	L356
	cmpb	$0, 223(%ebx)
	jne	L518
	jmp	L356
	.p2align 4,,10
	.p2align 3
L728:
	sarl	$25, %edx
	andl	$1, %edx
	call	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0
	jmp	L345
L747:
	leal	-104(%ebp), %eax
	movl	%eax, -172(%ebp)
	jmp	L356
L748:
	comiss	19036(%eax), %xmm1
	jb	L710
	jmp	L356
L408:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L410
L741:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-96(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-1, 16(%esp)
	movl	%eax, 12(%esp)
	movl	-172(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L409
L411:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L413
L740:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$-16777216, 16(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%edi, 4(%esp)
	movl	%eax, 8(%esp)
	leal	-156(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L412
L414:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L416
L739:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	-176(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-184(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-220(%ebp), %eax
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L415
L417:
	movl	80(%ebx), %edx
	movl	-8(%edx,%eax,4), %eax
	jmp	L419
L738:
	movl	$4, 4(%esp)
	movl	%ebx, %ecx
	leal	-124(%ebp), %edi
	movl	$6, (%esp)
	call	__ZN10ImDrawList11PrimReserveEii
	leal	-80(%ebp), %eax
	movl	%ebx, %ecx
	subl	$8, %esp
	movl	$805306368, 16(%esp)
	movl	%eax, -176(%ebp)
	movl	%eax, 12(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, -184(%ebp)
	movl	%eax, 8(%esp)
	leal	-144(%ebp), %eax
	movl	%eax, -220(%ebp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j
	subl	$20, %esp
	jmp	L418
	.cfi_endproc
LFE45:
	.section .rdata,"dr"
	.align 4
LC47:
	.ascii "VirtualProtect() error! Crashing in 3... 2... 1...\0"
	.align 4
LC48:
	.ascii "source/build/src/baselayer.cpp\0"
LC49:
	.ascii "ABORT: \0"
	.align 4
LC53:
	.ascii "\12#version 120\12\12varying vec4 v_color;\12varying float v_distance;\12\12//u_texturePosSize is the texture position & size packaged into a single vec4 as {pos.x, pos.y, size.x, size.y}\12uniform vec4 u_texturePosSize;\12uniform float u_usePalette;\12uniform mat4 u_rotMatrix;\12\12const float c_zero = 0.0;\12const float c_one  = 1.0;\12\12void main()\12{\12   vec4 vertex = u_rotMatrix * gl_Vertex;\12   vec4 eyeCoordPosition = gl_ModelViewMatrix * vertex;\12   gl_Position = gl_ModelViewProjectionMatrix * vertex;\12\12   eyeCoordPosition.xyz /= eyeCoordPosition.w;\12\12   gl_TexCoord[0] = gl_TextureMatrix[0] * gl_MultiTexCoord0;\12   gl_TexCoord[0] = mix(gl_TexCoord[0].xyzw, gl_TexCoord[0].yxzw, u_usePalette);\12\12   gl_TexCoord[3] = gl_TextureMatrix[3] * gl_MultiTexCoord3;\12   gl_TexCoord[4] = gl_TextureMatrix[4] * gl_MultiTexCoord4;\12\12   gl_FogFragCoord = abs(eyeCoordPosition.z);\12   //gl_FogFragCoord = clamp((gl_Fog.end-abs(eyeCoordPosition.z))*gl_Fog.scale, c_zero, c_one);\12\12   v_color = gl_Color;\12   v_distance = gl_Vertex.z;\12}\12\0"
	.align 4
LC54:
	.ascii "\12#version 120\12#extension GL_ARB_shader_texture_lod : enable\12\12//include an additional space here so that we can programmatically search for and disable this preprocessor definition easily\12 #define POLYMOST1_EXTENDED\12\12//s_texture points to an indexed color texture\12uniform sampler2D s_texture;\12//s_palswap is the palette swap texture where u is the color index and v is the shade\12uniform sampler2D s_palswap;\12//s_palette is the base palette texture where u is the color index\12uniform sampler2D s_palette;\12\12#ifdef POLYMOST1_EXTENDED\12uniform sampler2D s_detail;\12uniform sampler2D s_glow;\12#endif\12\12//u_texturePosSize is the texture position & size packaged into a single vec4 as {pos.x, pos.y, size.x, size.y}\12uniform vec4 u_texturePosSize;\12uniform vec2 u_halfTexelSize;\12uniform vec2 u_palswapPos;\12uniform vec2 u_palswapSize;\12\12uniform vec2 u_clamp;\12\12uniform float u_shade;\12uniform vec2 u_numShades;\12uniform float u_visFactor;\12uniform float u_fogEnabled;\12\12uniform float u_useColorOnly;\12uniform float u_usePalette;\12uniform vec4 u_npotEmulation;\12uniform float u_shadeInterpolate;\12\12#ifdef POLYMOST1_EXTENDED\12uniform float u_useDetailMapping;\12uniform float u_useGlowMapping;\12#endif\12\12varying vec4 v_color;\12varying float v_distance;\12\12const float c_basepalScale = 255.0/256.0;\12const float c_basepalOffset = 0.5/256.0;\12\12const float c_zero = 0.0;\12const float c_one = 1.0;\12const float c_two = 2.0;\12const vec4 c_vec4_one = vec4(c_one);\12const float c_wrapThreshold = 0.9;\12\12uniform vec4 u_colorCorrection;\12const vec2 c_vec2_zero_one = vec2(c_zero, c_one);\12const vec4 c_vec4_luma_709 = vec4(0.2126, 0.7152, 0.0722, 0.0);\12\12void main()\12{\12    vec2 coord = mix(gl_TexCoord[0].xy,gl_TexCoord[0].yx,u_usePalette);\12    float modCoordYnpotEmulationFactor = mod(coord.y,u_npotEmulation.y);\12    coord.xy = vec2(floor(modCoordYnpotEmulationFactor)*u_npotEmulation.x+coord.x, floor(coord.y*u_npotEmulation.w)+modCoordYnpotEmulationFactor);\12    vec2 newCoord = mix(gl_TexCoord[0].xy,mix(coord.xy,coord.yx,u_usePalette),u_npotEmulation"
	.ascii ".z);\12#ifdef GL_ARB_shader_texture_lod\12    vec2 texCoord = mix(fract(newCoord.xy), clamp(newCoord.xy, c_zero, c_one), u_clamp);\12    texCoord = clamp(u_texturePosSize.zw*texCoord, u_halfTexelSize, u_texturePosSize.zw-u_halfTexelSize);\12    vec4 color = texture2DGradARB(s_texture, u_texturePosSize.xy+texCoord, dFdx(gl_TexCoord[0].xy), dFdy(gl_TexCoord[0].xy));\12#else\12    vec2 transitionBlend = fwidth(floor(newCoord.xy));\12    transitionBlend = fwidth(transitionBlend)+transitionBlend;\12    vec2 texCoord = mix(mix(fract(newCoord.xy), abs(c_one-mod(newCoord.xy+c_one, c_two)), transitionBlend), clamp(newCoord.xy, c_zero, c_one), u_clamp);\12    texCoord = clamp(u_texturePosSize.zw*texCoord, u_halfTexelSize, u_texturePosSize.zw-u_halfTexelSize);\12    vec4 color = texture2D(s_texture, u_texturePosSize.xy+texCoord);\12#endif\12\12    float shade = clamp((u_shade+clamp(u_visFactor*v_distance-0.5*u_shadeInterpolate,c_zero,u_numShades.x)), c_zero, u_numShades.x-c_one);\12    float shadeFrac = mod(shade, c_one);\12    float colorIndex = texture2D(s_palswap, vec2(color.r, floor(shade)*u_numShades.y)*u_palswapSize+u_palswapPos).r * c_basepalScale + c_basepalOffset;\12    float colorIndexNext = texture2D(s_palswap, u_palswapSize*vec2(color.r, (floor(shade)+c_one)*u_numShades.y)+u_palswapPos).r * c_basepalScale + c_basepalOffset;\12    vec4 palettedColor = texture2D(s_palette, vec2(colorIndex, c_zero));\12    vec4 palettedColorNext = texture2D(s_palette, vec2(colorIndexNext, c_zero));\12    palettedColor.rgb = mix(palettedColor.rgb, palettedColorNext.rgb, shadeFrac*u_shadeInterpolate);\12    float fullbright = mix(u_usePalette*palettedColor.a, c_zero, u_useColorOnly);\12    palettedColor.a = c_one-floor(color.r);\12    color = mix(color, palettedColor, u_usePalette);\12\12#ifdef POLYMOST1_EXTENDED\12    vec4 detailColor = texture2D(s_detail, gl_TexCoord[3].xy);\12    detailColor = mix(c_vec4_one, 2.0*detailColor, u_useDetailMapping*detailColor.a);\12    color.rgb *= detailColor.rgb;\12#endif\12\12    color = mix(color, c_vec4_one"
	.ascii ", u_useColorOnly);\12\12    // DEBUG\12    //color = texture2D(s_palswap, gl_TexCoord[0].xy);\12    //color = texture2D(s_palette, gl_TexCoord[0].xy);\12    //color = texture2D(s_texture, gl_TexCoord[0].yx);\12\12    color.rgb = mix(v_color.rgb*color.rgb, color.rgb, fullbright);\12\12    fullbright = clamp(-(u_fogEnabled-c_one), fullbright, c_one);\12    float fogFactor = clamp((gl_Fog.end-gl_FogFragCoord)*gl_Fog.scale, fullbright, c_one);\12    //float fogFactor = clamp(gl_FogFragCoord, fullbright, c_one);\12    color.rgb = mix(gl_Fog.color.rgb, color.rgb, fogFactor);\12\12#ifdef POLYMOST1_EXTENDED\12    vec4 glowColor = texture2D(s_glow, gl_TexCoord[4].xy);\12    color.rgb = mix(color.rgb, glowColor.rgb, u_useGlowMapping * glowColor.a * -(u_useColorOnly-c_one));\12#endif\12\12    color.a *= v_color.a;\12\12    vec4 v_cc = vec4(u_colorCorrection.x - c_one, 0.5 * -(u_colorCorrection.y-c_one), -(u_colorCorrection.z-c_one), 1.0);\12    gl_FragData[0] = mat4(c_vec2_zero_one.yxxx, c_vec2_zero_one.xyxx, c_vec2_zero_one.xxyx, v_cc.xxxw)\12                   * mat4(u_colorCorrection.ywww, u_colorCorrection.wyww, u_colorCorrection.wwyw, v_cc.yyyw)\12                   * mat4((c_vec4_luma_709.xxxw * v_cc.z) + u_colorCorrection.zwww,\12                          (c_vec4_luma_709.yyyw * v_cc.z) + u_colorCorrection.wzww,\12                          (c_vec4_luma_709.zzzw * v_cc.z) + u_colorCorrection.wwzw,\12                          c_vec2_zero_one.xxxy)\12                   * color;\12}\12\0"
LC55:
	.ascii " #define POLYMOST1_EXTENDED\0"
	.align 4
LC61:
	.ascii "palswap data too large for tilesheet!\0"
LC62:
	.ascii "source/build/src/polymost.cpp\0"
LC63:
	.ascii "%s:%d: Unexpected EOF!\0"
	.align 4
LC64:
	.ascii "source/build/src/scriptfile.cpp\0"
	.align 4
LC65:
	.ascii "Corrupted texcache index detected, invalidating texcache files.\0"
LC66:
	.ascii "source/build/src/texcache.cpp\0"
	.align 4
LC68:
	.ascii "Failed mapping texcache! Error %d: %s\0"
LC69:
	.ascii "Mapped %d byte texcache\0"
	.align 4
LC70:
	.ascii "Cache contains %d bytes of garbage data\0"
	.align 4
LC71:
	.ascii "Generating 3D meshes from voxel model data. This may take a while...\0"
	.align 4
LC75:
	.ascii "Generated 3D meshes for %d voxels in %.2f ms.\0"
	.data
	.align 32
LC52:
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.text
	.p2align 4
	.globl	_videoSetGameMode
	.def	_videoSetGameMode;	.scl	2;	.type	32;	.endef
_videoSetGameMode:
LFB104:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movzbl	%al, %eax
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$640, %ebx
	subl	$232, %esp
	movl	4(%edi), %esi
	cmpb	$0, _nogl
	movl	%eax, -184(%ebp)
	movl	%esi, -168(%ebp)
	movl	$8, %esi
	cmove	(%edi), %esi
	cmpl	%ebx, %edx
	cmovge	%edx, %ebx
	movl	$400, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	movl	%ebx, -176(%ebp)
	movl	%edx, %ebx
	cmpl	$200, _qsetmode
	jne	L751
	cmpb	$0, _videomodereset
	je	L939
L751:
	movl	$0, _g_lastpalettesum
	xorl	%edi, %edi
	movl	$0, _g_lastpalettesum+4
	movl	%ebx, -192(%ebp)
	.p2align 4
	.p2align 3
L754:
	movl	_voxmodels(,%edi,4), %ebx
	testl	%ebx, %ebx
	je	L753
	movl	88(%ebx), %eax
	testl	%eax, %eax
	je	L753
	leal	88(%ebx), %edx
	movl	$1, (%esp)
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteBuffers
	leal	92(%ebx), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 88(%ebx)
L753:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L754
	movl	_models, %edx
	movl	-192(%ebp), %ebx
	testl	%edx, %edx
	je	L755
	movl	_nextmodelid, %eax
	testl	%eax, %eax
	jle	L755
	xorl	%edi, %edi
	jmp	L757
	.p2align 5
	.p2align 4,,10
	.p2align 3
L756:
	addl	$1, %edi
	cmpl	_nextmodelid, %edi
	jge	L931
L940:
	movl	_models, %edx
L757:
	movl	(%edx,%edi,4), %ebx
	cmpl	$1, (%ebx)
	jne	L756
	movl	88(%ebx), %eax
	testl	%eax, %eax
	je	L756
	leal	88(%ebx), %edx
	movl	$1, (%esp)
	addl	$1, %edi
	movl	%edx, 4(%esp)
	call	*_glad_glDeleteBuffers
	leal	92(%ebx), %edx
	subl	$8, %esp
	movl	%edx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 88(%ebx)
	cmpl	_nextmodelid, %edi
	jl	L940
L931:
	movl	-192(%ebp), %ebx
L755:
	movl	-184(%ebp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%eax, (%esp)
	movl	-176(%ebp), %eax
	call	_videoSetMode
	testl	%eax, %eax
	js	L857
	leal	-96(%ebp), %eax
	movl	$64, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$_dep_end, %eax
	subl	$_dep_begin, %eax
	movl	$_dep_begin, (%esp)
	movl	%eax, 4(%esp)
	call	*__imp__VirtualProtect@16
	subl	$16, %esp
	testl	%eax, %eax
	je	L941
	xorl	%eax, %eax
	movzbl	_divtable32+1004, %ecx
	cmpl	$8, %esi
	movl	_divtable32+1000, %edx
	cmovg	_glrendmode, %eax
	movl	_yres, %esi
	andl	$31, %ecx
	movl	%eax, _rendmode
	testl	%edx, %edx
	je	L942
	movl	%edx, %eax
	imull	%esi
	movzbl	_divtable32+1004, %eax
	sarb	$7, %al
	movsbl	%al, %eax
	xorl	%eax, %esi
	addl	%edx, %esi
	subl	%eax, %esi
	testb	$64, _divtable32+1004
	cmove	%edx, %esi
	movl	%esi, %eax
	shrl	$31, %esi
	sarl	%cl, %eax
	leal	(%eax,%esi), %ecx
L761:
	movl	-168(%ebp), %eax
	cmpl	%ecx, %eax
	cmovle	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	cmovle	%eax, %ecx
	movl	%ecx, _upscalefactor
	cmpl	$8, _bpp
	jne	L763
	movl	-176(%ebp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -176(%ebp)
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebx
L763:
	movl	-176(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	%ebx, %edx
	movl	%ebx, _ydim
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _xdim
	movss	%xmm0, _fxdim
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, _fydim
	call	__Z17OSD_ResizeDisplayii
	call	__ZL20videoAllocateBuffersv.lto_priv.0
	movl	_ydim, %edx
	movl	_bytesperline, %eax
	movl	$-1, __ZL13oviewingrange.lto_priv.0
	movl	$-1, __ZL7oxdimen.lto_priv.0
	movl	$-1, _oxyaspect
	call	_calc_ylookup
	movl	_xdim, %eax
	xorl	%edx, %edx
	leal	-1(%eax), %ecx
	movl	_ydim, %eax
	subl	$1, %eax
	movl	%eax, (%esp)
	xorl	%eax, %eax
	call	_videoSetViewableArea
	cmpl	$200, _qsetmode
	jne	L764
	cmpl	$2, _rendmode
	jg	L943
	call	_videoBeginDrawing
	movl	_bytesperline, %eax
	imull	_ydim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_frameplace, %eax
	movl	%eax, (%esp)
	call	_memset
	call	_videoEndDrawing
L764:
	movzbl	_curbrightness, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	call	_videoSetPalette
	movl	_searchx, %ebx
	testl	%ebx, %ebx
	jns	L766
	movl	_halfxdimen, %eax
	movl	%eax, _searchx
	movl	_ydimen, %eax
	sarl	%eax
	movl	%eax, _searchy
L766:
	cmpl	$2, _rendmode
	jg	L944
L767:
	movl	$200, _qsetmode
L855:
	xorl	%eax, %eax
L749:
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
L942:
	.cfi_restore_state
	movl	$-1, %eax
	movl	%esi, %edi
	movzbl	_divtable32+1004, %edx
	sall	%cl, %eax
	sarl	$31, %edi
	notl	%eax
	sarb	$7, %dl
	andl	%edi, %eax
	movsbl	%dl, %edx
	addl	%esi, %eax
	sarl	%cl, %eax
	movl	%eax, %ecx
	xorl	%edx, %ecx
	subl	%edx, %ecx
	jmp	L761
L939:
	cmpl	%eax, _fullscreen
	jne	L751
	movl	_g_displayindex, %eax
	cmpl	%eax, _r_displayindex
	jne	L751
	movl	-176(%ebp), %eax
	cmpl	%eax, _xres
	jne	L751
	cmpl	%edx, _yres
	jne	L751
	cmpl	%esi, _bpp
	jne	L751
	movl	-168(%ebp), %eax
	cmpl	%eax, _upscalefactor
	jne	L751
	jmp	L855
	.p2align 4,,10
	.p2align 3
L944:
	call	_polymost_glreset
	call	__Z28buildgl_resetStateAccountingv
	movl	$4354, 4(%esp)
	movl	$3156, (%esp)
	call	*_glad_glHint
	movl	$2049, %edx
	movl	$9729, %eax
	subl	$8, %esp
	cmpl	$1, _r_usenewshading
	cmovle	%edx, %eax
	movl	$2917, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glFogi
	subl	$8, %esp
	movl	$771, 4(%esp)
	movl	$770, (%esp)
	call	*_glad_glBlendFunc
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	$3333, (%esp)
	call	*_glad_glPixelStorei
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	$3317, (%esp)
	call	*_glad_glPixelStorei
	subl	$8, %esp
	testb	$8, _glinfo+28
	jne	L945
L769:
	call	__Z21polymost_initdrawpolyv
	movl	_glinfo+20, %eax
	cmpl	$8192, %eax
	jg	L860
	movss	LC19, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC51, %xmm0
	cvtsi2ssl	%eax, %xmm2
	divss	%xmm2, %xmm1
	divss	%xmm2, %xmm0
L770:
	movl	%eax, __ZL13tilesheetSize
	movss	%xmm1, __ZL18tilesheetSizeRecip.lto_priv.0
	movss	%xmm0, __ZL22tilesheetHalfTexelSize.lto_priv.0
	movss	%xmm0, __ZL22tilesheetHalfTexelSize.lto_priv.0+4
	call	__Z27buildgl_resetSamplerObjectsv
	movl	__ZL13tilesheetSize, %eax
	movl	__ZZ15polymost_glinitvE13numTilesheets, %ebx
	movl	%eax, -168(%ebp)
	testl	%ebx, %ebx
	je	L946
	jle	L788
L786:
	movl	-168(%ebp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L790:
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	movl	%eax, (%esp)
	call	*_glad_glIsTexture
	subl	$4, %esp
	testb	%al, %al
	jne	L789
	leal	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%ebx,4), %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%esi, (%esp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$0, 8(%esp)
	movl	$1, %eax
	movl	%esi, 4(%esp)
	call	__Z20uploadtextureindexedi4vec2IiES0_i
L789:
	addl	$1, %ebx
	cmpl	__ZZ15polymost_glinitvE13numTilesheets, %ebx
	jl	L790
L788:
	movl	_tiles+12, %ecx
	movl	$-1, -164(%ebp)
	testl	%ecx, %ecx
	je	L791
	movl	_tiles, %eax
	movl	%eax, -208(%ebp)
	movl	_tiles+4, %eax
	movl	%eax, -204(%ebp)
	movl	_tiles+8, %eax
	movl	%eax, -200(%ebp)
L791:
	movl	-208(%ebp), %eax
	movl	__ZL15tilesheetTexIDs.lto_priv.0(,%eax,4), %eax
	call	__Z19buildgl_bindTexturejj.constprop.0
	leal	-164(%ebp), %eax
	movl	$5121, 28(%esp)
	movl	%eax, 32(%esp)
	movl	$6403, 24(%esp)
	movl	$2, 20(%esp)
	movl	$2, 16(%esp)
	movl	-200(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-204(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	movl	__ZL11quadVertsID.lto_priv.1, %eax
	subl	$36, %esp
	movl	%eax, (%esp)
	call	*_glad_glIsBuffer
	subl	$4, %esp
	testb	%al, %al
	jne	L792
	movl	$__ZL11quadVertsID.lto_priv.1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	subl	$8, %esp
L792:
	movl	__ZL11quadVertsID.lto_priv.1, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
L793:
	movl	LC52(%eax), %esi
	movl	LC52+4(%eax), %ebx
	movl	LC52+8(%eax), %ecx
	movl	LC52+12(%eax), %edx
	movl	%esi, -96(%ebp,%eax)
	movl	%ebx, -92(%ebp,%eax)
	movl	%ecx, -88(%ebp,%eax)
	movl	%edx, -84(%ebp,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L793
	leal	-96(%ebp), %eax
	movl	$35044, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	movl	$0, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$3, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glVertexAttribPointer
	subl	$24, %esp
	movl	$12, 20(%esp)
	movl	$20, 16(%esp)
	movl	$0, 12(%esp)
	movl	$5126, 8(%esp)
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glVertexAttribPointer
	movl	$34962, %eax
	subl	$24, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	je	L947
	xorl	%edi, %edi
	xorl	%esi, %esi
L795:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	xorl	%ebx, %ebx
	movl	%eax, (%esp)
	call	*_glad_glIsProgram
	subl	$4, %esp
	testb	%al, %al
	je	L948
L796:
	movl	%esi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%edi, (%esp)
	call	*_glad_glDeleteShader
	subl	$4, %esp
	movl	%ebx, (%esp)
	call	*_glad_glDeleteShader
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	subl	$4, %esp
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	$0, 4(%esp)
	movl	__ZL22polymost1TexSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$2, 4(%esp)
	movl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$3, 4(%esp)
	movl	__ZL25polymost1DetailSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$4, 4(%esp)
	movl	__ZL23polymost1GlowSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	cmpl	%eax, _gl
	jne	L800
	movswl	_numshades, %edx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movss	LC58, %xmm2
	movl	$0x3e000000, __ZL20polymost1PalswapSize.lto_priv.0
	leal	1(%edx), %ecx
	movzwl	%dx, %eax
	shrl	$16, %edx
	movzwl	%cx, %ebx
	shrl	$16, %ecx
	cvtsi2ssl	%eax, %xmm3
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	%ebx, %xmm1
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	LC59, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, __ZL20polymost1PalswapSize.lto_priv.0+4
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	movss	LC60, %xmm1
	movss	%xmm1, __ZL25polymost1PalswapInnerSize.lto_priv.0
	movss	%xmm0, __ZL25polymost1PalswapInnerSize.lto_priv.0+4
	movss	%xmm0, 8(%esp)
	movss	%xmm1, 4(%esp)
	movl	__ZL23polymost1PalswapSizeLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform2f
	subl	$12, %esp
L800:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	xorl	%ebx, %ebx
	call	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0
	movl	$0, 4(%esp)
	movl	__ZL22polymost1TexSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$1, 4(%esp)
	movl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$2, 4(%esp)
	movl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glUniform1i
	subl	$8, %esp
	movl	$0, (%esp)
	call	*_glad_glUseProgram
	subl	$4, %esp
	movl	$0, _gl
	movl	$-1, __ZL11lastbasepal.lto_priv.0
	.p2align 4
	.p2align 3
L801:
	movl	%ebx, %eax
	addl	$1, %ebx
	call	__Z17uploadbasepalettei
	cmpl	$256, %ebx
	jne	L801
	xorl	%ebx, %ebx
	jmp	L806
	.p2align 4,,10
	.p2align 3
L951:
	movl	$__ZL16palswapTextureID.lto_priv.0, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenTextures
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
	subl	$8, %esp
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 8(%esp)
	movl	$33085, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9728, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0x3f800000, 8(%esp)
	movl	$34046, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameterf
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$0, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$0, 20(%esp)
	movl	$2048, 16(%esp)
	movl	$2048, 12(%esp)
	movl	$6403, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexImage2D
	subl	$36, %esp
L804:
	movswl	_numshades, %eax
	movl	%ebx, %esi
	sarl	$3, %esi
	leal	1(%eax), %edx
	imull	%edx, %esi
	cmpl	$2048, %esi
	jg	L949
	movl	%ebx, %edi
	addl	%esi, %eax
	movl	$__ZZ13uploadpalswapiE14blackPixels256, 32(%esp)
	andl	$7, %edi
	movl	%eax, 12(%esp)
	sall	$8, %edi
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movl	$1, 20(%esp)
	movl	$256, 16(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	movl	_palookup(,%ebx,4), %eax
	subl	$36, %esp
	movl	%eax, 32(%esp)
	movl	$5121, 28(%esp)
	movl	$6403, 24(%esp)
	movswl	_numshades, %eax
	movl	$256, 16(%esp)
	movl	%eax, 20(%esp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	$3553, (%esp)
	call	*_glad_glTexSubImage2D
	subl	$36, %esp
L802:
	addl	$1, %ebx
	cmpl	$256, %ebx
	je	L950
L806:
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %edi
	testl	%edi, %edi
	je	L802
	movl	_palookup(,%ebx,4), %esi
	testl	%esi, %esi
	je	L802
	movl	__ZL16palswapTextureID.lto_priv.0, %eax
	testl	%eax, %eax
	je	L951
	call	__Z19buildgl_bindTexturejj.constprop.0
	jmp	L804
L860:
	movss	LC45, %xmm0
	movl	$8192, %eax
	movss	LC46, %xmm1
	jmp	L770
L947:
	call	*_glad_glCreateProgram
	xorl	%ecx, %ecx
	movl	$LC53, %edx
	movl	%eax, __ZL32polymost1ExtendedShaderProgramID.lto_priv.0
	movl	$35633, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	xorl	%ecx, %ecx
	movl	$LC54, %edx
	movl	%eax, %esi
	movl	$35632, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %edi
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	jmp	L795
	.p2align 4,,10
	.p2align 3
L949:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L802
	movl	$LC61, 12(%esp)
	addl	$1, %ebx
	movl	$1968, 8(%esp)
	movl	$LC62, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	cmpl	$256, %ebx
	jne	L806
L950:
	movl	$32884, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	subl	$4, %esp
	call	__Z19polymost_resetStatev
	call	_texcache_init
	call	_texcache_openfiles
	movl	$_TEXCACHEFILE, 4(%esp)
	movl	$_ptempbuf, (%esp)
	call	_strcpy
	movl	$_ptempbuf, (%esp)
	call	_strlen
	movl	$1684957486, _ptempbuf(%eax)
	movl	$7890276, _ptempbuf+3(%eax)
	movl	$_ptempbuf, %eax
	call	_scriptfile_fromfile
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L807
	.p2align 4
	.p2align 3
L808:
	movl	12(%ebx), %eax
	movl	16(%ebx), %edx
	cmpl	%edx, %eax
	jb	L952
L821:
	movl	%ebx, %eax
	call	_scriptfile_close
L807:
	movl	_glusememcache, %ecx
	testl	%ecx, %ecx
	je	L823
	call	_texcache_enabled
	testl	%eax, %eax
	je	L823
	movl	_texcache+28, %eax
	testl	%eax, %eax
	je	L823
	movl	%eax, (%esp)
	movl	__imp___fileno, %ebx
	call	*%ebx
	movl	%eax, (%esp)
	call	_filelength
	testl	%eax, %eax
	jle	L823
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	*%ebx
	movl	%eax, (%esp)
	call	*__imp___get_osfhandle
	movlps	LC67, %xmm3
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	%eax, %esi
	movl	$0, -152(%ebp)
	movlps	%xmm3, -148(%ebp)
	cmpl	$-1, %eax
	je	L953
	call	__ZNSt3_V215system_categoryEv
	leal	-132(%ebp), %ebx
	movl	%esi, -184(%ebp)
	movl	%eax, -176(%ebp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__GetFileSizeEx@8
	movl	-132(%ebp), %edi
	subl	$8, %esp
	testl	%eax, %eax
	je	L954
L827:
	cmpb	$0, __ZGVZN3mio9page_sizeEvE9page_size
	je	L955
L828:
	movl	%esi, (%esp)
	movl	$0, 20(%esp)
	movl	%edi, 16(%esp)
	movl	$0, 12(%esp)
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	call	*__imp__CreateFileMappingA@24
	subl	$24, %esp
	movl	%eax, %esi
	cmpl	$-1, %eax
	je	L937
	movl	%edi, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__MapViewOfFile@20
	subl	$20, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L956
L831:
	leal	-160(%ebp), %eax
	movl	%edx, -196(%ebp)
	movl	%eax, %ecx
	movl	%eax, -192(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movb	$0, -168(%ebp)
	movl	-196(%ebp), %edx
	xorl	%eax, %eax
L832:
	movl	$_texcache, %ecx
	movl	%eax, -200(%ebp)
	movl	%edx, -196(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movl	-184(%ebp), %eax
	movl	-196(%ebp), %edx
	movl	%edi, _texcache+4
	movlps	LC67, %xmm7
	movl	%edi, _texcache+8
	movl	%eax, _texcache+12
	movzbl	-168(%ebp), %eax
	movl	%edx, _texcache
	movb	%al, _texcache+20
	movl	%esi, _texcache+16
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -152(%ebp)
	movb	$0, -140(%ebp)
	movlps	%xmm7, -148(%ebp)
	movl	%ebx, (%esp)
	movl	-192(%ebp), %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-200(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	jne	L833
	cmpl	$-1, _texcache+16
	je	L835
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L823
	movl	_texcache+4, %eax
	movl	$LC69, 12(%esp)
	movl	$908, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC66, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L823:
	call	_texcache_enabled
	testl	%eax, %eax
	je	L839
	movl	_texcache+32, %edx
	xorl	%ebx, %ebx
	movl	%edx, _texcache+36
	movl	12(%edx), %eax
	testl	%eax, %eax
	je	L840
	.p2align 5
	.p2align 4
	.p2align 3
L841:
	addl	8(%edx), %ebx
	movl	%eax, _texcache+36
	movl	%eax, %edx
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L841
L840:
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	_texcache+28, %eax
	movl	%eax, (%esp)
	call	_ftell
	subl	%ebx, %eax
	jne	L957
L839:
	movl	$262144, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ornament, (%esp)
	call	_memset
	movl	_rendmode, %eax
	cmpl	$3, %eax
	je	L958
L842:
	cmpl	$4, %eax
	jne	L767
	call	_polymer_init
	testl	%eax, %eax
	jne	L767
	movl	$3, _rendmode
	jmp	L767
	.p2align 4,,10
	.p2align 3
L952:
	cmpb	$0, (%eax)
	jne	L822
	addl	$1, %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jnb	L821
L822:
	movl	%ebx, %eax
	call	_scriptfile_gettoken
	movl	%eax, %esi
	testl	%eax, %eax
	je	L959
	leal	-160(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L811
	leal	-132(%ebp), %edx
	movl	%ebx, %eax
	call	_scriptfile_getnumber
	testl	%eax, %eax
	jne	L811
	movl	%esi, %edx
	movl	$_texcache+32812, %eax
	call	_hash_find
	testl	%eax, %eax
	js	L812
	movl	_texcache+40, %edx
	movss	-160(%ebp), %xmm0
	movss	-132(%ebp), %xmm4
	movl	(%edx,%eax,4), %eax
	unpcklps	%xmm4, %xmm0
	movlps	%xmm0, 4(%eax)
	jmp	L808
L812:
	movl	_texcache+36, %edi
	movl	%esi, (%esp)
	call	_strlen
	leal	1(%eax), %edx
	movl	%eax, -176(%ebp)
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -184(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L814
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -184(%ebp)
	call	_strcpy
	movl	-184(%ebp), %ecx
	movl	-176(%ebp), %eax
	movb	$0, (%ecx,%eax)
	movl	%ecx, (%edi)
	movss	-160(%ebp), %xmm0
	movss	-132(%ebp), %xmm6
	unpcklps	%xmm6, %xmm0
	movlps	%xmm0, 4(%edi)
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L960
	movl	$0, (%eax)
	movl	%esi, %edx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	%eax, 12(%edi)
	movl	$_texcache+32812, %eax
	movl	$1, (%esp)
	movl	_texcache+32828, %ecx
	call	_hash_add
	movl	_texcache+32828, %eax
	movl	_texcache+32832, %edx
	movl	_texcache+40, %ecx
	addl	$1, %eax
	movl	%eax, _texcache+32828
	cmpl	%edx, %eax
	jg	L961
L818:
	movl	_texcache+36, %edx
	movl	%edx, -4(%ecx,%eax,4)
	movl	12(%edi), %eax
	movl	%eax, _texcache+36
	jmp	L808
L943:
	xorl	%eax, %eax
	call	_paletteGetColor
	movl	%eax, %ebx
	movl	_ydim, %eax
	movl	%eax, 12(%esp)
	movl	_xdim, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	$0, (%esp)
	call	*_glad_glViewport
	movl	%ebx, %eax
	xorps	%xmm0, %xmm0
	movss	LC50, %xmm1
	shrl	$16, %eax
	subl	$16, %esp
	movzbl	%al, %eax
	movl	$0x00000000, 12(%esp)
	cvtsi2ssl	%eax, %xmm0
	movzbl	%bh, %eax
	movzbl	%bl, %ebx
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebx, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glClearColor
	subl	$16, %esp
	movl	$16384, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	jmp	L764
L961:
	addl	$512, %edx
	leal	0(,%edx,4), %esi
	movl	%edx, _texcache+32832
	movl	%esi, 4(%esp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	L866
	testl	%esi, %esi
	jne	L819
L866:
	movl	%ecx, _texcache+40
	movl	_texcache+32828, %eax
	jmp	L818
L959:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L810
	movl	12(%ebx), %edx
	movl	%ebx, %eax
	call	_scriptfile_getlinum
	movl	%eax, 20(%esp)
	movl	20(%ebx), %eax
	movl	$LC63, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$47, 8(%esp)
	movl	$LC64, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L811:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L810
	movl	$LC65, 12(%esp)
	movl	$451, 8(%esp)
	movl	$LC66, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L810:
	movl	%ebx, %eax
	call	_scriptfile_close
	call	_texcache_invalidate
	jmp	L807
L946:
	movl	_nextTreeNodeIndex, %esi
	movl	_heapNodes, %eax
	cmpl	%eax, %esi
	jb	L775
	xorl	%eax, %eax
	movl	$2, %ecx
	movl	$2, %edx
	call	__Z18tilepacker_addTilejjj.part.0
	movl	_heapNodes, %eax
	jmp	L775
	.p2align 4,,10
	.p2align 3
L962:
	movl	_heapNodes, %eax
	movl	%edi, %ebx
L775:
	leal	1(%ebx), %edi
	cmpl	%eax, %esi
	jb	L773
	movswl	_tilesiz+2(,%ebx,4), %edx
	movswl	_tilesiz(,%ebx,4), %ecx
	testl	%edx, %edx
	je	L773
	testl	%ecx, %ecx
	je	L773
	movl	%edi, %eax
	call	__Z18tilepacker_addTilejjj.part.0
L773:
	cmpl	$30720, %edi
	jne	L962
	movss	-168(%ebp), %xmm7
	movl	_numRejected, %eax
	xorl	%edi, %edi
	movl	$_nodes+2214180, %esi
	unpcklps	%xmm7, %xmm7
	movlps	%xmm7, -192(%ebp)
	.p2align 4
	.p2align 3
L787:
	movl	-168(%ebp), %ecx
	movlps	-192(%ebp), %xmm5
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	%ecx, 28(%esi)
	leal	1(%edi), %ecx
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	$-1, 32(%esi)
	movl	%ecx, -184(%ebp)
	movlps	%xmm5, 20(%esi)
	cmpl	$63, %edi
	ja	L963
	testl	%eax, %eax
	jle	L778
	movl	%esi, -196(%ebp)
	movl	_rejectQueueHeadIndex, %ebx
	movl	%eax, %esi
	movl	%edi, -176(%ebp)
	jmp	L780
	.p2align 4,,10
	.p2align 3
L779:
	subl	$1, %esi
	je	L933
L964:
	movl	_numRejected, %eax
L780:
	subl	$1, %eax
	leal	1(%ebx), %ecx
	movl	%eax, _numRejected
	leal	(%ebx,%ebx,8), %eax
	leal	_rejectQueue(,%eax,4), %edi
	movl	$-2004318071, %eax
	mull	%ecx
	shrl	$14, %edx
	imull	$30720, %edx, %eax
	movl	%edi, %edx
	subl	%eax, %ecx
	movl	-176(%ebp), %eax
	movl	%ecx, _rejectQueueHeadIndex
	movl	%ecx, %ebx
	call	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	testb	%al, %al
	jne	L779
	movl	%edi, %eax
	call	__ZL15rejectQueue_addP8TreeNode.isra.0
	subl	$1, %esi
	jne	L964
L933:
	movl	-176(%ebp), %edi
	movl	-196(%ebp), %esi
L778:
	movl	_heapNodes, %eax
	testl	%eax, %eax
	je	L781
	leal	-2(%eax), %ebx
	shrl	%ebx
	.p2align 4
	.p2align 3
L782:
	movl	%ebx, %eax
	call	__ZL18maxheap_bubbleDownj.lto_priv.0
	subl	$1, %ebx
	jnb	L782
	.p2align 4
	.p2align 3
L781:
	call	__ZL11maxheap_popv.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L783
L965:
	movl	%eax, %edx
	movl	%edi, %eax
	call	__ZL10kdtree_addjP8TreeNode.lto_priv.0
	testb	%al, %al
	jne	L781
	movl	%ebx, %eax
	call	__ZL15rejectQueue_addP8TreeNode.isra.0
	call	__ZL11maxheap_popv.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L965
L783:
	movl	-184(%ebp), %ecx
	movl	_numRejected, %eax
	movl	%ecx, __ZZ15polymost_glinitvE13numTilesheets
	testl	%eax, %eax
	je	L786
	cmpl	$64, %ecx
	je	L786
	subl	$36, %esi
L777:
	movl	-184(%ebp), %edi
	jmp	L787
L963:
	movl	%ecx, __ZZ15polymost_glinitvE13numTilesheets
	subl	$36, %esi
	jmp	L777
L948:
	movl	$5442, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	movl	%eax, -176(%ebp)
	testl	%eax, %eax
	je	L797
	movl	$5442, 8(%esp)
	movl	$LC54, 4(%esp)
	movl	%eax, (%esp)
	call	_memcpy
	movl	$LC55, 4(%esp)
	movl	%ebx, (%esp)
	call	_strstr
	testl	%eax, %eax
	je	L799
	movl	$12079, %edx
	movw	%dx, (%eax)
L799:
	call	*_glad_glCreateProgram
	movl	-176(%ebp), %edx
	leal	-132(%ebp), %ecx
	movl	$5442, -132(%ebp)
	movl	%eax, __ZL29polymost1BasicShaderProgramID.lto_priv.0
	movl	$35632, %eax
	call	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0
	movl	%esi, 4(%esp)
	movl	%eax, %ebx
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glAttachShader
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	call	*_glad_glLinkProgram
	subl	$4, %esp
	movl	%esi, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	subl	$8, %esp
	movl	%ebx, 4(%esp)
	movl	__ZL29polymost1BasicShaderProgramID.lto_priv.0, %eax
	movl	%eax, (%esp)
	call	*_glad_glDetachShader
	movl	-176(%ebp), %eax
	subl	$8, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L796
L945:
	movl	$34383, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L769
	movl	$34383, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$34383, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L769
L814:
	movl	-184(%ebp), %eax
	call	__Z13handle_memerri
L960:
	movl	$16, %eax
	call	__Z13handle_memerri
L958:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L844:
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L843
	call	_voxvboalloc
L843:
	addl	$1, %ebx
	cmpl	$2048, %ebx
	jne	L844
	movl	_models, %eax
	testl	%eax, %eax
	je	L845
	movl	_nextmodelid, %edx
	testl	%edx, %edx
	jle	L845
	xorl	%ebx, %ebx
	jmp	L847
L846:
	addl	$1, %ebx
	cmpl	_nextmodelid, %ebx
	jge	L845
	movl	_models, %eax
L847:
	movl	(%eax,%ebx,4), %eax
	cmpl	$1, (%eax)
	jne	L846
	call	_voxvboalloc
	jmp	L846
L845:
	cmpb	$1, _g_haveVoxels
	je	L848
L938:
	movl	_rendmode, %eax
	jmp	L842
L957:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L839
	movl	%eax, 16(%esp)
	movl	$LC70, 12(%esp)
	movl	$385, 8(%esp)
	movl	$LC66, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L839
L819:
	movl	%esi, %eax
	call	__Z13handle_memerri
L848:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movb	$2, _g_haveVoxels
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L849
	movl	$LC71, 12(%esp)
	movl	$11909, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L849:
	call	_videoNextPage
	leal	-96(%ebp), %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	call	_enet_gettime.constprop.0.isra.0
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %esi
	movl	%eax, -176(%ebp)
	.p2align 4
	.p2align 3
L851:
	movl	__ZL12voxfilenames.lto_priv.0(,%edi,4), %eax
	testl	%eax, %eax
	je	L850
	call	_voxload
	xorps	%xmm0, %xmm0
	addl	$1, %ebx
	cvtsi2ssl	_voxscale(,%edi,4), %xmm0
	movl	%eax, _voxmodels(,%edi,4)
	mulss	LC72, %xmm0
	movss	%xmm0, 8(%eax)
	movl	_voxmodels(,%edi,4), %eax
	call	_voxvboalloc
	movl	__ZL12voxfilenames.lto_priv.0(,%edi,4), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL12voxfilenames.lto_priv.0(,%edi,4)
L850:
	addl	$1, %edi
	cmpl	$2048, %edi
	jne	L851
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L938
	movl	%esi, %eax
	movl	%esi, -184(%ebp)
	fildl	-184(%ebp)
	cltd
	testl	%edx, %edx
	jns	L853
	fadds	LC28
L853:
	fstpl	-184(%ebp)
	fldl	-184(%ebp)
	leal	-96(%ebp), %eax
	fmuls	LC73
	fdivs	LC74
	fildl	-176(%ebp)
	fmuls	LC73
	faddp	%st, %st(1)
	fstpl	-176(%ebp)
	call	_enet_gettime.constprop.0.isra.0
	movl	-92(%ebp), %eax
	fildl	-92(%ebp)
	cltd
	testl	%edx, %edx
	jns	L854
	fadds	LC28
L854:
	fstpl	-184(%ebp)
	fldl	-184(%ebp)
	fmuls	LC73
	fdivs	LC74
	fildl	-96(%ebp)
	fmuls	LC73
	faddp	%st, %st(1)
	fsubl	-176(%ebp)
	movl	%ebx, 16(%esp)
	movl	$LC75, 12(%esp)
	movl	$11926, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$0, (%esp)
	fstpl	20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L938
L857:
	movl	$-1, %eax
	jmp	L749
L797:
	movl	$5442, %eax
	call	__Z13handle_memerri
L954:
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L966
L825:
	movzbl	-140(%ebp), %esi
	movl	$_texcache, %ecx
	movl	%eax, -184(%ebp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	movlps	LC67, %xmm3
	movl	$0, _texcache
	leal	-160(%ebp), %ecx
	movl	%esi, %eax
	movl	$0, _texcache+4
	movb	%al, _texcache+20
	movl	$0, _texcache+8
	movl	$-1, _texcache+12
	movl	$-1, _texcache+16
	movl	$0, -160(%ebp)
	movl	$0, -156(%ebp)
	movl	$0, -152(%ebp)
	movb	$0, -140(%ebp)
	movlps	%xmm3, -148(%ebp)
	movl	%ebx, (%esp)
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0
	movl	-184(%ebp), %eax
	subl	$4, %esp
L833:
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-2, %edx
	jl	L835
	movl	-176(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%eax, 4(%esp)
	movl	%eax, -176(%ebp)
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	call	*16(%edx)
	movl	-132(%ebp), %edx
	subl	$8, %esp
	movl	%edx, 20(%esp)
	movl	-176(%ebp), %eax
	movl	$LC68, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$901, 8(%esp)
	movl	$LC66, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-132(%ebp), %eax
	leal	-124(%ebp), %edx
	cmpl	%edx, %eax
	je	L835
	call	_mi_free
L835:
	movl	$_texcache, %ecx
	call	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv
	jmp	L823
L956:
	movl	%esi, (%esp)
	call	*__imp__CloseHandle@4
	subl	$4, %esp
L937:
	call	*__imp__GetLastError@0
	testl	%eax, %eax
	je	L864
	movzbl	-140(%ebp), %ecx
	movl	$-1, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	$-1, -184(%ebp)
	movb	%cl, -168(%ebp)
	leal	-160(%ebp), %ecx
	movl	%ecx, -192(%ebp)
	jmp	L832
L953:
	call	__ZNSt3_V216generic_categoryEv
	leal	-132(%ebp), %ebx
	movl	%eax, -176(%ebp)
	movl	$9, %eax
	jmp	L825
L864:
	xorl	%esi, %esi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	L831
L966:
	xorl	%edi, %edi
	jmp	L827
L941:
	xorl	%esi, %esi
	movl	$LC47, 16(%esp)
	movl	$407, 12(%esp)
	movl	$LC48, 8(%esp)
	movl	$LC49, 4(%esp)
	movl	%esi, (%esp)
	call	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0
L955:
	movl	%ebx, (%esp)
	call	*__imp__GetSystemInfo@4
	movl	-104(%ebp), %eax
	subl	$4, %esp
	movb	$1, __ZGVZN3mio9page_sizeEvE9page_size
	movl	%eax, __ZZN3mio9page_sizeEvE9page_size
	jmp	L828
	.cfi_endproc
LFE104:
	.section .rdata,"dr"
	.align 4
LC76:
	.ascii "qloadkvx: file %s is truncated\0"
	.text
	.p2align 4
	.globl	_qloadkvx
	.def	_qloadkvx;	.scl	2;	.type	32;	.endef
_qloadkvx:
LFB159:
	.cfi_startproc
	subl	$160, %esp
	.cfi_def_cfa_offset 164
	cmpl	$2047, %eax
	ja	L968
	movl	%eax, %ecx
	movzbl	_paletteloaded, %eax
	movl	%ebx, 144(%esp)
	notl	%eax
	andl	$1, %eax
	testl	%edx, %edx
	.cfi_offset 3, -20
	sete	%bl
	orb	%bl, %al
	jne	L1027
	movl	%edi, 152(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	xorl	%edx, %edx
	movl	%ecx, %ebx
	movl	%edi, %eax
	call	_kopen4load.part.0
	movl	%eax, 44(%esp)
	cmpl	$-1, %eax
	je	L1028
	movl	%ebp, 156(%esp)
	.cfi_offset 5, -8
	call	__Z20kfilelength_internaliPKhPiS1_.constprop.0
	movl	%eax, %ebp
	cmpl	$767, %eax
	jle	L1031
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	44(%esp), %eax
	movl	$2, %ecx
	movl	$-768, %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%esi, 148(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	call	__Z15klseek_internaliiiPKhPiS1_
	movb	$0, _maxvoxcol
	movl	%ebx, 20(%esp)
	movl	44(%esp), %ebx
L971:
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	leal	112(%esp), %edx
	movl	$3, %ecx
	movl	%ebx, %eax
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movzbl	112(%esp), %eax
	movzbl	113(%esp), %edx
	sall	$18, %eax
	sall	$10, %edx
	addl	%edx, %eax
	movzbl	114(%esp), %edx
	leal	(%eax,%edx,4), %eax
	movl	%esi, %edx
	addl	$1, %esi
	sall	$24, %edx
	addl	%edx, %eax
	movl	%eax, _voxpal-1(%esi)
	cmpl	$256, %esi
	jne	L971
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	44(%esp), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	20(%esp), %ebx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	call	__Z15klseek_internaliiiPKhPiS1_
	leal	-768(%ebp), %eax
	movl	%ebx, 80(%esp)
	xorl	%ebp, %ebp
	movl	%eax, 76(%esp)
	leal	(%ebx,%ebx,4), %eax
	leal	__ZL7voxlock.lto_priv.0(%eax), %esi
	leal	_voxoff(,%eax,4), %eax
	movl	$0, 48(%esp)
	movl	%eax, 52(%esp)
	movl	%esi, 56(%esp)
	xorl	%esi, %esi
	movl	%edi, 84(%esp)
	movl	%ebp, %edi
L994:
	movl	44(%esp), %ebp
	movl	$4, %ecx
	leal	108(%esp), %edx
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebp, %eax
	movl	$0, 108(%esp)
	call	__Z14kread_internaliPviPKhPKiPi
	movl	76(%esp), %ebx
	cmpl	%ebx, 48(%esp)
	jge	L993
	movl	$954437177, %eax
	movl	108(%esp), %ebx
	imull	%esi
	sarl	$31, %esi
	movl	%ebx, 68(%esp)
	sarl	%edx
	movl	%edx, %eax
	subl	%esi, %eax
	addl	%eax, %eax
	cmpl	%eax, %ebx
	jl	L993
	movl	56(%esp), %esi
	movl	%ebx, %edx
	movl	%esi, %ecx
	movb	$-1, (%esi)
	movl	52(%esp), %esi
	movl	%esi, %eax
	call	__ZN7cache1d13allocateBlockEPiiPc.constprop.0
	movl	(%esi), %ebx
	movl	$__ZL7filegrp.lto_priv.0, (%esp)
	movl	%ebp, %eax
	movl	$__ZL7filepos.lto_priv.0, 8(%esp)
	movl	108(%esp), %ecx
	movl	$__ZL7filehan.lto_priv.0, 4(%esp)
	movl	%ebx, %edx
	call	__Z14kread_internaliPviPKhPKiPi
	testl	%edi, %edi
	je	L1032
	movl	(%ebx), %esi
	testl	%esi, %esi
	jle	L984
	movl	4(%ebx), %eax
	testl	%eax, %eax
	jle	L984
	leal	2(%eax,%eax), %ecx
	addl	%eax, %eax
	movl	$0, 60(%esp)
	movl	%ebx, %edx
	movl	%ecx, 64(%esp)
	movl	%eax, 72(%esp)
	movl	%edi, 88(%esp)
	leal	28(%ebx,%esi,4), %edi
	addl	$24, %ebx
L992:
	movl	72(%esp), %ecx
	movl	(%ebx), %eax
	movl	%ebx, 96(%esp)
	movl	%edi, %ebp
	movl	%edi, 100(%esp)
	addl	%edi, %ecx
	movl	%esi, 104(%esp)
	movl	%ecx, 40(%esp)
	movl	%edx, 92(%esp)
	leal	24(%edx,%eax), %edx
	.p2align 4
	.p2align 3
L991:
	movswl	0(%ebp), %eax
	leal	(%eax,%edx), %edi
	movswl	2(%ebp), %eax
	leal	(%eax,%edx), %esi
	cmpl	%esi, %edi
	jnb	L985
	movl	%ebp, 32(%esp)
	movl	%edx, 36(%esp)
	movl	%esi, 28(%esp)
	.p2align 4
	.p2align 3
L990:
	movzbl	1(%edi), %eax
	xorl	%ebx, %ebx
	subl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	jmp	L989
	.p2align 4,,10
	.p2align 3
L999:
	addl	$1, %ebx
L989:
	movzbl	3(%edi,%ebx), %eax
	cmpb	$-1, %al
	je	L986
	movzbl	%al, %edx
	andl	$7, %eax
	movl	%edx, %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	movl	%edx, 24(%esp)
	sarl	$3, %ecx
	movzbl	112(%esp,%ecx), %ebp
	andl	%eax, %ebp
	movl	%ebp, %edx
	cmpb	%dl, %al
	jne	L986
	movl	24(%esp), %edx
	movzbl	_PaletteIndexFullbright(%ecx), %ebp
	leal	(%edx,%edx,2), %edx
	andl	%eax, %ebp
	leal	_voxpal(%edx), %ecx
	addl	$_palette, %edx
	movl	%edx, 24(%esp)
	movl	%ebp, %edx
	leal	112(%esp), %ebp
	cmpb	%dl, %al
	movl	%ecx, %eax
	cmovne	24(%esp), %eax
	movzbl	2(%eax), %ecx
	movzbl	1(%eax), %edx
	movzbl	(%eax), %eax
	movl	%ebp, 4(%esp)
	movzbl	_maxvoxcol, %ebp
	movl	%ebp, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	movb	%al, 3(%edi,%ebx)
L986:
	cmpl	%ebx, 20(%esp)
	jne	L999
	movzbl	1(%edi), %eax
	leal	3(%edi,%eax), %edi
	cmpl	28(%esp), %edi
	jb	L990
	movl	32(%esp), %ebp
	movl	36(%esp), %edx
L985:
	addl	$2, %ebp
	cmpl	%ebp, 40(%esp)
	jne	L991
	movl	96(%esp), %ebx
	movl	100(%esp), %edi
	addl	$1, 60(%esp)
	movl	92(%esp), %edx
	movl	104(%esp), %esi
	addl	$4, %ebx
	addl	64(%esp), %edi
	cmpl	60(%esp), %esi
	jne	L992
	movl	88(%esp), %edi
L984:
	addl	$1, %edi
	movl	108(%esp), %eax
	cmpl	$5, %edi
	je	L993
	movl	48(%esp), %esi
	addl	$1, 56(%esp)
	addl	$4, 52(%esp)
	leal	4(%eax,%esi), %eax
	movl	%eax, 48(%esp)
L997:
	movl	68(%esp), %esi
	jmp	L994
L1032:
	movl	$-1, 112(%esp)
	movl	$-1, 116(%esp)
	movl	$-1, 120(%esp)
	movl	$-1, 124(%esp)
	movl	$-1, 128(%esp)
	movl	$-1, 132(%esp)
	movl	$-1, 136(%esp)
	movl	$-1, 140(%esp)
	movl	(%ebx), %eax
	movb	$0, _maxvoxcol
	testl	%eax, %eax
	jle	L974
	movl	4(%ebx), %edx
	leal	24(%ebx), %ecx
	leal	2(%edx,%edx), %esi
	movl	%esi, 60(%esp)
	leal	28(%ebx,%eax,4), %esi
	leal	(%ecx,%eax,4), %eax
	movl	%esi, 40(%esp)
	movl	%eax, 64(%esp)
	testl	%edx, %edx
	jg	L1033
L975:
	movl	60(%esp), %esi
	addl	$4, %ecx
	addl	%esi, 40(%esp)
	cmpl	%ecx, 64(%esp)
	je	L974
	testl	%edx, %edx
	jle	L975
L1033:
	movl	60(%esp), %eax
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	movl	$1, %esi
	subl	$2, %eax
	movl	%eax, 72(%esp)
L981:
	movl	(%ecx), %eax
	movl	72(%esp), %edx
	movl	%ecx, 92(%esp)
	movl	%ebx, 88(%esp)
	leal	24(%ebx,%eax), %eax
	movl	%edi, %ebx
	movl	%eax, 20(%esp)
	movl	40(%esp), %eax
	movl	20(%esp), %ecx
	addl	%eax, %edx
	movl	%edx, 36(%esp)
L980:
	movswl	(%eax), %edx
	leal	(%edx,%ecx), %edi
	movswl	2(%eax), %edx
	addl	%ecx, %edx
	cmpl	%edx, %edi
	jnb	L976
	movl	%ecx, 28(%esp)
	movl	%edx, 24(%esp)
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L979:
	movzbl	1(%edi), %eax
	xorl	%ecx, %ecx
	movb	%al, 20(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L978:
	movzbl	%cl, %eax
	movzbl	3(%edi,%eax), %edx
	cmpb	%dl, %bl
	movl	%edx, %eax
	cmovb	%edx, %ebx
	cmovb	%esi, %ebp
	andl	$7, %eax
	sarl	$3, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	addl	$1, %ecx
	notl	%eax
	andb	%al, 112(%esp,%edx)
	cmpb	20(%esp), %cl
	jne	L978
	movzbl	1(%edi), %eax
	leal	3(%edi,%eax), %edi
	cmpl	24(%esp), %edi
	jb	L979
	movl	28(%esp), %ecx
	movl	32(%esp), %eax
L976:
	addl	$2, %eax
	cmpl	%eax, 36(%esp)
	jne	L980
	movl	92(%esp), %ecx
	movl	60(%esp), %edx
	movl	%ebx, %edi
	addl	%edx, 40(%esp)
	movl	88(%esp), %ebx
	addl	$4, %ecx
	cmpl	64(%esp), %ecx
	jne	L981
	movl	%edi, %eax
	movl	%ebp, %edi
	movl	%eax, %ebp
	movl	%edi, %eax
	testb	%al, %al
	je	L974
	movl	%ebp, %eax
	movb	%al, _maxvoxcol
L974:
	movl	48(%esp), %esi
	movl	108(%esp), %eax
	movl	$1, %edi
	addl	$1, 56(%esp)
	leal	4(%esi,%eax), %eax
	addl	$4, 52(%esp)
	movl	%eax, 48(%esp)
	jmp	L997
L993:
	movl	80(%esp), %ebx
	movl	44(%esp), %eax
	movl	84(%esp), %edi
	call	_kclose
	movl	_voxmodels(,%ebx,4), %eax
	testl	%eax, %eax
	je	L995
	call	_voxfree
	movl	$0, _voxmodels(,%ebx,4)
L995:
	movl	__ZL12voxfilenames.lto_priv.0(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 160
	subl	$4, %esp
	.cfi_def_cfa_offset 164
	movl	%edi, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %edx
	movl	%eax, %ebp
	movl	%edx, (%esp)
	movl	%edx, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 160
	subl	$4, %esp
	.cfi_def_cfa_offset 164
	movl	%eax, %esi
	testl	%eax, %eax
	je	L996
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movb	$1, _g_haveVoxels
	movl	$0, 44(%esp)
	movb	$0, (%esi,%ebp)
	movl	%esi, __ZL12voxfilenames.lto_priv.0(,%ebx,4)
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	148(%esp), %esi
	.cfi_restore 6
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
L967:
	movl	44(%esp), %eax
	addl	$160, %esp
	.cfi_def_cfa_offset 4
	ret
L996:
	.cfi_def_cfa_offset 164
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %eax
	call	__Z13handle_memerri
L1027:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	144(%esp), %ebx
	.cfi_restore 3
L968:
	movl	$-1, 44(%esp)
	jmp	L967
L1031:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1034
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
	jmp	L968
L1028:
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	jmp	L967
L1034:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%edi, 16(%esp)
	movl	$LC76, 12(%esp)
	movl	$12239, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	144(%esp), %ebx
	.cfi_restore 3
	movl	152(%esp), %edi
	.cfi_restore 7
	movl	156(%esp), %ebp
	.cfi_restore 5
	jmp	L968
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	_inside
	.def	_inside;	.scl	2;	.type	32;	.endef
_inside:
LFB163:
	.cfi_startproc
	subl	$48, %esp
	.cfi_def_cfa_offset 52
	movl	%ebp, 44(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	_enginecompatibilitymode, %eax
	movl	%ebx, 32(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	cmpl	$19950829, %eax
	je	L1036
	cmpl	$2147483647, %eax
	jne	L1037
	movswl	_numsectors, %eax
	movswl	%cx, %ecx
	cmpl	%eax, %ecx
	jnb	L1038
	movl	_sector, %eax
	leal	(%ecx,%ecx,4), %edx
	movl	%edi, 40(%esp)
	movl	%esi, 36(%esp)
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	_wall, %edi
	leal	(%eax,%edx,8), %eax
	movl	$0, 20(%esp)
	movswl	(%eax), %esi
	movswl	2(%eax), %eax
	movl	%edi, 8(%esp)
	movl	$0, 16(%esp)
	sall	$5, %esi
	movl	%eax, 12(%esp)
	movl	%ebp, (%esp)
	addl	%edi, %esi
	movl	%ebx, 4(%esp)
	jmp	L1046
	.p2align 4,,10
	.p2align 3
L1039:
	movswl	8(%esi), %edx
	sall	$5, %edx
	addl	8(%esp), %edx
	movl	(%edx), %ebx
	subl	(%esp), %ebx
	movl	4(%edx), %edx
	movl	%ebx, %edi
	subl	4(%esp), %edx
	orl	%edx, %edi
	je	L1041
	movl	%eax, %edi
	xorl	%edx, %edi
	jns	L1042
	movl	%ecx, %edi
	movl	%eax, %ebp
	imull	%ebx, %ebp
	imull	%edx, %edi
	subl	%ebp, %edi
	movl	%ecx, %ebp
	xorl	%edx, %edi
	xorl	%ebx, %ebp
	cmovns	%ecx, %edi
	xorl	%edi, 16(%esp)
L1042:
	subl	$1, %eax
	subl	$1, %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	jns	L1044
	subl	$1, %ecx
	subl	$1, %ebx
	movl	%edx, %edi
	imull	%ecx, %edi
	imull	%ebx, %eax
	subl	%eax, %edi
	xorl	%edx, %edi
	xorl	%ecx, %ebx
	cmovs	%edi, %ecx
	xorl	%ecx, 20(%esp)
L1044:
	addl	$32, %esi
	subl	$1, 12(%esp)
	je	L1064
L1046:
	movl	(%esi), %ecx
	subl	(%esp), %ecx
	movl	4(%esi), %eax
	movl	%ecx, %ebx
	subl	4(%esp), %eax
	orl	%eax, %ebx
	jne	L1039
L1041:
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	$1, 20(%esp)
	movl	32(%esp), %ebx
	movl	20(%esp), %eax
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1037:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	testw	%cx, %cx
	js	L1038
	cmpw	_numsectors, %cx
	jge	L1038
	movl	_sector, %eax
	movswl	%cx, %ecx
	movl	%esi, 36(%esp)
	leal	(%ecx,%ecx,4), %edx
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_wall, %esi
	leal	(%eax,%edx,8), %eax
	movl	$0, 12(%esp)
	movswl	(%eax), %edx
	movswl	2(%eax), %eax
	movl	%esi, (%esp)
	movl	%ebp, 8(%esp)
	movl	%eax, 4(%esp)
	sall	$5, %edx
	addl	%esi, %edx
	.p2align 4
	.p2align 3
L1054:
	movswl	8(%edx), %edi
	movl	4(%edx), %eax
	sall	$5, %edi
	addl	(%esp), %edi
	subl	%ebx, %eax
	movl	4(%edi), %ecx
	subl	%ebx, %ecx
	movl	%ecx, %esi
	xorl	%eax, %esi
	jns	L1052
	movl	8(%esp), %ebp
	movl	(%edx), %esi
	subl	%ebp, %esi
	movl	(%edi), %ebp
	subl	8(%esp), %ebp
	movl	%esi, %edi
	imull	%ebp, %eax
	imull	%ecx, %edi
	subl	%eax, %edi
	xorl	%ecx, %edi
	xorl	%esi, %ebp
	cmovs	%edi, %esi
	xorl	%esi, 12(%esp)
L1052:
	addl	$32, %edx
	subl	$1, 4(%esp)
	jne	L1054
	movl	12(%esp), %eax
	shrl	$31, %eax
	movl	%eax, 20(%esp)
L1063:
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
L1035:
	movl	20(%esp), %eax
	movl	32(%esp), %ebx
	movl	44(%esp), %ebp
	addl	$48, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1036:
	.cfi_restore_state
	testw	%cx, %cx
	js	L1038
	cmpw	_numsectors, %cx
	jge	L1038
	movl	_sector, %eax
	movswl	%cx, %ecx
	movl	%esi, 36(%esp)
	leal	(%ecx,%ecx,4), %edx
	movl	%edi, 40(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	_wall, %esi
	leal	(%eax,%edx,8), %edx
	movl	$0, 20(%esp)
	movswl	(%edx), %eax
	movl	%esi, 8(%esp)
	movl	%ebp, 28(%esp)
	sall	$5, %eax
	movl	%ebx, 16(%esp)
	addl	%eax, %esi
	movswl	2(%edx), %eax
	movl	%eax, 12(%esp)
	jmp	L1050
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1047:
	addl	$32, %esi
	subl	$1, 12(%esp)
	je	L1063
L1050:
	movswl	8(%esi), %eax
	movl	4(%esi), %edx
	movl	16(%esp), %ebp
	sall	$5, %eax
	addl	8(%esp), %eax
	movl	%edx, %ebx
	movl	4(%eax), %ecx
	subl	%ebp, %ebx
	movl	%ecx, %edi
	subl	%ebp, %edi
	movl	%edi, (%esp)
	xorl	%ebx, %edi
	jns	L1047
	movl	28(%esp), %ebp
	movl	(%esi), %edi
	movl	(%eax), %eax
	subl	%ebp, %edi
	subl	%ebp, %eax
	movl	%edi, 4(%esp)
	movl	%eax, %edi
	movl	4(%esp), %eax
	movl	%edi, %ebp
	movl	%edi, 24(%esp)
	movl	4(%esp), %edi
	notl	%eax
	shrl	$31, %eax
	xorl	%edi, %ebp
	jns	L1049
	movl	(%esp), %eax
	imull	%edi, %eax
	movl	24(%esp), %edi
	imull	%ebx, %edi
	cmpl	%edi, %eax
	setl	%al
	cmpl	%edx, %ecx
	setg	%dl
	xorl	%edx, %eax
L1049:
	movzbl	%al, %eax
	xorl	%eax, 20(%esp)
	jmp	L1047
	.p2align 4,,10
	.p2align 3
L1064:
	movl	16(%esp), %eax
	orl	20(%esp), %eax
	shrl	$31, %eax
	movl	36(%esp), %esi
	.cfi_restore 6
	movl	40(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebx
	movl	44(%esp), %ebp
	movl	%eax, 20(%esp)
	movl	20(%esp), %eax
	addl	$48, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1038:
	.cfi_def_cfa_offset 52
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	$-1, 20(%esp)
	jmp	L1035
	.cfi_endproc
LFE163:
	.p2align 4
	.globl	@getangle@8
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
@getangle@8:
LFB167:
	.cfi_startproc
	movl	%ecx, %eax
	orl	%edx, %ecx
	jne	L1079
L1077:
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1079:
	testl	%eax, %eax
	jne	L1067
	sarl	$21, %edx
	andl	$1024, %edx
	leal	512(%edx), %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1067:
	testl	%edx, %edx
	je	L1080
	cmpl	%edx, %eax
	je	L1081
	movl	%eax, %ecx
	addl	%edx, %ecx
	je	L1082
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edx, %ecx
	movl	%eax, 16(%esp)
/APP
 # 12482 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 12482 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jg	L1083
	movl	%ecx, %eax
	movl	$160, %edx
	movl	%ecx, 8(%esp)
	sarl	$31, %eax
	movl	%ecx, 20(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	%eax, %edx
	movl	$640, %eax
	subl	%edx, %eax
	movl	20(%esp), %edx
	movzwl	__ZL8radarang.lto_priv.0(%eax,%eax), %eax
	sarl	$21, %edx
	sarw	$6, %ax
	andl	$1024, %edx
	addw	$512, %ax
	cwtl
	leal	(%eax,%edx), %ecx
L1065:
	movl	%ecx, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1080:
	sarl	$21, %eax
	andl	$1024, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1083:
	.cfi_def_cfa_offset 32
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -8
	movl	16(%esp), %ebx
	movl	$160, %edx
	movl	%ebx, %eax
	movl	%ebx, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ecx, %eax
	imull	%edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movzwl	__ZL8radarang.lto_priv.0+1280(%eax,%eax), %edx
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	.cfi_restore 3
	sarl	$21, %eax
	sarw	$6, %dx
	andl	$1024, %eax
	leal	(%eax,%edx), %ecx
	andl	$2047, %ecx
	jmp	L1065
	.p2align 4,,10
	.p2align 3
L1081:
	.cfi_def_cfa_offset 4
	sarl	$21, %eax
	andl	$1024, %eax
	leal	256(%eax), %ecx
	jmp	L1077
	.p2align 4,,10
	.p2align 3
L1082:
	testl	%eax, %eax
	movl	$768, %ecx
	movl	$1792, %eax
	cmovg	%eax, %ecx
	jmp	L1077
	.cfi_endproc
LFE167:
	.p2align 4
	.globl	@getq16angledelta@8
	.def	@getq16angledelta@8;	.scl	2;	.type	32;	.endef
@getq16angledelta@8:
LFB169:
	.cfi_startproc
	andl	$134217727, %ecx
	movl	%ecx, %eax
	subl	%edx, %eax
/APP
 # 12515 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	$67108863, %eax
	jg	L1085
	movl	%edx, %eax
	subl	%ecx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1085:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	cmpl	$67108864, %ecx
	jle	L1094
	movl	%edx, %ebx
	leal	134217728(%edx), %eax
	subl	%ecx, %ebx
	subl	%ecx, %eax
	cmpl	$67108865, %edx
	cmovge	%ebx, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1094:
	.cfi_restore_state
	leal	-134217728(%edx), %eax
	movl	%edx, %ebx
	subl	%ecx, %ebx
	subl	%ecx, %eax
	cmpl	$67108865, %edx
	cmovl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE169:
	.p2align 4
	.globl	@ksqrt@4
	.def	@ksqrt@4;	.scl	2;	.type	32;	.endef
@ksqrt@4:
LFB171:
	.cfi_startproc
	movl	%ecx, %eax
	cmpl	$19950829, _enginecompatibilitymode
	je	L1105
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
/APP
 # 12542 "source/build/src/engine.cpp" 1
	testl $0xff000000, %eax
	movl %eax, %ebx
	jnz 0f
	shrl $12, %ebx
	movw _shlookup(,%ebx,2), %cx
	jmp 1f
	0:
	shrl $24, %ebx
	movw (_shlookup+8192)(,%ebx,2), %cx
	1:
	shrl %cl, %eax
	movb %ch, %cl
	movw _sqrtable(,%eax,2), %ax
	shrl %cl, %eax
 # 0 "" 2
/NO_APP
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1105:
/APP
 # 12528 "source/build/src/engine.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	xorl	%ecx, %ecx
	cmpl	$2047, %eax
	jbe	L1097
	.p2align 4
	.p2align 4
	.p2align 3
L1098:
	shrl	$2, %eax
	addl	$1, %ecx
	cmpl	$2047, %eax
	ja	L1098
L1097:
	movzwl	_sqrtable_old(%eax,%eax), %eax
	sall	%cl, %eax
	shrl	$10, %eax
	ret
	.cfi_endproc
LFE171:
	.p2align 4
	.globl	_setsprite
	.def	_setsprite;	.scl	2;	.type	32;	.endef
_setsprite:
LFB173:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	_sprite, %edx
	movswl	32(%esp), %ebx
	movl	36(%esp), %eax
	imull	$44, %ebx, %esi
	addl	%esi, %edx
	movzwl	24(%edx), %ecx
	movw	%cx, 18(%esp)
	cmpl	%eax, %edx
	je	L1107
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
L1107:
	leal	18(%esp), %edx
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesector
	movzwl	18(%esp), %edx
	testw	%dx, %dx
	js	L1112
	movl	_sprite, %eax
	movzwl	24(%eax,%esi), %ecx
	cmpw	%cx, %dx
	sete	%al
	cmpw	$4096, %cx
	sete	%cl
	orb	%cl, %al
	jne	L1111
	cmpw	$4096, %dx
	ja	L1111
	movl	%ebx, %eax
	movl	%edx, 12(%esp)
	call	_do_deletespritesect
	movswl	12(%esp), %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L1111:
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
L1112:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE173:
	.p2align 4
	.globl	_setspritez
	.def	_setspritez;	.scl	2;	.type	32;	.endef
_setspritez:
LFB176:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$24, %esp
	.cfi_def_cfa_offset 36
	movl	_sprite, %edx
	movswl	36(%esp), %ebx
	movl	40(%esp), %eax
	imull	$44, %ebx, %esi
	addl	%esi, %edx
	movzwl	24(%edx), %ecx
	movw	%cx, 22(%esp)
	cmpl	%eax, %edx
	je	L1115
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
L1115:
	leal	22(%esp), %edx
	movl	%edx, 12(%esp)
	movl	8(%eax), %edx
	movl	%edx, 8(%esp)
	movl	4(%eax), %edx
	movl	%edx, 4(%esp)
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_updatesectorz
	movzwl	22(%esp), %edx
	testw	%dx, %dx
	js	L1120
	movl	_sprite, %eax
	movzwl	24(%eax,%esi), %ecx
	cmpw	%cx, %dx
	sete	%al
	cmpw	$4096, %cx
	sete	%cl
	orb	%cl, %al
	jne	L1119
	cmpw	$4096, %dx
	ja	L1119
	movl	%ebx, %eax
	movl	%edx, 16(%esp)
	call	_do_deletespritesect
	movswl	16(%esp), %edx
	movl	%ebx, %eax
	call	_do_insertsprite_at_headofsect
L1119:
	addl	$24, %esp
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
L1120:
	.cfi_restore_state
	addl	$24, %esp
	.cfi_def_cfa_offset 12
	movl	$-1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE176:
	.p2align 4
	.globl	__ZL20yax_cansee_fixsectoriiis.lto_priv.0
	.def	__ZL20yax_cansee_fixsectoriiis.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20yax_cansee_fixsectoriiis.lto_priv.0:
LFB177:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	movswl	56(%esp), %ebp
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%ebp, %ebx
	cmpl	$4095, %ebp
	jbe	L1144
	movl	%ebx, %eax
	movl	48(%esp), %ebp
	movl	36(%esp), %ebx
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1144:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%ebp, %eax
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	%edx, %edi
	movl	%ecx, 12(%esp)
	call	_yax_getbunch.constprop.1
	movw	%ax, 18(%esp)
	movl	%ebp, %eax
	call	_yax_getbunch.constprop.0
	orw	18(%esp), %ax
	jne	L1124
	jmp	L1143
	.p2align 4,,10
	.p2align 3
L1126:
	movl	24(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	20(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getceilzofslopeptr.part.0
L1127:
	cmpl	%eax, 12(%esp)
	jge	L1129
	movl	$0, (%esp)
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1143
	movswl	%ax, %ebp
	movl	%ebp, %ebx
L1124:
	leal	20(%esp), %eax
	movl	%esi, 20(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	20(%esp), %eax
	movl	%edi, 24(%esp)
	movl	24(%esp), %edx
	call	_getsectordist
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 12(%eax)
	jne	L1126
	movl	4(%eax), %eax
	jmp	L1127
	.p2align 4,,10
	.p2align 3
L1130:
	movl	32(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	call	_getflorzofslopeptr.part.0
L1131:
	cmpl	%eax, 12(%esp)
	jle	L1143
	movl	$1, (%esp)
	movl	%ebp, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	call	_yax_getneighborsect
	testl	%eax, %eax
	js	L1143
	movswl	%ax, %ebp
	movl	%ebp, %ebx
L1129:
	leal	28(%esp), %eax
	movl	%esi, 28(%esp)
	movl	%ebp, %ecx
	movl	%eax, (%esp)
	movl	28(%esp), %eax
	movl	%edi, 32(%esp)
	movl	32(%esp), %edx
	call	_getsectordist
	movl	_sector, %edx
	leal	0(%ebp,%ebp,4), %eax
	leal	(%edx,%eax,8), %eax
	testb	$2, 14(%eax)
	jne	L1130
	movl	8(%eax), %eax
	jmp	L1131
	.p2align 4,,10
	.p2align 3
L1143:
	movl	%ebx, %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	36(%esp), %ebx
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE177:
	.p2align 4
	.globl	_renderDrawMasks
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
_renderDrawMasks:
LFB181:
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
	subl	$168, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	_spritesortcnt, %ebx
	movl	_rendmode, %eax
	leal	-1(%ebx), %esi
	movl	%eax, -128(%ebp)
	movl	%esi, -52(%ebp)
	cmpl	$3, %eax
	je	L1429
	testl	%ebx, %ebx
	jle	L1430
	imull	$44, %ebx, %eax
	movl	_tsprite, %edx
	leal	-44(%edx,%eax), %edx
	movl	-52(%ebp), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1170:
	movl	%edx, _tspriteptr(,%eax,4)
	subl	$1, %eax
	subl	$44, %edx
	cmpl	$-1, %eax
	jne	L1170
L1167:
	leal	(%ebx,%ebx,2), %eax
	movl	%ebx, -80(%ebp)
	leal	__ZL10spritesxyz.lto_priv.0-12(,%eax,4), %eax
	movl	%eax, -76(%ebp)
	jmp	L1177
	.p2align 4,,10
	.p2align 3
L1432:
	movl	-68(%ebp), %edx
	subl	-56(%ebp), %edx
	movl	%edx, %esi
	movl	_singlobalang, %edi
	movl	_cosglobalang, %edx
	movl	-72(%ebp), %eax
/APP
 # 10213 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edi
	movl	_xdimen, %esi
	leal	(%edi,%eax), %ebx
	movl	%esi, %edx
	movl	%ebx, %eax
	negl	%eax
	cmovs	%ebx, %eax
/APP
 # 10215 "source/build/src/engine.cpp" 1
	imull %edx; shrdl $24, %edx, %eax
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edi
	jle	L1172
	sall	$7, %esi
	movl	%edi, 8(%esp)
	sarl	$31, %edi
	movl	%esi, %eax
	movl	%edi, 12(%esp)
	imull	%ebx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.9
	movl	-76(%ebp), %esi
	movl	%eax, (%esi)
L1173:
	movl	-76(%ebp), %eax
	movl	-64(%ebp), %esi
	movl	%esi, 4(%eax)
L1176:
	subl	$1, -52(%ebp)
	movl	-52(%ebp), %eax
	subl	$12, -76(%ebp)
	cmpl	$-1, %eax
	je	L1431
L1177:
	movl	-52(%ebp), %eax
	movl	_globalposx, %edx
	movl	_sinviewingrangeglobalang, %edi
	movl	_tspriteptr(,%eax,4), %ecx
	movl	%edx, -68(%ebp)
	movl	(%ecx), %ebx
	movl	4(%ecx), %eax
	subl	_globalposy, %eax
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	%ebx, -56(%ebp)
	subl	%edx, %eax
	movl	%esi, -72(%ebp)
	movl	_cosviewingrangeglobalang, %edx
/APP
 # 10206 "source/build/src/engine.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $6, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, -64(%ebp)
	cmpl	$1024, %eax
	jg	L1432
	testb	$48, 12(%ecx)
	jne	L1173
L1172:
	movl	%ecx, %eax
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L1173
	movl	_spritesortcnt, %eax
	movl	-52(%ebp), %ecx
	subl	$1, -80(%ebp)
	movl	-80(%ebp), %esi
	cmpl	%ecx, %eax
	jg	L1174
	cmpl	%esi, %ecx
	je	L1176
	movl	_tspriteptr(,%esi,4), %eax
	subl	$1, -52(%ebp)
	movl	%eax, _tspriteptr(,%ecx,4)
	leal	(%esi,%esi,2), %eax
	movlps	__ZL10spritesxyz.lto_priv.0(,%eax,4), %xmm5
	movl	-76(%ebp), %eax
	subl	$12, -76(%ebp)
	movlps	%xmm5, (%eax)
	movl	-52(%ebp), %eax
	movlps	%xmm5, -64(%ebp)
	cmpl	$-1, %eax
	jne	L1177
	.p2align 4
	.p2align 3
L1431:
	movl	_spritesortcnt, %eax
	movl	-80(%ebp), %ebx
	testl	%eax, %eax
	jle	L1178
	movl	%eax, %edx
	xorl	%eax, %eax
	call	__ZL11sortspritesii.part.0.lto_priv.0
	movl	_spritesortcnt, %eax
L1178:
	cmpl	%eax, %ebx
	jle	L1179
	movl	%ebx, %edx
	call	__ZL11sortspritesii.part.0.lto_priv.0
L1179:
	call	_videoBeginDrawing
	cmpl	$3, -128(%ebp)
	je	L1148
L1169:
	movzwl	_maskwallcnt, %edx
	testw	%dx, %dx
	je	L1180
L1424:
	movss	_fglobalposx, %xmm5
	movss	%xmm5, -92(%ebp)
	movss	-92(%ebp), %xmm2
	movss	_fglobalposy, %xmm5
	xorps	LC23, %xmm2
	movss	%xmm5, -104(%ebp)
	xorps	%xmm5, %xmm5
	movss	%xmm2, -136(%ebp)
	.p2align 4
	.p2align 3
L1269:
	movswl	%dx, %eax
	movswl	_maskwall-2(%eax,%eax), %ecx
	cmpl	$4, _rendmode
	je	L1227
	movswl	_thewall(%ecx,%ecx), %ecx
L1227:
	movl	_wall, %ebx
	sall	$5, %ecx
	leal	-1(%edx), %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movw	%ax, _maskwallcnt
	leal	(%ebx,%ecx), %edx
	cvtsi2ssl	(%edx), %xmm0
	cvtsi2ssl	4(%edx), %xmm1
	movswl	8(%edx), %edx
	sall	$5, %edx
	addl	%ebx, %edx
	cvtsi2ssl	(%edx), %xmm2
	cvtsi2ssl	4(%edx), %xmm3
	movaps	%xmm2, %xmm4
	subss	%xmm0, %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L1228
	jne	L1228
	movaps	%xmm0, %xmm6
	xorps	LC23, %xmm6
	movl	$0x00000000, -56(%ebp)
	movss	%xmm6, -68(%ebp)
	movss	LC19, %xmm6
	movss	%xmm6, -100(%ebp)
L1230:
	movaps	%xmm0, %xmm4
	subss	-92(%ebp), %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L1231
	jne	L1231
	movss	-136(%ebp), %xmm6
	movl	$0x00000000, -88(%ebp)
	movss	%xmm6, -80(%ebp)
	movss	LC19, %xmm6
	movss	%xmm6, -84(%ebp)
L1233:
	movaps	%xmm2, %xmm4
	subss	-92(%ebp), %xmm4
	ucomiss	%xmm5, %xmm4
	jp	L1234
	jne	L1234
	movss	-136(%ebp), %xmm6
	movl	$0x00000000, -76(%ebp)
	movss	%xmm6, -72(%ebp)
	movss	LC19, %xmm6
	movss	%xmm6, -96(%ebp)
	cmpl	$3, -128(%ebp)
	je	L1237
L1439:
	movl	_spritesortcnt, %ebx
	movl	%ebx, -52(%ebp)
	testl	%ebx, %ebx
	je	L1239
L1238:
	addss	%xmm2, %xmm0
	addss	%xmm3, %xmm1
	movss	LC51, %xmm2
	mulss	%xmm2, %xmm0
	mulss	%xmm2, %xmm1
	movss	%xmm0, -120(%ebp)
	movss	%xmm1, -124(%ebp)
	jmp	L1268
	.p2align 4,,10
	.p2align 3
L1436:
	cmpw	$16, %ax
	jne	L1244
	movswl	14(%ecx), %edx
	movswl	28(%edi), %esi
	movzbl	20(%edi), %edi
	movsbl	_picanm+1(%edx,%edx,4), %ecx
	movl	-64(%ebp), %edx
	movl	%esi, %eax
	movsbl	22(%edx), %edx
	addl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	andl	$4, %ebx
	cmovne	%edx, %ecx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%ecx, %edx
	imull	%edi, %eax
/APP
 # 398 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edx
	addl	$1536, %esi
	andl	$2047, %esi
	movl	(%edx), %ebx
	movl	%ecx, %edx
	subl	%eax, %ebx
	movswl	_sintable(%esi,%esi), %eax
	imull	%edi, %eax
/APP
 # 398 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edx
	movl	4(%edx), %esi
	movl	%esi, -108(%ebp)
	movl	%esi, %edx
	subl	%eax, %edx
L1246:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movss	-56(%ebp), %xmm7
	movss	-100(%ebp), %xmm6
	cvtsi2ssl	%ebx, %xmm0
	movss	-104(%ebp), %xmm3
	movss	-92(%ebp), %xmm2
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm7, %xmm3
	mulss	%xmm6, %xmm2
	mulss	%xmm0, %xmm6
	mulss	%xmm1, %xmm7
	addss	%xmm3, %xmm2
	addss	-68(%ebp), %xmm2
	movaps	%xmm6, %xmm3
	addss	%xmm7, %xmm3
	addss	-68(%ebp), %xmm3
	mulss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	ja	L1241
	movss	-124(%ebp), %xmm4
	movss	-88(%ebp), %xmm3
	xorl	%eax, %eax
	movss	-120(%ebp), %xmm6
	mulss	-84(%ebp), %xmm6
	mulss	%xmm4, %xmm3
	movss	-96(%ebp), %xmm7
	mulss	-76(%ebp), %xmm4
	addss	%xmm3, %xmm6
	addss	-80(%ebp), %xmm6
	movaps	%xmm4, %xmm3
	movss	-120(%ebp), %xmm4
	mulss	%xmm7, %xmm4
	mulss	%xmm0, %xmm7
	mulss	-84(%ebp), %xmm0
	addss	%xmm3, %xmm4
	addss	-72(%ebp), %xmm4
	movaps	%xmm7, %xmm3
	movss	-76(%ebp), %xmm7
	mulss	%xmm1, %xmm7
	mulss	-88(%ebp), %xmm1
	addss	%xmm7, %xmm3
	addss	-72(%ebp), %xmm3
	addss	%xmm1, %xmm0
	addss	-80(%ebp), %xmm0
	mulss	%xmm4, %xmm3
	mulss	%xmm6, %xmm0
	comiss	%xmm5, %xmm3
	seta	%al
	xorl	%edx, %edx
	addl	%eax, %eax
	comiss	%xmm5, %xmm0
	seta	%dl
	orl	%edx, %eax
	cmpl	$3, %eax
	jne	L1433
L1251:
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L1434
	movl	-52(%ebp), %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
	xorps	%xmm5, %xmm5
L1267:
	movl	-52(%ebp), %eax
	movl	$0, _tspriteptr(,%eax,4)
	.p2align 5
	.p2align 4
	.p2align 3
L1241:
	movl	-52(%ebp), %eax
	testl	%eax, %eax
	je	L1435
L1268:
	subl	$1, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	_tspriteptr(,%eax,4), %edi
	movl	%edi, -64(%ebp)
	testl	%edi, %edi
	je	L1241
	movzwl	12(%edi), %ebx
	movl	%edi, %ecx
	movl	%ebx, %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L1242
	cmpw	$48, %ax
	jne	L1436
	movl	-64(%ebp), %edi
	movzwl	28(%edi), %eax
	movswl	14(%edi), %ecx
	leal	512(%eax), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	andl	$2047, %edx
	movswl	_sintable(%edx,%edx), %esi
	movzbl	20(%edi), %edx
	movl	%eax, -116(%ebp)
	movsbl	_picanm+1(%ecx,%ecx,4), %eax
	movsbl	_picanm+2(%ecx,%ecx,4), %ecx
	movzbl	21(%edi), %edi
	movl	%esi, -112(%ebp)
	movl	%eax, %esi
	negl	%esi
	testb	$4, %bl
	cmovne	%esi, %eax
	movl	%ecx, %esi
	negl	%esi
	andl	$8, %ebx
	cmovne	%esi, %ecx
	imull	%eax, %edx
	movl	-116(%ebp), %eax
	imull	%edi, %ecx
	movl	%edx, -108(%ebp)
L1425:
	movl	-112(%ebp), %esi
	movl	%ecx, %edi
/APP
 # 463 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-112(%ebp), %esi
	movl	-108(%ebp), %edi
	movl	%eax, -132(%ebp)
	movl	%ecx, %edx
	movl	-116(%ebp), %eax
	negl	%esi
/APP
 # 464 "source/build/src/engine_priv.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-64(%ebp), %edi
	movl	-132(%ebp), %ebx
	addl	4(%edi), %eax
	addl	(%edi), %ebx
	movl	%eax, %edx
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1242:
	movl	-64(%ebp), %edi
	movzwl	28(%edi), %eax
	movswl	14(%edi), %edx
	leal	512(%eax), %ecx
	andl	$2047, %eax
	andl	$2047, %ecx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ecx,%ecx), %esi
	movl	%edi, %ecx
	movl	%eax, -116(%ebp)
	movsbl	22(%ecx), %ecx
	movsbl	_picanm+1(%edx,%edx,4), %eax
	movl	%esi, -112(%ebp)
	movzbl	20(%edi), %esi
	movzbl	21(%edi), %edi
	addl	%ecx, %eax
	movsbl	_picanm+2(%edx,%edx,4), %ecx
	movl	-64(%ebp), %edx
	movsbl	23(%edx), %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	negl	%edx
	testb	$4, %bl
	cmovne	%edx, %eax
	movl	%ecx, %edx
	negl	%edx
	andl	$8, %ebx
	movl	%esi, %ebx
	cmovne	%edx, %ecx
	imull	%eax, %ebx
	movl	-116(%ebp), %eax
	imull	%edi, %ecx
	movl	%ebx, -108(%ebp)
	movl	%ebx, %edx
	jmp	L1425
	.p2align 4,,10
	.p2align 3
L1244:
	movl	-64(%ebp), %eax
	movl	(%eax), %ebx
	movl	4(%eax), %edx
	jmp	L1246
	.p2align 4,,10
	.p2align 3
L1435:
	cmpl	$3, -128(%ebp)
	je	L1240
L1426:
	movzwl	_maskwallcnt, %eax
L1239:
	cwtl
	call	__ZL20renderDrawMaskedWalls.lto_priv.0
	movzwl	_maskwallcnt, %edx
	xorps	%xmm5, %xmm5
	testw	%dx, %dx
	jne	L1269
	cmpl	$3, -128(%ebp)
	je	L1226
L1180:
	movl	_spritesortcnt, %ebx
	movl	_maxspritesonscreen, %eax
	cmpl	%eax, %ebx
	jle	L1277
	movl	%eax, _spritesortcnt
	movl	%eax, %ebx
L1277:
	xorl	%eax, %eax
	jmp	L1271
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1278:
	subl	$1, %ebx
	movl	$1, %eax
	movl	_tspriteptr(,%ebx,4), %edi
	testl	%edi, %edi
	jne	L1437
L1271:
	testl	%ebx, %ebx
	jne	L1278
	testb	%al, %al
	je	L1279
	movl	$0, _spritesortcnt
L1279:
	cmpl	$3, -128(%ebp)
	jne	L1280
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	xorl	%eax, %eax
	subl	$4, %esp
	call	__Z17polymost_setClampc
L1280:
	cmpl	$4, _rendmode
	je	L1438
L1281:
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
	jmp	_videoEndDrawing
	.p2align 4,,10
	.p2align 3
L1433:
	.cfi_restore_state
	movl	-64(%ebp), %esi
	movl	$3, %edx
	movl	$0, -28(%ebp)
	movl	$0, -24(%ebp)
	subl	%eax, %edx
	movl	$0, -20(%ebp)
	movl	(%esi), %ecx
	movl	$0, -44(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	4(%esi), %ebx
	movzwl	12(%esi), %eax
	movl	%ecx, -32(%ebp)
	movl	%ebx, -116(%ebp)
	movl	%ebx, -48(%ebp)
	movl	%eax, %ebx
	andl	$48, %ebx
	movl	%edx, -108(%ebp)
	movw	%bx, -112(%ebp)
	testb	$32, %al
	je	L1252
	xorl	%eax, %eax
	cmpw	$48, %bx
	jne	L1253
	movswl	22(%esi), %eax
L1253:
	movss	%xmm6, -132(%ebp)
	leal	-48(%ebp), %ebx
	leal	-32(%ebp), %esi
	xorl	%ecx, %ecx
	movss	%xmm4, -116(%ebp)
	xorl	%edx, %edx
	movss	%xmm2, -112(%ebp)
	movl	%eax, 32(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 28(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 24(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-28(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	-64(%ebp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1
	movss	-112(%ebp), %xmm2
	movss	-116(%ebp), %xmm4
	xorps	%xmm5, %xmm5
	movss	-132(%ebp), %xmm6
	movl	$4, %ecx
L1254:
	movss	%xmm4, -64(%ebp)
	movss	-68(%ebp), %xmm4
	xorl	%eax, %eax
	movl	%ecx, %edi
	movss	%xmm6, -112(%ebp)
	movss	-100(%ebp), %xmm6
	.p2align 4
	.p2align 3
L1261:
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movss	-56(%ebp), %xmm7
	cvtsi2ssl	(%esi,%eax,4), %xmm1
	cvtsi2ssl	(%ebx,%eax,4), %xmm3
	movaps	%xmm1, %xmm0
	mulss	%xmm6, %xmm0
	mulss	%xmm3, %xmm7
	addss	%xmm7, %xmm0
	addss	%xmm4, %xmm0
	mulss	%xmm2, %xmm0
	comiss	%xmm5, %xmm0
	ja	L1259
	movss	-96(%ebp), %xmm0
	movss	-76(%ebp), %xmm7
	xorl	%edx, %edx
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm7
	mulss	-84(%ebp), %xmm1
	mulss	-88(%ebp), %xmm3
	addss	%xmm7, %xmm0
	addss	-72(%ebp), %xmm0
	mulss	-64(%ebp), %xmm0
	addss	%xmm3, %xmm1
	addss	-80(%ebp), %xmm1
	mulss	-112(%ebp), %xmm1
	comiss	%xmm5, %xmm0
	seta	%dl
	xorl	%ecx, %ecx
	addl	%edx, %edx
	comiss	%xmm5, %xmm1
	seta	%cl
	orl	%ecx, %edx
	testl	%edx, -108(%ebp)
	jne	L1251
L1259:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L1261
	jmp	L1241
	.p2align 4,,10
	.p2align 3
L1228:
	movaps	%xmm3, %xmm6
	subss	%xmm1, %xmm6
	divss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	movss	%xmm6, -100(%ebp)
	movaps	%xmm1, %xmm6
	mulss	%xmm0, %xmm4
	subss	%xmm4, %xmm6
	movss	%xmm6, -68(%ebp)
	movss	LC43, %xmm6
	movss	%xmm6, -56(%ebp)
	jmp	L1230
	.p2align 4,,10
	.p2align 3
L1234:
	movss	-104(%ebp), %xmm7
	movaps	%xmm3, %xmm6
	subss	%xmm7, %xmm6
	divss	%xmm4, %xmm6
	movss	-92(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	movss	%xmm6, -96(%ebp)
	movss	LC43, %xmm6
	movss	%xmm6, -76(%ebp)
	subss	%xmm4, %xmm7
	movss	%xmm7, -72(%ebp)
	cmpl	$3, -128(%ebp)
	jne	L1439
L1237:
	movl	$3, %eax
	movss	%xmm3, -116(%ebp)
	movss	%xmm2, -112(%ebp)
	movss	%xmm1, -108(%ebp)
	movss	%xmm0, -64(%ebp)
	call	__Z17polymost_setClampc
	movl	_spritesortcnt, %eax
	movss	-64(%ebp), %xmm0
	xorps	%xmm5, %xmm5
	movss	-108(%ebp), %xmm1
	movss	-112(%ebp), %xmm2
	testl	%eax, %eax
	movl	%eax, -52(%ebp)
	movss	-116(%ebp), %xmm3
	jne	L1238
	.p2align 4
	.p2align 3
L1240:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	jmp	L1426
	.p2align 4,,10
	.p2align 3
L1231:
	movss	-104(%ebp), %xmm7
	movaps	%xmm1, %xmm6
	subss	%xmm7, %xmm6
	divss	%xmm4, %xmm6
	movss	-92(%ebp), %xmm4
	mulss	%xmm6, %xmm4
	movss	%xmm6, -84(%ebp)
	movss	LC43, %xmm6
	movss	%xmm6, -88(%ebp)
	subss	%xmm4, %xmm7
	movss	%xmm7, -80(%ebp)
	jmp	L1233
	.p2align 4,,10
	.p2align 3
L1252:
	movl	-64(%ebp), %ebx
	movzwl	28(%ebx), %esi
	movw	%si, -138(%ebp)
	movl	%esi, %edx
	cmpw	$16, -112(%ebp)
	je	L1255
	movzwl	_globalang, %edx
	movw	%dx, 28(%ebx)
L1255:
	movl	-64(%ebp), %ebx
	movswl	14(%ebx), %edi
	movzbl	20(%ebx), %esi
	movsbl	22(%ebx), %ebx
	movl	%esi, -132(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %esi
	movswl	_tilesiz(,%edi,4), %edi
	addl	%ebx, %esi
	movl	%esi, %ebx
	negl	%ebx
	testb	$4, %al
	movl	%edx, %eax
	cmovne	%ebx, %esi
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %ebx
	leal	1536(%edx), %eax
	movl	-132(%ebp), %edx
	andl	$2047, %eax
	imull	-132(%ebp), %ebx
	movswl	_sintable(%eax,%eax), %eax
	imull	%eax, %edx
	movl	%edi, %eax
	sarl	%eax
	addl	%eax, %esi
	movl	%ebx, %eax
	movl	%edx, -132(%ebp)
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	movl	%ecx, -32(%ebp)
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%esi, %edx
	movl	-132(%ebp), %eax
	movl	%ecx, -28(%ebp)
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	-116(%ebp), %ecx
	movl	%edi, %edx
	subl	%eax, %ecx
	movl	-132(%ebp), %eax
	movl	%ecx, -48(%ebp)
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	%ecx, -44(%ebp)
	cmpw	$16, -112(%ebp)
	je	L1258
	movl	-64(%ebp), %eax
	movzwl	-138(%ebp), %esi
	movw	%si, 28(%eax)
L1258:
	movl	$2, %ecx
	leal	-48(%ebp), %ebx
	leal	-32(%ebp), %esi
	jmp	L1254
	.p2align 4,,10
	.p2align 3
L1434:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1264
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1264:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1265
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1265:
	movl	-52(%ebp), %eax
	cmpl	$3, _rendmode
	je	L1440
	call	_polymer_drawsprite
	xorps	%xmm5, %xmm5
	jmp	L1267
	.p2align 4,,10
	.p2align 3
L1437:
	movl	_rendmode, %esi
	movl	%ebx, _spritesortcnt
	testl	%esi, %esi
	jne	L1441
	movl	%ebx, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L1276:
	movl	_spritesortcnt, %ebx
	movl	$0, _tspriteptr(,%ebx,4)
	jmp	L1277
L1174:
	movl	-52(%ebp), %ecx
	movl	-80(%ebp), %esi
	subl	$1, %eax
	movl	%eax, _spritesortcnt
	cmpl	%esi, %ecx
	je	L1176
	movl	_tspriteptr(,%eax,4), %edx
	movl	%edx, _tspriteptr(,%ecx,4)
	leal	(%eax,%eax,2), %edx
	movl	-76(%ebp), %ecx
	movlps	__ZL10spritesxyz.lto_priv.0(,%edx,4), %xmm5
	movlps	%xmm5, (%ecx)
	movl	_tspriteptr(,%esi,4), %ecx
	movl	%ecx, _tspriteptr(,%eax,4)
	leal	(%esi,%esi,2), %eax
	movlps	__ZL10spritesxyz.lto_priv.0(,%eax,4), %xmm5
	movlps	%xmm5, __ZL10spritesxyz.lto_priv.0(,%edx,4)
	jmp	L1176
L1440:
	call	__Z19polymost_drawspritei
	xorps	%xmm5, %xmm5
	jmp	L1267
L1441:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1273
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1273:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1274
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1274:
	movl	%ebx, %eax
	cmpl	$3, _rendmode
	je	L1442
	call	_polymer_drawsprite
	jmp	L1276
L1429:
	movl	$0, _spritesortcnt
	testl	%esi, %esi
	jns	L1147
	call	_videoBeginDrawing
L1148:
	movl	$3, %eax
	call	__Z17polymost_setClampc
	movl	_spritesortcnt, %edi
	cmpl	%ebx, %edi
	jge	L1182
	leal	-1(%ebx), %esi
	cmpl	%esi, %edi
	jle	L1219
	jmp	L1182
	.p2align 4,,10
	.p2align 3
L1185:
	movl	_rendmode, %eax
	testl	%eax, %eax
	jne	L1443
	movl	%esi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L1204:
	movl	$0, _tspriteptr(,%esi,4)
	movl	%ebx, %esi
L1205:
	movl	_spritesortcnt, %edi
	cmpl	%edi, %ebx
	jl	L1182
L1219:
	movl	_tspriteptr(,%esi,4), %eax
	leal	-1(%esi), %ecx
	movl	%ecx, -64(%ebp)
	movl	%ecx, %ebx
	movl	%eax, -52(%ebp)
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L1185
	cmpl	%edi, %ebx
	jl	L1185
	movl	-52(%ebp), %edx
	leal	(%esi,%esi,2), %eax
	movl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %ecx
	movzwl	12(%edx), %eax
	movw	%ax, -52(%ebp)
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1417
	movzwl	28(%edx), %eax
	movl	%esi, -68(%ebp)
	movl	%ecx, %esi
	movw	%ax, -56(%ebp)
	jmp	L1192
	.p2align 4,,10
	.p2align 3
L1444:
	movl	_tspriteptr(,%ebx,4), %eax
	movzwl	-52(%ebp), %ecx
	xorw	12(%eax), %cx
	andl	$48, %ecx
	jne	L1420
	movzwl	-56(%ebp), %ecx
	cmpw	28(%eax), %cx
	jne	L1420
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L1420
	subl	$1, %ebx
	cmpl	%ebx, %edi
	jg	L1420
L1192:
	leal	(%ebx,%ebx,2), %eax
	cmpl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %esi
	je	L1444
L1420:
	movl	-68(%ebp), %esi
L1193:
	movl	%esi, %eax
	subl	%ebx, %eax
	cmpl	$1, %eax
	je	L1185
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	cmpl	%esi, %ebx
	jge	L1206
	movl	%esi, %edi
	jmp	L1212
	.p2align 4,,10
	.p2align 3
L1207:
	movl	%edi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L1211:
	leal	-1(%edi), %eax
	cmpl	%eax, %ebx
	je	L1445
L1298:
	movl	%eax, %edi
L1212:
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L1207
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1208
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1208:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1209
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1209:
	movl	%edi, %eax
	cmpl	$3, _rendmode
	je	L1446
	call	_polymer_drawsprite
	leal	-1(%edi), %eax
	cmpl	%eax, %ebx
	jne	L1298
L1445:
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	%ebx, -52(%ebp)
	movl	-64(%ebp), %ebx
	jmp	L1218
	.p2align 4,,10
	.p2align 3
L1213:
	movl	%esi, %eax
	call	__ZL17classicDrawSpritei.lto_priv.0
L1217:
	movl	$0, _tspriteptr(,%esi,4)
	cmpl	%esi, %edi
	je	L1447
L1299:
	movl	%ebx, %esi
	subl	$1, %ebx
L1218:
	movl	_rendmode, %eax
	testl	%eax, %eax
	je	L1213
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1214
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1214:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1215
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1215:
	movl	%esi, %eax
	cmpl	$3, _rendmode
	je	L1448
	call	_polymer_drawsprite
	movl	$0, _tspriteptr(,%esi,4)
	cmpl	%esi, %edi
	jne	L1299
L1447:
	movl	-52(%ebp), %ebx
L1292:
	movl	$1, 12(%esp)
	movl	%ebx, %esi
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L1205
L1182:
	xorl	%eax, %eax
	call	__Z17polymost_setClampc
	movswl	_maskwallcnt, %edi
	xorl	%ecx, %ecx
	movw	%cx, _maskwallcnt
	testl	%edi, %edi
	jle	L1220
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1450:
	movl	_usehightile, %edx
	testl	%edx, %edx
	je	L1222
	movzbl	21(%eax), %edx
	movswl	16(%eax), %eax
	movl	_palookup(,%edx,4), %ecx
	movl	$33, (%esp)
	testl	%ecx, %ecx
	cmove	%esi, %edx
	xorl	%ecx, %ecx
	call	_texcache_fetch
	testl	%eax, %eax
	je	L1222
	movzwl	34(%eax), %eax
	andw	$1032, %ax
	cmpw	$8, %ax
	je	L1449
L1222:
	movswl	%bx, %eax
	addl	$1, %ebx
	call	__ZL20renderDrawMaskedWalls.lto_priv.0
	cmpl	%ebx, %edi
	je	L1220
L1225:
	movswl	_maskwall(%ebx,%ebx), %eax
	movl	%eax, %edx
	movswl	_thewall(%eax,%eax), %eax
	sall	$5, %eax
	addl	_wall, %eax
	testb	$-128, 14(%eax)
	je	L1450
L1221:
	movswl	_maskwallcnt, %ecx
	addl	$1, %ebx
	movl	%ecx, %eax
	movw	%dx, _maskwall(%ecx,%ecx)
	addl	$1, %eax
	movw	%ax, _maskwallcnt
	cmpl	%ebx, %edi
	jne	L1225
L1220:
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	movzwl	_maskwallcnt, %edx
	subl	$4, %esp
	testw	%dx, %dx
	jne	L1424
L1226:
	movl	$3, %eax
	call	__Z17polymost_setClampc
	jmp	L1180
L1438:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1282
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1282:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1283
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1283:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1284
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$2884, %edx
	movl	$1, %ecx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	movl	_cursectormaskcount, %edx
	testl	%edx, %edx
	jne	L1427
	jmp	L1285
	.p2align 4,,10
	.p2align 3
L1287:
	movl	_cursectormasks, %ecx
	subl	$1, %eax
	movw	%ax, (%edx)
	cwtl
	movl	$1, %edx
	movswl	(%ecx,%eax,2), %eax
	call	_polymer_drawsector.lto_priv.0
	movl	_cursectormaskcount, %edx
L1427:
	movzwl	(%edx), %eax
	testw	%ax, %ax
	jne	L1287
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	_cursectormasks, %eax
	subl	$4, %esp
	movl	$0, _cursectormaskcount
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, _cursectormasks
L1285:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1288
L1291:
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1288:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1289
	movl	$3042, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1289:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1281
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
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
	jmp	_videoEndDrawing
L1147:
	.cfi_restore_state
	movl	-52(%ebp), %eax
	movl	_tsprite, %esi
	movl	%ebx, -72(%ebp)
	imull	$44, %eax, %edi
	movl	%eax, -68(%ebp)
	movl	%esi, -56(%ebp)
	movl	%eax, -64(%ebp)
	jmp	L1166
	.p2align 4,,10
	.p2align 3
L1149:
	movl	_usevoxels, %ecx
	testl	%ecx, %ecx
	je	L1155
	movswl	%si, %ecx
	movswl	_tiletovox(%ecx,%ecx), %ecx
	cmpl	$2047, %ecx
	ja	L1155
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	L1155
L1150:
	testb	$1, _voxflags(%ecx)
	jne	L1163
L1155:
	testb	$2, 12(%eax)
	jne	L1157
	andl	$2, %edx
	jne	L1157
	movswl	30(%eax), %edx
	cmpl	$16383, %edx
	ja	L1159
	sall	$6, %edx
	addl	_spriteext, %edx
	xorps	%xmm5, %xmm5
	ucomiss	8(%edx), %xmm5
	jp	L1157
	jne	L1157
L1159:
	movl	_usehightile, %ebx
	testl	%ebx, %ebx
	je	L1163
	movzbl	17(%eax), %edx
	xorl	%eax, %eax
	movl	_palookup(,%edx,4), %ecx
	movl	$5, (%esp)
	testl	%ecx, %ecx
	cmove	%eax, %edx
	movswl	%si, %eax
	xorl	%ecx, %ecx
	call	_texcache_fetch
	movl	%eax, %edx
	movl	_tsprite, %eax
	movl	%eax, -56(%ebp)
	addl	%edi, %eax
	testl	%edx, %edx
	je	L1163
	movzwl	34(%edx), %edx
	andw	$1032, %dx
	cmpw	$8, %dx
	je	L1157
L1163:
	movl	-68(%ebp), %esi
	subl	$1, -64(%ebp)
	subl	$44, %edi
	movl	%eax, _tspriteptr(,%esi,4)
	subl	$1, %esi
	movl	%esi, -68(%ebp)
	cmpl	$-1, -64(%ebp)
	je	L1451
L1166:
	movl	-56(%ebp), %eax
	addl	%edi, %eax
	movzbl	18(%eax), %edx
	movzwl	14(%eax), %esi
	testb	$16, %dl
	je	L1149
	movswl	%si, %ecx
	cmpl	$2047, %ecx
	ja	L1149
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	jne	L1150
	movl	_usevoxels, %ebx
	testl	%ebx, %ebx
	je	L1155
	movswl	_tiletovox(%ecx,%ecx), %ebx
	cmpl	$2047, %ebx
	ja	L1153
	cmpl	$0, _voxmodels(,%ebx,4)
	je	L1153
	testb	$1, _voxflags(%ebx)
	jne	L1163
L1153:
	movl	_voxmodels(,%ecx,4), %ebx
	testl	%ebx, %ebx
	je	L1155
	jmp	L1150
	.p2align 4,,10
	.p2align 3
L1157:
	movl	_spritesortcnt, %edx
	subl	$1, -64(%ebp)
	subl	$44, %edi
	movl	%eax, _tspriteptr(,%edx,4)
	addl	$1, %edx
	movl	%edx, _spritesortcnt
	cmpl	$-1, -64(%ebp)
	jne	L1166
L1451:
	movl	-72(%ebp), %ebx
	jmp	L1167
L1446:
	call	__Z19polymost_drawspritei
	jmp	L1211
L1448:
	call	__Z19polymost_drawspritei
	jmp	L1217
L1449:
	movzwl	_maskwall(%ebx,%ebx), %edx
	jmp	L1221
L1442:
	call	__Z19polymost_drawspritei
	jmp	L1276
L1443:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1201
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1201:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1202
	movl	$3042, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1202:
	movl	%esi, %eax
	cmpl	$3, _rendmode
	je	L1452
	call	_polymer_drawsprite
	jmp	L1204
L1417:
	movl	%esi, -56(%ebp)
	movl	%ecx, %esi
	jmp	L1186
	.p2align 4,,10
	.p2align 3
L1453:
	movl	_tspriteptr(,%ebx,4), %eax
	movzwl	-52(%ebp), %ecx
	xorw	12(%eax), %cx
	andl	$48, %ecx
	jne	L1428
	call	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype
	testl	%eax, %eax
	jne	L1428
	subl	$1, %ebx
	cmpl	%edi, %ebx
	jl	L1428
L1186:
	leal	(%ebx,%ebx,2), %eax
	cmpl	__ZL10spritesxyz.lto_priv.0+4(,%eax,4), %esi
	je	L1453
L1428:
	movl	-56(%ebp), %esi
	jmp	L1193
L1430:
	call	_videoBeginDrawing
	jmp	L1169
L1206:
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	jmp	L1292
L1284:
	movl	_cursectormaskcount, %edx
	testl	%edx, %edx
	jne	L1427
	jmp	L1291
L1452:
	call	__Z19polymost_drawspritei
	jmp	L1204
	.cfi_endproc
LFE181:
.lcomm _voxpal,768,32
.lcomm _maxvoxcol,1,1
	.globl	_glad_glDrawArrays
	.bss
	.align 4
_glad_glDrawArrays:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZL34FONT_ATLAS_DEFAULT_TEX_CURSOR_DATA:
	.long	0
	.long	1077936128
	.long	1094713344
	.long	1100480512
	.long	0
	.long	0
	.long	1095761920
	.long	0
	.long	1088421888
	.long	1098907648
	.long	1065353216
	.long	1090519040
	.long	1106771968
	.long	0
	.long	1102577664
	.long	1102577664
	.long	1093664768
	.long	1093664768
	.long	1101529088
	.long	0
	.long	1091567616
	.long	1102577664
	.long	1082130432
	.long	1093664768
	.long	1113325568
	.long	1099956224
	.long	1102577664
	.long	1091567616
	.long	1093664768
	.long	1082130432
	.long	1116864512
	.long	0
	.long	1099431936
	.long	1099431936
	.long	1090519040
	.long	1090519040
	.long	1113325568
	.long	0
	.long	1099431936
	.long	1099431936
	.long	1090519040
	.long	1090519040
	.long	1119223808
	.long	0
	.long	1099431936
	.long	1102053376
	.long	1084227584
	.long	0
	.long	1121583104
	.long	0
	.long	1095761920
	.long	1097859072
	.long	1086324736
	.long	1088421888
	.globl	__ZL21GImAllocatorAllocFunc.lto_priv.0
	.align 4
__ZL21GImAllocatorAllocFunc.lto_priv.0:
	.long	__ZL13MallocWrapperjPv.lto_priv.0
	.globl	__ZL20GImAllocatorUserData.lto_priv.0
	.align 4
__ZL20GImAllocatorUserData.lto_priv.0:
	.space 4
	.globl	__ZL20GImAllocatorFreeFunc.lto_priv.0
	.align 4
__ZL20GImAllocatorFreeFunc.lto_priv.0:
	.long	__ZL11FreeWrapperPvS_.lto_priv.0
	.globl	_GImGui
	.bss
	.align 4
_GImGui:
	.space 4
	.globl	__ZL8tsc_freq.lto_priv.0
	.align 8
__ZL8tsc_freq.lto_priv.0:
	.space 8
	.globl	__ZL9sys_timer.lto_priv.0
	.align 4
__ZL9sys_timer.lto_priv.0:
	.space 4
	.globl	__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0
	.align 32
__ZZ22windowsGetErrorMessagemE8lpMsgBuf.lto_priv.0:
	.space 1024
	.globl	_g_windowPos
	.align 4
_g_windowPos:
	.space 8
.lcomm __ZZ20windowsWaitForVBlankvE10useDWMsync,4,4
.lcomm __ZZ20windowsWaitForVBlankvE25gdi32_D3DKMTWaitForVBlank,4,4
.lcomm __ZZ20windowsWaitForVBlankvE24gdi32_D3DKMTCloseAdapter,4,4
.lcomm __ZZ20windowsWaitForVBlankvE30gdi32_D3DKMTOpenAdapterFromHdc,4,4
.lcomm __ZZ20windowsWaitForVBlankvE6hGDI32,4,4
	.globl	__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0
	.align 4
__ZL30dwmapi_DwmIsCompositionEnabled.lto_priv.0:
	.space 4
	.globl	__ZL15dwmapi_DwmFlush.lto_priv.0
	.align 4
__ZL15dwmapi_DwmFlush.lto_priv.0:
	.space 4
	.globl	__ZL4pPal.lto_priv.0
	.align 32
__ZL4pPal.lto_priv.0:
	.space 1024
	.globl	__ZL11sdl_surface.lto_priv.0
	.align 4
__ZL11sdl_surface.lto_priv.0:
	.space 4
	.globl	_offscreenrendering
_offscreenrendering:
	.space 1
	.globl	__ZL10sdl_window.lto_priv.0
	.align 4
__ZL10sdl_window.lto_priv.0:
	.space 4
.lcomm __ZZ14videoShowFrameE12nextSwapTime,8,8
.lcomm __ZGVZ14videoShowFrameE12nextSwapTime,8,8
	.globl	_glad_glFinish
	.align 4
_glad_glFinish:
	.space 4
	.globl	__ZL17vsync_renderlayer.lto_priv.0
	.align 4
__ZL17vsync_renderlayer.lto_priv.0:
	.space 4
	.globl	_g_ImGuiFrameActive
_g_ImGuiFrameActive:
	.space 1
	.globl	_palfadergb
	.align 4
_palfadergb:
	.space 4
	.globl	_palfadedelta
_palfadedelta:
	.space 1
	.globl	__ZL13sdl_minimized.lto_priv.0
	.align 4
__ZL13sdl_minimized.lto_priv.0:
	.space 4
	.globl	__ZL10sdl_resize.lto_priv.0
	.align 4
__ZL10sdl_resize.lto_priv.0:
	.space 8
.lcomm __ZZN7cache1d9ageBlocksEvE8agecount,4,4
.lcomm _omdtims,4,4
	.globl	_mdtims
	.align 4
_mdtims:
	.space 4
.lcomm _benchmarkScreenshot,4,4
	.globl	__ZL8permfifo.lto_priv.0
	.align 32
__ZL8permfifo.lto_priv.0:
	.space 22528
	.globl	_glad_glDeleteBuffers
	.align 4
_glad_glDeleteBuffers:
	.space 4
	.globl	_glad_glClearColor
	.align 4
_glad_glClearColor:
	.space 4
	.globl	_nextTreeNodeIndex
	.data
	.align 4
_nextTreeNodeIndex:
	.long	61441
	.globl	_nodes
	.bss
	.align 32
_nodes:
	.space 2214216
	.globl	_heapNodes
	.align 4
_heapNodes:
	.space 4
	.globl	_rejectQueue
	.align 32
_rejectQueue:
	.space 1105920
	.globl	_rejectQueueHeadIndex
	.align 4
_rejectQueueHeadIndex:
	.space 4
	.globl	_numRejected
	.align 4
_numRejected:
	.space 4
	.globl	_tiles
	.align 32
_tiles:
	.space 614420
	.globl	__ZL23polymost1PalswapSizeLoc.lto_priv.0
	.data
	.align 4
__ZL23polymost1PalswapSizeLoc.lto_priv.0:
	.long	-1
	.globl	_glad_glUniform2f
	.bss
	.align 4
_glad_glUniform2f:
	.space 4
	.globl	__ZL25polymost1PalswapInnerSize.lto_priv.0
	.align 4
__ZL25polymost1PalswapInnerSize.lto_priv.0:
	.space 8
	.globl	__ZL20polymost1PalswapSize.lto_priv.0
	.align 4
__ZL20polymost1PalswapSize.lto_priv.0:
	.space 8
.lcomm __ZZ13uploadpalswapiE14blackPixels256,256,32
	.globl	_glad_glTexParameterf
	.align 4
_glad_glTexParameterf:
	.space 4
	.globl	__ZL16palswapTextureID.lto_priv.0
	.align 4
__ZL16palswapTextureID.lto_priv.0:
	.space 4
	.globl	_TEXCACHEFILE
	.data
	.align 32
_TEXCACHEFILE:
	.ascii "texturecache\0"
	.space 243
.lcomm __ZZN3mio9page_sizeEvE9page_size,4,4
.lcomm __ZGVZN3mio9page_sizeEvE9page_size,8,8
	.globl	_glad_glEnableClientState
	.bss
	.align 4
_glad_glEnableClientState:
	.space 4
	.globl	__ZL23polymost1GlowSamplerLoc.lto_priv.0
	.data
	.align 4
__ZL23polymost1GlowSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL25polymost1DetailSamplerLoc.lto_priv.0
	.align 4
__ZL25polymost1DetailSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL26polymost1PaletteSamplerLoc.lto_priv.0
	.align 4
__ZL26polymost1PaletteSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL26polymost1PalSwapSamplerLoc.lto_priv.0
	.align 4
__ZL26polymost1PalSwapSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL22polymost1TexSamplerLoc.lto_priv.0
	.align 4
__ZL22polymost1TexSamplerLoc.lto_priv.0:
	.long	-1
	.globl	__ZL29polymost1BasicShaderProgramID.lto_priv.0
	.bss
	.align 4
__ZL29polymost1BasicShaderProgramID.lto_priv.0:
	.space 4
	.globl	__ZL32polymost1ExtendedShaderProgramID.lto_priv.0
	.align 4
__ZL32polymost1ExtendedShaderProgramID.lto_priv.0:
	.space 4
.lcomm __ZL11quadVertsID.lto_priv.1,4,4
	.globl	_glad_glTexSubImage2D
	.align 4
_glad_glTexSubImage2D:
	.space 4
	.globl	__ZL15tilesheetTexIDs.lto_priv.0
	.align 32
__ZL15tilesheetTexIDs.lto_priv.0:
	.space 256
.lcomm __ZZ15polymost_glinitvE13numTilesheets,4,4
	.globl	__ZL22tilesheetHalfTexelSize.lto_priv.0
	.align 4
__ZL22tilesheetHalfTexelSize.lto_priv.0:
	.space 8
	.globl	__ZL18tilesheetSizeRecip.lto_priv.0
	.align 4
__ZL18tilesheetSizeRecip.lto_priv.0:
	.space 4
.lcomm __ZL13tilesheetSize,4,4
	.globl	_glad_glBlendFunc
	.align 4
_glad_glBlendFunc:
	.space 4
	.globl	_glad_glFogi
	.align 4
_glad_glFogi:
	.space 4
	.globl	_glad_glHint
	.align 4
_glad_glHint:
	.space 4
	.globl	__ZL12voxfilenames.lto_priv.0
	.align 32
__ZL12voxfilenames.lto_priv.0:
	.space 8192
.lcomm _g_haveVoxels,1,1
	.globl	_curbrightness
	.align 4
_curbrightness:
	.space 4
	.globl	_g_lastpalettesum
	.align 8
_g_lastpalettesum:
	.space 8
	.globl	_g_displayindex
	.align 4
_g_displayindex:
	.space 4
	.globl	_glad_glUseProgram
	.align 4
_glad_glUseProgram:
	.space 4
	.globl	_glad_glActiveTexture
	.align 4
_glad_glActiveTexture:
	.space 4
	.globl	_g_glColorCorrection
	.data
	.align 4
_g_glColorCorrection:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.globl	_glad_glUniform4f
	.bss
	.align 4
_glad_glUniform4f:
	.space 4
	.globl	_glad_glUniform1i
	.align 4
_glad_glUniform1i:
	.space 4
	.data
	.align 4
__ZL18colorCorrectionLoc:
	.long	-1
	.align 4
__ZL17paletteSamplerLoc:
	.long	-1
	.align 4
__ZL13texSamplerLoc:
	.long	-1
	.globl	_glad_glGetUniformLocation
	.bss
	.align 4
_glad_glGetUniformLocation:
	.space 4
	.globl	_glad_glDeleteShader
	.align 4
_glad_glDeleteShader:
	.space 4
	.globl	_glad_glDetachShader
	.align 4
_glad_glDetachShader:
	.space 4
	.globl	_glad_glLinkProgram
	.align 4
_glad_glLinkProgram:
	.space 4
	.globl	_glad_glBindAttribLocation
	.align 4
_glad_glBindAttribLocation:
	.space 4
	.globl	_glad_glAttachShader
	.align 4
_glad_glAttachShader:
	.space 4
	.globl	_glad_glCreateProgram
	.align 4
_glad_glCreateProgram:
	.space 4
	.globl	__ZL15shaderProgramID.lto_priv.0
	.align 4
__ZL15shaderProgramID.lto_priv.0:
	.space 4
	.globl	_glad_glIsProgram
	.align 4
_glad_glIsProgram:
	.space 4
	.globl	_curpalettefaded
	.align 32
_curpalettefaded:
	.space 1024
	.globl	_glad_glTexImage2D
	.align 4
_glad_glTexImage2D:
	.space 4
	.globl	_glad_glTexParameteri
	.align 4
_glad_glTexParameteri:
	.space 4
	.globl	_glad_glGenTextures
	.align 4
_glad_glGenTextures:
	.space 4
	.globl	__ZL11bufferTexID.lto_priv.0
	.align 4
__ZL11bufferTexID.lto_priv.0:
	.space 4
	.globl	_glad_glIsTexture
	.align 4
_glad_glIsTexture:
	.space 4
	.globl	_glad_glEnableVertexAttribArray
	.align 4
_glad_glEnableVertexAttribArray:
	.space 4
	.globl	_glad_glVertexAttribPointer
	.align 4
_glad_glVertexAttribPointer:
	.space 4
	.globl	_glad_glBufferData
	.align 4
_glad_glBufferData:
	.space 4
	.globl	_glad_glGenBuffers
	.align 4
_glad_glGenBuffers:
	.space 4
	.globl	__ZL11quadVertsID.lto_priv.0
	.align 4
__ZL11quadVertsID.lto_priv.0:
	.space 4
	.globl	_glad_glIsBuffer
	.align 4
_glad_glIsBuffer:
	.space 4
.lcomm __ZL9bufferRes.lto_priv.0,8,8
	.globl	_glad_glPixelStorei
	.align 4
_glad_glPixelStorei:
	.space 4
	.globl	__ZL6buffer.lto_priv.0
	.align 4
__ZL6buffer.lto_priv.0:
	.space 4
	.globl	__ZL18scanPosLookupTable.lto_priv.0
	.align 4
__ZL18scanPosLookupTable.lto_priv.0:
	.space 4
	.globl	__ZL11recXScale16.lto_priv.0
	.align 4
__ZL11recXScale16.lto_priv.0:
	.space 4
	.globl	__ZL8yScale16.lto_priv.0
	.align 4
__ZL8yScale16.lto_priv.0:
	.space 4
	.globl	__ZL8xScale16.lto_priv.0
	.align 4
__ZL8xScale16.lto_priv.0:
	.space 4
	.globl	__ZL13destBufferRes.lto_priv.0
	.align 8
__ZL13destBufferRes.lto_priv.0:
	.space 8
	.globl	__ZL9bufferRes.lto_priv.1
	.align 8
__ZL9bufferRes.lto_priv.1:
	.space 8
	.globl	__ZL6buffer.lto_priv.1
	.align 4
__ZL6buffer.lto_priv.1:
	.space 4
	.globl	_yres
	.data
	.align 4
_yres:
	.long	-1
	.globl	_xres
	.align 4
_xres:
	.long	-1
.lcomm __ZL7lookups,4,4
	.globl	__ZL8bakdmost.lto_priv.0
	.bss
	.align 4
__ZL8bakdmost.lto_priv.0:
	.space 4
	.globl	__ZL8bakumost.lto_priv.0
	.align 4
__ZL8bakumost.lto_priv.0:
	.space 4
.lcomm _tilecols,30720,32
	.globl	_guniqhudid
	.align 4
_guniqhudid:
	.space 4
	.globl	__ZL16g_bakTileFileNum.lto_priv.0
	.align 4
__ZL16g_bakTileFileNum.lto_priv.0:
	.space 4
.lcomm _numgraysects,4,4
.lcomm _graywallbitmap,2048,32
.lcomm _graysectbitmap,512,32
	.data
	.align 32
__ZL7PADDING:
	.ascii "\200\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"
	.globl	_ornament
	.bss
	.align 32
_ornament:
	.space 262144
	.globl	_editwall
	.align 32
_editwall:
	.space 2048
.lcomm _g_loadedMapHack,28,4
.lcomm __ZZ24calc_sector_reachabilityE9tablesize,4,4
.lcomm __ZZ24calc_sector_reachabilityE7sectcrc,2,2
	.globl	__ZL16reachablesectors.lto_priv.0
	.align 4
__ZL16reachablesectors.lto_priv.0:
	.space 4
	.globl	_glad_glColorMask
	.align 4
_glad_glColorMask:
	.space 4
	.globl	_cursectormasks
	.align 4
_cursectormasks:
	.space 4
	.globl	_cursectormaskcount
	.align 4
_cursectormaskcount:
	.space 4
	.globl	_glad_glDepthMask
	.align 4
_glad_glDepthMask:
	.space 4
	.section .rdata,"dr"
	.align 16
LC6:
	.long	1732584193
	.long	-271733879
	.long	-1732584194
	.long	271733878
	.align 16
LC7:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.align 4
LC19:
	.long	1065353216
	.align 16
LC23:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC26:
	.long	1123418112
	.align 4
LC27:
	.long	1073741824
	.align 4
LC28:
	.long	1602224128
	.align 4
LC29:
	.long	1593835520
	.align 4
LC43:
	.long	-1082130432
	.align 4
LC45:
	.long	947912704
	.align 4
LC46:
	.long	956301312
	.align 4
LC50:
	.long	998277249
	.align 4
LC51:
	.long	1056964608
	.align 4
LC58:
	.long	1199570944
	.align 4
LC59:
	.long	973078528
	.align 4
LC60:
	.long	1040121856
	.set	LC67,LC7
	.align 4
LC72:
	.long	931135488
	.align 4
LC73:
	.long	1148846080
	.align 4
LC74:
	.long	1315859240
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_updatesector;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.9;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_kopen4load.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z14kread_internaliPviPKhPKiPi;	.scl	2;	.type	32;	.endef
	.def	_mi_collect.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kclose;	.scl	2;	.type	32;	.endef
	.def	_ktell;	.scl	2;	.type	32;	.endef
	.def	__Z20kfilelength_internaliPKhPiS1_.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z15klseek_internaliiiPKhPiS1_;	.scl	2;	.type	32;	.endef
	.def	_md4block;	.scl	2;	.type	32;	.endef
	.def	__ZL6EncodePhPKjj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_yax_setbunch;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_ExecPKc;	.scl	2;	.type	32;	.endef
	.def	__Z26windowsDwmSetupCompositioni.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_videoSetVsync;	.scl	2;	.type	32;	.endef
	.def	_compare_usermaphacks;	.scl	2;	.type	32;	.endef
	.def	_bsearch;	.scl	2;	.type	32;	.endef
	.def	_artClearMapArt.part.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_insertsprite;	.scl	2;	.type	32;	.endef
	.def	_deletesprite.isra.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_loadboard;	.scl	2;	.type	32;	.endef
	.def	_artSetupMapArt.part.0;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide32.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	__Z17glsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z20glsurface_setPalettePv.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL13compileShaderjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z19softsurface_destroyv;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.13;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_videoBeginDrawing;	.scl	2;	.type	32;	.endef
	.def	_videoEndDrawing;	.scl	2;	.type	32;	.endef
	.def	__Z8OSD_Drawv;	.scl	2;	.type	32;	.endef
	.def	__Z30softsurface_blitBufferInternalItEvPT_;	.scl	2;	.type	32;	.endef
	.def	_SDL_UnlockSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_UpdateWindowSurface;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetWindowSurface;	.scl	2;	.type	32;	.endef
	.def	__ZL14dorotatespriteiiissacihhiiiii.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18videoCaptureScreenPKcc;	.scl	2;	.type	32;	.endef
	.def	_SDL_GL_SwapWindow;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_resetStatev;	.scl	2;	.type	32;	.endef
	.def	_SDL_GetPerformanceFrequency;	.scl	2;	.type	32;	.endef
	.def	__Z26timerGetPerformanceCounterv;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui8EndFrameEv;	.scl	2;	.type	32;	.endef
	.def	__ZL13MallocWrapperjPv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11FreeWrapperPvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL19GetViewportDrawListP14ImGuiViewportPjPKc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL21AddDrawListToDrawDataP8ImVectorIP10ImDrawListES1_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__ZL19AddWindowToDrawDataP11ImGuiWindowi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGuiL34RenderDimmedBackgroundBehindWindowEP11ImGuiWindowj.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList12PushClipRectERK6ImVec2S2_b.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList7AddRectERK6ImVec2S2_jfif.part.0.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PopClipRectEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi;	.scl	2;	.type	32;	.endef
	.def	__Z32ImGui_ImplOpenGL3_RenderDrawDataP10ImDrawData;	.scl	2;	.type	32;	.endef
	.def	_SDL_LockSurface;	.scl	2;	.type	32;	.endef
	.def	__ZN5ImGui13IsWindowAboveEP11ImGuiWindowS1_;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList19_OnChangedTextureIDEv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList13PushTextureIDEPv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList11PrimReserveEii;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j;	.scl	2;	.type	32;	.endef
	.def	__Z11win_gethwndv;	.scl	2;	.type	32;	.endef
	.def	__ZN10ImDrawList10AddDrawCmdEv;	.scl	2;	.type	32;	.endef
	.def	_videoSetMode;	.scl	2;	.type	32;	.endef
	.def	__Z17OSD_ResizeDisplayii;	.scl	2;	.type	32;	.endef
	.def	_calc_ylookup;	.scl	2;	.type	32;	.endef
	.def	_videoSetViewableArea;	.scl	2;	.type	32;	.endef
	.def	_videoSetPalette;	.scl	2;	.type	32;	.endef
	.def	_polymost_glreset;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
	.def	__Z20uploadtextureindexedi4vec2IiES0_i;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL32polymost_setCurrentShaderProgramj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17uploadbasepalettei;	.scl	2;	.type	32;	.endef
	.def	__ZL23polymost2_compileShaderjPKcPi.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_texcache_init;	.scl	2;	.type	32;	.endef
	.def	_texcache_openfiles;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_texcache_enabled;	.scl	2;	.type	32;	.endef
	.def	_filelength;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V215system_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE5unmapEv;	.scl	2;	.type	32;	.endef
	.def	__ZN3mio10basic_mmapILNS_11access_modeE1EcE4syncILS1_1EEENSt9enable_ifIXeqT_LS1_1EEvE4typeERSt10error_code.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_gettoken;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getnumber;	.scl	2;	.type	32;	.endef
	.def	_hash_find;	.scl	2;	.type	32;	.endef
	.def	_hash_add;	.scl	2;	.type	32;	.endef
	.def	_paletteGetColor;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_texcache_invalidate;	.scl	2;	.type	32;	.endef
	.def	__Z18tilepacker_addTilejjj.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZL10kdtree_addjP8TreeNode.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL15rejectQueue_addP8TreeNode.isra.0;	.scl	2;	.type	32;	.endef
	.def	__ZL18maxheap_bubbleDownj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL11maxheap_popv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_voxvboalloc;	.scl	2;	.type	32;	.endef
	.def	_voxload;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	__ZNSt3_V216generic_categoryEv;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru13log_and_abortEiPKcS1_jS1_z.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN7cache1d13allocateBlockEPiiPc.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
	.def	_voxfree;	.scl	2;	.type	32;	.endef
	.def	_do_deletespritesect;	.scl	2;	.type	32;	.endef
	.def	_do_insertsprite_at_headofsect;	.scl	2;	.type	32;	.endef
	.def	_updatesectorz;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_yax_getneighborsect;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	__Z29polymost_spriteIsModelOrVoxelPK11tspritetype;	.scl	2;	.type	32;	.endef
	.def	__ZL11sortspritesii.part.0.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17classicDrawSpritei.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20renderDrawMaskedWalls.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17polymost_setClampc;	.scl	2;	.type	32;	.endef
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsprite;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_drawspritei;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
