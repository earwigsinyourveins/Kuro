	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__xfree
	.def	__xfree;	.scl	2;	.type	32;	.endef
__xfree:
LFB0:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	_COMMON_clearbackground
	.def	_COMMON_clearbackground;	.scl	2;	.type	32;	.endef
_COMMON_clearbackground:
LFB1:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	cmpl	$2, _rendmode
	jle	L5
	cmpl	$200, _qsetmode
	je	L28
L5:
	movl	36(%esp), %eax
	movl	%edi, 24(%esp)
	.cfi_offset 7, -8
	movl	_frameplace, %edi
	leal	8(,%eax,8), %ecx
	movl	_ydim, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	imull	_bytesperline, %ecx
	movzbl	_blackcol, %eax
	imull	$16843009, %eax, %eax
	sarl	$2, %ecx
/APP
 # 275 "source/build/src/common.cpp" 1
	rep; stosl
 # 0 "" 2
/NO_APP
	movl	24(%esp), %edi
	.cfi_restore 7
L4:
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L28:
	.cfi_restore_state
	movl	_gl, %eax
	cmpl	%eax, __ZL31polymost1CurrentShaderProgramID.lto_priv.0
	jne	L29
	xorps	%xmm0, %xmm0
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm0
	jp	L18
	je	L7
L18:
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, __ZL19polymost1FogEnabled.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 24
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	cmpl	%eax, _gl
	jne	L30
L7:
	movss	LC1, %xmm2
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm2
	movss	%xmm2, 16(%esp)
	jp	L10
	movl	_rendmode, %eax
	je	L9
L10:
	movss	16(%esp), %xmm3
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movss	%xmm3, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	movss	%xmm3, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 24
	movl	_rendmode, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
L9:
	cmpl	$2, %eax
	jg	L6
L12:
	movl	$0x3f2b851f, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glColor4f
	.cfi_def_cfa_offset 16
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_inthash_find
	cmpl	$1, %eax
	je	L13
	movl	$3042, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 28
	movl	$1, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$1, (%esp)
	call	_inthash_add
