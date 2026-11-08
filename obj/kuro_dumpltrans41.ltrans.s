	.file	"<artificial>"
	.text
	.p2align 4
	.def	__ZL13MV_FreeHandleP9VoiceNode;	.scl	3;	.type	32;	.endef
__ZL13MV_FreeHandleP9VoiceNode:
LFB0:
	.cfi_startproc
	movl	116(%eax), %edx
	testl	%edx, %edx
	jle	L1
	movl	__ZL10MV_Handles.lto_priv.0, %ecx
	movl	$0, -4(%ecx,%edx,4)
	movl	4(%eax), %ecx
	movl	(%eax), %edx
	movl	$0, 116(%eax)
	movl	$0, 96(%eax)
	movl	$0, 16(%eax)
	movb	$0, 64(%eax)
	movl	%edx, (%ecx)
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	$_VoicePool, (%eax)
	movl	_VoicePool+4, %edx
	movl	%edx, 4(%eax)
	movl	%eax, (%edx)
	movl	%eax, _VoicePool+4
L1:
	ret
	.cfi_endproc
LFE0:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin0tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin0tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin0tt.lto_priv.0:
LFB1:
	.cfi_startproc
	movzwl	4(%esp), %edx
	movl	%edx, %eax
	shrw	$9, %ax
	testb	$1, %dh
	je	L5
	notl	%edx
	movzbl	%dl, %edx
	movzwl	__ZL9logsinrom(%edx,%edx), %edx
L6:
	movzwl	8(%esp), %ecx
	leal	(%edx,%ecx,8), %ecx
	movl	$8191, %edx
	cmpl	%edx, %ecx
	cmova	%edx, %ecx
	andl	$1, %eax
	negl	%eax
	movzbl	%cl, %edx
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%edx,%edx), %edx
	addl	%edx, %edx
	sarl	%cl, %edx
	xorl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L5:
	movzbl	%dl, %edx
	movzwl	__ZL9logsinrom(%edx,%edx), %edx
	jmp	L6
	.cfi_endproc
LFE1:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin1tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin1tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin1tt.lto_priv.0:
LFB2:
	.cfi_startproc
	movzwl	4(%esp), %eax
	movl	$4096, %edx
	testb	$2, %ah
	jne	L8
	testb	$1, %ah
	je	L9
	notl	%eax
	movzbl	%al, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %edx
L8:
	movzwl	8(%esp), %eax
	leal	(%edx,%eax,8), %ecx
	movl	$8191, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movzbl	%cl, %eax
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%eax,%eax), %eax
	addl	%eax, %eax
	sarl	%cl, %eax
	ret
	.p2align 4,,10
	.p2align 3
L9:
	movzbl	%al, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %edx
	jmp	L8
	.cfi_endproc
LFE2:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin2tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin2tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin2tt.lto_priv.0:
LFB3:
	.cfi_startproc
	movzwl	4(%esp), %eax
	testb	$1, %ah
	je	L12
	notl	%eax
	movzbl	%al, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %eax
L13:
	movzwl	8(%esp), %edx
	leal	(%eax,%edx,8), %ecx
	movl	$8191, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movzbl	%cl, %eax
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%eax,%eax), %eax
	addl	%eax, %eax
	sarl	%cl, %eax
	ret
	.p2align 4,,10
	.p2align 3
L12:
	movzbl	%al, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %eax
	jmp	L13
	.cfi_endproc
LFE3:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin3tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin3tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin3tt.lto_priv.0:
LFB4:
	.cfi_startproc
	movzwl	4(%esp), %eax
	movl	$4096, %edx
	testb	$1, %ah
	jne	L15
	movzbl	%al, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %edx
L15:
	movzwl	8(%esp), %eax
	leal	(%edx,%eax,8), %ecx
	movl	$8191, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movzbl	%cl, %eax
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%eax,%eax), %eax
	addl	%eax, %eax
	sarl	%cl, %eax
	ret
	.cfi_endproc
LFE4:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin4tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin4tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin4tt.lto_priv.0:
LFB5:
	.cfi_startproc
	movzwl	4(%esp), %edx
	movl	%edx, %eax
	andw	$768, %ax
	cmpw	$256, %ax
	je	L21
	xorl	%eax, %eax
	testb	$2, %dh
	je	L18
	movl	$4096, %edx
	jmp	L19
	.p2align 4,,10
	.p2align 3
L21:
	movl	$-1, %eax
L18:
	movl	%edx, %ecx
	andw	$1023, %cx
	andl	$128, %edx
	jne	L23
	leal	(%ecx,%ecx), %edx
	andl	$254, %edx
	movzwl	__ZL9logsinrom(%edx,%edx), %edx
L19:
	movzwl	8(%esp), %ecx
	leal	(%edx,%ecx,8), %ecx
	movl	$8191, %edx
	cmpl	%edx, %ecx
	cmova	%edx, %ecx
	movzbl	%cl, %edx
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%edx,%edx), %edx
	addl	%edx, %edx
	sarl	%cl, %edx
	xorl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
L23:
	xorb	$-1, %cl
	leal	(%ecx,%ecx), %edx
	andl	$254, %edx
	movzwl	__ZL9logsinrom(%edx,%edx), %edx
	jmp	L19
	.cfi_endproc
LFE5:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin5tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin5tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin5tt.lto_priv.0:
LFB6:
	.cfi_startproc
	movzwl	4(%esp), %eax
	movl	$4096, %edx
	testb	$2, %ah
	jne	L25
	movl	%eax, %edx
	andw	$1023, %dx
	testb	$-128, %al
	je	L26
	xorb	$-1, %dl
	leal	(%edx,%edx), %eax
	andl	$254, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %edx
L25:
	movzwl	8(%esp), %eax
	leal	(%edx,%eax,8), %ecx
	movl	$8191, %eax
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movzbl	%cl, %eax
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%eax,%eax), %eax
	addl	%eax, %eax
	sarl	%cl, %eax
	ret
	.p2align 4,,10
	.p2align 3
L26:
	leal	(%edx,%edx), %eax
	andl	$254, %eax
	movzwl	__ZL9logsinrom(%eax,%eax), %edx
	jmp	L25
	.cfi_endproc
LFE6:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin6tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin6tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin6tt.lto_priv.0:
LFB7:
	.cfi_startproc
	movzwl	8(%esp), %ecx
	movl	$8191, %eax
	sall	$3, %ecx
	cmpl	%eax, %ecx
	cmova	%eax, %ecx
	movzbl	%cl, %eax
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%eax,%eax), %eax
	addl	%eax, %eax
	sarl	%cl, %eax
	movl	%eax, %edx
	movzwl	4(%esp), %eax
	sall	$6, %eax
	sarw	$15, %ax
	xorl	%edx, %eax
	ret
	.cfi_endproc
LFE7:
	.p2align 4
	.globl	__ZL21OPL3_EnvelopeCalcSin7tt.lto_priv.0
	.def	__ZL21OPL3_EnvelopeCalcSin7tt.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL21OPL3_EnvelopeCalcSin7tt.lto_priv.0:
LFB8:
	.cfi_startproc
	movzwl	4(%esp), %edx
	xorl	%eax, %eax
	andw	$1023, %dx
	movl	%edx, %ecx
	notl	%ecx
	andw	$511, %cx
	testb	$2, 5(%esp)
	cmovne	%ecx, %edx
	movl	$-1, %ecx
	cmovne	%ecx, %eax
	movzwl	8(%esp), %ecx
	sall	$3, %edx
	movzwl	%dx, %edx
	leal	(%edx,%ecx,8), %ecx
	movl	$8191, %edx
	cmpl	%edx, %ecx
	cmova	%edx, %ecx
	movzbl	%cl, %edx
	shrl	$8, %ecx
	movzwl	__ZL6exprom(%edx,%edx), %edx
	addl	%edx, %edx
	sarl	%cl, %edx
	xorl	%edx, %eax
	ret
	.cfi_endproc
LFE8:
	.p2align 4
	.def	_oggpack_look;	.scl	3;	.type	32;	.endef
_oggpack_look:
LFB9:
	.cfi_startproc
	cmpl	$32, %edx
	ja	L51
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%edx, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	16(%eax), %esi
	movl	4(%eax), %ebx
	movl	(%eax), %edi
	leal	-4(%esi), %ebp
	leal	(%ebx,%edx), %edx
	cmpl	%ebp, %edi
	jl	L39
	leal	7(%edx), %ebp
	sarl	$3, %ebp
	subl	%ebp, %esi
	cmpl	%esi, %edi
	jg	L38
	testl	%edx, %edx
	je	L32
L39:
	movl	12(%eax), %edi
	movl	_mask(,%ecx,4), %esi
	movl	%ebx, %ecx
	movzbl	(%edi), %eax
	sarl	%cl, %eax
	cmpl	$8, %edx
	jle	L40
	movzbl	1(%edi), %ebp
	movl	$8, %ecx
	subl	%ebx, %ecx
	sall	%cl, %ebp
	orl	%ebp, %eax
	cmpl	$16, %edx
	jle	L40
	movzbl	2(%edi), %ebp
	movl	$16, %ecx
	subl	%ebx, %ecx
	sall	%cl, %ebp
	orl	%ebp, %eax
	cmpl	$24, %edx
	jle	L40
	movzbl	3(%edi), %ebp
	movl	$24, %ecx
	subl	%ebx, %ecx
	sall	%cl, %ebp
	orl	%ebp, %eax
	cmpl	$32, %edx
	jle	L40
	movzbl	4(%edi), %edx
	movl	%ebx, %ecx
	negl	%ecx
	sall	%cl, %edx
	orl	%edx, %eax
	.p2align 4
	.p2align 3
L40:
	andl	%esi, %eax
	movl	%eax, %edx
L32:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
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
L38:
	.cfi_restore_state
	movl	$-1, %edx
	jmp	L32
	.p2align 4,,10
	.p2align 3
L51:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE9:
	.p2align 4
	.def	__os_update_crc;	.scl	3;	.type	32;	.endef
__os_update_crc:
LFB10:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -20
	movl	%edx, %ebx
	movl	%esi, 12(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	cmpl	$7, %ecx
	jle	L53
	leal	-8(%ecx), %eax
	shrl	$3, %ecx
	movl	%ebp, 20(%esp)
	.cfi_offset 5, -8
	leal	-1(%ecx), %ebp
	movl	%eax, (%esp)
	movl	%ebp, 4(%esp)
	movl	%edi, 16(%esp)
	.cfi_offset 7, -12
	leal	(%edx,%ecx,8), %edi
	movl	%edx, %ecx
	movl	%esi, %edx
	.p2align 4
	.p2align 3
L54:
	movl	(%ecx), %eax
	addl	$8, %ecx
	bswap	%eax
	xorl	%eax, %edx
	movl	%edx, %eax
	movzbl	%dl, %esi
	movzbl	%dh, %ebp
	shrl	$16, %edx
	shrl	$24, %eax
	movzbl	%dl, %edx
	movl	_crc_lookup+7168(,%eax,4), %eax
	xorl	_crc_lookup+4096(,%esi,4), %eax
	movzbl	-4(%ecx), %esi
	xorl	_crc_lookup+3072(,%esi,4), %eax
	movzbl	-3(%ecx), %esi
	xorl	_crc_lookup+2048(,%esi,4), %eax
	movzbl	-2(%ecx), %esi
	xorl	_crc_lookup+1024(,%esi,4), %eax
	movzbl	-1(%ecx), %esi
	xorl	_crc_lookup(,%esi,4), %eax
	xorl	_crc_lookup+6144(,%edx,4), %eax
	xorl	_crc_lookup+5120(,%ebp,4), %eax
	movl	%eax, %edx
	cmpl	%edi, %ecx
	jne	L54
	movl	4(%esp), %ebp
	movl	(%esp), %ecx
	movl	%eax, %esi
	movl	16(%esp), %edi
	.cfi_restore 7
	sall	$3, %ebp
	leal	8(%ebx,%ebp), %ebx
	subl	%ebp, %ecx
	movl	20(%esp), %ebp
	.cfi_restore 5
L53:
	testl	%ecx, %ecx
	je	L52
	leal	(%ebx,%ecx), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L56:
	movzbl	(%ebx), %ecx
	movl	%esi, %eax
	shrl	$24, %esi
	addl	$1, %ebx
	sall	$8, %eax
	xorl	%ecx, %esi
	xorl	_crc_lookup(,%esi,4), %eax
	movl	%eax, %esi
	cmpl	%edx, %ebx
	jne	L56
L52:
	movl	%esi, %eax
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$24, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE10:
	.p2align 4
	.def	_mdct_butterfly_16;	.scl	3;	.type	32;	.endef
_mdct_butterfly_16:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	movss	4(%eax), %xmm3
	movss	(%eax), %xmm5
	movss	36(%eax), %xmm1
	movss	32(%eax), %xmm4
	movaps	%xmm3, %xmm0
	movaps	%xmm5, %xmm2
	subss	%xmm4, %xmm2
	subss	%xmm1, %xmm0
	addss	%xmm1, %xmm3
	addss	%xmm4, %xmm5
	movss	LC0, %xmm1
	movaps	%xmm0, %xmm7
	subss	%xmm2, %xmm0
	addss	%xmm2, %xmm7
	movss	12(%eax), %xmm2
	movss	%xmm3, 48(%esp)
	movss	8(%eax), %xmm3
	movss	%xmm5, 52(%esp)
	movss	16(%eax), %xmm5
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm4
	mulss	%xmm1, %xmm7
	movss	%xmm0, 44(%esp)
	movss	44(%eax), %xmm0
	subss	%xmm0, %xmm4
	addss	%xmm0, %xmm2
	movss	%xmm4, 56(%esp)
	movss	40(%eax), %xmm4
	movss	%xmm2, 36(%esp)
	movaps	%xmm4, %xmm6
	addss	%xmm3, %xmm4
	subss	%xmm3, %xmm6
	movss	20(%eax), %xmm3
	movss	%xmm4, 40(%esp)
	movss	52(%eax), %xmm4
	movss	%xmm6, 24(%esp)
	movss	48(%eax), %xmm6
	movaps	%xmm6, %xmm2
	addss	%xmm5, %xmm6
	subss	%xmm5, %xmm2
	movss	%xmm6, 32(%esp)
	movss	28(%eax), %xmm6
	movaps	%xmm2, %xmm0
	movaps	%xmm4, %xmm2
	addss	%xmm3, %xmm4
	subss	%xmm3, %xmm2
	movaps	%xmm0, %xmm5
	movss	56(%eax), %xmm3
	movss	%xmm4, 28(%esp)
	subss	%xmm2, %xmm5
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm5, %xmm4
	movaps	%xmm3, %xmm5
	mulss	%xmm1, %xmm4
	movss	60(%eax), %xmm1
	addss	24(%eax), %xmm3
	subss	24(%eax), %xmm5
	movaps	%xmm1, %xmm2
	addss	%xmm6, %xmm1
	subss	%xmm6, %xmm2
	movss	%xmm1, 60(%esp)
	movss	56(%esp), %xmm1
	movaps	%xmm1, %xmm6
	addss	%xmm5, %xmm6
	subss	%xmm1, %xmm5
	movaps	%xmm7, %xmm1
	addss	%xmm4, %xmm1
	subss	%xmm7, %xmm4
	movaps	%xmm0, %xmm7
	movss	%xmm6, 20(%esp)
	movss	24(%esp), %xmm6
	movss	%xmm1, 16(%esp)
	movss	44(%esp), %xmm1
	movss	%xmm4, 56(%esp)
	movaps	%xmm2, %xmm4
	addss	%xmm6, %xmm2
	addss	%xmm1, %xmm0
	subss	%xmm6, %xmm4
	subss	%xmm1, %xmm7
	movss	52(%esp), %xmm1
	movss	%xmm0, 24(%esp)
	movss	40(%esp), %xmm0
	movss	%xmm7, 12(%esp)
	movaps	%xmm4, %xmm7
	movaps	%xmm3, %xmm4
	movaps	%xmm0, %xmm6
	subss	%xmm0, %xmm4
	addss	%xmm3, %xmm6
	movaps	%xmm1, %xmm3
	movaps	%xmm4, %xmm0
	movss	36(%esp), %xmm4
	movss	%xmm6, 44(%esp)
	movss	32(%esp), %xmm6
	addss	%xmm6, %xmm3
	subss	%xmm1, %xmm6
	movss	%xmm6, 40(%esp)
	movss	28(%esp), %xmm6
	movss	%xmm3, 52(%esp)
	movss	48(%esp), %xmm3
	movaps	%xmm6, %xmm1
	subss	%xmm3, %xmm1
	addss	%xmm6, %xmm3
	movss	%xmm1, 48(%esp)
	movss	60(%esp), %xmm1
	movss	%xmm3, 32(%esp)
	movss	12(%esp), %xmm3
	subss	%xmm4, %xmm1
	movaps	%xmm3, %xmm6
	addss	%xmm5, %xmm6
	subss	%xmm3, %xmm5
	movss	%xmm1, 36(%esp)
	movss	60(%esp), %xmm1
	addss	%xmm4, %xmm1
	movaps	%xmm7, %xmm4
	addss	56(%esp), %xmm7
	subss	56(%esp), %xmm4
	movaps	%xmm5, %xmm3
	movss	24(%esp), %xmm5
	unpcklps	%xmm7, %xmm3
	movss	%xmm4, 60(%esp)
	movss	60(%esp), %xmm7
	movaps	%xmm6, %xmm4
	movss	20(%esp), %xmm6
	unpcklps	%xmm7, %xmm4
	movss	16(%esp), %xmm7
	movlhps	%xmm3, %xmm4
	movups	%xmm4, (%eax)
	movaps	%xmm6, %xmm4
	subss	%xmm7, %xmm4
	addss	%xmm7, %xmm6
	movaps	%xmm4, %xmm3
	movaps	%xmm2, %xmm4
	addss	%xmm5, %xmm2
	subss	%xmm5, %xmm4
	unpcklps	%xmm2, %xmm6
	unpcklps	%xmm4, %xmm3
	movlhps	%xmm6, %xmm3
	movups	%xmm3, 16(%eax)
	movss	48(%esp), %xmm4
	movss	36(%esp), %xmm7
	movss	40(%esp), %xmm5
	movss	32(%esp), %xmm6
	movaps	%xmm7, %xmm3
	movaps	%xmm4, %xmm2
	subss	%xmm5, %xmm3
	addss	%xmm0, %xmm2
	addss	%xmm7, %xmm5
	subss	%xmm4, %xmm0
	movss	44(%esp), %xmm7
	unpcklps	%xmm3, %xmm2
	movaps	%xmm7, %xmm3
	unpcklps	%xmm5, %xmm0
	movss	52(%esp), %xmm5
	movlhps	%xmm0, %xmm2
	movups	%xmm2, 32(%eax)
	movaps	%xmm1, %xmm2
	subss	%xmm5, %xmm3
	addss	%xmm5, %xmm7
	movaps	%xmm6, %xmm5
	addss	%xmm1, %xmm5
	subss	%xmm6, %xmm2
	movaps	%xmm7, %xmm0
	movaps	%xmm3, %xmm1
	unpcklps	%xmm5, %xmm0
	unpcklps	%xmm2, %xmm1
	movlhps	%xmm0, %xmm1
	movups	%xmm1, 48(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.p2align 4
	.def	_icomp;	.scl	3;	.type	32;	.endef
_icomp:
LFB13:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	movl	(%eax), %eax
	movl	(%edx), %edx
	movl	(%eax), %eax
	subl	(%edx), %eax
	ret
	.cfi_endproc
LFE13:
	.p2align 4
	.def	_local_book_besterror;	.scl	3;	.type	32;	.endef
_local_book_besterror:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorps	%xmm0, %xmm0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$112, %esp
	.cfi_offset 3, -20
	movl	(%eax), %eax
	movl	52(%esi), %edi
	movl	%edx, 36(%esp)
	movl	%eax, 12(%esp)
	movl	48(%esi), %eax
	movl	%edi, 44(%esp)
	movl	%eax, 16(%esp)
	movl	44(%esi), %eax
	movups	%xmm0, 48(%esp)
	movl	%eax, 40(%esp)
	sarl	%eax
	movl	%eax, 32(%esp)
	movups	%xmm0, 64(%esp)
	cmpl	$1, %edi
	je	L118
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	jle	L68
	movl	44(%esp), %eax
	leal	48(%esp), %ebx
	movl	%esi, 4(%esp)
	xorl	%edi, %edi
	movl	%ebx, 20(%esp)
	movl	16(%esp), %esi
	sarl	%eax
	movl	%eax, 24(%esp)
	movl	40(%esp), %eax
	subl	$1, %eax
	movl	%eax, 8(%esp)
	jmp	L73
	.p2align 4,,10
	.p2align 3
L120:
	subl	%eax, %ebx
	leal	-1(%ebx,%ebx), %edx
L70:
	imull	40(%esp), %edi
	testl	%edx, %edx
	js	L71
	leal	(%edi,%edx), %ebx
	addl	8(%esp), %edi
	cmpl	%edx, 40(%esp)
	movl	%ebx, 28(%esp)
	cmovg	28(%esp), %edi
L71:
	imull	44(%esp), %eax
	movl	20(%esp), %ebx
	addl	%esi, %eax
	movl	%eax, (%ebx,%ecx,4)
	testl	%ecx, %ecx
	je	L119
L73:
	movl	36(%esp), %ebx
	subl	$1, %ecx
	movl	24(%esp), %eax
	addl	(%ebx,%ecx,4), %eax
	movl	32(%esp), %ebx
	subl	%esi, %eax
	cltd
	idivl	44(%esp)
	cmpl	%eax, %ebx
	jg	L120
	movl	%eax, %edx
	subl	32(%esp), %edx
	addl	%edx, %edx
	jmp	L70
	.p2align 4,,10
	.p2align 3
L119:
	movl	4(%esp), %esi
L74:
	movl	12(%esi), %eax
	movl	8(%eax), %eax
	movl	%eax, 32(%esp)
	cmpb	$0, (%eax,%edi)
	jne	L85
	movl	4(%esi), %eax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%esp)
	movl	%eax, 28(%esp)
	movups	%xmm0, 96(%esp)
	testl	%eax, %eax
	jle	L85
L81:
	movl	40(%esp), %ebx
	movl	%edi, 8(%esp)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	32(%esp), %edi
	movl	$-1, 40(%esp)
	subl	$1, %ebx
	imull	44(%esp), %ebx
	addl	16(%esp), %ebx
	cmpb	$0, (%edi,%ecx)
	jne	L121
	.p2align 4
	.p2align 3
L88:
	xorl	%esi, %esi
	cmpl	%eax, %ebx
	jg	L93
	leal	80(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L94:
	addl	$1, %esi
	movl	(%edx,%esi,4), %eax
	movl	$0, -4(%edx,%esi,4)
	cmpl	%ebx, %eax
	jge	L94
L93:
	movl	44(%esp), %edi
	leal	(%edi,%eax), %edx
	testl	%eax, %eax
	jns	L96
	movl	80(%esp,%esi,4), %edx
L96:
	negl	%edx
	addl	$1, %ecx
	movl	%edx, 80(%esp,%esi,4)
	cmpl	28(%esp), %ecx
	je	L116
	movl	32(%esp), %edi
	movl	80(%esp), %eax
	cmpb	$0, (%edi,%ecx)
	je	L88
L121:
	movl	12(%esp), %edx
	xorl	%edi, %edi
	testl	%edx, %edx
	jle	L89
	movl	%eax, 24(%esp)
	xorl	%esi, %esi
	leal	80(%esp), %edx
	movl	%ebx, 20(%esp)
	movl	36(%esp), %ebx
	movl	%ecx, 16(%esp)
	movl	12(%esp), %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L90:
	movl	(%edx,%esi,4), %eax
	subl	(%ebx,%esi,4), %eax
	addl	$1, %esi
	imull	%eax, %eax
	addl	%eax, %edi
	cmpl	%esi, %ecx
	jne	L90
	movl	24(%esp), %eax
	movl	20(%esp), %ebx
	movl	16(%esp), %ecx
L89:
	movl	40(%esp), %edx
	cmpl	$-1, %edx
	je	L104
	cmpl	%edi, %edx
	jle	L88
L104:
	movl	80(%esp), %edx
	movl	%edi, 40(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 48(%esp)
	movl	84(%esp), %edx
	movl	%edx, 52(%esp)
	movl	88(%esp), %edx
	movl	%edx, 56(%esp)
	movl	92(%esp), %edx
	movl	%edx, 60(%esp)
	movl	96(%esp), %edx
	movl	%edx, 64(%esp)
	movl	100(%esp), %edx
	movl	%edx, 68(%esp)
	movl	104(%esp), %edx
	movl	%edx, 72(%esp)
	movl	108(%esp), %edx
	movl	%edx, 76(%esp)
	jmp	L88
	.p2align 4,,10
	.p2align 3
L116:
	movl	8(%esp), %edi
L85:
	testl	%edi, %edi
	js	L64
	movl	12(%esp), %esi
	testl	%esi, %esi
	jle	L64
	movl	36(%esp), %edx
	xorl	%eax, %eax
	leal	48(%esp), %ebx
	.p2align 4
	.p2align 4
	.p2align 3
L99:
	movl	(%ebx,%eax,4), %ecx
	subl	%ecx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L99
L64:
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
	ret
	.p2align 4,,10
	.p2align 3
L118:
	.cfi_restore_state
	movl	40(%esp), %ecx
	movl	12(%esp), %eax
	xorl	%edi, %edi
	leal	48(%esp), %ebx
	subl	$1, %ecx
	movl	%eax, %edx
	movl	%ecx, 24(%esp)
	testl	%eax, %eax
	jle	L122
	movl	%ebx, 28(%esp)
	movl	32(%esp), %ebx
	movl	%esi, 20(%esp)
	jmp	L66
	.p2align 4,,10
	.p2align 3
L124:
	movl	%ebx, %esi
	subl	%eax, %esi
	leal	-1(%esi,%esi), %eax
L76:
	imull	40(%esp), %edi
	testl	%eax, %eax
	js	L77
	leal	(%edi,%eax), %esi
	addl	24(%esp), %edi
	cmpl	%eax, 40(%esp)
	movl	%esi, 32(%esp)
	cmovg	32(%esp), %edi
L77:
	movl	28(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
	testl	%edx, %edx
	je	L123
L66:
	movl	36(%esp), %eax
	subl	$1, %edx
	movl	(%eax,%edx,4), %ecx
	movl	%ecx, %eax
	subl	16(%esp), %eax
	cmpl	%eax, %ebx
	jg	L124
	subl	%ebx, %eax
	addl	%eax, %eax
	jmp	L76
L123:
	movl	20(%esp), %esi
	jmp	L74
L68:
	movl	12(%esi), %eax
	movl	8(%eax), %eax
	movl	%eax, 32(%esp)
	cmpb	$0, (%eax)
	jne	L79
	movl	4(%esi), %eax
	movups	%xmm0, 80(%esp)
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jle	L79
	movups	%xmm0, 96(%esp)
	xorl	%edi, %edi
	jmp	L81
L79:
	xorl	%edi, %edi
	jmp	L64
L122:
	movl	12(%esi), %eax
	movl	8(%eax), %eax
	movl	%eax, 32(%esp)
	cmpb	$0, (%eax)
	jne	L79
	movl	4(%esi), %eax
	movups	%xmm0, 80(%esp)
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jle	L79
	movups	%xmm0, 96(%esp)
	jmp	L81
	.cfi_endproc
LFE14:
	.p2align 4
	.def	__bitreverse;	.scl	3;	.type	32;	.endef
__bitreverse:
LFB15:
	.cfi_startproc
	bswap	%eax
	movl	%eax, %edx
	shrl	$4, %eax
	sall	$4, %edx
	andl	$252645135, %eax
	andl	$-252645136, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	sall	$2, %eax
	shrl	$2, %edx
	andl	$-858993460, %eax
	andl	$858993459, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	addl	%edx, %edx
	shrl	%eax
	andl	$-1431655766, %edx
	andl	$1431655765, %eax
	orl	%edx, %eax
	ret
	.cfi_endproc
LFE15:
	.def	_bitreverse;	.scl	3;	.type	32;	.endef
	.set	_bitreverse,__bitreverse
	.p2align 4
	.def	_decode_packed_entry_number;	.scl	3;	.type	32;	.endef
_decode_packed_entry_number:
LFB16:
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
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	36(%eax), %edx
	movl	%eax, (%esp)
	movl	%ebp, %eax
	call	_oggpack_look
	testl	%eax, %eax
	js	L127
	movl	32(%esi), %edx
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	jns	L128
	movl	8(%esi), %esi
	movl	%eax, %ebx
	andl	$32767, %eax
	sarl	$15, %ebx
	movl	%esi, 4(%esp)
	andl	$32767, %ebx
	subl	%eax, %esi
L129:
	movl	(%esp), %eax
	movl	40(%eax), %edi
	movl	%ebp, %eax
	movl	%edi, %edx
	call	_oggpack_look
	testl	%eax, %eax
	jns	L135
	cmpl	$1, %edi
	jle	L132
	.p2align 4
	.p2align 3
L133:
	subl	$1, %edi
	movl	%ebp, %eax
	movl	%edi, %edx
	call	_oggpack_look
	testl	%eax, %eax
	jns	L135
	cmpl	$1, %edi
	jne	L133
L132:
	testl	%eax, %eax
	js	L141
L135:
	movl	%esi, %ecx
	subl	%ebx, %ecx
	cmpl	$1, %ecx
	jle	L136
	call	__bitreverse
	movl	%edi, 4(%esp)
	movl	%eax, %edx
	movl	(%esp), %eax
	movl	%ebp, 8(%esp)
	movl	20(%eax), %eax
	movl	%eax, %ebp
	.p2align 6
	.p2align 4
	.p2align 3
L137:
	sarl	%ecx
	xorl	%edi, %edi
	leal	(%ecx,%ebx), %eax
	movl	0(%ebp,%eax,4), %eax
	cmpl	%eax, %edx
	cmovnb	%ecx, %edi
	addl	%edi, %ebx
	cmpl	%eax, %edx
	movl	$0, %eax
	cmovnb	%eax, %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	subl	%ebx, %ecx
	cmpl	$1, %ecx
	jg	L137
	movl	4(%esp), %edi
	movl	8(%esp), %ebp
L136:
	movl	(%esp), %eax
	movl	0(%ebp), %esi
	movl	16(%ebp), %ecx
	movl	28(%eax), %eax
	movzbl	(%eax,%ebx), %edx
	movl	4(%ebp), %eax
	cmpl	%edi, %edx
	jg	L138
	addl	%edx, %eax
	leal	7(%eax), %edx
	movl	%edx, %edi
	movl	%edx, (%esp)
	movl	%ecx, %edx
	sarl	$3, %edi
	subl	%edi, %edx
	cmpl	%esi, %edx
	jl	L143
	movl	(%esp), %edx
	testl	%eax, %eax
	movl	12(%ebp), %edi
	cmovns	%eax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	addl	%edx, %edi
	leal	(%edx,%esi), %ecx
L139:
	movl	%edi, 12(%ebp)
	movl	%ecx, 0(%ebp)
	movl	%eax, 4(%ebp)
L126:
	addl	$12, %esp
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
L127:
	.cfi_restore_state
	movl	(%esp), %eax
	xorl	%ebx, %ebx
	movl	8(%eax), %esi
	jmp	L129
	.p2align 4,,10
	.p2align 3
L143:
	xorl	%edi, %edi
	movl	$1, %eax
	jmp	L139
	.p2align 4,,10
	.p2align 3
L128:
	movl	(%esp), %ebx
	movl	0(%ebp), %edi
	movl	28(%ebx), %edx
	movl	16(%ebp), %ebx
	movzbl	-1(%edx,%eax), %edx
	addl	4(%ebp), %edx
	leal	7(%edx), %ecx
	movl	%ecx, %esi
	movl	%ecx, (%esp)
	movl	%ebx, %ecx
	sarl	$3, %esi
	subl	%esi, %ecx
	cmpl	%ecx, %edi
	jg	L142
	movl	(%esp), %ecx
	testl	%edx, %edx
	movl	12(%ebp), %esi
	cmovns	%edx, %ecx
	andl	$7, %edx
	sarl	$3, %ecx
	addl	%ecx, %esi
	leal	(%edi,%ecx), %ebx
L130:
	movl	%ebx, 0(%ebp)
	leal	-1(%eax), %ebx
	movl	%esi, 12(%ebp)
	movl	%ebx, %eax
	movl	%edx, 4(%ebp)
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
L142:
	.cfi_restore_state
	xorl	%esi, %esi
	movl	$1, %edx
	jmp	L130
L138:
	addl	%edi, %eax
	movl	%ecx, %ebx
	leal	7(%eax), %edx
	movl	%edx, %edi
	sarl	$3, %edi
	subl	%edi, %ebx
	cmpl	%esi, %ebx
	jl	L144
	testl	%eax, %eax
	movl	12(%ebp), %ebx
	cmovns	%eax, %edx
	andl	$7, %eax
	sarl	$3, %edx
	addl	%edx, %ebx
	leal	(%edx,%esi), %ecx
L140:
	movl	%ebx, 12(%ebp)
	movl	%ecx, 0(%ebp)
	movl	%eax, 4(%ebp)
L141:
	movl	$-1, %ebx
	jmp	L126
L144:
	xorl	%ebx, %ebx
	movl	$1, %eax
	jmp	L140
	.cfi_endproc
LFE16:
	.p2align 4
	.def	_vorbis_book_decodev_add;	.scl	3;	.type	32;	.endef
_vorbis_book_decodev_add:
LFB18:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -20
	movl	24(%esp), %ebx
	movl	8(%ebx), %edx
	testl	%edx, %edx
	jle	L153
	movl	36(%esp), %eax
	movl	%esi, 8(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	subl	$1, %eax
	movl	%eax, (%esp)
	movl	36(%esp), %eax
	testl	%eax, %eax
	jle	L171
	movl	%edi, 12(%esp)
	movl	%ebp, 16(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	.p2align 4
	.p2align 3
L154:
	movl	32(%esp), %edx
	movl	%ebx, %eax
	call	_decode_packed_entry_number
	cmpl	$-1, %eax
	je	L168
	cmpl	%esi, 36(%esp)
	jle	L170
	movl	(%ebx), %edx
	movl	16(%ebx), %ecx
	movl	(%esp), %ebp
	imull	%edx, %eax
	subl	%esi, %ebp
	leal	(%ecx,%eax,4), %edi
	movl	28(%esp), %eax
	leal	(%eax,%esi,4), %ecx
	xorl	%eax, %eax
	jmp	L156
	.p2align 5
	.p2align 4,,10
	.p2align 3
L157:
	movss	(%ecx,%eax,4), %xmm0
	addss	(%edi,%eax,4), %xmm0
	movss	%xmm0, (%ecx,%eax,4)
	cmpl	%ebp, %eax
	je	L170
	movl	(%ebx), %edx
	addl	$1, %eax
L156:
	cmpl	%edx, %eax
	jl	L157
	addl	%eax, %esi
	cmpl	%esi, 36(%esp)
	jg	L154
	.p2align 4
	.p2align 3
L170:
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
L153:
	movl	4(%esp), %ebx
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L168:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	8(%esp), %esi
	.cfi_restore 6
	movl	12(%esp), %edi
	.cfi_restore 7
	movl	16(%esp), %ebp
	.cfi_restore 5
	movl	4(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
L171:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	8(%esp), %esi
	.cfi_restore 6
	jmp	L153
	.cfi_endproc
LFE18:
	.p2align 4
	.def	_sort32a;	.scl	3;	.type	32;	.endef
_sort32a:
LFB20:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	setb	%al
	cmpl	%edx, %ecx
	sbbl	$0, %eax
	ret
	.cfi_endproc
LFE20:
	.p2align 4
	.globl	___tcfVoiceList.lto_priv.0
	.def	___tcfVoiceList.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfVoiceList.lto_priv.0:
LFB21:
	.cfi_startproc
	movl	_VoiceList+124, %eax
	testl	%eax, %eax
	je	L182
	lock subl	$1, (%eax)
	je	L185
L182:
	ret
	.p2align 4,,10
	.p2align 3
L185:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE21:
	.p2align 4
	.globl	___tcfVoicePool.lto_priv.0
	.def	___tcfVoicePool.lto_priv.0;	.scl	2;	.type	32;	.endef
___tcfVoicePool.lto_priv.0:
LFB27:
	.cfi_startproc
	movl	_VoicePool+124, %eax
	testl	%eax, %eax
	je	L195
	lock subl	$1, (%eax)
	je	L198
L195:
	ret
	.p2align 4,,10
	.p2align 3
L198:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE27:
	.p2align 4
	.def	__ZL15MV_CleanupVoiceP9VoiceNodeb.constprop.0;	.scl	3;	.type	32;	.endef
__ZL15MV_CleanupVoiceP9VoiceNodeb.constprop.0:
LFB29:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, 8(%esp)
	.cfi_offset 3, -12
	movl	%eax, %ebx
	movl	__ZL15MV_CallBackFunc.lto_priv.0, %eax
	testl	%eax, %eax
	je	L200
	movl	44(%ebx), %edx
	movl	%edx, (%esp)
	call	*%eax
L200:
	movzbl	64(%ebx), %eax
	cmpb	$6, %al
	je	L201
	ja	L202
	cmpb	$4, %al
	je	L203
	cmpb	$5, %al
	jne	L205
	movl	20(%ebx), %edx
	movl	$0, 84(%ebx)
	movl	$0, 20(%ebx)
	movl	12(%edx), %ebx
	testl	%ebx, %ebx
	je	L208
	movl	$0, 12(%edx)
	movl	%ebx, (%esp)
	movl	%edx, 4(%esp)
	call	_FLAC__stream_decoder_finish
	movl	%ebx, (%esp)
	call	_FLAC__stream_decoder_delete
	movl	4(%esp), %edx
L208:
	movl	24(%edx), %eax
	movl	_g_sm_heap, %ecx
	movl	$0, 24(%edx)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L219:
	movl	4(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L202:
	.cfi_restore_state
	cmpb	$7, %al
	jne	L205
	movl	%esi, 12(%esp)
	.cfi_offset 6, -8
	movl	20(%ebx), %esi
	movl	8(%esi), %eax
	cmpl	$1, 9836(%eax)
	jle	L209
	call	_xmp_end_player.part.0
	movl	8(%esi), %eax
L209:
	call	_xmp_release_module
	movl	_MV_LazyAlloc, %ecx
	testl	%ecx, %ecx
	je	L220
	movl	12(%esp), %esi
	.cfi_restore 6
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L205:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -12
	movl	$0, 20(%ebx)
	movl	$0, 84(%ebx)
L199:
	movl	8(%esp), %ebx
	addl	$16, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L203:
	.cfi_restore_state
	movl	20(%ebx), %edx
	leal	16(%edx), %eax
	movl	%edx, 4(%esp)
	call	_ov_clear.part.0
	movl	_MV_LazyAlloc, %eax
	testl	%eax, %eax
	jne	L199
	movl	$0, 20(%ebx)
	movl	$0, 84(%ebx)
	jmp	L219
	.p2align 4,,10
	.p2align 3
L201:
	movl	_MV_LazyAlloc, %eax
	testl	%eax, %eax
	jne	L199
	movl	20(%ebx), %eax
	movl	$0, 84(%ebx)
	movl	$0, 20(%ebx)
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	jmp	L199
	.p2align 4,,10
	.p2align 3
L220:
	.cfi_offset 6, -8
	movl	8(%esi), %eax
	movl	9836(%eax), %edx
	testl	%edx, %edx
	jle	L210
	movl	%eax, 4(%esp)
	call	_xmp_release_module
	movl	4(%esp), %eax
L210:
	movl	9796(%eax), %edx
	movl	_g_sm_heap, %ecx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	4(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	movl	_g_sm_heap, %ecx
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	$0, 20(%ebx)
	movl	$0, 84(%ebx)
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	movl	12(%esp), %esi
	.cfi_restore 6
	jmp	L199
	.cfi_endproc
LFE29:
	.section .rdata,"dr"
LC1:
	.ascii "PCM lockdepth < 0!\0"
	.align 4
LC2:
	.ascii "source/audiolib/include/multivoc.h\0"
	.text
	.p2align 4
	.def	__ZL12MV_StopVoiceP9VoiceNodeb.constprop.0;	.scl	3;	.type	32;	.endef
__ZL12MV_StopVoiceP9VoiceNodeb.constprop.0:
LFB38:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	call	__ZL15MV_CleanupVoiceP9VoiceNodeb.constprop.0
	movl	__tls_index, %esi
	movl	%fs:44, %ebx
	movl	(%ebx,%esi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L226
L222:
	movl	%edi, %eax
	call	__ZL13MV_FreeHandleP9VoiceNode
	movl	(%ebx,%esi,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L227
	js	L228
L221:
	addl	$16, %esp
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
L227:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+32(,%eax,8), %eax
	addl	$16, %esp
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
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L226:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	jmp	L222
	.p2align 4,,10
	.p2align 3
L228:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L221
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L221
	.cfi_endproc
LFE38:
	.p2align 4
	.def	_mdct_clear;	.scl	3;	.type	32;	.endef
_mdct_clear:
LFB43:
	.cfi_startproc
	testl	%eax, %eax
	je	L243
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L231
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L231:
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L232
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L232:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L243:
	ret
	.cfi_endproc
LFE43:
	.p2align 4
	.def	_drft_clear;	.scl	3;	.type	32;	.endef
_drft_clear:
LFB44:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L247
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L247:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L248
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L248:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE44:
	.p2align 4
	.def	_res0_free_info;	.scl	3;	.type	32;	.endef
_res0_free_info:
LFB45:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L256
	movl	%edx, (%esp)
	movl	$2840, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	16(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L256:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE45:
	.p2align 4
	.def	_floor1_free_info;	.scl	3;	.type	32;	.endef
_floor1_free_info:
LFB48:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L262
	movl	%edx, (%esp)
	movl	$1120, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	16(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L262:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE48:
	.p2align 4
	.def	_floor1_free_look;	.scl	3;	.type	32;	.endef
_floor1_free_look:
LFB50:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %edx
	testl	%edx, %edx
	je	L268
	movl	%edx, (%esp)
	movl	$1312, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	16(%esp), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L268:
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE50:
	.p2align 4
	.def	_floor1_inverse2;	.scl	3;	.type	32;	.endef
_floor1_inverse2:
LFB52:
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	28(%eax), %eax
	movl	4(%edx), %edx
	movl	28(%edx), %edx
	movl	(%edx,%eax,4), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 36(%esp)
	movl	16(%ebp), %eax
	testl	%eax, %eax
	je	L275
	movl	12(%ebp), %eax
	movl	$255, %edx
	movl	1296(%eax), %edi
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	imull	832(%edi), %eax
	movl	%edi, 24(%esp)
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	movl	%edx, %esi
	testl	%eax, %eax
	cmovns	%eax, %esi
	movl	12(%ebp), %eax
	xorl	%edi, %edi
	cmpl	$1, 1284(%eax)
	jle	L276
	movl	$1, 56(%esp)
	movl	%esi, 40(%esp)
	jmp	L286
	.p2align 6
	.p2align 4,,10
	.p2align 3
L277:
	movl	12(%ebp), %ecx
	addl	$1, 56(%esp)
	movl	56(%esp), %eax
	cmpl	%eax, 1284(%ecx)
	jle	L300
L286:
	movl	12(%ebp), %eax
	movl	56(%esp), %ebx
	movl	260(%eax,%ebx,4), %edx
	movl	16(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	cmpl	$32767, %eax
	ja	L277
	movl	24(%esp), %ebx
	imull	832(%ebx), %eax
	movl	836(%ebx,%edx,4), %ecx
	movl	$255, %edx
	movl	%ecx, %esi
	movl	%ecx, 32(%esp)
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovns	%eax, %edx
	subl	%edi, %ecx
	movl	%edx, %ebx
	subl	40(%esp), %ebx
	movl	%edx, 28(%esp)
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	leal	1(%eax), %edx
	movl	%eax, 48(%esp)
	subl	$1, %eax
	testl	%ebx, %ebx
	cmovns	%edx, %eax
	movl	%esi, %edx
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	cmpl	%esi, %eax
	cmovle	%eax, %edx
	cmpl	%edi, %edx
	jle	L280
	movl	20(%ebp), %eax
	movl	40(%esp), %esi
	movss	(%eax,%edi,4), %xmm0
	mulss	_FLOOR1_fromdB_LOOKUP(,%esi,4), %xmm0
	movss	%xmm0, (%eax,%edi,4)
L280:
	leal	1(%edi), %eax
	cmpl	%eax, %edx
	jle	L285
	movl	%ebx, %eax
	negl	%eax
	cmovns	%eax, %ebx
	movl	48(%esp), %eax
	imull	%ecx, %eax
	movl	%eax, %esi
	negl	%esi
	cmovns	%esi, %eax
	movl	40(%esp), %esi
	subl	%eax, %ebx
	movl	20(%ebp), %eax
	movl	%ebx, 52(%esp)
	leal	4(%eax,%edi,4), %eax
	movl	20(%ebp), %edi
	leal	(%edi,%edx,4), %edi
	xorl	%edx, %edx
	jmp	L283
	.p2align 6
	.p2align 4,,10
	.p2align 3
L301:
	subl	%ecx, %edx
	addl	44(%esp), %esi
L282:
	movss	(%eax), %xmm0
	addl	$4, %eax
	mulss	_FLOOR1_fromdB_LOOKUP(,%esi,4), %xmm0
	movss	%xmm0, -4(%eax)
	cmpl	%eax, %edi
	je	L285
L283:
	addl	52(%esp), %edx
	cmpl	%edx, %ecx
	jle	L301
	addl	48(%esp), %esi
	jmp	L282
	.p2align 4,,10
	.p2align 3
L285:
	movl	28(%esp), %eax
	movl	32(%esp), %edi
	movl	%eax, 40(%esp)
	jmp	L277
	.p2align 4,,10
	.p2align 3
L300:
	movl	40(%esp), %esi
L276:
	cmpl	%edi, 36(%esp)
	jle	L291
	movss	_FLOOR1_fromdB_LOOKUP(,%esi,4), %xmm2
	movl	36(%esp), %esi
	leal	-1(%esi), %eax
	subl	%edi, %eax
	cmpl	$2, %eax
	jbe	L298
	subl	%edi, %esi
	movl	20(%ebp), %eax
	movaps	%xmm2, %xmm1
	movl	%esi, %ecx
	movl	%esi, %ebx
	shufps	$0, %xmm1, %xmm1
	shrl	$2, %ecx
	leal	(%eax,%edi,4), %eax
	movl	%ecx, %edx
	sall	$4, %edx
	addl	%eax, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L290:
	movups	(%eax), %xmm0
	addl	$16, %eax
	mulps	%xmm1, %xmm0
	movups	%xmm0, -16(%eax)
	cmpl	%edx, %eax
	jne	L290
	sall	$2, %ecx
	cmpl	%ecx, %ebx
	je	L291
	movl	20(%ebp), %eax
	movl	36(%esp), %edx
	addl	%ecx, %edi
L292:
	movss	(%eax,%edi,4), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, (%eax,%edi,4)
	addl	$1, %edi
	cmpl	%edi, %edx
	jg	L292
L291:
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
L275:
	.cfi_restore_state
	movl	36(%esp), %eax
	movl	$0, 4(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
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
L298:
	.cfi_restore_state
	movl	20(%ebp), %eax
	movl	36(%esp), %edx
	jmp	L292
	.cfi_endproc
LFE52:
	.p2align 4
	.def	_floor0_free_info;	.scl	3;	.type	32;	.endef
_floor0_free_info:
LFB54:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L302
	movl	$0, 80(%eax)
	xorl	%edx, %edx
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
L304:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	$80, %edx
	jb	L304
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
L302:
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE54:
	.p2align 4
	.def	_floor0_free_look;	.scl	3;	.type	32;	.endef
_floor0_free_look:
LFB56:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	12(%esp), %ebx
	testl	%ebx, %ebx
	je	L311
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L313
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L314
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	8(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L314:
	movl	4(%eax), %edx
	testl	%edx, %edx
	je	L315
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	movl	8(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L315:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L313:
	movl	$0, (%ebx)
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	movl	$0, 28(%ebx)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L311:
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE56:
	.p2align 4
	.def	_res0_free_look;	.scl	3;	.type	32;	.endef
_res0_free_look:
LFB57:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	movl	16(%esp), %ebx
	testl	%ebx, %ebx
	je	L329
	movl	%esi, 8(%esp)
	.cfi_offset 6, -8
	movl	4(%ebx), %ecx
	movl	20(%ebx), %edx
	testl	%ecx, %ecx
	jle	L331
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L333:
	movl	(%edx,%esi,4), %eax
	testl	%eax, %eax
	je	L332
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	20(%ebx), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L332:
	addl	$1, %esi
	cmpl	4(%ebx), %esi
	jl	L333
L331:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	24(%ebx), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	jle	L334
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L335:
	movl	28(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax,%esi,4), %eax
	addl	$1, %esi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	cmpl	24(%ebx), %esi
	jl	L335
L334:
	movl	28(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	$0, 28(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 40(%ebx)
L336:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L336
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	8(%esp), %esi
	.cfi_restore 6
L329:
	movl	4(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE57:
	.p2align 4
	.def	_vorbis_book_clear;	.scl	3;	.type	32;	.endef
_vorbis_book_clear:
LFB59:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 12
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L349
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L349:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L350
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L350:
	movl	24(%ebx), %eax
	testl	%eax, %eax
	je	L351
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L351:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	je	L352
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L352:
	movl	32(%ebx), %eax
	testl	%eax, %eax
	je	L353
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 8
	subl	$4, %esp
	.cfi_def_cfa_offset 12
L353:
	movl	$0, 40(%ebx)
	xorl	%eax, %eax
	movl	$0, 44(%ebx)
	movl	$0, 48(%ebx)
	movl	$0, 52(%ebx)
L354:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L354
	addl	$4, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE59:
	.p2align 4
	.def	_oggpack_write;	.scl	3;	.type	32;	.endef
_oggpack_write:
LFB60:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -16
	movl	%eax, %ebx
	cmpl	$32, %ecx
	jg	L374
	movl	%edi, 20(%esp)
	.cfi_offset 7, -8
	movl	%edx, %edi
	movl	%ecx, %edx
	movl	%esi, 16(%esp)
	.cfi_offset 6, -12
	movl	16(%eax), %eax
	movl	12(%ebx), %esi
	leal	-4(%eax), %ecx
	cmpl	%ecx, (%ebx)
	jl	L375
	testl	%esi, %esi
	je	L395
	cmpl	$2147483391, %eax
	jle	L397
L396:
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L374:
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L382
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
L382:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L397:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	leal	256(%eax), %esi
	movl	_g_sm_heap, %ecx
	movl	%edx, 8(%esp)
	movl	%esi, 4(%esp)
	movl	8(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	8(%esp), %edx
	jne	L393
	testl	%esi, %esi
	jne	L377
	testl	%eax, %eax
	je	L396
L393:
	movl	%eax, 8(%ebx)
	addl	(%ebx), %eax
	addl	$256, 16(%ebx)
	movl	%eax, %esi
	movl	%eax, 12(%ebx)
L375:
	movl	4(%ebx), %ecx
	andl	_mask(,%edx,4), %edi
	leal	(%ecx,%edx), %eax
	movl	%edi, %edx
	sall	%cl, %edx
	orb	%dl, (%esi)
	cmpl	$7, %eax
	jle	L380
	movl	$8, %ecx
	movl	%edi, %esi
	subl	4(%ebx), %ecx
	movl	12(%ebx), %edx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movb	%cl, 1(%edx)
	cmpl	$15, %eax
	jle	L380
	movl	$16, %ecx
	movl	%edi, %esi
	subl	4(%ebx), %ecx
	movl	12(%ebx), %edx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movb	%cl, 2(%edx)
	cmpl	$23, %eax
	jle	L380
	movl	$24, %ecx
	movl	%edi, %esi
	subl	4(%ebx), %ecx
	movl	12(%ebx), %edx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movb	%cl, 3(%edx)
	cmpl	$31, %eax
	jg	L398
	.p2align 4
	.p2align 3
L380:
	testl	%eax, %eax
	leal	7(%eax), %edx
	cmovns	%eax, %edx
	andl	$7, %eax
	movl	%eax, 4(%ebx)
	sarl	$3, %edx
	addl	%edx, (%ebx)
	addl	%edx, 12(%ebx)
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L373:
	movl	12(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L395:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	jmp	L373
	.p2align 4,,10
	.p2align 3
L398:
	.cfi_restore_state
	movl	4(%ebx), %esi
	movl	%esi, %ecx
	negl	%ecx
	shrl	%cl, %edi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	movl	12(%ebx), %esi
	movl	%edi, %edx
	cmove	%ecx, %edx
	movb	%dl, 4(%esi)
	jmp	L380
	.p2align 4,,10
	.p2align 3
L377:
	movl	%esi, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE60:
	.p2align 4
	.def	_floor1_pack;	.scl	3;	.type	32;	.endef
_floor1_pack:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$5, %ecx
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
	movl	28(%esp), %esi
	movl	840(%esi), %eax
	movl	(%esi), %edx
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
	call	_oggpack_write
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	jle	L400
	movl	32(%esp), %ebp
	movl	$-1, %edi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L401:
	movl	4(%esi,%ebx,4), %edx
	movl	%ebp, %eax
	movl	$4, %ecx
	call	_oggpack_write
	movl	4(%esi,%ebx,4), %eax
	cmpl	%eax, %edi
	cmovl	%eax, %edi
	addl	$1, %ebx
	cmpl	%ebx, (%esi)
	jg	L401
	movl	%edi, (%esp)
	testl	%edi, %edi
	js	L400
	movl	%esi, %ebp
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L405:
	movl	128(%esi,%edi,4), %eax
	movl	$3, %ecx
	leal	-1(%eax), %edx
	movl	32(%esp), %eax
	call	_oggpack_write
	movl	192(%esi,%edi,4), %edx
	movl	32(%esp), %eax
	movl	$2, %ecx
	call	_oggpack_write
	movl	192(%esi,%edi,4), %edx
	testl	%edx, %edx
	jne	L419
L402:
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L404:
	movl	320(%ebp,%ebx,4), %eax
	movl	$8, %ecx
	addl	$1, %ebx
	leal	1(%eax), %edx
	movl	32(%esp), %eax
	call	_oggpack_write
	movl	192(%esi,%edi,4), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	cmpl	%ebx, %eax
	jg	L404
	addl	$1, %edi
	addl	$32, %ebp
	cmpl	%edi, (%esp)
	jge	L405
L400:
	movl	832(%esi), %eax
	movl	$2, %ecx
	leal	-1(%eax), %edx
	movl	32(%esp), %eax
	call	_oggpack_write
	movl	4(%esp), %eax
	subl	$1, %eax
	je	L420
	bsrl	%eax, %eax
	movl	$4, %ecx
	leal	1(%eax), %ebp
	movl	32(%esp), %eax
	movl	%ebp, %edx
	call	_oggpack_write
L407:
	movl	(%esi), %eax
	testl	%eax, %eax
	jle	L399
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L411:
	movl	4(%esi,%eax,4), %edx
	movl	128(%esi,%edx,4), %edi
	addl	%ecx, %edi
	movl	%edi, %ecx
	cmpl	%ebx, %edi
	jle	L409
	movl	%edi, (%esp)
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L410:
	movl	844(%esi,%ebx,4), %edx
	movl	32(%esp), %eax
	movl	%ebp, %ecx
	addl	$1, %ebx
	call	_oggpack_write
	cmpl	%ebx, %edi
	jne	L410
	movl	(%esp), %ecx
	movl	4(%esp), %eax
L409:
	addl	$1, %eax
	cmpl	%eax, (%esi)
	jg	L411
L399:
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
L419:
	.cfi_restore_state
	movl	32(%esp), %eax
	movl	256(%esi,%edi,4), %edx
	movl	$8, %ecx
	call	_oggpack_write
	movl	192(%esi,%edi,4), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	testl	%eax, %eax
	jg	L402
	addl	$1, %edi
	addl	$32, %ebp
	cmpl	%edi, (%esp)
	jge	L405
	jmp	L400
L420:
	movl	32(%esp), %eax
	movl	$4, %ecx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	call	_oggpack_write
	jmp	L407
	.cfi_endproc
LFE62:
	.p2align 4
	.def	_res0_pack;	.scl	3;	.type	32;	.endef
_res0_pack:
LFB63:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$24, %ecx
	movl	%esi, 4(%esp)
	.cfi_offset 6, -16
	movl	20(%esp), %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -12
	movl	24(%esp), %edi
	movl	(%esi), %edx
	movl	%edi, %eax
	call	_oggpack_write
	movl	4(%esi), %edx
	movl	$24, %ecx
	movl	%edi, %eax
	call	_oggpack_write
	movl	8(%esi), %eax
	movl	$24, %ecx
	leal	-1(%eax), %edx
	movl	%edi, %eax
	call	_oggpack_write
	movl	12(%esi), %eax
	movl	$6, %ecx
	leal	-1(%eax), %edx
	movl	%edi, %eax
	call	_oggpack_write
	movl	20(%esi), %edx
	movl	%edi, %eax
	movl	$8, %ecx
	call	_oggpack_write
	movl	12(%esi), %eax
	testl	%eax, %eax
	jle	L421
	movl	%ebx, (%esp)
	.cfi_offset 3, -20
	xorl	%ebx, %ebx
	movl	%ebp, 12(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	.p2align 4
	.p2align 3
L427:
	movl	24(%esi,%ebx,4), %edx
	testl	%edx, %edx
	je	L423
	bsrl	%edx, %eax
	xorl	$31, %eax
	subl	$29, %eax
	cmpl	$3, %eax
	jbe	L423
	movl	$3, %ecx
	movl	%edi, %eax
	call	_oggpack_write
	movl	$1, %ecx
	movl	$1, %edx
	movl	%edi, %eax
	call	_oggpack_write
	movl	24(%esi,%ebx,4), %edx
	movl	$5, %ecx
	movl	%edi, %eax
	sarl	$3, %edx
	call	_oggpack_write
L424:
	movl	24(%esi,%ebx,4), %eax
	testl	%eax, %eax
	je	L425
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L426:
	movl	%eax, %ecx
	andl	$1, %ecx
	addl	%ecx, %edx
	shrl	%eax
	jne	L426
	addl	%edx, %ebp
L425:
	addl	$1, %ebx
	cmpl	%ebx, 12(%esi)
	jg	L427
	testl	%ebp, %ebp
	jle	L439
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L428:
	movl	280(%esi,%ebx,4), %edx
	movl	$8, %ecx
	movl	%edi, %eax
	addl	$1, %ebx
	call	_oggpack_write
	cmpl	%ebp, %ebx
	jne	L428
L439:
	movl	(%esp), %ebx
	.cfi_restore 3
	movl	12(%esp), %ebp
	.cfi_restore 5
L421:
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$16, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L423:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$4, %ecx
	movl	%edi, %eax
	call	_oggpack_write
	jmp	L424
	.cfi_endproc
LFE63:
	.p2align 4
	.def	_vorbis_book_encode;	.scl	3;	.type	32;	.endef
_vorbis_book_encode:
LFB64:
	.cfi_startproc
	testl	%edx, %edx
	js	L447
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	.cfi_offset 3, -16
	movl	%ecx, %ebx
	movl	12(%eax), %ecx
	cmpl	%edx, 4(%ecx)
	jg	L448
	movl	(%esp), %ebx
	xorl	%eax, %eax
	addl	$12, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L448:
	.cfi_restore_state
	movl	%esi, 4(%esp)
	.cfi_offset 6, -12
	movl	%eax, %esi
	movl	%edi, 8(%esp)
	.cfi_offset 7, -8
	movl	8(%ecx), %eax
	movl	%ebx, %edi
	movl	%edx, %ebx
	movzbl	(%eax,%edx), %ecx
	movl	20(%esi), %eax
	movl	(%eax,%edx,4), %edx
	movl	%edi, %eax
	call	_oggpack_write
	movl	12(%esi), %eax
	movl	8(%esp), %edi
	.cfi_restore 7
	movl	4(%esp), %esi
	.cfi_restore 6
	movl	8(%eax), %eax
	movzbl	(%eax,%ebx), %eax
	movl	(%esp), %ebx
	addl	$12, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L447:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE64:
	.p2align 4
	.def	__01forward.constprop.0.isra.0;	.scl	3;	.type	32;	.endef
__01forward.constprop.0.isra.0:
LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
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
	subl	$1116, %esp
	.cfi_def_cfa_offset 1136
	movl	%ecx, 60(%esp)
	movl	(%edx), %ecx
	movl	%eax, 20(%esp)
	movl	12(%ecx), %eax
	movl	8(%ecx), %ebp
	movl	%edx, 44(%esp)
	movl	4(%ecx), %ebx
	movl	(%ecx), %esi
	movl	%ecx, 28(%esp)
	movl	%eax, 88(%esp)
	movl	16(%edx), %eax
	movl	%ebp, 40(%esp)
	movl	(%eax), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, 76(%esp)
	leal	92(%esp), %eax
	movl	%eax, (%esp)
	call	_memset
	leal	604(%esp), %eax
	movl	$512, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	8(%edi), %edi
	testl	%edi, %edi
	jle	L449
	subl	%esi, %ebx
	movl	%ebx, %eax
	cltd
	idivl	%ebp
	movl	%eax, %ebp
	testl	%eax, %eax
	jle	L449
	movl	76(%esp), %ebx
	movl	$0, 32(%esp)
	testl	%ebx, %ebx
	setg	87(%esp)
L451:
	movl	32(%esp), %edi
	movl	$1, %eax
	movl	%edi, %ecx
	sall	%cl, %eax
	movl	32(%esp), %ecx
	movl	%eax, 36(%esp)
	leal	0(,%edi,4), %eax
	xorl	%edi, %edi
	movl	%eax, 52(%esp)
	testl	%ecx, %ecx
	je	L505
L452:
	cmpl	%edi, %ebp
	jle	L461
	cmpb	$0, 87(%esp)
	je	L462
	leal	0(,%edi,4), %eax
	movl	%eax, 24(%esp)
L458:
	movl	40(%esp), %ebx
	movl	%ebp, 80(%esp)
	xorl	%esi, %esi
	imull	%edi, %ebx
	.p2align 4
	.p2align 3
L468:
	movl	28(%esp), %ecx
	movl	%edi, 64(%esp)
	movl	%esi, 68(%esp)
	movl	(%ecx), %eax
	movl	%ebx, 72(%esp)
	xorl	%ecx, %ecx
	addl	%ebx, %eax
	sall	$2, %eax
	movl	%eax, 56(%esp)
	.p2align 4
	.p2align 3
L467:
	movl	1140(%esp), %eax
	movl	24(%esp), %ebx
	movl	32(%esp), %edx
	movl	(%eax,%ecx,4), %eax
	movl	(%eax,%ebx), %eax
	testl	%edx, %edx
	jne	L463
	movl	40(%esp), %ebx
	addl	%ebx, 604(%esp,%eax,4)
L463:
	movl	28(%esp), %edx
	movl	36(%esp), %edi
	testl	%edi, 24(%edx,%eax,4)
	je	L464
	movl	44(%esp), %esi
	movl	20(%esi), %edx
	movl	(%edx,%eax,4), %eax
	movl	52(%esp), %edx
	movl	(%eax,%edx), %edi
	testl	%edi, %edi
	je	L464
	movl	40(%esp), %eax
	movl	(%edi), %ebp
	cltd
	idivl	%ebp
	movl	%eax, 12(%esp)
	testl	%eax, %eax
	jle	L471
	leal	0(,%ebp,4), %eax
	movl	%ecx, 48(%esp)
	movl	56(%esp), %esi
	xorl	%ebp, %ebp
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	xorl	%ebx, %ebx
	addl	(%eax,%ecx,4), %esi
	.p2align 4
	.p2align 3
L466:
	movl	%esi, %edx
	movl	%edi, %eax
	addl	$1, %ebx
	call	_local_book_besterror
	movl	20(%esp), %ecx
	movl	%eax, %edx
	movl	%edi, %eax
	call	_vorbis_book_encode
	addl	16(%esp), %esi
	addl	%eax, %ebp
	cmpl	%ebx, 12(%esp)
	jne	L466
	movl	48(%esp), %ecx
L465:
	movl	44(%esp), %eax
	movl	24(%esp), %ebx
	addl	%ebp, 32(%eax)
	movl	1140(%esp), %eax
	movl	(%eax,%ecx,4), %eax
	movl	(%eax,%ebx), %eax
	addl	%ebp, 92(%esp,%eax,4)
L464:
	addl	$1, %ecx
	cmpl	%ecx, 1136(%esp)
	jne	L467
	movl	64(%esp), %edi
	movl	68(%esp), %esi
	movl	72(%esp), %ebx
	addl	40(%esp), %ebx
	addl	$1, %esi
	addl	$1, %edi
	cmpl	%esi, 76(%esp)
	jle	L501
	cmpl	%edi, 80(%esp)
	jle	L502
	leal	0(,%edi,4), %eax
	movl	%eax, 24(%esp)
	jmp	L468
	.p2align 4,,10
	.p2align 3
L471:
	xorl	%ebp, %ebp
	jmp	L465
L501:
	movl	80(%esp), %ebp
L462:
	cmpl	%edi, %ebp
	jle	L461
	movl	32(%esp), %ecx
	testl	%ecx, %ecx
	jne	L452
L505:
	leal	0(,%edi,4), %eax
	movl	%edi, 12(%esp)
	movl	88(%esp), %ebx
	movl	%eax, 24(%esp)
	movl	76(%esp), %eax
	leal	(%eax,%edi), %esi
L460:
	xorl	%edi, %edi
	.p2align 4
	.p2align 3
L457:
	movl	1140(%esp), %eax
	movl	(%eax,%edi,4), %ecx
	movl	24(%esp), %eax
	movl	(%ecx,%eax), %edx
	cmpl	$1, 76(%esp)
	jle	L453
	movl	12(%esp), %eax
	addl	$1, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L455:
	imull	%ebx, %edx
	cmpl	%eax, %ebp
	jle	L454
	addl	(%ecx,%eax,4), %edx
L454:
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L455
L453:
	movl	44(%esp), %eax
	movl	16(%eax), %eax
	cmpl	%edx, 4(%eax)
	jg	L506
L456:
	addl	$1, %edi
	cmpl	1136(%esp), %edi
	jne	L457
	movl	12(%esp), %eax
	cmpl	%eax, %ebp
	jle	L461
	cmpb	$0, 87(%esp)
	je	L507
	movl	12(%esp), %edi
	jmp	L458
L502:
	movl	80(%esp), %ebp
L461:
	movl	44(%esp), %ecx
	addl	$1, 32(%esp)
	movl	32(%esp), %eax
	cmpl	8(%ecx), %eax
	jl	L451
L449:
	addl	$1116, %esp
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
L506:
	.cfi_restore_state
	movl	20(%esp), %ecx
	call	_vorbis_book_encode
	movl	44(%esp), %ecx
	addl	%eax, 36(%ecx)
	jmp	L456
L507:
	cmpl	%eax, %ebp
	jg	L460
	jmp	L461
	.cfi_endproc
LFE68:
	.p2align 4
	.def	_res1_forward;	.scl	3;	.type	32;	.endef
_res1_forward:
LFB70:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	44(%esp), %ecx
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	testl	%ecx, %ecx
	jle	L509
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L511:
	movl	(%esi,%eax,4), %edi
	testl	%edi, %edi
	je	L510
	movl	(%ebx,%eax,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
L510:
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L511
	testl	%edx, %edx
	je	L517
	movl	48(%esp), %eax
	movl	%edx, (%esp)
	movl	%ebx, %ecx
	movl	32(%esp), %edx
	movl	%eax, 4(%esp)
	movl	24(%esp), %eax
	call	__01forward.constprop.0.isra.0
	movl	16(%esp), %edi
	.cfi_restore 7
L509:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L517:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE70:
	.p2align 4
	.def	__encodepart;	.scl	3;	.type	32;	.endef
__encodepart:
LFB69:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	44(%esp), %ebp
	movl	40(%esp), %eax
	movl	0(%ebp), %ecx
	cltd
	idivl	%ecx
	testl	%eax, %eax
	jle	L524
	leal	0(,%ecx,4), %edx
	movl	%ebx, 12(%esp)
	movl	%edx, (%esp)
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, 20(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	36(%esp), %edi
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L523:
	movl	%edi, %edx
	movl	%ebp, %eax
	call	_local_book_besterror
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L521
	movl	12(%ebp), %eax
	cmpl	4(%eax), %ebx
	jge	L521
	movl	8(%eax), %eax
	movzbl	(%eax,%ebx), %ecx
	movl	20(%ebp), %eax
	movl	(%eax,%ebx,4), %edx
	movl	32(%esp), %eax
	call	_oggpack_write
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax,%ebx), %eax
	addl	%eax, 8(%esp)
L521:
	addl	$1, %esi
	addl	(%esp), %edi
	cmpl	%esi, 4(%esp)
	jne	L523
	movl	8(%esp), %eax
	movl	12(%esp), %ebx
	.cfi_restore 3
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L524:
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -8
	movl	$0, 8(%esp)
	movl	24(%esp), %ebp
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE69:
	.p2align 4
	.def	_floor0_look;	.scl	3;	.type	32;	.endef
_floor0_look:
LFB71:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	_g_sm_heap, %ecx
	movl	$32, (%esp)
	movl	20(%esp), %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	L528
	movl	$0, (%eax)
	movl	%eax, %ebx
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	(%esi), %eax
	movl	%eax, 4(%ebx)
	movl	8(%esi), %eax
	movl	%esi, 20(%ebx)
	movl	%eax, (%ebx)
	movl	_g_sm_heap, %ecx
	movl	$8, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	L534
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%eax, 8(%ebx)
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
L528:
	.cfi_restore_state
	movl	$32, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L534:
	movl	$4, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE71:
	.p2align 4
	.def	_res0_look;	.scl	3;	.type	32;	.endef
_res0_look:
LFB72:
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
	movl	_g_sm_heap, %ecx
	movl	$44, (%esp)
	movl	64(%esp), %ebx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testl	%eax, %eax
	je	L536
	movl	$0, 28(%eax)
	movl	%eax, %edi
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	xorl	%eax, %eax
L537:
	movl	$0, (%edi,%eax)
	movl	$0, 4(%edi,%eax)
	movl	$0, 8(%edi,%eax)
	movl	$0, 12(%edi,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L537
	movl	60(%esp), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	%ebx, (%edi)
	movl	12(%ebx), %ecx
	movl	%eax, 28(%esp)
	movl	%ecx, 4(%edi)
	movl	2848(%eax), %eax
	leal	0(,%ecx,4), %ebp
	movl	_g_sm_heap, %ecx
	movl	%eax, 12(%edi)
	imull	$56, 20(%ebx), %edx
	addl	%edx, %eax
	movl	%eax, 16(%edi)
	movl	(%eax), %eax
	movl	%ebp, (%esp)
	movl	%eax, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %esi
	testl	%eax, %eax
	je	L540
	movl	%ebp, 8(%esp)
	xorl	%ebp, %ebp
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	4(%edi), %edx
	movl	%esi, 20(%edi)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	testl	%edx, %edx
	jle	L542
	.p2align 4
	.p2align 3
L541:
	movl	24(%ebx,%ebp,4), %eax
	testl	%eax, %eax
	je	L543
	bsrl	%eax, %eax
	movl	$32, %esi
	movl	_g_sm_heap, %ecx
	xorl	$31, %eax
	subl	%eax, %esi
	movl	20(%edi), %eax
	leal	0(,%esi,4), %edx
	movl	%edx, (%esp)
	movl	%eax, 20(%esp)
	movl	%edx, 16(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testl	%eax, %eax
	je	L540
	movl	32(%esp), %ecx
	movl	16(%esp), %edx
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	movl	%ecx, 32(%esp)
	leal	0(,%ebp,4), %ecx
	movl	%ecx, 24(%esp)
	cmpl	$16, %edx
	jnb	L544
	testb	$8, %dl
	jne	L600
	testb	$4, %dl
	jne	L601
	testl	%edx, %edx
	je	L545
	movb	$0, (%eax)
L545:
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
	movl	%edi, 20(%esp)
	movl	%eax, (%ecx,%edx)
	movl	36(%esp), %ecx
	xorl	%eax, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L552:
	movl	24(%ebx,%ebp,4), %edx
	btl	%eax, %edx
	jnc	L551
	movl	20(%esp), %edi
	movl	20(%edi), %edx
	movl	24(%esp), %edi
	movl	(%edx,%edi), %edi
	imull	$56, 280(%ebx,%ecx,4), %edx
	addl	$1, %ecx
	movl	%edi, 16(%esp)
	movl	28(%esp), %edi
	addl	2848(%edi), %edx
	movl	16(%esp), %edi
	movl	%edx, (%edi,%eax,4)
L551:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	L552
	movl	20(%esp), %edi
	movl	%ecx, 36(%esp)
	movl	4(%edi), %edx
L543:
	addl	$1, %ebp
	cmpl	%ebp, %edx
	jg	L541
L542:
	movl	12(%esp), %esi
	movl	$1, %ebx
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	L591
	andl	$1, %esi
	je	L598
	movl	%edx, %ebx
	movl	$1, %eax
	cmpl	$1, 12(%esp)
	je	L593
L598:
	movl	12(%esp), %ecx
L553:
	imull	%edx, %ebx
	addl	$2, %eax
	imull	%edx, %ebx
	cmpl	%eax, %ecx
	jne	L553
L593:
	movl	%ebx, 24(%edi)
	sall	$2, %ebx
L554:
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 8(%edi)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, %edx
	testl	%eax, %eax
	je	L555
	movl	%eax, 28(%edi)
	movl	12(%esp), %eax
	xorl	%ebp, %ebp
	movl	%edx, %ebx
	movl	24(%edi), %esi
	sall	$2, %eax
	movl	%eax, 24(%esp)
	testl	%esi, %esi
	jle	L535
	.p2align 4
	.p2align 3
L562:
	movl	4(%edi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 20(%esp)
	movl	24(%esp), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 56
	subl	$4, %esp
	.cfi_def_cfa_offset 60
	testl	%eax, %eax
	je	L558
	movl	%eax, (%ebx,%ebp,4)
	movl	12(%esp), %eax
	leal	0(,%ebp,4), %ecx
	movl	%ecx, 16(%esp)
	testl	%eax, %eax
	jle	L560
	movl	%esi, %eax
	xorl	%ebx, %ebx
	movl	%ebp, %esi
	cltd
	idivl	20(%esp)
	movl	%ebp, 20(%esp)
	movl	%eax, %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L561:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebp
	movl	%ecx, %eax
	movl	%edx, %esi
	cltd
	idivl	4(%edi)
	movl	16(%esp), %edx
	movl	%eax, %ecx
	movl	28(%edi), %eax
	movl	(%eax,%edx), %eax
	movl	%ebp, (%eax,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, 12(%esp)
	jne	L561
	movl	20(%esp), %ebp
L560:
	movl	24(%edi), %esi
	addl	$1, %ebp
	cmpl	%ebp, %esi
	jle	L535
	movl	28(%edi), %ebx
	jmp	L562
L544:
	movl	$0, -16(%eax,%edx)
	movl	$0, -12(%eax,%edx)
	movl	$0, -8(%eax,%edx)
	movl	$0, -4(%eax,%edx)
	subl	$1, %edx
	cmpl	$16, %edx
	jb	L545
	movl	%edx, %ecx
	xorl	%edx, %edx
	andl	$-16, %ecx
L549:
	movl	$0, (%eax,%edx)
	movl	$0, 4(%eax,%edx)
	movl	$0, 8(%eax,%edx)
	movl	$0, 12(%eax,%edx)
	addl	$16, %edx
	cmpl	%ecx, %edx
	jb	L549
	jmp	L545
L558:
	movl	24(%esp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L540:
	movl	$4, %eax
	call	__Z13handle_memerri
L535:
	addl	$40, %esp
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
L536:
	.cfi_restore_state
	movl	$44, %eax
	call	__Z13handle_memerri
L600:
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, -8(%eax,%edx)
	movl	$0, -4(%eax,%edx)
	jmp	L545
L601:
	movl	$0, (%eax)
	movl	$0, -4(%eax,%edx)
	jmp	L545
L591:
	movl	$1, 24(%edi)
	movl	$4, %ebx
	jmp	L554
L555:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE72:
	.p2align 4
	.def	_ogg_sync_pageseek;	.scl	3;	.type	32;	.endef
_ogg_sync_pageseek:
LFB73:
	.cfi_startproc
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	js	L627
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
	subl	$28, %esp
	movl	12(%eax), %eax
	movl	(%ebx), %esi
	movl	8(%ebx), %edi
	movl	%edx, 24(%esp)
	addl	%eax, %esi
	subl	%eax, %edi
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L605
	movl	24(%ebx), %edx
L606:
	addl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jg	L602
	movl	22(%esi), %eax
	movl	$0, 22(%esi)
	movl	20(%ebx), %ecx
	movl	%eax, 12(%esp)
	movl	24(%ebx), %eax
	leal	(%esi,%ecx), %edx
	movl	%edx, 20(%esp)
	movl	%esi, %edx
	movl	%eax, 16(%esp)
	xorl	%eax, %eax
	call	__os_update_crc
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	call	__os_update_crc
	movl	12(%esp), %ecx
	movl	%eax, 22(%esi)
	cmpl	%eax, %ecx
	jne	L628
	movl	24(%esp), %edi
	testl	%edi, %edi
	je	L614
	movl	%esi, (%edi)
	movl	20(%ebx), %eax
	movl	%eax, 4(%edi)
	addl	%esi, %eax
	movl	%eax, 8(%edi)
	movl	24(%ebx), %eax
	movl	%eax, 12(%edi)
L614:
	movl	$0, 16(%ebx)
	movl	24(%ebx), %eax
	movl	$0, 24(%ebx)
	addl	20(%ebx), %eax
	addl	%eax, 12(%ebx)
	movl	$0, 20(%ebx)
	addl	$28, %esp
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
L605:
	.cfi_restore_state
	cmpl	$26, %edi
	jle	L602
	cmpl	$1399285583, (%esi)
	je	L629
L608:
	leal	1(%esi), %eax
	subl	$1, %edi
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	movl	%edi, 8(%esp)
	movl	$79, 4(%esp)
	movl	%eax, (%esp)
	call	_memchr
	movl	(%ebx), %ecx
	movl	%eax, %edx
	testl	%eax, %eax
	je	L615
	subl	%ecx, %eax
L616:
	movl	%eax, 12(%ebx)
	movl	%esi, %eax
	subl	%edx, %eax
L602:
	addl	$28, %esp
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
L629:
	.cfi_restore_state
	movzbl	26(%esi), %edx
	movl	%edx, %ecx
	addl	$27, %edx
	movl	%edx, 20(%esp)
	cmpl	%edx, %edi
	jl	L602
	movl	24(%ebx), %edx
	testb	%cl, %cl
	je	L610
	.p2align 5
	.p2align 4
	.p2align 3
L611:
	movzbl	27(%esi,%eax), %ecx
	addl	$1, %eax
	addl	%ecx, %edx
	movl	%edx, 24(%ebx)
	movzbl	26(%esi), %ecx
	cmpl	%eax, %ecx
	jg	L611
L610:
	movl	20(%esp), %eax
	movl	%eax, 20(%ebx)
	jmp	L606
	.p2align 4,,10
	.p2align 3
L628:
	movl	%ecx, 22(%esi)
	jmp	L608
	.p2align 4,,10
	.p2align 3
L615:
	movl	8(%ebx), %eax
	leal	(%ecx,%eax), %edx
	jmp	L616
L627:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE73:
	.p2align 4
	.def	_mdct_init;	.scl	3;	.type	32;	.endef
_mdct_init:
LFB75:
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
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	3(%edx), %ebx
	subl	$92, %esp
	testl	%edx, %edx
	movl	%eax, -76(%ebp)
	cmovns	%edx, %ebx
	movl	%edx, -64(%ebp)
	movl	%ebx, %esi
	andl	$-4, %ebx
	sarl	$2, %esi
	movl	%esi, -60(%ebp)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	je	L651
	leal	(%esi,%edi), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L651
	xorps	%xmm5, %xmm5
	movl	%eax, -44(%ebp)
	cvtsi2ssl	-64(%ebp), %xmm5
	movss	%xmm5, -84(%ebp)
	movss	%xmm5, (%esp)
	call	_logf
	movl	-44(%ebp), %eax
	movss	LC11, %xmm2
	movss	LC5, %xmm3
	fstps	-40(%ebp)
	movss	-40(%ebp), %xmm0
	divss	LC3, %xmm0
	addss	LC4, %xmm0
	movaps	%xmm0, %xmm1
	andps	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm3
	ja	L655
L634:
	cvttss2sil	%xmm0, %esi
	movl	-76(%ebp), %edi
	movl	-56(%ebp), %ecx
	movl	%eax, 8(%edi)
	movl	%ecx, 12(%edi)
	movl	%esi, -80(%ebp)
	movl	%esi, 4(%edi)
	movl	-64(%ebp), %esi
	movl	%esi, (%edi)
	cmpl	$3, %esi
	jle	L636
	movl	-64(%ebp), %edi
	movl	%eax, -52(%ebp)
	xorl	%ebx, %ebx
	leal	-32(%ebp), %esi
	movl	%edi, -40(%ebp)
	fildl	-40(%ebp)
	leal	(%edi,%edi), %edx
	sarl	%edi
	fdivrl	LC8
	movl	%edx, -44(%ebp)
	leal	(%eax,%edi,4), %edx
	leal	-24(%ebp), %edi
	fstpl	-40(%ebp)
	fildl	-44(%ebp)
	fdivrl	LC8
	fstpl	-72(%ebp)
	.p2align 4
	.p2align 3
L637:
	leal	0(,%ebx,4), %ecx
	movl	%edx, -48(%ebp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, -44(%ebp)
	fildl	-44(%ebp)
	fmull	-40(%ebp)
	fstpl	(%esp)
	call	_sincos
	fldl	-24(%ebp)
	fldl	-32(%ebp)
	leal	1(%ebx,%ebx), %ecx
	movl	-52(%ebp), %eax
	fstps	-44(%ebp)
	movss	-44(%ebp), %xmm0
	fstps	-44(%ebp)
	movss	%xmm0, (%eax,%ebx,8)
	movss	-44(%ebp), %xmm0
	xorps	LC9, %xmm0
	movss	%xmm0, 4(%eax,%ebx,8)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, -44(%ebp)
	fildl	-44(%ebp)
	fmull	-72(%ebp)
	fstpl	(%esp)
	call	_sincos
	fldl	-24(%ebp)
	fldl	-32(%ebp)
	movl	-48(%ebp), %edx
	fstps	-44(%ebp)
	movss	-44(%ebp), %xmm0
	fstps	-44(%ebp)
	movss	%xmm0, (%edx,%ebx,8)
	movss	-44(%ebp), %xmm0
	movss	%xmm0, 4(%edx,%ebx,8)
	addl	$1, %ebx
	cmpl	%ebx, -60(%ebp)
	jg	L637
	movl	-64(%ebp), %ecx
	movl	-52(%ebp), %eax
	cmpl	$7, %ecx
	jle	L636
	movl	%ecx, %ebx
	leal	(%eax,%ecx,4), %edx
	xorl	%eax, %eax
	sarl	$3, %ebx
	movl	%ebx, -44(%ebp)
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L638:
	leal	2(,%eax,4), %ecx
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%ecx, -48(%ebp)
	fildl	-48(%ebp)
	fmull	-40(%ebp)
	movl	%eax, -52(%ebp)
	fstpl	(%esp)
	call	_sincos
	fldl	-24(%ebp)
	flds	LC4
	fldl	-32(%ebp)
	movl	-52(%ebp), %eax
	fmul	%st(1), %st
	fstps	-48(%ebp)
	fxch	%st(1)
	movss	-48(%ebp), %xmm0
	fchs
	fmulp	%st, %st(1)
	movss	%xmm0, (%ebx,%eax,8)
	fstps	-48(%ebp)
	movss	-48(%ebp), %xmm0
	movss	%xmm0, 4(%ebx,%eax,8)
	addl	$1, %eax
	cmpl	-44(%ebp), %eax
	jl	L638
	movl	-80(%ebp), %esi
	movl	$1, %edi
	movl	%edi, %eax
	leal	-1(%esi), %ecx
	sall	%cl, %eax
	leal	-2(%esi), %ecx
	xorl	%esi, %esi
	sall	%cl, %edi
	leal	-2(%eax), %edx
	testl	%edi, %edi
	jne	L656
	movl	-56(%ebp), %eax
L652:
	movl	%edx, (%eax,%esi,8)
	movl	$0, 4(%eax,%esi,8)
	addl	$1, %esi
	cmpl	-44(%ebp), %esi
	jl	L652
L636:
	movss	LC10, %xmm0
	movl	-76(%ebp), %eax
	divss	-84(%ebp), %xmm0
	movss	%xmm0, 16(%eax)
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
L656:
	.cfi_restore_state
	subl	$1, %eax
	movl	%eax, -40(%ebp)
	.p2align 4
	.p2align 3
L642:
	movl	%edi, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L641:
	movl	%eax, %ebx
	btsl	%ecx, %ebx
	testl	%esi, %edx
	movl	%edi, %edx
	cmovne	%ebx, %eax
	addl	$1, %ecx
	sarl	%cl, %edx
	testl	%edx, %edx
	jne	L641
	movl	%eax, %edx
	movl	-56(%ebp), %ecx
	notl	%edx
	andl	-40(%ebp), %edx
	subl	$1, %edx
	movl	%eax, 4(%ecx,%esi,8)
	movl	%edx, (%ecx,%esi,8)
	addl	$1, %esi
	cmpl	%esi, -44(%ebp)
	jg	L642
	jmp	L636
L655:
	cvttss2sil	%xmm0, %edx
	xorps	%xmm1, %xmm1
	andnps	%xmm0, %xmm2
	movss	LC7, %xmm4
	cvtsi2ssl	%edx, %xmm1
	movaps	%xmm1, %xmm3
	cmpnless	%xmm0, %xmm3
	andps	%xmm4, %xmm3
	subss	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	jmp	L634
L651:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE75:
	.p2align 4
	.def	_floor1_look;	.scl	3;	.type	32;	.endef
_floor1_look:
LFB76:
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
	subl	$296, %esp
	.cfi_def_cfa_offset 316
	movl	_g_sm_heap, %ecx
	movl	$1312, (%esp)
	movl	320(%esp), %ebp
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 312
	subl	$4, %esp
	.cfi_def_cfa_offset 316
	movl	%eax, 24(%esp)
	testl	%eax, %eax
	je	L658
	movl	$1312, 8(%esp)
	movl	%eax, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%ebp, 1296(%esi)
	movl	840(%ebp), %eax
	movl	%eax, 1288(%esi)
	movl	0(%ebp), %edx
	testl	%edx, %edx
	jle	L717
	leal	4(%ebp), %eax
	xorl	%ebx, %ebx
	leal	(%eax,%edx,4), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L661:
	movl	(%eax), %edx
	addl	$4, %eax
	addl	128(%ebp,%edx,4), %ebx
	cmpl	%ecx, %eax
	jne	L661
	movl	24(%esp), %eax
	leal	2(%ebx), %edi
	movl	%edi, 16(%esp)
	movl	%edi, 1284(%eax)
	testl	%edi, %edi
	jle	L664
L663:
	leal	836(%ebp), %ecx
	leal	0(,%edi,4), %eax
	movl	%ecx, 28(%esp)
	leal	36(%esp), %esi
	movl	%eax, 20(%esp)
	movl	%esi, %edx
	movl	%ecx, 32(%esp)
	addl	%eax, %ecx
	movl	28(%esp), %eax
	.p2align 4
	.p2align 4
	.p2align 3
L665:
	movl	%eax, (%edx)
	addl	$4, %eax
	addl	$4, %edx
	cmpl	%eax, %ecx
	jne	L665
	movl	16(%esp), %eax
	movl	32(%esp), %ecx
	movl	$_icomp, 12(%esp)
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	movl	%ecx, 28(%esp)
	call	_qsort
	movl	%ebx, 16(%esp)
	movl	28(%esp), %ecx
	xorl	%eax, %eax
	movl	24(%esp), %ebx
	.p2align 5
	.p2align 4
	.p2align 3
L669:
	movl	(%esi,%eax,4), %edx
	subl	%ecx, %edx
	sarl	$2, %edx
	movl	%edx, 260(%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	L669
	movl	16(%esp), %ebx
	movl	24(%esp), %ecx
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L670:
	movl	260(%ecx,%edx,4), %esi
	movl	%edx, 520(%ecx,%esi,4)
	addl	$1, %edx
	cmpl	%edx, %eax
	jne	L670
	movl	24(%esp), %esi
	movl	20(%esp), %ecx
	movl	%esi, %eax
	addl	%esi, %ecx
	.p2align 5
	.p2align 4
	.p2align 3
L671:
	movl	260(%eax), %edx
	addl	$4, %eax
	movl	836(%ebp,%edx,4), %edx
	movl	%edx, -4(%eax)
	cmpl	%ecx, %eax
	jne	L671
	movl	832(%ebp), %eax
	cmpl	$3, %eax
	je	L676
	jg	L677
L673:
	cmpl	$1, %eax
	je	L678
	cmpl	$2, %eax
	jne	L682
	movl	24(%esp), %eax
	movl	$128, 1292(%eax)
L682:
	testl	%ebx, %ebx
	jle	L657
	movl	24(%esp), %eax
	movl	%ebp, 320(%esp)
	movl	$2, %edi
	movl	1288(%eax), %eax
	movl	%eax, 28(%esp)
	leal	2(%ebx), %eax
	movl	%eax, 32(%esp)
	.p2align 4
	.p2align 3
L686:
	movl	320(%esp), %eax
	movl	%edi, %esi
	movl	28(%esp), %ecx
	movl	$1, %ebp
	movl	$0, 20(%esp)
	movl	836(%eax,%edi,4), %ebx
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	L685
	.p2align 4,,10
	.p2align 3
L687:
	movl	%eax, 20(%esp)
	movl	%edx, %edi
L683:
	addl	$1, %eax
	cmpl	%eax, %esi
	je	L718
L685:
	movl	320(%esp), %edx
	movl	836(%edx,%eax,4), %edx
	cmpl	%ebx, %edx
	jge	L688
	cmpl	%edx, %edi
	jl	L687
L688:
	cmpl	%ebx, %edx
	jle	L683
	cmpl	%edx, %ecx
	setg	16(%esp)
	cmpb	$0, 16(%esp)
	cmovne	%edx, %ecx
	cmovne	%eax, %ebp
	addl	$1, %eax
	cmpl	%eax, %esi
	jne	L685
L718:
	movl	%esi, %edi
	movl	24(%esp), %eax
	movl	20(%esp), %esi
	movl	%ebp, 772(%eax,%edi,4)
	movl	%esi, 1024(%eax,%edi,4)
	addl	$1, %edi
	cmpl	%edi, 32(%esp)
	jne	L686
L657:
	movl	24(%esp), %eax
	addl	$296, %esp
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
L677:
	.cfi_restore_state
	cmpl	$4, %eax
	jne	L682
L674:
	movl	24(%esp), %eax
	movl	$64, 1292(%eax)
	jmp	L682
L678:
	movl	24(%esp), %eax
	movl	$256, 1292(%eax)
	jmp	L682
L676:
	movl	24(%esp), %eax
	movl	$86, 1292(%eax)
	jmp	L682
L717:
	movl	24(%esp), %eax
	movl	$2, 16(%esp)
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$2, 1284(%eax)
	jmp	L663
L664:
	leal	36(%esp), %eax
	movl	$_icomp, 12(%esp)
	movl	%eax, (%esp)
	movl	$4, 8(%esp)
	movl	%edi, 4(%esp)
	call	_qsort
	movl	832(%ebp), %eax
	cmpl	$3, %eax
	je	L719
	jle	L673
	cmpl	$4, %eax
	je	L674
	jmp	L657
	.p2align 4,,10
	.p2align 3
L658:
	movl	$1312, %eax
	call	__Z13handle_memerri
L719:
	movl	24(%esp), %eax
	movl	$86, 1292(%eax)
	jmp	L657
	.cfi_endproc
LFE76:
	.p2align 4
	.def	_floor0_inverse2;	.scl	3;	.type	32;	.endef
_floor0_inverse2:
LFB77:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-8, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$68, %esp
	movl	(%ecx), %eax
	movl	4(%ecx), %ebx
	movl	8(%ecx), %edi
	movl	12(%ecx), %esi
	movl	%eax, -60(%ebp)
	movl	28(%eax), %eax
	movl	8(%ebx), %edx
	movl	%edi, -36(%ebp)
	movl	%eax, -40(%ebp)
	sall	$2, %eax
	movl	20(%ebx), %edi
	addl	%eax, %edx
	movl	%eax, -64(%ebp)
	movl	(%edx), %ecx
	movl	%edi, -24(%ebp)
	testl	%ecx, %ecx
	je	L753
L721:
	movl	-40(%ebp), %edx
	movl	-36(%ebp), %edi
	movl	12(%ebx,%edx,4), %eax
	movl	%eax, -40(%ebp)
	testl	%edi, %edi
	je	L728
	movl	4(%ebx), %eax
	movl	-24(%ebp), %ecx
	movss	(%edi,%eax,4), %xmm6
	movl	16(%ecx), %ecx
	movl	%eax, -20(%ebp)
	movl	(%ebx), %eax
	movss	%xmm6, -48(%ebp)
	movl	%eax, -28(%ebp)
	movl	8(%ebx), %eax
	movl	-20(%ebp), %ebx
	movl	(%eax,%edx,4), %edx
	testl	%ebx, %ebx
	jle	L729
	movl	%ecx, -32(%ebp)
	leal	(%edi,%ebx,4), %ebx
	movl	%esi, -44(%ebp)
	movl	%edi, %esi
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L730:
	movss	(%esi), %xmm0
	addl	$4, %esi
	movss	%xmm0, (%esp)
	call	_cosf
	fstps	-24(%ebp)
	movss	-24(%ebp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -4(%esi)
	cmpl	%ebx, %esi
	jne	L730
	movl	-32(%ebp), %ecx
	movl	-44(%ebp), %esi
	movl	%edi, %edx
L729:
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	jle	L743
	fildl	-28(%ebp)
	fdivrl	LC8
	xorps	%xmm7, %xmm7
	xorl	%ebx, %ebx
	movss	LC4, %xmm6
	movl	-20(%ebp), %eax
	cvtsi2ssl	%ecx, %xmm7
	subl	$2, %eax
	movss	%xmm6, -44(%ebp)
	movl	%eax, -60(%ebp)
	shrl	%eax
	movl	%eax, -64(%ebp)
	movss	%xmm7, -52(%ebp)
	fstps	-56(%ebp)
	.p2align 4
	.p2align 3
L742:
	movl	(%edx,%ebx,4), %edi
	xorps	%xmm0, %xmm0
	leal	0(,%ebx,4), %eax
	movl	%edx, -32(%ebp)
	movl	%eax, -24(%ebp)
	cvtsi2ssl	%edi, %xmm0
	mulss	-56(%ebp), %xmm0
	movss	%xmm0, (%esp)
	call	_cosf
	cmpl	$1, -20(%ebp)
	movl	-32(%ebp), %edx
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm1
	addss	%xmm1, %xmm1
	jle	L744
	movl	-36(%ebp), %ecx
	movl	-64(%ebp), %eax
	movss	-44(%ebp), %xmm2
	movl	%ecx, -28(%ebp)
	leal	8(%ecx,%eax,8), %ecx
	movl	-28(%ebp), %eax
	movaps	%xmm2, %xmm0
	.p2align 5
	.p2align 4
	.p2align 3
L734:
	movaps	%xmm1, %xmm3
	subss	(%eax), %xmm3
	addl	$8, %eax
	mulss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	subss	-4(%eax), %xmm3
	mulss	%xmm3, %xmm0
	cmpl	%ecx, %eax
	jne	L734
	movl	-60(%ebp), %eax
	andl	$-2, %eax
	addl	$3, %eax
L733:
	cmpl	%eax, -20(%ebp)
	je	L754
	movss	LC18, %xmm4
	movaps	%xmm4, %xmm3
	subss	%xmm1, %xmm3
	addss	%xmm4, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm2, %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm2, %xmm1
L736:
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	L751
	sqrtss	%xmm0, %xmm0
L739:
	movss	-48(%ebp), %xmm1
	movl	%edx, -32(%ebp)
	addl	$1, %ebx
	divss	%xmm0, %xmm1
	movss	LC20, %xmm0
	subss	-52(%ebp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esp)
	call	_expf
	movl	-24(%ebp), %ecx
	movl	-32(%ebp), %edx
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm1
	movss	(%esi,%ecx), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esi,%ecx)
	cmpl	4(%edx,%ecx), %edi
	jne	L740
	.p2align 5
	.p2align 4
	.p2align 3
L741:
	movss	(%esi,%ebx,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%esi,%ebx,4)
	addl	$1, %ebx
	cmpl	(%edx,%ebx,4), %edi
	je	L741
L740:
	cmpl	-40(%ebp), %ebx
	jl	L742
L743:
	leal	-16(%ebp), %esp
	movl	$1, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L754:
	.cfi_restore_state
	movl	-36(%ebp), %eax
	movl	-20(%ebp), %ecx
	movaps	%xmm1, %xmm3
	mulss	%xmm1, %xmm1
	subss	-4(%eax,%ecx,4), %xmm3
	mulss	%xmm3, %xmm2
	movss	LC10, %xmm3
	subss	%xmm1, %xmm3
	mulss	%xmm2, %xmm2
	movaps	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	jmp	L736
	.p2align 4,,10
	.p2align 3
L744:
	movss	-44(%ebp), %xmm2
	movl	$1, %eax
	movaps	%xmm2, %xmm0
	jmp	L733
	.p2align 4,,10
	.p2align 3
L728:
	movl	-40(%ebp), %eax
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
	call	_memset
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
L753:
	.cfi_restore_state
	movl	-60(%ebp), %eax
	movl	-40(%ebp), %edi
	movl	%edx, -32(%ebp)
	movl	(%ebx), %edx
	movl	64(%eax), %eax
	movl	%edx, -20(%ebp)
	movl	-24(%ebp), %edx
	movl	4(%eax), %eax
	movl	4(%edx), %edx
	movl	28(%eax), %eax
	movl	%edx, -28(%ebp)
	movl	(%eax,%edi,4), %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	movl	%eax, -48(%ebp)
	leal	4(,%eax,4), %eax
	movl	%eax, -68(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L722
	movl	-32(%ebp), %edx
	movl	%eax, (%edx)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jle	L724
	movss	LC4, %xmm7
	xorps	%xmm0, %xmm0
	xorl	%edi, %edi
	movss	LC13, %xmm1
	cvtsi2ssl	-28(%ebp), %xmm0
	movss	%xmm7, -44(%ebp)
	mulss	%xmm7, %xmm0
	mulss	%xmm0, %xmm1
	movss	%xmm0, -32(%ebp)
	movss	%xmm1, (%esp)
	call	_atanf
	movss	-32(%ebp), %xmm0
	fstps	-28(%ebp)
	movaps	%xmm0, %xmm1
	movss	%xmm0, -52(%ebp)
	mulss	%xmm0, %xmm1
	mulss	LC14, %xmm1
	movss	%xmm1, (%esp)
	call	_atanf
	movss	-52(%ebp), %xmm0
	xorps	%xmm3, %xmm3
	xorps	%xmm4, %xmm4
	movss	LC15, %xmm1
	fstps	-32(%ebp)
	mulss	-28(%ebp), %xmm1
	cvtsi2ssl	-20(%ebp), %xmm3
	movss	LC16, %xmm2
	mulss	-32(%ebp), %xmm2
	cvtsi2ssl	-48(%ebp), %xmm4
	movl	%esi, -72(%ebp)
	mulss	LC17, %xmm0
	movl	-64(%ebp), %esi
	movss	%xmm4, -56(%ebp)
	addss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	divss	%xmm0, %xmm3
	movss	%xmm3, -52(%ebp)
	.p2align 4
	.p2align 3
L727:
	xorps	%xmm0, %xmm0
	movl	-24(%ebp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%edi, %xmm0
	cvtsi2ssl	4(%eax), %xmm1
	mulss	-44(%ebp), %xmm1
	divss	-56(%ebp), %xmm1
	mulss	%xmm0, %xmm1
	movss	LC13, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm1, -28(%ebp)
	movss	%xmm0, (%esp)
	call	_atanf
	movss	-28(%ebp), %xmm1
	fstps	-20(%ebp)
	movaps	%xmm1, %xmm0
	movss	%xmm1, -32(%ebp)
	mulss	%xmm1, %xmm0
	mulss	LC14, %xmm0
	movss	%xmm0, (%esp)
	call	_atanf
	movss	-32(%ebp), %xmm1
	movss	LC16, %xmm0
	movss	LC15, %xmm2
	fstps	-28(%ebp)
	mulss	-20(%ebp), %xmm2
	movss	LC5, %xmm5
	mulss	-28(%ebp), %xmm0
	mulss	LC17, %xmm1
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	mulss	-52(%ebp), %xmm0
	movss	LC11, %xmm1
	andps	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm5
	jbe	L725
	movss	LC7, %xmm6
	cvttss2sil	%xmm0, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movaps	%xmm1, %xmm2
	cmpnless	%xmm0, %xmm2
	andps	%xmm6, %xmm2
	subss	%xmm2, %xmm1
	movss	LC11, %xmm2
	andnps	%xmm0, %xmm2
	orps	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
L725:
	cvttss2sil	%xmm0, %eax
	movl	(%ebx), %edx
	leal	-1(%edx), %ecx
	cmpl	%eax, %edx
	movl	8(%ebx), %edx
	cmovle	%ecx, %eax
	movl	(%edx,%esi), %edx
	movl	%eax, (%edx,%edi,4)
	addl	$1, %edi
	cmpl	%edi, -48(%ebp)
	jg	L727
	movl	-68(%ebp), %eax
	movl	-72(%ebp), %esi
	subl	$4, %eax
L724:
	movl	8(%ebx), %ecx
	movl	-64(%ebp), %edi
	movl	(%ecx,%edi), %ecx
	movl	-48(%ebp), %edi
	movl	$-1, (%ecx,%eax)
	movl	-40(%ebp), %eax
	movl	%edi, 12(%ebx,%eax,4)
	movl	-60(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -40(%ebp)
	jmp	L721
L722:
	movl	-68(%ebp), %eax
	call	__Z13handle_memerri
L751:
	movl	%edx, -32(%ebp)
	movss	%xmm0, (%esp)
	call	_sqrtf
	movl	-32(%ebp), %edx
	fstps	-28(%ebp)
	movss	-28(%ebp), %xmm0
	jmp	L739
	.cfi_endproc
LFE77:
	.p2align 4
	.def	_vorbis_book_decodevs_add;	.scl	3;	.type	32;	.endef
_vorbis_book_decodevs_add:
LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	jle	L756
	movl	(%eax), %edi
	movl	20(%ebp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	leal	0(,%eax,4), %eax
	leal	12(%eax), %edx
	movl	%eax, -28(%ebp)
	movl	%edx, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	15(%esp), %eax
	andl	$-16, %eax
	movl	%eax, -16(%ebp)
	movl	%edx, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	15(%esp), %ebx
	andl	$-16, %ebx
	testl	%ecx, %ecx
	jle	L757
	movl	%ecx, -20(%ebp)
	movl	8(%ebp), %edi
	xorl	%esi, %esi
	jmp	L759
	.p2align 4,,10
	.p2align 3
L772:
	movl	(%edi), %edx
	movl	16(%edi), %ecx
	imull	%edx, %eax
	leal	(%ecx,%eax,4), %eax
	movl	%eax, (%ebx,%esi,4)
	addl	$1, %esi
	cmpl	%esi, -20(%ebp)
	je	L771
L759:
	movl	16(%ebp), %edx
	movl	%edi, %eax
	call	_decode_packed_entry_number
	movl	-16(%ebp), %ecx
	movl	%eax, (%ecx,%esi,4)
	cmpl	$-1, %eax
	jne	L772
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
L771:
	.cfi_restore_state
	movl	-20(%ebp), %ecx
	movl	%edx, %edi
L757:
	testl	%edi, %edi
	jle	L756
	movl	12(%ebp), %edx
	movl	20(%ebp), %esi
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.p2align 4
	.p2align 3
L760:
	movl	-24(%ebp), %eax
	cmpl	%eax, 20(%ebp)
	jle	L761
	movl	-20(%ebp), %eax
	movl	%esi, -16(%ebp)
	leal	0(,%eax,4), %edi
	xorl	%eax, %eax
	jmp	L763
	.p2align 5
	.p2align 4,,10
	.p2align 3
L762:
	movl	(%ebx,%eax,4), %esi
	movss	(%edx,%eax,4), %xmm0
	addss	(%esi,%edi), %xmm0
	movss	%xmm0, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	-16(%ebp), %eax
	je	L769
L763:
	cmpl	%eax, %ecx
	jg	L762
L769:
	movl	-16(%ebp), %esi
L761:
	movl	8(%ebp), %edi
	addl	$1, -20(%ebp)
	subl	%ecx, %esi
	addl	%ecx, -24(%ebp)
	movl	-20(%ebp), %eax
	addl	-28(%ebp), %edx
	cmpl	%eax, (%edi)
	jg	L760
L756:
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
LFE80:
	.p2align 4
	.def	__book_maptype1_quantvals.isra.0;	.scl	3;	.type	32;	.endef
__book_maptype1_quantvals.isra.0:
LFB82:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	movl	%edx, 8(%esp)
	testl	%edx, %edx
	jg	L800
	movl	$0, 20(%esp)
	movl	20(%esp), %eax
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L800:
	.cfi_restore_state
	movss	LC7, %xmm0
	xorps	%xmm1, %xmm1
	movl	%ebx, -12(%ebp)
	cvtsi2ssl	%eax, %xmm1
	movl	%esi, -8(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%eax, 12(%esp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%esp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, (%esp)
	call	_powf
	movss	LC11, %xmm1
	movss	LC5, %xmm3
	fstps	20(%esp)
	movss	20(%esp), %xmm0
	movaps	%xmm0, %xmm2
	andps	%xmm1, %xmm2
	ucomiss	%xmm2, %xmm3
	jbe	L775
	cvttss2sil	%xmm0, %eax
	xorps	%xmm2, %xmm2
	andnps	%xmm0, %xmm1
	cvtsi2ssl	%eax, %xmm2
	orps	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
L775:
	cvttss2sil	%xmm0, %edi
	movl	12(%esp), %edx
	movl	$1, %eax
	testl	%edi, %edi
	cmovg	%edi, %eax
	testl	%edx, %edx
	jg	L801
L797:
	addl	$1, %eax
	testl	%edx, %edx
	jle	L797
L801:
	movl	%eax, 20(%esp)
	.p2align 4
	.p2align 3
L782:
	movl	8(%esp), %eax
	movl	20(%esp), %esi
	xorl	%edi, %edi
	movl	$1, %ebx
	movl	$1, %ecx
	cltd
	idivl	%esi
	addl	$1, %esi
	movl	%eax, 16(%esp)
	jmp	L780
	.p2align 6
	.p2align 4,,10
	.p2align 3
L803:
	xorl	%edx, %edx
	imull	20(%esp), %ecx
	movl	$2147483647, %eax
	idivl	%esi
	movl	%ebx, %edx
	imull	%esi, %edx
	cmpl	%ebx, %eax
	movl	$2147483647, %ebx
	cmovge	%edx, %ebx
	addl	$1, %edi
	cmpl	12(%esp), %edi
	je	L802
L780:
	cmpl	%ecx, 16(%esp)
	jge	L803
	cmpl	%edi, 12(%esp)
	jg	L783
	cmpl	%ecx, 8(%esp)
	jge	L781
L783:
	subl	$1, 20(%esp)
	jmp	L782
	.p2align 4,,10
	.p2align 3
L802:
	cmpl	8(%esp), %ecx
	jg	L783
L781:
	cmpl	%ebx, 8(%esp)
	jl	L804
	addl	$1, 20(%esp)
	jmp	L782
L804:
	movl	20(%esp), %eax
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-8(%ebp), %esi
	.cfi_restore 6
	movl	-4(%ebp), %edi
	.cfi_restore 7
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE82:
	.p2align 4
	.def	_vorbis_book_init_decode;	.scl	3;	.type	32;	.endef
_vorbis_book_init_decode:
LFB83:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %ecx
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
	movl	%edx, %esi
	pushl	%ebx
	subl	$196, %esp
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0, 48(%eax)
	movl	$0, 52(%eax)
	xorl	%eax, %eax
L806:
	movl	$0, (%ecx,%eax)
	movl	$0, 4(%ecx,%eax)
	movl	$0, 8(%ecx,%eax)
	movl	$0, 12(%ecx,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L806
	movl	4(%esi), %edi
	testl	%edi, %edi
	jle	L808
	movl	8(%esi), %eax
	xorl	%ebx, %ebx
	leal	(%edi,%eax), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L810:
	cmpb	$1, (%eax)
	sbbl	$-1, %ebx
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L810
	movl	%edi, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	(%esi), %eax
	movl	%eax, (%ecx)
	testl	%ebx, %ebx
	jne	L954
	leal	-12(%ebp), %esp
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
L954:
	.cfi_restore_state
	movl	%esi, -168(%ebp)
	movl	%esi, %eax
	movl	4(%esi), %esi
	movl	8(%eax), %edi
	leal	0(,%ebx,4), %eax
	movl	%ecx, -176(%ebp)
	movl	%esi, -192(%ebp)
	movl	%eax, -172(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -160(%ebp)
	testl	%eax, %eax
	je	L857
	leal	-148(%ebp), %edx
	xorl	%eax, %eax
L815:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L815
	movl	$0, (%edx,%eax)
	movl	-192(%ebp), %eax
	testl	%eax, %eax
	jle	L817
	movl	%edi, -184(%ebp)
	addl	%edi, %eax
	movl	%edi, %esi
	movl	%ebx, -188(%ebp)
	movl	%eax, -152(%ebp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L827:
	movzbl	(%esi), %ecx
	testl	%ecx, %ecx
	je	L818
	movl	-148(%ebp,%ecx,4), %ebx
	cmpl	$31, %ecx
	jg	L819
	movl	%ebx, %edi
	shrl	%cl, %edi
	testl	%edi, %edi
	jne	L953
L819:
	leal	1(%eax), %edi
	movl	%edi, -164(%ebp)
	movl	-160(%ebp), %edi
	movl	%ebx, (%edi,%eax,4)
	movl	%ecx, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L824:
	movl	(%edx,%eax,4), %edi
	testl	$1, %edi
	jne	L955
	addl	$1, %edi
	movl	%edi, (%edx,%eax,4)
	subl	$1, %eax
	jne	L824
L823:
	leal	1(%ecx), %eax
	cmpl	$32, %eax
	jle	L826
	jmp	L825
	.p2align 5
	.p2align 4,,10
	.p2align 3
L956:
	movl	-4(%edx,%eax,4), %edi
	leal	(%edi,%edi), %ecx
	movl	%ecx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	$33, %eax
	je	L825
L826:
	movl	%ebx, %ecx
	movl	(%edx,%eax,4), %ebx
	movl	%ebx, %edi
	shrl	%edi
	cmpl	%ecx, %edi
	je	L956
L825:
	movl	-164(%ebp), %eax
L818:
	addl	$1, %esi
	cmpl	-152(%ebp), %esi
	jne	L827
	movl	-184(%ebp), %edi
	movl	-188(%ebp), %ebx
	cmpl	$1, %eax
	je	L828
L817:
	movl	%ebx, -152(%ebp)
	movl	$1, %eax
	jmp	L829
	.p2align 5
	.p2align 4,,10
	.p2align 3
L831:
	addl	$1, %eax
	cmpl	$33, %eax
	je	L957
L829:
	movl	%eax, %ecx
	movl	$-1, %ebx
	negl	%ecx
	shrl	%cl, %ebx
	testl	%ebx, (%edx,%eax,4)
	je	L831
L953:
	movl	-160(%ebp), %eax
	movl	$-1, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-176(%ebp), %eax
	subl	$4, %esp
	call	_vorbis_book_clear
	leal	-12(%ebp), %esp
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
L808:
	.cfi_restore_state
	movl	%edi, 4(%ecx)
	movl	(%esi), %eax
	movl	%eax, (%ecx)
L812:
	xorl	%ebx, %ebx
L964:
	leal	-12(%ebp), %esp
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
L857:
	.cfi_restore_state
	movl	-172(%ebp), %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L955:
	cmpl	$1, %eax
	je	L958
	movl	-152(%ebp,%eax,4), %edi
	addl	%edi, %edi
	movl	%edi, -148(%ebp,%eax,4)
	jmp	L823
	.p2align 4,,10
	.p2align 3
L958:
	addl	$1, -144(%ebp)
	jmp	L823
L828:
	cmpl	$2, -140(%ebp)
	jne	L817
L830:
	movl	$0, -164(%ebp)
	movl	%edi, %edx
	movl	%ebx, -188(%ebp)
	.p2align 4
	.p2align 3
L833:
	movzbl	(%edx), %eax
	testb	%al, %al
	je	L836
	movl	-164(%ebp), %ebx
	movzbl	%al, %esi
	movl	-160(%ebp), %eax
	xorl	%ecx, %ecx
	leal	(%eax,%ebx,4), %ebx
	xorl	%eax, %eax
	movl	%ebx, -184(%ebp)
	movl	(%ebx), %edi
	.p2align 5
	.p2align 4
	.p2align 3
L834:
	movl	%edi, %ebx
	addl	%eax, %eax
	shrl	%cl, %ebx
	addl	$1, %ecx
	andl	$1, %ebx
	orl	%ebx, %eax
	cmpl	%esi, %ecx
	jne	L834
	movl	-184(%ebp), %ebx
	addl	$1, -164(%ebp)
	movl	%eax, (%ebx)
L836:
	addl	$1, %edx
	cmpl	%edx, -152(%ebp)
	jne	L833
	movl	-188(%ebp), %ebx
L832:
	movl	-172(%ebp), %eax
	addl	$15, %eax
	movl	%eax, -152(%ebp)
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	movl	-160(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %esp
	movl	-172(%ebp), %eax
	movl	%ebx, -164(%ebp)
	leal	31(%esp), %esi
	andl	$-16, %esi
	leal	(%edx,%eax), %edi
	movl	%esi, %ebx
	.p2align 4
	.p2align 3
L837:
	movl	(%ecx), %eax
	addl	$4, %ebx
	call	_bitreverse
	movl	%eax, (%ecx)
	movl	%ecx, -4(%ebx)
	addl	$4, %ecx
	cmpl	%edi, %ecx
	jne	L837
	movl	-164(%ebp), %ebx
	movl	$_sort32a, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, (%esp)
	call	_qsort
	movl	-152(%ebp), %eax
	shrl	$2, %eax
	sall	$2, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	leal	31(%esp), %eax
	andl	$-16, %eax
	movl	%eax, %edi
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ecx
	testl	%eax, %eax
	je	L857
	movl	-176(%ebp), %eax
	movl	%ecx, -152(%ebp)
	movl	%ecx, 20(%eax)
	movl	-160(%ebp), %ecx
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L838:
	movl	(%esi,%eax,4), %edx
	subl	%ecx, %edx
	movl	%eax, (%edi,%edx)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	L838
	movl	-160(%ebp), %esi
	movl	-152(%ebp), %ecx
	movl	(%edi), %eax
	movl	(%esi), %edx
	movl	%edx, (%ecx,%eax,4)
	cmpl	$1, %ebx
	je	L839
	movl	%esi, -152(%ebp)
	movl	-176(%ebp), %esi
	movl	$1, %eax
	movl	%esi, -164(%ebp)
	.p2align 5
	.p2align 4
	.p2align 3
L840:
	movl	-164(%ebp), %esi
	movl	(%edi,%eax,4), %edx
	movl	20(%esi), %ecx
	movl	-152(%ebp), %esi
	movl	(%esi,%eax,4), %esi
	addl	$1, %eax
	movl	%esi, (%ecx,%edx,4)
	cmpl	%ebx, %eax
	jne	L840
L839:
	movl	-160(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-168(%ebp), %esi
	subl	$4, %esp
	movl	$0, -152(%ebp)
	movl	12(%esi), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	L959
L841:
	movl	-152(%ebp), %eax
	movl	-176(%ebp), %esi
	movl	%eax, 16(%esi)
	movl	-172(%ebp), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L857
	movl	%eax, 24(%esi)
	movl	-168(%ebp), %esi
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movl	4(%esi), %esi
	testl	%esi, %esi
	jle	L859
	movl	%edi, -152(%ebp)
	movl	-168(%ebp), %edx
	movl	-176(%ebp), %edi
	.p2align 6
	.p2align 4
	.p2align 3
L858:
	movl	8(%edx), %ecx
	cmpb	$0, (%ecx,%eax)
	je	L860
	movl	-152(%ebp), %esi
	movl	%ebx, %ecx
	addl	$1, %ebx
	movl	(%esi,%ecx,4), %esi
	movl	24(%edi), %ecx
	movl	%eax, (%ecx,%esi,4)
L860:
	addl	$1, %eax
	cmpl	%eax, 4(%edx)
	jg	L858
	movl	-152(%ebp), %edi
	movl	%ebx, %eax
L859:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L861
	movl	$0, -172(%ebp)
	movl	-176(%ebp), %esi
	movl	%eax, 28(%esi)
	xorl	%eax, %eax
	movl	$0, 40(%esi)
	movl	-168(%ebp), %esi
	movl	4(%esi), %ebx
	testl	%ebx, %ebx
	jle	L863
	movl	%edi, -160(%ebp)
	movl	-176(%ebp), %esi
	xorl	%ebx, %ebx
	movl	-168(%ebp), %edx
	.p2align 4
	.p2align 3
L862:
	movl	8(%edx), %ecx
	movzbl	(%ecx,%eax), %ecx
	testb	%cl, %cl
	je	L864
	leal	1(%ebx), %edi
	movl	%edi, -152(%ebp)
	movl	-160(%ebp), %edi
	movl	(%edi,%ebx,4), %ebx
	movl	28(%esi), %edi
	movb	%cl, (%edi,%ebx)
	movl	8(%edx), %ecx
	movzbl	(%ecx,%eax), %ecx
	cmpl	40(%esi), %ecx
	jle	L866
	movl	%ecx, 40(%esi)
L866:
	movl	-152(%ebp), %ebx
L864:
	addl	$1, %eax
	cmpl	%eax, 4(%edx)
	jg	L862
	movl	%ebx, -172(%ebp)
	cmpl	$1, %ebx
	je	L960
L863:
	movl	-176(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L888
	bsrl	%eax, %eax
	movl	$4, %ebx
	leal	-3(%eax), %ecx
	movl	$5, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	movl	$8, %eax
	cmpl	%eax, %ecx
	cmovg	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	sall	%cl, %ebx
	movl	%eax, -184(%ebp)
L868:
	movl	-176(%ebp), %esi
	movl	%ecx, 36(%esi)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L844
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-172(%ebp), %ecx
	movl	36(%esi), %eax
	movl	%edi, 32(%esi)
	testl	%ecx, %ecx
	jle	L869
	movl	28(%esi), %edi
	movl	%eax, -164(%ebp)
	movl	%edi, %eax
	xorl	%edi, %edi
	jmp	L874
	.p2align 5
	.p2align 4,,10
	.p2align 3
L871:
	cmpl	%edi, -172(%ebp)
	je	L961
L874:
	movzbl	(%eax,%edi), %ebx
	movl	-164(%ebp), %edx
	movl	%edi, -152(%ebp)
	addl	$1, %edi
	cmpl	%edx, %ebx
	jg	L871
	movl	%edx, %ecx
	movl	$1, %edx
	subl	%ebx, %ecx
	sall	%cl, %edx
	testl	%edx, %edx
	jle	L871
	movl	-152(%ebp), %edx
	movl	20(%esi), %eax
	movl	(%eax,%edx,4), %eax
	call	_bitreverse
	movl	%edi, -160(%ebp)
	xorl	%edx, %edx
	movl	%eax, -164(%ebp)
	.p2align 6
	.p2align 4
	.p2align 3
L873:
	movl	%ebx, %ecx
	movl	%edx, %eax
	movl	-160(%ebp), %ebx
	addl	$1, %edx
	sall	%cl, %eax
	movl	32(%esi), %ecx
	orl	-164(%ebp), %eax
	movl	%ebx, (%ecx,%eax,4)
	movl	-152(%ebp), %eax
	movl	28(%esi), %ebx
	movl	36(%esi), %edi
	movl	%ebx, -168(%ebp)
	movzbl	(%ebx,%eax), %ebx
	movl	%edi, %ecx
	movl	$1, %eax
	subl	%ebx, %ecx
	sall	%cl, %eax
	cmpl	%edx, %eax
	jg	L873
	movl	%edi, -164(%ebp)
	movl	-168(%ebp), %eax
	movl	-160(%ebp), %edi
	cmpl	%edi, -172(%ebp)
	jne	L874
L961:
	movl	-176(%ebp), %esi
	movl	-164(%ebp), %eax
	movl	32(%esi), %edi
L869:
	movl	%eax, %ecx
	movl	$-2, %edx
	movl	%edi, -160(%ebp)
	xorl	%esi, %esi
	notl	%ecx
	movl	-176(%ebp), %edi
	xorl	%ebx, %ebx
	movl	$0, -152(%ebp)
	sall	%cl, %edx
	movl	%eax, %ecx
	movl	%edx, -188(%ebp)
	jmp	L882
	.p2align 4,,10
	.p2align 3
L875:
	addl	$1, -152(%ebp)
	movl	-184(%ebp), %edx
	cmpl	%edx, -152(%ebp)
	je	L812
	movl	32(%edi), %eax
	movl	36(%edi), %ecx
	movl	%eax, -160(%ebp)
L882:
	movl	-152(%ebp), %eax
	negl	%ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	call	_bitreverse
	movl	-160(%ebp), %edx
	leal	(%edx,%eax,4), %eax
	movl	%eax, -160(%ebp)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L875
	movl	%esi, -164(%ebp)
	movl	-172(%ebp), %esi
	jmp	L877
	.p2align 5
	.p2align 4,,10
	.p2align 3
L962:
	movl	20(%edi), %eax
	cmpl	(%eax,%ebx,4), %ecx
	jb	L876
L877:
	movl	%ebx, %edx
	addl	$1, %ebx
	cmpl	%esi, %ebx
	jl	L962
L876:
	movl	-164(%ebp), %esi
	movl	-172(%ebp), %eax
	cmpl	%esi, %eax
	jle	L878
	movl	%edx, -164(%ebp)
	movl	20(%edi), %ebx
	movl	%edi, -168(%ebp)
	movl	-188(%ebp), %edx
	movl	%eax, %edi
	jmp	L879
	.p2align 4
	.p2align 4,,10
	.p2align 3
L880:
	addl	$1, %esi
	cmpl	%esi, %edi
	je	L951
L879:
	movl	(%ebx,%esi,4), %eax
	andl	%edx, %eax
	cmpl	%eax, %ecx
	jnb	L880
L951:
	movl	-164(%ebp), %edx
	movl	-168(%ebp), %edi
L878:
	movl	-172(%ebp), %ebx
	movl	%edx, %ecx
	movl	$1073709056, %eax
	sall	$15, %ecx
	subl	%esi, %ebx
	cmpl	$32768, %edx
	cmovge	%eax, %ecx
	movl	$32767, %eax
	cmpl	%eax, %ebx
	cmovbe	%ebx, %eax
	movl	-160(%ebp), %ebx
	orl	%ecx, %eax
	orl	$-2147483648, %eax
	movl	%eax, (%ebx)
	movl	%edx, %ebx
	jmp	L875
L959:
	movl	16(%esi), %edx
	movl	%edx, %eax
	andl	$2097151, %eax
	movl	%eax, -152(%ebp)
	movl	%edx, %eax
	fildl	-152(%ebp)
	sarl	$21, %eax
	andl	$1023, %eax
	testl	%edx, %edx
	jns	L842
	fchs
L842:
	movl	$-63, %edx
	subl	$788, %eax
	fstpl	(%esp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$63, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 8(%esp)
	call	_ldexp
	movl	-168(%ebp), %eax
	fstpl	-160(%ebp)
	movl	20(%eax), %edx
	movl	%edx, %eax
	andl	$2097151, %eax
	movl	%eax, -152(%ebp)
	movl	%edx, %eax
	fildl	-152(%ebp)
	sarl	$21, %eax
	andl	$1023, %eax
	testl	%edx, %edx
	jns	L843
	fchs
L843:
	movl	$-63, %edx
	subl	$788, %eax
	fstpl	(%esp)
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	movl	$63, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	%eax, 8(%esp)
	call	_ldexp
	movl	-168(%ebp), %esi
	fstpl	-184(%ebp)
	imull	(%esi), %ebx
	sall	$2, %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, -152(%ebp)
	testl	%eax, %eax
	je	L844
	fldl	-160(%ebp)
	fstps	-160(%ebp)
	fldl	-184(%ebp)
	movss	-160(%ebp), %xmm2
	movss	%xmm2, -164(%ebp)
	fstps	-160(%ebp)
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	12(%esi), %eax
	movss	-160(%ebp), %xmm1
	movss	-164(%ebp), %xmm2
	cmpl	$1, %eax
	je	L845
	cmpl	$2, %eax
	jne	L841
	movl	4(%esi), %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	L841
	movl	%edi, -184(%ebp)
	movl	-168(%ebp), %esi
	jmp	L847
	.p2align 5
	.p2align 4,,10
	.p2align 3
L853:
	addl	$1, %ebx
	cmpl	4(%esi), %ebx
	jge	L963
L847:
	movl	8(%esi), %eax
	cmpb	$0, (%eax,%ebx)
	je	L853
	movl	(%esi), %eax
	testl	%eax, %eax
	jle	L854
	movl	-184(%ebp), %edx
	movl	%ecx, -164(%ebp)
	xorps	%xmm3, %xmm3
	movl	(%edx,%ecx,4), %edi
	xorl	%edx, %edx
	movl	%edi, -160(%ebp)
	.p2align 4
	.p2align 3
L856:
	movl	%ebx, %ecx
	movl	32(%esi), %edi
	xorps	%xmm0, %xmm0
	imull	%eax, %ecx
	addl	%edx, %ecx
	cvtsi2ssl	(%edi,%ecx,4), %xmm0
	andps	LC6, %xmm0
	movl	28(%esi), %edi
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	testl	%edi, %edi
	je	L855
	movaps	%xmm0, %xmm3
L855:
	imull	-160(%ebp), %eax
	movl	-152(%ebp), %ecx
	addl	%edx, %eax
	addl	$1, %edx
	movss	%xmm0, (%ecx,%eax,4)
	movl	(%esi), %eax
	cmpl	%edx, %eax
	jg	L856
	movl	-164(%ebp), %ecx
L854:
	addl	$1, %ecx
	jmp	L853
L957:
	movl	-192(%ebp), %eax
	movl	-152(%ebp), %ebx
	testl	%eax, %eax
	jle	L832
	addl	%edi, %eax
	movl	%eax, -152(%ebp)
	jmp	L830
L960:
	movl	-176(%ebp), %eax
	cmpl	$1, 40(%eax)
	jne	L863
	movl	$1, 36(%eax)
	movl	%eax, %esi
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L844
	movl	$0, (%eax)
	xorl	%ebx, %ebx
	movl	%eax, 32(%esi)
	movl	$1, 4(%eax)
	movl	32(%esi), %eax
	movl	$1, (%eax)
	jmp	L964
L845:
	movl	-168(%ebp), %esi
	movss	%xmm2, -188(%ebp)
	movss	%xmm1, -184(%ebp)
	movl	4(%esi), %ebx
	movl	(%esi), %eax
	movl	%ebx, %edx
	call	__book_maptype1_quantvals.isra.0
	xorl	%edx, %edx
	movl	$0, -160(%ebp)
	movl	%eax, -164(%ebp)
	testl	%ebx, %ebx
	jle	L841
	movl	%edi, -192(%ebp)
	movss	-188(%ebp), %xmm2
	movss	-184(%ebp), %xmm1
	jmp	L848
	.p2align 6
	.p2align 4,,10
	.p2align 3
L849:
	addl	$1, -160(%ebp)
	movl	-160(%ebp), %eax
	cmpl	4(%esi), %eax
	jge	L965
L848:
	movl	8(%esi), %eax
	movl	-160(%ebp), %ebx
	cmpb	$0, (%eax,%ebx)
	je	L849
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	jle	L850
	movl	-192(%ebp), %eax
	movl	$1, %edi
	xorl	%ebx, %ebx
	xorps	%xmm3, %xmm3
	movl	%edx, -188(%ebp)
	movl	(%eax,%edx,4), %eax
	movl	%eax, -184(%ebp)
	.p2align 4
	.p2align 3
L852:
	movl	-160(%ebp), %eax
	xorps	%xmm0, %xmm0
	cltd
	idivl	%edi
	cltd
	idivl	-164(%ebp)
	movl	32(%esi), %eax
	cvtsi2ssl	(%eax,%edx,4), %xmm0
	andps	LC6, %xmm0
	movl	28(%esi), %eax
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm3, %xmm0
	testl	%eax, %eax
	je	L851
	movaps	%xmm0, %xmm3
L851:
	imull	-184(%ebp), %ecx
	movl	-152(%ebp), %eax
	imull	-164(%ebp), %edi
	addl	%ebx, %ecx
	addl	$1, %ebx
	movss	%xmm0, (%eax,%ecx,4)
	movl	(%esi), %ecx
	cmpl	%ebx, %ecx
	jg	L852
	movl	-188(%ebp), %edx
L850:
	addl	$1, %edx
	jmp	L849
L965:
	movl	-192(%ebp), %edi
	jmp	L841
L963:
	movl	-184(%ebp), %edi
	jmp	L841
L844:
	movl	$4, %eax
	call	__Z13handle_memerri
L861:
	movl	%ebx, %eax
	call	__Z13handle_memerri
L888:
	movl	$32, -184(%ebp)
	movl	$128, %ebx
	movl	$5, %ecx
	jmp	L868
	.cfi_endproc
LFE83:
	.section .rdata,"dr"
LC21:
	.ascii "divider must be != 0\0"
LC22:
	.ascii "libdivide_internal_u64_gen\0"
	.align 4
LC23:
	.ascii "libdivide.h:%d: %s(): Error: %s\12\0"
	.text
	.p2align 4
	.globl	_divideu64.lto_priv.0
	.def	_divideu64.lto_priv.0;	.scl	2;	.type	32;	.endef
_divideu64.lto_priv.0:
LFB88:
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
	subl	$116, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %ecx
	movl	%eax, 84(%esp)
	movl	__ZZ9divideu64E5lastd, %eax
	movl	%edx, 88(%esp)
	movl	8(%ebp), %edx
	movl	%ecx, 96(%esp)
	xorl	%edx, %eax
	movl	%edx, 92(%esp)
	movl	__ZZ9divideu64E5lastd+4, %edx
	xorl	%ecx, %edx
	orl	%edx, %eax
	je	L994
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	movl	%esi, %eax
	movl	%esi, __ZZ9divideu64E5lastd
	orl	%edi, %eax
	movl	%edi, __ZZ9divideu64E5lastd+4
	je	L995
	movl	96(%esp), %edx
	testl	%edx, %edx
	je	L970
	bsrl	%edx, %eax
	xorl	$31, %eax
	movl	%eax, 64(%esp)
L971:
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	movl	$63, %eax
	subl	64(%esp), %eax
	movl	%eax, 60(%esp)
	movl	%eax, %edi
	movl	%esi, %edx
	movb	%al, 76(%esp)
	movl	%ebx, %eax
	addl	$-1, %eax
	adcl	$-1, %edx
	andl	%ebx, %eax
	andl	%esi, %edx
	orl	%edx, %eax
	jne	L972
	movl	$0, __ZZ9divideu64E4udiv
	movl	%edi, %eax
	movl	$0, __ZZ9divideu64E4udiv+4
	movb	%al, __ZZ9divideu64E4udiv+8
L973:
	movzbl	76(%esp), %ecx
	movl	88(%esp), %edx
	xorl	%edi, %edi
	movl	84(%esp), %eax
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	cmovne	%edi, %edx
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
L970:
	.cfi_restore_state
	bsrl	92(%esp), %eax
	xorl	$31, %eax
	addl	$32, %eax
	movl	%eax, 64(%esp)
	jmp	L971
	.p2align 4,,10
	.p2align 3
L994:
	movzbl	__ZZ9divideu64E4udiv+8, %eax
	movl	__ZZ9divideu64E4udiv+4, %edx
	movb	%al, 76(%esp)
	movl	__ZZ9divideu64E4udiv, %eax
	movl	%edx, 96(%esp)
	movl	%eax, 92(%esp)
L968:
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	movl	%esi, %eax
	orl	%edi, %eax
	je	L973
L986:
	movl	84(%esp), %eax
	mull	92(%esp)
	movl	96(%esp), %edi
	movl	84(%esp), %eax
	movl	88(%esp), %ebx
	movl	%edx, %esi
	mull	%edi
	addl	%esi, %eax
	movl	%ebx, %esi
	adcl	$0, %edx
	movl	%eax, 68(%esp)
	movl	%ebx, %eax
	movl	68(%esp), %ecx
	movl	%edx, 72(%esp)
	mull	92(%esp)
	xorl	%ebx, %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	72(%esp), %ebx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, 92(%esp)
	movl	%esi, %eax
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	movl	%edx, 96(%esp)
	mull	%edi
	addl	%ecx, %eax
	adcl	%ebx, %edx
	addl	92(%esp), %eax
	adcl	96(%esp), %edx
	testb	$64, 76(%esp)
	je	L988
	movl	84(%esp), %ebx
	movl	88(%esp), %esi
	movzbl	76(%esp), %ecx
	subl	%eax, %ebx
	sbbl	%edx, %esi
	shrdl	$1, %esi, %ebx
	shrl	%esi
	addl	%ebx, %eax
	adcl	%esi, %edx
	xorl	%ebx, %ebx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
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
L972:
	.cfi_restore_state
	movzbl	60(%esp), %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	movl	92(%esp), %esi
	movl	96(%esp), %edi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	cmpl	%esi, %eax
	movl	%eax, 44(%esp)
	movl	%edx, %eax
	sbbl	%edi, %eax
	movl	%edx, 48(%esp)
	jnc	L996
	movzbl	64(%esp), %ecx
	movl	92(%esp), %eax
	xorl	%ebx, %ebx
	movl	$0, 12(%esp)
	movl	96(%esp), %edx
	movl	48(%esp), %esi
	shldl	%cl, %eax, %edx
	sall	%cl, %eax
	testb	$32, %cl
	cmovne	%eax, %edx
	cmovne	%ebx, %eax
	movl	44(%esp), %ebx
	xorl	%edi, %edi
	shldl	%cl, %ebx, %esi
	sall	%cl, %ebx
	testb	$32, %cl
	movl	%edx, 72(%esp)
	cmovne	%ebx, %esi
	cmovne	%edi, %ebx
	movl	72(%esp), %edi
	movl	%eax, 68(%esp)
	leal	108(%esp), %eax
	movl	%ebx, 52(%esp)
	movl	%edi, 20(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 56(%esp)
	movl	%eax, 16(%esp)
	movl	%esi, 4(%esp)
	call	___udivmoddi4
	movl	68(%esp), %edi
	movl	108(%esp), %ebx
	xorl	%ecx, %ecx
	movl	%eax, 28(%esp)
	imull	%edx, %edi
	movl	%edx, 32(%esp)
	movl	%eax, 36(%esp)
	movl	%edx, 40(%esp)
	mull	68(%esp)
	addl	%edi, %edx
	cmpl	%eax, %ecx
	movl	%ebx, %edi
	sbbl	%edx, %edi
	jnc	L977
	subl	%ecx, %eax
	movl	68(%esp), %ecx
	sbbl	%ebx, %edx
	movl	72(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L978
	movl	$2, %eax
	xorl	%edx, %edx
L978:
	movl	28(%esp), %ebx
	movl	32(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 36(%esp)
	movl	%esi, 40(%esp)
L977:
	movl	36(%esp), %eax
	movl	72(%esp), %edi
	movl	$0, 12(%esp)
	movl	52(%esp), %ecx
	imull	%eax, %edi
	mull	68(%esp)
	movl	%ecx, %ebx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addl	%edi, %edx
	subl	%eax, %esi
	leal	100(%esp), %eax
	movl	%ebx, %edi
	movl	%eax, 16(%esp)
	movl	20(%esp), %eax
	sbbl	%edx, %edi
	movl	%edi, 32(%esp)
	movl	%edi, 4(%esp)
	movl	%esi, 28(%esp)
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	call	___udivmoddi4
	movl	68(%esp), %ecx
	movl	100(%esp), %ebx
	movl	%eax, 20(%esp)
	imull	%edx, %ecx
	movl	%edx, 24(%esp)
	movl	%ebx, %edi
	movl	%eax, 52(%esp)
	movl	%edx, 56(%esp)
	mull	68(%esp)
	addl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	jnc	L979
	subl	%ecx, %eax
	movl	68(%esp), %ecx
	sbbl	%ebx, %edx
	movl	72(%esp), %ebx
	cmpl	%eax, %ecx
	movl	$1, %eax
	movl	%ebx, %edi
	sbbl	%edx, %edi
	movl	$0, %edx
	jnc	L980
	movl	$2, %eax
	xorl	%edx, %edx
L980:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	subl	%eax, %ebx
	sbbl	%edx, %esi
	movl	%ebx, 52(%esp)
	movl	%esi, 56(%esp)
L979:
	xorl	%ebx, %ebx
	movl	52(%esp), %edx
	movl	52(%esp), %ecx
	movl	%ebx, 24(%esp)
	movl	28(%esp), %ebx
	movl	%ecx, 20(%esp)
	movzbl	64(%esp), %ecx
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	movl	96(%esp), %edi
	movl	%esi, 32(%esp)
	movl	68(%esp), %esi
	movl	%ebx, 28(%esp)
	movl	72(%esp), %ebx
	movl	%esi, %eax
	movl	32(%esp), %esi
	imull	%edx, %ebx
	mull	%edx
	addl	%ebx, %edx
	movl	28(%esp), %ebx
	subl	%eax, %ebx
	sbbl	%edx, %esi
	xorl	%eax, %eax
	shrdl	%cl, %esi, %ebx
	shrl	%cl, %esi
	testb	$32, %cl
	cmovne	%esi, %ebx
	cmovne	%eax, %esi
	movl	36(%esp), %eax
	movl	%ebx, %ecx
	movl	%esi, %ebx
	movl	92(%esp), %esi
	movl	%eax, %edx
	movl	20(%esp), %eax
	orl	24(%esp), %edx
	subl	%ecx, %esi
	movl	%edx, 72(%esp)
	movl	72(%esp), %edx
	sbbl	%ebx, %edi
	movl	%eax, 68(%esp)
	cmpl	44(%esp), %esi
	movl	%edi, %eax
	sbbl	48(%esp), %eax
	movl	68(%esp), %eax
	jnc	L981
	addl	$1, %eax
	adcl	$0, %edx
	movl	%eax, 92(%esp)
	movl	%edx, 96(%esp)
L982:
	movl	92(%esp), %eax
	movl	96(%esp), %edx
	movl	%eax, __ZZ9divideu64E4udiv
	movzbl	76(%esp), %eax
	movl	%edx, __ZZ9divideu64E4udiv+4
	movb	%al, __ZZ9divideu64E4udiv+8
	jmp	L968
	.p2align 4,,10
	.p2align 3
L988:
	movzbl	76(%esp), %ecx
	xorl	%ebx, %ebx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	andl	$32, %ecx
	cmovne	%edx, %eax
	cmovne	%ebx, %edx
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
L981:
	.cfi_restore_state
	addl	%eax, %eax
	adcl	%edx, %edx
	movl	%eax, 76(%esp)
	movl	%ecx, %eax
	addl	%ecx, %eax
	movl	%edx, 80(%esp)
	movl	%ebx, %edx
	adcl	%ebx, %edx
	cmpl	%ecx, %eax
	movl	%edx, %edi
	sbbl	%ebx, %edi
	jc	L983
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	cmpl	%ebx, %eax
	movl	%edx, %eax
	sbbl	%esi, %eax
	jc	L997
L983:
	movl	76(%esp), %ecx
	movl	80(%esp), %ebx
	movzbl	60(%esp), %eax
	addl	$2, %ecx
	adcl	$0, %ebx
	orl	$64, %eax
	movl	%ecx, 92(%esp)
	movl	%ebx, 96(%esp)
	movb	%al, 76(%esp)
	jmp	L982
	.p2align 4,,10
	.p2align 3
L996:
	movl	44(%esp), %eax
	addl	$1, %esi
	movl	48(%esp), %edx
	adcl	$0, %edi
	cmpl	%eax, %esi
	sbbl	%edx, %edi
	jnc	L998
	movl	$0, __ZZ9divideu64E4udiv
	movzbl	60(%esp), %eax
	movl	$0, __ZZ9divideu64E4udiv+4
	movb	%al, __ZZ9divideu64E4udiv+8
	jmp	L973
	.p2align 4,,10
	.p2align 3
L997:
	movl	76(%esp), %esi
	movl	80(%esp), %edi
	movzbl	60(%esp), %eax
	addl	$1, %esi
	adcl	$0, %edi
	orl	$64, %eax
	movl	%esi, 92(%esp)
	movl	%edi, 96(%esp)
	movb	%al, 76(%esp)
	movl	%esi, __ZZ9divideu64E4udiv
	movl	%edi, __ZZ9divideu64E4udiv+4
	movb	%al, __ZZ9divideu64E4udiv+8
	jmp	L986
	.p2align 4,,10
	.p2align 3
L998:
	movl	$0, __ZZ9divideu64E4udiv
	movl	%ecx, %eax
	movl	$0, __ZZ9divideu64E4udiv+4
	orl	$64, %eax
	movb	%al, 76(%esp)
	movb	%al, __ZZ9divideu64E4udiv+8
	jmp	L973
L995:
	movl	$2, (%esp)
	call	*__imp____acrt_iob_func
	movl	$LC21, 16(%esp)
	movl	$LC22, 12(%esp)
	movl	$1033, 8(%esp)
	movl	$LC23, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	call	_abort
	.cfi_endproc
LFE88:
	.p2align 4
	.globl	__Z12MV_PlayVoiceP9VoiceNode
	.def	__Z12MV_PlayVoiceP9VoiceNode;	.scl	2;	.type	32;	.endef
__Z12MV_PlayVoiceP9VoiceNode:
LFB89:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$20, %esp
	.cfi_def_cfa_offset 36
	movl	__tls_index, %esi
	movl	%fs:44, %ebx
	movl	(%ebx,%esi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %edi
	movl	%edi, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1013
L1000:
	movl	_VoiceList, %eax
	cmpl	$_VoiceList, %eax
	je	L1001
	movl	120(%ecx), %edx
	jmp	L1002
	.p2align 4
	.p2align 4,,10
	.p2align 3
L1003:
	movl	(%eax), %eax
	cmpl	$_VoiceList, %eax
	je	L1001
L1002:
	cmpl	120(%eax), %edx
	jg	L1003
L1001:
	movl	%eax, (%ecx)
	movl	4(%eax), %edx
	movl	%edx, 4(%ecx)
	movl	%ecx, (%edx)
	movl	%ecx, 4(%eax)
	movl	60(%ecx), %edx
	movl	56(%ecx), %eax
	movl	%edx, 52(%ecx)
	movl	%eax, 48(%ecx)
	movl	$0, 112(%ecx)
	movl	(%ebx,%esi,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L1014
	js	L1015
L999:
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
L1014:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+32(,%eax,8), %eax
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
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L1013:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	movl	%ecx, 16(%esp)
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	movl	16(%esp), %ecx
	jmp	L1000
	.p2align 4,,10
	.p2align 3
L1015:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L999
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L999
	.cfi_endproc
LFE89:
	.section .rdata,"dr"
	.align 4
LC24:
	.ascii "No voice found for handle 0x%08x\0"
	.align 4
LC25:
	.ascii "source/audiolib/src/multivoc.cpp\0"
	.text
	.p2align 4
	.globl	__Z15MV_BeginServicei
	.def	__Z15MV_BeginServicei;	.scl	2;	.type	32;	.endef
__Z15MV_BeginServicei:
LFB90:
	.cfi_startproc
	movl	_MV_Installed, %edx
	testl	%edx, %edx
	je	L1031
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	testl	%eax, %eax
	jle	L1018
	cmpl	_MV_MaxVoices, %eax
	jg	L1018
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	%ebx, 28(%esp)
	movl	-4(%edx,%eax,4), %eax
	testl	%eax, %eax
	.cfi_offset 3, -12
	je	L1034
	movl	124(%eax), %edx
	testl	%edx, %edx
	je	L1037
	movzbl	4(%edx), %edx
	subl	$3, %edx
	movl	__tls_index, %ebx
	movl	%fs:44, %ecx
	cmpb	$1, %dl
	ja	L1038
L1022:
	movl	(%ecx,%ebx,4), %ecx
	movl	_MV_Locked@secrel32(%ecx), %edx
	leal	1(%edx), %ebx
	movl	%ebx, _MV_Locked@secrel32(%ecx)
	testl	%edx, %edx
	je	L1039
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1037:
	.cfi_restore_state
	movl	__tls_index, %ebx
	movl	%fs:44, %ecx
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1031:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1039:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -12
	movl	_ASS_PCMSoundDriver, %edx
	movl	%eax, 20(%esp)
	leal	(%edx,%edx,8), %edx
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%edx,8)
	movl	20(%esp), %eax
	movl	28(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	addl	$36, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1034:
	.cfi_restore_state
	movl	28(%esp), %ebx
	.cfi_restore 3
L1020:
	movl	$4, _MV_ErrorCode
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1018:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %ecx
	cmpl	%ecx, %edx
	cmovl	%ecx, %edx
	cmpl	$-1, %edx
	jl	L1020
	movl	%eax, 16(%esp)
	movl	$LC24, 12(%esp)
	movl	$342, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-1, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1020
	.p2align 4,,10
	.p2align 3
L1038:
	.cfi_offset 3, -12
	movl	%esi, 32(%esp)
	.cfi_offset 6, -8
	movl	124(%eax), %esi
	movzbl	4(%esi), %edx
	subl	$3, %edx
	cmpb	$1, %dl
	ja	L1040
	movl	32(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1022
	.p2align 4,,10
	.p2align 3
L1040:
	.cfi_restore_state
	movl	(%ecx,%ebx,4), %edx
	movl	%eax, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	__ZN5async6detailL19thread_wait_handlerE.lto_priv.0@secrel32(%edx), %edx
	movl	%esi, (%esp)
	call	*%edx
	movzbl	4(%esi), %edx
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	32(%esp), %esi
	.cfi_restore 6
	jmp	L1022
	.cfi_endproc
LFE90:
	.p2align 4
	.globl	_MV_Kill.constprop.0
	.def	_MV_Kill.constprop.0;	.scl	2;	.type	32;	.endef
_MV_Kill.constprop.0:
LFB97:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	call	__Z15MV_BeginServicei
	testl	%eax, %eax
	je	L1046
	call	__ZL12MV_StopVoiceP9VoiceNodeb.constprop.0
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	subl	$1, %eax
	movl	%eax, _MV_Locked@secrel32(%edx)
	je	L1048
	js	L1049
L1044:
	xorl	%eax, %eax
L1041:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1048:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %edx
	movl	%eax, 16(%esp)
	leal	(%edx,%edx,8), %edx
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%edx,8)
	movl	16(%esp), %eax
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1049:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1044
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1044
L1046:
	movl	$-1, %eax
	jmp	L1041
	.cfi_endproc
LFE97:
	.p2align 4
	.globl	_MV_KillAllVoices.constprop.0
	.def	_MV_KillAllVoices.constprop.0;	.scl	2;	.type	32;	.endef
_MV_KillAllVoices.constprop.0:
LFB101:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	_MV_Installed, %eax
	movl	%ebx, 16(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -12
	je	L1062
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	%fs:44, %ebx
	movl	__tls_index, %esi
	movl	(%ebx,%esi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1073
L1052:
	movl	_VoiceList+4, %eax
	cmpl	$_VoiceList, _VoiceList
	je	L1057
L1069:
	cmpl	$_VoiceList, %eax
	je	L1057
L1075:
	cmpl	$2147483647, 120(%eax)
	je	L1074
	movl	116(%eax), %eax
	call	_MV_Kill.constprop.0
	movl	_VoiceList+4, %eax
	cmpl	$_VoiceList, %eax
	jne	L1075
L1057:
	movl	(%ebx,%esi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %ebx
	subl	$1, %ebx
	movl	%ebx, _MV_Locked@secrel32(%edx)
	je	L1076
	js	L1077
L1055:
	movl	20(%esp), %esi
	.cfi_restore 6
	xorl	%ebx, %ebx
L1050:
	movl	%ebx, %eax
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1074:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	4(%eax), %eax
	jmp	L1069
	.p2align 4,,10
	.p2align 3
L1076:
	movl	_ASS_PCMSoundDriver, %edx
	leal	(%edx,%edx,8), %edx
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%edx,8)
	movl	%ebx, %eax
	movl	20(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1073:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	jmp	L1052
	.p2align 4,,10
	.p2align 3
L1077:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1055
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1055
L1062:
	.cfi_restore 6
	movl	$-1, %ebx
	jmp	L1050
	.cfi_endproc
LFE101:
	.p2align 4
	.globl	__Z13MV_AllocVoiceij
	.def	__Z13MV_AllocVoiceij;	.scl	2;	.type	32;	.endef
__Z13MV_AllocVoiceij:
LFB102:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 3, -20
	movl	%fs:44, %eax
	movl	__tls_index, %edi
	movl	%edx, -16(%ebp)
	movl	(%eax,%edi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1123
L1079:
	movl	_VoicePool, %ebx
	movl	%ebx, -20(%ebp)
	cmpl	$_VoicePool, %ebx
	je	L1124
L1087:
	movl	4(%ebx), %edx
	movl	(%ebx), %eax
	movl	%eax, (%edx)
	movl	4(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	$1, %eax
	movl	%ebx, (%ebx)
	movl	_MV_MaxVoices, %edi
	movl	%ebx, 4(%ebx)
	movl	__ZL10MV_Handles.lto_priv.0, %esi
	jmp	L1091
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1126:
	leal	(%esi,%eax,4), %ecx
	movl	%edx, %eax
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	L1125
L1091:
	leal	1(%eax), %edx
	cmpl	%edx, %edi
	jge	L1126
	movl	%esi, %ecx
	movl	$1, %eax
	movl	(%ecx), %edx
	testl	%edx, %edx
	jne	L1091
L1125:
	movl	%ebx, (%ecx)
	movl	__tls_index, %esi
	movl	%eax, 116(%ebx)
	movl	%fs:44, %eax
	movl	$0, (%ebx)
	movl	(%eax,%esi,4), %edx
	movl	$0, 96(%ebx)
	movl	$0, 80(%ebx)
	subl	$1, _MV_Locked@secrel32(%edx)
	movl	$0, 4(%ebx)
	je	L1127
	js	L1128
L1093:
	movl	-16(%ebp), %eax
	testl	%eax, %eax
	jne	L1129
L1078:
	movl	-20(%ebp), %eax
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
L1123:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	jmp	L1079
	.p2align 4,,10
	.p2align 3
L1129:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L1095
	movl	-16(%ebp), %edi
	cmpl	84(%ebx), %edi
	je	L1078
	cmpb	$3, 64(%ebx)
	jbe	L1095
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	movl	$0, 20(%ebx)
L1095:
	movl	-16(%ebp), %esi
	movl	%esi, 84(%ebx)
	movl	$16, 4(%esp)
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj
	subl	$8, %esp
	testl	%eax, %eax
	je	L1098
	movl	%eax, 20(%ebx)
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-20(%ebp), %eax
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
L1127:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1124:
	cmpl	$_VoicePool, _VoicePool+4
	jne	L1087
	movl	_VoiceList, %edx
	cmpl	$_VoiceList, %edx
	je	L1081
	movl	%edx, %eax
	jmp	L1085
	.p2align 4,,10
	.p2align 3
L1132:
	je	L1130
L1082:
	movl	(%eax), %eax
	cmpl	$_VoiceList, %eax
	je	L1131
L1085:
	movl	120(%edx), %edi
	cmpl	%edi, 120(%eax)
	jge	L1132
	movl	%eax, %edx
	jmp	L1082
	.p2align 4,,10
	.p2align 3
L1128:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1093
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1093
	.p2align 4,,10
	.p2align 3
L1130:
	movl	48(%edx), %edi
	cmpl	%edi, 48(%eax)
	jge	L1082
	movl	52(%edx), %edi
	cmpl	%edi, 52(%eax)
	cmovl	%eax, %edx
	jmp	L1082
L1131:
	cmpl	$_VoiceList, %edx
	je	L1081
	cmpl	%esi, 120(%edx)
	jg	L1081
	movl	116(%edx), %eax
	testl	%eax, %eax
	jg	L1133
L1081:
	movl	%fs:44, %eax
	movl	__tls_index, %edi
	movl	(%eax,%edi,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L1134
	js	L1135
L1089:
	movl	$0, -20(%ebp)
	jmp	L1078
L1098:
	movl	-16(%ebp), %eax
	call	__Z13handle_memerri
L1133:
	movl	__ZL10MV_Handles.lto_priv.0, %edx
	movl	_MV_Installed, %esi
	movl	-4(%edx,%eax,4), %edx
	testl	%esi, %esi
	je	L1081
	testl	%edx, %edx
	je	L1081
	movl	112(%edx), %ecx
	testl	%ecx, %ecx
	jne	L1086
	call	_MV_Kill.constprop.0
	movl	_VoicePool, %ebx
L1086:
	movl	%ebx, -20(%ebp)
	cmpl	$_VoicePool, %ebx
	jne	L1087
	cmpl	$_VoicePool, _VoicePool+4
	jne	L1087
	jmp	L1081
	.p2align 4,,10
	.p2align 3
L1134:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	jmp	L1089
L1135:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1089
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1089
	.cfi_endproc
LFE102:
	.p2align 4
	.globl	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	.def	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii;	.scl	2;	.type	32;	.endef
__Z17MV_SetVoiceVolumeP9VoiceNodeiiii:
LFB106:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_MV_Channels, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%eax, %ebx
	movl	%ecx, %eax
	movl	%edx, %ecx
	cmpl	$1, %esi
	cmovne	16(%esp), %ecx
	cmove	%edx, %eax
	movl	$257, %edx
	sall	$16, %eax
	imull	%edx
	testl	%edx, %edx
	js	L1144
	movl	%eax, %edi
	sall	$16, %ecx
	shrdl	$16, %edx, %edi
	movl	%ecx, %eax
	movl	$257, %edx
	imull	%edx
	testl	%edx, %edx
	js	L1145
L1140:
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
L1141:
	movl	20(%esp), %eax
	movl	%edi, 56(%ebx)
	movl	%ecx, 60(%ebx)
	movl	%eax, 76(%ebx)
	xorl	%eax, %eax
	cmpl	$16, 68(%ebx)
	sete	%al
	xorl	%edx, %edx
	addl	%eax, %eax
	cmpl	$2, 72(%ebx)
	sete	%dl
	sall	$2, %edx
	orl	%edx, %eax
	xorl	%edx, %edx
	cmpl	$1, %esi
	sete	%dl
	orl	%edx, %eax
	movl	__ZZ18MV_SetVoiceMixModeP9VoiceNodeE7mixslut.lto_priv.0(,%eax,4), %eax
	movl	%eax, 12(%ebx)
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
L1144:
	.cfi_restore_state
	addl	$-1, %eax
	adcl	$-1, %edx
	sall	$16, %ecx
	shrdl	$16, %edx, %eax
	movl	$257, %edx
	leal	1(%eax), %edi
	movl	%ecx, %eax
	imull	%edx
	testl	%edx, %edx
	jns	L1140
L1145:
	addl	$-1, %eax
	adcl	$-1, %edx
	shrdl	$16, %edx, %eax
	leal	1(%eax), %ecx
	jmp	L1141
	.cfi_endproc
LFE106:
	.p2align 4
	.globl	_MV_Pan3D
	.def	_MV_Pan3D;	.scl	2;	.type	32;	.endef
_MV_Pan3D:
LFB110:
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
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%ecx, %ecx
	js	L1162
	andl	$127, %edx
	cmpl	$255, %ecx
	jg	L1148
	testl	%ecx, %ecx
	jne	L1150
	sall	$8, %edx
	movzbl	_MV_PanTable+1(%edx), %ebx
	movzbl	_MV_PanTable(%edx), %edi
L1151:
	movl	$255, %esi
	subl	%ecx, %esi
L1152:
	call	__Z15MV_BeginServicei
	testl	%eax, %eax
	je	L1158
	movl	76(%eax), %edx
	movl	%ebx, (%esp)
	movl	%edi, %ecx
	movl	%edx, 4(%esp)
	movl	%esi, %edx
	call	__Z17MV_SetVoiceVolumeP9VoiceNodeiiii
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	movl	_MV_Locked@secrel32(%edx), %ebx
	subl	$1, %ebx
	movl	%ebx, _MV_Locked@secrel32(%edx)
	je	L1163
	js	L1164
L1155:
	xorl	%ebx, %ebx
L1146:
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
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
L1148:
	.cfi_restore_state
	sall	$8, %edx
	xorl	%esi, %esi
	movzbl	_MV_PanTable+255(%edx), %ebx
	movzbl	_MV_PanTable+254(%edx), %edi
	jmp	L1152
	.p2align 4,,10
	.p2align 3
L1162:
	addl	$64, %edx
	andl	$127, %edx
	cmpl	$-255, %ecx
	jl	L1148
	negl	%ecx
L1150:
	movl	%ecx, %ebx
	sall	$7, %edx
	xorl	%esi, %esi
	sall	$7, %ebx
	sarl	$8, %ebx
	addl	%ebx, %edx
	movzbl	_MV_PanTable+1(%edx,%edx), %ebx
	movzbl	_MV_PanTable(%edx,%edx), %edi
	cmpl	$255, %ecx
	je	L1152
	jmp	L1151
	.p2align 4,,10
	.p2align 3
L1163:
	movl	_ASS_PCMSoundDriver, %edx
	leal	(%edx,%edx,8), %edx
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%edx,8)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
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
L1164:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1155
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1155
L1158:
	movl	$-1, %ebx
	jmp	L1146
	.cfi_endproc
LFE110:
	.p2align 4
	.globl	_MV_SetReverb
	.def	_MV_SetReverb;	.scl	2;	.type	32;	.endef
_MV_SetReverb:
LFB112:
	.cfi_startproc
	testl	%eax, %eax
	jg	L1168
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
L1166:
	shrdl	$16, %edx, %eax
	movl	%ecx, __ZL14MV_ReverbLevel.lto_priv.0
	movl	%eax, __ZL15MV_ReverbVolume.lto_priv.0
	ret
L1168:
	sall	$7, %eax
	movl	$516, %edx
	sarl	$8, %eax
	movl	%eax, %ecx
	sall	$16, %eax
	imull	%edx
	jmp	L1166
	.cfi_endproc
LFE112:
	.p2align 4
	.globl	_MV_SetVolume
	.def	_MV_SetVolume;	.scl	2;	.type	32;	.endef
_MV_SetVolume:
LFB113:
	.cfi_startproc
	sall	$16, %eax
	movl	$257, %edx
	imull	%edx
	testl	%edx, %edx
	js	L1172
	movl	%eax, %ecx
	shrdl	$16, %edx, %ecx
	movl	%ecx, _MV_GlobalVolume
	ret
	.p2align 4,,10
	.p2align 3
L1172:
	addl	$-1, %eax
	adcl	$-1, %edx
	shrdl	$16, %edx, %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_GlobalVolume
	ret
	.cfi_endproc
LFE113:
	.p2align 4
	.globl	_MV_HookMusicRoutine
	.def	_MV_HookMusicRoutine;	.scl	2;	.type	32;	.endef
_MV_HookMusicRoutine:
LFB114:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	%eax, %ecx
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ebx
	movl	%ebx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1174
	movl	%ecx, __ZL16MV_MusicCallback
	movl	%eax, _MV_Locked@secrel32(%edx)
L1175:
	testl	%eax, %eax
	js	L1178
L1173:
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1174:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	movl	16(%esp), %edx
	movl	20(%esp), %ecx
	movl	_MV_Locked@secrel32(%edx), %eax
	movl	%ecx, __ZL16MV_MusicCallback
	subl	$1, %eax
	movl	%eax, _MV_Locked@secrel32(%edx)
	jne	L1175
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+32(,%eax,8), %eax
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L1178:
	.cfi_restore_state
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1173
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1173
	.cfi_endproc
LFE114:
	.p2align 4
	.globl	_MV_UnhookMusicRoutine
	.def	_MV_UnhookMusicRoutine;	.scl	2;	.type	32;	.endef
_MV_UnhookMusicRoutine:
LFB115:
	.cfi_startproc
	movl	__ZL16MV_MusicCallback, %eax
	testl	%eax, %eax
	je	L1184
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1181
	movl	$0, __ZL16MV_MusicCallback
	movl	%eax, _MV_Locked@secrel32(%edx)
L1182:
	testl	%eax, %eax
	js	L1187
L1179:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1181:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	movl	%edx, 16(%esp)
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	movl	16(%esp), %edx
	movl	$0, __ZL16MV_MusicCallback
	movl	_MV_Locked@secrel32(%edx), %eax
	subl	$1, %eax
	movl	%eax, _MV_Locked@secrel32(%edx)
	jne	L1182
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+32(,%eax,8), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.p2align 4,,10
	.p2align 3
L1184:
	ret
	.p2align 4,,10
	.p2align 3
L1187:
	.cfi_def_cfa_offset 24
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1179
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1179
	.cfi_endproc
LFE115:
	.section .rdata,"dr"
LC26:
	.ascii "Multivoc ok.\0"
LC27:
	.ascii "Multivoc not installed.\0"
	.align 4
LC28:
	.ascii "Unsupported sound driver selected.\0"
	.align 4
LC29:
	.ascii "No free voices available to Multivoc.\0"
	.align 4
LC30:
	.ascii "No voice with matching handle found.\0"
	.align 4
LC31:
	.ascii "Invalid file passed in to Multivoc.\0"
LC32:
	.ascii "Unknown Multivoc error code.\0"
LC33:
	.ascii "No sound driver selected.\0"
	.text
	.p2align 4
	.globl	_MV_ErrorString
	.def	_MV_ErrorString;	.scl	2;	.type	32;	.endef
_MV_ErrorString:
LFB116:
	.cfi_startproc
	movl	_MV_ErrorCode, %edx
L1189:
	addl	$1, %eax
	cmpl	$6, %eax
	ja	L1190
	jmp	*L1192(,%eax,4)
	.section .rdata,"dr"
	.align 4
L1192:
	.long	L1199
	.long	L1197
	.long	L1200
	.long	L1195
	.long	L1194
	.long	L1193
	.long	L1191
	.text
	.p2align 4,,10
	.p2align 3
L1200:
	movl	$LC27, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1197:
	movl	$LC26, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1199:
	movl	%edx, %eax
	jmp	L1189
	.p2align 4,,10
	.p2align 3
L1191:
	movl	$LC31, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1195:
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	_ASS_PCMSoundDriver, %edx
	leal	(%edx,%edx,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+12(,%eax,8), %ecx
	testl	%ecx, %ecx
	je	L1201
	call	*__ZL12SoundDrivers.lto_priv.0+4(,%eax,8)
	movl	_ASS_PCMSoundDriver, %edx
	movl	%eax, %ecx
L1198:
	movl	$LC33, %eax
	cmpl	$5, %edx
	ja	L1188
	leal	(%edx,%edx,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+12(,%eax,8), %edx
	testl	%edx, %edx
	je	L1203
	movl	%ecx, (%esp)
	call	*__ZL12SoundDrivers.lto_priv.0+8(,%eax,8)
L1188:
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1194:
	movl	$LC29, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1193:
	movl	$LC30, %eax
	ret
L1190:
	movl	$LC32, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1203:
	.cfi_def_cfa_offset 8
	movl	$LC28, %eax
	jmp	L1188
L1201:
	movl	$-1, %ecx
	jmp	L1198
	.cfi_endproc
LFE116:
	.section .rdata,"dr"
	.align 4
LC34:
	.ascii "Error playing sound 0x%08x: %s\0"
	.section	.text.unlikely,"x"
LCOLDB35:
	.text
LHOTB35:
	.p2align 4
	.def	__ZL6MV_MixP9VoiceNodei;	.scl	3;	.type	32;	.endef
__ZL6MV_MixP9VoiceNodei:
LFB120:
	.cfi_startproc
	subl	$52, %esp
	.cfi_def_cfa_offset 56
	movl	%ebx, 36(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%esi, 40(%esp)
	movl	124(%eax), %eax
	.cfi_offset 6, -16
	movl	%edx, %esi
	testl	%eax, %eax
	je	L1208
	movzbl	4(%eax), %eax
	subl	$3, %eax
	cmpb	$1, %al
	jbe	L1209
L1225:
	movl	$1, %eax
L1207:
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	addl	$52, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1209:
	.cfi_restore_state
	movl	%edi, 44(%esp)
	.cfi_offset 7, -12
	movl	124(%ebx), %edi
	movzbl	4(%edi), %eax
	leal	-3(%eax), %edx
	cmpb	$1, %dl
	ja	L1242
L1211:
	cmpb	$4, %al
	je	L1238
	movl	124(%ebx), %eax
	movl	$0, 124(%ebx)
	movl	16(%eax), %edi
	lock subl	$1, (%eax)
	je	L1243
L1213:
	testl	%edi, %edi
	jne	L1244
	movl	44(%esp), %edi
	.cfi_restore 7
L1208:
	movl	96(%ebx), %eax
	testl	%eax, %eax
	jne	L1218
	movl	%ebx, (%esp)
	call	*8(%ebx)
	testb	%al, %al
	je	L1207
L1218:
	movl	_MV_GlobalVolume, %eax
	movl	%edi, 44(%esp)
	movl	%ebp, 48(%esp)
	movl	%eax, 32(%esp)
	cmpl	$2147483647, 120(%ebx)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	je	L1245
L1217:
	movl	92(%ebx), %eax
	movl	$256, %ebp
	movl	%eax, 24(%esp)
	movl	104(%ebx), %eax
	movl	%eax, 28(%esp)
	movl	_MV_MixBuffer(,%esi,4), %eax
	movl	%eax, _MV_MixDestination
	jmp	L1224
	.p2align 4,,10
	.p2align 3
L1247:
	movl	72(%ebx), %edi
	movl	%esi, %eax
	subl	%edi, %eax
	cmpl	%eax, %edx
	jnb	L1246
	movl	28(%esp), %ecx
	movl	%ebx, (%esp)
	leal	(%ecx,%esi), %eax
	subl	%edx, %eax
	xorl	%edx, %edx
	subl	%edi, %eax
	divl	%ecx
	movl	%eax, 4(%esp)
	subl	%eax, %ebp
	call	*12(%ebx)
	subl	72(%ebx), %esi
	movl	%eax, 108(%ebx)
	cmpl	%esi, %eax
	jnb	L1226
L1222:
	testl	%ebp, %ebp
	jle	L1221
L1224:
	movl	108(%ebx), %edx
	movl	24(%esp), %eax
	movl	96(%ebx), %esi
	addl	%edx, %eax
	cmpl	%esi, %eax
	jnb	L1247
	movl	%ebp, 4(%esp)
	movl	%ebx, (%esp)
	call	*12(%ebx)
	subl	72(%ebx), %esi
	movl	%eax, 108(%ebx)
	cmpl	%esi, %eax
	jb	L1221
	xorl	%ebp, %ebp
L1226:
	movl	%ebx, (%esp)
	call	*8(%ebx)
	testb	%al, %al
	je	L1241
	movl	72(%ebx), %eax
	cmpl	%ebp, %eax
	jg	L1222
	movl	%ebp, %edx
	subl	%eax, %edx
	imull	104(%ebx), %edx
	movl	%edx, 24(%esp)
	jmp	L1222
	.p2align 4,,10
	.p2align 3
L1246:
	movl	%ebx, (%esp)
	call	*8(%ebx)
	testb	%al, %al
	je	L1241
L1221:
	movl	32(%esp), %eax
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	%eax, _MV_GlobalVolume
	jmp	L1225
	.p2align 4,,10
	.p2align 3
L1245:
	.cfi_restore_state
	movl	$65536, _MV_GlobalVolume
	jmp	L1217
	.p2align 4,,10
	.p2align 3
L1242:
	.cfi_restore 5
	movl	__tls_index, %eax
	movl	%fs:44, %edx
	movl	(%edx,%eax,4), %eax
	movl	__ZN5async6detailL19thread_wait_handlerE.lto_priv.0@secrel32(%eax), %eax
	movl	%edi, (%esp)
	call	*%eax
	movzbl	4(%edi), %eax
	jmp	L1211
	.p2align 4,,10
	.p2align 3
L1241:
	.cfi_offset 5, -8
	movl	32(%esp), %edi
	movl	48(%esp), %ebp
	.cfi_restore 5
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	%edi, _MV_GlobalVolume
	movl	44(%esp), %edi
	.cfi_restore 7
	addl	$52, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1244:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jge	L1248
L1214:
	movl	44(%esp), %edi
	.cfi_remember_state
	.cfi_restore 7
	xorl	%eax, %eax
	jmp	L1207
	.p2align 4,,10
	.p2align 3
L1243:
	.cfi_restore_state
	movl	12(%eax), %edx
	movl	%eax, (%esp)
	call	*(%edx)
	jmp	L1213
L1248:
	movl	%edi, %eax
	call	_MV_ErrorString
	movl	%eax, 20(%esp)
	movl	44(%ebx), %eax
	movl	$LC34, 12(%esp)
	movl	%eax, 16(%esp)
	movl	$121, 8(%esp)
	movl	$LC25, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1214
	.cfi_endproc
	.section	.text.unlikely,"x"
	.cfi_startproc
	.def	__ZL6MV_MixP9VoiceNodei.cold;	.scl	3;	.type	32;	.endef
__ZL6MV_MixP9VoiceNodei.cold:
LFSB120:
L1238:
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	%ebp, 48(%esp)
	.cfi_offset 5, -8
	call	__ZSt9terminatev
	.cfi_endproc
LFE120:
	.text
	.section	.text.unlikely,"x"
LCOLDE35:
	.text
LHOTE35:
	.p2align 4
	.globl	__ZL13MV_ServiceVocv.lto_priv.0
	.def	__ZL13MV_ServiceVocv.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL13MV_ServiceVocv.lto_priv.0:
LFB123:
	.cfi_startproc
	subl	$40, %esp
	.cfi_def_cfa_offset 44
	movl	__ZL10MV_MixPage.lto_priv.0, %eax
	movl	__ZL14MV_ReverbLevel.lto_priv.0, %edx
	movl	%ebx, 24(%esp)
	.cfi_offset 3, -20
	leal	1(%eax), %ebx
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %eax
	movl	%esi, 28(%esp)
	movl	%edi, 32(%esp)
	subl	$1, %eax
	andl	%eax, %ebx
	movl	%ebx, __ZL10MV_MixPage.lto_priv.0
	testl	%edx, %edx
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	jne	L1250
	movl	__ZL14MV_BufferEmpty.lto_priv.0(,%ebx,4), %eax
	testl	%eax, %eax
	je	L1286
L1251:
	movl	_VoiceList, %esi
	cmpl	$_VoiceList, %esi
	je	L1256
	testl	%esi, %esi
	je	L1256
	xorl	%ebx, %ebx
	jmp	L1259
	.p2align 4,,10
	.p2align 3
L1289:
	movl	__ZL10MV_MixPage.lto_priv.0, %edx
	movl	%edi, %eax
	movl	$0, __ZL14MV_BufferEmpty.lto_priv.0(,%edx,4)
	call	__ZL6MV_MixP9VoiceNodei
	testb	%al, %al
	je	L1287
L1258:
	cmpl	$_VoiceList, %esi
	je	L1288
L1259:
	movl	%esi, %edi
	movl	(%esi), %esi
	movl	112(%edi), %eax
	testl	%eax, %eax
	jne	L1258
	cmpl	$2147483647, 120(%edi)
	jne	L1289
	movl	%edi, %ebx
	cmpl	$_VoiceList, %esi
	jne	L1259
L1288:
	movl	__ZL10MV_MixPage.lto_priv.0, %eax
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %edx
	movl	_MV_BufferSize, %ecx
	addl	%eax, %edx
	movl	_MV_MixBuffer(,%eax,4), %eax
	movl	_MV_MixBuffer(,%edx,4), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	__ZL16MV_MusicCallback, %eax
	testl	%eax, %eax
	je	L1261
	call	*%eax
	cmpl	$1, _MV_BufferSize
	jg	L1265
	.p2align 4
	.p2align 3
L1261:
	testl	%ebx, %ebx
	je	L1249
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %edx
	movl	%ebx, %eax
	addl	__ZL10MV_MixPage.lto_priv.0, %edx
	call	__ZL6MV_MixP9VoiceNodei
	testb	%al, %al
	je	L1290
L1249:
	movl	24(%esp), %ebx
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1256:
	.cfi_restore_state
	movl	__ZL10MV_MixPage.lto_priv.0, %eax
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %edx
	movl	_MV_BufferSize, %ecx
	addl	%eax, %edx
	movl	_MV_MixBuffer(,%eax,4), %eax
	movl	_MV_MixBuffer(,%edx,4), %edx
	movl	%ecx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_memcpy
	movl	__ZL16MV_MusicCallback, %eax
	testl	%eax, %eax
	je	L1249
	call	*%eax
	xorl	%ebx, %ebx
	cmpl	$1, _MV_BufferSize
	jle	L1249
L1265:
	movl	__ZL18MV_NumberOfBuffers.lto_priv.0, %eax
	addl	__ZL10MV_MixPage.lto_priv.0, %eax
	xorl	%edx, %edx
	movl	_MV_MusicBuffer, %esi
	movl	_MV_MixBuffer(,%eax,4), %ecx
	.p2align 6
	.p2align 4
	.p2align 3
L1263:
	movswl	(%esi,%edx,2), %edi
	movswl	(%ecx,%edx,2), %eax
	addl	%edi, %eax
	movl	$32767, %edi
	cmpl	%edi, %eax
	cmovg	%edi, %eax
	movl	$-32768, %edi
	cmpl	%edi, %eax
	cmovl	%edi, %eax
	movw	%ax, (%ecx,%edx,2)
	movl	_MV_BufferSize, %eax
	addl	$1, %edx
	sarl	%eax
	cmpl	%edx, %eax
	jg	L1263
	jmp	L1261
	.p2align 4,,10
	.p2align 3
L1287:
	movl	%edi, %eax
	call	__ZL15MV_CleanupVoiceP9VoiceNodeb.constprop.0
	movl	%edi, %eax
	call	__ZL13MV_FreeHandleP9VoiceNode
	jmp	L1258
	.p2align 4,,10
	.p2align 3
L1250:
	movl	_MV_MixBuffer, %edx
	movl	__ZL15MV_BufferLength.lto_priv.0, %eax
	movl	%ebp, 36(%esp)
	.cfi_offset 5, -8
	leal	(%edx,%eax), %edi
	movl	%edi, 20(%esp)
	movl	_MV_MixBuffer(,%ebx,4), %edi
	movl	%edi, %ebp
	subl	__ZL14MV_ReverbDelay.lto_priv.0, %ebp
	movl	%edi, 16(%esp)
	cmpl	%edx, %ebp
	movl	$0, %edx
	cmovnb	%edx, %eax
	movl	_MV_BufferSize, %edx
	addl	%eax, %ebp
	movl	%edx, %edi
	.p2align 4
	.p2align 3
L1255:
	movl	20(%esp), %esi
	leal	0(%ebp,%edi), %eax
	movl	%edi, 12(%esp)
	cmpl	%eax, %esi
	jnb	L1266
	subl	%ebp, %esi
	movl	%esi, 12(%esp)
	movl	%esi, %ecx
	subl	%esi, %edi
L1253:
	movl	__ZL15MV_ReverbVolume.lto_priv.0, %esi
	movl	16(%esp), %ebx
	sarl	%ecx
	.p2align 5
	.p2align 4
	.p2align 3
L1254:
	movswl	0(%ebp), %eax
	addl	$2, %ebx
	subl	$1, %ecx
	addl	$2, %ebp
	imull	%esi
	shrdl	$16, %edx, %eax
	movw	%ax, -2(%ebx)
	testl	%ecx, %ecx
	jg	L1254
	movl	12(%esp), %esi
	movl	_MV_MixBuffer, %ebp
	addl	%esi, 16(%esp)
	testl	%edi, %edi
	jg	L1255
	movl	36(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1251
	.p2align 4,,10
	.p2align 3
L1266:
	.cfi_restore_state
	movl	%edi, %ecx
	xorl	%edi, %edi
	jmp	L1253
L1290:
	.cfi_restore 5
	movl	%ebx, %eax
	call	__ZL15MV_CleanupVoiceP9VoiceNodeb.constprop.0
	movl	28(%esp), %esi
	movl	32(%esp), %edi
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	addl	$40, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	__ZL13MV_FreeHandleP9VoiceNode
L1286:
	.cfi_restore_state
	movl	_MV_MixBuffer(,%ebx,4), %eax
	movl	_MV_BufferSize, %edx
	movl	$0, 4(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	$1, __ZL14MV_BufferEmpty.lto_priv.0(,%ebx,4)
	jmp	L1251
	.cfi_endproc
LFE123:
	.p2align 4
	.globl	_MV_Shutdown.part.0
	.def	_MV_Shutdown.part.0;	.scl	2;	.type	32;	.endef
_MV_Shutdown.part.0:
LFB125:
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
	subl	$36, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	$_VoicePool, -24(%ebp)
	movss	-24(%ebp), %xmm0
	movl	$_VoiceList, -32(%ebp)
	movaps	%xmm0, %xmm1
	unpcklps	%xmm0, %xmm1
	movss	-32(%ebp), %xmm0
	movlps	%xmm1, -24(%ebp)
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2
	movlps	%xmm2, -32(%ebp)
	call	_MV_KillAllVoices.constprop.0
	movl	_ASS_PCMSoundDriver, %eax
	movl	$0, _MV_Installed
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+24(,%eax,8)
	movl	__tls_index, %edi
	movl	%fs:44, %esi
	movl	(%esi,%edi,4), %edx
	movl	_MV_Locked@secrel32(%edx), %eax
	leal	1(%eax), %ecx
	movl	%ecx, _MV_Locked@secrel32(%edx)
	testl	%eax, %eax
	je	L1305
L1292:
	movl	_VoiceList, %ebx
	cmpl	$_VoiceList, %ebx
	je	L1293
	.p2align 4
	.p2align 3
L1294:
	movl	%ebx, %eax
	movl	(%ebx), %ebx
	call	__ZL12MV_StopVoiceP9VoiceNodeb.constprop.0
	cmpl	$_VoiceList, %ebx
	jne	L1294
L1293:
	movl	(%esi,%edi,4), %edx
	subl	$1, _MV_Locked@secrel32(%edx)
	je	L1306
	js	L1307
L1296:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+16(,%eax,8)
	movl	_MV_Voices, %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movlps	-32(%ebp), %xmm3
	movlps	-24(%ebp), %xmm4
	movl	__ZL10MV_Handles.lto_priv.0, %eax
	subl	$4, %esp
	movl	$0, _MV_Voices
	movlps	%xmm3, _VoiceList
	movlps	%xmm4, _VoicePool
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	subl	$4, %esp
	movl	$0, __ZL10MV_Handles.lto_priv.0
	movl	$1, _MV_MaxVoices
L1297:
	movl	$0, _MV_MixBuffer(%eax)
	addl	$16, %eax
	movl	$0, _MV_MixBuffer-12(%eax)
	movl	$0, _MV_MixBuffer-8(%eax)
	movl	$0, _MV_MixBuffer-4(%eax)
	cmpl	$256, %eax
	jb	L1297
	movl	$1, _MV_ErrorCode
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
L1306:
	.cfi_restore_state
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+32(,%eax,8)
	jmp	L1296
L1305:
	movl	_ASS_PCMSoundDriver, %eax
	leal	(%eax,%eax,8), %eax
	call	*__ZL12SoundDrivers.lto_priv.0+28(,%eax,8)
	jmp	L1292
L1307:
	movl	__ZN6loguru18g_stderr_verbosityE, %eax
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$-2, %eax
	jl	L1296
	movl	$LC1, 12(%esp)
	movl	$85, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	jmp	L1296
	.cfi_endproc
LFE125:
	.section .rdata,"dr"
LC36:
	.ascii "MIDI initialization failed!\0"
LC37:
	.ascii "source/audiolib/src/music.cpp\0"
LC38:
	.ascii "%s MIDI output not supported!\0"
LC39:
	.ascii "Initializing MIDI driver: %s\0"
	.text
	.p2align 4
	.globl	__Z10MUSIC_Initi
	.def	__Z10MUSIC_Initi;	.scl	2;	.type	32;	.endef
__Z10MUSIC_Initi:
LFB129:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %edx
	cmpl	%edx, %ecx
	cmovge	%ecx, %edx
	cmpl	$-2, %eax
	je	L1319
	cmpl	$5, %eax
	ja	L1311
	leal	(%eax,%eax,8), %ebx
	sall	$3, %ebx
	movl	__ZL12SoundDrivers.lto_priv.0+40(%ebx), %ecx
	testl	%ecx, %ecx
	jne	L1324
	cmpl	$-2, %edx
	jge	L1325
	movl	$2, _ASS_MIDISoundDriver
	movl	$2, %ebx
	movl	$__Z18AdLibDrv_MIDI_InitP9midifuncs, %ecx
L1317:
	movl	$__ZL19MUSIC_MidiFunctions, (%esp)
	call	*%ecx
	testl	%eax, %eax
	je	L1318
L1327:
	cmpl	$3, %ebx
	je	L1326
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
L1316:
	addl	$1, %ebx
	movl	$__Z18AdLibDrv_MIDI_InitP9midifuncs, %ecx
	movl	$2, %eax
L1309:
	movl	%eax, _ASS_MIDISoundDriver
	cmpl	$3, %edx
	jle	L1317
	leal	(%eax,%eax,8), %eax
	movl	$LC39, 12(%esp)
	movl	__ZL12SoundDrivers.lto_priv.0(,%eax,8), %eax
	movl	$83, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	%eax, 16(%esp)
	movl	$4, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	_ASS_MIDISoundDriver, %eax
	movl	$__ZL19MUSIC_MidiFunctions, (%esp)
	leal	(%eax,%eax,8), %eax
	movl	__ZL12SoundDrivers.lto_priv.0+40(,%eax,8), %ecx
	call	*%ecx
	testl	%eax, %eax
	jne	L1327
L1318:
	movl	$__ZL19MUSIC_MidiFunctions, __ZL11_MIDI_Funcs.lto_priv.0
L1308:
	addl	$20, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1319:
	.cfi_restore_state
	movl	$2, %ebx
	movl	$__Z18AdLibDrv_MIDI_InitP9midifuncs, %ecx
	movl	$2, %eax
	jmp	L1309
	.p2align 4,,10
	.p2align 3
L1325:
	movl	__ZL12SoundDrivers.lto_priv.0(%ebx), %eax
	movl	$LC38, 12(%esp)
	movl	$1, %ebx
	movl	$73, 8(%esp)
	movl	%eax, 16(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
	movl	__ZN6loguru18g_stderr_verbosityE, %edx
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	jmp	L1316
L1326:
	movl	__ZN6loguru18g_stderr_verbosityE, %ecx
L1311:
	movl	__ZN6loguruL19s_max_out_verbosityE.lto_priv.0, %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	$-2, %ecx
	jl	L1312
	movl	$LC36, 12(%esp)
	movl	$66, 8(%esp)
	movl	$LC37, 4(%esp)
	movl	$-2, (%esp)
	call	__ZN6loguru3logEiPKcjS1_z
L1312:
	movl	$1, _MUSIC_ErrorCode
	movl	$-1, %eax
	jmp	L1308
L1324:
	movl	$1, %ebx
	jmp	L1309
	.cfi_endproc
LFE129:
	.p2align 4
	.globl	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	.def	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0;	.scl	2;	.type	32;	.endef
__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0:
LFB136:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$16, %esp
	.cfi_offset 3, -12
	cmpb	$3, 40(%eax)
	je	L1341
	movzbl	47(%eax), %edx
	testb	$8, %dl
	jne	L1328
	testb	$4, %dl
	je	L1333
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 16(%ecx)
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 20(%ecx)
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 24(%ecx)
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 28(%ecx)
	movl	8(%eax), %ecx
	movzbl	47(%eax), %edx
	movl	(%ecx), %ecx
	andl	$3, %edx
	leal	28(%ecx), %ebx
	movl	%ebx, 8(%ecx)
	cmpb	$2, %dl
	je	L1334
	cmpb	$3, %dl
	je	L1335
	cmpb	$1, %dl
	movl	8(%eax), %edx
	movl	4(%edx), %ecx
	movl	(%edx), %edx
	je	L1336
	addl	$26, %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	movl	4(%edx), %edx
	addl	$26, %edx
	movl	%edx, 8(%ecx)
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	leal	26(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	12(%eax), %ecx
	movl	4(%eax), %ebx
	addl	$3056, %ecx
	movl	%ecx, 12(%esp)
	leal	26(%ebx), %ecx
	movss	12(%esp), %xmm1
	movl	%ecx, 12(%esp)
L1339:
	movss	12(%esp), %xmm0
	movaps	%xmm1, %xmm2
	unpcklps	%xmm1, %xmm2
	unpcklps	%xmm1, %xmm0
	movlhps	%xmm2, %xmm0
	movups	%xmm0, 16(%eax)
L1328:
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1341:
	.cfi_restore_state
	movzbl	54(%eax), %edx
	movl	(%eax), %ecx
	subl	$7, %edx
	cmpb	$1, %dl
	jbe	L1342
	leal	28(%ecx), %edx
	testb	$1, 47(%eax)
	movl	%edx, 8(%ecx)
	movl	4(%eax), %edx
	jne	L1332
	movl	(%eax), %eax
	addl	$26, %eax
	movl	%eax, 8(%edx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1333:
	.cfi_restore_state
	movl	(%eax), %ecx
	andl	$1, %edx
	leal	28(%ecx), %ebx
	movl	%ebx, 8(%ecx)
	movl	4(%eax), %ecx
	jne	L1337
	movl	(%eax), %ebx
	leal	26(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	12(%eax), %ebx
	addl	$3056, %ebx
	movl	%ebx, 12(%esp)
	movl	4(%eax), %ebx
	movss	12(%esp), %xmm1
	addl	$26, %ebx
	movl	%ebx, 12(%esp)
	jmp	L1339
	.p2align 4,,10
	.p2align 3
L1337:
	movl	12(%eax), %ebx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	leal	26(%ebx), %edx
	movl	12(%eax), %ebx
	movl	%edx, 16(%eax)
	leal	26(%ecx), %edx
	movl	%edx, 20(%eax)
	leal	3056(%ebx), %edx
	movl	%edx, 24(%eax)
	movl	%edx, 28(%eax)
	jmp	L1328
	.p2align 4,,10
	.p2align 3
L1332:
	movl	12(%eax), %eax
	addl	$3056, %eax
	movl	%eax, 8(%edx)
	jmp	L1328
	.p2align 4,,10
	.p2align 3
L1334:
	movl	8(%eax), %edx
	movl	12(%eax), %ebx
	movl	4(%edx), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	movl	4(%edx), %edx
	addl	$26, %edx
	movl	%edx, 8(%ecx)
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	leal	26(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	(%edx), %edx
L1340:
	movl	4(%eax), %ecx
	addl	$26, %edx
	movl	%edx, 16(%eax)
	leal	26(%ecx), %edx
	movl	12(%eax), %ecx
	movl	%edx, 20(%eax)
	leal	3056(%ecx), %edx
	movl	%edx, 24(%eax)
	movl	%edx, 28(%eax)
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1342:
	.cfi_restore_state
	movl	12(%eax), %ebx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	4(%eax), %edx
	movl	12(%eax), %eax
	addl	$3056, %eax
	movl	%eax, 8(%edx)
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L1336:
	.cfi_restore_state
	addl	$26, %edx
	movl	%edx, 8(%ecx)
	movl	12(%eax), %ebx
	movl	(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	(%eax), %ebx
	movl	4(%eax), %ecx
	leal	26(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	4(%edx), %edx
	jmp	L1340
	.p2align 4,,10
	.p2align 3
L1335:
	movl	8(%eax), %edx
	movl	12(%eax), %ebx
	movl	4(%edx), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	movl	4(%edx), %edx
	addl	$26, %edx
	movl	%edx, 8(%ecx)
	movl	12(%eax), %ebx
	movl	4(%eax), %ecx
	leal	3056(%ebx), %edx
	movl	%edx, 8(%ecx)
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	movl	(%edx), %edx
	addl	$26, %edx
	movl	%edx, 16(%eax)
	leal	26(%ecx), %edx
	movl	4(%eax), %ecx
	movl	%edx, 20(%eax)
	leal	26(%ecx), %edx
	movl	12(%eax), %ecx
	movl	%edx, 24(%eax)
	leal	3056(%ecx), %edx
	movl	%edx, 28(%eax)
	jmp	L1328
	.cfi_endproc
LFE136:
	.p2align 4
	.globl	_OPL3_WriteReg.constprop.0
	.def	_OPL3_WriteReg.constprop.0;	.scl	2;	.type	32;	.endef
_OPL3_WriteReg.constprop.0:
LFB138:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	shrw	$8, %cx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andw	$240, %bx
	andl	$-16, %esp
	subl	$16, %esp
	cmpw	$160, %bx
	je	L1344
	ja	L1345
	cmpw	$80, %bx
	je	L1346
	ja	L1347
	cmpw	$32, %bx
	je	L1348
	jbe	L1436
	cmpw	$48, %bx
	je	L1348
L1346:
	andl	$31, %eax
	movsbl	__ZL7ad_slot(%eax), %ebx
	testb	%bl, %bl
	js	L1343
	negl	%ecx
	andl	$18, %ecx
	leal	(%ecx,%ebx), %eax
	movl	%edx, %ecx
	andl	$63, %edx
	imull	$56, %eax, %eax
	shrb	$6, %cl
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1052(%eax)
	movl	__ZL7AL_Chip.lto_priv.0+1008(%eax), %ecx
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1053(%eax)
	movzwl	42(%ecx), %edx
	movzbl	44(%ecx), %ebx
	movl	$8, %ecx
	shrw	$6, %dx
	subl	%ebx, %ecx
	movzwl	%dx, %edx
	sall	$5, %ecx
	movzbl	__ZL6kslrom(%edx), %edx
	sall	$2, %edx
	subw	%cx, %dx
	movl	$0, %ecx
	cmovs	%ecx, %edx
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1047(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1345:
	cmpw	$208, %bx
	je	L1354
	ja	L1355
	cmpw	$176, %bx
	je	L1437
	andl	$15, %eax
	cmpw	$8, %ax
	ja	L1343
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	leal	(%ecx,%ecx,8), %ebx
	movl	%edx, %ecx
	addl	%ebx, %eax
	shrb	%cl
	movl	%eax, 12(%esp)
	imull	$56, %eax, %eax
	andl	$7, %ecx
	addl	$__ZL7AL_Chip.lto_priv.0, %eax
	movb	%cl, 45(%eax)
	movl	12(%eax), %edi
	movl	%edx, %ecx
	andl	$1, %ecx
	movb	%cl, 46(%eax)
	movb	%cl, 47(%eax)
	cmpb	$0, 3043(%edi)
	je	L1392
	movzbl	40(%eax), %ebx
	cmpb	$1, %bl
	je	L1438
	cmpb	$2, %bl
	je	L1439
L1392:
	movb	%dl, 8(%esp)
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movzbl	8(%esp), %edx
L1394:
	imull	$56, 12(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0+12(%eax), %ecx
	cmpb	$0, 3043(%ecx)
	je	L1395
	movl	%edx, %ebx
	shrb	$5, %dl
	shrb	$4, %bl
	andl	$1, %edx
	movl	%ebx, %edi
	negl	%edx
	andl	$1, %edi
	movw	%dx, __ZL7AL_Chip.lto_priv.0+52(%eax)
	negl	%edi
	movw	%di, __ZL7AL_Chip.lto_priv.0+50(%eax)
L1396:
	cmpb	$0, 3074(%ecx)
	jne	L1343
	imull	$56, 12(%esp), %ebx
	movzwl	__ZL7AL_Chip.lto_priv.0+50(%ebx), %edx
	sall	$16, %edx
	movl	%edx, __ZL7AL_Chip.lto_priv.0+32(%ebx)
	movzwl	__ZL7AL_Chip.lto_priv.0+52(%ebx), %edx
	sall	$16, %edx
	movl	%edx, __ZL7AL_Chip.lto_priv.0+36(%ebx)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1347:
	cmpw	$128, %bx
	je	L1352
	ja	L1352
	andl	$31, %eax
	movsbl	__ZL7ad_slot(%eax), %eax
	testb	%al, %al
	js	L1343
	negl	%ecx
	andl	$18, %ecx
	addl	%ecx, %eax
	movl	%edx, %ecx
	andl	$15, %edx
	imull	$56, %eax, %eax
	shrb	$4, %cl
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1054(%eax)
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1055(%eax)
L1343:
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
L1436:
	.cfi_restore_state
	testw	%bx, %bx
	jne	L1343
	testw	%cx, %cx
	je	L1359
	andl	$15, %eax
	cmpw	$4, %ax
	je	L1360
	cmpw	$5, %ax
	jne	L1343
	movl	%edx, %eax
	shrb	%dl
	andl	$1, %eax
	andl	$1, %edx
	movb	%al, __ZL7AL_Chip.lto_priv.0+3043
	movb	%dl, __ZL7AL_Chip.lto_priv.0+3074
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1437:
	cmpb	$-67, %al
	jne	L1370
	testb	$1, %cl
	je	L1440
L1370:
	andl	$15, %eax
	cmpw	$8, %ax
	ja	L1343
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	leal	(%ecx,%ecx,8), %ecx
	addl	%ecx, %eax
	movl	%eax, 12(%esp)
	imull	$56, %eax, %eax
	movl	__ZL7AL_Chip.lto_priv.0+12(%eax), %esi
	movl	%esi, %edi
	cmpb	$0, 3043(%esi)
	je	L1382
	cmpb	$2, __ZL7AL_Chip.lto_priv.0+40(%eax)
	je	L1383
L1382:
	imull	$56, 12(%esp), %ebx
	movl	%edx, %eax
	sall	$8, %eax
	andw	$768, %ax
	leal	__ZL7AL_Chip.lto_priv.0(%ebx), %ecx
	movzbl	__ZL7AL_Chip.lto_priv.0+42(%ebx), %esi
	movl	%ebx, 8(%esp)
	movl	%edx, %ebx
	shrb	$2, %bl
	orl	%esi, %eax
	andl	$7, %ebx
	movw	%ax, 42(%ecx)
	movzwl	%ax, %eax
	movb	%bl, 44(%ecx)
	movb	%bl, 6(%esp)
	movl	$9, %ebx
	subb	3044(%edi), %bl
	btl	%ebx, %eax
	movzbl	6(%esp), %ebx
	setc	%al
	addl	%ebx, %ebx
	orl	%ebx, %eax
	movl	8(%esp), %ebx
	movb	%al, 48(%ecx)
	movl	__ZL7AL_Chip.lto_priv.0(%ebx), %eax
	movl	(%eax), %edi
	movzwl	42(%edi), %eax
	movzbl	44(%edi), %edi
	shrw	$6, %ax
	movl	%edi, %esi
	movl	$8, %edi
	movzwl	%ax, %eax
	subl	%esi, %edi
	xorl	%esi, %esi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$5, %edi
	sall	$2, %eax
	subl	%edi, %eax
	movl	__ZL7AL_Chip.lto_priv.0(%ebx), %edi
	testw	%ax, %ax
	cmovs	%esi, %eax
	movb	%al, 39(%edi)
	movl	4(%ecx), %eax
	movl	(%eax), %edi
	movzwl	42(%edi), %eax
	movzbl	44(%edi), %edi
	movw	%ax, 6(%esp)
	shrw	$6, %ax
	movl	%edi, %ebx
	movl	$8, %edi
	movzwl	%ax, %eax
	subl	%ebx, %edi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$5, %edi
	sall	$2, %eax
	subl	%edi, %eax
	testw	%ax, %ax
	cmovs	%esi, %eax
	movl	4(%ecx), %esi
	movb	%al, 39(%esi)
	movl	12(%ecx), %eax
	cmpb	$0, 3043(%eax)
	je	L1384
	cmpb	$1, 40(%ecx)
	je	L1441
L1383:
	andl	$32, %edx
	jne	L1442
L1385:
	imull	$56, 12(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0+12(%eax), %edx
	cmpb	$0, 3043(%edx)
	je	L1389
	movzbl	__ZL7AL_Chip.lto_priv.0+40(%eax), %edx
	cmpb	$1, %dl
	je	L1443
	cmpb	$3, %dl
	je	L1389
	testb	%dl, %dl
	jne	L1343
L1389:
	imull	$56, 12(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0(%eax), %edx
	andb	$-2, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+4(%eax), %eax
	andb	$-2, 51(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1352:
	andl	$31, %eax
	movsbl	__ZL7ad_slot(%eax), %eax
	testb	%al, %al
	js	L1343
	negl	%ecx
	movl	$31, %ebx
	andl	$18, %ecx
	addl	%ecx, %eax
	movl	%edx, %ecx
	shrb	$4, %cl
	cmpb	$15, %cl
	cmove	%ebx, %ecx
	imull	$56, %eax, %eax
	andl	$15, %edx
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1056(%eax)
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1057(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1355:
	andl	$31, %eax
	movsbl	__ZL7ad_slot(%eax), %eax
	testb	%al, %al
	js	L1343
	negl	%ecx
	andl	$18, %ecx
	addl	%ecx, %eax
	movl	%edx, %ecx
	andl	$7, %edx
	imull	$56, %eax, %eax
	andl	$3, %ecx
	movl	__ZL7AL_Chip.lto_priv.0+1012(%eax), %ebx
	cmpb	$0, 3043(%ebx)
	cmove	%ecx, %edx
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1058(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1354:
	andl	$15, %eax
	cmpw	$8, %ax
	ja	L1343
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	leal	(%ecx,%ecx,8), %ecx
	addl	%eax, %ecx
	imull	$56, %ecx, %ecx
	movl	__ZL7AL_Chip.lto_priv.0+12(%ecx), %eax
	cmpb	$0, 3074(%eax)
	je	L1343
	movl	%edx, %eax
	movzbl	%dl, %edx
	movss	__ZL10panpot_lut.lto_priv.0(,%edx,4), %xmm1
	notl	%eax
	movzbl	%al, %eax
	movss	__ZL10panpot_lut.lto_priv.0(,%eax,4), %xmm0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, __ZL7AL_Chip.lto_priv.0+32(%ecx)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1348:
	andl	$31, %eax
	movsbl	__ZL7ad_slot(%eax), %ebx
	testb	%bl, %bl
	js	L1343
	negl	%ecx
	andl	$18, %ecx
	leal	(%ecx,%ebx), %eax
	imull	$56, %eax, %eax
	movl	__ZL7AL_Chip.lto_priv.0+1012(%eax), %ecx
	leal	3048(%ecx), %ebx
	addl	$3056, %ecx
	testb	%dl, %dl
	cmovs	%ebx, %ecx
	movl	%ecx, __ZL7AL_Chip.lto_priv.0+1020(%eax)
	movl	%edx, %ecx
	shrb	$6, %cl
	andl	$1, %ecx
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1048(%eax)
	movl	%edx, %ecx
	shrb	$5, %cl
	andl	$1, %ecx
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1049(%eax)
	movl	%edx, %ecx
	andl	$15, %edx
	shrb	$4, %cl
	movb	%dl, __ZL7AL_Chip.lto_priv.0+1051(%eax)
	andl	$1, %ecx
	movb	%cl, __ZL7AL_Chip.lto_priv.0+1050(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1344:
	andl	$15, %eax
	cmpw	$8, %ax
	ja	L1343
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	leal	(%ecx,%ecx,8), %ecx
	addl	%eax, %ecx
	imull	$56, %ecx, %eax
	movl	__ZL7AL_Chip.lto_priv.0+12(%eax), %ebx
	cmpb	$0, 3043(%ebx)
	je	L1369
	cmpb	$2, __ZL7AL_Chip.lto_priv.0+40(%eax)
	je	L1343
L1369:
	imull	$56, %ecx, %ecx
	movzbl	%dl, %edx
	movzwl	__ZL7AL_Chip.lto_priv.0+42(%ecx), %eax
	movzbl	__ZL7AL_Chip.lto_priv.0+44(%ecx), %esi
	andw	$768, %ax
	orl	%eax, %edx
	movl	$9, %eax
	subb	3044(%ebx), %al
	movl	__ZL7AL_Chip.lto_priv.0(%ecx), %ebx
	movw	%dx, __ZL7AL_Chip.lto_priv.0+42(%ecx)
	movzwl	%dx, %edx
	btl	%eax, %edx
	leal	(%esi,%esi), %edx
	setc	%al
	orl	%edx, %eax
	movb	%al, __ZL7AL_Chip.lto_priv.0+48(%ecx)
	movl	(%ebx), %edx
	movzwl	42(%edx), %eax
	movzbl	44(%edx), %esi
	movl	$8, %edx
	shrw	$6, %ax
	movl	%esi, %edi
	movl	%edx, %esi
	movzwl	%ax, %eax
	subl	%edi, %esi
	xorl	%edi, %edi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$5, %esi
	sall	$2, %eax
	subl	%esi, %eax
	testw	%ax, %ax
	cmovs	%edi, %eax
	movb	%al, 39(%ebx)
	movl	__ZL7AL_Chip.lto_priv.0+4(%ecx), %ebx
	movl	(%ebx), %eax
	movl	(%ebx), %esi
	movzwl	42(%eax), %eax
	movzbl	44(%esi), %esi
	shrw	$6, %ax
	movw	%si, 12(%esp)
	movl	%edx, %esi
	subw	12(%esp), %si
	movzwl	%ax, %eax
	sall	$5, %esi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$2, %eax
	subl	%esi, %eax
	testw	%ax, %ax
	cmovs	%edi, %eax
	movb	%al, 39(%ebx)
	movl	__ZL7AL_Chip.lto_priv.0+12(%ecx), %eax
	cmpb	$0, 3043(%eax)
	je	L1343
	cmpb	$1, __ZL7AL_Chip.lto_priv.0+40(%ecx)
	jne	L1343
	movl	__ZL7AL_Chip.lto_priv.0+8(%ecx), %eax
	movzwl	__ZL7AL_Chip.lto_priv.0+42(%ecx), %ebx
	movw	%bx, 42(%eax)
	movl	__ZL7AL_Chip.lto_priv.0+8(%ecx), %eax
	movzbl	__ZL7AL_Chip.lto_priv.0+48(%ecx), %ebx
	movb	%bl, 48(%eax)
	movl	__ZL7AL_Chip.lto_priv.0+8(%ecx), %eax
	movl	(%eax), %ebx
	movl	(%ebx), %eax
	movl	(%ebx), %edi
	movzwl	42(%eax), %eax
	movzbl	44(%edi), %esi
	movw	%ax, 12(%esp)
	shrw	$6, %ax
	movl	%esi, %edi
	movl	%edx, %esi
	movzwl	%ax, %eax
	subl	%edi, %esi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$5, %esi
	sall	$2, %eax
	subl	%esi, %eax
	xorl	%esi, %esi
	testw	%ax, %ax
	cmovs	%esi, %eax
	movb	%al, 39(%ebx)
	movl	__ZL7AL_Chip.lto_priv.0+8(%ecx), %eax
	movl	4(%eax), %ecx
	movl	(%ecx), %ebx
	movzwl	42(%ebx), %eax
	movzbl	44(%ebx), %ebx
	shrw	$6, %ax
	subl	%ebx, %edx
	movzwl	%ax, %eax
	sall	$5, %edx
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$2, %eax
	subl	%edx, %eax
	xorl	%edx, %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	movb	%al, 39(%ecx)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1359:
	cmpw	$8, %ax
	jne	L1343
	shrb	$6, %dl
	andl	$1, %edx
	movb	%dl, __ZL7AL_Chip.lto_priv.0+3044
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1440:
	movl	%edx, %eax
	shrb	$7, %al
	addl	%eax, %eax
	xorl	$2, %eax
	addl	$2, %eax
	movb	%al, __ZL7AL_Chip.lto_priv.0+3050
	movl	%edx, %eax
	shrb	$6, %al
	notl	%eax
	andl	$1, %eax
	movb	%al, __ZL7AL_Chip.lto_priv.0+3047
	movl	%edx, %eax
	andl	$63, %eax
	andl	$32, %edx
	movb	%al, __ZL7AL_Chip.lto_priv.0+3045
	je	L1371
	movl	__ZL7AL_Chip.lto_priv.0+340, %eax
	movl	$__ZL7AL_Chip.lto_priv.0+3056, 12(%esp)
	movss	12(%esp), %xmm0
	movb	$3, __ZL7AL_Chip.lto_priv.0+376
	addl	$26, %eax
	movb	$3, __ZL7AL_Chip.lto_priv.0+432
	movl	%eax, __ZL7AL_Chip.lto_priv.0+352
	unpcklps	%xmm0, %xmm0
	movl	%eax, __ZL7AL_Chip.lto_priv.0+356
	movl	__ZL7AL_Chip.lto_priv.0+396, %eax
	movlps	%xmm0, __ZL7AL_Chip.lto_priv.0+360
	addl	$26, %eax
	movb	$3, __ZL7AL_Chip.lto_priv.0+488
	movl	%eax, 12(%esp)
	movl	__ZL7AL_Chip.lto_priv.0+392, %eax
	movss	12(%esp), %xmm1
	addl	$26, %eax
	movl	%eax, 12(%esp)
	movl	__ZL7AL_Chip.lto_priv.0+452, %eax
	unpcklps	%xmm1, %xmm1
	movss	12(%esp), %xmm0
	addl	$26, %eax
	movl	%eax, 12(%esp)
	movl	__ZL7AL_Chip.lto_priv.0+448, %eax
	unpcklps	%xmm0, %xmm0
	movlhps	%xmm1, %xmm0
	movss	12(%esp), %xmm1
	addl	$26, %eax
	movups	%xmm0, __ZL7AL_Chip.lto_priv.0+408
	movl	%eax, 12(%esp)
	movss	12(%esp), %xmm0
	unpcklps	%xmm1, %xmm1
	movl	$__ZL7AL_Chip.lto_priv.0+336, %eax
	unpcklps	%xmm0, %xmm0
	movlhps	%xmm1, %xmm0
	movups	%xmm0, __ZL7AL_Chip.lto_priv.0+464
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movl	$__ZL7AL_Chip.lto_priv.0+392, %eax
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movl	$__ZL7AL_Chip.lto_priv.0+448, %eax
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movl	__ZL7AL_Chip.lto_priv.0+392, %edx
	movzbl	51(%edx), %eax
	movl	%eax, %ecx
	andl	$-3, %eax
	orl	$2, %ecx
	testb	$1, __ZL7AL_Chip.lto_priv.0+3045
	cmovne	%ecx, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+452, %edx
	movzbl	51(%edx), %eax
	movl	%eax, %ecx
	andl	$-3, %eax
	orl	$2, %ecx
	testb	$2, __ZL7AL_Chip.lto_priv.0+3045
	cmovne	%ecx, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+448, %edx
	movzbl	51(%edx), %eax
	movl	%eax, %ecx
	andl	$-3, %eax
	orl	$2, %ecx
	testb	$4, __ZL7AL_Chip.lto_priv.0+3045
	cmovne	%ecx, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+396, %edx
	movzbl	51(%edx), %eax
	movl	%eax, %ecx
	andl	$-3, %eax
	orl	$2, %ecx
	testb	$8, __ZL7AL_Chip.lto_priv.0+3045
	cmovne	%ecx, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+336, %edx
	movzbl	51(%edx), %eax
	testb	$16, __ZL7AL_Chip.lto_priv.0+3045
	je	L1380
	orl	$2, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+340, %eax
	orb	$2, 51(%eax)
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1360:
	movzbl	%dl, %esi
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L1364:
	cmpl	$2, %eax
	jbe	L1362
	leal	6(%eax), %ecx
	leal	9(%eax), %edx
	btl	%eax, %esi
	movzbl	%cl, %ecx
	movzbl	%dl, %edi
	jc	L1400
	xorl	%edx, %edx
	xorl	%ebx, %ebx
L1363:
	imull	$56, %ecx, %ecx
	addl	$1, %eax
	movb	%dl, __ZL7AL_Chip.lto_priv.0+40(%ecx)
	imull	$56, %edi, %edx
	movb	%bl, __ZL7AL_Chip.lto_priv.0+40(%edx)
	cmpl	$6, %eax
	jne	L1364
	jmp	L1343
	.p2align 4,,10
	.p2align 3
L1362:
	imull	$56, %eax, %ecx
	leal	3(%eax), %edx
	btl	%eax, %esi
	movzbl	%dl, %edx
	jc	L1398
	imull	$56, %edx, %edx
	movb	$0, __ZL7AL_Chip.lto_priv.0+40(%ecx)
	addl	$1, %eax
	movb	$0, __ZL7AL_Chip.lto_priv.0+40(%edx)
	jmp	L1364
	.p2align 4,,10
	.p2align 3
L1400:
	movl	$1, %edx
	movl	$2, %ebx
	jmp	L1363
	.p2align 4,,10
	.p2align 3
L1398:
	imull	$56, %edx, %edx
	movb	$1, __ZL7AL_Chip.lto_priv.0+40(%ecx)
	addl	$1, %eax
	movb	$2, __ZL7AL_Chip.lto_priv.0+40(%edx)
	jmp	L1364
	.p2align 4,,10
	.p2align 3
L1395:
	movl	$-1, __ZL7AL_Chip.lto_priv.0+50(%eax)
	jmp	L1396
	.p2align 4,,10
	.p2align 3
L1371:
	movl	$__ZL7AL_Chip.lto_priv.0+336, %ebx
L1381:
	movb	$0, 40(%ebx)
	movl	%ebx, %eax
	addl	$56, %ebx
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movl	-56(%ebx), %eax
	andb	$-3, 51(%eax)
	movl	-52(%ebx), %eax
	andb	$-3, 51(%eax)
	movl	$__ZL7AL_Chip.lto_priv.0+504, %eax
	cmpl	%ebx, %eax
	jne	L1381
	jmp	L1343
L1384:
	andl	$32, %edx
	je	L1389
L1386:
	imull	$56, 12(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0(%eax), %edx
	orb	$1, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+4(%eax), %eax
	orb	$1, 51(%eax)
	jmp	L1343
L1380:
	andl	$-3, %eax
	movb	%al, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+340, %eax
	andb	$-3, 51(%eax)
	jmp	L1343
L1439:
	movl	8(%eax), %esi
	movb	%dl, 6(%esp)
	movzbl	46(%esi), %ebx
	movl	%ebx, %esi
	movb	%bl, 8(%esp)
	leal	(%esi,%esi), %ebx
	movl	8(%eax), %esi
	orl	%ebx, %ecx
	orl	$4, %ecx
	movb	%cl, 47(%eax)
	movb	$8, 47(%esi)
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movzbl	6(%esp), %edx
	jmp	L1394
L1438:
	movl	8(%eax), %edi
	addl	%ecx, %ecx
	movb	%dl, 8(%esp)
	orb	46(%edi), %cl
	orl	$4, %ecx
	movb	%cl, 47(%edi)
	movb	$8, 47(%eax)
	movl	8(%eax), %eax
	call	__ZL20OPL3_ChannelSetupAlgP13_opl3_channel.lto_priv.0
	movzbl	8(%esp), %edx
	jmp	L1394
L1442:
	imull	$56, 12(%esp), %eax
	movzbl	__ZL7AL_Chip.lto_priv.0+40(%eax), %eax
L1387:
	cmpb	$3, %al
	je	L1386
	testb	%al, %al
	je	L1386
	jmp	L1343
L1441:
	movl	8(%ecx), %eax
	movzwl	42(%ecx), %edi
	movw	%di, 42(%eax)
	movl	8(%ecx), %eax
	movzbl	44(%ecx), %ebx
	movb	%bl, 44(%eax)
	movl	8(%ecx), %eax
	movzbl	48(%ecx), %ebx
	movb	%bl, 48(%eax)
	movl	8(%ecx), %eax
	movl	(%eax), %esi
	movl	(%esi), %edi
	movzwl	42(%edi), %eax
	movzbl	44(%edi), %edi
	shrw	$6, %ax
	movl	%edi, %ebx
	movl	$8, %edi
	movzwl	%ax, %eax
	subl	%ebx, %edi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$5, %edi
	sall	$2, %eax
	subl	%edi, %eax
	xorl	%edi, %edi
	testw	%ax, %ax
	cmovs	%edi, %eax
	movb	%al, 39(%esi)
	movl	8(%ecx), %eax
	movl	4(%eax), %ebx
	movl	(%ebx), %esi
	movzwl	42(%esi), %eax
	movzbl	44(%esi), %esi
	shrw	$6, %ax
	movw	%si, 6(%esp)
	movl	$8, %esi
	subw	6(%esp), %si
	movzwl	%ax, %eax
	sall	$5, %esi
	movzbl	__ZL6kslrom(%eax), %eax
	sall	$2, %eax
	subl	%esi, %eax
	testw	%ax, %ax
	cmovs	%edi, %eax
	andl	$32, %edx
	movb	%al, 39(%ebx)
	je	L1385
	movl	12(%ecx), %eax
	cmpb	$0, 3043(%eax)
	je	L1386
	movzbl	40(%ecx), %eax
	cmpb	$1, %al
	jne	L1387
	movl	8(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0(%eax), %eax
	orb	$1, 51(%eax)
	movl	4(%ecx), %eax
	orb	$1, 51(%eax)
	movl	8(%ecx), %eax
	movl	(%eax), %eax
	orb	$1, 51(%eax)
	movl	8(%ecx), %eax
	movl	4(%eax), %eax
	orb	$1, 51(%eax)
	jmp	L1343
L1443:
	movl	__ZL7AL_Chip.lto_priv.0(%eax), %edx
	andb	$-2, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+4(%eax), %edx
	andb	$-2, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+8(%eax), %edx
	movl	(%edx), %edx
	andb	$-2, 51(%edx)
	movl	__ZL7AL_Chip.lto_priv.0+8(%eax), %eax
	movl	4(%eax), %eax
	andb	$-2, 51(%eax)
	jmp	L1343
	.cfi_endproc
LFE138:
	.p2align 4
	.globl	_OPL3_WriteRegBuffered.constprop.0
	.def	_OPL3_WriteRegBuffered.constprop.0;	.scl	2;	.type	32;	.endef
_OPL3_WriteRegBuffered.constprop.0:
LFB152:
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
	movl	__ZL7AL_Chip.lto_priv.0+3108, %ecx
	movb	%dl, 7(%esp)
	leal	195(%ecx), %edi
	addl	$1, %ecx
	movl	%edi, %ebp
	andl	$1023, %ecx
	sall	$4, %ebp
	movl	%ecx, (%esp)
	movzwl	__ZL7AL_Chip.lto_priv.0+8(%ebp), %eax
	testb	$2, %ah
	jne	L1445
	movl	__ZL7AL_Chip.lto_priv.0+3096, %ebx
	movl	__ZL7AL_Chip.lto_priv.0+3100, %edx
L1446:
	movl	%edi, %eax
	movl	%esi, %edi
	movl	__ZL7AL_Chip.lto_priv.0+3112, %esi
	movzbl	7(%esp), %ecx
	sall	$4, %eax
	orw	$512, %di
	movw	%di, __ZL7AL_Chip.lto_priv.0+8(%eax)
	movl	__ZL7AL_Chip.lto_priv.0+3116, %edi
	addl	$2, %esi
	movb	%cl, __ZL7AL_Chip.lto_priv.0+10(%eax)
	adcl	$0, %edi
	cmpl	%ebx, %esi
	movl	%edi, %ecx
	sbbl	%edx, %ecx
	cmovnc	%esi, %ebx
	cmovnc	%edi, %edx
	movl	%ebx, __ZL7AL_Chip.lto_priv.0(%eax)
	movl	%edx, __ZL7AL_Chip.lto_priv.0+4(%eax)
	movl	(%esp), %eax
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+3112
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3116
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3108
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
L1445:
	.cfi_restore_state
	movzbl	__ZL7AL_Chip.lto_priv.0+10(%ebp), %edx
	andl	$511, %eax
	call	_OPL3_WriteReg.constprop.0
	movl	(%esp), %eax
	movl	__ZL7AL_Chip.lto_priv.0(%ebp), %ebx
	movl	__ZL7AL_Chip.lto_priv.0+4(%ebp), %edx
	movl	%eax, __ZL7AL_Chip.lto_priv.0+3104
	movl	%ebx, __ZL7AL_Chip.lto_priv.0+3096
	movl	%edx, __ZL7AL_Chip.lto_priv.0+3100
	jmp	L1446
	.cfi_endproc
LFE152:
	.p2align 4
	.globl	__Z14PITCH_GetScalei
	.def	__Z14PITCH_GetScalei;	.scl	2;	.type	32;	.endef
__Z14PITCH_GetScalei:
LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	$50, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$32, %esp
	cmpb	$0, __ZZ14PITCH_GetScaleiE12bInitialized
	je	L1450
L1449:
	movl	__ZL10PitchTable, %eax
	testl	%ebx, %ebx
	je	L1458
	movl	$458129845, %esi
	movl	%ebx, %eax
	movl	%ebx, %ecx
	imull	%esi
	movl	%ebx, %eax
	sarl	$31, %eax
	sarl	$7, %edx
	subl	%eax, %edx
	imull	$1200, %edx, %eax
	subl	%eax, %ecx
	leal	1200(%ecx), %eax
	cmovs	%eax, %ecx
	subl	%ecx, %ebx
	movl	%ebx, %eax
	movl	%ebx, %edi
	imull	%esi
	sarl	$31, %edi
	movl	%edx, %esi
	sarl	$7, %esi
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%eax, 16(%esp)
	movl	$1374389535, %eax
	mull	%ecx
	shrl	$5, %edx
	imull	$100, %edx, %eax
	subl	%eax, %ecx
	imull	$50, %edx, %eax
	sarl	%ecx
	addl	%ecx, %eax
	movl	%edi, %ecx
	movl	__ZL10PitchTable(,%eax,4), %eax
	subl	%esi, %ecx
	movl	%eax, %edx
	shrl	%cl, %edx
	movzbl	16(%esp), %ecx
	sall	%cl, %eax
	cmpl	$-1200, %ebx
	cmovle	%edx, %eax
L1458:
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
L1460:
	.cfi_restore_state
	addl	$50, %edi
	cmpl	$650, %edi
	je	L1452
L1450:
	leal	-50(%edi), %esi
	.p2align 4
	.p2align 3
L1451:
	xorps	%xmm0, %xmm0
	movl	$0, (%esp)
	cvtsi2ssl	%esi, %xmm0
	movl	$1073741824, 4(%esp)
	divss	LC40, %xmm0
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fstpl	8(%esp)
	call	_pow
	fnstcw	30(%esp)
	fstps	16(%esp)
	movss	16(%esp), %xmm0
	mulss	LC41, %xmm0
	movzwl	30(%esp), %eax
	orb	$12, %ah
	movw	%ax, 28(%esp)
	movss	%xmm0, 16(%esp)
	flds	16(%esp)
	fldcw	28(%esp)
	fistpq	16(%esp)
	fldcw	30(%esp)
	movl	16(%esp), %eax
	movl	%eax, __ZL10PitchTable(,%esi,4)
	addl	$1, %esi
	cmpl	%esi, %edi
	jne	L1451
	jmp	L1460
L1452:
	movb	$1, __ZZ14PITCH_GetScaleiE12bInitialized
	jmp	L1449
	.cfi_endproc
LFE153:
	.p2align 4
	.globl	_oggpack_read
	.def	_oggpack_read;	.scl	2;	.type	32;	.endef
_oggpack_read:
LFB156:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	%ebp, 24(%esp)
	movl	16(%eax), %ecx
	cmpl	$32, %edx
	.cfi_offset 5, -8
	ja	L1462
	movl	%esi, 16(%esp)
	leal	-4(%ecx), %ebp
	movl	%edi, 20(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	4(%eax), %esi
	movl	(%ebx), %edi
	leal	(%esi,%edx), %eax
	movl	%edi, (%esp)
	cmpl	%ebp, %edi
	jge	L1469
	leal	7(%eax), %edi
	movl	%edi, 4(%esp)
L1463:
	movl	_mask(,%edx,4), %ecx
	movl	12(%ebx), %edx
	movzbl	(%edx), %ebp
	movl	%ecx, 8(%esp)
	movl	%esi, %ecx
	sarl	%cl, %ebp
	cmpl	$8, %eax
	jle	L1465
	movzbl	1(%edx), %edi
	movl	$8, %ecx
	subl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %ebp
	cmpl	$16, %eax
	jle	L1465
	movzbl	2(%edx), %edi
	movl	$16, %ecx
	subl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %ebp
	cmpl	$24, %eax
	jle	L1465
	movzbl	3(%edx), %edi
	movl	$24, %ecx
	subl	%esi, %ecx
	sall	%cl, %edi
	orl	%edi, %ebp
	cmpl	$32, %eax
	jle	L1465
	movzbl	4(%edx), %edi
	movl	%esi, %ecx
	negl	%ecx
	sall	%cl, %edi
	orl	%edi, %ebp
	.p2align 4
	.p2align 3
L1465:
	movl	8(%esp), %esi
	movl	(%esp), %edi
	andl	%ebp, %esi
	testl	%eax, %eax
	movl	%esi, %ebp
	movl	4(%esp), %esi
	cmovns	%eax, %esi
	andl	$7, %eax
	movl	%eax, 4(%ebx)
	sarl	$3, %esi
	addl	%esi, %edi
	addl	%esi, %edx
	movl	%edx, 12(%ebx)
	movl	%edi, (%ebx)
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L1461:
	movl	%ebp, %eax
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1469:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	leal	7(%eax), %ebp
	movl	%ecx, %edi
	movl	%ebp, 4(%esp)
	sarl	$3, %ebp
	subl	%ebp, %edi
	cmpl	%edi, (%esp)
	jg	L1471
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	L1463
	movl	%ebp, %eax
	movl	16(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	12(%esp), %ebx
	movl	24(%esp), %ebp
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
L1471:
	.cfi_restore_state
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
L1462:
	movl	$0, 12(%ebx)
	movl	$-1, %ebp
	movl	%ecx, (%ebx)
	movl	$1, 4(%ebx)
	jmp	L1461
	.cfi_endproc
LFE156:
	.p2align 4
	.def	_floor1_unpack;	.scl	3;	.type	32;	.endef
_floor1_unpack:
LFB157:
	.cfi_startproc
	subl	$304, %esp
	.cfi_def_cfa_offset 308
	movl	_g_sm_heap, %ecx
	movl	308(%esp), %eax
	movl	28(%eax), %eax
	movl	$1120, (%esp)
	movl	%eax, 20(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 304
	subl	$4, %esp
	.cfi_def_cfa_offset 308
	movl	%ebx, 288(%esp)
	movl	%esi, 292(%esp)
	movl	%edi, 296(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	je	L1474
	movl	%eax, (%esp)
	movl	%eax, %ebx
	movl	$-1, %esi
	xorl	%edi, %edi
	movl	$1120, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	312(%esp), %eax
	movl	$5, %edx
	call	_oggpack_read
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jle	L1476
	movl	%ebp, 300(%esp)
	.cfi_offset 5, -8
	movl	312(%esp), %ebp
	jmp	L1475
	.p2align 4,,10
	.p2align 3
L1530:
	cmpl	%eax, %esi
	cmovl	%eax, %esi
	addl	$1, %edi
	cmpl	%edi, (%ebx)
	jle	L1529
L1475:
	movl	$4, %edx
	movl	%ebp, %eax
	call	_oggpack_read
	movl	%eax, 4(%ebx,%edi,4)
	testl	%eax, %eax
	jns	L1530
L1528:
	movl	300(%esp), %ebp
	.cfi_restore 5
L1477:
	movl	%ebx, (%esp)
	movl	$1120, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 304
	subl	$4, %esp
	.cfi_def_cfa_offset 308
L1473:
	movl	%ebx, %eax
	movl	292(%esp), %esi
	.cfi_restore 6
	movl	288(%esp), %ebx
	.cfi_restore 3
	movl	296(%esp), %edi
	.cfi_restore 7
	addl	$304, %esp
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1529:
	.cfi_def_cfa_offset 308
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	20(%esp), %edi
	movl	%ebx, 16(%esp)
	xorl	%ebp, %ebp
	movl	%esi, 20(%esp)
L1482:
	movl	312(%esp), %eax
	movl	$3, %edx
	call	_oggpack_read
	movl	$2, %edx
	addl	$1, %eax
	movl	%eax, 128(%ebx,%ebp,4)
	movl	312(%esp), %eax
	call	_oggpack_read
	movl	%eax, 192(%ebx,%ebp,4)
	testl	%eax, %eax
	js	L1528
	jne	L1478
	movl	256(%ebx,%ebp,4), %eax
L1479:
	testl	%eax, %eax
	js	L1528
	cmpl	%eax, 24(%edi)
	jle	L1528
	movl	192(%ebx,%ebp,4), %ecx
	movl	$1, %eax
	sall	%cl, %eax
	testl	%eax, %eax
	jle	L1480
	xorl	%esi, %esi
	jmp	L1481
	.p2align 4,,10
	.p2align 3
L1531:
	cmpl	24(%edi), %eax
	jge	L1528
	movl	192(%ebx,%ebp,4), %ecx
	movl	$1, %eax
	addl	$1, %esi
	sall	%cl, %eax
	cmpl	%esi, %eax
	jle	L1480
L1481:
	movl	312(%esp), %eax
	movl	$8, %edx
	call	_oggpack_read
	movl	16(%esp), %ecx
	subl	$1, %eax
	movl	%eax, 320(%ecx,%esi,4)
	cmpl	$-1, %eax
	jge	L1531
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1480:
	addl	$32, 16(%esp)
	addl	$1, %ebp
	cmpl	%ebp, 20(%esp)
	jge	L1482
	movl	300(%esp), %ebp
	.cfi_restore 5
L1476:
	movl	312(%esp), %eax
	movl	$2, %edx
	call	_oggpack_read
	movl	$4, %edx
	addl	$1, %eax
	movl	%eax, 832(%ebx)
	movl	312(%esp), %eax
	call	_oggpack_read
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L1477
	movl	%ebp, 300(%esp)
	movl	(%ebx), %edi
	testl	%edi, %edi
	.cfi_offset 5, -8
	jle	L1483
	movl	$1, %edi
	movl	%ecx, %ebp
	xorl	%edx, %edx
	xorl	%esi, %esi
	sall	%cl, %edi
	movl	%edx, %eax
	movl	%edi, %ecx
	movl	%ebp, %edi
L1486:
	movl	4(%ebx,%edx,4), %ebp
	addl	128(%ebx,%ebp,4), %eax
	movl	%eax, %ebp
	cmpl	$63, %eax
	jg	L1528
	cmpl	%esi, %eax
	jle	L1484
	movl	%edi, 16(%esp)
	movl	%esi, %edi
	movl	%ecx, %esi
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	jmp	L1485
	.p2align 4,,10
	.p2align 3
L1533:
	cmpl	%esi, %eax
	jge	L1528
	addl	$1, %edi
	cmpl	%edi, %ebp
	je	L1532
L1485:
	movl	16(%esp), %edx
	movl	312(%esp), %eax
	call	_oggpack_read
	movl	%eax, 844(%ebx,%edi,4)
	testl	%eax, %eax
	jns	L1533
	jmp	L1528
	.p2align 4,,10
	.p2align 3
L1478:
	movl	312(%esp), %eax
	movl	$8, %edx
	call	_oggpack_read
	movl	%eax, 256(%ebx,%ebp,4)
	jmp	L1479
	.p2align 4,,10
	.p2align 3
L1474:
	.cfi_restore 5
	movl	$1120, %eax
	movl	%ebp, 300(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L1532:
	movl	%esi, %ecx
	movl	20(%esp), %eax
	movl	%edi, %esi
	movl	24(%esp), %edx
	movl	16(%esp), %edi
L1484:
	addl	$1, %edx
	cmpl	%edx, (%ebx)
	jg	L1486
	movl	%edi, %ecx
	movl	%eax, %edx
	movl	$1, %eax
	xorl	%esi, %esi
	sall	%cl, %eax
	movl	%esi, 836(%ebx)
	leal	2(%ebp), %ecx
	movl	%eax, 840(%ebx)
	addl	$1, %ebp
	js	L1487
L1493:
	leal	0(,%edx,4), %edi
	movl	%ecx, 20(%esp)
	leal	28(%esp), %esi
	leal	844(%ebx,%edi), %edx
	leal	836(%ebx), %eax
	movl	%edx, 16(%esp)
	movl	%esi, %edx
L1488:
	movl	%eax, (%edx)
	addl	$4, %eax
	addl	$4, %edx
	cmpl	16(%esp), %eax
	jne	L1488
	movl	20(%esp), %ecx
	movl	$_icomp, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	call	_qsort
	testl	%ebp, %ebp
	je	L1527
	movl	28(%esp), %edx
	leal	4(%esi), %eax
	leal	8(%esi,%edi), %ecx
	jmp	L1491
L1534:
	addl	$4, %eax
	cmpl	%eax, %ecx
	je	L1527
L1491:
	movl	(%edx), %esi
	movl	(%eax), %edx
	cmpl	(%edx), %esi
	jne	L1534
	jmp	L1528
L1487:
	leal	28(%esp), %eax
	movl	$_icomp, 12(%esp)
	movl	$4, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_qsort
	movl	300(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1473
L1483:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	$1, %ebp
	movl	%eax, 836(%ebx)
	movl	$1, %eax
	sall	%cl, %eax
	movl	$2, %ecx
	movl	%eax, 840(%ebx)
	jmp	L1493
L1527:
	movl	300(%esp), %ebp
	.cfi_restore 5
	jmp	L1473
	.cfi_endproc
LFE157:
	.p2align 4
	.def	_floor0_unpack;	.scl	3;	.type	32;	.endef
_floor0_unpack:
LFB158:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	_g_sm_heap, %ecx
	movl	24(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	28(%esp), %esi
	movl	28(%eax), %edi
	movl	$96, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 4(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L1536
	movl	%eax, %ebx
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$16, %edx
	movl	%eax, (%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$16, %edx
	movl	%eax, 4(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$6, %edx
	movl	%eax, 8(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$8, %edx
	movl	%eax, 12(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$4, %edx
	movl	%eax, 16(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	(%ebx), %ecx
	addl	$1, %eax
	movl	%eax, 20(%ebx)
	testl	%ecx, %ecx
	jle	L1537
	movl	4(%ebx), %edx
	testl	%edx, %edx
	jle	L1537
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L1537
	testl	%eax, %eax
	jle	L1537
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	jmp	L1539
	.p2align 4,,10
	.p2align 3
L1552:
	cmpl	24(%edi), %eax
	jge	L1550
	movl	1824(%edi,%eax,4), %eax
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	L1550
	movl	(%eax), %eax
	testl	%eax, %eax
	jle	L1550
	addl	$1, %ebp
	cmpl	%ebp, 20(%ebx)
	jle	L1551
L1539:
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 24(%ebx,%ebp,4)
	testl	%eax, %eax
	jns	L1552
L1550:
	movl	16(%esp), %ebp
	.cfi_restore 5
L1537:
	movl	$0, 80(%ebx)
	xorl	%eax, %eax
	movl	$0, 84(%ebx)
	movl	$0, 88(%ebx)
	movl	$0, 92(%ebx)
L1541:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$80, %eax
	jb	L1541
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L1535:
	movl	%ebx, %eax
	movl	8(%esp), %esi
	movl	4(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	12(%esp), %edi
	addl	$20, %esp
	.cfi_restore 6
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1536:
	.cfi_restore_state
	movl	$96, %eax
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1551:
	movl	16(%esp), %ebp
	.cfi_restore 5
	jmp	L1535
	.cfi_endproc
LFE158:
	.p2align 4
	.def	_res0_unpack;	.scl	3;	.type	32;	.endef
_res0_unpack:
LFB159:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	_g_sm_heap, %ecx
	movl	$2840, (%esp)
	movl	%esi, 24(%esp)
	.cfi_offset 6, -16
	movl	44(%esp), %esi
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
	movl	%ebx, 20(%esp)
	testl	%eax, %eax
	.cfi_offset 3, -20
	je	L1554
	movl	$2840, 8(%esp)
	movl	%eax, %ebx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	40(%esp), %eax
	movl	$24, %edx
	movl	28(%eax), %eax
	movl	%eax, 16(%esp)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$24, %edx
	movl	%eax, (%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$24, %edx
	movl	%eax, 4(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$6, %edx
	addl	$1, %eax
	movl	%eax, 8(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$8, %edx
	addl	$1, %eax
	movl	%eax, 12(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 20(%ebx)
	movl	%eax, %edx
	testl	%eax, %eax
	js	L1555
	movl	%ebp, 32(%esp)
	movl	12(%ebx), %eax
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
	movl	$0, 12(%esp)
	testl	%eax, %eax
	jle	L1602
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	.p2align 4
	.p2align 3
L1556:
	movl	$3, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$1, %edx
	movl	%eax, %edi
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	js	L1598
	jne	L1603
L1558:
	movl	%edi, 24(%ebx,%ebp,4)
	movl	%edi, %eax
	testl	%edi, %edi
	je	L1559
	xorl	%edx, %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1560:
	movl	%eax, %ecx
	andl	$1, %ecx
	addl	%ecx, %edx
	shrl	%eax
	jne	L1560
	addl	%edx, 12(%esp)
L1559:
	addl	$1, %ebp
	cmpl	%ebp, 12(%ebx)
	jg	L1556
	movl	12(%esp), %edi
	testl	%edi, %edi
	jle	L1561
	xorl	%ebp, %ebp
	jmp	L1562
	.p2align 4,,10
	.p2align 3
L1605:
	movl	%eax, 280(%ebx,%ebp,4)
	addl	$1, %ebp
	cmpl	%edi, %ebp
	je	L1604
L1562:
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	jns	L1605
L1598:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L1555:
	movl	%ebx, (%esp)
	movl	$2840, 8(%esp)
	movl	$0, 4(%esp)
	call	_memset
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	xorl	%ebx, %ebx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 36
	subl	$4, %esp
	.cfi_def_cfa_offset 40
L1553:
	movl	%ebx, %eax
	movl	24(%esp), %esi
	movl	20(%esp), %ebx
	.cfi_restore 3
	addl	$36, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1603:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$5, %edx
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	js	L1598
	sall	$3, %eax
	orl	%eax, %edi
	jmp	L1558
L1604:
	movl	16(%esp), %ecx
	movl	20(%ebx), %edx
	movl	24(%ecx), %esi
	cmpl	%esi, %edx
	jge	L1598
	leal	280(%ebx), %eax
	leal	(%eax,%ebp,4), %edi
	movl	%ecx, %ebp
	jmp	L1565
	.p2align 4,,10
	.p2align 3
L1607:
	movl	1824(%ebp,%ecx,4), %ecx
	movl	12(%ecx), %ecx
	testl	%ecx, %ecx
	je	L1598
	addl	$4, %eax
	cmpl	%edi, %eax
	je	L1606
L1565:
	movl	(%eax), %ecx
	cmpl	%ecx, %esi
	jg	L1607
	jmp	L1598
L1554:
	.cfi_restore 5
	.cfi_restore 7
	movl	$2840, %eax
	movl	%edi, 28(%esp)
	movl	%ebp, 32(%esp)
	.cfi_offset 7, -12
	.cfi_offset 5, -8
	call	__Z13handle_memerri
L1606:
	movl	28(%esp), %edi
	.cfi_restore 7
L1564:
	movl	16(%esp), %eax
	movl	1824(%eax,%edx,4), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	jle	L1601
	movl	12(%ebx), %ecx
	movl	4(%eax), %esi
	movl	$1, %eax
L1566:
	imull	%ecx, %eax
	cmpl	%eax, %esi
	jl	L1601
	subl	$1, %edx
	jne	L1566
	movl	%eax, 16(%ebx)
	movl	32(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	jmp	L1553
L1602:
	.cfi_restore_state
	movl	16(%esp), %eax
	cmpl	24(%eax), %edx
	jl	L1564
L1601:
	movl	32(%esp), %ebp
	.cfi_restore 5
	jmp	L1555
L1561:
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	16(%esp), %eax
	movl	20(%ebx), %edx
	movl	28(%esp), %edi
	.cfi_restore 7
	cmpl	24(%eax), %edx
	jl	L1564
	jmp	L1601
	.cfi_endproc
LFE159:
	.p2align 4
	.globl	_ogg_page_granulepos.isra.0
	.def	_ogg_page_granulepos.isra.0;	.scl	2;	.type	32;	.endef
_ogg_page_granulepos.isra.0:
LFB161:
	.cfi_startproc
	movl	10(%eax), %edx
	movl	6(%eax), %eax
	ret
	.cfi_endproc
LFE161:
	.p2align 4
	.globl	_ogg_page_serialno
	.def	_ogg_page_serialno;	.scl	2;	.type	32;	.endef
_ogg_page_serialno:
LFB162:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	movl	14(%eax), %eax
	ret
	.cfi_endproc
LFE162:
	.p2align 4
	.globl	_ogg_stream_clear
	.def	_ogg_stream_clear;	.scl	2;	.type	32;	.endef
_ogg_stream_clear:
LFB164:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	20(%esp), %ebx
	testl	%ebx, %ebx
	je	L1611
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L1612
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L1612:
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L1613
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L1613:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	L1614
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 16
	subl	$4, %esp
	.cfi_def_cfa_offset 20
L1614:
	movl	$360, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	call	_memset
L1611:
	addl	$12, %esp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE164:
	.p2align 4
	.globl	_ogg_stream_init
	.def	_ogg_stream_init;	.scl	2;	.type	32;	.endef
_ogg_stream_init:
LFB165:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -12
	movl	24(%esp), %ebx
	testl	%ebx, %ebx
	je	L1629
	movl	$360, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebx, (%esp)
	movl	%esi, 16(%esp)
	.cfi_offset 6, -8
	call	_memset
	movl	$16384, 4(%ebx)
	movl	_g_sm_heap, %ecx
	movl	$1024, 24(%ebx)
	movl	$16384, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1630
	movl	%eax, (%ebx)
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1643
	movl	%eax, 16(%ebx)
	movl	24(%ebx), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,8), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	je	L1643
	movl	(%ebx), %edx
	movl	%eax, 20(%ebx)
	testl	%edx, %edx
	je	L1635
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L1635
	movl	28(%esp), %eax
	movl	%eax, 336(%ebx)
	movl	16(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L1628:
	movl	12(%esp), %ebx
	addl	$20, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1643:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1630:
	movl	$16384, %eax
	call	__Z13handle_memerri
L1635:
	movl	%ebx, (%esp)
	call	_ogg_stream_clear
	movl	16(%esp), %esi
	.cfi_restore 6
L1629:
	movl	$-1, %eax
	jmp	L1628
	.cfi_endproc
LFE165:
	.p2align 4
	.globl	_ogg_sync_init
	.def	_ogg_sync_init;	.scl	2;	.type	32;	.endef
_ogg_sync_init:
LFB166:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, %eax
	je	L1647
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
L1647:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE166:
	.p2align 4
	.globl	_ogg_sync_clear
	.def	_ogg_sync_clear;	.scl	2;	.type	32;	.endef
_ogg_sync_clear:
LFB168:
	.cfi_startproc
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	L1652
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1653
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 4
	subl	$4, %esp
	.cfi_def_cfa_offset 8
	movl	8(%esp), %eax
L1653:
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
L1652:
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE168:
	.p2align 4
	.globl	_ogg_sync_buffer
	.def	_ogg_sync_buffer;	.scl	2;	.type	32;	.endef
_ogg_sync_buffer:
LFB170:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
	movl	%ebx, 16(%esp)
	.cfi_offset 3, -12
	movl	28(%esp), %ebx
	movl	4(%ebx), %ecx
	testl	%ecx, %ecx
	js	L1670
	movl	%esi, 20(%esp)
	.cfi_offset 6, -8
	movl	12(%ebx), %eax
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	testl	%eax, %eax
	je	L1663
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	testl	%edx, %edx
	jle	L1664
	addl	%esi, %eax
	movl	%edx, 8(%esp)
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	4(%ebx), %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
L1664:
	movl	$0, 12(%ebx)
L1663:
	movl	%esi, %eax
	subl	%edx, %ecx
	cmpl	32(%esp), %ecx
	jge	L1665
	movl	32(%esp), %eax
	movl	_g_sm_heap, %ecx
	leal	4096(%edx,%eax), %edx
	testl	%esi, %esi
	je	L1666
	movl	%edx, 4(%esp)
	movl	%esi, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L1668
	testl	%edx, %edx
	jne	L1678
	testl	%eax, %eax
	je	L1679
L1668:
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	8(%ebx), %edx
L1665:
	movl	20(%esp), %esi
	.cfi_restore 6
	addl	%edx, %eax
L1661:
	movl	16(%esp), %ebx
	addl	$24, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1666:
	.cfi_def_cfa_offset 28
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	movl	%edx, (%esp)
	movl	%edx, 12(%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	testl	%eax, %eax
	movl	12(%esp), %edx
	jne	L1668
L1678:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1679:
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L1669
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, 12(%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 24
	subl	$4, %esp
	.cfi_def_cfa_offset 28
	movl	12(%esp), %eax
L1669:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	movl	20(%esp), %esi
	.cfi_restore 6
	jmp	L1661
L1670:
	xorl	%eax, %eax
	jmp	L1661
	.cfi_endproc
LFE170:
	.p2align 4
	.globl	_ogg_sync_wrote
	.def	_ogg_sync_wrote;	.scl	2;	.type	32;	.endef
_ogg_sync_wrote:
LFB171:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	js	L1683
	movl	8(%esp), %eax
	addl	8(%edx), %eax
	cmpl	%ecx, %eax
	jg	L1683
	movl	%eax, 8(%edx)
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
L1683:
	movl	$-1, %eax
	ret
	.cfi_endproc
LFE171:
	.p2align 4
	.globl	_ogg_sync_pageout
	.def	_ogg_sync_pageout;	.scl	2;	.type	32;	.endef
_ogg_sync_pageout:
LFB172:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %ebx
	movl	16(%esp), %esi
	movl	4(%ebx), %edx
	testl	%edx, %edx
	jns	L1686
	jmp	L1687
	.p2align 4,,10
	.p2align 3
L1695:
	je	L1684
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L1694
L1686:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	_ogg_sync_pageseek
	testl	%eax, %eax
	jle	L1695
	movl	$1, %eax
L1684:
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
L1694:
	.cfi_restore_state
	movl	$1, 16(%ebx)
	movl	$-1, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L1687:
	.cfi_restore_state
	xorl	%eax, %eax
	jmp	L1684
	.cfi_endproc
LFE172:
	.p2align 4
	.globl	_ogg_stream_pagein
	.def	_ogg_stream_pagein;	.scl	2;	.type	32;	.endef
_ogg_stream_pagein:
LFB174:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	76(%esp), %eax
	movl	%ebx, 52(%esp)
	movl	%ebp, 64(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	72(%esp), %ebx
	movl	%edi, 60(%esp)
	.cfi_offset 7, -12
	movl	(%eax), %edi
	movzbl	5(%edi), %ecx
	movl	%ecx, %ebp
	movb	%cl, 19(%esp)
	andl	$2, %ebp
	testl	%ebx, %ebx
	je	L1697
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	je	L1697
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	8(%eax), %esi
	movl	12(%eax), %eax
	movl	%esi, 36(%esp)
	movl	%eax, 12(%esp)
	movzbl	4(%edi), %eax
	movb	%al, 28(%esp)
	movl	%edi, %eax
	call	_ogg_page_granulepos.isra.0
	movl	36(%ebx), %esi
	movl	%eax, 40(%esp)
	movl	14(%edi), %eax
	movl	%edx, 44(%esp)
	movl	%eax, 24(%esp)
	movl	18(%edi), %eax
	movl	%eax, 20(%esp)
	movzbl	26(%edi), %eax
	movb	%al, 32(%esp)
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L1700
	movl	8(%ebx), %edx
	subl	%eax, %edx
	movl	%edx, 8(%ebx)
	jne	L1796
L1701:
	movl	$0, 12(%ebx)
L1700:
	testl	%esi, %esi
	je	L1702
	movl	28(%ebx), %edx
	movl	%esi, %eax
	cmpl	%esi, %edx
	je	L1703
	movl	16(%ebx), %ecx
	subl	%esi, %edx
	sall	$2, %edx
	leal	(%ecx,%esi,4), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_memmove
	movl	28(%ebx), %eax
	movl	20(%ebx), %edx
	subl	%esi, %eax
	movl	%edx, (%esp)
	sall	$3, %eax
	movl	%eax, 8(%esp)
	leal	(%edx,%esi,8), %eax
	movl	%eax, 4(%esp)
	call	_memmove
	movl	28(%ebx), %eax
L1703:
	subl	%esi, %eax
	subl	%esi, 32(%ebx)
	movl	%eax, 28(%ebx)
	movl	$0, 36(%ebx)
L1702:
	movl	24(%esp), %eax
	cmpl	%eax, 336(%ebx)
	jne	L1795
	cmpb	$0, 28(%esp)
	jne	L1795
	movzbl	32(%esp), %eax
	leal	1(%eax), %esi
	movl	%eax, 24(%esp)
	movl	24(%ebx), %eax
	movl	%eax, %edx
	subl	%esi, %edx
	cmpl	28(%ebx), %edx
	jg	L1704
	movl	$2147483647, %edx
	subl	%esi, %edx
	cmpl	%edx, %eax
	jg	L1709
	addl	%eax, %esi
	movl	_g_sm_heap, %ecx
	cmpl	$2147483615, %esi
	leal	32(%esi), %eax
	cmovl	%eax, %esi
	leal	0(,%esi,4), %edx
	movl	%edx, 4(%esp)
	movl	16(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	jne	L1787
	movl	28(%esp), %edx
	testl	%edx, %edx
	jne	L1729
	testl	%eax, %eax
	je	L1709
L1787:
	leal	0(,%esi,8), %edx
	movl	%eax, 16(%ebx)
	movl	_g_sm_heap, %ecx
	movl	%edx, 4(%esp)
	movl	20(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	jne	L1788
	movl	28(%esp), %edx
	testl	%edx, %edx
	jne	L1729
	testl	%eax, %eax
	je	L1709
L1788:
	movl	%eax, 20(%ebx)
	movl	%esi, 24(%ebx)
L1704:
	movl	340(%ebx), %ecx
	cmpl	20(%esp), %ecx
	je	L1714
	movl	32(%ebx), %eax
	movl	28(%ebx), %esi
	movl	%eax, 28(%esp)
	cmpl	%esi, %eax
	jge	L1715
	movl	8(%ebx), %edx
	movl	%ecx, 48(%esp)
	movl	%edx, 32(%esp)
	movl	16(%ebx), %edx
	leal	(%edx,%eax,4), %eax
	leal	(%edx,%esi,4), %esi
	movl	32(%esp), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L1716:
	movzbl	(%eax), %ecx
	addl	$4, %eax
	subl	%ecx, %edx
	movl	%edx, 8(%ebx)
	cmpl	%esi, %eax
	jne	L1716
	movl	48(%esp), %ecx
L1715:
	cmpl	$-1, %ecx
	je	L1797
	movl	28(%esp), %esi
	movl	16(%ebx), %eax
	leal	1(%esi), %edx
	movl	%edx, 28(%ebx)
	movl	$1024, (%eax,%esi,4)
	addl	$1, 32(%ebx)
L1714:
	testb	$1, 19(%esp)
	je	L1718
L1802:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	jle	L1719
	movl	16(%ebx), %edx
	movzbl	-4(%edx,%eax,4), %eax
	cmpl	$255, %eax
	je	L1718
L1719:
	movl	24(%esp), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	L1798
	movl	36(%esp), %edx
	movl	12(%esp), %ecx
	movl	24(%esp), %ebp
	jmp	L1721
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1800:
	cmpl	%esi, %ebp
	je	L1799
L1721:
	movzbl	27(%edi,%esi), %eax
	addl	$1, %esi
	addl	%eax, %edx
	subl	%eax, %ecx
	cmpl	$255, %eax
	je	L1800
	movl	%ecx, 12(%esp)
	movl	12(%esp), %eax
	xorl	%ebp, %ebp
	movl	%edx, 36(%esp)
	testl	%eax, %eax
	jne	L1723
	.p2align 4
	.p2align 3
L1725:
	movl	24(%esp), %ecx
	cmpl	%ecx, %esi
	jge	L1724
	movl	$-1, 12(%esp)
	movl	28(%ebx), %edx
	leal	(%esi,%edi), %eax
	leal	(%edi,%ecx), %esi
	.p2align 4
	.p2align 3
L1734:
	movl	16(%ebx), %edi
	movzbl	27(%eax), %ecx
	movl	%ecx, (%edi,%edx,4)
	movl	28(%ebx), %edi
	movl	20(%ebx), %edx
	movl	$-1, (%edx,%edi,8)
	movl	$-1, 4(%edx,%edi,8)
	testl	%ebp, %ebp
	je	L1732
	movl	28(%ebx), %edi
	movl	16(%ebx), %edx
	orl	$256, (%edx,%edi,4)
L1732:
	movl	28(%ebx), %edi
	leal	1(%edi), %edx
	cmpl	$255, %ecx
	je	L1733
	movl	%edx, 32(%ebx)
	movl	%edi, 12(%esp)
L1733:
	addl	$1, %eax
	movl	%edx, 28(%ebx)
	xorl	%ebp, %ebp
	cmpl	%esi, %eax
	jne	L1734
	movl	12(%esp), %edi
	cmpl	$-1, %edi
	je	L1724
	movl	20(%ebx), %eax
	movl	40(%esp), %edx
	movl	44(%esp), %ecx
	movl	%edx, (%eax,%edi,8)
	movl	%ecx, 4(%eax,%edi,8)
L1724:
	testb	$4, 19(%esp)
	je	L1735
	movl	$1, 328(%ebx)
	movl	28(%ebx), %eax
	testl	%eax, %eax
	jle	L1735
	movl	16(%ebx), %edx
	orl	$512, -4(%edx,%eax,4)
L1735:
	movl	20(%esp), %eax
	addl	$1, %eax
	movl	%eax, 340(%ebx)
	movl	56(%esp), %esi
	.cfi_restore 6
	xorl	%eax, %eax
L1696:
	movl	52(%esp), %ebx
	movl	60(%esp), %edi
	movl	64(%esp), %ebp
	addl	$68, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1718:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	je	L1725
L1723:
	movl	4(%ebx), %eax
	movl	8(%ebx), %edx
	movl	%eax, %ecx
	subl	12(%esp), %ecx
	movl	%eax, 28(%esp)
	cmpl	%edx, %ecx
	jg	L1801
	movl	12(%esp), %eax
	movl	$2147483647, %edx
	movl	28(%esp), %ecx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jg	L1709
	leal	(%ecx,%eax), %edx
	movl	_g_sm_heap, %ecx
	cmpl	$2147482623, %edx
	leal	1024(%edx), %eax
	cmovl	%eax, %edx
	movl	%edx, 4(%esp)
	movl	(%ebx), %eax
	movl	%edx, 28(%esp)
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 64
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	testl	%eax, %eax
	movl	28(%esp), %edx
	jne	L1789
	testl	%edx, %edx
	jne	L1729
	testl	%eax, %eax
	je	L1709
L1789:
	movl	%edx, 4(%ebx)
	movl	8(%ebx), %edx
	movl	%eax, (%ebx)
	jmp	L1727
	.p2align 4,,10
	.p2align 3
L1797:
	movl	28(%esp), %eax
	movl	%eax, 28(%ebx)
	testb	$1, 19(%esp)
	je	L1718
	jmp	L1802
	.p2align 4,,10
	.p2align 3
L1801:
	movl	(%ebx), %eax
L1727:
	movl	12(%esp), %ecx
	addl	%edx, %eax
	movl	36(%esp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	call	_memcpy
	movl	12(%esp), %ecx
	addl	%ecx, 8(%ebx)
	jmp	L1725
	.p2align 4,,10
	.p2align 3
L1729:
	movl	%edx, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1796:
	addl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_memmove
	jmp	L1701
	.p2align 4,,10
	.p2align 3
L1799:
	movl	%edx, 36(%esp)
	movl	%ecx, 12(%esp)
	testl	%ecx, %ecx
	je	L1724
	xorl	%ebp, %ebp
	jmp	L1723
L1795:
	movl	56(%esp), %esi
	.cfi_restore 6
L1697:
	movl	$-1, %eax
	jmp	L1696
L1709:
	.cfi_offset 6, -16
	movl	%ebx, (%esp)
	call	_ogg_stream_clear
	movl	56(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	jmp	L1697
L1798:
	.cfi_restore_state
	movl	12(%esp), %edx
	testl	%edx, %edx
	je	L1724
	xorl	%ebp, %ebp
	jmp	L1723
	.cfi_endproc
LFE174:
	.p2align 4
	.globl	_ogg_sync_reset
	.def	_ogg_sync_reset;	.scl	2;	.type	32;	.endef
_ogg_sync_reset:
LFB179:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	js	L1805
	xorps	%xmm0, %xmm0
	movl	$0, 24(%eax)
	movups	%xmm0, 8(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L1805:
	.cfi_restore_state
	movl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE179:
	.p2align 4
	.globl	_ogg_stream_reset
	.def	_ogg_stream_reset;	.scl	2;	.type	32;	.endef
_ogg_stream_reset:
LFB180:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	testl	%eax, %eax
	je	L1810
	movl	(%eax), %edx
	testl	%edx, %edx
	je	L1810
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 324(%eax)
	movl	$0, 328(%eax)
	movl	$0, 332(%eax)
	movl	$-1, 340(%eax)
	movl	$0, 344(%eax)
	movl	$0, 348(%eax)
	movl	$0, 352(%eax)
	movl	$0, 356(%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L1810:
	.cfi_restore_state
	movl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE180:
	.p2align 4
	.globl	__packetout.lto_priv.0
	.def	__packetout.lto_priv.0;	.scl	2;	.type	32;	.endef
__packetout.lto_priv.0:
LFB182:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	%eax, %ebx
	movl	36(%eax), %eax
	movl	%ecx, (%esp)
	cmpl	%eax, 32(%ebx)
	jle	L1822
	movl	%ebp, 24(%esp)
	.cfi_offset 5, -8
	movl	16(%ebx), %ebp
	movl	0(%ebp,%eax,4), %ecx
	testb	$4, %ch
	jne	L1834
	testl	%edx, %edx
	jne	L1824
	testb	$1, (%esp)
	jne	L1824
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	$1, %eax
L1836:
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1834:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	addl	$1, %eax
	addl	$1, 344(%ebx)
	movl	%eax, 36(%ebx)
	movl	$-1, %eax
	adcl	$0, 348(%ebx)
	movl	24(%esp), %ebp
	.cfi_remember_state
	.cfi_restore 5
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1824:
	.cfi_restore_state
	movl	%esi, 16(%esp)
	.cfi_offset 6, -16
	movzbl	%cl, %esi
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%ecx, %edi
	andl	$512, %edi
	cmpl	$255, %esi
	jne	L1817
	movl	%ecx, 4(%esp)
	movl	%ebx, 8(%esp)
	.p2align 5
	.p2align 4
	.p2align 3
L1819:
	addl	$1, %eax
	movl	0(%ebp,%eax,4), %ebx
	movzbl	%bl, %ecx
	andb	$2, %bh
	movl	$512, %ebx
	cmovne	%ebx, %edi
	addl	%ecx, %esi
	cmpl	$255, %ecx
	je	L1819
	movl	4(%esp), %ecx
	movl	8(%esp), %ebx
L1817:
	testl	%edx, %edx
	je	L1820
	andl	$256, %ecx
	movl	%edi, 12(%edx)
	movl	%ecx, 8(%edx)
	movl	12(%ebx), %ecx
	addl	(%ebx), %ecx
	movl	%ecx, (%edx)
	movl	344(%ebx), %edi
	movl	348(%ebx), %ebp
	movl	%edi, 24(%edx)
	movl	%ebp, 28(%edx)
	movl	20(%ebx), %ecx
	movl	(%ecx,%eax,8), %edi
	movl	4(%ecx,%eax,8), %ebp
	movl	%esi, 4(%edx)
	movl	%edi, 16(%edx)
	movl	%ebp, 20(%edx)
L1820:
	movl	(%esp), %edx
	testl	%edx, %edx
	je	L1835
	addl	$1, %eax
	addl	%esi, 12(%ebx)
	movl	%eax, 36(%ebx)
	movl	(%esp), %eax
	addl	$1, 344(%ebx)
	adcl	$0, 348(%ebx)
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	24(%esp), %ebp
	.cfi_restore 5
	movl	12(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1822:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	movl	12(%esp), %ebx
	xorl	%eax, %eax
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1835:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	20(%esp), %edi
	.cfi_restore 7
	movl	$1, %eax
	movl	24(%esp), %ebp
	.cfi_restore 5
	jmp	L1836
	.cfi_endproc
LFE182:
	.p2align 4
	.globl	_ogg_stream_packetout
	.def	_ogg_stream_packetout;	.scl	2;	.type	32;	.endef
_ogg_stream_packetout:
LFB183:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	testl	%eax, %eax
	je	L1839
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	L1839
	movl	$1, %ecx
	jmp	__packetout.lto_priv.0
L1839:
	xorl	%eax, %eax
	ret
	.cfi_endproc
LFE183:
	.p2align 4
	.globl	__vorbis_block_alloc
	.def	__vorbis_block_alloc;	.scl	2;	.type	32;	.endef
__vorbis_block_alloc:
LFB185:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	leal	7(%edx), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	andl	$-8, %esi
	movl	%eax, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	72(%eax), %ecx
	movl	68(%eax), %eax
	leal	(%ecx,%esi), %edx
	cmpl	76(%ebx), %edx
	jle	L1842
	testl	%eax, %eax
	je	L1843
	movl	$8, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	L1844
	movl	72(%ebx), %edx
	addl	%edx, 80(%ebx)
	movl	84(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	68(%ebx), %edx
	movl	%edx, (%eax)
	movl	%eax, 84(%ebx)
L1843:
	movl	%esi, 76(%ebx)
	movl	_g_sm_heap, %ecx
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	L1845
	movl	%esi, %edx
	movl	%eax, 68(%ebx)
	movl	%edx, 72(%ebx)
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
L1842:
	.cfi_restore_state
	movl	%edx, 72(%ebx)
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	addl	%ecx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1845:
	.cfi_restore_state
	movl	%esi, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L1844:
	movl	$8, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE185:
	.p2align 4
	.def	_floor1_inverse1;	.scl	3;	.type	32;	.endef
_floor1_inverse1:
LFB186:
	.cfi_startproc
	subl	$56, %esp
	.cfi_def_cfa_offset 60
	movl	$1, %edx
	movl	%ebx, 40(%esp)
	movl	64(%esp), %eax
	.cfi_offset 3, -20
	movl	60(%esp), %ebx
	movl	%ebp, 52(%esp)
	.cfi_offset 5, -8
	movl	1296(%eax), %ebp
	movl	64(%ebx), %eax
	movl	4(%eax), %eax
	movl	28(%eax), %eax
	movl	2848(%eax), %eax
	movl	%eax, 24(%esp)
	leal	4(%ebx), %eax
	movl	%eax, 20(%esp)
	call	_oggpack_read
	cmpl	$1, %eax
	je	L1907
L1852:
	movl	$0, 28(%esp)
L1851:
	movl	28(%esp), %eax
	movl	40(%esp), %ebx
	movl	52(%esp), %ebp
	addl	$56, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L1907:
	.cfi_restore_state
	movl	64(%esp), %eax
	movl	%esi, 44(%esp)
	movl	%edi, 48(%esp)
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	1284(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	call	__vorbis_block_alloc
	movl	%eax, 28(%esp)
	movl	64(%esp), %eax
	movl	1292(%eax), %eax
	movl	%eax, %edx
	movl	%eax, (%esp)
	subl	$1, %edx
	je	L1853
	bsrl	%edx, %edx
	addl	$1, %edx
L1853:
	movl	20(%esp), %eax
	call	_oggpack_read
	movl	28(%esp), %esi
	movl	%eax, (%esi)
	movl	64(%esp), %eax
	movl	1292(%eax), %eax
	movl	%eax, %edx
	movl	%eax, (%esp)
	subl	$1, %edx
	je	L1854
	bsrl	%edx, %edx
	addl	$1, %edx
L1854:
	movl	20(%esp), %eax
	call	_oggpack_read
	movl	28(%esp), %esi
	movl	%eax, 4(%esi)
	movl	0(%ebp), %ebx
	testl	%ebx, %ebx
	jle	L1855
	movl	$2, 36(%esp)
	movl	$0, 32(%esp)
	movl	%ebp, 4(%esp)
L1864:
	movl	4(%esp), %eax
	movl	32(%esp), %ebx
	movl	4(%eax,%ebx,4), %esi
	leal	(%eax,%esi,4), %eax
	movl	%esi, 12(%esp)
	movl	128(%eax), %ebx
	movl	192(%eax), %edi
	movl	%ebx, (%esp)
	xorl	%ebx, %ebx
	movl	%edi, 8(%esp)
	testl	%edi, %edi
	jne	L1908
L1856:
	movl	(%esp), %edx
	testl	%edx, %edx
	jle	L1857
	movl	28(%esp), %eax
	movl	36(%esp), %esi
	movl	$1, %ebp
	movzbl	8(%esp), %ecx
	leal	(%eax,%esi,4), %edi
	movl	12(%esp), %eax
	xorl	%esi, %esi
	sall	%cl, %ebp
	subl	$1, %ebp
	movl	%ebp, 12(%esp)
	leal	0(,%eax,8), %ebp
	jmp	L1863
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1858:
	movl	$0, (%edi)
L1862:
	movzbl	8(%esp), %ecx
	addl	$1, %esi
	addl	$4, %edi
	sarl	%cl, %ebx
	cmpl	%esi, (%esp)
	je	L1857
L1863:
	movl	12(%esp), %eax
	movl	4(%esp), %edx
	andl	%ebx, %eax
	leal	80(%eax,%ebp), %eax
	movl	(%edx,%eax,4), %ecx
	testl	%ecx, %ecx
	js	L1858
	imull	$56, %ecx, %ecx
	addl	24(%esp), %ecx
	movl	8(%ecx), %eax
	testl	%eax, %eax
	jle	L1906
	movl	20(%esp), %edx
	movl	%ecx, %eax
	movl	%ecx, 16(%esp)
	call	_decode_packed_entry_number
	movl	16(%esp), %ecx
	testl	%eax, %eax
	js	L1906
	movl	24(%ecx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, (%edi)
	cmpl	$-1, %eax
	jne	L1862
L1904:
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	jmp	L1852
	.p2align 4,,10
	.p2align 3
L1857:
	.cfi_restore_state
	movl	4(%esp), %ebx
	addl	$1, 32(%esp)
	movl	(%esp), %edi
	movl	32(%esp), %eax
	addl	%edi, 36(%esp)
	cmpl	%eax, (%ebx)
	jg	L1864
	movl	%ebx, %ebp
L1855:
	movl	64(%esp), %eax
	movl	$2, %esi
	cmpl	$2, 1284(%eax)
	jle	L1905
	movl	%ebp, (%esp)
	movl	28(%esp), %ecx
	movl	%eax, %ebx
	jmp	L1865
	.p2align 4,,10
	.p2align 3
L1909:
	testl	%edx, %edx
	je	L1869
	leal	(%edi,%edi), %ebp
	cmpl	%edx, %ebp
	jg	L1871
L1870:
	notl	%edx
	addl	%edi, %edx
	addl	%eax, %edx
L1872:
	andl	$32767, %edx
	movl	%edx, (%ecx,%esi,4)
	movl	1024(%ebx,%esi,4), %eax
	andl	$32767, (%ecx,%eax,4)
	movl	772(%ebx,%esi,4), %eax
	andl	$32767, (%ecx,%eax,4)
L1874:
	addl	$1, %esi
	cmpl	%esi, 1284(%ebx)
	jle	L1905
L1865:
	movl	1024(%ebx,%esi,4), %eax
	movl	(%esp), %edx
	movl	772(%ebx,%esi,4), %ebp
	movl	836(%edx,%eax,4), %edi
	movl	(%ecx,%eax,4), %eax
	movl	836(%edx,%esi,4), %edx
	movl	%edi, 4(%esp)
	movl	(%ecx,%ebp,4), %edi
	andl	$32767, %eax
	movl	%eax, 8(%esp)
	andl	$32767, %edi
	movl	%edx, 12(%esp)
	subl	4(%esp), %edx
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovs	%edi, %eax
	imull	%edx, %eax
	movl	(%esp), %edx
	movl	836(%edx,%ebp,4), %ebp
	subl	4(%esp), %ebp
	cltd
	idivl	%ebp
	movl	8(%esp), %ebp
	movl	%ebp, %edx
	subl	%eax, %edx
	addl	%ebp, %eax
	testl	%edi, %edi
	movl	1292(%ebx), %edi
	cmovs	%edx, %eax
	movl	(%ecx,%esi,4), %edx
	subl	%eax, %edi
	cmpl	%eax, %edi
	jl	L1909
	testl	%edx, %edx
	je	L1869
	leal	(%eax,%eax), %ebp
	cmpl	%edx, %ebp
	jg	L1871
	cmpl	%eax, %edi
	jg	L1872
	jmp	L1870
	.p2align 4,,10
	.p2align 3
L1908:
	imull	$56, 256(%eax), %ebx
	addl	24(%esp), %ebx
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L1904
	movl	20(%esp), %edx
	movl	%ebx, %eax
	call	_decode_packed_entry_number
	testl	%eax, %eax
	js	L1904
	movl	24(%ebx), %edx
	movl	(%edx,%eax,4), %ebx
	cmpl	$-1, %ebx
	jne	L1856
	jmp	L1904
	.p2align 4,,10
	.p2align 3
L1906:
	movl	$-1, (%edi)
	movl	44(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	jmp	L1852
	.p2align 4,,10
	.p2align 3
L1869:
	.cfi_restore_state
	orb	$-128, %ah
	movl	%eax, (%ecx,%esi,4)
	jmp	L1874
L1871:
	testb	$1, %dl
	je	L1873
	leal	1(%edx), %edi
	sarl	%edi
	subl	%edi, %eax
	movl	%eax, %edx
	jmp	L1872
L1873:
	sarl	%edx
	addl	%eax, %edx
	jmp	L1872
L1861:
L1905:
	movl	44(%esp), %esi
	.cfi_restore 6
	movl	48(%esp), %edi
	.cfi_restore 7
	jmp	L1851
	.cfi_endproc
LFE186:
	.p2align 4
	.def	_floor0_inverse1;	.scl	3;	.type	32;	.endef
_floor0_inverse1:
LFB188:
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
	movl	64(%esp), %edi
	movl	60(%esp), %ebx
	movl	20(%edi), %esi
	leal	4(%ebx), %ebp
	movl	%ebp, %eax
	movl	%ebp, 16(%esp)
	movl	12(%esi), %edx
	call	_oggpack_read
	movl	%eax, 28(%esp)
	testl	%eax, %eax
	jle	L1911
	movl	12(%esi), %eax
	movl	20(%esi), %edx
	movl	%eax, 32(%esp)
	movl	16(%esi), %eax
	bsrl	%edx, %ecx
	addl	$1, %ecx
	testl	%edx, %edx
	movl	%eax, 36(%esp)
	movl	%edx, %eax
	cmovne	%ecx, %eax
	movl	%eax, %edx
	movl	%ebp, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L1911
	cmpl	%eax, 20(%esi)
	jle	L1911
	movl	64(%ebx), %edx
	imull	$56, 24(%esi,%eax,4), %esi
	movl	4(%edx), %edx
	movl	28(%edx), %edx
	addl	2848(%edx), %esi
	movl	(%esi), %eax
	addl	4(%edi), %eax
	leal	4(,%eax,4), %edx
	movl	%ebx, %eax
	call	__vorbis_block_alloc
	movl	4(%edi), %ebp
	movl	%eax, %ebx
	movl	8(%esi), %eax
	testl	%eax, %eax
	jle	L1941
	leal	-1(%ebp), %eax
	movl	%eax, 24(%esp)
	testl	%ebp, %ebp
	jle	L1919
	movl	%ebp, 12(%esp)
	movl	%edi, 64(%esp)
	movl	%ebx, 20(%esp)
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L1918:
	movl	16(%esp), %edx
	movl	%esi, %eax
	call	_decode_packed_entry_number
	cmpl	$-1, %eax
	je	L1911
	cmpl	%ebx, 12(%esp)
	jle	L1938
	movl	(%esi), %edx
	movl	16(%esi), %ecx
	movl	24(%esp), %ebp
	imull	%edx, %eax
	subl	%ebx, %ebp
	leal	(%ecx,%eax,4), %edi
	movl	20(%esp), %eax
	leal	(%eax,%ebx,4), %ecx
	xorl	%eax, %eax
	jmp	L1921
	.p2align 5
	.p2align 4,,10
	.p2align 3
L1922:
	movss	(%edi,%eax,4), %xmm0
	movss	%xmm0, (%ecx,%eax,4)
	cmpl	%eax, %ebp
	je	L1938
	movl	(%esi), %edx
	addl	$1, %eax
L1921:
	cmpl	%eax, %edx
	jg	L1922
	addl	%eax, %ebx
	cmpl	%ebx, 12(%esp)
	jg	L1918
	.p2align 4
	.p2align 3
L1938:
	movl	20(%esp), %ebx
	movl	64(%esp), %edi
L1920:
	movl	4(%edi), %edx
	movl	%edx, %ebp
	testl	%edx, %edx
	jle	L1919
	xorps	%xmm1, %xmm1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	L1923
	.p2align 6
	.p2align 4,,10
	.p2align 3
L1924:
	movss	(%ebx,%eax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%ebx,%eax,4)
	movl	4(%edi), %edx
	addl	$1, %eax
	movl	%edx, %ebp
	cmpl	%eax, %edx
	jle	L1919
	addl	$1, %ecx
L1923:
	cmpl	%ecx, (%esi)
	jg	L1924
	movss	-4(%ebx,%eax,4), %xmm1
	movl	%edx, %ebp
	cmpl	%eax, %edx
	jle	L1919
	xorl	%ecx, %ecx
	jmp	L1923
	.p2align 4,,10
	.p2align 3
L1911:
	addl	$40, %esp
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
L1919:
	.cfi_restore_state
L1914:
	movzbl	32(%esp), %ecx
	movl	$1, %eax
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	28(%esp), %xmm0
	sall	%cl, %eax
	subl	$1, %eax
	cvtsi2ssl	%eax, %xmm1
	movl	%ebx, %eax
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	36(%esp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%ebx,%ebp,4)
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
L1941:
	.cfi_restore_state
	testl	%ebp, %ebp
	jle	L1919
	leal	0(,%ebp,4), %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	call	_memset
	jmp	L1920
	.cfi_endproc
LFE188:
	.p2align 4
	.def	__01inverse.isra.0;	.scl	3;	.type	32;	.endef
__01inverse.isra.0:
LFB192:
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
	subl	$84, %esp
	movl	(%edx), %edi
	movl	36(%eax), %eax
	movl	4(%edi), %esi
	sarl	%eax
	movl	%edi, -68(%ebp)
	cmpl	%esi, %eax
	cmovg	%esi, %eax
	subl	(%edi), %eax
	testl	%eax, %eax
	jle	L1942
	movl	%edx, -32(%ebp)
	movl	16(%edx), %edx
	movl	8(%edi), %edi
	movl	%ecx, -48(%ebp)
	movl	(%edx), %esi
	cltd
	movl	%ebx, -56(%ebp)
	idivl	%edi
	movl	%edi, -40(%ebp)
	movl	8(%ebp), %edi
	movl	%esi, -76(%ebp)
	movl	%eax, -64(%ebp)
	leal	12(,%edi,4), %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	-64(%ebp), %eax
	leal	31(%esp), %edi
	leal	-1(%esi,%eax), %eax
	andl	$-16, %edi
	cltd
	idivl	%esi
	xorl	%esi, %esi
	leal	0(,%eax,4), %ebx
	.p2align 4
	.p2align 3
L1944:
	movl	-56(%ebp), %eax
	movl	%ebx, %edx
	call	__vorbis_block_alloc
	movl	%eax, (%edi,%esi,4)
	movl	%esi, %eax
	leal	1(%esi), %esi
	cmpl	%esi, 8(%ebp)
	jne	L1944
	movl	%eax, -24(%ebp)
	movl	-32(%ebp), %eax
	xorl	%ebx, %ebx
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L1942
L1945:
	movl	-64(%ebp), %eax
	testl	%eax, %eax
	jle	L1997
	movl	%edi, %esi
L1955:
	movl	$0, -16(%ebp)
	movl	$0, -60(%ebp)
L1954:
	testl	%ebx, %ebx
	je	L1998
L1946:
	movl	-76(%ebp), %edx
	testl	%edx, %edx
	jle	L1948
	movl	-60(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jle	L1948
	movl	$1, %eax
	movl	%ebx, %ecx
	movl	%ebx, -80(%ebp)
	xorl	%edx, %edx
	sall	%cl, %eax
	movl	%eax, -28(%ebp)
	leal	0(,%ebx,4), %eax
	movl	%eax, -36(%ebp)
	movl	-40(%ebp), %eax
	imull	%edi, %eax
	movl	-68(%ebp), %edi
	movl	%eax, -44(%ebp)
	movl	-56(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
L1949:
	leal	0(,%edx,4), %eax
	movl	%edx, -72(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, -20(%ebp)
	jmp	L1951
	.p2align 4,,10
	.p2align 3
L1959:
	addl	$1, %ebx
L1951:
	movl	-16(%ebp), %ecx
	movl	(%esi,%ebx,4), %eax
	movl	-28(%ebp), %edx
	movl	(%eax,%ecx), %eax
	movl	-20(%ebp), %ecx
	movl	(%eax,%ecx), %eax
	testl	%edx, 24(%edi,%eax,4)
	je	L1953
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	20(%edx), %edx
	movl	(%edx,%eax,4), %eax
	movl	(%eax,%ecx), %eax
	testl	%eax, %eax
	je	L1953
	movl	-40(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-52(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	-48(%ebp), %edx
	movl	-44(%ebp), %ecx
	addl	(%edi), %ecx
	movl	(%edx,%ebx,4), %edx
	movl	%eax, (%esp)
	leal	(%edx,%ecx,4), %edx
	movl	%edx, 4(%esp)
	call	*12(%ebp)
	cmpl	$-1, %eax
	je	L1942
L1953:
	cmpl	%ebx, -24(%ebp)
	jne	L1959
	movl	-72(%ebp), %edx
	addl	$1, -60(%ebp)
	movl	-40(%ebp), %ecx
	movl	-60(%ebp), %eax
	addl	%ecx, -44(%ebp)
	addl	$1, %edx
	cmpl	%edx, -76(%ebp)
	jle	L1993
	cmpl	%eax, -64(%ebp)
	jg	L1949
L1993:
	movl	-80(%ebp), %ebx
L1948:
	addl	$4, -16(%ebp)
	movl	-60(%ebp), %edi
	cmpl	%edi, -64(%ebp)
	jg	L1954
	movl	-32(%ebp), %eax
	addl	$1, %ebx
	cmpl	8(%eax), %ebx
	jl	L1955
L1942:
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
L1998:
	.cfi_restore_state
	movl	-56(%ebp), %eax
	movl	%esi, %ecx
	movl	%ebx, -36(%ebp)
	xorl	%edi, %edi
	movl	-32(%ebp), %esi
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	jmp	L1947
	.p2align 4,,10
	.p2align 3
L1958:
	addl	$1, %edi
L1947:
	movl	16(%esi), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jle	L1942
	movl	-28(%ebp), %edx
	movl	%ebx, %eax
	movl	%ecx, -20(%ebp)
	call	_decode_packed_entry_number
	testl	%eax, %eax
	js	L1942
	movl	24(%ebx), %edx
	movl	(%edx,%eax,4), %eax
	cmpl	$-1, %eax
	je	L1942
	movl	-68(%ebp), %ebx
	cmpl	%eax, 16(%ebx)
	jle	L1942
	movl	28(%esi), %edx
	movl	-20(%ebp), %ecx
	movl	-16(%ebp), %ebx
	movl	(%edx,%eax,4), %eax
	movl	(%ecx,%edi,4), %edx
	movl	%eax, (%edx,%ebx)
	testl	%eax, %eax
	je	L1942
	cmpl	%edi, -24(%ebp)
	jne	L1958
	movl	-36(%ebp), %ebx
	movl	%ecx, %esi
	jmp	L1946
L1997:
	movl	-32(%ebp), %eax
	addl	$1, %ebx
	cmpl	8(%eax), %ebx
	jl	L1945
	jmp	L1942
	.cfi_endproc
LFE192:
	.p2align 4
	.def	_res0_inverse;	.scl	3;	.type	32;	.endef
_res0_inverse:
LFB193:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	40(%esp), %ecx
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	testl	%ecx, %ecx
	jle	L2000
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2002:
	movl	(%esi,%eax,4), %edi
	testl	%edi, %edi
	je	L2001
	movl	(%ebx,%eax,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
L2001:
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L2002
	testl	%edx, %edx
	je	L2008
	movl	%edx, (%esp)
	movl	24(%esp), %eax
	movl	%ebx, %ecx
	movl	$_vorbis_book_decodevs_add, 4(%esp)
	movl	28(%esp), %edx
	call	__01inverse.isra.0
	movl	16(%esp), %edi
	.cfi_restore 7
L2000:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2008:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE193:
	.p2align 4
	.def	_res1_inverse;	.scl	3;	.type	32;	.endef
_res1_inverse:
LFB194:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	40(%esp), %ecx
	movl	%ebx, 8(%esp)
	movl	%esi, 12(%esp)
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	movl	32(%esp), %ebx
	movl	36(%esp), %esi
	testl	%ecx, %ecx
	jle	L2010
	movl	%edi, 16(%esp)
	.cfi_offset 7, -8
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2012:
	movl	(%esi,%eax,4), %edi
	testl	%edi, %edi
	je	L2011
	movl	(%ebx,%eax,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
L2011:
	addl	$1, %eax
	cmpl	%eax, %ecx
	jne	L2012
	testl	%edx, %edx
	je	L2018
	movl	%edx, (%esp)
	movl	24(%esp), %eax
	movl	%ebx, %ecx
	movl	$_vorbis_book_decodev_add, 4(%esp)
	movl	28(%esp), %edx
	call	__01inverse.isra.0
	movl	16(%esp), %edi
	.cfi_restore 7
L2010:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	xorl	%eax, %eax
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2018:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	movl	16(%esp), %edi
	.cfi_restore 7
	movl	8(%esp), %ebx
	xorl	%eax, %eax
	movl	12(%esp), %esi
	addl	$20, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE194:
	.p2align 4
	.def	_res1_class;	.scl	3;	.type	32;	.endef
_res1_class:
LFB195:
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
	subl	$68, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	24(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	20(%ebp), %ebx
	testl	%edx, %edx
	jle	L2020
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 5
	.p2align 4
	.p2align 3
L2022:
	movl	(%ebx,%eax,4), %edi
	testl	%edi, %edi
	je	L2021
	movl	(%ecx,%eax,4), %edi
	movl	%edi, (%ecx,%esi,4)
	addl	$1, %esi
L2021:
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L2022
	testl	%esi, %esi
	je	L2020
	movl	12(%ebp), %eax
	movl	%ecx, 16(%ebp)
	movl	(%eax), %edi
	movl	12(%edi), %eax
	movl	8(%edi), %edx
	movl	%eax, 40(%esp)
	movl	4(%edi), %eax
	movl	%edx, %ebx
	subl	(%edi), %eax
	movl	%edx, 48(%esp)
	cltd
	idivl	%ebx
	leal	0(,%esi,4), %edx
	xorl	%ebx, %ebx
	movl	%edx, 64(%esp)
	movl	%eax, 12(%esp)
	movl	8(%ebp), %eax
	call	__vorbis_block_alloc
	movl	%edi, 60(%esp)
	movl	%eax, 24(%esp)
	movl	12(%esp), %eax
	leal	0(,%eax,4), %edi
L2025:
	movl	8(%ebp), %eax
	movl	%edi, %edx
	call	__vorbis_block_alloc
	movl	24(%esp), %edx
	movl	%eax, (%edx,%ebx,4)
	addl	$1, %ebx
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	cmpl	%ebx, %esi
	jne	L2025
	movl	12(%esp), %ecx
	movl	60(%esp), %edi
	testl	%ecx, %ecx
	jle	L2026
	fildl	48(%esp)
	fdivrs	LC42
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	64(%esp), %eax
	addl	24(%esp), %eax
	movl	%eax, 36(%esp)
	movl	40(%esp), %eax
	subl	$1, %eax
	movl	%eax, 64(%esp)
	movl	%edi, %eax
	movl	64(%esp), %edi
	fstps	60(%esp)
	movss	60(%esp), %xmm1
L2036:
	leal	0(,%ecx,4), %edx
	movl	%ecx, 20(%esp)
	movl	%edx, 44(%esp)
	movl	16(%ebp), %edx
	movl	%esi, 16(%esp)
	movl	%edx, 60(%esp)
	movl	(%eax), %edx
	addl	%esi, %edx
	leal	0(,%edx,4), %ebx
	addl	48(%esp), %edx
	sall	$2, %edx
	movl	%ebx, 28(%esp)
	movl	24(%esp), %ebx
	movl	%edx, 32(%esp)
	movl	%ebx, 64(%esp)
	movl	%edi, %ebx
	.p2align 4
	.p2align 3
L2027:
	movl	48(%esp), %edx
	testl	%edx, %edx
	jle	L2044
	movl	60(%esp), %edi
	movl	28(%esp), %edx
	movl	%eax, 56(%esp)
	xorl	%esi, %esi
	movl	%ebx, 52(%esp)
	movl	(%edi), %edi
	leal	(%edi,%edx), %ecx
	addl	32(%esp), %edi
	xorl	%edx, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2028:
	movl	(%ecx), %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovs	%ebx, %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	addl	$4, %ecx
	addl	%eax, %esi
	cmpl	%ecx, %edi
	jne	L2028
	xorps	%xmm0, %xmm0
	movl	56(%esp), %eax
	movl	52(%esp), %ebx
	cvtsi2ssl	%esi, %xmm0
	cmpl	$1, 40(%esp)
	jle	L2037
L2045:
	mulss	%xmm1, %xmm0
	movl	%ebx, 56(%esp)
	xorl	%ecx, %ecx
	cvttss2sil	%xmm0, %edi
	.p2align 4
	.p2align 3
L2032:
	cmpl	%edx, 2328(%eax,%ecx,4)
	jl	L2030
	movl	2584(%eax,%ecx,4), %esi
	testl	%esi, %esi
	js	L2031
	cmpl	%esi, %edi
	jl	L2031
L2030:
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	L2032
	movl	56(%esp), %esi
L2029:
	movl	64(%esp), %edi
	movl	44(%esp), %ecx
	addl	$4, 60(%esp)
	movl	(%edi), %edx
	addl	$4, %edi
	movl	%edi, 64(%esp)
	movl	%esi, (%edx,%ecx)
	cmpl	36(%esp), %edi
	jne	L2027
	movl	20(%esp), %ecx
	movl	16(%esp), %esi
	movl	%ebx, %edi
	addl	48(%esp), %esi
	addl	$1, %ecx
	cmpl	%ecx, 12(%esp)
	jne	L2036
L2026:
	movl	12(%ebp), %eax
	addl	$1, 40(%eax)
	movl	24(%esp), %eax
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
L2031:
	.cfi_restore_state
	movl	%ecx, %esi
	jmp	L2029
L2044:
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	cmpl	$1, 40(%esp)
	jg	L2045
L2037:
	xorl	%esi, %esi
	jmp	L2029
L2020:
	movl	$0, 24(%esp)
	movl	24(%esp), %eax
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
LFE195:
	.p2align 4
	.def	_res2_class;	.scl	3;	.type	32;	.endef
_res2_class:
LFB197:
	.cfi_startproc
	subl	$68, %esp
	.cfi_def_cfa_offset 72
	movl	88(%esp), %edx
	testl	%edx, %edx
	jle	L2047
	movl	%esi, 56(%esp)
	.cfi_offset 6, -16
	movl	88(%esp), %esi
	xorl	%edx, %edx
	movl	84(%esp), %eax
	movl	%ebx, 52(%esp)
	.cfi_offset 3, -20
	leal	0(,%esi,4), %ebx
	leal	(%eax,%ebx), %ecx
	.p2align 4
	.p2align 4
	.p2align 3
L2049:
	cmpl	$1, (%eax)
	sbbl	$-1, %edx
	addl	$4, %eax
	cmpl	%eax, %ecx
	jne	L2049
	testl	%edx, %edx
	je	L2072
	movl	76(%esp), %eax
	movl	%ebp, 64(%esp)
	movl	%edi, 60(%esp)
	.cfi_offset 5, -8
	.cfi_offset 7, -12
	movl	(%eax), %esi
	movl	12(%esi), %eax
	movl	8(%esi), %edi
	movl	%eax, 44(%esp)
	movl	4(%esi), %eax
	subl	(%esi), %eax
	movl	%edi, 20(%esp)
	cltd
	idivl	%edi
	movl	$4, %edx
	movl	%eax, 48(%esp)
	movl	72(%esp), %eax
	call	__vorbis_block_alloc
	movl	48(%esp), %edi
	movl	%eax, 40(%esp)
	movl	72(%esp), %eax
	leal	0(,%edi,4), %ebp
	movl	%ebp, %edx
	call	__vorbis_block_alloc
	movl	40(%esp), %ecx
	movl	%eax, (%ecx)
	movl	%ebp, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	testl	%edi, %edi
	jle	L2052
	movl	(%esi), %eax
	addl	80(%esp), %ebx
	movl	$0, 28(%esp)
	movl	%ebx, %ebp
	cltd
	idivl	88(%esp)
	movl	%eax, %edi
	movl	44(%esp), %eax
	movl	%edi, %ecx
	leal	-1(%eax), %edx
	.p2align 4
	.p2align 3
L2053:
	movl	20(%esp), %eax
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	testl	%eax, %eax
	jle	L2061
	movl	80(%esp), %eax
	movl	%edx, 36(%esp)
	xorl	%ebx, %ebx
	movl	%esi, 32(%esp)
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	xorl	%eax, %eax
	movl	%eax, %esi
	.p2align 4
	.p2align 3
L2056:
	movl	24(%esp), %edi
	movl	(%edi,%ecx,4), %edi
	movl	%edi, %edx
	negl	%edx
	cmovs	%edi, %edx
	cmpl	%edx, %eax
	cmovl	%edx, %eax
	cmpl	$1, 88(%esp)
	je	L2054
	movl	80(%esp), %edx
	movl	%eax, 12(%esp)
	leal	0(,%ecx,4), %edi
	movl	%ecx, 16(%esp)
	addl	$4, %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2055:
	movl	(%edx), %eax
	movl	(%eax,%edi), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovs	%ecx, %eax
	cmpl	%eax, %ebx
	cmovl	%eax, %ebx
	addl	$4, %edx
	cmpl	%ebp, %edx
	jne	L2055
	movl	12(%esp), %eax
	movl	16(%esp), %ecx
L2054:
	addl	$1, %ecx
	addl	88(%esp), %esi
	cmpl	%esi, 20(%esp)
	jg	L2056
	movl	32(%esp), %esi
	movl	36(%esp), %edx
	movl	%eax, %edi
L2061:
	cmpl	$1, 44(%esp)
	jle	L2062
	movl	%edx, 12(%esp)
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
L2059:
	cmpl	%edi, 2328(%esi,%eax,4)
	jl	L2058
	cmpl	%ebx, 2584(%esi,%eax,4)
	jge	L2063
L2058:
	addl	$1, %eax
	cmpl	%eax, %edx
	jne	L2059
L2057:
	movl	40(%esp), %eax
	movl	28(%esp), %edi
	movl	12(%esp), %ebx
	movl	(%eax), %eax
	movl	%ebx, (%eax,%edi,4)
	addl	$1, %edi
	movl	%edi, 28(%esp)
	cmpl	%edi, 48(%esp)
	jne	L2053
L2052:
	movl	76(%esp), %eax
	addl	$1, 40(%eax)
	movl	40(%esp), %eax
	movl	52(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
	movl	60(%esp), %edi
	.cfi_restore 7
	movl	64(%esp), %ebp
	.cfi_restore 5
	addl	$68, %esp
	.cfi_def_cfa_offset 4
	ret
L2063:
	.cfi_restore_state
	movl	%eax, 12(%esp)
	jmp	L2057
L2072:
	.cfi_restore 5
	.cfi_restore 7
	movl	52(%esp), %ebx
	.cfi_restore 3
	movl	56(%esp), %esi
	.cfi_restore 6
L2047:
	movl	$0, 40(%esp)
	movl	40(%esp), %eax
	addl	$68, %esp
	.cfi_def_cfa_offset 4
	ret
L2062:
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$0, 12(%esp)
	jmp	L2057
	.cfi_endproc
LFE197:
	.p2align 4
	.def	_res2_forward;	.scl	3;	.type	32;	.endef
_res2_forward:
LFB199:
	.cfi_startproc
	subl	$36, %esp
	.cfi_def_cfa_offset 40
	movl	44(%esp), %eax
	movl	60(%esp), %edx
	movl	%ebx, 20(%esp)
	movl	%esi, 24(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	movl	36(%eax), %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	sarl	%ebx
	imull	%ebx, %edx
	sall	$2, %edx
	call	__vorbis_block_alloc
	movl	%eax, 12(%esp)
	movl	%eax, 16(%esp)
	movl	60(%esp), %eax
	testl	%eax, %eax
	jle	L2074
	movl	56(%esp), %eax
	movl	%edi, 28(%esp)
	.cfi_offset 7, -12
	xorl	%edi, %edi
	movl	%ebp, 32(%esp)
	.cfi_offset 5, -8
	xorl	%ebp, %ebp
L2081:
	cmpl	$1, (%eax,%edi,4)
	sbbl	$-1, %ebp
	cmpl	$1, %esi
	jg	L2090
	addl	$1, %edi
	cmpl	%edi, 60(%esp)
	jne	L2081
	.p2align 4
	.p2align 3
L2079:
	testl	%ebp, %ebp
	je	L2089
	movl	64(%esp), %eax
	movl	$1, (%esp)
	leal	16(%esp), %ecx
	movl	48(%esp), %edx
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	call	__01forward.constprop.0.isra.0
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
L2074:
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	xorl	%eax, %eax
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2090:
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	60(%esp), %eax
	leal	0(,%eax,4), %esi
	.p2align 4
	.p2align 3
L2077:
	movl	52(%esp), %eax
	movl	%edi, 8(%esp)
	movl	(%eax,%edi,4), %ecx
	movl	12(%esp), %eax
	leal	(%eax,%edi,4), %edx
	xorl	%eax, %eax
	.p2align 4
	.p2align 4
	.p2align 3
L2078:
	movl	(%ecx,%eax,4), %edi
	addl	$1, %eax
	movl	%edi, (%edx)
	addl	%esi, %edx
	cmpl	%eax, %ebx
	jg	L2078
	movl	8(%esp), %edi
	addl	$1, %edi
	cmpl	%edi, 60(%esp)
	je	L2079
	movl	56(%esp), %eax
	cmpl	$1, (%eax,%edi,4)
	sbbl	$-1, %ebp
	jmp	L2077
L2089:
	movl	28(%esp), %edi
	.cfi_restore 7
	movl	32(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	20(%esp), %ebx
	movl	24(%esp), %esi
	addl	$36, %esp
	.cfi_restore 3
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE199:
	.p2align 4
	.def	_res2_inverse;	.scl	3;	.type	32;	.endef
_res2_inverse:
LFB200:
	.cfi_startproc
	subl	$76, %esp
	.cfi_def_cfa_offset 80
	movl	84(%esp), %eax
	movl	80(%esp), %edx
	movl	%ebx, 60(%esp)
	movl	%edi, 68(%esp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	92(%esp), %ebx
	movl	(%eax), %edi
	movl	96(%esp), %eax
	imull	36(%edx), %eax
	movl	4(%edi), %edx
	movl	%edi, 32(%esp)
	sarl	%eax
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	subl	(%edi), %eax
	testl	%eax, %eax
	jg	L2165
L2111:
	movl	60(%esp), %ebx
	movl	68(%esp), %edi
	xorl	%eax, %eax
	addl	$76, %esp
	.cfi_remember_state
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2165:
	.cfi_restore_state
	movl	%esi, 64(%esp)
	.cfi_offset 6, -16
	movl	8(%edi), %esi
	movl	84(%esp), %edi
	movl	%esi, 8(%esp)
	movl	16(%edi), %edx
	movl	(%edx), %edi
	cltd
	idivl	%esi
	movl	%edi, 36(%esp)
	movl	%eax, 16(%esp)
	leal	-1(%edi,%eax), %eax
	cltd
	idivl	%edi
	leal	0(,%eax,4), %edx
	movl	80(%esp), %eax
	call	__vorbis_block_alloc
	movl	96(%esp), %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	L2093
	movl	96(%esp), %edx
	jmp	L2094
L2166:
	addl	$1, %eax
	cmpl	%eax, %edx
	je	L2163
L2094:
	movl	(%ebx,%eax,4), %ecx
	testl	%ecx, %ecx
	je	L2166
L2093:
	cmpl	%eax, 96(%esp)
	je	L2163
	movl	84(%esp), %eax
	movl	8(%eax), %edi
	testl	%edi, %edi
	jle	L2163
	movl	36(%esp), %ebx
	testl	%ebx, %ebx
	setg	55(%esp)
	xorl	%edi, %edi
L2095:
	movl	16(%esp), %eax
	testl	%eax, %eax
	jle	L2100
	movl	%ebp, 72(%esp)
	.cfi_offset 5, -8
L2110:
	movl	%edi, %ecx
	movl	$1, %eax
	movl	%esi, 20(%esp)
	sall	%cl, %eax
	movl	%esi, 56(%esp)
	xorl	%ecx, %ecx
	movl	%eax, 40(%esp)
	leal	0(,%edi,4), %eax
	movl	%eax, 44(%esp)
L2109:
	testl	%edi, %edi
	je	L2167
	cmpl	%ecx, 16(%esp)
	jle	L2101
	cmpb	$0, 55(%esp)
	je	L2101
L2097:
	movl	8(%esp), %eax
	movl	%edi, 48(%esp)
	xorl	%ebp, %ebp
	imull	%ecx, %eax
	movl	%eax, 12(%esp)
	.p2align 4
	.p2align 3
L2107:
	movl	20(%esp), %eax
	movl	32(%esp), %ebx
	movl	40(%esp), %edi
	movl	(%eax), %eax
	movl	(%eax,%ebp,4), %eax
	testl	%edi, 24(%ebx,%eax,4)
	je	L2102
	movl	84(%esp), %edi
	movl	20(%edi), %edx
	movl	44(%esp), %edi
	movl	(%edx,%eax,4), %eax
	movl	(%eax,%edi), %edi
	testl	%edi, %edi
	je	L2102
	movl	8(%edi), %edx
	testl	%edx, %edx
	jle	L2102
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	addl	(%eax), %ebx
	movl	8(%esp), %eax
	addl	%ebx, %eax
	cltd
	idivl	96(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %eax
	cltd
	idivl	96(%esp)
	movl	%eax, %ebx
	cmpl	%eax, (%esp)
	jle	L2102
	movl	80(%esp), %eax
	movl	%ebp, 24(%esp)
	xorl	%esi, %esi
	movl	%ecx, 28(%esp)
	addl	$4, %eax
	movl	%eax, 4(%esp)
	.p2align 4
	.p2align 3
L2106:
	movl	4(%esp), %edx
	movl	%edi, %eax
	call	_decode_packed_entry_number
	cmpl	$-1, %eax
	je	L2162
	cmpl	%ebx, (%esp)
	jle	L2151
	movl	(%edi), %ecx
	movl	16(%edi), %edx
	imull	%ecx, %eax
	leal	(%edx,%eax,4), %ebp
	xorl	%edx, %edx
	jmp	L2103
	.p2align 6
	.p2align 4,,10
	.p2align 3
L2105:
	movl	88(%esp), %ecx
	leal	1(%esi), %eax
	cmpl	%eax, 96(%esp)
	movl	(%ecx,%esi,4), %ecx
	movl	$0, %esi
	cmove	%esi, %eax
	movss	(%ecx,%ebx,4), %xmm0
	addss	0(%ebp,%edx,4), %xmm0
	movss	%xmm0, (%ecx,%ebx,4)
	leal	1(%ebx), %ecx
	cmove	%ecx, %ebx
	cmpl	%ebx, (%esp)
	jle	L2151
	movl	(%edi), %ecx
	addl	$1, %edx
	movl	%eax, %esi
L2103:
	cmpl	%edx, %ecx
	jg	L2105
	cmpl	%ebx, (%esp)
	jg	L2106
	.p2align 4
	.p2align 3
L2151:
	movl	24(%esp), %ebp
	movl	28(%esp), %ecx
L2102:
	movl	8(%esp), %edi
	addl	$1, %ebp
	addl	%edi, 12(%esp)
	addl	$1, %ecx
	cmpl	%ebp, 36(%esp)
	jle	L2152
	cmpl	%ecx, 16(%esp)
	jg	L2107
L2152:
	movl	48(%esp), %edi
L2101:
	addl	$4, 20(%esp)
	cmpl	%ecx, 16(%esp)
	jg	L2109
	movl	84(%esp), %eax
	movl	56(%esp), %esi
	addl	$1, %edi
	cmpl	8(%eax), %edi
	jl	L2110
L2092:
L2162:
	movl	64(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	72(%esp), %ebp
	.cfi_restore 5
	xorl	%eax, %eax
	movl	60(%esp), %ebx
	movl	68(%esp), %edi
	addl	$76, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
L2167:
	.cfi_restore_state
	movl	80(%esp), %eax
	movl	%ecx, %ebx
	leal	4(%eax), %esi
L2099:
	movl	84(%esp), %eax
	movl	16(%eax), %ebp
	movl	8(%ebp), %ecx
	testl	%ecx, %ecx
	jle	L2162
	movl	%esi, %edx
	movl	%ebp, %eax
	call	_decode_packed_entry_number
	testl	%eax, %eax
	js	L2162
	movl	24(%ebp), %ebp
	movl	0(%ebp,%eax,4), %eax
	cmpl	$-1, %eax
	je	L2162
	movl	32(%esp), %edx
	cmpl	%eax, 16(%edx)
	jle	L2162
	movl	84(%esp), %edx
	movl	28(%edx), %ebp
	movl	20(%esp), %edx
	movl	0(%ebp,%eax,4), %eax
	movl	%eax, (%edx)
	testl	%eax, %eax
	je	L2162
	cmpl	%ebx, 16(%esp)
	jle	L2113
	cmpb	$0, 55(%esp)
	je	L2113
	movl	%ebx, %ecx
	jmp	L2097
L2113:
	addl	$4, 20(%esp)
	cmpl	%ebx, 16(%esp)
	jg	L2099
	movl	56(%esp), %esi
	movl	72(%esp), %ebp
	.cfi_restore 5
L2100:
	movl	84(%esp), %eax
	addl	$1, %edi
	cmpl	%edi, 8(%eax)
	jg	L2095
L2163:
	movl	64(%esp), %esi
	.cfi_restore 6
	jmp	L2111
	.cfi_endproc
LFE200:
	.p2align 4
	.globl	__vorbis_block_ripcord
	.def	__vorbis_block_ripcord;	.scl	2;	.type	32;	.endef
__vorbis_block_ripcord:
LFB202:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	movl	84(%eax), %esi
	testl	%esi, %esi
	je	L2169
	.p2align 4
	.p2align 3
L2170:
	movl	%esi, %ebx
	movl	4(%esi), %esi
	movl	_g_sm_heap, %ecx
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	$0, (%ebx)
	movl	_g_sm_heap, %ecx
	movl	$0, 4(%ebx)
	movl	%ebx, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	testl	%esi, %esi
	jne	L2170
L2169:
	movl	80(%edi), %eax
	testl	%eax, %eax
	jne	L2183
L2171:
	movl	$0, 72(%edi)
	movl	$0, 84(%edi)
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
L2183:
	.cfi_restore_state
	addl	76(%edi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 4(%esp)
	movl	%eax, %ebx
	movl	68(%edi), %eax
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	testl	%eax, %eax
	jne	L2174
	testl	%ebx, %ebx
	jne	L2172
L2174:
	movl	%eax, 68(%edi)
	movl	80(%edi), %eax
	movl	$0, 80(%edi)
	addl	%eax, 76(%edi)
	jmp	L2171
L2172:
	movl	%ebx, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE202:
	.p2align 4
	.globl	_vorbis_block_clear.isra.0
	.def	_vorbis_block_clear.isra.0;	.scl	2;	.type	32;	.endef
_vorbis_block_clear.isra.0:
LFB204:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	movl	%ebp, 16(%esp)
	.cfi_offset 5, -8
	movl	%eax, %ebp
	movl	%edi, 12(%esp)
	.cfi_offset 7, -12
	movl	104(%eax), %edi
	call	__vorbis_block_ripcord
	movl	68(%ebp), %eax
	testl	%eax, %eax
	je	L2185
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2185:
	testl	%edi, %edi
	je	L2186
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	.cfi_offset 3, -20
	.cfi_offset 6, -16
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2190:
	movl	12(%edi,%esi,4), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	L2187
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
L2187:
	movl	$0, (%ebx)
	movl	$0, 4(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 16(%ebx)
	cmpl	$7, %esi
	je	L2193
	movl	12(%edi,%esi,4), %eax
	movl	_g_sm_heap, %ecx
	addl	$1, %esi
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	cmpl	$15, %esi
	jne	L2190
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 20
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	4(%esp), %ebx
	.cfi_restore 3
	movl	8(%esp), %esi
	.cfi_restore 6
L2186:
	movl	$0, 96(%ebp)
	xorl	%eax, %eax
	movl	$0, 100(%ebp)
	movl	$0, 104(%ebp)
	movl	$0, 108(%ebp)
L2191:
	movl	$0, 0(%ebp,%eax)
	movl	$0, 4(%ebp,%eax)
	movl	$0, 8(%ebp,%eax)
	movl	$0, 12(%ebp,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L2191
	movl	12(%esp), %edi
	movl	16(%esp), %ebp
	addl	$20, %esp
	.cfi_restore 7
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2193:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	$8, %esi
	jmp	L2190
	.cfi_endproc
LFE204:
	.p2align 4
	.globl	_vorbis_dsp_clear
	.def	_vorbis_dsp_clear;	.scl	2;	.type	32;	.endef
_vorbis_dsp_clear:
LFB205:
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
	subl	$88, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	%eax, -84(%ebp)
	movl	4(%eax), %edi
	movl	104(%eax), %eax
	movl	%edi, -96(%ebp)
	movl	%eax, -80(%ebp)
	testl	%edi, %edi
	je	L2368
	movl	-80(%ebp), %ebx
	testl	%ebx, %ebx
	je	L2210
	movl	-96(%ebp), %eax
	movl	28(%eax), %edi
L2207:
	movl	-80(%ebp), %eax
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	L2212
	leal	16(%ebx), %eax
	leal	160(%ebx), %esi
	call	_mdct_clear
	movl	%ebx, -44(%ebp)
	addl	$48, %ebx
	.p2align 4
	.p2align 3
L2213:
	movl	(%ebx), %edx
	addl	$16, %ebx
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	cmpl	%ebx, %esi
	jne	L2213
	movl	-44(%ebp), %ebx
	movl	36(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	152(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	160(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	xorl	%eax, %eax
	subl	$4, %esp
	movl	$0, 164(%ebx)
	movl	$0, 168(%ebx)
	movl	$0, 172(%ebx)
	movl	$0, 176(%ebx)
L2214:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$176, %eax
	jb	L2214
	movl	-80(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2212:
	movl	-80(%ebp), %ebx
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	L2216
	movl	(%eax), %eax
	call	_mdct_clear
	movl	12(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	12(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2216:
	movl	-80(%ebp), %ebx
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L2217
	movl	(%eax), %eax
	call	_mdct_clear
	movl	16(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	16(%ebx), %eax
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2217:
	movl	-80(%ebp), %esi
	movl	48(%esi), %eax
	testl	%eax, %eax
	je	L2218
	testl	%edi, %edi
	je	L2219
	movl	16(%edi), %ecx
	testl	%ecx, %ecx
	jle	L2357
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2221:
	movl	800(%edi,%ebx,4), %edx
	movl	(%eax,%ebx,4), %eax
	addl	$1, %ebx
	movl	__floor_P(,%edx,4), %edx
	movl	%eax, (%esp)
	call	*16(%edx)
	movl	48(%esi), %eax
	cmpl	%ebx, 16(%edi)
	jg	L2221
L2357:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-80(%ebp), %eax
	subl	$4, %esp
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L2369
L2223:
	movl	20(%edi), %edx
	testl	%edx, %edx
	jle	L2229
	movl	-80(%ebp), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2230:
	movl	1312(%edi,%ebx,4), %edx
	movl	(%eax,%ebx,4), %eax
	addl	$1, %ebx
	movl	__residue_P(,%edx,4), %edx
	movl	%eax, (%esp)
	call	*16(%edx)
	movl	52(%esi), %eax
	cmpl	%ebx, 20(%edi)
	jg	L2230
L2229:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-80(%ebp), %eax
	subl	$4, %esp
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L2233
L2234:
	movl	28(%edi), %esi
	testl	%esi, %esi
	jle	L2232
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2259:
	imull	$52, %esi, %ebx
	addl	%eax, %ebx
	movl	%ebx, -48(%ebp)
	je	L2235
	movl	16(%ebx), %eax
	testl	%eax, %eax
	je	L2236
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2236:
	movl	-48(%ebp), %eax
	movl	20(%eax), %eax
	testl	%eax, %eax
	je	L2237
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2237:
	movl	-48(%ebp), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	L2238
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2238:
	movl	-48(%ebp), %eax
	movl	$0, -44(%ebp)
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2240
	movl	%edi, -88(%ebp)
	movl	%esi, -92(%ebp)
	.p2align 4
	.p2align 3
L2239:
	movl	-44(%ebp), %edi
	movl	_g_sm_heap, %ecx
	movl	(%eax,%edi), %eax
	xorl	%edi, %edi
	jmp	L2253
	.p2align 4,,10
	.p2align 3
L2372:
	leal	(%eax,%eax,4), %eax
	leal	0(,%eax,8), %edx
	movl	%edx, -52(%ebp)
	leal	48(%ecx), %edx
	movl	%edx, -56(%ebp)
	lock addl	$1, 80(%ecx,%eax,8)
	movl	%fs:44, %eax
	movl	__tls_index, %edx
	movl	(%eax,%edx,4), %edx
	movl	%ebx, %eax
	movl	%edx, -60(%ebp)
	sall	$6, %eax
	movl	%eax, -64(%ebp)
	addl	%edx, %eax
	movl	_tlsCacheBuckets@secrel32+52(%eax), %edx
	testl	%edx, %edx
	je	L2243
	movl	_tlsCacheBuckets@secrel32(%eax), %ecx
	subl	%ecx, %esi
	movl	%ecx, -68(%ebp)
	movzbl	_tlsCacheBuckets@secrel32+60(%eax), %ecx
	movl	%esi, -56(%ebp)
	cmpb	$9, %cl
	jbe	L2370
	movl	_tlsCacheBuckets@secrel32+56(%eax), %esi
	movl	%esi, -52(%ebp)
	movl	_tlsCacheBuckets@secrel32+4(%eax), %esi
	movl	%esi, -60(%ebp)
	cmpl	%edx, -52(%ebp)
	jnb	L2245
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %ebx
	movl	%ebx, (%esi,%ecx,4)
	addl	$1, %ecx
	movl	%ecx, _tlsCacheBuckets@secrel32+56(%eax)
	.p2align 4
	.p2align 3
L2365:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	_g_sm_heap, %ecx
	movl	8(%eax), %eax
	movl	(%eax,%ebx), %eax
L2241:
	addl	$4, %edi
	cmpl	$32, %edi
	je	L2371
L2253:
	movl	(%eax,%edi), %esi
	cmpl	$16384, %esi
	jbe	L2241
	movl	%esi, %eax
	xorl	%edx, %edx
	subl	12(%ecx), %eax
	divl	4(%ecx)
	movl	%eax, %ebx
	cmpl	(%ecx), %eax
	jb	L2372
	movl	%esi, %eax
	call	_mi_free
	jmp	L2365
L2210:
	movl	-84(%ebp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L2209
L2211:
	movl	-96(%ebp), %esi
	movl	4(%esi), %ecx
	testl	%ecx, %ecx
	jle	L2265
	movl	-84(%ebp), %edi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2267:
	movl	(%edx,%ebx,4), %eax
	testl	%eax, %eax
	je	L2266
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	8(%edi), %edx
	subl	$4, %esp
L2266:
	addl	$1, %ebx
	cmpl	%ebx, 4(%esi)
	jg	L2267
L2265:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-84(%ebp), %eax
	subl	$4, %esp
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L2268
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2268:
	movl	-80(%ebp), %eax
	testl	%eax, %eax
	je	L2209
L2263:
	movl	-80(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	L2269
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2269:
	movl	-80(%ebp), %eax
	movl	68(%eax), %eax
	testl	%eax, %eax
	je	L2270
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2270:
	movl	-80(%ebp), %eax
	movl	72(%eax), %eax
	testl	%eax, %eax
	je	L2271
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2271:
	movl	-80(%ebp), %eax
L2366:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2209:
	movl	-84(%ebp), %edx
	xorl	%eax, %eax
	movl	$0, 96(%edx)
	movl	$0, 100(%edx)
	movl	$0, 104(%edx)
	movl	$0, 108(%edx)
L2272:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$96, %eax
	jb	L2272
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
L2243:
	.cfi_restore_state
	movl	-52(%ebp), %edx
	movl	$1, %ebx
	leal	48(%ecx,%edx), %eax
	movl	%eax, -56(%ebp)
	lock xaddl	%ebx, 8(%eax)
	movl	%ebx, -52(%ebp)
	movl	%esi, %ebx
	subl	60(%ecx,%edx), %ebx
	movl	%ebx, %ecx
	movlps	(%eax), %xmm0
	movlps	%xmm0, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%esi, -60(%ebp)
	movl	-52(%ebp), %ebx
L2252:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-60(%ebp), %esi
	movl	%eax, (%esi)
	movl	%edx, 4(%esi)
	movl	-56(%ebp), %esi
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2365
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2252
	.p2align 4,,10
	.p2align 3
L2371:
	movl	%eax, (%esp)
	call	__ZN2sm9Allocator4FreeEPv
	movl	-48(%ebp), %eax
	subl	$4, %esp
	addl	$4, -44(%ebp)
	movl	8(%eax), %eax
	cmpl	$68, -44(%ebp)
	jne	L2239
	movl	-88(%ebp), %edi
	movl	-92(%ebp), %esi
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2240:
	movl	-48(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L2255
	xorl	%ebx, %ebx
L2256:
	movl	(%eax,%ebx), %eax
	addl	$4, %ebx
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-48(%ebp), %eax
	subl	$4, %esp
	movl	12(%eax), %eax
	cmpl	$12, %ebx
	jne	L2256
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2255:
	movl	-48(%ebp), %edx
	xorl	%eax, %eax
	movl	$0, 36(%edx)
	movl	$0, 40(%edx)
	movl	$0, 44(%edx)
	movl	$0, 48(%edx)
L2257:
	movl	$0, (%edx,%eax)
	movl	$0, 4(%edx,%eax)
	movl	$0, 8(%edx,%eax)
	movl	$0, 12(%edx,%eax)
	addl	$16, %eax
	cmpl	$48, %eax
	jb	L2257
	movl	-80(%ebp), %eax
	movl	56(%eax), %eax
L2235:
	addl	$1, %esi
	cmpl	%esi, 28(%edi)
	jg	L2259
L2232:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2233:
	movl	-80(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L2260
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L2260:
	movl	-80(%ebp), %edx
	xorl	%eax, %eax
	movl	$0, 112(%edx)
	movl	$0, 116(%edx)
	movl	$0, 120(%edx)
	movl	$0, 124(%edx)
L2261:
	movl	$0, 80(%edx,%eax)
	movl	$0, 84(%edx,%eax)
	movl	$0, 88(%edx,%eax)
	movl	$0, 92(%edx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2261
	movl	-80(%ebp), %edi
	leal	20(%edi), %eax
	call	_drft_clear
	leal	32(%edi), %eax
	call	_drft_clear
	movl	-84(%ebp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L2263
	movl	-96(%ebp), %ebx
	testl	%ebx, %ebx
	jne	L2211
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-84(%ebp), %eax
	subl	$4, %esp
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L2263
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
	jmp	L2263
	.p2align 4,,10
	.p2align 3
L2370:
	movl	-60(%ebp), %ebx
	movl	-64(%ebp), %esi
	leal	_tlsCacheBuckets@secrel32(%ebx,%esi), %edx
	movl	-56(%ebp), %ebx
	movl	%ebx, 12(%edx,%ecx,4)
	addb	$1, _tlsCacheBuckets@secrel32+60(%eax)
	jmp	L2365
	.p2align 4,,10
	.p2align 3
L2245:
	movl	-52(%ebp), %esi
	movl	$1, %edx
	shrl	%esi
	je	L2246
	movl	-52(%ebp), %edx
	movl	-60(%ebp), %ecx
	movl	%esi, -64(%ebp)
	subl	%esi, %edx
	movl	-68(%ebp), %esi
	addl	(%ecx,%edx,4), %esi
	movl	%esi, -68(%ebp)
	movl	%esi, -76(%ebp)
	movl	%edx, %esi
	addl	$1, %edx
	cmpl	-52(%ebp), %edx
	jnb	L2277
	movl	%esi, %edx
	movl	%esi, -72(%ebp)
	movl	-60(%ebp), %esi
	movl	4(%esi,%edx,4), %esi
	movl	-68(%ebp), %edx
	movl	$16777215, (%edx)
	movl	%esi, 4(%edx)
	movl	_tlsCacheBuckets@secrel32(%eax), %edx
	addl	%esi, %edx
	movl	%edx, -60(%ebp)
	movl	-72(%ebp), %edx
	addl	$2, %edx
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jnb	L2247
	movl	-64(%ebp), %esi
	subl	-52(%ebp), %esi
	movl	%ebx, -68(%ebp)
	leal	16777214(%esi), %ecx
	movl	-60(%ebp), %esi
	movl	%edi, -52(%ebp)
	movl	%ecx, %edi
	.p2align 6
	.p2align 4
	.p2align 3
L2248:
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	leal	(%edi,%edx), %ebx
	movl	(%ecx,%edx,4), %ecx
	movl	%ebx, (%esi)
	addl	$1, %edx
	movl	%ecx, 4(%esi)
	movl	_tlsCacheBuckets@secrel32(%eax), %esi
	addl	%ecx, %esi
	cmpl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	jb	L2248
	movl	-52(%ebp), %edi
	movl	-68(%ebp), %ebx
	movl	%esi, -60(%ebp)
L2247:
	movl	%fs:44, %esi
	movl	__tls_index, %ecx
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%esi,%ecx,4), %eax
	movl	$1, %esi
	movl	_tlsCacheBuckets@secrel32+8(%eax), %eax
	movl	%eax, -52(%ebp)
	lock xaddl	%esi, 8(%eax)
	movl	-76(%ebp), %ecx
	subl	12(%eax), %ecx
	movl	%esi, -68(%ebp)
	movlps	(%eax), %xmm1
	movlps	%xmm1, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	movl	%edi, -72(%ebp)
	movl	%ebx, %edi
L2250:
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	-60(%ebp), %ebx
	movl	-52(%ebp), %esi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	movl	-68(%ebp), %ebx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	lock cmpxchg8b	(%esi)
	je	L2278
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	jmp	L2250
	.p2align 4,,10
	.p2align 3
L2278:
	movl	%edi, %ebx
	movl	%fs:44, %esi
	movl	-72(%ebp), %edi
	movl	__tls_index, %ecx
	movl	%ebx, %eax
	sall	$6, %eax
	addl	(%esi,%ecx,4), %eax
	movl	_tlsCacheBuckets@secrel32+56(%eax), %edx
	subl	-64(%ebp), %edx
L2246:
	movl	%ebx, %eax
	movl	__tls_index, %esi
	movl	%fs:44, %ebx
	sall	$6, %eax
	addl	(%ebx,%esi,4), %eax
	movl	-56(%ebp), %ebx
	movl	_tlsCacheBuckets@secrel32+4(%eax), %ecx
	movl	%ebx, (%ecx,%edx,4)
	addl	$1, %edx
	movl	%edx, _tlsCacheBuckets@secrel32+56(%eax)
	jmp	L2365
L2277:
	movl	-76(%ebp), %eax
	movl	%eax, -60(%ebp)
	jmp	L2247
L2368:
	testl	%eax, %eax
	jne	L2207
	movl	-84(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L2209
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-84(%ebp), %eax
	subl	$4, %esp
	movl	12(%eax), %eax
	testl	%eax, %eax
	jne	L2366
	jmp	L2209
L2218:
	movl	-80(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L2228
	testl	%edi, %edi
	jne	L2223
L2225:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-80(%ebp), %eax
	subl	$4, %esp
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	L2232
	jmp	L2233
L2228:
	movl	-80(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L2233
	testl	%edi, %edi
	jne	L2234
	jmp	L2232
	.p2align 4,,10
	.p2align 3
L2219:
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-80(%ebp), %eax
	subl	$4, %esp
	movl	52(%eax), %eax
	testl	%eax, %eax
	jne	L2225
	movl	-80(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	L2232
	jmp	L2233
L2369:
	movl	-80(%ebp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	jne	L2234
	jmp	L2233
	.cfi_endproc
LFE205:
	.p2align 4
	.globl	__vds_shared_init.constprop.0
	.def	__vds_shared_init.constprop.0;	.scl	2;	.type	32;	.endef
__vds_shared_init.constprop.0:
LFB220:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$44, %esp
	movl	%ebx, -12(%ebp)
	movl	%edi, -4(%ebp)
	.cfi_offset 3, -20
	.cfi_offset 7, -12
	movl	28(%edx), %ebx
	testl	%ebx, %ebx
	je	L2374
	movl	8(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2374
	movl	(%ebx), %ecx
	cmpl	$63, %ecx
	jle	L2374
	cmpl	4(%ebx), %ecx
	jle	L2452
L2374:
	movl	$1, %eax
L2373:
	movl	-12(%ebp), %ebx
	movl	-4(%ebp), %edi
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 7
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.p2align 4,,10
	.p2align 3
L2452:
	.cfi_restore_state
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	3656(%ebx), %edi
	xorl	%ecx, %ecx
	movl	%edi, -16(%ebp)
	movl	$0, 96(%eax)
	movl	$0, 100(%eax)
	movl	$0, 104(%eax)
	movl	$0, 108(%eax)
L2377:
	movl	$0, (%eax,%ecx)
	movl	$0, 4(%eax,%ecx)
	movl	$0, 8(%eax,%ecx)
	movl	$0, 12(%eax,%ecx)
	addl	$16, %ecx
	cmpl	$96, %ecx
	jb	L2377
	movl	$136, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, %edi
	movl	%edx, -24(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %esi
	testl	%eax, %eax
	je	L2379
	movl	$0, 120(%eax)
	movl	$0, 124(%eax)
	movl	$0, 128(%eax)
	movl	$0, 132(%eax)
	xorl	%eax, %eax
L2380:
	movl	$0, (%esi,%eax)
	movl	$0, 4(%esi,%eax)
	movl	$0, 8(%esi,%eax)
	movl	$0, 12(%esi,%eax)
	addl	$16, %eax
	cmpl	$128, %eax
	jb	L2380
	movl	-24(%ebp), %eax
	movl	%esi, 104(%edi)
	movl	%eax, 4(%edi)
	movl	8(%ebx), %eax
	subl	$1, %eax
	je	L2383
	bsrl	%eax, %eax
	addl	$1, %eax
L2383:
	movl	%eax, 44(%esi)
	movl	_g_sm_heap, %ecx
	movl	$4, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2384
	movl	$0, (%eax)
	movl	_g_sm_heap, %ecx
	movl	%eax, 12(%esi)
	movl	$4, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2384
	movl	$0, (%eax)
	movl	_g_sm_heap, %ecx
	movl	%eax, 16(%esi)
	movl	12(%esi), %eax
	movl	$20, (%esp)
	movl	%eax, -20(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2386
	movl	-20(%ebp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	%eax, (%ecx)
	movl	16(%esi), %eax
	movl	$20, (%esp)
	movl	_g_sm_heap, %ecx
	movl	%eax, -20(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2386
	movl	-20(%ebp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	%eax, (%ecx)
	movl	12(%esi), %eax
	movzbl	-16(%ebp), %ecx
	movl	(%ebx), %edx
	movl	(%eax), %eax
	sarl	%cl, %edx
	call	_mdct_init
	movl	16(%esi), %eax
	movl	4(%ebx), %edx
	movzbl	-16(%ebp), %ecx
	movl	(%eax), %eax
	sarl	%cl, %edx
	call	_mdct_init
	movl	(%ebx), %edx
	bsrl	%edx, %eax
	subl	$6, %eax
	testl	%edx, %edx
	movl	$-7, %edx
	cmove	%edx, %eax
	movl	%eax, 4(%esi)
	movl	4(%ebx), %edx
	bsrl	%edx, %eax
	subl	$6, %eax
	testl	%edx, %edx
	movl	$-7, %edx
	cmove	%edx, %eax
	movl	%eax, 8(%esi)
	movl	2848(%ebx), %eax
	testl	%eax, %eax
	je	L2453
L2390:
	movl	4(%ebx), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, 16(%edi)
	movl	-24(%ebp), %eax
	movl	4(%eax), %edx
	sall	$2, %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2395
	movl	%eax, 8(%edi)
	movl	-24(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	4(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	-16(%ebp), %edx
	subl	$4, %esp
	testl	%eax, %eax
	je	L2454
	movl	-24(%ebp), %edx
	movl	%eax, 12(%edi)
	movl	4(%edx), %eax
	testl	%eax, %eax
	jle	L2399
	movl	%ebx, -28(%ebp)
	xorl	%ebx, %ebx
	movl	%esi, -32(%ebp)
	jmp	L2398
	.p2align 4,,10
	.p2align 3
L2456:
	movl	%esi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -20(%ebp)
	call	_memset
	movl	-16(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	%ecx, (%eax,%ebx,4)
	movl	-24(%ebp), %eax
	addl	$1, %ebx
	cmpl	4(%eax), %ebx
	jge	L2455
L2398:
	movl	8(%edi), %eax
	movl	_g_sm_heap, %ecx
	movl	%eax, -16(%ebp)
	movl	16(%edi), %eax
	leal	0(,%eax,4), %esi
	movl	%esi, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	jne	L2456
L2384:
	movl	$4, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2455:
	movl	-28(%ebp), %ebx
	movl	-32(%ebp), %esi
L2399:
	movl	$0, 36(%edi)
	movl	_g_sm_heap, %ecx
	movl	$0, 40(%edi)
	movl	4(%ebx), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 48(%edi)
	movl	%eax, 20(%edi)
	movl	16(%ebx), %eax
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2384
	movl	-16(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -16(%ebp)
	call	_memset
	movl	-16(%ebp), %ecx
	movl	%ecx, 48(%esi)
	movl	20(%ebx), %eax
	movl	_g_sm_heap, %ecx
	leal	0(,%eax,4), %edx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2384
	movl	-16(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -16(%ebp)
	call	_memset
	movl	-16(%ebp), %ecx
	movl	%ecx, 52(%esi)
	movl	16(%ebx), %eax
	testl	%eax, %eax
	jle	L2400
	movl	%edi, -20(%ebp)
	movl	%esi, %edi
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2401:
	movl	48(%edi), %eax
	movl	1056(%esi,%ebx,4), %ecx
	leal	(%eax,%ebx,4), %edx
	movl	800(%esi,%ebx,4), %eax
	movl	%ecx, 4(%esp)
	addl	$1, %ebx
	movl	-20(%ebp), %ecx
	movl	%edx, -16(%ebp)
	movl	__floor_P(,%eax,4), %eax
	movl	%ecx, (%esp)
	call	*8(%eax)
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	cmpl	16(%esi), %ebx
	jl	L2401
	movl	%esi, %ebx
	movl	%edi, %esi
	movl	-20(%ebp), %edi
L2400:
	movl	20(%ebx), %eax
	testl	%eax, %eax
	jle	L2403
	movl	%edi, -20(%ebp)
	movl	%esi, %edi
	movl	%ebx, %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2402:
	movl	52(%edi), %eax
	movl	-20(%ebp), %ecx
	leal	(%eax,%ebx,4), %edx
	movl	1312(%esi,%ebx,4), %eax
	movl	%edx, -16(%ebp)
	movl	1568(%esi,%ebx,4), %edx
	addl	$1, %ebx
	movl	__residue_P(,%eax,4), %eax
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	call	*8(%eax)
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	cmpl	20(%esi), %ebx
	jl	L2402
L2403:
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	xorl	%eax, %eax
	jmp	L2373
	.p2align 4,,10
	.p2align 3
L2386:
	.cfi_restore_state
	movl	$20, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L2453:
	imull	$56, 24(%ebx), %edx
	movl	_g_sm_heap, %ecx
	movl	%edx, (%esp)
	movl	%edx, -16(%ebp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2391
	movl	-16(%ebp), %edx
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%edx, 8(%esp)
	movl	%eax, -16(%ebp)
	call	_memset
	movl	-16(%ebp), %ecx
	movl	%ecx, 2848(%ebx)
	movl	24(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2390
	movl	%esi, -20(%ebp)
	xorl	%esi, %esi
	movl	%edi, -16(%ebp)
	movl	%ebx, %edi
	xorl	%ebx, %ebx
	jmp	L2392
	.p2align 4,,10
	.p2align 3
L2458:
	movl	2848(%edi), %eax
	addl	%ebx, %eax
	call	_vorbis_book_init_decode
	testl	%eax, %eax
	jne	L2393
	movl	1824(%edi,%esi,4), %eax
	movl	36(%eax), %edx
	testl	%edx, %edx
	je	L2394
	call	_vorbis_staticbook_destroy.part.0
L2394:
	movl	$0, 1824(%edi,%esi,4)
	addl	$56, %ebx
	addl	$1, %esi
	cmpl	24(%edi), %esi
	jge	L2457
L2392:
	movl	1824(%edi,%esi,4), %edx
	testl	%edx, %edx
	jne	L2458
L2393:
	movl	%edi, %ebx
	movl	-16(%ebp), %edi
	movl	24(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2404
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2407:
	movl	1824(%ebx,%esi,4), %eax
	testl	%eax, %eax
	je	L2405
	movl	36(%eax), %edx
	testl	%edx, %edx
	je	L2406
	call	_vorbis_staticbook_destroy.part.0
L2406:
	movl	$0, 1824(%ebx,%esi,4)
L2405:
	addl	$1, %esi
	cmpl	24(%ebx), %esi
	jl	L2407
L2404:
	movl	%edi, %eax
	call	_vorbis_dsp_clear
	movl	-8(%ebp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$-1, %eax
	jmp	L2373
L2379:
	.cfi_restore_state
	movl	$136, %eax
	call	__Z13handle_memerri
L2395:
	movl	-16(%ebp), %eax
	call	__Z13handle_memerri
L2454:
	movl	%edx, %eax
	call	__Z13handle_memerri
L2457:
	movl	%edi, %ebx
	movl	-20(%ebp), %esi
	movl	-16(%ebp), %edi
	jmp	L2390
L2391:
	movl	$56, %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE220:
	.p2align 4
	.globl	_vorbis_synthesis_restart.isra.0
	.def	_vorbis_synthesis_restart.isra.0;	.scl	2;	.type	32;	.endef
_vorbis_synthesis_restart.isra.0:
LFB222:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	4(%eax), %edx
	movl	%ebx, (%esp)
	.cfi_offset 3, -12
	movl	104(%eax), %ebx
	testl	%edx, %edx
	je	L2459
	testl	%ebx, %ebx
	je	L2459
	movl	28(%edx), %edx
	testl	%edx, %edx
	je	L2459
	movl	%esi, 4(%esp)
	.cfi_offset 6, -8
	movl	3656(%edx), %esi
	movl	4(%edx), %edx
	movl	$-1, 24(%eax)
	leal	1(%esi), %ecx
	movl	$-1, 56(%eax)
	sarl	%cl, %edx
	movl	%esi, %ecx
	movl	$-1, 60(%eax)
	movl	%edx, 48(%eax)
	sarl	%cl, %edx
	movl	%edx, 20(%eax)
	movl	$-1, 64(%eax)
	movl	$-1, 68(%eax)
	movl	$0, 32(%eax)
	movl	$-1, 128(%ebx)
	movl	$-1, 132(%ebx)
	movl	4(%esp), %esi
	.cfi_restore 6
L2459:
	movl	(%esp), %ebx
	addl	$8, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE222:
	.p2align 4
	.globl	_vorbis_synthesis_blockin.isra.0
	.def	_vorbis_synthesis_blockin.isra.0;	.scl	2;	.type	32;	.endef
_vorbis_synthesis_blockin.isra.0:
LFB224:
	.cfi_startproc
	subl	$116, %esp
	.cfi_def_cfa_offset 120
	movl	%esi, 104(%esp)
	.cfi_offset 6, -16
	movl	%eax, %esi
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	cmpl	%eax, 20(%esi)
	jle	L2504
	cmpl	$-1, %eax
	jne	L2465
L2504:
	movl	%edi, 108(%esp)
	.cfi_offset 7, -12
	movl	4(%esp), %edi
	movl	%ebx, 100(%esp)
	movl	%ebp, 112(%esp)
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	movl	4(%esi), %eax
	movl	68(%esi), %edx
	movl	104(%esi), %ebx
	movl	%eax, 20(%esp)
	movl	28(%eax), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 60(%esp)
	movl	3656(%eax), %eax
	movl	%eax, 16(%esp)
	movl	40(%esi), %eax
	movl	%eax, 36(%esi)
	movl	28(%edi), %eax
	movl	$-1, 44(%esi)
	movl	%eax, 40(%esi)
	movl	64(%esi), %eax
	movl	%eax, %ecx
	andl	%edx, %ecx
	cmpl	$-1, %ecx
	je	L2468
	addl	$1, %eax
	movl	56(%edi), %ebx
	movl	60(%edi), %ecx
	adcl	$0, %edx
	xorl	%ecx, %edx
	xorl	%ebx, %eax
	orl	%edx, %eax
	je	L2469
L2468:
	movl	12(%esp), %eax
	movl	$-1, 56(%esi)
	movl	$-1, 60(%esi)
	movl	$-1, 128(%eax)
	movl	$-1, 132(%eax)
	movl	4(%esp), %eax
	movl	56(%eax), %ebx
	movl	60(%eax), %ecx
L2469:
	movl	4(%esp), %eax
	movl	%ebx, 64(%esi)
	movl	%ecx, 68(%esi)
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	L2470
	movl	60(%esp), %edi
	movl	16(%esp), %edx
	movl	40(%esi), %ebp
	leal	1(%edx), %ecx
	movl	(%edi), %edx
	movl	(%edi,%ebp,4), %ebx
	movl	%edx, 8(%esp)
	movl	4(%edi), %edx
	movl	%edx, %edi
	movl	%edx, (%esp)
	sarl	%cl, %edi
	movl	%edi, 44(%esp)
	movl	%eax, %edi
	movl	88(%eax), %eax
	cltd
	addl	%eax, 72(%esi)
	adcl	%edx, 76(%esi)
	movl	92(%edi), %eax
	cltd
	addl	%eax, 80(%esi)
	adcl	%edx, 84(%esi)
	movl	96(%edi), %eax
	cltd
	addl	%eax, 88(%esi)
	adcl	%edx, 92(%esi)
	movl	100(%edi), %eax
	cltd
	addl	%eax, 96(%esi)
	movl	20(%esp), %eax
	adcl	%edx, 100(%esi)
	movl	48(%esi), %edx
	movl	4(%eax), %eax
	movl	%edx, 92(%esp)
	testl	%edx, %edx
	je	L2536
	testl	%eax, %eax
	movl	44(%esp), %eax
	jle	L2537
	movl	%eax, 28(%esp)
	movl	%eax, 92(%esp)
	leal	0(,%eax,4), %eax
	movl	$0, 52(%esp)
	movl	$0, (%esp)
	movl	$0, 96(%esp)
	movl	%eax, 88(%esp)
L2501:
	movl	8(%esp), %eax
	sarl	%cl, %ebx
	movl	%ebx, 24(%esp)
	movl	%eax, %ebx
	shrl	$31, %eax
	sarl	%cl, %ebx
	movl	44(%esp), %ecx
	addl	%ebx, %eax
	movl	%ebx, 48(%esp)
	movl	%ecx, %edx
	sarl	%eax
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, %ecx
	addl	%eax, %edx
	subl	%eax, %ecx
	xorl	%eax, %eax
	movl	%edx, 68(%esp)
	movl	68(%esp), %edx
	leal	0(,%ecx,4), %edi
	addl	(%esp), %ecx
	testl	%ebx, %ebx
	movl	$0, (%esp)
	cmovns	%ebx, %eax
	movl	%edi, 72(%esp)
	leal	0(,%ecx,4), %edi
	sall	$2, %edx
	movl	%edi, 84(%esp)
	leal	0(,%ebx,4), %edi
	movl	%edi, 56(%esp)
	leal	0(,%eax,4), %edi
	movl	%eax, 64(%esp)
	movl	24(%esp), %eax
	movl	%edx, 76(%esp)
	leal	0(,%eax,4), %ebx
	sall	$3, %eax
	movl	%edi, 80(%esp)
	movl	%ebx, 32(%esp)
	movl	28(%esp), %ebx
	movl	%eax, 40(%esp)
	leal	0(,%ebx,4), %edx
	movl	%ebp, %ebx
	movl	%esi, %ebp
	movl	%edx, 36(%esp)
	.p2align 4
	.p2align 3
L2489:
	movl	(%esp), %edi
	movl	4(%esp), %esi
	movl	36(%ebp), %ecx
	leal	0(,%edi,4), %eax
	movl	(%esi), %edx
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	(%edx,%edi,4), %edx
	movl	(%eax,%edi,4), %eax
	testl	%ecx, %ecx
	je	L2473
	testl	%ebx, %ebx
	je	L2474
	movl	44(%esp), %edi
	testl	%edi, %edi
	jle	L2476
	movl	12(%esp), %ebx
	addl	52(%esp), %eax
	movl	8(%ebx), %esi
	movl	88(%esp), %ebx
	movl	%esi, %ecx
	subl	16(%esp), %ecx
	movl	%esi, 28(%esp)
	movl	_vwin(,%ecx,4), %edi
	xorl	%ecx, %ecx
	leal	-4(%edi), %esi
	addl	%esi, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L2477:
	movss	(%eax,%ecx), %xmm0
	movss	(%edx,%ecx), %xmm1
	subl	$4, %ebx
	mulss	(%edi,%ecx), %xmm1
	mulss	4(%ebx), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%eax,%ecx)
	addl	$4, %ecx
	cmpl	%esi, %ebx
	jne	L2477
L2535:
	movl	4(%esp), %ebx
	movl	8(%esp), %esi
	movl	8(%ebp), %eax
	movl	(%ebx), %edx
	movl	(%eax,%esi), %eax
	movl	(%edx,%esi), %edx
L2476:
	movl	24(%esp), %esi
	testl	%esi, %esi
	jle	L2486
	movl	32(%esp), %esi
	addl	36(%esp), %eax
	leal	(%esi,%edx), %ecx
	addl	40(%esp), %edx
	.p2align 5
	.p2align 4
	.p2align 3
L2487:
	movss	(%ecx), %xmm0
	addl	$4, %ecx
	addl	$4, %eax
	movss	%xmm0, -4(%eax)
	cmpl	%edx, %ecx
	jne	L2487
L2486:
	movl	20(%esp), %esi
	addl	$1, (%esp)
	movl	(%esp), %eax
	cmpl	4(%esi), %eax
	jge	L2488
	movl	40(%ebp), %ebx
	jmp	L2489
	.p2align 4,,10
	.p2align 3
L2488:
	movl	48(%ebp), %ebx
	xorl	%eax, %eax
	movl	%ebp, %esi
	testl	%ebx, %ebx
	cmove	44(%esp), %eax
	movl	%eax, 44(%esp)
L2490:
	movl	44(%esp), %eax
	movl	%eax, 48(%esi)
	cmpl	$-1, 24(%esi)
	je	L2538
	movl	96(%esp), %ebx
	movl	36(%esi), %eax
	movl	60(%esp), %edi
	movl	%ebx, 24(%esi)
	movl	(%edi,%eax,4), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovs	%eax, %edx
	movl	40(%esi), %eax
	movl	(%edi,%eax,4), %ecx
	sarl	$2, %edx
	leal	3(%ecx), %eax
	testl	%ecx, %ecx
	cmovns	%ecx, %eax
	movzbl	16(%esp), %ecx
	sarl	$2, %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	addl	%ebx, %eax
	movl	%eax, 20(%esi)
L2470:
	movl	12(%esp), %eax
	xorl	%edx, %edx
	movl	128(%eax), %edi
	movl	132(%eax), %ebp
	xorl	%eax, %eax
	movl	%edi, %ecx
	andl	%ebp, %ecx
	cmpl	$-1, %ecx
	je	L2492
	movl	36(%esi), %eax
	movl	60(%esp), %ebx
	movl	(%ebx,%eax,4), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	movl	40(%esi), %edx
	movl	(%ebx,%edx,4), %edx
	sarl	$2, %eax
	leal	3(%edx), %ecx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	sarl	$2, %edx
	addl	%edx, %eax
	cltd
	addl	%edi, %eax
	adcl	%ebp, %edx
L2492:
	movl	12(%esp), %ebx
	movl	%eax, 128(%ebx)
	movl	%edx, 132(%ebx)
	movl	56(%esi), %ecx
	movl	60(%esi), %ebx
	movl	%ecx, %eax
	andl	%ebx, %eax
	cmpl	$-1, %eax
	je	L2539
	movl	36(%esi), %eax
	movl	60(%esp), %edi
	movl	(%edi,%eax,4), %edx
	testl	%edx, %edx
	leal	3(%edx), %eax
	cmovns	%edx, %eax
	movl	40(%esi), %edx
	movl	(%edi,%edx,4), %edi
	sarl	$2, %eax
	leal	3(%edi), %edx
	testl	%edi, %edi
	cmovns	%edi, %edx
	movl	4(%esp), %edi
	sarl	$2, %edx
	addl	%edx, %eax
	cltd
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, 56(%esi)
	movl	%edx, 60(%esi)
	movl	48(%edi), %ecx
	movl	52(%edi), %ebx
	movl	%ecx, %ebp
	andl	%ebx, %ebp
	cmpl	$-1, %ebp
	je	L2494
	movl	%eax, %ebp
	movl	%edx, %edi
	xorl	%ecx, %ebp
	xorl	%ebx, %edi
	orl	%edi, %ebp
	je	L2494
	cmpl	%eax, %ecx
	movl	%ebx, %ebp
	sbbl	%edx, %ebp
	jl	L2540
L2498:
	movl	%ecx, 56(%esi)
	movl	%ebx, 60(%esi)
L2494:
	movl	4(%esp), %eax
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	L2534
	movl	$1, 32(%esi)
	movl	100(%esp), %ebx
	.cfi_restore 3
	movl	108(%esp), %edi
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
L2465:
	movl	104(%esp), %esi
	addl	$116, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L2534:
	.cfi_def_cfa_offset 120
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	100(%esp), %ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	108(%esp), %edi
	.cfi_restore 7
	movl	112(%esp), %ebp
	.cfi_restore 5
	movl	104(%esp), %esi
	addl	$116, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
L2536:
	.cfi_restore_state
	testl	%eax, %eax
	movl	44(%esp), %eax
	jle	L2503
	leal	0(,%eax,4), %edx
	movl	%eax, (%esp)
	movl	%edx, 88(%esp)
	movl	%edx, 52(%esp)
	movl	%eax, 96(%esp)
	movl	$0, 28(%esp)
	jmp	L2501
	.p2align 4,,10
	.p2align 3
L2473:
	movl	12(%esp), %edi
	movl	4(%edi), %edi
	movl	%edi, %esi
	subl	16(%esp), %esi
	movl	%edi, 28(%esp)
	movl	_vwin(,%esi,4), %esi
	testl	%ebx, %ebx
	je	L2480
	movl	48(%esp), %ebx
	addl	52(%esp), %eax
	addl	72(%esp), %edx
	testl	%ebx, %ebx
	jle	L2481
	movl	56(%esp), %ebx
	movl	64(%esp), %edi
	leal	-4(%esi,%ebx), %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L2482:
	movss	(%eax,%ecx,4), %xmm0
	movss	(%edx,%ecx,4), %xmm1
	subl	$4, %ebx
	mulss	(%esi,%ecx,4), %xmm1
	mulss	4(%ebx), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%eax,%ecx,4)
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	L2482
L2481:
	movl	80(%esp), %esi
	leal	(%edx,%esi), %ecx
	addl	%esi, %eax
	addl	76(%esp), %edx
	movl	64(%esp), %esi
	cmpl	%esi, 68(%esp)
	jle	L2535
	.p2align 5
	.p2align 4
	.p2align 3
L2484:
	movss	(%ecx), %xmm0
	addl	$4, %ecx
	addl	$4, %eax
	movss	%xmm0, -4(%eax)
	cmpl	%ecx, %edx
	jne	L2484
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	movl	8(%ebp), %eax
	movl	(%esi), %edx
	movl	(%eax,%edi), %eax
	movl	(%edx,%edi), %edx
	jmp	L2476
	.p2align 4,,10
	.p2align 3
L2480:
	movl	48(%esp), %edi
	testl	%edi, %edi
	jle	L2476
	movl	56(%esp), %ebx
	leal	-4(%esi), %edi
	addl	52(%esp), %eax
	xorl	%ecx, %ecx
	addl	%edi, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L2485:
	movss	(%eax,%ecx), %xmm0
	movss	(%edx,%ecx), %xmm1
	subl	$4, %ebx
	mulss	(%esi,%ecx), %xmm1
	mulss	4(%ebx), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%eax,%ecx)
	addl	$4, %ecx
	cmpl	%ebx, %edi
	jne	L2485
	movl	4(%esp), %edi
	movl	8(%esp), %esi
	movl	8(%ebp), %eax
	movl	(%edi), %edx
	movl	(%eax,%esi), %eax
	movl	(%edx,%esi), %edx
	jmp	L2476
	.p2align 4,,10
	.p2align 3
L2474:
	movl	48(%esp), %esi
	testl	%esi, %esi
	jle	L2476
	movl	12(%esp), %esi
	movl	56(%esp), %ebx
	addl	84(%esp), %eax
	movl	4(%esi), %esi
	movl	%esi, %ecx
	subl	16(%esp), %ecx
	movl	%esi, 28(%esp)
	movl	_vwin(,%ecx,4), %edi
	xorl	%ecx, %ecx
	leal	-4(%edi), %esi
	addl	%esi, %ebx
	.p2align 6
	.p2align 4
	.p2align 3
L2479:
	movss	(%eax,%ecx), %xmm0
	movss	(%edx,%ecx), %xmm1
	subl	$4, %ebx
	mulss	(%edi,%ecx), %xmm1
	mulss	4(%ebx), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%eax,%ecx)
	addl	$4, %ecx
	cmpl	%ebx, %esi
	jne	L2479
	movl	4(%esp), %edi
	movl	8(%esp), %ebx
	movl	8(%ebp), %eax
	movl	(%edi), %edx
	movl	(%eax,%ebx), %eax
	movl	(%edx,%ebx), %edx
	jmp	L2476
L2539:
	movl	4(%esp), %ebp
	movl	48(%ebp), %ecx
	movl	52(%ebp), %edx
	movl	%ecx, %eax
	andl	%edx, %eax
	cmpl	$-1, %eax
	je	L2494
	movl	12(%esp), %ebx
	movl	%ecx, 56(%esi)
	movl	%edx, 60(%esi)
	movl	128(%ebx), %eax
	cmpl	%eax, %ecx
	sbbl	132(%ebx), %edx
	jge	L2494
	subl	%ecx, %eax
	movl	44(%ebp), %ecx
	movl	$0, %edx
	movl	20(%esi), %ebx
	cmovs	%edx, %eax
	movl	24(%esi), %edi
	testl	%ecx, %ecx
	je	L2495
	movl	%ebx, %edx
	subl	%edi, %edx
	movl	16(%esp), %edi
	movl	%edi, %ecx
	sall	%cl, %edx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	sarl	%cl, %edx
	subl	%edx, %ebx
	movl	%ebx, 20(%esi)
	jmp	L2494
L2538:
	movl	92(%esp), %eax
	movl	%eax, 24(%esi)
	movl	%eax, 20(%esi)
	jmp	L2470
L2540:
	subl	%ecx, %eax
	je	L2498
	movl	4(%esp), %edi
	movl	44(%edi), %edx
	testl	%edx, %edx
	je	L2498
	movl	20(%esi), %edx
	movl	16(%esp), %ebp
	movl	%edx, %ebx
	movl	%ebp, %ecx
	subl	24(%esi), %ebx
	sall	%cl, %ebx
	cmpl	%eax, %ebx
	cmovle	%ebx, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	subl	%eax, %edx
	movl	%edx, 20(%esi)
	movl	48(%edi), %ecx
	movl	52(%edi), %ebx
	jmp	L2498
L2495:
	movzbl	16(%esp), %ecx
	sarl	%cl, %eax
	addl	%edi, %eax
	cmpl	%ebx, %eax
	cmovg	%ebx, %eax
	movl	%eax, 24(%esi)
	jmp	L2494
L2537:
	movl	%eax, 92(%esp)
	movl	$0, 96(%esp)
	movl	$0, 44(%esp)
	jmp	L2490
L2503:
	movl	%eax, 96(%esp)
	jmp	L2490
	.cfi_endproc
LFE224:
	.p2align 4
	.globl	_vorbis_packet_blocksize.isra.0
	.def	_vorbis_packet_blocksize.isra.0;	.scl	2;	.type	32;	.endef
_vorbis_packet_blocksize.isra.0:
LFB226:
	.cfi_startproc
	testl	%eax, %eax
	je	L2557
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%ebx, 20(%esp)
	.cfi_offset 3, -12
	movl	8(%eax), %ebx
	testl	%ebx, %ebx
	jle	L2560
	movl	%esi, 24(%esp)
	.cfi_offset 6, -8
	movl	%eax, %esi
	movl	%esp, %eax
	movl	%edx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$1, %edx
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	movl	%ecx, 16(%esp)
	call	_oggpack_read
	testl	%eax, %eax
	jne	L2548
	subl	$1, %ebx
	je	L2549
	bsrl	%ebx, %ebx
	leal	1(%ebx), %edx
L2545:
	movl	%esp, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L2546
	movl	32(%esi,%eax,4), %eax
	testl	%eax, %eax
	je	L2546
	movl	(%eax), %eax
	movl	(%esi,%eax,4), %eax
	movl	24(%esp), %esi
	.cfi_restore 6
L2541:
	movl	20(%esp), %ebx
	addl	$28, %esp
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2549:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -12
	.cfi_offset 6, -8
	xorl	%edx, %edx
	jmp	L2545
L2560:
	.cfi_restore 6
	movl	$-129, %eax
	jmp	L2541
L2548:
	.cfi_offset 6, -8
	movl	24(%esp), %esi
	.cfi_remember_state
	.cfi_restore 6
	movl	$-135, %eax
	jmp	L2541
L2546:
	.cfi_restore_state
	movl	24(%esp), %esi
	.cfi_restore 6
	movl	$-136, %eax
	jmp	L2541
L2557:
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	movl	$-129, %eax
	ret
	.cfi_endproc
LFE226:
	.p2align 4
	.globl	_vorbis_comment_clear
	.def	_vorbis_comment_clear;	.scl	2;	.type	32;	.endef
_vorbis_comment_clear:
LFB227:
	.cfi_startproc
	testl	%eax, %eax
	je	L2586
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%esi, 8(%esp)
	movl	(%eax), %edx
	.cfi_offset 6, -8
	movl	%eax, %esi
	testl	%edx, %edx
	je	L2563
	movl	8(%eax), %eax
	testl	%eax, %eax
	jle	L2564
	movl	%ebx, 4(%esp)
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L2566:
	movl	(%edx,%ebx,4), %eax
	testl	%eax, %eax
	je	L2565
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	movl	(%esi), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L2565:
	addl	$1, %ebx
	cmpl	%ebx, 8(%esi)
	jg	L2566
	movl	4(%esp), %ebx
	.cfi_restore 3
L2564:
	movl	%edx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L2563:
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	L2567
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L2567:
	movl	12(%esi), %eax
	testl	%eax, %eax
	je	L2568
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
L2568:
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	8(%esp), %esi
	addl	$12, %esp
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
L2586:
	ret
	.cfi_endproc
LFE227:
	.p2align 4
	.globl	_vorbis_info_clear
	.def	_vorbis_info_clear;	.scl	2;	.type	32;	.endef
_vorbis_info_clear:
LFB228:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%esp)
	.cfi_offset 7, -12
	movl	%eax, %edi
	movl	%ebx, 12(%esp)
	.cfi_offset 3, -20
	movl	28(%eax), %ebx
	testl	%ebx, %ebx
	je	L2590
	movl	%esi, 16(%esp)
	movl	%ebp, 24(%esp)
	.cfi_offset 6, -16
	.cfi_offset 5, -8
	movl	8(%ebx), %eax
	testl	%eax, %eax
	jle	L2591
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2593:
	movl	32(%ebx,%esi,4), %eax
	testl	%eax, %eax
	je	L2592
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
L2592:
	addl	$1, %esi
	cmpl	%esi, 8(%ebx)
	jg	L2593
L2591:
	movl	12(%ebx), %eax
	testl	%eax, %eax
	jle	L2594
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2596:
	movl	544(%ebx,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L2595
	movl	$3208, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	_memset
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
L2595:
	addl	$1, %esi
	cmpl	%esi, 12(%ebx)
	jg	L2596
L2594:
	movl	16(%ebx), %ebp
	testl	%ebp, %ebp
	jle	L2597
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2599:
	movl	1056(%ebx,%esi,4), %eax
	testl	%eax, %eax
	je	L2598
	movl	800(%ebx,%esi,4), %edx
	movl	%eax, (%esp)
	movl	__floor_P(,%edx,4), %edx
	call	*12(%edx)
L2598:
	addl	$1, %esi
	cmpl	%esi, 16(%ebx)
	jg	L2599
L2597:
	movl	20(%ebx), %esi
	testl	%esi, %esi
	jle	L2600
	xorl	%esi, %esi
	jmp	L2603
	.p2align 4,,10
	.p2align 3
L2646:
	movl	$2840, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	_memset
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
L2601:
	addl	$1, %esi
	cmpl	%esi, 20(%ebx)
	jle	L2600
L2603:
	movl	1568(%ebx,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L2601
	movl	1312(%ebx,%esi,4), %eax
	movl	__residue_P(,%eax,4), %eax
	movl	12(%eax), %eax
	cmpl	$_res0_free_info, %eax
	je	L2646
	movl	%ebp, (%esp)
	addl	$1, %esi
	call	*%eax
	cmpl	%esi, 20(%ebx)
	jg	L2603
	.p2align 4
	.p2align 3
L2600:
	movl	24(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2604
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	.p2align 4
	.p2align 3
L2607:
	movl	1824(%ebx,%esi,4), %eax
	testl	%eax, %eax
	je	L2605
	movl	36(%eax), %edx
	testl	%edx, %edx
	je	L2605
	call	_vorbis_staticbook_destroy.part.0
L2605:
	movl	2848(%ebx), %eax
	testl	%eax, %eax
	je	L2606
	addl	%ebp, %eax
	call	_vorbis_book_clear
L2606:
	addl	$1, %esi
	addl	$56, %ebp
	cmpl	%esi, 24(%ebx)
	jg	L2607
L2604:
	movl	2848(%ebx), %eax
	testl	%eax, %eax
	je	L2608
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
L2608:
	movl	28(%ebx), %eax
	testl	%eax, %eax
	jle	L2609
	xorl	%esi, %esi
L2611:
	movl	2852(%ebx,%esi,4), %ebp
	testl	%ebp, %ebp
	je	L2610
	movl	$520, 8(%esp)
	movl	$0, 4(%esp)
	movl	%ebp, (%esp)
	call	_memset
	movl	%ebp, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
L2610:
	addl	$1, %esi
	cmpl	%esi, 28(%ebx)
	jg	L2611
L2609:
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	.cfi_def_cfa_offset 28
	subl	$4, %esp
	.cfi_def_cfa_offset 32
	movl	16(%esp), %esi
	.cfi_restore 6
	movl	24(%esp), %ebp
	.cfi_restore 5
L2590:
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	$0, 8(%edi)
	movl	$0, 12(%edi)
	movl	$0, 16(%edi)
	movl	$0, 20(%edi)
	movl	$0, 24(%edi)
	movl	$0, 28(%edi)
	movl	12(%esp), %ebx
	movl	20(%esp), %edi
	addl	$28, %esp
	.cfi_restore 3
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE228:
	.section .rdata,"dr"
LC43:
	.ascii "vorbis\0"
	.text
	.p2align 4
	.def	_vorbis_synthesis_headerin;	.scl	3;	.type	32;	.endef
_vorbis_synthesis_headerin:
LFB232:
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
	movl	%ecx, %edi
	pushl	%esi
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	leal	-40(%ebp), %esi
	pushl	%ebx
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	leal	-46(%ebp), %ebx
	subl	$80, %esp
	movl	%eax, -64(%ebp)
	movss	(%ecx), %xmm0
	movl	4(%ecx), %eax
	movl	%edx, -60(%ebp)
	movl	$8, %edx
	unpcklps	%xmm0, %xmm0
	movl	$0, -40(%ebp)
	movl	%eax, -68(%ebp)
	movl	%eax, -24(%ebp)
	movl	%esi, %eax
	movl	$0, -36(%ebp)
	movlps	%xmm0, -32(%ebp)
	call	_oggpack_read
	movl	$0, -46(%ebp)
	movl	%eax, -56(%ebp)
	xorl	%eax, %eax
	movw	%ax, -42(%ebp)
	.p2align 4
	.p2align 3
L2648:
	movl	$8, %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	_oggpack_read
	movb	%al, -1(%ebx)
	cmpl	%esi, %ebx
	jne	L2648
	cmpl	$1651666806, -46(%ebp)
	je	L2858
L2649:
	movl	$-132, -52(%ebp)
L2647:
	movl	-52(%ebp), %eax
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
L2858:
	.cfi_restore_state
	cmpw	$29545, -42(%ebp)
	jne	L2649
	movl	$0, -52(%ebp)
	cmpl	$3, -56(%ebp)
	je	L2859
	movl	-56(%ebp), %eax
	cmpl	$5, %eax
	je	L2653
	cmpl	$1, %eax
	jne	L2655
	movl	8(%edi), %edi
	testl	%edi, %edi
	je	L2655
	movl	-64(%ebp), %edi
	movl	8(%edi), %ebx
	testl	%ebx, %ebx
	jne	L2655
	movl	28(%edi), %ebx
	testl	%ebx, %ebx
	je	L2656
	movl	$32, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, -52(%ebp)
	movl	%eax, (%edi)
	testl	%eax, %eax
	jne	L2739
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$32, %edx
	movl	%eax, 4(%edi)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$32, %edx
	movl	%eax, 8(%edi)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$32, %edx
	movl	%eax, 12(%edi)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$32, %edx
	movl	%eax, 16(%edi)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$4, %edx
	movl	%eax, 20(%edi)
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	js	L2658
	movl	-56(%ebp), %edx
	movl	%eax, %ecx
	movl	%esi, %eax
	sall	%cl, %edx
	movl	%edx, (%ebx)
	movl	$4, %edx
	call	_oggpack_read
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L2658
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, 4(%ebx)
	movl	8(%edi), %ecx
	testl	%ecx, %ecx
	jle	L2658
	movl	4(%edi), %edx
	testl	%edx, %edx
	jle	L2658
	movl	(%ebx), %edx
	cmpl	$8192, %eax
	setg	%cl
	cmpl	%edx, %eax
	setl	%al
	orb	%cl, %al
	jne	L2658
	cmpl	$63, %edx
	jle	L2658
L2856:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$1, %eax
	je	L2647
L2657:
	.p2align 4
	.p2align 3
L2658:
	movl	-64(%ebp), %eax
	call	_vorbis_info_clear
L2655:
	movl	$-133, -52(%ebp)
	movl	-52(%ebp), %eax
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
L2653:
	.cfi_restore_state
	movl	-64(%ebp), %eax
	movl	8(%eax), %edx
	testl	%edx, %edx
	je	L2655
	movl	-60(%ebp), %ecx
	movl	12(%ecx), %edi
	testl	%edi, %edi
	je	L2655
	movl	28(%eax), %eax
	movl	%eax, -56(%ebp)
	testl	%eax, %eax
	je	L2656
	movl	-56(%ebp), %eax
	movl	24(%eax), %ebx
	testl	%ebx, %ebx
	jg	L2655
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-56(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 24(%ecx)
	testl	%eax, %eax
	jle	L2658
	movl	$0, -60(%ebp)
L2715:
	movl	$40, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2671
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	xorl	%eax, %eax
L2672:
	movl	$0, (%ebx,%eax)
	movl	$0, 4(%ebx,%eax)
	movl	$0, 8(%ebx,%eax)
	movl	$0, 12(%ebx,%eax)
	addl	$16, %eax
	cmpl	$32, %eax
	jb	L2672
	movl	$1, 36(%ebx)
	movl	$24, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$5653314, %eax
	je	L2860
L2674:
	movl	%ebx, %eax
	call	_vorbis_staticbook_destroy.part.0
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	$0, 1824(%eax,%ecx,4)
	jmp	L2658
	.p2align 4,,10
	.p2align 3
L2859:
	movl	-64(%ebp), %eax
	movl	8(%eax), %edi
	testl	%edi, %edi
	je	L2655
	movl	-60(%ebp), %eax
	movl	12(%eax), %ebx
	testl	%ebx, %ebx
	jne	L2655
	movl	$32, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %edx
	testl	%eax, %eax
	js	L2659
	movl	-68(%ebp), %eax
	subl	$7, %eax
	cmpl	%eax, %edx
	jge	L2659
	leal	1(%edx), %edi
	movl	%edx, -56(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2660
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%ebx, 12(%eax)
	testl	%edx, %edx
	je	L2661
	leal	(%ebx,%edx), %edi
	.p2align 4
	.p2align 3
L2662:
	movl	$8, %edx
	movl	%esi, %eax
	addl	$1, %ebx
	call	_oggpack_read
	movb	%al, -1(%ebx)
	cmpl	%edi, %ebx
	jne	L2662
L2661:
	movl	$32, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %edx
	testl	%eax, %eax
	js	L2659
	movl	-36(%ebp), %ecx
	leal	14(%ecx), %eax
	addl	$7, %ecx
	cmovns	%ecx, %eax
	movl	-24(%ebp), %ecx
	sarl	$3, %eax
	addl	-40(%ebp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	jg	L2659
	movl	-60(%ebp), %eax
	leal	4(,%edx,4), %ebx
	movl	%edx, 8(%eax)
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2664
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-60(%ebp), %eax
	movl	%edi, (%eax)
	movl	8(%eax), %eax
	leal	4(,%eax,4), %ebx
	movl	%ebx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2664
	movl	%ebx, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-60(%ebp), %eax
	movl	8(%eax), %ecx
	movl	%edi, 4(%eax)
	testl	%ecx, %ecx
	jle	L2666
	movl	$0, -56(%ebp)
	.p2align 4
	.p2align 3
L2669:
	movl	$32, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L2659
	movl	-36(%ebp), %ecx
	leal	14(%ecx), %eax
	addl	$7, %ecx
	cmovns	%ecx, %eax
	movl	-24(%ebp), %ecx
	sarl	$3, %eax
	addl	-40(%ebp), %eax
	subl	%eax, %ecx
	cmpl	%ecx, %ebx
	jg	L2659
	movl	-60(%ebp), %ecx
	movl	-56(%ebp), %edx
	leal	1(%ebx), %edi
	movl	4(%ecx), %eax
	movl	%ebx, (%eax,%edx,4)
	movl	(%ecx), %eax
	movl	%eax, -64(%ebp)
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2660
	movl	%edi, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	movl	%eax, -68(%ebp)
	call	_memset
	movl	-64(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	-68(%ebp), %ecx
	movl	%ecx, (%eax,%edx,4)
	testl	%ebx, %ebx
	je	L2667
	movl	-60(%ebp), %ecx
	movl	(%ecx), %eax
	movl	(%eax,%edx,4), %edi
	addl	%edi, %ebx
	.p2align 4
	.p2align 3
L2668:
	movl	$8, %edx
	movl	%esi, %eax
	addl	$1, %edi
	call	_oggpack_read
	movb	%al, -1(%edi)
	cmpl	%ebx, %edi
	jne	L2668
L2667:
	movl	-60(%ebp), %ecx
	addl	$1, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	8(%ecx), %eax
	jl	L2669
L2666:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$1, %eax
	je	L2647
L2659:
	movl	-60(%ebp), %eax
	call	_vorbis_comment_clear
	jmp	L2655
L2860:
	movl	$16, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$24, %edx
	movl	%eax, (%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 4(%ebx)
	cmpl	$-1, %eax
	je	L2674
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L2861
	bsrl	%edx, %edx
	addl	$1, %edx
	testl	%eax, %eax
	je	L2679
L2677:
	bsrl	%eax, %eax
	leal	1(%edx,%eax), %edx
L2679:
	cmpl	$24, %edx
	jg	L2674
L2678:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %edi
	testl	%eax, %eax
	je	L2680
	cmpl	$1, %eax
	jne	L2674
	movl	$5, %edx
	movl	%esi, %eax
	call	_oggpack_read
	addl	$1, %eax
	movl	%eax, -68(%ebp)
	je	L2674
	movl	4(%ebx), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2693
	movl	4(%ebx), %edx
	movl	%eax, 8(%ebx)
	xorl	%edi, %edi
	testl	%edx, %edx
	jle	L2686
L2694:
	subl	%edi, %edx
	movl	$32, %eax
	bsrl	%edx, %edx
	xorl	$31, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L2857
	cmpl	$32, -68(%ebp)
	jg	L2857
	movl	4(%ebx), %edx
	movl	%edx, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %eax
	jg	L2857
	testl	%eax, %eax
	jle	L2698
	movl	-68(%ebp), %ecx
	leal	-1(%eax), %edx
	subl	$1, %ecx
	sarl	%cl, %edx
	cmpl	$1, %edx
	jg	L2857
	movzbl	-68(%ebp), %ecx
	leal	(%eax,%edi), %edx
	.p2align 4
	.p2align 4
	.p2align 3
L2700:
	movl	8(%ebx), %eax
	movb	%cl, (%eax,%edi)
	addl	$1, %edi
	cmpl	%edx, %edi
	jne	L2700
	movl	4(%ebx), %edx
L2698:
	addl	$1, -68(%ebp)
	cmpl	%edi, %edx
	jg	L2694
L2686:
	movl	$4, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 12(%ebx)
	testl	%eax, %eax
	je	L2701
	subl	$1, %eax
	cmpl	$1, %eax
	ja	L2857
	movl	$32, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$32, %edx
	movl	%eax, 16(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$4, %edx
	movl	%eax, 20(%ebx)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$1, %edx
	addl	$1, %eax
	movl	%eax, 24(%ebx)
	movl	%eax, -68(%ebp)
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 28(%ebx)
	addl	$1, %eax
	je	L2857
	movl	12(%ebx), %eax
	cmpl	$1, %eax
	je	L2705
	xorl	%edi, %edi
	cmpl	$2, %eax
	jne	L2707
	movl	4(%ebx), %eax
	imull	(%ebx), %eax
	movl	%eax, %edi
L2707:
	movl	-68(%ebp), %eax
	movl	-36(%ebp), %ecx
	imull	%edi, %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -68(%ebp)
	leal	7(%ecx), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-24(%ebp), %edx
	addl	-40(%ebp), %eax
	subl	%eax, %edx
	cmpl	%edx, -68(%ebp)
	jg	L2857
	leal	0(,%edi,4), %eax
	movl	%eax, -68(%ebp)
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	pushl	%edx
	testl	%eax, %eax
	je	L2709
	movl	%eax, 32(%ebx)
	testl	%edi, %edi
	jle	L2862
	movl	%ebx, %eax
	movl	%edi, %ecx
	xorl	%ebx, %ebx
	movl	%eax, %edi
L2710:
	movl	32(%edi), %eax
	movl	24(%edi), %edx
	movl	%ecx, -76(%ebp)
	leal	(%eax,%ebx,4), %eax
	addl	$1, %ebx
	movl	%eax, -72(%ebp)
	movl	%esi, %eax
	call	_oggpack_read
	movl	-72(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-76(%ebp), %ecx
	cmpl	%ebx, %ecx
	jne	L2710
	movl	%edi, %ebx
L2712:
	movl	32(%ebx), %eax
	movl	-68(%ebp), %ecx
	cmpl	$-1, -4(%eax,%ecx)
	je	L2857
L2701:
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	%ebx, 1824(%ecx,%eax,4)
	addl	$1, %eax
	movl	%eax, -60(%ebp)
	cmpl	24(%ecx), %eax
	jl	L2715
	movl	$6, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %ebx
	testl	%eax, %eax
	js	L2658
	movl	-52(%ebp), %edi
	jmp	L2716
L2744:
	addl	$1, %edi
L2716:
	movl	$16, %edx
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	jne	L2658
	cmpl	%edi, %ebx
	jne	L2744
	movl	%eax, -60(%ebp)
	movl	$6, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-56(%ebp), %edi
	addl	$1, %eax
	movl	%eax, 16(%edi)
	testl	%eax, %eax
	jle	L2658
	xorl	%ebx, %ebx
L2717:
	movl	$16, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 800(%edi,%ebx,4)
	cmpl	$1, %eax
	ja	L2658
	movl	%esi, 4(%esp)
	movl	__floor_P(,%eax,4), %eax
	movl	-64(%ebp), %ecx
	movl	%ecx, (%esp)
	call	*4(%eax)
	movl	%eax, 1056(%edi,%ebx,4)
	testl	%eax, %eax
	je	L2658
	addl	$1, %ebx
	cmpl	16(%edi), %ebx
	jl	L2717
	movl	$6, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-56(%ebp), %edi
	addl	$1, %eax
	movl	%eax, 20(%edi)
	testl	%eax, %eax
	jle	L2658
	xorl	%ebx, %ebx
L2718:
	movl	$16, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 1312(%edi,%ebx,4)
	cmpl	$2, %eax
	ja	L2658
	movl	%esi, 4(%esp)
	movl	__residue_P(,%eax,4), %eax
	movl	-64(%ebp), %ecx
	movl	%ecx, (%esp)
	call	*4(%eax)
	movl	%eax, 1568(%edi,%ebx,4)
	testl	%eax, %eax
	je	L2658
	addl	$1, %ebx
	cmpl	20(%edi), %ebx
	jl	L2718
	movl	$6, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-56(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 12(%ecx)
	testl	%eax, %eax
	jle	L2658
L2733:
	movl	$16, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-60(%ebp), %ecx
	movl	%eax, %edi
	movl	-56(%ebp), %eax
	movl	%edi, 288(%eax,%ecx,4)
	testl	%edi, %edi
	jne	L2658
	movl	$3208, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L2719
	movl	$3208, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	L2853
	movl	-64(%ebp), %eax
	movl	$1, %edx
	movl	28(%eax), %eax
	movl	%eax, -68(%ebp)
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	js	L2853
	jne	L2863
	movl	$1, (%ebx)
L2723:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	js	L2853
	je	L2724
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, -76(%ebp)
	addl	$1, %eax
	movl	%eax, 1156(%ebx)
	testl	%eax, %eax
	jle	L2853
	movl	-64(%ebp), %eax
	movl	%ebx, -52(%ebp)
	movl	4(%eax), %eax
	jmp	L2727
L2745:
	addl	$1, %edi
L2727:
	subl	$1, %eax
	movl	%eax, %edx
	je	L2725
	bsrl	%eax, %eax
	movl	$32, %edx
	xorl	$31, %eax
	subl	%eax, %edx
L2725:
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %ebx
	movl	-52(%ebp), %eax
	movl	%ebx, 1160(%eax,%edi,4)
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, %edx
	movl	%eax, -72(%ebp)
	subl	$1, %edx
	je	L2726
	bsrl	%edx, %edx
	movl	%edx, %eax
	movl	$32, %edx
	xorl	$31, %eax
	subl	%eax, %edx
L2726:
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, %edx
	movl	-52(%ebp), %eax
	movl	%edx, 2184(%eax,%edi,4)
	movl	%ebx, %eax
	orl	%edx, %eax
	js	L2846
	cmpl	%edx, %ebx
	je	L2846
	movl	-64(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %ebx
	jge	L2846
	cmpl	%eax, %edx
	jge	L2846
	cmpl	%edi, -76(%ebp)
	jne	L2745
	movl	-52(%ebp), %ebx
L2724:
	movl	$2, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, -52(%ebp)
	testl	%eax, %eax
	jne	L2853
	movl	(%ebx), %eax
	cmpl	$1, %eax
	jle	L2728
	movl	-64(%ebp), %eax
	cmpl	$0, 4(%eax)
	jle	L2729
	xorl	%edi, %edi
	jmp	L2730
L2864:
	testl	%edx, %edx
	js	L2853
	movl	-64(%ebp), %ecx
	addl	$1, %edi
	cmpl	4(%ecx), %edi
	jge	L2728
L2730:
	movl	$4, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 4(%ebx,%edi,4)
	movl	%eax, %edx
	movl	(%ebx), %eax
	cmpl	%eax, %edx
	jl	L2864
L2853:
	movl	%ebx, %eax
L2720:
	movl	$3208, 8(%esp)
	movl	%eax, %edi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %ecx
	subl	$4, %esp
	movl	$0, 544(%eax,%ecx,4)
	jmp	L2658
L2680:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	4(%ebx), %ecx
	testl	%eax, %eax
	movl	%eax, -72(%ebp)
	leal	(%ecx,%ecx,4), %eax
	movl	%ecx, -68(%ebp)
	cmovne	%ecx, %eax
	movl	-36(%ebp), %ecx
	addl	$7, %eax
	leal	14(%ecx), %edx
	sarl	$3, %eax
	addl	$7, %ecx
	cmovns	%ecx, %edx
	movl	-24(%ebp), %ecx
	sarl	$3, %edx
	addl	-40(%ebp), %edx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jg	L2674
	movl	-68(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L2709
	movl	-72(%ebp), %ecx
	movl	%eax, 8(%ebx)
	movl	4(%ebx), %eax
	testl	%ecx, %ecx
	jne	L2684
	movl	-72(%ebp), %edi
	testl	%eax, %eax
	jg	L2685
	jmp	L2686
	.p2align 4,,10
	.p2align 3
L2692:
	movl	8(%ebx), %edx
	addl	$1, %eax
	movb	%al, (%edx,%edi)
	addl	$1, %edi
	cmpl	4(%ebx), %edi
	jge	L2686
L2685:
	movl	$5, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	jne	L2692
L2857:
L2690:
L2713:
	movl	36(%ebx), %eax
	testl	%eax, %eax
	jne	L2674
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %ecx
	movl	$0, 1824(%eax,%ecx,4)
	jmp	L2658
L2656:
	movl	$-129, -52(%ebp)
	jmp	L2647
L2660:
	movl	$1, %eax
	call	__Z13handle_memerri
L2671:
	movl	$40, %eax
	call	__Z13handle_memerri
L2664:
	movl	$4, %eax
	call	__Z13handle_memerri
L2861:
	testl	%eax, %eax
	jne	L2677
	jmp	L2678
L2739:
	movl	$-134, -52(%ebp)
	jmp	L2647
L2863:
	movl	$4, %edx
	movl	%esi, %eax
	call	_oggpack_read
	addl	$1, %eax
	movl	%eax, (%ebx)
	testl	%eax, %eax
	jg	L2723
	jmp	L2853
	.p2align 4,,10
	.p2align 3
L2684:
	testl	%eax, %eax
	jg	L2687
	jmp	L2686
	.p2align 4,,10
	.p2align 3
L2688:
	movl	8(%ebx), %eax
	movb	$0, (%eax,%edi)
L2691:
	addl	$1, %edi
	cmpl	4(%ebx), %edi
	jge	L2686
L2687:
	movl	$1, %edx
	movl	%esi, %eax
	call	_oggpack_read
	testl	%eax, %eax
	je	L2688
	movl	$5, %edx
	movl	%esi, %eax
	call	_oggpack_read
	cmpl	$-1, %eax
	je	L2857
	movl	8(%ebx), %edx
	addl	$1, %eax
	movb	%al, (%edx,%edi)
	jmp	L2691
L2728:
	testl	%eax, %eax
	jle	L2731
L2729:
	xorl	%edi, %edi
	jmp	L2732
L2865:
	testl	%eax, %eax
	js	L2853
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-68(%ebp), %ecx
	movl	%eax, 1092(%ebx,%edi,4)
	cmpl	20(%ecx), %eax
	jge	L2853
	testl	%eax, %eax
	js	L2853
	addl	$1, %edi
	cmpl	(%ebx), %edi
	jge	L2731
L2732:
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$8, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-68(%ebp), %ecx
	movl	%eax, 1028(%ebx,%edi,4)
	cmpl	16(%ecx), %eax
	jl	L2865
	jmp	L2853
	.p2align 4,,10
	.p2align 3
L2731:
	movl	-60(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	%ebx, 544(%ecx,%eax,4)
	addl	$1, %eax
	movl	%eax, -60(%ebp)
	cmpl	12(%ecx), %eax
	jl	L2733
	movl	$6, %edx
	movl	%esi, %eax
	call	_oggpack_read
	movl	-56(%ebp), %ecx
	addl	$1, %eax
	movl	%eax, 8(%ecx)
	testl	%eax, %eax
	jle	L2658
	xorl	%ecx, %ecx
	movl	%ecx, -60(%ebp)
	jmp	L2734
L2866:
	xorl	%eax, %eax
	movl	%ebx, %edi
	movl	$3, %ecx
	movl	$1, %edx
	movl	%eax, 12(%ebx)
	xorl	%eax, %eax
	rep stosl
	movl	-56(%ebp), %edi
	movl	-60(%ebp), %eax
	movl	%ebx, 32(%edi,%eax,4)
	movl	%esi, %eax
	call	_oggpack_read
	movl	$16, %edx
	movl	%eax, (%ebx)
	movl	-60(%ebp), %eax
	movl	32(%edi,%eax,4), %ebx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$16, %edx
	movl	%eax, 4(%ebx)
	movl	-60(%ebp), %eax
	movl	32(%edi,%eax,4), %ebx
	movl	%esi, %eax
	call	_oggpack_read
	movl	$8, %edx
	movl	%eax, 8(%ebx)
	movl	-60(%ebp), %eax
	movl	32(%edi,%eax,4), %ebx
	movl	%esi, %eax
	call	_oggpack_read
	movl	%eax, 12(%ebx)
	movl	-60(%ebp), %eax
	movl	32(%edi,%eax,4), %eax
	cmpl	$0, 4(%eax)
	jg	L2658
	cmpl	$0, 8(%eax)
	jg	L2658
	movl	-56(%ebp), %ecx
	movl	12(%eax), %eax
	cmpl	12(%ecx), %eax
	jge	L2658
	testl	%eax, %eax
	js	L2658
	addl	$1, -60(%ebp)
L2734:
	movl	-56(%ebp), %eax
	movl	-60(%ebp), %ecx
	cmpl	8(%eax), %ecx
	jge	L2856
	movl	$16, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	movl	%eax, %ebx
	pushl	%edx
	testl	%eax, %eax
	jne	L2866
	movl	$16, %eax
	call	__Z13handle_memerri
L2693:
	movl	%edi, %eax
	call	__Z13handle_memerri
L2719:
	movl	$3208, %eax
	call	__Z13handle_memerri
L2846:
	movl	-52(%ebp), %eax
	jmp	L2720
L2705:
	movl	(%ebx), %edi
	testl	%edi, %edi
	je	L2707
	movl	4(%ebx), %edx
	movl	%edi, %eax
	call	__book_maptype1_quantvals.isra.0
	movl	%eax, %edi
	jmp	L2707
L2862:
	je	L2701
	jmp	L2712
L2709:
	movl	-68(%ebp), %eax
	call	__Z13handle_memerri
	.cfi_endproc
LFE232:
	.p2align 4
	.globl	_mapping0_inverse.isra.0
	.def	_mapping0_inverse.isra.0;	.scl	2;	.type	32;	.endef
_mapping0_inverse.isra.0:
LFB240:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	movl	%eax, %esi
	pushl	%ebx
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$108, %esp
	movl	%eax, -68(%ebp)
	movl	64(%eax), %eax
	movl	4(%eax), %ecx
	movl	104(%eax), %eax
	movl	28(%ecx), %edi
	movl	%eax, -76(%ebp)
	movl	28(%esi), %eax
	movl	%ecx, -72(%ebp)
	movl	(%edi,%eax,4), %eax
	movl	%eax, 36(%esi)
	movl	4(%ecx), %ecx
	movl	%eax, -40(%ebp)
	leal	12(,%ecx,4), %edx
	movl	%edx, %eax
	call	___chkstk_ms
	subl	%eax, %esp
	movl	%edx, %eax
	leal	35(%esp), %esi
	andl	$-16, %esi
	movl	%esi, -32(%ebp)
	call	___chkstk_ms
	subl	%eax, %esp
	movl	%edx, %eax
	leal	35(%esp), %esi
	andl	$-16, %esi
	movl	%esi, -36(%ebp)
	call	___chkstk_ms
	subl	%eax, %esp
	movl	%edx, %eax
	leal	35(%esp), %esi
	andl	$-16, %esi
	movl	%esi, -28(%ebp)
	call	___chkstk_ms
	subl	%eax, %esp
	leal	35(%esp), %esi
	andl	$-16, %esi
	movl	%esi, -44(%ebp)
	testl	%ecx, %ecx
	jle	L2868
	movl	-40(%ebp), %eax
	xorl	%esi, %esi
	sall	$2, %eax
	shrl	%eax
	movl	%eax, -16(%ebp)
L2869:
	movl	4(%ebx,%esi,4), %eax
	movl	-76(%ebp), %ecx
	movl	1028(%ebx,%eax,4), %eax
	movl	48(%ecx), %ecx
	movl	800(%edi,%eax,4), %edx
	movl	(%ecx,%eax,4), %eax
	movl	__floor_P(,%edx,4), %edx
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	*20(%edx)
	movl	-44(%ebp), %ecx
	testl	%eax, %eax
	movl	%eax, (%ecx,%esi,4)
	movl	-28(%ebp), %ecx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%ecx,%esi,4)
	movl	-68(%ebp), %eax
	movl	-16(%ebp), %ecx
	movl	(%eax), %eax
	movl	(%eax,%esi,4), %eax
	movl	%ecx, 8(%esp)
	addl	$1, %esi
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-72(%ebp), %eax
	cmpl	4(%eax), %esi
	jl	L2869
L2868:
	movl	1156(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2870
	movl	%edi, -20(%ebp)
	leal	1160(%ebx), %eax
	leal	(%eax,%ecx,4), %esi
L2873:
	movl	-28(%ebp), %edi
	movl	(%eax), %edx
	leal	(%edi,%edx,4), %edx
	movl	%edx, -16(%ebp)
	movl	1024(%eax), %edx
	leal	(%edi,%edx,4), %edx
	movl	-16(%ebp), %edi
	movl	(%edi), %edi
	testl	%edi, %edi
	jne	L2871
	movl	(%edx), %edi
	testl	%edi, %edi
	je	L2872
L2871:
	movl	-16(%ebp), %edi
	movl	$1, (%edi)
	movl	$1, (%edx)
L2872:
	addl	$4, %eax
	cmpl	%eax, %esi
	jne	L2873
	movl	(%ebx), %eax
	movl	-20(%ebp), %edi
	testl	%eax, %eax
	jle	L2877
L2875:
	xorl	%esi, %esi
L2880:
	movl	-72(%ebp), %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	4(%ecx), %ecx
	testl	%ecx, %ecx
	jle	L2881
	movl	-72(%ebp), %ecx
	movl	%edi, -48(%ebp)
	movl	%edx, -20(%ebp)
	movl	%ecx, -16(%ebp)
	.p2align 4
	.p2align 3
L2879:
	cmpl	%esi, 4(%ebx,%eax,4)
	jne	L2878
	movl	-20(%ebp), %ecx
	xorl	%edx, %edx
	leal	0(,%ecx,4), %edi
	movl	%edi, -24(%ebp)
	movl	-28(%ebp), %edi
	movl	(%edi,%eax,4), %edi
	testl	%edi, %edi
	setne	%dl
	movl	%edx, %edi
	movl	-36(%ebp), %edx
	movl	%edi, (%edx,%ecx,4)
	movl	-68(%ebp), %edi
	addl	$1, %ecx
	movl	%ecx, -20(%ebp)
	movl	-24(%ebp), %edx
	movl	(%edi), %edi
	movl	-32(%ebp), %ecx
	movl	(%edi,%eax,4), %edi
	movl	%edi, (%ecx,%edx)
L2878:
	movl	-16(%ebp), %edi
	addl	$1, %eax
	cmpl	4(%edi), %eax
	jl	L2879
	movl	-48(%ebp), %edi
	movl	-20(%ebp), %edx
L2881:
	movl	1092(%ebx,%esi,4), %eax
	addl	$1, %esi
	movl	1312(%edi,%eax,4), %ecx
	movl	%edx, 16(%esp)
	movl	-36(%ebp), %edx
	movl	__residue_P(,%ecx,4), %ecx
	movl	%edx, 12(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-76(%ebp), %edx
	movl	52(%edx), %edx
	movl	(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	*28(%ecx)
	cmpl	(%ebx), %esi
	jl	L2880
	movl	1156(%ebx), %ecx
	testl	%ecx, %ecx
	jle	L2876
L2877:
	movl	-40(%ebp), %eax
	cmpl	$1, %eax
	jle	L2876
	shrl	%eax
	movl	%ebx, -20(%ebp)
	xorps	%xmm2, %xmm2
	movl	%eax, %esi
	leal	1156(%ebx), %eax
	movl	%eax, -16(%ebp)
	leal	(%eax,%ecx,4), %ebx
L2890:
	movl	-68(%ebp), %eax
	movl	(%eax), %edx
	movl	(%ebx), %eax
	movl	(%edx,%eax,4), %ecx
	movl	1024(%ebx), %eax
	movl	(%edx,%eax,4), %edx
	xorl	%eax, %eax
	jmp	L2889
L2944:
	comiss	%xmm2, %xmm1
	jbe	L2937
	subss	%xmm1, %xmm0
	movss	%xmm0, (%edx,%eax,4)
L2886:
	addl	$1, %eax
	cmpl	%esi, %eax
	jge	L2943
L2889:
	movss	(%ecx,%eax,4), %xmm0
	movss	(%edx,%eax,4), %xmm1
	comiss	%xmm2, %xmm0
	ja	L2944
	comiss	%xmm2, %xmm1
	jbe	L2938
	addss	%xmm1, %xmm0
	movss	%xmm0, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%esi, %eax
	jl	L2889
L2943:
	subl	$4, %ebx
	cmpl	%ebx, -16(%ebp)
	jne	L2890
	movl	-20(%ebp), %ebx
L2876:
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jle	L2867
	xorl	%esi, %esi
L2892:
	movl	-68(%ebp), %ecx
	movl	4(%ebx,%esi,4), %eax
	movl	(%ecx), %ecx
	movl	1028(%ebx,%eax,4), %eax
	movl	(%ecx,%esi,4), %ecx
	movl	800(%edi,%eax,4), %edx
	movl	%ecx, 12(%esp)
	movl	-44(%ebp), %ecx
	movl	__floor_P(,%edx,4), %edx
	movl	(%ecx,%esi,4), %ecx
	addl	$1, %esi
	movl	%ecx, 8(%esp)
	movl	-76(%ebp), %ecx
	movl	48(%ecx), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	-68(%ebp), %ecx
	movl	%ecx, (%esp)
	call	*24(%edx)
	movl	-72(%ebp), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %esi
	jl	L2892
	testl	%eax, %eax
	jle	L2867
	movl	$0, -80(%ebp)
L2908:
	movl	-68(%ebp), %edi
	movl	-80(%ebp), %esi
	movl	(%edi), %eax
	movl	(%eax,%esi,4), %esi
	movl	28(%edi), %eax
	movl	-76(%ebp), %edi
	movl	12(%edi,%eax,4), %eax
	movl	(%eax), %edi
	movl	(%edi), %ecx
	movl	%ecx, %ebx
	sarl	$2, %ecx
	sarl	%ebx
	leal	-28(,%ebx,4), %eax
	leal	(%ebx,%ecx), %edx
	movl	%ebx, -60(%ebp)
	leal	0(,%ecx,4), %ebx
	leal	(%esi,%edx,4), %edx
	movl	%eax, -16(%ebp)
	addl	%esi, %eax
	movl	%ebx, -84(%ebp)
	addl	8(%edi), %ebx
	movl	%ebx, %ecx
	movl	%edx, %ebx
	.p2align 4
	.p2align 3
L2893:
	movss	8(%eax), %xmm0
	movss	(%eax), %xmm1
	subl	$16, %ebx
	subl	$32, %eax
	mulss	8(%ecx), %xmm1
	xorps	LC9, %xmm0
	addl	$16, %ecx
	mulss	-4(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, (%ebx)
	movss	32(%eax), %xmm0
	movss	40(%eax), %xmm1
	mulss	-4(%ecx), %xmm0
	mulss	-8(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 4(%ebx)
	movss	56(%eax), %xmm0
	movss	48(%eax), %xmm1
	mulss	-16(%ecx), %xmm1
	xorps	LC9, %xmm0
	mulss	-12(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
	movss	48(%eax), %xmm0
	movss	56(%eax), %xmm1
	mulss	-12(%ecx), %xmm0
	mulss	-16(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 12(%ebx)
	cmpl	%esi, %eax
	jnb	L2893
	movl	-16(%ebp), %eax
	movl	-84(%ebp), %ecx
	movl	%edx, %ebx
	addl	8(%edi), %ecx
	leal	-4(%esi,%eax), %eax
	.p2align 4
	.p2align 3
L2894:
	subl	$16, %ecx
	movss	16(%eax), %xmm0
	movss	24(%eax), %xmm1
	subl	$32, %eax
	mulss	8(%ecx), %xmm1
	addl	$16, %ebx
	mulss	12(%ecx), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%ebx)
	movss	48(%eax), %xmm0
	movss	56(%eax), %xmm1
	mulss	8(%ecx), %xmm0
	mulss	12(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -12(%ebx)
	movss	32(%eax), %xmm0
	movss	40(%eax), %xmm1
	mulss	4(%ecx), %xmm0
	mulss	(%ecx), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%ebx)
	movss	32(%eax), %xmm0
	movss	40(%eax), %xmm1
	mulss	(%ecx), %xmm0
	mulss	4(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%ebx)
	cmpl	%esi, %eax
	jnb	L2894
	movl	-16(%ebp), %ebx
	movl	4(%edi), %ecx
	leal	28(%ebx), %eax
	movl	%ecx, -16(%ebp)
	movl	%eax, -88(%ebp)
	addl	%esi, %eax
	movl	%eax, -56(%ebp)
	cmpl	$6, %ecx
	jg	L2945
L2895:
	movl	-60(%ebp), %eax
	testl	%eax, %eax
	jle	L2902
	movl	-56(%ebp), %ecx
	movl	%esi, -16(%ebp)
	xorl	%ebx, %ebx
	movl	%eax, %esi
	movss	LC0, %xmm1
	.p2align 4
	.p2align 3
L2903:
	movss	120(%ecx), %xmm2
	movss	56(%ecx), %xmm4
	movl	%ecx, %eax
	addl	$32, %ebx
	movss	124(%ecx), %xmm0
	movss	60(%ecx), %xmm3
	movaps	%xmm2, %xmm5
	subss	%xmm4, %xmm2
	movss	48(%ecx), %xmm6
	addss	%xmm4, %xmm5
	movss	112(%ecx), %xmm4
	movss	%xmm2, 56(%ecx)
	movss	%xmm5, 120(%ecx)
	movaps	%xmm0, %xmm5
	subss	%xmm3, %xmm0
	addss	%xmm3, %xmm5
	movss	116(%ecx), %xmm3
	movss	%xmm0, 60(%ecx)
	movaps	%xmm3, %xmm2
	movaps	%xmm4, %xmm0
	addss	%xmm6, %xmm4
	movss	%xmm5, 124(%ecx)
	movss	52(%ecx), %xmm5
	subss	%xmm6, %xmm0
	movss	40(%ecx), %xmm6
	addss	%xmm5, %xmm3
	subss	%xmm5, %xmm2
	movss	%xmm4, 112(%ecx)
	movss	LC45, %xmm4
	movss	44(%ecx), %xmm5
	movss	%xmm3, 116(%ecx)
	mulss	%xmm2, %xmm4
	movss	LC44, %xmm3
	mulss	LC44, %xmm2
	mulss	%xmm0, %xmm3
	mulss	LC45, %xmm0
	subss	%xmm4, %xmm3
	addss	%xmm2, %xmm0
	movss	108(%ecx), %xmm2
	movss	%xmm3, 48(%ecx)
	movss	104(%ecx), %xmm3
	movaps	%xmm2, %xmm4
	addss	%xmm5, %xmm2
	movss	%xmm0, 52(%ecx)
	subss	%xmm5, %xmm4
	movss	36(%ecx), %xmm5
	movaps	%xmm3, %xmm0
	addss	%xmm6, %xmm3
	subss	%xmm6, %xmm0
	movss	%xmm2, 108(%ecx)
	movss	32(%ecx), %xmm6
	movss	%xmm3, 104(%ecx)
	movss	100(%ecx), %xmm3
	movaps	%xmm0, %xmm2
	addss	%xmm4, %xmm0
	subss	%xmm4, %xmm2
	movss	96(%ecx), %xmm4
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm2
	movss	%xmm0, 44(%ecx)
	movaps	%xmm3, %xmm0
	addss	%xmm5, %xmm3
	movss	%xmm2, 40(%ecx)
	movaps	%xmm4, %xmm2
	addss	%xmm6, %xmm4
	subss	%xmm5, %xmm0
	subss	%xmm6, %xmm2
	movss	%xmm4, 96(%ecx)
	movss	80(%ecx), %xmm6
	movss	LC44, %xmm4
	movss	%xmm3, 100(%ecx)
	movss	LC45, %xmm3
	mulss	%xmm0, %xmm4
	mulss	%xmm2, %xmm3
	mulss	LC45, %xmm0
	mulss	LC44, %xmm2
	subss	%xmm4, %xmm3
	movss	92(%ecx), %xmm4
	addss	%xmm2, %xmm0
	movss	28(%ecx), %xmm2
	movss	%xmm3, 32(%ecx)
	movss	24(%ecx), %xmm3
	movss	%xmm0, 36(%ecx)
	movss	88(%ecx), %xmm0
	movaps	%xmm0, %xmm5
	subss	%xmm3, %xmm0
	addss	%xmm3, %xmm5
	movss	20(%ecx), %xmm3
	movss	%xmm0, 28(%ecx)
	movaps	%xmm3, %xmm0
	movss	%xmm5, 88(%ecx)
	movaps	%xmm2, %xmm5
	subss	%xmm4, %xmm2
	addss	%xmm4, %xmm5
	movss	16(%ecx), %xmm4
	movss	%xmm2, 24(%ecx)
	movaps	%xmm4, %xmm2
	addss	%xmm6, %xmm4
	movss	%xmm5, 92(%ecx)
	movss	84(%ecx), %xmm5
	subss	%xmm6, %xmm2
	movss	72(%ecx), %xmm6
	addss	%xmm5, %xmm3
	subss	%xmm5, %xmm0
	movss	%xmm4, 80(%ecx)
	movss	LC45, %xmm4
	movss	76(%ecx), %xmm5
	mulss	%xmm2, %xmm4
	mulss	LC44, %xmm2
	movss	%xmm3, 84(%ecx)
	movss	LC44, %xmm3
	mulss	%xmm0, %xmm3
	mulss	LC45, %xmm0
	addss	%xmm4, %xmm3
	subss	%xmm2, %xmm0
	movss	12(%ecx), %xmm2
	movss	%xmm3, 16(%ecx)
	movss	8(%ecx), %xmm3
	movss	%xmm0, 20(%ecx)
	movaps	%xmm2, %xmm0
	addss	%xmm5, %xmm2
	movaps	%xmm3, %xmm4
	addss	%xmm6, %xmm3
	subss	%xmm5, %xmm0
	subss	%xmm6, %xmm4
	movss	%xmm3, 72(%ecx)
	movss	%xmm2, 76(%ecx)
	movaps	%xmm4, %xmm2
	movss	64(%ecx), %xmm6
	movss	68(%ecx), %xmm5
	addss	%xmm0, %xmm2
	subss	%xmm4, %xmm0
	movss	4(%ecx), %xmm3
	movss	(%ecx), %xmm4
	mulss	%xmm1, %xmm2
	mulss	%xmm1, %xmm0
	movss	%xmm2, 8(%ecx)
	movaps	%xmm4, %xmm2
	addss	%xmm6, %xmm4
	movss	%xmm0, 12(%ecx)
	movaps	%xmm3, %xmm0
	addss	%xmm5, %xmm3
	subss	%xmm6, %xmm2
	subss	%xmm5, %xmm0
	movss	%xmm4, 64(%ecx)
	movss	LC44, %xmm4
	movss	%xmm3, 68(%ecx)
	movss	LC45, %xmm3
	mulss	%xmm2, %xmm4
	mulss	%xmm0, %xmm3
	mulss	LC45, %xmm2
	mulss	LC44, %xmm0
	addss	%xmm4, %xmm3
	subss	%xmm2, %xmm0
	movss	%xmm3, (%ecx)
	movss	%xmm0, 4(%ecx)
	call	_mdct_butterfly_16
	leal	64(%ecx), %eax
	subl	$-128, %ecx
	call	_mdct_butterfly_16
	cmpl	%ebx, %esi
	movss	LC0, %xmm1
	jg	L2903
	movl	-16(%ebp), %esi
L2902:
	movl	(%edi), %ecx
	movl	12(%edi), %ebx
	movl	%esi, -24(%ebp)
	movl	%esi, -28(%ebp)
	movl	%ecx, %eax
	movl	%edi, -32(%ebp)
	sarl	%eax
	movl	%ebx, -16(%ebp)
	leal	(%esi,%eax,4), %eax
	movl	%edx, -36(%ebp)
	movl	%esi, %edx
	movl	%eax, -20(%ebp)
	movl	8(%edi), %eax
	leal	(%eax,%ecx,4), %ecx
	movl	-20(%ebp), %eax
	.p2align 4
	.p2align 3
L2904:
	movl	-16(%ebp), %esi
	movl	-20(%ebp), %ebx
	subl	$16, %eax
	addl	$16, %edx
	movss	(%ecx), %xmm3
	movss	4(%ecx), %xmm7
	addl	$16, %ecx
	movl	(%esi), %esi
	leal	(%ebx,%esi,4), %edi
	movl	-16(%ebp), %esi
	movss	4(%edi), %xmm1
	movss	(%edi), %xmm2
	movl	4(%esi), %esi
	movaps	%xmm1, %xmm4
	movaps	%xmm2, %xmm0
	leal	(%ebx,%esi,4), %esi
	movss	4(%esi), %xmm5
	movss	(%esi), %xmm6
	movl	-16(%ebp), %esi
	subss	%xmm5, %xmm4
	addss	%xmm6, %xmm0
	addss	%xmm5, %xmm1
	subss	%xmm6, %xmm2
	mulss	LC4, %xmm1
	mulss	LC4, %xmm2
	mulss	%xmm4, %xmm7
	mulss	%xmm0, %xmm3
	mulss	-16(%ecx), %xmm4
	mulss	-12(%ecx), %xmm0
	addss	%xmm7, %xmm3
	subss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	addss	%xmm1, %xmm4
	subss	%xmm3, %xmm1
	movss	%xmm4, -16(%edx)
	movss	%xmm1, 8(%eax)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm1, -12(%edx)
	movss	%xmm0, 12(%eax)
	movl	8(%esi), %esi
	movss	-8(%ecx), %xmm3
	movss	-4(%ecx), %xmm7
	leal	(%ebx,%esi,4), %edi
	movl	-16(%ebp), %esi
	movss	4(%edi), %xmm1
	movss	(%edi), %xmm2
	movl	12(%esi), %esi
	movaps	%xmm1, %xmm4
	movaps	%xmm2, %xmm0
	leal	(%ebx,%esi,4), %esi
	movss	4(%esi), %xmm5
	movss	(%esi), %xmm6
	subss	%xmm5, %xmm4
	addss	%xmm6, %xmm0
	addss	%xmm5, %xmm1
	subss	%xmm6, %xmm2
	mulss	LC4, %xmm1
	mulss	%xmm0, %xmm3
	mulss	%xmm4, %xmm7
	mulss	-4(%ecx), %xmm0
	mulss	-8(%ecx), %xmm4
	mulss	LC4, %xmm2
	addl	$16, -16(%ebp)
	addss	%xmm7, %xmm3
	subss	%xmm4, %xmm0
	movaps	%xmm3, %xmm4
	addss	%xmm1, %xmm4
	subss	%xmm3, %xmm1
	movss	%xmm4, -8(%edx)
	movss	%xmm1, (%eax)
	movaps	%xmm0, %xmm1
	subss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	movss	%xmm1, -4(%edx)
	movss	%xmm0, 4(%eax)
	cmpl	%eax, %edx
	jb	L2904
	movl	-32(%ebp), %edi
	movl	-36(%ebp), %edx
	movl	-28(%ebp), %esi
	movl	-88(%ebp), %ecx
	movl	%edx, %ebx
	addl	8(%edi), %ecx
	movl	%edx, %edi
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L2905:
	movss	(%eax), %xmm0
	movss	4(%eax), %xmm1
	subl	$16, %ebx
	addl	$32, %eax
	mulss	(%ecx), %xmm1
	addl	$16, %edi
	addl	$32, %ecx
	mulss	-28(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 12(%ebx)
	movss	-32(%eax), %xmm0
	movss	-28(%eax), %xmm1
	mulss	-32(%ecx), %xmm0
	mulss	-28(%ecx), %xmm1
	addss	%xmm1, %xmm0
	xorps	LC9, %xmm0
	movss	%xmm0, -16(%edi)
	movss	-24(%eax), %xmm0
	movss	-20(%eax), %xmm1
	mulss	-20(%ecx), %xmm0
	mulss	-24(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 8(%ebx)
	movss	-24(%eax), %xmm0
	movss	-20(%eax), %xmm1
	mulss	-24(%ecx), %xmm0
	mulss	-20(%ecx), %xmm1
	addss	%xmm1, %xmm0
	xorps	LC9, %xmm0
	movss	%xmm0, -12(%edi)
	movss	-16(%eax), %xmm0
	movss	-12(%eax), %xmm1
	mulss	-12(%ecx), %xmm0
	mulss	-16(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 4(%ebx)
	movss	-16(%eax), %xmm0
	movss	-12(%eax), %xmm1
	mulss	-16(%ecx), %xmm0
	mulss	-12(%ecx), %xmm1
	addss	%xmm1, %xmm0
	xorps	LC9, %xmm0
	movss	%xmm0, -8(%edi)
	movss	-8(%eax), %xmm0
	movss	-4(%eax), %xmm1
	mulss	-4(%ecx), %xmm0
	mulss	-8(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, (%ebx)
	movss	-8(%eax), %xmm0
	movss	-4(%eax), %xmm1
	mulss	-8(%ecx), %xmm0
	mulss	-4(%ecx), %xmm1
	addss	%xmm1, %xmm0
	xorps	LC9, %xmm0
	movss	%xmm0, -4(%edi)
	cmpl	%ebx, %eax
	jb	L2905
	addl	-84(%ebp), %esi
	movl	%edx, %ecx
	movl	%esi, %eax
	.p2align 4
	.p2align 3
L2906:
	movss	-4(%ecx), %xmm0
	subl	$16, %ecx
	addl	$16, %eax
	subl	$16, %esi
	movss	%xmm0, 12(%esi)
	xorps	LC9, %xmm0
	movss	%xmm0, -16(%eax)
	movss	8(%ecx), %xmm0
	movss	%xmm0, 8(%esi)
	xorps	LC9, %xmm0
	movss	%xmm0, -12(%eax)
	movss	4(%ecx), %xmm0
	movss	%xmm0, 4(%esi)
	xorps	LC9, %xmm0
	movss	%xmm0, -8(%eax)
	movss	(%ecx), %xmm0
	movss	%xmm0, (%esi)
	xorps	LC9, %xmm0
	movss	%xmm0, -4(%eax)
	cmpl	%ecx, %eax
	jb	L2906
	movl	-56(%ebp), %ecx
	movl	%edx, %eax
	.p2align 6
	.p2align 4
	.p2align 3
L2907:
	movss	12(%eax), %xmm0
	subl	$16, %edx
	addl	$16, %eax
	movss	%xmm0, (%edx)
	movss	-8(%eax), %xmm0
	movss	%xmm0, 4(%edx)
	movss	-12(%eax), %xmm0
	movss	%xmm0, 8(%edx)
	movss	-16(%eax), %xmm0
	movss	%xmm0, 12(%edx)
	cmpl	%edx, %ecx
	jb	L2907
	movl	-72(%ebp), %edi
	addl	$1, -80(%ebp)
	movl	-80(%ebp), %eax
	cmpl	4(%edi), %eax
	jl	L2908
L2867:
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
L2937:
	.cfi_restore_state
	movss	%xmm0, (%edx,%eax,4)
	addss	%xmm1, %xmm0
	movss	%xmm0, (%ecx,%eax,4)
	jmp	L2886
L2938:
	movss	%xmm0, (%edx,%eax,4)
	subss	%xmm1, %xmm0
	movss	%xmm0, (%ecx,%eax,4)
	jmp	L2886
L2945:
	leal	-4(%eax,%ebx), %ebx
	movl	8(%edi), %ecx
	movl	%esi, -24(%ebp)
	movl	%ebx, -20(%ebp)
	movl	-84(%ebp), %ebx
	movl	%ecx, -28(%ebp)
	movl	-56(%ebp), %esi
	leal	-32(%eax,%ebx), %eax
	movl	-20(%ebp), %ebx
L2896:
	movss	24(%eax), %xmm4
	movss	24(%ebx), %xmm3
	subl	$32, %eax
	subl	$32, %ebx
	movss	60(%ebx), %xmm2
	addl	$64, %ecx
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	60(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 56(%ebx)
	addss	60(%eax), %xmm2
	movss	%xmm2, 60(%ebx)
	movss	-60(%ecx), %xmm2
	movss	-64(%ecx), %xmm3
	movss	48(%eax), %xmm4
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 56(%eax)
	mulss	-60(%ecx), %xmm1
	mulss	-64(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 60(%eax)
	movss	48(%ebx), %xmm3
	movss	52(%ebx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	52(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 48(%ebx)
	addss	52(%eax), %xmm2
	movss	%xmm2, 52(%ebx)
	movss	-44(%ecx), %xmm2
	movss	-48(%ecx), %xmm3
	movss	40(%eax), %xmm4
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 48(%eax)
	mulss	-44(%ecx), %xmm1
	mulss	-48(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 52(%eax)
	movss	40(%ebx), %xmm3
	movss	44(%ebx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	44(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 40(%ebx)
	addss	44(%eax), %xmm2
	movss	%xmm2, 44(%ebx)
	movss	-28(%ecx), %xmm2
	movss	-32(%ecx), %xmm3
	movss	32(%eax), %xmm4
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 40(%eax)
	mulss	-28(%ecx), %xmm1
	mulss	-32(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 44(%eax)
	movss	32(%ebx), %xmm3
	movss	36(%ebx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	36(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 32(%ebx)
	addss	36(%eax), %xmm2
	movss	%xmm2, 36(%ebx)
	movss	-12(%ecx), %xmm2
	movss	-16(%ecx), %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	movss	%xmm2, 32(%eax)
	mulss	-16(%ecx), %xmm0
	mulss	-12(%ecx), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, 36(%eax)
	cmpl	%esi, %eax
	jnb	L2896
	movl	-16(%ebp), %eax
	movl	-24(%ebp), %esi
	cmpl	$7, %eax
	je	L2895
	subl	$6, %eax
	movl	%esi, -92(%ebp)
	movl	$1, %ebx
	movl	%eax, -64(%ebp)
	movl	%edi, -96(%ebp)
	movl	%edx, -100(%ebp)
	.p2align 4
	.p2align 3
L2897:
	movl	$1, %eax
	movl	%ebx, %ecx
	sall	%cl, %eax
	movl	%eax, -32(%ebp)
	testl	%eax, %eax
	jle	L2901
	movl	-60(%ebp), %edx
	movl	%ebx, %ecx
	movl	$0, -24(%ebp)
	movl	%ebx, -52(%ebp)
	sarl	%cl, %edx
	leal	-32(,%edx,4), %eax
	leal	0(,%edx,4), %edi
	movl	%eax, -36(%ebp)
	movl	%edx, %eax
	sarl	%eax
	movl	%edi, -44(%ebp)
	movl	-56(%ebp), %edi
	leal	-32(,%eax,4), %eax
	movl	%eax, -40(%ebp)
	movl	$4, %eax
	sall	%cl, %eax
	movl	-28(%ebp), %ecx
	movl	%edi, -16(%ebp)
	leal	0(,%eax,4), %esi
	movl	%eax, %edi
	leal	(%ecx,%eax,8), %eax
	sall	$4, %edi
	movl	%eax, -48(%ebp)
	.p2align 4
	.p2align 3
L2899:
	movl	-36(%ebp), %ebx
	movl	-16(%ebp), %eax
	movl	%edi, -20(%ebp)
	movl	-28(%ebp), %ecx
	leal	(%ebx,%eax), %edx
	movl	-40(%ebp), %ebx
	addl	%ebx, %eax
	movl	-48(%ebp), %ebx
	.p2align 4
	.p2align 3
L2898:
	movss	24(%eax), %xmm4
	movss	24(%edx), %xmm3
	subl	$32, %eax
	subl	$32, %edx
	movss	60(%edx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	60(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 56(%edx)
	addss	60(%eax), %xmm2
	movss	%xmm2, 60(%edx)
	movss	4(%ecx), %xmm2
	movss	(%ecx), %xmm3
	movss	48(%eax), %xmm4
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 56(%eax)
	mulss	4(%ecx), %xmm1
	mulss	(%ecx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 60(%eax)
	movss	48(%edx), %xmm3
	movss	52(%edx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	52(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 48(%edx)
	addss	52(%eax), %xmm2
	movss	%xmm2, 52(%edx)
	movss	4(%ecx,%esi), %xmm2
	movss	(%ecx,%esi), %xmm3
	movss	40(%eax), %xmm4
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm3, %xmm2
	movss	%xmm2, 48(%eax)
	mulss	4(%ecx,%esi), %xmm1
	mulss	(%ecx,%esi), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 52(%eax)
	movss	40(%edx), %xmm3
	movss	44(%edx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	44(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 40(%edx)
	addss	44(%eax), %xmm2
	movss	%xmm2, 44(%edx)
	movss	4(%ebx), %xmm2
	movss	(%ebx), %xmm3
	movss	32(%eax), %xmm4
	movl	-20(%ebp), %edi
	mulss	%xmm1, %xmm3
	mulss	%xmm0, %xmm2
	addl	%edi, %ecx
	addss	%xmm3, %xmm2
	movss	%xmm2, 40(%eax)
	mulss	4(%ebx), %xmm1
	mulss	(%ebx), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 44(%eax)
	movss	32(%edx), %xmm3
	movss	36(%edx), %xmm2
	movaps	%xmm3, %xmm1
	addss	%xmm4, %xmm3
	movaps	%xmm2, %xmm0
	subss	36(%eax), %xmm0
	subss	%xmm4, %xmm1
	movss	%xmm3, 32(%edx)
	addss	36(%eax), %xmm2
	movss	%xmm2, 36(%edx)
	movss	4(%ebx,%esi), %xmm2
	movss	(%ebx,%esi), %xmm3
	mulss	%xmm0, %xmm2
	mulss	%xmm1, %xmm3
	addss	%xmm3, %xmm2
	movss	%xmm2, 32(%eax)
	mulss	(%ebx,%esi), %xmm0
	mulss	4(%ebx,%esi), %xmm1
	addl	%edi, %ebx
	subss	%xmm1, %xmm0
	movss	%xmm0, 36(%eax)
	cmpl	-16(%ebp), %eax
	jnb	L2898
	addl	$1, -24(%ebp)
	movl	-44(%ebp), %ecx
	movl	-20(%ebp), %edi
	addl	%ecx, -16(%ebp)
	movl	-24(%ebp), %eax
	cmpl	-32(%ebp), %eax
	jne	L2899
	movl	-52(%ebp), %ebx
L2901:
	addl	$1, %ebx
	cmpl	-64(%ebp), %ebx
	jne	L2897
	movl	-92(%ebp), %esi
	movl	-96(%ebp), %edi
	movl	-100(%ebp), %edx
	jmp	L2895
L2870:
	movl	(%ebx), %eax
	testl	%eax, %eax
	jg	L2875
	jmp	L2876
	.cfi_endproc
LFE240:
	.p2align 4
	.globl	__seek_helper.lto_priv.0
	.def	__seek_helper.lto_priv.0;	.scl	2;	.type	32;	.endef
__seek_helper.lto_priv.0:
LFB248:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	%esi, -8(%ebp)
	.cfi_offset 6, -16
	movl	(%eax), %esi
	testl	%esi, %esi
	je	L2951
	movl	%ebx, -12(%ebp)
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	movl	%edi, -4(%ebp)
	.cfi_offset 7, -12
	movl	8(%eax), %ecx
	movl	12(%eax), %edi
	xorl	%edx, %ecx
	xorl	%ebx, %edi
	orl	%edi, %ecx
	je	L2948
	movl	708(%eax), %ecx
	testl	%ecx, %ecx
	je	L2950
	movl	$0, 12(%esp)
	movl	%eax, %edi
	movl	%edx, 4(%esp)
	movl	%edx, 16(%esp)
	movl	%ebx, 8(%esp)
	movl	%esi, (%esp)
	call	*%ecx
	cmpl	$-1, %eax
	je	L2950
	movl	16(%esp), %edx
	movl	28(%edi), %eax
	movl	%ebx, 12(%edi)
	movl	%edx, 8(%edi)
	testl	%eax, %eax
	js	L2948
	movl	$0, 48(%edi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%edi)
L2948:
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-4(%ebp), %edi
	.cfi_restore 7
	xorl	%eax, %eax
L2946:
	movl	-8(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
L2950:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	-12(%ebp), %ebx
	.cfi_restore 3
	movl	-4(%ebp), %edi
	.cfi_restore 7
	movl	$-128, %eax
	jmp	L2946
L2951:
	movl	$-129, %eax
	jmp	L2946
	.cfi_endproc
LFE248:
	.p2align 4
	.globl	__get_next_page.lto_priv.0
	.def	__get_next_page.lto_priv.0;	.scl	2;	.type	32;	.endef
__get_next_page.lto_priv.0:
LFB249:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%ecx, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	andl	$-8, %esp
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, 24(%esp)
	movl	%ecx, %eax
	cmpl	24(%esp), %ecx
	movl	%edx, 28(%esp)
	sbbl	28(%esp), %eax
	jge	L2957
	movl	24(%esp), %eax
	addl	8(%ebx), %eax
	movl	28(%esp), %edx
	adcl	12(%ebx), %edx
	cmpl	%eax, %ecx
	movl	%eax, 16(%esp)
	sbbl	%edx, %ecx
	movl	%edx, 20(%esp)
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	jge	L2957
	leal	24(%ebx), %esi
	.p2align 4
	.p2align 3
L2958:
	movl	12(%ebx), %ecx
	movl	16(%esp), %edx
	cmpl	%edx, 8(%ebx)
	movl	%ecx, 24(%esp)
	movl	20(%esp), %ecx
	movl	%ecx, %eax
	movl	24(%esp), %ecx
	sbbl	%eax, %ecx
	jge	L2968
	movl	%edi, %edx
	movl	%esi, %eax
	call	_ogg_sync_pageseek
	testl	%eax, %eax
	js	L2987
	jne	L2984
	movl	__imp___errno, %eax
	movl	%eax, 24(%esp)
	call	*__imp___errno
	movl	$0, (%eax)
	movl	704(%ebx), %ecx
	testl	%ecx, %ecx
	je	L2976
	movl	(%ebx), %edx
	testl	%edx, %edx
	je	L2986
	movl	$2048, 4(%esp)
	movl	%esi, (%esp)
	call	_ogg_sync_buffer
	movl	(%ebx), %edx
	movl	$2048, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	*704(%ebx)
	movl	%eax, %edx
	testl	%eax, %eax
	jle	L2965
	movl	28(%ebx), %edx
	testl	%edx, %edx
	js	L2958
	addl	32(%ebx), %eax
	cmpl	%eax, %edx
	jl	L2958
	movl	%eax, 32(%ebx)
	jmp	L2958
	.p2align 4,,10
	.p2align 3
L2975:
	call	*24(%esp)
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L2976
L2986:
	movl	$-2, %esi
	movl	$-1, %edi
L2956:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	movl	%edi, %edx
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
L2987:
	.cfi_restore_state
	cltd
	subl	%eax, 8(%ebx)
	sbbl	%edx, 12(%ebx)
	jmp	L2958
	.p2align 4,,10
	.p2align 3
L2965:
	testl	%edx, %edx
	je	L2975
L2976:
	leal	-12(%ebp), %esp
	movl	$-128, %esi
	movl	$-1, %edi
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
	movl	%edi, %edx
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L2967:
	.cfi_restore_state
	cltd
	subl	%eax, 8(%ebx)
	sbbl	%edx, 12(%ebx)
L2959:
	movl	%edi, %edx
	leal	24(%ebx), %eax
	call	_ogg_sync_pageseek
	testl	%eax, %eax
	js	L2967
	movl	%eax, %edx
	jne	L2962
	.p2align 4
	.p2align 3
L2968:
	movl	$-1, %esi
	movl	%esi, %edi
	jmp	L2956
	.p2align 4,,10
	.p2align 3
L2957:
	movl	24(%esp), %edx
	movl	28(%esp), %ecx
	movl	%edx, %eax
	orl	%ecx, %eax
	je	L2959
	leal	24(%ebx), %esi
	.p2align 4
	.p2align 3
L2966:
	movl	%edi, %edx
	movl	%esi, %eax
	call	_ogg_sync_pageseek
	testl	%eax, %eax
	js	L2988
L2960:
	jne	L2984
	movl	__imp___errno, %eax
	movl	%eax, 24(%esp)
	call	*__imp___errno
	movl	$0, (%eax)
	movl	704(%ebx), %eax
	testl	%eax, %eax
	je	L2976
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	L2986
	movl	$2048, 4(%esp)
	movl	%esi, (%esp)
	call	_ogg_sync_buffer
	movl	(%ebx), %edx
	movl	$2048, 8(%esp)
	movl	$1, 4(%esp)
	movl	%edx, 12(%esp)
	movl	%eax, (%esp)
	call	*704(%ebx)
	movl	%eax, %edx
	testl	%eax, %eax
	jle	L2965
	movl	28(%ebx), %edx
	testl	%edx, %edx
	js	L2966
	addl	32(%ebx), %eax
	cmpl	%eax, %edx
	jl	L2966
	movl	%eax, 32(%ebx)
	movl	%edi, %edx
	movl	%esi, %eax
	call	_ogg_sync_pageseek
	testl	%eax, %eax
	jns	L2960
L2988:
	cltd
	subl	%eax, 8(%ebx)
	sbbl	%edx, 12(%ebx)
	jmp	L2966
	.p2align 4,,10
	.p2align 3
L2984:
	movl	%eax, %edx
L2962:
	movl	8(%ebx), %esi
	movl	12(%ebx), %edi
	movl	%edx, %eax
	cltd
	addl	%esi, %eax
	adcl	%edi, %edx
	movl	%eax, 8(%ebx)
	movl	%edx, 12(%ebx)
	jmp	L2956
	.cfi_endproc
LFE249:
	.p2align 4
	.globl	__get_prev_page_serial.lto_priv.0
	.def	__get_prev_page_serial.lto_priv.0;	.scl	2;	.type	32;	.endef
__get_prev_page_serial.lto_priv.0:
LFB251:
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
	movl	%eax, 68(%esp)
	movl	%edx, 56(%esp)
	movl	%ecx, 60(%esp)
	movl	%edx, 8(%esp)
	movl	%ecx, 12(%esp)
	movl	$-1, 48(%esp)
	movl	$-1, 52(%esp)
	movl	$-1, 24(%esp)
	movl	$-1, 28(%esp)
	movl	$-1, 40(%esp)
	movl	$-1, 36(%esp)
L3004:
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	addl	$-65536, %ebx
	adcl	$-1, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%esi, %edi
	cmpl	%edx, %ebx
	movl	%esi, 20(%esp)
	sbbl	%eax, %edi
	cmovge	20(%esp), %eax
	cmovge	%ebx, %edx
	movl	%eax, 20(%esp)
	movl	68(%esp), %eax
	movl	%edx, 16(%esp)
	movl	20(%esp), %ecx
	movl	16(%esp), %edx
	call	__seek_helper.lto_priv.0
	movl	%eax, 72(%esp)
	testl	%eax, %eax
	jne	L3026
	movl	68(%esp), %edi
	movl	56(%esp), %esi
	movl	8(%edi), %ecx
	movl	12(%edi), %ebx
	movl	60(%esp), %edi
	cmpl	%esi, %ecx
	movl	%ebx, %edx
	sbbl	%edi, %edx
	jge	L2992
	movl	$-1, %esi
	movl	%esi, 72(%esp)
	movl	%esi, 76(%esp)
	.p2align 4
	.p2align 3
L2998:
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	%eax, 64(%esp)
	movl	56(%esp), %eax
	movl	%edx, 44(%esp)
	movl	60(%esp), %edx
	subl	%ecx, %eax
	sbbl	%ebx, %edx
	movl	%eax, (%esp)
	movl	68(%esp), %eax
	movl	%edx, 4(%esp)
	leal	80(%esp), %edx
	call	__get_next_page.lto_priv.0
	movl	%eax, 72(%esp)
	movl	%eax, %ebx
	movl	%edx, %esi
	xorl	$-128, %eax
	movl	%edx, 76(%esp)
	notl	%edx
	orl	%edx, %eax
	je	L3022
	testl	%esi, %esi
	js	L2993
	movl	80(%esp), %eax
	movl	14(%eax), %ecx
	movl	%ecx, %edi
	movl	%ecx, 24(%esp)
	sarl	$31, %edi
	movl	%edi, 28(%esp)
	call	_ogg_page_granulepos.isra.0
	movl	%eax, 48(%esp)
	movl	16(%ebp), %eax
	movl	%edx, 52(%esp)
	cmpl	%ecx, (%eax)
	jne	L2994
	movl	20(%ebp), %edi
	movl	48(%esp), %eax
	movl	%ebx, 40(%esp)
	movl	52(%esp), %edx
	movl	%esi, 36(%esp)
	movl	%eax, (%edi)
	movl	%edx, 4(%edi)
L2994:
	movl	8(%ebp), %ebx
	testl	%ebx, %ebx
	je	L2995
	movl	12(%ebp), %edx
	testl	%edx, %edx
	je	L2995
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	72(%esp), %esi
	movl	76(%esp), %edi
	jmp	L2997
	.p2align 4
	.p2align 4,,10
	.p2align 3
L3028:
	addl	$4, %eax
	subl	$1, %edx
	je	L3027
L2997:
	cmpl	(%eax), %ecx
	jne	L3028
	movl	%esi, 72(%esp)
	movl	%edi, 76(%esp)
L2996:
	movl	68(%esp), %eax
	movl	60(%esp), %edx
	movl	8(%eax), %ecx
	movl	12(%eax), %ebx
	movl	56(%esp), %eax
	movl	%ebx, %edi
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	jl	L2998
	movl	$65536, %eax
	cmpl	8(%esp), %eax
	movl	$0, %eax
	sbbl	12(%esp), %eax
	movl	72(%esp), %esi
	movl	76(%esp), %edi
	jl	L3005
	testl	%ebx, %ebx
	jns	L3005
L3002:
	movl	$-137, %esi
	movl	$-1, %edi
L2989:
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	movl	%edi, %edx
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
L3027:
	.cfi_restore_state
	movl	%esi, 72(%esp)
	movl	%edi, 76(%esp)
L2995:
	movl	$-1, 40(%esp)
	movl	$-1, 36(%esp)
	jmp	L2996
L3022:
	movl	72(%esp), %esi
	movl	76(%esp), %edi
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	movl	%esi, %eax
	movl	%edi, %edx
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
L2993:
	.cfi_restore_state
	movl	8(%esp), %ebx
	movl	12(%esp), %esi
	movl	$65536, %eax
	movl	20(%esp), %edx
	cmpl	%ebx, %eax
	movl	$0, %eax
	sbbl	%esi, %eax
	movl	16(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	jge	L3029
L3001:
	movl	64(%esp), %eax
	andl	44(%esp), %eax
	cmpl	$-1, %eax
	je	L3004
	movl	40(%esp), %esi
	movl	36(%esp), %edi
	jmp	L3003
	.p2align 4,,10
	.p2align 3
L3029:
	movl	68(%esp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	js	L3002
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	jmp	L3001
L2992:
	movl	12(%esp), %edi
	movl	8(%esp), %esi
	movl	$65536, %edx
	movl	%edi, %eax
	movl	72(%esp), %edi
	cmpl	%esi, %edx
	movl	20(%esp), %edx
	sbbl	%eax, %edi
	movl	16(%esp), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	jl	L3004
	testl	%ebx, %ebx
	js	L3002
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	jmp	L3004
L3005:
	movl	%esi, 64(%esp)
	movl	40(%esp), %esi
	movl	%edi, 44(%esp)
	movl	36(%esp), %edi
L3003:
	movl	40(%esp), %eax
	andl	36(%esp), %eax
	cmpl	$-1, %eax
	jne	L2989
	movl	16(%ebp), %eax
	movl	24(%esp), %edi
	movl	52(%esp), %edx
	movl	64(%esp), %esi
	movl	%edi, (%eax)
	movl	20(%ebp), %edi
	movl	48(%esp), %eax
	movl	%edx, 4(%edi)
	movl	%eax, (%edi)
	movl	44(%esp), %edi
	jmp	L2989
L3026:
	movl	%eax, %edi
	movl	%eax, %esi
	sarl	$31, %edi
	jmp	L2989
	.cfi_endproc
LFE251:
	.p2align 4
	.globl	__fetch_headers.lto_priv.0
	.def	__fetch_headers.lto_priv.0;	.scl	2;	.type	32;	.endef
__fetch_headers.lto_priv.0:
LFB253:
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
	movl	%edi, %ebx
	movl	%eax, %edi
	subl	$120, %esp
	movl	(%ebx), %eax
	movl	%edx, -112(%ebp)
	movl	%ecx, -116(%ebp)
	movl	%eax, -104(%ebp)
	movl	4(%ebx), %eax
	movl	%eax, -108(%ebp)
	movl	8(%ebx), %eax
	movl	%eax, -100(%ebp)
	testl	%eax, %eax
	je	L3095
L3031:
	movl	-112(%ebp), %esi
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	$0, 24(%esi)
	movl	$0, 28(%esi)
	movl	$3664, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	movl	%eax, %ebx
	testl	%eax, %eax
	je	L3033
	movl	$3664, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
	movl	-116(%ebp), %eax
	movl	%ebx, 28(%esi)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	-100(%ebp), %eax
	movl	$2, 88(%edi)
	movl	(%eax), %eax
	testb	$2, 5(%eax)
	je	L3035
	leal	120(%edi), %ebx
	movl	%ebx, -120(%ebp)
	.p2align 4
	.p2align 3
L3034:
	movl	-104(%ebp), %ebx
	testl	%ebx, %ebx
	je	L3036
	movl	-108(%ebp), %ecx
	movl	(%ebx), %esi
	movl	14(%eax), %ebx
	movl	(%ecx), %ecx
	testl	%esi, %esi
	je	L3037
	testl	%ecx, %ecx
	je	L3037
	movl	%ecx, %edx
	movl	%esi, %eax
	jmp	L3039
	.p2align 4
	.p2align 4,,10
	.p2align 3
L3096:
	addl	$4, %eax
	subl	$1, %edx
	je	L3037
L3039:
	cmpl	(%eax), %ebx
	jne	L3096
	movl	%esi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	movl	-104(%ebp), %eax
	subl	$4, %esp
	movl	$0, (%eax)
	movl	-108(%ebp), %eax
	movl	$0, (%eax)
L3040:
	movl	$-133, %edx
	jmp	L3049
	.p2align 4,,10
	.p2align 3
L3037:
	movl	-108(%ebp), %eax
	leal	1(%ecx), %esi
	movl	%esi, (%eax)
	movl	-104(%ebp), %eax
	movl	_g_sm_heap, %ecx
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L3041
	sall	$2, %esi
	movl	%eax, (%esp)
	movl	%esi, 4(%esp)
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L3042
	testl	%esi, %esi
	jne	L3097
L3042:
	movl	-104(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	-108(%ebp), %ecx
	movl	(%ecx), %edx
	movl	%ebx, -4(%eax,%edx,4)
L3036:
	cmpl	$2, 88(%edi)
	jg	L3043
	movl	120(%edi), %eax
	testl	%eax, %eax
	je	L3044
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	14(%eax), %eax
	movl	$0, 128(%edi)
	movl	$0, 132(%edi)
	movl	$0, 148(%edi)
	movl	$0, 152(%edi)
	movl	$0, 156(%edi)
	movl	$0, 444(%edi)
	movl	$0, 448(%edi)
	movl	$0, 452(%edi)
	movl	$-1, 460(%edi)
	movl	$0, 464(%edi)
	movl	$0, 468(%edi)
	movl	$0, 472(%edi)
	movl	$0, 476(%edi)
	movl	%eax, 456(%edi)
L3044:
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-120(%ebp), %esi
	movl	%esi, (%esp)
	call	_ogg_stream_pagein
	movl	120(%edi), %eax
	testl	%eax, %eax
	je	L3043
	movl	$1, %ecx
	leal	-48(%ebp), %edx
	movl	%esi, %eax
	call	__packetout.lto_priv.0
	cmpl	$1, %eax
	je	L3098
L3043:
	movl	$65536, (%esp)
	movl	%edi, %eax
	movl	$0, 4(%esp)
	movl	-100(%ebp), %esi
	movl	%esi, %edx
	call	__get_next_page.lto_priv.0
	movl	%edx, %ecx
	xorl	$-128, %eax
	notl	%ecx
	orl	%ecx, %eax
	je	L3061
	testl	%edx, %edx
	js	L3035
	movl	88(%edi), %edx
	movl	(%esi), %eax
	cmpl	$3, %edx
	je	L3099
L3050:
	testb	$2, 5(%eax)
	jne	L3034
	jmp	L3051
	.p2align 4,,10
	.p2align 3
L3099:
	movl	14(%eax), %ecx
	cmpl	%ecx, 456(%edi)
	jne	L3050
	movl	-100(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	120(%edi), %eax
	movl	%eax, (%esp)
	call	_ogg_stream_pagein
	movl	88(%edi), %edx
L3051:
	cmpl	$3, %edx
	jne	L3035
	movl	$0, -104(%ebp)
	leal	120(%edi), %esi
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
L3054:
	movl	120(%edi), %edx
	testl	%edx, %edx
	je	L3089
	movl	$1, %ecx
	leal	-48(%ebp), %edx
	movl	%esi, %eax
	call	__packetout.lto_priv.0
	testl	%eax, %eax
	je	L3089
	cmpl	$-1, %eax
	je	L3040
	movl	-116(%ebp), %edx
	movl	-112(%ebp), %eax
	leal	-48(%ebp), %ecx
	call	_vorbis_synthesis_headerin
	testl	%eax, %eax
	jne	L3091
	addl	$1, %ebx
	cmpl	$2, %ebx
	jne	L3054
	movl	%eax, %edx
	jmp	L3030
	.p2align 4,,10
	.p2align 3
L3041:
	movl	$4, (%esp)
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	jne	L3042
	movl	$4, %eax
	call	__Z13handle_memerri
	.p2align 4,,10
	.p2align 3
L3098:
	movss	-48(%ebp), %xmm0
	movl	-44(%ebp), %eax
	movl	$0, -72(%ebp)
	movl	-40(%ebp), %ebx
	movl	$0, -68(%ebp)
	unpcklps	%xmm0, %xmm0
	movl	%eax, -56(%ebp)
	movlps	%xmm0, -64(%ebp)
	testl	%ebx, %ebx
	je	L3043
	movl	$8, %edx
	leal	-72(%ebp), %eax
	call	_oggpack_read
	cmpl	$1, %eax
	jne	L3043
	xorl	%ecx, %ecx
	movl	$0, -94(%ebp)
	leal	-94(%ebp), %esi
	leal	-88(%ebp), %ebx
	movw	%cx, -90(%ebp)
	.p2align 4
	.p2align 3
L3046:
	movl	$8, %edx
	leal	-72(%ebp), %eax
	addl	$1, %esi
	call	_oggpack_read
	movb	%al, -1(%esi)
	cmpl	%ebx, %esi
	jne	L3046
	cmpl	$1651666806, -94(%ebp)
	jne	L3043
	cmpw	$29545, -90(%ebp)
	jne	L3043
	movl	-116(%ebp), %edx
	movl	-112(%ebp), %eax
	movl	$3, 88(%edi)
	leal	-48(%ebp), %ecx
	call	_vorbis_synthesis_headerin
	testl	%eax, %eax
	je	L3043
	jmp	L3040
	.p2align 4,,10
	.p2align 3
L3095:
	movl	$65536, (%esp)
	leal	-88(%ebp), %ebx
	movl	%edi, %eax
	movl	$0, 4(%esp)
	movl	%ebx, %edx
	call	__get_next_page.lto_priv.0
	movl	%edx, %ecx
	xorl	$-128, %eax
	notl	%ecx
	orl	%ecx, %eax
	je	L3059
	testl	%edx, %edx
	js	L3060
	movl	%ebx, -100(%ebp)
	jmp	L3031
	.p2align 4,,10
	.p2align 3
L3097:
	movl	%esi, %eax
	call	__Z13handle_memerri
L3035:
	movl	$-132, %edx
L3049:
	movl	-112(%ebp), %eax
	movl	%edx, -100(%ebp)
	call	_vorbis_info_clear
	movl	-116(%ebp), %eax
	call	_vorbis_comment_clear
	movl	$2, 88(%edi)
	movl	-100(%ebp), %edx
L3030:
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
L3061:
	.cfi_restore_state
	movl	$-128, %edx
	jmp	L3049
L3033:
	movl	$3664, %eax
	call	__Z13handle_memerri
L3089:
	movl	%edi, %eax
	movl	%ebx, %edi
	movl	%eax, %ebx
	.p2align 4
	.p2align 3
L3058:
	movl	$65536, (%esp)
	movl	%ebx, %eax
	movl	$0, 4(%esp)
	movl	-100(%ebp), %edx
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	js	L3093
	movl	-100(%ebp), %eax
	movl	(%eax), %eax
	movl	14(%eax), %ecx
	cmpl	%ecx, 456(%ebx)
	je	L3100
	testb	$2, 5(%eax)
	je	L3058
	movl	-104(%ebp), %eax
	testl	%eax, %eax
	jne	L3093
	movl	$1, -104(%ebp)
	jmp	L3058
L3091:
	movl	%eax, %edx
	jmp	L3049
L3093:
	movl	%ebx, %edi
	jmp	L3040
L3100:
	movl	%ebx, %eax
	movl	%edi, %ebx
	movl	%eax, %edi
	movl	-100(%ebp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_ogg_stream_pagein
	cmpl	$1, %ebx
	jle	L3054
	xorl	%edx, %edx
	jmp	L3030
L3059:
	movl	$-128, %edx
	jmp	L3030
L3060:
	movl	$-132, %edx
	jmp	L3030
	.cfi_endproc
LFE253:
	.p2align 4
	.globl	__initial_pcmoffset.lto_priv.0
	.def	__initial_pcmoffset.lto_priv.0;	.scl	2;	.type	32;	.endef
__initial_pcmoffset.lto_priv.0:
LFB261:
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
	.cfi_offset 6, -16
	leal	120(%edi), %esi
	pushl	%ebx
	andl	$-8, %esp
	subl	$80, %esp
	.cfi_offset 3, -20
	movl	456(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 28(%esp)
	movl	$-1, 24(%esp)
	movl	$0, 16(%esp)
	movl	$0, 20(%esp)
	.p2align 4
	.p2align 3
L3102:
	movl	$-1, (%esp)
	leal	32(%esp), %edx
	movl	%edi, %eax
	movl	$-1, 4(%esp)
	call	__get_next_page.lto_priv.0
	testl	%edx, %edx
	js	L3105
	movl	32(%esp), %ebx
	testb	$2, 5(%ebx)
	jne	L3105
	movl	28(%esp), %eax
	cmpl	14(%ebx), %eax
	jne	L3102
	leal	32(%esp), %eax
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_ogg_stream_pagein
	movl	120(%edi), %eax
	testl	%eax, %eax
	je	L3107
	.p2align 4
	.p2align 3
L3108:
	movl	$1, %ecx
	leal	48(%esp), %edx
	movl	%esi, %eax
	call	__packetout.lto_priv.0
	testl	%eax, %eax
	je	L3107
	cmpl	$1, %eax
	jne	L3108
	movl	12(%esp), %eax
	movl	52(%esp), %ecx
	movl	48(%esp), %edx
	movl	28(%eax), %eax
	call	_vorbis_packet_blocksize.isra.0
	movl	%eax, %ecx
	testl	%eax, %eax
	js	L3108
	movl	24(%esp), %eax
	cmpl	$-1, %eax
	je	L3111
	addl	%ecx, %eax
	movl	%ecx, 24(%esp)
	sarl	$2, %eax
	cltd
	addl	%eax, 16(%esp)
	adcl	%edx, 20(%esp)
	jmp	L3108
	.p2align 4,,10
	.p2align 3
L3107:
	movl	%ebx, %eax
	call	_ogg_page_granulepos.isra.0
	movl	%eax, %ecx
	andl	%edx, %ecx
	cmpl	$-1, %ecx
	je	L3102
	subl	16(%esp), %eax
	sbbl	20(%esp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
L3105:
	movl	20(%esp), %ebx
	movl	16(%esp), %ecx
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%ebx, %edi
	cmpl	%eax, %ecx
	sbbl	%edx, %edi
	cmovge	%ebx, %edx
	cmovge	%ecx, %eax
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
L3111:
	.cfi_restore_state
	movl	%ecx, 24(%esp)
	jmp	L3108
	.cfi_endproc
LFE261:
	.p2align 4
	.globl	__bisect_forward_serialno.lto_priv.0
	.def	__bisect_forward_serialno.lto_priv.0;	.scl	2;	.type	32;	.endef
__bisect_forward_serialno.lto_priv.0:
LFB262:
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
	subl	$204, %esp
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	movl	28(%edi), %esi
	movl	32(%edi), %ebx
	movl	%eax, -104(%ebp)
	movl	(%edi), %eax
	movl	%edx, -128(%ebp)
	movl	4(%edi), %edx
	movl	%ecx, -124(%ebp)
	movl	%eax, -120(%ebp)
	movl	8(%edi), %eax
	movl	%edx, -116(%ebp)
	movl	%eax, -156(%ebp)
	movl	12(%edi), %eax
	movl	%esi, -132(%ebp)
	movl	%eax, -160(%ebp)
	movl	36(%edi), %eax
	movl	%ebx, -144(%ebp)
	movl	%eax, -168(%ebp)
	movl	16(%edi), %eax
	movl	24(%edi), %ecx
	movl	$-1, -88(%ebp)
	movl	%eax, -112(%ebp)
	movl	20(%edi), %eax
	movl	$-1, -84(%ebp)
	movl	%eax, -108(%ebp)
	movl	-104(%ebp), %eax
	movl	%ecx, -172(%ebp)
	movl	456(%eax), %eax
	movl	%eax, -164(%ebp)
	testl	%esi, %esi
	je	L3122
	testl	%ebx, %ebx
	je	L3122
	movl	%ebx, %edx
	movl	%esi, %eax
	movl	-104(%ebp), %ebx
	jmp	L3124
	.p2align 4
	.p2align 4,,10
	.p2align 3
L3193:
	addl	$4, %eax
	subl	$1, %edx
	je	L3192
L3124:
	cmpl	(%eax), %ecx
	jne	L3193
	movl	%ebx, -104(%ebp)
	movl	-164(%ebp), %esi
	cmpl	%esi, -172(%ebp)
	je	L3153
	leal	24(%edi), %ebx
	movl	-156(%ebp), %eax
	movl	-160(%ebp), %ecx
	leal	-112(%ebp), %esi
	movl	%ebx, -120(%ebp)
	movl	-164(%ebp), %ebx
	.p2align 4
	.p2align 3
L3125:
	movl	%ebx, 24(%edi)
	movl	%esi, 12(%esp)
	movl	-120(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	call	__get_prev_page_serial.lto_priv.0
	movl	%edx, %ecx
	cmpl	%ebx, 24(%edi)
	jne	L3125
L3153:
	movl	-168(%ebp), %eax
	leal	1(%eax), %esi
	movl	-104(%ebp), %eax
	movl	%esi, 52(%eax)
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L3126
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L3126:
	movl	-104(%ebp), %eax
	movl	64(%eax), %eax
	testl	%eax, %eax
	je	L3127
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L3127:
	movl	-104(%ebp), %eax
	movl	60(%eax), %eax
	testl	%eax, %eax
	je	L3128
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L3128:
	movl	-104(%ebp), %ebx
	movl	52(%ebx), %eax
	leal	8(,%eax,8), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L3189
	movl	52(%ebx), %edi
	movl	%eax, 56(%ebx)
	sall	$5, %edi
	movl	%edi, 4(%esp)
	movl	72(%ebx), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L3130
	testl	%edi, %edi
	jne	L3189
L3130:
	movl	-104(%ebp), %edi
	movl	%eax, 72(%edi)
	movl	%edi, %eax
	movl	52(%edi), %edi
	sall	$4, %edi
	movl	%edi, 4(%esp)
	movl	76(%eax), %eax
	movl	%eax, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator7ReallocEPvjj.constprop.0
	subl	$8, %esp
	testl	%eax, %eax
	jne	L3132
	testl	%edi, %edi
	jne	L3189
L3132:
	movl	-104(%ebp), %edi
	movl	%eax, 76(%edi)
	movl	52(%edi), %eax
	leal	0(,%eax,4), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L3189
	movl	-104(%ebp), %edi
	movl	%eax, 64(%edi)
	movl	52(%edi), %eax
	leal	0(,%eax,8), %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L3189
	movl	-104(%ebp), %edi
	movl	%eax, 60(%edi)
	movl	52(%edi), %edi
	sall	$4, %edi
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0
	subl	$4, %esp
	testl	%eax, %eax
	je	L3189
	movl	-104(%ebp), %ebx
	movl	-156(%ebp), %edi
	movl	$0, -120(%ebp)
	movl	-168(%ebp), %ecx
	movl	-108(%ebp), %edx
	movl	%eax, 68(%ebx)
	movl	56(%ebx), %eax
	movl	%edi, (%eax,%esi,8)
	movl	-160(%ebp), %edi
	movl	%edi, 4(%eax,%esi,8)
	movl	-128(%ebp), %esi
	movl	56(%ebx), %eax
	movl	-124(%ebp), %edi
	movl	%esi, (%eax,%ecx,8)
	xorl	%esi, %esi
	movl	%edi, 4(%eax,%ecx,8)
	movl	68(%ebx), %eax
	sall	$4, %ecx
	xorl	%ebx, %ebx
	movl	%edx, %edi
	addl	%ecx, %eax
	movl	-112(%ebp), %ecx
	cmpl	%esi, %ecx
	sbbl	%ebx, %edi
	cmovl	%esi, %ecx
	cmovl	%ebx, %edx
	movl	%ecx, 8(%eax)
	movl	%edx, 12(%eax)
L3121:
	movl	-120(%ebp), %eax
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
L3192:
	.cfi_restore_state
	movl	%ebx, -104(%ebp)
L3122:
	movl	-156(%ebp), %eax
	movl	-120(%ebp), %esi
	movl	$0, -92(%ebp)
	movl	-116(%ebp), %edi
	movl	-160(%ebp), %ebx
	movl	$0, -96(%ebp)
	cmpl	%eax, %esi
	movl	%edi, %ecx
	sbbl	%ebx, %ecx
	jge	L3154
	movl	%eax, -148(%ebp)
	movl	%ebx, -152(%ebp)
	movl	%eax, -120(%ebp)
	movl	%ebx, -116(%ebp)
	.p2align 4
	.p2align 3
L3149:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	$65535, %ebx
	movl	%esi, -128(%ebp)
	movl	%edi, -124(%ebp)
	subl	%esi, %eax
	sbbl	%edi, %edx
	xorl	%ecx, %ecx
	cmpl	%eax, %ebx
	sbbl	%edx, %ecx
	jge	L3142
	movl	-120(%ebp), %ecx
	movl	-116(%ebp), %ebx
	addl	%esi, %ecx
	adcl	%edi, %ebx
	movl	%ebx, %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$31, %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -128(%ebp)
	movl	%edx, -124(%ebp)
L3142:
	movl	-104(%ebp), %ebx
	movl	-128(%ebp), %edx
	movl	-124(%ebp), %ecx
	movl	%ebx, %eax
	call	__seek_helper.lto_priv.0
	testl	%eax, %eax
	jne	L3190
	movl	$-1, (%esp)
	movl	%ebx, %eax
	leal	-80(%ebp), %edx
	movl	$-1, 4(%esp)
	call	__get_next_page.lto_priv.0
	movl	%eax, -136(%ebp)
	movl	%edx, %ebx
	xorl	$-128, %eax
	notl	%edx
	orl	%edx, %eax
	je	L3156
	testl	%ebx, %ebx
	js	L3157
	movl	-132(%ebp), %edx
	testl	%edx, %edx
	je	L3146
	movl	-144(%ebp), %edx
	testl	%edx, %edx
	je	L3146
	movl	-80(%ebp), %eax
	movl	14(%eax), %ecx
	movl	-132(%ebp), %eax
	jmp	L3148
	.p2align 4
	.p2align 4,,10
	.p2align 3
L3194:
	addl	$4, %eax
	subl	$1, %edx
	je	L3146
L3148:
	cmpl	(%eax), %ecx
	jne	L3194
	movl	-104(%ebp), %eax
	movl	8(%eax), %esi
	movl	12(%eax), %edi
L3144:
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %edx
	movl	%edi, %ecx
	cmpl	%eax, %esi
	sbbl	%edx, %ecx
	jl	L3149
L3141:
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %ecx
	leal	-88(%ebp), %esi
	leal	-100(%ebp), %edi
	movl	-164(%ebp), %ebx
	.p2align 4
	.p2align 3
L3150:
	movl	%ebx, -100(%ebp)
	movl	%esi, 12(%esp)
	movl	%edi, 8(%esp)
	movl	-144(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-132(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %edx
	movl	-104(%ebp), %eax
	call	__get_prev_page_serial.lto_priv.0
	movl	%edx, %ecx
	cmpl	%ebx, -100(%ebp)
	jne	L3150
	movl	-152(%ebp), %ebx
	movl	-104(%ebp), %edi
	movl	-148(%ebp), %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
	call	__seek_helper.lto_priv.0
	movl	%eax, -120(%ebp)
	testl	%eax, %eax
	jne	L3121
	leal	-96(%ebp), %eax
	movl	$0, 8(%esp)
	leal	-64(%ebp), %ecx
	movl	%eax, 4(%esp)
	leal	-92(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edi, %eax
	call	__fetch_headers.lto_priv.0
	movl	%eax, -120(%ebp)
	testl	%eax, %eax
	jne	L3121
	movl	456(%edi), %eax
	movl	12(%edi), %edx
	movl	%edi, -104(%ebp)
	movl	%eax, -132(%ebp)
	movl	8(%edi), %eax
	movl	%edx, -140(%ebp)
	leal	-48(%ebp), %edx
	movl	%eax, -144(%ebp)
	movl	%edi, %eax
	call	__initial_pcmoffset.lto_priv.0
	movl	-92(%ebp), %edi
	movl	%ebx, %ecx
	movl	%eax, -128(%ebp)
	movl	-168(%ebp), %eax
	movl	%edx, -124(%ebp)
	leal	1(%eax), %esi
	movl	%esi, 36(%esp)
	movl	-96(%ebp), %eax
	movl	%edi, 28(%esp)
	movl	%eax, 32(%esp)
	movl	-172(%ebp), %eax
	movl	%eax, 24(%esp)
	movl	-112(%ebp), %eax
	movl	-108(%ebp), %edx
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	movl	-156(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	-160(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	-104(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	-148(%ebp), %edx
	movl	-104(%ebp), %eax
	call	__bisect_forward_serialno.lto_priv.0
	movl	%eax, -120(%ebp)
	testl	%eax, %eax
	jne	L3121
	testl	%edi, %edi
	je	L3151
	movl	%edi, (%esp)
	movl	_g_sm_heap, %ecx
	call	__ZN2sm9Allocator4FreeEPv
	subl	$4, %esp
L3151:
	movl	-104(%ebp), %edi
	movl	-148(%ebp), %eax
	movl	-144(%ebp), %ecx
	movl	-140(%ebp), %ebx
	movl	56(%edi), %edx
	movl	%eax, (%edx,%esi,8)
	movl	-152(%ebp), %eax
	movl	%eax, 4(%edx,%esi,8)
	movl	-132(%ebp), %eax
	movl	64(%edi), %edx
	movl	%eax, (%edx,%esi,4)
	movl	60(%edi), %edx
	movl	%edi, %eax
	movl	%ebx, 4(%edx,%esi,8)
	movl	%edi, %ebx
	movl	%ecx, (%edx,%esi,8)
	movl	%esi, %edx
	movl	-48(%ebp), %ecx
	sall	$4, %esi
	sall	$5, %edx
	addl	72(%edi), %edx
	movl	%ecx, (%edx)
	movl	-44(%ebp), %ecx
	movl	%ecx, 4(%edx)
	movl	-40(%ebp), %ecx
	movl	%ecx, 8(%edx)
	movl	-36(%ebp), %ecx
	movl	%ecx, 12(%edx)
	movl	-32(%ebp), %ecx
	movl	%ecx, 16(%edx)
	movl	-28(%ebp), %ecx
	movl	%ecx, 20(%edx)
	movl	-24(%ebp), %ecx
	movl	%ecx, 24(%edx)
	movl	-20(%ebp), %ecx
	movl	%ecx, 28(%edx)
	movl	%esi, %ecx
	movl	76(%edi), %edx
	movl	-64(%ebp), %esi
	movl	%esi, (%edx,%ecx)
	movl	-60(%ebp), %esi
	movl	%esi, 4(%edx,%ecx)
	movl	-56(%ebp), %esi
	movl	%esi, 8(%edx,%ecx)
	movl	-52(%ebp), %esi
	movl	%esi, 12(%edx,%ecx)
	movl	-168(%ebp), %edx
	movl	68(%eax), %esi
	movl	-88(%ebp), %eax
	sall	$4, %edx
	movl	%edx, %edi
	movl	-84(%ebp), %edx
	movl	%eax, 8(%esi,%edi)
	movl	-128(%ebp), %eax
	movl	%edx, 12(%esi,%edi)
	movl	-124(%ebp), %edx
	movl	68(%ebx), %esi
	movl	%edx, 4(%esi,%ecx)
	leal	24(%edi), %edx
	movl	-124(%ebp), %edi
	movl	%eax, (%esi,%ecx)
	movl	%edx, %ecx
	addl	68(%ebx), %ecx
	movl	-128(%ebp), %esi
	subl	%esi, (%ecx)
	sbbl	%edi, 4(%ecx)
	addl	68(%ebx), %edx
	movl	4(%edx), %eax
	testl	%eax, %eax
	jns	L3121
	movl	$0, (%edx)
	movl	$0, 4(%edx)
	jmp	L3121
	.p2align 4,,10
	.p2align 3
L3157:
	movl	-128(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	jmp	L3144
	.p2align 4,,10
	.p2align 3
L3146:
	movl	-136(%ebp), %eax
	movl	-124(%ebp), %edx
	movl	%ebx, -152(%ebp)
	movl	%eax, -148(%ebp)
	movl	-128(%ebp), %eax
	movl	%edx, -116(%ebp)
	movl	%eax, -120(%ebp)
	jmp	L3144
	.p2align 4,,10
	.p2align 3
L3190:
	movl	%eax, -120(%ebp)
	movl	-120(%ebp), %eax
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
L3156:
	.cfi_restore_state
	movl	$-128, -120(%ebp)
	movl	-120(%ebp), %eax
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
L3189:
	.cfi_restore_state
	movl	%edi, %eax
	call	__Z13handle_memerri
L3154:
	movl	-156(%ebp), %eax
	movl	%eax, -148(%ebp)
	movl	-160(%ebp), %eax
	movl	%eax, -152(%ebp)
	jmp	L3141
	.cfi_endproc
LFE262:
	.section .rdata,"dr"
	.align 32
_vwin8192:
	.long	863518662
	.long	889948258
	.long	901892247
	.long	910027088
	.long	916256695
	.long	921336878
	.long	925089945
	.long	928645876
	.long	931922744
	.long	934208739
	.long	936748721
	.long	939533420
	.long	941057426
	.long	942708425
	.long	944486418
	.long	946391377
	.long	948168030
	.long	949247517
	.long	950390501
	.long	951596967
	.long	952866944
	.long	954200405
	.long	955597348
	.long	956679550
	.long	957441518
	.long	958235235
	.long	959060687
	.long	959917887
	.long	960806835
	.long	961727518
	.long	962679949
	.long	963664115
	.long	964680030
	.long	965208803
	.long	965748498
	.long	966304064
	.long	966875497
	.long	967462802
	.long	968065973
	.long	968685015
	.long	969319925
	.long	969970702
	.long	970637346
	.long	971319854
	.long	972018233
	.long	972732476
	.long	973270555
	.long	973643542
	.long	974024461
	.long	974413312
	.long	974810095
	.long	975214810
	.long	975627456
	.long	976048033
	.long	976476540
	.long	976912979
	.long	977357349
	.long	977809648
	.long	978269878
	.long	978738036
	.long	979214125
	.long	979698142
	.long	980190088
	.long	980689962
	.long	981197764
	.long	981590316
	.long	981852145
	.long	982117937
	.long	982387694
	.long	982661413
	.long	982939095
	.long	983220741
	.long	983506350
	.long	983795921
	.long	984089454
	.long	984386950
	.long	984688408
	.long	984993828
	.long	985303209
	.long	985616553
	.long	985933857
	.long	986255123
	.long	986580350
	.long	986909538
	.long	987242687
	.long	987579796
	.long	987920865
	.long	988265894
	.long	988614883
	.long	988967832
	.long	989324740
	.long	989685607
	.long	989953089
	.long	990137481
	.long	990323853
	.long	990512204
	.long	990702534
	.long	990894843
	.long	991089131
	.long	991285397
	.long	991483643
	.long	991683866
	.long	991886068
	.long	992090248
	.long	992296407
	.long	992504543
	.long	992714657
	.long	992926749
	.long	993140819
	.long	993356866
	.long	993574890
	.long	993794892
	.long	994016871
	.long	994240827
	.long	994466759
	.long	994694668
	.long	994924554
	.long	995156417
	.long	995390256
	.long	995626070
	.long	995863861
	.long	996103628
	.long	996345370
	.long	996589088
	.long	996834782
	.long	997082450
	.long	997332095
	.long	997583713
	.long	997837307
	.long	998092876
	.long	998297385
	.long	998427144
	.long	998557890
	.long	998689623
	.long	998822342
	.long	998956049
	.long	999090743
	.long	999226423
	.long	999363090
	.long	999500743
	.long	999639383
	.long	999779010
	.long	999919622
	.long	1000061221
	.long	1000203806
	.long	1000347377
	.long	1000491934
	.long	1000637477
	.long	1000784006
	.long	1000931520
	.long	1001080020
	.long	1001229505
	.long	1001379977
	.long	1001531433
	.long	1001683875
	.long	1001837301
	.long	1001991713
	.long	1002147110
	.long	1002303492
	.long	1002460858
	.long	1002619209
	.long	1002778545
	.long	1002938866
	.long	1003100170
	.long	1003262459
	.long	1003425732
	.long	1003589990
	.long	1003755231
	.long	1003921457
	.long	1004088666
	.long	1004256859
	.long	1004426035
	.long	1004596195
	.long	1004767339
	.long	1004939465
	.long	1005112575
	.long	1005286668
	.long	1005461744
	.long	1005637803
	.long	1005814845
	.long	1005992869
	.long	1006171876
	.long	1006351866
	.long	1006532837
	.long	1006673876
	.long	1006765344
	.long	1006857303
	.long	1006949753
	.long	1007042694
	.long	1007136126
	.long	1007230048
	.long	1007324461
	.long	1007419365
	.long	1007514760
	.long	1007610645
	.long	1007707021
	.long	1007803887
	.long	1007901243
	.long	1007999090
	.long	1008097427
	.long	1008196254
	.long	1008295571
	.long	1008395379
	.long	1008495676
	.long	1008596464
	.long	1008697741
	.long	1008799508
	.long	1008901765
	.long	1009004512
	.long	1009107748
	.long	1009211474
	.long	1009315689
	.long	1009420394
	.long	1009525588
	.long	1009631272
	.long	1009737445
	.long	1009844107
	.long	1009951258
	.long	1010058898
	.long	1010167027
	.long	1010275645
	.long	1010384752
	.long	1010494348
	.long	1010604433
	.long	1010715006
	.long	1010826068
	.long	1010937618
	.long	1011049657
	.long	1011162184
	.long	1011275200
	.long	1011388703
	.long	1011502695
	.long	1011617175
	.long	1011732143
	.long	1011847600
	.long	1011963544
	.long	1012079975
	.long	1012196895
	.long	1012314302
	.long	1012432197
	.long	1012550579
	.long	1012669449
	.long	1012788807
	.long	1012908651
	.long	1013028983
	.long	1013149802
	.long	1013271108
	.long	1013392901
	.long	1013515181
	.long	1013637948
	.long	1013761202
	.long	1013884942
	.long	1014009169
	.long	1014133883
	.long	1014259083
	.long	1014384770
	.long	1014510943
	.long	1014637602
	.long	1014764747
	.long	1014892378
	.long	1015020496
	.long	1015085334
	.long	1015149878
	.long	1015214666
	.long	1015279696
	.long	1015344969
	.long	1015410485
	.long	1015476243
	.long	1015542245
	.long	1015608489
	.long	1015674975
	.long	1015741704
	.long	1015808676
	.long	1015875890
	.long	1015943346
	.long	1016011045
	.long	1016078987
	.long	1016147170
	.long	1016215596
	.long	1016284264
	.long	1016353174
	.long	1016422326
	.long	1016491721
	.long	1016561357
	.long	1016631236
	.long	1016701356
	.long	1016771719
	.long	1016842323
	.long	1016913169
	.long	1016984257
	.long	1017055586
	.long	1017127157
	.long	1017198970
	.long	1017271025
	.long	1017343321
	.long	1017415858
	.long	1017488637
	.long	1017561657
	.long	1017634919
	.long	1017708422
	.long	1017782167
	.long	1017856152
	.long	1017930379
	.long	1018004847
	.long	1018079556
	.long	1018154506
	.long	1018229697
	.long	1018305129
	.long	1018380802
	.long	1018456715
	.long	1018532870
	.long	1018609265
	.long	1018685901
	.long	1018762778
	.long	1018839895
	.long	1018917253
	.long	1018994851
	.long	1019072689
	.long	1019150769
	.long	1019229088
	.long	1019307648
	.long	1019386448
	.long	1019465488
	.long	1019544769
	.long	1019624289
	.long	1019704050
	.long	1019784050
	.long	1019864291
	.long	1019944771
	.long	1020025491
	.long	1020106451
	.long	1020187651
	.long	1020269090
	.long	1020350769
	.long	1020432688
	.long	1020514846
	.long	1020597244
	.long	1020679881
	.long	1020762757
	.long	1020845873
	.long	1020929228
	.long	1021012822
	.long	1021096656
	.long	1021180728
	.long	1021265040
	.long	1021349590
	.long	1021434380
	.long	1021519408
	.long	1021604675
	.long	1021690181
	.long	1021775926
	.long	1021861909
	.long	1021948131
	.long	1022034592
	.long	1022121291
	.long	1022208228
	.long	1022295404
	.long	1022382818
	.long	1022470470
	.long	1022558361
	.long	1022646490
	.long	1022734856
	.long	1022823461
	.long	1022912304
	.long	1023001385
	.long	1023090703
	.long	1023180260
	.long	1023270054
	.long	1023360085
	.long	1023430265
	.long	1023475519
	.long	1023520891
	.long	1023566382
	.long	1023611992
	.long	1023657720
	.long	1023703567
	.long	1023749532
	.long	1023795617
	.long	1023841819
	.long	1023888140
	.long	1023934580
	.long	1023981138
	.long	1024027815
	.long	1024074609
	.long	1024121523
	.long	1024168554
	.long	1024215704
	.long	1024262972
	.long	1024310359
	.long	1024357863
	.long	1024405486
	.long	1024453227
	.long	1024501086
	.long	1024549063
	.long	1024597158
	.long	1024645371
	.long	1024693702
	.long	1024742151
	.long	1024790718
	.long	1024839402
	.long	1024888205
	.long	1024937125
	.long	1024986164
	.long	1025035320
	.long	1025084593
	.long	1025133985
	.long	1025183494
	.long	1025233120
	.long	1025282864
	.long	1025332726
	.long	1025382705
	.long	1025432802
	.long	1025483016
	.long	1025533348
	.long	1025583797
	.long	1025634363
	.long	1025685047
	.long	1025735848
	.long	1025786766
	.long	1025837801
	.long	1025888954
	.long	1025940223
	.long	1025991610
	.long	1026043114
	.long	1026094735
	.long	1026146472
	.long	1026198327
	.long	1026250299
	.long	1026302388
	.long	1026354593
	.long	1026406916
	.long	1026459355
	.long	1026511910
	.long	1026564583
	.long	1026617372
	.long	1026670278
	.long	1026723301
	.long	1026776440
	.long	1026829695
	.long	1026883067
	.long	1026936556
	.long	1026990161
	.long	1027043882
	.long	1027097720
	.long	1027151674
	.long	1027205744
	.long	1027259931
	.long	1027314234
	.long	1027368652
	.long	1027423187
	.long	1027477839
	.long	1027532606
	.long	1027587489
	.long	1027642488
	.long	1027697603
	.long	1027752834
	.long	1027808181
	.long	1027863644
	.long	1027919222
	.long	1027974916
	.long	1028030726
	.long	1028086652
	.long	1028142693
	.long	1028198850
	.long	1028255122
	.long	1028311510
	.long	1028368013
	.long	1028424632
	.long	1028481366
	.long	1028538216
	.long	1028595180
	.long	1028652261
	.long	1028709456
	.long	1028766766
	.long	1028824192
	.long	1028881733
	.long	1028939389
	.long	1028997160
	.long	1029055045
	.long	1029113046
	.long	1029171162
	.long	1029229393
	.long	1029287738
	.long	1029346198
	.long	1029404773
	.long	1029463463
	.long	1029522267
	.long	1029581186
	.long	1029640220
	.long	1029699368
	.long	1029758631
	.long	1029818008
	.long	1029877499
	.long	1029937105
	.long	1029996825
	.long	1030056660
	.long	1030116608
	.long	1030176671
	.long	1030236848
	.long	1030297139
	.long	1030357545
	.long	1030418064
	.long	1030478697
	.long	1030539444
	.long	1030600305
	.long	1030661280
	.long	1030722369
	.long	1030783572
	.long	1030844888
	.long	1030906318
	.long	1030967862
	.long	1031029519
	.long	1031091289
	.long	1031153174
	.long	1031215171
	.long	1031277282
	.long	1031339507
	.long	1031401845
	.long	1031464296
	.long	1031526860
	.long	1031589538
	.long	1031652328
	.long	1031715232
	.long	1031778249
	.long	1031820081
	.long	1031851703
	.long	1031883381
	.long	1031915115
	.long	1031946906
	.long	1031978753
	.long	1032010656
	.long	1032042616
	.long	1032074632
	.long	1032106705
	.long	1032138833
	.long	1032171018
	.long	1032203259
	.long	1032235557
	.long	1032267910
	.long	1032300320
	.long	1032332786
	.long	1032365308
	.long	1032397886
	.long	1032430520
	.long	1032463210
	.long	1032495956
	.long	1032528758
	.long	1032561617
	.long	1032594531
	.long	1032627501
	.long	1032660526
	.long	1032693608
	.long	1032726746
	.long	1032759939
	.long	1032793188
	.long	1032826493
	.long	1032859854
	.long	1032893270
	.long	1032926743
	.long	1032960270
	.long	1032993854
	.long	1033027493
	.long	1033061187
	.long	1033094938
	.long	1033128743
	.long	1033162605
	.long	1033196522
	.long	1033230494
	.long	1033264522
	.long	1033298605
	.long	1033332743
	.long	1033366937
	.long	1033401186
	.long	1033435491
	.long	1033469851
	.long	1033504266
	.long	1033538736
	.long	1033573262
	.long	1033607843
	.long	1033642479
	.long	1033677170
	.long	1033711916
	.long	1033746717
	.long	1033781573
	.long	1033816485
	.long	1033851451
	.long	1033886472
	.long	1033921549
	.long	1033956680
	.long	1033991866
	.long	1034027107
	.long	1034062403
	.long	1034097754
	.long	1034133159
	.long	1034168619
	.long	1034204134
	.long	1034239704
	.long	1034275328
	.long	1034311007
	.long	1034346741
	.long	1034382529
	.long	1034418372
	.long	1034454270
	.long	1034490222
	.long	1034526228
	.long	1034562289
	.long	1034598404
	.long	1034634574
	.long	1034670798
	.long	1034707077
	.long	1034743409
	.long	1034779797
	.long	1034816238
	.long	1034852734
	.long	1034889283
	.long	1034925887
	.long	1034962546
	.long	1034999258
	.long	1035036024
	.long	1035072845
	.long	1035109720
	.long	1035146648
	.long	1035183631
	.long	1035220667
	.long	1035257758
	.long	1035294902
	.long	1035332100
	.long	1035369353
	.long	1035406659
	.long	1035444018
	.long	1035481432
	.long	1035518899
	.long	1035556420
	.long	1035593995
	.long	1035631623
	.long	1035669305
	.long	1035707040
	.long	1035744829
	.long	1035782672
	.long	1035820568
	.long	1035858517
	.long	1035896520
	.long	1035934576
	.long	1035972686
	.long	1036010849
	.long	1036049066
	.long	1036087335
	.long	1036125658
	.long	1036164034
	.long	1036202464
	.long	1036240946
	.long	1036279482
	.long	1036318071
	.long	1036356712
	.long	1036395407
	.long	1036434155
	.long	1036472956
	.long	1036511810
	.long	1036550717
	.long	1036589676
	.long	1036628689
	.long	1036667754
	.long	1036706873
	.long	1036746043
	.long	1036785267
	.long	1036824544
	.long	1036863873
	.long	1036903254
	.long	1036942689
	.long	1036982175
	.long	1037021715
	.long	1037061307
	.long	1037100951
	.long	1037140648
	.long	1037180397
	.long	1037220199
	.long	1037260053
	.long	1037299960
	.long	1037339918
	.long	1037379929
	.long	1037419992
	.long	1037460108
	.long	1037500275
	.long	1037540495
	.long	1037580767
	.long	1037621091
	.long	1037661467
	.long	1037701895
	.long	1037742374
	.long	1037782906
	.long	1037823490
	.long	1037864125
	.long	1037904813
	.long	1037945552
	.long	1037986343
	.long	1038027186
	.long	1038068080
	.long	1038109026
	.long	1038150024
	.long	1038191074
	.long	1038232175
	.long	1038273327
	.long	1038314531
	.long	1038355786
	.long	1038397093
	.long	1038438452
	.long	1038479861
	.long	1038521322
	.long	1038562835
	.long	1038604398
	.long	1038646013
	.long	1038687679
	.long	1038729396
	.long	1038771165
	.long	1038812984
	.long	1038854855
	.long	1038896776
	.long	1038938749
	.long	1038980772
	.long	1039022847
	.long	1039064972
	.long	1039107148
	.long	1039149375
	.long	1039191653
	.long	1039233981
	.long	1039276361
	.long	1039318791
	.long	1039361271
	.long	1039403802
	.long	1039446384
	.long	1039489016
	.long	1039531699
	.long	1039574432
	.long	1039617216
	.long	1039660050
	.long	1039702935
	.long	1039745869
	.long	1039788855
	.long	1039831890
	.long	1039874975
	.long	1039918111
	.long	1039961297
	.long	1040004533
	.long	1040047819
	.long	1040091155
	.long	1040134541
	.long	1040177977
	.long	1040204428
	.long	1040226196
	.long	1040247989
	.long	1040269806
	.long	1040291649
	.long	1040313517
	.long	1040335409
	.long	1040357326
	.long	1040379268
	.long	1040401235
	.long	1040423227
	.long	1040445243
	.long	1040467284
	.long	1040489350
	.long	1040511441
	.long	1040533556
	.long	1040555696
	.long	1040577860
	.long	1040600050
	.long	1040622263
	.long	1040644502
	.long	1040666765
	.long	1040689052
	.long	1040711364
	.long	1040733701
	.long	1040756062
	.long	1040778447
	.long	1040800857
	.long	1040823292
	.long	1040845751
	.long	1040868234
	.long	1040890742
	.long	1040913274
	.long	1040935830
	.long	1040958411
	.long	1040981016
	.long	1041003645
	.long	1041026298
	.long	1041048976
	.long	1041071678
	.long	1041094404
	.long	1041117155
	.long	1041139929
	.long	1041162728
	.long	1041185551
	.long	1041208398
	.long	1041231269
	.long	1041254164
	.long	1041277083
	.long	1041300026
	.long	1041322993
	.long	1041345985
	.long	1041369000
	.long	1041392039
	.long	1041415102
	.long	1041438189
	.long	1041461299
	.long	1041484434
	.long	1041507593
	.long	1041530775
	.long	1041553981
	.long	1041577211
	.long	1041600465
	.long	1041623742
	.long	1041647043
	.long	1041670368
	.long	1041693717
	.long	1041717089
	.long	1041740485
	.long	1041763904
	.long	1041787347
	.long	1041810814
	.long	1041834304
	.long	1041857818
	.long	1041881355
	.long	1041904916
	.long	1041928500
	.long	1041952108
	.long	1041975739
	.long	1041999394
	.long	1042023072
	.long	1042046773
	.long	1042070498
	.long	1042094246
	.long	1042118017
	.long	1042141812
	.long	1042165630
	.long	1042189471
	.long	1042213335
	.long	1042237223
	.long	1042261133
	.long	1042285067
	.long	1042309024
	.long	1042333004
	.long	1042357008
	.long	1042381034
	.long	1042405083
	.long	1042429156
	.long	1042453251
	.long	1042477370
	.long	1042501511
	.long	1042525675
	.long	1042549863
	.long	1042574073
	.long	1042598306
	.long	1042622562
	.long	1042646840
	.long	1042671142
	.long	1042695466
	.long	1042719813
	.long	1042744183
	.long	1042768576
	.long	1042792991
	.long	1042817429
	.long	1042841889
	.long	1042866373
	.long	1042890878
	.long	1042915407
	.long	1042939958
	.long	1042964531
	.long	1042989128
	.long	1043013746
	.long	1043038387
	.long	1043063051
	.long	1043087737
	.long	1043112445
	.long	1043137176
	.long	1043161929
	.long	1043186704
	.long	1043211502
	.long	1043236322
	.long	1043261165
	.long	1043286029
	.long	1043310916
	.long	1043335825
	.long	1043360757
	.long	1043385710
	.long	1043410686
	.long	1043435683
	.long	1043460703
	.long	1043485745
	.long	1043510809
	.long	1043535895
	.long	1043561003
	.long	1043586133
	.long	1043611284
	.long	1043636458
	.long	1043661654
	.long	1043686872
	.long	1043712111
	.long	1043737372
	.long	1043762655
	.long	1043787960
	.long	1043813287
	.long	1043838635
	.long	1043864005
	.long	1043889397
	.long	1043914811
	.long	1043940246
	.long	1043965703
	.long	1043991181
	.long	1044016681
	.long	1044042203
	.long	1044067746
	.long	1044093310
	.long	1044118896
	.long	1044144504
	.long	1044170133
	.long	1044195783
	.long	1044221455
	.long	1044247148
	.long	1044272862
	.long	1044298598
	.long	1044324355
	.long	1044350133
	.long	1044375933
	.long	1044401754
	.long	1044427595
	.long	1044453459
	.long	1044479343
	.long	1044505248
	.long	1044531175
	.long	1044557122
	.long	1044583091
	.long	1044609081
	.long	1044635091
	.long	1044661123
	.long	1044687175
	.long	1044713249
	.long	1044739343
	.long	1044765458
	.long	1044791594
	.long	1044817751
	.long	1044843929
	.long	1044870128
	.long	1044896347
	.long	1044922587
	.long	1044948847
	.long	1044975129
	.long	1045001431
	.long	1045027753
	.long	1045054096
	.long	1045080460
	.long	1045106845
	.long	1045133249
	.long	1045159675
	.long	1045186121
	.long	1045212587
	.long	1045239074
	.long	1045265581
	.long	1045292108
	.long	1045318656
	.long	1045345224
	.long	1045371812
	.long	1045398421
	.long	1045425050
	.long	1045451699
	.long	1045478369
	.long	1045505058
	.long	1045531768
	.long	1045558497
	.long	1045585247
	.long	1045612017
	.long	1045638807
	.long	1045665617
	.long	1045692447
	.long	1045719297
	.long	1045746167
	.long	1045773056
	.long	1045799966
	.long	1045826895
	.long	1045853845
	.long	1045880814
	.long	1045907803
	.long	1045934811
	.long	1045961840
	.long	1045988888
	.long	1046015955
	.long	1046043043
	.long	1046070150
	.long	1046097276
	.long	1046124422
	.long	1046151588
	.long	1046178773
	.long	1046205978
	.long	1046233202
	.long	1046260445
	.long	1046287708
	.long	1046314991
	.long	1046342292
	.long	1046369613
	.long	1046396954
	.long	1046424313
	.long	1046451692
	.long	1046479090
	.long	1046506507
	.long	1046533943
	.long	1046561399
	.long	1046588874
	.long	1046616367
	.long	1046643880
	.long	1046671412
	.long	1046698962
	.long	1046726532
	.long	1046754121
	.long	1046781728
	.long	1046809355
	.long	1046837000
	.long	1046864664
	.long	1046892347
	.long	1046920049
	.long	1046947770
	.long	1046975509
	.long	1047003267
	.long	1047031043
	.long	1047058839
	.long	1047086652
	.long	1047114485
	.long	1047142336
	.long	1047170205
	.long	1047198093
	.long	1047226000
	.long	1047253925
	.long	1047281868
	.long	1047309830
	.long	1047337810
	.long	1047365808
	.long	1047393825
	.long	1047421860
	.long	1047449913
	.long	1047477985
	.long	1047506074
	.long	1047534182
	.long	1047562308
	.long	1047590452
	.long	1047618615
	.long	1047646795
	.long	1047674993
	.long	1047703209
	.long	1047731443
	.long	1047759696
	.long	1047787966
	.long	1047816253
	.long	1047844559
	.long	1047872883
	.long	1047901224
	.long	1047929583
	.long	1047957960
	.long	1047986355
	.long	1048014767
	.long	1048043197
	.long	1048071645
	.long	1048100110
	.long	1048128592
	.long	1048157093
	.long	1048185610
	.long	1048214146
	.long	1048242698
	.long	1048271268
	.long	1048299856
	.long	1048328461
	.long	1048357083
	.long	1048385722
	.long	1048414379
	.long	1048443053
	.long	1048471744
	.long	1048500452
	.long	1048529178
	.long	1048557920
	.long	1048581340
	.long	1048595728
	.long	1048610125
	.long	1048624531
	.long	1048638945
	.long	1048653367
	.long	1048667798
	.long	1048682237
	.long	1048696685
	.long	1048711141
	.long	1048725606
	.long	1048740078
	.long	1048754560
	.long	1048769049
	.long	1048783547
	.long	1048798054
	.long	1048812568
	.long	1048827091
	.long	1048841622
	.long	1048856162
	.long	1048870709
	.long	1048885265
	.long	1048899829
	.long	1048914402
	.long	1048928982
	.long	1048943571
	.long	1048958168
	.long	1048972773
	.long	1048987386
	.long	1049002007
	.long	1049016637
	.long	1049031274
	.long	1049045920
	.long	1049060573
	.long	1049075235
	.long	1049089904
	.long	1049104582
	.long	1049119267
	.long	1049133961
	.long	1049148663
	.long	1049163372
	.long	1049178089
	.long	1049192815
	.long	1049207548
	.long	1049222289
	.long	1049237038
	.long	1049251795
	.long	1049266559
	.long	1049281332
	.long	1049296112
	.long	1049310900
	.long	1049325696
	.long	1049340500
	.long	1049355311
	.long	1049370130
	.long	1049384957
	.long	1049399791
	.long	1049414633
	.long	1049429483
	.long	1049444341
	.long	1049459206
	.long	1049474079
	.long	1049488959
	.long	1049503847
	.long	1049518742
	.long	1049533645
	.long	1049548556
	.long	1049563474
	.long	1049578399
	.long	1049593333
	.long	1049608273
	.long	1049623221
	.long	1049638177
	.long	1049653139
	.long	1049668110
	.long	1049683087
	.long	1049698073
	.long	1049713065
	.long	1049728065
	.long	1049743072
	.long	1049758086
	.long	1049773108
	.long	1049788137
	.long	1049803173
	.long	1049818217
	.long	1049833268
	.long	1049848326
	.long	1049863391
	.long	1049878463
	.long	1049893543
	.long	1049908630
	.long	1049923723
	.long	1049938824
	.long	1049953932
	.long	1049969048
	.long	1049984170
	.long	1049999299
	.long	1050014435
	.long	1050029579
	.long	1050044729
	.long	1050059887
	.long	1050075051
	.long	1050090222
	.long	1050105400
	.long	1050120586
	.long	1050135778
	.long	1050150977
	.long	1050166183
	.long	1050181395
	.long	1050196615
	.long	1050211841
	.long	1050227074
	.long	1050242314
	.long	1050257561
	.long	1050272815
	.long	1050288075
	.long	1050303342
	.long	1050318616
	.long	1050333896
	.long	1050349183
	.long	1050364477
	.long	1050379778
	.long	1050395085
	.long	1050410398
	.long	1050425719
	.long	1050441045
	.long	1050456379
	.long	1050471719
	.long	1050487065
	.long	1050502418
	.long	1050517778
	.long	1050533144
	.long	1050548516
	.long	1050563895
	.long	1050579280
	.long	1050594672
	.long	1050610070
	.long	1050625475
	.long	1050640886
	.long	1050656303
	.long	1050671727
	.long	1050687156
	.long	1050702593
	.long	1050718035
	.long	1050733484
	.long	1050748939
	.long	1050764400
	.long	1050779867
	.long	1050795341
	.long	1050810820
	.long	1050826306
	.long	1050841798
	.long	1050857297
	.long	1050872801
	.long	1050888311
	.long	1050903828
	.long	1050919350
	.long	1050934879
	.long	1050950413
	.long	1050965954
	.long	1050981501
	.long	1050997053
	.long	1051012612
	.long	1051028176
	.long	1051043746
	.long	1051059323
	.long	1051074905
	.long	1051090493
	.long	1051106087
	.long	1051121687
	.long	1051137292
	.long	1051152903
	.long	1051168520
	.long	1051184143
	.long	1051199772
	.long	1051215406
	.long	1051231046
	.long	1051246692
	.long	1051262344
	.long	1051278001
	.long	1051293663
	.long	1051309332
	.long	1051325006
	.long	1051340685
	.long	1051356371
	.long	1051372061
	.long	1051387757
	.long	1051403459
	.long	1051419167
	.long	1051434879
	.long	1051450598
	.long	1051466321
	.long	1051482050
	.long	1051497785
	.long	1051513525
	.long	1051529270
	.long	1051545021
	.long	1051560777
	.long	1051576538
	.long	1051592305
	.long	1051608077
	.long	1051623854
	.long	1051639637
	.long	1051655424
	.long	1051671217
	.long	1051687015
	.long	1051702819
	.long	1051718627
	.long	1051734441
	.long	1051750260
	.long	1051766084
	.long	1051781913
	.long	1051797747
	.long	1051813586
	.long	1051829430
	.long	1051845280
	.long	1051861134
	.long	1051876993
	.long	1051892857
	.long	1051908727
	.long	1051924601
	.long	1051940480
	.long	1051956364
	.long	1051972253
	.long	1051988146
	.long	1052004045
	.long	1052019948
	.long	1052035856
	.long	1052051769
	.long	1052067687
	.long	1052083610
	.long	1052099537
	.long	1052115469
	.long	1052131406
	.long	1052147347
	.long	1052163293
	.long	1052179244
	.long	1052195199
	.long	1052211159
	.long	1052227124
	.long	1052243093
	.long	1052259067
	.long	1052275045
	.long	1052291028
	.long	1052307015
	.long	1052323007
	.long	1052339003
	.long	1052355004
	.long	1052371009
	.long	1052387018
	.long	1052403032
	.long	1052419051
	.long	1052435073
	.long	1052451100
	.long	1052467132
	.long	1052483167
	.long	1052499207
	.long	1052515252
	.long	1052531300
	.long	1052547353
	.long	1052563410
	.long	1052579471
	.long	1052595536
	.long	1052611606
	.long	1052627679
	.long	1052643757
	.long	1052659839
	.long	1052675925
	.long	1052692015
	.long	1052708109
	.long	1052724207
	.long	1052740309
	.long	1052756415
	.long	1052772525
	.long	1052788639
	.long	1052804757
	.long	1052820879
	.long	1052837005
	.long	1052853135
	.long	1052869268
	.long	1052885406
	.long	1052901547
	.long	1052917692
	.long	1052933841
	.long	1052949994
	.long	1052966150
	.long	1052982310
	.long	1052998474
	.long	1053014641
	.long	1053030813
	.long	1053046988
	.long	1053063166
	.long	1053079348
	.long	1053095534
	.long	1053111723
	.long	1053127916
	.long	1053144113
	.long	1053160313
	.long	1053176516
	.long	1053192723
	.long	1053208934
	.long	1053225148
	.long	1053241365
	.long	1053257586
	.long	1053273810
	.long	1053290038
	.long	1053306269
	.long	1053322503
	.long	1053338741
	.long	1053354982
	.long	1053371226
	.long	1053387473
	.long	1053403724
	.long	1053419978
	.long	1053436235
	.long	1053452496
	.long	1053468760
	.long	1053485026
	.long	1053501296
	.long	1053517569
	.long	1053533845
	.long	1053550125
	.long	1053566407
	.long	1053582692
	.long	1053598980
	.long	1053615272
	.long	1053631566
	.long	1053647864
	.long	1053664164
	.long	1053680467
	.long	1053696773
	.long	1053713082
	.long	1053729394
	.long	1053745709
	.long	1053762026
	.long	1053778347
	.long	1053794670
	.long	1053810996
	.long	1053827325
	.long	1053843656
	.long	1053859990
	.long	1053876327
	.long	1053892667
	.long	1053909009
	.long	1053925354
	.long	1053941702
	.long	1053958052
	.long	1053974405
	.long	1053990760
	.long	1054007118
	.long	1054023479
	.long	1054039841
	.long	1054056207
	.long	1054072575
	.long	1054088945
	.long	1054105318
	.long	1054121693
	.long	1054138071
	.long	1054154451
	.long	1054170833
	.long	1054187218
	.long	1054203605
	.long	1054219995
	.long	1054236386
	.long	1054252780
	.long	1054269176
	.long	1054285575
	.long	1054301976
	.long	1054318378
	.long	1054334783
	.long	1054351191
	.long	1054367600
	.long	1054384011
	.long	1054400425
	.long	1054416840
	.long	1054433258
	.long	1054449678
	.long	1054466099
	.long	1054482523
	.long	1054498949
	.long	1054515376
	.long	1054531806
	.long	1054548237
	.long	1054564671
	.long	1054581106
	.long	1054597543
	.long	1054613982
	.long	1054630423
	.long	1054646866
	.long	1054663310
	.long	1054679756
	.long	1054696204
	.long	1054712654
	.long	1054729106
	.long	1054745559
	.long	1054762013
	.long	1054778470
	.long	1054794928
	.long	1054811388
	.long	1054827849
	.long	1054844312
	.long	1054860776
	.long	1054877242
	.long	1054893710
	.long	1054910179
	.long	1054926649
	.long	1054943121
	.long	1054959594
	.long	1054976069
	.long	1054992545
	.long	1055009023
	.long	1055025502
	.long	1055041982
	.long	1055058464
	.long	1055074947
	.long	1055091431
	.long	1055107916
	.long	1055124403
	.long	1055140891
	.long	1055157380
	.long	1055173870
	.long	1055190362
	.long	1055206855
	.long	1055223348
	.long	1055239843
	.long	1055256339
	.long	1055272837
	.long	1055289335
	.long	1055305834
	.long	1055322334
	.long	1055338835
	.long	1055355338
	.long	1055371841
	.long	1055388345
	.long	1055404850
	.long	1055421356
	.long	1055437862
	.long	1055454370
	.long	1055470879
	.long	1055487388
	.long	1055503898
	.long	1055520409
	.long	1055536921
	.long	1055553433
	.long	1055569946
	.long	1055586460
	.long	1055602975
	.long	1055619490
	.long	1055636006
	.long	1055652522
	.long	1055669039
	.long	1055685557
	.long	1055702075
	.long	1055718594
	.long	1055735113
	.long	1055751633
	.long	1055768153
	.long	1055784674
	.long	1055801195
	.long	1055817717
	.long	1055834239
	.long	1055850762
	.long	1055867285
	.long	1055883808
	.long	1055900331
	.long	1055916855
	.long	1055933380
	.long	1055949904
	.long	1055966429
	.long	1055982954
	.long	1055999479
	.long	1056016004
	.long	1056032530
	.long	1056049056
	.long	1056065581
	.long	1056082107
	.long	1056098634
	.long	1056115160
	.long	1056131686
	.long	1056148212
	.long	1056164739
	.long	1056181265
	.long	1056197791
	.long	1056214318
	.long	1056230844
	.long	1056247370
	.long	1056263896
	.long	1056280422
	.long	1056296948
	.long	1056313473
	.long	1056329999
	.long	1056346524
	.long	1056363049
	.long	1056379574
	.long	1056396099
	.long	1056412623
	.long	1056429147
	.long	1056445671
	.long	1056462195
	.long	1056478718
	.long	1056495240
	.long	1056511763
	.long	1056528285
	.long	1056544806
	.long	1056561327
	.long	1056577848
	.long	1056594368
	.long	1056610888
	.long	1056627407
	.long	1056643926
	.long	1056660444
	.long	1056676961
	.long	1056693478
	.long	1056709994
	.long	1056726510
	.long	1056743025
	.long	1056759539
	.long	1056776053
	.long	1056792565
	.long	1056809078
	.long	1056825589
	.long	1056842100
	.long	1056858609
	.long	1056875118
	.long	1056891627
	.long	1056908134
	.long	1056924640
	.long	1056941146
	.long	1056957651
	.long	1056969381
	.long	1056977633
	.long	1056985883
	.long	1056994134
	.long	1057002384
	.long	1057010633
	.long	1057018882
	.long	1057027130
	.long	1057035378
	.long	1057043625
	.long	1057051872
	.long	1057060118
	.long	1057068364
	.long	1057076609
	.long	1057084853
	.long	1057093097
	.long	1057101340
	.long	1057109582
	.long	1057117824
	.long	1057126066
	.long	1057134306
	.long	1057142546
	.long	1057150785
	.long	1057159024
	.long	1057167261
	.long	1057175499
	.long	1057183735
	.long	1057191971
	.long	1057200206
	.long	1057208440
	.long	1057216673
	.long	1057224906
	.long	1057233138
	.long	1057241369
	.long	1057249599
	.long	1057257829
	.long	1057266057
	.long	1057274285
	.long	1057282512
	.long	1057290739
	.long	1057298964
	.long	1057307188
	.long	1057315412
	.long	1057323635
	.long	1057331857
	.long	1057340077
	.long	1057348298
	.long	1057356517
	.long	1057364735
	.long	1057372952
	.long	1057381168
	.long	1057389384
	.long	1057397598
	.long	1057405812
	.long	1057414024
	.long	1057422235
	.long	1057430446
	.long	1057438655
	.long	1057446864
	.long	1057455071
	.long	1057463277
	.long	1057471482
	.long	1057479687
	.long	1057487890
	.long	1057496092
	.long	1057504293
	.long	1057512492
	.long	1057520691
	.long	1057528889
	.long	1057537085
	.long	1057545280
	.long	1057553475
	.long	1057561668
	.long	1057569860
	.long	1057578050
	.long	1057586240
	.long	1057594428
	.long	1057602615
	.long	1057610801
	.long	1057618985
	.long	1057627169
	.long	1057635351
	.long	1057643532
	.long	1057651711
	.long	1057659890
	.long	1057668067
	.long	1057676243
	.long	1057684417
	.long	1057692590
	.long	1057700762
	.long	1057708933
	.long	1057717102
	.long	1057725270
	.long	1057733436
	.long	1057741601
	.long	1057749765
	.long	1057757927
	.long	1057766088
	.long	1057774248
	.long	1057782406
	.long	1057790562
	.long	1057798718
	.long	1057806871
	.long	1057815024
	.long	1057823175
	.long	1057831324
	.long	1057839472
	.long	1057847618
	.long	1057855763
	.long	1057863907
	.long	1057872048
	.long	1057880189
	.long	1057888328
	.long	1057896465
	.long	1057904600
	.long	1057912735
	.long	1057920867
	.long	1057928998
	.long	1057937128
	.long	1057945255
	.long	1057953381
	.long	1057961506
	.long	1057969629
	.long	1057977750
	.long	1057985870
	.long	1057993988
	.long	1058002104
	.long	1058010218
	.long	1058018331
	.long	1058026442
	.long	1058034552
	.long	1058042660
	.long	1058050766
	.long	1058058870
	.long	1058066972
	.long	1058075073
	.long	1058083172
	.long	1058091270
	.long	1058099365
	.long	1058107459
	.long	1058115551
	.long	1058123641
	.long	1058131729
	.long	1058139815
	.long	1058147900
	.long	1058155982
	.long	1058164063
	.long	1058172142
	.long	1058180219
	.long	1058188295
	.long	1058196368
	.long	1058204439
	.long	1058212509
	.long	1058220576
	.long	1058228642
	.long	1058236706
	.long	1058244767
	.long	1058252827
	.long	1058260885
	.long	1058268941
	.long	1058276995
	.long	1058285047
	.long	1058293096
	.long	1058301144
	.long	1058309190
	.long	1058317234
	.long	1058325275
	.long	1058333315
	.long	1058341353
	.long	1058349388
	.long	1058357422
	.long	1058365453
	.long	1058373482
	.long	1058381509
	.long	1058389535
	.long	1058397557
	.long	1058405578
	.long	1058413597
	.long	1058421613
	.long	1058429628
	.long	1058437640
	.long	1058445650
	.long	1058453657
	.long	1058461663
	.long	1058469666
	.long	1058477668
	.long	1058485666
	.long	1058493663
	.long	1058501658
	.long	1058509650
	.long	1058517640
	.long	1058525627
	.long	1058533613
	.long	1058541596
	.long	1058549577
	.long	1058557555
	.long	1058565531
	.long	1058573505
	.long	1058581476
	.long	1058589446
	.long	1058597412
	.long	1058605377
	.long	1058613339
	.long	1058621299
	.long	1058629256
	.long	1058637211
	.long	1058645163
	.long	1058653113
	.long	1058661061
	.long	1058669006
	.long	1058676949
	.long	1058684889
	.long	1058692827
	.long	1058700762
	.long	1058708695
	.long	1058716626
	.long	1058724554
	.long	1058732479
	.long	1058740402
	.long	1058748322
	.long	1058756240
	.long	1058764155
	.long	1058772068
	.long	1058779978
	.long	1058787886
	.long	1058795791
	.long	1058803693
	.long	1058811593
	.long	1058819490
	.long	1058827385
	.long	1058835277
	.long	1058843167
	.long	1058851053
	.long	1058858937
	.long	1058866819
	.long	1058874698
	.long	1058882574
	.long	1058890447
	.long	1058898318
	.long	1058906186
	.long	1058914051
	.long	1058921914
	.long	1058929774
	.long	1058937631
	.long	1058945485
	.long	1058953337
	.long	1058961186
	.long	1058969032
	.long	1058976875
	.long	1058984716
	.long	1058992554
	.long	1059000389
	.long	1059008221
	.long	1059016050
	.long	1059023877
	.long	1059031700
	.long	1059039521
	.long	1059047339
	.long	1059055154
	.long	1059062966
	.long	1059070776
	.long	1059078582
	.long	1059086386
	.long	1059094186
	.long	1059101984
	.long	1059109779
	.long	1059117571
	.long	1059125360
	.long	1059133146
	.long	1059140929
	.long	1059148709
	.long	1059156486
	.long	1059164260
	.long	1059172031
	.long	1059179799
	.long	1059187564
	.long	1059195326
	.long	1059203085
	.long	1059210841
	.long	1059218594
	.long	1059226344
	.long	1059234091
	.long	1059241835
	.long	1059249575
	.long	1059257313
	.long	1059265048
	.long	1059272779
	.long	1059280507
	.long	1059288232
	.long	1059295955
	.long	1059303673
	.long	1059311389
	.long	1059319102
	.long	1059326811
	.long	1059334518
	.long	1059342221
	.long	1059349921
	.long	1059357617
	.long	1059365311
	.long	1059373001
	.long	1059380688
	.long	1059388372
	.long	1059396053
	.long	1059403730
	.long	1059411404
	.long	1059419075
	.long	1059426743
	.long	1059434407
	.long	1059442068
	.long	1059449726
	.long	1059457381
	.long	1059465032
	.long	1059472680
	.long	1059480324
	.long	1059487965
	.long	1059495603
	.long	1059503238
	.long	1059510869
	.long	1059518497
	.long	1059526121
	.long	1059533742
	.long	1059541360
	.long	1059548974
	.long	1059556585
	.long	1059564192
	.long	1059571796
	.long	1059579396
	.long	1059586994
	.long	1059594587
	.long	1059602177
	.long	1059609764
	.long	1059617347
	.long	1059624927
	.long	1059632504
	.long	1059640076
	.long	1059647646
	.long	1059655211
	.long	1059662774
	.long	1059670332
	.long	1059677888
	.long	1059685439
	.long	1059692987
	.long	1059700532
	.long	1059708073
	.long	1059715610
	.long	1059723144
	.long	1059730674
	.long	1059738201
	.long	1059745724
	.long	1059753244
	.long	1059760759
	.long	1059768272
	.long	1059775780
	.long	1059783285
	.long	1059790786
	.long	1059798284
	.long	1059805778
	.long	1059813268
	.long	1059820755
	.long	1059828238
	.long	1059835717
	.long	1059843192
	.long	1059850664
	.long	1059858132
	.long	1059865596
	.long	1059873057
	.long	1059880514
	.long	1059887967
	.long	1059895416
	.long	1059902862
	.long	1059910303
	.long	1059917741
	.long	1059925176
	.long	1059932606
	.long	1059940033
	.long	1059947455
	.long	1059954874
	.long	1059962289
	.long	1059969701
	.long	1059977108
	.long	1059984512
	.long	1059991911
	.long	1059999307
	.long	1060006699
	.long	1060014087
	.long	1060021472
	.long	1060028852
	.long	1060036228
	.long	1060043601
	.long	1060050970
	.long	1060058334
	.long	1060065695
	.long	1060073052
	.long	1060080405
	.long	1060087754
	.long	1060095099
	.long	1060102440
	.long	1060109777
	.long	1060117110
	.long	1060124439
	.long	1060131764
	.long	1060139085
	.long	1060146402
	.long	1060153715
	.long	1060161024
	.long	1060168329
	.long	1060175630
	.long	1060182926
	.long	1060190219
	.long	1060197508
	.long	1060204792
	.long	1060212073
	.long	1060219350
	.long	1060226622
	.long	1060233890
	.long	1060241154
	.long	1060248415
	.long	1060255670
	.long	1060262922
	.long	1060270170
	.long	1060277414
	.long	1060284653
	.long	1060291888
	.long	1060299119
	.long	1060306346
	.long	1060313569
	.long	1060320787
	.long	1060328002
	.long	1060335212
	.long	1060342418
	.long	1060349620
	.long	1060356817
	.long	1060364010
	.long	1060371200
	.long	1060378384
	.long	1060385565
	.long	1060392741
	.long	1060399913
	.long	1060407081
	.long	1060414245
	.long	1060421404
	.long	1060428559
	.long	1060435709
	.long	1060442856
	.long	1060449998
	.long	1060457136
	.long	1060464269
	.long	1060471398
	.long	1060478523
	.long	1060485643
	.long	1060492759
	.long	1060499871
	.long	1060506978
	.long	1060514081
	.long	1060521180
	.long	1060528274
	.long	1060535364
	.long	1060542449
	.long	1060549530
	.long	1060556607
	.long	1060563679
	.long	1060570747
	.long	1060577810
	.long	1060584869
	.long	1060591924
	.long	1060598974
	.long	1060606019
	.long	1060613060
	.long	1060620097
	.long	1060627129
	.long	1060634157
	.long	1060641180
	.long	1060648199
	.long	1060655213
	.long	1060662223
	.long	1060669228
	.long	1060676229
	.long	1060683225
	.long	1060690216
	.long	1060697203
	.long	1060704186
	.long	1060711164
	.long	1060718137
	.long	1060725106
	.long	1060732070
	.long	1060739030
	.long	1060745985
	.long	1060752936
	.long	1060759882
	.long	1060766823
	.long	1060773760
	.long	1060780692
	.long	1060787619
	.long	1060794542
	.long	1060801460
	.long	1060808374
	.long	1060815283
	.long	1060822187
	.long	1060829087
	.long	1060835982
	.long	1060842872
	.long	1060849758
	.long	1060856639
	.long	1060863515
	.long	1060870387
	.long	1060877253
	.long	1060884116
	.long	1060890973
	.long	1060897826
	.long	1060904674
	.long	1060911517
	.long	1060918356
	.long	1060925189
	.long	1060932018
	.long	1060938843
	.long	1060945662
	.long	1060952477
	.long	1060959287
	.long	1060966092
	.long	1060972893
	.long	1060979688
	.long	1060986479
	.long	1060993265
	.long	1061000046
	.long	1061006823
	.long	1061013595
	.long	1061020361
	.long	1061027123
	.long	1061033880
	.long	1061040633
	.long	1061047380
	.long	1061054123
	.long	1061060860
	.long	1061067593
	.long	1061074321
	.long	1061081044
	.long	1061087763
	.long	1061094476
	.long	1061101184
	.long	1061107888
	.long	1061114587
	.long	1061121280
	.long	1061127969
	.long	1061134653
	.long	1061141332
	.long	1061148006
	.long	1061154675
	.long	1061161339
	.long	1061167999
	.long	1061174653
	.long	1061181302
	.long	1061187946
	.long	1061194586
	.long	1061201220
	.long	1061207850
	.long	1061214474
	.long	1061221093
	.long	1061227708
	.long	1061234317
	.long	1061240922
	.long	1061247521
	.long	1061254116
	.long	1061260705
	.long	1061267289
	.long	1061273869
	.long	1061280443
	.long	1061287012
	.long	1061293576
	.long	1061300135
	.long	1061306689
	.long	1061313238
	.long	1061319782
	.long	1061326321
	.long	1061332855
	.long	1061339384
	.long	1061345907
	.long	1061352426
	.long	1061358939
	.long	1061365447
	.long	1061371951
	.long	1061378449
	.long	1061384942
	.long	1061391429
	.long	1061397912
	.long	1061404390
	.long	1061410862
	.long	1061417329
	.long	1061423791
	.long	1061430248
	.long	1061436700
	.long	1061443147
	.long	1061449588
	.long	1061456025
	.long	1061462456
	.long	1061468882
	.long	1061475302
	.long	1061481718
	.long	1061488128
	.long	1061494533
	.long	1061500933
	.long	1061507328
	.long	1061513717
	.long	1061520102
	.long	1061526481
	.long	1061532854
	.long	1061539223
	.long	1061545586
	.long	1061551944
	.long	1061558297
	.long	1061564645
	.long	1061570987
	.long	1061577324
	.long	1061583656
	.long	1061589982
	.long	1061596303
	.long	1061602619
	.long	1061608930
	.long	1061615235
	.long	1061621535
	.long	1061627830
	.long	1061634119
	.long	1061640403
	.long	1061646682
	.long	1061652956
	.long	1061659224
	.long	1061665487
	.long	1061671744
	.long	1061677996
	.long	1061684243
	.long	1061690484
	.long	1061696721
	.long	1061702951
	.long	1061709177
	.long	1061715397
	.long	1061721611
	.long	1061727821
	.long	1061734025
	.long	1061740223
	.long	1061746416
	.long	1061752604
	.long	1061758786
	.long	1061764963
	.long	1061771135
	.long	1061777301
	.long	1061783462
	.long	1061789617
	.long	1061795767
	.long	1061801911
	.long	1061808050
	.long	1061814184
	.long	1061820312
	.long	1061826435
	.long	1061832552
	.long	1061838664
	.long	1061844770
	.long	1061850871
	.long	1061856967
	.long	1061863057
	.long	1061869141
	.long	1061875220
	.long	1061881294
	.long	1061887362
	.long	1061893425
	.long	1061899482
	.long	1061905534
	.long	1061911580
	.long	1061917621
	.long	1061923656
	.long	1061929685
	.long	1061935709
	.long	1061941728
	.long	1061947741
	.long	1061953749
	.long	1061959751
	.long	1061965747
	.long	1061971738
	.long	1061977724
	.long	1061983704
	.long	1061989678
	.long	1061995647
	.long	1062001610
	.long	1062007568
	.long	1062013520
	.long	1062019467
	.long	1062025408
	.long	1062031344
	.long	1062037274
	.long	1062043198
	.long	1062049117
	.long	1062055030
	.long	1062060937
	.long	1062066839
	.long	1062072736
	.long	1062078627
	.long	1062084512
	.long	1062090391
	.long	1062096265
	.long	1062102134
	.long	1062107997
	.long	1062113854
	.long	1062119705
	.long	1062125551
	.long	1062131392
	.long	1062137226
	.long	1062143055
	.long	1062148879
	.long	1062154697
	.long	1062160509
	.long	1062166315
	.long	1062172116
	.long	1062177911
	.long	1062183701
	.long	1062189484
	.long	1062195263
	.long	1062201035
	.long	1062206802
	.long	1062212563
	.long	1062218319
	.long	1062224069
	.long	1062229813
	.long	1062235551
	.long	1062241284
	.long	1062247011
	.long	1062252733
	.long	1062258448
	.long	1062264158
	.long	1062269863
	.long	1062275561
	.long	1062281254
	.long	1062286941
	.long	1062292623
	.long	1062298299
	.long	1062303969
	.long	1062309633
	.long	1062315292
	.long	1062320944
	.long	1062326592
	.long	1062332233
	.long	1062337869
	.long	1062343499
	.long	1062349123
	.long	1062354741
	.long	1062360354
	.long	1062365961
	.long	1062371562
	.long	1062377158
	.long	1062382747
	.long	1062388331
	.long	1062393909
	.long	1062399482
	.long	1062405049
	.long	1062410609
	.long	1062416165
	.long	1062421714
	.long	1062427257
	.long	1062432795
	.long	1062438327
	.long	1062443853
	.long	1062449374
	.long	1062454888
	.long	1062460397
	.long	1062465900
	.long	1062471398
	.long	1062476889
	.long	1062482375
	.long	1062487854
	.long	1062493329
	.long	1062498797
	.long	1062504259
	.long	1062509716
	.long	1062515167
	.long	1062520611
	.long	1062526051
	.long	1062531484
	.long	1062536911
	.long	1062542333
	.long	1062547749
	.long	1062553159
	.long	1062558563
	.long	1062563961
	.long	1062569354
	.long	1062574741
	.long	1062580121
	.long	1062585496
	.long	1062590866
	.long	1062596229
	.long	1062601586
	.long	1062606938
	.long	1062612284
	.long	1062617624
	.long	1062622958
	.long	1062628286
	.long	1062633608
	.long	1062638924
	.long	1062644235
	.long	1062649540
	.long	1062654838
	.long	1062660131
	.long	1062665419
	.long	1062670700
	.long	1062675975
	.long	1062681244
	.long	1062686508
	.long	1062691766
	.long	1062697018
	.long	1062702263
	.long	1062707503
	.long	1062712738
	.long	1062717966
	.long	1062723188
	.long	1062728405
	.long	1062733615
	.long	1062738820
	.long	1062744019
	.long	1062749212
	.long	1062754399
	.long	1062759580
	.long	1062764755
	.long	1062769924
	.long	1062775087
	.long	1062780245
	.long	1062785396
	.long	1062790542
	.long	1062795682
	.long	1062800815
	.long	1062805943
	.long	1062811065
	.long	1062816181
	.long	1062821291
	.long	1062826395
	.long	1062831494
	.long	1062836586
	.long	1062841672
	.long	1062846753
	.long	1062851827
	.long	1062856896
	.long	1062861959
	.long	1062867015
	.long	1062872066
	.long	1062877111
	.long	1062882150
	.long	1062887183
	.long	1062892210
	.long	1062897231
	.long	1062902246
	.long	1062907255
	.long	1062912259
	.long	1062917256
	.long	1062922247
	.long	1062927233
	.long	1062932212
	.long	1062937186
	.long	1062942153
	.long	1062947115
	.long	1062952071
	.long	1062957020
	.long	1062961964
	.long	1062966902
	.long	1062971834
	.long	1062976760
	.long	1062981679
	.long	1062986593
	.long	1062991501
	.long	1062996403
	.long	1063001300
	.long	1063006190
	.long	1063011074
	.long	1063015952
	.long	1063020824
	.long	1063025690
	.long	1063030551
	.long	1063035405
	.long	1063040253
	.long	1063045096
	.long	1063049932
	.long	1063054763
	.long	1063059587
	.long	1063064406
	.long	1063069218
	.long	1063074025
	.long	1063078825
	.long	1063083620
	.long	1063088408
	.long	1063093191
	.long	1063097968
	.long	1063102738
	.long	1063107503
	.long	1063112262
	.long	1063117015
	.long	1063121761
	.long	1063126502
	.long	1063131237
	.long	1063135966
	.long	1063140689
	.long	1063145406
	.long	1063150116
	.long	1063154821
	.long	1063159520
	.long	1063164213
	.long	1063168900
	.long	1063173581
	.long	1063178256
	.long	1063182925
	.long	1063187588
	.long	1063192245
	.long	1063196896
	.long	1063201541
	.long	1063206180
	.long	1063210813
	.long	1063215440
	.long	1063220061
	.long	1063224677
	.long	1063229286
	.long	1063233889
	.long	1063238486
	.long	1063243077
	.long	1063247662
	.long	1063252242
	.long	1063256815
	.long	1063261382
	.long	1063265943
	.long	1063270498
	.long	1063275048
	.long	1063279591
	.long	1063284128
	.long	1063288660
	.long	1063293185
	.long	1063297704
	.long	1063302217
	.long	1063306725
	.long	1063311226
	.long	1063315722
	.long	1063320211
	.long	1063324694
	.long	1063329172
	.long	1063333643
	.long	1063338109
	.long	1063342568
	.long	1063347021
	.long	1063351469
	.long	1063355910
	.long	1063360346
	.long	1063364775
	.long	1063369199
	.long	1063373616
	.long	1063378028
	.long	1063382434
	.long	1063386833
	.long	1063391227
	.long	1063395614
	.long	1063399996
	.long	1063404372
	.long	1063408741
	.long	1063413105
	.long	1063417463
	.long	1063421815
	.long	1063426160
	.long	1063430500
	.long	1063434834
	.long	1063439162
	.long	1063443484
	.long	1063447799
	.long	1063452109
	.long	1063456413
	.long	1063460711
	.long	1063465003
	.long	1063469289
	.long	1063473569
	.long	1063477843
	.long	1063482111
	.long	1063486373
	.long	1063490629
	.long	1063494880
	.long	1063499124
	.long	1063503362
	.long	1063507594
	.long	1063511821
	.long	1063516041
	.long	1063520255
	.long	1063524464
	.long	1063528666
	.long	1063532862
	.long	1063537053
	.long	1063541238
	.long	1063545416
	.long	1063549589
	.long	1063553755
	.long	1063557916
	.long	1063562071
	.long	1063566220
	.long	1063570362
	.long	1063574499
	.long	1063578630
	.long	1063582755
	.long	1063586874
	.long	1063590987
	.long	1063595094
	.long	1063599195
	.long	1063603291
	.long	1063607380
	.long	1063611463
	.long	1063615541
	.long	1063619612
	.long	1063623678
	.long	1063627737
	.long	1063631791
	.long	1063635838
	.long	1063639880
	.long	1063643916
	.long	1063647946
	.long	1063651970
	.long	1063655988
	.long	1063660000
	.long	1063664006
	.long	1063668006
	.long	1063672001
	.long	1063675989
	.long	1063679971
	.long	1063683948
	.long	1063687918
	.long	1063691883
	.long	1063695842
	.long	1063699795
	.long	1063703742
	.long	1063707683
	.long	1063711618
	.long	1063715547
	.long	1063719470
	.long	1063723388
	.long	1063727299
	.long	1063731205
	.long	1063735104
	.long	1063738998
	.long	1063742886
	.long	1063746768
	.long	1063750644
	.long	1063754514
	.long	1063758378
	.long	1063762237
	.long	1063766089
	.long	1063769936
	.long	1063773776
	.long	1063777611
	.long	1063781440
	.long	1063785263
	.long	1063789080
	.long	1063792891
	.long	1063796697
	.long	1063800496
	.long	1063804290
	.long	1063808078
	.long	1063811860
	.long	1063815636
	.long	1063819406
	.long	1063823170
	.long	1063826928
	.long	1063830681
	.long	1063834428
	.long	1063838169
	.long	1063841904
	.long	1063845633
	.long	1063849356
	.long	1063853073
	.long	1063856785
	.long	1063860491
	.long	1063864191
	.long	1063867885
	.long	1063871573
	.long	1063875255
	.long	1063878932
	.long	1063882602
	.long	1063886267
	.long	1063889926
	.long	1063893579
	.long	1063897227
	.long	1063900868
	.long	1063904504
	.long	1063908134
	.long	1063911758
	.long	1063915376
	.long	1063918989
	.long	1063922595
	.long	1063926196
	.long	1063929791
	.long	1063933380
	.long	1063936964
	.long	1063940541
	.long	1063944113
	.long	1063947679
	.long	1063951239
	.long	1063954794
	.long	1063958342
	.long	1063961885
	.long	1063965422
	.long	1063968954
	.long	1063972479
	.long	1063975999
	.long	1063979513
	.long	1063983021
	.long	1063986523
	.long	1063990020
	.long	1063993511
	.long	1063996996
	.long	1064000475
	.long	1064003949
	.long	1064007417
	.long	1064010879
	.long	1064014335
	.long	1064017786
	.long	1064021230
	.long	1064024670
	.long	1064028103
	.long	1064031530
	.long	1064034952
	.long	1064038368
	.long	1064041779
	.long	1064045184
	.long	1064048582
	.long	1064051976
	.long	1064055363
	.long	1064058745
	.long	1064062121
	.long	1064065491
	.long	1064068856
	.long	1064072215
	.long	1064075568
	.long	1064078916
	.long	1064082258
	.long	1064085594
	.long	1064088924
	.long	1064092249
	.long	1064095568
	.long	1064098881
	.long	1064102189
	.long	1064105491
	.long	1064108787
	.long	1064112078
	.long	1064115363
	.long	1064118642
	.long	1064121916
	.long	1064125184
	.long	1064128446
	.long	1064131703
	.long	1064134954
	.long	1064138199
	.long	1064141439
	.long	1064144673
	.long	1064147901
	.long	1064151124
	.long	1064154341
	.long	1064157553
	.long	1064160759
	.long	1064163959
	.long	1064167154
	.long	1064170343
	.long	1064173526
	.long	1064176704
	.long	1064179876
	.long	1064183043
	.long	1064186203
	.long	1064189359
	.long	1064192509
	.long	1064195653
	.long	1064198791
	.long	1064201924
	.long	1064205052
	.long	1064208173
	.long	1064211290
	.long	1064214400
	.long	1064217505
	.long	1064220605
	.long	1064223699
	.long	1064226787
	.long	1064229870
	.long	1064232947
	.long	1064236019
	.long	1064239085
	.long	1064242146
	.long	1064245201
	.long	1064248250
	.long	1064251294
	.long	1064254333
	.long	1064257365
	.long	1064260393
	.long	1064263415
	.long	1064266431
	.long	1064269442
	.long	1064272447
	.long	1064275447
	.long	1064278441
	.long	1064281430
	.long	1064284413
	.long	1064287391
	.long	1064290363
	.long	1064293330
	.long	1064296291
	.long	1064299247
	.long	1064302197
	.long	1064305142
	.long	1064308082
	.long	1064311015
	.long	1064313944
	.long	1064316867
	.long	1064319784
	.long	1064322697
	.long	1064325603
	.long	1064328504
	.long	1064331400
	.long	1064334290
	.long	1064337175
	.long	1064340055
	.long	1064342929
	.long	1064345797
	.long	1064348660
	.long	1064351518
	.long	1064354370
	.long	1064357217
	.long	1064360059
	.long	1064362895
	.long	1064365725
	.long	1064368551
	.long	1064371371
	.long	1064374185
	.long	1064376994
	.long	1064379798
	.long	1064382596
	.long	1064385389
	.long	1064388177
	.long	1064390959
	.long	1064393736
	.long	1064396507
	.long	1064399274
	.long	1064402034
	.long	1064404790
	.long	1064407540
	.long	1064410285
	.long	1064413024
	.long	1064415758
	.long	1064418487
	.long	1064421211
	.long	1064423929
	.long	1064426642
	.long	1064429349
	.long	1064432051
	.long	1064434748
	.long	1064437440
	.long	1064440126
	.long	1064442807
	.long	1064445483
	.long	1064448154
	.long	1064450819
	.long	1064453479
	.long	1064456133
	.long	1064458783
	.long	1064461427
	.long	1064464066
	.long	1064466699
	.long	1064469327
	.long	1064471951
	.long	1064474568
	.long	1064477181
	.long	1064479788
	.long	1064482391
	.long	1064484987
	.long	1064487579
	.long	1064490166
	.long	1064492747
	.long	1064495323
	.long	1064497894
	.long	1064500459
	.long	1064503020
	.long	1064505575
	.long	1064508125
	.long	1064510670
	.long	1064513210
	.long	1064515744
	.long	1064518274
	.long	1064520798
	.long	1064523317
	.long	1064525831
	.long	1064528340
	.long	1064530843
	.long	1064533342
	.long	1064535835
	.long	1064538323
	.long	1064540806
	.long	1064543284
	.long	1064545757
	.long	1064548224
	.long	1064550687
	.long	1064553144
	.long	1064555597
	.long	1064558044
	.long	1064560486
	.long	1064562923
	.long	1064565355
	.long	1064567782
	.long	1064570204
	.long	1064572620
	.long	1064575032
	.long	1064577439
	.long	1064579840
	.long	1064582237
	.long	1064584628
	.long	1064587014
	.long	1064589396
	.long	1064591772
	.long	1064594143
	.long	1064596509
	.long	1064598871
	.long	1064601227
	.long	1064603578
	.long	1064605924
	.long	1064608265
	.long	1064610601
	.long	1064612932
	.long	1064615259
	.long	1064617580
	.long	1064619896
	.long	1064622207
	.long	1064624513
	.long	1064626815
	.long	1064629111
	.long	1064631402
	.long	1064633689
	.long	1064635970
	.long	1064638246
	.long	1064640518
	.long	1064642785
	.long	1064645046
	.long	1064647303
	.long	1064649555
	.long	1064651802
	.long	1064654044
	.long	1064656281
	.long	1064658513
	.long	1064660740
	.long	1064662963
	.long	1064665180
	.long	1064667393
	.long	1064669600
	.long	1064671803
	.long	1064674001
	.long	1064676194
	.long	1064678383
	.long	1064680566
	.long	1064682745
	.long	1064684918
	.long	1064687087
	.long	1064689251
	.long	1064691410
	.long	1064693565
	.long	1064695714
	.long	1064697859
	.long	1064699999
	.long	1064702134
	.long	1064704264
	.long	1064706390
	.long	1064708511
	.long	1064710627
	.long	1064712738
	.long	1064714844
	.long	1064716946
	.long	1064719043
	.long	1064721135
	.long	1064723222
	.long	1064725305
	.long	1064727382
	.long	1064729456
	.long	1064731524
	.long	1064733588
	.long	1064735646
	.long	1064737701
	.long	1064739750
	.long	1064741795
	.long	1064743835
	.long	1064745870
	.long	1064747901
	.long	1064749927
	.long	1064751948
	.long	1064753965
	.long	1064755977
	.long	1064757984
	.long	1064759986
	.long	1064761984
	.long	1064763978
	.long	1064765966
	.long	1064767950
	.long	1064769929
	.long	1064771904
	.long	1064773874
	.long	1064775840
	.long	1064777800
	.long	1064779757
	.long	1064781708
	.long	1064783655
	.long	1064785598
	.long	1064787535
	.long	1064789468
	.long	1064791397
	.long	1064793321
	.long	1064795241
	.long	1064797156
	.long	1064799066
	.long	1064800972
	.long	1064802873
	.long	1064804770
	.long	1064806662
	.long	1064808549
	.long	1064810432
	.long	1064812311
	.long	1064814185
	.long	1064816054
	.long	1064817919
	.long	1064819780
	.long	1064821636
	.long	1064823487
	.long	1064825334
	.long	1064827177
	.long	1064829015
	.long	1064830849
	.long	1064832678
	.long	1064834502
	.long	1064836323
	.long	1064838138
	.long	1064839950
	.long	1064841756
	.long	1064843559
	.long	1064845357
	.long	1064847150
	.long	1064848940
	.long	1064850724
	.long	1064852505
	.long	1064854281
	.long	1064856052
	.long	1064857819
	.long	1064859582
	.long	1064861340
	.long	1064863094
	.long	1064864844
	.long	1064866589
	.long	1064868330
	.long	1064870067
	.long	1064871799
	.long	1064873527
	.long	1064875250
	.long	1064876969
	.long	1064878684
	.long	1064880395
	.long	1064882101
	.long	1064883803
	.long	1064885500
	.long	1064887194
	.long	1064888883
	.long	1064890567
	.long	1064892248
	.long	1064893924
	.long	1064895596
	.long	1064897264
	.long	1064898927
	.long	1064900586
	.long	1064902241
	.long	1064903891
	.long	1064905538
	.long	1064907180
	.long	1064908818
	.long	1064910452
	.long	1064912081
	.long	1064913706
	.long	1064915327
	.long	1064916944
	.long	1064918557
	.long	1064920165
	.long	1064921770
	.long	1064923370
	.long	1064924966
	.long	1064926557
	.long	1064928145
	.long	1064929729
	.long	1064931308
	.long	1064932883
	.long	1064934454
	.long	1064936021
	.long	1064937584
	.long	1064939142
	.long	1064940697
	.long	1064942247
	.long	1064943794
	.long	1064945336
	.long	1064946874
	.long	1064948408
	.long	1064949938
	.long	1064951464
	.long	1064952986
	.long	1064954503
	.long	1064956017
	.long	1064957527
	.long	1064959032
	.long	1064960534
	.long	1064962031
	.long	1064963525
	.long	1064965014
	.long	1064966500
	.long	1064967981
	.long	1064969459
	.long	1064970932
	.long	1064972401
	.long	1064973867
	.long	1064975328
	.long	1064976786
	.long	1064978239
	.long	1064979689
	.long	1064981134
	.long	1064982576
	.long	1064984014
	.long	1064985447
	.long	1064986877
	.long	1064988303
	.long	1064989725
	.long	1064991143
	.long	1064992557
	.long	1064993967
	.long	1064995373
	.long	1064996776
	.long	1064998174
	.long	1064999569
	.long	1065000959
	.long	1065002346
	.long	1065003729
	.long	1065005108
	.long	1065006483
	.long	1065007855
	.long	1065009222
	.long	1065010586
	.long	1065011946
	.long	1065013302
	.long	1065014654
	.long	1065016002
	.long	1065017347
	.long	1065018688
	.long	1065020025
	.long	1065021358
	.long	1065022687
	.long	1065024013
	.long	1065025335
	.long	1065026653
	.long	1065027967
	.long	1065029277
	.long	1065030584
	.long	1065031887
	.long	1065033187
	.long	1065034482
	.long	1065035774
	.long	1065037062
	.long	1065038346
	.long	1065039627
	.long	1065040904
	.long	1065042177
	.long	1065043447
	.long	1065044713
	.long	1065045975
	.long	1065047233
	.long	1065048488
	.long	1065049739
	.long	1065050987
	.long	1065052231
	.long	1065053471
	.long	1065054707
	.long	1065055940
	.long	1065057170
	.long	1065058395
	.long	1065059617
	.long	1065060836
	.long	1065062051
	.long	1065063262
	.long	1065064470
	.long	1065065674
	.long	1065066874
	.long	1065068071
	.long	1065069264
	.long	1065070454
	.long	1065071640
	.long	1065072823
	.long	1065074002
	.long	1065075177
	.long	1065076349
	.long	1065077518
	.long	1065078683
	.long	1065079844
	.long	1065081002
	.long	1065082157
	.long	1065083308
	.long	1065084455
	.long	1065085599
	.long	1065086739
	.long	1065087876
	.long	1065089010
	.long	1065090140
	.long	1065091267
	.long	1065092390
	.long	1065093509
	.long	1065094626
	.long	1065095738
	.long	1065096848
	.long	1065097954
	.long	1065099056
	.long	1065100155
	.long	1065101251
	.long	1065102343
	.long	1065103432
	.long	1065104518
	.long	1065105600
	.long	1065106679
	.long	1065107754
	.long	1065108826
	.long	1065109895
	.long	1065110960
	.long	1065112022
	.long	1065113081
	.long	1065114136
	.long	1065115188
	.long	1065116237
	.long	1065117282
	.long	1065118324
	.long	1065119363
	.long	1065120398
	.long	1065121430
	.long	1065122459
	.long	1065123485
	.long	1065124507
	.long	1065125526
	.long	1065126542
	.long	1065127554
	.long	1065128564
	.long	1065129570
	.long	1065130573
	.long	1065131572
	.long	1065132568
	.long	1065133561
	.long	1065134551
	.long	1065135538
	.long	1065136521
	.long	1065137502
	.long	1065138479
	.long	1065139453
	.long	1065140423
	.long	1065141391
	.long	1065142355
	.long	1065143316
	.long	1065144275
	.long	1065145229
	.long	1065146181
	.long	1065147130
	.long	1065148075
	.long	1065149018
	.long	1065149957
	.long	1065150893
	.long	1065151826
	.long	1065152756
	.long	1065153683
	.long	1065154606
	.long	1065155527
	.long	1065156445
	.long	1065157359
	.long	1065158271
	.long	1065159179
	.long	1065160084
	.long	1065160987
	.long	1065161886
	.long	1065162782
	.long	1065163675
	.long	1065164565
	.long	1065165452
	.long	1065166336
	.long	1065167218
	.long	1065168096
	.long	1065168971
	.long	1065169843
	.long	1065170712
	.long	1065171578
	.long	1065172441
	.long	1065173302
	.long	1065174159
	.long	1065175013
	.long	1065175864
	.long	1065176713
	.long	1065177558
	.long	1065178401
	.long	1065179240
	.long	1065180077
	.long	1065180911
	.long	1065181742
	.long	1065182570
	.long	1065183395
	.long	1065184217
	.long	1065185036
	.long	1065185853
	.long	1065186666
	.long	1065187477
	.long	1065188285
	.long	1065189090
	.long	1065189892
	.long	1065190692
	.long	1065191488
	.long	1065192282
	.long	1065193072
	.long	1065193861
	.long	1065194646
	.long	1065195428
	.long	1065196208
	.long	1065196985
	.long	1065197759
	.long	1065198530
	.long	1065199298
	.long	1065200064
	.long	1065200827
	.long	1065201587
	.long	1065202344
	.long	1065203099
	.long	1065203851
	.long	1065204600
	.long	1065205347
	.long	1065206090
	.long	1065206832
	.long	1065207570
	.long	1065208305
	.long	1065209038
	.long	1065209769
	.long	1065210496
	.long	1065211221
	.long	1065211943
	.long	1065212663
	.long	1065213380
	.long	1065214094
	.long	1065214805
	.long	1065215514
	.long	1065216220
	.long	1065216924
	.long	1065217625
	.long	1065218323
	.long	1065219019
	.long	1065219712
	.long	1065220403
	.long	1065221091
	.long	1065221776
	.long	1065222459
	.long	1065223139
	.long	1065223817
	.long	1065224492
	.long	1065225164
	.long	1065225834
	.long	1065226502
	.long	1065227166
	.long	1065227829
	.long	1065228488
	.long	1065229146
	.long	1065229800
	.long	1065230452
	.long	1065231102
	.long	1065231749
	.long	1065232394
	.long	1065233036
	.long	1065233676
	.long	1065234313
	.long	1065234948
	.long	1065235580
	.long	1065236210
	.long	1065236837
	.long	1065237462
	.long	1065238084
	.long	1065238704
	.long	1065239322
	.long	1065239937
	.long	1065240550
	.long	1065241160
	.long	1065241768
	.long	1065242373
	.long	1065242976
	.long	1065243577
	.long	1065244175
	.long	1065244771
	.long	1065245365
	.long	1065245956
	.long	1065246545
	.long	1065247131
	.long	1065247715
	.long	1065248297
	.long	1065248876
	.long	1065249453
	.long	1065250028
	.long	1065250600
	.long	1065251170
	.long	1065251738
	.long	1065252304
	.long	1065252867
	.long	1065253427
	.long	1065253986
	.long	1065254542
	.long	1065255096
	.long	1065255648
	.long	1065256197
	.long	1065256744
	.long	1065257289
	.long	1065257832
	.long	1065258372
	.long	1065258911
	.long	1065259447
	.long	1065259980
	.long	1065260512
	.long	1065261041
	.long	1065261568
	.long	1065262093
	.long	1065262616
	.long	1065263136
	.long	1065263654
	.long	1065264170
	.long	1065264684
	.long	1065265196
	.long	1065265705
	.long	1065266213
	.long	1065266718
	.long	1065267221
	.long	1065267722
	.long	1065268221
	.long	1065268718
	.long	1065269212
	.long	1065269705
	.long	1065270195
	.long	1065270683
	.long	1065271169
	.long	1065271653
	.long	1065272135
	.long	1065272615
	.long	1065273093
	.long	1065273568
	.long	1065274042
	.long	1065274513
	.long	1065274983
	.long	1065275450
	.long	1065275916
	.long	1065276379
	.long	1065276840
	.long	1065277299
	.long	1065277757
	.long	1065278212
	.long	1065278665
	.long	1065279116
	.long	1065279565
	.long	1065280012
	.long	1065280458
	.long	1065280901
	.long	1065281342
	.long	1065281781
	.long	1065282218
	.long	1065282654
	.long	1065283087
	.long	1065283518
	.long	1065283948
	.long	1065284375
	.long	1065284801
	.long	1065285224
	.long	1065285646
	.long	1065286066
	.long	1065286484
	.long	1065286899
	.long	1065287313
	.long	1065287726
	.long	1065288136
	.long	1065288544
	.long	1065288951
	.long	1065289355
	.long	1065289758
	.long	1065290159
	.long	1065290558
	.long	1065290955
	.long	1065291350
	.long	1065291743
	.long	1065292135
	.long	1065292525
	.long	1065292912
	.long	1065293298
	.long	1065293683
	.long	1065294065
	.long	1065294446
	.long	1065294825
	.long	1065295202
	.long	1065295577
	.long	1065295950
	.long	1065296322
	.long	1065296692
	.long	1065297060
	.long	1065297426
	.long	1065297791
	.long	1065298154
	.long	1065298515
	.long	1065298874
	.long	1065299232
	.long	1065299587
	.long	1065299942
	.long	1065300294
	.long	1065300645
	.long	1065300994
	.long	1065301341
	.long	1065301686
	.long	1065302030
	.long	1065302372
	.long	1065302713
	.long	1065303052
	.long	1065303389
	.long	1065303724
	.long	1065304058
	.long	1065304390
	.long	1065304721
	.long	1065305049
	.long	1065305377
	.long	1065305702
	.long	1065306026
	.long	1065306348
	.long	1065306669
	.long	1065306988
	.long	1065307305
	.long	1065307621
	.long	1065307935
	.long	1065308248
	.long	1065308559
	.long	1065308868
	.long	1065309176
	.long	1065309482
	.long	1065309787
	.long	1065310090
	.long	1065310392
	.long	1065310692
	.long	1065310990
	.long	1065311287
	.long	1065311582
	.long	1065311876
	.long	1065312169
	.long	1065312459
	.long	1065312749
	.long	1065313036
	.long	1065313322
	.long	1065313607
	.long	1065313890
	.long	1065314172
	.long	1065314452
	.long	1065314731
	.long	1065315008
	.long	1065315284
	.long	1065315558
	.long	1065315831
	.long	1065316102
	.long	1065316372
	.long	1065316641
	.long	1065316908
	.long	1065317173
	.long	1065317437
	.long	1065317700
	.long	1065317961
	.long	1065318221
	.long	1065318479
	.long	1065318736
	.long	1065318992
	.long	1065319246
	.long	1065319499
	.long	1065319750
	.long	1065320000
	.long	1065320249
	.long	1065320496
	.long	1065320742
	.long	1065320987
	.long	1065321230
	.long	1065321472
	.long	1065321712
	.long	1065321951
	.long	1065322189
	.long	1065322425
	.long	1065322660
	.long	1065322894
	.long	1065323126
	.long	1065323357
	.long	1065323587
	.long	1065323816
	.long	1065324043
	.long	1065324269
	.long	1065324493
	.long	1065324717
	.long	1065324939
	.long	1065325159
	.long	1065325379
	.long	1065325597
	.long	1065325814
	.long	1065326029
	.long	1065326244
	.long	1065326457
	.long	1065326669
	.long	1065326879
	.long	1065327089
	.long	1065327297
	.long	1065327504
	.long	1065327709
	.long	1065327914
	.long	1065328117
	.long	1065328319
	.long	1065328520
	.long	1065328719
	.long	1065328918
	.long	1065329115
	.long	1065329311
	.long	1065329506
	.long	1065329700
	.long	1065329892
	.long	1065330083
	.long	1065330274
	.long	1065330463
	.long	1065330651
	.long	1065330837
	.long	1065331023
	.long	1065331207
	.long	1065331390
	.long	1065331573
	.long	1065331754
	.long	1065331933
	.long	1065332112
	.long	1065332290
	.long	1065332466
	.long	1065332642
	.long	1065332816
	.long	1065332989
	.long	1065333161
	.long	1065333333
	.long	1065333502
	.long	1065333671
	.long	1065333839
	.long	1065334006
	.long	1065334172
	.long	1065334336
	.long	1065334500
	.long	1065334662
	.long	1065334824
	.long	1065334984
	.long	1065335143
	.long	1065335302
	.long	1065335459
	.long	1065335615
	.long	1065335771
	.long	1065335925
	.long	1065336078
	.long	1065336230
	.long	1065336381
	.long	1065336532
	.long	1065336681
	.long	1065336829
	.long	1065336976
	.long	1065337122
	.long	1065337268
	.long	1065337412
	.long	1065337555
	.long	1065337698
	.long	1065337839
	.long	1065337979
	.long	1065338119
	.long	1065338257
	.long	1065338395
	.long	1065338531
	.long	1065338667
	.long	1065338802
	.long	1065338936
	.long	1065339069
	.long	1065339201
	.long	1065339332
	.long	1065339462
	.long	1065339591
	.long	1065339719
	.long	1065339847
	.long	1065339973
	.long	1065340099
	.long	1065340224
	.long	1065340347
	.long	1065340470
	.long	1065340593
	.long	1065340714
	.long	1065340834
	.long	1065340954
	.long	1065341072
	.long	1065341190
	.long	1065341307
	.long	1065341423
	.long	1065341538
	.long	1065341653
	.long	1065341766
	.long	1065341879
	.long	1065341991
	.long	1065342102
	.long	1065342212
	.long	1065342322
	.long	1065342430
	.long	1065342538
	.long	1065342645
	.long	1065342752
	.long	1065342857
	.long	1065342962
	.long	1065343065
	.long	1065343168
	.long	1065343271
	.long	1065343372
	.long	1065343473
	.long	1065343573
	.long	1065343672
	.long	1065343771
	.long	1065343868
	.long	1065343965
	.long	1065344061
	.long	1065344157
	.long	1065344251
	.long	1065344345
	.long	1065344439
	.long	1065344531
	.long	1065344623
	.long	1065344714
	.long	1065344804
	.long	1065344894
	.long	1065344983
	.long	1065345071
	.long	1065345158
	.long	1065345245
	.long	1065345331
	.long	1065345417
	.long	1065345501
	.long	1065345585
	.long	1065345669
	.long	1065345751
	.long	1065345833
	.long	1065345914
	.long	1065345995
	.long	1065346075
	.long	1065346154
	.long	1065346233
	.long	1065346311
	.long	1065346388
	.long	1065346465
	.long	1065346541
	.long	1065346616
	.long	1065346691
	.long	1065346765
	.long	1065346839
	.long	1065346912
	.long	1065346984
	.long	1065347055
	.long	1065347126
	.long	1065347197
	.long	1065347267
	.long	1065347336
	.long	1065347404
	.long	1065347472
	.long	1065347540
	.long	1065347607
	.long	1065347673
	.long	1065347738
	.long	1065347803
	.long	1065347868
	.long	1065347932
	.long	1065347995
	.long	1065348058
	.long	1065348120
	.long	1065348182
	.long	1065348243
	.long	1065348303
	.long	1065348363
	.long	1065348423
	.long	1065348482
	.long	1065348540
	.long	1065348598
	.long	1065348655
	.long	1065348712
	.long	1065348768
	.long	1065348824
	.long	1065348879
	.long	1065348933
	.long	1065348987
	.long	1065349041
	.long	1065349094
	.long	1065349147
	.long	1065349199
	.long	1065349250
	.long	1065349302
	.long	1065349352
	.long	1065349402
	.long	1065349452
	.long	1065349501
	.long	1065349550
	.long	1065349598
	.long	1065349646
	.long	1065349693
	.long	1065349740
	.long	1065349786
	.long	1065349832
	.long	1065349877
	.long	1065349922
	.long	1065349967
	.long	1065350011
	.long	1065350054
	.long	1065350097
	.long	1065350140
	.long	1065350182
	.long	1065350224
	.long	1065350265
	.long	1065350306
	.long	1065350347
	.long	1065350387
	.long	1065350427
	.long	1065350466
	.long	1065350505
	.long	1065350543
	.long	1065350581
	.long	1065350619
	.long	1065350656
	.long	1065350693
	.long	1065350729
	.long	1065350765
	.long	1065350801
	.long	1065350836
	.long	1065350871
	.long	1065350906
	.long	1065350940
	.long	1065350974
	.long	1065351007
	.long	1065351040
	.long	1065351072
	.long	1065351105
	.long	1065351137
	.long	1065351168
	.long	1065351199
	.long	1065351230
	.long	1065351261
	.long	1065351291
	.long	1065351320
	.long	1065351350
	.long	1065351379
	.long	1065351408
	.long	1065351436
	.long	1065351464
	.long	1065351492
	.long	1065351519
	.long	1065351546
	.long	1065351573
	.long	1065351599
	.long	1065351626
	.long	1065351651
	.long	1065351677
	.long	1065351702
	.long	1065351727
	.long	1065351751
	.long	1065351776
	.long	1065351800
	.long	1065351823
	.long	1065351846
	.long	1065351870
	.long	1065351892
	.long	1065351915
	.long	1065351937
	.long	1065351959
	.long	1065351980
	.long	1065352002
	.long	1065352023
	.long	1065352044
	.long	1065352064
	.long	1065352084
	.long	1065352104
	.long	1065352124
	.long	1065352144
	.long	1065352163
	.long	1065352182
	.long	1065352200
	.long	1065352219
	.long	1065352237
	.long	1065352255
	.long	1065352273
	.long	1065352290
	.long	1065352307
	.long	1065352324
	.long	1065352341
	.long	1065352357
	.long	1065352374
	.long	1065352390
	.long	1065352405
	.long	1065352421
	.long	1065352436
	.long	1065352451
	.long	1065352466
	.long	1065352481
	.long	1065352495
	.long	1065352510
	.long	1065352524
	.long	1065352537
	.long	1065352551
	.long	1065352564
	.long	1065352578
	.long	1065352591
	.long	1065352603
	.long	1065352616
	.long	1065352629
	.long	1065352641
	.long	1065352653
	.long	1065352665
	.long	1065352676
	.long	1065352688
	.long	1065352699
	.long	1065352710
	.long	1065352721
	.long	1065352732
	.long	1065352742
	.long	1065352753
	.long	1065352763
	.long	1065352773
	.long	1065352783
	.long	1065352793
	.long	1065352802
	.long	1065352812
	.long	1065352821
	.long	1065352830
	.long	1065352839
	.long	1065352848
	.long	1065352856
	.long	1065352865
	.long	1065352873
	.long	1065352881
	.long	1065352889
	.long	1065352897
	.long	1065352905
	.long	1065352912
	.long	1065352920
	.long	1065352927
	.long	1065352934
	.long	1065352941
	.long	1065352948
	.long	1065352955
	.long	1065352962
	.long	1065352968
	.long	1065352974
	.long	1065352981
	.long	1065352987
	.long	1065352993
	.long	1065352999
	.long	1065353005
	.long	1065353010
	.long	1065353016
	.long	1065353021
	.long	1065353027
	.long	1065353032
	.long	1065353037
	.long	1065353042
	.long	1065353047
	.long	1065353052
	.long	1065353056
	.long	1065353061
	.long	1065353065
	.long	1065353070
	.long	1065353074
	.long	1065353078
	.long	1065353082
	.long	1065353086
	.long	1065353090
	.long	1065353094
	.long	1065353098
	.long	1065353102
	.long	1065353105
	.long	1065353109
	.long	1065353112
	.long	1065353115
	.long	1065353119
	.long	1065353122
	.long	1065353125
	.long	1065353128
	.long	1065353131
	.long	1065353134
	.long	1065353136
	.long	1065353139
	.long	1065353142
	.long	1065353144
	.long	1065353147
	.long	1065353149
	.long	1065353152
	.long	1065353154
	.long	1065353156
	.long	1065353158
	.long	1065353161
	.long	1065353163
	.long	1065353165
	.long	1065353167
	.long	1065353169
	.long	1065353170
	.long	1065353172
	.long	1065353174
	.long	1065353176
	.long	1065353177
	.long	1065353179
	.long	1065353180
	.long	1065353182
	.long	1065353183
	.long	1065353185
	.long	1065353186
	.long	1065353187
	.long	1065353189
	.long	1065353190
	.long	1065353191
	.long	1065353192
	.long	1065353193
	.long	1065353194
	.long	1065353195
	.long	1065353196
	.long	1065353197
	.long	1065353198
	.long	1065353199
	.long	1065353200
	.long	1065353201
	.long	1065353201
	.long	1065353202
	.long	1065353203
	.long	1065353204
	.long	1065353204
	.long	1065353205
	.long	1065353206
	.long	1065353206
	.long	1065353207
	.long	1065353207
	.long	1065353208
	.long	1065353208
	.long	1065353209
	.long	1065353209
	.long	1065353210
	.long	1065353210
	.long	1065353210
	.long	1065353211
	.long	1065353211
	.long	1065353211
	.long	1065353212
	.long	1065353212
	.long	1065353212
	.long	1065353213
	.long	1065353213
	.long	1065353213
	.long	1065353213
	.long	1065353214
	.long	1065353214
	.long	1065353214
	.long	1065353214
	.long	1065353214
	.long	1065353214
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 32
_vwin4096:
	.long	880281804
	.long	906725035
	.long	918669903
	.long	926804414
	.long	933033966
	.long	938113984
	.long	941867051
	.long	945423009
	.long	948699837
	.long	950985804
	.long	953525731
	.long	956310471
	.long	957834408
	.long	959485318
	.long	961263208
	.long	963168064
	.long	964944903
	.long	966024297
	.long	967167167
	.long	968373510
	.long	969643329
	.long	970976617
	.long	972373368
	.long	973456056
	.long	974217894
	.long	975011462
	.long	975836753
	.long	976693769
	.long	977582508
	.long	978502966
	.long	979455141
	.long	980439034
	.long	981454639
	.long	981984546
	.long	982524058
	.long	983079423
	.long	983650640
	.long	984237707
	.long	984840622
	.long	985459386
	.long	986093995
	.long	986744449
	.long	987410746
	.long	988092884
	.long	988790863
	.long	989504679
	.long	990045037
	.long	990417781
	.long	990798441
	.long	991187017
	.long	991583507
	.long	991987911
	.long	992400228
	.long	992820456
	.long	993248595
	.long	993684644
	.long	994128602
	.long	994580467
	.long	995040239
	.long	995507916
	.long	995983498
	.long	996466982
	.long	996958369
	.long	997457657
	.long	997964845
	.long	998362141
	.long	998623633
	.long	998889073
	.long	999158460
	.long	999431793
	.long	999709073
	.long	999990298
	.long	1000275468
	.long	1000564582
	.long	1000857640
	.long	1001154640
	.long	1001455582
	.long	1001760465
	.long	1002069288
	.long	1002382052
	.long	1002698754
	.long	1003019395
	.long	1003343973
	.long	1003672488
	.long	1004004938
	.long	1004341324
	.long	1004681644
	.long	1005025897
	.long	1005374083
	.long	1005726201
	.long	1006082250
	.long	1006442229
	.long	1006719548
	.long	1006903466
	.long	1007089348
	.long	1007277193
	.long	1007467001
	.long	1007658771
	.long	1007852504
	.long	1008048197
	.long	1008245852
	.long	1008445466
	.long	1008647041
	.long	1008850575
	.long	1009056069
	.long	1009263520
	.long	1009472930
	.long	1009684297
	.long	1009897621
	.long	1010112901
	.long	1010330138
	.long	1010549329
	.long	1010770476
	.long	1010993576
	.long	1011218631
	.long	1011445638
	.long	1011674598
	.long	1011905511
	.long	1012138374
	.long	1012373189
	.long	1012609954
	.long	1012848668
	.long	1013089332
	.long	1013331944
	.long	1013576504
	.long	1013823011
	.long	1014071466
	.long	1014321866
	.long	1014574211
	.long	1014828502
	.long	1015053152
	.long	1015182241
	.long	1015312302
	.long	1015443334
	.long	1015575336
	.long	1015708309
	.long	1015842253
	.long	1015977166
	.long	1016113048
	.long	1016249900
	.long	1016387720
	.long	1016526509
	.long	1016666266
	.long	1016806990
	.long	1016948682
	.long	1017091341
	.long	1017234967
	.long	1017379559
	.long	1017525117
	.long	1017671641
	.long	1017819129
	.long	1017967583
	.long	1018117001
	.long	1018267383
	.long	1018418728
	.long	1018571037
	.long	1018724309
	.long	1018878544
	.long	1019033740
	.long	1019189898
	.long	1019347018
	.long	1019505098
	.long	1019664139
	.long	1019824140
	.long	1019985101
	.long	1020147021
	.long	1020309900
	.long	1020473737
	.long	1020638533
	.long	1020804285
	.long	1020970995
	.long	1021138662
	.long	1021307285
	.long	1021476864
	.long	1021647399
	.long	1021818888
	.long	1021991332
	.long	1022164730
	.long	1022339081
	.long	1022514386
	.long	1022690643
	.long	1022867853
	.long	1023046014
	.long	1023225127
	.long	1023405190
	.long	1023498190
	.long	1023589172
	.long	1023680629
	.long	1023772560
	.long	1023864965
	.long	1023957844
	.long	1024051197
	.long	1024145024
	.long	1024239323
	.long	1024334096
	.long	1024429341
	.long	1024525059
	.long	1024621249
	.long	1024717911
	.long	1024815045
	.long	1024912650
	.long	1025010727
	.long	1025109274
	.long	1025208292
	.long	1025307780
	.long	1025407739
	.long	1025508167
	.long	1025609065
	.long	1025710432
	.long	1025812269
	.long	1025914574
	.long	1026017347
	.long	1026120589
	.long	1026224299
	.long	1026328476
	.long	1026433120
	.long	1026538232
	.long	1026643811
	.long	1026749856
	.long	1026856367
	.long	1026963344
	.long	1027070787
	.long	1027178695
	.long	1027287068
	.long	1027395905
	.long	1027505208
	.long	1027614974
	.long	1027725204
	.long	1027835898
	.long	1027947055
	.long	1028058675
	.long	1028170757
	.long	1028283302
	.long	1028396308
	.long	1028509776
	.long	1028623706
	.long	1028738097
	.long	1028852948
	.long	1028968260
	.long	1029084032
	.long	1029200263
	.long	1029316954
	.long	1029434104
	.long	1029551713
	.long	1029669780
	.long	1029788305
	.long	1029907288
	.long	1030026728
	.long	1030146625
	.long	1030266980
	.long	1030387790
	.long	1030509057
	.long	1030630779
	.long	1030752956
	.long	1030875589
	.long	1030998676
	.long	1031122217
	.long	1031246213
	.long	1031370662
	.long	1031495564
	.long	1031620919
	.long	1031746726
	.long	1031835885
	.long	1031899241
	.long	1031962822
	.long	1032026629
	.long	1032090661
	.long	1032154919
	.long	1032219401
	.long	1032284108
	.long	1032349040
	.long	1032414196
	.long	1032479576
	.long	1032545181
	.long	1032611009
	.long	1032677060
	.long	1032743335
	.long	1032809834
	.long	1032876555
	.long	1032943499
	.long	1033010666
	.long	1033078056
	.long	1033145667
	.long	1033213501
	.long	1033281556
	.long	1033349833
	.long	1033418332
	.long	1033487051
	.long	1033555992
	.long	1033625154
	.long	1033694536
	.long	1033764138
	.long	1033833961
	.long	1033904004
	.long	1033974266
	.long	1034044748
	.long	1034115450
	.long	1034186370
	.long	1034257509
	.long	1034328867
	.long	1034400444
	.long	1034472239
	.long	1034544252
	.long	1034616482
	.long	1034688931
	.long	1034761596
	.long	1034834479
	.long	1034907579
	.long	1034980895
	.long	1035054428
	.long	1035128177
	.long	1035202142
	.long	1035276323
	.long	1035350720
	.long	1035425332
	.long	1035500159
	.long	1035575200
	.long	1035650457
	.long	1035725928
	.long	1035801613
	.long	1035877512
	.long	1035953625
	.long	1036029951
	.long	1036106490
	.long	1036183242
	.long	1036260207
	.long	1036337385
	.long	1036414775
	.long	1036492377
	.long	1036570190
	.long	1036648215
	.long	1036726451
	.long	1036804899
	.long	1036883557
	.long	1036962425
	.long	1037041504
	.long	1037120793
	.long	1037200292
	.long	1037280000
	.long	1037359917
	.long	1037440044
	.long	1037520379
	.long	1037600922
	.long	1037681674
	.long	1037762634
	.long	1037843801
	.long	1037925176
	.long	1038006758
	.long	1038088547
	.long	1038170542
	.long	1038252744
	.long	1038335152
	.long	1038417766
	.long	1038500585
	.long	1038583610
	.long	1038666840
	.long	1038750274
	.long	1038833913
	.long	1038917756
	.long	1039001803
	.long	1039086054
	.long	1039170508
	.long	1039255165
	.long	1039340025
	.long	1039425087
	.long	1039510351
	.long	1039595818
	.long	1039681486
	.long	1039767356
	.long	1039853426
	.long	1039939698
	.long	1040026170
	.long	1040112842
	.long	1040193553
	.long	1040237089
	.long	1040280725
	.long	1040324460
	.long	1040368294
	.long	1040412228
	.long	1040456261
	.long	1040500392
	.long	1040544623
	.long	1040588952
	.long	1040633379
	.long	1040677905
	.long	1040722530
	.long	1040767252
	.long	1040812072
	.long	1040856989
	.long	1040902005
	.long	1040947117
	.long	1040992327
	.long	1041037634
	.long	1041083038
	.long	1041128539
	.long	1041174136
	.long	1041219830
	.long	1041265621
	.long	1041311507
	.long	1041357489
	.long	1041403567
	.long	1041449741
	.long	1041496010
	.long	1041542375
	.long	1041588835
	.long	1041635390
	.long	1041682040
	.long	1041728784
	.long	1041775623
	.long	1041822556
	.long	1041869584
	.long	1041916705
	.long	1041963921
	.long	1042011230
	.long	1042058633
	.long	1042106129
	.long	1042153718
	.long	1042201400
	.long	1042249175
	.long	1042297043
	.long	1042345003
	.long	1042393056
	.long	1042441201
	.long	1042489437
	.long	1042537766
	.long	1042586186
	.long	1042634698
	.long	1042683301
	.long	1042731995
	.long	1042780780
	.long	1042829656
	.long	1042878623
	.long	1042927680
	.long	1042976827
	.long	1043026064
	.long	1043075391
	.long	1043124808
	.long	1043174314
	.long	1043223910
	.long	1043273594
	.long	1043323368
	.long	1043373231
	.long	1043423182
	.long	1043473221
	.long	1043523349
	.long	1043573565
	.long	1043623869
	.long	1043674260
	.long	1043724739
	.long	1043775305
	.long	1043825958
	.long	1043876699
	.long	1043927526
	.long	1043978439
	.long	1044029439
	.long	1044080525
	.long	1044131697
	.long	1044182955
	.long	1044234299
	.long	1044285727
	.long	1044337241
	.long	1044388840
	.long	1044440524
	.long	1044492293
	.long	1044544146
	.long	1044596083
	.long	1044648104
	.long	1044700209
	.long	1044752398
	.long	1044804670
	.long	1044857026
	.long	1044909464
	.long	1044961985
	.long	1045014589
	.long	1045067276
	.long	1045120044
	.long	1045172895
	.long	1045225828
	.long	1045278842
	.long	1045331937
	.long	1045385114
	.long	1045438372
	.long	1045491711
	.long	1045545130
	.long	1045598630
	.long	1045652210
	.long	1045705869
	.long	1045759609
	.long	1045813428
	.long	1045867327
	.long	1045921305
	.long	1045975361
	.long	1046029497
	.long	1046083710
	.long	1046138003
	.long	1046192373
	.long	1046246821
	.long	1046301347
	.long	1046355950
	.long	1046410631
	.long	1046465389
	.long	1046520223
	.long	1046575134
	.long	1046630121
	.long	1046685185
	.long	1046740324
	.long	1046795539
	.long	1046850830
	.long	1046906196
	.long	1046961637
	.long	1047017153
	.long	1047072743
	.long	1047128408
	.long	1047184147
	.long	1047239960
	.long	1047295847
	.long	1047351807
	.long	1047407840
	.long	1047463947
	.long	1047520126
	.long	1047576378
	.long	1047632702
	.long	1047689099
	.long	1047745567
	.long	1047802107
	.long	1047858719
	.long	1047915402
	.long	1047972155
	.long	1048028980
	.long	1048085875
	.long	1048142840
	.long	1048199876
	.long	1048256981
	.long	1048314156
	.long	1048371400
	.long	1048428714
	.long	1048486096
	.long	1048543547
	.long	1048588533
	.long	1048617327
	.long	1048646155
	.long	1048675017
	.long	1048703912
	.long	1048732841
	.long	1048761804
	.long	1048790799
	.long	1048819829
	.long	1048848891
	.long	1048877986
	.long	1048907115
	.long	1048936276
	.long	1048965469
	.long	1048994696
	.long	1049023954
	.long	1049053245
	.long	1049082568
	.long	1049111924
	.long	1049141311
	.long	1049170730
	.long	1049200180
	.long	1049229662
	.long	1049259176
	.long	1049288721
	.long	1049318297
	.long	1049347904
	.long	1049377542
	.long	1049407211
	.long	1049436911
	.long	1049466641
	.long	1049496402
	.long	1049526193
	.long	1049556014
	.long	1049585865
	.long	1049615746
	.long	1049645657
	.long	1049675598
	.long	1049705568
	.long	1049735567
	.long	1049765596
	.long	1049795654
	.long	1049825741
	.long	1049855857
	.long	1049886002
	.long	1049916176
	.long	1049946377
	.long	1049976608
	.long	1050006866
	.long	1050037153
	.long	1050067468
	.long	1050097810
	.long	1050128181
	.long	1050158579
	.long	1050189004
	.long	1050219457
	.long	1050249937
	.long	1050280444
	.long	1050310978
	.long	1050341539
	.long	1050372127
	.long	1050402741
	.long	1050433381
	.long	1050464048
	.long	1050494741
	.long	1050525460
	.long	1050556205
	.long	1050586976
	.long	1050617772
	.long	1050648594
	.long	1050679441
	.long	1050710313
	.long	1050741210
	.long	1050772133
	.long	1050803080
	.long	1050834052
	.long	1050865048
	.long	1050896069
	.long	1050927114
	.long	1050958183
	.long	1050989276
	.long	1051020393
	.long	1051051534
	.long	1051082698
	.long	1051113886
	.long	1051145097
	.long	1051176331
	.long	1051207588
	.long	1051238869
	.long	1051270171
	.long	1051301497
	.long	1051332845
	.long	1051364215
	.long	1051395608
	.long	1051427022
	.long	1051458459
	.long	1051489917
	.long	1051521397
	.long	1051552898
	.long	1051584421
	.long	1051615965
	.long	1051647530
	.long	1051679116
	.long	1051710722
	.long	1051742350
	.long	1051773998
	.long	1051805666
	.long	1051837354
	.long	1051869063
	.long	1051900791
	.long	1051932540
	.long	1051964308
	.long	1051996095
	.long	1052027902
	.long	1052059728
	.long	1052091573
	.long	1052123437
	.long	1052155320
	.long	1052187221
	.long	1052219141
	.long	1052251079
	.long	1052283036
	.long	1052315010
	.long	1052347003
	.long	1052379013
	.long	1052411041
	.long	1052443086
	.long	1052475149
	.long	1052507229
	.long	1052539326
	.long	1052571440
	.long	1052603570
	.long	1052635718
	.long	1052667881
	.long	1052700061
	.long	1052732258
	.long	1052764470
	.long	1052796698
	.long	1052828942
	.long	1052861201
	.long	1052893476
	.long	1052925766
	.long	1052958071
	.long	1052990392
	.long	1053022727
	.long	1053055076
	.long	1053087441
	.long	1053119819
	.long	1053152212
	.long	1053184619
	.long	1053217040
	.long	1053249475
	.long	1053281924
	.long	1053314386
	.long	1053346861
	.long	1053379349
	.long	1053411851
	.long	1053444365
	.long	1053476893
	.long	1053509432
	.long	1053541985
	.long	1053574549
	.long	1053607126
	.long	1053639714
	.long	1053672315
	.long	1053704927
	.long	1053737551
	.long	1053770186
	.long	1053802833
	.long	1053835490
	.long	1053868159
	.long	1053900838
	.long	1053933528
	.long	1053966228
	.long	1053998939
	.long	1054031660
	.long	1054064391
	.long	1054097131
	.long	1054129882
	.long	1054162642
	.long	1054195411
	.long	1054228190
	.long	1054260978
	.long	1054293775
	.long	1054326581
	.long	1054359395
	.long	1054392218
	.long	1054425049
	.long	1054457888
	.long	1054490736
	.long	1054523591
	.long	1054556454
	.long	1054589324
	.long	1054622202
	.long	1054655088
	.long	1054687980
	.long	1054720880
	.long	1054753786
	.long	1054786699
	.long	1054819618
	.long	1054852544
	.long	1054885476
	.long	1054918414
	.long	1054951357
	.long	1054984307
	.long	1055017262
	.long	1055050223
	.long	1055083189
	.long	1055116159
	.long	1055149135
	.long	1055182116
	.long	1055215101
	.long	1055248091
	.long	1055281086
	.long	1055314084
	.long	1055347086
	.long	1055380093
	.long	1055413103
	.long	1055446116
	.long	1055479133
	.long	1055512153
	.long	1055545177
	.long	1055578203
	.long	1055611232
	.long	1055644264
	.long	1055677298
	.long	1055710334
	.long	1055743373
	.long	1055776414
	.long	1055809456
	.long	1055842500
	.long	1055875546
	.long	1055908593
	.long	1055941642
	.long	1055974691
	.long	1056007742
	.long	1056040793
	.long	1056073844
	.long	1056106897
	.long	1056139949
	.long	1056173002
	.long	1056206054
	.long	1056239107
	.long	1056272159
	.long	1056305211
	.long	1056338262
	.long	1056371312
	.long	1056404361
	.long	1056437409
	.long	1056470456
	.long	1056503502
	.long	1056536546
	.long	1056569588
	.long	1056602628
	.long	1056635666
	.long	1056668702
	.long	1056701736
	.long	1056734767
	.long	1056767796
	.long	1056800822
	.long	1056833844
	.long	1056866864
	.long	1056899880
	.long	1056932893
	.long	1056965255
	.long	1056981758
	.long	1056998259
	.long	1057014758
	.long	1057031254
	.long	1057047749
	.long	1057064241
	.long	1057080731
	.long	1057097219
	.long	1057113703
	.long	1057130186
	.long	1057146666
	.long	1057163143
	.long	1057179617
	.long	1057196088
	.long	1057212557
	.long	1057229022
	.long	1057245484
	.long	1057261943
	.long	1057278399
	.long	1057294851
	.long	1057311300
	.long	1057327746
	.long	1057344188
	.long	1057360626
	.long	1057377060
	.long	1057393491
	.long	1057409918
	.long	1057426341
	.long	1057442759
	.long	1057459174
	.long	1057475585
	.long	1057491991
	.long	1057508393
	.long	1057524790
	.long	1057541183
	.long	1057557571
	.long	1057573955
	.long	1057590334
	.long	1057606708
	.long	1057623077
	.long	1057639442
	.long	1057655801
	.long	1057672155
	.long	1057688504
	.long	1057704848
	.long	1057721186
	.long	1057737519
	.long	1057753846
	.long	1057770168
	.long	1057786484
	.long	1057802795
	.long	1057819099
	.long	1057835398
	.long	1057851691
	.long	1057867978
	.long	1057884258
	.long	1057900533
	.long	1057916801
	.long	1057933063
	.long	1057949319
	.long	1057965568
	.long	1057981810
	.long	1057998046
	.long	1058014275
	.long	1058030497
	.long	1058046713
	.long	1058062921
	.long	1058079123
	.long	1058095317
	.long	1058111505
	.long	1058127685
	.long	1058143858
	.long	1058160023
	.long	1058176181
	.long	1058192331
	.long	1058208474
	.long	1058224609
	.long	1058240737
	.long	1058256856
	.long	1058272968
	.long	1058289072
	.long	1058305167
	.long	1058321255
	.long	1058337334
	.long	1058353405
	.long	1058369468
	.long	1058385522
	.long	1058401568
	.long	1058417605
	.long	1058433634
	.long	1058449654
	.long	1058465665
	.long	1058481667
	.long	1058497661
	.long	1058513645
	.long	1058529620
	.long	1058545586
	.long	1058561543
	.long	1058577491
	.long	1058593429
	.long	1058609358
	.long	1058625277
	.long	1058641187
	.long	1058657087
	.long	1058672978
	.long	1058688858
	.long	1058704729
	.long	1058720590
	.long	1058736441
	.long	1058752281
	.long	1058768112
	.long	1058783932
	.long	1058799742
	.long	1058815542
	.long	1058831331
	.long	1058847110
	.long	1058862878
	.long	1058878636
	.long	1058894383
	.long	1058910119
	.long	1058925844
	.long	1058941558
	.long	1058957262
	.long	1058972954
	.long	1058988635
	.long	1059004305
	.long	1059019964
	.long	1059035611
	.long	1059051247
	.long	1059066871
	.long	1059082484
	.long	1059098086
	.long	1059113675
	.long	1059129253
	.long	1059144819
	.long	1059160373
	.long	1059175915
	.long	1059191446
	.long	1059206964
	.long	1059222470
	.long	1059237963
	.long	1059253445
	.long	1059268914
	.long	1059284370
	.long	1059299814
	.long	1059315246
	.long	1059330665
	.long	1059346071
	.long	1059361465
	.long	1059376845
	.long	1059392213
	.long	1059407568
	.long	1059422910
	.long	1059438238
	.long	1059453554
	.long	1059468856
	.long	1059484145
	.long	1059499421
	.long	1059514683
	.long	1059529932
	.long	1059545167
	.long	1059560389
	.long	1059575597
	.long	1059590791
	.long	1059605971
	.long	1059621138
	.long	1059636290
	.long	1059651429
	.long	1059666553
	.long	1059681664
	.long	1059696760
	.long	1059711842
	.long	1059726910
	.long	1059741963
	.long	1059757002
	.long	1059772026
	.long	1059787036
	.long	1059802031
	.long	1059817012
	.long	1059831978
	.long	1059846928
	.long	1059861865
	.long	1059876786
	.long	1059891692
	.long	1059906583
	.long	1059921459
	.long	1059936320
	.long	1059951165
	.long	1059965995
	.long	1059980810
	.long	1059995610
	.long	1060010394
	.long	1060025162
	.long	1060039915
	.long	1060054652
	.long	1060069374
	.long	1060084080
	.long	1060098770
	.long	1060113444
	.long	1060128102
	.long	1060142744
	.long	1060157370
	.long	1060171980
	.long	1060186573
	.long	1060201151
	.long	1060215712
	.long	1060230257
	.long	1060244785
	.long	1060259297
	.long	1060273792
	.long	1060288271
	.long	1060302733
	.long	1060317179
	.long	1060331607
	.long	1060346019
	.long	1060360414
	.long	1060374792
	.long	1060389154
	.long	1060403498
	.long	1060417825
	.long	1060432135
	.long	1060446427
	.long	1060460703
	.long	1060474961
	.long	1060489202
	.long	1060503425
	.long	1060517631
	.long	1060531820
	.long	1060545990
	.long	1060560144
	.long	1060574279
	.long	1060588397
	.long	1060602497
	.long	1060616579
	.long	1060630644
	.long	1060644690
	.long	1060658718
	.long	1060672729
	.long	1060686721
	.long	1060700695
	.long	1060714651
	.long	1060728589
	.long	1060742508
	.long	1060756409
	.long	1060770292
	.long	1060784156
	.long	1060798002
	.long	1060811829
	.long	1060825638
	.long	1060839428
	.long	1060853199
	.long	1060866951
	.long	1060880685
	.long	1060894400
	.long	1060908096
	.long	1060921773
	.long	1060935431
	.long	1060949070
	.long	1060962690
	.long	1060976291
	.long	1060989873
	.long	1061003435
	.long	1061016978
	.long	1061030502
	.long	1061044007
	.long	1061057492
	.long	1061070958
	.long	1061084404
	.long	1061097831
	.long	1061111238
	.long	1061124625
	.long	1061137993
	.long	1061151341
	.long	1061164670
	.long	1061177978
	.long	1061191267
	.long	1061204536
	.long	1061217784
	.long	1061231013
	.long	1061244222
	.long	1061257411
	.long	1061270580
	.long	1061283728
	.long	1061296856
	.long	1061309965
	.long	1061323052
	.long	1061336120
	.long	1061349167
	.long	1061362194
	.long	1061375200
	.long	1061388186
	.long	1061401152
	.long	1061414096
	.long	1061427021
	.long	1061439924
	.long	1061452807
	.long	1061465669
	.long	1061478511
	.long	1061491331
	.long	1061504131
	.long	1061516910
	.long	1061529668
	.long	1061542405
	.long	1061555121
	.long	1061567816
	.long	1061580490
	.long	1061593143
	.long	1061605775
	.long	1061618386
	.long	1061630975
	.long	1061643543
	.long	1061656090
	.long	1061668616
	.long	1061681120
	.long	1061693603
	.long	1061706065
	.long	1061718505
	.long	1061730923
	.long	1061743320
	.long	1061755696
	.long	1061768050
	.long	1061780382
	.long	1061792693
	.long	1061804981
	.long	1061817249
	.long	1061829494
	.long	1061841718
	.long	1061853920
	.long	1061866100
	.long	1061878258
	.long	1061890394
	.long	1061902509
	.long	1061914601
	.long	1061926671
	.long	1061938720
	.long	1061950746
	.long	1061962750
	.long	1061974732
	.long	1061986692
	.long	1061998630
	.long	1062010545
	.long	1062022438
	.long	1062034309
	.long	1062046158
	.long	1062057984
	.long	1062069788
	.long	1062081570
	.long	1062093329
	.long	1062105066
	.long	1062116780
	.long	1062128472
	.long	1062140142
	.long	1062151788
	.long	1062163413
	.long	1062175014
	.long	1062186593
	.long	1062198150
	.long	1062209683
	.long	1062221194
	.long	1062232683
	.long	1062244148
	.long	1062255591
	.long	1062267011
	.long	1062278408
	.long	1062289783
	.long	1062301134
	.long	1062312463
	.long	1062323769
	.long	1062335052
	.long	1062346311
	.long	1062357548
	.long	1062368762
	.long	1062379953
	.long	1062391121
	.long	1062402266
	.long	1062413388
	.long	1062424486
	.long	1062435562
	.long	1062446614
	.long	1062457644
	.long	1062468650
	.long	1062479633
	.long	1062490592
	.long	1062501529
	.long	1062512442
	.long	1062523332
	.long	1062534198
	.long	1062545042
	.long	1062555862
	.long	1062566658
	.long	1062577432
	.long	1062588182
	.long	1062598908
	.long	1062609612
	.long	1062620291
	.long	1062630948
	.long	1062641580
	.long	1062652190
	.long	1062662776
	.long	1062673338
	.long	1062683877
	.long	1062694392
	.long	1062704884
	.long	1062715352
	.long	1062725797
	.long	1062736218
	.long	1062746616
	.long	1062756990
	.long	1062767340
	.long	1062777667
	.long	1062787970
	.long	1062798249
	.long	1062808505
	.long	1062818737
	.long	1062828945
	.long	1062839130
	.long	1062849291
	.long	1062859428
	.long	1062869541
	.long	1062879631
	.long	1062889697
	.long	1062899739
	.long	1062909758
	.long	1062919752
	.long	1062929723
	.long	1062939670
	.long	1062949593
	.long	1062959493
	.long	1062969368
	.long	1062979220
	.long	1062989048
	.long	1062998852
	.long	1063008632
	.long	1063018389
	.long	1063028121
	.long	1063037830
	.long	1063047515
	.long	1063057176
	.long	1063066813
	.long	1063076426
	.long	1063086015
	.long	1063095580
	.long	1063105122
	.long	1063114639
	.long	1063124133
	.long	1063133602
	.long	1063143048
	.long	1063152470
	.long	1063161867
	.long	1063171241
	.long	1063180591
	.long	1063189917
	.long	1063199219
	.long	1063208497
	.long	1063217752
	.long	1063226982
	.long	1063236188
	.long	1063245371
	.long	1063254529
	.long	1063263663
	.long	1063272774
	.long	1063281860
	.long	1063290923
	.long	1063299962
	.long	1063308976
	.long	1063317967
	.long	1063326934
	.long	1063335877
	.long	1063344795
	.long	1063353690
	.long	1063362561
	.long	1063371408
	.long	1063380232
	.long	1063389031
	.long	1063397806
	.long	1063406557
	.long	1063415285
	.long	1063423988
	.long	1063432668
	.long	1063441323
	.long	1063449955
	.long	1063458563
	.long	1063467147
	.long	1063475707
	.long	1063484243
	.long	1063492755
	.long	1063501244
	.long	1063509708
	.long	1063518149
	.long	1063526566
	.long	1063534958
	.long	1063543328
	.long	1063551673
	.long	1063559994
	.long	1063568292
	.long	1063576565
	.long	1063584815
	.long	1063593042
	.long	1063601244
	.long	1063609422
	.long	1063617577
	.long	1063625708
	.long	1063633815
	.long	1063641899
	.long	1063649959
	.long	1063657995
	.long	1063666007
	.long	1063673995
	.long	1063681960
	.long	1063689902
	.long	1063697819
	.long	1063705713
	.long	1063713583
	.long	1063721430
	.long	1063729253
	.long	1063737052
	.long	1063744827
	.long	1063752580
	.long	1063760308
	.long	1063768013
	.long	1063775694
	.long	1063783352
	.long	1063790986
	.long	1063798597
	.long	1063806185
	.long	1063813748
	.long	1063821289
	.long	1063828805
	.long	1063836299
	.long	1063843769
	.long	1063851215
	.long	1063858639
	.long	1063866038
	.long	1063873415
	.long	1063880768
	.long	1063888097
	.long	1063895404
	.long	1063902687
	.long	1063909947
	.long	1063917183
	.long	1063924396
	.long	1063931587
	.long	1063938753
	.long	1063945897
	.long	1063953017
	.long	1063960115
	.long	1063967189
	.long	1063974240
	.long	1063981268
	.long	1063988272
	.long	1063995254
	.long	1064002213
	.long	1064009148
	.long	1064016061
	.long	1064022951
	.long	1064029817
	.long	1064036661
	.long	1064043482
	.long	1064050280
	.long	1064057055
	.long	1064063807
	.long	1064070536
	.long	1064077243
	.long	1064083926
	.long	1064090587
	.long	1064097225
	.long	1064103841
	.long	1064110433
	.long	1064117003
	.long	1064123551
	.long	1064130075
	.long	1064136577
	.long	1064143057
	.long	1064149513
	.long	1064155948
	.long	1064162360
	.long	1064168749
	.long	1064175116
	.long	1064181460
	.long	1064187782
	.long	1064194081
	.long	1064200358
	.long	1064206613
	.long	1064212846
	.long	1064219056
	.long	1064225244
	.long	1064231409
	.long	1064237553
	.long	1064243674
	.long	1064249773
	.long	1064255850
	.long	1064261904
	.long	1064267937
	.long	1064273948
	.long	1064279936
	.long	1064285903
	.long	1064291847
	.long	1064297770
	.long	1064303670
	.long	1064309549
	.long	1064315406
	.long	1064321241
	.long	1064327054
	.long	1064332846
	.long	1064338616
	.long	1064344363
	.long	1064350090
	.long	1064355794
	.long	1064361477
	.long	1064367139
	.long	1064372778
	.long	1064378397
	.long	1064383993
	.long	1064389569
	.long	1064395122
	.long	1064400655
	.long	1064406166
	.long	1064411655
	.long	1064417123
	.long	1064422570
	.long	1064427996
	.long	1064433401
	.long	1064438784
	.long	1064444146
	.long	1064449487
	.long	1064454807
	.long	1064460105
	.long	1064465383
	.long	1064470640
	.long	1064475875
	.long	1064481090
	.long	1064486284
	.long	1064491457
	.long	1064496609
	.long	1064501740
	.long	1064506851
	.long	1064511941
	.long	1064517010
	.long	1064522058
	.long	1064527086
	.long	1064532093
	.long	1064537080
	.long	1064542046
	.long	1064546991
	.long	1064551916
	.long	1064556821
	.long	1064561705
	.long	1064566569
	.long	1064571413
	.long	1064576236
	.long	1064581039
	.long	1064585822
	.long	1064590584
	.long	1064595327
	.long	1064600049
	.long	1064604752
	.long	1064609434
	.long	1064614096
	.long	1064618738
	.long	1064623361
	.long	1064627963
	.long	1064632546
	.long	1064637109
	.long	1064641652
	.long	1064646175
	.long	1064650679
	.long	1064655163
	.long	1064659627
	.long	1064664072
	.long	1064668497
	.long	1064672903
	.long	1064677289
	.long	1064681656
	.long	1064686003
	.long	1064690331
	.long	1064694640
	.long	1064698930
	.long	1064703200
	.long	1064707451
	.long	1064711683
	.long	1064715896
	.long	1064720089
	.long	1064724264
	.long	1064728420
	.long	1064732556
	.long	1064736674
	.long	1064740773
	.long	1064744853
	.long	1064748914
	.long	1064752957
	.long	1064756981
	.long	1064760986
	.long	1064764972
	.long	1064768940
	.long	1064772890
	.long	1064776821
	.long	1064780733
	.long	1064784627
	.long	1064788502
	.long	1064792360
	.long	1064796199
	.long	1064800019
	.long	1064803822
	.long	1064807606
	.long	1064811372
	.long	1064815120
	.long	1064818850
	.long	1064822562
	.long	1064826256
	.long	1064829932
	.long	1064833591
	.long	1064837231
	.long	1064840854
	.long	1064844458
	.long	1064848046
	.long	1064851615
	.long	1064855167
	.long	1064858701
	.long	1064862218
	.long	1064865717
	.long	1064869199
	.long	1064872663
	.long	1064876110
	.long	1064879540
	.long	1064882952
	.long	1064886348
	.long	1064889726
	.long	1064893086
	.long	1064896430
	.long	1064899757
	.long	1064903067
	.long	1064906359
	.long	1064909635
	.long	1064912894
	.long	1064916136
	.long	1064919362
	.long	1064922570
	.long	1064925762
	.long	1064928937
	.long	1064932096
	.long	1064935238
	.long	1064938364
	.long	1064941473
	.long	1064944565
	.long	1064947642
	.long	1064950701
	.long	1064953745
	.long	1064956772
	.long	1064959784
	.long	1064962779
	.long	1064965758
	.long	1064968720
	.long	1064971667
	.long	1064974598
	.long	1064977513
	.long	1064980412
	.long	1064983295
	.long	1064986163
	.long	1064989014
	.long	1064991850
	.long	1064994671
	.long	1064997475
	.long	1065000264
	.long	1065003038
	.long	1065005796
	.long	1065008539
	.long	1065011266
	.long	1065013978
	.long	1065016675
	.long	1065019357
	.long	1065022023
	.long	1065024674
	.long	1065027310
	.long	1065029931
	.long	1065032537
	.long	1065035128
	.long	1065037705
	.long	1065040266
	.long	1065042812
	.long	1065045344
	.long	1065047861
	.long	1065050364
	.long	1065052851
	.long	1065055324
	.long	1065057783
	.long	1065060227
	.long	1065062657
	.long	1065065072
	.long	1065067473
	.long	1065069860
	.long	1065072232
	.long	1065074590
	.long	1065076934
	.long	1065079264
	.long	1065081580
	.long	1065083882
	.long	1065086170
	.long	1065088444
	.long	1065090704
	.long	1065092950
	.long	1065095182
	.long	1065097401
	.long	1065099606
	.long	1065101798
	.long	1065103976
	.long	1065106140
	.long	1065108291
	.long	1065110428
	.long	1065112552
	.long	1065114663
	.long	1065116760
	.long	1065118844
	.long	1065120915
	.long	1065122973
	.long	1065125017
	.long	1065127049
	.long	1065129067
	.long	1065131073
	.long	1065133065
	.long	1065135045
	.long	1065137012
	.long	1065138966
	.long	1065140908
	.long	1065142836
	.long	1065144752
	.long	1065146656
	.long	1065148547
	.long	1065150425
	.long	1065152291
	.long	1065154145
	.long	1065155986
	.long	1065157815
	.long	1065159632
	.long	1065161437
	.long	1065163229
	.long	1065165009
	.long	1065166777
	.long	1065168534
	.long	1065170278
	.long	1065172010
	.long	1065173731
	.long	1065175439
	.long	1065177136
	.long	1065178821
	.long	1065180494
	.long	1065182156
	.long	1065183806
	.long	1065185445
	.long	1065187072
	.long	1065188688
	.long	1065190292
	.long	1065191885
	.long	1065193467
	.long	1065195037
	.long	1065196596
	.long	1065198144
	.long	1065199681
	.long	1065201207
	.long	1065202722
	.long	1065204226
	.long	1065205719
	.long	1065207201
	.long	1065208672
	.long	1065210133
	.long	1065211582
	.long	1065213021
	.long	1065214450
	.long	1065215868
	.long	1065217275
	.long	1065218672
	.long	1065220058
	.long	1065221434
	.long	1065222799
	.long	1065224155
	.long	1065225500
	.long	1065226834
	.long	1065228159
	.long	1065229473
	.long	1065230778
	.long	1065232072
	.long	1065233356
	.long	1065234631
	.long	1065235895
	.long	1065237150
	.long	1065238395
	.long	1065239630
	.long	1065240855
	.long	1065242071
	.long	1065243277
	.long	1065244474
	.long	1065245661
	.long	1065246838
	.long	1065248006
	.long	1065249165
	.long	1065250314
	.long	1065251454
	.long	1065252585
	.long	1065253707
	.long	1065254820
	.long	1065255923
	.long	1065257017
	.long	1065258103
	.long	1065259179
	.long	1065260246
	.long	1065261305
	.long	1065262354
	.long	1065263395
	.long	1065264428
	.long	1065265451
	.long	1065266466
	.long	1065267472
	.long	1065268470
	.long	1065269459
	.long	1065270439
	.long	1065271411
	.long	1065272375
	.long	1065273331
	.long	1065274278
	.long	1065275217
	.long	1065276147
	.long	1065277070
	.long	1065277984
	.long	1065278891
	.long	1065279789
	.long	1065280679
	.long	1065281562
	.long	1065282436
	.long	1065283303
	.long	1065284162
	.long	1065285013
	.long	1065285856
	.long	1065286692
	.long	1065287520
	.long	1065288340
	.long	1065289153
	.long	1065289958
	.long	1065290756
	.long	1065291547
	.long	1065292330
	.long	1065293106
	.long	1065293874
	.long	1065294635
	.long	1065295389
	.long	1065296136
	.long	1065296876
	.long	1065297609
	.long	1065298334
	.long	1065299053
	.long	1065299765
	.long	1065300470
	.long	1065301167
	.long	1065301859
	.long	1065302543
	.long	1065303221
	.long	1065303891
	.long	1065304556
	.long	1065305213
	.long	1065305864
	.long	1065306509
	.long	1065307147
	.long	1065307779
	.long	1065308404
	.long	1065309023
	.long	1065309635
	.long	1065310241
	.long	1065310841
	.long	1065311435
	.long	1065312023
	.long	1065312604
	.long	1065313179
	.long	1065313749
	.long	1065314312
	.long	1065314870
	.long	1065315421
	.long	1065315967
	.long	1065316507
	.long	1065317041
	.long	1065317569
	.long	1065318091
	.long	1065318608
	.long	1065319119
	.long	1065319625
	.long	1065320125
	.long	1065320619
	.long	1065321108
	.long	1065321592
	.long	1065322070
	.long	1065322543
	.long	1065323010
	.long	1065323473
	.long	1065323929
	.long	1065324381
	.long	1065324828
	.long	1065325269
	.long	1065325705
	.long	1065326137
	.long	1065326563
	.long	1065326984
	.long	1065327400
	.long	1065327812
	.long	1065328218
	.long	1065328620
	.long	1065329017
	.long	1065329409
	.long	1065329796
	.long	1065330179
	.long	1065330557
	.long	1065330930
	.long	1065331299
	.long	1065331663
	.long	1065332023
	.long	1065332378
	.long	1065332729
	.long	1065333076
	.long	1065333418
	.long	1065333755
	.long	1065334089
	.long	1065334418
	.long	1065334743
	.long	1065335064
	.long	1065335381
	.long	1065335693
	.long	1065336001
	.long	1065336306
	.long	1065336606
	.long	1065336903
	.long	1065337195
	.long	1065337484
	.long	1065337768
	.long	1065338049
	.long	1065338326
	.long	1065338599
	.long	1065338869
	.long	1065339135
	.long	1065339397
	.long	1065339655
	.long	1065339910
	.long	1065340161
	.long	1065340409
	.long	1065340653
	.long	1065340894
	.long	1065341131
	.long	1065341365
	.long	1065341596
	.long	1065341823
	.long	1065342047
	.long	1065342267
	.long	1065342484
	.long	1065342698
	.long	1065342909
	.long	1065343117
	.long	1065343322
	.long	1065343523
	.long	1065343721
	.long	1065343917
	.long	1065344109
	.long	1065344299
	.long	1065344485
	.long	1065344668
	.long	1065344849
	.long	1065345027
	.long	1065345202
	.long	1065345374
	.long	1065345543
	.long	1065345710
	.long	1065345874
	.long	1065346035
	.long	1065346194
	.long	1065346350
	.long	1065346503
	.long	1065346654
	.long	1065346802
	.long	1065346948
	.long	1065347091
	.long	1065347232
	.long	1065347370
	.long	1065347506
	.long	1065347640
	.long	1065347771
	.long	1065347900
	.long	1065348027
	.long	1065348151
	.long	1065348273
	.long	1065348393
	.long	1065348511
	.long	1065348626
	.long	1065348740
	.long	1065348851
	.long	1065348960
	.long	1065349068
	.long	1065349173
	.long	1065349276
	.long	1065349377
	.long	1065349477
	.long	1065349574
	.long	1065349669
	.long	1065349763
	.long	1065349854
	.long	1065349944
	.long	1065350032
	.long	1065350119
	.long	1065350203
	.long	1065350286
	.long	1065350367
	.long	1065350446
	.long	1065350524
	.long	1065350600
	.long	1065350675
	.long	1065350747
	.long	1065350819
	.long	1065350889
	.long	1065350957
	.long	1065351023
	.long	1065351089
	.long	1065351152
	.long	1065351215
	.long	1065351276
	.long	1065351335
	.long	1065351393
	.long	1065351450
	.long	1065351506
	.long	1065351560
	.long	1065351612
	.long	1065351664
	.long	1065351714
	.long	1065351763
	.long	1065351811
	.long	1065351858
	.long	1065351904
	.long	1065351948
	.long	1065351991
	.long	1065352033
	.long	1065352074
	.long	1065352114
	.long	1065352153
	.long	1065352191
	.long	1065352228
	.long	1065352264
	.long	1065352299
	.long	1065352333
	.long	1065352365
	.long	1065352397
	.long	1065352429
	.long	1065352459
	.long	1065352488
	.long	1065352517
	.long	1065352544
	.long	1065352571
	.long	1065352597
	.long	1065352622
	.long	1065352647
	.long	1065352670
	.long	1065352693
	.long	1065352716
	.long	1065352737
	.long	1065352758
	.long	1065352778
	.long	1065352797
	.long	1065352816
	.long	1065352834
	.long	1065352852
	.long	1065352869
	.long	1065352885
	.long	1065352901
	.long	1065352916
	.long	1065352931
	.long	1065352945
	.long	1065352958
	.long	1065352971
	.long	1065352984
	.long	1065352996
	.long	1065353007
	.long	1065353019
	.long	1065353029
	.long	1065353039
	.long	1065353049
	.long	1065353059
	.long	1065353068
	.long	1065353076
	.long	1065353084
	.long	1065353092
	.long	1065353100
	.long	1065353107
	.long	1065353114
	.long	1065353120
	.long	1065353126
	.long	1065353132
	.long	1065353138
	.long	1065353143
	.long	1065353148
	.long	1065353153
	.long	1065353157
	.long	1065353162
	.long	1065353166
	.long	1065353169
	.long	1065353173
	.long	1065353176
	.long	1065353180
	.long	1065353183
	.long	1065353185
	.long	1065353188
	.long	1065353190
	.long	1065353193
	.long	1065353195
	.long	1065353197
	.long	1065353199
	.long	1065353200
	.long	1065353202
	.long	1065353203
	.long	1065353205
	.long	1065353206
	.long	1065353207
	.long	1065353208
	.long	1065353209
	.long	1065353210
	.long	1065353211
	.long	1065353211
	.long	1065353212
	.long	1065353212
	.long	1065353213
	.long	1065353213
	.long	1065353214
	.long	1065353214
	.long	1065353214
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 32
_vwin2048:
	.long	897060779
	.long	923502360
	.long	935447009
	.long	943581547
	.long	949811072
	.long	954890939
	.long	958643992
	.long	962199765
	.long	965476664
	.long	967762405
	.long	970302040
	.long	973087036
	.long	974610712
	.long	976261295
	.long	978038771
	.long	979943124
	.long	981720735
	.long	982799759
	.long	983942192
	.long	985148023
	.long	986417242
	.long	987749836
	.long	989145791
	.long	990230420
	.long	990991740
	.long	991784720
	.long	992609353
	.long	993465631
	.long	994353546
	.long	995273089
	.long	996224252
	.long	997207025
	.long	998221400
	.long	998755859
	.long	999294633
	.long	999849193
	.long	1000419532
	.long	1001005647
	.long	1001607530
	.long	1002225178
	.long	1002858582
	.long	1003507738
	.long	1004172639
	.long	1004853279
	.long	1005549651
	.long	1006261748
	.long	1006811262
	.long	1007183025
	.long	1007562641
	.long	1007950105
	.long	1008345414
	.long	1008748563
	.long	1009159550
	.long	1009578369
	.long	1010005017
	.long	1010439489
	.long	1010881782
	.long	1011331890
	.long	1011789811
	.long	1012255538
	.long	1012729067
	.long	1013210394
	.long	1013699514
	.long	1014196422
	.long	1014701114
	.long	1015117575
	.long	1015377697
	.long	1015641702
	.long	1015909588
	.long	1016181353
	.long	1016456993
	.long	1016736507
	.long	1017019891
	.long	1017307142
	.long	1017598258
	.long	1017893235
	.long	1018192071
	.long	1018494763
	.long	1018801306
	.long	1019111699
	.long	1019425938
	.long	1019744020
	.long	1020065941
	.long	1020391699
	.long	1020721289
	.long	1021054709
	.long	1021391955
	.long	1021733024
	.long	1022077911
	.long	1022426614
	.long	1022779129
	.long	1023135452
	.long	1023452877
	.long	1023634841
	.long	1023818703
	.long	1024004461
	.long	1024192114
	.long	1024381660
	.long	1024573095
	.long	1024766419
	.long	1024961630
	.long	1025158724
	.long	1025357701
	.long	1025558558
	.long	1025761292
	.long	1025965902
	.long	1026172385
	.long	1026380740
	.long	1026590963
	.long	1026803053
	.long	1027017007
	.long	1027232823
	.long	1027450498
	.long	1027670031
	.long	1027891418
	.long	1028114658
	.long	1028339747
	.long	1028566684
	.long	1028795465
	.long	1029026088
	.long	1029258551
	.long	1029492851
	.long	1029728985
	.long	1029966951
	.long	1030206745
	.long	1030448366
	.long	1030691811
	.long	1030937076
	.long	1031184158
	.long	1031433056
	.long	1031683766
	.long	1031867535
	.long	1031994697
	.long	1032122762
	.long	1032251727
	.long	1032381590
	.long	1032512350
	.long	1032644007
	.long	1032776557
	.long	1032909999
	.long	1033044333
	.long	1033179556
	.long	1033315667
	.long	1033452664
	.long	1033590545
	.long	1033729310
	.long	1033868955
	.long	1034009480
	.long	1034150882
	.long	1034293161
	.long	1034436314
	.long	1034580340
	.long	1034725236
	.long	1034871002
	.long	1035017634
	.long	1035165133
	.long	1035313495
	.long	1035462718
	.long	1035612802
	.long	1035763744
	.long	1035915542
	.long	1036068194
	.long	1036221698
	.long	1036376053
	.long	1036531257
	.long	1036687307
	.long	1036844201
	.long	1037001939
	.long	1037160516
	.long	1037319932
	.long	1037480185
	.long	1037641272
	.long	1037803192
	.long	1037965941
	.long	1038129519
	.long	1038293923
	.long	1038459150
	.long	1038625199
	.long	1038792068
	.long	1038959754
	.long	1039128255
	.long	1039297569
	.long	1039467694
	.long	1039638627
	.long	1039810366
	.long	1039982909
	.long	1040156253
	.long	1040258894
	.long	1040346364
	.long	1040434232
	.long	1040522495
	.long	1040611153
	.long	1040700205
	.long	1040789649
	.long	1040879485
	.long	1040969710
	.long	1041060324
	.long	1041151326
	.long	1041242713
	.long	1041334486
	.long	1041426642
	.long	1041519181
	.long	1041612101
	.long	1041705400
	.long	1041799078
	.long	1041893133
	.long	1041987564
	.long	1042082369
	.long	1042177547
	.long	1042273097
	.long	1042369018
	.long	1042465308
	.long	1042561965
	.long	1042658988
	.long	1042756376
	.long	1042854128
	.long	1042952242
	.long	1043050716
	.long	1043149550
	.long	1043248741
	.long	1043348288
	.long	1043448190
	.long	1043548446
	.long	1043649053
	.long	1043750011
	.long	1043851318
	.long	1043952972
	.long	1044054971
	.long	1044157315
	.long	1044260002
	.long	1044363030
	.long	1044466398
	.long	1044570104
	.long	1044674146
	.long	1044778524
	.long	1044883235
	.long	1044988277
	.long	1045093650
	.long	1045199351
	.long	1045305379
	.long	1045411733
	.long	1045518410
	.long	1045625410
	.long	1045732729
	.long	1045840368
	.long	1045948323
	.long	1046056594
	.long	1046165178
	.long	1046274074
	.long	1046383281
	.long	1046492796
	.long	1046602618
	.long	1046712745
	.long	1046823175
	.long	1046933907
	.long	1047044939
	.long	1047156268
	.long	1047267894
	.long	1047379814
	.long	1047492027
	.long	1047604531
	.long	1047717324
	.long	1047830404
	.long	1047943770
	.long	1048057419
	.long	1048171349
	.long	1048285560
	.long	1048400048
	.long	1048514813
	.long	1048602926
	.long	1048660581
	.long	1048718372
	.long	1048776297
	.long	1048834356
	.long	1048892546
	.long	1048950868
	.long	1049009321
	.long	1049067903
	.long	1049126613
	.long	1049185451
	.long	1049244415
	.long	1049303505
	.long	1049362720
	.long	1049422057
	.long	1049481518
	.long	1049541100
	.long	1049600802
	.long	1049660624
	.long	1049720564
	.long	1049780622
	.long	1049840796
	.long	1049901085
	.long	1049961489
	.long	1050022006
	.long	1050082636
	.long	1050143376
	.long	1050204227
	.long	1050265187
	.long	1050326255
	.long	1050387430
	.long	1050448711
	.long	1050510097
	.long	1050571587
	.long	1050633179
	.long	1050694874
	.long	1050756668
	.long	1050818563
	.long	1050880555
	.long	1050942645
	.long	1051004832
	.long	1051067113
	.long	1051129489
	.long	1051191957
	.long	1051254517
	.long	1051317168
	.long	1051379909
	.long	1051442738
	.long	1051505654
	.long	1051568657
	.long	1051631745
	.long	1051694917
	.long	1051758171
	.long	1051821508
	.long	1051884925
	.long	1051948421
	.long	1052011996
	.long	1052075648
	.long	1052139376
	.long	1052203179
	.long	1052267055
	.long	1052331004
	.long	1052395025
	.long	1052459116
	.long	1052523275
	.long	1052587503
	.long	1052651798
	.long	1052716158
	.long	1052780582
	.long	1052845069
	.long	1052909619
	.long	1052974230
	.long	1053038900
	.long	1053103628
	.long	1053168414
	.long	1053233256
	.long	1053298153
	.long	1053363103
	.long	1053428106
	.long	1053493161
	.long	1053558265
	.long	1053623419
	.long	1053688620
	.long	1053753867
	.long	1053819160
	.long	1053884497
	.long	1053949877
	.long	1054015298
	.long	1054080760
	.long	1054146261
	.long	1054211800
	.long	1054277375
	.long	1054342987
	.long	1054408632
	.long	1054474311
	.long	1054540021
	.long	1054605763
	.long	1054671533
	.long	1054737332
	.long	1054803158
	.long	1054869009
	.long	1054934885
	.long	1055000784
	.long	1055066705
	.long	1055132647
	.long	1055198608
	.long	1055264588
	.long	1055330585
	.long	1055396597
	.long	1055462624
	.long	1055528665
	.long	1055594717
	.long	1055660780
	.long	1055726853
	.long	1055792935
	.long	1055859023
	.long	1055925117
	.long	1055991216
	.long	1056057318
	.long	1056123423
	.long	1056189528
	.long	1056255633
	.long	1056321736
	.long	1056387837
	.long	1056453933
	.long	1056520024
	.long	1056586108
	.long	1056652185
	.long	1056718252
	.long	1056784309
	.long	1056850355
	.long	1056916387
	.long	1056973507
	.long	1057006509
	.long	1057039502
	.long	1057072486
	.long	1057105461
	.long	1057138426
	.long	1057171380
	.long	1057204323
	.long	1057237253
	.long	1057270171
	.long	1057303076
	.long	1057335967
	.long	1057368844
	.long	1057401705
	.long	1057434551
	.long	1057467380
	.long	1057500192
	.long	1057532987
	.long	1057565764
	.long	1057598522
	.long	1057631260
	.long	1057663979
	.long	1057696676
	.long	1057729353
	.long	1057762008
	.long	1057794640
	.long	1057827249
	.long	1057859835
	.long	1057892396
	.long	1057924933
	.long	1057957444
	.long	1057989929
	.long	1058022387
	.long	1058054818
	.long	1058087221
	.long	1058119596
	.long	1058151941
	.long	1058184257
	.long	1058216543
	.long	1058248798
	.long	1058281021
	.long	1058313212
	.long	1058345371
	.long	1058377496
	.long	1058409588
	.long	1058441645
	.long	1058473667
	.long	1058505654
	.long	1058537605
	.long	1058569518
	.long	1058601395
	.long	1058633234
	.long	1058665034
	.long	1058696795
	.long	1058728517
	.long	1058760198
	.long	1058791839
	.long	1058823438
	.long	1058854996
	.long	1058886511
	.long	1058917983
	.long	1058949412
	.long	1058980796
	.long	1059012136
	.long	1059043430
	.long	1059074679
	.long	1059105882
	.long	1059137038
	.long	1059168146
	.long	1059199206
	.long	1059230218
	.long	1059261181
	.long	1059292094
	.long	1059322957
	.long	1059353769
	.long	1059384531
	.long	1059415240
	.long	1059445898
	.long	1059476502
	.long	1059507054
	.long	1059537551
	.long	1059567994
	.long	1059598383
	.long	1059628716
	.long	1059658993
	.long	1059689214
	.long	1059719378
	.long	1059749484
	.long	1059779533
	.long	1059809523
	.long	1059839455
	.long	1059869327
	.long	1059899139
	.long	1059928891
	.long	1059958582
	.long	1059988212
	.long	1060017780
	.long	1060047286
	.long	1060076729
	.long	1060106109
	.long	1060135425
	.long	1060164677
	.long	1060193864
	.long	1060222986
	.long	1060252043
	.long	1060281034
	.long	1060309958
	.long	1060338815
	.long	1060367606
	.long	1060396328
	.long	1060424982
	.long	1060453567
	.long	1060482084
	.long	1060510530
	.long	1060538907
	.long	1060567214
	.long	1060595449
	.long	1060623614
	.long	1060651707
	.long	1060679727
	.long	1060707675
	.long	1060735551
	.long	1060763353
	.long	1060791081
	.long	1060818736
	.long	1060846316
	.long	1060873821
	.long	1060901250
	.long	1060928605
	.long	1060955883
	.long	1060983084
	.long	1061010209
	.long	1061037257
	.long	1061064227
	.long	1061091120
	.long	1061117934
	.long	1061144670
	.long	1061171326
	.long	1061197904
	.long	1061224401
	.long	1061250819
	.long	1061277156
	.long	1061303413
	.long	1061329589
	.long	1061355683
	.long	1061381696
	.long	1061407627
	.long	1061433475
	.long	1061459241
	.long	1061484924
	.long	1061510523
	.long	1061536039
	.long	1061561471
	.long	1061586820
	.long	1061612083
	.long	1061637262
	.long	1061662356
	.long	1061687364
	.long	1061712287
	.long	1061737124
	.long	1061761875
	.long	1061786540
	.long	1061811118
	.long	1061835609
	.long	1061860013
	.long	1061884329
	.long	1061908557
	.long	1061932698
	.long	1061956751
	.long	1061980715
	.long	1062004590
	.long	1062028377
	.long	1062052074
	.long	1062075682
	.long	1062099200
	.long	1062122629
	.long	1062145968
	.long	1062169216
	.long	1062192374
	.long	1062215442
	.long	1062238418
	.long	1062261304
	.long	1062284098
	.long	1062306802
	.long	1062329413
	.long	1062351933
	.long	1062374361
	.long	1062396696
	.long	1062418940
	.long	1062441091
	.long	1062463150
	.long	1062485115
	.long	1062506988
	.long	1062528768
	.long	1062550455
	.long	1062572048
	.long	1062593548
	.long	1062614954
	.long	1062636267
	.long	1062657486
	.long	1062678611
	.long	1062699641
	.long	1062720578
	.long	1062741420
	.long	1062762168
	.long	1062782821
	.long	1062803380
	.long	1062823844
	.long	1062844213
	.long	1062864488
	.long	1062884667
	.long	1062904751
	.long	1062924741
	.long	1062944635
	.long	1062964434
	.long	1062984137
	.long	1063003745
	.long	1063023258
	.long	1063042675
	.long	1063061997
	.long	1063081223
	.long	1063100354
	.long	1063119389
	.long	1063138328
	.long	1063157171
	.long	1063175919
	.long	1063194571
	.long	1063213128
	.long	1063231588
	.long	1063249953
	.long	1063268222
	.long	1063286395
	.long	1063304472
	.long	1063322453
	.long	1063340339
	.long	1063358129
	.long	1063375823
	.long	1063393421
	.long	1063410924
	.long	1063428331
	.long	1063445642
	.long	1063462858
	.long	1063479978
	.long	1063497002
	.long	1063513931
	.long	1063530765
	.long	1063547503
	.long	1063564146
	.long	1063580693
	.long	1063597146
	.long	1063613503
	.long	1063629765
	.long	1063645932
	.long	1063662004
	.long	1063677981
	.long	1063693863
	.long	1063709651
	.long	1063725344
	.long	1063740943
	.long	1063756447
	.long	1063771857
	.long	1063787172
	.long	1063802394
	.long	1063817521
	.long	1063832555
	.long	1063847495
	.long	1063862341
	.long	1063877094
	.long	1063891754
	.long	1063906320
	.long	1063920793
	.long	1063935173
	.long	1063949460
	.long	1063963655
	.long	1063977757
	.long	1063991766
	.long	1064005684
	.long	1064019509
	.long	1064033242
	.long	1064046884
	.long	1064060434
	.long	1064073892
	.long	1064087260
	.long	1064100536
	.long	1064113721
	.long	1064126816
	.long	1064139820
	.long	1064152733
	.long	1064165557
	.long	1064178291
	.long	1064190934
	.long	1064203489
	.long	1064215954
	.long	1064228329
	.long	1064240616
	.long	1064252814
	.long	1064264923
	.long	1064276945
	.long	1064288878
	.long	1064300723
	.long	1064312480
	.long	1064324150
	.long	1064335733
	.long	1064347229
	.long	1064358639
	.long	1064369961
	.long	1064381198
	.long	1064392348
	.long	1064403413
	.long	1064414392
	.long	1064425286
	.long	1064436095
	.long	1064446819
	.long	1064457459
	.long	1064468014
	.long	1064478485
	.long	1064488873
	.long	1064499177
	.long	1064509398
	.long	1064519537
	.long	1064529592
	.long	1064539565
	.long	1064549456
	.long	1064559266
	.long	1064568993
	.long	1064578640
	.long	1064588206
	.long	1064597691
	.long	1064607095
	.long	1064616420
	.long	1064625665
	.long	1064634830
	.long	1064643916
	.long	1064652923
	.long	1064661852
	.long	1064670702
	.long	1064679475
	.long	1064688170
	.long	1064696787
	.long	1064705328
	.long	1064713792
	.long	1064722179
	.long	1064730490
	.long	1064738726
	.long	1064746886
	.long	1064754971
	.long	1064762981
	.long	1064770917
	.long	1064778779
	.long	1064786567
	.long	1064794281
	.long	1064801923
	.long	1064809491
	.long	1064816987
	.long	1064824411
	.long	1064831764
	.long	1064839044
	.long	1064846254
	.long	1064853393
	.long	1064860462
	.long	1064867460
	.long	1064874389
	.long	1064881248
	.long	1064888039
	.long	1064894761
	.long	1064901414
	.long	1064907999
	.long	1064914517
	.long	1064920968
	.long	1064927352
	.long	1064933669
	.long	1064939920
	.long	1064946105
	.long	1064952225
	.long	1064958280
	.long	1064964270
	.long	1064970196
	.long	1064976057
	.long	1064981856
	.long	1064987590
	.long	1064993262
	.long	1064998872
	.long	1065004419
	.long	1065009905
	.long	1065015329
	.long	1065020692
	.long	1065025994
	.long	1065031236
	.long	1065036418
	.long	1065041541
	.long	1065046605
	.long	1065051609
	.long	1065056555
	.long	1065061444
	.long	1065066274
	.long	1065071048
	.long	1065075764
	.long	1065080424
	.long	1065085027
	.long	1065089575
	.long	1065094068
	.long	1065098505
	.long	1065102888
	.long	1065107217
	.long	1065111492
	.long	1065115713
	.long	1065119881
	.long	1065123996
	.long	1065128060
	.long	1065132071
	.long	1065136030
	.long	1065139938
	.long	1065143796
	.long	1065147603
	.long	1065151360
	.long	1065155067
	.long	1065158725
	.long	1065162334
	.long	1065165895
	.long	1065169407
	.long	1065172872
	.long	1065176289
	.long	1065179659
	.long	1065182983
	.long	1065186260
	.long	1065189491
	.long	1065192677
	.long	1065195818
	.long	1065198914
	.long	1065201966
	.long	1065204974
	.long	1065207938
	.long	1065210859
	.long	1065213737
	.long	1065216573
	.long	1065219366
	.long	1065222118
	.long	1065224828
	.long	1065227498
	.long	1065230127
	.long	1065232715
	.long	1065235264
	.long	1065237773
	.long	1065240244
	.long	1065242675
	.long	1065245068
	.long	1065247423
	.long	1065249741
	.long	1065252021
	.long	1065254264
	.long	1065256471
	.long	1065258642
	.long	1065260777
	.long	1065262876
	.long	1065264940
	.long	1065266970
	.long	1065268965
	.long	1065270926
	.long	1065272854
	.long	1065274748
	.long	1065276610
	.long	1065278439
	.long	1065280235
	.long	1065282000
	.long	1065283733
	.long	1065285435
	.long	1065287107
	.long	1065288748
	.long	1065290358
	.long	1065291939
	.long	1065293491
	.long	1065295013
	.long	1065296507
	.long	1065297972
	.long	1065299410
	.long	1065300819
	.long	1065302202
	.long	1065303557
	.long	1065304885
	.long	1065306187
	.long	1065307464
	.long	1065308714
	.long	1065309939
	.long	1065311139
	.long	1065312314
	.long	1065313465
	.long	1065314592
	.long	1065315695
	.long	1065316774
	.long	1065317831
	.long	1065318864
	.long	1065319876
	.long	1065320865
	.long	1065321832
	.long	1065322777
	.long	1065323702
	.long	1065324605
	.long	1065325488
	.long	1065326350
	.long	1065327193
	.long	1065328015
	.long	1065328819
	.long	1065329603
	.long	1065330368
	.long	1065331115
	.long	1065331844
	.long	1065332554
	.long	1065333247
	.long	1065333923
	.long	1065334581
	.long	1065335223
	.long	1065335848
	.long	1065336457
	.long	1065337049
	.long	1065337626
	.long	1065338188
	.long	1065338735
	.long	1065339266
	.long	1065339783
	.long	1065340286
	.long	1065340774
	.long	1065341249
	.long	1065341710
	.long	1065342157
	.long	1065342592
	.long	1065343014
	.long	1065343423
	.long	1065343820
	.long	1065344204
	.long	1065344577
	.long	1065344938
	.long	1065345288
	.long	1065345627
	.long	1065345955
	.long	1065346272
	.long	1065346579
	.long	1065346875
	.long	1065347162
	.long	1065347438
	.long	1065347706
	.long	1065347964
	.long	1065348212
	.long	1065348452
	.long	1065348683
	.long	1065348906
	.long	1065349121
	.long	1065349327
	.long	1065349525
	.long	1065349716
	.long	1065349900
	.long	1065350076
	.long	1065350245
	.long	1065350407
	.long	1065350562
	.long	1065350711
	.long	1065350854
	.long	1065350990
	.long	1065351121
	.long	1065351245
	.long	1065351364
	.long	1065351478
	.long	1065351586
	.long	1065351689
	.long	1065351788
	.long	1065351881
	.long	1065351970
	.long	1065352054
	.long	1065352134
	.long	1065352210
	.long	1065352281
	.long	1065352349
	.long	1065352413
	.long	1065352474
	.long	1065352531
	.long	1065352584
	.long	1065352635
	.long	1065352682
	.long	1065352726
	.long	1065352768
	.long	1065352807
	.long	1065352843
	.long	1065352877
	.long	1065352908
	.long	1065352938
	.long	1065352965
	.long	1065352990
	.long	1065353013
	.long	1065353034
	.long	1065353054
	.long	1065353072
	.long	1065353088
	.long	1065353103
	.long	1065353117
	.long	1065353129
	.long	1065353140
	.long	1065353151
	.long	1065353160
	.long	1065353168
	.long	1065353175
	.long	1065353181
	.long	1065353187
	.long	1065353192
	.long	1065353196
	.long	1065353199
	.long	1065353203
	.long	1065353205
	.long	1065353208
	.long	1065353209
	.long	1065353211
	.long	1065353212
	.long	1065353213
	.long	1065353214
	.long	1065353215
	.long	1065353215
	.long	1065353215
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 32
_vwin1024:
	.long	913837116
	.long	940279549
	.long	952224019
	.long	960358392
	.long	966587796
	.long	971667059
	.long	975420142
	.long	978975089
	.long	982252320
	.long	984537184
	.long	987075618
	.long	989861635
	.long	991384273
	.long	993033537
	.long	994809365
	.long	996711688
	.long	998492393
	.long	999569940
	.long	1000710618
	.long	1001914384
	.long	1003181192
	.long	1004510992
	.long	1005903734
	.long	1006996162
	.long	1007755392
	.long	1008546009
	.long	1009367980
	.long	1010221275
	.long	1011105859
	.long	1012021698
	.long	1012968756
	.long	1013946995
	.long	1014956376
	.long	1015509214
	.long	1016044986
	.long	1016596266
	.long	1017163033
	.long	1017745264
	.long	1018342935
	.long	1018956022
	.long	1019584499
	.long	1020228341
	.long	1020887521
	.long	1021562012
	.long	1022251786
	.long	1022956814
	.long	1023543622
	.long	1023911345
	.long	1024286651
	.long	1024669521
	.long	1025059942
	.long	1025457894
	.long	1025863363
	.long	1026276329
	.long	1026696775
	.long	1027124682
	.long	1027560033
	.long	1028002807
	.long	1028452985
	.long	1028910546
	.long	1029375472
	.long	1029847739
	.long	1030327328
	.long	1030814216
	.long	1031308381
	.long	1031804292
	.long	1032058617
	.long	1032316546
	.long	1032578067
	.long	1032843167
	.long	1033111834
	.long	1033384055
	.long	1033659817
	.long	1033939107
	.long	1034221912
	.long	1034508218
	.long	1034798010
	.long	1035091276
	.long	1035387999
	.long	1035688166
	.long	1035991761
	.long	1036298770
	.long	1036609176
	.long	1036922965
	.long	1037240120
	.long	1037560624
	.long	1037884463
	.long	1038211618
	.long	1038542072
	.long	1038875809
	.long	1039212811
	.long	1039553059
	.long	1039896537
	.long	1040215309
	.long	1040390249
	.long	1040566775
	.long	1040744878
	.long	1040924549
	.long	1041105777
	.long	1041288552
	.long	1041472864
	.long	1041658703
	.long	1041846058
	.long	1042034920
	.long	1042225276
	.long	1042417117
	.long	1042610431
	.long	1042805207
	.long	1043001434
	.long	1043199101
	.long	1043398195
	.long	1043598706
	.long	1043800621
	.long	1044003928
	.long	1044208616
	.long	1044414672
	.long	1044622083
	.long	1044830838
	.long	1045040922
	.long	1045252325
	.long	1045465031
	.long	1045679029
	.long	1045894306
	.long	1046110847
	.long	1046328639
	.long	1046547669
	.long	1046767922
	.long	1046989385
	.long	1047212044
	.long	1047435884
	.long	1047660892
	.long	1047887051
	.long	1048114349
	.long	1048342769
	.long	1048572298
	.long	1048689460
	.long	1048805310
	.long	1048921691
	.long	1049038596
	.long	1049156016
	.long	1049273945
	.long	1049392373
	.long	1049511294
	.long	1049630698
	.long	1049750578
	.long	1049870926
	.long	1049991734
	.long	1050112992
	.long	1050234694
	.long	1050356829
	.long	1050479391
	.long	1050602370
	.long	1050725759
	.long	1050849547
	.long	1050973727
	.long	1051098289
	.long	1051223226
	.long	1051348527
	.long	1051474185
	.long	1051600190
	.long	1051726534
	.long	1051853206
	.long	1051980199
	.long	1052107502
	.long	1052235108
	.long	1052363006
	.long	1052491187
	.long	1052619642
	.long	1052748362
	.long	1052877337
	.long	1053006557
	.long	1053136014
	.long	1053265698
	.long	1053395598
	.long	1053525707
	.long	1053656013
	.long	1053786508
	.long	1053917181
	.long	1054048024
	.long	1054179026
	.long	1054310177
	.long	1054441468
	.long	1054572888
	.long	1054704429
	.long	1054836080
	.long	1054967831
	.long	1055099673
	.long	1055231596
	.long	1055363589
	.long	1055495643
	.long	1055627748
	.long	1055759893
	.long	1055892070
	.long	1056024267
	.long	1056156475
	.long	1056288685
	.long	1056420885
	.long	1056553067
	.long	1056685220
	.long	1056817333
	.long	1056949398
	.long	1057023006
	.long	1057088975
	.long	1057154904
	.long	1057220790
	.long	1057286626
	.long	1057352407
	.long	1057418130
	.long	1057483788
	.long	1057549378
	.long	1057614893
	.long	1057680330
	.long	1057745683
	.long	1057810948
	.long	1057876119
	.long	1057941192
	.long	1058006161
	.long	1058071023
	.long	1058135772
	.long	1058200404
	.long	1058264913
	.long	1058329296
	.long	1058393546
	.long	1058457661
	.long	1058521634
	.long	1058585461
	.long	1058649138
	.long	1058712661
	.long	1058776023
	.long	1058839222
	.long	1058902252
	.long	1058965109
	.long	1059027789
	.long	1059090286
	.long	1059152598
	.long	1059214718
	.long	1059276644
	.long	1059338370
	.long	1059399892
	.long	1059461207
	.long	1059522309
	.long	1059583195
	.long	1059643861
	.long	1059704303
	.long	1059764516
	.long	1059824497
	.long	1059884241
	.long	1059943744
	.long	1060003004
	.long	1060062015
	.long	1060120775
	.long	1060179278
	.long	1060237523
	.long	1060295504
	.long	1060353219
	.long	1060410663
	.long	1060467834
	.long	1060524728
	.long	1060581340
	.long	1060637669
	.long	1060693710
	.long	1060749461
	.long	1060804918
	.long	1060860078
	.long	1060914937
	.long	1060969493
	.long	1061023743
	.long	1061077683
	.long	1061131312
	.long	1061184625
	.long	1061237620
	.long	1061290295
	.long	1061342646
	.long	1061394671
	.long	1061446368
	.long	1061497734
	.long	1061548766
	.long	1061599462
	.long	1061649820
	.long	1061699837
	.long	1061749511
	.long	1061798840
	.long	1061847822
	.long	1061896454
	.long	1061944735
	.long	1061992663
	.long	1062040236
	.long	1062087452
	.long	1062134310
	.long	1062180807
	.long	1062226941
	.long	1062272713
	.long	1062318119
	.long	1062363158
	.long	1062407830
	.long	1062452132
	.long	1062496063
	.long	1062539623
	.long	1062582810
	.long	1062625622
	.long	1062668060
	.long	1062710121
	.long	1062751806
	.long	1062793112
	.long	1062834040
	.long	1062874589
	.long	1062914758
	.long	1062954546
	.long	1062993953
	.long	1063032979
	.long	1063071622
	.long	1063109883
	.long	1063147762
	.long	1063185257
	.long	1063222370
	.long	1063259099
	.long	1063295445
	.long	1063331408
	.long	1063366988
	.long	1063402185
	.long	1063436999
	.long	1063471430
	.long	1063505479
	.long	1063539146
	.long	1063572432
	.long	1063605336
	.long	1063637860
	.long	1063670004
	.long	1063701769
	.long	1063733155
	.long	1063764163
	.long	1063794795
	.long	1063825050
	.long	1063854930
	.long	1063884435
	.long	1063913568
	.long	1063942328
	.long	1063970717
	.long	1063998736
	.long	1064026387
	.long	1064053670
	.long	1064080587
	.long	1064107140
	.long	1064133329
	.long	1064159156
	.long	1064184624
	.long	1064209732
	.long	1064234484
	.long	1064258880
	.long	1064282922
	.long	1064306613
	.long	1064329953
	.long	1064352945
	.long	1064375590
	.long	1064397891
	.long	1064419850
	.long	1064441467
	.long	1064462747
	.long	1064483690
	.long	1064504298
	.long	1064524575
	.long	1064544521
	.long	1064564140
	.long	1064583433
	.long	1064602403
	.long	1064621052
	.long	1064639383
	.long	1064657397
	.long	1064675098
	.long	1064692488
	.long	1064709569
	.long	1064726344
	.long	1064742815
	.long	1064758986
	.long	1064774857
	.long	1064790433
	.long	1064805716
	.long	1064820708
	.long	1064835413
	.long	1064849832
	.long	1064863970
	.long	1064877827
	.long	1064891408
	.long	1064904715
	.long	1064917751
	.long	1064930519
	.long	1064943021
	.long	1064955261
	.long	1064967241
	.long	1064978964
	.long	1064990434
	.long	1065001653
	.long	1065012624
	.long	1065023350
	.long	1065033835
	.long	1065044080
	.long	1065054090
	.long	1065063866
	.long	1065073413
	.long	1065082733
	.long	1065091829
	.long	1065100704
	.long	1065109361
	.long	1065117804
	.long	1065126035
	.long	1065134057
	.long	1065141874
	.long	1065149488
	.long	1065156902
	.long	1065164121
	.long	1065171145
	.long	1065177980
	.long	1065184627
	.long	1065191090
	.long	1065197372
	.long	1065203475
	.long	1065209404
	.long	1065215160
	.long	1065220747
	.long	1065226168
	.long	1065231426
	.long	1065236524
	.long	1065241464
	.long	1065246251
	.long	1065250886
	.long	1065255372
	.long	1065259714
	.long	1065263913
	.long	1065267972
	.long	1065271894
	.long	1065275683
	.long	1065279341
	.long	1065282871
	.long	1065286275
	.long	1065289557
	.long	1065292719
	.long	1065295764
	.long	1065298695
	.long	1065301514
	.long	1065304224
	.long	1065306829
	.long	1065309330
	.long	1065311730
	.long	1065314031
	.long	1065316237
	.long	1065318350
	.long	1065320373
	.long	1065322307
	.long	1065324156
	.long	1065325922
	.long	1065327607
	.long	1065329213
	.long	1065330744
	.long	1065332201
	.long	1065333587
	.long	1065334904
	.long	1065336154
	.long	1065337340
	.long	1065338463
	.long	1065339526
	.long	1065340532
	.long	1065341481
	.long	1065342376
	.long	1065343220
	.long	1065344013
	.long	1065344759
	.long	1065345459
	.long	1065346115
	.long	1065346728
	.long	1065347301
	.long	1065347836
	.long	1065348333
	.long	1065348796
	.long	1065349225
	.long	1065349622
	.long	1065349989
	.long	1065350327
	.long	1065350638
	.long	1065350923
	.long	1065351184
	.long	1065351422
	.long	1065351638
	.long	1065351835
	.long	1065352012
	.long	1065352172
	.long	1065352316
	.long	1065352444
	.long	1065352558
	.long	1065352659
	.long	1065352748
	.long	1065352825
	.long	1065352893
	.long	1065352951
	.long	1065353002
	.long	1065353044
	.long	1065353080
	.long	1065353110
	.long	1065353135
	.long	1065353155
	.long	1065353171
	.long	1065353184
	.long	1065353194
	.long	1065353201
	.long	1065353206
	.long	1065353210
	.long	1065353213
	.long	1065353214
	.long	1065353215
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 32
_vwin512:
	.long	930614441
	.long	957056566
	.long	969000486
	.long	977134174
	.long	983363050
	.long	988439893
	.long	992193080
	.long	995744719
	.long	999023273
	.long	1001304618
	.long	1003838221
	.long	1006623692
	.long	1008146779
	.long	1009790714
	.long	1011559874
	.long	1013453980
	.long	1015247150
	.long	1016318689
	.long	1017452217
	.long	1018647553
	.long	1019904501
	.long	1021222854
	.long	1022602395
	.long	1023726535
	.long	1024477141
	.long	1025257978
	.long	1026068910
	.long	1026909797
	.long	1027780493
	.long	1028680844
	.long	1029610689
	.long	1030569861
	.long	1031558185
	.long	1032187132
	.long	1032710170
	.long	1033247501
	.long	1033799022
	.long	1034364628
	.long	1034944210
	.long	1035537653
	.long	1036144840
	.long	1036765649
	.long	1037399954
	.long	1038047627
	.long	1038708531
	.long	1039382530
	.long	1040069481
	.long	1040478314
	.long	1040834518
	.long	1041196971
	.long	1041565593
	.long	1041940301
	.long	1042321012
	.long	1042707637
	.long	1043100088
	.long	1043498274
	.long	1043902101
	.long	1044311474
	.long	1044726293
	.long	1045146460
	.long	1045571870
	.long	1046002419
	.long	1046438000
	.long	1046878504
	.long	1047323818
	.long	1047773828
	.long	1048228420
	.long	1048631737
	.long	1048863435
	.long	1049097242
	.long	1049333097
	.long	1049570936
	.long	1049810694
	.long	1050052307
	.long	1050295708
	.long	1050540829
	.long	1050787603
	.long	1051035961
	.long	1051285831
	.long	1051537145
	.long	1051789829
	.long	1052043812
	.long	1052299021
	.long	1052555381
	.long	1052812818
	.long	1053071257
	.long	1053330622
	.long	1053590836
	.long	1053851823
	.long	1054113505
	.long	1054375805
	.long	1054638644
	.long	1054901944
	.long	1055165625
	.long	1055429609
	.long	1055693816
	.long	1055958166
	.long	1056222581
	.long	1056486979
	.long	1056751282
	.long	1056990009
	.long	1057121945
	.long	1057253714
	.long	1057385276
	.long	1057516592
	.long	1057647622
	.long	1057778327
	.long	1057908668
	.long	1058038606
	.long	1058168103
	.long	1058297121
	.long	1058425621
	.long	1058553566
	.long	1058680919
	.long	1058807644
	.long	1058933703
	.long	1059059061
	.long	1059183682
	.long	1059307532
	.long	1059430576
	.long	1059552780
	.long	1059674110
	.long	1059794536
	.long	1059914023
	.long	1060032541
	.long	1060150059
	.long	1060266547
	.long	1060381975
	.long	1060496316
	.long	1060609540
	.long	1060721622
	.long	1060832535
	.long	1060942253
	.long	1061050752
	.long	1061158008
	.long	1061263998
	.long	1061368700
	.long	1061472093
	.long	1061574156
	.long	1061674871
	.long	1061774218
	.long	1061872182
	.long	1061968744
	.long	1062063889
	.long	1062157603
	.long	1062249873
	.long	1062340684
	.long	1062430027
	.long	1062517890
	.long	1062604263
	.long	1062689138
	.long	1062772506
	.long	1062854362
	.long	1062934700
	.long	1063013514
	.long	1063090801
	.long	1063166557
	.long	1063240782
	.long	1063313475
	.long	1063384634
	.long	1063454262
	.long	1063522360
	.long	1063588931
	.long	1063653980
	.long	1063717509
	.long	1063779526
	.long	1063840037
	.long	1063899048
	.long	1063956569
	.long	1064012608
	.long	1064067174
	.long	1064120280
	.long	1064171935
	.long	1064222153
	.long	1064270945
	.long	1064318326
	.long	1064364311
	.long	1064408913
	.long	1064452149
	.long	1064494036
	.long	1064534589
	.long	1064573827
	.long	1064611768
	.long	1064648430
	.long	1064683832
	.long	1064717995
	.long	1064750938
	.long	1064782682
	.long	1064813248
	.long	1064842658
	.long	1064870933
	.long	1064898096
	.long	1064924168
	.long	1064949174
	.long	1064973135
	.long	1064996075
	.long	1065018018
	.long	1065038987
	.long	1065059007
	.long	1065078101
	.long	1065096294
	.long	1065113609
	.long	1065130072
	.long	1065145706
	.long	1065160536
	.long	1065174586
	.long	1065187881
	.long	1065200446
	.long	1065212303
	.long	1065223478
	.long	1065233995
	.long	1065243876
	.long	1065253147
	.long	1065261831
	.long	1065269950
	.long	1065277528
	.long	1065284588
	.long	1065291152
	.long	1065297243
	.long	1065302883
	.long	1065308092
	.long	1065312893
	.long	1065317305
	.long	1065321351
	.long	1065325049
	.long	1065328420
	.long	1065331482
	.long	1065334254
	.long	1065336755
	.long	1065339002
	.long	1065341013
	.long	1065342804
	.long	1065344392
	.long	1065345792
	.long	1065347020
	.long	1065348089
	.long	1065349014
	.long	1065349809
	.long	1065350485
	.long	1065351056
	.long	1065351533
	.long	1065351926
	.long	1065352246
	.long	1065352503
	.long	1065352705
	.long	1065352860
	.long	1065352978
	.long	1065353063
	.long	1065353123
	.long	1065353164
	.long	1065353189
	.long	1065353204
	.long	1065353212
	.long	1065353215
	.long	1065353216
	.long	1065353216
	.align 32
_vwin256:
	.long	947391493
	.long	973833010
	.long	985774710
	.long	993905634
	.long	1000132390
	.long	1005199499
	.long	1008953077
	.long	1012491327
	.long	1015775160
	.long	1018042171
	.long	1020556015
	.long	1023315040
	.long	1024863789
	.long	1026485618
	.long	1028226971
	.long	1030086620
	.long	1031931003
	.long	1032977055
	.long	1034080071
	.long	1035239206
	.long	1036453549
	.long	1037722128
	.long	1039043903
	.long	1040302580
	.long	1041014969
	.long	1041752192
	.long	1042513590
	.long	1043298470
	.long	1044106100
	.long	1044935714
	.long	1045786509
	.long	1046657643
	.long	1047548243
	.long	1048457396
	.long	1048980078
	.long	1049451772
	.long	1049931273
	.long	1050418058
	.long	1050911588
	.long	1051411312
	.long	1051916663
	.long	1052427062
	.long	1052941917
	.long	1053460627
	.long	1053982582
	.long	1054507162
	.long	1055033742
	.long	1055561689
	.long	1056090370
	.long	1056619147
	.long	1057055995
	.long	1057319523
	.long	1057582145
	.long	1057843545
	.long	1058103412
	.long	1058361438
	.long	1058617319
	.long	1058870759
	.long	1059121466
	.long	1059369157
	.long	1059613556
	.long	1059854398
	.long	1060091427
	.long	1060324395
	.long	1060553069
	.long	1060777226
	.long	1060996656
	.long	1061211162
	.long	1061420561
	.long	1061624683
	.long	1061823374
	.long	1062016494
	.long	1062203919
	.long	1062385540
	.long	1062561263
	.long	1062731011
	.long	1062894721
	.long	1063052348
	.long	1063203861
	.long	1063349246
	.long	1063488502
	.long	1063621646
	.long	1063748706
	.long	1063869729
	.long	1063984773
	.long	1064093909
	.long	1064197223
	.long	1064294811
	.long	1064386784
	.long	1064473260
	.long	1064554371
	.long	1064630257
	.long	1064701067
	.long	1064766959
	.long	1064828097
	.long	1064884652
	.long	1064936803
	.long	1064984731
	.long	1065028623
	.long	1065068668
	.long	1065105059
	.long	1065137991
	.long	1065167657
	.long	1065194253
	.long	1065217975
	.long	1065239013
	.long	1065257561
	.long	1065273805
	.long	1065287931
	.long	1065300118
	.long	1065310542
	.long	1065319373
	.long	1065326774
	.long	1065332903
	.long	1065337909
	.long	1065341935
	.long	1065345115
	.long	1065347573
	.long	1065349427
	.long	1065350783
	.long	1065351739
	.long	1065352382
	.long	1065352788
	.long	1065353024
	.long	1065353146
	.long	1065353198
	.long	1065353214
	.long	1065353216
	.align 32
_vwin128:
	.long	964168104
	.long	990607121
	.long	1002539911
	.long	1010659658
	.long	1016877716
	.long	1021904990
	.long	1025659690
	.long	1029142090
	.long	1032446858
	.long	1034652679
	.long	1037081122
	.long	1039724396
	.long	1041380516
	.long	1042903140
	.long	1044518209
	.long	1046219587
	.long	1048000559
	.long	1049214917
	.long	1050173788
	.long	1051160711
	.long	1052171268
	.long	1053200828
	.long	1054244583
	.long	1055297584
	.long	1056354787
	.long	1057187853
	.long	1057713017
	.long	1058232674
	.long	1058744362
	.long	1059245705
	.long	1059734438
	.long	1060208433
	.long	1060665726
	.long	1061104537
	.long	1061523292
	.long	1061920639
	.long	1062295461
	.long	1062646888
	.long	1062974297
	.long	1063277320
	.long	1063555836
	.long	1063809969
	.long	1064040074
	.long	1064246726
	.long	1064430701
	.long	1064592958
	.long	1064734618
	.long	1064856936
	.long	1064961283
	.long	1065049114
	.long	1065121945
	.long	1065181327
	.long	1065228817
	.long	1065265959
	.long	1065294256
	.long	1065315146
	.long	1065329988
	.long	1065340036
	.long	1065346427
	.long	1065350161
	.long	1065352094
	.long	1065352923
	.long	1065353178
	.long	1065353216
	.align 32
_vwin64:
	.long	980942872
	.long	1007371852
	.long	1019268338
	.long	1027341428
	.long	1033521494
	.long	1038376433
	.long	1042129912
	.long	1045358516
	.long	1048747318
	.long	1050664014
	.long	1052683969
	.long	1054770241
	.long	1056883373
	.long	1057973690
	.long	1058996472
	.long	1059973405
	.long	1060887545
	.long	1061724717
	.long	1062474144
	.long	1063128870
	.long	1063685934
	.long	1064146288
	.long	1064514478
	.long	1064798111
	.long	1065007170
	.long	1065153220
	.long	1065248587
	.long	1065305540
	.long	1065335537
	.long	1065348569
	.long	1065352610
	.long	1065353208
	.align 32
_residue2_exportbundle:
	.long	_res0_pack
	.long	_res0_unpack
	.long	_res0_look
	.long	_res0_free_info
	.long	_res0_free_look
	.long	_res2_class
	.long	_res2_forward
	.long	_res2_inverse
	.align 32
_residue1_exportbundle:
	.long	_res0_pack
	.long	_res0_unpack
	.long	_res0_look
	.long	_res0_free_info
	.long	_res0_free_look
	.long	_res1_class
	.long	_res1_forward
	.long	_res1_inverse
	.align 32
_residue0_exportbundle:
	.long	0
	.long	_res0_unpack
	.long	_res0_look
	.long	_res0_free_info
	.long	_res0_free_look
	.long	0
	.long	0
	.long	_res0_inverse
	.align 4
_floor1_exportbundle:
	.long	_floor1_pack
	.long	_floor1_unpack
	.long	_floor1_look
	.long	_floor1_free_info
	.long	_floor1_free_look
	.long	_floor1_inverse1
	.long	_floor1_inverse2
	.align 4
_floor0_exportbundle:
	.long	0
	.long	_floor0_unpack
	.long	_floor0_look
	.long	_floor0_free_info
	.long	_floor0_free_look
	.long	_floor0_inverse1
	.long	_floor0_inverse2
	.align 32
_FLOOR1_fromdB_LOOKUP:
	.long	870626366
	.long	871600393
	.long	872526475
	.long	873078844
	.long	873667107
	.long	874293600
	.long	874960807
	.long	875671371
	.long	876428112
	.long	877234032
	.long	878092323
	.long	879006392
	.long	879979861
	.long	880910216
	.long	881462268
	.long	882050195
	.long	882676329
	.long	883343154
	.long	884053311
	.long	884809619
	.long	885615076
	.long	886472877
	.long	887386422
	.long	888359334
	.long	889293960
	.long	889845696
	.long	890433286
	.long	891059062
	.long	891725504
	.long	892435255
	.long	893191130
	.long	893996126
	.long	894853435
	.long	895766457
	.long	896738812
	.long	897677706
	.long	898229126
	.long	898816380
	.long	899441797
	.long	900107858
	.long	900817203
	.long	901572645
	.long	902377180
	.long	903233998
	.long	904146497
	.long	905118295
	.long	906061455
	.long	906612559
	.long	907199477
	.long	907824536
	.long	908490216
	.long	909199154
	.long	909954164
	.long	910758238
	.long	911614565
	.long	912526542
	.long	913497784
	.long	914445207
	.long	914995996
	.long	915582578
	.long	916207279
	.long	916872577
	.long	917581109
	.long	918335687
	.long	919139300
	.long	919995137
	.long	920906592
	.long	921877278
	.long	922828962
	.long	923379435
	.long	923965681
	.long	924590025
	.long	925254942
	.long	925963069
	.long	926717214
	.long	927520367
	.long	928375714
	.long	929286647
	.long	930256777
	.long	931212719
	.long	931762878
	.long	932348788
	.long	932972774
	.long	933637310
	.long	934345031
	.long	935098745
	.long	935901438
	.long	936756295
	.long	937666706
	.long	938636280
	.long	939596480
	.long	940146323
	.long	940731897
	.long	941355526
	.long	942019682
	.long	942726998
	.long	943480280
	.long	944282514
	.long	945136882
	.long	946046771
	.long	947015790
	.long	947980243
	.long	948529771
	.long	949115010
	.long	949738282
	.long	950402057
	.long	951108968
	.long	951861819
	.long	952663593
	.long	953517472
	.long	954426841
	.long	955395304
	.long	956364009
	.long	956913222
	.long	957498126
	.long	958121041
	.long	958784437
	.long	959490943
	.long	960243362
	.long	961044677
	.long	961898067
	.long	962806915
	.long	963774824
	.long	964747777
	.long	965296676
	.long	965881245
	.long	966503803
	.long	967166819
	.long	967872921
	.long	968624909
	.long	969425766
	.long	970278667
	.long	971186994
	.long	972154349
	.long	973131549
	.long	973680133
	.long	974264368
	.long	974886569
	.long	975549205
	.long	976254903
	.long	977006460
	.long	977806858
	.long	978659271
	.long	979567078
	.long	980533880
	.long	981515323
	.long	982063593
	.long	982647494
	.long	983269339
	.long	983931595
	.long	984636888
	.long	985388015
	.long	986187955
	.long	987039880
	.long	987947167
	.long	988913415
	.long	989899100
	.long	990447056
	.long	991030622
	.long	991652111
	.long	992313988
	.long	993018877
	.long	993769575
	.long	994569057
	.long	995420493
	.long	996327261
	.long	997292956
	.long	998282879
	.long	998830522
	.long	999413753
	.long	1000034887
	.long	1000696385
	.long	1001400871
	.long	1002151138
	.long	1002950162
	.long	1003801111
	.long	1004707360
	.long	1005672501
	.long	1006666662
	.long	1007213991
	.long	1007796888
	.long	1008417666
	.long	1009078785
	.long	1009782868
	.long	1010532705
	.long	1011331272
	.long	1012181733
	.long	1013087464
	.long	1014052052
	.long	1015050447
	.long	1015597462
	.long	1016180026
	.long	1016800448
	.long	1017461189
	.long	1018164869
	.long	1018914277
	.long	1019712386
	.long	1020562361
	.long	1021467572
	.long	1022431609
	.long	1023434235
	.long	1023980937
	.long	1024563167
	.long	1025183234
	.long	1025843597
	.long	1026546873
	.long	1027295853
	.long	1028093504
	.long	1028942993
	.long	1029847685
	.long	1030811170
	.long	1031818026
	.long	1032364415
	.long	1032946312
	.long	1033566024
	.long	1034226008
	.long	1034928882
	.long	1035677432
	.long	1036474627
	.long	1037323629
	.long	1038227804
	.long	1039190737
	.long	1040201819
	.long	1040747895
	.long	1041329459
	.long	1041948816
	.long	1042608423
	.long	1043310894
	.long	1044059015
	.long	1044855754
	.long	1045704269
	.long	1046607927
	.long	1047570308
	.long	1048585615
	.long	1049131379
	.long	1049712610
	.long	1050331612
	.long	1050990841
	.long	1051692909
	.long	1052440603
	.long	1053236885
	.long	1054084915
	.long	1054988055
	.long	1055949885
	.long	1056969414
	.long	1057514866
	.long	1058095763
	.long	1058714411
	.long	1059373262
	.long	1060074929
	.long	1060822194
	.long	1061618021
	.long	1062465565
	.long	1063368187
	.long	1064329467
	.long	1065353216
	.align 32
_vwin:
	.long	_vwin64
	.long	_vwin128
	.long	_vwin256
	.long	_vwin512
	.long	_vwin1024
	.long	_vwin2048
	.long	_vwin4096
	.long	_vwin8192
	.align 4
__residue_P:
	.long	_residue0_exportbundle
	.long	_residue1_exportbundle
	.long	_residue2_exportbundle
	.align 4
__floor_P:
	.long	_floor0_exportbundle
	.long	_floor1_exportbundle
	.align 32
_crc_lookup:
	.long	0
	.long	79764919
	.long	159529838
	.long	222504665
	.long	319059676
	.long	398814059
	.long	445009330
	.long	507990021
	.long	638119352
	.long	583659535
	.long	797628118
	.long	726387553
	.long	890018660
	.long	835552979
	.long	1015980042
	.long	944750013
	.long	1276238704
	.long	1221641927
	.long	1167319070
	.long	1095957929
	.long	1595256236
	.long	1540665371
	.long	1452775106
	.long	1381403509
	.long	1780037320
	.long	1859660671
	.long	1671105958
	.long	1733955601
	.long	2031960084
	.long	2111593891
	.long	1889500026
	.long	1952343757
	.long	-1742489888
	.long	-1662866601
	.long	-1851683442
	.long	-1788833735
	.long	-1960329156
	.long	-1880695413
	.long	-2103051438
	.long	-2040207643
	.long	-1104454824
	.long	-1159051537
	.long	-1213636554
	.long	-1284997759
	.long	-1389417084
	.long	-1444007885
	.long	-1532160278
	.long	-1603531939
	.long	-734892656
	.long	-789352409
	.long	-575645954
	.long	-646886583
	.long	-952755380
	.long	-1007220997
	.long	-827056094
	.long	-898286187
	.long	-231047128
	.long	-151282273
	.long	-71779514
	.long	-8804623
	.long	-515967244
	.long	-436212925
	.long	-390279782
	.long	-327299027
	.long	881225847
	.long	809987520
	.long	1023691545
	.long	969234094
	.long	662832811
	.long	591600412
	.long	771767749
	.long	717299826
	.long	311336399
	.long	374308984
	.long	453813921
	.long	533576470
	.long	25881363
	.long	88864420
	.long	134795389
	.long	214552010
	.long	2023205639
	.long	2086057648
	.long	1897238633
	.long	1976864222
	.long	1804852699
	.long	1867694188
	.long	1645340341
	.long	1724971778
	.long	1587496639
	.long	1516133128
	.long	1461550545
	.long	1406951526
	.long	1302016099
	.long	1230646740
	.long	1142491917
	.long	1087903418
	.long	-1398421865
	.long	-1469785312
	.long	-1524105735
	.long	-1578704818
	.long	-1079922613
	.long	-1151291908
	.long	-1239184603
	.long	-1293773166
	.long	-1968362705
	.long	-1905510760
	.long	-2094067647
	.long	-2014441994
	.long	-1716953613
	.long	-1654112188
	.long	-1876203875
	.long	-1796572374
	.long	-525066777
	.long	-462094256
	.long	-382327159
	.long	-302564546
	.long	-206542021
	.long	-143559028
	.long	-97365931
	.long	-17609246
	.long	-960696225
	.long	-1031934488
	.long	-817968335
	.long	-872425850
	.long	-709327229
	.long	-780559564
	.long	-600130067
	.long	-654598054
	.long	1762451694
	.long	1842216281
	.long	1619975040
	.long	1682949687
	.long	2047383090
	.long	2127137669
	.long	1938468188
	.long	2001449195
	.long	1325665622
	.long	1271206113
	.long	1183200824
	.long	1111960463
	.long	1543535498
	.long	1489069629
	.long	1434599652
	.long	1363369299
	.long	622672798
	.long	568075817
	.long	748617968
	.long	677256519
	.long	907627842
	.long	853037301
	.long	1067152940
	.long	995781531
	.long	51762726
	.long	131386257
	.long	177728840
	.long	240578815
	.long	269590778
	.long	349224269
	.long	429104020
	.long	491947555
	.long	-248556018
	.long	-168932423
	.long	-122852000
	.long	-60002089
	.long	-500490030
	.long	-420856475
	.long	-341238852
	.long	-278395381
	.long	-685261898
	.long	-739858943
	.long	-559578920
	.long	-630940305
	.long	-1004286614
	.long	-1058877219
	.long	-845023740
	.long	-916395085
	.long	-1119974018
	.long	-1174433591
	.long	-1262701040
	.long	-1333941337
	.long	-1371866206
	.long	-1426332139
	.long	-1481064244
	.long	-1552294533
	.long	-1690935098
	.long	-1611170447
	.long	-1833673816
	.long	-1770699233
	.long	-2009983462
	.long	-1930228819
	.long	-2119160460
	.long	-2056179517
	.long	1569362073
	.long	1498123566
	.long	1409854455
	.long	1355396672
	.long	1317987909
	.long	1246755826
	.long	1192025387
	.long	1137557660
	.long	2072149281
	.long	2135122070
	.long	1912620623
	.long	1992383480
	.long	1753615357
	.long	1816598090
	.long	1627664531
	.long	1707420964
	.long	295390185
	.long	358241886
	.long	404320391
	.long	483945776
	.long	43990325
	.long	106832002
	.long	186451547
	.long	266083308
	.long	932423249
	.long	861060070
	.long	1041341759
	.long	986742920
	.long	613929101
	.long	542559546
	.long	756411363
	.long	701822548
	.long	-978770311
	.long	-1050133554
	.long	-869589737
	.long	-924188512
	.long	-693284699
	.long	-764654318
	.long	-550540341
	.long	-605129092
	.long	-475935807
	.long	-413084042
	.long	-366743377
	.long	-287118056
	.long	-257573603
	.long	-194731862
	.long	-114850189
	.long	-35218492
	.long	-1984365303
	.long	-1921392450
	.long	-2143631769
	.long	-2063868976
	.long	-1698919467
	.long	-1635936670
	.long	-1824608069
	.long	-1744851700
	.long	-1347415887
	.long	-1418654458
	.long	-1506661409
	.long	-1561119128
	.long	-1129027987
	.long	-1200260134
	.long	-1254728445
	.long	-1309196108
	.long	0
	.long	-770063908
	.long	-1594712561
	.long	1928028115
	.long	1159995817
	.long	-1757552523
	.long	-438911066
	.long	936345210
	.long	-1974975662
	.long	1481736846
	.long	716889437
	.long	-123528063
	.long	-814980357
	.long	494248743
	.long	1872690420
	.long	-1115210456
	.long	273783571
	.long	-1035445553
	.long	-1331493604
	.long	1656407232
	.long	1433778874
	.long	-2022933658
	.long	-175692619
	.long	664724841
	.long	-1709582271
	.long	1207966109
	.long	988497486
	.long	-386758766
	.long	-549586456
	.long	220477492
	.long	2144298983
	.long	-1378441669
	.long	547567142
	.long	-222627846
	.long	-2142132183
	.long	1380477429
	.long	1703352207
	.long	-1214327213
	.long	-982152832
	.long	392972380
	.long	-1427409548
	.long	2029171880
	.long	169470843
	.long	-671077721
	.long	-271624995
	.long	1037473025
	.long	1329449682
	.long	-1658582258
	.long	821210421
	.long	-487887639
	.long	-1879035078
	.long	1108996838
	.long	1976994972
	.long	-1479586496
	.long	-719056237
	.long	121492303
	.long	-1162154393
	.long	1755525051
	.long	440954984
	.long	-934170188
	.long	-6369330
	.long	763825682
	.long	1600934337
	.long	-1921675235
	.long	1095134284
	.long	-1822446192
	.long	-508235197
	.long	866988959
	.long	73551333
	.long	-696546247
	.long	-1534012438
	.long	1988694582
	.long	-888262882
	.long	420998850
	.long	1811722513
	.long	-1176145715
	.long	-1909846345
	.long	1546899307
	.long	785944760
	.long	-54439580
	.long	1360525151
	.long	-2096220541
	.long	-236623536
	.long	603760780
	.long	338941686
	.long	-970320086
	.long	-1262401287
	.long	1725466917
	.long	-614484979
	.long	155612625
	.long	2074946050
	.long	-1447760930
	.long	-1636067932
	.long	1281512568
	.long	1049168811
	.long	-326055305
	.long	1642420842
	.long	-1275290698
	.long	-1055407003
	.long	319686073
	.long	616659907
	.long	-153568737
	.long	-2076973620
	.long	1445602320
	.long	-340977352
	.long	968153316
	.long	1264551735
	.long	-1723447573
	.long	-1366738799
	.long	2089875789
	.long	242984606
	.long	-597530814
	.long	1907671417
	.long	-1548943195
	.long	-783917194
	.long	56598186
	.long	881909968
	.long	-427220724
	.long	-1805484321
	.long	1182514947
	.long	-67337685
	.long	702890999
	.long	1527651364
	.long	-1994924552
	.long	-1093098622
	.long	1824612958
	.long	506084749
	.long	-869008303
	.long	-2104698728
	.long	1351948612
	.long	578700951
	.long	-261650613
	.long	-945227471
	.long	363935981
	.long	1733977918
	.long	-1253857566
	.long	147102666
	.long	-623027690
	.long	-1472854587
	.long	2049950745
	.long	1306573411
	.long	-1611039809
	.long	-317578132
	.long	1057744304
	.long	-1830993013
	.long	1086620247
	.long	841997700
	.long	-533324712
	.long	-671522270
	.long	98608126
	.long	1997274157
	.long	-1525531151
	.long	412418265
	.long	-896745211
	.long	-1201168682
	.long	1786666762
	.long	1571889520
	.long	-1884757844
	.long	-45891713
	.long	794459811
	.long	-1573916994
	.long	1882599266
	.long	48066737
	.long	-792415891
	.long	-418656489
	.long	890375883
	.long	1207521560
	.long	-1780444988
	.long	677883372
	.long	-92378064
	.long	-2003487773
	.long	1519186495
	.long	1833143365
	.long	-1084600935
	.long	-844033462
	.long	531157910
	.long	-1300335187
	.long	1617409137
	.long	311225250
	.long	-1063966082
	.long	-145075196
	.long	625186264
	.long	1470679563
	.long	-2051994665
	.long	943077119
	.long	-365955293
	.long	-1731942160
	.long	1256024364
	.long	2098337622
	.long	-1358178678
	.long	-572487335
	.long	267995269
	.long	-1010125612
	.long	299070728
	.long	1664625371
	.long	-1323177209
	.long	-2031184515
	.long	1425495201
	.long	639372146
	.long	-200947026
	.long	1233319814
	.long	-1684326822
	.long	-378508919
	.long	996780117
	.long	212260399
	.long	-557901837
	.long	-1403762656
	.long	2119010812
	.long	-744804409
	.long	25357851
	.long	1936306632
	.long	-1586466796
	.long	-1765863826
	.long	1151782834
	.long	911052897
	.long	-464236099
	.long	1507028117
	.long	-1949651639
	.long	-115215718
	.long	725103430
	.long	485969212
	.long	-823227168
	.long	-1140468941
	.long	1847333615
	.long	-479624462
	.long	829440814
	.long	1134238973
	.long	-1853694687
	.long	-1504861349
	.long	1951687303
	.long	113196372
	.long	-727253880
	.long	1763819936
	.long	-1153957764
	.long	-908894289
	.long	466263667
	.long	738582537
	.long	-31710763
	.long	-1929937402
	.long	1592704986
	.long	-214427167
	.long	555866173
	.long	1405781998
	.long	-2116860366
	.long	-1239664568
	.long	1678113172
	.long	384738887
	.long	-990419045
	.long	2037406387
	.long	-1419142289
	.long	-645741380
	.long	194708832
	.long	1012169498
	.long	-296895802
	.long	-1666783979
	.long	1321149641
	.long	0
	.long	30977159
	.long	61954318
	.long	40498569
	.long	123908636
	.long	112860827
	.long	80997138
	.long	84625301
	.long	247817272
	.long	253610175
	.long	225721654
	.long	212636081
	.long	161994276
	.long	142572195
	.long	169250602
	.long	198058925
	.long	495634544
	.long	475161847
	.long	507220350
	.long	534986233
	.long	451443308
	.long	456185579
	.long	425272162
	.long	411144165
	.long	323988552
	.long	311886031
	.long	285144390
	.long	287726017
	.long	338501204
	.long	368423635
	.long	396117850
	.long	373615581
	.long	991269088
	.long	986528871
	.long	950323694
	.long	964453737
	.long	1014440700
	.long	1034915451
	.long	1069972466
	.long	1042208629
	.long	902886616
	.long	872962143
	.long	912371158
	.long	934871377
	.long	850544324
	.long	862644803
	.long	822288330
	.long	819704653
	.long	647977104
	.long	659026967
	.long	623772062
	.long	620145945
	.long	570288780
	.long	539313675
	.long	575452034
	.long	596909829
	.long	677002408
	.long	696422447
	.long	736847270
	.long	708036897
	.long	792235700
	.long	786440755
	.long	747231162
	.long	760314685
	.long	1982538176
	.long	2012450119
	.long	1973057742
	.long	1950536777
	.long	1900647388
	.long	1888567131
	.long	1928907474
	.long	1931503189
	.long	2028881400
	.long	2033641855
	.long	2069830902
	.long	2055712881
	.long	2139944932
	.long	2119457635
	.long	2084417258
	.long	2112160365
	.long	1805773232
	.long	1786332471
	.long	1745924286
	.long	1774722105
	.long	1824742316
	.long	1830549291
	.long	1869742754
	.long	1856679461
	.long	1701088648
	.long	1690050831
	.long	1725289606
	.long	1728935937
	.long	1644576660
	.long	1675531027
	.long	1639409306
	.long	1617938973
	.long	1295954208
	.long	1290149287
	.long	1318053934
	.long	1331119273
	.long	1247544124
	.long	1266986939
	.long	1240291890
	.long	1211496117
	.long	1140577560
	.long	1109621151
	.long	1078627350
	.long	1100095633
	.long	1150904068
	.long	1161939843
	.long	1193819658
	.long	1190171277
	.long	1354004816
	.long	1366087127
	.long	1392844894
	.long	1390251225
	.long	1473694540
	.long	1443784651
	.long	1416073794
	.long	1438596805
	.long	1584471400
	.long	1604956655
	.long	1572881510
	.long	1545136353
	.long	1494462324
	.long	1489699827
	.long	1520629370
	.long	1534745341
	.long	-329890944
	.long	-309399801
	.long	-270067058
	.long	-297814519
	.long	-348851812
	.long	-353608421
	.long	-393893742
	.long	-379780075
	.long	-493672520
	.long	-481588417
	.long	-517833034
	.long	-520433103
	.long	-437152348
	.long	-467060445
	.long	-431960918
	.long	-409444307
	.long	-237204496
	.long	-268163209
	.long	-227683586
	.long	-206209415
	.long	-155305492
	.long	-144272021
	.long	-183541534
	.long	-187184027
	.long	-15077432
	.long	-20888753
	.long	-56052026
	.long	-42984895
	.long	-126132780
	.long	-106696365
	.long	-70646566
	.long	-99440547
	.long	-683420832
	.long	-694452249
	.long	-722302354
	.long	-718657815
	.long	-803118724
	.long	-772157957
	.long	-745523086
	.long	-766995211
	.long	-645482664
	.long	-664921121
	.long	-633868714
	.long	-605076783
	.long	-555481788
	.long	-549672509
	.long	-581608374
	.long	-594677555
	.long	-892790000
	.long	-888031337
	.long	-914865634
	.long	-928977255
	.long	-844388084
	.long	-864877173
	.long	-837095422
	.long	-809345915
	.long	-1005813976
	.long	-975907921
	.long	-943905242
	.long	-966423903
	.long	-1016148684
	.long	-1028234829
	.long	-1059089350
	.long	-1056491331
	.long	-1703058880
	.long	-1683632441
	.long	-1714668722
	.long	-1743480887
	.long	-1658859428
	.long	-1664647973
	.long	-1632728750
	.long	-1619647019
	.long	-1799879048
	.long	-1788826881
	.long	-1760993418
	.long	-1764625423
	.long	-1814383516
	.long	-1845356317
	.long	-1871975062
	.long	-1850523155
	.long	-2013812176
	.long	-2043738441
	.long	-2075724994
	.long	-2053218375
	.long	-2137712596
	.long	-2125613909
	.long	-2094776030
	.long	-2097353307
	.long	-1993159160
	.long	-1997905265
	.long	-1971087610
	.long	-1956955263
	.long	-1907327980
	.long	-1886859117
	.long	-1914624742
	.long	-1942386275
	.long	-1586957664
	.long	-1599054297
	.long	-1562793042
	.long	-1560213719
	.long	-1509277508
	.long	-1479349189
	.long	-1514464846
	.long	-1536969419
	.long	-1347578216
	.long	-1368049121
	.long	-1407397994
	.long	-1379638511
	.long	-1462819708
	.long	-1458075645
	.long	-1417773686
	.long	-1431908083
	.long	-1126024496
	.long	-1120233897
	.long	-1085053986
	.long	-1098133671
	.long	-1149204276
	.long	-1168628661
	.long	-1204694590
	.long	-1175880379
	.long	-1306042648
	.long	-1275071889
	.long	-1315567642
	.long	-1337021599
	.long	-1253708556
	.long	-1264762765
	.long	-1225476614
	.long	-1221846659
	.long	0
	.long	-596796745
	.long	-1139136295
	.long	1618457198
	.long	2096450565
	.long	-1600596302
	.long	-1058052900
	.long	478346859
	.long	-102066166
	.long	629605053
	.long	1173401811
	.long	-1717753244
	.long	-2061511665
	.long	1500663480
	.long	956693718
	.long	-446142879
	.long	-149672541
	.long	729397012
	.long	1259210106
	.long	-1755078707
	.long	-1948163674
	.long	1468857105
	.long	939215231
	.long	-342436920
	.long	251573673
	.long	-762106082
	.long	-1293640336
	.long	1854474183
	.long	1913387436
	.long	-1369021669
	.long	-837693067
	.long	310135746
	.long	-353810703
	.long	914676806
	.long	1458794024
	.long	-1969294177
	.long	-1776547084
	.long	1248956483
	.long	705045037
	.long	-160712550
	.long	319020795
	.long	-814857140
	.long	-1357253086
	.long	1937009813
	.long	1878430462
	.long	-1281685431
	.long	-739460569
	.long	260120720
	.long	503147346
	.long	-1047465499
	.long	-1578679413
	.long	2106251580
	.long	1627924311
	.long	-1117405728
	.long	-586018930
	.long	25138489
	.long	-468192424
	.long	947546607
	.long	1477303169
	.long	-2074066634
	.long	-1729970339
	.long	1150232042
	.long	620271492
	.long	-124449485
	.long	-787247019
	.long	226364130
	.long	1829353612
	.long	-1318837701
	.long	-1377379248
	.long	1904953063
	.long	301790345
	.long	-846107074
	.long	687409247
	.long	-191589656
	.long	-1797054330
	.long	1217313329
	.long	1410090074
	.long	-2006851859
	.long	-401183613
	.long	880539188
	.long	638041590
	.long	-93706431
	.long	-1709337297
	.long	1181749144
	.long	1525871091
	.long	-2036372668
	.long	-420947670
	.long	981812125
	.long	-538106372
	.long	58769227
	.long	1677135141
	.long	-1080387694
	.long	-1558681095
	.long	2138436430
	.long	520241440
	.long	-1016079465
	.long	1006294692
	.long	-409514989
	.long	-2015297923
	.long	1535993034
	.long	1192204961
	.long	-1688076266
	.long	-82464136
	.long	662186191
	.long	-1039118674
	.long	511562777
	.long	2114610807
	.long	-1570243392
	.long	-1092287829
	.long	1653119004
	.long	50276978
	.long	-560811835
	.long	-856753401
	.long	277045680
	.long	1895093214
	.long	-1399240343
	.long	-1340360958
	.long	1819684277
	.long	201433051
	.long	-798227092
	.long	889479949
	.long	-378930758
	.long	-1994503212
	.long	1433653603
	.long	1240542984
	.long	-1784891969
	.long	-169146415
	.long	696687974
	.long	-1494860515
	.long	2055972778
	.long	452728260
	.long	-963539085
	.long	-636260072
	.long	108981167
	.long	1711888833
	.long	-1167801482
	.long	1594664215
	.long	-2090778720
	.long	-485061170
	.long	1065031545
	.long	603580690
	.long	-7048283
	.long	-1612463669
	.long	1133403004
	.long	1374818494
	.long	-1918924279
	.long	-303548313
	.long	830841552
	.long	755457211
	.long	-244660724
	.long	-1860340638
	.long	1299246805
	.long	-1474787148
	.long	1953829379
	.long	335716461
	.long	-932234534
	.long	-722615119
	.long	142630406
	.long	1761078376
	.long	-1264945441
	.long	1276083180
	.long	-1872567973
	.long	-267037899
	.long	746113410
	.long	821704681
	.long	-325604002
	.long	-1931469008
	.long	1351452039
	.long	-1243225114
	.long	1770551633
	.long	167758655
	.long	-711831160
	.long	-921653277
	.long	360527188
	.long	1963624250
	.long	-1452860019
	.long	-1155836337
	.long	1735838968
	.long	117538454
	.long	-613620703
	.long	-940697014
	.long	461603069
	.long	2079601299
	.long	-1483102172
	.long	1123143237
	.long	-1633921806
	.long	-18094436
	.long	579238955
	.long	1040482880
	.long	-496428809
	.long	-2111919463
	.long	1584607278
	.long	2012589384
	.long	-1416087553
	.long	-873495151
	.long	394403622
	.long	184607053
	.long	-680690694
	.long	-1222981228
	.long	1802982179
	.long	-1910557374
	.long	1383247861
	.long	839196059
	.long	-295139540
	.long	-219514553
	.long	780657648
	.long	1324372382
	.long	-1835152599
	.long	-2132705045
	.long	1552685660
	.long	1023125554
	.long	-527027579
	.long	-65745682
	.long	544822873
	.long	1074717751
	.long	-1671201152
	.long	2030770401
	.long	-1520008618
	.long	-988729288
	.long	427600527
	.long	100553956
	.long	-644624813
	.long	-1176208323
	.long	1703536266
	.long	-1659049031
	.long	1097953550
	.long	554091360
	.long	-43296297
	.long	-504780868
	.long	1032076555
	.long	1576243045
	.long	-2120346158
	.long	1693873075
	.long	-1197741820
	.long	-655598742
	.long	75612637
	.long	402866102
	.long	-999381759
	.long	-1541859473
	.long	2020904408
	.long	1778959898
	.long	-1234871123
	.long	-703402301
	.long	176125044
	.long	385714719
	.long	-896528216
	.long	-1427660090
	.long	1988769905
	.long	-1813881328
	.long	1334822055
	.long	804812489
	.long	-208278402
	.long	-283700715
	.long	863668386
	.long	1393375948
	.long	-1889492869
	.long	0
	.long	1225615245
	.long	-1843736806
	.long	-619206505
	.long	552895363
	.long	1777984526
	.long	-1293005671
	.long	-68998380
	.long	1105790726
	.long	149184651
	.long	-738998244
	.long	-1694584943
	.long	1629324421
	.long	672195336
	.long	-217625697
	.long	-1173738478
	.long	-2083385844
	.long	-891328127
	.long	298369302
	.long	1489348251
	.long	-1557754481
	.long	-366220798
	.long	826032789
	.long	2016486680
	.long	-1036318454
	.long	-1959367033
	.long	1344390672
	.long	422355357
	.long	-489715063
	.long	-1413288700
	.long	1893025171
	.long	970465822
	.long	56951215
	.long	1248355874
	.long	-1853894987
	.long	-663574216
	.long	596738604
	.long	1788667297
	.long	-1316270794
	.long	-125424965
	.long	1116473001
	.long	193028388
	.long	-795424333
	.long	-1717850562
	.long	1652065578
	.long	729146023
	.long	-261993936
	.long	-1183896131
	.long	-2135486557
	.long	-910530514
	.long	313376953
	.long	1537255220
	.long	-1606185952
	.long	-380703827
	.long	844710714
	.long	2069111991
	.long	-1050802011
	.long	-2007797976
	.long	1397016511
	.long	441032754
	.long	-508916954
	.long	-1465389909
	.long	1940931644
	.long	985473969
	.long	113902430
	.long	1338467539
	.long	-1798255548
	.long	-572675127
	.long	641630429
	.long	1865672528
	.long	-1272688697
	.long	-47634358
	.long	1193477208
	.long	237921237
	.long	-717632702
	.long	-1674269489
	.long	1742178267
	.long	786096214
	.long	-171095871
	.long	-1128255668
	.long	-2062021294
	.long	-871011617
	.long	386056776
	.long	1578083781
	.long	-1511223599
	.long	-320738980
	.long	938885579
	.long	2130388550
	.long	-990836140
	.long	-1912836647
	.long	1458292046
	.long	535208643
	.long	-469399081
	.long	-1391923622
	.long	1981761229
	.long	1058152768
	.long	95355633
	.long	1285711228
	.long	-1749692949
	.long	-558323098
	.long	626753906
	.long	1817634559
	.long	-1220456856
	.long	-28562971
	.long	1145439735
	.long	223044218
	.long	-698561811
	.long	-1622037152
	.long	1689421428
	.long	767549945
	.long	-156743314
	.long	-1079693597
	.long	-2038625027
	.long	-814716048
	.long	342344679
	.long	1567269994
	.long	-1500934274
	.long	-276502285
	.long	882065508
	.long	2107516905
	.long	-946598917
	.long	-1902547850
	.long	1435419873
	.long	478389100
	.long	-413104008
	.long	-1368526859
	.long	1970947938
	.long	1014440175
	.long	227804860
	.long	1150902577
	.long	-1618032218
	.long	-696013269
	.long	761300287
	.long	1684923058
	.long	-1082504667
	.long	-159961688
	.long	1283260858
	.long	91252279
	.long	-563622240
	.long	-1754617555
	.long	1820951097
	.long	629466548
	.long	-23900893
	.long	-1214371154
	.long	-1908012880
	.long	-951357635
	.long	475842474
	.long	1431412775
	.long	-1364030669
	.long	-406852418
	.long	1017660457
	.long	1973756836
	.long	-810610762
	.long	-2036176837
	.long	1572192428
	.long	347645729
	.long	-279213003
	.long	-1504253000
	.long	2101429039
	.long	877405346
	.long	250677011
	.long	1207722142
	.long	-1662269431
	.long	-706302076
	.long	772113552
	.long	1728635677
	.long	-1138799734
	.long	-183358457
	.long	1326972949
	.long	102066072
	.long	-587018481
	.long	-1810913150
	.long	1877771158
	.long	652338203
	.long	-34190196
	.long	-1258607871
	.long	-1927083745
	.long	-1003589998
	.long	523879941
	.long	1446289800
	.long	-1378383204
	.long	-455414511
	.long	1070417286
	.long	1992303115
	.long	-859173351
	.long	-2050528876
	.long	1590739203
	.long	400402062
	.long	-331444838
	.long	-1523324393
	.long	2116305536
	.long	925443341
	.long	190711266
	.long	1112760943
	.long	-1723544840
	.long	-800477835
	.long	732595809
	.long	1655169516
	.long	-1179629189
	.long	-256037130
	.long	1253507812
	.long	62547305
	.long	-659698178
	.long	-1851741581
	.long	1782808935
	.long	592373482
	.long	-128364931
	.long	-1319884304
	.long	-2004087826
	.long	-1048482717
	.long	446088436
	.long	1402708857
	.long	-1468495763
	.long	-512364576
	.long	979519351
	.long	1936662778
	.long	-916124440
	.long	-2140640411
	.long	1535099890
	.long	309503103
	.long	-376336533
	.long	-1600329498
	.long	2072723569
	.long	847652860
	.long	138085453
	.long	1094083520
	.long	-1709061289
	.long	-752046886
	.long	684689358
	.long	1640161347
	.long	-1160427308
	.long	-203935911
	.long	1238500171
	.long	14640326
	.long	-607597487
	.long	-1832539172
	.long	1764131016
	.long	539748165
	.long	-79933486
	.long	-1305401249
	.long	-1947661759
	.long	-1025217076
	.long	435406171
	.long	1358865110
	.long	-1424127550
	.long	-502206897
	.long	956778200
	.long	1879712085
	.long	-905966265
	.long	-2096272694
	.long	1478148701
	.long	286762448
	.long	-353071420
	.long	-1543902903
	.long	2028880350
	.long	836970067
	.long	0
	.long	455609720
	.long	911219440
	.long	762845064
	.long	1822438880
	.long	2005416088
	.long	1525690128
	.long	1104683624
	.long	-650089536
	.long	-1033345352
	.long	-284135120
	.long	-197624760
	.long	-1243587040
	.long	-1362603176
	.long	-2085600048
	.long	-1734850136
	.long	-1237202377
	.long	-1385576625
	.long	-2146316089
	.long	-1690706497
	.long	-622723113
	.long	-1043729745
	.long	-323885785
	.long	-140908449
	.long	1862377975
	.long	1948888207
	.long	1498528519
	.long	1115272831
	.long	60920855
	.long	411670895
	.long	905023207
	.long	786006943
	.long	1749191129
	.long	1936360609
	.long	1578275625
	.long	1161469521
	.long	81968185
	.long	533377345
	.long	850568905
	.long	698002353
	.long	-1325211111
	.long	-1440026783
	.long	-2024605463
	.long	-1669663343
	.long	-576530439
	.long	-963978623
	.long	-336409335
	.long	-254099343
	.long	-570211346
	.long	-987017578
	.long	-397190882
	.long	-210021274
	.long	-1297910258
	.long	-1450476682
	.long	-2064421634
	.long	-1613012602
	.long	121841710
	.long	476783958
	.long	823341790
	.long	708525990
	.long	1810046414
	.long	1892356278
	.long	1572013886
	.long	1184565830
	.long	-796585038
	.long	-877846838
	.long	-422246078
	.long	-33749958
	.long	-1138416046
	.long	-1492309206
	.long	-1972028254
	.long	-1856163366
	.long	163936370
	.long	317551882
	.long	1066754690
	.long	616394746
	.long	1701137810
	.long	2118992106
	.long	1396004706
	.long	1209883162
	.long	1724176773
	.long	2112673021
	.long	1351926645
	.long	1270664717
	.long	174386277
	.long	290251037
	.long	1010103957
	.long	656210925
	.long	-1081822651
	.long	-1532182723
	.long	-1982551883
	.long	-1828936243
	.long	-752580699
	.long	-938702115
	.long	-445342379
	.long	-27488211
	.long	-1194878357
	.long	-1544579309
	.long	-1902673765
	.long	-1782608413
	.long	-731402357
	.long	-816864525
	.long	-499665541
	.long	-115361789
	.long	1636299179
	.long	2058353875
	.long	1473768283
	.long	1291839011
	.long	220709963
	.long	370133299
	.long	997711547
	.long	543151043
	.long	243683420
	.long	363748644
	.long	953567916
	.long	603867092
	.long	1646683580
	.long	2030987460
	.long	1417051980
	.long	1331589684
	.long	-674874468
	.long	-856803612
	.long	-510254740
	.long	-88200172
	.long	-1150939524
	.long	-1605500156
	.long	-1925835636
	.long	-1776412172
	.long	-1513407789
	.long	-1092405333
	.long	-1818550237
	.long	-2001523365
	.long	-915730637
	.long	-767360437
	.long	-12905021
	.long	-468510533
	.long	2089505043
	.long	1738759275
	.long	1255885795
	.long	1374897819
	.long	271279347
	.long	184773003
	.long	645627395
	.long	1028879227
	.long	327872740
	.long	144899484
	.long	635103764
	.long	1056106348
	.long	2133509380
	.long	1677903996
	.long	1232789492
	.long	1381159564
	.long	-892691676
	.long	-773679524
	.long	-56983084
	.long	-407728980
	.long	-1502957884
	.long	-1119706180
	.long	-1875200972
	.long	-1961707188
	.long	-846613750
	.long	-694043022
	.long	-69621254
	.long	-521034622
	.long	-1591114006
	.long	-1174303854
	.long	-1753637862
	.long	-1940811422
	.long	348772554
	.long	266458546
	.long	580502074
	.long	967954242
	.long	2020207914
	.long	1665261650
	.long	1312421850
	.long	1427241634
	.long	2076735805
	.long	1625322565
	.long	1301832653
	.long	1454403253
	.long	392711389
	.long	205537701
	.long	557340205
	.long	974150485
	.long	-1568140547
	.long	-1180688507
	.long	-1797781491
	.long	-1880095371
	.long	-836229347
	.long	-721409435
	.long	-126337555
	.long	-481283947
	.long	1968056673
	.long	1852187673
	.long	1126052753
	.long	1479950057
	.long	435035265
	.long	46535161
	.long	800982641
	.long	882248457
	.long	-1408351583
	.long	-1222225959
	.long	-1705093039
	.long	-2122951383
	.long	-1062308031
	.long	-611943879
	.long	-151097935
	.long	-304717623
	.long	-1022368938
	.long	-668471762
	.long	-178259546
	.long	-294128418
	.long	-1347430730
	.long	-1266164786
	.long	-1711289274
	.long	-2099789506
	.long	441419926
	.long	23561710
	.long	740266598
	.long	926392094
	.long	1995423094
	.long	1841803278
	.long	1086302086
	.long	1536666366
	.long	487366840
	.long	103067072
	.long	727497288
	.long	812955440
	.long	1907135832
	.long	1787074592
	.long	1207734184
	.long	1557430992
	.long	-1001600136
	.long	-547043840
	.long	-232992376
	.long	-382411536
	.long	-1460863336
	.long	-1278938144
	.long	-1631787928
	.long	-2053838576
	.long	-1420989809
	.long	-1335531529
	.long	-1659015041
	.long	-2043314937
	.long	-940744849
	.long	-591048169
	.long	-239254113
	.long	-359315225
	.long	1913454927
	.long	1764035639
	.long	1146952639
	.long	1601509063
	.long	514667695
	.long	92617175
	.long	687681119
	.long	869606183
	.long	0
	.long	1331128337
	.long	-1632710622
	.long	-772163533
	.long	966573555
	.long	1993070050
	.long	-1489867311
	.long	-396032576
	.long	1933147110
	.long	1013847031
	.long	-308827196
	.long	-1564425259
	.long	1252378133
	.long	99790340
	.long	-737470921
	.long	-1688437210
	.long	-428673076
	.long	-1457152035
	.long	2027694062
	.long	931876863
	.long	-538031553
	.long	-1866915282
	.long	1094752797
	.long	236450316
	.long	-1790211030
	.long	-635640773
	.long	199580680
	.long	1152529433
	.long	-1395183143
	.long	-478127672
	.long	846848507
	.long	2100201962
	.long	-937102801
	.long	-2022467010
	.long	1451893261
	.long	433932828
	.long	-239579172
	.long	-1091622963
	.long	1863753726
	.long	541194223
	.long	-1155692087
	.long	-196419112
	.long	632510955
	.long	1793339898
	.long	-2105461702
	.long	-841589717
	.long	472900632
	.long	1400409097
	.long	777389539
	.long	1627483634
	.long	-1325869631
	.long	-5259824
	.long	399161360
	.long	1486737409
	.long	-1989908430
	.long	-969736157
	.long	1567587845
	.long	305665556
	.long	-1010717145
	.long	-1936275914
	.long	1693697014
	.long	732212199
	.long	-94563372
	.long	-1257604155
	.long	-1802962455
	.long	-606105096
	.long	170273227
	.long	1165050330
	.long	-1391180774
	.long	-498914293
	.long	867865656
	.long	2095971369
	.long	-407797233
	.long	-1461261794
	.long	2032095789
	.long	910703164
	.long	-567459844
	.long	-1854253075
	.long	1082388446
	.long	265586639
	.long	1928990245
	.long	1034774068
	.long	-329982457
	.long	-1560037866
	.long	1265021910
	.long	70376391
	.long	-708287500
	.long	-1700852763
	.long	29586883
	.long	1318329810
	.long	-1620204063
	.long	-801452560
	.long	945801264
	.long	1997053985
	.long	-1494149102
	.long	-374968317
	.long	1554779078
	.long	335242199
	.long	-1040000028
	.long	-1923763211
	.long	1697691189
	.long	711450148
	.long	-73505257
	.long	-1261892090
	.long	798322720
	.long	1623332913
	.long	-1321492478
	.long	-26425325
	.long	369741267
	.long	1499375042
	.long	-2002313743
	.long	-940542496
	.long	-1159791606
	.long	-175533029
	.long	611331112
	.long	1797735481
	.long	-2092809735
	.long	-871028248
	.long	502043099
	.long	1388050890
	.long	-907573268
	.long	-2035224579
	.long	1464424398
	.long	404635615
	.long	-260359649
	.long	-1087614450
	.long	1859512893
	.long	562201132
	.long	768667237
	.long	1653048948
	.long	-1283572153
	.long	-64399786
	.long	340546454
	.long	1528511367
	.long	-1964866636
	.long	-977933403
	.long	1592366467
	.long	297729426
	.long	-1069070943
	.long	-1894765136
	.long	1735731312
	.long	673333345
	.long	-103024558
	.long	-1232302013
	.long	-878569047
	.long	-2064289352
	.long	1426901387
	.long	442212762
	.long	-230775718
	.long	-1117139893
	.long	1821406328
	.long	600251497
	.long	-1197776305
	.long	-137622946
	.long	641053293
	.long	1768086140
	.long	-2130190404
	.long	-833570899
	.long	531173278
	.long	1358849935
	.long	-436986806
	.long	-1432128421
	.long	2069548136
	.long	873309305
	.long	-597122631
	.long	-1824536152
	.long	1120301467
	.long	227613066
	.long	-1764923476
	.long	-644214851
	.long	140752782
	.long	1194647455
	.long	-1353590177
	.long	-536432050
	.long	838797949
	.long	2124964460
	.long	59173766
	.long	1288799127
	.long	-1658307676
	.long	-763407435
	.long	974804597
	.long	1967996516
	.long	-1531673001
	.long	-337383866
	.long	1891602528
	.long	1072232561
	.long	-300859326
	.long	-1589237677
	.long	1227042195
	.long	108283266
	.long	-678560335
	.long	-1730505312
	.long	-1185409140
	.long	-166756451
	.long	670484398
	.long	1755426751
	.long	-2134594945
	.long	-812400018
	.long	510294621
	.long	1362956876
	.long	-899584918
	.long	-2060057477
	.long	1422900296
	.long	463000665
	.long	-201469543
	.long	-1129662072
	.long	1834156475
	.long	570714538
	.long	1596645440
	.long	276662353
	.long	-1048301470
	.long	-1898751885
	.long	1723227571
	.long	702625186
	.long	-132608623
	.long	-1219500672
	.long	739482534
	.long	1665463223
	.long	-1296217212
	.long	-34987115
	.long	361702997
	.long	1524125252
	.long	-1960708489
	.long	-998859162
	.long	1904010659
	.long	1043041714
	.long	-271436415
	.long	-1601872496
	.long	1222662224
	.long	129445953
	.long	-699496334
	.long	-1726357405
	.long	38116933
	.long	1293088340
	.long	-1662300569
	.long	-742644106
	.long	1004086198
	.long	1955482535
	.long	-1518865516
	.long	-366961787
	.long	-1760685457
	.long	-665224578
	.long	161530445
	.long	1190636124
	.long	-1366118500
	.long	-507132019
	.long	809271230
	.long	2137724847
	.long	-466130551
	.long	-1419771496
	.long	2056894891
	.long	902746554
	.long	-575941510
	.long	-1828930453
	.long	1124402264
	.long	206728265
	.long	0
	.long	1537334474
	.long	-1220298348
	.long	-320707234
	.long	1783000735
	.long	837268053
	.long	-586819829
	.long	-2036069439
	.long	-728965826
	.long	-1892875788
	.long	1674536106
	.long	946780256
	.long	-1094011999
	.long	-445943957
	.long	159975989
	.long	1378408191
	.long	-1378310197
	.long	-159810815
	.long	446373471
	.long	1094369941
	.long	-945895084
	.long	-1673587298
	.long	1893560512
	.long	729590794
	.long	2035579637
	.long	586524223
	.long	-837303455
	.long	-1783226453
	.long	319951978
	.long	1219741856
	.long	-1538150914
	.long	-1019596
	.long	1601196577
	.long	80842475
	.long	-399250507
	.long	-1282263169
	.long	892746942
	.long	1855447156
	.long	-2106227414
	.long	-640394784
	.long	-1946382561
	.long	-799190059
	.long	1019164299
	.long	1730079297
	.long	-507846272
	.long	-1172619958
	.long	1459181588
	.long	223904990
	.long	-223808022
	.long	-1459017440
	.long	1173048446
	.long	508203188
	.long	-1729193099
	.long	-1018214465
	.long	799875809
	.long	1947008555
	.long	639903956
	.long	2105930782
	.long	-1855483584
	.long	-892973686
	.long	1281508939
	.long	398695041
	.long	-81657889
	.long	-1602215147
	.long	-1092574142
	.long	-448694136
	.long	161684950
	.long	1375912220
	.long	-727266595
	.long	-1895361001
	.long	1675981641
	.long	944025475
	.long	1785493884
	.long	835560886
	.long	-584072984
	.long	-2037507038
	.long	2758627
	.long	1535888169
	.long	-1217810825
	.long	-322407747
	.long	322438025
	.long	1218043715
	.long	-1535395299
	.long	-2464041
	.long	2038328598
	.long	585085404
	.long	-834808702
	.long	-1784936376
	.long	-944447817
	.long	-1676344707
	.long	1895261987
	.long	727104489
	.long	-1376604120
	.long	-162304798
	.long	447809980
	.long	1091622262
	.long	-510593437
	.long	-1171182935
	.long	1456689143
	.long	225612605
	.long	-1948870404
	.long	-797490122
	.long	1016406376
	.long	1731526050
	.long	891038557
	.long	1857943447
	.long	-2107665719
	.long	-637645309
	.long	1599751618
	.long	83597576
	.long	-400950186
	.long	-1279778660
	.long	1279807912
	.long	401182050
	.long	-83105732
	.long	-1599458058
	.long	638467895
	.long	2108679165
	.long	-1857190237
	.long	-890480023
	.long	-1731949418
	.long	-1016770468
	.long	797390082
	.long	1948707272
	.long	-226303479
	.long	-1457307965
	.long	1170299805
	.long	509642583
	.long	2030064947
	.long	581011961
	.long	-834409305
	.long	-1780338579
	.long	323369900
	.long	1223157606
	.long	-1543142856
	.long	-6005006
	.long	-1383299059
	.long	-164801337
	.long	449786265
	.long	1097788755
	.long	-943004014
	.long	-1670694312
	.long	1888050950
	.long	724075468
	.long	-723979528
	.long	-1887883726
	.long	1671121772
	.long	943364006
	.long	-1096901529
	.long	-448839507
	.long	165488115
	.long	1383921977
	.long	5517254
	.long	1542845196
	.long	-1223190958
	.long	-323597672
	.long	1779581273
	.long	833854867
	.long	-581830451
	.long	-2031082489
	.long	644876050
	.long	2110905304
	.long	-1858879866
	.long	-896376244
	.long	1278634381
	.long	395818311
	.long	-76165095
	.long	-1596715821
	.long	-218310100
	.long	-1453521178
	.long	1170170808
	.long	505331570
	.long	-1732594509
	.long	-1021613959
	.long	804850983
	.long	1951977965
	.long	-1951883047
	.long	-804684781
	.long	1022040397
	.long	1732953479
	.long	-504443322
	.long	-1169223028
	.long	1454208978
	.long	218934040
	.long	1596227047
	.long	75866413
	.long	-395852685
	.long	-1278863175
	.long	895619960
	.long	1858326450
	.long	-2111722772
	.long	-645892570
	.long	-941559439
	.long	-1673450053
	.long	1889749221
	.long	721589295
	.long	-1381589010
	.long	-167296220
	.long	451225210
	.long	1095039664
	.long	325856335
	.long	1221456005
	.long	-1540385317
	.long	-7452399
	.long	2032812752
	.long	579575322
	.long	-831915196
	.long	-1782044786
	.long	1782077114
	.long	832146032
	.long	-579080402
	.long	-2032520220
	.long	8271909
	.long	1541399791
	.long	-1220705871
	.long	-325296773
	.long	-1095464060
	.long	-451586226
	.long	167195152
	.long	1381428954
	.long	-722279141
	.long	-1890371119
	.long	1672567951
	.long	940605509
	.long	-1735351472
	.long	-1020166246
	.long	802364100
	.long	1953678862
	.long	-220803633
	.long	-1451814651
	.long	1167422555
	.long	506767505
	.long	1276935790
	.long	398303908
	.long	-77608966
	.long	-1593959632
	.long	643436785
	.long	2113653819
	.long	-1860589211
	.long	-893880913
	.long	893912219
	.long	1860819025
	.long	-2113159921
	.long	-643145275
	.long	1594780164
	.long	78624462
	.long	-397552752
	.long	-1276375206
	.long	-507192923
	.long	-1167784593
	.long	1451712561
	.long	220642555
	.long	-1954367686
	.long	-802984976
	.long	1019285166
	.long	1734398564
	.align 32
_mask:
	.long	0
	.long	1
	.long	3
	.long	7
	.long	15
	.long	31
	.long	63
	.long	127
	.long	255
	.long	511
	.long	1023
	.long	2047
	.long	4095
	.long	8191
	.long	16383
	.long	32767
	.long	65535
	.long	131071
	.long	262143
	.long	524287
	.long	1048575
	.long	2097151
	.long	4194303
	.long	8388607
	.long	16777215
	.long	33554431
	.long	67108863
	.long	134217727
	.long	268435455
	.long	536870911
	.long	1073741823
	.long	2147483647
	.long	-1
.lcomm __ZL10PitchTable,2400,32
.lcomm __ZZ14PITCH_GetScaleiE12bInitialized,1,1
	.align 4
__ZL6kslrom:
	.ascii "\0 (-03578:;<=>?@"
	.align 32
__ZL7ad_slot:
	.ascii "\0\1\2\3\4\5\377\377\6\7\10\11\12\13\377\377\14\15\16\17\20\21\377\377\377\377\377\377\377\377\377\377"
	.align 32
__ZL6exprom:
	.word	2042
	.word	2037
	.word	2031
	.word	2026
	.word	2020
	.word	2015
	.word	2010
	.word	2004
	.word	1999
	.word	1993
	.word	1988
	.word	1983
	.word	1977
	.word	1972
	.word	1966
	.word	1961
	.word	1956
	.word	1951
	.word	1945
	.word	1940
	.word	1935
	.word	1930
	.word	1924
	.word	1919
	.word	1914
	.word	1909
	.word	1904
	.word	1898
	.word	1893
	.word	1888
	.word	1883
	.word	1878
	.word	1873
	.word	1868
	.word	1863
	.word	1858
	.word	1853
	.word	1848
	.word	1843
	.word	1838
	.word	1833
	.word	1828
	.word	1823
	.word	1818
	.word	1813
	.word	1808
	.word	1803
	.word	1798
	.word	1794
	.word	1789
	.word	1784
	.word	1779
	.word	1774
	.word	1769
	.word	1765
	.word	1760
	.word	1755
	.word	1750
	.word	1746
	.word	1741
	.word	1736
	.word	1732
	.word	1727
	.word	1722
	.word	1717
	.word	1713
	.word	1708
	.word	1704
	.word	1699
	.word	1694
	.word	1690
	.word	1685
	.word	1681
	.word	1676
	.word	1672
	.word	1667
	.word	1663
	.word	1658
	.word	1654
	.word	1649
	.word	1645
	.word	1640
	.word	1636
	.word	1631
	.word	1627
	.word	1623
	.word	1618
	.word	1614
	.word	1609
	.word	1605
	.word	1601
	.word	1596
	.word	1592
	.word	1588
	.word	1584
	.word	1579
	.word	1575
	.word	1571
	.word	1566
	.word	1562
	.word	1558
	.word	1554
	.word	1550
	.word	1545
	.word	1541
	.word	1537
	.word	1533
	.word	1529
	.word	1525
	.word	1520
	.word	1516
	.word	1512
	.word	1508
	.word	1504
	.word	1500
	.word	1496
	.word	1492
	.word	1488
	.word	1484
	.word	1480
	.word	1476
	.word	1472
	.word	1468
	.word	1464
	.word	1460
	.word	1456
	.word	1452
	.word	1448
	.word	1444
	.word	1440
	.word	1436
	.word	1433
	.word	1429
	.word	1425
	.word	1421
	.word	1417
	.word	1413
	.word	1409
	.word	1406
	.word	1402
	.word	1398
	.word	1394
	.word	1391
	.word	1387
	.word	1383
	.word	1379
	.word	1376
	.word	1372
	.word	1368
	.word	1364
	.word	1361
	.word	1357
	.word	1353
	.word	1350
	.word	1346
	.word	1342
	.word	1339
	.word	1335
	.word	1332
	.word	1328
	.word	1324
	.word	1321
	.word	1317
	.word	1314
	.word	1310
	.word	1307
	.word	1303
	.word	1300
	.word	1296
	.word	1292
	.word	1289
	.word	1286
	.word	1282
	.word	1279
	.word	1275
	.word	1272
	.word	1268
	.word	1265
	.word	1261
	.word	1258
	.word	1255
	.word	1251
	.word	1248
	.word	1244
	.word	1241
	.word	1238
	.word	1234
	.word	1231
	.word	1228
	.word	1224
	.word	1221
	.word	1218
	.word	1214
	.word	1211
	.word	1208
	.word	1205
	.word	1201
	.word	1198
	.word	1195
	.word	1192
	.word	1188
	.word	1185
	.word	1182
	.word	1179
	.word	1176
	.word	1172
	.word	1169
	.word	1166
	.word	1163
	.word	1160
	.word	1157
	.word	1154
	.word	1150
	.word	1147
	.word	1144
	.word	1141
	.word	1138
	.word	1135
	.word	1132
	.word	1129
	.word	1126
	.word	1123
	.word	1120
	.word	1117
	.word	1114
	.word	1111
	.word	1108
	.word	1105
	.word	1102
	.word	1099
	.word	1096
	.word	1093
	.word	1090
	.word	1087
	.word	1084
	.word	1081
	.word	1078
	.word	1075
	.word	1072
	.word	1069
	.word	1066
	.word	1064
	.word	1061
	.word	1058
	.word	1055
	.word	1052
	.word	1049
	.word	1046
	.word	1044
	.word	1041
	.word	1038
	.word	1035
	.word	1032
	.word	1030
	.word	1027
	.word	1024
	.align 32
__ZL9logsinrom:
	.word	2137
	.word	1731
	.word	1543
	.word	1419
	.word	1326
	.word	1252
	.word	1190
	.word	1137
	.word	1091
	.word	1050
	.word	1013
	.word	979
	.word	949
	.word	920
	.word	894
	.word	869
	.word	846
	.word	825
	.word	804
	.word	785
	.word	767
	.word	749
	.word	732
	.word	717
	.word	701
	.word	687
	.word	672
	.word	659
	.word	646
	.word	633
	.word	621
	.word	609
	.word	598
	.word	587
	.word	576
	.word	566
	.word	556
	.word	546
	.word	536
	.word	527
	.word	518
	.word	509
	.word	501
	.word	492
	.word	484
	.word	476
	.word	468
	.word	461
	.word	453
	.word	446
	.word	439
	.word	432
	.word	425
	.word	418
	.word	411
	.word	405
	.word	399
	.word	392
	.word	386
	.word	380
	.word	375
	.word	369
	.word	363
	.word	358
	.word	352
	.word	347
	.word	341
	.word	336
	.word	331
	.word	326
	.word	321
	.word	316
	.word	311
	.word	307
	.word	302
	.word	297
	.word	293
	.word	289
	.word	284
	.word	280
	.word	276
	.word	271
	.word	267
	.word	263
	.word	259
	.word	255
	.word	251
	.word	248
	.word	244
	.word	240
	.word	236
	.word	233
	.word	229
	.word	226
	.word	222
	.word	219
	.word	215
	.word	212
	.word	209
	.word	205
	.word	202
	.word	199
	.word	196
	.word	193
	.word	190
	.word	187
	.word	184
	.word	181
	.word	178
	.word	175
	.word	172
	.word	169
	.word	167
	.word	164
	.word	161
	.word	159
	.word	156
	.word	153
	.word	151
	.word	148
	.word	146
	.word	143
	.word	141
	.word	138
	.word	136
	.word	134
	.word	131
	.word	129
	.word	127
	.word	125
	.word	122
	.word	120
	.word	118
	.word	116
	.word	114
	.word	112
	.word	110
	.word	108
	.word	106
	.word	104
	.word	102
	.word	100
	.word	98
	.word	96
	.word	94
	.word	92
	.word	91
	.word	89
	.word	87
	.word	85
	.word	83
	.word	82
	.word	80
	.word	78
	.word	77
	.word	75
	.word	74
	.word	72
	.word	70
	.word	69
	.word	67
	.word	66
	.word	64
	.word	63
	.word	62
	.word	60
	.word	59
	.word	57
	.word	56
	.word	55
	.word	53
	.word	52
	.word	51
	.word	49
	.word	48
	.word	47
	.word	46
	.word	45
	.word	43
	.word	42
	.word	41
	.word	40
	.word	39
	.word	38
	.word	37
	.word	36
	.word	35
	.word	34
	.word	33
	.word	32
	.word	31
	.word	30
	.word	29
	.word	28
	.word	27
	.word	26
	.word	25
	.word	24
	.word	23
	.word	23
	.word	22
	.word	21
	.word	20
	.word	20
	.word	19
	.word	18
	.word	17
	.word	17
	.word	16
	.word	15
	.word	15
	.word	14
	.word	13
	.word	13
	.word	12
	.word	12
	.word	11
	.word	10
	.word	10
	.word	9
	.word	9
	.word	8
	.word	8
	.word	7
	.word	7
	.word	7
	.word	6
	.word	6
	.word	5
	.word	5
	.word	5
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	3
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
.lcomm __ZL19MUSIC_MidiFunctions,48,32
.lcomm __ZL16MV_MusicCallback,4,4
.lcomm __ZZ9divideu64E4udiv,9,4
.lcomm __ZZ9divideu64E5lastd,8,8
	.align 4
LC0:
	.long	1060439283
	.align 4
LC3:
	.long	1060205080
	.align 4
LC4:
	.long	1056964608
	.align 4
LC5:
	.long	1258291200
	.align 16
LC6:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
LC7:
	.long	1065353216
	.align 8
LC8:
	.long	1413754136
	.long	1074340347
	.align 16
LC9:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
LC10:
	.long	1082130432
	.set	LC11,LC6
	.align 4
LC13:
	.long	977403023
	.align 4
LC14:
	.long	849275374
	.align 4
LC15:
	.long	1095866778
	.align 4
LC16:
	.long	1074748457
	.align 4
LC17:
	.long	953267991
	.align 4
LC18:
	.long	1073741824
	.align 4
LC20:
	.long	1038862562
	.align 4
LC40:
	.long	1142292480
	.align 4
LC41:
	.long	1199570944
	.align 4
LC42:
	.long	1120403456
	.align 4
LC44:
	.long	1064076126
	.align 4
LC45:
	.long	1053028117
	.def	___udivmoddi4;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev5, Built by MSYS2 project) 16.2.0"
	.def	_FLAC__stream_decoder_finish;	.scl	2;	.type	32;	.endef
	.def	_FLAC__stream_decoder_delete;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator4FreeEPv;	.scl	2;	.type	32;	.endef
	.def	_xmp_end_player.part.0;	.scl	2;	.type	32;	.endef
	.def	_xmp_release_module;	.scl	2;	.type	32;	.endef
	.def	_ov_clear.part.0;	.scl	2;	.type	32;	.endef
	.def	__ZN6loguru3logEiPKcjS1_z;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator7ReallocEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	__Z13handle_memerri;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj.constprop.0;	.scl	2;	.type	32;	.endef
	.def	_logf;	.scl	2;	.type	32;	.endef
	.def	_sincos;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_cosf;	.scl	2;	.type	32;	.endef
	.def	_expf;	.scl	2;	.type	32;	.endef
	.def	_atanf;	.scl	2;	.type	32;	.endef
	.def	_sqrtf;	.scl	2;	.type	32;	.endef
	.def	_powf;	.scl	2;	.type	32;	.endef
	.def	_ldexp;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_abort;	.scl	2;	.type	32;	.endef
	.def	__ZN2sm9Allocator8AllocateILb1EEEPvjj;	.scl	2;	.type	32;	.endef
	.def	__ZSt9terminatev;	.scl	2;	.type	32;	.endef
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	__Z18AdLibDrv_MIDI_InitP9midifuncs;	.scl	2;	.type	32;	.endef
	.def	_pow;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	_mi_free;	.scl	2;	.type	32;	.endef
	.def	_vorbis_staticbook_destroy.part.0;	.scl	2;	.type	32;	.endef
