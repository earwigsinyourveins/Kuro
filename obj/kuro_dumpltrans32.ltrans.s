	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL10tesvertLeqPK10TESSvertexS1_;	.scl	3;	.type	32;	.endef
__ZL10tesvertLeqPK10TESSvertexS1_:
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
	.def	__ZL17deleteBucketAllocP11BucketAlloc;	.scl	3;	.type	32;	.endef
__ZL17deleteBucketAllocP11BucketAlloc:
LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	4(%eax), %ebx
	movl	16(%eax), %esi
	testl	%ebx, %ebx
	je	L9
	.p2align 4
	.p2align 3
L10:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	*8(%esi)
	testl	%ebx, %ebx
	jne	L10
L9:
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	%edi, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	*8(%esi)
	addl	$8, %esp
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
LFE1:
	.p2align 4
	.def	__ZL9FloatDownP13PriorityQHeapi;	.scl	3;	.type	32;	.endef
__ZL9FloatDownP13PriorityQHeapi:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
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
	movl	(%ecx), %ebp
	movl	4(%ecx), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, %eax
	movl	0(%ebp,%edx,4), %edx
	movl	%ecx, (%esp)
	leal	(%ecx,%edx,8), %ecx
	movl	%edx, 16(%esp)
	movl	%ecx, 12(%esp)
	jmp	L27
	.p2align 4,,10
	.p2align 3
L32:
	movl	(%esp), %edi
	movl	12(%esp), %esi
	leal	(%edi,%ecx,8), %ebx
	movl	(%esi), %esi
	movl	(%ebx), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	ja	L23
	ucomiss	%xmm0, %xmm1
	jp	L24
	jne	L24
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L23
L24:
	movl	%ecx, 0(%ebp,%eax,4)
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
L27:
	movl	8(%esp), %edi
	leal	(%eax,%eax), %edx
	movl	0(%ebp,%eax,8), %ecx
	movl	8(%edi), %ebx
	cmpl	%edx, %ebx
	jle	L18
	movl	4(%ebp,%eax,8), %esi
	movl	(%esp), %edi
	movl	%esi, 4(%esp)
	movl	(%edi,%esi,8), %esi
	movl	(%edi,%ecx,8), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	ja	L19
	ucomiss	%xmm0, %xmm1
	jp	L18
	jne	L18
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jb	L18
L19:
	movl	4(%esp), %ecx
	addl	$1, %edx
L18:
	cmpl	%edx, %ebx
	jge	L32
L23:
	movl	16(%esp), %edx
	movl	(%esp), %ecx
	movl	%edx, 0(%ebp,%eax,4)
	movl	%eax, 4(%ecx,%edx,8)
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
LFE2:
	.p2align 4
	.def	__ZL7FloatUpP13PriorityQHeapi.isra.0;	.scl	3;	.type	32;	.endef