L13:
	movl	36(%esp), %eax
	movl	_xdim, %edx
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	leal	8(,%eax,8), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 12(%esp)
	movl	%eax, 20(%esp)
	call	*_glad_glRecti
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movss	16(%esp), %xmm1
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	%xmm1, 12(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glColor4f
	.cfi_def_cfa_offset 16
	movl	_xdim, %edx
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	20(%esp), %eax
	movl	%edx, 8(%esp)
	movl	$0, (%esp)
	movl	%eax, 12(%esp)
	subl	$4, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glRecti
	.cfi_def_cfa_offset 16
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	%eax, _gl
	jne	L4
	xorps	%xmm0, %xmm0
	ucomiss	__ZL21polymost1UseColorOnly.lto_priv.0, %xmm0
	jp	L20
	je	L15
L20:
	movl	__ZL24polymost1UseColorOnlyLoc.lto_priv.0, %eax
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, __ZL21polymost1UseColorOnly.lto_priv.0
	movl	%eax, (%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 24
	movl	__ZL31polymost1CurrentShaderProgramID.lto_priv.0, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	cmpl	%eax, _gl
	jne	L4
L15:
	movss	16(%esp), %xmm6
	ucomiss	__ZL19polymost1FogEnabled.lto_priv.0, %xmm6
	jp	L21
	je	L4
L21:
	movss	16(%esp), %xmm4
	movl	__ZL22polymost1FogEnabledLoc.lto_priv.0, %eax
	movss	%xmm4, __ZL19polymost1FogEnabled.lto_priv.0
	movl	%eax, (%esp)
	movss	%xmm4, 4(%esp)
	call	*_glad_glUniform1f
	.cfi_def_cfa_offset 24
	subl	$8, %esp
	.cfi_def_cfa_offset 32
	jmp	L4
	.p2align 4,,10
	.p2align 3
L29:
	movss	LC1, %xmm5
	movss	%xmm5, 16(%esp)
L6:
	call	_polymostSet2dView.part.0
	jmp	L12
L30:
	movss	LC1, %xmm7
	movl	_rendmode, %eax
	movss	%xmm7, 16(%esp)
	jmp	L9
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	_paletteGetClosestColorWithBlacklist
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
_paletteGetClosestColorWithBlacklist:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	%edx, 12(%esp)
	movl	72(%esp), %eax
	cmpl	%eax, __ZL15cache_lastokcol
	jne	L32
	movl	76(%esp), %ebx
	testl	%ebx, %ebx
	je	L81
	movl	76(%esp), %eax
	movl	$32, 8(%esp)
	movl	$__ZL15cache_blacklist, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 16(%esp)
	call	_memcmp
	movl	16(%esp), %ecx
	testl	%eax, %eax
	jne	L34
L39:
	movl	12(%esp), %edx
	movl	%ecx, %eax
	movl	__ZL18numcolmatchresults.lto_priv.0, %ebx
	sall	$16, %eax
	orl	%esi, %eax
	sall	$8, %edx
	movl	%ebx, 44(%esp)
	orl	%edx, %eax
	movl	%eax, %ebp
	testl	%ebx, %ebx
	je	L41
	movl	44(%esp), %ebx
	leal	-1(%ebx), %eax
	andl	$4095, %eax
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	movl	%edx, %eax
	shrl	$24, %edx
	andl	$16777215, %eax
	movl	%edx, 24(%esp)
	cmpl	%ebp, %eax
	je	L31
	movl	$4096, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, %edi
	leal	-3(%eax), %ebx
	xorl	%eax, %eax
	cmpl	$3, %edx
	jle	L44
	movl	%edi, 16(%esp)
	jmp	L49
	.p2align 4,,10
	.p2align 3
L117:
	movl	__ZL15colmatchresults.lto_priv.0+4(,%eax,4), %edx
	movl	%edx, %edi
	andl	$16777215, %edi
	cmpl	%ebp, %edi
	je	L47
	movl	__ZL15colmatchresults.lto_priv.0+8(,%eax,4), %edx
	movl	%edx, %edi
	andl	$16777215, %edi
	cmpl	%ebp, %edi
	je	L47
	movl	__ZL15colmatchresults.lto_priv.0+12(,%eax,4), %edx
	andl	$16777215, %edx
	cmpl	%ebp, %edx
	je	L115
	addl	$4, %eax
	cmpl	%ebx, %eax
	jge	L116
L49:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	andl	$16777215, %edx
	cmpl	%ebp, %edx
	jne	L117
L46:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
L47:
	shrl	$24, %edx
	cmpl	%edx, 72(%esp)
	jb	L41
	movl	76(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%edx, %ebx
	testl	%eax, %eax
	je	L31
	movl	76(%esp), %edi
	movl	%edx, %eax
	sarl	$3, %ebx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.5(%eax), %eax
	movzbl	(%edi,%ebx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	jne	L31
	.p2align 4
	.p2align 3
L41:
	movl	%esi, %eax
	movl	12(%esp), %edx
	movl	$-1, 24(%esp)
	sarl	$3, %eax
	sarl	$3, %edx
	sall	$5, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	sall	$5, %eax
	sarl	$3, %edx
	leal	1057(%eax,%edx), %edi
	movl	%esi, %eax
	movl	%ecx, %edx
	andl	$7, %eax
	andl	$7, %edx
	movzbl	__ZL7coldist.lto_priv.0(%eax), %eax
	movzbl	__ZL7coldist.lto_priv.0(%edx), %edx
	movl	__ZL5rdist.lto_priv.0+1024(,%eax,4), %eax
	movl	__ZL5bdist.lto_priv.0+1024(,%edx,4), %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	12(%esp), %edx
	andl	$7, %edx
	movzbl	__ZL7coldist.lto_priv.0(%edx), %edx
	movl	__ZL5gdist.lto_priv.0+1024(,%edx,4), %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	leal	1(%eax), %ebx
	movl	$256, %eax
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%eax, %esi
	subl	%ecx, %eax
	subl	12(%esp), %esi
	movl	%eax, 32(%esp)
	movl	76(%esp), %eax
	movl	$26, %ecx
	movl	%edx, 28(%esp)
	movl	%esi, 20(%esp)
	testl	%eax, %eax
	je	L118
	movl	%ebp, 48(%esp)
	movl	%ebx, %ebp
	jmp	L54
	.p2align 6
	.p2align 4,,10
	.p2align 3
L64:
	subl	$1, %ecx
	jb	L119
L54:
	movl	__ZL7colscan.lto_priv.0(,%ecx,4), %eax
	addl	%edi, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	andl	$7, %edx
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.5(%edx), %edx
	movzbl	__ZL7colhere.lto_priv.0(%esi), %esi
	andl	%edx, %esi
	movl	%esi, %ebx
	cmpb	%bl, %dl
	jne	L64
	movl	%edi, 36(%esp)
	movzbl	__ZL7colhead.lto_priv.0(%eax), %eax
	movl	%ecx, 40(%esp)
	movl	%ebp, 16(%esp)
	.p2align 4
	.p2align 3
L68:
	leal	(%eax,%eax,2), %ecx
	movzbl	__ZL16colmatch_palette.lto_priv.0+1(%ecx), %edx
	addl	20(%esp), %edx
	leal	__ZL16colmatch_palette.lto_priv.0(%ecx), %esi
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	movl	%edx, 12(%esp)
	cmpl	16(%esp), %edx
	jge	L67
	cmpl	%eax, 72(%esp)
	jl	L67
	movl	76(%esp), %ebx
	movl	%eax, %edi
	movl	%eax, %ebp
	andl	$7, %edi
	sarl	$3, %ebp
	movzbl	__ZL8pow2char.lto_priv.5(%edi), %edi
	movzbl	(%ebx,%ebp), %ebp
	andl	%edi, %ebp
	movl	%edi, %ebx
	movl	%ebp, %edx
	cmpb	%dl, %bl
	je	L67
	movzbl	__ZL16colmatch_palette.lto_priv.0(%ecx), %ecx
	movl	16(%esp), %edi
	addl	28(%esp), %ecx
	movl	12(%esp), %edx
	addl	__ZL5rdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%edi, %edx
	jge	L67
	movzbl	2(%esi), %ecx
	addl	32(%esp), %ecx
	addl	__ZL5bdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%edi, %edx
	cmovge	%edi, %edx
	movl	24(%esp), %edi
	cmovl	%eax, %edi
	movl	%edx, 16(%esp)
	movl	%edi, 24(%esp)
L67:
	movl	__ZL7colnext.lto_priv.0(,%eax,4), %eax
	testl	%eax, %eax
	jns	L68
	movl	40(%esp), %ecx
	movl	36(%esp), %edi
	movl	16(%esp), %ebp
	subl	$1, %ecx
	jnb	L54
L119:
	movl	24(%esp), %edx
	movl	48(%esp), %ebp
	testl	%edx, %edx
	jns	L74
	movl	72(%esp), %eax
	movl	$2147483647, 12(%esp)
	movl	%ebp, 16(%esp)
	movl	76(%esp), %ebp
	leal	1(%eax), %edi
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L78:
	movl	%eax, %edx
	movl	%eax, %ebx
	andl	$7, %edx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.5(%edx), %edx
	movzbl	0(%ebp,%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L76
	leal	(%eax,%eax,2), %ebx
	movzbl	__ZL16colmatch_palette.lto_priv.0+1(%ebx), %edx
	addl	20(%esp), %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	12(%esp), %edx
	jge	L76
	movzbl	__ZL16colmatch_palette.lto_priv.0(%ebx), %esi
	addl	28(%esp), %esi
	addl	__ZL5rdist.lto_priv.0(,%esi,4), %edx
	movl	12(%esp), %esi
	cmpl	%esi, %edx
	jge	L76
	movzbl	__ZL16colmatch_palette.lto_priv.0+2(%ebx), %ebx
	addl	32(%esp), %ebx
	addl	__ZL5bdist.lto_priv.0(,%ebx,4), %edx
	movl	24(%esp), %ebx
	cmpl	%esi, %edx
	cmovge	%esi, %edx
	cmovl	%eax, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, 24(%esp)
L76:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L78
L114:
	movl	16(%esp), %ebp
L74:
	movl	44(%esp), %ebx
	leal	1(%ebx), %eax
	andl	$4095, %ebx
	movl	%eax, __ZL18numcolmatchresults.lto_priv.0
	movl	24(%esp), %eax
	sall	$24, %eax
	orl	%ebp, %eax
	movl	%eax, __ZL15colmatchresults.lto_priv.0(,%ebx,4)
L31:
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
L32:
	.cfi_restore_state
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	movl	%ecx, 16(%esp)
	call	_memset
	movl	72(%esp), %eax
	movl	16(%esp), %ecx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	movl	%eax, __ZL15cache_lastokcol
	movl	76(%esp), %eax
	testl	%eax, %eax
	je	L40
L37:
	movl	76(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, __ZL15cache_blacklist
	movl	76(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+4
	movl	76(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+8
	movl	76(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+12
	movl	76(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+16
	movl	76(%esp), %eax
	movl	20(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+20
	movl	76(%esp), %eax
	movl	24(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+24
	movl	76(%esp), %eax
	movl	28(%eax), %eax
	movl	%eax, __ZL15cache_blacklist+28
L113:
	movl	12(%esp), %edx
	movl	%ecx, %eax
	movl	$0, 44(%esp)
	sall	$16, %eax
	orl	%esi, %eax
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, %ebp
	jmp	L41
L38:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	movl	%ecx, 16(%esp)
	call	_memset
	movl	16(%esp), %ecx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
L40:
	movl	$0, __ZL15cache_blacklist
	movl	$0, __ZL15cache_blacklist+4
	movl	$0, __ZL15cache_blacklist+8
	movl	$0, __ZL15cache_blacklist+12
	movl	$0, __ZL15cache_blacklist+16
	movl	$0, __ZL15cache_blacklist+20
	movl	$0, __ZL15cache_blacklist+24
	movl	$0, __ZL15cache_blacklist+28
	jmp	L113
L118:
	movl	%ebp, 40(%esp)
	movl	%esi, %ebp
	movl	%ebx, 12(%esp)
	jmp	L62
	.p2align 6
	.p2align 4,,10
	.p2align 3
L55:
	subl	$1, %ecx
	jb	L120
L62:
	movl	__ZL7colscan.lto_priv.0(,%ecx,4), %eax
	addl	%edi, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	andl	$7, %edx
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.5(%edx), %edx
	movzbl	__ZL7colhere.lto_priv.0(%esi), %esi
	andl	%edx, %esi
	movl	%esi, %ebx
	cmpb	%dl, %bl
	jne	L55
	movzbl	__ZL7colhead.lto_priv.0(%eax), %eax
	movl	12(%esp), %ebx
	movl	%edi, 16(%esp)
	movl	%ecx, 36(%esp)
	.p2align 4
	.p2align 3
L59:
	leal	(%eax,%eax,2), %esi
	movzbl	__ZL16colmatch_palette.lto_priv.0+1(%esi), %edx
	leal	__ZL16colmatch_palette.lto_priv.0(%esi), %edi
	addl	%ebp, %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	%ebx, %edx
	jge	L58
	cmpl	%eax, 72(%esp)
	jl	L58
	movzbl	__ZL16colmatch_palette.lto_priv.0(%esi), %esi
	addl	28(%esp), %esi
	addl	__ZL5rdist.lto_priv.0(,%esi,4), %edx
	cmpl	%ebx, %edx
	jge	L58
	movzbl	2(%edi), %esi
	addl	32(%esp), %esi
	movl	24(%esp), %edi
	addl	__ZL5bdist.lto_priv.0(,%esi,4), %edx
	cmpl	%ebx, %edx
	cmovl	%eax, %edi
	cmovl	%edx, %ebx
	movl	%edi, 24(%esp)
L58:
	movl	__ZL7colnext.lto_priv.0(,%eax,4), %eax
	testl	%eax, %eax
	jns	L59
	movl	36(%esp), %ecx
	movl	16(%esp), %edi
	movl	%ebx, 12(%esp)
	subl	$1, %ecx
	jnb	L62
L120:
	movl	24(%esp), %eax
	movl	40(%esp), %ebp
	testl	%eax, %eax
	jns	L74
	movl	72(%esp), %eax
	movl	%ebp, 16(%esp)
	movl	$2147483647, %esi
	movl	20(%esp), %ebp
	leal	1(%eax), %edi
	xorl	%eax, %eax
	movl	%edi, 12(%esp)
	.p2align 4
	.p2align 3
L73:
	movzbl	__ZL16colmatch_palette.lto_priv.0+1(%eax,%eax,2), %edx
	addl	%ebp, %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	%esi, %edx
	jge	L71
	movzbl	__ZL16colmatch_palette.lto_priv.0(%eax,%eax,2), %ebx
	addl	28(%esp), %ebx
	addl	__ZL5rdist.lto_priv.0(,%ebx,4), %edx
	cmpl	%esi, %edx
	jge	L71
	movzbl	__ZL16colmatch_palette.lto_priv.0+2(%eax,%eax,2), %ecx
	addl	32(%esp), %ecx
	movl	24(%esp), %ebx
	addl	__ZL5bdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%esi, %edx
	cmovl	%eax, %ebx
	cmovl	%edx, %esi
	movl	%ebx, 24(%esp)
L71:
	addl	$1, %eax
	cmpl	12(%esp), %eax
	jne	L73
	jmp	L114
L34:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	movl	%ecx, 16(%esp)
	call	_memset
	movl	16(%esp), %ecx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	jmp	L37
L81:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L33:
	movl	__ZL15cache_blacklist(,%eax,4), %edx
	testl	%edx, %edx
	jne	L38
	addl	$1, %eax
	cmpl	$8, %eax
	jne	L33
	jmp	L39
L116:
	movl	16(%esp), %edi
L44:
	cmpl	%edi, %eax
	jge	L41
	.p2align 5
	.p2align 4
	.p2align 3
L50:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	movl	%edx, %ebx
	andl	$16777215, %ebx
	cmpl	%ebp, %ebx
	je	L47
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L50
	jmp	L41
L115:
	addl	$3, %eax
	jmp	L46
	.cfi_endproc
LFE9:
	.section .rdata,"dr"
LC3:
	.ascii "File %s not found\0"
LC4:
	.ascii "source/build/src/common.cpp\0"
	.text
	.p2align 4
	.globl	_check_file_exist
	.def	_check_file_exist;	.scl	2;	.type	32;	.endef
_check_file_exist:
LFB12:
	.cfi_startproc
	subl	$292, %esp
	.cfi_def_cfa_offset 296
	leal	20(%esp), %edx
	movl	%ebx, 280(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%esi, 284(%esp)
	.cfi_offset 6, -12
	movl	_pathsearchmode, %esi
	movl	$1, _pathsearchmode
	call	_findfrompath
	cmpl	$-1, %eax
	je	L129
	movl	20(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 292
	subl	$4, %esp
	.cfi_def_cfa_offset 296
L126:
	movl	%esi, _pathsearchmode
	xorl	%eax, %eax
L121:
	movl	280(%esp), %ebx
	movl	284(%esp), %esi
	addl	$292, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L129:
	.cfi_restore_state
	movl	%edi, 288(%esp)
	.cfi_offset 7, -8
	leal	24(%esp), %edi
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_strcpy
	movl	%edi, %eax
	call	_kzfindfilestart
	movl	%edi, %eax
	call	_kzfindfile
	testl	%eax, %eax
	je	L130
	movl	288(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L126
	.p2align 4,,10
	.p2align 3
L130:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L131
L124:
	movl	%esi, _pathsearchmode
	movl	288(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$1, %eax
	jmp	L121
	.p2align 4,,10
	.p2align 3
L131:
	.cfi_restore_state
	movl	%ebx, 16(%esp)
	movl	$LC3, 12(%esp)
	movl	$158, 8(%esp)
	movl	$LC4, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L124
	.cfi_endproc
LFE12:
	.p2align 4
	.globl	_ldist
	.def	_ldist;	.scl	2;	.type	32;	.endef
_ldist:
LFB14:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %ecx
	movl	(%eax), %eax
	subl	4(%edx), %ecx
	subl	(%edx), %eax
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
	je	L132
	testl	%edx, %edx
	je	L135
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -8
	movl	%eax, %ecx
	cmpl	%eax, %edx
	jge	L134
	movl	%esp, %eax
	leal	4(%esp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	4(%esp), %ecx
	movl	(%esp), %edx
L134:
	movl	%ecx, %eax
	sarl	%eax
	leal	(%eax,%ecx), %ebx
	movl	%edx, %ecx
	movl	%edx, %eax
	sarl	$7, %edx
	sarl	$5, %ecx
	subl	%ecx, %eax
	movl	%ebx, %ecx
	sarl	$6, %ebx
	subl	%edx, %eax
	sarl	$2, %ecx
	addl	%ecx, %eax
	leal	(%ebx,%eax), %edx
	movl	8(%esp), %ebx
	.cfi_restore 3
L132:
	movl	%edx, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L135:
	.cfi_restore_state
	movl	%eax, %edx
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.globl	_dist
	.def	_dist;	.scl	2;	.type	32;	.endef
_dist:
LFB16:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	8(%eax), %ecx
	movl	4(%eax), %ebx
	subl	8(%edx), %ecx
	movl	(%eax), %eax
	subl	4(%edx), %ebx
	subl	(%edx), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, (%esp)
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 4(%esp)
	movl	%eax, %ebx
	movl	%ecx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 8(%esp)
	cmpl	%ebx, %edx
	jge	L141
	movl	%esp, %eax
	leal	4(%esp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	(%esp), %edx
	movl	8(%esp), %eax
L141:
	cmpl	%eax, %edx
	jge	L142
	movl	%esp, %eax
	leal	8(%esp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	8(%esp), %eax
	movl	(%esp), %edx
L142:
	movl	%edx, %ecx
	addl	4(%esp), %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	sarl	$4, %ecx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	subl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%edx, %eax
	ret
	.cfi_endproc
LFE16:
	.p2align 4
	.globl	_Paths_ReadRegistryValue.constprop.0
	.def	_Paths_ReadRegistryValue.constprop.0;	.scl	2;	.type	32;	.endef
_Paths_ReadRegistryValue.constprop.0:
LFB19:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	$512, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$60, %esp
	movl	%eax, -36(%ebp)
	movl	(%edi), %eax
	movl	$256, %edi
	movl	%edx, -40(%ebp)
	movl	%eax, -32(%ebp)
	movl	%esi, -24(%ebp)
	leal	-24(%ebp), %esi
	movl	%edi, -20(%ebp)
	leal	-28(%ebp), %edi
L146:
	movl	%edi, 16(%esp)
	movl	(%esi), %eax
	movl	$0, 8(%esp)
	orl	$131097, %eax
	movl	$0, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$-2147483646, (%esp)
	call	*__imp__RegOpenKeyExA@20
	subl	$20, %esp
	testl	%eax, %eax
	jne	L148
	movl	-32(%ebp), %eax
	movl	%ebx, 16(%esp)
	movl	$0, 12(%esp)
	movl	%eax, 20(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__SHGetValueA@24
	subl	$24, %esp
	movl	%eax, -44(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	*__imp__RegCloseKey@4
	movl	-44(%ebp), %eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L151
L148:
	addl	$4, %esi
	leal	-16(%ebp), %eax
	cmpl	%eax, %esi
	jne	L146
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
L151:
	.cfi_restore_state
	leal	-12(%ebp), %esp
	movl	$1, %eax
	popl	%ebx
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
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
LC9:
	.ascii "%s\0"
LC10:
	.ascii "source/build/include/print.h\0"
	.text
	.p2align 4
	.globl	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0
	.def	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %edx
	movl	$1040, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	___chkstk_ms
	subl	%eax, %esp
	movl	$8308, %eax
	leal	35(%esp), %ebx
	andl	$-16, %ebx
	movw	%ax, 4(%ebx)
	leal	6(%ebx), %eax
	movl	$1818850626, (%ebx)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	%ebx, (%esp)
	call	_strlen
	movl	$13873, %edx
	movb	$0, -16(%ebp)
	movl	$1128734764, (%ebx,%eax)
	movw	%dx, -18(%ebp)
	leal	-18(%ebp), %edx
	movl	$2114371, 3(%ebx,%eax)
	leal	6(%ebx,%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_strcpy
	movl	%ebx, (%esp)
	call	_strlen
	movl	$46, %ecx
	movl	$50, %edx
	movb	$0, _g_useLogCallback
	movw	%cx, (%ebx,%eax)
	movl	$46, %ecx
	movw	%dx, 1(%ebx,%eax)
	movl	$48, %edx
	movw	%cx, 2(%ebx,%eax)
	movl	$48, %ecx
	movw	%dx, -18(%ebp)
	movl	$1953063469, 8(%ebx,%eax)
	movw	%cx, 3(%ebx,%eax)
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$842211372, 4(%ebx,%eax)
	movb	$0, 12(%ebx,%eax)
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%eax, %eax
	js	L153
	movl	%ebx, 16(%esp)
	movl	$LC9, 12(%esp)
	movl	$196, 8(%esp)
	movl	$LC10, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L153:
	movl	%ebx, %eax
	movb	$1, _g_useLogCallback
	call	_initputs
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.p2align 4
	.globl	__Z13handle_memerri
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
__Z13handle_memerri:
LFB50:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L156
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %ebx
	testl	%ebx, %ebx
	je	L156
	movl	372(%ebx), %eax
	testl	%eax, %eax
	je	L157
	call	_mi_free
L157:
	movl	%ebx, %eax
	call	_mi_free
L156:
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE50:
	.p2align 4
	.globl	__xstrdup
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
__xstrdup:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%eax, (%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %esi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	je	L170
	movl	%edi, 4(%esp)
	movl	%eax, %ebx
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%ebx,%esi)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
L170:
	.cfi_restore_state
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE57:
	.p2align 4
	.globl	__xmalloc
	.def	__xmalloc;	.scl	2;	.type	32;	.endef
__xmalloc:
LFB58:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %ecx
	movl	8(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	testl	%eax, %eax
	je	L175
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L175:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE58:
	.p2align 4
	.globl	__xcalloc
	.def	__xcalloc;	.scl	2;	.type	32;	.endef
__xcalloc:
LFB59:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 24
	movl	_g_sm_heap, %ecx
	movl	24(%esp), %esi
	imull	28(%esp), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L181
	movl	%esi, 8(%esp)
	movl	%eax, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
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
	ret
	.p2align 4,,10
	.p2align 3
L181:
	.cfi_restore_state
	movl	28(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE59:
	.p2align 4
	.globl	__xrealloc
	.def	__xrealloc;	.scl	2;	.type	32;	.endef
__xrealloc:
LFB60:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	_g_sm_heap, %ecx
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -16
	movl	36(%esp), %ebx
	movl	%esi, 24(%esp)
	.cfi_offset 6, -12
	movl	40(%esp), %esi
	cmpl	$16384, %ebx
	jbe	L205
	testl	%esi, %esi
	je	L206
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jnb	L187
	addl	$1, %eax
	movl	%edi, 28(%esp)
	sall	$4, %eax
	.cfi_offset 7, -8
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L188
L194:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %edx
L182:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	movl	%edx, %eax
	addl	$32, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L187:
	.cfi_restore_state
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L207
	movl	%ebx, %edx
	movl	%ebx, %eax
	movl	%edi, 28(%esp)
	andl	$7, %edx
	movl	%edx, 12(%esp)
	.cfi_offset 7, -8
	call	_mi_usable_size
	movl	12(%esp), %edx
	cmpl	%esi, %eax
	movl	%eax, %edi
	jb	L193
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L193
	leal	(%edx,%ebx), %eax
	testb	$7, %al
	je	L194
L193:
	movl	%fs:44, %ecx
	movl	__tls_index, %eax
	movl	(%ecx,%eax,4), %eax
	movl	$8, %ecx
	movl	__mi_heap_default@secrel32(%eax), %eax
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L192
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovbe	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L195
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L196:
	movl	%ebx, %eax
	movl	%edx, 12(%esp)
	call	_mi_free
	movl	12(%esp), %edx
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$32, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L205:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
L184:
	testl	%edx, %edx
	jne	L182
	testl	%esi, %esi
	je	L182
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
L192:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L207:
	.cfi_restore 7
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	call	_mi_usable_size
	movl	12(%esp), %edx
	movl	%ebx, 4(%esp)
	cmpl	%eax, %esi
	cmovbe	%esi, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memmove
	movl	%ebx, %eax
	call	_mi_free
	movl	12(%esp), %edx
	jmp	L184
	.p2align 4,,10
	.p2align 3
L188:
	.cfi_offset 7, -8
	movl	%esi, (%esp)
	movl	%ecx, 16(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%edi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memmove
	movl	%ebx, (%esp)
	movl	16(%esp), %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	12(%esp), %edx
	movl	28(%esp), %edi
	.cfi_restore 7
	jmp	L184
	.p2align 4,,10
	.p2align 3
L206:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L182
	.p2align 4,,10
	.p2align 3
L195:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L196
	.cfi_endproc
LFE60:
	.p2align 4
	.globl	_Bstrtoken.constprop.0
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
_Bstrtoken.constprop.0:
LFB81:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L230
	movl	%esi, 12(%esp)
	movl	%eax, %ebx
	movl	%edi, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
L209:
	movzbl	(%ebx), %eax
	movl	%ecx, %edi
	movl	%edx, %esi
	testb	%al, %al
	jne	L213
	jmp	L211
	.p2align 4,,10
	.p2align 3
L231:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	je	L211
L213:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L231
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L211
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%ebx, %ebp
	jmp	L214
	.p2align 4,,10
	.p2align 3
L215:
	movzbl	1(%ebp), %eax
	addl	$1, %ebp
	testb	%al, %al
	je	L216
L214:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L215
	cmpb	$0, 0(%ebp)
	je	L216
	movb	$0, 0(%ebp)
	addl	$1, %ebp
	movl	%ebp, (%edi)
L218:
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	20(%esp), %ebp
	.cfi_restore 5
L208:
	movl	8(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L216:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, (%edi)
	jmp	L218
	.p2align 4,,10
	.p2align 3
L230:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	(%ecx), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L208
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L209
	.p2align 4,,10
	.p2align 3
L211:
	movl	$0, (%edi)
	xorl	%eax, %eax
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	8(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE81:
	.section .rdata,"dr"
LC11:
	.ascii "/\0"
	.text
	.p2align 4
	.globl	_Bcorrectfilename.isra.0
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
_Bcorrectfilename.isra.0:
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
	movl	%eax, %ebx
	subl	$284, %esp
	.cfi_def_cfa_offset 304
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	call	_strlen
	movl	_g_sm_heap, %ecx
	leal	1(%eax), %ebp
	movl	%eax, %edi
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 300
	subl	$4, %esp
	.cfi_def_cfa_offset 304
	testl	%eax, %eax
	je	L233
	movl	%ebx, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movzbl	(%esi), %edx
	movl	%esi, %eax
	movl	$0, 24(%esp)
	testb	%dl, %dl
	je	L253
	.p2align 5
	.p2align 4
	.p2align 3
L234:
	cmpb	$92, %dl
	jne	L236
	movb	$47, (%eax)
L236:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L234
	movzbl	(%esi), %edx
	cmpl	%eax, %esi
	jnb	L253
	cmpb	$47, -1(%eax)
	sete	%al
	setne	19(%esp)
	movl	%eax, %ebp
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
L235:
	movl	%ebx, 12(%esp)
	movl	%esi, %eax
	xorl	%edi, %edi
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L237:
	leal	24(%esp), %ecx
	movl	$LC11, %edx
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	je	L238
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L241
	cmpb	$46, %dl
	je	L281
L240:
	movl	%eax, 28(%esp,%edi,4)
	addl	$1, %edi
L241:
	xorl	%eax, %eax
	jmp	L237
L253:
	movb	$1, 19(%esp)
	xorl	%ebp, %ebp
	movl	$0, 20(%esp)
	jmp	L235
	.p2align 4,,10
	.p2align 3
L281:
	movzbl	1(%eax), %edx
	testb	%dl, %dl
	je	L241
	cmpb	$46, %dl
	jne	L240
	cmpb	$0, 2(%eax)
	jne	L240
	subl	$1, %edi
	movl	$0, %eax
	cmovs	%eax, %edi
	xorl	%eax, %eax
	jmp	L237
	.p2align 4,,10
	.p2align 3
L238:
	movl	%ebx, %edx
	movzbl	19(%esp), %eax
	movl	12(%esp), %ebx
	andb	8(%esp), %al
	je	L242
	subl	$1, %edi
	movl	$0, %ecx
	movl	$1, 20(%esp)
	movl	%eax, %ebp
	cmovs	%ecx, %edi
L242:
	testl	%edi, %edi
	jne	L243
	movl	%ebp, %eax
	testb	%al, %al
	je	L243
L244:
	movb	$47, (%ebx)
	addl	$1, %ebx
L245:
	movb	$0, (%ebx)
	movl	_g_sm_heap, %ecx
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 300
	subl	$4, %esp
	.cfi_def_cfa_offset 304
	addl	$284, %esp
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
L243:
	.cfi_restore_state
	cmpb	$47, %dl
	jne	L246
	movb	$47, (%ebx)
	addl	$1, %ebx
L246:
	testl	%edi, %edi
	je	L248
	xorl	%ecx, %ecx
	leal	28(%esp), %ebp
	.p2align 4
	.p2align 3
L247:
	movl	0(%ebp,%ecx,4), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L249
	.p2align 4
	.p2align 4
	.p2align 3
L250:
	addl	$1, %edx
	movb	%al, (%ebx)
	addl	$1, %ebx
	movzbl	(%edx), %eax
	testb	%al, %al
	jne	L250
L249:
	addl	$1, %ecx
	cmpl	%ecx, %edi
	je	L248
	movb	$47, (%ebx)
	addl	$1, %ebx
	jmp	L247
	.p2align 4,,10
	.p2align 3
L248:
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L245
	jmp	L244
L233:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE83:
	.p2align 4
	.globl	_Bcanonicalisefilename.constprop.0.isra.0
	.def	_Bcanonicalisefilename.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_Bcanonicalisefilename.constprop.0.isra.0:
LFB86:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$524, %esp
	.cfi_def_cfa_offset 536
	movzbl	__ZL21selectedboardfilename.lto_priv.0, %eax
	testb	%al, %al
	je	L283
	cmpb	$58, __ZL21selectedboardfilename.lto_priv.0+1
	je	L284
L283:
	xorl	%eax, %eax
	movl	$__ZL21selectedboardfilename.lto_priv.0, %esi
L285:
	leal	12(%esp), %ebx
	movl	$256, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___getdcwd
	testl	%eax, %eax
	je	L282
	movzbl	12(%esp), %edx
	testb	%dl, %dl
	je	L287
	movl	%ebx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L289:
	cmpb	$92, %dl
	jne	L288
	movb	$47, (%eax)
L288:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L289
L287:
	movl	$47, 4(%esp)
	movl	%ebx, (%esp)
	call	_strrchr
	testl	%eax, %eax
	je	L290
	cmpb	$0, 1(%eax)
	jne	L290
L291:
	movl	%esi, 4(%esp)
	leal	268(%esp), %esi
	movl	%esi, (%esp)
	call	_strcpy
	movzbl	268(%esp), %edx
	movl	%esi, %eax
	testb	%dl, %dl
	je	L295
	.p2align 5
	.p2align 4
	.p2align 3
L292:
	cmpb	$92, %dl
	jne	L294
	movb	$47, (%eax)
L294:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L292
	cmpb	$47, 268(%esp)
	je	L313
L295:
	movl	%ebx, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strcpy
	movl	%esi, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	call	_strcat
L293:
	movl	$1, %edx
	movl	$__ZL21selectedboardfilename.lto_priv.0+2, %eax
	call	_Bcorrectfilename.isra.0
L282:
	addl	$524, %esp
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
L290:
	.cfi_restore_state
	movl	%ebx, (%esp)
	call	_strlen
	movl	$47, %edx
	movw	%dx, (%ebx,%eax)
	jmp	L291
	.p2align 4,,10
	.p2align 3
L313:
	movzbl	12(%esp), %eax
	movl	%esi, 4(%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0, (%esp)
	movb	%al, __ZL21selectedboardfilename.lto_priv.0
	movl	$58, %eax
	movw	%ax, __ZL21selectedboardfilename.lto_priv.0+1
	call	_strcat
	jmp	L293
	.p2align 4,,10
	.p2align 3
L284:
	movl	%eax, (%esp)
	movl	$__ZL21selectedboardfilename.lto_priv.0+2, %esi
	call	*__imp__toupper
	subl	$64, %eax
	jmp	L285
	.cfi_endproc
LFE86:
	.section .rdata,"dr"
LC12:
	.ascii "KERNEL32.DLL\0"
LC13:
	.ascii "GlobalMemoryStatusEx\0"
	.align 4
LC14:
	.ascii "Couldn't determine system memory size with GlobalMemoryStatusEx()!\0"
LC15:
	.ascii "source/build/src/compat.cpp\0"
LC16:
	.ascii "Unable to load KERNEL32.DLL.\0"
	.text
	.p2align 4
	.globl	_Bgetsysmemsize
	.def	_Bgetsysmemsize;	.scl	2;	.type	32;	.endef
_Bgetsysmemsize:
LFB87:
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
	subl	$84, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$LC12, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L315
	movl	$LC13, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	subl	$8, %esp
	testl	%eax, %eax
	je	L320
	leal	-80(%ebp), %edx
	movl	$64, -80(%ebp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L317
	movl	-72(%ebp), %ebx
	movl	$-1, %eax
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	sbbl	-68(%ebp), %edx
	cmovc	%eax, %ebx
	testl	%ebx, %ebx
	je	L320
L321:
	movl	%esi, (%esp)
	call	*__imp__FreeLibrary@4
	movl	%ebx, %eax
	subl	$4, %esp
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
L320:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L329
L317:
	movl	$-1, %ebx
	jmp	L321
	.p2align 4,,10
	.p2align 3
L315:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L330
L323:
	leal	-12(%ebp), %esp
	movl	$-1, %ebx
	movl	%ebx, %eax
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
L329:
	.cfi_restore_state
	movl	$LC14, 12(%esp)
	movl	$639, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L317
	.p2align 4,,10
	.p2align 3
L330:
	movl	$LC16, 12(%esp)
	movl	$646, 8(%esp)
	movl	$LC15, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L323
	.cfi_endproc
LFE87:
	.p2align 4
	.globl	_Bcrc32
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
_Bcrc32:
LFB88:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	notl	%ecx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	cmpl	$3, %esi
	jle	L332
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	-4(%esi), %ebp
	shrl	$2, %esi
	movl	%eax, %ecx
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	leal	-1(%esi), %edi
	leal	(%eax,%esi,4), %esi
	movl	%edx, %eax
	movl	%edi, (%esp)
	movl	%ebx, 4(%esp)
	.p2align 6
	.p2align 4
	.p2align 3
L333:
	xorl	(%ecx), %eax
	addl	$4, %ecx
	movl	%eax, %edx
	movl	%eax, %ebx
	movzbl	%al, %edi
	movzbl	%ah, %eax
	shrl	$24, %edx
	shrl	$16, %ebx
	movl	_crc32table(,%edx,4), %edx
	xorl	_crc32table+3072(,%edi,4), %edx
	movzbl	%bl, %edi
	xorl	_crc32table+1024(,%edi,4), %edx
	xorl	_crc32table+2048(,%eax,4), %edx
	movl	%edx, %eax
	cmpl	%esi, %ecx
	jne	L333
	movl	(%esp), %edi
	movl	4(%esp), %ebx
	movl	%ebp, %esi
	movl	20(%esp), %ebp
	.cfi_restore 5
	sall	$2, %edi
	subl	%edi, %esi
	leal	4(%ebx,%edi), %ebx
	movl	16(%esp), %edi
	.cfi_restore 7
L332:
	testl	%esi, %esi
	jle	L334
	addl	%ebx, %esi
L335:
	addl	$1, %ebx
	movl	%edx, %eax
	xorb	-1(%ebx), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	_crc32table(,%edx,4), %eax
	movl	%eax, %edx
	cmpl	%esi, %ebx
	jne	L335
L334:
	movl	%edx, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	notl	%eax
	ret
	.cfi_endproc
LFE88:
	.section .rdata,"dr"
LC17:
	.ascii "Failed including %s as module\0"
LC18:
	.ascii "source/build/src/defs.cpp\0"
LC19:
	.ascii "%s:%d: Failed including %s\0"
LC20:
	.ascii "Loading module %s\0"
	.text
	.p2align 4
	.globl	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	.def	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0:
LFB89:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%ecx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 48
	call	_scriptfile_fromfile
	testl	%eax, %eax
	je	L345
	testl	%esi, %esi
	je	L346
L343:
	movl	%eax, 28(%esp)
	call	__ZL10defsparserP10scriptfile.isra.0
	movl	28(%esp), %eax
	addl	$32, %esp
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
	jmp	_scriptfile_close
	.p2align 4,,10
	.p2align 3
L346:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L343
	movl	%ebx, 16(%esp)
	movl	$LC20, 12(%esp)
	movl	$165, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %eax
	jmp	L343
	.p2align 4,,10
	.p2align 3
L345:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%esi, %esi
	je	L347
	cmpl	$-1, %eax
	jge	L348
L339:
	addl	$32, %esp
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
L348:
	.cfi_restore_state
	movl	%esi, %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC19, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$159, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L339
	.p2align 4,,10
	.p2align 3
L347:
	cmpl	$-1, %eax
	jl	L339
	movl	%ebx, 16(%esp)
	movl	$LC17, 12(%esp)
	movl	$157, 8(%esp)
	movl	$LC18, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L339
	.cfi_endproc
LFE89:
	.section .rdata,"dr"
	.align 4
LC21:
	.ascii "%s:%d: %s: backwards tile range\0"
LC22:
	.ascii "%s:%d: %s: invalid tile range\0"
	.text
	.p2align 4
	.globl	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	.def	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0:
LFB90:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	%ebx, 28(%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	movl	%edi, 36(%esp)
	.cfi_offset 7, -8
	movl	%eax, %edi
	movl	(%edx), %eax
	cmpl	%eax, (%ecx)
	jl	L357
L350:
	cmpl	$30463, %eax
	ja	L352
	xorl	%eax, %eax
	cmpl	$30463, (%ebx)
	ja	L352
	movl	28(%esp), %ebx
	movl	36(%esp), %edi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L352:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L358
L354:
	movl	28(%esp), %ebx
	movl	36(%esp), %edi
	movl	$1, %eax
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L357:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L351
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	movl	20(%eax), %eax
	movl	$LC21, 12(%esp)
	movl	$178, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L351:
	movl	%esi, %eax
/APP
 # 179 "source/build/src/defs.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	(%esi), %eax
	movl	32(%esp), %esi
	.cfi_restore 6
	jmp	L350
	.p2align 4,,10
	.p2align 3
L358:
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	movl	20(%eax), %eax
	movl	$LC22, 12(%esp)
	movl	$184, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC18, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L354
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0
	.def	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23Defs_LoadTileIntoBufferi.lto_priv.0:
LFB91:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movswl	_tilesiz+2(,%eax,4), %ecx
	movswl	_tilesiz(,%eax,4), %ebx
	testw	%cx, %cx
	jle	L363
	testw	%bx, %bx
	jle	L363
	imull	%ecx, %ebx
	movl	%eax, %edx
	movl	__ZL14faketilebuffer.lto_priv.0, %ecx
	cmpl	__ZL17faketilebuffersiz.lto_priv.0, %ebx
	jg	L365
L361:
	movswl	%dx, %eax
	movl	%ebx, %edx
	call	_tileLoadData
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L365:
	.cfi_restore_state
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebx, 4(%esp)
	movl	%eax, 8(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L362
	movl	%eax, __ZL14faketilebuffer.lto_priv.0
	movl	8(%esp), %edx
	movl	%ebx, __ZL17faketilebuffersiz.lto_priv.0
	jmp	L361
	.p2align 4,,10
	.p2align 3
L363:
	xorl	%ebx, %ebx
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L362:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE91:
	.p2align 4
	.globl	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0
	.def	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0:
LFB93:
	.cfi_startproc
	subl	$72, %esp
	.cfi_def_cfa_offset 76
	movl	%esi, 60(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%eax, 40(%esp)
	movl	%edx, 32(%esp)
	movl	%ecx, 12(%esp)
	call	_check_file_exist
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jne	L385
	movl	%esi, %eax
	movl	%ebp, 68(%esp)
	movl	%ebx, 56(%esp)
	movl	%edi, 64(%esp)
	.cfi_offset 5, -8
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	$0, 52(%esp)
	movl	$0, 48(%esp)
	call	_kpzbufload
	movl	%eax, %ebp
	cmpl	$15, %eax
	jle	L386
	leal	48(%esp), %eax
	leal	52(%esp), %ecx
	movl	%ebp, %edx
	movl	%eax, (%esp)
	movl	_kpzbuf, %eax
	call	_kpgetdim.part.0.constprop.0
	movl	48(%esp), %esi
	movl	52(%esp), %ebx
	movl	%esi, %eax
	leal	0(,%ebx,4), %edi
	imull	%edi, %eax
	movl	%eax, 16(%esp)
L368:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L369
	movl	%esi, 8(%esp)
	movl	%eax, %ecx
	movl	_kpzbuf, %eax
	movl	%ebp, %edx
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_kprender
	cmpl	$-1, %eax
	je	L399
	testl	%ebx, %ebx
	jle	L388
	testl	%esi, %esi
	jle	L388
	testb	$1, _paletteloaded
	je	L389
	movl	32(%esp), %eax
	movw	%si, _tilesiz+2(,%eax,4)
	movl	%eax, %esi
	movw	%bx, _tilesiz(,%eax,4)
	call	_tileUpdatePicSiz
	movl	%esi, %eax
	movswl	_tilesiz(,%esi,4), %esi
	movswl	_tilesiz+2(,%eax,4), %ebp
	movl	%esi, 16(%esp)
	imull	%ebp, %esi
	cmpl	__ZL17faketilebuffersiz.lto_priv.0, %esi
	jg	L400
L377:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	testl	%ebp, %ebp
	jle	L380
	movl	16(%esp), %eax
	testl	%eax, %eax
	jle	L380
	sall	$2, %eax
	movl	%esi, 44(%esp)
	movl	36(%esp), %edi
	xorl	%edx, %edx
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L383:
	movl	%edx, 20(%esp)
	movl	%edx, %esi
	xorl	%ebx, %ebx
	jmp	L382
	.p2align 6
	.p2align 4,,10
	.p2align 3
L381:
	movl	__ZL14faketilebuffer.lto_priv.0, %edx
	addl	$1, %ebx
	movb	%al, (%edx,%esi)
	addl	%ebp, %esi
	cmpl	%ebx, 16(%esp)
	je	L401
L382:
	movzbl	3(%edi,%ebx,4), %edx
	movl	$-1, %eax
	cmpl	%edx, 12(%esp)
	jg	L381
	movzbl	(%edi,%ebx,4), %ecx
	movzbl	1(%edi,%ebx,4), %edx
	movzbl	2(%edi,%ebx,4), %eax
	movl	$0, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	jmp	L381
	.p2align 4,,10
	.p2align 3
L401:
	movl	20(%esp), %edx
	addl	24(%esp), %edi
	addl	$1, %edx
	cmpl	%edx, %ebp
	jne	L383
	movl	44(%esp), %esi
L380:
	movl	32(%esp), %eax
	movl	__ZL14faketilebuffer.lto_priv.0, %ecx
	movl	%esi, %edx
	call	_tileSetData
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	76(%esp), %eax
	testl	%eax, %eax
	jne	L384
L376:
	movl	76(%esp), %eax
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	movl	%eax, 28(%esp)
L366:
	movl	28(%esp), %eax
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L386:
	.cfi_def_cfa_offset 76
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 16(%esp)
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	L368
L400:
	movl	__ZL14faketilebuffer.lto_priv.0, %eax
	movl	%esi, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 68
	subl	$8, %esp
	.cfi_def_cfa_offset 76
	testl	%eax, %eax
	jne	L392
	testl	%esi, %esi
	jne	L378
L392:
	movl	%eax, __ZL14faketilebuffer.lto_priv.0
	movl	%esi, __ZL17faketilebuffersiz.lto_priv.0
	jmp	L377
L384:
	movl	$255, %eax
	xorps	%xmm0, %xmm0
	subl	12(%esp), %eax
	movl	40(%esp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	$160, 8(%esp)
	movl	32(%esp), %eax
	xorl	%edx, %edx
	mulss	LC23, %xmm0
	movss	LC1, %xmm1
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm2
	movss	%xmm1, (%esp)
	call	_hicsetsubsttex.isra.0
	movl	28(%esp), %eax
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L399:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_remember_state
	.cfi_def_cfa_offset 72
	movl	_kpzbuf, %eax
	movl	%ebp, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	call	_artCheckUnitFileHeader
	testl	%eax, %eax
	jne	L402
	movl	_kpzbuf, %ebx
	movl	32(%esp), %edi
	movl	20(%ebx), %eax
	movl	%eax, %edx
	movb	%ah, _picanm+1(%edi,%edi,4)
	movl	%eax, %ecx
	shrl	$16, %edx
	andl	$63, %ecx
	movb	%dl, _picanm+2(%edi,%edi,4)
	movl	%eax, %edx
	andl	$-64, %eax
	shrl	$24, %edx
	movb	%cl, _picanm(%edi,%edi,4)
	andl	$15, %edx
	orl	%eax, %edx
	movb	%dl, _picanm+3(%edi,%edi,4)
	movzwl	16(%ebx), %edi
	movl	16(%ebx), %eax
	movzwl	18(%ebx), %esi
	testl	%edi, %edi
	je	L391
	testl	%esi, %esi
	je	L391
	movl	32(%esp), %ecx
	imull	%esi, %edi
	movl	%eax, _tilesiz(,%ecx,4)
	movl	%ecx, %eax
	call	_tileUpdatePicSiz
	leal	23(%edi), %eax
	movl	%edi, %edx
	cmpl	%ebp, %eax
	jge	L403
	movl	32(%esp), %eax
	leal	24(%ebx), %ecx
	call	_tileSetData
	movl	76(%esp), %edx
	movl	$1, 28(%esp)
	testl	%edx, %edx
	jne	L404
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L366
L388:
	.cfi_restore_state
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	$-2, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	movl	28(%esp), %eax
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L369:
	.cfi_restore_state
	movl	16(%esp), %eax
	call	__Z13handle_memerri
L402:
	sall	$8, %eax
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	%eax, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L366
L404:
	.cfi_restore_state
	movl	$255, %eax
	xorps	%xmm0, %xmm0
	subl	12(%esp), %eax
	movl	40(%esp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	$160, 8(%esp)
	movl	32(%esp), %eax
	xorl	%edx, %edx
	mulss	LC23, %xmm0
	movss	LC1, %xmm1
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm2
	movss	%xmm1, (%esp)
	call	_hicsetsubsttex.isra.0
	jmp	L376
L385:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, 28(%esp)
	jmp	L366
L378:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, %eax
	call	__Z13handle_memerri
L389:
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	$-3, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L366
L391:
	.cfi_restore_state
	movl	32(%esp), %eax
	call	_tileDelete
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	$2, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L366
L403:
	.cfi_restore_state
	movl	32(%esp), %edi
	movl	_g_sm_heap, %ecx
	movl	%edi, %eax
	movl	%edi, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _faketile(%eax)
	movl	_faketiledata(,%edi,4), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	$0, _faketiledata(,%edi,4)
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	$3, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L366
	.cfi_endproc
LFE93:
	.globl	_faketiledata
	.bss
	.align 32
_faketiledata:
	.space 122880
	.globl	_faketile
	.align 32
_faketile:
	.space 3840
	.globl	_kpzbuf
	.align 4
_kpzbuf:
	.space 4
	.globl	_crc32table
	.align 32
_crc32table:
	.space 4096
	.globl	_glad_glRecti
	.align 4
_glad_glRecti:
	.space 4
	.globl	_glad_glColor4f
	.align 4
_glad_glColor4f:
	.space 4
.lcomm __ZL15cache_blacklist,32,32
	.data
	.align 4
__ZL15cache_lastokcol:
	.long	255
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1065353216
	.align 4
LC23:
	.long	998277249
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_polymostSet2dView.part.0;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_initputs;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_fromfile;	.scl	2;	.type	32;	.endef
	.def	__ZL10defsparserP10scriptfile.isra.0;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_close;	.scl	2;	.type	32;	.endef
	.def	_scriptfile_getlinum;	.scl	2;	.type	32;	.endef
	.def	_tileLoadData;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kpzbufload;	.scl	2;	.type	32;	.endef
	.def	_kpgetdim.part.0.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_kprender;	.scl	2;	.type	32;	.endef
	.def	_tileUpdatePicSiz;	.scl	2;	.type	32;	.endef
	.def	_tileSetData;	.scl	2;	.type	32;	.endef
	.def	_hicsetsubsttex.isra.0;	.scl	2;	.type	32;	.endef
	.def	_artCheckUnitFileHeader;	.scl	2;	.type	32;	.endef
	.def	_tileDelete;	.scl	2;	.type	32;	.endef
