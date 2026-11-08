	.file	"<artificial>"
	.text
	.p2align 4
	.globl	__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0
	.def	__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL10tesvertLeqPK10TESSvertexS1_.lto_priv.0:
LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	8(%esp), %ecx
	movl	$1, %eax
	movss	24(%edx), %xmm1
	movss	24(%ecx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L1
	ucomiss	%xmm0, %xmm1
	jp	L5
	jne	L5
	movss	28(%ecx), %xmm0
	xorl	%eax, %eax
	comiss	28(%edx), %xmm0
	setnb	%al
	ret
	.p2align 4,,10
	.p2align 3
L5:
	xorl	%eax, %eax
L1:
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.def	_polymer_getsky;	.scl	3;	.type	32;	.endef
_polymer_getsky:
LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	_multipsky, %ebx
	movb	%cl, __ZL11curskyshade
	movl	_pskynummultis, %ecx
	movb	%dl, __ZL9curskypal
	leal	-1(%ecx), %edx
	movw	%ax, __ZL6cursky.lto_priv.0
	movl	_multipskytile, %ecx
	testl	%edx, %edx
	jle	L10
	cwtl
	jmp	L11
	.p2align 4
	.p2align 4,,10
	.p2align 3
L21:
	subl	$1, %edx
	je	L20
L11:
	cmpl	(%ecx,%edx,4), %eax
	jne	L21
L10:
	sall	$5, %edx
	xorps	%xmm0, %xmm0
	movl	(%ebx,%edx), %eax
	testl	%eax, %eax
	je	L12
	cmpl	$65536, %eax
	movl	$LC1, %edx
	movl	$LC2, %eax
	cmove	%edx, %eax
	movss	(%eax), %xmm0
L12:
	movss	%xmm0, __ZL12curskyangmul.lto_priv.0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L20:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	L10
	.cfi_endproc
LFE1:
	.p2align 4
	.def	_polymer_freeboard;	.scl	3;	.type	32;	.endef
_polymer_freeboard:
LFB2:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	xorl	%ebx, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.p2align 4
	.p2align 3
L28:
	movl	_prsectors(,%ebx,4), %eax
	testl	%eax, %eax
	je	L23
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	256(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	176(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	428(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsectors(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	264(%eax), %edx
	testl	%edx, %edx
	je	L24
	addl	$264, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L24:
	movl	436(%eax), %ecx
	testl	%ecx, %ecx
	je	L25
	addl	$436, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L25:
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L26
	addl	$12, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L26:
	movl	184(%eax), %ecx
	testl	%ecx, %ecx
	je	L27
	addl	$184, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsectors(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L27:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prsectors(,%ebx,4)
L23:
	addl	$1, %ebx
	cmpl	$4096, %ebx
	jne	L28
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L34:
	movl	_prwalls(,%ebx,4), %eax
	testl	%eax, %eax
	je	L29
	movl	756(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	504(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	252(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prwalls(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L30
	addl	$8, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L30:
	movl	260(%eax), %ecx
	testl	%ecx, %ecx
	je	L31
	addl	$260, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L31:
	movl	512(%eax), %edx
	testl	%edx, %edx
	je	L32
	addl	$512, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L32:
	movl	760(%eax), %ecx
	testl	%ecx, %ecx
	je	L33
	addl	$760, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prwalls(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L33:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prwalls(,%ebx,4)
L29:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	jne	L34
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L37:
	movl	_prsprites(,%ebx,4), %eax
	testl	%eax, %eax
	je	L35
	movl	(%eax), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	_prsprites(,%ebx,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L36
	addl	$8, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	.cfi_def_cfa_offset 8
	movl	_prsprites(,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 16
L36:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, _prsprites(,%ebx,4)
L35:
	addl	$1, %ebx
	cmpl	$16384, %ebx
	jne	L37
	movl	$_prartmaps, %ebx
	.p2align 4
	.p2align 3
L39:
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L38
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L38:
	addl	$4, %ebx
	cmpl	$_prartmaps+122880, %ebx
	jne	L39
	movl	$_prbasepalmaps, %ebx
	.p2align 4
	.p2align 3
L41:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L40
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L40:
	addl	$4, %ebx
	cmpl	$_prbasepalmaps+1024, %ebx
	jne	L41
	movl	$_prlookups, %ebx
	.p2align 4
	.p2align 3
L43:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L42
	movl	%ebx, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteTextures
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	$0, (%ebx)
L42:
	addl	$4, %ebx
	cmpl	$_prlookups+1024, %ebx
	jne	L43
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE2:
	.p2align 4
	.def	__ZL13calc_ypancoefcsi;	.scl	3;	.type	32;	.endef
__ZL13calc_ypancoefcsi:
LFB4:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movswl	%dx, %edx
	movl	%eax, %ebx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movzbl	_picsiz(%edx), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	cvtsi2ssl	_pow2long.lto_priv.1(,%eax,4), %xmm2
	movswl	_tilesiz+2(,%edx,4), %eax
	cvtsi2ssl	%eax, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L61
	addss	%xmm2, %xmm2
L61:
	movzbl	%bl, %eax
	testl	%ecx, %ecx
	jne	L68
L64:
	mulss	LC4, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, 4(%esp)
	flds	4(%esp)
	addl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L68:
	.cfi_restore_state
	movss	LC3, %xmm3
	movaps	%xmm2, %xmm0
	movss	%xmm2, 8(%esp)
	subss	%xmm1, %xmm0
	movss	%xmm1, 4(%esp)
	divss	%xmm2, %xmm3
	mulss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	call	_lrintf
	movl	$256, %edx
	movss	8(%esp), %xmm2
	movss	4(%esp), %xmm1
	movl	%eax, %ecx
	movzbl	%bl, %eax
	subl	%ecx, %edx
	subl	%ecx, %ebx
	movzbl	%bl, %ebx
	cmpl	%edx, %eax
	cmovg	%ebx, %eax
	jmp	L64
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0
	.def	__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11AddSentinelP14TESStesselatorfff.lto_priv.0:
LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 3, -16
	movl	84(%eax), %edx
	movss	%xmm0, 20(%esp)
	movl	(%edx), %ebx
	movss	%xmm1, 16(%esp)
	testl	%ebx, %ebx
	je	L70
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L70
L71:
	movl	%eax, (%edx)
	movl	(%esi), %eax
	movss	%xmm2, 12(%esp)
	call	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	testl	%eax, %eax
	je	L72
	movl	16(%eax), %edx
	movss	16(%esp), %xmm3
	movl	%ebx, %ecx
	movss	12(%esp), %xmm2
	movss	20(%esp), %xmm4
	movss	%xmm3, 24(%edx)
	movl	16(%eax), %edx
	movups	LC6, %xmm0
	movss	%xmm2, 28(%edx)
	movl	4(%eax), %edx
	movl	16(%edx), %edx
	movss	%xmm4, 24(%edx)
	movl	4(%eax), %edx
	movl	16(%edx), %edx
	movss	%xmm2, 28(%edx)
	movl	4(%eax), %edx
	movl	16(%edx), %edx
	movl	%edx, 80(%esi)
	movl	%eax, (%ebx)
	movl	$0, 24(%ebx)
	movups	%xmm0, 8(%ebx)
	movl	72(%esi), %eax
	movl	%eax, %edx
	call	__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	je	L72
	addl	$24, %esp
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
L70:
	.cfi_restore_state
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	movss	%xmm2, 8(%esp)
	call	__ZL12CreateBucketP11BucketAlloc.lto_priv.0
	testl	%eax, %eax
	je	L72
	movl	12(%esp), %edx
	movss	8(%esp), %xmm2
	movl	(%edx), %ebx
	movl	(%ebx), %eax
	jmp	L71
	.p2align 4,,10
	.p2align 3
L72:
	addl	$152, %esi
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0
	.def	__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL11tesedgeEvalPK10TESSvertexS1_S1_.lto_priv.0:
LFB8:
	.cfi_startproc
	movss	24(%edx), %xmm2
	movss	24(%ecx), %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm2, %xmm1
	subss	24(%eax), %xmm1
	subss	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	comiss	%xmm3, %xmm2
	jbe	L94
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	comiss	%xmm1, %xmm0
	movss	28(%edx), %xmm3
	movss	28(%ecx), %xmm4
	movss	28(%eax), %xmm5
	ja	L100
	divss	%xmm2, %xmm0
	movaps	%xmm4, %xmm1
	subss	%xmm4, %xmm3
	subss	%xmm5, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L100:
	.cfi_restore_state
	divss	%xmm2, %xmm1
	movaps	%xmm5, %xmm0
	subss	%xmm5, %xmm3
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L94:
	fldz
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.globl	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0
	.def	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0;	.scl	2;	.type	32;	.endef
__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0:
LFB10:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movaps	%xmm0, %xmm3
	movss	8(%esp), %xmm5
	movss	16(%esp), %xmm0
	movaps	%xmm5, %xmm4
	subss	%xmm5, %xmm0
	subss	%xmm1, %xmm4
	xorps	%xmm1, %xmm1
	movaps	%xmm4, %xmm5
	addss	%xmm0, %xmm5
	comiss	%xmm1, %xmm5
	jbe	L109
	comiss	%xmm4, %xmm0
	ja	L112
	divss	%xmm5, %xmm0
	movss	12(%esp), %xmm1
	subss	12(%esp), %xmm2
	subss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L112:
	.cfi_restore_state
	divss	%xmm5, %xmm4
	movaps	%xmm3, %xmm0
	subss	12(%esp), %xmm0
	subss	%xmm3, %xmm2
	mulss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, (%esp)
	flds	(%esp)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L109:
	.cfi_restore_state
	fldz
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC7:
	.ascii "freed %d planelists\0"
LC8:
	.ascii "source/build/src/polymer.cpp\0"
LC9:
	.ascii "freed %i programs\0"
	.text
	.p2align 4
	.globl	_polymer_uninit
	.def	_polymer_uninit;	.scl	2;	.type	32;	.endef
_polymer_uninit:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	_prtess, %ebx
	testl	%ebx, %ebx
	je	L114
	movl	84(%ebx), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L115
	movl	140(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	144(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	148(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0
	movl	120(%ebx), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L116
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L117:
	movl	$0, (%ebx)
L115:
	movl	92(%ebx), %eax
	testl	%eax, %eax
	je	L118
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 92(%ebx)
L118:
	movl	96(%ebx), %eax
	testl	%eax, %eax
	je	L119
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 96(%ebx)
L119:
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	L120
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 104(%ebx)
L120:
	movl	%ebx, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, _prtess
L114:
	call	_polymer_freeboard
	xorl	%eax, %eax
	call	_polymer_initrendertargets.lto_priv.0
	movl	_skyboxdatavbo, %esi
	testl	%esi, %esi
	je	L121
	movl	$_skyboxdatavbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L121:
	movl	_prmapvbo, %ebx
	testl	%ebx, %ebx
	je	L122
	movl	$_prmapvbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L122:
	movl	_prindexringvbo, %ecx
	testl	%ecx, %ecx
	je	L123
	movl	$_prindexringvbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L123:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L127:
	movl	_prhighpalookups(,%esi,4), %eax
	addl	$1, %esi
	testl	%eax, %eax
	je	L124
	xorl	%ebx, %ebx
	jmp	L126
	.p2align 4,,10
	.p2align 3
L160:
	movl	_prhighpalookups-4(,%esi,4), %eax
L126:
	addl	%ebx, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L125
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	_prhighpalookups-4(,%esi,4), %eax
	subl	$8, %esp
	movl	$0, 4(%eax,%ebx)
L125:
	addl	$8, %ebx
	cmpl	$2048, %ebx
	jne	L160
L124:
	cmpl	$256, %esi
	jne	L127
	movl	__ZL6plpool.lto_priv.0, %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L128
L129:
	movl	%ebx, %eax
	movl	4(%ebx), %ebx
	addl	$1, %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, __ZL6plpool.lto_priv.0
	testl	%ebx, %ebx
	jne	L129
L128:
	cmpl	$2, _pr_verbosity
	jg	L161
L130:
	movl	__ZL14prprogramtable.lto_priv.0, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	__ZL13prprogramptrs.lto_priv.0, %ebx
	movl	__ZL13prprogramptrs.lto_priv.0+4, %eax
	subl	$4, %esp
	movl	$0, __ZL14prprogramtable.lto_priv.0
	leal	(%ebx,%eax,4), %esi
	cmpl	%ebx, %esi
	je	L131
L132:
	movl	(%ebx), %eax
	addl	$4, %ebx
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	*_glad_glDeleteProgram
	movl	-4(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, -4(%ebx)
	cmpl	%ebx, %esi
	jne	L132
L131:
	cmpl	$1, _pr_verbosity
	jg	L162
L133:
	movl	__ZL13prprogramptrs.lto_priv.0, %eax
	movl	$0, __ZL13prprogramptrs.lto_priv.0+4
	movl	$0, __ZL13prprogramptrs.lto_priv.0+8
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, __ZL13prprogramptrs.lto_priv.0
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
L162:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L133
	movl	__ZL13prprogramptrs.lto_priv.0+4, %eax
	movl	$LC9, 12(%esp)
	movl	$914, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L133
L161:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L130
	movl	%esi, 16(%esp)
	movl	$LC7, 12(%esp)
	movl	$903, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L130
L116:
	movl	%esi, 4(%esp)
	movl	124(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L117
	.cfi_endproc
LFE11:
	.p2align 4
	.globl	_polymer_setaspect
	.def	_polymer_setaspect;	.scl	2;	.type	32;	.endef
_polymer_setaspect:
LFB18:
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
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	movl	%eax, %ebx
	subl	$20, %esp
	movss	LC10, %xmm0
	mulss	_fviewingrange, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	xorps	%xmm0, %xmm0
	fstps	-12(%ebp)
	cvtsi2ssl	%ebx, %xmm0
	mulss	-12(%ebp), %xmm0
	mulss	LC11, %xmm0
	mulss	LC12, %xmm0
	movss	%xmm0, (%esp)
	call	_tanf
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	xorps	%xmm3, %xmm3
	movl	_windowxy2+4, %eax
	subl	_windowxy1+4, %eax
	fstps	-12(%ebp)
	cvtsi2ssl	_xdim, %xmm3
	addl	$1, %eax
	movss	-12(%ebp), %xmm0
	cvtsi2ssl	%eax, %xmm2
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	addl	$1, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm0
	movss	%xmm2, -20(%ebp)
	movss	%xmm1, -16(%ebp)
	divss	%xmm1, %xmm0
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	_ydim, %xmm3
	divss	%xmm3, %xmm0
	mulss	LC13, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	fstps	-12(%ebp)
	fldz
	fldl	_pr_customaspect
	movss	-12(%ebp), %xmm0
	mulss	LC14, %xmm0
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L167
	movss	-16(%ebp), %xmm1
	jne	L167
	fstp	%st(0)
	divss	-20(%ebp), %xmm1
	movss	%xmm1, -12(%ebp)
L166:
	movss	%xmm0, -16(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movss	-16(%ebp), %xmm0
	mulss	LC15, %xmm0
	movl	$0x42c80000, (%esp)
	movss	LC17, %xmm2
	movss	-12(%ebp), %xmm1
	call	__Z22buildgl_setPerspectiveffff
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
L167:
	.cfi_restore_state
	fstps	-12(%ebp)
	jmp	L166
	.cfi_endproc
LFE18:
	.p2align 4
	.globl	_polymer_glinit
	.def	_polymer_glinit;	.scl	2;	.type	32;	.endef
_polymer_glinit:
LFB19:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$0x3f800000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movl	$0x00000000, (%esp)
	call	*_glad_glClearColor
	.cfi_def_cfa_offset 4
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$0, (%esp)
	call	*_glad_glClearStencil
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$17664, (%esp)
	call	*_glad_glClear
	.cfi_def_cfa_offset 16
	movl	_windowxy2+4, %eax
	movl	_windowxy2, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	subl	_windowxy1, %ecx
	movl	%eax, %edx
	subl	_windowxy1+4, %eax
	addl	$1, %ecx
	addl	$1, %eax
	notl	%edx
	addl	_ydim, %edx
	movl	%eax, (%esp)
	movl	_windowxy1, %eax
	call	__Z19buildgl_setViewportiiii
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L170
	movl	$2929, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
L170:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L171
	movl	$515, (%esp)
	call	*_glad_glDepthFunc
	.cfi_def_cfa_offset 16
	movl	$515, %ecx
	movl	$2932, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
L171:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L172
	movl	$3042, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	movl	$3042, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
L172:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L173
	movl	$3008, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
L173:
	movl	_pr_wireframe, %edx
	movl	_glad_glPolygonMode, %eax
	testl	%edx, %edx
	je	L174
	movl	$6913, 4(%esp)
	movl	$1032, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
L175:
	movl	$512, %eax
	call	_polymer_setaspect
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	call	*_glad_glLoadIdentity
	movl	$32884, (%esp)
	call	*_glad_glEnableClientState
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$32888, (%esp)
	call	*_glad_glEnableClientState
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$2912, (%esp)
	call	*_glad_glDisable
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1029, _culledface
	movl	$1029, (%esp)
	call	*_glad_glCullFace
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$2305, (%esp)
	call	*_glad_glFrontFace
	.cfi_def_cfa_offset 16
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	call	_inthash_find
	cmpl	$1, %eax
	je	L169
	movl	$2884, (%esp)
	call	*_glad_glEnable
	.cfi_def_cfa_offset 16
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$1, (%esp)
	call	_inthash_add
L169:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L174:
	.cfi_restore_state
	movl	$6914, 4(%esp)
	movl	$1032, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	jmp	L175
	.cfi_endproc
LFE19:
	.p2align 4
	.globl	_polymer_inb4rotatesprite
	.def	_polymer_inb4rotatesprite;	.scl	2;	.type	32;	.endef
_polymer_inb4rotatesprite:
LFB23:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movsbl	%cl, %ebx
	movzbl	%dl, %ecx
	movswl	%ax, %edx
	subl	$116, %esp
	.cfi_def_cfa_offset 124
	movl	124(%esp), %eax
	movl	%ebx, (%esp)
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	leal	16(%esp), %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leal	16(%esp), %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, _rotatespritematerialbits
	andl	$16, %eax
	cmpl	$1, %eax
	sbbl	%edx, %edx
	xorl	%eax, %eax
	andl	$-510, %edx
	addl	$513, %edx
	call	__Z25buildgl_bindSamplerObjectii
	movl	_drawpolyVertsID, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 108
	subl	$16, %esp
	.cfi_def_cfa_offset 124
	movl	$12, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 108
	subl	$16, %esp
	.cfi_def_cfa_offset 124
	addl	$116, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE23:
	.p2align 4
	.globl	_polymer_texinvalidate
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
_polymer_texinvalidate:
LFB24:
	.cfi_startproc
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L199:
	movl	_prsprites(,%eax,4), %edx
	testl	%edx, %edx
	je	L198
	movl	$-559038737, 252(%edx)
L198:
	addl	$1, %eax
	cmpl	$16384, %eax
	jne	L199
	movzwl	_numsectors, %eax
	testw	%ax, %ax
	je	L197
	movswl	%ax, %edx
	leal	-1(%edx), %eax
	movl	_prsectors-4(,%edx,4), %edx
	testl	%edx, %edx
	je	L197
	.p2align 5
	.p2align 4
	.p2align 3
L201:
	subl	$1, %eax
	movl	_prsectors+4(,%eax,4), %edx
	orb	$4, 560(%edx)
	testl	%eax, %eax
	jns	L201
	movswl	_numwalls, %eax
	subl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L202:
	subl	$1, %eax
	movl	_prwalls+4(,%eax,4), %edx
	orb	$4, 796(%edx)
	testl	%eax, %eax
	jns	L202
L197:
	ret
	.cfi_endproc
LFE24:
	.p2align 4
	.globl	_polymer_emptybuckets.lto_priv.0
	.def	_polymer_emptybuckets.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_emptybuckets.lto_priv.0:
LFB26:
	.cfi_startproc
	movl	_pr_buckets, %edx
	testl	%edx, %edx
	jne	L241
	ret
	.p2align 4,,10
	.p2align 3
L241:
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -16
	movl	_prbuckethead, %ebx
	call	__Z18buildgl_bindBufferjj
	movl	$0, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$12, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 16
	movl	_prindexringvbo, %edx
	movl	$34963, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	__Z18buildgl_bindBufferjj
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L214
	.p2align 4
	.p2align 4
	.p2align 3
L215:
	addl	112(%ebx), %eax
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L215
L214:
	addl	_prindexringoffset, %eax
	cmpl	$65534, %eax
	jbe	L216
	movl	$34963, (%esp)
	call	*_glad_glUnmapBuffer
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	$202, 12(%esp)
	movl	$262140, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glMapBufferRange
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	%eax, _prindexring
	movl	$0, _prindexringoffset
L216:
	movl	_prbuckethead, %ebx
	testl	%ebx, %ebx
	je	L217
	movl	%esi, 20(%esp)
	movl	%edi, 24(%esp)
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.p2align 4
	.p2align 3
L220:
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L239
	movl	_prindexringoffset, %esi
	movl	_prindexring, %edx
	sall	$2, %eax
	movl	108(%ebx), %ecx
	movl	%eax, 8(%esp)
	leal	0(,%esi,4), %edi
	addl	%edi, %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	addl	112(%ebx), %esi
	movl	%edi, 120(%ebx)
	movl	%esi, _prindexringoffset
L239:
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L220
	movl	_prbuckethead, %ebx
	testl	%ebx, %ebx
	je	L238
	.p2align 4
	.p2align 3
L223:
	movl	112(%ebx), %eax
	testl	%eax, %eax
	je	L240
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leal	4(%ebx), %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %esi
	movl	120(%ebx), %eax
	movl	$5125, 8(%esp)
	movl	%eax, 12(%esp)
	movl	112(%ebx), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$0, 112(%ebx)
L240:
	movl	124(%ebx), %ebx
	testl	%ebx, %ebx
	jne	L223
L238:
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L217:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	16(%esp), %ebx
	movl	$0, _prcanbucket
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.globl	_polymer_drawplane.lto_priv.0
	.def	_polymer_drawplane.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawplane.lto_priv.0:
LFB27:
	.cfi_startproc
	movl	_pr_nullrender, %edx
	testl	%edx, %edx
	jg	L314
	subl	$44, %esp
	.cfi_def_cfa_offset 48
	movl	%esi, 32(%esp)
	.cfi_offset 6, -16
	movl	_pr_buckets, %esi
	movl	%ebp, 40(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%ebx, 28(%esp)
	testl	%esi, %esi
	.cfi_offset 3, -20
	je	L244
	movl	_prcanbucket, %ebx
	testl	%ebx, %ebx
	je	L244
	movl	16(%eax), %esi
	testl	%esi, %esi
	je	L244
	movl	%edi, 36(%esp)
	.cfi_offset 7, -12
	movl	176(%eax), %ecx
	testl	%ecx, %ecx
	jne	L319
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	$6, 16(%esp)
	movl	$6, %ebx
	movl	108(%esi), %edx
	leal	6(%edi), %ecx
	cmpl	%eax, %ecx
	jnb	L249
	jmp	L251
	.p2align 4,,10
	.p2align 3
L282:
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	%edx, 108(%esi)
	leal	(%edi,%ebx), %ecx
	cmpl	%eax, %ecx
	jb	L320
L249:
	leal	(%eax,%eax), %ecx
	leal	0(,%eax,8), %edi
	movl	%ecx, 116(%esi)
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edx
	testl	%eax, %eax
	jne	L282
	testl	%edi, %edi
	je	L282
	movl	%edi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L244:
	.cfi_restore 7
	movss	64(%ebp), %xmm0
	movss	%xmm0, 8(%esp)
	movss	60(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	movss	56(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glNormal3f
	.cfi_def_cfa_offset 36
	movl	12(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	cmpl	$-1, %eax
	je	L254
	movl	_prmapvbo, %edx
	leal	(%eax,%eax,2), %ebx
	sall	$3, %ebx
	testl	%edx, %edx
	jne	L321
L256:
	movl	0(%ebp), %eax
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 32
	movl	0(%ebp), %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	addl	$12, %eax
	movl	$24, 8(%esp)
	movl	%eax, 12(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 32
	leal	72(%ebp), %eax
	movzwl	248(%ebp), %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, _curlight
	movl	%eax, 16(%esp)
	leal	20(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	32(%ebp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L268:
	movl	16(%esp), %eax
	leal	184(%ebp), %edx
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %ebx
	movl	%eax, %edx
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	call	_inthash_find
	cmpl	$-1, %eax
	je	L258
L318:
	movl	%eax, %esi
	testb	$8, %bl
	je	L260
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	leal	44(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	28(%esi), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L260:
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L322
	movl	%eax, 12(%esp)
	movl	$5123, 8(%esp)
	movl	176(%ebp), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L262:
	movl	%ebx, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movzwl	248(%ebp), %ecx
	movl	_curlight, %eax
	testw	%cx, %cx
	je	L265
	movl	_depth, %edx
	testl	%edx, %edx
	je	L266
	movl	_mirrors-8(,%edx,8), %edx
	testl	%edx, %edx
	je	L265
L266:
	movswl	184(%ebp,%eax,2), %edx
	imull	$270, %edx, %edx
	orb	$4, _prlights+254(%edx)
	movzwl	248(%ebp), %ecx
L265:
	addl	$1, %eax
	movl	%eax, _curlight
	cmpl	%ecx, %eax
	jge	L242
	cmpl	_pr_maxlightpasses, %eax
	jge	L242
	movl	_depth, %eax
	testl	%eax, %eax
	je	L268
	movl	_mirrors-8(,%eax,8), %eax
	testl	%eax, %eax
	jne	L268
L242:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L322:
	.cfi_restore_state
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	jmp	L262
	.p2align 4,,10
	.p2align 3
L258:
	movl	%ebx, %eax
	call	_polymer_compileprogram.lto_priv.0
	jmp	L318
	.p2align 4,,10
	.p2align 3
L314:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	ret
	.p2align 4,,10
	.p2align 3
L254:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	movl	8(%ebp), %edx
	xorl	%ebx, %ebx
	testl	%edx, %edx
	je	L256
L321:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	%ebx, 12(%esp)
	addl	$12, %ebx
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%ebx, 12(%esp)
	movl	$24, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	.cfi_def_cfa_offset 32
	movl	172(%ebp), %ecx
	subl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	je	L257
	movl	180(%ebp), %edx
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj
L257:
	leal	72(%ebp), %eax
	movzwl	248(%ebp), %ecx
	movl	$0, _curlight
	movl	%eax, 16(%esp)
	leal	20(%ebp), %eax
	movl	%eax, 20(%esp)
	leal	32(%ebp), %eax
	movl	%eax, 24(%esp)
	.p2align 4
	.p2align 3
L280:
	movl	16(%esp), %eax
	leal	184(%ebp), %edx
	call	_polymer_bindmaterial.lto_priv.0
	movl	%eax, %edx
	movl	%eax, %esi
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	call	_inthash_find
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	L323
L270:
	testl	$8, %esi
	je	L271
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	20(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	24(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	leal	44(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 4(%esp)
	movl	28(%ebx), %eax
	movl	%eax, (%esp)
	call	*_glad_glVertexAttrib3fv
	.cfi_def_cfa_offset 40
	subl	$8, %esp
	.cfi_def_cfa_offset 48
L271:
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L272
	movl	$0, 12(%esp)
	movl	$5123, 8(%esp)
	movl	176(%ebp), %eax
	movl	$4, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDrawElements
	.cfi_def_cfa_offset 32
	subl	$16, %esp
	.cfi_def_cfa_offset 48
L273:
	movl	%esi, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movzwl	248(%ebp), %ecx
	movl	_curlight, %eax
	testw	%cx, %cx
	je	L276
	movl	_depth, %edx
	testl	%edx, %edx
	je	L275
	movl	_mirrors-8(,%edx,8), %ebx
	testl	%ebx, %ebx
	je	L276
L275:
	movswl	184(%ebp,%eax,2), %edx
	imull	$270, %edx, %edx
	orb	$4, _prlights+254(%edx)
	movzwl	248(%ebp), %ecx
L276:
	addl	$1, %eax
	movl	%eax, _curlight
	cmpl	%ecx, %eax
	jge	L277
	cmpl	_pr_maxlightpasses, %eax
	jge	L277
	movl	_depth, %eax
	testl	%eax, %eax
	je	L280
	movl	_mirrors-8(,%eax,8), %edx
	testl	%edx, %edx
	jne	L280
	.p2align 4
	.p2align 3
L277:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	172(%ebp), %eax
	testl	%eax, %eax
	je	L242
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	movl	$34963, %eax
	movl	40(%esp), %ebp
	addl	$44, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	jmp	__Z18buildgl_bindBufferjj.constprop.0
	.p2align 4,,10
	.p2align 3
L272:
	.cfi_restore_state
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	.cfi_def_cfa_offset 36
	subl	$12, %esp
	.cfi_def_cfa_offset 48
	jmp	L273
	.p2align 4,,10
	.p2align 3
L323:
	movl	%esi, %eax
	call	_polymer_compileprogram.lto_priv.0
	movl	%eax, %ebx
	jmp	L270
L319:
	.cfi_offset 7, -12
	movl	112(%esi), %edi
	movl	116(%esi), %eax
	movl	%ecx, 16(%esp)
	movl	108(%esi), %edx
	leal	(%edi,%ecx), %ebx
	cmpl	%eax, %ebx
	jb	L246
	movl	%ecx, %ebx
	jmp	L249
L320:
	movl	176(%ebp), %ecx
L246:
	testl	%ecx, %ecx
	jle	L251
	movl	172(%ebp), %eax
	movl	12(%ebp), %ebx
	leal	1(%edi), %ecx
	movzwl	(%eax), %eax
	movl	%ecx, 112(%esi)
	addl	%ebx, %eax
	movl	%eax, (%edx,%edi,4)
	cmpl	$1, 176(%ebp)
	jle	L317
	movl	$1, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L252:
	movl	112(%esi), %ecx
	movl	172(%ebp), %edx
	movl	12(%ebp), %ebx
	movzwl	(%edx,%eax,2), %edx
	leal	1(%ecx), %edi
	addl	$1, %eax
	movl	%edi, 112(%esi)
	movl	108(%esi), %edi
	addl	%ebx, %edx
	movl	%edx, (%edi,%ecx,4)
	cmpl	%eax, 176(%ebp)
	jg	L252
L317:
	movl	36(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	jmp	L242
L251:
	.cfi_restore_state
	movl	12(%ebp), %eax
	leal	1(%edi), %ebx
	movl	%ebx, 112(%esi)
	movl	%eax, (%edx,%edi,4)
	movl	$1, %eax
L253:
	movl	112(%esi), %ecx
	movl	108(%esi), %ebx
	addl	$1, %eax
	movl	12(%ebp), %edx
	addl	__ZZ19polymer_bucketplaneE11quadindices-4(,%eax,4), %edx
	leal	1(%ecx), %edi
	movl	%edi, 112(%esi)
	movl	%edx, (%ebx,%ecx,4)
	cmpl	$6, %eax
	jne	L253
	jmp	L317
	.cfi_endproc
LFE27:
	.section .rdata,"dr"
LC19:
	.ascii "Drawing sector %i\0"
LC20:
	.ascii "Finished drawing sector %i.\0"
	.text
	.p2align 4
	.globl	_polymer_drawsector.lto_priv.0
	.def	_polymer_drawsector.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawsector.lto_priv.0:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movswl	%ax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movw	%ax, 20(%esp)
	cmpl	$2, _pr_verbosity
	jg	L371
L325:
	movl	20(%esp), %edx
	movl	_sector, %ebx
	leal	(%esi,%esi,4), %edi
	movl	%esi, %eax
	sall	$3, %edi
	sarl	$3, %eax
	andl	$7, %edx
	addl	%edi, %ebx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, _gotsector(%eax)
	movl	_prsectors(,%esi,4), %eax
	movzwl	14(%ebx), %edx
	movl	%eax, 24(%esp)
	movl	%ebp, %eax
	testw	$384, %dx
	je	L372
L326:
	andl	$1, %edx
	je	L327
	cmpb	$0, __ZL8prdidsky
	je	L373
L328:
	leal	32(%esp), %eax
	addl	_sector, %edi
	movl	%eax, 16(%esp)
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	movl	_globalposy, %eax
	movl	%edi, (%esp)
	movl	%eax, 8(%esp)
	movl	_globalposx, %eax
	movl	%eax, 4(%esp)
	call	_getzsofslopeptr
	movl	32(%esp), %eax
	cmpl	%eax, _globalposz
	jle	L351
L338:
	movl	$0, 28(%esp)
L334:
	movzwl	12(%ebx), %edx
	movl	%ebp, %eax
	testw	$384, %dx
	je	L374
L339:
	andl	$1, %edx
	movl	36(%esp), %edi
	je	L340
	cmpb	$0, __ZL8prdidsky
	je	L341
	cmpl	%edi, _globalposz
	jge	L342
	.p2align 4
	.p2align 3
L343:
	cmpl	$3, _pr_verbosity
	jg	L375
L324:
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
L340:
	.cfi_restore_state
	cmpl	%edi, _globalposz
	jl	L343
	movzwl	_searchit, %edx
	testl	%eax, %eax
	je	L342
	cmpw	$2, %dx
	je	L345
	movzbl	33(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movl	_globalflags, %eax
	movzbl	32(%ebx), %edi
	testb	%cl, %cl
	cmove	%edx, %ecx
	andl	$4, %eax
	jne	L357
	testb	$2, _hictinting+1(,%edx,8)
	jne	L349
	movsbl	20(%ebx), %eax
	jmp	L349
	.p2align 4,,10
	.p2align 3
L327:
	leal	32(%esp), %edx
	addl	_sector, %edi
	movl	%eax, 28(%esp)
	movl	%edx, 16(%esp)
	leal	36(%esp), %edx
	movl	%edx, 12(%esp)
	movl	_globalposy, %edx
	movl	%edi, (%esp)
	movl	%edx, 8(%esp)
	movl	_globalposx, %edx
	movl	%edx, 4(%esp)
	call	_getzsofslopeptr
	movl	32(%esp), %eax
	cmpl	%eax, _globalposz
	jg	L338
	movl	28(%esp), %eax
	movzwl	_searchit, %edx
	testl	%eax, %eax
	je	L351
	cmpw	$2, %dx
	je	L331
	movzbl	33(%ebx), %ecx
	movzbl	29(%ebx), %edx
	movl	_globalflags, %eax
	movzbl	32(%ebx), %edi
	testb	%cl, %cl
	cmove	%edx, %ecx
	andl	$4, %eax
	jne	L354
	testb	$2, _hictinting+1(,%edx,8)
	jne	L336
	movsbl	28(%ebx), %eax
	jmp	L336
	.p2align 4,,10
	.p2align 3
L342:
	cmpw	$2, _searchit
	je	L345
	movl	28(%esp), %eax
	orl	%ebp, %eax
	jne	L343
	movl	_cursectormaskcount, %eax
	testl	%eax, %eax
	je	L343
	testw	$384, 12(%ebx)
	je	L343
	movswl	(%eax), %edx
	movl	_cursectormasks, %ecx
	leal	1(%edx), %ebx
	movw	%bx, (%eax)
	movzwl	20(%esp), %eax
	movw	%ax, (%ecx,%edx,2)
	jmp	L343
	.p2align 4,,10
	.p2align 3
L351:
	cmpw	$2, _searchit
	je	L331
	testl	%ebp, %ebp
	jne	L338
	movl	_cursectormaskcount, %eax
	testl	%eax, %eax
	je	L338
	testw	$384, 14(%ebx)
	je	L338
	movswl	(%eax), %edx
	movl	_cursectormasks, %edi
	movl	$1, 28(%esp)
	leal	1(%edx), %ecx
	movw	%cx, (%eax)
	movzwl	20(%esp), %eax
	movw	%ax, (%edi,%edx,2)
	jmp	L334
	.p2align 4,,10
	.p2align 3
L374:
	movl	%esi, %eax
	call	_yax_getbunch.constprop.1
	movzwl	12(%ebx), %edx
	cwtl
	shrl	$31, %eax
	jmp	L339
	.p2align 4,,10
	.p2align 3
L375:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L324
	movl	%esi, 16(%esp)
	movl	$LC20, 12(%esp)
	movl	$3139, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
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
L372:
	.cfi_restore_state
	movl	%esi, %eax
	call	_yax_getbunch.constprop.0
	movzwl	14(%ebx), %edx
	cwtl
	shrl	$31, %eax
	jmp	L326
	.p2align 4,,10
	.p2align 3
L371:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L325
	movl	%esi, 16(%esp)
	movl	$LC19, 12(%esp)
	movl	$3035, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L325
	.p2align 4,,10
	.p2align 3
L373:
	movsbl	28(%ebx), %ecx
	movzbl	29(%ebx), %edx
	movswl	24(%ebx), %eax
	call	_polymer_getsky
	movb	$1, __ZL8prdidsky
	jmp	L328
	.p2align 4,,10
	.p2align 3
L341:
	movsbl	20(%ebx), %ecx
	movzbl	21(%ebx), %edx
	movswl	16(%ebx), %eax
	call	_polymer_getsky
	movb	$1, __ZL8prdidsky
	cmpl	%edi, _globalposz
	jge	L342
	jmp	L343
	.p2align 4,,10
	.p2align 3
L357:
	xorl	%eax, %eax
L349:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movl	24(%esp), %eax
	addl	$256, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L343
	.p2align 4,,10
	.p2align 3
L354:
	xorl	%eax, %eax
L336:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movl	24(%esp), %eax
	addl	$4, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L338
	.p2align 4,,10
	.p2align 3
L345:
	movl	24(%esp), %edi
	movzwl	20(%esp), %ecx
	movl	400(%edi), %ebx
	movb	$1, 400(%edi)
	leal	256(%edi), %eax
	movw	%cx, 401(%edi)
	movb	$-1, 403(%edi)
	call	_polymer_drawplane.lto_priv.0
	movl	%ebx, 400(%edi)
	jmp	L343
	.p2align 4,,10
	.p2align 3
L331:
	movl	24(%esp), %eax
	movzwl	20(%esp), %ecx
	movl	148(%eax), %edi
	movb	$2, 148(%eax)
	addl	$4, %eax
	movw	%cx, 145(%eax)
	movb	$-1, 147(%eax)
	call	_polymer_drawplane.lto_priv.0
	movl	24(%esp), %eax
	movl	%edi, 148(%eax)
	jmp	L338
	.cfi_endproc
LFE30:
	.section .rdata,"dr"
LC21:
	.ascii "Drawing wall %i\0"
LC22:
	.ascii "Finished drawing wall %i.\0"
	.text
	.p2align 4
	.globl	_polymer_drawwall.lto_priv.0
	.def	_polymer_drawwall.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_drawwall.lto_priv.0:
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
	movswl	%dx, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movw	%dx, 34(%esp)
	cmpl	$2, _pr_verbosity
	jg	L416
L377:
	movl	_sector, %ecx
	cwtl
	movl	_wall, %edx
	movl	%esi, %ebp
	leal	(%eax,%eax,4), %eax
	sall	$5, %ebp
	movl	_prwalls(,%esi,4), %ebx
	leal	(%ecx,%eax,8), %eax
	movl	%ebp, 20(%esp)
	addl	%ebp, %edx
	movzwl	12(%eax), %edi
	movw	%di, 24(%esp)
	testb	$1, 14(%eax)
	je	L378
	movswl	12(%edx), %edi
	testw	%di, %di
	js	L397
	leal	(%edi,%edi,4), %edi
	leal	(%ecx,%edi,8), %ecx
	movzwl	14(%ecx), %edi
	movl	%edi, %ebp
	andl	$1, %ebp
	movl	%ebp, 28(%esp)
	testb	$1, 24(%esp)
	je	L415
	movzwl	12(%ecx), %ecx
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%edi, 24(%esp)
	jmp	L381
	.p2align 4,,10
	.p2align 3
L378:
	testb	$1, 24(%esp)
	jne	L417
L397:
	movl	$0, 28(%esp)
L415:
	movl	$0, 24(%esp)
L381:
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L383
	movzbl	29(%eax), %ecx
L383:
	movzbl	32(%eax), %edi
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L398
	movzbl	21(%edx), %ebp
	testb	$2, _hictinting+1(,%ebp,8)
	je	L418
L384:
	movl	%edi, %edx
	call	_calc_and_apply_fog
	movzbl	788(%ebx), %eax
	testb	$1, %al
	je	L388
	movl	28(%esp), %ecx
	movzwl	_searchit, %edx
	testl	%ecx, %ecx
	jne	L419
	cmpw	$2, %dx
	je	L387
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	movzbl	788(%ebx), %eax
L388:
	testb	$2, %al
	je	L390
	movl	24(%esp), %edx
	movzwl	_searchit, %eax
	testl	%edx, %edx
	jne	L420
	cmpw	$2, %ax
	je	L392
	leal	252(%ebx), %eax
	call	_polymer_drawplane.lto_priv.0
L390:
	movl	20(%esp), %eax
	addl	_wall, %eax
	testb	$32, 14(%eax)
	je	L394
	cmpw	$0, 12(%eax)
	js	L394
	leal	504(%ebx), %eax
	cmpw	$2, _searchit
	je	L421
	call	_polymer_drawplane.lto_priv.0
	.p2align 4
	.p2align 3
L394:
	cmpl	$2, _pr_verbosity
	jg	L422
L376:
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
L398:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L384
	.p2align 4,,10
	.p2align 3
L420:
	cmpw	$2, %ax
	jne	L390
L392:
	movzwl	34(%esp), %eax
	movl	396(%ebx), %edi
	movb	$0, 396(%ebx)
	movb	$-1, 399(%ebx)
	movw	%ax, 397(%ebx)
	leal	252(%ebx), %eax
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 396(%ebx)
	jmp	L390
	.p2align 4,,10
	.p2align 3
L419:
	cmpw	$2, %dx
	jne	L388
L387:
	movzwl	34(%esp), %eax
	movl	144(%ebx), %edi
	movb	$5, 144(%ebx)
	movb	$-1, 147(%ebx)
	movw	%ax, 145(%ebx)
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 144(%ebx)
	movzbl	788(%ebx), %eax
	jmp	L388
	.p2align 4,,10
	.p2align 3
L418:
	movsbl	20(%edx), %eax
	jmp	L384
	.p2align 4,,10
	.p2align 3
L417:
	movswl	12(%edx), %edi
	testw	%di, %di
	js	L397
	leal	(%edi,%edi,4), %edi
	movl	$0, 28(%esp)
	leal	(%ecx,%edi,8), %ecx
	movzwl	12(%ecx), %ecx
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%edi, 24(%esp)
	jmp	L381
	.p2align 4,,10
	.p2align 3
L422:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L376
	movl	%esi, 16(%esp)
	movl	$LC22, 12(%esp)
	movl	$3710, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
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
L416:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$6, %edx
	jle	L377
	movl	%esi, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$3648, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	20(%esp), %eax
	jmp	L377
	.p2align 4,,10
	.p2align 3
L421:
	movzwl	34(%esp), %ecx
	movl	648(%ebx), %edi
	movb	$4, 648(%ebx)
	movb	$-1, 651(%ebx)
	movw	%cx, 649(%ebx)
	call	_polymer_drawplane.lto_priv.0
	movl	%edi, 648(%ebx)
	jmp	L394
	.cfi_endproc
LFE31:
	.p2align 4
	.globl	_polymer_computeplane.lto_priv.0
	.def	_polymer_computeplane.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_computeplane.lto_priv.0:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	172(%eax), %eax
	movl	%eax, 52(%esp)
	testl	%eax, %eax
	je	L442
	movl	176(%edi), %eax
	cmpl	$2, %eax
	jle	L423
	movl	%ebx, -12(%ebp)
	leal	-1(%eax), %ecx
	movl	%esi, -8(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	(%edi), %esi
	movl	%edi, 8(%esp)
	movl	%ecx, 56(%esp)
	xorl	%ecx, %ecx
	movl	%esi, 12(%esp)
	movl	%eax, %esi
L427:
	movl	%ecx, %eax
	movl	56(%esp), %edi
	cltd
	idivl	%edi
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %ebx
	cmpl	%esi, %ebx
	jg	L441
	leal	1(%ecx), %eax
	cltd
	idivl	%edi
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %edi
	cmpl	%esi, %edi
	jg	L441
	leal	2(%ecx), %eax
	cltd
	idivl	56(%esp)
	movl	52(%esp), %eax
	movzwl	(%eax,%edx,2), %edx
	cmpl	%esi, %edx
	jg	L441
	leal	(%edi,%edi,2), %eax
	movl	12(%esp), %edi
	leal	(%ebx,%ebx,2), %ebx
	leal	(%edi,%eax,8), %eax
	leal	(%edi,%ebx,8), %ebx
	movss	12(%eax), %xmm6
	movss	(%eax), %xmm2
	movss	4(%eax), %xmm1
	movss	8(%eax), %xmm0
	movss	%xmm6, 40(%esp)
	movss	12(%ebx), %xmm6
	movaps	%xmm2, %xmm5
	subss	(%ebx), %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm7
	subss	8(%ebx), %xmm7
	movss	%xmm6, 16(%esp)
	movss	16(%eax), %xmm6
	leal	(%edx,%edx,2), %eax
	subss	4(%ebx), %xmm4
	leal	(%edi,%eax,8), %eax
	movss	(%eax), %xmm3
	movss	%xmm6, 20(%esp)
	movss	16(%ebx), %xmm6
	movss	%xmm7, 36(%esp)
	subss	%xmm2, %xmm3
	movss	4(%eax), %xmm2
	movss	%xmm6, 24(%esp)
	movaps	%xmm2, %xmm6
	subss	%xmm1, %xmm6
	movss	8(%eax), %xmm1
	movss	%xmm3, 48(%esp)
	movaps	%xmm7, %xmm3
	subss	%xmm0, %xmm1
	movss	12(%eax), %xmm0
	mulss	%xmm6, %xmm3
	movss	%xmm0, 28(%esp)
	movss	16(%eax), %xmm0
	movl	8(%esp), %eax
	movaps	%xmm1, %xmm2
	movss	%xmm1, 44(%esp)
	movss	%xmm0, 32(%esp)
	mulss	%xmm5, %xmm2
	movaps	%xmm1, %xmm0
	movss	48(%esp), %xmm1
	mulss	%xmm4, %xmm0
	mulss	%xmm1, %xmm7
	mulss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	movaps	%xmm5, %xmm0
	mulss	%xmm6, %xmm0
	subss	%xmm7, %xmm2
	movaps	%xmm3, %xmm7
	movss	%xmm3, 56(%eax)
	mulss	%xmm3, %xmm7
	movss	%xmm2, 60(%eax)
	subss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm1, 64(%eax)
	addss	%xmm7, %xmm0
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm7, %xmm0
	comiss	LC23, %xmm0
	jnb	L443
	addl	$3, %ecx
	cmpl	%esi, %ecx
	jl	L427
L441:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L423:
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L442:
	.cfi_restore_state
	movl	%ebx, -12(%ebp)
	xorl	%ecx, %ecx
	movl	%esi, -8(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	4(%edi), %eax
	movl	(%edi), %esi
	movl	%eax, 56(%esp)
	subl	$1, %eax
	movl	%eax, 52(%esp)
	.p2align 4
	.p2align 3
L425:
	movl	%ecx, %eax
	cltd
	idivl	52(%esp)
	movl	%edx, %ebx
	cmpl	%edx, 56(%esp)
	jl	L441
	leal	1(%ecx), %edx
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	cltd
	idivl	52(%esp)
	movl	%edx, 48(%esp)
	cmpl	%edx, 56(%esp)
	jl	L441
	leal	2(%ecx), %eax
	cltd
	idivl	52(%esp)
	cmpl	%edx, 56(%esp)
	jl	L441
	movl	48(%esp), %ecx
	leal	(%ecx,%ecx,2), %eax
	leal	(%ebx,%ebx,2), %ecx
	leal	(%esi,%eax,8), %eax
	leal	(%esi,%ecx,8), %ecx
	movss	12(%eax), %xmm6
	movss	(%eax), %xmm2
	movss	4(%eax), %xmm1
	movss	8(%eax), %xmm0
	movss	%xmm6, 40(%esp)
	movss	12(%ecx), %xmm6
	movaps	%xmm2, %xmm5
	subss	(%ecx), %xmm5
	movaps	%xmm1, %xmm4
	movaps	%xmm0, %xmm7
	subss	8(%ecx), %xmm7
	movss	%xmm6, 16(%esp)
	movss	16(%eax), %xmm6
	leal	(%edx,%edx,2), %eax
	subss	4(%ecx), %xmm4
	leal	(%esi,%eax,8), %eax
	movss	(%eax), %xmm3
	movss	%xmm6, 20(%esp)
	movss	16(%ecx), %xmm6
	movss	%xmm7, 36(%esp)
	subss	%xmm2, %xmm3
	movss	4(%eax), %xmm2
	movss	%xmm6, 24(%esp)
	movaps	%xmm2, %xmm6
	subss	%xmm1, %xmm6
	movss	8(%eax), %xmm1
	movss	%xmm3, 48(%esp)
	movaps	%xmm7, %xmm3
	subss	%xmm0, %xmm1
	movss	12(%eax), %xmm0
	mulss	%xmm6, %xmm3
	movss	%xmm0, 28(%esp)
	movss	16(%eax), %xmm0
	movaps	%xmm1, %xmm2
	movss	%xmm1, 44(%esp)
	movss	%xmm0, 32(%esp)
	mulss	%xmm5, %xmm2
	movaps	%xmm1, %xmm0
	movss	48(%esp), %xmm1
	mulss	%xmm4, %xmm0
	mulss	%xmm1, %xmm7
	mulss	%xmm4, %xmm1
	subss	%xmm0, %xmm3
	movaps	%xmm5, %xmm0
	mulss	%xmm6, %xmm0
	subss	%xmm7, %xmm2
	movaps	%xmm3, %xmm7
	movss	%xmm3, 56(%edi)
	mulss	%xmm3, %xmm7
	movss	%xmm2, 60(%edi)
	subss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm1, 64(%edi)
	addss	%xmm7, %xmm0
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm7
	addss	%xmm7, %xmm0
	comiss	LC23, %xmm0
	jnb	L434
	movl	12(%esp), %ecx
	cmpl	%ecx, 56(%esp)
	jg	L425
	jmp	L441
	.p2align 4,,10
	.p2align 3
L443:
	movl	%edi, %esi
	movss	%xmm5, 4(%esp)
	movl	%eax, %edi
	movss	%xmm4, (%esp)
L428:
	movss	40(%esp), %xmm4
	subss	16(%esp), %xmm4
	sqrtss	%xmm0, %xmm0
	movss	20(%esp), %xmm7
	movss	28(%esp), %xmm5
	subss	40(%esp), %xmm5
	movss	%xmm4, 16(%esp)
	movaps	%xmm7, %xmm4
	subss	24(%esp), %xmm4
	movss	%xmm5, 20(%esp)
	movss	%xmm4, 24(%esp)
	movss	32(%esp), %xmm4
	subss	%xmm7, %xmm4
	movss	LC24, %xmm7
	divss	%xmm0, %xmm7
	mulss	%xmm7, %xmm3
	mulss	%xmm7, %xmm2
	mulss	%xmm1, %xmm7
	movss	%xmm3, 56(%edi)
	movss	%xmm2, 60(%edi)
	movss	%xmm7, 64(%edi)
	movss	(%esi), %xmm1
	movss	4(%esi), %xmm0
	movss	%xmm3, 56(%esp)
	mulss	%xmm3, %xmm1
	movss	24(%esp), %xmm3
	movss	%xmm2, 40(%esp)
	mulss	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	movss	%xmm7, 52(%esp)
	addss	%xmm1, %xmm0
	movss	8(%esi), %xmm1
	mulss	%xmm7, %xmm1
	addss	%xmm1, %xmm0
	xorps	LC25, %xmm0
	movss	48(%esp), %xmm1
	movss	%xmm0, 68(%edi)
	movss	16(%esp), %xmm0
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	mulss	%xmm5, %xmm4
	movss	LC1, %xmm5
	subss	%xmm4, %xmm0
	movaps	%xmm2, %xmm4
	divss	%xmm0, %xmm5
	movss	4(%esp), %xmm0
	mulss	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	mulss	%xmm6, %xmm1
	movaps	%xmm0, %xmm2
	movss	(%esp), %xmm0
	mulss	%xmm4, %xmm0
	mulss	36(%esp), %xmm4
	subss	%xmm1, %xmm0
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm7
	movaps	%xmm0, %xmm5
	movaps	%xmm4, %xmm0
	movss	24(%esp), %xmm4
	mulss	44(%esp), %xmm4
	mulss	%xmm7, %xmm5
	movaps	%xmm2, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm4, %xmm0
	movaps	%xmm5, %xmm3
	movaps	%xmm0, %xmm5
	movaps	%xmm3, %xmm0
	mulss	%xmm7, %xmm5
	mulss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
	movss	LC1, %xmm1
	sqrtss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm6, %xmm0
	mulss	%xmm1, %xmm2
	movaps	%xmm1, %xmm4
	mulss	%xmm5, %xmm4
	mulss	%xmm1, %xmm3
	movss	%xmm2, 32(%esp)
	movss	48(%esp), %xmm1
	movss	20(%esp), %xmm5
	movss	%xmm4, 24(%esp)
	movss	16(%esp), %xmm4
	mulss	4(%esp), %xmm5
	movss	20(%esp), %xmm6
	movss	%xmm3, 28(%esp)
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm0
	subss	%xmm5, %xmm1
	movaps	%xmm4, %xmm5
	movss	(%esp), %xmm4
	mulss	%xmm6, %xmm4
	mulss	%xmm7, %xmm1
	subss	%xmm4, %xmm0
	movss	44(%esp), %xmm4
	mulss	%xmm5, %xmm4
	movss	36(%esp), %xmm5
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm5
	movss	56(%esp), %xmm6
	movaps	%xmm4, %xmm2
	movaps	%xmm0, %xmm4
	subss	%xmm5, %xmm2
	mulss	%xmm0, %xmm4
	movaps	%xmm1, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm7, %xmm2
	movss	52(%esp), %xmm7
	addss	%xmm5, %xmm4
	movaps	%xmm2, %xmm5
	mulss	%xmm2, %xmm5
	addss	%xmm5, %xmm4
	movss	LC1, %xmm5
	sqrtss	%xmm4, %xmm4
	divss	%xmm4, %xmm5
	movaps	%xmm7, %xmm4
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm2
	mulss	%xmm5, %xmm1
	movss	40(%esp), %xmm5
	mulss	%xmm0, %xmm4
	mulss	%xmm2, %xmm5
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	mulss	%xmm2, %xmm5
	mulss	%xmm0, %xmm6
	movss	%xmm4, 48(%esp)
	mulss	32(%esp), %xmm4
	movaps	%xmm4, %xmm3
	movaps	%xmm7, %xmm4
	mulss	%xmm1, %xmm4
	movaps	%xmm4, %xmm7
	subss	%xmm5, %xmm4
	mulss	28(%esp), %xmm4
	subss	%xmm7, %xmm5
	movss	40(%esp), %xmm7
	subss	%xmm4, %xmm3
	movss	40(%esp), %xmm4
	mulss	%xmm1, %xmm4
	subss	%xmm6, %xmm4
	movss	24(%esp), %xmm6
	mulss	%xmm4, %xmm6
	addss	%xmm3, %xmm6
	movss	LC1, %xmm3
	divss	%xmm6, %xmm3
	movss	48(%esp), %xmm6
	mulss	%xmm3, %xmm5
	mulss	%xmm3, %xmm6
	mulss	%xmm3, %xmm4
	movss	%xmm5, 32(%edi)
	movss	28(%esp), %xmm5
	movss	%xmm6, 20(%edi)
	movss	52(%esp), %xmm6
	movss	%xmm4, 44(%edi)
	movss	24(%esp), %xmm4
	mulss	%xmm6, %xmm5
	mulss	%xmm7, %xmm4
	subss	%xmm5, %xmm4
	movss	24(%esp), %xmm5
	mulss	%xmm3, %xmm4
	movss	%xmm4, 24(%edi)
	movss	32(%esp), %xmm4
	mulss	%xmm6, %xmm4
	movss	56(%esp), %xmm6
	mulss	%xmm6, %xmm5
	subss	%xmm5, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, 36(%edi)
	movss	32(%esp), %xmm5
	mulss	28(%esp), %xmm6
	mulss	%xmm7, %xmm5
	movss	28(%esp), %xmm7
	movaps	%xmm6, %xmm4
	movss	24(%esp), %xmm6
	subss	%xmm5, %xmm4
	movaps	%xmm6, %xmm5
	mulss	%xmm0, %xmm5
	mulss	%xmm3, %xmm4
	movss	%xmm4, 48(%edi)
	movaps	%xmm7, %xmm4
	mulss	%xmm2, %xmm4
	subss	%xmm5, %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, 28(%edi)
	movaps	%xmm6, %xmm4
	movss	32(%esp), %xmm6
	mulss	%xmm1, %xmm4
	mulss	%xmm6, %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm7, %xmm1
	subss	%xmm2, %xmm4
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm2
	mulss	%xmm3, %xmm2
	mulss	%xmm3, %xmm0
	movss	%xmm2, 40(%edi)
	movss	%xmm0, 52(%edi)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
L434:
	.cfi_restore_state
	movss	%xmm5, 4(%esp)
	movss	%xmm4, (%esp)
	jmp	L428
	.cfi_endproc
LFE32:
	.section .rdata,"dr"
LC28:
	.ascii "Sprite %i\0"
LC29:
	.ascii "Updating sprite %i\0"
	.text
	.p2align 4
	.globl	_polymer_drawsprite
	.def	_polymer_drawsprite;	.scl	2;	.type	32;	.endef
_polymer_drawsprite:
LFB33:
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
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, %ebx
	subl	$136, %esp
	movl	_tspriteptr(,%eax,4), %eax
	movl	%eax, -36(%ebp)
	cmpl	$2, _pr_verbosity
	jg	L729
L445:
	movl	-36(%ebp), %ecx
	movswl	30(%ecx), %eax
	testw	%ax, %ax
	js	L444
	movswl	14(%ecx), %edx
	movl	%edx, %esi
	cmpl	$30719, %edx
	jbe	L730
L444:
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
L730:
	.cfi_restore_state
	movzbl	18(%ecx), %ecx
	testb	$4, %cl
	je	L447
	movl	_depth, %edi
	testl	%edi, %edi
	je	L707
	movl	_mirrors-8(,%edi,8), %edi
	testl	%edi, %edi
	je	L444
L707:
	andl	$8, %ecx
	jne	L444
L450:
	movl	%eax, -52(%ebp)
	cmpb	$63, _picanm+3(%edx,%edx,4)
	ja	L731
L451:
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L452
	movzbl	29(%eax), %ecx
L452:
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L560
	movl	-36(%ebp), %edi
	movzbl	17(%edi), %esi
	testb	$2, _hictinting+1(,%esi,8)
	je	L732
L453:
	call	_calc_and_apply_fog
	movl	-36(%ebp), %edi
	movzwl	12(%edi), %eax
	movzbl	19(%edi), %edx
	movl	%eax, %ecx
	shrw	%ax
	shrw	$9, %cx
	andl	$1, %eax
	andl	$1, %ecx
	call	_handle_blend
	movzbl	17(%edi), %esi
	movswl	14(%edi), %edi
	movl	%esi, %ecx
	movl	%edi, %eax
	leal	0(,%edi,4), %edx
	jmp	L454
	.p2align 6
	.p2align 4,,10
	.p2align 3
L456:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	cmpb	_tile2model+17(,%esi,4), %cl
	je	L455
L454:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L456
	movl	%edi, %eax
L455:
	movl	-52(%ebp), %edx
	movl	_usemodels, %esi
	sall	$6, %edx
	addl	_spriteext, %edx
	movzwl	12(%edx), %edx
	testl	%esi, %esi
	je	L457
	leal	(%eax,%eax,4), %ecx
	sall	$2, %ecx
	movswl	_tile2model(%ecx), %eax
	testw	%ax, %ax
	js	L457
	cmpw	$0, _tile2model+2(%ecx)
	js	L457
	testb	$1, %dl
	jne	L457
	movl	_models, %ecx
	movl	(%ecx,%eax,4), %eax
	cmpl	$1, (%eax)
	je	L457
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L458
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L458:
	cmpl	$1028, _culledface
	movl	$1029, %ebx
	movl	$1028, %eax
	cmove	%ebx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	movl	-36(%ebp), %eax
	subl	$4, %esp
	call	_polymer_drawmdsprite.lto_priv.0
	movl	$1028, %eax
	cmpl	$1028, _culledface
	cmove	%ebx, %eax
L728:
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	jmp	L553
	.p2align 4,,10
	.p2align 3
L729:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L445
	movl	%ebx, 16(%esp)
	movl	$LC28, 12(%esp)
	movl	$1516, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L445
L447:
	andl	$8, %ecx
	je	L450
	movl	_depth, %ecx
	testl	%ecx, %ecx
	je	L444
	movl	_mirrors-8(,%ecx,8), %edi
	testl	%edi, %edi
	je	L450
	jmp	L444
L457:
	movl	-36(%ebp), %edi
	movzwl	12(%edi), %eax
	movw	%ax, -82(%ebp)
	testb	$4, %dl
	je	L461
	movzwl	28(%edi), %edx
	leal	512(%edx), %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$13, %ax
	cwtl
	addl	%eax, (%edi)
	movzwl	_sintable(%edx,%edx), %eax
	sarw	$13, %ax
	cwtl
	addl	%eax, 4(%edi)
L462:
	cmpl	$2, _pr_nullrender
	jg	L463
	movl	_tspriteptr(,%ebx,4), %esi
	movzwl	12(%esi), %eax
	movw	%ax, -40(%ebp)
	cmpl	$2, _pr_verbosity
	jg	L733
L464:
	movswl	14(%esi), %edi
	movswl	30(%esi), %ebx
	movl	%edi, %eax
	orw	%bx, %ax
	js	L463
	movl	_prsprites(,%ebx,4), %eax
	movl	%eax, -32(%ebp)
	testl	%eax, %eax
	je	L734
L465:
	testb	$48, 12(%esi)
	je	L473
	movl	-32(%ebp), %ebx
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L474
	cmpl	$1, _pr_nullrender
	jle	L735
L474:
	cmpw	$2, _searchit
	je	L473
	movl	8(%esi), %eax
	movl	12(%esi), %edx
	movl	(%esi), %ecx
	movl	4(%esi), %ebx
	xorl	$746652028, %eax
	xorl	$481108471, %edx
	movl	%eax, (%esp)
	xorl	$963444408, %ecx
	xorl	$-1102339037, %ebx
	movl	%edx, 4(%esp)
	movl	%ecx, %eax
	movl	%ebx, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	movl	14(%esi), %ecx
	movl	18(%esi), %ebx
	movl	%eax, -48(%ebp)
	movl	22(%esi), %eax
	movl	%edx, -44(%ebp)
	movl	26(%esi), %edx
	xorl	$-378678050, %ecx
	xorl	$-610824061, %ebx
	xorl	$-1532739470, %eax
	xorl	$526889911, %edx
	movl	%eax, (%esp)
	movl	%ecx, %eax
	movl	%edx, 4(%esp)
	movl	%ebx, %edx
	call	_XXH3_mul128_fold64.lto_priv.0
	addl	-48(%ebp), %eax
	adcl	-44(%ebp), %edx
	addl	$-1314800686, %eax
	adcl	$-1971305779, %edx
	movl	%edx, %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$5, %ecx
	xorl	%ebx, %edx
	xorl	%ecx, %eax
	movl	%edx, -44(%ebp)
	imull	$-1640531463, %edx, %ecx
	movl	%eax, -48(%ebp)
	imull	$374761361, -48(%ebp), %edx
	movl	-48(%ebp), %eax
	addl	%edx, %ecx
	movl	$-1640531463, %edx
	mull	%edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-32(%ebp), %eax
	cmpl	252(%eax), %ecx
	je	L463
	movl	%ecx, 252(%eax)
L473:
	movzwl	-40(%ebp), %eax
	movzbl	17(%esi), %ecx
	andl	$32, %eax
	movw	%ax, -68(%ebp)
	shrw	$5, %ax
	andl	$1, %eax
	movb	%al, -83(%ebp)
	movl	-32(%ebp), %eax
	movl	$5, 8(%esp)
	movl	_sector, %edx
	leal	72(%eax), %ebx
	movswl	24(%esi), %eax
	leal	(%eax,%eax,4), %eax
	leal	(%edx,%eax,8), %eax
	movl	%edi, %edx
	movsbl	32(%eax), %eax
	movl	%eax, 4(%esp)
	movsbl	16(%esi), %eax
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	movzwl	12(%esi), %eax
	testb	$2, %al
	jne	L475
	movl	-32(%ebp), %eax
	xorps	%xmm0, %xmm0
	movzbl	147(%eax), %eax
	cvtsi2ssl	%eax, %xmm0
L476:
	movswl	30(%esi), %eax
	movl	-32(%ebp), %ecx
	movss	LC1, %xmm1
	sall	$6, %eax
	addl	_spriteext, %eax
	subss	8(%eax), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %eax
	movss	%xmm1, -108(%ebp)
	movb	%al, 147(%ecx)
	cmpw	$2, _searchit
	jne	L478
	movb	$3, 144(%ecx)
	movzbl	30(%esi), %eax
	movb	%al, 145(%ecx)
	movzbl	31(%esi), %eax
	movb	$-1, 147(%ecx)
	movb	%al, 146(%ecx)
	movl	$-559038737, 252(%ecx)
L478:
	movzwl	12(%esi), %ecx
	movzbl	20(%esi), %eax
	xorps	%xmm0, %xmm0
	movl	%ecx, %ebx
	cvtsi2ssl	%eax, %xmm0
	andw	$48, %cx
	movw	%cx, -56(%ebp)
	jne	L479
	mulss	LC30, %xmm0
	movss	LC31, %xmm2
L480:
	movzbl	21(%esi), %eax
	xorps	%xmm1, %xmm1
	movswl	_tilesiz(,%edi,4), %ecx
	movswl	_tilesiz+2(,%edi,4), %edx
	cvtsi2ssl	%eax, %xmm1
	movl	_usehightile, %eax
	mulss	%xmm2, %xmm1
	testl	%eax, %eax
	jne	L481
	movswl	%cx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	movl	%eax, -60(%ebp)
	movswl	%dx, %eax
	leal	0(,%edi,4), %edx
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	movl	%eax, -48(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %eax
L482:
	movsbl	_picanm+2(%edi,%edx), %edx
L484:
	cmpw	$48, -56(%ebp)
	jne	L485
	movzwl	22(%esi), %edi
	movw	%di, -64(%ebp)
	testw	%di, %di
	jne	L486
L485:
	movsbl	22(%esi), %ecx
	addl	%ecx, %eax
	movsbl	23(%esi), %ecx
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	movw	%cx, -64(%ebp)
L486:
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movzwl	-68(%ebp), %eax
	shrw	$5, %ax
	xorl	$1, %eax
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	%ecx, -56(%ebp)
	testb	%bl, %bl
	jns	L563
	testb	%al, %al
	jne	L736
L563:
	movl	$0, -104(%ebp)
L487:
	xorps	%xmm0, %xmm0
	xorps	%xmm5, %xmm5
	movb	%al, -68(%ebp)
	cvtsi2ssl	8(%esi), %xmm0
	mulss	LC38, %xmm0
	cvtsi2ssl	4(%esi), %xmm5
	movss	%xmm0, -92(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%esi), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm5, -88(%ebp)
	movss	%xmm0, -96(%ebp)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movzwl	-40(%ebp), %ecx
	movl	%ecx, %ebx
	shrw	$3, %cx
	andl	$4, %ebx
	movl	%ebx, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	andl	$1, %eax
	movb	%al, -109(%ebp)
	movzbl	-83(%ebp), %eax
	xorl	%edx, %eax
	movzwl	12(%esi), %edx
	movb	%al, -110(%ebp)
	movzbl	-68(%ebp), %eax
	andl	%ecx, %eax
	movb	%al, -84(%ebp)
	movl	%edi, %eax
	negl	%eax
	movl	%eax, -68(%ebp)
	movl	_pr_billboardingmode, %eax
	testl	%eax, %eax
	je	L489
	testb	$48, -40(%ebp)
	je	L737
L489:
	movzbl	-109(%ebp), %ebx
	cmpb	%bl, -83(%ebp)
	cmove	-68(%ebp), %edi
	testb	$48, -40(%ebp)
	je	L493
	movl	-56(%ebp), %ebx
	movl	%ebx, %eax
	negl	%eax
	andl	$1, %ecx
	cmove	%ebx, %eax
	movl	%eax, -56(%ebp)
L493:
	testb	$32, %dl
	jne	L494
	andl	$48, %edx
	cmpw	$16, %dx
	je	L495
	movl	_viewangle, %edx
	xorps	%xmm0, %xmm0
	movss	-96(%ebp), %xmm6
	movl	%edx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%edx,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	andl	$2047, %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	LC15, %xmm0
	movss	%xmm0, -64(%ebp)
	movss	%xmm6, 8(%esp)
	movss	-92(%ebp), %xmm7
	movss	%xmm7, 4(%esp)
	movss	-88(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-64(%ebp), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	_horizang, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	movl	$0x00000000, 8(%esp)
	cvtsi2ssl	-56(%ebp), %xmm0
L720:
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movl	$__ZL10vertsprite, %edi
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	xorps	%xmm0, %xmm0
	subl	$12, %esp
	movl	$0x3f800000, 8(%esp)
	cvtsi2ssl	-48(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-60(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L497:
	movl	$_spritemodelview, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	movl	-32(%ebp), %eax
	movl	(%eax), %edx
	movl	80(%edi), %eax
	movl	%eax, 80(%edx)
	movl	84(%edi), %eax
	movl	%eax, 84(%edx)
	movl	88(%edi), %eax
	movl	%eax, 88(%edx)
	movl	92(%edi), %eax
	movl	%eax, 92(%edx)
	xorl	%eax, %eax
L508:
	movl	12(%edi,%eax), %ecx
	movl	4(%edi,%eax), %esi
	movl	8(%edi,%eax), %ebx
	movl	%ecx, -48(%ebp)
	movl	(%edi,%eax), %ecx
	movl	%esi, 4(%edx,%eax)
	movl	%ecx, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	-48(%ebp), %ecx
	movl	%ecx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L508
	cmpb	$0, -110(%ebp)
	jne	L576
	cmpb	$0, -84(%ebp)
	jne	L576
L510:
	movl	-32(%ebp), %ecx
	xorl	%eax, %eax
L516:
	movss	(%edi), %xmm0
	movss	4(%edi), %xmm1
	addl	$24, %edi
	mulss	_spritemodelview+16, %xmm1
	movl	(%ecx), %edx
	mulss	_spritemodelview, %xmm0
	addl	%eax, %edx
	addl	$24, %eax
	addss	%xmm1, %xmm0
	movss	-16(%edi), %xmm1
	mulss	_spritemodelview+32, %xmm1
	addss	%xmm1, %xmm0
	addss	_spritemodelview+48, %xmm0
	movss	%xmm0, (%edx)
	movss	-24(%edi), %xmm0
	movss	-20(%edi), %xmm1
	mulss	_spritemodelview+4, %xmm0
	mulss	_spritemodelview+20, %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%edi), %xmm1
	mulss	_spritemodelview+36, %xmm1
	addss	%xmm1, %xmm0
	addss	_spritemodelview+52, %xmm0
	movss	%xmm0, 4(%edx)
	movss	-24(%edi), %xmm0
	movss	-20(%edi), %xmm1
	mulss	_spritemodelview+8, %xmm0
	mulss	_spritemodelview+24, %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%edi), %xmm1
	mulss	_spritemodelview+40, %xmm1
	addss	%xmm1, %xmm0
	addss	_spritemodelview+56, %xmm0
	movss	%xmm0, 8(%edx)
	cmpl	$96, %eax
	jne	L516
	movl	-32(%ebp), %edi
	movl	%edi, %eax
	call	_polymer_computeplane.lto_priv.0
	cmpl	$1, _pr_nullrender
	jle	L738
	testb	$48, -40(%ebp)
	je	L463
L519:
	movl	-32(%ebp), %edi
	movzwl	248(%edi), %eax
	leal	184(%edi), %edx
	movl	$-1, 4(%esp)
	movl	%edx, (%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	call	_memset
	xorl	%eax, %eax
	movl	$0, -40(%ebp)
	movw	%ax, 248(%edi)
	movl	_pr_maxlightpriority, %eax
	movl	-32(%ebp), %edi
	testl	%eax, %eax
	jle	L463
L520:
	movl	_lightcount, %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	testl	%eax, %eax
	jg	L722
	jmp	L523
	.p2align 5
	.p2align 4,,10
	.p2align 3
L521:
	addl	$1, %ebx
L722:
	imull	$270, %ebx, %eax
	testb	$1, _prlights+254(%eax)
	je	L521
	leal	1(%ebx), %eax
	addl	$1, %esi
	movl	%eax, -32(%ebp)
	imull	$270, %ebx, %eax
	leal	_prlights(%eax), %ecx
	movzbl	_prlights+31(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	L522
	movl	4(%edi), %edx
	movl	(%edi), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	jne	L739
L522:
	cmpl	%esi, _lightcount
	jle	L523
	movl	-32(%ebp), %ebx
	jmp	L722
L523:
	addl	$1, -40(%ebp)
	movl	-40(%ebp), %eax
	cmpl	_pr_maxlightpriority, %eax
	jl	L520
L463:
	movl	-52(%ebp), %eax
	movl	_prsprites(,%eax,4), %eax
	movl	%eax, -48(%ebp)
	testl	%eax, %eax
	je	L444
	movzwl	-82(%ebp), %eax
	testb	$32, %al
	jne	L526
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L527
	movss	LC36, %xmm0
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movl	_prsectors(,%eax,4), %eax
	addss	516(%eax), %xmm0
	movss	%xmm0, 516(%eax)
	movl	_depth, %eax
	testl	%eax, %eax
	je	L528
	movl	_mirrors-8(,%eax,8), %edi
	testl	%edi, %edi
	je	L544
L528:
	movl	-36(%ebp), %edi
	movl	_globalposy, %ecx
	movl	_globalposx, %eax
	movl	_glad_glPolygonOffset, %esi
	subl	4(%edi), %ecx
	subl	(%edi), %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -28(%ebp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 109 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -24(%ebp)
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L530
	testl	%edx, %edx
	je	L570
	cmpl	%eax, %edx
	jge	L531
	leal	-28(%ebp), %eax
	leal	-24(%ebp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
L531:
	movl	%ecx, %eax
	movl	%edx, %ebx
	sarl	%eax
	sarl	$5, %ebx
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%ebx, %ecx
	movl	%edx, %ebx
	sarl	$7, %ebx
	subl	%ebx, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$6, %eax
	sarl	$2, %ecx
	addl	%ecx, %edx
	addl	%eax, %edx
L530:
	sarl	$2, %edx
	movl	$2048, %eax
	xorps	%xmm1, %xmm1
	movl	$0xc2800000, 4(%esp)
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cvtsi2ssl	%edx, %xmm1
L725:
	movss	LC1, %xmm0
	divss	%xmm1, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, (%esp)
	call	*%esi
	subl	$8, %esp
L532:
	movl	-36(%ebp), %eax
	movzwl	12(%eax), %edx
	testb	$64, %dl
	je	L546
L556:
	testb	$48, %dl
	jne	L740
L546:
	movl	_depth, %eax
	testl	%eax, %eax
	jne	L555
L549:
	movl	_pr_ati_nodepthoffset, %ecx
	testl	%ecx, %ecx
	je	L741
L550:
	movl	-48(%ebp), %eax
	call	_polymer_drawplane.lto_priv.0
	movl	_depth, %eax
	testl	%eax, %eax
	je	L551
	movl	_mirrors-8(,%eax,8), %edx
	testl	%edx, %edx
	je	L552
L551:
	movl	_pr_ati_nodepthoffset, %eax
	testl	%eax, %eax
	je	L742
L552:
	movl	-36(%ebp), %eax
	movzwl	12(%eax), %eax
	testb	$64, %al
	je	L444
	testb	$48, %al
	je	L444
	notl	%eax
	testb	$40, %al
	je	L743
L553:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L444
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L444
L527:
	movl	-48(%ebp), %eax
	movl	_pr_maxlightpriority, %ebx
	xorl	%ecx, %ecx
	movl	$0, -32(%ebp)
	movw	%cx, 248(%eax)
	testl	%ebx, %ebx
	jle	L532
	.p2align 4
	.p2align 3
L536:
	movl	_depth, %eax
	testl	%eax, %eax
	je	L543
	movl	_mirrors-8(,%eax,8), %edx
	testl	%edx, %edx
	je	L544
L543:
	movl	_lightcount, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	testl	%eax, %eax
	jg	L724
	jmp	L541
	.p2align 5
	.p2align 4,,10
	.p2align 3
L537:
	addl	$1, %esi
L724:
	imull	$270, %esi, %eax
	testb	$1, _prlights+254(%eax)
	je	L537
	imull	$270, %esi, %edx
	movzbl	_prlights+31(%edx), %eax
	cmpl	-32(%ebp), %eax
	je	L744
L538:
	addl	$1, %esi
	addl	$1, %edi
	cmpl	%edi, _lightcount
	jg	L724
L541:
	addl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, _pr_maxlightpriority
	jg	L536
	jmp	L532
	.p2align 4,,10
	.p2align 3
L744:
	movl	_prlights+16(%edx), %eax
	movl	_prlights+8(%edx), %ebx
	movl	_prlights+4(%edx), %ecx
	addl	$255, %eax
	movl	%eax, -40(%ebp)
	movl	-36(%ebp), %eax
	subl	8(%eax), %ebx
	subl	4(%eax), %ecx
	movl	_prlights(%edx), %eax
	movl	-36(%ebp), %edx
	subl	(%edx), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -28(%ebp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -24(%ebp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -20(%ebp)
	cmpl	%ecx, %edx
	jge	L539
	leal	-24(%ebp), %ebx
	leal	-28(%ebp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L539:
	cmpl	%eax, %edx
	jge	L540
	leal	-28(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %edx
L540:
	addl	-24(%ebp), %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarl	$4, %eax
	subl	%eax, %edx
	movl	%ecx, %eax
	sarl	$3, %ecx
	sarl	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	cmpl	%eax, -40(%ebp)
	jl	L538
	imull	$270, %esi, %ecx
	movl	-48(%ebp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	addl	$_prlights, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L538
	movzwl	248(%ebx), %eax
	leal	1(%eax), %edx
	movw	%dx, 248(%ebx)
	movw	%si, 184(%ebx,%eax,2)
	jmp	L538
L461:
	andl	$8, %edx
	je	L462
	movl	-36(%ebp), %edi
	movzwl	28(%edi), %edx
	leal	512(%edx), %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movzwl	_sintable(%eax,%eax), %eax
	sarw	$13, %ax
	cwtl
	subl	%eax, (%edi)
	movzwl	_sintable(%edx,%edx), %eax
	sarw	$13, %ax
	cwtl
	subl	%eax, 4(%edi)
	jmp	L462
L560:
	xorl	%eax, %eax
	jmp	L453
L544:
	movl	-36(%ebp), %edi
	movzwl	12(%edi), %edx
	testb	$64, %dl
	jne	L556
L555:
	movl	_mirrors-8(,%eax,8), %ebx
	testl	%ebx, %ebx
	jne	L549
	jmp	L550
L731:
	movl	%edx, %eax
	call	_animateoffs
	movl	-36(%ebp), %edi
	addl	%esi, %eax
	movw	%ax, 14(%edi)
	jmp	L451
L732:
	movsbl	16(%edi), %eax
	jmp	L453
L740:
	notl	%edx
	andl	$40, %edx
	je	L745
L547:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L546
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L546
L475:
	testb	$2, %ah
	movl	-32(%ebp), %eax
	je	L477
	movss	LC26, %xmm0
	movb	$85, 147(%eax)
	jmp	L476
	.p2align 4,,10
	.p2align 3
L739:
	movswl	%bx, %edx
	movl	%edi, %eax
	call	_polymer_addplanelight.lto_priv.0
	jmp	L522
L526:
	movss	LC36, %xmm0
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movl	_prsectors(,%eax,4), %eax
	addss	520(%eax), %xmm0
	movss	%xmm0, 520(%eax)
	movl	_depth, %eax
	testl	%eax, %eax
	je	L533
	movl	_mirrors-8(,%eax,8), %esi
	testl	%esi, %esi
	je	L544
L533:
	movl	-36(%ebp), %edi
	movl	_globalposz, %ebx
	movl	_globalposy, %ecx
	movl	_globalposx, %eax
	movl	_glad_glPolygonOffset, %esi
	subl	8(%edi), %ebx
	subl	4(%edi), %ecx
	subl	(%edi), %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -28(%ebp)
	movl	%eax, %edx
	movl	%ecx, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -24(%ebp)
	movl	%eax, %ecx
	movl	%ebx, %eax
	sarl	$4, %eax
/APP
 # 125 "source/build/include/common.h" 1
	testl %eax, %eax; jns 0f; negl %eax; 0:
 # 0 "" 2
/NO_APP
	movl	%eax, -20(%ebp)
	cmpl	%ecx, %edx
	jge	L534
	leal	-28(%ebp), %eax
	leal	-24(%ebp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L534:
	cmpl	%eax, %edx
	jge	L535
	leal	-28(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L535:
	addl	-24(%ebp), %eax
	movl	%edx, %ebx
	xorps	%xmm1, %xmm1
	movl	$0xc2800000, 4(%esp)
	movl	%eax, %ecx
	sarl	$4, %ebx
	movl	%edx, %eax
	movl	%ecx, %edx
	subl	%ebx, %eax
	sarl	$3, %ecx
	sarl	$2, %edx
	addl	%edx, %eax
	movl	$2048, %edx
	addl	%ecx, %eax
	sarl	$5, %eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	jmp	L725
L742:
	movl	$32823, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L552
	movl	$32823, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L552
L741:
	movl	$32823, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L550
	movl	$32823, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L550
L733:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L464
	movl	%ebx, 16(%esp)
	movl	$LC29, 12(%esp)
	movl	$3924, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L464
L576:
	movzbl	-109(%ebp), %ebx
	cmpb	%bl, -83(%ebp)
	je	L746
	xorl	%eax, %eax
	cmpb	$0, -84(%ebp)
	je	L515
	movl	-32(%ebp), %ecx
L514:
	movl	(%ecx), %edx
	addl	%eax, %edx
	movss	12(%edx), %xmm0
	subss	LC1, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 12(%edx)
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	16(%edx), %xmm0
	subss	LC1, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 16(%edx)
	cmpl	$96, %eax
	jne	L514
	jmp	L510
L515:
	movl	-32(%ebp), %ecx
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	12(%edx), %xmm0
	subss	LC1, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 12(%edx)
	cmpl	$96, %eax
	jne	L515
	jmp	L510
L481:
	movzwl	_h_xsize(%edi,%edi), %eax
	testw	%ax, %ax
	je	L483
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movsbl	_h_yoffs(%edi), %edx
	cvtsi2ssl	%eax, %xmm2
	movzwl	_h_ysize(%edi,%edi), %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	cvttss2sil	%xmm3, %eax
	movl	%eax, -48(%ebp)
	cvttss2sil	%xmm2, %eax
	movl	%eax, -60(%ebp)
	movsbl	_h_xoffs(%edi), %eax
	jmp	L484
L479:
	movss	LC31, %xmm2
	mulss	%xmm2, %xmm0
	jmp	L480
L738:
	movl	8(%edi), %edx
	testb	$48, -40(%ebp)
	jne	L747
	testl	%edx, %edx
	je	L463
	movl	-32(%ebp), %edi
	movl	$1, (%esp)
	leal	8(%edi), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 8(%edi)
	jmp	L463
L735:
	leal	8(%ebx), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenBuffers
	movl	8(%ebx), %edx
	movl	$34962, %eax
	subl	$8, %esp
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$96, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	subl	$16, %esp
	testb	$48, 12(%esi)
	jne	L474
	jmp	L473
	.p2align 4,,10
	.p2align 3
L737:
	movl	%edx, %ecx
	orl	$16, %ecx
	movw	%cx, 12(%esi)
	movl	_viewangle, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%ecx,%eax), %ecx
	testl	%ecx, %ecx
	leal	65535(%ecx), %eax
	cmovns	%ecx, %eax
	sarl	$16, %eax
	addw	$1024, %ax
	andw	$2047, %ax
	testw	%bx, %bx
	cmove	-68(%ebp), %edi
	andl	$32, %edx
	movw	%ax, 28(%esi)
	jne	L494
L495:
	movswl	30(%esi), %eax
	cmpl	$16383, %eax
	ja	L566
	sall	$4, %eax
	movzwl	_ornament+12(%eax), %edx
	addl	$_ornament, %eax
	movl	%eax, -64(%ebp)
L498:
	movw	%dx, -28(%ebp)
	movzbl	20(%esi), %eax
	movl	-64(%ebp), %ebx
	movb	%al, -120(%ebp)
	movzwl	28(%esi), %eax
	movl	%eax, %edx
	addl	$1536, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movzwl	_sintable(%edx,%edx), %ecx
	movzwl	_sintable(%eax,%eax), %eax
	leal	-28(%ebp), %edx
	movw	%cx, -112(%ebp)
	movl	%ebx, %ecx
	movw	%ax, -122(%ebp)
	movl	%esi, %eax
	call	__Z30polymost_checkornamentedspriteP11tspritetypePsP16wallspriteinfo_t
	movswl	28(%esi), %eax
	xorps	%xmm0, %xmm0
	addl	$1024, %eax
	andl	$2047, %eax
	cvtsi2ssl	%eax, %xmm0
	movswl	-28(%ebp), %eax
	mulss	LC15, %xmm0
	movss	%xmm0, -116(%ebp)
	cmpw	$-1, %ax
	je	L500
	movl	_wall, %edx
	sall	$5, %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	%ecx, -68(%ebp)
	movswl	8(%eax), %ecx
	movl	4(%eax), %eax
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	%eax, -76(%ebp)
	movl	(%edx), %ecx
	movl	4(%edx), %eax
	movl	%ecx, -72(%ebp)
	movl	%eax, -80(%ebp)
	testl	%ebx, %ebx
	je	L501
	cmpb	$0, 15(%ebx)
	jne	L501
	movl	-76(%ebp), %edx
	movl	-68(%ebp), %ecx
	subl	-80(%ebp), %edx
	subl	-72(%ebp), %ecx
	call	@gethiq16angle@8
	movswl	28(%esi), %ecx
	addl	$100663296, %eax
	andl	$134217727, %eax
	sall	$16, %ecx
	movl	%eax, %edx
	movl	%eax, %ebx
	call	@getq16angledelta@8
	xorps	%xmm1, %xmm1
	movss	LC10, %xmm0
	movss	LC33, %xmm2
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	comiss	%xmm1, %xmm2
	jb	L500
L559:
	movl	-64(%ebp), %eax
	movb	$0, 15(%eax)
L506:
	leal	67108864(%ebx), %eax
	xorps	%xmm1, %xmm1
	andl	$134217727, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	mulss	LC15, %xmm0
	movss	%xmm0, -116(%ebp)
L500:
	movss	-96(%ebp), %xmm6
	movss	%xmm6, 8(%esp)
	movss	-92(%ebp), %xmm7
	movss	%xmm7, 4(%esp)
	movss	-88(%ebp), %xmm3
	movss	%xmm3, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-116(%ebp), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	movl	$0x00000000, 8(%esp)
	movl	-56(%ebp), %eax
	subl	-104(%ebp), %eax
	cvtsi2ssl	%eax, %xmm0
	jmp	L720
L494:
	movl	$0x45800000, 4(%esp)
	movswl	-64(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	movswl	28(%esi), %eax
	xorps	%xmm1, %xmm1
	movss	-96(%ebp), %xmm5
	fstps	-64(%ebp)
	movss	-64(%ebp), %xmm0
	mulss	LC35, %xmm0
	addl	$1024, %eax
	andl	$2047, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC15, %xmm1
	movss	%xmm0, -68(%ebp)
	movss	%xmm1, -64(%ebp)
	movss	%xmm5, 8(%esp)
	movss	-92(%ebp), %xmm6
	movss	%xmm6, 4(%esp)
	movss	-88(%ebp), %xmm7
	movss	%xmm7, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-64(%ebp), %xmm1
	xorps	LC25, %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	-68(%ebp), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-56(%ebp), %xmm0
	subl	$16, %esp
	movl	$0x3f800000, 4(%esp)
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movl	$__ZL11horizsprite, %edi
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-48(%ebp), %xmm0
	subl	$12, %esp
	movl	$0x3f800000, 4(%esp)
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-60(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
	jmp	L497
L566:
	movl	$0, -64(%ebp)
	movl	$-1, %edx
	jmp	L498
L483:
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	leal	0(,%edi,4), %edx
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, -48(%ebp)
	mulss	%xmm0, %xmm2
	cvttss2sil	%xmm2, %eax
	movl	%eax, -60(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %eax
	jmp	L482
L736:
	testb	$48, -40(%ebp)
	jne	L488
	movl	-48(%ebp), %ebx
	movl	-48(%ebp), %edx
	movl	$0, -104(%ebp)
	shrl	$31, %ebx
	addl	%ebx, %edx
	sarl	%edx
	subl	%edx, %ecx
	movl	%ecx, -56(%ebp)
	jmp	L487
L734:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	movl	%eax, -32(%ebp)
	testl	%eax, %eax
	je	L466
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	movl	$0, 252(%eax)
	xorl	%eax, %eax
L467:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L467
	movl	-32(%ebp), %eax
	movl	%eax, _prsprites(,%ebx,4)
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%ebx
	testl	%eax, %eax
	je	L748
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
L471:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L471
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	$4, 4(%ecx)
	movl	$-1, 12(%ecx)
	movl	$-559038737, 252(%ecx)
	jmp	L465
L746:
	cmpb	$0, -84(%ebp)
	je	L510
	xorl	%eax, %eax
L513:
	movl	-32(%ebp), %ecx
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	16(%edx), %xmm0
	subss	LC1, %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 16(%edx)
	cmpl	$96, %eax
	jne	L513
	jmp	L510
L477:
	movss	LC27, %xmm0
	movb	$-86, 147(%eax)
	jmp	L476
L501:
	movl	(%esi), %eax
	movl	-68(%ebp), %ebx
	movss	LC10, %xmm0
	movl	-72(%ebp), %edx
	leal	(%eax,%eax), %ecx
	addl	%ebx, %edx
	cmpl	%edx, %ecx
	je	L503
	movl	4(%esi), %ebx
	movl	-76(%ebp), %edx
	movss	LC10, %xmm0
	addl	-80(%ebp), %edx
	leal	(%ebx,%ebx), %ecx
	movl	%ebx, -100(%ebp)
	cmpl	%edx, %ecx
	je	L503
	movzbl	-120(%ebp), %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	-108(%ebp), %xmm4
	movss	%xmm0, -120(%ebp)
	cvtsi2ssl	%edx, %xmm2
	movswl	-112(%ebp), %edx
	cvtsi2ssl	%edx, %xmm1
	movswl	-122(%ebp), %edx
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	leal	(%ecx,%eax), %ebx
	subl	%ecx, %eax
	movl	-80(%ebp), %ecx
	mulss	%xmm2, %xmm1
	movl	%ebx, -108(%ebp)
	movl	-100(%ebp), %ebx
	movl	%ecx, 16(%esp)
	movl	-72(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-76(%ebp), %ecx
	mulss	%xmm0, %xmm1
	movl	%ecx, 8(%esp)
	movl	-68(%ebp), %ecx
	movl	%ecx, 4(%esp)
	mulss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %edx
	subl	%edx, %ebx
	addl	-100(%ebp), %edx
	movl	%edx, (%esp)
	movl	-108(%ebp), %ecx
	movl	%ebx, %edx
	call	__Z19polymost_lintersectiiiiiiii
	movss	-120(%ebp), %xmm0
	testl	%eax, %eax
	je	L500
L503:
	movl	-76(%ebp), %edx
	movl	-68(%ebp), %ecx
	movss	%xmm0, -100(%ebp)
	subl	-80(%ebp), %edx
	subl	-72(%ebp), %ecx
	call	@gethiq16angle@8
	movswl	28(%esi), %ecx
	addl	$100663296, %eax
	andl	$134217727, %eax
	sall	$16, %ecx
	movl	%eax, %edx
	movl	%eax, %ebx
	call	@getq16angledelta@8
	xorps	%xmm1, %xmm1
	movss	-100(%ebp), %xmm0
	movss	LC33, %xmm2
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	comiss	%xmm1, %xmm2
	jb	L500
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jne	L559
	jmp	L506
L747:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	-32(%ebp), %eax
	movl	(%eax), %eax
	movl	$96, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L519
L743:
	movl	$1028, %eax
	movl	$1029, %edx
	cmpl	$1028, _culledface
	cmove	%edx, %eax
	jmp	L728
L488:
	movl	-48(%ebp), %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	leal	(%ebx,%ecx), %edx
	sarl	%edx
	movl	%edx, -104(%ebp)
	jmp	L487
L570:
	movl	%eax, %edx
	jmp	L530
L745:
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	jmp	L547
L466:
	movl	$256, %eax
	call	__Z13handle_memerri
L748:
	movl	$24, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
LC40:
	.ascii "Skipped wall %i.\0"
LC43:
	.ascii "Updated wall %i.\0"
	.text
	.p2align 4
	.globl	_polymer_updatewall.lto_priv.0
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_updatewall.lto_priv.0:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$100, %esp
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movswl	%ax, %edi
	movswl	_wallsect(%edi,%edi), %eax
	cmpl	$2, _pr_nullrender
	jg	L749
	testl	%eax, %eax
	js	L749
	movzwl	_numsectors, %edx
	cmpw	%dx, %ax
	jge	L749
	movl	%ebx, -12(%ebp)
	testw	%di, %di
	.cfi_offset 3, -20
	js	L980
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movzwl	_numwalls, %esi
	movw	%si, -28(%ebp)
	cmpw	%di, %si
	jl	L987
	movl	_sector, %ecx
	leal	(%eax,%eax,4), %esi
	leal	(%ecx,%esi,8), %esi
	movl	%ecx, -36(%ebp)
	movl	%esi, -20(%ebp)
	movl	%esi, %ecx
	movswl	(%esi), %esi
	cmpw	%si, %di
	jl	L987
	movswl	2(%ecx), %ebx
	addl	%esi, %ebx
	cmpl	%ebx, %edi
	jge	L987
	movl	4(%ecx), %esi
	cmpl	%esi, 8(%ecx)
	je	L998
	movl	%edi, %esi
	movl	_prsectors(,%eax,4), %eax
	movl	_prwalls(,%edi,4), %ebx
	sall	$5, %esi
	movl	%esi, -48(%ebp)
	addl	_wall, %esi
	movl	%eax, -24(%ebp)
	movzwl	10(%esi), %ecx
	movl	564(%eax), %eax
	movl	%esi, -16(%ebp)
	movw	%cx, -32(%ebp)
	movl	%eax, -52(%ebp)
	testw	%cx, %cx
	js	L755
	cmpw	%cx, -28(%ebp)
	jg	L752
L755:
	movl	$0, -40(%ebp)
	movl	$0, -28(%ebp)
L754:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L999
L756:
	movl	-16(%ebp), %esi
	leal	16384(%edi), %ecx
	movzwl	14(%esi), %eax
	movl	%eax, _globalorientation
	movl	%eax, %edx
	movswl	16(%esi), %eax
	movw	%ax, -36(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1000
L760:
	movl	-16(%ebp), %eax
	movswl	18(%eax), %eax
	movw	%ax, -44(%ebp)
	andl	$16384, %ecx
	je	L997
	andb	$16, %dh
	je	L768
	movswl	-36(%ebp), %eax
	movzwl	_rottile(,%eax,4), %edx
	cmpw	$-1, %dx
	je	L769
	movswl	-44(%ebp), %eax
	movw	%dx, -36(%ebp)
	testw	%ax, %ax
	js	L762
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L765
L766:
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	-44(%ebp), %ax
	movw	%ax, -44(%ebp)
	.p2align 4
	.p2align 3
L762:
	movzwl	-32(%ebp), %eax
	testw	%ax, %ax
	js	L770
	xorl	%esi, %esi
	movw	%si, -56(%ebp)
	cmpw	%ax, _numwalls
	jle	L771
	movl	_wall, %esi
	movl	-48(%ebp), %edx
	movzwl	14(%esi,%edx), %eax
	movl	%eax, _globalorientation
	movl	%eax, %edx
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	movswl	16(%esi,%eax), %eax
	movw	%ax, -56(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L1001
L772:
	testl	%ecx, %ecx
	je	L771
	andb	$16, %dh
	je	L771
	movswl	-56(%ebp), %eax
	movl	%eax, %esi
	movzwl	_rottile(,%eax,4), %eax
	cmpw	$-1, %ax
	cmove	%esi, %eax
	movw	%ax, -56(%ebp)
	.p2align 4
	.p2align 3
L771:
	testb	$5, 796(%ebx)
	je	L863
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
L776:
	movswl	-32(%ebp), %eax
	cmpw	%ax, _numwalls
	jle	L777
	movzwl	-56(%ebp), %esi
	sall	$5, %eax
	addl	_wall, %eax
	movw	%si, 776(%ebx)
	movzbl	24(%eax), %edx
	movb	%dl, 780(%ebx)
	movzbl	25(%eax), %edx
	movb	%dl, 781(%ebx)
	movzwl	14(%eax), %edx
	movw	%dx, 778(%ebx)
	movzbl	20(%eax), %eax
	movb	%al, 782(%ebx)
L777:
	movl	-16(%ebp), %esi
	movb	$0, 788(%ebx)
	movzwl	14(%esi), %eax
	movw	%ax, -52(%ebp)
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	movl	-20(%ebp), %eax
	movswl	(%eax), %ecx
	movl	%edi, %eax
	movl	%edx, -72(%ebp)
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movswl	12(%esi), %edx
	movl	%edx, %esi
	movswl	_numsectors, %edx
	cmpl	%edx, %esi
	jnb	L779
	movl	-40(%ebp), %esi
	testl	%esi, %esi
	je	L779
	movl	4(%esi), %esi
	movswl	-32(%ebp), %edx
	movl	%esi, -32(%ebp)
	movl	_wall, %esi
	movl	%edx, -60(%ebp)
	sall	$5, %edx
	movswl	8(%esi,%edx), %esi
	movl	%edx, -64(%ebp)
	movl	-28(%ebp), %edx
	movl	%esi, -68(%ebp)
	movswl	(%edx), %edx
	subl	%edx, %esi
	movl	%edx, -76(%ebp)
	leal	(%esi,%esi,2), %edx
	movl	-32(%ebp), %esi
	leal	(%esi,%edx,8), %edx
	movss	4(%edx), %xmm0
	comiss	4(%eax), %xmm0
	jbe	L1002
	movl	(%eax), %ecx
	movl	(%ebx), %edx
	movb	$1, -76(%ebp)
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
L802:
	movl	(%ebx), %eax
	movl	-20(%ebp), %esi
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	(%esi), %ecx
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	4(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%ebx), %ecx
	movl	(%eax), %esi
	movl	%esi, 24(%ecx)
	movl	4(%eax), %ecx
	movl	-28(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %edx
	movl	(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	addl	$48, %eax
	movl	4(%edx), %edx
	movl	%eax, -32(%ebp)
	leal	(%edx,%ecx,8), %ecx
	movl	(%ebx), %edx
	movl	(%ecx), %eax
	movl	%eax, 48(%edx)
	movl	-32(%ebp), %eax
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	-68(%ebp), %ecx
	movl	%edx, 8(%eax)
	movswl	(%esi), %edx
	movl	(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	4(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 72(%eax)
	movl	4(%ecx), %edx
	movl	%edx, 76(%eax)
	movl	8(%ecx), %edx
	movzwl	-56(%ebp), %ecx
	movl	%edx, 80(%eax)
	movl	-16(%ebp), %eax
	testb	$2, 14(%eax)
	movl	-48(%ebp), %eax
	cmovne	-64(%ebp), %eax
	cmove	-36(%ebp), %cx
	movl	%eax, -48(%ebp)
	addl	_wall, %eax
	movzbl	24(%eax), %edx
	movb	%dl, -80(%ebp)
	movzbl	25(%eax), %edx
	movb	%dl, -72(%ebp)
	movswl	%cx, %edx
	movzbl	21(%eax), %ecx
	movl	%edx, -32(%ebp)
	movl	-20(%ebp), %edx
	movl	$0, 8(%esp)
	movsbl	32(%edx), %edx
	movl	%edx, 4(%esp)
	movsbl	20(%eax), %eax
	movl	-32(%ebp), %edx
	movl	%eax, (%esp)
	leal	72(%ebx), %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	_wall, %edx
	movl	%eax, 16(%ebx)
	movl	-48(%ebp), %eax
	movl	%edx, -56(%ebp)
	movzwl	14(%edx,%eax), %eax
	andw	$4, %ax
	jne	L804
	movl	-28(%ebp), %esi
	movl	8(%esi), %esi
L805:
	xorps	%xmm5, %xmm5
	cmpb	$0, -72(%ebp)
	jne	L1003
L806:
	movzbl	-80(%ebp), %eax
	xorps	%xmm1, %xmm1
	xorps	%xmm6, %xmm6
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	cvtsi2ssl	%esi, %xmm6
	movl	%edi, -72(%ebp)
	movss	LC25, %xmm3
	movss	LC42, %xmm2
	cvtsi2ssl	%eax, %xmm1
	movl	-16(%ebp), %esi
	movss	%xmm1, -48(%ebp)
	je	L807
L813:
	movl	$9, %eax
	xorps	%xmm4, %xmm4
	btl	%edx, %eax
	jnc	L808
	movss	LC39, %xmm4
L808:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	mulss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	addss	-48(%ebp), %xmm0
	divss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC41, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm4
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm4
	addss	%xmm6, %xmm0
	xorps	%xmm3, %xmm0
	divss	%xmm7, %xmm4
	divss	%xmm4, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, 16(%ecx)
	movzwl	14(%esi), %ecx
	testb	$2, %cl
	je	L809
	movl	-56(%ebp), %edi
	movl	-64(%ebp), %ecx
	testb	$1, 15(%edi,%ecx)
	je	L811
L812:
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L811:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L813
L989:
	movl	%esi, -16(%ebp)
	movl	-72(%ebp), %edi
	cmpb	$0, -76(%ebp)
	je	L819
	orb	$1, 788(%ebx)
L819:
	movl	(%ebx), %edx
	movl	504(%ebx), %eax
	leal	72(%edx), %ecx
	movl	72(%edx), %edx
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	12(%ecx), %edx
	movl	%edx, 12(%eax)
	movl	16(%ecx), %edx
	movl	%edx, 16(%eax)
	movl	(%ebx), %ecx
	movl	504(%ebx), %eax
	leal	48(%ecx), %edx
	movl	48(%ecx), %ecx
L990:
	movl	%ecx, 24(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 28(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	16(%edx), %edx
	movl	%edx, 40(%eax)
	movl	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	256(%eax), %esi
	movl	-20(%ebp), %eax
	movl	256(%edx), %edx
	movswl	(%eax), %eax
	movl	%edx, -32(%ebp)
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	movl	-68(%ebp), %eax
	movswl	(%edx), %edx
	subl	%edx, %eax
	movl	%edx, -48(%ebp)
	movl	-32(%ebp), %edx
	leal	(%eax,%eax,2), %eax
	leal	(%edx,%eax,8), %eax
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %edx
	movss	4(%esi,%edx,8), %xmm0
	comiss	4(%eax), %xmm0
	ja	L820
	movl	-16(%ebp), %edx
	movswl	8(%edx), %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %edx
	leal	(%esi,%edx,8), %ecx
	movl	-60(%ebp), %edx
	movl	-32(%ebp), %esi
	subl	-48(%ebp), %edx
	movss	4(%ecx), %xmm0
	leal	(%edx,%edx,2), %edx
	comiss	4(%esi,%edx,8), %xmm0
	ja	L820
	movl	-16(%ebp), %esi
	movb	$0, -48(%ebp)
	testb	$48, 14(%esi)
	je	L1004
	.p2align 4
	.p2align 3
L821:
	movl	252(%ebx), %edx
	testl	%edx, %edx
	je	L1005
L822:
	movl	(%eax), %ecx
	movl	-28(%ebp), %esi
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-60(%ebp), %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %edx
	movl	252(%ebx), %eax
	subl	%edx, %ecx
	movl	-40(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 24(%eax)
	movl	4(%ecx), %edx
	movl	-20(%ebp), %esi
	movl	%edx, 28(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 32(%eax)
	movl	-16(%ebp), %eax
	movswl	(%esi), %edx
	movl	-24(%ebp), %esi
	movswl	8(%eax), %eax
	subl	%edx, %eax
	leal	(%eax,%eax,2), %edx
	movl	256(%esi), %eax
	movl	-28(%ebp), %esi
	leal	(%eax,%edx,8), %edx
	movswl	(%esi), %ecx
	movl	-60(%ebp), %eax
	movss	4(%edx), %xmm0
	movl	252(%ebx), %esi
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %ecx
	movl	-40(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%ecx,8), %eax
	leal	48(%esi), %ecx
	comiss	4(%eax), %xmm0
	jbe	L976
	movl	(%edx), %eax
	movl	%eax, 48(%esi)
	movl	4(%edx), %eax
	movl	%eax, 4(%ecx)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
L826:
	movl	-20(%ebp), %esi
	movl	%edi, %ecx
	movl	252(%ebx), %eax
	movswl	(%esi), %edx
	addl	$72, %eax
	movl	%eax, -32(%ebp)
	subl	%edx, %ecx
	movl	-24(%ebp), %edx
	leal	(%ecx,%ecx,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	252(%ebx), %edx
	movl	(%ecx), %eax
	movl	%eax, 72(%edx)
	movl	-32(%ebp), %eax
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movl	-16(%ebp), %eax
	movzbl	21(%eax), %ecx
	movswl	-36(%ebp), %eax
	movl	$0, 8(%esp)
	movsbl	32(%esi), %edx
	movl	-16(%ebp), %esi
	movl	%eax, -32(%ebp)
	leal	324(%ebx), %eax
	movl	%edx, 4(%esp)
	movsbl	20(%esi), %edx
	movl	%edx, (%esp)
	movl	-32(%ebp), %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 268(%ebx)
	movzwl	14(%esi), %eax
	movl	%eax, %edx
	andw	$48, %dx
	jne	L1006
L827:
	andw	$4, %ax
	je	L829
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
L830:
	movl	-16(%ebp), %edx
	xorps	%xmm4, %xmm4
	movzbl	25(%edx), %edx
	testb	%dl, %dl
	jne	L1007
L831:
	xorps	%xmm5, %xmm5
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -36(%ebp)
	movss	LC41, %xmm1
	cvtsi2ssl	%esi, %xmm5
	movl	-16(%ebp), %esi
	movss	LC25, %xmm3
	movss	LC42, %xmm2
	je	L832
L835:
	movl	$9, %eax
	xorps	%xmm6, %xmm6
	btl	%edx, %eax
	jnc	L833
	movss	LC39, %xmm6
L833:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	252(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	252(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L834
	addl	252(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L834:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L835
L991:
	movl	%esi, -16(%ebp)
	movl	-36(%ebp), %edi
	cmpb	$0, -48(%ebp)
	je	L839
	orb	$2, 788(%ebx)
L839:
	movl	252(%ebx), %ecx
	movl	504(%ebx), %eax
	leal	24(%ecx), %edx
	movl	24(%ecx), %ecx
	movl	%ecx, 48(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 60(%eax)
	movl	16(%edx), %edx
	movl	%edx, 64(%eax)
	movl	252(%ebx), %eax
	movl	504(%ebx), %ecx
	movl	(%eax), %esi
	leal	72(%ecx), %edx
	movl	%esi, 72(%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movl	-16(%ebp), %eax
	movzwl	14(%eax), %eax
	testb	$16, %al
	jne	L840
	testb	$32, %al
	je	L799
	andl	$4, %eax
	movl	%eax, %edx
L841:
	movl	-20(%ebp), %eax
	leal	4(%eax), %ecx
	movl	-28(%ebp), %eax
	addl	$4, %eax
	testw	%dx, %dx
	cmovne	%ecx, %eax
	movl	(%eax), %ecx
L845:
	movl	-16(%ebp), %eax
	movswl	-44(%ebp), %esi
	xorps	%xmm4, %xmm4
	movzbl	25(%eax), %eax
	movl	%esi, -28(%ebp)
	testb	%al, %al
	jne	L1008
L847:
	xorps	%xmm5, %xmm5
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -32(%ebp)
	cvtsi2ssl	%ecx, %xmm5
	movl	-16(%ebp), %esi
	je	L850
L853:
	movl	$9, %eax
	xorps	%xmm6, %xmm6
	btl	%edx, %eax
	jnc	L851
	movss	LC39, %xmm6
L851:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	504(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-28(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-28(%ebp), %edi
	movl	504(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L852
	addl	504(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L852:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L853
L992:
	movl	%esi, -16(%ebp)
	movl	-32(%ebp), %edi
L799:
	movl	-16(%ebp), %eax
	cmpw	$0, 12(%eax)
	js	L1009
L856:
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	756(%ebx), %eax
	movswl	(%edx), %ecx
	movl	%edi, %edx
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	4(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %edx
	movl	-20(%ebp), %ecx
	movl	%edx, 8(%eax)
	movl	756(%ebx), %eax
	movswl	(%ecx), %ecx
	leal	20(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	4(%esi), %ecx
	leal	(%eax,%eax,2), %eax
	leal	(%ecx,%eax,8), %eax
	movl	756(%ebx), %ecx
	movl	(%eax), %esi
	movl	%esi, 20(%ecx)
	movl	4(%eax), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%eax, 8(%edx)
	movl	-16(%ebp), %eax
	movswl	(%esi), %esi
	movl	756(%ebx), %ecx
	movswl	8(%eax), %eax
	leal	40(%ecx), %edx
	subl	%esi, %eax
	leal	(%eax,%eax,2), %esi
	movl	-24(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%esi,8), %eax
	movl	(%eax), %esi
	movl	%esi, 40(%ecx)
	movl	4(%eax), %ecx
	movl	-20(%ebp), %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	%edi, %ecx
	movl	%eax, 8(%edx)
	movswl	(%esi), %esi
	movl	756(%ebx), %edx
	subl	%esi, %ecx
	movl	-24(%ebp), %esi
	leal	(%ecx,%ecx,2), %ecx
	leal	60(%edx), %eax
	movl	256(%esi), %esi
	leal	(%esi,%ecx,8), %ecx
	movl	(%ecx), %esi
	movl	%esi, 60(%edx)
	movl	4(%ecx), %edx
	movl	%edx, 4(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 8(%eax)
	movzbl	788(%ebx), %esi
	testl	$1, %esi
	jne	L1010
L859:
	andl	$2, %esi
	jne	L1011
L860:
	leal	504(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	cmpl	$1, _pr_nullrender
	jle	L1012
L861:
	movzbl	796(%ebx), %eax
	andl	$-8, %eax
	orl	$2, %eax
	movb	%al, 796(%ebx)
	cmpl	$2, _pr_verbosity
	jle	L987
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L987
	movl	%edi, 16(%esp)
	movl	$LC43, 12(%esp)
	movl	$3637, 8(%esp)
L993:
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
L749:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L987:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L980:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L807:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movss	LC39, %xmm4
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L815
	xorps	%xmm4, %xmm4
L815:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	mulss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%ecx, %xmm4
	addss	-48(%ebp), %xmm0
	divss	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC41, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm4
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm4
	addss	%xmm6, %xmm0
	xorps	%xmm3, %xmm0
	divss	%xmm7, %xmm4
	divss	%xmm4, %xmm0
	addss	%xmm5, %xmm0
	movss	%xmm0, 16(%ecx)
	movzwl	14(%esi), %ecx
	testb	$2, %cl
	je	L1013
	movl	-56(%ebp), %edi
	movl	-64(%ebp), %ecx
	testb	$1, 15(%edi,%ecx)
	je	L818
L817:
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L818:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L807
	jmp	L989
	.p2align 4,,10
	.p2align 3
L832:
	movss	LC39, %xmm6
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L837
	xorps	%xmm6, %xmm6
L837:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	252(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-32(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-32(%ebp), %edi
	movl	252(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L838
	addl	252(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L838:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L832
	jmp	L991
	.p2align 4,,10
	.p2align 3
L850:
	movss	LC39, %xmm6
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L854
	xorps	%xmm6, %xmm6
L854:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	504(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm7, %xmm7
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	movl	-28(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm6
	divss	%xmm6, %xmm0
	xorps	%xmm6, %xmm6
	movss	%xmm0, 12(%edi,%eax)
	movl	-28(%ebp), %edi
	movl	504(%ebx), %ecx
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	movss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm6
	movzbl	23(%esi), %edi
	mulss	%xmm1, %xmm0
	cvtsi2ssl	%edi, %xmm7
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm0
	divss	%xmm7, %xmm6
	xorps	%xmm3, %xmm0
	divss	%xmm6, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L855
	addl	504(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	%xmm3, %xmm0
	movss	%xmm0, 16(%eax)
L855:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L850
	jmp	L992
	.p2align 4,,10
	.p2align 3
L768:
	movswl	-44(%ebp), %eax
L997:
	testw	%ax, %ax
	js	L762
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L762
	movl	%ecx, -56(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %ecx
	addw	%ax, -44(%ebp)
	jmp	L762
	.p2align 4,,10
	.p2align 3
L779:
	movl	(%eax), %ecx
	movl	(%ebx), %edx
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %ecx
	movl	(%ebx), %esi
	leal	24(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	4(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%eax), %ecx
	movl	%ecx, 24(%esi)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %ecx
	movl	(%ebx), %esi
	leal	48(%eax), %edx
	movl	-16(%ebp), %eax
	movswl	8(%eax), %eax
	subl	%ecx, %eax
	movl	-24(%ebp), %ecx
	leal	(%eax,%eax,2), %eax
	movl	256(%ecx), %ecx
	leal	(%ecx,%eax,8), %eax
	movl	(%eax), %ecx
	movl	%ecx, 48(%esi)
	movl	4(%eax), %ecx
	movl	%edi, %esi
	movl	%ecx, 4(%edx)
	movl	8(%eax), %eax
	movl	-20(%ebp), %ecx
	movl	%eax, 8(%edx)
	movl	(%ebx), %eax
	movswl	(%ecx), %edx
	subl	%edx, %esi
	movl	-24(%ebp), %edx
	leal	(%esi,%esi,2), %ecx
	movl	256(%edx), %edx
	leal	(%edx,%ecx,8), %ecx
	movl	(%ecx), %edx
	movl	%edx, 72(%eax)
	movl	4(%ecx), %edx
	movl	%edx, 76(%eax)
	movl	8(%ecx), %edx
	movl	%edx, 80(%eax)
	movl	-16(%ebp), %edx
	movzwl	-36(%ebp), %eax
	movzbl	21(%edx), %ecx
	cmpw	$0, 12(%edx)
	movl	$0, 8(%esp)
	movl	-20(%ebp), %edx
	cmovns	-44(%ebp), %ax
	movsbl	32(%edx), %edx
	movswl	%ax, %esi
	leal	72(%ebx), %eax
	movl	%esi, -36(%ebp)
	movl	%edx, 4(%esp)
	movl	-16(%ebp), %edx
	movsbl	20(%edx), %edx
	movl	%edx, (%esp)
	movl	%esi, %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	-16(%ebp), %edx
	movl	%eax, 16(%ebx)
	movzwl	14(%edx), %eax
	movl	%eax, %ecx
	andw	$4, %cx
	je	L783
	movl	-20(%ebp), %edx
	movl	8(%edx), %esi
L784:
	testb	$32, %al
	je	L786
	movl	-16(%ebp), %edx
	cmpw	$0, 12(%edx)
	js	L786
	testb	$2, %al
	je	L1014
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	testb	$4, 14(%eax)
	je	L790
L789:
	movl	-20(%ebp), %eax
	movl	4(%eax), %esi
	.p2align 4
	.p2align 3
L786:
	movl	-16(%ebp), %eax
	xorps	%xmm3, %xmm3
	movzbl	25(%eax), %eax
	testb	%al, %al
	jne	L1015
L791:
	xorps	%xmm4, %xmm4
	xorl	%edx, %edx
	testb	$8, -52(%ebp)
	movl	%edi, -28(%ebp)
	movss	LC42, %xmm2
	cvtsi2ssl	%esi, %xmm4
	movl	-16(%ebp), %esi
	je	L792
L795:
	movl	$9, %eax
	xorps	%xmm5, %xmm5
	btl	%edx, %eax
	jnc	L793
	movss	LC39, %xmm5
L793:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	movl	-36(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	divss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	movss	%xmm0, 12(%edi,%eax)
	movl	-36(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC41, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm5
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm6
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm0
	xorps	LC25, %xmm0
	divss	%xmm6, %xmm5
	divss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L794
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 16(%eax)
L794:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L795
L988:
	orb	$1, 788(%ebx)
	movl	-28(%ebp), %edi
	movl	%esi, -16(%ebp)
	jmp	L799
	.p2align 4,,10
	.p2align 3
L792:
	movss	LC39, %xmm5
	movl	$9, %eax
	btl	%edx, %eax
	jnc	L797
	xorps	%xmm5, %xmm5
L797:
	movzbl	22(%esi), %ecx
	xorps	%xmm0, %xmm0
	movl	(%ebx), %edi
	leal	(%edx,%edx,2), %eax
	sall	$3, %eax
	xorps	%xmm6, %xmm6
	cvtsi2ssl	%ecx, %xmm0
	movzbl	24(%esi), %ecx
	mulss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	movl	-36(%ebp), %ecx
	movswl	_tilesiz(,%ecx,4), %ecx
	addss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ecx, %xmm5
	divss	%xmm5, %xmm0
	xorps	%xmm5, %xmm5
	movss	%xmm0, 12(%edi,%eax)
	movl	-36(%ebp), %edi
	movl	(%ebx), %ecx
	movss	LC41, %xmm0
	movswl	_tilesiz+2(,%edi,4), %edi
	addl	%eax, %ecx
	mulss	4(%ecx), %xmm0
	cvtsi2ssl	%edi, %xmm5
	movzbl	23(%esi), %edi
	cvtsi2ssl	%edi, %xmm6
	mulss	%xmm2, %xmm5
	addss	%xmm4, %xmm0
	xorps	LC25, %xmm0
	divss	%xmm6, %xmm5
	divss	%xmm5, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, 16(%ecx)
	testb	$1, 15(%esi)
	je	L798
	addl	(%ebx), %eax
	movss	16(%eax), %xmm0
	xorps	LC25, %xmm0
	movss	%xmm0, 16(%eax)
L798:
	addl	$1, %edx
	cmpl	$4, %edx
	jne	L792
	jmp	L988
	.p2align 4,,10
	.p2align 3
L1013:
	andb	$1, %ch
	jne	L817
	jmp	L818
	.p2align 4,,10
	.p2align 3
L809:
	andb	$1, %ch
	jne	L812
	jmp	L811
	.p2align 4,,10
	.p2align 3
L770:
	testb	$5, 796(%ebx)
	je	L1016
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
	xorl	%eax, %eax
	movw	%ax, -56(%ebp)
	jmp	L777
	.p2align 4,,10
	.p2align 3
L820:
	movb	$1, -48(%ebp)
	jmp	L821
L1016:
	xorl	%edx, %edx
	movw	%dx, -56(%ebp)
L863:
	movl	-52(%ebp), %eax
	cmpl	%eax, 792(%ebx)
	je	L1017
L774:
	movl	-16(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	%eax, 792(%ebx)
	movl	14(%edx), %eax
	movl	%eax, 764(%ebx)
	movl	18(%edx), %eax
	movl	%eax, 768(%ebx)
	movl	22(%edx), %eax
	movl	%eax, 772(%ebx)
	movzwl	-36(%ebp), %eax
	movw	%ax, 784(%ebx)
	movzwl	-44(%ebp), %eax
	movw	%ax, 786(%ebx)
	movl	_wallchanged(,%edi,4), %eax
	movl	%eax, 800(%ebx)
	cmpw	$0, -32(%ebp)
	jns	L776
	jmp	L777
	.p2align 4,,10
	.p2align 3
L1000:
	movl	%edx, -56(%ebp)
	movl	%ecx, -44(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %edx
	addw	%ax, -36(%ebp)
	movl	-44(%ebp), %ecx
	jmp	L760
	.p2align 4,,10
	.p2align 3
L1011:
	leal	252(%ebx), %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L860
	.p2align 4,,10
	.p2align 3
L1010:
	movl	%ebx, %eax
	call	_polymer_computeplane.lto_priv.0
	jmp	L859
	.p2align 4,,10
	.p2align 3
L752:
	movl	-16(%ebp), %eax
	movswl	12(%eax), %eax
	testw	%ax, %ax
	js	L755
	cmpw	%ax, %dx
	jle	L755
	movl	_prsectors(,%eax,4), %esi
	leal	(%eax,%eax,4), %eax
	movl	%esi, -40(%ebp)
	movl	564(%esi), %esi
	addl	%esi, -52(%ebp)
	movl	-36(%ebp), %esi
	leal	(%esi,%eax,8), %eax
	movl	%eax, -28(%ebp)
	jmp	L754
	.p2align 4,,10
	.p2align 3
L998:
	cmpl	$1, _pr_verbosity
	jle	L987
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L987
	movl	%edi, 16(%esp)
	movl	$LC40, 12(%esp)
	movl	$3250, 8(%esp)
	jmp	L993
	.p2align 4,,10
	.p2align 3
L783:
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L784
	.p2align 4,,10
	.p2align 3
L1012:
	leal	(%edi,%edi,8), %eax
	sall	$5, %eax
	addl	_prwalldataoffset, %eax
	movl	%eax, %esi
	leal	96(%eax), %eax
	leal	192(%esi), %edx
	movl	%eax, -20(%ebp)
	movl	$34962, %eax
	movl	%edx, -16(%ebp)
	movl	_prmapvbo, %edx
	call	__Z18buildgl_bindBufferjj
	movl	(%ebx), %eax
	movl	$96, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	252(%ebx), %eax
	testl	%eax, %eax
	je	L862
	movl	%eax, 12(%esp)
	movl	-20(%ebp), %eax
	movl	$96, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	subl	$16, %esp
L862:
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	movl	504(%ebx), %eax
	movl	$96, 8(%esp)
	movl	$34962, (%esp)
	movl	%eax, 12(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferSubData
	movl	760(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj
	movl	756(%ebx), %eax
	movl	$80, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 12(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferSubData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$-1431655765, %ecx
	movl	%esi, %eax
	mull	%ecx
	movl	-20(%ebp), %eax
	shrl	$4, %edx
	movl	%edx, 12(%ebx)
	mull	%ecx
	movl	-16(%ebp), %eax
	shrl	$4, %edx
	movl	%edx, 264(%ebx)
	mull	%ecx
	shrl	$4, %edx
	movl	%edx, 516(%ebx)
	jmp	L861
	.p2align 4,,10
	.p2align 3
L1009:
	movl	(%ebx), %ecx
	movl	504(%ebx), %edx
	movl	80(%ecx), %eax
	movl	%eax, 80(%edx)
	movl	84(%ecx), %eax
	movl	%eax, 84(%edx)
	movl	88(%ecx), %eax
	movl	%eax, 88(%edx)
	movl	92(%ecx), %eax
	movl	%eax, 92(%edx)
	xorl	%eax, %eax
	movl	%edi, -32(%ebp)
	movl	%ebx, -36(%ebp)
L857:
	movl	12(%ecx,%eax), %ebx
	movl	4(%ecx,%eax), %edi
	movl	8(%ecx,%eax), %esi
	movl	%ebx, -28(%ebp)
	movl	(%ecx,%eax), %ebx
	movl	%edi, 4(%edx,%eax)
	movl	%ebx, (%edx,%eax)
	movl	%esi, 8(%edx,%eax)
	movl	-28(%ebp), %edi
	movl	%edi, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L857
	movl	-32(%ebp), %edi
	movl	-36(%ebp), %ebx
	jmp	L856
	.p2align 4,,10
	.p2align 3
L1002:
	movl	-16(%ebp), %esi
	movswl	8(%esi), %esi
	subl	%ecx, %esi
	movl	-60(%ebp), %ecx
	subl	-76(%ebp), %ecx
	leal	(%esi,%esi,2), %esi
	leal	(%ecx,%ecx,2), %ecx
	movl	%esi, -80(%ebp)
	movl	-32(%ebp), %esi
	movss	4(%esi,%ecx,8), %xmm0
	movl	-72(%ebp), %ecx
	movl	-80(%ebp), %esi
	comiss	4(%ecx,%esi,8), %xmm0
	ja	L874
	movb	$0, -76(%ebp)
	testb	$48, -52(%ebp)
	je	L1018
L800:
	movl	(%edx), %ecx
	movl	(%ebx), %eax
	movl	%ecx, (%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	8(%edx), %edx
	movl	%edx, 8(%eax)
	jmp	L802
	.p2align 4,,10
	.p2align 3
L804:
	movl	-20(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L805
	.p2align 4,,10
	.p2align 3
L840:
	movl	%eax, %edx
	andl	$4, %edx
	testb	$32, %al
	jne	L841
	testw	%dx, %dx
	je	L846
	movl	-28(%ebp), %eax
	movl	8(%eax), %edx
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, %ecx
	jmp	L845
	.p2align 4,,10
	.p2align 3
L829:
	movl	-28(%ebp), %esi
	movl	4(%esi), %esi
	jmp	L830
	.p2align 4,,10
	.p2align 3
L976:
	movl	(%eax), %edx
	movl	%edx, 48(%esi)
	movl	4(%eax), %edx
	movl	%edx, 4(%ecx)
	movl	8(%eax), %eax
	movl	%eax, 8(%ecx)
	jmp	L826
L999:
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L757
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	movl	-16(%ebp), %esi
L758:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L758
	movl	%esi, -16(%ebp)
	movl	%eax, (%ebx)
	movl	$4, 4(%ebx)
	jmp	L756
L1015:
	shrw	$2, %cx
	movl	-36(%ebp), %edx
	andl	$1, %ecx
	xorl	$1, %ecx
	call	__ZL13calc_ypancoefcsi
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm3
	jmp	L791
L1003:
	shrw	$2, %ax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	movzbl	-72(%ebp), %eax
	andl	$1, %ecx
	xorl	$1, %ecx
	call	__ZL13calc_ypancoefcsi
	fstps	-48(%ebp)
	movss	-48(%ebp), %xmm5
	jmp	L806
L1006:
	movl	-16(%ebp), %esi
	cmpw	$48, %dx
	leal	576(%ebx), %eax
	setne	%dl
	movzbl	21(%esi), %ecx
	movl	-20(%ebp), %esi
	movzbl	%dl, %edx
	movl	%edx, 8(%esp)
	movsbl	32(%esi), %edx
	movl	-16(%ebp), %esi
	movl	%edx, 4(%esp)
	movsbl	20(%esi), %edx
	movl	%edx, (%esp)
	movswl	-44(%ebp), %edx
	call	_polymer_getbuildmaterial.lto_priv.0
	movl	%eax, 520(%ebx)
	movzwl	14(%esi), %eax
	testb	$-128, %al
	je	L827
	testb	$2, %ah
	je	L828
	movb	$85, 651(%ebx)
	movzwl	14(%esi), %eax
	jmp	L827
L1007:
	movzwl	%ax, %ecx
	movzbl	%dl, %eax
	movl	-32(%ebp), %edx
	call	__ZL13calc_ypancoefcsi
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm4
	jmp	L831
L1005:
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	testl	%eax, %eax
	je	L823
	movl	%eax, 252(%ebx)
	movl	-28(%ebp), %eax
	movl	$4, 256(%ebx)
	movswl	(%eax), %ecx
	movl	-68(%ebp), %eax
	subl	%ecx, %eax
	leal	(%eax,%eax,2), %ecx
	movl	-40(%ebp), %eax
	movl	256(%eax), %eax
	leal	(%eax,%ecx,8), %eax
	jmp	L822
L874:
	movb	$1, -76(%ebp)
	jmp	L800
L1017:
	movzwl	-36(%ebp), %eax
	cmpw	%ax, 784(%ebx)
	jne	L774
	movzwl	-44(%ebp), %eax
	cmpw	%ax, 786(%ebx)
	jne	L774
	movl	_wallchanged(,%edi,4), %eax
	cmpl	%eax, 800(%ebx)
	jne	L774
	movzwl	-32(%ebp), %eax
	testw	%ax, %ax
	js	L775
	cmpw	%ax, _numwalls
	jl	L775
	movzwl	-56(%ebp), %eax
	cmpw	%ax, 776(%ebx)
	jne	L774
	movswl	-32(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzbl	24(%eax), %edx
	movl	%eax, %ecx
	movsbl	780(%ebx), %eax
	cmpl	%eax, %edx
	jne	L774
	movzbl	25(%ecx), %edx
	movsbl	781(%ebx), %eax
	cmpl	%eax, %edx
	jne	L774
	movzwl	14(%ecx), %edx
	movswl	778(%ebx), %eax
	cmpl	%eax, %edx
	jne	L774
	movzbl	20(%ecx), %eax
	cmpb	%al, 782(%ebx)
	jne	L774
L775:
	orb	$2, 796(%ebx)
	movl	-12(%ebp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	jmp	L749
	.p2align 4,,10
	.p2align 3
L1008:
	.cfi_restore_state
	movzbl	_picsiz(%esi), %edx
	xorps	%xmm5, %xmm5
	xorps	%xmm0, %xmm0
	movb	%dl, -32(%ebp)
	shrb	$4, %dl
	movzbl	%dl, %edx
	cvtsi2ssl	_pow2long.lto_priv.1(,%edx,4), %xmm5
	movswl	_tilesiz+2(,%esi,4), %edx
	cvtsi2ssl	%edx, %xmm0
	comiss	%xmm5, %xmm0
	jbe	L848
	addss	%xmm5, %xmm5
L848:
	mulss	LC4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	divss	%xmm0, %xmm4
	mulss	%xmm5, %xmm4
	jmp	L847
L1001:
	movl	%ecx, -64(%ebp)
	movl	%edx, -60(%ebp)
	call	_animateoffs
	movl	-64(%ebp), %ecx
	addw	%ax, -56(%ebp)
	movl	-60(%ebp), %edx
	jmp	L772
L1014:
	testw	%cx, %cx
	jne	L789
L790:
	movl	-28(%ebp), %eax
	movl	8(%eax), %esi
	jmp	L786
L769:
	movswl	-44(%ebp), %eax
	testw	%ax, %ax
	js	L762
	cmpb	$63, _picanm+3(%eax,%eax,4)
	jbe	L766
	movzwl	-36(%ebp), %edx
L765:
	movl	%ecx, -56(%ebp)
	movl	%edx, -36(%ebp)
	call	_animateoffs
	movl	-56(%ebp), %ecx
	addw	%ax, -44(%ebp)
	movswl	-44(%ebp), %eax
	jmp	L766
L846:
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %ecx
	jmp	L845
L1004:
	movl	504(%ebx), %edx
	movl	%ecx, %esi
	movl	(%ecx), %ecx
	leal	48(%edx), %eax
	movl	%ecx, 48(%edx)
	movl	4(%esi), %edx
	movl	%edx, 4(%eax)
	movl	8(%esi), %edx
	movl	%edx, 8(%eax)
	movl	12(%esi), %edx
	movl	%edx, 12(%eax)
	movl	16(%esi), %edx
	movl	-20(%ebp), %esi
	movl	%edx, 16(%eax)
	movl	%edi, %edx
	movl	504(%ebx), %eax
	movswl	(%esi), %ecx
	movl	-24(%ebp), %esi
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	256(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	movl	%ecx, 72(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 76(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 80(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 84(%eax)
	movl	16(%edx), %edx
	movl	%edx, 88(%eax)
	jmp	L799
L828:
	movl	-16(%ebp), %eax
	movb	$-86, 651(%ebx)
	movzwl	14(%eax), %eax
	jmp	L827
L1018:
	movl	(%eax), %ecx
	movl	504(%ebx), %edx
	movl	-16(%ebp), %esi
	movl	%ecx, (%edx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	8(%eax), %ecx
	movl	%ecx, 8(%edx)
	movl	12(%eax), %ecx
	movl	%ecx, 12(%edx)
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movswl	8(%esi), %edx
	movl	-20(%ebp), %esi
	movl	504(%ebx), %eax
	movswl	(%esi), %ecx
	movl	-24(%ebp), %esi
	subl	%ecx, %edx
	leal	(%edx,%edx,2), %ecx
	movl	4(%esi), %edx
	leal	(%edx,%ecx,8), %edx
	movl	(%edx), %ecx
	jmp	L990
L757:
	movl	$24, %eax
	call	__Z13handle_memerri
L823:
	movl	$96, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE39:
	.section .rdata,"dr"
LC44:
	.ascii "Initializing sector %i\0"
LC45:
	.ascii "Initialized sector %i.\0"
LC46:
	.ascii "Initializing wall %i\0"
LC47:
	.ascii "Initialized wall %i.\0"
LC48:
	.ascii "Refreshed maphack data\0"
LC49:
	.ascii "Board loaded.\0"
	.text
	.p2align 4
	.globl	_polymer_loadboard
	.def	_polymer_loadboard;	.scl	2;	.type	32;	.endef
_polymer_loadboard:
LFB40:
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
	call	_polymer_freeboard
	movswl	_numwalls, %eax
	movl	$_prmapvbo, 4(%esp)
	movl	$1, (%esp)
	leal	(%eax,%eax,2), %eax
	sall	$4, %eax
	movl	%eax, _prwalldataoffset
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	movl	_prmapvbo, %edx
	movl	$34962, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movswl	_numwalls, %eax
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	leal	(%eax,%eax,8), %eax
	movl	$34962, (%esp)
	sall	$5, %eax
	addl	_prwalldataoffset, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	$_prindexringvbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	movl	_prindexringvbo, %edx
	movl	$34963, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	_pr_buckets, %eax
	testl	%eax, %eax
	je	L1020
	movl	_prindexring, %eax
	testl	%eax, %eax
	je	L1021
	movl	$34963, (%esp)
	call	*_glad_glUnmapBuffer
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
L1021:
	movl	$450, 12(%esp)
	movl	$0, 8(%esp)
	movl	$262140, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glBufferStorage
	.cfi_def_cfa_offset 28
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	movl	$194, 12(%esp)
	movl	$262140, 8(%esp)
	movl	$0, 4(%esp)
	movl	$34963, (%esp)
	call	*_glad_glMapBufferRange
	.cfi_def_cfa_offset 28
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, _prindexring
L1020:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	cmpw	$0, _numsectors
	jle	L1022
	xorl	%edi, %edi
L1032:
	cmpl	$2, _pr_verbosity
	jg	L1070
L1023:
	movl	$572, (%esp)
	movl	_g_sm_heap, %ecx
	movl	_sector, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1024
	movl	$572, 8(%esp)
	leal	(%edi,%edi,4), %eax
	movl	$0, 4(%esp)
	leal	(%esi,%eax,8), %esi
	movl	%ebx, (%esp)
	call	_memset
	movswl	2(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax,2), %ebp
	sall	$2, %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1071
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_memset
	movl	20(%esp), %edx
	movl	%edx, (%ebx)
	movswl	2(%esi), %eax
	movl	_g_sm_heap, %ecx
	leal	(%eax,%eax,2), %ebp
	sall	$3, %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1028
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_memset
	movl	20(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%ebx)
	movswl	2(%esi), %eax
	movl	%eax, 8(%ebx)
	movswl	2(%esi), %eax
	leal	(%eax,%eax,2), %ebp
	sall	$3, %ebp
	movl	%ebp, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1028
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, 20(%esp)
	call	_memset
	movl	20(%esp), %edx
	movl	%edx, 256(%ebx)
	movswl	2(%esi), %eax
	movl	%eax, 260(%ebx)
	leal	12(%ebx), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	264(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	184(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	436(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	movl	12(%ebx), %edx
	movl	$34962, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movswl	2(%esi), %eax
	movl	$34962, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	264(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movswl	2(%esi), %eax
	movl	$34962, (%esp)
	leal	(%eax,%eax,4), %eax
	sall	$2, %eax
	movl	%eax, 4(%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj.constprop.0
	orb	$1, 560(%ebx)
	movl	%ebx, _prsectors(,%edi,4)
	cmpl	$1, _pr_verbosity
	jg	L1072
L1030:
	cmpl	$2, _pr_nullrender
	jg	L1031
	movswl	%di, %eax
	call	_polymer_updatesector.part.0.isra.0
L1031:
	movswl	_numsectors, %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jg	L1032
	movswl	_numwalls, %edi
	testl	%edi, %edi
	jle	L1033
L1054:
	xorl	%esi, %esi
L1042:
	cmpl	$2, _pr_verbosity
	jg	L1073
L1034:
	movl	$804, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1035
	movl	$804, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1074
	movl	%eax, 504(%ebx)
	movl	756(%ebx), %eax
	movl	$4, 508(%ebx)
	testl	%eax, %eax
	je	L1075
L1039:
	leal	8(%ebx), %eax
	movl	$1, (%esp)
	movl	%esi, %edi
	movl	%eax, 4(%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	260(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	512(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	leal	760(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	.cfi_def_cfa_offset 36
	movl	8(%ebx), %edx
	movl	$34962, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	260(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	512(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$80, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	760(%ebx), %edx
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj
	movl	$35040, 12(%esp)
	movl	$0, 8(%esp)
	movl	$160, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	.cfi_def_cfa_offset 28
	movl	$34962, %eax
	subl	$16, %esp
	.cfi_def_cfa_offset 44
	call	__Z18buildgl_bindBufferjj.constprop.0
	orb	$1, 796(%ebx)
	movl	%ebx, _prwalls(,%esi,4)
	cmpl	$1, _pr_verbosity
	jg	L1076
L1041:
	movswl	%di, %eax
	addl	$1, %esi
	call	_polymer_updatewall.lto_priv.0
	movswl	_numwalls, %edi
	cmpl	%esi, %edi
	jg	L1042
	movswl	_numsectors, %esi
	testw	%si, %si
	jle	L1046
L1044:
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1048:
	movl	_prsectors(,%ebp,4), %ebx
	addl	$1, %ebp
	testl	%ebx, %ebx
	je	L1047
	movzwl	252(%ebx), %eax
	leal	188(%ebx), %edx
	movl	$-1, 4(%esp)
	movl	%edx, (%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	call	_memset
	xorl	%eax, %eax
	leal	440(%ebx), %edx
	movw	%ax, 252(%ebx)
	movzwl	504(%ebx), %eax
	movl	$-1, 4(%esp)
	addl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	call	_memset
	xorl	%eax, %eax
	movw	%ax, 504(%ebx)
L1047:
	cmpl	%ebp, %esi
	jg	L1048
L1046:
	testl	%edi, %edi
	jle	L1045
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1050:
	movl	_prwalls(,%esi,4), %ebx
	addl	$1, %esi
	testl	%ebx, %ebx
	je	L1049
	movzwl	248(%ebx), %eax
	leal	184(%ebx), %edx
	xorl	%ebp, %ebp
	movl	$-1, 4(%esp)
	movl	%edx, (%esp)
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movzwl	500(%ebx), %eax
	xorl	%edx, %edx
	movw	%dx, 248(%ebx)
	leal	436(%ebx), %edx
	addl	%eax, %eax
	movl	%edx, (%esp)
	movl	%eax, 8(%esp)
	movl	$-1, 4(%esp)
	call	_memset
	movzwl	752(%ebx), %eax
	xorl	%ecx, %ecx
	leal	688(%ebx), %edx
	movw	%cx, 500(%ebx)
	addl	%eax, %eax
	movl	$-1, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, (%esp)
	call	_memset
	movw	%bp, 752(%ebx)
L1049:
	cmpl	%edi, %esi
	jne	L1050
L1045:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1051:
	imull	$270, %eax, %edx
	addl	$1, %eax
	andb	$-2, _prlights+254(%edx)
	cmpl	$1024, %eax
	jne	L1051
	movl	$0, _lightcount
	xorl	%eax, %eax
	call	_engineLoadMHK
	testl	%eax, %eax
	je	L1077
L1052:
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jle	L1019
	cmpw	$0, _numsectors
	jne	L1078
L1019:
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
	ret
	.p2align 4,,10
	.p2align 3
L1070:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1023
	movl	%edi, 16(%esp)
	movl	$LC44, 12(%esp)
	movl	$2584, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1023
	.p2align 4,,10
	.p2align 3
L1072:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1030
	movl	%edi, 16(%esp)
	movl	$LC45, 12(%esp)
	movl	$2612, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1030
	.p2align 4,,10
	.p2align 3
L1028:
	movl	$24, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1024:
	movl	$572, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1076:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1041
	movl	%esi, 16(%esp)
	movl	$LC47, 12(%esp)
	movl	$3183, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1041
	.p2align 4,,10
	.p2align 3
L1073:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1034
	movl	%esi, 16(%esp)
	movl	$LC46, 12(%esp)
	movl	$3147, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1034
	.p2align 4,,10
	.p2align 3
L1071:
	movl	$12, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1075:
	movl	$80, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1040
	movl	%eax, 756(%ebx)
	jmp	L1039
	.p2align 4,,10
	.p2align 3
L1022:
	cmpw	$0, _numwalls
	jg	L1054
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L1035:
	movl	$804, %eax
	call	__Z13handle_memerri
L1074:
	movl	$96, %eax
	call	__Z13handle_memerri
L1033:
	testw	%si, %si
	jg	L1044
	jmp	L1045
	.p2align 4,,10
	.p2align 3
L1078:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1019
	movl	$LC49, 12(%esp)
	movl	$1071, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1019
L1077:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1052
	movl	$LC48, 12(%esp)
	movl	$1023, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1052
L1040:
	movl	$80, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE40:
	.section .rdata,"dr"
	.align 4
LC50:
	.ascii "Initializing Polymer subsystem...\0"
	.align 4
LC51:
	.ascii "Your video card driver/combo doesn't support the necessary features!\0"
LC52:
	.ascii "Disabling Polymer...\0"
	.align 4
LC53:
	.ascii "Tessellation object initialization failed!\0"
	.align 4
LC55:
	.ascii "Initialization complete in %d ms.\0"
	.text
	.p2align 4
	.globl	_polymer_init
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
_polymer_init:
LFB48:
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
	leal	-24(%ebp), %eax
	pushl	%ebx
	subl	$68, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	call	_enet_gettime.constprop.0.isra.0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edi
	movl	%eax, -36(%ebp)
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jg	L1123
L1080:
	movzwl	_glinfo+28, %eax
	notl	%eax
	testw	$-27664, %ax
	je	L1082
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L1124
L1083:
	xorl	%eax, %eax
L1079:
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
L1124:
	.cfi_restore_state
	movl	$LC51, 12(%esp)
	movl	$751, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1083
	movl	$LC52, 12(%esp)
	movl	$752, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1083
L1123:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L1125
	movzwl	_glinfo+28, %eax
	notl	%eax
	testw	$-27664, %ax
	jne	L1083
L1082:
	call	__Z28buildgl_resetStateAccountingv
	call	_polymer_uninit
	movl	$16384, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_prsectors, (%esp)
	call	_memset
	movl	$65536, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_prwalls, (%esp)
	call	_memset
	movl	__ZL11defaulAlloc, %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1086
	movl	$216, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1126
L1087:
	movl	__ZL11defaulAlloc, %eax
	movl	__ZL11defaulAlloc+20, %edx
	movl	%eax, 112(%ebx)
	movl	__ZL11defaulAlloc+4, %eax
	movl	%edx, 132(%ebx)
	movl	__ZL11defaulAlloc+24, %edx
	movl	%eax, 116(%ebx)
	movl	__ZL11defaulAlloc+8, %eax
	movl	%edx, 136(%ebx)
	movl	__ZL11defaulAlloc+28, %edx
	movl	%eax, 120(%ebx)
	movl	__ZL11defaulAlloc+12, %eax
	movl	%edx, 140(%ebx)
	movl	__ZL11defaulAlloc+32, %edx
	movl	%eax, 124(%ebx)
	movl	__ZL11defaulAlloc+16, %eax
	movl	%edx, 144(%ebx)
	movl	__ZL11defaulAlloc+36, %edx
	movl	%eax, 128(%ebx)
	movl	%edx, 148(%ebx)
	testl	%eax, %eax
	jne	L1089
	movl	$512, 128(%ebx)
L1089:
	movl	132(%ebx), %eax
	testl	%eax, %eax
	jne	L1090
	movl	$512, 132(%ebx)
L1090:
	movl	136(%ebx), %esi
	testl	%esi, %esi
	jne	L1091
	movl	$256, 136(%ebx)
L1091:
	movl	140(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1092
	movl	$512, 140(%ebx)
L1092:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	jne	L1093
	movl	$0x00000000, 8(%ebx)
	xorps	%xmm0, %xmm0
	movl	$256, %eax
	movl	$256, 144(%ebx)
	movl	$0x00000000, 12(%ebx)
	movl	$0x00000000, 16(%ebx)
	movl	$0, 68(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movups	%xmm0, 44(%ebx)
L1094:
	movl	%eax, %ecx
L1096:
	leal	112(%ebx), %eax
	movl	$28, %edx
	leal	-32(%ebp), %esi
	call	__Z17createBucketAllocP9TESSallocjj
	movl	$0, (%ebx)
	movl	%eax, 84(%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 88(%ebx)
	movl	$0, 92(%ebx)
	movl	$0, 96(%ebx)
	movl	$0, 100(%ebx)
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	movl	%ebx, _prtess
	movl	$1, %ebx
	call	_polymer_loadboard
	movl	$0xbf800000, _artskydata
	movl	$0x00000000, _artskydata+4
L1098:
	leal	-28(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, -40(%ebp)
	fildl	-40(%ebp)
	fmull	LC54
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-32(%ebp), %xmm0
	movss	-28(%ebp), %xmm1
	xorps	LC25, %xmm0
	movss	%xmm1, _artskydata+4(,%ebx,8)
	movss	%xmm0, _artskydata(,%ebx,8)
	addl	$1, %ebx
	cmpl	$16, %ebx
	jne	L1098
	movl	_nextmodelid, %edx
	movl	$0, _skyboxdatavbo
	testl	%edx, %edx
	jle	L1099
	movl	_models, %eax
	leal	(%eax,%edx,4), %ecx
L1101:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1100
	movl	$0, 220(%edx)
L1100:
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L1101
L1099:
	movl	$__ZL14prprogramtable.lto_priv.0, %eax
	xorl	%ebx, %ebx
	movl	$-1, _overridematerial
	movl	$0, _polymersearching
	call	_inthash_init
	movl	_pr_shadowcount, %eax
	addl	$1, %eax
	call	_polymer_initrendertargets.lto_priv.0
	.p2align 4
	.p2align 3
L1105:
	movl	_prhighpalookups(,%ebx,4), %eax
	addl	$1, %ebx
	testl	%eax, %eax
	je	L1102
	xorl	%esi, %esi
	jmp	L1104
	.p2align 4,,10
	.p2align 3
L1127:
	movl	_prhighpalookups-4(,%ebx,4), %eax
L1104:
	addl	%esi, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1103
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glGenTextures
	movl	_prhighpalookups-4(,%ebx,4), %eax
	subl	$8, %esp
	movl	4(%eax,%esi), %edx
	movl	$32879, %eax
	call	__Z19buildgl_bindTexturejj
	movl	_prhighpalookups-4(,%ebx,4), %eax
	movl	(%eax,%esi), %eax
	movl	$5121, 32(%esp)
	movl	$32993, 28(%esp)
	movl	%eax, 36(%esp)
	movl	$0, 24(%esp)
	movl	$64, 20(%esp)
	movl	$64, 16(%esp)
	movl	$64, 12(%esp)
	movl	$6408, 8(%esp)
	movl	$0, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexImage3D
	subl	$40, %esp
	movl	$0, 8(%esp)
	movl	$33084, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9729, 8(%esp)
	movl	$10241, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$9729, 8(%esp)
	movl	$10240, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10242, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$10243, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	subl	$12, %esp
	movl	$33071, 8(%esp)
	movl	$32882, 4(%esp)
	movl	$32879, (%esp)
	call	*_glad_glTexParameteri
	xorl	%edx, %edx
	movl	$32879, %eax
	subl	$12, %esp
	call	__Z19buildgl_bindTexturejj
L1103:
	addl	$8, %esi
	cmpl	$2048, %esi
	jne	L1127
L1102:
	cmpl	$256, %ebx
	jne	L1105
	call	__Z27buildgl_resetSamplerObjectsv
	call	__Z21polymost_initdrawpolyv
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jg	L1128
L1106:
	movl	$1, %eax
	jmp	L1079
L1125:
	movl	$LC50, 12(%esp)
	movl	$740, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1080
L1093:
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 8(%ebx)
	movl	$0x00000000, 12(%ebx)
	movl	$0x00000000, 16(%ebx)
	movl	$0, 68(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movups	%xmm0, 44(%ebx)
	cmpl	$15, %eax
	jg	L1095
	movl	$16, 144(%ebx)
	movl	$16, %ecx
	jmp	L1096
L1128:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1106
	leal	-24(%ebp), %eax
	movl	$1000, %esi
	call	_enet_gettime.constprop.0.isra.0
	movl	%esi, %eax
	imull	-20(%ebp)
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	-24(%ebp), %ebx
	subl	%edi, %ebx
	imull	$1000, %ebx, %ebx
	addl	%eax, %ebx
	movl	-36(%ebp), %eax
	movl	$1000000000, 8(%esp)
	movl	$0, 12(%esp)
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___udivdi3
	movl	$LC55, 12(%esp)
	subl	%eax, %ebx
	movl	$842, 8(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1106
L1095:
	cmpl	$4096, %eax
	jle	L1094
	movl	$4096, 144(%ebx)
	movl	$4096, %ecx
	jmp	L1096
L1126:
	movl	$216, %eax
	call	__Z13handle_memerri
L1086:
	movl	$216, 4(%esp)
	movl	__ZL11defaulAlloc+12, %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1087
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$0, _prtess
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1083
	movl	$LC53, 12(%esp)
	movl	$767, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1083
	.cfi_endproc
LFE48:
	.section .rdata,"dr"
LC57:
	.ascii "Frustum extracted.\0"
	.text
	.p2align 4
	.globl	_polymer_extractfrustum.lto_priv.0
	.def	_polymer_extractfrustum.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_extractfrustum.lto_priv.0:
LFB56:
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
	movl	%edx, %edi
	pushl	%esi
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	movl	%eax, %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%ecx, %ebx
	subl	$92, %esp
	movl	$5890, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	movl	%edi, (%esp)
	call	*_glad_glLoadMatrixf
	subl	$4, %esp
	movl	%esi, (%esp)
	call	*_glad_glMultMatrixf
	leal	-88(%ebp), %eax
	subl	$4, %esp
	movl	%eax, 4(%esp)
	movl	$2984, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glLoadIdentity
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	movups	-88(%ebp), %xmm0
	movups	-56(%ebp), %xmm1
	subl	$4, %esp
	movaps	%xmm0, %xmm2
	shufps	$221, -72(%ebp), %xmm0
	shufps	$136, -72(%ebp), %xmm2
	movaps	%xmm0, %xmm5
	movaps	%xmm2, %xmm4
	movaps	%xmm1, %xmm3
	shufps	$221, -40(%ebp), %xmm1
	shufps	$136, -40(%ebp), %xmm3
	shufps	$221, %xmm1, %xmm0
	shufps	$136, %xmm1, %xmm5
	shufps	$136, %xmm3, %xmm4
	movaps	%xmm4, %xmm1
	addps	%xmm0, %xmm1
	shufps	$221, %xmm3, %xmm2
	movups	%xmm1, (%ebx)
	movaps	%xmm0, %xmm1
	subps	%xmm4, %xmm1
	movups	%xmm1, 16(%ebx)
	movaps	%xmm0, %xmm1
	subps	%xmm5, %xmm1
	addps	%xmm0, %xmm5
	subps	%xmm2, %xmm0
	movups	%xmm1, 32(%ebx)
	movups	%xmm5, 48(%ebx)
	movups	%xmm0, 64(%ebx)
	cmpl	$2, _pr_verbosity
	jg	L1132
L1129:
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
L1132:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1129
	movl	$LC57, 12(%esp)
	movl	$3862, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	leal	-12(%ebp), %esp
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
LFE56:
	.section .rdata,"dr"
LC62:
	.ascii "polymost_prepareMirror(%u)\0"
	.text
	.p2align 4
	.globl	_polymer_displayrooms.lto_priv.0
	.def	_polymer_displayrooms.lto_priv.0;	.scl	2;	.type	32;	.endef
_polymer_displayrooms.lto_priv.0:
LFB57:
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
	pushl	%eax
	movl	$197208, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-196976(%ebp), %esi
	leal	-197040(%ebp), %edi
	movl	(%esp,%eax), %eax
	movl	%esi, _curmodelviewmatrix
	movl	%eax, %ebx
	movl	%esi, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	movl	%edi, 4(%esp)
	movl	$2983, (%esp)
	call	*_glad_glGetFloatv
	leal	-196704(%ebp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	subl	$8, %esp
	call	_polymer_extractfrustum.lto_priv.0
	movswl	_numwalls, %eax
	movl	$0, 4(%esp)
	movl	$__ZL7queryid, (%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memset
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	$__ZL12drawingstate.lto_priv.0, (%esp)
	call	_memset
	movw	%bx, __ZL11sectorqueue.lto_priv.0
	movswl	%bx, %edx
	movl	%ebx, %eax
	movswl	_numsectors, %ebx
	sarl	$3, %edx
	andl	$7, %eax
	movzbl	__ZL8pow2char.lto_priv.9(%eax), %eax
	orb	%al, __ZL12drawingstate.lto_priv.0(%edx)
	addl	%ebx, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -197200(%ebp)
	testl	%eax, %eax
	je	L1134
	movl	$2, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -197204(%ebp)
	testl	%eax, %eax
	je	L1491
	movl	-197204(%ebp), %eax
	xorl	%edx, %edx
	movl	-197200(%ebp), %esi
	movw	%dx, (%eax)
	movl	$2929, %edx
	movl	%eax, _cursectormaskcount
	movl	$_gl+88, %eax
	movl	%esi, _cursectormasks
	call	_inthash_find
	testl	%eax, %eax
	je	L1137
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1137:
	movl	$0x3f800000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movl	$0x3f800000, (%esp)
	call	*_glad_glColor4f
	movzbl	__ZL9curskypal, %eax
	movss	LC38, %xmm2
	mulss	_fglobalposz, %xmm2
	subl	$16, %esp
	movss	_fglobalposy, %xmm1
	movswl	__ZL6cursky.lto_priv.0, %ebx
	movb	%al, -197144(%ebp)
	movss	%xmm1, -197140(%ebp)
	movzbl	__ZL11curskyshade, %esi
	movss	_fglobalposx, %xmm0
	xorps	LC25, %xmm0
	movw	%bx, -197136(%ebp)
	movss	%xmm2, -197132(%ebp)
	movss	%xmm0, -197128(%ebp)
	call	*_glad_glPushMatrix
	call	*_glad_glLoadIdentity
	movl	_curskymodelviewmatrix, %eax
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	movss	-197128(%ebp), %xmm0
	subl	$4, %esp
	movss	%xmm0, 8(%esp)
	movss	-197132(%ebp), %xmm2
	movss	%xmm2, 4(%esp)
	movss	-197140(%ebp), %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glTranslatef
	movss	LC58, %xmm0
	subl	$12, %esp
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	subl	$12, %esp
	movl	$1, _drawingskybox
	movl	$0, (%esp)
	call	_texcache_fetch
	movl	$0, _drawingskybox
	testl	%eax, %eax
	je	L1138
	testb	$4, 34(%eax)
	jne	L1492
L1138:
	movl	_pskynummultis, %eax
	movl	_multipsky, %ecx
	movl	_multipskytile, %edx
	subl	$1, %eax
	testl	%eax, %eax
	jg	L1169
	jmp	L1168
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1494:
	subl	$1, %eax
	je	L1493
L1169:
	cmpl	(%edx,%eax,4), %ebx
	jne	L1494
L1168:
	sall	$5, %eax
	addl	%eax, %ecx
	movsbl	8(%ecx), %edi
	leal	9(%ecx), %eax
	movl	%eax, -197152(%ebp)
	movl	$1, %eax
	movl	%edi, %ecx
	movl	%edi, -197164(%ebp)
	sall	%cl, %eax
	movl	%eax, -197160(%ebp)
	testl	%eax, %eax
	movzbl	-197144(%ebp), %eax
	movl	%eax, -197128(%ebp)
	jle	L1495
	movl	%esi, %eax
	movl	-197152(%ebp), %esi
	movsbl	%al, %eax
	movl	%eax, -197132(%ebp)
	leal	-180240(%ebp), %eax
	movl	%esi, %edi
	movl	%eax, -197188(%ebp)
	movl	%eax, %ebx
	movl	-197160(%ebp), %eax
	addl	%esi, %eax
	movl	%eax, -197140(%ebp)
	.p2align 4
	.p2align 3
L1192:
	movl	$30719, %eax
	movsbw	(%edi), %dx
	addw	-197136(%ebp), %dx
	cmpw	%ax, %dx
	cmovg	%eax, %edx
	movswl	%dx, %esi
	cmpb	$63, _picanm+3(%esi,%esi,4)
	ja	L1496
L1171:
	movl	_waloff(,%esi,4), %eax
	testl	%eax, %eax
	je	L1497
L1172:
	movl	$0, (%esp)
	movl	-197128(%ebp), %edx
	movl	%esi, %eax
	xorl	%ecx, %ecx
	call	_texcache_fetch
	movl	%eax, %esi
	cmpl	$3, _rendmode
	je	L1498
L1173:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-197132(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L1499
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %edx
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%eax, %xmm4
	testl	%edx, %edx
	jne	L1183
	cmpl	-197132(%ebp), %eax
	jle	L1183
	subl	$1, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
L1182:
	movaps	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	cmpnltss	%xmm3, %xmm1
	andps	%xmm0, %xmm1
	minss	%xmm1, %xmm2
	movaps	%xmm4, %xmm1
	subss	%xmm2, %xmm1
	divss	%xmm4, %xmm1
	movaps	%xmm1, %xmm0
L1177:
	movss	%xmm0, 8(%ebx)
	movss	%xmm0, 4(%ebx)
	movss	%xmm0, (%ebx)
	testl	%esi, %esi
	je	L1186
	movl	-197128(%ebp), %eax
	movzwl	34(%esi), %edx
	movzwl	_hictinting(,%eax,8), %eax
	testb	$-60, %al
	jne	L1187
	andl	$2, %edx
	je	L1188
	movzbl	-197144(%ebp), %ecx
	cmpb	38(%esi), %cl
	jne	L1189
	movzwl	36(%esi), %edx
	andl	$32, %eax
	andw	$199, %dx
	orw	%ax, %dx
	je	L1190
L1189:
	movl	-197128(%ebp), %esi
	xorps	%xmm1, %xmm1
	movzbl	_hictinting+2(,%esi,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+3(,%esi,8), %eax
	mulss	LC59, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%esi,8), %eax
	mulss	LC59, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	LC59, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
L1190:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1500
L1191:
	movzbl	_hictinting+2042, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movzbl	_hictinting+2043, %edx
	mulss	LC59, %xmm0
	mulss	(%ebx), %xmm0
	movss	%xmm0, (%ebx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	LC59, %xmm0
	mulss	4(%ebx), %xmm0
	movss	%xmm0, 4(%ebx)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	LC59, %xmm0
	mulss	8(%ebx), %xmm0
	movss	%xmm0, 8(%ebx)
L1186:
	addl	$1, %edi
	addl	$12, %ebx
	cmpl	%edi, -197140(%ebp)
	jne	L1192
L1170:
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1193
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1193:
	movl	-197164(%ebp), %esi
	movl	$3, %eax
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	movl	$16, %eax
	xorl	%edi, %edi
	movl	%esi, %ecx
	xorl	%esi, %esi
	sarl	%cl, %eax
	movl	%eax, -197156(%ebp)
	movzbl	-197160(%ebp), %eax
	subl	$1, %eax
	movb	%al, -197160(%ebp)
	.p2align 4
	.p2align 3
L1194:
	movzbl	-197160(%ebp), %ebx
	movl	-197152(%ebp), %eax
	andl	%edi, %ebx
	addl	$1, %edi
	movsbl	%bl, %ebx
	movsbw	(%eax,%ebx), %ax
	addw	-197136(%ebp), %ax
	movl	$4, (%esp)
	movl	-197132(%ebp), %ecx
	movl	-197128(%ebp), %edx
	cwtl
	call	_polymer_inb4rotatesprite
	leal	(%ebx,%ebx,2), %eax
	movl	$0x3f800000, 12(%esp)
	movl	%esi, %ebx
	movss	-180232(%ebp,%eax,4), %xmm0
	movss	%xmm0, 8(%esp)
	movss	-180236(%ebp,%eax,4), %xmm0
	movss	%xmm0, 4(%esp)
	movss	-180240(%ebp,%eax,4), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glColor4f
	movl	$4, %eax
	addl	-197156(%ebp), %esi
	subl	$16, %esp
	call	__Z29polymost_startBufferedDrawingi
	movl	$1067240653, %edx
	movss	_artskydata+4(,%ebx,8), %xmm1
	movss	_artskydata(,%ebx,8), %xmm0
	movl	$0x3f9ccccd, -197116(%ebp)
	movss	%xmm1, -197120(%ebp)
	movss	%xmm0, -197112(%ebp)
	movss	%xmm1, -197144(%ebp)
	movss	%xmm0, -197140(%ebp)
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	movl	-197120(%ebp), %eax
	movl	-197112(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movss	-197144(%ebp), %xmm1
	movl	$-1080242995, %edx
	movss	-197140(%ebp), %xmm0
	movl	$0xbf9ccccd, -197104(%ebp)
	movss	%xmm1, -197108(%ebp)
	movss	%xmm0, -197100(%ebp)
	movl	$0, (%esp)
	movl	$1065353216, 4(%esp)
	movl	-197108(%ebp), %eax
	movl	-197100(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	%esi, %eax
	movl	$-1080242995, %edx
	movl	$0xbf9ccccd, -197092(%ebp)
	andl	$15, %eax
	movss	_artskydata+4(,%eax,8), %xmm1
	movss	_artskydata(,%eax,8), %xmm0
	movss	%xmm1, -197096(%ebp)
	movss	%xmm0, -197088(%ebp)
	movss	%xmm1, -197144(%ebp)
	movss	%xmm0, -197140(%ebp)
	movl	$1065353216, (%esp)
	movl	$1065353216, 4(%esp)
	movl	-197096(%ebp), %eax
	movl	-197088(%ebp), %ecx
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movss	-197144(%ebp), %xmm1
	movl	$1067240653, %edx
	movss	-197140(%ebp), %xmm0
	movl	$0x3f9ccccd, -197080(%ebp)
	movss	%xmm1, -197084(%ebp)
	movss	%xmm0, -197076(%ebp)
	movl	$1065353216, (%esp)
	movl	$0, 4(%esp)
	movl	-197076(%ebp), %ecx
	movl	-197084(%ebp), %eax
	call	__Z19polymost_bufferVert4vec3IfE4vec2IfE
	movl	$7, %eax
	call	__Z30polymost_finishBufferedDrawingi
	movl	_rotatespritematerialbits, %eax
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	cmpl	$15, %esi
	jle	L1194
	xorl	%edx, %edx
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	$3553, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1166
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1166:
	call	*_glad_glPopMatrix
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1196
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1196:
	xorl	%eax, %eax
	movl	$1, _prcanbucket
	movb	$0, __ZL8prdidsky
	movl	$0, -197160(%ebp)
	movl	$0, -197196(%ebp)
	movw	%ax, -197190(%ebp)
	movl	$1, -197136(%ebp)
	movl	$0, -197140(%ebp)
	.p2align 4
	.p2align 3
L1197:
	movl	-197140(%ebp), %eax
	movl	_sector, %edx
	movl	%eax, -197184(%ebp)
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	leal	(%eax,%eax,4), %ecx
	leal	(%edx,%ecx,8), %edi
	movl	_prsectors(,%eax,4), %edx
	movswl	(%edi), %esi
	sall	$5, %esi
	addl	_wall, %esi
	testb	$2, 560(%edx)
	je	L1501
L1198:
	xorl	%ebx, %ebx
	jmp	L1201
	.p2align 4,,10
	.p2align 3
L1200:
	movswl	2(%edi), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cmpl	%eax, %ebx
	jge	L1502
L1201:
	movswl	12(%esi), %eax
	testw	%ax, %ax
	js	L1199
	movl	_prsectors(,%eax,4), %edx
	testb	$2, 560(%edx)
	je	L1503
L1199:
	movswl	(%edi), %eax
	movl	%eax, %edx
	addl	%ebx, %eax
	movl	_prwalls(,%eax,4), %eax
	testb	$2, 796(%eax)
	jne	L1200
	leal	(%edx,%ebx), %eax
	addl	$1, %ebx
	addl	$32, %esi
	cwtl
	call	_polymer_updatewall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%eax, %ebx
	jl	L1201
L1502:
	movl	-197140(%ebp), %esi
	xorl	%edx, %edx
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	call	_polymer_drawsector.lto_priv.0
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	movswl	_headspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	js	L1202
	movl	_sprite, %esi
	cmpb	$0, _showinvisibility
	jne	L1481
	movl	%edi, -197144(%ebp)
	movl	%esi, %edi
	.p2align 4
	.p2align 3
L1207:
	imull	$44, %eax, %edx
	addl	%edi, %edx
	movzwl	12(%edx), %ecx
	testw	%cx, %cx
	js	L1206
	movzbl	20(%edx), %ebx
	movb	%bl, -197128(%ebp)
	testb	%bl, %bl
	je	L1206
	movzbl	21(%edx), %ebx
	movb	%bl, -197132(%ebp)
	testb	%bl, %bl
	je	L1206
	cmpl	$4095, -197160(%ebp)
	jle	L1504
	.p2align 4
	.p2align 3
L1206:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L1207
	movl	-197144(%ebp), %edi
L1202:
	movzwl	(%edi), %edx
	xorl	%eax, %eax
	movswl	2(%edi), %ecx
	movl	%edi, -197152(%ebp)
	cmpl	$0, _pr_buckets
	movl	_wall, %esi
	sete	%al
	leal	-1(%ecx), %ebx
	movw	%dx, -197156(%ebp)
	movw	%ax, -197128(%ebp)
	movswl	%dx, %eax
	movw	%dx, -197164(%ebp)
	movl	%eax, %edx
	sall	$5, %edx
	movl	%ebx, -197144(%ebp)
	addl	%esi, %edx
	movl	%edx, -197132(%ebp)
	movl	%ebx, %edx
	movl	-197132(%ebp), %edi
	movl	%eax, -197132(%ebp)
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1213:
	movl	%edx, %ebx
	sall	$5, %ebx
	cmpw	$0, 12(%edi,%ebx)
	jns	L1212
	orw	-197128(%ebp), %ax
L1212:
	subl	$1, %edx
	jns	L1213
	movl	-197144(%ebp), %ebx
	movw	%ax, -197176(%ebp)
	movl	-197152(%ebp), %edi
	movl	-197132(%ebp), %eax
	testl	%ebx, %ebx
	js	L1482
	movl	%edi, -197144(%ebp)
	leal	-1(%ecx), %edi
	movzwl	-197156(%ebp), %ecx
	jmp	L1237
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1216:
	leal	-1(%edi), %eax
	movl	%ecx, %edx
L1224:
	cmpl	$-1, %eax
	je	L1505
	movl	_wall, %esi
	movl	%eax, %edi
	movswl	%cx, %eax
L1237:
	addl	%edi, %eax
	sall	$5, %eax
	cmpw	$0, 12(%esi,%eax)
	js	L1216
	addl	%edi, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	movw	%di, -197152(%ebp)
	movswl	%cx, %ecx
	call	_wallvisible
	xorps	%xmm5, %xmm5
	testl	%eax, %eax
	movl	-197144(%ebp), %eax
	je	L1489
	movswl	(%eax), %eax
	movl	%edi, -197156(%ebp)
	leal	-196704(%ebp), %esi
	movl	%eax, %ecx
	addl	%edi, %eax
	movl	%eax, -197172(%ebp)
	movl	_prwalls(,%eax,4), %eax
	movw	%cx, -197168(%ebp)
	movl	504(%eax), %ebx
	movl	%eax, -197164(%ebp)
	movl	508(%eax), %eax
	movl	%ebx, -197180(%ebp)
	leal	-24(%ebx), %edi
	movl	%eax, -197128(%ebp)
	leal	(%eax,%eax,2), %eax
	leal	-24(%ebx,%eax,8), %eax
	movl	%eax, -197132(%ebp)
L1219:
	movl	-197128(%ebp), %ebx
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197132(%ebp), %eax
	leal	-1(%ebx), %edx
	.p2align 6
	.p2align 4
	.p2align 3
L1218:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm6
	xorl	%ebx, %ebx
	mulss	%xmm3, %xmm6
	mulss	%xmm4, %xmm0
	addss	%xmm6, %xmm0
	movss	8(%eax), %xmm6
	mulss	%xmm2, %xmm6
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm5
	seta	%bl
	subl	$24, %eax
	subl	%ebx, %edx
	cmpl	%eax, %edi
	jne	L1218
	cmpl	$-1, %edx
	je	L1483
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1219
	movl	-197156(%ebp), %edi
	movzwl	-197168(%ebp), %edx
	cmpl	$4, -197128(%ebp)
	je	L1506
L1221:
	movl	-197164(%ebp), %eax
	leal	504(%eax), %esi
	movl	-197172(%ebp), %eax
	sall	$5, %eax
	addl	_wall, %eax
	movzwl	14(%eax), %edx
	movl	%edx, %ebx
	andl	$48, %ebx
	cmpw	$16, %bx
	je	L1507
	movl	_depth, %ebx
	testl	%ebx, %ebx
	jne	L1228
	testb	$16, _overridematerial+1
	je	L1228
	cmpw	$560, 18(%eax)
	je	L1508
L1228:
	andl	$32, %edx
	jne	L1216
L1227:
	cmpw	$0, -197176(%ebp)
	je	L1230
	movswl	12(%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%eax), %ecx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	andl	%edx, %ecx
	cmpb	%cl, %dl
	je	L1230
	movss	LC38, %xmm0
	movl	-197164(%ebp), %eax
	mulss	_fglobalposz, %xmm0
	movss	_fglobalposy, %xmm1
	mulss	564(%eax), %xmm0
	mulss	560(%eax), %xmm1
	addss	%xmm1, %xmm0
	movss	_fglobalposx, %xmm1
	mulss	568(%eax), %xmm1
	subss	%xmm1, %xmm0
	addss	572(%eax), %xmm0
	movss	LC16, %xmm1
	comiss	%xmm0, %xmm1
	ja	L1230
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	*_glad_glColorMask
	subl	$16, %esp
	movl	$0, (%esp)
	call	*_glad_glDepthMask
	movl	-197144(%ebp), %ebx
	subl	$4, %esp
	movswl	(%ebx), %eax
	movl	$1, (%esp)
	addl	%edi, %eax
	leal	__ZL7queryid(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glGenQueries
	movswl	(%ebx), %eax
	subl	$8, %esp
	addl	%edi, %eax
	movl	__ZL7queryid(,%eax,4), %eax
	movl	$35092, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBeginQuery
	movl	-197164(%ebp), %eax
	movl	_overridematerial, %ebx
	subl	$8, %esp
	movl	$0, _overridematerial
	movzbl	788(%eax), %eax
	movb	%al, -197128(%ebp)
	notl	%eax
	testb	$5, %al
	je	L1509
L1234:
	movl	%esi, %eax
	call	_polymer_drawplane.lto_priv.0
	movl	-197164(%ebp), %eax
	movzbl	788(%eax), %eax
	movb	%al, -197128(%ebp)
	notl	%eax
	testb	$10, %al
	je	L1510
L1235:
	movl	%ebx, _overridematerial
	movl	$35092, (%esp)
	call	*_glad_glEndQuery
	subl	$4, %esp
	movl	$1, (%esp)
	call	*_glad_glDepthMask
	subl	$4, %esp
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glColorMask
	movl	-197144(%ebp), %eax
	subl	$16, %esp
	movzwl	(%eax), %ecx
	jmp	L1216
L1501:
	cmpl	$2, _pr_nullrender
	jg	L1198
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1198
	.p2align 4,,10
	.p2align 3
L1503:
	cmpl	$2, _pr_nullrender
	jg	L1199
	call	_polymer_updatesector.part.0.isra.0
	jmp	L1199
L1230:
	movl	-197172(%ebp), %eax
	movl	$-1, __ZL7queryid(,%eax,4)
	movl	-197144(%ebp), %eax
	.p2align 4
	.p2align 3
L1489:
	movzwl	(%eax), %ecx
	jmp	L1216
	.p2align 4,,10
	.p2align 3
L1505:
	movl	-197144(%ebp), %edi
	movl	-197140(%ebp), %esi
	movl	%edx, %ecx
	movswl	2(%edi), %ebx
	subl	$1, %ebx
	jmp	L1240
	.p2align 4,,10
	.p2align 3
L1238:
	subl	$1, %ebx
	js	L1239
L1511:
	movzwl	(%edi), %ecx
L1240:
	addl	%ebx, %ecx
	movl	_globalposy, %edx
	movl	_globalposx, %eax
	movswl	%cx, %ecx
	call	_wallvisible
	testl	%eax, %eax
	je	L1238
	movzwl	(%edi), %edx
	movswl	__ZL11sectorqueue.lto_priv.0(%esi,%esi), %eax
	addl	%ebx, %edx
	movswl	%dx, %edx
	call	_polymer_drawwall.lto_priv.0
	subl	$1, %ebx
	jns	L1511
L1239:
	movl	-197140(%ebp), %eax
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.0
	testw	%ax, %ax
	jns	L1512
L1242:
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	jns	L1513
L1250:
	movswl	2(%edi), %ebx
	movl	%edi, %esi
	subl	$1, %ebx
	cmpw	$0, -197176(%ebp)
	jne	L1257
	jmp	L1264
	.p2align 4,,10
	.p2align 3
L1515:
	movl	$0, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	cmpl	$-1, __ZL7queryid(,%eax,4)
	je	L1514
	movl	$0, __ZL7queryid(,%eax,4)
L1262:
	movswl	(%esi), %eax
	movl	-197132(%ebp), %edi
	movl	-197136(%ebp), %ecx
	addl	%ebx, %eax
	sall	$5, %eax
	movzwl	12(%edi,%eax), %eax
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%ecx,%ecx)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	sall	$5, %eax
	movswl	12(%edi,%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, __ZL12drawingstate.lto_priv.0(%eax)
	leal	1(%ecx), %eax
	movl	%eax, -197136(%ebp)
L1259:
	subl	$1, %ebx
	js	L1265
L1264:
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %edi
	movl	%edi, -197128(%ebp)
	testl	%edi, %edi
	je	L1259
	movl	_wall, %edi
	movl	%eax, %edx
	sall	$5, %edx
	movswl	12(%edi,%edx), %edx
	movl	%edi, -197132(%ebp)
	movl	%edx, %edi
	sarl	$3, %edx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %edi
	movl	%edi, %ecx
	andb	__ZL12drawingstate.lto_priv.0(%edx), %cl
	movl	%ecx, %edx
	movl	%edi, %ecx
	cmpb	%cl, %dl
	jne	L1515
	cmpl	$-1, -197128(%ebp)
	je	L1259
	leal	__ZL7queryid(,%eax,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	subl	$1, %ebx
	jns	L1264
	.p2align 4
	.p2align 3
L1265:
	addl	$1, -197140(%ebp)
	movl	-197136(%ebp), %esi
	cmpl	%esi, -197140(%ebp)
	jne	L1197
	call	_polymer_emptybuckets.lto_priv.0
	movl	_pr_buckets, %eax
	testl	%eax, %eax
	jne	L1516
L1273:
	movl	-197196(%ebp), %eax
	leal	-1(%eax), %esi
	testl	%eax, %eax
	je	L1277
	movl	%esi, -197128(%ebp)
	leal	-196912(%ebp), %edi
L1299:
	movl	_prrts, %eax
	movl	12(%eax), %eax
	movl	$36160, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glBindFramebufferEXT
	subl	$8, %esp
	movl	$2048, (%esp)
	call	*_glad_glPushAttrib
	movl	_windowxy2+4, %eax
	movl	_windowxy1, %edx
	subl	$4, %esp
	movl	%eax, %ecx
	subl	_windowxy1+4, %ecx
	notl	%eax
	addl	$1, %ecx
	movl	%ecx, 12(%esp)
	movl	_windowxy2, %ecx
	subl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%esp)
	addl	_ydim, %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	*_glad_glViewport
	subl	$16, %esp
	movl	$16640, (%esp)
	call	*_glad_glClear
	movl	_curskymodelviewmatrix, %eax
	subl	$4, %esp
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	4(%eax), %edx
	movl	%edx, 4(%edi)
	movl	8(%eax), %edx
	movl	%edx, 8(%edi)
	movl	12(%eax), %edx
	movl	%edx, 12(%edi)
	movl	16(%eax), %edx
	movl	%edx, 16(%edi)
	movl	20(%eax), %edx
	movl	%edx, 20(%edi)
	movl	24(%eax), %edx
	movl	%edx, 24(%edi)
	movl	28(%eax), %edx
	movl	%edx, 28(%edi)
	movl	32(%eax), %edx
	movl	%edx, 32(%edi)
	movl	36(%eax), %edx
	movl	%edx, 36(%edi)
	movl	40(%eax), %edx
	movl	%edx, 40(%edi)
	movl	44(%eax), %edx
	movl	%edx, 44(%edi)
	movl	48(%eax), %edx
	movl	%edx, 48(%edi)
	movl	52(%eax), %edx
	movl	%edx, 52(%edi)
	movl	56(%eax), %edx
	movl	%edx, 56(%edi)
	movl	60(%eax), %eax
	movl	%edi, _curskymodelviewmatrix
	movl	%eax, 60(%edi)
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPushMatrix
	movl	-197128(%ebp), %esi
	leal	-197072(%ebp), %eax
	movl	-196784(%ebp,%esi,8), %ebx
	flds	56(%ebx)
	fstpl	-197072(%ebp)
	flds	60(%ebx)
	fstpl	-197064(%ebp)
	flds	64(%ebx)
	fstpl	-197056(%ebp)
	flds	68(%ebx)
	fstpl	-197048(%ebp)
	movl	%eax, 4(%esp)
	movl	$12288, (%esp)
	call	*_glad_glClipPlane
	movl	(%ebx), %eax
	movss	56(%ebx), %xmm4
	movss	60(%ebx), %xmm1
	movss	64(%ebx), %xmm0
	subl	$8, %esp
	movss	(%eax), %xmm3
	movss	4(%eax), %xmm2
	movaps	%xmm4, %xmm6
	movaps	%xmm1, %xmm7
	mulss	%xmm1, %xmm2
	mulss	%xmm4, %xmm3
	addss	%xmm2, %xmm3
	movss	8(%eax), %xmm2
	leal	-196848(%ebp), %eax
	movl	$0x00000000, -196836(%ebp)
	movl	$0x00000000, -196820(%ebp)
	movl	$0x00000000, -196804(%ebp)
	mulss	%xmm0, %xmm2
	movl	$0x3f800000, -196788(%ebp)
	movaps	%xmm3, %xmm5
	movss	LC1, %xmm3
	addss	%xmm2, %xmm5
	movaps	%xmm4, %xmm2
	addss	%xmm4, %xmm2
	addss	%xmm5, %xmm5
	mulss	%xmm2, %xmm6
	xorps	LC25, %xmm2
	mulss	%xmm5, %xmm4
	subss	%xmm6, %xmm3
	movss	LC1, %xmm6
	movss	%xmm4, -196800(%ebp)
	movss	%xmm3, -196848(%ebp)
	movaps	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm0, %xmm2
	movss	%xmm3, -196844(%ebp)
	movss	%xmm3, -196832(%ebp)
	movaps	%xmm1, %xmm3
	addss	%xmm1, %xmm3
	movss	%xmm2, -196840(%ebp)
	mulss	%xmm5, %xmm1
	movss	%xmm2, -196816(%ebp)
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	mulss	%xmm3, %xmm7
	xorps	LC25, %xmm3
	mulss	%xmm0, %xmm3
	movss	%xmm1, -196796(%ebp)
	mulss	%xmm0, %xmm2
	mulss	%xmm5, %xmm0
	subss	%xmm7, %xmm6
	movss	%xmm3, -196824(%ebp)
	movss	%xmm3, -196812(%ebp)
	movss	LC1, %xmm3
	movss	%xmm6, -196828(%ebp)
	subss	%xmm2, %xmm3
	movss	%xmm0, -196792(%ebp)
	movss	%xmm3, -196808(%ebp)
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	subl	$4, %esp
	call	*_glad_glPushMatrix
	movl	_curskymodelviewmatrix, %eax
	movl	%eax, (%esp)
	call	*_glad_glLoadMatrixf
	leal	-196848(%ebp), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	call	*_glad_glMultMatrixf
	movl	_curskymodelviewmatrix, %eax
	subl	$4, %esp
	movl	%eax, 4(%esp)
	movl	$2982, (%esp)
	call	*_glad_glGetFloatv
	subl	$8, %esp
	call	*_glad_glPopMatrix
	movl	$1029, %ecx
	movl	$1028, %eax
	cmpl	$1028, _culledface
	cmove	%ecx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	movl	_globalposz, %ecx
	movl	_globalposy, %edx
	subl	$4, %esp
	movzwl	-196778(%ebp,%esi,8), %eax
	movl	%ecx, -197140(%ebp)
	movl	_globalposx, %ecx
	movl	%edx, -197136(%ebp)
	movl	%ecx, -197132(%ebp)
	testw	%ax, %ax
	jns	L1517
L1280:
	movl	-197140(%ebp), %esi
	xorps	%xmm5, %xmm5
	xorps	%xmm7, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2ssl	-197136(%ebp), %xmm5
	movss	60(%ebx), %xmm2
	movss	56(%ebx), %xmm3
	testl	%esi, %esi
	leal	15(%esi), %eax
	movss	64(%ebx), %xmm1
	cmovns	%esi, %eax
	movaps	%xmm2, %xmm4
	sarl	$4, %eax
	movaps	%xmm5, %xmm0
	movss	%xmm5, -197144(%ebp)
	movaps	%xmm2, %xmm5
	mulss	%xmm3, %xmm0
	negl	%eax
	cvtsi2ssl	%eax, %xmm7
	movl	-197132(%ebp), %eax
	mulss	%xmm2, %xmm5
	negl	%eax
	cvtsi2ssl	%eax, %xmm6
	mulss	%xmm7, %xmm4
	addss	%xmm4, %xmm0
	movaps	%xmm1, %xmm4
	mulss	%xmm6, %xmm4
	addss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	addss	68(%ebx), %xmm0
	mulss	%xmm3, %xmm4
	addss	%xmm4, %xmm5
	movaps	%xmm1, %xmm4
	mulss	%xmm1, %xmm4
	addss	%xmm5, %xmm4
	divss	%xmm4, %xmm0
	xorps	LC25, %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addss	%xmm1, %xmm1
	addss	%xmm3, %xmm3
	addss	-197144(%ebp), %xmm3
	addss	%xmm2, %xmm2
	addss	%xmm6, %xmm1
	cvttss2sil	%xmm3, %ecx
	addss	%xmm7, %xmm2
	cvttss2sil	%xmm1, %edx
	cvttss2sil	%xmm2, %eax
	movl	%ecx, _globalposy
	negl	%edx
	cvtsi2ssl	%edx, %xmm0
	movl	%edx, _globalposx
	negl	%eax
	sall	$4, %eax
	movl	%eax, _globalposz
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movl	-197128(%ebp), %ecx
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	_depth, %eax
	leal	1(%eax), %edx
	movl	%edx, _depth
	movl	-196784(%ebp,%ecx,8), %edx
	movss	%xmm0, _fglobalposz
	movl	-196780(%ebp,%ecx,8), %ecx
	movl	%edx, _mirrors(,%eax,8)
	movl	%ecx, _mirrors+4(,%eax,8)
	movl	-197128(%ebp), %eax
	movl	%edx, -197152(%ebp)
	movswl	-196780(%ebp,%eax,8), %eax
	movl	%ecx, -197148(%ebp)
	call	_polymer_displayrooms.lto_priv.0
	movl	-197132(%ebp), %eax
	xorps	%xmm0, %xmm0
	movl	-197200(%ebp), %ecx
	movss	-197144(%ebp), %xmm5
	movl	$12288, %edx
	subl	$1, _depth
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _globalposx
	movl	-197136(%ebp), %eax
	movl	%ecx, _cursectormasks
	movl	-197204(%ebp), %ecx
	movl	%eax, _globalposy
	movl	$_gl+88, %eax
	movl	%ecx, _cursectormaskcount
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-197140(%ebp), %xmm0
	movl	%esi, _globalposz
	movss	%xmm5, _fglobalposy
	movss	%xmm0, _fglobalposz
	call	_inthash_find
	testl	%eax, %eax
	je	L1297
	movl	$12288, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$12288, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1297:
	cmpl	$1028, _culledface
	movl	$1029, %ecx
	movl	$1028, %eax
	cmove	%ecx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	movl	$5888, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glPopMatrix
	call	*_glad_glPopAttrib
	movl	$0, 4(%esp)
	movl	$36160, (%esp)
	call	*_glad_glBindFramebufferEXT
	movl	_prrts, %eax
	subl	$8, %esp
	movl	4(%eax), %eax
	movl	%eax, 160(%ebx)
	movl	%ebx, %eax
	call	_polymer_drawplane.lto_priv.0
	subl	$1, -197128(%ebp)
	movl	$0, 160(%ebx)
	cmpl	$-1, -197128(%ebp)
	jne	L1299
L1277:
	movl	-197160(%ebp), %eax
	movl	%eax, _spritesortcnt
	imull	$44, %eax, %eax
	movl	%eax, 8(%esp)
	movl	-197188(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	_tsprite, %eax
	movl	%eax, (%esp)
	call	_memcpy
	movswl	-197190(%ebp), %eax
	leal	-196624(%ebp), %edx
	movw	%ax, _maskwallcnt
	addl	%eax, %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$_maskwall, (%esp)
	call	_memcpy
	movl	_depth, %eax
	testl	%eax, %eax
	jne	L1518
L1133:
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
L1268:
	.cfi_restore_state
	movl	$0, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %eax
	cmpl	$-1, %eax
	je	L1271
	leal	-197124(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	$34918, 4(%esp)
	call	*_glad_glGetQueryObjectiv
	movswl	(%esi), %eax
	subl	$12, %esp
	addl	%ebx, %eax
	movl	$1, (%esp)
	leal	__ZL7queryid(,%eax,4), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	movl	-197124(%ebp), %eax
	testl	%eax, %eax
	je	L1267
	movl	_wall, %eax
	movl	%eax, -197132(%ebp)
L1272:
	movswl	(%esi), %eax
	movl	-197132(%ebp), %edi
	movl	-197136(%ebp), %ecx
	addl	%ebx, %eax
	sall	$5, %eax
	movzwl	12(%edi,%eax), %eax
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%ecx,%ecx)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	sall	$5, %eax
	movswl	12(%edi,%eax), %eax
	movl	%eax, %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	orb	%dl, __ZL12drawingstate.lto_priv.0(%eax)
	leal	1(%ecx), %eax
	movl	%eax, -197136(%ebp)
L1267:
	subl	$1, %ebx
	js	L1265
L1257:
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	__ZL7queryid(,%eax,4), %edi
	movl	%edi, -197128(%ebp)
	testl	%edi, %edi
	je	L1267
	movl	_wall, %edi
	movl	%eax, %edx
	sall	$5, %edx
	movswl	12(%edi,%edx), %edx
	movl	%edi, -197132(%ebp)
	movl	%edx, %edi
	sarl	$3, %edx
	andl	$7, %edi
	movzbl	__ZL8pow2char.lto_priv.9(%edi), %edi
	movl	%edi, %ecx
	andb	__ZL12drawingstate.lto_priv.0(%edx), %cl
	movl	%ecx, %edx
	movl	%edi, %ecx
	cmpb	%dl, %cl
	jne	L1268
	cmpl	$-1, -197128(%ebp)
	je	L1267
	leal	__ZL7queryid(,%eax,4), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteQueries
	movswl	(%esi), %eax
	subl	$8, %esp
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1267
L1481:
	movl	%edi, -197132(%ebp)
	.p2align 4
	.p2align 3
L1203:
	imull	$44, %eax, %edx
	addl	%esi, %edx
	movzbl	20(%edx), %ecx
	movb	%cl, -197128(%ebp)
	testb	%cl, %cl
	je	L1211
	movzbl	21(%edx), %edi
	movl	%edi, %ebx
	testb	%bl, %bl
	je	L1211
	cmpl	$4095, -197160(%ebp)
	jle	L1519
	.p2align 4
	.p2align 3
L1211:
	movswl	_nextspritesect(%eax,%eax), %eax
	testl	%eax, %eax
	jns	L1203
	movl	-197132(%ebp), %edi
	jmp	L1202
L1483:
	movl	-197156(%ebp), %edi
	jmp	L1216
L1512:
	cwtl
	movzwl	_headsectbunch(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1242
	movl	%edi, -197168(%ebp)
	xorps	%xmm5, %xmm5
	.p2align 4
	.p2align 3
L1248:
	movswl	%ax, %ecx
	testw	%ax, %ax
	js	L1307
	movl	%ecx, %esi
	movl	%eax, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	movl	%esi, -197152(%ebp)
	movb	%bl, -197144(%ebp)
	notl	%ebx
	movb	%dl, -197132(%ebp)
	testb	%bl, -197132(%ebp)
	je	L1307
	movl	_prsectors(,%ecx,4), %edx
	movw	%ax, -197164(%ebp)
	leal	-196704(%ebp), %esi
	movl	%ecx, -197156(%ebp)
	movl	256(%edx), %ebx
	movl	260(%edx), %edi
	subl	$24, %ebx
	leal	(%edi,%edi,2), %edx
	leal	(%ebx,%edx,8), %edx
	movl	%edx, -197128(%ebp)
L1246:
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	leal	-1(%edi), %edx
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197128(%ebp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1245:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm6
	xorl	%ecx, %ecx
	mulss	%xmm3, %xmm6
	mulss	%xmm4, %xmm0
	addss	%xmm6, %xmm0
	movss	8(%eax), %xmm6
	mulss	%xmm2, %xmm6
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm5
	seta	%cl
	subl	$24, %eax
	subl	%ecx, %edx
	cmpl	%eax, %ebx
	jne	L1245
	cmpl	$-1, %edx
	je	L1484
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1246
	movl	-197136(%ebp), %esi
	movzwl	-197164(%ebp), %eax
	movl	-197152(%ebp), %edi
	movl	-197156(%ebp), %ecx
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%esi,%esi)
	movzbl	-197144(%ebp), %eax
	orb	-197132(%ebp), %al
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%esi), %eax
	movl	%eax, -197136(%ebp)
L1307:
	movzwl	_nextsectbunch(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	jne	L1248
	movl	-197140(%ebp), %eax
	movl	-197168(%ebp), %edi
	movswl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %ebx
	movl	%ebx, %eax
	call	_yax_getbunch.constprop.1
	testw	%ax, %ax
	js	L1250
L1513:
	cwtl
	movzwl	_headsectbunch+512(%eax,%eax), %eax
	cmpw	$-1, %ax
	je	L1250
	movl	%edi, -197168(%ebp)
	xorps	%xmm5, %xmm5
	.p2align 4
	.p2align 3
L1256:
	movswl	%ax, %ecx
	testw	%ax, %ax
	js	L1306
	movl	%ecx, %esi
	movl	%eax, %edx
	sarl	$3, %esi
	andl	$7, %edx
	movzbl	__ZL12drawingstate.lto_priv.0(%esi), %ebx
	movzbl	__ZL8pow2char.lto_priv.9(%edx), %edx
	movl	%esi, -197152(%ebp)
	movb	%bl, -197144(%ebp)
	notl	%ebx
	movb	%dl, -197132(%ebp)
	testb	%bl, -197132(%ebp)
	je	L1306
	movl	_prsectors(,%ecx,4), %edx
	movw	%ax, -197164(%ebp)
	leal	-196704(%ebp), %esi
	movl	%ecx, -197156(%ebp)
	movl	4(%edx), %ebx
	movl	8(%edx), %edi
	subl	$24, %ebx
	leal	(%edi,%edi,2), %edx
	leal	(%ebx,%edx,8), %edx
	movl	%edx, -197128(%ebp)
L1254:
	movss	64(%esi), %xmm4
	movss	68(%esi), %xmm3
	leal	-1(%edi), %edx
	movss	72(%esi), %xmm2
	movss	76(%esi), %xmm1
	movl	-197128(%ebp), %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1253:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm6
	xorl	%ecx, %ecx
	mulss	%xmm3, %xmm6
	mulss	%xmm4, %xmm0
	addss	%xmm6, %xmm0
	movss	8(%eax), %xmm6
	mulss	%xmm2, %xmm6
	addss	%xmm6, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm0, %xmm5
	seta	%cl
	subl	$24, %eax
	subl	%ecx, %edx
	cmpl	%eax, %ebx
	jne	L1253
	cmpl	$-1, %edx
	je	L1485
	subl	$16, %esi
	leal	-196784(%ebp), %eax
	cmpl	%esi, %eax
	jne	L1254
	movl	-197136(%ebp), %esi
	movzwl	-197164(%ebp), %eax
	movl	-197152(%ebp), %edi
	movl	-197156(%ebp), %ecx
	movw	%ax, __ZL11sectorqueue.lto_priv.0(%esi,%esi)
	movzbl	-197144(%ebp), %eax
	orb	-197132(%ebp), %al
	movb	%al, __ZL12drawingstate.lto_priv.0(%edi)
	leal	1(%esi), %eax
	movl	%eax, -197136(%ebp)
L1306:
	movzwl	_nextsectbunch+8192(%ecx,%ecx), %eax
	cmpw	$-1, %ax
	jne	L1256
	movl	-197168(%ebp), %edi
	jmp	L1250
L1271:
	movl	$1, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1272
L1514:
	movl	$1, -197124(%ebp)
	movswl	(%esi), %eax
	addl	%ebx, %eax
	movl	$0, __ZL7queryid(,%eax,4)
	jmp	L1262
L1183:
	movaps	%xmm4, %xmm2
	jmp	L1182
L1506:
	movl	-197164(%ebp), %eax
	testb	$12, 788(%eax)
	jne	L1221
	movl	-197180(%ebp), %esi
	movss	4(%esi), %xmm0
	comiss	76(%esi), %xmm0
	jb	L1221
	movss	28(%esi), %xmm0
	comiss	52(%esi), %xmm0
	leal	-1(%edi), %eax
	jb	L1221
	jmp	L1224
	.p2align 4,,10
	.p2align 3
L1507:
	movswl	18(%eax), %edx
	cmpw	$0, _tilesiz(,%edx,4)
	jle	L1227
	cmpw	$0, _tilesiz+2(,%edx,4)
	jle	L1227
	movswl	-197190(%ebp), %edx
	addw	-197152(%ebp), %cx
	movl	%edx, %ebx
	movw	%cx, -196624(%ebp,%edx,2)
	addl	$1, %ebx
	movw	%bx, -197190(%ebp)
	jmp	L1227
L1519:
	movl	-197160(%ebp), %ecx
	imull	$44, %ecx, %ebx
	addl	$1, %ecx
	addl	-197188(%ebp), %ebx
	movl	%ecx, -197160(%ebp)
	movl	(%edx), %ecx
	movb	$0, 18(%ebx)
	movl	%ecx, (%ebx)
	movl	4(%edx), %ecx
	movw	%ax, 30(%ebx)
	movl	%ecx, 4(%ebx)
	movl	8(%edx), %ecx
	movl	%ecx, 8(%ebx)
	movzwl	12(%edx), %ecx
	movw	%cx, 12(%ebx)
	movl	14(%edx), %ecx
	movl	%ecx, 14(%ebx)
	movzbl	19(%edx), %ecx
	movb	%cl, 19(%ebx)
	movzbl	-197128(%ebp), %ecx
	movb	%cl, 20(%ebx)
	movl	%edi, %ecx
	movb	%cl, 21(%ebx)
	movl	22(%edx), %ecx
	movl	%ecx, 22(%ebx)
	movl	26(%edx), %ecx
	movl	%ecx, 26(%ebx)
	movl	32(%edx), %ecx
	movl	%ecx, 32(%ebx)
	movzwl	36(%edx), %ecx
	movw	%cx, 36(%ebx)
	movzwl	38(%edx), %ecx
	movl	40(%edx), %edx
	movw	%cx, 38(%ebx)
	movl	%edx, 40(%ebx)
	jmp	L1211
L1504:
	movl	-197160(%ebp), %ebx
	imull	$44, %ebx, %esi
	addl	-197188(%ebp), %esi
	addl	$1, %ebx
	movw	%cx, 12(%esi)
	movl	14(%edx), %ecx
	movl	%ebx, -197160(%ebp)
	movl	(%edx), %ebx
	movl	%ecx, 14(%esi)
	movzbl	19(%edx), %ecx
	movl	%ebx, (%esi)
	movl	4(%edx), %ebx
	movb	%cl, 19(%esi)
	movzbl	-197128(%ebp), %ecx
	movl	%ebx, 4(%esi)
	movl	8(%edx), %ebx
	movb	%cl, 20(%esi)
	movzbl	-197132(%ebp), %ecx
	movl	%ebx, 8(%esi)
	movb	%cl, 21(%esi)
	movl	22(%edx), %ecx
	movb	$0, 18(%esi)
	movl	%ecx, 22(%esi)
	movl	26(%edx), %ecx
	movw	%ax, 30(%esi)
	movl	%ecx, 26(%esi)
	movl	32(%edx), %ecx
	movl	%ecx, 32(%esi)
	movzwl	36(%edx), %ecx
	movw	%cx, 36(%esi)
	movzwl	38(%edx), %ecx
	movl	40(%edx), %edx
	movw	%cx, 38(%esi)
	movl	%edx, 40(%esi)
	jmp	L1206
L1187:
	andl	$2, %edx
	je	L1186
	jmp	L1190
L1498:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1174
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1175
L1174:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1173
	testb	$1, _globalflags
	jne	L1173
L1175:
	movl	_usehightile, %ecx
	testl	%ecx, %ecx
	jne	L1520
L1176:
	movss	LC1, %xmm0
	jmp	L1177
L1484:
	movl	-197156(%ebp), %ecx
	jmp	L1307
L1485:
	movl	-197156(%ebp), %ecx
	jmp	L1306
L1497:
	movl	%esi, %eax
	call	_tileLoad
	jmp	L1172
L1496:
	movl	%esi, %eax
	movl	%edx, -197156(%ebp)
	call	_animateoffs
	movl	-197156(%ebp), %edx
	addl	%eax, %edx
	movswl	%dx, %esi
	jmp	L1171
L1499:
	movss	LC1, %xmm1
	divss	_frealmaxshade, %xmm0
	movss	LC1, %xmm2
	subss	%xmm0, %xmm1
	movss	LC1, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm2, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	jmp	L1177
L1517:
	movl	_wall, %ecx
	movswl	%ax, %esi
	movl	%esi, -197164(%ebp)
	sall	$5, %esi
	leal	(%ecx,%esi), %edx
	movswl	8(%edx), %eax
	movl	(%edx), %esi
	sall	$5, %eax
	movl	%esi, -197152(%ebp)
	addl	%ecx, %eax
	movl	(%eax), %esi
	subl	-197152(%ebp), %esi
	movl	%esi, %ecx
	movl	4(%eax), %eax
	movl	4(%edx), %esi
	subl	%esi, %eax
	movl	%esi, -197156(%ebp)
	movl	%ecx, %esi
	imull	%ecx, %esi
	movl	%eax, -197144(%ebp)
	imull	%eax, %eax
	addl	%esi, %eax
	movl	%eax, -197172(%ebp)
	je	L1280
	movl	_qglobalhoriz, %eax
	movl	-197136(%ebp), %edx
	subl	-197156(%ebp), %edx
	imull	-197144(%ebp), %edx
	movl	%eax, -197176(%ebp)
	movl	_qglobalang, %eax
	movl	-197172(%ebp), %esi
	movl	%eax, -197168(%ebp)
	movl	-197132(%ebp), %eax
	subl	-197152(%ebp), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	leal	(%eax,%eax), %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, -197152(%ebp)
	movl	%esi, 8(%esp)
	movl	%eax, 12(%esp)
	movl	-197152(%ebp), %eax
	movl	%ecx, -197156(%ebp)
	imull	%ecx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	%esi, 8(%esp)
	sarl	$31, %esi
	movl	%esi, 12(%esp)
	movl	-197144(%ebp), %esi
	movl	-197152(%ebp), %eax
	imull	%esi
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.1
	movl	-197156(%ebp), %ecx
	movl	%esi, %edx
	call	@getangle@8
	movb	$1, _inpreparemirror
	sall	$17, %eax
	subl	-197168(%ebp), %eax
	andl	$134217727, %eax
	movl	%eax, _viewangle
	cmpl	$3, _rendmode
	je	L1282
L1490:
	movl	_globalposx, %eax
	movl	%eax, -197132(%ebp)
	movl	_globalposy, %eax
	movl	%eax, -197136(%ebp)
	movl	_globalposz, %eax
	movl	%eax, -197140(%ebp)
	jmp	L1280
L1188:
	testw	$264, %ax
	je	L1186
	movl	-197128(%ebp), %esi
	xorps	%xmm1, %xmm1
	movss	LC59, %xmm2
	movzbl	_hictinting+2(,%esi,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+3(,%esi,8), %eax
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%esi,8), %eax
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4(%ebx)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
	jmp	L1186
L1482:
	movl	-197140(%ebp), %esi
	movzwl	-197164(%ebp), %ecx
	jmp	L1240
L1516:
	movl	-197184(%ebp), %eax
	movl	$__ZL11sectorqueue.lto_priv.0, %esi
	movl	$-1, _overridematerial
	leal	__ZL11sectorqueue.lto_priv.0+2(%eax,%eax), %eax
	movl	%eax, -197128(%ebp)
L1276:
	movswl	(%esi), %eax
	movl	_sector, %edx
	leal	(%eax,%eax,4), %ebx
	leal	(%edx,%ebx,8), %edi
	xorl	%edx, %edx
	call	_polymer_drawsector.lto_priv.0
	cmpw	$0, 2(%edi)
	jle	L1274
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1275:
	movzwl	(%edi), %edx
	movswl	(%esi), %eax
	addl	%ebx, %edx
	addl	$1, %ebx
	movswl	%dx, %edx
	call	_polymer_drawwall.lto_priv.0
	movswl	2(%edi), %eax
	cmpl	%ebx, %eax
	jg	L1275
L1274:
	addl	$2, %esi
	cmpl	-197128(%ebp), %esi
	jne	L1276
	jmp	L1273
L1520:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1173
	jmp	L1176
L1492:
	movl	_skyboxdatavbo, %edx
	testl	%edx, %edx
	jne	L1139
	movl	$_skyboxdatavbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glGenBuffers
	movl	_skyboxdatavbo, %edx
	movl	$34962, %eax
	subl	$8, %esp
	call	__Z18buildgl_bindBufferjj
	movl	$35044, 12(%esp)
	movl	$__ZL10skyboxdata, 8(%esp)
	movl	$480, 4(%esp)
	movl	$34962, (%esp)
	call	*_glad_glBufferData
	movl	$34962, %eax
	subl	$16, %esp
	call	__Z18buildgl_bindBufferjj.constprop.0
	movl	_skyboxdatavbo, %edx
L1139:
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj
	cmpb	$63, _picanm+3(%ebx,%ebx,4)
	ja	L1521
L1140:
	movzbl	-197144(%ebp), %ecx
	movl	%esi, %eax
	movl	%ebx, %edx
	leal	-180240(%ebp), %edi
	movsbl	%al, %eax
	movl	%edi, -197188(%ebp)
	movl	%ecx, -197128(%ebp)
	movl	$1, _drawingskybox
	movl	$3, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, -197132(%ebp)
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	_polymer_getbuildmaterial.lto_priv.0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edi, %eax
	call	_polymer_bindmaterial.lto_priv.0
	movl	$3, %edx
	xorl	%edi, %edi
	movl	%eax, -197140(%ebp)
	xorl	%eax, %eax
	call	__Z25buildgl_bindSamplerObjectii
	movl	%ebx, -197136(%ebp)
	xorl	%ebx, %ebx
L1165:
	addl	$1, %ebx
	xorl	%ecx, %ecx
	movl	%ebx, _drawingskybox
	movl	$4, (%esp)
	movl	-197128(%ebp), %edx
	movl	-197136(%ebp), %eax
	call	_texcache_fetch
	movl	%eax, %esi
	cmpl	$3, _rendmode
	je	L1522
L1141:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-197132(%ebp), %xmm0
	mulss	_shadescale, %xmm0
	cmpl	$4, _r_usenewshading
	je	L1523
	movswl	_numshades, %eax
	movl	_shadescale_unbounded, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	testl	%edx, %edx
	jne	L1151
	cmpl	-197132(%ebp), %eax
	jg	L1524
L1151:
	movaps	%xmm3, %xmm2
L1150:
	movaps	%xmm0, %xmm1
	xorps	%xmm7, %xmm7
	cmpnltss	%xmm7, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	minss	%xmm1, %xmm2
	subss	%xmm2, %xmm0
	divss	%xmm3, %xmm0
L1145:
	movl	_glad_glColor4f, %edx
	testl	%esi, %esi
	je	L1154
L1526:
	movl	-197128(%ebp), %eax
	movzwl	34(%esi), %ecx
	movzwl	_hictinting(,%eax,8), %eax
	testb	$-60, %al
	jne	L1155
	andl	$2, %ecx
	je	L1156
	movzbl	-197144(%ebp), %ecx
	cmpb	38(%esi), %cl
	jne	L1157
	movzwl	36(%esi), %ecx
	andl	$32, %eax
	andw	$199, %cx
	orw	%cx, %ax
	je	L1158
L1157:
	movl	-197128(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC59, %xmm4
	movzbl	_hictinting+2(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm0
L1159:
	movzbl	_hictinting+2044, %eax
	cmpw	$-1, _hictinting+2042
	je	L1162
L1163:
	movzbl	_hictinting+2042, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	movzbl	_hictinting+2043, %ecx
	mulss	LC59, %xmm3
	mulss	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ecx, %xmm3
	mulss	LC59, %xmm3
	mulss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	mulss	LC59, %xmm3
	mulss	%xmm3, %xmm2
L1161:
	movl	$0x3f800000, 12(%esp)
	movss	%xmm2, 8(%esp)
	movss	%xmm1, 4(%esp)
	movss	%xmm0, (%esp)
	call	*%edx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L1302
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1302:
	movl	12(%esi), %eax
L1305:
	call	__Z19buildgl_bindTexturejj.constprop.0
	movl	%edi, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$3, (%esp)
	call	*_glad_glVertexPointer
	leal	12(%edi), %eax
	subl	$16, %esp
	movl	%eax, 12(%esp)
	movl	$20, 8(%esp)
	movl	$5126, 4(%esp)
	movl	$2, (%esp)
	call	*_glad_glTexCoordPointer
	subl	$16, %esp
	movl	$4, 8(%esp)
	movl	$0, 4(%esp)
	movl	$7, (%esp)
	call	*_glad_glDrawArrays
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1164
	movl	$3553, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1164:
	addl	$80, %edi
	cmpl	$6, %ebx
	jne	L1165
	movl	-197140(%ebp), %eax
	movl	$0, _drawingskybox
	call	_polymer_unbindmaterial.lto_priv.0
	movl	$34962, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	jmp	L1166
L1155:
	andl	$2, %ecx
	je	L1160
L1158:
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	jmp	L1159
L1522:
	movl	_r_useindexedcolortextures, %eax
	testl	%eax, %eax
	je	L1142
	movl	_gltexfiltermode, %eax
	testl	%eax, %eax
	je	L1143
L1142:
	movl	_r_usetileshades, %eax
	testl	%eax, %eax
	je	L1141
	testb	$1, _globalflags
	jne	L1141
L1143:
	movl	_usehightile, %ecx
	testl	%ecx, %ecx
	jne	L1525
L1144:
	movss	LC1, %xmm0
	movl	_glad_glColor4f, %edx
	testl	%esi, %esi
	jne	L1526
L1154:
	movl	$0x3f800000, 12(%esp)
	movss	%xmm0, 8(%esp)
	movss	%xmm0, 4(%esp)
	movss	%xmm0, (%esp)
	call	*%edx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$16, %esp
	call	_inthash_find
	cmpl	$1, %eax
	je	L1309
	movl	$3553, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3553, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1309:
	xorl	%eax, %eax
	jmp	L1305
L1523:
	movss	LC1, %xmm1
	xorps	%xmm7, %xmm7
	divss	_frealmaxshade, %xmm0
	movss	LC1, %xmm2
	subss	%xmm0, %xmm1
	movss	LC1, %xmm0
	cmpltss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	cmpnltss	%xmm7, %xmm0
	andps	%xmm1, %xmm0
	jmp	L1145
L1156:
	testw	$264, %ax
	jne	L1527
L1160:
	movaps	%xmm0, %xmm2
	movaps	%xmm0, %xmm1
	jmp	L1161
L1493:
	xorl	%eax, %eax
	jmp	L1168
L1518:
	movl	_viewangle, %eax
	call	_set_globalang
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1301
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1301:
	call	_renderDrawMasks
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1133
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
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
	ret
L1508:
	.cfi_restore_state
	andl	$32, %edx
	je	L1227
	movzwl	-197152(%ebp), %edx
	movl	-197140(%ebp), %eax
	movl	-197196(%ebp), %ebx
	movzwl	__ZL11sectorqueue.lto_priv.0(%eax,%eax), %eax
	addl	%ecx, %edx
	sall	$16, %edx
	movl	%esi, -196784(%ebp,%ebx,8)
	orl	%edx, %eax
	movl	%eax, -196780(%ebp,%ebx,8)
	movl	-197144(%ebp), %eax
	addl	$1, %ebx
	movl	%ebx, -197196(%ebp)
	movzwl	(%eax), %ecx
	jmp	L1216
L1524:
	subl	$1, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	jmp	L1150
L1282:
	movl	-197164(%ebp), %eax
	movl	$LC62, 4(%esp)
	movl	$3, (%esp)
	movl	%eax, 8(%esp)
	call	__Z26buildgl_outputDebugMessagehPKcz.constprop.0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	_viewingrange, %xmm1
	mulss	LC10, %xmm1
	movss	%xmm1, _gvrcorrection
	cmpl	$2, _glprojectionhacks
	je	L1528
L1283:
	movl	-197132(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	%eax, _globalposx
	movl	-197136(%ebp), %eax
	movl	%eax, _globalposy
	movss	%xmm0, _fglobalposx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-197140(%ebp), %eax
	movl	%eax, _globalposz
	movss	%xmm0, _fglobalposy
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	-197168(%ebp), %eax
	movss	%xmm0, _fglobalposz
	call	_set_globalang
	movl	-197176(%ebp), %esi
	movl	%esi, %eax
	sarl	$31, %eax
	xorw	%ax, %ax
	leal	32768(%esi,%eax), %edx
	testl	%edx, %edx
	leal	65535(%edx), %eax
	cmovns	%edx, %eax
	sarl	$16, %eax
	subl	$100, %eax
	movl	%eax, -197132(%ebp)
	movl	_viewingrange, %eax
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	%eax, %edx
	movl	-197132(%ebp), %eax
/APP
 # 7420 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	movl	_ydimen, %edx
	sarl	%edx
	addl	%eax, %edx
	movl	_viewingrange, %eax
	movl	%edx, _globalhoriz
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	movl	%eax, %edx
	leal	-6553600(%esi), %eax
/APP
 # 7421 "source/build/src/polymost.cpp" 1
	imull %edx; shrdl $16, %edx, %eax
 # 0 "" 2
/NO_APP
	xorps	%xmm0, %xmm0
	movl	_ydimen, %edx
	movss	_fcosglobalang, %xmm2
	cvtsi2ssl	_xdimenscale, %xmm0
	fildl	_xyaspect
	mulss	LC69, %xmm0
	movss	LC10, %xmm1
	sarl	%edx
	fmuls	_fviewingrange
	mulss	_fviewingrange, %xmm1
	fmuls	LC70
	movl	%edx, %ecx
	sall	$16, %ecx
	addl	%ecx, %eax
	movl	_xdimen, %ecx
	movss	%xmm0, _gyxscale
	movss	_fviewingrange, %xmm0
	mulss	_fxdimen, %xmm0
	mulss	LC71, %xmm0
	sarl	%ecx
	movl	%eax, _qglobalhoriz
	fstpl	_gxyaspect
	movss	%xmm0, __ZL11gviewxrange.lto_priv.0
	movss	LC72, %xmm0
	mulss	%xmm0, %xmm2
	mulss	_fsinglobalang, %xmm0
	movss	%xmm2, _gcosang
	mulss	%xmm1, %xmm2
	movss	%xmm0, _gsinang
	mulss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	movss	%xmm2, _gcosang2
	movss	%xmm0, _gsinang2
	xorps	%xmm0, %xmm0
	movss	%xmm1, _ghalfy
	cvtsi2ssl	%ecx, %xmm0
	movss	LC1, %xmm1
	movss	%xmm0, _ghalfx
	mulss	LC73, %xmm0
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movl	_viewingrange, %eax
	mulss	LC10, %xmm0
	movss	%xmm0, __ZL6ghoriz.lto_priv.0
	movss	%xmm1, _grhalfxdown10
	movl	%eax, 8(%esp)
	sarl	$31, %eax
	movl	%eax, 12(%esp)
	movl	_xdimenscale, %eax
	cltd
	shldl	$16, %eax, %edx
	sall	$16, %eax
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_tabledivide64.lto_priv.7
	xorps	%xmm0, %xmm0
	movl	$0x00000000, __ZL13ghorizcorrect.lto_priv.0
	cvtsi2ssl	_globalvisibility, %xmm0
	mulss	LC74, %xmm0
	movss	%xmm0, _gvisibility
	call	__ZL13resizeglcheckv.lto_priv.0
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movss	__ZL6ghoriz.lto_priv.0, %xmm1
	addss	__ZL13ghorizcorrect.lto_priv.0, %xmm1
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	movl	_r_yshearing, %eax
	testl	%eax, %eax
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	je	L1286
	movss	LC1, %xmm1
	movss	%xmm3, _gshang
L1287:
	movl	$0x3f800000, _gctang
	fldz
	movl	$0x00000000, _gstang
	movss	%xmm1, _gchang
	movss	%xmm0, __ZL7ghoriz2.lto_priv.0
	movss	%xmm2, __ZL6ghoriz.lto_priv.0
/APP
 # 206 "G:/msys64-2/mingw32/include/math.h" 1
	fabs;
 # 0 "" 2
/NO_APP
	fstp	%st(0)
	movss	_grhalfxdown10, %xmm0
	movl	$2960, %edx
	movl	$_gl+88, %eax
	movss	%xmm0, _grhalfxdown10x
	call	_inthash_find
	cmpl	$1, %eax
	je	L1292
	movl	$2960, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2960, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1292:
	movl	$1024, (%esp)
	call	*_glad_glClear
	subl	$4, %esp
	movl	$7681, 8(%esp)
	movl	$7681, 4(%esp)
	movl	$7681, (%esp)
	call	*_glad_glStencilOp
	subl	$12, %esp
	movl	$255, 8(%esp)
	movl	$1, 4(%esp)
	movl	$519, (%esp)
	call	*_glad_glStencilFunc
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$12, %esp
	call	_inthash_find
	testl	%eax, %eax
	je	L1293
	movl	$3008, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1293:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1294
	movl	$2929, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1294:
	movl	-197164(%ebp), %eax
	call	__ZL29polymost_drawmaskwallinternali.lto_priv.0
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1295
	movl	$3008, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$3008, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1295:
	movl	$2929, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1296
	movl	$2929, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2929, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1296:
	movl	$255, 8(%esp)
	movl	$1, 4(%esp)
	movl	$514, (%esp)
	call	*_glad_glStencilFunc
	subl	$12, %esp
	movl	$7680, 8(%esp)
	movl	$7680, 4(%esp)
	movl	$7680, (%esp)
	call	*_glad_glStencilOp
	subl	$12, %esp
	jmp	L1490
L1527:
	movl	-197128(%ebp), %ecx
	xorps	%xmm3, %xmm3
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	movss	LC59, %xmm4
	movzbl	_hictinting+2(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm3
	movzbl	_hictinting+3(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm1
	movzbl	_hictinting+4(,%ecx,8), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm0
	jmp	L1161
L1521:
	movl	%ebx, %eax
	call	_animateoffs
	addw	%ax, -197136(%ebp)
	movswl	-197136(%ebp), %ebx
	jmp	L1140
L1500:
	cmpb	$-1, %al
	jne	L1191
	jmp	L1186
L1525:
	movl	_globalpal, %edx
	movswl	_globalpicnum, %eax
	movzwl	_hictinting(,%edx,8), %ecx
	andl	$256, %ecx
	call	_hicfindsubst
	testl	%eax, %eax
	jne	L1141
	jmp	L1144
L1510:
	movl	-197164(%ebp), %eax
	addl	$252, %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1235
L1509:
	movl	-197164(%ebp), %eax
	call	_polymer_drawplane.lto_priv.0
	jmp	L1234
L1491:
	movl	$2, %eax
	call	__Z13handle_memerri
L1134:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1495:
	leal	-180240(%ebp), %eax
	movl	%eax, -197188(%ebp)
	movl	%esi, %eax
	movsbl	%al, %eax
	movl	%eax, -197132(%ebp)
	jmp	L1170
L1162:
	cmpb	$-1, %al
	jne	L1163
	jmp	L1161
L1528:
	movl	_windowxy2+4, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	subl	_windowxy1+4, %eax
	movss	%xmm1, -197152(%ebp)
	cvtsi2ssl	_yxaspect, %xmm3
	cvtsi2ssl	%eax, %xmm0
	movl	_windowxy2, %eax
	subl	_windowxy1, %eax
	mulss	_fviewingrange, %xmm0
	cvtsi2ssl	%eax, %xmm2
	mulss	LC63, %xmm0
	mulss	%xmm3, %xmm2
	mulss	LC64, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	xorps	%xmm2, %xmm2
	fstps	-197144(%ebp)
	movss	-197144(%ebp), %xmm0
	mulss	LC65, %xmm0
	addss	LC66, %xmm0
	subss	LC67, %xmm0
	comiss	%xmm2, %xmm0
	jbe	L1283
	mulss	LC68, %xmm0
	movss	-197152(%ebp), %xmm1
	addss	LC1, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, _gvrcorrection
	jmp	L1283
L1286:
	movss	_ghalfx, %xmm1
	movss	_gvrcorrection, %xmm4
	mulss	%xmm1, %xmm1
	mulss	%xmm4, %xmm4
	divss	%xmm4, %xmm1
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	addss	%xmm4, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	L1476
	sqrtss	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	movss	LC1, %xmm1
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	L1529
L1290:
	sqrtss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	jmp	L1287
L1476:
	movss	%xmm0, -197136(%ebp)
	movss	%xmm1, (%esp)
	call	_sqrtf
	movss	-197136(%ebp), %xmm0
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	movss	LC1, %xmm1
	fstps	-197132(%ebp)
	divss	-197132(%ebp), %xmm0
	movss	%xmm0, _gshang
	mulss	%xmm0, %xmm0
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	subss	%xmm0, %xmm1
	jmp	L1290
L1529:
	movss	%xmm1, (%esp)
	call	_sqrtf
	movl	_ydimen, %eax
	xorps	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	fstps	-197132(%ebp)
	movss	-197132(%ebp), %xmm1
	sarl	%eax
	cvtsi2ssl	%eax, %xmm2
	jmp	L1287
	.cfi_endproc
LFE57:
	.globl	_prartmaps
	.bss
	.align 32
_prartmaps:
	.space 122880
	.globl	_prlookups
	.align 32
_prlookups:
	.space 1024
	.globl	_prbasepalmaps
	.align 32
_prbasepalmaps:
	.space 1024
	.section .rdata,"dr"
	.align 4
__ZZ19polymer_bucketplaneE11quadindices:
	.long	0
	.long	1
	.long	2
	.long	0
	.long	2
	.long	3
	.globl	_pr_maxlightpasses
	.data
	.align 4
_pr_maxlightpasses:
	.long	10
	.globl	_glad_glVertexAttrib3fv
	.bss
	.align 4
_glad_glVertexAttrib3fv:
	.space 4
	.globl	_curlight
	.align 4
_curlight:
	.space 4
	.globl	_glad_glNormal3f
	.align 4
_glad_glNormal3f:
	.space 4
.lcomm _prindexringoffset,4,4
	.globl	_prbuckethead
	.align 4
_prbuckethead:
	.space 4
	.globl	_glad_glDrawArrays
	.align 4
_glad_glDrawArrays:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZL10skyboxdata:
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	1056964608
	.long	1056964608
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	0
	.long	0
	.long	-1090519040
	.long	1056964608
	.long	1056964608
	.long	0
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	0
	.long	1056964608
	.long	-1090519040
	.long	1056964608
	.long	0
	.long	1065353216
	.long	1056964608
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.long	-1090519040
	.long	-1090519040
	.long	-1090519040
	.long	1065353216
	.long	0
	.globl	_modelvbousage
	.align 4
_modelvbousage:
	.long	35044
	.globl	_glad_glStencilFunc
	.bss
	.align 4
_glad_glStencilFunc:
	.space 4
	.globl	_glad_glStencilOp
	.align 4
_glad_glStencilOp:
	.space 4
	.globl	_glad_glClipPlane
	.align 4
_glad_glClipPlane:
	.space 4
	.globl	_glad_glDeleteQueries
	.align 4
_glad_glDeleteQueries:
	.space 4
	.globl	_glad_glGetQueryObjectiv
	.align 4
_glad_glGetQueryObjectiv:
	.space 4
	.globl	_glad_glEndQuery
	.align 4
_glad_glEndQuery:
	.space 4
	.globl	_glad_glBeginQuery
	.align 4
_glad_glBeginQuery:
	.space 4
	.globl	_glad_glGenQueries
	.align 4
_glad_glGenQueries:
	.space 4
.lcomm __ZL8prdidsky,1,1
.lcomm __ZL9curskypal,1,1
.lcomm __ZL11curskyshade,1,1
	.globl	__ZL11sectorqueue.lto_priv.0
	.align 32
__ZL11sectorqueue.lto_priv.0:
	.space 8192
	.globl	__ZL12drawingstate.lto_priv.0
	.align 32
__ZL12drawingstate.lto_priv.0:
	.space 512
.lcomm __ZL7queryid,65536,32
	.globl	_glad_glBufferSubData
	.align 4
_glad_glBufferSubData:
	.space 4
	.section .rdata,"dr"
	.align 32
__ZL10vertsprite:
	.long	-1090519040
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	1056964608
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	1056964608
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	-1090519040
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.align 32
__ZL11horizsprite:
	.long	-1090519040
	.long	0
	.long	1056964608
	.long	0
	.long	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	1056964608
	.long	0
	.long	1056964608
	.long	1065353216
	.long	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	1056964608
	.long	0
	.long	-1090519040
	.long	1065353216
	.long	1065353216
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.long	-1090519040
	.long	0
	.long	-1090519040
	.long	0
	.long	1065353216
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.globl	_spritemodelview
	.bss
	.align 32
_spritemodelview:
	.space 64
	.globl	_prsprites
	.align 32
_prsprites:
	.space 65536
	.globl	_drawpolyVertsID
	.align 4
_drawpolyVertsID:
	.space 4
	.globl	_glad_glMapBufferRange
	.align 4
_glad_glMapBufferRange:
	.space 4
	.globl	_glad_glBufferStorage
	.align 4
_glad_glBufferStorage:
	.space 4
.lcomm _prindexring,4,4
	.globl	_mapvbousage
	.section .rdata,"dr"
	.align 4
_mapvbousage:
	.long	35040
.lcomm _prwalldataoffset,4,4
	.globl	_culledface
	.bss
	.align 4
_culledface:
	.space 4
	.globl	_glad_glPolygonMode
	.align 4
_glad_glPolygonMode:
	.space 4
	.globl	_glad_glClearStencil
	.align 4
_glad_glClearStencil:
	.space 4
	.globl	__ZL13prprogramptrs.lto_priv.0
	.align 8
__ZL13prprogramptrs.lto_priv.0:
	.space 12
	.globl	__ZL6plpool.lto_priv.0
	.align 4
__ZL6plpool.lto_priv.0:
	.space 4
.lcomm _prindexringvbo,4,4
	.globl	_prmapvbo
	.align 4
_prmapvbo:
	.space 4
	.data
	.align 32
__ZL11defaulAlloc:
	.long	__ZL9heapAllocPvj.lto_priv.0
	.long	__ZL11heapReallocPvS_j.lto_priv.0
	.long	__ZL8heapFreePvS_.lto_priv.0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.lcomm _artskydata,128,32
	.globl	_glad_glTexImage3D
	.bss
	.align 4
_glad_glTexImage3D:
	.space 4
	.globl	__ZL14prprogramtable.lto_priv.0
	.data
	.align 4
__ZL14prprogramtable.lto_priv.0:
	.long	0
	.long	341
	.space 8
.lcomm _skyboxdatavbo,4,4
	.globl	_prtess
	.bss
	.align 4
_prtess:
	.space 4
	.section .rdata,"dr"
	.align 4
LC1:
	.long	1065353216
	.align 4
LC2:
	.long	1047395703
	.align 4
LC3:
	.long	1132396544
	.align 4
LC4:
	.long	1132462080
	.align 16
LC6:
	.long	0
	.long	0
	.long	1
	.long	0
	.align 4
LC10:
	.long	931135488
	.align 4
LC11:
	.long	1067645315
	.align 4
LC12:
	.long	986255323
	.align 4
LC13:
	.long	1061158912
	.align 4
LC14:
	.long	1143142787
	.align 4
LC15:
	.long	1043595264
	.align 4
LC16:
	.long	1120403456
	.align 4
LC17:
	.long	1008981770
	.align 4
LC23:
	.long	1181376512
	.align 4
LC24:
	.long	-1082130432
	.align 16
LC25:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC26:
	.long	1118437376
	.align 4
LC27:
	.long	1126825984
	.align 4
LC30:
	.long	1045220557
	.align 4
LC31:
	.long	1048576000
	.align 4
LC33:
	.long	1083179008
	.align 4
LC35:
	.long	1113927392
	.align 4
LC36:
	.long	1056964608
	.align 4
LC38:
	.long	-1115684864
	.align 4
LC39:
	.long	1090519040
	.align 4
LC41:
	.long	1098907648
	.align 4
LC42:
	.long	1157627904
	.align 8
LC54:
	.long	1413754136
	.long	1071194619
	.align 4
LC58:
	.long	1148846080
	.align 4
LC59:
	.long	998277249
	.align 4
LC63:
	.long	1084227584
	.align 4
LC64:
	.long	1082130432
	.align 4
LC65:
	.long	1059256707
	.align 4
LC66:
	.long	1059248215
	.align 4
LC67:
	.long	1064514355
	.align 4
LC68:
	.long	1075838976
	.align 4
LC69:
	.long	922746880
	.align 4
LC70:
	.long	799014912
	.align 4
LC71:
	.long	855638016
	.align 4
LC72:
	.long	914358272
	.align 4
LC73:
	.long	1149239296
	.align 4
LC74:
	.long	950079408
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_lrintf;	.scl	2;	.type	32;	.endef
	.def	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL16dictInsertBeforeP4DictP8DictNodePv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL12CreateBucketP11BucketAlloc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL17deleteBucketAllocP11BucketAlloc.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8heapFreePvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_initrendertargets.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_tanf;	.scl	2;	.type	32;	.endef
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	_polymer_getbuildmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_bindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_polymer_unbindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	_polymer_compileprogram.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_getzsofslopeptr;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.1;	.scl	2;	.type	32;	.endef
	.def	_yax_getbunch.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawmdsprite.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_polymer_planeinlight.isra.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_polymer_addplanelight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z30polymost_checkornamentedspriteP11tspritetypePsP16wallspriteinfo_t;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
	.def	@getq16angledelta@8;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_lintersectiiiiiiii;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_engineLoadMHK;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	__ZL9heapAllocPvj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z17createBucketAllocP9TESSallocjj;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_inthash_init;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
	.def	_texcache_fetch;	.scl	2;	.type	32;	.endef
	.def	__Z29polymost_startBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_bufferVert4vec3IfE4vec2IfE;	.scl	2;	.type	32;	.endef
	.def	__Z30polymost_finishBufferedDrawingi;	.scl	2;	.type	32;	.endef
	.def	_wallvisible;	.scl	2;	.type	32;	.endef
	.def	_tileLoad;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.1;	.scl	2;	.type	32;	.endef
	.def	@getangle@8;	.scl	2;	.type	32;	.endef
	.def	_hicfindsubst;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_set_globalang;	.scl	2;	.type	32;	.endef
	.def	_renderDrawMasks;	.scl	2;	.type	32;	.endef
	.def	__Z26buildgl_outputDebugMessagehPKcz.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_tabledivide64.lto_priv.7;	.scl	2;	.type	32;	.endef
	.def	__ZL13resizeglcheckv.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZL29polymost_drawmaskwallinternali.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	__ZL11heapReallocPvS_j.lto_priv.0;	.scl	2;	.type	32;	.endef