__ZL7FloatUpP13PriorityQHeapi.isra.0:
LFB4:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	%edx, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, %edx
	leal	(%esi,%ecx,4), %ecx
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	(%ecx), %edi
	leal	(%eax,%edi,8), %eax
	movl	%eax, (%esp)
	movl	%edx, %eax
	sarl	%eax
	je	L34
	movl	%ebx, 12(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	(%esi,%eax,4), %ecx
	movl	%edi, 8(%esp)
	jmp	L39
	.p2align 4,,10
	.p2align 3
L48:
	ucomiss	%xmm0, %xmm1
	jp	L36
	jne	L36
	movss	28(%ebp), %xmm0
	comiss	28(%edi), %xmm0
	jnb	L35
L36:
	movl	%ecx, (%esi,%edx,4)
	movl	%edx, 4(%ebx)
	movl	%eax, %ebx
	movl	%eax, %edx
	sarl	%ebx
	movl	(%esi,%ebx,4), %ecx
	je	L47
	movl	%ebx, %eax
L39:
	movl	4(%esp), %edi
	movl	(%esp), %ebp
	leal	(%edi,%ecx,8), %ebx
	movl	0(%ebp), %ebp
	movl	(%ebx), %edi
	movss	24(%ebp), %xmm0
	movss	24(%edi), %xmm1
	comiss	%xmm1, %xmm0
	jbe	L48
L35:
	movl	8(%esp), %edi
	movl	12(%esp), %ebx
	.cfi_restore 3
	leal	(%esi,%edx,4), %ecx
	movl	24(%esp), %ebp
	.cfi_restore 5
L34:
	movl	(%esp), %eax
	movl	%edi, (%ecx)
	movl	%edx, 4(%eax)
	movl	16(%esp), %esi
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L47:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %edi
	movl	12(%esp), %ebx
	.cfi_restore 3
	leal	4(%esi), %ecx
	movl	$1, %edx
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L34
	.cfi_endproc
LFE4:
	.p2align 4
	.def	__ZL16pqHeapExtractMinP13PriorityQHeap;	.scl	3;	.type	32;	.endef
__ZL16pqHeapExtractMinP13PriorityQHeap:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	(%eax), %ecx
	movl	4(%eax), %edi
	movl	8(%eax), %ebp
	movl	4(%ecx), %esi
	movl	(%edi,%esi,8), %ebx
	testl	%ebp, %ebp
	jle	L49
	movl	(%ecx,%ebp,4), %ebp
	movl	%ebp, 4(%ecx)
	movl	$1, 4(%edi,%ebp,8)
	movl	$0, (%edi,%esi,8)
	movl	16(%eax), %ecx
	movl	%ecx, 4(%edi,%esi,8)
	movl	%esi, 16(%eax)
	movl	8(%eax), %esi
	leal	-1(%esi), %edx
	movl	%edx, 8(%eax)
	testl	%edx, %edx
	jg	L52
L49:
	movl	%ebx, %eax
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
L52:
	.cfi_restore_state
	movl	$1, %edx
	call	__ZL9FloatDownP13PriorityQHeapi
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
	.cfi_endproc
LFE5:
	.p2align 4
	.def	__ZL12pqExtractMinP9PriorityQ;	.scl	3;	.type	32;	.endef
__ZL12pqExtractMinP9PriorityQ:
LFB6:
	.cfi_startproc
	movl	%eax, %ecx
	movl	12(%eax), %eax
	movl	(%ecx), %edx
	testl	%eax, %eax
	je	L69
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	movl	8(%ecx), %ebx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	-4(%ebx,%eax,4), %esi
	movl	(%esi), %esi
	cmpl	$0, 8(%edx)
	je	L55
	movl	%edi, 8(%esp)
	movl	%ebp, 12(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	(%edx), %edi
	movl	4(%edx), %ebp
	movss	24(%esi), %xmm0
	movl	4(%edi), %edi
	movl	0(%ebp,%edi,8), %edi
	movss	24(%edi), %xmm1
	comiss	%xmm1, %xmm0
	ja	L54
	ucomiss	%xmm0, %xmm1
	jp	L74
	jne	L74
	movss	28(%esi), %xmm0
	comiss	28(%edi), %xmm0
	jnb	L54
L74:
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
L55:
	subl	$1, %eax
	jmp	L60
	.p2align 5
	.p2align 4,,10
	.p2align 3
L75:
	movl	-4(%ebx,%eax,4), %edx
	subl	$1, %eax
	movl	(%edx), %edx
	testl	%edx, %edx
	jne	L53
L60:
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	jg	L75
L53:
	movl	%esi, %eax
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L54:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebp
	.cfi_restore 5
	movl	%edx, %eax
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	addl	$16, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	__ZL16pqHeapExtractMinP13PriorityQHeap
	.p2align 4,,10
	.p2align 3
L69:
	movl	%edx, %eax
	jmp	__ZL16pqHeapExtractMinP13PriorityQHeap
	.cfi_endproc
LFE6:
	.section	.text.unlikely,"x"
LCOLDB0:
	.text
LHOTB0:
	.p2align 4
	.def	__ZL15IsWindingInsidePK14TESStesselatori.isra.0;	.scl	3;	.type	32;	.endef
__ZL15IsWindingInsidePK14TESStesselatori.isra.0:
LFB8:
	.cfi_startproc
	cmpl	$4, %eax
	ja	L84
	jmp	*L79(,%eax,4)
	.section .rdata,"dr"
	.align 4
L79:
	.long	L83
	.long	L82
	.long	L81
	.long	L80
	.long	L78
	.text
	.p2align 4,,10
	.p2align 3
L80:
	movl	%edx, %eax
	shrl	$31, %eax
	ret
	.p2align 4,,10
	.p2align 3
L78:
	leal	1(%edx), %eax
	cmpl	$2, %eax
	seta	%al
	movzbl	%al, %eax
	ret
	.p2align 4,,10
	.p2align 3
L83:
	movl	%edx, %eax
	andl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
L82:
	xorl	%eax, %eax
	testl	%edx, %edx
	setne	%al
	ret
	.p2align 4,,10
	.p2align 3
L81:
	xorl	%eax, %eax
	testl	%edx, %edx
	setg	%al
	ret
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL15IsWindingInsidePK14TESStesselatori.isra.0.cold;	.scl	3;	.type	32;	.endef
__ZL15IsWindingInsidePK14TESStesselatori.isra.0.cold:
LFSB8:
L84:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE8:
	.text
	.section	.text.unlikely,"x"
LCOLDE0:
	.text
LHOTE0:
	.p2align 4
	.def	__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf;	.scl	3;	.type	32;	.endef
__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf:
LFB9:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movss	24(%eax), %xmm2
	xorps	%xmm3, %xmm3
	xorps	%xmm6, %xmm6
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%edx, %ebx
	movss	24(%ebx), %xmm1
	movl	8(%ebp), %edx
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm4
	movaps	%xmm1, %xmm0
	xorps	LC2, %xmm0
	cmpltss	%xmm3, %xmm1
	movss	28(%eax), %xmm3
	andps	%xmm1, %xmm0
	andnps	%xmm4, %xmm1
	orps	%xmm0, %xmm1
	movss	28(%ebx), %xmm0
	subss	%xmm3, %xmm0
	movaps	%xmm0, %xmm5
	movaps	%xmm0, %xmm4
	xorps	LC2, %xmm4
	cmpltss	%xmm6, %xmm0
	andps	%xmm0, %xmm4
	andnps	%xmm5, %xmm0
	orps	%xmm4, %xmm0
	addss	%xmm0, %xmm1
	movss	24(%ecx), %xmm0
	subss	%xmm2, %xmm0
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm2
	xorps	LC2, %xmm2
	cmpltss	%xmm6, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm4, %xmm0
	orps	%xmm2, %xmm0
	movss	28(%ecx), %xmm2
	subss	%xmm3, %xmm2
	movaps	%xmm2, %xmm4
	movaps	%xmm2, %xmm3
	xorps	LC2, %xmm3
	cmpltss	%xmm6, %xmm2
	andps	%xmm2, %xmm3
	andnps	%xmm4, %xmm2
	orps	%xmm3, %xmm2
	movss	LC3, %xmm3
	addss	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm2
	mulss	%xmm3, %xmm0
	divss	%xmm2, %xmm1
	divss	%xmm2, %xmm0
	movss	%xmm1, 4(%edx)
	movss	%xmm0, (%edx)
	mulss	12(%ebx), %xmm0
	mulss	12(%ecx), %xmm1
	addss	%xmm1, %xmm0
	addss	12(%eax), %xmm0
	movss	%xmm0, 12(%eax)
	movss	(%edx), %xmm0
	movss	4(%edx), %xmm1
	mulss	16(%ebx), %xmm0
	mulss	16(%ecx), %xmm1
	addss	%xmm1, %xmm0
	addss	16(%eax), %xmm0
	movss	%xmm0, 16(%eax)
	movss	(%edx), %xmm0
	movss	4(%edx), %xmm1
	mulss	20(%ebx), %xmm0
	mulss	20(%ecx), %xmm1
	addss	%xmm1, %xmm0
	addss	20(%eax), %xmm0
	movl	-4(%ebp), %ebx
	movss	%xmm0, 20(%eax)
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__ZL11tesedgeEvalPK10TESSvertexS1_S1_;	.scl	3;	.type	32;	.endef
__ZL11tesedgeEvalPK10TESSvertexS1_S1_:
LFB10:
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
	jbe	L107
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	comiss	%xmm1, %xmm0
	movss	28(%edx), %xmm3
	movss	28(%ecx), %xmm4
	movss	28(%eax), %xmm5
	ja	L113
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
L113:
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
L107:
	fldz
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	__ZL7EdgeLeqP14TESStesselatorP12ActiveRegionS2_;	.scl	3;	.type	32;	.endef
__ZL7EdgeLeqP14TESStesselatorP12ActiveRegionS2_:
LFB11:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %eax
	movl	80(%eax), %edx
	movl	24(%esp), %eax
	movl	(%eax), %ecx
	movl	28(%esp), %eax
	movl	(%eax), %esi
	movl	4(%ecx), %eax
	movl	4(%esi), %ebx
	movl	16(%eax), %eax
	movl	16(%ebx), %ebx
	cmpl	%edx, %eax
	je	L134
	movl	16(%ecx), %ecx
	cmpl	%ebx, %edx
	je	L135
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_
	movl	16(%esi), %ecx
	movl	%ebx, %eax
	fstps	(%esp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_
	xorl	%eax, %eax
	movss	(%esp), %xmm5
	fstps	4(%esp)
	comiss	4(%esp), %xmm5
	setnb	%al
L114:
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
L135:
	.cfi_restore_state
	movss	24(%edx), %xmm1
	movss	24(%ecx), %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm1, %xmm4
	subss	24(%eax), %xmm4
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm3, %xmm1
	ja	L136
L123:
	addl	$8, %esp
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
L134:
	.cfi_restore_state
	movl	16(%esi), %edx
	movss	24(%edx), %xmm0
	cmpl	%ebx, %eax
	je	L137
	movss	24(%eax), %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm1, %xmm4
	subss	24(%ebx), %xmm4
	subss	%xmm1, %xmm0
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L123
	movss	28(%eax), %xmm1
L133:
	movaps	%xmm1, %xmm2
	subss	28(%ebx), %xmm1
	subss	28(%edx), %xmm2
	xorl	%eax, %eax
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	comiss	%xmm2, %xmm3
	setnb	%al
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
L136:
	.cfi_restore_state
	movss	28(%edx), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%eax), %xmm1
	subss	28(%ecx), %xmm2
	xorl	%eax, %eax
	mulss	%xmm4, %xmm2
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	comiss	%xmm3, %xmm2
	setnb	%al
	jmp	L114
	.p2align 4,,10
	.p2align 3
L137:
	movl	16(%ecx), %ecx
	movss	24(%ecx), %xmm1
	comiss	%xmm1, %xmm0
	ja	L117
	ucomiss	%xmm0, %xmm1
	jp	L118
	jne	L118
	movss	28(%edx), %xmm2
	comiss	28(%ecx), %xmm2
	jnb	L117
L118:
	movaps	%xmm0, %xmm4
	subss	24(%eax), %xmm4
	subss	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm3, %xmm0
	jbe	L123
	movss	28(%edx), %xmm0
	movaps	%xmm0, %xmm2
	subss	28(%eax), %xmm0
	subss	28(%ecx), %xmm2
	xorl	%eax, %eax
	mulss	%xmm4, %xmm2
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm3, %xmm0
	setnb	%al
	jmp	L114
	.p2align 4,,10
	.p2align 3
L117:
	movaps	%xmm1, %xmm4
	subss	24(%ebx), %xmm4
	subss	%xmm1, %xmm0
	xorps	%xmm3, %xmm3
	movaps	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L123
	movss	28(%ecx), %xmm1
	jmp	L133
	.cfi_endproc
LFE11:
	.p2align 4
	.def	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0;	.scl	3;	.type	32;	.endef
__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0:
LFB14:
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
	jbe	L146
	comiss	%xmm4, %xmm0
	ja	L149
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
L149:
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
L146:
	.cfi_restore_state
	fldz
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE14:
	.p2align 4
	.def	__ZL12CreateBucketP11BucketAlloc;	.scl	3;	.type	32;	.endef
__ZL12CreateBucketP11BucketAlloc:
LFB15:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%eax, %ebx
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	movl	16(%eax), %edx
	movl	8(%eax), %esi
	imull	12(%eax), %esi
	movl	(%edx), %eax
	addl	$4, %esi
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L151
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	testl	%eax, %eax
	je	L161
L152:
	movl	$0, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, (%eax)
	movl	12(%ebx), %esi
	movl	%eax, 4(%ebx)
	movl	(%ebx), %ecx
	addl	$4, %eax
	leal	-1(%esi), %edx
	imull	8(%ebx), %edx
	addl	%eax, %edx
	movl	%ecx, (%edx)
	cmpl	%edx, %eax
	je	L154
	.p2align 4
	.p2align 4
	.p2align 3
L155:
	movl	%edx, %ecx
	subl	8(%ebx), %edx
	movl	%ecx, (%edx)
	cmpl	%edx, %eax
	jne	L155
L154:
	movl	%edx, (%ebx)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	$1, %edx
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L151:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	movl	12(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	L152
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L161:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE15:
	.p2align 4
	.def	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge;	.scl	3;	.type	32;	.endef
__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	4(%edx), %ecx
	movl	20(%edx), %edi
	movl	$0, (%esp)
	movl	20(%ecx), %ebx
	cmpl	%ebx, %edi
	je	L163
	movl	8(%edi), %ebp
	movl	%ebp, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L164:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %ebp
	jne	L164
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	$1, (%esp)
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	148(%esi), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
L163:
	cmpl	%edx, 8(%edx)
	je	L189
	movl	4(%edx), %eax
	movl	20(%eax), %ebx
	movl	12(%eax), %eax
	movl	%eax, 8(%ebx)
	movl	8(%edx), %ebx
	movl	16(%edx), %eax
	movl	%ebx, 8(%eax)
	movl	4(%edx), %eax
	movl	4(%ebx), %ebp
	movl	12(%eax), %eax
	movl	8(%eax), %edi
	movl	%eax, 12(%ebp)
	movl	4(%edi), %ebp
	movl	%edx, 12(%ebp)
	movl	%edi, 8(%edx)
	movl	%ebx, 8(%eax)
	movl	(%esp), %eax
	testl	%eax, %eax
	je	L190
L167:
	cmpl	%ecx, 8(%ecx)
	je	L191
L172:
	movl	4(%ecx), %ebx
	movl	20(%edx), %eax
	movl	12(%ebx), %ebx
	movl	%ebx, 8(%eax)
	movl	8(%ecx), %ebx
	movl	16(%ecx), %eax
	movl	%ebx, 8(%eax)
	movl	4(%ecx), %eax
	movl	4(%ebx), %ebp
	movl	12(%eax), %eax
	movl	8(%eax), %edi
	movl	%eax, 12(%ebp)
	movl	4(%edi), %ebp
	movl	%ecx, 12(%ebp)
	movl	%edi, 8(%ecx)
	movl	%ebx, 8(%eax)
L175:
	movl	4(%edx), %eax
	cmpl	%eax, %edx
	cmovbe	%edx, %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	movl	4(%edx), %ebx
	movl	(%ecx), %ecx
	movl	%ecx, (%ebx)
	movl	4(%ecx), %ecx
	movl	%edx, (%ecx)
	movl	140(%esi), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	movl	$1, %eax
L162:
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
L190:
	.cfi_restore_state
	movl	148(%esi), %edi
	movl	(%edi), %ebx
	testl	%ebx, %ebx
	je	L168
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L168
L169:
	movl	%eax, (%edi)
	movl	20(%edx), %eax
	movl	4(%eax), %edi
	movl	%edi, 4(%ebx)
	movl	%ebx, (%edi)
	movl	%eax, (%ebx)
	movl	%ebx, 4(%eax)
	movl	%edx, 8(%ebx)
	movl	$0, 12(%ebx)
	movb	$0, 20(%ebx)
	movzbl	21(%eax), %eax
	movb	%al, 21(%ebx)
	movl	%edx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L171:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L171
	cmpl	%ecx, 8(%ecx)
	jne	L172
L191:
	movl	16(%ecx), %edi
	movl	8(%edi), %ebx
	movl	%ebx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L173:
	movl	$0, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jne	L173
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	144(%esi), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
	movl	20(%ecx), %ebx
	movl	8(%ebx), %ecx
	movl	%ecx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L174:
	movl	$0, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %ecx
	jne	L174
	movl	(%ebx), %ecx
	movl	4(%ebx), %eax
	movl	%eax, 4(%ecx)
	movl	%ecx, (%eax)
	movl	148(%esi), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%ebx)
	movl	%ebx, (%eax)
	jmp	L175
	.p2align 4,,10
	.p2align 3
L168:
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L162
	movl	(%edi), %ebx
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L169
	.p2align 4,,10
	.p2align 3
L189:
	movl	16(%edx), %edi
	movl	8(%edi), %ebx
	movl	%ebx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L166:
	movl	$0, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jne	L166
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	144(%esi), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
	jmp	L167
	.cfi_endproc
LFE18:
	.p2align 4
	.def	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0;	.scl	3;	.type	32;	.endef
__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 3, -12
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L193
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L193
L194:
	movl	%ebx, (%ecx)
	movl	4(%edx), %ebx
	leal	36(%eax), %ecx
	cmpl	%ebx, %edx
	cmova	%ebx, %edx
	movl	4(%edx), %ebx
	movl	(%ebx), %ebx
	movl	%ebx, 36(%eax)
	movl	4(%ebx), %ebx
	movl	%eax, (%ebx)
	movl	%edx, (%eax)
	movl	4(%edx), %edx
	movl	%ecx, (%edx)
	movl	%ecx, 4(%eax)
	movl	%eax, 8(%eax)
	movl	%ecx, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%eax, 40(%eax)
	movl	%ecx, 44(%eax)
	movl	%eax, 48(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
L192:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L193:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L196
	movl	4(%esp), %ecx
	movl	(%esp), %edx
	movl	(%ecx), %eax
	movl	(%eax), %ebx
	jmp	L194
	.p2align 4,,10
	.p2align 3
L196:
	xorl	%eax, %eax
	jmp	L192
	.cfi_endproc
LFE24:
	.p2align 4
	.def	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_;	.scl	3;	.type	32;	.endef
__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_:
LFB25:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	%ecx, %ebp
	movl	%eax, 8(%esp)
	movl	140(%eax), %eax
	call	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L201
	movl	%esi, 16(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%eax), %ecx
	movl	20(%ebx), %esi
	movl	20(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	cmpl	%esi, %eax
	je	L203
	movl	8(%eax), %edi
	movl	%edi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L204:
	movl	%esi, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edi
	jne	L204
	movl	(%esp), %edi
	movl	$1, 4(%esp)
	movl	(%edi), %esi
	movl	4(%edi), %eax
	movl	%eax, 4(%esi)
	movl	%esi, (%eax)
	movl	8(%esp), %eax
	movl	148(%eax), %eax
	movl	(%eax), %esi
	movl	%esi, (%edi)
	movl	%edi, (%eax)
L203:
	movl	12(%ebx), %eax
	movl	8(%edx), %esi
	movl	8(%eax), %edi
	movl	%edi, (%esp)
	movl	4(%esi), %edi
	movl	%eax, 12(%edi)
	movl	(%esp), %edi
	movl	4(%edi), %edi
	movl	%edx, 12(%edi)
	movl	(%esp), %edi
	movl	%edi, 8(%edx)
	movl	%esi, 8(%eax)
	movl	8(%ecx), %eax
	movl	8(%ebp), %esi
	movl	4(%eax), %edi
	movl	%ebp, 12(%edi)
	movl	4(%esi), %edi
	movl	%ecx, 12(%edi)
	movl	%esi, 8(%ecx)
	movl	%eax, 8(%ebp)
	movl	4(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movl	16(%ebp), %eax
	movl	%eax, 16(%ecx)
	movl	20(%ebx), %eax
	movl	%eax, 20(%ecx)
	movl	%eax, 20(%edx)
	movl	20(%ebx), %eax
	movl	%ecx, 8(%eax)
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L222
L221:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L201:
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	movl	%edx, %eax
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L222:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %eax
	movl	148(%eax), %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L207
	movl	(%ecx), %eax
	testl	%eax, %eax
	je	L207
L208:
	movl	%eax, (%esi)
	movl	20(%ebx), %eax
	movl	4(%eax), %ebx
	movl	%ebx, 4(%ecx)
	movl	%ecx, (%ebx)
	movl	%eax, (%ecx)
	movl	%ecx, 4(%eax)
	movl	%edx, 8(%ecx)
	movl	$0, 12(%ecx)
	movb	$0, 20(%ecx)
	movzbl	21(%eax), %eax
	movb	%al, 21(%ecx)
	movl	%edx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L209:
	movl	%ecx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L209
	jmp	L221
	.p2align 4,,10
	.p2align 3
L207:
	movl	%esi, %eax
	movl	%edx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L211
	movl	(%esi), %ecx
	movl	(%esp), %edx
	movl	(%ecx), %eax
	jmp	L208
L211:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	xorl	%edx, %edx
	jmp	L201
	.cfi_endproc
LFE25:
	.p2align 4
	.def	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion:
LFB26:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	%edx, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	(%edx), %eax
	movl	16(%eax), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L224:
	movl	4(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	movl	(%ebx), %eax
	cmpl	%edx, 16(%eax)
	je	L224
	movl	24(%ebx), %edx
	testl	%edx, %edx
	jne	L230
	addl	$4, %esp
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
L230:
	.cfi_restore_state
	movl	12(%eax), %ecx
	movl	4(%ebx), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %edx
	movl	(%esi), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L227
	movl	(%ebx), %edx
	movl	(%esi), %eax
	movl	%ecx, (%esp)
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L227
	movl	(%esp), %ecx
	movl	$0, 24(%ebx)
	movl	%ecx, (%ebx)
	movl	%ebx, 24(%ecx)
	movl	4(%ebx), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebx
	addl	$4, %esp
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
L227:
	.cfi_restore_state
	xorl	%ebx, %ebx
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE26:
	.p2align 4
	.def	__ZL16dictInsertBeforeP4DictP8DictNodePv;	.scl	3;	.type	32;	.endef
__ZL16dictInsertBeforeP4DictP8DictNodePv:
LFB29:
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
	subl	$12, %esp
	.cfi_def_cfa_offset 28
L233:
	movl	8(%ebx), %ebx
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L232
	movl	%edi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%esi), %eax
	movl	%eax, (%esp)
	call	*20(%esi)
	testl	%eax, %eax
	je	L233
L232:
	movl	16(%esi), %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L234
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L234
L235:
	movl	%edx, (%esi)
	movl	%edi, (%eax)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	%eax, 8(%edx)
	movl	%ebx, 8(%eax)
	movl	%eax, 4(%ebx)
L231:
	addl	$12, %esp
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
L234:
	.cfi_restore_state
	movl	%esi, %eax
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L237
	movl	(%esi), %eax
	movl	(%eax), %edx
	jmp	L235
L237:
	xorl	%eax, %eax
	jmp	L231
	.cfi_endproc
LFE29:
	.p2align 4
	.def	__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge;	.scl	3;	.type	32;	.endef
__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -20
	movl	84(%eax), %ecx
	movl	(%ecx), %ebx
	testl	%ebx, %ebx
	je	L248
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L248
L249:
	movl	%eax, (%ecx)
	movl	%ebx, %ecx
	movl	%edi, (%ebx)
	movl	4(%edx), %edx
	movl	72(%esi), %eax
	call	__ZL16dictInsertBeforeP4DictP8DictNodePv
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	je	L250
	movl	$0, 24(%ebx)
	movl	%ebx, %eax
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	movl	%ebx, 24(%edi)
	addl	$16, %esp
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
L248:
	.cfi_restore_state
	movl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L250
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	(%ecx), %ebx
	movl	(%ebx), %eax
	jmp	L249
	.p2align 4,,10
	.p2align 3
L250:
	addl	$152, %esi
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE30:
	.p2align 4
	.def	__ZL6pqInitP9TESSallocP9PriorityQ.isra.0;	.scl	3;	.type	32;	.endef
__ZL6pqInitP9TESSallocP9PriorityQ.isra.0:
LFB32:
	.cfi_startproc
	subl	$456, %esp
	.cfi_def_cfa_offset 460
	movl	%esi, 444(%esp)
	.cfi_offset 6, -16
	movl	%ecx, %esi
	movl	%edi, 448(%esp)
	movl	%ebx, 440(%esp)
	movl	12(%ecx), %ecx
	.cfi_offset 7, -12
	.cfi_offset 3, -20
	leal	4(,%ecx,4), %edi
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L262
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 456
	subl	$4, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L263
	movl	%eax, 8(%esi)
L264:
	movl	12(%esi), %eax
	leal	-4(%ebx,%eax,4), %eax
	movl	%eax, 16(%esp)
	cmpl	%ebx, %eax
	jb	L266
	movl	4(%esi), %edx
	movl	%ebx, %eax
L267:
	movl	%edx, (%eax)
	addl	$4, %edx
	addl	$4, %eax
	cmpl	%eax, 16(%esp)
	jnb	L267
L266:
	movl	16(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	$2016473283, 24(%esp)
	movl	%eax, 44(%esp)
	leal	40(%esp), %eax
	movl	%eax, 20(%esp)
L293:
	leal	40(%ebx), %eax
	movl	%eax, 32(%esp)
	cmpl	16(%esp), %eax
	jnb	L268
	movl	%esi, 36(%esp)
L283:
	movl	16(%esp), %edi
	xorl	%edx, %edx
	movl	%ebx, 28(%esp)
	leal	-4(%ebx), %ebp
	imull	$1539415821, 24(%esp), %eax
	movl	%edi, %ecx
	subl	%ebx, %ecx
	sarl	$2, %ecx
	addl	$1, %eax
	addl	$1, %ecx
	movl	%eax, 24(%esp)
	divl	%ecx
	leal	4(%edi), %ecx
	leal	(%ebx,%edx,4), %eax
	movl	(%ebx), %edx
	movl	(%eax), %esi
	movl	%edx, (%eax)
	movl	%esi, 12(%esp)
	movl	%esi, (%ebx)
	movl	(%esi), %esi
	movss	24(%esi), %xmm1
	movl	%esi, %eax
	movaps	%xmm1, %xmm0
	.p2align 4
	.p2align 3
L269:
	comiss	%xmm0, %xmm1
	movl	4(%ebp), %ebx
	leal	4(%ebp), %edi
	movl	%ebx, 8(%esp)
	ja	L276
	ucomiss	%xmm0, %xmm1
	jp	L281
	jne	L281
	movss	28(%esi), %xmm0
	comiss	28(%eax), %xmm0
	jb	L281
L276:
	movl	-4(%ecx), %ebx
	leal	-4(%ecx), %eax
	movl	(%ebx), %edx
	movss	24(%edx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L273
	jmp	L317
	.p2align 4,,10
	.p2align 3
L319:
	movl	%ecx, %eax
L273:
	ucomiss	%xmm1, %xmm0
	jp	L277
	jne	L277
	movss	28(%edx), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L318
L277:
	movl	-4(%eax), %ebx
	leal	-4(%eax), %ecx
	movl	(%ebx), %edx
	movss	24(%edx), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L319
L272:
	movl	8(%esp), %esi
	movl	%ebx, (%edi)
	movl	%esi, (%ecx)
	cmpl	%ecx, %edi
	jnb	L280
L320:
	movl	12(%esp), %eax
	movl	(%eax), %esi
	movss	24(%esi), %xmm1
L281:
	movl	4(%edi), %eax
	movl	%edi, %ebp
	movl	(%eax), %eax
	movss	24(%eax), %xmm0
	jmp	L269
	.p2align 4,,10
	.p2align 3
L318:
	movl	8(%esp), %esi
	movl	%eax, %ecx
	movl	%ebx, (%edi)
	addl	$4, %eax
	movl	%esi, (%ecx)
	cmpl	%ecx, %edi
	jb	L320
L280:
	movl	(%edi), %edx
	movl	8(%esp), %esi
	movl	28(%esp), %ebx
	addl	$8, 20(%esp)
	movl	%esi, (%edi)
	movl	%edx, (%ecx)
	movl	16(%esp), %edx
	subl	%ebx, %edi
	subl	%ecx, %edx
	cmpl	%edx, %edi
	jl	L298
	movl	%ebx, %edx
	movl	%eax, %ebx
	leal	40(%ebx), %edi
	movl	%edx, %eax
	movl	%edi, 32(%esp)
L282:
	movl	20(%esp), %edi
	movl	%eax, -8(%edi)
	movl	%ebp, -4(%edi)
	movl	16(%esp), %edi
	cmpl	%edi, 32(%esp)
	jb	L283
	movl	36(%esp), %esi
L268:
	leal	4(%ebx), %edx
	cmpl	%edx, 16(%esp)
	jb	L284
	movl	%esi, %ecx
L291:
	movl	(%edx), %ebp
	movl	%edx, %eax
	cmpl	%edx, %ebx
	jnb	L286
	movl	%edx, 8(%esp)
	jmp	L285
	.p2align 4,,10
	.p2align 3
L321:
	ucomiss	%xmm0, %xmm1
	jp	L288
	jne	L288
	movss	28(%edi), %xmm0
	comiss	28(%esi), %xmm0
	jnb	L315
L288:
	movl	%edx, (%eax)
	subl	$4, %eax
	cmpl	%eax, %ebx
	jnb	L315
L285:
	movl	-4(%eax), %edx
	movl	0(%ebp), %esi
	movl	(%edx), %edi
	movss	24(%esi), %xmm1
	movss	24(%edi), %xmm0
	comiss	%xmm1, %xmm0
	jbe	L321
L315:
	movl	8(%esp), %edx
L286:
	movl	%ebp, (%eax)
	addl	$4, %edx
	cmpl	%edx, 16(%esp)
	jnb	L291
	movl	%ecx, %esi
L284:
	movl	20(%esp), %edi
	leal	40(%esp), %ecx
	leal	-8(%edi), %eax
	cmpl	%ecx, %eax
	jb	L292
	movl	-8(%edi), %ebx
	movl	-4(%edi), %edi
	movl	%eax, 20(%esp)
	movl	%edi, 16(%esp)
	jmp	L293
L317:
	movl	%eax, %edx
	movl	%ecx, %eax
	movl	%edx, %ecx
	jmp	L272
L298:
	movl	16(%esp), %edx
	movl	%ebp, 16(%esp)
	movl	%edx, %ebp
	jmp	L282
L292:
	movl	12(%esi), %eax
	movl	$1, 20(%esi)
	movl	%eax, 16(%esi)
	movl	(%esi), %esi
	movl	8(%esi), %ebx
	testl	%ebx, %ebx
	jle	L294
L295:
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL9FloatDownP13PriorityQHeapi
	subl	$1, %ebx
	jne	L295
L294:
	movl	$1, 20(%esi)
	movl	452(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
L261:
	movl	440(%esp), %ebx
	movl	444(%esp), %esi
	movl	448(%esp), %edi
	addl	$456, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L262:
	.cfi_restore_state
	movl	%edi, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	movl	%eax, 8(%esi)
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	L261
	movl	%ebp, 452(%esp)
	.cfi_offset 5, -8
	jmp	L264
L263:
	movl	%edi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE32:
	.p2align 4
	.def	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv;	.scl	3;	.type	32;	.endef
__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%ecx, %ebp
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
	movl	%edx, %ebx
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	8(%edx), %eax
	leal	1(%eax), %esi
	movl	%esi, 8(%edx)
	movl	12(%edx), %edx
	leal	(%esi,%esi), %eax
	cmpl	%edx, %eax
	jle	L323
	movl	4(%edi), %ecx
	testl	%ecx, %ecx
	je	L324
	movl	4(%ebx), %eax
	addl	%edx, %edx
	movl	(%ebx), %ecx
	movl	%edx, 12(%ebx)
	leal	4(,%edx,4), %edx
	movl	%eax, 16(%esp)
	movl	4(%edi), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L325
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	je	L336
L326:
	movl	12(%ebx), %edx
	movl	4(%ebx), %ecx
	movl	%eax, (%ebx)
	movl	4(%edi), %eax
	leal	8(,%edx,8), %edx
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L328
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	jne	L334
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	L337
L329:
	testl	%eax, %eax
	je	L330
L334:
	movl	%eax, 4(%ebx)
L323:
	movl	16(%ebx), %edi
	testl	%edi, %edi
	je	L338
	movl	4(%ebx), %edx
	leal	0(,%edi,8), %eax
	movl	4(%edx,%eax), %edx
	movl	%edx, 16(%ebx)
L332:
	movl	(%ebx), %edx
	movl	%edi, (%edx,%esi,4)
	movl	4(%ebx), %edx
	movl	%esi, 4(%edx,%eax)
	movl	4(%ebx), %edx
	movl	%ebp, (%edx,%eax)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jne	L339
	addl	$20, %esp
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
L338:
	.cfi_restore_state
	leal	0(,%esi,8), %eax
	movl	%esi, %edi
	jmp	L332
	.p2align 4,,10
	.p2align 3
L339:
	movl	(%ebx), %eax
	movl	4(%ebx), %edx
	movl	%esi, %ecx
	call	__ZL7FloatUpP13PriorityQHeapi.isra.0
	addl	$20, %esp
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
L325:
	.cfi_restore_state
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%edi), %edx
	movl	%ecx, 12(%esp)
	movl	%edx, (%esp)
	call	*%eax
	testl	%eax, %eax
	jne	L326
	movl	12(%esp), %ecx
	movl	%ecx, (%ebx)
L324:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$268435455, %edi
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
L328:
	.cfi_restore_state
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	12(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L329
	.p2align 4,,10
	.p2align 3
L330:
	movl	16(%esp), %eax
	movl	%eax, 4(%ebx)
	jmp	L324
	.p2align 4,,10
	.p2align 3
L336:
	movl	12(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L337:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE33:
	.p2align 4
	.globl	__Z17createBucketAllocP9TESSallocjj
	.def	__Z17createBucketAllocP9TESSallocjj;	.scl	2;	.type	32;	.endef
__Z17createBucketAllocP9TESSallocjj:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -20
	movl	(%eax), %eax
	movl	%edx, -16(%ebp)
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L341
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-16(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	L347
L342:
	movl	%esi, 16(%ebx)
	movl	%ebx, %eax
	movl	%edx, 8(%ebx)
	movl	%edi, 12(%ebx)
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L348
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
	ret
	.p2align 4,,10
	.p2align 3
L341:
	.cfi_restore_state
	movl	$20, 4(%esp)
	movl	12(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	-16(%ebp), %edx
	movl	%eax, %ebx
	jmp	L342
	.p2align 4,,10
	.p2align 3
L348:
	movl	8(%esi), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L344
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L349:
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
	ret
	.p2align 4,,10
	.p2align 3
L347:
	.cfi_restore_state
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L344:
	movl	%ebx, 4(%esp)
	movl	12(%esi), %edx
	xorl	%ebx, %ebx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L349
	.cfi_endproc
LFE36:
	.p2align 4
	.globl	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	.def	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0:
LFB39:
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
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	144(%eax), %ebx
	movl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	L351
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	L351
L352:
	movl	%eax, (%ebx)
L353:
	movl	144(%edi), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L354
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L354
L355:
	movl	%eax, (%ebx)
L356:
	movl	148(%edi), %edx
	movl	(%edx), %ebx
	testl	%ebx, %ebx
	je	L357
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L357
L358:
	movl	%eax, (%edx)
	testl	%ebp, %ebp
	je	L397
	testl	%esi, %esi
	je	L398
	movl	140(%edi), %eax
	leal	68(%edi), %edx
	call	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L366
	movl	4(%edi), %eax
	movl	%eax, 4(%ebp)
	movl	%ebp, (%eax)
	movl	%edx, %eax
	movl	%edi, 0(%ebp)
	movl	%ebp, 4(%edi)
	movl	%edx, 8(%ebp)
	.p2align 4
	.p2align 4
	.p2align 3
L368:
	movl	%ebp, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	L368
	movl	4(%eax), %ecx
	movl	4(%edi), %edx
	movl	%edx, 4(%esi)
	movl	%esi, (%edx)
	movl	%ecx, %edx
	movl	%edi, (%esi)
	movl	%esi, 4(%edi)
	movl	%ecx, 8(%esi)
	.p2align 4
	.p2align 4
	.p2align 3
L369:
	movl	%esi, 16(%edx)
	movl	8(%edx), %edx
	cmpl	%edx, %ecx
	jne	L369
	movl	48(%edi), %edx
	movl	%edx, 4(%ebx)
	movl	%ebx, (%edx)
	leal	44(%edi), %edx
	movl	%edx, (%ebx)
	movl	%ebx, 48(%edi)
	movl	%eax, 8(%ebx)
	movl	$0, 12(%ebx)
	movb	$0, 20(%ebx)
	movzbl	65(%edi), %edx
	movb	%dl, 21(%ebx)
	movl	%eax, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L370:
	movl	%ebx, 20(%edx)
	movl	12(%edx), %edx
	cmpl	%eax, %edx
	jne	L370
L350:
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
L354:
	.cfi_restore_state
	movl	%ebx, %eax
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L374
	movl	(%ebx), %esi
	movl	(%esi), %eax
	jmp	L355
	.p2align 4,,10
	.p2align 3
L351:
	movl	%ebx, %eax
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L373
	movl	(%ebx), %ebp
	movl	0(%ebp), %eax
	jmp	L352
	.p2align 4,,10
	.p2align 3
L357:
	movl	%edx, %eax
	movl	%edx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L359
	movl	(%esp), %edx
	movl	(%edx), %ebx
	movl	(%ebx), %eax
	jmp	L358
	.p2align 4,,10
	.p2align 3
L398:
	testl	%ebp, %ebp
	je	L397
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebp, (%eax)
L397:
	testl	%esi, %esi
	je	L364
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
L364:
	movl	148(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%ebx)
	movl	%ebx, (%eax)
L366:
	xorl	%eax, %eax
L400:
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
L374:
	.cfi_restore_state
	xorl	%esi, %esi
	jmp	L356
	.p2align 4,,10
	.p2align 3
L359:
	testl	%ebp, %ebp
	je	L399
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebp, (%eax)
	testl	%esi, %esi
	je	L366
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	xorl	%eax, %eax
	jmp	L400
	.p2align 4,,10
	.p2align 3
L373:
	xorl	%ebp, %ebp
	jmp	L353
L399:
	testl	%esi, %esi
	je	L366
	movl	144(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	xorl	%eax, %eax
	jmp	L350
	.cfi_endproc
LFE39:
	.p2align 4
	.def	__ZL11AddSentinelP14TESStesselatorfff;	.scl	3;	.type	32;	.endef
__ZL11AddSentinelP14TESStesselatorfff:
LFB40:
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
	je	L402
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L402
L403:
	movl	%eax, (%edx)
	movl	(%esi), %eax
	movss	%xmm2, 12(%esp)
	call	__ZL16tessMeshMakeEdgeP8TESSmesh.lto_priv.0
	testl	%eax, %eax
	je	L404
	movl	16(%eax), %edx
	movss	16(%esp), %xmm3
	movl	%ebx, %ecx
	movss	12(%esp), %xmm2
	movss	20(%esp), %xmm4
	movss	%xmm3, 24(%edx)
	movl	16(%eax), %edx
	movups	LC5, %xmm0
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
	call	__ZL16dictInsertBeforeP4DictP8DictNodePv
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	je	L404
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
L402:
	.cfi_restore_state
	movl	%edx, %eax
	movl	%edx, 12(%esp)
	movss	%xmm2, 8(%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L404
	movl	12(%esp), %edx
	movss	8(%esp), %xmm2
	movl	(%edx), %ebx
	movl	(%ebx), %eax
	jmp	L403
	.p2align 4,,10
	.p2align 3
L404:
	addl	$152, %esi
	movl	$1, 4(%esp)
	movl	%esi, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE40:
	.p2align 4
	.globl	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	.def	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0:
LFB41:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	cmpl	%ecx, %edx
	.cfi_offset 7, -12
	je	L419
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%esi, 16(%esp)
	movl	%eax, %ecx
	movl	%ebp, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	16(%edx), %edi
	movl	%ebx, (%esp)
	movl	16(%eax), %ebx
	cmpl	%ebx, %edi
	je	L420
	movl	8(%edi), %esi
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L421:
	movl	%ebx, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %esi
	jne	L421
	movl	(%edi), %ebx
	movl	4(%edi), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	(%esp), %eax
	movl	144(%eax), %eax
	movl	(%eax), %ebx
	movl	%ebx, (%edi)
	movl	%edi, (%eax)
	movl	20(%edx), %ebp
	movl	20(%ecx), %ebx
	cmpl	%ebx, %ebp
	jne	L455
	movl	8(%edx), %eax
	movl	8(%ecx), %ebx
	movl	4(%eax), %esi
	movl	%ecx, 12(%esi)
	movl	4(%ebx), %esi
	movl	%edx, 12(%esi)
	movl	%ebx, 8(%edx)
	movl	%eax, 8(%ecx)
L431:
	movl	(%esp), %eax
	movl	148(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L428
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L428
L429:
	movl	%eax, (%esi)
	movl	20(%ecx), %eax
	movl	4(%eax), %esi
	movl	%esi, 4(%ebx)
	movl	%ebx, (%esi)
	movl	%eax, (%ebx)
	movl	%ebx, 4(%eax)
	movl	%edx, 8(%ebx)
	movl	$0, 12(%ebx)
	movb	$0, 20(%ebx)
	movzbl	21(%eax), %eax
	movb	%al, 21(%ebx)
	movl	%edx, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L430:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %edx
	jne	L430
	movl	20(%ecx), %eax
	movl	%ecx, 8(%eax)
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L419:
	movl	$1, %edi
	movl	%edi, %eax
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L420:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%edx), %ebp
	movl	20(%eax), %ebx
	xorl	%edi, %edi
	cmpl	%ebx, %ebp
	je	L456
L433:
	movl	8(%ebp), %esi
	movl	%esi, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L423:
	movl	%ebx, 20(%eax)
	movl	12(%eax), %eax
	cmpl	%eax, %esi
	jne	L423
	movl	0(%ebp), %ebx
	movl	4(%ebp), %eax
	movl	%eax, 4(%ebx)
	movl	%ebx, (%eax)
	movl	(%esp), %eax
	movl	148(%eax), %eax
	movl	(%eax), %ebx
	movl	%ebx, 0(%ebp)
	movl	%ebp, (%eax)
	movl	8(%edx), %eax
	movl	8(%ecx), %ebx
	movl	4(%eax), %esi
	movl	%ecx, 12(%esi)
	movl	4(%ebx), %esi
	movl	%edx, 12(%esi)
	movl	%ebx, 8(%edx)
	movl	%eax, 8(%ecx)
	testl	%edi, %edi
	je	L457
L454:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L418:
	movl	%edi, %eax
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L428:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%esi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	movl	%eax, %edi
	testl	%eax, %eax
	je	L454
	movl	(%esi), %ebx
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L429
	.p2align 4,,10
	.p2align 3
L455:
	movl	$1, %edi
	jmp	L433
	.p2align 4,,10
	.p2align 3
L457:
	movl	$1, %edi
L432:
	movl	(%esp), %eax
	movl	144(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L425
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L425
L426:
	movl	%eax, (%esi)
	movl	16(%ecx), %eax
	movl	4(%eax), %esi
	movl	%esi, 4(%ebx)
	movl	%ebx, (%esi)
	movl	%eax, (%ebx)
	movl	%ebx, 4(%eax)
	movl	%edx, %eax
	movl	%edx, 8(%ebx)
	.p2align 4
	.p2align 4
	.p2align 3
L427:
	movl	%ebx, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	jne	L427
	movl	16(%ecx), %eax
	movl	%ecx, 8(%eax)
	testl	%edi, %edi
	jne	L454
	jmp	L431
	.p2align 4,,10
	.p2align 3
L456:
	movl	8(%edx), %eax
	movl	8(%ecx), %ebx
	movl	4(%eax), %esi
	movl	%ecx, 12(%esi)
	movl	4(%ebx), %esi
	movl	%edx, 12(%esi)
	movl	%ebx, 8(%edx)
	movl	%eax, 8(%ecx)
	jmp	L432
	.p2align 4,,10
	.p2align 3
L425:
	movl	%esi, %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L435
	movl	(%esi), %ebx
	movl	8(%esp), %edx
	movl	4(%esp), %ecx
	movl	(%ebx), %eax
	jmp	L426
L435:
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	xorl	%edi, %edi
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L418
	.cfi_endproc
LFE41:
	.p2align 4
	.def	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_;	.scl	3;	.type	32;	.endef
__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_:
LFB42:
	.cfi_startproc
	subl	$32, %esp
	.cfi_def_cfa_offset 36
	movl	%ebp, 28(%esp)
	.cfi_offset 5, -8
	movl	(%edx), %ebp
	movl	%ecx, 12(%esp)
	cmpl	%ecx, %edx
	je	L458
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%edi, 24(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%esi, 20(%esp)
	.cfi_offset 6, -16
	jmp	L465
	.p2align 4,,10
	.p2align 3
L479:
	movl	8(%esp), %ecx
	movl	$0, 24(%ebx)
	movl	%ecx, (%ebx)
	movl	%ebx, 24(%ecx)
L460:
	cmpl	%ecx, 8(%ebp)
	je	L464
	movl	4(%ecx), %eax
	movl	%ecx, 8(%esp)
	movl	12(%eax), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L463
	movl	(%edi), %eax
	movl	8(%esp), %ecx
	movl	%ebp, %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L463
L464:
	movl	(%esi), %edx
	movl	12(%esi), %ecx
	movl	20(%edx), %eax
	movl	%edx, 8(%eax)
	movb	%cl, 21(%eax)
	movl	(%esi), %eax
	movl	$0, 24(%eax)
	movl	4(%esi), %eax
	movl	72(%edi), %ecx
	movl	4(%eax), %ebp
	movl	8(%eax), %edx
	movl	%edx, 8(%ebp)
	movl	4(%eax), %ebp
	movl	%ebp, 4(%edx)
	movl	16(%ecx), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	movl	84(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	movl	(%ebx), %ebp
	cmpl	%ebx, 12(%esp)
	je	L477
L465:
	movl	4(%ebx), %eax
	movl	$0, 24(%ebx)
	movl	%ebx, %esi
	movl	8(%eax), %eax
	movl	(%eax), %ebx
	movl	16(%ebp), %eax
	movl	(%ebx), %ecx
	cmpl	%eax, 16(%ecx)
	je	L460
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L478
	movl	8(%ebp), %eax
	movl	4(%ecx), %ecx
	movl	4(%eax), %edx
	movl	(%edi), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L463
	movl	%eax, 8(%esp)
	movl	(%ebx), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L479
L463:
	addl	$152, %edi
	movl	$1, 4(%esp)
	movl	%edi, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L477:
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
L458:
	movl	%ebp, %eax
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L478:
	.cfi_def_cfa_offset 36
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	(%esi), %edx
	movl	12(%esi), %ecx
	movl	20(%edx), %eax
	movl	%edx, 8(%eax)
	movb	%cl, 21(%eax)
	movl	(%esi), %eax
	movl	$0, 24(%eax)
	movl	4(%esi), %eax
	movl	72(%edi), %ecx
	movl	4(%eax), %ebx
	movl	8(%eax), %edx
	movl	%edx, 8(%ebx)
	movl	4(%eax), %ebx
	movl	%ebx, 4(%edx)
	movl	16(%ecx), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	movl	84(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%esi)
	movl	%esi, (%eax)
	movl	%ebp, %eax
	movl	16(%esp), %ebx
	.cfi_restore 3
	movl	20(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %edi
	.cfi_restore 7
	movl	28(%esp), %ebp
	addl	$32, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE42:
	.p2align 4
	.globl	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	.def	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0:
LFB45:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	140(%eax), %eax
	call	__ZL8MakeEdgeP8TESSmeshP12TESShalfEdge.isra.0
	movl	%eax, %edx
	testl	%eax, %eax
	je	L480
	movl	%edi, 16(%esp)
	movl	%ebp, 20(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	movl	12(%ebx), %ebp
	movl	4(%eax), %ecx
	movl	8(%eax), %eax
	movl	8(%ebp), %edi
	movl	%edi, (%esp)
	movl	4(%eax), %edi
	movl	%ebp, 12(%edi)
	movl	(%esp), %edi
	movl	4(%edi), %edi
	movl	%edx, 12(%edi)
	movl	(%esp), %edi
	movl	%edi, 8(%edx)
	movl	%eax, 8(%ebp)
	movl	4(%ebx), %eax
	movl	16(%eax), %eax
	movl	%eax, 16(%edx)
	movl	144(%esi), %edi
	movl	(%edi), %esi
	testl	%esi, %esi
	je	L482
	movl	(%esi), %eax
	testl	%eax, %eax
	je	L482
L483:
	movl	%eax, (%edi)
	movl	16(%edx), %eax
	movl	4(%eax), %edi
	movl	%edi, 4(%esi)
	movl	%esi, (%edi)
	movl	%eax, (%esi)
	movl	%esi, 4(%eax)
	movl	%ecx, %eax
	movl	%ecx, 8(%esi)
	.p2align 4
	.p2align 4
	.p2align 3
L484:
	movl	%esi, 16(%eax)
	movl	8(%eax), %eax
	cmpl	%eax, %ecx
	jne	L484
	movl	20(%ebx), %eax
	movl	%eax, 20(%ecx)
	movl	%eax, 20(%edx)
	movl	4(%ebx), %eax
	movl	4(%edx), %edx
	movl	4(%eax), %ecx
	movl	8(%eax), %esi
	movl	12(%ecx), %ecx
	movl	4(%esi), %ebp
	movl	8(%ecx), %edi
	movl	%ecx, 12(%ebp)
	movl	4(%edi), %ebp
	movl	%eax, 12(%ebp)
	movl	%edi, 8(%eax)
	movl	%esi, 8(%ecx)
	movl	4(%ebx), %eax
	movl	8(%edx), %esi
	movl	8(%eax), %ecx
	movl	4(%ecx), %edi
	movl	%edx, 12(%edi)
	movl	4(%esi), %edi
	movl	%eax, 12(%edi)
	movl	%esi, 8(%eax)
	movl	%ecx, 8(%edx)
	movl	16(%edx), %ecx
	movl	4(%ebx), %eax
	movl	%ecx, 16(%eax)
	movl	4(%edx), %eax
	movl	16(%eax), %ecx
	movl	%eax, 8(%ecx)
	movl	4(%ebx), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, 20(%eax)
	movl	28(%ebx), %eax
	movl	%eax, 28(%edx)
	movl	4(%ebx), %ecx
	movl	4(%edx), %eax
	movl	28(%ecx), %ecx
	movl	%ecx, 28(%eax)
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
L480:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	%edx, %eax
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L482:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%edi, %eax
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L485
	movl	(%edi), %esi
	movl	4(%esp), %edx
	movl	(%esp), %ecx
	movl	(%esi), %eax
	jmp	L483
L485:
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	20(%esp), %ebp
	.cfi_restore 5
	xorl	%edx, %edx
	jmp	L480
	.cfi_endproc
LFE45:
	.p2align 4
	.def	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion:
LFB47:
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
	movl	%edx, %ebx
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	4(%edx), %ecx
	movl	(%edx), %esi
	movl	%eax, 8(%esp)
	movl	8(%ecx), %eax
	movl	(%eax), %eax
	movl	(%eax), %ebp
	movl	%eax, 12(%esp)
	movl	16(%esi), %eax
	movl	16(%ebp), %edx
	movss	24(%eax), %xmm1
	movss	24(%edx), %xmm0
	comiss	%xmm1, %xmm0
	ja	L495
	ucomiss	%xmm0, %xmm1
	jp	L496
	jne	L496
	movss	28(%eax), %xmm2
	movss	28(%edx), %xmm3
	comiss	%xmm2, %xmm3
	jb	L496
	movl	4(%ebp), %ecx
	movaps	%xmm1, %xmm4
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	movl	16(%ecx), %edi
	subss	24(%edi), %xmm4
	movaps	%xmm4, %xmm5
	addss	%xmm0, %xmm5
	comiss	%xmm1, %xmm5
	ja	L544
L517:
	ucomiss	%xmm3, %xmm2
	jp	L519
	jne	L519
	cmpl	%edx, %eax
	je	L522
	movl	32(%eax), %ebx
	movl	8(%esp), %eax
	movl	76(%eax), %ecx
	testl	%ebx, %ebx
	jns	L545
	movl	4(%ecx), %eax
	notl	%ebx
	movl	$0, (%eax,%ebx,4)
	movl	12(%ecx), %eax
	testl	%eax, %eax
	jle	L510
	movl	8(%ecx), %ebx
	jmp	L511
	.p2align 5
	.p2align 4,,10
	.p2align 3
L512:
	subl	$1, %eax
	movl	%eax, 12(%ecx)
	je	L510
L511:
	movl	-4(%ebx,%eax,4), %edx
	movl	(%edx), %edx
	testl	%edx, %edx
	je	L512
L510:
	movl	4(%ebp), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L494
L502:
	movl	8(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L495:
	movl	4(%ebp), %ecx
	movaps	%xmm1, %xmm3
	subss	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	movl	16(%ecx), %edi
	subss	24(%edi), %xmm3
	movaps	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm2, %xmm1
	jbe	L519
	movss	28(%eax), %xmm1
	movaps	%xmm1, %xmm4
	subss	28(%edx), %xmm1
	subss	28(%edi), %xmm4
	mulss	%xmm3, %xmm1
	mulss	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm2, %xmm0
	jbe	L519
L520:
	xorl	%eax, %eax
L494:
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
L496:
	.cfi_restore_state
	movl	4(%esi), %edi
	movaps	%xmm0, %xmm4
	subss	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	movl	16(%edi), %edi
	subss	24(%edi), %xmm4
	movaps	%xmm4, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm3, %xmm0
	ja	L546
L513:
	movl	$1, 20(%ebx)
	movl	4(%ecx), %eax
	movl	8(%esp), %ebx
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	movl	4(%esi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L502
	movl	4(%ebp), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L502
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
L519:
	.cfi_restore_state
	movl	8(%esp), %eax
	movl	%ecx, %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L502
	movl	4(%ebp), %eax
	movl	%esi, %edx
	movl	12(%eax), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L502
	movl	12(%esp), %esi
	movl	$1, 20(%esi)
	movl	$1, 20(%ebx)
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
L546:
	.cfi_restore_state
	movss	28(%edx), %xmm0
	movaps	%xmm0, %xmm2
	subss	28(%edi), %xmm0
	subss	28(%eax), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm4, %xmm2
	addss	%xmm2, %xmm0
	comiss	%xmm0, %xmm3
	ja	L520
	jmp	L513
	.p2align 4,,10
	.p2align 3
L522:
	movl	$1, %eax
	jmp	L494
	.p2align 4,,10
	.p2align 3
L545:
	movl	(%ecx), %edi
	movl	4(%edi), %eax
	movl	(%edi), %ecx
	leal	(%eax,%ebx,8), %edx
	movl	%eax, 16(%esp)
	movl	4(%edx), %eax
	movl	%edx, 28(%esp)
	movl	%ecx, %edx
	movl	%edx, 24(%esp)
	leal	(%ecx,%eax,4), %ecx
	movl	%eax, 12(%esp)
	movl	8(%edi), %eax
	movl	%ecx, 20(%esp)
	movl	(%edx,%eax,4), %eax
	movl	12(%esp), %edx
	movl	%eax, (%ecx)
	movl	16(%esp), %ecx
	movl	%edx, 4(%ecx,%eax,8)
	movl	8(%edi), %eax
	subl	$1, %eax
	movl	%eax, 8(%edi)
	cmpl	%eax, %edx
	jg	L505
	cmpl	$1, %edx
	jle	L506
	movl	%edx, %eax
	movl	24(%esp), %edx
	sarl	%eax
	movl	(%edx,%eax,4), %eax
	movl	(%ecx,%eax,8), %edx
	movl	20(%esp), %eax
	movl	(%eax), %eax
	movss	24(%edx), %xmm1
	movl	(%ecx,%eax,8), %eax
	movss	24(%eax), %xmm0
	comiss	%xmm1, %xmm0
	ja	L506
	ucomiss	%xmm0, %xmm1
	jp	L507
	jne	L507
	movss	28(%eax), %xmm0
	comiss	28(%edx), %xmm0
	jnb	L506
L507:
	movl	(%edi), %eax
	movl	12(%esp), %ecx
	movl	4(%edi), %edx
	call	__ZL7FloatUpP13PriorityQHeapi.isra.0
	.p2align 4
	.p2align 3
L505:
	movl	28(%esp), %ecx
	movl	$0, (%ecx)
	movl	16(%edi), %eax
	movl	%eax, 4(%ecx)
	movl	%ebx, 16(%edi)
	jmp	L510
L506:
	movl	12(%esp), %edx
	movl	%edi, %eax
	call	__ZL9FloatDownP13PriorityQHeapi
	jmp	L505
L544:
	movaps	%xmm2, %xmm5
	subss	28(%edi), %xmm5
	mulss	%xmm5, %xmm0
	movaps	%xmm2, %xmm5
	subss	%xmm3, %xmm5
	mulss	%xmm5, %xmm4
	addss	%xmm4, %xmm0
	comiss	%xmm1, %xmm0
	ja	L520
	jmp	L517
	.cfi_endproc
LFE47:
	.p2align 4
	.def	__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion:
LFB50:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 8(%esp)
	movl	4(%edx), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edi
	.p2align 4
	.p2align 3
L548:
	movl	20(%edi), %ebx
	testl	%ebx, %ebx
	jne	L549
L610:
	movl	20(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L550
	movl	4(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L547
	movl	20(%eax), %edx
	testl	%edx, %edx
	je	L547
	movl	%ebp, %edi
	movl	%eax, %ebp
L550:
	movl	$0, 20(%ebp)
	movl	0(%ebp), %ebx
	movl	(%edi), %esi
	movl	4(%ebx), %eax
	movl	4(%esi), %ecx
	movl	16(%eax), %eax
	movl	%ecx, 12(%esp)
	movl	16(%ecx), %ecx
	cmpl	%ecx, %eax
	je	L552
	movl	4(%ebp), %edx
	movss	24(%eax), %xmm1
	movl	%edx, 24(%esp)
	movl	8(%edx), %edx
	movl	(%edx), %edx
	movl	%edx, 12(%esp)
	movl	(%edx), %edx
	movl	%edx, 16(%esp)
	movl	4(%edx), %edx
	movl	16(%edx), %edx
	movss	24(%edx), %xmm0
	movl	%edx, 20(%esp)
	comiss	%xmm1, %xmm0
	ja	L553
	ucomiss	%xmm0, %xmm1
	jp	L554
	jne	L554
	movss	28(%edx), %xmm2
	comiss	28(%eax), %xmm2
	jnb	L553
L554:
	movl	16(%esp), %edx
	movaps	%xmm1, %xmm3
	xorps	%xmm5, %xmm5
	subss	%xmm0, %xmm3
	movl	16(%edx), %edx
	movss	24(%edx), %xmm0
	subss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm5, %xmm1
	ja	L607
L563:
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	$1, 20(%eax)
	movl	8(%esp), %eax
	movl	$1, 20(%ebp)
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	je	L561
	movl	16(%esp), %edx
	movl	8(%esp), %eax
	movl	4(%edx), %ecx
	movl	(%eax), %eax
	movl	12(%ebx), %edx
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L561
	movl	12(%esp), %ecx
	movl	12(%ebp), %edx
	movl	4(%ecx), %eax
	movl	20(%eax), %eax
	movb	%dl, 21(%eax)
	movl	24(%edi), %eax
	testl	%eax, %eax
	jne	L608
L566:
	movl	24(%ebp), %ecx
	testl	%ecx, %ecx
	jne	L609
L567:
	movl	4(%esi), %ecx
	movl	4(%ebx), %eax
	movl	16(%esi), %edx
	movl	%ecx, 12(%esp)
	movl	16(%eax), %eax
	movl	16(%ecx), %ecx
	cmpl	%edx, 16(%ebx)
	je	L568
	cmpl	%ecx, %eax
	je	L569
L574:
	movl	24(%ebp), %edx
	testl	%edx, %edx
	jne	L569
	movl	24(%edi), %edx
	testl	%edx, %edx
	jne	L569
	movl	8(%esp), %edx
	movl	80(%edx), %edx
	cmpl	%ecx, %edx
	je	L580
	cmpl	%eax, %edx
	je	L580
	.p2align 4
	.p2align 3
L569:
	movl	8(%esp), %eax
	movl	%ebp, %edx
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
L572:
	movl	16(%esi), %eax
	cmpl	%eax, 16(%ebx)
	jne	L548
	movl	4(%esi), %ecx
	movl	4(%ebx), %eax
	movl	%ecx, 12(%esp)
	movl	16(%eax), %eax
	movl	16(%ecx), %ecx
L568:
	cmpl	%ecx, %eax
	je	L575
	movl	20(%edi), %ebx
	testl	%ebx, %ebx
	je	L610
	.p2align 4
	.p2align 3
L549:
	movl	4(%edi), %eax
	movl	%edi, %ebp
	movl	8(%eax), %eax
	movl	(%eax), %edi
	jmp	L548
	.p2align 4,,10
	.p2align 3
L552:
	movl	16(%esi), %eax
	cmpl	%eax, 16(%ebx)
	jne	L569
L575:
	movl	28(%ebx), %eax
	addl	%eax, 28(%esi)
	movl	12(%esp), %esi
	movl	4(%ebx), %eax
	movl	28(%eax), %eax
	addl	%eax, 28(%esi)
	movl	0(%ebp), %eax
	movl	8(%esp), %esi
	movl	$0, 24(%eax)
	movl	4(%ebp), %eax
	movl	72(%esi), %ecx
	movl	8(%eax), %edx
	movl	4(%eax), %esi
	movl	%edx, 8(%esi)
	movl	4(%eax), %esi
	movl	%esi, 4(%edx)
	movl	16(%ecx), %edx
	movl	8(%esp), %esi
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	%eax, (%edx)
	movl	84(%esi), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebx, %edx
	movl	%ebp, (%eax)
	movl	(%esi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L561
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebp
	jmp	L548
	.p2align 4,,10
	.p2align 3
L553:
	movl	16(%ebx), %edx
	movaps	%xmm0, %xmm3
	xorps	%xmm4, %xmm4
	subss	%xmm1, %xmm3
	movss	24(%edx), %xmm1
	movl	%edx, 12(%esp)
	subss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	comiss	%xmm4, %xmm0
	ja	L611
L557:
	movl	24(%esp), %eax
	movl	$1, 20(%ebp)
	movl	%ebx, %edx
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L561
	movl	16(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	4(%eax), %edx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L561
	movl	12(%esp), %ecx
	movl	12(%ebp), %edx
	movl	20(%ecx), %eax
	movb	%dl, 21(%eax)
	movl	24(%edi), %eax
	testl	%eax, %eax
	je	L566
L608:
	movl	(%edi), %eax
	movl	8(%esp), %ecx
	movl	$0, 24(%eax)
	movl	4(%edi), %eax
	movl	72(%ecx), %ecx
	movl	8(%eax), %edx
	movl	%ecx, 12(%esp)
	movl	4(%eax), %ecx
	movl	%edx, 8(%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	12(%esp), %ecx
	movl	16(%ecx), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	8(%esp), %ecx
	movl	%eax, (%edx)
	movl	84(%ecx), %eax
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	%esi, %edx
	movl	%edi, (%eax)
	movl	(%ecx), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L561
	movl	4(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %edi
	movl	(%edi), %esi
	jmp	L567
	.p2align 4,,10
	.p2align 3
L611:
	movl	20(%esp), %edx
	movss	28(%edx), %xmm0
	movl	12(%esp), %edx
	movaps	%xmm0, %xmm2
	subss	28(%eax), %xmm0
	subss	28(%edx), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm0
	comiss	%xmm0, %xmm4
	jbe	L557
L559:
	movl	12(%esp), %edx
	cmpl	%edx, 16(%esi)
	jne	L574
	jmp	L548
	.p2align 4,,10
	.p2align 3
L607:
	movss	28(%eax), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%edx), %xmm2
	movl	20(%esp), %edx
	subss	28(%edx), %xmm1
	mulss	%xmm3, %xmm2
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	comiss	%xmm5, %xmm2
	jbe	L563
	movl	16(%ebx), %edx
	movl	%edx, 12(%esp)
	jmp	L559
	.p2align 4,,10
	.p2align 3
L580:
	movl	8(%esp), %eax
	movl	%ebp, %edx
	call	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion
	testl	%eax, %eax
	je	L572
L547:
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
L609:
	.cfi_restore_state
	movl	0(%ebp), %eax
	movl	8(%esp), %ecx
	movl	$0, 24(%eax)
	movl	4(%ebp), %eax
	movl	72(%ecx), %ecx
	movl	8(%eax), %edx
	movl	%ecx, 12(%esp)
	movl	4(%eax), %ecx
	movl	%edx, 8(%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	12(%esp), %ecx
	movl	16(%ecx), %edx
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
	movl	8(%esp), %ecx
	movl	%eax, (%edx)
	movl	84(%ecx), %eax
	movl	(%eax), %edx
	movl	%edx, 0(%ebp)
	movl	%ebx, %edx
	movl	%ebp, (%eax)
	movl	(%ecx), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L561
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %ebp
	movl	0(%ebp), %ebx
	jmp	L567
L561:
	movl	8(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.cfi_endproc
LFE50:
	.p2align 4
	.def	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i;	.scl	3;	.type	32;	.endef
__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i:
LFB52:
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
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	movl	44(%esp), %eax
	movl	40(%esp), %esi
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	movl	%eax, 16(%esp)
	.p2align 4
	.p2align 3
L613:
	movl	4(%ebx), %ecx
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge
	movl	8(%ebx), %ebx
	cmpl	%esi, %ebx
	jne	L613
	movl	4(%edi), %eax
	movl	8(%esp), %ecx
	movl	8(%eax), %eax
	movl	(%eax), %esi
	movl	(%esi), %eax
	movl	4(%eax), %ebx
	testl	%ecx, %ecx
	je	L636
L614:
	movl	8(%esp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, 16(%ebx)
	jne	L622
	movl	$1, 12(%esp)
	jmp	L616
	.p2align 4,,10
	.p2align 3
L620:
	movl	4(%esi), %eax
	movl	%ebx, 8(%esp)
	movl	%esi, %edi
	movl	$0, 12(%esp)
	movl	16(%ebx), %ebx
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	4(%edx), %edx
	cmpl	%ebx, 16(%edx)
	jne	L615
	movl	%edx, %ebx
	movl	%eax, %esi
L616:
	movl	8(%esp), %eax
	cmpl	%eax, 8(%ebx)
	je	L617
	movl	4(%ebx), %eax
	movl	%ebx, %ecx
	movl	12(%eax), %edx
	movl	0(%ebp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L619
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	movl	4(%eax), %eax
	movl	12(%eax), %edx
	movl	0(%ebp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L619
L617:
	movl	8(%edi), %edx
	subl	28(%ebx), %edx
	movl	%edx, 8(%esi)
	movl	68(%ebp), %eax
	call	__ZL15IsWindingInsidePK14TESStesselatori.isra.0
	movl	12(%esp), %edx
	movl	%eax, 12(%esi)
	movl	$1, 20(%edi)
	testl	%edx, %edx
	jne	L620
	movl	%edi, %edx
	movl	%ebp, %eax
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
	testl	%eax, %eax
	je	L620
	movl	8(%esp), %ecx
	movl	28(%ecx), %eax
	addl	%eax, 28(%ebx)
	movl	4(%ebx), %eax
	movl	4(%ecx), %edx
	movl	28(%edx), %edx
	addl	%edx, 28(%eax)
	movl	(%edi), %eax
	movl	$0, 24(%eax)
	movl	4(%edi), %edx
	movl	72(%ebp), %eax
	movl	4(%edx), %ecx
	movl	%eax, 12(%esp)
	movl	8(%edx), %eax
	movl	%eax, 8(%ecx)
	movl	4(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	12(%esp), %eax
	movl	16(%eax), %eax
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	movl	%edx, (%eax)
	movl	84(%ebp), %eax
	movl	(%eax), %edx
	movl	%edx, (%edi)
	movl	8(%esp), %edx
	movl	%edi, (%eax)
	movl	0(%ebp), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L620
L619:
	leal	152(%ebp), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L622:
	movl	%edi, %esi
	.p2align 4
	.p2align 3
L615:
	movl	16(%esp), %eax
	movl	$1, 20(%esi)
	testl	%eax, %eax
	jne	L637
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
L637:
	.cfi_restore_state
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%esi, %edx
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
	jmp	__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion
L636:
	.cfi_restore_state
	movl	8(%ebx), %eax
	movl	%eax, 8(%esp)
	jmp	L614
	.cfi_endproc
LFE52:
	.p2align 4
	.def	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion;	.scl	3;	.type	32;	.endef
__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	4(%edx), %esi
	movl	%eax, -48(%ebp)
	movl	8(%esi), %ecx
	movl	%esi, -112(%ebp)
	movl	(%ecx), %edi
	movl	(%edx), %ecx
	movl	(%edi), %esi
	movl	16(%ecx), %ebx
	movl	%edi, -100(%ebp)
	movl	%ecx, -92(%ebp)
	movl	16(%esi), %edi
	cmpl	%edi, %ebx
	je	L639
	movl	4(%esi), %eax
	movss	28(%edi), %xmm4
	movl	4(%ecx), %ecx
	movss	28(%ebx), %xmm5
	movl	%eax, -120(%ebp)
	movl	16(%eax), %eax
	movl	%ecx, -116(%ebp)
	movl	16(%ecx), %ecx
	movss	28(%eax), %xmm6
	movss	%xmm4, -64(%ebp)
	movss	28(%ecx), %xmm7
	movl	%ecx, -68(%ebp)
	movaps	%xmm6, %xmm0
	movl	%eax, -52(%ebp)
	cmpless	%xmm4, %xmm0
	movaps	%xmm7, %xmm2
	movss	%xmm6, -80(%ebp)
	andps	%xmm0, %xmm4
	andnps	%xmm6, %xmm0
	movaps	%xmm4, %xmm1
	orps	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	cmpnless	%xmm7, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm5, %xmm0
	orps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L639
	movss	24(%edi), %xmm3
	movss	24(%ebx), %xmm4
	comiss	%xmm4, %xmm3
	movss	%xmm3, -40(%ebp)
	ja	L645
	ucomiss	%xmm3, %xmm4
	jp	L646
	jne	L646
	movss	-64(%ebp), %xmm1
	comiss	%xmm5, %xmm1
	jb	L646
L645:
	movl	-52(%ebp), %eax
	movss	-40(%ebp), %xmm2
	xorps	%xmm1, %xmm1
	movss	24(%eax), %xmm3
	subss	%xmm4, %xmm2
	movaps	%xmm3, %xmm6
	movss	%xmm3, -88(%ebp)
	movaps	%xmm4, %xmm3
	subss	%xmm6, %xmm3
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L958
L649:
	movl	-68(%ebp), %eax
	movss	24(%eax), %xmm3
	movss	%xmm3, -84(%ebp)
	movss	-84(%ebp), %xmm0
	comiss	%xmm0, %xmm4
	ja	L820
L966:
	ucomiss	%xmm0, %xmm4
	jp	L935
	jne	L935
	comiss	%xmm7, %xmm5
	jnb	L959
L935:
	movl	-68(%ebp), %eax
	movl	%ebx, -72(%ebp)
	movaps	%xmm4, %xmm0
	movss	%xmm7, -96(%ebp)
	movl	%eax, -44(%ebp)
	movss	%xmm5, -76(%ebp)
L654:
	movss	-40(%ebp), %xmm1
	movss	-88(%ebp), %xmm6
	comiss	%xmm6, %xmm1
	ja	L823
L967:
	ucomiss	%xmm6, %xmm1
	jp	L936
	jne	L936
	movss	-64(%ebp), %xmm2
	movss	-80(%ebp), %xmm1
	comiss	%xmm1, %xmm2
	jnb	L960
L936:
	movss	-80(%ebp), %xmm6
	movl	-52(%ebp), %eax
	movl	%edi, -60(%ebp)
	movss	%xmm6, -104(%ebp)
	movss	-64(%ebp), %xmm6
	movl	%eax, -56(%ebp)
	movss	%xmm6, -32(%ebp)
	movss	-40(%ebp), %xmm6
L657:
	comiss	%xmm0, %xmm6
	ja	L660
	ucomiss	%xmm0, %xmm6
	jp	L937
	jne	L937
	movss	-32(%ebp), %xmm2
	comiss	-76(%ebp), %xmm2
	jb	L937
	.p2align 4
	.p2align 3
L660:
	movl	-44(%ebp), %eax
	movl	%edx, -124(%ebp)
	movss	24(%eax), %xmm2
	comiss	%xmm6, %xmm2
	movss	%xmm2, -108(%ebp)
	ja	L663
	ucomiss	%xmm6, %xmm2
	jp	L955
	jne	L955
	movss	-96(%ebp), %xmm2
	comiss	-32(%ebp), %xmm2
	jnb	L663
L955:
	movss	-108(%ebp), %xmm0
	addss	%xmm6, %xmm0
	mulss	LC3, %xmm0
	movss	%xmm0, -36(%ebp)
L666:
	movss	-96(%ebp), %xmm2
	movss	-76(%ebp), %xmm1
	comiss	%xmm1, %xmm2
	ja	L696
	ucomiss	%xmm2, %xmm1
	jp	L830
	jne	L830
	movl	-72(%ebp), %eax
	movss	-108(%ebp), %xmm2
	comiss	24(%eax), %xmm2
	jb	L961
	.p2align 4
	.p2align 3
L696:
	movss	-104(%ebp), %xmm3
	movss	-32(%ebp), %xmm1
	comiss	%xmm1, %xmm3
	ja	L699
	ucomiss	%xmm3, %xmm1
	jp	L832
	jne	L832
	movl	-56(%ebp), %edx
	movl	-60(%ebp), %ecx
	movss	24(%edx), %xmm0
	movl	%ecx, %eax
	comiss	%xmm6, %xmm0
	cmpless	%xmm0, %xmm6
	cmovb	%edx, %ecx
	cmovnb	%edx, %eax
	andps	%xmm6, %xmm1
	andnps	%xmm3, %xmm6
	movl	%ecx, -60(%ebp)
	orps	%xmm1, %xmm6
	movl	%eax, -56(%ebp)
	movss	%xmm6, -32(%ebp)
L699:
	movss	-32(%ebp), %xmm2
	movss	-76(%ebp), %xmm6
	comiss	%xmm6, %xmm2
	ja	L702
	ucomiss	%xmm2, %xmm6
	jp	L834
	jne	L834
	movl	-60(%ebp), %eax
	movss	24(%eax), %xmm0
	movl	-72(%ebp), %eax
	comiss	24(%eax), %xmm0
	jb	L962
	.p2align 4
	.p2align 3
L702:
	movl	-44(%ebp), %eax
	movss	-32(%ebp), %xmm3
	movss	28(%eax), %xmm6
	comiss	%xmm3, %xmm6
	ja	L705
	ucomiss	%xmm3, %xmm6
	jp	L957
	jne	L957
	movl	-60(%ebp), %edx
	movss	24(%eax), %xmm0
	movss	24(%edx), %xmm1
	comiss	%xmm1, %xmm0
	movss	%xmm1, -76(%ebp)
	jnb	L708
L957:
	movss	-32(%ebp), %xmm0
	addss	%xmm6, %xmm0
	mulss	LC3, %xmm0
L709:
	movl	-48(%ebp), %eax
	movl	80(%eax), %eax
	movss	24(%eax), %xmm1
	comiss	-36(%ebp), %xmm1
	jbe	L948
	movss	28(%eax), %xmm0
	movss	%xmm1, -36(%ebp)
L743:
	movss	-40(%ebp), %xmm6
	comiss	%xmm4, %xmm6
	jbe	L949
	movss	-36(%ebp), %xmm3
	comiss	%xmm4, %xmm3
	jbe	L747
	movss	28(%ebx), %xmm0
	ucomiss	%xmm0, %xmm5
	jp	L873
	je	L749
L873:
	movss	%xmm4, -36(%ebp)
L751:
	ucomiss	-84(%ebp), %xmm1
	jp	L773
	jne	L773
	ucomiss	28(%eax), %xmm7
	jp	L773
	jne	L773
L775:
	ucomiss	-88(%ebp), %xmm1
	jp	L779
	jne	L779
	movss	-80(%ebp), %xmm5
	ucomiss	28(%eax), %xmm5
	jp	L779
	jne	L779
L781:
	movl	-48(%ebp), %eax
	movl	-116(%ebp), %edx
	movss	%xmm0, -32(%ebp)
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	-48(%ebp), %eax
	movl	4(%esi), %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	4(%esi), %eax
	movl	-92(%ebp), %esi
	movl	12(%eax), %edx
	movl	-48(%ebp), %eax
	movl	%esi, %ecx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	16(%esi), %eax
	movss	-36(%ebp), %xmm7
	movss	-32(%ebp), %xmm0
	movss	%xmm7, 24(%eax)
	movl	16(%esi), %eax
	movss	%xmm0, 28(%eax)
	movl	-48(%ebp), %eax
	movl	16(%esi), %edx
	movl	76(%eax), %esi
	movl	%edx, -32(%ebp)
	movl	20(%esi), %edx
	testl	%edx, %edx
	jne	L963
	movl	12(%esi), %eax
	movl	16(%esi), %edx
	movl	%eax, -36(%ebp)
	addl	$1, %eax
	movl	%eax, 12(%esi)
	cmpl	%edx, %eax
	jl	L799
	movl	-48(%ebp), %ecx
	movl	116(%ecx), %eax
	testl	%eax, %eax
	je	L800
	movl	4(%esi), %eax
	movl	%eax, -40(%ebp)
	leal	(%edx,%edx), %eax
	sall	$3, %edx
	movl	%eax, 16(%esi)
	movl	116(%ecx), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L801
	movl	%edx, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%edx, -44(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L933
	movl	-44(%ebp), %edx
	testl	%edx, %edx
	jne	L964
L802:
	testl	%eax, %eax
	je	L803
L933:
	movl	%eax, 4(%esi)
	jmp	L804
	.p2align 4,,10
	.p2align 3
L958:
	movaps	%xmm5, %xmm0
	subss	-64(%ebp), %xmm0
	mulss	%xmm3, %xmm0
	movaps	%xmm5, %xmm3
	subss	-80(%ebp), %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	comiss	%xmm1, %xmm0
	jbe	L649
	.p2align 4
	.p2align 3
L639:
	xorl	%ebx, %ebx
L638:
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
	ret
	.p2align 4,,10
	.p2align 3
L646:
	.cfi_restore_state
	movl	-68(%ebp), %eax
	movss	-40(%ebp), %xmm1
	movaps	%xmm4, %xmm2
	movss	24(%eax), %xmm6
	movaps	%xmm1, %xmm3
	subss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	subss	%xmm6, %xmm3
	movss	%xmm6, -84(%ebp)
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	ja	L965
L652:
	movss	-84(%ebp), %xmm0
	movl	-52(%ebp), %eax
	comiss	%xmm0, %xmm4
	movss	24(%eax), %xmm1
	movss	%xmm1, -88(%ebp)
	jbe	L966
L820:
	movss	-40(%ebp), %xmm1
	movss	-88(%ebp), %xmm6
	movl	%ebx, -44(%ebp)
	movl	-68(%ebp), %eax
	movss	-84(%ebp), %xmm0
	movss	%xmm5, -96(%ebp)
	comiss	%xmm6, %xmm1
	movss	%xmm7, -76(%ebp)
	movl	%eax, -72(%ebp)
	jbe	L967
L823:
	movss	-64(%ebp), %xmm6
	movl	-52(%ebp), %eax
	movl	%edi, -56(%ebp)
	movss	%xmm6, -104(%ebp)
	movss	-80(%ebp), %xmm6
	movl	%eax, -60(%ebp)
	movss	%xmm6, -32(%ebp)
	movss	-88(%ebp), %xmm6
	jmp	L657
	.p2align 4,,10
	.p2align 3
L965:
	movss	-64(%ebp), %xmm0
	subss	%xmm5, %xmm0
	mulss	%xmm3, %xmm0
	movss	-64(%ebp), %xmm3
	subss	%xmm7, %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm3, %xmm0
	comiss	%xmm0, %xmm1
	ja	L639
	jmp	L652
	.p2align 4,,10
	.p2align 3
L663:
	movl	-56(%ebp), %eax
	movss	-108(%ebp), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm1, %xmm0
	ja	L667
	ucomiss	%xmm0, %xmm1
	jp	L668
	jne	L668
	movss	-104(%ebp), %xmm3
	comiss	-96(%ebp), %xmm3
	jb	L668
L667:
	movl	-44(%ebp), %ecx
	movl	-60(%ebp), %edx
	movss	%xmm4, -136(%ebp)
	movl	-72(%ebp), %eax
	movss	%xmm5, -132(%ebp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_
	movl	-56(%ebp), %ecx
	movl	-44(%ebp), %edx
	fstps	-36(%ebp)
	movl	-60(%ebp), %eax
	movss	-36(%ebp), %xmm0
	movss	%xmm0, -128(%ebp)
	call	__ZL11tesedgeEvalPK10TESSvertexS1_S1_
	movss	-128(%ebp), %xmm0
	xorps	%xmm3, %xmm3
	movss	-132(%ebp), %xmm5
	fstps	-36(%ebp)
	movss	-36(%ebp), %xmm2
	movss	-136(%ebp), %xmm4
	movaps	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	comiss	%xmm1, %xmm3
	jbe	L671
	xorps	LC2, %xmm0
	xorps	LC2, %xmm2
L671:
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm1
	cmpnltss	%xmm3, %xmm1
	andps	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	cmpnltss	%xmm3, %xmm0
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jb	L938
	ucomiss	%xmm3, %xmm0
	jp	L679
	je	L955
L679:
	addss	%xmm1, %xmm0
	divss	%xmm0, %xmm1
	movss	-108(%ebp), %xmm0
	subss	%xmm6, %xmm0
	mulss	%xmm0, %xmm1
	addss	%xmm6, %xmm1
	movss	%xmm1, -36(%ebp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L705:
	movl	-60(%ebp), %eax
	movss	24(%eax), %xmm3
	movss	%xmm3, -76(%ebp)
L708:
	movl	-56(%ebp), %eax
	movss	28(%eax), %xmm2
	comiss	%xmm6, %xmm2
	movss	%xmm2, -60(%ebp)
	jbe	L943
	movl	-44(%ebp), %edx
	movss	24(%edx), %xmm2
	movss	%xmm2, -44(%ebp)
	movss	24(%eax), %xmm2
	movss	%xmm2, -56(%ebp)
L712:
	movl	-72(%ebp), %eax
	movss	%xmm4, -104(%ebp)
	movss	%xmm5, -96(%ebp)
	movss	28(%eax), %xmm1
	movss	24(%eax), %xmm0
	movss	%xmm6, 8(%esp)
	movss	-44(%ebp), %xmm5
	movss	%xmm5, 4(%esp)
	movss	-32(%ebp), %xmm4
	movss	%xmm4, (%esp)
	movss	-76(%ebp), %xmm2
	call	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0
	movss	-60(%ebp), %xmm3
	fstps	-72(%ebp)
	movss	%xmm3, 8(%esp)
	movss	-56(%ebp), %xmm3
	movss	%xmm6, (%esp)
	movss	%xmm3, 4(%esp)
	movss	-44(%ebp), %xmm2
	movss	-32(%ebp), %xmm1
	movss	-76(%ebp), %xmm0
	call	__ZL12testransEvalPK10TESSvertexS1_S1_.isra.0
	movss	-72(%ebp), %xmm3
	xorps	%xmm1, %xmm1
	movss	-96(%ebp), %xmm5
	fstps	-44(%ebp)
	movss	-44(%ebp), %xmm2
	movss	-104(%ebp), %xmm4
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	comiss	%xmm0, %xmm1
	jbe	L717
	xorps	LC2, %xmm3
	xorps	LC2, %xmm2
L717:
	xorps	%xmm0, %xmm0
	movaps	%xmm3, %xmm1
	cmpnltss	%xmm0, %xmm1
	andps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	cmpnltss	%xmm3, %xmm0
	andps	%xmm2, %xmm0
	comiss	%xmm1, %xmm0
	jb	L944
	ucomiss	%xmm3, %xmm0
	jp	L725
	je	L957
L725:
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm1
	movss	-32(%ebp), %xmm2
	subss	%xmm2, %xmm6
	movaps	%xmm1, %xmm0
	mulss	%xmm6, %xmm0
	addss	%xmm2, %xmm0
	jmp	L709
	.p2align 4,,10
	.p2align 3
L937:
	movss	-96(%ebp), %xmm1
	movss	-104(%ebp), %xmm6
	movl	-44(%ebp), %ecx
	movl	-56(%ebp), %eax
	movss	%xmm6, -96(%ebp)
	movss	-76(%ebp), %xmm6
	movl	%eax, -44(%ebp)
	movl	-60(%ebp), %eax
	movl	%ecx, -56(%ebp)
	movl	-72(%ebp), %ecx
	movss	%xmm1, -104(%ebp)
	movss	-32(%ebp), %xmm1
	movl	%eax, -72(%ebp)
	movss	%xmm6, -32(%ebp)
	movaps	%xmm0, %xmm6
	movl	%ecx, -60(%ebp)
	movss	%xmm1, -76(%ebp)
	jmp	L660
	.p2align 4,,10
	.p2align 3
L779:
	movss	-36(%ebp), %xmm2
	movaps	%xmm1, %xmm6
	subss	-88(%ebp), %xmm6
	xorps	%xmm5, %xmm5
	subss	%xmm1, %xmm2
	movaps	%xmm6, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	ja	L968
L777:
	cmpl	-52(%ebp), %eax
	je	L969
	cmpl	-68(%ebp), %eax
	je	L970
	movaps	%xmm1, %xmm5
	subss	-84(%ebp), %xmm5
	xorps	%xmm6, %xmm6
	movaps	%xmm5, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm6, %xmm3
	ja	L971
L790:
	movl	-124(%ebp), %eax
	movl	-92(%ebp), %edi
	movss	%xmm0, -32(%ebp)
	movl	-48(%ebp), %ebx
	movl	$1, 20(%eax)
	movl	-112(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	movl	4(%edi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	80(%ebx), %edx
	movl	16(%edi), %eax
	movss	-36(%ebp), %xmm2
	movss	-32(%ebp), %xmm0
	movss	24(%edx), %xmm1
	movss	%xmm1, 24(%eax)
	movl	80(%ebx), %edx
	movl	16(%edi), %eax
	movss	28(%edx), %xmm1
	movss	%xmm1, 28(%eax)
	movl	80(%ebx), %eax
	movl	-52(%ebp), %ebx
	movss	24(%eax), %xmm1
	movss	24(%ebx), %xmm7
	subss	%xmm1, %xmm2
	movss	%xmm7, -88(%ebp)
L792:
	subss	-88(%ebp), %xmm1
	movaps	%xmm2, %xmm3
	xorps	%xmm4, %xmm4
	addss	%xmm1, %xmm3
	comiss	%xmm4, %xmm3
	ja	L972
L794:
	movl	-100(%ebp), %eax
	movl	-48(%ebp), %ebx
	movl	$1, 20(%eax)
	movl	-124(%ebp), %eax
	movl	$1, 20(%eax)
	movl	4(%esi), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	80(%ebx), %edx
	movl	16(%esi), %eax
	movss	24(%edx), %xmm0
	movss	%xmm0, 24(%eax)
	movl	80(%ebx), %edx
	movl	16(%esi), %eax
	movss	28(%edx), %xmm0
	movss	%xmm0, 28(%eax)
	jmp	L639
	.p2align 4,,10
	.p2align 3
L668:
	movl	-72(%ebp), %eax
	movaps	%xmm6, %xmm1
	movss	-108(%ebp), %xmm3
	movss	24(%eax), %xmm2
	subss	%xmm6, %xmm3
	subss	%xmm2, %xmm1
	movss	%xmm3, -128(%ebp)
	movss	%xmm1, -36(%ebp)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	movss	-108(%ebp), %xmm2
	subss	%xmm0, %xmm2
	movss	%xmm1, -140(%ebp)
	movss	%xmm2, -136(%ebp)
	addss	%xmm1, %xmm2
	movss	-36(%ebp), %xmm1
	addss	%xmm3, %xmm1
	xorps	%xmm3, %xmm3
	movss	%xmm2, -132(%ebp)
	comiss	%xmm3, %xmm1
	ja	L681
	comiss	%xmm3, %xmm2
	ja	L973
L683:
	addss	%xmm6, %xmm0
	mulss	LC3, %xmm0
	movss	%xmm0, -36(%ebp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L773:
	movss	-36(%ebp), %xmm2
	movaps	%xmm1, %xmm6
	subss	-84(%ebp), %xmm6
	xorps	%xmm5, %xmm5
	subss	%xmm1, %xmm2
	movaps	%xmm6, %xmm3
	addss	%xmm2, %xmm3
	comiss	%xmm5, %xmm3
	jbe	L777
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	%xmm7, %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm6, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm5, %xmm4
	jb	L775
	jmp	L777
	.p2align 4,,10
	.p2align 3
L949:
	ucomiss	-40(%ebp), %xmm4
	jp	L874
	je	L752
L874:
	movss	-36(%ebp), %xmm6
	movss	-40(%ebp), %xmm2
	comiss	%xmm2, %xmm6
	ja	L974
	movss	-40(%ebp), %xmm6
	ucomiss	-36(%ebp), %xmm6
	jp	L767
	jne	L767
	movss	28(%edi), %xmm2
	comiss	%xmm2, %xmm0
	jb	L767
	movss	-40(%ebp), %xmm5
	movaps	%xmm2, %xmm0
	movss	%xmm5, -36(%ebp)
	jmp	L756
	.p2align 4,,10
	.p2align 3
L948:
	ucomiss	-36(%ebp), %xmm1
	jp	L743
	jne	L743
	movss	28(%eax), %xmm2
	comiss	%xmm0, %xmm2
	jb	L743
	movaps	%xmm2, %xmm0
	movss	%xmm1, -36(%ebp)
	jmp	L743
	.p2align 4,,10
	.p2align 3
L747:
	movaps	%xmm4, %xmm2
	movl	%ebx, %edx
L763:
	ucomiss	-36(%ebp), %xmm2
	jp	L767
	jne	L767
	movss	28(%edx), %xmm3
	comiss	%xmm3, %xmm0
	jnb	L975
L767:
	ucomiss	-36(%ebp), %xmm4
	jp	L756
	jne	L756
L762:
	ucomiss	%xmm0, %xmm5
	jp	L756
	je	L749
L756:
	movss	-40(%ebp), %xmm5
	ucomiss	-36(%ebp), %xmm5
	jp	L751
	jne	L751
	movss	-64(%ebp), %xmm5
	ucomiss	%xmm0, %xmm5
	jp	L751
	jne	L751
L749:
	movl	-124(%ebp), %edx
	movl	-48(%ebp), %eax
	call	__ZL19CheckForRightSpliceP14TESStesselatorP12ActiveRegion
	jmp	L639
	.p2align 4,,10
	.p2align 3
L943:
	movl	-44(%ebp), %eax
	ucomiss	-60(%ebp), %xmm6
	movss	24(%eax), %xmm3
	movl	-56(%ebp), %eax
	movss	%xmm3, -44(%ebp)
	jp	L713
	jne	L713
	movss	24(%eax), %xmm1
	comiss	%xmm3, %xmm1
	movss	%xmm1, -56(%ebp)
	jnb	L712
L715:
	movl	-72(%ebp), %eax
	movss	-32(%ebp), %xmm3
	movaps	%xmm6, %xmm1
	movss	24(%eax), %xmm2
	movss	28(%eax), %xmm0
	subss	%xmm3, %xmm1
	movss	%xmm2, -104(%ebp)
	movaps	%xmm3, %xmm2
	movss	-60(%ebp), %xmm3
	subss	%xmm0, %xmm2
	movss	%xmm1, -72(%ebp)
	subss	%xmm0, %xmm3
	movss	-60(%ebp), %xmm0
	subss	%xmm0, %xmm6
	movss	-72(%ebp), %xmm0
	movss	%xmm3, -108(%ebp)
	addss	%xmm2, %xmm0
	addss	%xmm6, %xmm3
	movss	%xmm3, -96(%ebp)
	movaps	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	comiss	%xmm0, %xmm3
	ja	L976
	movss	-96(%ebp), %xmm3
	comiss	%xmm0, %xmm3
	ja	L977
L819:
	movss	-60(%ebp), %xmm0
	addss	-32(%ebp), %xmm0
	mulss	LC3, %xmm0
	jmp	L709
	.p2align 4,,10
	.p2align 3
L752:
	movss	-64(%ebp), %xmm2
	comiss	%xmm5, %xmm2
	jb	L951
	movss	-36(%ebp), %xmm6
	comiss	%xmm4, %xmm6
	jbe	L747
	movss	28(%ebx), %xmm0
	movss	%xmm4, -36(%ebp)
	jmp	L762
	.p2align 4,,10
	.p2align 3
L830:
	movl	-72(%ebp), %eax
	movl	-44(%ebp), %edx
	movss	-96(%ebp), %xmm1
	movl	%edx, -72(%ebp)
	movl	%eax, -44(%ebp)
	movss	%xmm1, -76(%ebp)
	jmp	L696
	.p2align 4,,10
	.p2align 3
L832:
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	movss	-104(%ebp), %xmm6
	movl	%edx, -60(%ebp)
	movl	%eax, -56(%ebp)
	movss	%xmm6, -32(%ebp)
	jmp	L699
	.p2align 4,,10
	.p2align 3
L834:
	movss	-76(%ebp), %xmm6
	movss	%xmm6, -32(%ebp)
L956:
	movl	-44(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%eax, -56(%ebp)
	movl	-72(%ebp), %eax
	movl	%edx, -44(%ebp)
	movl	-60(%ebp), %edx
	movl	%eax, -60(%ebp)
	movl	%edx, -72(%ebp)
	jmp	L702
	.p2align 4,,10
	.p2align 3
L938:
	addss	%xmm0, %xmm1
	movss	-108(%ebp), %xmm3
	divss	%xmm1, %xmm0
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	movss	%xmm0, -36(%ebp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L944:
	addss	%xmm0, %xmm1
	divss	%xmm1, %xmm0
	movss	-32(%ebp), %xmm1
	subss	%xmm6, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm6, %xmm0
	jmp	L709
	.p2align 4,,10
	.p2align 3
L713:
	movss	24(%eax), %xmm3
	movss	%xmm3, -56(%ebp)
	jmp	L715
	.p2align 4,,10
	.p2align 3
L974:
	movss	28(%edi), %xmm0
	movss	%xmm2, -36(%ebp)
	jmp	L756
	.p2align 4,,10
	.p2align 3
L962:
	movss	-76(%ebp), %xmm1
	movss	%xmm1, -32(%ebp)
	jmp	L956
	.p2align 4,,10
	.p2align 3
L961:
	movl	-72(%ebp), %eax
	movl	-44(%ebp), %edx
	movss	-96(%ebp), %xmm3
	movl	%edx, -72(%ebp)
	movl	%eax, -44(%ebp)
	movss	%xmm3, -76(%ebp)
	jmp	L696
	.p2align 4,,10
	.p2align 3
L960:
	movl	-52(%ebp), %eax
	movl	%edi, -56(%ebp)
	movss	%xmm2, -104(%ebp)
	movl	%eax, -60(%ebp)
	movss	%xmm1, -32(%ebp)
	jmp	L657
	.p2align 4,,10
	.p2align 3
L959:
	movl	-68(%ebp), %eax
	movl	%ebx, -44(%ebp)
	movss	%xmm5, -96(%ebp)
	movl	%eax, -72(%ebp)
	movss	%xmm7, -76(%ebp)
	jmp	L654
	.p2align 4,,10
	.p2align 3
L951:
	movss	-36(%ebp), %xmm3
	movss	-40(%ebp), %xmm6
	comiss	%xmm6, %xmm3
	jbe	L952
	movss	28(%edi), %xmm0
	movss	%xmm6, -36(%ebp)
	jmp	L762
	.p2align 4,,10
	.p2align 3
L976:
	movss	-76(%ebp), %xmm1
	subss	-44(%ebp), %xmm1
	movss	-72(%ebp), %xmm3
	mulss	%xmm1, %xmm2
	movss	-76(%ebp), %xmm1
	subss	-104(%ebp), %xmm1
	mulss	%xmm1, %xmm3
	movss	-96(%ebp), %xmm1
	comiss	%xmm0, %xmm1
	addss	%xmm2, %xmm3
	movaps	%xmm3, %xmm0
	ja	L818
	movss	LC6, %xmm2
	xorps	%xmm6, %xmm6
L729:
	xorps	%xmm1, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L978
	comiss	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	xorps	LC2, %xmm2
	seta	%dl
	comiss	%xmm6, %xmm1
	seta	%al
L732:
	testb	%dl, %dl
	je	L734
	xorps	%xmm2, %xmm2
L734:
	movaps	%xmm6, %xmm1
	testb	%al, %al
	je	L736
	xorps	%xmm1, %xmm1
L736:
	comiss	%xmm2, %xmm1
	jnb	L979
	addss	%xmm1, %xmm2
	movss	-60(%ebp), %xmm6
	movss	-32(%ebp), %xmm0
	subss	%xmm6, %xmm0
	divss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm6, %xmm0
	jmp	L709
	.p2align 4,,10
	.p2align 3
L681:
	movss	-32(%ebp), %xmm2
	movss	-128(%ebp), %xmm3
	movaps	%xmm2, %xmm1
	subss	-76(%ebp), %xmm2
	subss	-96(%ebp), %xmm1
	mulss	-36(%ebp), %xmm1
	mulss	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	addss	%xmm3, %xmm1
	movss	-132(%ebp), %xmm3
	comiss	%xmm2, %xmm3
	movss	%xmm1, -128(%ebp)
	ja	L682
	movss	LC6, %xmm2
	movss	-128(%ebp), %xmm3
	movss	%xmm2, -36(%ebp)
	xorps	%xmm2, %xmm2
L684:
	xorps	%xmm1, %xmm1
	comiss	%xmm3, %xmm1
	jbe	L686
	movss	-128(%ebp), %xmm3
	xorps	LC2, %xmm3
	movss	%xmm2, -36(%ebp)
	movss	%xmm3, -128(%ebp)
L686:
	movss	-128(%ebp), %xmm3
	xorps	%xmm1, %xmm1
	movaps	%xmm3, %xmm2
	cmpnltss	%xmm1, %xmm2
	movss	-36(%ebp), %xmm1
	andps	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cmpnltss	%xmm3, %xmm1
	movss	-36(%ebp), %xmm3
	andps	%xmm3, %xmm1
	comiss	%xmm2, %xmm1
	jnb	L980
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm1
	movaps	%xmm6, %xmm2
	subss	%xmm0, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -36(%ebp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L975:
	movaps	%xmm3, %xmm0
	movss	%xmm2, -36(%ebp)
	jmp	L767
	.p2align 4,,10
	.p2align 3
L799:
	movl	4(%esi), %eax
L804:
	movl	-36(%ebp), %edx
	movl	-32(%ebp), %esi
	movl	%esi, (%eax,%edx,4)
	movl	%edx, %esi
	notl	%esi
L798:
	movl	-32(%ebp), %eax
	movl	%esi, 32(%eax)
	movl	-92(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$268435455, 32(%eax)
	je	L981
	leal	-28(%ebp), %edx
	movl	$0x00000000, 20(%eax)
	movl	$0x00000000, 16(%eax)
	movl	$0x00000000, 12(%eax)
	movl	$-1, 40(%eax)
	movl	%edx, (%esp)
	movl	-68(%ebp), %ecx
	movl	%ebx, %edx
	call	__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf
	leal	-20(%ebp), %edx
	movl	%edx, (%esp)
	movl	-52(%ebp), %ecx
	movl	%edi, %edx
	call	__ZL13VertexWeightsP10TESSvertexPKS_S2_Pf
	movl	-100(%ebp), %eax
	movl	$1, 20(%eax)
	movl	-124(%ebp), %eax
	movl	$1, 20(%eax)
	movl	4(%eax), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	$1, 20(%eax)
	jmp	L639
	.p2align 4,,10
	.p2align 3
L971:
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	%xmm7, %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm6, %xmm4
	jb	L792
	jmp	L790
	.p2align 4,,10
	.p2align 3
L972:
	movss	28(%eax), %xmm3
	movl	-52(%ebp), %eax
	movaps	%xmm3, %xmm5
	subss	%xmm0, %xmm3
	subss	28(%eax), %xmm5
	mulss	%xmm1, %xmm3
	mulss	%xmm5, %xmm2
	addss	%xmm3, %xmm2
	comiss	%xmm2, %xmm4
	jb	L639
	jmp	L794
	.p2align 4,,10
	.p2align 3
L968:
	movss	28(%eax), %xmm3
	movaps	%xmm3, %xmm4
	subss	-80(%ebp), %xmm3
	subss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	%xmm6, %xmm4
	addss	%xmm3, %xmm4
	comiss	%xmm4, %xmm5
	jb	L781
	jmp	L777
	.p2align 4,,10
	.p2align 3
L977:
	xorps	%xmm0, %xmm0
L818:
	movss	-56(%ebp), %xmm3
	movaps	%xmm3, %xmm2
	subss	-104(%ebp), %xmm3
	subss	-44(%ebp), %xmm2
	mulss	-108(%ebp), %xmm2
	movaps	%xmm3, %xmm1
	movaps	%xmm0, %xmm3
	mulss	%xmm6, %xmm1
	movaps	%xmm2, %xmm6
	addss	%xmm1, %xmm6
	movaps	%xmm6, %xmm2
	subss	%xmm6, %xmm3
	xorps	LC2, %xmm2
	jmp	L729
	.p2align 4,,10
	.p2align 3
L973:
	movl	$0x00000000, -128(%ebp)
L682:
	movss	-104(%ebp), %xmm3
	movss	-128(%ebp), %xmm1
	movaps	%xmm3, %xmm2
	subss	-76(%ebp), %xmm3
	subss	-96(%ebp), %xmm2
	mulss	-136(%ebp), %xmm3
	mulss	-140(%ebp), %xmm2
	addss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	movaps	%xmm2, %xmm3
	xorps	LC2, %xmm3
	movss	%xmm3, -36(%ebp)
	movaps	%xmm1, %xmm3
	jmp	L684
	.p2align 4,,10
	.p2align 3
L963:
	movl	(%esi), %edx
	movl	-32(%ebp), %ecx
	addl	$112, %eax
	call	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv
	movl	%eax, %esi
	jmp	L798
	.p2align 4,,10
	.p2align 3
L969:
	movl	-48(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	(%eax), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	4(%esi), %edx
	movl	-48(%ebp), %esi
	movl	-92(%ebp), %ecx
	movl	(%esi), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L784
	movl	-124(%ebp), %edx
	movl	%esi, %eax
	movl	%esi, -48(%ebp)
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %esi
	testl	%eax, %eax
	je	L784
	movl	4(%eax), %eax
	movl	-100(%ebp), %ecx
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	-48(%ebp), %eax
	movl	(%edx), %edi
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	%esi, %edx
	movl	4(%edi), %eax
	movl	12(%eax), %ecx
	movl	$1, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%edi, (%esp)
	movl	-48(%ebp), %eax
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L638
	.p2align 4,,10
	.p2align 3
L952:
	movss	-40(%ebp), %xmm2
	movl	%edi, %edx
	jmp	L763
	.p2align 4,,10
	.p2align 3
L970:
	movl	-48(%ebp), %ebx
	movl	-120(%ebp), %edx
	movl	(%ebx), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L784
	movl	4(%esi), %eax
	movl	12(%eax), %ecx
	movl	-92(%ebp), %eax
	movl	12(%eax), %edx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L784
	movl	-124(%ebp), %edi
	movl	(%edi), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L789:
	movl	4(%edi), %eax
	movl	4(%eax), %eax
	movl	(%eax), %edi
	movl	(%edi), %eax
	movl	4(%eax), %eax
	cmpl	16(%eax), %edx
	je	L789
	movl	4(%edi), %eax
	movl	-124(%ebp), %edx
	xorl	%ecx, %ecx
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	4(%esi), %eax
	movl	-48(%ebp), %esi
	movl	12(%eax), %eax
	movl	%eax, (%edx)
	movl	%esi, %eax
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	%edi, %edx
	movl	8(%eax), %ecx
	movl	$1, 8(%esp)
	movl	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-92(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	movl	%esi, %eax
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L638
	.p2align 4,,10
	.p2align 3
L978:
	comiss	%xmm0, %xmm1
	seta	%dl
	comiss	%xmm1, %xmm6
	movaps	%xmm2, %xmm6
	movaps	%xmm0, %xmm2
	seta	%al
	jmp	L732
	.p2align 4,,10
	.p2align 3
L980:
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm1
	jp	L694
	je	L683
L694:
	addss	%xmm2, %xmm1
	subss	%xmm6, %xmm0
	divss	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	addss	%xmm6, %xmm2
	movss	%xmm2, -36(%ebp)
	jmp	L666
	.p2align 4,,10
	.p2align 3
L979:
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jp	L739
	je	L819
L739:
	addss	%xmm2, %xmm1
	movss	-60(%ebp), %xmm0
	divss	%xmm1, %xmm2
	movss	-32(%ebp), %xmm1
	subss	%xmm1, %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	jmp	L709
L803:
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esi)
L800:
	movl	$268435455, %esi
	jmp	L798
L801:
	movl	%edx, 8(%esp)
	movl	-40(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L802
L964:
	movl	%edx, %eax
	call	__Z13handle_memerri
L784:
	movl	$1, 4(%esp)
	movl	-48(%ebp), %eax
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
L981:
	movl	-48(%ebp), %eax
	movl	76(%eax), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L806
	movl	120(%eax), %eax
	movl	4(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L807
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L808:
	movl	-48(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L809
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L810:
	movl	-48(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L811
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%eax
L806:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L812
	movl	-48(%ebp), %edx
	movl	120(%edx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L813
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%edi
L812:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L814
	movl	-48(%ebp), %edx
	movl	120(%edx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L815
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%esi
L814:
	movl	-48(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L816
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	pushl	%ecx
L817:
	movl	-48(%ebp), %eax
	xorl	%edx, %edx
	movl	%edx, 76(%eax)
	addl	$152, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L815:
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L814
L816:
	movl	%ebx, 4(%esp)
	movl	-48(%ebp), %ebx
	movl	124(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L817
L809:
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L810
L807:
	movl	%edx, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L808
L811:
	movl	%esi, 4(%esp)
	movl	-48(%ebp), %edx
	movl	124(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L806
L813:
	movl	%eax, 4(%esp)
	movl	-48(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L812
	.cfi_endproc
LFE53:
	.p2align 4
	.def	__ZL10SweepEventP14TESStesselatorP10TESSvertex;	.scl	3;	.type	32;	.endef
__ZL10SweepEventP14TESStesselatorP10TESSvertex:
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
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	%edx, 80(%eax)
	movl	%edx, 16(%esp)
	movl	8(%edx), %edx
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	jmp	L983
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1016:
	movl	8(%eax), %eax
	cmpl	%eax, %edx
	je	L1110
L983:
	movl	24(%eax), %ebx
	testl	%ebx, %ebx
	je	L1016
	movl	12(%esp), %edi
	movl	%ebx, %edx
	movl	%edi, %eax
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L998
	movl	4(%eax), %eax
	xorl	%ecx, %ecx
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	%edi, %eax
	movl	(%edx), %esi
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	8(%eax), %edi
	movl	%eax, %ebp
	cmpl	%esi, %edi
	je	L1111
	movl	$1, 8(%esp)
	movl	12(%esp), %eax
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%esi, 4(%esp)
	movl	%esi, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
L982:
	addl	$60, %esp
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
L1110:
	.cfi_restore_state
	movl	4(%edx), %eax
	movl	%eax, 32(%esp)
	movl	12(%esp), %eax
	movl	72(%eax), %edi
	movl	%edi, %ebp
L985:
	movl	4(%ebp), %ebp
	movl	0(%ebp), %esi
	testl	%esi, %esi
	je	L984
	leal	32(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	12(%edi), %eax
	movl	%eax, (%esp)
	call	*20(%edi)
	testl	%eax, %eax
	je	L985
	movl	0(%ebp), %esi
L984:
	movl	4(%esi), %eax
	movl	8(%eax), %edx
	movl	(%edx), %ebp
	testl	%ebp, %ebp
	je	L982
	movl	(%esi), %ecx
	movl	16(%esp), %edi
	xorps	%xmm3, %xmm3
	movl	16(%ecx), %edx
	movss	24(%edi), %xmm1
	movl	%ecx, 20(%esp)
	movl	4(%ecx), %ecx
	movss	24(%edx), %xmm6
	movaps	%xmm1, %xmm5
	movl	%ecx, 28(%esp)
	movl	16(%ecx), %ecx
	movaps	%xmm6, %xmm4
	movss	24(%ecx), %xmm0
	subss	%xmm1, %xmm4
	subss	%xmm0, %xmm5
	movaps	%xmm5, %xmm2
	addss	%xmm4, %xmm2
	comiss	%xmm3, %xmm2
	ja	L1112
L987:
	ucomiss	%xmm6, %xmm1
	jp	L991
	jne	L991
	movl	16(%esp), %edi
	movss	28(%edx), %xmm2
	ucomiss	28(%edi), %xmm2
	jp	L991
	jne	L991
	movl	12(%esp), %eax
	movl	8(%edi), %ecx
	movl	20(%esp), %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L982
	jmp	L998
	.p2align 4,,10
	.p2align 3
L1111:
	movl	4(%ebx), %eax
	movl	(%ebx), %esi
	movl	8(%eax), %eax
	movl	4(%esi), %edx
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	movl	(%eax), %eax
	movl	%eax, 16(%esp)
	movl	4(%eax), %eax
	movl	16(%eax), %eax
	cmpl	%eax, 16(%edx)
	je	L1018
	movl	12(%esp), %eax
	movl	%ebx, %edx
	call	__ZL17CheckForIntersectP14TESStesselatorP12ActiveRegion
L1018:
	movl	12(%esp), %ecx
	movl	16(%esi), %edx
	movl	80(%ecx), %eax
	movss	24(%edx), %xmm1
	movl	(%ecx), %ecx
	movss	24(%eax), %xmm0
	movl	%ecx, 20(%esp)
	ucomiss	%xmm0, %xmm1
	jp	L1019
	jne	L1019
	movss	28(%edx), %xmm2
	movss	28(%eax), %xmm3
	ucomiss	%xmm3, %xmm2
	jp	L1021
	je	L1113
L1021:
	movl	16(%esp), %eax
	movl	16(%eax), %eax
	movss	24(%eax), %xmm4
	ucomiss	%xmm4, %xmm0
	jp	L1028
	jne	L1028
	movss	28(%eax), %xmm0
	ucomiss	%xmm3, %xmm0
	jp	L1036
	jne	L1036
L1033:
	movl	16(%esp), %eax
	movl	%ebp, %edx
	movl	4(%eax), %eax
	movl	12(%eax), %ecx
	movl	20(%esp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L998
	movl	24(%esp), %edx
	movl	12(%esp), %eax
	xorl	%ecx, %ecx
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	%eax, %ebp
L1025:
	movl	8(%ebp), %ecx
	movl	12(%esp), %eax
	movl	%edi, 4(%esp)
	movl	%ebx, %edx
	movl	$1, 8(%esp)
	movl	%edi, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L982
L991:
	ucomiss	%xmm0, %xmm1
	jp	L994
	jne	L994
	movl	16(%esp), %edi
	movss	28(%ecx), %xmm0
	ucomiss	28(%edi), %xmm0
	jp	L994
	je	L996
L994:
	movl	12(%esp), %edi
	movl	28(%esp), %edx
	movl	(%edi), %eax
	call	__ZL17tessMeshSplitEdgeP8TESSmeshP12TESShalfEdge.lto_priv.0
	testl	%eax, %eax
	je	L998
	movl	24(%esi), %ecx
	testl	%ecx, %ecx
	je	L999
	movl	20(%esp), %eax
	movl	8(%eax), %edx
	movl	(%edi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L998
	movl	$0, 24(%esi)
L999:
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	8(%eax), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	jne	L1014
L998:
	movl	12(%esp), %eax
	movl	$1, 4(%esp)
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
	.p2align 4,,10
	.p2align 3
L1112:
	movss	28(%edi), %xmm7
	movaps	%xmm7, %xmm2
	movss	28(%ecx), %xmm7
	movss	%xmm2, 24(%esp)
	subss	28(%edx), %xmm2
	mulss	%xmm5, %xmm2
	movss	24(%esp), %xmm5
	subss	%xmm7, %xmm5
	mulss	%xmm5, %xmm4
	addss	%xmm4, %xmm2
	ucomiss	%xmm3, %xmm2
	jp	L989
	je	L987
L989:
	movl	0(%ebp), %eax
	movl	4(%eax), %eax
	movl	16(%eax), %edx
	movss	24(%edx), %xmm1
	comiss	%xmm1, %xmm0
	ja	L1004
	ucomiss	%xmm0, %xmm1
	jp	L1005
	jne	L1005
	comiss	28(%edx), %xmm7
	jb	L1005
L1004:
	movl	12(%esi), %edi
	testl	%edi, %edi
	je	L1114
L1008:
	movl	20(%esp), %eax
	movl	12(%eax), %ecx
	movl	16(%esp), %eax
	movl	8(%eax), %eax
	movl	4(%eax), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L998
	movl	%esi, %ebp
	movl	24(%ebp), %eax
	testl	%eax, %eax
	je	L1013
L1115:
	movl	12(%esp), %eax
	movl	0(%ebp), %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L998
	movl	$0, 24(%ebp)
	movl	%ebx, 0(%ebp)
	movl	%ebp, 24(%ebx)
L1014:
	movl	16(%esp), %edx
	movl	12(%esp), %eax
	call	__ZL10SweepEventP14TESStesselatorP10TESSvertex
	addl	$60, %esp
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
L1005:
	.cfi_restore_state
	movl	12(%esi), %ecx
	testl	%ecx, %ecx
	jne	L1010
	movl	24(%ebp), %edx
	testl	%edx, %edx
	je	L1009
L1010:
	cmpl	%esi, %ebp
	je	L1008
	movl	8(%eax), %eax
	movl	16(%esp), %ecx
	movl	4(%eax), %edx
	movl	12(%esp), %eax
	movl	8(%ecx), %ecx
	movl	(%eax), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L998
	movl	4(%eax), %ebx
	movl	24(%ebp), %eax
	testl	%eax, %eax
	jne	L1115
L1013:
	movl	12(%esp), %edi
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	%edi, %eax
	call	__ZL14AddRegionBelowP14TESStesselatorP12ActiveRegionP12TESShalfEdge
	movl	%eax, %ecx
	movl	4(%eax), %eax
	movl	(%ecx), %edx
	movl	4(%eax), %eax
	movl	28(%edx), %edx
	movl	(%eax), %eax
	addl	8(%eax), %edx
	movl	%edx, 8(%ecx)
	movl	68(%edi), %eax
	call	__ZL15IsWindingInsidePK14TESStesselatori.isra.0
	movl	%eax, 12(%ecx)
	jmp	L1014
	.p2align 4,,10
	.p2align 3
L1114:
	movl	24(%esi), %ebx
	testl	%ebx, %ebx
	jne	L1008
L1009:
	movl	16(%esp), %eax
	movl	%esi, %edx
	movl	8(%eax), %ecx
	movl	12(%esp), %eax
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ecx, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L982
L1019:
	movl	16(%esp), %ecx
	movl	16(%ecx), %ecx
	movss	24(%ecx), %xmm2
	ucomiss	%xmm0, %xmm2
	jp	L1029
	jne	L1029
	movss	28(%eax), %xmm0
	ucomiss	28(%ecx), %xmm0
	jp	L1031
	je	L1033
L1031:
	comiss	%xmm2, %xmm1
	jbe	L1042
L1039:
	movl	16(%esp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %esi
L1042:
	movl	8(%ebp), %eax
	movl	%esi, %ecx
	movl	4(%eax), %edx
	movl	20(%esp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	movl	%eax, %esi
	testl	%eax, %eax
	je	L998
	movl	8(%eax), %eax
	movl	12(%esp), %edi
	movl	%ebx, %edx
	movl	%esi, %ecx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	movl	4(%esi), %eax
	movl	%ebx, %edx
	movl	24(%eax), %eax
	movl	$1, 24(%eax)
	addl	$60, %esp
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
	jmp	__ZL16WalkDirtyRegionsP14TESStesselatorP12ActiveRegion
	.p2align 5
	.p2align 4,,10
	.p2align 3
L996:
	.cfi_restore_state
	movl	4(%eax), %eax
	movl	(%eax), %esi
	movl	(%esi), %edx
	movl	4(%esi), %eax
	movl	4(%edx), %edx
	cmpl	16(%edx), %ecx
	je	L996
	movl	8(%eax), %eax
	movl	(%eax), %ecx
	movl	(%ecx), %eax
	movl	24(%ecx), %edx
	movl	4(%eax), %edi
	movl	%edi, 20(%esp)
	movl	8(%edi), %ebp
	testl	%edx, %edx
	je	L1000
	movl	12(%esp), %edx
	movl	$0, 24(%eax)
	movl	4(%ecx), %eax
	movl	72(%edx), %edx
	movl	4(%eax), %edi
	movl	%edx, 24(%esp)
	movl	8(%eax), %edx
	movl	%edx, 8(%edi)
	movl	4(%eax), %edi
	movl	%edi, 4(%edx)
	movl	24(%esp), %edx
	movl	16(%edx), %edx
	movl	(%edx), %edi
	movl	%edi, (%eax)
	movl	12(%esp), %edi
	movl	%eax, (%edx)
	movl	84(%edi), %eax
	movl	(%eax), %edx
	movl	%edx, (%ecx)
	movl	20(%esp), %edx
	movl	%ecx, (%eax)
	movl	(%edi), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L998
	movl	4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 20(%esp)
L1000:
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	8(%eax), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L998
	movl	4(%ebp), %eax
	movl	16(%ebp), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm0
	movss	24(%eax), %xmm1
	comiss	%xmm1, %xmm0
	ja	L1045
	ucomiss	%xmm0, %xmm1
	jp	L1001
	jne	L1001
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	cmovnb	%ebp, %ebx
L1001:
	movl	20(%esp), %eax
	movl	%esi, %edx
	movl	8(%eax), %ecx
	movl	12(%esp), %eax
	movl	$1, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%ebp, (%esp)
	call	__ZL13AddRightEdgesP14TESStesselatorP12ActiveRegionP12TESShalfEdgePKS3_S4_i
	jmp	L982
L1029:
	comiss	%xmm2, %xmm1
	ja	L1039
	ucomiss	%xmm1, %xmm2
	jp	L1042
	jne	L1042
	movss	28(%ecx), %xmm0
	movss	28(%edx), %xmm2
L1036:
	comiss	%xmm0, %xmm2
	jb	L1042
	jmp	L1039
L1028:
	comiss	%xmm4, %xmm1
	ja	L1039
	jmp	L1042
L1113:
	movl	4(%edi), %eax
	movl	%esi, %ecx
	movl	12(%eax), %edx
	movl	20(%esp), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L998
	movl	12(%esp), %esi
	movl	%ebx, %edx
	movl	%esi, %eax
	call	__ZL13TopLeftRegionP14TESStesselatorP12ActiveRegion
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L998
	movl	4(%eax), %eax
	movl	24(%esp), %ecx
	movl	8(%eax), %eax
	movl	(%eax), %edx
	movl	%esi, %eax
	movl	(%edx), %edi
	call	__ZL17FinishLeftRegionsP14TESStesselatorP12ActiveRegionPKS1_
	movl	16(%esp), %eax
	movl	16(%eax), %edx
	movl	80(%esi), %eax
	movss	24(%edx), %xmm0
	ucomiss	24(%eax), %xmm0
	jp	L1025
	jne	L1025
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L1025
	jne	L1025
	movl	12(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 20(%esp)
	jmp	L1033
L1045:
	movl	%ebp, %ebx
	jmp	L1001
	.cfi_endproc
LFE64:
	.p2align 4
	.globl	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0
	.def	__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0;	.scl	2;	.type	32;	.endef
__Z13tessTesselateP14TESStesselatoriiiiPKf.constprop.0:
LFB70:
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
	movl	%eax, %edi
	pushl	%esi
	pushl	%ebx
	subl	$360, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -116(%ebp)
	movl	92(%eax), %eax
	testl	%eax, %eax
	je	L1117
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1118
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1119:
	movl	-116(%ebp), %eax
	movl	$0, 92(%eax)
L1117:
	movl	-116(%ebp), %edi
	movl	104(%edi), %eax
	testl	%eax, %eax
	je	L1120
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1121
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1122:
	movl	-116(%ebp), %eax
	movl	$0, 104(%eax)
L1120:
	movl	-116(%ebp), %edi
	movl	96(%edi), %eax
	testl	%eax, %eax
	je	L1123
	movl	120(%edi), %edx
	movl	124(%edi), %ecx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1124
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1125:
	movl	-116(%ebp), %eax
	movl	$0, 96(%eax)
L1123:
	movl	-116(%ebp), %eax
	movl	$0, 88(%eax)
	addl	$152, %eax
	movl	$2, -84(%eax)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp___setjmp3
	movl	%eax, -136(%ebp)
	testl	%eax, %eax
	jne	L1129
	movl	-116(%ebp), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L1129
	movss	8(%eax), %xmm0
	xorps	%xmm3, %xmm3
	movss	12(%eax), %xmm2
	movl	$0, %ecx
	movl	$0, -172(%ebp)
	movss	16(%eax), %xmm1
	ucomiss	%xmm3, %xmm0
	movss	%xmm0, -112(%ebp)
	movss	%xmm2, -108(%ebp)
	movss	%xmm1, -104(%ebp)
	setnp	%al
	cmovne	%ecx, %eax
	ucomiss	%xmm3, %xmm2
	setnp	%dl
	cmovne	%ecx, %edx
	andl	%edx, %eax
	ucomiss	%xmm3, %xmm1
	setnp	%dl
	cmovne	%ecx, %edx
	andb	%dl, %al
	movl	%eax, %edi
	jne	L1508
L1130:
	xorps	%xmm5, %xmm5
	movaps	%xmm2, %xmm4
	movaps	%xmm2, %xmm3
	movl	-116(%ebp), %eax
	cmpltss	%xmm5, %xmm2
	xorps	LC2, %xmm3
	leal	20(%eax), %edx
	leal	32(%eax), %ebx
	andps	%xmm2, %xmm3
	andnps	%xmm4, %xmm2
	movaps	%xmm0, %xmm4
	orps	%xmm3, %xmm2
	movaps	%xmm0, %xmm3
	xorps	LC2, %xmm3
	cmpltss	%xmm5, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm4, %xmm0
	orps	%xmm3, %xmm0
	comiss	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	cmpltss	%xmm5, %xmm0
	xorps	LC2, %xmm2
	seta	%cl
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm0, %xmm2
L1142:
	movzbl	%cl, %eax
	xorps	%xmm5, %xmm5
	sall	$2, %eax
	movss	-112(%ebp,%eax), %xmm0
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm3
	xorps	LC2, %xmm3
	cmpltss	%xmm5, %xmm0
	andps	%xmm0, %xmm3
	andnps	%xmm4, %xmm0
	orps	%xmm3, %xmm0
	comiss	%xmm0, %xmm2
	ja	L1408
	movzbl	%cl, %ecx
	leal	4(,%ecx,4), %edi
	movss	-112(%ebp,%ecx,4), %xmm1
	leal	(%edx,%edi), %esi
	addl	%ebx, %edi
	movl	%esi, -216(%ebp)
	movl	%ecx, %esi
	andl	$1, %esi
	negl	%esi
	leal	8(,%esi,8), %esi
L1165:
	xorps	%xmm0, %xmm0
	leal	(%edx,%eax), %ecx
	addl	%esi, %edx
	addl	%ebx, %eax
	comiss	%xmm0, %xmm1
	jbe	L1509
	movss	LC6, %xmm1
	movss	LC7, %xmm0
L1166:
	movl	$0x00000000, (%ecx)
	movl	-216(%ebp), %ecx
	movl	$0x3f800000, (%ecx)
	movl	$0x00000000, (%edx)
	movl	-116(%ebp), %edx
	movl	$0x00000000, (%eax)
	movss	%xmm1, (%edi)
	movss	%xmm0, (%ebx,%esi)
	movl	(%edx), %esi
	movl	(%esi), %eax
	movl	%esi, %ecx
	cmpl	%eax, %esi
	je	L1167
	.p2align 4
	.p2align 3
L1168:
	movss	12(%eax), %xmm0
	movss	16(%eax), %xmm3
	movss	20(%edx), %xmm1
	movss	24(%edx), %xmm4
	movss	20(%eax), %xmm2
	mulss	%xmm3, %xmm4
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	movss	28(%edx), %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm4, %xmm1
	movss	%xmm1, 24(%eax)
	mulss	32(%edx), %xmm0
	mulss	36(%edx), %xmm3
	mulss	40(%edx), %xmm2
	addss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	movss	%xmm0, 28(%eax)
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	L1168
	movl	-172(%ebp), %eax
	testl	%eax, %eax
	jne	L1510
L1169:
	movl	(%esi), %eax
	cmpl	%eax, %ecx
	je	L1176
	movss	24(%eax), %xmm0
	movl	-116(%ebp), %edx
	movss	%xmm0, 52(%edx)
	movss	%xmm0, 44(%edx)
	movss	28(%eax), %xmm0
	movss	%xmm0, 56(%edx)
	movss	%xmm0, 48(%edx)
L1177:
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	je	L1176
L1511:
	movss	24(%eax), %xmm0
	movss	44(%edx), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1186
	movss	%xmm0, 44(%edx)
L1186:
	comiss	52(%edx), %xmm0
	jbe	L1178
	movss	%xmm0, 52(%edx)
L1178:
	movss	28(%eax), %xmm0
	movss	48(%edx), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1180
	movss	%xmm0, 48(%edx)
L1180:
	comiss	56(%edx), %xmm0
	jbe	L1177
	movss	%xmm0, 56(%edx)
	movl	(%eax), %eax
	cmpl	%eax, %ecx
	jne	L1511
L1176:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
L1187:
	movl	68(%esi), %ebx
	leal	68(%esi), %edx
	cmpl	%ebx, %edx
	je	L1188
	movl	%edx, -124(%ebp)
	movl	(%ebx), %edi
	jmp	L1203
	.p2align 4,,10
	.p2align 3
L1410:
	movl	%edi, %ebx
L1197:
	movl	(%ebx), %edi
	cmpl	%ebx, -124(%ebp)
	je	L1512
L1203:
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	12(%ebx), %esi
	movl	16(%eax), %eax
	movss	24(%edx), %xmm0
	ucomiss	24(%eax), %xmm0
	jp	L1191
	jne	L1191
	movss	28(%edx), %xmm0
	ucomiss	28(%eax), %xmm0
	jp	L1191
	jne	L1191
	movl	12(%esi), %ecx
	cmpl	%ecx, %ebx
	je	L1194
	movl	-116(%ebp), %eax
	movl	%ebx, %ecx
	movl	%esi, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L1327
	movl	-116(%ebp), %eax
	movl	%ebx, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	je	L1327
	movl	%esi, %ebx
	movl	12(%esi), %esi
	.p2align 4
	.p2align 3
L1191:
	cmpl	%ebx, 12(%esi)
	jne	L1410
	movl	%ebx, %ecx
L1194:
	cmpl	%ecx, %esi
	je	L1411
	cmpl	%edi, %esi
	je	L1199
	movl	%edi, %ebx
	cmpl	4(%edi), %esi
	je	L1199
L1200:
	movl	-116(%ebp), %eax
	movl	%esi, %edx
	movl	%ecx, -128(%ebp)
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	movl	-128(%ebp), %ecx
	testl	%eax, %eax
	je	L1327
L1198:
	cmpl	%ecx, %ebx
	je	L1201
	cmpl	%ecx, 4(%ebx)
	je	L1201
L1202:
	movl	-116(%ebp), %eax
	movl	%ecx, %edx
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L1197
	.p2align 4
	.p2align 3
L1327:
	movl	$1, 4(%esp)
	movl	-116(%ebp), %eax
	addl	$152, %eax
	movl	%eax, (%esp)
	call	*__imp__longjmp
L1374:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 104(%esi)
	testl	%eax, %eax
	jne	L1376
L1381:
	movl	-116(%ebp), %eax
	movl	$1, 4(%eax)
L1377:
	movl	-120(%ebp), %edi
	movl	140(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	144(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	148(%edi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	-116(%ebp), %esi
	movl	120(%esi), %eax
	movl	124(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1398
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1399:
	movl	-116(%ebp), %eax
	movl	4(%eax), %ecx
	movl	$0, (%eax)
	testl	%ecx, %ecx
	je	L1116
L1129:
	movl	$0, -152(%ebp)
L1116:
	movl	-152(%ebp), %eax
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
L1201:
	.cfi_restore_state
	movl	(%ebx), %ebx
	jmp	L1202
	.p2align 4,,10
	.p2align 3
L1199:
	movl	(%edi), %ebx
	jmp	L1200
	.p2align 4,,10
	.p2align 3
L1411:
	movl	%edi, %ebx
	jmp	L1198
L1512:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
L1188:
	movl	(%esi), %eax
	movl	-136(%ebp), %edi
	movl	%esi, %ecx
	cmpl	%eax, %esi
	je	L1204
	.p2align 4
	.p2align 4
	.p2align 3
L1205:
	movl	(%eax), %eax
	addl	$1, %edi
	cmpl	%eax, %ecx
	jne	L1205
L1204:
	movl	-116(%ebp), %eax
	movl	148(%eax), %esi
	movl	112(%eax), %eax
	movl	%esi, -220(%ebp)
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1206
	movl	$28, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1506
L1207:
	movl	-116(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1209
	movl	$28, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L1506
L1210:
	movl	-220(%ebp), %ecx
	movl	$8, %eax
	movl	$0, 8(%esi)
	cmpl	%eax, %ecx
	cmovge	%ecx, %eax
	addl	%eax, %edi
	movl	-116(%ebp), %eax
	movl	%edi, 12(%esi)
	leal	1(%edi), %ecx
	movl	112(%eax), %eax
	movl	%ecx, -236(%ebp)
	leal	0(,%ecx,4), %edx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1212
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -244(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1213
	movl	%eax, (%esi)
L1214:
	movl	-116(%ebp), %eax
	movl	-236(%ebp), %edx
	movl	112(%eax), %eax
	sall	$3, %edx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1217
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -248(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1218
	movl	%eax, 4(%esi)
L1219:
	movl	(%esi), %eax
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	$__ZL10tesvertLeqPK10TESSvertexS1_, 24(%esi)
	movl	$1, 4(%eax)
	movl	4(%esi), %eax
	movl	$0, 8(%eax)
	movl	-116(%ebp), %eax
	movl	%esi, (%ebx)
	leal	0(,%edi,4), %esi
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1513
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1230
	movl	%eax, 4(%ebx)
L1231:
	movl	-116(%ebp), %eax
	movl	$0, 12(%ebx)
	movl	%edi, 16(%ebx)
	movl	$0, 20(%ebx)
	leal	112(%eax), %esi
	movl	$__ZL10tesvertLeqPK10TESSvertexS1_, 24(%ebx)
	movl	%ebx, 76(%eax)
	movl	(%eax), %eax
	movl	%esi, -188(%ebp)
	movl	(%eax), %edi
	cmpl	%edi, %eax
	je	L1242
	movl	%eax, -140(%ebp)
	jmp	L1252
L1517:
	movl	-116(%ebp), %eax
	movl	116(%eax), %eax
	testl	%eax, %eax
	je	L1514
	leal	(%edx,%edx), %eax
	movl	4(%ebx), %ecx
	sall	$3, %edx
	movl	%eax, 16(%ebx)
	movl	-116(%ebp), %eax
	movl	%ecx, -204(%ebp)
	movl	116(%eax), %eax
	cmpl	$__ZL11heapReallocPvS_j.lto_priv.0, %eax
	jne	L1248
	movl	%edx, 4(%esp)
	movl	%edx, -224(%ebp)
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L1480
	movl	-224(%ebp), %edx
	testl	%edx, %edx
	jne	L1515
L1249:
	testl	%eax, %eax
	je	L1250
L1480:
	movl	%eax, 4(%ebx)
L1251:
	movl	%edi, (%eax,%esi,4)
	notl	%esi
L1244:
	movl	%esi, 32(%edi)
	cmpl	$268435455, %esi
	je	L1493
	movl	(%edi), %edi
	cmpl	%edi, -140(%ebp)
	je	L1242
L1252:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jne	L1516
	movl	12(%ebx), %esi
	movl	16(%ebx), %edx
	leal	1(%esi), %eax
	movl	%eax, 12(%ebx)
	cmpl	%edx, %eax
	jge	L1517
	movl	4(%ebx), %eax
	jmp	L1251
L1516:
	movl	(%ebx), %edx
	movl	-188(%ebp), %eax
	movl	%edi, %ecx
	call	__ZL12pqHeapInsertP9TESSallocP13PriorityQHeapPv
	movl	%eax, %esi
	jmp	L1244
L1509:
	movaps	%xmm0, %xmm1
	movss	LC8, %xmm0
	jmp	L1166
L1408:
	movl	%edx, -216(%ebp)
	movl	%ebx, %edi
	movl	$4, %esi
	movl	$8, %eax
	jmp	L1165
L1118:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L1119
L1121:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L1122
L1124:
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	*%edx
	jmp	L1125
L1510:
	movl	-116(%ebp), %eax
	movl	(%eax), %edx
	movl	44(%edx), %ebx
	leal	44(%edx), %edi
	cmpl	%ebx, %edi
	je	L1169
	movl	%edx, %eax
L1402:
	movl	%eax, -332(%ebp)
	xorps	%xmm2, %xmm2
	movl	%edx, -336(%ebp)
	movl	%ecx, -328(%ebp)
	movl	%esi, %ecx
	.p2align 4
	.p2align 3
L1172:
	movl	8(%ebx), %esi
	movl	28(%esi), %eax
	testl	%eax, %eax
	jle	L1170
	movl	%edi, -168(%ebp)
	movl	%esi, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L1171:
	movl	4(%eax), %edx
	movl	16(%eax), %edi
	movl	12(%eax), %eax
	movl	16(%edx), %edx
	movss	24(%edi), %xmm0
	movss	28(%edi), %xmm1
	subss	24(%edx), %xmm0
	addss	28(%edx), %xmm1
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm2
	cmpl	%eax, %esi
	jne	L1171
	movl	-168(%ebp), %edi
L1170:
	movl	(%ebx), %ebx
	cmpl	%ebx, %edi
	jne	L1172
	xorps	%xmm0, %xmm0
	movl	%ecx, %esi
	movl	-332(%ebp), %eax
	movl	-336(%ebp), %edx
	comiss	%xmm2, %xmm0
	movl	-328(%ebp), %ecx
	jbe	L1169
	jmp	L1502
L1175:
	movss	28(%edx), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 28(%edx)
L1502:
	movl	(%edx), %edx
	cmpl	%eax, %edx
	jne	L1175
	movl	-116(%ebp), %eax
	movss	32(%eax), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 32(%eax)
	movss	36(%eax), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 36(%eax)
	movss	40(%eax), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 40(%eax)
	jmp	L1169
L1248:
	movl	%edx, 8(%esp)
	movl	-204(%ebp), %ecx
	movl	%ecx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1249
L1514:
	movl	$268435455, 32(%edi)
	movl	-140(%ebp), %eax
L1247:
	cmpl	%edi, %eax
	jne	L1255
L1242:
	movl	-116(%ebp), %edi
	movl	%ebx, %ecx
	movl	124(%edi), %edx
	movl	112(%edi), %eax
	call	__ZL6pqInitP9TESSallocP9PriorityQ.isra.0
	movl	124(%edi), %edx
	movl	%eax, -152(%ebp)
	testl	%eax, %eax
	je	L1255
	movl	-116(%ebp), %eax
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1272
	movl	$24, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1518
L1273:
	movl	-116(%ebp), %edi
	movl	%ebx, 4(%ebx)
	movl	$4096, %eax
	movl	$12, %edx
	movl	$0, (%ebx)
	movl	%edi, 12(%ebx)
	movl	%ebx, 8(%ebx)
	movl	$__ZL7EdgeLeqP14TESStesselatorP12ActiveRegionS2_, 20(%ebx)
	movl	140(%edi), %ecx
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$16, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	-188(%ebp), %eax
	movl	%ecx, 140(%edi)
	call	__Z17createBucketAllocP9TESSallocjj
	movss	LC9, %xmm6
	movl	%eax, 16(%ebx)
	movss	52(%edi), %xmm1
	movl	%edi, %eax
	movss	56(%edi), %xmm3
	movss	44(%edi), %xmm0
	movl	%ebx, 72(%edi)
	movl	%edi, %ebx
	movss	48(%edi), %xmm2
	movaps	%xmm1, %xmm5
	movaps	%xmm3, %xmm4
	subss	%xmm0, %xmm5
	subss	%xmm2, %xmm4
	addss	%xmm6, %xmm5
	addss	%xmm6, %xmm4
	subss	%xmm5, %xmm0
	addss	%xmm5, %xmm1
	addss	%xmm4, %xmm3
	subss	%xmm4, %xmm2
	movss	%xmm1, -348(%ebp)
	movss	%xmm3, -276(%ebp)
	movss	%xmm0, -344(%ebp)
	call	__ZL11AddSentinelP14TESStesselatorfff
	movss	-348(%ebp), %xmm1
	movss	-344(%ebp), %xmm0
	movl	%edi, %eax
	movss	-276(%ebp), %xmm2
	call	__ZL11AddSentinelP14TESStesselatorfff
	movl	76(%ebx), %eax
	call	__ZL12pqExtractMinP9PriorityQ
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1284
	jmp	L1519
	.p2align 4,,10
	.p2align 3
L1277:
	movl	8(%eax), %esi
	movl	-4(%esi,%edx,4), %edx
	movl	8(%ecx), %esi
	movl	(%edx), %edx
	testl	%esi, %esi
	je	L1278
	movl	(%ecx), %esi
	movl	4(%ecx), %ecx
	movss	24(%edx), %xmm1
	movl	4(%esi), %esi
	movl	(%ecx,%esi,8), %ecx
	movss	24(%ecx), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1416
	ucomiss	%xmm1, %xmm0
	jp	L1415
	jne	L1415
	movss	28(%edx), %xmm2
	comiss	28(%ecx), %xmm2
	jnb	L1416
L1415:
	movaps	%xmm1, %xmm0
	.p2align 4
	.p2align 3
L1279:
	ucomiss	24(%edi), %xmm0
	jp	L1281
	jne	L1281
	movss	28(%edx), %xmm0
	ucomiss	28(%edi), %xmm0
	jp	L1281
	jne	L1281
	call	__ZL12pqExtractMinP9PriorityQ
	movl	8(%edi), %edx
	movl	8(%eax), %ecx
	movl	(%ebx), %eax
	call	__ZL14tessMeshSpliceP8TESSmeshP12TESShalfEdgeS2_.lto_priv.0
	testl	%eax, %eax
	je	L1327
L1284:
	movl	76(%ebx), %eax
	movl	12(%eax), %edx
	movl	(%eax), %ecx
	testl	%edx, %edx
	jne	L1277
	movl	(%ecx), %edx
	movl	4(%edx), %esi
	movl	4(%ecx), %edx
	movl	(%edx,%esi,8), %edx
L1278:
	testl	%edx, %edx
	je	L1281
	movss	24(%edx), %xmm0
	jmp	L1279
	.p2align 4,,10
	.p2align 3
L1416:
	movl	%ecx, %edx
	jmp	L1279
	.p2align 4,,10
	.p2align 3
L1281:
	movl	%edi, %edx
	movl	%ebx, %eax
	call	__ZL10SweepEventP14TESStesselatorP10TESSvertex
	movl	76(%ebx), %eax
	call	__ZL12pqExtractMinP9PriorityQ
	movl	%eax, %edi
	testl	%eax, %eax
	jne	L1284
L1519:
	movl	-116(%ebp), %ecx
	movl	72(%ecx), %ebx
	movl	4(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	movl	16(%eax), %eax
	movl	%eax, 80(%ecx)
	movl	4(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1285
	movl	%edi, -324(%ebp)
L1286:
	movl	(%eax), %edx
	movl	$0, 24(%edx)
	movl	4(%eax), %edx
	movl	72(%ecx), %esi
	movl	8(%edx), %ebx
	movl	4(%edx), %edi
	movl	%ebx, 8(%edi)
	movl	4(%edx), %edi
	movl	%edi, 4(%ebx)
	movl	16(%esi), %ebx
	movl	(%ebx), %esi
	movl	%esi, (%edx)
	movl	%edx, (%ebx)
	movl	84(%ecx), %edx
	movl	(%edx), %ebx
	movl	%ebx, (%eax)
	movl	%eax, (%edx)
	movl	72(%ecx), %ebx
	movl	4(%ebx), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L1286
	movl	-324(%ebp), %edi
L1285:
	movl	16(%ebx), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	-116(%ebp), %esi
	movl	120(%esi), %eax
	movl	124(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1287
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1290:
	movl	-116(%ebp), %eax
	movl	76(%eax), %esi
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	L1289
	movl	-116(%ebp), %eax
	movl	4(%ebx), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1291
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1294:
	movl	-116(%ebp), %eax
	movl	(%ebx), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1520
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1297:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1521
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1289:
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	L1299
	movl	-116(%ebp), %ecx
	movl	120(%ecx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1300
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1299:
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L1302
	movl	-116(%ebp), %ecx
	movl	120(%ecx), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1303
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1302:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1305
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1308:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
	movl	44(%esi), %eax
	movl	%esi, -120(%ebp)
	addl	$44, %esi
	movl	%esi, -156(%ebp)
	cmpl	%esi, %eax
	je	L1307
	movl	(%eax), %ebx
	movl	-156(%ebp), %esi
	jmp	L1310
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1312:
	movl	(%ebx), %edx
	movl	%ebx, %eax
	cmpl	%ebx, %esi
	je	L1522
	movl	%edx, %ebx
L1310:
	movl	8(%eax), %edx
	movl	12(%edx), %eax
	cmpl	12(%eax), %edx
	jne	L1312
	movl	8(%edx), %eax
	movl	28(%edx), %ecx
	addl	%ecx, 28(%eax)
	movl	8(%edx), %eax
	movl	4(%edx), %ecx
	movl	4(%eax), %eax
	movl	28(%ecx), %ecx
	addl	%ecx, 28(%eax)
	movl	-116(%ebp), %eax
	movl	(%eax), %eax
	call	__ZL14tessMeshDeleteP8TESSmeshP12TESShalfEdge
	testl	%eax, %eax
	jne	L1312
	jmp	L1327
L1255:
	movl	-116(%ebp), %eax
	movl	76(%eax), %ebx
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1254
	movl	-116(%ebp), %eax
	movl	4(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1257
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1260:
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1523
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1263:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1524
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1254:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L1265
	movl	-116(%ebp), %edi
	movl	120(%edi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1266
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1265:
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	L1268
	movl	-116(%ebp), %edi
	movl	120(%edi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %edx
	jne	L1269
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1268:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1227
L1503:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1208:
	movl	-116(%ebp), %eax
	movl	$0, 76(%eax)
	jmp	L1327
L1529:
	movl	-272(%ebp), %edi
L1307:
	movl	-116(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	jne	L1344
L1348:
	movl	-120(%ebp), %esi
	movl	(%esi), %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	je	L1346
	.p2align 4
	.p2align 4
	.p2align 3
L1345:
	movl	$-1, 36(%eax)
	movl	(%eax), %eax
	cmpl	%eax, %edi
	jne	L1345
L1346:
	movl	-120(%ebp), %eax
	movl	-136(%ebp), %esi
	movl	44(%eax), %edx
	movl	%esi, %ebx
	cmpl	-156(%ebp), %edx
	je	L1525
	movl	%edi, -240(%ebp)
	movl	-156(%ebp), %edi
	jmp	L1369
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1371:
	movl	(%edx), %edx
	cmpl	%edi, %edx
	je	L1526
L1369:
	movl	$-1, 16(%edx)
	cmpb	$0, 21(%edx)
	je	L1371
	movl	8(%edx), %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1373:
	movl	16(%eax), %ecx
	cmpl	$-1, 36(%ecx)
	jne	L1372
	movl	%ebx, 36(%ecx)
	addl	$1, %ebx
L1372:
	movl	12(%eax), %eax
	cmpl	8(%edx), %eax
	jne	L1373
	movl	%esi, 16(%edx)
	movl	(%edx), %edx
	addl	$1, %esi
	cmpl	%edi, %edx
	jne	L1369
L1526:
	leal	(%esi,%esi,2), %eax
	movl	-240(%ebp), %edi
	leal	0(,%eax,4), %edx
L1370:
	movl	-116(%ebp), %eax
	movl	%esi, 108(%eax)
	movl	%eax, %esi
	movl	112(%eax), %eax
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1374
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%edx, -252(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1375
	movl	%eax, 104(%esi)
L1376:
	movl	-116(%ebp), %esi
	movl	112(%esi), %eax
	movl	%ebx, 100(%esi)
	leal	(%ebx,%ebx,2), %ebx
	sall	$2, %ebx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1378
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1383
	movl	%eax, 92(%esi)
L1380:
	movl	-116(%ebp), %esi
	movl	100(%esi), %ecx
	movl	112(%esi), %eax
	movl	%ecx, -300(%ebp)
	leal	0(,%ecx,4), %ebx
	cmpl	$__ZL9heapAllocPvj.lto_priv.0, %eax
	jne	L1382
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L1383
	movl	%eax, 96(%esi)
L1384:
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edi
	je	L1385
	movl	-116(%ebp), %ecx
L1387:
	movl	36(%eax), %edx
	cmpl	$-1, %edx
	je	L1386
	movss	12(%eax), %xmm0
	leal	(%edx,%edx,2), %ebx
	movl	92(%ecx), %edx
	movss	%xmm0, (%edx,%ebx,4)
	movss	16(%eax), %xmm0
	movss	%xmm0, 4(%edx,%ebx,4)
	movss	20(%eax), %xmm0
	movss	%xmm0, 8(%edx,%ebx,4)
	movl	40(%eax), %esi
	movl	36(%eax), %ebx
	movl	96(%ecx), %edx
	movl	%esi, (%edx,%ebx,4)
L1386:
	movl	(%eax), %eax
	cmpl	%eax, %edi
	jne	L1387
L1385:
	movl	-120(%ebp), %eax
	movl	-156(%ebp), %ebx
	movl	44(%eax), %ecx
	cmpl	%ecx, %ebx
	je	L1377
	movl	-116(%ebp), %eax
	movl	104(%eax), %eax
	jmp	L1397
L1388:
	movl	(%ecx), %ecx
	cmpl	%ecx, %ebx
	je	L1377
L1397:
	cmpb	$0, 21(%ecx)
	je	L1388
	movl	8(%ecx), %esi
	movl	-136(%ebp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L1389:
	movl	16(%esi), %edi
	addl	$4, %eax
	addl	$1, %edx
	movl	36(%edi), %edi
	movl	%edi, -4(%eax)
	movl	12(%esi), %esi
	cmpl	8(%ecx), %esi
	jne	L1389
	cmpl	$2, %edx
	jg	L1388
	movl	$3, %esi
	movl	%eax, %edi
	subl	%edx, %esi
	sall	$2, %esi
	cmpl	$16, %esi
	jnb	L1390
	testl	$8, %esi
	jne	L1527
	movl	%esi, %edi
	andl	$4, %edi
	jne	L1528
	testl	%esi, %esi
	je	L1391
	movb	$-1, (%eax)
L1391:
	movl	$2, %esi
	subl	%edx, %esi
	leal	4(%eax,%esi,4), %eax
	jmp	L1388
L1522:
	movl	-116(%ebp), %eax
	movl	(%eax), %esi
	movl	44(%esi), %eax
	movl	%esi, -120(%ebp)
	addl	$44, %esi
	movl	%esi, -156(%ebp)
	cmpl	%eax, %esi
	je	L1307
	movl	(%eax), %ecx
	movl	%edi, -272(%ebp)
	movl	%ecx, %edi
	movl	-156(%ebp), %ecx
	jmp	L1314
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1342:
	movl	(%edi), %edx
	movl	%edi, %eax
	cmpl	%edi, %ecx
	je	L1529
	movl	%edx, %edi
L1314:
	cmpb	$0, 21(%eax)
	je	L1342
	movl	8(%eax), %ebx
	jmp	L1315
	.p2align 4,,10
	.p2align 3
L1530:
	movss	28(%edx), %xmm2
	comiss	28(%eax), %xmm2
	jb	L1319
L1316:
	movl	8(%ebx), %eax
	movl	4(%eax), %ebx
L1315:
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1316
	ucomiss	%xmm1, %xmm0
	jp	L1319
	je	L1530
	jmp	L1319
	.p2align 4,,10
	.p2align 3
L1531:
	movss	28(%eax), %xmm1
	comiss	28(%edx), %xmm1
	jb	L1321
L1320:
	movl	12(%ebx), %ebx
	movl	4(%ebx), %eax
	movl	16(%ebx), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
L1319:
	comiss	%xmm1, %xmm0
	ja	L1320
	ucomiss	%xmm0, %xmm1
	jp	L1321
	je	L1531
L1321:
	movl	8(%ebx), %edx
	movl	4(%edx), %esi
	cmpl	%esi, 12(%ebx)
	je	L1419
	movl	16(%esi), %edx
	movl	%ecx, -180(%ebp)
	movl	%edi, -184(%ebp)
	movss	24(%edx), %xmm1
	comiss	%xmm0, %xmm1
	ja	L1324
L1532:
	ucomiss	%xmm0, %xmm1
	jp	L1325
	jne	L1325
	movss	28(%edx), %xmm0
	comiss	28(%eax), %xmm0
	jnb	L1324
L1325:
	movl	12(%esi), %eax
	cmpl	%eax, %ebx
	je	L1336
	movl	%ebx, %edx
	jmp	L1335
	.p2align 4,,10
	.p2align 3
L1337:
	movl	-120(%ebp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L1327
	movl	4(%eax), %edx
	movl	12(%esi), %eax
	cmpl	%eax, %edx
	je	L1336
L1335:
	movl	8(%edx), %eax
	movl	4(%eax), %ecx
	movl	4(%ecx), %ebx
	movl	16(%ecx), %eax
	movl	16(%ebx), %ebx
	movss	24(%eax), %xmm0
	movss	24(%ebx), %xmm1
	comiss	%xmm0, %xmm1
	ja	L1337
	ucomiss	%xmm1, %xmm0
	jp	L1338
	jne	L1338
	movss	28(%ebx), %xmm1
	comiss	28(%eax), %xmm1
	jnb	L1337
L1338:
	movl	16(%edx), %edi
	movl	4(%edx), %ebx
	xorps	%xmm6, %xmm6
	movss	24(%edi), %xmm1
	movl	16(%ebx), %ebx
	movaps	%xmm1, %xmm3
	subss	24(%ebx), %xmm3
	subss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm6, %xmm1
	jbe	L1337
	movss	28(%edi), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%ebx), %xmm1
	subss	28(%eax), %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm6, %xmm2
	jnb	L1337
	movl	%edx, %eax
L1336:
	movl	12(%eax), %ebx
L1334:
	movl	12(%ebx), %eax
	cmpl	%eax, %esi
	je	L1497
	movl	4(%ebx), %eax
	movl	16(%esi), %edx
	movl	16(%eax), %eax
	movss	24(%edx), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	jbe	L1532
L1324:
	movl	12(%esi), %edx
	cmpl	%ebx, %edx
	je	L1329
	movl	%esi, %ecx
	jmp	L1328
	.p2align 4,,10
	.p2align 3
L1330:
	movl	-120(%ebp), %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	je	L1327
	movl	4(%eax), %ecx
	movl	12(%ecx), %edx
	cmpl	%ebx, %edx
	je	L1504
L1328:
	movl	4(%edx), %eax
	movl	16(%edx), %esi
	movl	16(%eax), %eax
	movss	24(%esi), %xmm1
	movss	24(%eax), %xmm0
	comiss	%xmm0, %xmm1
	ja	L1330
	ucomiss	%xmm1, %xmm0
	jp	L1331
	jne	L1331
	movss	28(%esi), %xmm1
	comiss	28(%eax), %xmm1
	jnb	L1330
L1331:
	movl	4(%ecx), %esi
	xorps	%xmm7, %xmm7
	movl	16(%esi), %edi
	movl	16(%ecx), %esi
	movss	24(%edi), %xmm1
	movaps	%xmm1, %xmm3
	subss	24(%esi), %xmm3
	subss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	comiss	%xmm7, %xmm1
	jbe	L1330
	movss	28(%edi), %xmm1
	movaps	%xmm1, %xmm2
	subss	28(%esi), %xmm1
	subss	28(%eax), %xmm2
	mulss	%xmm0, %xmm1
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	comiss	%xmm2, %xmm7
	jnb	L1330
L1504:
	movl	%ecx, %esi
L1329:
	movl	8(%esi), %eax
	movl	4(%eax), %esi
	jmp	L1334
L1390:
	movl	$-1, -16(%eax,%esi)
	movl	$-1, -12(%eax,%esi)
	movl	$-1, -8(%eax,%esi)
	movl	$-1, -4(%eax,%esi)
	subl	$1, %esi
	cmpl	$16, %esi
	jb	L1391
	movl	%eax, -308(%ebp)
	andl	$-16, %esi
	movl	%esi, -304(%ebp)
	xorl	%esi, %esi
L1395:
	movl	$-1, (%edi,%esi)
	movl	$-1, 4(%edi,%esi)
	movl	$-1, 8(%edi,%esi)
	movl	$-1, 12(%edi,%esi)
	addl	$16, %esi
	cmpl	-304(%ebp), %esi
	jb	L1395
	movl	-308(%ebp), %eax
	jmp	L1391
L1206:
	movl	$28, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1208
	jmp	L1207
L1344:
	movl	-188(%ebp), %eax
	movl	$8, %edx
	movl	$512, %ecx
	call	__Z17createBucketAllocP9TESSallocjj
	movl	-156(%ebp), %edx
	movl	%eax, -160(%ebp)
	movl	-120(%ebp), %eax
	movl	44(%eax), %esi
	movl	-136(%ebp), %eax
	cmpl	-156(%ebp), %esi
	jne	L1347
	jmp	L1357
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1349:
	movl	(%esi), %esi
	cmpl	%edx, %esi
	je	L1533
L1347:
	cmpb	$0, 21(%esi)
	je	L1349
	movl	%edx, -312(%ebp)
	movl	8(%esi), %ebx
	movl	%eax, -316(%ebp)
	movl	-160(%ebp), %edx
	jmp	L1356
L1351:
	movl	$1, 32(%ebx)
	movl	32(%ecx), %eax
	testl	%eax, %eax
	je	L1534
L1352:
	movl	12(%ebx), %ebx
	cmpl	8(%esi), %ebx
	je	L1535
L1356:
	movl	4(%ebx), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	je	L1350
	cmpb	$0, 21(%eax)
	jne	L1351
L1350:
	movl	$0, 32(%ebx)
	movl	12(%ebx), %ebx
	cmpl	8(%esi), %ebx
	jne	L1356
L1535:
	movl	-316(%ebp), %eax
	movl	-312(%ebp), %edx
	addl	$1, %eax
	jmp	L1349
L1534:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	L1354
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1354
L1355:
	movl	%ecx, (%edx)
	movl	%edi, 4(%eax)
	movl	%eax, %edi
	movl	%ebx, (%eax)
	jmp	L1352
L1354:
	movl	%edx, %eax
	movl	%edx, -352(%ebp)
	call	__ZL12CreateBucketP11BucketAlloc
	movl	-352(%ebp), %edx
	testl	%eax, %eax
	je	L1352
	movl	(%edx), %eax
	movl	(%eax), %ecx
	jmp	L1355
L1357:
	movl	-160(%ebp), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	jmp	L1348
L1533:
	testl	%edi, %edi
	je	L1357
	imull	%eax, %eax
	movl	%eax, -196(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -144(%ebp)
	jmp	L1358
L1359:
	addl	$1, -144(%ebp)
	testl	%edi, %edi
	je	L1357
L1358:
	movl	-196(%ebp), %esi
	cmpl	%esi, -144(%ebp)
	je	L1357
	movl	-160(%ebp), %esi
	movl	(%edi), %eax
	movl	4(%edi), %ecx
	movl	(%esi), %edx
	movl	%ecx, -208(%ebp)
	movl	%edx, (%edi)
	movl	%edi, (%esi)
	movl	4(%eax), %edx
	movl	$0, 32(%edx)
	movl	12(%eax), %edx
	movl	$0, 32(%eax)
	movl	16(%eax), %edi
	movl	12(%edx), %esi
	movl	%edi, -148(%ebp)
	movl	16(%edx), %edi
	movl	16(%esi), %ebx
	movl	%esi, -192(%ebp)
	movl	4(%eax), %esi
	movss	24(%edi), %xmm0
	movss	28(%edi), %xmm2
	movl	-148(%ebp), %edi
	movss	24(%ebx), %xmm3
	movss	28(%ebx), %xmm4
	movl	%esi, -176(%ebp)
	movl	12(%esi), %esi
	movss	24(%edi), %xmm1
	movl	%esi, -200(%ebp)
	movl	12(%esi), %esi
	movl	%esi, -212(%ebp)
	movl	16(%esi), %esi
	movss	24(%esi), %xmm6
	movss	28(%esi), %xmm5
	subss	%xmm6, %xmm0
	subss	%xmm6, %xmm3
	subss	%xmm6, %xmm1
	movss	28(%edi), %xmm6
	subss	%xmm5, %xmm4
	movl	%ecx, %edi
	subss	%xmm5, %xmm2
	subss	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	mulss	%xmm1, %xmm5
	movaps	%xmm2, %xmm7
	movss	%xmm6, -132(%ebp)
	mulss	%xmm3, %xmm6
	mulss	%xmm2, %xmm7
	subss	%xmm5, %xmm6
	movaps	%xmm0, %xmm5
	mulss	%xmm0, %xmm5
	addss	%xmm7, %xmm5
	movaps	%xmm6, %xmm7
	movaps	%xmm4, %xmm6
	mulss	%xmm4, %xmm6
	mulss	%xmm5, %xmm7
	movaps	%xmm2, %xmm5
	mulss	%xmm1, %xmm5
	mulss	%xmm3, %xmm2
	mulss	%xmm1, %xmm1
	movss	%xmm7, -164(%ebp)
	movaps	%xmm5, %xmm7
	movss	-132(%ebp), %xmm5
	mulss	%xmm0, %xmm5
	mulss	%xmm4, %xmm0
	subss	%xmm5, %xmm7
	movaps	%xmm3, %xmm5
	subss	%xmm2, %xmm0
	movss	-132(%ebp), %xmm2
	mulss	%xmm3, %xmm5
	mulss	%xmm2, %xmm2
	addss	%xmm6, %xmm5
	xorps	%xmm6, %xmm6
	addss	%xmm2, %xmm1
	mulss	%xmm5, %xmm7
	addss	-164(%ebp), %xmm7
	mulss	%xmm1, %xmm0
	addss	%xmm0, %xmm7
	comiss	%xmm7, %xmm6
	ja	L1359
	movl	-176(%ebp), %edi
	movl	16(%edi), %ecx
	movl	%ecx, -268(%ebp)
	movl	20(%eax), %ecx
	movl	%ecx, -284(%ebp)
	movl	20(%edi), %ecx
	movl	-200(%ebp), %edi
	movl	%esi, 16(%eax)
	movl	%ecx, -288(%ebp)
	movl	-212(%ebp), %ecx
	movl	4(%edi), %esi
	movl	%esi, 8(%eax)
	movl	-176(%ebp), %esi
	movl	%ebx, 16(%esi)
	movl	4(%edx), %ebx
	movl	%ebx, 8(%esi)
	movl	-192(%ebp), %ebx
	movl	%esi, 8(%ebx)
	movl	%eax, 8(%ecx)
	movl	4(%ebx), %ebx
	movl	%ebx, 8(%edi)
	movl	4(%ecx), %ebx
	movl	%ebx, 8(%edx)
	movl	-192(%ebp), %ebx
	movl	%ebx, 12(%eax)
	movl	%edi, 12(%ebx)
	movl	%eax, 12(%edi)
	movl	%ecx, 12(%esi)
	movl	%edx, 12(%ecx)
	movl	-288(%ebp), %ecx
	movl	%esi, 12(%edx)
	movl	%ecx, 20(%edx)
	movl	-284(%ebp), %ebx
	movl	%ebx, 20(%edi)
	movl	-148(%ebp), %edi
	movl	%eax, 8(%ebx)
	movl	%esi, 8(%ecx)
	cmpl	8(%edi), %eax
	je	L1536
L1360:
	movl	-268(%ebp), %edi
	movl	-176(%ebp), %esi
	cmpl	8(%edi), %esi
	je	L1537
L1361:
	movl	4(%eax), %edx
	movl	8(%eax), %ecx
	movl	-208(%ebp), %edi
	movl	8(%edx), %ebx
	movss	12(%edx), %xmm1
	movss	4(%ecx), %xmm2
	movss	4(%ebx), %xmm0
	leal	-40(%ebp), %ebx
	unpcklps	%xmm0, %xmm1
	movss	12(%eax), %xmm0
	unpcklps	%xmm2, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, -40(%ebp)
L1367:
	movl	(%ebx), %esi
	movl	32(%esi), %eax
	testl	%eax, %eax
	jne	L1363
	movl	4(%esi), %ecx
	movl	20(%ecx), %eax
	testl	%eax, %eax
	je	L1363
	cmpb	$0, 21(%eax)
	jne	L1538
L1363:
	addl	$4, %ebx
	leal	-24(%ebp), %eax
	cmpl	%ebx, %eax
	jne	L1367
	jmp	L1359
L1538:
	movl	-160(%ebp), %eax
	movl	$1, 32(%ecx)
	movl	$1, 32(%esi)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L1365
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1365
L1366:
	movl	-160(%ebp), %edx
	movl	%ecx, (%edx)
	movl	%edi, 4(%eax)
	movl	%eax, %edi
	movl	%esi, (%eax)
	jmp	L1363
L1209:
	movl	$28, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %ecx
	movl	%ecx, (%esp)
	call	*%eax
	movl	%eax, %esi
	testl	%eax, %eax
	jne	L1210
	jmp	L1211
L1506:
	movl	$28, %eax
	call	__Z13handle_memerri
L1497:
	movl	-180(%ebp), %ecx
	movl	-184(%ebp), %edi
L1323:
	movl	12(%eax), %edx
	cmpl	12(%edx), %ebx
	je	L1342
	movl	%ecx, -320(%ebp)
	movl	-120(%ebp), %esi
	movl	%eax, %ecx
	jmp	L1343
L1540:
	movl	4(%eax), %ecx
	movl	12(%ecx), %edx
	cmpl	12(%edx), %ebx
	je	L1539
L1343:
	movl	%esi, %eax
	call	__ZL15tessMeshConnectP8TESSmeshP12TESShalfEdgeS2_
	testl	%eax, %eax
	jne	L1540
	jmp	L1327
L1250:
	movl	-204(%ebp), %esi
	movl	-140(%ebp), %eax
	movl	%esi, 4(%ebx)
	movl	$268435455, 32(%edi)
	jmp	L1247
L1212:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, (%esi)
	testl	%eax, %eax
	jne	L1214
	jmp	L1223
L1167:
	movl	-172(%ebp), %edx
	testl	%edx, %edx
	je	L1187
	movl	44(%esi), %ebx
	leal	44(%esi), %edi
	movl	%esi, %edx
	cmpl	%edi, %ebx
	jne	L1402
	jmp	L1176
	.p2align 4,,10
	.p2align 3
L1513:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 4(%ebx)
	testl	%eax, %eax
	jne	L1231
	movl	-116(%ebp), %eax
	movl	(%ebx), %esi
	movl	120(%eax), %eax
	movl	4(%esi), %edx
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1232
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1235:
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1541
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1238:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1542
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L1268
L1217:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 4(%esi)
	testl	%eax, %eax
	jne	L1219
	movl	-116(%ebp), %eax
	movl	(%esi), %edx
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1220
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1223:
	movl	-116(%ebp), %eax
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1543
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1211:
	movl	-116(%ebp), %eax
	movl	$0, (%ebx)
	movl	120(%eax), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	je	L1503
L1227:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1208
L1365:
	movl	-160(%ebp), %eax
	call	__ZL12CreateBucketP11BucketAlloc
	testl	%eax, %eax
	je	L1363
	movl	-160(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	jmp	L1366
L1291:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1294
L1515:
	movl	%edx, %eax
	call	__Z13handle_memerri
L1508:
	movl	(%ebx), %ecx
	xorl	%eax, %eax
L1131:
	movss	12(%ecx,%eax,4), %xmm0
	leal	-100(%ebp), %esi
	movl	%ecx, -76(%ebp,%eax,4)
	movl	%ecx, -64(%ebp,%eax,4)
	movss	%xmm0, (%esi,%eax,4)
	movss	%xmm0, -88(%ebp,%eax,4)
	addl	$1, %eax
	cmpl	$3, %eax
	jne	L1131
	cmpl	%ecx, %ebx
	je	L1132
	movl	%ebx, -232(%ebp)
	movl	%ecx, %edx
	movl	%ecx, -340(%ebp)
L1138:
	movl	-136(%ebp), %eax
L1137:
	leal	-88(%ebp), %ebx
	movss	12(%edx,%eax,4), %xmm0
	movl	%eax, %ecx
	movss	(%ebx,%eax,4), %xmm1
	comiss	%xmm0, %xmm1
	jbe	L1133
	movl	%edx, -64(%ebp,%eax,4)
	movss	%xmm0, (%ebx,%eax,4)
L1133:
	comiss	(%esi,%ecx,4), %xmm0
	jbe	L1135
	movl	%edx, -76(%ebp,%ecx,4)
	movss	%xmm0, (%esi,%ecx,4)
L1135:
	addl	$1, %eax
	cmpl	$3, %eax
	jne	L1137
	movl	(%edx), %edx
	cmpl	%edx, -232(%ebp)
	jne	L1138
	movl	-232(%ebp), %ebx
	movl	-340(%ebp), %ecx
L1132:
	movss	-96(%ebp), %xmm1
	movss	-100(%ebp), %xmm0
	xorl	%eax, %eax
	subss	-84(%ebp), %xmm1
	subss	-88(%ebp), %xmm0
	comiss	%xmm0, %xmm1
	movss	-92(%ebp), %xmm0
	movss	-80(%ebp), %xmm1
	movaps	%xmm0, %xmm5
	seta	%al
	subss	%xmm1, %xmm5
	movss	-100(%ebp,%eax,4), %xmm3
	movss	-88(%ebp,%eax,4), %xmm2
	movaps	%xmm3, %xmm4
	subss	%xmm2, %xmm4
	comiss	%xmm4, %xmm5
	ja	L1404
	movaps	%xmm3, %xmm0
	movaps	%xmm2, %xmm1
L1139:
	comiss	%xmm0, %xmm1
	jnb	L1544
	movl	-64(%ebp,%eax,4), %edx
	movl	-76(%ebp,%eax,4), %eax
	movss	12(%edx), %xmm4
	movss	12(%eax), %xmm7
	movss	16(%edx), %xmm3
	movss	20(%edx), %xmm2
	subss	%xmm7, %xmm4
	movss	%xmm7, -256(%ebp)
	movss	16(%eax), %xmm7
	subss	%xmm7, %xmm3
	movss	%xmm7, -260(%ebp)
	movss	20(%eax), %xmm7
	movss	%xmm4, -52(%ebp)
	subss	%xmm7, %xmm2
	movss	%xmm7, -264(%ebp)
	movss	%xmm3, -48(%ebp)
	movss	%xmm2, -44(%ebp)
	cmpl	%ecx, %ebx
	je	L1143
	movl	$0x00000000, -228(%ebp)
	xorl	%eax, %eax
L1145:
	movss	16(%ecx), %xmm0
	movss	20(%ecx), %xmm7
	movaps	%xmm3, %xmm5
	movaps	%xmm2, %xmm6
	subss	-260(%ebp), %xmm0
	subss	-264(%ebp), %xmm7
	movss	12(%ecx), %xmm1
	subss	-256(%ebp), %xmm1
	mulss	%xmm0, %xmm6
	mulss	%xmm7, %xmm5
	mulss	%xmm4, %xmm7
	mulss	%xmm4, %xmm0
	subss	%xmm6, %xmm5
	movaps	%xmm2, %xmm6
	mulss	%xmm1, %xmm6
	mulss	%xmm3, %xmm1
	subss	%xmm7, %xmm6
	movaps	%xmm5, %xmm7
	subss	%xmm1, %xmm0
	mulss	%xmm5, %xmm7
	movaps	%xmm6, %xmm1
	mulss	%xmm6, %xmm1
	addss	%xmm7, %xmm1
	movaps	%xmm0, %xmm7
	mulss	%xmm0, %xmm7
	addss	%xmm7, %xmm1
	comiss	-228(%ebp), %xmm1
	jbe	L1144
	movss	%xmm0, -292(%ebp)
	movl	%edi, %eax
	movss	%xmm6, -296(%ebp)
	movss	%xmm5, -280(%ebp)
	movss	%xmm1, -228(%ebp)
L1144:
	movl	(%ecx), %ecx
	cmpl	%ecx, %ebx
	jne	L1145
	testb	%al, %al
	je	L1146
	movss	-280(%ebp), %xmm7
	movss	%xmm7, -112(%ebp)
	movss	-296(%ebp), %xmm7
	movss	%xmm7, -108(%ebp)
	movss	-292(%ebp), %xmm7
	movss	%xmm7, -104(%ebp)
L1146:
	xorps	%xmm0, %xmm0
	comiss	-228(%ebp), %xmm0
	jnb	L1143
L1147:
	movl	$1, -172(%ebp)
	movss	-108(%ebp), %xmm2
	movss	-112(%ebp), %xmm0
	movss	-104(%ebp), %xmm1
	jmp	L1130
L1378:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 92(%esi)
	testl	%eax, %eax
	je	L1381
	jmp	L1380
L1419:
	movl	%esi, %eax
	jmp	L1323
L1398:
	movl	-120(%ebp), %edi
	movl	%edx, (%esp)
	movl	%edi, 4(%esp)
	call	*%eax
	jmp	L1399
L1537:
	movl	%edx, 8(%edi)
	jmp	L1361
L1536:
	movl	-200(%ebp), %edi
	movl	-148(%ebp), %esi
	movl	%edi, 8(%esi)
	jmp	L1360
L1539:
	movl	-320(%ebp), %ecx
	jmp	L1342
L1272:
	movl	$24, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1273
	movl	-116(%ebp), %eax
	movl	$0, 72(%eax)
	addl	$152, %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	*__imp__longjmp
L1525:
	xorl	%edx, %edx
	jmp	L1370
L1382:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, 96(%esi)
	testl	%eax, %eax
	je	L1381
	jmp	L1384
L1383:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L1527:
	movl	$-1, (%eax)
	movl	$-1, 4(%eax)
	movl	$-1, -8(%eax,%esi)
	movl	$-1, -4(%eax,%esi)
	jmp	L1391
L1269:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L1268
L1266:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L1265
L1524:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1254
L1523:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1263
L1287:
	movl	%ebx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1290
L1375:
	movl	-252(%ebp), %eax
	call	__Z13handle_memerri
L1404:
	movl	$2, %eax
	jmp	L1139
L1230:
	movl	%esi, %eax
	call	__Z13handle_memerri
L1218:
	movl	-248(%ebp), %eax
	call	__Z13handle_memerri
L1300:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L1299
L1213:
	movl	-244(%ebp), %eax
	call	__Z13handle_memerri
L1305:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %esi
	movl	124(%esi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1308
L1303:
	movl	%eax, 4(%esp)
	movl	-116(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, (%esp)
	call	*%edx
	jmp	L1302
L1257:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1260
L1493:
	movl	-140(%ebp), %eax
	jmp	L1247
L1518:
	movl	$24, %eax
	call	__Z13handle_memerri
L1521:
	movl	%ebx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1289
L1520:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %ecx
	movl	124(%ecx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1297
L1544:
	movl	-116(%ebp), %eax
	movl	$0x00000000, -112(%ebp)
	xorl	%ecx, %ecx
	movss	LC7, %xmm1
	movl	$0x00000000, -108(%ebp)
	movl	$1, -172(%ebp)
	leal	20(%eax), %edx
	leal	32(%eax), %ebx
	movss	%xmm1, -104(%ebp)
	movaps	%xmm1, %xmm2
	jmp	L1142
L1543:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1211
L1143:
	xorps	%xmm5, %xmm5
	movaps	%xmm3, %xmm1
	movaps	%xmm3, %xmm0
	movl	$8, %edx
	cmpltss	%xmm5, %xmm3
	xorps	LC2, %xmm0
	movss	%xmm5, -104(%ebp)
	movss	%xmm5, -108(%ebp)
	movss	%xmm5, -112(%ebp)
	andps	%xmm3, %xmm0
	andnps	%xmm1, %xmm3
	movaps	%xmm4, %xmm1
	orps	%xmm0, %xmm3
	movaps	%xmm4, %xmm0
	xorps	LC2, %xmm0
	cmpltss	%xmm5, %xmm4
	andps	%xmm4, %xmm0
	andnps	%xmm1, %xmm4
	orps	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	xorps	LC2, %xmm0
	comiss	%xmm3, %xmm4
	movaps	%xmm2, %xmm3
	cmpltss	%xmm5, %xmm2
	seta	%al
	movzbl	%al, %eax
	andps	%xmm2, %xmm0
	andnps	%xmm3, %xmm2
	sall	$2, %eax
	orps	%xmm0, %xmm2
	movss	-52(%ebp,%eax), %xmm0
	movaps	%xmm0, %xmm4
	movaps	%xmm0, %xmm1
	xorps	LC2, %xmm1
	cmpltss	%xmm5, %xmm0
	andps	%xmm0, %xmm1
	andnps	%xmm4, %xmm0
	orps	%xmm1, %xmm0
	ucomiss	%xmm2, %xmm0
	cmova	%edx, %eax
	movl	$0x3f800000, -112(%ebp,%eax)
	jmp	L1147
L1528:
	movl	$-1, (%eax)
	movl	$-1, -4(%eax,%esi)
	jmp	L1391
L1542:
	movl	%esi, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1268
L1220:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1223
L1541:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1238
L1232:
	movl	%edx, 4(%esp)
	movl	-116(%ebp), %edi
	movl	124(%edi), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1235
	.cfi_endproc
LFE70:
	.section .rdata,"dr"
LC10:
	.ascii "freed %d planelists\0"
LC11:
	.ascii "source/build/src/polymer.cpp\0"
LC12:
	.ascii "freed %i programs\0"
	.text
	.p2align 4
	.globl	_polymer_uninit
	.def	_polymer_uninit;	.scl	2;	.type	32;	.endef
_polymer_uninit:
LFB98:
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
	je	L1546
	movl	84(%ebx), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	(%ebx), %esi
	testl	%esi, %esi
	je	L1547
	movl	140(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	144(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	148(%esi), %eax
	call	__ZL17deleteBucketAllocP11BucketAlloc
	movl	120(%ebx), %eax
	cmpl	$__ZL8heapFreePvS_.lto_priv.0, %eax
	jne	L1548
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L1549:
	movl	$0, (%ebx)
L1547:
	movl	92(%ebx), %eax
	testl	%eax, %eax
	je	L1550
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 92(%ebx)
L1550:
	movl	96(%ebx), %eax
	testl	%eax, %eax
	je	L1551
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 96(%ebx)
L1551:
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	L1552
	movl	%eax, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, 104(%ebx)
L1552:
	movl	%ebx, 4(%esp)
	movl	124(%ebx), %eax
	movl	%eax, (%esp)
	call	*120(%ebx)
	movl	$0, _prtess
L1546:
	call	_polymer_freeboard.lto_priv.0
	xorl	%eax, %eax
	call	_polymer_initrendertargets.lto_priv.0
	movl	_skyboxdatavbo, %esi
	testl	%esi, %esi
	je	L1553
	movl	$_skyboxdatavbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L1553:
	movl	_prmapvbo, %ebx
	testl	%ebx, %ebx
	je	L1554
	movl	$_prmapvbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L1554:
	movl	_prindexringvbo, %ecx
	testl	%ecx, %ecx
	je	L1555
	movl	$_prindexringvbo, 4(%esp)
	movl	$1, (%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
L1555:
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1559:
	movl	_prhighpalookups(,%esi,4), %eax
	addl	$1, %esi
	testl	%eax, %eax
	je	L1556
	xorl	%ebx, %ebx
	jmp	L1558
	.p2align 4,,10
	.p2align 3
L1592:
	movl	_prhighpalookups-4(,%esi,4), %eax
L1558:
	addl	%ebx, %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L1557
	addl	$4, %eax
	movl	$1, (%esp)
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteTextures
	movl	_prhighpalookups-4(,%esi,4), %eax
	subl	$8, %esp
	movl	$0, 4(%eax,%ebx)
L1557:
	addl	$8, %ebx
	cmpl	$2048, %ebx
	jne	L1592
L1556:
	cmpl	$256, %esi
	jne	L1559
	movl	__ZL6plpool.lto_priv.0, %ebx
	xorl	%esi, %esi
	testl	%ebx, %ebx
	je	L1560
L1561:
	movl	%ebx, %eax
	movl	4(%ebx), %ebx
	addl	$1, %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	%ebx, __ZL6plpool.lto_priv.0
	testl	%ebx, %ebx
	jne	L1561
L1560:
	cmpl	$2, _pr_verbosity
	jg	L1593
L1562:
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
	je	L1563
L1564:
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
	jne	L1564
L1563:
	cmpl	$1, _pr_verbosity
	jg	L1594
L1565:
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
L1594:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1565
	movl	__ZL13prprogramptrs.lto_priv.0+4, %eax
	movl	$LC12, 12(%esp)
	movl	$914, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1565
L1593:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1562
	movl	%esi, 16(%esp)
	movl	$LC10, 12(%esp)
	movl	$903, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1562
L1548:
	movl	%esi, 4(%esp)
	movl	124(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L1549
	.cfi_endproc
LFE98:
	.p2align 4
	.globl	_polymer_setaspect
	.def	_polymer_setaspect;	.scl	2;	.type	32;	.endef
_polymer_setaspect:
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
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	movl	%eax, %ebx
	subl	$20, %esp
	movss	LC13, %xmm0
	mulss	_fviewingrange, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	xorps	%xmm0, %xmm0
	fstps	-12(%ebp)
	cvtsi2ssl	%ebx, %xmm0
	mulss	-12(%ebp), %xmm0
	mulss	LC14, %xmm0
	mulss	LC15, %xmm0
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
	mulss	LC16, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	fstps	-12(%ebp)
	fldz
	fldl	_pr_customaspect
	movss	-12(%ebp), %xmm0
	mulss	LC17, %xmm0
	fucomi	%st(1), %st
	fstp	%st(1)
	jp	L1599
	movss	-16(%ebp), %xmm1
	jne	L1599
	fstp	%st(0)
	divss	-20(%ebp), %xmm1
	movss	%xmm1, -12(%ebp)
L1598:
	movss	%xmm0, -16(%ebp)
	movl	$5889, (%esp)
	call	*_glad_glMatrixMode
	subl	$4, %esp
	call	*_glad_glLoadIdentity
	movss	-16(%ebp), %xmm0
	mulss	LC18, %xmm0
	movl	$0x42c80000, (%esp)
	movss	LC9, %xmm2
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
L1599:
	.cfi_restore_state
	fstps	-12(%ebp)
	jmp	L1598
	.cfi_endproc
LFE103:
	.p2align 4
	.globl	_polymer_glinit
	.def	_polymer_glinit;	.scl	2;	.type	32;	.endef
_polymer_glinit:
LFB104:
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
	je	L1602
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
L1602:
	movl	$2932, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$515, %eax
	je	L1603
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
L1603:
	movl	$3042, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1604
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
L1604:
	movl	$3008, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1605
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
L1605:
	movl	_pr_wireframe, %edx
	movl	_glad_glPolygonMode, %eax
	testl	%edx, %edx
	je	L1606
	movl	$6913, 4(%esp)
	movl	$1032, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
L1607:
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
	je	L1601
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
L1601:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1606:
	.cfi_restore_state
	movl	$6914, 4(%esp)
	movl	$1032, (%esp)
	call	*%eax
	.cfi_def_cfa_offset 12
	subl	$8, %esp
	.cfi_def_cfa_offset 20
	jmp	L1607
	.cfi_endproc
LFE104:
	.section .rdata,"dr"
LC21:
	.ascii "Initializing sector %i\0"
LC22:
	.ascii "Initialized sector %i.\0"
LC23:
	.ascii "Initializing wall %i\0"
LC24:
	.ascii "Initialized wall %i.\0"
LC25:
	.ascii "Refreshed maphack data\0"
LC26:
	.ascii "Board loaded.\0"
	.text
	.p2align 4
	.globl	_polymer_loadboard
	.def	_polymer_loadboard;	.scl	2;	.type	32;	.endef
_polymer_loadboard:
LFB108:
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
	call	_polymer_freeboard.lto_priv.0
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
	je	L1626
	movl	_prindexring, %eax
	testl	%eax, %eax
	je	L1627
	movl	$34963, (%esp)
	call	*_glad_glUnmapBuffer
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
L1627:
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
L1626:
	movl	$34963, %eax
	call	__Z18buildgl_bindBufferjj.constprop.0
	cmpw	$0, _numsectors
	jle	L1628
	xorl	%edi, %edi
L1638:
	cmpl	$2, _pr_verbosity
	jg	L1676
L1629:
	movl	$572, (%esp)
	movl	_g_sm_heap, %ecx
	movl	_sector, %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1630
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
	je	L1677
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
	je	L1634
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
	je	L1634
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
	jg	L1678
L1636:
	cmpl	$2, _pr_nullrender
	jg	L1637
	movswl	%di, %eax
	call	_polymer_updatesector.part.0.isra.0
L1637:
	movswl	_numsectors, %esi
	addl	$1, %edi
	cmpl	%edi, %esi
	jg	L1638
	movswl	_numwalls, %edi
	testl	%edi, %edi
	jle	L1639
L1660:
	xorl	%esi, %esi
L1648:
	cmpl	$2, _pr_verbosity
	jg	L1679
L1640:
	movl	$804, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1641
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
	je	L1680
	movl	%eax, 504(%ebx)
	movl	756(%ebx), %eax
	movl	$4, 508(%ebx)
	testl	%eax, %eax
	je	L1681
L1645:
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
	jg	L1682
L1647:
	movswl	%di, %eax
	addl	$1, %esi
	call	_polymer_updatewall.lto_priv.0
	movswl	_numwalls, %edi
	cmpl	%esi, %edi
	jg	L1648
	movswl	_numsectors, %esi
	testw	%si, %si
	jle	L1652
L1650:
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L1654:
	movl	_prsectors(,%ebp,4), %ebx
	addl	$1, %ebp
	testl	%ebx, %ebx
	je	L1653
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
L1653:
	cmpl	%ebp, %esi
	jg	L1654
L1652:
	testl	%edi, %edi
	jle	L1651
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L1656:
	movl	_prwalls(,%esi,4), %ebx
	addl	$1, %esi
	testl	%ebx, %ebx
	je	L1655
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
L1655:
	cmpl	%edi, %esi
	jne	L1656
L1651:
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L1657:
	imull	$270, %eax, %edx
	addl	$1, %eax
	andb	$-2, _prlights+254(%edx)
	cmpl	$1024, %eax
	jne	L1657
	movl	$0, _lightcount
	call	_engineLoadMHK.constprop.0
	testl	%eax, %eax
	je	L1683
L1658:
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jle	L1625
	cmpw	$0, _numsectors
	jne	L1684
L1625:
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
L1676:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1629
	movl	%edi, 16(%esp)
	movl	$LC21, 12(%esp)
	movl	$2584, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1629
	.p2align 4,,10
	.p2align 3
L1678:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1636
	movl	%edi, 16(%esp)
	movl	$LC22, 12(%esp)
	movl	$2612, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1636
	.p2align 4,,10
	.p2align 3
L1634:
	movl	$24, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1630:
	movl	$572, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1682:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1647
	movl	%esi, 16(%esp)
	movl	$LC24, 12(%esp)
	movl	$3183, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1647
	.p2align 4,,10
	.p2align 3
L1679:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1640
	movl	%esi, 16(%esp)
	movl	$LC23, 12(%esp)
	movl	$3147, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1640
	.p2align 4,,10
	.p2align 3
L1677:
	movl	$12, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1681:
	movl	$80, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 40
	subl	$4, %esp
	.cfi_def_cfa_offset 44
	testl	%eax, %eax
	je	L1646
	movl	%eax, 756(%ebx)
	jmp	L1645
	.p2align 4,,10
	.p2align 3
L1628:
	cmpw	$0, _numwalls
	jg	L1660
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1641:
	movl	$804, %eax
	call	__Z13handle_memerri
L1680:
	movl	$96, %eax
	call	__Z13handle_memerri
L1639:
	testw	%si, %si
	jg	L1650
	jmp	L1651
	.p2align 4,,10
	.p2align 3
L1684:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1625
	movl	$LC26, 12(%esp)
	movl	$1071, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1625
L1683:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1658
	movl	$LC25, 12(%esp)
	movl	$1023, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1658
L1646:
	movl	$80, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE108:
	.section .rdata,"dr"
	.align 4
LC27:
	.ascii "Initializing Polymer subsystem...\0"
	.align 4
LC28:
	.ascii "Your video card driver/combo doesn't support the necessary features!\0"
LC29:
	.ascii "Disabling Polymer...\0"
	.align 4
LC30:
	.ascii "Tessellation object initialization failed!\0"
	.align 4
LC32:
	.ascii "Initialization complete in %d ms.\0"
	.text
	.p2align 4
	.globl	_polymer_init
	.def	_polymer_init;	.scl	2;	.type	32;	.endef
_polymer_init:
LFB116:
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
	jg	L1729
L1686:
	movzwl	_glinfo+28, %eax
	notl	%eax
	testw	$-27664, %ax
	je	L1688
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L1730
L1689:
	xorl	%eax, %eax
L1685:
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
L1730:
	.cfi_restore_state
	movl	$LC28, 12(%esp)
	movl	$751, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1689
	movl	$LC29, 12(%esp)
	movl	$752, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1689
L1729:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jg	L1731
	movzwl	_glinfo+28, %eax
	notl	%eax
	testw	$-27664, %ax
	jne	L1689
L1688:
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
	jne	L1692
	movl	$216, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L1732
L1693:
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
	jne	L1695
	movl	$512, 128(%ebx)
L1695:
	movl	132(%ebx), %eax
	testl	%eax, %eax
	jne	L1696
	movl	$512, 132(%ebx)
L1696:
	movl	136(%ebx), %esi
	testl	%esi, %esi
	jne	L1697
	movl	$256, 136(%ebx)
L1697:
	movl	140(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1698
	movl	$512, 140(%ebx)
L1698:
	movl	144(%ebx), %eax
	testl	%eax, %eax
	jne	L1699
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
L1700:
	movl	%eax, %ecx
L1702:
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
L1704:
	leal	-28(%ebp), %eax
	movl	%esi, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ebx, -40(%ebp)
	fildl	-40(%ebp)
	fmull	LC31
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_sincosf
	movss	-32(%ebp), %xmm0
	movss	-28(%ebp), %xmm1
	xorps	LC2, %xmm0
	movss	%xmm1, _artskydata+4(,%ebx,8)
	movss	%xmm0, _artskydata(,%ebx,8)
	addl	$1, %ebx
	cmpl	$16, %ebx
	jne	L1704
	movl	_nextmodelid, %edx
	movl	$0, _skyboxdatavbo
	testl	%edx, %edx
	jle	L1705
	movl	_models, %eax
	leal	(%eax,%edx,4), %ecx
L1707:
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1706
	movl	$0, 220(%edx)
L1706:
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L1707
L1705:
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
L1711:
	movl	_prhighpalookups(,%ebx,4), %eax
	addl	$1, %ebx
	testl	%eax, %eax
	je	L1708
	xorl	%esi, %esi
	jmp	L1710
	.p2align 4,,10
	.p2align 3
L1733:
	movl	_prhighpalookups-4(,%ebx,4), %eax
L1710:
	addl	%esi, %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1709
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
L1709:
	addl	$8, %esi
	cmpl	$2048, %esi
	jne	L1733
L1708:
	cmpl	$256, %ebx
	jne	L1711
	call	__Z27buildgl_resetSamplerObjectsv
	call	__Z21polymost_initdrawpolyv
	movl	_pr_verbosity, %eax
	testl	%eax, %eax
	jg	L1734
L1712:
	movl	$1, %eax
	jmp	L1685
L1731:
	movl	$LC27, 12(%esp)
	movl	$740, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1686
L1699:
	xorps	%xmm0, %xmm0
	movl	$0x00000000, 8(%ebx)
	movl	$0x00000000, 12(%ebx)
	movl	$0x00000000, 16(%ebx)
	movl	$0, 68(%ebx)
	movl	$0, 60(%ebx)
	movl	$0, 64(%ebx)
	movups	%xmm0, 44(%ebx)
	cmpl	$15, %eax
	jg	L1701
	movl	$16, 144(%ebx)
	movl	$16, %ecx
	jmp	L1702
L1734:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1712
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
	movl	$LC32, 12(%esp)
	subl	%eax, %ebx
	movl	$842, 8(%esp)
	movl	%ebx, 16(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1712
L1701:
	cmpl	$4096, %eax
	jle	L1700
	movl	$4096, 144(%ebx)
	movl	$4096, %ecx
	jmp	L1702
L1732:
	movl	$216, %eax
	call	__Z13handle_memerri
L1692:
	movl	$216, 4(%esp)
	movl	__ZL11defaulAlloc+12, %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	L1693
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	movl	$0, _prtess
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1689
	movl	$LC30, 12(%esp)
	movl	$767, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1689
	.cfi_endproc
LFE116:
	.p2align 4
	.globl	_polymer_inb4rotatesprite
	.def	_polymer_inb4rotatesprite;	.scl	2;	.type	32;	.endef
_polymer_inb4rotatesprite:
LFB122:
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
LFE122:
	.section .rdata,"dr"
LC36:
	.ascii "Sprite %i\0"
LC37:
	.ascii "Updating sprite %i\0"
	.text
	.p2align 4
	.globl	_polymer_drawsprite
	.def	_polymer_drawsprite;	.scl	2;	.type	32;	.endef
_polymer_drawsprite:
LFB123:
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
	jg	L2017
L1740:
	movl	-36(%ebp), %ecx
	movzwl	30(%ecx), %eax
	movw	%ax, -44(%ebp)
	testw	%ax, %ax
	js	L1739
	movswl	14(%ecx), %eax
	movl	%eax, %esi
	cmpl	$30719, %eax
	jbe	L2018
L1739:
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
L2018:
	.cfi_restore_state
	movzbl	18(%ecx), %edx
	testb	$4, %dl
	je	L1742
	movl	_depth, %ecx
	testl	%ecx, %ecx
	je	L1997
	movl	_mirrors-8(,%ecx,8), %ecx
	testl	%ecx, %ecx
	je	L1739
L1997:
	andl	$8, %edx
	jne	L1739
L1745:
	movswl	-44(%ebp), %ecx
	movl	%ecx, -48(%ebp)
	cmpb	$63, _picanm+3(%eax,%eax,4)
	ja	L2019
L1746:
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	leal	(%eax,%eax,4), %edx
	movl	_sector, %eax
	leal	(%eax,%edx,8), %eax
	movzbl	33(%eax), %ecx
	testb	%cl, %cl
	jne	L1747
	movzbl	29(%eax), %ecx
L1747:
	movzbl	32(%eax), %edx
	movl	_globalflags, %eax
	andl	$4, %eax
	jne	L1850
	movl	-36(%ebp), %edi
	movzbl	17(%edi), %esi
	testb	$2, _hictinting+1(,%esi,8)
	je	L2020
L1748:
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
	jmp	L1749
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1751:
	leal	0(,%eax,4), %edx
	leal	(%edx,%eax), %esi
	cmpb	_tile2model+17(,%esi,4), %cl
	je	L1750
L1749:
	addl	%eax, %edx
	movswl	_tile2model+4(,%edx,4), %eax
	cmpl	$-1, %eax
	jne	L1751
	movl	%edi, %eax
L1750:
	movl	-48(%ebp), %edx
	movl	_usemodels, %esi
	sall	$6, %edx
	addl	_spriteext, %edx
	movzwl	12(%edx), %edx
	testl	%esi, %esi
	je	L1752
	leal	(%eax,%eax,4), %ecx
	sall	$2, %ecx
	movswl	_tile2model(%ecx), %eax
	testw	%ax, %ax
	js	L1752
	cmpw	$0, _tile2model+2(%ecx)
	js	L1752
	testb	$1, %dl
	jne	L1752
	movl	_models, %ecx
	movl	(%ecx,%eax,4), %eax
	cmpl	$1, (%eax)
	je	L1752
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1753
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
L1753:
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
L2016:
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	jmp	L1847
	.p2align 4,,10
	.p2align 3
L2017:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1740
	movl	%ebx, 16(%esp)
	movl	$LC36, 12(%esp)
	movl	$1516, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1740
L1742:
	andl	$8, %edx
	je	L1745
	movl	_depth, %edx
	testl	%edx, %edx
	je	L1739
	movl	_mirrors-8(,%edx,8), %edi
	testl	%edi, %edi
	je	L1745
	jmp	L1739
L1752:
	movl	-36(%ebp), %edi
	movzwl	12(%edi), %eax
	movw	%ax, -86(%ebp)
	testb	$4, %dl
	je	L1756
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
L1757:
	cmpl	$2, _pr_nullrender
	jg	L1758
	movl	_tspriteptr(,%ebx,4), %esi
	movzwl	12(%esi), %eax
	movw	%ax, -40(%ebp)
	cmpl	$2, _pr_verbosity
	jg	L2021
L1759:
	movswl	14(%esi), %edi
	movswl	30(%esi), %ebx
	movl	%edi, %eax
	orw	%bx, %ax
	js	L1758
	movl	_prsprites(,%ebx,4), %eax
	movl	%eax, -32(%ebp)
	testl	%eax, %eax
	je	L2022
L1760:
	testb	$48, 12(%esi)
	je	L1768
	movl	-32(%ebp), %ebx
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1769
	cmpl	$1, _pr_nullrender
	jle	L2023
L1769:
	cmpw	$2, _searchit
	je	L1768
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
	movl	%eax, -56(%ebp)
	movl	22(%esi), %eax
	movl	%edx, -52(%ebp)
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
	addl	-56(%ebp), %eax
	adcl	-52(%ebp), %edx
	addl	$-1314800686, %eax
	adcl	$-1971305779, %edx
	movl	%edx, %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$5, %ecx
	xorl	%ebx, %edx
	xorl	%ecx, %eax
	movl	%edx, -52(%ebp)
	imull	$-1640531463, %edx, %ecx
	movl	%eax, -56(%ebp)
	imull	$374761361, -56(%ebp), %edx
	movl	-56(%ebp), %eax
	addl	%edx, %ecx
	movl	$-1640531463, %edx
	mull	%edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-32(%ebp), %eax
	cmpl	252(%eax), %ecx
	je	L1758
	movl	%ecx, 252(%eax)
L1768:
	movzwl	-40(%ebp), %eax
	movzbl	17(%esi), %ecx
	andl	$32, %eax
	movw	%ax, -72(%ebp)
	shrw	$5, %ax
	andl	$1, %eax
	movb	%al, -87(%ebp)
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
	jne	L1770
	movl	-32(%ebp), %eax
	xorps	%xmm0, %xmm0
	movzbl	147(%eax), %eax
	cvtsi2ssl	%eax, %xmm0
L1771:
	movswl	30(%esi), %eax
	movl	-32(%ebp), %ecx
	movss	LC7, %xmm1
	sall	$6, %eax
	addl	_spriteext, %eax
	subss	8(%eax), %xmm1
	mulss	%xmm0, %xmm1
	cvttss2sil	%xmm1, %eax
	movss	%xmm1, -112(%ebp)
	movb	%al, 147(%ecx)
	cmpw	$2, _searchit
	jne	L1773
	movb	$3, 144(%ecx)
	movzbl	30(%esi), %eax
	movb	%al, 145(%ecx)
	movzbl	31(%esi), %eax
	movb	$-1, 147(%ecx)
	movb	%al, 146(%ecx)
	movl	$-559038737, 252(%ecx)
L1773:
	movzwl	12(%esi), %ecx
	movzbl	20(%esi), %eax
	xorps	%xmm0, %xmm0
	movl	%ecx, %ebx
	cvtsi2ssl	%eax, %xmm0
	andw	$48, %cx
	movw	%cx, -60(%ebp)
	jne	L1774
	mulss	LC38, %xmm0
	movss	LC39, %xmm2
L1775:
	movzbl	21(%esi), %eax
	xorps	%xmm1, %xmm1
	movswl	_tilesiz(,%edi,4), %ecx
	movswl	_tilesiz+2(,%edi,4), %edx
	cvtsi2ssl	%eax, %xmm1
	movl	_usehightile, %eax
	mulss	%xmm2, %xmm1
	testl	%eax, %eax
	jne	L1776
	movswl	%cx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm0, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	movl	%eax, -64(%ebp)
	movswl	%dx, %eax
	leal	0(,%edi,4), %edx
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	movl	%eax, -56(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %eax
L1777:
	movsbl	_picanm+2(%edi,%edx), %edx
L1779:
	cmpw	$48, -60(%ebp)
	jne	L1780
	movzwl	22(%esi), %edi
	movw	%di, -68(%ebp)
	testw	%di, %di
	jne	L1781
L1780:
	movsbl	22(%esi), %ecx
	addl	%ecx, %eax
	movsbl	23(%esi), %ecx
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	movw	%cx, -68(%ebp)
L1781:
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%eax, %xmm2
	movzwl	-72(%ebp), %eax
	shrw	$5, %ax
	xorl	$1, %eax
	mulss	%xmm2, %xmm0
	cvttss2sil	%xmm0, %edi
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	mulss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %ecx
	movl	%ecx, -60(%ebp)
	testb	%bl, %bl
	jns	L1853
	testb	%al, %al
	jne	L2024
L1853:
	movl	$0, -108(%ebp)
L1782:
	xorps	%xmm0, %xmm0
	xorps	%xmm5, %xmm5
	movb	%al, -72(%ebp)
	cvtsi2ssl	8(%esi), %xmm0
	mulss	LC45, %xmm0
	cvtsi2ssl	4(%esi), %xmm5
	movss	%xmm0, -96(%ebp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%esi), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm5, -92(%ebp)
	movss	%xmm0, -100(%ebp)
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
	movb	%al, -113(%ebp)
	movzbl	-87(%ebp), %eax
	xorl	%edx, %eax
	movzwl	12(%esi), %edx
	movb	%al, -114(%ebp)
	movzbl	-72(%ebp), %eax
	andl	%ecx, %eax
	movb	%al, -88(%ebp)
	movl	%edi, %eax
	negl	%eax
	movl	%eax, -72(%ebp)
	movl	_pr_billboardingmode, %eax
	testl	%eax, %eax
	je	L1784
	testb	$48, -40(%ebp)
	je	L2025
L1784:
	movzbl	-113(%ebp), %ebx
	cmpb	%bl, -87(%ebp)
	cmove	-72(%ebp), %edi
	testb	$48, -40(%ebp)
	je	L1788
	movl	-60(%ebp), %ebx
	movl	%ebx, %eax
	negl	%eax
	andl	$1, %ecx
	cmove	%ebx, %eax
	movl	%eax, -60(%ebp)
L1788:
	testb	$32, %dl
	jne	L1789
	andl	$48, %edx
	cmpw	$16, %dx
	je	L1790
	movl	_viewangle, %edx
	xorps	%xmm0, %xmm0
	movss	-100(%ebp), %xmm6
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
	mulss	LC18, %xmm0
	movss	%xmm0, -68(%ebp)
	movss	%xmm6, 8(%esp)
	movss	-96(%ebp), %xmm7
	movss	%xmm7, 4(%esp)
	movss	-92(%ebp), %xmm5
	movss	%xmm5, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-68(%ebp), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	_horizang, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	movl	$0x00000000, 8(%esp)
	cvtsi2ssl	-60(%ebp), %xmm0
L2008:
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movl	$__ZL10vertsprite, %edi
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	xorps	%xmm0, %xmm0
	subl	$12, %esp
	movl	$0x3f800000, 8(%esp)
	cvtsi2ssl	-56(%ebp), %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-64(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
L1792:
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
L1803:
	movl	12(%edi,%eax), %ecx
	movl	4(%edi,%eax), %esi
	movl	8(%edi,%eax), %ebx
	movl	%ecx, -56(%ebp)
	movl	(%edi,%eax), %ecx
	movl	%esi, 4(%edx,%eax)
	movl	%ecx, (%edx,%eax)
	movl	%ebx, 8(%edx,%eax)
	movl	-56(%ebp), %ecx
	movl	%ecx, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1803
	cmpb	$0, -114(%ebp)
	jne	L1866
	cmpb	$0, -88(%ebp)
	jne	L1866
L1805:
	movl	-32(%ebp), %ecx
	xorl	%eax, %eax
L1811:
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
	jne	L1811
	movl	-32(%ebp), %edi
	movl	%edi, %eax
	call	_polymer_computeplane.lto_priv.0
	cmpl	$1, _pr_nullrender
	jle	L2026
	testb	$48, -40(%ebp)
	je	L1758
L1814:
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
	jle	L1758
L1815:
	movl	_lightcount, %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	testl	%eax, %eax
	jg	L2010
	jmp	L1818
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1816:
	addl	$1, %ebx
L2010:
	imull	$270, %ebx, %eax
	testb	$1, _prlights+254(%eax)
	je	L1816
	leal	1(%ebx), %eax
	addl	$1, %esi
	movl	%eax, -32(%ebp)
	imull	$270, %ebx, %eax
	leal	_prlights(%eax), %ecx
	movzbl	_prlights+31(%eax), %eax
	cmpl	%eax, -40(%ebp)
	jne	L1817
	movl	4(%edi), %edx
	movl	(%edi), %eax
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	jne	L2027
L1817:
	cmpl	%esi, _lightcount
	jle	L1818
	movl	-32(%ebp), %ebx
	jmp	L2010
L1818:
	addl	$1, -40(%ebp)
	movl	-40(%ebp), %eax
	cmpl	_pr_maxlightpriority, %eax
	jl	L1815
L1758:
	movl	-48(%ebp), %eax
	movl	_prsprites(,%eax,4), %eax
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	je	L1739
	movzwl	-86(%ebp), %eax
	testb	$32, %al
	jne	L1821
	andl	$48, %eax
	cmpw	$16, %ax
	jne	L1822
	movss	LC3, %xmm0
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movl	_prsectors(,%eax,4), %eax
	addss	516(%eax), %xmm0
	movss	%xmm0, 516(%eax)
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1823
	movl	_mirrors-8(,%eax,8), %esi
	testl	%esi, %esi
	je	L1824
L1823:
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
	je	L1825
	testl	%edx, %edx
	je	L1860
	cmpl	%eax, %edx
	jge	L1826
	leal	-28(%ebp), %eax
	leal	-24(%ebp), %ebx
/APP
 # 115 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
L1826:
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
L1825:
	sarl	$2, %edx
	movl	$2048, %eax
	xorps	%xmm1, %xmm1
	movl	$0xc2800000, 4(%esp)
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cvtsi2ssl	%edx, %xmm1
L2013:
	movss	LC7, %xmm0
	divss	%xmm1, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*%esi
	subl	$8, %esp
L1824:
	cmpl	$1, _automapping
	jne	L1839
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
	sarl	$3, %eax
	andl	$7, %edx
	movzbl	__ZL8pow2char.lto_priv.11(%edx), %edx
	orb	%dl, _show2dsprite(%eax)
L1839:
	movl	-36(%ebp), %eax
	movzwl	12(%eax), %eax
	testb	$64, %al
	je	L1840
	testb	$48, %al
	jne	L2028
L1840:
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1843
	movl	_mirrors-8(,%eax,8), %ebx
	testl	%ebx, %ebx
	je	L1844
L1843:
	movl	_pr_ati_nodepthoffset, %ecx
	testl	%ecx, %ecx
	je	L2029
L1844:
	movl	-56(%ebp), %eax
	call	_polymer_drawplane.lto_priv.0
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1845
	movl	_mirrors-8(,%eax,8), %edx
	testl	%edx, %edx
	je	L1846
L1845:
	movl	_pr_ati_nodepthoffset, %eax
	testl	%eax, %eax
	je	L2030
L1846:
	movl	-36(%ebp), %eax
	movzwl	12(%eax), %eax
	testb	$64, %al
	je	L1739
	testb	$48, %al
	je	L1739
	notl	%eax
	testb	$40, %al
	je	L2031
L1847:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1739
	movl	$2884, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1739
L1822:
	movl	-56(%ebp), %eax
	movl	_pr_maxlightpriority, %ecx
	xorl	%edx, %edx
	movl	$0, -32(%ebp)
	movw	%dx, 248(%eax)
	testl	%ecx, %ecx
	jle	L1824
	.p2align 4
	.p2align 3
L1830:
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1837
	movl	_mirrors-8(,%eax,8), %eax
	testl	%eax, %eax
	je	L1824
L1837:
	movl	_lightcount, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	testl	%eax, %eax
	jg	L2012
	jmp	L1835
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1831:
	addl	$1, %esi
L2012:
	imull	$270, %esi, %eax
	testb	$1, _prlights+254(%eax)
	je	L1831
	imull	$270, %esi, %edx
	movzbl	_prlights+31(%edx), %eax
	cmpl	-32(%ebp), %eax
	je	L2032
L1832:
	addl	$1, %esi
	addl	$1, %edi
	cmpl	%edi, _lightcount
	jg	L2012
L1835:
	addl	$1, -32(%ebp)
	movl	-32(%ebp), %eax
	cmpl	%eax, _pr_maxlightpriority
	jg	L1830
	jmp	L1824
	.p2align 4,,10
	.p2align 3
L2032:
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
	jge	L1833
	leal	-24(%ebp), %ebx
	leal	-28(%ebp), %eax
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L1833:
	cmpl	%eax, %edx
	jge	L1834
	leal	-28(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %edx
L1834:
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
	jl	L1832
	imull	$270, %esi, %ecx
	movl	-56(%ebp), %ebx
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	addl	$_prlights, %ecx
	call	_polymer_planeinlight.isra.0
	testl	%eax, %eax
	je	L1832
	movzwl	248(%ebx), %eax
	leal	1(%eax), %edx
	movw	%dx, 248(%ebx)
	movw	%si, 184(%ebx,%eax,2)
	jmp	L1832
L1756:
	andl	$8, %edx
	je	L1757
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
	jmp	L1757
L1850:
	xorl	%eax, %eax
	jmp	L1748
L2019:
	call	_animateoffs
	movl	-36(%ebp), %edi
	addl	%esi, %eax
	movw	%ax, 14(%edi)
	jmp	L1746
L2020:
	movsbl	16(%edi), %eax
	jmp	L1748
L2028:
	notl	%eax
	testb	$40, %al
	je	L2033
L1841:
	movl	$2884, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1840
	movl	$2884, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$2884, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1840
L1770:
	testb	$2, %ah
	movl	-32(%ebp), %eax
	je	L1772
	movss	LC34, %xmm0
	movb	$85, 147(%eax)
	jmp	L1771
	.p2align 4,,10
	.p2align 3
L2027:
	movswl	%bx, %edx
	movl	%edi, %eax
	call	_polymer_addplanelight.lto_priv.0
	jmp	L1817
L1821:
	movss	LC3, %xmm0
	movl	-36(%ebp), %eax
	movswl	24(%eax), %eax
	movl	_prsectors(,%eax,4), %eax
	addss	520(%eax), %xmm0
	movss	%xmm0, 520(%eax)
	movl	_depth, %eax
	testl	%eax, %eax
	je	L1827
	movl	_mirrors-8(,%eax,8), %ebx
	testl	%ebx, %ebx
	je	L1824
L1827:
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
	jge	L1828
	leal	-28(%ebp), %eax
	leal	-24(%ebp), %ebx
/APP
 # 128 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L1828:
	cmpl	%eax, %edx
	jge	L1829
	leal	-28(%ebp), %eax
	leal	-20(%ebp), %ebx
/APP
 # 131 "source/build/include/common.h" 1
	movl (%eax), %ecx; movl (%ebx), %edx; movl %ecx, (%ebx); movl %edx, (%eax)
 # 0 "" 2
/NO_APP
	movl	-28(%ebp), %edx
	movl	-20(%ebp), %eax
L1829:
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
	jmp	L2013
L2030:
	movl	$32823, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	testl	%eax, %eax
	je	L1846
	movl	$32823, (%esp)
	call	*_glad_glDisable
	xorl	%ecx, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1846
L2029:
	movl	$32823, %edx
	movl	$_gl+88, %eax
	call	_inthash_find
	cmpl	$1, %eax
	je	L1844
	movl	$32823, (%esp)
	call	*_glad_glEnable
	movl	$1, %ecx
	movl	$32823, %edx
	movl	$_gl+88, %eax
	subl	$4, %esp
	movl	$1, (%esp)
	call	_inthash_add
	jmp	L1844
L2021:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$6, %eax
	jle	L1759
	movl	%ebx, 16(%esp)
	movl	$LC37, 12(%esp)
	movl	$3924, 8(%esp)
	movl	$LC11, 4(%esp)
	movl	$7, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1759
L1776:
	movzwl	_h_xsize(%edi,%edi), %eax
	testw	%ax, %ax
	je	L1778
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movsbl	_h_yoffs(%edi), %edx
	cvtsi2ssl	%eax, %xmm2
	movzwl	_h_ysize(%edi,%edi), %eax
	cvtsi2ssl	%eax, %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	cvttss2sil	%xmm3, %eax
	movl	%eax, -56(%ebp)
	cvttss2sil	%xmm2, %eax
	movl	%eax, -64(%ebp)
	movsbl	_h_xoffs(%edi), %eax
	jmp	L1779
L1774:
	movss	LC39, %xmm2
	mulss	%xmm2, %xmm0
	jmp	L1775
L1866:
	movzbl	-113(%ebp), %ebx
	cmpb	%bl, -87(%ebp)
	je	L2034
	xorl	%eax, %eax
	cmpb	$0, -88(%ebp)
	je	L1810
	movl	-32(%ebp), %ecx
L1809:
	movl	(%ecx), %edx
	addl	%eax, %edx
	movss	12(%edx), %xmm0
	subss	LC7, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 12(%edx)
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	16(%edx), %xmm0
	subss	LC7, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 16(%edx)
	cmpl	$96, %eax
	jne	L1809
	jmp	L1805
L1810:
	movl	-32(%ebp), %ecx
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	12(%edx), %xmm0
	subss	LC7, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 12(%edx)
	cmpl	$96, %eax
	jne	L1810
	jmp	L1805
L2026:
	movl	8(%edi), %edx
	testb	$48, -40(%ebp)
	jne	L2035
	testl	%edx, %edx
	je	L1758
	movl	-32(%ebp), %edi
	movl	$1, (%esp)
	leal	8(%edi), %eax
	movl	%eax, 4(%esp)
	call	*_glad_glDeleteBuffers
	subl	$8, %esp
	movl	$0, 8(%edi)
	jmp	L1758
L2023:
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
	jne	L1769
	jmp	L1768
	.p2align 4,,10
	.p2align 3
L2025:
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
	cmove	-72(%ebp), %edi
	andl	$32, %edx
	movw	%ax, 28(%esi)
	jne	L1789
L1790:
	movswl	30(%esi), %eax
	cmpl	$16383, %eax
	ja	L1856
	sall	$4, %eax
	movzwl	_ornament+12(%eax), %edx
	addl	$_ornament, %eax
	movl	%eax, -68(%ebp)
L1793:
	movw	%dx, -28(%ebp)
	movzbl	20(%esi), %eax
	movl	-68(%ebp), %ebx
	movb	%al, -124(%ebp)
	movzwl	28(%esi), %eax
	movl	%eax, %edx
	addl	$1536, %eax
	andl	$2047, %edx
	andl	$2047, %eax
	movzwl	_sintable(%edx,%edx), %ecx
	movzwl	_sintable(%eax,%eax), %eax
	leal	-28(%ebp), %edx
	movw	%cx, -116(%ebp)
	movl	%ebx, %ecx
	movw	%ax, -126(%ebp)
	movl	%esi, %eax
	call	__Z30polymost_checkornamentedspriteP11tspritetypePsP16wallspriteinfo_t
	movswl	28(%esi), %eax
	xorps	%xmm0, %xmm0
	addl	$1024, %eax
	andl	$2047, %eax
	cvtsi2ssl	%eax, %xmm0
	movswl	-28(%ebp), %eax
	mulss	LC18, %xmm0
	movss	%xmm0, -120(%ebp)
	cmpw	$-1, %ax
	je	L1795
	movl	_wall, %edx
	sall	$5, %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	%ecx, -72(%ebp)
	movswl	8(%eax), %ecx
	movl	4(%eax), %eax
	sall	$5, %ecx
	addl	%ecx, %edx
	movl	%eax, -80(%ebp)
	movl	(%edx), %ecx
	movl	4(%edx), %eax
	movl	%ecx, -76(%ebp)
	movl	%eax, -84(%ebp)
	testl	%ebx, %ebx
	je	L1796
	cmpb	$0, 15(%ebx)
	jne	L1796
	movl	-80(%ebp), %edx
	movl	-72(%ebp), %ecx
	subl	-84(%ebp), %edx
	subl	-76(%ebp), %ecx
	call	@gethiq16angle@8
	movswl	28(%esi), %ecx
	addl	$100663296, %eax
	andl	$134217727, %eax
	sall	$16, %ecx
	movl	%eax, %edx
	movl	%eax, %ebx
	call	@getq16angledelta@8
	xorps	%xmm1, %xmm1
	movss	LC13, %xmm0
	movss	LC41, %xmm2
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	comiss	%xmm1, %xmm2
	jb	L1795
L1849:
	movl	-68(%ebp), %eax
	movb	$0, 15(%eax)
L1801:
	leal	67108864(%ebx), %eax
	xorps	%xmm1, %xmm1
	andl	$134217727, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	mulss	LC18, %xmm0
	movss	%xmm0, -120(%ebp)
L1795:
	movss	-100(%ebp), %xmm6
	movss	%xmm6, 8(%esp)
	movss	-96(%ebp), %xmm7
	movss	%xmm7, 4(%esp)
	movss	-92(%ebp), %xmm3
	movss	%xmm3, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-120(%ebp), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	subl	$16, %esp
	movl	$0x00000000, 8(%esp)
	movl	-60(%ebp), %eax
	subl	-108(%ebp), %eax
	cvtsi2ssl	%eax, %xmm0
	jmp	L2008
L1789:
	movl	$0x45800000, 4(%esp)
	movswl	-68(%ebp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, (%esp)
	call	_atan2f
	movswl	28(%esi), %eax
	xorps	%xmm1, %xmm1
	movss	-100(%ebp), %xmm5
	fstps	-68(%ebp)
	movss	-68(%ebp), %xmm0
	mulss	LC43, %xmm0
	addl	$1024, %eax
	andl	$2047, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	LC18, %xmm1
	movss	%xmm0, -72(%ebp)
	movss	%xmm1, -68(%ebp)
	movss	%xmm5, 8(%esp)
	movss	-96(%ebp), %xmm6
	movss	%xmm6, 4(%esp)
	movss	-92(%ebp), %xmm7
	movss	%xmm7, (%esp)
	call	*_glad_glTranslatef
	subl	$12, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x3f800000, 8(%esp)
	movl	$0x00000000, 4(%esp)
	movss	-68(%ebp), %xmm1
	xorps	LC2, %xmm1
	movss	%xmm1, (%esp)
	call	*_glad_glRotatef
	subl	$16, %esp
	movl	$0x00000000, 12(%esp)
	movl	$0x00000000, 8(%esp)
	movl	$0x3f800000, 4(%esp)
	movss	-72(%ebp), %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glRotatef
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-60(%ebp), %xmm0
	subl	$16, %esp
	movl	$0x3f800000, 4(%esp)
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edi, %xmm0
	movl	$__ZL11horizsprite, %edi
	movss	%xmm0, (%esp)
	call	*_glad_glTranslatef
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-56(%ebp), %xmm0
	subl	$12, %esp
	movl	$0x3f800000, 4(%esp)
	movss	%xmm0, 8(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-64(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	*_glad_glScalef
	subl	$12, %esp
	jmp	L1792
L1856:
	movl	$0, -68(%ebp)
	movl	$-1, %edx
	jmp	L1793
L1772:
	movss	LC35, %xmm0
	movb	$-86, 147(%eax)
	jmp	L1771
L2034:
	cmpb	$0, -88(%ebp)
	je	L1805
	xorl	%eax, %eax
L1808:
	movl	-32(%ebp), %ecx
	movl	(%ecx), %edx
	addl	%eax, %edx
	addl	$24, %eax
	movss	16(%edx), %xmm0
	subss	LC7, %xmm0
	xorps	LC2, %xmm0
	movss	%xmm0, 16(%edx)
	cmpl	$96, %eax
	jne	L1808
	jmp	L1805
L1778:
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	leal	0(,%edi,4), %edx
	mulss	%xmm1, %xmm2
	cvttss2sil	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	movl	%eax, -56(%ebp)
	mulss	%xmm0, %xmm2
	cvttss2sil	%xmm2, %eax
	movl	%eax, -64(%ebp)
	movsbl	_picanm+1(%edi,%edi,4), %eax
	jmp	L1777
L2024:
	testb	$48, -40(%ebp)
	jne	L1783
	movl	-56(%ebp), %ebx
	movl	-56(%ebp), %edx
	movl	$0, -108(%ebp)
	shrl	$31, %ebx
	addl	%ebx, %edx
	sarl	%edx
	subl	%edx, %ecx
	movl	%ecx, -60(%ebp)
	jmp	L1782
L2022:
	movl	$256, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edx
	movl	%eax, -32(%ebp)
	testl	%eax, %eax
	je	L1761
	movl	$0, 240(%eax)
	movl	$0, 244(%eax)
	movl	$0, 248(%eax)
	movl	$0, 252(%eax)
	xorl	%eax, %eax
L1762:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$240, %eax
	jb	L1762
	movl	-32(%ebp), %eax
	movl	%eax, _prsprites(,%ebx,4)
	movl	$96, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%ebx
	testl	%eax, %eax
	je	L2036
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
L1766:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L1766
	movl	-32(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	$4, 4(%ecx)
	movl	$-1, 12(%ecx)
	movl	$-559038737, 252(%ecx)
	jmp	L1760
L1796:
	movl	(%esi), %eax
	movl	-72(%ebp), %ebx
	movss	LC13, %xmm0
	movl	-76(%ebp), %edx
	leal	(%eax,%eax), %ecx
	addl	%ebx, %edx
	cmpl	%edx, %ecx
	je	L1798
	movl	4(%esi), %ebx
	movl	-80(%ebp), %edx
	movss	LC13, %xmm0
	addl	-84(%ebp), %edx
	leal	(%ebx,%ebx), %ecx
	movl	%ebx, -104(%ebp)
	cmpl	%edx, %ecx
	je	L1798
	movzbl	-124(%ebp), %edx
	xorps	%xmm2, %xmm2
	xorps	%xmm1, %xmm1
	movss	-112(%ebp), %xmm4
	movss	%xmm0, -124(%ebp)
	cvtsi2ssl	%edx, %xmm2
	movswl	-116(%ebp), %edx
	cvtsi2ssl	%edx, %xmm1
	movswl	-126(%ebp), %edx
	mulss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edx, %xmm1
	leal	(%ecx,%eax), %ebx
	subl	%ecx, %eax
	movl	-84(%ebp), %ecx
	mulss	%xmm2, %xmm1
	movl	%ebx, -112(%ebp)
	movl	-104(%ebp), %ebx
	movl	%ecx, 16(%esp)
	movl	-76(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	-80(%ebp), %ecx
	mulss	%xmm0, %xmm1
	movl	%ecx, 8(%esp)
	movl	-72(%ebp), %ecx
	movl	%ecx, 4(%esp)
	mulss	%xmm4, %xmm1
	cvttss2sil	%xmm1, %edx
	subl	%edx, %ebx
	addl	-104(%ebp), %edx
	movl	%edx, (%esp)
	movl	-112(%ebp), %ecx
	movl	%ebx, %edx
	call	__Z19polymost_lintersectiiiiiiii
	movss	-124(%ebp), %xmm0
	testl	%eax, %eax
	je	L1795
L1798:
	movl	-80(%ebp), %edx
	movl	-72(%ebp), %ecx
	movss	%xmm0, -104(%ebp)
	subl	-84(%ebp), %edx
	subl	-76(%ebp), %ecx
	call	@gethiq16angle@8
	movswl	28(%esi), %ecx
	addl	$100663296, %eax
	andl	$134217727, %eax
	sall	$16, %ecx
	movl	%eax, %edx
	movl	%eax, %ebx
	call	@getq16angledelta@8
	xorps	%xmm1, %xmm1
	movss	-104(%ebp), %xmm0
	movss	LC41, %xmm2
	movl	%eax, %edx
	negl	%eax
	cmovs	%edx, %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm0, %xmm1
	comiss	%xmm1, %xmm2
	jb	L1795
	movl	-68(%ebp), %eax
	testl	%eax, %eax
	jne	L1849
	jmp	L1801
L2035:
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
	jmp	L1814
L1783:
	movl	-56(%ebp), %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	leal	(%ebx,%ecx), %edx
	sarl	%edx
	movl	%edx, -108(%ebp)
	jmp	L1782
L2031:
	movl	$1028, %eax
	movl	$1029, %edx
	cmpl	$1028, _culledface
	cmove	%edx, %eax
	jmp	L2016
L1860:
	movl	%eax, %edx
	jmp	L1825
L2033:
	cmpl	$1028, _culledface
	movl	$1029, %edx
	movl	$1028, %eax
	cmove	%edx, %eax
	movl	%eax, _culledface
	movl	%eax, (%esp)
	call	*_glad_glCullFace
	subl	$4, %esp
	jmp	L1841
L1761:
	movl	$256, %eax
	call	__Z13handle_memerri
L2036:
	movl	$24, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	_polymer_texinvalidate
	.def	_polymer_texinvalidate;	.scl	2;	.type	32;	.endef
_polymer_texinvalidate:
LFB129:
	.cfi_startproc
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2039:
	movl	_prsprites(,%eax,4), %edx
	testl	%edx, %edx
	je	L2038
	movl	$-559038737, 252(%edx)
L2038:
	addl	$1, %eax
	cmpl	$16384, %eax
	jne	L2039
	movzwl	_numsectors, %eax
	testw	%ax, %ax
	je	L2037
	movswl	%ax, %edx
	leal	-1(%edx), %eax
	movl	_prsectors-4(,%edx,4), %edx
	testl	%edx, %edx
	je	L2037
	.p2align 5
	.p2align 4
	.p2align 3
L2041:
	subl	$1, %eax
	movl	_prsectors+4(,%eax,4), %edx
	orb	$4, 560(%edx)
	testl	%eax, %eax
	jns	L2041
	movswl	_numwalls, %eax
	subl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2042:
	subl	$1, %eax
	movl	_prwalls+4(,%eax,4), %edx
	orb	$4, 796(%edx)
	testl	%eax, %eax
	jns	L2042
L2037:
	ret
	.cfi_endproc
LFE129:
	.globl	_glad_glBufferSubData
	.bss
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
	.globl	_prindexring
	.align 4
_prindexring:
	.space 4
	.globl	_mapvbousage
	.section .rdata,"dr"
	.align 4
_mapvbousage:
	.long	35040
	.globl	_prwalldataoffset
	.bss
	.align 4
_prwalldataoffset:
	.space 4
	.globl	_culledface
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
	.globl	_prindexringvbo
	.align 4
_prindexringvbo:
	.space 4
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
	.globl	_artskydata
	.bss
	.align 32
_artskydata:
	.space 128
	.globl	_glad_glTexImage3D
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
	.globl	_skyboxdatavbo
	.bss
	.align 4
_skyboxdatavbo:
	.space 4
	.globl	_prtess
	.align 4
_prtess:
	.space 4
	.section .rdata,"dr"
	.align 16
LC2:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC3:
	.long	1056964608
	.align 16
LC5:
	.long	0
	.long	0
	.long	1
	.long	0
	.set	LC6,LC2
	.align 4
LC7:
	.long	1065353216
	.align 4
LC8:
	.long	-1082130432
	.align 4
LC9:
	.long	1008981770
	.align 4
LC13:
	.long	931135488
	.align 4
LC14:
	.long	1067645315
	.align 4
LC15:
	.long	986255323
	.align 4
LC16:
	.long	1061158912
	.align 4
LC17:
	.long	1143142787
	.align 4
LC18:
	.long	1043595264
	.align 8
LC31:
	.long	1413754136
	.long	1071194619
	.align 4
LC34:
	.long	1118437376
	.align 4
LC35:
	.long	1126825984
	.align 4
LC38:
	.long	1045220557
	.align 4
LC39:
	.long	1048576000
	.align 4
LC41:
	.long	1083179008
	.align 4
LC43:
	.long	1113927392
	.align 4
LC45:
	.long	-1115684864
	.def	___udivdi3;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	__ZL9heapAllocPvj.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZL11heapReallocPvS_j.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__ZL8heapFreePvS_.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_polymer_freeboard.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_initrendertargets.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_tanf;	.scl	2;	.type	32;	.endef
	.def	__Z22buildgl_setPerspectiveffff;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_setViewportiiii;	.scl	2;	.type	32;	.endef
	.def	_inthash_find;	.scl	2;	.type	32;	.endef
	.def	_inthash_add;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj;	.scl	2;	.type	32;	.endef
	.def	__Z18buildgl_bindBufferjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatesector.part.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_updatewall.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_engineLoadMHK.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_enet_gettime.constprop.0.isra.0;	.scl	2;	.type	32;	.endef
	.def	__Z28buildgl_resetStateAccountingv;	.scl	2;	.type	32;	.endef
	.def	_sincosf;	.scl	2;	.type	32;	.endef
	.def	_inthash_init;	.scl	2;	.type	32;	.endef
	.def	__Z19buildgl_bindTexturejj;	.scl	2;	.type	32;	.endef
	.def	__Z27buildgl_resetSamplerObjectsv;	.scl	2;	.type	32;	.endef
	.def	__Z21polymost_initdrawpolyv;	.scl	2;	.type	32;	.endef
	.def	_polymer_getbuildmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_bindmaterial.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z25buildgl_bindSamplerObjectii;	.scl	2;	.type	32;	.endef
	.def	_calc_and_apply_fog;	.scl	2;	.type	32;	.endef
	.def	_handle_blend;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawmdsprite.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_XXH3_mul128_fold64.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_computeplane.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_planeinlight.isra.0;	.scl	2;	.type	32;	.endef
	.def	_polymer_drawplane.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	_animateoffs;	.scl	2;	.type	32;	.endef
	.def	_polymer_addplanelight.lto_priv.0;	.scl	2;	.type	32;	.endef
	.def	__Z30polymost_checkornamentedspriteP11tspritetypePsP16wallspriteinfo_t;	.scl	2;	.type	32;	.endef
	.def	@gethiq16angle@8;	.scl	2;	.type	32;	.endef
	.def	@getq16angledelta@8;	.scl	2;	.type	32;	.endef
	.def	_atan2f;	.scl	2;	.type	32;	.endef
	.def	__Z19polymost_lintersectiiiiiiii;	.scl	2;	.type	32;	.endef
