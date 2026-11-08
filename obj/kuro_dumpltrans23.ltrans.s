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
	.def	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi;	.scl	3;	.type	32;	.endef
__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi:
LFB9:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 48(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 28(%esp)
	movl	%ecx, 24(%esp)
	testb	$2, 68(%esp)
	.cfi_offset 5, -8
	je	L32
	movl	%ebx, 36(%esp)
	movl	_wall, %eax
	movl	%esi, 40(%esp)
	movl	%edi, 44(%esp)
	movswl	(%edx), %edx
	sall	$5, %edx
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	(%eax,%edx), %ebx
	movswl	8(%ebx), %edx
	movl	%ebx, 20(%esp)
	sall	$5, %edx
	addl	%edx, %eax
	movl	(%eax), %edi
	movl	4(%eax), %esi
	subl	(%ebx), %edi
	subl	4(%ebx), %esi
	movl	%edi, %ecx
	movl	%esi, %edx
	imull	%edi, %ecx
	imull	%esi, %edx
	leal	(%ecx,%edx), %eax
/APP
 # 2581 "source/build/src/clip.cpp" 1
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
	movl	$1, %ebp
	testl	%eax, %eax
	jne	L62
L52:
	movl	%ebp, %eax
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L32:
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -8
	movl	80(%esp), %edx
	imull	64(%esp), %edx
	testl	%edx, %edx
	jle	L35
	movl	16(%esp), %eax
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	80(%esp), %ebx
	movl	8(%eax), %ecx
	movl	80(%esp), %eax
	imull	76(%esp), %eax
	imull	%ecx, %ebx
	cmpl	%eax, %ebx
	jg	L55
	movl	76(%esp), %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
/APP
 # 2604 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%eax
	cmpl	%eax, %edx
	jg	L63
L55:
	movl	36(%esp), %ebx
	.cfi_restore 3
L35:
	xorl	%ebp, %ebp
L31:
	movl	%ebp, %eax
	movl	48(%esp), %ebp
	addl	$52, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L62:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movswl	72(%esp), %eax
	cltd
	movl	%eax, %ecx
	movl	%edx, %ebx
	sall	$15, %ecx
	shldl	$15, %eax, %ebx
	movl	%ecx, (%esp)
	movl	%ebx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%edi, %ecx
	movl	60(%esp), %edx
	movl	56(%esp), %edi
	imull	%eax, %esi
	imull	%eax, %ecx
	negl	%esi
	movl	%esi, 32(%esp)
	movl	%ecx, %eax
/APP
 # 2588 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	64(%esp), %ebp
	sall	$8, %ebp
	subl	%eax, %ebp
	je	L52
	movl	20(%esp), %edi
	movl	16(%esp), %eax
	movl	32(%esp), %esi
	movl	4(%eax), %edx
	movl	(%eax), %eax
	subl	(%edi), %eax
	subl	4(%edi), %edx
	movl	%eax, %edi
	movl	%ecx, %eax
/APP
 # 2591 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %ebx
	movl	76(%esp), %edx
	subl	8(%ebx), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movl	%ebp, %eax
	xorl	%edx, %eax
	js	L61
	movl	%edx, %eax
/APP
 # 2592 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%ebp, %eax
/APP
 # 2592 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%ecx
	cmpl	%eax, %ecx
	jl	L64
L61:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L35
	.p2align 4,,10
	.p2align 3
L63:
	.cfi_offset 3, -20
	movl	64(%esp), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%ebx, %eax
	cltd
	sall	$30, %eax
	shldl	$30, %ebx, %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	.cfi_offset 7, -12
	call	_tabledivide64.lto_priv.8
	movl	%eax, %ecx
	movl	56(%esp), %eax
	movl	%ecx, %edx
/APP
 # 2607 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %edi
	movl	%ecx, %edx
	movl	(%edi), %ebp
	leal	(%eax,%ebp), %ebx
	movl	60(%esp), %eax
/APP
 # 2608 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%edi), %ecx
	leal	(%eax,%ecx), %edi
L36:
	cmpl	$2147483647, %ebx
	je	L59
	movl	%ebx, %eax
	subl	%ebp, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	%edi, %eax
	subl	%ecx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	movl	24(%esp), %eax
	movl	(%eax), %eax
	subl	%ebp, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ebp
	movl	24(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 16(%esp)
	subl	%ecx, %eax
/APP
 # 2612 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ebp
	cmpl	%ebp, %edx
	jge	L59
	movl	84(%esp), %ecx
	testl	%ecx, %ecx
	je	L65
	movl	84(%esp), %eax
	movl	8(%eax), %ebp
	testl	%ebp, %ebp
	je	L66
L59:
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L35
	.p2align 4,,10
	.p2align 3
L64:
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edx, %eax
	movl	%ebp, 8(%esp)
	sarl	$31, %ebp
	cltd
	movl	%ebp, 12(%esp)
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %esi
	movl	56(%esp), %eax
	movl	%esi, %edx
/APP
 # 2595 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %edi
	movl	%esi, %edx
	movl	(%edi), %ebp
	leal	(%eax,%ebp), %ebx
	movl	60(%esp), %eax
/APP
 # 2596 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	4(%edi), %ecx
	movl	%esi, %edx
	leal	(%eax,%ecx), %edi
	movl	64(%esp), %eax
/APP
 # 2597 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	16(%esp), %esi
	addl	8(%esi), %eax
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	%eax, 76(%esp)
	jmp	L36
L66:
	movl	28(%esp), %ecx
	subl	_sector, %ecx
	movl	%edi, %edx
	movl	%ebx, %eax
	sarl	$3, %ecx
	imull	$-858993459, %ecx, %ecx
	movswl	%cx, %ecx
	call	_inside
	cmpl	$1, %eax
	je	L67
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L31
L65:
	.cfi_restore_state
	movl	%esi, 40(%esp)
	.cfi_remember_state
	.cfi_offset 6, -16
	movl	28(%esp), %esi
	movl	%edi, %edx
	movl	%ebx, %eax
	subl	_sector, %esi
	sarl	$3, %esi
	imull	$-858993459, %esi, %esi
	movswl	%si, %ecx
	call	_inside
	cmpl	$1, %eax
	jne	L61
	movl	28(%esp), %eax
	leal	12(%eax), %edx
	addl	$14, %eax
	cmpl	$-1, 80(%esp)
	cmove	%edx, %eax
	movzwl	(%eax), %eax
	andw	$3072, %ax
	cmpw	$1024, %ax
	je	L42
	movl	24(%esp), %eax
	movl	%edi, 4(%eax)
	movl	76(%esp), %edi
	movw	%si, 16(%eax)
	movl	$-1, 12(%eax)
	movl	%ebx, (%eax)
	movl	%edi, 8(%eax)
	jmp	L61
L67:
	.cfi_restore_state
	movl	84(%esp), %eax
	movl	%esi, 40(%esp)
	.cfi_offset 6, -16
	movl	24(%esp), %esi
	movl	4(%eax), %edx
	movl	%edx, %eax
	subl	_sprite, %eax
	movzwl	24(%edx), %edx
	movl	%ebx, (%esi)
	sarl	$2, %eax
	movl	%edi, 4(%esi)
	imull	$-1171354717, %eax, %eax
	movw	%dx, 16(%esi)
	movl	$-1, %edx
	movw	%dx, 14(%esi)
	movw	%ax, 12(%esi)
	movl	76(%esp), %eax
	movl	%eax, 8(%esi)
	movl	36(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L31
L42:
	.cfi_restore_state
	movl	36(%esp), %ebx
	.cfi_restore 3
	movl	40(%esp), %esi
	.cfi_restore 6
	movl	$2, %ebp
	movl	44(%esp), %edi
	.cfi_restore 7
	jmp	L31
	.cfi_endproc
LFE9:
	.p2align 4
	.globl	_getzrange
	.def	_getzrange;	.scl	2;	.type	32;	.endef
_getzrange:
LFB10:
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
	subl	$404, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movzwl	12(%ebp), %ebx
	movl	36(%ebp), %edx
	testw	%bx, %bx
	js	L345
	movl	8(%ebp), %edi
	movl	32(%ebp), %eax
	movl	$0, 304(%esp)
	movlps	(%edi), %xmm0
	addl	$1025, %eax
	movlps	%xmm0, 292(%esp)
	movl	(%edi), %edi
	movl	296(%esp), %esi
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 176(%esp)
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 164(%esp)
	leal	(%edi,%eax), %ecx
	addl	%esi, %eax
	movl	%eax, 152(%esp)
	movzwl	%dx, %eax
	shrl	$16, %edx
	movl	%eax, 116(%esp)
	movl	_enginecompatibilitymode, %eax
	movl	%edx, 168(%esp)
	movswl	%bx, %edx
	movl	%ecx, 172(%esp)
	movl	%edx, 52(%esp)
	cmpl	$2147483647, %eax
	je	L346
L71:
	cmpl	$19950829, %eax
	je	L347
	movl	24(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movswl	%bx, %eax
	movl	%edi, 4(%esp)
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
L73:
	movl	20(%ebp), %edx
	movswl	%bx, %edi
	xorl	%esi, %esi
	movl	$1, __ZL16layerclipsectnum
	leal	16384(%edi), %eax
	movl	%eax, (%edx)
	movl	28(%ebp), %edx
	movl	%eax, 44(%esp)
	movl	%eax, (%edx)
	movswl	_numsectors, %eax
	movw	%bx, __ZL18origclipsectorlist.lto_priv.0
	addl	$7, %eax
	movw	%bx, __ZL19layerclipsectorlist
	sarl	$3, %eax
	movl	$1, __ZL15origclipsectnum.lto_priv.0
	movw	%bx, _clipsectorlist
	movl	$1, __ZL11clipsectnum.lto_priv.0
	movl	$0, __ZL13clipspritenum.lto_priv.0
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL13clipsectormap.lto_priv.0, (%esp)
	call	_memset
	movl	%edi, %eax
	movl	%ebx, %edx
	movw	%bx, 90(%esp)
	sarl	$3, %eax
	andl	$7, %edx
	movl	$0, 128(%esp)
	movl	$1, %edi
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	orb	%dl, __ZL13clipsectormap.lto_priv.0(%eax)
	movl	116(%esp), %eax
	movl	$-1, 92(%esp)
	movl	$-1, 132(%esp)
	movl	$0, 148(%esp)
	sall	$9, %eax
	andl	$512, %eax
	movl	%eax, 72(%esp)
	.p2align 4
	.p2align 3
L74:
	cmpl	%esi, %edi
	jg	L76
L348:
	movl	128(%esp), %edi
	movl	132(%esp), %edx
	movswl	__ZL14clipspritelist.lto_priv.0(%edi,%edi), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 148(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, 132(%esp)
	testl	%eax, %eax
	jns	L77
	addl	$1, %edi
	movl	__ZL13clipspritenum.lto_priv.0, %eax
	movl	%edi, 128(%esp)
	cmpl	128(%esp), %eax
	jle	L172
L351:
	movl	304(%esp), %esi
	movl	__ZL11clipsectnum.lto_priv.0, %edi
	cmpl	%esi, %edi
	jle	L348
	.p2align 4
	.p2align 3
L76:
	movswl	_clipsectorlist(%esi,%esi), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movswl	(%eax), %edi
	movswl	2(%eax), %eax
	addl	%edi, %eax
	movl	%eax, 188(%esp)
	cmpl	%eax, %edi
	jge	L96
	movl	148(%esp), %ebx
	testl	%ebx, %ebx
	je	L349
	movl	%esi, 112(%esp)
	.p2align 4
	.p2align 3
L97:
	movl	_wall, %esi
	movl	%edi, %eax
	sall	$5, %eax
	addl	%esi, %eax
	movswl	12(%eax), %ebx
	movw	%bx, 156(%esp)
	movl	%ebx, 144(%esp)
	testl	%ebx, %ebx
	js	L141
	movswl	8(%eax), %ebx
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	sall	$5, %ebx
	addl	%esi, %ebx
	movl	(%ebx), %esi
	movl	4(%ebx), %ebx
	movl	%ebx, 180(%esp)
	movl	176(%esp), %ebx
	movl	%esi, 184(%esp)
	cmpl	%ebx, %edx
	jge	L142
	cmpl	%esi, %ebx
	jg	L141
L142:
	movl	172(%esp), %esi
	cmpl	%esi, %edx
	jle	L144
	cmpl	184(%esp), %esi
	jl	L141
L144:
	movl	164(%esp), %esi
	cmpl	%esi, %ecx
	jge	L145
	cmpl	180(%esp), %esi
	jg	L141
L145:
	movl	152(%esp), %esi
	cmpl	%esi, %ecx
	jle	L146
	cmpl	180(%esp), %esi
	jl	L141
L146:
	movl	180(%esp), %esi
	movl	184(%esp), %ebx
	subl	%ecx, %esi
	subl	%edx, %ebx
	movl	%esi, 136(%esp)
	movl	8(%ebp), %esi
	movl	%ebx, 140(%esp)
	movl	4(%esi), %esi
	subl	%ecx, %esi
	imull	%ebx, %esi
	movl	8(%ebp), %ebx
	movl	(%ebx), %ebx
	movl	%esi, 124(%esp)
	movl	%ebx, 120(%esp)
	subl	%edx, %ebx
	imull	136(%esp), %ebx
	cmpl	%ebx, 124(%esp)
	jl	L141
	movl	140(%esp), %esi
	testl	%esi, %esi
	jle	L147
	movl	164(%esp), %ebx
	subl	%ecx, %ebx
	imull	%esi, %ebx
	movl	%ebx, 124(%esp)
L148:
	movl	136(%esp), %esi
	testl	%esi, %esi
	jle	L149
	movl	172(%esp), %ebx
	subl	%edx, %ebx
	imull	%ebx, %esi
L150:
	cmpl	%esi, 124(%esp)
	jge	L141
	movzwl	14(%eax), %eax
	testl	%eax, 116(%esp)
	jne	L141
	movl	__ZL5sectq.lto_priv.0, %eax
	movzwl	156(%esp), %ebx
	cmpw	%bx, (%eax)
	je	L141
	movl	144(%esp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 96(%esp)
	addl	_sector, %eax
	movl	%eax, 104(%esp)
	testb	$1, 12(%eax)
	je	L151
	testb	$1, 14(%eax)
	jne	L141
L151:
	movl	144(%esp), %eax
	sarl	$3, %eax
	movzbl	__ZL13clipsectormap.lto_priv.0(%eax), %ebx
	movl	%eax, 108(%esp)
	movl	156(%esp), %eax
	movb	%bl, 120(%esp)
	notl	%ebx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.6(%eax), %eax
	testb	%al, %bl
	je	L152
	movl	__ZL11clipsectnum.lto_priv.0, %ebx
	movl	%ebx, 100(%esp)
	cmpl	$511, %ebx
	jg	L153
	movl	108(%esp), %ebx
	orb	120(%esp), %al
	movb	%al, __ZL13clipsectormap.lto_priv.0(%ebx)
	movl	100(%esp), %ebx
	leal	1(%ebx), %eax
	movl	%eax, __ZL11clipsectnum.lto_priv.0
	movzwl	156(%esp), %eax
	movw	%ax, _clipsectorlist(%ebx,%ebx)
L152:
	movl	176(%esp), %eax
	leal	1023(%eax), %ebx
	movl	184(%esp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	cmpl	%eax, %ebx
	jge	L141
	movl	172(%esp), %ebx
	leal	-1023(%ebx), %eax
	movl	184(%esp), %ebx
	cmpl	%ebx, %edx
	cmovg	%ebx, %edx
	cmpl	%edx, %eax
	jle	L141
	movl	164(%esp), %eax
	movl	180(%esp), %ebx
	leal	1023(%eax), %edx
	cmpl	%ebx, %ecx
	movl	%ebx, %eax
	cmovge	%ecx, %eax
	cmpl	%eax, %edx
	jge	L141
	movl	152(%esp), %eax
	movl	%ebx, %edx
	subl	$1023, %eax
	cmpl	%ebx, %ecx
	cmovle	%ecx, %edx
	cmpl	%edx, %eax
	jle	L141
	movl	140(%esp), %ebx
	movl	124(%esp), %eax
	movl	%ebx, %edx
	sall	$10, %edx
	leal	(%eax,%edx), %ecx
	subl	%edx, %eax
	testl	%ebx, %ebx
	movl	136(%esp), %ebx
	cmovg	%ecx, %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	sall	$10, %edx
	subl	%edx, %ecx
	addl	%esi, %edx
	testl	%ebx, %ebx
	cmovg	%ecx, %edx
	cmpl	%eax, %edx
	jle	L141
	movl	8(%ebp), %eax
	movl	_enginecompatibilitymode, %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	cmpl	$2147483647, %ecx
	je	L158
	movl	%eax, 236(%esp)
	movl	%eax, %esi
	movl	%eax, 228(%esp)
	movl	%edx, 232(%esp)
	movl	%edx, 240(%esp)
	movl	240(%esp), %ebx
L159:
	cmpl	$19950829, %ecx
	je	L350
	leal	308(%esp), %eax
	movl	%ebx, 8(%esp)
	movl	%eax, 16(%esp)
	leal	312(%esp), %eax
	movl	%eax, 12(%esp)
	movl	96(%esp), %eax
	movl	%esi, 4(%esp)
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
L161:
	movl	148(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	imull	$-1171354717, %eax, %eax
	leal	49152(%eax), %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	cmpl	$2147483647, _enginecompatibilitymode
	je	L162
	movl	%eax, 220(%esp)
	movl	%eax, 212(%esp)
	movl	%edx, 216(%esp)
	movl	%edx, 224(%esp)
	movl	224(%esp), %ecx
L163:
	leal	372(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 16(%esp)
	leal	356(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL5sectq.lto_priv.0, %eax
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	104(%esp), %eax
	testb	$1, 12(%eax)
	jne	L164
	movl	8(%ebp), %eax
	movl	356(%esp), %edx
	movl	8(%eax), %eax
	cmpl	%edx, %eax
	jge	L166
	movl	24(%ebp), %ecx
	cmpl	(%ecx), %edx
	jge	L166
	movl	28(%ebp), %eax
	movl	%edx, (%ecx)
	movl	%ebx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
L166:
	movl	312(%esp), %edx
	cmpl	%eax, %edx
	jge	L164
	movl	16(%ebp), %eax
	cmpl	(%eax), %edx
	jle	L164
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	%ebx, (%eax)
L164:
	movl	104(%esp), %eax
	testb	$1, 14(%eax)
	jne	L141
	movl	8(%ebp), %eax
	movl	308(%esp), %edx
	movl	8(%eax), %eax
	cmpl	%edx, %eax
	jge	L170
	movl	24(%ebp), %ecx
	cmpl	(%ecx), %edx
	jge	L170
	movl	28(%ebp), %eax
	movl	%edx, (%ecx)
	movl	%ebx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
L170:
	movl	372(%esp), %edx
	cmpl	%eax, %edx
	jge	L141
	movl	16(%ebp), %eax
	cmpl	(%eax), %edx
	jle	L141
	movl	%edx, (%eax)
	movl	20(%ebp), %eax
	movl	%ebx, (%eax)
	.p2align 4
	.p2align 3
L141:
	addl	$1, %edi
	cmpl	%edi, 188(%esp)
	jne	L97
	movl	112(%esp), %esi
L96:
	movl	__ZL11clipsectnum.lto_priv.0, %edi
	addl	$1, %esi
	movl	%esi, 304(%esp)
	cmpl	%edi, %esi
	jl	L74
	movl	__ZL13clipspritenum.lto_priv.0, %eax
	cmpl	128(%esp), %eax
	jg	L351
	.p2align 4
	.p2align 3
L172:
	movl	148(%esp), %ebx
	testl	%ebx, %ebx
	je	L173
	movzwl	__ZL11origmapinfo.lto_priv.0, %eax
	movl	$0, __ZL13clipspritenum.lto_priv.0
	movl	$0, __ZL11clipsectnum.lto_priv.0
	movw	%ax, _numsectors
	movzwl	__ZL11origmapinfo.lto_priv.0+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo.lto_priv.0+4, %eax
	movl	%eax, _sector
	movl	__ZL11origmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
L174:
	movl	_numyaxbunches, %edi
	testl	%edi, %edi
	jle	L68
	movl	116(%esp), %eax
	movswl	90(%esp), %ebx
	movl	72(%esp), %edi
	sall	$5, %eax
	andl	$2048, %eax
	orl	%eax, %edi
	movl	%ebx, %eax
	movl	%edi, 184(%esp)
	call	_yax_getbunch.constprop.1
	movl	%eax, %esi
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	cmpl	$-1, 92(%esp)
	movl	%ebx, 188(%esp)
	movl	$0, 304(%esp)
	movl	$0, __ZL11clipsectnum.lto_priv.0
	je	L352
	testw	%si, %si
	js	L214
	movl	92(%esp), %esi
	testl	%esi, %esi
	je	L212
	testw	%ax, %ax
	jns	L353
L68:
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
L347:
	.cfi_restore_state
	movl	%edi, %edx
	movl	%esi, %ecx
	movswl	%bx, %eax
	call	__Z24getceilzofslope_19950829iii
	movl	16(%ebp), %edx
	movl	%esi, %ecx
	movl	%eax, (%edx)
	movl	%edi, %edx
	movswl	%bx, %eax
	call	__Z24getflorzofslope_19950829iii
	movl	24(%ebp), %edi
	movl	%eax, (%edi)
	jmp	L73
	.p2align 4,,10
	.p2align 3
L77:
	movl	8(%ebp), %eax
	movl	148(%esp), %edx
	leal	304(%esp), %ecx
	xorl	%esi, %esi
	movl	%eax, (%esp)
	movl	132(%esp), %eax
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movl	__ZL11clipsectnum.lto_priv.0, %edi
	testl	%edi, %edi
	jg	L79
	jmp	L326
	.p2align 4,,10
	.p2align 3
L354:
	movl	%ecx, 284(%esp)
	movl	%ecx, 276(%esp)
	movl	%ebx, 288(%esp)
	movl	288(%esp), %edx
	movl	%ebx, 280(%esp)
	movswl	%ax, %ebx
L83:
	leal	356(%esp), %eax
	movl	%edx, 8(%esp)
	leal	(%ebx,%ebx,4), %ebx
	movl	%eax, 16(%esp)
	leal	372(%esp), %eax
	sall	$3, %ebx
	movl	%eax, 12(%esp)
	movl	%ecx, 4(%esp)
	movl	_sector, %eax
	addl	%ebx, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	cmpl	$2147483647, _enginecompatibilitymode
	je	L84
	movl	%eax, 268(%esp)
	movl	%eax, 260(%esp)
	movl	%edx, 264(%esp)
	movl	%edx, 272(%esp)
	movl	272(%esp), %ecx
L85:
	leal	312(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%edx, 16(%esp)
	leal	308(%esp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 4(%esp)
	movl	__ZL5sectq.lto_priv.0, %eax
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	movl	148(%esp), %eax
	subl	_sprite, %eax
	sarl	$2, %eax
	movl	_sector, %edx
	imull	$-1171354717, %eax, %eax
	addl	%ebx, %edx
	addl	$49152, %eax
	testb	$1, 12(%edx)
	jne	L86
	movl	8(%ebp), %edx
	movl	308(%esp), %ecx
	movl	8(%edx), %edx
	cmpl	%ecx, %edx
	jge	L88
	movl	24(%ebp), %edi
	cmpl	(%edi), %ecx
	jge	L88
	movl	%ecx, (%edi)
	movl	28(%ebp), %edi
	movl	%eax, (%edi)
	movl	8(%ebp), %edi
	movl	8(%edi), %edx
L88:
	movl	372(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L339
	movl	16(%ebp), %edi
	cmpl	(%edi), %ecx
	jle	L339
	movl	16(%ebp), %edi
	movl	%ecx, (%edi)
	movl	20(%ebp), %edi
	movl	%eax, (%edi)
L339:
	movl	_sector, %edx
	addl	%ebx, %edx
L86:
	testb	$1, 14(%edx)
	jne	L92
	movl	8(%ebp), %edx
	movl	356(%esp), %ecx
	movl	8(%edx), %edx
	cmpl	%ecx, %edx
	jge	L94
	movl	24(%ebp), %edi
	cmpl	(%edi), %ecx
	jge	L94
	movl	%ecx, (%edi)
	movl	28(%ebp), %edi
	movl	%eax, (%edi)
	movl	8(%ebp), %edi
	movl	8(%edi), %edx
L94:
	movl	312(%esp), %ecx
	cmpl	%edx, %ecx
	jge	L92
	movl	16(%ebp), %edi
	cmpl	(%edi), %ecx
	jle	L92
	movl	%ecx, (%edi)
	movl	20(%ebp), %edi
	movl	%eax, (%edi)
	.p2align 5
	.p2align 4
	.p2align 3
L92:
	addl	$1, %esi
	cmpl	%esi, __ZL11clipsectnum.lto_priv.0
	jle	L326
L79:
	movl	__ZL5sectq.lto_priv.0, %edx
	movzwl	_clipsectorlist(%esi,%esi), %eax
	cmpw	(%edx), %ax
	je	L92
	movl	8(%ebp), %edx
	movl	(%edx), %ecx
	movl	4(%edx), %ebx
	cmpl	$2147483647, _enginecompatibilitymode
	jne	L354
	movl	%ebx, 320(%esp)
	movswl	%ax, %ebx
	movl	8(%ebp), %eax
	movl	%ecx, 316(%esp)
	leal	316(%esp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	call	_getsectordist
	movl	316(%esp), %ecx
	movl	320(%esp), %edx
	jmp	L83
	.p2align 4,,10
	.p2align 3
L84:
	movl	__ZL5sectq.lto_priv.0, %ecx
	movswl	(%ecx), %ecx
	movl	%eax, 316(%esp)
	movl	8(%ebp), %eax
	movl	%edx, 320(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 188(%esp)
	leal	316(%esp), %eax
	movl	%eax, (%esp)
	movl	188(%esp), %eax
	movl	%edx, 192(%esp)
	movl	192(%esp), %edx
	call	_getsectordist
	movl	316(%esp), %eax
	movl	320(%esp), %ecx
	jmp	L85
	.p2align 4,,10
	.p2align 3
L326:
	movl	304(%esp), %esi
	jmp	L76
	.p2align 4,,10
	.p2align 3
L149:
	movl	176(%esp), %ebx
	movl	136(%esp), %esi
	subl	%edx, %ebx
	imull	%ebx, %esi
	jmp	L150
	.p2align 4,,10
	.p2align 3
L147:
	movl	152(%esp), %ebx
	subl	%ecx, %ebx
	imull	140(%esp), %ebx
	movl	%ebx, 124(%esp)
	jmp	L148
	.p2align 4,,10
	.p2align 3
L349:
	movl	%esi, 108(%esp)
	.p2align 4
	.p2align 3
L140:
	movl	_wall, %esi
	movl	%edi, %eax
	sall	$5, %eax
	addl	%esi, %eax
	movswl	12(%eax), %ecx
	movw	%cx, 140(%esp)
	movl	%ecx, 144(%esp)
	testl	%ecx, %ecx
	js	L98
	movswl	8(%eax), %ebx
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	sall	$5, %ebx
	movl	%ecx, 184(%esp)
	addl	%esi, %ebx
	movl	(%ebx), %ecx
	movl	4(%ebx), %ebx
	movl	%ecx, 180(%esp)
	movl	%ebx, 156(%esp)
	cmpl	%edx, 176(%esp)
	jle	L139
	movl	180(%esp), %ecx
	cmpl	%ecx, 176(%esp)
	jg	L98
L139:
	cmpl	%edx, 172(%esp)
	jge	L138
	movl	180(%esp), %ecx
	cmpl	%ecx, 172(%esp)
	jl	L98
L138:
	movl	184(%esp), %ecx
	cmpl	%ecx, 164(%esp)
	jle	L137
	movl	156(%esp), %ecx
	cmpl	%ecx, 164(%esp)
	jg	L98
L137:
	movl	184(%esp), %ecx
	cmpl	%ecx, 152(%esp)
	jge	L136
	movl	156(%esp), %esi
	cmpl	%esi, 152(%esp)
	jl	L98
L136:
	movl	180(%esp), %ecx
	movl	8(%ebp), %esi
	movl	156(%esp), %ebx
	subl	184(%esp), %ebx
	subl	%edx, %ecx
	movl	%ebx, 124(%esp)
	movl	%ecx, 136(%esp)
	movl	%ecx, 112(%esp)
	movl	%ebx, %ecx
	movl	(%esi), %ebx
	subl	%edx, %ebx
	movl	%ebx, %esi
	movl	8(%ebp), %ebx
	imull	%ecx, %esi
	movl	136(%esp), %ecx
	movl	4(%ebx), %ebx
	movl	%ebx, 120(%esp)
	subl	184(%esp), %ebx
	imull	%ecx, %ebx
	cmpl	%ebx, %esi
	jg	L98
	testl	%ecx, %ecx
	jle	L355
	movl	164(%esp), %ebx
	subl	184(%esp), %ebx
	imull	112(%esp), %ebx
	movl	%ebx, 136(%esp)
L135:
	movl	124(%esp), %ecx
	testl	%ecx, %ecx
	jle	L356
	movl	172(%esp), %ebx
	subl	%edx, %ebx
	imull	124(%esp), %ebx
L134:
	cmpl	136(%esp), %ebx
	jle	L98
	movzwl	14(%eax), %eax
	testl	%eax, 116(%esp)
	jne	L98
	movl	144(%esp), %eax
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 120(%esp)
	cmpw	$0, _editstatus
	jne	L132
	movl	120(%esp), %eax
	addl	_sector, %eax
	testb	$1, 12(%eax)
	jne	L133
	movl	4(%eax), %ecx
	movl	8(%ebp), %esi
	addl	$768, %ecx
	cmpl	8(%esi), %ecx
	jge	L98
L133:
	testb	$1, 14(%eax)
	jne	L132
	movl	8(%eax), %eax
	movl	8(%ebp), %ecx
	subl	$768, %eax
	cmpl	8(%ecx), %eax
	jle	L98
	.p2align 4
	.p2align 3
L132:
	movl	144(%esp), %eax
	movl	140(%esp), %ecx
	sarl	$3, %eax
	andl	$7, %ecx
	movzbl	__ZL13clipsectormap.lto_priv.0(%eax), %esi
	movl	%eax, 100(%esp)
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	movl	%esi, %eax
	notl	%eax
	movb	%cl, 104(%esp)
	testb	%al, %cl
	je	L130
	movl	__ZL11clipsectnum.lto_priv.0, %eax
	cmpl	$511, %eax
	jle	L129
	orl	$1, __ZL15clipmove_warned.lto_priv.0
L130:
	movl	180(%esp), %esi
	movl	176(%esp), %eax
	movl	%edx, %ecx
	cmpl	%edx, %esi
	cmovge	%esi, %ecx
	addl	$1023, %eax
	cmpl	%eax, %ecx
	jle	L98
	cmpl	%edx, %esi
	movl	172(%esp), %eax
	cmovle	%esi, %edx
	subl	$1023, %eax
	cmpl	%eax, %edx
	jge	L98
	movl	156(%esp), %ecx
	movl	184(%esp), %esi
	movl	164(%esp), %eax
	cmpl	%ecx, %esi
	movl	%ecx, %edx
	cmovge	%esi, %edx
	addl	$1023, %eax
	cmpl	%eax, %edx
	jle	L98
	cmpl	%ecx, %esi
	movl	152(%esp), %eax
	cmovle	%esi, %ecx
	subl	$1023, %eax
	cmpl	%eax, %ecx
	jge	L98
	movl	112(%esp), %esi
	movl	136(%esp), %ecx
	movl	%esi, %eax
	movl	%ecx, %edx
	sall	$10, %eax
	subl	%eax, %edx
	addl	%ecx, %eax
	testl	%esi, %esi
	cmovg	%eax, %edx
	movl	%ebx, %eax
	movl	%edx, %esi
	movl	124(%esp), %edx
	sall	$10, %edx
	subl	%edx, %eax
	leal	(%edx,%ebx), %ecx
	movl	124(%esp), %edx
	testl	%edx, %edx
	cmovle	%ecx, %eax
	cmpl	%esi, %eax
	jle	L98
	cmpl	$-1, 92(%esp)
	jne	L115
	movl	100(%esp), %edx
	movzbl	104(%esp), %eax
	orb	%al, __ZL17origclipsectormap.lto_priv.0(%edx)
	movl	__ZL15origclipsectnum.lto_priv.0, %eax
	leal	1(%eax), %edx
	movl	%edx, __ZL15origclipsectnum.lto_priv.0
	movzwl	140(%esp), %edx
	movw	%dx, __ZL18origclipsectorlist.lto_priv.0(%eax,%eax)
L115:
	movl	__ZL16layerclipsectnum, %eax
	movl	_enginecompatibilitymode, %ecx
	leal	1(%eax), %edx
	movl	%edx, __ZL16layerclipsectnum
	movzwl	140(%esp), %edx
	movw	%dx, __ZL19layerclipsectorlist(%eax,%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	cmpl	$2147483647, %ecx
	je	L357
	movl	%eax, 252(%esp)
	movl	%eax, %ebx
	movl	%eax, 244(%esp)
	movl	%edx, 248(%esp)
	movl	%edx, 256(%esp)
	movl	256(%esp), %esi
L124:
	cmpl	$19950829, %ecx
	je	L358
	leal	308(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 16(%esp)
	leal	312(%esp), %eax
	movl	%eax, 12(%esp)
	movl	120(%esp), %eax
	movl	%ebx, 4(%esp)
	addl	_sector, %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
L123:
	movl	144(%esp), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movl	%eax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movl	16(%ebp), %ecx
	movl	%eax, %edx
	movl	312(%esp), %eax
	cmpl	(%ecx), %eax
	jle	L119
	cmpl	$1, 92(%esp)
	je	L122
	testw	%bx, %bx
	js	L359
L119:
	movl	24(%ebp), %ecx
	movl	308(%esp), %eax
	cmpl	(%ecx), %eax
	jge	L98
	movl	92(%esp), %esi
	testl	%esi, %esi
	jne	L120
	.p2align 4
	.p2align 3
L98:
	addl	$1, %edi
	cmpl	188(%esp), %edi
	jne	L140
	movl	108(%esp), %esi
	jmp	L96
	.p2align 4,,10
	.p2align 3
L356:
	movl	176(%esp), %ebx
	subl	%edx, %ebx
	imull	124(%esp), %ebx
	jmp	L134
	.p2align 4,,10
	.p2align 3
L355:
	movl	152(%esp), %ebx
	subl	184(%esp), %ebx
	imull	112(%esp), %ebx
	movl	%ebx, 136(%esp)
	jmp	L135
	.p2align 4,,10
	.p2align 3
L173:
	movl	168(%esp), %ecx
	testl	%ecx, %ecx
	je	L176
	movl	__ZL11clipsectnum.lto_priv.0, %edx
	testl	%edx, %edx
	jle	L176
	movl	$0, 144(%esp)
	.p2align 4
	.p2align 3
L210:
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	movl	%eax, 188(%esp)
	testl	%eax, %eax
	jns	L209
	jmp	L178
	.p2align 4,,10
	.p2align 3
L179:
	movl	188(%esp), %eax
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, 188(%esp)
	testl	%eax, %eax
	js	L178
L209:
	imull	$44, 188(%esp), %eax
	movl	%eax, 184(%esp)
	addl	_sprite, %eax
	movzwl	12(%eax), %edi
	movw	%di, 180(%esp)
	testl	%edi, 168(%esp)
	je	L179
	movl	152(%esp), %edi
	movl	164(%esp), %ecx
	movl	176(%esp), %edx
	movl	%edi, 4(%esp)
	movl	172(%esp), %edi
	movl	%edi, (%esp)
	call	__Z14clipsprite_tryPK13uspritetypev7iiii
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L179
	movl	184(%esp), %ecx
	addl	_sprite, %ecx
	movlps	(%ecx), %xmm5
	movzwl	180(%esp), %esi
	movl	%ecx, 136(%esp)
	movlps	%xmm5, 204(%esp)
	movl	%esi, %eax
	movl	208(%esp), %ebx
	movlps	%xmm5, 196(%esp)
	movl	8(%ebp), %edx
	andl	$48, %eax
	andl	$32, %esi
	movw	%ax, 120(%esp)
	movl	(%edx), %edx
	movlps	%xmm5, 156(%esp)
	movl	%edx, 140(%esp)
	jne	L180
	cmpw	$16, %ax
	je	L181
	movzbl	18(%ecx), %eax
	movl	32(%ebp), %esi
	leal	1(%esi,%eax,4), %edx
	movl	156(%esp), %eax
	subl	140(%esp), %eax
/APP
 # 2276 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L179
	movl	8(%ebp), %ecx
	movl	%ebx, %eax
	subl	4(%ecx), %eax
/APP
 # 2276 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	cmpl	%eax, %edx
	jl	L179
	movl	136(%esp), %esi
	movswl	14(%esi), %ebx
	movzbl	21(%esi), %ecx
	movswl	_tilesiz+2(,%ebx,4), %eax
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%eax, %eax
	testb	$-128, 12(%esi)
	cmovne	%eax, %edi
	movsbl	_picanm+2(%ebx,%ebx,4), %eax
L340:
	imull	%ecx, %eax
	movl	8(%esi), %ecx
	sall	$2, %eax
	subl	%eax, %edi
	addl	%edi, %ecx
	movl	%ecx, 124(%esp)
	movl	%ecx, %edi
	subl	%edx, %edi
L183:
	movl	8(%ebp), %eax
	movl	124(%esp), %esi
	movl	8(%eax), %eax
	cmpl	%esi, %eax
	jle	L205
	movl	16(%ebp), %edx
	cmpl	%esi, (%edx)
	jl	L206
	je	L360
	.p2align 4
	.p2align 3
L205:
	cmpl	%eax, %edi
	jle	L179
	movl	24(%ebp), %eax
	cmpl	%edi, (%eax)
	jg	L208
	jne	L179
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L179
	.p2align 4
	.p2align 3
L208:
	movl	24(%ebp), %eax
	movl	%edi, (%eax)
	movl	188(%esp), %eax
	movl	28(%ebp), %edi
	addl	$49152, %eax
	movl	%eax, (%edi)
	jmp	L179
	.p2align 4,,10
	.p2align 3
L178:
	addl	$1, 144(%esp)
	movl	144(%esp), %eax
	cmpl	%eax, __ZL11clipsectnum.lto_priv.0
	jg	L210
	movl	__ZL13clipspritenum.lto_priv.0, %eax
L176:
	testl	%eax, %eax
	jle	L174
	movzwl	_numwalls, %edx
	movl	__ZL11clipsectnum.lto_priv.0, %esi
	movzwl	_numsectors, %eax
	movss	_sector, %xmm0
	sall	$16, %edx
	movl	%esi, 304(%esp)
	movl	%esi, %edi
	movss	_wall, %xmm1
	orl	%edx, %eax
	movl	%eax, __ZL11origmapinfo.lto_priv.0
	movzwl	__ZL11clipmapinfo.lto_priv.0, %eax
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, __ZL11origmapinfo.lto_priv.0+4
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo.lto_priv.0+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo.lto_priv.0+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
	jmp	L74
	.p2align 4,,10
	.p2align 3
L181:
	movl	136(%esp), %ecx
	movzwl	12(%ecx), %eax
	movzbl	20(%ecx), %esi
	movzwl	28(%ecx), %edx
	movw	%ax, 120(%esp)
	movswl	14(%ecx), %eax
	movsbl	22(%ecx), %ecx
	movl	%eax, 180(%esp)
	leal	_picanm(%eax,%eax,4), %eax
	movl	%eax, 112(%esp)
	movsbl	1(%eax), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	testb	$4, 120(%esp)
	cmovne	%ecx, %eax
	movl	%edx, %ecx
	addl	$1536, %edx
	andl	$2047, %edx
	andl	$2047, %ecx
	movswl	_sintable(%edx,%edx), %edx
	movswl	_sintable(%ecx,%ecx), %ecx
	imull	%esi, %edx
	imull	%esi, %ecx
	movl	180(%esp), %esi
	movl	%edx, 124(%esp)
	movswl	_tilesiz(,%esi,4), %edx
	movl	%edx, %esi
	movl	%edx, 184(%esp)
	sarl	%esi
	addl	%eax, %esi
	movl	%ecx, %eax
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	156(%esp), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, 156(%esp)
	movl	184(%esp), %edx
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	%esi, %edx
	movl	124(%esp), %eax
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%eax, %ebx
	movl	184(%esp), %edx
	movl	124(%esp), %eax
	movl	%ebx, %esi
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ebx
	movl	4(%ebx), %ebx
	movl	%ebx, 184(%esp)
	movl	32(%ebp), %ebx
	movl	%esi, (%esp)
	leal	1(%ebx), %edx
	leal	(%esi,%eax), %ebx
	movl	156(%esp), %eax
	movl	%edx, 12(%esp)
	movl	184(%esp), %edx
	addl	%eax, %ecx
	movl	%ebx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, %ecx
	movl	140(%esp), %eax
	call	_clipinsideboxline
	testl	%eax, %eax
	je	L179
	movl	136(%esp), %esi
	movl	180(%esp), %eax
	movzbl	21(%esi), %ecx
	movswl	_tilesiz+2(,%eax,4), %eax
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	addl	%eax, %eax
	testb	$-128, 120(%esp)
	cmovne	%eax, %edi
	movl	112(%esp), %eax
	movsbl	2(%eax), %eax
	jmp	L340
	.p2align 4,,10
	.p2align 3
L180:
	movl	8(%ebp), %eax
	movl	136(%esp), %edx
	movl	4(%eax), %esi
	movzwl	12(%edx), %ecx
	movl	8(%edx), %eax
	movl	%esi, 112(%esp)
	movl	%eax, 124(%esp)
	movl	%ecx, %eax
	notl	%eax
	movw	%cx, 108(%esp)
	testb	$48, %al
	jne	L187
	movzwl	22(%edx), %ecx
	movw	%cx, 108(%esp)
	testw	%cx, %cx
	je	L187
	movswl	28(%edx), %ecx
	subl	%ebx, %esi
	movl	140(%esp), %edi
	movl	%esi, %edx
	subl	156(%esp), %edi
	leal	1024(%ecx), %eax
	addl	$512, %ecx
	andl	$2047, %ecx
	andl	$2047, %eax
	movswl	_sintable(%ecx,%ecx), %esi
	movswl	_sintable(%eax,%eax), %eax
	negl	%esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movswl	108(%esp), %edi
	movl	%eax, %edx
	movl	%edi, %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	addl	%eax, 124(%esp)
L187:
	leal	336(%esp), %eax
	movl	%edi, 32(%esp)
	leal	340(%esp), %ecx
	movlps	156(%esp), %xmm4
	movl	%eax, 28(%esp)
	leal	344(%esp), %eax
	leal	348(%esp), %edx
	movl	%eax, 24(%esp)
	leal	352(%esp), %eax
	leal	332(%esp), %edi
	movl	%eax, 20(%esp)
	leal	328(%esp), %ebx
	leal	324(%esp), %eax
	movl	%edi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	112(%esp), %ecx
	movl	%edx, 4(%esp)
	movl	140(%esp), %edx
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	$0, 348(%esp)
	movl	$0, 352(%esp)
	movlps	%xmm4, 324(%esp)
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	324(%esp), %eax
	movl	124(%esp), %edi
	movl	%eax, 156(%esp)
	movl	328(%esp), %eax
	movl	%eax, 140(%esp)
	movl	348(%esp), %eax
	movl	%eax, 108(%esp)
	movl	352(%esp), %eax
	movl	%eax, 104(%esp)
	movl	340(%esp), %eax
	movl	%eax, 136(%esp)
	movl	344(%esp), %eax
	movl	%eax, 112(%esp)
	movl	332(%esp), %eax
	movl	%eax, 100(%esp)
	movl	336(%esp), %eax
	movl	%eax, 96(%esp)
	cmpw	$48, 120(%esp)
	je	L361
L189:
	movzwl	180(%esp), %eax
	testb	$64, %al
	je	L203
	movl	8(%ebp), %edx
	movl	124(%esp), %ecx
	cmpl	%ecx, 8(%edx)
	setg	%dl
	shrw	$3, %ax
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%al, %dl
	je	L179
L203:
	movl	_sprite, %eax
	movl	184(%esp), %ecx
	movswl	28(%eax,%ecx), %ebx
	movl	32(%ebp), %ecx
	leal	256(%ebx), %eax
	leal	4(%ecx), %edx
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
/APP
 # 2344 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	$256, %ebx
	leal	4(%ecx), %edx
	movl	%eax, %ecx
	andl	$2047, %ebx
	movswl	_sintable(%ebx,%ebx), %eax
/APP
 # 2345 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $14, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	156(%esp), %edx
	addl	%ecx, %edx
	movl	%edx, 324(%esp)
	movl	140(%esp), %edx
	addl	%eax, %edx
	movl	%edx, 328(%esp)
	movl	108(%esp), %edx
	subl	%eax, %edx
	movl	%edx, 348(%esp)
	movl	104(%esp), %edx
	addl	%ecx, %edx
	movl	%edx, 352(%esp)
	movl	136(%esp), %edx
	subl	%ecx, %edx
	movl	%edx, 340(%esp)
	movl	112(%esp), %edx
	subl	%eax, %edx
	addl	100(%esp), %eax
	movl	%eax, 332(%esp)
	movl	96(%esp), %eax
	movl	%edx, 344(%esp)
	subl	%ecx, %eax
	movl	%eax, 336(%esp)
	movl	332(%esp), %eax
	movl	336(%esp), %edx
	movl	%eax, 16(%esp)
	movl	340(%esp), %eax
	movl	%edx, 20(%esp)
	movl	344(%esp), %edx
	movl	%eax, 8(%esp)
	movl	348(%esp), %eax
	movl	%edx, 12(%esp)
	movl	352(%esp), %edx
	movl	%eax, (%esp)
	movl	324(%esp), %eax
	movl	%edx, 4(%esp)
	movl	328(%esp), %edx
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0
	testl	%eax, %eax
	je	L179
	jmp	L183
L360:
	movl	144(%esp), %eax
	movswl	_clipsectorlist(%eax,%eax), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L341
	.p2align 4
	.p2align 3
L206:
	movl	16(%ebp), %eax
	movl	124(%esp), %edx
	movl	%edx, (%eax)
	movl	188(%esp), %eax
	movl	20(%ebp), %edx
	addl	$49152, %eax
	movl	%eax, (%edx)
L341:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	jmp	L205
	.p2align 4,,10
	.p2align 3
L352:
	testw	%si, %si
	js	L236
L212:
	movl	20(%ebp), %eax
	addl	$16384, %ebx
	cmpl	%ebx, (%eax)
	je	L362
L236:
	movl	__ZL15origclipsectnum.lto_priv.0, %eax
	movl	%eax, __ZL16layerclipsectnum
	addl	%eax, %eax
	cmpl	$2, %eax
	jle	L238
	movl	%eax, 8(%esp)
	movl	$__ZL18origclipsectorlist.lto_priv.0, 4(%esp)
	movl	$__ZL19layerclipsectorlist, (%esp)
	call	_memcpy
L239:
	movl	52(%esp), %edi
	movl	%edi, %eax
	call	_yax_getbunch.constprop.1
	movl	%edi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L342
	movl	28(%ebp), %eax
	movl	44(%esp), %edi
	cmpl	(%eax), %edi
	je	L242
L342:
	movl	$1, 92(%esp)
	movl	__ZL11clipsectnum.lto_priv.0, %edi
L237:
	testl	%edi, %edi
	jle	L68
	leal	(%edi,%edi), %eax
	movl	%edi, __ZL16layerclipsectnum
	movl	$0, __ZL13clipspritenum.lto_priv.0
	cmpl	$2, %eax
	jle	L261
	movl	%eax, 8(%esp)
	movl	$_clipsectorlist, 4(%esp)
	movl	$__ZL19layerclipsectorlist, (%esp)
	call	_memcpy
L262:
L75:
	movzwl	188(%esp), %eax
	movl	$0, 128(%esp)
	movl	$-1, 132(%esp)
	movl	304(%esp), %esi
	movw	%ax, 90(%esp)
	movl	$0, 148(%esp)
	jmp	L74
	.p2align 4,,10
	.p2align 3
L361:
	movl	8(%ebp), %eax
	leal	356(%esp), %ebx
	movl	(%eax), %esi
	movl	4(%eax), %ecx
	movl	156(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 356(%esp)
	movl	140(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 360(%esp)
	movl	136(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 364(%esp)
	movl	112(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 368(%esp)
	movl	184(%esp), %eax
	addl	_sprite, %eax
	movl	8(%eax), %edi
	movl	%eax, 120(%esp)
	movzwl	12(%eax), %eax
	movl	%edi, 80(%esp)
	movw	%ax, 84(%esp)
	andl	$48, %eax
	movw	%ax, 68(%esp)
L195:
	cmpw	$48, 68(%esp)
	je	L363
	addl	$8, %ebx
	leal	372(%esp), %eax
	cmpl	%ebx, %eax
	jne	L195
	movl	80(%esp), %edi
	movl	%edi, 76(%esp)
L193:
	movl	32(%ebp), %eax
	addl	$4, %eax
	leal	(%esi,%eax), %edx
	subl	%eax, %esi
	movl	%edx, 84(%esp)
	leal	(%ecx,%eax), %edx
	movss	84(%esp), %xmm2
	subl	%eax, %ecx
	movl	%edx, 84(%esp)
	movss	84(%esp), %xmm3
	movl	%ecx, 84(%esp)
	movss	84(%esp), %xmm1
	movaps	%xmm2, %xmm4
	movl	%esi, 84(%esp)
	unpcklps	%xmm3, %xmm2
	movss	84(%esp), %xmm0
	unpcklps	%xmm1, %xmm4
	movlhps	%xmm4, %xmm2
	movups	%xmm2, 372(%esp)
	movaps	%xmm0, %xmm2
	unpcklps	%xmm3, %xmm0
	unpcklps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm0
	movups	%xmm0, 388(%esp)
	cmpw	$48, 68(%esp)
	je	L364
	movl	80(%esp), %edx
	movl	124(%esp), %eax
	cmpl	%eax, %edx
	movl	%eax, %ebx
	movl	%eax, %ecx
	cmovge	%edx, %ebx
	cmovle	%edx, %ecx
L198:
	movl	76(%esp), %edx
	cmpl	%ebx, %edx
	movl	%edx, %eax
	cmovg	%ebx, %eax
	cmpl	%edi, %ebx
	cmovle	%edi, %eax
	cmpl	%ecx, %edx
	movl	%eax, 124(%esp)
	movl	%edx, %eax
	cmovg	%ecx, %eax
	cmpl	%edi, %ecx
	cmovg	%eax, %edi
	jmp	L189
L364:
	movl	120(%esp), %esi
	leal	372(%esp), %eax
	movl	124(%esp), %ecx
	movl	%eax, 84(%esp)
	movswl	22(%esi), %eax
	movl	%ecx, %ebx
	testw	%ax, %ax
	je	L335
	movl	%eax, 68(%esp)
	movl	372(%esp), %eax
	movl	%edi, 48(%esp)
	movl	376(%esp), %edx
	movl	%eax, 56(%esp)
	movswl	28(%esi), %eax
	movl	56(%esp), %edi
	leal	1024(%eax), %esi
	addl	$512, %eax
	andl	$2047, %esi
	andl	$2047, %eax
	movl	%esi, 64(%esp)
	movl	%eax, 60(%esp)
L199:
	movl	60(%esp), %esi
	movl	120(%esp), %ebx
	movl	64(%esp), %eax
	movswl	_sintable(%esi,%esi), %esi
	subl	4(%ebx), %edx
	movswl	_sintable(%eax,%eax), %eax
	subl	(%ebx), %edi
	negl	%esi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	68(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edi
	addl	80(%esp), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edi
	cmovle	%edi, %eax
	leal	404(%esp), %edi
	addl	$8, 84(%esp)
	movl	%eax, 124(%esp)
	movl	84(%esp), %eax
	cmpl	%edi, %eax
	je	L336
	movl	(%eax), %edi
	movl	4(%eax), %edx
	jmp	L199
L214:
	movl	92(%esp), %esi
	testl	%esi, %esi
	je	L236
	testw	%ax, %ax
	js	L68
L353:
	movl	28(%ebp), %eax
	addl	$16384, %ebx
	cmpl	%ebx, (%eax)
	jne	L68
L242:
	movl	__ZL16layerclipsectnum, %edi
	xorl	%ebx, %ebx
	testl	%edi, %edi
	jle	L342
	.p2align 4
	.p2align 3
L243:
	movswl	__ZL19layerclipsectorlist(%ebx,%ebx), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L244
	movl	_sector, %ecx
	leal	(%esi,%esi,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	14(%eax), %eax
	testl	%eax, 184(%esp)
	jne	L245
L244:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	jne	L243
L246:
	leal	__ZL19layerclipsectorlist(%edi,%edi), %eax
	movl	8(%ebp), %edi
	movl	$__ZL19layerclipsectorlist, %esi
	movl	$0, 184(%esp)
	movl	%eax, 180(%esp)
L260:
	movswl	(%esi), %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	js	L248
	cwtl
	movswl	_headsectbunch(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L248
	movl	%esi, 156(%esp)
	jmp	L259
L251:
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L365
L259:
	movl	4(%edi), %esi
	movl	(%edi), %eax
	movswl	%bx, %ecx
	movl	%esi, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L251
	movl	__ZL11clipsectnum.lto_priv.0, %eax
	cmpl	$511, %eax
	jg	L252
	movl	%ebx, %edx
	movl	%ebx, %ecx
	movw	%bx, _clipsectorlist(%eax,%eax)
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap.lto_priv.0(%edx)
	leal	1(%eax), %edx
	movl	%edx, __ZL11clipsectnum.lto_priv.0
	movl	4(%edi), %esi
L253:
	movl	(%edi), %eax
	cmpl	$2147483647, _enginecompatibilitymode
	je	L366
L254:
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %ecx
	leal	(%edx,%ecx,8), %ecx
	testb	$2, 14(%ecx)
	je	L367
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_getflorzofslopeptr.part.0
L256:
	movl	184(%esp), %edx
	testl	%edx, %edx
	je	L257
	movl	24(%ebp), %edx
	cmpl	%eax, (%edx)
	jle	L251
L257:
	movl	28(%ebp), %ecx
	leal	16384(%ebx), %edx
	movl	%ebx, 188(%esp)
	movl	$1, 184(%esp)
	movl	%edx, (%ecx)
	movl	24(%ebp), %edx
	movl	%eax, (%edx)
	movswl	_nextsectbunch(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	jne	L259
L365:
	movl	156(%esp), %esi
L248:
	addl	$2, %esi
	cmpl	%esi, 180(%esp)
	jne	L260
	jmp	L342
	.p2align 4,,10
	.p2align 3
L153:
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	jmp	L152
L350:
	movl	144(%esp), %eax
	movl	%ebx, %ecx
	movl	%esi, %edx
	call	__Z24getceilzofslope_19950829iii
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	%eax, 312(%esp)
	movl	144(%esp), %eax
	call	__Z24getflorzofslope_19950829iii
	movl	%eax, 308(%esp)
	jmp	L161
L129:
	movl	%esi, %ecx
	movl	100(%esp), %esi
	orb	104(%esp), %cl
	movb	%cl, __ZL13clipsectormap.lto_priv.0(%esi)
	leal	1(%eax), %ecx
	movl	%ecx, __ZL11clipsectnum.lto_priv.0
	movzwl	140(%esp), %ecx
	movw	%cx, _clipsectorlist(%eax,%eax)
	jmp	L130
L336:
	movl	%ecx, %ebx
	movl	48(%esp), %edi
	movl	124(%esp), %ecx
	jmp	L198
L261:
	jne	L262
	movzwl	_clipsectorlist, %eax
	movw	%ax, __ZL19layerclipsectorlist
	jmp	L262
L363:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%ecx, 56(%esp)
	movl	%ebx, %ecx
	movl	%esi, 48(%esp)
	movl	%eax, 40(%esp)
	movl	80(%esp), %eax
	movl	%eax, %edi
	movl	%eax, 76(%esp)
	movl	120(%esp), %eax
	movl	%edi, 84(%esp)
	movl	40(%esp), %edi
	movswl	22(%eax), %eax
	movw	%ax, 60(%esp)
	movl	%eax, 64(%esp)
	cmpw	$0, 60(%esp)
	je	L368
L192:
	movl	120(%esp), %esi
	movswl	28(%esi), %ebx
	subl	4(%esi), %edx
	leal	1024(%ebx), %eax
	addl	$512, %ebx
	andl	$2047, %ebx
	andl	$2047, %eax
	movswl	_sintable(%ebx,%ebx), %esi
	movl	120(%esp), %ebx
	movswl	_sintable(%eax,%eax), %eax
	negl	%esi
	subl	(%ebx), %edi
/APP
 # 1811 "source/build/include/build.h" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $4, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	64(%esp), %eax
/APP
 # 1813 "source/build/include/build.h" 1
	imull %edx; shrdl $18, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	84(%esp), %edi
	addl	80(%esp), %eax
	cmpl	%eax, %edi
	cmovg	%eax, %edi
	movl	%edi, 84(%esp)
	movl	76(%esp), %edi
	cmpl	%eax, %edi
	cmovge	%edi, %eax
	addl	$8, %ecx
	movl	%eax, 76(%esp)
	leal	372(%esp), %eax
	cmpl	%ecx, %eax
	je	L334
	movl	(%ecx), %edi
	movl	4(%ecx), %edx
	cmpw	$0, 60(%esp)
	jne	L192
L368:
	movl	48(%esp), %esi
	movl	84(%esp), %edi
	movl	%ecx, %ebx
	movl	80(%esp), %eax
	movl	76(%esp), %edx
L331:
	cmpl	%eax, %edi
	leal	372(%esp), %ecx
	cmovg	%eax, %edi
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	addl	$8, %ebx
	cmpl	%ecx, %ebx
	jne	L331
	movl	%eax, 80(%esp)
	movl	56(%esp), %ecx
	movl	%edx, 76(%esp)
	jmp	L193
	.p2align 4,,10
	.p2align 3
L334:
	movl	56(%esp), %ecx
	movl	48(%esp), %esi
	movl	84(%esp), %edi
	jmp	L193
L335:
	movl	84(%esp), %edx
	movl	80(%esp), %eax
L197:
	cmpl	%eax, %ebx
	leal	404(%esp), %esi
	cmovl	%eax, %ebx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	addl	$8, %edx
	cmpl	%esi, %edx
	jne	L197
	jmp	L198
L158:
	movl	%eax, 316(%esp)
	movl	8(%ebp), %eax
	leal	316(%esp), %ecx
	movl	%edx, 320(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	144(%esp), %ecx
	call	_getsectordist
	movl	316(%esp), %esi
	movl	320(%esp), %ebx
	movl	_enginecompatibilitymode, %ecx
	jmp	L159
L162:
	movl	__ZL5sectq.lto_priv.0, %ecx
	leal	316(%esp), %esi
	movswl	(%ecx), %ecx
	movl	%eax, 316(%esp)
	movl	8(%ebp), %eax
	movl	%edx, 320(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%esi, (%esp)
	call	_getsectordist
	movl	316(%esp), %eax
	movl	320(%esp), %ecx
	jmp	L163
L358:
	movl	144(%esp), %eax
	movl	%esi, %ecx
	movl	%ebx, %edx
	call	__Z24getceilzofslope_19950829iii
	movl	%esi, %ecx
	movl	%ebx, %edx
	movl	%eax, 312(%esp)
	movl	144(%esp), %eax
	call	__Z24getflorzofslope_19950829iii
	movl	%eax, 308(%esp)
	jmp	L123
L362:
	movl	__ZL16layerclipsectnum, %edi
	testl	%edi, %edi
	jle	L221
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L219:
	movswl	__ZL19layerclipsectorlist(%ebx,%ebx), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L217
	movl	_sector, %ecx
	leal	(%esi,%esi,4), %eax
	leal	(%ecx,%eax,8), %eax
	movzwl	12(%eax), %eax
	testl	%eax, 184(%esp)
	jne	L218
L217:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	jne	L219
L220:
	leal	__ZL19layerclipsectorlist(%edi,%edi), %eax
	movl	8(%ebp), %edi
	movl	$__ZL19layerclipsectorlist, %esi
	movl	$0, 156(%esp)
	movl	%eax, 180(%esp)
L235:
	movswl	(%esi), %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L223
	cwtl
	movswl	_headsectbunch+512(%eax,%eax), %ebx
	cmpl	$-1, %ebx
	je	L223
	movl	%esi, 148(%esp)
	jmp	L234
L226:
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	je	L369
L234:
	movl	4(%edi), %esi
	movl	(%edi), %eax
	movswl	%bx, %ecx
	movl	%esi, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L226
	movl	__ZL11clipsectnum.lto_priv.0, %eax
	cmpl	$511, %eax
	jg	L227
	movl	%ebx, %edx
	movl	%ebx, %ecx
	movw	%bx, _clipsectorlist(%eax,%eax)
	sarl	$3, %edx
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ecx), %ecx
	orb	%cl, __ZL13clipsectormap.lto_priv.0(%edx)
	leal	1(%eax), %edx
	movl	%edx, __ZL11clipsectnum.lto_priv.0
	movl	4(%edi), %esi
L228:
	movl	(%edi), %eax
	cmpl	$2147483647, _enginecompatibilitymode
	je	L370
L229:
	movl	_sector, %edx
	leal	(%ebx,%ebx,4), %ecx
	leal	(%edx,%ecx,8), %ecx
	testb	$2, 12(%ecx)
	je	L371
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_getceilzofslopeptr.part.0
L231:
	movl	156(%esp), %edx
	testl	%edx, %edx
	je	L232
	movl	16(%ebp), %edx
	cmpl	%eax, (%edx)
	jge	L226
L232:
	movl	20(%ebp), %ecx
	leal	16384(%ebx), %edx
	movl	%ebx, 188(%esp)
	movl	$1, 156(%esp)
	movl	%edx, (%ecx)
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	movswl	_nextsectbunch+8192(%ebx,%ebx), %ebx
	cmpl	$-1, %ebx
	jne	L234
L369:
	movl	148(%esp), %esi
L223:
	addl	$2, %esi
	cmpl	%esi, 180(%esp)
	jne	L235
L221:
	movl	__ZL11clipsectnum.lto_priv.0, %edi
	testl	%edi, %edi
	je	L236
L372:
	movl	$0, 92(%esp)
	jmp	L237
L345:
	movl	16(%ebp), %eax
	movl	$-2147483648, (%eax)
	movl	20(%ebp), %eax
	movl	$-1, (%eax)
	movl	24(%ebp), %eax
	movl	$2147483647, (%eax)
	movl	28(%ebp), %eax
	movl	$-1, (%eax)
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
L218:
	.cfi_restore_state
	cmpl	%edi, %ebx
	je	L220
	movl	__ZL11clipsectnum.lto_priv.0, %edi
	testl	%edi, %edi
	je	L236
	jmp	L372
L238:
	jne	L239
	movzwl	__ZL18origclipsectorlist.lto_priv.0, %eax
	movw	%ax, __ZL19layerclipsectorlist
	jmp	L239
L357:
	movl	%eax, 316(%esp)
	movl	8(%ebp), %eax
	leal	316(%esp), %ecx
	movl	%edx, 320(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movl	144(%esp), %ecx
	call	_getsectordist
	movl	316(%esp), %ebx
	movl	320(%esp), %esi
	movl	_enginecompatibilitymode, %ecx
	jmp	L124
L245:
	cmpl	%ebx, %edi
	jne	L342
	jmp	L246
	.p2align 4,,10
	.p2align 3
L346:
	movl	8(%ebp), %eax
	leal	316(%esp), %ecx
	movlps	%xmm0, 316(%esp)
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%ecx, (%esp)
	movswl	%bx, %ecx
	call	_getsectordist
	movl	316(%esp), %edi
	movl	320(%esp), %esi
	movl	_enginecompatibilitymode, %eax
	jmp	L71
L122:
	movl	24(%ebp), %ecx
	movl	308(%esp), %eax
	cmpl	%eax, (%ecx)
	jle	L98
L120:
	testw	%dx, %dx
	jns	L98
	movl	24(%ebp), %edx
	movl	%eax, (%edx)
	movl	144(%esp), %eax
	movl	28(%ebp), %edx
	addl	$16384, %eax
	movl	%eax, (%edx)
	jmp	L98
L359:
	movl	16(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	144(%esp), %eax
	movl	20(%ebp), %ecx
	addl	$16384, %eax
	movl	%eax, (%ecx)
	jmp	L119
L227:
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	jmp	L228
L252:
	orl	$1, __ZL15clipmove_warned.lto_priv.0
	jmp	L253
L371:
	movl	4(%ecx), %eax
	jmp	L231
L367:
	movl	8(%ecx), %eax
	jmp	L256
L370:
	leal	316(%esp), %ecx
	movl	%eax, 316(%esp)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%esi, 320(%esp)
	call	_getsectordist
	movl	316(%esp), %eax
	movl	320(%esp), %esi
	jmp	L229
L366:
	leal	316(%esp), %ecx
	movl	%eax, 316(%esp)
	movl	(%edi), %eax
	movl	4(%edi), %edx
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	movl	%esi, 320(%esp)
	call	_getsectordist
	movl	316(%esp), %eax
	movl	320(%esp), %esi
	jmp	L254
	.cfi_endproc
LFE10:
	.p2align 4
	.globl	_try_facespr_intersect
	.def	_try_facespr_intersect;	.scl	2;	.type	32;	.endef
_try_facespr_intersect:
LFB26:
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
	movl	4(%eax), %ecx
	movl	(%eax), %esi
	movl	68(%esp), %ebx
	movl	64(%esp), %edi
	movl	80(%esp), %edx
	subl	%ebx, %ecx
	movl	%ebx, 20(%esp)
	movl	76(%esp), %ebx
	subl	%edi, %esi
	imull	%ecx, %edx
	movl	%edi, 24(%esp)
	imull	%esi, %ebx
	leal	(%ebx,%edx), %ebp
	testl	%ebp, %ebp
	jle	L377
	movl	76(%esp), %ebx
	movl	80(%esp), %edx
	imull	%ebx, %ebx
	imull	%edx, %edx
	addl	%edx, %ebx
	jne	L383
L373:
	addl	$44, %esp
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
L383:
	.cfi_restore_state
	movl	%eax, %edi
	movl	8(%eax), %eax
	movl	%ebx, %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %edx
	movl	%ebp, 40(%esp)
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%ebp, %eax
	imull	84(%esp)
	movl	%ecx, 36(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	16(%esp), %ecx
	movswl	14(%edi), %edx
	addl	%ecx, %eax
	movzbl	21(%edi), %ecx
	movl	%eax, 16(%esp)
	movswl	_tilesiz+2(,%edx,4), %eax
	movsbl	_picanm+2(%edx,%edx,4), %edx
	imull	%ecx, %eax
	leal	0(,%eax,4), %ebp
	movl	%ebp, 32(%esp)
	leal	(%eax,%eax), %ebp
	xorl	%eax, %eax
	testb	$-128, 12(%edi)
	cmovne	%ebp, %eax
	imull	%ecx, %edx
	movl	32(%esp), %ebp
	movl	16(%esp), %ecx
	sall	$2, %edx
	subl	%edx, %eax
	addl	28(%esp), %eax
	movl	%eax, %edx
	subl	%ebp, %edx
	cmpl	%edx, %ecx
	jl	L377
	cmpl	%eax, %ecx
	jle	L384
L377:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%ebx, %ebx
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
L384:
	.cfi_restore_state
	imull	80(%esp), %esi
	movl	36(%esp), %ecx
	movl	%ebx, 8(%esp)
	imull	76(%esp), %ecx
	subl	%esi, %ecx
	movl	%ebx, %esi
	movl	%ecx, %eax
	imull	76(%esp)
	sarl	$31, %esi
	movl	%ecx, 28(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%ebx, %edx
	movl	%ebx, 8(%esp)
	sarl	$31, %edx
	movl	%eax, %esi
	movl	28(%esp), %eax
	movl	%edx, 12(%esp)
	imull	80(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %ecx
	movswl	14(%edi), %eax
	movswl	_tilesiz(,%eax,4), %edx
	movzbl	20(%edi), %eax
	imull	%eax, %edx
	movl	%edx, %eax
/APP
 # 2539 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $7, %edx, %eax
 # 0 "" 2
/NO_APP
	imull	%esi, %esi
	imull	%ecx, %ecx
	leal	(%esi,%ecx), %edx
	cmpl	%eax, %edx
	jg	L377
	movl	40(%esp), %ebp
	movl	%ebx, %esi
	movl	%ebx, 8(%esp)
	sarl	$31, %esi
	movl	%ebp, %eax
	imull	76(%esp)
	movl	%esi, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%ebx, 8(%esp)
	sarl	$31, %ebx
	movl	%eax, %edi
	movl	%ebp, %eax
	movl	%ebx, 12(%esp)
	imull	80(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %ecx
	movl	%edi, %eax
/APP
 # 2543 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 28(%esp)
	movl	%ecx, %eax
/APP
 # 2543 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	88(%esp), %esi
	movl	24(%esp), %ebp
	movl	%eax, %ebx
	movl	(%esi), %esi
	movl	%esi, 32(%esp)
	subl	%ebp, %esi
	movl	%esi, %eax
/APP
 # 2544 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	88(%esp), %edx
	movl	%eax, %esi
	movl	4(%edx), %edx
	movl	%edx, 24(%esp)
	subl	20(%esp), %edx
	movl	%edx, %eax
/APP
 # 2544 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%esp), %edx
	addl	%eax, %esi
	addl	%ebx, %edx
	addl	92(%esp), %edx
	cmpl	%esi, %edx
	jg	L377
	movl	20(%esp), %esi
	addl	%edi, %ebp
	movl	88(%esp), %edi
	movl	$1, %ebx
	leal	(%esi,%ecx), %eax
	movl	16(%esp), %ecx
	movl	%ebp, (%edi)
	movl	%eax, 4(%edi)
	movl	%ecx, 8(%edi)
	jmp	L373
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "hitscan: tempshortnum >= MAXCLIPSECTORS at (%d,%d,%d)!\0"
LC4:
	.ascii "source/build/src/clip.cpp\0"
	.text
	.p2align 4
	.globl	_hitscan
	.def	_hitscan;	.scl	2;	.type	32;	.endef
_hitscan:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-1, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$216, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	28(%ebp), %eax
	movzwl	12(%ebp), %edi
	movl	32(%ebp), %esi
	movw	%dx, 16(%eax)
	movl	$-1, 12(%eax)
	testw	%di, %di
	js	L500
	movswl	_numsectors, %ebx
	movzwl	%si, %eax
	movl	28(%ebp), %ecx
	movl	_hitscangoal+4, %edx
	movl	%eax, 48(%esp)
	addl	$7, %ebx
	movl	_hitscangoal, %eax
	sarl	$3, %ebx
	movl	%edx, 4(%ecx)
	movl	%eax, (%ecx)
	movw	%di, _clipsectorlist
	movl	$0, __ZL13clipspritenum.lto_priv.0
	movl	$0, __ZL15clipmove_warned.lto_priv.0
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL19yax_hitscan_ceilmap, (%esp)
	call	_memset
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL20yax_hitscan_floormap, (%esp)
	call	_memset
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL13clipsectormap.lto_priv.0, (%esp)
	call	_memset
	movswl	%di, %eax
	andl	$7, %edi
	movl	$0, 68(%esp)
	sarl	$3, %eax
	movl	$0, 72(%esp)
	movl	%eax, %ecx
	movl	%eax, 44(%esp)
	movzbl	__ZL8pow2char.lto_priv.6(%edi), %eax
	orb	%al, __ZL13clipsectormap.lto_priv.0(%ecx)
	shrl	$16, %esi
	movb	%al, 43(%esp)
	movl	$1, %eax
	movw	%ax, 86(%esp)
	movl	$0, 104(%esp)
	movl	%esi, 52(%esp)
	movl	$-1, %esi
	sete	84(%esp)
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L496:
	cmpw	86(%esp), %di
	jge	L387
	movswl	%di, %eax
	addl	$1, %edi
L388:
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	$1, 144(%esp)
	movw	%ax, 62(%esp)
	movl	%eax, %ebx
	movl	%eax, 64(%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 56(%esp)
	addl	_sector, %eax
	movl	%eax, 112(%esp)
	movl	104(%esp), %eax
	testl	%eax, %eax
	je	L392
	movl	__ZL5sectq.lto_priv.0, %eax
	cmpw	(%eax), %bx
	je	L592
	movl	$0, 212(%esp)
L392:
	movl	%esi, 76(%esp)
L394:
	cmpl	$19950829, _enginecompatibilitymode
	je	L501
	movl	68(%esp), %eax
	movl	144(%esp), %esi
	movl	112(%esp), %edx
	movl	%eax, 28(%esp)
	movl	%esi, %eax
	negl	%eax
	movl	%eax, 24(%esp)
	movl	4(%edx), %eax
	movl	%eax, 20(%esp)
	movswl	18(%edx), %eax
	movl	%eax, 16(%esp)
	movzwl	12(%edx), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	20(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	16(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	28(%ebp), %ecx
	movl	8(%ebp), %eax
	call	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi
	movl	%eax, %ebx
	testb	$1, %al
	jne	L575
	movl	112(%esp), %edx
	movl	68(%esp), %eax
	movl	%esi, 24(%esp)
	movl	%eax, 28(%esp)
	movl	8(%edx), %eax
	movl	%eax, 20(%esp)
	movswl	26(%edx), %eax
	movl	%eax, 16(%esp)
	movzwl	14(%edx), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	28(%ebp), %ecx
	movl	8(%ebp), %eax
	call	__ZL17hitscan_trysectorPK4vec3IiEPK13usectortypev7P9hitdata_tiiitsiiPKi
	orl	%eax, %ebx
	testb	$1, %bl
	je	L593
L575:
	movl	76(%esp), %esi
L391:
	cmpw	%di, 86(%esp)
	jg	L496
	movl	72(%esp), %eax
	cmpl	%eax, __ZL13clipspritenum.lto_priv.0
	jg	L496
	movl	104(%esp), %eax
	testl	%eax, %eax
	je	L462
	movzwl	__ZL11origmapinfo.lto_priv.0, %eax
	movw	%ax, _numsectors
	movzwl	__ZL11origmapinfo.lto_priv.0+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11origmapinfo.lto_priv.0+4, %eax
	movl	%eax, _sector
	movl	__ZL11origmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
L462:
	xorl	%eax, %eax
L385:
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
L387:
	.cfi_restore_state
	movl	104(%esp), %eax
	testl	%eax, %eax
	je	L461
L389:
	movl	72(%esp), %ebx
	movl	%esi, %edx
	movswl	__ZL14clipspritelist.lto_priv.0(%ebx,%ebx), %eax
	imull	$44, %eax, %eax
	addl	_sprite, %eax
	movl	%eax, 104(%esp)
	call	_clipshape_idx_for_sprite
	movl	%eax, %esi
	testl	%eax, %eax
	js	L594
	movl	%eax, 204(%esp)
	movl	8(%ebp), %eax
	movl	$1, %edi
	leal	144(%esp), %ecx
	movl	104(%esp), %edx
	movl	%eax, (%esp)
	movl	%esi, %eax
	movl	%edx, 208(%esp)
	call	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE
	movzwl	__ZL11clipsectnum.lto_priv.0, %eax
	leal	204(%esp), %ecx
	movl	%ecx, 68(%esp)
	movw	%ax, 86(%esp)
	xorl	%eax, %eax
	jmp	L388
	.p2align 4,,10
	.p2align 3
L600:
	movzwl	88(%esp), %edi
L436:
	movl	_numyaxbunches, %edx
	testl	%edx, %edx
	jg	L458
L583:
	cmpw	86(%esp), %di
	jl	L595
	movl	76(%esp), %esi
	movl	72(%esp), %eax
	cmpl	__ZL13clipspritenum.lto_priv.0, %eax
	jge	L462
L461:
	movzwl	_numwalls, %edx
	movzwl	_numsectors, %eax
	movss	_sector, %xmm0
	movss	_wall, %xmm2
	sall	$16, %edx
	orl	%edx, %eax
	unpcklps	%xmm2, %xmm0
	movl	%eax, __ZL11origmapinfo.lto_priv.0
	movzwl	__ZL11clipmapinfo.lto_priv.0, %eax
	movlps	%xmm0, __ZL11origmapinfo.lto_priv.0+4
	movw	%ax, _numsectors
	movzwl	__ZL11clipmapinfo.lto_priv.0+2, %eax
	movw	%ax, _numwalls
	movl	__ZL11clipmapinfo.lto_priv.0+4, %eax
	movl	%eax, _sector
	movl	__ZL11clipmapinfo.lto_priv.0+8, %eax
	movl	%eax, _wall
	jmp	L389
	.p2align 4,,10
	.p2align 3
L501:
	movb	$0, 85(%esp)
L395:
	movl	112(%esp), %eax
	movl	104(%esp), %ebx
	movswl	(%eax), %esi
	movswl	2(%eax), %eax
	testl	%ebx, %ebx
	setne	80(%esp)
	leal	(%eax,%esi), %ecx
	movl	%ecx, 108(%esp)
	cmpl	%ecx, %esi
	jge	L396
	movw	%di, 60(%esp)
	.p2align 4
	.p2align 3
L435:
	movl	_wall, %eax
	movl	%esi, %edx
	sall	$5, %edx
	leal	(%eax,%edx), %edi
	movswl	12(%edi), %ecx
	movw	%cx, 100(%esp)
	movl	%ecx, 116(%esp)
	testl	%ecx, %ecx
	jns	L504
	cmpb	$0, 80(%esp)
	jne	L411
L504:
	movswl	8(%edi), %edx
	movl	(%edi), %ebx
	sall	$5, %edx
	movl	%ebx, 92(%esp)
	addl	%edx, %eax
	movl	4(%edi), %edx
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%edx, 124(%esp)
	movl	8(%ebp), %edx
	movl	%ecx, 120(%esp)
	movl	8(%ebp), %ecx
	movl	4(%edx), %edx
	movl	%eax, 88(%esp)
	movl	(%ecx), %ecx
	subl	%edx, %eax
	movl	%edx, 96(%esp)
	subl	%ecx, %ebx
	movl	%ecx, 136(%esp)
	movl	%ebx, %ecx
	movl	%edx, %ebx
	imull	%ecx
	movl	%edx, 132(%esp)
	movl	124(%esp), %edx
	movl	%eax, 128(%esp)
	movl	120(%esp), %eax
	subl	%ebx, %edx
	subl	136(%esp), %eax
	imull	%edx
	cmpl	$2147483647, _enginecompatibilitymode
	je	L399
	movl	128(%esp), %ecx
	cltd
	movl	%ecx, %ebx
	movl	%ecx, 128(%esp)
	sarl	$31, %ebx
	movl	%ebx, 132(%esp)
L399:
	movl	128(%esp), %ecx
	movl	132(%esp), %ebx
	cmpl	%eax, %ecx
	sbbl	%edx, %ebx
	jl	L411
	movl	8(%ebp), %eax
	movl	96(%esp), %edx
	movl	8(%eax), %ecx
	leal	148(%esp), %eax
	movl	%eax, 36(%esp)
	leal	152(%esp), %eax
	movl	%eax, 32(%esp)
	leal	156(%esp), %eax
	movl	%eax, 28(%esp)
	movl	88(%esp), %eax
	movl	%eax, 24(%esp)
	movl	120(%esp), %eax
	movl	%eax, 20(%esp)
	movl	124(%esp), %eax
	movl	%eax, 16(%esp)
	movl	92(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	136(%esp), %eax
	call	_rintersect
	cmpl	$-1, %eax
	je	L411
	cmpl	$19950829, _enginecompatibilitymode
	je	L596
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	156(%esp), %eax
	subl	%edx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
	movl	8(%ebp), %eax
	movl	152(%esp), %ebx
	movl	4(%eax), %eax
	subl	%eax, %ebx
	movl	%eax, 136(%esp)
	movl	%ebx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ebx
	movl	%eax, %ecx
	movl	(%ebx), %ebx
	subl	%edx, %ebx
	movl	%ebx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ebx
	movl	%eax, %edx
	movl	4(%ebx), %ebx
	movl	%ebx, 124(%esp)
	subl	136(%esp), %ebx
	movl	%ebx, %eax
/APP
 # 2969 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	128(%esp), %ecx
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jge	L411
L401:
	cmpb	$0, 85(%esp)
	jne	L418
	movl	104(%esp), %eax
	testl	%eax, %eax
	je	L597
	movl	148(%esp), %ebx
	movzwl	14(%edi), %eax
	movss	156(%esp), %xmm0
	movss	152(%esp), %xmm1
	testl	%eax, 48(%esp)
	jne	L422
	leal	192(%esp), %eax
	movss	%xmm1, 8(%esp)
	movl	%eax, 16(%esp)
	leal	140(%esp), %eax
	movl	%eax, 12(%esp)
	movl	116(%esp), %eax
	movss	%xmm0, 4(%esp)
	movl	_sector, %edx
	movss	%xmm1, 128(%esp)
	leal	(%eax,%eax,4), %eax
	movss	%xmm0, 136(%esp)
	leal	(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	leal	196(%esp), %eax
	movss	128(%esp), %xmm1
	movss	136(%esp), %xmm0
	movl	%eax, 16(%esp)
	leal	200(%esp), %eax
	movss	%xmm1, 8(%esp)
	movss	%xmm0, 4(%esp)
	movl	%eax, 12(%esp)
	movl	__ZL5sectq.lto_priv.0, %eax
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	%ebx, 200(%esp)
	movss	136(%esp), %xmm0
	movss	128(%esp), %xmm1
	jg	L421
	cmpl	%ebx, 140(%esp)
	jge	L422
L421:
	cmpl	%ebx, 192(%esp)
	jle	L598
	.p2align 4
	.p2align 3
L418:
	movl	__ZL15clipmove_warned.lto_priv.0, %eax
	movswl	_numsectors, %edx
	cmpl	%edx, 116(%esp)
	jb	L599
L579:
	andl	$1, %eax
	testl	%eax, %eax
	jne	L432
	.p2align 4
	.p2align 3
L411:
	addl	$1, %esi
	cmpl	%esi, 108(%esp)
	jne	L435
	movzwl	60(%esp), %edi
L396:
	movzbl	80(%esp), %eax
	orb	84(%esp), %al
	movb	%al, 116(%esp)
	jne	L575
	movl	64(%esp), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	movl	%eax, 136(%esp)
	testl	%eax, %eax
	js	L436
	movl	24(%ebp), %eax
	movw	%di, 88(%esp)
	sall	$8, %eax
	movl	%eax, 92(%esp)
	jmp	L457
	.p2align 4,,10
	.p2align 3
L437:
	movl	136(%esp), %eax
	movswl	_nextspritesect(%eax,%eax), %eax
	movl	%eax, 136(%esp)
	testl	%eax, %eax
	js	L600
L457:
	imull	$44, 136(%esp), %esi
	movl	52(%esp), %eax
	movl	%esi, 124(%esp)
	addl	_sprite, %esi
	movzwl	12(%esi), %ebx
	movl	%esi, 128(%esp)
	andl	%ebx, %eax
	orl	_hitallsprites, %eax
	movl	%ebx, %ecx
	je	L437
	movswl	14(%esi), %edi
	cmpw	$0, __ZL8pictoidx.lto_priv.0(%edi,%edi)
	js	L438
	movl	__ZL5sectq.lto_priv.0, %eax
	movl	__ZL11clipmapinfo.lto_priv.0+4, %esi
	movswl	(%eax), %eax
	leal	(%eax,%eax,4), %edx
	leal	(%esi,%edx,8), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L439:
	movswl	36(%edx), %eax
	xorl	%ebx, %eax
	testb	$32, %al
	jne	L439
	movl	__ZL13clipspritenum.lto_priv.0, %eax
	cmpl	$4095, %eax
	jle	L601
L438:
	movl	128(%esp), %esi
	movl	(%esi), %eax
	movl	%eax, 112(%esp)
	movl	%eax, 160(%esp)
	movl	4(%esi), %eax
	movl	%eax, 108(%esp)
	movl	%eax, 164(%esp)
	movl	8(%esi), %eax
	movl	%eax, 120(%esp)
	movl	%ecx, %eax
	andl	$48, %eax
	cmpw	$32, %ax
	je	L440
	cmpw	$48, %ax
	je	L441
	cmpw	$16, %ax
	je	L442
	movl	$0, 28(%esp)
	movl	28(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 20(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 8(%esp)
	movl	%esi, %eax
	call	_try_facespr_intersect
	testl	%eax, %eax
	je	L437
	movl	28(%ebp), %eax
	movzwl	62(%esp), %edi
	movl	$-1, %edx
	movw	%di, 16(%eax)
	movzwl	136(%esp), %edi
	movw	%dx, 14(%eax)
	movw	%di, 12(%eax)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L596:
	movl	24(%ebp), %ecx
	testl	%ecx, %ecx
	je	L401
	movl	112(%esp), %ebx
	movl	148(%esp), %eax
	movl	4(%ebx), %ecx
	movl	%ecx, 136(%esp)
	cmpl	%eax, %ecx
	jge	L402
	cmpl	8(%ebx), %eax
	jl	L401
L402:
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	156(%esp), %eax
	subl	%ecx, %eax
/APP
 # 2956 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 128(%esp)
	movl	8(%ebp), %eax
	movl	152(%esp), %ebx
	movl	4(%eax), %eax
	subl	%eax, %ebx
	movl	%eax, %edx
	movl	%ebx, %eax
/APP
 # 2956 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ebx
	movl	%eax, 124(%esp)
	movl	(%ebx), %ebx
	subl	%ecx, %ebx
	movl	%ebx, %eax
/APP
 # 2956 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ebx
	movl	%eax, 120(%esp)
	movl	4(%ebx), %ebx
	movl	%ebx, 96(%esp)
	subl	%edx, %ebx
	movl	%ebx, %eax
/APP
 # 2956 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	128(%esp), %edx
	addl	124(%esp), %edx
	movl	%edx, %ebx
	movl	120(%esp), %edx
	addl	%eax, %edx
	cmpl	%edx, %ebx
	jge	L401
	movl	24(%ebp), %edx
	testl	%edx, %edx
	jle	L403
	movl	112(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 136(%esp)
L403:
	movl	24(%ebp), %eax
	movl	%ecx, 128(%esp)
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %ecx
	movl	136(%esp), %eax
	subl	8(%ecx), %eax
	imull	16(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	8(%ebp), %ebx
	movl	24(%ebp), %edx
	movl	128(%esp), %ecx
	movl	4(%ebx), %ebx
	movl	%edx, 8(%esp)
	sarl	$31, %edx
	movl	%edx, 12(%esp)
	movl	8(%ebp), %edx
	addl	%eax, %ecx
	movl	136(%esp), %eax
	movl	%ecx, 128(%esp)
	subl	8(%edx), %eax
	imull	20(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	64(%esp), %ecx
	addl	%eax, %ebx
	movl	128(%esp), %eax
	movl	%ebx, %edx
	call	_inside
	cmpl	$1, %eax
	jne	L401
	movl	28(%ebp), %eax
	movzwl	62(%esp), %edi
	movw	%di, 16(%eax)
	movl	128(%esp), %edi
	movl	$-1, 12(%eax)
	movl	%edi, (%eax)
	movl	136(%esp), %edi
	movl	%ebx, 4(%eax)
	movl	%edi, 8(%eax)
	jmp	L411
	.p2align 4,,10
	.p2align 3
L594:
	addl	$1, %ebx
	addl	$1, %edi
	movl	%ebx, 72(%esp)
	jmp	L391
	.p2align 4,,10
	.p2align 3
L592:
	movl	$-1, 144(%esp)
	movl	$1, 212(%esp)
	jmp	L392
	.p2align 4,,10
	.p2align 3
L598:
	cmpl	%ebx, 196(%esp)
	jl	L418
	.p2align 4
	.p2align 3
L422:
	movl	104(%esp), %eax
	movl	28(%ebp), %edi
	unpcklps	%xmm1, %xmm0
	movzwl	24(%eax), %edx
	subl	_sprite, %eax
	movl	%ebx, 8(%edi)
	sarl	$2, %eax
	movlps	%xmm0, (%edi)
	imulw	$-29789, %ax, %ax
	movw	%dx, 16(%edi)
	movl	$-1, %edx
	movw	%dx, 14(%edi)
	movw	%ax, 12(%edi)
	jmp	L411
	.p2align 4,,10
	.p2align 3
L599:
	movswl	86(%esp), %ebx
	movl	%ebx, %edx
	subl	$1, %edx
	js	L425
	movzwl	100(%esp), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L426:
	cmpw	_clipsectorlist(%edx,%edx), %cx
	je	L579
	subl	$1, %edx
	jnb	L426
	movl	116(%esp), %edx
	sarl	$3, %edx
	movzbl	__ZL13clipsectormap.lto_priv.0(%edx), %ecx
	leal	__ZL13clipsectormap.lto_priv.0(%edx), %edi
	movl	100(%esp), %edx
	movl	%edi, 128(%esp)
	andl	$7, %edx
	movl	%ecx, %edi
	movb	%cl, 136(%esp)
	notl	%edi
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	movl	%edi, %ecx
	testb	%dl, %cl
	je	L602
	cmpw	$511, 86(%esp)
	jle	L428
L431:
	orl	$1, %eax
	movl	%eax, __ZL15clipmove_warned.lto_priv.0
	.p2align 4
	.p2align 3
L432:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L411
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 24(%esp)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 20(%esp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	$LC3, 12(%esp)
	movl	$3057, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC4, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L411
	.p2align 4,,10
	.p2align 3
L593:
	shrl	%ebx
	movl	%ebx, %eax
	andl	$1, %eax
	movb	%al, 85(%esp)
	jmp	L395
	.p2align 4,,10
	.p2align 3
L597:
	movl	_enginecompatibilitymode, %eax
	cmpl	$19950829, %eax
	je	L603
	movss	156(%esp), %xmm0
	movl	148(%esp), %ebx
	movss	152(%esp), %xmm1
	cmpl	$2147483647, %eax
	je	L604
L412:
	movl	116(%esp), %eax
	testl	%eax, %eax
	js	L417
	movzwl	14(%edi), %eax
	testl	%eax, 48(%esp)
	jne	L417
	leal	200(%esp), %eax
	movss	%xmm1, 8(%esp)
	movl	%eax, 16(%esp)
	leal	140(%esp), %eax
	movl	%eax, 12(%esp)
	movl	116(%esp), %eax
	movss	%xmm0, 4(%esp)
	movl	_sector, %edx
	movss	%xmm1, 128(%esp)
	leal	(%eax,%eax,4), %eax
	movss	%xmm0, 136(%esp)
	leal	(%edx,%eax,8), %eax
	movl	%eax, (%esp)
	call	_getzsofslopeptr
	cmpl	%ebx, 140(%esp)
	movss	136(%esp), %xmm0
	movss	128(%esp), %xmm1
	jge	L417
	cmpl	%ebx, 200(%esp)
	jg	L418
	.p2align 4
	.p2align 3
L417:
	movl	28(%ebp), %edi
	movzwl	62(%esp), %ecx
	unpcklps	%xmm1, %xmm0
	movw	%cx, 16(%edi)
	movl	$-1, %ecx
	movw	%si, 14(%edi)
	movw	%cx, 12(%edi)
	movl	%ebx, 8(%edi)
	movlps	%xmm0, (%edi)
	jmp	L411
	.p2align 4,,10
	.p2align 3
L441:
	movl	128(%esp), %eax
	movswl	22(%eax), %edx
	movswl	28(%eax), %eax
	leal	1024(%eax), %ebx
	addl	$512, %eax
	andl	$2047, %eax
	andl	$2047, %ebx
	movswl	_sintable(%eax,%eax), %eax
	movswl	_sintable(%ebx,%ebx), %ebx
	imull	%edx, %eax
	imull	%edx, %ebx
	movl	20(%ebp), %edx
	leal	(%eax,%eax), %esi
	leal	(%ebx,%ebx), %edi
	negl	%esi
	movl	%edi, 100(%esp)
	movl	%edi, %eax
	movl	16(%ebp), %edi
	movl	%esi, 96(%esp)
/APP
 # 2790 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	92(%esp), %edi
	subl	%eax, %edi
	movl	%edi, 104(%esp)
	je	L437
	testb	$64, %cl
	jne	L605
L455:
	movl	8(%ebp), %eax
	movl	96(%esp), %esi
	movl	4(%eax), %eax
	movl	%eax, 80(%esp)
	movl	%eax, %edx
	movl	8(%ebp), %eax
	subl	108(%esp), %edx
	movl	(%eax), %eax
	movl	%eax, 108(%esp)
	movl	%eax, %edi
	movl	100(%esp), %eax
	subl	112(%esp), %edi
/APP
 # 2794 "source/build/src/clip.cpp" 1
	imull %edx; movl %eax, %ebx; movl %esi, %eax; movl %edx, %esi; imull %edi; addl %ebx, %eax; adcl %esi, %edx; shrdl $15, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %edi
	movl	120(%esp), %edx
	subl	8(%edi), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movl	104(%esp), %eax
	xorl	%edx, %eax
	js	L437
	movl	%edx, %eax
/APP
 # 2795 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %ecx
	movl	104(%esp), %eax
/APP
 # 2795 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	sarl	%ecx
	cmpl	%eax, %ecx
	jge	L437
	movl	104(%esp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	cltd
	shldl	$30, %eax, %edx
	sall	$30, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	%ecx, %edx
	movl	(%eax), %esi
	movl	16(%ebp), %eax
/APP
 # 2798 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%esi, 120(%esp)
	movl	%eax, %edi
	addl	%eax, %esi
	movl	8(%ebp), %eax
	movl	%esi, 176(%esp)
	movl	%ecx, %edx
	movl	4(%eax), %eax
	movl	%eax, 112(%esp)
	movl	20(%ebp), %eax
/APP
 # 2799 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	%eax, %ebx
	movl	112(%esp), %eax
	leal	(%eax,%ebx), %edx
	movl	24(%ebp), %eax
	movl	%edx, 104(%esp)
	movl	%edx, 180(%esp)
	movl	%ecx, %edx
/APP
 # 2800 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $30, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %edx
	addl	8(%edx), %eax
	movl	%eax, 100(%esp)
	movl	%eax, 184(%esp)
	movl	%edi, %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edi
	movl	%ebx, %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %edx
	leal	(%eax,%edi), %ebx
	movl	(%edx), %edx
	movl	%edx, 108(%esp)
	subl	120(%esp), %edx
	movl	%edx, %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ecx
	movl	%eax, %edx
	movl	4(%ecx), %ecx
	movl	%ecx, %eax
	movl	%ecx, 120(%esp)
	subl	112(%esp), %eax
/APP
 # 2802 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	cmpl	%edx, %ebx
	jg	L437
	movl	124(%esp), %eax
	addl	_sprite, %eax
	xorl	%ecx, %ecx
	movzwl	12(%eax), %edx
	notl	%edx
	andl	$48, %edx
	je	L606
L456:
	leal	200(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	104(%esp), %edi
	movl	%esi, %edx
	movl	%eax, 28(%esp)
	leal	192(%esp), %eax
	movl	%eax, 24(%esp)
	leal	172(%esp), %eax
	movl	%edi, %ecx
	movl	%eax, 20(%esp)
	leal	164(%esp), %eax
	movl	%eax, 16(%esp)
	leal	196(%esp), %eax
	movl	%eax, 12(%esp)
	leal	188(%esp), %eax
	movl	%eax, 8(%esp)
	leal	168(%esp), %eax
	movl	%eax, 4(%esp)
	leal	160(%esp), %eax
	movl	%eax, (%esp)
	movl	128(%esp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	196(%esp), %eax
	movl	164(%esp), %edx
	movl	%eax, 16(%esp)
	movl	200(%esp), %eax
	movl	%eax, 20(%esp)
	movl	188(%esp), %eax
	movl	%eax, 8(%esp)
	movl	192(%esp), %eax
	movl	%eax, 12(%esp)
	movl	168(%esp), %eax
	movl	%eax, (%esp)
	movl	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	160(%esp), %eax
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0
	testl	%eax, %eax
	je	L437
	movl	28(%ebp), %eax
	movzwl	62(%esp), %ecx
	movw	%cx, 16(%eax)
	movl	$-1, %ecx
	movw	%cx, 14(%eax)
	movzwl	136(%esp), %ecx
	movl	%edi, 4(%eax)
	movl	100(%esp), %edi
	movw	%cx, 12(%eax)
	movl	%esi, (%eax)
	movl	%edi, 8(%eax)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L440:
	movl	120(%esp), %eax
	movl	24(%ebp), %edx
	movl	%eax, 184(%esp)
	testl	%edx, %edx
	je	L437
	movl	8(%ebp), %edi
	movl	8(%edi), %edx
	movl	%eax, %edi
	subl	%edx, %eax
	movl	%eax, %esi
	xorl	24(%ebp), %esi
	js	L437
	testb	$64, %cl
	je	L451
	cmpl	%edx, %edi
	setl	%bl
	shrw	$3, %cx
	movl	%ecx, %edx
	andl	$1, %edx
	xorl	$1, %edx
	cmpb	%dl, %bl
	je	L437
L451:
	cmpl	$2147483647, _enginecompatibilitymode
	movl	8(%ebp), %edi
	movl	(%edi), %ebx
	movl	24(%ebp), %edi
	movl	%edi, 8(%esp)
	movl	%edi, %esi
	je	L607
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	imull	16(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	addl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%ebx, 176(%esp)
	movl	4(%eax), %esi
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %edi
	movl	120(%esp), %eax
	subl	8(%edi), %eax
	imull	20(%ebp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	addl	%eax, %esi
L453:
	movl	8(%ebp), %eax
	movl	%esi, 180(%esp)
	movl	(%eax), %edx
	movl	%ebx, %eax
	subl	%edx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, 112(%esp)
	movl	8(%ebp), %eax
	movl	%esi, %ecx
	movl	4(%eax), %eax
	subl	%eax, %ecx
	movl	%eax, 124(%esp)
	movl	%ecx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ecx
	movl	%eax, %edi
	movl	(%ecx), %ecx
	subl	%edx, %ecx
	movl	%ecx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ecx
	movl	%eax, %edx
	movl	4(%ecx), %ecx
	movl	%ecx, 108(%esp)
	subl	124(%esp), %ecx
	movl	%ecx, %eax
/APP
 # 2772 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	112(%esp), %ecx
	addl	%eax, %edx
	addl	%edi, %ecx
	cmpl	%edx, %ecx
	jg	L437
	leal	200(%esp), %eax
	movl	$0, 32(%esp)
	movl	%ebx, %edx
	movl	%esi, %ecx
	movl	%eax, 28(%esp)
	leal	192(%esp), %eax
	movl	%eax, 24(%esp)
	leal	172(%esp), %eax
	movl	%eax, 20(%esp)
	leal	164(%esp), %eax
	movl	%eax, 16(%esp)
	leal	196(%esp), %eax
	movl	%eax, 12(%esp)
	leal	188(%esp), %eax
	movl	%eax, 8(%esp)
	leal	168(%esp), %eax
	movl	%eax, 4(%esp)
	leal	160(%esp), %eax
	movl	%eax, (%esp)
	movl	128(%esp), %eax
	call	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0
	movl	196(%esp), %eax
	movl	164(%esp), %edx
	movl	%eax, 16(%esp)
	movl	200(%esp), %eax
	movl	%eax, 20(%esp)
	movl	188(%esp), %eax
	movl	%eax, 8(%esp)
	movl	192(%esp), %eax
	movl	%eax, 12(%esp)
	movl	168(%esp), %eax
	movl	%eax, (%esp)
	movl	172(%esp), %eax
	movl	%eax, 4(%esp)
	movl	160(%esp), %eax
	call	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0
	testl	%eax, %eax
	je	L437
	movl	28(%ebp), %eax
	movzwl	62(%esp), %edi
	movw	%di, 16(%eax)
	movl	$-1, %edi
	movw	%di, 14(%eax)
	movzwl	136(%esp), %edi
	movl	%ebx, (%eax)
	movw	%di, 12(%eax)
	movl	120(%esp), %edi
	movl	%esi, 4(%eax)
	movl	%edi, 8(%eax)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L442:
	movl	128(%esp), %eax
	movsbl	_picanm+1(%edi,%edi,4), %edx
	movzwl	28(%eax), %ebx
	movzbl	20(%eax), %esi
	movsbl	22(%eax), %eax
	addl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	testb	$4, %cl
	cmovne	%eax, %edx
	movl	%ebx, %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	imull	%esi, %eax
	movl	%eax, 120(%esp)
	leal	1536(%ebx), %eax
	andl	$2047, %eax
	movswl	_sintable(%eax,%eax), %eax
	movl	%eax, %ebx
	movl	120(%esp), %eax
	imull	%esi, %ebx
	movl	%ebx, 96(%esp)
	movswl	_tilesiz(,%edi,4), %ebx
	movl	%ebx, %esi
	sarl	%esi
	addl	%edx, %esi
	movl	%esi, %edx
/APP
 # 414 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	112(%esp), %edx
	subl	%eax, %edx
	movl	120(%esp), %eax
	movl	%edx, 104(%esp)
	movl	%ebx, %edx
/APP
 # 415 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	104(%esp), %edx
	addl	%eax, %edx
	movl	96(%esp), %eax
	movl	%edx, 100(%esp)
	movl	%edx, 168(%esp)
	movl	%esi, %edx
/APP
 # 417 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	108(%esp), %esi
	movl	%ebx, %edx
	subl	%eax, %esi
	movl	96(%esp), %eax
/APP
 # 418 "source/build/src/engine_priv.h" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	leal	(%esi,%eax), %ebx
	movl	%esi, 108(%esp)
	movl	8(%ebp), %esi
	andl	$64, %ecx
	movl	%ebx, 96(%esp)
	movl	4(%esi), %edx
	movl	(%esi), %eax
	movl	%ebx, 172(%esp)
	movl	%edx, 120(%esp)
	movl	%eax, 112(%esp)
	je	L444
	movl	%eax, %ecx
	movl	104(%esp), %eax
	subl	%edx, %ebx
	movl	108(%esp), %esi
	subl	120(%esp), %esi
	subl	%ecx, %eax
	imull	%ebx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%esi, %eax
	movl	100(%esp), %edx
	subl	112(%esp), %edx
	imull	%edx
	cmpl	$2147483647, _enginecompatibilitymode
	je	L445
	movl	%ecx, %ebx
	cltd
	sarl	$31, %ebx
L445:
	cmpl	%eax, %ecx
	movl	%ebx, %esi
	sbbl	%edx, %esi
	jl	L437
L444:
	movl	8(%ebp), %eax
	movl	120(%esp), %edx
	movl	8(%eax), %ecx
	leal	184(%esp), %eax
	movl	%eax, 36(%esp)
	leal	180(%esp), %eax
	movl	%eax, 32(%esp)
	leal	176(%esp), %eax
	movl	%eax, 28(%esp)
	movl	96(%esp), %eax
	movl	%eax, 24(%esp)
	movl	100(%esp), %eax
	movl	%eax, 20(%esp)
	movl	108(%esp), %eax
	movl	%eax, 16(%esp)
	movl	104(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	112(%esp), %eax
	call	_rintersect
	movl	%eax, 112(%esp)
	cmpl	$-1, %eax
	je	L437
	movl	8(%ebp), %esi
	movl	176(%esp), %eax
	movl	(%esi), %edx
	movl	%eax, 108(%esp)
	subl	%edx, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	4(%esi), %esi
	movl	%eax, %ecx
	movl	180(%esp), %eax
	movl	%eax, 104(%esp)
	subl	%esi, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ecx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%edx, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, %edx
	movl	28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 120(%esp)
	subl	%esi, %eax
/APP
 # 2715 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L437
	movl	124(%esp), %eax
	addl	_sprite, %eax
	movswl	14(%eax), %edx
	movzbl	21(%eax), %ecx
	movswl	_tilesiz+2(,%edx,4), %ebx
	imull	%ecx, %ebx
	leal	0(,%ebx,4), %esi
	addl	%ebx, %ebx
	testb	$-128, 12(%eax)
	movl	$0, %eax
	cmove	%eax, %ebx
	movsbl	_picanm+2(%edx,%edx,4), %eax
	movl	%esi, 124(%esp)
	movl	184(%esp), %esi
	imull	%ecx, %eax
	leal	0(,%eax,4), %edx
	movl	128(%esp), %eax
	subl	%edx, %ebx
	addl	8(%eax), %ebx
	movl	%ebx, %eax
	subl	124(%esp), %eax
	cmpl	%esi, %eax
	jge	L437
	cmpl	%esi, %ebx
	jle	L437
	movzbl	_picanm+3(%edi,%edi,4), %eax
	testb	$32, %al
	je	L447
	cmpb	$63, %al
	ja	L608
L448:
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	je	L609
L449:
	movswl	_tilesiz(,%edi,4), %edx
	movl	112(%esp), %eax
/APP
 # 2731 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	subl	%esi, %ebx
	movl	124(%esp), %ecx
	movl	%eax, 128(%esp)
	movl	%ebx, %eax
	cltd
	movl	%ecx, 8(%esp)
	sall	$16, %eax
	sarl	$31, %ecx
	shldl	$16, %ebx, %edx
	movl	%eax, (%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.8
	movswl	_tilesiz+2(,%edi,4), %ecx
	movl	%eax, %edx
	movl	$65536, %eax
	subl	%edx, %eax
	movl	%ecx, %edx
/APP
 # 2733 "source/build/src/clip.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	128(%esp), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	addl	_waloff(,%edi,4), %eax
	cmpb	$-1, (%eax)
	je	L437
L447:
	movl	28(%ebp), %eax
	movzwl	62(%esp), %edi
	movl	$-1, %ecx
	movss	108(%esp), %xmm0
	movss	104(%esp), %xmm5
	movw	%di, 16(%eax)
	movzwl	136(%esp), %edi
	unpcklps	%xmm5, %xmm0
	movw	%cx, 14(%eax)
	movw	%di, 12(%eax)
	movl	%esi, 8(%eax)
	movlps	%xmm0, (%eax)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L601:
	movzwl	136(%esp), %edi
	leal	1(%eax), %edx
	movl	%edx, __ZL13clipspritenum.lto_priv.0
	movw	%di, __ZL14clipspritelist.lto_priv.0(%eax,%eax)
	jmp	L437
	.p2align 4,,10
	.p2align 3
L595:
	movswl	%di, %eax
	addl	$1, %edi
	movswl	_clipsectorlist(%eax,%eax), %eax
	movl	$0, 104(%esp)
	movl	$1, 144(%esp)
	movw	%ax, 62(%esp)
	movl	%eax, 64(%esp)
	leal	(%eax,%eax,4), %eax
	sall	$3, %eax
	movl	%eax, 56(%esp)
	addl	_sector, %eax
	movl	%eax, 112(%esp)
	jmp	L394
L458:
	movl	64(%esp), %esi
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movswl	%ax, %ebx
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movswl	%ax, %ecx
	testw	%bx, %bx
	js	L471
	movl	44(%esp), %esi
	movzbl	43(%esp), %edx
	movzbl	__ZL19yax_hitscan_ceilmap(%esi), %eax
	andl	%edx, %eax
	cmpb	%al, %dl
	je	L471
	movzwl	_headsectbunch+512(%ebx,%ebx), %eax
	cmpw	$-1, %ax
	je	L471
	movswl	_numsectors, %esi
	movw	%di, 112(%esp)
	movl	$257, %edi
	movb	$0, 120(%esp)
	movl	%esi, 128(%esp)
	movl	__ZL15clipmove_warned.lto_priv.0, %esi
	movw	%cx, 108(%esp)
	movl	%esi, 124(%esp)
	jmp	L473
	.p2align 4,,10
	.p2align 3
L610:
	cmpw	$511, 86(%esp)
	jg	L467
	orl	%ebx, %esi
	movl	%esi, %ecx
	movl	136(%esp), %esi
	movb	%cl, __ZL13clipsectormap.lto_priv.0(%esi)
	movswl	86(%esp), %esi
	movl	%esi, %ecx
	movw	%ax, _clipsectorlist(%esi,%esi)
	addl	$1, %ecx
	movw	%cx, 86(%esp)
L465:
	movl	136(%esp), %eax
	orb	%bl, __ZL20yax_hitscan_floormap(%eax)
	subl	$1, %edi
	je	L581
	movzwl	_nextsectbunch+8192(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L581
L473:
	movswl	%ax, %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
	andl	$7, %ebx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	movl	%ecx, 136(%esp)
	cmpl	128(%esp), %edx
	jnb	L465
	movzbl	__ZL13clipsectormap.lto_priv.0(%ecx), %esi
	movl	%esi, %ecx
	notl	%ecx
	testb	%bl, %cl
	jne	L610
	cmpw	$511, 86(%esp)
	jle	L465
L467:
	orl	$1, 124(%esp)
	movb	$1, 120(%esp)
	jmp	L465
L581:
	movzwl	112(%esp), %edi
	movswl	108(%esp), %ecx
	cmpb	$0, 120(%esp)
	je	L471
	movl	124(%esp), %eax
	movl	%eax, __ZL15clipmove_warned.lto_priv.0
L471:
	testw	%cx, %cx
	js	L583
	movl	44(%esp), %esi
	movzbl	43(%esp), %ebx
	movzbl	__ZL20yax_hitscan_floormap(%esi), %eax
	andl	%ebx, %eax
	cmpb	%al, %bl
	je	L583
	movzwl	_headsectbunch(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	je	L583
	movswl	_numsectors, %esi
	movw	%di, 120(%esp)
	movl	$257, %edi
	movl	%esi, 128(%esp)
	movl	__ZL15clipmove_warned.lto_priv.0, %esi
	movl	%esi, 124(%esp)
	jmp	L490
	.p2align 4,,10
	.p2align 3
L611:
	cmpw	$511, 86(%esp)
	jg	L483
	orl	%ebx, %esi
	movl	%esi, %ecx
	movl	136(%esp), %esi
	movb	%cl, __ZL13clipsectormap.lto_priv.0(%esi)
	movswl	86(%esp), %esi
	movl	%esi, %ecx
	movw	%ax, _clipsectorlist(%esi,%esi)
	addl	$1, %ecx
	movw	%cx, 86(%esp)
L481:
	movl	136(%esp), %eax
	orb	%bl, __ZL19yax_hitscan_ceilmap(%eax)
	subl	$1, %edi
	je	L591
	movzwl	_nextsectbunch(%edx,%edx), %eax
	cmpw	$-1, %ax
	je	L591
L490:
	movswl	%ax, %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
	andl	$7, %ebx
	sarl	$3, %ecx
	movzbl	__ZL8pow2char.lto_priv.6(%ebx), %ebx
	movl	%ecx, 136(%esp)
	cmpl	128(%esp), %edx
	jnb	L481
	movzbl	__ZL13clipsectormap.lto_priv.0(%ecx), %esi
	movl	%esi, %ecx
	notl	%ecx
	testb	%bl, %cl
	jne	L611
	cmpw	$511, 86(%esp)
	jle	L481
L483:
	orl	$1, 124(%esp)
	movb	$1, 116(%esp)
	jmp	L481
L603:
	movl	116(%esp), %eax
	testl	%eax, %eax
	js	L407
	movzwl	14(%edi), %eax
	testl	%eax, 48(%esp)
	jne	L407
	movl	116(%esp), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	148(%esp), %edx
	cmpl	4(%eax), %edx
	jle	L409
	cmpl	8(%eax), %edx
	jl	L418
L409:
	movl	8(%ebp), %edi
	movl	156(%esp), %eax
	movl	(%edi), %ebx
	movl	%eax, 128(%esp)
	subl	%ebx, %eax
/APP
 # 2989 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ecx
	movl	%eax, %edi
	movl	152(%esp), %eax
	movl	4(%ecx), %ecx
	movl	%eax, 116(%esp)
	movl	%ecx, 136(%esp)
	subl	%ecx, %eax
/APP
 # 2989 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	leal	(%eax,%edi), %ecx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%ebx, %eax
/APP
 # 2989 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %ebx
	movl	%eax, 124(%esp)
	movl	4(%ebx), %ebx
	movl	%ebx, 120(%esp)
	subl	136(%esp), %ebx
	movl	%ebx, %eax
/APP
 # 2989 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	124(%esp), %ebx
	addl	%eax, %ebx
	cmpl	%ebx, %ecx
	jge	L411
	movss	116(%esp), %xmm4
	movl	28(%ebp), %edi
	movl	$-1, %eax
	movss	128(%esp), %xmm0
	movzwl	62(%esp), %ecx
	movw	%si, 14(%edi)
	unpcklps	%xmm4, %xmm0
	movw	%cx, 16(%edi)
	movw	%ax, 12(%edi)
	movl	%edx, 8(%edi)
	movlps	%xmm0, (%edi)
	jmp	L411
L605:
	movl	%ecx, %eax
	movl	%edi, %edx
	shrw	$3, %ax
	shrl	$31, %edx
	andl	$1, %eax
	xorl	$1, %eax
	cmpb	%dl, %al
	jne	L455
	jmp	L437
L604:
	leal	200(%esp), %eax
	movss	%xmm1, 8(%esp)
	movl	%eax, 16(%esp)
	leal	140(%esp), %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movss	%xmm0, 4(%esp)
	addl	_sector, %eax
	movl	%eax, (%esp)
	movss	%xmm1, 128(%esp)
	movss	%xmm0, 136(%esp)
	call	_getzsofslopeptr
	cmpl	%ebx, 140(%esp)
	jg	L418
	movss	136(%esp), %xmm0
	cmpl	%ebx, 200(%esp)
	movss	128(%esp), %xmm1
	jl	L418
	jmp	L412
L607:
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	imull	16(%ebp), %eax
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide64.lto_priv.8
	addl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%ebx, 176(%esp)
	movl	4(%eax), %esi
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	8(%ebp), %edi
	movl	120(%esp), %eax
	subl	8(%edi), %eax
	imull	20(%ebp), %eax
	movl	%eax, (%esp)
	sarl	$31, %eax
	movl	%eax, 4(%esp)
	call	_tabledivide64.lto_priv.8
	addl	%eax, %esi
	jmp	L453
L407:
	movl	8(%ebp), %edi
	movl	156(%esp), %eax
	movl	(%edi), %edx
	movl	%eax, 128(%esp)
	subl	%edx, %eax
/APP
 # 2982 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	8(%ebp), %ecx
	movl	152(%esp), %edi
	movl	%eax, %ebx
	movl	4(%ecx), %ecx
	movl	%edi, %eax
	movl	%ecx, 136(%esp)
	subl	%ecx, %eax
/APP
 # 2982 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	addl	%eax, %ebx
	movl	28(%ebp), %eax
	movl	(%eax), %eax
	subl	%edx, %eax
/APP
 # 2982 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	28(%ebp), %edx
	movl	%eax, 124(%esp)
	movl	4(%edx), %edx
	movl	%edx, 120(%esp)
	subl	136(%esp), %edx
	movl	%edx, %eax
/APP
 # 2982 "source/build/src/clip.cpp" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	124(%esp), %edx
	addl	%eax, %edx
	cmpl	%edx, %ebx
	jge	L411
	movl	28(%ebp), %ecx
	movl	$-1, %eax
	movl	%edi, 136(%esp)
	movss	128(%esp), %xmm0
	movzwl	62(%esp), %ebx
	movss	136(%esp), %xmm3
	movw	%ax, 12(%ecx)
	movl	148(%esp), %eax
	movw	%bx, 16(%ecx)
	unpcklps	%xmm3, %xmm0
	movw	%si, 14(%ecx)
	movl	%eax, 8(%ecx)
	movlps	%xmm0, (%ecx)
	jmp	L411
L591:
	movzwl	120(%esp), %edi
	cmpb	$0, 116(%esp)
	je	L583
	movl	124(%esp), %eax
	movl	%eax, __ZL15clipmove_warned.lto_priv.0
	jmp	L583
L425:
	movl	116(%esp), %edx
	sarl	$3, %edx
	movzbl	__ZL13clipsectormap.lto_priv.0(%edx), %ecx
	leal	__ZL13clipsectormap.lto_priv.0(%edx), %edi
	movl	100(%esp), %edx
	movl	%edi, 128(%esp)
	andl	$7, %edx
	movl	%ecx, %edi
	movb	%cl, 136(%esp)
	notl	%edi
	movzbl	__ZL8pow2char.lto_priv.6(%edx), %edx
	movl	%edi, %ecx
	testb	%dl, %cl
	je	L579
L428:
	movl	128(%esp), %edi
	orb	136(%esp), %dl
	addw	$1, 86(%esp)
	movb	%dl, (%edi)
	movzwl	100(%esp), %edi
	movw	%di, _clipsectorlist(%ebx,%ebx)
	jmp	L579
L606:
	movswl	22(%eax), %ecx
	jmp	L456
L602:
	cmpw	$511, 86(%esp)
	jle	L579
	jmp	L431
	.p2align 4,,10
	.p2align 3
L500:
	movl	$-1, %eax
	jmp	L385
L609:
	movswl	%di, %eax
	call	_tileLoad.isra.0
	movl	_waloff(,%edi,4), %eax
	testl	%eax, %eax
	je	L447
	jmp	L449
	.p2align 4,,10
	.p2align 3
L608:
	movl	%edi, %eax
	call	_animateoffs
	addl	%eax, %edi
	jmp	L448
	.cfi_endproc
LFE27:
	.p2align 4
	.globl	_paletteInitClosestColorMap
	.def	_paletteInitClosestColorMap;	.scl	2;	.type	32;	.endef
_paletteInitClosestColorMap:
LFB31:
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
	movl	$4913, 8(%esp)
	movl	36(%esp), %ebx
	movl	$0, 4(%esp)
	movl	$__ZL7colhere, (%esp)
	call	_memset
	movl	$39304, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL7colhead, (%esp)
	call	_memset
	movl	$768, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$__ZL16colmatch_palette, (%esp)
	call	_memcpy
	leal	765(%ebx), %eax
	movl	$255, %edx
	.p2align 4
	.p2align 3
L614:
	movzbl	(%eax), %ecx
	movzbl	1(%eax), %ebx
	movl	$-1, %edi
	shrb	$3, %cl
	shrb	$3, %bl
	movzbl	%cl, %ecx
	movzbl	%bl, %ebx
	sall	$5, %ecx
	addl	%ebx, %ecx
	movzbl	2(%eax), %ebx
	sall	$5, %ecx
	shrb	$3, %bl
	movzbl	%bl, %ebx
	leal	1057(%ecx,%ebx), %ebx
	movl	%ebx, %esi
	movl	%ebx, %ecx
	sarl	$3, %esi
	andl	$7, %ecx
	movzbl	__ZL8pow2char.lto_priv.7(%ecx), %ecx
	movzbl	__ZL7colhere(%esi), %ebp
	movb	%cl, 15(%esp)
	movl	%ebp, %ecx
	notl	%ecx
	testb	%cl, 15(%esp)
	jne	L613
	movzbl	__ZL7colhead(%ebx), %edi
L613:
	movzbl	15(%esp), %ecx
	movl	%edi, __ZL7colnext(,%edx,4)
	subl	$3, %eax
	movb	%dl, __ZL7colhead(%ebx)
	subl	$1, %edx
	orl	%ebp, %ecx
	movb	%cl, __ZL7colhere(%esi)
	cmpl	$-1, %edx
	jne	L614
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	addl	$16, %esp
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
LFE31:
	.p2align 4
	.globl	_paletteGetClosestColorWithBlacklist
	.def	_paletteGetClosestColorWithBlacklist;	.scl	2;	.type	32;	.endef
_paletteGetClosestColorWithBlacklist:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$52, %esp
	.cfi_def_cfa_offset 72
	movl	%edx, 12(%esp)
	movl	72(%esp), %eax
	cmpl	%eax, __ZL15cache_lastokcol
	jne	L619
	movl	76(%esp), %ebx
	testl	%ebx, %ebx
	je	L668
	movl	76(%esp), %eax
	movl	$32, 8(%esp)
	movl	$__ZL15cache_blacklist, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 16(%esp)
	call	_memcmp
	movl	16(%esp), %ecx
	testl	%eax, %eax
	jne	L621
L626:
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
	je	L628
	movl	44(%esp), %ebx
	leal	-1(%ebx), %eax
	andl	$4095, %eax
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	movl	%edx, %eax
	shrl	$24, %edx
	andl	$16777215, %eax
	movl	%edx, 24(%esp)
	cmpl	%ebp, %eax
	je	L618
	movl	$4096, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	movl	%eax, %edi
	leal	-3(%eax), %ebx
	xorl	%eax, %eax
	cmpl	$3, %edx
	jle	L631
	movl	%edi, 16(%esp)
	jmp	L636
	.p2align 4,,10
	.p2align 3
L704:
	movl	__ZL15colmatchresults.lto_priv.0+4(,%eax,4), %edx
	movl	%edx, %edi
	andl	$16777215, %edi
	cmpl	%ebp, %edi
	je	L634
	movl	__ZL15colmatchresults.lto_priv.0+8(,%eax,4), %edx
	movl	%edx, %edi
	andl	$16777215, %edi
	cmpl	%ebp, %edi
	je	L634
	movl	__ZL15colmatchresults.lto_priv.0+12(,%eax,4), %edx
	andl	$16777215, %edx
	cmpl	%ebp, %edx
	je	L702
	addl	$4, %eax
	cmpl	%ebx, %eax
	jge	L703
L636:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	andl	$16777215, %edx
	cmpl	%ebp, %edx
	jne	L704
L633:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
L634:
	shrl	$24, %edx
	cmpl	%edx, 72(%esp)
	jb	L628
	movl	76(%esp), %eax
	movl	%edx, 24(%esp)
	movl	%edx, %ebx
	testl	%eax, %eax
	je	L618
	movl	76(%esp), %edi
	movl	%edx, %eax
	sarl	$3, %ebx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.7(%eax), %eax
	movzbl	(%edi,%ebx), %ebx
	andl	%eax, %ebx
	cmpb	%bl, %al
	jne	L618
	.p2align 4
	.p2align 3
L628:
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
	je	L705
	movl	%ebp, 48(%esp)
	movl	%ebx, %ebp
	jmp	L641
	.p2align 6
	.p2align 4,,10
	.p2align 3
L651:
	subl	$1, %ecx
	jb	L706
L641:
	movl	__ZL7colscan.lto_priv.0(,%ecx,4), %eax
	addl	%edi, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	andl	$7, %edx
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	__ZL7colhere(%esi), %esi
	andl	%edx, %esi
	movl	%esi, %ebx
	cmpb	%bl, %dl
	jne	L651
	movl	%edi, 36(%esp)
	movzbl	__ZL7colhead(%eax), %eax
	movl	%ecx, 40(%esp)
	movl	%ebp, 16(%esp)
	.p2align 4
	.p2align 3
L655:
	leal	(%eax,%eax,2), %ecx
	movzbl	__ZL16colmatch_palette+1(%ecx), %edx
	addl	20(%esp), %edx
	leal	__ZL16colmatch_palette(%ecx), %esi
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	movl	%edx, 12(%esp)
	cmpl	16(%esp), %edx
	jge	L654
	cmpl	%eax, 72(%esp)
	jl	L654
	movl	76(%esp), %ebx
	movl	%eax, %edi
	movl	%eax, %ebp
	andl	$7, %edi
	sarl	$3, %ebp
	movzbl	__ZL8pow2char.lto_priv.7(%edi), %edi
	movzbl	(%ebx,%ebp), %ebp
	andl	%edi, %ebp
	movl	%edi, %ebx
	movl	%ebp, %edx
	cmpb	%dl, %bl
	je	L654
	movzbl	__ZL16colmatch_palette(%ecx), %ecx
	movl	16(%esp), %edi
	addl	28(%esp), %ecx
	movl	12(%esp), %edx
	addl	__ZL5rdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%edi, %edx
	jge	L654
	movzbl	2(%esi), %ecx
	addl	32(%esp), %ecx
	addl	__ZL5bdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%edi, %edx
	cmovge	%edi, %edx
	movl	24(%esp), %edi
	cmovl	%eax, %edi
	movl	%edx, 16(%esp)
	movl	%edi, 24(%esp)
L654:
	movl	__ZL7colnext(,%eax,4), %eax
	testl	%eax, %eax
	jns	L655
	movl	40(%esp), %ecx
	movl	36(%esp), %edi
	movl	16(%esp), %ebp
	subl	$1, %ecx
	jnb	L641
L706:
	movl	24(%esp), %edx
	movl	48(%esp), %ebp
	testl	%edx, %edx
	jns	L661
	movl	72(%esp), %eax
	movl	$2147483647, 12(%esp)
	movl	%ebp, 16(%esp)
	movl	76(%esp), %ebp
	leal	1(%eax), %edi
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L665:
	movl	%eax, %edx
	movl	%eax, %ebx
	andl	$7, %edx
	sarl	$3, %ebx
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	0(%ebp,%ebx), %ecx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L663
	leal	(%eax,%eax,2), %ebx
	movzbl	__ZL16colmatch_palette+1(%ebx), %edx
	addl	20(%esp), %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	12(%esp), %edx
	jge	L663
	movzbl	__ZL16colmatch_palette(%ebx), %esi
	addl	28(%esp), %esi
	addl	__ZL5rdist.lto_priv.0(,%esi,4), %edx
	movl	12(%esp), %esi
	cmpl	%esi, %edx
	jge	L663
	movzbl	__ZL16colmatch_palette+2(%ebx), %ebx
	addl	32(%esp), %ebx
	addl	__ZL5bdist.lto_priv.0(,%ebx,4), %edx
	movl	24(%esp), %ebx
	cmpl	%esi, %edx
	cmovge	%esi, %edx
	cmovl	%eax, %ebx
	movl	%edx, 12(%esp)
	movl	%ebx, 24(%esp)
L663:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L665
L701:
	movl	16(%esp), %ebp
L661:
	movl	44(%esp), %ebx
	leal	1(%ebx), %eax
	andl	$4095, %ebx
	movl	%eax, __ZL18numcolmatchresults.lto_priv.0
	movl	24(%esp), %eax
	sall	$24, %eax
	orl	%ebp, %eax
	movl	%eax, __ZL15colmatchresults.lto_priv.0(,%ebx,4)
L618:
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
L619:
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
	je	L627
L624:
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
L700:
	movl	12(%esp), %edx
	movl	%ecx, %eax
	movl	$0, 44(%esp)
	sall	$16, %eax
	orl	%esi, %eax
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, %ebp
	jmp	L628
L625:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	movl	%ecx, 16(%esp)
	call	_memset
	movl	16(%esp), %ecx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
L627:
	movl	$0, __ZL15cache_blacklist
	movl	$0, __ZL15cache_blacklist+4
	movl	$0, __ZL15cache_blacklist+8
	movl	$0, __ZL15cache_blacklist+12
	movl	$0, __ZL15cache_blacklist+16
	movl	$0, __ZL15cache_blacklist+20
	movl	$0, __ZL15cache_blacklist+24
	movl	$0, __ZL15cache_blacklist+28
	jmp	L700
L705:
	movl	%ebp, 40(%esp)
	movl	%esi, %ebp
	movl	%ebx, 12(%esp)
	jmp	L649
	.p2align 6
	.p2align 4,,10
	.p2align 3
L642:
	subl	$1, %ecx
	jb	L707
L649:
	movl	__ZL7colscan.lto_priv.0(,%ecx,4), %eax
	addl	%edi, %eax
	movl	%eax, %edx
	movl	%eax, %esi
	andl	$7, %edx
	sarl	$3, %esi
	movzbl	__ZL8pow2char.lto_priv.7(%edx), %edx
	movzbl	__ZL7colhere(%esi), %esi
	andl	%edx, %esi
	movl	%esi, %ebx
	cmpb	%dl, %bl
	jne	L642
	movzbl	__ZL7colhead(%eax), %eax
	movl	12(%esp), %ebx
	movl	%edi, 16(%esp)
	movl	%ecx, 36(%esp)
	.p2align 4
	.p2align 3
L646:
	leal	(%eax,%eax,2), %esi
	movzbl	__ZL16colmatch_palette+1(%esi), %edx
	leal	__ZL16colmatch_palette(%esi), %edi
	addl	%ebp, %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	%ebx, %edx
	jge	L645
	cmpl	%eax, 72(%esp)
	jl	L645
	movzbl	__ZL16colmatch_palette(%esi), %esi
	addl	28(%esp), %esi
	addl	__ZL5rdist.lto_priv.0(,%esi,4), %edx
	cmpl	%ebx, %edx
	jge	L645
	movzbl	2(%edi), %esi
	addl	32(%esp), %esi
	movl	24(%esp), %edi
	addl	__ZL5bdist.lto_priv.0(,%esi,4), %edx
	cmpl	%ebx, %edx
	cmovl	%eax, %edi
	cmovl	%edx, %ebx
	movl	%edi, 24(%esp)
L645:
	movl	__ZL7colnext(,%eax,4), %eax
	testl	%eax, %eax
	jns	L646
	movl	36(%esp), %ecx
	movl	16(%esp), %edi
	movl	%ebx, 12(%esp)
	subl	$1, %ecx
	jnb	L649
L707:
	movl	24(%esp), %eax
	movl	40(%esp), %ebp
	testl	%eax, %eax
	jns	L661
	movl	72(%esp), %eax
	movl	%ebp, 16(%esp)
	movl	$2147483647, %esi
	movl	20(%esp), %ebp
	leal	1(%eax), %edi
	xorl	%eax, %eax
	movl	%edi, 12(%esp)
	.p2align 4
	.p2align 3
L660:
	movzbl	__ZL16colmatch_palette+1(%eax,%eax,2), %edx
	addl	%ebp, %edx
	movl	__ZL5gdist.lto_priv.0(,%edx,4), %edx
	cmpl	%esi, %edx
	jge	L658
	movzbl	__ZL16colmatch_palette(%eax,%eax,2), %ebx
	addl	28(%esp), %ebx
	addl	__ZL5rdist.lto_priv.0(,%ebx,4), %edx
	cmpl	%esi, %edx
	jge	L658
	movzbl	__ZL16colmatch_palette+2(%eax,%eax,2), %ecx
	addl	32(%esp), %ecx
	movl	24(%esp), %ebx
	addl	__ZL5bdist.lto_priv.0(,%ecx,4), %edx
	cmpl	%esi, %edx
	cmovl	%eax, %ebx
	cmovl	%edx, %esi
	movl	%ebx, 24(%esp)
L658:
	addl	$1, %eax
	cmpl	12(%esp), %eax
	jne	L660
	jmp	L701
L621:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	movl	%ecx, 16(%esp)
	call	_memset
	movl	16(%esp), %ecx
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	jmp	L624
L668:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L620:
	movl	__ZL15cache_blacklist(,%eax,4), %edx
	testl	%edx, %edx
	jne	L625
	addl	$1, %eax
	cmpl	$8, %eax
	jne	L620
	jmp	L626
L703:
	movl	16(%esp), %edi
L631:
	cmpl	%edi, %eax
	jge	L628
	.p2align 5
	.p2align 4
	.p2align 3
L637:
	movl	__ZL15colmatchresults.lto_priv.0(,%eax,4), %edx
	movl	%edx, %ebx
	andl	$16777215, %ebx
	cmpl	%ebp, %ebx
	je	L634
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	L637
	jmp	L628
L702:
	addl	$3, %eax
	jmp	L633
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
LC5:
	.ascii "File %s not found\0"
LC6:
	.ascii "source/build/src/common.cpp\0"
	.text
	.p2align 4
	.globl	_check_file_exist
	.def	_check_file_exist;	.scl	2;	.type	32;	.endef
_check_file_exist:
LFB35:
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
	je	L716
	movl	20(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 292
	subl	$4, %esp
	.cfi_def_cfa_offset 296
L713:
	movl	%esi, _pathsearchmode
	xorl	%eax, %eax
L708:
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
L716:
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
	je	L717
	movl	288(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L713
	.p2align 4,,10
	.p2align 3
L717:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L718
L711:
	movl	%esi, _pathsearchmode
	movl	288(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	$1, %eax
	jmp	L708
	.p2align 4,,10
	.p2align 3
L718:
	.cfi_restore_state
	movl	%ebx, 16(%esp)
	movl	$LC5, 12(%esp)
	movl	$158, 8(%esp)
	movl	$LC6, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L711
	.cfi_endproc
LFE35:
	.section .rdata,"dr"
LC7:
	.ascii "*\0"
LC8:
	.ascii "*.sf2\0"
	.text
	.p2align 4
	.globl	_fnlist_getnames.constprop.0.isra.0
	.def	_fnlist_getnames.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
_fnlist_getnames.constprop.0.isra.0:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -20
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L720
	.p2align 4
	.p2align 3
L721:
	movl	%ebx, %eax
	movl	12(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L721
L720:
	movl	4(%esi), %ebx
	testl	%ebx, %ebx
	je	L722
	.p2align 4
	.p2align 3
L723:
	movl	%ebx, %eax
	movl	12(%ebx), %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	testl	%ebx, %ebx
	jne	L723
L722:
	movl	$0, (%esi)
	movl	$2, %ecx
	movl	$LC7, %edx
	movl	%edi, %eax
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	call	_klistpath
	movl	$1, %ecx
	movl	$LC8, %edx
	movl	%eax, (%esi)
	movl	%edi, %eax
	call	_klistpath
	movl	(%esi), %ecx
	movl	%eax, 4(%esi)
	testl	%ecx, %ecx
	je	L724
	movl	8(%esi), %edi
	leal	1(%edi), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L725:
	movl	%edx, 8(%esi)
	movl	12(%ecx), %ecx
	addl	$1, %edx
	testl	%ecx, %ecx
	jne	L725
L724:
	testl	%eax, %eax
	je	L719
	movl	12(%esi), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L727:
	addl	$1, %edx
	movl	%edx, 12(%esi)
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L727
L719:
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
LFE38:
	.p2align 4
	.globl	_Paths_ReadRegistryValue.constprop.0
	.def	_Paths_ReadRegistryValue.constprop.0;	.scl	2;	.type	32;	.endef
_Paths_ReadRegistryValue.constprop.0:
LFB42:
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
L747:
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
	jne	L749
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
	je	L752
L749:
	addl	$4, %esi
	leal	-16(%ebp), %eax
	cmpl	%eax, %esi
	jne	L747
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
L752:
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
LFE42:
	.section .rdata,"dr"
LC13:
	.ascii "%s\0"
LC14:
	.ascii "source/build/include/print.h\0"
	.text
	.p2align 4
	.globl	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0
	.def	__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
__Z10buildprintIJPKcS1_S1_iS1_iS1_iS1_EEjDpT_.constprop.0.isra.0:
LFB45:
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
	js	L754
	movl	%ebx, 16(%esp)
	movl	$LC13, 12(%esp)
	movl	$196, 8(%esp)
	movl	$LC14, 4(%esp)
	movl	$0, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L754:
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
LFE45:
	.p2align 4
	.globl	__Z13handle_memerri
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
__Z13handle_memerri:
LFB73:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L757
	call	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0
	movl	_g_sm_heap, %eax
	testl	%eax, %eax
	je	L757
	call	__sm_allocator_destroy.part.0.lto_priv.1
L757:
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE73:
	.p2align 4
	.globl	__xstrdup
	.def	__xstrdup;	.scl	2;	.type	32;	.endef
__xstrdup:
LFB74:
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
	je	L767
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
L767:
	.cfi_restore_state
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE74:
	.p2align 4
	.globl	__xmalloc
	.def	__xmalloc;	.scl	2;	.type	32;	.endef
__xmalloc:
LFB75:
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
	je	L772
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L772:
	.cfi_restore_state
	movl	8(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE75:
	.p2align 4
	.globl	__xcalloc
	.def	__xcalloc;	.scl	2;	.type	32;	.endef
__xcalloc:
LFB76:
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
	je	L778
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
L778:
	.cfi_restore_state
	movl	28(%esp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE76:
	.p2align 4
	.globl	__xrealloc
	.def	__xrealloc;	.scl	2;	.type	32;	.endef
__xrealloc:
LFB77:
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
	jbe	L802
	testl	%esi, %esi
	je	L803
	movl	%ebx, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	(%ecx), %edx
	cmpl	%edx, %eax
	jnb	L784
	addl	$1, %eax
	movl	%edi, 28(%esp)
	sall	$4, %eax
	.cfi_offset 7, -8
	movl	%eax, %edi
	cmpl	%esi, %eax
	jb	L785
L791:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %edx
L779:
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
L784:
	.cfi_restore_state
	movl	$8, %eax
	cmpl	%eax, %esi
	cmovnb	%esi, %eax
	subl	$1, %eax
	shrl	$4, %eax
	cmpl	%edx, %eax
	jb	L804
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
	jb	L790
	movl	%eax, %ecx
	shrl	%ecx
	subl	%ecx, %eax
	cmpl	%eax, %esi
	jb	L790
	leal	(%edx,%ebx), %eax
	testb	$7, %al
	je	L791
L790:
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
	je	L789
	cmpl	%edi, %esi
	movl	%edi, %ecx
	cmovbe	%esi, %ecx
	cmpb	$0, __mi_cpu_has_fsrm
	je	L792
	movl	%ebx, %esi
	movl	%eax, %edi
/APP
 # 2169 "G:/msys64-2/mingw32/include/psdk_inc/intrin-impl.h" 1
	rep movsb
 # 0 "" 2
/NO_APP
L793:
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
L802:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	movl	%eax, %edx
L781:
	testl	%edx, %edx
	jne	L779
	testl	%esi, %esi
	je	L779
	movl	%edi, 28(%esp)
	.cfi_offset 7, -8
L789:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L804:
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
	jmp	L781
	.p2align 4,,10
	.p2align 3
L785:
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
	jmp	L781
	.p2align 4,,10
	.p2align 3
L803:
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 36
	jmp	L779
	.p2align 4,,10
	.p2align 3
L792:
	.cfi_offset 7, -8
	movl	%ecx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 12(%esp)
	call	_memcpy
	movl	12(%esp), %edx
	jmp	L793
	.cfi_endproc
LFE77:
	.p2align 4
	.globl	_Bstrtoken.constprop.0
	.def	_Bstrtoken.constprop.0;	.scl	2;	.type	32;	.endef
_Bstrtoken.constprop.0:
LFB100:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L827
	movl	%esi, 12(%esp)
	movl	%eax, %ebx
	movl	%edi, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
L806:
	movzbl	(%ebx), %eax
	movl	%ecx, %edi
	movl	%edx, %esi
	testb	%al, %al
	jne	L810
	jmp	L808
	.p2align 4,,10
	.p2align 3
L828:
	movzbl	1(%ebx), %eax
	addl	$1, %ebx
	testb	%al, %al
	je	L808
L810:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strchr
	testl	%eax, %eax
	jne	L828
	movzbl	(%ebx), %eax
	testb	%al, %al
	je	L808
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	movl	%ebx, %ebp
	jmp	L811
	.p2align 4,,10
	.p2align 3
L812:
	movzbl	1(%ebp), %eax
	addl	$1, %ebp
	testb	%al, %al
	je	L813
L811:
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_strchr
	testl	%eax, %eax
	je	L812
	cmpb	$0, 0(%ebp)
	je	L813
	movb	$0, 0(%ebp)
	addl	$1, %ebp
	movl	%ebp, (%edi)
L815:
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	%ebx, %eax
	movl	20(%esp), %ebp
	.cfi_restore 5
L805:
	movl	8(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L813:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, (%edi)
	jmp	L815
	.p2align 4,,10
	.p2align 3
L827:
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	(%ecx), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L805
	movl	%esi, 12(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jmp	L806
	.p2align 4,,10
	.p2align 3
L808:
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
LFE100:
	.section .rdata,"dr"
LC15:
	.ascii "/\0"
	.text
	.p2align 4
	.globl	_Bcorrectfilename.isra.0
	.def	_Bcorrectfilename.isra.0;	.scl	2;	.type	32;	.endef
_Bcorrectfilename.isra.0:
LFB102:
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
	je	L830
	movl	%ebx, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	_strcpy
	movb	$0, (%esi,%edi)
	movzbl	(%esi), %edx
	movl	%esi, %eax
	movl	$0, 24(%esp)
	testb	%dl, %dl
	je	L850
	.p2align 5
	.p2align 4
	.p2align 3
L831:
	cmpb	$92, %dl
	jne	L833
	movb	$47, (%eax)
L833:
	movzbl	1(%eax), %edx
	addl	$1, %eax
	testb	%dl, %dl
	jne	L831
	movzbl	(%esi), %edx
	cmpl	%eax, %esi
	jnb	L850
	cmpb	$47, -1(%eax)
	sete	%al
	setne	19(%esp)
	movl	%eax, %ebp
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
L832:
	movl	%ebx, 12(%esp)
	movl	%esi, %eax
	xorl	%edi, %edi
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L834:
	leal	24(%esp), %ecx
	movl	$LC15, %edx
	call	_Bstrtoken.constprop.0
	testl	%eax, %eax
	je	L835
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	L838
	cmpb	$46, %dl
	je	L878
L837:
	movl	%eax, 28(%esp,%edi,4)
	addl	$1, %edi
L838:
	xorl	%eax, %eax
	jmp	L834
L850:
	movb	$1, 19(%esp)
	xorl	%ebp, %ebp
	movl	$0, 20(%esp)
	jmp	L832
	.p2align 4,,10
	.p2align 3
L878:
	movzbl	1(%eax), %edx
	testb	%dl, %dl
	je	L838
	cmpb	$46, %dl
	jne	L837
	cmpb	$0, 2(%eax)
	jne	L837
	subl	$1, %edi
	movl	$0, %eax
	cmovs	%eax, %edi
	xorl	%eax, %eax
	jmp	L834
	.p2align 4,,10
	.p2align 3
L835:
	movl	%ebx, %edx
	movzbl	19(%esp), %eax
	movl	12(%esp), %ebx
	andb	8(%esp), %al
	je	L839
	subl	$1, %edi
	movl	$0, %ecx
	movl	$1, 20(%esp)
	movl	%eax, %ebp
	cmovs	%ecx, %edi
L839:
	testl	%edi, %edi
	jne	L840
	movl	%ebp, %eax
	testb	%al, %al
	je	L840
L841:
	movb	$47, (%ebx)
	addl	$1, %ebx
L842:
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
L840:
	.cfi_restore_state
	cmpb	$47, %dl
	jne	L843
	movb	$47, (%ebx)
	addl	$1, %ebx
L843:
	testl	%edi, %edi
	je	L845
	xorl	%ecx, %ecx
	leal	28(%esp), %ebp
	.p2align 4
	.p2align 3
L844:
	movl	0(%ebp,%ecx,4), %edx
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L846
	.p2align 4
	.p2align 4
	.p2align 3
L847:
	addl	$1, %edx
	movb	%al, (%ebx)
	addl	$1, %ebx
	movzbl	(%edx), %eax
	testb	%al, %al
	jne	L847
L846:
	addl	$1, %ecx
	cmpl	%ecx, %edi
	je	L845
	movb	$47, (%ebx)
	addl	$1, %ebx
	jmp	L844
	.p2align 4,,10
	.p2align 3
L845:
	movl	20(%esp), %eax
	testl	%eax, %eax
	je	L842
	jmp	L841
L830:
	movl	%ebp, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE102:
	.section .rdata,"dr"
LC16:
	.ascii "KERNEL32.DLL\0"
LC17:
	.ascii "GlobalMemoryStatusEx\0"
	.align 4
LC18:
	.ascii "Couldn't determine system memory size with GlobalMemoryStatusEx()!\0"
LC19:
	.ascii "source/build/src/compat.cpp\0"
LC20:
	.ascii "Unable to load KERNEL32.DLL.\0"
	.text
	.p2align 4
	.globl	_Bgetsysmemsize
	.def	_Bgetsysmemsize;	.scl	2;	.type	32;	.endef
_Bgetsysmemsize:
LFB103:
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
	movl	$LC16, (%esp)
	call	*__imp__LoadLibraryA@4
	subl	$4, %esp
	testl	%eax, %eax
	je	L880
	movl	$LC17, 4(%esp)
	movl	%eax, %esi
	movl	%eax, (%esp)
	call	*__imp__GetProcAddress@8
	subl	$8, %esp
	testl	%eax, %eax
	je	L885
	leal	-80(%ebp), %edx
	movl	$64, -80(%ebp)
	movl	%edx, (%esp)
	call	*%eax
	subl	$4, %esp
	testl	%eax, %eax
	je	L882
	movl	-72(%ebp), %ebx
	movl	$-1, %eax
	xorl	%edx, %edx
	cmpl	%ebx, %eax
	sbbl	-68(%ebp), %edx
	cmovc	%eax, %ebx
	testl	%ebx, %ebx
	je	L885
L886:
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
L885:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L894
L882:
	movl	$-1, %ebx
	jmp	L886
	.p2align 4,,10
	.p2align 3
L880:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L895
L888:
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
L894:
	.cfi_restore_state
	movl	$LC18, 12(%esp)
	movl	$639, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L882
	.p2align 4,,10
	.p2align 3
L895:
	movl	$LC20, 12(%esp)
	movl	$646, 8(%esp)
	movl	$LC19, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L888
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	_Bcrc32
	.def	_Bcrc32;	.scl	2;	.type	32;	.endef
_Bcrc32:
LFB104:
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
	jle	L897
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
L898:
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
	jne	L898
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
L897:
	testl	%esi, %esi
	jle	L899
	addl	%ebx, %esi
L900:
	addl	$1, %ebx
	movl	%edx, %eax
	xorb	-1(%ebx), %dl
	shrl	$8, %eax
	movzbl	%dl, %edx
	xorl	_crc32table(,%edx,4), %eax
	movl	%eax, %edx
	cmpl	%esi, %ebx
	jne	L900
L899:
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
LFE104:
	.section .rdata,"dr"
LC21:
	.ascii "Failed including %s as module\0"
LC22:
	.ascii "source/build/src/defs.cpp\0"
LC23:
	.ascii "%s:%d: Failed including %s\0"
LC24:
	.ascii "Loading module %s\0"
	.text
	.p2align 4
	.globl	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0
	.def	__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL18defsparser_includePKcPK10scriptfileS0_.lto_priv.0:
LFB105:
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
	je	L910
	testl	%esi, %esi
	je	L911
L908:
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
L911:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	testl	%edx, %edx
	js	L908
	movl	%ebx, 16(%esp)
	movl	$LC24, 12(%esp)
	movl	$165, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, 28(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	28(%esp), %eax
	jmp	L908
	.p2align 4,,10
	.p2align 3
L910:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	testl	%esi, %esi
	je	L912
	cmpl	$-1, %eax
	jge	L913
L904:
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
L913:
	.cfi_restore_state
	movl	%esi, %edx
	movl	%edi, %eax
	call	_scriptfile_getlinum
	movl	%ebx, 24(%esp)
	movl	%eax, 20(%esp)
	movl	20(%edi), %eax
	movl	$LC23, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$159, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L904
	.p2align 4,,10
	.p2align 3
L912:
	cmpl	$-1, %eax
	jl	L904
	movl	%ebx, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$157, 8(%esp)
	movl	$LC22, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L904
	.cfi_endproc
LFE105:
	.section .rdata,"dr"
	.align 4
LC25:
	.ascii "%s:%d: %s: backwards tile range\0"
LC26:
	.ascii "%s:%d: %s: invalid tile range\0"
	.text
	.p2align 4
	.globl	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0
	.def	__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16check_tile_rangePKcPiS1_PK10scriptfileS0_.lto_priv.0:
LFB106:
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
	jl	L922
L915:
	cmpl	$30463, %eax
	ja	L917
	xorl	%eax, %eax
	cmpl	$30463, (%ebx)
	ja	L917
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
L917:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L923
L919:
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
L922:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	%esi, 32(%esp)
	.cfi_offset 6, -12
	movl	%edx, %esi
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-1, %eax
	jl	L916
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	movl	20(%eax), %eax
	movl	$LC25, 12(%esp)
	movl	$178, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC22, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L916:
	movl	%esi, %eax
/APP
 # 179 "source/build/src/defs.cpp" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	(%esi), %eax
	movl	32(%esp), %esi
	.cfi_restore 6
	jmp	L915
	.p2align 4,,10
	.p2align 3
L923:
	movl	48(%esp), %edx
	movl	44(%esp), %eax
	call	_scriptfile_getlinum
	movl	%edi, 24(%esp)
	movl	%eax, 20(%esp)
	movl	44(%esp), %eax
	movl	20(%eax), %eax
	movl	$LC26, 12(%esp)
	movl	$184, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC22, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L919
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0
	.def	__ZL23Defs_LoadTileIntoBufferi.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL23Defs_LoadTileIntoBufferi.lto_priv.0:
LFB107:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movswl	_tilesiz+2(,%eax,4), %ecx
	movswl	_tilesiz(,%eax,4), %ebx
	testw	%cx, %cx
	jle	L928
	testw	%bx, %bx
	jle	L928
	imull	%ecx, %ebx
	movl	%eax, %edx
	movl	__ZL14faketilebuffer.lto_priv.0, %ecx
	cmpl	__ZL17faketilebuffersiz.lto_priv.0, %ebx
	jg	L930
L926:
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
L930:
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
	je	L927
	movl	%eax, __ZL14faketilebuffer.lto_priv.0
	movl	8(%esp), %edx
	movl	%ebx, __ZL17faketilebuffersiz.lto_priv.0
	jmp	L926
	.p2align 4,,10
	.p2align 3
L928:
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
L927:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE107:
	.p2align 4
	.globl	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0
	.def	__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL26Defs_ImportTileFromTexturePKciii.lto_priv.0:
LFB109:
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
	jne	L950
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
	jle	L951
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
L933:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 72
	subl	$4, %esp
	.cfi_def_cfa_offset 76
	movl	%eax, 36(%esp)
	testl	%eax, %eax
	je	L934
	movl	%esi, 8(%esp)
	movl	%eax, %ecx
	movl	_kpzbuf, %eax
	movl	%ebp, %edx
	movl	%ebx, 4(%esp)
	movl	%edi, (%esp)
	call	_kprender
	cmpl	$-1, %eax
	je	L964
	testl	%ebx, %ebx
	jle	L953
	testl	%esi, %esi
	jle	L953
	testb	$1, _paletteloaded
	je	L954
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
	jg	L965
L942:
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL15colmatchresults.lto_priv.0, (%esp)
	call	_memset
	movl	$0, __ZL18numcolmatchresults.lto_priv.0
	testl	%ebp, %ebp
	jle	L945
	movl	16(%esp), %eax
	testl	%eax, %eax
	jle	L945
	sall	$2, %eax
	movl	%esi, 44(%esp)
	movl	36(%esp), %edi
	xorl	%edx, %edx
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L948:
	movl	%edx, 20(%esp)
	movl	%edx, %esi
	xorl	%ebx, %ebx
	jmp	L947
	.p2align 6
	.p2align 4,,10
	.p2align 3
L946:
	movl	__ZL14faketilebuffer.lto_priv.0, %edx
	addl	$1, %ebx
	movb	%al, (%edx,%esi)
	addl	%ebp, %esi
	cmpl	%ebx, 16(%esp)
	je	L966
L947:
	movzbl	3(%edi,%ebx,4), %edx
	movl	$-1, %eax
	cmpl	%edx, 12(%esp)
	jg	L946
	movzbl	(%edi,%ebx,4), %ecx
	movzbl	1(%edi,%ebx,4), %edx
	movzbl	2(%edi,%ebx,4), %eax
	movl	$0, 4(%esp)
	movl	$254, (%esp)
	call	_paletteGetClosestColorWithBlacklist
	jmp	L946
	.p2align 4,,10
	.p2align 3
L966:
	movl	20(%esp), %edx
	addl	24(%esp), %edi
	addl	$1, %edx
	cmpl	%edx, %ebp
	jne	L948
	movl	44(%esp), %esi
L945:
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
	jne	L949
L941:
	movl	76(%esp), %eax
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	movl	%eax, 28(%esp)
L931:
	movl	28(%esp), %eax
	movl	60(%esp), %esi
	addl	$72, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L951:
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
	jmp	L933
L965:
	movl	__ZL14faketilebuffer.lto_priv.0, %eax
	movl	%esi, 4(%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 68
	subl	$8, %esp
	.cfi_def_cfa_offset 76
	testl	%eax, %eax
	jne	L957
	testl	%esi, %esi
	jne	L943
L957:
	movl	%eax, __ZL14faketilebuffer.lto_priv.0
	movl	%esi, __ZL17faketilebuffersiz.lto_priv.0
	jmp	L942
L949:
	movl	$255, %eax
	xorps	%xmm0, %xmm0
	subl	12(%esp), %eax
	movl	40(%esp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	$160, 8(%esp)
	movl	32(%esp), %eax
	xorl	%edx, %edx
	mulss	LC27, %xmm0
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
L964:
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
	jne	L967
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
	je	L956
	testl	%esi, %esi
	je	L956
	movl	32(%esp), %ecx
	imull	%esi, %edi
	movl	%eax, _tilesiz(,%ecx,4)
	movl	%ecx, %eax
	call	_tileUpdatePicSiz
	leal	23(%edi), %eax
	movl	%edi, %edx
	cmpl	%ebp, %eax
	jge	L968
	movl	32(%esp), %eax
	leal	24(%ebx), %ecx
	call	_tileSetData
	movl	76(%esp), %edx
	movl	$1, 28(%esp)
	testl	%edx, %edx
	jne	L969
	movl	56(%esp), %ebx
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L931
L953:
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
L934:
	.cfi_restore_state
	movl	16(%esp), %eax
	call	__Z13handle_memerri
L967:
	sall	$8, %eax
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	%eax, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L931
L969:
	.cfi_restore_state
	movl	$255, %eax
	xorps	%xmm0, %xmm0
	subl	12(%esp), %eax
	movl	40(%esp), %ecx
	cvtsi2ssl	%eax, %xmm0
	movl	$160, 8(%esp)
	movl	32(%esp), %eax
	xorl	%edx, %edx
	mulss	LC27, %xmm0
	movss	LC1, %xmm1
	movss	%xmm1, 4(%esp)
	movaps	%xmm1, %xmm2
	movss	%xmm1, (%esp)
	call	_hicsetsubsttex.isra.0
	jmp	L941
L950:
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 7
	movl	$-1, 28(%esp)
	jmp	L931
L943:
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	%esi, %eax
	call	__Z13handle_memerri
L954:
	movl	56(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	64(%esp), %edi
	.cfi_restore 7
	movl	$-3, 28(%esp)
	movl	68(%esp), %ebp
	.cfi_restore 5
	jmp	L931
L956:
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
	jmp	L931
L968:
	.cfi_restore_state
	movl	32(%esp), %edi
	movl	_g_sm_heap, %ecx
	movl	%edi, %eax
	movl	%edi, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.13(%edx), %edx
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
	jmp	L931
	.cfi_endproc
LFE109:
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
	.globl	__ZL22polymost1FogEnabledLoc.lto_priv.0
	.data
	.align 4
__ZL22polymost1FogEnabledLoc.lto_priv.0:
	.long	-1
	.globl	__ZL19polymost1FogEnabled.lto_priv.0
	.align 4
__ZL19polymost1FogEnabled.lto_priv.0:
	.long	1065353216
	.globl	_glad_glRecti
	.bss
	.align 4
_glad_glRecti:
	.space 4
	.globl	_glad_glColor4f
	.align 4
_glad_glColor4f:
	.space 4
	.globl	_qsetmode
	.align 4
_qsetmode:
	.space 4
	.globl	_pathsearchmode
	.align 4
_pathsearchmode:
	.space 4
	.globl	__ZL7colscan.lto_priv.0
	.align 32
__ZL7colscan.lto_priv.0:
	.space 108
	.globl	__ZL5bdist.lto_priv.0
	.align 32
__ZL5bdist.lto_priv.0:
	.space 2052
	.globl	__ZL5gdist.lto_priv.0
	.align 32
__ZL5gdist.lto_priv.0:
	.space 2052
	.globl	__ZL5rdist.lto_priv.0
	.align 32
__ZL5rdist.lto_priv.0:
	.space 2052
	.globl	__ZL7coldist.lto_priv.0
	.align 4
__ZL7coldist.lto_priv.0:
	.space 8
.lcomm __ZL15cache_blacklist,32,32
	.data
	.align 4
__ZL15cache_lastokcol:
	.long	255
	.globl	__ZL18numcolmatchresults.lto_priv.0
	.bss
	.align 4
__ZL18numcolmatchresults.lto_priv.0:
	.space 4
	.globl	__ZL15colmatchresults.lto_priv.0
	.align 32
__ZL15colmatchresults.lto_priv.0:
	.space 16384
.lcomm __ZL7colnext,1024,32
.lcomm __ZL16colmatch_palette,768,32
.lcomm __ZL7colhead,39304,32
.lcomm __ZL7colhere,4913,32
	.globl	_hitallsprites
	.align 4
_hitallsprites:
	.space 4
.lcomm __ZL20yax_hitscan_floormap,512,32
.lcomm __ZL19yax_hitscan_ceilmap,512,32
	.section .rdata,"dr"
	.align 4
_hitscangoal:
	.long	536870911
	.long	536870911
.lcomm __ZL16layerclipsectnum,4,4
.lcomm __ZL19layerclipsectorlist,1024,32
	.align 4
LC1:
	.long	1065353216
	.align 4
LC27:
	.long	998277249
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_polymostSet2dView.part.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.8;	.scl	2;	.type	32;	.endef
	.def	_inside;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_clipshape_idx_for_sprite;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z24getceilzofslope_19950829iii;	.scl	2;	.type	32;	.endef
	.def	__Z24getflorzofslope_19950829iii;	.scl	2;	.type	32;	.endef
	.def	__Z20clipsprite_initindexiPK13uspritetypev7PiPK4vec3IiE;	.scl	2;	.type	32;	.endef
	.def	_getsectordist;	.scl	2;	.type	32;	.endef
	.def	__Z14clipsprite_tryPK13uspritetypev7iiii;	.scl	2;	.type	32;	.endef
	.def	_clipinsideboxline;	.scl	2;	.type	32;	.endef
	.def	__ZL19get_floorspr_pointsPKviiPiS1_S1_S1_S1_S1_S1_S1_i.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL20get_floorspr_clipyou4vec2IiES0_S0_S0_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_getflorzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_getceilzofslopeptr.part.0;	.scl	2;	.type	32;	.endef
	.def	_rintersect;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_tileLoad.isra.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_findfrompath;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_kzfindfilestart;	.scl	2;	.type	32;	.endef
	.def	_kzfindfile;	.scl	2;	.type	32;	.endef
	.def	_klistpath;	.scl	2;	.type	32;	.endef
	.def	_strcpy;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_initputs;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator18DestroyThreadCacheEv.isra.0;	.scl	2;	.type	32;	.endef
	.def	__sm_allocator_destroy.part.0.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_usable_size;	.scl	2;	.type	32;	.endef
	.def	__ZL30mi_heap_malloc_zero_aligned_atP9mi_heap_sjjjb.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
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
